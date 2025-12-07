uint64_t dispatch thunk of DIPKeystoreKeychain.__allocating_init(requireUserAuth:externalizedLAContext:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(v3 + 96) + **(v3 + 96));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_225A206E8;

  return v10(a1, a2, a3);
}

uint64_t sub_225A206E8(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t dispatch thunk of DIPKeystoreKeychain.generateIdentityKeyPair(label:algorithm:constraints:enableUAM:temporary:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v18 = (*(*v7 + 120) + **(*v7 + 120));
  v16 = swift_task_alloc();
  *(v8 + 16) = v16;
  *v16 = v8;
  v16[1] = sub_2259FE39C;

  return v18(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t dispatch thunk of IdentityKeyWithKeychain.authMethod()()
{
  v4 = (*(*v0 + 432) + **(*v0 + 432));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_225A01DDC;

  return v4();
}

uint64_t sub_225A20D68(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B090, &unk_225CD7610);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_225A20E98()
{
  result = sub_225A265CC();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_225A20F38@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for DIPECIESSessionECV1();
  result = swift_allocObject();
  *a2 = result;
  return result;
}

uint64_t DIPECIESSessionECV3.ePublicKeyData.getter()
{
  v1 = *(v0 + 32);
  sub_2259CB710(v1, *(v0 + 40));
  return v1;
}

uint64_t DIPECIESSessionECV3.__allocating_init(_:)(void *a1)
{
  v2 = swift_allocObject();
  DIPECIESSessionECV3.init(_:)(a1);
  return v2;
}

uint64_t DIPECIESSessionECV3.init(_:)(void *a1)
{
  v3 = v1;
  v98 = *MEMORY[0x277D85DE8];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = (&v84 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6);
  v10 = &v84 - v9;
  v11 = sub_225CCD954();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v84 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    *(v3 + 16) = a1;
    v15 = a1;
    v16 = SecKeyCopyPublicKey(v15);
    if (!v16)
    {
      v89 = v3;
      v87 = 0x8000000225D18060;
      v17 = MEMORY[0x277D84F90];
      v18 = sub_225B2C248(MEMORY[0x277D84F90]);
      sub_2259CB5EC();
      v88 = swift_allocError();
      v20 = v19;
      v21 = sub_225CCE954();
      v22 = *(v21 - 8);
      (*(v22 + 56))(v10, 1, 1, v21);
      LODWORD(v21) = (*(v22 + 48))(v10, 1, v21);
      sub_2259CB640(v10, &unk_27D73B050, &unk_225CD3AD0);
      if (v21)
      {
        v23 = 155;
      }

      else
      {
        v23 = 23;
      }

      v24 = sub_225B2C374(v17);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      error = v24;
      sub_225B2C4A0(v18, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &error);

      v26 = error;
      v27 = sub_225B29AA0(0, 1, 1, v17);
      v29 = *(v27 + 2);
      v28 = *(v27 + 3);
      if (v29 >= v28 >> 1)
      {
        v27 = sub_225B29AA0((v28 > 1), v29 + 1, 1, v27);
      }

      *(v27 + 2) = v29 + 1;
      v30 = &v27[56 * v29];
      *(v30 + 4) = 0xD00000000000001BLL;
      *(v30 + 5) = 0x8000000225D180C0;
      v31 = v87;
      *(v30 + 6) = 0xD000000000000023;
      *(v30 + 7) = v31;
      *(v30 + 8) = 0x293A5F2874696E69;
      *(v30 + 9) = 0xE800000000000000;
      *(v30 + 10) = 126;
      *v20 = v23;
      *(v20 + 8) = v27;
      *(v20 + 16) = 0xD00000000000001BLL;
      *(v20 + 24) = 0x8000000225D180C0;
      *(v20 + 32) = v26;
      *(v20 + 40) = 0;
      swift_willThrow();

      v3 = v89;
      v32 = *(v89 + 16);
      goto LABEL_20;
    }
  }

  else
  {
    LOBYTE(v90[0]) = 0;
    v33 = sub_225A1CB38(v90, 0, 0);
    if (v2)
    {
      v86 = v8;
      if (qword_28105B910 != -1)
      {
        swift_once();
      }

      v35 = off_28105B918;
      v36 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
      v37 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
      os_unfair_lock_lock((off_28105B918 + v37));
      (*(v12 + 16))(v14, &v35[v36], v11);
      os_unfair_lock_unlock(&v35[v37]);
      v38 = v2;
      v39 = sub_225CCD934();
      v40 = sub_225CCED14();

      v41 = os_log_type_enabled(v39, v40);
      v89 = v3;
      if (v41)
      {
        v42 = swift_slowAlloc();
        v88 = swift_slowAlloc();
        error = v88;
        *v42 = 136446210;
        swift_getErrorValue();
        v43 = sub_225CCFB24();
        v45 = sub_2259BE198(v43, v44, &error);

        *(v42 + 4) = v45;
        _os_log_impl(&dword_2259A7000, v39, v40, "failed to create key pair for ECIES. %{public}s", v42, 0xCu);
        v46 = v88;
        __swift_destroy_boxed_opaque_existential_0(v88);
        MEMORY[0x22AA6F950](v46, -1, -1);
        MEMORY[0x22AA6F950](v42, -1, -1);
      }

      (*(v12 + 8))(v14, v11);
      v87 = " key pair for ECIES.";
      v47 = v2;
      v48 = sub_225B2C248(MEMORY[0x277D84F90]);
      sub_2259CB5EC();
      swift_allocError();
      v50 = v49;
      swift_getErrorValue();
      v51 = v91;
      v52 = v2;
      sub_225B21FAC(v51, &error);

      v53 = v93;
      v88 = 0x8000000225D18030;
      if (v93)
      {
        v86 = error;
        v85 = v94;
        v84 = v95;
        v54 = v96;
        v55 = v97;
      }

      else
      {
        error = v2;
        v62 = v2;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48, &qword_225CD75F0);
        sub_2259D8718(0, &qword_281059A90, 0x277CCA9B8);
        if (swift_dynamicCast())
        {
          v63 = v90[0];
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10, &unk_225CD4660);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_225CD30F0;
          *(inited + 32) = 20;
          v65 = [v63 code];
          v66 = MEMORY[0x277D83BF8];
          *(inited + 64) = MEMORY[0x277D83B88];
          *(inited + 72) = v66;
          *(inited + 40) = v65;
          v54 = sub_225B2C374(inited);
          swift_setDeallocating();
          sub_2259CB640(inited + 32, &qword_27D73B060, &unk_225CD3AE0);

          v67 = v2;
          v86 = 0;
          v85 = 0;
          v84 = 0;
          v53 = MEMORY[0x277D84F90];
        }

        else
        {
          error = v2;
          v68 = v2;
          v69 = sub_225CCE954();
          v70 = v86;
          v71 = swift_dynamicCast();
          v72 = *(v69 - 8);
          (*(v72 + 56))(v70, v71 ^ 1u, 1, v69);
          LODWORD(v72) = (*(v72 + 48))(v70, 1, v69);
          sub_2259CB640(v70, &unk_27D73B050, &unk_225CD3AD0);
          if (v72)
          {
            v73 = 0;
          }

          else
          {
            v73 = 23;
          }

          v86 = v73;
          v53 = MEMORY[0x277D84F90];
          v54 = sub_225B2C374(MEMORY[0x277D84F90]);
          v74 = v2;
          v85 = 0xD000000000000024;
          v84 = 0x8000000225D18030;
        }

        v55 = v2;
      }

      v75 = v87 | 0x8000000000000000;
      v76 = swift_isUniquelyReferenced_nonNull_native();
      error = v54;
      sub_225B2C4A0(v48, sub_225B2AC40, 0, v76, &error);

      v77 = error;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v53 = sub_225B29AA0(0, *(v53 + 2) + 1, 1, v53);
      }

      v79 = *(v53 + 2);
      v78 = *(v53 + 3);
      if (v79 >= v78 >> 1)
      {
        v53 = sub_225B29AA0((v78 > 1), v79 + 1, 1, v53);
      }

      *(v53 + 2) = v79 + 1;
      v80 = &v53[56 * v79];
      v81 = v88;
      *(v80 + 4) = 0xD000000000000024;
      *(v80 + 5) = v81;
      *(v80 + 6) = 0xD000000000000023;
      *(v80 + 7) = v75;
      *(v80 + 8) = 0x293A5F2874696E69;
      *(v80 + 9) = 0xE800000000000000;
      *(v80 + 10) = 136;
      *v50 = v86;
      v82 = v85;
      *(v50 + 8) = v53;
      *(v50 + 16) = v82;
      *(v50 + 24) = v84;
      *(v50 + 32) = v77;
      *(v50 + 40) = v55;
      swift_willThrow();

      v3 = v89;
      goto LABEL_33;
    }

    error = v33;
    v93 = v34;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B1A0, &qword_225CD7D50);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B1A8, &qword_225CD7D58);
    swift_dynamicCast();
    v16 = v90[1];
    *(v3 + 16) = v90[0];
  }

  *(v3 + 24) = v16;
  v56 = v16;
  error = 0;
  v57 = SecKeyCopyExternalRepresentation(v56, &error);

  if (!v57)
  {
    LOWORD(v90[0]) = 155;
    errorFromCFError(_:_:_:)(error, 0xD000000000000021, 0x8000000225D18090, v90);
    swift_willThrow();

    v32 = *(v3 + 24);
LABEL_20:

LABEL_33:
    type metadata accessor for DIPECIESSessionECV3();
    swift_deallocPartialClassInstance();
    return v3;
  }

  v58 = v57;
  v59 = sub_225CCCFA4();
  v61 = v60;

  *(v3 + 32) = v59;
  *(v3 + 40) = v61;
  return v3;
}

unint64_t sub_225A21B00(uint64_t a1, unint64_t a2, __SecCertificate *a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v29 - v9;
  v11 = SecCertificateCopyKey(a3);
  if (v11)
  {
    v12 = v11;
    v13 = sub_225A21DF4(a1, a2, v11, a4);
  }

  else
  {
    v30 = 0x8000000225D18060;
    v14 = MEMORY[0x277D84F90];
    v15 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    swift_allocError();
    v13 = v16;
    v17 = sub_225CCE954();
    v18 = *(v17 - 8);
    (*(v18 + 56))(v10, 1, 1, v17);
    LODWORD(v17) = (*(v18 + 48))(v10, 1, v17);
    sub_2259CB640(v10, &unk_27D73B050, &unk_225CD3AD0);
    if (v17)
    {
      v19 = 155;
    }

    else
    {
      v19 = 23;
    }

    v20 = sub_225B2C374(v14);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v31 = v20;
    sub_225B2C4A0(v15, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v31);

    v22 = v31;
    v23 = sub_225B29AA0(0, 1, 1, v14);
    v25 = *(v23 + 2);
    v24 = *(v23 + 3);
    if (v25 >= v24 >> 1)
    {
      v23 = sub_225B29AA0((v24 > 1), v25 + 1, 1, v23);
    }

    *(v23 + 2) = v25 + 1;
    v26 = &v23[56 * v25];
    *(v26 + 4) = 0xD000000000000040;
    *(v26 + 5) = 0x8000000225D180E0;
    v27 = v30;
    *(v26 + 6) = 0xD000000000000023;
    *(v26 + 7) = v27;
    *(v26 + 8) = 0x2874707972636E65;
    *(v26 + 9) = 0xEF293A5F3A5F3A5FLL;
    *(v26 + 10) = 160;
    *v13 = v19;
    *(v13 + 8) = v23;
    *(v13 + 16) = 0xD000000000000040;
    *(v13 + 24) = 0x8000000225D180E0;
    *(v13 + 32) = v22;
    *(v13 + 40) = 0;
    swift_willThrow();
  }

  return v13;
}

unint64_t sub_225A21DF4(uint64_t a1, unint64_t a2, int64_t a3, uint64_t a4)
{
  v6 = v5;
  v7 = v4;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v82 - v13;
  if (!a4 || !*(a4 + 16) || (v15 = sub_2259F1D10(0), (v16 & 1) == 0) || !*(a4 + 16) || (v17 = (*(a4 + 56) + 16 * v15), v19 = *v17, v18 = v17[1], v20 = sub_2259F1D10(1), (v22 & 1) == 0))
  {
    v89 = 0x8000000225D18060;
    v27 = MEMORY[0x277D84F90];
    v28 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    swift_allocError();
    v30 = v29;
    v31 = sub_225CCE954();
    v32 = *(v31 - 8);
    (*(v32 + 56))(v14, 1, 1, v31);
    LODWORD(v31) = (*(v32 + 48))(v14, 1, v31);
    sub_2259CB640(v14, &unk_27D73B050, &unk_225CD3AD0);
    if (v31)
    {
      v33 = 108;
    }

    else
    {
      v33 = 23;
    }

    v34 = sub_225B2C374(v27);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v88 = v34;
    sub_225B2C4A0(v28, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v88);

    v36 = v88;
    v37 = sub_225B29AA0(0, 1, 1, v27);
    v39 = *(v37 + 2);
    v38 = *(v37 + 3);
    if (v39 >= v38 >> 1)
    {
      v37 = sub_225B29AA0((v38 > 1), v39 + 1, 1, v37);
    }

    *(v37 + 2) = v39 + 1;
    v40 = &v37[56 * v39];
    *(v40 + 4) = 0xD000000000000053;
    *(v40 + 5) = 0x8000000225D18130;
    *(v40 + 6) = 0xD000000000000023;
    *(v40 + 7) = v89;
    *(v40 + 8) = 0x2874707972636E65;
    *(v40 + 9) = 0xEF293A5F3A5F3A5FLL;
    *(v40 + 10) = 179;
    *v30 = v33;
    *(v30 + 8) = v37;
    *(v30 + 16) = 0xD000000000000053;
    *(v30 + 24) = 0x8000000225D18130;
    *(v30 + 32) = v36;
    *(v30 + 40) = 0;
    return swift_willThrow();
  }

  v23 = (*(a4 + 56) + 16 * v20);
  v25 = *v23;
  v24 = v23[1];
  v89 = v25;
  v86 = v18;
  v87 = v24;
  v26 = a2 >> 62;
  v85 = v5;
  if ((a2 >> 62) <= 1)
  {
    if (!v26)
    {
      a4 = BYTE6(a2);
      goto LABEL_22;
    }

    goto LABEL_19;
  }

  if (v26 != 2)
  {
    a4 = 0;
    goto LABEL_22;
  }

  v43 = *(a1 + 16);
  v42 = *(a1 + 24);
  a4 = v42 - v43;
  if (__OFSUB__(v42, v43))
  {
    __break(1u);
LABEL_19:
    v44 = (HIDWORD(a1) - a1);
    if (__OFSUB__(HIDWORD(a1), a1))
    {
      __break(1u);
LABEL_41:
      v21 = sub_225B29AA0((v44 > 1), a3, 1, v21);
LABEL_36:
      v70 = v84;
      *(v21 + 2) = a3;
      v78 = &v21[56 * a2];
      *(v78 + 4) = 0xD000000000000022;
      *(v78 + 5) = a1;
      *(v78 + 6) = 0xD000000000000023;
      *(v78 + 7) = v82;
      *(v78 + 8) = 0x2874707972636E65;
      *(v78 + 9) = 0xEF293A5F3A5F3A5FLL;
      *(v78 + 10) = 185;
      *a4 = v14;
      *(a4 + 8) = v21;
      *(a4 + 16) = 0xD000000000000022;
      *(a4 + 24) = a1;
      *(a4 + 32) = v6;
      *(a4 + 40) = 0;
      swift_willThrow();

LABEL_37:
      sub_2259BEF00(v89, v87);
      v55 = v70;
      return sub_2259BEF00(v55, v18);
    }

    a4 = v44;
  }

LABEL_22:
  v45 = objc_allocWithZone(MEMORY[0x277CBEB28]);
  v84 = v19;
  sub_2259CB710(v19, v86);
  sub_2259CB710(v89, v87);
  v46 = [v45 initWithLength_];
  if (!v46)
  {
    v83 = 0x8000000225D18060;
    v56 = MEMORY[0x277D84F90];
    v57 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    swift_allocError();
    v59 = v58;
    v60 = sub_225CCE954();
    v61 = *(v60 - 8);
    (*(v61 + 56))(v14, 1, 1, v60);
    LODWORD(v60) = (*(v61 + 48))(v14, 1, v60);
    sub_2259CB640(v14, &unk_27D73B050, &unk_225CD3AD0);
    if (v60)
    {
      v62 = 1154;
    }

    else
    {
      v62 = 23;
    }

    v63 = sub_225B2C374(v56);
    v64 = swift_isUniquelyReferenced_nonNull_native();
    v88 = v63;
    sub_225B2C4A0(v57, sub_225B2AC40, 0, v64, &v88);

    v65 = v88;
    v66 = sub_225B29AA0(0, 1, 1, v56);
    v68 = *(v66 + 2);
    v67 = *(v66 + 3);
    if (v68 >= v67 >> 1)
    {
      v66 = sub_225B29AA0((v67 > 1), v68 + 1, 1, v66);
    }

    v18 = v86;
    *(v66 + 2) = v68 + 1;
    v69 = &v66[56 * v68];
    *(v69 + 4) = 0xD000000000000029;
    *(v69 + 5) = 0x8000000225D18190;
    *(v69 + 6) = 0xD000000000000023;
    v70 = v84;
    *(v69 + 7) = v83;
    *(v69 + 8) = 0x2874707972636E65;
    *(v69 + 9) = 0xEF293A5F3A5F3A5FLL;
    *(v69 + 10) = 182;
    *v59 = v62;
    *(v59 + 8) = v66;
    *(v59 + 16) = 0xD000000000000029;
    *(v59 + 24) = 0x8000000225D18190;
    *(v59 + 32) = v65;
    *(v59 + 40) = 0;
    swift_willThrow();
    goto LABEL_37;
  }

  v83 = v46;
  v47 = [objc_allocWithZone(MEMORY[0x277CBEB28]) initWithLength_];
  if (!v47)
  {
    a1 = 0x8000000225D181C0;
    v82 = 0x8000000225D18060;
    v71 = MEMORY[0x277D84F90];
    v72 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    swift_allocError();
    a4 = v73;
    v74 = sub_225CCE954();
    v75 = *(v74 - 8);
    (*(v75 + 56))(v14, 1, 1, v74);
    LODWORD(v74) = (*(v75 + 48))(v14, 1, v74);
    sub_2259CB640(v14, &unk_27D73B050, &unk_225CD3AD0);
    if (v74)
    {
      LOWORD(v14) = 1154;
    }

    else
    {
      LOWORD(v14) = 23;
    }

    v76 = sub_225B2C374(v71);
    v77 = swift_isUniquelyReferenced_nonNull_native();
    v88 = v76;
    sub_225B2C4A0(v72, sub_225B2AC40, 0, v77, &v88);

    v6 = v88;
    v21 = sub_225B29AA0(0, 1, 1, v71);
    a2 = *(v21 + 2);
    v44 = *(v21 + 3);
    a3 = a2 + 1;
    v18 = v86;
    if (a2 < v44 >> 1)
    {
      goto LABEL_36;
    }

    goto LABEL_41;
  }

  v48 = v47;
  LOBYTE(v88) = 0;
  v49 = a3;
  v51 = v84;
  v50 = v85;
  v18 = v86;
  v52 = v87;
  v53 = v89;
  v54 = (*(*v7 + 152))(&v88, v49, v84, v86, v89, v87);
  if (v50)
  {

    sub_2259BEF00(v53, v52);
    v55 = v51;
    return sub_2259BEF00(v55, v18);
  }

  v79 = v54;

  v80 = v83;
  v81 = v48;
  sub_225A26398(a1, a2, v79, v80, v81, &v88);
  sub_2259BEF00(v51, v18);
  sub_2259BEF00(v89, v52);

  return v88;
}

uint64_t sub_225A226B8@<X0>(uint64_t a3@<X2>, void *a4@<X3>, void *a5@<X4>, uint64_t *a6@<X8>)
{
  v47 = a6;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v46 - v11;
  v13 = *(a3 + 16);
  result = CFDataGetBytePtr(v13);
  if (!result)
  {
    __break(1u);
    goto LABEL_13;
  }

  v48 = v12;
  v49 = v6;
  result = CFDataGetBytePtr(v13);
  if (!result)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  [a4 mutableBytes];
  [a5 mutableBytes];
  v15 = CCCryptorGCMOneshotEncrypt();
  if (!v15)
  {
    [a4 appendData_];
    result = CFDataGetBytePtr(v13);
    if (result)
    {
      v39 = sub_225A6D14C((result + 16), 0x10uLL);
      v41 = v40;
      v42 = v47;
      *v47 = v39;
      v42[1] = v40;
      sub_2259CB710(v39, v40);
      v43 = sub_225CCCFA4();
      v45 = v44;
      result = sub_2259BEF00(v39, v41);
      v42[2] = v43;
      v42[3] = v45;
      return result;
    }

    goto LABEL_14;
  }

  v16 = v15;
  v50 = 0;
  v51 = 0xE000000000000000;
  sub_225CCF204();

  v50 = 0xD000000000000027;
  v51 = 0x8000000225D18800;
  v52 = v16;
  v17 = MEMORY[0x277D849A8];
  v18 = MEMORY[0x277D84A08];
  v19 = sub_225CCF824();
  MEMORY[0x22AA6CE70](v19);

  MEMORY[0x22AA6CE70](46, 0xE100000000000000);
  v21 = v50;
  v20 = v51;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10, &unk_225CD4660);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_225CD30F0;
  *(inited + 32) = 20;
  v23 = inited + 32;
  *(inited + 64) = v17;
  *(inited + 72) = v18;
  *(inited + 40) = v16;
  v24 = sub_225B2C374(inited);
  swift_setDeallocating();
  sub_2259CB640(v23, &qword_27D73B060, &unk_225CD3AE0);
  sub_2259CB5EC();
  swift_allocError();
  v26 = v25;
  v27 = sub_225CCE954();
  v28 = *(v27 - 8);
  v29 = v48;
  (*(v28 + 56))(v48, 1, 1, v27);
  LODWORD(v27) = (*(v28 + 48))(v29, 1, v27);
  sub_2259CB640(v29, &unk_27D73B050, &unk_225CD3AD0);
  if (v27)
  {
    v30 = 156;
  }

  else
  {
    v30 = 23;
  }

  v31 = MEMORY[0x277D84F90];
  v32 = sub_225B2C374(MEMORY[0x277D84F90]);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v50 = v32;
  sub_225B2C4A0(v24, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v50);

  v34 = v50;
  v35 = sub_225B29AA0(0, 1, 1, v31);
  v37 = *(v35 + 2);
  v36 = *(v35 + 3);
  if (v37 >= v36 >> 1)
  {
    v35 = sub_225B29AA0((v36 > 1), v37 + 1, 1, v35);
  }

  *(v35 + 2) = v37 + 1;
  v38 = &v35[56 * v37];
  *(v38 + 4) = v21;
  *(v38 + 5) = v20;
  *(v38 + 6) = 0xD000000000000023;
  *(v38 + 7) = 0x8000000225D18060;
  *(v38 + 8) = 0x2874707972636E65;
  *(v38 + 9) = 0xEF293A5F3A5F3A5FLL;
  *(v38 + 10) = 209;
  *v26 = v30;
  *(v26 + 8) = v35;
  *(v26 + 16) = v21;
  *(v26 + 24) = v20;
  *(v26 + 32) = v34;
  *(v26 + 40) = 0;
  return swift_willThrow();
}

const UInt8 *sub_225A22B68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, void *a3@<X3>, const UInt8 **a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v50 - v9;
  if (!a1)
  {
    v18 = 0x8000000225D18790;
    v51 = 0x8000000225D18610;
    v52 = 0x8000000225D18060;
    v39 = MEMORY[0x277D84F90];
    v40 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    swift_allocError();
    v24 = v41;
    v42 = sub_225CCE954();
    v43 = *(v42 - 8);
    (*(v43 + 56))(v10, 1, 1, v42);
    LODWORD(v42) = (*(v43 + 48))(v10, 1, v42);
    sub_2259CB640(v10, &unk_27D73B050, &unk_225CD3AD0);
    if (v42)
    {
      v27 = 156;
    }

    else
    {
      v27 = 23;
    }

    v44 = sub_225B2C374(v39);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v53 = v44;
    sub_225B2C4A0(v40, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v53);

    v31 = v53;
    v32 = sub_225B29AA0(0, 1, 1, v39);
    v47 = *(v32 + 2);
    v46 = *(v32 + 3);
    if (v47 >= v46 >> 1)
    {
      v32 = sub_225B29AA0((v46 > 1), v47 + 1, 1, v32);
    }

    *(v32 + 2) = v47 + 1;
    v35 = &v32[56 * v47];
    v19 = 0xD00000000000003CLL;
    *(v35 + 4) = 0xD00000000000003CLL;
    *(v35 + 5) = 0x8000000225D18790;
    v48 = v52;
    *(v35 + 6) = 0xD000000000000023;
    *(v35 + 7) = v48;
    *(v35 + 8) = 0xD000000000000011;
    *(v35 + 9) = v51;
    v38 = 257;
    goto LABEL_17;
  }

  v11 = *(a2 + 16);
  result = CFDataGetBytePtr(v11);
  if (!result)
  {
    __break(1u);
    goto LABEL_20;
  }

  result = CFDataGetBytePtr(v11);
  if (!result)
  {
LABEL_20:
    __break(1u);
    return result;
  }

  [a3 length];
  [a3 mutableBytes];
  [a3 length];
  v13 = CCCryptorGCMOneshotDecrypt();
  if (v13)
  {
    v14 = v13;
    v53 = 0;
    v54 = 0xE000000000000000;
    sub_225CCF204();

    v53 = 0xD000000000000027;
    v54 = 0x8000000225D187D0;
    v55 = v14;
    v15 = MEMORY[0x277D849A8];
    v16 = MEMORY[0x277D84A08];
    v17 = sub_225CCF824();
    MEMORY[0x22AA6CE70](v17);

    MEMORY[0x22AA6CE70](46, 0xE100000000000000);
    v19 = v53;
    v18 = v54;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10, &unk_225CD4660);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_225CD30F0;
    *(inited + 32) = 20;
    v21 = inited + 32;
    *(inited + 64) = v15;
    *(inited + 72) = v16;
    *(inited + 40) = v14;
    v22 = sub_225B2C374(inited);
    swift_setDeallocating();
    sub_2259CB640(v21, &qword_27D73B060, &unk_225CD3AE0);
    v51 = 0x8000000225D18610;
    v52 = 0x8000000225D18060;
    sub_2259CB5EC();
    swift_allocError();
    v24 = v23;
    v25 = sub_225CCE954();
    v26 = *(v25 - 8);
    (*(v26 + 56))(v10, 1, 1, v25);
    LODWORD(v25) = (*(v26 + 48))(v10, 1, v25);
    sub_2259CB640(v10, &unk_27D73B050, &unk_225CD3AD0);
    if (v25)
    {
      v27 = 156;
    }

    else
    {
      v27 = 23;
    }

    v28 = MEMORY[0x277D84F90];
    v29 = sub_225B2C374(MEMORY[0x277D84F90]);
    v30 = swift_isUniquelyReferenced_nonNull_native();
    v53 = v29;
    sub_225B2C4A0(v22, sub_225B2AC40, 0, v30, &v53);

    v31 = v53;
    v32 = sub_225B29AA0(0, 1, 1, v28);
    v34 = *(v32 + 2);
    v33 = *(v32 + 3);
    if (v34 >= v33 >> 1)
    {
      v32 = sub_225B29AA0((v33 > 1), v34 + 1, 1, v32);
    }

    *(v32 + 2) = v34 + 1;
    v35 = &v32[56 * v34];
    *(v35 + 4) = v19;
    *(v35 + 5) = v18;
    v36 = v52;
    *(v35 + 6) = 0xD000000000000023;
    *(v35 + 7) = v36;
    v37 = v51;
    *(v35 + 8) = 0xD000000000000011;
    *(v35 + 9) = v37;
    v38 = 268;
LABEL_17:
    *(v35 + 10) = v38;
    *v24 = v27;
    *(v24 + 8) = v32;
    *(v24 + 16) = v19;
    *(v24 + 24) = v18;
    *(v24 + 32) = v31;
    *(v24 + 40) = 0;
    return swift_willThrow();
  }

  result = sub_225CCCFA4();
  *a4 = result;
  a4[1] = v49;
  return result;
}

uint64_t sub_225A23168()
{
  v1 = *(v0 + 32);
  sub_2259CB710(v1, *(v0 + 40));
  return v1;
}

unint64_t sub_225A231AC(unsigned __int8 *a1, __SecKey *a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6)
{
  v99 = a6;
  v98 = a5;
  v97 = a2;
  v104 = *MEMORY[0x277D85DE8];
  v9 = sub_225CCD954();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v88 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v88 - v15;
  v17 = *a1;
  v18 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v18 != 2)
    {
      goto LABEL_14;
    }

    v20 = *(a3 + 16);
    v19 = *(a3 + 24);
    v21 = __OFSUB__(v19, v20);
    v22 = v19 - v20;
    if (!v21)
    {
      if (v22 == 65)
      {
        goto LABEL_8;
      }

      goto LABEL_14;
    }

    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    v14 = sub_225B29AA0((v22 > 1), v16, 1, v14);
LABEL_65:
    *(v14 + 2) = v16;
    v84 = &v14[56 * a3];
    *(v84 + 4) = v10;
    *(v84 + 5) = a4;
    v85 = v99;
    *(v84 + 6) = 0xD000000000000023;
    *(v84 + 7) = v85;
    v86 = v98;
    *(v84 + 8) = 0xD00000000000001CLL;
    *(v84 + 9) = v86;
    *(v84 + 10) = 286;
    LOWORD(v17->isa) = v12;
    v17->info = v14;
    v17->data = v10;
