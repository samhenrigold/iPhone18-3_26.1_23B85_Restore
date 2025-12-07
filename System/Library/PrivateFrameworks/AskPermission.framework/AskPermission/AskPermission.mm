uint64_t sub_241064808()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_241064840()
{
  _Block_release(*(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_241064880()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2410648E8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525390, &qword_241075EA0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

void sub_241064B28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2410650F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id APCustomError(void *a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6)
{
  v11 = a1;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  if ([(__CFString *)v12 length]|| [(__CFString *)v13 length])
  {
    v16 = objc_alloc_init(MEMORY[0x277CBEB38]);
    if (!v12)
    {
      if (!v13)
      {
        goto LABEL_6;
      }

      goto LABEL_5;
    }
  }

  else
  {

    v16 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v13 = @"An unknown error occurred. Please try again.";
    v12 = @"Unknown Error";
  }

  [v16 setObject:v12 forKeyedSubscript:*MEMORY[0x277CCA450]];

  if (v13)
  {
LABEL_5:
    [v16 setObject:v13 forKeyedSubscript:*MEMORY[0x277CCA470]];
  }

LABEL_6:
  if (v15)
  {
    [v16 setObject:v15 forKeyedSubscript:*MEMORY[0x277CCA7E8]];
  }

  if (v14)
  {
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __APCustomError_block_invoke;
    v19[3] = &unk_278CC1610;
    v20 = v16;
    [v14 enumerateKeysAndObjectsUsingBlock:v19];
  }

  v17 = [MEMORY[0x277CCA9B8] errorWithDomain:v11 code:a2 userInfo:v16];

  return v17;
}

id APGenerateLogKey()
{
  v0 = [MEMORY[0x277CCAD78] UUID];
  v1 = [v0 UUIDString];

  v2 = [v1 componentsSeparatedByString:@"-"];
  v3 = [v2 firstObject];

  return v3;
}

void sub_241067E40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_241069FE0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_24106A4C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_24106A804(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_24106ABB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_24106AF6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_24106B33C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_24106B70C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_24106C784(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_24106CB00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_24106CE50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_24106D3A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t sub_24106E878()
{
  v0 = sub_24107474C();
  __swift_allocate_value_buffer(v0, qword_27E525438);
  __swift_project_value_buffer(v0, qword_27E525438);
  return sub_24107473C();
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

id sub_24106E928()
{
  result = [objc_opt_self() exceptionConnection];
  qword_27E525450 = result;
  return result;
}

uint64_t sub_24106E964()
{
  if (qword_27E525428 != -1)
  {
    swift_once();
  }

  v1 = sub_24107474C();
  __swift_project_value_buffer(v1, qword_27E525438);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525310, &qword_241075D90);
  sub_24107470C();
  *(swift_allocObject() + 16) = xmmword_241075D50;
  v6[3] = type metadata accessor for ExportedScreenTimeMonitor();
  v6[0] = v0;
  v2 = v0;
  v3 = AMSLogKey();
  if (v3)
  {
    v4 = v3;
    sub_24107475C();
  }

  sub_2410746FC();

  __swift_destroy_boxed_opaque_existential_0(v6);
  sub_2410746CC();
  sub_24107472C();
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

id sub_24106EC50()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ExportedScreenTimeMonitor();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_24106EC88(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v56 = a5;
  v57 = a6;
  v55 = a4;
  v52 = a1;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v53 = *(v54 - 8);
  v50 = *(v53 + 64);
  MEMORY[0x28223BE20]();
  v51 = v47 - v7;
  if (qword_27E525430 != -1)
  {
    swift_once();
  }

  v62 = qword_27E525450;
  v8 = [qword_27E525450 exportedObject];
  v64 = v6;
  if (v8)
  {
    sub_2410747EC();
    swift_unknownObjectRelease();
    sub_24107326C(&aBlock, &qword_27E525398, &unk_241075EA8);
  }

  else
  {
    aBlock = 0u;
    v66 = 0u;
    sub_24107326C(&aBlock, &qword_27E525398, &unk_241075EA8);
    if (qword_27E525428 != -1)
    {
      swift_once();
    }

    v9 = sub_24107474C();
    v48 = __swift_project_value_buffer(v9, qword_27E525438);
    v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525310, &qword_241075D90);
    v10 = *(*(sub_24107470C() - 8) + 72);
    *&v61 = 3 * v10;
    v59 = v10;
    v49 = 2 * v10;
    v11 = swift_allocObject();
    v60 = xmmword_241075D60;
    *(v11 + 16) = xmmword_241075D60;
    v12 = AMSSetLogKeyIfNeeded();
    sub_24107475C();

    v58 = sub_24107379C(0, &qword_27E525388, 0x277D4B9B0);
    sub_2410746EC();

    sub_2410746CC();
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5253A0, &qword_241075EB8);
    *(&v66 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5253A8, &qword_241075EC0);
    *&aBlock = v13;
    sub_2410746DC();
    sub_24107326C(&aBlock, &qword_27E525398, &unk_241075EA8);
    sub_24107472C();

    v14 = [objc_opt_self() interfaceWithProtocol_];
    v15 = v62;
    [v62 setExportedInterface_];
    v16 = type metadata accessor for ExportedScreenTimeMonitor();
    v17 = [objc_allocWithZone(v16) init];
    *(swift_allocObject() + 16) = v60;
    v18 = AMSSetLogKeyIfNeeded();
    sub_24107475C();

    sub_2410746EC();

    sub_2410746CC();
    *(&v66 + 1) = v16;
    *&aBlock = v17;
    v19 = v17;
    sub_2410746DC();
    sub_24107326C(&aBlock, &qword_27E525398, &unk_241075EA8);
    sub_24107472C();

    [v15 setExportedObject_];
  }

  if (qword_27E525428 != -1)
  {
    swift_once();
  }

  v20 = sub_24107474C();
  v47[1] = __swift_project_value_buffer(v20, qword_27E525438);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525310, &qword_241075D90);
  v21 = *(sub_24107470C() - 8);
  v22 = *(v21 + 72);
  v23 = *(v21 + 80);
  v24 = 2 * v22;
  v25 = 3 * v22;
  v47[0] = v22;
  v26 = swift_allocObject();
  v61 = xmmword_241075D60;
  *(v26 + 16) = xmmword_241075D60;
  v27 = AMSSetLogKeyIfNeeded();
  sub_24107475C();

  *&v60 = sub_24107379C(0, &qword_27E525388, 0x277D4B9B0);
  sub_2410746EC();

  sub_2410746CC();
  v28 = sub_24107379C(0, &qword_27E5253B0, 0x277CCAE80);
  *(&v66 + 1) = v28;
  *&aBlock = v62;
  v29 = v62;
  sub_2410746DC();
  sub_24107326C(&aBlock, &qword_27E525398, &unk_241075EA8);
  sub_24107472C();

  [v29 activate];
  v58 = v25;
  v62 = v23;
  *(swift_allocObject() + 16) = v61;
  v59 = (v23 + 32) & ~v23;
  v30 = AMSSetLogKeyIfNeeded();
  sub_24107475C();

  v31 = v24;
  sub_2410746EC();

  sub_2410746CC();
  *(&v66 + 1) = v28;
  *&aBlock = v29;
  v32 = v29;
  sub_2410746DC();
  sub_24107326C(&aBlock, &qword_27E525398, &unk_241075EA8);
  sub_24107472C();

  v33 = [v32 exportedObject];
  v48 = v32;
  if (v33)
  {
    sub_2410747EC();
    swift_unknownObjectRelease();
    sub_24107326C(&aBlock, &qword_27E525398, &unk_241075EA8);
    v34 = v64;
  }

  else
  {
    aBlock = 0u;
    v66 = 0u;
    sub_24107326C(&aBlock, &qword_27E525398, &unk_241075EA8);
    *(swift_allocObject() + 16) = v61;
    v35 = AMSSetLogKeyIfNeeded();
    sub_24107475C();

    v31 = v24;
    sub_2410746EC();
    v34 = v64;

    sub_2410746CC();
    *(&v66 + 1) = v28;
    *&aBlock = v32;
    v36 = v32;
    sub_2410746DC();
    sub_24107326C(&aBlock, &qword_27E525398, &unk_241075EA8);
    sub_24107472C();
  }

  v49 = v31;
  *(swift_allocObject() + 16) = xmmword_241075D50;
  v37 = AMSSetLogKeyIfNeeded();
  sub_24107475C();

  sub_2410746EC();

  sub_2410746CC();
  sub_24107472C();

  v38 = v53;
  v39 = v51;
  v40 = v54;
  (*(v53 + 16))(v51, v52, v54);
  v41 = (*(v38 + 80) + 24) & ~*(v38 + 80);
  v42 = swift_allocObject();
  *(v42 + 16) = v34;
  (*(v38 + 32))(v42 + v41, v39, v40);
  v67 = v56;
  v68 = v42;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  *&v66 = sub_24106F818;
  *(&v66 + 1) = v57;
  v43 = _Block_copy(&aBlock);

  v44 = [v48 asynchronousExceptionServiceWithErrorHandler_];
  _Block_release(v43);
  *(swift_allocObject() + 16) = v61;
  v45 = AMSSetLogKeyIfNeeded();
  sub_24107475C();

  sub_2410746EC();

  sub_2410746CC();
  *(&v66 + 1) = swift_getObjectType();
  *&aBlock = v44;
  swift_unknownObjectRetain();
  sub_2410746DC();
  sub_24107326C(&aBlock, &qword_27E525398, &unk_241075EA8);
  sub_24107472C();

  return v44;
}

void sub_24106F818(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t STExceptionApp.addException()()
{
  *(v1 + 16) = v0;
  *(v1 + 24) = swift_getObjectType();

  return MEMORY[0x2822009F8](sub_24106F8F0, 0, 0);
}

uint64_t sub_24106F8F0()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *(v1 + 16) = *(v0 + 16);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *v2 = v0;
  v2[1] = sub_24106F9E4;
  v3 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v2, 0, 0, 0x7065637845646461, 0xEE0029286E6F6974, sub_24106FF20, v1, v3);
}

uint64_t sub_24106F9E4()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_24106FB18;
  }

  else
  {

    v2 = sub_24106FB00;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24106FB18()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24106FB7C(uint64_t a1, void *a2, uint64_t a3)
{
  v19[1] = a3;
  v20 = a1;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525390, &qword_241075EA0);
  v4 = *(v21 - 8);
  MEMORY[0x28223BE20]();
  v6 = v19 - v5;
  if (qword_27E525428 != -1)
  {
    swift_once();
  }

  v7 = sub_24107474C();
  v19[0] = __swift_project_value_buffer(v7, qword_27E525438);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525310, &qword_241075D90);
  sub_24107470C();
  *(swift_allocObject() + 16) = xmmword_241075D50;
  v23 = sub_24107379C(0, &qword_27E525388, 0x277D4B9B0);
  aBlock[0] = a2;
  v8 = a2;
  v9 = AMSLogKey();
  if (v9)
  {
    v10 = v9;
    sub_24107475C();
  }

  sub_2410746FC();

  __swift_destroy_boxed_opaque_existential_0(aBlock);
  sub_2410746CC();
  sub_24107472C();

  v11 = v20;
  v12 = sub_24106EC88(v20, &qword_27E525390, &qword_241075EA0, &unk_2852DFA98, sub_241073788, &block_descriptor_87);
  v13 = v21;
  (*(v4 + 16))(v6, v11, v21);
  v14 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = v8;
  (*(v4 + 32))(v15 + v14, v6, v13);
  v24 = sub_241074180;
  v25 = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24106FF28;
  v23 = &block_descriptor_111;
  v16 = _Block_copy(aBlock);
  v17 = v8;

  [v12 addExceptionFor:v17 completionHandler:v16];
  _Block_release(v16);
  return swift_unknownObjectRelease();
}

