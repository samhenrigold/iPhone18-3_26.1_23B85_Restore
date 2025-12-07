uint64_t sub_243AFA550()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_243AFA588()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_243AFA6C8(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, int64_t a7, int64_t a8)
{
  *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;

  return MEMORY[0x2821FE8E8](v8, 40, 7);
}

id CSLogForCategory(uint64_t a1)
{
  if (CSLogForCategory_onceToken[0] != -1)
  {
    CSLogForCategory_cold_1();
  }

  v2 = CSLogForCategory_logObjects[a1];

  return v2;
}

uint64_t __CSLogForCategory_block_invoke()
{
  CSLogForCategory_logObjects[0] = os_log_create(CSLogSubsystem, "general");

  return MEMORY[0x2821F96F8]();
}

Swift::Bool __swiftcall String.cs_hasExtension(_:)(Swift::String a1)
{
  v3 = HIBYTE(a1._object) & 0xF;
  if ((a1._object & 0x2000000000000000) == 0)
  {
    v3 = a1._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (!v3)
  {
    return 0;
  }

  v4 = v2;
  v5 = v1;
  v6 = sub_243B18DCC();
  if (sub_243B18DCC() >= v6)
  {
    return 0;
  }

  v7 = sub_243B18DCC();
  sub_243AFBC40(v7, v5, v4, v8);
  v10 = v9;
  v4, v11, v12, v9, v13, v14, v15, v16;
  sub_243AFBCFC();
  sub_243AFBD50();
  v17 = sub_243B18ECC();
  v10, v18, v19, v20, v21, v22, v23, v24;
  return v17 == 0;
}

uint64_t sub_243AFB8E4(uint64_t a1, id *a2)
{
  v3 = sub_243B18D7C();
  *a2 = 0;
  return v3 & 1;
}

void sub_243AFB964(uint64_t *a1@<X8>)
{
  sub_243B18D8C();
  v3 = v2;
  v4 = sub_243B18D5C();
  v3, v5, v6, v7, v8, v9, v10, v11;
  *a1 = v4;
}

uint64_t sub_243AFB9A8()
{
  v0 = sub_243B18D8C();
  v2 = v1;
  v3 = MEMORY[0x245D483C0](v0);
  v2, v4, v5, v6, v7, v8, v9, v10;
  return v3;
}

void sub_243AFB9E4(uint64_t a1)
{
  sub_243B18D8C();
  v2 = v1;
  sub_243B18DBC();

  v2, v3, v4, v5, v6, v7, v8, v9;
}

uint64_t sub_243AFBA38(uint64_t a1)
{
  sub_243B18D8C();
  v2 = v1;
  sub_243B18F7C();
  sub_243B18DBC();
  v3 = sub_243B18F8C();
  v2, v4, v5, v6, v7, v8, v9, v10;
  return v3;
}

uint64_t sub_243AFBAAC(void *a1, uint64_t *a2)
{
  v2 = sub_243B18D8C();
  v4 = v3;
  v5 = sub_243B18D8C();
  v13 = v6;
  if (v2 == v5 && v4 == v6)
  {
    v15 = 1;
  }

  else
  {
    v15 = sub_243B18F5C();
  }

  v4, v6, v7, v8, v9, v10, v11, v12;
  v13, v16, v17, v18, v19, v20, v21, v22;
  return v15 & 1;
}

void sub_243AFBB34(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[1];
  v4 = sub_243B18D5C();
  v3, v5, v6, v7, v8, v9, v10, v11;
  *a2 = v4;
}

uint64_t sub_243AFBB7C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_243B18D8C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_243AFBBA8(uint64_t a1)
{
  v2 = sub_243AFBEA8(&qword_27EDA1728, &unk_243B199A8);
  v3 = sub_243AFBEA8(&qword_27EDA1730, &unk_243B19948);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_243AFBC40(unint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return MEMORY[0x2821FBFB0](a1, a2, a3, a4);
  }

  v4 = a3;
  v5 = a2;
  if ((a3 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v6 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v7 = 7;
  if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
  {
    v7 = 11;
  }

  v8 = v7 | (v6 << 16);
  a1 = sub_243B18DDC();
  if (a2)
  {
    a1 = 15;
  }

  if (4 * v6 < a1 >> 14)
  {
    goto LABEL_14;
  }

  a2 = v8;
  a3 = v5;
  a4 = v4;

  return MEMORY[0x2821FBFB0](a1, a2, a3, a4);
}

unint64_t sub_243AFBCFC()
{
  result = qword_27EDA16E0;
  if (!qword_27EDA16E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDA16E0);
  }

  return result;
}

unint64_t sub_243AFBD50()
{
  result = qword_27EDA16E8;
  if (!qword_27EDA16E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDA16E8);
  }

  return result;
}

void sub_243AFBDF4(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_243AFBEA8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for URLResourceKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_243AFBF20()
{
  result = sub_243AFBF40();
  qword_2815090B0 = result;
  return result;
}

id sub_243AFBF40()
{
  v43 = *MEMORY[0x277D85DE8];
  v0 = objc_allocWithZone(MEMORY[0x277CCAE80]);
  v1 = sub_243B18D5C();
  v41 = [v0 initWithServiceName_];

  v2 = [objc_opt_self() interfaceWithProtocol_];
  outCount = 0;
  protocol_copyMethodDescriptionList(&unk_2856C7F20, 1, 1, &outCount);
  v3 = outCount;
  if (outCount != 23)
  {
    if (qword_281509090 != -1)
    {
      swift_once();
    }

    v4 = sub_243B18D3C();
    __swift_project_value_buffer(v4, qword_281509098);
    v5 = sub_243B18D1C();
    v6 = sub_243B18EAC();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 134218240;
      *(v7 + 4) = 23;
      *(v7 + 12) = 2048;
      *(v7 + 14) = v3;
      _os_log_impl(&dword_243AF9000, v5, v6, "SPIHelper function count for allowed classes (%ld) doesn't match the number of functions in the protocol: %ld", v7, 0x16u);
      MEMORY[0x245D489D0](v7, -1, -1);
    }
  }

  v8 = CKErrorUserInfoClasses();
  v9 = sub_243B18E7C();

  v10 = sub_243B18E5C();
  [v2 setClasses:v10 forSelector:sel_sharingStatusForWithURLWrapper_withReply_ argumentIndex:1 ofReply:1];

  v11 = sub_243B18E5C();
  [v2 setClasses:v11 forSelector:sel_sharingStatusFor_withReply_ argumentIndex:1 ofReply:1];

  v12 = sub_243B18E5C();
  [v2 setClasses:v12 forSelector:sel_startFileSharingWithURLWrapper_emailAddresses_phoneNumbers_accessType_permissionType_allowOthersToInvite_withReply_ argumentIndex:2 ofReply:1];

  v13 = sub_243B18E5C();
  [v2 setClasses:v13 forSelector:sel_startFileSharingWithURLWrapper_emailAddresses_phoneNumbers_optionsGroups_withReply_ argumentIndex:2 ofReply:1];

  v14 = sub_243B18E5C();
  [v2 setClasses:v14 forSelector:sel_addToCloudKitSharing_containerSetupInfo_emailAddresses_phoneNumbers_accessType_permissionType_allowOthersToInvite_withReply_ argumentIndex:2 ofReply:1];

  v15 = sub_243B18E5C();
  [v2 setClasses:v15 forSelector:sel_addToCloudKitSharing_containerSetupInfo_emailAddresses_phoneNumbers_optionsGroups_withReply_ argumentIndex:2 ofReply:1];

  v16 = sub_243B18E5C();
  [v2 setClasses:v16 forSelector:sel_addToShareFromSharingURL_containerSetupInfo_emailAddresses_phoneNumbers_accessType_permissionType_allowOthersToInvite_withReply_ argumentIndex:2 ofReply:1];

  v17 = sub_243B18E5C();
  [v2 setClasses:v17 forSelector:sel_removeFromShareFromSharingURL_containerSetupInfo_withReply_ argumentIndex:1 ofReply:1];

  v18 = sub_243B18E5C();
  [v2 setClasses:v18 forSelector:sel_removeFromShare_containerSetupInfo_withReply_ argumentIndex:1 ofReply:1];

  v19 = sub_243B18E5C();
  [v2 setClasses:v19 forSelector:sel_removeFromShareForFileURL_withReply_ argumentIndex:1 ofReply:1];

  v20 = sub_243B18E5C();
  [v2 setClasses:v20 forSelector:sel_mailContentFromSharingURL_share_fileURL_appName_appIconData_withReply_ argumentIndex:2 ofReply:1];

  v21 = sub_243B18E5C();
  [v2 setClasses:v21 forSelector:sel_getMetadataFromShareFromSharingURL_containerSetupInfo_withReply_ argumentIndex:1 ofReply:1];

  v22 = sub_243B18E5C();
  [v2 setClasses:v22 forSelector:sel_updateShare_containerSetupInfo_withReply_ argumentIndex:2 ofReply:1];

  v23 = sub_243B18E5C();
  [v2 setClasses:v23 forSelector:sel_currentUserSharingStatusFor_withReply_ argumentIndex:1 ofReply:1];

  v24 = sub_243B18E5C();
  [v2 setClasses:v24 forSelector:sel_addParticipantsToShare_containerSetupInfo_emailAddresses_phoneNumbers_withReply_ argumentIndex:2 ofReply:1];

  v25 = sub_243B18E5C();
  [v2 setClasses:v25 forSelector:sel_addParticipantsToShareWithURLWrapper_share_emailAddresses_phoneNumbers_permissionType_allowOthersToInvite_withReply_ argumentIndex:2 ofReply:1];

  v26 = sub_243B18E5C();
  [v2 setClasses:v26 forSelector:sel_addParticipantsToShareWithURLWrapper_share_emailAddresses_phoneNumbers_optionsGroups_withReply_ argumentIndex:2 ofReply:1];

  v27 = sub_243B18E5C();
  [v2 setClasses:v27 forSelector:sel_addParticipantsToShare_containerSetupInfo_emailAddresses_phoneNumbers_permissionType_allowOthersToInvite_withReply_ argumentIndex:2 ofReply:1];

  v28 = sub_243B18E5C();
  [v2 setClasses:v28 forSelector:sel_addParticipantsToShare_containerSetupInfo_emailAddresses_phoneNumbers_optionsGroups_withReply_ argumentIndex:2 ofReply:1];

  v29 = sub_243B18E5C();
  [v2 setClasses:v29 forSelector:sel_existingShareForFileWithURLWrapper_withReply_ argumentIndex:2 ofReply:1];

  v30 = sub_243B18E5C();
  [v2 setClasses:v30 forSelector:sel_userNameAndEmailWithURLWrapper_containerSetupInfo_withReply_ argumentIndex:2 ofReply:1];

  v31 = sub_243B18E5C();
  [v2 setClasses:v31 forSelector:sel_forciblyShareFolder_emailAddresses_phoneNumbers_accessType_permissionType_allowOthersToInvite_withReply_ argumentIndex:2 ofReply:1];

  v32 = sub_243B18E5C();
  [v2 setClasses:v32 forSelector:sel_forciblyShareFolder_emailAddresses_phoneNumbers_optionsGroups_withReply_ argumentIndex:2 ofReply:1];
  v9, v33, v34, v35, v36, v37, v38, v39;

  [v41 setRemoteObjectInterface_];
  [v41 resume];

  return v41;
}

uint64_t static InitiateSharing.functionCount(inProtocol:)(Protocol *a1)
{
  v3 = *MEMORY[0x277D85DE8];
  outCount = 0;
  protocol_copyMethodDescriptionList(a1, 1, 1, &outCount);
  return outCount;
}

uint64_t sub_243AFC77C()
{
  result = sub_243AFC79C();
  qword_2815090B8 = result;
  return result;
}

uint64_t sub_243AFC79C()
{
  if (qword_281509058 != -1)
  {
    swift_once();
  }

  v0 = qword_2815090B0;
  aBlock[4] = sub_243AFC9A0;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_243AFCB44;
  aBlock[3] = &block_descriptor_378;
  v1 = _Block_copy(aBlock);
  v2 = v0;
  v3 = [v2 remoteObjectProxyWithErrorHandler_];
  _Block_release(v1);

  sub_243B18EDC();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA1798, &qword_243B19AD8);
  if (swift_dynamicCast())
  {
    return v9;
  }

  if (qword_281509090 != -1)
  {
    swift_once();
  }

  v5 = sub_243B18D3C();
  __swift_project_value_buffer(v5, qword_281509098);
  v6 = sub_243B18D1C();
  v7 = sub_243B18EAC();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_243AF9000, v6, v7, "Failed to create SPIHelper remote object proxy", v8, 2u);
    MEMORY[0x245D489D0](v8, -1, -1);
  }

  return 0;
}

void sub_243AFC9A0(void *a1)
{
  if (qword_281509090 != -1)
  {
    swift_once();
  }

  v2 = sub_243B18D3C();
  __swift_project_value_buffer(v2, qword_281509098);
  v3 = a1;
  oslog = sub_243B18D1C();
  v4 = sub_243B18EAC();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v20 = v6;
    *v5 = 136315138;
    v7 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA1778, &qword_243B19AB8);
    v8 = sub_243B18D9C();
    v10 = v9;
    v11 = sub_243B09C80(v8, v9, &v20);
    v10, v12, v13, v14, v15, v16, v17, v18;
    *(v5 + 4) = v11;
    _os_log_impl(&dword_243AF9000, oslog, v4, "Received SPIHelper remoteObjectProxy error: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x245D489D0](v6, -1, -1);
    MEMORY[0x245D489D0](v5, -1, -1);
  }

  else
  {
  }
}

void sub_243AFCB44(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

void sub_243AFCBAC(uint64_t a1, void (*a2)(void, id), uint64_t a3)
{
  v58 = a2;
  v5 = sub_243B18C1C();
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_243B18C2C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v52 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_243B18CDC();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v53 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v55 = &v48 - v16;
  MEMORY[0x28223BE20](v15);
  v18 = &v48 - v17;
  if (qword_281509090 != -1)
  {
    swift_once();
  }

  v19 = sub_243B18D3C();
  __swift_project_value_buffer(v19, qword_281509098);
  v56 = *(v12 + 16);
  v57 = a1;
  v54 = v12 + 16;
  v56(v18, a1, v11);
  v20 = sub_243B18D1C();
  v21 = sub_243B18EBC();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v50 = v7;
    v23 = v22;
    v24 = swift_slowAlloc();
    v51 = a3;
    v49 = v24;
    aBlock[0] = v24;
    *v23 = 136315138;
    sub_243B0A398(&qword_27EDA1748, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v25 = sub_243B18F4C();
    v26 = v9;
    v27 = v8;
    v29 = v28;
    (*(v12 + 8))(v18, v11);
    v30 = sub_243B09C80(v25, v29, aBlock);
    v31 = v29;
    v8 = v27;
    v9 = v26;
    v31, v32, v33, v34, v35, v36, v37, v38;
    *(v23 + 4) = v30;
    _os_log_impl(&dword_243AF9000, v20, v21, "callForSharingStatus url: %s", v23, 0xCu);
    v39 = v49;
    __swift_destroy_boxed_opaque_existential_0(v49);
    a3 = v51;
    MEMORY[0x245D489D0](v39, -1, -1);
    MEMORY[0x245D489D0](v23, -1, -1);
  }

  else
  {

    (*(v12 + 8))(v18, v11);
  }

  v41 = v56;
  v40 = v57;
  if (qword_281509060 != -1)
  {
    swift_once();
  }

  v42 = qword_2815090B8;
  if (qword_2815090B8)
  {
    sub_243B16EE4(0, &qword_27EDA1740, 0x277CC6438);
    v43 = v55;
    v41(v55, v40, v11);
    swift_unknownObjectRetain();
    v45 = sub_243B099B8(v43, 0);
    logWrapperMessage(for:isReadOnly:error:)(v40, 0, 0);
    v46 = swift_allocObject();
    *(v46 + 16) = v58;
    *(v46 + 24) = a3;
    aBlock[4] = sub_243B0A370;
    aBlock[5] = v46;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_243AFD490;
    aBlock[3] = &block_descriptor_6;
    v47 = _Block_copy(aBlock);

    [v42 sharingStatusForWithURLWrapper:v45 withReply:v47];

    _Block_release(v47);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_243B18C0C();
    sub_243B0A228(MEMORY[0x277D84F90]);
    sub_243B0A398(&qword_27EDA1738, MEMORY[0x277CC8620], MEMORY[0x277CC8618]);
    v44 = v52;
    sub_243B18C5C();
    v45 = sub_243B18BFC();
    (*(v9 + 8))(v44, v8);
    v58(0, v45);
  }
}

uint64_t sub_243AFD340()
{
  swift_willThrow();
  v27 = v0;
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA1778, &qword_243B19AB8);
  sub_243B16EE4(0, &qword_27EDA1780, 0x277CCA9B8);
  if (swift_dynamicCast())
  {
    v2 = [v26 code];
    if (v2 == sub_243B18D4C())
    {
      v3 = [v26 domain];
      v4 = sub_243B18D8C();
      v6 = v5;

      v8 = sub_243B18D8C();
      v14 = v4;
      v15 = v7;
      if (v14 == v8 && v6 == v7)
      {
        v17 = 1;
      }

      else
      {
        v17 = sub_243B18F5C();
      }

      v6, v7, v8, v9, v10, v11, v12, v13;
      v15, v18, v19, v20, v21, v22, v23, v24;
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

void sub_243AFD4B0(uint64_t a1, _TtC12CloudSharing15InitiateSharing *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, void (*a7)(char *, void, void *), uint64_t a8)
{
  v150 = a8;
  v151 = a7;
  v146 = a6;
  v147 = a4;
  v154 = a3;
  v11 = sub_243B18C1C();
  MEMORY[0x28223BE20](v11 - 8);
  v138 = &v136 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = sub_243B18C2C();
  v139 = *(v140 - 8);
  MEMORY[0x28223BE20](v140);
  v137 = &v136 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA1750, &qword_243B19A68);
  MEMORY[0x28223BE20](v14 - 8);
  v142 = &v136 - v15;
  v16 = sub_243B18CDC();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x28223BE20](v16);
  v141 = &v136 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v144 = &v136 - v21;
  MEMORY[0x28223BE20](v20);
  v23 = &v136 - v22;
  if (qword_281509090 != -1)
  {
    swift_once();
  }

  v24 = sub_243B18D3C();
  __swift_project_value_buffer(v24, qword_281509098);
  v25 = *(v17 + 16);
  v149 = v17 + 16;
  v143 = v25;
  v25(v23, a1, v16);
  v26 = sub_243B18D1C();
  v27 = sub_243B18EBC();
  v28 = os_log_type_enabled(v26, v27);
  v145 = a2;
  v152 = v16;
  v153 = a1;
  v148 = v17;
  if (v28)
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v136 = a5;
    v31 = v30;
    aBlock[0] = v30;
    *v29 = 136315138;
    sub_243B0A398(&qword_27EDA1748, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v32 = sub_243B18F4C();
    v34 = v33;
    (*(v17 + 8))(v23, v16);
    v35 = sub_243B09C80(v32, v34, aBlock);
    v34, v36, v37, v38, v39, v40, v41, v42;
    *(v29 + 4) = v35;
    _os_log_impl(&dword_243AF9000, v26, v27, "callForFileSharing url: %s", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v31);
    v43 = v31;
    a5 = v136;
    MEMORY[0x245D489D0](v43, -1, -1);
    v44 = v29;
    a2 = v145;
    MEMORY[0x245D489D0](v44, -1, -1);
  }

  else
  {

    (*(v17 + 8))(v23, v16);
  }

  v45 = sub_243B18D1C();
  v46 = sub_243B18E8C();
  a2, v47, v48, v49, v50, v51, v52, v53;
  if (os_log_type_enabled(v45, v46))
  {
    v54 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    aBlock[0] = v55;
    *v54 = 136315138;
    v56 = MEMORY[0x245D48400](a2, MEMORY[0x277D837D0]);
    v58 = v57;
    v59 = sub_243B09C80(v56, v57, aBlock);
    v58, v60, v61, v62, v63, v64, v65, v66;
    *(v54 + 4) = v59;
    _os_log_impl(&dword_243AF9000, v45, v46, "callForFileSharing emailAddresses: %s", v54, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v55);
    MEMORY[0x245D489D0](v55, -1, -1);
    MEMORY[0x245D489D0](v54, -1, -1);
  }

  v67 = v154;

  v68 = sub_243B18D1C();
  v69 = sub_243B18E8C();
  v67, v70, v71, v72, v73, v74, v75, v76;
  if (os_log_type_enabled(v68, v69))
  {
    v77 = swift_slowAlloc();
    v78 = swift_slowAlloc();
    aBlock[0] = v78;
    *v77 = 136315138;
    v79 = MEMORY[0x245D48400](v67, MEMORY[0x277D837D0]);
    v81 = v80;
    v82 = sub_243B09C80(v79, v80, aBlock);
    v81, v83, v84, v85, v86, v87, v88, v89;
    *(v77 + 4) = v82;
    _os_log_impl(&dword_243AF9000, v68, v69, "callForFileSharing phoneNumbers: %s", v77, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v78);
    MEMORY[0x245D489D0](v78, -1, -1);
    MEMORY[0x245D489D0](v77, -1, -1);
  }

  v90 = sub_243B18D1C();
  v91 = sub_243B18E8C();
  if (os_log_type_enabled(v90, v91))
  {
    v92 = swift_slowAlloc();
    v93 = swift_slowAlloc();
    *v92 = 136315138;
    v155 = v147;
    aBlock[0] = v93;
    type metadata accessor for ParticipantPermission(0);
    v94 = sub_243B18D9C();
    v96 = v95;
    v97 = sub_243B09C80(v94, v95, aBlock);
    v96, v98, v99, v100, v101, v102, v103, v104;
    *(v92 + 4) = v97;
    _os_log_impl(&dword_243AF9000, v90, v91, "callForFileSharing accessType: %s", v92, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v93);
    MEMORY[0x245D489D0](v93, -1, -1);
    MEMORY[0x245D489D0](v92, -1, -1);
  }

  v105 = sub_243B18D1C();
  v106 = sub_243B18E8C();
  if (os_log_type_enabled(v105, v106))
  {
    v107 = swift_slowAlloc();
    v108 = swift_slowAlloc();
    v155 = a5;
    aBlock[0] = v108;
    *v107 = 136315138;
    type metadata accessor for ParticipantPermission(0);
    v109 = sub_243B18D9C();
    v111 = v110;
    v112 = sub_243B09C80(v109, v110, aBlock);
    v111, v113, v114, v115, v116, v117, v118, v119;
    *(v107 + 4) = v112;
    _os_log_impl(&dword_243AF9000, v105, v106, "callForFileSharing permissionType: %s", v107, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v108);
    MEMORY[0x245D489D0](v108, -1, -1);
    MEMORY[0x245D489D0](v107, -1, -1);
  }

  v120 = v153;
  v121 = sub_243B18D1C();
  v122 = sub_243B18E8C();
  if (os_log_type_enabled(v121, v122))
  {
    v123 = swift_slowAlloc();
    *v123 = 67109120;
    *(v123 + 4) = v146 & 1;
    _os_log_impl(&dword_243AF9000, v121, v122, "callForFileSharing allowOthersToInvite: %{BOOL}d", v123, 8u);
    MEMORY[0x245D489D0](v123, -1, -1);
  }

  if (qword_281509060 != -1)
  {
    swift_once();
  }

  v124 = qword_2815090B8;
  if (qword_2815090B8)
  {
    sub_243B16EE4(0, &qword_27EDA1740, 0x277CC6438);
    v125 = v144;
    v143(v144, v120, v152);
    swift_unknownObjectRetain();
    v130 = sub_243B099B8(v125, 0);
    logWrapperMessage(for:isReadOnly:error:)(v120, 0, 0);
    v131 = sub_243B18E2C();
    v132 = sub_243B18E2C();
    v133 = swift_allocObject();
    v134 = v150;
    *(v133 + 16) = v151;
    *(v133 + 24) = v134;
    aBlock[4] = sub_243B0A474;
    aBlock[5] = v133;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_243AFE0C0;
    aBlock[3] = &block_descriptor_12;
    v135 = _Block_copy(aBlock);

    [v124 startFileSharingWithURLWrapper:v130 emailAddresses:v131 phoneNumbers:v132 accessType:v147 permissionType:a5 allowOthersToInvite:v146 & 1 withReply:v135];

    _Block_release(v135);
    swift_unknownObjectRelease();
  }

  else
  {
    v126 = v142;
    (*(v148 + 56))(v142, 1, 1, v152);
    sub_243B18C0C();
    sub_243B0A228(MEMORY[0x277D84F90]);
    sub_243B0A398(&qword_27EDA1738, MEMORY[0x277CC8620], MEMORY[0x277CC8618]);
    v127 = v137;
    v128 = v140;
    sub_243B18C5C();
    v129 = sub_243B18BFC();
    (*(v139 + 8))(v127, v128);
    v151(v126, 0, v129);

    sub_243B0A49C(v126, &qword_27EDA1750, &qword_243B19A68);
  }
}

uint64_t sub_243AFE0C0(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA1750, &qword_243B19A68);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v17 - v9;
  v11 = *(a1 + 32);
  if (a2)
  {
    sub_243B18CCC();
    v12 = sub_243B18CDC();
    (*(*(v12 - 8) + 56))(v10, 0, 1, v12);
  }

  else
  {
    v13 = sub_243B18CDC();
    (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  }

  v14 = a3;
  v15 = a4;
  v11(v10, a3, a4);

  return sub_243B0A49C(v10, &qword_27EDA1750, &qword_243B19A68);
}

void sub_243AFE26C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA1750, &qword_243B19A68);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v15 - v9;
  sub_243B16F2C(a1, &v15 - v9, &qword_27EDA1750, &qword_243B19A68);
  v11 = sub_243B18CDC();
  v12 = *(v11 - 8);
  v13 = 0;
  if ((*(v12 + 48))(v10, 1, v11) != 1)
  {
    v13 = sub_243B18CAC();
    (*(v12 + 8))(v10, v11);
  }

  if (a3)
  {
    v14 = sub_243B18C6C();
  }

  else
  {
    v14 = 0;
  }

  (*(a4 + 16))(a4, v13, a2, v14);
}

void sub_243AFE3D8(uint64_t a1, _TtC12CloudSharing15InitiateSharing *a2, uint64_t a3, uint64_t a4, void (*a5)(char *, void, void *), uint64_t a6)
{
  v138 = a6;
  v143 = a5;
  v144 = a3;
  v9 = sub_243B18C1C();
  MEMORY[0x28223BE20](v9 - 8);
  v130[1] = v130 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_243B18C2C();
  v131 = *(v11 - 8);
  v132 = v11;
  MEMORY[0x28223BE20](v11);
  v130[0] = v130 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA1750, &qword_243B19A68);
  MEMORY[0x28223BE20](v13 - 8);
  v134 = v130 - v14;
  v15 = sub_243B18CDC();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v133 = v130 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v136 = v130 - v20;
  MEMORY[0x28223BE20](v19);
  v22 = v130 - v21;
  if (qword_281509090 != -1)
  {
    swift_once();
  }

  v23 = sub_243B18D3C();
  __swift_project_value_buffer(v23, qword_281509098);
  v24 = *(v16 + 16);
  v141 = a1;
  v139 = v16 + 16;
  v24(v22, a1, v15);
  v25 = sub_243B18D1C();
  v26 = sub_243B18EBC();
  v27 = os_log_type_enabled(v25, v26);
  v137 = a2;
  v142 = a4;
  v140 = v16;
  v135 = v24;
  if (v27)
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    aBlock[0] = v29;
    *v28 = 136315138;
    sub_243B0A398(&qword_27EDA1748, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v30 = sub_243B18F4C();
    v32 = v31;
    v33 = *(v16 + 8);
    v34 = v15;
    v33(v22, v15);
    v35 = sub_243B09C80(v30, v32, aBlock);
    v32, v36, v37, v38, v39, v40, v41, v42;
    *(v28 + 4) = v35;
    _os_log_impl(&dword_243AF9000, v25, v26, "callForFileSharing url: %s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v29);
    v43 = v29;
    a2 = v137;
    MEMORY[0x245D489D0](v43, -1, -1);
    MEMORY[0x245D489D0](v28, -1, -1);
  }

  else
  {

    v44 = *(v16 + 8);
    v34 = v15;
    v44(v22, v15);
  }

  v45 = sub_243B18D1C();
  v46 = sub_243B18E8C();
  a2, v47, v48, v49, v50, v51, v52, v53;
  v54 = os_log_type_enabled(v45, v46);
  v55 = v144;
  if (v54)
  {
    v56 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    aBlock[0] = v57;
    *v56 = 136315138;
    v58 = MEMORY[0x245D48400](a2, MEMORY[0x277D837D0]);
    v60 = v59;
    v61 = sub_243B09C80(v58, v59, aBlock);
    v60, v62, v63, v64, v65, v66, v67, v68;
    *(v56 + 4) = v61;
    _os_log_impl(&dword_243AF9000, v45, v46, "callForFileSharing emailAddresses: %s", v56, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v57);
    MEMORY[0x245D489D0](v57, -1, -1);
    MEMORY[0x245D489D0](v56, -1, -1);
  }

  v69 = sub_243B18D1C();
  v70 = sub_243B18E8C();
  v55, v71, v72, v73, v74, v75, v76, v77;
  if (os_log_type_enabled(v69, v70))
  {
    v78 = swift_slowAlloc();
    v79 = swift_slowAlloc();
    aBlock[0] = v79;
    *v78 = 136315138;
    v80 = MEMORY[0x245D48400](v55, MEMORY[0x277D837D0]);
    v82 = v81;
    v83 = sub_243B09C80(v80, v81, aBlock);
    v82, v84, v85, v86, v87, v88, v89, v90;
    *(v78 + 4) = v83;
    _os_log_impl(&dword_243AF9000, v69, v70, "callForFileSharing phoneNumbers: %s", v78, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v79);
    MEMORY[0x245D489D0](v79, -1, -1);
    MEMORY[0x245D489D0](v78, -1, -1);
  }

  v91 = v142;

  v92 = sub_243B18D1C();
  v93 = sub_243B18E8C();
  v91, v94, v95, v96, v97, v98, v99, v100;
  if (os_log_type_enabled(v92, v93))
  {
    v101 = swift_slowAlloc();
    v102 = swift_slowAlloc();
    aBlock[0] = v102;
    *v101 = 136315138;
    v103 = sub_243B16EE4(0, &qword_27EDA1758, 0x277CDC6D0);
    v104 = MEMORY[0x245D48400](v91, v103);
    v106 = v105;
    v107 = sub_243B09C80(v104, v105, aBlock);
    v106, v108, v109, v110, v111, v112, v113, v114;
    *(v101 + 4) = v107;
    _os_log_impl(&dword_243AF9000, v92, v93, "callForFileSharing optionsGroups: %s", v101, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v102);
    MEMORY[0x245D489D0](v102, -1, -1);
    MEMORY[0x245D489D0](v101, -1, -1);
  }

  v116 = v140;
  v115 = v141;
  if (qword_281509060 != -1)
  {
    swift_once();
  }

  v117 = qword_2815090B8;
  if (qword_2815090B8)
  {
    sub_243B16EE4(0, &qword_27EDA1740, 0x277CC6438);
    v118 = v136;
    v135(v136, v115, v34);
    swift_unknownObjectRetain();
    v123 = sub_243B099B8(v118, 0);
    logWrapperMessage(for:isReadOnly:error:)(v115, 0, 0);
    v124 = sub_243B18E2C();
    v125 = sub_243B18E2C();
    sub_243B16EE4(0, &qword_27EDA1758, 0x277CDC6D0);
    v126 = sub_243B18E2C();
    v127 = swift_allocObject();
    v128 = v138;
    *(v127 + 16) = v143;
    *(v127 + 24) = v128;
    aBlock[4] = sub_243B17134;
    aBlock[5] = v127;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_243AFE0C0;
    aBlock[3] = &block_descriptor_18;
    v129 = _Block_copy(aBlock);

    [v117 startFileSharingWithURLWrapper:v123 emailAddresses:v124 phoneNumbers:v125 optionsGroups:v126 withReply:v129];

    _Block_release(v129);
    swift_unknownObjectRelease();
  }

  else
  {
    v119 = v134;
    (*(v116 + 56))(v134, 1, 1, v34);
    sub_243B18C0C();
    sub_243B0A228(MEMORY[0x277D84F90]);
    sub_243B0A398(&qword_27EDA1738, MEMORY[0x277CC8620], MEMORY[0x277CC8618]);
    v120 = v130[0];
    v121 = v132;
    sub_243B18C5C();
    v122 = sub_243B18BFC();
    (*(v131 + 8))(v120, v121);
    v143(v119, 0, v122);

    sub_243B0A49C(v119, &qword_27EDA1750, &qword_243B19A68);
  }
}

