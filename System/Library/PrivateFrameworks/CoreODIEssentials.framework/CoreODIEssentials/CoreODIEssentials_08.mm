uint64_t sub_1DAFD1528()
{

  return swift_deallocClassInstance();
}

SecCertificateRef sub_1DAFD1584(uint64_t a1, uint64_t a2)
{
  v2 = sub_1DB09CFA4();
  if (v3 >> 60 == 15)
  {
    if (qword_1EE300B90 != -1)
    {
      swift_once();
    }

    v4 = MEMORY[0x1E69E7CC0];
    v5 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
    if (*(v5 + 16))
    {
      v6 = sub_1DAF35210(0x636F766E49504944, 0xEE00736E6F697461);
      if (v7)
      {
        sub_1DAF409DC(*(v5 + 56) + 32 * v6, &v34);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E478, &qword_1DB0A09A0);
        if (swift_dynamicCast())
        {
          v4 = *&v33[0];
        }
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_1DAF72FF4(0, *(v4 + 2) + 1, 1, v4);
    }

    v9 = *(v4 + 2);
    v8 = *(v4 + 3);
    if (v9 >= v8 >> 1)
    {
      v4 = sub_1DAF72FF4((v8 > 1), v9 + 1, 1, v4);
    }

    *(v4 + 2) = v9 + 1;
    v10 = &v4[56 * v9];
    *(v10 + 4) = 0xD000000000000023;
    *(v10 + 5) = 0x80000001DB0C72B0;
    *(v10 + 6) = 0xD000000000000029;
    *(v10 + 7) = 0x80000001DB0C70D0;
    *(v10 + 8) = 0xD00000000000001FLL;
    *(v10 + 9) = 0x80000001DB0C72E0;
    *(v10 + 10) = 392;
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E478, &qword_1DB0A09A0);
    *&v34 = v4;
    sub_1DAF40D20(&v34, v33);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v36 = v5;
    sub_1DAF3B11C(v33, 0x636F766E49504944, 0xEE00736E6F697461, isUniquelyReferenced_nonNull_native);
    v12 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v13 = sub_1DB09D6B4();
    v14 = sub_1DB09D604();
    [v12 initWithDomain:v13 code:-1305 userInfo:v14];

    swift_willThrow();
  }

  else
  {
    v15 = *MEMORY[0x1E695E480];
    v16 = v2;
    v17 = v3;
    v18 = sub_1DB09D004();
    v14 = SecCertificateCreateWithData(v15, v18);

    if (v14)
    {
      sub_1DAF4AC40(v16, v17);
    }

    else
    {
      if (qword_1EE300B90 != -1)
      {
        swift_once();
      }

      v19 = MEMORY[0x1E69E7CC0];
      v20 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
      if (*(v20 + 16))
      {
        v21 = sub_1DAF35210(0x636F766E49504944, 0xEE00736E6F697461);
        if ((v22 & 1) != 0 && (sub_1DAF409DC(*(v20 + 56) + 32 * v21, &v34), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E478, &qword_1DB0A09A0), swift_dynamicCast()))
        {
          v19 = *&v33[0];
        }

        else
        {
          v19 = MEMORY[0x1E69E7CC0];
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = sub_1DAF72FF4(0, *(v19 + 2) + 1, 1, v19);
      }

      v24 = *(v19 + 2);
      v23 = *(v19 + 3);
      v25 = v24 + 1;
      if (v24 >= v23 >> 1)
      {
        v32 = sub_1DAF72FF4((v23 > 1), v24 + 1, 1, v19);
        v25 = v24 + 1;
        v19 = v32;
      }

      *(v19 + 2) = v25;
      v26 = &v19[56 * v24];
      *(v26 + 4) = 0xD000000000000027;
      *(v26 + 5) = 0x80000001DB0C7300;
      *(v26 + 6) = 0xD000000000000029;
      *(v26 + 7) = 0x80000001DB0C70D0;
      *(v26 + 8) = 0xD00000000000001FLL;
      *(v26 + 9) = 0x80000001DB0C72E0;
      *(v26 + 10) = 395;
      v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E478, &qword_1DB0A09A0);
      *&v34 = v19;
      sub_1DAF40D20(&v34, v33);
      v27 = swift_isUniquelyReferenced_nonNull_native();
      v36 = v20;
      sub_1DAF3B11C(v33, 0x636F766E49504944, 0xEE00736E6F697461, v27);
      v14 = v36;
      v28 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
      v29 = sub_1DB09D6B4();
      v30 = sub_1DB09D604();
      [v28 initWithDomain:v29 code:-1307 userInfo:v30];

      swift_willThrow();
      sub_1DAF4AC40(v16, v17);
    }
  }

  return v14;
}

uint64_t sub_1DAFD1B20(__SecKey *a1)
{
  error[1] = *MEMORY[0x1E69E9840];
  error[0] = 0;
  v1 = SecKeyCopyExternalRepresentation(a1, error);
  if (v1)
  {
    v2 = v1;
    v3 = sub_1DB09D034();
  }

  else
  {
    v6 = 0;
    v4 = sub_1DAFCF218(error[0], 0xD00000000000002DLL, 0x80000001DB0C7280, &v6);
    if (qword_1EE301DE8 != -1)
    {
      swift_once();
    }

    sub_1DAF4B4C0(v4, 0, 0xE000000000000000, qword_1EE30A148);

    return 0;
  }

  return v3;
}

SecKeyRef sub_1DAFD1C2C(uint64_t a1, __SecAccessControl *a2, SecKeyRef a3)
{
  v82 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (a1 == 1)
    {
      if (qword_1EE301DE8 != -1)
      {
        swift_once();
      }

      v5 = qword_1EE30A148;
      v6 = sub_1DB09DB64();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0EEE0, &qword_1DB0A21E0);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_1DB0A0500;
      v8 = sub_1DB09D6C4();
      v10 = v9;
      *(v7 + 56) = MEMORY[0x1E69E6158];
      v11 = sub_1DAF4DC24();
      v12 = MEMORY[0x1E69E6530];
      v13 = MEMORY[0x1E69E65A8];
      *(v7 + 32) = v8;
      *(v7 + 40) = v10;
      *(v7 + 96) = v12;
      *(v7 + 104) = v13;
      *(v7 + 64) = v11;
      *(v7 + 72) = 2048;
      sub_1DB09D444("coreidvd: generateKeyAsym key algorithm %{public}@-%{public}d not supported", 75, 2, &dword_1DAF16000, v5, v6, v7);

      sub_1DB09DE44();

      strcpy(&v80, "key algorithm ");
      HIBYTE(v80) = -18;
      v14 = sub_1DB09D6C4();
      MEMORY[0x1E127FE90](v14);

      MEMORY[0x1E127FE90](45, 0xE100000000000000);
      *&v79[0] = 2048;
      v15 = sub_1DB09E1D4();
      MEMORY[0x1E127FE90](v15);

      MEMORY[0x1E127FE90](0x70757320746F6E20, 0xEE00646574726F70);
      v16 = v80;
      if (qword_1EE300B90 != -1)
      {
        swift_once();
      }

      v17 = MEMORY[0x1E69E7CC0];
      v18 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
      v19 = *(v18 + 2);

      v76 = *(&v80 + 1);
      if (v19 && (v20 = sub_1DAF35210(0x636F766E49504944, 0xEE00736E6F697461), (v21 & 1) != 0) && (sub_1DAF409DC(*(v18 + 7) + 32 * v20, &v80), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E478, &qword_1DB0A09A0), swift_dynamicCast()))
      {
        v22 = v16;
        v17 = *&v79[0];
      }

      else
      {
        v22 = v16;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v17 = sub_1DAF72FF4(0, *(v17 + 2) + 1, 1, v17);
      }

      v56 = *(v17 + 2);
      v55 = *(v17 + 3);
      if (v56 >= v55 >> 1)
      {
        v17 = sub_1DAF72FF4((v55 > 1), v56 + 1, 1, v17);
      }

      *(v17 + 2) = v56 + 1;
      v57 = &v17[56 * v56];
      *(v57 + 4) = v22;
      *(v57 + 5) = v76;
      *(v57 + 6) = 0xD000000000000029;
      *(v57 + 7) = 0x80000001DB0C70D0;
      *(v57 + 8) = 0xD000000000000026;
      *(v57 + 9) = 0x80000001DB0C7170;
      *(v57 + 10) = 66;
      v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E478, &qword_1DB0A09A0);
      *&v80 = v17;
      sub_1DAF40D20(&v80, v79);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      error = v18;
      sub_1DAF3B11C(v79, 0x636F766E49504944, 0xEE00736E6F697461, isUniquelyReferenced_nonNull_native);
      a3 = v18;
      v59 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
      v60 = sub_1DB09D6B4();
      v61 = sub_1DB09D604();
      [v59 initWithDomain:v60 code:-5211 userInfo:v61];

      goto LABEL_42;
    }

    v23 = 1;
  }

  else
  {
    v23 = 0;
  }

  v24 = [objc_opt_self() getSharedInstance];
  [v24 hasPKASupport];

  v25 = sub_1DB09D6C4();
  v27 = v26;
  error = 0;
  v28 = a2;
  if (!a2)
  {
    v28 = SecAccessControlCreateWithFlags(*MEMORY[0x1E695E480], *MEMORY[0x1E697ABE8], 0x40000000uLL, &error);
    if (!v28)
    {

      LOWORD(v80) = 200;
      sub_1DAFCF218(error, 0xD000000000000036, 0x80000001DB0C71A0, &v80);
LABEL_42:
      swift_willThrow();
      return a3;
    }
  }

  v75 = v28;
  v77 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0EB60, &qword_1DB0A9E50);
  result = swift_initStackObject();
  *(result + 1) = xmmword_1DB0AB780;
  v30 = *MEMORY[0x1E697AD18];
  *(result + 4) = *MEMORY[0x1E697AD18];
  v31 = MEMORY[0x1E69E6370];
  v32 = MEMORY[0x1E697AD68];
  *(result + 40) = 0;
  v33 = *v32;
  *(result + 8) = v31;
  *(result + 9) = v33;
  *(result + 13) = MEMORY[0x1E69E6158];
  *(result + 10) = v25;
  *(result + 11) = v27;
  v34 = *MEMORY[0x1E697B200];
  if (*MEMORY[0x1E697B200])
  {
    *(result + 14) = v34;
    *(result + 120) = v23;
    v35 = *MEMORY[0x1E697AD50];
    *(result + 18) = v31;
    *(result + 19) = v35;
    v36 = MEMORY[0x1E69E6530];
    *(result + 20) = 256;
    v37 = *MEMORY[0x1E697AEC8];
    v38 = MEMORY[0x1E697AED0];
    *(result + 23) = v36;
    *(result + 24) = v37;
    v39 = MEMORY[0x1E697AED8];
    if ((a3 & 1) == 0)
    {
      v39 = v38;
    }

    v40 = *v39;
    v41 = result;
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0EE78, &unk_1DB0ACE70);
    v41[25] = v40;
    v43 = *MEMORY[0x1E697ABC8];
    v41[28] = v42;
    v41[29] = v43;
    type metadata accessor for SecAccessControl(0);
    v41[33] = v44;
    v41[30] = v75;
    v45 = v40;
    v46 = v30;
    v47 = v33;
    v48 = v35;
    v49 = v37;
    v50 = v43;
    v51 = v34;
    v52 = v75;
    v53 = v77;
    sub_1DAF3E794(v41);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0E288, &qword_1DB0A0218);
    swift_arrayDestroy();
    sub_1DAFD26EC();
    sub_1DAFD2738(&qword_1EE3018A8, sub_1DAFD26EC, MEMORY[0x1E69E81B8]);
    v54 = sub_1DB09D604();

    a3 = SecKeyCreateRandomKey(v54, &error);

    if (a3)
    {
      if (!SecKeyCopyPublicKey(a3))
      {
        if (qword_1EE301DE8 != -1)
        {
          swift_once();
        }

        v62 = qword_1EE30A148;
        v63 = sub_1DB09DB64();
        sub_1DB09D444("coreidvd: generateKeyAsym SecKeyCopyPublicKey failed.", 53, 2, &dword_1DAF16000, v62, v63, MEMORY[0x1E69E7CC0]);
        if (qword_1EE300B90 != -1)
        {
          swift_once();
        }

        v64 = MEMORY[0x1E69E7CC0];
        v65 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
        if (*(v65 + 16))
        {
          v66 = sub_1DAF35210(0x636F766E49504944, 0xEE00736E6F697461);
          if (v67)
          {
            sub_1DAF409DC(*(v65 + 56) + 32 * v66, &v80);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E478, &qword_1DB0A09A0);
            if (swift_dynamicCast())
            {
              v64 = *&v79[0];
            }
          }
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v64 = sub_1DAF72FF4(0, *(v64 + 2) + 1, 1, v64);
        }

        v69 = *(v64 + 2);
        v68 = *(v64 + 3);
        if (v69 >= v68 >> 1)
        {
          v64 = sub_1DAF72FF4((v68 > 1), v69 + 1, 1, v64);
        }

        *(v64 + 2) = v69 + 1;
        v70 = &v64[56 * v69];
        *(v70 + 4) = 0xD00000000000002ALL;
        *(v70 + 5) = 0x80000001DB0C7250;
        *(v70 + 6) = 0xD000000000000029;
        *(v70 + 7) = 0x80000001DB0C70D0;
        *(v70 + 8) = 0xD000000000000026;
        *(v70 + 9) = 0x80000001DB0C7170;
        *(v70 + 10) = 91;
        v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E478, &qword_1DB0A09A0);
        *&v80 = v64;
        sub_1DAF40D20(&v80, v79);
        v71 = swift_isUniquelyReferenced_nonNull_native();
        sub_1DAF3B11C(v79, 0x636F766E49504944, 0xEE00736E6F697461, v71);
        v72 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
        v73 = sub_1DB09D6B4();
        v74 = sub_1DB09D604();
        [v72 initWithDomain:v73 code:-5210 userInfo:v74];

        swift_willThrow();
      }
    }

    else
    {
      LOWORD(v80) = 197;
      sub_1DAFCF218(error, 0xD00000000000002CLL, 0x80000001DB0C71E0, &v80);
      swift_willThrow();
    }

    return a3;
  }

  __break(1u);
  return result;
}

unint64_t sub_1DAFD26EC()
{
  result = qword_1EE3018B0;
  if (!qword_1EE3018B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE3018B0);
  }

  return result;
}

uint64_t sub_1DAFD2738(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1DAFD2788(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 586))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DAFD27D0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 584) = 0;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 586) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 586) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1DAFD28C4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 464))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1DAFD2920(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 456) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 464) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 464) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

id sub_1DAFD2A28(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  if (v3)
  {
    sub_1DAF4062C(0, &qword_1ECC0E828, 0x1E69E58C0);
    v4 = sub_1DB09D604();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t sub_1DAFD2AC4()
{
  type metadata accessor for InUseAssertionManager(0);
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v0 + 144) = 0;
  *(v0 + 112) = 0u;
  *(v0 + 128) = 0u;
  result = sub_1DB09D4A4();
  qword_1ECC0EE80 = v0;
  return result;
}

void sub_1DAFD2B48(uint64_t a1, uint64_t a2)
{
  if (v2[15] || (v6 = v2[17]) != 0 && (v2[16] == a1 ? (v7 = v6 == a2) : (v7 = 0), !v7 && (v8 = a1, v9 = a2, v10 = sub_1DB09E254(), a2 = v9, v11 = v10, a1 = v8, (v11 & 1) == 0)))
  {
    oslog = sub_1DB09D494();
    v3 = sub_1DB09DB74();
    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_1DAF16000, oslog, v3, "InUseAssertion requestInUse requested with mismatched bundleIdentifier", v4, 2u);
      MEMORY[0x1E1281810](v4, -1, -1);
    }

    v5 = oslog;
  }

  else
  {
    v12 = v2[14];
    v13 = __OFADD__(v12, 1);
    v14 = v12 + 1;
    if (v13)
    {
      __break(1u);
      return;
    }

    v2[14] = v14;
    if (v2[18])
    {
      return;
    }

    v15 = a1;
    v16 = a2;

    v17 = v2;
    v18 = sub_1DB09D494();
    v19 = sub_1DB09DB54();
    v20 = v16;

    if (os_log_type_enabled(v18, v19))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v28 = v22;
      *v21 = 136315138;
      *(v21 + 4) = sub_1DB015E84(v15, v20, &v28);
      _os_log_impl(&dword_1DAF16000, v18, v19, "Taking InUseAssertion for %s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v22);
      MEMORY[0x1E1281810](v22, -1, -1);
      MEMORY[0x1E1281810](v21, -1, -1);
    }

    v17[16] = v15;
    v17[17] = v20;

    v23 = objc_opt_self();
    v24 = sub_1DB09D6B4();
    v25 = sub_1DB09D6B4();
    v26 = [v23 newAssertionForBundleIdentifier:v24 withReason:v25 level:1];

    v5 = v17[18];
    v17[18] = v26;
  }
}

void sub_1DAFD2DF0(void *a1)
{
  if (v1[17])
  {
    goto LABEL_2;
  }

  if (!v1[15])
  {
    goto LABEL_24;
  }

  v5 = a1;
  v6 = [a1 bundleIdentifier];
  if (v6)
  {
    v7 = v6;
    v8 = sub_1DB09D6C4();
    v10 = v9;

    v11 = v1[15];
    if (!v11)
    {
LABEL_17:
      v14 = 0;
      v16 = 0;
      if (v10)
      {
LABEL_18:
        if (v16)
        {
          if (v8 == v14 && v10 == v16)
          {

            a1 = v5;
            goto LABEL_24;
          }

          v17 = sub_1DB09E254();

          a1 = v5;
          if (v17)
          {
            goto LABEL_24;
          }

LABEL_2:
          oslog = sub_1DB09D494();
          v2 = sub_1DB09DB74();
          if (os_log_type_enabled(oslog, v2))
          {
            v3 = swift_slowAlloc();
            *v3 = 0;
            _os_log_impl(&dword_1DAF16000, oslog, v2, "InUseAssertion requestInUse requested with mismatched bundle", v3, 2u);
            MEMORY[0x1E1281810](v3, -1, -1);
          }

          v4 = oslog;
          goto LABEL_5;
        }

LABEL_22:

        goto LABEL_2;
      }

      goto LABEL_15;
    }
  }

  else
  {
    v8 = 0;
    v10 = 0;
    v11 = v1[15];
    if (!v11)
    {
      goto LABEL_17;
    }
  }

  v12 = [v11 bundleIdentifier];
  if (!v12)
  {
    goto LABEL_17;
  }

  v13 = v12;
  v14 = sub_1DB09D6C4();
  v16 = v15;

  if (v10)
  {
    goto LABEL_18;
  }

LABEL_15:
  a1 = v5;
  if (v16)
  {
    goto LABEL_22;
  }

LABEL_24:
  v18 = v1[14];
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    __break(1u);
    return;
  }

  v1[14] = v20;
  if (v1[18])
  {
    return;
  }

  v21 = a1;
  v22 = v1;
  v23 = sub_1DB09D494();
  v24 = sub_1DB09DB54();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v38 = v26;
    *v25 = 136315138;
    v27 = [v21 description];
    v28 = sub_1DB09D6C4();
    v30 = v29;

    v31 = sub_1DB015E84(v28, v30, &v38);

    *(v25 + 4) = v31;
    _os_log_impl(&dword_1DAF16000, v23, v24, "Taking InUseAssertion for %s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v26);
    MEMORY[0x1E1281810](v26, -1, -1);
    MEMORY[0x1E1281810](v25, -1, -1);
  }

  v32 = v22[15];
  v22[15] = v21;
  v33 = v21;

  v34 = objc_opt_self();
  v35 = sub_1DB09D6B4();
  v36 = [v34 newAssertionForBundle:v33 withReason:v35 level:1];

  v4 = v22[18];
  v22[18] = v36;
LABEL_5:
}

void sub_1DAFD3184(uint64_t a1)
{
  v2 = v1;
  if (!v1[18] || v1[14] <= 0)
  {
    v3 = sub_1DB09D494();
    v4 = sub_1DB09DB74();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_1DAF16000, v3, v4, "InUseAssertion release requested when none held", v5, 2u);
      MEMORY[0x1E1281810](v5, -1, -1);
    }
  }

  v6 = v2[14];
  v7 = __OFSUB__(v6, 1);
  v8 = v6 - 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    v2[14] = v8;
    if (v8 <= 0)
    {
      v9 = v2[18];
      if (v9)
      {
        [v9 invalidate];
      }

      v10 = sub_1DB09D494();
      v11 = sub_1DB09DB54();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        *v12 = 0;
        _os_log_impl(&dword_1DAF16000, v10, v11, "Releasing InUseAssertion", v12, 2u);
        MEMORY[0x1E1281810](v12, -1, -1);
      }

      v13 = v2[18];
      v2[18] = 0;

      v2[16] = 0;
      v2[17] = 0;

      v14 = v2[15];
      v2[15] = 0;

      v2[14] = 0;
    }
  }
}

uint64_t sub_1DAFD3308()
{

  v1 = OBJC_IVAR____TtC17CoreODIEssentialsP33_62B399B2DD34B45DBAE8CA5FF1D3DB2321InUseAssertionManager_sharedLogger;
  v2 = sub_1DB09D4B4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_defaultActor_destroy();

  return swift_defaultActor_deallocate();
}

double sub_1DAFD3398()
{
  result = *MEMORY[0x1E6985C88] * 3.0;
  *&qword_1ECC0EE88 = result;
  return result;
}

double sub_1DAFD33B8()
{
  result = *MEMORY[0x1E6985C88];
  qword_1ECC0EE90 = *MEMORY[0x1E6985C88];
  return result;
}

uint64_t sub_1DAFD33D0(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EFF0, &unk_1DB0A4678);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v17 - v5;
  v7 = *(v1 + 112);
  *(v1 + 112) = MEMORY[0x1E69E7CC0];
  v8 = *(v7 + 16);
  if (v8)
  {
    v11 = *(v4 + 16);
    v9 = v4 + 16;
    v10 = v11;
    v12 = (*(v9 + 64) + 32) & ~*(v9 + 64);
    v17[0] = v7;
    v13 = v7 + v12;
    v14 = *(v9 + 56);
    do
    {
      v10(v6, v13, v3);
      v17[1] = a1;
      v15 = a1;
      sub_1DB09D9A4();
      (*(v9 - 8))(v6, v3);
      v13 += v14;
      --v8;
    }

    while (v8);
  }
}

uint64_t sub_1DAFD3560(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EFF0, &unk_1DB0A4678);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v17 - v5;
  v7 = *(v1 + 112);
  *(v1 + 112) = MEMORY[0x1E69E7CC0];
  v8 = *(v7 + 16);
  if (v8)
  {
    v11 = *(v4 + 16);
    v9 = v4 + 16;
    v10 = v11;
    v12 = (*(v9 + 64) + 32) & ~*(v9 + 64);
    v17[0] = v7;
    v13 = v7 + v12;
    v14 = *(v9 + 56);
    do
    {
      v10(v6, v13, v3);
      v17[1] = a1;
      v15 = a1;
      sub_1DB09D9B4();
      (*(v9 - 8))(v6, v3);
      v13 += v14;
      --v8;
    }

    while (v8);
  }
}

uint64_t sub_1DAFD36EC()
{

  swift_defaultActor_destroy();

  return swift_defaultActor_deallocate();
}

uint64_t ODILocationHelper.__allocating_init(authBundle:authBundleIdentifier:context:analyticsManager:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_allocObject();
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1DAFD37FC;

  return ODILocationHelper.init(authBundle:authBundleIdentifier:context:analyticsManager:)(a1, a2, a3, a4, a5);
}

uint64_t sub_1DAFD37FC(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t ODILocationHelper.init(authBundle:authBundleIdentifier:context:analyticsManager:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[28] = a5;
  v6[29] = v5;
  v6[26] = a3;
  v6[27] = a4;
  v6[24] = a1;
  v6[25] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAD0, &qword_1DB0AD520);
  v6[30] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0EEA0, &qword_1DB0AD528);
  v6[31] = swift_task_alloc();
  v7 = sub_1DB09D4D4();
  v6[32] = v7;
  v6[33] = *(v7 - 8);
  v6[34] = swift_task_alloc();
  v8 = sub_1DB09DBB4();
  v6[35] = v8;
  v6[36] = *(v8 - 8);
  v6[37] = swift_task_alloc();
  v6[38] = sub_1DB09DBA4();
  v6[39] = swift_task_alloc();
  sub_1DB09D4F4();
  v6[40] = swift_task_alloc();
  v9 = type metadata accessor for ODISignpost(0);
  v6[41] = v9;
  v6[42] = *(v9 - 8);
  v6[43] = swift_task_alloc();
  v6[44] = swift_task_alloc();
  v6[45] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DAFD3B5C, 0, 0);
}

uint64_t sub_1DAFD3B5C()
{
  v46 = v0;
  v1 = *(v0 + 328);
  v2 = *(v0 + 336);
  v3 = *(v0 + 232);
  swift_defaultActor_initialize();
  *(v3 + 112) = xmmword_1DB0AD500;
  *(v3 + 128) = 0;
  *(v3 + 136) = 0;
  v43 = (v3 + 136);
  *(v3 + 200) = 0;
  *(v3 + 144) = 0;
  *(v3 + 204) = 1;
  type metadata accessor for ODILocationHelper.ContinuationsActor();
  v4 = swift_allocObject();
  swift_defaultActor_initialize();
  v5 = MEMORY[0x1E69E7CC0];
  *(v4 + 112) = MEMORY[0x1E69E7CC0];
  *(v3 + 208) = v4;
  *(v3 + 216) = 0;
  v6 = OBJC_IVAR____TtC17CoreODIEssentials17ODILocationHelper_locationRequestSignpost;
  v7 = *(v2 + 56);
  *(v0 + 368) = v7;
  *(v0 + 376) = (v2 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v7(v3 + v6, 1, 1, v1);
  if (qword_1ECC0E008 != -1)
  {
    swift_once();
  }

  v8 = *(v0 + 352);
  v9 = *(v0 + 328);
  v11 = qword_1ECC25A78;
  v10 = unk_1ECC25A80;
  v12 = byte_1ECC25A88;
  v13 = qword_1ECC25A90;
  v14 = byte_1ECC25A98;
  *(v8 + 32) = "enableTelemetry=YES";
  *(v8 + 40) = 19;
  *(v8 + 48) = 2;
  *v8 = v11;
  *(v8 + 8) = v10;
  *(v8 + 16) = v12;
  *(v8 + 24) = v13;
  v15 = *(v9 + 28);
  v16 = v13;
  sub_1DB09D474();
  v17 = sub_1DB09DC14();
  if (v14 == 1)
  {
    sub_1DB09D454(v17, &dword_1DAF16000, v16, v11, v10, v12, v8 + v15, "enableTelemetry=YES", 19, 2, v5);
  }

  else
  {
    sub_1DB09D464();
  }

  v18 = *(v0 + 232);
  v19 = *(v0 + 216);
  v20 = *(v0 + 192);
  sub_1DAF5F604(*(v0 + 352), *(v0 + 360));
  sub_1DAF3523C(v19 + 16, v18 + 160);
  sub_1DAF3523C(v18 + 160, v0 + 16);
  v21 = *(v0 + 40);
  v22 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v21);
  v44 = 0;
  v45 = 0xE000000000000000;
  sub_1DB09DE44();
  MEMORY[0x1E127FE90](0xD000000000000023, 0x80000001DB0C7330);
  if (v20)
  {
    v23 = [*(v0 + 192) description];
    v24 = sub_1DB09D6C4();
    v26 = v25;
  }

  else
  {
    v24 = 7104878;
    v26 = 0xE300000000000000;
  }

  v27 = *(v0 + 288);
  v39 = *(v0 + 296);
  v40 = *(v0 + 280);
  v41 = *(v0 + 224);
  v42 = *(v0 + 232);
  v28 = *(v0 + 200);
  v29 = *(v0 + 208);
  MEMORY[0x1E127FE90](v24, v26);

  MEMORY[0x1E127FE90](0xD000000000000018, 0x80000001DB0C7360);
  if (v29)
  {
    v30 = v28;
  }

  else
  {
    v30 = 7104878;
  }

  if (v29)
  {
    v31 = v29;
  }

  else
  {
    v31 = 0xE300000000000000;
  }

  MEMORY[0x1E127FE90](v30, v31);

  MEMORY[0x1E127FE90](41, 0xE100000000000000);
  v32 = v44;
  LOBYTE(v44) = 4;
  (*(v22 + 16))(v32, v45, &v44, v21, v22);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  *(v0 + 384) = sub_1DAF4062C(0, &qword_1EE3018E0, 0x1E69E9610);
  sub_1DB09D4E4();
  *(v0 + 184) = MEMORY[0x1E69E7CC0];
  sub_1DAFD88B0(&qword_1EE3018F0, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EEB0, &unk_1DB0A4ED0);
  sub_1DAF75F50(&qword_1EE301918, &unk_1ECC0EEB0, &unk_1DB0A4ED0);
  sub_1DB09DCF4();
  (*(v27 + 104))(v39, *MEMORY[0x1E69E8090], v40);
  v33 = sub_1DB09DBE4();
  *(v0 + 392) = v33;
  v42[19] = v33;
  sub_1DAF3523C(v19 + 16, v0 + 56);
  objc_allocWithZone(type metadata accessor for ODILocationHelper.LocationManagerDelegate(0));
  v34 = v33;

  v35 = sub_1DAFD7E38((v0 + 56), v41);
  v42[29] = v35;
  v36 = *v43;
  *v43 = v35;
  v37 = v35;

  v42[28] = v41;

  return MEMORY[0x1EEE6DFA0](sub_1DAFD4094, v42, 0);
}