void sub_24106FF28(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t sub_24106FF94(void *a1, uint64_t a2, const void *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525380, &qword_241075DF0);
  MEMORY[0x28223BE20]();
  v6 = &v14 - v5;
  v7 = _Block_copy(a3);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = a1;
  v9 = sub_2410747DC();
  (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = &unk_241075E88;
  v10[5] = v8;
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_241075E90;
  v11[5] = v10;
  v12 = a1;
  sub_241072844(0, 0, v6, &unk_241075E98, v11);
}

uint64_t sub_241070108(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = swift_getObjectType();
  v2[4] = _Block_copy(a1);
  v5 = a2;

  return MEMORY[0x2822009F8](sub_241070194, 0, 0);
}

uint64_t sub_241070194()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *(v1 + 16) = *(v0 + 16);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *v2 = v0;
  v2[1] = sub_241070288;
  v3 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v2, 0, 0, 0x7065637845646461, 0xEE0029286E6F6974, sub_24107468C, v1, v3);
}

uint64_t sub_241070288()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_241070424;
  }

  else
  {

    v2 = sub_2410703A4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2410703A4()
{
  v1 = *(v0 + 32);

  (*(v1 + 16))(v1, 0);
  _Block_release(*(v0 + 32));
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_241070424()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 32);

  v3 = sub_2410746BC();

  (*(v2 + 16))(v2, v3);
  _Block_release(*(v0 + 32));
  v4 = *(v0 + 8);

  return v4();
}

