id PHChange.npto_changeDetails<A>(for:)(uint64_t a1)
{
  result = [v1 changeDetailsForObject_];
  if (result)
  {
    objc_opt_self();
    return swift_dynamicCastObjCClassUnconditional();
  }

  return result;
}

{
  objc_opt_self();
  result = [v1 changeDetailsForFetchResult_];
  if (result)
  {
    objc_opt_self();
    return swift_dynamicCastObjCClassUnconditional();
  }

  return result;
}

uint64_t sub_25B658BD0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA46270, "6\n");
  swift_allocObject();
  result = sub_25B668AC4();
  static TaskTracing.$id = result;
  return result;
}

uint64_t *TaskTracing.$id.unsafeMutableAddressor()
{
  if (qword_27FA46420 != -1)
  {
    swift_once();
  }

  return &static TaskTracing.$id;
}

uint64_t static TaskTracing.$id.getter()
{
  if (qword_27FA46420 != -1)
  {
    swift_once();
  }
}

uint64_t static TaskTracing.id.getter()
{
  if (qword_27FA46420 != -1)
  {
    swift_once();
  }

  sub_25B668AD4();
  return v1;
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

const char *NanoPhotosCoreFeatures.feature.getter(unsigned __int8 a1)
{
  v1 = "LocalLibrary";
  v2 = "PhotosSyncV2";
  if (a1 != 2)
  {
    v2 = "GIFSupport";
  }

  if (a1)
  {
    v1 = "MemoriesSync";
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t NanoPhotosCoreFeatures.hashValue.getter(unsigned __int8 a1)
{
  sub_25B668A84();
  MEMORY[0x25F8687B0](a1);
  return sub_25B668AA4();
}

uint64_t sub_25B658EA4()
{
  v1 = *v0;
  sub_25B668A84();
  MEMORY[0x25F8687B0](v1);
  return sub_25B668AA4();
}

uint64_t sub_25B658F18(uint64_t a1)
{
  v2 = *v1;
  sub_25B668A84();
  MEMORY[0x25F8687B0](v2);
  return sub_25B668AA4();
}

unint64_t sub_25B658F60()
{
  result = qword_27FA46278;
  if (!qword_27FA46278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA46278);
  }

  return result;
}

const char *sub_25B658FC8()
{
  v1 = "LocalLibrary";
  v2 = "PhotosSyncV2";
  if (*v0 != 2)
  {
    v2 = "GIFSupport";
  }

  if (*v0)
  {
    v1 = "MemoriesSync";
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t getEnumTagSinglePayload for NanoPhotosCoreFeatures(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for NanoPhotosCoreFeatures(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t property wrapper backing initializer of FetchResultObserver.fetchResult(uint64_t a1)
{
  v3 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA46280, &qword_25B6697F0);
  return sub_25B6591EC(&v3, v1);
}

uint64_t sub_25B6591EC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  (*(v4 + 16))(&v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a2);
  sub_25B6686B4();
  return (*(v4 + 8))(a1, a2);
}

uint64_t sub_25B6592DC@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x70))();
  *a2 = result;
  return result;
}

uint64_t sub_25B659338(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  return sub_25B659428(v1);
}

uint64_t FetchResultObserver.fetchResult.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_25B6686E4();

  return v1;
}

uint64_t sub_25B659428(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;
  return sub_25B6686F4();
}

uint64_t FetchResultObserver.$fetchResult.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA46288, &qword_25B669850);
  sub_25B6686C4();
  return swift_endAccess();
}

uint64_t sub_25B6595D8(uint64_t a1)
{
  sub_25B65A158(a1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA46290, &qword_25B669858);
  v3 = *(*(v2 - 8) + 8);

  return v3(a1, v2);
}

id FetchResultObserver.init(_:)(void *a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = MEMORY[0x277D85000];
  v6 = *MEMORY[0x277D85000];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA46288, &qword_25B669850);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v24 - v9;
  v11 = *((v6 & v4) + 0x58);
  v12 = *((v6 & v4) + 0x50);
  v26 = 0;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA46280, &qword_25B6697F0);
  sub_25B6591EC(&v26, v13);
  (*(v8 + 32))(&v2[v11], v10, v7);
  v14 = *((*v5 & *v2) + 0x60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA46298, &qword_25B669860);
  *&v2[v14] = sub_25B6686A4();
  *&v2[*((*v5 & *v2) + 0x68)] = a1;
  ResultObserver = type metadata accessor for FetchResultObserver(0, v12, v15, v16);
  v25.receiver = v2;
  v25.super_class = ResultObserver;
  v18 = a1;
  v19 = objc_msgSendSuper2(&v25, sel_init);
  v20 = objc_opt_self();
  v21 = v19;
  v22 = [v20 sharedPhotoLibrary];
  [v22 registerChangeObserver_];

  return v21;
}

id FetchResultObserver.__deallocating_deinit()
{
  v1 = *v0;
  v2 = *MEMORY[0x277D85000];
  v3 = [objc_opt_self() sharedPhotoLibrary];
  [v3 unregisterChangeObserver_];

  ResultObserver = type metadata accessor for FetchResultObserver(0, *((v2 & v1) + 0x50), v4, v5);
  v8.receiver = v0;
  v8.super_class = ResultObserver;
  return objc_msgSendSuper2(&v8, sel_dealloc);
}

void sub_25B6599D8(char *a1)
{
  v2 = MEMORY[0x277D85000];
  v3 = *((*MEMORY[0x277D85000] & *a1) + 0x58);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA46288, &qword_25B669850);
  (*(*(v4 - 8) + 8))(&a1[v3], v4);

  v5 = *&a1[*((*v2 & *a1) + 0x68)];
}

uint64_t FetchResultObserver.setObservedFetchResult(_:)(void *a1)
{
  v3 = sub_25B668714();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_25B668734();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = swift_allocObject();
  *(v11 + 16) = v1;
  *(v11 + 24) = a1;
  aBlock[4] = sub_25B65A2DC;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_25B659D50;
  aBlock[3] = &block_descriptor;
  v12 = _Block_copy(aBlock);
  v13 = a1;
  v14 = v1;
  sub_25B668724();
  v16[1] = MEMORY[0x277D84F90];
  sub_25B65A454();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA462B0, &qword_25B669868);
  sub_25B65A4AC();
  sub_25B668974();
  MEMORY[0x25F868650](0, v10, v6, v12);
  _Block_release(v12);
  (*(v4 + 8))(v6, v3);
  (*(v8 + 8))(v10, v7);
}

uint64_t sub_25B659D50(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

Swift::Void __swiftcall FetchResultObserver.photoLibraryDidChange(_:)(PHChange a1)
{
  v3 = sub_25B668714();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_25B668734();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = swift_allocObject();
  v11[2].super.isa = v1;
  v11[3].super.isa = a1.super.isa;
  aBlock[4] = sub_25B65A558;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_25B659D50;
  aBlock[3] = &block_descriptor_7;
  v12 = _Block_copy(aBlock);
  v13 = v1;
  v14 = a1.super.isa;
  sub_25B668724();
  v15[1] = MEMORY[0x277D84F90];
  sub_25B65A454();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA462B0, &qword_25B669868);
  sub_25B65A4AC();
  sub_25B668974();
  MEMORY[0x25F868650](0, v10, v6, v12);
  _Block_release(v12);
  (*(v4 + 8))(v6, v3);
  (*(v8 + 8))(v10, v7);
}

void sub_25B65A028(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  FetchResultObserver.photoLibraryDidChange(_:)(v4);
}