uint64_t sub_1DAFD4094()
{
  v26 = v0;
  v1 = v0[26];
  if (v1)
  {
    v2 = v0[29];
    v3 = v0[25];
    v4 = v2[23];
    v5 = v2[24];
    __swift_project_boxed_opaque_existential_1(v2 + 20, v4);
    sub_1DB09DE44();

    v24 = 0xD000000000000004;
    v25 = 0x80000001DB0C7480;
    MEMORY[0x1E127FE90](v3, v1);
    (*(v5 + 16))(0xD000000000000030, 0x80000001DB0C7480, &v24, v4, v5);

    if (qword_1ECC0DFE8 != -1)
    {
      swift_once();
    }

    v6 = qword_1ECC0EE80;
    v0[50] = qword_1ECC0EE80;
    v7 = sub_1DAFD4464;
LABEL_9:

    return MEMORY[0x1EEE6DFA0](v7, v6, 0);
  }

  v8 = v0[24];
  if (v8)
  {
    v9 = v0[29];
    v10 = v9[23];
    v11 = v9[24];
    __swift_project_boxed_opaque_existential_1(v9 + 20, v10);
    v12 = v8;
    sub_1DB09DE44();

    v24 = 0xD000000000000004;
    v25 = 0x80000001DB0C7400;
    v13 = [v12 description];
    v14 = sub_1DB09D6C4();
    v16 = v15;

    MEMORY[0x1E127FE90](v14, v16);

    (*(v11 + 16))(0xD000000000000025, 0x80000001DB0C7400, &v24, v10, v11);

    if (qword_1ECC0DFE8 != -1)
    {
      swift_once();
    }

    v6 = qword_1ECC0EE80;
    v0[51] = qword_1ECC0EE80;
    v7 = sub_1DAFD47F4;
    goto LABEL_9;
  }

  v17 = v0[49];
  v18 = v0[29];
  v19 = v18[23];
  v20 = v18[24];
  __swift_project_boxed_opaque_existential_1(v18 + 20, v19);
  LOBYTE(v24) = 4;
  (*(v20 + 32))(0xD000000000000050, 0x80000001DB0C73A0, &v24, v19, v20);

  sub_1DB09DC04();
  sub_1DB09D464();

  sub_1DAF60868(v0[45]);

  v21 = v0[1];
  v22 = v0[29];

  return v21(v22);
}

uint64_t sub_1DAFD4464()
{
  sub_1DAFD2B48(*(v0 + 200), *(v0 + 208));
  sub_1DAFD88B0(&qword_1ECC0EEC0, type metadata accessor for ODILocationHelper, &protocol conformance descriptor for ODILocationHelper);
  swift_getObjectType();
  v2 = sub_1DB09D984();

  return MEMORY[0x1EEE6DFA0](sub_1DAFD4530, v2, v1);
}

uint64_t sub_1DAFD4530()
{
  v1 = *(v0 + 392);
  v2 = *(v0 + 232);
  *(v2 + 128) = 1;
  v3 = *(v2 + 232);
  v4 = objc_allocWithZone(MEMORY[0x1E695FBE8]);
  v5 = v1;
  v6 = v3;
  v7 = sub_1DB09D6B4();
  v8 = [v4 initWithEffectiveBundleIdentifier:v7 delegate:v6 onQueue:v5];

  if (!v8)
  {
    __break(1u);
    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  *(v0 + 416) = v8;
  v12 = *(v0 + 232);
  v13 = *(v12 + 120);
  *(v12 + 120) = v8;
  v14 = v8;

  v15 = *(v12 + 232);

  sub_1DAFD8918(v16, v14, v15);

  LODWORD(v12) = [v14 locationServicesAvailable];
  if (v12)
  {
    v18 = *(v0 + 264);
    v17 = *(v0 + 272);
    v19 = *(v0 + 256);
    (*(v18 + 104))(v17, *MEMORY[0x1E69E7F98], v19);
    *(v0 + 424) = sub_1DB09DBF4();
    (*(v18 + 8))(v17, v19);
    v9 = sub_1DAFD4BB4;
    v10 = 0;
    v11 = 0;

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  v20 = *(v0 + 192);
  sub_1DB09DC04();
  sub_1DB09D464();

  sub_1DAF60868(*(v0 + 360));

  v21 = *(v0 + 8);
  v22 = *(v0 + 232);

  return v21(v22);
}

uint64_t sub_1DAFD47F4()
{
  sub_1DAFD2DF0(*(v0 + 192));
  sub_1DAFD88B0(&qword_1ECC0EEC0, type metadata accessor for ODILocationHelper, &protocol conformance descriptor for ODILocationHelper);
  swift_getObjectType();
  v2 = sub_1DB09D984();

  return MEMORY[0x1EEE6DFA0](sub_1DAFD48C0, v2, v1);
}

uint64_t sub_1DAFD48C0()
{
  v1 = *(v0 + 392);
  v2 = *(v0 + 232);
  v3 = *(v0 + 192);
  *(v2 + 128) = 1;
  v4 = [v3 bundlePath];
  sub_1DB09D6C4();

  v5 = *(v2 + 232);
  v6 = objc_allocWithZone(MEMORY[0x1E695FBE8]);
  v7 = v1;
  v8 = v5;
  v9 = sub_1DB09D6B4();

  v10 = [v6 initWithEffectiveBundlePath:v9 delegate:v8 onQueue:v7];

  if (!v10)
  {
    __break(1u);
    return MEMORY[0x1EEE6DFA0](v11, v12, v13);
  }

  *(v0 + 416) = v10;
  v14 = *(v0 + 232);
  v15 = *(v14 + 120);
  *(v14 + 120) = v10;
  v16 = v10;

  v17 = *(v14 + 232);

  sub_1DAFD8918(v18, v16, v17);

  LODWORD(v14) = [v16 locationServicesAvailable];
  if (v14)
  {
    v20 = *(v0 + 264);
    v19 = *(v0 + 272);
    v21 = *(v0 + 256);
    (*(v20 + 104))(v19, *MEMORY[0x1E69E7F98], v21);
    *(v0 + 424) = sub_1DB09DBF4();
    (*(v20 + 8))(v19, v21);
    v11 = sub_1DAFD4BB4;
    v12 = 0;
    v13 = 0;

    return MEMORY[0x1EEE6DFA0](v11, v12, v13);
  }

  v22 = *(v0 + 192);
  sub_1DB09DC04();
  sub_1DB09D464();

  sub_1DAF60868(*(v0 + 360));

  v23 = *(v0 + 8);
  v24 = *(v0 + 232);

  return v23(v24);
}

uint64_t sub_1DAFD4BB4()
{
  v1 = swift_task_alloc();
  v0[27].i64[0] = v1;
  v1[1] = vextq_s8(v0[26], v0[26], 8uLL);
  v2 = swift_task_alloc();
  v0[27].i64[1] = v2;
  type metadata accessor for CLAuthorizationStatus(0);
  *v2 = v0;
  v2[1] = sub_1DAFD4CB4;

  return MEMORY[0x1EEE6DDE0](&v0[28], 0, 0, 0xD000000000000015, 0x80000001DB0C7430, sub_1DAFD8A48, v1, v3);
}

uint64_t sub_1DAFD4CB4()
{

  return MEMORY[0x1EEE6DFA0](sub_1DAFD4DCC, 0, 0);
}

uint64_t sub_1DAFD4DCC()
{
  *(v0 + 456) = *(v0 + 448);
  sub_1DAFD88B0(&qword_1ECC0EEC0, type metadata accessor for ODILocationHelper, &protocol conformance descriptor for ODILocationHelper);
  swift_getObjectType();
  v2 = sub_1DB09D984();

  return MEMORY[0x1EEE6DFA0](sub_1DAFD4E90, v2, v1);
}

uint64_t sub_1DAFD4E90()
{
  v35 = v0;
  v1 = *(v0 + 232);
  *(v1 + 200) = *(v0 + 456);
  *(v1 + 204) = 0;
  sub_1DAF3523C(v1 + 160, v0 + 96);
  v2 = *(v0 + 120);
  v3 = *(v0 + 128);
  __swift_project_boxed_opaque_existential_1((v0 + 96), v2);
  sub_1DB09DE44();

  v33 = 0xD00000000000002CLL;
  v34 = 0x80000001DB0C7450;
  if (*(v1 + 204))
  {
    v4 = 0xEF74657920646576;
    v5 = 0x6972726120746F6ELL;
  }

  else
  {
    *(v0 + 452) = *(*(v0 + 232) + 200);
    sub_1DAFD8A50();
    v5 = sub_1DB09DCD4();
    v4 = v6;
  }

  MEMORY[0x1E127FE90](v5, v4);

  v7 = v33;
  LOBYTE(v33) = 4;
  (*(v3 + 16))(v7, v34, &v33, v2, v3);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 96));
  if (qword_1ECC0DFF8 != -1)
  {
    swift_once();
  }

  [*(v0 + 416) setDistanceFilter_];
  if (qword_1ECC0DFF0 != -1)
  {
    swift_once();
  }

  [*(v0 + 416) setDesiredAccuracy_];
  if (qword_1ECC0E010 != -1)
  {
    swift_once();
  }

  v8 = *(v0 + 344);
  v9 = *(v0 + 328);
  v11 = qword_1ECC25AA0;
  v10 = *algn_1ECC25AA8;
  v12 = byte_1ECC25AB0;
  v13 = qword_1ECC25AB8;
  v14 = byte_1ECC25AC0;
  *(v8 + 32) = "enableTelemetry=YES";
  *(v8 + 40) = 19;
  *(v8 + 48) = 2;
  *v8 = v11;
  *(v8 + 8) = v10;
  *(v8 + 16) = v12;
  *(v8 + 24) = v13;
  v15 = *(v9 + 28);
  v16 = v13;
  sub_1DB09D474();
  v17 = sub_1DB09DC14();
  if (v14 == 1)
  {
    sub_1DB09D454(v17, &dword_1DAF16000, v16, v11, v10, v12, v8 + v15, "enableTelemetry=YES", 19, 2, MEMORY[0x1E69E7CC0]);
  }

  else
  {
    sub_1DB09D464();
  }

  v18 = *(v0 + 416);
  v19 = *(v0 + 392);
  v20 = *(v0 + 368);
  v21 = *(v0 + 328);
  v22 = *(v0 + 240);
  v23 = *(v0 + 248);
  v24 = *(v0 + 232);
  sub_1DAF5F604(*(v0 + 344), v23);
  v20(v23, 0, 1, v21);
  v25 = OBJC_IVAR____TtC17CoreODIEssentials17ODILocationHelper_locationRequestSignpost;
  swift_beginAccess();
  sub_1DAF63488(v23, v24 + v25, &qword_1ECC0EEA0, &qword_1DB0AD528);
  swift_endAccess();
  [v18 requestLocation];
  v26 = *(v24 + 232);
  sub_1DB09D134();

  v27 = sub_1DB09D154();
  (*(*(v27 - 8) + 56))(v22, 0, 1, v27);
  v28 = OBJC_IVAR____TtCC17CoreODIEssentials17ODILocationHelper23LocationManagerDelegate_locationFetchRequestedAt;
  swift_beginAccess();
  sub_1DAF63488(v22, v26 + v28, &unk_1ECC0EAD0, &qword_1DB0AD520);
  swift_endAccess();
  v29 = *(v0 + 192);

  sub_1DB09DC04();
  sub_1DB09D464();

  sub_1DAF60868(*(v0 + 360));

  v30 = *(v0 + 8);
  v31 = *(v0 + 232);

  return v30(v31);
}

Swift::Bool __swiftcall ODILocationHelper.gpsLocationEnabled()()
{
  if (*(v0 + 204))
  {
    LOBYTE(v1) = 0;
  }

  else
  {
    v2 = *(v0 + 200);
    v1 = [objc_opt_self() locationServicesEnabled];
    if (v1)
    {
      LOBYTE(v1) = dword_1F56CA860 == v2 || unk_1F56CA864 == v2;
    }
  }

  return v1;
}

uint64_t ODILocationHelper.deinit()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAD0, &qword_1DB0AD520);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &aBlock[-1] - v3;
  v5 = sub_1DB09D154();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &aBlock[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &aBlock[-1] - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0ECE0, &unk_1DB0A21D0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &aBlock[-1] - v13;
  if (*(v1 + 128) == 1)
  {
    v15 = sub_1DB09DA24();
    (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
    v16 = swift_allocObject();
    *(v16 + 16) = 0;
    *(v16 + 24) = 0;
    sub_1DAF4F0EC(0, 0, v14, &unk_1DB0AD538, v16);
  }

  v17 = *(v1 + 232);
  if ((*(v17 + OBJC_IVAR____TtCC17CoreODIEssentials17ODILocationHelper23LocationManagerDelegate_didCallLocationDelegate) & 1) == 0)
  {
    v18 = OBJC_IVAR____TtCC17CoreODIEssentials17ODILocationHelper23LocationManagerDelegate_locationFetchRequestedAt;
    swift_beginAccess();
    sub_1DAFD8AA4(v17 + v18, v4);
    if ((*(v6 + 48))(v4, 1, v5) == 1)
    {
      sub_1DAF40AEC(v4, &unk_1ECC0EAD0, &qword_1DB0AD520);
    }

    else
    {
      (*(v6 + 32))(v11, v4, v5);
      sub_1DB09D134();
      sub_1DB09D094();
      v20 = v19;
      v21 = *(v6 + 8);
      v21(v9, v5);
      *&v22 = v20;
      v23 = v22 | 0x8000000000000000;
      v24 = sub_1DB09D6B4();
      v25 = swift_allocObject();
      *(v25 + 16) = v23;
      *(v25 + 24) = 20;
      aBlock[4] = sub_1DAFB8968;
      aBlock[5] = v25;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1DAFD2A28;
      aBlock[3] = &block_descriptor_10;
      v26 = _Block_copy(aBlock);

      AnalyticsSendEventLazy();
      _Block_release(v26);

      v21(v11, v5);
    }
  }

  __swift_destroy_boxed_opaque_existential_1Tm((v1 + 160));

  sub_1DAF40AEC(v1 + OBJC_IVAR____TtC17CoreODIEssentials17ODILocationHelper_locationRequestSignpost, &qword_1ECC0EEA0, &qword_1DB0AD528);
  v27 = *(v1 + 216);
  *(v1 + 216) = 0;

  if (v27)
  {
    do
    {

      if (!swift_isUniquelyReferenced_native())
      {
        break;
      }

      v28 = *(v27 + 216);
      swift_retain_n();

      v27 = v28;
    }

    while (v28);
  }

  swift_defaultActor_destroy();
  return v1;
}

uint64_t sub_1DAFD589C()
{
  if (qword_1ECC0DFE8 != -1)
  {
    swift_once();
  }

  v1 = qword_1ECC0EE80;
  *(v0 + 16) = qword_1ECC0EE80;

  return MEMORY[0x1EEE6DFA0](sub_1DAFD5934, v1, 0);
}

uint64_t sub_1DAFD5934(uint64_t a1)
{
  sub_1DAFD3184(a1);
  v2 = *(v1 + 8);

  return v2();
}

uint64_t ODILocationHelper.__deallocating_deinit()
{
  ODILocationHelper.deinit();

  return swift_defaultActor_deallocate();
}

uint64_t sub_1DAFD59E0()
{
  v10 = v0;
  v1 = v0[2];
  if (v1[15])
  {
    v2 = v1[23];
    v3 = v1[24];
    __swift_project_boxed_opaque_existential_1(v1 + 20, v2);
    v9 = 4;
    (*(v3 + 16))(0xD000000000000016, 0x80000001DB0C7A70, &v9, v2, v3);
    v4 = v1[17];
    v1[17] = 0;

    v5 = v1[15];
    v1[15] = 0;

    if (qword_1ECC0DFE8 != -1)
    {
      swift_once();
    }

    v6 = qword_1ECC0EE80;
    v0[3] = qword_1ECC0EE80;

    return MEMORY[0x1EEE6DFA0](sub_1DAFD5B38, v6, 0);
  }

  else
  {
    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_1DAFD5B38(uint64_t a1)
{
  v2 = *(v1 + 16);
  sub_1DAFD3184(a1);

  return MEMORY[0x1EEE6DFA0](sub_1DAFD5BA0, v2, 0);
}

uint64_t sub_1DAFD5BA0()
{
  v1 = v0[2];
  *(v1 + 128) = 0;
  v2 = *(v1 + 208);
  v0[4] = v2;
  sub_1DAFDA6D8();
  v0[5] = swift_allocError();
  *v3 = 0;

  return MEMORY[0x1EEE6DFA0](sub_1DAFD5C34, v2, 0);
}

uint64_t sub_1DAFD5C34()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);
  sub_1DAFD33D0(v1);

  return MEMORY[0x1EEE6DFA0](sub_1DAFD5CB4, v2, 0);
}

uint64_t sub_1DAFD5CB4()
{
  *(*(v0 + 16) + 216) = 0;

  v1 = *(v0 + 8);

  return v1();
}

uint64_t ODILocationHelper.getLocationOrWait()()
{
  v1[3] = v0;
  v1[4] = type metadata accessor for ODISignpost(0);
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DAFD5DBC, v0, 0);
}

uint64_t sub_1DAFD5DBC()
{
  if (qword_1ECC0E018 != -1)
  {
    swift_once();
  }

  v1 = v0[4];
  v2 = v0[5];
  v4 = qword_1ECC25AC8;
  v3 = unk_1ECC25AD0;
  v5 = byte_1ECC25AD8;
  v6 = qword_1ECC25AE0;
  v7 = byte_1ECC25AE8;
  *(v2 + 32) = "enableTelemetry=YES";
  *(v2 + 40) = 19;
  *(v2 + 48) = 2;
  *v2 = v4;
  *(v2 + 8) = v3;
  *(v2 + 16) = v5;
  *(v2 + 24) = v6;
  v8 = *(v1 + 28);
  v9 = v6;
  sub_1DB09D474();
  v10 = sub_1DB09DC14();
  if (v7 == 1)
  {
    sub_1DB09D454(v10, &dword_1DAF16000, v9, v4, v3, v5, v2 + v8, "enableTelemetry=YES", 19, 2, MEMORY[0x1E69E7CC0]);
  }

  else
  {
    sub_1DB09D464();
  }

  v11 = v0[3];
  sub_1DAF5F604(v0[5], v0[6]);
  v12 = sub_1DAFD88B0(&qword_1ECC0EEC0, type metadata accessor for ODILocationHelper, &protocol conformance descriptor for ODILocationHelper);
  v13 = swift_task_alloc();
  v0[7] = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0EED8, &unk_1DB0AD548);
  *v13 = v0;
  v13[1] = sub_1DAFD6000;
  v15 = v0[3];

  return MEMORY[0x1EEE6DE38](v0 + 2, v11, v12, 0xD000000000000013, 0x80000001DB0C74C0, sub_1DAFD8BD8, v15, v14);
}

uint64_t sub_1DAFD6000()
{
  v2 = *v1;
  *(*v1 + 64) = v0;

  v3 = *(v2 + 24);
  if (v0)
  {
    v4 = sub_1DAFD6288;
  }

  else
  {
    v4 = sub_1DAFD612C;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1DAFD612C(uint64_t a1)
{
  v2 = v1[6];
  v3 = v1[4];
  v4 = v1[2];
  v5 = sub_1DB09DC04();
  v16 = *(v2 + 24);
  v6 = *v2;
  v7 = *(v2 + 8);
  v8 = *(v3 + 28);
  v9 = *(v2 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0EEE0, &qword_1DB0A21E0);
  v10 = swift_allocObject();
  v11 = MEMORY[0x1E69E6370];
  *(v10 + 16) = xmmword_1DB0A04E0;
  v12 = MEMORY[0x1E69E63A8];
  *(v10 + 56) = v11;
  *(v10 + 64) = v12;
  *(v10 + 32) = v4 != 0;
  v15 = 2;
  sub_1DB09D454(v5, &dword_1DAF16000, v16, v6, v7, v9, v2 + v8, "r=%{public}d", 12, v15, v10);

  sub_1DAF60868(v2);

  v13 = v1[1];

  return v13(v4);
}

uint64_t sub_1DAFD6288(uint64_t a1)
{
  v2 = v1[6];
  v3 = v1[4];
  v4 = sub_1DB09DC04();
  v5 = *(v2 + 24);
  v6 = *v2;
  v7 = *(v2 + 8);
  v8 = *(v3 + 28);
  v9 = *(v2 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0EEE0, &qword_1DB0A21E0);
  v10 = swift_allocObject();
  v11 = MEMORY[0x1E69E6370];
  *(v10 + 16) = xmmword_1DB0A04E0;
  v12 = MEMORY[0x1E69E63A8];
  *(v10 + 56) = v11;
  *(v10 + 64) = v12;
  *(v10 + 32) = 0;
  v15 = 2;
  sub_1DB09D454(v4, &dword_1DAF16000, v5, v6, v7, v9, v2 + v8, "r=%{public}d", 12, v15, v10);

  sub_1DAF60868(v2);

  v13 = v1[1];

  return v13();
}

uint64_t sub_1DAFD63CC(uint64_t a1, uint64_t a2)
{
  v27 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EFF0, &unk_1DB0A4678);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v27 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0ECE0, &unk_1DB0A21D0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v27 - v8;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v10 = *(a2 + 184);
  v11 = *(a2 + 192);
  __swift_project_boxed_opaque_existential_1((a2 + 160), v10);
  LOBYTE(v29) = 4;
  (*(v11 + 16))(0xD000000000000022, 0x80000001DB0C7B70, &v29, v10, v11);
  if ((*(a2 + 204) & 1) != 0 || (v12 = *(a2 + 200), (v12 - 3) < 2))
  {
    v17 = *(a2 + 144);
    if (!v17)
    {
      v23 = sub_1DB09DA24();
      (*(*(v23 - 8) + 56))(v9, 1, 1, v23);
      (*(v4 + 16))(v6, v27, v3);
      v24 = sub_1DAFD88B0(&qword_1ECC0EEC0, type metadata accessor for ODILocationHelper, &protocol conformance descriptor for ODILocationHelper);
      v25 = (*(v4 + 80) + 40) & ~*(v4 + 80);
      v26 = swift_allocObject();
      *(v26 + 2) = a2;
      *(v26 + 3) = v24;
      *(v26 + 4) = a2;
      (*(v4 + 32))(&v26[v25], v6, v3);
      swift_retain_n();
      sub_1DAF4F0EC(0, 0, v9, &unk_1DB0AD878, v26);
    }

    v18 = *(a2 + 184);
    v19 = *(a2 + 192);
    __swift_project_boxed_opaque_existential_1((a2 + 160), v18);
    LOBYTE(v29) = 4;
    v20 = *(v19 + 32);
    v21 = v17;
    v20(0xD00000000000002ALL, 0x80000001DB0C7BA0, &v29, v18, v19);
    v29 = v17;
  }

  else
  {
    v13 = *(a2 + 184);
    v14 = *(a2 + 192);
    __swift_project_boxed_opaque_existential_1((a2 + 160), v13);
    v29 = 0;
    v30 = 0xE000000000000000;
    sub_1DB09DE44();

    v29 = 0xD00000000000001BLL;
    v30 = 0x80000001DB0C7BD0;
    v28 = v12;
    v15 = sub_1DB09E1D4();
    MEMORY[0x1E127FE90](v15);

    MEMORY[0x1E127FE90](0xD000000000000014, 0x80000001DB0C7BF0);
    v16 = v29;
    LOBYTE(v29) = 4;
    (*(v14 + 32))(v16, v30, &v29, v13, v14);

    v29 = 0;
  }

  return sub_1DB09D9B4();
}

uint64_t sub_1DAFD67EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EFF0, &unk_1DB0A4678);
  v5[10] = v7;
  v5[11] = *(v7 - 8);
  v5[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DAFD68BC, a4, 0);
}

uint64_t sub_1DAFD68BC()
{
  v14 = v0;
  v1 = v0[8];
  if (v1[15])
  {
    v1[27] = v1;

    v2 = v1[26];
    v0[13] = v2;

    return MEMORY[0x1EEE6DFA0](sub_1DAFD6AB8, v2, 0);
  }

  else
  {
    sub_1DAF3523C((v1 + 20), (v0 + 2));
    v3 = v0[5];
    v4 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v3);
    v12 = 0;
    v13 = 0xE000000000000000;
    sub_1DB09DE44();
    MEMORY[0x1E127FE90](0xD000000000000046, 0x80000001DB0C7C10);
    if (v1[18])
    {
      v5 = 0x6C696E2D6E6F6ELL;
    }

    else
    {
      v5 = 7104878;
    }

    if (v1[18])
    {
      v6 = 0xE700000000000000;
    }

    else
    {
      v6 = 0xE300000000000000;
    }

    MEMORY[0x1E127FE90](v5, v6);

    v7 = v12;
    LOBYTE(v12) = 4;
    (*(v4 + 16))(v7, v13, &v12, v3, v4);

    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
    v8 = v1[18];
    v0[7] = v8;
    v9 = v8;
    sub_1DB09D9B4();

    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_1DAFD6AB8()
{
  v1 = v0[13];
  (*(v0[11] + 16))(v0[12], v0[9], v0[10]);
  v2 = *(v1 + 112);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + 112) = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1DAF73820(0, v2[2] + 1, 1, v2);
    *(v1 + 112) = v2;
  }

  v5 = v2[2];
  v4 = v2[3];
  if (v5 >= v4 >> 1)
  {
    v2 = sub_1DAF73820((v4 > 1), v5 + 1, 1, v2);
  }

  v7 = v0[11];
  v6 = v0[12];
  v8 = v0[10];
  v9 = v0[8];
  v2[2] = v5 + 1;
  (*(v7 + 32))(v2 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v5, v6, v8);
  *(v1 + 112) = v2;

  return MEMORY[0x1EEE6DFA0](sub_1DAFD6BE8, v9, 0);
}

uint64_t sub_1DAFD6BE8()
{
  v7 = v0;
  v1 = *(v0 + 64);
  v2 = v1[23];
  v3 = v1[24];
  __swift_project_boxed_opaque_existential_1(v1 + 20, v2);
  v6 = 4;
  (*(v3 + 16))(0xD00000000000002ELL, 0x80000001DB0C7C60, &v6, v2, v3);

  v4 = *(v0 + 8);

  return v4();
}

CLLocation_optional __swiftcall ODILocationHelper.getLocation()()
{
  v1 = v0;
  v2 = v0[23];
  v3 = v0[24];
  __swift_project_boxed_opaque_existential_1(v1 + 20, v2);
  v13 = 14;
  Loggable.debug(_:category:)(0xD00000000000001ALL, 0x80000001DB0C74F0, &v13, v2, v3);
  v6 = v1[18];
  if (v6)
  {
    v7 = v1[23];
    v8 = v1[24];
    __swift_project_boxed_opaque_existential_1(v1 + 20, v7);
    v12 = 4;
    v9 = *(v8 + 32);
    v10 = v6;
    v9(0xD000000000000021, 0x80000001DB0C7510, &v12, v7, v8);
  }

  v11 = v6;
  result.value._internal = v4;
  result.value.super.isa = v11;
  result.is_nil = v5;
  return result;
}

uint64_t sub_1DAFD6D98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_1DAF62CC4;

  return sub_1DAFD6E34(a5);
}

uint64_t sub_1DAFD6E34(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0EEA0, &qword_1DB0AD528);
  v2[10] = swift_task_alloc();
  v3 = type metadata accessor for ODISignpost(0);
  v2[11] = v3;
  v2[12] = *(v3 - 8);
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DAFD6F44, v1, 0);
}

uint64_t sub_1DAFD6F44()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = *(v1 + 144);
  *(v1 + 144) = v2;

  v4 = qword_1ECC0E020;
  v5 = v2;
  if (v4 != -1)
  {
    swift_once();
  }

  v6 = v0[14];
  v7 = v0[11];
  v9 = qword_1ECC25AF0;
  v8 = *algn_1ECC25AF8;
  v10 = byte_1ECC25B00;
  v11 = qword_1ECC25B08;
  v12 = byte_1ECC25B10;
  *(v6 + 32) = "enableTelemetry=YES";
  *(v6 + 40) = 19;
  *(v6 + 48) = 2;
  *v6 = v9;
  *(v6 + 8) = v8;
  *(v6 + 16) = v10;
  *(v6 + 24) = v11;
  v13 = *(v7 + 28);
  v14 = v11;
  sub_1DB09D474();
  v15 = sub_1DB09DC14();
  if (v12 == 1)
  {
    sub_1DB09D454(v15, &dword_1DAF16000, v14, v9, v8, v10, v6 + v13, "enableTelemetry=YES", 19, 2, MEMORY[0x1E69E7CC0]);
  }

  else
  {
    sub_1DB09D464();
  }

  v16 = v0[9];
  sub_1DAF5F604(v0[14], v0[15]);
  v17 = *(v16 + 208);
  v0[16] = v17;

  return MEMORY[0x1EEE6DFA0](sub_1DAFD70E4, v17, 0);
}

uint64_t sub_1DAFD70E4()
{
  v1 = *(v0 + 72);
  sub_1DAFD3560(*(v0 + 64));

  return MEMORY[0x1EEE6DFA0](sub_1DAFD7150, v1, 0);
}

uint64_t sub_1DAFD7150(uint64_t a1)
{
  v2 = v1[11];
  v3 = v1[12];
  v4 = v1[9];
  sub_1DB09DC04();
  sub_1DB09D464();
  v5 = OBJC_IVAR____TtC17CoreODIEssentials17ODILocationHelper_locationRequestSignpost;
  swift_beginAccess();
  if (!(*(v3 + 48))(v4 + v5, 1, v2))
  {
    v6 = v1[13];
    v7 = v1[11];
    sub_1DAFDA72C(v4 + v5, v6);
    v8 = sub_1DB09DC04();
    v19 = *(v6 + 24);
    v9 = *v6;
    v10 = *(v6 + 8);
    v11 = *(v7 + 28);
    v12 = *(v6 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0EEE0, &qword_1DB0A21E0);
    v13 = swift_allocObject();
    v14 = MEMORY[0x1E69E6370];
    *(v13 + 16) = xmmword_1DB0A04E0;
    v15 = MEMORY[0x1E69E63A8];
    *(v13 + 56) = v14;
    *(v13 + 64) = v15;
    *(v13 + 32) = 1;
    sub_1DB09D454(v8, &dword_1DAF16000, v19, v9, v10, v12, v6 + v11, "r=%{public}d", 12, 2, v13);

    sub_1DAF60868(v6);
  }

  v16 = v1[10];
  (*(v1[12] + 56))(v16, 1, 1, v1[11]);
  swift_beginAccess();
  sub_1DAF63488(v16, v4 + v5, &qword_1ECC0EEA0, &qword_1DB0AD528);
  swift_endAccess();
  v17 = swift_task_alloc();
  v1[17] = v17;
  *v17 = v1;
  v17[1] = sub_1DAFD7394;

  return sub_1DAFD59C0();
}

uint64_t sub_1DAFD7394()
{
  v1 = *(*v0 + 72);

  return MEMORY[0x1EEE6DFA0](sub_1DAFD74A4, v1, 0);
}