void sub_243AFEEB8(void *a1, void *a2, _TtC12CloudSharing15InitiateSharing *a3, _TtC12CloudSharing15InitiateSharing *a4, uint64_t a5, uint64_t a6, int a7, void (*a8)(char *, void, void *), uint64_t a9)
{
  v133 = a8;
  v134 = a5;
  v132 = a7;
  v135 = a6;
  v13 = sub_243B18C1C();
  MEMORY[0x28223BE20](v13 - 8);
  v127 = &v125 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_243B18C2C();
  v128 = *(v15 - 8);
  v129 = v15;
  MEMORY[0x28223BE20](v15);
  v126 = &v125 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA1750, &qword_243B19A68);
  MEMORY[0x28223BE20](v17 - 8);
  v125 = &v125 - v18;
  if (qword_281509090 != -1)
  {
    swift_once();
  }

  v19 = sub_243B18D3C();
  __swift_project_value_buffer(v19, qword_281509098);
  v20 = a1;
  v21 = sub_243B18D1C();
  v22 = sub_243B18EBC();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v23 = 138412290;
    *(v23 + 4) = v20;
    *v24 = v20;
    v25 = v20;
    _os_log_impl(&dword_243AF9000, v21, v22, "callForCloudKitAddToShare share: %@", v23, 0xCu);
    sub_243B0A49C(v24, &qword_27EDA1760, &qword_243B19A70);
    MEMORY[0x245D489D0](v24, -1, -1);
    MEMORY[0x245D489D0](v23, -1, -1);
  }

  v130 = v20;

  v26 = a2;
  v27 = sub_243B18D1C();
  v28 = sub_243B18EBC();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v29 = 138412290;
    *(v29 + 4) = v26;
    *v30 = v26;
    v31 = v26;
    _os_log_impl(&dword_243AF9000, v27, v28, "callForCloudKitAddToShare containerSetupInfo: %@", v29, 0xCu);
    sub_243B0A49C(v30, &qword_27EDA1760, &qword_243B19A70);
    MEMORY[0x245D489D0](v30, -1, -1);
    MEMORY[0x245D489D0](v29, -1, -1);
  }

  v32 = sub_243B18D1C();
  v33 = sub_243B18E8C();
  a3, v34, v35, v36, v37, v38, v39, v40;
  v41 = os_log_type_enabled(v32, v33);
  v42 = a3;
  v43 = a4;
  v131 = v42;
  if (v41)
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    aBlock[0] = v45;
    *v44 = 136315138;
    v46 = MEMORY[0x245D48400](v42, MEMORY[0x277D837D0]);
    v48 = v47;
    v49 = sub_243B09C80(v46, v47, aBlock);
    v48, v50, v51, v52, v53, v54, v55, v56;
    *(v44 + 4) = v49;
    a4 = v43;
    _os_log_impl(&dword_243AF9000, v32, v33, "callForCloudKitAddToShare emailAddresses: %s", v44, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v45);
    MEMORY[0x245D489D0](v45, -1, -1);
    MEMORY[0x245D489D0](v44, -1, -1);
  }

  v57 = sub_243B18D1C();
  v58 = sub_243B18E8C();
  a4, v59, v60, v61, v62, v63, v64, v65;
  if (os_log_type_enabled(v57, v58))
  {
    v66 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    aBlock[0] = v67;
    *v66 = 136315138;
    v68 = MEMORY[0x245D48400](a4, MEMORY[0x277D837D0]);
    v70 = v69;
    v71 = sub_243B09C80(v68, v69, aBlock);
    v70, v72, v73, v74, v75, v76, v77, v78;
    *(v66 + 4) = v71;
    _os_log_impl(&dword_243AF9000, v57, v58, "callForCloudKitAddToShare phoneNumbers: %s", v66, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v67);
    MEMORY[0x245D489D0](v67, -1, -1);
    MEMORY[0x245D489D0](v66, -1, -1);
  }

  v79 = sub_243B18D1C();
  v80 = sub_243B18E8C();
  if (os_log_type_enabled(v79, v80))
  {
    v81 = swift_slowAlloc();
    v82 = swift_slowAlloc();
    *v81 = 136315138;
    v136 = v134;
    aBlock[0] = v82;
    type metadata accessor for ParticipantPermission(0);
    v83 = sub_243B18D9C();
    v85 = v84;
    v86 = sub_243B09C80(v83, v84, aBlock);
    v85, v87, v88, v89, v90, v91, v92, v93;
    *(v81 + 4) = v86;
    _os_log_impl(&dword_243AF9000, v79, v80, "callForCloudKitAddToShare accessType: %s", v81, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v82);
    MEMORY[0x245D489D0](v82, -1, -1);
    MEMORY[0x245D489D0](v81, -1, -1);
  }

  v94 = sub_243B18D1C();
  v95 = sub_243B18E8C();
  if (os_log_type_enabled(v94, v95))
  {
    v96 = swift_slowAlloc();
    v97 = swift_slowAlloc();
    *v96 = 136315138;
    v136 = v135;
    aBlock[0] = v97;
    type metadata accessor for ParticipantPermission(0);
    v98 = sub_243B18D9C();
    v100 = v99;
    v101 = sub_243B09C80(v98, v99, aBlock);
    v100, v102, v103, v104, v105, v106, v107, v108;
    *(v96 + 4) = v101;
    _os_log_impl(&dword_243AF9000, v94, v95, "callForCloudKitAddToShare permissionType: %s", v96, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v97);
    MEMORY[0x245D489D0](v97, -1, -1);
    MEMORY[0x245D489D0](v96, -1, -1);
  }

  v109 = v132;
  v110 = v130;
  v111 = sub_243B18D1C();
  v112 = sub_243B18E8C();
  if (os_log_type_enabled(v111, v112))
  {
    v113 = swift_slowAlloc();
    *v113 = 67109120;
    *(v113 + 4) = v109 & 1;
    _os_log_impl(&dword_243AF9000, v111, v112, "callForCloudKitAddToShare allowOthersToInvite: %{BOOL}d", v113, 8u);
    MEMORY[0x245D489D0](v113, -1, -1);
  }

  if (qword_281509060 != -1)
  {
    swift_once();
  }

  v114 = qword_2815090B8;
  if (qword_2815090B8)
  {
    swift_unknownObjectRetain();
    v115 = sub_243B18E2C();
    v116 = sub_243B18E2C();
    v117 = swift_allocObject();
    *(v117 + 16) = v133;
    *(v117 + 24) = a9;
    aBlock[4] = sub_243B17134;
    aBlock[5] = v117;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_243AFE0C0;
    aBlock[3] = &block_descriptor_24;
    v118 = _Block_copy(aBlock);

    LOBYTE(v124) = v109 & 1;
    [v114 addToCloudKitSharing:v110 containerSetupInfo:v26 emailAddresses:v115 phoneNumbers:v116 accessType:v134 permissionType:v135 allowOthersToInvite:v124 withReply:v118];
    _Block_release(v118);
    swift_unknownObjectRelease();
  }

  else
  {
    v119 = sub_243B18CDC();
    v120 = v125;
    (*(*(v119 - 8) + 56))(v125, 1, 1, v119);
    sub_243B18C0C();
    sub_243B0A228(MEMORY[0x277D84F90]);
    sub_243B0A398(&qword_27EDA1738, MEMORY[0x277CC8620], MEMORY[0x277CC8618]);
    v121 = v126;
    v122 = v129;
    sub_243B18C5C();
    v123 = sub_243B18BFC();
    (*(v128 + 8))(v121, v122);
    v133(v120, 0, v123);

    sub_243B0A49C(v120, &qword_27EDA1750, &qword_243B19A68);
  }
}

void sub_243AFF964(void *a1, void *a2, _TtC12CloudSharing15InitiateSharing *a3, _TtC12CloudSharing15InitiateSharing *a4, _TtC12CloudSharing15InitiateSharing *a5, void (*a6)(char *, void, void *), uint64_t a7)
{
  v121 = a6;
  v122 = a7;
  v123 = a4;
  v11 = sub_243B18C1C();
  MEMORY[0x28223BE20](v11 - 8);
  v116 = &v114 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_243B18C2C();
  v117 = *(v13 - 8);
  v118 = v13;
  MEMORY[0x28223BE20](v13);
  v115 = &v114 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA1750, &qword_243B19A68);
  MEMORY[0x28223BE20](v15 - 8);
  v114 = &v114 - v16;
  if (qword_281509090 != -1)
  {
    swift_once();
  }

  v17 = sub_243B18D3C();
  __swift_project_value_buffer(v17, qword_281509098);
  v18 = a1;
  v19 = sub_243B18D1C();
  v20 = sub_243B18EBC();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *v21 = 138412290;
    *(v21 + 4) = v18;
    *v22 = v18;
    v23 = v18;
    _os_log_impl(&dword_243AF9000, v19, v20, "callForCloudKitAddToShare share: %@", v21, 0xCu);
    sub_243B0A49C(v22, &qword_27EDA1760, &qword_243B19A70);
    MEMORY[0x245D489D0](v22, -1, -1);
    MEMORY[0x245D489D0](v21, -1, -1);
  }

  v24 = a2;
  v25 = sub_243B18D1C();
  v26 = sub_243B18EBC();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *v27 = 138412290;
    *(v27 + 4) = v24;
    *v28 = v24;
    v29 = v24;
    _os_log_impl(&dword_243AF9000, v25, v26, "callForCloudKitAddToShare containerSetupInfo: %@", v27, 0xCu);
    sub_243B0A49C(v28, &qword_27EDA1760, &qword_243B19A70);
    MEMORY[0x245D489D0](v28, -1, -1);
    MEMORY[0x245D489D0](v27, -1, -1);
  }

  v119 = v24;
  v120 = v18;

  v30 = sub_243B18D1C();
  v31 = sub_243B18E8C();
  a3, v32, v33, v34, v35, v36, v37, v38;
  v39 = a3;
  v40 = a5;
  if (os_log_type_enabled(v30, v31))
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    aBlock[0] = v42;
    *v41 = 136315138;
    v43 = MEMORY[0x245D48400](v39, MEMORY[0x277D837D0]);
    v45 = v44;
    v46 = sub_243B09C80(v43, v44, aBlock);
    v45, v47, v48, v49, v50, v51, v52, v53;
    *(v41 + 4) = v46;
    _os_log_impl(&dword_243AF9000, v30, v31, "callForCloudKitAddToShare emailAddresses: %s", v41, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v42);
    MEMORY[0x245D489D0](v42, -1, -1);
    MEMORY[0x245D489D0](v41, -1, -1);
  }

  v54 = v123;

  v55 = sub_243B18D1C();
  v56 = sub_243B18E8C();
  v54, v57, v58, v59, v60, v61, v62, v63;
  if (os_log_type_enabled(v55, v56))
  {
    v64 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    aBlock[0] = v65;
    *v64 = 136315138;
    v66 = MEMORY[0x245D48400](v54, MEMORY[0x277D837D0]);
    v68 = v67;
    v69 = sub_243B09C80(v66, v67, aBlock);
    v68, v70, v71, v72, v73, v74, v75, v76;
    *(v64 + 4) = v69;
    _os_log_impl(&dword_243AF9000, v55, v56, "callForCloudKitAddToShare phoneNumbers: %s", v64, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v65);
    MEMORY[0x245D489D0](v65, -1, -1);
    MEMORY[0x245D489D0](v64, -1, -1);
  }

  v77 = sub_243B18D1C();
  v78 = sub_243B18E8C();
  v40, v79, v80, v81, v82, v83, v84, v85;
  if (os_log_type_enabled(v77, v78))
  {
    v86 = swift_slowAlloc();
    v87 = swift_slowAlloc();
    aBlock[0] = v87;
    *v86 = 136315138;
    v88 = sub_243B16EE4(0, &qword_27EDA1758, 0x277CDC6D0);
    v89 = MEMORY[0x245D48400](v40, v88);
    v91 = v90;
    v92 = sub_243B09C80(v89, v90, aBlock);
    v91, v93, v94, v95, v96, v97, v98, v99;
    *(v86 + 4) = v92;
    _os_log_impl(&dword_243AF9000, v77, v78, "callForCloudKitAddToShare optionsGroups: %s", v86, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v87);
    MEMORY[0x245D489D0](v87, -1, -1);
    MEMORY[0x245D489D0](v86, -1, -1);
  }

  v100 = v119;
  v101 = v120;
  if (qword_281509060 != -1)
  {
    swift_once();
  }

  v102 = qword_2815090B8;
  if (qword_2815090B8)
  {
    swift_unknownObjectRetain();
    v103 = sub_243B18E2C();
    v104 = sub_243B18E2C();
    sub_243B16EE4(0, &qword_27EDA1758, 0x277CDC6D0);
    v105 = sub_243B18E2C();
    v106 = swift_allocObject();
    v107 = v122;
    *(v106 + 16) = v121;
    *(v106 + 24) = v107;
    aBlock[4] = sub_243B17134;
    aBlock[5] = v106;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_243AFE0C0;
    aBlock[3] = &block_descriptor_30;
    v108 = _Block_copy(aBlock);

    [v102 addToCloudKitSharing:v101 containerSetupInfo:v100 emailAddresses:v103 phoneNumbers:v104 optionsGroups:v105 withReply:v108];
    _Block_release(v108);
    swift_unknownObjectRelease();
  }

  else
  {
    v109 = sub_243B18CDC();
    v110 = v114;
    (*(*(v109 - 8) + 56))(v114, 1, 1, v109);
    sub_243B18C0C();
    sub_243B0A228(MEMORY[0x277D84F90]);
    sub_243B0A398(&qword_27EDA1738, MEMORY[0x277CC8620], MEMORY[0x277CC8618]);
    v111 = v115;
    v112 = v118;
    sub_243B18C5C();
    v113 = sub_243B18BFC();
    (*(v117 + 8))(v111, v112);
    v121(v110, 0, v113);

    sub_243B0A49C(v110, &qword_27EDA1750, &qword_243B19A68);
  }
}

void sub_243B00228(uint64_t a1, void *a2, _TtC12CloudSharing15InitiateSharing *a3, _TtC12CloudSharing15InitiateSharing *a4, uint64_t a5, uint64_t a6, int a7, void (*a8)(void, void, void *), uint64_t a9)
{
  v142 = a6;
  v143 = a8;
  v145 = a5;
  v140 = a2;
  v13 = sub_243B18C1C();
  MEMORY[0x28223BE20](v13 - 8);
  v136[1] = v136 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_243B18C2C();
  v137 = *(v15 - 8);
  v138 = v15;
  MEMORY[0x28223BE20](v15);
  v136[0] = v136 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_243B18CDC();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = v136 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281509090 != -1)
  {
    swift_once();
  }

  v21 = sub_243B18D3C();
  __swift_project_value_buffer(v21, qword_281509098);
  v22 = *(v18 + 16);
  v139 = a1;
  v22(v20, a1, v17);
  v23 = sub_243B18D1C();
  v24 = sub_243B18EBC();
  v25 = os_log_type_enabled(v23, v24);
  v146 = a4;
  v144 = a3;
  v141 = a7;
  if (v25)
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    aBlock[0] = v27;
    *v26 = 136315138;
    sub_243B0A398(&qword_27EDA1748, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v28 = sub_243B18F4C();
    v30 = v29;
    (*(v18 + 8))(v20, v17);
    v31 = sub_243B09C80(v28, v30, aBlock);
    v32 = v30;
    a3 = v144;
    v32, v33, v34, v35, v36, v37, v38, v39;
    *(v26 + 4) = v31;
    _os_log_impl(&dword_243AF9000, v23, v24, "callForSharingURLAddToShare sharingURL: %s", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v27);
    MEMORY[0x245D489D0](v27, -1, -1);
    MEMORY[0x245D489D0](v26, -1, -1);
  }

  else
  {

    (*(v18 + 8))(v20, v17);
  }

  v40 = v140;
  v41 = sub_243B18D1C();
  v42 = sub_243B18EBC();

  v43 = os_log_type_enabled(v41, v42);
  v44 = v142;
  if (v43)
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    *v45 = 138412290;
    *(v45 + 4) = v40;
    *v46 = v40;
    v47 = v40;
    _os_log_impl(&dword_243AF9000, v41, v42, "callForSharingURLAddToShare containerSetupInfo: %@", v45, 0xCu);
    sub_243B0A49C(v46, &qword_27EDA1760, &qword_243B19A70);
    MEMORY[0x245D489D0](v46, -1, -1);
    MEMORY[0x245D489D0](v45, -1, -1);
  }

  v48 = sub_243B18D1C();
  v49 = sub_243B18E8C();
  a3, v50, v51, v52, v53, v54, v55, v56;
  if (os_log_type_enabled(v48, v49))
  {
    v57 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    aBlock[0] = v58;
    *v57 = 136315138;
    v59 = MEMORY[0x245D48400](a3, MEMORY[0x277D837D0]);
    v61 = v60;
    v62 = sub_243B09C80(v59, v60, aBlock);
    v61, v63, v64, v65, v66, v67, v68, v69;
    *(v57 + 4) = v62;
    _os_log_impl(&dword_243AF9000, v48, v49, "callForSharingURLAddToShare emailAddresses: %s", v57, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v58);
    MEMORY[0x245D489D0](v58, -1, -1);
    MEMORY[0x245D489D0](v57, -1, -1);
  }

  v70 = v146;

  v71 = sub_243B18D1C();
  v72 = sub_243B18E8C();
  v70, v73, v74, v75, v76, v77, v78, v79;
  if (os_log_type_enabled(v71, v72))
  {
    v80 = swift_slowAlloc();
    v81 = swift_slowAlloc();
    aBlock[0] = v81;
    *v80 = 136315138;
    v82 = MEMORY[0x245D48400](v70, MEMORY[0x277D837D0]);
    v84 = v83;
    v85 = sub_243B09C80(v82, v83, aBlock);
    v84, v86, v87, v88, v89, v90, v91, v92;
    *(v80 + 4) = v85;
    _os_log_impl(&dword_243AF9000, v71, v72, "callForSharingURLAddToShare phoneNumbers: %s", v80, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v81);
    MEMORY[0x245D489D0](v81, -1, -1);
    MEMORY[0x245D489D0](v80, -1, -1);
  }

  v93 = sub_243B18D1C();
  v94 = sub_243B18E8C();
  if (os_log_type_enabled(v93, v94))
  {
    v95 = swift_slowAlloc();
    v96 = swift_slowAlloc();
    *v95 = 136315138;
    v147 = v145;
    aBlock[0] = v96;
    type metadata accessor for ParticipantPermission(0);
    v97 = sub_243B18D9C();
    v99 = v98;
    v100 = sub_243B09C80(v97, v98, aBlock);
    v99, v101, v102, v103, v104, v105, v106, v107;
    *(v95 + 4) = v100;
    _os_log_impl(&dword_243AF9000, v93, v94, "callForSharingURLAddToShare accessType: %s", v95, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v96);
    MEMORY[0x245D489D0](v96, -1, -1);
    MEMORY[0x245D489D0](v95, -1, -1);
  }

  v108 = sub_243B18D1C();
  v109 = sub_243B18E8C();
  if (os_log_type_enabled(v108, v109))
  {
    v110 = swift_slowAlloc();
    v111 = swift_slowAlloc();
    v147 = v44;
    aBlock[0] = v111;
    *v110 = 136315138;
    type metadata accessor for ParticipantPermission(0);
    v112 = sub_243B18D9C();
    v114 = v113;
    v115 = sub_243B09C80(v112, v113, aBlock);
    v114, v116, v117, v118, v119, v120, v121, v122;
    *(v110 + 4) = v115;
    _os_log_impl(&dword_243AF9000, v108, v109, "callForSharingURLAddToShare permissionType: %s", v110, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v111);
    MEMORY[0x245D489D0](v111, -1, -1);
    MEMORY[0x245D489D0](v110, -1, -1);
  }

  v123 = v141;
  v124 = sub_243B18D1C();
  v125 = sub_243B18E8C();
  if (os_log_type_enabled(v124, v125))
  {
    v126 = swift_slowAlloc();
    *v126 = 67109120;
    *(v126 + 4) = v123 & 1;
    _os_log_impl(&dword_243AF9000, v124, v125, "callForSharingURLAddToShare allowOthersToInvite: %{BOOL}d", v126, 8u);
    MEMORY[0x245D489D0](v126, -1, -1);
  }

  if (qword_281509060 != -1)
  {
    swift_once();
  }

  v127 = qword_2815090B8;
  if (qword_2815090B8)
  {
    swift_unknownObjectRetain();
    v128 = sub_243B18CAC();
    v129 = sub_243B18E2C();
    v130 = sub_243B18E2C();
    v131 = swift_allocObject();
    *(v131 + 16) = v143;
    *(v131 + 24) = a9;
    aBlock[4] = sub_243B0A4FC;
    aBlock[5] = v131;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_243B00C60;
    aBlock[3] = &block_descriptor_36;
    v132 = _Block_copy(aBlock);

    LOBYTE(v135) = v123 & 1;
    [v127 addToShareFromSharingURL:v128 containerSetupInfo:v40 emailAddresses:v129 phoneNumbers:v130 accessType:v145 permissionType:v44 allowOthersToInvite:v135 withReply:v132];
    _Block_release(v132);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_243B18C0C();
    sub_243B0A228(MEMORY[0x277D84F90]);
    sub_243B0A398(&qword_27EDA1738, MEMORY[0x277CC8620], MEMORY[0x277CC8618]);
    v133 = v136[0];
    v134 = v138;
    sub_243B18C5C();
    v130 = sub_243B18BFC();
    (*(v137 + 8))(v133, v134);
    v143(0, 0, v130);
  }
}

void sub_243B00C60(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = *(a1 + 32);

  v9 = a3;
  v8 = a4;
  v7(a2, a3, a4);
}

void sub_243B00E88(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v7 = sub_243B18C6C();
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  (*(a4 + 16))(a4, a1 & 1, a2);
}

void sub_243B00F08(uint64_t a1, void *a2, void (*a3)(void, void), uint64_t a4)
{
  v8 = sub_243B18C1C();
  MEMORY[0x28223BE20](v8 - 8);
  v56 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_243B18C2C();
  v57 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v55 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_243B18CDC();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281509090 != -1)
  {
    swift_once();
  }

  v16 = sub_243B18D3C();
  v17 = __swift_project_value_buffer(v16, qword_281509098);
  v18 = *(v13 + 16);
  v59 = a1;
  v18(v15, a1, v12);
  v58 = v17;
  v19 = sub_243B18D1C();
  v20 = sub_243B18EBC();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v54 = a4;
    v22 = v21;
    v52 = swift_slowAlloc();
    aBlock[0] = v52;
    *v22 = 136315138;
    sub_243B0A398(&qword_27EDA1748, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v23 = sub_243B18F4C();
    v53 = a2;
    v24 = v10;
    v25 = a3;
    v27 = v26;
    (*(v13 + 8))(v15, v12);
    v28 = sub_243B09C80(v23, v27, aBlock);
    v29 = v27;
    a3 = v25;
    v10 = v24;
    a2 = v53;
    v29, v30, v31, v32, v33, v34, v35, v36;
    *(v22 + 4) = v28;
    _os_log_impl(&dword_243AF9000, v19, v20, "callForSharingURLRemoveShare sharingURL: %s", v22, 0xCu);
    v37 = v52;
    __swift_destroy_boxed_opaque_existential_0(v52);
    MEMORY[0x245D489D0](v37, -1, -1);
    v38 = v22;
    a4 = v54;
    MEMORY[0x245D489D0](v38, -1, -1);
  }

  else
  {

    (*(v13 + 8))(v15, v12);
  }

  v39 = a2;
  v40 = sub_243B18D1C();
  v41 = sub_243B18EBC();

  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v44 = a2;
    v45 = v43;
    *v42 = 138412290;
    *(v42 + 4) = v39;
    *v43 = v44;
    v46 = v39;
    _os_log_impl(&dword_243AF9000, v40, v41, "callForSharingURLRemoveShare containerSetupInfo: %@", v42, 0xCu);
    sub_243B0A49C(v45, &qword_27EDA1760, &qword_243B19A70);
    MEMORY[0x245D489D0](v45, -1, -1);
    MEMORY[0x245D489D0](v42, -1, -1);
  }

  if (qword_281509060 != -1)
  {
    swift_once();
  }

  v47 = qword_2815090B8;
  if (qword_2815090B8)
  {
    swift_unknownObjectRetain();
    v48 = sub_243B18CAC();
    v49 = swift_allocObject();
    *(v49 + 16) = a3;
    *(v49 + 24) = a4;
    aBlock[4] = sub_243B0A524;
    aBlock[5] = v49;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_243B014FC;
    aBlock[3] = &block_descriptor_42;
    v50 = _Block_copy(aBlock);

    [v47 removeFromShareFromSharingURL:v48 containerSetupInfo:v39 withReply:v50];
    _Block_release(v50);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_243B18C0C();
    sub_243B0A228(MEMORY[0x277D84F90]);
    sub_243B0A398(&qword_27EDA1738, MEMORY[0x277CC8620], MEMORY[0x277CC8618]);
    v51 = v55;
    sub_243B18C5C();
    v48 = sub_243B18BFC();
    (*(v57 + 8))(v51, v10);
    a3(0, v48);
  }
}

void sub_243B014FC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

void sub_243B0158C(char a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_243B18C6C();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1 & 1);
}

void sub_243B015FC(void *a1, void *a2, void (*a3)(void, void *), uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v6 = sub_243B18C1C();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = sub_243B18C2C();
  v29 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281509090 != -1)
  {
    swift_once();
  }

  v10 = sub_243B18D3C();
  __swift_project_value_buffer(v10, qword_281509098);
  v11 = a1;
  v12 = sub_243B18D1C();
  v13 = sub_243B18EBC();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 138412290;
    *(v14 + 4) = v11;
    *v15 = v11;
    v16 = v11;
    _os_log_impl(&dword_243AF9000, v12, v13, "callForRemoveShare share: %@", v14, 0xCu);
    sub_243B0A49C(v15, &qword_27EDA1760, &qword_243B19A70);
    MEMORY[0x245D489D0](v15, -1, -1);
    MEMORY[0x245D489D0](v14, -1, -1);
  }

  v17 = a2;
  v18 = sub_243B18D1C();
  v19 = sub_243B18EBC();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *v20 = 138412290;
    *(v20 + 4) = v17;
    *v21 = a2;
    v22 = v17;
    _os_log_impl(&dword_243AF9000, v18, v19, "callForRemoveShare containerSetupInfo: %@", v20, 0xCu);
    sub_243B0A49C(v21, &qword_27EDA1760, &qword_243B19A70);
    MEMORY[0x245D489D0](v21, -1, -1);
    MEMORY[0x245D489D0](v20, -1, -1);
  }

  if (qword_281509060 != -1)
  {
    swift_once();
  }

  v23 = qword_2815090B8;
  if (qword_2815090B8)
  {
    v24 = swift_allocObject();
    v25 = v31;
    *(v24 + 16) = v30;
    *(v24 + 24) = v25;
    aBlock[4] = sub_243B17060;
    aBlock[5] = v24;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_243B014FC;
    aBlock[3] = &block_descriptor_48;
    v26 = _Block_copy(aBlock);
    swift_unknownObjectRetain();

    [v23 removeFromShare:v11 containerSetupInfo:v17 withReply:v26];
    _Block_release(v26);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_243B18C0C();
    sub_243B0A228(MEMORY[0x277D84F90]);
    sub_243B0A398(&qword_27EDA1738, MEMORY[0x277CC8620], MEMORY[0x277CC8618]);
    sub_243B18C5C();
    v27 = sub_243B18BFC();
    (*(v29 + 8))(v9, v7);
    v30(0, v27);
  }
}

void sub_243B01AA0(uint64_t a1, void (*a2)(void, void), uint64_t a3)
{
  v6 = sub_243B18C1C();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = sub_243B18C2C();
  v42 = *(v7 - 8);
  v43 = v7;
  MEMORY[0x28223BE20](v7);
  v41 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_243B18CDC();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281509090 != -1)
  {
    swift_once();
  }

  v13 = sub_243B18D3C();
  __swift_project_value_buffer(v13, qword_281509098);
  (*(v10 + 16))(v12, a1, v9);
  v14 = sub_243B18D1C();
  v15 = sub_243B18EBC();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v39 = a2;
    v17 = v16;
    v18 = swift_slowAlloc();
    v40 = a3;
    v38 = v18;
    aBlock[0] = v18;
    *v17 = 136315138;
    sub_243B0A398(&qword_27EDA1748, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v19 = sub_243B18F4C();
    v21 = v20;
    (*(v10 + 8))(v12, v9);
    v22 = sub_243B09C80(v19, v21, aBlock);
    v21, v23, v24, v25, v26, v27, v28, v29;
    *(v17 + 4) = v22;
    _os_log_impl(&dword_243AF9000, v14, v15, "callForFileURLRemoveShare url: %s", v17, 0xCu);
    v30 = v38;
    __swift_destroy_boxed_opaque_existential_0(v38);
    a3 = v40;
    MEMORY[0x245D489D0](v30, -1, -1);
    v31 = v17;
    a2 = v39;
    MEMORY[0x245D489D0](v31, -1, -1);
  }

  else
  {

    (*(v10 + 8))(v12, v9);
  }

  if (qword_281509060 != -1)
  {
    swift_once();
  }

  v32 = qword_2815090B8;
  if (qword_2815090B8)
  {
    swift_unknownObjectRetain();
    v33 = sub_243B18CAC();
    v34 = swift_allocObject();
    *(v34 + 16) = a2;
    *(v34 + 24) = a3;
    aBlock[4] = sub_243B17060;
    aBlock[5] = v34;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_243B014FC;
    aBlock[3] = &block_descriptor_54;
    v35 = _Block_copy(aBlock);

    [v32 removeFromShareForFileURL:v33 withReply:v35];
    _Block_release(v35);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_243B18C0C();
    sub_243B0A228(MEMORY[0x277D84F90]);
    sub_243B0A398(&qword_27EDA1738, MEMORY[0x277CC8620], MEMORY[0x277CC8618]);
    v36 = v41;
    v37 = v43;
    sub_243B18C5C();
    v33 = sub_243B18BFC();
    (*(v42 + 8))(v36, v37);
    a2(0, v33);
  }
}

void sub_243B01FC8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _TtC12CloudSharing15InitiateSharing *a5, uint64_t a6, uint64_t a7, void (*a8)(void, void, void, void, void *), uint64_t a9)
{
  v123 = a8;
  v124 = a4;
  v120 = a5;
  v125 = a3;
  v117 = a2;
  v12 = sub_243B18C1C();
  MEMORY[0x28223BE20](v12 - 8);
  v109 = &v107 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = sub_243B18C2C();
  v110 = *(v111 - 8);
  MEMORY[0x28223BE20](v111);
  v108 = &v107 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA1750, &qword_243B19A68);
  v15 = MEMORY[0x28223BE20](v113);
  v115 = &v107 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v112 = &v107 - v18;
  MEMORY[0x28223BE20](v17);
  v118 = &v107 - v19;
  v20 = sub_243B18CDC();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v107 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281509090 != -1)
  {
    swift_once();
  }

  v24 = sub_243B18D3C();
  __swift_project_value_buffer(v24, qword_281509098);
  (*(v21 + 16))(v23, a1, v20);
  v25 = sub_243B18D1C();
  v26 = sub_243B18EBC();
  v27 = os_log_type_enabled(v25, v26);
  v121 = a6;
  v122 = a7;
  v116 = a1;
  v119 = v20;
  v114 = v21;
  if (v27)
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    aBlock[0] = v29;
    *v28 = 136315138;
    sub_243B0A398(&qword_27EDA1748, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v30 = sub_243B18F4C();
    v32 = v31;
    v107 = *(v21 + 8);
    v107(v23, v20);
    v33 = sub_243B09C80(v30, v32, aBlock);
    v32, v34, v35, v36, v37, v38, v39, v40;
    *(v28 + 4) = v33;
    _os_log_impl(&dword_243AF9000, v25, v26, "callForMailContent sharingURL: %s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v29);
    MEMORY[0x245D489D0](v29, -1, -1);
    MEMORY[0x245D489D0](v28, -1, -1);
  }

  else
  {

    v107 = *(v21 + 8);
    v107(v23, v20);
  }

  v41 = v117;
  v42 = sub_243B18D1C();
  v43 = sub_243B18EBC();

  v44 = os_log_type_enabled(v42, v43);
  v45 = v118;
  if (v44)
  {
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    *v46 = 138412290;
    *(v46 + 4) = v41;
    *v47 = v41;
    v48 = v41;
    _os_log_impl(&dword_243AF9000, v42, v43, "callForMailContent share: %@", v46, 0xCu);
    sub_243B0A49C(v47, &qword_27EDA1760, &qword_243B19A70);
    MEMORY[0x245D489D0](v47, -1, -1);
    MEMORY[0x245D489D0](v46, -1, -1);
  }

  sub_243B16F2C(v125, v45, &qword_27EDA1750, &qword_243B19A68);
  v49 = sub_243B18D1C();
  v50 = sub_243B18EBC();
  v51 = os_log_type_enabled(v49, v50);
  v117 = v41;
  if (v51)
  {
    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    aBlock[0] = v53;
    *v52 = 136315138;
    sub_243B16F2C(v45, v112, &qword_27EDA1750, &qword_243B19A68);
    v54 = sub_243B18D9C();
    v55 = v45;
    v56 = v54;
    v58 = v57;
    sub_243B0A49C(v55, &qword_27EDA1750, &qword_243B19A68);
    v59 = sub_243B09C80(v56, v58, aBlock);
    v58, v60, v61, v62, v63, v64, v65, v66;
    *(v52 + 4) = v59;
    _os_log_impl(&dword_243AF9000, v49, v50, "callForMailContent fileURL: %s", v52, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v53);
    MEMORY[0x245D489D0](v53, -1, -1);
    MEMORY[0x245D489D0](v52, -1, -1);
  }

  else
  {

    sub_243B0A49C(v45, &qword_27EDA1750, &qword_243B19A68);
  }

  v68 = v121;
  v67 = v122;
  v69 = v120;

  v70 = sub_243B18D1C();
  v71 = sub_243B18E8C();
  v69, v72, v73, v74, v75, v76, v77, v78;
  if (os_log_type_enabled(v70, v71))
  {
    v79 = swift_slowAlloc();
    v80 = swift_slowAlloc();
    aBlock[0] = v80;
    *v79 = 136315138;
    *(v79 + 4) = sub_243B09C80(v124, v69, aBlock);
    _os_log_impl(&dword_243AF9000, v70, v71, "callForMailContent appName: %s", v79, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v80);
    MEMORY[0x245D489D0](v80, -1, -1);
    MEMORY[0x245D489D0](v79, -1, -1);
  }

  sub_243B0A54C(v68, v67);
  v81 = sub_243B18D1C();
  v82 = sub_243B18E9C();
  sub_243B0A5A0(v68, v67);
  if (os_log_type_enabled(v81, v82))
  {
    v83 = swift_slowAlloc();
    v84 = swift_slowAlloc();
    aBlock[0] = v84;
    *v83 = 136315138;
    v85 = sub_243B18CEC();
    v87 = v86;
    v88 = sub_243B09C80(v85, v86, aBlock);
    v87, v89, v90, v91, v92, v93, v94, v95;
    *(v83 + 4) = v88;
    _os_log_impl(&dword_243AF9000, v81, v82, "callForMailContent appIconData: %s", v83, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v84);
    MEMORY[0x245D489D0](v84, -1, -1);
    MEMORY[0x245D489D0](v83, -1, -1);
  }

  v96 = v119;
  if (qword_281509060 != -1)
  {
    swift_once();
  }

  v97 = qword_2815090B8;
  if (qword_2815090B8)
  {
    swift_unknownObjectRetain();
    v98 = sub_243B18CAC();
    v99 = v115;
    sub_243B16F2C(v125, v115, &qword_27EDA1750, &qword_243B19A68);
    if ((*(v114 + 48))(v99, 1, v96) == 1)
    {
      v100 = 0;
    }

    else
    {
      v100 = sub_243B18CAC();
      v107(v99, v96);
    }

    v104 = sub_243B18D5C();
    v103 = sub_243B18CFC();
    v105 = swift_allocObject();
    *(v105 + 16) = v123;
    *(v105 + 24) = a9;
    aBlock[4] = sub_243B0A5F4;
    aBlock[5] = v105;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_243B02A60;
    aBlock[3] = &block_descriptor_60;
    v106 = _Block_copy(aBlock);

    [v97 mailContentFromSharingURL:v98 share:v117 fileURL:v100 appName:v104 appIconData:v103 withReply:v106];
    _Block_release(v106);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_243B18C0C();
    sub_243B0A228(MEMORY[0x277D84F90]);
    sub_243B0A398(&qword_27EDA1738, MEMORY[0x277CC8620], MEMORY[0x277CC8618]);
    v101 = v108;
    v102 = v111;
    sub_243B18C5C();
    v103 = sub_243B18BFC();
    (*(v110 + 8))(v101, v102);
    v123(0, 0, 0, 0, v103);
  }
}

