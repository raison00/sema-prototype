package com.macys.marketing.sema
{
	 import mx.rpc.xml.Schema
	 public class BaseReplicateEntityServiceSchema
	{
		 public var schemas:Array = new Array();
		 public var targetNamespaces:Array = new Array();
		 public function BaseReplicateEntityServiceSchema():void
{		
			 var xsdXML0:XML = <xsd:schema xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns="http://schemas.xmlsoap.org/wsdl/" xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/" xmlns:tns="http://schemas.macys.com/api/ad/v1" xmlns:wsu="http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd" attributeFormDefault="unqualified" elementFormDefault="unqualified">
    <xsd:import namespace="https://adwords.google.com/api/adwords/v11" schemaLocation="http://192.168.1.27:8081/SEMAServices/services/v1/ReplicateEntityService?xsd=1"/>
</xsd:schema>
;
			 var xsdSchema0:Schema = new Schema(xsdXML0);
			schemas.push(xsdSchema0);
			targetNamespaces.push(new Namespace('','null'));
			 var xsdXML1:XML = <xs:schema xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns="https://adwords.google.com/api/adwords/v11" xmlns:ns1="http://schemas.macys.com/api/ad/v1" attributeFormDefault="unqualified" elementFormDefault="unqualified" targetNamespace="https://adwords.google.com/api/adwords/v11">
    <xs:import namespace="http://schemas.macys.com/api/ad/v1" schemaLocation="http://192.168.1.27:8081/SEMAServices/services/v1/ReplicateEntityService?xsd=3"/>
    <xs:element name="fault" type="ns1:ServiceException"/>
</xs:schema>
;
			 var xsdSchema1:Schema = new Schema(xsdXML1);
			schemas.push(xsdSchema1);
			targetNamespaces.push(new Namespace('','https://adwords.google.com/api/adwords/v11'));
			 var xsdXML2:XML = <xs:schema xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:ns1="http://schemas.macys.com/definitions/ad/v1" xmlns:tns="http://schemas.macys.com/api/ad/v1" attributeFormDefault="unqualified" elementFormDefault="unqualified" targetNamespace="http://schemas.macys.com/api/ad/v1">
    <xs:import namespace="http://schemas.macys.com/definitions/ad/v1" schemaLocation="http://192.168.1.27:8081/SEMAServices/services/v1/ReplicateEntityService?xsd=2"/>
    <xs:element name="ReplicateAdCopyList" type="tns:ReplicateAdCopyList"/>
    <xs:element name="ReplicateAdCopyListResponse" type="tns:ReplicateAdCopyListResponse"/>
    <xs:element name="ReplicateAdGroupList" type="tns:ReplicateAdGroupList"/>
    <xs:element name="ReplicateAdGroupListResponse" type="tns:ReplicateAdGroupListResponse"/>
    <xs:element name="ReplicateAdKeyWordList" type="tns:ReplicateAdKeyWordList"/>
    <xs:element name="ReplicateAdKeyWordListResponse" type="tns:ReplicateAdKeyWordListResponse"/>
    <xs:complexType name="ReplicateAdCopyList">
        <xs:sequence>
            <xs:element maxOccurs="unbounded" minOccurs="0" ref="ns1:ReplicateAdCopy"/>
        </xs:sequence>
    </xs:complexType>
    <xs:complexType name="ReplicateEntity">
        <xs:sequence>
            <xs:element name="EntityId" type="xs:long"/>
            <xs:element name="DestinationParentId" type="xs:long"/>
        </xs:sequence>
    </xs:complexType>
    <xs:complexType name="ReplicateAdCopyListResponse">
        <xs:sequence>
            <xs:element maxOccurs="unbounded" minOccurs="0" name="return" type="tns:AdCopy"/>
        </xs:sequence>
    </xs:complexType>
    <xs:complexType name="AdCopy">
        <xs:sequence>
            <xs:element minOccurs="0" name="Id" type="xs:long"/>
            <xs:element minOccurs="0" name="AdVendorId" nillable="true" type="xs:long"/>
            <xs:element name="GroupId" type="xs:long"/>
            <xs:element name="Status" type="tns:SemaStatusType"/>
            <xs:element minOccurs="0" name="AdVendorStatus" nillable="true" type="xs:string"/>
            <xs:element minOccurs="0" name="Disapproved" nillable="true" type="xs:boolean"/>
            <xs:element minOccurs="0" name="State" nillable="true" type="tns:SemaStateType"/>
            <xs:element name="Headline" type="xs:string"/>
            <xs:element name="Description1" type="xs:string"/>
            <xs:element name="Description2" type="xs:string"/>
            <xs:element name="DestinationUrl" type="xs:string"/>
            <xs:element name="DisplayUrl" type="xs:string"/>
            <xs:element minOccurs="0" name="PublishedDate" nillable="true" type="xs:dateTime"/>
            <xs:element minOccurs="0" name="VendorPolicyExemptionRequest" nillable="true" type="xs:string"/>
            <xs:element minOccurs="0" name="ExpirationDate" nillable="true" type="xs:dateTime"/>
            <xs:element minOccurs="0" name="EffectiveDate" nillable="true" type="xs:dateTime"/>
            <xs:element name="Type" type="tns:AdCopyType"/>
            <xs:element minOccurs="0" name="CreatedDate" nillable="true" type="xs:dateTime"/>
            <xs:element minOccurs="0" name="ModifiedDate" nillable="true" type="xs:dateTime"/>
            <xs:element minOccurs="0" name="CreatedBy" nillable="true" type="xs:string"/>
            <xs:element minOccurs="0" name="ModifiedBy" nillable="true" type="xs:string"/>
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
    <xs:complexType name="ReplicateAdGroupList">
        <xs:sequence>
            <xs:element maxOccurs="unbounded" minOccurs="0" ref="ns1:ReplicateAdGroup"/>
        </xs:sequence>
    </xs:complexType>
    <xs:complexType name="ReplicateAdGroupListResponse">
        <xs:sequence>
            <xs:element maxOccurs="unbounded" minOccurs="0" name="return" type="tns:AdGroup"/>
        </xs:sequence>
    </xs:complexType>
    <xs:complexType name="AdGroup">
        <xs:sequence>
            <xs:element minOccurs="0" name="Id" type="xs:long"/>
            <xs:element name="CampaignId" type="xs:long"/>
            <xs:element name="Status" type="tns:SemaStatusType"/>
            <xs:element minOccurs="0" name="AdVendorStatus" nillable="true" type="xs:string"/>
            <xs:element name="AdGroupName" type="xs:string"/>
            <xs:element name="DefaultMaxCPC" type="xs:decimal"/>
            <xs:element minOccurs="0" name="DefaultDestinationUrl" type="xs:string"/>
            <xs:element minOccurs="0" name="PublishDate" type="xs:dateTime"/>
            <xs:element minOccurs="0" name="AdVendorId" nillable="true" type="xs:long"/>
            <xs:element minOccurs="0" name="State" type="tns:SemaStateType"/>
            <xs:element minOccurs="0" name="CreatedDate" nillable="true" type="xs:dateTime"/>
            <xs:element minOccurs="0" name="ModifiedDate" nillable="true" type="xs:dateTime"/>
            <xs:element minOccurs="0" name="CreatedBy" nillable="true" type="xs:string"/>
            <xs:element minOccurs="0" name="ModifiedBy" nillable="true" type="xs:string"/>
        </xs:sequence>
    </xs:complexType>
    <xs:complexType name="ReplicateAdKeyWordList">
        <xs:sequence>
            <xs:element maxOccurs="unbounded" minOccurs="0" ref="ns1:ReplicateAdKeyWord"/>
        </xs:sequence>
    </xs:complexType>
    <xs:complexType name="ReplicateAdKeyWordListResponse">
        <xs:sequence>
            <xs:element maxOccurs="unbounded" minOccurs="0" name="return" type="tns:AdKeyWord"/>
        </xs:sequence>
    </xs:complexType>
    <xs:complexType name="AdKeyWord">
        <xs:sequence>
            <xs:element minOccurs="0" name="Id" type="xs:long"/>
            <xs:element minOccurs="0" name="VendorId" nillable="true" type="xs:long"/>
            <xs:element name="AdGroupId" type="xs:long"/>
            <xs:element name="MatchType" type="xs:string"/>
            <xs:element name="Status" type="tns:SemaStatusType"/>
            <xs:element minOccurs="0" name="AdVendorStatus" nillable="true" type="xs:string"/>
            <xs:element minOccurs="0" name="State" nillable="true" type="tns:SemaStateType"/>
            <xs:element name="KeywordText" type="xs:string"/>
            <xs:element name="DestinationURL" type="xs:string"/>
            <xs:element name="MaxCPC" type="xs:decimal"/>
            <xs:element name="MinCPC" type="xs:decimal"/>
            <xs:element name="NegativeMatch" type="xs:boolean"/>
            <xs:element minOccurs="0" name="VendorPolicyExemptionRequest" nillable="true" type="xs:string"/>
            <xs:element minOccurs="0" name="PublishedDate" nillable="true" type="xs:dateTime"/>
            <xs:element name="VendorPaused" nillable="true" type="xs:boolean"/>
            <xs:element minOccurs="0" name="CreatedDate" nillable="true" type="xs:dateTime"/>
            <xs:element minOccurs="0" name="ModifiedDate" nillable="true" type="xs:dateTime"/>
            <xs:element minOccurs="0" name="CreatedBy" nillable="true" type="xs:string"/>
            <xs:element minOccurs="0" name="ModifiedBy" nillable="true" type="xs:string"/>
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
    <xs:simpleType name="AdCopyType">
        <xs:restriction base="xs:string">
            <xs:enumeration value="DIDO"/>
            <xs:enumeration value="PROMO"/>
            <xs:enumeration value="UNKNOWN"/>
        </xs:restriction>
    </xs:simpleType>
</xs:schema>
;
			 var xsdSchema2:Schema = new Schema(xsdXML2);
			schemas.push(xsdSchema2);
			targetNamespaces.push(new Namespace('','http://schemas.macys.com/api/ad/v1'));
			 var xsdXML3:XML = <xs:schema xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns="http://schemas.macys.com/definitions/ad/v1" xmlns:ns1="http://schemas.macys.com/api/ad/v1" attributeFormDefault="unqualified" elementFormDefault="unqualified" targetNamespace="http://schemas.macys.com/definitions/ad/v1">
    <xs:import namespace="http://schemas.macys.com/api/ad/v1" schemaLocation="http://192.168.1.27:8081/SEMAServices/services/v1/ReplicateEntityService?xsd=3"/>
    <xs:element name="ExceptionInfo" type="ns1:exceptionInfo"/>
    <xs:element name="ReplicateAdCopy" type="ns1:ReplicateEntity"/>
    <xs:element name="ReplicateAdGroup" type="ns1:ReplicateEntity"/>
    <xs:element name="ReplicateAdKeyWord" type="ns1:ReplicateEntity"/>
    <xs:element name="adCopyBean" type="ns1:AdCopy"/>
    <xs:element name="adGroupBean" type="ns1:AdGroup"/>
    <xs:element name="adKeyWordBean" type="ns1:AdKeyWord"/>
    <xs:element name="replicateEntityBean" type="ns1:ReplicateEntity"/>
    <xs:element name="userName" nillable="true" type="xs:string"/>
</xs:schema>
;
			 var xsdSchema3:Schema = new Schema(xsdXML3);
			schemas.push(xsdSchema3);
			targetNamespaces.push(new Namespace('','http://schemas.macys.com/definitions/ad/v1'));
			xsdSchema1.addImport(new Namespace("http://schemas.macys.com/api/ad/v1"), xsdSchema2)
			xsdSchema3.addImport(new Namespace("http://schemas.macys.com/api/ad/v1"), xsdSchema2)
			xsdSchema2.addImport(new Namespace("http://schemas.macys.com/definitions/ad/v1"), xsdSchema3)
			xsdSchema0.addImport(new Namespace("https://adwords.google.com/api/adwords/v11"), xsdSchema1)
		}
	}
}