uint64_t static STExceptionApp.fetchExceptions(forRequesterDSID:adamID:)(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  return MEMORY[0x2822009F8](sub_2410704F4, 0, 0);
}

uint64_t sub_2410704F4()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  v4 = swift_task_alloc();
  v0[6] = v4;
  v4[2] = v1;
  v4[3] = v3;
  v4[4] = v2;
  v4[5] = v1;
  v5 = swift_task_alloc();
  v0[7] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525318, &qword_241075DA8);
  *v5 = v0;
  v5[1] = sub_24107060C;

  return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0xD000000000000029, 0x8000000241076A50, sub_241070BE8, v4, v6);
}

uint64_t sub_24107060C()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_241070744;
  }

  else
  {

    v2 = sub_241070728;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_241070744()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2410707A8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v20[2] = a5;
  v24 = a2;
  v25 = a4;
  v22 = a1;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5253B8, &qword_241075EC8);
  v6 = *(v23 - 8);
  MEMORY[0x28223BE20]();
  v21 = v20 - v7;
  if (qword_27E525428 != -1)
  {
    swift_once();
  }

  v8 = sub_24107474C();
  v20[1] = __swift_project_value_buffer(v8, qword_27E525438);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525310, &qword_241075D90);
  sub_24107470C();
  *(swift_allocObject() + 16) = xmmword_241075D70;
  v9 = AMSSetLogKeyIfNeeded();
  sub_24107475C();

  sub_24107379C(0, &qword_27E525388, 0x277D4B9B0);
  v10 = v24;
  sub_2410746EC();

  sub_2410746CC();
  v27 = sub_24107379C(0, &qword_27E5253C0, 0x277CCABB0);
  aBlock[0] = a3;
  v20[0] = a3;
  sub_2410746DC();
  sub_24107326C(aBlock, &qword_27E525398, &unk_241075EA8);
  sub_2410746CC();
  v27 = MEMORY[0x277D84D38];
  v11 = v25;
  aBlock[0] = v25;
  sub_2410746DC();
  sub_24107326C(aBlock, &qword_27E525398, &unk_241075EA8);
  sub_24107472C();

  v12 = v22;
  v13 = sub_24106EC88(v22, &qword_27E5253B8, &qword_241075EC8, &unk_2852DFB38, sub_2410737E4, &block_descriptor_99);
  v14 = v21;
  v15 = v23;
  (*(v6 + 16))(v21, v12, v23);
  v16 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = v10;
  (*(v6 + 32))(v17 + v16, v14, v15);
  v28 = sub_241073B24;
  v29 = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_241070BF4;
  v27 = &block_descriptor_105;
  v18 = _Block_copy(aBlock);

  [v13 fetchExceptionsForRequesterDSID:v20[0] adamID:v11 completionHandler:v18];
  _Block_release(v18);
  return swift_unknownObjectRelease();
}

