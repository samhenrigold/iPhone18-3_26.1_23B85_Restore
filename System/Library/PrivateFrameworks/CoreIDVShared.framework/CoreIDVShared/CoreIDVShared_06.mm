uint64_t sub_225A370C8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73E090, &qword_225CD8ED0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_225A3716C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_225A371B4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_225A3723C(uint64_t a1)
{
  sub_225CCCEA4();
  if (v1 <= 0x3F)
  {
    sub_225A372C0(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_225A372C0(uint64_t a1)
{
  if (!qword_27D73B318)
  {
    sub_225CCCEA4();
    v1 = sub_225CCEFC4();
    if (!v2)
    {
      atomic_store(v1, &qword_27D73B318);
    }
  }
}

uint64_t dispatch thunk of IdentityKey.authMethod()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 72) + **(a2 + 72));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_225A01DDC;

  return v7(a1, a2);
}

uint64_t DIPKeystoreProtocol.retrieveOrGenerateIdentityKey(name:userInfo:keyTypeToGenerate:algorithm:constraints:enableUAM:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _BYTE *a6, _BYTE *a7, uint64_t a8)
{
  *(v9 + 400) = v17;
  *(v9 + 408) = v8;
  *(v9 + 384) = a8;
  *(v9 + 392) = v16;
  *(v9 + 521) = v15;
  *(v9 + 368) = a4;
  *(v9 + 376) = a5;
  *(v9 + 352) = a2;
  *(v9 + 360) = a3;
  *(v9 + 344) = a1;
  v12 = sub_225CCD954();
  *(v9 + 416) = v12;
  *(v9 + 424) = *(v12 - 8);
  *(v9 + 432) = swift_task_alloc();
  *(v9 + 440) = swift_task_alloc();
  *(v9 + 448) = swift_task_alloc();
  *(v9 + 456) = swift_task_alloc();
  *(v9 + 522) = *a6;
  *(v9 + 523) = *a7;

  return MEMORY[0x2822009F8](sub_225A376C4, 0, 0);
}

uint64_t sub_225A376C4()
{
  v107 = v0;
  *(v0 + 16) = 0u;
  v1 = *(v0 + 400);
  v2 = *(v0 + 392);
  v3 = *(v0 + 368);
  v4 = *(v0 + 376);
  v5 = *(v0 + 352);
  v6 = *(v0 + 360);
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  LOBYTE(v106) = 0;
  v7 = *(v1 + 8);
  v8 = v7(v5, v6, v3, v4, &v106, v2);
  *(v0 + 464) = v9;
  v10 = v9;
  v11 = *(v0 + 400);
  LOBYTE(v106) = 2;
  v12 = *(v11 + 24);
  v101 = v8;
  v12();
  if (*(v0 + 120))
  {
    v95 = v12;
    v99 = v7;
    sub_2259A9C20((v0 + 96), v0 + 56);
    if (qword_28105B910 != -1)
    {
      swift_once();
    }

    v14 = *(v0 + 456);
    v15 = *(v0 + 416);
    v16 = *(v0 + 424);
    v17 = off_28105B918;
    v18 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
    v19 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((off_28105B918 + v19));
    v83 = *(v16 + 16);
    v84 = v18;
    v83(v14, &v17[v18], v15);
    v90 = v17;
    v86 = v19;
    os_unfair_lock_unlock(&v17[v19]);

    v20 = sub_225CCD934();
    v21 = sub_225CCED04();

    v22 = os_log_type_enabled(v20, v21);
    v23 = *(v0 + 456);
    v25 = *(v0 + 416);
    v24 = *(v0 + 424);
    if (v22)
    {
      v26 = swift_slowAlloc();
      v82 = v25;
      v27 = v23;
      v28 = swift_slowAlloc();
      v106 = v28;
      *v26 = 136315138;
      *(v26 + 4) = sub_2259BE198(v101, v10, &v106);
      _os_log_impl(&dword_2259A7000, v20, v21, "Found standard key with label %s", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v28);
      MEMORY[0x22AA6F950](v28, -1, -1);
      MEMORY[0x22AA6F950](v26, -1, -1);

      v29 = *(v24 + 8);
      v29(v27, v82);
    }

    else
    {

      v29 = *(v24 + 8);
      v29(v23, v25);
    }

    v30 = *(v0 + 80);
    v31 = *(v0 + 88);
    __swift_project_boxed_opaque_existential_1((v0 + 56), v30);
    v32 = *((*(v31 + 40))(0, v30, v31) + 16);

    if (v32)
    {
      sub_225A386A4(v0 + 16);
      sub_225A32940(v0 + 56, v0 + 16);
      v12 = v95;
      v7 = v99;
    }

    else
    {
      v43 = *(v0 + 448);
      v44 = *(v0 + 416);
      os_unfair_lock_lock(&v90[v86]);
      v83(v43, &v90[v84], v44);
      os_unfair_lock_unlock(&v90[v86]);

      v45 = sub_225CCD934();
      v46 = sub_225CCED04();

      v47 = os_log_type_enabled(v45, v46);
      v48 = *(v0 + 448);
      v49 = *(v0 + 416);
      if (v47)
      {
        v50 = swift_slowAlloc();
        v88 = v49;
        v51 = swift_slowAlloc();
        v106 = v51;
        *v50 = 136315138;
        *(v50 + 4) = sub_2259BE198(v101, v10, &v106);
        _os_log_impl(&dword_2259A7000, v45, v46, "Standard key with label %s does not have an attestation; deleting it", v50, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v51);
        MEMORY[0x22AA6F950](v51, -1, -1);
        MEMORY[0x22AA6F950](v50, -1, -1);

        v52 = v88;
        v53 = v48;
      }

      else
      {

        v53 = v48;
        v52 = v49;
      }

      v29(v53, v52);
      v12 = v95;
      v7 = v99;
      (*(*(v0 + 400) + 32))(v101, v10, 0, *(v0 + 392));
    }

    __swift_destroy_boxed_opaque_existential_0((v0 + 56));
  }

  else
  {
    sub_225A386A4(v0 + 96);
  }

  sub_225A3870C(v0 + 16, v0 + 136);
  if (!*(v0 + 160))
  {
    v100 = v7;
    v102 = *(v0 + 400);
    v92 = *(v0 + 392);
    v96 = v12;
    v37 = *(v0 + 368);
    v36 = *(v0 + 376);
    v39 = *(v0 + 352);
    v38 = *(v0 + 360);
    sub_225A386A4(v0 + 136);
    LOBYTE(v106) = 1;
    v40 = v100(v39, v38, v37, v36, &v106, v92, v102);
    *(v0 + 472) = v41;
    v42 = v41;
    LOBYTE(v106) = 0;
    v103 = v40;
    v96();
    if (*(v0 + 240))
    {
      sub_2259A9C20((v0 + 216), v0 + 176);
      if (qword_28105B910 != -1)
      {
        swift_once();
      }

      v54 = *(v0 + 440);
      v55 = *(v0 + 424);
      v97 = *(v0 + 416);
      v56 = off_28105B918;
      v57 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
      v58 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
      os_unfair_lock_lock((off_28105B918 + v58));
      (*(v55 + 16))(v54, &v56[v57], v97);
      os_unfair_lock_unlock(&v56[v58]);

      v59 = sub_225CCD934();
      v60 = sub_225CCED04();

      v61 = os_log_type_enabled(v59, v60);
      v62 = *(v0 + 440);
      v64 = *(v0 + 416);
      v63 = *(v0 + 424);
      if (v61)
      {
        v98 = *(v0 + 416);
        v65 = swift_slowAlloc();
        v93 = v62;
        v66 = swift_slowAlloc();
        v106 = v66;
        *v65 = 136315138;
        *(v65 + 4) = sub_2259BE198(v103, v42, &v106);
        _os_log_impl(&dword_2259A7000, v59, v60, "Found background key with label %s", v65, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v66);
        MEMORY[0x22AA6F950](v66, -1, -1);
        MEMORY[0x22AA6F950](v65, -1, -1);

        (*(v63 + 8))(v93, v98);
      }

      else
      {

        (*(v63 + 8))(v62, v64);
      }

      sub_225A386A4(v0 + 16);
      sub_2259A9C20((v0 + 176), v0 + 16);
    }

    else
    {
      sub_225A386A4(v0 + 216);
    }

    sub_225A3870C(v0 + 16, v0 + 256);
    if (*(v0 + 280))
    {
      v33 = *(v0 + 344);
      sub_225A386A4(v0 + 16);

      v34 = (v0 + 256);
      goto LABEL_17;
    }

    sub_225A386A4(v0 + 256);
    v67 = [objc_opt_self() standardUserDefaults];
    if (qword_28105B9F0 != -1)
    {
      swift_once();
    }

    if (byte_28105B9F8 == 1)
    {
      v68 = sub_225CCE444();
      v69 = [v67 BOOLForKey_];

      if (v69)
      {
        v70 = 15;
        goto LABEL_44;
      }
    }

    else
    {
    }

    v71 = *(v0 + 522);
    v72 = 15;
    if (v71 == 1)
    {
      v72 = 525600;
    }

    if (v71 == 3)
    {
      v70 = 87840;
    }

    else
    {
      v70 = v72;
    }

LABEL_44:
    if (*(v0 + 384))
    {
      v73 = *(v0 + 384);
    }

    else
    {
      v73 = sub_225B2CECC(MEMORY[0x277D84F90]);
    }

    v74 = *(v0 + 522);
    v104 = *(v0 + 400);
    v94 = *(v0 + 392);
    v89 = *(v0 + 368);
    v91 = *(v0 + 376);
    v85 = *(v0 + 352);
    v87 = *(v0 + 360);
    *(v0 + 336) = v70;

    v75 = sub_225CCF824();
    v77 = v76;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v106 = v73;
    sub_225A04090(v75, v77, 1, isUniquelyReferenced_nonNull_native);
    *(v0 + 480) = v106;
    LOBYTE(v106) = v74;
    *(v0 + 488) = v100(v85, v87, v89, v91, &v106, v94, v104);
    *(v0 + 496) = v79;
    v80 = *(v0 + 400);
    *(v0 + 520) = *(v0 + 523);
    v105 = *(v80 + 16) + **(v80 + 16);
    v81 = swift_task_alloc();
    *(v0 + 504) = v81;
    *v81 = v0;
    v81[1] = sub_225A38220;
    v109 = *(v0 + 400);

    __asm { BRAA            X8, X16 }
  }

  v33 = *(v0 + 344);
  sub_225A386A4(v0 + 16);

  v34 = (v0 + 136);
LABEL_17:
  sub_2259A9C20(v34, v33);

  v35 = *(v0 + 8);

  return v35();
}