uint64_t sub_1DAFD74A4()
{
  sub_1DAF60868(*(v0 + 120));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DAFD7538(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_1DAF63DEC;

  return sub_1DAFD75D4(a5);
}

uint64_t sub_1DAFD75D4(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0EEA0, &qword_1DB0AD528);
  v2[10] = swift_task_alloc();
  v3 = type metadata accessor for ODISignpost(0);
  v2[11] = v3;
  v2[12] = *(v3 - 8);
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v4 = swift_task_alloc();
  v2[16] = v4;
  *v4 = v2;
  v4[1] = sub_1DAFD7710;

  return sub_1DAFD59C0();
}

uint64_t sub_1DAFD7710()
{
  v1 = *(*v0 + 72);

  return MEMORY[0x1EEE6DFA0](sub_1DAFD7820, v1, 0);
}

uint64_t sub_1DAFD7820()
{
  if (qword_1ECC0E020 != -1)
  {
    swift_once();
  }

  v1 = v0[14];
  v2 = v0[11];
  v4 = qword_1ECC25AF0;
  v3 = *algn_1ECC25AF8;
  v5 = byte_1ECC25B00;
  v6 = qword_1ECC25B08;
  v7 = byte_1ECC25B10;
  *(v1 + 32) = "enableTelemetry=YES";
  *(v1 + 40) = 19;
  *(v1 + 48) = 2;
  *v1 = v4;
  *(v1 + 8) = v3;
  *(v1 + 16) = v5;
  *(v1 + 24) = v6;
  v8 = *(v2 + 28);
  v9 = v6;
  sub_1DB09D474();
  v10 = sub_1DB09DC14();
  if (v7 == 1)
  {
    sub_1DB09D454(v10, &dword_1DAF16000, v9, v4, v3, v5, v1 + v8, "enableTelemetry=YES", 19, 2, MEMORY[0x1E69E7CC0]);
  }

  else
  {
    sub_1DB09D464();
  }

  v12 = v0[8];
  v11 = v0[9];
  sub_1DAF5F604(v0[14], v0[15]);
  v13 = *(v11 + 208);
  v0[17] = v13;
  sub_1DAFDA6D8();
  v0[18] = swift_allocError();
  *v14 = v12;
  sub_1DAFDA6C8(v12);

  return MEMORY[0x1EEE6DFA0](sub_1DAFD79DC, v13, 0);
}

uint64_t sub_1DAFD79DC()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 72);
  sub_1DAFD33D0(v1);

  return MEMORY[0x1EEE6DFA0](sub_1DAFD7A5C, v2, 0);
}

uint64_t sub_1DAFD7A5C(uint64_t a1)
{
  v2 = v1[11];
  v3 = v1[12];
  v4 = v1[9];
  sub_1DB09DC04();
  sub_1DB09D464();
  v5 = OBJC_IVAR____TtC17CoreODIEssentials17ODILocationHelper_locationRequestSignpost;
  swift_beginAccess();
  v6 = (*(v3 + 48))(v4 + v5, 1, v2);
  v7 = v1[15];
  if (v6)
  {
    sub_1DAF60868(v1[15]);
    swift_endAccess();
  }

  else
  {
    v8 = v1[13];
    v9 = v1[11];
    sub_1DAFDA72C(v4 + v5, v8);
    swift_endAccess();
    v10 = sub_1DB09DC04();
    v11 = *(v8 + 8);
    v20 = *v8;
    v21 = *(v8 + 24);
    v12 = *(v9 + 28);
    v13 = *(v8 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0EEE0, &qword_1DB0A21E0);
    v14 = swift_allocObject();
    v15 = MEMORY[0x1E69E6370];
    *(v14 + 16) = xmmword_1DB0A04E0;
    v16 = MEMORY[0x1E69E63A8];
    *(v14 + 56) = v15;
    *(v14 + 64) = v16;
    *(v14 + 32) = 0;
    sub_1DB09D454(v10, &dword_1DAF16000, v21, v20, v11, v13, v8 + v12, "r=%{public}d", 12, 2, v14);

    sub_1DAF60868(v8);
    sub_1DAF60868(v7);
  }

  v17 = v1[10];
  (*(v1[12] + 56))(v17, 1, 1, v1[11]);
  swift_beginAccess();
  sub_1DAF63488(v17, v4 + v5, &qword_1ECC0EEA0, &qword_1DB0AD528);
  swift_endAccess();

  v18 = v1[1];

  return v18();
}

uint64_t sub_1DAFD7CAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  *(v5 + 24) = a5;
  *(v5 + 16) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1DAFD7CD0, a4, 0);
}

uint64_t sub_1DAFD7CD0()
{
  sub_1DAFD7D34(*(v0 + 24));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DAFD7D34(int a1)
{
  v3 = *(v1 + 184);
  v4 = *(v1 + 192);
  __swift_project_boxed_opaque_existential_1((v1 + 160), v3);
  sub_1DB09DE44();

  v7[0] = 0xD000000000000004;
  v7[1] = 0x80000001DB0C7920;
  v5 = sub_1DB09E1D4();
  MEMORY[0x1E127FE90](v5);

  (*(v4 + 16))(0xD000000000000022, 0x80000001DB0C7920, v7, v3, v4);

  *(v1 + 200) = a1;
  *(v1 + 204) = 0;
  return result;
}

void *sub_1DAFD7E38(void *a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  *&v2[OBJC_IVAR____TtCC17CoreODIEssentials17ODILocationHelper23LocationManagerDelegate_parent + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v2[OBJC_IVAR____TtCC17CoreODIEssentials17ODILocationHelper23LocationManagerDelegate__locationManager] = 0;
  v6 = OBJC_IVAR____TtCC17CoreODIEssentials17ODILocationHelper23LocationManagerDelegate_lock;
  *&v2[v6] = [objc_allocWithZone(MEMORY[0x1E696AD10]) init];
  v7 = OBJC_IVAR____TtCC17CoreODIEssentials17ODILocationHelper23LocationManagerDelegate_locationFetchRequestedAt;
  v8 = sub_1DB09D154();
  (*(*(v8 - 8) + 56))(&v2[v7], 1, 1, v8);
  v2[OBJC_IVAR____TtCC17CoreODIEssentials17ODILocationHelper23LocationManagerDelegate_didCallLocationDelegate] = 0;
  v2[OBJC_IVAR____TtCC17CoreODIEssentials17ODILocationHelper23LocationManagerDelegate_didFireAnalyticsEvent] = 0;
  sub_1DAF3523C(a1, &v2[OBJC_IVAR____TtCC17CoreODIEssentials17ODILocationHelper23LocationManagerDelegate_logger]);
  *&v2[OBJC_IVAR____TtCC17CoreODIEssentials17ODILocationHelper23LocationManagerDelegate_analyticsManager] = a2;
  v11.receiver = v2;
  v11.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v11, sel_init);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v9;
}

id sub_1DAFD7F68()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtCC17CoreODIEssentials17ODILocationHelper23LocationManagerDelegate__locationManager;
  v3 = *&v0[OBJC_IVAR____TtCC17CoreODIEssentials17ODILocationHelper23LocationManagerDelegate__locationManager];
  if (v3)
  {
    [v3 stopUpdatingLocation];
    v4 = *&v0[v2];
    if (v4)
    {
      [v4 setDelegate_];
    }
  }

  v6.receiver = v0;
  v6.super_class = ObjectType;
  return objc_msgSendSuper2(&v6, sel_dealloc);
}

uint64_t sub_1DAFD8244()
{
  v2 = *v0;
  *(v1 + 16) = *v0;
  return MEMORY[0x1EEE6DFA0](sub_1DAFD8264, v2, 0);
}

uint64_t sub_1DAFD8264()
{
  v1 = ODILocationHelper.gpsLocationEnabled()();
  v2 = *(v0 + 8);
  v3 = v1;

  return v2(v3);
}

uint64_t sub_1DAFD82C8()
{
  v2 = *v0;
  *(v1 + 16) = *v0;
  return MEMORY[0x1EEE6DFA0](sub_1DAFD82E8, v2, 0);
}

uint64_t sub_1DAFD82E8()
{
  v1 = ODILocationHelper.getLocation()();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1DAFD8348()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DAF97898;

  return ODILocationHelper.getLocationOrWait()();
}

uint64_t ODILocationHelperContext.__allocating_init(logger:)(__int128 *a1)
{
  v2 = swift_allocObject();
  sub_1DAF96EAC(a1, v2 + 16);
  return v2;
}

uint64_t ODILocationHelperContext.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_1DAFD8494(uint64_t a1, uint64_t a2, void *a3)
{
  v23 = a3;
  v26 = a2;
  v4 = sub_1DB09D4C4();
  v25 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1DB09D4F4();
  v7 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0F000, &unk_1DB0AD880);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v22 - v13;
  (*(v11 + 16))(&v22 - v13, a1, v10);
  v15 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v16 = (v12 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  (*(v11 + 32))(v17 + v15, v14, v10);
  v18 = v23;
  *(v17 + v16) = v23;
  aBlock[4] = sub_1DAFDA97C;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DAF75DB0;
  aBlock[3] = &block_descriptor_91;
  v19 = _Block_copy(aBlock);
  v20 = v18;
  sub_1DB09D4E4();
  v27 = MEMORY[0x1E69E7CC0];
  sub_1DAFD88B0(&unk_1EE301990, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F010, &qword_1DB0A0948);
  sub_1DAF75F50(&qword_1EE301940, &qword_1ECC0F010, &qword_1DB0A0948);
  sub_1DB09DCF4();
  MEMORY[0x1E12802A0](0, v9, v6, v19);
  _Block_release(v19);
  (*(v25 + 8))(v6, v4);
  (*(v7 + 8))(v9, v24);
}

uint64_t sub_1DAFD8830(int a1, id a2)
{
  [a2 authorizationStatus];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0F000, &unk_1DB0AD880);
  return sub_1DB09D9B4();
}

uint64_t sub_1DAFD88B0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_1DAFD8918(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a3 + OBJC_IVAR____TtCC17CoreODIEssentials17ODILocationHelper23LocationManagerDelegate_lock);
  [v5 lock];
  v6 = a3 + OBJC_IVAR____TtCC17CoreODIEssentials17ODILocationHelper23LocationManagerDelegate_parent;
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_unknownObjectRelease();
LABEL_4:
    v8 = *(a3 + OBJC_IVAR____TtCC17CoreODIEssentials17ODILocationHelper23LocationManagerDelegate_logger + 24);
    v9 = *(a3 + OBJC_IVAR____TtCC17CoreODIEssentials17ODILocationHelper23LocationManagerDelegate_logger + 32);
    __swift_project_boxed_opaque_existential_1((a3 + OBJC_IVAR____TtCC17CoreODIEssentials17ODILocationHelper23LocationManagerDelegate_logger), v8);
    v13 = 4;
    (*(v9 + 56))(0xD000000000000032, 0x80000001DB0C7CB0, &v13, v8, v9);
    goto LABEL_5;
  }

  v7 = OBJC_IVAR____TtCC17CoreODIEssentials17ODILocationHelper23LocationManagerDelegate__locationManager;
  if (*(a3 + OBJC_IVAR____TtCC17CoreODIEssentials17ODILocationHelper23LocationManagerDelegate__locationManager))
  {
    goto LABEL_4;
  }

  *(v6 + 8) = &off_1F56CDC98;
  swift_unknownObjectWeakAssign();
  v11 = *(a3 + v7);
  *(a3 + v7) = a2;

  v12 = a2;
LABEL_5:

  return [v5 unlock];
}

unint64_t sub_1DAFD8A50()
{
  result = qword_1ECC0EEC8;
  if (!qword_1ECC0EEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0EEC8);
  }

  return result;
}

uint64_t sub_1DAFD8AA4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAD0, &qword_1DB0AD520);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1DAFD8B2C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DAF63DEC;

  return sub_1DAFD5880();
}

uint64_t sub_1DAFD8C08(uint64_t a1)
{
  result = sub_1DB09D4B4();
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

void sub_1DAFD8CD0(uint64_t a1)
{
  sub_1DAFD9034(319, &unk_1ECC0EF18, type metadata accessor for ODISignpost);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t dispatch thunk of ODILocationHelper.__allocating_init(authBundle:authBundleIdentifier:context:analyticsManager:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = (*(v5 + 192) + **(v5 + 192));
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  *v12 = v6;
  v12[1] = sub_1DAFD37FC;

  return v14(a1, a2, a3, a4, a5);
}

void sub_1DAFD8F40(uint64_t a1)
{
  sub_1DAFD9034(319, &unk_1ECC0EFD0, MEMORY[0x1E6969530]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1DAFD9034(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1DB09DC64();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1DAFD90D8(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0ECE0, &unk_1DB0A21D0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v58 = &v56 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAD0, &qword_1DB0AD520);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v56 - v6;
  v8 = sub_1DB09D154();
  v60 = *(v8 - 8);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v57 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v59 = &v56 - v11;
  *(v1 + OBJC_IVAR____TtCC17CoreODIEssentials17ODILocationHelper23LocationManagerDelegate_didCallLocationDelegate) = 1;
  v12 = (v1 + OBJC_IVAR____TtCC17CoreODIEssentials17ODILocationHelper23LocationManagerDelegate_logger);
  v14 = *(v1 + OBJC_IVAR____TtCC17CoreODIEssentials17ODILocationHelper23LocationManagerDelegate_logger + 24);
  v13 = *(v1 + OBJC_IVAR____TtCC17CoreODIEssentials17ODILocationHelper23LocationManagerDelegate_logger + 32);
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtCC17CoreODIEssentials17ODILocationHelper23LocationManagerDelegate_logger), v14);
  aBlock = 0;
  v62 = 0xE000000000000000;
  sub_1DB09DE44();

  aBlock = 0xD00000000000001ALL;
  v62 = 0x80000001DB0C7950;
  swift_getErrorValue();
  v15 = sub_1DB09E324();
  MEMORY[0x1E127FE90](v15);

  v16 = aBlock;
  LOBYTE(aBlock) = 4;
  (*(v13 + 16))(v16, v62, &aBlock, v14, v13);

  v17 = a1;
  v18 = v1;
  v19 = v60;
  v20 = sub_1DB09CE64();
  v21 = [v20 code];

  v22 = OBJC_IVAR____TtCC17CoreODIEssentials17ODILocationHelper23LocationManagerDelegate_locationFetchRequestedAt;
  swift_beginAccess();
  sub_1DAFD8AA4(v18 + v22, v7);
  if ((*(v19 + 48))(v7, 1, v8) == 1)
  {
    sub_1DAF40AEC(v7, &unk_1ECC0EAD0, &qword_1DB0AD520);
  }

  else
  {
    v23 = v59;
    (*(v19 + 32))(v59, v7, v8);
    v24 = OBJC_IVAR____TtCC17CoreODIEssentials17ODILocationHelper23LocationManagerDelegate_didFireAnalyticsEvent;
    if (*(v18 + OBJC_IVAR____TtCC17CoreODIEssentials17ODILocationHelper23LocationManagerDelegate_didFireAnalyticsEvent))
    {
      (*(v19 + 8))(v23, v8);
    }

    else
    {
      v25 = v57;
      sub_1DB09D134();
      sub_1DB09D094();
      v27 = v26;
      v28 = *(v19 + 8);
      v28(v25, v8);
      *&v29 = v27;
      v30 = v29 | 0x8000000000000000;
      v31 = sub_1DB09D6B4();
      v32 = swift_allocObject();
      *(v32 + 16) = v30;
      *(v32 + 24) = v21;
      v65 = sub_1DAFDAA20;
      v66 = v32;
      aBlock = MEMORY[0x1E69E9820];
      v62 = 1107296256;
      v63 = sub_1DAFD2A28;
      v64 = &block_descriptor_64;
      v33 = _Block_copy(&aBlock);

      AnalyticsSendEventLazy();
      _Block_release(v33);

      v28(v59, v8);
      *(v18 + v24) = 1;
    }
  }

  v34 = v17;
  aBlock = v17;
  v35 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0ECF0, &unk_1DB0A1310);
  if (swift_dynamicCast())
  {
    sub_1DAFDA5F8(v67);
  }

  else if (!v21 || v21 == 3)
  {
    v41 = v12[3];
    v42 = v12[4];
    __swift_project_boxed_opaque_existential_1(v12, v41);
    aBlock = 0;
    v62 = 0xE000000000000000;
    sub_1DB09DE44();
    MEMORY[0x1E127FE90](0xD000000000000052, 0x80000001DB0C7970);
    swift_getErrorValue();
    v43 = sub_1DB09E324();
    MEMORY[0x1E127FE90](v43);

    v44 = aBlock;
    LOBYTE(aBlock) = 4;
    (*(v42 + 40))(v44, v62, &aBlock, v41, v42);

    return;
  }

  if (v21 == 1)
  {
    v36 = v12[3];
    v37 = v12[4];
    __swift_project_boxed_opaque_existential_1(v12, v36);
    aBlock = 0;
    v62 = 0xE000000000000000;
    sub_1DB09DE44();
    MEMORY[0x1E127FE90](0xD000000000000043, 0x80000001DB0C7A20);
    swift_getErrorValue();
    v38 = sub_1DB09E324();
    MEMORY[0x1E127FE90](v38);

    v39 = aBlock;
    LOBYTE(aBlock) = 4;
    (*(v37 + 40))(v39, v62, &aBlock, v36, v37);

    v34 = 1;
  }

  else
  {
    aBlock = v17;
    v40 = v17;
    if (swift_dynamicCast())
    {
      v34 = v67;
    }

    else
    {
      v45 = v12[3];
      v46 = v12[4];
      __swift_project_boxed_opaque_existential_1(v12, v45);
      aBlock = 0;
      v62 = 0xE000000000000000;
      sub_1DB09DE44();
      MEMORY[0x1E127FE90](0xD000000000000045, 0x80000001DB0C79D0);
      swift_getErrorValue();
      v47 = sub_1DB09E324();
      MEMORY[0x1E127FE90](v47);

      v48 = aBlock;
      LOBYTE(aBlock) = 4;
      (*(v46 + 48))(v48, v62, &aBlock, v45, v46);

      v49 = v34;
    }
  }

  v50 = *(v18 + OBJC_IVAR____TtCC17CoreODIEssentials17ODILocationHelper23LocationManagerDelegate_lock);
  [v50 lock];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v52 = Strong;
    v53 = sub_1DB09DA24();
    v54 = v58;
    (*(*(v53 - 8) + 56))(v58, 1, 1, v53);
    v55 = swift_allocObject();
    v55[2] = 0;
    v55[3] = 0;
    v55[4] = v52;
    v55[5] = v34;
    sub_1DAFDA6C8(v34);
    sub_1DAF4F0EC(0, 0, v54, &unk_1DB0AD838, v55);
  }

  [v50 unlock];
  sub_1DAFDA5F8(v34);
}

void sub_1DAFD9A24(unint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0ECE0, &unk_1DB0A21D0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v72 = &v66 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAD0, &qword_1DB0AD520);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v68 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v74 = &v66 - v9;
  v10 = sub_1DB09D154();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v67 = &v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  p_aBlock = (&v66 - v14);
  if (qword_1EE301DD8 != -1)
  {
LABEL_22:
    swift_once();
  }

  v73 = p_aBlock;
  if (byte_1EE30A140 == 1)
  {
    p_aBlock = [objc_opt_self() standardUserDefaults];
    v16 = sub_1DB09D6B4();
    LODWORD(v75) = [p_aBlock BOOLForKey_];
  }

  else
  {
    LODWORD(v75) = 0;
  }

  aBlock = MEMORY[0x1E69E7CC0];
  if (a1 >> 62)
  {
    v17 = sub_1DB09DD44();
    if (v17)
    {
LABEL_7:
      v69 = v11;
      v70 = v10;
      v71 = v2;
      v18 = 0;
      v10 = a1 & 0xC000000000000001;
      v11 = a1 & 0xFFFFFFFFFFFFFF8;
      v2 = &unk_1E85EE000;
      do
      {
        if (v10)
        {
          v19 = MEMORY[0x1E1280530](v18, a1);
        }

        else
        {
          if (v18 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_21;
          }

          v19 = *(a1 + 8 * v18 + 32);
        }

        v20 = v19;
        v21 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          __break(1u);
LABEL_21:
          __break(1u);
          goto LABEL_22;
        }

        v22 = [v19 sourceInformation];
        if (!v22 || (p_aBlock = v22, v23 = [v22 isSimulatedBySoftware], p_aBlock, v75 & 1 | ((v23 & 1) == 0)))
        {
          p_aBlock = &aBlock;
          sub_1DB09DEE4();
          sub_1DB09DF14();
          sub_1DB09DF24();
          sub_1DB09DEF4();
        }

        else
        {
        }

        ++v18;
      }

      while (v21 != v17);
      v24 = aBlock;
      v10 = v70;
      v2 = v71;
      v11 = v69;
      if ((aBlock & 0x8000000000000000) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_41;
    }
  }

  else
  {
    v17 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v17)
    {
      goto LABEL_7;
    }
  }

  v24 = MEMORY[0x1E69E7CC0];
  if ((MEMORY[0x1E69E7CC0] & 0x8000000000000000) == 0)
  {
LABEL_25:
    if ((v24 & 0x4000000000000000) == 0)
    {
      v25 = *(v24 + 16);
      if (!v25)
      {
        goto LABEL_42;
      }

      goto LABEL_27;
    }
  }

LABEL_41:
  v25 = sub_1DB09DD44();
  if (!v25)
  {
LABEL_42:

    if (v17)
    {
      v62 = *(v2 + OBJC_IVAR____TtCC17CoreODIEssentials17ODILocationHelper23LocationManagerDelegate_logger + 24);
      v63 = *(v2 + OBJC_IVAR____TtCC17CoreODIEssentials17ODILocationHelper23LocationManagerDelegate_logger + 32);
      __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtCC17CoreODIEssentials17ODILocationHelper23LocationManagerDelegate_logger), v62);
      LOBYTE(aBlock) = 4;
      (*(v63 + 16))(0xD000000000000022, 0x80000001DB0C7AE0, &aBlock, v62, v63);
      sub_1DAFDA6D8();
      v64 = swift_allocError();
      *v65 = 2;
      sub_1DAFD90D8(v64);
    }

    return;
  }

LABEL_27:
  v26 = (v2 + OBJC_IVAR____TtCC17CoreODIEssentials17ODILocationHelper23LocationManagerDelegate_logger);
  v27 = *(v2 + OBJC_IVAR____TtCC17CoreODIEssentials17ODILocationHelper23LocationManagerDelegate_logger + 24);
  v28 = *(v2 + OBJC_IVAR____TtCC17CoreODIEssentials17ODILocationHelper23LocationManagerDelegate_logger + 32);
  __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtCC17CoreODIEssentials17ODILocationHelper23LocationManagerDelegate_logger), v27);
  LOBYTE(aBlock) = 4;
  (*(v28 + 16))(0xD000000000000015, 0x80000001DB0C7A90, &aBlock, v27, v28);
  *(v2 + OBJC_IVAR____TtCC17CoreODIEssentials17ODILocationHelper23LocationManagerDelegate_didCallLocationDelegate) = 1;
  v29 = OBJC_IVAR____TtCC17CoreODIEssentials17ODILocationHelper23LocationManagerDelegate_locationFetchRequestedAt;
  swift_beginAccess();
  v30 = v74;
  sub_1DAFD8AA4(v2 + v29, v74);
  if ((*(v11 + 48))(v30, 1, v10) == 1)
  {
    sub_1DAF40AEC(v30, &unk_1ECC0EAD0, &qword_1DB0AD520);
  }

  else
  {
    v31 = v30;
    v32 = v73;
    (*(v11 + 32))(v73, v31, v10);
    v33 = v11;
    v34 = OBJC_IVAR____TtCC17CoreODIEssentials17ODILocationHelper23LocationManagerDelegate_didFireAnalyticsEvent;
    if (*(v2 + OBJC_IVAR____TtCC17CoreODIEssentials17ODILocationHelper23LocationManagerDelegate_didFireAnalyticsEvent))
    {
      (*(v33 + 8))(v32, v10);
    }

    else
    {
      v35 = v67;
      sub_1DB09D134();
      sub_1DB09D094();
      v37 = v36;
      v38 = *(v33 + 8);
      v74 = v33 + 8;
      v75 = v38;
      v38(v35, v10);
      *&v39 = v37;
      v40 = v39;
      v41 = sub_1DB09D6B4();
      v42 = swift_allocObject();
      *(v42 + 16) = v40;
      *(v42 + 24) = 0;
      v80 = sub_1DAFDAA20;
      v81 = v42;
      aBlock = MEMORY[0x1E69E9820];
      v77 = 1107296256;
      v78 = sub_1DAFD2A28;
      v79 = &block_descriptor_77;
      v43 = _Block_copy(&aBlock);

      AnalyticsSendEventLazy();
      _Block_release(v43);

      *(v2 + v34) = 1;
      v44 = v26[3];
      v70 = v26[4];
      v71 = __swift_project_boxed_opaque_existential_1(v26, v44);
      aBlock = 0;
      v77 = 0xE000000000000000;
      sub_1DB09DE44();
      MEMORY[0x1E127FE90](0xD00000000000002DLL, 0x80000001DB0C7AB0);
      sub_1DB09DAC4();
      v45 = aBlock;
      LOBYTE(aBlock) = 4;
      (*(v70 + 16))(v45, v77, &aBlock, v44);

      v75(v73, v10);
      v46 = v68;
      (*(v33 + 56))(v68, 1, 1, v10);
      swift_beginAccess();
      sub_1DAF63488(v46, v2 + v29, &unk_1ECC0EAD0, &qword_1DB0AD520);
      swift_endAccess();
    }
  }

  v47 = v26[3];
  v48 = v26[4];
  __swift_project_boxed_opaque_existential_1(v26, v47);
  aBlock = 0x6E6F697461636F6CLL;
  v77 = 0xEB00000000203A73;
  v49 = sub_1DAF4062C(0, &qword_1ECC0EFE8, 0x1E6985C40);
  v50 = MEMORY[0x1E1280010](v24, v49);
  MEMORY[0x1E127FE90](v50);

  v51 = aBlock;
  LOBYTE(aBlock) = 4;
  (*(v48 + 72))(v51, v77, &aBlock, v47, v48);

  v52 = v25 - 1;
  if (__OFSUB__(v25, 1))
  {
    __break(1u);
    goto LABEL_47;
  }

  if ((v24 & 0xC000000000000001) != 0)
  {
LABEL_47:
    v53 = MEMORY[0x1E1280530](v52, v24);
    goto LABEL_37;
  }

  if ((v52 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_49;
  }

  if (v52 >= *(v24 + 16))
  {
LABEL_49:
    __break(1u);
    return;
  }

  v53 = *(v24 + 8 * v52 + 32);
LABEL_37:
  v54 = v53;

  v55 = *(v2 + OBJC_IVAR____TtCC17CoreODIEssentials17ODILocationHelper23LocationManagerDelegate_lock);
  [v55 lock];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v57 = Strong;
    v58 = sub_1DB09DA24();
    v59 = v72;
    (*(*(v58 - 8) + 56))(v72, 1, 1, v58);
    v60 = swift_allocObject();
    v60[2] = 0;
    v60[3] = 0;
    v60[4] = v57;
    v60[5] = v54;
    v61 = v54;
    sub_1DAF4F0EC(0, 0, v59, &unk_1DB0AD858, v60);
  }

  [v55 unlock];
}

id sub_1DAFDA3E4(int a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0ECE0, &unk_1DB0A21D0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v12 - v4;
  v6 = *(v1 + OBJC_IVAR____TtCC17CoreODIEssentials17ODILocationHelper23LocationManagerDelegate_lock);
  [v6 lock];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = sub_1DB09DA24();
    (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
    v10 = swift_allocObject();
    *(v10 + 16) = 0;
    *(v10 + 24) = 0;
    *(v10 + 32) = v8;
    *(v10 + 40) = a1;
    sub_1DAF4F0EC(0, 0, v5, &unk_1DB0AD820, v10);
  }

  return [v6 unlock];
}

uint64_t sub_1DAFDA534(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1DAF62CC4;

  return sub_1DAFD7CAC(a1, v4, v5, v6, v7);
}

void sub_1DAFDA5F8(id a1)
{
  if (a1 >= 3)
  {
  }
}

uint64_t sub_1DAFDA608(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1DAF63DEC;

  return sub_1DAFD7538(a1, v4, v5, v7, v6);
}

id sub_1DAFDA6C8(id result)
{
  if (result >= 3)
  {
    return result;
  }

  return result;
}

unint64_t sub_1DAFDA6D8()
{
  result = qword_1ECC0EFE0;
  if (!qword_1ECC0EFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0EFE0);
  }

  return result;
}

uint64_t sub_1DAFDA72C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ODISignpost(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DAFDA790(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1DAF63DEC;

  return sub_1DAFD6D98(a1, v4, v5, v7, v6);
}

uint64_t sub_1DAFDA878(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EFF0, &unk_1DB0A4678) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1DAF63DEC;

  return sub_1DAFD67EC(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_1DAFDA97C()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0F000, &unk_1DB0AD880) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1DAFD8830(v0 + v2, v3);
}

