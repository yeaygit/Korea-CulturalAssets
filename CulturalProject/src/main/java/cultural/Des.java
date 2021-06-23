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

public class Des {

	String name,num,code,form,city,in,lo,la,div,cat,cat2,cat3,cat4,
	qua,date,loc,cen,host,adm,img,content=null;
	
	
	public Des(String ccode, String fform, String ccity) throws ParserConfigurationException, SAXException, IOException {
		DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();
		DocumentBuilder documentBuilder = factory.newDocumentBuilder();
		Document document = documentBuilder.parse("http://www.cha.go.kr/cha/SearchKindOpenapiDt.do?ccbaKdcd="+ccode+"&ccbaAsno="+fform+"&ccbaCtcd="+ccity);
		//item 태그 불러오기
		NodeList result = document.getElementsByTagName("result");
		for(int i=0;i<result.getLength();i++) {
			NodeList list= result.item(i).getChildNodes();
			for(int j=0;j<list.getLength();j++) {
    			String value= list.item(j).getNodeName();
				
				Node item=list.item(j);
				if(value.equals("ccbaKdcd")) {
					//code.add(item.getTextContent());
					code=item.getTextContent();
				}
				if(value.equals("ccbaAsno")) {
					//form.add(item.getTextContent());
					form=item.getTextContent();
				}
				if(value.equals("ccbaCtcd")) {
					//city.add(item.getTextContent());
					city=item.getTextContent();
				}
				if(value.equals("ccbaCpno")) {
					//in.add(item.getTextContent());
					in=item.getTextContent();
				}
				if(value.equals("longitude")) {
					//lo.add(item.getTextContent());
					lo=item.getTextContent();
				}
				if(value.equals("latitude")) {
					//la.add(item.getTextContent());
					la=item.getTextContent();
				}
				
				if(value.equals("item")) {
					
				
					NodeList childlist=list.item(j).getChildNodes();
					for(int k=0;k<childlist.getLength();k++) {
						String child = childlist.item(k).getNodeName();
						Node childitem=childlist.item(k);
						if(child.equals("ccbaMnm1")) {
							//namelist.add(childitem.getTextContent());
							name=childitem.getTextContent();
						}
						if(child.equals("crltsnoNm")) {
							//num.add(childitem.getTextContent());
							num=childitem.getTextContent();
						}
						
						if(child.equals("ccmaName")) {
							//div.add(childitem.getTextContent());
							div=childitem.getTextContent();
						}
						if(child.equals("gcodeName")) {
							//cat.add(childitem.getTextContent());
							cat=childitem.getTextContent();
						}
						if(child.equals("bcodeName")) {
							//cat2.add(childitem.getTextContent());
							cat2=childitem.getTextContent();
						}
						if(child.equals("mcodeName")) {
							//cat3.add(childitem.getTextContent());
							cat3=childitem.getTextContent();
						}
						if(child.equals("scodeName")) {
							cat4=childitem.getTextContent();
							//cat4.add(childitem.getTextContent());
						}
						if(child.equals("ccbaQuan")) {
							qua=childitem.getTextContent();
							//qua.add(childitem.getTextContent());
						}
						if(child.equals("ccbaAsdt")) {
							date=childitem.getTextContent();
							//date.add(childitem.getTextContent());
						}
						if(child.equals("ccbaLcad")) {
							loc=childitem.getTextContent();
							//loc.add(childitem.getTextContent());
						}
						if(child.equals("ccceName")) {
							//cen.add(childitem.getTextContent());
							cen=childitem.getTextContent();
						}
						if(child.equals("ccbaPoss")) {
							//host.add(childitem.getTextContent());
							host=childitem.getTextContent();
						}
						if(child.equals("ccbaAdmin")) {
							//adm.add(childitem.getTextContent());
							adm=childitem.getTextContent();
						}
						if(child.equals("imageUrl")) {
							//img.add(childitem.getTextContent());
							img=childitem.getTextContent();
						}
						if(child.equals("content")) {
							//text.add(childitem.getTextContent());
							content=childitem.getTextContent();
						}
					}
					
				}
				
			}
			
		}
	}
	public String getName(){
		return name;
	}
	public String getNum(){
		return num;
	}
	public String getIn(){
		return in;
	}
	public String getLo(){
		return lo;
	}
	public String getLat(){
		return la;
	}
	public String getCode(){
		return code;
	}
	public String getForm(){
		return form;
	}
	public String getCity(){
		return city;
	}
	public String getDiv(){
		return div;
	}
	public String getCat(){
		return cat;
	}
	public String getCat2(){
		return cat2;
	}
	public String getCat3(){
		return cat3;
	}
	public String getCat4(){
		return cat4;
	}
	public String getQua(){
		return qua;
	}
	public String getDate(){
		return date;
	}
	public String getLoc(){
		return loc;
	}
	public String getCen(){
		return cen;
	}
	public String getHost(){
		return host;
	}
	public String getAdm(){
		return adm;
	}
	public String getImg(){
		return img;
	}
	public String getText(){
		return content;
	}
	
	
	
	
	
	
	
	
	
}
