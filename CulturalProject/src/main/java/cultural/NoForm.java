package cultural;

import java.io.IOException;
import java.util.ArrayList;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;

import org.w3c.dom.Document;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.xml.sax.SAXException;

public class NoForm {
	ArrayList <String> name=new ArrayList<>();
	ArrayList <String> num=new ArrayList<>();
	ArrayList <String> direct=new ArrayList<>();
	

	
	
	public NoForm() throws ParserConfigurationException, SAXException, IOException {
		DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();
		DocumentBuilder documentBuilder = factory.newDocumentBuilder();
		Document document = documentBuilder.parse("http://openapi.iha.go.kr/openapi/treasure/getTreasureTypeList.nihc?nihcRqOz=nihc&nihcRqCd=record&pageSize=131");
		
		//item 태그 불러오기
		NodeList result = document.getElementsByTagName("Item");
		for(int i=0;i<result.getLength();i++) {
			NodeList list= result.item(i).getChildNodes();
			for(int j=0;j<list.getLength();j++) {
    			String value= list.item(j).getNodeName();
				Node item=list.item(j);
				if(value.equals("nihcTrNm")) {
					name.add(item.getTextContent());
					
				}
				if(value.equals("nihcTrNo")) {
					num.add(item.getTextContent());
				}
				if(value.equals("url")) {
					direct.add(item.getTextContent());
				}
				
			}
				
		}
	}
	
	
	
	public ArrayList<String> getName(){
		return name;
	}
	public ArrayList<String> getNum(){
		return num;
	}
	public ArrayList<String> getUrl(){
		return direct;
	}
	
	

	
}