uint64_t sub_241070BF4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_24107379C(0, &qword_27E525388, 0x277D4B9B0);
    v4 = sub_24107478C();
  }

  v6 = a3;
  v5(v4, a3);
}

uint64_t sub_241070C98(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, const void *a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525380, &qword_241075DF0);
  MEMORY[0x28223BE20]();
  v10 = &v18 - v9;
  v11 = _Block_copy(a5);
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = a4;
  v12[4] = v11;
  v12[5] = a1;
  v13 = sub_2410747DC();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_241075E68;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_241075E70;
  v15[5] = v14;
  v16 = a3;
  sub_241072844(0, 0, v10, &unk_241075E78, v15);
}

uint64_t sub_241070E20(void *a1, uint64_t a2, void *aBlock, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = _Block_copy(aBlock);
  swift_getObjCClassMetadata();
  v7 = a1;
  v8 = swift_task_alloc();
  v4[4] = v8;
  *v8 = v4;
  v8[1] = sub_241070EF0;

  return static STExceptionApp.fetchExceptions(forRequesterDSID:adamID:)(v7, a2);
}

uint64_t sub_241070EF0(uint64_t a1)
{
  v3 = v1;
  v4 = *v2;
  v5 = *(*v2 + 16);
  v6 = *v2;

  if (v3)
  {
    v7 = sub_2410746BC();

    v8 = v7;
    v9 = 0;
  }

  else
  {
    sub_24107379C(0, &qword_27E525388, 0x277D4B9B0);
    v10 = sub_24107477C();

    v9 = v10;
    v8 = 0;
    v7 = v10;
  }

  v11 = *(v4 + 24);
  (v11)[2](v11, v9, v8);

  _Block_release(v11);
  v12 = *(v6 + 8);

  return v12();
}

