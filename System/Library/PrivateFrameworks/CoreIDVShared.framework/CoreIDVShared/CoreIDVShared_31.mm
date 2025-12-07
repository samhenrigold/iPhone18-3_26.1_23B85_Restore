uint64_t sub_225C73494(uint64_t a1)
{
  v2 = type metadata accessor for ISO18013ReaderRequest.DocRequest(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = (&v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(a1 + 16);
  v7 = *(v6 + 16);
  v8 = MEMORY[0x277D84F90];
  if (v7)
  {
    v35 = MEMORY[0x277D84F90];
    result = sub_2259D5698(0, v7, 0);
    v10 = 0;
    v11 = v35;
    v33 = v6 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    *&v34 = v7;
    v12 = v3;
    while (v10 < *(v6 + 16))
    {
      sub_225C705F8(v33 + *(v12 + 72) * v10, v5);
      v13 = v5[3];
      v14 = v5[4];
      v15 = v5[5];

      result = sub_225C742C0(v5, type metadata accessor for ISO18013ReaderRequest.DocRequest);
      v35 = v11;
      v17 = v11[2];
      v16 = v11[3];
      v18 = v11;
      if (v17 >= v16 >> 1)
      {
        v32 = v12;
        result = sub_2259D5698((v16 > 1), v17 + 1, 1);
        v12 = v32;
        v18 = v35;
      }

      ++v10;
      v18[2] = v17 + 1;
      v19 = &v18[3 * v17];
      v19[4] = v13;
      v19[5] = v14;
      v19[6] = v15;
      v11 = v18;
      if (v34 == v10)
      {
        v8 = MEMORY[0x277D84F90];
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
LABEL_9:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73ACA0, &qword_225CD4258);
    v20 = swift_allocObject();
    v34 = xmmword_225CD30F0;
    *(v20 + 16) = xmmword_225CD30F0;
    v21 = v11[2];
    if (v21)
    {
      v33 = v20;
      v35 = v8;
      sub_2259D5658(0, v21, 0);
      v22 = v35;
      v23 = v11 + 6;
      do
      {
        v25 = *(v23 - 2);
        v24 = *(v23 - 1);
        v26 = *v23;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC88, &unk_225D00BB0);
        v27 = swift_allocObject();
        *(v27 + 16) = v34;
        *(v27 + 32) = v25;
        *(v27 + 40) = v24;
        *(v27 + 48) = v26;
        v35 = v22;
        v29 = v22[2];
        v28 = v22[3];

        if (v29 >= v28 >> 1)
        {
          sub_2259D5658((v28 > 1), v29 + 1, 1);
          v22 = v35;
        }

        v22[2] = v29 + 1;
        v22[v29 + 4] = v27;
        v23 += 3;
        --v21;
      }

      while (v21);

      result = v33;
    }

    else
    {
      v30 = v20;

      result = v30;
      v22 = MEMORY[0x277D84F90];
    }

    *(result + 32) = v22;
    *(result + 40) = 1;
  }

  return result;
}

uint64_t sub_225C737A4(uint64_t a1)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v86 - v7;
  v9 = sub_225CCD954();
  v99 = *(v9 - 8);
  v100 = v9;
  MEMORY[0x28223BE20](v9);
  v98 = &v86 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ISO18013ReaderRequest.DocRequest(0);
  v105 = *(v11 - 8);
  MEMORY[0x28223BE20](v11 - 8);
  v104 = (&v86 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *(a1 + 48);
  if (v13 >= 2)
  {
    v28 = *(v13 + 16);
    v25 = MEMORY[0x277D84F90];
    if (v28)
    {
      v92 = v1;
      v22 = *(a1 + 16);
      v109 = MEMORY[0x277D84F90];
      v17 = &v109;
      v89 = v28;
      v94 = v13;
      sub_2259D5638(0, v28, 0);
      v29 = v94;
      v30 = 0;
      result = v109;
      v31 = v94 + 32;
      v90 = v8;
      v86 = v94 + 32;
      while (1)
      {
        v24 = *(v29 + 16);
        if (v30 >= v24)
        {
LABEL_47:
          __break(1u);
          goto LABEL_48;
        }

        v32 = (v31 + 16 * v30);
        v33 = *v32;
        v34 = v32[8];
        v35 = *(*v32 + 16);
        if (v35)
        {
          break;
        }

        v60 = v25;
LABEL_29:
        v109 = result;
        v2 = *(result + 16);
        v57 = *(result + 24);
        if (v2 >= v57 >> 1)
        {
          v17 = &v109;
          v61 = v60;
          v3 = v30;
          v4 = v31;
          v88 = v34;
          sub_2259D5638((v57 > 1), v2 + 1, 1);
          LOBYTE(v34) = v88;
          v31 = v4;
          v30 = v3;
          v29 = v94;
          v60 = v61;
          v25 = MEMORY[0x277D84F90];
          result = v109;
        }

        ++v30;
        *(result + 16) = v2 + 1;
        v58 = result + 16 * v2;
        *(v58 + 32) = v60;
        *(v58 + 40) = v34;
        if (v30 == v89)
        {
          return result;
        }
      }

      v88 = v34;
      v87 = v30;
      v93 = result;
      v108[0] = v25;
      v97 = v35;
      v102 = v33;
      swift_bridgeObjectRetain_n();
      v17 = v108;
      sub_2259D5658(0, v97, 0);
      v36 = v97;
      v37 = v102;
      v38 = 0;
      v39 = v108[0];
      v40 = v102 + 32;
      v91 = v102 + 32;
      while (1)
      {
        v24 = *(v37 + 16);
        if (v38 >= v24)
        {
LABEL_46:
          __break(1u);
          goto LABEL_47;
        }

        v41 = *(v40 + 8 * v38);
        v42 = v41[2];
        if (v42)
        {
          break;
        }

        v52 = v25;
LABEL_24:
        v108[0] = v39;
        v54 = *(v39 + 16);
        v53 = *(v39 + 24);
        v2 = v54 + 1;
        if (v54 >= v53 >> 1)
        {
          v17 = v108;
          v55 = v52;
          v3 = v38;
          v56 = v40;
          sub_2259D5658((v53 > 1), v54 + 1, 1);
          v40 = v56;
          v38 = v3;
          v36 = v97;
          v52 = v55;
          v37 = v102;
          v39 = v108[0];
        }

        ++v38;
        *(v39 + 16) = v2;
        *(v39 + 8 * v54 + 32) = v52;
        v25 = MEMORY[0x277D84F90];
        if (v38 == v36)
        {
          v59 = v39;
          swift_bridgeObjectRelease_n();
          v60 = v59;
          result = v93;
          v29 = v94;
          v30 = v87;
          v31 = v86;
          v34 = v88;
          goto LABEL_29;
        }
      }

      v95 = v38;
      v96 = v39;
      v107 = v25;

      v101 = v41;
      sub_2259D5698(0, v42, 0);
      v17 = v101;
      v25 = 0;
      v43 = v107;
      v103 = *(v22 + 16);
      while (1)
      {
        v24 = v17[2];
        if (v25 >= v24)
        {
          __break(1u);
LABEL_45:
          __break(1u);
          goto LABEL_46;
        }

        v24 = v17[v25 + 4];
        if ((v24 & 0x8000000000000000) != 0 || v24 >= v103)
        {
          break;
        }

        if (v24 >= *(v22 + 16))
        {
          goto LABEL_45;
        }

        v44 = v43;
        v45 = v22;
        v46 = v22 + ((*(v105 + 80) + 32) & ~*(v105 + 80)) + *(v105 + 72) * v24;
        v47 = v104;
        sub_225C705F8(v46, v104);
        v48 = v47[3];
        v2 = v47[4];
        v3 = v47[5];

        sub_225C742C0(v47, type metadata accessor for ISO18013ReaderRequest.DocRequest);
        v43 = v44;
        v107 = v44;
        v4 = *(v44 + 16);
        v49 = *(v43 + 24);
        if (v4 >= v49 >> 1)
        {
          sub_2259D5698((v49 > 1), v4 + 1, 1);
          v17 = v101;
          v43 = v107;
        }

        ++v25;
        *(v43 + 16) = v4 + 1;
        v50 = (v43 + 24 * v4);
        v50[4] = v48;
        v50[5] = v2;
        v50[6] = v3;
        v22 = v45;
        if (v42 == v25)
        {
          v51 = v43;

          v52 = v51;
          v37 = v102;
          v39 = v96;
          v36 = v97;
          v38 = v95;
          v40 = v91;
          goto LABEL_24;
        }
      }

      if (qword_28105B910 != -1)
      {
        swift_once();
      }

      v62 = off_28105B918;
      v63 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
      v64 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
      os_unfair_lock_lock((off_28105B918 + v64));
      v66 = v98;
      v65 = v99;
      v67 = v100;
      (*(v99 + 16))(v98, &v62[v63], v100);
      os_unfair_lock_unlock(&v62[v64]);
      v68 = sub_225CCD934();
      v69 = sub_225CCED04();
      if (os_log_type_enabled(v68, v69))
      {
        v70 = swift_slowAlloc();
        *v70 = 0;
        _os_log_impl(&dword_2259A7000, v68, v69, "Raw request validator received a document request index that does not refer to a document request.", v70, 2u);
        MEMORY[0x22AA6F950](v70, -1, -1);
      }

      (*(v65 + 8))(v66, v67);
      v104 = 0x8000000225D29C50;
      v105 = 0x8000000225D29B80;
      v71 = MEMORY[0x277D84F90];
      v72 = sub_225B2C248(MEMORY[0x277D84F90]);
      sub_2259CB5EC();
      swift_allocError();
      v74 = v73;
      v75 = sub_225CCE954();
      v76 = *(v75 - 8);
      v77 = v90;
      (*(v76 + 56))(v90, 1, 1, v75);
      LODWORD(v75) = (*(v76 + 48))(v77, 1, v75);
      sub_2259CB640(v77, &unk_27D73B050, &unk_225CD3AD0);
      if (v75)
      {
        v78 = 1045;
      }

      else
      {
        v78 = 23;
      }

      v79 = sub_225B2C374(v71);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v106 = v79;
      sub_225B2C4A0(v72, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v106);

      v81 = v106;
      v82 = sub_225B29AA0(0, 1, 1, v71);
      v84 = *(v82 + 2);
      v83 = *(v82 + 3);
      if (v84 >= v83 >> 1)
      {
        v82 = sub_225B29AA0((v83 > 1), v84 + 1, 1, v82);
      }

      *(v82 + 2) = v84 + 1;
      v85 = &v82[56 * v84];
      *(v85 + 4) = 0xD00000000000004ELL;
      *(v85 + 5) = 0x8000000225D29C70;
      *(v85 + 6) = 0xD000000000000036;
      *(v85 + 7) = v105;
      *(v85 + 8) = 0xD000000000000019;
      *(v85 + 9) = v104;
      *(v85 + 10) = 81;
      *v74 = v78;
      *(v74 + 8) = v82;
      *(v74 + 16) = 0xD00000000000004ELL;
      *(v74 + 24) = 0x8000000225D29C70;
      *(v74 + 32) = v81;
      *(v74 + 40) = 0;
      swift_willThrow();
    }

    else
    {
      return MEMORY[0x277D84F90];
    }
  }

  else
  {
    v3 = 0x8000000225D29C10;
    v104 = 0x8000000225D29C50;
    v105 = 0x8000000225D29B80;
    v14 = MEMORY[0x277D84F90];
    v15 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    swift_allocError();
    v17 = v16;
    v18 = sub_225CCE954();
    v19 = *(v18 - 8);
    (*(v19 + 56))(v8, 1, 1, v18);
    LODWORD(v18) = (*(v19 + 48))(v8, 1, v18);
    sub_2259CB640(v8, &unk_27D73B050, &unk_225CD3AD0);
    if (v18)
    {
      LOWORD(v4) = 1080;
    }

    else
    {
      LOWORD(v4) = 23;
    }

    v20 = sub_225B2C374(v14);
    v21 = swift_isUniquelyReferenced_nonNull_native();
    v109 = v20;
    sub_225B2C4A0(v15, sub_225B2AC40, 0, v21, &v109);

    v22 = v109;
    v23 = sub_225B29AA0(0, 1, 1, v14);
    v25 = *(v23 + 2);
    v24 = *(v23 + 3);
    v2 = v25 + 1;
    if (v25 >= v24 >> 1)
    {
LABEL_48:
      v23 = sub_225B29AA0((v24 > 1), v2, 1, v23);
    }

    *(v23 + 2) = v2;
    v26 = &v23[56 * v25];
    *(v26 + 4) = 0xD00000000000003ALL;
    *(v26 + 5) = v3;
    *(v26 + 6) = 0xD000000000000036;
    *(v26 + 7) = v105;
    *(v26 + 8) = 0xD000000000000019;
    *(v26 + 9) = v104;
    *(v26 + 10) = 70;
    *v17 = v4;
    v17[1] = v23;
    v17[2] = 0xD00000000000003ALL;
    v17[3] = v3;
    v17[4] = v22;
    v17[5] = 0;
    return swift_willThrow();
  }
}

unint64_t sub_225C74230()
{
  result = qword_27D742740;
  if (!qword_27D742740)
  {
    type metadata accessor for ISO18013RequestForwardingRequest(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D742740);
  }

  return result;
}

uint64_t sub_225C742C0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t WebPresentmentMobileDocumentSource.hashValue.getter()
{
  v1 = *v0;
  sub_225CCFBD4();
  MEMORY[0x22AA6E420](v1);
  return sub_225CCFC24();
}

uint64_t WebPresentmentDeviceSupportProvider.init(deviceInfoProvider:userDefaultaConfiguration:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_2259A9C20(a1, a3);
  *(a3 + 40) = a2;
  return result;
}

void *WebPresentmentDeviceSupportProvider.mobileDocumentSource.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = sub_225CCD954();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1[5] + 24))
  {
    v7 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
    v8 = sub_225CCE444();
    v9 = [v7 initWithSuiteName_];

    if (v9)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v9 = [objc_opt_self() standardUserDefaults];
LABEL_5:
  if (qword_28105B9F0 != -1)
  {
    swift_once();
  }

  if (byte_28105B9F8 == 1 && (v10 = sub_225CCE444(), v11 = [v9 stringForKey_], v10, v11))
  {
    sub_225CCE474();

    v12 = sub_225CCF5D4();

    if (!v12)
    {
      LODWORD(v13) = 0;
LABEL_16:
      if (qword_28105B910 != -1)
      {
        swift_once();
      }

      v17 = off_28105B918;
      v18 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
      v19 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
      os_unfair_lock_lock((off_28105B918 + v19));
      (*(v4 + 16))(v6, &v17[v18], v3);
      os_unfair_lock_unlock(&v17[v19]);
      v20 = sub_225CCD934();
      v21 = sub_225CCED04();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v29 = v23;
        *v22 = 136315138;
        if (v13)
        {
          v24 = 0x65746F6D6572;
        }

        else
        {
          v24 = 0x6C61636F6CLL;
        }

        v28 = a1;
        v25 = v13;
        if (v13)
        {
          v13 = 0xE600000000000000;
        }

        else
        {
          v13 = 0xE500000000000000;
        }

        v26 = sub_2259BE198(v24, v13, &v29);
        LOBYTE(v13) = v25;
        a1 = v28;

        *(v22 + 4) = v26;
        _os_log_impl(&dword_2259A7000, v20, v21, "WebPresentmentDeviceSupportProvider overriding default remote device browsing behavior: %s", v22, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v23);
        MEMORY[0x22AA6F950](v23, -1, -1);
        MEMORY[0x22AA6F950](v22, -1, -1);
      }

      result = (*(v4 + 8))(v6, v3);
      if ((v13 & 1) == 0)
      {
        goto LABEL_27;
      }

LABEL_14:
      *a1 = 1;
      return result;
    }

    if (v12 == 1)
    {
      LODWORD(v13) = 1;
      goto LABEL_16;
    }
  }

  else
  {
  }

  v14 = v1[3];
  v15 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v14);
  result = (*(v15 + 24))(&v30, v14, v15);
  if (v30)
  {
    goto LABEL_14;
  }

LABEL_27:
  *a1 = 0;
  return result;
}

unint64_t sub_225C74AF0()
{
  result = qword_27D742748;
  if (!qword_27D742748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D742748);
  }

  return result;
}

uint64_t sub_225C74B68(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_225C74BB0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t static WebPresentmentEntitlementChecker.checkEntitlement(connection:)(void *a1)
{
  if (!a1)
  {
    sub_225C74D50(&v8);
    if (*(&v9 + 1))
    {
      if (swift_dynamicCast())
      {
        return v6;
      }

      return 0;
    }

    goto LABEL_11;
  }

  v1 = a1;
  v2 = sub_225CCE444();
  v3 = [v1 valueForEntitlement_];

  if (v3)
  {
    sub_225CCF0A4();

    swift_unknownObjectRelease();
  }

  else
  {

    v6 = 0u;
    v7 = 0u;
  }

  v8 = v6;
  v9 = v7;
  if (!*(&v7 + 1))
  {
LABEL_11:
    sub_225B5445C(&v8);
    return 0;
  }

  if (swift_dynamicCast())
  {
    return v5;
  }

  return 0;
}

void sub_225C74D50(_OWORD *a3@<X8>)
{
  v4 = SecTaskCreateFromSelf(0);
  if (v4)
  {
    v5 = v4;
    v6 = sub_225CCE444();
    v7 = SecTaskCopyValueForEntitlement(v5, v6, 0);

    if (v7)
    {
      ObjectType = swift_getObjectType();
      *&v9 = v7;
      sub_2259B9624(&v9, &v11);
    }

    else
    {
      v11 = 0u;
      v12 = 0u;
    }

    v8 = v12;
    *a3 = v11;
    a3[1] = v8;
  }

  else
  {
    *a3 = 0u;
    a3[1] = 0u;
  }
}

uint64_t static WebPresentmentEntitlementChecker.checkWebBrowserEntitlement(connection:)(void *a1)
{
  if (!a1)
  {
    sub_225C74D50(&v8);
    if (*(&v9 + 1))
    {
      if (swift_dynamicCast())
      {
        return v6;
      }

      return 0;
    }

    goto LABEL_11;
  }

  v1 = a1;
  v2 = sub_225CCE444();
  v3 = [v1 valueForEntitlement_];

  if (v3)
  {
    sub_225CCF0A4();

    swift_unknownObjectRelease();
  }

  else
  {

    v6 = 0u;
    v7 = 0u;
  }

  v8 = v6;
  v9 = v7;
  if (!*(&v7 + 1))
  {
LABEL_11:
    sub_225B5445C(&v8);
    return 0;
  }

  if (swift_dynamicCast())
  {
    return v5;
  }

  return 0;
}

uint64_t sub_225C74F88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_225C74FAC, 0, 0);
}

uint64_t sub_225C74FAC()
{
  v1 = *(v0 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D742758, &qword_225D00DB8);
  v2 = swift_allocObject();
  *(v0 + 48) = v2;
  *(v2 + 24) = 0;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  v4 = *(v0 + 24);
  *(v3 + 16) = v2;
  *(v3 + 24) = v4;
  v5 = v1;
  v6 = swift_task_alloc();
  *(v0 + 64) = v6;
  *v6 = v0;
  v6[1] = sub_225C750E8;
  v7 = *(v0 + 16);
  v8 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v7, 0, 0, 0xD000000000000023, 0x8000000225D2A620, sub_225C922E0, v3, v8);
}

uint64_t sub_225C750E8()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_225C92B04;
  }

  else
  {

    v2 = sub_225C92B8C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_225C75204(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_225C75228, 0, 0);
}

uint64_t sub_225C75228()
{
  v1 = *(v0 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D742758, &qword_225D00DB8);
  v2 = swift_allocObject();
  *(v0 + 48) = v2;
  *(v2 + 24) = 0;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  v4 = *(v0 + 24);
  *(v3 + 16) = v2;
  *(v3 + 24) = v4;
  v5 = v1;
  v6 = swift_task_alloc();
  *(v0 + 64) = v6;
  *v6 = v0;
  v6[1] = sub_225C75360;
  v7 = *(v0 + 16);

  return MEMORY[0x2822008A0](v7, 0, 0, 0xD000000000000023, 0x8000000225D2A620, sub_225C92488, v3, &type metadata for WebPresentmentResponse);
}

uint64_t sub_225C75360()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_225C754E0;
  }

  else
  {

    v2 = sub_225C7547C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_225C7547C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_225C754E0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_225C7554C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_225C75570, 0, 0);
}

uint64_t sub_225C75570()
{
  v1 = *(v0 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D742758, &qword_225D00DB8);
  v2 = swift_allocObject();
  *(v0 + 48) = v2;
  *(v2 + 24) = 0;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  v4 = *(v0 + 24);
  *(v3 + 16) = v2;
  *(v3 + 24) = v4;
  v5 = v1;
  v6 = swift_task_alloc();
  *(v0 + 64) = v6;
  *v6 = v0;
  v6[1] = sub_225C750E8;
  v7 = *(v0 + 16);
  v8 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v7, 0, 0, 0xD000000000000023, 0x8000000225D2A620, sub_225C91E28, v3, v8);
}

uint64_t sub_225C756AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_225C756D0, 0, 0);
}

uint64_t sub_225C756D0()
{
  v1 = *(v0 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D742758, &qword_225D00DB8);
  v2 = swift_allocObject();
  *(v0 + 48) = v2;
  *(v2 + 24) = 0;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  v4 = *(v0 + 24);
  *(v3 + 16) = v2;
  *(v3 + 24) = v4;
  v5 = v1;
  v6 = swift_task_alloc();
  *(v0 + 64) = v6;
  *v6 = v0;
  v6[1] = sub_225C750E8;
  v7 = *(v0 + 16);

  return MEMORY[0x2822008A0](v7, 0, 0, 0xD000000000000023, 0x8000000225D2A620, sub_225C91FBC, v3, &type metadata for WebPresentmentResponse);
}

uint64_t sub_225C75808(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_225C7582C, 0, 0);
}

uint64_t sub_225C7582C()
{
  v1 = *(v0 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D742758, &qword_225D00DB8);
  v2 = swift_allocObject();
  *(v0 + 48) = v2;
  *(v2 + 24) = 0;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  v4 = *(v0 + 24);
  *(v3 + 16) = v2;
  *(v3 + 24) = v4;
  v5 = v1;
  v6 = swift_task_alloc();
  *(v0 + 64) = v6;
  *v6 = v0;
  v6[1] = sub_225C750E8;
  v7 = *(v0 + 16);
  v8 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v7, 0, 0, 0xD000000000000023, 0x8000000225D2A620, sub_225C8E460, v3, v8);
}

uint64_t sub_225C75968(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  return MEMORY[0x2822009F8](sub_225C7598C, 0, 0);
}

uint64_t sub_225C7598C()
{
  v1 = *(v0 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D742758, &qword_225D00DB8);
  v2 = swift_allocObject();
  *(v0 + 64) = v2;
  *(v2 + 24) = 0;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  *(v0 + 72) = v3;
  v4 = *(v0 + 40);
  *(v3 + 16) = v2;
  *(v3 + 24) = v4;
  v5 = v1;
  v6 = swift_task_alloc();
  *(v0 + 80) = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7427F0, &unk_225D01410);
  *v6 = v0;
  v6[1] = sub_225C75AD4;

  return MEMORY[0x2822008A0](v0 + 16, 0, 0, 0xD000000000000023, 0x8000000225D2A620, sub_225C91AF0, v3, v7);
}

uint64_t sub_225C75AD4()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_225C75C5C;
  }

  else
  {

    v2 = sub_225C75BF0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_225C75BF0()
{

  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[1];

  return v4(v1, v2, v3);
}

uint64_t sub_225C75C5C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_225C75CC8(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  return MEMORY[0x2822009F8](sub_225C75CEC, 0, 0);
}

uint64_t sub_225C75CEC()
{
  v1 = *(v0 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D742758, &qword_225D00DB8);
  v2 = swift_allocObject();
  *(v0 + 48) = v2;
  *(v2 + 24) = 0;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  v4 = *(v0 + 24);
  *(v3 + 16) = v2;
  *(v3 + 24) = v4;
  v5 = v1;
  v6 = swift_task_alloc();
  *(v0 + 64) = v6;
  v7 = type metadata accessor for IdentityProofingDisplayInfo();
  *v6 = v0;
  v6[1] = sub_225C75E28;

  return MEMORY[0x2822008A0](v0 + 16, 0, 0, 0xD000000000000023, 0x8000000225D2A620, sub_225C91628, v3, v7);
}

uint64_t sub_225C75E28()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_225C92B04;
  }

  else
  {

    v2 = sub_225C92AFC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_225C75F44(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  return MEMORY[0x2822009F8](sub_225C75F68, 0, 0);
}

uint64_t sub_225C75F68()
{
  v1 = *(v0 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D742758, &qword_225D00DB8);
  v2 = swift_allocObject();
  *(v0 + 48) = v2;
  *(v2 + 24) = 0;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  v4 = *(v0 + 24);
  *(v3 + 16) = v2;
  *(v3 + 24) = v4;
  v5 = v1;
  v6 = swift_task_alloc();
  *(v0 + 64) = v6;
  v7 = type metadata accessor for IdentityImageQuality();
  *v6 = v0;
  v6[1] = sub_225C75E28;

  return MEMORY[0x2822008A0](v0 + 16, 0, 0, 0xD000000000000023, 0x8000000225D2A620, sub_225C912F0, v3, v7);
}

uint64_t sub_225C760A4(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  return MEMORY[0x2822009F8](sub_225C760C8, 0, 0);
}

uint64_t sub_225C760C8()
{
  v1 = *(v0 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D742758, &qword_225D00DB8);
  v2 = swift_allocObject();
  *(v0 + 48) = v2;
  *(v2 + 24) = 0;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  v4 = *(v0 + 24);
  *(v3 + 16) = v2;
  *(v3 + 24) = v4;
  v5 = v1;
  v6 = swift_task_alloc();
  *(v0 + 64) = v6;
  v7 = type metadata accessor for IdentityProofingNFCConfig();
  *v6 = v0;
  v6[1] = sub_225C75E28;

  return MEMORY[0x2822008A0](v0 + 16, 0, 0, 0xD000000000000023, 0x8000000225D2A620, sub_225C90FB8, v3, v7);
}

uint64_t sub_225C76204(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  return MEMORY[0x2822009F8](sub_225C76228, 0, 0);
}

uint64_t sub_225C76228()
{
  v1 = *(v0 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D742758, &qword_225D00DB8);
  v2 = swift_allocObject();
  *(v0 + 48) = v2;
  *(v2 + 24) = 0;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  v4 = *(v0 + 24);
  *(v3 + 16) = v2;
  *(v3 + 24) = v4;
  v5 = v1;
  v6 = swift_task_alloc();
  *(v0 + 64) = v6;
  v7 = type metadata accessor for NFCPendingCommandsStatus();
  *v6 = v0;
  v6[1] = sub_225C75E28;

  return MEMORY[0x2822008A0](v0 + 16, 0, 0, 0xD000000000000023, 0x8000000225D2A620, sub_225C90C80, v3, v7);
}

uint64_t sub_225C76364(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  return MEMORY[0x2822009F8](sub_225C76388, 0, 0);
}

uint64_t sub_225C76388()
{
  v1 = *(v0 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D742758, &qword_225D00DB8);
  v2 = swift_allocObject();
  *(v0 + 48) = v2;
  *(v2 + 24) = 0;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  v4 = *(v0 + 24);
  *(v3 + 16) = v2;
  *(v3 + 24) = v4;
  v5 = v1;
  v6 = swift_task_alloc();
  *(v0 + 64) = v6;
  v7 = type metadata accessor for NFCPendingCommands();
  *v6 = v0;
  v6[1] = sub_225C75E28;

  return MEMORY[0x2822008A0](v0 + 16, 0, 0, 0xD000000000000023, 0x8000000225D2A620, sub_225C90948, v3, v7);
}

uint64_t sub_225C764C4(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  return MEMORY[0x2822009F8](sub_225C764E8, 0, 0);
}

uint64_t sub_225C764E8()
{
  v1 = *(v0 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D742758, &qword_225D00DB8);
  v2 = swift_allocObject();
  *(v0 + 48) = v2;
  *(v2 + 24) = 0;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  v4 = *(v0 + 24);
  *(v3 + 16) = v2;
  *(v3 + 24) = v4;
  v5 = v1;
  v6 = swift_task_alloc();
  *(v0 + 64) = v6;
  v7 = type metadata accessor for IdentityProofingStatus();
  *v6 = v0;
  v6[1] = sub_225C75E28;

  return MEMORY[0x2822008A0](v0 + 16, 0, 0, 0xD000000000000023, 0x8000000225D2A620, sub_225C90610, v3, v7);
}

uint64_t sub_225C76624(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  return MEMORY[0x2822009F8](sub_225C76648, 0, 0);
}

uint64_t sub_225C76648()
{
  v1 = *(v0 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D742758, &qword_225D00DB8);
  v2 = swift_allocObject();
  *(v0 + 48) = v2;
  *(v2 + 24) = 0;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  v4 = *(v0 + 24);
  *(v3 + 16) = v2;
  *(v3 + 24) = v4;
  v5 = v1;
  v6 = swift_task_alloc();
  *(v0 + 64) = v6;
  v7 = type metadata accessor for IdentityProofingConfiguration();
  *v6 = v0;
  v6[1] = sub_225C75E28;

  return MEMORY[0x2822008A0](v0 + 16, 0, 0, 0xD000000000000023, 0x8000000225D2A620, sub_225C902D8, v3, v7);
}

uint64_t sub_225C76784(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_225C767A8, 0, 0);
}