uint64_t sub_225A38220()
{
  *(*v1 + 512) = v0;

  if (v0)
  {

    v2 = sub_225A38614;
  }

  else
  {
    v2 = sub_225A3836C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_225A3836C()
{
  v24 = v0;
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 424);
  v1 = *(v0 + 432);
  v3 = *(v0 + 416);
  v4 = off_28105B918;
  v5 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v6 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v6));
  (*(v2 + 16))(v1, &v4[v5], v3);
  os_unfair_lock_unlock(&v4[v6]);

  v7 = sub_225CCD934();
  v8 = sub_225CCED04();

  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 496);
  if (v9)
  {
    v11 = *(v0 + 488);
    v13 = *(v0 + 424);
    v12 = *(v0 + 432);
    v14 = *(v0 + 416);
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v23 = v16;
    *v15 = 136315138;
    v17 = sub_2259BE198(v11, v10, &v23);

    *(v15 + 4) = v17;
    _os_log_impl(&dword_2259A7000, v7, v8, "created new identity key with label %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x22AA6F950](v16, -1, -1);
    MEMORY[0x22AA6F950](v15, -1, -1);

    (*(v13 + 8))(v12, v14);
  }

  else
  {
    v19 = *(v0 + 424);
    v18 = *(v0 + 432);
    v20 = *(v0 + 416);

    (*(v19 + 8))(v18, v20);
  }

  sub_225A386A4(v0 + 16);
  sub_2259A9C20((v0 + 296), *(v0 + 344));

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_225A38614()
{
  sub_225A386A4(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_225A386A4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B078, &unk_225CD7B20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_225A3870C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B078, &unk_225CD7B20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_225A38780()
{
  result = qword_27D73B320;
  if (!qword_27D73B320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73B320);
  }

  return result;
}

unint64_t sub_225A387D8()
{
  result = qword_27D73B328;
  if (!qword_27D73B328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73B328);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for IdentityKeyGenerationOption(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for IdentityKeyGenerationOption(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t dispatch thunk of DIPKeystoreProtocol.generateIdentityKeyPair(label:algorithm:constraints:enableUAM:temporary:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v19 = (*(a9 + 16) + **(a9 + 16));
  v17 = swift_task_alloc();
  *(v9 + 16) = v17;
  *v17 = v9;
  v17[1] = sub_2259FE39C;

  return v19(a1, a2, a3, a4, a5, a6, a7, a8, a9);
}

unint64_t DIPOID.rawValue.getter()
{
  result = 0xD000000000000019;
  switch(*v0)
  {
    case 7:
    case 8:
      result = 0xD00000000000001ALL;
      break;
    case 0xA:
    case 0xE:
      result = 0xD000000000000018;
      break;
    case 0xB:
    case 0xC:
    case 0xD:
    case 0xF:
      result = 0xD000000000000017;
      break;
    default:
      return result;
  }

  return result;
}

double static DIPCertUsage.photoIDIssuerAuth.getter@<D0>(uint64_t a1@<X8>)
{
  *&result = 19;
  *a1 = xmmword_225CD9260;
  *(a1 + 16) = 2;
  return result;
}

uint64_t DIPCertUsage.policyName.getter()
{
  v1 = *v0;
  v2 = v0[1];
  if (!*(v0 + 16))
  {
    sub_225CCF204();

    v3 = 0xD000000000000010;
    goto LABEL_5;
  }

  if (*(v0 + 16) == 1)
  {
    sub_225CCF204();

    v3 = 0xD000000000000019;
LABEL_5:
    v7 = v3;
    MEMORY[0x22AA6CE70](v1, v2);
    MEMORY[0x22AA6CE70](10530, 0xE200000000000000);
    return v7;
  }

  result = 0x6449746E65696C63;
  switch(v1)
  {
    case 1:
      return 0xD000000000000013;
    case 2:
      return 0xD000000000000016;
    case 3:
      return 0xD00000000000001ELL;
    case 4:
      return 0xD000000000000021;
    case 5:
      v6 = 1399811689;
      goto LABEL_23;
    case 6:
      return 0x7972636E456F6E69;
    case 7:
      return 0x6E696E6769537073;
    case 8:
      return 0x707972636E457073;
    case 9:
    case 12:
      v5 = 9;
      goto LABEL_25;
    case 10:
    case 16:
      v5 = 5;
LABEL_25:
      result = v5 | 0xD000000000000012;
      break;
    case 11:
      result = 0xD000000000000012;
      break;
    case 13:
      result = 0xD00000000000001CLL;
      break;
    case 14:
      result = 0xD000000000000025;
      break;
    case 15:
      result = 0xD00000000000001ALL;
      break;
    case 17:
      result = 0xD000000000000012;
      break;
    case 18:
      v6 = 1399616107;
LABEL_23:
      result = v6 | 0x696E676900000000;
      break;
    case 19:
      result = 0xD000000000000012;
      break;
    case 20:
      result = 0xD000000000000012;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_225A3901C@<X0>(uint64_t a1@<X8>)
{
  v4 = *v1;
  v3 = *(v1 + 8);
  v5 = *(v1 + 16);
  if (!*(v1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B400, &qword_225CD95F8);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_225CD30F0;
    v7 = 3;
LABEL_5:
    *(v6 + 32) = SecPolicyCreateRevocation(v7);
    *a1 = v4;
    *(a1 + 8) = v3;
LABEL_6:
    *(a1 + 16) = 5397;
    goto LABEL_32;
  }

  if (v5 == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B400, &qword_225CD95F8);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_225CD30F0;
    v7 = 16;
    goto LABEL_5;
  }

  switch(v4)
  {
    case 1:
      *a1 = 0;
      *(a1 + 8) = 0;
      v9 = 4353;
      goto LABEL_31;
    case 2:
      *a1 = 0;
      *(a1 + 8) = 0;
      v9 = 4354;
      goto LABEL_31;
    case 3:
      *a1 = 0;
      *(a1 + 8) = 0;
      v9 = 4355;
      goto LABEL_31;
    case 4:
      *a1 = 0;
      *(a1 + 8) = 0;
      v9 = 4356;
      goto LABEL_31;
    case 5:
      *a1 = 0;
      *(a1 + 8) = 0;
      v9 = 4357;
      goto LABEL_31;
    case 6:
      *a1 = 0;
      *(a1 + 8) = 0;
      v9 = 4358;
      goto LABEL_31;
    case 7:
      *a1 = 0;
      *(a1 + 8) = 0;
      v9 = 4359;
      goto LABEL_31;
    case 8:
      *a1 = 0;
      *(a1 + 8) = 0;
      v9 = 4360;
      goto LABEL_31;
    case 9:
      *a1 = 0;
      *(a1 + 8) = 0;
      v9 = 4361;
      goto LABEL_31;
    case 10:
      *a1 = xmmword_225CD9290;
      v9 = 5397;
      goto LABEL_31;
    case 11:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B400, &qword_225CD95F8);
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_225CD30F0;
      v11 = 3;
      goto LABEL_14;
    case 12:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B400, &qword_225CD95F8);
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_225CD30F0;
      v11 = 16;
LABEL_14:
      *(v6 + 32) = SecPolicyCreateRevocation(v11);
      v8 = xmmword_225CD48A0;
      goto LABEL_27;
    case 13:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B400, &qword_225CD95F8);
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_225CD30F0;
      v10 = 3;
      goto LABEL_26;
    case 14:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B400, &qword_225CD95F8);
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_225CD30F0;
      v10 = 16;
LABEL_26:
      *(v6 + 32) = SecPolicyCreateRevocation(v10);
      v8 = xmmword_225CD9280;
      goto LABEL_27;
    case 15:
      *a1 = 0;
      *(a1 + 8) = 0;
      v9 = 4363;
      goto LABEL_31;
    case 16:
      *a1 = 0;
      *(a1 + 8) = 0;
      v9 = 4364;
      goto LABEL_31;
    case 17:
      *a1 = 0;
      *(a1 + 8) = 0;
      v9 = 5133;
      goto LABEL_31;
    case 18:
    case 19:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B400, &qword_225CD95F8);
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_225CD30F0;
      *(v6 + 32) = SecPolicyCreateRevocation(0x10uLL);
      v8 = xmmword_225CD9270;
LABEL_27:
      *a1 = v8;
      goto LABEL_6;
    case 20:
      *a1 = 0;
      *(a1 + 8) = 0;
      v9 = 4622;
      goto LABEL_31;
    default:
      *a1 = 0;
      *(a1 + 8) = 0;
      v9 = 4096;
LABEL_31:
      *(a1 + 16) = v9;
      v6 = MEMORY[0x277D84F90];
      break;
  }

LABEL_32:
  *(a1 + 24) = v6;

  return sub_2259F6128(v4, v3, v5);
}

CoreIDVShared::DIPOID_optional __swiftcall DIPOID.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_225CCFA64();

  v5 = 0;
  v6 = 3;
  switch(v3)
  {
    case 0:
      goto LABEL_11;
    case 1:
      v5 = 1;
      goto LABEL_11;
    case 2:
      v5 = 2;
LABEL_11:
      v6 = v5;
      break;
    case 3:
      break;
    case 4:
      v6 = 4;
      break;
    case 5:
      v6 = 5;
      break;
    case 6:
      v6 = 6;
      break;
    case 7:
      v6 = 7;
      break;
    case 8:
      v6 = 8;
      break;
    case 9:
      v6 = 9;
      break;
    case 10:
      v6 = 10;
      break;
    case 11:
      v6 = 11;
      break;
    case 12:
      v6 = 12;
      break;
    case 13:
      v6 = 13;
      break;
    case 14:
      v6 = 14;
      break;
    case 15:
      v6 = 15;
      break;
    case 16:
      v6 = 16;
      break;
    case 17:
      v6 = 17;
      break;
    case 18:
      v6 = 18;
      break;
    case 19:
      v6 = 19;
      break;
    case 20:
      v6 = 20;
      break;
    default:
      v6 = 21;
      break;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_225A39464()
{
  v0 = DIPOID.rawValue.getter();
  v2 = v1;
  if (v0 == DIPOID.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_225CCF934();
  }

  return v5 & 1;
}

uint64_t sub_225A39500()
{
  sub_225CCFBD4();
  DIPOID.rawValue.getter();
  sub_225CCE5B4();

  return sub_225CCFC24();
}

uint64_t sub_225A39568(uint64_t a1)
{
  DIPOID.rawValue.getter();
  sub_225CCE5B4();
}

uint64_t sub_225A395CC()
{
  sub_225CCFBD4();
  DIPOID.rawValue.getter();
  sub_225CCE5B4();

  return sub_225CCFC24();
}

unint64_t sub_225A3963C@<X0>(unint64_t *a1@<X8>)
{
  result = DIPOID.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t DIPOIDVerifier.init(dateProvider:)@<X0>(__int128 *a1@<X0>, unint64_t *a2@<X8>)
{
  *a2 = sub_225B2D350(MEMORY[0x277D84F90]);
  a2[1] = 0;

  return sub_2259A9C20(a1, (a2 + 2));
}

Swift::Void __swiftcall DIPOIDVerifier.setIntermediates(fromBase64DER:)(Swift::OpaquePointer fromBase64DER)
{
  v2 = sub_225CCD954();
  v3 = MEMORY[0x28223BE20](v2);
  v5 = &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v9 = &v60 - v7;
  v10 = *(fromBase64DER._rawValue + 2);
  if (!v10)
  {
    return;
  }

  v65 = (v6 + 8);
  v66 = (v6 + 16);
  v11 = (fromBase64DER._rawValue + 40);
  *&v8 = 136446210;
  v62 = v8;
  v64 = v2;
  v67 = &v60 - v7;
  v61 = v5;
  while (1)
  {
    v12 = *(v11 - 1);
    v13 = *v11;

    v14._countAndFlagsBits = v12;
    v14._object = v13;
    v15 = decodeCertificate(fromBase64DER:)(v14);
    if (v16)
    {
      if (qword_28105B910 != -1)
      {
        swift_once();
      }

      v17 = off_28105B918;
      v18 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
      v19 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
      os_unfair_lock_lock((off_28105B918 + v19));
      (*v66)(v5, &v17[v18], v2);
      os_unfair_lock_unlock(&v17[v19]);

      v20 = v16;
      v21 = v5;
      v22 = sub_225CCD934();
      v23 = sub_225CCED14();

      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v68 = v25;
        *v24 = v62;
        swift_getErrorValue();
        v26 = sub_225CCFB24();
        v28 = sub_2259BE198(v26, v27, &v68);

        *(v24 + 4) = v28;
        _os_log_impl(&dword_2259A7000, v22, v23, "Error decoding intermediate certificate; skipping: %{public}s", v24, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v25);
        MEMORY[0x22AA6F950](v25, -1, -1);
        v29 = v24;
        v2 = v64;
        MEMORY[0x22AA6F950](v29, -1, -1);
      }

      else
      {
      }

      (*v65)(v21, v2);
      v5 = v21;
      goto LABEL_5;
    }

    v30 = v15;

    v31 = SecCertificateCopyNormalizedSubjectSequence(v30);
    if (!v31)
    {
      if (qword_28105B910 != -1)
      {
        swift_once();
      }

      v52 = off_28105B918;
      v53 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
      v54 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
      os_unfair_lock_lock((off_28105B918 + v54));
      (*v66)(v9, &v52[v53], v2);
      os_unfair_lock_unlock(&v52[v54]);
      v55 = sub_225CCD934();
      v56 = sub_225CCED14();
      if (os_log_type_enabled(v55, v56))
      {
        v57 = swift_slowAlloc();
        *v57 = 0;
        _os_log_impl(&dword_2259A7000, v55, v56, "No normalized subject sequence was returned from intermediate cert; skipping", v57, 2u);
        MEMORY[0x22AA6F950](v57, -1, -1);
      }

      else
      {
      }

      (*v65)(v9, v2);
      goto LABEL_6;
    }

    v32 = v31;
    v33 = sub_225CCCFA4();
    v35 = v34;

    v36 = v63;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v38 = *v36;
    v68 = v38;
    v40 = sub_2259F1D7C(v33, v35);
    v41 = *(v38 + 16);
    v42 = (v39 & 1) == 0;
    v43 = v41 + v42;
    if (__OFADD__(v41, v42))
    {
      break;
    }

    v44 = v39;
    if (*(v38 + 24) >= v43)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v47 = v68;
        if ((v39 & 1) == 0)
        {
          goto LABEL_17;
        }
      }

      else
      {
        sub_225A444CC();
        v47 = v68;
        if ((v44 & 1) == 0)
        {
          goto LABEL_17;
        }
      }
    }

    else
    {
      sub_225A40E50(v43, isUniquelyReferenced_nonNull_native);
      v45 = sub_2259F1D7C(v33, v35);
      if ((v44 & 1) != (v46 & 1))
      {
        goto LABEL_34;
      }

      v40 = v45;
      v47 = v68;
      if ((v44 & 1) == 0)
      {
LABEL_17:
        v47[(v40 >> 6) + 8] |= 1 << v40;
        v48 = (v47[6] + 16 * v40);
        *v48 = v33;
        v48[1] = v35;
        *(v47[7] + 8 * v40) = v30;
        v49 = v47[2];
        v50 = __OFADD__(v49, 1);
        v51 = v49 + 1;
        if (v50)
        {
          goto LABEL_33;
        }

        v47[2] = v51;
        goto LABEL_26;
      }
    }

    v58 = v47[7];
    v59 = *(v58 + 8 * v40);
    *(v58 + 8 * v40) = v30;

    sub_2259BEF00(v33, v35);
LABEL_26:
    v2 = v64;
    *v63 = v47;
    v5 = v61;
LABEL_5:
    v9 = v67;
LABEL_6:
    v11 += 2;
    if (!--v10)
    {
      return;
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  sub_225CCFAC4();
  __break(1u);
}

Swift::Void __swiftcall DIPOIDVerifier.setTrustedRoots(_:)(Swift::OpaquePointer a1)
{

  v1[1]._rawValue = a1._rawValue;
}

uint64_t DIPOIDVerifier.verifyChain(_:forUsage:)(uint64_t a1, uint64_t a2)
{
  *(v3 + 152) = a1;
  *(v3 + 160) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  *(v3 + 168) = swift_task_alloc();
  *(v3 + 176) = type metadata accessor for DIPSignpost.Config(0);
  *(v3 + 184) = swift_task_alloc();
  type metadata accessor for DIPSignpost(0);
  *(v3 + 192) = swift_task_alloc();
  *(v3 + 200) = *a2;
  *(v3 + 248) = *(a2 + 16);

  return MEMORY[0x2822009F8](sub_225A39DC4, 0, 0);
}

uint64_t sub_225A39DC4()
{
  v12 = v0;
  v1 = *(v0 + 248);
  v2 = *(v0 + 152);
  v10 = *(v0 + 200);
  LOBYTE(v11) = v1;
  v3 = sub_225A3A94C(v2, &v10);
  *(v0 + 216) = v3;
  *(v0 + 224) = 0;
  v4 = v3;
  if (qword_28105AD80 != -1)
  {
    swift_once();
  }

  v6 = *(v0 + 184);
  v5 = *(v0 + 192);
  v7 = __swift_project_value_buffer(*(v0 + 176), qword_28105AD88);
  sub_225A47158(v7, v6, type metadata accessor for DIPSignpost.Config);
  DIPSignpost.init(_:)(v6, v5);
  v8 = swift_task_alloc();
  *(v0 + 232) = v8;
  *v8 = v0;
  v8[1] = sub_225A3A30C;

  return sub_225A3C0F4(v4);
}

uint64_t sub_225A3A30C(uint64_t a1, char a2)
{
  v3 = *v2;
  *(v3 + 240) = a1;
  *(v3 + 249) = a2;

  return MEMORY[0x2822009F8](sub_225A3A410, 0, 0);
}

uint64_t sub_225A3A410()
{
  v54 = v0;
  v1 = *(v0 + 249);
  v2 = *(v0 + 240);
  v3 = *(v0 + 216);
  v47 = *(v0 + 224);
  v4 = *(v0 + 248);
  v5 = *(v0 + 200);
  v6 = *(v0 + 208);
  v7 = *(v0 + 152);
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  v48 = v5;
  v49 = v6;
  LOBYTE(v50) = v4;
  sub_225A3C3C0(v2, v1 & 1, v7, v3, &v48);
  if (v47)
  {
    v8 = *(v0 + 240);
    v9 = *(v0 + 216);
    v10 = *(v0 + 249);
    sub_2259CB6A0(*(v0 + 192));

    sub_225A4607C(v8, v10 & 1);
    v11 = v47;
    v12 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    swift_allocError();
    v14 = v13;
    swift_getErrorValue();
    v15 = *(v0 + 104);
    v16 = v47;
    sub_225B21FAC(v15, &v48);

    v17 = v49;
    if (v49)
    {
      v45 = v51;
      v46 = v48;
      v18 = v52;
      v43 = v53;
      v44 = v50;
    }

    else
    {
      *(v0 + 128) = v47;
      v24 = v47;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48, &qword_225CD75F0);
      sub_2259E4540();
      if (swift_dynamicCast())
      {
        v25 = *(v0 + 136);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10, &unk_225CD4660);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_225CD30F0;
        *(inited + 32) = 20;
        v27 = [v25 code];
        v28 = MEMORY[0x277D83BF8];
        *(inited + 64) = MEMORY[0x277D83B88];
        *(inited + 72) = v28;
        *(inited + 40) = v27;
        v18 = sub_225B2C374(inited);
        swift_setDeallocating();
        sub_2259CB640(inited + 32, &qword_27D73B060, &unk_225CD3AE0);

        v29 = v47;
        v44 = 0;
        v45 = 0;
        v46 = 0;
        v17 = MEMORY[0x277D84F90];
      }

      else
      {
        v30 = *(v0 + 168);
        *(v0 + 144) = v47;
        v31 = v47;
        v32 = sub_225CCE954();
        v33 = swift_dynamicCast();
        v34 = *(v32 - 8);
        (*(v34 + 56))(v30, v33 ^ 1u, 1, v32);
        LODWORD(v34) = (*(v34 + 48))(v30, 1, v32);
        sub_2259CB640(v30, &unk_27D73B050, &unk_225CD3AD0);
        if (v34)
        {
          v35 = 0;
        }

        else
        {
          v35 = 23;
        }

        v46 = v35;
        v17 = MEMORY[0x277D84F90];
        v18 = sub_225B2C374(MEMORY[0x277D84F90]);
        v36 = v47;
        v44 = 0;
        v45 = 0;
      }

      v43 = v47;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v48 = v18;
    sub_225B2C4A0(v12, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v48);

    v38 = v48;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v17 = sub_225B29AA0(0, *(v17 + 2) + 1, 1, v17);
    }

    v40 = *(v17 + 2);
    v39 = *(v17 + 3);
    if (v40 >= v39 >> 1)
    {
      v17 = sub_225B29AA0((v39 > 1), v40 + 1, 1, v17);
    }

    *(v17 + 2) = v40 + 1;
    v41 = &v17[56 * v40];
    *(v41 + 4) = 0;
    *(v41 + 5) = 0;
    *(v41 + 6) = 0xD000000000000022;
    *(v41 + 7) = 0x8000000225D19320;
    *(v41 + 8) = 0xD000000000000018;
    *(v41 + 9) = 0x8000000225D19350;
    *(v41 + 10) = 415;
    *v14 = v46;
    *(v14 + 8) = v17;
    *(v14 + 16) = v44;
    *(v14 + 24) = v45;
    *(v14 + 32) = v38;
    *(v14 + 40) = v43;
    swift_willThrow();

    v42 = *(v0 + 8);

    return v42();
  }

  else
  {
    v19 = *(v0 + 240);
    v20 = *(v0 + 249);
    sub_2259CB6A0(*(v0 + 192));
    sub_225A4607C(v19, v20 & 1);

    v21 = *(v0 + 8);
    v22 = *(v0 + 216);

    return v21(v22);
  }
}

SecTrustRef sub_225A3A94C(unint64_t a1, uint64_t a2)
{
  v199 = *MEMORY[0x277D85DE8];
  v179 = sub_225CCD0B4();
  v178 = *(v179 - 8);
  MEMORY[0x28223BE20](v179);
  v177 = &v173 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  MEMORY[0x28223BE20](v5 - 8);
  v185 = &v173 - v6;
  v183 = sub_225CCD954();
  v184 = *(v183 - 8);
  v7 = MEMORY[0x28223BE20](v183);
  v176 = &v173 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v175 = &v173 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v174 = &v173 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v173 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v173 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v173 - v19;
  v21 = *a2;
  v24 = *(a2 + 8);
  LODWORD(a2) = *(a2 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10, &unk_225CD4660);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_225CD30F0;
  *(inited + 32) = 17;
  v186 = v21;
  v189 = v21;
  v23 = v24;
  LODWORD(v24) = a2;
  v190 = v23;
  v191 = a2;
  v25 = DIPCertUsage.policyName.getter();
  v26 = MEMORY[0x277D83838];
  *(inited + 64) = MEMORY[0x277D837D0];
  *(inited + 72) = v26;
  *(inited + 40) = v25;
  *(inited + 48) = v27;
  v28 = sub_225B2C374(inited);
  swift_setDeallocating();
  sub_2259CB640(inited + 32, &qword_27D73B060, &unk_225CD3AE0);
  v182 = v28;
  v188 = v28;
  if (!(a1 >> 62))
  {
    if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_74:
    sub_2259CB5EC();
    swift_allocError();
    v160 = v159;
    v161 = sub_225CCE954();
    v162 = *(v161 - 8);
    v163 = v185;
    (*(v162 + 56))(v185, 1, 1, v161);
    LODWORD(v161) = (*(v162 + 48))(v163, 1, v161);
    sub_2259CB640(v163, &unk_27D73B050, &unk_225CD3AD0);
    if (v161)
    {
      v164 = 263;
    }

    else
    {
      v164 = 23;
    }

    v165 = MEMORY[0x277D84F90];
    v166 = sub_225B2C374(MEMORY[0x277D84F90]);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v189 = v166;
    sub_225B2C4A0(v182, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v189);

    v104 = v189;
    v168 = sub_225B29AA0(0, 1, 1, v165);
    v170 = *(v168 + 2);
    v169 = *(v168 + 3);
    if (v170 >= v169 >> 1)
    {
      v168 = sub_225B29AA0((v169 > 1), v170 + 1, 1, v168);
    }

    *(v168 + 2) = v170 + 1;
    v171 = &v168[56 * v170];
    *(v171 + 4) = 0xD000000000000030;
    *(v171 + 5) = 0x8000000225D19590;
    *(v171 + 6) = 0xD000000000000022;
    *(v171 + 7) = 0x8000000225D19320;
    *(v171 + 8) = 0xD000000000000017;
    *(v171 + 9) = 0x8000000225D19530;
    *(v171 + 10) = 459;
    *v160 = v164;
    *(v160 + 8) = v168;
    *(v160 + 16) = 0xD000000000000030;
    *(v160 + 24) = 0x8000000225D19590;
    *(v160 + 32) = v104;
    *(v160 + 40) = 0;
    swift_willThrow();
    return v104;
  }

  if (!sub_225CCF144())
  {
    goto LABEL_74;
  }

LABEL_3:
  v180 = a1;
  v196 = v186;
  v197 = v23;
  v198 = v24;
  sub_225A3901C(&v189);
  v29 = v189;
  v30 = v190;
  sub_225A47314(v189, v190);
  sub_225A47328(v29, v30);

  if (v30 <= 1)
  {
    if (!v30)
    {
      v66 = v24;
      if (qword_28105B910 != -1)
      {
        swift_once();
      }

      v67 = off_28105B918;
      v68 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
      v69 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
      os_unfair_lock_lock((off_28105B918 + v69));
      v70 = v184;
      v71 = v183;
      (v184)[2](v20, &v67[v68], v183);
      os_unfair_lock_unlock(&v67[v69]);
      v72 = sub_225CCD934();
      v73 = sub_225CCED04();
      if (os_log_type_enabled(v72, v73))
      {
        v74 = swift_slowAlloc();
        *v74 = 0;
        _os_log_impl(&dword_2259A7000, v72, v73, "OIDVerifier using AP policy", v74, 2u);
        MEMORY[0x22AA6F950](v74, -1, -1);
      }

      (v70[1])(v20, v71);
      v196 = v186;
      v197 = v23;
      v198 = v66;
      sub_225A3901C(&v189);
      v75 = v192;
      sub_225A47328(v189, v190);

      if (v75 == 21)
      {
        v76 = 0;
      }

      else
      {
        LOBYTE(v189) = v75;
        DIPOID.rawValue.getter();
        v76 = sub_225CCE444();
      }

      v196 = v186;
      v197 = v23;
      v198 = v66;
      sub_225A3901C(&v189);
      v91 = v191;
      sub_225A47328(v189, v190);

      if (v91 == 21)
      {
        v92 = 0;
      }

      else
      {
        LOBYTE(v189) = v91;
        DIPOID.rawValue.getter();
        v92 = sub_225CCE444();
      }

      v189 = v186;
      v190 = v23;
      v191 = v66;
      DIPCertUsage.policyName.getter();
      v24 = sub_225CCE444();

      ApplePinned = DIPSecPolicyCreateApplePinned();

      LOBYTE(v24) = v66;
      ApplePayModelSigning = ApplePinned;
      goto LABEL_47;
    }

    if (v30 == 1)
    {
      if (qword_28105B910 != -1)
      {
        swift_once();
      }

      v41 = off_28105B918;
      v42 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
      v43 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
      os_unfair_lock_lock((off_28105B918 + v43));
      v44 = v184;
      v45 = v183;
      (v184)[2](v18, &v41[v42], v183);
      os_unfair_lock_unlock(&v41[v43]);
      v46 = sub_225CCD934();
      v47 = sub_225CCED04();
      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        *v48 = 0;
        _os_log_impl(&dword_2259A7000, v46, v47, "OIDVerifier using APMS policy", v48, 2u);
        MEMORY[0x22AA6F950](v48, -1, -1);
      }

      (v44[1])(v18, v45);
      ApplePayModelSigning = DIPSecPolicyCreateApplePayModelSigning(0);
      goto LABEL_47;
    }

    goto LABEL_36;
  }

  switch(v30)
  {
    case 2:
      if (qword_28105B910 != -1)
      {
        swift_once();
      }

      v49 = off_28105B918;
      v50 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
      v51 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
      os_unfair_lock_lock((off_28105B918 + v51));
      v52 = v184;
      v53 = v183;
      (v184)[2](v15, &v49[v50], v183);
      os_unfair_lock_unlock(&v49[v51]);
      v54 = sub_225CCD934();
      v55 = sub_225CCED04();
      if (os_log_type_enabled(v54, v55))
      {
        v56 = swift_slowAlloc();
        *v56 = 0;
        _os_log_impl(&dword_2259A7000, v54, v55, "OIDVerifier using mDL TA policy", v56, 2u);
        MEMORY[0x22AA6F950](v56, -1, -1);
      }

      (v52[1])(v15, v53);
      break;
    case 3:
      if (qword_28105B910 != -1)
      {
        swift_once();
      }

      v57 = off_28105B918;
      v58 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
      v59 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
      os_unfair_lock_lock((off_28105B918 + v59));
      v60 = v184;
      v61 = v174;
      v62 = v183;
      (v184)[2](v174, &v57[v58], v183);
      os_unfair_lock_unlock(&v57[v59]);
      v63 = sub_225CCD934();
      v64 = sub_225CCED04();
      if (os_log_type_enabled(v63, v64))
      {
        v65 = swift_slowAlloc();
        *v65 = 0;
        _os_log_impl(&dword_2259A7000, v63, v64, "OIDVerifier using mDL TA policy without OID check", v65, 2u);
        MEMORY[0x22AA6F950](v65, -1, -1);
      }

      (v60[1])(v61, v62);
      break;
    case 4:
      if (qword_28105B910 != -1)
      {
        swift_once();
      }

      v31 = off_28105B918;
      v32 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
      v33 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
      os_unfair_lock_lock((off_28105B918 + v33));
      v34 = v184;
      v35 = v175;
      v36 = v183;
      (v184)[2](v175, &v31[v32], v183);
      os_unfair_lock_unlock(&v31[v33]);
      v37 = sub_225CCD934();
      v38 = sub_225CCED04();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        *v39 = 0;
        _os_log_impl(&dword_2259A7000, v37, v38, "OIDVerifier using BasicX509 policy", v39, 2u);
        MEMORY[0x22AA6F950](v39, -1, -1);
      }

      (v34[1])(v35, v36);
      ApplePayModelSigning = SecPolicyCreateBasicX509();
      goto LABEL_47;
    default:
