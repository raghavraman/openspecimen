package edu.wustl.catissuecore.caties.util;

public abstract class CaTIESConstants
{
	
	public static final String MSH = "MSH";
	public static final String PID = "PID";
	public static final String OBX = "OBX";
	public static final String OBR = "OBR";
	public static final String FTS = "FTS";
	
	public static final String MALE = "M";
	public static final String FEMALE = "F";
	
	//Report observation section constants  
	public static final String  FINAL_SECTION="FIN";
	public static final String  TEXT_SECTION="TX";
	
	public static final int  NAME_SECTION_INDEX=3;
	public static final int  DOCUMENT_FRAGMENT_INDEX=5;
	
	public static final int  PARTICIPANT_ETHNICITY_INDEX=10;
	public static final int  PARTICIPANT_MEDICAL_RECORD_INDEX=3;
	public static final int  PARTICIPANT_NAME_INDEX=5;
	public static final int  PARTICIPANT_DATEOFBIRTH_INDEX=7;
	public static final int  PARTICIPANT_GENDER_INDEX=8;
	public static final int  PARTICIPANT_SSN_INDEX=19;
	public static final int  PARTICIPANT_SITE_INDEX=2;

	public static final int  REPORT_ACCESSIONNUMBER_INDEX=3;
	public static final int  REPORT_DATE_INDEX=14;
	
	//CaTIESConstants Types
	public static final String HL7_PARSER="HL7";
	
	// Constant for input file extension
	public static final String INPUT_FILE_EXTENSION=".dat";
	
	//Constants for report status
	public static final String PENDING_FOR_DEID="PENDING_FOR_DEID";
	public static final String PENDING_FOR_XML="PENDING_FOR_XML";
	public static final String IDENTIFIED="IDENTIFIED";
	public static final String DEIDENTIFIED="DEIDENTIFIED";
	public static final String DEID_PROCESS_FAILED="DEID_PROCESS_FAILED";
	public static final String CC_PROCESS_FAILED="CC_PROCESS_FAILED";
	public static final String CONCEPT_CODED="CONCEPT_CODED";
	
	
	//constans for report queue
	public static final String PENDING="PENDING";
	public static final String NEW="ADDED_TO_QUEUE";
	public static final String FAILURE="FAILURE";
	public static final String STATUS_CONFLICT = "CONFLICT";
	public static final String SITE_NOT_FOUND="SITE_NOT_FOUND";
	public static final String INVALID_REPORT_SECTION="INVALID_REPORT_SECTION";
	public static final String DB_ERROR="DB_ERROR";
	public static final String API_ERROR="API_ERROR";
	public static final String CP_NOT_FOUND="CP_NOT_FOUND";
	public static final String CP_NOT_FOUND_ERROR_MSG="CP not found with specified Titile in DB";
	
	//constants for Site info
	public static final String SITE_NAME="SITE_NAME";
	public static final String SITE_ABBRIVIATION="SITE_ABBRIVIATION";
	
	//constants for tag names in de-identified report elelment
	public static final String REPORT="Report";
	public static final String REPORT_TYPE="Report_Type";
	public static final String REPORT_HEADER="Report_Header";
	public static final String REPORT_ID="Report_ID";
	public static final String PATIENT_ID="Patient_ID";
	public static final String PARTICIPANT_NAME="participant_name";
	public static final String PARTICIPANT_ROLE="participant";
	public static final String PARTICIPANT_MRN="participant_mrn";
	public static final String REPORT_TEXT="Report_Text";
	public static final String HEADER_PERSON="Header_Person";
	public static final String HEADER_DATA="Header_Data";
	public static final String VARIABLE="Header_Variable";
	public static final String VALUE="Header_Value";
	public static final String ROLE="role";
	public static final String REPORT_TYPE_VALUE="SP";
	
	//constants for logger
	public static final String LOGGER_GENERAL="general";
	public static final String LOGGER_FILE_POLLER="filePoller";
	public static final String LOGGER_QUEUE_PROCESSOR="queueProcessor";
	public static final String LOGGER_DEID_SERVER="deidServer";
	public static final String LOGGER_CONCEPT_CODER="conceptCoder";
	public static final String CSVLOGGER_DATETIME=" Date/Time ";
	public static final String CSVLOGGER_FILENAME=" FileName ";
	public static final String CSVLOGGER_STATUS=" Status ";
	public static final String CSVLOGGER_MESSAGE=" Message ";
	public static final String CSVLOGGER_SEPARATOR=",";
	public static final String CSVLOGGER_REPORTQUEUE=" Report Loder Queue ID ";
	public static final String CSVLOGGER_IDENTIFIED_REPORT=" Identified Report ID";
	public static final String CSVLOGGER_DEIDENTIFIED_REPORT=" Deidentified Report ID";
	public static final String CSVLOGGER_PROCESSING_TIME="Processing Time (ms)";
	