void sub_243B02A60(uint64_t a1, uint64_t a2, _TtC12CloudSharing15InitiateSharing *a3, void *a4)
{
  v5 = a3;
  v6 = *(a1 + 32);
  if (a2)
  {
    v7 = sub_243B18D8C();
    v9 = v8;
    if (v5)
    {
LABEL_3:
      v10 = sub_243B18D8C();
      v5 = v11;
      goto LABEL_6;
    }
  }

  else
  {
    v7 = 0;
    v9 = 0;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v10 = 0;
LABEL_6:

  v12 = a4;
  v6(v7, v9, v10, v5, a4);

  v5, v13, v14, v15, v16, v17, v18, v19;

  v9, v20, v21, v22, v23, v24, v25, v26;
}

void sub_243B02D78(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v8 = a4;
  if (a2)
  {
    v9 = sub_243B18D5C();
    if (!v8)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v9 = 0;
  if (a4)
  {
LABEL_3:
    v8 = sub_243B18D5C();
  }

LABEL_4:
  if (a5)
  {
    v10 = sub_243B18C6C();
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;
  (*(a6 + 16))(a6, v9, v8);
}

void sub_243B02E38(uint64_t a1, void *a2, void (*a3)(void, void), uint64_t a4)
{
  v8 = sub_243B18C1C();
  MEMORY[0x28223BE20](v8 - 8);
  v56 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_243B18C2C();
  v57 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v55 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_243B18CDC();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281509090 != -1)
  {
    swift_once();
  }

  v16 = sub_243B18D3C();
  v17 = __swift_project_value_buffer(v16, qword_281509098);
  v18 = *(v13 + 16);
  v59 = a1;
  v18(v15, a1, v12);
  v58 = v17;
  v19 = sub_243B18D1C();
  v20 = sub_243B18EBC();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v54 = a4;
    v22 = v21;
    v52 = swift_slowAlloc();
    aBlock[0] = v52;
    *v22 = 136315138;
    sub_243B0A398(&qword_27EDA1748, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v23 = sub_243B18F4C();
    v53 = a2;
    v24 = v10;
    v25 = a3;
    v27 = v26;
    (*(v13 + 8))(v15, v12);
    v28 = sub_243B09C80(v23, v27, aBlock);
    v29 = v27;
    a3 = v25;
    v10 = v24;
    a2 = v53;
    v29, v30, v31, v32, v33, v34, v35, v36;
    *(v22 + 4) = v28;
    _os_log_impl(&dword_243AF9000, v19, v20, "callForMetadataFromShareURL sharingURL: %s", v22, 0xCu);
    v37 = v52;
    __swift_destroy_boxed_opaque_existential_0(v52);
    MEMORY[0x245D489D0](v37, -1, -1);
    v38 = v22;
    a4 = v54;
    MEMORY[0x245D489D0](v38, -1, -1);
  }

  else
  {

    (*(v13 + 8))(v15, v12);
  }

  v39 = a2;
  v40 = sub_243B18D1C();
  v41 = sub_243B18EBC();

  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v44 = a2;
    v45 = v43;
    *v42 = 138412290;
    *(v42 + 4) = v39;
    *v43 = v44;
    v46 = v39;
    _os_log_impl(&dword_243AF9000, v40, v41, "callForMetadataFromShareURL containerSetupInfo: %@", v42, 0xCu);
    sub_243B0A49C(v45, &qword_27EDA1760, &qword_243B19A70);
    MEMORY[0x245D489D0](v45, -1, -1);
    MEMORY[0x245D489D0](v42, -1, -1);
  }

  if (qword_281509060 != -1)
  {
    swift_once();
  }

  v47 = qword_2815090B8;
  if (qword_2815090B8)
  {
    swift_unknownObjectRetain();
    v48 = sub_243B18CAC();
    v49 = swift_allocObject();
    *(v49 + 16) = a3;
    *(v49 + 24) = a4;
    aBlock[4] = sub_243B0A61C;
    aBlock[5] = v49;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_243B0342C;
    aBlock[3] = &block_descriptor_66;
    v50 = _Block_copy(aBlock);

    [v47 getMetadataFromShareFromSharingURL:v48 containerSetupInfo:v39 withReply:v50];
    _Block_release(v50);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_243B18C0C();
    sub_243B0A228(MEMORY[0x277D84F90]);
    sub_243B0A398(&qword_27EDA1738, MEMORY[0x277CC8620], MEMORY[0x277CC8618]);
    v51 = v55;
    sub_243B18C5C();
    v48 = sub_243B18BFC();
    (*(v57 + 8))(v51, v10);
    a3(0, v48);
  }
}

void sub_243B0342C(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_243B034D0(void *a1, uint64_t a2, uint64_t a3, void *a4, const void *a5, void (*a6)(char *, void *, void *))
{
  v10 = sub_243B18CDC();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = _Block_copy(a5);
  sub_243B18CCC();
  _Block_copy(v14);
  v15 = a4;
  v16 = a1;
  a6(v13, a4, v14);
  _Block_release(v14);
  _Block_release(v14);

  return (*(v11 + 8))(v13, v10);
}

void sub_243B03608(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_243B18C6C();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

uint64_t sub_243B03678(void *a1, void *a2, void (*a3)(char *, void, void *), uint64_t a4)
{
  v36 = a3;
  v37 = a4;
  v6 = sub_243B18C1C();
  MEMORY[0x28223BE20](v6 - 8);
  v34 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_243B18C2C();
  v35 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA1750, &qword_243B19A68);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v34 - v12;
  if (qword_281509090 != -1)
  {
    swift_once();
  }

  v14 = sub_243B18D3C();
  __swift_project_value_buffer(v14, qword_281509098);
  v15 = a1;
  v16 = sub_243B18D1C();
  v17 = sub_243B18EBC();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v18 = 138412290;
    *(v18 + 4) = v15;
    *v19 = v15;
    v20 = v15;
    _os_log_impl(&dword_243AF9000, v16, v17, "callForUpdateShare share: %@", v18, 0xCu);
    sub_243B0A49C(v19, &qword_27EDA1760, &qword_243B19A70);
    MEMORY[0x245D489D0](v19, -1, -1);
    MEMORY[0x245D489D0](v18, -1, -1);
  }

  v21 = a2;
  v22 = sub_243B18D1C();
  v23 = sub_243B18EBC();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *v24 = 138412290;
    *(v24 + 4) = v21;
    *v25 = a2;
    v26 = v21;
    _os_log_impl(&dword_243AF9000, v22, v23, "callForUpdateShare containerSetupInfo: %@", v24, 0xCu);
    sub_243B0A49C(v25, &qword_27EDA1760, &qword_243B19A70);
    MEMORY[0x245D489D0](v25, -1, -1);
    MEMORY[0x245D489D0](v24, -1, -1);
  }

  if (qword_281509060 != -1)
  {
    swift_once();
  }

  v27 = qword_2815090B8;
  if (qword_2815090B8)
  {
    v28 = swift_allocObject();
    v29 = v37;
    *(v28 + 16) = v36;
    *(v28 + 24) = v29;
    aBlock[4] = sub_243B17134;
    aBlock[5] = v28;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_243AFE0C0;
    aBlock[3] = &block_descriptor_72;
    v30 = _Block_copy(aBlock);
    swift_unknownObjectRetain();

    [v27 updateShare:v15 containerSetupInfo:v21 withReply:v30];
    _Block_release(v30);
    return swift_unknownObjectRelease();
  }

  else
  {
    v32 = sub_243B18CDC();
    (*(*(v32 - 8) + 56))(v13, 1, 1, v32);
    sub_243B18C0C();
    sub_243B0A228(MEMORY[0x277D84F90]);
    sub_243B0A398(&qword_27EDA1738, MEMORY[0x277CC8620], MEMORY[0x277CC8618]);
    sub_243B18C5C();
    v33 = sub_243B18BFC();
    (*(v35 + 8))(v10, v8);
    v36(v13, 0, v33);

    return sub_243B0A49C(v13, &qword_27EDA1750, &qword_243B19A68);
  }
}

void sub_243B03BCC(void *a1, int a2, void *a3, void *a4, void *aBlock, void (*a6)(id, void *, void *))
{
  v10 = _Block_copy(aBlock);
  _Block_copy(v10);
  v11 = a3;
  v12 = a4;
  v13 = a1;
  a6(v11, a4, v10);
  _Block_release(v10);
  _Block_release(v10);
}

void sub_243B03C78(void *a1, void (*a2)(void, void), uint64_t a3)
{
  v6 = sub_243B18C1C();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = sub_243B18C2C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281509090 != -1)
  {
    swift_once();
  }

  v11 = sub_243B18D3C();
  __swift_project_value_buffer(v11, qword_281509098);
  v12 = a1;
  v13 = sub_243B18D1C();
  v14 = sub_243B18EBC();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v28 = v7;
    v16 = v8;
    v17 = a3;
    v18 = a2;
    v19 = v15;
    v20 = swift_slowAlloc();
    *v19 = 138412290;
    *(v19 + 4) = v12;
    *v20 = v12;
    v21 = v12;
    _os_log_impl(&dword_243AF9000, v13, v14, "callForCurrentUserSharingStatus share: %@", v19, 0xCu);
    sub_243B0A49C(v20, &qword_27EDA1760, &qword_243B19A70);
    MEMORY[0x245D489D0](v20, -1, -1);
    v22 = v19;
    a2 = v18;
    a3 = v17;
    v8 = v16;
    v7 = v28;
    MEMORY[0x245D489D0](v22, -1, -1);
  }

  if (qword_281509060 != -1)
  {
    swift_once();
  }

  v23 = qword_2815090B8;
  if (qword_2815090B8)
  {
    v24 = swift_allocObject();
    *(v24 + 16) = a2;
    *(v24 + 24) = a3;
    aBlock[4] = sub_243B0A644;
    aBlock[5] = v24;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_243B04060;
    aBlock[3] = &block_descriptor_78;
    v25 = _Block_copy(aBlock);
    swift_unknownObjectRetain();

    [v23 currentUserSharingStatusFor:v12 withReply:v25];
    _Block_release(v25);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_243B18C0C();
    sub_243B0A228(MEMORY[0x277D84F90]);
    sub_243B0A398(&qword_27EDA1738, MEMORY[0x277CC8620], MEMORY[0x277CC8618]);
    sub_243B18C5C();
    v26 = sub_243B18BFC();
    (*(v8 + 8))(v10, v7);
    a2(0, v26);
  }
}

void sub_243B04068(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

void sub_243B04170(void *a1, void *a2, _TtC12CloudSharing15InitiateSharing *a3, _TtC12CloudSharing15InitiateSharing *a4, void (*a5)(void, void, void), uint64_t a6)
{
  v93 = a4;
  v95 = a3;
  v10 = sub_243B18C1C();
  MEMORY[0x28223BE20](v10 - 8);
  v90 = &v88 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_243B18C2C();
  v91 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v89 = &v88 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA1750, &qword_243B19A68);
  MEMORY[0x28223BE20](v14 - 8);
  v88 = &v88 - v15;
  if (qword_281509090 != -1)
  {
    swift_once();
  }

  v16 = sub_243B18D3C();
  __swift_project_value_buffer(v16, qword_281509098);
  v17 = a1;
  v18 = sub_243B18D1C();
  v19 = sub_243B18EBC();
  v94 = v17;

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *v20 = 138412290;
    v22 = v94;
    *(v20 + 4) = v94;
    *v21 = v22;
    v23 = v22;
    _os_log_impl(&dword_243AF9000, v18, v19, "callForAddParticipantsToShare share: %@", v20, 0xCu);
    sub_243B0A49C(v21, &qword_27EDA1760, &qword_243B19A70);
    MEMORY[0x245D489D0](v21, -1, -1);
    MEMORY[0x245D489D0](v20, -1, -1);
  }

  v24 = a2;
  v25 = sub_243B18D1C();
  v26 = sub_243B18EBC();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *v27 = 138412290;
    *(v27 + 4) = v24;
    *v28 = v24;
    v29 = v24;
    _os_log_impl(&dword_243AF9000, v25, v26, "callForAddParticipantsToShare containerSetupInfo: %@", v27, 0xCu);
    sub_243B0A49C(v28, &qword_27EDA1760, &qword_243B19A70);
    MEMORY[0x245D489D0](v28, -1, -1);
    MEMORY[0x245D489D0](v27, -1, -1);
  }

  v92 = v24;

  v30 = v95;

  v31 = sub_243B18D1C();
  v32 = sub_243B18E8C();
  v30, v33, v34, v35, v36, v37, v38, v39;
  if (os_log_type_enabled(v31, v32))
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    aBlock[0] = v41;
    *v40 = 136315138;
    v42 = MEMORY[0x245D48400](v30, MEMORY[0x277D837D0]);
    v44 = v43;
    v45 = v12;
    v46 = a5;
    v47 = a6;
    v48 = sub_243B09C80(v42, v43, aBlock);
    v44, v49, v50, v51, v52, v53, v54, v55;
    *(v40 + 4) = v48;
    a6 = v47;
    a5 = v46;
    v12 = v45;
    _os_log_impl(&dword_243AF9000, v31, v32, "callForAddParticipantsToShare emailAddresses: %s", v40, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v41);
    MEMORY[0x245D489D0](v41, -1, -1);
    MEMORY[0x245D489D0](v40, -1, -1);
  }

  v56 = v93;

  v57 = sub_243B18D1C();
  v58 = sub_243B18E8C();
  v56, v59, v60, v61, v62, v63, v64, v65;
  if (os_log_type_enabled(v57, v58))
  {
    v66 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    aBlock[0] = v67;
    *v66 = 136315138;
    v68 = MEMORY[0x245D48400](v56, MEMORY[0x277D837D0]);
    v70 = v69;
    v71 = sub_243B09C80(v68, v69, aBlock);
    v70, v72, v73, v74, v75, v76, v77, v78;
    *(v66 + 4) = v71;
    _os_log_impl(&dword_243AF9000, v57, v58, "callForAddParticipantsToShare phoneNumbers: %s", v66, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v67);
    MEMORY[0x245D489D0](v67, -1, -1);
    MEMORY[0x245D489D0](v66, -1, -1);
  }

  if (qword_281509060 != -1)
  {
    swift_once();
  }

  v79 = qword_2815090B8;
  if (qword_2815090B8)
  {
    swift_unknownObjectRetain();
    v80 = sub_243B18E2C();
    v81 = sub_243B18E2C();
    v82 = swift_allocObject();
    *(v82 + 16) = a5;
    *(v82 + 24) = a6;
    aBlock[4] = sub_243B17134;
    aBlock[5] = v82;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_243AFE0C0;
    aBlock[3] = &block_descriptor_84;
    v83 = _Block_copy(aBlock);

    [v79 addParticipantsToShare:v94 containerSetupInfo:v92 emailAddresses:v80 phoneNumbers:v81 withReply:v83];
    _Block_release(v83);
    swift_unknownObjectRelease();
  }

  else
  {
    v84 = sub_243B18CDC();
    v85 = v88;
    (*(*(v84 - 8) + 56))(v88, 1, 1, v84);
    sub_243B18C0C();
    sub_243B0A228(MEMORY[0x277D84F90]);
    sub_243B0A398(&qword_27EDA1738, MEMORY[0x277CC8620], MEMORY[0x277CC8618]);
    v86 = v89;
    sub_243B18C5C();
    v87 = sub_243B18BFC();
    (*(v91 + 8))(v86, v12);
    a5(v85, 0, v87);

    sub_243B0A49C(v85, &qword_27EDA1750, &qword_243B19A68);
  }
}

void sub_243B049C8(void *a1, uint64_t a2, _TtC12CloudSharing15InitiateSharing *a3, _TtC12CloudSharing15InitiateSharing *a4, uint64_t a5, int a6, void (*a7)(char *, void, void *), uint64_t a8)
{
  v107 = a7;
  v108 = a8;
  v109 = a5;
  v110 = a4;
  v105 = a2;
  v11 = sub_243B18C1C();
  MEMORY[0x28223BE20](v11 - 8);
  v102 = &v100 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_243B18C2C();
  v103 = *(v13 - 8);
  v104 = v13;
  MEMORY[0x28223BE20](v13);
  v101 = &v100 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA1750, &qword_243B19A68);
  MEMORY[0x28223BE20](v15 - 8);
  v100 = &v100 - v16;
  if (qword_281509090 != -1)
  {
    swift_once();
  }

  v17 = sub_243B18D3C();
  __swift_project_value_buffer(v17, qword_281509098);
  v18 = a1;
  v19 = sub_243B18D1C();
  v20 = sub_243B18EBC();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *v21 = 138412290;
    *(v21 + 4) = v18;
    *v22 = v18;
    v23 = v18;
    _os_log_impl(&dword_243AF9000, v19, v20, "callForAddParticipantsToShare urlWrapper: %@", v21, 0xCu);
    sub_243B0A49C(v22, &qword_27EDA1760, &qword_243B19A70);
    MEMORY[0x245D489D0](v22, -1, -1);
    MEMORY[0x245D489D0](v21, -1, -1);
  }

  v24 = sub_243B18D1C();
  v25 = sub_243B18E8C();
  a3, v26, v27, v28, v29, v30, v31, v32;
  v33 = os_log_type_enabled(v24, v25);
  v106 = a6;
  if (v33)
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    aBlock[0] = v35;
    *v34 = 136315138;
    v36 = MEMORY[0x245D48400](a3, MEMORY[0x277D837D0]);
    v38 = v37;
    v39 = sub_243B09C80(v36, v37, aBlock);
    v38, v40, v41, v42, v43, v44, v45, v46;
    *(v34 + 4) = v39;
    _os_log_impl(&dword_243AF9000, v24, v25, "callForAddParticipantsToShare emailAddresses: %s", v34, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v35);
    MEMORY[0x245D489D0](v35, -1, -1);
    MEMORY[0x245D489D0](v34, -1, -1);
  }

  v47 = v110;

  v48 = sub_243B18D1C();
  v49 = sub_243B18E8C();
  v47, v50, v51, v52, v53, v54, v55, v56;
  if (os_log_type_enabled(v48, v49))
  {
    v57 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    aBlock[0] = v58;
    *v57 = 136315138;
    v59 = MEMORY[0x245D48400](v47, MEMORY[0x277D837D0]);
    v61 = v60;
    v62 = sub_243B09C80(v59, v60, aBlock);
    v61, v63, v64, v65, v66, v67, v68, v69;
    *(v57 + 4) = v62;
    _os_log_impl(&dword_243AF9000, v48, v49, "callForAddParticipantsToShare phoneNumbers: %s", v57, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v58);
    MEMORY[0x245D489D0](v58, -1, -1);
    MEMORY[0x245D489D0](v57, -1, -1);
  }

  v70 = sub_243B18D1C();
  v71 = sub_243B18E8C();
  if (os_log_type_enabled(v70, v71))
  {
    v72 = swift_slowAlloc();
    v73 = swift_slowAlloc();
    *v72 = 136315138;
    v111 = v109;
    aBlock[0] = v73;
    type metadata accessor for ParticipantPermission(0);
    v74 = sub_243B18D9C();
    v76 = v75;
    v77 = sub_243B09C80(v74, v75, aBlock);
    v76, v78, v79, v80, v81, v82, v83, v84;
    *(v72 + 4) = v77;
    _os_log_impl(&dword_243AF9000, v70, v71, "callForAddParticipantsToShare permissionType: %s", v72, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v73);
    MEMORY[0x245D489D0](v73, -1, -1);
    MEMORY[0x245D489D0](v72, -1, -1);
  }

  v85 = v106;
  v86 = sub_243B18D1C();
  v87 = sub_243B18E8C();
  if (os_log_type_enabled(v86, v87))
  {
    v88 = swift_slowAlloc();
    *v88 = 67109120;
    *(v88 + 4) = v85 & 1;
    _os_log_impl(&dword_243AF9000, v86, v87, "callForAddParticipantsToShare allowOthersToInvite: %{BOOL}d", v88, 8u);
    MEMORY[0x245D489D0](v88, -1, -1);
  }

  if (qword_281509060 != -1)
  {
    swift_once();
  }

  v89 = qword_2815090B8;
  if (qword_2815090B8)
  {
    swift_unknownObjectRetain();
    v90 = sub_243B18E2C();
    v91 = sub_243B18E2C();
    v92 = swift_allocObject();
    v93 = v108;
    *(v92 + 16) = v107;
    *(v92 + 24) = v93;
    aBlock[4] = sub_243B17134;
    aBlock[5] = v92;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_243AFE0C0;
    aBlock[3] = &block_descriptor_90;
    v94 = _Block_copy(aBlock);

    [v89 addParticipantsToShareWithURLWrapper:v18 share:v105 emailAddresses:v90 phoneNumbers:v91 permissionType:v109 allowOthersToInvite:v85 & 1 withReply:v94];
    _Block_release(v94);
    swift_unknownObjectRelease();
  }

  else
  {
    v95 = sub_243B18CDC();
    v96 = v100;
    (*(*(v95 - 8) + 56))(v100, 1, 1, v95);
    sub_243B18C0C();
    sub_243B0A228(MEMORY[0x277D84F90]);
    sub_243B0A398(&qword_27EDA1738, MEMORY[0x277CC8620], MEMORY[0x277CC8618]);
    v97 = v101;
    v98 = v104;
    sub_243B18C5C();
    v99 = sub_243B18BFC();
    (*(v103 + 8))(v97, v98);
    v107(v96, 0, v99);

    sub_243B0A49C(v96, &qword_27EDA1750, &qword_243B19A68);
  }
}

void sub_243B051F4(void *a1, uint64_t a2, _TtC12CloudSharing15InitiateSharing *a3, _TtC12CloudSharing15InitiateSharing *a4, _TtC12CloudSharing15InitiateSharing *a5, void (*a6)(char *, void, void *), uint64_t a7)
{
  v115 = a6;
  v116 = a7;
  v112 = a2;
  v11 = sub_243B18C1C();
  MEMORY[0x28223BE20](v11 - 8);
  v109 = &v106 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_243B18C2C();
  v110 = *(v13 - 8);
  v111 = v13;
  MEMORY[0x28223BE20](v13);
  v108 = &v106 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA1750, &qword_243B19A68);
  MEMORY[0x28223BE20](v15 - 8);
  v107 = &v106 - v16;
  if (qword_281509090 != -1)
  {
    swift_once();
  }

  v17 = sub_243B18D3C();
  __swift_project_value_buffer(v17, qword_281509098);
  v18 = a1;
  v19 = sub_243B18D1C();
  v20 = sub_243B18EBC();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *v21 = 138412290;
    *(v21 + 4) = v18;
    *v22 = v18;
    v23 = v18;
    _os_log_impl(&dword_243AF9000, v19, v20, "callForAddParticipantsToShare urlWrapper: %@", v21, 0xCu);
    sub_243B0A49C(v22, &qword_27EDA1760, &qword_243B19A70);
    MEMORY[0x245D489D0](v22, -1, -1);
    MEMORY[0x245D489D0](v21, -1, -1);
  }

  v113 = v18;

  v24 = sub_243B18D1C();
  v25 = sub_243B18E8C();
  a3, v26, v27, v28, v29, v30, v31, v32;
  v33 = os_log_type_enabled(v24, v25);
  v117 = a4;
  v114 = a3;
  if (v33)
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    aBlock[0] = v35;
    *v34 = 136315138;
    v36 = MEMORY[0x245D48400](a3, MEMORY[0x277D837D0]);
    v38 = v37;
    v39 = sub_243B09C80(v36, v37, aBlock);
    v40 = v38;
    a4 = v117;
    v40, v41, v42, v43, v44, v45, v46, v47;
    *(v34 + 4) = v39;
    _os_log_impl(&dword_243AF9000, v24, v25, "callForAddParticipantsToShare emailAddresses: %s", v34, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v35);
    MEMORY[0x245D489D0](v35, -1, -1);
    MEMORY[0x245D489D0](v34, -1, -1);
  }

  v48 = sub_243B18D1C();
  v49 = sub_243B18E8C();
  a4, v50, v51, v52, v53, v54, v55, v56;
  if (os_log_type_enabled(v48, v49))
  {
    v57 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    aBlock[0] = v58;
    *v57 = 136315138;
    v59 = MEMORY[0x245D48400](a4, MEMORY[0x277D837D0]);
    v61 = v60;
    v62 = sub_243B09C80(v59, v60, aBlock);
    v61, v63, v64, v65, v66, v67, v68, v69;
    *(v57 + 4) = v62;
    _os_log_impl(&dword_243AF9000, v48, v49, "callForAddParticipantsToShare phoneNumbers: %s", v57, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v58);
    MEMORY[0x245D489D0](v58, -1, -1);
    MEMORY[0x245D489D0](v57, -1, -1);
  }

  v70 = sub_243B18D1C();
  v71 = sub_243B18E8C();
  a5, v72, v73, v74, v75, v76, v77, v78;
  if (os_log_type_enabled(v70, v71))
  {
    v79 = swift_slowAlloc();
    v80 = swift_slowAlloc();
    aBlock[0] = v80;
    *v79 = 136315138;
    v81 = sub_243B16EE4(0, &qword_27EDA1758, 0x277CDC6D0);
    v82 = MEMORY[0x245D48400](a5, v81);
    v84 = v83;
    v85 = sub_243B09C80(v82, v83, aBlock);
    v84, v86, v87, v88, v89, v90, v91, v92;
    *(v79 + 4) = v85;
    _os_log_impl(&dword_243AF9000, v70, v71, "callForAddParticipantsToShare optionsGroups: %s", v79, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v80);
    MEMORY[0x245D489D0](v80, -1, -1);
    MEMORY[0x245D489D0](v79, -1, -1);
  }

  v93 = v113;
  if (qword_281509060 != -1)
  {
    swift_once();
  }

  v94 = qword_2815090B8;
  if (qword_2815090B8)
  {
    swift_unknownObjectRetain();
    v95 = sub_243B18E2C();
    v96 = sub_243B18E2C();
    sub_243B16EE4(0, &qword_27EDA1758, 0x277CDC6D0);
    v97 = sub_243B18E2C();
    v98 = swift_allocObject();
    v99 = v116;
    *(v98 + 16) = v115;
    *(v98 + 24) = v99;
    aBlock[4] = sub_243B17134;
    aBlock[5] = v98;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_243AFE0C0;
    aBlock[3] = &block_descriptor_96;
    v100 = _Block_copy(aBlock);

    [v94 addParticipantsToShareWithURLWrapper:v93 share:v112 emailAddresses:v95 phoneNumbers:v96 optionsGroups:v97 withReply:v100];
    _Block_release(v100);
    swift_unknownObjectRelease();
  }

  else
  {
    v101 = sub_243B18CDC();
    v102 = v107;
    (*(*(v101 - 8) + 56))(v107, 1, 1, v101);
    sub_243B18C0C();
    sub_243B0A228(MEMORY[0x277D84F90]);
    sub_243B0A398(&qword_27EDA1738, MEMORY[0x277CC8620], MEMORY[0x277CC8618]);
    v103 = v108;
    v104 = v111;
    sub_243B18C5C();
    v105 = sub_243B18BFC();
    (*(v110 + 8))(v103, v104);
    v115(v102, 0, v105);

    sub_243B0A49C(v102, &qword_27EDA1750, &qword_243B19A68);
  }
}

void sub_243B059D8(void *a1, int a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, void *aBlock, void (*a9)(id, id, _TtC12CloudSharing15InitiateSharing *, _TtC12CloudSharing15InitiateSharing *, _TtC12CloudSharing15InitiateSharing *, void *))
{
  v12 = _Block_copy(aBlock);
  v13 = sub_243B18E3C();
  v14 = sub_243B18E3C();
  sub_243B16EE4(0, &qword_27EDA1758, 0x277CDC6D0);
  v15 = sub_243B18E3C();
  _Block_copy(v12);
  v16 = a3;
  v17 = a4;
  v18 = a1;
  a9(v16, v17, v13, v14, v15, v12);
  _Block_release(v12);
  _Block_release(v12);

  v13, v19, v20, v21, v22, v23, v24, v25;
  v14, v26, v27, v28, v29, v30, v31, v32;

  v15, v33, v34, v35, v36, v37, v38, v39;
}

void sub_243B05B0C(void *a1, void *a2, _TtC12CloudSharing15InitiateSharing *a3, _TtC12CloudSharing15InitiateSharing *a4, uint64_t a5, int a6, void (*a7)(char *, void, void *), uint64_t a8)
{
  v119 = a7;
  v120 = a8;
  v118 = a6;
  v121 = a5;
  v12 = sub_243B18C1C();
  MEMORY[0x28223BE20](v12 - 8);
  v112 = &v110 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_243B18C2C();
  v113 = *(v14 - 8);
  v114 = v14;
  MEMORY[0x28223BE20](v14);
  v111 = &v110 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA1750, &qword_243B19A68);
  MEMORY[0x28223BE20](v16 - 8);
  v110 = &v110 - v17;
  if (qword_281509090 != -1)
  {
    swift_once();
  }

  v18 = sub_243B18D3C();
  __swift_project_value_buffer(v18, qword_281509098);
  v19 = a1;
  v20 = sub_243B18D1C();
  v21 = sub_243B18EBC();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *v22 = 138412290;
    *(v22 + 4) = v19;
    *v23 = v19;
    v24 = v19;
    _os_log_impl(&dword_243AF9000, v20, v21, "callForAddParticipantsToShare share: %@", v22, 0xCu);
    sub_243B0A49C(v23, &qword_27EDA1760, &qword_243B19A70);
    MEMORY[0x245D489D0](v23, -1, -1);
    MEMORY[0x245D489D0](v22, -1, -1);
  }

  v25 = a2;
  v26 = sub_243B18D1C();
  v27 = sub_243B18EBC();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *v28 = 138412290;
    *(v28 + 4) = v25;
    *v29 = v25;
    v30 = v25;
    _os_log_impl(&dword_243AF9000, v26, v27, "callForAddParticipantsToShare containerSetupInfo: %@", v28, 0xCu);
    sub_243B0A49C(v29, &qword_27EDA1760, &qword_243B19A70);
    MEMORY[0x245D489D0](v29, -1, -1);
    MEMORY[0x245D489D0](v28, -1, -1);
  }

  v115 = v25;
  v117 = v19;

  v31 = sub_243B18D1C();
  v32 = sub_243B18E8C();
  a3, v33, v34, v35, v36, v37, v38, v39;
  v40 = os_log_type_enabled(v31, v32);
  v41 = a3;
  v42 = a4;
  v116 = v41;
  if (v40)
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    aBlock[0] = v44;
    *v43 = 136315138;
    v45 = MEMORY[0x245D48400](v41, MEMORY[0x277D837D0]);
    v47 = v46;
    v48 = sub_243B09C80(v45, v46, aBlock);
    v47, v49, v50, v51, v52, v53, v54, v55;
    *(v43 + 4) = v48;
    a4 = v42;
    _os_log_impl(&dword_243AF9000, v31, v32, "callForAddParticipantsToShare emailAddresses: %s", v43, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v44);
    MEMORY[0x245D489D0](v44, -1, -1);
    MEMORY[0x245D489D0](v43, -1, -1);
  }

  v56 = sub_243B18D1C();
  v57 = sub_243B18E8C();
  a4, v58, v59, v60, v61, v62, v63, v64;
  if (os_log_type_enabled(v56, v57))
  {
    v65 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    aBlock[0] = v66;
    *v65 = 136315138;
    v67 = MEMORY[0x245D48400](a4, MEMORY[0x277D837D0]);
    v69 = v68;
    v70 = sub_243B09C80(v67, v68, aBlock);
    v69, v71, v72, v73, v74, v75, v76, v77;
    *(v65 + 4) = v70;
    _os_log_impl(&dword_243AF9000, v56, v57, "callForAddParticipantsToShare phoneNumbers: %s", v65, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v66);
    MEMORY[0x245D489D0](v66, -1, -1);
    MEMORY[0x245D489D0](v65, -1, -1);
  }

  v78 = sub_243B18D1C();
  v79 = sub_243B18E8C();
  if (os_log_type_enabled(v78, v79))
  {
    v80 = swift_slowAlloc();
    v81 = swift_slowAlloc();
    *v80 = 136315138;
    v122 = v121;
    aBlock[0] = v81;
    type metadata accessor for ParticipantPermission(0);
    v82 = sub_243B18D9C();
    v84 = v83;
    v85 = sub_243B09C80(v82, v83, aBlock);
    v84, v86, v87, v88, v89, v90, v91, v92;
    *(v80 + 4) = v85;
    _os_log_impl(&dword_243AF9000, v78, v79, "callForAddParticipantsToShare permissionType: %s", v80, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v81);
    MEMORY[0x245D489D0](v81, -1, -1);
    MEMORY[0x245D489D0](v80, -1, -1);
  }

  v93 = v118;
  v94 = v115;
  v95 = sub_243B18D1C();
  v96 = sub_243B18E8C();
  if (os_log_type_enabled(v95, v96))
  {
    v97 = swift_slowAlloc();
    *v97 = 67109120;
    *(v97 + 4) = v93 & 1;
    _os_log_impl(&dword_243AF9000, v95, v96, "callForAddParticipantsToShare allowOthersToInvite: %{BOOL}d", v97, 8u);
    MEMORY[0x245D489D0](v97, -1, -1);
  }

  v98 = v117;
  if (qword_281509060 != -1)
  {
    swift_once();
  }

  v99 = qword_2815090B8;
  if (qword_2815090B8)
  {
    swift_unknownObjectRetain();
    v100 = sub_243B18E2C();
    v101 = sub_243B18E2C();
    v102 = swift_allocObject();
    v103 = v120;
    *(v102 + 16) = v119;
    *(v102 + 24) = v103;
    aBlock[4] = sub_243B17134;
    aBlock[5] = v102;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_243AFE0C0;
    aBlock[3] = &block_descriptor_102;
    v104 = _Block_copy(aBlock);

    [v99 addParticipantsToShare:v98 containerSetupInfo:v94 emailAddresses:v100 phoneNumbers:v101 permissionType:v121 allowOthersToInvite:v93 & 1 withReply:v104];
    _Block_release(v104);
    swift_unknownObjectRelease();
  }

  else
  {
    v105 = sub_243B18CDC();
    v106 = v110;
    (*(*(v105 - 8) + 56))(v110, 1, 1, v105);
    sub_243B18C0C();
    sub_243B0A228(MEMORY[0x277D84F90]);
    sub_243B0A398(&qword_27EDA1738, MEMORY[0x277CC8620], MEMORY[0x277CC8618]);
    v107 = v111;
    v108 = v114;
    sub_243B18C5C();
    v109 = sub_243B18BFC();
    (*(v113 + 8))(v107, v108);
    v119(v106, 0, v109);

    sub_243B0A49C(v106, &qword_27EDA1750, &qword_243B19A68);
  }
}