void *sub_1DAFDAA30(char a1, void *a2, SecKeyRef key, uint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t (*a12)(void), uint64_t a13)
{
  error[1] = *MEMORY[0x1E69E9840];
  v20 = v13;
  error[0] = 0;
  v21 = SecKeyCopyExternalRepresentation(key, error);
  if (!v21)
  {

    LOWORD(v140) = 198;
    sub_1DAFCF218(error[0], 0xD000000000000033, 0x80000001DB0C80D0, &v140);
    swift_willThrow();

    sub_1DAF40780(a6, a7);
    sub_1DAF40780(a4, a5);
    goto LABEL_53;
  }

  v133 = a6;
  v22 = v21;
  v23 = sub_1DB09D034();
  v25 = v24;

  v129 = v23;
  v130 = v25;
  v26 = sub_1DB09D004();
  v27 = DigestSha256(v26);

  v134 = a2;
  v132 = a5;
  v131 = a4;
  if (!v27)
  {

    v136 = key;
    if (qword_1EE300B90 != -1)
    {
      swift_once();
    }

    v34 = MEMORY[0x1E69E7CC0];
    v35 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
    v127 = v20;
    if (*(v35 + 16))
    {
      v36 = sub_1DAF35210(0x636F766E49504944, 0xEE00736E6F697461);
      if (v37)
      {
        sub_1DAF409DC(*(v35 + 56) + 32 * v36, &v140);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E478, &qword_1DB0A09A0);
        if (swift_dynamicCast())
        {
          v34 = *&v139[0];
        }
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v34 = sub_1DAF72FF4(0, *(v34 + 2) + 1, 1, v34);
    }

    v39 = *(v34 + 2);
    v38 = *(v34 + 3);
    if (v39 >= v38 >> 1)
    {
      v34 = sub_1DAF72FF4((v38 > 1), v39 + 1, 1, v34);
    }

    *(v34 + 2) = v39 + 1;
    v40 = &v34[56 * v39];
    *(v40 + 4) = 0xD000000000000030;
    *(v40 + 5) = 0x80000001DB0C8110;
    *(v40 + 6) = 0xD000000000000031;
    *(v40 + 7) = 0x80000001DB0C8030;
    *(v40 + 8) = 0xD00000000000004ELL;
    *(v40 + 9) = 0x80000001DB0C8150;
    *(v40 + 10) = 144;
    v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E478, &qword_1DB0A09A0);
    *&v140 = v34;
    sub_1DAF40D20(&v140, v139);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1DAF3B11C(v139, 0x636F766E49504944, 0xEE00736E6F697461, isUniquelyReferenced_nonNull_native);
    v42 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v43 = sub_1DB09D6B4();
    v44 = sub_1DB09D604();
    [v42 initWithDomain:v43 code:-1 userInfo:v44];

    swift_willThrow();
    v45 = v129;
    v46 = v25;
    goto LABEL_52;
  }

  v28 = sub_1DB09D034();
  v30 = v29;

  v31 = sub_1DB09D014();
  sub_1DAF40780(v28, v30);
  sub_1DB09CC54();
  swift_allocObject();
  sub_1DB09CC44();
  a12();
  v32 = sub_1DB09CC34();
  if (v135)
  {

    sub_1DAF40780(v129, v130);

    sub_1DAF40780(v133, a7);
    sub_1DAF40780(v131, v132);

LABEL_53:
    swift_deallocPartialClassInstance();
    goto LABEL_54;
  }

  v127 = v20;
  v136 = key;
  v125 = v32;
  v126 = v33;

  v47 = [objc_opt_self() standardUserDefaults];
  if (qword_1EE301DD8 != -1)
  {
    swift_once();
  }

  if (byte_1EE30A140)
  {
    v48 = sub_1DB09D6B4();
    v49 = [v47 BOOLForKey_];

    if (v49)
    {
      if (qword_1EE301DE8 != -1)
      {
        swift_once();
      }

      v50 = qword_1EE30A148;
      v51 = sub_1DB09DB54();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0EEE0, &qword_1DB0A21E0);
      v52 = swift_allocObject();
      *(v52 + 16) = xmmword_1DB0A04E0;
      v53 = sub_1DB09D014();
      v55 = v54;
      *(v52 + 56) = MEMORY[0x1E69E6158];
      *(v52 + 64) = sub_1DAF4DC24();
      *(v52 + 32) = v53;
      *(v52 + 40) = v55;
      sub_1DB09D444("EncryptedDataContainer contains %@", 34, 2, &dword_1DAF16000, v50, v51, v52);
    }
  }

  else
  {
  }

  if (!a1)
  {

    if (qword_1EE300B90 != -1)
    {
      swift_once();
    }

    v67 = MEMORY[0x1E69E7CC0];
    v68 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
    if (*(v68 + 16))
    {
      v69 = sub_1DAF35210(0x636F766E49504944, 0xEE00736E6F697461);
      if (v70)
      {
        sub_1DAF409DC(*(v68 + 56) + 32 * v69, &v140);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E478, &qword_1DB0A09A0);
        if (swift_dynamicCast())
        {
          v67 = *&v139[0];
        }
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v67 = sub_1DAF72FF4(0, *(v67 + 2) + 1, 1, v67);
    }

    v72 = *(v67 + 2);
    v71 = *(v67 + 3);
    if (v72 >= v71 >> 1)
    {
      v67 = sub_1DAF72FF4((v71 > 1), v72 + 1, 1, v67);
    }

    *(v67 + 2) = v72 + 1;
    v73 = &v67[56 * v72];
    *(v73 + 4) = 0xD00000000000003BLL;
    *(v73 + 5) = 0x80000001DB0C8240;
    *(v73 + 6) = 0xD000000000000031;
    *(v73 + 7) = 0x80000001DB0C8030;
    *(v73 + 8) = 0xD00000000000004ELL;
    *(v73 + 9) = 0x80000001DB0C8150;
    *(v73 + 10) = 155;
    v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E478, &qword_1DB0A09A0);
    *&v140 = v67;
    sub_1DAF40D20(&v140, v139);
    v74 = swift_isUniquelyReferenced_nonNull_native();
    sub_1DAF3B11C(v139, 0x636F766E49504944, 0xEE00736E6F697461, v74);
    v75 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v76 = sub_1DB09D6B4();
    v77 = sub_1DB09D604();
    [v75 initWithDomain:v76 code:-1203 userInfo:v77];
    goto LABEL_51;
  }

  v56 = sub_1DB09D004();
  v57 = DigestSha256(v56);

  if (!v57)
  {

    if (qword_1EE300B90 != -1)
    {
      swift_once();
    }

    v78 = MEMORY[0x1E69E7CC0];
    v79 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
    if (*(v79 + 16))
    {
      v80 = sub_1DAF35210(0x636F766E49504944, 0xEE00736E6F697461);
      if (v81)
      {
        sub_1DAF409DC(*(v79 + 56) + 32 * v80, &v140);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E478, &qword_1DB0A09A0);
        if (swift_dynamicCast())
        {
          v78 = *&v139[0];
        }
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v78 = sub_1DAF72FF4(0, *(v78 + 2) + 1, 1, v78);
    }

    v83 = *(v78 + 2);
    v82 = *(v78 + 3);
    if (v83 >= v82 >> 1)
    {
      v78 = sub_1DAF72FF4((v82 > 1), v83 + 1, 1, v78);
    }

    *(v78 + 2) = v83 + 1;
    v84 = &v78[56 * v83];
    *(v84 + 4) = 0xD000000000000033;
    *(v84 + 5) = 0x80000001DB0C81C0;
    *(v84 + 6) = 0xD000000000000031;
    *(v84 + 7) = 0x80000001DB0C8030;
    *(v84 + 8) = 0xD00000000000004ELL;
    *(v84 + 9) = 0x80000001DB0C8150;
    *(v84 + 10) = 158;
    v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E478, &qword_1DB0A09A0);
    *&v140 = v78;
    sub_1DAF40D20(&v140, v139);
    v85 = swift_isUniquelyReferenced_nonNull_native();
    sub_1DAF3B11C(v139, 0x636F766E49504944, 0xEE00736E6F697461, v85);
    v86 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v76 = sub_1DB09D6B4();
    v77 = sub_1DB09D604();
    [v86 initWithDomain:v76 code:-1 userInfo:v77];
LABEL_51:

    swift_willThrow();
    sub_1DAF40780(v129, v130);
    v45 = v125;
    v46 = v126;
LABEL_52:
    sub_1DAF40780(v45, v46);

    sub_1DAF40780(v133, a7);
    sub_1DAF40780(v131, v132);
    a2 = v134;
    v20 = v127;
    goto LABEL_53;
  }

  v123 = sub_1DB09D034();
  v124 = v58;

  v59 = sub_1DB09D004();
  v60 = DigestSha256(v59);

  if (!v60)
  {

    if (qword_1EE300B90 != -1)
    {
      swift_once();
    }

    v88 = MEMORY[0x1E69E7CC0];
    v89 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
    if (*(v89 + 16))
    {
      v90 = sub_1DAF35210(0x636F766E49504944, 0xEE00736E6F697461);
      if (v91)
      {
        sub_1DAF409DC(*(v89 + 56) + 32 * v90, &v140);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E478, &qword_1DB0A09A0);
        if (swift_dynamicCast())
        {
          v88 = *&v139[0];
        }
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v88 = sub_1DAF72FF4(0, *(v88 + 2) + 1, 1, v88);
    }

    v93 = *(v88 + 2);
    v92 = *(v88 + 3);
    if (v93 >= v92 >> 1)
    {
      v88 = sub_1DAF72FF4((v92 > 1), v93 + 1, 1, v88);
    }

    *(v88 + 2) = v93 + 1;
    v94 = &v88[56 * v93];
    *(v94 + 4) = 0xD000000000000030;
    *(v94 + 5) = 0x80000001DB0C8200;
    *(v94 + 6) = 0xD000000000000031;
    *(v94 + 7) = 0x80000001DB0C8030;
    *(v94 + 8) = 0xD00000000000004ELL;
    *(v94 + 9) = 0x80000001DB0C8150;
    *(v94 + 10) = 161;
    v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E478, &qword_1DB0A09A0);
    *&v140 = v88;
    sub_1DAF40D20(&v140, v139);
    v95 = swift_isUniquelyReferenced_nonNull_native();
    sub_1DAF3B11C(v139, 0x636F766E49504944, 0xEE00736E6F697461, v95);
    v96 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v97 = sub_1DB09D6B4();
    v98 = sub_1DB09D604();
    [v96 initWithDomain:v97 code:-1 userInfo:v98];

    swift_willThrow();
    sub_1DAF40780(v129, v130);
    sub_1DAF40780(v125, v126);
    v45 = v123;
    v46 = v124;
    goto LABEL_52;
  }

  v61 = sub_1DB09D034();
  v121 = v62;
  v122 = v61;

  v63 = a2[4];
  v119 = a2[3];
  __swift_project_boxed_opaque_existential_1(a2, v119);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F028, &qword_1DB0AD908);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB0A0500;
  *(inited + 32) = 0;
  *(inited + 40) = v131;
  *(inited + 48) = v132;
  *(inited + 56) = 1;
  *(inited + 64) = v133;
  *(inited + 72) = a7;
  v65 = sub_1DAF3E8BC(inited);
  swift_setDeallocating();
  sub_1DAF40674(v131, v132);
  sub_1DAF40674(v133, a7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0F030, &unk_1DB0AD910);
  swift_arrayDestroy();
  v66 = (*(v63 + 16))(v125, v126, v136, v65, v119, v63);
  v118 = v99;
  v120 = v100;
  v101 = v66;
  v103 = v102;

  sub_1DAF40780(v101, v103);
  v104 = a2[3];
  v105 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v104);
  v106 = (*(v105 + 40))(v104, v105);
  v108 = v107;
  v137 = sub_1DB09D014();
  v110 = v109;
  sub_1DAF40780(v106, v108);
  v111 = sub_1DB09D014();
  v113 = v112;
  v114 = sub_1DB09D014();
  *(v20 + 32) = a1;
  *(v20 + 40) = v137;
  *(v20 + 48) = v110;
  *(v20 + 56) = v31;
  *(v20 + 64) = 0;
  *(v20 + 72) = v111;
  *(v20 + 80) = v113;
  *(v20 + 88) = v114;
  *(v20 + 96) = v115;
  *(v20 + 112) = 0;
  *(v20 + 120) = 0;
  *(v20 + 104) = 0;
  v138 = sub_1DB09D014();
  v117 = v116;
  sub_1DAF40780(v129, v130);
  sub_1DAF40780(v125, v126);
  sub_1DAF40780(v123, v124);
  sub_1DAF40780(v118, v120);
  sub_1DAF40780(v122, v121);

  sub_1DAF40780(v133, a7);
  sub_1DAF40780(v131, v132);
  *(v20 + 16) = v138;
  *(v20 + 24) = v117;
LABEL_54:
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  return v20;
}

uint64_t sub_1DAFDBC18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = type metadata accessor for PregeneratedAssessment(0);
  v7 = sub_1DB09CFA4();
  if (v8 >> 60 == 15)
  {
    goto LABEL_4;
  }

  v9 = v7;
  v10 = v8;
  v11 = sub_1DB09CFA4();
  if (v12 >> 60 == 15)
  {
    sub_1DAF4AC40(v9, v10);
LABEL_4:
    if (qword_1EE300B90 != -1)
    {
      swift_once();
    }

    v13 = MEMORY[0x1E69E7CC0];
    v14 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
    if (*(v14 + 16))
    {
      v15 = sub_1DAF35210(0x636F766E49504944, 0xEE00736E6F697461);
      if (v16)
      {
        sub_1DAF409DC(*(v14 + 56) + 32 * v15, &v116);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E478, &qword_1DB0A09A0);
        if (swift_dynamicCast())
        {
          v13 = v100;
        }
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v13 = sub_1DAF72FF4(0, *(v13 + 2) + 1, 1, v13);
    }

    v18 = *(v13 + 2);
    v17 = *(v13 + 3);
    if (v18 >= v17 >> 1)
    {
      v13 = sub_1DAF72FF4((v17 > 1), v18 + 1, 1, v13);
    }

    *(v13 + 2) = v18 + 1;
    v19 = &v13[56 * v18];
    *(v19 + 4) = 0xD000000000000022;
    *(v19 + 5) = 0x80000001DB0C7E70;
    *(v19 + 6) = 0xD000000000000030;
    *(v19 + 7) = 0x80000001DB0C3BA0;
    *(v19 + 8) = 0x7344495547746567;
    *(v19 + 9) = 0xEF293A6D6F726628;
    *(v19 + 10) = 45;
    *(&v117 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E478, &qword_1DB0A09A0);
    *&v116 = v13;
    sub_1DAF40D20(&v116, &v100);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v98[0] = v14;
    sub_1DAF3B11C(&v100, 0x636F766E49504944, 0xEE00736E6F697461, isUniquelyReferenced_nonNull_native);
    v21 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v22 = sub_1DB09D6B4();
    v23 = sub_1DB09D604();
    [v21 initWithDomain:v22 code:-1305 userInfo:v23];

    return swift_willThrow();
  }

  v25 = *(v2 + 32);
  v26 = *(v2 + 40);
  v27 = *(v2 + 96);
  v140 = *(v2 + 80);
  v141 = v27;
  v142 = *(v2 + 112);
  v28 = *(v2 + 64);
  v138 = *(v2 + 48);
  v139 = v28;
  v143 = v12;
  v69 = v11;
  if (!v26)
  {
    if (qword_1EE300B90 != -1)
    {
      swift_once();
    }

    v29 = MEMORY[0x1E69E7CC0];
    v30 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
    if (*(v30 + 16))
    {
      v31 = sub_1DAF35210(0x636F766E49504944, 0xEE00736E6F697461);
      if (v32)
      {
        sub_1DAF409DC(*(v30 + 56) + 32 * v31, &v116);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E478, &qword_1DB0A09A0);
        if (swift_dynamicCast())
        {
          v29 = v100;
        }
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v29 = sub_1DAF72FF4(0, *(v29 + 2) + 1, 1, v29);
    }

    v34 = *(v29 + 2);
    v33 = *(v29 + 3);
    if (v34 >= v33 >> 1)
    {
      v29 = sub_1DAF72FF4((v33 > 1), v34 + 1, 1, v29);
    }

    *(v29 + 2) = v34 + 1;
    v35 = &v29[56 * v34];
    *(v35 + 4) = 0xD000000000000019;
    *(v35 + 5) = 0x80000001DB0C7EA0;
    *(v35 + 6) = 0xD000000000000030;
    *(v35 + 7) = 0x80000001DB0C3BA0;
    *(v35 + 8) = 0x7344495547746567;
    *(v35 + 9) = 0xEF293A6D6F726628;
    *(v35 + 10) = 49;
    *(&v117 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E478, &qword_1DB0A09A0);
    *&v116 = v29;
    sub_1DAF40D20(&v116, &v100);
    v36 = swift_isUniquelyReferenced_nonNull_native();
    *&v98[0] = v30;
    sub_1DAF3B11C(&v100, 0x636F766E49504944, 0xEE00736E6F697461, v36);
    v37 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v38 = sub_1DB09D6B4();
    v39 = sub_1DB09D604();
    [v37 initWithDomain:v38 code:-1 userInfo:v39];

    swift_willThrow();
    goto LABEL_29;
  }

  v67 = v2;
  v68 = v25;
  sub_1DB09CC24();
  swift_allocObject();
  sub_1DB09CC14();
  sub_1DAF8C3D4();
  sub_1DB09CC04();
  if (v3)
  {

LABEL_29:
    sub_1DAF4AC40(v69, v143);
    v40 = v9;
    return sub_1DAF4AC40(v40, v10);
  }

  v133[0] = v134;
  v133[1] = v135;
  v133[2] = v136;
  v133[3] = v137;
  sub_1DB09CC04();
  v125 = v129;
  v126 = v130;
  v127 = v131;
  v128 = v132;
  v109 = v68;
  v110 = v26;
  v113 = v140;
  v114 = v141;
  v115 = v142;
  v111 = v138;
  v112 = v139;
  v108[0] = v134;
  v108[1] = v135;
  v108[2] = v136;
  v108[3] = v137;
  sub_1DAF46F8C(v108, &v116);
  sub_1DAF41478(v133);
  v106 = v122;
  v107[0] = v123;
  *&v107[1] = v124;
  v102 = v118;
  v103 = v119;
  v104 = v120;
  v105 = v121;
  v100 = v116;
  v101 = v117;
  v91 = v68;
  v92 = v26;
  v95 = v140;
  v96 = v141;
  v97 = v142;
  v93 = v138;
  v94 = v139;
  v90[0] = v125;
  v90[1] = v126;
  v90[2] = v127;
  v90[3] = v128;
  sub_1DAF46F8C(v90, v98);
  sub_1DAF41478(&v125);
  v84 = v98[2];
  v85 = v98[3];
  *&v89[1] = v99;
  v88 = v98[6];
  v89[0] = v98[7];
  v86 = v98[4];
  v87 = v98[5];
  v82 = v98[0];
  v83 = v98[1];
  if (*(v107 + 8) != *(a1 + *(v6 + 32)) && (sub_1DB09E254() & 1) == 0 || *(v89 + 8) != *(a1 + *(v6 + 40)) && (sub_1DB09E254() & 1) == 0)
  {
    sub_1DAF49F04(&v100);
    sub_1DAF49F04(&v82);
    if (qword_1EE300B90 != -1)
    {
      swift_once();
    }

    v56 = MEMORY[0x1E69E7CC0];
    v57 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
    if (*(v57 + 16))
    {
      v58 = sub_1DAF35210(0x636F766E49504944, 0xEE00736E6F697461);
      if (v59)
      {
        sub_1DAF409DC(*(v57 + 56) + 32 * v58, &v70);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E478, &qword_1DB0A09A0);
        if (swift_dynamicCast())
        {
          v56 = *&v81[0];
        }
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v56 = sub_1DAF72FF4(0, *(v56 + 2) + 1, 1, v56);
    }

    v61 = *(v56 + 2);
    v60 = *(v56 + 3);
    if (v61 >= v60 >> 1)
    {
      v56 = sub_1DAF72FF4((v60 > 1), v61 + 1, 1, v56);
    }

    *(v56 + 2) = v61 + 1;
    v62 = &v56[56 * v61];
    *(v62 + 4) = 0xD00000000000003FLL;
    *(v62 + 5) = 0x80000001DB0C7EC0;
    *(v62 + 6) = 0xD000000000000030;
    *(v62 + 7) = 0x80000001DB0C3BA0;
    *(v62 + 8) = 0x7344495547746567;
    *(v62 + 9) = 0xEF293A6D6F726628;
    *(v62 + 10) = 62;
    *(&v71 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E478, &qword_1DB0A09A0);
    *&v70 = v56;
    sub_1DAF40D20(&v70, v81);
    v63 = swift_isUniquelyReferenced_nonNull_native();
    v79 = v57;
    sub_1DAF3B11C(v81, 0x636F766E49504944, 0xEE00736E6F697461, v63);
    v64 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v65 = sub_1DB09D6B4();
    v66 = sub_1DB09D604();
    [v64 initWithDomain:v65 code:-2110 userInfo:v66];

    swift_willThrow();

    sub_1DAF4AC40(v69, v143);
    v40 = v9;
    return sub_1DAF4AC40(v40, v10);
  }

  if (qword_1EE304018 != -1)
  {
    swift_once();
  }

  v41 = sub_1DB09D4B4();
  __swift_project_value_buffer(v41, qword_1EE304020);
  v42 = sub_1DB09D494();
  v43 = sub_1DB09DB54();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    *v44 = 0;
    _os_log_impl(&dword_1DAF16000, v42, v43, "using guids from pre-generated assessment", v44, 2u);
    MEMORY[0x1E1281810](v44, -1, -1);
  }

  v45 = *(v67 + 24);
  *&v81[0] = *(v67 + 16);
  *(&v81[0] + 1) = v45;

  sub_1DB09DE44();

  v79 = 0xD000000000000016;
  v80 = 0x80000001DB0C7F00;
  v46 = ODIClientGUID.description.getter();
  MEMORY[0x1E127FE90](v46);

  MEMORY[0x1E127FE90](2108448, 0xE300000000000000);
  v76 = v88;
  v77 = v89[0];
  v78 = *&v89[1];
  v72 = v84;
  v73 = v85;
  v74 = v86;
  v75 = v87;
  v70 = v82;
  v71 = v83;
  v47 = ODIClientGUID.description.getter();
  MEMORY[0x1E127FE90](v47);

  LOBYTE(v70) = 14;
  CoreODILogger.debug(_:category:)(0xD000000000000016, 0x80000001DB0C7F00, &v70);
  sub_1DAF4AC40(v9, v10);

  sub_1DAF4AC40(v69, v143);

  v48 = v107[0];
  *(a2 + 96) = v106;
  *(a2 + 112) = v48;
  v49 = v103;
  *(a2 + 32) = v102;
  *(a2 + 48) = v49;
  v50 = v105;
  *(a2 + 64) = v104;
  *(a2 + 80) = v50;
  v51 = v101;
  *a2 = v100;
  *(a2 + 16) = v51;
  v52 = v86;
  *(a2 + 216) = v87;
  v53 = v89[0];
  *(a2 + 232) = v88;
  *(a2 + 248) = v53;
  v54 = v82;
  *(a2 + 152) = v83;
  v55 = v85;
  *(a2 + 168) = v84;
  *(a2 + 184) = v55;
  *(a2 + 200) = v52;
  *(a2 + 128) = *&v107[1];
  *(a2 + 264) = *&v89[1];
  *(a2 + 136) = v54;
  return result;
}

double sub_1DAFDC9D4@<D0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(v3 + 32);
  v4 = *(v3 + 40);
  v6 = *(v3 + 96);
  v97 = *(v3 + 80);
  v98 = v6;
  v99 = *(v3 + 112);
  v7 = *(v3 + 64);
  v95 = *(v3 + 48);
  v96 = v7;
  if (v4)
  {
    v87 = v5;
    v88 = v4;
    v9 = *(v3 + 96);
    v91 = *(v3 + 80);
    v92 = v9;
    v93 = *(v3 + 112);
    v10 = *(v3 + 64);
    v89 = *(v3 + 48);
    v90 = v10;
    DIPClientGUIDFactory.createNewAssessmentGUID(serverTime:)(&v94, *&a1);
    if (!v14)
    {
      v86 = v94;
      object = v94.hash._object;
      countAndFlagsBits = v94.hash._countAndFlagsBits;

      v17 = sub_1DAF61348(countAndFlagsBits, object);
      if (v18 >> 60 == 15)
      {
        sub_1DAF49F04(&v86);
        sub_1DB09DE44();

        *&v85.version = 0xD000000000000026;
        v85.dsid._countAndFlagsBits = 0x80000001DB0C7D70;
        MEMORY[0x1E127FE90](countAndFlagsBits, object);

        MEMORY[0x1E127FE90](41, 0xE100000000000000);
        v100 = 0xD000000000000026;
        if (qword_1EE301E08 != -1)
        {
          swift_once();
        }

        v30 = MEMORY[0x1E69E7CC0];
        v31 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
        v32 = *(v31 + 16);

        if (v32)
        {
          v33 = sub_1DAF35210(0x636F766E4949444FLL, 0xEE00736E6F697461);
          if (v34)
          {
            sub_1DAF409DC(*(v31 + 56) + 32 * v33, &v85);
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
            if (swift_dynamicCast())
            {
              v30 = *&v77.version;
            }
          }
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v30 = sub_1DAF72EC0(0, *(v30 + 2) + 1, 1, v30);
        }

        v36 = *(v30 + 2);
        v35 = *(v30 + 3);
        if (v36 >= v35 >> 1)
        {
          v30 = sub_1DAF72EC0((v35 > 1), v36 + 1, 1, v30);
        }

        *(v30 + 2) = v36 + 1;
        v37 = &v30[56 * v36];
        *(v37 + 4) = v100;
        *(v37 + 5) = 0x80000001DB0C7D70;
        *(v37 + 6) = 0xD000000000000030;
        *(v37 + 7) = 0x80000001DB0C3BA0;
        *(v37 + 8) = 0xD00000000000001ALL;
        *(v37 + 9) = 0x80000001DB0C7D50;
        *(v37 + 10) = 159;
        v85.mid._countAndFlagsBits = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
        *&v85.version = v30;
        sub_1DAF40D20(&v85, &v77);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v75.version = v31;
        sub_1DAF3B11C(&v77, 0x636F766E4949444FLL, 0xEE00736E6F697461, isUniquelyReferenced_nonNull_native);
        v39 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
        v40 = sub_1DB09D6B4();
        v41 = sub_1DB09D604();
        [v39 initWithDomain:v40 code:-3170 userInfo:v41];

        swift_willThrow();
      }

      else
      {
        v73 = v17;
        v100 = v18;
        v78 = v5;
        v79 = v4;
        v82 = v97;
        v83 = v98;
        v84 = v99;
        v80 = v95;
        v81 = v96;
        v42._countAndFlagsBits = a1;
        v42._object = a2;
        DIPClientGUIDFactory.createNewTrainingGUID(serverTime:)(&v85, v42);
        if (v43)
        {
          sub_1DAF4AC40(v73, v100);
          sub_1DAF49F04(&v86);
        }

        else
        {
          v77 = v85;
          v44 = v85.hash._object;
          v45 = v85.hash._countAndFlagsBits;

          v46 = sub_1DAF61348(v45, v44);
          if (v47 >> 60 == 15)
          {
            sub_1DAF49F04(&v86);

            sub_1DAF49F04(&v77);
            sub_1DB09DE44();

            *&v75.version = 0xD000000000000024;
            v75.dsid._countAndFlagsBits = 0x80000001DB0C7DA0;
            MEMORY[0x1E127FE90](v45, v44);

            MEMORY[0x1E127FE90](41, 0xE100000000000000);
            if (qword_1EE301E08 != -1)
            {
              swift_once();
            }

            v48 = MEMORY[0x1E69E7CC0];
            v49 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
            v50 = *(v49 + 16);

            if (v50)
            {
              v51 = sub_1DAF35210(0x636F766E4949444FLL, 0xEE00736E6F697461);
              if (v52)
              {
                sub_1DAF409DC(*(v49 + 56) + 32 * v51, &v75);
                __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
                if (swift_dynamicCast())
                {
                  v48 = *&v74.version;
                }
              }
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v48 = sub_1DAF72EC0(0, *(v48 + 2) + 1, 1, v48);
            }

            v54 = *(v48 + 2);
            v53 = *(v48 + 3);
            v55 = v54 + 1;
            if (v54 >= v53 >> 1)
            {
              v72 = sub_1DAF72EC0((v53 > 1), v54 + 1, 1, v48);
              v55 = v54 + 1;
              v48 = v72;
            }

            *(v48 + 2) = v55;
            v56 = &v48[56 * v54];
            *(v56 + 4) = 0xD000000000000024;
            *(v56 + 5) = 0x80000001DB0C7DA0;
            *(v56 + 6) = 0xD000000000000030;
            *(v56 + 7) = 0x80000001DB0C3BA0;
            *(v56 + 8) = 0xD00000000000001ALL;
            *(v56 + 9) = 0x80000001DB0C7D50;
            *(v56 + 10) = 166;
            v75.mid._countAndFlagsBits = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
            *&v75.version = v48;
            sub_1DAF40D20(&v75, &v74);
            v57 = swift_isUniquelyReferenced_nonNull_native();
            v76 = v49;
            sub_1DAF3B11C(&v74, 0x636F766E4949444FLL, 0xEE00736E6F697461, v57);
            v58 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
            v59 = sub_1DB09D6B4();
            v60 = sub_1DB09D604();
            [v58 initWithDomain:v59 code:-3170 userInfo:v60];

            swift_willThrow();
            sub_1DAF4AC40(v73, v100);
          }

          else
          {
            v74 = v86;
            v61 = v46;
            v62 = v47;
            nullsub_3();
            v75 = v77;
            nullsub_3();
            v63 = *&v74.rand._object;
            *(a3 + 96) = *&v74.deviceTime._object;
            *(a3 + 112) = v63;
            v64 = *&v74.chipID._object;
            *(a3 + 32) = *&v74.mid._object;
            *(a3 + 48) = v64;
            v65 = *&v74.serverTime._object;
            *(a3 + 64) = *&v74.ecid._object;
            *(a3 + 80) = v65;
            v66 = *&v74.dsid._object;
            *a3 = *&v74.version;
            *(a3 + 16) = v66;
            v67 = *&v75.ecid._object;
            *(a3 + 248) = *&v75.serverTime._object;
            v68 = *&v75.rand._object;
            *(a3 + 264) = *&v75.deviceTime._object;
            *(a3 + 280) = v68;
            v69 = *&v75.version;
            *(a3 + 184) = *&v75.dsid._object;
            result = *&v75.mid._object;
            v70 = *&v75.chipID._object;
            *(a3 + 200) = *&v75.mid._object;
            *(a3 + 216) = v70;
            *(a3 + 232) = v67;
            *(a3 + 128) = v74.hash._object;
            *(a3 + 136) = countAndFlagsBits;
            *(a3 + 144) = object;
            *(a3 + 152) = v73;
            *(a3 + 160) = v100;
            v71 = v75.hash._object;
            *(a3 + 168) = v69;
            *(a3 + 296) = v71;
            *(a3 + 304) = v45;
            *(a3 + 312) = v44;
            *(a3 + 320) = v61;
            *(a3 + 328) = v62;
          }
        }
      }
    }
  }

  else
  {
    if (qword_1EE301E08 != -1)
    {
      swift_once();
    }

    v19 = MEMORY[0x1E69E7CC0];
    v20 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
    if (*(v20 + 16))
    {
      v21 = sub_1DAF35210(0x636F766E4949444FLL, 0xEE00736E6F697461);
      if (v22)
      {
        sub_1DAF409DC(*(v20 + 56) + 32 * v21, &v94);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
        if (swift_dynamicCast())
        {
          v19 = *&v86.version;
        }
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v19 = sub_1DAF72EC0(0, *(v19 + 2) + 1, 1, v19);
    }

    v24 = *(v19 + 2);
    v23 = *(v19 + 3);
    if (v24 >= v23 >> 1)
    {
      v19 = sub_1DAF72EC0((v23 > 1), v24 + 1, 1, v19);
    }

    *(v19 + 2) = v24 + 1;
    v25 = &v19[56 * v24];
    *(v25 + 4) = 0xD000000000000018;
    *(v25 + 5) = 0x80000001DB0C7D30;
    *(v25 + 6) = 0xD000000000000030;
    *(v25 + 7) = 0x80000001DB0C3BA0;
    *(v25 + 8) = 0xD00000000000001ALL;
    *(v25 + 9) = 0x80000001DB0C7D50;
    *(v25 + 10) = 152;
    v94.mid._countAndFlagsBits = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
    *&v94.version = v19;
    sub_1DAF40D20(&v94, &v86);
    v26 = swift_isUniquelyReferenced_nonNull_native();
    *&v85.version = v20;
    sub_1DAF3B11C(&v86, 0x636F766E4949444FLL, 0xEE00736E6F697461, v26);
    v27 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v28 = sub_1DB09D6B4();
    v29 = sub_1DB09D604();
    [v27 initWithDomain:v28 code:-3167 userInfo:v29];

    swift_willThrow();
  }

  return result;
}