uint64_t sub_225C767A8()
{
  v1 = *(v0 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D742758, &qword_225D00DB8);
  v2 = swift_allocObject();
  *(v0 + 40) = v2;
  *(v2 + 24) = 0;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  v4 = *(v0 + 16);
  *(v3 + 16) = v2;
  *(v3 + 24) = v4;
  v5 = v1;
  v6 = swift_task_alloc();
  *(v0 + 56) = v6;
  *v6 = v0;
  v6[1] = sub_225C768E0;
  v7 = MEMORY[0x277D839B0];

  return MEMORY[0x2822008A0](v0 + 72, 0, 0, 0xD000000000000023, 0x8000000225D2A620, sub_225C8FFB4, v3, v7);
}

uint64_t sub_225C768E0()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_225C92B0C;
  }

  else
  {

    v2 = sub_225C92B00;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_225C769FC(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  return MEMORY[0x2822009F8](sub_225C76A20, 0, 0);
}

uint64_t sub_225C76A20()
{
  v1 = *(v0 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D742758, &qword_225D00DB8);
  v2 = swift_allocObject();
  *(v0 + 48) = v2;
  *(v2 + 24) = 0;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  v4 = *(v0 + 24);
  *(v3 + 16) = v2;
  *(v3 + 24) = v4;
  v5 = v1;
  v6 = swift_task_alloc();
  *(v0 + 64) = v6;
  *v6 = v0;
  v6[1] = sub_225C75E28;
  v7 = MEMORY[0x277D83B88];

  return MEMORY[0x2822008A0](v0 + 16, 0, 0, 0xD000000000000023, 0x8000000225D2A620, sub_225C8FC7C, v3, v7);
}

uint64_t sub_225C76B58(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  return MEMORY[0x2822009F8](sub_225C76B7C, 0, 0);
}

uint64_t sub_225C76B7C()
{
  v1 = *(v0 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D742758, &qword_225D00DB8);
  v2 = swift_allocObject();
  *(v0 + 48) = v2;
  *(v2 + 24) = 0;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  v4 = *(v0 + 24);
  *(v3 + 16) = v2;
  *(v3 + 24) = v4;
  v5 = v1;
  v6 = swift_task_alloc();
  *(v0 + 64) = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73DCA0, &unk_225CEF7E0);
  *v6 = v0;
  v6[1] = sub_225C75E28;

  return MEMORY[0x2822008A0](v0 + 16, 0, 0, 0xD000000000000023, 0x8000000225D2A620, sub_225C8F944, v3, v7);
}

uint64_t sub_225C76CC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_225C76CE8, 0, 0);
}

uint64_t sub_225C76CE8()
{
  v1 = *(v0 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D742758, &qword_225D00DB8);
  v2 = swift_allocObject();
  *(v0 + 48) = v2;
  *(v2 + 24) = 0;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  v4 = *(v0 + 24);
  *(v3 + 16) = v2;
  *(v3 + 24) = v4;
  v5 = v1;
  v6 = swift_task_alloc();
  *(v0 + 64) = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B0E0, qword_225CD7B60);
  *v6 = v0;
  v6[1] = sub_225C750E8;
  v8 = *(v0 + 16);

  return MEMORY[0x2822008A0](v8, 0, 0, 0xD000000000000023, 0x8000000225D2A620, sub_225C8F60C, v3, v7);
}

uint64_t sub_225C76E30(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  return MEMORY[0x2822009F8](sub_225C76E54, 0, 0);
}

uint64_t sub_225C76E54()
{
  v1 = *(v0 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D742758, &qword_225D00DB8);
  v2 = swift_allocObject();
  *(v0 + 48) = v2;
  *(v2 + 24) = 0;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  v4 = *(v0 + 24);
  *(v3 + 16) = v2;
  *(v3 + 24) = v4;
  v5 = v1;
  v6 = swift_task_alloc();
  *(v0 + 64) = v6;
  v7 = type metadata accessor for IdentityBindingDetails();
  *v6 = v0;
  v6[1] = sub_225C75E28;

  return MEMORY[0x2822008A0](v0 + 16, 0, 0, 0xD000000000000023, 0x8000000225D2A620, sub_225C8F2D4, v3, v7);
}

uint64_t sub_225C76F90(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  return MEMORY[0x2822009F8](sub_225C76FB4, 0, 0);
}

uint64_t sub_225C76FB4()
{
  v1 = *(v0 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D742758, &qword_225D00DB8);
  v2 = swift_allocObject();
  *(v0 + 56) = v2;
  *(v2 + 24) = 0;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  *(v0 + 64) = v3;
  v4 = *(v0 + 32);
  *(v3 + 16) = v2;
  *(v3 + 24) = v4;
  v5 = v1;
  v6 = swift_task_alloc();
  *(v0 + 72) = v6;
  *v6 = v0;
  v6[1] = sub_225C770EC;
  v7 = MEMORY[0x277D837D0];

  return MEMORY[0x2822008A0](v0 + 16, 0, 0, 0xD000000000000023, 0x8000000225D2A620, sub_225C8EF9C, v3, v7);
}

uint64_t sub_225C770EC()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_225C92B08;
  }

  else
  {

    v2 = sub_225C92B90;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_225C77208(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  return MEMORY[0x2822009F8](sub_225C7722C, 0, 0);
}

uint64_t sub_225C7722C()
{
  v1 = *(v0 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D742758, &qword_225D00DB8);
  v2 = swift_allocObject();
  *(v0 + 48) = v2;
  *(v2 + 24) = 0;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  v4 = *(v0 + 24);
  *(v3 + 16) = v2;
  *(v3 + 24) = v4;
  v5 = v1;
  v6 = swift_task_alloc();
  *(v0 + 64) = v6;
  v7 = type metadata accessor for IdentityLivenessConfig();
  *v6 = v0;
  v6[1] = sub_225C75E28;

  return MEMORY[0x2822008A0](v0 + 16, 0, 0, 0xD000000000000023, 0x8000000225D2A620, sub_225C8EC64, v3, v7);
}

uint64_t sub_225C77368(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  return MEMORY[0x2822009F8](sub_225C7738C, 0, 0);
}

uint64_t sub_225C7738C()
{
  v1 = *(v0 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D742758, &qword_225D00DB8);
  v2 = swift_allocObject();
  *(v0 + 48) = v2;
  *(v2 + 24) = 0;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  v4 = *(v0 + 24);
  *(v3 + 16) = v2;
  *(v3 + 24) = v4;
  v5 = v1;
  v6 = swift_task_alloc();
  *(v0 + 64) = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D742780, &unk_225D01020);
  *v6 = v0;
  v6[1] = sub_225C75E28;

  return MEMORY[0x2822008A0](v0 + 16, 0, 0, 0xD000000000000023, 0x8000000225D2A620, sub_225C8E92C, v3, v7);
}

uint64_t sub_225C774D4(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  return MEMORY[0x2822009F8](sub_225C774F8, 0, 0);
}

uint64_t sub_225C774F8()
{
  v1 = *(v0 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D742758, &qword_225D00DB8);
  v2 = swift_allocObject();
  *(v0 + 56) = v2;
  *(v2 + 24) = 0;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  *(v0 + 64) = v3;
  v4 = *(v0 + 32);
  *(v3 + 16) = v2;
  *(v3 + 24) = v4;
  v5 = v1;
  v6 = swift_task_alloc();
  *(v0 + 72) = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73E130, &qword_225CEFF10);
  *v6 = v0;
  v6[1] = sub_225C77640;

  return MEMORY[0x2822008A0](v0 + 16, 0, 0, 0xD000000000000023, 0x8000000225D2A620, sub_225C8E5F4, v3, v7);
}

uint64_t sub_225C77640()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_225C777C4;
  }

  else
  {

    v2 = sub_225C7775C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_225C7775C()
{

  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[1];

  return v3(v1, v2);
}

uint64_t sub_225C777C4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_225C77830(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_225C77854, 0, 0);
}

uint64_t sub_225C77854()
{
  v1 = *(v0 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D742758, &qword_225D00DB8);
  v2 = swift_allocObject();
  *(v0 + 48) = v2;
  *(v2 + 24) = 0;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  v4 = *(v0 + 24);
  *(v3 + 16) = v2;
  *(v3 + 24) = v4;
  v5 = v1;
  v6 = swift_task_alloc();
  *(v0 + 64) = v6;
  *v6 = v0;
  v6[1] = sub_225C750E8;
  v7 = *(v0 + 16);
  v8 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v7, 0, 0, 0xD000000000000023, 0x8000000225D2A620, sub_225C8DACC, v3, v8);
}

uint64_t sub_225C77990(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  return MEMORY[0x2822009F8](sub_225C779B4, 0, 0);
}

uint64_t sub_225C779B4()
{
  v1 = *(v0 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D742758, &qword_225D00DB8);
  v2 = swift_allocObject();
  *(v0 + 48) = v2;
  *(v2 + 24) = 0;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  v4 = *(v0 + 24);
  *(v3 + 16) = v2;
  *(v3 + 24) = v4;
  v5 = v1;
  v6 = swift_task_alloc();
  *(v0 + 64) = v6;
  *v6 = v0;
  v6[1] = sub_225C77AEC;

  return MEMORY[0x2822008A0](v0 + 16, 0, 0, 0xD000000000000023, 0x8000000225D2A620, sub_225C8E128, v3, &type metadata for IdentityProofingDataSharingUserConsent);
}

uint64_t sub_225C77AEC()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_225C754E0;
  }

  else
  {

    v2 = sub_225C77C08;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_225C77C08()
{

  v1 = *(v0 + 16);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_225C77C70(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_225C77C94, 0, 0);
}

uint64_t sub_225C77C94()
{
  v1 = *(v0 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D742758, &qword_225D00DB8);
  v2 = swift_allocObject();
  *(v0 + 40) = v2;
  *(v2 + 24) = 0;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  v4 = *(v0 + 16);
  *(v3 + 16) = v2;
  *(v3 + 24) = v4;
  v5 = v1;
  v6 = swift_task_alloc();
  *(v0 + 56) = v6;
  *v6 = v0;
  v6[1] = sub_225C77DCC;
  v7 = MEMORY[0x277D839B0];

  return MEMORY[0x2822008A0](v0 + 72, 0, 0, 0xD000000000000023, 0x8000000225D2A620, sub_225C8DC60, v3, v7);
}

uint64_t sub_225C77DCC()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_225C77F50;
  }

  else
  {

    v2 = sub_225C77EE8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_225C77EE8()
{

  v1 = *(v0 + 72);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_225C77F50()
{

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t WebPresentmentRemoteAlertController.__allocating_init()()
{
  v0 = swift_allocObject();
  WebPresentmentRemoteAlertController.init()();
  return v0;
}

uint64_t WebPresentmentRemoteAlertController.init()()
{
  swift_defaultActor_initialize();
  sub_225C74D50(&aBlock);
  if (*(&v22 + 1))
  {
    if (swift_dynamicCast())
    {
      v1 = v27[0];
      goto LABEL_6;
    }
  }

  else
  {
    sub_2259CB640(&aBlock, &qword_27D73DD90, &unk_225CD4950);
  }

  v1 = 0;
LABEL_6:
  *(v0 + 120) = v1;
  v2 = [objc_opt_self() interfaceWithProtocol_];
  aBlock = 0u;
  v22 = 0u;
  v3 = objc_allocWithZone(MEMORY[0x277CCAE80]);
  v4 = sub_225CCE444();
  v5 = [v3 initWithMachServiceName:v4 options:4096];

  sub_225C7B258(&aBlock, v27);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D742750, &qword_225D00DB0);
  v6 = swift_allocObject();
  [v5 setRemoteObjectInterface_];
  [v5 setInvalidationHandler_];
  v7 = &off_278575000;
  [v5 setInterruptionHandler_];
  [v5 setExportedInterface_];
  sub_225C7B258(v27, v25);
  v8 = v26;
  if (v26)
  {
    v9 = __swift_project_boxed_opaque_existential_1(v25, v26);
    v10 = *(v8 - 8);
    MEMORY[0x28223BE20](v9);
    v12 = &aBlock - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v10 + 16))(v12);
    v13 = sub_225CCF924();
    (*(v10 + 8))(v12, v8);
    v7 = &off_278575000;
    __swift_destroy_boxed_opaque_existential_0(v25);
  }

  else
  {
    v13 = 0;
  }

  [v5 setExportedObject_];
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D742758, &qword_225D00DB8);
  v14 = swift_allocObject();
  *(v14 + 24) = 0;
  *(v14 + 16) = v5;
  v6[2] = v14;
  v6[3] = sub_225C784DC;
  v6[4] = 0;
  [v5 activate];

  sub_2259CB640(v27, &qword_27D73DD90, &unk_225CD4950);
  sub_2259CB640(&aBlock, &qword_27D73DD90, &unk_225CD4950);
  *(v0 + 112) = v6;

  os_unfair_lock_lock((v14 + 24));
  v15 = *(v14 + 16);
  v23 = sub_225C78740;
  v24 = 0;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  *&v22 = sub_225A1A000;
  *(&v22 + 1) = &block_descriptor_13;
  v16 = _Block_copy(&aBlock);

  [v15 v7[455]];
  _Block_release(v16);
  os_unfair_lock_unlock((v14 + 24));

  v17 = *(*(v0 + 112) + 16);

  os_unfair_lock_lock((v17 + 24));
  v18 = *(v17 + 16);
  v23 = sub_225C7874C;
  v24 = 0;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  *&v22 = sub_225A1A000;
  *(&v22 + 1) = &block_descriptor_3_0;
  v19 = _Block_copy(&aBlock);

  [v18 setInvalidationHandler_];
  _Block_release(v19);
  os_unfair_lock_unlock((v17 + 24));

  return v0;
}

uint64_t sub_225C784DC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v20 - v1;
  v3 = MEMORY[0x277D84F90];
  v4 = sub_225B2C248(MEMORY[0x277D84F90]);
  sub_2259CB5EC();
  v5 = swift_allocError();
  v7 = v6;
  v8 = sub_225CCE954();
  v9 = *(v8 - 8);
  (*(v9 + 56))(v2, 1, 1, v8);
  v10 = (*(v9 + 48))(v2, 1, v8);
  sub_2259CB640(v2, &unk_27D73B050, &unk_225CD3AD0);
  v11 = sub_225B2C374(v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v21 = v11;
  sub_225B2C4A0(v4, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v21);

  v13 = v21;
  v14 = sub_225B29AA0(0, 1, 1, v3);
  v16 = *(v14 + 2);
  v15 = *(v14 + 3);
  if (v16 >= v15 >> 1)
  {
    v14 = sub_225B29AA0((v15 > 1), v16 + 1, 1, v14);
  }

  *(v14 + 2) = v16 + 1;
  v17 = &v14[56 * v16];
  *(v17 + 4) = 0xD000000000000020;
  *(v17 + 5) = 0x8000000225D2A7C0;
  *(v17 + 6) = 0xD000000000000037;
  *(v17 + 7) = 0x8000000225D2A4E0;
  *(v17 + 8) = 0x292874696E69;
  *(v17 + 9) = 0xE600000000000000;
  *(v17 + 10) = 37;
  if (v10)
  {
    v18 = 0;
  }

  else
  {
    v18 = 23;
  }

  *v7 = v18;
  *(v7 + 8) = v14;
  *(v7 + 16) = 0xD000000000000020;
  *(v7 + 24) = 0x8000000225D2A7C0;
  *(v7 + 32) = v13;
  *(v7 + 40) = 0;
  return v5;
}

uint64_t sub_225C78758(const char *a1)
{
  v2 = sub_225CCD954();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v6 = off_28105B918;
  v7 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v8 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v8));
  (*(v3 + 16))(v5, &v6[v7], v2);
  os_unfair_lock_unlock(&v6[v8]);
  v9 = sub_225CCD934();
  v10 = sub_225CCECF4();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_2259A7000, v9, v10, a1, v11, 2u);
    MEMORY[0x22AA6F950](v11, -1, -1);
  }

  return (*(v3 + 8))(v5, v2);
}

uint64_t WebPresentmentRemoteAlertController.handleScannableCode(_:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  v2[4] = swift_task_alloc();
  v3 = sub_225CCCEA4();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v2[7] = *(v4 + 64);
  v2[8] = swift_task_alloc();
  v5 = sub_225CCD954();
  v2[9] = v5;
  v2[10] = *(v5 - 8);
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_225C78AA0, v1, 0);
}

uint64_t sub_225C78AA0()
{
  v52 = v0;
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v1 = v0[12];
  v2 = v0[9];
  v3 = v0[10];
  v4 = off_28105B918;
  v5 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v6 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v6));
  v7 = *(v3 + 16);
  v7(v1, &v4[v5], v2);
  os_unfair_lock_unlock(&v4[v6]);
  v8 = sub_225CCD934();
  v9 = sub_225CCED04();
  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[10];
  v49 = v0[9];
  v50 = v0[12];
  if (v10)
  {
    v12 = swift_slowAlloc();
    v48 = v7;
    v13 = swift_slowAlloc();
    v51[0] = v13;
    *v12 = 136315138;
    *(v12 + 4) = sub_2259BE198(0xD000000000000017, 0x8000000225D2A520, v51);
    _os_log_impl(&dword_2259A7000, v8, v9, "WebPresentmentRemoteAlertController %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    v14 = v13;
    v7 = v48;
    MEMORY[0x22AA6F950](v14, -1, -1);
    MEMORY[0x22AA6F950](v12, -1, -1);
  }

  v15 = *(v11 + 8);
  v15(v50, v49);
  v16 = v0[3];
  if (*(v16 + 120) == 1)
  {
    v17 = v0[8];
    v18 = v0[5];
    v19 = v0[6];
    v20 = v0[2];
    v0[13] = *(v16 + 112);
    (*(v19 + 16))(v17, v20, v18);
    v21 = (*(v19 + 80) + 16) & ~*(v19 + 80);
    v22 = swift_allocObject();
    v0[14] = v22;
    (*(v19 + 32))(v22 + v21, v17, v18);

    return MEMORY[0x2822009F8](sub_225C79030, 0, 0);
  }

  else
  {
    v23 = v0[11];
    v24 = v0[9];
    os_unfair_lock_lock(&v4[v6]);
    v7(v23, &v4[v5], v24);
    os_unfair_lock_unlock(&v4[v6]);
    v25 = sub_225CCD934();
    v26 = sub_225CCECF4();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_2259A7000, v25, v26, "IdentityCredentialWebPresentmentRemoteAlertController calling application is not entitled to use the API", v27, 2u);
      MEMORY[0x22AA6F950](v27, -1, -1);
    }

    v28 = v0[11];
    v29 = v0[9];
    v30 = v0[4];

    v15(v28, v29);
    v31 = MEMORY[0x277D84F90];
    v32 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    swift_allocError();
    v34 = v33;
    v35 = sub_225CCE954();
    v36 = *(v35 - 8);
    (*(v36 + 56))(v30, 1, 1, v35);
    v37 = (*(v36 + 48))(v30, 1, v35);
    sub_2259CB640(v30, &unk_27D73B050, &unk_225CD3AD0);
    v38 = sub_225B2C374(v31);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v51[0] = v38;
    sub_225B2C4A0(v32, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, v51);

    v40 = v51[0];
    v41 = sub_225B29AA0(0, 1, 1, v31);
    v43 = *(v41 + 2);
    v42 = *(v41 + 3);
    if (v43 >= v42 >> 1)
    {
      v41 = sub_225B29AA0((v42 > 1), v43 + 1, 1, v41);
    }

    *(v41 + 2) = v43 + 1;
    v44 = &v41[56 * v43];
    *(v44 + 4) = 0;
    *(v44 + 5) = 0;
    *(v44 + 6) = 0xD000000000000037;
    *(v44 + 7) = 0x8000000225D2A4E0;
    if (v37)
    {
      v45 = 3;
    }

    else
    {
      v45 = 23;
    }

    *(v44 + 8) = 0xD000000000000017;
    *(v44 + 9) = 0x8000000225D2A520;
    *(v44 + 10) = 57;
    *v34 = v45;
    *(v34 + 8) = v41;
    *(v34 + 16) = 0;
    *(v34 + 24) = 0;
    *(v34 + 32) = v40;
    *(v34 + 40) = 0;
    swift_willThrow();

    v46 = v0[1];

    return v46();
  }
}

uint64_t sub_225C79030()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = swift_task_alloc();
  v0[15] = v3;
  v3[2] = v2;
  v3[3] = &unk_225D00DD8;
  v3[4] = v1;
  v4 = swift_task_alloc();
  v0[16] = v4;
  v4[2] = &unk_225D00DE0;
  v4[3] = 0;
  v4[4] = v2;
  v5 = swift_task_alloc();
  v0[17] = v5;
  *v5 = v0;
  v5[1] = sub_225C79160;
  v6 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282200830](v5, &unk_225D00DF0, v3, sub_225C8D5EC, v4, 0, 0, v6);
}

uint64_t sub_225C79160()
{
  v2 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v3 = sub_225C79330;
    v4 = 0;
  }

  else
  {
    v5 = *(v2 + 24);

    v3 = sub_225C792A4;
    v4 = v5;
  }

  return MEMORY[0x2822009F8](v3, v4, 0);
}

uint64_t sub_225C792A4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_225C79330()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2822009F8](sub_225C793B8, v1, 0);
}

uint64_t sub_225C793B8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_225C79444(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3[18] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73FD10, &unk_225CD7600);
  v3[19] = v5;
  v3[20] = *(v5 - 8);
  v6 = swift_task_alloc();
  v7 = *a2;
  v3[21] = v6;
  v3[22] = v7;

  return MEMORY[0x2822009F8](sub_225C79518, 0, 0);
}

uint64_t sub_225C79518()
{
  v1 = v0[21];
  v7 = v0[22];
  v2 = v0[19];
  v3 = v0[20];
  v4 = sub_225CCCDF4();
  v0[23] = v4;
  v0[2] = v0;
  v0[3] = sub_225C796DC;
  swift_continuation_init();
  v0[17] = v2;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48, &qword_225CD75F0);
  sub_225CCE914();
  (*(v3 + 32))(boxed_opaque_existential_1, v1, v2);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_225BED200;
  v0[13] = &block_descriptor_627;
  [v7 handleScannableCode:v4 completionHandler:v0 + 10];
  (*(v3 + 8))(boxed_opaque_existential_1, v2);

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_225C796DC()
{
  v1 = *(*v0 + 48);
  *(*v0 + 192) = v1;
  if (v1)
  {
    v2 = sub_225C7985C;
  }

  else
  {
    v2 = sub_225C797EC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_225C797EC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_225C7985C(uint64_t a1)
{
  v2 = *(v1 + 184);
  swift_willThrow();

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_225C798D8()
{
  v1 = sub_225CCD954();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_225C79994, 0, 0);
}

uint64_t sub_225C79994()
{
  v18 = v0;
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  v4 = off_28105B918;
  v5 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v6 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v6));
  (*(v2 + 16))(v1, &v4[v5], v3);
  os_unfair_lock_unlock(&v4[v6]);
  v7 = sub_225CCD934();
  v8 = sub_225CCED04();
  v9 = os_log_type_enabled(v7, v8);
  v11 = v0[3];
  v10 = v0[4];
  v12 = v0[2];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v17 = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_2259BE198(0xD000000000000017, 0x8000000225D2A520, &v17);
    _os_log_impl(&dword_2259A7000, v7, v8, "WebPresentmentRemoteAlertController %s cancelling", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x22AA6F950](v14, -1, -1);
    MEMORY[0x22AA6F950](v13, -1, -1);
  }

  (*(v11 + 8))(v10, v12);

  v15 = v0[1];

  return v15();
}

uint64_t WebPresentmentRemoteAlertController.performRemoteRequest(_:)(uint64_t a1, uint64_t a2)
{
  v3[11] = a2;
  v3[12] = v2;
  v3[10] = a1;
  v3[13] = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  v3[14] = swift_task_alloc();
  v4 = *(type metadata accessor for WebPresentmentRequest(0) - 8);
  v3[15] = v4;
  v3[16] = *(v4 + 64);
  v3[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_225C79CCC, v2, 0);
}

uint64_t sub_225C79CCC()
{
  v35 = v0;
  v1 = v0[12];
  if (*(v1 + 120) == 1)
  {
    v2 = v0[13];
    v3 = *(v1 + 112);
    v0[18] = v3;
    v0[5] = v2;
    v0[2] = v1;
    v4 = *(v3 + 16);

    os_unfair_lock_lock((v4 + 24));
    v5 = *(v4 + 16);
    sub_225C7B258((v0 + 2), (v0 + 6));
    v6 = v0[9];
    if (v6)
    {
      v7 = __swift_project_boxed_opaque_existential_1(v0 + 6, v0[9]);
      v8 = *(v6 - 8);
      v9 = swift_task_alloc();
      (*(v8 + 16))(v9, v7, v6);
      v10 = sub_225CCF924();
      (*(v8 + 8))(v9, v6);

      __swift_destroy_boxed_opaque_existential_0(v0 + 6);
    }

    else
    {
      v10 = 0;
    }

    v29 = v0[17];
    v30 = v0[15];
    v31 = v0[11];
    [v5 setExportedObject_];
    swift_unknownObjectRelease();
    os_unfair_lock_unlock((v4 + 24));
    sub_2259CB640((v0 + 2), &qword_27D73DD90, &unk_225CD4950);
    sub_225C8D63C(v31, v29);
    v32 = (*(v30 + 80) + 16) & ~*(v30 + 80);
    v33 = swift_allocObject();
    v0[19] = v33;
    sub_225C8D6A0(v29, v33 + v32);

    return MEMORY[0x2822009F8](sub_225C7A108, 0, 0);
  }

  else
  {
    v11 = v0[14];
    v12 = MEMORY[0x277D84F90];
    v13 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    swift_allocError();
    v15 = v14;
    v16 = sub_225CCE954();
    v17 = *(v16 - 8);
    (*(v17 + 56))(v11, 1, 1, v16);
    v18 = (*(v17 + 48))(v11, 1, v16);
    sub_2259CB640(v11, &unk_27D73B050, &unk_225CD3AD0);
    v19 = sub_225B2C374(v12);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v34 = v19;
    sub_225B2C4A0(v13, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v34);

    v21 = v34;
    v22 = sub_225B29AA0(0, 1, 1, v12);
    v24 = *(v22 + 2);
    v23 = *(v22 + 3);
    if (v24 >= v23 >> 1)
    {
      v22 = sub_225B29AA0((v23 > 1), v24 + 1, 1, v22);
    }

    *(v22 + 2) = v24 + 1;
    v25 = &v22[56 * v24];
    *(v25 + 4) = 0xD000000000000031;
    *(v25 + 5) = 0x8000000225D2A540;
    *(v25 + 6) = 0xD000000000000037;
    *(v25 + 7) = 0x8000000225D2A4E0;
    *(v25 + 8) = 0xD000000000000018;
    *(v25 + 9) = 0x8000000225D2A580;
    *(v25 + 10) = 70;
    if (v18)
    {
      v26 = 3;
    }

    else
    {
      v26 = 23;
    }

    *v15 = v26;
    *(v15 + 8) = v22;
    *(v15 + 16) = 0xD000000000000031;
    *(v15 + 24) = 0x8000000225D2A540;
    *(v15 + 32) = v21;
    *(v15 + 40) = 0;
    swift_willThrow();

    v27 = v0[1];

    return v27();
  }
}

uint64_t sub_225C7A108()
{
  v2 = v0[18];
  v1 = v0[19];
  v3 = swift_task_alloc();
  v0[20] = v3;
  v3[2] = v2;
  v3[3] = &unk_225D00E08;
  v3[4] = v1;
  v4 = swift_task_alloc();
  v0[21] = v4;
  v4[2] = &unk_225D00E10;
  v4[3] = 0;
  v4[4] = v2;
  v5 = swift_task_alloc();
  v0[22] = v5;
  *v5 = v0;
  v5[1] = sub_225C7A23C;
  v6 = v0[10];

  return MEMORY[0x282200830](v6, &unk_225D00E20, v3, sub_225C8D89C, v4, 0, 0, &type metadata for WebPresentmentResponse);
}

uint64_t sub_225C7A23C()
{
  v2 = *v1;
  *(*v1 + 184) = v0;

  if (v0)
  {
    v3 = sub_225C7A3FC;
    v4 = 0;
  }

  else
  {
    v5 = *(v2 + 96);

    v3 = sub_225C7A380;
    v4 = v5;
  }

  return MEMORY[0x2822009F8](v3, v4, 0);
}