LABEL_66:
    v17->length = a4;
    v17[1].isa = v9;
    v17[1].info = 0;
    swift_willThrow();
    return a4;
  }

  if (v18)
  {
    v22 = (HIDWORD(a3) - a3);
    if (!__OFSUB__(HIDWORD(a3), a3))
    {
      if (v22 == 65)
      {
        goto LABEL_8;
      }

LABEL_14:
      v9 = 0xD00000000000001CLL;
      v17 = &v103;
      *&v103 = 0;
      *(&v103 + 1) = 0xE000000000000000;
      sub_225CCF204();
      MEMORY[0x22AA6CE70](0xD00000000000003ALL, 0x8000000225D18500);
      if (v18 <= 1)
      {
        if (!v18)
        {
          v23 = BYTE6(a4);
          goto LABEL_44;
        }

        LODWORD(v23) = HIDWORD(a3) - a3;
        if (!__OFSUB__(HIDWORD(a3), a3))
        {
          v23 = v23;
          goto LABEL_44;
        }

        __break(1u);
        goto LABEL_74;
      }

      v23 = 0;
      if (v18 != 2 || (v25 = *(a3 + 16), v24 = *(a3 + 24), v21 = __OFSUB__(v24, v25), v23 = (v24 - v25), !v21))
      {
LABEL_44:
        error = v23;
        v57 = sub_225CCF824();
        MEMORY[0x22AA6CE70](v57);

        a4 = *(&v103 + 1);
        v58 = v103;
        v99 = 0x8000000225D18060;
        v98 = 0x8000000225D18540;
        v59 = sub_225B2C248(MEMORY[0x277D84F90]);
        sub_2259CB5EC();
        swift_allocError();
        v17 = v60;
        v61 = sub_225CCE954();
        v62 = *(v61 - 8);
        (*(v62 + 56))(v16, 1, 1, v61);
        LODWORD(v61) = (*(v62 + 48))(v16, 1, v61);
        sub_2259CB640(v16, &unk_27D73B050, &unk_225CD3AD0);
        if (v61)
        {
          v63 = 108;
        }

        else
        {
          v63 = 23;
        }

        v64 = MEMORY[0x277D84F90];
        v65 = sub_225B2C374(MEMORY[0x277D84F90]);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v103 = v65;
        sub_225B2C4A0(v59, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v103);

        v9 = v103;
        v67 = sub_225B29AA0(0, 1, 1, v64);
        v69 = *(v67 + 2);
        v68 = *(v67 + 3);
        if (v69 >= v68 >> 1)
        {
          v67 = sub_225B29AA0((v68 > 1), v69 + 1, 1, v67);
        }

        *(v67 + 2) = v69 + 1;
        v70 = &v67[56 * v69];
        *(v70 + 4) = v58;
        *(v70 + 5) = a4;
        v71 = v99;
        *(v70 + 6) = 0xD000000000000023;
        *(v70 + 7) = v71;
        v72 = v98;
        *(v70 + 8) = 0xD00000000000001CLL;
        *(v70 + 9) = v72;
        *(v70 + 10) = 283;
        LOWORD(v17->isa) = v63;
        v17->info = v67;
        v17->data = v58;
        goto LABEL_66;
      }

      __break(1u);
LABEL_21:
      if (v18 == 2)
      {
        v27 = *(v98 + 16);
        v26 = *(v98 + 24);
        v21 = __OFSUB__(v26, v27);
        v28 = v26 - v27;
        if (v21)
        {
LABEL_74:
          __break(1u);
          goto LABEL_75;
        }

        if (v28 == 65)
        {
LABEL_24:
          error = 0;
          v29 = SecKeyCopyExternalRepresentation(v97, &error);
          if (!v29)
          {
            LOWORD(v103) = 155;
            a4 = errorFromCFError(_:_:_:)(error, 0xD000000000000029, 0x8000000225D184D0, &v103);
            swift_willThrow();
            return a4;
          }

          v93 = v10;
          v30 = v29;
          v31 = sub_225CCCFA4();
          v33 = v32;

          v34 = v96[4];
          v35 = v96[5];
          sub_2259CB710(v34, v35);
          v36 = v17 == 0;
          if (v17)
          {
            v37 = v34;
          }

          else
          {
            v37 = v31;
          }

          v94 = v37;
          if (v17)
          {
            v38 = v35;
          }

          else
          {
            v38 = v33;
          }

          v95 = v38;
          if (v17)
          {
            v39 = v31;
          }

          else
          {
            v39 = v34;
          }

          if (!v36)
          {
            v35 = v33;
          }

          v103 = xmmword_225CD4150;
          v91 = v31;
          v92 = v33;
          sub_2259CB710(v31, v33);
          v89 = v39;
          v90 = v35;
          sub_225CCCFC4();
          sub_225CCCFC4();
          sub_225CCCFC4();
          sub_225CCCFC4();
          a4 = v96[2];
          v17 = *MEMORY[0x277CDC298];
          v10 = *(&v103 + 1);
          a3 = v103;
          v101 = 0;
          if (qword_28105B910 == -1)
          {
            goto LABEL_37;
          }

          goto LABEL_76;
        }
      }

LABEL_52:
      *&v103 = 0;
      *(&v103 + 1) = 0xE000000000000000;
      sub_225CCF204();
      MEMORY[0x22AA6CE70](0xD00000000000003DLL, 0x8000000225D18560);
      if (v18 > 1)
      {
        v73 = 0;
        if (v18 != 2)
        {
          goto LABEL_61;
        }

        v75 = *(v98 + 16);
        v74 = *(v98 + 24);
        v21 = __OFSUB__(v74, v75);
        v73 = (v74 - v75);
        if (!v21)
        {
          goto LABEL_61;
        }

        __break(1u);
      }

      else if (!v18)
      {
        v73 = BYTE6(v99);
        goto LABEL_61;
      }

      LODWORD(v73) = HIDWORD(v98) - v98;
      if (__OFSUB__(HIDWORD(v98), v98))
      {
        __break(1u);
      }

      v73 = v73;
LABEL_61:
      error = v73;
      v76 = sub_225CCF824();
      MEMORY[0x22AA6CE70](v76);

      a4 = *(&v103 + 1);
      v10 = v103;
      v99 = 0x8000000225D18060;
      v98 = 0x8000000225D18540;
      v77 = sub_225B2C248(MEMORY[0x277D84F90]);
      sub_2259CB5EC();
      swift_allocError();
      v17 = v78;
      v79 = sub_225CCE954();
      v80 = *(v79 - 8);
      (*(v80 + 56))(v16, 1, 1, v79);
      LODWORD(v79) = (*(v80 + 48))(v16, 1, v79);
      sub_2259CB640(v16, &unk_27D73B050, &unk_225CD3AD0);
      if (v79)
      {
        LOWORD(v12) = 108;
      }

      else
      {
        LOWORD(v12) = 23;
      }

      v81 = MEMORY[0x277D84F90];
      v82 = sub_225B2C374(MEMORY[0x277D84F90]);
      v83 = swift_isUniquelyReferenced_nonNull_native();
      *&v103 = v82;
      sub_225B2C4A0(v77, sub_225B2AC40, 0, v83, &v103);

      v9 = v103;
      v14 = sub_225B29AA0(0, 1, 1, v81);
      a3 = *(v14 + 2);
      v22 = *(v14 + 3);
      v16 = (a3 + 1);
      if (a3 < v22 >> 1)
      {
        goto LABEL_65;
      }

      goto LABEL_72;
    }

    goto LABEL_71;
  }

  if (BYTE6(a4) != 65)
  {
    goto LABEL_14;
  }

LABEL_8:
  v18 = v99 >> 62;
  if ((v99 >> 62) > 1)
  {
    goto LABEL_21;
  }

  if (!v18)
  {
    if (BYTE6(v99) == 65)
    {
      goto LABEL_24;
    }

    goto LABEL_52;
  }

  if (!__OFSUB__(HIDWORD(v98), v98))
  {
    if (HIDWORD(v98) - v98 == 65)
    {
      goto LABEL_24;
    }

    goto LABEL_52;
  }

LABEL_75:
  __break(1u);
LABEL_76:
  swift_once();
LABEL_37:
  v40 = off_28105B918;
  v41 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v42 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v42));
  (*(v93 + 16))(v12, &v40[v41], v9);
  os_unfair_lock_unlock(&v40[v42]);
  v43 = sub_225CCD934();
  v44 = sub_225CCED04();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    *v45 = 0;
    _os_log_impl(&dword_2259A7000, v43, v44, "coreidvd: derive shared secret", v45, 2u);
    MEMORY[0x22AA6F950](v45, -1, -1);
  }

  (*(v93 + 8))(v12, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B068, &unk_225CD7D60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_225CD4890;
  v47 = *MEMORY[0x277CDC3F8];
  *(inited + 32) = *MEMORY[0x277CDC3F8];
  v48 = MEMORY[0x277D83B88];
  *(inited + 40) = 32;
  v49 = *MEMORY[0x277CDC400];
  *(inited + 64) = v48;
  *(inited + 72) = v49;
  *(inited + 104) = MEMORY[0x277CC9318];
  *(inited + 80) = a3;
  *(inited + 88) = v10;
  v50 = v47;
  v51 = v49;
  sub_2259CB710(a3, v10);
  sub_225B2CFE0(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B070, &qword_225CD7AF0);
  swift_arrayDestroy();
  sub_2259D8718(0, &qword_281059A60, 0x277CCACA8);
  sub_225A1D788();
  v52 = sub_225CCE2B4();

  v53 = SecKeyCopyKeyExchangeResult(a4, v17, v97, v52, &v101);

  if (v53)
  {
    type metadata accessor for DIPSecureData();
    a4 = swift_allocObject();
    *(a4 + 16) = v53;
    v54 = v53;
    BytePtr = CFDataGetBytePtr(v54);
    Length = CFDataGetLength(v54);

    mlock(BytePtr, Length);
  }

  else
  {
    v100 = 254;
    a4 = errorFromCFError(_:_:_:)(v101, 0xD00000000000001DLL, 0x8000000225D175C0, &v100);
    swift_willThrow();
  }

  sub_2259BEF00(v89, v90);
  sub_2259BEF00(v94, v95);
  sub_2259BEF00(v91, v92);
  sub_2259BEF00(v103, *(&v103 + 1));
  return a4;
}

uint64_t sub_225A23E6C@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 104))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_225A23F38()
{
  v1 = *v0;
  v2 = *(*v0 + 32);
  sub_2259CB710(v2, *(v1 + 40));
  return v2;
}

void *sub_225A23F80(unsigned __int8 *a1, __SecKey *a2)
{
  error[1] = *MEMORY[0x277D85DE8];
  v52 = sub_225CCD954();
  v6 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  error[0] = 0;
  v10 = SecKeyCopyExternalRepresentation(a2, error);
  if (v10)
  {
    v46 = a2;
    v43 = v3;
    v11 = v10;
    v12 = sub_225CCCFA4();
    v14 = v13;

    v15 = v2[4];
    v16 = v2[5];
    sub_2259CB710(v15, v16);
    v17 = v9 == 0;
    if (v9)
    {
      v18 = v15;
    }

    else
    {
      v18 = v12;
    }

    if (v17)
    {
      v19 = v14;
    }

    else
    {
      v19 = v16;
    }

    if (v17)
    {
      v20 = v15;
    }

    else
    {
      v20 = v12;
    }

    if (!v17)
    {
      v16 = v14;
    }

    v55 = xmmword_225CD4150;
    v50 = v12;
    v51 = v14;
    v21 = v14;
    v22 = v19;
    sub_2259CB710(v12, v21);
    v47 = v20;
    v48 = v16;
    sub_225CCCFC4();
    v49 = v18;
    sub_225CCCFC4();
    v45 = v2[2];
    v44 = *MEMORY[0x277CDC298];
    v23 = v55;
    v54 = 0;
    if (qword_28105B910 != -1)
    {
      swift_once();
    }

    v24 = off_28105B918;
    v25 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
    v26 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((off_28105B918 + v26));
    v27 = v52;
    (*(v6 + 16))(v8, &v24[v25], v52);
    os_unfair_lock_unlock(&v24[v26]);
    v28 = sub_225CCD934();
    v29 = sub_225CCED04();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_2259A7000, v28, v29, "coreidvd: derive shared secret", v30, 2u);
      MEMORY[0x22AA6F950](v30, -1, -1);
    }

    (*(v6 + 8))(v8, v27);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B068, &unk_225CD7D60);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_225CD4890;
    v32 = *MEMORY[0x277CDC3F8];
    *(inited + 32) = *MEMORY[0x277CDC3F8];
    v2 = (inited + 32);
    v33 = MEMORY[0x277D83B88];
    *(inited + 40) = 32;
    v34 = *MEMORY[0x277CDC400];
    *(inited + 64) = v33;
    *(inited + 72) = v34;
    *(inited + 104) = MEMORY[0x277CC9318];
    *(inited + 80) = v23;
    v35 = v32;
    v36 = v34;
    sub_2259CB710(v23, *(&v23 + 1));
    sub_225B2CFE0(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B070, &qword_225CD7AF0);
    swift_arrayDestroy();
    sub_2259D8718(0, &qword_281059A60, 0x277CCACA8);
    sub_225A1D788();
    v37 = sub_225CCE2B4();

    v38 = SecKeyCopyKeyExchangeResult(v45, v44, v46, v37, &v54);

    if (v38)
    {
      type metadata accessor for DIPSecureData();
      v2 = swift_allocObject();
      v2[2] = v38;
      v39 = v38;
      BytePtr = CFDataGetBytePtr(v39);
      Length = CFDataGetLength(v39);

      mlock(BytePtr, Length);
    }

    else
    {
      v53 = 254;
      errorFromCFError(_:_:_:)(v54, 0xD00000000000001DLL, 0x8000000225D175C0, &v53);
      swift_willThrow();
    }

    sub_2259BEF00(v47, v48);
    sub_2259BEF00(v49, v22);
    sub_2259BEF00(v50, v51);
    sub_2259BEF00(v55, *(&v55 + 1));
  }

  else
  {
    LOWORD(v55) = 155;
    errorFromCFError(_:_:_:)(error[0], 0xD000000000000029, 0x8000000225D184D0, &v55);
    swift_willThrow();
  }

  return v2;
}

uint64_t _s13CoreIDVShared19DIPECIESSessionECV3CfD_0()
{
  sub_2259BEF00(*(v0 + 32), *(v0 + 40));

  return swift_deallocClassInstance();
}

uint64_t sub_225A245D4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;
  sub_2259CB6FC(v2, v3);
  return sub_2259B97A8(v5, v6);
}

uint64_t sub_225A24644()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  sub_2259CB6FC(v1, *(v0 + 24));
  return v1;
}

uint64_t sub_225A24694(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return sub_2259B97A8(v5, v6);
}

void sub_225A2473C(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 32);
  *(v3 + 32) = v2;
  v5 = v2;
}

void *sub_225A24794()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
  v2 = v1;
  return v1;
}

void sub_225A247D8(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 32);
  *(v1 + 32) = a1;
}

uint64_t DIPECIESSessionV3SecKey.__allocating_init(_:)(void *a1)
{
  v2 = swift_allocObject();
  DIPECIESSessionV3SecKey.init(_:)(a1);
  return v2;
}

uint64_t DIPECIESSessionV3SecKey.init(_:)(void *a1)
{
  v43 = *MEMORY[0x277D85DE8];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v38 - v4;
  v40 = xmmword_225CD3100;
  *(v1 + 16) = xmmword_225CD3100;
  *(v1 + 32) = 0;
  v6 = (v1 + 32);
  swift_beginAccess();
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  *(v1 + 16) = v40;
  sub_2259B97A8(v7, v8);
  swift_beginAccess();
  v9 = *(v1 + 32);
  *(v1 + 32) = 0;

  if (a1)
  {
    v10 = *v6;
    *v6 = a1;
    v11 = a1;

    error = 0;
    v12 = SecKeyCopyPublicKey(v11);
    if (v12)
    {
      v13 = v12;
      v14 = SecKeyCopyExternalRepresentation(v12, &error);
      if (v14)
      {
        v15 = v14;
        v16 = sub_225CCCFA4();
        v18 = v17;

        v19 = *(v1 + 16);
        v20 = *(v1 + 24);
        *(v1 + 16) = v16;
        *(v1 + 24) = v18;
        sub_2259B97A8(v19, v20);
        return v1;
      }

      LOWORD(v41) = 249;
      errorFromCFError(_:_:_:)(error, 0xD00000000000003FLL, 0x8000000225D18230, &v41);
      swift_willThrow();
    }

    else
    {
      v39 = 0x8000000225D18060;
      *&v40 = 0x8000000225D181F0;
      v21 = sub_225B2C248(MEMORY[0x277D84F90]);
      sub_2259CB5EC();
      swift_allocError();
      v23 = v22;
      v24 = sub_225CCE954();
      v25 = *(v24 - 8);
      (*(v25 + 56))(v5, 1, 1, v24);
      LODWORD(v24) = (*(v25 + 48))(v5, 1, v24);
      sub_2259CB640(v5, &unk_27D73B050, &unk_225CD3AD0);
      if (v24)
      {
        v26 = 249;
      }

      else
      {
        v26 = 23;
      }

      v27 = MEMORY[0x277D84F90];
      v28 = sub_225B2C374(MEMORY[0x277D84F90]);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v41 = v28;
      sub_225B2C4A0(v21, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v41);

      v30 = v41;
      v31 = sub_225B29AA0(0, 1, 1, v27);
      v33 = *(v31 + 2);
      v32 = *(v31 + 3);
      if (v33 >= v32 >> 1)
      {
        v31 = sub_225B29AA0((v32 > 1), v33 + 1, 1, v31);
      }

      *(v31 + 2) = v33 + 1;
      v34 = &v31[56 * v33];
      v35 = v40;
      *(v34 + 4) = 0xD00000000000003BLL;
      *(v34 + 5) = v35;
      v36 = v39;
      *(v34 + 6) = 0xD000000000000023;
      *(v34 + 7) = v36;
      *(v34 + 8) = 0x293A5F2874696E69;
      *(v34 + 9) = 0xE800000000000000;
      *(v34 + 10) = 347;
      *v23 = v26;
      *(v23 + 8) = v31;
      *(v23 + 16) = 0xD00000000000003BLL;
      *(v23 + 24) = v35;
      *(v23 + 32) = v30;
      *(v23 + 40) = 0;
      swift_willThrow();
    }
  }

  return v1;
}

void sub_225A24CA8(unint64_t a1, int64_t a2, __SecKey *a3, uint64_t a4)
{
  v5 = v4;
  error[1] = *MEMORY[0x277D85DE8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v107 - v11;
  if (a4)
  {
    if (*(a4 + 16))
    {
      v13 = sub_2259F1D10(0);
      if (v14)
      {
        if (*(a4 + 16))
        {
          v15 = (*(a4 + 56) + 16 * v13);
          v16 = *v15;
          v17 = v15[1];
          v18 = sub_2259F1D10(1);
          if (v20)
          {
            v21 = (*(a4 + 56) + 16 * v18);
            v22 = *v21;
            v23 = v21[1];
            v114 = v23;
            v115 = v22;
            v24 = v17 >> 62;
            v113 = v16;
            if ((v17 >> 62) > 1)
            {
              if (v24 != 2)
              {
                goto LABEL_25;
              }

              v41 = *(v16 + 16);
              v40 = *(v16 + 24);
              v42 = __OFSUB__(v40, v41);
              v25 = v40 - v41;
              if (!v42)
              {
LABEL_21:
                if (v25 == 65)
                {
                  v24 = v23 >> 62;
                  if ((v23 >> 62) <= 1)
                  {
                    if (!v24)
                    {
                      v43 = BYTE6(v23);
                      goto LABEL_46;
                    }

                    v43 = (HIDWORD(v115) - v115);
                    if (!__OFSUB__(HIDWORD(v115), v115))
                    {
                      v43 = v43;
                      goto LABEL_46;
                    }

LABEL_94:
                    __break(1u);
                    goto LABEL_95;
                  }

                  goto LABEL_32;
                }

LABEL_25:
                a2 = 0xD000000000000023;
                v116 = 0;
                v117 = 0xE000000000000000;
                sub_2259CB710(v16, v17);
                sub_2259CB710(v115, v23);
                v23 = &v116;
                sub_225CCF204();

                v116 = 0xD00000000000002FLL;
                v117 = 0x8000000225D18270;
                if (v24 <= 1)
                {
                  if (!v24)
                  {
                    v43 = BYTE6(v17);
                    goto LABEL_38;
                  }

                  goto LABEL_36;
                }

                v43 = 0;
                if (v24 != 2)
                {
                  goto LABEL_38;
                }

                v45 = *(v16 + 16);
                v44 = *(v16 + 24);
                v42 = __OFSUB__(v44, v45);
                v43 = v44 - v45;
                if (!v42)
                {
                  goto LABEL_38;
                }

                __break(1u);
LABEL_32:
                if (v24 != 2)
                {
LABEL_52:
                  a1 = 0xD000000000000023;
                  v116 = 0;
                  v117 = 0xE000000000000000;
                  sub_2259CB710(v16, v17);
                  a2 = v115;
                  sub_2259CB710(v115, v23);
                  v23 = &v116;
                  sub_225CCF204();
                  MEMORY[0x22AA6CE70](0xD000000000000032, 0x8000000225D182A0);
                  if (v24 > 1)
                  {
                    v43 = 0;
                    if (v24 != 2)
                    {
                      goto LABEL_61;
                    }

                    v75 = *(a2 + 16);
                    v74 = *(a2 + 24);
                    v42 = __OFSUB__(v74, v75);
                    v43 = v74 - v75;
                    if (!v42)
                    {
                      goto LABEL_61;
                    }

                    __break(1u);
                  }

                  else if (!v24)
                  {
                    v43 = BYTE6(v114);
                    goto LABEL_61;
                  }

                  v43 = (HIDWORD(a2) - a2);
                  if (!__OFSUB__(HIDWORD(a2), a2))
                  {
                    v43 = v43;
LABEL_61:
                    v112 = v17;
                    *&v118 = v43;
                    v76 = sub_225CCF824();
                    MEMORY[0x22AA6CE70](v76);

                    v16 = v116;
                    v23 = v117;
                    v111 = 0x8000000225D18060;
                    v77 = MEMORY[0x277D84F90];
                    v78 = sub_225B2C248(MEMORY[0x277D84F90]);
                    sub_2259CB5EC();
                    swift_allocError();
                    a1 = v79;
                    v80 = sub_225CCE954();
                    v81 = *(v80 - 8);
                    (*(v81 + 56))(v12, 1, 1, v80);
                    LODWORD(v80) = (*(v81 + 48))(v12, 1, v80);
                    sub_2259CB640(v12, &unk_27D73B050, &unk_225CD3AD0);
                    if (v80)
                    {
                      LOWORD(v12) = 108;
                    }

                    else
                    {
                      LOWORD(v12) = 23;
                    }

                    v82 = sub_225B2C374(v77);
                    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                    v116 = v82;
                    sub_225B2C4A0(v78, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v116);

                    v24 = v116;
                    v19 = sub_225B29AA0(0, 1, 1, v77);
                    v5 = *(v19 + 2);
                    v25 = *(v19 + 3);
                    v17 = v5 + 1;
                    if (v5 < v25 >> 1)
                    {
                      goto LABEL_65;
                    }

                    goto LABEL_92;
                  }

LABEL_95:
                  __break(1u);
LABEL_96:
                  v19 = sub_225B29AA0((v43 > 1), a2, 1, v19);
LABEL_85:
                  *(v19 + 2) = a2;
                  v104 = &v19[56 * v17];
                  *(v104 + 4) = 0xD000000000000032;
                  *(v104 + 5) = v16;
                  *(v104 + 6) = 0xD000000000000023;
                  *(v104 + 7) = v108;
                  *(v104 + 8) = 0x2874707972636E65;
                  *(v104 + 9) = 0xEF293A5F3A5F3A5FLL;
                  *(v104 + 10) = 384;
                  *a1 = v12;
                  *(a1 + 8) = v19;
                  *(a1 + 16) = 0xD000000000000032;
                  *(a1 + 24) = v16;
                  *(a1 + 32) = v24;
                  *(a1 + 40) = 0;
                  swift_willThrow();
                  sub_2259BEF00(v110, v111);
                  sub_2259BEF00(a3, v23);
                  sub_2259BEF00(v115, v114);
                  sub_2259BEF00(v113, v112);
                  sub_2259BEF00(v118, *(&v118 + 1));
                  return;
                }

                v47 = *(v115 + 16);
                v46 = *(v115 + 24);
                v42 = __OFSUB__(v46, v47);
                v43 = v46 - v47;
                if (!v42)
                {
LABEL_46:
                  if (v43 == 65)
                  {
                    error[0] = 0;
                    sub_2259CB710(v16, v17);
                    sub_2259CB710(v115, v23);
                    v60 = SecKeyCopyExternalRepresentation(a3, error);
                    if (v60)
                    {
                      v61 = v60;
                      v110 = sub_225CCCFA4();
                      v111 = v62;

                      v118 = xmmword_225CD4150;
                      sub_225CCCFC4();
                      sub_225CCCFC4();
                      sub_225CCCFC4();
                      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B068, &unk_225CD7D60);
                      inited = swift_initStackObject();
                      v64 = MEMORY[0x277CDC400];
                      *(inited + 16) = xmmword_225CD30F0;
                      v65 = *v64;
                      *(inited + 32) = v65;
                      v112 = inited + 32;
                      v66 = v118;
                      *(inited + 64) = MEMORY[0x277CC9318];
                      *(inited + 40) = v66;
                      v67 = v65;
                      sub_2259CB710(v66, *(&v66 + 1));
                      sub_225B2CFE0(inited);
                      swift_setDeallocating();
                      sub_2259CB640(v112, &qword_27D73B070, &qword_225CD7AF0);
                      v68 = sub_225CCCF74();
                      sub_2259D8718(0, &qword_281059A60, 0x277CCACA8);
                      sub_225A1D788();
                      v69 = sub_225CCE2B4();

                      EncryptedDataWithParameters = DIPSecKeyCreateEncryptedDataWithParameters();

                      if (EncryptedDataWithParameters)
                      {
                        a3 = sub_225CCCFA4();
                        v23 = v71;

                        v72 = v23 >> 62;
                        if ((v23 >> 62) > 1)
                        {
                          if (v72 != 2)
                          {
                            goto LABEL_81;
                          }

                          v87 = *(a3 + 2);
                          v86 = *(a3 + 3);
                          v42 = __OFSUB__(v86, v87);
                          v73 = v86 - v87;
                          if (!v42)
                          {
LABEL_76:
                            if (v73 >= 66)
                            {
                              v88 = sub_225CCCFD4();
                              v90 = v89;
                              swift_beginAccess();
                              v91 = *(v5 + 16);
                              v92 = *(v5 + 24);
                              *(v5 + 16) = v88;
                              *(v5 + 24) = v90;
                              sub_2259B97A8(v91, v92);
                              if (v72 == 2)
                              {
                                v106 = *(a3 + 2);
                                v105 = *(a3 + 3);
                                v96 = v105 - v106;
                                v93 = v113;
                                if (__OFSUB__(v105, v106))
                                {
LABEL_99:
                                  __break(1u);
LABEL_100:
                                  __break(1u);
                                  return;
                                }

                                v94 = v111;
                                v95 = v110;
                              }

                              else
                              {
                                v93 = v113;
                                if (v72 == 1)
                                {
                                  v94 = v111;
                                  v95 = v110;
                                  if (!__OFSUB__(HIDWORD(a3), a3))
                                  {
                                    v96 = HIDWORD(a3) - a3;
                                    goto LABEL_89;
                                  }

                                  goto LABEL_98;
                                }

                                v94 = v111;
                                v95 = v110;
                                v96 = BYTE6(v23);
                              }

LABEL_89:
                              if (v96 >= 65)
                              {
                                sub_225CCCFD4();
                                sub_2259BEF00(v95, v94);
                                sub_2259BEF00(a3, v23);
                                sub_2259BEF00(v115, v114);
                                sub_2259BEF00(v93, v17);
                                sub_2259BEF00(v118, *(&v118 + 1));
                                return;
                              }

                              goto LABEL_100;
                            }

LABEL_81:
                            v112 = v17;
                            v16 = 0x8000000225D18370;
                            v108 = 0x8000000225D18060;
                            v97 = MEMORY[0x277D84F90];
                            v98 = sub_225B2C248(MEMORY[0x277D84F90]);
                            sub_2259CB5EC();
                            v109 = swift_allocError();
                            a1 = v99;
                            v100 = sub_225CCE954();
                            v101 = *(v100 - 8);
                            (*(v101 + 56))(v12, 1, 1, v100);
                            LODWORD(v100) = (*(v101 + 48))(v12, 1, v100);
                            sub_2259CB640(v12, &unk_27D73B050, &unk_225CD3AD0);
                            if (v100)
                            {
                              LOWORD(v12) = 155;
                            }

                            else
                            {
                              LOWORD(v12) = 23;
                            }

                            v102 = sub_225B2C374(v97);
                            v103 = swift_isUniquelyReferenced_nonNull_native();
                            v116 = v102;
                            sub_225B2C4A0(v98, sub_225B2AC40, 0, v103, &v116);

                            v24 = v116;
                            v19 = sub_225B29AA0(0, 1, 1, v97);
                            v17 = *(v19 + 2);
                            v43 = *(v19 + 3);
                            a2 = v17 + 1;
                            if (v17 < v43 >> 1)
                            {
                              goto LABEL_85;
                            }

                            goto LABEL_96;
                          }

                          __break(1u);
                        }

                        else if (!v72)
                        {
                          v73 = BYTE6(v23);
                          goto LABEL_76;
                        }

                        LODWORD(v73) = HIDWORD(a3) - a3;
                        if (__OFSUB__(HIDWORD(a3), a3))
                        {
                          __break(1u);
LABEL_98:
                          __break(1u);
                          goto LABEL_99;
                        }

                        v73 = v73;
                        goto LABEL_76;
                      }

                      LOWORD(v116) = 155;
                      errorFromCFError(_:_:_:)(error[0], 0xD00000000000003DLL, 0x8000000225D18330, &v116);
                      swift_willThrow();
                      sub_2259BEF00(v110, v111);
                      sub_2259BEF00(v115, v114);
                      sub_2259BEF00(v113, v17);
                      v85 = *(&v118 + 1);
                      v84 = v118;
                    }

                    else
                    {
                      LOWORD(v116) = 249;
                      errorFromCFError(_:_:_:)(error[0], 0xD000000000000049, 0x8000000225D182E0, &v116);
                      swift_willThrow();
                      sub_2259BEF00(v16, v17);
                      v84 = v115;
                      v85 = v23;
                    }

                    sub_2259BEF00(v84, v85);
                    return;
                  }

                  goto LABEL_52;
                }

                __break(1u);
LABEL_36:
                v43 = (HIDWORD(v16) - v16);
                if (__OFSUB__(HIDWORD(v16), v16))
                {
                  __break(1u);
                  goto LABEL_94;
                }

                v43 = v43;
LABEL_38:
                v112 = v17;
                *&v118 = v43;
                v48 = sub_225CCF824();
                MEMORY[0x22AA6CE70](v48);

                v16 = v116;
                v23 = v117;
                v111 = 0x8000000225D18060;
                v49 = MEMORY[0x277D84F90];
                v50 = sub_225B2C248(MEMORY[0x277D84F90]);
                sub_2259CB5EC();
                swift_allocError();
                a1 = v51;
                v52 = sub_225CCE954();
                v53 = *(v52 - 8);
                (*(v53 + 56))(v12, 1, 1, v52);
                LODWORD(v52) = (*(v53 + 48))(v12, 1, v52);
                sub_2259CB640(v12, &unk_27D73B050, &unk_225CD3AD0);
                if (v52)
                {
                  LOWORD(v12) = 108;
                }

                else
                {
                  LOWORD(v12) = 23;
                }

                v54 = sub_225B2C374(v49);
                v55 = swift_isUniquelyReferenced_nonNull_native();
                v116 = v54;
                sub_225B2C4A0(v50, sub_225B2AC40, 0, v55, &v116);

                v24 = v116;
                v19 = sub_225B29AA0(0, 1, 1, v49);
                v57 = *(v19 + 2);
                v56 = *(v19 + 3);
                if (v57 >= v56 >> 1)
                {
                  v19 = sub_225B29AA0((v56 > 1), v57 + 1, 1, v19);
                }

                *(v19 + 2) = v57 + 1;
                v58 = &v19[56 * v57];
                *(v58 + 4) = v16;
                *(v58 + 5) = v23;
                *(v58 + 6) = 0xD000000000000023;
                *(v58 + 7) = v111;
                *(v58 + 8) = 0x2874707972636E65;
                *(v58 + 9) = 0xEF293A5F3A5F3A5FLL;
                v59 = 361;
                goto LABEL_66;
              }

              __break(1u);
            }

            else if (!v24)
            {
              v25 = BYTE6(v17);
              goto LABEL_21;
            }

            v25 = (HIDWORD(v16) - v16);
            if (__OFSUB__(HIDWORD(v16), v16))
            {
              __break(1u);
LABEL_92:
              v19 = sub_225B29AA0((v25 > 1), v17, 1, v19);
LABEL_65:
              *(v19 + 2) = v17;
              v58 = &v19[56 * v5];
              *(v58 + 4) = v16;
              *(v58 + 5) = v23;
              *(v58 + 6) = 0xD000000000000023;
              *(v58 + 7) = v111;
              *(v58 + 8) = 0x2874707972636E65;
              *(v58 + 9) = 0xEF293A5F3A5F3A5FLL;
              v59 = 364;
LABEL_66:
              *(v58 + 10) = v59;
              *a1 = v12;
              *(a1 + 8) = v19;
              *(a1 + 16) = v16;
              *(a1 + 24) = v23;
              *(a1 + 32) = v24;
              *(a1 + 40) = 0;
              swift_willThrow();
              sub_2259BEF00(v115, v114);
              sub_2259BEF00(v113, v112);
              return;
            }

            v25 = v25;
            goto LABEL_21;
          }
        }
      }
    }
  }

  v26 = MEMORY[0x277D84F90];
  v27 = sub_225B2C248(MEMORY[0x277D84F90]);
  sub_2259CB5EC();
  swift_allocError();
  v29 = v28;
  v30 = sub_225CCE954();
  v31 = *(v30 - 8);
  (*(v31 + 56))(v12, 1, 1, v30);
  LODWORD(v30) = (*(v31 + 48))(v12, 1, v30);
  sub_2259CB640(v12, &unk_27D73B050, &unk_225CD3AD0);
  if (v30)
  {
    v32 = 108;
  }

  else
  {
    v32 = 23;
  }

  v33 = sub_225B2C374(v26);
  v34 = swift_isUniquelyReferenced_nonNull_native();
  v116 = v33;
  sub_225B2C4A0(v27, sub_225B2AC40, 0, v34, &v116);

  v35 = v116;
  v36 = sub_225B29AA0(0, 1, 1, v26);
  v38 = *(v36 + 2);
  v37 = *(v36 + 3);
  if (v38 >= v37 >> 1)
  {
    v36 = sub_225B29AA0((v37 > 1), v38 + 1, 1, v36);
  }

  *(v36 + 2) = v38 + 1;
  v39 = &v36[56 * v38];
  *(v39 + 4) = 0xD000000000000053;
  *(v39 + 5) = 0x8000000225D18130;
  *(v39 + 6) = 0xD000000000000023;
  *(v39 + 7) = 0x8000000225D18060;
  *(v39 + 8) = 0x2874707972636E65;
  *(v39 + 9) = 0xEF293A5F3A5F3A5FLL;
  *(v39 + 10) = 358;
  *v29 = v32;
  *(v29 + 8) = v36;
  *(v29 + 16) = 0xD000000000000053;
  *(v29 + 24) = 0x8000000225D18130;
  *(v29 + 32) = v35;
  *(v29 + 40) = 0;
  swift_willThrow();
}

