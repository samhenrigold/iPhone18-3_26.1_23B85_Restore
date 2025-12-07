void *pickKeyAlgorithm(__SecKey *a1, uint64_t a2, void *a3)
{
  v12[2] = *MEMORY[0x277D85DE8];
  v5 = SecKeyCopyAttributes(a1);
  Value = CFDictionaryGetValue(v5, *MEMORY[0x277CDC028]);
  if (CFEqual(Value, *MEMORY[0x277CDC030]))
  {
    switch(a2)
    {
      case 5:
        v7 = MEMORY[0x277CDC2C8];
        break;
      case 4:
        v7 = MEMORY[0x277CDC2C0];
        break;
      case 2:
        v7 = MEMORY[0x277CDC2B8];
        break;
      default:
LABEL_11:
        if (a3)
        {
          v11[0] = @"KeyType";
          v11[1] = @"DigestAlgorithm";
          v12[0] = Value;
          v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:a2];
          v12[1] = v8;
          v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:2];

          *a3 = [MEMORY[0x277CCA9B8] errorWithDomain:@"Security" code:-4 userInfo:v9];

          a3 = 0;
        }

        if (v5)
        {
          goto LABEL_20;
        }

        return a3;
    }
  }

  else
  {
    if (!CFEqual(Value, *MEMORY[0x277CDC060]))
    {
      goto LABEL_11;
    }

    switch(a2)
    {
      case 5:
        v7 = MEMORY[0x277CDC398];
        break;
      case 4:
        v7 = MEMORY[0x277CDC390];
        break;
      case 2:
        v7 = MEMORY[0x277CDC388];
        break;
      default:
        goto LABEL_11;
    }
  }

  a3 = *v7;
  if (v5)
  {
LABEL_20:
    CFRelease(v5);
  }

  return a3;
}

void sub_249F3B530(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    CFRelease(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mapDigestAlgorithm(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:*MEMORY[0x277D28590]])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:*MEMORY[0x277D28598]])
  {
    v2 = 4;
  }

  else if ([v1 isEqualToString:*MEMORY[0x277D285A0]])
  {
    v2 = 5;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void sub_249F3B880(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, CFTypeRef cf, CFTypeRef a12)
{
  if (v13)
  {
    CFRelease(v13);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  if (a12)
  {
    CFRelease(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_249F3BDA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }

  _Unwind_Resume(exception_object);
}

void sub_249F3C1A0(_Unwind_Exception *a1)
{
  CFRelease(v2);
  if (v1)
  {
    CFRelease(v1);
  }

  _Unwind_Resume(a1);
}

uint64_t PackageStaticValidator.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC11EDPSecurity22PackageStaticValidator_url;
  v4 = sub_249F4A308();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_249F3C280@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11EDPSecurity22PackageStaticValidator_supportedMeasurementAlgorithms;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_249F3C2DC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC11EDPSecurity22PackageStaticValidator_supportedMeasurementAlgorithms;
  swift_beginAccess();
  *(v3 + v4) = v2;
}

uint64_t sub_249F3C38C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11EDPSecurity22PackageStaticValidator_supportedMeasurementAlgorithms;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

char *PackageStaticValidator.__allocating_init(url:requireTrust:)(char *a1, int a2)
{
  v31 = a2;
  v3 = sub_249F4A2A8();
  v28 = *(v3 - 8);
  v29 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_249F4A308();
  v6 = *(v34 - 8);
  v7 = MEMORY[0x28223BE20](v34);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v26 - v10;
  v12 = swift_allocObject();
  *(v12 + OBJC_IVAR____TtC11EDPSecurity22PackageStaticValidator_supportedMeasurementAlgorithms) = &unk_285D1AE28;
  v13 = a1;
  if (sub_249F45CC4())
  {
    v14 = OBJC_IVAR____TtC11EDPSecurity22PackageStaticValidator_url;
    v15 = *(v6 + 16);
    v27 = v13;
    v16 = v13;
    v17 = v34;
    v15(v12 + OBJC_IVAR____TtC11EDPSecurity22PackageStaticValidator_url, v16, v34);
    v15(v9, (v12 + v14), v17);
    v32 = 0x727574616E676973;
    v33 = 0xE900000000000065;
    v19 = v28;
    v18 = v29;
    (*(v28 + 104))(v5, *MEMORY[0x277CC91D8], v29);
    sub_249F3CBDC();
    sub_249F4A2E8();
    (*(v19 + 8))(v5, v18);
    v20 = *(v6 + 8);
    v20(v9, v17);
    v21 = v30;
    v22 = sub_249F4A318();
    if (v21)
    {
      MEMORY[0x24C2087B0](v21);
      v22 = 0;
      v23 = 0xF000000000000000;
    }

    v5 = PackageValidator.init(signatureData:requireTrust:)(v22, v23, v31 & 1);
    v20(v27, v17);
    v20(v11, v17);
  }

  else
  {
    sub_249F3CB88();
    swift_allocError();
    *(v24 + 8) = 0;
    *(v24 + 16) = 0;
    *v24 = 0;
    *(v24 + 24) = 5;
    swift_willThrow();
    (*(v6 + 8))(a1, v34);

    swift_deallocPartialClassInstance();
  }

  return v5;
}

char *PackageStaticValidator.init(url:requireTrust:)(char *a1, int a2)
{
  v3 = v2;
  v34 = a2;
  v5 = sub_249F4A2A8();
  v29 = *(v5 - 8);
  v30 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_249F4A308();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = v27 - v13;
  *(v2 + OBJC_IVAR____TtC11EDPSecurity22PackageStaticValidator_supportedMeasurementAlgorithms) = &unk_285D1AE28;
  if (sub_249F45CC4())
  {
    v15 = OBJC_IVAR____TtC11EDPSecurity22PackageStaticValidator_url;
    v16 = a1;
    v17 = *(v9 + 16);
    v28 = v16;
    v17(v3 + OBJC_IVAR____TtC11EDPSecurity22PackageStaticValidator_url);
    v27[1] = v3;
    (v17)(v12, v3 + v15, v8);
    v32 = 0x727574616E676973;
    v33 = 0xE900000000000065;
    v19 = v29;
    v18 = v30;
    (*(v29 + 104))(v7, *MEMORY[0x277CC91D8], v30);
    sub_249F3CBDC();
    sub_249F4A2E8();
    (*(v19 + 8))(v7, v18);
    v20 = *(v9 + 8);
    v20(v12, v8);
    v21 = v31;
    v22 = sub_249F4A318();
    v24 = v14;
    if (v21)
    {
      MEMORY[0x24C2087B0](v21);
      v22 = 0;
      v23 = 0xF000000000000000;
    }

    v14 = PackageValidator.init(signatureData:requireTrust:)(v22, v23, v34 & 1);
    v20(v28, v8);
    v20(v24, v8);
  }

  else
  {
    sub_249F3CB88();
    swift_allocError();
    *(v25 + 8) = 0;
    *(v25 + 16) = 0;
    *v25 = 0;
    *(v25 + 24) = 5;
    swift_willThrow();
    (*(v9 + 8))(a1, v8);

    type metadata accessor for PackageStaticValidator(0);
    swift_deallocPartialClassInstance();
  }

  return v14;
}

unint64_t sub_249F3CB88()
{
  result = qword_27EF2A410;
  if (!qword_27EF2A410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF2A410);
  }

  return result;
}

unint64_t sub_249F3CBDC()
{
  result = qword_27EF2A418;
  if (!qword_27EF2A418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF2A418);
  }

  return result;
}

uint64_t type metadata accessor for PackageStaticValidator(uint64_t a1)
{
  result = qword_27EF2A428;
  if (!qword_27EF2A428)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PackageStaticValidator.__allocating_init(url:)(char *a1)
{
  v2 = sub_249F4A2A8();
  v31 = *(v2 - 8);
  v32 = v2;
  MEMORY[0x28223BE20](v2);
  v30 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_249F4A308();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v28 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v29 = &v28 - v9;
  MEMORY[0x28223BE20](v8);
  v11 = &v28 - v10;
  v12 = *(v5 + 16);
  v36 = a1;
  v12(&v28 - v10, a1, v4);
  v13 = type metadata accessor for PackageStaticValidator(0);
  v14 = swift_allocObject();
  *(v14 + OBJC_IVAR____TtC11EDPSecurity22PackageStaticValidator_supportedMeasurementAlgorithms) = &unk_285D1AE28;
  if (sub_249F45CC4())
  {
    v15 = OBJC_IVAR____TtC11EDPSecurity22PackageStaticValidator_url;
    v12((v14 + OBJC_IVAR____TtC11EDPSecurity22PackageStaticValidator_url), v11, v4);
    v16 = v28;
    v12(v28, (v14 + v15), v4);
    v34 = 0x727574616E676973;
    v35 = 0xE900000000000065;
    v18 = v30;
    v17 = v31;
    v19 = v32;
    (*(v31 + 104))(v30, *MEMORY[0x277CC91D8], v32);
    sub_249F3CBDC();
    v20 = v29;
    sub_249F4A2E8();
    (*(v17 + 8))(v18, v19);
    v21 = *(v5 + 8);
    v21(v16, v4);
    v22 = v33;
    v23 = sub_249F4A318();
    if (v22)
    {
      MEMORY[0x24C2087B0](v22);
      v23 = 0;
      v24 = 0xF000000000000000;
    }

    v13 = PackageValidator.init(signatureData:requireTrust:)(v23, v24, 1);
    v21(v11, v4);
    v21(v20, v4);
    v21(v36, v4);
  }

  else
  {
    sub_249F3CB88();
    swift_allocError();
    *(v25 + 8) = 0;
    *(v25 + 16) = 0;
    *v25 = 0;
    *(v25 + 24) = 5;
    swift_willThrow();
    v26 = *(v5 + 8);
    v26(v11, v4);

    swift_deallocPartialClassInstance();
    v26(v36, v4);
  }

  return v13;
}

uint64_t sub_249F3D09C(uint64_t a1, uint64_t a2)
{
  v5 = sub_249F4A2A8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_249F4A308();
  v9 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = a1;
  v30 = a1;
  v31 = a2;
  (*(v6 + 104))(v8, *MEMORY[0x277CC91D8], v5);
  sub_249F3CBDC();
  v27 = v2;
  sub_249F4A2E8();
  (*(v6 + 8))(v8, v5);
  v12 = [objc_opt_self() defaultManager];
  sub_249F4A2D8();
  v13 = sub_249F4A408();

  v14 = [v12 fileExistsAtPath_];

  if (v14)
  {
    v15 = a2;
    v16 = v28;
    v17 = v29;
    v18 = v32;
    v19 = sub_249F4A318();
    if (v16)
    {
      return (*(v9 + 8))(v11, v17);
    }

    else
    {
      v24 = v19;
      v25 = v20;
      sub_249F48C60(v18, v15, v19, v20);
      (*(v9 + 8))(v11, v17);
      return sub_249F3DC7C(v24, v25);
    }
  }

  else
  {
    sub_249F3CB88();
    swift_allocError();
    *v22 = v32;
    *(v22 + 8) = a2;
    *(v22 + 16) = 0;
    *(v22 + 24) = 2;
    swift_willThrow();
    v23 = *(v9 + 8);

    return v23(v11, v29);
  }
}

uint64_t sub_249F3D3A8(char a1)
{
  v3 = v1;
  swift_beginAccess();

  v5 = sub_249F46250();

  if (v2)
  {
    return result;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2A420, &qword_249F4AE60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_249F4AE50;
  *(inited + 32) = v5;
  v8 = sub_249F3E630(inited);
  swift_setDeallocating();
  type metadata accessor for FileMeasurer();
  swift_initStackObject();
  v71 = 0;
  v9 = FileMeasurer.init(_:)(v8);
  v10 = sub_249F47B00(v1 + OBJC_IVAR____TtC11EDPSecurity22PackageStaticValidator_url, v9);
  v66 = v5;
  v62 = a1;
  v11 = *(v3 + 16);
  swift_beginAccess();
  v12 = *(v11 + 24);
  v13 = v12 + 64;
  v14 = 1 << *(v12 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(v12 + 64);
  v68 = v12;

  result = swift_beginAccess();
  v17 = 0;
  v18 = (v14 + 63) >> 6;
  v63 = MEMORY[0x277D84F90];
  v64 = MEMORY[0x277D84F90];
  v67 = v10;
  v65 = v18;
  while (v16)
  {
    v19 = v17;
LABEL_10:
    v20 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
    v21 = v20 | (v19 << 6);
    v22 = (*(v68 + 48) + 16 * v21);
    v24 = *v22;
    v23 = v22[1];
    v25 = *(*(v68 + 56) + 8 * v21);
    v26 = *(v10 + 24);
    v27 = *(v26 + 16);

    if (v27)
    {

      v28 = sub_249F3E200(v24, v23);
      if ((v29 & 1) == 0)
      {

        goto LABEL_16;
      }

      v30 = v13;
      v31 = v23;
      v32 = *(*(v26 + 56) + 8 * v28);

      v70[3] = v32;
      v70[0] = v25;
      v33 = swift_initStackObject();
      *(v33 + 16) = xmmword_249F4AE50;
      *(v33 + 32) = v66;
      v34 = v71;
      v35 = FileMeasurement.isSameFile(_:withSupportedAlgorithms:)(v70, v33);
      v71 = v34;
      if (v34)
      {

        swift_setDeallocating();
      }

      v36 = v35;
      swift_setDeallocating();

      if (v36)
      {

        v17 = v19;
        v10 = v67;
        v13 = v30;
        v18 = v65;
      }

      else
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_249F3E278(0, *(v63 + 16) + 1, 1, v63);
          v63 = result;
        }

        v41 = *(v63 + 16);
        v40 = *(v63 + 24);
        if (v41 >= v40 >> 1)
        {
          result = sub_249F3E278((v40 > 1), v41 + 1, 1, v63);
          v63 = result;
        }

        *(v63 + 16) = v41 + 1;
        v42 = v63 + 16 * v41;
        *(v42 + 32) = v24;
        *(v42 + 40) = v31;
        v17 = v19;
        v13 = v30;
        v18 = v65;
        v10 = v67;
      }
    }

    else
    {
LABEL_16:
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_249F3E278(0, *(v64 + 16) + 1, 1, v64);
        v64 = result;
      }

      v38 = *(v64 + 16);
      v37 = *(v64 + 24);
      if (v38 >= v37 >> 1)
      {
        result = sub_249F3E278((v37 > 1), v38 + 1, 1, v64);
        v64 = result;
      }

      *(v64 + 16) = v38 + 1;
      v39 = v64 + 16 * v38;
      *(v39 + 32) = v24;
      *(v39 + 40) = v23;
      v17 = v19;
      v10 = v67;
    }
  }

  while (1)
  {
    v19 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      __break(1u);
      goto LABEL_51;
    }

    if (v19 >= v18)
    {
      break;
    }

    v16 = *(v13 + 8 * v19);
    ++v17;
    if (v16)
    {
      goto LABEL_10;
    }
  }

  swift_beginAccess();
  v43 = *(v10 + 24);
  v44 = 1 << *(v43 + 32);
  v45 = -1;
  if (v44 < 64)
  {
    v45 = ~(-1 << v44);
  }

  v46 = v45 & *(v43 + 64);
  v47 = (v44 + 63) >> 6;

  v48 = 0;
  v69 = MEMORY[0x277D84F90];
  while (1)
  {
    v49 = v48;
    if (!v46)
    {
      break;
    }

LABEL_33:
    v50 = __clz(__rbit64(v46));
    v46 &= v46 - 1;
    v51 = (*(v43 + 48) + ((v48 << 10) | (16 * v50)));
    v53 = *v51;
    v52 = v51[1];
    v54 = *(v3 + 16);
    swift_beginAccess();
    v55 = *(*(v54 + 24) + 16);

    if (v55)
    {

      sub_249F3E200(v53, v52);
      if (v56)
      {

        continue;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_249F3E278(0, *(v69 + 16) + 1, 1, v69);
      v69 = result;
    }

    v58 = *(v69 + 16);
    v57 = *(v69 + 24);
    v59 = v58 + 1;
    if (v58 >= v57 >> 1)
    {
      result = sub_249F3E278((v57 > 1), v58 + 1, 1, v69);
      v59 = v58 + 1;
      v69 = result;
    }

    *(v69 + 16) = v59;
    v60 = v69 + 16 * v58;
    *(v60 + 32) = v53;
    *(v60 + 40) = v52;
  }

  while (1)
  {
    v48 = v49 + 1;
    if (__OFADD__(v49, 1))
    {
      break;
    }

    if (v48 >= v47)
    {

      if (*(v69 + 16) || !((*(v64 + 16) == 0) | v62 & 1) || *(v63 + 16))
      {
        sub_249F3CB88();
        swift_allocError();
        *v61 = v69;
        *(v61 + 8) = v64;
        *(v61 + 16) = v63;
        *(v61 + 24) = 4;
        swift_willThrow();
      }
    }

    v46 = *(v43 + 64 + 8 * v48);
    ++v49;
    if (v46)
    {
      goto LABEL_33;
    }
  }

LABEL_51:
  __break(1u);
  return result;
}