uint64_t sub_225C7A380()
{
  sub_225C7A4FC(*(v0 + 96));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_225C7A3FC()
{
  v1 = *(v0 + 96);

  return MEMORY[0x2822009F8](sub_225C7A484, v1, 0);
}

uint64_t sub_225C7A484()
{
  sub_225C7A4FC(*(v0 + 96));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_225C7A4FC(uint64_t a1)
{
  v1 = *(a1 + 112);
  memset(v13, 0, sizeof(v13));
  v2 = *(v1 + 16);
  os_unfair_lock_lock((v2 + 24));
  v3 = *(v2 + 16);
  sub_225C7B258(v13, v11);
  v4 = v12;
  if (v12)
  {
    v5 = __swift_project_boxed_opaque_existential_1(v11, v12);
    v6 = *(v4 - 8);
    MEMORY[0x28223BE20](v5);
    v8 = v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v6 + 16))(v8);
    v9 = sub_225CCF924();
    (*(v6 + 8))(v8, v4);
    __swift_destroy_boxed_opaque_existential_0(v11);
  }

  else
  {
    v9 = 0;
  }

  [v3 setExportedObject_];
  swift_unknownObjectRelease();
  os_unfair_lock_unlock((v2 + 24));
  return sub_2259CB640(v13, &qword_27D73DD90, &unk_225CD4950);
}

uint64_t sub_225C7A67C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3[21] = a1;
  v3[22] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D742818, &qword_225D01500);
  v3[23] = v5;
  v3[24] = *(v5 - 8);
  v3[25] = swift_task_alloc();
  type metadata accessor for WebPresentmentRequest(0);
  v6 = swift_task_alloc();
  v7 = *a2;
  v3[26] = v6;
  v3[27] = v7;

  return MEMORY[0x2822009F8](sub_225C7A77C, 0, 0);
}

uint64_t sub_225C7A77C()
{
  v1 = v0;
  v2 = v0 + 2;
  v3 = v0 + 20;
  v4 = v0[26];
  v13 = v0[27];
  v5 = v0[24];
  v6 = v0[25];
  v7 = v0[23];
  sub_225C8D63C(v1[22], v4);
  v8 = type metadata accessor for XPCWebPresentmentRequest(0);
  v9 = objc_allocWithZone(v8);
  sub_225C8D63C(v4, v9 + OBJC_IVAR____TtC13CoreIDVShared24XPCWebPresentmentRequest_value);
  v1[18] = v9;
  v1[19] = v8;
  v10 = objc_msgSendSuper2(v1 + 9, sel_init);
  v1[28] = v10;
  sub_225C9282C(v4);
  v1[2] = v1;
  v1[7] = v3;
  v1[3] = sub_225C7A99C;
  swift_continuation_init();
  v1[17] = v7;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1 + 14);
  type metadata accessor for XPCWebPresentmentResponse();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48, &qword_225CD75F0);
  sub_225CCE914();
  (*(v5 + 32))(boxed_opaque_existential_1, v6, v7);
  v1[10] = MEMORY[0x277D85DD0];
  v1[11] = 1107296256;
  v1[12] = sub_225C95F80;
  v1[13] = &block_descriptor_610;
  [v13 performRemoteRequest:v10 completionHandler:?];
  (*(v5 + 8))(boxed_opaque_existential_1, v7);

  return MEMORY[0x282200938](v2);
}

uint64_t sub_225C7A99C()
{
  v1 = *(*v0 + 48);
  *(*v0 + 232) = v1;
  if (v1)
  {
    v2 = sub_225C7AB68;
  }

  else
  {
    v2 = sub_225C7AAAC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_225C7AAAC()
{
  v1 = v0[28];
  v3 = v0[20];
  v2 = v0[21];
  v4 = *&v3[OBJC_IVAR____TtC13CoreIDVShared25XPCWebPresentmentResponse_value];
  v5 = *&v3[OBJC_IVAR____TtC13CoreIDVShared25XPCWebPresentmentResponse_value + 8];
  sub_2259CB710(v4, v5);

  *v2 = v4;
  v2[1] = v5;

  v6 = v0[1];

  return v6();
}

uint64_t sub_225C7AB68(uint64_t a1)
{
  v2 = *(v1 + 224);
  swift_willThrow();

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_225C7ABF4(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73DA00, &qword_225CEF238);
  v1[18] = v3;
  v1[19] = *(v3 - 8);
  v1[20] = swift_task_alloc();
  v4 = sub_225CCD954();
  v1[21] = v4;
  v1[22] = *(v4 - 8);
  v5 = swift_task_alloc();
  v6 = *a1;
  v1[23] = v5;
  v1[24] = v6;

  return MEMORY[0x2822009F8](sub_225C7AD20, 0, 0);
}

uint64_t sub_225C7AD20()
{
  v22 = v0;
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[21];
  v4 = off_28105B918;
  v5 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v6 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v6));
  (*(v2 + 16))(v1, &v4[v5], v3);
  os_unfair_lock_unlock(&v4[v6]);
  v7 = sub_225CCD934();
  v8 = sub_225CCED04();
  v9 = os_log_type_enabled(v7, v8);
  v11 = v0[22];
  v10 = v0[23];
  v12 = v0[21];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v21 = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_2259BE198(0xD000000000000018, 0x8000000225D2A580, &v21);
    _os_log_impl(&dword_2259A7000, v7, v8, "WebPresentmentRemoteAlertController %s cancelling", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x22AA6F950](v14, -1, -1);
    MEMORY[0x22AA6F950](v13, -1, -1);
  }

  (*(v11 + 8))(v10, v12);
  v15 = v0[24];
  v17 = v0[19];
  v16 = v0[20];
  v18 = v0[18];
  v0[2] = v0;
  v0[3] = sub_225C7B054;
  swift_continuation_init();
  v0[17] = v18;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 14);
  sub_225CCE914();
  (*(v17 + 32))(boxed_opaque_existential_1, v16, v18);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_225C7B1A4;
  v0[13] = &block_descriptor_607;
  [v15 cancelRemoteRequestWithCompletionHandler_];
  (*(v17 + 8))(boxed_opaque_existential_1, v18);

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_225C7B054()
{

  return MEMORY[0x2822009F8](sub_225C7B134, 0, 0);
}

uint64_t sub_225C7B134()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_225C7B1A4(uint64_t a1)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73DA00, &qword_225CEF238);
  return sub_225CCE934();
}

uint64_t WebPresentmentRemoteAlertController.deinit()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t WebPresentmentRemoteAlertController.__deallocating_deinit()
{

  swift_defaultActor_destroy();

  return swift_defaultActor_deallocate();
}

uint64_t sub_225C7B258(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73DD90, &unk_225CD4950);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t block_copy_helper_13(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_225C7B2E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_225C7B304, 0, 0);
}

uint64_t sub_225C7B304()
{
  v1 = *(v0[3] + 16);
  os_unfair_lock_lock((v1 + 24));
  v2 = *(v1 + 16);
  v0[6] = v2;
  v2;
  os_unfair_lock_unlock((v1 + 24));
  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = sub_225C7B3DC;
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[2];

  return sub_225C74F88(v6, v4, v5);
}

uint64_t sub_225C7B3DC()
{
  v2 = *v1;
  *(v2 + 64) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_225C92B88, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_225C7B518(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_225C7B53C, 0, 0);
}

uint64_t sub_225C7B53C()
{
  v1 = *(v0[3] + 16);
  os_unfair_lock_lock((v1 + 24));
  v2 = *(v1 + 16);
  v0[6] = v2;
  v2;
  os_unfair_lock_unlock((v1 + 24));
  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = sub_225C7B614;
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[2];

  return sub_225C75204(v6, v4, v5);
}

uint64_t sub_225C7B614()
{
  v2 = *v1;
  *(v2 + 64) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_225C7B750, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_225C7B750()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_225C7B7B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_225C7B7D8, 0, 0);
}

uint64_t sub_225C7B7D8()
{
  v1 = *(v0[3] + 16);
  os_unfair_lock_lock((v1 + 24));
  v2 = *(v1 + 16);
  v0[6] = v2;
  v2;
  os_unfair_lock_unlock((v1 + 24));
  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = sub_225C7B3DC;
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[2];

  return sub_225C756AC(v6, v4, v5);
}

uint64_t sub_225C7B8B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_225C7B8D4, 0, 0);
}

uint64_t sub_225C7B8D4()
{
  v1 = *(v0[3] + 16);
  os_unfair_lock_lock((v1 + 24));
  v2 = *(v1 + 16);
  v0[6] = v2;
  v2;
  os_unfair_lock_unlock((v1 + 24));
  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = sub_225C7B3DC;
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[2];

  return sub_225C75808(v6, v4, v5);
}

uint64_t sub_225C7B9AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_225C7B9D0, 0, 0);
}

uint64_t sub_225C7B9D0()
{
  v1 = *(v0[3] + 16);
  os_unfair_lock_lock((v1 + 24));
  v2 = *(v1 + 16);
  v0[6] = v2;
  v2;
  os_unfair_lock_unlock((v1 + 24));
  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = sub_225C7B3DC;
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[2];

  return sub_225C76CC4(v6, v4, v5);
}

uint64_t sub_225C7BAA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_225C7BACC, 0, 0);
}

uint64_t sub_225C7BACC()
{
  v1 = *(v0[3] + 16);
  os_unfair_lock_lock((v1 + 24));
  v2 = *(v1 + 16);
  v0[6] = v2;
  v2;
  os_unfair_lock_unlock((v1 + 24));
  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = sub_225C7B3DC;
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[2];

  return sub_225C77830(v6, v4, v5);
}

uint64_t sub_225C7C01C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t), uint64_t a6)
{
  v11 = sub_225CCD954();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73FE00, &qword_225CD75C0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v27 - v16;
  if (a1)
  {
    v18 = sub_225CCE994();
    (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
    v19 = swift_allocObject();
    v19[2] = 0;
    v19[3] = 0;
    v19[4] = a3;
    v19[5] = a1;
    v19[6] = a2;
    a5(a1, a2);

    sub_225AFBC30(0, 0, v17, a6, v19);
  }

  else
  {
    if (qword_28105B910 != -1)
    {
      swift_once();
    }

    v21 = off_28105B918;
    v22 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
    v23 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((off_28105B918 + v23));
    (*(v12 + 16))(v14, &v21[v22], v11);
    os_unfair_lock_unlock(&v21[v23]);
    v24 = sub_225CCD934();
    v25 = sub_225CCED04();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_2259A7000, v24, v25, "SendableXPCConnection onCancel is nil", v26, 2u);
      MEMORY[0x22AA6F950](v26, -1, -1);
    }

    return (*(v12 + 8))(v14, v11);
  }
}

uint64_t sub_225C7C304(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = sub_225CCD954();
  v6[5] = v7;
  v6[6] = *(v7 - 8);
  v6[7] = swift_task_alloc();
  v6[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_225C7C3D4, 0, 0);
}

uint64_t sub_225C7C3D4()
{
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 64);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  v4 = off_28105B918;
  *(v0 + 72) = off_28105B918;
  v5 = *v4;
  v6 = *(*v4 + *MEMORY[0x277D841D0] + 16);
  *(v0 + 80) = v6;
  v7 = *(v5 + 48);
  *(v0 + 144) = v7;
  v8 = (v7 + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock(&v4[v8]);
  v9 = *(v3 + 16);
  *(v0 + 88) = v9;
  *(v0 + 96) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v9(v1, &v4[v6], v2);
  os_unfair_lock_unlock(&v4[v8]);
  v10 = sub_225CCD934();
  v11 = sub_225CCECF4();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_2259A7000, v10, v11, "SendableXPCConnection executing cancellation handler", v12, 2u);
    MEMORY[0x22AA6F950](v12, -1, -1);
  }

  v13 = *(v0 + 64);
  v14 = *(v0 + 40);
  v15 = *(v0 + 48);
  v17 = *(v0 + 24);
  v16 = *(v0 + 32);
  v18 = *(v0 + 16);

  v19 = *(v15 + 8);
  *(v0 + 104) = v19;
  v19(v13, v14);
  v20 = *(v18 + 16);
  os_unfair_lock_lock((v20 + 24));
  v21 = *(v20 + 16);
  *(v0 + 112) = v21;
  v21;
  os_unfair_lock_unlock((v20 + 24));
  v22 = swift_allocObject();
  *(v0 + 120) = v22;
  *(v22 + 16) = v17;
  *(v22 + 24) = v16;

  v23 = swift_task_alloc();
  *(v0 + 128) = v23;
  *v23 = v0;
  v23[1] = sub_225C7C654;

  return sub_225C74F88(sub_225C74F88, &unk_225D01520, v22);
}

uint64_t sub_225C7C654()
{
  v2 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v3 = sub_225C92A60;
  }

  else
  {
    v4 = *(v2 + 112);

    v3 = sub_225C92AF8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_225C7C774(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = sub_225CCD954();
  v6[5] = v7;
  v6[6] = *(v7 - 8);
  v6[7] = swift_task_alloc();
  v6[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_225C7C844, 0, 0);
}

uint64_t sub_225C7C844()
{
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 64);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  v4 = off_28105B918;
  *(v0 + 72) = off_28105B918;
  v5 = *v4;
  v6 = *(*v4 + *MEMORY[0x277D841D0] + 16);
  *(v0 + 80) = v6;
  v7 = *(v5 + 48);
  *(v0 + 144) = v7;
  v8 = (v7 + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock(&v4[v8]);
  v9 = *(v3 + 16);
  *(v0 + 88) = v9;
  *(v0 + 96) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v9(v1, &v4[v6], v2);
  os_unfair_lock_unlock(&v4[v8]);
  v10 = sub_225CCD934();
  v11 = sub_225CCECF4();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_2259A7000, v10, v11, "SendableXPCConnection executing cancellation handler", v12, 2u);
    MEMORY[0x22AA6F950](v12, -1, -1);
  }

  v13 = *(v0 + 64);
  v14 = *(v0 + 40);
  v15 = *(v0 + 48);
  v17 = *(v0 + 24);
  v16 = *(v0 + 32);
  v18 = *(v0 + 16);

  v19 = *(v15 + 8);
  *(v0 + 104) = v19;
  v19(v13, v14);
  v20 = *(v18 + 16);
  os_unfair_lock_lock((v20 + 24));
  v21 = *(v20 + 16);
  *(v0 + 112) = v21;
  v21;
  os_unfair_lock_unlock((v20 + 24));
  v22 = swift_allocObject();
  *(v0 + 120) = v22;
  *(v22 + 16) = v17;
  *(v22 + 24) = v16;

  v23 = swift_task_alloc();
  *(v0 + 128) = v23;
  *v23 = v0;
  v23[1] = sub_225C7CAC4;

  return sub_225C74F88(sub_225C74F88, &unk_225D014B8, v22);
}

uint64_t sub_225C7CAC4()
{
  v2 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v3 = sub_225C7CC4C;
  }

  else
  {
    v4 = *(v2 + 112);

    v3 = sub_225C7CBE4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_225C7CBE4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_225C7CC4C()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 112);
  v3 = *(v0 + 88);
  v4 = *(v0 + 144);
  v6 = *(v0 + 72);
  v5 = *(v0 + 80);
  v7 = *(v0 + 56);
  v8 = *(v0 + 40);

  v9 = (v4 + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v6 + v9));
  v3(v7, v6 + v5, v8);
  os_unfair_lock_unlock((v6 + v9));
  v10 = v1;
  v11 = sub_225CCD934();
  v12 = sub_225CCED14();

  v13 = os_log_type_enabled(v11, v12);
  v14 = *(v0 + 136);
  if (v13)
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v15 = 138412290;
    v17 = v14;
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v15 + 4) = v18;
    *v16 = v18;
    _os_log_impl(&dword_2259A7000, v11, v12, "SendableXPCConnection error occurred when cancelling the task: %@", v15, 0xCu);
    sub_2259CB640(v16, &unk_27D73FC90, &unk_225CFA710);
    MEMORY[0x22AA6F950](v16, -1, -1);
    MEMORY[0x22AA6F950](v15, -1, -1);
  }

  else
  {
  }

  (*(v0 + 104))(*(v0 + 56), *(v0 + 40));

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_225C7CE2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = sub_225CCD954();
  v6[5] = v7;
  v6[6] = *(v7 - 8);
  v6[7] = swift_task_alloc();
  v6[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_225C7CEFC, 0, 0);
}

uint64_t sub_225C7CEFC()
{
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 64);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  v4 = off_28105B918;
  *(v0 + 72) = off_28105B918;
  v5 = *v4;
  v6 = *(*v4 + *MEMORY[0x277D841D0] + 16);
  *(v0 + 80) = v6;
  v7 = *(v5 + 48);
  *(v0 + 144) = v7;
  v8 = (v7 + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock(&v4[v8]);
  v9 = *(v3 + 16);
  *(v0 + 88) = v9;
  *(v0 + 96) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v9(v1, &v4[v6], v2);
  os_unfair_lock_unlock(&v4[v8]);
  v10 = sub_225CCD934();
  v11 = sub_225CCECF4();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_2259A7000, v10, v11, "SendableXPCConnection executing cancellation handler", v12, 2u);
    MEMORY[0x22AA6F950](v12, -1, -1);
  }

  v13 = *(v0 + 64);
  v14 = *(v0 + 40);
  v15 = *(v0 + 48);
  v17 = *(v0 + 24);
  v16 = *(v0 + 32);
  v18 = *(v0 + 16);

  v19 = *(v15 + 8);
  *(v0 + 104) = v19;
  v19(v13, v14);
  v20 = *(v18 + 16);
  os_unfair_lock_lock((v20 + 24));
  v21 = *(v20 + 16);
  *(v0 + 112) = v21;
  v21;
  os_unfair_lock_unlock((v20 + 24));
  v22 = swift_allocObject();
  *(v0 + 120) = v22;
  *(v22 + 16) = v17;
  *(v22 + 24) = v16;

  v23 = swift_task_alloc();
  *(v0 + 128) = v23;
  *v23 = v0;
  v23[1] = sub_225C7C654;

  return sub_225C7554C(sub_225C7554C, &unk_225D01450, v22);
}

uint64_t sub_225C7D17C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = sub_225CCD954();
  v6[5] = v7;
  v6[6] = *(v7 - 8);
  v6[7] = swift_task_alloc();
  v6[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_225C7D24C, 0, 0);
}

uint64_t sub_225C7D24C()
{
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 64);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  v4 = off_28105B918;
  *(v0 + 72) = off_28105B918;
  v5 = *v4;
  v6 = *(*v4 + *MEMORY[0x277D841D0] + 16);
  *(v0 + 80) = v6;
  v7 = *(v5 + 48);
  *(v0 + 144) = v7;
  v8 = (v7 + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock(&v4[v8]);
  v9 = *(v3 + 16);
  *(v0 + 88) = v9;
  *(v0 + 96) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v9(v1, &v4[v6], v2);
  os_unfair_lock_unlock(&v4[v8]);
  v10 = sub_225CCD934();
  v11 = sub_225CCECF4();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_2259A7000, v10, v11, "SendableXPCConnection executing cancellation handler", v12, 2u);
    MEMORY[0x22AA6F950](v12, -1, -1);
  }

  v13 = *(v0 + 64);
  v14 = *(v0 + 40);
  v15 = *(v0 + 48);
  v17 = *(v0 + 24);
  v16 = *(v0 + 32);
  v18 = *(v0 + 16);

  v19 = *(v15 + 8);
  *(v0 + 104) = v19;
  v19(v13, v14);
  v20 = *(v18 + 16);
  os_unfair_lock_lock((v20 + 24));
  v21 = *(v20 + 16);
  *(v0 + 112) = v21;
  v21;
  os_unfair_lock_unlock((v20 + 24));
  v22 = swift_allocObject();
  *(v0 + 120) = v22;
  *(v22 + 16) = v17;
  *(v22 + 24) = v16;

  v23 = swift_task_alloc();
  *(v0 + 128) = v23;
  *v23 = v0;
  v23[1] = sub_225C7C654;

  return sub_225C75808(sub_225C75808, &unk_225D01400, v22);
}

uint64_t sub_225C7D4CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = sub_225CCD954();
  v6[5] = v7;
  v6[6] = *(v7 - 8);
  v6[7] = swift_task_alloc();
  v6[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_225C7D59C, 0, 0);
}

uint64_t sub_225C7D59C()
{
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 64);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  v4 = off_28105B918;
  *(v0 + 72) = off_28105B918;
  v5 = *v4;
  v6 = *(*v4 + *MEMORY[0x277D841D0] + 16);
  *(v0 + 80) = v6;
  v7 = *(v5 + 48);
  *(v0 + 144) = v7;
  v8 = (v7 + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock(&v4[v8]);
  v9 = *(v3 + 16);
  *(v0 + 88) = v9;
  *(v0 + 96) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v9(v1, &v4[v6], v2);
  os_unfair_lock_unlock(&v4[v8]);
  v10 = sub_225CCD934();
  v11 = sub_225CCECF4();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_2259A7000, v10, v11, "SendableXPCConnection executing cancellation handler", v12, 2u);
    MEMORY[0x22AA6F950](v12, -1, -1);
  }

  v13 = *(v0 + 64);
  v14 = *(v0 + 40);
  v15 = *(v0 + 48);
  v17 = *(v0 + 24);
  v16 = *(v0 + 32);
  v18 = *(v0 + 16);

  v19 = *(v15 + 8);
  *(v0 + 104) = v19;
  v19(v13, v14);
  v20 = *(v18 + 16);
  os_unfair_lock_lock((v20 + 24));
  v21 = *(v20 + 16);
  *(v0 + 112) = v21;
  v21;
  os_unfair_lock_unlock((v20 + 24));
  v22 = swift_allocObject();
  *(v0 + 120) = v22;
  *(v22 + 16) = v17;
  *(v22 + 24) = v16;

  v23 = swift_task_alloc();
  *(v0 + 128) = v23;
  *v23 = v0;
  v23[1] = sub_225C7C654;

  return sub_225C75808(sub_225C75808, &unk_225D013D8, v22);
}

uint64_t sub_225C7D81C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = sub_225CCD954();
  v6[5] = v7;
  v6[6] = *(v7 - 8);
  v6[7] = swift_task_alloc();
  v6[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_225C7D8EC, 0, 0);
}

uint64_t sub_225C7D8EC()
{
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 64);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  v4 = off_28105B918;
  *(v0 + 72) = off_28105B918;
  v5 = *v4;
  v6 = *(*v4 + *MEMORY[0x277D841D0] + 16);
  *(v0 + 80) = v6;
  v7 = *(v5 + 48);
  *(v0 + 144) = v7;
  v8 = (v7 + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock(&v4[v8]);
  v9 = *(v3 + 16);
  *(v0 + 88) = v9;
  *(v0 + 96) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v9(v1, &v4[v6], v2);
  os_unfair_lock_unlock(&v4[v8]);
  v10 = sub_225CCD934();
  v11 = sub_225CCECF4();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_2259A7000, v10, v11, "SendableXPCConnection executing cancellation handler", v12, 2u);
    MEMORY[0x22AA6F950](v12, -1, -1);
  }

  v13 = *(v0 + 64);
  v14 = *(v0 + 40);
  v15 = *(v0 + 48);
  v17 = *(v0 + 24);
  v16 = *(v0 + 32);
  v18 = *(v0 + 16);

  v19 = *(v15 + 8);
  *(v0 + 104) = v19;
  v19(v13, v14);
  v20 = *(v18 + 16);
  os_unfair_lock_lock((v20 + 24));
  v21 = *(v20 + 16);
  *(v0 + 112) = v21;
  v21;
  os_unfair_lock_unlock((v20 + 24));
  v22 = swift_allocObject();
  *(v0 + 120) = v22;
  *(v22 + 16) = v17;
  *(v22 + 24) = v16;

  v23 = swift_task_alloc();
  *(v0 + 128) = v23;
  *v23 = v0;
  v23[1] = sub_225C7C654;

  return sub_225C75808(sub_225C75808, &unk_225D01398, v22);
}

uint64_t sub_225C7DB6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = sub_225CCD954();
  v6[5] = v7;
  v6[6] = *(v7 - 8);
  v6[7] = swift_task_alloc();
  v6[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_225C7DC3C, 0, 0);
}

uint64_t sub_225C7DC3C()
{
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 64);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  v4 = off_28105B918;
  *(v0 + 72) = off_28105B918;
  v5 = *v4;
  v6 = *(*v4 + *MEMORY[0x277D841D0] + 16);
  *(v0 + 80) = v6;
  v7 = *(v5 + 48);
  *(v0 + 144) = v7;
  v8 = (v7 + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock(&v4[v8]);
  v9 = *(v3 + 16);
  *(v0 + 88) = v9;
  *(v0 + 96) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v9(v1, &v4[v6], v2);
  os_unfair_lock_unlock(&v4[v8]);
  v10 = sub_225CCD934();
  v11 = sub_225CCECF4();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_2259A7000, v10, v11, "SendableXPCConnection executing cancellation handler", v12, 2u);
    MEMORY[0x22AA6F950](v12, -1, -1);
  }

  v13 = *(v0 + 64);
  v14 = *(v0 + 40);
  v15 = *(v0 + 48);
  v17 = *(v0 + 24);
  v16 = *(v0 + 32);
  v18 = *(v0 + 16);

  v19 = *(v15 + 8);
  *(v0 + 104) = v19;
  v19(v13, v14);
  v20 = *(v18 + 16);
  os_unfair_lock_lock((v20 + 24));
  v21 = *(v20 + 16);
  *(v0 + 112) = v21;
  v21;
  os_unfair_lock_unlock((v20 + 24));
  v22 = swift_allocObject();
  *(v0 + 120) = v22;
  *(v22 + 16) = v17;
  *(v22 + 24) = v16;

  v23 = swift_task_alloc();
  *(v0 + 128) = v23;
  *v23 = v0;
  v23[1] = sub_225C7C654;

  return sub_225C75808(sub_225C75808, &unk_225D01358, v22);
}

uint64_t sub_225C7DEBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = sub_225CCD954();
  v6[5] = v7;
  v6[6] = *(v7 - 8);
  v6[7] = swift_task_alloc();
  v6[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_225C7DF8C, 0, 0);
}

uint64_t sub_225C7DF8C()
{
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 64);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  v4 = off_28105B918;
  *(v0 + 72) = off_28105B918;
  v5 = *v4;
  v6 = *(*v4 + *MEMORY[0x277D841D0] + 16);
  *(v0 + 80) = v6;
  v7 = *(v5 + 48);
  *(v0 + 144) = v7;
  v8 = (v7 + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock(&v4[v8]);
  v9 = *(v3 + 16);
  *(v0 + 88) = v9;
  *(v0 + 96) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v9(v1, &v4[v6], v2);
  os_unfair_lock_unlock(&v4[v8]);
  v10 = sub_225CCD934();
  v11 = sub_225CCECF4();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_2259A7000, v10, v11, "SendableXPCConnection executing cancellation handler", v12, 2u);
    MEMORY[0x22AA6F950](v12, -1, -1);
  }

  v13 = *(v0 + 64);
  v14 = *(v0 + 40);
  v15 = *(v0 + 48);
  v17 = *(v0 + 24);
  v16 = *(v0 + 32);
  v18 = *(v0 + 16);

  v19 = *(v15 + 8);
  *(v0 + 104) = v19;
  v19(v13, v14);
  v20 = *(v18 + 16);
  os_unfair_lock_lock((v20 + 24));
  v21 = *(v20 + 16);
  *(v0 + 112) = v21;
  v21;
  os_unfair_lock_unlock((v20 + 24));
  v22 = swift_allocObject();
  *(v0 + 120) = v22;
  *(v22 + 16) = v17;
  *(v22 + 24) = v16;

  v23 = swift_task_alloc();
  *(v0 + 128) = v23;
  *v23 = v0;
  v23[1] = sub_225C7C654;

  return sub_225C75808(sub_225C75808, &unk_225D01318, v22);
}

uint64_t sub_225C7E20C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = sub_225CCD954();
  v6[5] = v7;
  v6[6] = *(v7 - 8);
  v6[7] = swift_task_alloc();
  v6[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_225C7E2DC, 0, 0);
}

uint64_t sub_225C7E2DC()
{
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 64);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  v4 = off_28105B918;
  *(v0 + 72) = off_28105B918;
  v5 = *v4;
  v6 = *(*v4 + *MEMORY[0x277D841D0] + 16);
  *(v0 + 80) = v6;
  v7 = *(v5 + 48);
  *(v0 + 144) = v7;
  v8 = (v7 + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock(&v4[v8]);
  v9 = *(v3 + 16);
  *(v0 + 88) = v9;
  *(v0 + 96) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v9(v1, &v4[v6], v2);
  os_unfair_lock_unlock(&v4[v8]);
  v10 = sub_225CCD934();
  v11 = sub_225CCECF4();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_2259A7000, v10, v11, "SendableXPCConnection executing cancellation handler", v12, 2u);
    MEMORY[0x22AA6F950](v12, -1, -1);
  }

  v13 = *(v0 + 64);
  v14 = *(v0 + 40);
  v15 = *(v0 + 48);
  v17 = *(v0 + 24);
  v16 = *(v0 + 32);
  v18 = *(v0 + 16);

  v19 = *(v15 + 8);
  *(v0 + 104) = v19;
  v19(v13, v14);
  v20 = *(v18 + 16);
  os_unfair_lock_lock((v20 + 24));
  v21 = *(v20 + 16);
  *(v0 + 112) = v21;
  v21;
  os_unfair_lock_unlock((v20 + 24));
  v22 = swift_allocObject();
  *(v0 + 120) = v22;
  *(v22 + 16) = v17;
  *(v22 + 24) = v16;

  v23 = swift_task_alloc();
  *(v0 + 128) = v23;
  *v23 = v0;
  v23[1] = sub_225C7C654;

  return sub_225C75808(sub_225C75808, &unk_225D012D8, v22);
}