LABEL_36:
      LODWORD(v175) = v24;
      if (qword_28105B910 != -1)
      {
        swift_once();
      }

      v77 = off_28105B918;
      v78 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
      v79 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
      os_unfair_lock_lock((off_28105B918 + v79));
      v80 = v184;
      v81 = v176;
      v82 = v183;
      (v184)[2](v176, &v77[v78], v183);
      v83 = &v77[v79];
      v84 = v81;
      os_unfair_lock_unlock(v83);

      v85 = sub_225CCD934();
      v86 = sub_225CCED04();
      sub_225A47328(v29, v30);
      if (os_log_type_enabled(v85, v86))
      {
        v87 = swift_slowAlloc();
        v88 = v23;
        v89 = swift_slowAlloc();
        v189 = v89;
        *v87 = 136315138;
        *(v87 + 4) = sub_2259BE198(v29, v30, &v189);
        _os_log_impl(&dword_2259A7000, v85, v86, "OIDVerifier using IdentityWebPresentment policy with host name %s", v87, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v89);
        v90 = v89;
        v23 = v88;
        MEMORY[0x22AA6F950](v90, -1, -1);
        MEMORY[0x22AA6F950](v87, -1, -1);

        (v80[1])(v176, v82);
      }

      else
      {

        (v80[1])(v84, v82);
      }

      LOBYTE(v24) = v175;
      v94 = sub_225CCE444();
      sub_225A47328(v29, v30);
      IdentityWebPresentment = SecPolicyCreateIdentityWebPresentment();

      ApplePayModelSigning = IdentityWebPresentment;
      goto LABEL_47;
  }

  ApplePayModelSigning = SecPolicyCreateMDLTerminalAuth();
LABEL_47:
  v96 = ApplePayModelSigning;
  v196 = v186;
  v197 = v23;
  v198 = v24;
  sub_225A3901C(&v189);
  v98 = v189;
  v97 = v190;
  v99 = v193;

  sub_225A47328(v98, v97);

  v187 = v99;
  MEMORY[0x22AA6D020](v100);
  if (*(v187 + 16) >= *(v187 + 24) >> 1)
  {
    sub_225CCE844();
  }

  sub_225CCE884();
  trust = 0;
  type metadata accessor for SecCertificate(0);
  v101 = sub_225CCE7F4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B3F8, &qword_225CD95F0);
  v102 = sub_225CCE7F4();

  v103 = SecTrustCreateWithCertificates(v101, v102, &trust);

  if (!v103)
  {
    v104 = trust;
    if (trust)
    {
      if (v181[1])
      {
        v105 = trust;
        v106 = sub_225CCE7F4();
        v107 = SecTrustSetAnchorCertificates(v105, v106);

        if (v107)
        {
          v193 = MEMORY[0x277D849A8];
          v194 = MEMORY[0x277D84A08];
          LODWORD(v189) = v107;
          sub_225A053A8(&v189, 20);
          v189 = 0;
          v190 = 0xE000000000000000;
          sub_225CCF204();
          MEMORY[0x22AA6CE70](0xD000000000000035, 0x8000000225D19550);
          v108 = SecCopyErrorMessageString(v107, 0);
          v184 = v96;
          if (v108)
          {
            v109 = v108;
            v110 = sub_225CCE474();
            v112 = v111;
          }

          else
          {
            v110 = 0;
            v112 = 0;
          }

          v196 = v110;
          v197 = v112;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73E130, &qword_225CEFF10);
          sub_225CCF434();

          v142 = v189;
          v141 = v190;
          v143 = v188;
          v186 = 0x8000000225D19320;
          v183 = 0x8000000225D19530;
          sub_2259CB5EC();
          swift_allocError();
          v104 = v144;
          v145 = sub_225CCE954();
          v146 = *(v145 - 8);
          v147 = v185;
          (*(v146 + 56))(v185, 1, 1, v145);
          LODWORD(v145) = (*(v146 + 48))(v147, 1, v145);
          sub_2259CB640(v147, &unk_27D73B050, &unk_225CD3AD0);
          if (v145)
          {
            v148 = 155;
          }

          else
          {
            v148 = 23;
          }

          v149 = MEMORY[0x277D84F90];
          v150 = sub_225B2C374(MEMORY[0x277D84F90]);
          v151 = swift_isUniquelyReferenced_nonNull_native();
          v189 = v150;
          sub_225B2C4A0(v143, sub_225B2AC40, 0, v151, &v189);

          v152 = v189;
          v153 = sub_225B29AA0(0, 1, 1, v149);
          v155 = *(v153 + 2);
          v154 = *(v153 + 3);
          if (v155 >= v154 >> 1)
          {
            v153 = sub_225B29AA0((v154 > 1), v155 + 1, 1, v153);
          }

          *(v153 + 2) = v155 + 1;
          v156 = &v153[56 * v155];
          *(v156 + 4) = v142;
          *(v156 + 5) = v141;
          v157 = v186;
          *(v156 + 6) = 0xD000000000000022;
          *(v156 + 7) = v157;
          v158 = v183;
          *(v156 + 8) = 0xD000000000000017;
          *(v156 + 9) = v158;
          *(v156 + 10) = 510;
          *v104 = v148;
          *(v104 + 1) = v153;
          *(v104 + 2) = v142;
          *(v104 + 3) = v141;
          *(v104 + 4) = v152;
          *(v104 + 5) = 0;
          swift_willThrow();

          return v104;
        }
      }

      else
      {
        v136 = trust;
      }

      v137 = v181[5];
      v138 = v181[6];
      __swift_project_boxed_opaque_existential_1(v181 + 2, v137);
      v139 = v177;
      (*(v138 + 8))(v137, v138);
      v140 = sub_225CCD034();
      (*(v178 + 8))(v139, v179);
      SecTrustSetVerifyDate(v104, v140);

      return v104;
    }
  }

  v193 = MEMORY[0x277D849A8];
  v194 = MEMORY[0x277D84A08];
  LODWORD(v189) = v103;
  sub_225A053A8(&v189, 20);
  v189 = 0;
  v190 = 0xE000000000000000;
  sub_225CCF204();
  MEMORY[0x22AA6CE70](0xD000000000000034, 0x8000000225D169B0);
  v113 = SecCopyErrorMessageString(v103, 0);
  v184 = v96;
  if (v113)
  {
    v114 = v113;
    v115 = sub_225CCE474();
    v117 = v116;
  }

  else
  {
    v115 = 0;
    v117 = 0;
  }

  v196 = v115;
  v197 = v117;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73E130, &qword_225CEFF10);
  sub_225CCF434();

  v119 = v189;
  v118 = v190;
  v120 = v188;
  v186 = 0x8000000225D19320;
  sub_2259CB5EC();
  swift_allocError();
  v122 = v121;
  v123 = sub_225CCE954();
  v124 = *(v123 - 8);
  v125 = v185;
  (*(v124 + 56))(v185, 1, 1, v123);
  LODWORD(v123) = (*(v124 + 48))(v125, 1, v123);
  sub_2259CB640(v125, &unk_27D73B050, &unk_225CD3AD0);
  if (v123)
  {
    v126 = 155;
  }

  else
  {
    v126 = 23;
  }

  v127 = MEMORY[0x277D84F90];
  v128 = sub_225B2C374(MEMORY[0x277D84F90]);
  v129 = swift_isUniquelyReferenced_nonNull_native();
  v189 = v128;
  sub_225B2C4A0(v120, sub_225B2AC40, 0, v129, &v189);

  v130 = v189;
  v131 = sub_225B29AA0(0, 1, 1, v127);
  v133 = *(v131 + 2);
  v132 = *(v131 + 3);
  v104 = (v133 + 1);
  if (v133 >= v132 >> 1)
  {
    v131 = sub_225B29AA0((v132 > 1), v133 + 1, 1, v131);
  }

  *(v131 + 2) = v104;
  v134 = &v131[56 * v133];
  *(v134 + 4) = v119;
  *(v134 + 5) = v118;
  v135 = v186;
  *(v134 + 6) = 0xD000000000000022;
  *(v134 + 7) = v135;
  *(v134 + 8) = 0xD000000000000017;
  *(v134 + 9) = 0x8000000225D19530;
  *(v134 + 10) = 501;
  *v122 = v126;
  *(v122 + 8) = v131;
  *(v122 + 16) = v119;
  *(v122 + 24) = v118;
  *(v122 + 32) = v130;
  *(v122 + 40) = 0;
  swift_willThrow();

  return v104;
}

uint64_t sub_225A3C114()
{
  v1 = v0[2];
  v2 = swift_task_alloc();
  v0[3] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[4] = v3;
  *v3 = v0;
  v3[1] = sub_225A3C20C;
  v4 = MEMORY[0x277D839B0];

  return MEMORY[0x2822008A0](v0 + 6, 0, 0, 0xD000000000000017, 0x8000000225D167D0, sub_2259F4800, v2, v4);
}

uint64_t sub_225A3C20C()
{
  *(*v1 + 40) = v0;

  if (v0)
  {
    v2 = sub_225A3C34C;
  }

  else
  {

    v2 = sub_225A3C328;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_225A3C34C()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 40) != 0;
  v3 = *(v0 + 8);

  return v3(v1, v2);
}

void sub_225A3C3C0(void *a1, char a2, unint64_t a3, __SecTrust *a4, uint64_t a5)
{
  v191 = a3;
  v201 = *MEMORY[0x277D85DE8];
  v9 = sub_225CCD954();
  v186 = *(v9 - 8);
  v187 = v9;
  v10 = MEMORY[0x28223BE20](v9);
  *&v185 = &v177[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v13 = &v177[-v12];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v17 = &v177[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v15);
  v19 = &v177[-v18];
  v20 = *a5;
  v189 = *(a5 + 8);
  v190 = v20;
  v21 = *(a5 + 16);
  v188 = a1;
  if ((a2 & 1) == 0)
  {
    LODWORD(result) = 0;
    if (SecTrustGetTrustResult(a4, &result) || result != 4 && result != 1)
    {
      v195 = 0;
      v196 = 0xE000000000000000;
      sub_225CCF204();
      MEMORY[0x22AA6CE70](0xD000000000000041, 0x8000000225D194A0);
      v192 = result;
      v45 = sub_225CCF824();
      MEMORY[0x22AA6CE70](v45);

      v191 = v195;
      v46 = v196;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10, &unk_225CD4660);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_225CD30F0;
      *(inited + 32) = 17;
      v195 = v190;
      v196 = v189;
      LOBYTE(v197) = v21;
      v48 = DIPCertUsage.policyName.getter();
      v49 = MEMORY[0x277D83838];
      *(inited + 64) = MEMORY[0x277D837D0];
      *(inited + 72) = v49;
      *(inited + 40) = v48;
      *(inited + 48) = v50;
      v51 = sub_225B2C374(inited);
      swift_setDeallocating();
      sub_2259CB640(inited + 32, &qword_27D73B060, &unk_225CD3AE0);
      v189 = 0x8000000225D19460;
      v190 = 0x8000000225D19320;
      sub_2259CB5EC();
      swift_allocError();
      v53 = v52;
      v54 = sub_225CCE954();
      v55 = *(v54 - 8);
      (*(v55 + 56))(v19, 1, 1, v54);
      LODWORD(v54) = (*(v55 + 48))(v19, 1, v54);
      sub_2259CB640(v19, &unk_27D73B050, &unk_225CD3AD0);
      if (v54)
      {
        v56 = 263;
      }

      else
      {
        v56 = 23;
      }

      v57 = MEMORY[0x277D84F90];
      v58 = sub_225B2C374(MEMORY[0x277D84F90]);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v195 = v58;
      sub_225B2C4A0(v51, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v195);

      v60 = v195;
      v61 = sub_225B29AA0(0, 1, 1, v57);
      v63 = *(v61 + 2);
      v62 = *(v61 + 3);
      if (v63 >= v62 >> 1)
      {
        v61 = sub_225B29AA0((v62 > 1), v63 + 1, 1, v61);
      }

      *(v61 + 2) = v63 + 1;
      v64 = &v61[56 * v63];
      v66 = v190;
      v65 = v191;
      *(v64 + 4) = v191;
      *(v64 + 5) = v46;
      *(v64 + 6) = 0xD000000000000022;
      *(v64 + 7) = v66;
      v67 = v189;
      *(v64 + 8) = 0xD000000000000031;
      *(v64 + 9) = v67;
      *(v64 + 10) = 546;
      *v53 = v56;
      *(v53 + 8) = v61;
      *(v53 + 16) = v65;
      *(v53 + 24) = v46;
      *(v53 + 32) = v60;
      *(v53 + 40) = 0;
      goto LABEL_17;
    }

    if (v188)
    {
      return;
    }

    v34 = 0x8000000225D194F0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10, &unk_225CD4660);
    v82 = swift_initStackObject();
    *(v82 + 16) = xmmword_225CD30F0;
    *(v82 + 32) = 17;
    v195 = v190;
    v196 = v189;
    LOBYTE(v197) = v21;
    v83 = DIPCertUsage.policyName.getter();
    v84 = MEMORY[0x277D83838];
    *(v82 + 64) = MEMORY[0x277D837D0];
    *(v82 + 72) = v84;
    *(v82 + 40) = v83;
    *(v82 + 48) = v85;
    v86 = sub_225B2C374(v82);
    swift_setDeallocating();
    sub_2259CB640(v82 + 32, &qword_27D73B060, &unk_225CD3AE0);
    v190 = 0x8000000225D19460;
    v191 = 0x8000000225D19320;
    sub_2259CB5EC();
    swift_allocError();
    v88 = v87;
    v89 = sub_225CCE954();
    v90 = *(v89 - 8);
    (*(v90 + 56))(v19, 1, 1, v89);
    LODWORD(v89) = (*(v90 + 48))(v19, 1, v89);
    sub_2259CB640(v19, &unk_27D73B050, &unk_225CD3AD0);
    if (v89)
    {
      LOWORD(v91) = 263;
    }

    else
    {
      LOWORD(v91) = 23;
    }

    v92 = MEMORY[0x277D84F90];
    v93 = sub_225B2C374(MEMORY[0x277D84F90]);
    v94 = swift_isUniquelyReferenced_nonNull_native();
    v195 = v93;
    sub_225B2C4A0(v86, sub_225B2AC40, 0, v94, &v195);

    v29 = v195;
    v95 = sub_225B29AA0(0, 1, 1, v92);
    v97 = *(v95 + 2);
    v96 = *(v95 + 3);
    v98 = v97 + 1;
    if (v97 < v96 >> 1)
    {
LABEL_28:
      *(v95 + 2) = v98;
      v99 = &v95[56 * v97];
      *(v99 + 4) = 0xD000000000000035;
      *(v99 + 5) = v34;
      v100 = v191;
      *(v99 + 6) = 0xD000000000000022;
      *(v99 + 7) = v100;
      v101 = v190;
      *(v99 + 8) = 0xD000000000000031;
      *(v99 + 9) = v101;
      *(v99 + 10) = 550;
      *v88 = v91;
      v88[1] = v95;
      v88[2] = 0xD000000000000035;
      v88[3] = v34;
      v88[4] = v29;
      v88[5] = 0;
LABEL_17:
      swift_willThrow();
      return;
    }

LABEL_63:
    v95 = sub_225B29AA0((v96 > 1), v98, 1, v95);
    goto LABEL_28;
  }

  v195 = a1;
  v22 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48, &qword_225CD75F0);
  swift_willThrowTypedImpl();
  v23 = [objc_opt_self() standardUserDefaults];
  if (qword_28105B9F0 != -1)
  {
    swift_once();
  }

  if (byte_28105B9F8)
  {
    v24 = sub_225CCE444();
    v25 = [v23 BOOLForKey_];

    if (v25)
    {
      if (qword_28105B910 != -1)
      {
        swift_once();
      }

      v26 = off_28105B918;
      v27 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
      v28 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
      os_unfair_lock_lock((off_28105B918 + v28));
      v29 = v186;
      v30 = *(v186 + 16);
      v180 = (v186 + 16);
      v181 = v27;
      v31 = v26 + v27;
      v32 = v187;
      v179 = v30;
      v30(v13, v31, v187);
      v182 = v28;
      v183 = v26;
      os_unfair_lock_unlock((v26 + v28));
      v34 = v189;
      v33 = v190;
      sub_2259F6128(v190, v189, v21);
      v35 = v33;
      v36 = sub_225CCD934();
      v37 = sub_225CCED04();
      sub_2259F6140(v35, v34, v21);
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        *v38 = 136446210;
        result = v39;
        v195 = v35;
        v196 = v189;
        LOBYTE(v197) = v21;
        v40 = DIPCertUsage.policyName.getter();
        v29 = v21;
        v21 = sub_2259BE198(v40, v41, &result);
        v35 = v190;

        *(v38 + 4) = v21;
        LODWORD(v21) = v29;
        _os_log_impl(&dword_2259A7000, v36, v37, "Treating certificate validation for %{public}s as non-fatal because certificate pinning is disabled in user defaults", v38, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v39);
        v42 = v39;
        v32 = v187;
        MEMORY[0x22AA6F950](v42, -1, -1);
        v43 = v38;
        v34 = v189;
        MEMORY[0x22AA6F950](v43, -1, -1);

        v44 = v186;
      }

      else
      {

        v44 = v29;
      }

      v184 = v44[1];
      v184(v13, v32);
      v126 = v191;
      if (v191 >> 62)
      {
        v175 = v191;
        v176 = sub_225CCF144();
        v126 = v175;
        v97 = v176;
      }

      else
      {
        v97 = *((v191 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v91 = MEMORY[0x277D84F90];
      if (!v97)
      {
        goto LABEL_56;
      }

      v98 = v126;
      v195 = MEMORY[0x277D84F90];
      v88 = &v195;
      sub_2259D52A4(0, v97 & ~(v97 >> 63), 0);
      if ((v97 & 0x8000000000000000) == 0)
      {
        v178 = v21;
        v91 = v195;
        v127 = v98;
        if ((v98 & 0xC000000000000001) != 0)
        {
          v128 = 0;
          do
          {
            v129 = MEMORY[0x22AA6DA80](v128, v127);
            v130 = SecCertificateCopyData(v129);
            v131 = sub_225CCCFA4();
            v133 = v132;

            v134 = sub_225CCCF84();
            v136 = v135;
            sub_2259BEF00(v131, v133);
            swift_unknownObjectRelease();
            v195 = v91;
            v138 = *(v91 + 16);
            v137 = *(v91 + 24);
            if (v138 >= v137 >> 1)
            {
              sub_2259D52A4((v137 > 1), v138 + 1, 1);
              v91 = v195;
            }

            ++v128;
            *(v91 + 16) = v138 + 1;
            v139 = v91 + 16 * v138;
            *(v139 + 32) = v134;
            *(v139 + 40) = v136;
            v127 = v191;
          }

          while (v97 != v128);
        }

        else
        {
          v140 = (v98 + 32);
          do
          {
            v141 = *v140;
            v142 = SecCertificateCopyData(v141);
            v143 = sub_225CCCFA4();
            v145 = v144;

            v146 = sub_225CCCF84();
            v148 = v147;
            sub_2259BEF00(v143, v145);

            v195 = v91;
            v150 = *(v91 + 16);
            v149 = *(v91 + 24);
            if (v150 >= v149 >> 1)
            {
              sub_2259D52A4((v149 > 1), v150 + 1, 1);
              v91 = v195;
            }

            *(v91 + 16) = v150 + 1;
            v151 = v91 + 16 * v150;
            *(v151 + 32) = v146;
            *(v151 + 40) = v148;
            ++v140;
            --v97;
          }

          while (v97);
        }

        v32 = v187;
        LOBYTE(v21) = v178;
        v34 = v189;
        v35 = v190;
LABEL_56:
        v152 = v182;
        v153 = v183;
        os_unfair_lock_lock((v182 + v183));
        v154 = v185;
        v179(v185, v153 + v181, v32);
        os_unfair_lock_unlock((v152 + v153));
        v155 = v188;
        sub_225A47308(v188, 1);
        sub_2259F6128(v35, v34, v21);

        v156 = sub_225CCD934();
        v157 = v190;
        v158 = v156;
        LODWORD(v152) = sub_225CCED14();
        sub_2259F6140(v157, v34, v21);
        sub_225A4607C(v155, 1);

        LODWORD(v191) = v152;
        if (os_log_type_enabled(v158, v152))
        {
          v159 = swift_slowAlloc();
          v183 = v158;
          v160 = v159;
          v182 = swift_slowAlloc();
          v161 = swift_slowAlloc();
          v189 = v161;
          *v160 = 136446722;
          result = v161;
          v195 = v157;
          v196 = v34;
          LOBYTE(v197) = v21;
          v162 = DIPCertUsage.policyName.getter();
          v164 = v154;
          v165 = sub_2259BE198(v162, v163, &result);

          *(v160 + 4) = v165;
          *(v160 + 12) = 2112;
          sub_225A47308(v155, 1);
          v166 = _swift_stdlib_bridgeErrorToNSError();
          *(v160 + 14) = v166;
          v167 = v182;
          *v182 = v166;
          *(v160 + 22) = 2080;
          v168 = MEMORY[0x22AA6D060](v91, MEMORY[0x277D837D0]);
          v170 = v169;

          v171 = sub_2259BE198(v168, v170, &result);

          *(v160 + 24) = v171;
          v172 = v183;
          _os_log_impl(&dword_2259A7000, v183, v191, "Certificate verification for usage %{public}s failed due to error: %@\nCertificate Chain:\n%s", v160, 0x20u);
          sub_2259CB640(v167, &unk_27D73FC90, &unk_225CFA710);
          MEMORY[0x22AA6F950](v167, -1, -1);
          v173 = v189;
          swift_arrayDestroy();
          MEMORY[0x22AA6F950](v173, -1, -1);
          MEMORY[0x22AA6F950](v160, -1, -1);

          sub_225A4607C(v155, 1);
          v174 = v164;
        }

        else
        {
          sub_225A4607C(v155, 1);

          v174 = v154;
        }

        v184(v174, v187);
        return;
      }

      __break(1u);
      goto LABEL_63;
    }
  }

  else
  {
  }

  v191 = 0x8000000225D19440;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10, &unk_225CD4660);
  v68 = swift_initStackObject();
  v185 = xmmword_225CD30F0;
  *(v68 + 16) = xmmword_225CD30F0;
  *(v68 + 32) = 17;
  v69 = v68 + 32;
  v195 = v190;
  v196 = v189;
  LOBYTE(v197) = v21;
  v70 = v188;
  v71 = v188;
  v72 = DIPCertUsage.policyName.getter();
  v73 = MEMORY[0x277D83838];
  *(v68 + 64) = MEMORY[0x277D837D0];
  *(v68 + 72) = v73;
  *(v68 + 40) = v72;
  *(v68 + 48) = v74;
  v189 = sub_225B2C374(v68);
  v75 = v70;
  swift_setDeallocating();
  sub_2259CB640(v69, &qword_27D73B060, &unk_225CD3AE0);
  v186 = "error evaluating sec trust";
  v187 = "topekaServerSigning";
  sub_2259CB5EC();
  v190 = swift_allocError();
  v77 = v76;
  swift_getErrorValue();
  v78 = v193;
  v79 = v75;
  sub_225B21FAC(v78, &v195);
  sub_225A4607C(v75, 1);
  v80 = v196;
  if (v196)
  {
    v184 = v197;
    *&v185 = v195;
    v81 = v199;
    v182 = v200;
    v183 = v198;
  }

  else
  {
    v195 = v75;
    v102 = v75;
    sub_2259E4540();
    if (swift_dynamicCast())
    {
      v103 = result;
      v104 = swift_initStackObject();
      *(v104 + 16) = v185;
      *(v104 + 32) = 20;
      v105 = [v103 code];
      v106 = MEMORY[0x277D83BF8];
      *(v104 + 64) = MEMORY[0x277D83B88];
      *(v104 + 72) = v106;
      *(v104 + 40) = v105;
      v81 = sub_225B2C374(v104);
      swift_setDeallocating();
      sub_2259CB640(v104 + 32, &qword_27D73B060, &unk_225CD3AE0);

      v107 = v75;
      v183 = 0;
      v184 = 0;
      v80 = MEMORY[0x277D84F90];
      *&v185 = 263;
      v182 = v75;
    }

    else
    {
      v195 = v75;
      v108 = v75;
      v109 = sub_225CCE954();
      v110 = swift_dynamicCast();
      v111 = v75;
      v112 = *(v109 - 8);
      (*(v112 + 56))(v17, v110 ^ 1u, 1, v109);
      LODWORD(v109) = (*(v112 + 48))(v17, 1, v109);
      sub_2259CB640(v17, &unk_27D73B050, &unk_225CD3AD0);
      if (v109)
      {
        v113 = 263;
      }

      else
      {
        v113 = 23;
      }

      *&v185 = v113;
      v80 = MEMORY[0x277D84F90];
      v81 = sub_225B2C374(MEMORY[0x277D84F90]);
      v114 = v111;
      v183 = v191;
      v184 = 0xD00000000000001ALL;
      v182 = v111;
    }
  }

  v115 = v187 | 0x8000000000000000;
  v116 = v186 | 0x8000000000000000;
  v117 = swift_isUniquelyReferenced_nonNull_native();
  v195 = v81;
  sub_225B2C4A0(v189, sub_225B2AC40, 0, v117, &v195);

  v118 = v195;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v80 = sub_225B29AA0(0, *(v80 + 2) + 1, 1, v80);
  }

  v120 = *(v80 + 2);
  v119 = *(v80 + 3);
  if (v120 >= v119 >> 1)
  {
    v80 = sub_225B29AA0((v119 > 1), v120 + 1, 1, v80);
  }

  v121 = v188;
  sub_225A4607C(v188, 1);
  *(v80 + 2) = v120 + 1;
  v122 = &v80[56 * v120];
  v123 = v191;
  *(v122 + 4) = 0xD00000000000001ALL;
  *(v122 + 5) = v123;
  *(v122 + 6) = 0xD000000000000022;
  *(v122 + 7) = v115;
  *(v122 + 8) = 0xD000000000000031;
  *(v122 + 9) = v116;
  *(v122 + 10) = 538;
  v124 = v184;
  *v77 = v185;
  *(v77 + 8) = v80;
  *(v77 + 16) = v124;
  v125 = v182;
  *(v77 + 24) = v183;
  *(v77 + 32) = v118;
  *(v77 + 40) = v125;
  swift_willThrow();
  sub_225A4607C(v121, 1);
}