uint64_t static STExceptionApp.fetchExceptions(forRequesterDSID:)(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return MEMORY[0x2822009F8](sub_2410710AC, 0, 0);
}

uint64_t sub_2410710AC()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = swift_task_alloc();
  v0[5] = v3;
  v3[2] = v1;
  v3[3] = v2;
  v3[4] = v1;
  v4 = swift_task_alloc();
  v0[6] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525318, &qword_241075DA8);
  *v4 = v0;
  v4[1] = sub_2410711B8;

  return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0xD000000000000022, 0x8000000241076A80, sub_24107170C, v3, v5);
}

uint64_t sub_2410711B8()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_2410712D4;
  }

  else
  {

    v2 = sub_241074690;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2410712D4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_241071338(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v19 = a3;
  v20 = a4;
  v23 = a2;
  v21 = a1;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5253B8, &qword_241075EC8);
  v4 = *(v22 - 8);
  MEMORY[0x28223BE20]();
  v6 = &v18 - v5;
  if (qword_27E525428 != -1)
  {
    swift_once();
  }

  v7 = sub_24107474C();
  v18 = __swift_project_value_buffer(v7, qword_27E525438);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525310, &qword_241075D90);
  sub_24107470C();
  *(swift_allocObject() + 16) = xmmword_241075D60;
  v8 = AMSSetLogKeyIfNeeded();
  sub_24107475C();

  sub_24107379C(0, &qword_27E525388, 0x277D4B9B0);
  v9 = v23;
  sub_2410746EC();

  sub_2410746CC();
  v25 = sub_24107379C(0, &qword_27E5253C0, 0x277CCABB0);
  aBlock[0] = v19;
  v10 = v19;
  sub_2410746DC();
  sub_24107326C(aBlock, &qword_27E525398, &unk_241075EA8);
  sub_24107472C();

  v11 = v21;
  v12 = sub_24106EC88(v21, &qword_27E5253B8, &qword_241075EC8, &unk_2852DFB38, sub_2410737E4, &block_descriptor_99);
  v13 = v22;
  (*(v4 + 16))(v6, v11, v22);
  v14 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = v9;
  (*(v4 + 32))(v15 + v14, v6, v13);
  v26 = sub_241074684;
  v27 = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_241070BF4;
  v25 = &block_descriptor_93;
  v16 = _Block_copy(aBlock);

  [v12 fetchAllAppExceptionsForRequesterDSID:v10 completionHandler:v16];
  _Block_release(v16);
  return swift_unknownObjectRelease();
}

uint64_t sub_241071718(uint64_t a1, uint64_t a2, void *a3, const void *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525380, &qword_241075DF0);
  MEMORY[0x28223BE20]();
  v8 = &v16 - v7;
  v9 = _Block_copy(a4);
  v10 = swift_allocObject();
  v10[2] = a3;
  v10[3] = v9;
  v10[4] = a1;
  v11 = sub_2410747DC();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_241075E48;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_241075E50;
  v13[5] = v12;
  v14 = a3;
  sub_241072844(0, 0, v8, &unk_241075E58, v13);
}

uint64_t sub_24107189C(void *a1, void *aBlock, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = _Block_copy(aBlock);
  swift_getObjCClassMetadata();
  v5 = a1;
  v6 = swift_task_alloc();
  v3[4] = v6;
  *v6 = v3;
  v6[1] = sub_24107466C;

  return static STExceptionApp.fetchExceptions(forRequesterDSID:)(v5);
}

uint64_t static STExceptionApp.deleteException(_:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_241071984, 0, 0);
}

uint64_t sub_241071984()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = swift_task_alloc();
  v0[4] = v3;
  v3[2] = v1;
  v3[3] = v2;
  v3[4] = v1;
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_241071A7C;
  v5 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v4, 0, 0, 0xD000000000000013, 0x8000000241076AB0, sub_241071F64, v3, v5);
}