uint64_t sub_225A25C4C(unint64_t a1, int64_t a2, __SecCertificate *a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v30 - v9;
  v11 = SecCertificateCopyKey(a3);
  if (v11)
  {
    v12 = v11;
    sub_225A24CA8(a1, a2, v11, a4);
    v14 = v13;
  }

  else
  {
    v31 = 0x8000000225D18060;
    v15 = MEMORY[0x277D84F90];
    v16 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    swift_allocError();
    v14 = v17;
    v18 = sub_225CCE954();
    v19 = *(v18 - 8);
    (*(v19 + 56))(v10, 1, 1, v18);
    LODWORD(v18) = (*(v19 + 48))(v10, 1, v18);
    sub_2259CB640(v10, &unk_27D73B050, &unk_225CD3AD0);
    if (v18)
    {
      v20 = 155;
    }

    else
    {
      v20 = 23;
    }

    v21 = sub_225B2C374(v15);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v32 = v21;
    sub_225B2C4A0(v16, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v32);

    v23 = v32;
    v24 = sub_225B29AA0(0, 1, 1, v15);
    v26 = *(v24 + 2);
    v25 = *(v24 + 3);
    if (v26 >= v25 >> 1)
    {
      v24 = sub_225B29AA0((v25 > 1), v26 + 1, 1, v24);
    }

    *(v24 + 2) = v26 + 1;
    v27 = &v24[56 * v26];
    *(v27 + 4) = 0xD000000000000032;
    *(v27 + 5) = 0x8000000225D183B0;
    v28 = v31;
    *(v27 + 6) = 0xD000000000000023;
    *(v27 + 7) = v28;
    *(v27 + 8) = 0x2874707972636E65;
    *(v27 + 9) = 0xEF293A5F3A5F3A5FLL;
    *(v27 + 10) = 392;
    *v14 = v20;
    *(v14 + 8) = v24;
    *(v14 + 16) = 0xD000000000000032;
    *(v14 + 24) = 0x8000000225D183B0;
    *(v14 + 32) = v23;
    *(v14 + 40) = 0;
    swift_willThrow();
  }

  return v14;
}

uint64_t sub_225A25F6C()
{
  result = sub_225A28E08();
  if (!v0)
  {
    v3 = result;
    sub_2259CB710(result, v2);
    return v3;
  }

  return result;
}

uint64_t DIPECIESSessionV3SecKey.deinit()
{
  sub_2259B97A8(*(v0 + 16), *(v0 + 24));

  return v0;
}

uint64_t DIPECIESSessionV3SecKey.__deallocating_deinit()
{
  sub_2259B97A8(*(v0 + 16), *(v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t sub_225A2601C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for DIPECIESSessionV3SecKey();
  v5 = swift_allocObject();
  result = DIPECIESSessionV3SecKey.init(_:)(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t sub_225A260CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  result = a7(a1, a2, a3, a4, a5, a6);
  if (v7)
  {
    return v9;
  }

  return result;
}

uint64_t sub_225A26140()
{
  result = sub_225A28E08();
  if (!v0)
  {
    v3 = result;
    sub_2259CB710(result, v2);
    return v3;
  }

  return result;
}

void sub_225A2618C(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, const UInt8 **a5@<X8>)
{
  v6 = a4;
  v7 = a3;
  v17[2] = *MEMORY[0x277D85DE8];
  v8 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v8)
    {
      v17[0] = a1;
      LOWORD(v17[1]) = a2;
      BYTE2(v17[1]) = BYTE2(a2);
      BYTE3(v17[1]) = BYTE3(a2);
      BYTE4(v17[1]) = BYTE4(a2);
      BYTE5(v17[1]) = BYTE5(a2);
      v9 = v17;
      goto LABEL_17;
    }

    goto LABEL_11;
  }

  if (v8 == 2)
  {
    v10 = a5;
    v11 = v5;
    v12 = *(a1 + 16);
    v13 = *(a1 + 24);
    a1 = sub_225CCCA44();
    v14 = a1;
    if (a1)
    {
      a1 = sub_225CCCA74();
      a5 = (v12 - a1);
      if (__OFSUB__(v12, a1))
      {
        goto LABEL_21;
      }

      v14 += a5;
    }

    if (!__OFSUB__(v13, v12))
    {
      goto LABEL_15;
    }

    __break(1u);
LABEL_11:
    v15 = a1;
    if (a1 >> 32 >= a1)
    {
      v10 = a5;
      v11 = v5;
      v14 = sub_225CCCA44();
      if (!v14)
      {
LABEL_15:
        sub_225CCCA64();
        a5 = v10;
        v9 = v14;
        a3 = v7;
        a4 = v6;
        v5 = v11;
        goto LABEL_17;
      }

      v16 = sub_225CCCA74();
      if (!__OFSUB__(v15, v16))
      {
        v14 += v15 - v16;
        goto LABEL_15;
      }

LABEL_22:
      __break(1u);
    }

    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  memset(v17, 0, 14);
  v9 = v17;
LABEL_17:
  sub_225A22B68(v9, a3, a4, a5);
  if (v5)
  {
  }

  else
  {
  }
}

void sub_225A26398(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, void *a5@<X4>, uint64_t *a6@<X8>)
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v10 != 2)
    {
      goto LABEL_13;
    }

    v11 = a6;
    v15 = v6;
    v13 = *(a1 + 16);
    v12 = *(a1 + 24);
    if (sub_225CCCA44() && __OFSUB__(v13, sub_225CCCA74()))
    {
      goto LABEL_18;
    }

    if (!__OFSUB__(v12, v13))
    {
LABEL_12:
      sub_225CCCA64();
      a6 = v11;
      a3 = v9;
      a4 = v8;
      a5 = v7;
      v6 = v15;
      goto LABEL_13;
    }

LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v10)
  {
    v14 = a1;
    if (a1 >> 32 >= a1)
    {
      v11 = a6;
      v15 = v6;
      if (!sub_225CCCA44() || !__OFSUB__(v14, sub_225CCCA74()))
      {
        goto LABEL_12;
      }

LABEL_19:
      __break(1u);
    }

    __break(1u);
    goto LABEL_17;
  }

LABEL_13:
  sub_225A226B8(a3, a4, a5, a6);
  if (v6)
  {
  }

  else
  {
  }
}

uint64_t sub_225A265CC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v19 - v1;
  v3 = MEMORY[0x277D84F90];
  v4 = sub_225B2C248(MEMORY[0x277D84F90]);
  sub_2259CB5EC();
  swift_allocError();
  v6 = v5;
  v7 = sub_225CCE954();
  v8 = *(v7 - 8);
  (*(v8 + 56))(v2, 1, 1, v7);
  v9 = (*(v8 + 48))(v2, 1, v7);
  sub_2259CB640(v2, &unk_27D73B050, &unk_225CD3AD0);
  v10 = sub_225B2C374(v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = v10;
  sub_225B2C4A0(v4, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v20);

  v12 = v20;
  v13 = sub_225B29AA0(0, 1, 1, v3);
  v15 = *(v13 + 2);
  v14 = *(v13 + 3);
  if (v15 >= v14 >> 1)
  {
    v13 = sub_225B29AA0((v14 > 1), v15 + 1, 1, v13);
  }

  *(v13 + 2) = v15 + 1;
  v16 = &v13[56 * v15];
  *(v16 + 4) = 0xD00000000000003DLL;
  *(v16 + 5) = 0x8000000225D18900;
  *(v16 + 6) = 0xD000000000000023;
  *(v16 + 7) = 0x8000000225D18060;
  *(v16 + 8) = 0x2874707972636E65;
  *(v16 + 9) = 0xEF293A5F3A5F3A5FLL;
  *(v16 + 10) = 74;
  if (v9)
  {
    v17 = 109;
  }

  else
  {
    v17 = 23;
  }

  *v6 = v17;
  *(v6 + 8) = v13;
  *(v6 + 16) = 0xD00000000000003DLL;
  *(v6 + 24) = 0x8000000225D18900;
  *(v6 + 32) = v12;
  *(v6 + 40) = 0;
  return swift_willThrow();
}

void sub_225A2684C(uint64_t a1, uint64_t a2, void *a3)
{
  trust[1] = *MEMORY[0x277D85DE8];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v55 - v5;
  v7 = sub_225CCE444();
  v8 = sub_225CCE444();
  v9 = sub_225CCE444();
  ApplePinned = DIPSecPolicyCreateApplePinned();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AF80, &qword_225CEF400);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_225CD7D40;
  *(v11 + 32) = a3;
  trust[0] = 0;
  type metadata accessor for SecCertificate(0);
  v12 = a3;
  v13 = sub_225CCE7F4();
  v14 = SecTrustCreateWithCertificates(v13, ApplePinned, trust);

  if (v14 || !trust[0])
  {
    v57 = ApplePinned;

    v59 = 0;
    v60 = 0xE000000000000000;
    sub_225CCF204();
    MEMORY[0x22AA6CE70](0xD000000000000036, 0x8000000225D18890);
    LODWORD(v58) = v14;
    v18 = MEMORY[0x277D849A8];
    v19 = MEMORY[0x277D84A08];
    v20 = sub_225CCF824();
    MEMORY[0x22AA6CE70](v20);

    v21 = v59;
    v22 = v60;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10, &unk_225CD4660);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_225CD30F0;
    *(inited + 32) = 20;
    v24 = inited + 32;
    *(inited + 64) = v18;
    *(inited + 72) = v19;
    *(inited + 40) = v14;
    v25 = sub_225B2C374(inited);
    swift_setDeallocating();
    sub_2259CB640(v24, &qword_27D73B060, &unk_225CD3AE0);
    v56 = 0x8000000225D18060;
    sub_2259CB5EC();
    swift_allocError();
    v27 = v26;
    v28 = sub_225CCE954();
    v29 = *(v28 - 8);
    (*(v29 + 56))(v6, 1, 1, v28);
    LODWORD(v28) = (*(v29 + 48))(v6, 1, v28);
    sub_2259CB640(v6, &unk_27D73B050, &unk_225CD3AD0);
    if (v28)
    {
      v30 = 155;
    }

    else
    {
      v30 = 23;
    }

    v31 = MEMORY[0x277D84F90];
    v32 = sub_225B2C374(MEMORY[0x277D84F90]);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v59 = v32;
    sub_225B2C4A0(v25, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v59);

    v34 = v59;
    v35 = sub_225B29AA0(0, 1, 1, v31);
    v37 = *(v35 + 2);
    v36 = *(v35 + 3);
    if (v37 >= v36 >> 1)
    {
      v35 = sub_225B29AA0((v36 > 1), v37 + 1, 1, v35);
    }

    *(v35 + 2) = v37 + 1;
    v38 = &v35[56 * v37];
    *(v38 + 4) = v21;
    *(v38 + 5) = v22;
    v39 = v56;
    *(v38 + 6) = 0xD000000000000023;
    *(v38 + 7) = v39;
    *(v38 + 8) = 0x2874707972636E65;
    *(v38 + 9) = 0xEF293A5F3A5F3A5FLL;
    *(v38 + 10) = 85;
    *v27 = v30;
    *(v27 + 8) = v35;
    *(v27 + 16) = v21;
    *(v27 + 24) = v22;
    *(v27 + 32) = v34;
    *(v27 + 40) = 0;
  }

  else
  {
    v59 = 0;
    v15 = trust[0];

    v16 = sub_225CCCF74();
    v17 = DIPSecCopyEncryptedToServer();

    if (v17)
    {
      sub_225CCCFA4();

      return;
    }

    v57 = ApplePinned;
    v56 = 0x8000000225D18060;
    v40 = MEMORY[0x277D84F90];
    v41 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    swift_allocError();
    v43 = v42;
    v44 = sub_225CCE954();
    v45 = *(v44 - 8);
    (*(v45 + 56))(v6, 1, 1, v44);
    LODWORD(v44) = (*(v45 + 48))(v6, 1, v44);
    sub_2259CB640(v6, &unk_27D73B050, &unk_225CD3AD0);
    if (v44)
    {
      v46 = 155;
    }

    else
    {
      v46 = 23;
    }

    v47 = sub_225B2C374(v40);
    v48 = swift_isUniquelyReferenced_nonNull_native();
    v58 = v47;
    sub_225B2C4A0(v41, sub_225B2AC40, 0, v48, &v58);

    v49 = v58;
    v50 = sub_225B29AA0(0, 1, 1, v40);
    v52 = *(v50 + 2);
    v51 = *(v50 + 3);
    if (v52 >= v51 >> 1)
    {
      v50 = sub_225B29AA0((v51 > 1), v52 + 1, 1, v50);
    }

    *(v50 + 2) = v52 + 1;
    v53 = &v50[56 * v52];
    *(v53 + 4) = 0xD000000000000028;
    *(v53 + 5) = 0x8000000225D188D0;
    v54 = v56;
    *(v53 + 6) = 0xD000000000000023;
    *(v53 + 7) = v54;
    *(v53 + 8) = 0x2874707972636E65;
    *(v53 + 9) = 0xEF293A5F3A5F3A5FLL;
    *(v53 + 10) = 91;
    *v43 = v46;
    *(v43 + 8) = v50;
    *(v43 + 16) = 0xD000000000000028;
    *(v43 + 24) = 0x8000000225D188D0;
    *(v43 + 32) = v49;
    *(v43 + 40) = 0;
  }

  swift_willThrow();
}

uint64_t sub_225A26F58()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v19 - v1;
  v3 = MEMORY[0x277D84F90];
  v4 = sub_225B2C248(MEMORY[0x277D84F90]);
  sub_2259CB5EC();
  swift_allocError();
  v6 = v5;
  v7 = sub_225CCE954();
  v8 = *(v7 - 8);
  (*(v8 + 56))(v2, 1, 1, v7);
  v9 = (*(v8 + 48))(v2, 1, v7);
  sub_2259CB640(v2, &unk_27D73B050, &unk_225CD3AD0);
  v10 = sub_225B2C374(v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = v10;
  sub_225B2C4A0(v4, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v20);

  v12 = v20;
  v13 = sub_225B29AA0(0, 1, 1, v3);
  v15 = *(v13 + 2);
  v14 = *(v13 + 3);
  if (v15 >= v14 >> 1)
  {
    v13 = sub_225B29AA0((v14 > 1), v15 + 1, 1, v13);
  }

  *(v13 + 2) = v15 + 1;
  v16 = &v13[56 * v15];
  *(v16 + 4) = 0xD000000000000024;
  *(v16 + 5) = 0x8000000225D18860;
  *(v16 + 6) = 0xD000000000000023;
  *(v16 + 7) = 0x8000000225D18060;
  *(v16 + 8) = 0xD000000000000011;
  *(v16 + 9) = 0x8000000225D18610;
  *(v16 + 10) = 97;
  if (v9)
  {
    v17 = 109;
  }

  else
  {
    v17 = 23;
  }

  *v6 = v17;
  *(v6 + 8) = v13;
  *(v6 + 16) = 0xD000000000000024;
  *(v6 + 24) = 0x8000000225D18860;
  *(v6 + 32) = v12;
  *(v6 + 40) = 0;
  return swift_willThrow();
}

uint64_t sub_225A271CC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v19 - v1;
  v3 = MEMORY[0x277D84F90];
  v4 = sub_225B2C248(MEMORY[0x277D84F90]);
  sub_2259CB5EC();
  swift_allocError();
  v6 = v5;
  v7 = sub_225CCE954();
  v8 = *(v7 - 8);
  (*(v8 + 56))(v2, 1, 1, v7);
  v9 = (*(v8 + 48))(v2, 1, v7);
  sub_2259CB640(v2, &unk_27D73B050, &unk_225CD3AD0);
  v10 = sub_225B2C374(v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = v10;
  sub_225B2C4A0(v4, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v20);

  v12 = v20;
  v13 = sub_225B29AA0(0, 1, 1, v3);
  v15 = *(v13 + 2);
  v14 = *(v13 + 3);
  if (v15 >= v14 >> 1)
  {
    v13 = sub_225B29AA0((v14 > 1), v15 + 1, 1, v13);
  }

  *(v13 + 2) = v15 + 1;
  v16 = &v13[56 * v15];
  *(v16 + 4) = 0xD00000000000002FLL;
  *(v16 + 5) = 0x8000000225D18830;
  *(v16 + 6) = 0xD000000000000023;
  *(v16 + 7) = 0x8000000225D18060;
  *(v16 + 8) = 0xD000000000000013;
  *(v16 + 9) = 0x8000000225D185D0;
  *(v16 + 10) = 101;
  if (v9)
  {
    v17 = 109;
  }

  else
  {
    v17 = 23;
  }

  *v6 = v17;
  *(v6 + 8) = v13;
  *(v6 + 16) = 0xD00000000000002FLL;
  *(v6 + 24) = 0x8000000225D18830;
  *(v6 + 32) = v12;
  *(v6 + 40) = 0;
  return swift_willThrow();
}

unint64_t sub_225A27464(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = v5;
  v8 = v4;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v65 - v14;
  if (!a4 || !*(a4 + 16) || (v16 = sub_2259F1D10(0), (v17 & 1) == 0) || !*(a4 + 16) || (v18 = (*(a4 + 56) + 16 * v16), v19 = *v18, v72 = v18[1], result = sub_2259F1D10(1), (v22 & 1) == 0))
  {
    v72 = 0x8000000225D18060;
    v70 = 0x8000000225D18610;
    v27 = MEMORY[0x277D84F90];
    v28 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    swift_allocError();
    v30 = v29;
    v31 = sub_225CCE954();
    v32 = *(v31 - 8);
    (*(v32 + 56))(v15, 1, 1, v31);
    LODWORD(v31) = (*(v32 + 48))(v15, 1, v31);
    sub_2259CB640(v15, &unk_27D73B050, &unk_225CD3AD0);
    if (v31)
    {
      v33 = 108;
    }

    else
    {
      v33 = 23;
    }

    v34 = sub_225B2C374(v27);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v71 = v34;
    sub_225B2C4A0(v28, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v71);

    v36 = v71;
    v37 = sub_225B29AA0(0, 1, 1, v27);
    v39 = *(v37 + 2);
    v38 = *(v37 + 3);
    if (v39 >= v38 >> 1)
    {
      v37 = sub_225B29AA0((v38 > 1), v39 + 1, 1, v37);
    }

    *(v37 + 2) = v39 + 1;
    v40 = &v37[56 * v39];
    *(v40 + 4) = 0xD000000000000053;
    *(v40 + 5) = 0x8000000225D18130;
    *(v40 + 6) = 0xD000000000000023;
    *(v40 + 7) = v72;
    *(v40 + 8) = 0xD000000000000011;
    *(v40 + 9) = v70;
    *(v40 + 10) = 247;
    *v30 = v33;
    *(v30 + 8) = v37;
    *(v30 + 16) = 0xD000000000000053;
    *(v30 + 24) = 0x8000000225D18130;
    *(v30 + 32) = v36;
    *(v30 + 40) = 0;
    return swift_willThrow();
  }

  v23 = (*(a4 + 56) + 16 * result);
  v24 = *v23;
  v68 = v23[1];
  v25 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v25)
    {
      v26 = BYTE6(a2);
      goto LABEL_22;
    }

    goto LABEL_19;
  }

  if (v25 != 2)
  {
    v26 = 0;
    goto LABEL_22;
  }

  v42 = *(a1 + 16);
  v41 = *(a1 + 24);
  v43 = __OFSUB__(v41, v42);
  v26 = v41 - v42;
  if (v43)
  {
    __break(1u);
LABEL_19:
    LODWORD(v26) = HIDWORD(a1) - a1;
    if (__OFSUB__(HIDWORD(a1), a1))
    {
      __break(1u);
      return result;
    }

    v26 = v26;
  }

LABEL_22:
  v70 = v24;
  v44 = v26 - 16;
  if (__OFSUB__(v26, 16))
  {
    __break(1u);
LABEL_34:
    v21 = sub_225B29AA0((v26 > 1), v7, 1, v21);
LABEL_30:
    v60 = v72;
    v61 = v68;
    *(v21 + 2) = v7;
    v62 = &v21[56 * a1];
    *(v62 + 4) = 0xD000000000000029;
    *(v62 + 5) = a2;
    *(v62 + 6) = 0xD000000000000023;
    *(v62 + 7) = v66;
    *(v62 + 8) = 0xD000000000000011;
    *(v62 + 9) = v65;
    *(v62 + 10) = 250;
    *v44 = v15;
    *(v44 + 8) = v21;
    *(v44 + 16) = 0xD000000000000029;
    *(v44 + 24) = a2;
    *(v44 + 32) = v6;
    *(v44 + 40) = 0;
    swift_willThrow();
    sub_2259BEF00(v70, v61);
    v51 = v69;
    v52 = v60;
    return sub_2259BEF00(v51, v52);
  }

  v45 = objc_allocWithZone(MEMORY[0x277CBEB28]);
  v69 = v19;
  sub_2259CB710(v19, v72);
  v46 = v68;
  sub_2259CB710(v70, v68);
  v47 = [v45 initWithLength_];
  if (!v47)
  {
    a2 = 0x8000000225D18760;
    v65 = 0x8000000225D18610;
    v66 = 0x8000000225D18060;
    v53 = MEMORY[0x277D84F90];
    v54 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v67 = swift_allocError();
    v44 = v55;
    v56 = sub_225CCE954();
    v57 = *(v56 - 8);
    (*(v57 + 56))(v15, 1, 1, v56);
    LODWORD(v56) = (*(v57 + 48))(v15, 1, v56);
    sub_2259CB640(v15, &unk_27D73B050, &unk_225CD3AD0);
    if (v56)
    {
      LOWORD(v15) = 1154;
    }

    else
    {
      LOWORD(v15) = 23;
    }

    v58 = sub_225B2C374(v53);
    v59 = swift_isUniquelyReferenced_nonNull_native();
    v71 = v58;
    sub_225B2C4A0(v54, sub_225B2AC40, 0, v59, &v71);

    v6 = v71;
    v21 = sub_225B29AA0(0, 1, 1, v53);
    a1 = *(v21 + 2);
    v26 = *(v21 + 3);
    v7 = a1 + 1;
    if (a1 < v26 >> 1)
    {
      goto LABEL_30;
    }

    goto LABEL_34;
  }

  v48 = v47;
  LOBYTE(v71) = 1;
  v49 = v72;
  v50 = (*(*v8 + 152))(&v71, a3, v69, v72, v70, v46);
  if (v5)
  {

    sub_2259BEF00(v70, v46);
    v51 = v69;
    v52 = v49;
    return sub_2259BEF00(v51, v52);
  }

  v63 = v50;

  v64 = v48;
  sub_225A2618C(a1, a2, v63, v64, &v71);
  sub_2259BEF00(v69, v49);
  sub_2259BEF00(v70, v46);

  return v71;
}

unint64_t sub_225A27AE0(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  error[1] = *MEMORY[0x277D85DE8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v52 - v11;
  v13 = sub_225CCCF04();
  if (v14 >> 60 == 15)
  {
    v56 = 0x8000000225D18060;
    v55 = 0x8000000225D18610;
    v15 = MEMORY[0x277D84F90];
    v16 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    swift_allocError();
    v18 = v17;
    v19 = sub_225CCE954();
    v20 = *(v19 - 8);
    (*(v20 + 56))(v12, 1, 1, v19);
    LODWORD(v19) = (*(v20 + 48))(v12, 1, v19);
    sub_2259CB640(v12, &unk_27D73B050, &unk_225CD3AD0);
    if (v19)
    {
      v21 = 122;
    }

    else
    {
      v21 = 23;
    }

    v22 = sub_225B2C374(v15);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    error[0] = v22;
    sub_225B2C4A0(v16, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, error);

    v24 = error[0];
    v25 = sub_225B29AA0(0, 1, 1, v15);
    v27 = *(v25 + 2);
    v26 = *(v25 + 3);
    v28 = v27 + 1;
    if (v27 >= v26 >> 1)
    {
      v25 = sub_225B29AA0((v26 > 1), v27 + 1, 1, v25);
    }

    *(v25 + 2) = v28;
    v29 = &v25[56 * v27];
    *(v29 + 4) = 0xD000000000000030;
    *(v29 + 5) = 0x8000000225D18630;
    v30 = v56;
    *(v29 + 6) = 0xD000000000000023;
    *(v29 + 7) = v30;
    v31 = v55;
    *(v29 + 8) = 0xD000000000000011;
    *(v29 + 9) = v31;
    *(v29 + 10) = 231;
    *v18 = v21;
    *(v18 + 8) = v25;
    *(v18 + 16) = 0xD000000000000030;
    *(v18 + 24) = 0x8000000225D18630;
    *(v18 + 32) = v24;
    *(v18 + 40) = 0;
    swift_willThrow();
  }

  else
  {
    v32 = v13;
    v33 = v14;
    v52 = a1;
    v53 = a2;
    v54 = a5;
    v55 = v5;
    v56 = v6;
    error[0] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B068, &unk_225CD7D60);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_225CD73B0;
    v35 = *MEMORY[0x277CDC028];
    *(inited + 32) = *MEMORY[0x277CDC028];
    v36 = *MEMORY[0x277CDC040];
    type metadata accessor for CFString(0);
    v37 = MEMORY[0x277CDC018];
    *(inited + 40) = v36;
    v38 = *v37;
    *(inited + 64) = v39;
    *(inited + 72) = v38;
    v40 = MEMORY[0x277D83B88];
    *(inited + 80) = 256;
    v41 = *MEMORY[0x277CDBFE0];
    *(inited + 104) = v40;
    *(inited + 112) = v41;
    v42 = *MEMORY[0x277CDC000];
    *(inited + 144) = v39;
    *(inited + 120) = v42;
    v43 = v35;
    v44 = v36;
    v45 = v38;
    v46 = v41;
    v47 = v42;
    v28 = sub_225B2CFE0(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B070, &qword_225CD7AF0);
    swift_arrayDestroy();
    v48 = sub_225CCCF74();
    sub_2259D8718(0, &qword_281059A60, 0x277CCACA8);
    sub_225A1D788();
    v49 = sub_225CCE2B4();

    v50 = SecKeyCreateWithData(v48, v49, error);

    if (v50)
    {
      v28 = sub_225A27464(v52, v53, v50, v54);
      sub_2259B97A8(v32, v33);
    }

    else
    {
      v57 = 155;
      errorFromCFError(_:_:_:)(error[0], 0xD000000000000040, 0x8000000225D18710, &v57);
      swift_willThrow();
      sub_2259B97A8(v32, v33);
    }
  }

  return v28;
}