__SecTrust *DIPOIDVerifier.verifyChain(_:forUsage:)(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  v79 = *MEMORY[0x277D85DE8];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  MEMORY[0x28223BE20](v6 - 8);
  v65 = (&v62 - v7);
  v8 = type metadata accessor for DIPSignpost.Config(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DIPSignpost(0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a2;
  v15 = *(a2 + 8);
  v16 = *(a2 + 16);
  error = *a2;
  v74 = v15;
  LOBYTE(v75) = v16;
  v17 = v70;
  v18 = sub_225A3A94C(a1, &error);
  v70 = v18;
  if (v17)
  {
    v68 = 0;
    v67 = "topekaServerSigning";
    v66 = "POIDVerifier.swift";
    v30 = v17;
    v31 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v32 = swift_allocError();
    v34 = v33;
    swift_getErrorValue();
    v35 = v72;
    v36 = v17;
    sub_225B21FAC(v35, &error);

    v37 = v74;
    v69 = v32;
    if (v74)
    {
      v65 = error;
      v63 = v75;
      v64 = v76;
      v38 = v77;
      v39 = v78;
    }

    else
    {
      error = v17;
      v40 = v17;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48, &qword_225CD75F0);
      sub_2259E4540();
      if (swift_dynamicCast())
      {
        v41 = v71;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10, &unk_225CD4660);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_225CD30F0;
        *(inited + 32) = 20;
        v43 = [v41 code];
        v44 = MEMORY[0x277D83BF8];
        *(inited + 64) = MEMORY[0x277D83B88];
        *(inited + 72) = v44;
        *(inited + 40) = v43;
        v38 = sub_225B2C374(inited);
        swift_setDeallocating();
        sub_2259CB640(inited + 32, &qword_27D73B060, &unk_225CD3AE0);

        v45 = v17;
        v64 = 0;
        v63 = 0;
        v65 = 0;
        v37 = MEMORY[0x277D84F90];
      }

      else
      {
        error = v17;
        v46 = v17;
        v47 = sub_225CCE954();
        v48 = v65;
        v49 = swift_dynamicCast();
        v50 = *(v47 - 8);
        (*(v50 + 56))(v48, v49 ^ 1u, 1, v47);
        LODWORD(v47) = (*(v50 + 48))(v48, 1, v47);
        sub_2259CB640(v48, &unk_27D73B050, &unk_225CD3AD0);
        if (v47)
        {
          v51 = 0;
        }

        else
        {
          v51 = 23;
        }

        v65 = v51;
        v37 = MEMORY[0x277D84F90];
        v38 = sub_225B2C374(MEMORY[0x277D84F90]);
        v52 = v17;
        v64 = 0;
        v63 = 0;
      }

      v39 = v17;
    }

    v53 = v67 | 0x8000000000000000;
    v54 = v66 | 0x8000000000000000;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    error = v38;
    sub_225B2C4A0(v31, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &error);

    v56 = error;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v37 = sub_225B29AA0(0, *(v37 + 2) + 1, 1, v37);
    }

    v58 = *(v37 + 2);
    v57 = *(v37 + 3);
    if (v58 >= v57 >> 1)
    {
      v37 = sub_225B29AA0((v57 > 1), v58 + 1, 1, v37);
    }

    *(v37 + 2) = v58 + 1;
    v59 = &v37[56 * v58];
    *(v59 + 4) = 0;
    *(v59 + 5) = 0;
    *(v59 + 6) = 0xD000000000000022;
    *(v59 + 7) = v53;
    *(v59 + 8) = 0xD000000000000018;
    *(v59 + 9) = v54;
    *(v59 + 10) = 450;
    *v34 = v65;
    v60 = v63;
    *(v34 + 8) = v37;
    *(v34 + 16) = v60;
    *(v34 + 24) = v64;
    *(v34 + 32) = v56;
    *(v34 + 40) = v39;
    swift_willThrow();
  }

  else
  {
    LODWORD(v66) = v16;
    v67 = v15;
    v68 = v14;
    v69 = v3;
    v19 = v18;
    if (qword_28105AD80 != -1)
    {
      swift_once();
    }

    v20 = __swift_project_value_buffer(v8, qword_28105AD88);
    sub_225A47158(v20, v10, type metadata accessor for DIPSignpost.Config);
    DIPSignpost.init(_:)(v10, v13);
    error = 0;
    v21 = SecTrustEvaluateWithError(v19, &error);
    v22 = error;
    v23 = a1;
    v24 = v67;
    if (error)
    {
      type metadata accessor for CFError(0);
      sub_225A47110(&qword_281059B10, type metadata accessor for CFError, MEMORY[0x277CC9CB8]);
      v25 = swift_allocError();
      *v26 = v22;
      v27 = error;
    }

    else
    {
      v27 = 0;
      v25 = v21;
    }

    v28 = v68;
    v29 = v22;

    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    error = v28;
    v74 = v24;
    LOBYTE(v75) = v66;
    sub_225A3C3C0(v25, v22 != 0, v23, v70, &error);
    sub_2259CB6A0(0);
    sub_225A4607C(v25, v22 != 0);
  }

  return v70;
}

uint64_t DIPOIDVerifier.verifyChain(fromBase64DER:forUsage:)(uint64_t a1, uint64_t a2)
{
  *(v3 + 40) = a1;
  *(v3 + 48) = v2;
  *(v3 + 56) = *a2;
  *(v3 + 33) = *(a2 + 16);
  return MEMORY[0x2822009F8](sub_225A3DE80, 0, 0);
}

uint64_t sub_225A3DE80()
{
  v1 = decodeCertificateChain(fromBase64DER:)(*(v0 + 40));
  *(v0 + 72) = v1;
  v2 = *(v0 + 33);
  *(v0 + 16) = *(v0 + 56);
  *(v0 + 32) = v2;
  v3 = v1;
  v4 = swift_task_alloc();
  *(v0 + 80) = v4;
  *v4 = v0;
  v4[1] = sub_225A3DF88;

  return DIPOIDVerifier.verifyChain(_:forUsage:)(v3, v0 + 16);
}

uint64_t sub_225A3DF88(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 88) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_225A3E0E8, 0, 0);
  }

  else
  {

    v5 = *(v4 + 8);

    return v5(a1);
  }
}

__SecTrust *DIPOIDVerifier.verifyChain(fromBase64DER:forUsage:)(void *a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = decodeCertificateChain(fromBase64DER:)(a1);
  if (!v2)
  {
    v8[0] = v3;
    v8[1] = v4;
    v9 = v5;
    v3 = DIPOIDVerifier.verifyChain(_:forUsage:)(v6, v8);
  }

  return v3;
}

uint64_t DIPOIDVerifier.verifyLeaf(_:forUsage:)(uint64_t a1, uint64_t a2)
{
  *(v3 + 192) = a1;
  *(v3 + 200) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  *(v3 + 208) = swift_task_alloc();
  v5 = sub_225CCD954();
  *(v3 + 216) = v5;
  *(v3 + 224) = *(v5 - 8);
  *(v3 + 232) = swift_task_alloc();
  *(v3 + 240) = *a2;
  *(v3 + 161) = *(a2 + 16);

  return MEMORY[0x2822009F8](sub_225A3E278, 0, 0);
}

uint64_t sub_225A3E278()
{
  v80 = v0;
  v1 = SecCertificateCopyNormalizedIssuerSequence(*(v0 + 192));
  if (v1)
  {
    v2 = *(v0 + 200);
    v3 = v1;
    v4 = sub_225CCCFA4();
    v6 = v5;

    *(v0 + 256) = v4;
    *(v0 + 264) = v6;
    v7 = *v2;
    if (*(*v2 + 16) && (v8 = sub_2259F1D7C(v4, v6), (v9 & 1) != 0))
    {
      v10 = *(v0 + 161);
      v12 = *(v0 + 240);
      v11 = *(v0 + 248);
      v13 = *(v0 + 192);
      v14 = *(*(v7 + 56) + 8 * v8);
      *(v0 + 272) = v14;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AF80, &qword_225CEF400);
      v15 = swift_allocObject();
      *(v0 + 280) = v15;
      *(v15 + 16) = xmmword_225CD73E0;
      *(v15 + 32) = v13;
      *(v15 + 40) = v14;
      *(v0 + 168) = v12;
      v16 = v0 + 168;
      *(v0 + 176) = v11;
      *(v0 + 184) = v10;
      v17 = v14;
      v18 = v13;
      v19 = swift_task_alloc();
      *(v0 + 288) = v19;
      *v19 = v0;
      v20 = sub_225A3E938;
    }

    else
    {
      if (qword_28105B910 != -1)
      {
        swift_once();
      }

      v22 = *(v0 + 240);
      v21 = *(v0 + 248);
      v24 = *(v0 + 224);
      v23 = *(v0 + 232);
      v25 = *(v0 + 216);
      v26 = off_28105B918;
      v27 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
      v28 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
      v29 = *(v0 + 161);
      os_unfair_lock_lock((off_28105B918 + v28));
      (*(v24 + 16))(v23, &v26[v27], v25);
      os_unfair_lock_unlock(&v26[v28]);
      sub_2259F6128(v22, v21, v29);
      v30 = sub_225CCD934();
      v31 = sub_225CCED04();
      sub_2259F6140(v22, v21, v29);
      if (os_log_type_enabled(v30, v31))
      {
        v32 = *(v0 + 161);
        v33 = *(v0 + 240);
        v34 = *(v0 + 248);
        v35 = *(v0 + 224);
        v75 = *(v0 + 232);
        v36 = *(v0 + 216);
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        v76 = v38;
        v77 = v33;
        *v37 = 136446210;
        v78 = v34;
        v79 = v32;
        v39 = DIPCertUsage.policyName.getter();
        v41 = sub_2259BE198(v39, v40, &v76);

        *(v37 + 4) = v41;
        _os_log_impl(&dword_2259A7000, v30, v31, "Could not find matching intermediate cert for usage = %{public}s", v37, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v38);
        MEMORY[0x22AA6F950](v38, -1, -1);
        MEMORY[0x22AA6F950](v37, -1, -1);

        (*(v35 + 8))(v75, v36);
      }

      else
      {
        v68 = *(v0 + 224);
        v67 = *(v0 + 232);
        v69 = *(v0 + 216);

        (*(v68 + 8))(v67, v69);
      }

      v70 = *(v0 + 161);
      v72 = *(v0 + 240);
      v71 = *(v0 + 248);
      v73 = *(v0 + 192);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AF80, &qword_225CEF400);
      v15 = swift_allocObject();
      *(v0 + 304) = v15;
      *(v15 + 16) = xmmword_225CD7D40;
      *(v15 + 32) = v73;
      *(v0 + 144) = v72;
      v16 = v0 + 144;
      *(v0 + 152) = v71;
      *(v0 + 160) = v70;
      v74 = v73;
      v19 = swift_task_alloc();
      *(v0 + 312) = v19;
      *v19 = v0;
      v20 = sub_225A3EAF8;
    }

    v19[1] = v20;

    return DIPOIDVerifier.verifyChain(_:forUsage:)(v15, v16);
  }

  else
  {
    v42 = *(v0 + 161);
    v44 = *(v0 + 240);
    v43 = *(v0 + 248);
    v45 = *(v0 + 208);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10, &unk_225CD4660);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_225CD30F0;
    *(inited + 32) = 17;
    v77 = v44;
    v78 = v43;
    v79 = v42;
    v47 = DIPCertUsage.policyName.getter();
    v48 = MEMORY[0x277D83838];
    *(inited + 64) = MEMORY[0x277D837D0];
    *(inited + 72) = v48;
    *(inited + 40) = v47;
    *(inited + 48) = v49;
    v50 = sub_225B2C374(inited);
    swift_setDeallocating();
    sub_2259CB640(inited + 32, &qword_27D73B060, &unk_225CD3AE0);
    sub_2259CB5EC();
    swift_allocError();
    v52 = v51;
    v53 = sub_225CCE954();
    v54 = *(v53 - 8);
    (*(v54 + 56))(v45, 1, 1, v53);
    v55 = (*(v54 + 48))(v45, 1, v53);
    sub_2259CB640(v45, &unk_27D73B050, &unk_225CD3AD0);
    v56 = MEMORY[0x277D84F90];
    v57 = sub_225B2C374(MEMORY[0x277D84F90]);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v77 = v57;
    sub_225B2C4A0(v50, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v77);

    v59 = v77;
    v60 = sub_225B29AA0(0, 1, 1, v56);
    v62 = *(v60 + 2);
    v61 = *(v60 + 3);
    if (v62 >= v61 >> 1)
    {
      v60 = sub_225B29AA0((v61 > 1), v62 + 1, 1, v60);
    }

    *(v60 + 2) = v62 + 1;
    v63 = &v60[56 * v62];
    *(v63 + 4) = 0xD00000000000003BLL;
    *(v63 + 5) = 0x8000000225D19370;
    *(v63 + 6) = 0xD000000000000022;
    *(v63 + 7) = 0x8000000225D19320;
    *(v63 + 8) = 0xD000000000000017;
    *(v63 + 9) = 0x8000000225D193B0;
    *(v63 + 10) = 574;
    if (v55)
    {
      v64 = 124;
    }

    else
    {
      v64 = 23;
    }

    *v52 = v64;
    *(v52 + 8) = v60;
    *(v52 + 16) = 0xD00000000000003BLL;
    *(v52 + 24) = 0x8000000225D19370;
    *(v52 + 32) = v59;
    *(v52 + 40) = 0;
    swift_willThrow();

    v65 = *(v0 + 8);

    return v65();
  }
}

