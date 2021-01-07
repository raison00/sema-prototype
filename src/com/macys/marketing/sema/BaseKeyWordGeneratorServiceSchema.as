package com.macys.marketing.sema
{
	 import mx.rpc.xml.Schema
	 public class BaseKeyWordGeneratorServiceSchema
	{
		 public var schemas:Array = new Array();
		 public var targetNamespaces:Array = new Array();
		 public function BaseKeyWordGeneratorServiceSchema():void
{		
			 var xsdXML0:XML = <xsd:schema xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns="http://schemas.xmlsoap.org/wsdl/" xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/" xmlns:tns="http://schemas.macys.com/api/ad/v1" xmlns:wsu="http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd" attributeFormDefault="unqualified" elementFormDefault="unqualified">
    <xsd:import namespace="https://adwords.google.com/api/adwords/v11" schemaLocation="http://192.168.1.27:8081/SEMAServices/services/v1/KeyWordGeneratorService?xsd=1"/>
</xsd:schema>
;
			 var xsdSchema0:Schema = new Schema(xsdXML0);
			schemas.push(xsdSchema0);
			targetNamespaces.push(new Namespace('','null'));
			 var xsdXML1:XML = <xs:schema xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns="https://adwords.google.com/api/adwords/v11" xmlns:ns1="http://schemas.macys.com/api/ad/v1" attributeFormDefault="unqualified" elementFormDefault="unqualified" targetNamespace="https://adwords.google.com/api/adwords/v11">
    <xs:import namespace="http://schemas.macys.com/api/ad/v1" schemaLocation="http://192.168.1.27:8081/SEMAServices/services/v1/KeyWordGeneratorService?xsd=3"/>
    <xs:element name="fault" nillable="true" type="xs:anyType"/>
</xs:schema>
;
			 var xsdSchema1:Schema = new Schema(xsdXML1);
			schemas.push(xsdSchema1);
			targetNamespaces.push(new Namespace('','https://adwords.google.com/api/adwords/v11'));
			 var xsdXML2:XML = <xs:schema xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:ns1="http://schemas.macys.com/definitions/ad/v1" xmlns:tns="http://schemas.macys.com/api/ad/v1" attributeFormDefault="unqualified" elementFormDefault="unqualified" targetNamespace="http://schemas.macys.com/api/ad/v1">
    <xs:import namespace="http://schemas.macys.com/definitions/ad/v1" schemaLocation="http://192.168.1.27:8081/SEMAServices/services/v1/KeyWordGeneratorService?xsd=2"/>
    <xs:element name="getKeywordVariations" type="tns:getKeywordVariations"/>
    <xs:element name="getKeywordVariationsResponse" type="tns:getKeywordVariationsResponse"/>
    <xs:complexType name="getKeywordVariations">
        <xs:sequence>
            <xs:element minOccurs="0" ref="ns1:SeedKeyword"/>
        </xs:sequence>
    </xs:complexType>
    <xs:complexType name="KeywordGeneratorRequest">
        <xs:sequence>
            <xs:element minOccurs="0" name="SeedKeyword" type="xs:string"/>
            <xs:element minOccurs="0" name="MatchType" type="tns:MatchType"/>
            <xs:element name="NegativeFlag" type="xs:boolean"/>
            <xs:element name="useSynonym" type="xs:boolean"/>
        </xs:sequence>
    </xs:complexType>
    <xs:complexType name="getKeywordVariationsResponse">
        <xs:sequence>
            <xs:element minOccurs="0" name="return" type="tns:KeywordGeneratorResponse"/>
        </xs:sequence>
    </xs:complexType>
    <xs:complexType name="KeywordGeneratorResponse">
        <xs:sequence>
            <xs:element minOccurs="0" name="RelatedKeywordList">
                <xs:complexType>
                    <xs:sequence>
                        <xs:element maxOccurs="unbounded" minOccurs="0" name="RelatedKeywords" type="tns:KeywordVariation"/>
                    </xs:sequence>
                </xs:complexType>
            </xs:element>
            <xs:element minOccurs="0" name="AlsoToConsiderKeywordList">
                <xs:complexType>
                    <xs:sequence>
                        <xs:element maxOccurs="unbounded" minOccurs="0" name="AlsoToConsiderKeywords" type="tns:KeywordVariation"/>
                    </xs:sequence>
                </xs:complexType>
            </xs:element>
        </xs:sequence>
    </xs:complexType>
    <xs:complexType name="KeywordVariation">
        <xs:sequence>
            <xs:element name="AdvertiserCompetitionScale" type="xs:int"/>
            <xs:element minOccurs="0" name="GeneratedKeyword" type="xs:string"/>
            <xs:element name="SearchVolumeScale" type="xs:int"/>
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
    <xs:simpleType name="MatchType">
        <xs:restriction base="xs:string">
            <xs:enumeration value="Broad"/>
            <xs:enumeration value="Phrase"/>
            <xs:enumeration value="Exact"/>
        </xs:restriction>
    </xs:simpleType>
</xs:schema>
;
			 var xsdSchema2:Schema = new Schema(xsdXML2);
			schemas.push(xsdSchema2);
			targetNamespaces.push(new Namespace('','http://schemas.macys.com/api/ad/v1'));
			 var xsdXML3:XML = <xs:schema xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns="http://schemas.macys.com/definitions/ad/v1" xmlns:ns1="http://schemas.macys.com/api/ad/v1" attributeFormDefault="unqualified" elementFormDefault="unqualified" targetNamespace="http://schemas.macys.com/definitions/ad/v1">
    <xs:import namespace="http://schemas.macys.com/api/ad/v1" schemaLocation="http://192.168.1.27:8081/SEMAServices/services/v1/KeyWordGeneratorService?xsd=3"/>
    <xs:element name="ExceptionInfo" type="ns1:exceptionInfo"/>
    <xs:element name="SeedKeyword" type="ns1:KeywordGeneratorRequest"/>
    <xs:element name="keywordGeneratorRequestBean" type="ns1:KeywordGeneratorRequest"/>
    <xs:element name="keywordGeneratorResponseBean" type="ns1:KeywordGeneratorResponse"/>
    <xs:element name="keywordVariationBean" type="ns1:KeywordVariation"/>
    <xs:element name="userName" nillable="true" type="xs:string"/>
</xs:schema>
;
			 var xsdSchema3:Schema = new Schema(xsdXML3);
			schemas.push(xsdSchema3);
			targetNamespaces.push(new Namespace('','http://schemas.macys.com/definitions/ad/v1'));
			xsdSchema0.addImport(new Namespace("https://adwords.google.com/api/adwords/v11"), xsdSchema1)
			xsdSchema3.addImport(new Namespace("http://schemas.macys.com/api/ad/v1"), xsdSchema2)
			xsdSchema2.addImport(new Namespace("http://schemas.macys.com/definitions/ad/v1"), xsdSchema3)
			xsdSchema1.addImport(new Namespace("http://schemas.macys.com/api/ad/v1"), xsdSchema2)
		}
	}
}