id FetchResultObserver.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_25B65A114@<X0>(uint64_t a1@<X0>, uint64_t *a3@<X8>, uint64_t x2_0@<X2>, uint64_t a4@<X3>)
{
  type metadata accessor for FetchResultObserver(0, *(a1 + 80), x2_0, a4);
  result = sub_25B668684();
  *a3 = result;
  return result;
}

uint64_t sub_25B65A158(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA46290, &qword_25B669858);
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v6 - v3, a1);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA46288, &qword_25B669850);
  sub_25B6686D4();
  return swift_endAccess();
}

uint64_t sub_25B65A29C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void sub_25B65A2DC()
{
  v1 = *(v0 + 24);
  v2 = (*((*MEMORY[0x277D85000] & **(v0 + 16)) + 0x70))();
  if (!v2)
  {
    if (!v1)
    {
      return;
    }

    v4 = v1;
    goto LABEL_7;
  }

  v3 = v2;
  if (!v1)
  {

    sub_25B659428(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA46328, "l\n");
    v7 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v6 = 0;
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA46328, "l\n");
  v4 = v1;
  v5 = sub_25B668944();

  if ((v5 & 1) == 0)
  {
LABEL_7:
    v6 = v4;
    sub_25B659428(v1);
    v7 = v6;
LABEL_9:
    v8 = v6;
    v9 = v7;
    sub_25B668694();
  }
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_25B65A454()
{
  result = qword_27FA462A8;
  if (!qword_27FA462A8)
  {
    sub_25B668714();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA462A8);
  }

  return result;
}

unint64_t sub_25B65A4AC()
{
  result = qword_27FA462B8;
  if (!qword_27FA462B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA462B0, &qword_25B669868);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA462B8);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

void sub_25B65A558()
{
  v1 = (*((*MEMORY[0x277D85000] & **(v0 + 16)) + 0x70))();
  if (v1)
  {
    v8 = v1;
    v2 = PHChange.npto_changeDetails<A>(for:)(v1);
    if (v2)
    {
      v3 = v2;
      v4 = [v2 fetchResultAfterChanges];
      v5 = v4;
      sub_25B659428(v4);
      v6 = v5;
      v7 = v3;
      sub_25B668694();
    }

    else
    {
    }
  }
}

void sub_25B65A710(uint64_t a1)
{
  sub_25B65A7BC(319);
  if (v1 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

void sub_25B65A7BC(uint64_t a1)
{
  if (!qword_27FA46320)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA46280, &qword_25B6697F0);
    v1 = sub_25B668704();
    if (!v2)
    {
      atomic_store(v1, &qword_27FA46320);
    }
  }
}

uint64_t TemporaryResourceFileError.hashValue.getter()
{
  sub_25B668A84();
  MEMORY[0x25F8687B0](0);
  return sub_25B668AA4();
}

uint64_t sub_25B65A8E0()
{
  sub_25B668A84();
  MEMORY[0x25F8687B0](0);
  return sub_25B668AA4();
}

uint64_t sub_25B65A94C(uint64_t a1)
{
  sub_25B668A84();
  MEMORY[0x25F8687B0](0);
  return sub_25B668AA4();
}

uint64_t TemporaryResourceFile.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC14NanoPhotosCore21TemporaryResourceFile_url;
  v4 = sub_25B668614();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t TemporaryResourceFile.__allocating_init(idsResourceURL:metadata:)(char *a1, uint64_t a2)
{
  v63 = *MEMORY[0x277D85DE8];
  v5 = sub_25B668644();
  v53 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v51 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_25B668614();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v52 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v58 = &v48 - v12;
  MEMORY[0x28223BE20](v11);
  v14 = &v48 - v13;
  sub_25B6685A4();
  v15 = sub_25B6687A4();

  v55 = v14;
  v56 = a2;
  v54 = v5;
  v57 = v8;
  v50 = a1;
  if (v15)
  {
    goto LABEL_12;
  }

  v59 = 29805;
  v60 = 0xE200000000000000;
  sub_25B6689A4();
  if (!*(a2 + 16) || (v16 = sub_25B65C1A0(v61), (v17 & 1) == 0))
  {
    sub_25B65C2F4(v61);
    goto LABEL_12;
  }

  sub_25B65C348(*(a2 + 56) + 32 * v16, v62);
  sub_25B65C2F4(v61);
  if ((swift_dynamicCast() & 1) == 0 || v59 != 1)
  {
LABEL_12:
    sub_25B6685C4();
    v21 = sub_25B6685A4();
    (*(v8 + 8))(v14, v7);
    if (sub_25B6687A4() < 1)
    {
      v48 = v2;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA46390, &qword_25B6698E0);
      sub_25B6685F4();
      v48 = v2;
      if (v61[0])
      {
        v22 = sub_25B668784();
        if (v23)
        {
          v24 = v23;
          if (v22 == sub_25B6685A4() && v24 == v25)
          {
          }

          else
          {
            v26 = sub_25B668A14();

            if ((v26 & 1) == 0)
            {
              v49 = v21;
              goto LABEL_22;
            }
          }
        }
      }
    }

    v49 = sub_25B6685A4();
    goto LABEL_22;
  }

  v59 = 29549;
  v60 = 0xE200000000000000;
  sub_25B6689A4();
  if (!*(a2 + 16) || (v18 = sub_25B65C1A0(v61), (v19 & 1) == 0))
  {
    sub_25B65C2F4(v61);
    goto LABEL_27;
  }

  sub_25B65C348(*(a2 + 56) + 32 * v18, v62);
  sub_25B65C2F4(v61);
  if ((swift_dynamicCast() & 1) == 0 || (v59 & 8) == 0)
  {
LABEL_27:
    v59 = 7632997;
    v60 = 0xE300000000000000;
    sub_25B6689A4();
    if (*(a2 + 16) && (v46 = sub_25B65C1A0(v61), (v47 & 1) != 0))
    {
      sub_25B65C348(*(a2 + 56) + 32 * v46, v62);
      sub_25B65C2F4(v61);
      if (swift_dynamicCast())
      {
        v48 = v2;
        v20 = v59;
        goto LABEL_31;
      }
    }

    else
    {

      sub_25B65C2F4(v61);
    }

    sub_25B65C3A4();
    swift_allocError();
    swift_willThrow();
    return (*(v8 + 8))(a1, v7);
  }

  v48 = v2;
  v20 = 7367790;
LABEL_31:
  v49 = v20;
LABEL_22:
  v27 = objc_opt_self();
  v28 = [v27 defaultManager];
  v29 = [v28 temporaryDirectory];

  v30 = v52;
  sub_25B668604();

  v61[0] = 0x676E696D6F636E69;
  v61[1] = 0xE90000000000002DLL;
  v31 = v51;
  sub_25B668634();
  v32 = sub_25B668624();
  v34 = v33;
  (*(v53 + 8))(v31, v54);
  MEMORY[0x25F8684D0](v32, v34);

  v35 = v55;
  sub_25B6685D4();

  v36 = *(v57 + 8);
  v36(v30, v7);
  sub_25B6685E4();

  v36(v35, v7);
  v37 = [v27 defaultManager];
  v38 = v50;
  v39 = sub_25B6685B4();
  v40 = sub_25B6685B4();
  v61[0] = 0;
  LOBYTE(v30) = [v37 copyItemAtURL:v39 toURL:v40 error:v61];

  if (v30)
  {
    v41 = v61[0];
    v36(v38, v7);
    v42 = *(v57 + 32);
    v42(v35, v58, v7);
    type metadata accessor for TemporaryResourceFile(0);
    v43 = swift_allocObject();
    v42((v43 + OBJC_IVAR____TtC14NanoPhotosCore21TemporaryResourceFile_url), v35, v7);
    result = v43;
    *(v43 + OBJC_IVAR____TtC14NanoPhotosCore21TemporaryResourceFile_metadata) = v56;
  }

  else
  {
    v45 = v61[0];

    sub_25B668594();

    swift_willThrow();
    v36(v38, v7);
    return (v36)(v58, v7);
  }

  return result;
}