uint64_t sub_241071A7C()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_241074688;
  }

  else
  {

    v2 = sub_241074668;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_241071B98(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v20 = a3;
  v21 = a4;
  v25 = a2;
  v23 = a1;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525390, &qword_241075EA0);
  v4 = *(v24 - 8);
  MEMORY[0x28223BE20]();
  v22 = v19 - v5;
  if (qword_27E525428 != -1)
  {
    swift_once();
  }

  v6 = sub_24107474C();
  v19[1] = __swift_project_value_buffer(v6, qword_27E525438);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525310, &qword_241075D90);
  sub_24107470C();
  *(swift_allocObject() + 16) = xmmword_241075D60;
  v7 = AMSSetLogKeyIfNeeded();
  sub_24107475C();

  v8 = sub_24107379C(0, &qword_27E525388, 0x277D4B9B0);
  v9 = v25;
  sub_2410746EC();

  sub_2410746CC();
  v27 = v8;
  aBlock[0] = v20;
  v10 = v20;
  sub_2410746DC();
  sub_24107326C(aBlock, &qword_27E525398, &unk_241075EA8);
  sub_24107472C();

  v11 = v23;
  v12 = sub_24106EC88(v23, &qword_27E525390, &qword_241075EA0, &unk_2852DFA98, sub_241073788, &block_descriptor_87);
  v13 = v22;
  v14 = v24;
  (*(v4 + 16))(v22, v11, v24);
  v15 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = v9;
  (*(v4 + 32))(v16 + v15, v13, v14);
  v28 = sub_2410732CC;
  v29 = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24106FF28;
  v27 = &block_descriptor;
  v17 = _Block_copy(aBlock);

  [v12 deleteExceptionFor:v10 completionHandler:v17];
  _Block_release(v17);
  return swift_unknownObjectRelease();
}

uint64_t sub_241071F70(uint64_t a1, uint64_t a2, void *a3, const void *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525380, &qword_241075DF0);
  MEMORY[0x28223BE20]();
  v8 = &v16 - v7;
  v9 = _Block_copy(a4);
  v10 = swift_allocObject();
  v10[2] = a3;
  v10[3] = v9;
  v10[4] = a1;
  v11 = sub_2410747DC();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_241075E00;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_241075E10;
  v13[5] = v12;
  v14 = a3;
  sub_241072844(0, 0, v8, &unk_241075E20, v13);
}

uint64_t sub_2410720F4(void *a1, void *aBlock, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = _Block_copy(aBlock);
  swift_getObjCClassMetadata();
  v5 = a1;
  v6 = swift_task_alloc();
  v3[4] = v6;
  *v6 = v3;
  v6[1] = sub_2410721BC;

  return static STExceptionApp.deleteException(_:)(v5);
}

uint64_t sub_2410721BC()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 16);
  v6 = *v1;

  v7 = *(v3 + 24);
  if (v2)
  {
    v8 = sub_2410746BC();

    (*(v7 + 16))(v7, v8);
  }

  else
  {
    (*(v7 + 16))(v7, 0);
  }

  _Block_release(*(v4 + 24));
  v9 = *(v6 + 8);

  return v9();
}

uint64_t sub_241072340()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_241074664;

  return sub_2410720F4(v2, v3, v4);
}

uint64_t sub_2410723F4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_241074664;

  return v6();
}

uint64_t sub_2410724DC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_241074664;

  return sub_2410723F4(v2, v3, v4);
}

uint64_t sub_24107259C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_241072684;

  return v7();
}

uint64_t sub_241072684()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_241072778(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_241074664;

  return sub_24107259C(a1, v4, v5, v6);
}

uint64_t sub_241072844(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525380, &qword_241075DF0);
  MEMORY[0x28223BE20]();
  v10 = v22 - v9;
  sub_241072B30(a3, v22 - v9);
  v11 = sub_2410747DC();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_24107326C(v10, &qword_27E525380, &qword_241075DF0);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v13 = 0;
    v15 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_2410747CC();
  (*(v12 + 8))(v10, v11);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v13 = sub_24107479C();
  v15 = v14;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v16 = sub_24107476C() + 32;
    v17 = swift_allocObject();
    *(v17 + 16) = a4;
    *(v17 + 24) = a5;

    if (v15 | v13)
    {
      v23[0] = 0;
      v23[1] = 0;
      v18 = v23;
      v23[2] = v13;
      v23[3] = v15;
    }

    else
    {
      v18 = 0;
    }

    v22[1] = 7;
    v22[2] = v18;
    v22[3] = v16;
    v20 = swift_task_create();

    sub_24107326C(a3, &qword_27E525380, &qword_241075DF0);

    return v20;
  }

