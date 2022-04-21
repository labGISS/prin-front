package it.labgis.prin_sound_frontend;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;

public class SLLBean {

    public ArrayList<String> getSLL() throws IOException{
        ArrayList<String> namesSLL = new ArrayList<>();
        JSONParser parser = new JSONParser();
        JSONObject object = null;
        try {
            object = (JSONObject) parser.parse(new FileReader("C:\\Users\\Utente\\IdeaProjects\\Prin_Sound_FrontEnd\\src\\main\\webapp\\JSON\\sll.json"));
        } catch (ParseException e) {
            e.printStackTrace();
        }
        JSONArray nodes = (JSONArray) object.get("nodes");
        for (int i=0; i<nodes.size(); i++){
            JSONObject node = (JSONObject) nodes.get(i);
            namesSLL.add((String) node.get("name"));
        }
        return namesSLL;
    }
}