uint64_t sub_225C7E55C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = sub_225CCD954();
  v6[5] = v7;
  v6[6] = *(v7 - 8);
  v6[7] = swift_task_alloc();
  v6[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_225C7E62C, 0, 0);
}

uint64_t sub_225C7E62C()
{
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 64);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  v4 = off_28105B918;
  *(v0 + 72) = off_28105B918;
  v5 = *v4;
  v6 = *(*v4 + *MEMORY[0x277D841D0] + 16);
  *(v0 + 80) = v6;
  v7 = *(v5 + 48);
  *(v0 + 144) = v7;
  v8 = (v7 + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock(&v4[v8]);
  v9 = *(v3 + 16);
  *(v0 + 88) = v9;
  *(v0 + 96) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v9(v1, &v4[v6], v2);
  os_unfair_lock_unlock(&v4[v8]);
  v10 = sub_225CCD934();
  v11 = sub_225CCECF4();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_2259A7000, v10, v11, "SendableXPCConnection executing cancellation handler", v12, 2u);
    MEMORY[0x22AA6F950](v12, -1, -1);
  }

  v13 = *(v0 + 64);
  v14 = *(v0 + 40);
  v15 = *(v0 + 48);
  v17 = *(v0 + 24);
  v16 = *(v0 + 32);
  v18 = *(v0 + 16);

  v19 = *(v15 + 8);
  *(v0 + 104) = v19;
  v19(v13, v14);
  v20 = *(v18 + 16);
  os_unfair_lock_lock((v20 + 24));
  v21 = *(v20 + 16);
  *(v0 + 112) = v21;
  v21;
  os_unfair_lock_unlock((v20 + 24));
  v22 = swift_allocObject();
  *(v0 + 120) = v22;
  *(v22 + 16) = v17;
  *(v22 + 24) = v16;

  v23 = swift_task_alloc();
  *(v0 + 128) = v23;
  *v23 = v0;
  v23[1] = sub_225C7C654;

  return sub_225C75808(sub_225C75808, &unk_225D01298, v22);
}

uint64_t sub_225C7E8AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = sub_225CCD954();
  v6[5] = v7;
  v6[6] = *(v7 - 8);
  v6[7] = swift_task_alloc();
  v6[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_225C7E97C, 0, 0);
}

uint64_t sub_225C7E97C()
{
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 64);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  v4 = off_28105B918;
  *(v0 + 72) = off_28105B918;
  v5 = *v4;
  v6 = *(*v4 + *MEMORY[0x277D841D0] + 16);
  *(v0 + 80) = v6;
  v7 = *(v5 + 48);
  *(v0 + 144) = v7;
  v8 = (v7 + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock(&v4[v8]);
  v9 = *(v3 + 16);
  *(v0 + 88) = v9;
  *(v0 + 96) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v9(v1, &v4[v6], v2);
  os_unfair_lock_unlock(&v4[v8]);
  v10 = sub_225CCD934();
  v11 = sub_225CCECF4();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_2259A7000, v10, v11, "SendableXPCConnection executing cancellation handler", v12, 2u);
    MEMORY[0x22AA6F950](v12, -1, -1);
  }

  v13 = *(v0 + 64);
  v14 = *(v0 + 40);
  v15 = *(v0 + 48);
  v17 = *(v0 + 24);
  v16 = *(v0 + 32);
  v18 = *(v0 + 16);

  v19 = *(v15 + 8);
  *(v0 + 104) = v19;
  v19(v13, v14);
  v20 = *(v18 + 16);
  os_unfair_lock_lock((v20 + 24));
  v21 = *(v20 + 16);
  *(v0 + 112) = v21;
  v21;
  os_unfair_lock_unlock((v20 + 24));
  v22 = swift_allocObject();
  *(v0 + 120) = v22;
  *(v22 + 16) = v17;
  *(v22 + 24) = v16;

  v23 = swift_task_alloc();
  *(v0 + 128) = v23;
  *v23 = v0;
  v23[1] = sub_225C7C654;

  return sub_225C75808(sub_225C75808, &unk_225D01258, v22);
}

uint64_t sub_225C7EBFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = sub_225CCD954();
  v6[5] = v7;
  v6[6] = *(v7 - 8);
  v6[7] = swift_task_alloc();
  v6[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_225C7ECCC, 0, 0);
}

uint64_t sub_225C7ECCC()
{
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 64);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  v4 = off_28105B918;
  *(v0 + 72) = off_28105B918;
  v5 = *v4;
  v6 = *(*v4 + *MEMORY[0x277D841D0] + 16);
  *(v0 + 80) = v6;
  v7 = *(v5 + 48);
  *(v0 + 144) = v7;
  v8 = (v7 + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock(&v4[v8]);
  v9 = *(v3 + 16);
  *(v0 + 88) = v9;
  *(v0 + 96) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v9(v1, &v4[v6], v2);
  os_unfair_lock_unlock(&v4[v8]);
  v10 = sub_225CCD934();
  v11 = sub_225CCECF4();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_2259A7000, v10, v11, "SendableXPCConnection executing cancellation handler", v12, 2u);
    MEMORY[0x22AA6F950](v12, -1, -1);
  }

  v13 = *(v0 + 64);
  v14 = *(v0 + 40);
  v15 = *(v0 + 48);
  v17 = *(v0 + 24);
  v16 = *(v0 + 32);
  v18 = *(v0 + 16);

  v19 = *(v15 + 8);
  *(v0 + 104) = v19;
  v19(v13, v14);
  v20 = *(v18 + 16);
  os_unfair_lock_lock((v20 + 24));
  v21 = *(v20 + 16);
  *(v0 + 112) = v21;
  v21;
  os_unfair_lock_unlock((v20 + 24));
  v22 = swift_allocObject();
  *(v0 + 120) = v22;
  *(v22 + 16) = v17;
  *(v22 + 24) = v16;

  v23 = swift_task_alloc();
  *(v0 + 128) = v23;
  *v23 = v0;
  v23[1] = sub_225C7C654;

  return sub_225C75808(sub_225C75808, &unk_225D01218, v22);
}

uint64_t sub_225C7EF4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = sub_225CCD954();
  v6[5] = v7;
  v6[6] = *(v7 - 8);
  v6[7] = swift_task_alloc();
  v6[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_225C7F01C, 0, 0);
}

uint64_t sub_225C7F01C()
{
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 64);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  v4 = off_28105B918;
  *(v0 + 72) = off_28105B918;
  v5 = *v4;
  v6 = *(*v4 + *MEMORY[0x277D841D0] + 16);
  *(v0 + 80) = v6;
  v7 = *(v5 + 48);
  *(v0 + 144) = v7;
  v8 = (v7 + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock(&v4[v8]);
  v9 = *(v3 + 16);
  *(v0 + 88) = v9;
  *(v0 + 96) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v9(v1, &v4[v6], v2);
  os_unfair_lock_unlock(&v4[v8]);
  v10 = sub_225CCD934();
  v11 = sub_225CCECF4();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_2259A7000, v10, v11, "SendableXPCConnection executing cancellation handler", v12, 2u);
    MEMORY[0x22AA6F950](v12, -1, -1);
  }

  v13 = *(v0 + 64);
  v14 = *(v0 + 40);
  v15 = *(v0 + 48);
  v17 = *(v0 + 24);
  v16 = *(v0 + 32);
  v18 = *(v0 + 16);

  v19 = *(v15 + 8);
  *(v0 + 104) = v19;
  v19(v13, v14);
  v20 = *(v18 + 16);
  os_unfair_lock_lock((v20 + 24));
  v21 = *(v20 + 16);
  *(v0 + 112) = v21;
  v21;
  os_unfair_lock_unlock((v20 + 24));
  v22 = swift_allocObject();
  *(v0 + 120) = v22;
  *(v22 + 16) = v17;
  *(v22 + 24) = v16;

  v23 = swift_task_alloc();
  *(v0 + 128) = v23;
  *v23 = v0;
  v23[1] = sub_225C7C654;

  return sub_225C75808(sub_225C75808, &unk_225D011E0, v22);
}

uint64_t sub_225C7F29C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = sub_225CCD954();
  v6[5] = v7;
  v6[6] = *(v7 - 8);
  v6[7] = swift_task_alloc();
  v6[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_225C7F36C, 0, 0);
}

uint64_t sub_225C7F36C()
{
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 64);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  v4 = off_28105B918;
  *(v0 + 72) = off_28105B918;
  v5 = *v4;
  v6 = *(*v4 + *MEMORY[0x277D841D0] + 16);
  *(v0 + 80) = v6;
  v7 = *(v5 + 48);
  *(v0 + 144) = v7;
  v8 = (v7 + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock(&v4[v8]);
  v9 = *(v3 + 16);
  *(v0 + 88) = v9;
  *(v0 + 96) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v9(v1, &v4[v6], v2);
  os_unfair_lock_unlock(&v4[v8]);
  v10 = sub_225CCD934();
  v11 = sub_225CCECF4();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_2259A7000, v10, v11, "SendableXPCConnection executing cancellation handler", v12, 2u);
    MEMORY[0x22AA6F950](v12, -1, -1);
  }

  v13 = *(v0 + 64);
  v14 = *(v0 + 40);
  v15 = *(v0 + 48);
  v17 = *(v0 + 24);
  v16 = *(v0 + 32);
  v18 = *(v0 + 16);

  v19 = *(v15 + 8);
  *(v0 + 104) = v19;
  v19(v13, v14);
  v20 = *(v18 + 16);
  os_unfair_lock_lock((v20 + 24));
  v21 = *(v20 + 16);
  *(v0 + 112) = v21;
  v21;
  os_unfair_lock_unlock((v20 + 24));
  v22 = swift_allocObject();
  *(v0 + 120) = v22;
  *(v22 + 16) = v17;
  *(v22 + 24) = v16;

  v23 = swift_task_alloc();
  *(v0 + 128) = v23;
  *v23 = v0;
  v23[1] = sub_225C7C654;

  return sub_225C75808(sub_225C75808, &unk_225D011A0, v22);
}

uint64_t sub_225C7F5EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = sub_225CCD954();
  v6[5] = v7;
  v6[6] = *(v7 - 8);
  v6[7] = swift_task_alloc();
  v6[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_225C7F6BC, 0, 0);
}

uint64_t sub_225C7F6BC()
{
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 64);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  v4 = off_28105B918;
  *(v0 + 72) = off_28105B918;
  v5 = *v4;
  v6 = *(*v4 + *MEMORY[0x277D841D0] + 16);
  *(v0 + 80) = v6;
  v7 = *(v5 + 48);
  *(v0 + 144) = v7;
  v8 = (v7 + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock(&v4[v8]);
  v9 = *(v3 + 16);
  *(v0 + 88) = v9;
  *(v0 + 96) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v9(v1, &v4[v6], v2);
  os_unfair_lock_unlock(&v4[v8]);
  v10 = sub_225CCD934();
  v11 = sub_225CCECF4();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_2259A7000, v10, v11, "SendableXPCConnection executing cancellation handler", v12, 2u);
    MEMORY[0x22AA6F950](v12, -1, -1);
  }

  v13 = *(v0 + 64);
  v14 = *(v0 + 40);
  v15 = *(v0 + 48);
  v17 = *(v0 + 24);
  v16 = *(v0 + 32);
  v18 = *(v0 + 16);

  v19 = *(v15 + 8);
  *(v0 + 104) = v19;
  v19(v13, v14);
  v20 = *(v18 + 16);
  os_unfair_lock_lock((v20 + 24));
  v21 = *(v20 + 16);
  *(v0 + 112) = v21;
  v21;
  os_unfair_lock_unlock((v20 + 24));
  v22 = swift_allocObject();
  *(v0 + 120) = v22;
  *(v22 + 16) = v17;
  *(v22 + 24) = v16;

  v23 = swift_task_alloc();
  *(v0 + 128) = v23;
  *v23 = v0;
  v23[1] = sub_225C7C654;

  return sub_225C75808(sub_225C75808, &unk_225D01158, v22);
}

uint64_t sub_225C7F93C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = sub_225CCD954();
  v6[5] = v7;
  v6[6] = *(v7 - 8);
  v6[7] = swift_task_alloc();
  v6[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_225C7FA0C, 0, 0);
}

uint64_t sub_225C7FA0C()
{
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 64);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  v4 = off_28105B918;
  *(v0 + 72) = off_28105B918;
  v5 = *v4;
  v6 = *(*v4 + *MEMORY[0x277D841D0] + 16);
  *(v0 + 80) = v6;
  v7 = *(v5 + 48);
  *(v0 + 144) = v7;
  v8 = (v7 + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock(&v4[v8]);
  v9 = *(v3 + 16);
  *(v0 + 88) = v9;
  *(v0 + 96) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v9(v1, &v4[v6], v2);
  os_unfair_lock_unlock(&v4[v8]);
  v10 = sub_225CCD934();
  v11 = sub_225CCECF4();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_2259A7000, v10, v11, "SendableXPCConnection executing cancellation handler", v12, 2u);
    MEMORY[0x22AA6F950](v12, -1, -1);
  }

  v13 = *(v0 + 64);
  v14 = *(v0 + 40);
  v15 = *(v0 + 48);
  v17 = *(v0 + 24);
  v16 = *(v0 + 32);
  v18 = *(v0 + 16);

  v19 = *(v15 + 8);
  *(v0 + 104) = v19;
  v19(v13, v14);
  v20 = *(v18 + 16);
  os_unfair_lock_lock((v20 + 24));
  v21 = *(v20 + 16);
  *(v0 + 112) = v21;
  v21;
  os_unfair_lock_unlock((v20 + 24));
  v22 = swift_allocObject();
  *(v0 + 120) = v22;
  *(v22 + 16) = v17;
  *(v22 + 24) = v16;

  v23 = swift_task_alloc();
  *(v0 + 128) = v23;
  *v23 = v0;
  v23[1] = sub_225C7C654;

  return sub_225C75808(sub_225C75808, &unk_225D01118, v22);
}

uint64_t sub_225C7FC8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = sub_225CCD954();
  v6[5] = v7;
  v6[6] = *(v7 - 8);
  v6[7] = swift_task_alloc();
  v6[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_225C7FD5C, 0, 0);
}

uint64_t sub_225C7FD5C()
{
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 64);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  v4 = off_28105B918;
  *(v0 + 72) = off_28105B918;
  v5 = *v4;
  v6 = *(*v4 + *MEMORY[0x277D841D0] + 16);
  *(v0 + 80) = v6;
  v7 = *(v5 + 48);
  *(v0 + 144) = v7;
  v8 = (v7 + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock(&v4[v8]);
  v9 = *(v3 + 16);
  *(v0 + 88) = v9;
  *(v0 + 96) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v9(v1, &v4[v6], v2);
  os_unfair_lock_unlock(&v4[v8]);
  v10 = sub_225CCD934();
  v11 = sub_225CCECF4();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_2259A7000, v10, v11, "SendableXPCConnection executing cancellation handler", v12, 2u);
    MEMORY[0x22AA6F950](v12, -1, -1);
  }

  v13 = *(v0 + 64);
  v14 = *(v0 + 40);
  v15 = *(v0 + 48);
  v17 = *(v0 + 24);
  v16 = *(v0 + 32);
  v18 = *(v0 + 16);

  v19 = *(v15 + 8);
  *(v0 + 104) = v19;
  v19(v13, v14);
  v20 = *(v18 + 16);
  os_unfair_lock_lock((v20 + 24));
  v21 = *(v20 + 16);
  *(v0 + 112) = v21;
  v21;
  os_unfair_lock_unlock((v20 + 24));
  v22 = swift_allocObject();
  *(v0 + 120) = v22;
  *(v22 + 16) = v17;
  *(v22 + 24) = v16;

  v23 = swift_task_alloc();
  *(v0 + 128) = v23;
  *v23 = v0;
  v23[1] = sub_225C7C654;

  return sub_225C75808(sub_225C75808, &unk_225D010D8, v22);
}

uint64_t sub_225C7FFDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = sub_225CCD954();
  v6[5] = v7;
  v6[6] = *(v7 - 8);
  v6[7] = swift_task_alloc();
  v6[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_225C800AC, 0, 0);
}

uint64_t sub_225C800AC()
{
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 64);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  v4 = off_28105B918;
  *(v0 + 72) = off_28105B918;
  v5 = *v4;
  v6 = *(*v4 + *MEMORY[0x277D841D0] + 16);
  *(v0 + 80) = v6;
  v7 = *(v5 + 48);
  *(v0 + 144) = v7;
  v8 = (v7 + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock(&v4[v8]);
  v9 = *(v3 + 16);
  *(v0 + 88) = v9;
  *(v0 + 96) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v9(v1, &v4[v6], v2);
  os_unfair_lock_unlock(&v4[v8]);
  v10 = sub_225CCD934();
  v11 = sub_225CCECF4();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_2259A7000, v10, v11, "SendableXPCConnection executing cancellation handler", v12, 2u);
    MEMORY[0x22AA6F950](v12, -1, -1);
  }

  v13 = *(v0 + 64);
  v14 = *(v0 + 40);
  v15 = *(v0 + 48);
  v17 = *(v0 + 24);
  v16 = *(v0 + 32);
  v18 = *(v0 + 16);

  v19 = *(v15 + 8);
  *(v0 + 104) = v19;
  v19(v13, v14);
  v20 = *(v18 + 16);
  os_unfair_lock_lock((v20 + 24));
  v21 = *(v20 + 16);
  *(v0 + 112) = v21;
  v21;
  os_unfair_lock_unlock((v20 + 24));
  v22 = swift_allocObject();
  *(v0 + 120) = v22;
  *(v22 + 16) = v17;
  *(v22 + 24) = v16;

  v23 = swift_task_alloc();
  *(v0 + 128) = v23;
  *v23 = v0;
  v23[1] = sub_225C7C654;

  return sub_225C75808(sub_225C75808, &unk_225D01098, v22);
}

uint64_t sub_225C8032C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = sub_225CCD954();
  v6[5] = v7;
  v6[6] = *(v7 - 8);
  v6[7] = swift_task_alloc();
  v6[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_225C803FC, 0, 0);
}

uint64_t sub_225C803FC()
{
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 64);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  v4 = off_28105B918;
  *(v0 + 72) = off_28105B918;
  v5 = *v4;
  v6 = *(*v4 + *MEMORY[0x277D841D0] + 16);
  *(v0 + 80) = v6;
  v7 = *(v5 + 48);
  *(v0 + 144) = v7;
  v8 = (v7 + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock(&v4[v8]);
  v9 = *(v3 + 16);
  *(v0 + 88) = v9;
  *(v0 + 96) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v9(v1, &v4[v6], v2);
  os_unfair_lock_unlock(&v4[v8]);
  v10 = sub_225CCD934();
  v11 = sub_225CCECF4();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_2259A7000, v10, v11, "SendableXPCConnection executing cancellation handler", v12, 2u);
    MEMORY[0x22AA6F950](v12, -1, -1);
  }

  v13 = *(v0 + 64);
  v14 = *(v0 + 40);
  v15 = *(v0 + 48);
  v17 = *(v0 + 24);
  v16 = *(v0 + 32);
  v18 = *(v0 + 16);

  v19 = *(v15 + 8);
  *(v0 + 104) = v19;
  v19(v13, v14);
  v20 = *(v18 + 16);
  os_unfair_lock_lock((v20 + 24));
  v21 = *(v20 + 16);
  *(v0 + 112) = v21;
  v21;
  os_unfair_lock_unlock((v20 + 24));
  v22 = swift_allocObject();
  *(v0 + 120) = v22;
  *(v22 + 16) = v17;
  *(v22 + 24) = v16;

  v23 = swift_task_alloc();
  *(v0 + 128) = v23;
  *v23 = v0;
  v23[1] = sub_225C7C654;

  return sub_225C75808(sub_225C75808, &unk_225D01058, v22);
}

uint64_t sub_225C8067C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = sub_225CCD954();
  v6[5] = v7;
  v6[6] = *(v7 - 8);
  v6[7] = swift_task_alloc();
  v6[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_225C8074C, 0, 0);
}

uint64_t sub_225C8074C()
{
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 64);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  v4 = off_28105B918;
  *(v0 + 72) = off_28105B918;
  v5 = *v4;
  v6 = *(*v4 + *MEMORY[0x277D841D0] + 16);
  *(v0 + 80) = v6;
  v7 = *(v5 + 48);
  *(v0 + 144) = v7;
  v8 = (v7 + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock(&v4[v8]);
  v9 = *(v3 + 16);
  *(v0 + 88) = v9;
  *(v0 + 96) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v9(v1, &v4[v6], v2);
  os_unfair_lock_unlock(&v4[v8]);
  v10 = sub_225CCD934();
  v11 = sub_225CCECF4();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_2259A7000, v10, v11, "SendableXPCConnection executing cancellation handler", v12, 2u);
    MEMORY[0x22AA6F950](v12, -1, -1);
  }

  v13 = *(v0 + 64);
  v14 = *(v0 + 40);
  v15 = *(v0 + 48);
  v17 = *(v0 + 24);
  v16 = *(v0 + 32);
  v18 = *(v0 + 16);

  v19 = *(v15 + 8);
  *(v0 + 104) = v19;
  v19(v13, v14);
  v20 = *(v18 + 16);
  os_unfair_lock_lock((v20 + 24));
  v21 = *(v20 + 16);
  *(v0 + 112) = v21;
  v21;
  os_unfair_lock_unlock((v20 + 24));
  v22 = swift_allocObject();
  *(v0 + 120) = v22;
  *(v22 + 16) = v17;
  *(v22 + 24) = v16;

  v23 = swift_task_alloc();
  *(v0 + 128) = v23;
  *v23 = v0;
  v23[1] = sub_225C7C654;

  return sub_225C75808(sub_225C75808, &unk_225D01010, v22);
}

uint64_t sub_225C809CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = sub_225CCD954();
  v6[5] = v7;
  v6[6] = *(v7 - 8);
  v6[7] = swift_task_alloc();
  v6[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_225C80A9C, 0, 0);
}

uint64_t sub_225C80A9C()
{
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 64);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  v4 = off_28105B918;
  *(v0 + 72) = off_28105B918;
  v5 = *v4;
  v6 = *(*v4 + *MEMORY[0x277D841D0] + 16);
  *(v0 + 80) = v6;
  v7 = *(v5 + 48);
  *(v0 + 144) = v7;
  v8 = (v7 + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock(&v4[v8]);
  v9 = *(v3 + 16);
  *(v0 + 88) = v9;
  *(v0 + 96) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v9(v1, &v4[v6], v2);
  os_unfair_lock_unlock(&v4[v8]);
  v10 = sub_225CCD934();
  v11 = sub_225CCECF4();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_2259A7000, v10, v11, "SendableXPCConnection executing cancellation handler", v12, 2u);
    MEMORY[0x22AA6F950](v12, -1, -1);
  }

  v13 = *(v0 + 64);
  v14 = *(v0 + 40);
  v15 = *(v0 + 48);
  v17 = *(v0 + 24);
  v16 = *(v0 + 32);
  v18 = *(v0 + 16);

  v19 = *(v15 + 8);
  *(v0 + 104) = v19;
  v19(v13, v14);
  v20 = *(v18 + 16);
  os_unfair_lock_lock((v20 + 24));
  v21 = *(v20 + 16);
  *(v0 + 112) = v21;
  v21;
  os_unfair_lock_unlock((v20 + 24));
  v22 = swift_allocObject();
  *(v0 + 120) = v22;
  *(v22 + 16) = v17;
  *(v22 + 24) = v16;

  v23 = swift_task_alloc();
  *(v0 + 128) = v23;
  *v23 = v0;
  v23[1] = sub_225C7C654;

  return sub_225C75808(sub_225C75808, &unk_225D00FA8, v22);
}

uint64_t sub_225C80D1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = sub_225CCD954();
  v6[5] = v7;
  v6[6] = *(v7 - 8);
  v6[7] = swift_task_alloc();
  v6[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_225C80DEC, 0, 0);
}

uint64_t sub_225C80DEC()
{
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 64);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  v4 = off_28105B918;
  *(v0 + 72) = off_28105B918;
  v5 = *v4;
  v6 = *(*v4 + *MEMORY[0x277D841D0] + 16);
  *(v0 + 80) = v6;
  v7 = *(v5 + 48);
  *(v0 + 144) = v7;
  v8 = (v7 + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock(&v4[v8]);
  v9 = *(v3 + 16);
  *(v0 + 88) = v9;
  *(v0 + 96) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v9(v1, &v4[v6], v2);
  os_unfair_lock_unlock(&v4[v8]);
  v10 = sub_225CCD934();
  v11 = sub_225CCECF4();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_2259A7000, v10, v11, "SendableXPCConnection executing cancellation handler", v12, 2u);
    MEMORY[0x22AA6F950](v12, -1, -1);
  }

  v13 = *(v0 + 64);
  v14 = *(v0 + 40);
  v15 = *(v0 + 48);
  v17 = *(v0 + 24);
  v16 = *(v0 + 32);
  v18 = *(v0 + 16);

  v19 = *(v15 + 8);
  *(v0 + 104) = v19;
  v19(v13, v14);
  v20 = *(v18 + 16);
  os_unfair_lock_lock((v20 + 24));
  v21 = *(v20 + 16);
  *(v0 + 112) = v21;
  v21;
  os_unfair_lock_unlock((v20 + 24));
  v22 = swift_allocObject();
  *(v0 + 120) = v22;
  *(v22 + 16) = v17;
  *(v22 + 24) = v16;

  v23 = swift_task_alloc();
  *(v0 + 128) = v23;
  *v23 = v0;
  v23[1] = sub_225C7C654;

  return sub_225C77830(sub_225C77830, &unk_225D00F60, v22);
}

uint64_t sub_225C8106C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = sub_225CCD954();
  v6[5] = v7;
  v6[6] = *(v7 - 8);
  v6[7] = swift_task_alloc();
  v6[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_225C8113C, 0, 0);
}

uint64_t sub_225C8113C()
{
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 64);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  v4 = off_28105B918;
  *(v0 + 72) = off_28105B918;
  v5 = *v4;
  v6 = *(*v4 + *MEMORY[0x277D841D0] + 16);
  *(v0 + 80) = v6;
  v7 = *(v5 + 48);
  *(v0 + 144) = v7;
  v8 = (v7 + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock(&v4[v8]);
  v9 = *(v3 + 16);
  *(v0 + 88) = v9;
  *(v0 + 96) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v9(v1, &v4[v6], v2);
  os_unfair_lock_unlock(&v4[v8]);
  v10 = sub_225CCD934();
  v11 = sub_225CCECF4();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_2259A7000, v10, v11, "SendableXPCConnection executing cancellation handler", v12, 2u);
    MEMORY[0x22AA6F950](v12, -1, -1);
  }

  v13 = *(v0 + 64);
  v14 = *(v0 + 40);
  v15 = *(v0 + 48);
  v17 = *(v0 + 24);
  v16 = *(v0 + 32);
  v18 = *(v0 + 16);

  v19 = *(v15 + 8);
  *(v0 + 104) = v19;
  v19(v13, v14);
  v20 = *(v18 + 16);
  os_unfair_lock_lock((v20 + 24));
  v21 = *(v20 + 16);
  *(v0 + 112) = v21;
  v21;
  os_unfair_lock_unlock((v20 + 24));
  v22 = swift_allocObject();
  *(v0 + 120) = v22;
  *(v22 + 16) = v17;
  *(v22 + 24) = v16;

  v23 = swift_task_alloc();
  *(v0 + 128) = v23;
  *v23 = v0;
  v23[1] = sub_225C7C654;

  return sub_225C77830(sub_225C77830, &unk_225D00F38, v22);
}

uint64_t sub_225C813BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = sub_225CCD954();
  v6[5] = v7;
  v6[6] = *(v7 - 8);
  v6[7] = swift_task_alloc();
  v6[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_225C8148C, 0, 0);
}

uint64_t sub_225C8148C()
{
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 64);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  v4 = off_28105B918;
  *(v0 + 72) = off_28105B918;
  v5 = *v4;
  v6 = *(*v4 + *MEMORY[0x277D841D0] + 16);
  *(v0 + 80) = v6;
  v7 = *(v5 + 48);
  *(v0 + 144) = v7;
  v8 = (v7 + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock(&v4[v8]);
  v9 = *(v3 + 16);
  *(v0 + 88) = v9;
  *(v0 + 96) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v9(v1, &v4[v6], v2);
  os_unfair_lock_unlock(&v4[v8]);
  v10 = sub_225CCD934();
  v11 = sub_225CCECF4();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_2259A7000, v10, v11, "SendableXPCConnection executing cancellation handler", v12, 2u);
    MEMORY[0x22AA6F950](v12, -1, -1);
  }

  v13 = *(v0 + 64);
  v14 = *(v0 + 40);
  v15 = *(v0 + 48);
  v17 = *(v0 + 24);
  v16 = *(v0 + 32);
  v18 = *(v0 + 16);

  v19 = *(v15 + 8);
  *(v0 + 104) = v19;
  v19(v13, v14);
  v20 = *(v18 + 16);
  os_unfair_lock_lock((v20 + 24));
  v21 = *(v20 + 16);
  *(v0 + 112) = v21;
  v21;
  os_unfair_lock_unlock((v20 + 24));
  v22 = swift_allocObject();
  *(v0 + 120) = v22;
  *(v22 + 16) = v17;
  *(v22 + 24) = v16;

  v23 = swift_task_alloc();
  *(v0 + 128) = v23;
  *v23 = v0;
  v23[1] = sub_225C7C654;

  return sub_225C77830(sub_225C77830, &unk_225D00ED0, v22);
}