LABEL_8:
  sub_24107326C(a3, &qword_27E525380, &qword_241075DF0);
  v19 = swift_allocObject();
  *(v19 + 16) = a4;
  *(v19 + 24) = a5;
  if (v15 | v13)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v13;
    v23[7] = v15;
  }

  return swift_task_create();
}

uint64_t sub_241072B30(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525380, &qword_241075DF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_241072BA0(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_241072C98;

  return v6(a1);
}

uint64_t sub_241072C98()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_241072D90(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_241074664;

  return sub_241072BA0(a1, v4);
}

uint64_t sub_241072E48(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_241072684;

  return sub_241072BA0(a1, v4);
}

uint64_t objectdestroyTm()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_241072F40()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_241074664;

  return sub_24107189C(v2, v3, v4);
}

uint64_t sub_241072FF4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_241072684;

  return sub_24107259C(a1, v4, v5, v6);
}

uint64_t sub_2410730C0()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_241074664;

  return sub_241070E20(v2, v3, v5, v4);
}

uint64_t sub_241073180()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_241074664;

  return sub_241070108(v2, v3);
}

uint64_t objectdestroy_13Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_24107326C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2410732CC(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525390, &qword_241075EA0);
  if (a1)
  {
    v2 = a1;
    if (qword_27E525428 != -1)
    {
      swift_once();
    }

    v3 = sub_24107474C();
    __swift_project_value_buffer(v3, qword_27E525438);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525310, &qword_241075D90);
    sub_24107470C();
    *(swift_allocObject() + 16) = xmmword_241075D60;
    v4 = AMSSetLogKeyIfNeeded();
    sub_24107475C();

    sub_24107379C(0, &qword_27E525388, 0x277D4B9B0);
    sub_2410746EC();

    sub_2410746CC();
    swift_getErrorValue();
    v10[3] = v9;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v10);
    (*(*(v9 - 8) + 16))(boxed_opaque_existential_0);
    sub_2410746DC();
    sub_24107326C(v10, &qword_27E525398, &unk_241075EA8);
    sub_24107472C();

    v10[0] = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525390, &qword_241075EA0);
    return sub_2410747AC();
  }

  else
  {
    if (qword_27E525428 != -1)
    {
      swift_once();
    }

    v7 = sub_24107474C();
    __swift_project_value_buffer(v7, qword_27E525438);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525310, &qword_241075D90);
    sub_24107470C();
    *(swift_allocObject() + 16) = xmmword_241075D50;
    v8 = AMSSetLogKeyIfNeeded();
    sub_24107475C();

    sub_24107379C(0, &qword_27E525388, 0x277D4B9B0);
    sub_2410746EC();

    sub_2410746CC();
    sub_24107472C();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525390, &qword_241075EA0);
    return sub_2410747BC();
  }
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_24107379C(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_2410737F8(void *a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  if (qword_27E525428 != -1)
  {
    swift_once();
  }

  v5 = sub_24107474C();
  __swift_project_value_buffer(v5, qword_27E525438);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525310, &qword_241075D90);
  sub_24107470C();
  *(swift_allocObject() + 16) = xmmword_241075D60;
  v6 = AMSSetLogKeyIfNeeded();
  sub_24107475C();

  sub_24107379C(0, &qword_27E525388, 0x277D4B9B0);
  sub_2410746EC();

  sub_2410746CC();
  swift_getErrorValue();
  v12[3] = v11;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v12);
  (*(*(v11 - 8) + 16))(boxed_opaque_existential_0);
  sub_2410746DC();
  sub_24107326C(v12, &qword_27E525398, &unk_241075EA8);
  sub_24107471C();

  v12[0] = a1;
  v8 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  return sub_2410747AC();
}

uint64_t objectdestroy_80Tm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 24) & ~v5;
  v7 = *(v4 + 64);
  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x2821FE8E8](v2, v6 + v7, v5 | 7);
}