void sub_243B06418(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, void (*a10)(id, id, _TtC12CloudSharing15InitiateSharing *, _TtC12CloudSharing15InitiateSharing *, uint64_t, uint64_t, void *))
{
  v15 = _Block_copy(a9);
  v16 = sub_243B18E3C();
  v17 = sub_243B18E3C();
  _Block_copy(v15);
  v18 = a3;
  v19 = a4;
  v20 = a1;
  a10(v18, v19, v16, v17, a7, a8, v15);
  _Block_release(v15);
  _Block_release(v15);

  v16, v21, v22, v23, v24, v25, v26, v27;

  v17, v28, v29, v30, v31, v32, v33, v34;
}

void sub_243B06520(void *a1, void *a2, _TtC12CloudSharing15InitiateSharing *a3, _TtC12CloudSharing15InitiateSharing *a4, _TtC12CloudSharing15InitiateSharing *a5, void (*a6)(char *, void, void *), uint64_t a7)
{
  v121 = a6;
  v122 = a7;
  v123 = a4;
  v11 = sub_243B18C1C();
  MEMORY[0x28223BE20](v11 - 8);
  v116 = &v114 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_243B18C2C();
  v117 = *(v13 - 8);
  v118 = v13;
  MEMORY[0x28223BE20](v13);
  v115 = &v114 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA1750, &qword_243B19A68);
  MEMORY[0x28223BE20](v15 - 8);
  v114 = &v114 - v16;
  if (qword_281509090 != -1)
  {
    swift_once();
  }

  v17 = sub_243B18D3C();
  __swift_project_value_buffer(v17, qword_281509098);
  v18 = a1;
  v19 = sub_243B18D1C();
  v20 = sub_243B18EBC();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *v21 = 138412290;
    *(v21 + 4) = v18;
    *v22 = v18;
    v23 = v18;
    _os_log_impl(&dword_243AF9000, v19, v20, "callForAddParticipantsToShare share: %@", v21, 0xCu);
    sub_243B0A49C(v22, &qword_27EDA1760, &qword_243B19A70);
    MEMORY[0x245D489D0](v22, -1, -1);
    MEMORY[0x245D489D0](v21, -1, -1);
  }

  v24 = a2;
  v25 = sub_243B18D1C();
  v26 = sub_243B18EBC();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *v27 = 138412290;
    *(v27 + 4) = v24;
    *v28 = v24;
    v29 = v24;
    _os_log_impl(&dword_243AF9000, v25, v26, "callForAddParticipantsToShare containerSetupInfo: %@", v27, 0xCu);
    sub_243B0A49C(v28, &qword_27EDA1760, &qword_243B19A70);
    MEMORY[0x245D489D0](v28, -1, -1);
    MEMORY[0x245D489D0](v27, -1, -1);
  }

  v119 = v24;
  v120 = v18;

  v30 = sub_243B18D1C();
  v31 = sub_243B18E8C();
  a3, v32, v33, v34, v35, v36, v37, v38;
  v39 = a3;
  v40 = a5;
  if (os_log_type_enabled(v30, v31))
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    aBlock[0] = v42;
    *v41 = 136315138;
    v43 = MEMORY[0x245D48400](v39, MEMORY[0x277D837D0]);
    v45 = v44;
    v46 = sub_243B09C80(v43, v44, aBlock);
    v45, v47, v48, v49, v50, v51, v52, v53;
    *(v41 + 4) = v46;
    _os_log_impl(&dword_243AF9000, v30, v31, "callForAddParticipantsToShare emailAddresses: %s", v41, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v42);
    MEMORY[0x245D489D0](v42, -1, -1);
    MEMORY[0x245D489D0](v41, -1, -1);
  }

  v54 = v123;

  v55 = sub_243B18D1C();
  v56 = sub_243B18E8C();
  v54, v57, v58, v59, v60, v61, v62, v63;
  if (os_log_type_enabled(v55, v56))
  {
    v64 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    aBlock[0] = v65;
    *v64 = 136315138;
    v66 = MEMORY[0x245D48400](v54, MEMORY[0x277D837D0]);
    v68 = v67;
    v69 = sub_243B09C80(v66, v67, aBlock);
    v68, v70, v71, v72, v73, v74, v75, v76;
    *(v64 + 4) = v69;
    _os_log_impl(&dword_243AF9000, v55, v56, "callForAddParticipantsToShare phoneNumbers: %s", v64, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v65);
    MEMORY[0x245D489D0](v65, -1, -1);
    MEMORY[0x245D489D0](v64, -1, -1);
  }

  v77 = sub_243B18D1C();
  v78 = sub_243B18E8C();
  v40, v79, v80, v81, v82, v83, v84, v85;
  if (os_log_type_enabled(v77, v78))
  {
    v86 = swift_slowAlloc();
    v87 = swift_slowAlloc();
    aBlock[0] = v87;
    *v86 = 136315138;
    v88 = sub_243B16EE4(0, &qword_27EDA1758, 0x277CDC6D0);
    v89 = MEMORY[0x245D48400](v40, v88);
    v91 = v90;
    v92 = sub_243B09C80(v89, v90, aBlock);
    v91, v93, v94, v95, v96, v97, v98, v99;
    *(v86 + 4) = v92;
    _os_log_impl(&dword_243AF9000, v77, v78, "callForAddParticipantsToShare optionsGroups: %s", v86, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v87);
    MEMORY[0x245D489D0](v87, -1, -1);
    MEMORY[0x245D489D0](v86, -1, -1);
  }

  v100 = v119;
  v101 = v120;
  if (qword_281509060 != -1)
  {
    swift_once();
  }

  v102 = qword_2815090B8;
  if (qword_2815090B8)
  {
    swift_unknownObjectRetain();
    v103 = sub_243B18E2C();
    v104 = sub_243B18E2C();
    sub_243B16EE4(0, &qword_27EDA1758, 0x277CDC6D0);
    v105 = sub_243B18E2C();
    v106 = swift_allocObject();
    v107 = v122;
    *(v106 + 16) = v121;
    *(v106 + 24) = v107;
    aBlock[4] = sub_243B17134;
    aBlock[5] = v106;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_243AFE0C0;
    aBlock[3] = &block_descriptor_108;
    v108 = _Block_copy(aBlock);

    [v102 addParticipantsToShare:v101 containerSetupInfo:v100 emailAddresses:v103 phoneNumbers:v104 optionsGroups:v105 withReply:v108];
    _Block_release(v108);
    swift_unknownObjectRelease();
  }

  else
  {
    v109 = sub_243B18CDC();
    v110 = v114;
    (*(*(v109 - 8) + 56))(v114, 1, 1, v109);
    sub_243B18C0C();
    sub_243B0A228(MEMORY[0x277D84F90]);
    sub_243B0A398(&qword_27EDA1738, MEMORY[0x277CC8620], MEMORY[0x277CC8618]);
    v111 = v115;
    v112 = v118;
    sub_243B18C5C();
    v113 = sub_243B18BFC();
    (*(v117 + 8))(v111, v112);
    v121(v110, 0, v113);

    sub_243B0A49C(v110, &qword_27EDA1750, &qword_243B19A68);
  }
}

void sub_243B06DE4(uint64_t a1, void (*a2)(char *, void, void *), uint64_t a3)
{
  v58 = a3;
  v60 = a2;
  v4 = sub_243B18C1C();
  MEMORY[0x28223BE20](v4 - 8);
  v53 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_243B18C2C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v52 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA1750, &qword_243B19A68);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v50 - v10;
  v12 = sub_243B18CDC();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v54 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v57 = &v50 - v17;
  MEMORY[0x28223BE20](v16);
  v19 = &v50 - v18;
  if (qword_281509090 != -1)
  {
    swift_once();
  }

  v20 = sub_243B18D3C();
  __swift_project_value_buffer(v20, qword_281509098);
  v21 = *(v13 + 16);
  v59 = a1;
  v55 = v21;
  v56 = v13 + 16;
  v21(v19, a1, v12);
  v22 = sub_243B18D1C();
  v23 = sub_243B18EBC();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v51 = v11;
    v25 = v24;
    v50 = swift_slowAlloc();
    aBlock[0] = v50;
    *v25 = 136315138;
    sub_243B0A398(&qword_27EDA1748, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v26 = sub_243B18F4C();
    v27 = v6;
    v29 = v28;
    (*(v13 + 8))(v19, v12);
    v30 = sub_243B09C80(v26, v29, aBlock);
    v31 = v29;
    v6 = v27;
    v31, v32, v33, v34, v35, v36, v37, v38;
    *(v25 + 4) = v30;
    _os_log_impl(&dword_243AF9000, v22, v23, "callForExistingShareForFile url: %s", v25, 0xCu);
    v39 = v50;
    __swift_destroy_boxed_opaque_existential_0(v50);
    MEMORY[0x245D489D0](v39, -1, -1);
    v40 = v25;
    v11 = v51;
    MEMORY[0x245D489D0](v40, -1, -1);
  }

  else
  {

    (*(v13 + 8))(v19, v12);
  }

  v41 = v59;
  if (qword_281509060 != -1)
  {
    swift_once();
  }

  v42 = qword_2815090B8;
  if (qword_2815090B8)
  {
    sub_243B16EE4(0, &qword_27EDA1740, 0x277CC6438);
    v43 = v57;
    v55(v57, v41, v12);
    swift_unknownObjectRetain();
    v46 = sub_243B099B8(v43, 0);
    logWrapperMessage(for:isReadOnly:error:)(v41, 0, 0);
    v47 = swift_allocObject();
    v48 = v58;
    *(v47 + 16) = v60;
    *(v47 + 24) = v48;
    aBlock[4] = sub_243B17134;
    aBlock[5] = v47;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_243AFE0C0;
    aBlock[3] = &block_descriptor_114;
    v49 = _Block_copy(aBlock);

    [v42 existingShareForFileWithURLWrapper:v46 withReply:v49];

    _Block_release(v49);
    swift_unknownObjectRelease();
  }

  else
  {
    (*(v13 + 56))(v11, 1, 1, v12);
    sub_243B18C0C();
    sub_243B0A228(MEMORY[0x277D84F90]);
    sub_243B0A398(&qword_27EDA1738, MEMORY[0x277CC8620], MEMORY[0x277CC8618]);
    v44 = v52;
    sub_243B18C5C();
    v45 = sub_243B18BFC();
    (*(v7 + 8))(v44, v6);
    v60(v11, 0, v45);

    sub_243B0A49C(v11, &qword_27EDA1750, &qword_243B19A68);
  }
}

uint64_t sub_243B07570(void *a1, uint64_t a2, uint64_t a3, const void *a4, void (*a5)(char *, void *))
{
  v8 = sub_243B18CDC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = _Block_copy(a4);
  sub_243B18CCC();
  _Block_copy(v12);
  v13 = a1;
  a5(v11, v12);
  _Block_release(v12);
  _Block_release(v12);

  return (*(v9 + 8))(v11, v8);
}

void sub_243B07694(uint64_t a1, void *a2, void (*a3)(void, void, void *), uint64_t a4)
{
  v74 = a3;
  v7 = sub_243B18C1C();
  MEMORY[0x28223BE20](v7 - 8);
  v68 = v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_243B18C2C();
  v69 = *(v9 - 8);
  v70 = v9;
  MEMORY[0x28223BE20](v9);
  v67 = v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_243B18CDC();
  v11 = *(v75 - 8);
  v12 = MEMORY[0x28223BE20](v75);
  v64[1] = v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v65 = v64 - v15;
  MEMORY[0x28223BE20](v14);
  v66 = v64 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA1750, &qword_243B19A68);
  v18 = MEMORY[0x28223BE20](v17);
  v73 = v64 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = v64 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = v64 - v23;
  if (qword_281509090 != -1)
  {
    swift_once();
  }

  v25 = sub_243B18D3C();
  v26 = __swift_project_value_buffer(v25, qword_281509098);
  sub_243B16F2C(a1, v24, &qword_27EDA1750, &qword_243B19A68);
  v72 = v26;
  v27 = sub_243B18D1C();
  v28 = sub_243B18EBC();
  v29 = os_log_type_enabled(v27, v28);
  v76 = v11;
  v71 = a1;
  if (v29)
  {
    v30 = swift_slowAlloc();
    v64[0] = a2;
    v31 = v30;
    v32 = swift_slowAlloc();
    aBlock[0] = v32;
    *v31 = 136315138;
    sub_243B16F2C(v24, v22, &qword_27EDA1750, &qword_243B19A68);
    v33 = sub_243B18D9C();
    v35 = v34;
    sub_243B0A49C(v24, &qword_27EDA1750, &qword_243B19A68);
    v36 = sub_243B09C80(v33, v35, aBlock);
    v35, v37, v38, v39, v40, v41, v42, v43;
    *(v31 + 4) = v36;
    _os_log_impl(&dword_243AF9000, v27, v28, "callForUserNameAndEmail url: %s", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v32);
    MEMORY[0x245D489D0](v32, -1, -1);
    v44 = v31;
    a2 = v64[0];
    MEMORY[0x245D489D0](v44, -1, -1);
  }

  else
  {

    sub_243B0A49C(v24, &qword_27EDA1750, &qword_243B19A68);
  }

  v45 = a2;
  v46 = sub_243B18D1C();
  v47 = sub_243B18EBC();

  v48 = os_log_type_enabled(v46, v47);
  v49 = v75;
  if (v48)
  {
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    *v50 = 138412290;
    *(v50 + 4) = v45;
    *v51 = a2;
    v52 = v45;
    _os_log_impl(&dword_243AF9000, v46, v47, "callForUserNameAndEmail containerSetupInfo: %@", v50, 0xCu);
    sub_243B0A49C(v51, &qword_27EDA1760, &qword_243B19A70);
    MEMORY[0x245D489D0](v51, -1, -1);
    MEMORY[0x245D489D0](v50, -1, -1);
  }

  if (qword_281509060 != -1)
  {
    swift_once();
  }

  v53 = qword_2815090B8;
  v54 = v76;
  v55 = v73;
  if (qword_2815090B8)
  {
    sub_243B16F2C(v71, v73, &qword_27EDA1750, &qword_243B19A68);
    if ((*(v54 + 48))(v55, 1, v49) == 1)
    {
      swift_unknownObjectRetain();
      sub_243B0A49C(v55, &qword_27EDA1750, &qword_243B19A68);
      v56 = 0;
    }

    else
    {
      v60 = v66;
      (*(v54 + 32))(v66, v55, v49);
      sub_243B16EE4(0, &qword_27EDA1740, 0x277CC6438);
      v61 = v65;
      (*(v54 + 16))(v65, v60, v49);
      swift_unknownObjectRetain();
      v56 = sub_243B099B8(v61, 0);
      logWrapperMessage(for:isReadOnly:error:)(v60, 0, 0);
      (*(v76 + 8))(v60, v49);
    }

    v62 = swift_allocObject();
    *(v62 + 16) = v74;
    *(v62 + 24) = a4;
    aBlock[4] = sub_243B0A66C;
    aBlock[5] = v62;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_243B07F58;
    aBlock[3] = &block_descriptor_120;
    v63 = _Block_copy(aBlock);

    [v53 userNameAndEmailWithURLWrapper:v56 containerSetupInfo:v45 withReply:v63];

    _Block_release(v63);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_243B18C0C();
    sub_243B0A228(MEMORY[0x277D84F90]);
    sub_243B0A398(&qword_27EDA1738, MEMORY[0x277CC8620], MEMORY[0x277CC8618]);
    v57 = v67;
    v58 = v70;
    sub_243B18C5C();
    v59 = sub_243B18BFC();
    (*(v69 + 8))(v57, v58);
    v74(0, 0, v59);
  }
}

void sub_243B07F58(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = *(a1 + 32);

  v10 = a2;
  v8 = a3;
  v9 = a4;
  v7(a2, a3, a4);
}

void sub_243B08174(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v7 = sub_243B18C6C();
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  (*(a4 + 16))(a4, a1, a2);
}

void sub_243B081F4(uint64_t a1, _TtC12CloudSharing15InitiateSharing *a2, _TtC12CloudSharing15InitiateSharing *a3, uint64_t a4, uint64_t a5, int a6, void (*a7)(char *, void, void *), uint64_t a8)
{
  v126 = a4;
  v127 = a7;
  v129 = a6;
  v131 = a5;
  v132 = a2;
  v11 = sub_243B18C1C();
  MEMORY[0x28223BE20](v11 - 8);
  v123 = &v117 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_243B18C2C();
  v124 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v122 = &v117 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA1750, &qword_243B19A68);
  MEMORY[0x28223BE20](v15 - 8);
  v121 = &v117 - v16;
  v17 = sub_243B18CDC();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v117 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281509090 != -1)
  {
    swift_once();
  }

  v21 = sub_243B18D3C();
  v22 = __swift_project_value_buffer(v21, qword_281509098);
  v23 = *(v18 + 16);
  v125 = a1;
  v23(v20, a1, v17);
  v24 = sub_243B18D1C();
  v25 = sub_243B18EBC();
  v26 = os_log_type_enabled(v24, v25);
  v130 = a3;
  v128 = v17;
  v120 = v18;
  if (v26)
  {
    v27 = swift_slowAlloc();
    v119 = v22;
    v28 = v27;
    v118 = swift_slowAlloc();
    aBlock[0] = v118;
    *v28 = 136315138;
    sub_243B0A398(&qword_27EDA1748, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v29 = sub_243B18F4C();
    v30 = a8;
    v32 = v31;
    (*(v18 + 8))(v20, v17);
    v33 = sub_243B09C80(v29, v32, aBlock);
    v34 = v32;
    a8 = v30;
    a3 = v130;
    v34, v35, v36, v37, v38, v39, v40, v41;
    *(v28 + 4) = v33;
    _os_log_impl(&dword_243AF9000, v24, v25, "callForForciblyShareFolder folderURL: %s", v28, 0xCu);
    v42 = v118;
    __swift_destroy_boxed_opaque_existential_0(v118);
    MEMORY[0x245D489D0](v42, -1, -1);
    MEMORY[0x245D489D0](v28, -1, -1);
  }

  else
  {

    (*(v18 + 8))(v20, v17);
  }

  v43 = v132;

  v44 = sub_243B18D1C();
  v45 = sub_243B18E8C();
  v43, v46, v47, v48, v49, v50, v51, v52;
  if (os_log_type_enabled(v44, v45))
  {
    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    aBlock[0] = v54;
    *v53 = 136315138;
    v55 = MEMORY[0x245D48400](v43, MEMORY[0x277D837D0]);
    v57 = v56;
    v58 = sub_243B09C80(v55, v56, aBlock);
    v57, v59, v60, v61, v62, v63, v64, v65;
    *(v53 + 4) = v58;
    _os_log_impl(&dword_243AF9000, v44, v45, "callForForciblyShareFolder emailAddresses: %s", v53, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v54);
    MEMORY[0x245D489D0](v54, -1, -1);
    MEMORY[0x245D489D0](v53, -1, -1);
  }

  v66 = sub_243B18D1C();
  v67 = sub_243B18E8C();
  a3, v68, v69, v70, v71, v72, v73, v74;
  if (os_log_type_enabled(v66, v67))
  {
    v75 = swift_slowAlloc();
    v76 = swift_slowAlloc();
    aBlock[0] = v76;
    *v75 = 136315138;
    v77 = MEMORY[0x245D48400](a3, MEMORY[0x277D837D0]);
    v79 = v78;
    v80 = sub_243B09C80(v77, v78, aBlock);
    v79, v81, v82, v83, v84, v85, v86, v87;
    *(v75 + 4) = v80;
    _os_log_impl(&dword_243AF9000, v66, v67, "callForForciblyShareFolder phoneNumbers: %s", v75, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v76);
    MEMORY[0x245D489D0](v76, -1, -1);
    MEMORY[0x245D489D0](v75, -1, -1);
  }

  v88 = sub_243B18D1C();
  v89 = sub_243B18E8C();
  if (os_log_type_enabled(v88, v89))
  {
    v90 = swift_slowAlloc();
    v91 = swift_slowAlloc();
    *v90 = 136315138;
    v133 = v131;
    aBlock[0] = v91;
    type metadata accessor for ParticipantPermission(0);
    v92 = sub_243B18D9C();
    v94 = v93;
    v95 = sub_243B09C80(v92, v93, aBlock);
    v94, v96, v97, v98, v99, v100, v101, v102;
    *(v90 + 4) = v95;
    _os_log_impl(&dword_243AF9000, v88, v89, "callForForciblyShareFolder permissionType: %s", v90, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v91);
    MEMORY[0x245D489D0](v91, -1, -1);
    MEMORY[0x245D489D0](v90, -1, -1);
  }

  v103 = v129;
  v104 = v128;
  v105 = sub_243B18D1C();
  v106 = sub_243B18E8C();
  if (os_log_type_enabled(v105, v106))
  {
    v107 = swift_slowAlloc();
    *v107 = 67109120;
    *(v107 + 4) = v103 & 1;
    _os_log_impl(&dword_243AF9000, v105, v106, "callForForciblyShareFolder allowOthersToInvite: %{BOOL}d", v107, 8u);
    MEMORY[0x245D489D0](v107, -1, -1);
  }

  if (qword_281509060 != -1)
  {
    swift_once();
  }

  v108 = qword_2815090B8;
  if (qword_2815090B8)
  {
    swift_unknownObjectRetain();
    v109 = sub_243B18CAC();
    v110 = sub_243B18E2C();
    v111 = sub_243B18E2C();
    v112 = swift_allocObject();
    *(v112 + 16) = v127;
    *(v112 + 24) = a8;
    aBlock[4] = sub_243B17134;
    aBlock[5] = v112;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_243AFE0C0;
    aBlock[3] = &block_descriptor_126;
    v113 = _Block_copy(aBlock);

    [v108 forciblyShareFolder:v109 emailAddresses:v110 phoneNumbers:v111 accessType:v126 permissionType:v131 allowOthersToInvite:v103 & 1 withReply:v113];
    _Block_release(v113);
    swift_unknownObjectRelease();
  }

  else
  {
    v114 = v121;
    (*(v120 + 56))(v121, 1, 1, v104);
    sub_243B18C0C();
    sub_243B0A228(MEMORY[0x277D84F90]);
    sub_243B0A398(&qword_27EDA1738, MEMORY[0x277CC8620], MEMORY[0x277CC8618]);
    v115 = v122;
    sub_243B18C5C();
    v116 = sub_243B18BFC();
    (*(v124 + 8))(v115, v13);
    v127(v114, 0, v116);

    sub_243B0A49C(v114, &qword_27EDA1750, &qword_243B19A68);
  }
}

uint64_t sub_243B08B58(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned int a8, const void *a9, void (*a10)(char *, _TtC12CloudSharing15InitiateSharing *, _TtC12CloudSharing15InitiateSharing *, uint64_t, uint64_t, void, void *))
{
  v36 = a8;
  v35 = a7;
  v12 = sub_243B18CDC();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = _Block_copy(a9);
  sub_243B18CCC();
  v17 = sub_243B18E3C();
  v18 = sub_243B18E3C();
  _Block_copy(v16);
  v19 = a1;
  a10(v15, v17, v18, a6, v35, v36, v16);
  _Block_release(v16);
  _Block_release(v16);

  v17, v20, v21, v22, v23, v24, v25, v26;
  v18, v27, v28, v29, v30, v31, v32, v33;
  return (*(v13 + 8))(v15, v12);
}

void sub_243B08CE4(uint64_t a1, _TtC12CloudSharing15InitiateSharing *a2, _TtC12CloudSharing15InitiateSharing *a3, _TtC12CloudSharing15InitiateSharing *a4, void (*a5)(char *, void, void *), uint64_t a6)
{
  v130 = a5;
  v131 = a4;
  v10 = sub_243B18C1C();
  MEMORY[0x28223BE20](v10 - 8);
  v125 = &v120 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_243B18C2C();
  v126 = *(v12 - 8);
  v127 = v12;
  MEMORY[0x28223BE20](v12);
  v124 = &v120 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA1750, &qword_243B19A68);
  MEMORY[0x28223BE20](v14 - 8);
  v123 = &v120 - v15;
  v16 = sub_243B18CDC();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v120 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281509090 != -1)
  {
    swift_once();
  }

  v20 = sub_243B18D3C();
  __swift_project_value_buffer(v20, qword_281509098);
  v21 = *(v17 + 16);
  v128 = a1;
  v21(v19, a1, v16);
  v22 = sub_243B18D1C();
  v23 = sub_243B18EBC();
  v24 = os_log_type_enabled(v22, v23);
  v132 = a2;
  v129 = v16;
  v122 = v17;
  if (v24)
  {
    v25 = swift_slowAlloc();
    v120 = a6;
    v121 = a3;
    v26 = v25;
    v27 = swift_slowAlloc();
    aBlock[0] = v27;
    *v26 = 136315138;
    sub_243B0A398(&qword_27EDA1748, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v28 = sub_243B18F4C();
    v30 = v29;
    (*(v17 + 8))(v19, v16);
    v31 = sub_243B09C80(v28, v30, aBlock);
    v32 = v30;
    a2 = v132;
    v32, v33, v34, v35, v36, v37, v38, v39;
    *(v26 + 4) = v31;
    _os_log_impl(&dword_243AF9000, v22, v23, "callForForciblyShareFolder folderURL: %s", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v27);
    MEMORY[0x245D489D0](v27, -1, -1);
    v40 = v26;
    a6 = v120;
    a3 = v121;
    MEMORY[0x245D489D0](v40, -1, -1);
  }

  else
  {

    (*(v17 + 8))(v19, v16);
  }

  v41 = sub_243B18D1C();
  v42 = sub_243B18E8C();
  a2, v43, v44, v45, v46, v47, v48, v49;
  if (os_log_type_enabled(v41, v42))
  {
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    aBlock[0] = v51;
    *v50 = 136315138;
    v52 = MEMORY[0x245D48400](a2, MEMORY[0x277D837D0]);
    v54 = v53;
    v55 = sub_243B09C80(v52, v53, aBlock);
    v54, v56, v57, v58, v59, v60, v61, v62;
    *(v50 + 4) = v55;
    _os_log_impl(&dword_243AF9000, v41, v42, "callForForciblyShareFolder emailAddresses: %s", v50, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v51);
    MEMORY[0x245D489D0](v51, -1, -1);
    MEMORY[0x245D489D0](v50, -1, -1);
  }

  v63 = sub_243B18D1C();
  v64 = sub_243B18E8C();
  a3, v65, v66, v67, v68, v69, v70, v71;
  if (os_log_type_enabled(v63, v64))
  {
    v72 = swift_slowAlloc();
    v73 = swift_slowAlloc();
    aBlock[0] = v73;
    *v72 = 136315138;
    v74 = MEMORY[0x245D48400](a3, MEMORY[0x277D837D0]);
    v76 = v75;
    v77 = sub_243B09C80(v74, v75, aBlock);
    v76, v78, v79, v80, v81, v82, v83, v84;
    *(v72 + 4) = v77;
    _os_log_impl(&dword_243AF9000, v63, v64, "callForForciblyShareFolder phoneNumbers: %s", v72, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v73);
    MEMORY[0x245D489D0](v73, -1, -1);
    MEMORY[0x245D489D0](v72, -1, -1);
  }

  v85 = v131;

  v86 = sub_243B18D1C();
  v87 = sub_243B18E8C();
  v85, v88, v89, v90, v91, v92, v93, v94;
  if (os_log_type_enabled(v86, v87))
  {
    v95 = swift_slowAlloc();
    v96 = swift_slowAlloc();
    aBlock[0] = v96;
    *v95 = 136315138;
    v97 = sub_243B16EE4(0, &qword_27EDA1758, 0x277CDC6D0);
    v98 = MEMORY[0x245D48400](v85, v97);
    v100 = v99;
    v101 = sub_243B09C80(v98, v99, aBlock);
    v100, v102, v103, v104, v105, v106, v107, v108;
    *(v95 + 4) = v101;
    _os_log_impl(&dword_243AF9000, v86, v87, "callForAddParticipantsToShare optionsGroups: %s", v95, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v96);
    MEMORY[0x245D489D0](v96, -1, -1);
    MEMORY[0x245D489D0](v95, -1, -1);
  }

  if (qword_281509060 != -1)
  {
    swift_once();
  }

  v109 = qword_2815090B8;
  if (qword_2815090B8)
  {
    swift_unknownObjectRetain();
    v110 = sub_243B18CAC();
    v111 = sub_243B18E2C();
    v112 = sub_243B18E2C();
    sub_243B16EE4(0, &qword_27EDA1758, 0x277CDC6D0);
    v113 = sub_243B18E2C();
    v114 = swift_allocObject();
    *(v114 + 16) = v130;
    *(v114 + 24) = a6;
    aBlock[4] = sub_243B17134;
    aBlock[5] = v114;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_243AFE0C0;
    aBlock[3] = &block_descriptor_132;
    v115 = _Block_copy(aBlock);

    [v109 forciblyShareFolder:v110 emailAddresses:v111 phoneNumbers:v112 optionsGroups:v113 withReply:v115];
    _Block_release(v115);
    swift_unknownObjectRelease();
  }

  else
  {
    v116 = v123;
    (*(v122 + 56))(v123, 1, 1);
    sub_243B18C0C();
    sub_243B0A228(MEMORY[0x277D84F90]);
    sub_243B0A398(&qword_27EDA1738, MEMORY[0x277CC8620], MEMORY[0x277CC8618]);
    v117 = v124;
    v118 = v127;
    sub_243B18C5C();
    v119 = sub_243B18BFC();
    (*(v126 + 8))(v117, v118);
    v130(v116, 0, v119);

    sub_243B0A49C(v116, &qword_27EDA1750, &qword_243B19A68);
  }
}

uint64_t sub_243B095E8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const void *a7, void (*a8)(char *, _TtC12CloudSharing15InitiateSharing *, _TtC12CloudSharing15InitiateSharing *, _TtC12CloudSharing15InitiateSharing *, void *))
{
  v11 = sub_243B18CDC();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = _Block_copy(a7);
  sub_243B18CCC();
  v16 = sub_243B18E3C();
  v17 = sub_243B18E3C();
  sub_243B16EE4(0, &qword_27EDA1758, 0x277CDC6D0);
  v18 = sub_243B18E3C();
  _Block_copy(v15);
  v19 = a1;
  a8(v14, v16, v17, v18, v15);
  _Block_release(v15);
  _Block_release(v15);

  v16, v20, v21, v22, v23, v24, v25, v26;
  v17, v27, v28, v29, v30, v31, v32, v33;
  v18, v34, v35, v36, v37, v38, v39, v40;
  return (*(v12 + 8))(v14, v11);
}

id InitiateSharing.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id InitiateSharing.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InitiateSharing();
  return objc_msgSendSuper2(&v2, sel_init);
}

id InitiateSharing.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for InitiateSharing();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t static InitiateSharing.hashableClassSet(_:)(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277CBEB58]) init];
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = a1 + 32;
    do
    {
      v4 += 8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA1768, &qword_243B19A78);
      [v2 addObject_];
      swift_unknownObjectRelease();
      --v3;
    }

    while (v3);
  }

  v5 = v2;
  sub_243B18E6C();

  result = sub_243B18F1C();
  __break(1u);
  return result;
}

id sub_243B099B8(uint64_t a1, char a2)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v4 = sub_243B18CAC();
  v13[0] = 0;
  v5 = [swift_getObjCClassFromMetadata() wrapperWithURL:v4 readonly:a2 & 1 error:v13];

  v6 = v13[0];
  if (v5)
  {
    v7 = sub_243B18CDC();
    v8 = *(*(v7 - 8) + 8);
    v9 = v6;
    v8(a1, v7);
  }

  else
  {
    v10 = v13[0];
    sub_243B18C7C();

    swift_willThrow();
    v11 = sub_243B18CDC();
    (*(*(v11 - 8) + 8))(a1, v11);
  }

  return v5;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_243B09B50(uint64_t a1, uint64_t a2)
{
  sub_243B18F7C();
  sub_243B18DBC();
  v4 = sub_243B18F8C();

  return sub_243B09BC8(a1, a2, v4);
}

unint64_t sub_243B09BC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_243B18F5C())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_243B09C80(uint64_t a1, _TtC12CloudSharing15InitiateSharing *a2, uint64_t *a3)
{

  v6 = sub_243B09D4C(v18, 0, 0, 1, a1, a2);
  v14 = v18[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v18[0] = a1;
    v18[1] = a2;
    v16 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v15 = v6;
  a2, v7, v8, v9, v10, v11, v12, v13;
  ObjectType = swift_getObjectType();
  v18[0] = v15;
  v16 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_243B16E84(v18, v16);
    *a3 = v16 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v18);
  return v14;
}

