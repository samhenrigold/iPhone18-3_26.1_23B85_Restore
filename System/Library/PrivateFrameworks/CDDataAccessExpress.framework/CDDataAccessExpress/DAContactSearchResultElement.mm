@interface DAContactSearchResultElement
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToDAContactSearchResultElement:(id)element;
- (DAContactSearchResultElement)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DAContactSearchResultElement

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  firstName = [(DAContactSearchResultElement *)self firstName];
  lastName = [(DAContactSearchResultElement *)self lastName];
  displayName = [(DAContactSearchResultElement *)self displayName];
  emailAddress = [(DAContactSearchResultElement *)self emailAddress];
  v9 = [v3 stringWithFormat:@"<%@ %p> %@ %@ (%@): %@", v4, self, firstName, lastName, displayName, emailAddress];

  return v9;
}

- (BOOL)isEqualToDAContactSearchResultElement:(id)element
{
  elementCopy = element;
  if (elementCopy == self)
  {
    goto LABEL_69;
  }

  firstName = [(DAContactSearchResultElement *)self firstName];
  if (firstName && (v6 = firstName, -[DAContactSearchResultElement firstName](self, "firstName"), v7 = objc_claimAutoreleasedReturnValue(), -[DAContactSearchResultElement firstName](elementCopy, "firstName"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v7 isEqualToString:v8], v8, v7, v6, !v9)
    || (-[DAContactSearchResultElement lastName](self, "lastName"), (v10 = objc_claimAutoreleasedReturnValue()) != 0) && (v11 = v10, -[DAContactSearchResultElement lastName](self, "lastName"), v12 = objc_claimAutoreleasedReturnValue(), -[DAContactSearchResultElement lastName](elementCopy, "lastName"), v13 = objc_claimAutoreleasedReturnValue(), v14 = [v12 isEqualToString:v13], v13, v12, v11, !v14)
    || (-[DAContactSearchResultElement emailAddress](self, "emailAddress"), (v15 = objc_claimAutoreleasedReturnValue()) != 0) && (v16 = v15, -[DAContactSearchResultElement emailAddress](self, "emailAddress"), v17 = objc_claimAutoreleasedReturnValue(), -[DAContactSearchResultElement emailAddress](elementCopy, "emailAddress"), v18 = objc_claimAutoreleasedReturnValue(), v19 = [v17 isEqualToString:v18], v18, v17, v16, !v19)
    || (-[DAContactSearchResultElement workPhone](self, "workPhone"), (v20 = objc_claimAutoreleasedReturnValue()) != 0) && (v21 = v20, -[DAContactSearchResultElement workPhone](self, "workPhone"), v22 = objc_claimAutoreleasedReturnValue(), -[DAContactSearchResultElement workPhone](elementCopy, "workPhone"), v23 = objc_claimAutoreleasedReturnValue(), v24 = [v22 isEqualToString:v23], v23, v22, v21, !v24)
    || (-[DAContactSearchResultElement mobilePhone](self, "mobilePhone"), (v25 = objc_claimAutoreleasedReturnValue()) != 0) && (v26 = v25, -[DAContactSearchResultElement mobilePhone](self, "mobilePhone"), v27 = objc_claimAutoreleasedReturnValue(), -[DAContactSearchResultElement mobilePhone](elementCopy, "mobilePhone"), v28 = objc_claimAutoreleasedReturnValue(), v29 = [v27 isEqualToString:v28], v28, v27, v26, !v29)
    || (-[DAContactSearchResultElement company](self, "company"), (v30 = objc_claimAutoreleasedReturnValue()) != 0) && (v31 = v30, -[DAContactSearchResultElement company](self, "company"), v32 = objc_claimAutoreleasedReturnValue(), -[DAContactSearchResultElement company](elementCopy, "company"), v33 = objc_claimAutoreleasedReturnValue(), v34 = [v32 isEqualToString:v33], v33, v32, v31, !v34)
    || (-[DAContactSearchResultElement title](self, "title"), (v35 = objc_claimAutoreleasedReturnValue()) != 0) && (v36 = v35, -[DAContactSearchResultElement title](self, "title"), v37 = objc_claimAutoreleasedReturnValue(), -[DAContactSearchResultElement title](elementCopy, "title"), v38 = objc_claimAutoreleasedReturnValue(), v39 = [v37 isEqualToString:v38], v38, v37, v36, !v39)
    || (-[DAContactSearchResultElement alias](self, "alias"), (v40 = objc_claimAutoreleasedReturnValue()) != 0) && (v41 = v40, -[DAContactSearchResultElement alias](self, "alias"), v42 = objc_claimAutoreleasedReturnValue(), -[DAContactSearchResultElement alias](elementCopy, "alias"), v43 = objc_claimAutoreleasedReturnValue(), v44 = [v42 isEqualToString:v43], v43, v42, v41, !v44)
    || (-[DAContactSearchResultElement homePhone](self, "homePhone"), (v45 = objc_claimAutoreleasedReturnValue()) != 0) && (v46 = v45, -[DAContactSearchResultElement homePhone](self, "homePhone"), v47 = objc_claimAutoreleasedReturnValue(), -[DAContactSearchResultElement homePhone](elementCopy, "homePhone"), v48 = objc_claimAutoreleasedReturnValue(), v49 = [v47 isEqualToString:v48], v48, v47, v46, !v49)
    || (-[DAContactSearchResultElement office](self, "office"), (v50 = objc_claimAutoreleasedReturnValue()) != 0) && (v51 = v50, -[DAContactSearchResultElement office](self, "office"), v52 = objc_claimAutoreleasedReturnValue(), -[DAContactSearchResultElement office](elementCopy, "office"), v53 = objc_claimAutoreleasedReturnValue(), v54 = [v52 isEqualToString:v53], v53, v52, v51, !v54)
    || (-[DAContactSearchResultElement serverSource](self, "serverSource"), (v55 = objc_claimAutoreleasedReturnValue()) != 0) && (v56 = v55, -[DAContactSearchResultElement serverSource](self, "serverSource"), v57 = objc_claimAutoreleasedReturnValue(), -[DAContactSearchResultElement serverSource](elementCopy, "serverSource"), v58 = objc_claimAutoreleasedReturnValue(), v59 = [v57 isEqualToString:v58], v58, v57, v56, !v59)
    || (-[DAContactSearchResultElement recordName](self, "recordName"), (v60 = objc_claimAutoreleasedReturnValue()) != 0) && (v61 = v60, -[DAContactSearchResultElement recordName](self, "recordName"), v62 = objc_claimAutoreleasedReturnValue(), -[DAContactSearchResultElement recordName](elementCopy, "recordName"), v63 = objc_claimAutoreleasedReturnValue(), v64 = [v62 isEqualToString:v63], v63, v62, v61, !v64)
    || (-[DAContactSearchResultElement faxPhone](self, "faxPhone"), (v65 = objc_claimAutoreleasedReturnValue()) != 0) && (v66 = v65, -[DAContactSearchResultElement faxPhone](self, "faxPhone"), v67 = objc_claimAutoreleasedReturnValue(), -[DAContactSearchResultElement faxPhone](elementCopy, "faxPhone"), v68 = objc_claimAutoreleasedReturnValue(), v69 = [v67 isEqualToString:v68], v68, v67, v66, !v69)
    || (-[DAContactSearchResultElement department](self, "department"), (v70 = objc_claimAutoreleasedReturnValue()) != 0) && (v71 = v70, -[DAContactSearchResultElement department](self, "department"), v72 = objc_claimAutoreleasedReturnValue(), -[DAContactSearchResultElement department](elementCopy, "department"), v73 = objc_claimAutoreleasedReturnValue(), v74 = [v72 isEqualToString:v73], v73, v72, v71, !v74)
    || (-[DAContactSearchResultElement street](self, "street"), (v75 = objc_claimAutoreleasedReturnValue()) != 0) && (v76 = v75, -[DAContactSearchResultElement street](self, "street"), v77 = objc_claimAutoreleasedReturnValue(), -[DAContactSearchResultElement street](elementCopy, "street"), v78 = objc_claimAutoreleasedReturnValue(), v79 = [v77 isEqualToString:v78], v78, v77, v76, !v79)
    || (-[DAContactSearchResultElement city](self, "city"), (v80 = objc_claimAutoreleasedReturnValue()) != 0) && (v81 = v80, -[DAContactSearchResultElement city](self, "city"), v82 = objc_claimAutoreleasedReturnValue(), -[DAContactSearchResultElement city](elementCopy, "city"), v83 = objc_claimAutoreleasedReturnValue(), v84 = [v82 isEqualToString:v83], v83, v82, v81, !v84)
    || (-[DAContactSearchResultElement state](self, "state"), (v85 = objc_claimAutoreleasedReturnValue()) != 0) && (v86 = v85, -[DAContactSearchResultElement state](self, "state"), v87 = objc_claimAutoreleasedReturnValue(), -[DAContactSearchResultElement state](elementCopy, "state"), v88 = objc_claimAutoreleasedReturnValue(), v89 = [v87 isEqualToString:v88], v88, v87, v86, !v89)
    || (-[DAContactSearchResultElement zip](self, "zip"), (v90 = objc_claimAutoreleasedReturnValue()) != 0) && (v91 = v90, -[DAContactSearchResultElement zip](self, "zip"), v92 = objc_claimAutoreleasedReturnValue(), -[DAContactSearchResultElement zip](elementCopy, "zip"), v93 = objc_claimAutoreleasedReturnValue(), v94 = [v92 isEqualToString:v93], v93, v92, v91, !v94)
    || (-[DAContactSearchResultElement country](self, "country"), (v95 = objc_claimAutoreleasedReturnValue()) != 0) && (v96 = v95, -[DAContactSearchResultElement country](self, "country"), v97 = objc_claimAutoreleasedReturnValue(), -[DAContactSearchResultElement country](elementCopy, "country"), v98 = objc_claimAutoreleasedReturnValue(), v99 = [v97 isEqualToString:v98], v98, v97, v96, !v99)
    || (-[DAContactSearchResultElement jpegPhoto](self, "jpegPhoto"), (v100 = objc_claimAutoreleasedReturnValue()) != 0) && (v101 = v100, -[DAContactSearchResultElement jpegPhoto](self, "jpegPhoto"), v102 = objc_claimAutoreleasedReturnValue(), -[DAContactSearchResultElement jpegPhoto](elementCopy, "jpegPhoto"), v103 = objc_claimAutoreleasedReturnValue(), v104 = [v102 isEqualToData:v103], v103, v102, v101, !v104)
    || (-[DAContactSearchResultElement imService](self, "imService"), (v105 = objc_claimAutoreleasedReturnValue()) != 0) && (v106 = v105, -[DAContactSearchResultElement imService](self, "imService"), v107 = objc_claimAutoreleasedReturnValue(), -[DAContactSearchResultElement imService](elementCopy, "imService"), v108 = objc_claimAutoreleasedReturnValue(), v109 = [v107 isEqualToString:v108], v108, v107, v106, !v109)
    || (-[DAContactSearchResultElement imUsername](self, "imUsername"), (v110 = objc_claimAutoreleasedReturnValue()) != 0) && (v111 = v110, -[DAContactSearchResultElement imUsername](self, "imUsername"), v112 = objc_claimAutoreleasedReturnValue(), -[DAContactSearchResultElement imUsername](elementCopy, "imUsername"), v113 = objc_claimAutoreleasedReturnValue(), v114 = [v112 isEqualToString:v113], v113, v112, v111, !v114)
    || (-[DAContactSearchResultElement uri](self, "uri"), (v115 = objc_claimAutoreleasedReturnValue()) != 0) && (v116 = v115, -[DAContactSearchResultElement uri](self, "uri"), v117 = objc_claimAutoreleasedReturnValue(), -[DAContactSearchResultElement uri](elementCopy, "uri"), v118 = objc_claimAutoreleasedReturnValue(), v119 = [v117 isEqualToString:v118], v118, v117, v116, !v119)
    || (-[DAContactSearchResultElement buildingName](self, "buildingName"), (v120 = objc_claimAutoreleasedReturnValue()) != 0) && (v121 = v120, -[DAContactSearchResultElement buildingName](self, "buildingName"), v122 = objc_claimAutoreleasedReturnValue(), -[DAContactSearchResultElement buildingName](elementCopy, "buildingName"), v123 = objc_claimAutoreleasedReturnValue(), v124 = [v122 isEqualToString:v123], v123, v122, v121, !v124)
    || (-[DAContactSearchResultElement appleFloor](self, "appleFloor"), (v125 = objc_claimAutoreleasedReturnValue()) != 0) && (v126 = v125, -[DAContactSearchResultElement appleFloor](self, "appleFloor"), v127 = objc_claimAutoreleasedReturnValue(), -[DAContactSearchResultElement appleFloor](elementCopy, "appleFloor"), v128 = objc_claimAutoreleasedReturnValue(), v129 = [v127 isEqualToString:v128], v128, v127, v126, !v129)
    || (-[DAContactSearchResultElement pagerNumber](self, "pagerNumber"), (v130 = objc_claimAutoreleasedReturnValue()) != 0) && (v131 = v130, -[DAContactSearchResultElement pagerNumber](self, "pagerNumber"), v132 = objc_claimAutoreleasedReturnValue(), -[DAContactSearchResultElement pagerNumber](elementCopy, "pagerNumber"), v133 = objc_claimAutoreleasedReturnValue(), v134 = [v132 isEqualToString:v133], v133, v132, v131, !v134)
    || (-[DAContactSearchResultElement postalAddress](self, "postalAddress"), (v135 = objc_claimAutoreleasedReturnValue()) != 0) && (v136 = v135, -[DAContactSearchResultElement postalAddress](self, "postalAddress"), v137 = objc_claimAutoreleasedReturnValue(), -[DAContactSearchResultElement postalAddress](elementCopy, "postalAddress"), v138 = objc_claimAutoreleasedReturnValue(), v139 = [v137 isEqualToString:v138], v138, v137, v136, !v139)
    || (-[DAContactSearchResultElement homePostalAddress](self, "homePostalAddress"), (v140 = objc_claimAutoreleasedReturnValue()) != 0) && (v141 = v140, -[DAContactSearchResultElement homePostalAddress](self, "homePostalAddress"), v142 = objc_claimAutoreleasedReturnValue(), -[DAContactSearchResultElement homePostalAddress](elementCopy, "homePostalAddress"), v143 = objc_claimAutoreleasedReturnValue(), v144 = [v142 isEqualToString:v143], v143, v142, v141, !v144)
    || (-[DAContactSearchResultElement principalPath](self, "principalPath"), (v145 = objc_claimAutoreleasedReturnValue()) != 0) && (v146 = v145, -[DAContactSearchResultElement principalPath](self, "principalPath"), v147 = objc_claimAutoreleasedReturnValue(), -[DAContactSearchResultElement principalPath](elementCopy, "principalPath"), v148 = objc_claimAutoreleasedReturnValue(), v149 = [v147 isEqualToString:v148], v148, v147, v146, !v149)
    || (-[DAContactSearchResultElement iPhone](self, "iPhone"), (v150 = objc_claimAutoreleasedReturnValue()) != 0) && (v151 = v150, -[DAContactSearchResultElement iPhone](self, "iPhone"), v152 = objc_claimAutoreleasedReturnValue(), -[DAContactSearchResultElement iPhone](elementCopy, "iPhone"), v153 = objc_claimAutoreleasedReturnValue(), v154 = [v152 isEqualToString:v153], v153, v152, v151, !v154)
    || (-[DAContactSearchResultElement mainPhone](self, "mainPhone"), (v155 = objc_claimAutoreleasedReturnValue()) != 0) && (v156 = v155, -[DAContactSearchResultElement mainPhone](self, "mainPhone"), v157 = objc_claimAutoreleasedReturnValue(), -[DAContactSearchResultElement mainPhone](elementCopy, "mainPhone"), v158 = objc_claimAutoreleasedReturnValue(), v159 = [v157 isEqualToString:v158], v158, v157, v156, !v159)
    || (-[DAContactSearchResultElement workFaxPhone](self, "workFaxPhone"), (v160 = objc_claimAutoreleasedReturnValue()) != 0) && (v161 = v160, -[DAContactSearchResultElement workFaxPhone](self, "workFaxPhone"), v162 = objc_claimAutoreleasedReturnValue(), -[DAContactSearchResultElement workFaxPhone](elementCopy, "workFaxPhone"), v163 = objc_claimAutoreleasedReturnValue(), v164 = [v162 isEqualToString:v163], v163, v162, v161, !v164))
  {
    v169 = 0;
    goto LABEL_70;
  }

  cuAddresses = [(DAContactSearchResultElement *)self cuAddresses];
  if (!cuAddresses)
  {
LABEL_69:
    v169 = 1;
    goto LABEL_70;
  }

  v166 = cuAddresses;
  cuAddresses2 = [(DAContactSearchResultElement *)self cuAddresses];
  cuAddresses3 = [(DAContactSearchResultElement *)elementCopy cuAddresses];
  v169 = [cuAddresses2 isEqual:cuAddresses3];

LABEL_70:
  return v169 & 1;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(DAContactSearchResultElement *)self isEqualToDAContactSearchResultElement:v5];
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  displayName = [(DAContactSearchResultElement *)self displayName];
  [coderCopy encodeObject:displayName forKey:@"DisplayNameKey"];

  firstName = [(DAContactSearchResultElement *)self firstName];
  [coderCopy encodeObject:firstName forKey:@"FirstNameKey"];

  lastName = [(DAContactSearchResultElement *)self lastName];
  [coderCopy encodeObject:lastName forKey:@"LastNameKey"];

  emailAddress = [(DAContactSearchResultElement *)self emailAddress];
  [coderCopy encodeObject:emailAddress forKey:@"EmailAddressKey"];

  workPhone = [(DAContactSearchResultElement *)self workPhone];
  [coderCopy encodeObject:workPhone forKey:@"WorkPhoneKey"];

  mobilePhone = [(DAContactSearchResultElement *)self mobilePhone];
  [coderCopy encodeObject:mobilePhone forKey:@"MobilePhoneKey"];

  company = [(DAContactSearchResultElement *)self company];
  [coderCopy encodeObject:company forKey:@"CompanyKey"];

  title = [(DAContactSearchResultElement *)self title];
  [coderCopy encodeObject:title forKey:@"TitleKey"];

  alias = [(DAContactSearchResultElement *)self alias];
  [coderCopy encodeObject:alias forKey:@"AliasKey"];

  homePhone = [(DAContactSearchResultElement *)self homePhone];
  [coderCopy encodeObject:homePhone forKey:@"HomePhoneKey"];

  office = [(DAContactSearchResultElement *)self office];
  [coderCopy encodeObject:office forKey:@"OfficeKey"];

  serverSource = [(DAContactSearchResultElement *)self serverSource];
  [coderCopy encodeObject:serverSource forKey:@"ServerSourceKey"];

  recordName = [(DAContactSearchResultElement *)self recordName];
  [coderCopy encodeObject:recordName forKey:@"RecordNameKey"];

  faxPhone = [(DAContactSearchResultElement *)self faxPhone];
  [coderCopy encodeObject:faxPhone forKey:@"FaxPhoneKey"];

  department = [(DAContactSearchResultElement *)self department];
  [coderCopy encodeObject:department forKey:@"DepartmentKey"];

  street = [(DAContactSearchResultElement *)self street];
  [coderCopy encodeObject:street forKey:@"StreetKey"];

  city = [(DAContactSearchResultElement *)self city];
  [coderCopy encodeObject:city forKey:@"CityKey"];

  state = [(DAContactSearchResultElement *)self state];
  [coderCopy encodeObject:state forKey:@"StateKey"];

  v23 = [(DAContactSearchResultElement *)self zip];
  [coderCopy encodeObject:v23 forKey:@"ZipKey"];

  country = [(DAContactSearchResultElement *)self country];
  [coderCopy encodeObject:country forKey:@"CountryKey"];

  jpegPhoto = [(DAContactSearchResultElement *)self jpegPhoto];
  [coderCopy encodeObject:jpegPhoto forKey:@"JpegPhotoKey"];

  imService = [(DAContactSearchResultElement *)self imService];
  [coderCopy encodeObject:imService forKey:@"ImServiceKey"];

  imUsername = [(DAContactSearchResultElement *)self imUsername];
  [coderCopy encodeObject:imUsername forKey:@"ImUsernameKey"];

  v28 = [(DAContactSearchResultElement *)self uri];
  [coderCopy encodeObject:v28 forKey:@"UriKey"];

  buildingName = [(DAContactSearchResultElement *)self buildingName];
  [coderCopy encodeObject:buildingName forKey:@"BuildingNameKey"];

  appleFloor = [(DAContactSearchResultElement *)self appleFloor];
  [coderCopy encodeObject:appleFloor forKey:@"AppleFloorKey"];

  pagerNumber = [(DAContactSearchResultElement *)self pagerNumber];
  [coderCopy encodeObject:pagerNumber forKey:@"PagerNumberKey"];

  postalAddress = [(DAContactSearchResultElement *)self postalAddress];
  [coderCopy encodeObject:postalAddress forKey:@"PostalAddressKey"];

  homePostalAddress = [(DAContactSearchResultElement *)self homePostalAddress];
  [coderCopy encodeObject:homePostalAddress forKey:@"HomePostalAddressKey"];

  principalPath = [(DAContactSearchResultElement *)self principalPath];
  [coderCopy encodeObject:principalPath forKey:@"PrincipalPathKey"];

  preferredUserAddress = [(DAContactSearchResultElement *)self preferredUserAddress];
  [coderCopy encodeObject:preferredUserAddress forKey:@"PreferredUserAddressKey"];

  cuAddresses = [(DAContactSearchResultElement *)self cuAddresses];
  [coderCopy encodeObject:cuAddresses forKey:@"CUAddressesKey"];

  iPhone = [(DAContactSearchResultElement *)self iPhone];
  [coderCopy encodeObject:iPhone forKey:@"IPhone"];

  mainPhone = [(DAContactSearchResultElement *)self mainPhone];
  [coderCopy encodeObject:mainPhone forKey:@"MainPhone"];

  workFaxPhone = [(DAContactSearchResultElement *)self workFaxPhone];
  [coderCopy encodeObject:workFaxPhone forKey:@"WorkFaxPhone"];

  identifierOnServer = [(DAContactSearchResultElement *)self identifierOnServer];
  [coderCopy encodeObject:identifierOnServer forKey:@"IdentifierOnServerKey"];
}