uint64_t sub_225C8170C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t a7, uint64_t a8)
{
  v26 = a8;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v25 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73FE00, &qword_225CD75C0);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v25 - v18;
  v20 = sub_225CCE994();
  (*(*(v20 - 8) + 56))(v19, 1, 1, v20);
  (*(v13 + 16))(v16, a1, v12);
  v21 = (*(v13 + 80) + 40) & ~*(v13 + 80);
  v22 = swift_allocObject();
  *(v22 + 2) = 0;
  *(v22 + 3) = 0;
  *(v22 + 4) = a2;
  (*(v13 + 32))(&v22[v21], v16, v12);
  v23 = &v22[(v14 + v21 + 7) & 0xFFFFFFFFFFFFFFF8];
  *v23 = a3;
  *(v23 + 1) = a4;

  sub_225AFBC30(0, 0, v19, v26, v22);
}

uint64_t sub_225C81914(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[22] = a6;
  v7[23] = a7;
  v7[20] = a4;
  v7[21] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  v7[24] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73FD10, &unk_225CD7600);
  v7[25] = v8;
  v9 = *(v8 - 8);
  v7[26] = v9;
  v7[27] = *(v9 + 64);
  v7[28] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_225C81A24, 0, 0);
}

uint64_t sub_225C81A24()
{
  v35 = v0;
  v1 = v0[28];
  v2 = v0[25];
  v3 = v0[26];
  v5 = v0[20];
  v4 = v0[21];
  os_unfair_lock_lock((v5 + 24));
  v6 = *(v5 + 16);
  (*(v3 + 16))(v1, v4, v2);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, v1, v2);
  v0[6] = sub_225C92474;
  v0[7] = v8;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_225CBFB0C;
  v0[5] = &block_descriptor_586;
  v9 = _Block_copy(v0 + 2);

  v10 = [v6 remoteObjectProxyWithErrorHandler_];
  _Block_release(v9);
  sub_225CCF0A4();
  swift_unknownObjectRelease();
  os_unfair_lock_unlock((v5 + 24));
  sub_2259CB810((v0 + 8), (v0 + 12));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D742810, &qword_225D014D8);
  if (swift_dynamicCast() && (v11 = v0[17], (v0[29] = v11) != 0))
  {
    v12 = v0[22];
    v0[16] = v11;
    v33 = (v12 + *v12);
    v13 = swift_task_alloc();
    v0[30] = v13;
    *v13 = v0;
    v13[1] = sub_225C81F90;

    return v33();
  }

  else
  {
    v15 = v0[24];
    v34[0] = 0;
    v34[1] = 0xE000000000000000;
    sub_225CCF204();
    MEMORY[0x22AA6CE70](0xD000000000000014, 0x8000000225D2A650);
    __swift_project_boxed_opaque_existential_1(v0 + 8, v0[11]);
    sub_225CCF904();
    MEMORY[0x22AA6CE70](0xD000000000000013, 0x8000000225D2A670);
    MEMORY[0x22AA6CE70](0xD000000000000022, 0x8000000225D2A740);
    v16 = MEMORY[0x277D84F90];
    v17 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v18 = swift_allocError();
    v20 = v19;
    v21 = sub_225CCE954();
    v22 = *(v21 - 8);
    (*(v22 + 56))(v15, 1, 1, v21);
    v23 = (*(v22 + 48))(v15, 1, v21);
    sub_2259CB640(v15, &unk_27D73B050, &unk_225CD3AD0);

    v24 = sub_225B2C374(v16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v34[0] = v24;
    sub_225B2C4A0(v17, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, v34);

    v26 = v34[0];
    v27 = sub_225B29AA0(0, 1, 1, v16);
    v29 = *(v27 + 2);
    v28 = *(v27 + 3);
    if (v29 >= v28 >> 1)
    {
      v27 = sub_225B29AA0((v28 > 1), v29 + 1, 1, v27);
    }

    if (v23)
    {
      v30 = 107;
    }

    else
    {
      v30 = 23;
    }

    *(v27 + 2) = v29 + 1;
    v31 = &v27[56 * v29];
    *(v31 + 4) = 0;
    *(v31 + 5) = 0xE000000000000000;
    *(v31 + 6) = 0xD000000000000029;
    *(v31 + 7) = 0x8000000225D2A6B0;
    *(v31 + 8) = 0xD000000000000023;
    *(v31 + 9) = 0x8000000225D2A620;
    *(v31 + 10) = 220;
    *v20 = v30;
    *(v20 + 8) = v27;
    *(v20 + 16) = 0;
    *(v20 + 24) = 0xE000000000000000;
    *(v20 + 32) = v26;
    *(v20 + 40) = 0;
    v0[18] = v18;
    sub_225CCE924();
    __swift_destroy_boxed_opaque_existential_0(v0 + 8);

    v32 = v0[1];

    return v32();
  }
}

uint64_t sub_225C81F90()
{
  *(*v1 + 248) = v0;

  if (v0)
  {
    v2 = sub_225C82130;
  }

  else
  {
    v2 = sub_225C820A4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_225C820A4(uint64_t a1)
{
  sub_225CCE934();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0((v1 + 64));

  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_225C82130()
{
  v1 = v0[31];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v0 + 8);
  v0[19] = v1;
  sub_225CCE924();

  v2 = v0[1];

  return v2();
}

uint64_t sub_225C821D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[24] = a6;
  v7[25] = a7;
  v7[22] = a4;
  v7[23] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  v7[26] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D742808, &qword_225D01488);
  v7[27] = v8;
  v9 = *(v8 - 8);
  v7[28] = v9;
  v7[29] = *(v9 + 64);
  v7[30] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_225C822E0, 0, 0);
}

uint64_t sub_225C822E0()
{
  v35 = v0;
  v1 = v0[30];
  v2 = v0[27];
  v3 = v0[28];
  v5 = v0[22];
  v4 = v0[23];
  os_unfair_lock_lock((v5 + 24));
  v6 = *(v5 + 16);
  (*(v3 + 16))(v1, v4, v2);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, v1, v2);
  v0[6] = sub_225C92780;
  v0[7] = v8;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_225CBFB0C;
  v0[5] = &block_descriptor_603;
  v9 = _Block_copy(v0 + 2);

  v10 = [v6 remoteObjectProxyWithErrorHandler_];
  _Block_release(v9);
  sub_225CCF0A4();
  swift_unknownObjectRelease();
  os_unfair_lock_unlock((v5 + 24));
  sub_2259CB810((v0 + 8), (v0 + 12));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D742810, &qword_225D014D8);
  if (swift_dynamicCast() && (v11 = v0[19], (v0[31] = v11) != 0))
  {
    v12 = v0[24];
    v0[18] = v11;
    v33 = (v12 + *v12);
    v13 = swift_task_alloc();
    v0[32] = v13;
    *v13 = v0;
    v13[1] = sub_225C82854;

    return (v33)(v0 + 16, v0 + 18);
  }

  else
  {
    v15 = v0[26];
    v34[0] = 0;
    v34[1] = 0xE000000000000000;
    sub_225CCF204();
    MEMORY[0x22AA6CE70](0xD000000000000014, 0x8000000225D2A650);
    __swift_project_boxed_opaque_existential_1(v0 + 8, v0[11]);
    sub_225CCF904();
    MEMORY[0x22AA6CE70](0xD000000000000013, 0x8000000225D2A670);
    MEMORY[0x22AA6CE70](0xD000000000000022, 0x8000000225D2A740);
    v16 = MEMORY[0x277D84F90];
    v17 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v18 = swift_allocError();
    v20 = v19;
    v21 = sub_225CCE954();
    v22 = *(v21 - 8);
    (*(v22 + 56))(v15, 1, 1, v21);
    v23 = (*(v22 + 48))(v15, 1, v21);
    sub_2259CB640(v15, &unk_27D73B050, &unk_225CD3AD0);

    v24 = sub_225B2C374(v16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v34[0] = v24;
    sub_225B2C4A0(v17, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, v34);

    v26 = v34[0];
    v27 = sub_225B29AA0(0, 1, 1, v16);
    v29 = *(v27 + 2);
    v28 = *(v27 + 3);
    if (v29 >= v28 >> 1)
    {
      v27 = sub_225B29AA0((v28 > 1), v29 + 1, 1, v27);
    }

    if (v23)
    {
      v30 = 107;
    }

    else
    {
      v30 = 23;
    }

    *(v27 + 2) = v29 + 1;
    v31 = &v27[56 * v29];
    *(v31 + 4) = 0;
    *(v31 + 5) = 0xE000000000000000;
    *(v31 + 6) = 0xD000000000000029;
    *(v31 + 7) = 0x8000000225D2A6B0;
    *(v31 + 8) = 0xD000000000000023;
    *(v31 + 9) = 0x8000000225D2A620;
    *(v31 + 10) = 220;
    *v20 = v30;
    *(v20 + 8) = v27;
    *(v20 + 16) = 0;
    *(v20 + 24) = 0xE000000000000000;
    *(v20 + 32) = v26;
    *(v20 + 40) = 0;
    v0[20] = v18;
    sub_225CCE924();
    __swift_destroy_boxed_opaque_existential_0(v0 + 8);

    v32 = v0[1];

    return v32();
  }
}

uint64_t sub_225C82854()
{
  *(*v1 + 264) = v0;

  if (v0)
  {
    v2 = sub_225C829F8;
  }

  else
  {
    v2 = sub_225C82968;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_225C82968()
{
  sub_225CCE934();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0((v0 + 64));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_225C829F8()
{
  v1 = v0[33];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v0 + 8);
  v0[21] = v1;
  sub_225CCE924();

  v2 = v0[1];

  return v2();
}

uint64_t sub_225C82A98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[22] = a6;
  v7[23] = a7;
  v7[20] = a4;
  v7[21] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  v7[24] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73FD10, &unk_225CD7600);
  v7[25] = v8;
  v9 = *(v8 - 8);
  v7[26] = v9;
  v7[27] = *(v9 + 64);
  v7[28] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_225C82BA8, 0, 0);
}

uint64_t sub_225C82BA8()
{
  v35 = v0;
  v1 = v0[28];
  v2 = v0[25];
  v3 = v0[26];
  v5 = v0[20];
  v4 = v0[21];
  os_unfair_lock_lock((v5 + 24));
  v6 = *(v5 + 16);
  (*(v3 + 16))(v1, v4, v2);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, v1, v2);
  v0[6] = sub_225C92B78;
  v0[7] = v8;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_225CBFB0C;
  v0[5] = &block_descriptor_547;
  v9 = _Block_copy(v0 + 2);

  v10 = [v6 remoteObjectProxyWithErrorHandler_];
  _Block_release(v9);
  sub_225CCF0A4();
  swift_unknownObjectRelease();
  os_unfair_lock_unlock((v5 + 24));
  sub_2259CB810((v0 + 8), (v0 + 12));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D742800, &qword_225D01470);
  if (swift_dynamicCast() && (v11 = v0[17], (v0[29] = v11) != 0))
  {
    v12 = v0[22];
    v0[16] = v11;
    v33 = (v12 + *v12);
    v13 = swift_task_alloc();
    v0[30] = v13;
    *v13 = v0;
    v13[1] = sub_225C83114;

    return v33();
  }

  else
  {
    v15 = v0[24];
    v34[0] = 0;
    v34[1] = 0xE000000000000000;
    sub_225CCF204();
    MEMORY[0x22AA6CE70](0xD000000000000014, 0x8000000225D2A650);
    __swift_project_boxed_opaque_existential_1(v0 + 8, v0[11]);
    sub_225CCF904();
    MEMORY[0x22AA6CE70](0xD000000000000013, 0x8000000225D2A670);
    MEMORY[0x22AA6CE70](0xD000000000000017, 0x8000000225D2A720);
    v16 = MEMORY[0x277D84F90];
    v17 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v18 = swift_allocError();
    v20 = v19;
    v21 = sub_225CCE954();
    v22 = *(v21 - 8);
    (*(v22 + 56))(v15, 1, 1, v21);
    v23 = (*(v22 + 48))(v15, 1, v21);
    sub_2259CB640(v15, &unk_27D73B050, &unk_225CD3AD0);

    v24 = sub_225B2C374(v16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v34[0] = v24;
    sub_225B2C4A0(v17, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, v34);

    v26 = v34[0];
    v27 = sub_225B29AA0(0, 1, 1, v16);
    v29 = *(v27 + 2);
    v28 = *(v27 + 3);
    if (v29 >= v28 >> 1)
    {
      v27 = sub_225B29AA0((v28 > 1), v29 + 1, 1, v27);
    }

    if (v23)
    {
      v30 = 107;
    }

    else
    {
      v30 = 23;
    }

    *(v27 + 2) = v29 + 1;
    v31 = &v27[56 * v29];
    *(v31 + 4) = 0;
    *(v31 + 5) = 0xE000000000000000;
    *(v31 + 6) = 0xD000000000000029;
    *(v31 + 7) = 0x8000000225D2A6B0;
    *(v31 + 8) = 0xD000000000000023;
    *(v31 + 9) = 0x8000000225D2A620;
    *(v31 + 10) = 220;
    *v20 = v30;
    *(v20 + 8) = v27;
    *(v20 + 16) = 0;
    *(v20 + 24) = 0xE000000000000000;
    *(v20 + 32) = v26;
    *(v20 + 40) = 0;
    v0[18] = v18;
    sub_225CCE924();
    __swift_destroy_boxed_opaque_existential_0(v0 + 8);

    v32 = v0[1];

    return v32();
  }
}

uint64_t sub_225C83114()
{
  *(*v1 + 248) = v0;

  if (v0)
  {
    v2 = sub_225C92AF4;
  }

  else
  {
    v2 = sub_225C92B84;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_225C83228(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[24] = a6;
  v7[25] = a7;
  v7[22] = a4;
  v7[23] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  v7[26] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D742808, &qword_225D01488);
  v7[27] = v8;
  v9 = *(v8 - 8);
  v7[28] = v9;
  v7[29] = *(v9 + 64);
  v7[30] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_225C83338, 0, 0);
}

uint64_t sub_225C83338()
{
  v35 = v0;
  v1 = v0[30];
  v2 = v0[27];
  v3 = v0[28];
  v5 = v0[22];
  v4 = v0[23];
  os_unfair_lock_lock((v5 + 24));
  v6 = *(v5 + 16);
  (*(v3 + 16))(v1, v4, v2);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, v1, v2);
  v0[6] = sub_225C92B80;
  v0[7] = v8;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_225CBFB0C;
  v0[5] = &block_descriptor_564;
  v9 = _Block_copy(v0 + 2);

  v10 = [v6 remoteObjectProxyWithErrorHandler_];
  _Block_release(v9);
  sub_225CCF0A4();
  swift_unknownObjectRelease();
  os_unfair_lock_unlock((v5 + 24));
  sub_2259CB810((v0 + 8), (v0 + 12));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D742800, &qword_225D01470);
  if (swift_dynamicCast() && (v11 = v0[19], (v0[31] = v11) != 0))
  {
    v12 = v0[24];
    v0[18] = v11;
    v33 = (v12 + *v12);
    v13 = swift_task_alloc();
    v0[32] = v13;
    *v13 = v0;
    v13[1] = sub_225C838AC;

    return (v33)(v0 + 16, v0 + 18);
  }

  else
  {
    v15 = v0[26];
    v34[0] = 0;
    v34[1] = 0xE000000000000000;
    sub_225CCF204();
    MEMORY[0x22AA6CE70](0xD000000000000014, 0x8000000225D2A650);
    __swift_project_boxed_opaque_existential_1(v0 + 8, v0[11]);
    sub_225CCF904();
    MEMORY[0x22AA6CE70](0xD000000000000013, 0x8000000225D2A670);
    MEMORY[0x22AA6CE70](0xD000000000000017, 0x8000000225D2A720);
    v16 = MEMORY[0x277D84F90];
    v17 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v18 = swift_allocError();
    v20 = v19;
    v21 = sub_225CCE954();
    v22 = *(v21 - 8);
    (*(v22 + 56))(v15, 1, 1, v21);
    v23 = (*(v22 + 48))(v15, 1, v21);
    sub_2259CB640(v15, &unk_27D73B050, &unk_225CD3AD0);

    v24 = sub_225B2C374(v16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v34[0] = v24;
    sub_225B2C4A0(v17, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, v34);

    v26 = v34[0];
    v27 = sub_225B29AA0(0, 1, 1, v16);
    v29 = *(v27 + 2);
    v28 = *(v27 + 3);
    if (v29 >= v28 >> 1)
    {
      v27 = sub_225B29AA0((v28 > 1), v29 + 1, 1, v27);
    }

    if (v23)
    {
      v30 = 107;
    }

    else
    {
      v30 = 23;
    }

    *(v27 + 2) = v29 + 1;
    v31 = &v27[56 * v29];
    *(v31 + 4) = 0;
    *(v31 + 5) = 0xE000000000000000;
    *(v31 + 6) = 0xD000000000000029;
    *(v31 + 7) = 0x8000000225D2A6B0;
    *(v31 + 8) = 0xD000000000000023;
    *(v31 + 9) = 0x8000000225D2A620;
    *(v31 + 10) = 220;
    *v20 = v30;
    *(v20 + 8) = v27;
    *(v20 + 16) = 0;
    *(v20 + 24) = 0xE000000000000000;
    *(v20 + 32) = v26;
    *(v20 + 40) = 0;
    v0[20] = v18;
    sub_225CCE924();
    __swift_destroy_boxed_opaque_existential_0(v0 + 8);

    v32 = v0[1];

    return v32();
  }
}

uint64_t sub_225C838AC()
{
  *(*v1 + 264) = v0;

  if (v0)
  {
    v2 = sub_225C92AEC;
  }

  else
  {
    v2 = sub_225C92ADC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_225C839C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[22] = a6;
  v7[23] = a7;
  v7[20] = a4;
  v7[21] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  v7[24] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73FD10, &unk_225CD7600);
  v7[25] = v8;
  v9 = *(v8 - 8);
  v7[26] = v9;
  v7[27] = *(v9 + 64);
  v7[28] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_225C83AD0, 0, 0);
}

uint64_t sub_225C83AD0()
{
  v35 = v0;
  v1 = v0[28];
  v2 = v0[25];
  v3 = v0[26];
  v5 = v0[20];
  v4 = v0[21];
  os_unfair_lock_lock((v5 + 24));
  v6 = *(v5 + 16);
  (*(v3 + 16))(v1, v4, v2);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, v1, v2);
  v0[6] = sub_225C92B78;
  v0[7] = v8;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_225CBFB0C;
  v0[5] = &block_descriptor_111;
  v9 = _Block_copy(v0 + 2);

  v10 = [v6 remoteObjectProxyWithErrorHandler_];
  _Block_release(v9);
  sub_225CCF0A4();
  swift_unknownObjectRelease();
  os_unfair_lock_unlock((v5 + 24));
  sub_2259CB810((v0 + 8), (v0 + 12));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D742770, &qword_225D00FC8);
  if (swift_dynamicCast() && (v11 = v0[17], (v0[29] = v11) != 0))
  {
    v12 = v0[22];
    v0[16] = v11;
    v33 = (v12 + *v12);
    v13 = swift_task_alloc();
    v0[30] = v13;
    *v13 = v0;
    v13[1] = sub_225C83114;

    return v33();
  }

  else
  {
    v15 = v0[24];
    v34[0] = 0;
    v34[1] = 0xE000000000000000;
    sub_225CCF204();
    MEMORY[0x22AA6CE70](0xD000000000000014, 0x8000000225D2A650);
    __swift_project_boxed_opaque_existential_1(v0 + 8, v0[11]);
    sub_225CCF904();
    MEMORY[0x22AA6CE70](0xD000000000000013, 0x8000000225D2A670);
    MEMORY[0x22AA6CE70](0xD00000000000001CLL, 0x8000000225D2A700);
    v16 = MEMORY[0x277D84F90];
    v17 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v18 = swift_allocError();
    v20 = v19;
    v21 = sub_225CCE954();
    v22 = *(v21 - 8);
    (*(v22 + 56))(v15, 1, 1, v21);
    v23 = (*(v22 + 48))(v15, 1, v21);
    sub_2259CB640(v15, &unk_27D73B050, &unk_225CD3AD0);

    v24 = sub_225B2C374(v16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v34[0] = v24;
    sub_225B2C4A0(v17, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, v34);

    v26 = v34[0];
    v27 = sub_225B29AA0(0, 1, 1, v16);
    v29 = *(v27 + 2);
    v28 = *(v27 + 3);
    if (v29 >= v28 >> 1)
    {
      v27 = sub_225B29AA0((v28 > 1), v29 + 1, 1, v27);
    }

    if (v23)
    {
      v30 = 107;
    }

    else
    {
      v30 = 23;
    }

    *(v27 + 2) = v29 + 1;
    v31 = &v27[56 * v29];
    *(v31 + 4) = 0;
    *(v31 + 5) = 0xE000000000000000;
    *(v31 + 6) = 0xD000000000000029;
    *(v31 + 7) = 0x8000000225D2A6B0;
    *(v31 + 8) = 0xD000000000000023;
    *(v31 + 9) = 0x8000000225D2A620;
    *(v31 + 10) = 220;
    *v20 = v30;
    *(v20 + 8) = v27;
    *(v20 + 16) = 0;
    *(v20 + 24) = 0xE000000000000000;
    *(v20 + 32) = v26;
    *(v20 + 40) = 0;
    v0[18] = v18;
    sub_225CCE924();
    __swift_destroy_boxed_opaque_existential_0(v0 + 8);

    v32 = v0[1];

    return v32();
  }
}

uint64_t sub_225C8403C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[25] = a6;
  v7[26] = a7;
  v7[23] = a4;
  v7[24] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  v7[27] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7427F8, &unk_225D02100);
  v7[28] = v8;
  v9 = *(v8 - 8);
  v7[29] = v9;
  v7[30] = *(v9 + 64);
  v7[31] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_225C8414C, 0, 0);
}

uint64_t sub_225C8414C()
{
  v35 = v0;
  v1 = v0[31];
  v2 = v0[28];
  v3 = v0[29];
  v5 = v0[23];
  v4 = v0[24];
  os_unfair_lock_lock((v5 + 24));
  v6 = *(v5 + 16);
  (*(v3 + 16))(v1, v4, v2);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, v1, v2);
  v0[6] = sub_225C91C84;
  v0[7] = v8;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_225CBFB0C;
  v0[5] = &block_descriptor_525;
  v9 = _Block_copy(v0 + 2);

  v10 = [v6 remoteObjectProxyWithErrorHandler_];
  _Block_release(v9);
  sub_225CCF0A4();
  swift_unknownObjectRelease();
  os_unfair_lock_unlock((v5 + 24));
  sub_2259CB810((v0 + 8), (v0 + 12));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D742770, &qword_225D00FC8);
  if (swift_dynamicCast() && (v11 = v0[20], (v0[32] = v11) != 0))
  {
    v12 = v0[25];
    v0[19] = v11;
    v33 = (v12 + *v12);
    v13 = swift_task_alloc();
    v0[33] = v13;
    *v13 = v0;
    v13[1] = sub_225C846C0;

    return (v33)(v0 + 16, v0 + 19);
  }

  else
  {
    v15 = v0[27];
    v34[0] = 0;
    v34[1] = 0xE000000000000000;
    sub_225CCF204();
    MEMORY[0x22AA6CE70](0xD000000000000014, 0x8000000225D2A650);
    __swift_project_boxed_opaque_existential_1(v0 + 8, v0[11]);
    sub_225CCF904();
    MEMORY[0x22AA6CE70](0xD000000000000013, 0x8000000225D2A670);
    MEMORY[0x22AA6CE70](0xD00000000000001CLL, 0x8000000225D2A700);
    v16 = MEMORY[0x277D84F90];
    v17 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v18 = swift_allocError();
    v20 = v19;
    v21 = sub_225CCE954();
    v22 = *(v21 - 8);
    (*(v22 + 56))(v15, 1, 1, v21);
    v23 = (*(v22 + 48))(v15, 1, v21);
    sub_2259CB640(v15, &unk_27D73B050, &unk_225CD3AD0);

    v24 = sub_225B2C374(v16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v34[0] = v24;
    sub_225B2C4A0(v17, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, v34);

    v26 = v34[0];
    v27 = sub_225B29AA0(0, 1, 1, v16);
    v29 = *(v27 + 2);
    v28 = *(v27 + 3);
    if (v29 >= v28 >> 1)
    {
      v27 = sub_225B29AA0((v28 > 1), v29 + 1, 1, v27);
    }

    if (v23)
    {
      v30 = 107;
    }

    else
    {
      v30 = 23;
    }

    *(v27 + 2) = v29 + 1;
    v31 = &v27[56 * v29];
    *(v31 + 4) = 0;
    *(v31 + 5) = 0xE000000000000000;
    *(v31 + 6) = 0xD000000000000029;
    *(v31 + 7) = 0x8000000225D2A6B0;
    *(v31 + 8) = 0xD000000000000023;
    *(v31 + 9) = 0x8000000225D2A620;
    *(v31 + 10) = 220;
    *v20 = v30;
    *(v20 + 8) = v27;
    *(v20 + 16) = 0;
    *(v20 + 24) = 0xE000000000000000;
    *(v20 + 32) = v26;
    *(v20 + 40) = 0;
    v0[21] = v18;
    sub_225CCE924();
    __swift_destroy_boxed_opaque_existential_0(v0 + 8);

    v32 = v0[1];

    return v32();
  }
}

uint64_t sub_225C846C0()
{
  *(*v1 + 272) = v0;

  if (v0)
  {
    v2 = sub_225C84864;
  }

  else
  {
    v2 = sub_225C847D4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_225C847D4()
{
  sub_225CCE934();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0((v0 + 64));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_225C84864()
{
  v1 = v0[34];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v0 + 8);
  v0[22] = v1;
  sub_225CCE924();

  v2 = v0[1];

  return v2();
}

uint64_t sub_225C84904(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[23] = a6;
  v7[24] = a7;
  v7[21] = a4;
  v7[22] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  v7[25] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7427E8, &qword_225D013A8);
  v7[26] = v8;
  v9 = *(v8 - 8);
  v7[27] = v9;
  v7[28] = *(v9 + 64);
  v7[29] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_225C84A14, 0, 0);
}

uint64_t sub_225C84A14()
{
  v35 = v0;
  v1 = v0[29];
  v2 = v0[26];
  v3 = v0[27];
  v5 = v0[21];
  v4 = v0[22];
  os_unfair_lock_lock((v5 + 24));
  v6 = *(v5 + 16);
  (*(v3 + 16))(v1, v4, v2);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, v1, v2);
  v0[6] = sub_225C917BC;
  v0[7] = v8;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_225CBFB0C;
  v0[5] = &block_descriptor_488;
  v9 = _Block_copy(v0 + 2);

  v10 = [v6 remoteObjectProxyWithErrorHandler_];
  _Block_release(v9);
  sub_225CCF0A4();
  swift_unknownObjectRelease();
  os_unfair_lock_unlock((v5 + 24));
  sub_2259CB810((v0 + 8), (v0 + 12));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D742770, &qword_225D00FC8);
  if (swift_dynamicCast() && (v11 = v0[17], (v0[30] = v11) != 0))
  {
    v12 = v0[23];
    v0[16] = v11;
    v33 = (v12 + *v12);
    v13 = swift_task_alloc();
    v0[31] = v13;
    *v13 = v0;
    v13[1] = sub_225C84F88;

    return (v33)(v0 + 19, v0 + 16);
  }

  else
  {
    v15 = v0[25];
    v34[0] = 0;
    v34[1] = 0xE000000000000000;
    sub_225CCF204();
    MEMORY[0x22AA6CE70](0xD000000000000014, 0x8000000225D2A650);
    __swift_project_boxed_opaque_existential_1(v0 + 8, v0[11]);
    sub_225CCF904();
    MEMORY[0x22AA6CE70](0xD000000000000013, 0x8000000225D2A670);
    MEMORY[0x22AA6CE70](0xD00000000000001CLL, 0x8000000225D2A700);
    v16 = MEMORY[0x277D84F90];
    v17 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v18 = swift_allocError();
    v20 = v19;
    v21 = sub_225CCE954();
    v22 = *(v21 - 8);
    (*(v22 + 56))(v15, 1, 1, v21);
    v23 = (*(v22 + 48))(v15, 1, v21);
    sub_2259CB640(v15, &unk_27D73B050, &unk_225CD3AD0);

    v24 = sub_225B2C374(v16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v34[0] = v24;
    sub_225B2C4A0(v17, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, v34);

    v26 = v34[0];
    v27 = sub_225B29AA0(0, 1, 1, v16);
    v29 = *(v27 + 2);
    v28 = *(v27 + 3);
    if (v29 >= v28 >> 1)
    {
      v27 = sub_225B29AA0((v28 > 1), v29 + 1, 1, v27);
    }

    if (v23)
    {
      v30 = 107;
    }

    else
    {
      v30 = 23;
    }

    *(v27 + 2) = v29 + 1;
    v31 = &v27[56 * v29];
    *(v31 + 4) = 0;
    *(v31 + 5) = 0xE000000000000000;
    *(v31 + 6) = 0xD000000000000029;
    *(v31 + 7) = 0x8000000225D2A6B0;
    *(v31 + 8) = 0xD000000000000023;
    *(v31 + 9) = 0x8000000225D2A620;
    *(v31 + 10) = 220;
    *v20 = v30;
    *(v20 + 8) = v27;
    *(v20 + 16) = 0;
    *(v20 + 24) = 0xE000000000000000;
    *(v20 + 32) = v26;
    *(v20 + 40) = 0;
    v0[18] = v18;
    sub_225CCE924();
    __swift_destroy_boxed_opaque_existential_0(v0 + 8);

    v32 = v0[1];

    return v32();
  }
}

