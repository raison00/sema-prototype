package com.macys.marketing.sema
{
	 import mx.rpc.xml.Schema
	 public class BaseCampaignServiceSchema
	{
		 public var schemas:Array = new Array();
		 public var targetNamespaces:Array = new Array();
		 public function BaseCampaignServiceSchema():void
{		
			 var xsdXML0:XML = <xsd:schema xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns="http://schemas.xmlsoap.org/wsdl/" xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/" xmlns:tns="http://schemas.macys.com/api/ad/v1" xmlns:wsu="http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd" attributeFormDefault="unqualified" elementFormDefault="unqualified">
    <xsd:import namespace="https://adwords.google.com/api/adwords/v11" schemaLocation="http://192.168.1.27:8081/SEMAServices/services/v1/CampaignService?xsd=1"/>
</xsd:schema>
;
			 var xsdSchema0:Schema = new Schema(xsdXML0);
			schemas.push(xsdSchema0);
			targetNamespaces.push(new Namespace('','null'));
			 var xsdXML1:XML = <xs:schema xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns="https://adwords.google.com/api/adwords/v11" xmlns:ns1="http://schemas.macys.com/api/ad/v1" attributeFormDefault="unqualified" elementFormDefault="unqualified" targetNamespace="https://adwords.google.com/api/adwords/v11">
    <xs:import namespace="http://schemas.macys.com/api/ad/v1" schemaLocation="http://192.168.1.27:8081/SEMAServices/services/v1/CampaignService?xsd=3"/>
    <xs:element name="fault" nillable="true" type="xs:anyType"/>
</xs:schema>
;
			 var xsdSchema1:Schema = new Schema(xsdXML1);
			schemas.push(xsdSchema1);
			targetNamespaces.push(new Namespace('','https://adwords.google.com/api/adwords/v11'));
			 var xsdXML2:XML = <xs:schema xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:ns1="http://schemas.macys.com/definitions/ad/v1" xmlns:tns="http://schemas.macys.com/api/ad/v1" attributeFormDefault="unqualified" elementFormDefault="unqualified" targetNamespace="http://schemas.macys.com/api/ad/v1">
    <xs:import namespace="http://schemas.macys.com/definitions/ad/v1" schemaLocation="http://192.168.1.27:8081/SEMAServices/services/v1/CampaignService?xsd=2"/>
    <xs:element name="getAllCampaigns" type="tns:getAllCampaigns"/>
    <xs:element name="getAllCampaignsResponse" type="tns:getAllCampaignsResponse"/>
    <xs:element name="getCampaignList" type="tns:getCampaignList"/>
    <xs:element name="getCampaignListResponse" type="tns:getCampaignListResponse"/>
    <xs:element name="putCampaigns" type="tns:putCampaigns"/>
    <xs:element name="putCampaignsResponse" type="tns:putCampaignsResponse"/>
    <xs:complexType name="putCampaigns">
        <xs:sequence>
            <xs:element maxOccurs="unbounded" minOccurs="0" ref="ns1:Campaigns"/>
        </xs:sequence>
    </xs:complexType>
    <xs:complexType name="Campaign">
        <xs:sequence>
            <xs:element minOccurs="0" name="Id" type="xs:long"/>
            <xs:element minOccurs="0" name="AdVendorId" nillable="true" type="xs:long"/>
            <xs:element name="PortfolioId" type="xs:long"/>
            <xs:element name="AccountId" type="xs:long"/>
            <xs:element name="Status" type="tns:SemaStatusType"/>
            <xs:element minOccurs="0" name="AdVendorStatus" nillable="true" type="xs:string"/>
            <xs:element minOccurs="0" name="State" nillable="true" type="tns:SemaStateType"/>
            <xs:element name="CampaignName" type="xs:string"/>
            <xs:element name="DailyBudget" type="xs:decimal"/>
            <xs:element minOccurs="0" name="EffectiveDate" nillable="true" type="xs:dateTime"/>
            <xs:element minOccurs="0" name="ExpirationDate" nillable="true" type="xs:dateTime"/>
            <xs:element minOccurs="0" name="PublishedDate" nillable="true" type="xs:dateTime"/>
            <xs:element minOccurs="0" name="AdRunOption" type="tns:adRunOption"/>
            <xs:element minOccurs="0" name="CreatedDate" nillable="true" type="xs:dateTime"/>
            <xs:element minOccurs="0" name="ModifiedDate" nillable="true" type="xs:dateTime"/>
            <xs:element minOccurs="0" name="CreatedBy" nillable="true" type="xs:string"/>
            <xs:element minOccurs="0" name="ModifiedBy" nillable="true" type="xs:string"/>
        </xs:sequence>
    </xs:complexType>
    <xs:complexType name="putCampaignsResponse">
        <xs:sequence>
            <xs:element maxOccurs="unbounded" minOccurs="0" name="return" type="tns:Campaign"/>
        </xs:sequence>
    </xs:complexType>
    <xs:complexType name="ServiceException">
        <xs:sequence>
            <xs:element minOccurs="0" name="exceptionInfo" type="tns:exceptionInfo"/>
            <xs:element minOccurs="0" name="message" type="xs:string"/>
        </xs:sequence>
    </xs:complexType>
    <xs:complexType name="exceptionInfo">
        <xs:sequence>
            <xs:element minOccurs="0" name="DefaultExceptionInfoDetail" type="tns:ExceptionInfoDetail"/>
            <xs:element maxOccurs="unbounded" minOccurs="0" name="ExceptionInfoDetail" type="tns:ExceptionInfoDetail"/>
        </xs:sequence>
    </xs:complexType>
    <xs:complexType name="ExceptionInfoDetail">
        <xs:sequence>
            <xs:element minOccurs="0" name="Code" type="xs:long"/>
            <xs:element minOccurs="0" name="DisplayMessage" type="xs:string"/>
            <xs:element minOccurs="0" name="Message" type="xs:string"/>
            <xs:element minOccurs="0" name="Trigger" type="xs:string"/>
        </xs:sequence>
    </xs:complexType>
    <xs:complexType name="SchemaValidationException">
        <xs:sequence>
            <xs:element minOccurs="0" name="exceptionInfo" type="tns:exceptionInfo"/>
            <xs:element minOccurs="0" name="message" type="xs:string"/>
        </xs:sequence>
    </xs:complexType>
    <xs:complexType name="getCampaignList">
        <xs:sequence>
            <xs:element maxOccurs="unbounded" minOccurs="0" ref="ns1:CampaignIds"/>
        </xs:sequence>
    </xs:complexType>
    <xs:complexType name="getCampaignListResponse">
        <xs:sequence>
            <xs:element maxOccurs="unbounded" minOccurs="0" name="return" type="tns:Campaign"/>
        </xs:sequence>
    </xs:complexType>
    <xs:complexType name="getAllCampaigns">
        <xs:sequence>
            <xs:element minOccurs="0" ref="ns1:PortfolioId"/>
        </xs:sequence>
    </xs:complexType>
    <xs:complexType name="getAllCampaignsResponse">
        <xs:sequence>
            <xs:element maxOccurs="unbounded" minOccurs="0" name="return" type="tns:Campaign"/>
        </xs:sequence>
    </xs:complexType>
    <xs:simpleType name="SemaStatusType">
        <xs:restriction base="xs:string">
            <xs:enumeration value="Enabled"/>
            <xs:enumeration value="Paused"/>
            <xs:enumeration value="Deleted"/>
        </xs:restriction>
    </xs:simpleType>
    <xs:simpleType name="SemaStateType">
        <xs:restriction base="xs:string">
            <xs:enumeration value="New"/>
            <xs:enumeration value="Allocated"/>
            <xs:enumeration value="Attached"/>
            <xs:enumeration value="Detached"/>
            <xs:enumeration value="Published"/>
            <xs:enumeration value="Modified"/>
            <xs:enumeration value="Replicated"/>
            <xs:enumeration value="FailedPublish"/>
            <xs:enumeration value="Synchronized"/>
            <xs:enumeration value="Unpublishable"/>
        </xs:restriction>
    </xs:simpleType>
    <xs:simpleType name="adRunOption">
        <xs:restriction base="xs:string">
            <xs:enumeration value="Optimize"/>
            <xs:enumeration value="Rotate"/>
        </xs:restriction>
    </xs:simpleType>
</xs:schema>
;
			 var xsdSchema2:Schema = new Schema(xsdXML2);
			schemas.push(xsdSchema2);
			targetNamespaces.push(new Namespace('','http://schemas.macys.com/api/ad/v1'));
			 var xsdXML3:XML = <xs:schema xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns="http://schemas.macys.com/definitions/ad/v1" xmlns:ns1="http://schemas.macys.com/api/ad/v1" attributeFormDefault="unqualified" elementFormDefault="unqualified" targetNamespace="http://schemas.macys.com/definitions/ad/v1">
    <xs:import namespace="http://schemas.macys.com/api/ad/v1" schemaLocation="http://192.168.1.27:8081/SEMAServices/services/v1/CampaignService?xsd=3"/>
    <xs:element name="CampaignIds" type="xs:long"/>
    <xs:element name="Campaigns" type="ns1:Campaign"/>
    <xs:element name="ExceptionInfo" type="ns1:exceptionInfo"/>
    <xs:element name="PortfolioId" type="xs:long"/>
    <xs:element name="campaignBean" type="ns1:Campaign"/>
    <xs:element name="userName" nillable="true" type="xs:string"/>
</xs:schema>
;
			 var xsdSchema3:Schema = new Schema(xsdXML3);
			schemas.push(xsdSchema3);
			targetNamespaces.push(new Namespace('','http://schemas.macys.com/definitions/ad/v1'));
			xsdSchema3.addImport(new Namespace("http://schemas.macys.com/api/ad/v1"), xsdSchema2)
			xsdSchema0.addImport(new Namespace("https://adwords.google.com/api/adwords/v11"), xsdSchema1)
			xsdSchema2.addImport(new Namespace("http://schemas.macys.com/definitions/ad/v1"), xsdSchema3)
			xsdSchema1.addImport(new Namespace("http://schemas.macys.com/api/ad/v1"), xsdSchema2)
		}
	}
}