unint64_t sub_243B09D4C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_243B09E58(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_243B18F0C();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_243B09E58(uint64_t a1, unint64_t a2)
{
  v3 = sub_243B09EA4(a1, a2);
  sub_243B09FD4(&unk_2856C3B50);
  return v3;
}

void *sub_243B09EA4(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_243B0A0C0(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_243B18F0C();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_243B18DFC();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_243B0A0C0(v10, 0);
        result = sub_243B18EFC();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

void sub_243B09FD4(_TtC12CloudSharing15InitiateSharing *a1)
{
  isa = a1[2].super.isa;
  v3 = *v1;
  v4 = (*v1)[2].super.isa;
  v5 = isa + v4;
  if (__OFADD__(v4, isa))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= (v3[3].super.isa >> 1))
  {
    if (a1[2].super.isa)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v26 = isa + v4;
  }

  else
  {
    v26 = v4;
  }

  v3 = sub_243B0A134(isUniquelyReferenced_nonNull_native, v26, 1, v3, v11, v12, v13, v14);
  if (!a1[2].super.isa)
  {
LABEL_13:
    a1, v8, v9, v10, v11, v12, v13, v14;
    if (!isa)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v15 = v3[2].super.isa;
  if (((v3[3].super.isa >> 1) - v15) < isa)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy(v15 + v3 + 32, &a1[4], isa);
  a1, v16, v17, v18, v19, v20, v21, v22;
  if (!isa)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v23 = v3[2].super.isa;
  v24 = __OFADD__(v23, isa);
  v25 = (isa + v23);
  if (!v24)
  {
    v3[2].super.isa = v25;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

void *sub_243B0A0C0(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA1770, &qword_243B19AB0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

_TtC12CloudSharing15InitiateSharing *sub_243B0A134(_TtC12CloudSharing15InitiateSharing *result, int64_t a2, void *a3, _TtC12CloudSharing15InitiateSharing *a4, void *a5, void *a6, int64_t a7, int64_t a8)
{
  v9 = result;
  if (a3)
  {
    isa = a4[3].super.isa;
    v11 = isa >> 1;
    if ((isa >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = isa & 0xFFFFFFFFFFFFFFFELL;
      if ((isa & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2].super.isa;
  if (v11 <= v12)
  {
    v13 = a4[2].super.isa;
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA1770, &qword_243B19AB0);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    v14[2].super.isa = v12;
    v14[3].super.isa = (2 * v15 - 64);
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
  }

  v16 = v14 + 4;
  v17 = a4 + 4;
  if (v9)
  {
    if (v14 != a4 || v16 >= (v12 + v17))
    {
      memmove(v16, v17, v12);
    }

    a4[2].super.isa = 0;
  }

  else
  {
    memcpy(v16, v17, v12);
  }

  a4, v17, a3, a4, a5, a6, a7, a8;
  return v14;
}

unint64_t sub_243B0A228(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA1788, &qword_243B19AC0);
    v3 = sub_243B18F2C();
    v4 = a1 + 32;

    while (1)
    {
      sub_243B16F2C(v4, &v13, &qword_27EDA1790, &unk_243B19AC8);
      v5 = v13;
      v6 = v14;
      result = sub_243B09B50(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_243B16F94(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_243B0A398(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_243B0A49C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_243B0A54C(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_243B0A5A0(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

void sub_243B0AB60(uint64_t a1, void (**a2)(const void *, void, id))
{
  v56 = a1;
  v3 = sub_243B18C1C();
  MEMORY[0x28223BE20](v3 - 8);
  v50 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_243B18C2C();
  v5 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v51 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_243B18CDC();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v53 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v46 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v46 - v14;
  v16 = swift_allocObject();
  v54 = a2;
  v55 = v16;
  *(v16 + 16) = a2;
  _Block_copy(a2);
  if (qword_281509090 != -1)
  {
    swift_once();
  }

  v17 = sub_243B18D3C();
  __swift_project_value_buffer(v17, qword_281509098);
  v18 = *(v8 + 16);
  v18(v15, v56, v7);
  v19 = sub_243B18D1C();
  v20 = sub_243B18EBC();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v49 = v5;
    v22 = v21;
    v47 = swift_slowAlloc();
    aBlock[0] = v47;
    *v22 = 136315138;
    sub_243B0A398(&qword_27EDA1748, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v23 = sub_243B18F4C();
    v48 = v18;
    v24 = v13;
    v26 = v25;
    (*(v8 + 8))(v15, v7);
    v27 = sub_243B09C80(v23, v26, aBlock);
    v28 = v26;
    v13 = v24;
    v18 = v48;
    v28, v29, v30, v31, v32, v33, v34, v35;
    *(v22 + 4) = v27;
    _os_log_impl(&dword_243AF9000, v19, v20, "callForSharingStatus url: %s", v22, 0xCu);
    v36 = v47;
    __swift_destroy_boxed_opaque_existential_0(v47);
    MEMORY[0x245D489D0](v36, -1, -1);
    v37 = v22;
    v5 = v49;
    MEMORY[0x245D489D0](v37, -1, -1);
  }

  else
  {

    (*(v8 + 8))(v15, v7);
  }

  if (qword_281509060 != -1)
  {
    swift_once();
  }

  v38 = qword_2815090B8;
  if (qword_2815090B8)
  {
    sub_243B16EE4(0, &qword_27EDA1740, 0x277CC6438);
    v18(v13, v56, v7);
    swift_unknownObjectRetain();
    v42 = sub_243B099B8(v13, 0);
    logWrapperMessage(for:isReadOnly:error:)(v56, 0, 0);
    v43 = swift_allocObject();
    v44 = v55;
    *(v43 + 16) = sub_243B16E68;
    *(v43 + 24) = v44;
    aBlock[4] = sub_243B1705C;
    aBlock[5] = v43;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_243AFD490;
    aBlock[3] = &block_descriptor_375;
    v45 = _Block_copy(aBlock);

    [v38 sharingStatusForWithURLWrapper:v42 withReply:v45];

    _Block_release(v45);

    swift_unknownObjectRelease();
  }

  else
  {
    sub_243B18C0C();
    sub_243B0A228(MEMORY[0x277D84F90]);
    sub_243B0A398(&qword_27EDA1738, MEMORY[0x277CC8620], MEMORY[0x277CC8618]);
    v39 = v51;
    v40 = v52;
    sub_243B18C5C();
    v41 = sub_243B18BFC();
    (*(v5 + 8))(v39, v40);
    v42 = sub_243B18C6C();
    v54[2](v54, 0, v42);
  }
}

void sub_243B0B37C(uint64_t a1, _TtC12CloudSharing15InitiateSharing *a2, _TtC12CloudSharing15InitiateSharing *a3, uint64_t a4, uint64_t a5, int a6, void (**a7)(const void *, void *, void, void *))
{
  v160 = a6;
  v161 = a4;
  v162 = a5;
  v168 = a3;
  v165 = a2;
  v9 = sub_243B18C1C();
  MEMORY[0x28223BE20](v9 - 8);
  v152 = &v144 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v154 = sub_243B18C2C();
  v153 = *(v154 - 8);
  MEMORY[0x28223BE20](v154);
  v151 = &v144 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA1750, &qword_243B19A68);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v147 = &v144 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v148 = &v144 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v150 = &v144 - v18;
  MEMORY[0x28223BE20](v17);
  v155 = &v144 - v19;
  v20 = sub_243B18CDC();
  v21 = *(v20 - 8);
  v22 = MEMORY[0x28223BE20](v20);
  v156 = &v144 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v159 = &v144 - v25;
  MEMORY[0x28223BE20](v24);
  v27 = &v144 - v26;
  v167 = swift_allocObject();
  *(v167 + 16) = a7;
  v157 = a7;
  _Block_copy(a7);
  if (qword_281509090 != -1)
  {
    swift_once();
  }

  v28 = sub_243B18D3C();
  v29 = __swift_project_value_buffer(v28, qword_281509098);
  v30 = *(v21 + 16);
  v164 = a1;
  v30(v27, a1, v20);
  v31 = sub_243B18D1C();
  v32 = sub_243B18EBC();
  v33 = os_log_type_enabled(v31, v32);
  v166 = v21;
  v163 = v21 + 16;
  v158 = v30;
  if (v33)
  {
    v34 = swift_slowAlloc();
    v146 = v29;
    v35 = v34;
    v145 = swift_slowAlloc();
    aBlock[0] = v145;
    *v35 = 136315138;
    sub_243B0A398(&qword_27EDA1748, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v36 = sub_243B18F4C();
    v38 = v37;
    v149 = *(v21 + 8);
    v149(v27, v20);
    v39 = sub_243B09C80(v36, v38, aBlock);
    v38, v40, v41, v42, v43, v44, v45, v46;
    *(v35 + 4) = v39;
    _os_log_impl(&dword_243AF9000, v31, v32, "callForFileSharing url: %s", v35, 0xCu);
    v47 = v145;
    __swift_destroy_boxed_opaque_existential_0(v145);
    MEMORY[0x245D489D0](v47, -1, -1);
    MEMORY[0x245D489D0](v35, -1, -1);
  }

  else
  {

    v149 = *(v21 + 8);
    v149(v27, v20);
  }

  v48 = v165;

  v49 = sub_243B18D1C();
  v50 = sub_243B18E8C();
  v48, v51, v52, v53, v54, v55, v56, v57;
  if (os_log_type_enabled(v49, v50))
  {
    v58 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    aBlock[0] = v59;
    *v58 = 136315138;
    v60 = MEMORY[0x245D48400](v48, MEMORY[0x277D837D0]);
    v62 = v61;
    v63 = sub_243B09C80(v60, v61, aBlock);
    v62, v64, v65, v66, v67, v68, v69, v70;
    *(v58 + 4) = v63;
    _os_log_impl(&dword_243AF9000, v49, v50, "callForFileSharing emailAddresses: %s", v58, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v59);
    MEMORY[0x245D489D0](v59, -1, -1);
    MEMORY[0x245D489D0](v58, -1, -1);
  }

  v71 = v168;

  v72 = sub_243B18D1C();
  v73 = sub_243B18E8C();
  v71, v74, v75, v76, v77, v78, v79, v80;
  if (os_log_type_enabled(v72, v73))
  {
    v81 = swift_slowAlloc();
    v82 = swift_slowAlloc();
    aBlock[0] = v82;
    *v81 = 136315138;
    v83 = MEMORY[0x245D48400](v168, MEMORY[0x277D837D0]);
    v85 = v84;
    v86 = sub_243B09C80(v83, v84, aBlock);
    v85, v87, v88, v89, v90, v91, v92, v93;
    *(v81 + 4) = v86;
    _os_log_impl(&dword_243AF9000, v72, v73, "callForFileSharing phoneNumbers: %s", v81, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v82);
    MEMORY[0x245D489D0](v82, -1, -1);
    MEMORY[0x245D489D0](v81, -1, -1);
  }

  v94 = sub_243B18D1C();
  v95 = sub_243B18E8C();
  if (os_log_type_enabled(v94, v95))
  {
    v96 = swift_slowAlloc();
    v97 = swift_slowAlloc();
    *v96 = 136315138;
    v169 = v161;
    aBlock[0] = v97;
    type metadata accessor for ParticipantPermission(0);
    v98 = sub_243B18D9C();
    v100 = v99;
    v101 = sub_243B09C80(v98, v99, aBlock);
    v100, v102, v103, v104, v105, v106, v107, v108;
    *(v96 + 4) = v101;
    _os_log_impl(&dword_243AF9000, v94, v95, "callForFileSharing accessType: %s", v96, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v97);
    MEMORY[0x245D489D0](v97, -1, -1);
    MEMORY[0x245D489D0](v96, -1, -1);
  }

  v109 = sub_243B18D1C();
  v110 = sub_243B18E8C();
  if (os_log_type_enabled(v109, v110))
  {
    v111 = swift_slowAlloc();
    v112 = swift_slowAlloc();
    *v111 = 136315138;
    v169 = v162;
    aBlock[0] = v112;
    type metadata accessor for ParticipantPermission(0);
    v113 = sub_243B18D9C();
    v115 = v114;
    v116 = sub_243B09C80(v113, v114, aBlock);
    v115, v117, v118, v119, v120, v121, v122, v123;
    *(v111 + 4) = v116;
    _os_log_impl(&dword_243AF9000, v109, v110, "callForFileSharing permissionType: %s", v111, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v112);
    MEMORY[0x245D489D0](v112, -1, -1);
    MEMORY[0x245D489D0](v111, -1, -1);
  }

  v124 = v166;
  v125 = v164;
  v126 = sub_243B18D1C();
  v127 = sub_243B18E8C();
  if (os_log_type_enabled(v126, v127))
  {
    v128 = swift_slowAlloc();
    *v128 = 67109120;
    *(v128 + 4) = v160 & 1;
    _os_log_impl(&dword_243AF9000, v126, v127, "callForFileSharing allowOthersToInvite: %{BOOL}d", v128, 8u);
    MEMORY[0x245D489D0](v128, -1, -1);
  }

  if (qword_281509060 != -1)
  {
    swift_once();
  }

  v129 = qword_2815090B8;
  if (qword_2815090B8)
  {
    sub_243B16EE4(0, &qword_27EDA1740, 0x277CC6438);
    v130 = v159;
    v158(v159, v125, v20);
    swift_unknownObjectRetain();
    v137 = sub_243B099B8(v130, 0);
    logWrapperMessage(for:isReadOnly:error:)(v125, 0, 0);
    v139 = sub_243B18E2C();
    v140 = sub_243B18E2C();
    v141 = swift_allocObject();
    v142 = v167;
    *(v141 + 16) = sub_243B1706C;
    *(v141 + 24) = v142;
    aBlock[4] = sub_243B17134;
    aBlock[5] = v141;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_243AFE0C0;
    aBlock[3] = &block_descriptor_358;
    v143 = _Block_copy(aBlock);

    [v129 startFileSharingWithURLWrapper:v137 emailAddresses:v139 phoneNumbers:v140 accessType:v161 permissionType:v162 allowOthersToInvite:v160 & 1 withReply:v143];

    _Block_release(v143);

    swift_unknownObjectRelease();
  }

  else
  {
    v131 = v155;
    (*(v124 + 56))(v155, 1, 1, v20);
    sub_243B18C0C();
    sub_243B0A228(MEMORY[0x277D84F90]);
    sub_243B0A398(&qword_27EDA1738, MEMORY[0x277CC8620], MEMORY[0x277CC8618]);
    v132 = v151;
    v133 = v154;
    sub_243B18C5C();
    v134 = sub_243B18BFC();
    (*(v153 + 8))(v132, v133);
    v135 = v150;
    sub_243B16F2C(v131, v150, &qword_27EDA1750, &qword_243B19A68);
    if ((*(v124 + 48))(v135, 1, v20) == 1)
    {
      v136 = 0;
    }

    else
    {
      v136 = sub_243B18CAC();
      v149(v135, v20);
    }

    v138 = sub_243B18C6C();
    v157[2](v157, v136, 0, v138);

    sub_243B0A49C(v131, &qword_27EDA1750, &qword_243B19A68);
  }
}

void sub_243B0C174(uint64_t a1, _TtC12CloudSharing15InitiateSharing *a2, _TtC12CloudSharing15InitiateSharing *a3, _TtC12CloudSharing15InitiateSharing *a4, void (**a5)(void, void, void, void))
{
  v156 = a2;
  v157 = a3;
  v8 = sub_243B18C1C();
  MEMORY[0x28223BE20](v8 - 8);
  v143 = &v136 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_243B18C2C();
  v144 = *(v10 - 8);
  v145 = v10;
  MEMORY[0x28223BE20](v10);
  v142 = &v136 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA1750, &qword_243B19A68);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v139 = &v136 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v148 = &v136 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v141 = &v136 - v18;
  MEMORY[0x28223BE20](v17);
  v146 = &v136 - v19;
  v20 = sub_243B18CDC();
  v21 = *(v20 - 8);
  v22 = MEMORY[0x28223BE20](v20);
  v147 = &v136 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v150 = &v136 - v25;
  MEMORY[0x28223BE20](v24);
  v27 = &v136 - v26;
  v154 = swift_allocObject();
  *(v154 + 16) = a5;
  _Block_copy(a5);
  if (qword_281509090 != -1)
  {
    swift_once();
  }

  v28 = sub_243B18D3C();
  __swift_project_value_buffer(v28, qword_281509098);
  v29 = *(v21 + 16);
  v152 = v21 + 16;
  v153 = a1;
  v151 = v29;
  v29(v27, a1, v20);
  v30 = sub_243B18D1C();
  v31 = sub_243B18EBC();
  v32 = os_log_type_enabled(v30, v31);
  v155 = v20;
  v149 = v21;
  if (v32)
  {
    v33 = swift_slowAlloc();
    v138 = a4;
    v137 = a5;
    v34 = v33;
    v35 = swift_slowAlloc();
    aBlock[0] = v35;
    *v34 = 136315138;
    sub_243B0A398(&qword_27EDA1748, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v36 = sub_243B18F4C();
    v38 = v37;
    v140 = *(v21 + 8);
    v140(v27, v20);
    v39 = sub_243B09C80(v36, v38, aBlock);
    v38, v40, v41, v42, v43, v44, v45, v46;
    *(v34 + 4) = v39;
    _os_log_impl(&dword_243AF9000, v30, v31, "callForFileSharing url: %s", v34, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v35);
    MEMORY[0x245D489D0](v35, -1, -1);
    a5 = v137;
    a4 = v138;
    MEMORY[0x245D489D0](v34, -1, -1);
  }

  else
  {

    v140 = *(v21 + 8);
    v140(v27, v20);
  }

  v47 = v156;

  v48 = sub_243B18D1C();
  v49 = sub_243B18E8C();
  v47, v50, v51, v52, v53, v54, v55, v56;
  if (os_log_type_enabled(v48, v49))
  {
    v57 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    aBlock[0] = v58;
    *v57 = 136315138;
    v59 = MEMORY[0x245D48400](v47, MEMORY[0x277D837D0]);
    v61 = v60;
    v62 = sub_243B09C80(v59, v60, aBlock);
    v61, v63, v64, v65, v66, v67, v68, v69;
    *(v57 + 4) = v62;
    _os_log_impl(&dword_243AF9000, v48, v49, "callForFileSharing emailAddresses: %s", v57, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v58);
    MEMORY[0x245D489D0](v58, -1, -1);
    MEMORY[0x245D489D0](v57, -1, -1);
  }

  v70 = v157;

  v71 = sub_243B18D1C();
  v72 = sub_243B18E8C();
  v70, v73, v74, v75, v76, v77, v78, v79;
  if (os_log_type_enabled(v71, v72))
  {
    v80 = swift_slowAlloc();
    v81 = swift_slowAlloc();
    aBlock[0] = v81;
    *v80 = 136315138;
    v82 = MEMORY[0x245D48400](v70, MEMORY[0x277D837D0]);
    v84 = v83;
    v85 = sub_243B09C80(v82, v83, aBlock);
    v84, v86, v87, v88, v89, v90, v91, v92;
    *(v80 + 4) = v85;
    _os_log_impl(&dword_243AF9000, v71, v72, "callForFileSharing phoneNumbers: %s", v80, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v81);
    MEMORY[0x245D489D0](v81, -1, -1);
    MEMORY[0x245D489D0](v80, -1, -1);
  }

  v93 = v155;

  v94 = sub_243B18D1C();
  v95 = sub_243B18E8C();
  a4, v96, v97, v98, v99, v100, v101, v102;
  if (os_log_type_enabled(v94, v95))
  {
    v103 = swift_slowAlloc();
    v104 = swift_slowAlloc();
    aBlock[0] = v104;
    *v103 = 136315138;
    v105 = sub_243B16EE4(0, &qword_27EDA1758, 0x277CDC6D0);
    v106 = MEMORY[0x245D48400](a4, v105);
    v108 = v107;
    v109 = sub_243B09C80(v106, v107, aBlock);
    v108, v110, v111, v112, v113, v114, v115, v116;
    *(v103 + 4) = v109;
    _os_log_impl(&dword_243AF9000, v94, v95, "callForFileSharing optionsGroups: %s", v103, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v104);
    MEMORY[0x245D489D0](v104, -1, -1);
    MEMORY[0x245D489D0](v103, -1, -1);
  }

  v117 = v153;
  v118 = v151;
  if (qword_281509060 != -1)
  {
    swift_once();
  }

  v119 = qword_2815090B8;
  if (qword_2815090B8)
  {
    sub_243B16EE4(0, &qword_27EDA1740, 0x277CC6438);
    v120 = v150;
    v118(v150, v117, v93);
    swift_unknownObjectRetain();
    v128 = sub_243B099B8(v120, 0);
    logWrapperMessage(for:isReadOnly:error:)(v117, 0, 0);
    v130 = sub_243B18E2C();
    v131 = sub_243B18E2C();
    sub_243B16EE4(0, &qword_27EDA1758, 0x277CDC6D0);
    v132 = sub_243B18E2C();
    v133 = swift_allocObject();
    v134 = v154;
    *(v133 + 16) = sub_243B1706C;
    *(v133 + 24) = v134;
    aBlock[4] = sub_243B17134;
    aBlock[5] = v133;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_243AFE0C0;
    aBlock[3] = &block_descriptor_347;
    v135 = _Block_copy(aBlock);

    [v119 startFileSharingWithURLWrapper:v128 emailAddresses:v130 phoneNumbers:v131 optionsGroups:v132 withReply:v135];

    _Block_release(v135);

    swift_unknownObjectRelease();
  }

  else
  {
    v121 = v149;
    v122 = v146;
    (*(v149 + 56))(v146, 1, 1, v93);
    sub_243B18C0C();
    sub_243B0A228(MEMORY[0x277D84F90]);
    sub_243B0A398(&qword_27EDA1738, MEMORY[0x277CC8620], MEMORY[0x277CC8618]);
    v123 = v142;
    v124 = v145;
    sub_243B18C5C();
    v125 = sub_243B18BFC();
    (*(v144 + 8))(v123, v124);
    v126 = v141;
    sub_243B16F2C(v122, v141, &qword_27EDA1750, &qword_243B19A68);
    if ((*(v121 + 48))(v126, 1, v93) == 1)
    {
      v127 = 0;
    }

    else
    {
      v127 = sub_243B18CAC();
      v140(v126, v93);
    }

    v129 = sub_243B18C6C();
    (a5)[2](a5, v127, 0, v129);

    sub_243B0A49C(v122, &qword_27EDA1750, &qword_243B19A68);
  }
}

void sub_243B0CE44(void *a1, void *a2, _TtC12CloudSharing15InitiateSharing *a3, _TtC12CloudSharing15InitiateSharing *a4, uint64_t a5, uint64_t a6, int a7, void (**a8)(const void *, void *, void, void *))
{
  v143 = a7;
  v145 = a5;
  v146 = a6;
  v13 = sub_243B18C1C();
  MEMORY[0x28223BE20](v13 - 8);
  v135 = &v133 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_243B18C2C();
  v136 = *(v15 - 8);
  v137 = v15;
  MEMORY[0x28223BE20](v15);
  v134 = &v133 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA1750, &qword_243B19A68);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v138 = &v133 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v139 = &v133 - v20;
  v144 = swift_allocObject();
  *(v144 + 16) = a8;
  v140 = a8;
  _Block_copy(a8);
  if (qword_281509090 != -1)
  {
    swift_once();
  }

  v21 = sub_243B18D3C();
  __swift_project_value_buffer(v21, qword_281509098);
  v22 = a1;
  v23 = sub_243B18D1C();
  v24 = sub_243B18EBC();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *v25 = 138412290;
    *(v25 + 4) = v22;
    *v26 = v22;
    v27 = v22;
    _os_log_impl(&dword_243AF9000, v23, v24, "callForCloudKitAddToShare share: %@", v25, 0xCu);
    sub_243B0A49C(v26, &qword_27EDA1760, &qword_243B19A70);
    MEMORY[0x245D489D0](v26, -1, -1);
    MEMORY[0x245D489D0](v25, -1, -1);
  }

  v141 = v22;

  v28 = a2;
  v29 = sub_243B18D1C();
  v30 = sub_243B18EBC();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    *v31 = 138412290;
    *(v31 + 4) = v28;
    *v32 = v28;
    v33 = v28;
    _os_log_impl(&dword_243AF9000, v29, v30, "callForCloudKitAddToShare containerSetupInfo: %@", v31, 0xCu);
    sub_243B0A49C(v32, &qword_27EDA1760, &qword_243B19A70);
    MEMORY[0x245D489D0](v32, -1, -1);
    MEMORY[0x245D489D0](v31, -1, -1);
  }

  v34 = sub_243B18D1C();
  v35 = sub_243B18E8C();
  a3, v36, v37, v38, v39, v40, v41, v42;
  v43 = os_log_type_enabled(v34, v35);
  v44 = a3;
  v45 = a4;
  v142 = v44;
  if (v43)
  {
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    aBlock[0] = v47;
    *v46 = 136315138;
    v48 = MEMORY[0x245D48400](v44, MEMORY[0x277D837D0]);
    v50 = v49;
    v51 = sub_243B09C80(v48, v49, aBlock);
    v50, v52, v53, v54, v55, v56, v57, v58;
    *(v46 + 4) = v51;
    a4 = v45;
    _os_log_impl(&dword_243AF9000, v34, v35, "callForCloudKitAddToShare emailAddresses: %s", v46, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v47);
    MEMORY[0x245D489D0](v47, -1, -1);
    MEMORY[0x245D489D0](v46, -1, -1);
  }

  v59 = sub_243B18D1C();
  v60 = sub_243B18E8C();
  a4, v61, v62, v63, v64, v65, v66, v67;
  if (os_log_type_enabled(v59, v60))
  {
    v68 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    aBlock[0] = v69;
    *v68 = 136315138;
    v70 = MEMORY[0x245D48400](a4, MEMORY[0x277D837D0]);
    v72 = v71;
    v73 = sub_243B09C80(v70, v71, aBlock);
    v72, v74, v75, v76, v77, v78, v79, v80;
    *(v68 + 4) = v73;
    _os_log_impl(&dword_243AF9000, v59, v60, "callForCloudKitAddToShare phoneNumbers: %s", v68, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v69);
    MEMORY[0x245D489D0](v69, -1, -1);
    MEMORY[0x245D489D0](v68, -1, -1);
  }

  v81 = sub_243B18D1C();
  v82 = sub_243B18E8C();
  if (os_log_type_enabled(v81, v82))
  {
    v83 = swift_slowAlloc();
    v84 = swift_slowAlloc();
    *v83 = 136315138;
    v147 = v145;
    aBlock[0] = v84;
    type metadata accessor for ParticipantPermission(0);
    v85 = sub_243B18D9C();
    v87 = v86;
    v88 = sub_243B09C80(v85, v86, aBlock);
    v87, v89, v90, v91, v92, v93, v94, v95;
    *(v83 + 4) = v88;
    _os_log_impl(&dword_243AF9000, v81, v82, "callForCloudKitAddToShare accessType: %s", v83, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v84);
    MEMORY[0x245D489D0](v84, -1, -1);
    MEMORY[0x245D489D0](v83, -1, -1);
  }

  v96 = sub_243B18D1C();
  v97 = sub_243B18E8C();
  if (os_log_type_enabled(v96, v97))
  {
    v98 = swift_slowAlloc();
    v99 = swift_slowAlloc();
    *v98 = 136315138;
    v147 = v146;
    aBlock[0] = v99;
    type metadata accessor for ParticipantPermission(0);
    v100 = sub_243B18D9C();
    v102 = v101;
    v103 = sub_243B09C80(v100, v101, aBlock);
    v102, v104, v105, v106, v107, v108, v109, v110;
    *(v98 + 4) = v103;
    _os_log_impl(&dword_243AF9000, v96, v97, "callForCloudKitAddToShare permissionType: %s", v98, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v99);
    MEMORY[0x245D489D0](v99, -1, -1);
    MEMORY[0x245D489D0](v98, -1, -1);
  }

  v111 = v141;
  v112 = sub_243B18D1C();
  v113 = sub_243B18E8C();
  v114 = os_log_type_enabled(v112, v113);
  v115 = v143;
  if (v114)
  {
    v116 = swift_slowAlloc();
    *v116 = 67109120;
    *(v116 + 4) = v115 & 1;
    _os_log_impl(&dword_243AF9000, v112, v113, "callForCloudKitAddToShare allowOthersToInvite: %{BOOL}d", v116, 8u);
    MEMORY[0x245D489D0](v116, -1, -1);
  }

  if (qword_281509060 != -1)
  {
    swift_once();
  }

  v117 = qword_2815090B8;
  if (qword_2815090B8)
  {
    swift_unknownObjectRetain();
    v118 = sub_243B18E2C();
    v119 = sub_243B18E2C();
    v120 = swift_allocObject();
    v121 = v144;
    *(v120 + 16) = sub_243B1706C;
    *(v120 + 24) = v121;
    aBlock[4] = sub_243B17134;
    aBlock[5] = v120;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_243AFE0C0;
    aBlock[3] = &block_descriptor_336;
    v122 = _Block_copy(aBlock);

    LOBYTE(v132) = v115 & 1;
    [v117 addToCloudKitSharing:v111 containerSetupInfo:v28 emailAddresses:v118 phoneNumbers:v119 accessType:v145 permissionType:v146 allowOthersToInvite:v132 withReply:v122];
    _Block_release(v122);

    swift_unknownObjectRelease();
  }

  else
  {
    v123 = sub_243B18CDC();
    v124 = *(v123 - 8);
    v125 = v139;
    (*(v124 + 56))(v139, 1, 1, v123);
    sub_243B18C0C();
    sub_243B0A228(MEMORY[0x277D84F90]);
    sub_243B0A398(&qword_27EDA1738, MEMORY[0x277CC8620], MEMORY[0x277CC8618]);
    v126 = v134;
    v127 = v137;
    sub_243B18C5C();
    v128 = sub_243B18BFC();
    (*(v136 + 8))(v126, v127);
    v129 = v138;
    sub_243B16F2C(v125, v138, &qword_27EDA1750, &qword_243B19A68);
    v130 = 0;
    if ((*(v124 + 48))(v129, 1, v123) != 1)
    {
      v130 = sub_243B18CAC();
      (*(v124 + 8))(v129, v123);
    }

    v131 = sub_243B18C6C();
    v140[2](v140, v130, 0, v131);

    sub_243B0A49C(v125, &qword_27EDA1750, &qword_243B19A68);
  }
}

void sub_243B0D900(void *a1, void *a2, _TtC12CloudSharing15InitiateSharing *a3, _TtC12CloudSharing15InitiateSharing *a4, _TtC12CloudSharing15InitiateSharing *a5, void (**a6)(const void *, void *, void, void *))
{
  v131 = a4;
  v11 = sub_243B18C1C();
  MEMORY[0x28223BE20](v11 - 8);
  v122 = &v120 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_243B18C2C();
  v123 = *(v13 - 8);
  v124 = v13;
  MEMORY[0x28223BE20](v13);
  v121 = &v120 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA1750, &qword_243B19A68);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v125 = &v120 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v126 = &v120 - v18;
  v130 = swift_allocObject();
  *(v130 + 16) = a6;
  v127 = a6;
  _Block_copy(a6);
  if (qword_281509090 != -1)
  {
    swift_once();
  }

  v19 = sub_243B18D3C();
  __swift_project_value_buffer(v19, qword_281509098);
  v20 = a1;
  v21 = sub_243B18D1C();
  v22 = sub_243B18EBC();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v23 = 138412290;
    *(v23 + 4) = v20;
    *v24 = v20;
    v25 = v20;
    _os_log_impl(&dword_243AF9000, v21, v22, "callForCloudKitAddToShare share: %@", v23, 0xCu);
    sub_243B0A49C(v24, &qword_27EDA1760, &qword_243B19A70);
    MEMORY[0x245D489D0](v24, -1, -1);
    MEMORY[0x245D489D0](v23, -1, -1);
  }

  v26 = a2;
  v27 = sub_243B18D1C();
  v28 = sub_243B18EBC();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v29 = 138412290;
    *(v29 + 4) = v26;
    *v30 = v26;
    v31 = v26;
    _os_log_impl(&dword_243AF9000, v27, v28, "callForCloudKitAddToShare containerSetupInfo: %@", v29, 0xCu);
    sub_243B0A49C(v30, &qword_27EDA1760, &qword_243B19A70);
    MEMORY[0x245D489D0](v30, -1, -1);
    MEMORY[0x245D489D0](v29, -1, -1);
  }

  v128 = v26;
  v129 = v20;

  v32 = sub_243B18D1C();
  v33 = sub_243B18E8C();
  a3, v34, v35, v36, v37, v38, v39, v40;
  v41 = a3;
  v42 = a5;
  if (os_log_type_enabled(v32, v33))
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    aBlock[0] = v44;
    *v43 = 136315138;
    v45 = MEMORY[0x245D48400](v41, MEMORY[0x277D837D0]);
    v47 = v46;
    v48 = sub_243B09C80(v45, v46, aBlock);
    v47, v49, v50, v51, v52, v53, v54, v55;
    *(v43 + 4) = v48;
    _os_log_impl(&dword_243AF9000, v32, v33, "callForCloudKitAddToShare emailAddresses: %s", v43, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v44);
    MEMORY[0x245D489D0](v44, -1, -1);
    MEMORY[0x245D489D0](v43, -1, -1);
  }

  v56 = v131;

  v57 = sub_243B18D1C();
  v58 = sub_243B18E8C();
  v56, v59, v60, v61, v62, v63, v64, v65;
  if (os_log_type_enabled(v57, v58))
  {
    v66 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    aBlock[0] = v67;
    *v66 = 136315138;
    v68 = MEMORY[0x245D48400](v56, MEMORY[0x277D837D0]);
    v70 = v69;
    v71 = sub_243B09C80(v68, v69, aBlock);
    v70, v72, v73, v74, v75, v76, v77, v78;
    *(v66 + 4) = v71;
    _os_log_impl(&dword_243AF9000, v57, v58, "callForCloudKitAddToShare phoneNumbers: %s", v66, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v67);
    MEMORY[0x245D489D0](v67, -1, -1);
    MEMORY[0x245D489D0](v66, -1, -1);
  }

  v79 = sub_243B18D1C();
  v80 = sub_243B18E8C();
  v42, v81, v82, v83, v84, v85, v86, v87;
  if (os_log_type_enabled(v79, v80))
  {
    v88 = swift_slowAlloc();
    v89 = swift_slowAlloc();
    aBlock[0] = v89;
    *v88 = 136315138;
    v90 = sub_243B16EE4(0, &qword_27EDA1758, 0x277CDC6D0);
    v91 = MEMORY[0x245D48400](v42, v90);
    v93 = v92;
    v94 = sub_243B09C80(v91, v92, aBlock);
    v93, v95, v96, v97, v98, v99, v100, v101;
    *(v88 + 4) = v94;
    _os_log_impl(&dword_243AF9000, v79, v80, "callForCloudKitAddToShare optionsGroups: %s", v88, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v89);
    MEMORY[0x245D489D0](v89, -1, -1);
    MEMORY[0x245D489D0](v88, -1, -1);
  }

  v103 = v128;
  v102 = v129;
  if (qword_281509060 != -1)
  {
    swift_once();
  }

  v104 = qword_2815090B8;
  if (qword_2815090B8)
  {
    swift_unknownObjectRetain();
    v105 = sub_243B18E2C();
    v106 = sub_243B18E2C();
    sub_243B16EE4(0, &qword_27EDA1758, 0x277CDC6D0);
    v107 = sub_243B18E2C();
    v108 = swift_allocObject();
    v109 = v130;
    *(v108 + 16) = sub_243B1706C;
    *(v108 + 24) = v109;
    aBlock[4] = sub_243B17134;
    aBlock[5] = v108;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_243AFE0C0;
    aBlock[3] = &block_descriptor_325;
    v110 = _Block_copy(aBlock);

    [v104 addToCloudKitSharing:v102 containerSetupInfo:v103 emailAddresses:v105 phoneNumbers:v106 optionsGroups:v107 withReply:v110];
    _Block_release(v110);

    swift_unknownObjectRelease();
  }

  else
  {
    v111 = sub_243B18CDC();
    v112 = *(v111 - 8);
    v113 = v126;
    (*(v112 + 56))(v126, 1, 1, v111);
    sub_243B18C0C();
    sub_243B0A228(MEMORY[0x277D84F90]);
    sub_243B0A398(&qword_27EDA1738, MEMORY[0x277CC8620], MEMORY[0x277CC8618]);
    v114 = v121;
    v115 = v124;
    sub_243B18C5C();
    v116 = sub_243B18BFC();
    (*(v123 + 8))(v114, v115);
    v117 = v125;
    sub_243B16F2C(v113, v125, &qword_27EDA1750, &qword_243B19A68);
    v118 = 0;
    if ((*(v112 + 48))(v117, 1, v111) != 1)
    {
      v118 = sub_243B18CAC();
      (*(v112 + 8))(v117, v111);
    }

    v119 = sub_243B18C6C();
    v127[2](v127, v118, 0, v119);

    sub_243B0A49C(v113, &qword_27EDA1750, &qword_243B19A68);
  }
}

void sub_243B0E2B8(uint64_t a1, void *a2, _TtC12CloudSharing15InitiateSharing *a3, _TtC12CloudSharing15InitiateSharing *a4, uint64_t a5, uint64_t a6, int a7, const void *a8)
{
  v148 = a7;
  v149 = a5;
  v150 = a6;
  v146 = a4;
  v12 = sub_243B18C1C();
  MEMORY[0x28223BE20](v12 - 8);
  v141 = &v138 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_243B18C2C();
  v142 = *(v14 - 8);
  v143 = v14;
  MEMORY[0x28223BE20](v14);
  v140 = &v138 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_243B18CDC();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v138 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v147 = swift_allocObject();
  *(v147 + 16) = a8;
  v144 = a8;
  _Block_copy(a8);
  if (qword_281509090 != -1)
  {
    swift_once();
  }

  v20 = sub_243B18D3C();
  __swift_project_value_buffer(v20, qword_281509098);
  v21 = *(v17 + 16);
  v145 = a1;
  v21(v19, a1, v16);
  v22 = sub_243B18D1C();
  v23 = sub_243B18EBC();
  v24 = os_log_type_enabled(v22, v23);
  v151 = a3;
  if (v24)
  {
    v25 = swift_slowAlloc();
    v139 = a2;
    v26 = v25;
    v27 = swift_slowAlloc();
    aBlock[0] = v27;
    *v26 = 136315138;
    sub_243B0A398(&qword_27EDA1748, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v28 = sub_243B18F4C();
    v30 = v29;
    (*(v17 + 8))(v19, v16);
    v31 = sub_243B09C80(v28, v30, aBlock);
    v30, v32, v33, v34, v35, v36, v37, v38;
    *(v26 + 4) = v31;
    _os_log_impl(&dword_243AF9000, v22, v23, "callForSharingURLAddToShare sharingURL: %s", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v27);
    v39 = v27;
    a3 = v151;
    MEMORY[0x245D489D0](v39, -1, -1);
    v40 = v26;
    a2 = v139;
    MEMORY[0x245D489D0](v40, -1, -1);
  }

  else
  {

    (*(v17 + 8))(v19, v16);
  }

  v41 = a2;
  v42 = sub_243B18D1C();
  v43 = sub_243B18EBC();

  v44 = os_log_type_enabled(v42, v43);
  v45 = v149;
  v46 = v146;
  if (v44)
  {
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    *v47 = 138412290;
    *(v47 + 4) = v41;
    *v48 = v41;
    v49 = v41;
    _os_log_impl(&dword_243AF9000, v42, v43, "callForSharingURLAddToShare containerSetupInfo: %@", v47, 0xCu);
    sub_243B0A49C(v48, &qword_27EDA1760, &qword_243B19A70);
    MEMORY[0x245D489D0](v48, -1, -1);
    MEMORY[0x245D489D0](v47, -1, -1);
  }

  v50 = sub_243B18D1C();
  v51 = sub_243B18E8C();
  a3, v52, v53, v54, v55, v56, v57, v58;
  if (os_log_type_enabled(v50, v51))
  {
    v59 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    aBlock[0] = v60;
    *v59 = 136315138;
    v61 = MEMORY[0x245D48400](a3, MEMORY[0x277D837D0]);
    v63 = v62;
    v64 = sub_243B09C80(v61, v62, aBlock);
    v63, v65, v66, v67, v68, v69, v70, v71;
    *(v59 + 4) = v64;
    _os_log_impl(&dword_243AF9000, v50, v51, "callForSharingURLAddToShare emailAddresses: %s", v59, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v60);
    MEMORY[0x245D489D0](v60, -1, -1);
    MEMORY[0x245D489D0](v59, -1, -1);
  }

  v72 = sub_243B18D1C();
  v73 = sub_243B18E8C();
  v46, v74, v75, v76, v77, v78, v79, v80;
  if (os_log_type_enabled(v72, v73))
  {
    v81 = swift_slowAlloc();
    v82 = swift_slowAlloc();
    aBlock[0] = v82;
    *v81 = 136315138;
    v83 = MEMORY[0x245D48400](v46, MEMORY[0x277D837D0]);
    v85 = v84;
    v86 = sub_243B09C80(v83, v84, aBlock);
    v85, v87, v88, v89, v90, v91, v92, v93;
    *(v81 + 4) = v86;
    _os_log_impl(&dword_243AF9000, v72, v73, "callForSharingURLAddToShare phoneNumbers: %s", v81, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v82);
    MEMORY[0x245D489D0](v82, -1, -1);
    MEMORY[0x245D489D0](v81, -1, -1);
  }

  v94 = sub_243B18D1C();
  v95 = sub_243B18E8C();
  if (os_log_type_enabled(v94, v95))
  {
    v96 = swift_slowAlloc();
    v97 = swift_slowAlloc();
    v152 = v45;
    aBlock[0] = v97;
    *v96 = 136315138;
    type metadata accessor for ParticipantPermission(0);
    v98 = sub_243B18D9C();
    v100 = v99;
    v101 = sub_243B09C80(v98, v99, aBlock);
    v100, v102, v103, v104, v105, v106, v107, v108;
    *(v96 + 4) = v101;
    _os_log_impl(&dword_243AF9000, v94, v95, "callForSharingURLAddToShare accessType: %s", v96, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v97);
    MEMORY[0x245D489D0](v97, -1, -1);
    MEMORY[0x245D489D0](v96, -1, -1);
  }

  v109 = sub_243B18D1C();
  v110 = sub_243B18E8C();
  if (os_log_type_enabled(v109, v110))
  {
    v111 = swift_slowAlloc();
    v112 = swift_slowAlloc();
    *v111 = 136315138;
    v152 = v150;
    aBlock[0] = v112;
    type metadata accessor for ParticipantPermission(0);
    v113 = sub_243B18D9C();
    v115 = v114;
    v116 = sub_243B09C80(v113, v114, aBlock);
    v115, v117, v118, v119, v120, v121, v122, v123;
    *(v111 + 4) = v116;
    _os_log_impl(&dword_243AF9000, v109, v110, "callForSharingURLAddToShare permissionType: %s", v111, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v112);
    MEMORY[0x245D489D0](v112, -1, -1);
    MEMORY[0x245D489D0](v111, -1, -1);
  }

  v124 = v148;
  v125 = sub_243B18D1C();
  v126 = sub_243B18E8C();
  if (os_log_type_enabled(v125, v126))
  {
    v127 = swift_slowAlloc();
    *v127 = 67109120;
    *(v127 + 4) = v124 & 1;
    _os_log_impl(&dword_243AF9000, v125, v126, "callForSharingURLAddToShare allowOthersToInvite: %{BOOL}d", v127, 8u);
    MEMORY[0x245D489D0](v127, -1, -1);
  }

  if (qword_281509060 != -1)
  {
    swift_once();
  }

  v128 = qword_2815090B8;
  if (qword_2815090B8)
  {
    swift_unknownObjectRetain();
    v129 = sub_243B18CAC();
    v130 = sub_243B18E2C();
    v131 = sub_243B18E2C();
    v132 = swift_allocObject();
    v133 = v147;
    *(v132 + 16) = sub_243B16E60;
    *(v132 + 24) = v133;
    aBlock[4] = sub_243B1713C;
    aBlock[5] = v132;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_243B00C60;
    aBlock[3] = &block_descriptor_314;
    v134 = _Block_copy(aBlock);

    LOBYTE(v137) = v124 & 1;
    [v128 addToShareFromSharingURL:v129 containerSetupInfo:v41 emailAddresses:v130 phoneNumbers:v131 accessType:v45 permissionType:v150 allowOthersToInvite:v137 withReply:v134];
    _Block_release(v134);

    swift_unknownObjectRelease();
  }

  else
  {
    sub_243B18C0C();
    sub_243B0A228(MEMORY[0x277D84F90]);
    sub_243B0A398(&qword_27EDA1738, MEMORY[0x277CC8620], MEMORY[0x277CC8618]);
    v135 = v140;
    v136 = v143;
    sub_243B18C5C();
    v130 = sub_243B18BFC();
    (*(v142 + 8))(v135, v136);
    v131 = sub_243B18C6C();
    (*(v144 + 2))(v144, 0, 0, v131);
  }
}

void sub_243B0ED4C(uint64_t a1, void *a2, void (**a3)(const void *, void, void *))
{
  v54 = a2;
  v5 = sub_243B18C1C();
  MEMORY[0x28223BE20](v5 - 8);
  v49 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_243B18C2C();
  v50 = *(v7 - 8);
  v51 = v7;
  MEMORY[0x28223BE20](v7);
  v48 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_243B18CDC();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  v52 = a3;
  _Block_copy(a3);
  if (qword_281509090 != -1)
  {
    swift_once();
  }

  v14 = sub_243B18D3C();
  __swift_project_value_buffer(v14, qword_281509098);
  v15 = *(v10 + 16);
  v53 = a1;
  v15(v12, a1, v9);
  v16 = sub_243B18D1C();
  v17 = sub_243B18EBC();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v47 = v13;
    v20 = v19;
    aBlock[0] = v19;
    *v18 = 136315138;
    sub_243B0A398(&qword_27EDA1748, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v21 = sub_243B18F4C();
    v23 = v22;
    (*(v10 + 8))(v12, v9);
    v24 = sub_243B09C80(v21, v23, aBlock);
    v23, v25, v26, v27, v28, v29, v30, v31;
    *(v18 + 4) = v24;
    _os_log_impl(&dword_243AF9000, v16, v17, "callForSharingURLRemoveShare sharingURL: %s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v20);
    v32 = v20;
    v13 = v47;
    MEMORY[0x245D489D0](v32, -1, -1);
    MEMORY[0x245D489D0](v18, -1, -1);
  }

  else
  {

    (*(v10 + 8))(v12, v9);
  }

  v33 = v54;
  v34 = v54;
  v35 = sub_243B18D1C();
  v36 = sub_243B18EBC();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    *v37 = 138412290;
    *(v37 + 4) = v34;
    *v38 = v33;
    v39 = v34;
    _os_log_impl(&dword_243AF9000, v35, v36, "callForSharingURLRemoveShare containerSetupInfo: %@", v37, 0xCu);
    sub_243B0A49C(v38, &qword_27EDA1760, &qword_243B19A70);
    MEMORY[0x245D489D0](v38, -1, -1);
    MEMORY[0x245D489D0](v37, -1, -1);
  }

  if (qword_281509060 != -1)
  {
    swift_once();
  }

  v40 = qword_2815090B8;
  if (qword_2815090B8)
  {
    swift_unknownObjectRetain();
    v41 = sub_243B18CAC();
    v42 = swift_allocObject();
    *(v42 + 16) = sub_243B17070;
    *(v42 + 24) = v13;
    aBlock[4] = sub_243B17060;
    aBlock[5] = v42;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_243B014FC;
    aBlock[3] = &block_descriptor_304;
    v43 = _Block_copy(aBlock);

    [v40 removeFromShareFromSharingURL:v41 containerSetupInfo:v34 withReply:v43];
    _Block_release(v43);

    swift_unknownObjectRelease();
  }

  else
  {
    sub_243B18C0C();
    sub_243B0A228(MEMORY[0x277D84F90]);
    sub_243B0A398(&qword_27EDA1738, MEMORY[0x277CC8620], MEMORY[0x277CC8618]);
    v44 = v48;
    v45 = v51;
    sub_243B18C5C();
    v46 = sub_243B18BFC();
    (*(v50 + 8))(v44, v45);
    v41 = sub_243B18C6C();
    v52[2](v52, 0, v41);
  }
}

void sub_243B0F37C(void *a1, void *a2, void (**a3)(void, void, void))
{
  v6 = sub_243B18C1C();
  MEMORY[0x28223BE20](v6 - 8);
  v31[1] = v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_243B18C2C();
  v32 = *(v8 - 8);
  v33 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = swift_allocObject();
  *(v11 + 16) = a3;
  _Block_copy(a3);
  if (qword_281509090 != -1)
  {
    swift_once();
  }

  v12 = sub_243B18D3C();
  __swift_project_value_buffer(v12, qword_281509098);
  v13 = a1;
  v14 = sub_243B18D1C();
  v15 = sub_243B18EBC();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v16 = 138412290;
    *(v16 + 4) = v13;
    *v17 = v13;
    v18 = v13;
    _os_log_impl(&dword_243AF9000, v14, v15, "callForRemoveShare share: %@", v16, 0xCu);
    sub_243B0A49C(v17, &qword_27EDA1760, &qword_243B19A70);
    MEMORY[0x245D489D0](v17, -1, -1);
    MEMORY[0x245D489D0](v16, -1, -1);
  }

  v19 = a2;
  v20 = sub_243B18D1C();
  v21 = sub_243B18EBC();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *v22 = 138412290;
    *(v22 + 4) = v19;
    *v23 = a2;
    v24 = v19;
    _os_log_impl(&dword_243AF9000, v20, v21, "callForRemoveShare containerSetupInfo: %@", v22, 0xCu);
    sub_243B0A49C(v23, &qword_27EDA1760, &qword_243B19A70);
    MEMORY[0x245D489D0](v23, -1, -1);
    MEMORY[0x245D489D0](v22, -1, -1);
  }

  if (qword_281509060 != -1)
  {
    swift_once();
  }

  v25 = qword_2815090B8;
  if (qword_2815090B8)
  {
    v26 = swift_allocObject();
    *(v26 + 16) = sub_243B17070;
    *(v26 + 24) = v11;
    aBlock[4] = sub_243B17060;
    aBlock[5] = v26;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_243B014FC;
    aBlock[3] = &block_descriptor_293;
    v27 = _Block_copy(aBlock);
    swift_unknownObjectRetain();

    [v25 removeFromShare:v13 containerSetupInfo:v19 withReply:v27];
    _Block_release(v27);

    swift_unknownObjectRelease();
  }

  else
  {
    sub_243B18C0C();
    sub_243B0A228(MEMORY[0x277D84F90]);
    sub_243B0A398(&qword_27EDA1738, MEMORY[0x277CC8620], MEMORY[0x277CC8618]);
    v28 = v33;
    sub_243B18C5C();
    v29 = sub_243B18BFC();
    (*(v32 + 8))(v10, v28);
    v30 = sub_243B18C6C();
    (a3)[2](a3, 0, v30);
  }
}

void sub_243B0F864(uint64_t a1, void (**a2)(void, void, void))
{
  v4 = sub_243B18C1C();
  MEMORY[0x28223BE20](v4 - 8);
  v6 = (v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_243B18C2C();
  v45 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v44 = v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_243B18CDC();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  _Block_copy(a2);
  if (qword_281509090 != -1)
  {
    swift_once();
  }

  v14 = sub_243B18D3C();
  __swift_project_value_buffer(v14, qword_281509098);
  v15 = *(v10 + 16);
  v46 = a1;
  v15(v12, a1, v9);
  v16 = sub_243B18D1C();
  v17 = sub_243B18EBC();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v43 = a2;
    v19 = v18;
    v42[0] = swift_slowAlloc();
    aBlock[0] = v42[0];
    *v19 = 136315138;
    sub_243B0A398(&qword_27EDA1748, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v20 = sub_243B18F4C();
    v42[1] = v6;
    v21 = v13;
    v22 = v7;
    v24 = v23;
    (*(v10 + 8))(v12, v9);
    v25 = sub_243B09C80(v20, v24, aBlock);
    v26 = v24;
    v7 = v22;
    v13 = v21;
    v26, v27, v28, v29, v30, v31, v32, v33;
    *(v19 + 4) = v25;
    _os_log_impl(&dword_243AF9000, v16, v17, "callForFileURLRemoveShare url: %s", v19, 0xCu);
    v34 = v42[0];
    __swift_destroy_boxed_opaque_existential_0(v42[0]);
    MEMORY[0x245D489D0](v34, -1, -1);
    v35 = v19;
    a2 = v43;
    MEMORY[0x245D489D0](v35, -1, -1);
  }

  else
  {

    (*(v10 + 8))(v12, v9);
  }

  if (qword_281509060 != -1)
  {
    swift_once();
  }

  v36 = qword_2815090B8;
  if (qword_2815090B8)
  {
    swift_unknownObjectRetain();
    v37 = sub_243B18CAC();
    v38 = swift_allocObject();
    *(v38 + 16) = sub_243B16E58;
    *(v38 + 24) = v13;
    aBlock[4] = sub_243B17060;
    aBlock[5] = v38;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_243B014FC;
    aBlock[3] = &block_descriptor_282;
    v39 = _Block_copy(aBlock);

    [v36 removeFromShareForFileURL:v37 withReply:v39];
    _Block_release(v39);

    swift_unknownObjectRelease();
  }

  else
  {
    sub_243B18C0C();
    sub_243B0A228(MEMORY[0x277D84F90]);
    sub_243B0A398(&qword_27EDA1738, MEMORY[0x277CC8620], MEMORY[0x277CC8618]);
    v40 = v44;
    sub_243B18C5C();
    v41 = sub_243B18BFC();
    (*(v45 + 8))(v40, v7);
    v37 = sub_243B18C6C();
    (a2)[2](a2, 0, v37);
  }
}

void sub_243B0FDCC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _TtC12CloudSharing15InitiateSharing *a5, uint64_t a6, unint64_t a7, const void *a8)
{
  v123 = a6;
  v124 = a7;
  v126 = a3;
  v120 = a2;
  v12 = sub_243B18C1C();
  MEMORY[0x28223BE20](v12 - 8);
  v110 = &v108 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = sub_243B18C2C();
  v111 = *(v112 - 8);
  MEMORY[0x28223BE20](v112);
  v109 = &v108 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA1750, &qword_243B19A68);
  v15 = MEMORY[0x28223BE20](v115);
  v118 = &v108 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v114 = &v108 - v18;
  MEMORY[0x28223BE20](v17);
  v20 = &v108 - v19;
  v21 = sub_243B18CDC();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = &v108 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = swift_allocObject();
  *(v125 + 16) = a8;
  v113 = a8;
  _Block_copy(a8);
  if (qword_281509090 != -1)
  {
    swift_once();
  }

  v25 = sub_243B18D3C();
  __swift_project_value_buffer(v25, qword_281509098);
  v26 = *(v22 + 16);
  v119 = a1;
  v26(v24, a1, v21);
  v27 = sub_243B18D1C();
  v28 = sub_243B18EBC();
  v29 = os_log_type_enabled(v27, v28);
  v121 = a4;
  v122 = a5;
  v116 = v22;
  v117 = v21;
  if (v29)
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    aBlock[0] = v31;
    *v30 = 136315138;
    sub_243B0A398(&qword_27EDA1748, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v32 = sub_243B18F4C();
    v33 = v21;
    v35 = v34;
    v108 = *(v22 + 8);
    v108(v24, v33);
    v36 = sub_243B09C80(v32, v35, aBlock);
    v35, v37, v38, v39, v40, v41, v42, v43;
    *(v30 + 4) = v36;
    _os_log_impl(&dword_243AF9000, v27, v28, "callForMailContent sharingURL: %s", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v31);
    MEMORY[0x245D489D0](v31, -1, -1);
    MEMORY[0x245D489D0](v30, -1, -1);
  }

  else
  {

    v108 = *(v22 + 8);
    v108(v24, v21);
  }

  v44 = v120;
  v45 = sub_243B18D1C();
  v46 = sub_243B18EBC();

  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    *v47 = 138412290;
    *(v47 + 4) = v44;
    *v48 = v44;
    v49 = v44;
    _os_log_impl(&dword_243AF9000, v45, v46, "callForMailContent share: %@", v47, 0xCu);
    sub_243B0A49C(v48, &qword_27EDA1760, &qword_243B19A70);
    MEMORY[0x245D489D0](v48, -1, -1);
    MEMORY[0x245D489D0](v47, -1, -1);
  }

  sub_243B16F2C(v126, v20, &qword_27EDA1750, &qword_243B19A68);
  v50 = sub_243B18D1C();
  v51 = sub_243B18EBC();
  v52 = os_log_type_enabled(v50, v51);
  v120 = v44;
  if (v52)
  {
    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    aBlock[0] = v54;
    *v53 = 136315138;
    sub_243B16F2C(v20, v114, &qword_27EDA1750, &qword_243B19A68);
    v55 = sub_243B18D9C();
    v57 = v56;
    sub_243B0A49C(v20, &qword_27EDA1750, &qword_243B19A68);
    v58 = sub_243B09C80(v55, v57, aBlock);
    v57, v59, v60, v61, v62, v63, v64, v65;
    *(v53 + 4) = v58;
    _os_log_impl(&dword_243AF9000, v50, v51, "callForMailContent fileURL: %s", v53, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v54);
    MEMORY[0x245D489D0](v54, -1, -1);
    MEMORY[0x245D489D0](v53, -1, -1);
  }

  else
  {

    sub_243B0A49C(v20, &qword_27EDA1750, &qword_243B19A68);
  }

  v67 = v123;
  v66 = v124;
  v69 = v121;
  v68 = v122;

  v70 = sub_243B18D1C();
  v71 = sub_243B18E8C();
  v68, v72, v73, v74, v75, v76, v77, v78;
  if (os_log_type_enabled(v70, v71))
  {
    v79 = swift_slowAlloc();
    v80 = swift_slowAlloc();
    aBlock[0] = v80;
    *v79 = 136315138;
    *(v79 + 4) = sub_243B09C80(v69, v68, aBlock);
    _os_log_impl(&dword_243AF9000, v70, v71, "callForMailContent appName: %s", v79, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v80);
    MEMORY[0x245D489D0](v80, -1, -1);
    MEMORY[0x245D489D0](v79, -1, -1);
  }

  sub_243B0A54C(v67, v66);
  v81 = sub_243B18D1C();
  v82 = sub_243B18E9C();
  sub_243B0A5A0(v67, v66);
  if (os_log_type_enabled(v81, v82))
  {
    v83 = swift_slowAlloc();
    v84 = swift_slowAlloc();
    aBlock[0] = v84;
    *v83 = 136315138;
    v85 = sub_243B18CEC();
    v87 = v86;
    v88 = sub_243B09C80(v85, v86, aBlock);
    v87, v89, v90, v91, v92, v93, v94, v95;
    *(v83 + 4) = v88;
    _os_log_impl(&dword_243AF9000, v81, v82, "callForMailContent appIconData: %s", v83, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v84);
    MEMORY[0x245D489D0](v84, -1, -1);
    MEMORY[0x245D489D0](v83, -1, -1);
  }

  if (qword_281509060 != -1)
  {
    swift_once();
  }

  v96 = qword_2815090B8;
  if (qword_2815090B8)
  {
    swift_unknownObjectRetain();
    v97 = sub_243B18CAC();
    v98 = v118;
    sub_243B16F2C(v126, v118, &qword_27EDA1750, &qword_243B19A68);
    v99 = v117;
    if ((*(v116 + 48))(v98, 1, v117) == 1)
    {
      v100 = 0;
    }

    else
    {
      v100 = sub_243B18CAC();
      v108(v98, v99);
    }

    v103 = sub_243B18D5C();
    v104 = sub_243B18CFC();
    v105 = swift_allocObject();
    v106 = v125;
    *(v105 + 16) = sub_243B16E50;
    *(v105 + 24) = v106;
    aBlock[4] = sub_243B17078;
    aBlock[5] = v105;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_243B02A60;
    aBlock[3] = &block_descriptor_272;
    v107 = _Block_copy(aBlock);

    [v96 mailContentFromSharingURL:v97 share:v120 fileURL:v100 appName:v103 appIconData:v104 withReply:v107];
    _Block_release(v107);

    swift_unknownObjectRelease();
  }

  else
  {
    sub_243B18C0C();
    sub_243B0A228(MEMORY[0x277D84F90]);
    sub_243B0A398(&qword_27EDA1738, MEMORY[0x277CC8620], MEMORY[0x277CC8618]);
    v101 = v109;
    v102 = v112;
    sub_243B18C5C();
    v103 = sub_243B18BFC();
    (*(v111 + 8))(v101, v102);
    v104 = sub_243B18C6C();
    (*(v113 + 2))(v113, 0, 0, v104);
  }
}

void sub_243B10898(uint64_t a1, void *a2, void (**a3)(const void *, void, void *))
{
  v54 = a2;
  v5 = sub_243B18C1C();
  MEMORY[0x28223BE20](v5 - 8);
  v49 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_243B18C2C();
  v50 = *(v7 - 8);
  v51 = v7;
  MEMORY[0x28223BE20](v7);
  v48 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_243B18CDC();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  v52 = a3;
  _Block_copy(a3);
  if (qword_281509090 != -1)
  {
    swift_once();
  }

  v14 = sub_243B18D3C();
  __swift_project_value_buffer(v14, qword_281509098);
  v15 = *(v10 + 16);
  v53 = a1;
  v15(v12, a1, v9);
  v16 = sub_243B18D1C();
  v17 = sub_243B18EBC();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v47 = v13;
    v20 = v19;
    aBlock[0] = v19;
    *v18 = 136315138;
    sub_243B0A398(&qword_27EDA1748, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v21 = sub_243B18F4C();
    v23 = v22;
    (*(v10 + 8))(v12, v9);
    v24 = sub_243B09C80(v21, v23, aBlock);
    v23, v25, v26, v27, v28, v29, v30, v31;
    *(v18 + 4) = v24;
    _os_log_impl(&dword_243AF9000, v16, v17, "callForMetadataFromShareURL sharingURL: %s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v20);
    v32 = v20;
    v13 = v47;
    MEMORY[0x245D489D0](v32, -1, -1);
    MEMORY[0x245D489D0](v18, -1, -1);
  }

  else
  {

    (*(v10 + 8))(v12, v9);
  }

  v33 = v54;
  v34 = v54;
  v35 = sub_243B18D1C();
  v36 = sub_243B18EBC();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    *v37 = 138412290;
    *(v37 + 4) = v34;
    *v38 = v33;
    v39 = v34;
    _os_log_impl(&dword_243AF9000, v35, v36, "callForMetadataFromShareURL containerSetupInfo: %@", v37, 0xCu);
    sub_243B0A49C(v38, &qword_27EDA1760, &qword_243B19A70);
    MEMORY[0x245D489D0](v38, -1, -1);
    MEMORY[0x245D489D0](v37, -1, -1);
  }

  if (qword_281509060 != -1)
  {
    swift_once();
  }

  v40 = qword_2815090B8;
  if (qword_2815090B8)
  {
    swift_unknownObjectRetain();
    v41 = sub_243B18CAC();
    v42 = swift_allocObject();
    *(v42 + 16) = sub_243B16E48;
    *(v42 + 24) = v13;
    aBlock[4] = sub_243B17068;
    aBlock[5] = v42;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_243B0342C;
    aBlock[3] = &block_descriptor_262;
    v43 = _Block_copy(aBlock);

    [v40 getMetadataFromShareFromSharingURL:v41 containerSetupInfo:v34 withReply:v43];
    _Block_release(v43);

    swift_unknownObjectRelease();
  }

  else
  {
    sub_243B18C0C();
    sub_243B0A228(MEMORY[0x277D84F90]);
    sub_243B0A398(&qword_27EDA1738, MEMORY[0x277CC8620], MEMORY[0x277CC8618]);
    v44 = v48;
    v45 = v51;
    sub_243B18C5C();
    v46 = sub_243B18BFC();
    (*(v50 + 8))(v44, v45);
    v41 = sub_243B18C6C();
    v52[2](v52, 0, v41);
  }
}

uint64_t sub_243B10EC8(void *a1, void *a2, void (**a3)(const void *, void *, void, void *))
{
  v6 = sub_243B18C1C();
  MEMORY[0x28223BE20](v6 - 8);
  v41[1] = v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_243B18C2C();
  v42 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA1750, &qword_243B19A68);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v43 = v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v45 = v41 - v14;
  v15 = swift_allocObject();
  *(v15 + 16) = a3;
  v44 = a3;
  _Block_copy(a3);
  if (qword_281509090 != -1)
  {
    swift_once();
  }

  v16 = sub_243B18D3C();
  __swift_project_value_buffer(v16, qword_281509098);
  v17 = a1;
  v18 = sub_243B18D1C();
  v19 = sub_243B18EBC();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *v20 = 138412290;
    *(v20 + 4) = v17;
    *v21 = v17;
    v22 = v17;
    _os_log_impl(&dword_243AF9000, v18, v19, "callForUpdateShare share: %@", v20, 0xCu);
    sub_243B0A49C(v21, &qword_27EDA1760, &qword_243B19A70);
    MEMORY[0x245D489D0](v21, -1, -1);
    MEMORY[0x245D489D0](v20, -1, -1);
  }

  v23 = a2;
  v24 = sub_243B18D1C();
  v25 = sub_243B18EBC();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v26 = 138412290;
    *(v26 + 4) = v23;
    *v27 = a2;
    v28 = v23;
    _os_log_impl(&dword_243AF9000, v24, v25, "callForUpdateShare containerSetupInfo: %@", v26, 0xCu);
    sub_243B0A49C(v27, &qword_27EDA1760, &qword_243B19A70);
    MEMORY[0x245D489D0](v27, -1, -1);
    MEMORY[0x245D489D0](v26, -1, -1);
  }

  if (qword_281509060 != -1)
  {
    swift_once();
  }

  v29 = qword_2815090B8;
  if (qword_2815090B8)
  {
    v30 = swift_allocObject();
    *(v30 + 16) = sub_243B1706C;
    *(v30 + 24) = v15;
    aBlock[4] = sub_243B17134;
    aBlock[5] = v30;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_243AFE0C0;
    aBlock[3] = &block_descriptor_252;
    v31 = _Block_copy(aBlock);
    swift_unknownObjectRetain();

    [v29 updateShare:v17 containerSetupInfo:v23 withReply:v31];
    _Block_release(v31);

    return swift_unknownObjectRelease();
  }

  else
  {
    v33 = sub_243B18CDC();
    v34 = *(v33 - 8);
    v35 = v45;
    (*(v34 + 56))(v45, 1, 1, v33);
    sub_243B18C0C();
    sub_243B0A228(MEMORY[0x277D84F90]);
    sub_243B0A398(&qword_27EDA1738, MEMORY[0x277CC8620], MEMORY[0x277CC8618]);
    sub_243B18C5C();
    v36 = sub_243B18BFC();
    (*(v42 + 8))(v10, v8);
    v37 = v35;
    v38 = v43;
    sub_243B16F2C(v37, v43, &qword_27EDA1750, &qword_243B19A68);
    v39 = 0;
    if ((*(v34 + 48))(v38, 1, v33) != 1)
    {
      v39 = sub_243B18CAC();
      (*(v34 + 8))(v38, v33);
    }

    v40 = sub_243B18C6C();
    v44[2](v44, v39, 0, v40);

    sub_243B0A49C(v45, &qword_27EDA1750, &qword_243B19A68);
  }
}

void sub_243B11530(void *a1, void (**a2)(void, void, void))
{
  v4 = sub_243B18C1C();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = sub_243B18C2C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  _Block_copy(a2);
  if (qword_281509090 != -1)
  {
    swift_once();
  }

  v10 = sub_243B18D3C();
  __swift_project_value_buffer(v10, qword_281509098);
  v11 = a1;
  v12 = sub_243B18D1C();
  v13 = sub_243B18EBC();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v26 = v8;
    v15 = v6;
    v16 = v14;
    v17 = swift_slowAlloc();
    *v16 = 138412290;
    *(v16 + 4) = v11;
    *v17 = v11;
    v18 = v11;
    _os_log_impl(&dword_243AF9000, v12, v13, "callForCurrentUserSharingStatus share: %@", v16, 0xCu);
    sub_243B0A49C(v17, &qword_27EDA1760, &qword_243B19A70);
    MEMORY[0x245D489D0](v17, -1, -1);
    v19 = v16;
    v6 = v15;
    v8 = v26;
    MEMORY[0x245D489D0](v19, -1, -1);
  }

  if (qword_281509060 != -1)
  {
    swift_once();
  }

  v20 = qword_2815090B8;
  if (qword_2815090B8)
  {
    v21 = swift_allocObject();
    *(v21 + 16) = sub_243B17074;
    *(v21 + 24) = v9;
    aBlock[4] = sub_243B17064;
    aBlock[5] = v21;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_243B04060;
    aBlock[3] = &block_descriptor_241;
    v22 = _Block_copy(aBlock);
    swift_unknownObjectRetain();

    [v20 currentUserSharingStatusFor:v11 withReply:v22];
    _Block_release(v22);

    swift_unknownObjectRelease();
  }

  else
  {
    sub_243B18C0C();
    sub_243B0A228(MEMORY[0x277D84F90]);
    sub_243B0A398(&qword_27EDA1738, MEMORY[0x277CC8620], MEMORY[0x277CC8618]);
    sub_243B18C5C();
    v23 = sub_243B18BFC();
    (*(v6 + 8))(v8, v5);
    v24 = sub_243B18C6C();
    (a2)[2](a2, 0, v24);
  }
}

void sub_243B1196C(void *a1, void *a2, _TtC12CloudSharing15InitiateSharing *a3, _TtC12CloudSharing15InitiateSharing *a4, void (**a5)(void, void, void, void))
{
  v100 = a4;
  v101 = a3;
  v8 = sub_243B18C1C();
  MEMORY[0x28223BE20](v8 - 8);
  v93[1] = v93 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_243B18C2C();
  v94 = *(v10 - 8);
  v95 = v10;
  MEMORY[0x28223BE20](v10);
  v93[0] = v93 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA1750, &qword_243B19A68);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v96 = v93 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v98 = v93 - v15;
  v16 = swift_allocObject();
  *(v16 + 16) = a5;
  _Block_copy(a5);
  if (qword_281509090 != -1)
  {
    swift_once();
  }

  v17 = sub_243B18D3C();
  __swift_project_value_buffer(v17, qword_281509098);
  v18 = a1;
  v19 = sub_243B18D1C();
  v20 = sub_243B18EBC();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *v21 = 138412290;
    *(v21 + 4) = v18;
    *v22 = v18;
    v23 = v18;
    _os_log_impl(&dword_243AF9000, v19, v20, "callForAddParticipantsToShare share: %@", v21, 0xCu);
    sub_243B0A49C(v22, &qword_27EDA1760, &qword_243B19A70);
    MEMORY[0x245D489D0](v22, -1, -1);
    MEMORY[0x245D489D0](v21, -1, -1);
  }

  v24 = a2;
  v25 = sub_243B18D1C();
  v26 = sub_243B18EBC();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *v27 = 138412290;
    *(v27 + 4) = v24;
    *v28 = v24;
    v29 = v24;
    _os_log_impl(&dword_243AF9000, v25, v26, "callForAddParticipantsToShare containerSetupInfo: %@", v27, 0xCu);
    sub_243B0A49C(v28, &qword_27EDA1760, &qword_243B19A70);
    MEMORY[0x245D489D0](v28, -1, -1);
    MEMORY[0x245D489D0](v27, -1, -1);
  }

  v99 = v24;
  v97 = v18;

  v30 = v101;

  v31 = sub_243B18D1C();
  v32 = sub_243B18E8C();
  v30, v33, v34, v35, v36, v37, v38, v39;
  if (os_log_type_enabled(v31, v32))
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    aBlock[0] = v41;
    *v40 = 136315138;
    v42 = MEMORY[0x245D48400](v30, MEMORY[0x277D837D0]);
    v44 = v43;
    v45 = a5;
    v46 = v16;
    v47 = sub_243B09C80(v42, v43, aBlock);
    v44, v48, v49, v50, v51, v52, v53, v54;
    *(v40 + 4) = v47;
    v16 = v46;
    a5 = v45;
    _os_log_impl(&dword_243AF9000, v31, v32, "callForAddParticipantsToShare emailAddresses: %s", v40, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v41);
    MEMORY[0x245D489D0](v41, -1, -1);
    MEMORY[0x245D489D0](v40, -1, -1);
  }

  v55 = v100;

  v56 = sub_243B18D1C();
  v57 = sub_243B18E8C();
  v55, v58, v59, v60, v61, v62, v63, v64;
  if (os_log_type_enabled(v56, v57))
  {
    v65 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    aBlock[0] = v66;
    *v65 = 136315138;
    v67 = MEMORY[0x245D48400](v55, MEMORY[0x277D837D0]);
    v69 = v68;
    v70 = sub_243B09C80(v67, v68, aBlock);
    v69, v71, v72, v73, v74, v75, v76, v77;
    *(v65 + 4) = v70;
    _os_log_impl(&dword_243AF9000, v56, v57, "callForAddParticipantsToShare phoneNumbers: %s", v65, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v66);
    MEMORY[0x245D489D0](v66, -1, -1);
    MEMORY[0x245D489D0](v65, -1, -1);
  }

  v78 = v99;
  if (qword_281509060 != -1)
  {
    swift_once();
  }

  v79 = qword_2815090B8;
  if (qword_2815090B8)
  {
    swift_unknownObjectRetain();
    v80 = sub_243B18E2C();
    v81 = sub_243B18E2C();
    v82 = swift_allocObject();
    *(v82 + 16) = sub_243B1706C;
    *(v82 + 24) = v16;
    aBlock[4] = sub_243B17134;
    aBlock[5] = v82;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_243AFE0C0;
    aBlock[3] = &block_descriptor_231;
    v83 = _Block_copy(aBlock);

    [v79 addParticipantsToShare:v97 containerSetupInfo:v78 emailAddresses:v80 phoneNumbers:v81 withReply:v83];
    _Block_release(v83);

    swift_unknownObjectRelease();
  }

  else
  {
    v84 = sub_243B18CDC();
    v85 = *(v84 - 8);
    v86 = v98;
    (*(v85 + 56))(v98, 1, 1, v84);
    sub_243B18C0C();
    sub_243B0A228(MEMORY[0x277D84F90]);
    sub_243B0A398(&qword_27EDA1738, MEMORY[0x277CC8620], MEMORY[0x277CC8618]);
    v87 = v93[0];
    v88 = v95;
    sub_243B18C5C();
    v89 = sub_243B18BFC();
    (*(v94 + 8))(v87, v88);
    v90 = v96;
    sub_243B16F2C(v86, v96, &qword_27EDA1750, &qword_243B19A68);
    v91 = 0;
    if ((*(v85 + 48))(v90, 1, v84) != 1)
    {
      v91 = sub_243B18CAC();
      (*(v85 + 8))(v90, v84);
    }

    v92 = sub_243B18C6C();
    (a5)[2](a5, v91, 0, v92);

    sub_243B0A49C(v98, &qword_27EDA1750, &qword_243B19A68);
  }
}

