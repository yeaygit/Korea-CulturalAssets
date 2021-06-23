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

public class Cultural {

	ArrayList<String> namelist = new ArrayList<>();
	ArrayList<String> num=new ArrayList<>();
	ArrayList<String> code= new ArrayList<>();
	ArrayList<String> form=new ArrayList<>();
	ArrayList<String> city=new ArrayList<>();
	ArrayList<String> centu=new ArrayList<>();
	String innu=null;
	String inco=null;
	String info=null;
	String inct=null;
	
	
	
	public Cultural() throws ParserConfigurationException, SAXException, IOException {
		DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();
		DocumentBuilder documentBuilder = factory.newDocumentBuilder();
		Document document = documentBuilder.parse("http://www.cha.go.kr/cha/SearchKindOpenapiList.do?pageUnit=16152");
		//item 태그 불러오기
		NodeList result = document.getElementsByTagName("item");
		for(int i=0;i<result.getLength();i++) {
			NodeList list= result.item(i).getChildNodes();
			for(int j=0;j<list.getLength();j++) {
    			String value= list.item(j).getNodeName();
				Node item=list.item(j);
				if(value.equals("ccbaMnm1")) {
					namelist.add(item.getTextContent());
					
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
					city.add(item.getTextContent());
				}
				
				if(value.equals("ccbaPcd1")) {
					centu.add(item.getTextContent());
				}
				
			}
		}
		
				
	}
	
	public ArrayList<String> getName(){
		return namelist;
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
	public ArrayList<String> getCity(){
		return city;
	}
	public ArrayList<String> getCentu(){
		return centu;
	}
	
	
	

	public void setAll(String nname) {
		if(namelist.contains(nname)) {
			int n=namelist.indexOf(nname);
			innu=num.get(n);
			inco=code.get(n);
			info=form.get(n);
			inct=city.get(n);
		}
		
	}
	public String getInnu() {
		return this.innu;
	}
	public String getInco() {
		
		return this.inco;
	}
	public String getInfo() {
		return this.info;
	}
	public String getInct() {
		return this.inct;
	}
	
	
}