void *sub_225A28020(__CFError *a1, __CFError *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v113 = *MEMORY[0x277D85DE8];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v100 - v10;
  swift_beginAccess();
  v12 = v5[4];
  if (v12)
  {
    v13 = v12;
    v14 = sub_225CCCF04();
    v108 = v13;
    if (v15 >> 60 == 15)
    {
      v16 = 0x8000000225D18630;
      v107 = 0x8000000225D18060;
      v106 = 0x8000000225D18610;
      v17 = MEMORY[0x277D84F90];
      v18 = sub_225B2C248(MEMORY[0x277D84F90]);
      sub_2259CB5EC();
      swift_allocError();
      v20 = v19;
      v21 = sub_225CCE954();
      v22 = *(v21 - 8);
      (*(v22 + 56))(v11, 1, 1, v21);
      LODWORD(v21) = (*(v22 + 48))(v11, 1, v21);
      sub_2259CB640(v11, &unk_27D73B050, &unk_225CD3AD0);
      if (v21)
      {
        v23 = 122;
      }

      else
      {
        v23 = 23;
      }

      v24 = sub_225B2C374(v17);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v109[0] = v24;
      sub_225B2C4A0(v18, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, v109);

      v26 = v109[0];
      v27 = sub_225B29AA0(0, 1, 1, v17);
      v29 = *(v27 + 2);
      v28 = *(v27 + 3);
      if (v29 >= v28 >> 1)
      {
        v27 = sub_225B29AA0((v28 > 1), v29 + 1, 1, v27);
      }

      *(v27 + 2) = v29 + 1;
      v30 = &v27[56 * v29];
      *(v30 + 4) = 0xD000000000000030;
      *(v30 + 5) = 0x8000000225D18630;
      *(v30 + 6) = 0xD000000000000023;
      *(v30 + 7) = v107;
      *(v30 + 8) = 0xD000000000000011;
      *(v30 + 9) = v106;
      *(v30 + 10) = 402;
      *v20 = v23;
      *(v20 + 8) = v27;
      *(v20 + 16) = 0xD000000000000030;
      *(v20 + 24) = 0x8000000225D18630;
      *(v20 + 32) = v26;
      *(v20 + 40) = 0;
      swift_willThrow();
      goto LABEL_37;
    }

    v106 = v14;
    v107 = v15;
    swift_beginAccess();
    v45 = v5[3];
    if (v45 >> 60 == 15)
    {
      v16 = 0x8000000225D18670;
      v105 = 0x8000000225D18060;
      v104 = 0x8000000225D18610;
      v46 = MEMORY[0x277D84F90];
      v47 = sub_225B2C248(MEMORY[0x277D84F90]);
      sub_2259CB5EC();
      swift_allocError();
      v49 = v48;
      v50 = sub_225CCE954();
      v51 = *(v50 - 8);
      (*(v51 + 56))(v11, 1, 1, v50);
      LODWORD(v50) = (*(v51 + 48))(v11, 1, v50);
      sub_2259CB640(v11, &unk_27D73B050, &unk_225CD3AD0);
      if (v50)
      {
        v52 = 108;
      }

      else
      {
        v52 = 23;
      }

      v53 = sub_225B2C374(v46);
      v54 = swift_isUniquelyReferenced_nonNull_native();
      v109[0] = v53;
      sub_225B2C4A0(v47, sub_225B2AC40, 0, v54, v109);

      v55 = v109[0];
      v56 = sub_225B29AA0(0, 1, 1, v46);
      v58 = *(v56 + 2);
      v57 = *(v56 + 3);
      if (v58 >= v57 >> 1)
      {
        v56 = sub_225B29AA0((v57 > 1), v58 + 1, 1, v56);
      }

      *(v56 + 2) = v58 + 1;
      v59 = &v56[56 * v58];
      *(v59 + 4) = 0xD000000000000058;
      *(v59 + 5) = 0x8000000225D18670;
      *(v59 + 6) = 0xD000000000000023;
      *(v59 + 7) = v105;
      *(v59 + 8) = 0xD000000000000011;
      *(v59 + 9) = v104;
      *(v59 + 10) = 405;
      *v49 = v52;
      *(v49 + 8) = v56;
      *(v49 + 16) = 0xD000000000000058;
      *(v49 + 24) = 0x8000000225D18670;
      *(v49 + 32) = v55;
      *(v49 + 40) = 0;
      swift_willThrow();
LABEL_36:
      sub_2259B97A8(v106, v107);
LABEL_37:

      return v16;
    }

    v60 = v5[2];
    if (!a5 || !*(a5 + 16) || (v61 = sub_2259F1D10(0), (v62 & 1) == 0) || !*(a5 + 16) || (v63 = (*(a5 + 56) + 16 * v61), v65 = *v63, v64 = v63[1], v103 = v65, v104 = v64, v66 = sub_2259F1D10(1), (v67 & 1) == 0))
    {
      v16 = 0x8000000225D18130;
      v103 = 0x8000000225D18060;
      v102 = 0x8000000225D18610;
      v104 = v60;
      v105 = v45;
      sub_2259CB710(v60, v45);
      v85 = MEMORY[0x277D84F90];
      v86 = sub_225B2C248(MEMORY[0x277D84F90]);
      sub_2259CB5EC();
      swift_allocError();
      v88 = v87;
      v89 = sub_225CCE954();
      v90 = *(v89 - 8);
      (*(v90 + 56))(v11, 1, 1, v89);
      LODWORD(v89) = (*(v90 + 48))(v11, 1, v89);
      sub_2259CB640(v11, &unk_27D73B050, &unk_225CD3AD0);
      if (v89)
      {
        v91 = 108;
      }

      else
      {
        v91 = 23;
      }

      v92 = sub_225B2C374(v85);
      v93 = swift_isUniquelyReferenced_nonNull_native();
      v109[0] = v92;
      sub_225B2C4A0(v86, sub_225B2AC40, 0, v93, v109);

      v94 = v109[0];
      v95 = sub_225B29AA0(0, 1, 1, v85);
      v97 = *(v95 + 2);
      v96 = *(v95 + 3);
      if (v97 >= v96 >> 1)
      {
        v95 = sub_225B29AA0((v96 > 1), v97 + 1, 1, v95);
      }

      *(v95 + 2) = v97 + 1;
      v98 = &v95[56 * v97];
      *(v98 + 4) = 0xD000000000000053;
      *(v98 + 5) = 0x8000000225D18130;
      *(v98 + 6) = 0xD000000000000023;
      *(v98 + 7) = v103;
      *(v98 + 8) = 0xD000000000000011;
      *(v98 + 9) = v102;
      *(v98 + 10) = 408;
      *v88 = v91;
      *(v88 + 8) = v95;
      *(v88 + 16) = 0xD000000000000053;
      *(v88 + 24) = 0x8000000225D18130;
      *(v88 + 32) = v94;
      *(v88 + 40) = 0;
      swift_willThrow();
      sub_2259B97A8(v104, v105);
      goto LABEL_36;
    }

    v68 = (*(a5 + 56) + 16 * v66);
    v70 = *v68;
    v69 = v68[1];
    v102 = v70;
    v105 = v69;
    v112 = xmmword_225CD4150;
    sub_2259CB6FC(v60, v45);
    sub_2259CB710(v103, v104);
    sub_2259CB710(v70, v105);
    sub_225CCCFC4();
    sub_225CCCFC4();
    sub_225CCCFC4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B068, &unk_225CD7D60);
    inited = swift_initStackObject();
    v72 = MEMORY[0x277CDC400];
    *(inited + 16) = xmmword_225CD30F0;
    v73 = *v72;
    *(inited + 32) = v73;
    v101 = inited + 32;
    v74 = v112;
    *(inited + 64) = MEMORY[0x277CC9318];
    *(inited + 40) = v74;
    v75 = v73;
    sub_2259CB710(v74, *(&v74 + 1));
    v100[1] = sub_225B2CFE0(inited);
    swift_setDeallocating();
    sub_2259CB640(v101, &qword_27D73B070, &qword_225CD7AF0);
    v76 = v106;
    v77 = v107;
    v110 = v106;
    v111 = v107;
    v109[3] = MEMORY[0x277CC9318];
    v109[4] = MEMORY[0x277CC9300];
    v109[0] = a1;
    v109[1] = a2;
    v78 = __swift_project_boxed_opaque_existential_1(v109, MEMORY[0x277CC9318]);
    v79 = *v78;
    v101 = v78[1];
    sub_2259CB6FC(v76, v77);
    sub_2259CB710(a1, a2);
    sub_225C0EA34(v79, v101, &v110);
    __swift_destroy_boxed_opaque_existential_0(v109);
    v80 = v110;
    v81 = v111;
    v109[0] = 0;
    v82 = v13;
    v108 = v80;
    v101 = v81;
    v16 = sub_225CCCF74();
    sub_2259D8718(0, &qword_281059A60, 0x277CCACA8);
    sub_225A1D788();
    v83 = sub_225CCE2B4();

    DecryptedDataWithParameters = SecKeyCreateDecryptedDataWithParameters();

    if (DecryptedDataWithParameters)
    {
      v16 = sub_225CCCFA4();
      sub_2259BEF00(v103, v104);
      sub_2259BEF00(v108, v101);
      sub_2259BEF00(v102, v105);
      sub_2259B97A8(v60, v45);
    }

    else
    {
      LOWORD(v110) = 155;
      errorFromCFError(_:_:_:)(v109[0], 0xD00000000000003DLL, 0x8000000225D186D0, &v110);
      swift_willThrow();
      sub_2259BEF00(v103, v104);
      sub_2259BEF00(v108, v101);
      sub_2259BEF00(v102, v105);
      sub_2259B97A8(v60, v45);
    }

    sub_2259B97A8(v106, v107);
    sub_2259BEF00(v112, *(&v112 + 1));
  }

  else
  {
    v108 = 0x8000000225D18060;
    v107 = 0x8000000225D18610;
    v31 = MEMORY[0x277D84F90];
    v32 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    swift_allocError();
    v34 = v33;
    v35 = sub_225CCE954();
    v36 = *(v35 - 8);
    (*(v36 + 56))(v11, 1, 1, v35);
    LODWORD(v35) = (*(v36 + 48))(v11, 1, v35);
    sub_2259CB640(v11, &unk_27D73B050, &unk_225CD3AD0);
    if (v35)
    {
      v37 = 122;
    }

    else
    {
      v37 = 23;
    }

    v38 = sub_225B2C374(v31);
    v39 = swift_isUniquelyReferenced_nonNull_native();
    v109[0] = v38;
    sub_225B2C4A0(v32, sub_225B2AC40, 0, v39, v109);

    v40 = v109[0];
    v41 = sub_225B29AA0(0, 1, 1, v31);
    v43 = *(v41 + 2);
    v42 = *(v41 + 3);
    v16 = (v43 + 1);
    if (v43 >= v42 >> 1)
    {
      v41 = sub_225B29AA0((v42 > 1), v43 + 1, 1, v41);
    }

    *(v41 + 2) = v16;
    v44 = &v41[56 * v43];
    *(v44 + 4) = 0xD000000000000017;
    *(v44 + 5) = 0x8000000225D185F0;
    *(v44 + 6) = 0xD000000000000023;
    *(v44 + 7) = v108;
    *(v44 + 8) = 0xD000000000000011;
    *(v44 + 9) = v107;
    *(v44 + 10) = 399;
    *v34 = v37;
    *(v34 + 8) = v41;
    *(v34 + 16) = 0xD000000000000017;
    *(v34 + 24) = 0x8000000225D185F0;
    *(v34 + 32) = v40;
    *(v34 + 40) = 0;
    swift_willThrow();
  }

  return v16;
}

uint64_t sub_225A28E08()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v21 - v2;
  swift_beginAccess();
  if (*(v0 + 24) >> 60 != 15)
  {
    return *(v0 + 16);
  }

  v22 = 0x8000000225D185D0;
  v23 = 0x8000000225D18060;
  v4 = MEMORY[0x277D84F90];
  v5 = sub_225B2C248(MEMORY[0x277D84F90]);
  sub_2259CB5EC();
  swift_allocError();
  v7 = v6;
  v8 = sub_225CCE954();
  v9 = *(v8 - 8);
  (*(v9 + 56))(v3, 1, 1, v8);
  LODWORD(v8) = (*(v9 + 48))(v3, 1, v8);
  sub_2259CB640(v3, &unk_27D73B050, &unk_225CD3AD0);
  if (v8)
  {
    v10 = 107;
  }

  else
  {
    v10 = 23;
  }

  v11 = sub_225B2C374(v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v24 = v11;
  sub_225B2C4A0(v5, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v24);

  v13 = v24;
  v14 = sub_225B29AA0(0, 1, 1, v4);
  v16 = *(v14 + 2);
  v15 = *(v14 + 3);
  if (v16 >= v15 >> 1)
  {
    v14 = sub_225B29AA0((v15 > 1), v16 + 1, 1, v14);
  }

  *(v14 + 2) = v16 + 1;
  v17 = &v14[56 * v16];
  *(v17 + 4) = 0xD000000000000020;
  *(v17 + 5) = 0x8000000225D185A0;
  v18 = v23;
  *(v17 + 6) = 0xD000000000000023;
  *(v17 + 7) = v18;
  v19 = v22;
  *(v17 + 8) = 0xD000000000000013;
  *(v17 + 9) = v19;
  *(v17 + 10) = 429;
  *v7 = v10;
  *(v7 + 8) = v14;
  *(v7 + 16) = 0xD000000000000020;
  *(v7 + 24) = 0x8000000225D185A0;
  *(v7 + 32) = v13;
  *(v7 + 40) = 0;
  return swift_willThrow();
}

unint64_t sub_225A290C0()
{
  result = qword_28105B6F0;
  if (!qword_28105B6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28105B6F0);
  }

  return result;
}

unint64_t sub_225A29118()
{
  result = qword_27D73B1B0;
  if (!qword_27D73B1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73B1B0);
  }

  return result;
}

uint64_t dispatch thunk of DIPECIESSessionProtocol.encrypt(_:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  return (*(a6 + 16))(a1, a2, a3, a4, a5);
}