uint64_t *ODNAssessmentGUIDManager.deinit()
{

  sub_1DAF8C598(v0[4], v0[5], v0[6], v0[7], v0[8], v0[9], v0[10], v0[11], v0[12], v0[13], v0[14]);
  return v0;
}

uint64_t ODNAssessmentGUIDManager.__deallocating_deinit()
{

  sub_1DAF8C598(v0[4], v0[5], v0[6], v0[7], v0[8], v0[9], v0[10], v0[11], v0[12], v0[13], v0[14]);

  return swift_deallocClassInstance();
}

uint64_t sub_1DAFDD59C(uint64_t a1, uint64_t a2)
{
  result = sub_1DB09CFA4();
  if (v5 >> 60 == 15)
  {
    v20 = result;
    if (qword_1EE301DE8 != -1)
    {
      swift_once();
    }

    v6 = qword_1EE30A148;
    v7 = sub_1DB09DB54();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0EEE0, &qword_1DB0A21E0);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1DB0A04E0;
    *(v8 + 56) = MEMORY[0x1E69E6158];
    *(v8 + 64) = sub_1DAF4DC24();
    *(v8 + 32) = a1;
    *(v8 + 40) = a2;

    sub_1DB09D444("Invalid assessment GUID: %{public}@", 35, 2, &dword_1DAF16000, v6, v7, v8);

    if (qword_1EE301E08 != -1)
    {
      swift_once();
    }

    v9 = MEMORY[0x1E69E7CC0];
    v10 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
    if (*(v10 + 16))
    {
      v11 = sub_1DAF35210(0x636F766E4949444FLL, 0xEE00736E6F697461);
      if (v12)
      {
        sub_1DAF409DC(*(v10 + 56) + 32 * v11, &v22);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
        if (swift_dynamicCast())
        {
          v9 = *&v21[0];
        }
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_1DAF72EC0(0, *(v9 + 2) + 1, 1, v9);
    }

    v14 = *(v9 + 2);
    v13 = *(v9 + 3);
    if (v14 >= v13 >> 1)
    {
      v9 = sub_1DAF72EC0((v13 > 1), v14 + 1, 1, v9);
    }

    *(v9 + 2) = v14 + 1;
    v15 = &v9[56 * v14];
    *(v15 + 4) = 0xD00000000000001DLL;
    *(v15 + 5) = 0x80000001DB0C2C00;
    *(v15 + 6) = 0xD000000000000024;
    *(v15 + 7) = 0x80000001DB0C27D0;
    *(v15 + 8) = 0xD00000000000001FLL;
    *(v15 + 9) = 0x80000001DB0C2C20;
    *(v15 + 10) = 454;
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
    *&v22 = v9;
    sub_1DAF40D20(&v22, v21);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v10;
    sub_1DAF3B11C(v21, 0x636F766E4949444FLL, 0xEE00736E6F697461, isUniquelyReferenced_nonNull_native);
    v17 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v18 = sub_1DB09D6B4();
    v19 = sub_1DB09D604();
    [v17 initWithDomain:v18 code:-2103 userInfo:v19];

    swift_willThrow();
    return v20;
  }

  return result;
}

uint64_t sub_1DAFDD930(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_1DB09CFA4();
  if (v5 >> 60 == 15)
  {
    goto LABEL_4;
  }

  v6 = v4;
  v7 = v5;
  v8 = sub_1DB09CFA4();
  if (v9 >> 60 == 15)
  {
    sub_1DAF4AC40(v6, v7);
LABEL_4:
    v14 = 45;
    v15 = 0xE100000000000000;
    LOBYTE(v13[0]) = 14;
    CoreODILogger.info(_:category:)(0xD000000000000035, 0x80000001DB0C7DD0, v13);

    return 0;
  }

  v10 = v8;
  v11 = v9;
  sub_1DB09CC24();
  swift_allocObject();
  sub_1DB09CC14();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E880, &qword_1DB0A6640);
  sub_1DAFDEC70(&qword_1ECC0E888, &qword_1ECC0E880, &qword_1DB0A6640);
  sub_1DB09CC04();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F018, &unk_1DB0AFAA0);
  sub_1DAFDEC70(&qword_1ECC0F020, &qword_1ECC0F018, &unk_1DB0AFAA0);
  sub_1DB09CC04();
  sub_1DAF4AC40(v6, v7);

  sub_1DAF4AC40(v10, v11);
  return v14;
}

void sub_1DAFDE06C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {

    v13 = sub_1DAFD1584(a1, a2);
    if (v6)
    {

      return;
    }

    v16 = v13;
    v17 = SecCertificateCopyKey(v13);
    if (v17)
    {
      v18 = v17;
      v19 = sub_1DAFD1B20(v17);
      v21 = v20;

      if (v21 >> 60 != 15)
      {
        v64 = v19;
        v65 = v21;
        v33 = type metadata accessor for DIPECIESSessionECV3SH();
        swift_allocObject();
        v70 = v33;
        v71 = &off_1F56C5B50;
        *&v69 = sub_1DAFB3BEC(0);
        v34 = v69;
        sub_1DB09CD84();
        swift_allocObject();

        v63 = sub_1DB09CD54();
        v35 = v16;
        sub_1DAF4ED88(v64, v65);
        v36 = SecCertificateCopyKey(v35);
        if (v36)
        {
          v37 = v36;
          sub_1DAF3523C(&v69, &v66);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E880, &qword_1DB0A6640);
          swift_allocObject();
          sub_1DAFDAA30(2, &v66, v37, 0x4100000000, v63 | 0x4000000000000000, v64, v65, 49, 0xE100000000000000, a3, a4, sub_1DAFDED18, &type metadata for TrainingSignalId);
          __swift_destroy_boxed_opaque_existential_1Tm(&v69);

          v70 = v33;
          v71 = &off_1F56C5B50;
          *&v69 = v34;
          swift_allocObject();

          v49 = sub_1DB09CD54();
          v50 = SecCertificateCopyKey(v35);
          if (v50)
          {
            v51 = v50;
            sub_1DAF3523C(&v69, &v66);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F018, &unk_1DB0AFAA0);
            swift_allocObject();
            sub_1DAFDAA30(2, &v66, v51, 0x4100000000, v49 | 0x4000000000000000, v64, v65, 49, 0xE100000000000000, a5, a6, sub_1DAFDECC4, &type metadata for AssessmentGUIDContainer);

            __swift_destroy_boxed_opaque_existential_1Tm(&v69);
            return;
          }

          if (qword_1EE300B90 != -1)
          {
            swift_once();
          }

          v52 = MEMORY[0x1E69E7CC0];
          v53 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
          if (*(v53 + 16))
          {
            v54 = sub_1DAF35210(0x636F766E49504944, 0xEE00736E6F697461);
            if (v55)
            {
              sub_1DAF409DC(*(v53 + 56) + 32 * v54, &v66);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E478, &qword_1DB0A09A0);
              if (swift_dynamicCast())
              {
                v52 = *&v68[0];
              }
            }
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v52 = sub_1DAF72FF4(0, *(v52 + 2) + 1, 1, v52);
          }

          v57 = *(v52 + 2);
          v56 = *(v52 + 3);
          if (v57 >= v56 >> 1)
          {
            v52 = sub_1DAF72FF4((v56 > 1), v57 + 1, 1, v52);
          }

          *(v52 + 2) = v57 + 1;
          v58 = &v52[56 * v57];
          *(v58 + 4) = 0xD00000000000003FLL;
          *(v58 + 5) = 0x80000001DB0C7FF0;
          *(v58 + 6) = 0xD000000000000031;
          *(v58 + 7) = 0x80000001DB0C8030;
          *(v58 + 8) = 0xD000000000000050;
          *(v58 + 9) = 0x80000001DB0C8070;
          *(v58 + 10) = 128;
          v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E478, &qword_1DB0A09A0);
          *&v66 = v52;
          sub_1DAF40D20(&v66, v68);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v72 = v53;
          sub_1DAF3B11C(v68, 0x636F766E49504944, 0xEE00736E6F697461, isUniquelyReferenced_nonNull_native);
          v60 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
          v61 = sub_1DB09D6B4();
          v62 = sub_1DB09D604();
          [v60 initWithDomain:v61 code:-1 userInfo:v62];

          swift_willThrow();

          sub_1DAF4AC40(v64, v65);
        }

        else
        {
          sub_1DAF4AC40(v64, v65);

          if (qword_1EE300B90 != -1)
          {
            swift_once();
          }

          v38 = MEMORY[0x1E69E7CC0];
          v39 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
          if (*(v39 + 16))
          {
            v40 = sub_1DAF35210(0x636F766E49504944, 0xEE00736E6F697461);
            if (v41)
            {
              sub_1DAF409DC(*(v39 + 56) + 32 * v40, &v66);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E478, &qword_1DB0A09A0);
              if (swift_dynamicCast())
              {
                v38 = *&v68[0];
              }
            }
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v38 = sub_1DAF72FF4(0, *(v38 + 2) + 1, 1, v38);
          }

          v43 = *(v38 + 2);
          v42 = *(v38 + 3);
          if (v43 >= v42 >> 1)
          {
            v38 = sub_1DAF72FF4((v42 > 1), v43 + 1, 1, v38);
          }

          *(v38 + 2) = v43 + 1;
          v44 = &v38[56 * v43];
          *(v44 + 4) = 0xD00000000000003FLL;
          *(v44 + 5) = 0x80000001DB0C7FF0;
          *(v44 + 6) = 0xD000000000000031;
          *(v44 + 7) = 0x80000001DB0C8030;
          *(v44 + 8) = 0xD000000000000050;
          *(v44 + 9) = 0x80000001DB0C8070;
          *(v44 + 10) = 128;
          v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E478, &qword_1DB0A09A0);
          *&v66 = v38;
          sub_1DAF40D20(&v66, v68);
          v45 = swift_isUniquelyReferenced_nonNull_native();
          v72 = v39;
          sub_1DAF3B11C(v68, 0x636F766E49504944, 0xEE00736E6F697461, v45);
          v46 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
          v47 = sub_1DB09D6B4();
          v48 = sub_1DB09D604();
          [v46 initWithDomain:v47 code:-1 userInfo:v48];

          swift_willThrow();

          sub_1DAF4AC40(v64, v65);
        }

        __swift_destroy_boxed_opaque_existential_1Tm(&v69);
        return;
      }
    }

    if (qword_1EE301E08 != -1)
    {
      swift_once();
    }

    v22 = MEMORY[0x1E69E7CC0];
    v23 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
    if (*(v23 + 16))
    {
      v24 = sub_1DAF35210(0x636F766E4949444FLL, 0xEE00736E6F697461);
      if (v25)
      {
        sub_1DAF409DC(*(v23 + 56) + 32 * v24, &v69);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
        if (swift_dynamicCast())
        {
          v22 = v66;
        }
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v22 = sub_1DAF72EC0(0, *(v22 + 16) + 1, 1, v22);
    }

    v27 = *(v22 + 16);
    v26 = *(v22 + 24);
    if (v27 >= v26 >> 1)
    {
      v22 = sub_1DAF72EC0((v26 > 1), v27 + 1, 1, v22);
    }

    *(v22 + 16) = v27 + 1;
    v28 = (v22 + 56 * v27);
    v28[4] = 0xD00000000000003ALL;
    v28[5] = 0x80000001DB0C7F60;
    v28[6] = 0xD000000000000030;
    v28[7] = 0x80000001DB0C3BA0;
    v28[8] = 0xD00000000000004BLL;
    v28[9] = 0x80000001DB0C7FA0;
    v28[10] = 118;
    v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
    *&v69 = v22;
    sub_1DAF40D20(&v69, &v66);
    v29 = swift_isUniquelyReferenced_nonNull_native();
    *&v68[0] = v23;
    sub_1DAF3B11C(&v66, 0x636F766E4949444FLL, 0xEE00736E6F697461, v29);
    v30 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v31 = sub_1DB09D6B4();
    v32 = sub_1DB09D604();
    [v30 initWithDomain:v31 code:-1307 userInfo:v32];

    swift_willThrow();
  }

  else
  {
    if (qword_1EE301DE8 != -1)
    {
      swift_once();
    }

    v14 = qword_1EE30A148;
    v15 = sub_1DB09DB44();
    sub_1DB09D444("No tsidEnc cert provided, skipping encryption and sending nil", 61, 2, &dword_1DAF16000, v14, v15, MEMORY[0x1E69E7CC0]);
  }
}

uint64_t sub_1DAFDEC70(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DAFDECC4()
{
  result = qword_1EE302178;
  if (!qword_1EE302178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE302178);
  }

  return result;
}

unint64_t sub_1DAFDED18()
{
  result = qword_1EE302D60;
  if (!qword_1EE302D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE302D60);
  }

  return result;
}

uint64_t sub_1DAFDED6C()
{
  v1[9] = v0;
  v1[10] = swift_getObjectType();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F0B0, &qword_1DB0A2820);
  v1[11] = v2;
  v1[12] = *(v2 - 8);
  v1[13] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F0D0, &qword_1DB0A2850);
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DAFDEE88, v0, 0);
}

uint64_t sub_1DAFDEE88()
{
  v20 = v0;
  v1 = v0[15];
  v2 = v0[11];
  v3 = v0[12];
  v4 = v0[9];
  v5 = OBJC_IVAR____TtC17CoreODIEssentials20ODINFHardwareMonitor_continuation;
  swift_beginAccess();
  sub_1DAFE43FC(v4 + v5, v1);
  if ((*(v3 + 48))(v1, 1, v2))
  {
    sub_1DAF40AEC(v0[15], &qword_1ECC0F0D0, &qword_1DB0A2850);
  }

  else
  {
    v6 = v0[15];
    v8 = v0[12];
    v7 = v0[13];
    v9 = v0[11];
    (*(v8 + 16))(v7, v6, v9);
    sub_1DAF40AEC(v6, &qword_1ECC0F0D0, &qword_1DB0A2850);
    sub_1DAFE42F4();
    v10 = swift_allocError();
    *v11 = 2;
    v0[8] = v10;
    sub_1DB09D9A4();
    (*(v8 + 8))(v7, v9);
  }

  v12 = v0[14];
  v18 = *(v0 + 9);
  (*(v0[12] + 56))(v12, 1, 1, v0[11]);
  swift_beginAccess();
  sub_1DAFE446C(v12, v4 + v5);
  swift_endAccess();
  v19 = 0;
  CoreODILogger.debug(_:category:)(0xD000000000000031, 0x80000001DB0C8440, &v19);

  v13 = sub_1DAFE44DC(&qword_1ECC0F0D8, 255, type metadata accessor for ODINFHardwareMonitor, &unk_1DB0AE9B4);
  v14 = swift_task_alloc();
  v0[16] = v14;
  *(v14 + 16) = v18;
  v15 = swift_task_alloc();
  v0[17] = v15;
  *v15 = v0;
  v15[1] = sub_1DAFDF180;
  v16 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v15, v18, v13, 0xD000000000000015, 0x80000001DB0C8480, sub_1DAFE4524, v14, v16);
}

uint64_t sub_1DAFDF180()
{
  v2 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v3 = *(v2 + 72);
    v4 = sub_1DAFDF320;
  }

  else
  {
    v5 = *(v2 + 72);

    v4 = sub_1DAFDF2A8;
    v3 = v5;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1DAFDF2A8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DAFDF320()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DAFDF3A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0ECE0, &unk_1DB0A21D0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v19 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F0D0, &qword_1DB0A2850);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v19 - v10;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F0B0, &qword_1DB0A2820);
  v13 = *(v12 - 8);
  (*(v13 + 16))(v11, a1, v12);
  (*(v13 + 56))(v11, 0, 1, v12);
  v14 = OBJC_IVAR____TtC17CoreODIEssentials20ODINFHardwareMonitor_continuation;
  swift_beginAccess();
  sub_1DAFE446C(v11, a2 + v14);
  swift_endAccess();
  v15 = sub_1DB09DA24();
  (*(*(v15 - 8) + 56))(v8, 1, 1, v15);
  v16 = sub_1DAFE44DC(&qword_1ECC0F0D8, 255, type metadata accessor for ODINFHardwareMonitor, &unk_1DB0AE9B4);
  v17 = swift_allocObject();
  v17[2] = a2;
  v17[3] = v16;
  v17[4] = a2;
  v17[5] = a3;
  swift_retain_n();
  sub_1DAF5B2C0(0, 0, v8, &unk_1DB0AEA18, v17);
}

uint64_t sub_1DAFDF674()
{
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_1DAFDF70C;

  return MEMORY[0x1EEE6DA60](1000000000);
}

uint64_t sub_1DAFDF70C()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {
    v6 = *(v2 + 16);

    return MEMORY[0x1EEE6DFA0](sub_1DAFDF850, v6, 0);
  }
}

uint64_t sub_1DAFDF850()
{
  v4 = v0;
  v3 = 0;
  CoreODILogger.info(_:category:)(0xD000000000000049, 0x80000001DB0C84A0, &v3);

  sub_1DAFDF914();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DAFDF914()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F0B0, &qword_1DB0A2820);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v14[-v4];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F0D0, &qword_1DB0A2850);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v14[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v14[-v10];
  v12 = OBJC_IVAR____TtC17CoreODIEssentials20ODINFHardwareMonitor_continuation;
  swift_beginAccess();
  sub_1DAFE43FC(v1 + v12, v11);
  if ((*(v3 + 48))(v11, 1, v2))
  {
    sub_1DAF40AEC(v11, &qword_1ECC0F0D0, &qword_1DB0A2850);
  }

  else
  {
    (*(v3 + 16))(v5, v11, v2);
    sub_1DAF40AEC(v11, &qword_1ECC0F0D0, &qword_1DB0A2850);
    sub_1DB09D9B4();
    (*(v3 + 8))(v5, v2);
  }

  (*(v3 + 56))(v9, 1, 1, v2);
  swift_beginAccess();
  sub_1DAFE446C(v9, v1 + v12);
  return swift_endAccess();
}

uint64_t sub_1DAFDFB50()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0ECE0, &unk_1DB0A21D0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v8 - v3;
  v10 = 0x657261685369646FLL;
  v11 = 0xEF726567676F4C64;
  v9 = 0;
  CoreODILogger.info(_:category:)(0xD00000000000002FLL, 0x80000001DB0C8410, &v9);

  sub_1DB09D9F4();
  v5 = sub_1DB09DA24();
  (*(*(v5 - 8) + 56))(v4, 0, 1, v5);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v1;

  sub_1DAF4F0EC(0, 0, v4, &unk_1DB0AEA00, v6);
}

uint64_t sub_1DAFDFCBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F0B0, &qword_1DB0A2820);
  v4[9] = v6;
  v4[10] = *(v6 - 8);
  v4[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F0D0, &qword_1DB0A2850);
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DAFDFDD0, a4, 0);
}

uint64_t sub_1DAFDFDD0()
{
  v1 = v0[13];
  v2 = v0[9];
  v3 = v0[10];
  v4 = v0[8];
  v5 = OBJC_IVAR____TtC17CoreODIEssentials20ODINFHardwareMonitor_continuation;
  swift_beginAccess();
  sub_1DAFE43FC(v4 + v5, v1);
  v6 = (*(v3 + 48))(v1, 1, v2);
  v7 = v0[13];
  if (v6)
  {
    sub_1DAF40AEC(v0[13], &qword_1ECC0F0D0, &qword_1DB0A2850);
  }

  else
  {
    v9 = v0[10];
    v8 = v0[11];
    v10 = v0[9];
    (*(v9 + 16))(v8, v0[13], v10);
    sub_1DAF40AEC(v7, &qword_1ECC0F0D0, &qword_1DB0A2850);
    sub_1DB09D9B4();
    (*(v9 + 8))(v8, v10);
  }

  v11 = v0[12];
  (*(v0[10] + 56))(v11, 1, 1, v0[9]);
  swift_beginAccess();
  sub_1DAFE446C(v11, v4 + v5);
  swift_endAccess();

  v12 = v0[1];

  return v12();
}

id sub_1DAFDFFB4()
{
  v1 = swift_allocObject();
  swift_defaultActor_initialize();
  v2 = OBJC_IVAR____TtC17CoreODIEssentials20ODINFHardwareMonitor_continuation;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F0B0, &qword_1DB0A2820);
  (*(*(v3 - 8) + 56))(&v1[v2], 1, 1, v3);
  v5.receiver = v1;
  v5.super_class = v0;
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t sub_1DAFE00FC()
{
  sub_1DAF40AEC(v0 + OBJC_IVAR____TtC17CoreODIEssentials20ODINFHardwareMonitor_continuation, &qword_1ECC0F0D0, &qword_1DB0A2850);
  swift_defaultActor_destroy();

  return swift_defaultActor_deallocate();
}

double sub_1DAFE014C(uint64_t a1)
{
  type metadata accessor for DeviceInformation();
  v1 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v1 + 144) = 0;
  result = 0.0;
  *(v1 + 112) = 0u;
  *(v1 + 128) = 0u;
  qword_1EE302C80 = v1;
  return result;
}

uint64_t static DeviceInformation.shared.getter()
{
  if (qword_1EE302C70 != -1)
  {
    swift_once();
  }
}

uint64_t DeviceInformation.DeviceInfoError.hashValue.getter()
{
  v1 = *v0;
  sub_1DB09E3A4();
  MEMORY[0x1E1280A80](v1);
  return sub_1DB09E3E4();
}

uint64_t sub_1DAFE0298()
{
  v1 = *(v0 + 176);
  v2 = *(v1 + 120);
  if (v2)
  {
    v3 = *(v1 + 112);
    v5 = *(v0 + 8);

    return v5(v3, v2);
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1DAFE035C, 0, 0);
  }
}

uint64_t sub_1DAFE035C()
{
  if (qword_1EE3039A0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EE3039B0;
  *(v0 + 184) = qword_1EE3039B0;

  return MEMORY[0x1EEE6DFA0](sub_1DAFE03F4, v1, 0);
}

uint64_t sub_1DAFE03F4()
{
  v1 = *(v0 + 184);
  if (*(v1 + 168))
  {

    return MEMORY[0x1EEE6DFA0](sub_1DAFE05D4, v1, 0);
  }

  else
  {
    v2 = swift_task_alloc();
    *(v0 + 192) = v2;
    *v2 = v0;
    v2[1] = sub_1DAFE04C4;

    return sub_1DAFC5F3C();
  }
}

uint64_t sub_1DAFE04C4()
{
  v1 = *v0;

  v2 = *(v1 + 184);

  return MEMORY[0x1EEE6DFA0](sub_1DAFE05D4, v2, 0);
}

uint64_t sub_1DAFE05D4()
{
  v1 = v0[23];
  v2 = sub_1DAFE44DC(&qword_1EE303990, 255, type metadata accessor for ODIDeviceInfo, &protocol conformance descriptor for ODIDeviceInfo);
  v0[25] = v2;
  v3 = swift_task_alloc();
  v0[26] = v3;
  v3[2] = v1;
  v3[3] = 0x54746375646F7250;
  v3[4] = 0xEB00000000657079;
  v4 = swift_task_alloc();
  v0[27] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAE0, &unk_1DB0A4650);
  v0[28] = v5;
  *v4 = v0;
  v4[1] = sub_1DAFE0748;

  return MEMORY[0x1EEE6DDE0](v0 + 10, v1, v2, 0x736E41474D746567, 0xEF293A5F28726577, sub_1DAFA7214, v3, v5);
}

uint64_t sub_1DAFE0748()
{
  v1 = *v0;
  v2 = *(*v0 + 184);

  *(v1 + 232) = *(v1 + 80);

  return MEMORY[0x1EEE6DFA0](sub_1DAFE0884, v2, 0);
}

uint64_t sub_1DAFE0884()
{
  v1 = v0[25];
  v2 = v0[23];
  v3 = swift_task_alloc();
  v0[31] = v3;
  v3[2] = v2;
  v3[3] = 0x4E746375646F7250;
  v3[4] = 0xEB00000000656D61;
  v4 = swift_task_alloc();
  v0[32] = v4;
  *v4 = v0;
  v4[1] = sub_1DAFE09A4;
  v5 = v0[28];

  return MEMORY[0x1EEE6DDE0](v0 + 12, v2, v1, 0x736E41474D746567, 0xEF293A5F28726577, sub_1DAFB3BE8, v3, v5);
}

uint64_t sub_1DAFE09A4()
{
  v1 = *v0;
  v2 = *(*v0 + 184);

  *(v1 + 264) = *(v1 + 96);

  return MEMORY[0x1EEE6DFA0](sub_1DAFE0AE4, v2, 0);
}

uint64_t sub_1DAFE0AE4()
{
  v1 = v0[25];
  v2 = v0[23];
  v3 = swift_task_alloc();
  v0[35] = v3;
  *(v3 + 16) = v2;
  strcpy((v3 + 24), "ProductVersion");
  *(v3 + 39) = -18;
  v4 = swift_task_alloc();
  v0[36] = v4;
  *v4 = v0;
  v4[1] = sub_1DAFE0C08;
  v5 = v0[28];

  return MEMORY[0x1EEE6DDE0](v0 + 14, v2, v1, 0x736E41474D746567, 0xEF293A5F28726577, sub_1DAFB3BE8, v3, v5);
}

uint64_t sub_1DAFE0C08()
{
  v1 = *v0;
  v2 = *(*v0 + 184);

  *(v1 + 296) = *(v1 + 112);

  return MEMORY[0x1EEE6DFA0](sub_1DAFE0D48, v2, 0);
}

uint64_t sub_1DAFE0D48()
{
  v1 = v0[25];
  v2 = v0[23];
  v3 = swift_task_alloc();
  v0[39] = v3;
  *(v3 + 16) = v2;
  strcpy((v3 + 24), "BuildVersion");
  *(v3 + 37) = 0;
  *(v3 + 38) = -5120;
  v4 = swift_task_alloc();
  v0[40] = v4;
  *v4 = v0;
  v4[1] = sub_1DAFE0E68;
  v5 = v0[28];

  return MEMORY[0x1EEE6DDE0](v0 + 16, v2, v1, 0x736E41474D746567, 0xEF293A5F28726577, sub_1DAFB3BE8, v3, v5);
}

uint64_t sub_1DAFE0E68()
{
  v1 = *v0;
  v2 = *(*v0 + 176);

  *(v1 + 328) = *(v1 + 128);

  return MEMORY[0x1EEE6DFA0](sub_1DAFE0FA8, v2, 0);
}

id sub_1DAFE0FA8(uint64_t a1)
{
  v3 = *(v1 + 328);
  v2 = *(v1 + 336);
  type metadata accessor for DeviceInformation();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = objc_opt_self();
  result = [v5 bundleForClass_];
  v7 = *MEMORY[0x1E695E500];
  if (!*MEMORY[0x1E695E500])
  {
    __break(1u);
    return result;
  }

  v8 = result;
  if ([result objectForInfoDictionaryKey_])
  {
    sub_1DB09DCE4();
    swift_unknownObjectRelease();
  }

  else
  {
    v39 = 0u;
    v42 = 0u;
  }

  *(v1 + 16) = v39;
  *(v1 + 32) = v42;
  if (*(v1 + 40))
  {
    if (swift_dynamicCast())
    {
      v35 = *(v1 + 160);
      v36 = *(v1 + 168);
      goto LABEL_10;
    }
  }

  else
  {
    sub_1DAF40AEC(v1 + 16, &qword_1ECC0E370, &qword_1DB0A09B0);
  }

  v35 = 7104878;
  v36 = 0xE300000000000000;
LABEL_10:
  v9 = [v8 bundleIdentifier];
  if (v9)
  {
    v10 = v9;
    v33 = sub_1DB09D6C4();
    v34 = v11;
  }

  else
  {
    v33 = 7104878;
    v34 = 0xE300000000000000;
  }

  v12 = [v5 mainBundle];
  if ([v12 objectForInfoDictionaryKey_])
  {
    sub_1DB09DCE4();
    swift_unknownObjectRelease();
  }

  else
  {
    v39 = 0u;
    v42 = 0u;
  }

  *(v1 + 48) = v39;
  *(v1 + 64) = v42;
  v38 = v8;
  if (!*(v1 + 72))
  {
    sub_1DAF40AEC(v1 + 48, &qword_1ECC0E370, &qword_1DB0A09B0);
    goto LABEL_20;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_20:
    v14 = 0xE300000000000000;
    v13 = 7104878;
    goto LABEL_21;
  }

  v13 = *(v1 + 144);
  v14 = *(v1 + 152);
LABEL_21:
  v32 = v13;
  v15 = [v12 bundleIdentifier];
  v16 = 0xE300000000000000;
  v37 = v12;
  if (v15)
  {
    v17 = v15;
    v30 = sub_1DB09D6C4();
    v19 = v18;
  }

  else
  {
    v30 = 7104878;
    v19 = 0xE300000000000000;
  }

  if (v2)
  {
    v20 = v2;
  }

  else
  {
    v20 = 0xE300000000000000;
  }

  if (!v2)
  {
    v3 = 7104878;
  }

  v21 = *(v1 + 304);
  v22 = *(v1 + 272);
  v23 = *(v1 + 176);
  if (v21)
  {
    v24 = *(v1 + 304);
  }

  else
  {
    v24 = 0xE300000000000000;
  }

  if (v21)
  {
    v25 = *(v1 + 296);
  }

  else
  {
    v25 = 7104878;
  }

  if (v22)
  {
    v26 = *(v1 + 272);
  }

  else
  {
    v26 = 0xE300000000000000;
  }

  if (v22)
  {
    v27 = *(v1 + 264);
  }

  else
  {
    v27 = 7104878;
  }

  if (*(v1 + 240))
  {
    v16 = *(v1 + 240);
    v28 = *(v1 + 232);
  }

  else
  {
    v28 = 7104878;
  }

  v31 = v28;
  v40 = v27;
  v41 = v26;
  MEMORY[0x1E127FE90](59, 0xE100000000000000);
  MEMORY[0x1E127FE90](v25, v24);

  MEMORY[0x1E127FE90](59, 0xE100000000000000);
  MEMORY[0x1E127FE90](v3, v20);

  MEMORY[0x1E127FE90](47, 0xE100000000000000);
  MEMORY[0x1E127FE90](v35, v36);

  MEMORY[0x1E127FE90](10272, 0xE200000000000000);
  MEMORY[0x1E127FE90](v30, v19);

  MEMORY[0x1E127FE90](47, 0xE100000000000000);
  MEMORY[0x1E127FE90](v32, v14);

  MEMORY[0x1E127FE90](41, 0xE100000000000000);
  MEMORY[0x1E127FE90](v31, v16);

  MEMORY[0x1E127FE90](3940414, 0xE300000000000000);
  MEMORY[0x1E127FE90](v40, v41);

  MEMORY[0x1E127FE90](3940414, 0xE300000000000000);
  MEMORY[0x1E127FE90](v33, v34);

  MEMORY[0x1E127FE90](62, 0xE100000000000000);

  *(v23 + 112) = 60;
  *(v23 + 120) = 0xE100000000000000;

  v29 = *(v1 + 8);

  return v29(60, 0xE100000000000000);
}