uint64_t sub_225C84F88()
{
  *(*v1 + 256) = v0;

  if (v0)
  {
    v2 = sub_225C92AF0;
  }

  else
  {
    v2 = sub_225C92AE0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_225C8509C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[23] = a6;
  v7[24] = a7;
  v7[21] = a4;
  v7[22] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  v7[25] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7427E0, &unk_225D02AD0);
  v7[26] = v8;
  v9 = *(v8 - 8);
  v7[27] = v9;
  v7[28] = *(v9 + 64);
  v7[29] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_225C851AC, 0, 0);
}

uint64_t sub_225C851AC()
{
  v35 = v0;
  v1 = v0[29];
  v2 = v0[26];
  v3 = v0[27];
  v5 = v0[21];
  v4 = v0[22];
  os_unfair_lock_lock((v5 + 24));
  v6 = *(v5 + 16);
  (*(v3 + 16))(v1, v4, v2);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, v1, v2);
  v0[6] = sub_225C91484;
  v0[7] = v8;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_225CBFB0C;
  v0[5] = &block_descriptor_464;
  v9 = _Block_copy(v0 + 2);

  v10 = [v6 remoteObjectProxyWithErrorHandler_];
  _Block_release(v9);
  sub_225CCF0A4();
  swift_unknownObjectRelease();
  os_unfair_lock_unlock((v5 + 24));
  sub_2259CB810((v0 + 8), (v0 + 12));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D742770, &qword_225D00FC8);
  if (swift_dynamicCast() && (v11 = v0[17], (v0[30] = v11) != 0))
  {
    v12 = v0[23];
    v0[16] = v11;
    v33 = (v12 + *v12);
    v13 = swift_task_alloc();
    v0[31] = v13;
    *v13 = v0;
    v13[1] = sub_225C84F88;

    return (v33)(v0 + 19, v0 + 16);
  }

  else
  {
    v15 = v0[25];
    v34[0] = 0;
    v34[1] = 0xE000000000000000;
    sub_225CCF204();
    MEMORY[0x22AA6CE70](0xD000000000000014, 0x8000000225D2A650);
    __swift_project_boxed_opaque_existential_1(v0 + 8, v0[11]);
    sub_225CCF904();
    MEMORY[0x22AA6CE70](0xD000000000000013, 0x8000000225D2A670);
    MEMORY[0x22AA6CE70](0xD00000000000001CLL, 0x8000000225D2A700);
    v16 = MEMORY[0x277D84F90];
    v17 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v18 = swift_allocError();
    v20 = v19;
    v21 = sub_225CCE954();
    v22 = *(v21 - 8);
    (*(v22 + 56))(v15, 1, 1, v21);
    v23 = (*(v22 + 48))(v15, 1, v21);
    sub_2259CB640(v15, &unk_27D73B050, &unk_225CD3AD0);

    v24 = sub_225B2C374(v16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v34[0] = v24;
    sub_225B2C4A0(v17, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, v34);

    v26 = v34[0];
    v27 = sub_225B29AA0(0, 1, 1, v16);
    v29 = *(v27 + 2);
    v28 = *(v27 + 3);
    if (v29 >= v28 >> 1)
    {
      v27 = sub_225B29AA0((v28 > 1), v29 + 1, 1, v27);
    }

    if (v23)
    {
      v30 = 107;
    }

    else
    {
      v30 = 23;
    }

    *(v27 + 2) = v29 + 1;
    v31 = &v27[56 * v29];
    *(v31 + 4) = 0;
    *(v31 + 5) = 0xE000000000000000;
    *(v31 + 6) = 0xD000000000000029;
    *(v31 + 7) = 0x8000000225D2A6B0;
    *(v31 + 8) = 0xD000000000000023;
    *(v31 + 9) = 0x8000000225D2A620;
    *(v31 + 10) = 220;
    *v20 = v30;
    *(v20 + 8) = v27;
    *(v20 + 16) = 0;
    *(v20 + 24) = 0xE000000000000000;
    *(v20 + 32) = v26;
    *(v20 + 40) = 0;
    v0[18] = v18;
    sub_225CCE924();
    __swift_destroy_boxed_opaque_existential_0(v0 + 8);

    v32 = v0[1];

    return v32();
  }
}

uint64_t sub_225C85720(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[23] = a6;
  v7[24] = a7;
  v7[21] = a4;
  v7[22] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  v7[25] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7427D8, &qword_225D01328);
  v7[26] = v8;
  v9 = *(v8 - 8);
  v7[27] = v9;
  v7[28] = *(v9 + 64);
  v7[29] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_225C85830, 0, 0);
}

uint64_t sub_225C85830()
{
  v35 = v0;
  v1 = v0[29];
  v2 = v0[26];
  v3 = v0[27];
  v5 = v0[21];
  v4 = v0[22];
  os_unfair_lock_lock((v5 + 24));
  v6 = *(v5 + 16);
  (*(v3 + 16))(v1, v4, v2);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, v1, v2);
  v0[6] = sub_225C9114C;
  v0[7] = v8;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_225CBFB0C;
  v0[5] = &block_descriptor_440;
  v9 = _Block_copy(v0 + 2);

  v10 = [v6 remoteObjectProxyWithErrorHandler_];
  _Block_release(v9);
  sub_225CCF0A4();
  swift_unknownObjectRelease();
  os_unfair_lock_unlock((v5 + 24));
  sub_2259CB810((v0 + 8), (v0 + 12));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D742770, &qword_225D00FC8);
  if (swift_dynamicCast() && (v11 = v0[17], (v0[30] = v11) != 0))
  {
    v12 = v0[23];
    v0[16] = v11;
    v33 = (v12 + *v12);
    v13 = swift_task_alloc();
    v0[31] = v13;
    *v13 = v0;
    v13[1] = sub_225C84F88;

    return (v33)(v0 + 19, v0 + 16);
  }

  else
  {
    v15 = v0[25];
    v34[0] = 0;
    v34[1] = 0xE000000000000000;
    sub_225CCF204();
    MEMORY[0x22AA6CE70](0xD000000000000014, 0x8000000225D2A650);
    __swift_project_boxed_opaque_existential_1(v0 + 8, v0[11]);
    sub_225CCF904();
    MEMORY[0x22AA6CE70](0xD000000000000013, 0x8000000225D2A670);
    MEMORY[0x22AA6CE70](0xD00000000000001CLL, 0x8000000225D2A700);
    v16 = MEMORY[0x277D84F90];
    v17 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v18 = swift_allocError();
    v20 = v19;
    v21 = sub_225CCE954();
    v22 = *(v21 - 8);
    (*(v22 + 56))(v15, 1, 1, v21);
    v23 = (*(v22 + 48))(v15, 1, v21);
    sub_2259CB640(v15, &unk_27D73B050, &unk_225CD3AD0);

    v24 = sub_225B2C374(v16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v34[0] = v24;
    sub_225B2C4A0(v17, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, v34);

    v26 = v34[0];
    v27 = sub_225B29AA0(0, 1, 1, v16);
    v29 = *(v27 + 2);
    v28 = *(v27 + 3);
    if (v29 >= v28 >> 1)
    {
      v27 = sub_225B29AA0((v28 > 1), v29 + 1, 1, v27);
    }

    if (v23)
    {
      v30 = 107;
    }

    else
    {
      v30 = 23;
    }

    *(v27 + 2) = v29 + 1;
    v31 = &v27[56 * v29];
    *(v31 + 4) = 0;
    *(v31 + 5) = 0xE000000000000000;
    *(v31 + 6) = 0xD000000000000029;
    *(v31 + 7) = 0x8000000225D2A6B0;
    *(v31 + 8) = 0xD000000000000023;
    *(v31 + 9) = 0x8000000225D2A620;
    *(v31 + 10) = 220;
    *v20 = v30;
    *(v20 + 8) = v27;
    *(v20 + 16) = 0;
    *(v20 + 24) = 0xE000000000000000;
    *(v20 + 32) = v26;
    *(v20 + 40) = 0;
    v0[18] = v18;
    sub_225CCE924();
    __swift_destroy_boxed_opaque_existential_0(v0 + 8);

    v32 = v0[1];

    return v32();
  }
}

uint64_t sub_225C85DA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[23] = a6;
  v7[24] = a7;
  v7[21] = a4;
  v7[22] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  v7[25] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7427D0, &unk_225D02AC0);
  v7[26] = v8;
  v9 = *(v8 - 8);
  v7[27] = v9;
  v7[28] = *(v9 + 64);
  v7[29] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_225C85EB4, 0, 0);
}

uint64_t sub_225C85EB4()
{
  v35 = v0;
  v1 = v0[29];
  v2 = v0[26];
  v3 = v0[27];
  v5 = v0[21];
  v4 = v0[22];
  os_unfair_lock_lock((v5 + 24));
  v6 = *(v5 + 16);
  (*(v3 + 16))(v1, v4, v2);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, v1, v2);
  v0[6] = sub_225C90E14;
  v0[7] = v8;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_225CBFB0C;
  v0[5] = &block_descriptor_416;
  v9 = _Block_copy(v0 + 2);

  v10 = [v6 remoteObjectProxyWithErrorHandler_];
  _Block_release(v9);
  sub_225CCF0A4();
  swift_unknownObjectRelease();
  os_unfair_lock_unlock((v5 + 24));
  sub_2259CB810((v0 + 8), (v0 + 12));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D742770, &qword_225D00FC8);
  if (swift_dynamicCast() && (v11 = v0[17], (v0[30] = v11) != 0))
  {
    v12 = v0[23];
    v0[16] = v11;
    v33 = (v12 + *v12);
    v13 = swift_task_alloc();
    v0[31] = v13;
    *v13 = v0;
    v13[1] = sub_225C84F88;

    return (v33)(v0 + 19, v0 + 16);
  }

  else
  {
    v15 = v0[25];
    v34[0] = 0;
    v34[1] = 0xE000000000000000;
    sub_225CCF204();
    MEMORY[0x22AA6CE70](0xD000000000000014, 0x8000000225D2A650);
    __swift_project_boxed_opaque_existential_1(v0 + 8, v0[11]);
    sub_225CCF904();
    MEMORY[0x22AA6CE70](0xD000000000000013, 0x8000000225D2A670);
    MEMORY[0x22AA6CE70](0xD00000000000001CLL, 0x8000000225D2A700);
    v16 = MEMORY[0x277D84F90];
    v17 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v18 = swift_allocError();
    v20 = v19;
    v21 = sub_225CCE954();
    v22 = *(v21 - 8);
    (*(v22 + 56))(v15, 1, 1, v21);
    v23 = (*(v22 + 48))(v15, 1, v21);
    sub_2259CB640(v15, &unk_27D73B050, &unk_225CD3AD0);

    v24 = sub_225B2C374(v16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v34[0] = v24;
    sub_225B2C4A0(v17, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, v34);

    v26 = v34[0];
    v27 = sub_225B29AA0(0, 1, 1, v16);
    v29 = *(v27 + 2);
    v28 = *(v27 + 3);
    if (v29 >= v28 >> 1)
    {
      v27 = sub_225B29AA0((v28 > 1), v29 + 1, 1, v27);
    }

    if (v23)
    {
      v30 = 107;
    }

    else
    {
      v30 = 23;
    }

    *(v27 + 2) = v29 + 1;
    v31 = &v27[56 * v29];
    *(v31 + 4) = 0;
    *(v31 + 5) = 0xE000000000000000;
    *(v31 + 6) = 0xD000000000000029;
    *(v31 + 7) = 0x8000000225D2A6B0;
    *(v31 + 8) = 0xD000000000000023;
    *(v31 + 9) = 0x8000000225D2A620;
    *(v31 + 10) = 220;
    *v20 = v30;
    *(v20 + 8) = v27;
    *(v20 + 16) = 0;
    *(v20 + 24) = 0xE000000000000000;
    *(v20 + 32) = v26;
    *(v20 + 40) = 0;
    v0[18] = v18;
    sub_225CCE924();
    __swift_destroy_boxed_opaque_existential_0(v0 + 8);

    v32 = v0[1];

    return v32();
  }
}

uint64_t sub_225C86428(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[23] = a6;
  v7[24] = a7;
  v7[21] = a4;
  v7[22] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  v7[25] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7427C8, &qword_225D012A8);
  v7[26] = v8;
  v9 = *(v8 - 8);
  v7[27] = v9;
  v7[28] = *(v9 + 64);
  v7[29] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_225C86538, 0, 0);
}

uint64_t sub_225C86538()
{
  v35 = v0;
  v1 = v0[29];
  v2 = v0[26];
  v3 = v0[27];
  v5 = v0[21];
  v4 = v0[22];
  os_unfair_lock_lock((v5 + 24));
  v6 = *(v5 + 16);
  (*(v3 + 16))(v1, v4, v2);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, v1, v2);
  v0[6] = sub_225C90ADC;
  v0[7] = v8;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_225CBFB0C;
  v0[5] = &block_descriptor_392;
  v9 = _Block_copy(v0 + 2);

  v10 = [v6 remoteObjectProxyWithErrorHandler_];
  _Block_release(v9);
  sub_225CCF0A4();
  swift_unknownObjectRelease();
  os_unfair_lock_unlock((v5 + 24));
  sub_2259CB810((v0 + 8), (v0 + 12));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D742770, &qword_225D00FC8);
  if (swift_dynamicCast() && (v11 = v0[17], (v0[30] = v11) != 0))
  {
    v12 = v0[23];
    v0[16] = v11;
    v33 = (v12 + *v12);
    v13 = swift_task_alloc();
    v0[31] = v13;
    *v13 = v0;
    v13[1] = sub_225C84F88;

    return (v33)(v0 + 19, v0 + 16);
  }

  else
  {
    v15 = v0[25];
    v34[0] = 0;
    v34[1] = 0xE000000000000000;
    sub_225CCF204();
    MEMORY[0x22AA6CE70](0xD000000000000014, 0x8000000225D2A650);
    __swift_project_boxed_opaque_existential_1(v0 + 8, v0[11]);
    sub_225CCF904();
    MEMORY[0x22AA6CE70](0xD000000000000013, 0x8000000225D2A670);
    MEMORY[0x22AA6CE70](0xD00000000000001CLL, 0x8000000225D2A700);
    v16 = MEMORY[0x277D84F90];
    v17 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v18 = swift_allocError();
    v20 = v19;
    v21 = sub_225CCE954();
    v22 = *(v21 - 8);
    (*(v22 + 56))(v15, 1, 1, v21);
    v23 = (*(v22 + 48))(v15, 1, v21);
    sub_2259CB640(v15, &unk_27D73B050, &unk_225CD3AD0);

    v24 = sub_225B2C374(v16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v34[0] = v24;
    sub_225B2C4A0(v17, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, v34);

    v26 = v34[0];
    v27 = sub_225B29AA0(0, 1, 1, v16);
    v29 = *(v27 + 2);
    v28 = *(v27 + 3);
    if (v29 >= v28 >> 1)
    {
      v27 = sub_225B29AA0((v28 > 1), v29 + 1, 1, v27);
    }

    if (v23)
    {
      v30 = 107;
    }

    else
    {
      v30 = 23;
    }

    *(v27 + 2) = v29 + 1;
    v31 = &v27[56 * v29];
    *(v31 + 4) = 0;
    *(v31 + 5) = 0xE000000000000000;
    *(v31 + 6) = 0xD000000000000029;
    *(v31 + 7) = 0x8000000225D2A6B0;
    *(v31 + 8) = 0xD000000000000023;
    *(v31 + 9) = 0x8000000225D2A620;
    *(v31 + 10) = 220;
    *v20 = v30;
    *(v20 + 8) = v27;
    *(v20 + 16) = 0;
    *(v20 + 24) = 0xE000000000000000;
    *(v20 + 32) = v26;
    *(v20 + 40) = 0;
    v0[18] = v18;
    sub_225CCE924();
    __swift_destroy_boxed_opaque_existential_0(v0 + 8);

    v32 = v0[1];

    return v32();
  }
}

uint64_t sub_225C86AAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[23] = a6;
  v7[24] = a7;
  v7[21] = a4;
  v7[22] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  v7[25] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7427C0, &unk_225D02AB0);
  v7[26] = v8;
  v9 = *(v8 - 8);
  v7[27] = v9;
  v7[28] = *(v9 + 64);
  v7[29] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_225C86BBC, 0, 0);
}

uint64_t sub_225C86BBC()
{
  v35 = v0;
  v1 = v0[29];
  v2 = v0[26];
  v3 = v0[27];
  v5 = v0[21];
  v4 = v0[22];
  os_unfair_lock_lock((v5 + 24));
  v6 = *(v5 + 16);
  (*(v3 + 16))(v1, v4, v2);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, v1, v2);
  v0[6] = sub_225C907A4;
  v0[7] = v8;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_225CBFB0C;
  v0[5] = &block_descriptor_368;
  v9 = _Block_copy(v0 + 2);

  v10 = [v6 remoteObjectProxyWithErrorHandler_];
  _Block_release(v9);
  sub_225CCF0A4();
  swift_unknownObjectRelease();
  os_unfair_lock_unlock((v5 + 24));
  sub_2259CB810((v0 + 8), (v0 + 12));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D742770, &qword_225D00FC8);
  if (swift_dynamicCast() && (v11 = v0[17], (v0[30] = v11) != 0))
  {
    v12 = v0[23];
    v0[16] = v11;
    v33 = (v12 + *v12);
    v13 = swift_task_alloc();
    v0[31] = v13;
    *v13 = v0;
    v13[1] = sub_225C84F88;

    return (v33)(v0 + 19, v0 + 16);
  }

  else
  {
    v15 = v0[25];
    v34[0] = 0;
    v34[1] = 0xE000000000000000;
    sub_225CCF204();
    MEMORY[0x22AA6CE70](0xD000000000000014, 0x8000000225D2A650);
    __swift_project_boxed_opaque_existential_1(v0 + 8, v0[11]);
    sub_225CCF904();
    MEMORY[0x22AA6CE70](0xD000000000000013, 0x8000000225D2A670);
    MEMORY[0x22AA6CE70](0xD00000000000001CLL, 0x8000000225D2A700);
    v16 = MEMORY[0x277D84F90];
    v17 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v18 = swift_allocError();
    v20 = v19;
    v21 = sub_225CCE954();
    v22 = *(v21 - 8);
    (*(v22 + 56))(v15, 1, 1, v21);
    v23 = (*(v22 + 48))(v15, 1, v21);
    sub_2259CB640(v15, &unk_27D73B050, &unk_225CD3AD0);

    v24 = sub_225B2C374(v16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v34[0] = v24;
    sub_225B2C4A0(v17, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, v34);

    v26 = v34[0];
    v27 = sub_225B29AA0(0, 1, 1, v16);
    v29 = *(v27 + 2);
    v28 = *(v27 + 3);
    if (v29 >= v28 >> 1)
    {
      v27 = sub_225B29AA0((v28 > 1), v29 + 1, 1, v27);
    }

    if (v23)
    {
      v30 = 107;
    }

    else
    {
      v30 = 23;
    }

    *(v27 + 2) = v29 + 1;
    v31 = &v27[56 * v29];
    *(v31 + 4) = 0;
    *(v31 + 5) = 0xE000000000000000;
    *(v31 + 6) = 0xD000000000000029;
    *(v31 + 7) = 0x8000000225D2A6B0;
    *(v31 + 8) = 0xD000000000000023;
    *(v31 + 9) = 0x8000000225D2A620;
    *(v31 + 10) = 220;
    *v20 = v30;
    *(v20 + 8) = v27;
    *(v20 + 16) = 0;
    *(v20 + 24) = 0xE000000000000000;
    *(v20 + 32) = v26;
    *(v20 + 40) = 0;
    v0[18] = v18;
    sub_225CCE924();
    __swift_destroy_boxed_opaque_existential_0(v0 + 8);

    v32 = v0[1];

    return v32();
  }
}

uint64_t sub_225C87130(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[23] = a6;
  v7[24] = a7;
  v7[21] = a4;
  v7[22] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  v7[25] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7427B8, &qword_225D01228);
  v7[26] = v8;
  v9 = *(v8 - 8);
  v7[27] = v9;
  v7[28] = *(v9 + 64);
  v7[29] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_225C87240, 0, 0);
}

uint64_t sub_225C87240()
{
  v35 = v0;
  v1 = v0[29];
  v2 = v0[26];
  v3 = v0[27];
  v5 = v0[21];
  v4 = v0[22];
  os_unfair_lock_lock((v5 + 24));
  v6 = *(v5 + 16);
  (*(v3 + 16))(v1, v4, v2);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, v1, v2);
  v0[6] = sub_225C9046C;
  v0[7] = v8;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_225CBFB0C;
  v0[5] = &block_descriptor_344;
  v9 = _Block_copy(v0 + 2);

  v10 = [v6 remoteObjectProxyWithErrorHandler_];
  _Block_release(v9);
  sub_225CCF0A4();
  swift_unknownObjectRelease();
  os_unfair_lock_unlock((v5 + 24));
  sub_2259CB810((v0 + 8), (v0 + 12));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D742770, &qword_225D00FC8);
  if (swift_dynamicCast() && (v11 = v0[17], (v0[30] = v11) != 0))
  {
    v12 = v0[23];
    v0[16] = v11;
    v33 = (v12 + *v12);
    v13 = swift_task_alloc();
    v0[31] = v13;
    *v13 = v0;
    v13[1] = sub_225C84F88;

    return (v33)(v0 + 19, v0 + 16);
  }

  else
  {
    v15 = v0[25];
    v34[0] = 0;
    v34[1] = 0xE000000000000000;
    sub_225CCF204();
    MEMORY[0x22AA6CE70](0xD000000000000014, 0x8000000225D2A650);
    __swift_project_boxed_opaque_existential_1(v0 + 8, v0[11]);
    sub_225CCF904();
    MEMORY[0x22AA6CE70](0xD000000000000013, 0x8000000225D2A670);
    MEMORY[0x22AA6CE70](0xD00000000000001CLL, 0x8000000225D2A700);
    v16 = MEMORY[0x277D84F90];
    v17 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v18 = swift_allocError();
    v20 = v19;
    v21 = sub_225CCE954();
    v22 = *(v21 - 8);
    (*(v22 + 56))(v15, 1, 1, v21);
    v23 = (*(v22 + 48))(v15, 1, v21);
    sub_2259CB640(v15, &unk_27D73B050, &unk_225CD3AD0);

    v24 = sub_225B2C374(v16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v34[0] = v24;
    sub_225B2C4A0(v17, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, v34);

    v26 = v34[0];
    v27 = sub_225B29AA0(0, 1, 1, v16);
    v29 = *(v27 + 2);
    v28 = *(v27 + 3);
    if (v29 >= v28 >> 1)
    {
      v27 = sub_225B29AA0((v28 > 1), v29 + 1, 1, v27);
    }

    if (v23)
    {
      v30 = 107;
    }

    else
    {
      v30 = 23;
    }

    *(v27 + 2) = v29 + 1;
    v31 = &v27[56 * v29];
    *(v31 + 4) = 0;
    *(v31 + 5) = 0xE000000000000000;
    *(v31 + 6) = 0xD000000000000029;
    *(v31 + 7) = 0x8000000225D2A6B0;
    *(v31 + 8) = 0xD000000000000023;
    *(v31 + 9) = 0x8000000225D2A620;
    *(v31 + 10) = 220;
    *v20 = v30;
    *(v20 + 8) = v27;
    *(v20 + 16) = 0;
    *(v20 + 24) = 0xE000000000000000;
    *(v20 + 32) = v26;
    *(v20 + 40) = 0;
    v0[18] = v18;
    sub_225CCE924();
    __swift_destroy_boxed_opaque_existential_0(v0 + 8);

    v32 = v0[1];

    return v32();
  }
}

uint64_t sub_225C877B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[22] = a6;
  v7[23] = a7;
  v7[20] = a4;
  v7[21] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  v7[24] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AF08, &qword_225CD4B60);
  v7[25] = v8;
  v9 = *(v8 - 8);
  v7[26] = v9;
  v7[27] = *(v9 + 64);
  v7[28] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_225C878C4, 0, 0);
}

uint64_t sub_225C878C4()
{
  v35 = v0;
  v1 = v0[28];
  v2 = v0[25];
  v3 = v0[26];
  v5 = v0[20];
  v4 = v0[21];
  os_unfair_lock_lock((v5 + 24));
  v6 = *(v5 + 16);
  (*(v3 + 16))(v1, v4, v2);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, v1, v2);
  v0[6] = sub_225C92B7C;
  v0[7] = v8;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_225CBFB0C;
  v0[5] = &block_descriptor_320;
  v9 = _Block_copy(v0 + 2);

  v10 = [v6 remoteObjectProxyWithErrorHandler_];
  _Block_release(v9);
  sub_225CCF0A4();
  swift_unknownObjectRelease();
  os_unfair_lock_unlock((v5 + 24));
  sub_2259CB810((v0 + 8), (v0 + 12));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D742770, &qword_225D00FC8);
  if (swift_dynamicCast() && (v11 = v0[17], (v0[29] = v11) != 0))
  {
    v12 = v0[22];
    v0[16] = v11;
    v33 = (v12 + *v12);
    v13 = swift_task_alloc();
    v0[30] = v13;
    *v13 = v0;
    v13[1] = sub_225C87E38;

    return (v33)(v0 + 32, v0 + 16);
  }

  else
  {
    v15 = v0[24];
    v34[0] = 0;
    v34[1] = 0xE000000000000000;
    sub_225CCF204();
    MEMORY[0x22AA6CE70](0xD000000000000014, 0x8000000225D2A650);
    __swift_project_boxed_opaque_existential_1(v0 + 8, v0[11]);
    sub_225CCF904();
    MEMORY[0x22AA6CE70](0xD000000000000013, 0x8000000225D2A670);
    MEMORY[0x22AA6CE70](0xD00000000000001CLL, 0x8000000225D2A700);
    v16 = MEMORY[0x277D84F90];
    v17 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v18 = swift_allocError();
    v20 = v19;
    v21 = sub_225CCE954();
    v22 = *(v21 - 8);
    (*(v22 + 56))(v15, 1, 1, v21);
    v23 = (*(v22 + 48))(v15, 1, v21);
    sub_2259CB640(v15, &unk_27D73B050, &unk_225CD3AD0);

    v24 = sub_225B2C374(v16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v34[0] = v24;
    sub_225B2C4A0(v17, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, v34);

    v26 = v34[0];
    v27 = sub_225B29AA0(0, 1, 1, v16);
    v29 = *(v27 + 2);
    v28 = *(v27 + 3);
    if (v29 >= v28 >> 1)
    {
      v27 = sub_225B29AA0((v28 > 1), v29 + 1, 1, v27);
    }

    if (v23)
    {
      v30 = 107;
    }

    else
    {
      v30 = 23;
    }

    *(v27 + 2) = v29 + 1;
    v31 = &v27[56 * v29];
    *(v31 + 4) = 0;
    *(v31 + 5) = 0xE000000000000000;
    *(v31 + 6) = 0xD000000000000029;
    *(v31 + 7) = 0x8000000225D2A6B0;
    *(v31 + 8) = 0xD000000000000023;
    *(v31 + 9) = 0x8000000225D2A620;
    *(v31 + 10) = 220;
    *v20 = v30;
    *(v20 + 8) = v27;
    *(v20 + 16) = 0;
    *(v20 + 24) = 0xE000000000000000;
    *(v20 + 32) = v26;
    *(v20 + 40) = 0;
    v0[18] = v18;
    sub_225CCE924();
    __swift_destroy_boxed_opaque_existential_0(v0 + 8);

    v32 = v0[1];

    return v32();
  }
}