{
  return (*(a6 + 24))(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of DIPECIESSessionECV1.encrypt(_:_:_:)()
{
  return (*(*v0 + 88))();
}

{
  return (*(*v0 + 96))();
}

uint64_t dispatch thunk of DIPECIESSessionECV3.encrypt(_:_:_:)()
{
  return (*(*v0 + 112))();
}

{
  return (*(*v0 + 120))();
}

uint64_t dispatch thunk of DIPECIESSessionV3SecKey.encrypt(_:_:_:)()
{
  return (*(*v0 + 152))();
}

{
  return (*(*v0 + 160))();
}

CoreIDVShared::EncryptionParamsAlgorithmIdentifier_optional __swiftcall EncryptionParamsAlgorithmIdentifier.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_225CCF5D4();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t EncryptionParamsAlgorithmIdentifier.rawValue.getter()
{
  v1 = 0x33765F4345;
  if (*v0 != 1)
  {
    v1 = 0x48535F33765F4345;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x765F4343455F5645;
  }
}

uint64_t sub_225A29814(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE500000000000000;
  v4 = 0x33765F4345;
  if (v2 != 1)
  {
    v4 = 0x48535F33765F4345;
    v3 = 0xE800000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x765F4343455F5645;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xEF312E4E53412D31;
  }

  v7 = 0xE500000000000000;
  v8 = 0x33765F4345;
  if (*a2 != 1)
  {
    v8 = 0x48535F33765F4345;
    v7 = 0xE800000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x765F4343455F5645;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xEF312E4E53412D31;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_225CCF934();
  }

  return v11 & 1;
}

uint64_t sub_225A29918()
{
  sub_225CCFBD4();
  sub_225CCE5B4();

  return sub_225CCFC24();
}

uint64_t sub_225A299C4(uint64_t a1)
{
  sub_225CCE5B4();
}

uint64_t sub_225A29A5C()
{
  sub_225CCFBD4();
  sub_225CCE5B4();

  return sub_225CCFC24();
}

void sub_225A29B10(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEF312E4E53412D31;
  v4 = 0xE500000000000000;
  v5 = 0x33765F4345;
  if (v2 != 1)
  {
    v5 = 0x48535F33765F4345;
    v4 = 0xE800000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x765F4343455F5645;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

CoreIDVShared::EncryptedMessageEntity_optional __swiftcall EncryptedMessageEntity.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_225CCF5D4();

  v5 = 11;
  if (v3 < 0xB)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t EncryptedMessageEntity.rawValue.getter()
{
  v1 = *v0;
  if (v1 <= 4)
  {
    v7 = 0x6576726573766469;
    v8 = 0x732D656369766564;
    v9 = 7302761;
    if (v1 != 3)
    {
      v9 = 28787;
    }

    if (v1 != 2)
    {
      v8 = v9;
    }

    if (*v0)
    {
      v7 = 0x656369766564;
    }

    if (*v0 <= 1u)
    {
      return v7;
    }

    else
    {
      return v8;
    }
  }

  else
  {
    v2 = 0x73676E6975737369;
    v3 = 7566953;
    if (v1 != 9)
    {
      v3 = 0x7373656E6576696CLL;
    }

    if (v1 != 8)
    {
      v2 = v3;
    }

    v4 = 0x616E65687461;
    v5 = 0x726F737365737361;
    if (v1 != 6)
    {
      v5 = 0x726575737369;
    }

    if (v1 != 5)
    {
      v4 = v5;
    }

    if (*v0 <= 7u)
    {
      return v4;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_225A29DE4()
{
  v1 = *v0;
  sub_225CCFBD4();
  sub_225B70114(v3, v1);
  return sub_225CCFC24();
}

uint64_t sub_225A29E34()
{
  v1 = *v0;
  sub_225CCFBD4();
  sub_225B70114(v3, v1);
  return sub_225CCFC24();
}

uint64_t sub_225A29E84@<X0>(uint64_t *a1@<X8>)
{
  result = EncryptedMessageEntity.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void *RecipientEncryptionCertificate.signing.getter()
{
  v1 = *(v0 + 8);
  v2 = v1;
  return v1;
}

uint64_t RecipientEncryptionCertificate.init(keyAgreement:signing:recipient:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *a3;
  *a4 = result;
  *(a4 + 8) = a2;
  *(a4 + 16) = v4;
  return result;
}

uint64_t EncryptedMessage.message.getter@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *(v2 + 56);
  v5 = *(v2 + 88);
  v15 = *(v2 + 72);
  v4 = v15;
  v16 = v5;
  v17 = *(v2 + 104);
  v6 = v17;
  v7 = *(v2 + 24);
  v12[0] = *(v2 + 8);
  v12[1] = v7;
  v13 = *(v2 + 40);
  v8 = v13;
  v14 = v3;
  *a2 = v12[0];
  a2[1] = v7;
  a2[2] = v8;
  a2[3] = v3;
  a2[4] = v4;
  a2[5] = v5;
  a2[6] = v6;
  v9 = type metadata accessor for EncryptedDataContainer(0, a1[2], a1[3], a1[4]);
  return (*(*(v9 - 8) + 16))(&v11, v12, v9);
}

uint64_t EncryptedMessage.senderSigningKey.getter()
{
  v1 = *(v0 + 120);

  return v1;
}

__n128 EncryptedMessage.init(sender:recipient:message:senderSigningKey:)@<Q0>(_BYTE *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v6 = *(a3 + 32);
  *(a6 + 56) = *(a3 + 48);
  v7 = *(a3 + 80);
  *(a6 + 72) = *(a3 + 64);
  *(a6 + 88) = v7;
  *(a6 + 104) = *(a3 + 96);
  result = *a3;
  v9 = *(a3 + 16);
  *(a6 + 8) = *a3;
  *(a6 + 24) = v9;
  v10 = *a2;
  *a6 = *a1;
  *(a6 + 1) = v10;
  *(a6 + 40) = v6;
  *(a6 + 120) = a4;
  *(a6 + 128) = a5;
  return result;
}

uint64_t static EncryptedMessage.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *a1;
  v11 = *(a1 + 56);
  v12 = *(a1 + 88);
  v54[4] = *(a1 + 72);
  v54[5] = v12;
  v54[6] = *(a1 + 104);
  v13 = *(a1 + 24);
  v54[0] = *(a1 + 8);
  v54[1] = v13;
  v54[2] = *(a1 + 40);
  v54[3] = v11;
  v14 = *(a1 + 128);
  v36 = *(a1 + 120);
  v15 = *a2;
  v16 = *(a1 + 1);
  v17 = *(a2 + 1);
  v18 = *(a2 + 56);
  v19 = *(a2 + 88);
  v55[4] = *(a2 + 72);
  v55[5] = v19;
  v55[6] = *(a2 + 104);
  v20 = *(a2 + 24);
  v55[0] = *(a2 + 8);
  v55[1] = v20;
  v55[2] = *(a2 + 40);
  v55[3] = v18;
  v22 = *(a2 + 120);
  v21 = *(a2 + 128);
  if ((sub_225A0FF10(v16, v17) & 1) == 0)
  {
    goto LABEL_10;
  }

  if ((sub_225A0FF10(v10, v15) & 1) == 0)
  {
    goto LABEL_10;
  }

  v23 = *(a1 + 56);
  v24 = *(a1 + 88);
  v49 = *(a1 + 72);
  v50 = v24;
  v51 = *(a1 + 104);
  v25 = *(a1 + 24);
  v45 = *(a1 + 8);
  v46 = v25;
  v47 = *(a1 + 40);
  v48 = v23;
  v26 = *(a2 + 56);
  v27 = *(a2 + 88);
  v42 = *(a2 + 72);
  v43 = v27;
  v44 = *(a2 + 104);
  v28 = *(a2 + 24);
  v38 = *(a2 + 8);
  v39 = v28;
  v40 = *(a2 + 40);
  v41 = v26;
  v29 = type metadata accessor for EncryptedDataContainer(0, a3, a4, a5);
  v30 = *(v29 - 8);
  v31 = *(v30 + 16);
  v31(v37, v54, v29);
  v31(v37, v55, v29);
  v32 = static EncryptedDataContainer.== infix(_:_:)(&v45, &v38);
  v52[4] = v42;
  v52[5] = v43;
  v52[6] = v44;
  v52[0] = v38;
  v52[1] = v39;
  v52[2] = v40;
  v52[3] = v41;
  v33 = *(v30 + 8);
  v33(v52, v29);
  v53[4] = v49;
  v53[5] = v50;
  v53[6] = v51;
  v53[0] = v45;
  v53[1] = v46;
  v53[2] = v47;
  v53[3] = v48;
  v33(v53, v29);
  if ((v32 & 1) == 0)
  {
    goto LABEL_10;
  }

  if (!v14)
  {
    if (!v21)
    {
LABEL_12:
      v34 = 1;
      return v34 & 1;
    }

LABEL_10:
    v34 = 0;
    return v34 & 1;
  }

  if (!v21)
  {
    goto LABEL_10;
  }

  if (v36 == v22 && v14 == v21)
  {
    goto LABEL_12;
  }

  v34 = sub_225CCF934();
  return v34 & 1;
}

uint64_t static EncryptedDataContainer.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 4);
  v39[2] = *(a1 + 3);
  v39[3] = v4;
  v5 = *(a1 + 6);
  v39[4] = *(a1 + 5);
  v39[5] = v5;
  v6 = *(a1 + 2);
  v39[0] = *(a1 + 1);
  v39[1] = v6;
  v7 = *a2;
  v8 = a2[1];
  v9 = *(a2 + 2);
  v40[0] = *(a2 + 1);
  v40[1] = v9;
  v10 = *(a2 + 3);
  v11 = *(a2 + 4);
  v12 = *(a2 + 6);
  v40[4] = *(a2 + 5);
  v40[5] = v12;
  v40[2] = v10;
  v40[3] = v11;
  if (v3)
  {
    if (v8)
    {
      if (v2 == v7 && v3 == v8)
      {
        goto LABEL_6;
      }

      v13 = a1;
      v14 = a2;
      v15 = sub_225CCF934();
      a2 = v14;
      v16 = v15;
      a1 = v13;
      if (v16)
      {
        goto LABEL_6;
      }
    }

LABEL_8:
    v23 = 0;
    return v23 & 1;
  }

  if (v8)
  {
    goto LABEL_8;
  }

LABEL_6:
  v17 = *(a1 + 4);
  v33 = *(a1 + 3);
  v34 = v17;
  v18 = *(a1 + 6);
  v35 = *(a1 + 5);
  v36 = v18;
  v19 = *(a1 + 2);
  v31 = *(a1 + 1);
  v32 = v19;
  v20 = *(a2 + 4);
  v27 = *(a2 + 3);
  v28 = v20;
  v21 = *(a2 + 6);
  v29 = *(a2 + 5);
  v30 = v21;
  v22 = *(a2 + 2);
  v25 = *(a2 + 1);
  v26 = v22;
  sub_225A323C8(v39, v38);
  sub_225A323C8(v40, v38);
  v23 = _s13CoreIDVShared16EncryptionParamsV2eeoiySbAC_ACtFZ_0(&v31, &v25);
  v37[2] = v27;
  v37[3] = v28;
  v37[4] = v29;
  v37[5] = v30;
  v37[0] = v25;
  v37[1] = v26;
  sub_225A32400(v37);
  v38[2] = v33;
  v38[3] = v34;
  v38[4] = v35;
  v38[5] = v36;
  v38[0] = v31;
  v38[1] = v32;
  sub_225A32400(v38);
  return v23 & 1;
}

uint64_t sub_225A2A4B0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7265646E6573 && a2 == 0xE600000000000000;
  if (v4 || (sub_225CCF934() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E65697069636572 && a2 == 0xE900000000000074 || (sub_225CCF934() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6567617373656DLL && a2 == 0xE700000000000000 || (sub_225CCF934() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000225D18E20 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_225CCF934();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_225A2A658(unsigned __int8 a1)
{
  sub_225CCFBD4();
  MEMORY[0x22AA6E420](a1);
  return sub_225CCFC24();
}

unint64_t sub_225A2A6A0(unsigned __int8 a1)
{
  v1 = 0x7265646E6573;
  v2 = 0x6567617373656DLL;
  if (a1 != 2)
  {
    v2 = 0xD000000000000010;
  }

  if (a1)
  {
    v1 = 0x6E65697069636572;
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

uint64_t sub_225A2A758()
{
  sub_225CCFBD4();
  sub_225A2A630(v2, *v0);
  return sub_225CCFC24();
}

uint64_t sub_225A2A7B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_225A2A4B0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_225A2A7E8@<X0>(_BYTE *a2@<X8>)
{
  result = sub_225A336C8();
  *a2 = result;
  return result;
}

uint64_t sub_225A2A81C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_225A2A870(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t EncryptedMessage.encode(to:)(void *a1, void *a2)
{
  v4 = a2[2];
  v5 = a2[4];
  v23 = a2[3];
  v24 = v4;
  v21 = v5;
  type metadata accessor for EncryptedMessage.CodingKeys(255, v4, v23, v5);
  swift_getWitnessTable();
  v6 = sub_225CCF7F4();
  v44 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = v20 - v7;
  v25 = *v2;
  v22 = v2[1];
  v9 = *(v2 + 56);
  v10 = *(v2 + 88);
  v41 = *(v2 + 72);
  v42 = v10;
  v43 = *(v2 + 104);
  v11 = *(v2 + 24);
  v37 = *(v2 + 8);
  v38 = v11;
  v39 = *(v2 + 40);
  v40 = v9;
  v12 = *(v2 + 15);
  v20[1] = *(v2 + 16);
  v20[2] = v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_225CCFCE4();
  LOBYTE(v30) = v25;
  LOBYTE(v28[0]) = 0;
  sub_225A32448();
  v13 = v26;
  sub_225CCF7E4();
  if (v13)
  {
    return (*(v44 + 8))(v8, v6);
  }

  v15 = v23;
  v16 = v24;
  LOBYTE(v30) = v22;
  LOBYTE(v28[0]) = 1;
  sub_225CCF7E4();
  v34 = v41;
  v35 = v42;
  v36 = v43;
  v30 = v37;
  v31 = v38;
  v32 = v39;
  v33 = v40;
  v29 = 2;
  v17 = type metadata accessor for EncryptedDataContainer(0, v16, v15, v21);
  v18 = *(v17 - 8);
  (*(v18 + 16))(v28, &v37, v17);
  swift_getWitnessTable();
  sub_225CCF7E4();
  v19 = v44;
  v28[4] = v34;
  v28[5] = v35;
  v28[6] = v36;
  v28[0] = v30;
  v28[1] = v31;
  v28[2] = v32;
  v28[3] = v33;
  (*(v18 + 8))(v28, v17);
  v27 = 3;
  sub_225CCF734();
  return (*(v19 + 8))(v8, v6);
}

uint64_t EncryptedMessage.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v29 = a5;
  v31 = a4;
  type metadata accessor for EncryptedMessage.CodingKeys(255, a2, a3, a4);
  swift_getWitnessTable();
  v33 = sub_225CCF714();
  v30 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v9 = &v28 - v8;
  v10 = a1[3];
  v57 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  v32 = v9;
  v11 = v34;
  sub_225CCFCA4();
  if (v11)
  {
    return __swift_destroy_boxed_opaque_existential_0(v57);
  }

  v12 = v30;
  v13 = v31;
  LOBYTE(v35[0]) = 0;
  sub_225A3249C();
  sub_225CCF6E4();
  v14 = v37[0];
  LOBYTE(v35[0]) = 1;
  sub_225CCF6E4();
  LODWORD(v34) = v14;
  v15 = v37[0];
  type metadata accessor for EncryptedDataContainer(0, a2, a3, v13);
  v48 = 2;
  swift_getWitnessTable();
  sub_225CCF6E4();
  HIDWORD(v28) = v15;
  *(&v56[3] + 6) = v52;
  *(&v56[4] + 6) = v53;
  *(&v56[5] + 6) = v54;
  *(&v56[6] + 6) = v55;
  *(v56 + 6) = v49;
  *(&v56[1] + 6) = v50;
  *(&v56[2] + 6) = v51;
  v47 = 3;
  v16 = sub_225CCF624();
  v18 = v17;
  v19 = v16;
  (*(v12 + 8))(v32, v33);
  LOBYTE(v35[0]) = v34;
  BYTE1(v35[0]) = BYTE4(v28);
  *(&v35[4] + 2) = v56[4];
  *(&v35[5] + 2) = v56[5];
  *(&v35[6] + 2) = v56[6];
  *(v35 + 2) = v56[0];
  *(&v35[1] + 2) = v56[1];
  *(&v35[2] + 2) = v56[2];
  *(&v35[3] + 2) = v56[3];
  *&v35[7] = *(&v56[6] + 14);
  *(&v35[7] + 1) = v19;
  v36 = v18;
  v20 = v29;
  *(v29 + 128) = v18;
  v21 = v35[3];
  v20[2] = v35[2];
  v20[3] = v21;
  v22 = v35[1];
  *v20 = v35[0];
  v20[1] = v22;
  v23 = v35[7];
  v20[6] = v35[6];
  v20[7] = v23;
  v24 = v35[5];
  v20[4] = v35[4];
  v20[5] = v24;
  v25 = type metadata accessor for EncryptedMessage(0, a2, a3, v13);
  v26 = *(v25 - 8);
  (*(v26 + 16))(v37, v35, v25);
  __swift_destroy_boxed_opaque_existential_0(v57);
  v42 = v56[4];
  v43 = v56[5];
  *v44 = v56[6];
  v38 = v56[0];
  v39 = v56[1];
  v40 = v56[2];
  v37[0] = v34;
  v37[1] = BYTE4(v28);
  v41 = v56[3];
  *&v44[14] = *(&v56[6] + 14);
  v45 = v19;
  v46 = v18;
  return (*(v26 + 8))(v37, v25);
}

uint64_t KeyAgreementParams.sender.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t KeyAgreementParams.recipientFingerprint.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t static KeyAgreementParams.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_225CCF934(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_225CCF934();
    }
  }

  return result;
}

uint64_t sub_225A2B2A0()
{
  if (*v0)
  {
    return 0xD000000000000014;
  }

  else
  {
    return 0x7265646E6573;
  }
}

uint64_t sub_225A2B2DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7265646E6573 && a2 == 0xE600000000000000;
  if (v6 || (sub_225CCF934() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000225D18E40 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_225CCF934();

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

uint64_t sub_225A2B3BC(uint64_t a1)
{
  v2 = sub_225A32508();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225A2B3F8(uint64_t a1)
{
  v2 = sub_225A32508();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t KeyAgreementParams.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B1C8, &qword_225CD7FC0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v10 - v5;
  v7 = *(v1 + 16);
  v10[1] = *(v1 + 24);
  v10[2] = v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_225A32508();
  sub_225CCFCE4();
  v12 = 0;
  v8 = v10[3];
  sub_225CCF784();
  if (!v8)
  {
    v11 = 1;
    sub_225CCF784();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t KeyAgreementParams.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B1D0, &qword_225CD7FC8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_225A32508();
  sub_225CCFCA4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v19 = 0;
  v9 = sub_225CCF684();
  v11 = v10;
  v17 = v9;
  v18 = 1;
  v12 = sub_225CCF684();
  v14 = v13;
  (*(v6 + 8))(v8, v5);
  *a2 = v17;
  a2[1] = v11;
  a2[2] = v12;
  a2[3] = v14;

  __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_225A2B7C8(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_225CCF934(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_225CCF934();
    }
  }

  return result;
}

uint64_t KDFParams.senderSigningKeyFingerprint.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t KDFParams.recipientSigningKeyFingerprint.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t KDFParams.conversationToken.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

void __swiftcall KDFParams.init(senderSigningKeyFingerprint:recipientSigningKeyFingerprint:conversationToken:sharedIdentifierNames:)(CoreIDVShared::KDFParams *__return_ptr retstr, Swift::String senderSigningKeyFingerprint, Swift::String_optional recipientSigningKeyFingerprint, Swift::String_optional conversationToken, Swift::OpaquePointer_optional sharedIdentifierNames)
{
  retstr->senderSigningKeyFingerprint.value = senderSigningKeyFingerprint;
  retstr->recipientSigningKeyFingerprint = recipientSigningKeyFingerprint;
  retstr->conversationToken = conversationToken;
  retstr->sharedIdentifierNames.value._rawValue = sharedIdentifierNames.value._rawValue;
}

unint64_t sub_225A2B94C()
{
  v1 = 0xD000000000000015;
  if (*v0 == 2)
  {
    v1 = 0xD000000000000011;
  }

  v2 = 0xD00000000000001ELL;
  if (!*v0)
  {
    v2 = 0xD00000000000001BLL;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_225A2B9C4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_225A336D0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_225A2B9EC(uint64_t a1)
{
  v2 = sub_225A3255C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225A2BA28(uint64_t a1)
{
  v2 = sub_225A3255C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t KDFParams.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B1D8, &unk_225CD7FD0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12 - v5;
  v7 = v1[2];
  v16 = v1[3];
  v17 = v7;
  v8 = v1[4];
  v14 = v1[5];
  v15 = v8;
  v13 = v1[6];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_225A3255C();
  sub_225CCFCE4();
  v23 = 0;
  v9 = v18;
  sub_225CCF734();
  if (!v9)
  {
    v10 = v13;
    v22 = 1;
    sub_225CCF734();
    v21 = 2;
    sub_225CCF734();
    v19 = v10;
    v20 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73DCB0, &unk_225CD76A0);
    sub_225A325B0(&qword_281059B28, MEMORY[0x277D837D8], MEMORY[0x277D83948]);
    sub_225CCF774();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t KDFParams.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B1E0, &qword_225CD7FE0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v20 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_225A3255C();
  sub_225CCFCA4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v29 = 0;
  v9 = sub_225CCF624();
  v24 = v10;
  v28 = 1;
  v11 = sub_225CCF624();
  v23 = v12;
  v21 = v11;
  v27 = 2;
  v20 = sub_225CCF624();
  v22 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73DCB0, &unk_225CD76A0);
  v26 = 3;
  sub_225A325B0(&qword_281059B18, MEMORY[0x277D83808], MEMORY[0x277D83978]);
  sub_225CCF674();
  (*(v6 + 8))(v8, v5);
  v16 = v24;
  v15 = v25;
  *a2 = v9;
  a2[1] = v16;
  v17 = v20;
  v19 = v22;
  v18 = v23;
  a2[2] = v21;
  a2[3] = v18;
  a2[4] = v17;
  a2[5] = v19;
  a2[6] = v15;

  __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t EncryptionParams.keyAgreement.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  *a1 = v1[1];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
}

uint64_t EncryptionParams.kdf.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 80);
  v2 = *(v1 + 88);
  *a1 = *(v1 + 40);
  v4 = *(v1 + 64);
  *(a1 + 8) = *(v1 + 48);
  *(a1 + 24) = v4;
  *(a1 + 40) = v3;
  *(a1 + 48) = v2;
}

void __swiftcall EncryptionParams.init(alg:sender:recipientFingerprint:kdfParams:)(CoreIDVShared::EncryptionParams *__return_ptr retstr, CoreIDVShared::EncryptionParamsAlgorithmIdentifier alg, Swift::String sender, Swift::String recipientFingerprint, CoreIDVShared::KDFParams *kdfParams)
{
  recipientSigningKeyFingerprint = kdfParams->recipientSigningKeyFingerprint;
  retstr->kdf.senderSigningKeyFingerprint = kdfParams->senderSigningKeyFingerprint;
  rawValue = kdfParams->sharedIdentifierNames.value._rawValue;
  retstr->algorithmIdentifier = *alg;
  retstr->keyAgreement.sender = sender;
  retstr->keyAgreement.recipientFingerprint = recipientFingerprint;
  retstr->kdf.recipientSigningKeyFingerprint = recipientSigningKeyFingerprint;
  retstr->kdf.conversationToken = kdfParams->conversationToken;
  retstr->kdf.sharedIdentifierNames.value._rawValue = rawValue;
}

uint64_t sub_225A2C124()
{
  v1 = 0x656572674179656BLL;
  if (*v0 != 1)
  {
    v1 = 6710379;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000013;
  }
}

uint64_t sub_225A2C184@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_225A33844(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_225A2C1AC(uint64_t a1)
{
  v2 = sub_225A3261C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225A2C1E8(uint64_t a1)
{
  v2 = sub_225A3261C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t EncryptionParams.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B1E8, &qword_225CD7FE8);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - v6;
  v8 = *v1;
  v9 = *(v1 + 2);
  v29 = *(v1 + 1);
  v30 = v9;
  v10 = *(v1 + 3);
  v31 = *(v1 + 4);
  v11 = *(v1 + 6);
  v27 = *(v1 + 5);
  v28 = v10;
  v12 = *(v1 + 8);
  v25 = *(v1 + 7);
  v26 = v11;
  v13 = *(v1 + 10);
  v21 = *(v1 + 9);
  v22 = v13;
  v23 = *(v1 + 11);
  v24 = v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_225A3261C();
  sub_225CCFCE4();
  LOBYTE(v32) = v8;
  v39 = 0;
  sub_225A32670();
  sub_225CCF7E4();
  if (v2)
  {
    return (*(v5 + 8))(v7, v4);
  }

  v16 = v25;
  v15 = v26;
  v17 = v24;
  v20 = v5;
  v32 = v29;
  v33 = v30;
  v18 = v27;
  v34 = v28;
  v35 = v31;
  v39 = 1;
  sub_225A326C4();

  sub_225CCF7E4();

  v32 = v18;
  v33 = v15;
  v34 = v16;
  v35 = v17;
  v36 = v21;
  v37 = v22;
  v38 = v23;
  v39 = 2;
  sub_225A32718();

  sub_225CCF7E4();

  return (*(v20 + 8))(v7, v4);
}

uint64_t EncryptionParams.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B1F0, &qword_225CD7FF0);
  v5 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v7 = &v19 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_225A3261C();
  sub_225CCFCA4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v8 = v5;
  LOBYTE(v31) = 0;
  sub_225A3276C();
  v9 = v30;
  sub_225CCF6E4();
  v10 = v37;
  LOBYTE(v31) = 1;
  sub_225A327C0();
  sub_225CCF6E4();
  v26 = v39;
  v27 = v37;
  v28 = v40;
  v29 = v38;
  v53 = 2;
  sub_225A32814();
  sub_225CCF6E4();
  (*(v8 + 8))(v7, v9);
  v30 = v49;
  v24 = *(&v50 + 1);
  v25 = v50;
  v22 = *(&v51 + 1);
  v23 = v51;
  v20 = *(&v52 + 1);
  v21 = v52;
  LOBYTE(v31) = v10;
  v12 = v26;
  v11 = v27;
  v13 = v28;
  v14 = v29;
  *(&v31 + 1) = v27;
  *&v32 = v29;
  *(&v32 + 1) = v26;
  *&v33 = v28;
  *(&v33 + 1) = v49;
  v34 = v50;
  v35 = v51;
  v36 = v52;
  v15 = v32;
  *a2 = v31;
  a2[1] = v15;
  v16 = v36;
  a2[4] = v35;
  a2[5] = v16;
  v17 = v34;
  a2[2] = v33;
  a2[3] = v17;
  sub_225A323C8(&v31, &v37);
  __swift_destroy_boxed_opaque_existential_0(a1);
  LOBYTE(v37) = v10;
  v38 = v11;
  v39 = v14;
  v40 = v12;
  v41 = v13;
  v42 = v30;
  v43 = v25;
  v44 = v24;
  v45 = v23;
  v46 = v22;
  v47 = v21;
  v48 = v20;
  return sub_225A32400(&v37);
}

uint64_t EncryptedDataContainerParamsOnly.params.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[3];
  v10 = v1[2];
  v11 = v2;
  v4 = v1[5];
  v12 = v1[4];
  v3 = v12;
  v13 = v4;
  v6 = v1[1];
  v9[0] = *v1;
  v5 = v9[0];
  v9[1] = v6;
  a1[2] = v10;
  a1[3] = v2;
  a1[4] = v3;
  a1[5] = v4;
  *a1 = v5;
  a1[1] = v6;
  return sub_225A323C8(v9, &v8);
}

__n128 EncryptedDataContainerParamsOnly.params.setter(uint64_t a1)
{
  v3 = v1[3];
  v10[2] = v1[2];
  v10[3] = v3;
  v4 = v1[5];
  v10[4] = v1[4];
  v10[5] = v4;
  v5 = v1[1];
  v10[0] = *v1;
  v10[1] = v5;
  sub_225A32868(v10);
  v6 = *(a1 + 48);
  v1[2] = *(a1 + 32);
  v1[3] = v6;
  v7 = *(a1 + 80);
  v1[4] = *(a1 + 64);
  v1[5] = v7;
  result = *a1;
  v9 = *(a1 + 16);
  *v1 = *a1;
  v1[1] = v9;
  return result;
}

uint64_t sub_225A2C918@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x736D61726170 && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_225CCF934();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_225A2C99C(uint64_t a1)
{
  v2 = sub_225A32898();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225A2C9D8(uint64_t a1)
{
  v2 = sub_225A32898();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t EncryptedDataContainerParamsOnly.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B210, &unk_225CD7FF8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_225A32898();
  sub_225CCFCA4();
  if (!v2)
  {
    sub_225A328EC();
    sub_225CCF6E4();
    (*(v6 + 8))(v8, v5);
    v9 = v13[3];
    a2[2] = v13[2];
    a2[3] = v9;
    v10 = v13[5];
    a2[4] = v13[4];
    a2[5] = v10;
    v11 = v13[1];
    *a2 = v13[0];
    a2[1] = v11;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_225A2CB94(uint64_t a1, uint64_t a2)
{
  v2 = sub_225CCF5D4();

  if (v2 == 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (v2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_225A2CC00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837F8];

  return MEMORY[0x2821FE040](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_225A2CC74(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A0](a1, a2, WitnessTable, v5);
}

uint64_t sub_225A2CCE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1B0](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_225A2CD50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A8](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_225A2CDC0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_225A2CB94(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_225A2CDFC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2259AA55C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_225A2CE48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_225A2CB94(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_225A2CE7C@<X0>(_BYTE *a2@<X8>)
{
  result = sub_225A3396C();
  *a2 = result;
  return result;
}

uint64_t sub_225A2CEB0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_225A2CF04(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t EncryptedDataContainer.data.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t EncryptedDataContainer.data.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t EncryptedDataContainer.params.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[4];
  v10 = v1[3];
  v11 = v2;
  v4 = v1[6];
  v12 = v1[5];
  v3 = v12;
  v13 = v4;
  v6 = v1[2];
  v9[0] = v1[1];
  v5 = v9[0];
  v9[1] = v6;
  a1[2] = v10;
  a1[3] = v2;
  a1[4] = v3;
  a1[5] = v4;
  *a1 = v5;
  a1[1] = v6;
  return sub_225A323C8(v9, &v8);
}

__n128 EncryptedDataContainer.params.setter(uint64_t a1)
{
  v3 = v1[4];
  v10[2] = v1[3];
  v10[3] = v3;
  v4 = v1[6];
  v10[4] = v1[5];
  v10[5] = v4;
  v5 = v1[2];
  v10[0] = v1[1];
  v10[1] = v5;
  sub_225A32400(v10);
  v6 = *(a1 + 48);
  v1[3] = *(a1 + 32);
  v1[4] = v6;
  v7 = *(a1 + 80);
  v1[5] = *(a1 + 64);
  v1[6] = v7;
  result = *a1;
  v9 = *(a1 + 16);
  v1[1] = *a1;
  v1[2] = v9;
  return result;
}

__n128 EncryptedDataContainer.init(type:data:params:)@<Q0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  *a4 = a1;
  *(a4 + 8) = a2;
  v4 = *(a3 + 48);
  *(a4 + 48) = *(a3 + 32);
  *(a4 + 64) = v4;
  v5 = *(a3 + 80);
  *(a4 + 80) = *(a3 + 64);
  *(a4 + 96) = v5;
  result = *a3;
  v7 = *(a3 + 16);
  *(a4 + 16) = *a3;
  *(a4 + 32) = v7;
  return result;
}

uint64_t EncryptedDataContainer.init(alg:encryptor:remoteCertificate:senderSigningKey:recipientSigningKey:data:)@<X0>(char *a1@<X0>, void *a2@<X1>, __SecCertificate *a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X5>, unint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v55 = a8;
  v59 = a7;
  v57 = a6;
  v60 = a5;
  v58 = a4;
  v16 = *(a10 - 8);
  MEMORY[0x28223BE20](a1);
  v18 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v49 - v20;
  v22 = *a1;
  v23 = SecCertificateCopyKey(a3);
  if (v23)
  {
    v24 = v23;
    v54 = a9;
    v63 = v22;
    sub_225A32940(a2, v61);
    v25 = v55;
    (*(v16 + 16))(v18, v55, a10);
    v26 = v56;
    EncryptedDataContainer.init(alg:encryptor:remotePublicKey:senderSigningKey:recipientSigningKey:data:)(&v63, v61, v24, v58, v60, v57, v59, v18, v62, a10, a11, a12);

    (*(v16 + 8))(v25, a10);
    result = __swift_destroy_boxed_opaque_existential_0(a2);
    if (!v26)
    {
      v28 = v62[5];
      v29 = v54;
      *(v54 + 4) = v62[4];
      v29[5] = v28;
      v29[6] = v62[6];
      v30 = v62[1];
      *v29 = v62[0];
      v29[1] = v30;
      v31 = v62[3];
      v29[2] = v62[2];
      v29[3] = v31;
    }
  }

  else
  {
    v52 = a3;
    v53 = v16;
    v32 = v55;
    v54 = a2;
    v51 = 0x8000000225D18940;
    v50 = 0x8000000225D18980;
    v49 = 0x8000000225D189B0;
    v33 = MEMORY[0x277D84F90];
    v34 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    swift_allocError();
    v36 = v35;
    v37 = sub_225CCE954();
    v38 = *(v37 - 8);
    (*(v38 + 56))(v21, 1, 1, v37);
    LODWORD(v37) = (*(v38 + 48))(v21, 1, v37);
    sub_2259CB640(v21, &unk_27D73B050, &unk_225CD3AD0);
    if (v37)
    {
      v39 = 1155;
    }

    else
    {
      v39 = 23;
    }

    v40 = sub_225B2C374(v33);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v61[0] = v40;
    sub_225B2C4A0(v34, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, v61);

    v42 = v61[0];
    v43 = sub_225B29AA0(0, 1, 1, v33);
    v45 = *(v43 + 2);
    v44 = *(v43 + 3);
    if (v45 >= v44 >> 1)
    {
      v43 = sub_225B29AA0((v44 > 1), v45 + 1, 1, v43);
    }

    v46 = v53;
    *(v43 + 2) = v45 + 1;
    v47 = &v43[56 * v45];
    v48 = v51;
    *(v47 + 4) = 0xD00000000000003FLL;
    *(v47 + 5) = v48;
    *(v47 + 6) = 0xD00000000000002DLL;
    *(v47 + 7) = v50;
    *(v47 + 8) = 0xD000000000000050;
    *(v47 + 9) = v49;
    *(v47 + 10) = 142;
    *v36 = v39;
    *(v36 + 8) = v43;
    *(v36 + 16) = 0xD00000000000003FLL;
    *(v36 + 24) = v48;
    *(v36 + 32) = v42;
    *(v36 + 40) = 0;
    swift_willThrow();
    sub_2259BEF00(v57, v59);
    sub_2259BEF00(v58, v60);

    (*(v46 + 8))(v32, a10);
    return __swift_destroy_boxed_opaque_existential_0(v54);
  }

  return result;
}

uint64_t EncryptedDataContainer.init(alg:encryptor:remotePublicKey:senderSigningKey:recipientSigningKey:data:)@<X0>(unsigned __int8 *a1@<X0>, void *a2@<X1>, __SecKey *a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X5>, unint64_t a7@<X6>, uint64_t a8@<X7>, _OWORD *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v220 = a2;
  v204 = a9;
  error[1] = *MEMORY[0x277D85DE8];
  v19 = sub_225CCD954();
  v20 = *(v19 - 8);
  v206 = v19;
  v207 = v20;
  MEMORY[0x28223BE20](v19);
  v205 = &v189 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  MEMORY[0x28223BE20](v22 - 8);
  v214 = &v189 - v23;
  LODWORD(v208) = *a1;
  error[0] = 0;
  v24 = SecKeyCopyExternalRepresentation(a3, error);
  if (!v24)
  {
    LOWORD(v230[0]) = 249;
    errorFromCFError(_:_:_:)(error[0], 0xD000000000000033, 0x8000000225D18A10, v230);
    swift_willThrow();

    sub_2259BEF00(a6, a7);
    sub_2259BEF00(a4, a5);
    (*(*(a10 - 8) + 8))(a8, a10);
    return __swift_destroy_boxed_opaque_existential_0(v220);
  }

  v215 = a6;
  v216 = a7;
  v211 = a3;
  v212 = a4;
  v213 = a5;
  v217 = a8;
  v218 = a10;
  v25 = v24;
  v26 = sub_225CCCFA4();
  v28 = v27;

  v29 = sub_225CCCF74();
  v30 = DigestSha256(v29);

  v209 = v26;
  v210 = v28;
  if (!v30)
  {
    v208 = 0x8000000225D18980;
    v206 = 0x8000000225D18A90;
    v42 = MEMORY[0x277D84F90];
    v43 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v207 = swift_allocError();
    v45 = v44;
    v46 = sub_225CCE954();
    v47 = *(v46 - 8);
    v48 = v214;
    (*(v47 + 56))(v214, 1, 1, v46);
    LODWORD(v46) = (*(v47 + 48))(v48, 1, v46);
    sub_2259CB640(v48, &unk_27D73B050, &unk_225CD3AD0);
    if (v46)
    {
      v49 = 1152;
    }

    else
    {
      v49 = 23;
    }

    v50 = sub_225B2C374(v42);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v230[0] = v50;
    sub_225B2C4A0(v43, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, v230);

    v52 = v230[0];
    v53 = sub_225B29AA0(0, 1, 1, v42);
    v55 = *(v53 + 2);
    v54 = *(v53 + 3);
    if (v55 >= v54 >> 1)
    {
      v53 = sub_225B29AA0((v54 > 1), v55 + 1, 1, v53);
    }

    v56 = v211;
    *(v53 + 2) = v55 + 1;
    v57 = &v53[56 * v55];
    *(v57 + 4) = 0xD000000000000030;
    *(v57 + 5) = 0x8000000225D18A50;
    v58 = v208;
    *(v57 + 6) = 0xD00000000000002DLL;
    *(v57 + 7) = v58;
    v59 = v206;
    *(v57 + 8) = 0xD00000000000004ELL;
    *(v57 + 9) = v59;
    *(v57 + 10) = 158;
    *v45 = v49;
    *(v45 + 8) = v53;
    *(v45 + 16) = 0xD000000000000030;
    *(v45 + 24) = 0x8000000225D18A50;
    *(v45 + 32) = v52;
    *(v45 + 40) = 0;
    swift_willThrow();
    sub_2259BEF00(v209, v210);

    goto LABEL_49;
  }

  v31 = sub_225CCCFA4();
  v33 = v32;

  v34 = sub_225CCCF84();
  v36 = v35;
  sub_2259BEF00(v31, v33);
  sub_225CCC9E4();
  swift_allocObject();
  sub_225CCC9D4();
  v37 = v217;
  v38 = v218;
  v39 = v219;
  v40 = sub_225CCC9C4();
  if (v39)
  {
    (*(*(v38 - 8) + 8))(v37, v38);
    sub_2259BEF00(v215, v216);
    sub_2259BEF00(v212, v213);

LABEL_5:
    sub_2259BEF00(v209, v210);
    return __swift_destroy_boxed_opaque_existential_0(v220);
  }

  v60 = v40;
  v219 = v41;
  v199 = a12;
  v200 = v34;
  v202 = v36;

  v61 = [objc_opt_self() standardUserDefaults];
  if (qword_28105B9F0 != -1)
  {
    swift_once();
  }

  v203 = v60;
  v201 = 0;
  v62 = v207;
  if (byte_28105B9F8 != 1)
  {

    goto LABEL_22;
  }

  v63 = sub_225CCE444();
  v64 = [v61 BOOLForKey_];

  if ((v64 & 1) == 0)
  {
LABEL_22:
    if (v208)
    {
      goto LABEL_23;
    }

LABEL_41:

    v103 = 0x8000000225D18B60;
    v207 = 0x8000000225D18A90;
    v208 = 0x8000000225D18980;
    v144 = MEMORY[0x277D84F90];
    v145 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    swift_allocError();
    v107 = v146;
    v147 = sub_225CCE954();
    v148 = *(v147 - 8);
    v149 = v214;
    (*(v148 + 56))(v214, 1, 1, v147);
    LODWORD(v147) = (*(v148 + 48))(v149, 1, v147);
    sub_2259CB640(v149, &unk_27D73B050, &unk_225CD3AD0);
    if (v147)
    {
      v111 = 109;
    }

    else
    {
      v111 = 23;
    }

    v150 = sub_225B2C374(v144);
    v151 = swift_isUniquelyReferenced_nonNull_native();
    v230[0] = v150;
    sub_225B2C4A0(v145, sub_225B2AC40, 0, v151, v230);

    v114 = v230[0];
    v115 = sub_225B29AA0(0, 1, 1, v144);
    v153 = *(v115 + 2);
    v152 = *(v115 + 3);
    if (v153 >= v152 >> 1)
    {
      v115 = sub_225B29AA0((v152 > 1), v153 + 1, 1, v115);
    }

    v154 = v208;
    v119 = v209;
    *(v115 + 2) = v153 + 1;
    v120 = &v115[56 * v153];
    v121 = 0xD00000000000003BLL;
    *(v120 + 4) = 0xD00000000000003BLL;
    *(v120 + 5) = 0x8000000225D18B60;
    *(v120 + 6) = 0xD00000000000002DLL;
    *(v120 + 7) = v154;
    v155 = v207;
    *(v120 + 8) = 0xD00000000000004ELL;
    *(v120 + 9) = v155;
    v123 = 169;
    goto LABEL_47;
  }

  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v65 = off_28105B918;
  v66 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v67 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v67));
  v69 = v205;
  v68 = v206;
  (*(v62 + 16))(v205, &v65[v66], v206);
  os_unfair_lock_unlock(&v65[v67]);
  v70 = v203;
  v71 = v219;
  sub_2259CB710(v203, v219);
  v72 = sub_225CCD934();
  v73 = sub_225CCED04();
  sub_2259BEF00(v70, v71);
  if (os_log_type_enabled(v72, v73))
  {
    v74 = swift_slowAlloc();
    v75 = swift_slowAlloc();
    v230[0] = v75;
    *v74 = 136315138;
    v76 = sub_225CCCF84();
    v78 = v73;
    v79 = sub_2259BE198(v76, v77, v230);

    *(v74 + 4) = v79;
    _os_log_impl(&dword_2259A7000, v72, v78, "EncryptedDataContainer contains %s", v74, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v75);
    MEMORY[0x22AA6F950](v75, -1, -1);
    MEMORY[0x22AA6F950](v74, -1, -1);

    (*(v62 + 8))(v69, v206);
  }

  else
  {

    (*(v62 + 8))(v69, v68);
  }

  if (!v208)
  {
    goto LABEL_41;
  }

LABEL_23:
  v80 = sub_225CCCF74();
  v81 = DigestSha256(v80);

  if (!v81)
  {

    v103 = 0x8000000225D18AE0;
    v207 = 0x8000000225D18A90;
    v208 = 0x8000000225D18980;
    v104 = MEMORY[0x277D84F90];
    v105 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    swift_allocError();
    v107 = v106;
    v108 = sub_225CCE954();
    v109 = *(v108 - 8);
    v110 = v214;
    (*(v109 + 56))(v214, 1, 1, v108);
    LODWORD(v108) = (*(v109 + 48))(v110, 1, v108);
    sub_2259CB640(v110, &unk_27D73B050, &unk_225CD3AD0);
    if (v108)
    {
      v111 = 1156;
    }

    else
    {
      v111 = 23;
    }

    v112 = sub_225B2C374(v104);
    v113 = swift_isUniquelyReferenced_nonNull_native();
    v230[0] = v112;
    sub_225B2C4A0(v105, sub_225B2AC40, 0, v113, v230);

    v114 = v230[0];
    v115 = sub_225B29AA0(0, 1, 1, v104);
    v117 = *(v115 + 2);
    v116 = *(v115 + 3);
    if (v117 >= v116 >> 1)
    {
      v115 = sub_225B29AA0((v116 > 1), v117 + 1, 1, v115);
    }

    v118 = v208;
    v119 = v209;
    *(v115 + 2) = v117 + 1;
    v120 = &v115[56 * v117];
    v121 = 0xD000000000000033;
    *(v120 + 4) = 0xD000000000000033;
    *(v120 + 5) = 0x8000000225D18AE0;
    *(v120 + 6) = 0xD00000000000002DLL;
    *(v120 + 7) = v118;
    v122 = v207;
    *(v120 + 8) = 0xD00000000000004ELL;
    *(v120 + 9) = v122;
    v123 = 172;
LABEL_47:
    *(v120 + 10) = v123;
    *v107 = v111;
    *(v107 + 8) = v115;
    *(v107 + 16) = v121;
    *(v107 + 24) = v103;
    *(v107 + 32) = v114;
    *(v107 + 40) = 0;
    swift_willThrow();
    v142 = v119;
    v143 = v210;
LABEL_48:
    sub_2259BEF00(v142, v143);

    sub_2259BEF00(v203, v219);
LABEL_49:
    sub_2259BEF00(v215, v216);
    sub_2259BEF00(v212, v213);
    (*(*(v218 - 8) + 8))(v217, v218);
    return __swift_destroy_boxed_opaque_existential_0(v220);
  }

  v205 = sub_225CCCFA4();
  v206 = v82;

  v84 = v212;
  v83 = v213;
  v85 = sub_225CCCF74();
  v86 = DigestSha256(v85);

  if (!v86)
  {

    v207 = 0x8000000225D18A90;
    v208 = 0x8000000225D18980;
    v124 = MEMORY[0x277D84F90];
    v125 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    swift_allocError();
    v127 = v126;
    v128 = sub_225CCE954();
    v129 = *(v128 - 8);
    v130 = v214;
    (*(v129 + 56))(v214, 1, 1, v128);
    LODWORD(v128) = (*(v129 + 48))(v130, 1, v128);
    sub_2259CB640(v130, &unk_27D73B050, &unk_225CD3AD0);
    if (v128)
    {
      v131 = 1151;
    }

    else
    {
      v131 = 23;
    }

    v132 = sub_225B2C374(v124);
    v133 = swift_isUniquelyReferenced_nonNull_native();
    v230[0] = v132;
    sub_225B2C4A0(v125, sub_225B2AC40, 0, v133, v230);

    v134 = v230[0];
    v135 = sub_225B29AA0(0, 1, 1, v124);
    v137 = *(v135 + 2);
    v136 = *(v135 + 3);
    if (v137 >= v136 >> 1)
    {
      v135 = sub_225B29AA0((v136 > 1), v137 + 1, 1, v135);
    }

    v138 = v208;
    v139 = v209;
    *(v135 + 2) = v137 + 1;
    v140 = &v135[56 * v137];
    *(v140 + 4) = 0xD000000000000030;
    *(v140 + 5) = 0x8000000225D18B20;
    *(v140 + 6) = 0xD00000000000002DLL;
    *(v140 + 7) = v138;
    v141 = v207;
    *(v140 + 8) = 0xD00000000000004ELL;
    *(v140 + 9) = v141;
    *(v140 + 10) = 175;
    *v127 = v131;
    *(v127 + 8) = v135;
    *(v127 + 16) = 0xD000000000000030;
    *(v127 + 24) = 0x8000000225D18B20;
    *(v127 + 32) = v134;
    *(v127 + 40) = 0;
    swift_willThrow();
    sub_2259BEF00(v139, v210);
    v142 = v205;
    v143 = v206;
    goto LABEL_48;
  }

  v214 = sub_225CCCFA4();
  v198 = v87;

  v88 = v220[4];
  v207 = v220[3];
  v197 = __swift_project_boxed_opaque_existential_1(v220, v207);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B228, &qword_225CD8008);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_225CD4890;
  *(inited + 32) = 0;
  *(inited + 40) = v84;
  *(inited + 48) = v83;
  *(inited + 56) = 1;
  v91 = v215;
  v90 = v216;
  *(inited + 64) = v215;
  *(inited + 72) = v90;
  v92 = sub_225B2D244(inited);
  swift_setDeallocating();
  sub_2259CB710(v84, v83);
  sub_2259CB710(v91, v90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B230, &unk_225CD8010);
  swift_arrayDestroy();
  v93 = v88;
  v94 = *(v88 + 16);
  v95 = v203;
  v96 = v219;
  v97 = v211;
  v98 = v201;
  v99 = v94(v203, v219, v211, v92, v207, v93);
  if (v98)
  {
    (*(*(v218 - 8) + 8))(v217);
    sub_2259BEF00(v91, v216);
    sub_2259BEF00(v84, v83);

    sub_2259BEF00(v214, v198);
    sub_2259BEF00(v205, v206);
    sub_2259BEF00(v95, v96);

    goto LABEL_5;
  }

  v157 = v101;
  v158 = v102;
  v159 = v214;
  v160 = v198;
  v161 = v99;
  v162 = v100;

  sub_2259BEF00(v161, v162);
  v163 = v220[3];
  v164 = v220[4];
  __swift_project_boxed_opaque_existential_1(v220, v163);
  v165 = (*(v164 + 40))(v163, v164);
  v194 = a11;
  v207 = 0;
  v166 = v165;
  v168 = v167;
  v201 = sub_225CCCF84();
  v195 = v169;
  sub_2259BEF00(v166, v168);
  v170 = v159;
  v196 = sub_225CCCF84();
  v197 = v171;
  v173 = v205;
  v172 = v206;
  v174 = sub_225CCCF84();
  v192 = v174;
  v193 = v175;
  v176 = sub_225CCCF84();
  v190 = v177;
  v191 = v176;
  sub_2259BEF00(v209, v210);
  sub_2259BEF00(v173, v172);
  sub_2259BEF00(v157, v158);
  sub_2259BEF00(v170, v160);

  sub_2259BEF00(v203, v219);
  sub_2259BEF00(v215, v216);
  sub_2259BEF00(v212, v213);
  v178 = v218;
  (*(*(v218 - 8) + 8))(v217, v218);
  v179 = v190;
  *&v222 = v176;
  *(&v222 + 1) = v190;
  LOBYTE(v160) = v208;
  LOBYTE(v223) = v208;
  *(&v223 + 1) = *v221;
  DWORD1(v223) = *&v221[3];
  v180 = v200;
  *(&v223 + 1) = v201;
  *&v224 = v195;
  v181 = v202;
  *(&v224 + 1) = v200;
  *&v225 = v202;
  *(&v225 + 1) = v196;
  *&v226 = v197;
  v182 = v193;
  *(&v226 + 1) = v174;
  v227 = v193;
  v229 = 0uLL;
  v228 = 0;
  v183 = v193;
  v184 = v204;
  v204[4] = v226;
  v184[5] = v183;
  v184[6] = v229;
  v185 = v225;
  v184[2] = v224;
  v184[3] = v185;
  v186 = v223;
  *v184 = v222;
  v184[1] = v186;
  v187 = type metadata accessor for EncryptedDataContainer(0, v178, v194, v199);
  v188 = *(v187 - 8);
  (*(v188 + 16))(v230, &v222, v187);
  __swift_destroy_boxed_opaque_existential_0(v220);
  v230[0] = v191;
  v230[1] = v179;
  v231 = v160;
  *v232 = *v221;
  *&v232[3] = *&v221[3];
  v233 = v201;
  v234 = v195;
  v235 = v180;
  v236 = v181;
  v237 = v196;
  v238 = v197;
  v239 = v192;
  v240 = v182;
  v241 = 0;
  v242 = 0;
  v243 = 0;
  return (*(v188 + 8))(v230, v187);
}

void EncryptedDataContainer.getUnencryptedData(alg:decryptor:senderSigningKey:recipientSigningKey:)(unsigned __int8 *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X6>, char *a8@<X8>)
{
  v162 = a5;
  v163 = a6;
  v160 = a3;
  v161 = a4;
  v159 = a8;
  v174 = sub_225CCD954();
  v164 = *(v174 - 8);
  MEMORY[0x28223BE20](v174);
  v165 = a7;
  v166 = &v146 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a7 + 16);
  v15 = sub_225CCEFC4();
  v155 = *(v15 - 8);
  v156 = v15;
  v16 = MEMORY[0x28223BE20](v15);
  v158 = &v146 - v17;
  v157 = *(v14 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v146 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = &v146 - v23;
  v25 = *a1;
  v26 = v8[5];
  v171 = v8[4];
  v172 = v26;
  v173 = v8[6];
  v27 = v8[1];
  v168 = *v8;
  v169 = v27;
  v28 = v8[3];
  *v170 = v8[2];
  *&v170[16] = v28;
  if (v25)
  {
    v154 = v22;
    v30 = a2[3];
    v29 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v30);
    v31 = (*(v29 + 40))(v30, v29);
    if (v9)
    {
      return;
    }

    v153 = 0;
    v33 = v31;
    v34 = v32;
    v35 = sub_225CCCF74();
    sub_2259BEF00(v33, v34);
    v36 = DigestSha256(v35);

    if (v36)
    {
      v37 = sub_225CCCFA4();
      v39 = v38;

      v151 = v37;
      v152 = v39;
      v40 = sub_225CCCF84();
      v41 = *(&v169 + 1);
      v42 = *v170;
      if (__PAIR128__(v43, v40) == *&v170[8])
      {
      }

      else
      {
        v76 = sub_225CCF934();

        if ((v76 & 1) == 0)
        {
          v95 = 0x8000000225D18C20;
          v174 = 0x8000000225D18980;
          v166 = 0x8000000225D18BD0;
          v115 = MEMORY[0x277D84F90];
          v116 = sub_225B2C248(MEMORY[0x277D84F90]);
          sub_2259CB5EC();
          swift_allocError();
          v99 = v117;
          v118 = sub_225CCE954();
          v119 = *(v118 - 8);
          (*(v119 + 56))(v24, 1, 1, v118);
          LODWORD(v118) = (*(v119 + 48))(v24, 1, v118);
          sub_2259CB640(v24, &unk_27D73B050, &unk_225CD3AD0);
          if (v118)
          {
            v102 = 138;
          }

          else
          {
            v102 = 23;
          }

          v120 = sub_225B2C374(v115);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v167[0] = v120;
          sub_225B2C4A0(v116, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, v167);

          v105 = v167[0];
          v106 = sub_225B29AA0(0, 1, 1, v115);
          v123 = *(v106 + 2);
          v122 = *(v106 + 3);
          if (v123 >= v122 >> 1)
          {
            v106 = sub_225B29AA0((v122 > 1), v123 + 1, 1, v106);
          }

          v109 = v152;
          *(v106 + 2) = v123 + 1;
          v110 = &v106[56 * v123];
          v111 = 0xD00000000000004FLL;
          *(v110 + 4) = 0xD00000000000004FLL;
          *(v110 + 5) = 0x8000000225D18C20;
          v124 = v174;
          *(v110 + 6) = 0xD00000000000002DLL;
          *(v110 + 7) = v124;
          v125 = v166;
          *(v110 + 8) = 0xD000000000000047;
          *(v110 + 9) = v125;
          v114 = 192;
          goto LABEL_43;
        }
      }

      v150 = v42;
      v78 = *(&v168 + 1);
      v77 = v168;
      if (!*(&v168 + 1) || (, v79 = sub_225CCCF04(), v80 >> 60 == 15))
      {
        v163 = v77;
        if (qword_28105B910 != -1)
        {
          swift_once();
        }

        v81 = off_28105B918;
        v82 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
        v83 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
        os_unfair_lock_lock((off_28105B918 + v83));
        v84 = v164;
        v85 = v166;
        (*(v164 + 16))(v166, &v81[v82], v174);
        os_unfair_lock_unlock(&v81[v83]);
        v86 = v165;
        v87 = *(v165 - 8);
        (*(v87 + 16))(v167, &v168, v165);
        v88 = sub_225CCD934();
        v89 = sub_225CCED14();
        (*(v87 + 8))(&v168, v86);
        if (os_log_type_enabled(v88, v89))
        {
          v90 = swift_slowAlloc();
          v91 = swift_slowAlloc();
          v167[0] = v91;
          *v90 = 136446210;
          if (v78)
          {
            v92 = v163;
          }

          else
          {
            v92 = 7104878;
          }

          if (!v78)
          {
            v78 = 0xE300000000000000;
          }

          v93 = v84;
          v94 = sub_2259BE198(v92, v78, v167);

          *(v90 + 4) = v94;
          _os_log_impl(&dword_2259A7000, v88, v89, "Failed to base64 decode the encrypted data: %{public}s", v90, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v91);
          MEMORY[0x22AA6F950](v91, -1, -1);
          MEMORY[0x22AA6F950](v90, -1, -1);

          (*(v93 + 8))(v166, v174);
        }

        else
        {

          (*(v84 + 8))(v85, v174);
        }

        v95 = 0x8000000225D18C70;
        v174 = 0x8000000225D18980;
        v166 = 0x8000000225D18BD0;
        v96 = MEMORY[0x277D84F90];
        v97 = sub_225B2C248(MEMORY[0x277D84F90]);
        sub_2259CB5EC();
        swift_allocError();
        v99 = v98;
        v100 = sub_225CCE954();
        v101 = *(v100 - 8);
        (*(v101 + 56))(v24, 1, 1, v100);
        LODWORD(v100) = (*(v101 + 48))(v24, 1, v100);
        sub_2259CB640(v24, &unk_27D73B050, &unk_225CD3AD0);
        if (v100)
        {
          v102 = 122;
        }

        else
        {
          v102 = 23;
        }

        v103 = sub_225B2C374(v96);
        v104 = swift_isUniquelyReferenced_nonNull_native();
        v167[0] = v103;
        sub_225B2C4A0(v97, sub_225B2AC40, 0, v104, v167);

        v105 = v167[0];
        v106 = sub_225B29AA0(0, 1, 1, v96);
        v108 = *(v106 + 2);
        v107 = *(v106 + 3);
        if (v108 >= v107 >> 1)
        {
          v106 = sub_225B29AA0((v107 > 1), v108 + 1, 1, v106);
        }

        v109 = v152;
        *(v106 + 2) = v108 + 1;
        v110 = &v106[56 * v108];
        v111 = 0xD00000000000002BLL;
        *(v110 + 4) = 0xD00000000000002BLL;
        *(v110 + 5) = 0x8000000225D18C70;
        v112 = v174;
        *(v110 + 6) = 0xD00000000000002DLL;
        *(v110 + 7) = v112;
        v113 = v166;
        *(v110 + 8) = 0xD000000000000047;
        *(v110 + 9) = v113;
        v114 = 196;
LABEL_43:
        *(v110 + 10) = v114;
        *v99 = v102;
        *(v99 + 8) = v106;
        *(v99 + 16) = v111;
        *(v99 + 24) = v95;
        *(v99 + 32) = v105;
        *(v99 + 40) = 0;
        swift_willThrow();
        v126 = v151;
        v127 = v109;
LABEL_44:
        sub_2259BEF00(v126, v127);
        return;
      }

      v128 = v80;
      v166 = v79;

      v129 = a2[4];
      v174 = a2[3];
      v148 = v129;
      v149 = __swift_project_boxed_opaque_existential_1(a2, v174);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B228, &qword_225CD8008);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_225CD4890;
      v164 = v128;
      *(inited + 32) = 0;
      v132 = v160;
      v131 = v161;
      *(inited + 40) = v160;
      *(inited + 48) = v131;
      *(inited + 56) = 1;
      v147 = v41;
      v133 = v162;
      v134 = v163;
      *(inited + 64) = v162;
      *(inited + 72) = v134;
      v146 = sub_225B2D244(inited);
      swift_setDeallocating();
      v135 = v132;
      v136 = v166;
      sub_2259CB710(v135, v131);
      sub_2259CB710(v133, v134);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B230, &unk_225CD8010);
      v137 = v164;
      swift_arrayDestroy();
      v138 = v153;
      v139 = (*(v148 + 32))(0, 0xF000000000000000, v136, v137, v147, v150, v146, v174, v148);
      v141 = v140;

      if (v138)
      {
        sub_2259B97A8(v136, v137);
        v126 = v151;
        v127 = v152;
        goto LABEL_44;
      }

      if (v14 == MEMORY[0x277CC9318])
      {
        v167[0] = v139;
        v167[1] = v141;
        sub_2259CB710(v139, v141);
        v142 = v158;
        if (swift_dynamicCast())
        {
          sub_2259BEF00(v139, v141);
          sub_2259B97A8(v166, v137);
          sub_2259BEF00(v151, v152);
          v143 = v157;
          v144 = MEMORY[0x277CC9318];
          (*(v157 + 56))(v142, 0, 1, MEMORY[0x277CC9318]);
          v145 = *(v143 + 32);
          v145(v19, v142, v144);
          v145(v159, v19, v144);
          return;
        }

        (*(v157 + 56))(v142, 1, 1, MEMORY[0x277CC9318]);
        (*(v155 + 8))(v142, v156);
      }

      sub_225CCC994();
      swift_allocObject();
      sub_225CCC984();
      sub_225CCC974();
      sub_2259BEF00(v139, v141);
      sub_2259B97A8(v166, v137);
      sub_2259BEF00(v151, v152);
    }

    else
    {
      v174 = 0x8000000225D18980;
      v166 = 0x8000000225D18BD0;
      v60 = MEMORY[0x277D84F90];
      v61 = sub_225B2C248(MEMORY[0x277D84F90]);
      sub_2259CB5EC();
      swift_allocError();
      v63 = v62;
      v64 = sub_225CCE954();
      v65 = *(v64 - 8);
      (*(v65 + 56))(v24, 1, 1, v64);
      LODWORD(v64) = (*(v65 + 48))(v24, 1, v64);
      sub_2259CB640(v24, &unk_27D73B050, &unk_225CD3AD0);
      if (v64)
      {
        v66 = 1152;
      }

      else
      {
        v66 = 23;
      }

      v67 = sub_225B2C374(v60);
      v68 = swift_isUniquelyReferenced_nonNull_native();
      v167[0] = v67;
      sub_225B2C4A0(v61, sub_225B2AC40, 0, v68, v167);

      v69 = v167[0];
      v70 = sub_225B29AA0(0, 1, 1, v60);
      v72 = *(v70 + 2);
      v71 = *(v70 + 3);
      if (v72 >= v71 >> 1)
      {
        v70 = sub_225B29AA0((v71 > 1), v72 + 1, 1, v70);
      }

      *(v70 + 2) = v72 + 1;
      v73 = &v70[56 * v72];
      *(v73 + 4) = 0xD000000000000029;
      *(v73 + 5) = 0x8000000225D18BA0;
      v74 = v174;
      *(v73 + 6) = 0xD00000000000002DLL;
      *(v73 + 7) = v74;
      v75 = v166;
      *(v73 + 8) = 0xD000000000000047;
      *(v73 + 9) = v75;
      *(v73 + 10) = 189;
      *v63 = v66;
      *(v63 + 8) = v70;
      *(v63 + 16) = 0xD000000000000029;
      *(v63 + 24) = 0x8000000225D18BA0;
      *(v63 + 32) = v69;
      *(v63 + 40) = 0;
      swift_willThrow();
    }
  }

  else
  {
    v165 = 0x8000000225D18BD0;
    v166 = 0x8000000225D18980;
    v44 = MEMORY[0x277D84F90];
    v45 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v174 = swift_allocError();
    v47 = v46;
    v48 = sub_225CCE954();
    v49 = *(v48 - 8);
    (*(v49 + 56))(v24, 1, 1, v48);
    LODWORD(v48) = (*(v49 + 48))(v24, 1, v48);
    sub_2259CB640(v24, &unk_27D73B050, &unk_225CD3AD0);
    if (v48)
    {
      v50 = 109;
    }

    else
    {
      v50 = 23;
    }

    v51 = sub_225B2C374(v44);
    v52 = swift_isUniquelyReferenced_nonNull_native();
    v167[0] = v51;
    sub_225B2C4A0(v45, sub_225B2AC40, 0, v52, v167);

    v53 = v167[0];
    v54 = sub_225B29AA0(0, 1, 1, v44);
    v56 = *(v54 + 2);
    v55 = *(v54 + 3);
    if (v56 >= v55 >> 1)
    {
      v54 = sub_225B29AA0((v55 > 1), v56 + 1, 1, v54);
    }

    *(v54 + 2) = v56 + 1;
    v57 = &v54[56 * v56];
    *(v57 + 4) = 0xD000000000000020;
    *(v57 + 5) = 0x8000000225D18CD0;
    v58 = v166;
    *(v57 + 6) = 0xD00000000000002DLL;
    *(v57 + 7) = v58;
    v59 = v165;
    *(v57 + 8) = 0xD000000000000047;
    *(v57 + 9) = v59;
    *(v57 + 10) = 186;
    *v47 = v50;
    *(v47 + 8) = v54;
    *(v47 + 16) = 0xD000000000000020;
    *(v47 + 24) = 0x8000000225D18CD0;
    *(v47 + 32) = v53;
    *(v47 + 40) = 0;
    swift_willThrow();
  }
}

uint64_t EncryptedDataContainer.encode(to:)(void *a1, void *a2)
{
  type metadata accessor for EncryptedDataContainer.CodingKeys(255, a2[2], a2[3], a2[4]);
  swift_getWitnessTable();
  v4 = sub_225CCF7F4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = *v2;
  v16[1] = v2[1];
  v16[2] = v6;
  v7 = *(v2 + 4);
  v26 = *(v2 + 3);
  v27 = v7;
  v8 = *(v2 + 6);
  v28 = *(v2 + 5);
  v29 = v8;
  v9 = *(v2 + 2);
  v24 = *(v2 + 1);
  v25 = v9;
  v10 = a1[3];
  v11 = a1;
  v13 = v16 - v12;
  __swift_project_boxed_opaque_existential_1(v11, v10);
  sub_225CCFCE4();
  LOBYTE(v18) = 0;
  v14 = v16[3];
  sub_225CCF734();
  if (!v14)
  {
    v20 = v26;
    v21 = v27;
    v22 = v28;
    v23 = v29;
    v18 = v24;
    v19 = v25;
    v30 = 1;
    sub_225A323C8(&v24, v17);
    sub_225A329BC();
    sub_225CCF7E4();
    v17[2] = v20;
    v17[3] = v21;
    v17[4] = v22;
    v17[5] = v23;
    v17[0] = v18;
    v17[1] = v19;
    sub_225A32400(v17);
  }

  return (*(v5 + 8))(v13, v4);
}

uint64_t EncryptedDataContainer.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X8>)
{
  v26 = a5;
  v27 = a4;
  type metadata accessor for EncryptedDataContainer.CodingKeys(255, a2, a3, a4);
  swift_getWitnessTable();
  v8 = sub_225CCF714();
  v28 = *(v8 - 8);
  v29 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v26 - v9;
  v11 = a1[3];
  v58 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v11);
  v12 = v30;
  sub_225CCFCA4();
  if (v12)
  {
    __swift_destroy_boxed_opaque_existential_0(v58);
  }

  else
  {
    v13 = v28;
    LOBYTE(v38[0]) = 0;
    v14 = sub_225CCF624();
    v16 = v15;
    v45 = 1;
    sub_225A328EC();
    sub_225CCF6E4();
    v30 = v14;
    (*(v13 + 8))(v10, v29);
    v54 = v48;
    v55 = v49;
    v17 = v51;
    v56 = v50;
    v57 = v51;
    v18 = v47;
    v52 = v46;
    v53 = v47;
    *&v31 = v14;
    *(&v31 + 1) = v16;
    v33 = v47;
    v32 = v46;
    v35 = v49;
    v34 = v48;
    v36 = v50;
    v37 = v51;
    v20 = v26;
    v19 = v27;
    v26[5] = v50;
    v20[6] = v17;
    v21 = v35;
    v20[3] = v34;
    v20[4] = v21;
    v22 = v32;
    *v20 = v31;
    v20[1] = v22;
    v20[2] = v18;
    v23 = type metadata accessor for EncryptedDataContainer(0, a2, a3, v19);
    v24 = *(v23 - 8);
    (*(v24 + 16))(v38, &v31, v23);
    __swift_destroy_boxed_opaque_existential_0(v58);
    v38[0] = v30;
    v38[1] = v16;
    v41 = v54;
    v42 = v55;
    v43 = v56;
    v44 = v57;
    v39 = v52;
    v40 = v53;
    return (*(v24 + 8))(v38, v23);
  }
}

uint64_t encryptData<A>(with:to:senderSigningKey:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, __SecCertificate *a7)
{
  v113 = a7;
  v112 = a4;
  v111 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v104 - v9;
  v11 = *(a2 + 8);
  type metadata accessor for DIPECIESSessionV3SecKey();
  inited = swift_initStackObject();
  v114 = xmmword_225CD3100;
  *(inited + 16) = xmmword_225CD3100;
  *(inited + 32) = 0;
  swift_beginAccess();
  v13 = *(inited + 16);
  v14 = inited;
  v15 = *(inited + 24);
  *(inited + 16) = v114;
  sub_2259B97A8(v13, v15);
  swift_beginAccess();
  *(inited + 32) = 0;
  v16.value = SecTrustRef.getLeafCertificate()().value;
  if (!v16.value)
  {
    *&v114 = 0x8000000225D18980;
    v113 = 0x8000000225D18D30;
    v40 = MEMORY[0x277D84F90];
    v41 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    swift_allocError();
    v29 = v42;
    v43 = sub_225CCE954();
    v44 = *(v43 - 8);
    (*(v44 + 56))(v10, 1, 1, v43);
    LODWORD(v43) = (*(v44 + 48))(v10, 1, v43);
    sub_2259CB640(v10, &unk_27D73B050, &unk_225CD3AD0);
    if (v43)
    {
      v45 = 269;
    }

    else
    {
      v45 = 23;
    }

    v46 = sub_225B2C374(v40);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v116 = v46;
    sub_225B2C4A0(v41, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v116);

    v48 = v116;
    v49 = sub_225B29AA0(0, 1, 1, v40);
    v51 = *(v49 + 2);
    v50 = *(v49 + 3);
    if (v51 >= v50 >> 1)
    {
      v49 = sub_225B29AA0((v50 > 1), v51 + 1, 1, v49);
    }

    *(v49 + 2) = v51 + 1;
    v52 = &v49[56 * v51];
    *(v52 + 4) = 0xD00000000000002ALL;
    *(v52 + 5) = 0x8000000225D18D00;
    *(v52 + 6) = 0xD00000000000002DLL;
    *(v52 + 7) = v114;
    *(v52 + 8) = 0xD000000000000026;
    *(v52 + 9) = v113;
    *(v52 + 10) = 227;
    *v29 = v45;
    *(v29 + 8) = v49;
    *(v29 + 16) = 0xD00000000000002ALL;
    *(v29 + 24) = 0x8000000225D18D00;
    *(v29 + 32) = v48;
    *(v29 + 40) = 0;
    swift_willThrow();

    return v29;
  }

  value = v16.value;
  *&v114 = v16;
  if (!v11)
  {
LABEL_19:
    v113 = 0x8000000225D18980;
    v112 = 0x8000000225D18D30;
    v53 = MEMORY[0x277D84F90];
    v54 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    swift_allocError();
    v29 = v55;
    v56 = sub_225CCE954();
    v57 = *(v56 - 8);
    (*(v57 + 56))(v10, 1, 1, v56);
    LODWORD(v56) = (*(v57 + 48))(v10, 1, v56);
    sub_2259CB640(v10, &unk_27D73B050, &unk_225CD3AD0);
    if (v56)
    {
      v58 = 269;
    }

    else
    {
      v58 = 23;
    }

    v59 = sub_225B2C374(v53);
    v60 = swift_isUniquelyReferenced_nonNull_native();
    v116 = v59;
    sub_225B2C4A0(v54, sub_225B2AC40, 0, v60, &v116);

    v61 = v116;
    v62 = sub_225B29AA0(0, 1, 1, v53);
    v64 = *(v62 + 2);
    v63 = *(v62 + 3);
    if (v64 >= v63 >> 1)
    {
      v62 = sub_225B29AA0((v63 > 1), v64 + 1, 1, v62);
    }

    v65 = v114;
    *(v62 + 2) = v64 + 1;
    v66 = &v62[56 * v64];
    *(v66 + 4) = 0xD000000000000027;
    *(v66 + 5) = 0x8000000225D18D60;
    *(v66 + 6) = 0xD00000000000002DLL;
    *(v66 + 7) = v113;
    *(v66 + 8) = 0xD000000000000026;
    *(v66 + 9) = v112;
    *(v66 + 10) = 230;
    *v29 = v58;
    *(v29 + 8) = v62;
    *(v29 + 16) = 0xD000000000000027;
    *(v29 + 24) = 0x8000000225D18D60;
    *(v29 + 32) = v61;
    *(v29 + 40) = 0;
    swift_willThrow();

    return v29;
  }

  v18 = v11;
  v19.value = SecTrustRef.getLeafCertificate()().value;
  if (!v19.value)
  {

    goto LABEL_19;
  }

  v20 = v19.value;
  v110 = v18;
  v21 = SecCertificateCopyKey(v19.value);
  if (v21 && (v22 = v21, v23 = copyPublicKeyDataFromSecKeyPublic(_:)(v21), v25 = v24, v22, v25 >> 60 != 15))
  {
    v108 = v23;
    v109 = v25;
    v68 = SecCertificateCopyKey(value);
    if (v68)
    {
      v69 = v68;
      sub_225CCC9E4();
      swift_allocObject();
      v29 = sub_225CCC9D4();
      v70 = v115;
      v71 = sub_225CCC9C4();
      if (!v70)
      {
        v86 = v71;
        v87 = v72;
        v113 = v20;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B228, &qword_225CD8008);
        v88 = swift_initStackObject();
        v107 = v86;
        v115 = v87;
        v106 = v69;
        *(v88 + 16) = xmmword_225CD4890;
        *(v88 + 32) = 0;
        v89 = v111;
        v90 = v112;
        *(v88 + 40) = v111;
        *(v88 + 48) = v90;
        *(v88 + 56) = 1;
        v91 = v108;
        v92 = v109;
        *(v88 + 64) = v108;
        *(v88 + 72) = v92;
        v105 = sub_225B2D244(v88);
        v93 = v107;
        swift_setDeallocating();
        v94 = v89;
        v95 = v105;
        sub_2259CB710(v94, v90);
        sub_2259CB6FC(v91, v92);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B230, &unk_225CD8010);
        swift_arrayDestroy();
        v96 = v93;
        v97 = v106;
        sub_225A24CA8(v93, v115, v106, v95);
        v29 = v98;
        v99 = v97;
        v101 = v100;
        v103 = v102;

        sub_2259BEF00(v96, v115);

        sub_2259B97A8(v108, v109);

        swift_setDeallocating();
        sub_2259B97A8(*(v14 + 16), *(v14 + 24));
        sub_2259BEF00(v101, v103);
        return v29;
      }

      sub_2259B97A8(v108, v109);
    }

    else
    {
      v113 = v20;
      v111 = 0x8000000225D18980;
      v107 = 0x8000000225D18D30;
      v73 = MEMORY[0x277D84F90];
      v74 = sub_225B2C248(MEMORY[0x277D84F90]);
      sub_2259CB5EC();
      v112 = swift_allocError();
      v29 = v75;
      v76 = sub_225CCE954();
      v77 = *(v76 - 8);
      (*(v77 + 56))(v10, 1, 1, v76);
      LODWORD(v76) = (*(v77 + 48))(v10, 1, v76);
      sub_2259CB640(v10, &unk_27D73B050, &unk_225CD3AD0);
      if (v76)
      {
        v78 = 1155;
      }

      else
      {
        v78 = 23;
      }

      v79 = sub_225B2C374(v73);
      v80 = swift_isUniquelyReferenced_nonNull_native();
      v116 = v79;
      sub_225B2C4A0(v74, sub_225B2AC40, 0, v80, &v116);

      v81 = v116;
      v82 = sub_225B29AA0(0, 1, 1, v73);
      v84 = *(v82 + 2);
      v83 = *(v82 + 3);
      if (v84 >= v83 >> 1)
      {
        v82 = sub_225B29AA0((v83 > 1), v84 + 1, 1, v82);
      }

      v20 = v113;
      *(v82 + 2) = v84 + 1;
      v85 = &v82[56 * v84];
      *(v85 + 4) = 0xD00000000000003FLL;
      *(v85 + 5) = 0x8000000225D18940;
      *(v85 + 6) = 0xD00000000000002DLL;
      *(v85 + 7) = v111;
      *(v85 + 8) = 0xD000000000000026;
      *(v85 + 9) = v107;
      *(v85 + 10) = 237;
      *v29 = v78;
      *(v29 + 8) = v82;
      *(v29 + 16) = 0xD00000000000003FLL;
      *(v29 + 24) = 0x8000000225D18940;
      *(v29 + 32) = v81;
      *(v29 + 40) = 0;
      swift_willThrow();
      sub_2259B97A8(v108, v109);
    }
  }

  else
  {
    v113 = v20;
    v112 = 0x8000000225D18980;
    v111 = 0x8000000225D18D30;
    v26 = MEMORY[0x277D84F90];
    v27 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    swift_allocError();
    v29 = v28;
    v30 = sub_225CCE954();
    v31 = *(v30 - 8);
    (*(v31 + 56))(v10, 1, 1, v30);
    LODWORD(v30) = (*(v31 + 48))(v10, 1, v30);
    sub_2259CB640(v10, &unk_27D73B050, &unk_225CD3AD0);
    if (v30)
    {
      v32 = 249;
    }

    else
    {
      v32 = 23;
    }

    v33 = sub_225B2C374(v26);
    v34 = swift_isUniquelyReferenced_nonNull_native();
    v116 = v33;
    sub_225B2C4A0(v27, sub_225B2AC40, 0, v34, &v116);

    v35 = v116;
    v36 = sub_225B29AA0(0, 1, 1, v26);
    v38 = *(v36 + 2);
    v37 = *(v36 + 3);
    if (v38 >= v37 >> 1)
    {
      v36 = sub_225B29AA0((v37 > 1), v38 + 1, 1, v36);
    }

    *(v36 + 2) = v38 + 1;
    v39 = &v36[56 * v38];
    *(v39 + 4) = 0xD000000000000032;
    *(v39 + 5) = 0x8000000225D18D90;
    *(v39 + 6) = 0xD00000000000002DLL;
    *(v39 + 7) = v112;
    *(v39 + 8) = 0xD000000000000026;
    *(v39 + 9) = v111;
    *(v39 + 10) = 233;
    *v29 = v32;
    *(v29 + 8) = v36;
    *(v29 + 16) = 0xD000000000000032;
    *(v29 + 24) = 0x8000000225D18D90;
    *(v29 + 32) = v35;
    *(v29 + 40) = 0;
    swift_willThrow();
  }

  return v29;
}

void createEncryptedDataContainer<A>(with:to:senderSigningKey:encryptor:)(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  v95 = a7;
  v92 = a1;
  v93 = a8;
  v94 = a9;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v17 = &v88 - v16;
  v90 = *(a6 - 8);
  MEMORY[0x28223BE20](v15);
  v91 = &v88 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(a2 + 8);
  sub_225A32A10(a5, v98);
  sub_225A32A10(v98, v96);
  v20 = v97;
  sub_2259CB640(v96, &qword_27D73B238, &qword_225CD8020);
  if (v20)
  {
    v21.value = SecTrustRef.getLeafCertificate()().value;
    if (v21.value)
    {
      goto LABEL_3;
    }

LABEL_14:
    v95 = 0x8000000225D18980;
    v56 = MEMORY[0x277D84F90];
    v57 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    swift_allocError();
    v59 = v58;
    v60 = sub_225CCE954();
    v61 = *(v60 - 8);
    (*(v61 + 56))(v17, 1, 1, v60);
    LODWORD(v60) = (*(v61 + 48))(v17, 1, v60);
    sub_2259CB640(v17, &unk_27D73B050, &unk_225CD3AD0);
    if (v60)
    {
      v62 = 269;
    }

    else
    {
      v62 = 23;
    }

    v63 = sub_225B2C374(v56);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v96[0] = v63;
    sub_225B2C4A0(v57, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, v96);

    v65 = v96[0];
    v66 = sub_225B29AA0(0, 1, 1, v56);
    v68 = *(v66 + 2);
    v67 = *(v66 + 3);
    if (v68 >= v67 >> 1)
    {
      v66 = sub_225B29AA0((v67 > 1), v68 + 1, 1, v66);
    }

    *(v66 + 2) = v68 + 1;
    v69 = &v66[56 * v68];
    *(v69 + 4) = 0xD00000000000002ALL;
    *(v69 + 5) = 0x8000000225D18D00;
    v70 = v95;
    *(v69 + 6) = 0xD00000000000002DLL;
    *(v69 + 7) = v70;
    *(v69 + 8) = 0xD000000000000041;
    *(v69 + 9) = 0x8000000225D18DD0;
    *(v69 + 10) = 253;
    *v59 = v62;
    *(v59 + 8) = v66;
    *(v59 + 16) = 0xD00000000000002ALL;
    *(v59 + 24) = 0x8000000225D18D00;
    *(v59 + 32) = v65;
    *(v59 + 40) = 0;
    swift_willThrow();
    goto LABEL_27;
  }

  v46 = type metadata accessor for DIPECIESSessionV3SecKey();
  v47 = swift_allocObject();
  v89 = a6;
  v48 = a3;
  v49 = a4;
  v50 = v47;
  v88 = xmmword_225CD3100;
  *(v47 + 16) = xmmword_225CD3100;
  v51 = (v47 + 16);
  *(v47 + 32) = 0;
  v52 = (v47 + 32);
  swift_beginAccess();
  v53 = *v51;
  v54 = *(v50 + 24);
  *v51 = v88;
  sub_2259B97A8(v53, v54);
  swift_beginAccess();
  v55 = *v52;
  *v52 = 0;

  sub_2259CB640(v98, &qword_27D73B238, &qword_225CD8020);
  v98[0] = v50;
  a4 = v49;
  a3 = v48;
  a6 = v89;
  v98[3] = v46;
  v98[4] = &protocol witness table for DIPECIESSessionV3SecKey;
  v21.value = SecTrustRef.getLeafCertificate()().value;
  if (!v21.value)
  {
    goto LABEL_14;
  }

LABEL_3:
  value = v21.value;
  if (!v19)
  {
LABEL_21:
    v94 = 0x8000000225D18DD0;
    v95 = 0x8000000225D18980;
    v71 = MEMORY[0x277D84F90];
    v72 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    swift_allocError();
    v74 = v73;
    v75 = sub_225CCE954();
    v76 = *(v75 - 8);
    (*(v76 + 56))(v17, 1, 1, v75);
    LODWORD(v75) = (*(v76 + 48))(v17, 1, v75);
    sub_2259CB640(v17, &unk_27D73B050, &unk_225CD3AD0);
    if (v75)
    {
      v77 = 269;
    }

    else
    {
      v77 = 23;
    }

    v78 = sub_225B2C374(v71);
    v79 = swift_isUniquelyReferenced_nonNull_native();
    v96[0] = v78;
    sub_225B2C4A0(v72, sub_225B2AC40, 0, v79, v96);

    v80 = v96[0];
    v81 = sub_225B29AA0(0, 1, 1, v71);
    v83 = *(v81 + 2);
    v82 = *(v81 + 3);
    if (v83 >= v82 >> 1)
    {
      v81 = sub_225B29AA0((v82 > 1), v83 + 1, 1, v81);
    }

    *(v81 + 2) = v83 + 1;
    v84 = &v81[56 * v83];
    *(v84 + 4) = 0xD000000000000027;
    *(v84 + 5) = 0x8000000225D18D60;
    v85 = v95;
    *(v84 + 6) = 0xD00000000000002DLL;
    *(v84 + 7) = v85;
    v86 = v94;
    *(v84 + 8) = 0xD000000000000041;
    *(v84 + 9) = v86;
    *(v84 + 10) = 256;
    *v74 = v77;
    *(v74 + 8) = v81;
    *(v74 + 16) = 0xD000000000000027;
    *(v74 + 24) = 0x8000000225D18D60;
    *(v74 + 32) = v80;
    *(v74 + 40) = 0;
    swift_willThrow();

    goto LABEL_27;
  }

  v23 = v19;
  v24.value = SecTrustRef.getLeafCertificate()().value;
  if (!v24.value)
  {

    goto LABEL_21;
  }

  v25 = v24.value;
  v26 = SecCertificateCopyKey(v24.value);
  if (!v26 || (v27 = v26, v89 = copyPublicKeyDataFromSecKeyPublic(_:)(v26), v29 = v28, v27, v29 >> 60 == 15))
  {
    v94 = v25;
    v95 = v23;
    v92 = 0x8000000225D18DD0;
    v93 = 0x8000000225D18980;
    v30 = MEMORY[0x277D84F90];
    v31 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    swift_allocError();
    v33 = v32;
    v34 = sub_225CCE954();
    v35 = *(v34 - 8);
    (*(v35 + 56))(v17, 1, 1, v34);
    LODWORD(v34) = (*(v35 + 48))(v17, 1, v34);
    sub_2259CB640(v17, &unk_27D73B050, &unk_225CD3AD0);
    if (v34)
    {
      v36 = 249;
    }

    else
    {
      v36 = 23;
    }

    v37 = sub_225B2C374(v30);
    v38 = swift_isUniquelyReferenced_nonNull_native();
    v96[0] = v37;
    sub_225B2C4A0(v31, sub_225B2AC40, 0, v38, v96);

    v39 = v96[0];
    v40 = sub_225B29AA0(0, 1, 1, v30);
    v42 = *(v40 + 2);
    v41 = *(v40 + 3);
    if (v42 >= v41 >> 1)
    {
      v40 = sub_225B29AA0((v41 > 1), v42 + 1, 1, v40);
    }

    *(v40 + 2) = v42 + 1;
    v43 = &v40[56 * v42];
    *(v43 + 4) = 0xD000000000000032;
    *(v43 + 5) = 0x8000000225D18D90;
    v44 = v93;
    *(v43 + 6) = 0xD00000000000002DLL;
    *(v43 + 7) = v44;
    v45 = v92;
    *(v43 + 8) = 0xD000000000000041;
    *(v43 + 9) = v45;
    *(v43 + 10) = 259;
    *v33 = v36;
    *(v33 + 8) = v40;
    *(v33 + 16) = 0xD000000000000032;
    *(v33 + 24) = 0x8000000225D18D90;
    *(v33 + 32) = v39;
    *(v33 + 40) = 0;
    swift_willThrow();

LABEL_27:
    sub_2259CB640(v98, &qword_27D73B238, &qword_225CD8020);
    return;
  }

  sub_225A32A10(v98, v96);
  if (v97)
  {
    v87 = v91;
    (*(v90 + 16))(v91, v92, a6);
    v99 = 1;
    sub_2259CB710(a3, a4);
    EncryptedDataContainer.init(alg:encryptor:remoteCertificate:senderSigningKey:recipientSigningKey:data:)(&v99, v96, value, a3, a4, v89, v29, v87, v94, a6, v95, v93);
    sub_2259CB640(v98, &qword_27D73B238, &qword_225CD8020);
  }

  else
  {
    __break(1u);
  }
}

uint64_t createSignedEncryptedMessage<A>(with:to:signingKey:encryptor:nonce:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 1104) = v12;
  *(v8 + 1096) = v11;
  *(v8 + 1088) = a8;
  *(v8 + 1080) = a7;
  *(v8 + 1072) = a6;
  *(v8 + 1064) = a5;
  *(v8 + 1056) = a4;
  *(v8 + 1048) = a2;
  *(v8 + 1040) = a1;
  v9 = *(a3 + 8);
  *(v8 + 1112) = *a3;
  *(v8 + 1120) = v9;
  *(v8 + 1033) = *(a3 + 16);
  return MEMORY[0x2822009F8](sub_225A31A38, 0, 0);
}

uint64_t sub_225A31A38()
{
  v37 = v0;
  v1 = *(v0 + 1056);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = (*(v3 + 24))(v2, v3);
  *(v0 + 1128) = v4;
  *(v0 + 1136) = v5;
  v6 = v4;
  v7 = *(v0 + 1033);
  v8 = *(v0 + 1120);
  v9 = *(v0 + 1104);
  v10 = *(v0 + 1096);
  v11 = *(v0 + 1088);
  v12 = *(v0 + 1064);
  v13 = *(v0 + 1048);
  *(v0 + 1016) = *(v0 + 1112);
  *(v0 + 1024) = v8;
  *(v0 + 1032) = v7;
  createEncryptedDataContainer<A>(with:to:senderSigningKey:encryptor:)(v13, v0 + 1016, v6, v5, v12, v11, v10, v9, v35);
  v14 = *(v0 + 1033);
  v15 = *(v0 + 1104);
  v16 = *(v0 + 1096);
  v17 = *(v0 + 1088);
  v18 = *(v0 + 1056);
  v19 = sub_225CCCF84();
  *(&v36[4] + 6) = v35[4];
  *(&v36[3] + 6) = v35[3];
  *(&v36[6] + 6) = v35[6];
  *(&v36[5] + 6) = v35[5];
  *(&v36[1] + 6) = v35[1];
  *(v36 + 6) = v35[0];
  *(&v36[2] + 6) = v35[2];
  v20 = v36[5];
  v21 = v36[6];
  v22 = v36[3];
  *(v0 + 946) = v36[4];
  *(v0 + 962) = v20;
  *(v0 + 978) = v21;
  v23 = v36[1];
  v24 = v36[2];
  *(v0 + 882) = v36[0];
  *(v0 + 898) = v23;
  *(v0 + 880) = 1;
  *(v0 + 881) = v14;
  *(v0 + 992) = *(&v36[6] + 14);
  *(v0 + 914) = v24;
  *(v0 + 930) = v22;
  *(v0 + 1000) = v19;
  *(v0 + 1008) = v25;
  v26 = type metadata accessor for EncryptedMessage(0, v17, v16, v15);
  WitnessTable = swift_getWitnessTable();
  v28 = swift_getWitnessTable();
  JWSSignedJSON.init(payload:)(v0 + 880, v26, WitnessTable, v28, v0 + 16);
  v29 = type metadata accessor for JWSSignedJSON(0, v26, WitnessTable, v28);
  *(v0 + 1144) = v29;
  JWSSignedJSON.setKid(_:)(v18);
  v30 = *(v0 + 1080);
  if (v30)
  {
    v31 = *(v0 + 1072);
    JWSSignedJSON.setNonce(_:)(*(&v30 - 1));
  }

  v32 = swift_task_alloc();
  *(v0 + 1152) = v32;
  *v32 = v0;
  v32[1] = sub_225A31D60;
  v33 = *(v0 + 1056);

  return JWSSignedJSON.sign(_:)(v33, v29);
}

uint64_t sub_225A31D60()
{
  v2 = *v1;
  *(*v1 + 1160) = v0;

  if (v0)
  {
    v3 = v2[143];
    memcpy(v2 + 74, v2 + 2, 0x120uLL);
    (*(*(v3 - 8) + 8))(v2 + 74, v3);
    v4 = sub_225A31F34;
  }

  else
  {
    v4 = sub_225A31EB8;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_225A31EB8()
{
  v1 = v0[130];
  sub_2259BEF00(v0[141], v0[142]);
  memcpy(v1, v0 + 2, 0x120uLL);
  v2 = v0[1];

  return v2();
}

uint64_t sub_225A31F34()
{
  sub_2259BEF00(v0[141], v0[142]);
  v1 = v0[1];

  return v1();
}

uint64_t _s13CoreIDVShared9KDFParamsV2eeoiySbAC_ACtFZ_0(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v6 = a1[3];
  v5 = a1[4];
  v8 = a1[5];
  v7 = a1[6];
  v9 = a2[1];
  v10 = a2[2];
  v12 = a2[3];
  v11 = a2[4];
  v14 = a2[5];
  v13 = a2[6];
  if (v3)
  {
    if (!v9 || (*a1 != *a2 || v3 != v9) && (sub_225CCF934() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  if (v6)
  {
    if (!v12 || (v4 != v10 || v6 != v12) && (sub_225CCF934() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v12)
  {
    return 0;
  }

  if (!v8)
  {
    if (!v14)
    {
      goto LABEL_20;
    }

    return 0;
  }

  if (!v14 || (v5 != v11 || v8 != v14) && (sub_225CCF934() & 1) == 0)
  {
    return 0;
  }

LABEL_20:
  result = (v7 | v13) == 0;
  if (v7 && v13)
  {

    return sub_225AB7D28(v7, v13);
  }

  return result;
}

uint64_t _s13CoreIDVShared16EncryptionParamsV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 1);
  v4 = *(a1 + 2);
  v5 = *(a1 + 3);
  v27 = *(a1 + 4);
  v22 = *(a1 + 5);
  v30 = *(a1 + 4);
  v31 = *(a1 + 3);
  v25 = *(a1 + 10);
  v26 = *(a1 + 11);
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v9 = *(a2 + 32);
  v21 = *(a2 + 40);
  v10 = 0xE500000000000000;
  v11 = 0x33765F4345;
  v28 = *(a2 + 64);
  v29 = *(a2 + 48);
  if (v2 != 1)
  {
    v11 = 0x48535F33765F4345;
    v10 = 0xE800000000000000;
  }

  if (*a1)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0x765F4343455F5645;
  }

  if (v2)
  {
    v13 = v10;
  }

  else
  {
    v13 = 0xEF312E4E53412D31;
  }

  v23 = *(a2 + 80);
  v24 = *(a2 + 88);
  v14 = 0xE500000000000000;
  v15 = 0x33765F4345;
  if (*a2 != 1)
  {
    v15 = 0x48535F33765F4345;
    v14 = 0xE800000000000000;
  }

  if (*a2)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0x765F4343455F5645;
  }

  if (*a2)
  {
    v17 = v14;
  }

  else
  {
    v17 = 0xEF312E4E53412D31;
  }

  if (v12 == v16 && v13 == v17)
  {
  }

  else
  {
    v18 = sub_225CCF934();

    if ((v18 & 1) == 0)
    {
LABEL_28:
      v19 = 0;
      return v19 & 1;
    }
  }

  if ((v3 != v6 || v4 != v7) && (sub_225CCF934() & 1) == 0 || (v5 != v8 || v27 != v9) && (sub_225CCF934() & 1) == 0)
  {
    goto LABEL_28;
  }

  v37 = v22;
  v38 = v31;
  v39 = v30;
  v40 = v25;
  v41 = v26;
  v32 = v21;
  v33 = v29;
  v34 = v28;
  v35 = v23;
  v36 = v24;
  v19 = _s13CoreIDVShared9KDFParamsV2eeoiySbAC_ACtFZ_0(&v37, &v32);

  return v19 & 1;
}

unint64_t sub_225A32448()
{
  result = qword_27D73B1B8;
  if (!qword_27D73B1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73B1B8);
  }

  return result;
}

unint64_t sub_225A3249C()
{
  result = qword_27D73B1C0;
  if (!qword_27D73B1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73B1C0);
  }

  return result;
}

unint64_t sub_225A32508()
{
  result = qword_28105A730;
  if (!qword_28105A730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28105A730);
  }

  return result;
}

unint64_t sub_225A3255C()
{
  result = qword_281059B90;
  if (!qword_281059B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281059B90);
  }

  return result;
}

uint64_t sub_225A325B0(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D73DCB0, &unk_225CD76A0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_225A3261C()
{
  result = qword_28105A8A8[0];
  if (!qword_28105A8A8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28105A8A8);
  }

  return result;
}

unint64_t sub_225A32670()
{
  result = qword_281059E60;
  if (!qword_281059E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281059E60);
  }

  return result;
}

unint64_t sub_225A326C4()
{
  result = qword_28105A718;
  if (!qword_28105A718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28105A718);
  }

  return result;
}

unint64_t sub_225A32718()
{
  result = qword_281059B78;
  if (!qword_281059B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281059B78);
  }

  return result;
}

unint64_t sub_225A3276C()
{
  result = qword_27D73B1F8;
  if (!qword_27D73B1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73B1F8);
  }

  return result;
}