uint64_t sub_249F3DA90()
{
  v1 = OBJC_IVAR____TtC11EDPSecurity22PackageStaticValidator_url;
  v2 = sub_249F4A308();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
}

char *PackageStaticValidator.deinit()
{

  sub_249F3E76C(*(v0 + 40), *(v0 + 48));
  v1 = OBJC_IVAR____TtC11EDPSecurity22PackageStaticValidator_url;
  v2 = sub_249F4A308();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t PackageStaticValidator.__deallocating_deinit()
{

  sub_249F3E76C(*(v0 + 40), *(v0 + 48));
  v1 = OBJC_IVAR____TtC11EDPSecurity22PackageStaticValidator_url;
  v2 = sub_249F4A308();
  v3 = *(*(v2 - 8) + 8);

  v3(v0 + v1, v2);

  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v4, v5);
}

uint64_t sub_249F3DC7C(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
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

uint64_t sub_249F3DD18()
{
  sub_249F4A6C8();
  sub_249F4A6E8();
  return sub_249F4A6F8();
}

uint64_t sub_249F3DD8C(uint64_t a1)
{
  sub_249F4A6C8();
  sub_249F4A6E8();
  return sub_249F4A6F8();
}

_DWORD *sub_249F3DDD0@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_249F3DDF4(uint64_t a1, id *a2)
{
  result = sub_249F4A418();
  *a2 = 0;
  return result;
}

uint64_t sub_249F3DE6C(uint64_t a1, id *a2)
{
  v3 = sub_249F4A428();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_249F3DEEC@<X0>(uint64_t *a1@<X8>)
{
  sub_249F4A438();
  v2 = sub_249F4A408();

  *a1 = v2;
  return result;
}

uint64_t sub_249F3DF30()
{
  v0 = sub_249F4A438();
  v1 = MEMORY[0x24C208070](v0);

  return v1;
}

uint64_t sub_249F3DF6C(uint64_t a1)
{
  sub_249F4A438();
  sub_249F4A458();
}

uint64_t sub_249F3DFC0(uint64_t a1)
{
  sub_249F4A438();
  sub_249F4A6C8();
  sub_249F4A458();
  v1 = sub_249F4A6F8();

  return v1;
}

uint64_t sub_249F3E048(void *a1, uint64_t *a2)
{
  v2 = sub_249F4A438();
  v4 = v3;
  if (v2 == sub_249F4A438() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_249F4A658();
  }

  return v7 & 1;
}

uint64_t sub_249F3E0D0@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_249F4A408();

  *a2 = v3;
  return result;
}

uint64_t sub_249F3E118@<X0>(uint64_t *a1@<X8>)
{
  result = sub_249F4A438();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_249F3E144(uint64_t a1)
{
  v2 = sub_249F3EA7C(&qword_27EF2A488, type metadata accessor for URLResourceKey, &unk_249F4B0C8);
  v3 = sub_249F3EA7C(&qword_27EF2A490, type metadata accessor for URLResourceKey, &unk_249F4B068);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

unint64_t sub_249F3E200(uint64_t a1, uint64_t a2)
{
  sub_249F4A6C8();
  sub_249F4A458();
  v4 = sub_249F4A6F8();

  return sub_249F3E384(a1, a2, v4);
}

char *sub_249F3E278(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2A450, &qword_249F4AF98);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_249F3E384(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_249F4A658())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_249F3E43C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2A458, &unk_249F4AFA0);
    v3 = sub_249F4A518();
    v4 = 0;
    v5 = v3 + 56;
    v25 = v1;
    v26 = a1 + 32;
    v6 = v1;
    while (1)
    {
      v7 = *(v26 + 8 * v4);
      sub_249F4A438();
      sub_249F4A6C8();
      v27 = v7;
      sub_249F4A458();
      v8 = sub_249F4A6F8();

      v10 = -1 << *(v3 + 32);
      v11 = v8 & ~v10;
      v12 = v11 >> 6;
      v13 = *(v5 + 8 * (v11 >> 6));
      v14 = 1 << v11;
      if (((1 << v11) & v13) == 0)
      {
        goto LABEL_15;
      }

      v15 = ~v10;
      do
      {
        v16 = sub_249F4A438();
        v18 = v17;
        if (v16 == sub_249F4A438() && v18 == v19)
        {

LABEL_4:
          v6 = v25;
          goto LABEL_5;
        }

        v21 = sub_249F4A658();

        if (v21)
        {

          goto LABEL_4;
        }

        v11 = (v11 + 1) & v15;
        v12 = v11 >> 6;
        v13 = *(v5 + 8 * (v11 >> 6));
        v14 = 1 << v11;
      }

      while (((1 << v11) & v13) != 0);
      v6 = v25;
LABEL_15:
      *(v5 + 8 * v12) = v14 | v13;
      *(*(v3 + 48) + 8 * v11) = v27;
      v22 = *(v3 + 16);
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        __break(1u);
        return result;
      }

      *(v3 + 16) = v24;
LABEL_5:
      if (++v4 == v6)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_249F3E630(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2A460, &qword_249F4B7B0);
    v3 = sub_249F4A518();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (1)
    {
      v10 = *(v6 + 4 * v4);
      sub_249F4A6C8();
      sub_249F4A6E8();
      result = sub_249F4A6F8();
      v12 = ~(-1 << *(v3 + 32));
      v13 = result & v12;
      v14 = (result & v12) >> 6;
      v15 = *(v5 + 8 * v14);
      v16 = 1 << (result & v12);
      v17 = *(v3 + 48);
      if ((v16 & v15) != 0)
      {
        while (*(v17 + 4 * v13) != v10)
        {
          v13 = (v13 + 1) & v12;
          v14 = v13 >> 6;
          v15 = *(v5 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v14) = v16 | v15;
        *(v17 + 4 * v13) = v10;
        v7 = *(v3 + 16);
        v8 = __OFADD__(v7, 1);
        v9 = v7 + 1;
        if (v8)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v9;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_249F3E76C(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_249F3DC7C(result, a2);
  }

  return result;
}

uint64_t sub_249F3E788(uint64_t a1)
{
  result = sub_249F4A308();
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

void sub_249F3E9E8(uint64_t a1, unint64_t *a2, uint64_t a3)
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

uint64_t sub_249F3EA7C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

BOOL FileMeasurement.isSameFile(_:withSupportedAlgorithms:)(uint64_t *a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3)
  {
    v4 = *a1;
    v5 = *v2;
    v6 = (a2 + 32);
    do
    {
      v8 = *v6++;
      v7 = v8;
      v9 = 0x3268736168;
      if (v8 != 2)
      {
        if (v7 != 5)
        {
          v18 = 1;
          goto LABEL_15;
        }

        v9 = 0x3568736168;
      }

      if (!*(v5 + 16))
      {
        goto LABEL_3;
      }

      v10 = sub_249F3E200(v9, 0xE500000000000000);
      v12 = v11;

      if ((v12 & 1) == 0)
      {
        goto LABEL_4;
      }

      if (*(v4 + 16))
      {
        v13 = (*(v5 + 56) + 16 * v10);
        v14 = *v13;
        v25 = v13[1];
        sub_249F40C18(*v13, v25);
        v15 = sub_249F3E200(v9, 0xE500000000000000);
        v17 = v16;

        if (v17)
        {
          v21 = (*(v4 + 56) + 16 * v15);
          v22 = *v21;
          v23 = v21[1];
          sub_249F40C18(*v21, v23);
          v24 = sub_249F42424(v14, v25, v22, v23);
          sub_249F3DC7C(v22, v23);
          sub_249F3DC7C(v14, v25);
          return v24;
        }

        sub_249F3DC7C(v14, v25);
      }

      else
      {
LABEL_3:
      }

LABEL_4:
      --v3;
    }

    while (v3);
  }

  v18 = 3;
  v7 = 1;
LABEL_15:
  sub_249F3ED2C();
  swift_allocError();
  *v19 = v7;
  *(v19 + 8) = 0;
  *(v19 + 16) = v18;
  swift_willThrow();
  return 0;
}

unint64_t sub_249F3ED2C()
{
  result = qword_27EF2A498;
  if (!qword_27EF2A498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF2A498);
  }

  return result;
}

uint64_t sub_249F3ED98(uint64_t a1, unint64_t a2, int a3)
{
  v35 = a1;
  LODWORD(v3) = a3;
  v40 = a2;
  v4 = sub_249F4A3F8();
  v32 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_249F4A3D8();
  v33 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_249F4A3E8();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_249F4A3C8();
  v15 = MEMORY[0x28223BE20](v14);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v3 == 5)
  {
    sub_249F43008(&qword_27EF2A510, MEMORY[0x277CC5560], MEMORY[0x277CC5558]);
    sub_249F4A3B8();
    v25 = v35;
    v26 = v40;
    sub_249F40C18(v35, v40);
    sub_249F41F80(v25, v26, v6);
    sub_249F3DC7C(v25, v26);
    sub_249F4A3A8();
    (*(v32 + 8))(v6, v4);
    v38 = v7;
    v39 = sub_249F43008(&qword_27EF2A518, MEMORY[0x277CC52E8], MEMORY[0x277CC52D8]);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v37);
    v28 = v33;
    (*(v33 + 16))(boxed_opaque_existential_1, v9, v7);
    __swift_project_boxed_opaque_existential_1(v37, v38);
    sub_249F4A1D8();
    (*(v28 + 8))(v9, v7);
  }

  else
  {
    if (v3 != 2)
    {
      v3 = v3;
      sub_249F3ED2C();
      swift_allocError();
      *v29 = v3;
      *(v29 + 8) = 0;
      *(v29 + 16) = 1;
      swift_willThrow();
      return v3;
    }

    v19 = v15;
    v20 = v16;
    sub_249F43008(&qword_27EF2A520, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
    sub_249F4A3B8();
    v21 = v35;
    v22 = v40;
    sub_249F40C18(v35, v40);
    v23 = v34;
    sub_249F41D5C(v21, v22, v13);
    v34 = v23;
    sub_249F3DC7C(v21, v22);
    sub_249F4A3A8();
    (*(v11 + 8))(v13, v10);
    v38 = v19;
    v39 = sub_249F43008(&qword_27EF2A528, MEMORY[0x277CC5290], MEMORY[0x277CC5280]);
    v24 = __swift_allocate_boxed_opaque_existential_1(v37);
    (*(v20 + 16))(v24, v18, v19);
    __swift_project_boxed_opaque_existential_1(v37, v38);
    sub_249F4A1D8();
    (*(v20 + 8))(v18, v19);
  }

  v3 = v36;
  __swift_destroy_boxed_opaque_existential_1(v37);
  return v3;
}

uint64_t sub_249F3F328(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 0x3568736168;
  }

  else
  {
    v2 = 0x3268736168;
  }

  if (*a2)
  {
    v3 = 0x3568736168;
  }

  else
  {
    v3 = 0x3268736168;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_249F4A658();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_249F3F3A8()
{
  sub_249F4A6C8();
  sub_249F4A458();

  return sub_249F4A6F8();
}

uint64_t sub_249F3F418(uint64_t a1)
{
  sub_249F4A458();
}

uint64_t sub_249F3F46C(uint64_t a1)
{
  sub_249F4A6C8();
  sub_249F4A458();

  return sub_249F4A6F8();
}

uint64_t sub_249F3F4D8@<X0>(char *a2@<X8>)
{
  v3 = sub_249F4A5E8();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_249F3F538(uint64_t *a1@<X8>)
{
  v2 = 0x3268736168;
  if (*v1)
  {
    v2 = 0x3568736168;
  }

  *a1 = v2;
  a1[1] = 0xE500000000000000;
}

uint64_t sub_249F3F568()
{
  if (*v0)
  {
    return 0x3568736168;
  }

  else
  {
    return 0x3268736168;
  }
}

uint64_t sub_249F3F594@<X0>(char *a3@<X8>)
{
  v4 = sub_249F4A5E8();

  if (v4 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v4)
  {
    v6 = 0;
  }

  *a3 = v6;
  return result;
}

uint64_t sub_249F3F610(uint64_t a1)
{
  v2 = sub_249F427E4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_249F3F64C(uint64_t a1)
{
  v2 = sub_249F427E4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_249F3F688@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  if (v6)
  {
    while (1)
    {
      v10 = v9;
LABEL_8:
      v11 = (*(a1 + 48) + ((v10 << 10) | (16 * __clz(__rbit64(v6)))));
      v13 = *v11;
      v12 = v11[1];

      if (sub_249F4A5E8() > 1)
      {
        break;
      }

      v6 &= v6 - 1;

      v9 = v10;
      if (!v6)
      {
        goto LABEL_5;
      }
    }

    sub_249F3ED2C();
    swift_allocError();
    *v14 = v13;
    *(v14 + 8) = v12;
    *(v14 + 16) = 0;
    swift_willThrow();
  }

  else
  {
LABEL_5:
    while (1)
    {
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v10 >= v7)
      {

        *a2 = a1;
        return result;
      }

      v6 = *(v3 + 8 * v10);
      ++v9;
      if (v6)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t FileMeasurement.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2A4A0, &qword_249F4B170);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v37 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_249F427E4();
  sub_249F4A708();
  if (v2)
  {
    goto LABEL_28;
  }

  v37 = a2;
  v38 = v7;
  v39 = a1;
  v10 = sub_249F4A618();
  v11 = v10;
  v43 = *(v10 + 16);
  if (!v43)
  {
    v13 = MEMORY[0x277D84F98];
LABEL_23:

    if (v13[2])
    {
      (*(v38 + 8))(v9, v6);
      *v37 = v13;
      v34 = v39;
      return __swift_destroy_boxed_opaque_existential_1(v34);
    }

    sub_249F3ED2C();
    swift_allocError();
    *v35 = 0;
    *(v35 + 8) = 0;
    *(v35 + 16) = 3;
    swift_willThrow();
    (*(v38 + 8))(v9, v6);
LABEL_27:
    a1 = v39;
LABEL_28:
    v34 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v34);
  }

  v12 = 0;
  v13 = MEMORY[0x277D84F98];
  v41 = v9;
  v42 = v6;
  v40 = v10;
  while (v12 < *(v11 + 16))
  {
    if (*(v11 + v12 + 32))
    {
      v17 = 0x3568736168;
    }

    else
    {
      v17 = 0x3268736168;
    }

    LOBYTE(v47) = *(v11 + v12 + 32);
    sub_249F42884();
    sub_249F4A608();
    if (v3)
    {
      (*(v38 + 8))(v9, v6);

      goto LABEL_27;
    }

    v44 = 0;
    v18 = v45;
    v19 = v46;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v47 = v13;
    v22 = sub_249F3E200(v17, 0xE500000000000000);
    v23 = v13[2];
    v24 = (v21 & 1) == 0;
    v25 = v23 + v24;
    if (__OFADD__(v23, v24))
    {
      goto LABEL_31;
    }

    v26 = v21;
    if (v13[3] >= v25)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v21)
        {
          goto LABEL_4;
        }
      }

      else
      {
        sub_249F411D0();
        if (v26)
        {
          goto LABEL_4;
        }
      }
    }

    else
    {
      sub_249F40C6C(v25, isUniquelyReferenced_nonNull_native);
      v27 = sub_249F3E200(v17, 0xE500000000000000);
      if ((v26 & 1) != (v28 & 1))
      {
        goto LABEL_33;
      }

      v22 = v27;
      if (v26)
      {
LABEL_4:

        v13 = v47;
        v14 = (v47[7] + 16 * v22);
        v15 = *v14;
        v16 = v14[1];
        *v14 = v18;
        v14[1] = v19;
        sub_249F3DC7C(v15, v16);
        goto LABEL_5;
      }
    }

    v13 = v47;
    v47[(v22 >> 6) + 8] |= 1 << v22;
    v29 = (v13[6] + 16 * v22);
    *v29 = v17;
    v29[1] = 0xE500000000000000;
    v30 = (v13[7] + 16 * v22);
    *v30 = v18;
    v30[1] = v19;
    v31 = v13[2];
    v32 = __OFADD__(v31, 1);
    v33 = v31 + 1;
    if (v32)
    {
      goto LABEL_32;
    }

    v13[2] = v33;
LABEL_5:
    ++v12;
    v6 = v42;
    v11 = v40;
    v9 = v41;
    v3 = v44;
    if (v43 == v12)
    {
      goto LABEL_23;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  result = sub_249F4A678();
  __break(1u);
  return result;
}

uint64_t FileMeasurement.init(withHash:ofType:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, unsigned int a3@<W2>, void *a4@<X8>)
{
  if (a3 == 2)
  {
    v8 = 0x3268736168;
  }

  else
  {
    if (a3 != 5)
    {
      v12 = a3;
      sub_249F3ED2C();
      swift_allocError();
      *v13 = v12;
      *(v13 + 8) = 0;
      *(v13 + 16) = 1;
      swift_willThrow();
      return sub_249F3DC7C(a1, a2);
    }

    v8 = 0x3568736168;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2A4B8, &qword_249F4B178);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_249F4AE50;
  *(inited + 32) = v8;
  *(inited + 40) = 0xE500000000000000;
  *(inited + 48) = a1;
  *(inited + 56) = a2;
  sub_249F40C18(a1, a2);
  v10 = sub_249F428D8(inited);
  swift_setDeallocating();
  sub_249F429F0(inited + 32);
  sub_249F3F688(v10, &v14);
  result = sub_249F3DC7C(a1, a2);
  if (!v4)
  {
    *a4 = v14;
  }

  return result;
}

uint64_t FileMeasurement.encode(to:)(void *a1)
{
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2A4C8, &qword_249F4B188);
  v28 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v5 = &v27 - v4;
  v6 = a1[3];
  v7 = a1;
  v8 = *v1;
  __swift_project_boxed_opaque_existential_1(v7, v6);
  sub_249F427E4();
  v31 = v5;
  sub_249F4A718();
  v9 = v8 + 64;
  v10 = 1 << *(v8 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(v8 + 64);
  v13 = (v10 + 63) >> 6;

  v15 = 0;
  v30 = xmmword_249F4B160;
  for (i = v8; v12; v8 = i)
  {
    v16 = v15;
LABEL_8:
    v17 = (*(v8 + 48) + ((v16 << 10) | (16 * __clz(__rbit64(v12)))));
    v18 = *v17;
    v19 = v17[1];

    v20 = sub_249F4A5E8();
    if (v20)
    {
      if (v20 != 1)
      {
        sub_249F3ED2C();
        swift_allocError();
        *v26 = v18;
        *(v26 + 8) = v19;
        *(v26 + 16) = 0;
        swift_willThrow();

        return (*(v28 + 8))(v31, v32);
      }

      v21 = 1;
      if (!*(v8 + 16))
      {
LABEL_11:

        v22 = v30;
        goto LABEL_15;
      }
    }

    else
    {
      v21 = 0;
      if (!*(v8 + 16))
      {
        goto LABEL_11;
      }
    }

    v23 = sub_249F3E200(v18, v19);
    v25 = v24;

    v22 = v30;
    if (v25)
    {
      v29 = *(*(i + 56) + 16 * v23);
      sub_249F40C18(v29, *(&v29 + 1));
      v22 = v29;
    }

LABEL_15:
    v34 = v22;
    v35 = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2A4D0, &qword_249F4B190);
    sub_249F42A58();
    sub_249F4A638();
    if (v2)
    {

      sub_249F3E76C(v34, *(&v34 + 1));
      return (*(v28 + 8))(v31, v32);
    }

    v12 &= v12 - 1;
    result = sub_249F3E76C(v34, *(&v34 + 1));
    v15 = v16;
  }

  while (1)
  {
    v16 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v16 >= v13)
    {
      (*(v28 + 8))(v31, v32);
    }

    v12 = *(v9 + 8 * v16);
    ++v15;
    if (v12)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

uint64_t FileMeasurement.hashTypes()()
{
  v1 = *v0;
  v16 = MEMORY[0x277D84FA0];
  v2 = 1 << *(v1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(v1 + 64);
  v5 = (v2 + 63) >> 6;

  v7 = 0;
  while (v4)
  {
LABEL_11:
    v10 = (*(v1 + 48) + ((v7 << 10) | (16 * __clz(__rbit64(v4)))));
    v12 = *v10;
    v11 = v10[1];
    swift_bridgeObjectRetain_n();
    v13 = sub_249F4A5E8();

    if (v13)
    {
      if (v13 != 1)
      {

        sub_249F3ED2C();
        swift_allocError();
        *v14 = v12;
        *(v14 + 8) = v11;
        *(v14 + 16) = 0;
        swift_willThrow();
      }

      v8 = 5;
    }

    else
    {
      v8 = 2;
    }

    v4 &= v4 - 1;

    result = sub_249F41558(v15, v8);
  }

  while (1)
  {
    v9 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v9 >= v5)
    {

      return v16;
    }

    v4 = *(v1 + 64 + 8 * v9);
    ++v7;
    if (v4)
    {
      v7 = v9;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t FileMeasurement.bestHash()()
{
  v8 = *v0;
  v2 = &v8;
  v3 = FileMeasurement.hashTypes()();
  if (!v1)
  {
    v4 = v3;
    if (sub_249F48EE0(5, v3))
    {

      return 5;
    }

    else
    {
      v2 = 2;
      v5 = sub_249F48EE0(2, v4);

      if (!v5)
      {
        sub_249F3ED2C();
        swift_allocError();
        *v7 = 0;
        *(v7 + 8) = 0;
        *(v7 + 16) = 3;
        swift_willThrow();
      }
    }
  }

  return v2;
}

uint64_t FileMeasurement.hashData(forDigestAlgorithm:)(unsigned int a1)
{
  result = sub_249F42284(a1);
  if (!v1)
  {
    v4 = result;
    sub_249F40C18(result, v3);
    return v4;
  }

  return result;
}

BOOL sub_249F40320(uint64_t a1, uint64_t a2)
{
  v58[3] = *MEMORY[0x277D85DE8];
  if (a1 == a2)
  {
    return 1;
  }

  v2 = a2;
  v3 = a1;
  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = a1 + 64;
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 64);
  v9 = (v6 + 63) >> 6;
  while (1)
  {
    while (1)
    {
      if (v8)
      {
        v10 = __clz(__rbit64(v8));
        v56 = (v8 - 1) & v8;
        goto LABEL_13;
      }

      v11 = v4;
      do
      {
        v4 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          __break(1u);
          goto LABEL_78;
        }

        if (v4 >= v9)
        {
          return 1;
        }

        v12 = *(v5 + 8 * v4);
        ++v11;
      }

      while (!v12);
      v10 = __clz(__rbit64(v12));
      v56 = (v12 - 1) & v12;
LABEL_13:
      v13 = 16 * (v10 | (v4 << 6));
      v14 = (*(v3 + 48) + v13);
      v15 = *v14;
      v16 = v14[1];
      v17 = (*(v3 + 56) + v13);
      v19 = *v17;
      v18 = v17[1];

      sub_249F40C18(v19, v18);
      v20 = v16 == 0;
      if (!v16)
      {
        return v20;
      }

      v21 = sub_249F3E200(v15, v16);
      v23 = v22;

      if ((v23 & 1) == 0)
      {
        goto LABEL_74;
      }

      v24 = (*(v2 + 56) + 16 * v21);
      v26 = *v24;
      v25 = v24[1];
      v27 = v25 >> 62;
      v28 = v18 >> 62;
      if (v25 >> 62 == 3)
      {
        if (v26)
        {
          v29 = 0;
        }

        else
        {
          v29 = v25 == 0xC000000000000000;
        }

        v30 = 0;
        v31 = v29 && v18 >> 62 == 3;
        if (v31 && !v19 && v18 == 0xC000000000000000)
        {
          v32 = 0;
          v33 = 0xC000000000000000;
          goto LABEL_49;
        }

LABEL_36:
        if (v28 <= 1)
        {
LABEL_37:
          if (!v28)
          {
            v37 = BYTE6(v18);
            goto LABEL_43;
          }

          LODWORD(v37) = HIDWORD(v19) - v19;
          if (!__OFSUB__(HIDWORD(v19), v19))
          {
            v37 = v37;
            goto LABEL_43;
          }

LABEL_78:
          __break(1u);
LABEL_79:
          __break(1u);
LABEL_80:
          __break(1u);
LABEL_81:
          __break(1u);
LABEL_82:
          __break(1u);
LABEL_83:
          __break(1u);
LABEL_84:
          __break(1u);
LABEL_85:
          __break(1u);
        }
      }

      else if (v27 > 1)
      {
        if (v27 == 2)
        {
          v39 = *(v26 + 16);
          v38 = *(v26 + 24);
          v36 = __OFSUB__(v38, v39);
          v30 = v38 - v39;
          if (!v36)
          {
            goto LABEL_36;
          }

          goto LABEL_81;
        }

        v30 = 0;
        if (v28 <= 1)
        {
          goto LABEL_37;
        }
      }

      else if (v27)
      {
        LODWORD(v30) = HIDWORD(v26) - v26;
        if (__OFSUB__(HIDWORD(v26), v26))
        {
          goto LABEL_80;
        }

        v30 = v30;
        if (v28 <= 1)
        {
          goto LABEL_37;
        }
      }

      else
      {
        v30 = BYTE6(v25);
        if (v28 <= 1)
        {
          goto LABEL_37;
        }
      }

      if (v28 == 2)
      {
        break;
      }

      if (v30)
      {
        goto LABEL_74;
      }

LABEL_48:
      v32 = v19;
      v33 = v18;
LABEL_49:
      sub_249F3DC7C(v32, v33);
      v3 = a1;
      v8 = v56;
    }

    v35 = *(v19 + 16);
    v34 = *(v19 + 24);
    v36 = __OFSUB__(v34, v35);
    v37 = v34 - v35;
    if (v36)
    {
      goto LABEL_79;
    }

LABEL_43:
    if (v30 != v37)
    {
      break;
    }

    if (v30 < 1)
    {
      goto LABEL_48;
    }

    if (v27 > 1)
    {
      if (v27 != 2)
      {
        memset(v58, 0, 14);
        sub_249F40C18(v26, v25);
        goto LABEL_64;
      }

      v51 = *(v26 + 24);
      v53 = *(v26 + 16);
      sub_249F40C18(v26, v25);
      v40 = sub_249F4A198();
      if (v40)
      {
        v41 = v40;
        v42 = sub_249F4A1B8();
        v43 = v53;
        if (__OFSUB__(v53, v42))
        {
          goto LABEL_84;
        }

        v50 = v53 - v42 + v41;
      }

      else
      {
        v50 = 0;
        v43 = v53;
      }

      if (__OFSUB__(v51, v43))
      {
        goto LABEL_83;
      }

      sub_249F4A1A8();
      v48 = v50;
LABEL_70:
      sub_249F40858(v48, v19, v18, v58);
      sub_249F3DC7C(v26, v25);
      sub_249F3DC7C(v19, v18);
      v47 = v58[0];
      goto LABEL_71;
    }

    if (v27)
    {
      if (v26 >> 32 < v26)
      {
        goto LABEL_82;
      }

      sub_249F40C18(v26, v25);
      v44 = sub_249F4A198();
      if (v44)
      {
        v52 = v44;
        v45 = sub_249F4A1B8();
        if (__OFSUB__(v26, v45))
        {
          goto LABEL_85;
        }

        v46 = v26 - v45 + v52;
      }

      else
      {
        v46 = 0;
      }

      sub_249F4A1A8();
      v48 = v46;
      goto LABEL_70;
    }

    v58[0] = v26;
    LOWORD(v58[1]) = v25;
    BYTE2(v58[1]) = BYTE2(v25);
    BYTE3(v58[1]) = BYTE3(v25);
    BYTE4(v58[1]) = BYTE4(v25);
    BYTE5(v58[1]) = BYTE5(v25);
    sub_249F40C18(v26, v25);
LABEL_64:
    sub_249F40858(v58, v19, v18, &v57);
    sub_249F3DC7C(v26, v25);
    sub_249F3DC7C(v19, v18);
    v47 = v57;
LABEL_71:
    v2 = a2;
    v3 = a1;
    v8 = v56;
    if ((v47 & 1) == 0)
    {
      return v20;
    }
  }

LABEL_74:
  sub_249F3DC7C(v19, v18);
  return 0;
}

uint64_t sub_249F40858@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = sub_249F4A198();
    if (v10)
    {
      v11 = sub_249F4A1B8();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = sub_249F4A1A8();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v20 = a3;
    v21 = BYTE2(a3);
    v22 = BYTE3(a3);
    v23 = BYTE4(a3);
    v24 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = sub_249F4A198();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_249F4A1B8();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_249F4A1A8();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_249F40A88(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v13[2] = *MEMORY[0x277D85DE8];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      BYTE4(v13[1]) = BYTE4(a2);
      BYTE5(v13[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_249F4236C(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_249F3DC7C(a3, a4);
    return v10 & 1;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v13, 0, 14);
LABEL_9:
  sub_249F40858(v13, a3, a4, &v12);
  v10 = v4;
  sub_249F3DC7C(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

uint64_t sub_249F40C18(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_249F40C6C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2A508, &qword_249F4B4B0);
  v33 = v4;
  result = sub_249F4A5B8();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = 16 * (v18 | (v8 << 6));
      v22 = (*(v5 + 48) + v21);
      v23 = *v22;
      v24 = v22[1];
      v34 = *(*(v5 + 56) + v21);
      if ((v33 & 1) == 0)
      {

        sub_249F40C18(v34, *(&v34 + 1));
      }

      sub_249F4A6C8();
      sub_249F4A458();
      result = sub_249F4A6F8();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v7 + 56) + v16) = v34;
      ++*(v7 + 16);
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_249F40F28(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2A500, &unk_249F4B4A0);
  v34 = v4;
  result = sub_249F4A5B8();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_249F4A6C8();
      sub_249F4A458();
      result = sub_249F4A6F8();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

void *sub_249F411D0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2A508, &qword_249F4B4B0);
  v2 = *v0;
  v3 = sub_249F4A5A8();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v22 = *(*(v2 + 56) + v17);
        v21 = (*(v4 + 48) + v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + v17) = v22;

        result = sub_249F40C18(v22, *(&v22 + 1));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_249F41354()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2A500, &unk_249F4B4A0);
  v2 = *v0;
  v3 = sub_249F4A5A8();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

_BYTE *sub_249F414C4@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_249F43050(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_249F43108(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_249F43184(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

uint64_t sub_249F41558(_DWORD *a1, uint64_t a2)
{
  v5 = *v2;
  sub_249F4A6C8();
  sub_249F4A6E8();
  v6 = sub_249F4A6F8();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 4 * v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_249F418A0(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_249F41650(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2A460, &qword_249F4B7B0);
  result = sub_249F4A508();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 4 * (v14 | (v6 << 6)));
      sub_249F4A6C8();
      sub_249F4A6E8();
      result = sub_249F4A6F8();
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 4 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      bzero((v3 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v25;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

void sub_249F418A0(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_249F41650(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      sub_249F419FC();
      a2 = v7;
      goto LABEL_12;
    }

    sub_249F41B3C(v5 + 1);
  }

  v8 = *v3;
  sub_249F4A6C8();
  sub_249F4A6E8();
  v9 = sub_249F4A6F8();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    v12 = v9 & ~v10;
    type metadata accessor for SecCSDigestAlgorithm(0);
    a2 = v12;
    while (*(*(v8 + 48) + 4 * a2) != v4)
    {
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v13 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v13 + 48) + 4 * a2) = v4;
  v14 = *(v13 + 16);
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (!v15)
  {
    *(v13 + 16) = v16;
    return;
  }

  __break(1u);
LABEL_15:
  sub_249F4A668();
  __break(1u);
}

void *sub_249F419FC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2A460, &qword_249F4B7B0);
  v2 = *v0;
  v3 = sub_249F4A4F8();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 4 * v14) = *(*(v2 + 48) + 4 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_249F41B3C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2A460, &qword_249F4B7B0);
  result = sub_249F4A508();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + 4 * (v13 | (v6 << 6)));
      sub_249F4A6C8();
      sub_249F4A6E8();
      result = sub_249F4A6F8();
      v17 = -1 << *(v5 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 4 * v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_249F41D5C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v3)
    {
      sub_249F4A3E8();
      sub_249F43008(&qword_27EF2A520, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
      return sub_249F4A398();
    }

    v5 = a1;
    v6 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_249F421A4(v5, v6, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, MEMORY[0x277CC5540], &qword_27EF2A520, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
  }

  if (v3 == 2)
  {
    v5 = *(a1 + 16);
    v6 = *(a1 + 24);
    return sub_249F421A4(v5, v6, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, MEMORY[0x277CC5540], &qword_27EF2A520, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
  }

  sub_249F4A3E8();
  sub_249F43008(&qword_27EF2A520, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
  return sub_249F4A398();
}

uint64_t sub_249F41F80(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v3)
    {
      sub_249F4A3F8();
      sub_249F43008(&qword_27EF2A510, MEMORY[0x277CC5560], MEMORY[0x277CC5558]);
      return sub_249F4A398();
    }

    v5 = a1;
    v6 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_249F421A4(v5, v6, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, MEMORY[0x277CC5560], &qword_27EF2A510, MEMORY[0x277CC5560], MEMORY[0x277CC5558]);
  }

  if (v3 == 2)
  {
    v5 = *(a1 + 16);
    v6 = *(a1 + 24);
    return sub_249F421A4(v5, v6, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, MEMORY[0x277CC5560], &qword_27EF2A510, MEMORY[0x277CC5560], MEMORY[0x277CC5558]);
  }

  sub_249F4A3F8();
  sub_249F43008(&qword_27EF2A510, MEMORY[0x277CC5560], MEMORY[0x277CC5558]);
  return sub_249F4A398();
}

uint64_t sub_249F421A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), unint64_t *a6, uint64_t (*a7)(uint64_t), uint64_t a8)
{
  result = sub_249F4A198();
  if (!result || (result = sub_249F4A1B8(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_249F4A1A8();
      a5(0);
      sub_249F43008(a6, a7, a8);
      return sub_249F4A398();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_249F42284(unsigned int a1)
{
  v3 = *v1;
  if (a1 == 2)
  {
    v4 = 0x3268736168;
    if (*(v3 + 16))
    {
LABEL_4:
      v5 = sub_249F3E200(v4, 0xE500000000000000);
      v7 = v6;

      if (v7)
      {
        return *(*(v3 + 56) + 16 * v5);
      }

      goto LABEL_8;
    }
  }

  else
  {
    if (a1 != 5)
    {
      v9 = 1;
      goto LABEL_10;
    }

    v4 = 0x3568736168;
    if (*(v3 + 16))
    {
      goto LABEL_4;
    }
  }

LABEL_8:
  v9 = 2;
LABEL_10:
  sub_249F3ED2C();
  swift_allocError();
  *v10 = a1;
  *(v10 + 8) = 0;
  *(v10 + 16) = v9;
  return swift_willThrow();
}

uint64_t sub_249F4236C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_249F4A198();
  v11 = result;
  if (result)
  {
    result = sub_249F4A1B8();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_249F4A1A8();
  sub_249F40858(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

BOOL sub_249F42424(_BOOL8 result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_249F40C18(a3, a4);
          return sub_249F40A88(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

BOOL _s11EDPSecurity20FileMeasurementErrorO2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  v5 = *a2;
  v6 = a2[1];
  v7 = *(a2 + 16);
  if (v4 <= 1)
  {
    if (!*(a1 + 16))
    {
      if (*(a2 + 16))
      {

LABEL_30:
        sub_249F42F7C(v5, v6, v7);
        sub_249F42F90(v2, v3, v4);
        sub_249F42F90(v5, v6, v7);
        return 0;
      }

      v14 = *a1;
      if (v2 != v5 || v3 != v6)
      {
        v16 = sub_249F4A658();
        sub_249F42F7C(v5, v6, 0);
        sub_249F42F7C(v2, v3, 0);
        sub_249F42F90(v2, v3, 0);
        sub_249F42F90(v5, v6, 0);
        return v16 & 1;
      }

      sub_249F42F7C(v14, v3, 0);
      sub_249F42F7C(v2, v3, 0);
      sub_249F42F90(v2, v3, 0);
      v19 = v2;
      v20 = v3;
      v21 = 0;
LABEL_34:
      sub_249F42F90(v19, v20, v21);
      return 1;
    }

    if (v7 != 1)
    {
      goto LABEL_30;
    }

    sub_249F42F90(*a1, v3, 1);
    v8 = v5;
    v9 = v6;
    v10 = 1;
    goto LABEL_10;
  }

  if (v4 == 2)
  {
    if (v7 != 2)
    {
      goto LABEL_30;
    }

    sub_249F42F90(*a1, v3, 2);
    v8 = v5;
    v9 = v6;
    v10 = 2;
LABEL_10:
    sub_249F42F90(v8, v9, v10);
    return v2 == v5;
  }

  if (!(v2 | v3))
  {
    if (v7 != 3 || (v6 | v5) != 0)
    {
      goto LABEL_30;
    }

    sub_249F42F90(*a1, v3, 3);
    v19 = 0;
    v20 = 0;
    v21 = 3;
    goto LABEL_34;
  }

  if (v7 != 3 || v5 != 1 || v6 != 0)
  {
    goto LABEL_30;
  }

  sub_249F42F90(*a1, v3, 3);
  v11 = 1;
  sub_249F42F90(1, 0, 3);
  return v11;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_249F427E4()
{
  result = qword_27EF2A4A8;
  if (!qword_27EF2A4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF2A4A8);
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(void *a1)
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

unint64_t sub_249F42884()
{
  result = qword_27EF2A4B0;
  if (!qword_27EF2A4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF2A4B0);
  }

  return result;
}

unint64_t sub_249F428D8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2A508, &qword_249F4B4B0);
    v3 = sub_249F4A5C8();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      sub_249F40C18(v7, v8);
      result = sub_249F3E200(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

uint64_t sub_249F429F0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2A4C0, &qword_249F4B180);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_249F42A58()
{
  result = qword_27EF2A4D8;
  if (!qword_27EF2A4D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF2A4D0, &qword_249F4B190);
    sub_249F42B24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF2A4D8);
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

unint64_t sub_249F42B24()
{
  result = qword_27EF2A4E0;
  if (!qword_27EF2A4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF2A4E0);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_11EDPSecurity20FileMeasurementErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_249F42BA8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_249F42BF0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_249F42C38(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    LOBYTE(a2) = 3;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_249F42C6C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_249F42CB4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FileMeasurement.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FileMeasurement.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_249F42E78()
{
  result = qword_27EF2A4E8;
  if (!qword_27EF2A4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF2A4E8);
  }

  return result;
}

unint64_t sub_249F42ED0()
{
  result = qword_27EF2A4F0;
  if (!qword_27EF2A4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF2A4F0);
  }

  return result;
}

unint64_t sub_249F42F28()
{
  result = qword_27EF2A4F8;
  if (!qword_27EF2A4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF2A4F8);
  }

  return result;
}

uint64_t sub_249F42F7C(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3)
  {
  }

  return result;
}

uint64_t sub_249F42F90(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3)
  {
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_249F43008(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_249F43050(_BYTE *__src, _BYTE *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

uint64_t sub_249F43108(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_249F4A1C8();
  swift_allocObject();
  result = sub_249F4A188();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_249F4A328();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_249F43184(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_249F4A1C8();
  swift_allocObject();
  result = sub_249F4A188();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t PackageSigner.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC11EDPSecurity13PackageSigner_url;
  v4 = sub_249F4A308();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_249F43290(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC11EDPSecurity13PackageSigner_additionalResources;
  swift_beginAccess();
  *(v3 + v4) = v2;
}

uint64_t sub_249F433C0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC11EDPSecurity13PackageSigner_measurer;
  swift_beginAccess();
  *(v3 + v4) = v2;
}

uint64_t sub_249F43490(uint64_t a1, uint64_t *a2, uint64_t (*a3)(uint64_t))
{
  v6 = *a2;
  swift_beginAccess();
  v7 = *(v3 + v6);
  *(v3 + v6) = a1;
  return a3(v7);
}

uint64_t sub_249F4354C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11EDPSecurity13PackageSigner_signingTime;
  swift_beginAccess();
  v5 = sub_249F4A388();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_249F435D8(uint64_t a1, uint64_t *a2)
{
  v4 = sub_249F4A388();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, a1, v4);
  v8 = *a2;
  v9 = OBJC_IVAR____TtC11EDPSecurity13PackageSigner_signingTime;
  swift_beginAccess();
  (*(v5 + 40))(v8 + v9, v7, v4);
  return swift_endAccess();
}

uint64_t sub_249F436F0@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC11EDPSecurity13PackageSigner_signingTime;
  swift_beginAccess();
  v4 = sub_249F4A388();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_249F43778(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11EDPSecurity13PackageSigner_signingTime;
  swift_beginAccess();
  v4 = sub_249F4A388();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

uint64_t PackageSigner.__allocating_init(_:_:)(char *a1, unint64_t a2)
{
  v4 = swift_allocObject();
  PackageSigner.init(_:_:)(a1, a2);
  return v4;
}

uint64_t PackageSigner.init(_:_:)(char *a1, unint64_t a2)
{
  v4 = v2;
  v7 = sub_249F4A388();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v33 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_249F4A308();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!(a2 >> 62))
  {
    if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_9:

    type metadata accessor for PackageSignerError(0);
    sub_249F4576C(&qword_27EF2A530, type metadata accessor for PackageSignerError, &protocol conformance descriptor for PackageSignerError);
    swift_allocError();
    goto LABEL_10;
  }

  if (!sub_249F4A598())
  {
    goto LABEL_9;
  }

LABEL_3:
  v32 = v8;
  if ((sub_249F45CC4() & 1) == 0)
  {

    type metadata accessor for PackageSignerError(0);
    sub_249F4576C(&qword_27EF2A530, type metadata accessor for PackageSignerError, &protocol conformance descriptor for PackageSignerError);
    swift_allocError();
    (*(v11 + 16))(v23, a1, v10);
LABEL_10:
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    (*(v11 + 8))(a1, v10);
    goto LABEL_11;
  }

  v29 = v7;
  v30 = v3;
  sub_249F4A298();
  v14 = OBJC_IVAR____TtC11EDPSecurity13PackageSigner_url;
  (*(v11 + 32))(v4 + OBJC_IVAR____TtC11EDPSecurity13PackageSigner_url, v13, v10);
  v15 = [objc_opt_self() defaultManager];
  v31 = a1;
  v16 = v15;
  v27 = *(v11 + 16);
  v28 = v14;
  v27(v13, v4 + v14, v10);
  sub_249F4A2D8();
  v17 = v13;
  v18 = *(v11 + 8);
  v18(v17, v10);
  v19 = sub_249F4A408();

  v20 = [v16 fileExistsAtPath_];

  if ((v20 & 1) == 0)
  {

    type metadata accessor for PackageSignerError(0);
    sub_249F4576C(&qword_27EF2A530, type metadata accessor for PackageSignerError, &protocol conformance descriptor for PackageSignerError);
    swift_allocError();
    v24 = v28;
    v27(v25, v4 + v28, v10);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v18(v31, v10);
    v18((v4 + v24), v10);
LABEL_11:
    type metadata accessor for PackageSigner(0);
    swift_deallocPartialClassInstance();
    return v4;
  }

  *(v4 + OBJC_IVAR____TtC11EDPSecurity13PackageSigner_certificateChain) = a2;
  *(v4 + OBJC_IVAR____TtC11EDPSecurity13PackageSigner_additionalResources) = MEMORY[0x277D84F98];
  type metadata accessor for FileMeasurer();
  v21 = swift_allocObject();
  *(v21 + 16) = sub_249F3E630(&unk_285D1AFE0);
  *(v4 + OBJC_IVAR____TtC11EDPSecurity13PackageSigner_measurer) = v21;
  v22 = v33;
  sub_249F4A378();
  v18(v31, v10);
  (*(v32 + 32))(v4 + OBJC_IVAR____TtC11EDPSecurity13PackageSigner_signingTime, v22, v29);
  return v4;
}

uint64_t sub_249F43E44(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_249F43E7C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = *a3;
  v7 = OBJC_IVAR____TtC11EDPSecurity13PackageSigner_additionalResources;
  swift_beginAccess();
  if (*(*(v3 + v7) + 16) && (, sub_249F3E200(a1, a2), v9 = v8, , (v9 & 1) != 0))
  {
    type metadata accessor for ResourceManifestError(0);
    sub_249F4576C(&qword_27EF2A538, type metadata accessor for ResourceManifestError, &unk_249F4B770);
    swift_allocError();
    *v10 = a1;
    v10[1] = a2;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  else
  {
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *(v3 + v7);
    *(v3 + v7) = 0x8000000000000000;
    sub_249F455F0(v6, a1, a2, isUniquelyReferenced_nonNull_native);

    *(v3 + v7) = v13;
    return swift_endAccess();
  }
}

uint64_t sub_249F44008(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = *a3;
  v7 = OBJC_IVAR____TtC11EDPSecurity13PackageSigner_additionalResources;
  swift_beginAccess();
  if (*(*(v3 + v7) + 16) && (, sub_249F3E200(a1, a2), v9 = v8, , (v9 & 1) != 0))
  {
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *(v3 + v7);
    *(v3 + v7) = 0x8000000000000000;
    sub_249F455F0(v6, a1, a2, isUniquelyReferenced_nonNull_native);

    *(v3 + v7) = v13;
    return swift_endAccess();
  }

  else
  {
    type metadata accessor for PackageSignerError(0);
    sub_249F4576C(&qword_27EF2A530, type metadata accessor for PackageSignerError, &protocol conformance descriptor for PackageSignerError);
    swift_allocError();
    *v12 = a1;
    v12[1] = a2;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }
}

uint64_t sub_249F44194(uint64_t a1, uint64_t a2)
{
  v95 = a2;
  v94 = a1;
  v107 = *MEMORY[0x277D85DE8];
  v92 = sub_249F4A2A8();
  v90 = *(v92 - 8);
  MEMORY[0x28223BE20](v92);
  v89 = &v82 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_249F4A308();
  v91 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v82 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_249F4A388();
  v93 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v82 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtC11EDPSecurity13PackageSigner_url;
  v12 = OBJC_IVAR____TtC11EDPSecurity13PackageSigner_measurer;
  swift_beginAccess();
  v13 = *(v2 + v12);

  v14 = sub_249F47B00(v2 + v11, v13);
  if (v3)
  {
  }

  v85 = v10;
  v86 = v8;
  v82 = v11;
  v83 = v7;
  v84 = v5;
  v88 = 0;
  v15 = v14;

  v16 = OBJC_IVAR____TtC11EDPSecurity13PackageSigner_additionalResources;
  swift_beginAccess();
  v87 = v2;
  v17 = *(v2 + v16);
  v18 = v17 + 64;
  v19 = 1 << *(v17 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & *(v17 + 64);
  v99 = v17;

  swift_beginAccess();
  v22 = 0;
  v23 = ((v19 + 63) >> 6);
  v96 = v23;
  v98 = v15;
  v97 = v18;
  while (v21)
  {
LABEL_12:
    v26 = __clz(__rbit64(v21)) | (v22 << 6);
    v27 = (*(v99 + 48) + 16 * v26);
    v28 = *v27;
    v29 = v27[1];
    v30 = *(*(v99 + 56) + 8 * v26);
    v31 = *(v15[3] + 16);

    if (v31)
    {

      sub_249F3E200(v28, v29);
      v33 = v32;

      if (v33)
      {
        type metadata accessor for ResourceManifestError(0);
        sub_249F4576C(&qword_27EF2A538, type metadata accessor for ResourceManifestError, &unk_249F4B770);
        swift_allocError();
        *v81 = v28;
        v81[1] = v29;
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
      }
    }

    swift_beginAccess();
    v34 = v30;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v106 = v15[3];
    v36 = v106;
    v15[3] = 0x8000000000000000;
    v37 = v28;
    v39 = sub_249F3E200(v28, v29);
    v40 = v36[2];
    v41 = (v38 & 1) == 0;
    v42 = v40 + v41;
    if (__OFADD__(v40, v41))
    {
      goto LABEL_34;
    }

    v43 = v38;
    if (v36[3] >= v42)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v38)
        {
          goto LABEL_5;
        }
      }

      else
      {
        sub_249F41354();
        if (v43)
        {
          goto LABEL_5;
        }
      }
    }

    else
    {
      sub_249F40F28(v42, isUniquelyReferenced_nonNull_native);
      v44 = sub_249F3E200(v37, v29);
      if ((v43 & 1) != (v45 & 1))
      {
        result = sub_249F4A678();
        __break(1u);
        return result;
      }

      v39 = v44;
      if (v43)
      {
LABEL_5:

        v24 = v106;
        *(v106[7] + 8 * v39) = v34;

        goto LABEL_6;
      }
    }

    v24 = v106;
    v106[(v39 >> 6) + 8] |= 1 << v39;
    v46 = (v24[6] + 16 * v39);
    *v46 = v37;
    v46[1] = v29;
    *(v24[7] + 8 * v39) = v34;
    v47 = v24[2];
    v48 = __OFADD__(v47, 1);
    v49 = v47 + 1;
    if (v48)
    {
      goto LABEL_35;
    }

    v24[2] = v49;
LABEL_6:
    v21 &= v21 - 1;
    v15 = v98;
    v98[3] = v24;
    swift_endAccess();

    v18 = v97;
    v23 = v96;
  }

  while (1)
  {
    v25 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
    }

    if (v25 >= v23)
    {
      break;
    }

    v21 = *(v18 + 8 * v25);
    ++v22;
    if (v21)
    {
      v22 = v25;
      goto LABEL_12;
    }
  }

  sub_249F4A268();
  swift_allocObject();
  sub_249F4A258();
  sub_249F4A238();
  aBlock = v15;
  type metadata accessor for ResourceManifest();
  sub_249F4576C(&qword_27EF2A540, type metadata accessor for ResourceManifest, &protocol conformance descriptor for ResourceManifest);
  v50 = v88;
  v51 = sub_249F4A248();
  if (!v50)
  {
    v53 = v51;
    v54 = v52;
    v88 = 0;
    v96 = objc_opt_self();
    v55 = sub_249F4A338();
    v56 = v87;
    sub_249F44B44(*(v87 + OBJC_IVAR____TtC11EDPSecurity13PackageSigner_certificateChain));
    v99 = v54;
    v57 = sub_249F4A4B8();

    v58 = OBJC_IVAR____TtC11EDPSecurity13PackageSigner_signingTime;
    swift_beginAccess();
    v59 = v93;
    v60 = v56 + v58;
    v61 = v85;
    v62 = v86;
    (*(v93 + 16))(v85, v60, v86);
    v97 = v53;
    v63 = sub_249F4A368();
    (*(v59 + 8))(v61, v62);
    v64 = swift_allocObject();
    v65 = v95;
    *(v64 + 16) = v94;
    *(v64 + 24) = v65;
    v66 = swift_allocObject();
    *(v66 + 16) = sub_249F457C4;
    *(v66 + 24) = v64;
    v104 = sub_249F457CC;
    v105 = v66;
    aBlock = MEMORY[0x277D85DD0];
    v101 = 1107296256;
    v102 = sub_249F44E04;
    v103 = &block_descriptor;
    v67 = _Block_copy(&aBlock);

    aBlock = 0;
    v68 = [v96 createSignature:v55 withCertChain:v57 withTime:v63 withRemoteHandler:v67 withError:&aBlock];
    _Block_release(v67);

    v69 = aBlock;
    if (v68)
    {
      v70 = sub_249F4A348();
      v72 = v71;

      aBlock = 0x727574616E676973;
      v101 = 0xE900000000000065;
      v73 = v90;
      v74 = v89;
      v75 = v92;
      (*(v90 + 104))(v89, *MEMORY[0x277CC91D8], v92);
      sub_249F3CBDC();
      v76 = v83;
      sub_249F4A2F8();
      (*(v73 + 8))(v74, v75);
      sub_249F4A358();
      (*(v91 + 8))(v76, v84);
      sub_249F3DC7C(v97, v99);
      v77 = v70;
      v78 = v72;
    }

    else
    {
      v79 = v69;
      sub_249F4A288();

      swift_willThrow();
      v77 = v97;
      v78 = v99;
    }

    sub_249F3DC7C(v77, v78);
  }
}

char *sub_249F44B44(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_249F4A598();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    return v3;
  }

  v13 = MEMORY[0x277D84F90];
  result = sub_249F454C0(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        MEMORY[0x24C208110](i, a1);
        type metadata accessor for SecCertificate(0);
        swift_dynamicCast();
        v13 = v3;
        v7 = *(v3 + 16);
        v6 = *(v3 + 24);
        if (v7 >= v6 >> 1)
        {
          sub_249F454C0((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v7 + 1;
        sub_249F45CAC(v12, (v3 + 32 * v7 + 32));
      }
    }

    else
    {
      v8 = (a1 + 32);
      type metadata accessor for SecCertificate(0);
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v13 = v3;
        v11 = *(v3 + 16);
        v10 = *(v3 + 24);
        if (v11 >= v10 >> 1)
        {
          sub_249F454C0((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v11 + 1;
        sub_249F45CAC(v12, (v3 + 32 * v11 + 32));
        ++v8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

id sub_249F44D10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v8 = [objc_allocWithZone(SignatureResponse) init];
  v9 = a4(a1, a2, a3);
  v11 = v10;
  v12 = sub_249F4A338();
  [v8 setSignature_];

  sub_249F3DC7C(v9, v11);
  return v8;
}

id sub_249F44E04(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = sub_249F4A348();
  v8 = v7;

  v9 = v4(v6, v8, a3);
  sub_249F3DC7C(v6, v8);

  return v9;
}

uint64_t static PackageSigner.signPackage(_:_:_:_:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = sub_249F4A308();
  MEMORY[0x28223BE20](v11);
  v13 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v13, a1);
  type metadata accessor for PackageSigner(0);
  v15 = swift_allocObject();

  result = PackageSigner.init(_:_:)(v13, a2);
  if (!v5)
  {
    v58 = a4;
    v59 = a5;
    v60 = 0;
    v17 = a3 + 64;
    v18 = 1 << *(a3 + 32);
    v19 = -1;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    v20 = v19 & *(a3 + 64);
    v21 = OBJC_IVAR____TtC11EDPSecurity13PackageSigner_additionalResources;

    v66 = v21;
    swift_beginAccess();
    v22 = 0;
    v23 = (v18 + 63) >> 6;
    v24 = v15;
    v62 = a3 + 64;
    v63 = v23;
    v64 = a3;
    v61 = v15;
    while (v20)
    {
LABEL_12:
      v27 = __clz(__rbit64(v20)) | (v22 << 6);
      v28 = (*(a3 + 48) + 16 * v27);
      v29 = *v28;
      v30 = *(*(a3 + 56) + 8 * v27);
      v31 = *(*(v24 + v66) + 16);
      v65 = v28[1];

      if (v31)
      {

        sub_249F3E200(v29, v65);
        v33 = v32;

        if (v33)
        {
          type metadata accessor for ResourceManifestError(0);
          sub_249F4576C(&qword_27EF2A538, type metadata accessor for ResourceManifestError, &unk_249F4B770);
          swift_allocError();
          v55 = v65;
          *v56 = v29;
          v56[1] = v55;
          swift_storeEnumTagMultiPayload();
          swift_willThrow();
        }
      }

      v34 = v66;
      swift_beginAccess();
      v35 = v30;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v67 = *(v24 + v34);
      v37 = v67;
      *(v24 + v34) = 0x8000000000000000;
      v38 = v29;
      v39 = v29;
      v40 = v65;
      v42 = sub_249F3E200(v39, v65);
      v43 = v37[2];
      v44 = (v41 & 1) == 0;
      v45 = v43 + v44;
      if (__OFADD__(v43, v44))
      {
        goto LABEL_27;
      }

      v46 = v41;
      if (v37[3] >= v45)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_249F41354();
        }
      }

      else
      {
        sub_249F40F28(v45, isUniquelyReferenced_nonNull_native);
        v47 = sub_249F3E200(v38, v40);
        if ((v46 & 1) != (v48 & 1))
        {
          goto LABEL_29;
        }

        v42 = v47;
      }

      v49 = v40;
      v50 = v35;
      v23 = v63;
      a3 = v64;
      if (v46)
      {

        v25 = v67;
        *(v67[7] + 8 * v42) = v50;
      }

      else
      {
        v25 = v67;
        v67[(v42 >> 6) + 8] |= 1 << v42;
        v51 = (v25[6] + 16 * v42);
        *v51 = v38;
        v51[1] = v49;
        *(v25[7] + 8 * v42) = v50;
        v52 = v25[2];
        v53 = __OFADD__(v52, 1);
        v54 = v52 + 1;
        if (v53)
        {
          goto LABEL_28;
        }

        v25[2] = v54;
      }

      v20 &= v20 - 1;
      v24 = v61;
      *(v61 + v66) = v25;
      swift_endAccess();

      v17 = v62;
    }

    while (1)
    {
      v26 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v26 >= v23)
      {

        sub_249F44194(v58, v59);
      }

      v20 = *(v17 + 8 * v26);
      ++v22;
      if (v20)
      {
        v22 = v26;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    result = sub_249F4A678();
    __break(1u);
  }

  return result;
}

uint64_t PackageSigner.deinit()
{
  v1 = OBJC_IVAR____TtC11EDPSecurity13PackageSigner_url;
  v2 = sub_249F4A308();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC11EDPSecurity13PackageSigner_signingTime;
  v4 = sub_249F4A388();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t PackageSigner.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC11EDPSecurity13PackageSigner_url;
  v2 = sub_249F4A308();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC11EDPSecurity13PackageSigner_signingTime;
  v4 = sub_249F4A388();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v5, v6);
}

char *sub_249F454C0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_249F454E0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_249F454E0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2A568, &qword_249F4B548);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_249F455F0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_249F3E200(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_249F40F28(v16, a4 & 1);
      v11 = sub_249F3E200(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = sub_249F4A678();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_249F41354();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v23 = (v21[6] + 16 * v11);
  *v23 = a2;
  v23[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v24 = v21[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v25;
}

uint64_t sub_249F4576C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_249F4580C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11EDPSecurity13PackageSigner_additionalResources;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_249F4586C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11EDPSecurity13PackageSigner_measurer;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_249F45924(uint64_t a1)
{
  result = sub_249F4A308();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_249F45998(uint64_t a1)
{
  result = sub_249F4A308();
  if (v2 <= 0x3F)
  {
    result = sub_249F4A388();
    if (v3 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

_OWORD *sub_249F45CAC(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_249F45CC4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2A5D8, &qword_249F4B7B8);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v10 - v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2A5E8, &qword_249F4B7C8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_249F4AE50;
  v4 = *MEMORY[0x277CBE868];
  *(inited + 32) = *MEMORY[0x277CBE868];
  v5 = v4;
  sub_249F3E43C(inited);
  swift_setDeallocating();
  sub_249F48490(inited + 32);
  sub_249F4A2B8();

  v6 = sub_249F4A1F8();
  v7 = *(v6 - 8);
  (*(v7 + 56))(v2, 0, 1, v6);
  v8 = sub_249F4A1E8();
  (*(v7 + 8))(v2, v6);
  return v8 & 1;
}

uint64_t sub_249F45EFC(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 16) = a1;
  return result;
}

uint64_t sub_249F45F8C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 24) = v2;
}

uint64_t sub_249F46024(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 24) = a1;
}

uint64_t ResourceManifest.__allocating_init()(uint64_t a1)
{
  type metadata accessor for ResourceManifest();
  result = swift_allocObject();
  v2 = MEMORY[0x277D84F98];
  *(result + 16) = 1;
  *(result + 24) = v2;
  return result;
}

unint64_t sub_249F46114()
{
  sub_249F4A528();

  swift_beginAccess();
  v0 = sub_249F4A648();
  MEMORY[0x24C208060](v0);

  MEMORY[0x24C208060](8236, 0xE200000000000000);
  swift_beginAccess();
  v1 = sub_249F4A648();
  MEMORY[0x24C208060](v1);

  MEMORY[0x24C208060](0x6372756F73657220, 0xEB000000003E7365);
  return 0xD000000000000014;
}

uint64_t sub_249F46250()
{
  swift_beginAccess();
  v2 = *(v0 + 24);
  v3 = 1 << *(v2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v2 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  v9 = MEMORY[0x277D84FA0];
  while (v5)
  {
    v10 = v8;
LABEL_9:
    v11 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v12 = *(*(v2 + 56) + ((v10 << 9) | (8 * v11)));
    if (*(v9 + 16))
    {
      v18 = *(*(v2 + 56) + ((v10 << 9) | (8 * v11)));

      v13 = &v18;
      v14 = FileMeasurement.hashTypes()();
      if (v1)
      {

LABEL_21:

        return v13;
      }

      v15 = v14;

      v9 = sub_249F46D48(v15, v9);

      v8 = v10;
    }

    else
    {

      v18 = v12;
      v13 = &v18;
      v9 = FileMeasurement.hashTypes()();

      if (v1)
      {
        goto LABEL_21;
      }

      v8 = v10;
    }
  }

  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
      return result;
    }

    if (v10 >= v6)
    {
      break;
    }

    v5 = *(v2 + 64 + 8 * v10);
    ++v8;
    if (v5)
    {
      goto LABEL_9;
    }
  }

  if (*(v9 + 16))
  {
    if (sub_249F48EE0(5, v9))
    {

      return 5;
    }

    else
    {
      v13 = 2;
      v16 = sub_249F48EE0(2, v9);

      if (!v16)
      {
        sub_249F3ED2C();
        swift_allocError();
        *v17 = 0;
        *(v17 + 8) = 0;
        *(v17 + 16) = 3;
        swift_willThrow();
      }
    }
  }

  else
  {

    v13 = type metadata accessor for ResourceManifestError(0);
    sub_249F46F58();
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  return v13;
}

uint64_t sub_249F464DC()
{
  v1 = *v0;
  sub_249F4A6C8();
  MEMORY[0x24C2082B0](v1);
  return sub_249F4A6F8();
}

uint64_t sub_249F46550(uint64_t a1)
{
  v2 = *v1;
  sub_249F4A6C8();
  MEMORY[0x24C2082B0](v2);
  return sub_249F4A6F8();
}

uint64_t sub_249F46594()
{
  if (*v0)
  {
    return 0x656372756F736572;
  }

  else
  {
    return 0x6E6F6973726576;
  }
}

uint64_t sub_249F465D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000;
  if (v6 || (sub_249F4A658() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x656372756F736572 && a2 == 0xE900000000000073)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_249F4A658();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_249F466B8(uint64_t a1)
{
  v2 = sub_249F46FB0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_249F466F4(uint64_t a1)
{
  v2 = sub_249F46FB0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ResourceManifest.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_249F46788(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2A570, &qword_249F4B560);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_249F46FB0();
  sub_249F4A718();
  swift_beginAccess();
  v12 = 0;
  sub_249F4A628();
  if (!v2)
  {
    swift_beginAccess();
    v11 = *(v3 + 24);
    v10[7] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2A580, &qword_249F4B568);
    sub_249F47058(&qword_27EF2A588, sub_249F47004, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
    sub_249F4A638();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t ResourceManifest.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  ResourceManifest.init(from:)(a1);
  return v2;
}

uint64_t ResourceManifest.init(from:)(void *a1)
{
  v3 = v1;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2A598, &qword_249F4B570);
  v5 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v7 = &v13 - v6;
  *(v1 + 16) = 1;
  v8 = (v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_249F46FB0();
  sub_249F4A708();
  if (v2)
  {
    type metadata accessor for ResourceManifest();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v9 = v5;
    v16 = 0;
    v10 = v14;
    v11 = sub_249F4A5F8();
    swift_beginAccess();
    *v8 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2A580, &qword_249F4B568);
    v15 = 1;
    sub_249F47058(&qword_27EF2A5A0, sub_249F470DC, MEMORY[0x277D83808], MEMORY[0x277D83528]);
    sub_249F4A608();
    (*(v9 + 8))(v7, v10);
    *(v3 + 24) = v17;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v3;
}

uint64_t sub_249F46C18@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for ResourceManifest();
  v5 = swift_allocObject();
  result = ResourceManifest.init(from:)(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

void *sub_249F46CB8(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
    }

    v8 = sub_249F4753C(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_249F46D48(uint64_t a1, uint64_t a2)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v6 = ((1 << v4) + 63) >> 6;
  v7 = 8 * v6;

  if (v5 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe);
    bzero(v12 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), v7);
    v9 = sub_249F4753C(v12 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), v6, a2, a1);
  }

  else
  {
    v11 = swift_slowAlloc();

    v9 = sub_249F46CB8(v11, v6, a2, a1);

    MEMORY[0x24C2088A0](v11, -1, -1);
  }

  return v9;
}

uint64_t type metadata accessor for ResourceManifestError(uint64_t a1)
{
  result = qword_27EF2A5B0;
  if (!qword_27EF2A5B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_249F46F58()
{
  result = qword_27EF2A538;
  if (!qword_27EF2A538)
  {
    type metadata accessor for ResourceManifestError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF2A538);
  }

  return result;
}

unint64_t sub_249F46FB0()
{
  result = qword_27EF2A578;
  if (!qword_27EF2A578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF2A578);
  }

  return result;
}

unint64_t sub_249F47004()
{
  result = qword_27EF2A590;
  if (!qword_27EF2A590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF2A590);
  }

  return result;
}

uint64_t sub_249F47058(unint64_t *a1, void (*a2)(void), uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF2A580, &qword_249F4B568);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_249F470DC()
{
  result = qword_27EF2A5A8;
  if (!qword_27EF2A5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF2A5A8);
  }

  return result;
}

uint64_t sub_249F47130@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_249F47178(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 16) = v2;
  return result;
}

uint64_t sub_249F471BC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 24);
}

uint64_t sub_249F473C8(uint64_t a1)
{
  result = sub_249F4A308();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_249F47438()
{
  result = qword_27EF2A5C0;
  if (!qword_27EF2A5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF2A5C0);
  }

  return result;
}

unint64_t sub_249F47490()
{
  result = qword_27EF2A5C8;
  if (!qword_27EF2A5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF2A5C8);
  }

  return result;
}

unint64_t sub_249F474E8()
{
  result = qword_27EF2A5D0;
  if (!qword_27EF2A5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF2A5D0);
  }

  return result;
}

uint64_t sub_249F4753C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = result;
  v39 = a4;
  if (*(a4 + 16) >= *(a3 + 16))
  {
    v22 = 0;
    v23 = 1 << *(a3 + 32);
    if (v23 < 64)
    {
      v24 = ~(-1 << v23);
    }

    else
    {
      v24 = -1;
    }

    v25 = v24 & *(a3 + 56);
    v26 = (v23 + 63) >> 6;
    v27 = a4 + 56;
    v38 = 0;
LABEL_24:
    while (v25)
    {
      v28 = __clz(__rbit64(v25));
      v25 &= v25 - 1;
LABEL_31:
      v31 = v28 | (v22 << 6);
      v32 = *(*(a3 + 48) + 4 * v31);
      sub_249F4A6C8();
      sub_249F4A6E8();
      result = sub_249F4A6F8();
      v33 = -1 << *(v39 + 32);
      v34 = result & ~v33;
      if ((*(v27 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34))
      {
        v35 = ~v33;
        while (*(*(v39 + 48) + 4 * v34) != v32)
        {
          v34 = (v34 + 1) & v35;
          if (((*(v27 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34) & 1) == 0)
          {
            goto LABEL_24;
          }
        }

        *(v37 + ((v31 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v31;
        if (__OFADD__(v38, 1))
        {
          goto LABEL_41;
        }

        ++v38;
      }
    }

    v29 = v22;
    while (1)
    {
      v22 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        break;
      }

      if (v22 >= v26)
      {
LABEL_38:

        return sub_249F47848(v37, a2, v38, a3);
      }

      v30 = *(a3 + 56 + 8 * v22);
      ++v29;
      if (v30)
      {
        v28 = __clz(__rbit64(v30));
        v25 = (v30 - 1) & v30;
        goto LABEL_31;
      }
    }

    __break(1u);
  }

  else
  {
    v5 = 0;
    v6 = a4 + 56;
    v7 = 1 << *(a4 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(a4 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = a3 + 56;
    v38 = 0;
    while (v9)
    {
      v12 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_13:
      v15 = *(*(a4 + 48) + 4 * (v12 | (v5 << 6)));
      sub_249F4A6C8();
      sub_249F4A6E8();
      result = sub_249F4A6F8();
      a4 = v39;
      v16 = -1 << *(a3 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      v19 = 1 << v17;
      if (((1 << v17) & *(v11 + 8 * (v17 >> 6))) != 0)
      {
        v20 = *(a3 + 48);
        if (*(v20 + 4 * v17) == v15)
        {
LABEL_18:
          v37[v18] |= v19;
          if (__OFADD__(v38, 1))
          {
            goto LABEL_42;
          }

          ++v38;
        }

        else
        {
          v21 = ~v16;
          while (1)
          {
            v17 = (v17 + 1) & v21;
            v18 = v17 >> 6;
            v19 = 1 << v17;
            if (((1 << v17) & *(v11 + 8 * (v17 >> 6))) == 0)
            {
              break;
            }

            if (*(v20 + 4 * v17) == v15)
            {
              goto LABEL_18;
            }
          }
        }
      }
    }

    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v5 >= v10)
      {
        goto LABEL_38;
      }

      v14 = *(v6 + 8 * v5);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v9 = (v14 - 1) & v14;
        goto LABEL_13;
      }
    }
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
  return result;
}

uint64_t sub_249F47848(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2A460, &qword_249F4B7B0);
  result = sub_249F4A518();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(*(v4 + 48) + 4 * (v13 | (v11 << 6)));
    sub_249F4A6C8();
    sub_249F4A6E8();
    result = sub_249F4A6F8();
    v17 = -1 << *(v9 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *(v12 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v9 + 48) + 4 * v20) = v16;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_249F47A50(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a1 < 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return MEMORY[0x2821FBFB0]();
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v4 = 7;
  if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
  {
    v4 = 11;
  }

  v5 = v4 | (v3 << 16);
  v6 = sub_249F4A478();
  if (v7)
  {
    v6 = v5;
  }

  if (4 * v3 < v6 >> 14)
  {
    goto LABEL_14;
  }

  return MEMORY[0x2821FBFB0]();
}

uint64_t sub_249F47B00(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v60 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2A5D8, &qword_249F4B7B8);
  MEMORY[0x28223BE20](v5 - 8);
  v62 = &v57 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2A5E0, &qword_249F4B7C0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v57 - v8;
  v10 = sub_249F4A2A8();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_249F4A308();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v76 = &v57 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v57 - v19;
  MEMORY[0x28223BE20](v18);
  v72 = &v57 - v21;
  v61 = a1;
  if ((sub_249F45CC4() & 1) == 0 || (v69 = v11, v70 = v10, v22 = [objc_opt_self() defaultManager], v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2A5E8, &qword_249F4B7C8), v23 = swift_allocObject(), v67 = xmmword_249F4AE50, *(v23 + 16) = xmmword_249F4AE50, v24 = *MEMORY[0x277CBE868], *(v23 + 32) = *MEMORY[0x277CBE868], v66 = v24, v25 = sub_249F4A4D8(), v22, , (v71 = v25) == 0))
  {
    type metadata accessor for ResourceManifestError(0);
    sub_249F46F58();
    swift_allocError();
    (*(v15 + 16))(v56, v61, v14);
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }

  *&v75[0] = 0x727574616E676973;
  *(&v75[0] + 1) = 0xE900000000000065;
  v27 = v69;
  v26 = v70;
  (*(v69 + 104))(v13, *MEMORY[0x277CC91D8], v70);
  sub_249F3CBDC();
  sub_249F4A2F8();
  (*(v27 + 8))(v13, v26);
  v70 = (v15 + 56);
  v65 = (v15 + 48);
  v64 = (v15 + 32);
  v69 = v15 + 8;
  v59 = MEMORY[0x277D84F98];
  v28 = v62;
  v63 = v20;
  while (1)
  {
    while (1)
    {
      if ([v71 nextObject])
      {
        sub_249F4A4E8();
        swift_unknownObjectRelease();
      }

      else
      {
        v73 = 0u;
        v74 = 0u;
      }

      v75[0] = v73;
      v75[1] = v74;
      if (!*(&v74 + 1))
      {
        (*v69)(v72, v14);

        sub_249F484EC(v75, &qword_27EF2A5F0, &unk_249F4B7D0);
        (*v70)(v9, 1, 1, v14);
LABEL_22:
        sub_249F484EC(v9, &qword_27EF2A5E0, &qword_249F4B7C0);
        type metadata accessor for ResourceManifest();
        result = swift_allocObject();
        *(result + 16) = 1;
        *(result + 24) = v59;
        return result;
      }

      v31 = swift_dynamicCast();
      (*v70)(v9, v31 ^ 1u, 1, v14);
      if ((*v65)(v9, 1, v14) == 1)
      {
        (*v69)(v72, v14);

        goto LABEL_22;
      }

      (*v64)(v20, v9, v14);
      sub_249F4A298();
      inited = swift_initStackObject();
      *(inited + 16) = v67;
      v33 = v66;
      *(inited + 32) = v66;
      v34 = v33;
      sub_249F3E43C(inited);
      swift_setDeallocating();
      v35 = v76;
      sub_249F48490(inited + 32);
      sub_249F4A2B8();
      if (v3)
      {
        MEMORY[0x24C2087B0](v3);

        v29 = sub_249F4A1F8();
        (*(*(v29 - 8) + 56))(v28, 1, 1, v29);
        sub_249F484EC(v28, &qword_27EF2A5D8, &qword_249F4B7B8);
        v3 = 0;
        break;
      }

      v3 = 0;

      v36 = sub_249F4A1F8();
      v37 = *(v36 - 8);
      (*(v37 + 56))(v28, 0, 1, v36);
      v38 = sub_249F4A1E8();
      (*(v37 + 8))(v28, v36);
      if (v38 == 2)
      {
        v28 = v62;
        v35 = v76;
        break;
      }

      v28 = v62;
      v35 = v76;
      if ((v38 & 1) == 0)
      {
        break;
      }

LABEL_6:
      v30 = *v69;
      (*v69)(v35, v14);
      v20 = v63;
      v30(v63, v14);
    }

    if (sub_249F4A2C8())
    {
      goto LABEL_6;
    }

    sub_249F49C48(v75);
    v39 = *&v75[0];
    v58 = sub_249F4A2D8();
    v40 = v35;
    v41 = sub_249F4A2D8();
    v43 = v42;
    v58 = sub_249F4A468();

    result = v58 + 1;
    if (__OFADD__(v58, 1))
    {
      break;
    }

    v58 = sub_249F47A50(result, v41, v43);
    v46 = v45;
    v57 = v47;
    v49 = v48;

    v58 = MEMORY[0x24C208020](v58, v46, v57, v49);
    v51 = v50;

    v52 = v59;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v75[0] = v52;
    sub_249F455F0(v39, v58, v51, isUniquelyReferenced_nonNull_native);

    v54 = *v69;
    (*v69)(v40, v14);
    v55 = v63;
    v54(v63, v14);
    v59 = *&v75[0];
    v20 = v55;
  }

  __break(1u);
  return result;
}

uint64_t sub_249F48490(uint64_t a1)
{
  type metadata accessor for URLResourceKey(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_249F484EC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t PackageValidator.init(signatureData:requireTrust:)(uint64_t a1, unint64_t a2, char a3)
{
  v5 = v3;
  v42[1] = *MEMORY[0x277D85DE8];
  *(v3 + 40) = a1;
  *(v3 + 48) = a2;
  sub_249F48A78(a1, a2);
  sub_249F3E76C(0, 0xF000000000000000);
  *(v3 + 32) = 0;
  v9 = *(v3 + 48);
  if (v9 >> 60 != 15)
  {
    v11 = *(v3 + 40);
    v12 = v9 >> 62;
    if ((v9 >> 62) > 1)
    {
      if (v12 != 2)
      {
        goto LABEL_12;
      }

      v13 = *(v11 + 16);
      v14 = *(v11 + 24);
    }

    else
    {
      if (!v12)
      {
        if ((v9 & 0xFF000000000000) == 0)
        {
          goto LABEL_12;
        }

LABEL_13:
        v16 = objc_opt_self();
        v17 = sub_249F4A338();
        v18 = a3;
        v19 = v17;
        v42[0] = 0;
        v39 = v18;
        v20 = [v16 validateSignature:v17 requireTrust:v18 & 1 withError:v42];

        v21 = v42[0];
        if (!v20)
        {
          v30 = v42[0];
          v31 = sub_249F4A288();

          swift_willThrow();
          sub_249F3CB88();
          swift_allocError();
          *(v32 + 8) = 0;
          *(v32 + 16) = 0;
          *v32 = v31;
          *(v32 + 24) = 0;
          swift_willThrow();
          sub_249F3E76C(v11, v9);
          goto LABEL_3;
        }

        v40 = v11;
        sub_249F4A228();
        swift_allocObject();
        v22 = v21;
        v23 = v20;
        sub_249F4A218();
        type metadata accessor for ResourceManifest();
        v41 = v23;
        v24 = [v23 validatedData];
        v25 = sub_249F4A348();
        v27 = v26;

        sub_249F48AB0();
        sub_249F4A208();
        sub_249F3DC7C(v25, v27);
        if (v4)
        {
          sub_249F3CB88();
          swift_allocError();
          *(v28 + 8) = 0;
          *(v28 + 16) = 0;
          *v28 = 2;
          *(v28 + 24) = 5;
          swift_willThrow();

          sub_249F3E76C(v40, v9);

          MEMORY[0x24C2087B0](v4);
          sub_249F3E76C(a1, a2);
          goto LABEL_16;
        }

        *(v5 + 16) = v42[0];
        *(v5 + 32) = [v41 isTrusted];
        v33 = [v41 certificateChain];
        v34 = sub_249F4A4C8();

        v35 = sub_249F4907C(v34);

        if (!v35)
        {
          sub_249F3CB88();
          swift_allocError();
          *(v38 + 8) = 0;
          *(v38 + 16) = 0;
          *v38 = 4;
          *(v38 + 24) = 5;
          swift_willThrow();

          sub_249F3E76C(v40, v9);

          sub_249F3E76C(a1, a2);

          goto LABEL_16;
        }

        *(v5 + 24) = v35;
        if (v39)
        {
          v36 = v41;
          if ((*(v5 + 32) & 1) == 0)
          {
            sub_249F3CB88();
            swift_allocError();
            *(v37 + 8) = 0;
            *(v37 + 16) = 0;
            *v37 = 3;
            *(v37 + 24) = 5;
            swift_willThrow();

LABEL_26:
            sub_249F3E76C(v40, v9);

            sub_249F3E76C(a1, a2);
            return v5;
          }
        }

        else
        {
          v36 = v41;
        }

        goto LABEL_26;
      }

      v13 = v11;
      v14 = v11 >> 32;
    }

    sub_249F48A78(*(v5 + 40), v9);
    if (v13 != v14)
    {
      goto LABEL_13;
    }

LABEL_12:
    sub_249F3CB88();
    swift_allocError();
    *(v15 + 8) = 0;
    *(v15 + 16) = 0;
    *v15 = 1;
    *(v15 + 24) = 5;
    swift_willThrow();
    sub_249F3E76C(a1, a2);
    sub_249F3E76C(v11, v9);
    goto LABEL_16;
  }

  sub_249F3CB88();
  swift_allocError();
  *(v10 + 8) = 0;
  *(v10 + 16) = 0;
  *v10 = 1;
  *(v10 + 24) = 5;
  swift_willThrow();
LABEL_3:
  sub_249F3E76C(a1, a2);
LABEL_16:
  sub_249F3E76C(*(v5 + 40), *(v5 + 48));
  type metadata accessor for PackageValidator();
  swift_deallocPartialClassInstance();
  return v5;
}

uint64_t sub_249F48A78(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_249F40C18(result, a2);
  }

  return result;
}

unint64_t sub_249F48AB0()
{
  result = qword_27EF2A5F8;
  if (!qword_27EF2A5F8)
  {
    type metadata accessor for ResourceManifest();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF2A5F8);
  }

  return result;
}

void *PackageValidator.deinit()
{

  sub_249F3E76C(*(v0 + 40), *(v0 + 48));
  return v0;
}

uint64_t sub_249F48B70(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 16) = a1;
}

uint64_t sub_249F48C60(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  swift_beginAccess();
  v10 = *(v4 + 16);
  swift_beginAccess();
  if (!*(*(v10 + 24) + 16))
  {
    goto LABEL_7;
  }

  sub_249F3E200(a1, a2);
  if ((v11 & 1) == 0)
  {

LABEL_7:
    sub_249F3CB88();
    swift_allocError();
    *v15 = a1;
    *(v15 + 8) = a2;
    *(v15 + 16) = 0;
    *(v15 + 24) = 3;
    swift_willThrow();
  }

  v12 = FileMeasurement.hashTypes()();
  if (v5)
  {
  }

  v13 = v12;
  if (sub_249F48EE0(5, v12))
  {

    v14 = 5;
    goto LABEL_9;
  }

  v14 = 2;
  v17 = sub_249F48EE0(2, v13);

  if (!v17)
  {
    sub_249F3ED2C();
    swift_allocError();
    *v21 = 0;
    *(v21 + 8) = 0;
    *(v21 + 16) = 3;
    swift_willThrow();
  }

LABEL_9:
  v18 = sub_249F3ED98(a3, a4, v14);
  v20 = v19;
  v22 = sub_249F42284(v14);
  v24 = v23;
  sub_249F40C18(v22, v23);

  if (!sub_249F42424(v18, v20, v22, v24))
  {
    sub_249F3CB88();
    swift_allocError();
    *v25 = a1;
    *(v25 + 8) = a2;
    *(v25 + 16) = 0;
    *(v25 + 24) = 1;
    swift_willThrow();
  }

  sub_249F3DC7C(v22, v24);
  return sub_249F3DC7C(v18, v20);
}

BOOL sub_249F48EE0(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = a1;
  sub_249F4A6C8();
  sub_249F4A6E8();
  v4 = sub_249F4A6F8();
  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  do
  {
    v8 = *(*(a2 + 48) + 4 * v6);
    result = v8 == v3;
    if (v8 == v3)
    {
      break;
    }

    v6 = (v6 + 1) & v7;
  }

  while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  return result;
}

uint64_t sub_249F48FB4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 16) = v2;
}

uint64_t PackageValidator.__allocating_init(signatureData:requireTrust:)(uint64_t a1, unint64_t a2, char a3)
{
  v6 = swift_allocObject();
  PackageValidator.init(signatureData:requireTrust:)(a1, a2, a3);
  return v6;
}

uint64_t sub_249F4907C(uint64_t a1)
{
  v6 = MEMORY[0x277D84F90];
  v2 = *(a1 + 16);
  sub_249F4A568();
  if (!v2)
  {
    return v6;
  }

  for (i = a1 + 32; ; i += 32)
  {
    sub_249F49760(i, v5);
    type metadata accessor for SecCertificate(0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    sub_249F4A548();
    sub_249F4A578();
    sub_249F4A588();
    sub_249F4A558();
    if (!--v2)
    {
      return v6;
    }
  }

  return 0;
}

uint64_t PackageValidator.__deallocating_deinit()
{

  sub_249F3E76C(*(v0 + 40), *(v0 + 48));

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

BOOL _s11EDPSecurity21PackageValidatorErrorO2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[2];
  v8 = *(a1 + 24);
  v9 = *(a2 + 24);
  sub_249F3CB88();
  v10 = swift_allocError();
  *v11 = v2;
  *(v11 + 8) = v3;
  *(v11 + 16) = v4;
  *(v11 + 24) = v8;
  sub_249F496C4(v2, v3, v4, v8);
  v12 = sub_249F4A278();
  MEMORY[0x24C2087B0](v10);
  v13 = swift_allocError();
  *v14 = v5;
  *(v14 + 8) = v6;
  *(v14 + 16) = v7;
  *(v14 + 24) = v9;
  sub_249F496C4(v5, v6, v7, v9);
  v15 = sub_249F4A278();
  MEMORY[0x24C2087B0](v13);
  v16 = [v12 domain];
  v17 = sub_249F4A438();
  v19 = v18;

  v20 = [v15 domain];
  v21 = sub_249F4A438();
  v23 = v22;

  if (v17 == v21 && v19 == v23)
  {

LABEL_5:
    v25 = [v12 code];
    v26 = [v15 code];

    return v25 == v26;
  }

  v24 = sub_249F4A658();

  if (v24)
  {
    goto LABEL_5;
  }

  return 0;
}

uint64_t sub_249F493C4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 16);
}

uint64_t sub_249F49414@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 24);
}

uint64_t get_enum_tag_for_layout_string_11EDPSecurity21PackageValidatorErrorO(uint64_t a1)
{
  if ((*(a1 + 24) & 7u) <= 4)
  {
    return *(a1 + 24) & 7;
  }

  else
  {
    return (*a1 + 5);
  }
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_249F49494(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 25))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 24);
  if (v3 <= 5)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_249F494DC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 251;
    if (a3 >= 0xFB)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t sub_249F49524(uint64_t result, unsigned int a2)
{
  v2 = a2 - 5;
  if (a2 >= 5)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    LOBYTE(a2) = 5;
    *result = v2;
  }

  *(result + 24) = a2;
  return result;
}

id sub_249F496C4(id result, id a2, void *a3, unsigned __int8 a4)
{
  if (a4 > 1u)
  {
    if (a4 != 2 && a4 != 3)
    {
      if (a4 != 4)
      {
        return result;
      }
    }

LABEL_10:
  }

  if (a4)
  {
    if (a4 == 1)
    {
      goto LABEL_10;
    }
  }

  else
  {

    return result;
  }

  return result;
}

uint64_t sub_249F49760(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t FileMeasurer.__allocating_init(_:)(uint64_t a1)
{
  v2 = swift_allocObject();
  FileMeasurer.init(_:)(a1);
  return v2;
}

uint64_t FileMeasurer.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = sub_249F3E630(&unk_285D1B008);
  return v0;
}

uint64_t sub_249F49850()
{
  result = sub_249F3E630(&unk_285D1AEA0);
  qword_27EF2A638 = result;
  return result;
}

uint64_t sub_249F49878(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 16) = v2;
}