uint64_t TemporaryResourceFile.__allocating_init(localResourceURL:metadata:)(char *a1, uint64_t a2)
{
  v36 = a2;
  v33 = a1;
  v37[1] = *MEMORY[0x277D85DE8];
  v35 = sub_25B668644();
  v2 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v4 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_25B668614();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v30 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v30 - v13;
  v32 = objc_opt_self();
  v15 = [v32 defaultManager];
  v16 = [v15 temporaryDirectory];

  sub_25B668604();
  sub_25B668634();
  sub_25B668624();
  (*(v2 + 8))(v4, v35);
  sub_25B6685D4();

  v31 = v6;
  v17 = *(v6 + 8);
  v17(v9, v5);
  v18 = v33;
  sub_25B6685A4();
  sub_25B6685E4();

  v34 = v5;
  v17(v12, v5);
  v19 = v18;
  v20 = [v32 defaultManager];
  v21 = sub_25B6685B4();
  v35 = v14;
  v22 = sub_25B6685B4();
  v37[0] = 0;
  LOBYTE(v16) = [v20 copyItemAtURL:v21 toURL:v22 error:v37];

  if (v16)
  {
    v23 = v37[0];
    v24 = v34;
    v17(v19, v34);
    v25 = *(v31 + 32);
    v25(v12, v35, v24);
    type metadata accessor for TemporaryResourceFile(0);
    v26 = swift_allocObject();
    v25((v26 + OBJC_IVAR____TtC14NanoPhotosCore21TemporaryResourceFile_url), v12, v24);
    result = v26;
    *(v26 + OBJC_IVAR____TtC14NanoPhotosCore21TemporaryResourceFile_metadata) = v36;
  }

  else
  {
    v28 = v37[0];

    sub_25B668594();

    swift_willThrow();
    v29 = v34;
    v17(v19, v34);
    return (v17)(v35, v29);
  }

  return result;
}