unint64_t sub_225A327C0()
{
  result = qword_27D73B200;
  if (!qword_27D73B200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73B200);
  }

  return result;
}

unint64_t sub_225A32814()
{
  result = qword_27D73B208;
  if (!qword_27D73B208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73B208);
  }

  return result;
}

unint64_t sub_225A32898()
{
  result = qword_27D73B218;
  if (!qword_27D73B218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73B218);
  }

  return result;
}

unint64_t sub_225A328EC()
{
  result = qword_27D73B220;
  if (!qword_27D73B220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73B220);
  }

  return result;
}

uint64_t sub_225A32940(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_225A329BC()
{
  result = qword_28105A890;
  if (!qword_28105A890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28105A890);
  }

  return result;
}

uint64_t sub_225A32A10(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B238, &qword_225CD8020);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_225A32A84()
{
  result = qword_27D73B240;
  if (!qword_27D73B240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73B240);
  }

  return result;
}

unint64_t sub_225A32ADC()
{
  result = qword_27D73B248[0];
  if (!qword_27D73B248[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D73B248);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for EncryptedMessageEntity(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for EncryptedMessageEntity(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_225A32CA4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_225A32CEC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_225A32D3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy136_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_225A32DB8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 136))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_225A32E00(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 136) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 136) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_225A32E60(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_225A32EA8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_225A32F14(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 56))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_225A32F70(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy96_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_225A3300C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_225A33054(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_225A330BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy112_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

uint64_t sub_225A3311C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_225A33164(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_225A33220()
{
  result = qword_27D73B2D0;
  if (!qword_27D73B2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73B2D0);
  }

  return result;
}

unint64_t sub_225A33278()
{
  result = qword_27D73B2D8;
  if (!qword_27D73B2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73B2D8);
  }

  return result;
}

unint64_t sub_225A332D0()
{
  result = qword_27D73B2E0;
  if (!qword_27D73B2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73B2E0);
  }

  return result;
}

unint64_t sub_225A33328()
{
  result = qword_27D73B2E8;
  if (!qword_27D73B2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73B2E8);
  }

  return result;
}