uint64_t sub_225A3E938(uint64_t a1)
{
  v3 = *v2;
  v3[12] = v2;
  v3[13] = a1;
  v3[14] = v1;
  v3[37] = v1;

  if (v1)
  {
    v4 = sub_225A3ECB0;
  }

  else
  {
    v4 = sub_225A3EA64;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_225A3EA64()
{
  v1 = *(v0 + 104);
  sub_2259BEF00(*(v0 + 256), *(v0 + 264));

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_225A3EAF8(uint64_t a1)
{
  v3 = *v2;
  v3[15] = v2;
  v3[16] = a1;
  v3[17] = v1;
  v3[40] = v1;

  if (v1)
  {
    v4 = sub_225A3ED30;
  }

  else
  {
    v4 = sub_225A3EC24;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_225A3EC24()
{
  v1 = v0[16];
  sub_2259BEF00(v0[32], v0[33]);

  v2 = v0[1];

  return v2(v1);
}

uint64_t sub_225A3ECB0()
{
  v1 = v0[34];
  sub_2259BEF00(v0[32], v0[33]);

  v2 = v0[1];

  return v2();
}

uint64_t sub_225A3ED30()
{
  sub_2259BEF00(v0[32], v0[33]);

  v1 = v0[1];

  return v1();
}

uint64_t DIPOIDVerifier.verifyLeaf(fromBase64DER:forUsage:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 48) = a2;
  *(v4 + 56) = v3;
  *(v4 + 40) = a1;
  *(v4 + 64) = *a3;
  *(v4 + 33) = *(a3 + 16);
  return MEMORY[0x2822009F8](sub_225A3EDDC, 0, 0);
}

uint64_t sub_225A3EDDC()
{
  v1 = decodeCertificate(fromBase64DER:)(*(v0 + 40));
  *(v0 + 80) = v1;
  if (v2)
  {
    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    v5 = *(v0 + 33);
    *(v0 + 16) = *(v0 + 64);
    *(v0 + 32) = v5;
    v6 = v1;
    v7 = swift_task_alloc();
    *(v0 + 88) = v7;
    *v7 = v0;
    v7[1] = sub_225A3EEE4;

    return DIPOIDVerifier.verifyLeaf(_:forUsage:)(v6, v0 + 16);
  }
}

uint64_t sub_225A3EEE4(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 96) = v1;

  if (v1)
  {
    v5 = sub_225A3F074;
  }

  else
  {
    *(v4 + 104) = a1;
    v5 = sub_225A3F00C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_225A3F00C()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 104);

  return v1(v2);
}

uint64_t sub_225A3F074()
{
  v1 = *(v0 + 8);

  return v1();
}

__SecTrust *DIPOIDVerifier.verifyLeaf(fromBase64DER:forUsage:)(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v74[-v7];
  v9 = sub_225CCD954();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v74[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = *a3;
  v13 = *(a3 + 8);
  v15 = *(a3 + 16);
  v16._countAndFlagsBits = a1;
  v16._object = a2;
  v17 = decodeCertificate(fromBase64DER:)(v16);
  if (!v18)
  {
    v20 = v17;
    v21 = v83;
    v78 = v8;
    v79 = v10;
    v80 = v12;
    v81 = v15;
    v84 = v13;
    v82 = 0;
    v22 = SecCertificateCopyNormalizedIssuerSequence(v17);
    if (v22)
    {
      v23 = v22;
      v24 = sub_225CCCFA4();
      v26 = v25;

      v27 = *v21;
      if (*(*v21 + 16) && (v28 = sub_2259F1D7C(v24, v26), (v29 & 1) != 0))
      {
        v30 = *(*(v27 + 56) + 8 * v28);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AF80, &qword_225CEF400);
        v31 = swift_allocObject();
        *(v31 + 16) = xmmword_225CD73E0;
        *(v31 + 32) = v20;
        *(v31 + 40) = v30;
        v85 = v14;
        v86 = v84;
        v87 = v81;
        v32 = v30;
        v33 = v20;
        v12 = DIPOIDVerifier.verifyChain(_:forUsage:)(v31, &v85);
        sub_2259BEF00(v24, v26);
      }

      else
      {
        v34 = v20;
        v77 = v26;
        v78 = v24;
        v35 = v14;
        if (qword_28105B910 != -1)
        {
          swift_once();
        }

        v36 = off_28105B918;
        v37 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
        v38 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
        os_unfair_lock_lock((off_28105B918 + v38));
        v39 = v79;
        v40 = &v36[v37];
        v41 = v80;
        (*(v79 + 16))(v80, v40, v9);
        os_unfair_lock_unlock(&v36[v38]);
        v42 = v84;
        v43 = v81;
        sub_2259F6128(v35, v84, v81);
        v44 = sub_225CCD934();
        v45 = sub_225CCED04();
        sub_2259F6140(v35, v42, v43);
        if (os_log_type_enabled(v44, v45))
        {
          v46 = swift_slowAlloc();
          v75 = v45;
          v47 = v46;
          v88 = swift_slowAlloc();
          v76 = v9;
          v48 = v88;
          *v47 = 136446210;
          v85 = v35;
          v86 = v42;
          v87 = v43;
          v49 = DIPCertUsage.policyName.getter();
          v51 = v34;
          v52 = sub_2259BE198(v49, v50, &v88);

          *(v47 + 4) = v52;
          v34 = v51;
          v42 = v84;
          _os_log_impl(&dword_2259A7000, v44, v75, "Could not find matching intermediate cert for usage = %{public}s", v47, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v48);
          MEMORY[0x22AA6F950](v48, -1, -1);
          MEMORY[0x22AA6F950](v47, -1, -1);

          (*(v39 + 8))(v80, v76);
        }

        else
        {

          (*(v39 + 8))(v41, v9);
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AF80, &qword_225CEF400);
        v72 = swift_allocObject();
        *(v72 + 16) = xmmword_225CD7D40;
        *(v72 + 32) = v34;
        v85 = v35;
        v86 = v42;
        v87 = v43;
        v73 = v34;
        v12 = DIPOIDVerifier.verifyChain(_:forUsage:)(v72, &v85);
        sub_2259BEF00(v78, v77);
      }
    }

    else
    {
      v83 = v20;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10, &unk_225CD4660);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_225CD30F0;
      *(inited + 32) = 17;
      v85 = v14;
      v86 = v84;
      v87 = v81;
      v54 = DIPCertUsage.policyName.getter();
      v55 = MEMORY[0x277D83838];
      *(inited + 64) = MEMORY[0x277D837D0];
      *(inited + 72) = v55;
      *(inited + 40) = v54;
      *(inited + 48) = v56;
      v57 = sub_225B2C374(inited);
      swift_setDeallocating();
      sub_2259CB640(inited + 32, &qword_27D73B060, &unk_225CD3AE0);
      sub_2259CB5EC();
      swift_allocError();
      v59 = v58;
      v60 = sub_225CCE954();
      v61 = *(v60 - 8);
      v62 = v78;
      (*(v61 + 56))(v78, 1, 1, v60);
      LODWORD(v60) = (*(v61 + 48))(v62, 1, v60);
      sub_2259CB640(v62, &unk_27D73B050, &unk_225CD3AD0);
      if (v60)
      {
        v63 = 124;
      }

      else
      {
        v63 = 23;
      }

      v64 = MEMORY[0x277D84F90];
      v65 = sub_225B2C374(MEMORY[0x277D84F90]);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v85 = v65;
      sub_225B2C4A0(v57, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v85);

      v67 = v85;
      v68 = sub_225B29AA0(0, 1, 1, v64);
      v70 = *(v68 + 2);
      v69 = *(v68 + 3);
      v12 = (v70 + 1);
      if (v70 >= v69 >> 1)
      {
        v68 = sub_225B29AA0((v69 > 1), v70 + 1, 1, v68);
      }

      *(v68 + 2) = v12;
      v71 = &v68[56 * v70];
      *(v71 + 4) = 0xD00000000000003BLL;
      *(v71 + 5) = 0x8000000225D19370;
      *(v71 + 6) = 0xD000000000000022;
      *(v71 + 7) = 0x8000000225D19320;
      *(v71 + 8) = 0xD000000000000023;
      *(v71 + 9) = 0x8000000225D193D0;
      *(v71 + 10) = 600;
      *v59 = v63;
      *(v59 + 8) = v68;
      *(v59 + 16) = 0xD00000000000003BLL;
      *(v59 + 24) = 0x8000000225D19370;
      *(v59 + 32) = v67;
      *(v59 + 40) = 0;
      swift_willThrow();
    }
  }

  return v12;
}

uint64_t sub_225A3F820(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t sub_225A3F85C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_225A47350;

  return DIPOIDVerifier.verifyChain(_:forUsage:)(a1, a2);
}

uint64_t sub_225A3F900(uint64_t a1, uint64_t a2)
{
  *(v3 + 40) = a1;
  *(v3 + 48) = v2;
  *(v3 + 56) = *a2;
  *(v3 + 33) = *(a2 + 16);
  return MEMORY[0x2822009F8](sub_225A3F930, 0, 0);
}

uint64_t sub_225A3F930()
{
  v1 = decodeCertificateChain(fromBase64DER:)(*(v0 + 40));
  *(v0 + 72) = v1;
  v2 = *(v0 + 33);
  *(v0 + 16) = *(v0 + 56);
  *(v0 + 32) = v2;
  v3 = v1;
  v4 = swift_task_alloc();
  *(v0 + 80) = v4;
  *v4 = v0;
  v4[1] = sub_225A3FA38;

  return DIPOIDVerifier.verifyChain(_:forUsage:)(v3, v0 + 16);
}

uint64_t sub_225A3FA38(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 88) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_225A47340, 0, 0);
  }

  else
  {

    v5 = *(v4 + 8);

    return v5(a1);
  }
}

uint64_t sub_225A3FB98(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_225A13BBC;

  return DIPOIDVerifier.verifyLeaf(_:forUsage:)(a1, a2);
}

uint64_t sub_225A3FC3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 48) = a2;
  *(v4 + 56) = v3;
  *(v4 + 40) = a1;
  *(v4 + 64) = *a3;
  *(v4 + 33) = *(a3 + 16);
  return MEMORY[0x2822009F8](sub_225A3FC70, 0, 0);
}

uint64_t sub_225A3FC70()
{
  v1 = decodeCertificate(fromBase64DER:)(*(v0 + 40));
  *(v0 + 80) = v1;
  if (v2)
  {
    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    v5 = *(v0 + 33);
    *(v0 + 16) = *(v0 + 64);
    *(v0 + 32) = v5;
    v6 = v1;
    v7 = swift_task_alloc();
    *(v0 + 88) = v7;
    *v7 = v0;
    v7[1] = sub_225A3FD78;

    return DIPOIDVerifier.verifyLeaf(_:forUsage:)(v6, v0 + 16);
  }
}