uint64_t sub_1DAFE1498()
{
  v1 = [objc_opt_self() sharedHardwareManagerWithNoUI];
  v0[2].super_class = v1;
  v2 = type metadata accessor for ODINFHardwareMonitor(0);
  v3 = swift_allocObject();
  swift_defaultActor_initialize();
  v4 = OBJC_IVAR____TtC17CoreODIEssentials20ODINFHardwareMonitor_continuation;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F0B0, &qword_1DB0A2820);
  (*(*(v5 - 8) + 56))(v3 + v4, 1, 1, v5);
  v0[1].receiver = v3;
  v0[1].super_class = v2;
  v6 = objc_msgSendSuper2(v0 + 1, sel_init);
  v0[3].receiver = v6;
  [(objc_class *)v1 registerEventListener:v6];
  v7 = [(objc_class *)v1 getHwSupport];
  if ((v7 | 2) == 3)
  {
    v8 = swift_task_alloc();
    v0[3].super_class = v8;
    *v8 = v0;
    *(v8 + 1) = sub_1DAFE16FC;

    return sub_1DAFDED6C();
  }

  else
  {
    v10 = v7;
    [(objc_class *)v0[2].super_class unregisterEventListener:v0[3].receiver];
    receiver = v0[3].receiver;
    if (v10 == 2)
    {

      super_class = v0->super_class;
      v13 = v0[2].super_class;

      return super_class(v13);
    }

    else
    {
      v14 = v0[2].super_class;
      sub_1DAFE42F4();
      swift_allocError();
      *v15 = 0;
      swift_willThrow();

      v16 = v0->super_class;

      return v16();
    }
  }
}

uint64_t sub_1DAFE16FC()
{
  v2 = *v1;
  *(*v1 + 64) = v0;

  v3 = *(v2 + 32);
  if (v0)
  {
    v4 = sub_1DAFE193C;
  }

  else
  {
    v4 = sub_1DAFE1828;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1DAFE1828()
{
  v1 = [*(v0 + 40) getHwSupport];
  [*(v0 + 40) unregisterEventListener_];
  v2 = *(v0 + 48);
  if (v1 == 2)
  {

    v3 = *(v0 + 8);
    v4 = *(v0 + 40);

    return v3(v4);
  }

  else
  {
    v6 = *(v0 + 40);
    sub_1DAFE42F4();
    swift_allocError();
    *v7 = 0;
    swift_willThrow();

    v8 = *(v0 + 8);

    return v8();
  }
}

uint64_t sub_1DAFE193C()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1DAFE19A4(uint64_t a1)
{
  *(v2 + 176) = a1;
  *(v2 + 184) = v1;

  return MEMORY[0x1EEE6DFA0](sub_1DAFE1A34, v1, 0);
}

uint64_t sub_1DAFE1A34()
{
  v1 = swift_allocObject();
  v0[24] = v1;
  *(v1 + 16) = 0;
  v2 = swift_allocObject();
  v0[25] = v2;
  *(v2 + 16) = 0;
  v3 = swift_task_alloc();
  v0[26] = v3;
  *v3 = v0;
  v3[1] = sub_1DAFE1B28;

  return sub_1DAFE1478();
}

uint64_t sub_1DAFE1B28(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 216) = a1;
  *(v4 + 224) = v1;

  v5 = *(v3 + 184);
  if (v1)
  {
    v6 = sub_1DAFE23E0;
  }

  else
  {
    v6 = sub_1DAFE1C88;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1DAFE1C88(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 184);
  v4 = *(v3 + 144);
  v5 = v3;
  if (v4)
  {
LABEL_2:
    *(v2 + 232) = v4;
    v6 = *(v2 + 216);
    v7 = *(v3 + 136);
    v8 = sub_1DAFE44DC(&qword_1EE301480, a2, type metadata accessor for DeviceInformation, &protocol conformance descriptor for DeviceInformation);
    v9 = swift_task_alloc();
    *(v2 + 240) = v9;
    v10 = *(v2 + 192);
    *(v9 + 16) = v6;
    *(v9 + 24) = v10;
    *(v9 + 40) = v7;
    *(v9 + 48) = v4;

    v11 = swift_task_alloc();
    *(v2 + 248) = v11;
    *v11 = v2;
    v11[1] = sub_1DAFE21A4;

    return MEMORY[0x1EEE6DE38](v2 + 16, v5, v8, 0xD000000000000012, 0x80000001DB0C8390, sub_1DAFE420C, v9, &type metadata for ODNNearFieldData);
  }

  *(v2 + 160) = 0;
  v12 = [*(v2 + 216) cachedEmbeddedSecureElementSerialNumber_];
  v13 = *(v2 + 160);
  if (v12)
  {
    v14 = v12;
    v15 = sub_1DB09D6C4();
    v17 = v16;
    v18 = v13;

    *(v3 + 136) = v15;
    *(v3 + 144) = v17;

    v4 = *(v3 + 144);
    if (v4)
    {
      v5 = *(v2 + 184);
      goto LABEL_2;
    }

    if (qword_1EE301E08 != -1)
    {
      swift_once();
    }

    v21 = MEMORY[0x1E69E7CC0];
    v22 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
    if (*(v22 + 16))
    {
      v23 = sub_1DAF35210(0x636F766E4949444FLL, 0xEE00736E6F697461);
      if (v24)
      {
        sub_1DAF409DC(*(v22 + 56) + 32 * v23, v2 + 64);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
        if (swift_dynamicCast())
        {
          v21 = *(v2 + 168);
        }
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v21 = sub_1DAF72EC0(0, *(v21 + 2) + 1, 1, v21);
    }

    v26 = *(v21 + 2);
    v25 = *(v21 + 3);
    v27 = v26 + 1;
    if (v26 >= v25 >> 1)
    {
      v34 = sub_1DAF72EC0((v25 > 1), v26 + 1, 1, v21);
      v27 = v26 + 1;
      v21 = v34;
    }

    v19 = *(v2 + 216);
    *(v21 + 2) = v27;
    v28 = &v21[56 * v26];
    *(v28 + 4) = 0xD000000000000014;
    *(v28 + 5) = 0x80000001DB0C8340;
    *(v28 + 6) = 0xD000000000000029;
    *(v28 + 7) = 0x80000001DB0C8360;
    *(v28 + 8) = 0xD000000000000012;
    *(v28 + 9) = 0x80000001DB0C8390;
    *(v28 + 10) = 150;
    *(v2 + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
    *(v2 + 96) = v21;
    sub_1DAF40D20((v2 + 96), (v2 + 128));
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v36 = v22;
    sub_1DAF3B11C((v2 + 128), 0x636F766E4949444FLL, 0xEE00736E6F697461, isUniquelyReferenced_nonNull_native);
    v30 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v31 = sub_1DB09D6B4();
    v32 = sub_1DB09D604();
    [v30 initWithDomain:v31 code:-1118 userInfo:{v32, v36}];
  }

  else
  {
    v19 = *(v2 + 216);
    v20 = v13;
    sub_1DB09CE74();
  }

  swift_willThrow();

  v33 = *(v2 + 8);

  return v33();
}

uint64_t sub_1DAFE21A4()
{
  v2 = *v1;
  *(*v1 + 256) = v0;

  if (v0)
  {
    v3 = *(v2 + 184);
    v4 = sub_1DAFE2478;
  }

  else
  {
    v5 = *(v2 + 184);

    v4 = sub_1DAFE2320;
    v3 = v5;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1DAFE2320()
{
  v1 = *(v0 + 176);

  v2 = *(v0 + 48);
  v3 = *(v0 + 56);
  v4 = *(v0 + 32);
  *v1 = *(v0 + 16);
  *(v1 + 16) = v4;
  *(v1 + 32) = v2;
  *(v1 + 40) = v3;
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1DAFE23E0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DAFE2478()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DAFE2540(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v23 = a2;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F0B8, &unk_1DB0AE9E8);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v22 - v14;
  (*(v12 + 16))(&v22 - v14, a1, v11);
  v16 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = a3;
  *(v17 + 24) = a4;
  (*(v12 + 32))(v17 + v16, v15, v11);
  v18 = (v17 + ((v13 + v16 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v18 = a5;
  v18[1] = a6;
  aBlock[4] = sub_1DAFE421C;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DAFE2BCC;
  aBlock[3] = &block_descriptor_11;
  v19 = _Block_copy(aBlock);

  v20 = [v23 startSecureElementManagerSessionWithPriority_];
  _Block_release(v19);
  return swift_unknownObjectRelease();
}

void sub_1DAFE2750(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v52 = *MEMORY[0x1E69E9840];
  if (a1 && !a2)
  {
    swift_beginAccess();
    v50 = *(a3 + 16);
    swift_beginAccess();
    v49 = *(a4 + 16);
    v12 = v49;
    v13 = a1;
    v14 = [v13 getCryptogram:&v50 challengeResponse:&v49];
    v15 = v49;
    *(a4 + 16) = v49;
    v16 = v15;
    swift_endAccess();
    v17 = v50;
    v18 = *(a3 + 16);
    *(a3 + 16) = v50;
    v19 = v17;
    swift_endAccess();

    if (v14)
    {
      swift_beginAccess();
      v20 = *(a3 + 16);
      if (v20)
      {
        swift_beginAccess();
        v21 = *(a4 + 16);
        if (v21)
        {
          v22 = v20;
          v23 = v21;
          v24 = sub_1DB09D034();
          v26 = v25;
          v27 = v23;
          v28 = sub_1DB09D034();
          v30 = v29;

          *&v44 = v24;
          *(&v44 + 1) = v26;
          v45 = v28;
          v46 = v30;
          v47 = a6;
          v48 = a7;

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F0B8, &unk_1DB0AE9E8);
          sub_1DB09D9B4();

          [v13 endSession];
          return;
        }
      }
    }

    [v13 endSession];
  }

  if (qword_1EE301E08 != -1)
  {
    swift_once();
  }

  v31 = MEMORY[0x1E69E7CC0];
  v32 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
  if (*(v32 + 16))
  {
    v33 = sub_1DAF35210(0x636F766E4949444FLL, 0xEE00736E6F697461);
    if (v34)
    {
      sub_1DAF409DC(*(v32 + 56) + 32 * v33, &v44);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
      if (swift_dynamicCast())
      {
        v31 = *&v51[0];
      }
    }
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v31 = sub_1DAF72EC0(0, *(v31 + 2) + 1, 1, v31);
  }

  v36 = *(v31 + 2);
  v35 = *(v31 + 3);
  if (v36 >= v35 >> 1)
  {
    v31 = sub_1DAF72EC0((v35 > 1), v36 + 1, 1, v31);
  }

  *(v31 + 2) = v36 + 1;
  v37 = &v31[56 * v36];
  *(v37 + 4) = 0xD00000000000001CLL;
  *(v37 + 5) = 0x80000001DB0C83F0;
  *(v37 + 6) = 0xD000000000000029;
  *(v37 + 7) = 0x80000001DB0C8360;
  *(v37 + 8) = 0xD000000000000012;
  *(v37 + 9) = 0x80000001DB0C8390;
  *(v37 + 10) = 165;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
  *&v44 = v31;
  sub_1DAF40D20(&v44, v51);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1DAF3B11C(v51, 0x636F766E4949444FLL, 0xEE00736E6F697461, isUniquelyReferenced_nonNull_native);
  v39 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
  v40 = sub_1DB09D6B4();
  v41 = sub_1DB09D604();
  v42 = [v39 initWithDomain:v40 code:-1119 userInfo:v41];

  *&v44 = v42;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F0B8, &unk_1DB0AE9E8);
  sub_1DB09D9A4();
}

void sub_1DAFE2BCC(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_1DAFE2C58()
{
  *(v1 + 120) = v0;
  v2 = swift_task_alloc();
  *(v1 + 128) = v2;
  *v2 = v1;
  v2[1] = sub_1DAFE2D14;

  return sub_1DAFE1478();
}

uint64_t sub_1DAFE2D14(uint64_t a1)
{
  v3 = *v2;
  v3[17] = a1;

  if (v1)
  {
    v4 = v3[1];

    return v4();
  }

  else
  {
    v6 = v3[15];

    return MEMORY[0x1EEE6DFA0](sub_1DAFE2E98, v6, 0);
  }
}

uint64_t sub_1DAFE2E98(uint64_t a1, uint64_t a2)
{
  v3 = v2[17];
  v4 = v2[15];
  v2[10] = 0;
  v5 = sub_1DAFE44DC(&qword_1EE301480, a2, type metadata accessor for DeviceInformation, &protocol conformance descriptor for DeviceInformation);
  v6 = swift_task_alloc();
  v2[18] = v6;
  *(v6 + 16) = v2 + 10;
  *(v6 + 24) = v3;
  v7 = swift_task_alloc();
  v2[19] = v7;
  v8 = sub_1DAF4062C(0, &unk_1EE300990, 0x1E69B3770);
  *v7 = v2;
  v7[1] = sub_1DAFE3024;

  return MEMORY[0x1EEE6DE38](v2 + 11, v4, v5, 0x4553657461647075, 0xED00002928734449, sub_1DAFE4638, v6, v8);
}

uint64_t sub_1DAFE3024()
{
  v2 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v3 = *(v2 + 120);
    v4 = sub_1DAFE352C;
  }

  else
  {
    v5 = *(v2 + 120);

    v4 = sub_1DAFE3198;
    v3 = v5;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1DAFE3198()
{
  *(v0 + 96) = 0;
  v1 = v0 + 96;
  v2 = *(v0 + 88);
  v3 = [*(v0 + 136) cachedEmbeddedSecureElementSerialNumber_];
  v4 = *(v0 + 96);
  if (!v3)
  {
    v28 = v4;
    sub_1DB09CE74();

LABEL_17:
    swift_willThrow();

    v30 = *(v0 + 136);
    if (*(v0 + 80))
    {
      [*(v0 + 80) endSession];

      swift_unknownObjectRelease();
    }

    else
    {
    }

    v31 = *(v0 + 8);
    goto LABEL_25;
  }

  v5 = *(v0 + 136);
  v6 = *(v0 + 120);
  v7 = v3;
  v8 = sub_1DB09D6C4();
  v10 = v9;
  v11 = v4;

  *(v6 + 136) = v8;
  *(v6 + 144) = v10;

  *(v0 + 104) = 0;
  v12 = [v5 secureElementsWithError_];
  v13 = *(v0 + 104);
  if (!v12)
  {
    v29 = v13;
    sub_1DB09CE74();

    goto LABEL_17;
  }

  v34 = v2;
  v14 = v12;
  v15 = sub_1DB09D934();
  v16 = v13;

  v17 = *(v15 + 16);
  if (v17)
  {
    v33 = v0;
    v18 = MEMORY[0x1E69E7CC0];
    v19 = v15 + 32;
    do
    {
      sub_1DAF409DC(v19, v1 - 80);
      sub_1DAF409DC(v1 - 80, v1 - 48);
      sub_1DAF4062C(0, &unk_1EE3009B8, 0x1E69B3768);
      if (swift_dynamicCast() && (v20 = *(v1 + 16), v21 = [v20 serialNumber], v20, v21))
      {
        v22 = sub_1DB09D6C4();
        v24 = v23;

        __swift_destroy_boxed_opaque_existential_1Tm((v1 - 80));
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v18 = sub_1DAF72DB4(0, *(v18 + 2) + 1, 1, v18);
        }

        v26 = *(v18 + 2);
        v25 = *(v18 + 3);
        if (v26 >= v25 >> 1)
        {
          v18 = sub_1DAF72DB4((v25 > 1), v26 + 1, 1, v18);
        }

        *(v18 + 2) = v26 + 1;
        v27 = &v18[16 * v26];
        *(v27 + 4) = v22;
        *(v27 + 5) = v24;
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_1Tm((v1 - 80));
      }

      v19 += 32;
      --v17;
    }

    while (v17);

    v0 = v33;
  }

  else
  {

    v18 = MEMORY[0x1E69E7CC0];
  }

  *(*(v0 + 120) + 128) = v18;

  if (*(v0 + 80))
  {
    [*(v0 + 80) endSession];
    swift_unknownObjectRelease();
  }

  v31 = *(v0 + 8);
LABEL_25:

  return v31();
}

uint64_t sub_1DAFE352C()
{

  v1 = *(v0 + 136);
  if (*(v0 + 80))
  {
    [*(v0 + 80) endSession];

    swift_unknownObjectRelease();
  }

  else
  {
  }

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1DAFE35F8(uint64_t a1, uint64_t *a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0F0E0, &unk_1DB0AEA20);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = aBlock - v8;
  (*(v7 + 16))(aBlock - v8, a1, v6);
  v10 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v11 = swift_allocObject();
  (*(v7 + 32))(v11 + v10, v9, v6);
  aBlock[4] = sub_1DAFE4640;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DAFE2BCC;
  aBlock[3] = &block_descriptor_66;
  v12 = _Block_copy(aBlock);

  v13 = [a3 startSecureElementManagerSession_];
  _Block_release(v12);
  *a2 = v13;
  return swift_unknownObjectRelease();
}

uint64_t sub_1DAFE37C4(void *a1, id a2)
{
  if (a1)
  {
    v2 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0F0E0, &unk_1DB0AEA20);
    return sub_1DB09D9B4();
  }

  else
  {
    if (!a2)
    {
      sub_1DAFE42F4();
      swift_allocError();
      v5 = v4;
      a2 = 0;
      *v5 = 1;
    }

    v6 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0F0E0, &unk_1DB0AEA20);
    return sub_1DB09D9A4();
  }
}

uint64_t sub_1DAFE38A4()
{
  v1 = v0[2];
  v3 = v1[17];
  v2 = v1[18];
  v0[3] = v2;
  if (v2)
  {
    v4 = v2;
    goto LABEL_3;
  }

  v6 = v1[16];
  if (v6)
  {
    if (v6[2])
    {
      v3 = v6[4];
      v4 = v6[5];
    }

    else
    {
      v3 = 0;
      v4 = 0;
    }

LABEL_3:
    v8 = v0[1];

    return v8(v3, v4);
  }

  v7 = swift_task_alloc();
  v0[4] = v7;
  *v7 = v0;
  v7[1] = sub_1DAFE39D0;

  return sub_1DAFE2C58();
}

uint64_t sub_1DAFE39D0()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {
    v6 = *(v2 + 16);

    return MEMORY[0x1EEE6DFA0](sub_1DAFE3B14, v6, 0);
  }
}

uint64_t sub_1DAFE3B14()
{
  v1 = *(*(v0 + 16) + 128);
  if (v1)
  {

    if (v1[2])
    {
LABEL_3:
      v2 = v1[4];
      v3 = v1[5];

      goto LABEL_6;
    }
  }

  else
  {
    v1 = MEMORY[0x1E69E7CC0];
    if (*(MEMORY[0x1E69E7CC0] + 16))
    {
      goto LABEL_3;
    }
  }

  v2 = 0;
  v3 = 0;
LABEL_6:
  v5 = *(v0 + 8);

  return v5(v2, v3);
}

void *DeviceInformation.deinit()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t DeviceInformation.__deallocating_deinit()
{

  swift_defaultActor_destroy();

  return swift_defaultActor_deallocate();
}

unint64_t sub_1DAFE3C74()
{
  result = qword_1ECC0F040;
  if (!qword_1ECC0F040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F040);
  }

  return result;
}

uint64_t sub_1DAFE3CC8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DAF96444;

  return sub_1DAFE0278();
}

uint64_t dispatch thunk of DeviceInformationProvider.clientInfoHeader()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 8) + **(a2 + 8));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DAFE46D0;

  return v7(a1, a2);
}

uint64_t type metadata accessor for ODINFHardwareMonitor(uint64_t a1)
{
  result = qword_1EE3011C8;
  if (!qword_1EE3011C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1DAFE3EC4(uint64_t a1)
{
  sub_1DAFE3F60(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1DAFE3F60(uint64_t a1)
{
  if (!qword_1EE300A18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC0F0B0, &qword_1DB0A2820);
    v1 = sub_1DB09DC64();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE300A18);
    }
  }
}

uint64_t dispatch thunk of DeviceInformation.clientInfoHeader()()
{
  v4 = (*(*v0 + 136) + **(*v0 + 136));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1DAF96444;

  return v4();
}

uint64_t dispatch thunk of DeviceInformation.getSEID()()
{
  v4 = (*(*v0 + 224) + **(*v0 + 224));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1DAF680EC;

  return v4();
}

void sub_1DAFE421C(void *a1, uint64_t a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F0B8, &unk_1DB0AE9E8) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v2 + 16);
  v8 = *(v2 + 24);
  v9 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = *v9;
  v11 = v9[1];

  sub_1DAFE2750(a1, a2, v7, v8, v2 + v6, v10, v11);
}

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1DAFE42F4()
{
  result = qword_1ECC0F0C0;
  if (!qword_1ECC0F0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F0C0);
  }

  return result;
}

uint64_t sub_1DAFE4348(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1DAF62CC4;

  return sub_1DAFDFCBC(a1, v4, v5, v6);
}

uint64_t sub_1DAFE43FC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F0D0, &qword_1DB0A2850);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DAFE446C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F0D0, &qword_1DB0A2850);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DAFE44DC(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t objectdestroy_46Tm(uint64_t a1)
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v1, a1, 7);
}

uint64_t sub_1DAFE4578(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1DAF62CC4;

  return sub_1DAFDF654(a1, v4, v5, v6);
}

uint64_t sub_1DAFE4640(void *a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0F0E0, &unk_1DB0AEA20);

  return sub_1DAFE37C4(a1, a2);
}

void *sub_1DAFE46D8()
{
  result = sub_1DAFE46F8();
  qword_1EE30A1E0 = result;
  return result;
}

void *sub_1DAFE46F8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAB0, &qword_1DB0A9530);
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v12 - v1;
  type metadata accessor for DIPURLCache();
  v3 = objc_opt_self();
  v4 = [v3 sharedURLCache];
  [v4 memoryCapacity];

  v5 = [v3 sharedURLCache];
  [v5 diskCapacity];

  if (qword_1EE304380 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v0, qword_1EE304388);
  sub_1DAFE6928(v6, v2);
  v7 = sub_1DB09DB24();
  v8 = [objc_opt_self() standardUserDefaults];
  if (qword_1EE301DD8 != -1)
  {
    swift_once();
  }

  if (byte_1EE30A140 == 1)
  {
    v9 = sub_1DB09D6B4();
    v10 = [v8 BOOLForKey_];

    if (v10)
    {
      [v7 removeAllCachedResponses];
    }
  }

  else
  {
  }

  sub_1DAFE4F30();
  return v7;
}

uint64_t sub_1DAFE491C()
{
  v0 = sub_1DB09CE94();
  v48 = *(v0 - 8);
  v49 = v0;
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v44 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_1DB09CF64();
  v3 = *(v50 - 8);
  v4 = MEMORY[0x1EEE9AC00](v50);
  v47 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v44 - v7;
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v44 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v44 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAB0, &qword_1DB0A9530);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v44 - v16;
  __swift_allocate_value_buffer(v15, qword_1EE304388);
  v51 = __swift_project_value_buffer(v14, qword_1EE304388);
  v18 = objc_opt_self();
  v19 = [v18 defaultManager];
  v20 = sub_1DB09D6B4();
  v21 = [v19 containerURLForSecurityApplicationGroupIdentifier_];

  if (v21)
  {
    sub_1DB09CF04();

    v22 = v50;
    (*(v3 + 32))(v13, v11, v50);
    v52 = 0xD000000000000013;
    v53 = 0x80000001DB0C85B0;
    v24 = v48;
    v23 = v49;
    (*(v48 + 104))(v2, *MEMORY[0x1E6968F70], v49);
    sub_1DAF9C5EC();
    sub_1DB09CF44();
    (*(v24 + 8))(v2, v23);
    (*(v3 + 8))(v13, v22);
    (*(v3 + 56))(v17, 0, 1, v22);
    v25 = v17;
  }

  else
  {
    v45 = v8;
    v46 = v17;
    v26 = v3;
    v27 = v48;
    v28 = v49;
    v29 = [v18 defaultManager];
    v30 = [v29 URLsForDirectory:13 inDomains:1];

    v31 = v50;
    v32 = sub_1DB09D934();

    if (*(v32 + 16))
    {
      v33 = v26;
      (*(v26 + 16))(v47, v32 + ((*(v26 + 80) + 32) & ~*(v26 + 80)), v31);

      v34 = [objc_opt_self() mainBundle];
      v35 = [v34 bundleIdentifier];

      if (v35)
      {
        v36 = sub_1DB09D6C4();
        v38 = v37;
      }

      else
      {
        v38 = 0x80000001DB0C8590;
        v36 = 0xD000000000000014;
      }

      v39 = v2;
      v52 = v36;
      v53 = v38;
      LODWORD(v50) = *MEMORY[0x1E6968F70];
      v49 = *(v27 + 104);
      v49(v2);
      v48 = sub_1DAF9C5EC();
      v40 = v45;
      v41 = v47;
      sub_1DB09CF54();
      v44 = *(v27 + 8);
      v44(v2, v28);

      v42 = *(v33 + 8);
      v42(v41, v31);
      v52 = 7107189;
      v53 = 0xE300000000000000;
      (v49)(v2, v50, v28);
      v25 = v46;
      sub_1DB09CF44();
      v44(v39, v28);
      v42(v40, v31);
      (*(v33 + 56))(v25, 0, 1, v31);
    }

    else
    {

      v25 = v46;
      (*(v26 + 56))(v46, 1, 1, v31);
    }
  }

  return sub_1DAFE69FC(v25, v51);
}

uint64_t sub_1DAFE4F30()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAB0, &qword_1DB0A9530);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v14 - v2;
  v4 = *(v0 + OBJC_IVAR____TtC17CoreODIEssentials11DIPURLCache_logger + 8);
  v16 = *(v0 + OBJC_IVAR____TtC17CoreODIEssentials11DIPURLCache_logger);
  v17 = v4;
  v14 = 0;
  v15 = 0xE000000000000000;

  sub_1DB09DE44();

  v14 = 0xD00000000000001ELL;
  v15 = 0x80000001DB0C86D0;
  if (qword_1EE304380 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v1, qword_1EE304388);
  sub_1DAFE6928(v5, v3);
  v6 = sub_1DB09CF64();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v3, 1, v6) == 1)
  {
    sub_1DAF40AEC(v3, &unk_1ECC0EAB0, &qword_1DB0A9530);
    v8 = 0xE300000000000000;
    v9 = 7104878;
  }

  else
  {
    v10 = sub_1DB09CEA4();
    v8 = v11;
    (*(v7 + 8))(v3, v6);
    v9 = v10;
  }

  MEMORY[0x1E127FE90](v9, v8);

  v12 = v14;
  LOBYTE(v14) = 14;
  CoreODILogger.debug(_:category:)(v12, v15, &v14);
}

