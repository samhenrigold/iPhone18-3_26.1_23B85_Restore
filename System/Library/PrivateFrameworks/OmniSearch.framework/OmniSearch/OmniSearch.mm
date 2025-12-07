int main(int argc, const char **argv, const char **envp)
{
  sub_100001E90();
  sub_100001D04();
  v65 = v4;
  v66 = v3;
  __chkstk_darwin(v3);
  v6 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100001C0C(&qword_100008000, &qword_100001F98);
  sub_100001D04();
  v59 = v8;
  v60 = v7;
  sub_100001D44();
  __chkstk_darwin(v9);
  v58 = &v48 - v10;
  v11 = sub_100001C0C(&qword_100008008, &qword_100001FA0);
  sub_100001D04();
  v61 = v12;
  sub_100001D44();
  __chkstk_darwin(v13);
  v15 = &v48 - v14;
  sub_100001C0C(&qword_100008010, &qword_100001FA8);
  sub_100001D04();
  v62 = v16;
  v63 = v17;
  sub_100001D44();
  __chkstk_darwin(v18);
  v64 = &v48 - v19;
  v20 = sub_100001C0C(&qword_100008018, &qword_100001FB0);
  sub_100001D04();
  sub_100001D44();
  __chkstk_darwin(v21);
  v23 = &v48 - v22;
  v24 = sub_100001E60();
  swift_allocObject();
  v25 = sub_100001E50();
  sub_100001E00();
  v68 = v24;
  v69 = sub_100001CBC(&qword_100008020, &type metadata accessor for EchoServiceImp, &protocol conformance descriptor for EchoServiceImp);
  v67 = v25;

  sub_100001E10();
  sub_100001E30();
  v52 = v25;
  v53 = v23;
  v50 = v15;
  v54 = v20;
  v51 = v11;
  v55 = v6;
  sub_100001DD0();
  v57 = v26;
  v56 = sub_100001E70();
  sub_100001CBC(&qword_100008030, &type metadata accessor for PersonalSearchServiceImp, &protocol conformance descriptor for PersonalSearchServiceImp);
  sub_100001DE0();
  sub_100001DF0();
  sub_100001CBC(&qword_100008038, &type metadata accessor for PersonalSearchRequest, &protocol conformance descriptor for PersonalSearchRequest);
  sub_100001CBC(&qword_100008040, &type metadata accessor for PersonalSearchRequest, &protocol conformance descriptor for PersonalSearchRequest);
  sub_100001CBC(&qword_100008048, &type metadata accessor for PersonalSearchResponse, &protocol conformance descriptor for PersonalSearchResponse);
  sub_100001CBC(&qword_100008050, &type metadata accessor for PersonalSearchResponse, &protocol conformance descriptor for PersonalSearchResponse);
  sub_100001E20();
  sub_100001E30();
  v27 = sub_100001D80();
  v56 = v28;
  v57 = v27;
  v49 = sub_100001D50();
  sub_100001CBC(&qword_100008058, &type metadata accessor for OmniSearchServiceImp, &protocol conformance descriptor for OmniSearchServiceImp);
  sub_100001D60();
  sub_100001D70();
  sub_100001CBC(&qword_100008060, &type metadata accessor for OmniSearchXPCRequest, &protocol conformance descriptor for OmniSearchXPCRequest);
  sub_100001CBC(&qword_100008068, &type metadata accessor for OmniSearchXPCRequest, &protocol conformance descriptor for OmniSearchXPCRequest);
  v29 = sub_100001CBC(&qword_100008070, &type metadata accessor for OmniSearchXPCResponse, &protocol conformance descriptor for OmniSearchXPCResponse);
  v30 = sub_100001CBC(&qword_100008078, &type metadata accessor for OmniSearchXPCResponse, &protocol conformance descriptor for OmniSearchXPCResponse);
  sub_100001D18(v57, v56, v31, v32, v33, v34, v35, v36, v29, v30);
  sub_100001E30();
  v37 = sub_100001DC0();
  v56 = v38;
  v57 = v37;
  v49 = sub_100001D90();
  sub_100001CBC(&qword_100008080, &type metadata accessor for AnswerSynthesisServiceImp, &protocol conformance descriptor for AnswerSynthesisServiceImp);
  sub_100001DA0();
  sub_100001DB0();
  sub_100001CBC(&qword_100008088, &type metadata accessor for AnswerSynthesisXPCRequest, &protocol conformance descriptor for AnswerSynthesisXPCRequest);
  sub_100001CBC(&qword_100008090, &type metadata accessor for AnswerSynthesisXPCRequest, &protocol conformance descriptor for AnswerSynthesisXPCRequest);
  v39 = sub_100001CBC(&qword_100008098, &type metadata accessor for AnswerSynthesisXPCResponse, &protocol conformance descriptor for AnswerSynthesisXPCResponse);
  v40 = sub_100001CBC(&qword_1000080A0, &type metadata accessor for AnswerSynthesisXPCResponse, &protocol conformance descriptor for AnswerSynthesisXPCResponse);
  sub_100001D18(v57, v56, v41, v42, v43, v44, v45, v46, v39, v40);
  sub_100001E30();
  dispatch_main();
}

uint64_t sub_100001C0C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100001C54(uint64_t a1)
{
  v2 = sub_100001C0C(&qword_100008028, &unk_100001FB8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100001CBC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100001D18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{

  return sub_100001E20();
}