uint64_t sub_225C87E38()
{
  *(*v1 + 248) = v0;

  if (v0)
  {
    v2 = sub_225C92AF4;
  }

  else
  {
    v2 = sub_225C92AE4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_225C87F4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[23] = a6;
  v7[24] = a7;
  v7[21] = a4;
  v7[22] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  v7[25] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7427B0, &qword_225D011B0);
  v7[26] = v8;
  v9 = *(v8 - 8);
  v7[27] = v9;
  v7[28] = *(v9 + 64);
  v7[29] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_225C8805C, 0, 0);
}

uint64_t sub_225C8805C()
{
  v35 = v0;
  v1 = v0[29];
  v2 = v0[26];
  v3 = v0[27];
  v5 = v0[21];
  v4 = v0[22];
  os_unfair_lock_lock((v5 + 24));
  v6 = *(v5 + 16);
  (*(v3 + 16))(v1, v4, v2);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, v1, v2);
  v0[6] = sub_225C8FE10;
  v0[7] = v8;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_225CBFB0C;
  v0[5] = &block_descriptor_296;
  v9 = _Block_copy(v0 + 2);

  v10 = [v6 remoteObjectProxyWithErrorHandler_];
  _Block_release(v9);
  sub_225CCF0A4();
  swift_unknownObjectRelease();
  os_unfair_lock_unlock((v5 + 24));
  sub_2259CB810((v0 + 8), (v0 + 12));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D742770, &qword_225D00FC8);
  if (swift_dynamicCast() && (v11 = v0[17], (v0[30] = v11) != 0))
  {
    v12 = v0[23];
    v0[16] = v11;
    v33 = (v12 + *v12);
    v13 = swift_task_alloc();
    v0[31] = v13;
    *v13 = v0;
    v13[1] = sub_225C84F88;

    return (v33)(v0 + 19, v0 + 16);
  }

  else
  {
    v15 = v0[25];
    v34[0] = 0;
    v34[1] = 0xE000000000000000;
    sub_225CCF204();
    MEMORY[0x22AA6CE70](0xD000000000000014, 0x8000000225D2A650);
    __swift_project_boxed_opaque_existential_1(v0 + 8, v0[11]);
    sub_225CCF904();
    MEMORY[0x22AA6CE70](0xD000000000000013, 0x8000000225D2A670);
    MEMORY[0x22AA6CE70](0xD00000000000001CLL, 0x8000000225D2A700);
    v16 = MEMORY[0x277D84F90];
    v17 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v18 = swift_allocError();
    v20 = v19;
    v21 = sub_225CCE954();
    v22 = *(v21 - 8);
    (*(v22 + 56))(v15, 1, 1, v21);
    v23 = (*(v22 + 48))(v15, 1, v21);
    sub_2259CB640(v15, &unk_27D73B050, &unk_225CD3AD0);

    v24 = sub_225B2C374(v16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v34[0] = v24;
    sub_225B2C4A0(v17, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, v34);

    v26 = v34[0];
    v27 = sub_225B29AA0(0, 1, 1, v16);
    v29 = *(v27 + 2);
    v28 = *(v27 + 3);
    if (v29 >= v28 >> 1)
    {
      v27 = sub_225B29AA0((v28 > 1), v29 + 1, 1, v27);
    }

    if (v23)
    {
      v30 = 107;
    }

    else
    {
      v30 = 23;
    }

    *(v27 + 2) = v29 + 1;
    v31 = &v27[56 * v29];
    *(v31 + 4) = 0;
    *(v31 + 5) = 0xE000000000000000;
    *(v31 + 6) = 0xD000000000000029;
    *(v31 + 7) = 0x8000000225D2A6B0;
    *(v31 + 8) = 0xD000000000000023;
    *(v31 + 9) = 0x8000000225D2A620;
    *(v31 + 10) = 220;
    *v20 = v30;
    *(v20 + 8) = v27;
    *(v20 + 16) = 0;
    *(v20 + 24) = 0xE000000000000000;
    *(v20 + 32) = v26;
    *(v20 + 40) = 0;
    v0[18] = v18;
    sub_225CCE924();
    __swift_destroy_boxed_opaque_existential_0(v0 + 8);

    v32 = v0[1];

    return v32();
  }
}

uint64_t sub_225C885D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[23] = a6;
  v7[24] = a7;
  v7[21] = a4;
  v7[22] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  v7[25] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7427A8, &qword_225D01170);
  v7[26] = v8;
  v9 = *(v8 - 8);
  v7[27] = v9;
  v7[28] = *(v9 + 64);
  v7[29] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_225C886E0, 0, 0);
}

uint64_t sub_225C886E0()
{
  v35 = v0;
  v1 = v0[29];
  v2 = v0[26];
  v3 = v0[27];
  v5 = v0[21];
  v4 = v0[22];
  os_unfair_lock_lock((v5 + 24));
  v6 = *(v5 + 16);
  (*(v3 + 16))(v1, v4, v2);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, v1, v2);
  v0[6] = sub_225C8FAD8;
  v0[7] = v8;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_225CBFB0C;
  v0[5] = &block_descriptor_272;
  v9 = _Block_copy(v0 + 2);

  v10 = [v6 remoteObjectProxyWithErrorHandler_];
  _Block_release(v9);
  sub_225CCF0A4();
  swift_unknownObjectRelease();
  os_unfair_lock_unlock((v5 + 24));
  sub_2259CB810((v0 + 8), (v0 + 12));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D742770, &qword_225D00FC8);
  if (swift_dynamicCast() && (v11 = v0[17], (v0[30] = v11) != 0))
  {
    v12 = v0[23];
    v0[16] = v11;
    v33 = (v12 + *v12);
    v13 = swift_task_alloc();
    v0[31] = v13;
    *v13 = v0;
    v13[1] = sub_225C84F88;

    return (v33)(v0 + 19, v0 + 16);
  }

  else
  {
    v15 = v0[25];
    v34[0] = 0;
    v34[1] = 0xE000000000000000;
    sub_225CCF204();
    MEMORY[0x22AA6CE70](0xD000000000000014, 0x8000000225D2A650);
    __swift_project_boxed_opaque_existential_1(v0 + 8, v0[11]);
    sub_225CCF904();
    MEMORY[0x22AA6CE70](0xD000000000000013, 0x8000000225D2A670);
    MEMORY[0x22AA6CE70](0xD00000000000001CLL, 0x8000000225D2A700);
    v16 = MEMORY[0x277D84F90];
    v17 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v18 = swift_allocError();
    v20 = v19;
    v21 = sub_225CCE954();
    v22 = *(v21 - 8);
    (*(v22 + 56))(v15, 1, 1, v21);
    v23 = (*(v22 + 48))(v15, 1, v21);
    sub_2259CB640(v15, &unk_27D73B050, &unk_225CD3AD0);

    v24 = sub_225B2C374(v16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v34[0] = v24;
    sub_225B2C4A0(v17, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, v34);

    v26 = v34[0];
    v27 = sub_225B29AA0(0, 1, 1, v16);
    v29 = *(v27 + 2);
    v28 = *(v27 + 3);
    if (v29 >= v28 >> 1)
    {
      v27 = sub_225B29AA0((v28 > 1), v29 + 1, 1, v27);
    }

    if (v23)
    {
      v30 = 107;
    }

    else
    {
      v30 = 23;
    }

    *(v27 + 2) = v29 + 1;
    v31 = &v27[56 * v29];
    *(v31 + 4) = 0;
    *(v31 + 5) = 0xE000000000000000;
    *(v31 + 6) = 0xD000000000000029;
    *(v31 + 7) = 0x8000000225D2A6B0;
    *(v31 + 8) = 0xD000000000000023;
    *(v31 + 9) = 0x8000000225D2A620;
    *(v31 + 10) = 220;
    *v20 = v30;
    *(v20 + 8) = v27;
    *(v20 + 16) = 0;
    *(v20 + 24) = 0xE000000000000000;
    *(v20 + 32) = v26;
    *(v20 + 40) = 0;
    v0[18] = v18;
    sub_225CCE924();
    __swift_destroy_boxed_opaque_existential_0(v0 + 8);

    v32 = v0[1];

    return v32();
  }
}

uint64_t sub_225C88C54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[24] = a6;
  v7[25] = a7;
  v7[22] = a4;
  v7[23] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  v7[26] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B0D8, &qword_225CD7B58);
  v7[27] = v8;
  v9 = *(v8 - 8);
  v7[28] = v9;
  v7[29] = *(v9 + 64);
  v7[30] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_225C88D64, 0, 0);
}

uint64_t sub_225C88D64()
{
  v35 = v0;
  v1 = v0[30];
  v2 = v0[27];
  v3 = v0[28];
  v5 = v0[22];
  v4 = v0[23];
  os_unfair_lock_lock((v5 + 24));
  v6 = *(v5 + 16);
  (*(v3 + 16))(v1, v4, v2);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, v1, v2);
  v0[6] = sub_225C8F7A0;
  v0[7] = v8;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_225CBFB0C;
  v0[5] = &block_descriptor_248;
  v9 = _Block_copy(v0 + 2);

  v10 = [v6 remoteObjectProxyWithErrorHandler_];
  _Block_release(v9);
  sub_225CCF0A4();
  swift_unknownObjectRelease();
  os_unfair_lock_unlock((v5 + 24));
  sub_2259CB810((v0 + 8), (v0 + 12));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D742770, &qword_225D00FC8);
  if (swift_dynamicCast() && (v11 = v0[19], (v0[31] = v11) != 0))
  {
    v12 = v0[24];
    v0[18] = v11;
    v33 = (v12 + *v12);
    v13 = swift_task_alloc();
    v0[32] = v13;
    *v13 = v0;
    v13[1] = sub_225C838AC;

    return (v33)(v0 + 16, v0 + 18);
  }

  else
  {
    v15 = v0[26];
    v34[0] = 0;
    v34[1] = 0xE000000000000000;
    sub_225CCF204();
    MEMORY[0x22AA6CE70](0xD000000000000014, 0x8000000225D2A650);
    __swift_project_boxed_opaque_existential_1(v0 + 8, v0[11]);
    sub_225CCF904();
    MEMORY[0x22AA6CE70](0xD000000000000013, 0x8000000225D2A670);
    MEMORY[0x22AA6CE70](0xD00000000000001CLL, 0x8000000225D2A700);
    v16 = MEMORY[0x277D84F90];
    v17 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v18 = swift_allocError();
    v20 = v19;
    v21 = sub_225CCE954();
    v22 = *(v21 - 8);
    (*(v22 + 56))(v15, 1, 1, v21);
    v23 = (*(v22 + 48))(v15, 1, v21);
    sub_2259CB640(v15, &unk_27D73B050, &unk_225CD3AD0);

    v24 = sub_225B2C374(v16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v34[0] = v24;
    sub_225B2C4A0(v17, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, v34);

    v26 = v34[0];
    v27 = sub_225B29AA0(0, 1, 1, v16);
    v29 = *(v27 + 2);
    v28 = *(v27 + 3);
    if (v29 >= v28 >> 1)
    {
      v27 = sub_225B29AA0((v28 > 1), v29 + 1, 1, v27);
    }

    if (v23)
    {
      v30 = 107;
    }

    else
    {
      v30 = 23;
    }

    *(v27 + 2) = v29 + 1;
    v31 = &v27[56 * v29];
    *(v31 + 4) = 0;
    *(v31 + 5) = 0xE000000000000000;
    *(v31 + 6) = 0xD000000000000029;
    *(v31 + 7) = 0x8000000225D2A6B0;
    *(v31 + 8) = 0xD000000000000023;
    *(v31 + 9) = 0x8000000225D2A620;
    *(v31 + 10) = 220;
    *v20 = v30;
    *(v20 + 8) = v27;
    *(v20 + 16) = 0;
    *(v20 + 24) = 0xE000000000000000;
    *(v20 + 32) = v26;
    *(v20 + 40) = 0;
    v0[20] = v18;
    sub_225CCE924();
    __swift_destroy_boxed_opaque_existential_0(v0 + 8);

    v32 = v0[1];

    return v32();
  }
}

uint64_t sub_225C892D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[23] = a6;
  v7[24] = a7;
  v7[21] = a4;
  v7[22] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  v7[25] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7427A0, &qword_225D02A90);
  v7[26] = v8;
  v9 = *(v8 - 8);
  v7[27] = v9;
  v7[28] = *(v9 + 64);
  v7[29] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_225C893E8, 0, 0);
}

uint64_t sub_225C893E8()
{
  v35 = v0;
  v1 = v0[29];
  v2 = v0[26];
  v3 = v0[27];
  v5 = v0[21];
  v4 = v0[22];
  os_unfair_lock_lock((v5 + 24));
  v6 = *(v5 + 16);
  (*(v3 + 16))(v1, v4, v2);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, v1, v2);
  v0[6] = sub_225C8F468;
  v0[7] = v8;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_225CBFB0C;
  v0[5] = &block_descriptor_222;
  v9 = _Block_copy(v0 + 2);

  v10 = [v6 remoteObjectProxyWithErrorHandler_];
  _Block_release(v9);
  sub_225CCF0A4();
  swift_unknownObjectRelease();
  os_unfair_lock_unlock((v5 + 24));
  sub_2259CB810((v0 + 8), (v0 + 12));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D742770, &qword_225D00FC8);
  if (swift_dynamicCast() && (v11 = v0[17], (v0[30] = v11) != 0))
  {
    v12 = v0[23];
    v0[16] = v11;
    v33 = (v12 + *v12);
    v13 = swift_task_alloc();
    v0[31] = v13;
    *v13 = v0;
    v13[1] = sub_225C84F88;

    return (v33)(v0 + 19, v0 + 16);
  }

  else
  {
    v15 = v0[25];
    v34[0] = 0;
    v34[1] = 0xE000000000000000;
    sub_225CCF204();
    MEMORY[0x22AA6CE70](0xD000000000000014, 0x8000000225D2A650);
    __swift_project_boxed_opaque_existential_1(v0 + 8, v0[11]);
    sub_225CCF904();
    MEMORY[0x22AA6CE70](0xD000000000000013, 0x8000000225D2A670);
    MEMORY[0x22AA6CE70](0xD00000000000001CLL, 0x8000000225D2A700);
    v16 = MEMORY[0x277D84F90];
    v17 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v18 = swift_allocError();
    v20 = v19;
    v21 = sub_225CCE954();
    v22 = *(v21 - 8);
    (*(v22 + 56))(v15, 1, 1, v21);
    v23 = (*(v22 + 48))(v15, 1, v21);
    sub_2259CB640(v15, &unk_27D73B050, &unk_225CD3AD0);

    v24 = sub_225B2C374(v16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v34[0] = v24;
    sub_225B2C4A0(v17, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, v34);

    v26 = v34[0];
    v27 = sub_225B29AA0(0, 1, 1, v16);
    v29 = *(v27 + 2);
    v28 = *(v27 + 3);
    if (v29 >= v28 >> 1)
    {
      v27 = sub_225B29AA0((v28 > 1), v29 + 1, 1, v27);
    }

    if (v23)
    {
      v30 = 107;
    }

    else
    {
      v30 = 23;
    }

    *(v27 + 2) = v29 + 1;
    v31 = &v27[56 * v29];
    *(v31 + 4) = 0;
    *(v31 + 5) = 0xE000000000000000;
    *(v31 + 6) = 0xD000000000000029;
    *(v31 + 7) = 0x8000000225D2A6B0;
    *(v31 + 8) = 0xD000000000000023;
    *(v31 + 9) = 0x8000000225D2A620;
    *(v31 + 10) = 220;
    *v20 = v30;
    *(v20 + 8) = v27;
    *(v20 + 16) = 0;
    *(v20 + 24) = 0xE000000000000000;
    *(v20 + 32) = v26;
    *(v20 + 40) = 0;
    v0[18] = v18;
    sub_225CCE924();
    __swift_destroy_boxed_opaque_existential_0(v0 + 8);

    v32 = v0[1];

    return v32();
  }
}

uint64_t sub_225C8995C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[24] = a6;
  v7[25] = a7;
  v7[22] = a4;
  v7[23] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  v7[26] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D742798, &qword_225D010A8);
  v7[27] = v8;
  v9 = *(v8 - 8);
  v7[28] = v9;
  v7[29] = *(v9 + 64);
  v7[30] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_225C89A6C, 0, 0);
}

uint64_t sub_225C89A6C()
{
  v35 = v0;
  v1 = v0[30];
  v2 = v0[27];
  v3 = v0[28];
  v5 = v0[22];
  v4 = v0[23];
  os_unfair_lock_lock((v5 + 24));
  v6 = *(v5 + 16);
  (*(v3 + 16))(v1, v4, v2);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, v1, v2);
  v0[6] = sub_225C8F130;
  v0[7] = v8;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_225CBFB0C;
  v0[5] = &block_descriptor_198;
  v9 = _Block_copy(v0 + 2);

  v10 = [v6 remoteObjectProxyWithErrorHandler_];
  _Block_release(v9);
  sub_225CCF0A4();
  swift_unknownObjectRelease();
  os_unfair_lock_unlock((v5 + 24));
  sub_2259CB810((v0 + 8), (v0 + 12));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D742770, &qword_225D00FC8);
  if (swift_dynamicCast() && (v11 = v0[19], (v0[31] = v11) != 0))
  {
    v12 = v0[24];
    v0[18] = v11;
    v33 = (v12 + *v12);
    v13 = swift_task_alloc();
    v0[32] = v13;
    *v13 = v0;
    v13[1] = sub_225C838AC;

    return (v33)(v0 + 16, v0 + 18);
  }

  else
  {
    v15 = v0[26];
    v34[0] = 0;
    v34[1] = 0xE000000000000000;
    sub_225CCF204();
    MEMORY[0x22AA6CE70](0xD000000000000014, 0x8000000225D2A650);
    __swift_project_boxed_opaque_existential_1(v0 + 8, v0[11]);
    sub_225CCF904();
    MEMORY[0x22AA6CE70](0xD000000000000013, 0x8000000225D2A670);
    MEMORY[0x22AA6CE70](0xD00000000000001CLL, 0x8000000225D2A700);
    v16 = MEMORY[0x277D84F90];
    v17 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v18 = swift_allocError();
    v20 = v19;
    v21 = sub_225CCE954();
    v22 = *(v21 - 8);
    (*(v22 + 56))(v15, 1, 1, v21);
    v23 = (*(v22 + 48))(v15, 1, v21);
    sub_2259CB640(v15, &unk_27D73B050, &unk_225CD3AD0);

    v24 = sub_225B2C374(v16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v34[0] = v24;
    sub_225B2C4A0(v17, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, v34);

    v26 = v34[0];
    v27 = sub_225B29AA0(0, 1, 1, v16);
    v29 = *(v27 + 2);
    v28 = *(v27 + 3);
    if (v29 >= v28 >> 1)
    {
      v27 = sub_225B29AA0((v28 > 1), v29 + 1, 1, v27);
    }

    if (v23)
    {
      v30 = 107;
    }

    else
    {
      v30 = 23;
    }

    *(v27 + 2) = v29 + 1;
    v31 = &v27[56 * v29];
    *(v31 + 4) = 0;
    *(v31 + 5) = 0xE000000000000000;
    *(v31 + 6) = 0xD000000000000029;
    *(v31 + 7) = 0x8000000225D2A6B0;
    *(v31 + 8) = 0xD000000000000023;
    *(v31 + 9) = 0x8000000225D2A620;
    *(v31 + 10) = 220;
    *v20 = v30;
    *(v20 + 8) = v27;
    *(v20 + 16) = 0;
    *(v20 + 24) = 0xE000000000000000;
    *(v20 + 32) = v26;
    *(v20 + 40) = 0;
    v0[20] = v18;
    sub_225CCE924();
    __swift_destroy_boxed_opaque_existential_0(v0 + 8);

    v32 = v0[1];

    return v32();
  }
}

uint64_t sub_225C89FE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[23] = a6;
  v7[24] = a7;
  v7[21] = a4;
  v7[22] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  v7[25] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D742790, &unk_225D02A80);
  v7[26] = v8;
  v9 = *(v8 - 8);
  v7[27] = v9;
  v7[28] = *(v9 + 64);
  v7[29] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_225C8A0F0, 0, 0);
}

uint64_t sub_225C8A0F0()
{
  v35 = v0;
  v1 = v0[29];
  v2 = v0[26];
  v3 = v0[27];
  v5 = v0[21];
  v4 = v0[22];
  os_unfair_lock_lock((v5 + 24));
  v6 = *(v5 + 16);
  (*(v3 + 16))(v1, v4, v2);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, v1, v2);
  v0[6] = sub_225C8EDF8;
  v0[7] = v8;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_225CBFB0C;
  v0[5] = &block_descriptor_174;
  v9 = _Block_copy(v0 + 2);

  v10 = [v6 remoteObjectProxyWithErrorHandler_];
  _Block_release(v9);
  sub_225CCF0A4();
  swift_unknownObjectRelease();
  os_unfair_lock_unlock((v5 + 24));
  sub_2259CB810((v0 + 8), (v0 + 12));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D742770, &qword_225D00FC8);
  if (swift_dynamicCast() && (v11 = v0[17], (v0[30] = v11) != 0))
  {
    v12 = v0[23];
    v0[16] = v11;
    v33 = (v12 + *v12);
    v13 = swift_task_alloc();
    v0[31] = v13;
    *v13 = v0;
    v13[1] = sub_225C84F88;

    return (v33)(v0 + 19, v0 + 16);
  }

  else
  {
    v15 = v0[25];
    v34[0] = 0;
    v34[1] = 0xE000000000000000;
    sub_225CCF204();
    MEMORY[0x22AA6CE70](0xD000000000000014, 0x8000000225D2A650);
    __swift_project_boxed_opaque_existential_1(v0 + 8, v0[11]);
    sub_225CCF904();
    MEMORY[0x22AA6CE70](0xD000000000000013, 0x8000000225D2A670);
    MEMORY[0x22AA6CE70](0xD00000000000001CLL, 0x8000000225D2A700);
    v16 = MEMORY[0x277D84F90];
    v17 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v18 = swift_allocError();
    v20 = v19;
    v21 = sub_225CCE954();
    v22 = *(v21 - 8);
    (*(v22 + 56))(v15, 1, 1, v21);
    v23 = (*(v22 + 48))(v15, 1, v21);
    sub_2259CB640(v15, &unk_27D73B050, &unk_225CD3AD0);

    v24 = sub_225B2C374(v16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v34[0] = v24;
    sub_225B2C4A0(v17, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, v34);

    v26 = v34[0];
    v27 = sub_225B29AA0(0, 1, 1, v16);
    v29 = *(v27 + 2);
    v28 = *(v27 + 3);
    if (v29 >= v28 >> 1)
    {
      v27 = sub_225B29AA0((v28 > 1), v29 + 1, 1, v27);
    }

    if (v23)
    {
      v30 = 107;
    }

    else
    {
      v30 = 23;
    }

    *(v27 + 2) = v29 + 1;
    v31 = &v27[56 * v29];
    *(v31 + 4) = 0;
    *(v31 + 5) = 0xE000000000000000;
    *(v31 + 6) = 0xD000000000000029;
    *(v31 + 7) = 0x8000000225D2A6B0;
    *(v31 + 8) = 0xD000000000000023;
    *(v31 + 9) = 0x8000000225D2A620;
    *(v31 + 10) = 220;
    *v20 = v30;
    *(v20 + 8) = v27;
    *(v20 + 16) = 0;
    *(v20 + 24) = 0xE000000000000000;
    *(v20 + 32) = v26;
    *(v20 + 40) = 0;
    v0[18] = v18;
    sub_225CCE924();
    __swift_destroy_boxed_opaque_existential_0(v0 + 8);

    v32 = v0[1];

    return v32();
  }
}

uint64_t sub_225C8A664(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[23] = a6;
  v7[24] = a7;
  v7[21] = a4;
  v7[22] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  v7[25] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D742788, &unk_225D02A70);
  v7[26] = v8;
  v9 = *(v8 - 8);
  v7[27] = v9;
  v7[28] = *(v9 + 64);
  v7[29] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_225C8A774, 0, 0);
}

uint64_t sub_225C8A774()
{
  v35 = v0;
  v1 = v0[29];
  v2 = v0[26];
  v3 = v0[27];
  v5 = v0[21];
  v4 = v0[22];
  os_unfair_lock_lock((v5 + 24));
  v6 = *(v5 + 16);
  (*(v3 + 16))(v1, v4, v2);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, v1, v2);
  v0[6] = sub_225C8EAC0;
  v0[7] = v8;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_225CBFB0C;
  v0[5] = &block_descriptor_150;
  v9 = _Block_copy(v0 + 2);

  v10 = [v6 remoteObjectProxyWithErrorHandler_];
  _Block_release(v9);
  sub_225CCF0A4();
  swift_unknownObjectRelease();
  os_unfair_lock_unlock((v5 + 24));
  sub_2259CB810((v0 + 8), (v0 + 12));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D742770, &qword_225D00FC8);
  if (swift_dynamicCast() && (v11 = v0[17], (v0[30] = v11) != 0))
  {
    v12 = v0[23];
    v0[16] = v11;
    v33 = (v12 + *v12);
    v13 = swift_task_alloc();
    v0[31] = v13;
    *v13 = v0;
    v13[1] = sub_225C84F88;

    return (v33)(v0 + 19, v0 + 16);
  }

  else
  {
    v15 = v0[25];
    v34[0] = 0;
    v34[1] = 0xE000000000000000;
    sub_225CCF204();
    MEMORY[0x22AA6CE70](0xD000000000000014, 0x8000000225D2A650);
    __swift_project_boxed_opaque_existential_1(v0 + 8, v0[11]);
    sub_225CCF904();
    MEMORY[0x22AA6CE70](0xD000000000000013, 0x8000000225D2A670);
    MEMORY[0x22AA6CE70](0xD00000000000001CLL, 0x8000000225D2A700);
    v16 = MEMORY[0x277D84F90];
    v17 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v18 = swift_allocError();
    v20 = v19;
    v21 = sub_225CCE954();
    v22 = *(v21 - 8);
    (*(v22 + 56))(v15, 1, 1, v21);
    v23 = (*(v22 + 48))(v15, 1, v21);
    sub_2259CB640(v15, &unk_27D73B050, &unk_225CD3AD0);

    v24 = sub_225B2C374(v16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v34[0] = v24;
    sub_225B2C4A0(v17, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, v34);

    v26 = v34[0];
    v27 = sub_225B29AA0(0, 1, 1, v16);
    v29 = *(v27 + 2);
    v28 = *(v27 + 3);
    if (v29 >= v28 >> 1)
    {
      v27 = sub_225B29AA0((v28 > 1), v29 + 1, 1, v27);
    }

    if (v23)
    {
      v30 = 107;
    }

    else
    {
      v30 = 23;
    }

    *(v27 + 2) = v29 + 1;
    v31 = &v27[56 * v29];
    *(v31 + 4) = 0;
    *(v31 + 5) = 0xE000000000000000;
    *(v31 + 6) = 0xD000000000000029;
    *(v31 + 7) = 0x8000000225D2A6B0;
    *(v31 + 8) = 0xD000000000000023;
    *(v31 + 9) = 0x8000000225D2A620;
    *(v31 + 10) = 220;
    *v20 = v30;
    *(v20 + 8) = v27;
    *(v20 + 16) = 0;
    *(v20 + 24) = 0xE000000000000000;
    *(v20 + 32) = v26;
    *(v20 + 40) = 0;
    v0[18] = v18;
    sub_225CCE924();
    __swift_destroy_boxed_opaque_existential_0(v0 + 8);

    v32 = v0[1];

    return v32();
  }
}

uint64_t sub_225C8ACE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[24] = a6;
  v7[25] = a7;
  v7[22] = a4;
  v7[23] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  v7[26] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D742778, &qword_225D00FE0);
  v7[27] = v8;
  v9 = *(v8 - 8);
  v7[28] = v9;
  v7[29] = *(v9 + 64);
  v7[30] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_225C8ADF8, 0, 0);
}