id sub_1DAFE5358(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAB0, &qword_1DB0A9530);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v41 - v7;
  v9 = [objc_opt_self() standardUserDefaults];
  if (qword_1EE301DD8 != -1)
  {
    swift_once();
  }

  if (byte_1EE30A140 == 1)
  {
    v10 = sub_1DB09D6B4();
    v11 = [v9 BOOLForKey_];

    if (v11)
    {
      v12 = a1;
      return a1;
    }
  }

  else
  {
  }

  v14 = [a1 response];
  v15 = sub_1DAFE5914(v14);

  if (v15)
  {
    v42 = v6;
    v43 = v8;
    v44 = v1;
    v16 = [a1 response];
    v17 = [a1 data];
    v18 = sub_1DB09D034();
    v20 = v19;

    sub_1DAF56044(v15);
    v21 = [a1 storagePolicy];
    v22 = objc_allocWithZone(MEMORY[0x1E696AAF8]);
    v23 = sub_1DB09D004();
    v24 = sub_1DB09D604();

    v25 = [v22 initWithResponse:v16 data:v23 userInfo:v24 storagePolicy:v21];

    sub_1DAF40780(v18, v20);
    v26 = [a1 response];
    v27 = [v26 URL];

    if (v27)
    {
      v28 = v42;
      sub_1DB09CF04();

      v29 = sub_1DB09CF64();
      (*(*(v29 - 8) + 56))(v28, 0, 1, v29);
    }

    else
    {
      v29 = sub_1DB09CF64();
      v28 = v42;
      (*(*(v29 - 8) + 56))(v42, 1, 1, v29);
    }

    v31 = v43;
    sub_1DAFE69FC(v28, v43);
    sub_1DB09CF64();
    v32 = *(v29 - 8);
    if ((*(v32 + 48))(v31, 1, v29) == 1)
    {
      sub_1DAF40AEC(v31, &unk_1ECC0EAB0, &qword_1DB0A9530);
      v33 = 0xE300000000000000;
      v34 = 7104878;
    }

    else
    {
      v34 = sub_1DB09CEA4();
      v33 = v35;
      (*(v32 + 8))(v31, v29);
    }

    v36 = v44;
    if (v15[2] && (v37 = sub_1DAF35210(0x4173657269707865, 0xE900000000000074), (v38 & 1) != 0))
    {
      sub_1DAF409DC(v15[7] + 32 * v37, v47);

      sub_1DAF40D20(v47, &v48);
    }

    else
    {

      v49 = MEMORY[0x1E69E6158];
      *&v48 = 7104878;
      *(&v48 + 1) = 0xE300000000000000;
    }

    v39 = *(v36 + OBJC_IVAR____TtC17CoreODIEssentials11DIPURLCache_logger + 8);
    *&v47[0] = *(v36 + OBJC_IVAR____TtC17CoreODIEssentials11DIPURLCache_logger);
    *(&v47[0] + 1) = v39;
    v45 = 0;
    v46 = 0xE000000000000000;

    sub_1DB09DE44();
    MEMORY[0x1E127FE90](0xD000000000000016, 0x80000001DB0C86B0);
    MEMORY[0x1E127FE90](v34, v33);

    MEMORY[0x1E127FE90](0x206C69746E7520, 0xE700000000000000);
    __swift_project_boxed_opaque_existential_1(&v48, v49);
    sub_1DB09E234();
    v40 = v45;
    LOBYTE(v45) = 14;
    CoreODILogger.debug(_:category:)(v40, v46, &v45);

    __swift_destroy_boxed_opaque_existential_1Tm(&v48);
    return v25;
  }

  else
  {
    v30 = *(v1 + OBJC_IVAR____TtC17CoreODIEssentials11DIPURLCache_logger + 8);
    *&v48 = *(v1 + OBJC_IVAR____TtC17CoreODIEssentials11DIPURLCache_logger);
    *(&v48 + 1) = v30;
    LOBYTE(v47[0]) = 17;

    CoreODILogger.debug(_:category:)(0xD000000000000022, 0x80000001DB0C8680, v47);

    return 0;
  }
}

void *sub_1DAFE5914(void *a1)
{
  v3 = sub_1DB09D154();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v30 - v8;
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    v11 = result;
    v12 = a1;
    v13 = sub_1DAFE6A6C(v11);
    if (v14 && (sub_1DAFE6D30(v13, v14), v16 = v15, , (v16 & 1) == 0))
    {
      sub_1DB09D144();
      sub_1DB09D0A4();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F0F8, &qword_1DB0AEA40);
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E270, &qword_1DB0A0200);
      v19 = *(*(v18 - 8) + 72);
      v20 = (*(*(v18 - 8) + 80) + 32) & ~*(*(v18 - 8) + 80);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_1DB0A0500;
      v22 = (v21 + v20);
      v23 = *(v18 + 48);
      *v22 = 0x74416465726F7473;
      *(v22 + 1) = 0xE800000000000000;
      v30 = v12;
      v24 = *(v4 + 16);
      v24(&v22[v23], v9, v3);
      v25 = &v22[v19];
      v26 = *(v18 + 48);
      *v25 = 0x4173657269707865;
      *(v25 + 1) = 0xE900000000000074;
      v24(&v22[v19 + v26], v7, v3);
      v27 = sub_1DAF3F840(v21);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v28 = sub_1DAF55C2C(v27);

      v29 = *(v4 + 8);
      v29(v7, v3);
      v29(v9, v3);
      return v28;
    }

    else
    {
      v17 = *(v1 + OBJC_IVAR____TtC17CoreODIEssentials11DIPURLCache_logger + 8);
      v32 = *(v1 + OBJC_IVAR____TtC17CoreODIEssentials11DIPURLCache_logger);
      v33 = v17;
      v31 = 17;

      CoreODILogger.debug(_:category:)(0xD000000000000049, 0x80000001DB0C85D0, &v31);

      return 0;
    }
  }

  return result;
}

id sub_1DAFE5FB0(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for DIPURLCache();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_1DAFE601C@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return MEMORY[0x1E69E7CC0];
    }

    v7 = sub_1DB09D874();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_1DAF73A2C(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v9 = *(v14 + 16);
    a7 = *(v14 + 24);
LABEL_39:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_40:
      *(v14 + 16) = v10;
      v36 = (v14 + 32 * v9);
      v36[4] = v7;
      v36[5] = v11;
      v36[6] = v12;
      v36[7] = v13;
      return v14;
    }