uint64_t TemporaryResourceFile.deinit()
{
  v1 = v0;
  v62[1] = *MEMORY[0x277D85DE8];
  v2 = sub_25B668614();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v59 = &v50[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_25B668674();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v56 = &v50[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v10 = &v50[-v9];
  v11 = sub_25B65C8E8();
  v52 = *(v6 + 16);
  v53 = v11;
  (v52)(v10);

  v12 = sub_25B668654();
  v13 = sub_25B668924();

  v14 = os_log_type_enabled(v12, v13);
  v15 = 0x27FA46000uLL;
  v60 = v2;
  v57 = v5;
  v55 = v6;
  if (v14)
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v61 = v3;
    v18 = v17;
    v62[0] = v17;
    *v16 = 136315138;
    sub_25B65C3F8();
    v19 = sub_25B668A04();
    v21 = sub_25B65BBF8(v19, v20, v62);
    v15 = 0x27FA46000;

    *(v16 + 4) = v21;
    v2 = v60;
    _os_log_impl(&dword_25B657000, v12, v13, "Removing %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v18);
    v22 = v18;
    v3 = v61;
    MEMORY[0x25F868E50](v22, -1, -1);
    MEMORY[0x25F868E50](v16, -1, -1);

    v23 = *(v6 + 8);
    v24 = v10;
    v25 = v57;
  }

  else
  {

    v23 = *(v6 + 8);
    v24 = v10;
    v25 = v5;
  }

  v54 = v23;
  v23(v24, v25);
  v26 = [objc_opt_self() defaultManager];
  v27 = *(v3 + 16);
  v58 = *(v15 + 3336);
  v28 = v59;
  v27(v59, v1 + v58, v2);
  v29 = sub_25B6685B4();
  v30 = *(v3 + 8);
  v61 = v3 + 8;
  v30(v28, v2);
  v62[0] = 0;
  v31 = [v26 removeItemAtURL:v29 error:v62];

  if (v31)
  {
    v32 = v62[0];
LABEL_9:
    v48 = v60;
    goto LABEL_10;
  }

  v33 = v62[0];
  v34 = sub_25B668594();

  swift_willThrow();
  v35 = v56;
  v36 = v57;
  (v52)(v56, v53, v57);

  v37 = sub_25B668654();
  v38 = sub_25B668914();

  if (!os_log_type_enabled(v37, v38))
  {

    v54(v35, v36);
    goto LABEL_9;
  }

  v39 = swift_slowAlloc();
  v53 = v34;
  v40 = v39;
  v52 = swift_slowAlloc();
  v62[0] = v52;
  *v40 = 136315138;
  v51 = v38;
  v41 = v59;
  v42 = v60;
  v27(v59, v1 + v58, v60);
  sub_25B65C3F8();
  v43 = sub_25B668A04();
  v45 = v44;
  v30(v41, v42);
  v46 = sub_25B65BBF8(v43, v45, v62);

  *(v40 + 4) = v46;
  _os_log_impl(&dword_25B657000, v37, v51, "Failed to remove %s", v40, 0xCu);
  v47 = v52;
  __swift_destroy_boxed_opaque_existential_0(v52);
  MEMORY[0x25F868E50](v47, -1, -1);
  MEMORY[0x25F868E50](v40, -1, -1);

  v54(v56, v36);
  v48 = v42;
LABEL_10:
  v30((v1 + v58), v48);

  return v1;
}

uint64_t TemporaryResourceFile.__deallocating_deinit()
{
  TemporaryResourceFile.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

unint64_t sub_25B65BBF8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_25B65BCC4(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_25B65C348(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_25B65BCC4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_25B65BDD0(a5, a6);
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
    result = sub_25B6689E4();
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

void *sub_25B65BDD0(uint64_t a1, unint64_t a2)
{
  v3 = sub_25B65BE1C(a1, a2);
  sub_25B65BF4C(&unk_286CE9268);
  return v3;
}

void *sub_25B65BE1C(uint64_t a1, unint64_t a2)
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

  v6 = sub_25B65C038(v5, 0);
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

  result = sub_25B6689E4();
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
        v10 = sub_25B6687C4();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_25B65C038(v10, 0);
        result = sub_25B6689B4();
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

uint64_t sub_25B65BF4C(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_25B65C0AC(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_25B65C038(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA463B0, &qword_25B6699D8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_25B65C0AC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA463B0, &qword_25B6699D8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

unint64_t sub_25B65C1E0(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_25B65C684(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x25F8686B0](v9, a1);
      sub_25B65C2F4(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t type metadata accessor for TemporaryResourceFile(uint64_t a1)
{
  result = qword_27FA46830;
  if (!qword_27FA46830)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25B65C348(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_25B65C3A4()
{
  result = qword_27FA46398;
  if (!qword_27FA46398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA46398);
  }

  return result;
}

unint64_t sub_25B65C3F8()
{
  result = qword_27FA463A0;
  if (!qword_27FA463A0)
  {
    sub_25B668614();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA463A0);
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

unint64_t sub_25B65C4A0()
{
  result = qword_27FA463A8;
  if (!qword_27FA463A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA463A8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TemporaryResourceFileError(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for TemporaryResourceFileError(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t sub_25B65C5E4(uint64_t a1)
{
  result = sub_25B668614();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t NPTOCollectionTarget.description.getter(uint64_t a1)
{
  if (a1 > 3)
  {
    if (a1 == 4)
    {
      return 0xD000000000000010;
    }

    if (a1 != 5)
    {
      if (a1 == 6)
      {
        return 0xD000000000000014;
      }

      return 0x6E776F6E6B6E55;
    }

    return 0x654D6465636E7953;
  }

  else
  {
    if (a1 == 1)
    {
      return 0x6C416465636E7953;
    }

    if (a1 != 2)
    {
      if (a1 == 3)
      {
        return 0xD000000000000012;
      }

      return 0x6E776F6E6B6E55;
    }

    return 0xD000000000000012;
  }
}

void type metadata accessor for NPTOCollectionTarget()
{
  if (!qword_27FA463B8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_27FA463B8);
    }
  }
}

uint64_t sub_25B65C84C()
{
  v0 = sub_25B668674();
  __swift_allocate_value_buffer(v0, qword_27FA46D18);
  __swift_project_value_buffer(v0, qword_27FA46D18);
  swift_beginAccess();

  return sub_25B668664();
}

uint64_t sub_25B65C8E8()
{
  if (qword_27FA46940 != -1)
  {
    swift_once();
  }

  v0 = sub_25B668674();

  return __swift_project_value_buffer(v0, qword_27FA46D18);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
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

uint64_t sub_25B65C9E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v7[6] = *(a7 - 8);
  v7[7] = swift_task_alloc();
  sub_25B668954();
  v7[8] = swift_task_alloc();
  v8 = sub_25B6688D4();
  v7[9] = v8;
  v7[10] = *(v8 - 8);
  v7[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25B65CB38, 0, 0);
}

uint64_t sub_25B65CB38()
{
  sub_25B6688E4();
  sub_25B6688B4();
  v1 = swift_task_alloc();
  v0[12] = v1;
  *v1 = v0;
  v1[1] = sub_25B65CBF8;
  v2 = v0[8];
  v3 = v0[9];

  return MEMORY[0x2822003E8](v2, 0, 0, v3);
}

uint64_t sub_25B65CBF8()
{

  return MEMORY[0x2822009F8](sub_25B65CCF4, 0, 0);
}

uint64_t sub_25B65CCF4()
{
  v1 = v0[8];
  v2 = v0[5];
  v3 = v0[6];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(v0[10] + 8))(v0[11], v0[9]);

    v4 = v0[1];

    return v4();
  }

  else
  {
    v6 = v0[3];
    (*(v3 + 32))(v0[7], v1, v2);
    v9 = (v6 + *v6);
    v7 = swift_task_alloc();
    v0[13] = v7;
    *v7 = v0;
    v7[1] = sub_25B65CEB0;
    v8 = v0[7];

    return v9(v8);
  }
}

uint64_t sub_25B65CEB0()
{

  return MEMORY[0x2822009F8](sub_25B65CFAC, 0, 0);
}

uint64_t sub_25B65CFAC()
{
  (*(v0[6] + 8))(v0[7], v0[5]);
  v1 = swift_task_alloc();
  v0[12] = v1;
  *v1 = v0;
  v1[1] = sub_25B65CBF8;
  v2 = v0[8];
  v3 = v0[9];

  return MEMORY[0x2822003E8](v2, 0, 0, v3);
}

uint64_t sub_25B65D068(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA463D0, "\b\t");
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_25B65DB88(a3, v25 - v10);
  v12 = sub_25B6688A4();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_25B65DBF8(v11);
  }

  else
  {
    sub_25B668894();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_25B668844();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_25B668794() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_25B65DBF8(a3);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_25B65DBF8(a3);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t AsyncStream.Subscription.deinit()
{

  sub_25B6688F4();

  return v0;
}

uint64_t AsyncStream.Subscription.__deallocating_deinit()
{
  AsyncStream.Subscription.deinit();

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t AsyncStream.subscription(handler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for AsyncStream.Subscription(0, *(a3 + 16), a3, a4);
  type metadata accessor for AsyncStream.Subscription(0, *(v7 + 80), v8, v9);
  v10 = swift_allocObject();

  sub_25B65D634(v4, a1, a2);
  return v10;
}

uint64_t sub_25B65D444(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_25B65D53C;

  return v6(a1);
}

uint64_t sub_25B65D53C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void *sub_25B65D634(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a3;
  v6 = *(*v3 + 80);
  v7 = sub_25B6688E4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v21 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA463D0, "\b\t");
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v21 - v13;
  v15 = sub_25B6688A4();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  (*(v8 + 16))(v11, a1, v7);
  v16 = (*(v8 + 80) + 40) & ~*(v8 + 80);
  v17 = swift_allocObject();
  *(v17 + 2) = 0;
  *(v17 + 3) = 0;
  *(v17 + 4) = v6;
  (*(v8 + 32))(&v17[v16], v11, v7);
  v18 = &v17[(v9 + v16 + 7) & 0xFFFFFFFFFFFFFFF8];
  v19 = v22;
  *v18 = a2;
  *(v18 + 1) = v19;
  v3[2] = sub_25B65D068(0, 0, v14, &unk_25B669AB8, v17);
  return v3;
}

uint64_t sub_25B65D898()
{
  v1 = sub_25B6688E4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_25B65D978()
{
  v2 = *(v0 + 32);
  v3 = *(sub_25B6688E4() - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = (v0 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = *v5;
  v7 = v5[1];
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_25B65DA94;

  return sub_25B65C9E8(v8, v9, v10, v0 + v4, v6, v7, v2);
}

uint64_t sub_25B65DA94()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_25B65DB88(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA463D0, "\b\t");
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25B65DBF8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA463D0, "\b\t");
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25B65DC60()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25B65DC98(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25B65DE0C;

  return sub_25B65D444(a1, v4);
}

uint64_t sub_25B65DD50(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25B65DA94;

  return sub_25B65D444(a1, v4);
}

void static PairedDeviceRegistry.isCurrentDeviceTinkerPaired()()
{
  v0 = objc_opt_self();
  v1 = [v0 sharedInstance];
  if (!v1)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    return;
  }

  v2 = v1;
  v3 = [v0 activePairedDeviceSelectorBlock];
  if (v3)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = v3;
    v5 = swift_allocObject();
    v3 = sub_25B65E208;
    *(v5 + 16) = sub_25B65E208;
    *(v5 + 24) = v4;
    v14 = sub_25B65E240;
    v15 = v5;
    *&v12 = MEMORY[0x277D85DD0];
    *(&v12 + 1) = 1107296256;
    *&v13 = sub_25B65E26C;
    *(&v13 + 1) = &block_descriptor_0;
    v6 = _Block_copy(&v12);
  }

  else
  {
    v6 = 0;
    v4 = 0;
  }

  v7 = [v2 getAllDevicesWithArchivedAltAccountDevicesMatching_];
  sub_25B65E110(v3, v4);
  _Block_release(v6);

  if (!v7)
  {
    goto LABEL_27;
  }

  sub_25B65E188(0, &qword_27FA463D8, 0x277D2BCC8);
  v8 = sub_25B6687D4();

  if (!(v8 >> 62))
  {
    if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_8;
    }

LABEL_21:

    goto LABEL_22;
  }

  if (!sub_25B6689F4())
  {
    goto LABEL_21;
  }

LABEL_8:
  if ((v8 & 0xC000000000000001) == 0)
  {
    if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v9 = *(v8 + 32);
      goto LABEL_11;
    }

    __break(1u);
    goto LABEL_26;
  }

  v9 = MEMORY[0x25F8686F0](0, v8);
LABEL_11:
  v10 = v9;

  if (!v10)
  {
LABEL_22:
    v12 = 0u;
    v13 = 0u;
    goto LABEL_23;
  }

  if ([v10 valueForProperty_])
  {
    sub_25B668964();
    swift_unknownObjectRelease();
  }

  else
  {
    *v16 = 0u;
    v17 = 0u;
  }

  v12 = *v16;
  v13 = v17;
  if (!*(&v17 + 1))
  {

LABEL_23:
    sub_25B65E120(&v12);
    return;
  }

  sub_25B65E188(0, &qword_27FA463E8, 0x277CCABB0);
  if (swift_dynamicCast())
  {
    v11 = v16[0];
    [v16[0] BOOLValue];
  }

  else
  {
  }
}

uint64_t sub_25B65E110(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_25B65E120(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA463E0, &unk_25B669AE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25B65E188(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_25B65E1D0()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25B65E26C(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = *(a1 + 32);
  v4 = a2;
  LOBYTE(v2) = v3(v2);

  return v2 & 1;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_25B65E300(unint64_t a1)
{
  v3 = *(v1 + 16) * 1000000000.0;
  if (COERCE__INT64(fabs(v3)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v3 <= -1.0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v3 >= 1.84467441e19)
  {
LABEL_9:
    __break(1u);
    return MEMORY[0x282200480](a1);
  }

  v4 = v3;
  v5 = swift_task_alloc();
  *(v1 + 24) = v5;
  *v5 = v1;
  v5[1] = sub_25B65E3E8;
  a1 = v4;

  return MEMORY[0x282200480](a1);
}

uint64_t sub_25B65E3E8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t variable initialization expression of CancellationHandlingContinuation.resumptionHandlers(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA463F0, &qword_25B669B10);
  sub_25B668AB4();
  swift_getFunctionTypeMetadata1();

  return sub_25B668744();
}

uint64_t variable initialization expression of CancellationHandlingContinuation.result@<X0>(uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA463F0, &qword_25B669B10);
  v3 = sub_25B668AB4();
  v4 = *(*(v3 - 8) + 56);

  return v4(a2, 1, 1, v3);
}

BOOL CancellationHandlingContinuation.isResumed.getter()
{
  v1 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA463F0, &qword_25B669B10);
  v2 = sub_25B668AB4();
  v3 = sub_25B668954();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v10 - v5;
  v7 = *(v1 + 104);
  swift_beginAccess();
  (*(v4 + 16))(v6, &v0[v7], v3);
  v8 = (*(*(v2 - 8) + 48))(v6, 1, v2) != 1;
  (*(v4 + 8))(v6, v3);
  return v8;
}

uint64_t CancellationHandlingContinuation.addResumptionHandler(_:)(uint64_t a1, uint64_t a2)
{
  v3[11] = a2;
  v3[12] = v2;
  v3[10] = a1;
  v3[13] = *(*v2 + 80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA463F0, &qword_25B669B10);
  v4 = sub_25B668AB4();
  v3[14] = v4;
  v5 = sub_25B668954();
  v3[15] = v5;
  v3[16] = *(v5 - 8);
  v3[17] = swift_task_alloc();
  v3[18] = *(v4 - 8);
  v3[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25B65E8E0, v2, 0);
}

uint64_t sub_25B65E8E0()
{
  v1 = v0[17];
  v2 = v0[18];
  v3 = v0[15];
  v4 = v0[16];
  v5 = v0[14];
  v6 = v0[12];
  v7 = *(*v6 + 104);
  swift_beginAccess();
  (*(v4 + 16))(v1, v6 + v7, v3);
  if ((*(v2 + 48))(v1, 1, v5) == 1)
  {
    v8 = v0[13];
    v10 = v0[10];
    v9 = v0[11];
    (*(v0[16] + 8))(v0[17], v0[15]);
    v11 = swift_allocObject();
    v11[2] = v8;
    v11[3] = v10;
    v11[4] = v9;
    v0[8] = &unk_25B669B28;
    v0[9] = v11;
    swift_beginAccess();
    swift_getFunctionTypeMetadata1();
    sub_25B668834();

    sub_25B668804();
    swift_endAccess();

    v12 = v0[1];

    return v12();
  }

  else
  {
    v14 = v0[10];
    (*(v0[18] + 32))(v0[19], v0[17], v0[14]);
    v17 = (v14 + *v14);
    v15 = swift_task_alloc();
    v0[20] = v15;
    *v15 = v0;
    v15[1] = sub_25B65EB88;
    v16 = v0[19];

    return v17(v16);
  }
}

uint64_t sub_25B65EB88()
{
  v1 = *(*v0 + 96);

  return MEMORY[0x2822009F8](sub_25B65EC98, v1, 0);
}

uint64_t sub_25B65EC98()
{
  (*(v0[18] + 8))(v0[19], v0[14]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_25B65ED1C(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_25B65DA94;

  return v7(a2);
}

uint64_t sub_25B65EE10()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_25B65EE48(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 24);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_25B65DE0C;

  return sub_25B65ED1C(a1, a2, v6);
}

uint64_t CancellationHandlingContinuation.resume(returning:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *(*v1 + 80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA463F0, &qword_25B669B10);
  v3 = sub_25B668AB4();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25B65F014, v1, 0);
}

uint64_t sub_25B65F014()
{
  v1 = v0[3];
  (*(*(v0[4] - 8) + 16))(v0[7], v0[2]);
  swift_storeEnumTagMultiPayload();
  v5 = (*(*v1 + 192) + **(*v1 + 192));
  v2 = swift_task_alloc();
  v0[8] = v2;
  *v2 = v0;
  v2[1] = sub_25B65F180;
  v3 = v0[7];

  return v5(v3);
}

uint64_t sub_25B65F180()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 40);
  v6 = *v0;

  (*(v2 + 8))(v1, v3);

  v4 = *(v6 + 8);

  return v4();
}

uint64_t CancellationHandlingContinuation.resume(throwing:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA463F0, &qword_25B669B10);
  v3 = sub_25B668AB4();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25B65F3D0, v1, 0);
}

uint64_t sub_25B65F3D0()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 16);
  **(v0 + 48) = v2;
  swift_storeEnumTagMultiPayload();
  v3 = *(*v1 + 192);
  v4 = v2;
  v8 = (v3 + *v3);
  v5 = swift_task_alloc();
  *(v0 + 56) = v5;
  *v5 = v0;
  v5[1] = sub_25B65F514;
  v6 = *(v0 + 48);

  return v8(v6);
}

uint64_t sub_25B65F514()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 40);
  v3 = *(*v0 + 32);
  v6 = *v0;

  (*(v2 + 8))(v1, v3);

  v4 = *(v6 + 8);

  return v4();
}

uint64_t CancellationHandlingContinuation.resume(with:)(uint64_t a1)
{
  v2[14] = a1;
  v2[15] = v1;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA463F0, &qword_25B669B10);
  v2[16] = sub_25B668AB4();
  v3 = sub_25B668954();
  v2[17] = v3;
  v2[18] = *(v3 - 8);
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25B65F780, v1, 0);
}

uint64_t sub_25B65F780()
{
  v1 = v0[20];
  v2 = v0[17];
  v3 = v0[18];
  v5 = v0[15];
  v4 = v0[16];
  v6 = *(*v5 + 104);
  swift_beginAccess();
  (*(v3 + 16))(v1, v5 + v6, v2);
  v7 = *(v4 - 8);
  LODWORD(v4) = (*(v7 + 48))(v1, 1, v4);
  (*(v3 + 8))(v1, v2);
  if (v4 == 1)
  {
    v9 = v0[18];
    v8 = v0[19];
    v10 = v0[16];
    v11 = v0[17];
    v12 = v0[15];
    (*(v7 + 16))(v8, v0[14], v10);
    (*(v7 + 56))(v8, 0, 1, v10);
    swift_beginAccess();
    (*(v9 + 40))(v5 + v6, v8, v11);
    swift_endAccess();
    swift_beginAccess();
    v0[21] = *(v12 + 112);
    v0[22] = swift_getFunctionTypeMetadata1();

    if (sub_25B668814())
    {
      v13 = sub_25B6687F4();
      sub_25B6687E4();
      if (v13)
      {
        v14 = v0[21];
        v0[23] = 1;
        v0[24] = *(v14 + 40);
        v15 = *(v14 + 32);

        v19 = (v15 + *v15);
        v16 = swift_task_alloc();
        v0[25] = v16;
        *v16 = v0;
        v16[1] = sub_25B65FB0C;

        return v19();
      }

      else
      {
        result = sub_25B6689C4();
        __break(1u);
      }

      return result;
    }

    swift_beginAccess();
    sub_25B668834();
    sub_25B668824();
    swift_endAccess();
  }

  v18 = v0[1];

  return v18();
}

uint64_t sub_25B65FB0C()
{
  v1 = *(*v0 + 120);

  return MEMORY[0x2822009F8](sub_25B65FC1C, v1, 0);
}

uint64_t sub_25B65FC1C()
{
  v1 = v0[23];

  if (v1 == sub_25B668814())
  {

    swift_beginAccess();
    sub_25B668834();
    sub_25B668824();
    swift_endAccess();

    v2 = v0[1];

    return v2();
  }

  v4 = v0[23];
  v5 = sub_25B6687F4();
  result = sub_25B6687E4();
  if ((v5 & 1) == 0)
  {
    result = sub_25B6689C4();
    __break(1u);
    goto LABEL_11;
  }

  if (__OFADD__(v4, 1))
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v6 = v0[21] + 16 * v4;
  v0[23] = v4 + 1;
  v0[24] = *(v6 + 40);
  v7 = *(v6 + 32);

  v9 = (v7 + *v7);
  v8 = swift_task_alloc();
  v0[25] = v8;
  *v8 = v0;
  v8[1] = sub_25B65FB0C;

  return v9();
}

char *CancellationHandlingContinuation.deinit()
{

  v1 = *(*v0 + 104);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA463F0, &qword_25B669B10);
  sub_25B668AB4();
  v2 = sub_25B668954();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t CancellationHandlingContinuation.__deallocating_deinit()
{
  CancellationHandlingContinuation.deinit();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_25B65FF24()
{
  v0 = swift_allocObject();
  sub_25B65FF5C();
  return v0;
}

char *sub_25B65FF5C()
{
  swift_defaultActor_initialize();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA463F0, &qword_25B669B10);
  sub_25B668AB4();
  swift_getFunctionTypeMetadata1();
  *(v0 + 14) = sub_25B668744();
  v1 = *(*v0 + 104);
  v2 = swift_checkMetadataState();
  (*(*(v2 - 8) + 56))(&v0[v1], 1, 1, v2);
  return v0;
}

uint64_t CancellationHandlingContinuation<>.resume()()
{
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  v4 = (*(*v0 + 192) + **(*v0 + 192));
  v2 = swift_task_alloc();
  *(v1 + 32) = v2;
  *v2 = v1;
  v2[1] = sub_25B6601A0;

  return v4(v1 + 16);
}

uint64_t sub_25B6601A0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t withCancellationHandlingContinuation<A>(timeout:_:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 40) = a5;
  *(v6 + 48) = a6;
  *(v6 + 24) = a2;
  *(v6 + 32) = a4;
  *(v6 + 120) = a3;
  *(v6 + 16) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA463D0, "\b\t");
  *(v6 + 56) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25B66033C, 0, 0);
}