- (DAContactSearchResultElement)initWithCoder:(id)coder
{
  coderCopy = coder;
  v46.receiver = self;
  v46.super_class = DAContactSearchResultElement;
  v5 = [(DAContactSearchResultElement *)&v46 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"DisplayNameKey"];
    [(DAContactSearchResultElement *)v5 setDisplayName:v6];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"FirstNameKey"];
    [(DAContactSearchResultElement *)v5 setFirstName:v7];

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"LastNameKey"];
    [(DAContactSearchResultElement *)v5 setLastName:v8];

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EmailAddressKey"];
    [(DAContactSearchResultElement *)v5 setEmailAddress:v9];

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"WorkPhoneKey"];
    [(DAContactSearchResultElement *)v5 setWorkPhone:v10];

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MobilePhoneKey"];
    [(DAContactSearchResultElement *)v5 setMobilePhone:v11];

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CompanyKey"];
    [(DAContactSearchResultElement *)v5 setCompany:v12];

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"TitleKey"];
    [(DAContactSearchResultElement *)v5 setTitle:v13];

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AliasKey"];
    [(DAContactSearchResultElement *)v5 setAlias:v14];

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HomePhoneKey"];
    [(DAContactSearchResultElement *)v5 setHomePhone:v15];

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"OfficeKey"];
    [(DAContactSearchResultElement *)v5 setOffice:v16];

    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ServerSourceKey"];
    [(DAContactSearchResultElement *)v5 setServerSource:v17];

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"RecordNameKey"];
    [(DAContactSearchResultElement *)v5 setRecordName:v18];

    v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"FaxPhoneKey"];
    [(DAContactSearchResultElement *)v5 setFaxPhone:v19];

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"DepartmentKey"];
    [(DAContactSearchResultElement *)v5 setDepartment:v20];

    v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"StreetKey"];
    [(DAContactSearchResultElement *)v5 setStreet:v21];

    v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CityKey"];
    [(DAContactSearchResultElement *)v5 setCity:v22];

    v23 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"StateKey"];
    [(DAContactSearchResultElement *)v5 setState:v23];

    v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ZipKey"];
    [(DAContactSearchResultElement *)v5 setZip:v24];

    v25 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CountryKey"];
    [(DAContactSearchResultElement *)v5 setCountry:v25];

    v26 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"JpegPhotoKey"];
    [(DAContactSearchResultElement *)v5 setJpegPhoto:v26];

    v27 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ImServiceKey"];
    [(DAContactSearchResultElement *)v5 setImService:v27];

    v28 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ImUsernameKey"];
    [(DAContactSearchResultElement *)v5 setImUsername:v28];

    v29 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"UriKey"];
    [(DAContactSearchResultElement *)v5 setUri:v29];

    v30 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"BuildingNameKey"];
    [(DAContactSearchResultElement *)v5 setBuildingName:v30];

    v31 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AppleFloorKey"];
    [(DAContactSearchResultElement *)v5 setAppleFloor:v31];

    v32 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PagerNumberKey"];
    [(DAContactSearchResultElement *)v5 setPagerNumber:v32];

    v33 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PostalAddressKey"];
    [(DAContactSearchResultElement *)v5 setPostalAddress:v33];

    v34 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HomePostalAddressKey"];
    [(DAContactSearchResultElement *)v5 setHomePostalAddress:v34];

    v35 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PrincipalPathKey"];
    [(DAContactSearchResultElement *)v5 setPrincipalPath:v35];

    v36 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PreferredUserAddressKey"];
    [(DAContactSearchResultElement *)v5 setPreferredUserAddress:v36];

    v37 = MEMORY[0x277CBEB98];
    v38 = objc_opt_class();
    v39 = [v37 setWithObjects:{v38, objc_opt_class(), 0}];
    v40 = [coderCopy decodeObjectOfClasses:v39 forKey:@"CUAddressesKey"];
    [(DAContactSearchResultElement *)v5 setCuAddresses:v40];

    v41 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"IPhone"];
    [(DAContactSearchResultElement *)v5 setIPhone:v41];

    v42 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MainPhone"];
    [(DAContactSearchResultElement *)v5 setMainPhone:v42];

    v43 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"WorkFaxPhone"];
    [(DAContactSearchResultElement *)v5 setWorkFaxPhone:v43];

    v44 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"IdentifierOnServerKey"];
    [(DAContactSearchResultElement *)v5 setIdentifierOnServer:v44];
  }

  return v5;
}

@end