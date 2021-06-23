package cultural;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Calendar;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;

import org.w3c.dom.Document;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.xml.sax.SAXException;

public class Event {
	
	ArrayList<String> num=new ArrayList<>();
	ArrayList<String> cat = new ArrayList<>();
	ArrayList<String> name=new ArrayList<>();
	ArrayList<String> des= new ArrayList<>();
	ArrayList<String> start=new ArrayList<>();
	ArrayList<String> end=new ArrayList<>();
	ArrayList<String> group=new ArrayList<>();
	ArrayList<String> qa=new ArrayList<>();
	ArrayList<String> loca=new ArrayList<>();
	ArrayList<String> path=new ArrayList<>();
	ArrayList<String> desc=new ArrayList<>();
	ArrayList<String> img=new ArrayList<>();
	ArrayList<String> sido=new ArrayList<>();
	ArrayList<String> gugun=new ArrayList<>();
	ArrayList<String> subdate=new ArrayList<>();
	
	Calendar cal=Calendar.getInstance();
	
	
	int year=cal.get(Calendar.YEAR);
	int month=cal.get(Calendar.MONTH)+1;

	String toyear=Integer.toString(year);
	String tomonth=Integer.toString(month);
	
	
	
	
	
	public Event() throws ParserConfigurationException, SAXException, IOException {
		
		
		DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();
		DocumentBuilder documentBuilder = factory.newDocumentBuilder();
		Document document = documentBuilder.parse("https://www.cha.go.kr/cha/openapi/selectEventListOpenapi.do?searchYear="+toyear+"&searchMonth="+tomonth);
		
		//item 태그 불러오기
		NodeList result = document.getElementsByTagName("item");
		for(int i=0;i<result.getLength();i++) {
			NodeList list= result.item(i).getChildNodes();
			for(int j=0;j<list.getLength();j++) {
		    	String value= list.item(j).getNodeName();
				Node item=list.item(j);
				if(value.equals("seqNo")) {
					num.add(item.getTextContent());
							
					}
				if(value.equals("siteCode")) {
					cat.add(item.getTextContent());
					}
				
				if(value.equals("subTitle")) {
					name.add(item.getTextContent());
					}		
						
				if(value.equals("subContent")) {
					des.add(item.getTextContent());
					}
				if(value.equals("sDate")) {
					start.add(item.getTextContent());
					}
				if(value.equals("eDate")) {
					end.add(item.getTextContent());
					}
				if(value.equals("groupName")) {
					group.add(item.getTextContent());
					}
				if(value.equals("contact")) {
					qa.add(item.getTextContent());
					}
				if(value.equals("subDesc")) {
					loca.add(item.getTextContent());
					}
				if(value.equals("subPath")) {
					path.add(item.getTextContent());
					}
				if(value.equals("subDesc_2")) {
					desc.add(item.getTextContent());
					}
				if(value.equals("mainImageTemp")) {
					img.add(item.getTextContent());
					}
				if(value.equals("sido")) {
					sido.add(item.getTextContent());
					}
				if(value.equals("gugun")) {
					gugun.add(item.getTextContent());
					}
				if(value.equals("subDate")) {
					subdate.add(item.getTextContent());
					}
						
						
						
				}
			
		}
		
		
		
	
	}
	
	
		
		
	
	
	
	public ArrayList<String> getNum() {
		return num;
	}

	public ArrayList<String> getCat() {
		return cat;
	}
	public ArrayList<String> getName() {
		return name;
	}
	public ArrayList<String> getDes() {
		return des;
	}
	public ArrayList<String> getStart() {
		return start;
	}
	public ArrayList<String> getEnd() {
		return end;
	}
	public ArrayList<String> getGroup() {
		return group;
	}
	public ArrayList<String> getQa() {
		return qa;
	}
	public ArrayList<String> getLoca() {
		return loca;
	}
	public ArrayList<String> getPath() {
		return path;
	}
	public ArrayList<String> getDesc() {
		return desc;
	}
	public ArrayList<String> getImg() {
		return img;
	}
	public ArrayList<String> getSido() {
		return sido;
	}
	public ArrayList<String> getGugun() {
		return gugun;
	}
	public ArrayList<String> getSubdate() {
		return subdate;
	}
}