uint64_t sub_249F49910(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 16) = a1;
}

uint64_t FileMeasurer.init(_:)(uint64_t a1)
{
  *(v1 + 16) = sub_249F3E630(&unk_285D1AEC8);
  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 56);
  v6 = (v3 + 63) >> 6;

  for (i = 0; ; i = v10)
  {
    v9 = 0x27EF2A000uLL;
    if (!v5)
    {
      break;
    }

    v10 = i;
LABEL_10:
    v11 = *(*(a1 + 48) + ((v10 << 8) | (4 * __clz(__rbit64(v5)))));
    if (qword_27EF2A408 != -1)
    {
      swift_once();
      v9 = 0x27EF2A000;
    }

    v12 = *(v9 + 1592);
    if (!*(v12 + 16) || (sub_249F4A6C8(), sub_249F4A6E8(), result = sub_249F4A6F8(), v13 = -1 << *(v12 + 32), v14 = result & ~v13, ((*(v12 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0))
    {
LABEL_19:

      sub_249F3ED2C();
      swift_allocError();
      *v16 = v11;
      *(v16 + 8) = 0;
      *(v16 + 16) = 1;
      swift_willThrow();
      v17 = v1;

      return v17;
    }

    v5 &= v5 - 1;
    v15 = ~v13;
    while (*(*(v12 + 48) + 4 * v14) != v11)
    {
      v14 = (v14 + 1) & v15;
      if (((*(v12 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        goto LABEL_19;
      }
    }
  }

  while (1)
  {
    v10 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      swift_beginAccess();
      *(v1 + 16) = a1;

      return v1;
    }

    v5 = *(a1 + 56 + 8 * v10);
    ++i;
    if (v5)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t static FileMeasurer.measureFile(_:)@<X0>(void *a2@<X8>)
{
  type metadata accessor for FileMeasurer();
  inited = swift_initStackObject();
  *(inited + 16) = sub_249F3E630(&unk_285D1B058);
  sub_249F49C48(a2);
}

uint64_t sub_249F49C48@<X0>(void *a2@<X8>)
{
  v4 = v3;
  swift_beginAccess();
  v5 = *(v2 + 16);
  v8 = *(v5 + 56);
  v7 = v5 + 56;
  v6 = v8;
  v9 = 1 << *(*(v2 + 16) + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & v6;
  v46 = (v9 + 63) >> 6;
  v47 = *(v2 + 16);

  v12 = 0;
  v13 = MEMORY[0x277D84F98];
  if (v11)
  {
    goto LABEL_6;
  }

LABEL_7:
  v19 = v4;
  while (1)
  {
    v18 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v18 >= v46)
    {

      return sub_249F3F688(v13, a2);
    }

    v11 = *(v7 + 8 * v18);
    ++v12;
    if (v11)
    {
      while (1)
      {
        v20 = *(*(v47 + 48) + ((v18 << 8) | (4 * __clz(__rbit64(v11)))));
        v48 = 0x3268736168;
        if (v20 != 2)
        {
          if (v20 != 5)
          {
            sub_249F3ED2C();
            swift_allocError();
            *v44 = v20;
            *(v44 + 8) = 0;
            *(v44 + 16) = 1;
            swift_willThrow();
          }

          v48 = 0x3568736168;
        }

        v21 = sub_249F4A318();
        if (v19)
        {
        }

        v23 = v21;
        v24 = v22;
        v25 = sub_249F3ED98(v21, v22, v20);
        v4 = 0;
        v26 = v25;
        v28 = v27;
        sub_249F3DC7C(v23, v24);
        sub_249F40C18(v26, v28);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v30 = sub_249F3E200(v48, 0xE500000000000000);
        v32 = v13[2];
        v33 = (v31 & 1) == 0;
        v34 = __OFADD__(v32, v33);
        v35 = v32 + v33;
        if (v34)
        {
          goto LABEL_29;
        }

        v36 = v31;
        if (v13[3] >= v35)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v42 = v30;
            sub_249F411D0();
            v30 = v42;
          }
        }

        else
        {
          sub_249F40C6C(v35, isUniquelyReferenced_nonNull_native);
          v30 = sub_249F3E200(v48, 0xE500000000000000);
          if ((v36 & 1) != (v37 & 1))
          {
            goto LABEL_31;
          }
        }

        v11 &= v11 - 1;
        if (v36)
        {
          v14 = v30;

          v15 = (v13[7] + 16 * v14);
          v16 = *v15;
          v17 = v15[1];
          *v15 = v26;
          v15[1] = v28;
          sub_249F3DC7C(v16, v17);
          sub_249F3DC7C(v26, v28);
          v12 = v18;
          if (!v11)
          {
            goto LABEL_7;
          }
        }

        else
        {
          v13[(v30 >> 6) + 8] |= 1 << v30;
          v38 = (v13[6] + 16 * v30);
          *v38 = v48;
          v38[1] = 0xE500000000000000;
          v39 = (v13[7] + 16 * v30);
          *v39 = v26;
          v39[1] = v28;
          sub_249F3DC7C(v26, v28);
          v40 = v13[2];
          v34 = __OFADD__(v40, 1);
          v41 = v40 + 1;
          if (v34)
          {
            goto LABEL_30;
          }

          v13[2] = v41;
          v12 = v18;
          if (!v11)
          {
            goto LABEL_7;
          }
        }

LABEL_6:
        v18 = v12;
        v19 = v4;
      }
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  result = sub_249F4A678();
  __break(1u);
  return result;
}

uint64_t FileMeasurer.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_249F4A040@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 16);
}