unint64_t sub_225A333D4()
{
  result = qword_27D73B2F0;
  if (!qword_27D73B2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73B2F0);
  }

  return result;
}

unint64_t sub_225A3342C()
{
  result = qword_27D73B2F8;
  if (!qword_27D73B2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73B2F8);
  }

  return result;
}

unint64_t sub_225A33484()
{
  result = qword_28105A898;
  if (!qword_28105A898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28105A898);
  }

  return result;
}

unint64_t sub_225A334DC()
{
  result = qword_28105A8A0;
  if (!qword_28105A8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28105A8A0);
  }

  return result;
}

unint64_t sub_225A33534()
{
  result = qword_281059B80;
  if (!qword_281059B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281059B80);
  }

  return result;
}

unint64_t sub_225A3358C()
{
  result = qword_281059B88;
  if (!qword_281059B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281059B88);
  }

  return result;
}

unint64_t sub_225A335E4()
{
  result = qword_28105A720;
  if (!qword_28105A720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28105A720);
  }

  return result;
}

unint64_t sub_225A3363C()
{
  result = qword_28105A728;
  if (!qword_28105A728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28105A728);
  }

  return result;
}

uint64_t sub_225A336D0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD00000000000001BLL && 0x8000000225D18E60 == a2 || (sub_225CCF934() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001ELL && 0x8000000225D18E80 == a2 || (sub_225CCF934() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000225D18EA0 == a2 || (sub_225CCF934() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000225D18EC0 == a2)
  {

    return 3;
  }

  else
  {
    v5 = sub_225CCF934();

    if (v5)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_225A33844(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000013 && 0x8000000225D18EE0 == a2 || (sub_225CCF934() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656572674179656BLL && a2 == 0xEC000000746E656DLL || (sub_225CCF934() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 6710379 && a2 == 0xE300000000000000)
  {

    return 2;
  }

  else
  {
    v5 = sub_225CCF934();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

unint64_t sub_225A33974()
{
  result = qword_27D73B300;
  if (!qword_27D73B300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73B300);
  }

  return result;
}

unint64_t sub_225A339C8()
{
  result = qword_281059E58;
  if (!qword_281059E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281059E58);
  }

  return result;
}

uint64_t DIPFileUploadCryptor.Options.init(eraseInputFileData:copyDataForInternalDiagnostics:uuid:key:nonce:publicKey:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  *a9 = result;
  *(a9 + 1) = a2;
  *(a9 + 8) = a3;
  *(a9 + 16) = a4;
  *(a9 + 24) = a5;
  *(a9 + 32) = a6;
  *(a9 + 40) = a7;
  *(a9 + 48) = a8;
  *(a9 + 56) = a10;
  *(a9 + 64) = a11;
  return result;
}

uint64_t DIPFileUploadCryptor.Result.encryptedFileURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_225CCCEA4();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t DIPFileUploadCryptor.Result.internalDiagnosticsURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for DIPFileUploadCryptor.Result(0) + 20);

  return sub_225A33B7C(v3, a1);
}

uint64_t type metadata accessor for DIPFileUploadCryptor.Result(uint64_t a1)
{
  result = qword_27D73B308;
  if (!qword_27D73B308)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_225A33B7C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73E090, &qword_225CD8ED0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void static DIPFileUploadCryptor.encryptFileHandle(_:withOptions:)(void *a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X8>)
{
  v185 = a1;
  v162 = a3;
  v190[3] = *MEMORY[0x277D85DE8];
  v187 = sub_225CCD954();
  v167 = *(v187 - 8);
  v4 = MEMORY[0x28223BE20](v187);
  v163 = v153 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v183 = v153 - v7;
  v8 = MEMORY[0x28223BE20](v6);
  v188 = v153 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v180 = v153 - v11;
  MEMORY[0x28223BE20](v10);
  v181 = v153 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73E090, &qword_225CD8ED0);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v176 = v153 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v177 = v153 - v17;
  MEMORY[0x28223BE20](v16);
  v178 = v153 - v18;
  v184 = sub_225CCCEA4();
  v179 = *(v184 - 8);
  v19 = MEMORY[0x28223BE20](v184);
  v21 = v153 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v19);
  v24 = v153 - v23;
  v25 = MEMORY[0x28223BE20](v22);
  v27 = v153 - v26;
  MEMORY[0x28223BE20](v25);
  v29 = v153 - v28;
  v182 = *a2;
  LODWORD(v168) = a2[1];
  v31 = *(a2 + 1);
  v30 = *(a2 + 2);
  v32 = *(a2 + 4);
  v165 = *(a2 + 3);
  *&v164 = v32;
  v33 = *(a2 + 6);
  v175 = *(a2 + 5);
  v35 = *(a2 + 7);
  v34 = *(a2 + 8);
  v36 = v186;
  sub_225A34EE0(v153 - v28);
  v186 = v36;
  if (v36)
  {
    return;
  }

  v169 = v27;
  v159 = v30;
  v160 = v31;
  v154 = v24;
  v158 = v21;
  v155 = v33;
  v156 = v34;
  v157 = v35;
  v166 = v29;
  v37 = v178;
  v38 = v179;
  v39 = v184;
  (*(v179 + 56))(v178, 1, 1, v184);
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v40 = off_28105B918;
  v41 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v42 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v42));
  v43 = v167;
  v44 = *(v167 + 16);
  v172 = v41;
  v45 = v187;
  v171 = v167 + 16;
  v170 = v44;
  v44(v181, &v40[v41], v187);
  v174 = v40;
  v173 = v42;
  os_unfair_lock_unlock(&v40[v42]);
  v46 = v38[2];
  v47 = v169;
  v153[1] = v38 + 2;
  v153[0] = v46;
  v46(v169, v166, v39);
  v48 = sub_225CCD934();
  v49 = sub_225CCED04();
  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v190[0] = v51;
    *v50 = 136315138;
    v52 = sub_225CCCE54();
    v54 = v53;
    v161 = *(v179 + 8);
    (v161)(v47, v184);
    v55 = sub_2259BE198(v52, v54, v190);

    *(v50 + 4) = v55;
    _os_log_impl(&dword_2259A7000, v48, v49, "Successfully created temporary file at %s. Encrypting data & copying from FileHandle", v50, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v51);
    v38 = v179;
    MEMORY[0x22AA6F950](v51, -1, -1);
    v56 = v50;
    v43 = v167;
    v37 = v178;
    MEMORY[0x22AA6F950](v56, -1, -1);
  }

  else
  {

    v161 = v38[1];
    (v161)(v47, v39);
  }

  v169 = *(v43 + 8);
  v169(v181, v45);
  v57 = v186;
  v58 = v177;
  v59 = v180;
  if (!v168)
  {
    goto LABEL_10;
  }

  v60 = v186;
  sub_225A36438(v160, v159, v177);
  if (v57)
  {
    v61 = v174;
    v62 = v173;
    os_unfair_lock_lock(&v174[v173]);
    v63 = v43;
    v64 = v163;
    v170(v163, &v61[v172], v45);
    os_unfair_lock_unlock(&v61[v62]);
    DIPLogError(_:message:log:)(v60, 0xD000000000000061, 0x8000000225D18F20);

    v65 = v64;
    v43 = v63;
    v38 = v179;
    v169(v65, v45);
    v57 = 0;
LABEL_10:
    v67 = v183;
    v66 = v184;
    goto LABEL_11;
  }

  sub_225A370C8(v58, v37);
  v115 = v174;
  v116 = v173;
  os_unfair_lock_lock(&v174[v173]);
  v170(v59, &v115[v172], v45);
  os_unfair_lock_unlock(&v115[v116]);
  v117 = sub_225CCD934();
  v118 = sub_225CCED04();
  if (os_log_type_enabled(v117, v118))
  {
    v186 = 0;
    v119 = v37;
    v120 = swift_slowAlloc();
    v121 = swift_slowAlloc();
    v190[0] = v121;
    *v120 = 136315138;
    swift_beginAccess();
    v122 = v38[6];
    v123 = v184;
    if (v122(v119, 1, v184))
    {
      v124 = 0;
      v125 = 0xE000000000000000;
    }

    else
    {
      v144 = v154;
      (v153[0])(v154, v119, v123);
      v181 = sub_225CCCE54();
      v125 = v145;
      (v161)(v144, v123);
      v124 = v181;
    }

    v67 = v183;
    v146 = sub_2259BE198(v124, v125, v190);

    *(v120 + 4) = v146;
    _os_log_impl(&dword_2259A7000, v117, v118, "Successfully created internal diagnostics URL at %s", v120, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v121);
    MEMORY[0x22AA6F950](v121, -1, -1);
    MEMORY[0x22AA6F950](v120, -1, -1);

    v169(v180, v187);
    v66 = v184;
    v37 = v178;
    v38 = v179;
    v57 = v186;
  }

  else
  {

    v169(v59, v45);
    v67 = v183;
    v66 = v184;
  }