uint64_t sub_225A3FD78(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 96) = v1;

  if (v1)
  {
    v5 = sub_225A4734C;
  }

  else
  {
    *(v4 + 104) = a1;
    v5 = sub_225A47348;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_225A3FEA4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B368, &qword_225CD9578);
  result = sub_225CCF564();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v20 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v23 = v20 | (v8 << 6);
      v24 = *(*(v5 + 48) + v23);
      v25 = (*(v5 + 56) + 40 * v23);
      if (v4)
      {
        sub_2259A9C20(v25, v31);
      }

      else
      {
        sub_225A32940(v25, v31);
      }

      sub_225CCFBD4();
      sub_225CCE5B4();

      result = sub_225CCFC24();
      v15 = -1 << *(v7 + 32);
      v16 = result & ~v15;
      v17 = v16 >> 6;
      v18 = (-1 << v16) & ~*(v14 + 8 * (v16 >> 6));
      if (!v18)
      {
        v26 = 0;
        v27 = (63 - v15) >> 6;
        while (++v17 != v27 || (v26 & 1) == 0)
        {
          v28 = v17 == v27;
          if (v17 == v27)
          {
            v17 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v17);
          if (v29 != -1)
          {
            v19 = __clz(__rbit64(~v29)) + (v17 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64(v18)) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      *(*(v7 + 48) + v19) = v24;
      result = sub_2259A9C20(v31, *(v7 + 56) + 40 * v19);
      ++*(v7 + 16);
    }

    v21 = v8;
    while (1)
    {
      v8 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v22 = v9[v8];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v12 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v4 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v2;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_225A4054C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, void (*a5)(uint64_t, _BYTE *))
{
  v6 = v5;
  v7 = a2;
  v8 = *v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v36 = v7;
  result = sub_225CCF564();
  v10 = result;
  if (*(v8 + 16))
  {
    v11 = 0;
    v12 = (v8 + 64);
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_15:
      v23 = v20 | (v11 << 6);
      v24 = (*(v8 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(v8 + 56) + 32 * v23;
      if (v36)
      {
        a5(v27, v38);
      }

      else
      {
        sub_2259CB810(v27, v38);
      }

      sub_225CCFBD4();
      sub_225CCE5B4();
      result = sub_225CCFC24();
      v28 = -1 << *(v10 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v17 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v17 + 8 * v30);
          if (v34 != -1)
          {
            v18 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v29) & ~*(v17 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = (*(v10 + 48) + 16 * v18);
      *v19 = v25;
      v19[1] = v26;
      result = (a5)(v38, *(v10 + 56) + 32 * v18);
      ++*(v10 + 16);
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v11 >= v16)
      {
        break;
      }

      v22 = v12[v11];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v15 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v6 = v5;
      goto LABEL_34;
    }

    v35 = 1 << *(v8 + 32);
    v6 = v5;
    if (v35 >= 64)
    {
      bzero((v8 + 64), ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v35;
    }

    *(v8 + 16) = 0;
  }

LABEL_34:
  *v6 = v10;
  return result;
}

uint64_t sub_225A40810(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B418, &unk_225CD9610);
  v32 = v4;
  result = sub_225CCF564();
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
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(*(v5 + 48) + v20);
      v22 = (*(v5 + 56) + 16 * v20);
      v23 = v22[1];
      v33 = *v22;
      if ((v32 & 1) == 0)
      {
      }

      sub_225CCFBD4();
      MEMORY[0x22AA6E420](v21);
      result = sub_225CCFC24();
      v24 = -1 << *(v7 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v14 + 8 * v26);
          if (v30 != -1)
          {
            v15 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v21;
      v16 = (*(v7 + 56) + 16 * v15);
      *v16 = v33;
      v16[1] = v23;
      ++*(v7 + 16);
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

    if ((v32 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v2;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_225A40AB0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_225CCF454();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B410, &qword_225CD9608);
  v39 = v4;
  result = sub_225CCF564();
  v11 = result;
  if (*(v9 + 16))
  {
    v42 = v8;
    v43 = v5;
    v35 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v36 = (v6 + 16);
    v37 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    v38 = v9;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v41 = *(v6 + 72);
      v25 = v24 + v41 * v23;
      if (v39)
      {
        (*v40)(v42, v25, v43);
        sub_2259B9624((*(v9 + 56) + 32 * v23), v44);
      }

      else
      {
        (*v36)(v42, v25, v43);
        sub_2259CB810(*(v9 + 56) + 32 * v23, v44);
      }

      result = sub_225CCE344();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        v6 = v37;
        v9 = v38;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
      v6 = v37;
      v9 = v38;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v40)((*(v11 + 48) + v41 * v19), v42, v43);
      result = sub_2259B9624(v44, (*(v11 + 56) + 32 * v19));
      ++*(v11 + 16);
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_225A40E50(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B408, &qword_225CD9600);
  result = sub_225CCF564();
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
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(*(v5 + 56) + 8 * v20);
      v31 = *(*(v5 + 48) + 16 * v20);
      if ((v4 & 1) == 0)
      {
        sub_2259CB710(v31, *(*(v5 + 48) + 16 * v20 + 8));
        v22 = v21;
      }

      sub_225CCFBD4();
      sub_225CCCFB4();
      result = sub_225CCFC24();
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        v16 = v31;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
      v16 = v31;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 16 * v15) = v16;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
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

    if (v4)
    {
      v30 = 1 << *(v5 + 32);
      if (v30 >= 64)
      {
        bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v30;
      }

      *(v5 + 16) = 0;
    }

    v3 = v2;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_225A410F4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B3F0, &qword_225CD95E8);
  v37 = v4;
  result = sub_225CCF564();
  v7 = result;
  if (*(v5 + 16))
  {
    v35 = v2;
    v36 = v5;
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
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = v22[1];
      v24 = (*(v5 + 56) + 32 * v21);
      v25 = v24[1];
      v39 = *v24;
      v40 = *v22;
      v26 = v24[3];
      v38 = v24[2];
      if ((v37 & 1) == 0)
      {
      }

      sub_225CCFBD4();
      sub_225CCE5B4();
      result = sub_225CCFC24();
      v27 = -1 << *(v7 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v40;
      v16[1] = v23;
      v17 = (*(v7 + 56) + 32 * v15);
      *v17 = v39;
      v17[1] = v25;
      v17[2] = v38;
      v17[3] = v26;
      ++*(v7 + 16);
      v5 = v36;
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

    if ((v37 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_33;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero(v9, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_225A413F0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B3D0, &qword_225CDC650);
  v39 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v41 = &v37 - v6;
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B3D8, &qword_225CD95D0);
  v40 = v4;
  result = sub_225CCF564();
  v9 = result;
  if (*(v7 + 16))
  {
    v37 = v2;
    v38 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = (*(v7 + 48) + 16 * v22);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(v39 + 72);
      v28 = v23 + v27 * v22;
      if (v40)
      {
        sub_225A47298(v28, v41);
      }

      else
      {
        sub_225A47228(v28, v41);
      }

      sub_225CCFBD4();
      sub_225CCE5B4();
      result = sub_225CCFC24();
      v29 = -1 << *(v9 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v16 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v16 + 8 * v31);
          if (v35 != -1)
          {
            v17 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v30) & ~*(v16 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v25;
      v18[1] = v26;
      result = sub_225A47298(v41, *(v9 + 56) + v27 * v17);
      ++*(v9 + 16);
      v7 = v38;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_34;
    }

    v36 = 1 << *(v7 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v11, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v36;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

uint64_t sub_225A41748(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B3C8, &qword_225CD95C8);
  result = sub_225CCF564();
  v7 = result;
  if (*(v5 + 16))
  {
    v29 = v3;
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
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v30 = *(*(v5 + 56) + 16 * v19);
      if ((v4 & 1) == 0)
      {
        sub_2259CB710(v30, *(&v30 + 1));
      }

      result = sub_225CCFBC4();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 16 * v15) = v30;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v28 = 1 << *(v5 + 32);
      if (v28 >= 64)
      {
        bzero((v5 + 64), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v28;
      }

      *(v5 + 16) = 0;
    }

    v3 = v29;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_225A419E8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B3A8, &qword_225CD95A8);
  result = sub_225CCF564();
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
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v28 = *(*(v5 + 48) + 16 * (v17 | (v8 << 6)));
      if ((v4 & 1) == 0)
      {
        sub_2259CB710(v28, *(*(v5 + 48) + 16 * (v17 | (v8 << 6)) + 8));
      }

      sub_225CCFBD4();
      sub_225CCCFB4();
      result = sub_225CCFC24();
      v20 = -1 << *(v7 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        v16 = v28;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
      v16 = v28;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 16 * v15) = v16;
      ++*(v7 + 16);
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

    if (v4)
    {
      v27 = 1 << *(v5 + 32);
      if (v27 >= 64)
      {
        bzero((v5 + 64), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v27;
      }

      *(v5 + 16) = 0;
    }

    v3 = v2;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_225A41CA0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  result = sub_225CCF564();
  v9 = result;
  if (*(v7 + 16))
  {
    v34 = v4;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = v18 | (v10 << 6);
      v22 = *(*(v7 + 48) + 8 * v21);
      v23 = *(*(v7 + 56) + 8 * v21);
      if ((v6 & 1) == 0)
      {
        v24 = v22;
        v25 = v23;
      }

      result = sub_225CCEF54();
      v26 = -1 << *(v9 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v16 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v16 + 8 * v28);
          if (v32 != -1)
          {
            v17 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v27) & ~*(v16 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v9 + 48) + 8 * v17) = v22;
      *(*(v9 + 56) + 8 * v17) = v23;
      ++*(v9 + 16);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v20 = v11[v10];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if (v6)
    {
      v33 = 1 << *(v7 + 32);
      if (v33 >= 64)
      {
        bzero((v7 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v11 = -1 << v33;
      }

      *(v7 + 16) = 0;
    }

    v5 = v34;
  }

  else
  {
  }

  *v5 = v9;
  return result;
}

uint64_t sub_225A41F00(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for AnyCodable(0);
  v39 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v41 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B390, &qword_225CD9598);
  v40 = v4;
  result = sub_225CCF564();
  v9 = result;
  if (*(v7 + 16))
  {
    v37 = v2;
    v38 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = (*(v7 + 48) + 16 * v22);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(v39 + 72);
      v28 = v23 + v27 * v22;
      if (v40)
      {
        sub_225A471C0(v28, v41, type metadata accessor for AnyCodable);
      }

      else
      {
        sub_225A47158(v28, v41, type metadata accessor for AnyCodable);
      }

      sub_225CCFBD4();
      sub_225CCE5B4();
      result = sub_225CCFC24();
      v29 = -1 << *(v9 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v16 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v16 + 8 * v31);
          if (v35 != -1)
          {
            v17 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v30) & ~*(v16 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v25;
      v18[1] = v26;
      result = sub_225A471C0(v41, *(v9 + 56) + v27 * v17, type metadata accessor for AnyCodable);
      ++*(v9 + 16);
      v7 = v38;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_34;
    }

    v36 = 1 << *(v7 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v11, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v36;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

uint64_t sub_225A42278(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for AnyCodable(0);
  v36 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B388, &qword_225CD9590);
  v37 = v4;
  result = sub_225CCF564();
  v10 = result;
  if (*(v8 + 16))
  {
    v35 = v3;
    v11 = 0;
    v12 = (v8 + 64);
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_15:
      v22 = v19 | (v11 << 6);
      v23 = *(*(v8 + 48) + 8 * v22);
      v24 = *(v36 + 72);
      v25 = *(v8 + 56) + v24 * v22;
      if (v37)
      {
        sub_225A471C0(v25, v7, type metadata accessor for AnyCodable);
      }

      else
      {
        sub_225A47158(v25, v7, type metadata accessor for AnyCodable);
      }

      result = sub_225CCFBC4();
      v26 = -1 << *(v10 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v10 + 48) + 8 * v18) = v23;
      result = sub_225A471C0(v7, *(v10 + 56) + v24 * v18, type metadata accessor for AnyCodable);
      ++*(v10 + 16);
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v8 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero((v8 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    *(v8 + 16) = 0;
  }

LABEL_34:
  *v3 = v10;
  return result;
}

uint64_t sub_225A425C0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B380, &qword_225CD9588);
  v36 = v4;
  result = sub_225CCF564();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v3;
    v35 = v5;
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
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(v5 + 56) + 24 * v20;
      v23 = *v22;
      v24 = *(v22 + 8);
      v25 = *(v22 + 16);
      if ((v36 & 1) == 0)
      {
        sub_2259F6128(v23, v24, v25);
      }

      result = sub_225CCFBC4();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      v16 = *(v7 + 56) + 24 * v15;
      *v16 = v23;
      *(v16 + 8) = v24;
      *(v16 + 16) = v25;
      ++*(v7 + 16);
      v5 = v35;
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

    if ((v36 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_225A42860(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B378, &qword_225CD9580);
  result = sub_225CCF564();
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
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = (*(v5 + 56) + 32 * v19);
      if (v4)
      {
        sub_2259B9624(v21, v31);
      }

      else
      {
        sub_2259CB810(v21, v31);
        v22 = v20;
      }

      sub_225CCFBD4();
      type metadata accessor for CFString(0);
      sub_225A47110(&qword_27D73AEA0, type metadata accessor for CFString, &unk_225CD3A60);
      sub_225CCD504();
      result = sub_225CCFC24();
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      result = sub_2259B9624(v31, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v4 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v2;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_225A42B40(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B370, &qword_225CE5350);
  v35 = v4;
  result = sub_225CCF564();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v5;
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
      if ((v35 & 1) == 0)
      {

        v25 = v24;
      }

      sub_225CCFBD4();
      sub_225CCE5B4();
      result = sub_225CCFC24();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
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

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_225A42DF8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v36 = v6;
  result = sub_225CCF564();
  v9 = result;
  if (*(v7 + 16))
  {
    v35 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = (*(v7 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(*(v7 + 56) + 8 * v22);
      if ((v36 & 1) == 0)
      {
      }

      sub_225CCFBD4();
      sub_225CCE5B4();
      result = sub_225CCFC24();
      v27 = -1 << *(v9 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v16 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v16 + 8 * v29);
          if (v33 != -1)
          {
            v17 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v28) & ~*(v16 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v9 + 56) + 8 * v17) = v26;
      ++*(v9 + 16);
      v7 = v35;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v5 = v4;
      goto LABEL_33;
    }

    v34 = 1 << *(v7 + 32);
    v5 = v4;
    if (v34 >= 64)
    {
      bzero(v11, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v34;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
  return result;
}

uint64_t sub_225A43098(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B340, &unk_225CFA9A0);
  v37 = v4;
  result = sub_225CCF564();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v5;
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
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + v22);
      v27 = v26[1];
      v38 = *v26;
      if ((v37 & 1) == 0)
      {
      }

      sub_225CCFBD4();
      sub_225CCE5B4();
      result = sub_225CCFC24();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v7 + 56) + v16);
      *v18 = v38;
      v18[1] = v27;
      ++*(v7 + 16);
      v5 = v36;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_225A43358(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B358, &qword_225CD9568);
  result = sub_225CCF564();
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
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v29 = *(*(v5 + 48) + 16 * v19);
      v20 = *(*(v5 + 56) + 8 * v19);
      if ((v4 & 1) == 0)
      {
      }

      sub_225CCFBD4();
      MEMORY[0x22AA6E420](v29);
      MEMORY[0x22AA6E420](*(&v29 + 1));
      result = sub_225CCFC24();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 16 * v15) = v29;
      *(*(v7 + 56) + 8 * v15) = v20;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v4 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v28 = 1 << *(v5 + 32);
    v3 = v2;
    if (v28 >= 64)
    {
      bzero((v5 + 64), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_225A435F8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B348, &qword_225CD9558);
  v34 = v4;
  result = sub_225CCF564();
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

      sub_225CCFBD4();
      sub_225CCE5B4();
      result = sub_225CCFC24();
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

uint64_t sub_225A43898(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AFA8, &unk_225CD7AB0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v50 = &v39 - v7;
  v8 = type metadata accessor for UserNotificationManagerDelegate.ContinuationIdentifier(0);
  v45 = *(v8 - 8);
  v46 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B350, &qword_225CD9560);
  v47 = v4;
  result = sub_225CCF564();
  v13 = result;
  if (*(v11 + 16))
  {
    v40 = v2;
    v14 = 0;
    v15 = (v11 + 64);
    v16 = 1 << *(v11 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v11 + 64);
    v19 = (v16 + 63) >> 6;
    v41 = v6 + 16;
    v42 = v11;
    v43 = v6;
    v44 = v5;
    v48 = (v6 + 32);
    v20 = result + 64;
    while (v18)
    {
      v22 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_15:
      v25 = v22 | (v14 << 6);
      v26 = *(v11 + 48);
      v49 = *(v45 + 72);
      v27 = v26 + v49 * v25;
      if (v47)
      {
        sub_225A471C0(v27, v10, type metadata accessor for UserNotificationManagerDelegate.ContinuationIdentifier);
        v28 = *(v11 + 56);
        v29 = *(v43 + 72);
        (*(v43 + 32))(v50, v28 + v29 * v25, v5);
      }

      else
      {
        sub_225A47158(v27, v10, type metadata accessor for UserNotificationManagerDelegate.ContinuationIdentifier);
        v30 = *(v11 + 56);
        v29 = *(v43 + 72);
        (*(v43 + 16))(v50, v30 + v29 * v25, v5);
      }

      sub_225CCFBD4();
      sub_225CCE5B4();
      sub_225CCD124();
      sub_225A47110(&qword_27D73FDF0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      sub_225CCE354();
      result = sub_225CCFC24();
      v31 = -1 << *(v13 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v20 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        v5 = v44;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v20 + 8 * v33);
          if (v37 != -1)
          {
            v21 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v21 = __clz(__rbit64((-1 << v32) & ~*(v20 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
      v5 = v44;
LABEL_7:
      *(v20 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      sub_225A471C0(v10, *(v13 + 48) + v49 * v21, type metadata accessor for UserNotificationManagerDelegate.ContinuationIdentifier);
      result = (*v48)(*(v13 + 56) + v29 * v21, v50, v5);
      ++*(v13 + 16);
      v11 = v42;
    }

    v23 = v14;
    while (1)
    {
      v14 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v14 >= v19)
      {
        break;
      }

      v24 = v15[v14];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v18 = (v24 - 1) & v24;
        goto LABEL_15;
      }
    }

    if ((v47 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_34;
    }

    v38 = 1 << *(v11 + 32);
    v3 = v40;
    if (v38 >= 64)
    {
      bzero(v15, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v38;
    }

    *(v11 + 16) = 0;
  }

LABEL_34:
  *v3 = v13;
  return result;
}

void *sub_225A43D70()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B368, &qword_225CD9578);
  v2 = *v0;
  v3 = sub_225CCF554();
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
        v18 = *(*(v2 + 48) + v17);
        sub_225A32940(*(v2 + 56) + 40 * v17, v19);
        *(*(v4 + 48) + v17) = v18;
        result = sub_2259A9C20(v19, *(v4 + 56) + 40 * v17);
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

void *sub_225A43F40(uint64_t *a1, uint64_t *a2, void (*a3)(_BYTE *, uint64_t))
{
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v5 = *v3;
  v6 = sub_225CCF554();
  v7 = v6;
  if (*(v5 + 16))
  {
    v27 = v4;
    result = (v6 + 64);
    v9 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v5 + 64 + 8 * v9)
    {
      result = memmove(result, (v5 + 64), 8 * v9);
    }

    v11 = 0;
    *(v7 + 16) = *(v5 + 16);
    v12 = 1 << *(v5 + 32);
    v13 = *(v5 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_17:
        v20 = v17 | (v11 << 6);
        v21 = 16 * v20;
        v22 = (*(v5 + 48) + 16 * v20);
        v23 = *v22;
        v24 = v22[1];
        v25 = 32 * v20;
        sub_2259CB810(*(v5 + 56) + 32 * v20, v29);
        v26 = (*(v7 + 48) + v21);
        *v26 = v23;
        v26[1] = v24;
        a3(v29, *(v7 + 56) + v25);
      }

      while (v15);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v4 = v27;
        goto LABEL_21;
      }

      v19 = *(v5 + 64 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v4 = v7;
  }

  return result;
}

void *sub_225A440E0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B418, &unk_225CD9610);
  v2 = *v0;
  v3 = sub_225CCF554();
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
        v18 = (*(v2 + 56) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        v21 = (*(v4 + 56) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
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

void *sub_225A44248()
{
  v1 = v0;
  v26 = sub_225CCF454();
  v28 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v25 = v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B410, &qword_225CD9608);
  v3 = *v0;
  v4 = sub_225CCF554();
  v5 = v4;
  if (*(v3 + 16))
  {
    v24[0] = v1;
    result = (v4 + 64);
    v7 = v3 + 64;
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v7 + 8 * v8)
    {
      result = memmove(result, (v3 + 64), 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v27 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v24[1] = v28 + 32;
    v24[2] = v28 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v29 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v28;
        v20 = *(v28 + 72) * v18;
        v21 = v25;
        v22 = v26;
        (*(v28 + 16))(v25, *(v3 + 48) + v20, v26);
        v18 *= 32;
        sub_2259CB810(*(v3 + 56) + v18, v30);
        v23 = v27;
        (*(v19 + 32))(*(v27 + 48) + v20, v21, v22);
        result = sub_2259B9624(v30, (*(v23 + 56) + v18));
        v13 = v29;
      }

      while (v29);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v24[0];
        v5 = v27;
        goto LABEL_18;
      }

      v17 = *(v7 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v29 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

id sub_225A444CC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B408, &qword_225CD9600);
  v2 = *v0;
  v3 = sub_225CCF554();
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
        v18 = *(*(v2 + 56) + 8 * v17);
        v19 = *(*(v2 + 48) + 16 * v17);
        *(*(v4 + 48) + 16 * v17) = v19;
        *(*(v4 + 56) + 8 * v17) = v18;
        sub_2259CB710(v19, *(&v19 + 1));
        result = v18;
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

void *sub_225A44638()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B3F0, &qword_225CD95E8);
  v2 = *v0;
  v3 = sub_225CCF554();
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v17 *= 32;
        v22 = (*(v2 + 56) + v17);
        v23 = *v22;
        v24 = v22[1];
        v25 = v22[2];
        v26 = v22[3];
        v27 = (*(v4 + 48) + v18);
        *v27 = v21;
        v27[1] = v20;
        v28 = (*(v4 + 56) + v17);
        *v28 = v23;
        v28[1] = v24;
        v28[2] = v25;
        v28[3] = v26;
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

void *sub_225A447F4()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B3D0, &qword_225CDC650);
  v31 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v30 = &v29 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B3D8, &qword_225CD95D0);
  v4 = *v0;
  v5 = sub_225CCF554();
  v6 = v5;
  if (*(v4 + 16))
  {
    v29 = v1;
    result = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v8 + 8 * v9)
    {
      result = memmove(result, (v4 + 64), 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v32 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = *(v4 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v10 << 6);
        v21 = 16 * v20;
        v22 = (*(v4 + 48) + 16 * v20);
        v23 = *v22;
        v24 = v22[1];
        v25 = v30;
        v26 = *(v31 + 72) * v20;
        sub_225A47228(*(v4 + 56) + v26, v30);
        v27 = v32;
        v28 = (*(v32 + 48) + v21);
        *v28 = v23;
        v28[1] = v24;
        sub_225A47298(v25, *(v27 + 56) + v26);
      }

      while (v15);
    }

    v18 = v10;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v10 >= v16)
      {

        v1 = v29;
        v6 = v32;
        goto LABEL_18;
      }

      v19 = *(v8 + 8 * v10);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

void *sub_225A44A40()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B3C8, &qword_225CD95C8);
  v2 = *v0;
  v3 = sub_225CCF554();
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
        v18 = *(*(v2 + 56) + 16 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 16 * v17) = v18;
        result = sub_2259CB710(v18, *(&v18 + 1));
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

void *sub_225A44BD0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B3A8, &qword_225CD95A8);
  v2 = *v0;
  v3 = sub_225CCF554();
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
        v18 = *(*(v2 + 48) + v17);
        *(*(v4 + 48) + v17) = v18;
        result = sub_2259CB710(v18, *(&v18 + 1));
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

id sub_225A44D54(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_225CCF554();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = *(*(v4 + 48) + 8 * v19);
        v21 = *(*(v4 + 56) + 8 * v19);
        *(*(v6 + 48) + 8 * v19) = v20;
        *(*(v6 + 56) + 8 * v19) = v21;
        v22 = v20;
        result = v21;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

void *sub_225A44EA4()
{
  v1 = v0;
  v2 = type metadata accessor for AnyCodable(0);
  v31 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v30 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B390, &qword_225CD9598);
  v4 = *v0;
  v5 = sub_225CCF554();
  v6 = v5;
  if (*(v4 + 16))
  {
    v29 = v1;
    result = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v8 + 8 * v9)
    {
      result = memmove(result, (v4 + 64), 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v32 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = *(v4 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v10 << 6);
        v21 = 16 * v20;
        v22 = (*(v4 + 48) + 16 * v20);
        v23 = *v22;
        v24 = v22[1];
        v25 = v30;
        v26 = *(v31 + 72) * v20;
        sub_225A47158(*(v4 + 56) + v26, v30, type metadata accessor for AnyCodable);
        v27 = v32;
        v28 = (*(v32 + 48) + v21);
        *v28 = v23;
        v28[1] = v24;
        sub_225A471C0(v25, *(v27 + 56) + v26, type metadata accessor for AnyCodable);
      }

      while (v15);
    }

    v18 = v10;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v10 >= v16)
      {

        v1 = v29;
        v6 = v32;
        goto LABEL_18;
      }

      v19 = *(v8 + 8 * v10);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

void *sub_225A450FC()
{
  v1 = v0;
  v2 = type metadata accessor for AnyCodable(0);
  v24 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B388, &qword_225CD9590);
  v5 = *v0;
  v6 = sub_225CCF554();
  v7 = v6;
  if (*(v5 + 16))
  {
    v23 = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    *(v7 + 16) = *(v5 + 16);
    v12 = 1 << *(v5 + 32);
    v13 = *(v5 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v11 << 6);
        v21 = *(*(v5 + 48) + 8 * v20);
        v22 = *(v24 + 72) * v20;
        sub_225A47158(*(v5 + 56) + v22, v4, type metadata accessor for AnyCodable);
        *(*(v7 + 48) + 8 * v20) = v21;
        result = sub_225A471C0(v4, *(v7 + 56) + v22, type metadata accessor for AnyCodable);
      }

      while (v15);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v23;
        goto LABEL_18;
      }

      v19 = *(v9 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

void *sub_225A45330()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B380, &qword_225CD9588);
  v2 = *v0;
  v3 = sub_225CCF554();
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
        v18 = *(v2 + 56) + 24 * v17;
        v19 = *v18;
        v20 = *(v18 + 8);
        v21 = *(v18 + 16);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        v22 = *(v4 + 56) + 24 * v17;
        *v22 = v19;
        *(v22 + 8) = v20;
        *(v22 + 16) = v21;
        result = sub_2259F6128(v19, v20, v21);
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

id sub_225A454A4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B378, &qword_225CD9580);
  v2 = *v0;
  v3 = sub_225CCF554();
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
        v18 = *(*(v2 + 48) + 8 * v17);
        sub_2259CB810(*(v2 + 56) + 32 * v17, v19);
        *(*(v4 + 48) + 8 * v17) = v18;
        sub_2259B9624(v19, (*(v4 + 56) + 32 * v17));
        result = v18;
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

id sub_225A45624()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B370, &qword_225CE5350);
  v2 = *v0;
  v3 = sub_225CCF554();
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

        result = v20;
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

void *sub_225A457A4(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_225CCF554();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = (*(v4 + 48) + 16 * v19);
        v21 = v20[1];
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = *v20;
        v23[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v22;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

void *sub_225A45904()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B340, &unk_225CFA9A0);
  v2 = *v0;
  v3 = sub_225CCF554();
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
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
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

void *sub_225A45A7C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B358, &qword_225CD9568);
  v2 = *v0;
  v3 = sub_225CCF554();
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 16 * v17) = *(*(v2 + 48) + 16 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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

void *sub_225A45BDC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B348, &qword_225CD9558);
  v2 = *v0;
  v3 = sub_225CCF554();
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
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = (*(v4 + 48) + 16 * v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v21;
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

void *sub_225A45D44()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AFA8, &unk_225CD7AB0);
  v3 = *(v2 - 8);
  v40 = v2;
  v41 = v3;
  MEMORY[0x28223BE20](v2);
  v39 = &v32 - v4;
  v5 = type metadata accessor for UserNotificationManagerDelegate.ContinuationIdentifier(0);
  v38 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v37 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B350, &qword_225CD9560);
  v7 = *v0;
  v8 = sub_225CCF554();
  v9 = v8;
  if (*(v7 + 16))
  {
    v33 = v1;
    result = (v8 + 64);
    v11 = v7 + 64;
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v11 + 8 * v12)
    {
      result = memmove(result, (v7 + 64), 8 * v12);
    }

    v13 = 0;
    v14 = *(v7 + 16);
    v42 = v9;
    *(v9 + 16) = v14;
    v15 = 1 << *(v7 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(v7 + 64);
    v18 = (v15 + 63) >> 6;
    v34 = v41 + 32;
    v35 = v41 + 16;
    v36 = v7;
    v19 = v37;
    if (v17)
    {
      do
      {
        v20 = __clz(__rbit64(v17));
        v43 = (v17 - 1) & v17;
LABEL_14:
        v23 = v20 | (v13 << 6);
        v24 = *(v38 + 72) * v23;
        sub_225A47158(*(v7 + 48) + v24, v19, type metadata accessor for UserNotificationManagerDelegate.ContinuationIdentifier);
        v26 = v40;
        v25 = v41;
        v27 = *(v41 + 72) * v23;
        v28 = *(v7 + 56) + v27;
        v29 = v39;
        (*(v41 + 16))(v39, v28, v40);
        v30 = v42;
        sub_225A471C0(v19, *(v42 + 48) + v24, type metadata accessor for UserNotificationManagerDelegate.ContinuationIdentifier);
        v31 = v29;
        v7 = v36;
        result = (*(v25 + 32))(*(v30 + 56) + v27, v31, v26);
        v17 = v43;
      }

      while (v43);
    }

    v21 = v13;
    v9 = v42;
    while (1)
    {
      v13 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v13 >= v18)
      {

        v1 = v33;
        goto LABEL_18;
      }

      v22 = *(v11 + 8 * v13);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v43 = (v22 - 1) & v22;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v9;
  }

  return result;
}

void sub_225A4607C(id a1, char a2)
{
  if (a2)
  {
  }
}

void *_s13CoreIDVShared14DIPOIDVerifierV27getSpecificCertificateErrorys0G0_psAE_pFZ_0(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v59 - v3;
  v5 = sub_225CCD954();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getErrorValue();
  Error.dipErrorCode.getter(v77, &v70);
  if (v70 != 263)
  {
    goto LABEL_24;
  }

  v76 = a1;
  v9 = a1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48, &qword_225CD75F0);
  if (!swift_dynamicCast())
  {
    goto LABEL_24;
  }

  v66 = v10;
  v11 = v75;
  v12 = v75;

  if (!v11)
  {
    goto LABEL_24;
  }

  swift_getErrorValue();
  v13 = sub_225CCFB44();
  v15 = v14;
  if (v13 == sub_225CCE474() && v15 == v16)
  {
  }

  else
  {
    v17 = sub_225CCF934();

    if ((v17 & 1) == 0)
    {
      goto LABEL_23;
    }
  }

  v67 = v11;
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v18 = off_28105B918;
  v19 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v20 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v20));
  (*(v6 + 16))(v8, &v18[v19], v5);
  os_unfair_lock_unlock(&v18[v20]);
  v11 = v67;
  v21 = v67;
  v22 = sub_225CCD934();
  v23 = sub_225CCED14();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 134217984;
    swift_getErrorValue();
    *(v24 + 4) = sub_225CCFB34();

    _os_log_impl(&dword_2259A7000, v22, v23, "Untrusted certificate underlying security error: %ld", v24, 0xCu);
    v25 = v24;
    v11 = v67;
    MEMORY[0x22AA6F950](v25, -1, -1);
  }

  else
  {
  }

  (*(v6 + 8))(v8, v5);
  swift_getErrorValue();
  v26 = v69;
  v27 = sub_225CCFB34();
  if (v27 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (v27 <= 0x7FFFFFFF)
  {
    if (v27 > -67819)
    {
      switch(v27)
      {
        case 0xFFFF9D1A:
          v28 = 267;
          break;
        case 0xFFFEF7EE:
          v28 = 268;
          break;
        case 0xFFFEF716:
          v28 = 265;
          break;
        default:
          goto LABEL_23;
      }

LABEL_29:
      v63 = "certificate error";
      v64 = "topekaServerSigning";
      v31 = v11;
      v32 = sub_225B2C248(MEMORY[0x277D84F90]);
      sub_2259CB5EC();
      a1 = swift_allocError();
      v5 = v33;
      swift_getErrorValue();
      v34 = v68;
      v35 = v67;
      v36 = v34;
      v37 = v67;
      sub_225B21FAC(v36, &v70);

      v26 = v71;
      v65 = 0x8000000225D19400;
      if (v71)
      {
        v66 = v70;
        v61 = v73;
        v62 = v72;
        v38 = v74;
        v60 = v75;
      }

      else
      {
        v59 = v32;
        v70 = v37;
        v39 = v37;
        sub_2259E4540();
        if (swift_dynamicCast())
        {
          v66 = v28;
          v40 = v76;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10, &unk_225CD4660);
          v41 = v37;
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_225CD30F0;
          *(inited + 32) = 20;
          v43 = [v40 code];
          v44 = MEMORY[0x277D83BF8];
          *(inited + 64) = MEMORY[0x277D83B88];
          *(inited + 72) = v44;
          *(inited + 40) = v43;
          v38 = sub_225B2C374(inited);
          swift_setDeallocating();
          sub_2259CB640(inited + 32, &qword_27D73B060, &unk_225CD3AE0);

          v45 = v41;
          v61 = 0;
          v62 = 0;
          v26 = MEMORY[0x277D84F90];
          v60 = v41;
        }

        else
        {
          v70 = v37;
          v46 = v37;
          v47 = sub_225CCE954();
          v48 = swift_dynamicCast();
          v49 = *(v47 - 8);
          (*(v49 + 56))(v4, v48 ^ 1u, 1, v47);
          LODWORD(v47) = (*(v49 + 48))(v4, 1, v47);
          sub_2259CB640(v4, &unk_27D73B050, &unk_225CD3AD0);
          if (v47)
          {
            v28 = v28;
          }

          else
          {
            v28 = 23;
          }

          v66 = v28;
          v26 = MEMORY[0x277D84F90];
          v38 = sub_225B2C374(MEMORY[0x277D84F90]);
          v50 = v37;
          v61 = 0x8000000225D19400;
          v62 = 0xD000000000000011;
          v60 = v37;
        }

        v32 = v59;
      }

      v8 = (v64 | 0x8000000000000000);
      v23 = v63 | 0x8000000000000000;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v70 = v38;
      sub_225B2C4A0(v32, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v70);

      v11 = v70;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_39;
      }

      goto LABEL_44;
    }

    if (v27 == -67820)
    {
      v28 = 264;
      goto LABEL_29;
    }

    if (v27 == -67819)
    {
      v28 = 266;
      goto LABEL_29;
    }

LABEL_23:

LABEL_24:
    v29 = a1;
    return a1;
  }

  __break(1u);