uint64_t sub_225C8ADF8()
{
  v35 = v0;
  v1 = v0[30];
  v2 = v0[27];
  v3 = v0[28];
  v5 = v0[22];
  v4 = v0[23];
  os_unfair_lock_lock((v5 + 24));
  v6 = *(v5 + 16);
  (*(v3 + 16))(v1, v4, v2);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, v1, v2);
  v0[6] = sub_225C8E788;
  v0[7] = v8;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_225CBFB0C;
  v0[5] = &block_descriptor_126;
  v9 = _Block_copy(v0 + 2);

  v10 = [v6 remoteObjectProxyWithErrorHandler_];
  _Block_release(v9);
  sub_225CCF0A4();
  swift_unknownObjectRelease();
  os_unfair_lock_unlock((v5 + 24));
  sub_2259CB810((v0 + 8), (v0 + 12));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D742770, &qword_225D00FC8);
  if (swift_dynamicCast() && (v11 = v0[19], (v0[31] = v11) != 0))
  {
    v12 = v0[24];
    v0[18] = v11;
    v33 = (v12 + *v12);
    v13 = swift_task_alloc();
    v0[32] = v13;
    *v13 = v0;
    v13[1] = sub_225C838AC;

    return (v33)(v0 + 16, v0 + 18);
  }

  else
  {
    v15 = v0[26];
    v34[0] = 0;
    v34[1] = 0xE000000000000000;
    sub_225CCF204();
    MEMORY[0x22AA6CE70](0xD000000000000014, 0x8000000225D2A650);
    __swift_project_boxed_opaque_existential_1(v0 + 8, v0[11]);
    sub_225CCF904();
    MEMORY[0x22AA6CE70](0xD000000000000013, 0x8000000225D2A670);
    MEMORY[0x22AA6CE70](0xD00000000000001CLL, 0x8000000225D2A700);
    v16 = MEMORY[0x277D84F90];
    v17 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v18 = swift_allocError();
    v20 = v19;
    v21 = sub_225CCE954();
    v22 = *(v21 - 8);
    (*(v22 + 56))(v15, 1, 1, v21);
    v23 = (*(v22 + 48))(v15, 1, v21);
    sub_2259CB640(v15, &unk_27D73B050, &unk_225CD3AD0);

    v24 = sub_225B2C374(v16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v34[0] = v24;
    sub_225B2C4A0(v17, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, v34);

    v26 = v34[0];
    v27 = sub_225B29AA0(0, 1, 1, v16);
    v29 = *(v27 + 2);
    v28 = *(v27 + 3);
    if (v29 >= v28 >> 1)
    {
      v27 = sub_225B29AA0((v28 > 1), v29 + 1, 1, v27);
    }

    if (v23)
    {
      v30 = 107;
    }

    else
    {
      v30 = 23;
    }

    *(v27 + 2) = v29 + 1;
    v31 = &v27[56 * v29];
    *(v31 + 4) = 0;
    *(v31 + 5) = 0xE000000000000000;
    *(v31 + 6) = 0xD000000000000029;
    *(v31 + 7) = 0x8000000225D2A6B0;
    *(v31 + 8) = 0xD000000000000023;
    *(v31 + 9) = 0x8000000225D2A620;
    *(v31 + 10) = 220;
    *v20 = v30;
    *(v20 + 8) = v27;
    *(v20 + 16) = 0;
    *(v20 + 24) = 0xE000000000000000;
    *(v20 + 32) = v26;
    *(v20 + 40) = 0;
    v0[20] = v18;
    sub_225CCE924();
    __swift_destroy_boxed_opaque_existential_0(v0 + 8);

    v32 = v0[1];

    return v32();
  }
}

uint64_t sub_225C8B36C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[22] = a6;
  v7[23] = a7;
  v7[20] = a4;
  v7[21] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  v7[24] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73FD10, &unk_225CD7600);
  v7[25] = v8;
  v9 = *(v8 - 8);
  v7[26] = v9;
  v7[27] = *(v9 + 64);
  v7[28] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_225C8B47C, 0, 0);
}

uint64_t sub_225C8B47C()
{
  v35 = v0;
  v1 = v0[28];
  v2 = v0[25];
  v3 = v0[26];
  v5 = v0[20];
  v4 = v0[21];
  os_unfair_lock_lock((v5 + 24));
  v6 = *(v5 + 16);
  (*(v3 + 16))(v1, v4, v2);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, v1, v2);
  v0[6] = sub_225C92B78;
  v0[7] = v8;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_225CBFB0C;
  v0[5] = &block_descriptor_37;
  v9 = _Block_copy(v0 + 2);

  v10 = [v6 remoteObjectProxyWithErrorHandler_];
  _Block_release(v9);
  sub_225CCF0A4();
  swift_unknownObjectRelease();
  os_unfair_lock_unlock((v5 + 24));
  sub_2259CB810((v0 + 8), (v0 + 12));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D742760, &unk_225D00EF0);
  if (swift_dynamicCast() && (v11 = v0[17], (v0[29] = v11) != 0))
  {
    v12 = v0[22];
    v0[16] = v11;
    v33 = (v12 + *v12);
    v13 = swift_task_alloc();
    v0[30] = v13;
    *v13 = v0;
    v13[1] = sub_225C83114;

    return v33();
  }

  else
  {
    v15 = v0[24];
    v34[0] = 0;
    v34[1] = 0xE000000000000000;
    sub_225CCF204();
    MEMORY[0x22AA6CE70](0xD000000000000014, 0x8000000225D2A650);
    __swift_project_boxed_opaque_existential_1(v0 + 8, v0[11]);
    sub_225CCF904();
    MEMORY[0x22AA6CE70](0xD000000000000013, 0x8000000225D2A670);
    MEMORY[0x22AA6CE70](0xD00000000000001BLL, 0x8000000225D2A690);
    v16 = MEMORY[0x277D84F90];
    v17 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v18 = swift_allocError();
    v20 = v19;
    v21 = sub_225CCE954();
    v22 = *(v21 - 8);
    (*(v22 + 56))(v15, 1, 1, v21);
    v23 = (*(v22 + 48))(v15, 1, v21);
    sub_2259CB640(v15, &unk_27D73B050, &unk_225CD3AD0);

    v24 = sub_225B2C374(v16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v34[0] = v24;
    sub_225B2C4A0(v17, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, v34);

    v26 = v34[0];
    v27 = sub_225B29AA0(0, 1, 1, v16);
    v29 = *(v27 + 2);
    v28 = *(v27 + 3);
    if (v29 >= v28 >> 1)
    {
      v27 = sub_225B29AA0((v28 > 1), v29 + 1, 1, v27);
    }

    if (v23)
    {
      v30 = 107;
    }

    else
    {
      v30 = 23;
    }

    *(v27 + 2) = v29 + 1;
    v31 = &v27[56 * v29];
    *(v31 + 4) = 0;
    *(v31 + 5) = 0xE000000000000000;
    *(v31 + 6) = 0xD000000000000029;
    *(v31 + 7) = 0x8000000225D2A6B0;
    *(v31 + 8) = 0xD000000000000023;
    *(v31 + 9) = 0x8000000225D2A620;
    *(v31 + 10) = 220;
    *v20 = v30;
    *(v20 + 8) = v27;
    *(v20 + 16) = 0;
    *(v20 + 24) = 0xE000000000000000;
    *(v20 + 32) = v26;
    *(v20 + 40) = 0;
    v0[18] = v18;
    sub_225CCE924();
    __swift_destroy_boxed_opaque_existential_0(v0 + 8);

    v32 = v0[1];

    return v32();
  }
}

uint64_t sub_225C8B9E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[23] = a6;
  v7[24] = a7;
  v7[21] = a4;
  v7[22] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  v7[25] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D742768, &qword_225D00F70);
  v7[26] = v8;
  v9 = *(v8 - 8);
  v7[27] = v9;
  v7[28] = *(v9 + 64);
  v7[29] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_225C8BAF8, 0, 0);
}

uint64_t sub_225C8BAF8()
{
  v35 = v0;
  v1 = v0[29];
  v2 = v0[26];
  v3 = v0[27];
  v5 = v0[21];
  v4 = v0[22];
  os_unfair_lock_lock((v5 + 24));
  v6 = *(v5 + 16);
  (*(v3 + 16))(v1, v4, v2);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, v1, v2);
  v0[6] = sub_225C8E2BC;
  v0[7] = v8;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_225CBFB0C;
  v0[5] = &block_descriptor_89;
  v9 = _Block_copy(v0 + 2);

  v10 = [v6 remoteObjectProxyWithErrorHandler_];
  _Block_release(v9);
  sub_225CCF0A4();
  swift_unknownObjectRelease();
  os_unfair_lock_unlock((v5 + 24));
  sub_2259CB810((v0 + 8), (v0 + 12));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D742760, &unk_225D00EF0);
  if (swift_dynamicCast() && (v11 = v0[17], (v0[30] = v11) != 0))
  {
    v12 = v0[23];
    v0[16] = v11;
    v33 = (v12 + *v12);
    v13 = swift_task_alloc();
    v0[31] = v13;
    *v13 = v0;
    v13[1] = sub_225C8C06C;

    return (v33)(v0 + 19, v0 + 16);
  }

  else
  {
    v15 = v0[25];
    v34[0] = 0;
    v34[1] = 0xE000000000000000;
    sub_225CCF204();
    MEMORY[0x22AA6CE70](0xD000000000000014, 0x8000000225D2A650);
    __swift_project_boxed_opaque_existential_1(v0 + 8, v0[11]);
    sub_225CCF904();
    MEMORY[0x22AA6CE70](0xD000000000000013, 0x8000000225D2A670);
    MEMORY[0x22AA6CE70](0xD00000000000001BLL, 0x8000000225D2A690);
    v16 = MEMORY[0x277D84F90];
    v17 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v18 = swift_allocError();
    v20 = v19;
    v21 = sub_225CCE954();
    v22 = *(v21 - 8);
    (*(v22 + 56))(v15, 1, 1, v21);
    v23 = (*(v22 + 48))(v15, 1, v21);
    sub_2259CB640(v15, &unk_27D73B050, &unk_225CD3AD0);

    v24 = sub_225B2C374(v16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v34[0] = v24;
    sub_225B2C4A0(v17, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, v34);

    v26 = v34[0];
    v27 = sub_225B29AA0(0, 1, 1, v16);
    v29 = *(v27 + 2);
    v28 = *(v27 + 3);
    if (v29 >= v28 >> 1)
    {
      v27 = sub_225B29AA0((v28 > 1), v29 + 1, 1, v27);
    }

    if (v23)
    {
      v30 = 107;
    }

    else
    {
      v30 = 23;
    }

    *(v27 + 2) = v29 + 1;
    v31 = &v27[56 * v29];
    *(v31 + 4) = 0;
    *(v31 + 5) = 0xE000000000000000;
    *(v31 + 6) = 0xD000000000000029;
    *(v31 + 7) = 0x8000000225D2A6B0;
    *(v31 + 8) = 0xD000000000000023;
    *(v31 + 9) = 0x8000000225D2A620;
    *(v31 + 10) = 220;
    *v20 = v30;
    *(v20 + 8) = v27;
    *(v20 + 16) = 0;
    *(v20 + 24) = 0xE000000000000000;
    *(v20 + 32) = v26;
    *(v20 + 40) = 0;
    v0[18] = v18;
    sub_225CCE924();
    __swift_destroy_boxed_opaque_existential_0(v0 + 8);

    v32 = v0[1];

    return v32();
  }
}

uint64_t sub_225C8C06C()
{
  *(*v1 + 256) = v0;

  if (v0)
  {
    v2 = sub_225C8C210;
  }

  else
  {
    v2 = sub_225C8C180;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_225C8C180()
{
  sub_225CCE934();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0((v0 + 64));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_225C8C210()
{
  v1 = v0[32];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v0 + 8);
  v0[20] = v1;
  sub_225CCE924();

  v2 = v0[1];

  return v2();
}

uint64_t sub_225C8C2B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[22] = a6;
  v7[23] = a7;
  v7[20] = a4;
  v7[21] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  v7[24] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AF08, &qword_225CD4B60);
  v7[25] = v8;
  v9 = *(v8 - 8);
  v7[26] = v9;
  v7[27] = *(v9 + 64);
  v7[28] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_225C8C3C0, 0, 0);
}

uint64_t sub_225C8C3C0()
{
  v35 = v0;
  v1 = v0[28];
  v2 = v0[25];
  v3 = v0[26];
  v5 = v0[20];
  v4 = v0[21];
  os_unfair_lock_lock((v5 + 24));
  v6 = *(v5 + 16);
  (*(v3 + 16))(v1, v4, v2);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, v1, v2);
  v0[6] = sub_225C8DDF4;
  v0[7] = v8;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_225CBFB0C;
  v0[5] = &block_descriptor_52;
  v9 = _Block_copy(v0 + 2);

  v10 = [v6 remoteObjectProxyWithErrorHandler_];
  _Block_release(v9);
  sub_225CCF0A4();
  swift_unknownObjectRelease();
  os_unfair_lock_unlock((v5 + 24));
  sub_2259CB810((v0 + 8), (v0 + 12));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D742760, &unk_225D00EF0);
  if (swift_dynamicCast() && (v11 = v0[17], (v0[29] = v11) != 0))
  {
    v12 = v0[22];
    v0[16] = v11;
    v33 = (v12 + *v12);
    v13 = swift_task_alloc();
    v0[30] = v13;
    *v13 = v0;
    v13[1] = sub_225C8C934;

    return (v33)(v0 + 32, v0 + 16);
  }

  else
  {
    v15 = v0[24];
    v34[0] = 0;
    v34[1] = 0xE000000000000000;
    sub_225CCF204();
    MEMORY[0x22AA6CE70](0xD000000000000014, 0x8000000225D2A650);
    __swift_project_boxed_opaque_existential_1(v0 + 8, v0[11]);
    sub_225CCF904();
    MEMORY[0x22AA6CE70](0xD000000000000013, 0x8000000225D2A670);
    MEMORY[0x22AA6CE70](0xD00000000000001BLL, 0x8000000225D2A690);
    v16 = MEMORY[0x277D84F90];
    v17 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v18 = swift_allocError();
    v20 = v19;
    v21 = sub_225CCE954();
    v22 = *(v21 - 8);
    (*(v22 + 56))(v15, 1, 1, v21);
    v23 = (*(v22 + 48))(v15, 1, v21);
    sub_2259CB640(v15, &unk_27D73B050, &unk_225CD3AD0);

    v24 = sub_225B2C374(v16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v34[0] = v24;
    sub_225B2C4A0(v17, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, v34);

    v26 = v34[0];
    v27 = sub_225B29AA0(0, 1, 1, v16);
    v29 = *(v27 + 2);
    v28 = *(v27 + 3);
    if (v29 >= v28 >> 1)
    {
      v27 = sub_225B29AA0((v28 > 1), v29 + 1, 1, v27);
    }

    if (v23)
    {
      v30 = 107;
    }

    else
    {
      v30 = 23;
    }

    *(v27 + 2) = v29 + 1;
    v31 = &v27[56 * v29];
    *(v31 + 4) = 0;
    *(v31 + 5) = 0xE000000000000000;
    *(v31 + 6) = 0xD000000000000029;
    *(v31 + 7) = 0x8000000225D2A6B0;
    *(v31 + 8) = 0xD000000000000023;
    *(v31 + 9) = 0x8000000225D2A620;
    *(v31 + 10) = 220;
    *v20 = v30;
    *(v20 + 8) = v27;
    *(v20 + 16) = 0;
    *(v20 + 24) = 0xE000000000000000;
    *(v20 + 32) = v26;
    *(v20 + 40) = 0;
    v0[18] = v18;
    sub_225CCE924();
    __swift_destroy_boxed_opaque_existential_0(v0 + 8);

    v32 = v0[1];

    return v32();
  }
}

uint64_t sub_225C8C934()
{
  *(*v1 + 248) = v0;

  if (v0)
  {
    v2 = sub_225C82130;
  }

  else
  {
    v2 = sub_225C8CA48;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_225C8CA48()
{
  sub_225CCE934();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0((v0 + 64));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_225C8CAD8(void *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v51 = a4;
  v50 = a3;
  v52 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  MEMORY[0x28223BE20](v5 - 8);
  v48 = &v48 - v6;
  v7 = sub_225CCD954();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v11 = off_28105B918;
  v12 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v13 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v13));
  (*(v8 + 16))(v10, &v11[v12], v7);
  os_unfair_lock_unlock(&v11[v13]);
  v14 = a1;
  v15 = sub_225CCD934();
  v16 = sub_225CCED14();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v54 = v18;
    *v17 = 136315138;
    swift_getErrorValue();
    v19 = sub_225CCFB24();
    v21 = sub_2259BE198(v19, v20, &v54);

    *(v17 + 4) = v21;
    _os_log_impl(&dword_2259A7000, v15, v16, "XPC connection error: %s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v18);
    MEMORY[0x22AA6F950](v18, -1, -1);
    MEMORY[0x22AA6F950](v17, -1, -1);
  }

  (*(v8 + 8))(v10, v7);
  v22 = sub_225B2C248(MEMORY[0x277D84F90]);
  sub_2259CB5EC();
  v49 = swift_allocError();
  v24 = v23;
  swift_getErrorValue();
  sub_225B21FAC(v60, &v54);
  v25 = v55;
  if (v55)
  {
    v26 = v54;
    v27 = v56;
    v28 = v57;
    v29 = v58;
    a1 = v59;
  }

  else
  {
    v54 = a1;
    v30 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48, &qword_225CD75F0);
    sub_2259E4540();
    if (swift_dynamicCast())
    {
      v31 = v53;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10, &unk_225CD4660);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_225CD30F0;
      *(inited + 32) = 20;
      v33 = [v31 code];
      v34 = MEMORY[0x277D83BF8];
      *(inited + 64) = MEMORY[0x277D83B88];
      *(inited + 72) = v34;
      *(inited + 40) = v33;
      v29 = sub_225B2C374(inited);
      swift_setDeallocating();
      sub_2259CB640(inited + 32, &qword_27D73B060, &unk_225CD3AE0);

      v35 = a1;
      v28 = 0;
      v27 = 0;
      v25 = MEMORY[0x277D84F90];
      v26 = 528;
    }

    else
    {
      v54 = a1;
      v36 = a1;
      v37 = sub_225CCE954();
      v38 = v48;
      v39 = swift_dynamicCast();
      v40 = *(v37 - 8);
      (*(v40 + 56))(v38, v39 ^ 1u, 1, v37);
      LODWORD(v40) = (*(v40 + 48))(v38, 1, v37);
      sub_2259CB640(v38, &unk_27D73B050, &unk_225CD3AD0);
      if (v40)
      {
        v26 = 528;
      }

      else
      {
        v26 = 23;
      }

      v25 = MEMORY[0x277D84F90];
      v29 = sub_225B2C374(MEMORY[0x277D84F90]);
      v41 = a1;
      v28 = 0x8000000225D2A6E0;
      v27 = 0xD000000000000014;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v54 = v29;
  sub_225B2C4A0(v22, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v54);

  v43 = v54;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v25 = sub_225B29AA0(0, *(v25 + 2) + 1, 1, v25);
  }

  v45 = *(v25 + 2);
  v44 = *(v25 + 3);
  if (v45 >= v44 >> 1)
  {
    v25 = sub_225B29AA0((v44 > 1), v45 + 1, 1, v25);
  }

  *(v25 + 2) = v45 + 1;
  v46 = &v25[56 * v45];
  *(v46 + 4) = 0xD000000000000014;
  *(v46 + 5) = 0x8000000225D2A6E0;
  *(v46 + 6) = 0xD000000000000029;
  *(v46 + 7) = 0x8000000225D2A6B0;
  *(v46 + 8) = 0xD000000000000023;
  *(v46 + 9) = 0x8000000225D2A620;
  *(v46 + 10) = 216;
  *v24 = v26;
  *(v24 + 8) = v25;
  *(v24 + 16) = v27;
  *(v24 + 24) = v28;
  *(v24 + 32) = v43;
  *(v24 + 40) = a1;
  v54 = v49;
  __swift_instantiateConcreteTypeFromMangledNameV2(v50, v51);
  return sub_225CCE924();
}

uint64_t sub_225C8D168(uint64_t a1, void *a2, int *a3)
{
  *(v3 + 16) = *a2;
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 24) = v4;
  *v4 = v3;
  v4[1] = sub_225C92AE8;

  return v6(v3 + 16);
}

uint64_t sub_225C8D264(uint64_t a1, void *a2, int *a3)
{
  *(v3 + 16) = *a2;
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 24) = v4;
  *v4 = v3;
  v4[1] = sub_225C8D360;

  return v6(v3 + 16);
}

uint64_t sub_225C8D360()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_225C8D454(uint64_t a1, uint64_t *a2)
{
  v6 = *(sub_225CCCEA4() - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_225A02E94;

  return sub_225C79444(a1, a2, v2 + v7);
}

uint64_t sub_225C8D538(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_225A02E94;

  return sub_225C7B2E0(a1, v4, v5, v6);
}

uint64_t sub_225C8D63C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WebPresentmentRequest(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_225C8D6A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WebPresentmentRequest(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_225C8D704(uint64_t a1, uint64_t *a2)
{
  v6 = *(type metadata accessor for WebPresentmentRequest(0) - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_225A02E94;

  return sub_225C7A67C(a1, a2, v2 + v7);
}

uint64_t sub_225C8D7E8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2259FE39C;

  return sub_225C7B518(a1, v4, v5, v6);
}

uint64_t sub_225C8D93C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_225A02E94;

  return sub_225C813BC(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_225C8DA04(uint64_t a1, void *a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_225A02E94;

  return sub_225C8D168(a1, a2, v6);
}

uint64_t sub_225C8DB18(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73FD10, &unk_225CD7600) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_225A02E94;

  return sub_225C8B36C(a1, v7, v8, v9, v1 + v6, v11, v12);
}

uint64_t sub_225C8DCAC(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AF08, &qword_225CD4B60) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_225A02E94;

  return sub_225C8C2B0(a1, v7, v8, v9, v1 + v6, v11, v12);
}

uint64_t sub_225C8DE08(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_225A02E94;

  return sub_225C8106C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_225C8DED0(uint64_t a1, void *a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_225A02E94;

  return sub_225C8D168(a1, a2, v6);
}

uint64_t sub_225C8DF98(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_225A02E94;

  return sub_225C80D1C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_225C8E060(uint64_t a1, void *a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_225A02E94;

  return sub_225C8D168(a1, a2, v6);
}

uint64_t sub_225C8E174(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D742768, &qword_225D00F70) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_225A02E94;

  return sub_225C8B9E8(a1, v7, v8, v9, v1 + v6, v11, v12);
}

uint64_t sub_225C8E2D0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_225A02E94;

  return sub_225C809CC(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_225C8E398(uint64_t a1, void *a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_225A02E94;

  return sub_225C8D168(a1, a2, v6);
}

uint64_t sub_225C8E4AC(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73FD10, &unk_225CD7600) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_225A02E94;

  return sub_225C839C0(a1, v7, v8, v9, v1 + v6, v11, v12);
}

uint64_t sub_225C8E640(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D742778, &qword_225D00FE0) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_225A02E94;

  return sub_225C8ACE8(a1, v7, v8, v9, v1 + v6, v11, v12);
}

uint64_t sub_225C8E79C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_225A02E94;

  return sub_225C8067C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_225C8E864(uint64_t a1, void *a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_225A02E94;

  return sub_225C8D168(a1, a2, v6);
}

uint64_t sub_225C8E978(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D742788, &unk_225D02A70) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_225A02E94;

  return sub_225C8A664(a1, v7, v8, v9, v1 + v6, v11, v12);
}

uint64_t sub_225C8EAD4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_225A02E94;

  return sub_225C8032C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_225C8EB9C(uint64_t a1, void *a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_225A02E94;

  return sub_225C8D168(a1, a2, v6);
}

uint64_t sub_225C8ECB0(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D742790, &unk_225D02A80) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_225A02E94;

  return sub_225C89FE0(a1, v7, v8, v9, v1 + v6, v11, v12);
}

uint64_t sub_225C8EE0C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_225A02E94;

  return sub_225C7FFDC(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_225C8EED4(uint64_t a1, void *a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_225A02E94;

  return sub_225C8D168(a1, a2, v6);
}

uint64_t sub_225C8EFE8(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D742798, &qword_225D010A8) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_225A02E94;

  return sub_225C8995C(a1, v7, v8, v9, v1 + v6, v11, v12);
}

uint64_t sub_225C8F144(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_225A02E94;

  return sub_225C7FC8C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_225C8F20C(uint64_t a1, void *a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_225A02E94;

  return sub_225C8D168(a1, a2, v6);
}

uint64_t sub_225C8F320(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7427A0, &qword_225D02A90) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_225A02E94;

  return sub_225C892D8(a1, v7, v8, v9, v1 + v6, v11, v12);
}

uint64_t sub_225C8F47C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_225A02E94;

  return sub_225C7F93C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_225C8F544(uint64_t a1, void *a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_225A02E94;

  return sub_225C8D168(a1, a2, v6);
}

uint64_t sub_225C8F658(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B0D8, &qword_225CD7B58) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_225A02E94;

  return sub_225C88C54(a1, v7, v8, v9, v1 + v6, v11, v12);
}

uint64_t sub_225C8F7B4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_225A02E94;

  return sub_225C7F5EC(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_225C8F87C(uint64_t a1, void *a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_225A02E94;

  return sub_225C8D168(a1, a2, v6);
}

uint64_t sub_225C8F990(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7427A8, &qword_225D01170) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_225A02E94;

  return sub_225C885D0(a1, v7, v8, v9, v1 + v6, v11, v12);
}

uint64_t sub_225C8FAEC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_225A02E94;

  return sub_225C7F29C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_225C8FBB4(uint64_t a1, void *a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_225A02E94;

  return sub_225C8D168(a1, a2, v6);
}

uint64_t sub_225C8FCC8(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7427B0, &qword_225D011B0) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_225A02E94;

  return sub_225C87F4C(a1, v7, v8, v9, v1 + v6, v11, v12);
}

uint64_t sub_225C8FE24(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_225A02E94;

  return sub_225C7EF4C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_225C8FEEC(uint64_t a1, void *a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_225A02E94;

  return sub_225C8D168(a1, a2, v6);
}

uint64_t sub_225C90000(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AF08, &qword_225CD4B60) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_225A02E94;

  return sub_225C877B4(a1, v7, v8, v9, v1 + v6, v11, v12);
}

uint64_t sub_225C90148(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_225A02E94;

  return sub_225C7EBFC(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_225C90210(uint64_t a1, void *a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_225A02E94;

  return sub_225C8D168(a1, a2, v6);
}

uint64_t sub_225C90324(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7427B8, &qword_225D01228) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_225A02E94;

  return sub_225C87130(a1, v7, v8, v9, v1 + v6, v11, v12);
}

uint64_t sub_225C90480(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_225A02E94;

  return sub_225C7E8AC(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_225C90548(uint64_t a1, void *a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_225A02E94;

  return sub_225C8D168(a1, a2, v6);
}

uint64_t sub_225C9065C(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7427C0, &unk_225D02AB0) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_225A02E94;

  return sub_225C86AAC(a1, v7, v8, v9, v1 + v6, v11, v12);
}

uint64_t sub_225C907B8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_225A02E94;

  return sub_225C7E55C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_225C90880(uint64_t a1, void *a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_225A02E94;

  return sub_225C8D168(a1, a2, v6);
}

uint64_t sub_225C90994(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7427C8, &qword_225D012A8) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_225A02E94;

  return sub_225C86428(a1, v7, v8, v9, v1 + v6, v11, v12);
}

uint64_t sub_225C90AF0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_225A02E94;

  return sub_225C7E20C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_225C90BB8(uint64_t a1, void *a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_225A02E94;

  return sub_225C8D168(a1, a2, v6);
}

uint64_t sub_225C90CCC(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7427D0, &unk_225D02AC0) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_225A02E94;

  return sub_225C85DA4(a1, v7, v8, v9, v1 + v6, v11, v12);
}

uint64_t sub_225C90E28(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_225A02E94;

  return sub_225C7DEBC(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_225C90EF0(uint64_t a1, void *a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_225A02E94;

  return sub_225C8D168(a1, a2, v6);
}

uint64_t sub_225C91004(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7427D8, &qword_225D01328) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_225A02E94;

  return sub_225C85720(a1, v7, v8, v9, v1 + v6, v11, v12);
}

uint64_t sub_225C91160(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_225A02E94;

  return sub_225C7DB6C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_225C91228(uint64_t a1, void *a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_225A02E94;

  return sub_225C8D168(a1, a2, v6);
}

uint64_t sub_225C9133C(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7427E0, &unk_225D02AD0) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_225A02E94;

  return sub_225C8509C(a1, v7, v8, v9, v1 + v6, v11, v12);
}

uint64_t sub_225C91498(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_225A02E94;

  return sub_225C7D81C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_225C91560(uint64_t a1, void *a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_225A02E94;

  return sub_225C8D168(a1, a2, v6);
}

uint64_t sub_225C91674(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7427E8, &qword_225D013A8) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_225A02E94;

  return sub_225C84904(a1, v7, v8, v9, v1 + v6, v11, v12);
}

uint64_t sub_225C917D0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_225A02E94;

  return sub_225C7D4CC(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_225C91898(uint64_t a1, void *a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_225A02E94;

  return sub_225C8D168(a1, a2, v6);
}

uint64_t sub_225C91960(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_225A02E94;

  return sub_225C7D17C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_225C91A28(uint64_t a1, void *a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_225A02E94;

  return sub_225C8D168(a1, a2, v6);
}

uint64_t sub_225C91B3C(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7427F8, &unk_225D02100) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_225A02E94;

  return sub_225C8403C(a1, v7, v8, v9, v1 + v6, v11, v12);
}

uint64_t sub_225C91C98(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_225A02E94;

  return sub_225C7CE2C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_225C91D60(uint64_t a1, void *a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_225A02E94;

  return sub_225C8D264(a1, a2, v6);
}

uint64_t sub_225C91E74(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73FD10, &unk_225CD7600) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_225A02E94;

  return sub_225C82A98(a1, v7, v8, v9, v1 + v6, v11, v12);
}

uint64_t sub_225C92008(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D742808, &qword_225D01488) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_225A02E94;

  return sub_225C83228(a1, v7, v8, v9, v1 + v6, v11, v12);
}

uint64_t sub_225C92150(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2259FE39C;

  return sub_225C7C774(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_225C92218(uint64_t a1, void *a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_225A02E94;

  return sub_225C8D168(a1, a2, v6);
}