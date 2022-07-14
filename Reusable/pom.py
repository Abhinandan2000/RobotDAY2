from xml.dom import minidom
from pathlib import Path

#def PopularCoursesSubLinksXpath(linkName):#
# return "//h4[text()='Popular Courses']/following-sibling::p[1]/a[text()='"+linkName+"']"


def readXml(node_name):
  myxmlDoc = minidom.parse(str(Path(__file__).parent.parent)+"/testcase.xml")
  test_Data = myxmlDoc.getElementsByTagName(node_name)[0]
  return test_Data.firstChild.data

def menubar(mname):
  return "//nav[@class='main_menu drop_down right']/ul/li/a/span[text()='"  +mname+ "']"



def services(linkname):
  return "(//span[text()='"+linkname+"'])[1]"

