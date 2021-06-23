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

public class Region {
	ArrayList<String> name = new ArrayList<>();
	ArrayList<String> num=new ArrayList<>();
	
	ArrayList<String> form=new ArrayList<>();
	ArrayList<String> code=new ArrayList<>();
	
	String city=null;
	
	public Region(String ccity) throws ParserConfigurationException, SAXException, IOException{
		DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();
		DocumentBuilder documentBuilder = factory.newDocumentBuilder();
		Document document = documentBuilder.parse("http://www.cha.go.kr/cha/SearchKindOpenapiList.do?ccbaCtcd="+ccity);
		//item 태그 불러오기
		NodeList result = document.getElementsByTagName("item");
		for(int i=0;i<result.getLength();i++) {
			NodeList list= result.item(i).getChildNodes();
			for(int j=0;j<list.getLength();j++) {
    			String value= list.item(j).getNodeName();
				Node item=list.item(j);
				if(value.equals("ccbaMnm1")) {
					name.add(item.getTextContent());
					
				}
				if(value.equals("crltsnoNm")) {
					num.add(item.getTextContent());
				}
				
				
				if(value.equals("ccbaKdcd")) {
					code.add(item.getTextContent());
				}
				if(value.equals("ccbaAsno")) {
					form.add(item.getTextContent());
				}
				if(value.equals("ccbaCtcd")) {
					city=item.getTextContent();
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
	
	public ArrayList<String> getCode(){
		return code;
	}
	public ArrayList<String> getForm(){
		return form;
	}
	public String getCity(){
		return city;
	}
}