LABEL_11:
  sub_225CCCE54();
  v68 = sub_225CCE444();

  v69 = objc_opt_self();
  v177 = [v69 fileHandleForWritingAtPath_];

  swift_beginAccess();
  v70 = v176;
  sub_225A33B7C(v37, v176);
  if ((v38[6])(v70, 1, v66) == 1)
  {
    v71 = v66;
    sub_2259CB640(v70, &unk_27D73E090, &qword_225CD8ED0);
    v176 = 0;
  }

  else
  {
    v72 = v38[4];
    v73 = v158;
    v72(v158, v70, v184);
    sub_225CCCE54();
    v74 = sub_225CCE444();

    v176 = [v69 fileHandleForWritingAtPath_];

    v71 = v184;
    v161(v73);
  }

  v75 = v182;
  v76 = v175;
  v77 = sub_225CCECE4();
  if (v57)
  {
    v186 = v57;
    (v161)(v166, v71);

LABEL_49:
    sub_2259CB640(v178, &unk_27D73E090, &qword_225CD8ED0);
    return;
  }

  v79 = v77;
  v80 = v78;
  v81 = objc_allocWithZone(DIPStreamingCryptor);
  v82 = sub_225CCCF74();
  v168 = [v81 initWithKey_];

  v85 = v155;
  if (v155 >> 60 != 15)
  {
    sub_2259CB710(v76, v155);
    v86 = sub_225CCCF74();
    [v168 addIVParameter_];

    v83 = sub_2259B97A8(v76, v85);
  }

  v87 = v156;
  v88 = v157;
  if (v156 >> 60 != 15)
  {
    sub_2259CB710(v157, v156);
    v89 = sub_225CCCF74();
    [v168 addAuthParameter_];

    v83 = sub_2259B97A8(v88, v87);
  }

  if (v80 >> 60 == 15)
  {
    v90 = v80;
    v91 = v79;
  }

  else
  {
    v165 = v43 + 8;
    *&v84 = 134217984;
    v164 = v84;
    do
    {
      v181 = MEMORY[0x22AA6EE60](v83);
      v126 = sub_225CCCF74();
      v127 = [v168 encryptBuffer_];

      v128 = sub_225CCCFA4();
      v130 = v129;

      v175 = [v185 offsetInFile];
      v131 = v177;
      if (v177)
      {
        v132 = sub_225CCCF74();
        [v131 writeData_];
      }

      v180 = v128;
      v133 = v176;
      if (v176)
      {
        v134 = sub_225CCCF74();
        [v133 writeData_];
      }

      v91 = sub_225CCECE4();
      v186 = v135;
      v136 = v174;
      v137 = v173;
      os_unfair_lock_lock(&v174[v173]);
      v138 = v187;
      v170(v188, &v136[v172], v187);
      os_unfair_lock_unlock(&v136[v137]);
      v139 = sub_225CCD934();
      v140 = sub_225CCED04();
      if (os_log_type_enabled(v139, v140))
      {
        v141 = swift_slowAlloc();
        *v141 = v164;
        *(v141 + 4) = v175;
        _os_log_impl(&dword_2259A7000, v139, v140, "Encrypted 0.5 MB from FileHandle starting at offset: %llu", v141, 0xCu);
        v138 = v187;
        MEMORY[0x22AA6F950](v141, -1, -1);
      }

      sub_2259BEF00(v180, v130);

      v169(v188, v138);
      objc_autoreleasePoolPop(v181);
      v83 = sub_2259B97A8(v79, v80);
      v90 = v186;
      v79 = v91;
      v80 = v186;
      v67 = v183;
      v75 = v182;
    }

    while (v186 >> 60 != 15);
  }

  v92 = [v168 finish];
  v93 = sub_225CCCFA4();
  v95 = v94;

  if (v177)
  {
    v96 = v177;
    v97 = sub_225CCCF74();
    [v96 writeData_];
  }

  if (v75)
  {
    v189 = 0;
    v98 = [v185 truncateAtOffset:0 error:&v189];
    v99 = v189;
    if (!v98)
    {
LABEL_46:
      v142 = v99;
      v143 = sub_225CCCCC4();

      v186 = v143;
      swift_willThrow();

      sub_2259BEF00(v93, v95);
LABEL_47:

      goto LABEL_48;
    }

    v100 = v189;
  }

  v189 = 0;
  v101 = [v185 closeAndReturnError_];
  v99 = v189;
  if (!v101)
  {
    goto LABEL_46;
  }

  v102 = v177;
  if (v177)
  {
    v189 = 0;
    v103 = v99;
    v104 = [v102 closeAndReturnError_];
    v99 = v189;
    if (!v104)
    {
      v147 = v189;
      v148 = sub_225CCCCC4();

      v186 = v148;
      swift_willThrow();

      sub_2259BEF00(v93, v95);
      goto LABEL_47;
    }
  }

  v105 = v99;
  if (v176)
  {
    v188 = v91;
    v189 = 0;
    v106 = v176;
    if ([v176 closeAndReturnError_])
    {
      v107 = v189;
      v91 = v188;
      goto LABEL_33;
    }

    v151 = v189;
    v152 = sub_225CCCCC4();

    v186 = v152;
    swift_willThrow();

    sub_2259BEF00(v93, v95);
LABEL_48:
    (v161)(v166, v184);
    goto LABEL_49;
  }

LABEL_33:
  v108 = v174;
  v109 = v173;
  os_unfair_lock_lock(&v174[v173]);
  v170(v67, &v108[v172], v187);
  os_unfair_lock_unlock(&v108[v109]);
  v110 = sub_225CCD934();
  v111 = sub_225CCED04();
  if (os_log_type_enabled(v110, v111))
  {
    v112 = swift_slowAlloc();
    *v112 = 0;
    _os_log_impl(&dword_2259A7000, v110, v111, "Finished encrypting data in original liveness FileHandle", v112, 2u);
    v113 = v187;
    MEMORY[0x22AA6F950](v112, -1, -1);

    sub_2259BEF00(v93, v95);
    sub_2259B97A8(v91, v90);
    v114 = v162;
  }

  else
  {

    sub_2259BEF00(v93, v95);
    v114 = v162;
    v113 = v187;
  }

  v169(v67, v113);
  (*(v179 + 32))(v114, v166, v184);
  v149 = v114 + *(type metadata accessor for DIPFileUploadCryptor.Result(0) + 20);
  v150 = v178;
  sub_225A33B7C(v178, v149);
  sub_2259CB640(v150, &unk_27D73E090, &qword_225CD8ED0);
}

void sub_225A34EE0(uint64_t a5@<X8>)
{
  v185 = *MEMORY[0x277D85DE8];
  v175 = sub_225CCD954();
  v174 = *(v175 - 1);
  v6 = MEMORY[0x28223BE20](v175);
  v166 = &v161 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v169 = &v161 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v170 = &v161 - v11;
  MEMORY[0x28223BE20](v10);
  v165 = &v161 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v162 = &v161 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v168 = &v161 - v16;
  v17 = sub_225CCCEA4();
  v18 = *(v17 - 8);
  v19 = MEMORY[0x28223BE20](v17);
  v167 = &v161 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v161 - v22;
  MEMORY[0x28223BE20](v21);
  v25 = &v161 - v24;
  sub_225CCCDD4();
  sub_225CCCE04();
  v164 = v18;
  v26 = *(v18 + 8);
  v26(v23, v17);
  sub_225CCCE54();
  sub_225CCCDC4();

  v173 = a5;
  sub_225CCCE14();
  v172 = v17;
  v171 = v26;
  v26(v23, v17);
  LOBYTE(v178[0]) = 0;
  v27 = objc_opt_self();
  v28 = &off_278575000;
  v29 = [v27 defaultManager];
  v176 = v25;
  sub_225CCCE54();
  v30 = sub_225CCE444();

  v31 = [v29 fileExistsAtPath:v30 isDirectory:v178];

  if (v31)
  {
    if ((v178[0] & 1) == 0)
    {
      v179 = 0;
      v180 = 0xE000000000000000;
      sub_225CCF204();

      v179 = 0xD000000000000014;
      v180 = 0x8000000225D190A0;
      v91 = sub_225CCCE54();
      MEMORY[0x22AA6CE70](v91);

      MEMORY[0x22AA6CE70](0xD000000000000019, 0x8000000225D190C0);
      v92 = v180;
      v175 = v179;
      v174 = 0x8000000225D18FB0;
      v170 = 0x8000000225D19040;
      v93 = MEMORY[0x277D84F90];
      v94 = sub_225B2C248(MEMORY[0x277D84F90]);
      sub_2259CB5EC();
      v90 = swift_allocError();
      v96 = v95;
      v97 = sub_225CCE954();
      v98 = *(v97 - 8);
      v99 = v168;
      (*(v98 + 56))(v168, 1, 1, v97);
      LODWORD(v97) = (*(v98 + 48))(v99, 1, v97);
      sub_2259CB640(v99, &unk_27D73B050, &unk_225CD3AD0);
      if (v97)
      {
        v100 = 229;
      }

      else
      {
        v100 = 23;
      }

      v101 = sub_225B2C374(v93);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v179 = v101;
      sub_225B2C4A0(v94, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v179);

      v103 = v179;
      v104 = sub_225B29AA0(0, 1, 1, v93);
      v106 = *(v104 + 2);
      v105 = *(v104 + 3);
      if (v106 >= v105 >> 1)
      {
        v104 = sub_225B29AA0((v105 > 1), v106 + 1, 1, v104);
      }

      *(v104 + 2) = v106 + 1;
      v107 = &v104[56 * v106];
      v108 = v175;
      *(v107 + 4) = v175;
      *(v107 + 5) = v92;
      v109 = v174;
      *(v107 + 6) = 0xD000000000000028;
      *(v107 + 7) = v109;
      v110 = v170;
      *(v107 + 8) = 0xD00000000000002DLL;
      *(v107 + 9) = v110;
      *(v107 + 10) = 131;
      *v96 = v100;
      *(v96 + 8) = v104;
      *(v96 + 16) = v108;
      *(v96 + 24) = v92;
      *(v96 + 32) = v103;
      *(v96 + 40) = 0;
LABEL_39:
      swift_willThrow();
      v175 = 0;
      v44 = v173;
      goto LABEL_40;
    }

    if (qword_28105B910 != -1)
    {
      swift_once();
    }

    v32 = off_28105B918;
    v33 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
    v34 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((off_28105B918 + v34));
    v35 = v174;
    v36 = &v32[v33];
    v37 = v165;
    v38 = v175;
    v163 = v174[2];
    v163(v165, v36, v175);
    v39 = &v32[v34];
    v40 = v37;
    os_unfair_lock_unlock(v39);
    v41 = sub_225CCD934();
    v42 = sub_225CCED04();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&dword_2259A7000, v41, v42, "uploads path exists", v43, 2u);
      MEMORY[0x22AA6F950](v43, -1, -1);
    }

    v170 = v35[1];
    (v170)(v40, v38);
    v44 = v173;
    v28 = &off_278575000;
  }

  else
  {
    if (qword_28105B910 != -1)
    {
      swift_once();
    }

    v32 = off_28105B918;
    v45 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
    v46 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((off_28105B918 + v46));
    v47 = v174;
    v163 = v174[2];
    v163(v170, &v32[v45], v175);
    os_unfair_lock_unlock(&v32[v46]);
    v48 = sub_225CCD934();
    v49 = sub_225CCED04();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      *v50 = 0;
      _os_log_impl(&dword_2259A7000, v48, v49, "uploads path doesn't exist. Creating the directory...", v50, 2u);
      MEMORY[0x22AA6F950](v50, -1, -1);
    }

    v51 = v170;
    v170 = v47[1];
    (v170)(v51, v175);
    v52 = [v27 defaultManager];
    sub_225CCCE54();
    v53 = sub_225CCE444();

    v179 = 0;
    v54 = [v52 createDirectoryAtPath:v53 withIntermediateDirectories:1 attributes:0 error:&v179];

    v55 = v179;
    v44 = v173;
    if (!v54)
    {
      goto LABEL_26;
    }

    v56 = v179;
    v38 = v175;
  }

  v57 = [v27 v28[176]];
  sub_225CCCE54();
  v58 = sub_225CCE444();

  v59 = [v57 fileExistsAtPath_];

  if (!v59)
  {
LABEL_21:
    v69 = [v27 v28[176]];
    sub_225CCCE54();
    v70 = sub_225CCE444();

    v71 = [v69 createFileAtPath:v70 contents:0 attributes:0];

    v72 = v167;
    if (v71)
    {
      if (qword_28105B910 != -1)
      {
        swift_once();
      }

      v73 = *(*v32 + *MEMORY[0x277D841D0] + 16);
      v74 = (*(*v32 + 48) + 3) & 0x1FFFFFFFCLL;
      os_unfair_lock_lock(&v32[v74]);
      v75 = v166;
      v163(v166, &v32[v73], v38);
      os_unfair_lock_unlock(&v32[v74]);
      v76 = v172;
      (*(v164 + 16))(v72, v44, v172);
      v77 = sub_225CCD934();
      v78 = sub_225CCED04();
      if (os_log_type_enabled(v77, v78))
      {
        v79 = swift_slowAlloc();
        v80 = v72;
        v81 = swift_slowAlloc();
        v179 = v81;
        *v79 = 136315138;
        v82 = sub_225CCCE54();
        v84 = v83;
        v85 = v80;
        v86 = v172;
        v87 = v171;
        v171(v85, v172);
        v88 = sub_2259BE198(v82, v84, &v179);

        *(v79 + 4) = v88;
        _os_log_impl(&dword_2259A7000, v77, v78, "Successfully created temporary file at %s. Will start encrypting data & copying from FileHandle", v79, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v81);
        MEMORY[0x22AA6F950](v81, -1, -1);
        MEMORY[0x22AA6F950](v79, -1, -1);

        (v170)(v166, v175);
        v87(v176, v86);
      }

      else
      {

        v160 = v171;
        v171(v72, v76);
        (v170)(v75, v38);
        v160(v176, v76);
      }

      return;
    }

    v175 = 0x8000000225D18FB0;
    v174 = 0x8000000225D19040;
    v111 = MEMORY[0x277D84F90];
    v112 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v90 = swift_allocError();
    v114 = v113;
    v115 = sub_225CCE954();
    v116 = *(v115 - 8);
    v117 = v168;
    (*(v116 + 56))(v168, 1, 1, v115);
    LODWORD(v115) = (*(v116 + 48))(v117, 1, v115);
    sub_2259CB640(v117, &unk_27D73B050, &unk_225CD3AD0);
    if (v115)
    {
      v118 = 571;
    }

    else
    {
      v118 = 23;
    }

    v119 = sub_225B2C374(v111);
    v120 = swift_isUniquelyReferenced_nonNull_native();
    v179 = v119;
    sub_225B2C4A0(v112, sub_225B2AC40, 0, v120, &v179);

    v121 = v179;
    v122 = sub_225B29AA0(0, 1, 1, v111);
    v124 = *(v122 + 2);
    v123 = *(v122 + 3);
    if (v124 >= v123 >> 1)
    {
      v122 = sub_225B29AA0((v123 > 1), v124 + 1, 1, v122);
    }

    *(v122 + 2) = v124 + 1;
    v125 = &v122[56 * v124];
    *(v125 + 4) = 0xD00000000000002BLL;
    *(v125 + 5) = 0x8000000225D19070;
    v126 = v175;
    *(v125 + 6) = 0xD000000000000028;
    *(v125 + 7) = v126;
    v127 = v174;
    *(v125 + 8) = 0xD00000000000002DLL;
    *(v125 + 9) = v127;
    *(v125 + 10) = 147;
    *v114 = v118;
    *(v114 + 8) = v122;
    *(v114 + 16) = 0xD00000000000002BLL;
    *(v114 + 24) = 0x8000000225D19070;
    *(v114 + 32) = v121;
    *(v114 + 40) = 0;
    goto LABEL_39;
  }

  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v60 = *(*v32 + *MEMORY[0x277D841D0] + 16);
  v61 = (*(*v32 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock(&v32[v61]);
  v163(v169, &v32[v60], v38);
  os_unfair_lock_unlock(&v32[v61]);
  v62 = sub_225CCD934();
  v63 = sub_225CCED04();
  if (os_log_type_enabled(v62, v63))
  {
    v64 = swift_slowAlloc();
    *v64 = 0;
    _os_log_impl(&dword_2259A7000, v62, v63, "coreidvd temporary liveness video file exists. Deleting to copy new liveness video.", v64, 2u);
    MEMORY[0x22AA6F950](v64, -1, -1);
  }

  (v170)(v169, v38);
  v65 = [v27 v28[176]];
  v44 = v173;
  sub_225CCCE54();
  v66 = sub_225CCE444();

  v179 = 0;
  v67 = [v65 removeItemAtPath:v66 error:&v179];

  v55 = v179;
  if (v67)
  {
    v68 = v179;
    v38 = v175;
    goto LABEL_21;
  }

LABEL_26:
  v89 = v55;
  v90 = sub_225CCCCC4();

  swift_willThrow();
  v175 = 0;
LABEL_40:
  v128 = v44;
  v129 = v172;
  v130 = v171;
  v171(v128, v172);
  v130(v176, v129);
  v176 = " internal diagnostics file";
  v131 = v90;
  v132 = sub_225B2C248(MEMORY[0x277D84F90]);
  sub_2259CB5EC();
  v177 = swift_allocError();
  v134 = v133;
  swift_getErrorValue();
  v135 = v178[2];
  v136 = v90;
  sub_225B21FAC(v135, &v179);

  v137 = v180;
  if (v180)
  {
    v174 = v179;
    v173 = v181;
    v172 = v182;
    v139 = v183;
    v138 = v184;
  }

  else
  {
    v179 = v90;
    v140 = v90;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48, &qword_225CD75F0);
    sub_2259E4540();
    if (swift_dynamicCast())
    {
      v141 = v178[0];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10, &unk_225CD4660);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_225CD30F0;
      *(inited + 32) = 20;
      v143 = [v141 code];
      v144 = MEMORY[0x277D83BF8];
      *(inited + 64) = MEMORY[0x277D83B88];
      *(inited + 72) = v144;
      *(inited + 40) = v143;
      v139 = sub_225B2C374(inited);
      swift_setDeallocating();
      sub_2259CB640(inited + 32, &qword_27D73B060, &unk_225CD3AE0);

      v145 = v90;
      v174 = 0;
      v173 = 0;
      v172 = 0;
      v137 = MEMORY[0x277D84F90];
    }

    else
    {
      v179 = v90;
      v146 = v90;
      v147 = sub_225CCE954();
      v148 = v162;
      v149 = swift_dynamicCast();
      v150 = *(v147 - 8);
      (*(v150 + 56))(v148, v149 ^ 1u, 1, v147);
      LODWORD(v150) = (*(v150 + 48))(v148, 1, v147);
      sub_2259CB640(v148, &unk_27D73B050, &unk_225CD3AD0);
      if (v150)
      {
        v151 = 0;
      }

      else
      {
        v151 = 23;
      }

      v174 = v151;
      v137 = MEMORY[0x277D84F90];
      v139 = sub_225B2C374(MEMORY[0x277D84F90]);
      v152 = v90;
      v173 = 0;
      v172 = 0;
    }

    v138 = v90;
  }

  v153 = v176 | 0x8000000000000000;
  v154 = swift_isUniquelyReferenced_nonNull_native();
  v179 = v139;
  sub_225B2C4A0(v132, sub_225B2AC40, 0, v154, &v179);

  v155 = v179;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v137 = sub_225B29AA0(0, *(v137 + 2) + 1, 1, v137);
  }

  v157 = *(v137 + 2);
  v156 = *(v137 + 3);
  if (v157 >= v156 >> 1)
  {
    v137 = sub_225B29AA0((v156 > 1), v157 + 1, 1, v137);
  }

  *(v137 + 2) = v157 + 1;
  v158 = &v137[56 * v157];
  *(v158 + 4) = 0;
  *(v158 + 5) = 0;
  *(v158 + 6) = 0xD000000000000028;
  *(v158 + 7) = 0x8000000225D18FB0;
  *(v158 + 8) = 0xD00000000000002DLL;
  *(v158 + 9) = v153;
  *(v158 + 10) = 153;
  *v134 = v174;
  v159 = v173;
  *(v134 + 8) = v137;
  *(v134 + 16) = v159;
  *(v134 + 24) = v172;
  *(v134 + 32) = v155;
  *(v134 + 40) = v138;
  swift_willThrow();
}

void sub_225A36438(uint64_t a1@<X0>, char *a2@<X1>, unint64_t a3@<X8>)
{
  v104 = a2;
  v103 = a1;
  v114 = *MEMORY[0x277D85DE8];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v97 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v97 - v9;
  v11 = sub_225CCCEA4();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v97 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v97 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v97 - v20;
  MEMORY[0x28223BE20](v19);
  v105 = &v97 - v22;
  if (!isInternalBuild()())
  {
    goto LABEL_10;
  }

  v100 = a3;
  v99 = v10;
  v102 = v15;
  v98 = v8;
  v23 = objc_opt_self();
  v24 = [v23 defaultManager];
  v25 = [v24 URLsForDirectory:13 inDomains:1];

  v26 = sub_225CCE814();
  if (!*(v26 + 16))
  {

    a3 = v100;
LABEL_10:
    (*(v12 + 56))(a3, 1, 1, v11);
    return;
  }

  v101 = v3;
  (*(v12 + 16))(v21, v26 + ((*(v12 + 80) + 32) & ~*(v12 + 80)), v11);

  v27 = v105;
  v97 = *(v12 + 32);
  v97(v105, v21, v11);
  sub_225CCCE14();
  v28 = [v23 defaultManager];
  v29 = sub_225CCCDF4();
  v108 = 0;
  v30 = [v28 createDirectoryAtURL:v29 withIntermediateDirectories:1 attributes:0 error:&v108];

  if (v30)
  {
    v31 = v108;
    sub_225CCCE14();
    v32 = [v23 defaultManager];
    sub_225CCCE54();
    v33 = sub_225CCE444();

    v34 = [v32 fileExistsAtPath_];

    if (!v34)
    {
LABEL_7:
      v39 = [v23 defaultManager];
      v40 = v102;
      sub_225CCCE54();
      v41 = sub_225CCE444();

      v42 = [v39 createFileAtPath:v41 contents:0 attributes:0];

      if (v42)
      {
        v43 = v40;
        v44 = *(v12 + 8);
        v44(v18, v11);
        v44(v105, v11);
        v45 = v100;
        v97(v100, v43, v11);
        (*(v12 + 56))(v45, 0, 1, v11);
        return;
      }

      v104 = 0x8000000225D19010;
      v103 = 0x8000000225D18FB0;
      v100 = 0x8000000225D18FE0;
      v50 = sub_225B2C248(MEMORY[0x277D84F90]);
      sub_2259CB5EC();
      v47 = swift_allocError();
      v52 = v51;
      v53 = sub_225CCE954();
      v54 = *(v53 - 8);
      v55 = v99;
      (*(v54 + 56))(v99, 1, 1, v53);
      LODWORD(v53) = (*(v54 + 48))(v55, 1, v53);
      sub_2259CB640(v55, &unk_27D73B050, &unk_225CD3AD0);
      if (v53)
      {
        v56 = 575;
      }

      else
      {
        v56 = 23;
      }

      LODWORD(v99) = v56;
      v57 = MEMORY[0x277D84F90];
      v58 = sub_225B2C374(MEMORY[0x277D84F90]);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v108 = v58;
      sub_225B2C4A0(v50, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v108);

      v60 = v108;
      v61 = sub_225B29AA0(0, 1, 1, v57);
      v63 = *(v61 + 2);
      v62 = *(v61 + 3);
      if (v63 >= v62 >> 1)
      {
        v61 = sub_225B29AA0((v62 > 1), v63 + 1, 1, v61);
      }

      v64 = v105;
      *(v61 + 2) = v63 + 1;
      v65 = &v61[56 * v63];
      v66 = v104;
      *(v65 + 4) = 0xD00000000000002ALL;
      *(v65 + 5) = v66;
      *(v65 + 6) = 0xD000000000000028;
      *(v65 + 7) = v103;
      *(v65 + 8) = 0xD000000000000027;
      *(v65 + 9) = v100;
      *(v65 + 10) = 171;
      *v52 = v99;
      *(v52 + 8) = v61;
      *(v52 + 16) = 0xD00000000000002ALL;
      *(v52 + 24) = v66;
      *(v52 + 32) = v60;
      *(v52 + 40) = 0;
      swift_willThrow();
      v48 = *(v12 + 8);
      v48(v102, v11);
      v48(v18, v11);
      v49 = v64;
      goto LABEL_19;
    }

    v35 = [v23 defaultManager];
    v36 = sub_225CCCDF4();
    v108 = 0;
    v37 = [v35 removeItemAtURL:v36 error:&v108];

    if (v37)
    {
      v38 = v108;
      goto LABEL_7;
    }

    v67 = v108;
    v47 = sub_225CCCCC4();

    swift_willThrow();
    v48 = *(v12 + 8);
    v48(v102, v11);
    v48(v18, v11);
    v49 = v105;
  }

  else
  {
    v46 = v108;
    v47 = sub_225CCCCC4();

    swift_willThrow();
    v48 = *(v12 + 8);
    v48(v18, v11);
    v49 = v27;
  }

LABEL_19:
  v48(v49, v11);
  v104 = "PFileUploadCryptor.swift";
  v68 = v47;
  v105 = sub_225B2C248(MEMORY[0x277D84F90]);
  sub_2259CB5EC();
  v69 = swift_allocError();
  v71 = v70;
  swift_getErrorValue();
  v72 = v107;
  v73 = v47;
  sub_225B21FAC(v72, &v108);

  v74 = v109;
  v101 = v69;
  if (v109)
  {
    v103 = v108;
    v102 = v110;
    v100 = v111;
    v75 = v112;
    v76 = v113;
  }

  else
  {
    v108 = v47;
    v77 = v47;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48, &qword_225CD75F0);
    sub_2259E4540();
    if (swift_dynamicCast())
    {
      v78 = v106;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10, &unk_225CD4660);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_225CD30F0;
      *(inited + 32) = 20;
      v80 = [v78 code];
      v81 = MEMORY[0x277D83BF8];
      *(inited + 64) = MEMORY[0x277D83B88];
      *(inited + 72) = v81;
      *(inited + 40) = v80;
      v75 = sub_225B2C374(inited);
      swift_setDeallocating();
      sub_2259CB640(inited + 32, &qword_27D73B060, &unk_225CD3AE0);

      v82 = v47;
      v103 = 0;
      v102 = 0;
      v100 = 0;
      v74 = MEMORY[0x277D84F90];
    }

    else
    {
      v108 = v47;
      v83 = v47;
      v84 = sub_225CCE954();
      v85 = v98;
      v86 = swift_dynamicCast();
      v87 = *(v84 - 8);
      (*(v87 + 56))(v85, v86 ^ 1u, 1, v84);
      LODWORD(v87) = (*(v87 + 48))(v85, 1, v84);
      sub_2259CB640(v85, &unk_27D73B050, &unk_225CD3AD0);
      if (v87)
      {
        v88 = 0;
      }

      else
      {
        v88 = 23;
      }

      v103 = v88;
      v74 = MEMORY[0x277D84F90];
      v75 = sub_225B2C374(MEMORY[0x277D84F90]);
      v89 = v47;
      v102 = 0;
      v100 = 0;
    }

    v76 = v47;
  }

  v90 = v104 | 0x8000000000000000;
  v91 = swift_isUniquelyReferenced_nonNull_native();
  v108 = v75;
  sub_225B2C4A0(v105, sub_225B2AC40, 0, v91, &v108);

  v92 = v108;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v74 = sub_225B29AA0(0, *(v74 + 2) + 1, 1, v74);
  }

  v94 = *(v74 + 2);
  v93 = *(v74 + 3);
  if (v94 >= v93 >> 1)
  {
    v74 = sub_225B29AA0((v93 > 1), v94 + 1, 1, v74);
  }

  *(v74 + 2) = v94 + 1;
  v95 = &v74[56 * v94];
  *(v95 + 4) = 0;
  *(v95 + 5) = 0;
  *(v95 + 6) = 0xD000000000000028;
  *(v95 + 7) = 0x8000000225D18FB0;
  *(v95 + 8) = 0xD000000000000027;
  *(v95 + 9) = v90;
  *(v95 + 10) = 176;
  *v71 = v103;
  v96 = v102;
  *(v71 + 8) = v74;
  *(v71 + 16) = v96;
  *(v71 + 24) = v100;
  *(v71 + 32) = v92;
  *(v71 + 40) = v76;
  swift_willThrow();
}