uint64_t sub_25B66033C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 120);
  type metadata accessor for CancellationHandlingContinuation(0, *(v4 + 48), a3, a4);
  v6 = swift_allocObject();
  *(v4 + 64) = v6;
  sub_25B65FF5C();
  if (v5)
  {
    v7 = *(v4 + 64);
    v8 = swift_task_alloc();
    *(v4 + 96) = v8;
    *(v8 + 16) = *(v4 + 32);
    *(v8 + 32) = v7;
    v9 = swift_task_alloc();
    *(v4 + 104) = v9;
    *v9 = v4;
    v9[1] = sub_25B660864;
    v10 = *(v4 + 64);
    v11 = *(v4 + 48);
    v12 = *(v4 + 16);

    return sub_25B662204(v12, sub_25B6623F8, v10, &unk_25B669B68, v8, v11);
  }

  else
  {
    v15 = *(v4 + 48);
    v14 = *(v4 + 56);
    v16 = *(v4 + 24);
    v17 = sub_25B6688A4();
    (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
    v18 = swift_allocObject();
    v18[2] = 0;
    v18[3] = 0;
    v18[4] = v16;
    v18[5] = v6;

    v19 = sub_25B660E90(0, 0, v14, &unk_25B669B80, v18);
    *(v4 + 72) = v19;
    v20 = swift_allocObject();
    *(v4 + 80) = v20;
    *(v20 + 16) = v15;
    *(v20 + 24) = v19;
    v21 = *(*v6 + 168);

    v23 = (v21 + *v21);
    v22 = swift_task_alloc();
    *(v4 + 88) = v22;
    *v22 = v4;
    v22[1] = sub_25B660644;

    return v23(&unk_25B669B90, v20);
  }
}

