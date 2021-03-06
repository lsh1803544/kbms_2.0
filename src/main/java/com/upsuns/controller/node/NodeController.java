package com.upsuns.controller.node;

import com.upsuns.function.CookieUtils;
import com.upsuns.po.document.Document;
import com.upsuns.po.node.Node;
import com.upsuns.po.user.User;
import com.upsuns.service.node.NodeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* Created by KinderRiven on 2017/3/1. */

@Controller
public class NodeController {

    @Autowired
    private NodeService nodeService;

    @RequestMapping("/get_node.action")
    @ResponseBody
    public List<Node> getNode(HttpServletRequest request, HttpServletResponse response, HttpSession session)
            throws Exception{

        //get request
        List<Node> result = new ArrayList<Node>();
        String nid =  request.getParameter("node_id");

        Cookie[] cookies = request.getCookies();
        String username = CookieUtils.getValueByName(cookies, "username");
        String password = CookieUtils.getValueByName(cookies, "password");


        if(nid != null && username != null && password != null){

            Integer id = Integer.parseInt(nid);
            List<Node> nodeList = nodeService.getFolderList(username, password, id);
            Integer preNodeId = nodeService.getPreNodeId(id);

            result.add(new Node(preNodeId, "...", "back"));
            result.addAll(nodeList);

        } else{

        }
        return result;
    }

    @RequestMapping("/get_root.action")
    @ResponseBody
    public Map<String, String> getRoot(HttpServletRequest request, HttpServletResponse response, HttpSession session)
            throws Exception{

        Map<String, String> root = new HashMap<String, String>();
        Cookie[] cookies = request.getCookies();
        String username = CookieUtils.getValueByName(cookies, "username");
        String password = CookieUtils.getValueByName(cookies, "password");

        Node node = nodeService.getRootNode(username, password);
        root.put("root_id", node.getId().toString());
        return root;
    }

    @RequestMapping("/add_folder.action")
    @ResponseBody
    public Map<String, String> addFolder(HttpServletRequest request, HttpServletResponse response, HttpSession session)
            throws Exception {

        Map<String, String> result = new HashMap<String, String>();

        Cookie[] cookies = request.getCookies();
        String username = CookieUtils.getValueByName(cookies, "username");
        String password = CookieUtils.getValueByName(cookies, "password");
        String name = request.getParameter("folder_name");
        String cid = request.getParameter("current_id");

        if(name != null && username != null && password != null && cid != null){
            nodeService.buildFolder(username, password, name, Integer.parseInt(cid));
            result.put("result", "yes");
        } else{
            result.put("result", "no");
        }
        return result;
    }

}