void sub_243B121F4(void *a1, uint64_t a2, _TtC12CloudSharing15InitiateSharing *a3, _TtC12CloudSharing15InitiateSharing *a4, uint64_t a5, int a6, void (**a7)(const void *, void *, void, void *))
{
  v113 = a6;
  v116 = a5;
  v112 = a2;
  v11 = sub_243B18C1C();
  MEMORY[0x28223BE20](v11 - 8);
  v106[1] = v106 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_243B18C2C();
  v107 = *(v13 - 8);
  v108 = v13;
  MEMORY[0x28223BE20](v13);
  v106[0] = v106 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA1750, &qword_243B19A68);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v109 = v106 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v110 = v106 - v18;
  v114 = swift_allocObject();
  *(v114 + 16) = a7;
  v111 = a7;
  _Block_copy(a7);
  if (qword_281509090 != -1)
  {
    swift_once();
  }

  v19 = sub_243B18D3C();
  __swift_project_value_buffer(v19, qword_281509098);
  v20 = a1;
  v21 = sub_243B18D1C();
  v22 = sub_243B18EBC();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v23 = 138412290;
    *(v23 + 4) = v20;
    *v24 = v20;
    v25 = v20;
    _os_log_impl(&dword_243AF9000, v21, v22, "callForAddParticipantsToShare urlWrapper: %@", v23, 0xCu);
    sub_243B0A49C(v24, &qword_27EDA1760, &qword_243B19A70);
    MEMORY[0x245D489D0](v24, -1, -1);
    MEMORY[0x245D489D0](v23, -1, -1);
  }

  v26 = sub_243B18D1C();
  v27 = sub_243B18E8C();
  a3, v28, v29, v30, v31, v32, v33, v34;
  v35 = os_log_type_enabled(v26, v27);
  v115 = a4;
  if (v35)
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    aBlock[0] = v37;
    *v36 = 136315138;
    v38 = MEMORY[0x245D48400](a3, MEMORY[0x277D837D0]);
    v40 = v39;
    v41 = sub_243B09C80(v38, v39, aBlock);
    v42 = v40;
    a4 = v115;
    v42, v43, v44, v45, v46, v47, v48, v49;
    *(v36 + 4) = v41;
    _os_log_impl(&dword_243AF9000, v26, v27, "callForAddParticipantsToShare emailAddresses: %s", v36, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v37);
    MEMORY[0x245D489D0](v37, -1, -1);
    MEMORY[0x245D489D0](v36, -1, -1);
  }

  v50 = sub_243B18D1C();
  v51 = sub_243B18E8C();
  a4, v52, v53, v54, v55, v56, v57, v58;
  if (os_log_type_enabled(v50, v51))
  {
    v59 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    aBlock[0] = v60;
    *v59 = 136315138;
    v61 = MEMORY[0x245D48400](a4, MEMORY[0x277D837D0]);
    v63 = v62;
    v64 = sub_243B09C80(v61, v62, aBlock);
    v63, v65, v66, v67, v68, v69, v70, v71;
    *(v59 + 4) = v64;
    _os_log_impl(&dword_243AF9000, v50, v51, "callForAddParticipantsToShare phoneNumbers: %s", v59, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v60);
    MEMORY[0x245D489D0](v60, -1, -1);
    MEMORY[0x245D489D0](v59, -1, -1);
  }

  v72 = sub_243B18D1C();
  v73 = sub_243B18E8C();
  if (os_log_type_enabled(v72, v73))
  {
    v74 = swift_slowAlloc();
    v75 = swift_slowAlloc();
    *v74 = 136315138;
    v117 = v116;
    aBlock[0] = v75;
    type metadata accessor for ParticipantPermission(0);
    v76 = sub_243B18D9C();
    v78 = v77;
    v79 = sub_243B09C80(v76, v77, aBlock);
    v78, v80, v81, v82, v83, v84, v85, v86;
    *(v74 + 4) = v79;
    _os_log_impl(&dword_243AF9000, v72, v73, "callForAddParticipantsToShare permissionType: %s", v74, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v75);
    MEMORY[0x245D489D0](v75, -1, -1);
    MEMORY[0x245D489D0](v74, -1, -1);
  }

  v87 = v113;
  v88 = sub_243B18D1C();
  v89 = sub_243B18E8C();
  if (os_log_type_enabled(v88, v89))
  {
    v90 = swift_slowAlloc();
    *v90 = 67109120;
    *(v90 + 4) = v87 & 1;
    _os_log_impl(&dword_243AF9000, v88, v89, "callForAddParticipantsToShare allowOthersToInvite: %{BOOL}d", v90, 8u);
    MEMORY[0x245D489D0](v90, -1, -1);
  }

  if (qword_281509060 != -1)
  {
    swift_once();
  }

  v91 = qword_2815090B8;
  if (qword_2815090B8)
  {
    swift_unknownObjectRetain();
    v92 = sub_243B18E2C();
    v93 = sub_243B18E2C();
    v94 = swift_allocObject();
    v95 = v114;
    *(v94 + 16) = sub_243B1706C;
    *(v94 + 24) = v95;
    aBlock[4] = sub_243B17134;
    aBlock[5] = v94;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_243AFE0C0;
    aBlock[3] = &block_descriptor_220;
    v96 = _Block_copy(aBlock);

    [v91 addParticipantsToShareWithURLWrapper:v20 share:v112 emailAddresses:v92 phoneNumbers:v93 permissionType:v116 allowOthersToInvite:v87 & 1 withReply:v96];
    _Block_release(v96);

    swift_unknownObjectRelease();
  }

  else
  {
    v97 = sub_243B18CDC();
    v98 = *(v97 - 8);
    v99 = v110;
    (*(v98 + 56))(v110, 1, 1, v97);
    sub_243B18C0C();
    sub_243B0A228(MEMORY[0x277D84F90]);
    sub_243B0A398(&qword_27EDA1738, MEMORY[0x277CC8620], MEMORY[0x277CC8618]);
    v100 = v106[0];
    v101 = v108;
    sub_243B18C5C();
    v102 = sub_243B18BFC();
    (*(v107 + 8))(v100, v101);
    v103 = v109;
    sub_243B16F2C(v99, v109, &qword_27EDA1750, &qword_243B19A68);
    v104 = 0;
    if ((*(v98 + 48))(v103, 1, v97) != 1)
    {
      v104 = sub_243B18CAC();
      (*(v98 + 8))(v103, v97);
    }

    v105 = sub_243B18C6C();
    v111[2](v111, v104, 0, v105);

    sub_243B0A49C(v99, &qword_27EDA1750, &qword_243B19A68);
  }
}