uint64_t sub_25B660644()
{

  return MEMORY[0x2822009F8](sub_25B66075C, 0, 0);
}

uint64_t sub_25B66075C()
{

  v1 = *(v0 + 64);
  v2 = swift_task_alloc();
  *(v0 + 96) = v2;
  *(v2 + 16) = *(v0 + 32);
  *(v2 + 32) = v1;
  v3 = swift_task_alloc();
  *(v0 + 104) = v3;
  *v3 = v0;
  v3[1] = sub_25B660864;
  v4 = *(v0 + 64);
  v5 = *(v0 + 48);
  v6 = *(v0 + 16);

  return sub_25B662204(v6, sub_25B6623F8, v4, &unk_25B669B68, v2, v5);
}

uint64_t sub_25B660864()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_25B6609EC;
  }

  else
  {

    v2 = sub_25B660980;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_25B660980()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25B6609EC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25B660A64(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a5;
  v7 = swift_task_alloc();
  *(v5 + 24) = v7;
  *v7 = v5;
  v7[1] = sub_25B660B00;

  return static Task<>.sleep(seconds:)(a1);
}

uint64_t sub_25B660B00()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_25B660C30, 0, 0);
  }
}

uint64_t sub_25B660C30()
{
  v1 = v0[2];
  nullsub_1();
  sub_25B662738();
  v2 = swift_allocError();
  v0[4] = v2;
  v5 = (*(*v1 + 184) + **(*v1 + 184));
  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = sub_25B660D7C;

  return v5(v2);
}