	//constants for concept coding
	public static final String ERROR_GATE="ERROR_FAILED_GATE_PIPE";
	
	//Constants for tag names in Concept code process
	public static final String TAG_GATEXML="GateXML";
	public static final String TAG_GATEDOCUMENT="GateDocument";
	public static final String TAG_ENVELOPE="Envelope";
	public static final String TAG_CHIRPSXML="ChirpsXML";
	public static final String TAG_REPORTCODES="ReportCodes";
	public static final String TAG_INDEXED_CONCEPT="IndexedConcept";
	public static final String TAG_CONCEPT_REFERENT="ConceptReferent";
	public static final String TAG_CONCEPT="Concept";
	public static final String TAG_CONCEPT_CLASSIFICATION="ConceptClassification";
	public static final String TAG_ATTRIBUTE_NAME="name";
	public static final String TAG_ATTRIBUTE_END_OFFSET="endOffset";
	public static final String TAG_ATTRIBUTE_START_OFFSET="startOffset";
	public static final String TAG_ATTRIBUTE_ISMODIFIER="isModifier";
	public static final String TAG_ATTRIBUTE_ISNEGATED="isNegated";
	public static final String TAG_ATTRIBUTE_CUI="cui";
	public static final String TAG_ATTRIBUTE_SEMANTICTYPE="semanticType";
	
	public static final String COLUMN_NAME_REPORT_STATUS="reportStatus";
	public static final String PARSER_CLASS="edu.wustl.catissuecore.reportloader.HL7Parser";
	
	//Constants for catissuecore_properties.xml properties
	public static final String SESSION_DATA="sessionDataLoginName"; 
	public static final String INPUT_DIR="inputDir";
	public static final String BAD_FILE_DIR="badFilesDir";
	public static final String PROCESSED_FILE_DIR="processFileDir";
	public static final String POLLER_SLEEPTIME="filePollerSleepTime";
	public static final String SITE_INFO_FILENAME="siteInfoFilename";
	public static final String FILE_POLLER_PORT="filePollerPort";
	public static final String COLLECTION_PROTOCOL_TITLE="collectionProtocolTitle";
	public static final String USER_NAME="userName";
	public static final String PASSWORD="password";
	
	public static final String DEID_HOME="deidHome";
	public static final String DEID_DCTIONARY_FOLDER="deidDnyFolder";
	public static final String DEID_SLEEPTIME="deidSleepTime";
	public static final String DEID_CONFIG_FILE_NAME="deidConfigFilename";
	public static final String DEID_SECTION_HEADER_FILENAME="deidSectionheaderpriorityFilename";
	public static final String DEID_DTD_FILENAME="deidDTDFilename";
	public static final String MAX_THREADPOOL_SIZE="maxThreadPoolSize";
	public static final String DEID_PORT="deidPort";
	public static final String CONCEPT_CODER_SLEEPTIME="conceptCoderSleepTime";
	public static final String CONCEPT_CODER_PORT="conceptCoderPort";
	
	//keys for caTIES.properties file
	public static final String CATIES_CODER_VERSION="caties.coder.version";
	public static final String CATIES_GATE_HOME="caties.gate.home";
	public static final String CATIES_CREOLE_URL_NAME="caties.creole.url.name";
	public static final String CATIES_CASE_INSEN_GAZ_NAME="caties.case.insensitive.gazetteer.url.name";
	public static final String CATIES_CASE_SEN_GAZ_NAME="caties.case.sensitive.gazetteer.url.name";
	public static final String CATIES_SECTION_CHUMNKER_URL_NAME="caties.section.chunker.url.name";
	public static final String CATIES_CONCEPT_FILTER_URL_NAME="caties.concept.filter.url.name";
	public static final String CATIES_CONCEPT_NEG_EX_URL_NAME="caties.neg.ex.url.name";
	public static final String CATIES_CONCEPT_CATEGORIZER_URL_NAME="caties.concept.categorizer.url.name";
}