void sub_243B12B10(void *a1, uint64_t a2, _TtC12CloudSharing15InitiateSharing *a3, _TtC12CloudSharing15InitiateSharing *a4, _TtC12CloudSharing15InitiateSharing *a5, void (**a6)(const void *, void *, void, void *))
{
  v121 = a2;
  v11 = sub_243B18C1C();
  MEMORY[0x28223BE20](v11 - 8);
  v114[1] = v114 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_243B18C2C();
  v115 = *(v13 - 8);
  v116 = v13;
  MEMORY[0x28223BE20](v13);
  v114[0] = v114 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA1750, &qword_243B19A68);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v117 = v114 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v118 = v114 - v18;
  v123 = swift_allocObject();
  *(v123 + 16) = a6;
  v119 = a6;
  _Block_copy(a6);
  if (qword_281509090 != -1)
  {
    swift_once();
  }

  v19 = sub_243B18D3C();
  __swift_project_value_buffer(v19, qword_281509098);
  v20 = a1;
  v21 = sub_243B18D1C();
  v22 = sub_243B18EBC();

  v23 = os_log_type_enabled(v21, v22);
  v124 = a4;
  if (v23)
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *v24 = 138412290;
    *(v24 + 4) = v20;
    *v25 = v20;
    v26 = v20;
    _os_log_impl(&dword_243AF9000, v21, v22, "callForAddParticipantsToShare urlWrapper: %@", v24, 0xCu);
    sub_243B0A49C(v25, &qword_27EDA1760, &qword_243B19A70);
    v27 = v25;
    a4 = v124;
    MEMORY[0x245D489D0](v27, -1, -1);
    MEMORY[0x245D489D0](v24, -1, -1);
  }

  v120 = v20;

  v28 = sub_243B18D1C();
  v29 = sub_243B18E8C();
  a3, v30, v31, v32, v33, v34, v35, v36;
  v37 = os_log_type_enabled(v28, v29);
  v38 = a5;
  v122 = a3;
  if (v37)
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    aBlock[0] = v40;
    *v39 = 136315138;
    v41 = MEMORY[0x245D48400](a3, MEMORY[0x277D837D0]);
    v43 = v42;
    v44 = sub_243B09C80(v41, v42, aBlock);
    v43, v45, v46, v47, v48, v49, v50, v51;
    *(v39 + 4) = v44;
    _os_log_impl(&dword_243AF9000, v28, v29, "callForAddParticipantsToShare emailAddresses: %s", v39, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v40);
    v52 = v40;
    a4 = v124;
    MEMORY[0x245D489D0](v52, -1, -1);
    MEMORY[0x245D489D0](v39, -1, -1);
  }

  v53 = sub_243B18D1C();
  v54 = sub_243B18E8C();
  a4, v55, v56, v57, v58, v59, v60, v61;
  if (os_log_type_enabled(v53, v54))
  {
    v62 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    aBlock[0] = v63;
    *v62 = 136315138;
    v64 = MEMORY[0x245D48400](a4, MEMORY[0x277D837D0]);
    v66 = v65;
    v67 = sub_243B09C80(v64, v65, aBlock);
    v66, v68, v69, v70, v71, v72, v73, v74;
    *(v62 + 4) = v67;
    _os_log_impl(&dword_243AF9000, v53, v54, "callForAddParticipantsToShare phoneNumbers: %s", v62, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v63);
    MEMORY[0x245D489D0](v63, -1, -1);
    MEMORY[0x245D489D0](v62, -1, -1);
  }

  v75 = sub_243B18D1C();
  v76 = sub_243B18E8C();
  v38, v77, v78, v79, v80, v81, v82, v83;
  if (os_log_type_enabled(v75, v76))
  {
    v84 = swift_slowAlloc();
    v85 = swift_slowAlloc();
    aBlock[0] = v85;
    *v84 = 136315138;
    v86 = sub_243B16EE4(0, &qword_27EDA1758, 0x277CDC6D0);
    v87 = MEMORY[0x245D48400](v38, v86);
    v89 = v88;
    v90 = sub_243B09C80(v87, v88, aBlock);
    v89, v91, v92, v93, v94, v95, v96, v97;
    *(v84 + 4) = v90;
    _os_log_impl(&dword_243AF9000, v75, v76, "callForAddParticipantsToShare optionsGroups: %s", v84, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v85);
    MEMORY[0x245D489D0](v85, -1, -1);
    MEMORY[0x245D489D0](v84, -1, -1);
  }

  if (qword_281509060 != -1)
  {
    swift_once();
  }

  v98 = qword_2815090B8;
  if (qword_2815090B8)
  {
    swift_unknownObjectRetain();
    v99 = sub_243B18E2C();
    v100 = sub_243B18E2C();
    sub_243B16EE4(0, &qword_27EDA1758, 0x277CDC6D0);
    v101 = sub_243B18E2C();
    v102 = swift_allocObject();
    v103 = v123;
    *(v102 + 16) = sub_243B1706C;
    *(v102 + 24) = v103;
    aBlock[4] = sub_243B17134;
    aBlock[5] = v102;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_243AFE0C0;
    aBlock[3] = &block_descriptor_209;
    v104 = _Block_copy(aBlock);

    [v98 addParticipantsToShareWithURLWrapper:v120 share:v121 emailAddresses:v99 phoneNumbers:v100 optionsGroups:v101 withReply:v104];
    _Block_release(v104);

    swift_unknownObjectRelease();
  }

  else
  {
    v105 = sub_243B18CDC();
    v106 = *(v105 - 8);
    v107 = v118;
    (*(v106 + 56))(v118, 1, 1, v105);
    sub_243B18C0C();
    sub_243B0A228(MEMORY[0x277D84F90]);
    sub_243B0A398(&qword_27EDA1738, MEMORY[0x277CC8620], MEMORY[0x277CC8618]);
    v108 = v114[0];
    v109 = v116;
    sub_243B18C5C();
    v110 = sub_243B18BFC();
    (*(v115 + 8))(v108, v109);
    v111 = v117;
    sub_243B16F2C(v107, v117, &qword_27EDA1750, &qword_243B19A68);
    v112 = 0;
    if ((*(v106 + 48))(v111, 1, v105) != 1)
    {
      v112 = sub_243B18CAC();
      (*(v106 + 8))(v111, v105);
    }

    v113 = sub_243B18C6C();
    v119[2](v119, v112, 0, v113);

    sub_243B0A49C(v107, &qword_27EDA1750, &qword_243B19A68);
  }
}

void sub_243B13400(void *a1, void *a2, _TtC12CloudSharing15InitiateSharing *a3, _TtC12CloudSharing15InitiateSharing *a4, uint64_t a5, int a6, void (**a7)(const void *, void *, void, void *))
{
  v127 = a6;
  v129 = a5;
  v12 = sub_243B18C1C();
  MEMORY[0x28223BE20](v12 - 8);
  v118 = &v116 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_243B18C2C();
  v119 = *(v14 - 8);
  v120 = v14;
  MEMORY[0x28223BE20](v14);
  v117 = &v116 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA1750, &qword_243B19A68);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v121 = &v116 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v122 = &v116 - v19;
  v128 = swift_allocObject();
  *(v128 + 16) = a7;
  v123 = a7;
  _Block_copy(a7);
  if (qword_281509090 != -1)
  {
    swift_once();
  }

  v20 = sub_243B18D3C();
  __swift_project_value_buffer(v20, qword_281509098);
  v21 = a1;
  v22 = sub_243B18D1C();
  v23 = sub_243B18EBC();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *v24 = 138412290;
    *(v24 + 4) = v21;
    *v25 = v21;
    v26 = v21;
    _os_log_impl(&dword_243AF9000, v22, v23, "callForAddParticipantsToShare share: %@", v24, 0xCu);
    sub_243B0A49C(v25, &qword_27EDA1760, &qword_243B19A70);
    MEMORY[0x245D489D0](v25, -1, -1);
    MEMORY[0x245D489D0](v24, -1, -1);
  }

  v27 = a2;
  v28 = sub_243B18D1C();
  v29 = sub_243B18EBC();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    *v30 = 138412290;
    *(v30 + 4) = v27;
    *v31 = v27;
    v32 = v27;
    _os_log_impl(&dword_243AF9000, v28, v29, "callForAddParticipantsToShare containerSetupInfo: %@", v30, 0xCu);
    sub_243B0A49C(v31, &qword_27EDA1760, &qword_243B19A70);
    MEMORY[0x245D489D0](v31, -1, -1);
    MEMORY[0x245D489D0](v30, -1, -1);
  }

  v124 = v27;
  v126 = v21;

  v33 = sub_243B18D1C();
  v34 = sub_243B18E8C();
  a3, v35, v36, v37, v38, v39, v40, v41;
  v42 = os_log_type_enabled(v33, v34);
  v43 = a3;
  v44 = a4;
  v125 = v43;
  if (v42)
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    aBlock[0] = v46;
    *v45 = 136315138;
    v47 = MEMORY[0x245D48400](v43, MEMORY[0x277D837D0]);
    v49 = v48;
    v50 = sub_243B09C80(v47, v48, aBlock);
    v49, v51, v52, v53, v54, v55, v56, v57;
    *(v45 + 4) = v50;
    a4 = v44;
    _os_log_impl(&dword_243AF9000, v33, v34, "callForAddParticipantsToShare emailAddresses: %s", v45, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v46);
    MEMORY[0x245D489D0](v46, -1, -1);
    MEMORY[0x245D489D0](v45, -1, -1);
  }

  v58 = sub_243B18D1C();
  v59 = sub_243B18E8C();
  a4, v60, v61, v62, v63, v64, v65, v66;
  if (os_log_type_enabled(v58, v59))
  {
    v67 = swift_slowAlloc();
    v68 = swift_slowAlloc();
    aBlock[0] = v68;
    *v67 = 136315138;
    v69 = MEMORY[0x245D48400](a4, MEMORY[0x277D837D0]);
    v71 = v70;
    v72 = sub_243B09C80(v69, v70, aBlock);
    v71, v73, v74, v75, v76, v77, v78, v79;
    *(v67 + 4) = v72;
    _os_log_impl(&dword_243AF9000, v58, v59, "callForAddParticipantsToShare phoneNumbers: %s", v67, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v68);
    MEMORY[0x245D489D0](v68, -1, -1);
    MEMORY[0x245D489D0](v67, -1, -1);
  }

  v80 = sub_243B18D1C();
  v81 = sub_243B18E8C();
  if (os_log_type_enabled(v80, v81))
  {
    v82 = swift_slowAlloc();
    v83 = swift_slowAlloc();
    *v82 = 136315138;
    v130 = v129;
    aBlock[0] = v83;
    type metadata accessor for ParticipantPermission(0);
    v84 = sub_243B18D9C();
    v86 = v85;
    v87 = sub_243B09C80(v84, v85, aBlock);
    v86, v88, v89, v90, v91, v92, v93, v94;
    *(v82 + 4) = v87;
    _os_log_impl(&dword_243AF9000, v80, v81, "callForAddParticipantsToShare permissionType: %s", v82, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v83);
    MEMORY[0x245D489D0](v83, -1, -1);
    MEMORY[0x245D489D0](v82, -1, -1);
  }

  v95 = v127;
  v96 = v124;
  v97 = sub_243B18D1C();
  v98 = sub_243B18E8C();
  if (os_log_type_enabled(v97, v98))
  {
    v99 = swift_slowAlloc();
    *v99 = 67109120;
    *(v99 + 4) = v95 & 1;
    _os_log_impl(&dword_243AF9000, v97, v98, "callForAddParticipantsToShare allowOthersToInvite: %{BOOL}d", v99, 8u);
    MEMORY[0x245D489D0](v99, -1, -1);
  }

  v100 = v126;
  if (qword_281509060 != -1)
  {
    swift_once();
  }

  v101 = qword_2815090B8;
  if (qword_2815090B8)
  {
    swift_unknownObjectRetain();
    v102 = sub_243B18E2C();
    v103 = sub_243B18E2C();
    v104 = swift_allocObject();
    v105 = v128;
    *(v104 + 16) = sub_243B1706C;
    *(v104 + 24) = v105;
    aBlock[4] = sub_243B17134;
    aBlock[5] = v104;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_243AFE0C0;
    aBlock[3] = &block_descriptor_198;
    v106 = _Block_copy(aBlock);

    [v101 addParticipantsToShare:v100 containerSetupInfo:v96 emailAddresses:v102 phoneNumbers:v103 permissionType:v129 allowOthersToInvite:v95 & 1 withReply:v106];
    _Block_release(v106);

    swift_unknownObjectRelease();
  }

  else
  {
    v107 = sub_243B18CDC();
    v108 = *(v107 - 8);
    v109 = v122;
    (*(v108 + 56))(v122, 1, 1, v107);
    sub_243B18C0C();
    sub_243B0A228(MEMORY[0x277D84F90]);
    sub_243B0A398(&qword_27EDA1738, MEMORY[0x277CC8620], MEMORY[0x277CC8618]);
    v110 = v117;
    v111 = v120;
    sub_243B18C5C();
    v112 = sub_243B18BFC();
    (*(v119 + 8))(v110, v111);
    v113 = v121;
    sub_243B16F2C(v109, v121, &qword_27EDA1750, &qword_243B19A68);
    v114 = 0;
    if ((*(v108 + 48))(v113, 1, v107) != 1)
    {
      v114 = sub_243B18CAC();
      (*(v108 + 8))(v113, v107);
    }

    v115 = sub_243B18C6C();
    v123[2](v123, v114, 0, v115);

    sub_243B0A49C(v109, &qword_27EDA1750, &qword_243B19A68);
  }
}

void sub_243B13DF8(void *a1, void *a2, _TtC12CloudSharing15InitiateSharing *a3, _TtC12CloudSharing15InitiateSharing *a4, _TtC12CloudSharing15InitiateSharing *a5, void (**a6)(const void *, void *, void, void *))
{
  v131 = a4;
  v11 = sub_243B18C1C();
  MEMORY[0x28223BE20](v11 - 8);
  v122 = &v120 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_243B18C2C();
  v123 = *(v13 - 8);
  v124 = v13;
  MEMORY[0x28223BE20](v13);
  v121 = &v120 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA1750, &qword_243B19A68);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v125 = &v120 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v126 = &v120 - v18;
  v130 = swift_allocObject();
  *(v130 + 16) = a6;
  v127 = a6;
  _Block_copy(a6);
  if (qword_281509090 != -1)
  {
    swift_once();
  }

  v19 = sub_243B18D3C();
  __swift_project_value_buffer(v19, qword_281509098);
  v20 = a1;
  v21 = sub_243B18D1C();
  v22 = sub_243B18EBC();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v23 = 138412290;
    *(v23 + 4) = v20;
    *v24 = v20;
    v25 = v20;
    _os_log_impl(&dword_243AF9000, v21, v22, "callForAddParticipantsToShare share: %@", v23, 0xCu);
    sub_243B0A49C(v24, &qword_27EDA1760, &qword_243B19A70);
    MEMORY[0x245D489D0](v24, -1, -1);
    MEMORY[0x245D489D0](v23, -1, -1);
  }

  v26 = a2;
  v27 = sub_243B18D1C();
  v28 = sub_243B18EBC();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v29 = 138412290;
    *(v29 + 4) = v26;
    *v30 = v26;
    v31 = v26;
    _os_log_impl(&dword_243AF9000, v27, v28, "callForAddParticipantsToShare containerSetupInfo: %@", v29, 0xCu);
    sub_243B0A49C(v30, &qword_27EDA1760, &qword_243B19A70);
    MEMORY[0x245D489D0](v30, -1, -1);
    MEMORY[0x245D489D0](v29, -1, -1);
  }

  v128 = v26;
  v129 = v20;

  v32 = sub_243B18D1C();
  v33 = sub_243B18E8C();
  a3, v34, v35, v36, v37, v38, v39, v40;
  v41 = a3;
  v42 = a5;
  if (os_log_type_enabled(v32, v33))
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    aBlock[0] = v44;
    *v43 = 136315138;
    v45 = MEMORY[0x245D48400](v41, MEMORY[0x277D837D0]);
    v47 = v46;
    v48 = sub_243B09C80(v45, v46, aBlock);
    v47, v49, v50, v51, v52, v53, v54, v55;
    *(v43 + 4) = v48;
    _os_log_impl(&dword_243AF9000, v32, v33, "callForAddParticipantsToShare emailAddresses: %s", v43, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v44);
    MEMORY[0x245D489D0](v44, -1, -1);
    MEMORY[0x245D489D0](v43, -1, -1);
  }

  v56 = v131;

  v57 = sub_243B18D1C();
  v58 = sub_243B18E8C();
  v56, v59, v60, v61, v62, v63, v64, v65;
  if (os_log_type_enabled(v57, v58))
  {
    v66 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    aBlock[0] = v67;
    *v66 = 136315138;
    v68 = MEMORY[0x245D48400](v56, MEMORY[0x277D837D0]);
    v70 = v69;
    v71 = sub_243B09C80(v68, v69, aBlock);
    v70, v72, v73, v74, v75, v76, v77, v78;
    *(v66 + 4) = v71;
    _os_log_impl(&dword_243AF9000, v57, v58, "callForAddParticipantsToShare phoneNumbers: %s", v66, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v67);
    MEMORY[0x245D489D0](v67, -1, -1);
    MEMORY[0x245D489D0](v66, -1, -1);
  }

  v79 = sub_243B18D1C();
  v80 = sub_243B18E8C();
  v42, v81, v82, v83, v84, v85, v86, v87;
  if (os_log_type_enabled(v79, v80))
  {
    v88 = swift_slowAlloc();
    v89 = swift_slowAlloc();
    aBlock[0] = v89;
    *v88 = 136315138;
    v90 = sub_243B16EE4(0, &qword_27EDA1758, 0x277CDC6D0);
    v91 = MEMORY[0x245D48400](v42, v90);
    v93 = v92;
    v94 = sub_243B09C80(v91, v92, aBlock);
    v93, v95, v96, v97, v98, v99, v100, v101;
    *(v88 + 4) = v94;
    _os_log_impl(&dword_243AF9000, v79, v80, "callForAddParticipantsToShare optionsGroups: %s", v88, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v89);
    MEMORY[0x245D489D0](v89, -1, -1);
    MEMORY[0x245D489D0](v88, -1, -1);
  }

  v103 = v128;
  v102 = v129;
  if (qword_281509060 != -1)
  {
    swift_once();
  }

  v104 = qword_2815090B8;
  if (qword_2815090B8)
  {
    swift_unknownObjectRetain();
    v105 = sub_243B18E2C();
    v106 = sub_243B18E2C();
    sub_243B16EE4(0, &qword_27EDA1758, 0x277CDC6D0);
    v107 = sub_243B18E2C();
    v108 = swift_allocObject();
    v109 = v130;
    *(v108 + 16) = sub_243B1706C;
    *(v108 + 24) = v109;
    aBlock[4] = sub_243B17134;
    aBlock[5] = v108;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_243AFE0C0;
    aBlock[3] = &block_descriptor_187;
    v110 = _Block_copy(aBlock);

    [v104 addParticipantsToShare:v102 containerSetupInfo:v103 emailAddresses:v105 phoneNumbers:v106 optionsGroups:v107 withReply:v110];
    _Block_release(v110);

    swift_unknownObjectRelease();
  }

  else
  {
    v111 = sub_243B18CDC();
    v112 = *(v111 - 8);
    v113 = v126;
    (*(v112 + 56))(v126, 1, 1, v111);
    sub_243B18C0C();
    sub_243B0A228(MEMORY[0x277D84F90]);
    sub_243B0A398(&qword_27EDA1738, MEMORY[0x277CC8620], MEMORY[0x277CC8618]);
    v114 = v121;
    v115 = v124;
    sub_243B18C5C();
    v116 = sub_243B18BFC();
    (*(v123 + 8))(v114, v115);
    v117 = v125;
    sub_243B16F2C(v113, v125, &qword_27EDA1750, &qword_243B19A68);
    v118 = 0;
    if ((*(v112 + 48))(v117, 1, v111) != 1)
    {
      v118 = sub_243B18CAC();
      (*(v112 + 8))(v117, v111);
    }

    v119 = sub_243B18C6C();
    v127[2](v127, v118, 0, v119);

    sub_243B0A49C(v113, &qword_27EDA1750, &qword_243B19A68);
  }
}

void sub_243B147B0(uint64_t a1, void (**a2)(void, void, void, void))
{
  v4 = sub_243B18C1C();
  MEMORY[0x28223BE20](v4 - 8);
  v67 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_243B18C2C();
  v68 = *(v6 - 8);
  v69 = v6;
  MEMORY[0x28223BE20](v6);
  v66 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA1750, &qword_243B19A68);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v63 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v71 = &v61 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v65 = &v61 - v14;
  MEMORY[0x28223BE20](v13);
  v16 = &v61 - v15;
  v17 = sub_243B18CDC();
  v18 = *(v17 - 8);
  v19 = MEMORY[0x28223BE20](v17);
  v70 = &v61 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v73 = &v61 - v22;
  MEMORY[0x28223BE20](v21);
  v24 = &v61 - v23;
  v76 = swift_allocObject();
  *(v76 + 16) = a2;
  _Block_copy(a2);
  if (qword_281509090 != -1)
  {
    swift_once();
  }

  v25 = sub_243B18D3C();
  __swift_project_value_buffer(v25, qword_281509098);
  v26 = *(v18 + 16);
  v74 = v18 + 16;
  v75 = a1;
  v72 = v26;
  v26(v24, a1, v17);
  v27 = sub_243B18D1C();
  v28 = v18;
  v29 = sub_243B18EBC();
  if (os_log_type_enabled(v27, v29))
  {
    v30 = swift_slowAlloc();
    v62 = v16;
    v31 = v30;
    v32 = swift_slowAlloc();
    aBlock[0] = v32;
    *v31 = 136315138;
    sub_243B0A398(&qword_27EDA1748, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v33 = sub_243B18F4C();
    v34 = a2;
    v36 = v35;
    v64 = *(v28 + 8);
    v64(v24, v17);
    v37 = sub_243B09C80(v33, v36, aBlock);
    v38 = v36;
    a2 = v34;
    v38, v39, v40, v41, v42, v43, v44, v45;
    *(v31 + 4) = v37;
    _os_log_impl(&dword_243AF9000, v27, v29, "callForExistingShareForFile url: %s", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v32);
    MEMORY[0x245D489D0](v32, -1, -1);
    v46 = v31;
    v16 = v62;
    MEMORY[0x245D489D0](v46, -1, -1);
  }

  else
  {

    v64 = *(v18 + 8);
    v64(v24, v17);
  }

  v47 = v28;
  v48 = v75;
  if (qword_281509060 != -1)
  {
    swift_once();
  }

  v49 = qword_2815090B8;
  if (qword_2815090B8)
  {
    sub_243B16EE4(0, &qword_27EDA1740, 0x277CC6438);
    v50 = v73;
    v72(v73, v48, v17);
    swift_unknownObjectRetain();
    v56 = sub_243B099B8(v50, 0);
    logWrapperMessage(for:isReadOnly:error:)(v48, 0, 0);
    v58 = swift_allocObject();
    v59 = v76;
    *(v58 + 16) = sub_243B1706C;
    *(v58 + 24) = v59;
    aBlock[4] = sub_243B17134;
    aBlock[5] = v58;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_243AFE0C0;
    aBlock[3] = &block_descriptor_176;
    v60 = _Block_copy(aBlock);

    [v49 existingShareForFileWithURLWrapper:v56 withReply:v60];

    _Block_release(v60);

    swift_unknownObjectRelease();
  }

  else
  {
    (*(v28 + 56))(v16, 1, 1, v17);
    sub_243B18C0C();
    sub_243B0A228(MEMORY[0x277D84F90]);
    sub_243B0A398(&qword_27EDA1738, MEMORY[0x277CC8620], MEMORY[0x277CC8618]);
    v51 = v66;
    v52 = v69;
    sub_243B18C5C();
    v53 = sub_243B18BFC();
    (*(v68 + 8))(v51, v52);
    v54 = v65;
    sub_243B16F2C(v16, v65, &qword_27EDA1750, &qword_243B19A68);
    if ((*(v47 + 48))(v54, 1, v17) == 1)
    {
      v55 = 0;
    }

    else
    {
      v55 = sub_243B18CAC();
      v64(v54, v17);
    }

    v57 = sub_243B18C6C();
    (a2)[2](a2, v55, 0, v57);

    sub_243B0A49C(v16, &qword_27EDA1750, &qword_243B19A68);
  }
}