uint64_t sub_25B660D7C()
{
  v1 = *(*v0 + 32);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_25B660E90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA463D0, "\b\t");
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v22 - v9;
  sub_25B65DB88(a3, v22 - v9);
  v11 = sub_25B6688A4();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_25B65DBF8(v10);
  }

  else
  {
    sub_25B668894();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_25B668844();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_25B668794() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_25B65DBF8(a3);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_25B65DBF8(a3);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_25B66111C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA463F0, &qword_25B669B10);
  sub_25B6688F4();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25B6611AC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA463D0, "\b\t");
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v8 - v3;
  v5 = sub_25B6688A4();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = a1;

  sub_25B65D068(0, 0, v4, &unk_25B669C48, v6);
}

uint64_t sub_25B6612B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA463F0, &qword_25B669B10);
  v5 = sub_25B668AB4();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25B6613B0, 0, 0);
}

uint64_t sub_25B6613B0()
{
  v1 = v0[5];
  v2 = v0[2];
  sub_25B668884();
  sub_25B662C10();
  v3 = swift_allocError();
  sub_25B668754();
  *v1 = v3;
  swift_storeEnumTagMultiPayload();
  v7 = (*(*v2 + 192) + **(*v2 + 192));
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_25B661528;
  v5 = v0[5];

  return v7(v5);
}

uint64_t sub_25B661528()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 32);
  v3 = *(*v0 + 24);
  v6 = *v0;

  (*(v2 + 8))(v1, v3);

  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_25B661680(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v4[6] = *a4;
  return MEMORY[0x2822009F8](sub_25B6616CC, 0, 0);
}

uint64_t sub_25B6616CC()
{
  v1 = *(v0 + 48);
  (*(v0 + 24))(*(v0 + 40));
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  v3 = *(v1 + 80);
  *v2 = v0;
  v2[1] = sub_25B6617B0;
  v4 = *(v0 + 40);
  v5 = *(v0 + 16);

  return MEMORY[0x2822008A0](v5, 0, 0, 0xD000000000000030, 0x800000025B66A880, sub_25B66278C, v4, v3);
}

uint64_t sub_25B6617B0()
{
  v2 = *v1;
  *(v2 + 64) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_25B6618E4, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_25B6618FC(uint64_t a1, uint64_t a2)
{
  v4 = *(*a2 + 80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA463F0, &qword_25B669B10);
  v5 = sub_25B668874();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA463D0, "\b\t");
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v16 - v10;
  v12 = sub_25B6688A4();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  (*(v6 + 16))(v8, a1, v5);
  v13 = (*(v6 + 80) + 48) & ~*(v6 + 80);
  v14 = swift_allocObject();
  *(v14 + 2) = 0;
  *(v14 + 3) = 0;
  *(v14 + 4) = v4;
  *(v14 + 5) = a2;
  (*(v6 + 32))(&v14[v13], v8, v5);

  sub_25B65D068(0, 0, v11, &unk_25B669C20, v14);
}

uint64_t sub_25B661B1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v5[4] = *(*a4 + 80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA463F0, &qword_25B669B10);
  v6 = sub_25B668874();
  v5[5] = v6;
  v7 = *(v6 - 8);
  v5[6] = v7;
  v5[7] = *(v7 + 64);
  v5[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25B661C20, 0, 0);
}

uint64_t sub_25B661C20()
{
  v1 = v0[8];
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[4];
  v5 = v0[2];
  (*(v3 + 16))(v1, v0[3], v2);
  v6 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v7 = swift_allocObject();
  v0[9] = v7;
  *(v7 + 16) = v4;
  (*(v3 + 32))(v7 + v6, v1, v2);
  v10 = (*(*v5 + 168) + **(*v5 + 168));
  v8 = swift_task_alloc();
  v0[10] = v8;
  *v8 = v0;
  v8[1] = sub_25B661DD8;

  return v10(&unk_25B669C38, v7);
}

uint64_t sub_25B661DD8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_25B661F04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_25B661F28, 0, 0);
}

uint64_t sub_25B661F28()
{
  v1 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA463F0, &qword_25B669B10);
  v2 = sub_25B668874();
  sub_25B661FC8(v1, v2);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_25B661FC8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](a1);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v8 + 24);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v5);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_25B668AB4();
  MEMORY[0x28223BE20](v13);
  v15 = &v18 - v14;
  (*(v16 + 16))(&v18 - v14, a1, v13);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v10 + 32))(v12, v15, v9);
    return sub_25B668854();
  }

  else
  {
    (*(v4 + 32))(v7, v15, v3);
    return sub_25B668864();
  }
}

uint64_t sub_25B662204(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_25B65DA94;

  return sub_25B6622F4(a1, a4, a5, a2, a3, 0, 0, a6);
}

uint64_t sub_25B6622F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  *v17 = v8;
  v17[1] = sub_25B65DE0C;

  return MEMORY[0x282200830](a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_25B662400(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_25B65DA94;

  return sub_25B661680(a1, v4, v5, v6);
}

uint64_t sub_25B6624B4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_25B6624F4()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_25B65DE0C;

  return sub_25B660A64(v2, v4, v5, v6, v3);
}

uint64_t sub_25B662590()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25B6625C8()
{
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_25B65DE0C;

  return sub_25B6610FC(v3, v2);
}

uint64_t sub_25B66265C(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA463F0, &qword_25B669B10);
  sub_25B668AB4();
  result = sub_25B668954();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_25B662738()
{
  result = qword_27FA463F8;
  if (!qword_27FA463F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA463F8);
  }

  return result;
}

uint64_t sub_25B662794()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA463F0, &qword_25B669B10);
  v1 = sub_25B668874();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_25B662888()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA463F0, &qword_25B669B10);
  v2 = *(sub_25B668874() - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v4 = *(v0 + 40);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_25B65DA94;

  return sub_25B661B1C(v5, v6, v7, v4, v0 + v3);
}

uint64_t sub_25B662988()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA463F0, &qword_25B669B10);
  v1 = sub_25B668874();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_25B662A38(uint64_t a1)
{
  v4 = *(v1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA463F0, &qword_25B669B10);
  v5 = *(sub_25B668874() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_25B65DE0C;

  return sub_25B661F04(a1, v1 + v6, v4);
}

uint64_t sub_25B662B3C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_25B662B7C()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_25B65DE0C;

  return sub_25B6612B8(v3, v4, v5, v2);
}

unint64_t sub_25B662C10()
{
  result = qword_27FA46400;
  if (!qword_27FA46400)
  {
    sub_25B668884();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA46400);
  }

  return result;
}

id variable initialization expression of Cache.cache()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA46408, &qword_25B669C50);
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

char *Cache.init(capacity:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = qword_27FA46410;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA46408, &qword_25B669C50);
  *&v1[v4] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v7.receiver = v1;
  v7.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v7, sel_init);
  [*&v5[qword_27FA46410] setCountLimit_];
  return v5;
}

uint64_t Cache.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + qword_27FA46410);
  v6 = *((*MEMORY[0x277D85000] & *v2) + 0x58);
  type metadata accessor for Cache.WrappedKey(0, *((*MEMORY[0x277D85000] & *v2) + 0x50), v6, *((*MEMORY[0x277D85000] & *v2) + 0x60));
  v7 = sub_25B663B94(a1);
  v8 = [v5 objectForKey_];

  if (v8)
  {
    v13 = *(v6 - 8);
    (*(v13 + 16))(a2, &v8[*(*v8 + 104)], v6);

    v9 = v13;
    v10 = 0;
  }

  else
  {
    v9 = *(v6 - 8);
    v10 = 1;
  }

  v11 = *(v9 + 56);

  return v11(a2, v10, 1, v6);
}