uint64_t sub_241073B28(uint64_t a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5253B8, &qword_241075EC8);
  if (a2)
  {
    v4 = a2;
    if (qword_27E525428 != -1)
    {
      swift_once();
    }

    v5 = sub_24107474C();
    __swift_project_value_buffer(v5, qword_27E525438);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525310, &qword_241075D90);
    sub_24107470C();
    *(swift_allocObject() + 16) = xmmword_241075D60;
    v6 = AMSSetLogKeyIfNeeded();
    sub_24107475C();

    sub_24107379C(0, &qword_27E525388, 0x277D4B9B0);
    sub_2410746EC();

    sub_2410746CC();
    swift_getErrorValue();
    v16 = v14;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v15);
    (*(*(v14 - 8) + 16))(boxed_opaque_existential_0);
    sub_2410746DC();
    sub_24107326C(v15, &qword_27E525398, &unk_241075EA8);
    sub_24107471C();

    v15[0] = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5253B8, &qword_241075EC8);
    return sub_2410747AC();
  }

  if (!a1)
  {
    if (qword_27E525428 != -1)
    {
      swift_once();
    }

    v12 = sub_24107474C();
    __swift_project_value_buffer(v12, qword_27E525438);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525310, &qword_241075D90);
    sub_24107470C();
    *(swift_allocObject() + 16) = xmmword_241075D50;
    v13 = AMSSetLogKeyIfNeeded();
    sub_24107475C();

    sub_24107379C(0, &qword_27E525388, 0x277D4B9B0);
    sub_2410746EC();

    sub_2410746CC();
    sub_24107471C();

    v15[0] = AMSError();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5253B8, &qword_241075EC8);
    return sub_2410747AC();
  }

  v9 = qword_27E525428;

  if (v9 != -1)
  {
    swift_once();
  }

  v10 = sub_24107474C();
  __swift_project_value_buffer(v10, qword_27E525438);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525310, &qword_241075D90);
  sub_24107470C();
  *(swift_allocObject() + 16) = xmmword_241075D60;
  v11 = AMSSetLogKeyIfNeeded();
  sub_24107475C();

  sub_24107379C(0, &qword_27E525388, 0x277D4B9B0);
  sub_2410746EC();

  sub_2410746CC();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525318, &qword_241075DA8);
  v15[0] = a1;

  sub_2410746DC();
  sub_24107326C(v15, &qword_27E525398, &unk_241075EA8);
  sub_24107472C();

  v15[0] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5253B8, &qword_241075EC8);
  return sub_2410747BC();
}

uint64_t sub_241074180(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525390, &qword_241075EA0);
  v3 = *(v1 + 16);
  if (a1)
  {
    v4 = a1;
    if (qword_27E525428 != -1)
    {
      swift_once();
    }

    v5 = sub_24107474C();
    __swift_project_value_buffer(v5, qword_27E525438);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525310, &qword_241075D90);
    sub_24107470C();
    *(swift_allocObject() + 16) = xmmword_241075D60;
    v17 = sub_24107379C(0, &qword_27E525388, 0x277D4B9B0);
    v16[0] = v3;
    v6 = v3;
    v7 = AMSLogKey();
    if (v7)
    {
      v8 = v7;
      sub_24107475C();
    }

    sub_2410746FC();

    __swift_destroy_boxed_opaque_existential_0(v16);
    sub_2410746CC();
    swift_getErrorValue();
    v17 = v15;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v16);
    (*(*(v15 - 8) + 16))(boxed_opaque_existential_0);
    sub_2410746DC();
    sub_24107326C(v16, &qword_27E525398, &unk_241075EA8);
    sub_24107471C();

    v16[0] = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525390, &qword_241075EA0);
    return sub_2410747AC();
  }

  else
  {
    if (qword_27E525428 != -1)
    {
      swift_once();
    }

    v9 = sub_24107474C();
    __swift_project_value_buffer(v9, qword_27E525438);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525310, &qword_241075D90);
    sub_24107470C();
    *(swift_allocObject() + 16) = xmmword_241075D50;
    v17 = sub_24107379C(0, &qword_27E525388, 0x277D4B9B0);
    v16[0] = v3;
    v10 = v3;
    v11 = AMSLogKey();
    if (v11)
    {
      v12 = v11;
      sub_24107475C();
    }

    sub_2410746FC();

    __swift_destroy_boxed_opaque_existential_0(v16);
    sub_2410746CC();
    sub_24107472C();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525390, &qword_241075EA0);
    return sub_2410747BC();
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