void sub_243B15104(uint64_t a1, void *a2, const void *a3)
{
  v6 = sub_243B18C1C();
  MEMORY[0x28223BE20](v6 - 8);
  v69 = v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_243B18C2C();
  v70 = *(v8 - 8);
  v71 = v8;
  MEMORY[0x28223BE20](v8);
  v68 = v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_243B18CDC();
  v76 = *(v10 - 8);
  v77 = v10;
  v11 = MEMORY[0x28223BE20](v10);
  v65[1] = v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v67 = v65 - v14;
  MEMORY[0x28223BE20](v13);
  v16 = v65 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA1750, &qword_243B19A68);
  v18 = MEMORY[0x28223BE20](v17);
  v74 = v65 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = v65 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = v65 - v23;
  v75 = swift_allocObject();
  *(v75 + 16) = a3;
  v72 = a3;
  _Block_copy(a3);
  if (qword_281509090 != -1)
  {
    swift_once();
  }

  v25 = sub_243B18D3C();
  __swift_project_value_buffer(v25, qword_281509098);
  v73 = a1;
  sub_243B16F2C(a1, v24, &qword_27EDA1750, &qword_243B19A68);
  v26 = sub_243B18D1C();
  v27 = sub_243B18EBC();
  v28 = os_log_type_enabled(v26, v27);
  v66 = v16;
  if (v28)
  {
    v29 = swift_slowAlloc();
    v65[0] = a2;
    v30 = v29;
    v31 = swift_slowAlloc();
    aBlock[0] = v31;
    *v30 = 136315138;
    sub_243B16F2C(v24, v22, &qword_27EDA1750, &qword_243B19A68);
    v32 = sub_243B18D9C();
    v34 = v33;
    sub_243B0A49C(v24, &qword_27EDA1750, &qword_243B19A68);
    v35 = sub_243B09C80(v32, v34, aBlock);
    v34, v36, v37, v38, v39, v40, v41, v42;
    *(v30 + 4) = v35;
    _os_log_impl(&dword_243AF9000, v26, v27, "callForUserNameAndEmail url: %s", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v31);
    MEMORY[0x245D489D0](v31, -1, -1);
    v43 = v30;
    a2 = v65[0];
    MEMORY[0x245D489D0](v43, -1, -1);
  }

  else
  {

    sub_243B0A49C(v24, &qword_27EDA1750, &qword_243B19A68);
  }

  v44 = a2;
  v45 = sub_243B18D1C();
  v46 = sub_243B18EBC();

  v47 = os_log_type_enabled(v45, v46);
  v49 = v76;
  v48 = v77;
  if (v47)
  {
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    *v50 = 138412290;
    *(v50 + 4) = v44;
    *v51 = a2;
    v52 = v44;
    _os_log_impl(&dword_243AF9000, v45, v46, "callForUserNameAndEmail containerSetupInfo: %@", v50, 0xCu);
    sub_243B0A49C(v51, &qword_27EDA1760, &qword_243B19A70);
    MEMORY[0x245D489D0](v51, -1, -1);
    MEMORY[0x245D489D0](v50, -1, -1);
  }

  if (qword_281509060 != -1)
  {
    swift_once();
  }

  v53 = qword_2815090B8;
  v54 = v74;
  if (qword_2815090B8)
  {
    sub_243B16F2C(v73, v74, &qword_27EDA1750, &qword_243B19A68);
    if ((*(v49 + 48))(v54, 1, v48) == 1)
    {
      swift_unknownObjectRetain();
      sub_243B0A49C(v54, &qword_27EDA1750, &qword_243B19A68);
      v55 = 0;
    }

    else
    {
      v60 = v66;
      (*(v49 + 32))(v66, v54, v48);
      sub_243B16EE4(0, &qword_27EDA1740, 0x277CC6438);
      v61 = v67;
      (*(v49 + 16))(v67, v60, v48);
      swift_unknownObjectRetain();
      v55 = sub_243B099B8(v61, 0);
      logWrapperMessage(for:isReadOnly:error:)(v60, 0, 0);
      (*(v49 + 8))(v60, v48);
    }

    v62 = swift_allocObject();
    v63 = v75;
    *(v62 + 16) = sub_243B16E40;
    *(v62 + 24) = v63;
    aBlock[4] = sub_243B17138;
    aBlock[5] = v62;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_243B07F58;
    aBlock[3] = &block_descriptor_165;
    v64 = _Block_copy(aBlock);

    [v53 userNameAndEmailWithURLWrapper:v55 containerSetupInfo:v44 withReply:v64];

    _Block_release(v64);

    swift_unknownObjectRelease();
  }

  else
  {
    sub_243B18C0C();
    sub_243B0A228(MEMORY[0x277D84F90]);
    sub_243B0A398(&qword_27EDA1738, MEMORY[0x277CC8620], MEMORY[0x277CC8618]);
    v56 = v68;
    v57 = v71;
    sub_243B18C5C();
    v58 = sub_243B18BFC();
    (*(v70 + 8))(v56, v57);
    v59 = sub_243B18C6C();
    (*(v72 + 2))(v72, 0, 0, v59);
  }
}

void sub_243B15A18(uint64_t a1, _TtC12CloudSharing15InitiateSharing *a2, _TtC12CloudSharing15InitiateSharing *a3, uint64_t a4, uint64_t a5, int a6, void (**a7)(const void *, void *, void, void *))
{
  v136 = a6;
  v134 = a5;
  v135 = a3;
  v132 = a4;
  v10 = sub_243B18C1C();
  MEMORY[0x28223BE20](v10 - 8);
  v125 = &v123 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_243B18C2C();
  v127 = *(v12 - 8);
  v128 = v12;
  MEMORY[0x28223BE20](v12);
  v124 = &v123 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA1750, &qword_243B19A68);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v126 = &v123 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v129 = &v123 - v17;
  v18 = sub_243B18CDC();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v123 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = swift_allocObject();
  *(v137 + 16) = a7;
  v130 = a7;
  _Block_copy(a7);
  if (qword_281509090 != -1)
  {
    swift_once();
  }

  v22 = sub_243B18D3C();
  __swift_project_value_buffer(v22, qword_281509098);
  v23 = *(v19 + 16);
  v131 = a1;
  v23(v21, a1, v18);
  v24 = sub_243B18D1C();
  v25 = sub_243B18EBC();
  v26 = os_log_type_enabled(v24, v25);
  v138 = a2;
  v133 = v19;
  if (v26)
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    aBlock[0] = v28;
    *v27 = 136315138;
    sub_243B0A398(&qword_27EDA1748, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v29 = sub_243B18F4C();
    v31 = v30;
    v123 = *(v19 + 8);
    v123(v21, v18);
    v32 = sub_243B09C80(v29, v31, aBlock);
    v33 = v31;
    a2 = v138;
    v33, v34, v35, v36, v37, v38, v39, v40;
    *(v27 + 4) = v32;
    _os_log_impl(&dword_243AF9000, v24, v25, "callForForciblyShareFolder folderURL: %s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v28);
    MEMORY[0x245D489D0](v28, -1, -1);
    MEMORY[0x245D489D0](v27, -1, -1);
  }

  else
  {

    v123 = *(v19 + 8);
    v123(v21, v18);
  }

  v41 = sub_243B18D1C();
  v42 = sub_243B18E8C();
  a2, v43, v44, v45, v46, v47, v48, v49;
  v50 = os_log_type_enabled(v41, v42);
  v51 = v134;
  if (v50)
  {
    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    aBlock[0] = v53;
    *v52 = 136315138;
    v54 = MEMORY[0x245D48400](a2, MEMORY[0x277D837D0]);
    v56 = v55;
    v57 = sub_243B09C80(v54, v55, aBlock);
    v56, v58, v59, v60, v61, v62, v63, v64;
    *(v52 + 4) = v57;
    _os_log_impl(&dword_243AF9000, v41, v42, "callForForciblyShareFolder emailAddresses: %s", v52, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v53);
    MEMORY[0x245D489D0](v53, -1, -1);
    MEMORY[0x245D489D0](v52, -1, -1);
  }

  v65 = v135;

  v66 = sub_243B18D1C();
  v67 = sub_243B18E8C();
  v65, v68, v69, v70, v71, v72, v73, v74;
  if (os_log_type_enabled(v66, v67))
  {
    v75 = swift_slowAlloc();
    v76 = swift_slowAlloc();
    aBlock[0] = v76;
    *v75 = 136315138;
    v77 = MEMORY[0x245D48400](v65, MEMORY[0x277D837D0]);
    v79 = v78;
    v80 = sub_243B09C80(v77, v78, aBlock);
    v79, v81, v82, v83, v84, v85, v86, v87;
    *(v75 + 4) = v80;
    _os_log_impl(&dword_243AF9000, v66, v67, "callForForciblyShareFolder phoneNumbers: %s", v75, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v76);
    MEMORY[0x245D489D0](v76, -1, -1);
    MEMORY[0x245D489D0](v75, -1, -1);
  }

  v88 = sub_243B18D1C();
  v89 = sub_243B18E8C();
  if (os_log_type_enabled(v88, v89))
  {
    v90 = swift_slowAlloc();
    v91 = swift_slowAlloc();
    v139 = v51;
    aBlock[0] = v91;
    *v90 = 136315138;
    type metadata accessor for ParticipantPermission(0);
    v92 = sub_243B18D9C();
    v94 = v93;
    v95 = sub_243B09C80(v92, v93, aBlock);
    v94, v96, v97, v98, v99, v100, v101, v102;
    *(v90 + 4) = v95;
    _os_log_impl(&dword_243AF9000, v88, v89, "callForForciblyShareFolder permissionType: %s", v90, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v91);
    MEMORY[0x245D489D0](v91, -1, -1);
    MEMORY[0x245D489D0](v90, -1, -1);
  }

  v103 = v133;
  v104 = sub_243B18D1C();
  v105 = sub_243B18E8C();
  v106 = os_log_type_enabled(v104, v105);
  v107 = v136;
  if (v106)
  {
    v108 = swift_slowAlloc();
    *v108 = 67109120;
    *(v108 + 4) = v107 & 1;
    _os_log_impl(&dword_243AF9000, v104, v105, "callForForciblyShareFolder allowOthersToInvite: %{BOOL}d", v108, 8u);
    MEMORY[0x245D489D0](v108, -1, -1);
  }

  if (qword_281509060 != -1)
  {
    swift_once();
  }

  v109 = qword_2815090B8;
  if (qword_2815090B8)
  {
    swift_unknownObjectRetain();
    v110 = sub_243B18CAC();
    v111 = sub_243B18E2C();
    v112 = sub_243B18E2C();
    v113 = swift_allocObject();
    v114 = v137;
    *(v113 + 16) = sub_243B1706C;
    *(v113 + 24) = v114;
    aBlock[4] = sub_243B17134;
    aBlock[5] = v113;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_243AFE0C0;
    aBlock[3] = &block_descriptor_155;
    v115 = _Block_copy(aBlock);

    [v109 forciblyShareFolder:v110 emailAddresses:v111 phoneNumbers:v112 accessType:v132 permissionType:v51 allowOthersToInvite:v107 & 1 withReply:v115];
    _Block_release(v115);

    swift_unknownObjectRelease();
  }

  else
  {
    v116 = v129;
    (*(v103 + 56))(v129, 1, 1, v18);
    sub_243B18C0C();
    sub_243B0A228(MEMORY[0x277D84F90]);
    sub_243B0A398(&qword_27EDA1738, MEMORY[0x277CC8620], MEMORY[0x277CC8618]);
    v117 = v124;
    v118 = v128;
    sub_243B18C5C();
    v119 = sub_243B18BFC();
    (*(v127 + 8))(v117, v118);
    v120 = v126;
    sub_243B16F2C(v116, v126, &qword_27EDA1750, &qword_243B19A68);
    if ((*(v103 + 48))(v120, 1, v18) == 1)
    {
      v121 = 0;
    }

    else
    {
      v121 = sub_243B18CAC();
      v123(v120, v18);
    }

    v122 = sub_243B18C6C();
    v130[2](v130, v121, 0, v122);

    sub_243B0A49C(v116, &qword_27EDA1750, &qword_243B19A68);
  }
}

void sub_243B16454(uint64_t a1, _TtC12CloudSharing15InitiateSharing *a2, _TtC12CloudSharing15InitiateSharing *a3, _TtC12CloudSharing15InitiateSharing *a4, void (**a5)(const void *, void *, void, void *))
{
  v138 = a3;
  v9 = sub_243B18C1C();
  MEMORY[0x28223BE20](v9 - 8);
  v131 = &v127 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_243B18C2C();
  v133 = *(v11 - 8);
  v134 = v11;
  MEMORY[0x28223BE20](v11);
  v130 = &v127 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA1750, &qword_243B19A68);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v132 = &v127 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v135 = &v127 - v16;
  v17 = sub_243B18CDC();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v127 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = swift_allocObject();
  *(v140 + 16) = a5;
  v136 = a5;
  _Block_copy(a5);
  if (qword_281509090 != -1)
  {
    swift_once();
  }

  v21 = sub_243B18D3C();
  __swift_project_value_buffer(v21, qword_281509098);
  v22 = *(v18 + 16);
  v137 = a1;
  v22(v20, a1, v17);
  v23 = sub_243B18D1C();
  v24 = sub_243B18EBC();
  v25 = os_log_type_enabled(v23, v24);
  v141 = a2;
  v139 = a4;
  v129 = v18;
  if (v25)
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    aBlock[0] = v27;
    *v26 = 136315138;
    sub_243B0A398(&qword_27EDA1748, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v28 = sub_243B18F4C();
    v29 = v18;
    v31 = v30;
    v128 = *(v29 + 8);
    v128(v20, v17);
    v32 = sub_243B09C80(v28, v31, aBlock);
    v31, v33, v34, v35, v36, v37, v38, v39;
    *(v26 + 4) = v32;
    _os_log_impl(&dword_243AF9000, v23, v24, "callForForciblyShareFolder folderURL: %s", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v27);
    v40 = v27;
    a2 = v141;
    MEMORY[0x245D489D0](v40, -1, -1);
    MEMORY[0x245D489D0](v26, -1, -1);
  }

  else
  {

    v128 = *(v18 + 8);
    v128(v20, v17);
  }

  v41 = sub_243B18D1C();
  v42 = sub_243B18E8C();
  a2, v43, v44, v45, v46, v47, v48, v49;
  v50 = os_log_type_enabled(v41, v42);
  v51 = v138;
  if (v50)
  {
    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    aBlock[0] = v53;
    *v52 = 136315138;
    v54 = MEMORY[0x245D48400](a2, MEMORY[0x277D837D0]);
    v56 = v55;
    v57 = sub_243B09C80(v54, v55, aBlock);
    v56, v58, v59, v60, v61, v62, v63, v64;
    *(v52 + 4) = v57;
    _os_log_impl(&dword_243AF9000, v41, v42, "callForForciblyShareFolder emailAddresses: %s", v52, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v53);
    MEMORY[0x245D489D0](v53, -1, -1);
    MEMORY[0x245D489D0](v52, -1, -1);
  }

  v65 = sub_243B18D1C();
  v66 = sub_243B18E8C();
  v51, v67, v68, v69, v70, v71, v72, v73;
  if (os_log_type_enabled(v65, v66))
  {
    v74 = swift_slowAlloc();
    v75 = swift_slowAlloc();
    aBlock[0] = v75;
    *v74 = 136315138;
    v76 = MEMORY[0x245D48400](v51, MEMORY[0x277D837D0]);
    v78 = v77;
    v79 = sub_243B09C80(v76, v77, aBlock);
    v78, v80, v81, v82, v83, v84, v85, v86;
    *(v74 + 4) = v79;
    _os_log_impl(&dword_243AF9000, v65, v66, "callForForciblyShareFolder phoneNumbers: %s", v74, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v75);
    MEMORY[0x245D489D0](v75, -1, -1);
    MEMORY[0x245D489D0](v74, -1, -1);
  }

  v87 = v139;

  v88 = sub_243B18D1C();
  v89 = sub_243B18E8C();
  v87, v90, v91, v92, v93, v94, v95, v96;
  if (os_log_type_enabled(v88, v89))
  {
    v97 = swift_slowAlloc();
    v98 = swift_slowAlloc();
    aBlock[0] = v98;
    *v97 = 136315138;
    v99 = sub_243B16EE4(0, &qword_27EDA1758, 0x277CDC6D0);
    v100 = MEMORY[0x245D48400](v87, v99);
    v102 = v101;
    v103 = sub_243B09C80(v100, v101, aBlock);
    v102, v104, v105, v106, v107, v108, v109, v110;
    *(v97 + 4) = v103;
    _os_log_impl(&dword_243AF9000, v88, v89, "callForAddParticipantsToShare optionsGroups: %s", v97, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v98);
    MEMORY[0x245D489D0](v98, -1, -1);
    MEMORY[0x245D489D0](v97, -1, -1);
  }

  if (qword_281509060 != -1)
  {
    swift_once();
  }

  v111 = qword_2815090B8;
  if (qword_2815090B8)
  {
    swift_unknownObjectRetain();
    v112 = sub_243B18CAC();
    v113 = sub_243B18E2C();
    v114 = sub_243B18E2C();
    sub_243B16EE4(0, &qword_27EDA1758, 0x277CDC6D0);
    v115 = sub_243B18E2C();
    v116 = swift_allocObject();
    v117 = v140;
    *(v116 + 16) = sub_243B16E38;
    *(v116 + 24) = v117;
    aBlock[4] = sub_243B17134;
    aBlock[5] = v116;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_243AFE0C0;
    aBlock[3] = &block_descriptor_144;
    v118 = _Block_copy(aBlock);

    [v111 forciblyShareFolder:v112 emailAddresses:v113 phoneNumbers:v114 optionsGroups:v115 withReply:v118];
    _Block_release(v118);

    swift_unknownObjectRelease();
  }

  else
  {
    v119 = v129;
    v120 = v135;
    (*(v129 + 56))(v135, 1, 1, v17);
    sub_243B18C0C();
    sub_243B0A228(MEMORY[0x277D84F90]);
    sub_243B0A398(&qword_27EDA1738, MEMORY[0x277CC8620], MEMORY[0x277CC8618]);
    v121 = v130;
    v122 = v134;
    sub_243B18C5C();
    v123 = sub_243B18BFC();
    (*(v133 + 8))(v121, v122);
    v124 = v132;
    sub_243B16F2C(v120, v132, &qword_27EDA1750, &qword_243B19A68);
    if ((*(v119 + 48))(v124, 1, v17) == 1)
    {
      v125 = 0;
    }

    else
    {
      v125 = sub_243B18CAC();
      v128(v124, v17);
    }

    v126 = sub_243B18C6C();
    v136[2](v136, v125, 0, v126);

    sub_243B0A49C(v120, &qword_27EDA1750, &qword_243B19A68);
  }
}

uint64_t sub_243B16E84(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_243B16EE4(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_243B16F2C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

_OWORD *sub_243B16F94(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void logWrapperMessage(for:isReadOnly:error:)(uint64_t a1, char a2, void *a3)
{
  v6 = sub_243B18CDC();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v109 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v109 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v109 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v109 - v17;
  if (a2)
  {
    if (a3)
    {
      if (qword_281509090 != -1)
      {
        swift_once();
      }

      v19 = sub_243B18D3C();
      __swift_project_value_buffer(v19, qword_281509098);
      (*(v7 + 16))(v10, a1, v6);
      v20 = a3;
      v21 = sub_243B18D1C();
      v22 = sub_243B18EAC();

      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v110 = v24;
        *v23 = 136315394;
        sub_243B18454();
        v25 = sub_243B18F4C();
        v27 = v26;
        (*(v7 + 8))(v10, v6);
        v28 = sub_243B09C80(v25, v27, &v110);
        v27, v29, v30, v31, v32, v33, v34, v35;
        *(v23 + 4) = v28;
        *(v23 + 12) = 2080;
        v109 = a3;
        v36 = a3;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA17A0, &qword_243B19B00);
        v37 = sub_243B18D9C();
        v39 = v38;
        v40 = sub_243B09C80(v37, v38, &v110);
        v39, v41, v42, v43, v44, v45, v46, v47;
        *(v23 + 14) = v40;
        _os_log_impl(&dword_243AF9000, v21, v22, "Failed to create read-only FPSandboxingURLWrapper for URL %s: %s", v23, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x245D489D0](v24, -1, -1);
        v48 = v23;
LABEL_12:
        MEMORY[0x245D489D0](v48, -1, -1);

        return;
      }

      (*(v7 + 8))(v10, v6);
      return;
    }

    if (qword_281509090 != -1)
    {
      swift_once();
    }

    v77 = sub_243B18D3C();
    __swift_project_value_buffer(v77, qword_281509098);
    (*(v7 + 16))(v13, a1, v6);
    v78 = sub_243B18D1C();
    v79 = sub_243B18EBC();
    if (!os_log_type_enabled(v78, v79))
    {

      (*(v7 + 8))(v13, v6);
      return;
    }

    v80 = swift_slowAlloc();
    v81 = swift_slowAlloc();
    v110 = v81;
    *v80 = 136315138;
    sub_243B18454();
    v82 = sub_243B18F4C();
    v84 = v83;
    (*(v7 + 8))(v13, v6);
    v85 = sub_243B09C80(v82, v84, &v110);
    v84, v86, v87, v88, v89, v90, v91, v92;
    *(v80 + 4) = v85;
    _os_log_impl(&dword_243AF9000, v78, v79, "Created read-only FPSandboxingURLWrapper for URL %s", v80, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v81);
    MEMORY[0x245D489D0](v81, -1, -1);
    v93 = v80;
LABEL_21:
    MEMORY[0x245D489D0](v93, -1, -1);

    return;
  }

  if (!a3)
  {
    if (qword_281509090 != -1)
    {
      swift_once();
    }

    v94 = sub_243B18D3C();
    __swift_project_value_buffer(v94, qword_281509098);
    (*(v7 + 16))(v18, a1, v6);
    v78 = sub_243B18D1C();
    v95 = sub_243B18EBC();
    if (!os_log_type_enabled(v78, v95))
    {

      (*(v7 + 8))(v18, v6);
      return;
    }

    v96 = swift_slowAlloc();
    v97 = swift_slowAlloc();
    v110 = v97;
    *v96 = 136315138;
    sub_243B18454();
    v98 = sub_243B18F4C();
    v100 = v99;
    (*(v7 + 8))(v18, v6);
    v101 = sub_243B09C80(v98, v100, &v110);
    v100, v102, v103, v104, v105, v106, v107, v108;
    *(v96 + 4) = v101;
    _os_log_impl(&dword_243AF9000, v78, v95, "Created read/write FPSandboxingURLWrapper for URL %s", v96, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v97);
    MEMORY[0x245D489D0](v97, -1, -1);
    v93 = v96;
    goto LABEL_21;
  }

  if (qword_281509090 != -1)
  {
    swift_once();
  }

  v49 = sub_243B18D3C();
  __swift_project_value_buffer(v49, qword_281509098);
  (*(v7 + 16))(v16, a1, v6);
  v50 = a3;
  v21 = sub_243B18D1C();
  v51 = sub_243B18EBC();

  if (os_log_type_enabled(v21, v51))
  {
    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v110 = v53;
    *v52 = 136315394;
    sub_243B18454();
    v54 = sub_243B18F4C();
    v56 = v55;
    (*(v7 + 8))(v16, v6);
    v57 = sub_243B09C80(v54, v56, &v110);
    v56, v58, v59, v60, v61, v62, v63, v64;
    *(v52 + 4) = v57;
    *(v52 + 12) = 2080;
    v109 = a3;
    v65 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA17A0, &qword_243B19B00);
    v66 = sub_243B18D9C();
    v68 = v67;
    v69 = sub_243B09C80(v66, v67, &v110);
    v68, v70, v71, v72, v73, v74, v75, v76;
    *(v52 + 14) = v69;
    _os_log_impl(&dword_243AF9000, v21, v51, "Failed to create read/write FPSandboxingURLWrapper for URL %s: %s\nTrying read-only instead...", v52, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x245D489D0](v53, -1, -1);
    v48 = v52;
    goto LABEL_12;
  }

  (*(v7 + 8))(v16, v6);
}

id sub_243B17924(char a1)
{
  v3 = sub_243B18CDC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_243B16EE4(0, &qword_27EDA1740, 0x277CC6438);
  (*(v4 + 16))(v6, v1, v3);
  return sub_243B099B8(v6, a1);
}

void URL.evictionSafeResourceValues(forKeys:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v23[1] = *MEMORY[0x277D85DE8];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA17A8, &qword_243B19B08);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v21 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - v6;
  v23[0] = 0;
  v8 = sub_243B18C4C();
  v9 = *(v8 - 8);
  (*(v9 + 56))(v7, 1, 1, v8);
  v10 = [objc_allocWithZone(MEMORY[0x277CCA9E8]) init];
  v11 = sub_243B18CAC();
  v12 = swift_allocObject();
  v12[2] = v7;
  v12[3] = a1;
  v12[4] = v23;
  v13 = swift_allocObject();
  v13[2] = sub_243B184AC;
  v13[3] = v12;
  aBlock[4] = sub_243B184B8;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_243B17EF0;
  aBlock[3] = &block_descriptor_0;
  v14 = _Block_copy(aBlock);

  aBlock[0] = 0;
  [v10 coordinateReadingItemAtURL:v11 options:4 error:aBlock byAccessor:v14];
  _Block_release(v14);

  v15 = aBlock[0];
  LOBYTE(v14) = swift_isEscapingClosureAtFileLocation();

  if (v14)
  {
    __break(1u);
  }

  if (v15)
  {
    goto LABEL_5;
  }

  if (v23[0])
  {
    v23[0];
LABEL_5:
    swift_willThrow();
    sub_243B18568(v7);
    v16 = v23[0];

    return;
  }

  v17 = v21;
  sub_243B184F8(v7, v21);
  if ((*(v9 + 48))(v17, 1, v8) == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v9 + 32))(v20, v17, v8);
    sub_243B18568(v7);
    v18 = v23[0];
  }
}

uint64_t sub_243B17D94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA17A8, &qword_243B19B08);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9 - v5;
  sub_243B18CBC();
  v7 = sub_243B18C4C();
  (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  return sub_243B188BC(v6, a2);
}

uint64_t sub_243B17EF0(uint64_t a1, uint64_t a2)
{
  v3 = sub_243B18CDC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 32);
  sub_243B18CCC();
  v7(v6);
  return (*(v4 + 8))(v6, v3);
}

uint64_t URL.cs_extensionlessLastPathComponent.getter()
{
  v0 = sub_243B18C4C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v102 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA17B0, &qword_243B19B10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_243B19AF0;
  v5 = *MEMORY[0x277CBE8D0];
  *(inited + 32) = *MEMORY[0x277CBE8D0];
  v6 = v5;
  sub_243B185D0(inited);
  v8 = v7;
  swift_setDeallocating();
  sub_243B187C4(inited + 32);
  URL.evictionSafeResourceValues(forKeys:)(v8, v3);
  v8, v9, v10, v11, v12, v13, v14, v15;
  result = sub_243B18C3C();
  if (v17)
  {
    v18 = result;
    v19 = v17;
    (*(v1 + 8))(v3, v0);
    v20 = sub_243B18C9C();
    v28 = v21;
    if (v18 == v20 && v19 == v21)
    {
      v21, v21, v22, v23, v24, v25, v26, v27;
    }

    else
    {
      v30 = sub_243B18F5C();
      v28, v31, v32, v33, v34, v35, v36, v37;
      if ((v30 & 1) == 0)
      {
        return v18;
      }
    }

    v38 = sub_243B18C8C();
    v40 = v39;
    v103 = 46;
    v104 = 0xE100000000000000;
    MEMORY[0x245D483A0](v38);
    v40, v41, v42, v43, v44, v45, v46, v47;
    v56 = v103;
    v55 = v104;
    v57 = HIBYTE(v104) & 0xF;
    if ((v104 & 0x2000000000000000) == 0)
    {
      v57 = v103 & 0xFFFFFFFFFFFFLL;
    }

    if (!v57 || (v58 = sub_243B18DCC(), sub_243B18DCC() >= v58) || (, v59 = sub_243B18DCC(), v61 = sub_243AFBC40(v59, v18, v19, v60), v63 = v62, v65 = v64, v67 = v66, v19, v62, v64, v66, v68, v69, v70, v71, v103 = v61, v104 = v63, v105 = v65, v106 = v67, v102[0] = v56, v102[1] = v55, sub_243AFBCFC(), sub_243AFBD50(), v72 = sub_243B18ECC(), v67, v73, v74, v75, v76, v77, v78, v79, v72))
    {
      v80 = v55;
LABEL_15:
      v80, v48, v49, v50, v51, v52, v53, v54;
      return v18;
    }

    v81 = sub_243B18DCC();
    v82 = sub_243B18DCC();
    v55, v83, v84, v85, v86, v87, v88, v89;
    result = v81 - v82;
    if (!__OFSUB__(v81, v82))
    {
      v91 = sub_243B18820(result, v18, v19, v90);
      v93 = v92;
      v95 = v94;
      v97 = v96;
      v19, v92, v94, v96, v98, v99, v100, v101;
      v18 = MEMORY[0x245D48360](v91, v93, v95, v97);
      v80 = v97;
      goto LABEL_15;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_243B18454()
{
  result = qword_27EDA1748;
  if (!qword_27EDA1748)
  {
    sub_243B18CDC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDA1748);
  }

  return result;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_243B184F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA17A8, &qword_243B19B08);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_243B18568(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA17A8, &qword_243B19B08);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_243B185D0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA17B8, &qword_243B19B20);
    v3 = sub_243B18EEC();
    v4 = 0;
    v5 = v3 + 56;
    v64 = v1;
    v65 = a1 + 32;
    v6 = v1;
    do
    {
      v21 = *(v65 + 8 * v4);
      sub_243B18D8C();
      v23 = v22;
      sub_243B18F7C();
      v66 = v21;
      sub_243B18DBC();
      v24 = sub_243B18F8C();
      v23, v25, v26, v27, v28, v29, v30, v31;
      v32 = -1 << *(v3 + 32);
      v33 = v24 & ~v32;
      v34 = v33 >> 6;
      v35 = *(v5 + 8 * (v33 >> 6));
      v36 = 1 << v33;
      if (((1 << v33) & v35) == 0)
      {
        goto LABEL_15;
      }

      v37 = ~v32;
      do
      {
        v38 = sub_243B18D8C();
        v40 = v39;
        v42 = sub_243B18D8C();
        v43 = v38;
        v44 = v41;
        if (v43 == v42 && v40 == v41)
        {

          v40, v7, v8, v9, v10, v11, v12, v13;
          v44, v14, v15, v16, v17, v18, v19, v20;
LABEL_4:
          v6 = v64;
          goto LABEL_5;
        }

        v46 = sub_243B18F5C();
        v40, v47, v48, v49, v50, v51, v52, v53;
        v44, v54, v55, v56, v57, v58, v59, v60;
        if (v46)
        {

          goto LABEL_4;
        }

        v33 = (v33 + 1) & v37;
        v34 = v33 >> 6;
        v35 = *(v5 + 8 * (v33 >> 6));
        v36 = 1 << v33;
      }

      while (((1 << v33) & v35) != 0);
      v6 = v64;
LABEL_15:
      *(v5 + 8 * v34) = v36 | v35;
      *(*(v3 + 48) + 8 * v33) = v66;
      v61 = *(v3 + 16);
      v62 = __OFADD__(v61, 1);
      v63 = v61 + 1;
      if (v62)
      {
        __break(1u);
        return;
      }

      *(v3 + 16) = v63;
LABEL_5:
      ++v4;
    }

    while (v4 != v6);
  }
}

uint64_t sub_243B187C4(uint64_t a1)
{
  type metadata accessor for URLResourceKey(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_243B18820(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = a3;
    v5 = a2;
    v6 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v6 = a2;
    }

    v7 = 7;
    if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
    {
      v7 = 11;
    }

    v8 = v7 | (v6 << 16);
    v9 = sub_243B18DDC();
    if (v10)
    {
      a2 = v8;
    }

    else
    {
      a2 = v9;
    }

    a1 = 15;
    a3 = v5;
    a4 = v4;
  }

  return MEMORY[0x2821FBFB0](a1, a2, a3, a4);
}

uint64_t sub_243B188BC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA17A8, &qword_243B19B08);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_243B18A14(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_243B18D3C();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);

  return sub_243B18D2C();
}

uint64_t sub_243B18AC0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_243B18D3C();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t Bool.asString.getter(char a1)
{
  if (a1)
  {
    return 1702195828;
  }

  else
  {
    return 0x65736C6166;
  }
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}