uint64_t Cache.subscript.setter(uint64_t a1, uint64_t a2)
{
  v30 = a2;
  v4 = (*MEMORY[0x277D85000] & *v2);
  v5 = v4[11];
  v6 = sub_25B668954();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v29 - v9;
  v11 = *(v5 - 8);
  v12 = MEMORY[0x28223BE20](v8);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v29 - v15;
  (*(v7 + 16))(v10, a1, v6);
  if ((*(v11 + 48))(v10, 1, v5) == 1)
  {
    v17 = *(v7 + 8);
    v17(v10, v6);
    v18 = *(v2 + qword_27FA46410);
    v19 = v4[10];
    type metadata accessor for Cache.WrappedKey(0, v19, v5, v4[12]);
    v20 = v30;
    v21 = sub_25B663B94(v30);
    [v18 removeObjectForKey_];

    (*(*(v19 - 8) + 8))(v20, v19);
    return (v17)(a1, v6);
  }

  else
  {
    (*(v11 + 32))(v16, v10, v5);
    v29 = a1;
    v23 = *(v2 + qword_27FA46410);
    v24 = v4[10];
    v25 = v4[12];
    type metadata accessor for Cache.WrappedValue(0, v24, v5, v25);
    (*(v11 + 16))(v14, v16, v5);
    v26 = sub_25B66332C(v14);
    type metadata accessor for Cache.WrappedKey(0, v24, v5, v25);
    v27 = v30;
    v28 = sub_25B663B94(v30);
    [v23 setObject:v26 forKey:v28];

    (*(*(v24 - 8) + 8))(v27, v24);
    (*(v7 + 8))(v29, v6);
    return (*(v11 + 8))(v16, v5);
  }
}

uint64_t sub_25B66332C(uint64_t a1)
{
  v2 = swift_allocObject();
  (*(*(*(*v2 + 88) - 8) + 32))(v2 + *(*v2 + 104), a1);
  return v2;
}

void (*Cache.subscript.modify(void *a1, uint64_t a2))(uint64_t a1, char a2)
{
  v5 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x48uLL);
  }

  v7 = v6;
  *a1 = v6;
  *v6 = v2;
  v8 = *MEMORY[0x277D85000] & *v2;
  v9 = sub_25B668954();
  v7[1] = v9;
  v10 = *(v9 - 8);
  v7[2] = v10;
  v11 = *(v10 + 64);
  if (v5)
  {
    v7[3] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v7[3] = malloc(*(v10 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v7[4] = v12;
  v14 = *(v8 + 80);
  v7[5] = v14;
  v15 = *(v14 - 8);
  v16 = v15;
  v7[6] = v15;
  v17 = *(v15 + 64);
  if (v5)
  {
    v7[7] = swift_coroFrameAlloc();
    v18 = swift_coroFrameAlloc();
  }

  else
  {
    v7[7] = malloc(*(v15 + 64));
    v18 = malloc(v17);
  }

  v7[8] = v18;
  (*(v16 + 16))();
  Cache.subscript.getter(a2, v13);
  return sub_25B6635CC;
}

void sub_25B6635CC(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 56);
  v4 = *(*a1 + 64);
  if (a2)
  {
    v5 = v2[5];
    v6 = v2[6];
    v8 = v2[3];
    v7 = v2[4];
    v9 = v2[1];
    v10 = v2[2];
    (*(v10 + 16))(v8, v7, v9);
    (*(v6 + 32))(v3, v4, v5);
    Cache.subscript.setter(v8, v3);
    (*(v10 + 8))(v7, v9);
  }

  else
  {
    v8 = v2[3];
    v7 = v2[4];
    Cache.subscript.setter(v7, v4);
  }

  free(v4);
  free(v3);
  free(v7);
  free(v8);

  free(v2);
}

id Cache.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_25B6637BC@<X0>(uint64_t *a2@<X8>)
{
  swift_getObjectType();
  result = sub_25B668684();
  *a2 = result;
  return result;
}

uint64_t sub_25B6637FC(void *a1)
{
  v1 = a1;
  v2 = sub_25B663830();

  return v2;
}

uint64_t sub_25B6638A0(uint64_t a1)
{
  swift_getObjectType();
  sub_25B663E3C(a1, v5);
  if (!v6)
  {
    sub_25B65E120(v5);
    goto LABEL_5;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    v2 = 0;
    return v2 & 1;
  }

  v2 = sub_25B668774();

  return v2 & 1;
}

uint64_t sub_25B6639C4(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = a1;
    swift_unknownObjectRetain();
    sub_25B668964();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = a1;
  }

  v6 = sub_25B6638A0(v8);

  sub_25B65E120(v8);
  return v6 & 1;
}

id _s14NanoPhotosCore5CacheCfD_0()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_25B663AE8()
{
  (*(*(*(*v0 + 88) - 8) + 8))(v0 + *(*v0 + 104));
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

id sub_25B663B94(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  ObjectType = swift_getObjectType();
  (*(*(*((*MEMORY[0x277D85000] & *v3) + 0x50) - 8) + 16))(&v3[*((*MEMORY[0x277D85000] & *v3) + 0x68)], a1);
  v6.receiver = v3;
  v6.super_class = ObjectType;
  return objc_msgSendSuper2(&v6, sel_init);
}

uint64_t sub_25B663CE4(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_25B663D78(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_25B663E3C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA463E0, &unk_25B669AE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_25B666780(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25B666898(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25B6669B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25B667ED0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id nanophotos_log_NanoPhotosCore()
{
  if (nanophotos_log_NanoPhotosCore_onceToken != -1)
  {
    dispatch_once(&nanophotos_log_NanoPhotosCore_onceToken, &__block_literal_global);
  }

  v1 = nanophotos_log_NanoPhotosCore_log;

  return v1;
}

id nanophotos_log_NanoPhotosUI()
{
  if (qword_27FA46CD8 != -1)
  {
    dispatch_once(&qword_27FA46CD8, &__block_literal_global_4);
  }

  v1 = _MergedGlobals;

  return v1;
}

id nanophotos_log_sync()
{
  if (nanophotos_log_sync_onceToken != -1)
  {
    dispatch_once(&nanophotos_log_sync_onceToken, &__block_literal_global_7);
  }

  v1 = nanophotos_log_sync_log;

  return v1;
}

uint64_t __nanophotos_log_sync_block_invoke()
{
  nanophotos_log_sync_log = os_log_create("com.apple.NanoPhotos", "sync");

  return MEMORY[0x2821F96F8]();
}

id nanophotos_log_sync_oversize()
{
  if (nanophotos_log_sync_oversize_onceToken != -1)
  {
    dispatch_once(&nanophotos_log_sync_oversize_onceToken, &__block_literal_global_10);
  }

  v1 = nanophotos_log_sync_oversize_log;

  return v1;
}

uint64_t __nanophotos_log_sync_oversize_block_invoke()
{
  nanophotos_log_sync_oversize_log = os_log_create("com.apple.NanoPhotos", "sync_oversize");

  return MEMORY[0x2821F96F8]();
}

id nanophotos_log_bridge()
{
  if (qword_27FA46CE8 != -1)
  {
    dispatch_once(&qword_27FA46CE8, &__block_literal_global_13);
  }

  v1 = qword_27FA46CE0;

  return v1;
}

uint64_t __nanophotos_log_bridge_block_invoke()
{
  qword_27FA46CE0 = os_log_create("com.apple.NanoPhotos", "bridge");

  return MEMORY[0x2821F96F8]();
}

id nanophotos_log_Settings()
{
  if (qword_27FA46CF8 != -1)
  {
    dispatch_once(&qword_27FA46CF8, &__block_literal_global_16);
  }

  v1 = qword_27FA46CF0;

  return v1;
}