LABEL_43:
    v14 = sub_1DAF73A2C((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = MEMORY[0x1E69E7CC0];
  v18 = 15;
  while (1)
  {
    v13 = v18 >> 14;
    if (v18 >> 14 == v17)
    {
      goto LABEL_33;
    }

    v41 = v14;
    v39 = a1;
    while (2)
    {
      v42 = v18;
      v14 = v18;
      while (1)
      {
        v19 = sub_1DB09D854();
        v12 = v20;
        v44[0] = v19;
        v44[1] = v20;
        v21 = v45(v44);
        if (v8)
        {

          return v14;
        }

        v22 = v21;

        if (v22)
        {
          break;
        }

        v14 = sub_1DB09D7B4();
        v13 = v14 >> 14;
        if (v14 >> 14 == v17)
        {
          v14 = v41;
          v18 = v42;
          goto LABEL_33;
        }
      }

      result = v42;
      if (v42 >> 14 == v13 && (a2 & 1) != 0)
      {
        v18 = sub_1DB09D7B4();
        v13 = v18 >> 14;
        if (v18 >> 14 != v17)
        {
          continue;
        }

        v14 = v41;
LABEL_33:
        if (v18 >> 14 == v17 && (a2 & 1) != 0)
        {

          return v14;
        }

        if (v17 < v18 >> 14)
        {
          __break(1u);
        }

        else
        {
          v7 = sub_1DB09D874();
          v11 = v33;
          v12 = v34;
          v13 = v35;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v9 = *(v14 + 16);
            a7 = *(v14 + 24);
            goto LABEL_39;
          }
        }

        v14 = sub_1DAF73A2C(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = sub_1DB09D874();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_1DAF73A2C(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_1DAF73A2C((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = sub_1DB09D7B4();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DAFE63DC(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E450, &qword_1DB0A05A0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v32 - v3;
  v5 = sub_1DB09D2A4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAD0, &qword_1DB0AD520);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v32 - v10;
  v12 = sub_1DB09D154();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = [a1 userInfo];
  if (!v16)
  {
    goto LABEL_10;
  }

  v32[0] = v6;
  v17 = v16;
  v18 = sub_1DB09D624();

  v32[1] = 0x74416465726F7473;
  v32[2] = 0xE800000000000000;
  sub_1DB09DDB4();
  if (!*(v18 + 16) || (v19 = sub_1DAF353E0(v33), (v20 & 1) == 0))
  {

    sub_1DAF4057C(v33);
LABEL_10:
    v34 = 0u;
    v35 = 0u;
    goto LABEL_11;
  }

  sub_1DAF409DC(*(v18 + 56) + 32 * v19, &v34);
  sub_1DAF4057C(v33);

  if (!*(&v35 + 1))
  {
LABEL_11:
    sub_1DAF40AEC(&v34, &qword_1ECC0E370, &qword_1DB0A09B0);
    (*(v13 + 56))(v11, 1, 1, v12);
    goto LABEL_12;
  }

  v21 = swift_dynamicCast();
  (*(v13 + 56))(v11, v21 ^ 1u, 1, v12);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
LABEL_12:
    sub_1DAF40AEC(v11, &unk_1ECC0EAD0, &qword_1DB0AD520);
    return 0;
  }

  (*(v13 + 32))(v15, v11, v12);
  v22 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  sub_1DB09D1E4();
  v23 = sub_1DB09D214();
  (*(v32[0] + 8))(v8, v5);
  [v22 setLocale_];

  sub_1DB09D314();
  v24 = sub_1DB09D344();
  v25 = *(v24 - 8);
  v26 = 0;
  if ((*(v25 + 48))(v4, 1, v24) != 1)
  {
    v26 = sub_1DB09D324();
    (*(v25 + 8))(v4, v24);
  }

  [v22 setTimeZone_];

  v27 = sub_1DB09D6B4();
  [v22 setDateFormat_];

  v28 = sub_1DB09D0B4();
  v29 = [v22 stringFromDate_];

  v30 = sub_1DB09D6C4();
  (*(v13 + 8))(v15, v12);
  return v30;
}

uint64_t sub_1DAFE6928(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAB0, &qword_1DB0A9530);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
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

uint64_t sub_1DAFE69FC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAB0, &qword_1DB0A9530);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1DAFE6A6C(void *a1)
{
  v2 = [a1 allHeaderFields];
  v3 = sub_1DB09D624();

  sub_1DB09DDB4();
  if (*(v3 + 16) && (v4 = sub_1DAF353E0(v15), (v5 & 1) != 0))
  {
    sub_1DAF409DC(*(v3 + 56) + 32 * v4, v16);
    sub_1DAF4057C(v15);

    if (swift_dynamicCast())
    {
      return 0xD000000000000019;
    }
  }

  else
  {

    sub_1DAF4057C(v15);
  }

  v6 = [a1 allHeaderFields];
  v7 = sub_1DB09D624();

  sub_1DB09DDB4();
  if (*(v7 + 16) && (v8 = sub_1DAF353E0(v15), (v9 & 1) != 0))
  {
    sub_1DAF409DC(*(v7 + 56) + 32 * v8, v16);
    sub_1DAF4057C(v15);

    if (swift_dynamicCast())
    {
      return 0xD000000000000019;
    }
  }

  else
  {

    sub_1DAF4057C(v15);
  }

  v10 = [a1 allHeaderFields];
  v11 = sub_1DB09D624();

  sub_1DB09DDB4();
  if (*(v11 + 16) && (v12 = sub_1DAF353E0(v15), (v13 & 1) != 0))
  {
    sub_1DAF409DC(*(v11 + 56) + 32 * v12, v16);
    sub_1DAF4057C(v15);

    if (swift_dynamicCast())
    {
      return 0xD000000000000019;
    }
  }

  else
  {

    sub_1DAF4057C(v15);
  }

  return 0;
}

uint64_t sub_1DAFE6D30(uint64_t a1, unint64_t a2)
{
  v25 = sub_1DB09CC74();
  v4 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v30 = 44;
  *(&v30 + 1) = 0xE100000000000000;
  v27 = &v30;

  result = sub_1DAFE601C(0x7FFFFFFFFFFFFFFFLL, 1, sub_1DAFE702C, v26, a1, a2, v7);
  v9 = result;
  v24 = *(result + 16);
  if (v24)
  {
    v10 = 0;
    v23 = (v4 + 8);
    v11 = (result + 56);
    while (1)
    {
      if (v10 >= *(v9 + 16))
      {
        __break(1u);
        goto LABEL_12;
      }

      v12 = *(v11 - 1);
      v13 = *v11;
      v30 = *(v11 - 3);
      v31 = v12;
      v32 = v13;

      sub_1DB09CC64();
      sub_1DAFE7048();
      v14 = sub_1DB09DC94();
      v16 = v15;
      (*v23)(v6, v25);

      *&v30 = 61;
      *(&v30 + 1) = 0xE100000000000000;
      MEMORY[0x1EEE9AC00](v17);
      *(&v22 - 2) = &v30;
      v18 = sub_1DAFE601C(0x7FFFFFFFFFFFFFFFLL, 1, sub_1DAFE709C, (&v22 - 4), v14, v16, &v22);
      if (*(v18 + 16) == 2)
      {
        v19 = *(v18 + 48);
        v20 = *(v18 + 56);
        v30 = *(v18 + 32);
        v31 = v19;
        v32 = v20;
        v28 = 0x6567612D78616DLL;
        v29 = 0xE700000000000000;
        v21 = v18;
        sub_1DAF9C5EC();
        if (!sub_1DB09DCB4())
        {
          break;
        }
      }

      ++v10;

      v11 += 4;
      if (v24 == v10)
      {
        goto LABEL_9;
      }
    }

    if (*(v21 + 16) >= 2uLL)
    {

      return sub_1DB09DAD4();
    }

LABEL_12:
    __break(1u);
  }

  else
  {
LABEL_9:

    return 0;
  }

  return result;
}

unint64_t sub_1DAFE7048()
{
  result = qword_1EE301970;
  if (!qword_1EE301970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE301970);
  }

  return result;
}

void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> PregeneratedAssessment.assessmentGUIDSeedDecoded()(CoreODIEssentials::ODIClientGUIDSeeds *__return_ptr retstr)
{
  type metadata accessor for PregeneratedAssessment(0);
  v2 = sub_1DB09CFA4();
  if (v3 >> 60 == 15)
  {
    if (qword_1EE301E08 != -1)
    {
      swift_once();
    }

    v4 = MEMORY[0x1E69E7CC0];
    v5 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
    if (*(v5 + 16))
    {
      v6 = sub_1DAF35210(0x636F766E4949444FLL, 0xEE00736E6F697461);
      if (v7)
      {
        sub_1DAF409DC(*(v5 + 56) + 32 * v6, &v29);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
        if (swift_dynamicCast())
        {
          v4 = *&v28[0];
        }
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_1DAF72EC0(0, *(v4 + 2) + 1, 1, v4);
    }

    v9 = *(v4 + 2);
    v8 = *(v4 + 3);
    if (v9 >= v8 >> 1)
    {
      v4 = sub_1DAF72EC0((v8 > 1), v9 + 1, 1, v4);
    }

    *(v4 + 2) = v9 + 1;
    v10 = &v4[56 * v9];
    *(v10 + 4) = 0xD000000000000022;
    *(v10 + 5) = 0x80000001DB0C3B70;
    *(v10 + 6) = 0xD000000000000030;
    *(v10 + 7) = 0x80000001DB0C3BA0;
    *(v10 + 8) = 0x6F72662864656573;
    *(v10 + 9) = 0xEB00000000293A6DLL;
    *(v10 + 10) = 77;
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
    *&v29 = v4;
    sub_1DAF40D20(&v29, v28);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v31 = v5;
    sub_1DAF3B11C(v28, 0x636F766E4949444FLL, 0xEE00736E6F697461, isUniquelyReferenced_nonNull_native);
    v12 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v13 = sub_1DB09D6B4();
    v14 = sub_1DB09D604();
    [v12 initWithDomain:v13 code:-2127 userInfo:v14];

    swift_willThrow();
  }

  else
  {
    v15 = v2;
    v16 = v3;
    sub_1DB09CC24();
    swift_allocObject();
    sub_1DB09CC14();
    sub_1DAF8C3D4();
    sub_1DB09CC04();
    if (v1)
    {

      if (qword_1EE301E08 != -1)
      {
        swift_once();
      }

      v17 = MEMORY[0x1E69E7CC0];
      v18 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
      if (*(v18 + 16))
      {
        v19 = sub_1DAF35210(0x636F766E4949444FLL, 0xEE00736E6F697461);
        if (v20)
        {
          sub_1DAF409DC(*(v18 + 56) + 32 * v19, &v29);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
          if (swift_dynamicCast())
          {
            v17 = *&v28[0];
          }
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v17 = sub_1DAF72EC0(0, *(v17 + 2) + 1, 1, v17);
      }

      v22 = *(v17 + 2);
      v21 = *(v17 + 3);
      if (v22 >= v21 >> 1)
      {
        v17 = sub_1DAF72EC0((v21 > 1), v22 + 1, 1, v17);
      }

      *(v17 + 2) = v22 + 1;
      v23 = &v17[56 * v22];
      *(v23 + 4) = 0xD000000000000022;
      *(v23 + 5) = 0x80000001DB0C3B70;
      *(v23 + 6) = 0xD000000000000030;
      *(v23 + 7) = 0x80000001DB0C3BA0;
      *(v23 + 8) = 0x6F72662864656573;
      *(v23 + 9) = 0xEB00000000293A6DLL;
      *(v23 + 10) = 82;
      v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
      *&v29 = v17;
      sub_1DAF40D20(&v29, v28);
      v24 = swift_isUniquelyReferenced_nonNull_native();
      v31 = v18;
      sub_1DAF3B11C(v28, 0x636F766E4949444FLL, 0xEE00736E6F697461, v24);
      v25 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
      v26 = sub_1DB09D6B4();
      v27 = sub_1DB09D604();
      [v25 initWithDomain:v26 code:-2127 userInfo:v27];

      swift_willThrow();
    }

    else
    {
    }

    sub_1DAF4AC40(v15, v16);
  }
}

uint64_t type metadata accessor for PregeneratedAssessment(uint64_t a1)
{
  result = qword_1EE300F00;
  if (!qword_1EE300F00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> PregeneratedAssessment.trainingGUIDSeedDecoded()(CoreODIEssentials::ODIClientGUIDSeeds *__return_ptr retstr)
{
  type metadata accessor for PregeneratedAssessment(0);
  v2 = sub_1DB09CFA4();
  if (v3 >> 60 == 15)
  {
    if (qword_1EE301E08 != -1)
    {
      swift_once();
    }

    v4 = MEMORY[0x1E69E7CC0];
    v5 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
    if (*(v5 + 16))
    {
      v6 = sub_1DAF35210(0x636F766E4949444FLL, 0xEE00736E6F697461);
      if (v7)
      {
        sub_1DAF409DC(*(v5 + 56) + 32 * v6, &v29);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
        if (swift_dynamicCast())
        {
          v4 = *&v28[0];
        }
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_1DAF72EC0(0, *(v4 + 2) + 1, 1, v4);
    }

    v9 = *(v4 + 2);
    v8 = *(v4 + 3);
    if (v9 >= v8 >> 1)
    {
      v4 = sub_1DAF72EC0((v8 > 1), v9 + 1, 1, v4);
    }

    *(v4 + 2) = v9 + 1;
    v10 = &v4[56 * v9];
    *(v10 + 4) = 0xD000000000000022;
    *(v10 + 5) = 0x80000001DB0C3B70;
    *(v10 + 6) = 0xD000000000000030;
    *(v10 + 7) = 0x80000001DB0C3BA0;
    *(v10 + 8) = 0x6F72662864656573;
    *(v10 + 9) = 0xEB00000000293A6DLL;
    *(v10 + 10) = 77;
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
    *&v29 = v4;
    sub_1DAF40D20(&v29, v28);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v31 = v5;
    sub_1DAF3B11C(v28, 0x636F766E4949444FLL, 0xEE00736E6F697461, isUniquelyReferenced_nonNull_native);
    v12 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v13 = sub_1DB09D6B4();
    v14 = sub_1DB09D604();
    [v12 initWithDomain:v13 code:-2127 userInfo:v14];

    swift_willThrow();
  }

  else
  {
    v15 = v2;
    v16 = v3;
    sub_1DB09CC24();
    swift_allocObject();
    sub_1DB09CC14();
    sub_1DAF8C3D4();
    sub_1DB09CC04();
    if (v1)
    {

      if (qword_1EE301E08 != -1)
      {
        swift_once();
      }

      v17 = MEMORY[0x1E69E7CC0];
      v18 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
      if (*(v18 + 16))
      {
        v19 = sub_1DAF35210(0x636F766E4949444FLL, 0xEE00736E6F697461);
        if (v20)
        {
          sub_1DAF409DC(*(v18 + 56) + 32 * v19, &v29);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
          if (swift_dynamicCast())
          {
            v17 = *&v28[0];
          }
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v17 = sub_1DAF72EC0(0, *(v17 + 2) + 1, 1, v17);
      }

      v22 = *(v17 + 2);
      v21 = *(v17 + 3);
      if (v22 >= v21 >> 1)
      {
        v17 = sub_1DAF72EC0((v21 > 1), v22 + 1, 1, v17);
      }

      *(v17 + 2) = v22 + 1;
      v23 = &v17[56 * v22];
      *(v23 + 4) = 0xD000000000000022;
      *(v23 + 5) = 0x80000001DB0C3B70;
      *(v23 + 6) = 0xD000000000000030;
      *(v23 + 7) = 0x80000001DB0C3BA0;
      *(v23 + 8) = 0x6F72662864656573;
      *(v23 + 9) = 0xEB00000000293A6DLL;
      *(v23 + 10) = 82;
      v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
      *&v29 = v17;
      sub_1DAF40D20(&v29, v28);
      v24 = swift_isUniquelyReferenced_nonNull_native();
      v31 = v18;
      sub_1DAF3B11C(v28, 0x636F766E4949444FLL, 0xEE00736E6F697461, v24);
      v25 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
      v26 = sub_1DB09D6B4();
      v27 = sub_1DB09D604();
      [v25 initWithDomain:v26 code:-2127 userInfo:v27];

      swift_willThrow();
    }

    else
    {
    }

    sub_1DAF4AC40(v15, v16);
  }
}

uint64_t PregeneratedAssessment.workflowID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t PregeneratedAssessment.createdAt.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PregeneratedAssessment(0) + 20);
  v4 = sub_1DB09D154();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PregeneratedAssessment.assessment.getter()
{
  v1 = *(v0 + *(type metadata accessor for PregeneratedAssessment(0) + 24));

  return v1;
}

uint64_t PregeneratedAssessment.trainingData.getter()
{
  v1 = *(v0 + *(type metadata accessor for PregeneratedAssessment(0) + 28));

  return v1;
}

uint64_t PregeneratedAssessment.assessmentGUID.getter()
{
  v1 = *(v0 + *(type metadata accessor for PregeneratedAssessment(0) + 32));

  return v1;
}

uint64_t PregeneratedAssessment.assessmentGUIDSeeds.getter()
{
  v1 = *(v0 + *(type metadata accessor for PregeneratedAssessment(0) + 36));

  return v1;
}

uint64_t PregeneratedAssessment.trainingGUID.getter()
{
  v1 = *(v0 + *(type metadata accessor for PregeneratedAssessment(0) + 40));

  return v1;
}

uint64_t PregeneratedAssessment.trainingGUIDSeeds.getter()
{
  v1 = *(v0 + *(type metadata accessor for PregeneratedAssessment(0) + 44));

  return v1;
}

uint64_t PregeneratedAssessment.trainingSignalID.getter()
{
  v1 = *(v0 + *(type metadata accessor for PregeneratedAssessment(0) + 48));

  return v1;
}

uint64_t PregeneratedAssessment.bindings.getter()
{
  type metadata accessor for PregeneratedAssessment(0);
}

uint64_t PregeneratedAssessment.encryptedTSID.getter()
{
  v1 = *(v0 + *(type metadata accessor for PregeneratedAssessment(0) + 60));

  return v1;
}

uint64_t PregeneratedAssessment.encryptedAGUID.getter()
{
  v1 = *(v0 + *(type metadata accessor for PregeneratedAssessment(0) + 64));

  return v1;
}

uint64_t PregeneratedAssessment.otdDestinationHost.getter()
{
  v1 = *(v0 + *(type metadata accessor for PregeneratedAssessment(0) + 72));

  return v1;
}

uint64_t PregeneratedAssessment.init(workflowID:createdAt:assessment:trainingData:assessmentGUID:assessmentGUIDSeeds:trainingGUID:trainingGUIDSeeds:trainingSignalID:digestIndex:bindings:encryptedTSID:encryptedAGUID:useSentOTD:otdDestinationHost:profileIdentifiers:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, __int128 *a28)
{
  v47 = *a20;
  *a9 = a1;
  *(a9 + 1) = a2;
  v31 = type metadata accessor for PregeneratedAssessment(0);
  v32 = v31[5];
  v33 = sub_1DB09D154();
  (*(*(v33 - 8) + 32))(&a9[v32], a3, v33);
  v34 = &a9[v31[6]];
  *v34 = a4;
  *(v34 + 1) = a5;
  v35 = &a9[v31[7]];
  *v35 = a6;
  *(v35 + 1) = a7;
  v36 = &a9[v31[8]];
  *v36 = a8;
  *(v36 + 1) = a10;
  v37 = &a9[v31[9]];
  *v37 = a11;
  *(v37 + 1) = a12;
  v38 = &a9[v31[10]];
  *v38 = a13;
  *(v38 + 1) = a14;
  v39 = &a9[v31[11]];
  *v39 = a15;
  *(v39 + 1) = a16;
  v40 = &a9[v31[12]];
  *v40 = a17;
  *(v40 + 1) = a18;
  *&a9[v31[13]] = a19;
  *&a9[v31[14]] = v47;
  v41 = &a9[v31[15]];
  *v41 = a21;
  *(v41 + 1) = a22;
  v42 = &a9[v31[16]];
  *v42 = a23;
  *(v42 + 1) = a24;
  a9[v31[17]] = a25;
  v43 = &a9[v31[18]];
  *v43 = a26;
  *(v43 + 1) = a27;
  v44 = &a9[v31[19]];

  return sub_1DAF332B8(a28, v44);
}

unint64_t sub_1DAFE82B0(char a1)
{
  result = 0x776F6C666B726F77;
  switch(a1)
  {
    case 1:
      result = 0x4164657461657263;
      break;
    case 2:
    case 4:
      result = 0x656D737365737361;
      break;
    case 3:
      result = 0x676E696E69617274;
      break;
    case 5:
      result = 0xD000000000000013;
      break;
    case 6:
      result = 0x676E696E69617274;
      break;
    case 7:
      result = 0xD000000000000011;
      break;
    case 8:
      result = 0xD000000000000010;
      break;
    case 9:
      result = 0x6E49747365676964;
      break;
    case 10:
      result = 0x73676E69646E6962;
      break;
    case 11:
    case 12:
      result = 0x6574707972636E65;
      break;
    case 13:
      result = 0x4F646E6553657375;
      break;
    case 14:
      result = 0xD000000000000012;
      break;
    case 15:
      result = 0xD000000000000012;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DAFE8490(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_1DAFE82B0(*a1);
  v5 = v4;
  if (v3 == sub_1DAFE82B0(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1DB09E254();
  }

  return v8 & 1;
}

uint64_t sub_1DAFE8518()
{
  v1 = *v0;
  sub_1DB09E3A4();
  sub_1DAFE82B0(v1);
  sub_1DB09D794();

  return sub_1DB09E3E4();
}

uint64_t sub_1DAFE857C(uint64_t a1)
{
  sub_1DAFE82B0(*v1);
  sub_1DB09D794();
}

uint64_t sub_1DAFE85D0()
{
  v1 = *v0;
  sub_1DB09E3A4();
  sub_1DAFE82B0(v1);
  sub_1DB09D794();

  return sub_1DB09E3E4();
}

unint64_t sub_1DAFE8630@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DAFEAA90(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_1DAFE8660@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1DAFE82B0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1DAFE86A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DAFEAA90(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DAFE86DC(uint64_t a1)
{
  v2 = sub_1DAFEA3B4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DAFE8718(uint64_t a1)
{
  v2 = sub_1DAFEA3B4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PregeneratedAssessment.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v75 = a2;
  v93[4] = *MEMORY[0x1E69E9840];
  *&v77 = sub_1DB09D154();
  *&v76 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77);
  v4 = &v70 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F100, &qword_1DB0AEA48);
  v78 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v70 - v6;
  v8 = type metadata accessor for PregeneratedAssessment(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAFEA3B4();
  v11 = v79;
  sub_1DB09E414();
  if (v11)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v12 = v78;
  v79 = a1;
  v73 = v8;
  v74 = v10;
  LOBYTE(v88[0]) = 0;
  v13 = v7;
  v14 = sub_1DB09E084();
  v15 = v5;
  v17 = v74;
  *v74 = v14;
  v17[1] = v18;
  LOBYTE(v88[0]) = 1;
  sub_1DAFEAB98(&qword_1ECC0F110, MEMORY[0x1E6969530], MEMORY[0x1E6969558]);
  v19 = v4;
  v20 = v77;
  sub_1DB09E0C4();
  v21 = v73;
  (*(v76 + 32))(v17 + v73[5], v19, v20);
  LOBYTE(v88[0]) = 2;
  v22 = sub_1DB09E084();
  v23 = (v17 + v21[6]);
  *v23 = v22;
  v23[1] = v24;
  LOBYTE(v88[0]) = 3;
  v25 = sub_1DB09E084();
  v26 = (v17 + v21[7]);
  *v26 = v25;
  v26[1] = v27;
  LOBYTE(v88[0]) = 4;
  v28 = sub_1DB09E084();
  v29 = (v17 + v21[8]);
  *v29 = v28;
  v29[1] = v30;
  LOBYTE(v88[0]) = 5;
  v31 = sub_1DB09E084();
  v32 = (v17 + v21[9]);
  *v32 = v31;
  v32[1] = v33;
  LOBYTE(v88[0]) = 6;
  v34 = sub_1DB09E084();
  v35 = (v17 + v21[10]);
  *v35 = v34;
  v35[1] = v36;
  LOBYTE(v88[0]) = 7;
  v37 = sub_1DB09E084();
  v38 = (v74 + v21[11]);
  *v38 = v37;
  v38[1] = v39;
  LOBYTE(v88[0]) = 8;
  v40 = sub_1DB09E084();
  v41 = (v74 + v73[12]);
  *v41 = v40;
  v41[1] = v42;
  LOBYTE(v88[0]) = 9;
  v43 = v13;
  *(v74 + v73[13]) = sub_1DB09E0B4();
  LOBYTE(v85) = 10;
  sub_1DAFEA408();
  sub_1DB09E0C4();
  v45 = v88[0];
  v46 = objc_opt_self();
  v72 = *(&v45 + 1);
  v47 = sub_1DB09D004();
  *&v88[0] = 0;
  v48 = [v46 JSONObjectWithData:v47 options:0 error:v88];

  v49 = *&v88[0];
  if (v48)
  {
    sub_1DB09DCE4();
    swift_unknownObjectRelease();
    sub_1DAFE961C(v93, v88);
    *(v74 + v73[14]) = *&v88[0];
    LOBYTE(v88[0]) = 11;
    v50 = sub_1DB09E084();
    v52 = (v74 + v73[15]);
    *v52 = v50;
    v52[1] = v53;
    LOBYTE(v88[0]) = 12;
    v54 = sub_1DB09E084();
    v55 = (v74 + v73[16]);
    *v55 = v54;
    v55[1] = v56;
    LOBYTE(v88[0]) = 13;
    v57 = sub_1DB09E054();
    *(v74 + v73[17]) = (v57 == 2) | v57 & 1;
    LOBYTE(v88[0]) = 14;
    v58 = sub_1DB09E044();
    v59 = (v74 + v73[18]);
    *v59 = v58;
    v59[1] = v60;
    v81 = 15;
    sub_1DAFEA45C();
    sub_1DB09E074();
    v61 = v92;
    *&v77 = v91;
    v80 = 15;
    sub_1DAFEA4B0();
    sub_1DB09E074();
    v76 = v88[0];
    if (*(&v88[0] + 1))
    {
      v77 = v88[3];
      v70 = v88[1];
      v71 = v88[2];
      v64 = v89;
      v65 = v90;

      *(&v83 + 1) = &type metadata for ProfileSetIdentifiers;
      v84 = sub_1DAFEA5B4();
      v66 = swift_allocObject();
      *&v82 = v66;
      v67 = v70;
      *(v66 + 16) = v76;
      *(v66 + 32) = v67;
      v68 = v77;
      *(v66 + 48) = v71;
      *(v66 + 64) = v68;
      *(v66 + 80) = v64;
      *(v66 + 88) = v65;
      sub_1DAF40780(v45, v72);
      __swift_destroy_boxed_opaque_existential_1Tm(v93);
      (*(v12 + 8))(v43, v15);
      sub_1DAF332B8(&v82, &v85);
    }

    else
    {
      v84 = 0;
      v83 = 0u;
      v82 = 0u;
      v86 = &type metadata for LegacyAugmentedProfileIdentifiers;
      v87 = sub_1DAFEA504();
      sub_1DAF40780(v45, v72);
      v62 = 0x4E574F4E4B4E55;
      if (v61)
      {
        v62 = v77;
      }

      v63 = 0xE700000000000000;
      if (v61)
      {
        v63 = v61;
      }

      *&v85 = v62;
      *(&v85 + 1) = v63;
      __swift_destroy_boxed_opaque_existential_1Tm(v93);
      (*(v12 + 8))(v43, v15);
      if (*(&v83 + 1))
      {
        sub_1DAF40AEC(&v82, &qword_1ECC0F138, &qword_1DB0AEA50);
      }
    }

    v69 = v74;
    sub_1DAF332B8(&v85, v74 + v73[19]);
    sub_1DAF8C428(v69, v75);
    __swift_destroy_boxed_opaque_existential_1Tm(v79);
    return sub_1DAFEA558(v69);
  }

  v51 = v49;
  sub_1DB09CE74();

  swift_willThrow();
  sub_1DAF40780(v45, v72);
  (*(v12 + 8))(v43, v15);
  LODWORD(v75) = 0;
  __swift_destroy_boxed_opaque_existential_1Tm(v79);
  v44 = v74;

  LODWORD(v78) = 1;
  LODWORD(v72) = 1;
  (*(v76 + 8))(v44 + v73[5], v77);

  if ((v72 & 1) == 0)
  {
    if (!v78)
    {
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  if (v78)
  {
LABEL_7:
  }

LABEL_9:
  if (v75)
  {
  }

  return result;
}

uint64_t sub_1DAFE961C@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  sub_1DAF409DC(a1, &v71);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F178, &qword_1DB0AECA8);
  if (!swift_dynamicCast())
  {
    return ODIBindingsDict.init(dictionaryLiteral:)(MEMORY[0x1E69E7CC0], a2);
  }

  v54 = a2;
  ODIBindingsDict.init(dictionaryLiteral:)(MEMORY[0x1E69E7CC0], v73);
  v3 = 0;
  v5 = v68 + 64;
  v4 = *(v68 + 64);
  v56 = v68;
  v6 = 1 << *(v68 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & v4;
  v9 = (v6 + 63) >> 6;
  v10 = MEMORY[0x1E69E6158];
  if ((v7 & v4) == 0)
  {
    goto LABEL_9;
  }

  do
  {
    while (1)
    {
      v12 = v3;
LABEL_17:
      v15 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      v16 = v15 | (v12 << 6);
      v17 = (*(v56 + 48) + 16 * v16);
      v19 = *v17;
      v18 = v17[1];
      sub_1DAF409DC(*(v56 + 56) + 32 * v16, &v64);
      *&v68 = v19;
      *(&v68 + 1) = v18;
      sub_1DAF40D20(&v64, &v69);

LABEL_18:
      v71 = v68;
      v72[0] = v69;
      v72[1] = v70;
      v20 = *(&v68 + 1);
      if (!*(&v68 + 1))
      {

        *v54 = v73[0];
        return result;
      }

      v57 = v71;
      sub_1DAF40D20(v72, v67);
      sub_1DAF409DC(v67, &v62);
      v21 = sub_1DAFEAADC();
      if (swift_dynamicCast())
      {
        v22 = v59;
        *(&v65 + 1) = v21;
        v66 = sub_1DAFEAB98(&qword_1ECC0F180, sub_1DAFEAADC, MEMORY[0x1E69E81B8]);
        *&v64 = v22;
      }

      else if (swift_dynamicCast())
      {
        *(&v65 + 1) = v10;
        v66 = MEMORY[0x1E69E6168];
        v64 = v59;
      }

      else
      {
        if (qword_1EE304018 != -1)
        {
          swift_once();
        }

        v23 = sub_1DB09D4B4();
        __swift_project_value_buffer(v23, qword_1EE304020);
        sub_1DAF409DC(v67, &v59);
        v24 = sub_1DB09D494();
        v25 = sub_1DB09DB74();
        if (os_log_type_enabled(v24, v25))
        {
          v26 = swift_slowAlloc();
          v55 = swift_slowAlloc();
          v58 = v55;
          *v26 = 136315138;
          __swift_project_boxed_opaque_existential_1(&v59, *(&v60 + 1));
          swift_getDynamicType();
          v27 = sub_1DB09E474();
          v29 = v28;
          __swift_destroy_boxed_opaque_existential_1Tm(&v59);
          v30 = sub_1DB015E84(v27, v29, &v58);

          *(v26 + 4) = v30;
          _os_log_impl(&dword_1DAF16000, v24, v25, "ODIBindingsValue is not supporting %s type", v26, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v55);
          MEMORY[0x1E1281810](v55, -1, -1);
          MEMORY[0x1E1281810](v26, -1, -1);
        }

        else
        {

          __swift_destroy_boxed_opaque_existential_1Tm(&v59);
        }

        v10 = MEMORY[0x1E69E6158];
        v64 = 0u;
        v65 = 0u;
        v66 = 0;
      }

      __swift_destroy_boxed_opaque_existential_1Tm(&v62);
      if (*(&v65 + 1))
      {
        break;
      }

      __swift_destroy_boxed_opaque_existential_1Tm(v67);

      v11 = &v64;
LABEL_7:
      sub_1DAF40AEC(v11, &qword_1ECC0E178, &qword_1DB09FFB0);
      if (!v8)
      {
        goto LABEL_9;
      }
    }

    sub_1DAF332B8(&v64, &v68);
    sub_1DAF3523C(&v68, &v64);
    sub_1DAFEAB28(&v64, &v62);
    if (!v63)
    {
      sub_1DAF40AEC(&v62, &qword_1ECC0E178, &qword_1DB09FFB0);
      v41 = v73[0];
      v42 = sub_1DAF35210(v57, v20);
      v44 = v43;

      if (v44)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v58 = v41;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_1DAF3C3E8();
          v41 = v58;
        }

        sub_1DAF332B8((*(v41 + 56) + 40 * v42), &v59);
        sub_1DB07FBA0(v42, v41);
        sub_1DAF40AEC(&v64, &qword_1ECC0E178, &qword_1DB09FFB0);
        __swift_destroy_boxed_opaque_existential_1Tm(&v68);
        __swift_destroy_boxed_opaque_existential_1Tm(v67);

        v73[0] = v41;
      }

      else
      {
        sub_1DAF40AEC(&v64, &qword_1ECC0E178, &qword_1DB09FFB0);
        __swift_destroy_boxed_opaque_existential_1Tm(&v68);
        __swift_destroy_boxed_opaque_existential_1Tm(v67);
        v61 = 0;
        v59 = 0u;
        v60 = 0u;
      }

      v10 = MEMORY[0x1E69E6158];
      v11 = &v59;
      goto LABEL_7;
    }

    sub_1DAF332B8(&v62, &v59);
    v31 = v73[0];
    v32 = swift_isUniquelyReferenced_nonNull_native();
    v58 = v31;
    v73[0] = 0x8000000000000000;
    v33 = sub_1DAF35210(v57, v20);
    v35 = *(v31 + 16);
    v36 = (v34 & 1) == 0;
    v37 = __OFADD__(v35, v36);
    v38 = v35 + v36;
    if (v37)
    {
      goto LABEL_53;
    }

    v39 = v34;
    if (*(v31 + 24) >= v38)
    {
      if ((v32 & 1) == 0)
      {
        v52 = v33;
        sub_1DAF3C3E8();
        v33 = v52;
      }
    }

    else
    {
      sub_1DAF3761C(v38, v32);
      v33 = sub_1DAF35210(v57, v20);
      if ((v39 & 1) != (v40 & 1))
      {
        goto LABEL_55;
      }
    }

    v10 = MEMORY[0x1E69E6158];
    if (v39)
    {
      v46 = v33;

      v47 = v58;
      v48 = (v58[7] + 40 * v46);
      __swift_destroy_boxed_opaque_existential_1Tm(v48);
      sub_1DAF332B8(&v59, v48);
      sub_1DAF40AEC(&v64, &qword_1ECC0E178, &qword_1DB09FFB0);
      __swift_destroy_boxed_opaque_existential_1Tm(&v68);
      __swift_destroy_boxed_opaque_existential_1Tm(v67);
    }

    else
    {
      v47 = v58;
      v58[(v33 >> 6) + 8] |= 1 << v33;
      v49 = (v47[6] + 16 * v33);
      *v49 = v57;
      v49[1] = v20;
      sub_1DAF332B8(&v59, v47[7] + 40 * v33);
      sub_1DAF40AEC(&v64, &qword_1ECC0E178, &qword_1DB09FFB0);
      __swift_destroy_boxed_opaque_existential_1Tm(&v68);
      __swift_destroy_boxed_opaque_existential_1Tm(v67);
      v50 = v47[2];
      v37 = __OFADD__(v50, 1);
      v51 = v50 + 1;
      if (v37)
      {
        goto LABEL_54;
      }

      v47[2] = v51;
    }

    v73[0] = v47;
  }

  while (v8);
LABEL_9:
  if (v9 <= v3 + 1)
  {
    v13 = v3 + 1;
  }

  else
  {
    v13 = v9;
  }

  v14 = v13 - 1;
  while (1)
  {
    v12 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v12 >= v9)
    {
      v8 = 0;
      v69 = 0u;
      v70 = 0u;
      v3 = v14;
      v68 = 0u;
      goto LABEL_18;
    }

    v8 = *(v5 + 8 * v12);
    ++v3;
    if (v8)
    {
      v3 = v12;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  result = sub_1DB09E2E4();
  __break(1u);
  return result;
}

uint64_t PregeneratedAssessment.encode(to:)(void *a1)
{
  v3 = v1;
  v23[2] = *MEMORY[0x1E69E9840];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F148, &qword_1DB0AEA58);
  v21 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v18 - v6;
  v8 = objc_opt_self();
  v9 = type metadata accessor for PregeneratedAssessment(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E5A8, &qword_1DB0AEA60);
  v10 = sub_1DB09D604();
  v23[0] = 0;
  v11 = [v8 dataWithJSONObject:v10 options:0 error:v23];

  v12 = v23[0];
  if (v11)
  {
    v20 = v9;
    v13 = sub_1DB09D034();
    v15 = v14;

    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1DAFEA3B4();
    sub_1DB09E434();
    LOBYTE(v23[0]) = 0;
    sub_1DB09E154();
    if (!v2)
    {
      LOBYTE(v23[0]) = 1;
      sub_1DB09D154();
      sub_1DAFEAB98(&qword_1ECC0F150, MEMORY[0x1E6969530], MEMORY[0x1E6969538]);
      sub_1DB09E194();
      LOBYTE(v23[0]) = 2;
      sub_1DB09E154();
      v19 = v15;
      LOBYTE(v23[0]) = 3;
      sub_1DB09E154();
      LOBYTE(v23[0]) = 4;
      sub_1DB09E154();
      LOBYTE(v23[0]) = 5;
      sub_1DB09E154();
      LOBYTE(v23[0]) = 6;
      sub_1DB09E154();
      LOBYTE(v23[0]) = 7;
      sub_1DB09E154();
      LOBYTE(v23[0]) = 8;
      sub_1DB09E154();
      LOBYTE(v23[0]) = 9;
      sub_1DB09E184();
      v23[0] = v13;
      v23[1] = v19;
      v22 = 10;
      sub_1DAFEA608();
      sub_1DB09E194();
      LOBYTE(v23[0]) = 11;
      sub_1DB09E154();
      LOBYTE(v23[0]) = 12;
      sub_1DB09E154();
      LOBYTE(v23[0]) = 13;
      sub_1DB09E164();
      __swift_project_boxed_opaque_existential_1((v3 + *(v20 + 76)), *(v3 + *(v20 + 76) + 24));
      LOBYTE(v23[0]) = 15;
      sub_1DB09E194();
      LOBYTE(v23[0]) = 14;
      sub_1DB09E104();
    }

    (*(v21 + 8))(v7, v5);
    return sub_1DAF40780(v13, v15);
  }

  else
  {
    v16 = v12;
    sub_1DB09CE74();

    return swift_willThrow();
  }
}

unint64_t sub_1DAFEA3B4()
{
  result = qword_1ECC0F108;
  if (!qword_1ECC0F108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F108);
  }

  return result;
}

unint64_t sub_1DAFEA408()
{
  result = qword_1ECC0F118;
  if (!qword_1ECC0F118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F118);
  }

  return result;
}

unint64_t sub_1DAFEA45C()
{
  result = qword_1ECC0F120;
  if (!qword_1ECC0F120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F120);
  }

  return result;
}

unint64_t sub_1DAFEA4B0()
{
  result = qword_1ECC0F128;
  if (!qword_1ECC0F128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F128);
  }

  return result;
}

unint64_t sub_1DAFEA504()
{
  result = qword_1ECC0F130;
  if (!qword_1ECC0F130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F130);
  }

  return result;
}

uint64_t sub_1DAFEA558(uint64_t a1)
{
  v2 = type metadata accessor for PregeneratedAssessment(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1DAFEA5B4()
{
  result = qword_1ECC0F140;
  if (!qword_1ECC0F140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F140);
  }

  return result;
}

unint64_t sub_1DAFEA608()
{
  result = qword_1ECC0F158;
  if (!qword_1ECC0F158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F158);
  }

  return result;
}

void sub_1DAFEA684(uint64_t a1)
{
  sub_1DB09D154();
  if (v1 <= 0x3F)
  {
    sub_1DAFEA774(319);
    if (v2 <= 0x3F)
    {
      sub_1DAFEA7E8();
      if (v3 <= 0x3F)
      {
        sub_1DAFB7CB0();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1DAFEA774(uint64_t a1)
{
  if (!qword_1EE300A48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC0E5A8, &qword_1DB0AEA60);
    v1 = sub_1DB09D664();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE300A48);
    }
  }
}

void sub_1DAFEA7E8()
{
  if (!qword_1EE300A40)
  {
    v0 = sub_1DB09DC64();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE300A40);
    }
  }
}

uint64_t getEnumTagSinglePayload for PregeneratedAssessment.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF1)
  {
    goto LABEL_17;
  }

  if (a2 + 15 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 15) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 15;
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

      return (*a1 | (v4 << 8)) - 15;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 15;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x10;
  v8 = v6 - 16;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PregeneratedAssessment.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 15 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 15) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF1)
  {
    v4 = 0;
  }

  if (a2 > 0xF0)
  {
    v5 = ((a2 - 241) >> 8) + 1;
    *result = a2 + 15;
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
    *result = a2 + 15;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1DAFEA98C()
{
  result = qword_1ECC0F160;
  if (!qword_1ECC0F160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F160);
  }

  return result;
}

unint64_t sub_1DAFEA9E4()
{
  result = qword_1ECC0F168;
  if (!qword_1ECC0F168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F168);
  }

  return result;
}

unint64_t sub_1DAFEAA3C()
{
  result = qword_1ECC0F170;
  if (!qword_1ECC0F170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F170);
  }

  return result;
}

unint64_t sub_1DAFEAA90(uint64_t a1, uint64_t a2)
{
  v2 = sub_1DB09E004();

  if (v2 >= 0x10)
  {
    return 16;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1DAFEAADC()
{
  result = qword_1ECC0E810;
  if (!qword_1ECC0E810)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECC0E810);
  }

  return result;
}

uint64_t sub_1DAFEAB28(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E178, &qword_1DB09FFB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DAFEAB98(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t BindingsKeys.rawValue.getter()
{
  result = 0x6D614E7473726966;
  switch(*v0)
  {
    case 1:
      return 0x656D614E7473616CLL;
    case 2:
      return 0x6C69616D65;
    case 3:
      return 0x6D754E656E6F6870;
    case 4:
      return 0x746565727473;
    case 5:
      return 0x31746565727473;
    case 6:
      return 0x32746565727473;
    case 7:
      return 2037672291;
    case 8:
      return 0x6574617473;
    case 9:
      return 0x6F436C6174736F70;
    case 0xA:
      return 0x7972746E756F63;
    case 0xB:
      return 0x437972746E756F63;
    case 0xC:
      return 0x746E756F436F7369;
    case 0xD:
      return 0x4C73736572646461;
    case 0xE:
      return 0x4C73736572646461;
    case 0xF:
      return 0x6E6F685072656570;
    case 0x10:
      return 0x7372694672656570;
    case 0x11:
      return 0x7473614C72656570;
    case 0x12:
    case 0x33:
    case 0x46:
      return 0xD000000000000012;
    case 0x13:
    case 0x2F:
      return 0xD000000000000011;
    case 0x14:
    case 0x16:
    case 0x19:
    case 0x1A:
      return 0x746E656D75636F64;
    case 0x15:
    case 0x1D:
    case 0x2D:
    case 0x3F:
      return 0xD000000000000014;
    case 0x17:
      return 0xD000000000000010;
    case 0x18:
      return 0xD000000000000010;
    case 0x1B:
    case 0x1F:
    case 0x20:
    case 0x34:
    case 0x3E:
      return 0xD000000000000013;
    case 0x1C:
      return 0xD000000000000010;
    case 0x1E:
    case 0x29:
    case 0x3A:
    case 0x44:
      return 0xD000000000000017;
    case 0x21:
      return 0xD000000000000010;
    case 0x22:
      return 0xD000000000000010;
    case 0x23:
      return 0x6947646573726170;
    case 0x24:
      return 0xD000000000000010;
    case 0x25:
      return 0xD000000000000010;
    case 0x26:
      return 0x694E646573726170;
    case 0x27:
    case 0x28:
    case 0x2A:
    case 0x2B:
    case 0x32:
    case 0x45:
      return 0xD000000000000018;
    case 0x2C:
    case 0x39:
    case 0x40:
    case 0x42:
    case 0x43:
      return 0xD000000000000016;
    case 0x2E:
      return 0x6563697665447369;
    case 0x30:
      return 0x614C656369766564;
    case 0x31:
      return 0x6469656C707061;
    case 0x35:
    case 0x37:
    case 0x38:
      v2 = 5;
      goto LABEL_41;
    case 0x36:
    case 0x3D:
      v2 = 9;
      goto LABEL_41;
    case 0x3B:
      return 0xD000000000000010;
    case 0x3C:
      return 0x4C676E696C6C6962;
    case 0x41:
      v2 = 10;
LABEL_41:
      result = v2 | 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DAFEB220(uint64_t a1, uint64_t a2)
{

  v2 = sub_1DB09D7D4();
  if (!v3)
  {
    v6 = MEMORY[0x1E69E7CC0];
LABEL_35:

    return v6;
  }

  v4 = v2;
  v5 = v3;
  v6 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v4 == 2573 && v5 == 0xE200000000000000 || (result = sub_1DB09E254(), (result & 1) != 0))
    {

      LOBYTE(v15) = 10;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_31;
      }

      goto LABEL_27;
    }

    v9 = (v5 & 0x2000000000000000) != 0 ? HIBYTE(v5) & 0xF : v4 & 0xFFFFFFFFFFFFLL;
    if (!v9)
    {
      break;
    }

    if ((v5 & 0x1000000000000000) != 0)
    {
      v14 = sub_1DB09D774();
    }

    else
    {
      if ((v5 & 0x2000000000000000) != 0)
      {
        v11 = v4;
      }

      else
      {
        if ((v4 & 0x1000000000000000) != 0)
        {
          v10 = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          v10 = sub_1DB09DEC4();
        }

        v11 = *v10;
      }

      v12 = v11;
      v13 = (__clz(~v11) - 24) << 16;
      if (v12 < 0)
      {
        v14 = v13;
      }

      else
      {
        v14 = 65541;
      }
    }

    if (v14 >> 14 == 4 * v9)
    {
      result = sub_1DAFED780(v4, v5);
      if ((result & 0x100000000) != 0)
      {
        goto LABEL_38;
      }

      if ((result & 0xFFFFFF80) == 0)
      {
        result = sub_1DAFED780(v4, v5);
        if ((result & 0x100000000) != 0)
        {
          goto LABEL_39;
        }

        v15 = result;

        if ((v15 & 0xFFFFFF00) != 0)
        {
          goto LABEL_37;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          goto LABEL_27;
        }

LABEL_31:
        v6 = sub_1DAF72FE0(0, *(v6 + 2) + 1, 1, v6);
LABEL_27:
        v17 = *(v6 + 2);
        v16 = *(v6 + 3);
        if (v17 >= v16 >> 1)
        {
          v6 = sub_1DAF72FE0((v16 > 1), v17 + 1, 1, v6);
        }

        *(v6 + 2) = v17 + 1;
        v6[v17 + 32] = v15;
        goto LABEL_4;
      }
    }

LABEL_4:
    v4 = sub_1DB09D7D4();
    v5 = v7;
    if (!v7)
    {
      goto LABEL_35;
    }
  }

  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
  return result;
}

CoreODIEssentials::BindingsKeys_optional __swiftcall BindingsKeys.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1DB09E2B4();

  v5 = 0;
  v6 = 53;
  switch(v3)
  {
    case 0:
      goto LABEL_70;
    case 1:
      v5 = 1;
      goto LABEL_70;
    case 2:
      v5 = 2;
      goto LABEL_70;
    case 3:
      v5 = 3;
      goto LABEL_70;
    case 4:
      v5 = 4;
      goto LABEL_70;
    case 5:
      v5 = 5;
      goto LABEL_70;
    case 6:
      v5 = 6;
      goto LABEL_70;
    case 7:
      v5 = 7;
      goto LABEL_70;
    case 8:
      v5 = 8;
      goto LABEL_70;
    case 9:
      v5 = 9;
      goto LABEL_70;
    case 10:
      v5 = 10;
      goto LABEL_70;
    case 11:
      v5 = 11;
      goto LABEL_70;
    case 12:
      v5 = 12;
      goto LABEL_70;
    case 13:
      v5 = 13;
      goto LABEL_70;
    case 14:
      v5 = 14;
      goto LABEL_70;
    case 15:
      v5 = 15;
      goto LABEL_70;
    case 16:
      v5 = 16;
      goto LABEL_70;
    case 17:
      v5 = 17;
      goto LABEL_70;
    case 18:
      v5 = 18;
      goto LABEL_70;
    case 19:
      v5 = 19;
      goto LABEL_70;
    case 20:
      v5 = 20;
      goto LABEL_70;
    case 21:
      v5 = 21;
      goto LABEL_70;
    case 22:
      v5 = 22;
      goto LABEL_70;
    case 23:
      v5 = 23;
      goto LABEL_70;
    case 24:
      v5 = 24;
      goto LABEL_70;
    case 25:
      v5 = 25;
      goto LABEL_70;
    case 26:
      v5 = 26;
      goto LABEL_70;
    case 27:
      v5 = 27;
      goto LABEL_70;
    case 28:
      v5 = 28;
      goto LABEL_70;
    case 29:
      v5 = 29;
      goto LABEL_70;
    case 30:
      v5 = 30;
      goto LABEL_70;
    case 31:
      v5 = 31;
      goto LABEL_70;
    case 32:
      v5 = 32;
      goto LABEL_70;
    case 33:
      v5 = 33;
      goto LABEL_70;
    case 34:
      v5 = 34;
      goto LABEL_70;
    case 35:
      v5 = 35;
      goto LABEL_70;
    case 36:
      v5 = 36;
      goto LABEL_70;
    case 37:
      v5 = 37;
      goto LABEL_70;
    case 38:
      v5 = 38;
      goto LABEL_70;
    case 39:
      v5 = 39;
      goto LABEL_70;
    case 40:
      v5 = 40;
      goto LABEL_70;
    case 41:
      v5 = 41;
      goto LABEL_70;
    case 42:
      v5 = 42;
      goto LABEL_70;
    case 43:
      v5 = 43;
      goto LABEL_70;
    case 44:
      v5 = 44;
      goto LABEL_70;
    case 45:
      v5 = 45;
      goto LABEL_70;
    case 46:
      v5 = 46;
      goto LABEL_70;
    case 47:
      v5 = 47;
      goto LABEL_70;
    case 48:
      v5 = 48;
      goto LABEL_70;
    case 49:
      v5 = 49;
      goto LABEL_70;
    case 50:
      v5 = 50;
      goto LABEL_70;
    case 51:
      v5 = 51;
      goto LABEL_70;
    case 52:
      v5 = 52;
LABEL_70:
      v6 = v5;
      break;
    case 53:
      break;
    case 54:
      v6 = 54;
      break;
    case 55:
      v6 = 55;
      break;
    case 56:
      v6 = 56;
      break;
    case 57:
      v6 = 57;
      break;
    case 58:
      v6 = 58;
      break;
    case 59:
      v6 = 59;
      break;
    case 60:
      v6 = 60;
      break;
    case 61:
      v6 = 61;
      break;
    case 62:
      v6 = 62;
      break;
    case 63:
      v6 = 63;
      break;
    case 64:
      v6 = 64;
      break;
    case 65:
      v6 = 65;
      break;
    case 66:
      v6 = 66;
      break;
    case 67:
      v6 = 67;
      break;
    case 68:
      v6 = 68;
      break;
    case 69:
      v6 = 69;
      break;
    case 70:
      v6 = 70;
      break;
    default:
      v6 = 71;
      break;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_1DAFEB718()
{
  v0 = BindingsKeys.rawValue.getter();
  v2 = v1;
  if (v0 == BindingsKeys.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1DB09E254();
  }

  return v5 & 1;
}

uint64_t sub_1DAFEB7B4()
{
  sub_1DB09E3A4();
  BindingsKeys.rawValue.getter();
  sub_1DB09D794();

  return sub_1DB09E3E4();
}

uint64_t sub_1DAFEB81C(uint64_t a1)
{
  BindingsKeys.rawValue.getter();
  sub_1DB09D794();
}

uint64_t sub_1DAFEB880()
{
  sub_1DB09E3A4();
  BindingsKeys.rawValue.getter();
  sub_1DB09D794();

  return sub_1DB09E3E4();
}

unint64_t sub_1DAFEB8F0@<X0>(unint64_t *a1@<X8>)
{
  result = BindingsKeys.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

CoreODIEssentials::BindingsHelpers __swiftcall BindingsHelpers.init()()
{
  *v0 = 45;
  v0[1] = 0xE100000000000000;
  return result;
}

id static BindingsHelpers.isDiagnosticsAllowed.getter()
{
  result = [objc_opt_self() sharedConnection];
  if (result)
  {
    v1 = result;
    v2 = [result effectiveBoolValueForSetting_];

    return (v2 == 1);
  }

  return result;
}

unint64_t static BindingsHelpers.deviceCountryCode.getter()
{
  v0 = sub_1DB09D2A4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E9A0, &qword_1DB0AECB0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v15 - v5;
  sub_1DB09D264();
  sub_1DB09D254();
  (*(v1 + 8))(v3, v0);
  v7 = sub_1DB09D244();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1DAF40AEC(v6, &qword_1ECC0E9A0, &qword_1DB0AECB0);
    v9 = 0;
    v10 = 0xE000000000000000;
  }

  else
  {
    v11 = sub_1DB09D1F4();
    v10 = v12;
    (*(v8 + 8))(v6, v7);
    v9 = v11;
  }

  v13 = _s17CoreODIEssentials15BindingsHelpersV25convertCountryCodeToASCII3strSiSS_tFZ_0(v9, v10);

  return v13;
}

uint64_t static BindingsHelpers.asciiDeviceLanguage.getter()
{
  v0 = _s17CoreODIEssentials15BindingsHelpersV14deviceLanguageSSSgvgZ_0();
  if (v1)
  {
    v2 = v1;
  }

  else
  {
    v0 = 0;
    v2 = 0xE000000000000000;
  }

  v3 = _s17CoreODIEssentials15BindingsHelpersV26convertLanguageCodeToASCII3strSiSS_tFZ_0(v0, v2);

  return v3;
}

uint64_t BindingsHelpers.getNameComponents(firstName:lastName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1DB09CE54();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v32 - v13;
  v15 = MEMORY[0x1E69E7CC8];
  v32[2] = a2;
  v33 = MEMORY[0x1E69E7CC8];
  v32[1] = a1;

  MEMORY[0x1E127FE90](32, 0xE100000000000000);

  MEMORY[0x1E127FE90](a3, a4);

  v16 = [objc_allocWithZone(MEMORY[0x1E696ADF8]) init];
  v17 = sub_1DB09D6B4();

  v18 = [v16 personNameComponentsFromString_];

  if (v18)
  {
    sub_1DB09CE34();

    (*(v9 + 32))(v14, v12, v8);
    v19 = sub_1DB09CE14();
    sub_1DAF34124(v19, v20, 0xD000000000000010, 0x80000001DB0C11F0);
    v21 = sub_1DB09CDF4();
    sub_1DAF34124(v21, v22, 0xD000000000000010, 0x80000001DB0C11A0);
    v23 = sub_1DB09CDE4();
    sub_1DAF34124(v23, v24, 0x6947646573726170, 0xEF656D614E6E6576);
    v25 = sub_1DB09CE04();
    sub_1DAF34124(v25, v26, 0xD000000000000010, 0x80000001DB0C11D0);
    v27 = sub_1DB09CE24();
    sub_1DAF34124(v27, v28, 0xD000000000000010, 0x80000001DB0C1210);
    v29 = sub_1DB09CE44();
    sub_1DAF34124(v29, v30, 0x694E646573726170, 0xEE00656D614E6B63);
    (*(v9 + 8))(v14, v8);
    return v33;
  }

  return v15;
}