LABEL_44:
  v26 = sub_225B29AA0(0, *(v26 + 2) + 1, 1, v26);
LABEL_39:
  v53 = *(v26 + 2);
  v52 = *(v26 + 3);
  if (v53 >= v52 >> 1)
  {
    v26 = sub_225B29AA0((v52 > 1), v53 + 1, 1, v26);
  }

  v54 = v67;

  *(v26 + 2) = v53 + 1;
  v55 = &v26[56 * v53];
  v56 = v65;
  *(v55 + 4) = 0xD000000000000011;
  *(v55 + 5) = v56;
  *(v55 + 6) = 0xD000000000000022;
  *(v55 + 7) = v8;
  *(v55 + 8) = 0xD00000000000001FLL;
  *(v55 + 9) = v23;
  *(v55 + 10) = 660;
  *v5 = v66;
  v57 = v61;
  v58 = v62;
  *(v5 + 8) = v26;
  *(v5 + 16) = v58;
  *(v5 + 24) = v57;
  *(v5 + 32) = v11;
  *(v5 + 40) = v60;

  return a1;
}

unint64_t sub_225A468EC()
{
  result = qword_27D73B330;
  if (!qword_27D73B330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73B330);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_13CoreIDVShared12DIPCertUsageO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_225A4695C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_225A469A4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t sub_225A469E8(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t getEnumTagSinglePayload for DIPOID(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEC)
  {
    goto LABEL_17;
  }

  if (a2 + 20 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 20) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 20;
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

      return (*a1 | (v4 << 8)) - 20;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 20;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x15;
  v8 = v6 - 21;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DIPOID(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 20 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 20) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEC)
  {
    v4 = 0;
  }

  if (a2 > 0xEB)
  {
    v5 = ((a2 - 236) >> 8) + 1;
    *result = a2 + 20;
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
    *result = a2 + 20;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t dispatch thunk of OIDVerifying.verifyChain(_:forUsage:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 24) + **(a4 + 24));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_225A4733C;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of OIDVerifying.verifyChain(fromBase64DER:forUsage:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 32) + **(a4 + 32));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_225A4733C;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of OIDVerifying.verifyLeaf(_:forUsage:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 40) + **(a4 + 40));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_225A4733C;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of OIDVerifying.verifyLeaf(fromBase64DER:forUsage:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 48) + **(a5 + 48));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_225A206E8;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t sub_225A4706C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_225A470B4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_225A47110(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_225A47158(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_225A471C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_225A47228(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B3D0, &qword_225CDC650);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_225A47298(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B3D0, &qword_225CDC650);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_225A47308(id result, char a2)
{
  if (a2)
  {
    return result;
  }

  return result;
}

uint64_t sub_225A47314(uint64_t a1, unint64_t a2)
{
  if (a2 >= 5)
  {
  }

  return result;
}

uint64_t sub_225A47328(uint64_t a1, unint64_t a2)
{
  if (a2 >= 5)
  {
  }

  return result;
}

uint64_t DIPTrustKey.encryptedPrivateKey.getter()
{
  v1 = *v0;
  sub_2259CB710(*v0, *(v0 + 8));
  return v1;
}

uint64_t DIPTrustKey.attestation.getter()
{
  v1 = *(v0 + 16);
  sub_2259CB710(v1, *(v0 + 24));
  return v1;
}

uint64_t DIPTrustKey.publicKey.getter()
{
  v1 = *(v0 + 32);
  sub_2259CB710(v1, *(v0 + 40));
  return v1;
}

uint64_t DIPTrustKey.keyBlob.getter()
{
  v1 = *(v0 + 48);
  sub_2259CB710(v1, *(v0 + 56));
  return v1;
}

uint64_t DIPTrustKey.baaCertificate.getter()
{
  v1 = *(v0 + 64);
  sub_2259CB710(v1, *(v0 + 72));
  return v1;
}

uint64_t DIPTrustKey.init(encryptedPrivateKey:attestation:publicKey:keyBlob:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = a8;
  v8[10] = v10;
  v8[7] = a6;
  v8[8] = a7;
  v8[5] = a4;
  v8[6] = a5;
  v8[3] = a2;
  v8[4] = a3;
  v8[2] = a1;
  return MEMORY[0x2822009F8](sub_225A47490, 0, 0);
}

uint64_t sub_225A47490()
{
  v1 = v0[7];
  v2 = v0[8];
  sub_2259CB710(v0[5], v0[6]);
  sub_2259CB710(v1, v2);
  v3 = swift_task_alloc();
  v0[11] = v3;
  *v3 = v0;
  v3[1] = sub_225A47540;
  v4 = v0[7];
  v5 = v0[8];
  v6 = v0[5];
  v7 = v0[6];

  return sub_225A477CC(14, v4, v5, v6, v7);
}

uint64_t sub_225A47540(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v6[12] = v2;

  v7 = v6[8];
  v8 = v6[7];
  v9 = v6[6];
  v10 = v6[5];
  if (v2)
  {
    sub_2259BEF00(v8, v7);
    sub_2259BEF00(v10, v9);
    v11 = sub_225A47728;
  }

  else
  {
    v6[13] = a2;
    v6[14] = a1;
    sub_2259BEF00(v8, v7);
    sub_2259BEF00(v10, v9);
    v11 = sub_225A476E8;
  }

  return MEMORY[0x2822009F8](v11, 0, 0);
}

uint64_t sub_225A476E8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 40);
  v3 = *(v0 + 56);
  v4 = *(v0 + 72);
  v5 = *(v0 + 104);
  *v1 = *(v0 + 24);
  *(v1 + 16) = v2;
  *(v1 + 32) = v3;
  *(v1 + 48) = v4;
  *(v1 + 64) = vextq_s8(v5, v5, 8uLL);
  return (*(v0 + 8))();
}

uint64_t sub_225A47728()
{
  v1 = v0[9];
  v2 = v0[10];
  v4 = v0[7];
  v3 = v0[8];
  v6 = v0[5];
  v5 = v0[6];
  sub_2259BEF00(v0[3], v0[4]);
  sub_2259BEF00(v6, v5);
  sub_2259BEF00(v4, v3);
  sub_2259BEF00(v1, v2);
  v7 = v0[1];

  return v7();
}

uint64_t sub_225A477CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[62] = a4;
  v5[63] = a5;
  v5[60] = a2;
  v5[61] = a3;
  v5[59] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  v5[64] = swift_task_alloc();
  v6 = sub_225CCD954();
  v5[65] = v6;
  v5[66] = *(v6 - 8);
  v5[67] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_225A478CC, 0, 0);
}

uint64_t sub_225A478CC()
{
  v2 = v0[62];
  v1 = v0[63];
  v4 = v0[60];
  v3 = v0[61];
  v32 = v0[59];
  v33 = v2;
  v0[68] = [objc_allocWithZone(MEMORY[0x277CBEB28]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AF88, &unk_225CD7690);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_225CD9620;
  *(inited + 32) = sub_225CCE474();
  v6 = MEMORY[0x277D83B88];
  *(inited + 72) = MEMORY[0x277D83B88];
  *(inited + 40) = v7;
  *(inited + 48) = 1;
  *(inited + 80) = sub_225CCE474();
  *(inited + 88) = v8;
  *(inited + 120) = v6;
  *(inited + 96) = 0;
  *(inited + 128) = sub_225CCE474();
  *(inited + 136) = v9;
  v10 = MEMORY[0x277CC9318];
  *(inited + 168) = MEMORY[0x277CC9318];
  *(inited + 144) = v2;
  *(inited + 152) = v1;
  *(inited + 176) = sub_225CCE474();
  *(inited + 184) = v11;
  *(inited + 216) = v10;
  *(inited + 192) = v4;
  *(inited + 200) = v3;
  *(inited + 224) = sub_225CCE474();
  *(inited + 232) = v12;
  *(inited + 264) = v6;
  *(inited + 240) = v32;
  *(inited + 272) = sub_225CCE474();
  *(inited + 280) = v13;
  *(inited + 312) = v6;
  *(inited + 288) = 1;
  *(inited + 320) = sub_225CCE474();
  *(inited + 328) = v14;
  *(inited + 360) = v10;
  *(inited + 336) = xmmword_225CD4150;
  *(inited + 368) = sub_225CCE474();
  *(inited + 376) = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AD08, &unk_225CE40A0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_225CD73D0;
  *(v16 + 32) = sub_225CCE474();
  *(v16 + 40) = v17;
  *(v16 + 48) = sub_225CCE474();
  *(v16 + 56) = v18;
  *(v16 + 64) = sub_225CCE474();
  *(v16 + 72) = v19;
  *(v16 + 80) = sub_225CCE474();
  *(v16 + 88) = v20;
  *(v16 + 96) = sub_225CCE474();
  *(v16 + 104) = v21;
  *(v16 + 112) = sub_225CCE474();
  *(v16 + 120) = v22;
  *(inited + 408) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73DCB0, &unk_225CD76A0);
  *(inited + 384) = v16;
  sub_2259CB710(v33, v1);
  sub_2259CB710(v4, v3);
  v23 = sub_225B2CD9C(inited);
  v0[69] = v23;
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AF90, &qword_225CFB9A0);
  swift_arrayDestroy();
  if (qword_27D739EF8 != -1)
  {
    swift_once();
  }

  v24 = off_27D73AF58;
  os_unfair_lock_lock(off_27D73AF58 + 8);
  v26 = *(v24 + 2);
  v25 = *(v24 + 3);
  sub_225A02E9C(v26, v25);
  os_unfair_lock_unlock(v24 + 8);
  if (v26)
  {
    v26();
    sub_225A02E98(v26, v25);
    v27 = v0[57];
    v28 = v0[58];
  }

  else
  {
    v27 = &type metadata for DeviceIdentityCommon;
    v28 = &protocol witness table for DeviceIdentityCommon;
    v0[57] = &type metadata for DeviceIdentityCommon;
    v0[58] = &protocol witness table for DeviceIdentityCommon;
    v29 = swift_allocObject();
    v0[54] = v29;
    *(v29 + 40) = &type metadata for DeviceInformationProvider;
    *(v29 + 48) = &protocol witness table for DeviceInformationProvider;
  }

  __swift_project_boxed_opaque_existential_1(v0 + 54, v27);
  v34 = (v28[3] + *v28[3]);
  v30 = swift_task_alloc();
  v0[70] = v30;
  *v30 = v0;
  v30[1] = sub_225A47D30;

  return v34(v23, v27, v28);
}

uint64_t sub_225A47D30(void *a1, uint64_t a2)
{
  v5 = *v3;
  *(v5 + 568) = a2;
  *(v5 + 576) = v2;

  if (v2)
  {

    v6 = sub_225A484EC;
  }

  else
  {

    v6 = sub_225A47E60;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_225A47E60()
{
  v68 = v0;
  v1 = v0[71];
  __swift_destroy_boxed_opaque_existential_0(v0 + 54);
  if (v1 >> 62)
  {
    goto LABEL_17;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  for (i = v0; v2; i = v0)
  {
    v3 = 0;
    v4 = v0[66];
    v64 = v1 & 0xFFFFFFFFFFFFFF8;
    v65 = v1 & 0xC000000000000001;
    v62 = (v4 + 16);
    v60 = v0[71] + 32;
    v61 = (v4 + 8);
    v63 = v2;
    while (v65)
    {
      v5 = MEMORY[0x22AA6DA80](v3, v0[71]);
      v6 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        goto LABEL_15;
      }

LABEL_9:
      v7 = v0[68];
      v66 = v5;
      v8 = SecCertificateCopyData(v5);
      v9 = sub_225CCCFA4();
      v11 = v10;

      v12 = sub_225CCCF74();
      [v7 appendData_];

      if (qword_28105B910 != -1)
      {
        swift_once();
      }

      v13 = v0[67];
      v14 = v0[65];
      v15 = off_28105B918;
      v16 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
      v17 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
      os_unfair_lock_lock((off_28105B918 + v17));
      (*v62)(v13, &v15[v16], v14);
      os_unfair_lock_unlock(&v15[v17]);
      sub_2259CB710(v9, v11);
      v1 = sub_225CCD934();
      v18 = sub_225CCED04();
      sub_2259BEF00(v9, v11);
      v19 = os_log_type_enabled(v1, v18);
      v20 = v0[67];
      v21 = v0[65];
      if (v19)
      {
        v59 = v0[67];
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v67[0] = v23;
        *v22 = 136446210;
        v24 = sub_225CCCF84();
        v58 = v21;
        v26 = sub_2259BE198(v24, v25, v67);

        *(v22 + 4) = v26;
        _os_log_impl(&dword_2259A7000, v1, v18, "Creating baaCertificates: [%{public}s]", v22, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v23);
        v0 = i;
        MEMORY[0x22AA6F950](v23, -1, -1);
        MEMORY[0x22AA6F950](v22, -1, -1);

        sub_2259BEF00(v9, v11);
        (*v61)(v59, v58);
      }

      else
      {
        sub_2259BEF00(v9, v11);

        (*v61)(v20, v21);
      }

      ++v3;
      if (v6 == v63)
      {
        goto LABEL_18;
      }
    }

    if (v3 >= *(v64 + 16))
    {
      goto LABEL_16;
    }

    v5 = *(v60 + 8 * v3);
    v6 = v3 + 1;
    if (!__OFADD__(v3, 1))
    {
      goto LABEL_9;
    }

LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    v2 = sub_225CCF144();
  }

LABEL_18:

  v27 = sub_225CCCF04();
  if (v28 >> 60 == 15)
  {
    v29 = v0[64];
    v30 = MEMORY[0x277D84F90];
    v31 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    swift_allocError();
    v33 = v32;
    v34 = sub_225CCE954();
    v35 = *(v34 - 8);
    (*(v35 + 56))(v29, 1, 1, v34);
    v36 = (*(v35 + 48))(v29, 1, v34);
    sub_2259DB318(v29);
    v37 = sub_225B2C374(v30);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v67[0] = v37;
    sub_225B2C4A0(v31, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, v67);

    v39 = v67[0];
    v40 = sub_225B29AA0(0, 1, 1, v30);
    v42 = *(v40 + 2);
    v41 = *(v40 + 3);
    if (v42 >= v41 >> 1)
    {
      v40 = sub_225B29AA0((v41 > 1), v42 + 1, 1, v40);
    }

    v43 = i[68];
    *(v40 + 2) = v42 + 1;
    v44 = &v40[56 * v42];
    *(v44 + 4) = 0xD000000000000020;
    *(v44 + 5) = 0x8000000225D198B0;
    *(v44 + 6) = 0xD00000000000001FLL;
    *(v44 + 7) = 0x8000000225D198E0;
    *(v44 + 8) = 0xD000000000000034;
    *(v44 + 9) = 0x8000000225D19900;
    *(v44 + 10) = 73;
    if (v36)
    {
      v45 = 125;
    }

    else
    {
      v45 = 23;
    }

    *v33 = v45;
    *(v33 + 8) = v40;
    *(v33 + 16) = 0xD000000000000020;
    *(v33 + 24) = 0x8000000225D198B0;
    *(v33 + 32) = v39;
    *(v33 + 40) = 0;
    swift_willThrow();

    v46 = i[1];

    return v46();
  }

  else
  {
    v48 = v0[68];
    v49 = v27;
    v50 = v28;
    v51 = sub_225CCCF74();
    [v48 appendData_];

    v52 = v48;
    v53 = sub_225CCCFA4();
    v55 = v54;

    sub_2259B97A8(v49, v50);

    v56 = v0[1];

    return v56(v53, v55);
  }
}

uint64_t sub_225A484EC()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 432));

  v1 = *(v0 + 8);

  return v1();
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_225A48588(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 80))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_225A485DC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t HPKESuiteKwV1.init(pkISm:info:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v28 = a3;
  v29 = a4;
  v26 = a1;
  v27 = a2;
  v25 = sub_225CCDDE4();
  v6 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_225CCDDC4();
  v9 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_225CCDDD4();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a5 = &type metadata for AEADScheme_AES_128_GCM;
  *(a5 + 1) = &off_283903448;
  v16 = type metadata accessor for HPKESuiteKwV1(0);
  (*(v13 + 104))(v15, *MEMORY[0x277CC5450], v12);
  (*(v9 + 104))(v11, *MEMORY[0x277CC5438], v24);
  (*(v6 + 104))(v8, *MEMORY[0x277CC5460], v25);
  sub_225CCDDA4();
  v17 = &a5[v16[7]];
  v18 = v27;
  *v17 = v26;
  *(v17 + 1) = v18;
  v19 = v16[8];
  v20 = type metadata accessor for HPKEPrivateKey(0);
  result = (*(*(v20 - 8) + 56))(&a5[v19], 1, 1, v20);
  v22 = &a5[v16[6]];
  v23 = v29;
  *v22 = v28;
  *(v22 + 1) = v23;
  return result;
}

uint64_t sub_225A48950(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double HPKESuiteKwV1.init(skR:info:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v25 = a2;
  v26 = a3;
  v24 = a1;
  v23 = sub_225CCDDE4();
  v5 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_225CCDDC4();
  v8 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_225CCDDD4();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a4 = &type metadata for AEADScheme_AES_128_GCM;
  *(a4 + 1) = &off_283903448;
  v15 = type metadata accessor for HPKESuiteKwV1(0);
  (*(v12 + 104))(v14, *MEMORY[0x277CC5450], v11);
  (*(v8 + 104))(v10, *MEMORY[0x277CC5438], v22);
  (*(v5 + 104))(v7, *MEMORY[0x277CC5460], v23);
  sub_225CCDDA4();
  v16 = v15[8];
  sub_225A5EB00(v24, &a4[v16], type metadata accessor for HPKEPrivateKey);
  v17 = type metadata accessor for HPKEPrivateKey(0);
  (*(*(v17 - 8) + 56))(&a4[v16], 0, 1, v17);
  result = 0.0;
  *&a4[v15[7]] = xmmword_225CD4150;
  v19 = &a4[v15[6]];
  v20 = v26;
  *v19 = v25;
  *(v19 + 1) = v20;
  return result;
}

void HPKESuiteKwV1.sealMessageHPKE<A>(message:to:encoder:)(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v200 = a6;
  v179 = a5;
  v196 = a3;
  v207 = a2;
  v198 = a1;
  v176 = a7;
  v227 = *MEMORY[0x277D85DE8];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  MEMORY[0x28223BE20](v8 - 8);
  v181 = &v173 - v9;
  v199 = a4;
  v10 = sub_225CCEFC4();
  v177 = *(v10 - 8);
  v178 = v10;
  v11 = MEMORY[0x28223BE20](v10);
  v174 = &v173 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v175 = &v173 - v13;
  v206 = sub_225CCDDB4();
  *&v205 = *(v206 - 8);
  MEMORY[0x28223BE20](v206);
  *(&v205 + 1) = &v173 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v204 = sub_225CCDEA4();
  v202 = *(v204 - 8);
  MEMORY[0x28223BE20](v204);
  v203 = &v173 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_225CCDE24();
  v194 = *(v16 - 8);
  v195 = v16;
  MEMORY[0x28223BE20](v16);
  v211 = &v173 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_225CCE164();
  v214 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  *&v209 = &v173 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v212 = sub_225CCDBA4();
  v215 = *(v212 - 8);
  MEMORY[0x28223BE20](v212);
  v210 = &v173 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_225CCD954();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = &v173 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v25 = off_28105B918;
  v26 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v27 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v27));
  v28 = *(v22 + 16);
  v188 = v22 + 16;
  v189 = v26;
  v187 = v28;
  v28(v24, &v25[v26], v21);
  v190 = v27;
  v191 = v25;
  os_unfair_lock_unlock(&v25[v27]);
  MEMORY[0x28223BE20](v29);
  *(&v173 - 2) = v213;
  Logger.cryptoParam(_:)(sub_225A0E450);
  v30 = *(v22 + 8);
  v192 = v24;
  v193 = v22 + 8;
  v186 = v30;
  v31 = (v30)(v24, v21);
  v32 = v207;
  v33 = MEMORY[0x22AA6C6C0](v31);
  v35 = v34;
  v36 = sub_225A5EBD0(&qword_27D73AE10, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
  v37 = v209;
  sub_225CCDB94();
  sub_2259CB710(v33, v35);
  v38 = *(&v208 + 1);
  sub_2259DB138(v33, v35, v37);
  v182 = v21;
  v39 = v18;
  v201 = v38;
  sub_2259BEF00(v33, v35);
  v40 = v210;
  v197 = v36;
  sub_225CCDB84();
  sub_2259BEF00(v33, v35);
  v41 = *(v214 + 8);
  v214 += 8;
  v180 = v39;
  v185 = v41;
  v41(v37, v39);
  v42 = sub_225A5EBD0(&qword_27D73AE58, MEMORY[0x277CC5290], MEMORY[0x277CC5288]);
  v43 = v212;
  v184 = v42;
  v44 = sub_225CCE154();
  v46 = sub_2259D732C(v44, v45);

  *&v208 = sub_2259D8490(v46);
  *(&v208 + 1) = v47;

  v48 = *(v215 + 8);
  v215 += 8;
  v183 = v48;
  v48(v40, v43);
  (*(v202 + 16))(v203, v32, v204);
  v49 = type metadata accessor for HPKESuiteKwV1(0);
  v50 = v213;
  (*(v205 + 16))(*(&v205 + 1), v213 + *(v49 + 20), v206);
  v51 = v50 + *(v49 + 24);
  sub_2259CB710(*v51, *(v51 + 8));
  v52 = v201;
  sub_225CCDDF4();
  v53 = v52;
  if (v52)
  {
    sub_2259BEF00(v208, *(&v208 + 1));
    goto LABEL_6;
  }

  v206 = v49;
  v207 = v51;
  v54 = v196[3];
  v55 = v196[4];
  __swift_project_boxed_opaque_existential_1(v196, v54);
  *&v205 = (*(v55 + 8))(v198, v199, v200, v54, v55);
  *(&v205 + 1) = v85;
  v86 = sub_225CCDE04();
  v88 = v86;
  v89 = v87;
  v90 = v87 >> 62;
  if ((v87 >> 62) > 1)
  {
    if (v90 == 2)
    {
      v95 = *(v86 + 16);
      v96 = *(v86 + 24);
      v97 = sub_225CCCA44();
      if (v97)
      {
        v98 = sub_225CCCA74();
        if (__OFSUB__(v95, v98))
        {
LABEL_64:
          __break(1u);
          goto LABEL_65;
        }

        v97 += v95 - v98;
      }

      v99 = __OFSUB__(v96, v95);
      v100 = v96 - v95;
      if (v99)
      {
LABEL_63:
        __break(1u);
        goto LABEL_64;
      }

      v101 = sub_225CCCA64();
      if (v101 >= v100)
      {
        v102 = v100;
      }

      else
      {
        v102 = v101;
      }

      v103 = (v102 + v97);
      if (v97)
      {
        v104 = v103;
      }

      else
      {
        v104 = 0;
      }

      v105 = v97;
    }

    else
    {
      *(v219 + 6) = 0;
      *&v219[0] = 0;
      v105 = v219;
      v104 = v219;
    }

    sub_225A5A00C(v105, v104, &v220);
    sub_2259BEF00(v88, v89);
    v92 = v212;
    v91 = v213;
    v93 = v210;
    v94 = v209;
    goto LABEL_48;
  }

  if (v90)
  {
    v106 = (v86 >> 32) - v86;
    if (v86 >> 32 >= v86)
    {
      v107 = sub_225CCCA44();
      if (!v107)
      {
LABEL_39:
        v93 = v210;
        v109 = sub_225CCCA64();
        if (v109 >= v106)
        {
          v110 = (v88 >> 32) - v88;
        }

        else
        {
          v110 = v109;
        }

        v111 = v110 + v107;
        if (v107)
        {
          v112 = v111;
        }

        else
        {
          v112 = 0;
        }

        sub_225A5A00C(v107, v112, &v220);
        sub_2259BEF00(v88, v89);
        v94 = v209;
        v92 = v212;
        v91 = v213;
        goto LABEL_48;
      }

      v108 = sub_225CCCA74();
      if (!__OFSUB__(v88, v108))
      {
        v107 += v88 - v108;
        goto LABEL_39;
      }

LABEL_65:
      __break(1u);
    }

    __break(1u);
    goto LABEL_63;
  }

  *&v219[0] = v86;
  WORD4(v219[0]) = v87;
  BYTE10(v219[0]) = BYTE2(v87);
  BYTE11(v219[0]) = BYTE3(v87);
  BYTE12(v219[0]) = BYTE4(v87);
  BYTE13(v219[0]) = BYTE5(v87);
  sub_225A5A00C(v219, v219 + BYTE6(v87), &v220);
  sub_2259BEF00(v88, v89);
  v92 = v212;
  v91 = v213;
  v93 = v210;
  v94 = v209;
LABEL_48:
  v213 = *(&v220 + 1);
  v210 = v220;
  v209 = xmmword_225CD3100;
  v226 = xmmword_225CD3100;
  v113 = (v91 + *(v206 + 28));
  v114 = v113[1];
  v206 = v113;
  if (v114 >> 60 == 15)
  {
    v115 = v182;
    v116 = v180;
    v117 = v207;
    v204 = 0;
  }

  else
  {
    v118 = *v113;
    sub_2259CB710(*v113, v114);
    v116 = v180;
    sub_225CCDB94();
    sub_2259CB710(v118, v114);
    v203 = v118;
    sub_2259DB138(v118, v114, v94);
    v204 = 0;
    sub_2259B97A8(v118, v114);
    sub_225CCDB84();
    v185(v94, v116);
    v119 = sub_225CCE154();
    v121 = sub_2259D732C(v119, v120);

    v122 = sub_2259D8490(v121);
    v124 = v123;

    v183(v93, v92);
    sub_2259B97A8(v226, *(&v226 + 1));
    *&v226 = v122;
    *(&v226 + 1) = v124;
    v125 = v190;
    v126 = v191;
    os_unfair_lock_lock(&v191[v190]);
    v127 = v192;
    v115 = v182;
    v187(v192, &v126[v189], v182);
    os_unfair_lock_unlock(&v126[v125]);
    sub_225B3EAA4(v127, &v226);
    sub_2259B97A8(v203, v114);
    v186(v127, v115);
    v117 = v207;
  }

  v128 = *v117;
  v129 = v117[1];
  sub_225CCDB94();
  sub_2259CB710(v128, v129);
  v130 = v204;
  sub_2259DB138(v128, v129, v94);
  v207 = v130;
  sub_2259BEF00(v128, v129);
  sub_225CCDB84();
  v185(v94, v116);
  v131 = v212;
  v132 = sub_225CCE154();
  v134 = sub_2259D732C(v132, v133);

  v135 = sub_2259D8490(v134);
  v137 = v136;

  v183(v93, v131);
  v138 = v190;
  v139 = v191;
  os_unfair_lock_lock(&v191[v190]);
  v140 = v192;
  v187(v192, &v139[v189], v115);
  os_unfair_lock_unlock(&v139[v138]);
  sub_2259CB710(v135, v137);
  sub_225B41958();
  sub_2259BEF00(v135, v137);
  v186(v140, v115);
  v141 = *(&v226 + 1);
  v214 = v226;
  v142 = v210;
  *&v220 = v210;
  v143 = v213;
  *(&v220 + 1) = v213;
  v144 = *(&v208 + 1);
  v221 = v208;
  v222 = v209;
  v223 = v226;
  v224 = v209;
  *&v225 = v135;
  *(&v225 + 1) = v137;
  v219[0] = v205;
  v145 = *v206;
  v146 = *(v206 + 8);
  if (v146 >> 60 == 15)
  {
    v147 = 0;
  }

  else
  {
    v147 = *v206;
  }

  v148 = 0xC000000000000000;
  if (v146 >> 60 != 15)
  {
    v148 = *(v206 + 8);
  }

  v217 = v147;
  v218 = v148;
  v215 = v135;
  v212 = v137;
  v149 = v137;
  v150 = v208;
  sub_2259CB710(v135, v149);
  v151 = v143;
  v152 = v144;
  sub_2259CB710(v142, v151);
  sub_2259CB710(v150, v144);
  sub_2259CB6FC(v214, v141);
  sub_2259CB6FC(v145, v146);
  sub_2259DB42C();
  v153 = v211;
  v154 = v207;
  v155 = sub_225CCDE14();
  v53 = v154;
  if (!v154)
  {
    v157 = v156;
    v158 = v212;
    v214 = 0;
    v159 = v155;
    sub_2259BEF00(v217, v218);
    v160 = v190;
    v161 = v191;
    os_unfair_lock_lock(&v191[v190]);
    v162 = v192;
    v163 = v182;
    v187(v192, &v161[v189], v182);
    os_unfair_lock_unlock(&v161[v160]);
    sub_2259CB710(v159, v157);
    sub_225B41BAC();
    *&v209 = v159;
    sub_2259BEF00(v159, v157);
    v186(v162, v163);
    v164 = shouldIncludeUnencryptedData()();
    v165 = v199;
    v166 = *(v199 - 8);
    if (v164)
    {
      v167 = v175;
      (*(*(v199 - 8) + 16))(v175, v198, v199);
      v168 = 0;
    }

    else
    {
      v168 = 1;
      v167 = v175;
    }

    v169 = *(&v208 + 1);
    (*(v166 + 56))(v167, v168, 1, v165);
    v219[2] = v222;
    v219[3] = v223;
    v219[4] = v224;
    v219[5] = v225;
    v219[0] = v220;
    v219[1] = v221;
    v171 = v177;
    v170 = v178;
    v172 = v174;
    (*(v177 + 16))(v174, v167, v178);
    sub_225A0E2F8(&v220, &v217);
    HPKEEnvelope.init(params:data:unencryptedData:)(v219, v209, v157, v172, v165, v179, v200, v176);
    sub_2259BEF00(v205, *(&v205 + 1));
    sub_225A0E354(&v220);
    sub_2259BEF00(v215, v158);
    sub_2259BEF00(v208, v169);
    sub_2259BEF00(v210, v213);
    (*(v171 + 8))(v167, v170);
    (*(v194 + 8))(v211, v195);
    sub_2259B97A8(v226, *(&v226 + 1));
    return;
  }

  sub_225A0E354(&v220);
  sub_2259BEF00(v215, v212);
  sub_2259BEF00(v150, v152);
  sub_2259BEF00(v210, v213);
  sub_2259BEF00(v217, v218);
  (*(v194 + 8))(v153, v195);
  sub_2259BEF00(v205, *(&v205 + 1));
  sub_2259B97A8(v226, *(&v226 + 1));
LABEL_6:
  v215 = 0x8000000225D17280;
  v213 = "t the message using HPKE";
  v56 = v53;
  v57 = sub_225B2C248(MEMORY[0x277D84F90]);
  sub_2259CB5EC();
  v214 = swift_allocError();
  v59 = v58;
  swift_getErrorValue();
  v60 = v216;
  v61 = v53;
  sub_225B21FAC(v60, &v220);

  v62 = *(&v220 + 1);
  if (*(&v220 + 1))
  {
    v211 = v221;
    v212 = v220;
    v210 = *(&v221 + 1);
    *&v209 = *(&v222 + 1);
    v63 = v222;
  }

  else
  {
    *(&v208 + 1) = 0;
    *&v220 = v53;
    v64 = v53;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48, &qword_225CD75F0);
    sub_2259E4540();
    if (swift_dynamicCast())
    {
      v65 = *&v219[0];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10, &unk_225CD4660);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_225CD30F0;
      *(inited + 32) = 20;
      v67 = [v65 code];
      v68 = MEMORY[0x277D83BF8];
      *(inited + 64) = MEMORY[0x277D83B88];
      *(inited + 72) = v68;
      *(inited + 40) = v67;
      v63 = sub_225B2C374(inited);
      swift_setDeallocating();
      sub_2259CB640(inited + 32, &qword_27D73B060, &unk_225CD3AE0);

      v69 = v53;
      v210 = 0;
      v211 = 0;
      v62 = MEMORY[0x277D84F90];
      v212 = 283;
    }

    else
    {
      *&v220 = v53;
      v70 = v53;
      v71 = sub_225CCE954();
      v72 = v181;
      v73 = swift_dynamicCast();
      v74 = *(v71 - 8);
      (*(v74 + 56))(v72, v73 ^ 1u, 1, v71);
      LODWORD(v74) = (*(v74 + 48))(v72, 1, v71);
      sub_2259CB640(v72, &unk_27D73B050, &unk_225CD3AD0);
      if (v74)
      {
        v75 = 283;
      }

      else
      {
        v75 = 23;
      }

      v212 = v75;
      v62 = MEMORY[0x277D84F90];
      v63 = sub_225B2C374(MEMORY[0x277D84F90]);
      v76 = v53;
      v211 = 0xD000000000000028;
      v210 = v215;
    }

    *&v209 = v53;
  }

  v77 = v213 | 0x8000000000000000;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v220 = v63;
  sub_225B2C4A0(v57, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v220);

  v79 = v220;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v62 = sub_225B29AA0(0, *(v62 + 2) + 1, 1, v62);
  }

  v81 = *(v62 + 2);
  v80 = *(v62 + 3);
  if (v81 >= v80 >> 1)
  {
    v62 = sub_225B29AA0((v80 > 1), v81 + 1, 1, v62);
  }

  *(v62 + 2) = v81 + 1;
  v82 = &v62[56 * v81];
  v83 = v215;
  *(v82 + 4) = 0xD000000000000028;
  *(v82 + 5) = v83;
  *(v82 + 6) = 0xD00000000000001CLL;
  *(v82 + 7) = 0x8000000225D17220;
  *(v82 + 8) = 0xD000000000000024;
  *(v82 + 9) = v77;
  *(v82 + 10) = 651;
  v84 = v211;
  *v59 = v212;
  *(v59 + 8) = v62;
  *(v59 + 16) = v84;
  *(v59 + 24) = v210;
  *(v59 + 32) = v79;
  *(v59 + 40) = v209;
  swift_willThrow();
}