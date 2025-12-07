void sub_2297F64D4(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = sub_22A4DD07C();
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v21 = &v48 - v20;
  if (a2)
  {
    v49 = v19;
    sub_2296F8604();
    v22 = a3;
    v23 = a2;
    v24 = sub_22A4DD05C();
    v25 = sub_22A4DDCEC();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *v26 = 136315394;
      v50 = 91;
      v51 = 0xE100000000000000;
      v52 = v28;
      v29 = [v22 logIdentifier];
      v30 = sub_22A4DD5EC();
      v48 = v14;
      v32 = v31;

      MEMORY[0x22AAD08C0](v30, v32);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v33 = sub_2295A3E30(v50, v51, &v52);

      *(v26 + 4) = v33;
      *(v26 + 12) = 2112;
      v34 = a2;
      v35 = _swift_stdlib_bridgeErrorToNSError();
      *(v26 + 14) = v35;
      *v27 = v35;
      _os_log_impl(&dword_229538000, v24, v25, "%s Error getting attribute changed message payload, returning. error=%@", v26, 0x16u);
      sub_22953EAE4(v27, &qword_27D87D7D0, &unk_22A578D90);
      MEMORY[0x22AAD4E50](v27, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v28);
      MEMORY[0x22AAD4E50](v28, -1, -1);
      MEMORY[0x22AAD4E50](v26, -1, -1);

      (*(v49 + 8))(v21, v48);
    }

    else
    {

      (*(v49 + 8))(v21, v14);
    }
  }

  else if (a1)
  {
    MEMORY[0x28223BE20](v18);
    *(&v48 - 6) = a5;
    *(&v48 - 5) = a1;
    *(&v48 - 4) = a3;
    *(&v48 - 3) = a6;
    *(&v48 - 2) = a7;
    sub_229839B44(sub_2298005BC, (&v48 - 8), a4);
  }

  else
  {
    v36 = v19;
    sub_2296F8604();
    v37 = a3;
    v38 = sub_22A4DD05C();
    v39 = sub_22A4DDCCC();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      *v40 = 136315138;
      v50 = 91;
      v51 = 0xE100000000000000;
      v52 = v41;
      v42 = [v37 logIdentifier];
      v48 = v14;
      v43 = v42;
      v44 = sub_22A4DD5EC();
      v46 = v45;

      MEMORY[0x22AAD08C0](v44, v46);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v47 = sub_2295A3E30(v50, v51, &v52);

      *(v40 + 4) = v47;
      _os_log_impl(&dword_229538000, v38, v39, "%s Not sending attribute changed message, nil payload, returning.", v40, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v41);
      MEMORY[0x22AAD4E50](v41, -1, -1);
      MEMORY[0x22AAD4E50](v40, -1, -1);

      (*(v36 + 8))(v17, v48);
    }

    else
    {

      (*(v36 + 8))(v17, v14);
    }
  }
}

void sub_2297F6978(void **a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6)
{
  v95 = a5;
  v89 = a6;
  v90 = a4;
  v9 = sub_22A4DB7DC();
  v92 = *(v9 - 8);
  v93 = v9;
  v10 = MEMORY[0x28223BE20](v9);
  v87 = &v82 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v82 - v12;
  v94 = sub_22A4DD07C();
  v91 = *(v94 - 8);
  v14 = MEMORY[0x28223BE20](v94);
  v88 = &v82 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v82 - v16;
  v18 = *a1;
  v19 = objc_allocWithZone(HMDRemoteDeviceMessageDestination);
  v20 = sub_22A4DB77C();
  v96 = [v19 initWithTarget:v20 device:v18];

  if (a3)
  {
    v97 = 0;
    v21 = @"HMDAccessoryMatterAttributeMessageName";
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
    v22 = a3;
    sub_22A4DD48C();
    if (v97)
    {
      v23 = v13;
      v24 = v96;
      v25 = v96;
      v26 = sub_22A4DD47C();
      v27 = v24;
      v13 = v23;

      goto LABEL_6;
    }
  }

  else
  {
    v22 = 0;
    v28 = @"HMDAccessoryMatterAttributeMessageName";
  }

  v27 = v96;
  v29 = v96;
  v26 = 0;
LABEL_6:
  v30 = [objc_allocWithZone(HMDRemoteMessage) initWithName:@"HMDAccessoryMatterAttributeMessageName" destination:v27 payload:v26];

  if ([v18 isCurrentDevice])
  {
    v93 = v30;
    sub_2296F8604();
    v31 = v22;
    v32 = v22;
    v33 = v90;
    v34 = sub_22A4DD05C();
    v35 = sub_22A4DDCCC();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v89 = v31;
      v37 = v36;
      v90 = swift_slowAlloc();
      v92 = swift_slowAlloc();
      v99 = v92;
      *v37 = 136315394;
      v97 = 91;
      v98 = 0xE100000000000000;
      v38 = [v33 logIdentifier];
      v39 = sub_22A4DD5EC();
      v40 = v91;
      v41 = v39;
      v95 = v33;
      v43 = v42;

      MEMORY[0x22AAD08C0](v41, v43);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v44 = sub_2295A3E30(v97, v98, &v99);

      *(v37 + 4) = v44;
      v33 = v95;
      *(v37 + 12) = 2112;
      *(v37 + 14) = v32;
      v45 = v90;
      *v90 = v89;
      v46 = v32;
      _os_log_impl(&dword_229538000, v34, v35, "%s Calling handleMatterAttributeMessage (Showing notification on THIS Apple TV) with payload=%@", v37, 0x16u);
      sub_22953EAE4(v45, &qword_27D87D7D0, &unk_22A578D90);
      MEMORY[0x22AAD4E50](v45, -1, -1);
      v47 = v92;
      __swift_destroy_boxed_opaque_existential_0(v92);
      MEMORY[0x22AAD4E50](v47, -1, -1);
      MEMORY[0x22AAD4E50](v37, -1, -1);

      (*(v40 + 8))(v17, v94);
    }

    else
    {

      (*(v91 + 8))(v17, v94);
    }

    v81 = &selRef_handleMatterAttributeMessage_;
    v27 = v96;
    v30 = v93;
  }

  else
  {
    v48 = v88;
    sub_2296F8604();
    (v92[2])(v13, a2, v93);
    v89 = v22;
    v49 = v22;
    v50 = v18;
    v51 = v90;
    v52 = sub_22A4DD05C();
    v53 = sub_22A4DDCCC();
    v90 = v49;

    v86 = v53;
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v84 = swift_slowAlloc();
      v85 = swift_slowAlloc();
      v99 = v85;
      *v54 = 136315906;
      v97 = 91;
      v98 = 0xE100000000000000;
      v55 = [v51 logIdentifier];
      v83 = v52;
      v56 = v55;
      v57 = sub_22A4DD5EC();
      v59 = v58;

      MEMORY[0x22AAD08C0](v57, v59);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v60 = sub_2295A3E30(v97, v98, &v99);

      *(v54 + 4) = v60;
      *(v54 + 12) = 2080;
      sub_2297FFF94(&qword_281403860, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v61 = v93;
      v62 = sub_22A4DE5CC();
      v64 = v63;
      v65 = v13;
      v66 = v92[1];
      v66(v65, v61);
      v67 = sub_2295A3E30(v62, v64, &v99);

      *(v54 + 14) = v67;
      *(v54 + 22) = 2080;
      v68 = [v50 identifier];
      v69 = v87;
      sub_22A4DB79C();

      v70 = sub_22A4DE5CC();
      v72 = v71;
      v66(v69, v61);
      v73 = sub_2295A3E30(v70, v72, &v99);

      *(v54 + 24) = v73;
      *(v54 + 32) = 2112;
      v75 = v89;
      v74 = v90;
      *(v54 + 34) = v90;
      v76 = v84;
      *v84 = v75;
      v77 = v74;
      v78 = v83;
      _os_log_impl(&dword_229538000, v83, v86, "%s Sending bulletin attribute message to target=%s for device=%s with payload=%@", v54, 0x2Au);
      sub_22953EAE4(v76, &qword_27D87D7D0, &unk_22A578D90);
      MEMORY[0x22AAD4E50](v76, -1, -1);
      v79 = v85;
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v79, -1, -1);
      v80 = v54;
      v27 = v96;
      MEMORY[0x22AAD4E50](v80, -1, -1);

      (*(v91 + 8))(v88, v94);
    }

    else
    {

      (v92[1])(v13, v93);
      (*(v91 + 8))(v48, v94);
    }

    v81 = &selRef_sendMessage_;
    v33 = v95;
  }

  [v33 *v81];
}

void sub_2297F71C0(void *a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, uint64_t a7, uint64_t a8)
{
  v15 = sub_22A4DD07C();
  v57 = *(v15 - 8);
  v58 = v15;
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v55 - v19;
  if (a1)
  {
    if ([a1 value])
    {
      sub_22A4DE01C();
      swift_unknownObjectRelease();
    }

    else
    {
      v64 = 0u;
      v65 = 0u;
    }

    aBlock = v64;
    v60 = v65;
    v56 = a5;
    if (*(&v65 + 1))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8815F8, &qword_22A5845A0);
      if (swift_dynamicCast())
      {
        v33 = v64;
        v34 = MEMORY[0x277D84F90];
        *&v64 = MEMORY[0x277D84F90];
        if (v33)
        {
          v35 = a3;
          sub_229800018(v33, v35, &v64, &qword_27D881600, 0x277CD54D0);

          v34 = v64;
        }

        goto LABEL_14;
      }
    }

    else
    {
      sub_22953EAE4(&aBlock, &unk_27D87DE60, &unk_22A57A960);
    }

    v34 = MEMORY[0x277D84F90];
    *&v64 = MEMORY[0x277D84F90];
LABEL_14:
    v36 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedShort_];
    *&aBlock = v36;
    MEMORY[0x28223BE20](v36);
    *(&v55 - 2) = &aBlock;
    v37 = sub_22986A7C8(sub_2298003A8, (&v55 - 4), v34);

    if (v37)
    {
      v38 = [a6 endpointID];
      v39 = sub_2297EF658(v38);

      v40 = swift_allocObject();
      v40[2] = a4;
      v40[3] = a7;
      v41 = v56;
      v40[4] = v56;
      v40[5] = a8;
      v61 = sub_2298003C8;
      v62 = v40;
      *&aBlock = MEMORY[0x277D85DD0];
      *(&aBlock + 1) = 1107296256;
      *&v60 = sub_229800B04;
      *(&v60 + 1) = &block_descriptor_70;
      v42 = _Block_copy(&aBlock);
      v43 = v41;
      v44 = a4;

      [v39 getResultWithCompletion_];
      _Block_release(v42);
    }

    else
    {
      sub_2296F8604();
      v45 = a4;
      v46 = sub_22A4DD05C();
      v47 = sub_22A4DDCCC();

      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        v49 = swift_slowAlloc();
        v63 = v49;
        *v48 = 136315138;
        *&aBlock = 91;
        *(&aBlock + 1) = 0xE100000000000000;
        v50 = [v45 logIdentifier];
        v51 = sub_22A4DD5EC();
        v53 = v52;

        MEMORY[0x22AAD08C0](v51, v53);

        MEMORY[0x22AAD08C0](93, 0xE100000000000000);
        v54 = sub_2295A3E30(aBlock, *(&aBlock + 1), &v63);

        *(v48 + 4) = v54;
        _os_log_impl(&dword_229538000, v46, v47, "%s RVC is not cleaning (probably mapping). Not showing cleaning started notification", v48, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v49);
        MEMORY[0x22AAD4E50](v49, -1, -1);
        MEMORY[0x22AAD4E50](v48, -1, -1);
      }

      (*(v57 + 8))(v20, v58);
      [v56 fulfillWithNoValue];
    }

    return;
  }

  sub_2296F8604();
  v21 = a4;
  v22 = sub_22A4DD05C();
  v23 = sub_22A4DDCEC();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *&v64 = v25;
    *v24 = 136315138;
    *&aBlock = 91;
    *(&aBlock + 1) = 0xE100000000000000;
    v26 = [v21 logIdentifier];
    v27 = a5;
    v28 = sub_22A4DD5EC();
    v30 = v29;

    v31 = v28;
    a5 = v27;
    MEMORY[0x22AAD08C0](v31, v30);

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v32 = sub_2295A3E30(aBlock, *(&aBlock + 1), &v64);

    *(v24 + 4) = v32;
    _os_log_impl(&dword_229538000, v22, v23, "%s Reading supported run modes path returned nil value", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v25);
    MEMORY[0x22AAD4E50](v25, -1, -1);
    MEMORY[0x22AAD4E50](v24, -1, -1);
  }

  (*(v57 + 8))(v18, v58);
  [a5 fulfillWithNoValue];
}

void sub_2297F77FC(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v10 = sub_22A4DD07C();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v64 - v15;
  if (a2)
  {
    sub_2296F8604();
    v17 = a3;
    v18 = a2;
    v19 = sub_22A4DD05C();
    v20 = sub_22A4DDCEC();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v69 = v11;
      v22 = v21;
      v67 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v68 = v23;
      *v22 = 136315394;
      v71 = v23;
      v72 = 91;
      v73 = 0xE100000000000000;
      v24 = [v17 logIdentifier];
      v25 = sub_22A4DD5EC();
      v70 = v10;
      v26 = v25;
      v66 = v20;
      v27 = a1;
      v28 = a4;
      v29 = a5;
      v31 = v30;

      v65 = v19;
      MEMORY[0x22AAD08C0](v26, v31);
      a5 = v29;
      a4 = v28;
      a1 = v27;

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v32 = sub_2295A3E30(v72, v73, &v71);

      *(v22 + 4) = v32;
      *(v22 + 12) = 2112;
      v33 = a2;
      v34 = _swift_stdlib_bridgeErrorToNSError();
      *(v22 + 14) = v34;
      v35 = v67;
      *v67 = v34;
      v36 = v65;
      _os_log_impl(&dword_229538000, v65, v66, "%s Error getting RvcCleaningPayload. error=%@", v22, 0x16u);
      sub_22953EAE4(v35, &qword_27D87D7D0, &unk_22A578D90);
      MEMORY[0x22AAD4E50](v35, -1, -1);
      v37 = v68;
      __swift_destroy_boxed_opaque_existential_0(v68);
      MEMORY[0x22AAD4E50](v37, -1, -1);
      MEMORY[0x22AAD4E50](v22, -1, -1);

      (v69[1])(v16, v70);
      if (!v27)
      {
        goto LABEL_12;
      }
    }

    else
    {

      (*(v11 + 8))(v16, v10);
      if (!a1)
      {
        goto LABEL_12;
      }
    }
  }

  else if (!a1)
  {
    sub_2296F8604();
    v38 = a3;
    v39 = sub_22A4DD05C();
    v40 = sub_22A4DDCEC();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v70 = v10;
      v42 = v41;
      v43 = swift_slowAlloc();
      v69 = v43;
      *v42 = 136315138;
      v71 = v43;
      v72 = 91;
      v73 = 0xE100000000000000;
      v44 = [v38 logIdentifier];
      v45 = sub_22A4DD5EC();
      v46 = v11;
      v48 = v47;

      MEMORY[0x22AAD08C0](v45, v48);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v49 = sub_2295A3E30(v72, v73, &v71);

      *(v42 + 4) = v49;
      _os_log_impl(&dword_229538000, v39, v40, "%s Nil RvcCleaningPayload", v42, 0xCu);
      v50 = v69;
      __swift_destroy_boxed_opaque_existential_0(v69);
      MEMORY[0x22AAD4E50](v50, -1, -1);
      MEMORY[0x22AAD4E50](v42, -1, -1);

      (*(v46 + 8))(v14, v70);
    }

    else
    {

      (*(v11 + 8))(v14, v10);
    }

LABEL_12:

    if (!a5)
    {
      goto LABEL_13;
    }

LABEL_10:
    sub_2296F77EC(a4);

    v61 = objc_allocWithZone(MEMORY[0x277CBEAC0]);
    v62 = sub_22A4DD47C();

    v63 = [v61 initWithDictionary_];

    [a5 fulfillWithValue_];
    return;
  }

  v51 = sub_22A4DD5EC();
  v53 = v52;
  v71 = a1;
  sub_229562F68(0, &qword_27D880100, 0x277CBEAC0);

  v54 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
  sub_22A4DBA0C();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v71 = a4;
  v56 = v74;
  v57 = __swift_mutable_project_boxed_opaque_existential_0(&v72, v74);
  MEMORY[0x28223BE20](v57);
  v59 = &v64 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v60 + 16))(v59);
  sub_2297FF768(v59, v51, v53, isUniquelyReferenced_nonNull_native, &v71, v56);

  __swift_destroy_boxed_opaque_existential_0(&v72);
  a4 = v71;
  if (a5)
  {
    goto LABEL_10;
  }

LABEL_13:
}

void sub_2297F7E7C(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  v16 = sub_22A4DD07C();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x28223BE20](a1);
  v20 = &v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v18)
  {
    if ([v18 value])
    {
      sub_22A4DE01C();
      swift_unknownObjectRelease();
    }

    else
    {
      v55 = 0u;
      v56 = 0u;
    }

    aBlock = v55;
    v52 = v56;
    if (*(&v56 + 1))
    {
      sub_229562F68(0, &qword_281401770, 0x277CCABB0);
      if (swift_dynamicCast())
      {
        v48 = a9;
        v49 = a10;
        v47 = v55;
        v50 = a5;
        v32 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInt_];
        v33 = [a3 endpointID];
        v34 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInt_];
        v35 = [a4 accessory];
        v36 = [objc_opt_self() PathWithAttributeID:v32 endpointID:v33 clusterID:v34 accessory:v35];

        v37 = [a4 reportFromAttributePathRead:v36 retryTimeout:1.0];
        v38 = swift_allocObject();
        v40 = v47;
        v39 = v48;
        v38[2] = v47;
        v38[3] = a4;
        v41 = v50;
        v38[4] = v50;
        v38[5] = a3;
        v38[6] = a6;
        v38[7] = a7;
        v53 = v39;
        v54 = v38;
        *&aBlock = MEMORY[0x277D85DD0];
        *(&aBlock + 1) = 1107296256;
        *&v52 = sub_229800B04;
        *(&v52 + 1) = v49;
        v42 = _Block_copy(&aBlock);
        v43 = v41;
        v44 = a3;

        v45 = v40;
        v46 = a4;

        [v37 getResultWithCompletion_];
        _Block_release(v42);
      }
    }

    else
    {
      sub_22953EAE4(&aBlock, &unk_27D87DE60, &unk_22A57A960);
    }
  }

  else
  {
    sub_2296F8604();
    v21 = a4;
    v22 = sub_22A4DD05C();
    v23 = sub_22A4DDCEC();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      *&v55 = v49;
      *v24 = 136315138;
      *&aBlock = 91;
      *(&aBlock + 1) = 0xE100000000000000;
      v25 = [v21 logIdentifier];
      v50 = a5;
      v26 = v25;
      v27 = sub_22A4DD5EC();
      v29 = v28;

      MEMORY[0x22AAD08C0](v27, v29);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v30 = sub_2295A3E30(aBlock, *(&aBlock + 1), &v55);
      a5 = v50;

      *(v24 + 4) = v30;
      _os_log_impl(&dword_229538000, v22, v23, "%s Reading current run mode path returned nil value", v24, 0xCu);
      v31 = v49;
      __swift_destroy_boxed_opaque_existential_0(v49);
      MEMORY[0x22AAD4E50](v31, -1, -1);
      MEMORY[0x22AAD4E50](v24, -1, -1);
    }

    (*(v17 + 8))(v20, v16);
    [a5 fulfillWithNoValue];
  }
}

void sub_2297F8320(void *a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, uint64_t a7, uint64_t a8)
{
  v70 = a5;
  v69 = sub_22A4DD07C();
  v14 = *(v69 - 8);
  v15 = MEMORY[0x28223BE20](v69);
  v17 = v68 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = v68 - v18;
  if (!a1)
  {
    sub_2296F8604();
    v20 = a4;
    v21 = sub_22A4DD05C();
    v22 = sub_22A4DDCEC();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *&v78 = v24;
      *v23 = 136315138;
      *&aBlock = 91;
      *(&aBlock + 1) = 0xE100000000000000;
      v25 = [v20 logIdentifier];
      v26 = sub_22A4DD5EC();
      v28 = v27;

      MEMORY[0x22AAD08C0](v26, v28);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v29 = sub_2295A3E30(aBlock, *(&aBlock + 1), &v78);

      *(v23 + 4) = v29;
      _os_log_impl(&dword_229538000, v21, v22, "%s Reading supported run modes path returned nil value", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v24);
      MEMORY[0x22AAD4E50](v24, -1, -1);
      MEMORY[0x22AAD4E50](v23, -1, -1);
    }

    (*(v14 + 8))(v17, v69);
    [v70 fulfillWithNoValue];
    return;
  }

  if ([a1 value])
  {
    sub_22A4DE01C();
    swift_unknownObjectRelease();
  }

  else
  {
    v78 = 0u;
    v79 = 0u;
  }

  aBlock = v78;
  v74 = v79;
  if (*(&v79 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8815F8, &qword_22A5845A0);
    if (swift_dynamicCast())
    {
      v30 = v78;
      v77 = MEMORY[0x277D84F90];
      if (v78)
      {
        v31 = a3;
        sub_229800018(v30, v31, &v77, &qword_27D881600, 0x277CD54D0);

        v32 = v77;
      }

      else
      {
        v32 = MEMORY[0x277D84F90];
      }

      goto LABEL_14;
    }
  }

  else
  {
    sub_22953EAE4(&aBlock, &unk_27D87DE60, &unk_22A57A960);
  }

  v32 = MEMORY[0x277D84F90];
  v77 = MEMORY[0x277D84F90];
LABEL_14:
  v33 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedShort_];
  *&aBlock = v33;
  MEMORY[0x28223BE20](v33);
  v68[-2] = &aBlock;
  v34 = sub_22986A7C8(sub_229800AAC, &v68[-4], v32);

  if ((v34 & 1) == 0)
  {
    v68[1] = v32;
    sub_2296F8604();
    v51 = a4;
    v52 = sub_22A4DD05C();
    v53 = sub_22A4DDCCC();

    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      *&v78 = v55;
      *v54 = 136315138;
      *&aBlock = 91;
      *(&aBlock + 1) = 0xE100000000000000;
      v56 = [v51 logIdentifier];
      v57 = sub_22A4DD5EC();
      v59 = v58;

      MEMORY[0x22AAD08C0](v57, v59);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v60 = sub_2295A3E30(aBlock, *(&aBlock + 1), &v78);

      *(v54 + 4) = v60;
      _os_log_impl(&dword_229538000, v52, v53, "%s RVC is not cleaning (probably mapping). Not showing cleaning paused notification", v54, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v55);
      MEMORY[0x22AAD4E50](v55, -1, -1);
      MEMORY[0x22AAD4E50](v54, -1, -1);
    }

    (*(v14 + 8))(v19, v69);
    [v70 fulfillWithNoValue];
LABEL_22:

    return;
  }

  v35 = [a4 rvcCleaningPayload];
  if (v35)
  {

    v72 = a7;
    v36 = sub_22A4DD5EC();
    v38 = v37;

    v39 = [a4 rvcCleaningPayload];
    if (v39)
    {
      v40 = v39;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
      v41 = sub_22A4DD49C();

      v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C370, &qword_22A578090);
      *(&v74 + 1) = v42;
      *&aBlock = v41;
      sub_229543C5C(&aBlock, &v78);
      LOBYTE(v40) = swift_isUniquelyReferenced_nonNull_native();
      v71 = a7;
      v43 = __swift_mutable_project_boxed_opaque_existential_0(&v78, *(&v79 + 1));
      MEMORY[0x28223BE20](v43);
      v45 = v68 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v46 + 16))(v45);
      sub_2297FF768(v45, v36, v38, v40, &v71, v42);

      __swift_destroy_boxed_opaque_existential_0(&v78);
      v72 = v71;
      v47 = v70;
      if (v70)
      {
LABEL_18:
        sub_2296F77EC(v72);

        v48 = objc_allocWithZone(MEMORY[0x277CBEAC0]);
        v49 = sub_22A4DD47C();

        v50 = [v48 initWithDictionary_];

        [v47 fulfillWithValue_];

        return;
      }
    }

    else
    {
      sub_2297FD02C(v36, v38, sub_229543C58, sub_229897D20, &aBlock);

      sub_22953EAE4(&aBlock, &unk_27D87FC20, &unk_22A578810);
      v47 = v70;
      if (v70)
      {
        goto LABEL_18;
      }
    }

    goto LABEL_22;
  }

  v61 = [a6 endpointID];
  v62 = sub_2297EF658(v61);

  v63 = swift_allocObject();
  v64 = v70;
  v63[2] = a4;
  v63[3] = v64;
  v63[4] = a7;
  v63[5] = a8;
  v75 = sub_22980045C;
  v76 = v63;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  *&v74 = sub_229800B04;
  *(&v74 + 1) = &block_descriptor_83_0;
  v65 = _Block_copy(&aBlock);
  v66 = v64;

  v67 = a4;

  [v62 getResultWithCompletion_];
  _Block_release(v65);
}

void sub_2297F8C24(id *a1, void *a2, uint64_t a3, unint64_t *a4, void *a5)
{
  v8 = *a1;
  v9 = [*a1 mode];
  LODWORD(a2) = [a2 isEqualToNumber_];

  if (a2)
  {
    v10 = [v8 modeTags];
    v11 = sub_22A4DD83C();

    v12 = v11;
    v22 = MEMORY[0x277D84F90];
    v13 = *(v11 + 16);
    if (v13)
    {
      v14 = v12 + 32;
      v15 = MEMORY[0x277D84F90];
      do
      {
        sub_2295404B0(v14, v21);
        sub_2295404B0(v21, v20);
        sub_229562F68(0, a4, a5);
        if (swift_dynamicCast())
        {
          v16 = [v19 value];

          v17 = __swift_destroy_boxed_opaque_existential_0(v21);
          if (v16)
          {
            MEMORY[0x22AAD09E0](v17);
            if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_22A4DD85C();
            }

            sub_22A4DD87C();
            v15 = v22;
          }
        }

        else
        {
          __swift_destroy_boxed_opaque_existential_0(v21);
        }

        v14 += 32;
        --v13;
      }

      while (v13);
    }

    else
    {

      v15 = MEMORY[0x277D84F90];
    }

    v18 = sub_22986A2BC(v15);

    sub_2296F1108(v18);
  }
}

void sub_2297F8E38(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v10 = sub_22A4DD07C();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v64 - v15;
  if (!a2)
  {
    if (a1)
    {
      goto LABEL_9;
    }

    sub_2296F8604();
    v38 = a3;
    v39 = sub_22A4DD05C();
    v40 = sub_22A4DDCCC();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v70 = v10;
      v42 = v41;
      v43 = swift_slowAlloc();
      v69 = v43;
      *v42 = 136315138;
      v71 = v43;
      v72 = 91;
      v73 = 0xE100000000000000;
      v44 = [v38 logIdentifier];
      v45 = sub_22A4DD5EC();
      v46 = v11;
      v48 = v47;

      MEMORY[0x22AAD08C0](v45, v48);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v49 = sub_2295A3E30(v72, v73, &v71);

      *(v42 + 4) = v49;
      _os_log_impl(&dword_229538000, v39, v40, "%s Nil RvcCleaningPayload, returning.", v42, 0xCu);
      v50 = v69;
      __swift_destroy_boxed_opaque_existential_0(v69);
      MEMORY[0x22AAD4E50](v50, -1, -1);
      MEMORY[0x22AAD4E50](v42, -1, -1);

      (*(v46 + 8))(v14, v70);
    }

    else
    {

      (*(v11 + 8))(v14, v10);
    }

    [a4 fulfillWithNoValue];
LABEL_13:

    if (a4)
    {
      goto LABEL_10;
    }

    goto LABEL_14;
  }

  sub_2296F8604();
  v17 = a3;
  v18 = a2;
  v19 = sub_22A4DD05C();
  v20 = sub_22A4DDCEC();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v69 = v11;
    v22 = v21;
    v67 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v68 = v23;
    *v22 = 136315394;
    v71 = v23;
    v72 = 91;
    v73 = 0xE100000000000000;
    v24 = [v17 logIdentifier];
    v25 = sub_22A4DD5EC();
    v70 = v10;
    v26 = v25;
    v66 = v20;
    v27 = a1;
    v28 = a5;
    v29 = a4;
    v31 = v30;

    v65 = v19;
    MEMORY[0x22AAD08C0](v26, v31);
    a4 = v29;
    a5 = v28;
    a1 = v27;

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v32 = sub_2295A3E30(v72, v73, &v71);

    *(v22 + 4) = v32;
    *(v22 + 12) = 2112;
    v33 = a2;
    v34 = _swift_stdlib_bridgeErrorToNSError();
    *(v22 + 14) = v34;
    v35 = v67;
    *v67 = v34;
    v36 = v65;
    _os_log_impl(&dword_229538000, v65, v66, "%s Error getting RvcCleaningPayload, returning. error=%@", v22, 0x16u);
    sub_22953EAE4(v35, &qword_27D87D7D0, &unk_22A578D90);
    MEMORY[0x22AAD4E50](v35, -1, -1);
    v37 = v68;
    __swift_destroy_boxed_opaque_existential_0(v68);
    MEMORY[0x22AAD4E50](v37, -1, -1);
    MEMORY[0x22AAD4E50](v22, -1, -1);

    (v69[1])(v16, v70);
  }

  else
  {

    (*(v11 + 8))(v16, v10);
  }

  [a4 fulfillWithNoValue];
  if (!a1)
  {
    goto LABEL_13;
  }

LABEL_9:
  v51 = sub_22A4DD5EC();
  v53 = v52;
  v71 = a1;
  sub_229562F68(0, &qword_27D880100, 0x277CBEAC0);

  v54 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
  sub_22A4DBA0C();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v71 = a5;
  v56 = v74;
  v57 = __swift_mutable_project_boxed_opaque_existential_0(&v72, v74);
  MEMORY[0x28223BE20](v57);
  v59 = &v64 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v60 + 16))(v59);
  sub_2297FF768(v59, v51, v53, isUniquelyReferenced_nonNull_native, &v71, v56);

  __swift_destroy_boxed_opaque_existential_0(&v72);
  a5 = v71;
  if (a4)
  {
LABEL_10:
    sub_2296F77EC(a5);

    v61 = objc_allocWithZone(MEMORY[0x277CBEAC0]);
    v62 = sub_22A4DD47C();

    v63 = [v61 initWithDictionary_];

    [a4 fulfillWithValue_];
    return;
  }

LABEL_14:
}

void sub_2297F94D4(void *a1, void *a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_22A4DD07C();
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v72 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v18 = &v72 - v17;
  if (!a2)
  {
    if (!a1)
    {
      return;
    }

    v76 = v16;
    if ([a1 value])
    {
      sub_22A4DE01C();
      swift_unknownObjectRelease();
    }

    else
    {
      v78 = 0u;
      v79 = 0u;
    }

    v80 = v78;
    v81 = v79;
    if (*(&v79 + 1))
    {
      sub_229562F68(0, &qword_27D8815A8, 0x277CD54A8);
      if (swift_dynamicCast())
      {
        v37 = v78;
        v38 = [v78 errorStateID];
        if (v38)
        {
          v39 = v38;
          v76 = sub_22A4DD5EC();
          v41 = v40;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D080, &qword_22A57CF50);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_22A5761A0;
          *(inited + 32) = sub_22A4DD5EC();
          *(inited + 40) = v43;
          *(inited + 72) = sub_229562F68(0, &qword_281401770, 0x277CCABB0);
          *(inited + 48) = v39;
          *(inited + 80) = sub_22A4DD5EC();
          *(inited + 88) = v44;
          v45 = a4;
          *(inited + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87FC20, &unk_22A578810);
          v46 = swift_allocObject();
          *(inited + 96) = v46;
          sub_229564F88(a6, v46 + 16, &unk_27D87FC20, &unk_22A578810);

          v47 = v39;
          v48 = sub_22956AC5C(inited);
          swift_setDeallocating();
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87DE50, &qword_22A577CD0);
          swift_arrayDestroy();
          *(&v81 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C370, &qword_22A578090);
          *&v80 = v48;
          sub_229543C5C(&v80, &v78);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v77 = a5;
          v50 = __swift_mutable_project_boxed_opaque_existential_0(&v78, *(&v79 + 1));
          MEMORY[0x28223BE20](v50);
          v52 = (&v72 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0));
          (*(v53 + 16))(v52);
          sub_2297FEB50(*v52, v76, v41, isUniquelyReferenced_nonNull_native, &v77, &unk_27D87C370, &qword_22A578090);

          __swift_destroy_boxed_opaque_existential_0(&v78);
          if (!v45)
          {

            return;
          }

          sub_2296F77EC(v77);

          v54 = objc_allocWithZone(MEMORY[0x277CBEAC0]);
          v55 = sub_22A4DD47C();

          v56 = [v54 initWithDictionary_];

          [v45 fulfillWithValue_];
          goto LABEL_23;
        }

LABEL_18:
        sub_2296F8604();
        v57 = a3;
        v58 = sub_22A4DD05C();
        v59 = sub_22A4DDCEC();

        if (os_log_type_enabled(v58, v59))
        {
          v60 = swift_slowAlloc();
          v74 = swift_slowAlloc();
          *&v78 = v74;
          *v60 = 136315138;
          *&v80 = 91;
          *(&v80 + 1) = 0xE100000000000000;
          v61 = [v57 logIdentifier];
          v62 = sub_22A4DD5EC();
          v75 = v12;
          v63 = v62;
          v64 = v37;
          v65 = a4;
          v67 = v66;

          MEMORY[0x22AAD08C0](v63, v67);
          a4 = v65;
          v37 = v64;

          MEMORY[0x22AAD08C0](93, 0xE100000000000000);
          v68 = sub_2295A3E30(v80, *(&v80 + 1), &v78);

          *(v60 + 4) = v68;
          _os_log_impl(&dword_229538000, v58, v59, "%s Reading operational error path returned nil values", v60, 0xCu);
          v69 = v74;
          __swift_destroy_boxed_opaque_existential_0(v74);
          MEMORY[0x22AAD4E50](v69, -1, -1);
          MEMORY[0x22AAD4E50](v60, -1, -1);

          (*(v76 + 8))(v15, v75);
          if (!a4)
          {
            goto LABEL_23;
          }
        }

        else
        {

          (*(v76 + 8))(v15, v12);
          if (!a4)
          {
LABEL_23:

            return;
          }
        }

        type metadata accessor for HMError(0);
        *&v78 = 20;
        sub_22956AD8C(MEMORY[0x277D84F90]);
        sub_2297FFF94(&qword_27D87D7C0, type metadata accessor for HMError, &unk_22A576D30);
        sub_22A4DB3CC();
        v70 = v80;
        v71 = sub_22A4DB3DC();

        [a4 rejectWithError_];
        goto LABEL_23;
      }
    }

    else
    {
      sub_22953EAE4(&v80, &unk_27D87DE60, &unk_22A57A960);
    }

    v37 = 0;
    goto LABEL_18;
  }

  v76 = v16;
  sub_2296F8604();
  v19 = a3;
  v20 = a2;
  v21 = sub_22A4DD05C();
  v22 = sub_22A4DDCEC();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v74 = a4;
    v25 = v24;
    v73 = swift_slowAlloc();
    *&v78 = v73;
    *v23 = 136315394;
    *&v80 = 91;
    *(&v80 + 1) = 0xE100000000000000;
    v26 = [v19 logIdentifier];
    v27 = sub_22A4DD5EC();
    v75 = v12;
    v28 = v27;
    v30 = v29;

    MEMORY[0x22AAD08C0](v28, v30);

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v31 = sub_2295A3E30(v80, *(&v80 + 1), &v78);

    *(v23 + 4) = v31;
    *(v23 + 12) = 2112;
    v32 = a2;
    v33 = _swift_stdlib_bridgeErrorToNSError();
    *(v23 + 14) = v33;
    *v25 = v33;
    _os_log_impl(&dword_229538000, v21, v22, "%s Error reading operational error path. error=%@", v23, 0x16u);
    sub_22953EAE4(v25, &qword_27D87D7D0, &unk_22A578D90);
    v34 = v25;
    a4 = v74;
    MEMORY[0x22AAD4E50](v34, -1, -1);
    v35 = v73;
    __swift_destroy_boxed_opaque_existential_0(v73);
    MEMORY[0x22AAD4E50](v35, -1, -1);
    MEMORY[0x22AAD4E50](v23, -1, -1);

    (*(v76 + 8))(v18, v75);
    if (!a4)
    {
      return;
    }

LABEL_9:
    v36 = sub_22A4DB3DC();
    [a4 rejectWithError_];

    return;
  }

  (*(v76 + 8))(v18, v12);
  if (a4)
  {
    goto LABEL_9;
  }
}

void sub_2297F9E38(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, uint64_t a6)
{
  v11 = sub_22A4DD07C();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](a1);
  v15 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v50 - v17;
  if (!v16)
  {
    sub_2296F8604();
    v19 = a4;
    v20 = sub_22A4DD05C();
    v21 = sub_22A4DDCEC();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      *&v55 = v52;
      *v22 = 136315138;
      *&v57[0] = 91;
      *(&v57[0] + 1) = 0xE100000000000000;
      v23 = v12;
      v24 = [v19 logIdentifier];
      v25 = sub_22A4DD5EC();
      v51 = v11;
      v26 = a5;
      v28 = v27;

      MEMORY[0x22AAD08C0](v25, v28);
      a5 = v26;

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v29 = sub_2295A3E30(*&v57[0], *(&v57[0] + 1), &v55);

      *(v22 + 4) = v29;
      _os_log_impl(&dword_229538000, v20, v21, "%s Reading supported run modes path returned nil value", v22, 0xCu);
      v30 = v52;
      __swift_destroy_boxed_opaque_existential_0(v52);
      MEMORY[0x22AAD4E50](v30, -1, -1);
      MEMORY[0x22AAD4E50](v22, -1, -1);

      (*(v23 + 8))(v15, v51);
    }

    else
    {

      (*(v12 + 8))(v15, v11);
    }

    [a5 fulfillWithNoValue];
    return;
  }

  if ([v16 value])
  {
    sub_22A4DE01C();
    swift_unknownObjectRelease();
  }

  else
  {
    v55 = 0u;
    v56 = 0u;
  }

  v57[0] = v55;
  v57[1] = v56;
  v53 = v12;
  if (*(&v56 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8815F8, &qword_22A5845A0);
    if (swift_dynamicCast())
    {
      v31 = a5;
      v32 = v55;
      v33 = MEMORY[0x277D84F90];
      *&v55 = MEMORY[0x277D84F90];
      if (v32)
      {
        v34 = a3;
        sub_229800018(v32, v34, &v55, &qword_27D881600, 0x277CD54D0);

        v33 = v55;
      }

      a5 = v31;
      goto LABEL_14;
    }
  }

  else
  {
    sub_22953EAE4(v57, &unk_27D87DE60, &unk_22A57A960);
  }

  v33 = MEMORY[0x277D84F90];
  *&v55 = MEMORY[0x277D84F90];
LABEL_14:
  v35 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedShort_];
  *&v57[0] = v35;
  MEMORY[0x28223BE20](v35);
  *(&v50 - 2) = v57;
  v36 = sub_22986A7C8(sub_229800AAC, (&v50 - 4), v33);

  if (v36)
  {
    if (a5)
    {
      sub_2296F77EC(a6);
      v37 = objc_allocWithZone(MEMORY[0x277CBEAC0]);
      v38 = sub_22A4DD47C();

      v39 = [v37 initWithDictionary_];

      [a5 fulfillWithValue_];

      return;
    }
  }

  else
  {
    v52 = a5;
    sub_2296F8604();
    v40 = a4;
    v41 = sub_22A4DD05C();
    v42 = sub_22A4DDCCC();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v54 = v44;
      *v43 = 136315138;
      *&v57[0] = 91;
      *(&v57[0] + 1) = 0xE100000000000000;
      v45 = [v40 logIdentifier];
      v46 = sub_22A4DD5EC();
      v48 = v47;

      MEMORY[0x22AAD08C0](v46, v48);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v49 = sub_2295A3E30(*&v57[0], *(&v57[0] + 1), &v54);

      *(v43 + 4) = v49;
      _os_log_impl(&dword_229538000, v41, v42, "%s RVC is not cleaning (probably mapping). Not showing returning to dock notification", v43, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v44);
      MEMORY[0x22AAD4E50](v44, -1, -1);
      MEMORY[0x22AAD4E50](v43, -1, -1);
    }

    (*(v53 + 8))(v18, v11);
    [v52 fulfillWithNoValue];
  }
}

void sub_2297FA444(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  v16 = sub_22A4DD07C();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x28223BE20](a1);
  v20 = &v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v18)
  {
    if ([v18 value])
    {
      sub_22A4DE01C();
      swift_unknownObjectRelease();
    }

    else
    {
      v54 = 0u;
      v55 = 0u;
    }

    aBlock = v54;
    v51 = v55;
    if (*(&v55 + 1))
    {
      sub_229562F68(0, &qword_281401770, 0x277CCABB0);
      if (swift_dynamicCast())
      {
        v48 = a9;
        v49 = a10;
        v47 = v54;
        v32 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInt_];
        v33 = [a3 endpointID];
        v34 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInt_];
        v35 = a5;
        v36 = [a4 accessory];
        v37 = [objc_opt_self() PathWithAttributeID:v32 endpointID:v33 clusterID:v34 accessory:v36];

        v38 = [a4 reportFromAttributePathRead:v37 retryTimeout:1.0];
        v39 = swift_allocObject();
        v41 = v47;
        v40 = v48;
        v39[2] = v47;
        v39[3] = a4;
        v39[4] = v35;
        v39[5] = a6;
        v39[6] = a7;
        v52 = v40;
        v53 = v39;
        *&aBlock = MEMORY[0x277D85DD0];
        *(&aBlock + 1) = 1107296256;
        *&v51 = sub_229800B04;
        *(&v51 + 1) = v49;
        v42 = _Block_copy(&aBlock);
        v43 = v35;

        v44 = v41;
        v45 = a4;

        [v38 getResultWithCompletion_];
        _Block_release(v42);
      }
    }

    else
    {
      sub_22953EAE4(&aBlock, &unk_27D87DE60, &unk_22A57A960);
    }
  }

  else
  {
    sub_2296F8604();
    v21 = a4;
    v22 = sub_22A4DD05C();
    v23 = sub_22A4DDCEC();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      *&v54 = v49;
      *v24 = 136315138;
      *&aBlock = 91;
      *(&aBlock + 1) = 0xE100000000000000;
      v25 = [v21 logIdentifier];
      v26 = sub_22A4DD5EC();
      v27 = a5;
      v29 = v28;

      MEMORY[0x22AAD08C0](v26, v29);
      a5 = v27;

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v30 = sub_2295A3E30(aBlock, *(&aBlock + 1), &v54);

      *(v24 + 4) = v30;
      _os_log_impl(&dword_229538000, v22, v23, "%s Reading current run mode path returned nil value", v24, 0xCu);
      v31 = v49;
      __swift_destroy_boxed_opaque_existential_0(v49);
      MEMORY[0x22AAD4E50](v31, -1, -1);
      MEMORY[0x22AAD4E50](v24, -1, -1);
    }

    (*(v17 + 8))(v20, v16);
    [a5 fulfillWithNoValue];
  }
}

id sub_2297FA8DC(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, uint64_t a6)
{
  v11 = sub_22A4DD07C();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](a1);
  v15 = &v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v62 - v17;
  if (v16)
  {
    if ([v16 value])
    {
      sub_22A4DE01C();
      swift_unknownObjectRelease();
    }

    else
    {
      v69 = 0u;
      v70 = 0u;
    }

    v71 = v69;
    v72 = v70;
    v65 = v12;
    if (*(&v70 + 1))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8815F8, &qword_22A5845A0);
      if (swift_dynamicCast())
      {
        v31 = a5;
        v32 = v69;
        v33 = MEMORY[0x277D84F90];
        v68 = MEMORY[0x277D84F90];
        if (v69)
        {
          v34 = a3;
          sub_229800018(v32, v34, &v68, &qword_27D881600, 0x277CD54D0);

          v33 = v68;
        }

        a5 = v31;
LABEL_14:
        v35 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedShort_];
        *&v71 = v35;
        MEMORY[0x28223BE20](v35);
        *(&v62 - 2) = &v71;
        v36 = sub_22986A7C8(sub_229800AAC, (&v62 - 4), v33);

        if (v36)
        {
          v64 = a5;
          sub_2296F8604();
          v37 = a4;
          v38 = sub_22A4DD05C();
          v39 = sub_22A4DDCCC();

          if (os_log_type_enabled(v38, v39))
          {
            v40 = swift_slowAlloc();
            v41 = swift_slowAlloc();
            *&v69 = v41;
            *v40 = 136315138;
            *&v71 = 91;
            *(&v71 + 1) = 0xE100000000000000;
            v42 = [v37 logIdentifier];
            v43 = sub_22A4DD5EC();
            v45 = v44;

            MEMORY[0x22AAD08C0](v43, v45);

            MEMORY[0x22AAD08C0](93, 0xE100000000000000);
            v46 = sub_2295A3E30(v71, *(&v71 + 1), &v69);

            *(v40 + 4) = v46;
            _os_log_impl(&dword_229538000, v38, v39, "%s RVC is still cleaning. Not showing cleaning complete notification", v40, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v41);
            MEMORY[0x22AAD4E50](v41, -1, -1);
            MEMORY[0x22AAD4E50](v40, -1, -1);
          }

          (*(v65 + 8))(v18, v11);
          [v64 fulfillWithNoValue];
        }

        v67 = a6;
        v47 = sub_22A4DD5EC();
        v49 = v48;

        v50 = [a4 rvcCleaningPayload];
        if (v50)
        {
          v51 = v50;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
          v52 = sub_22A4DD49C();

          v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C370, &qword_22A578090);
          *(&v72 + 1) = v53;
          *&v71 = v52;
          sub_229543C5C(&v71, &v69);
          LOBYTE(v52) = swift_isUniquelyReferenced_nonNull_native();
          v66 = a6;
          v54 = __swift_mutable_project_boxed_opaque_existential_0(&v69, *(&v70 + 1));
          MEMORY[0x28223BE20](v54);
          v56 = &v62 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v57 + 16))(v56);
          sub_2297FF768(v56, v47, v49, v52, &v66, v53);

          __swift_destroy_boxed_opaque_existential_0(&v69);
          v67 = v66;
          if (a5)
          {
LABEL_20:
            sub_2296F77EC(v67);

            v58 = objc_allocWithZone(MEMORY[0x277CBEAC0]);
            v59 = sub_22A4DD47C();

            v60 = [v58 initWithDictionary_];

            [a5 fulfillWithValue_];
LABEL_25:
            [a4 setRvcCleaningPayload_];
          }
        }

        else
        {
          sub_2297FD02C(v47, v49, sub_229543C58, sub_229897D20, &v71);

          sub_22953EAE4(&v71, &unk_27D87FC20, &unk_22A578810);
          if (a5)
          {
            goto LABEL_20;
          }
        }

        goto LABEL_25;
      }
    }

    else
    {
      sub_22953EAE4(&v71, &unk_27D87DE60, &unk_22A57A960);
    }

    v33 = MEMORY[0x277D84F90];
    v68 = MEMORY[0x277D84F90];
    goto LABEL_14;
  }

  sub_2296F8604();
  v19 = a4;
  v20 = sub_22A4DD05C();
  v21 = sub_22A4DDCEC();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    *&v69 = v64;
    *v22 = 136315138;
    *&v71 = 91;
    *(&v71 + 1) = 0xE100000000000000;
    v23 = v12;
    v24 = [v19 logIdentifier];
    v25 = sub_22A4DD5EC();
    v63 = v11;
    v26 = a5;
    v28 = v27;

    MEMORY[0x22AAD08C0](v25, v28);
    a5 = v26;

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v29 = sub_2295A3E30(v71, *(&v71 + 1), &v69);

    *(v22 + 4) = v29;
    _os_log_impl(&dword_229538000, v20, v21, "%s Reading supported run modes path returned nil value", v22, 0xCu);
    v30 = v64;
    __swift_destroy_boxed_opaque_existential_0(v64);
    MEMORY[0x22AAD4E50](v30, -1, -1);
    MEMORY[0x22AAD4E50](v22, -1, -1);

    (*(v23 + 8))(v15, v63);
  }

  else
  {

    (*(v12 + 8))(v15, v11);
  }

  return [a5 fulfillWithNoValue];
}

void sub_2297FB100(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, uint64_t a6)
{
  v11 = sub_22A4DD07C();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](a1);
  v15 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v55 - v17;
  if (v16)
  {
    if ([v16 value])
    {
      sub_22A4DE01C();
      swift_unknownObjectRelease();
    }

    else
    {
      v61 = 0u;
      v62 = 0u;
    }

    aBlock = v61;
    v58 = v62;
    if (*(&v62 + 1))
    {
      sub_229562F68(0, &qword_281401770, 0x277CCABB0);
      if (swift_dynamicCast())
      {
        v30 = v61;
        v31 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInt_];
        v32 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInt_];
        v33 = [a4 accessory];
        v34 = [objc_opt_self() PathWithAttributeID:v31 endpointID:a3 clusterID:v32 accessory:v33];

        v35 = [a4 reportFromAttributePathRead:v34 retryTimeout:1.0];
        v36 = swift_allocObject();
        v36[2] = v30;
        v36[3] = a3;
        v36[4] = a4;
        v36[5] = a5;
        v36[6] = a6;
        v59 = sub_2297FFFE8;
        v60 = v36;
        *&aBlock = MEMORY[0x277D85DD0];
        *(&aBlock + 1) = 1107296256;
        *&v58 = sub_229800B04;
        *(&v58 + 1) = &block_descriptor_37_2;
        v37 = _Block_copy(&aBlock);
        v38 = a5;
        v39 = v30;
        v40 = a3;
        v41 = a4;

        [v35 getResultWithCompletion_];
        _Block_release(v37);

        return;
      }
    }

    else
    {
      sub_22953EAE4(&aBlock, &unk_27D87DE60, &unk_22A57A960);
    }

    sub_2296F8604();
    v42 = a4;
    v43 = sub_22A4DD05C();
    v44 = sub_22A4DDCEC();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      *&v61 = v46;
      *v45 = 136315138;
      *&aBlock = 91;
      *(&aBlock + 1) = 0xE100000000000000;
      v47 = [v42 logIdentifier];
      v48 = sub_22A4DD5EC();
      v56 = v11;
      v49 = a5;
      v51 = v50;

      MEMORY[0x22AAD08C0](v48, v51);
      a5 = v49;

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v52 = sub_2295A3E30(aBlock, *(&aBlock + 1), &v61);

      *(v45 + 4) = v52;
      _os_log_impl(&dword_229538000, v43, v44, "%s No current clean mode", v45, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v46);
      MEMORY[0x22AAD4E50](v46, -1, -1);
      MEMORY[0x22AAD4E50](v45, -1, -1);

      (*(v12 + 8))(v18, v56);
      goto LABEL_16;
    }

    v53 = *(v12 + 8);
    v54 = v18;
LABEL_15:
    v53(v54, v11);
    goto LABEL_16;
  }

  sub_2296F8604();
  v19 = a4;
  v20 = sub_22A4DD05C();
  v21 = sub_22A4DDCEC();

  if (!os_log_type_enabled(v20, v21))
  {

    v53 = *(v12 + 8);
    v54 = v15;
    goto LABEL_15;
  }

  v22 = swift_slowAlloc();
  v23 = swift_slowAlloc();
  *&v61 = v23;
  *v22 = 136315138;
  *&aBlock = 91;
  *(&aBlock + 1) = 0xE100000000000000;
  v24 = [v19 logIdentifier];
  v25 = sub_22A4DD5EC();
  v56 = v11;
  v26 = a5;
  v28 = v27;

  MEMORY[0x22AAD08C0](v25, v28);
  a5 = v26;

  MEMORY[0x22AAD08C0](93, 0xE100000000000000);
  v29 = sub_2295A3E30(aBlock, *(&aBlock + 1), &v61);

  *(v22 + 4) = v29;
  _os_log_impl(&dword_229538000, v20, v21, "%s Reading current clean mode path returned nil value", v22, 0xCu);
  __swift_destroy_boxed_opaque_existential_0(v23);
  MEMORY[0x22AAD4E50](v23, -1, -1);
  MEMORY[0x22AAD4E50](v22, -1, -1);

  (*(v12 + 8))(v15, v56);
LABEL_16:
  [a5 fulfillWithNoValue];
}

void sub_2297FB704(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, uint64_t a7)
{
  v13 = sub_22A4DD07C();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](a1);
  v17 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v15)
  {
    if ([v15 value])
    {
      sub_22A4DE01C();
      swift_unknownObjectRelease();
    }

    else
    {
      v47 = 0u;
      v48 = 0u;
    }

    aBlock = v47;
    v44 = v48;
    if (*(&v48 + 1))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8815B8, &qword_22A584540);
      if (swift_dynamicCast())
      {
        v29 = v47;
        v30 = MEMORY[0x277D84F90];
        *&v47 = MEMORY[0x277D84F90];
        if (v29)
        {
          v31 = a3;
          sub_229800018(v29, v31, &v47, &qword_27D8815C0, 0x277CD54A0);

          v30 = v47;
        }

        goto LABEL_14;
      }
    }

    else
    {
      sub_22953EAE4(&aBlock, &unk_27D87DE60, &unk_22A57A960);
    }

    v30 = MEMORY[0x277D84F90];
LABEL_14:
    v32 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInt_];
    v33 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInt_];
    v34 = [a5 accessory];
    v35 = [objc_opt_self() PathWithAttributeID:v32 endpointID:a4 clusterID:v33 accessory:v34];

    v36 = [a5 reportFromAttributePathRead:v35 retryTimeout:1.0];
    v37 = swift_allocObject();
    v37[2] = a4;
    v37[3] = a5;
    v37[4] = v30;
    v37[5] = a6;
    v37[6] = a7;
    v45 = sub_229800000;
    v46 = v37;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    *&v44 = sub_229800B04;
    *(&v44 + 1) = &block_descriptor_43_1;
    v38 = _Block_copy(&aBlock);
    v39 = a6;

    v40 = a4;
    v41 = a5;

    [v36 getResultWithCompletion_];
    _Block_release(v38);

    return;
  }

  sub_2296F8604();
  v18 = a5;
  v19 = sub_22A4DD05C();
  v20 = sub_22A4DDCEC();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    *&v47 = v42;
    *v21 = 136315138;
    *&aBlock = 91;
    *(&aBlock + 1) = 0xE100000000000000;
    v22 = [v18 logIdentifier];
    v23 = sub_22A4DD5EC();
    v24 = a6;
    v26 = v25;

    MEMORY[0x22AAD08C0](v23, v26);
    a6 = v24;

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v27 = sub_2295A3E30(aBlock, *(&aBlock + 1), &v47);

    *(v21 + 4) = v27;
    _os_log_impl(&dword_229538000, v19, v20, "%s Reading supported clean modes path returned nil value", v21, 0xCu);
    v28 = v42;
    __swift_destroy_boxed_opaque_existential_0(v42);
    MEMORY[0x22AAD4E50](v28, -1, -1);
    MEMORY[0x22AAD4E50](v21, -1, -1);
  }

  (*(v14 + 8))(v17, v13);
  [a6 fulfillWithNoValue];
}

void sub_2297FBBCC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void *a6, uint64_t a7)
{
  v13 = sub_22A4DD07C();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](a1);
  v17 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v15)
  {
    if ([v15 value])
    {
      sub_22A4DE01C();
      swift_unknownObjectRelease();
    }

    else
    {
      v45 = 0u;
      v46 = 0u;
    }

    aBlock = v45;
    v42 = v46;
    if (*(&v46 + 1))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8815C8, &unk_22A584548);
      if (swift_dynamicCast())
      {
        v29 = v45;
LABEL_13:
        v30 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInt_];
        v31 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInt_];
        v32 = [a4 accessory];
        v33 = [objc_opt_self() PathWithAttributeID:v30 endpointID:a3 clusterID:v31 accessory:v32];

        v34 = [a4 reportFromAttributePathRead:v33 retryTimeout:1.0];
        v35 = swift_allocObject();
        v35[2] = v29;
        v35[3] = a5;
        v35[4] = a4;
        v35[5] = a6;
        v35[6] = a7;
        v43 = sub_229800120;
        v44 = v35;
        *&aBlock = MEMORY[0x277D85DD0];
        *(&aBlock + 1) = 1107296256;
        *&v42 = sub_229800B04;
        *(&v42 + 1) = &block_descriptor_49_1;
        v36 = _Block_copy(&aBlock);
        v37 = a6;

        v38 = a4;

        [v34 getResultWithCompletion_];
        _Block_release(v36);

        return;
      }
    }

    else
    {
      sub_22953EAE4(&aBlock, &unk_27D87DE60, &unk_22A57A960);
    }

    v29 = MEMORY[0x277D84F90];
    goto LABEL_13;
  }

  sub_2296F8604();
  v18 = a4;
  v19 = sub_22A4DD05C();
  v20 = sub_22A4DDCEC();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    *&v45 = v40;
    *v21 = 136315138;
    *&aBlock = 91;
    *(&aBlock + 1) = 0xE100000000000000;
    v22 = [v18 logIdentifier];
    v23 = sub_22A4DD5EC();
    v24 = a6;
    v26 = v25;

    MEMORY[0x22AAD08C0](v23, v26);
    a6 = v24;

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v27 = sub_2295A3E30(aBlock, *(&aBlock + 1), &v45);

    *(v21 + 4) = v27;
    _os_log_impl(&dword_229538000, v19, v20, "%s Reading selected service areas path returned nil value", v21, 0xCu);
    v28 = v40;
    __swift_destroy_boxed_opaque_existential_0(v40);
    MEMORY[0x22AAD4E50](v28, -1, -1);
    MEMORY[0x22AAD4E50](v21, -1, -1);
  }

  (*(v14 + 8))(v17, v13);
  [a6 fulfillWithNoValue];
}

void sub_2297FC03C(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, void *a6)
{
  v60 = a3;
  v10 = *(sub_22A4DD07C() - 8);
  v11 = MEMORY[0x28223BE20](a1);
  v14 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v11)
  {
    if ([v11 value])
    {
      sub_22A4DE01C();
      swift_unknownObjectRelease();
    }

    else
    {
      v61 = 0u;
      v62 = 0u;
    }

    v63[0] = v61;
    v63[1] = v62;
    if (*(&v62 + 1))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8815E0, &qword_22A584570);
      if (swift_dynamicCast())
      {
        v58 = a6;
        v27 = v61;
        if (v61 >> 62)
        {
LABEL_41:
          v59 = v27 & 0xFFFFFFFFFFFFFF8;
          v28 = sub_22A4DE0EC();
        }

        else
        {
          v59 = v61 & 0xFFFFFFFFFFFFFF8;
          v28 = *((v61 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v56 = a4;
        v57 = a5;
        if (!v28)
        {
          v30 = MEMORY[0x277D84F90];
          goto LABEL_35;
        }

        v29 = 0;
        v30 = MEMORY[0x277D84F90];
        a4 = v27 & 0xC000000000000001;
        while (1)
        {
          v55 = v30;
          v31 = v29;
          while (1)
          {
            if (a4)
            {
              v32 = MEMORY[0x22AAD13F0](v31, v27);
            }

            else
            {
              if (v31 >= *(v59 + 16))
              {
                goto LABEL_40;
              }

              v32 = *(v27 + 8 * v31 + 32);
            }

            v33 = v32;
            v29 = v31 + 1;
            if (__OFADD__(v31, 1))
            {
              __break(1u);
LABEL_40:
              __break(1u);
              goto LABEL_41;
            }

            v34 = [v32 areaID];
            *&v63[0] = v34;
            MEMORY[0x28223BE20](v34);
            *(&v52 - 2) = v63;
            a5 = sub_2298906AC(sub_229800138, (&v52 - 4), v60);

            if (a5)
            {
              break;
            }

LABEL_16:

            ++v31;
            if (v29 == v28)
            {
              v30 = v55;
              goto LABEL_35;
            }
          }

          v35 = [v33 areaInfo];
          v36 = [v35 locationInfo];
          if (!v36)
          {
            break;
          }

          v37 = v36;
          v38 = [v36 locationName];
          v54 = sub_22A4DD5EC();
          v53 = v39;

          v30 = v55;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v30 = sub_22958A53C(0, *(v30 + 2) + 1, 1, v30);
          }

          a5 = *(v30 + 2);
          v41 = *(v30 + 3);
          if (a5 >= v41 >> 1)
          {
            v30 = sub_22958A53C((v41 > 1), a5 + 1, 1, v30);
          }

          *(v30 + 2) = a5 + 1;
          v42 = &v30[16 * a5];
          v43 = v53;
          *(v42 + 4) = v54;
          *(v42 + 5) = v43;
          if (v29 == v28)
          {
LABEL_35:

            a6 = v58;
            a5 = v57;
            a4 = v56;
            goto LABEL_36;
          }
        }

        goto LABEL_16;
      }
    }

    else
    {
      sub_22953EAE4(v63, &unk_27D87DE60, &unk_22A57A960);
    }

    v30 = 0;
LABEL_36:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D080, &qword_22A57CF50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_22A5761A0;
    *(inited + 32) = sub_22A4DD5EC();
    *(inited + 40) = v45;
    *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8815D0, &qword_22A584558);
    *(inited + 48) = a4;
    *(inited + 80) = sub_22A4DD5EC();
    *(inited + 88) = v46;
    *(inited + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8815D8, &unk_22A584560);
    *(inited + 96) = v30;

    v47 = sub_22956AC5C(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87DE50, &qword_22A577CD0);
    swift_arrayDestroy();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
    v48 = sub_22A4DD47C();
    [a5 setRvcCleaningPayload_];

    if (a6)
    {
      sub_2296F77EC(v47);

      v49 = objc_allocWithZone(MEMORY[0x277CBEAC0]);
      v50 = sub_22A4DD47C();

      v51 = [v49 initWithDictionary_];

      [a6 fulfillWithValue_];
    }

    else
    {
    }
  }

  else
  {
    v60 = v12;
    sub_2296F8604();
    v15 = a5;
    v16 = sub_22A4DD05C();
    v17 = sub_22A4DDCEC();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v58 = a6;
      v19 = v18;
      v20 = swift_slowAlloc();
      *&v61 = v20;
      *v19 = 136315138;
      *&v63[0] = 91;
      *(&v63[0] + 1) = 0xE100000000000000;
      v21 = [v15 logIdentifier];
      v22 = sub_22A4DD5EC();
      v24 = v23;

      MEMORY[0x22AAD08C0](v22, v24);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v25 = sub_2295A3E30(*&v63[0], *(&v63[0] + 1), &v61);

      *(v19 + 4) = v25;
      _os_log_impl(&dword_229538000, v16, v17, "%s Reading supported service areas path returned nil value", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v20);
      MEMORY[0x22AAD4E50](v20, -1, -1);
      v26 = v19;
      a6 = v58;
      MEMORY[0x22AAD4E50](v26, -1, -1);
    }

    (*(v10 + 8))(v14, v60);
    [a6 fulfillWithNoValue];
  }
}

void sub_2297FC78C(void **a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v74 = a5;
  v75 = a4;
  v8 = sub_22A4DB7DC();
  v77 = *(v8 - 8);
  v78 = v8;
  v9 = MEMORY[0x28223BE20](v8);
  v71 = &v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v76 = &v69 - v11;
  v12 = sub_22A4DD07C();
  v81 = *(v12 - 8);
  v82 = v12;
  v13 = MEMORY[0x28223BE20](v12);
  v79 = &v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v69 - v15;
  v17 = *a1;
  v18 = objc_allocWithZone(HMDRemoteDeviceMessageDestination);
  v19 = sub_22A4DB77C();
  v20 = [v18 initWithTarget:v19 device:v17];

  v21 = objc_allocWithZone(HMDRemoteMessage);
  v22 = v20;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
  v83 = a3;
  v72 = v23;
  v24 = sub_22A4DD47C();
  v25 = [v21 initWithName:@"HMDAccessoryMatterEventMessageName" destination:v22 payload:v24];
  v80 = v22;

  if ([v17 isCurrentDevice])
  {
    v73 = v25;
    sub_2296F8604();
    v26 = v75;

    v27 = sub_22A4DD05C();
    v28 = sub_22A4DDCEC();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v86 = v30;
      *v29 = 136315394;
      v84 = 91;
      v85 = 0xE100000000000000;
      v31 = [v26 logIdentifier];
      v32 = sub_22A4DD5EC();
      v34 = v33;

      MEMORY[0x22AAD08C0](v32, v34);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v35 = sub_2295A3E30(v84, v85, &v86);

      *(v29 + 4) = v35;
      *(v29 + 12) = 2080;
      v36 = sub_22A4DD4AC();
      v38 = sub_2295A3E30(v36, v37, &v86);

      *(v29 + 14) = v38;
      _os_log_impl(&dword_229538000, v27, v28, "%s Calling handleMatterEventMessage (Showing notification on THIS Apple TV) with payload=%s", v29, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v30, -1, -1);
      MEMORY[0x22AAD4E50](v29, -1, -1);
    }

    (*(v81 + 8))(v16, v82);
    v39 = &selRef_handleMatterEventMessage_;
    v25 = v73;
  }

  else
  {
    sub_2296F8604();
    (*(v77 + 16))(v76, a2, v78);
    v40 = v75;

    v41 = v17;
    v42 = sub_22A4DD05C();
    v43 = sub_22A4DDCCC();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      v86 = v75;
      *v44 = 136315906;
      v84 = 91;
      v85 = 0xE100000000000000;
      v45 = [v40 logIdentifier];
      v73 = v25;
      v46 = v45;
      v47 = sub_22A4DD5EC();
      v70 = v43;
      v49 = v48;

      v69 = v42;
      MEMORY[0x22AAD08C0](v47, v49);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v50 = sub_2295A3E30(v84, v85, &v86);

      *(v44 + 4) = v50;
      *(v44 + 12) = 2080;
      sub_2297FFF94(&qword_281403860, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v51 = v76;
      v52 = v78;
      v53 = sub_22A4DE5CC();
      v55 = v54;
      v56 = *(v77 + 8);
      v56(v51, v52);
      v57 = sub_2295A3E30(v53, v55, &v86);

      *(v44 + 14) = v57;
      *(v44 + 22) = 2080;
      v58 = [v41 identifier];
      v59 = v71;
      sub_22A4DB79C();

      v60 = sub_22A4DE5CC();
      v62 = v61;
      v56(v59, v52);
      v63 = sub_2295A3E30(v60, v62, &v86);

      *(v44 + 24) = v63;
      *(v44 + 32) = 2080;
      v64 = sub_22A4DD4AC();
      v66 = sub_2295A3E30(v64, v65, &v86);
      v25 = v73;

      *(v44 + 34) = v66;
      v67 = v69;
      _os_log_impl(&dword_229538000, v69, v70, "%s Sending bulletin event to target=%s for device=%s with payload=%s", v44, 0x2Au);
      v68 = v75;
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v68, -1, -1);
      MEMORY[0x22AAD4E50](v44, -1, -1);
    }

    else
    {

      (*(v77 + 8))(v76, v78);
    }

    (*(v81 + 8))(v79, v82);
    v39 = &selRef_sendMessage_;
    v26 = v74;
  }

  [v26 *v39];
}

double sub_2297FCF28@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_229543DBC(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v12 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_229897CF8();
      v10 = v12;
    }

    sub_229557188((*(v10 + 56) + 40 * v8), a3);
    sub_2297FD878(v8, v10);
    *v4 = v10;
  }

  else
  {
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

double sub_2297FD02C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t, _OWORD *)@<X2>, void (*a4)(void)@<X3>, _OWORD *a5@<X8>)
{
  v8 = v5;
  v10 = sub_229543DBC(a1, a2);
  if (v11)
  {
    v12 = v10;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v5;
    v16 = *v8;
    if (!isUniquelyReferenced_nonNull_native)
    {
      a4();
      v14 = v16;
    }

    a3(*(v14 + 56) + 32 * v12, a5);
    sub_2297FDA34(v12, v14);
    *v8 = v14;
  }

  else
  {
    result = 0.0;
    *a5 = 0u;
    a5[1] = 0u;
  }

  return result;
}

uint64_t sub_2297FD170@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t (*a4)(void)@<X3>, void (*a5)(void)@<X4>, uint64_t a6@<X8>)
{
  v11 = v6;
  v13 = sub_2296DBEC0(a1);
  if (v14)
  {
    v15 = v13;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v6;
    v30 = *v11;
    if (!isUniquelyReferenced_nonNull_native)
    {
      a5();
      v17 = v30;
    }

    v18 = *(v17 + 48);
    v19 = sub_22A4DB7DC();
    v20 = v15;
    (*(*(v19 - 8) + 8))(v18 + *(*(v19 - 8) + 72) * v15, v19);
    v21 = *(v17 + 56);
    v22 = a2(0);
    v29 = *(v22 - 8);
    sub_2295AEF98(v21 + *(v29 + 72) * v20, a6, a3);
    sub_2297FDDAC(v20, v17, a4);
    *v11 = v17;
    v23 = *(v29 + 56);
    v24 = a6;
    v25 = 0;
    v26 = v22;
  }

  else
  {
    v27 = a2(0);
    v23 = *(*(v27 - 8) + 56);
    v26 = v27;
    v24 = a6;
    v25 = 1;
  }

  return v23(v24, v25, 1, v26);
}

uint64_t sub_2297FD330@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_229543DBC(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v20 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_229898834();
      v10 = v20;
    }

    v11 = *(v10 + 56);
    v12 = sub_22A4DBB4C();
    v19 = *(v12 - 8);
    (*(v19 + 32))(a3, v11 + *(v19 + 72) * v8, v12);
    sub_2297FE74C(v8, v10, MEMORY[0x277D0EFA8]);
    *v4 = v10;
    v13 = *(v19 + 56);
    v14 = a3;
    v15 = 0;
    v16 = v12;
  }

  else
  {
    v17 = sub_22A4DBB4C();
    v13 = *(*(v17 - 8) + 56);
    v16 = v17;
    v14 = a3;
    v15 = 1;
  }

  return v13(v14, v15, 1, v16);
}

uint64_t sub_2297FD4B4(void *a1)
{
  v2 = v1;
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) == 0)
  {
    v13 = sub_2296DBF94(a1);
    if (v14)
    {
      v3 = v13;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v8 = *v1;
      v17 = *v1;
      if (isUniquelyReferenced_nonNull_native)
      {
LABEL_10:

        v12 = *(*(v8 + 56) + 8 * v3);
        sub_2297FE434(v3, v8);
        goto LABEL_11;
      }

LABEL_15:
      sub_229898EB8();
      v8 = v17;
      goto LABEL_10;
    }

    return 0;
  }

  if (v3 < 0)
  {
    v4 = *v1;
  }

  else
  {
    v4 = v3 & 0xFFFFFFFFFFFFFF8;
  }

  v5 = a1;
  v6 = sub_22A4DE37C();

  if (!v6)
  {
    return 0;
  }

  swift_unknownObjectRelease();

  v7 = sub_22A4DE0EC();
  v8 = sub_22975DE14(v4, v7);

  v9 = sub_2296DBF94(v5);
  v11 = v10;

  if ((v11 & 1) == 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  v12 = *(*(v8 + 56) + 8 * v9);
  sub_2297FE434(v9, v8);

LABEL_11:
  *v2 = v8;
  return v12;
}

uint64_t sub_2297FD658(uint64_t a1, uint64_t (*a2)(uint64_t), void (*a3)(void))
{
  v5 = v3;
  v6 = a2(a1);
  if ((v7 & 1) == 0)
  {
    return 2;
  }

  v8 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v3;
  v13 = *v5;
  if (!isUniquelyReferenced_nonNull_native)
  {
    a3();
    v10 = v13;
  }

  v11 = *(*(v10 + 56) + v8);
  sub_2297FE5C0(v8, v10);
  *v5 = v10;
  return v11;
}

uint64_t sub_2297FD6F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_229543DBC(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v20 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_22989A5C8();
      v10 = v20;
    }

    v11 = *(v10 + 56);
    v12 = type metadata accessor for HomePassData(0);
    v19 = *(v12 - 8);
    sub_2295AEF98(v11 + *(v19 + 72) * v8, a3, type metadata accessor for HomePassData);
    sub_2297FE74C(v8, v10, type metadata accessor for HomePassData);
    *v4 = v10;
    v13 = *(v19 + 56);
    v14 = a3;
    v15 = 0;
    v16 = v12;
  }

  else
  {
    v17 = type metadata accessor for HomePassData(0);
    v13 = *(*(v17 - 8) + 56);
    v16 = v17;
    v14 = a3;
    v15 = 1;
  }

  return v13(v14, v15, 1, v16);
}

uint64_t sub_2297FD878(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_22A4DE05C() + 1) & ~v5;
    do
    {
      sub_22A4DE77C();

      sub_22A4DD6BC();
      v11 = sub_22A4DE7BC();

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v12 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v12)
      {
LABEL_10:
        v13 = *(a2 + 48);
        v14 = (v13 + 16 * v3);
        v15 = (v13 + 16 * v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
        }

        v16 = *(a2 + 56);
        v17 = v16 + 40 * v3;
        v18 = (v16 + 40 * v6);
        if (v3 != v6 || v17 >= v18 + 40)
        {
          v9 = *v18;
          v10 = v18[1];
          *(v17 + 32) = *(v18 + 4);
          *v17 = v9;
          *(v17 + 16) = v10;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_2297FDA34(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_22A4DE05C() + 1) & ~v5;
    do
    {
      sub_22A4DE77C();

      sub_22A4DD6BC();
      v10 = sub_22A4DE7BC();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 16 * v3);
        v14 = (v12 + 16 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 32 * v3);
        v17 = (v15 + 32 * v6);
        if (v3 != v6 || v16 >= v17 + 2)
        {
          v9 = v17[1];
          *v16 = *v17;
          v16[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_2297FDBE4(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_22A4DE05C() + 1) & ~v5;
    do
    {
      sub_22A4DE77C();

      sub_22A4DD6BC();
      v9 = sub_22A4DE7BC();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_2297FDDAC(int64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v37 = a3;
  v5 = sub_22A4DB7DC();
  v6 = *(v5 - 8);
  result = MEMORY[0x28223BE20](v5);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2 + 64;
  v11 = -1 << *(a2 + 32);
  v12 = (a1 + 1) & ~v11;
  if ((*(a2 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v42 = a2;
    v13 = ~v11;
    v14 = sub_22A4DE05C();
    v15 = v13;
    a2 = v42;
    v41 = (v14 + 1) & v15;
    v17 = *(v6 + 16);
    v16 = v6 + 16;
    v39 = v10;
    v40 = v17;
    v18 = *(v16 + 56);
    v38 = (v16 - 8);
    do
    {
      v19 = v18;
      v20 = v18 * v12;
      v21 = v15;
      v22 = v16;
      v40(v9, *(a2 + 48) + v18 * v12, v5);
      sub_2297FFF94(&qword_281403880, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      v23 = sub_22A4DD4EC();
      result = (*v38)(v9, v5);
      v15 = v21;
      v24 = v23 & v21;
      if (a1 >= v41)
      {
        if (v24 >= v41 && a1 >= v24)
        {
LABEL_15:
          v16 = v22;
          if (v19 * a1 < v20 || *(v42 + 48) + v19 * a1 >= (*(v42 + 48) + v20 + v19))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v19 * a1 != v20)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v42;
          v27 = *(v42 + 56);
          v28 = *(*(v37(0) - 8) + 72);
          v29 = v28 * a1;
          result = v27 + v28 * a1;
          v30 = v28 * v12;
          v31 = v27 + v28 * v12 + v28;
          if (v29 < v30 || result >= v31)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v12;
            v10 = v39;
            v15 = v21;
          }

          else
          {
            a1 = v12;
            v33 = v29 == v30;
            v10 = v39;
            v15 = v21;
            if (!v33)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v15 = v21;
              a1 = v12;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v41 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v16 = v22;
      v10 = v39;
      a2 = v42;
LABEL_4:
      v12 = (v12 + 1) & v15;
      v18 = v19;
    }

    while (((*(v10 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v34 = *(a2 + 16);
  v35 = __OFSUB__(v34, 1);
  v36 = v34 - 1;
  if (v35)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v36;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_2297FE114(int64_t a1, uint64_t a2)
{
  v40 = sub_22A4DB7DC();
  v4 = *(v40 - 8);
  result = MEMORY[0x28223BE20](v40);
  v39 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v41 = v6;
    v12 = sub_22A4DE05C();
    v13 = v40;
    v6 = v41;
    v14 = v11;
    v38 = (v12 + 1) & v11;
    v16 = *(v4 + 16);
    v15 = v4 + 16;
    v36 = a2 + 64;
    v37 = v16;
    v17 = *(v15 + 56);
    v35 = (v15 - 8);
    do
    {
      v18 = v17;
      v19 = v17 * v10;
      v20 = v39;
      v21 = v14;
      v22 = v15;
      v37(v39, *(v6 + 48) + v17 * v10, v13);
      sub_2297FFF94(&qword_281403880, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      v23 = sub_22A4DD4EC();
      result = (*v35)(v20, v13);
      v14 = v21;
      v24 = v23 & v21;
      if (a1 >= v38)
      {
        if (v24 >= v38 && a1 >= v24)
        {
LABEL_15:
          v6 = v41;
          v27 = *(v41 + 48);
          result = v27 + v18 * a1;
          v15 = v22;
          if (v18 * a1 < v19 || (v17 = v18, result >= v27 + v19 + v18))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v6 = v41;
            v17 = v18;
            v14 = v21;
            v8 = v36;
          }

          else
          {
            v8 = v36;
            if (v18 * a1 != v19)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v6 = v41;
              v17 = v18;
              v14 = v21;
            }
          }

          v28 = *(v6 + 56);
          v29 = (v28 + 8 * a1);
          v30 = (v28 + 8 * v10);
          if (a1 != v10 || v29 >= v30 + 1)
          {
            *v29 = *v30;
            a1 = v10;
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v38 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v15 = v22;
      v8 = v36;
      v17 = v18;
      v6 = v41;
LABEL_4:
      v10 = (v10 + 1) & v14;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v31 = *(v6 + 16);
  v32 = __OFSUB__(v31, 1);
  v33 = v31 - 1;
  if (v32)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v33;
    ++*(v6 + 36);
  }

  return result;
}

void sub_2297FE434(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_22A4DE05C() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + 8 * v6);
      v10 = sub_22A4DDECC();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = *(a2 + 48);
          v15 = (v14 + 8 * v3);
          v16 = (v14 + 8 * v6);
          if (v3 != v6 || v15 >= v16 + 1)
          {
            *v15 = *v16;
          }

          v17 = *(a2 + 56);
          v18 = (v17 + 8 * v3);
          v19 = (v17 + 8 * v6);
          if (v3 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }
}

void sub_2297FE5C0(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_22A4DE05C() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + 8 * v6);
      v10 = sub_22A4DDECC();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = *(a2 + 48);
          v15 = (v14 + 8 * v3);
          v16 = (v14 + 8 * v6);
          if (v3 != v6 || v15 >= v16 + 1)
          {
            *v15 = *v16;
          }

          v17 = *(a2 + 56);
          v18 = (v17 + v3);
          v19 = (v17 + v6);
          if (v3 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }
}

unint64_t sub_2297FE74C(unint64_t result, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = result;
  v5 = a2 + 64;
  v6 = -1 << *(a2 + 32);
  v7 = (result + 1) & ~v6;
  if ((*(a2 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v9 = ~v6;
    v10 = (sub_22A4DE05C() + 1) & ~v6;
    while (1)
    {
      sub_22A4DE77C();

      sub_22A4DD6BC();
      v11 = sub_22A4DE7BC();

      v12 = v11 & v9;
      if (v4 >= v10)
      {
        break;
      }

      if (v12 < v10)
      {
        goto LABEL_10;
      }

LABEL_11:
      v13 = *(a2 + 48);
      v14 = (v13 + 16 * v4);
      v15 = (v13 + 16 * v7);
      if (v4 != v7 || v14 >= v15 + 1)
      {
        *v14 = *v15;
      }

      v16 = *(a2 + 56);
      v17 = *(*(a3(0) - 8) + 72);
      v18 = v17 * v4;
      result = v16 + v17 * v4;
      v19 = v17 * v7;
      v20 = v16 + v17 * v7 + v17;
      if (v18 < v19 || result >= v20)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v4 = v7;
        if (v18 == v19)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v4 = v7;
LABEL_5:
      v7 = (v7 + 1) & v9;
      if (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v12 < v10)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v4 < v12)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v5 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v4) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

_OWORD *sub_2297FE940(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t *a6)
{
  v10 = MEMORY[0x277D837D0];
  v29 = MEMORY[0x277D837D0];
  *&v28 = a1;
  *(&v28 + 1) = a2;
  v11 = *a6;
  v13 = sub_229543DBC(a3, a4);
  v14 = v11[2];
  v15 = (v12 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = v11[3];
  if (v18 >= v16 && (a5 & 1) != 0)
  {
LABEL_7:
    v19 = *a6;
    if (v17)
    {
LABEL_8:
      v20 = (v19[7] + 32 * v13);
      __swift_destroy_boxed_opaque_existential_0(v20);
      return sub_229543C5C(&v28, v20);
    }

    goto LABEL_11;
  }

  if (v18 >= v16 && (a5 & 1) == 0)
  {
    sub_229897D20();
    goto LABEL_7;
  }

  sub_229893534(v16, a5 & 1);
  v22 = sub_229543DBC(a3, a4);
  if ((v17 & 1) != (v23 & 1))
  {
LABEL_14:
    result = sub_22A4DE67C();
    __break(1u);
    return result;
  }

  v13 = v22;
  v19 = *a6;
  if (v17)
  {
    goto LABEL_8;
  }

LABEL_11:
  v24 = __swift_mutable_project_boxed_opaque_existential_0(&v28, v10);
  MEMORY[0x28223BE20](v24);
  v26 = (&v28 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v27 + 16))(v26);
  sub_2297FFBEC(v13, a3, a4, *v26, v26[1], v19, v10);

  return __swift_destroy_boxed_opaque_existential_0(&v28);
}

_OWORD *sub_2297FEB50(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5, uint64_t *a6, uint64_t *a7)
{
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(a6, a7);
  v33 = v14;
  *&v32 = a1;
  v15 = *a5;
  v17 = sub_229543DBC(a2, a3);
  v18 = v15[2];
  v19 = (v16 & 1) == 0;
  v20 = v18 + v19;
  if (__OFADD__(v18, v19))
  {
    __break(1u);
    goto LABEL_14;
  }

  v21 = v16;
  v22 = v15[3];
  if (v22 >= v20 && (a4 & 1) != 0)
  {
LABEL_7:
    v23 = *a5;
    if (v21)
    {
LABEL_8:
      v24 = (v23[7] + 32 * v17);
      __swift_destroy_boxed_opaque_existential_0(v24);
      return sub_229543C5C(&v32, v24);
    }

    goto LABEL_11;
  }

  if (v22 >= v20 && (a4 & 1) == 0)
  {
    sub_229897D20();
    goto LABEL_7;
  }

  sub_229893534(v20, a4 & 1);
  v26 = sub_229543DBC(a2, a3);
  if ((v21 & 1) != (v27 & 1))
  {
LABEL_14:
    result = sub_22A4DE67C();
    __break(1u);
    return result;
  }

  v17 = v26;
  v23 = *a5;
  if (v21)
  {
    goto LABEL_8;
  }

LABEL_11:
  v28 = __swift_mutable_project_boxed_opaque_existential_0(&v32, v14);
  MEMORY[0x28223BE20](v28);
  v30 = (&v32 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v31 + 16))(v30);
  sub_2297FFAC0(v17, a2, a3, *v30, v23, a6, a7);

  return __swift_destroy_boxed_opaque_existential_0(&v32);
}

_OWORD *sub_2297FED80(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v10 = sub_229562F68(0, &qword_281401770, 0x277CCABB0);
  v29 = v10;
  *&v28 = a1;
  v11 = *a5;
  v13 = sub_229543DBC(a2, a3);
  v14 = v11[2];
  v15 = (v12 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = v11[3];
  if (v18 >= v16 && (a4 & 1) != 0)
  {
LABEL_7:
    v19 = *a5;
    if (v17)
    {
LABEL_8:
      v20 = (v19[7] + 32 * v13);
      __swift_destroy_boxed_opaque_existential_0(v20);
      return sub_229543C5C(&v28, v20);
    }

    goto LABEL_11;
  }

  if (v18 >= v16 && (a4 & 1) == 0)
  {
    sub_229897D20();
    goto LABEL_7;
  }

  sub_229893534(v16, a4 & 1);
  v22 = sub_229543DBC(a2, a3);
  if ((v17 & 1) != (v23 & 1))
  {
LABEL_14:
    result = sub_22A4DE67C();
    __break(1u);
    return result;
  }

  v13 = v22;
  v19 = *a5;
  if (v17)
  {
    goto LABEL_8;
  }

LABEL_11:
  v24 = __swift_mutable_project_boxed_opaque_existential_0(&v28, v10);
  MEMORY[0x28223BE20](v24);
  v26 = (&v28 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v27 + 16))(v26);
  sub_2297FF988(v13, a2, a3, *v26, v19);

  return __swift_destroy_boxed_opaque_existential_0(&v28);
}

_OWORD *sub_2297FEF7C(char a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  LOBYTE(v23) = a1;
  v24 = MEMORY[0x277D839B0];
  v9 = *a5;
  v11 = sub_229543DBC(a2, a3);
  v12 = v9[2];
  v13 = (v10 & 1) == 0;
  v14 = v12 + v13;
  if (__OFADD__(v12, v13))
  {
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = v9[3];
  if (v16 >= v14 && (a4 & 1) != 0)
  {
LABEL_7:
    v17 = *a5;
    if (v15)
    {
LABEL_8:
      v18 = (v17[7] + 32 * v11);
      __swift_destroy_boxed_opaque_existential_0(v18);
      return sub_229543C5C(&v23, v18);
    }

    goto LABEL_11;
  }

  if (v16 >= v14 && (a4 & 1) == 0)
  {
    sub_229897D20();
    goto LABEL_7;
  }

  sub_229893534(v14, a4 & 1);
  v20 = sub_229543DBC(a2, a3);
  if ((v15 & 1) != (v21 & 1))
  {
LABEL_14:
    result = sub_22A4DE67C();
    __break(1u);
    return result;
  }

  v11 = v20;
  v17 = *a5;
  if (v15)
  {
    goto LABEL_8;
  }

LABEL_11:
  v22 = __swift_mutable_project_boxed_opaque_existential_0(&v23, MEMORY[0x277D839B0]);
  sub_2297FFA3C(v11, a2, a3, *v22, v17);

  return __swift_destroy_boxed_opaque_existential_0(&v23);
}

_OWORD *sub_2297FF0D4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  *&v24 = a1;
  v25 = MEMORY[0x277D83B88];
  v9 = *a5;
  v11 = sub_229543DBC(a2, a3);
  v12 = v9[2];
  v13 = (v10 & 1) == 0;
  v14 = v12 + v13;
  if (__OFADD__(v12, v13))
  {
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = v9[3];
  if (v16 >= v14 && (a4 & 1) != 0)
  {
LABEL_7:
    v17 = *a5;
    if (v15)
    {
LABEL_8:
      v18 = (v17[7] + 32 * v11);
      __swift_destroy_boxed_opaque_existential_0(v18);
      return sub_229543C5C(&v24, v18);
    }

    goto LABEL_11;
  }

  if (v16 >= v14 && (a4 & 1) == 0)
  {
    sub_229897D20();
    goto LABEL_7;
  }

  sub_229893534(v14, a4 & 1);
  v20 = sub_229543DBC(a2, a3);
  if ((v15 & 1) != (v21 & 1))
  {
LABEL_14:
    result = sub_22A4DE67C();
    __break(1u);
    return result;
  }

  v11 = v20;
  v17 = *a5;
  if (v15)
  {
    goto LABEL_8;
  }

LABEL_11:
  v22 = MEMORY[0x277D83B88];
  v23 = __swift_mutable_project_boxed_opaque_existential_0(&v24, MEMORY[0x277D83B88]);
  sub_2297FFC68(v11, a2, a3, *v23, v17, v22);

  return __swift_destroy_boxed_opaque_existential_0(&v24);
}

_OWORD *sub_2297FF248(uint64_t a1, uint64_t a2, char a3, uint64_t *a4, double a5)
{
  v23[0] = a5;
  v24 = MEMORY[0x277D839F8];
  v9 = *a4;
  v11 = sub_229543DBC(a1, a2);
  v12 = v9[2];
  v13 = (v10 & 1) == 0;
  v14 = v12 + v13;
  if (__OFADD__(v12, v13))
  {
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = v9[3];
  if (v16 >= v14 && (a3 & 1) != 0)
  {
LABEL_7:
    v17 = *a4;
    if (v15)
    {
LABEL_8:
      v18 = (v17[7] + 32 * v11);
      __swift_destroy_boxed_opaque_existential_0(v18);
      return sub_229543C5C(v23, v18);
    }

    goto LABEL_11;
  }

  if (v16 >= v14 && (a3 & 1) == 0)
  {
    sub_229897D20();
    goto LABEL_7;
  }

  sub_229893534(v14, a3 & 1);
  v20 = sub_229543DBC(a1, a2);
  if ((v15 & 1) != (v21 & 1))
  {
LABEL_14:
    result = sub_22A4DE67C();
    __break(1u);
    return result;
  }

  v11 = v20;
  v17 = *a4;
  if (v15)
  {
    goto LABEL_8;
  }

LABEL_11:
  v22 = __swift_mutable_project_boxed_opaque_existential_0(v23, MEMORY[0x277D839F8]);
  sub_2297FFB68(v11, a1, a2, v17, *v22);

  return __swift_destroy_boxed_opaque_existential_0(v23);
}

_OWORD *sub_2297FF398(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t *a6)
{
  v10 = MEMORY[0x277CC9318];
  v29 = MEMORY[0x277CC9318];
  *&v28 = a1;
  *(&v28 + 1) = a2;
  v11 = *a6;
  v13 = sub_229543DBC(a3, a4);
  v14 = v11[2];
  v15 = (v12 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = v11[3];
  if (v18 >= v16 && (a5 & 1) != 0)
  {
LABEL_7:
    v19 = *a6;
    if (v17)
    {
LABEL_8:
      v20 = (v19[7] + 32 * v13);
      __swift_destroy_boxed_opaque_existential_0(v20);
      return sub_229543C5C(&v28, v20);
    }

    goto LABEL_11;
  }

  if (v18 >= v16 && (a5 & 1) == 0)
  {
    sub_229897D20();
    goto LABEL_7;
  }

  sub_229893534(v16, a5 & 1);
  v22 = sub_229543DBC(a3, a4);
  if ((v17 & 1) != (v23 & 1))
  {
LABEL_14:
    result = sub_22A4DE67C();
    __break(1u);
    return result;
  }

  v13 = v22;
  v19 = *a6;
  if (v17)
  {
    goto LABEL_8;
  }

LABEL_11:
  v24 = __swift_mutable_project_boxed_opaque_existential_0(&v28, v10);
  MEMORY[0x28223BE20](v24);
  v26 = (&v28 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v27 + 16))(v26);
  sub_2297FFBEC(v13, a3, a4, *v26, v26[1], v19, v10);

  return __swift_destroy_boxed_opaque_existential_0(&v28);
}

_OWORD *sub_2297FF580(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  *&v27 = a1;
  v9 = MEMORY[0x277D83E88];
  v28 = MEMORY[0x277D83E88];
  v10 = *a5;
  v12 = sub_229543DBC(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_14;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 >= v15 && (a4 & 1) != 0)
  {
LABEL_7:
    v18 = *a5;
    if (v16)
    {
LABEL_8:
      v19 = (v18[7] + 32 * v12);
      __swift_destroy_boxed_opaque_existential_0(v19);
      return sub_229543C5C(&v27, v19);
    }

    goto LABEL_11;
  }

  if (v17 >= v15 && (a4 & 1) == 0)
  {
    sub_229897D20();
    goto LABEL_7;
  }

  sub_229893534(v15, a4 & 1);
  v21 = sub_229543DBC(a2, a3);
  if ((v16 & 1) != (v22 & 1))
  {
LABEL_14:
    result = sub_22A4DE67C();
    __break(1u);
    return result;
  }

  v12 = v21;
  v18 = *a5;
  if (v16)
  {
    goto LABEL_8;
  }

LABEL_11:
  v23 = __swift_mutable_project_boxed_opaque_existential_0(&v27, v9);
  MEMORY[0x28223BE20](v23);
  v25 = (&v27 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v26 + 16))(v25);
  sub_2297FFC68(v12, a2, a3, *v25, v18, v9);

  return __swift_destroy_boxed_opaque_existential_0(&v27);
}

_OWORD *sub_2297FF768(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5, uint64_t a6)
{
  v31 = a6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v30);
  (*(*(a6 - 8) + 32))(boxed_opaque_existential_1, a1, a6);
  v13 = *a5;
  v15 = sub_229543DBC(a2, a3);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_14;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 >= v18 && (a4 & 1) != 0)
  {
LABEL_7:
    v21 = *a5;
    if (v19)
    {
LABEL_8:
      v22 = (v21[7] + 32 * v15);
      __swift_destroy_boxed_opaque_existential_0(v22);
      return sub_229543C5C(&v30, v22);
    }

    goto LABEL_11;
  }

  if (v20 >= v18 && (a4 & 1) == 0)
  {
    sub_229897D20();
    goto LABEL_7;
  }

  sub_229893534(v18, a4 & 1);
  v24 = sub_229543DBC(a2, a3);
  if ((v19 & 1) != (v25 & 1))
  {
LABEL_14:
    result = sub_22A4DE67C();
    __break(1u);
    return result;
  }

  v15 = v24;
  v21 = *a5;
  if (v19)
  {
    goto LABEL_8;
  }

LABEL_11:
  v26 = __swift_mutable_project_boxed_opaque_existential_0(&v30, v31);
  MEMORY[0x28223BE20](v26);
  v28 = &v30 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v29 + 16))(v28);
  sub_2297FFCE4(v15, a2, a3, v28, v21, a6);

  return __swift_destroy_boxed_opaque_existential_0(&v30);
}

_OWORD *sub_2297FF988(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v16 = sub_229562F68(0, &qword_281401770, 0x277CCABB0);
  *&v15 = a4;
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v10 = (a5[6] + 16 * a1);
  *v10 = a2;
  v10[1] = a3;
  result = sub_229543C5C(&v15, (a5[7] + 32 * a1));
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

_OWORD *sub_2297FFA3C(unint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  LOBYTE(v11) = a4;
  v12 = MEMORY[0x277D839B0];
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_229543C5C(&v11, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

_OWORD *sub_2297FFAC0(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t *a6, uint64_t *a7)
{
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(a6, a7);
  *&v17 = a4;
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v12 = (a5[6] + 16 * a1);
  *v12 = a2;
  v12[1] = a3;
  result = sub_229543C5C(&v17, (a5[7] + 32 * a1));
  v14 = a5[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v16;
  }

  return result;
}

_OWORD *sub_2297FFB68(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, double a5)
{
  v11[0] = a5;
  v12 = MEMORY[0x277D839F8];
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a4[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_229543C5C(v11, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

_OWORD *sub_2297FFBEC(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7)
{
  v14 = a7;
  *&v13 = a4;
  *(&v13 + 1) = a5;
  a6[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a6[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  result = sub_229543C5C(&v13, (a6[7] + 32 * a1));
  v10 = a6[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v12;
  }

  return result;
}

_OWORD *sub_2297FFC68(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v13 = a6;
  *&v12 = a4;
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v7 = (a5[6] + 16 * a1);
  *v7 = a2;
  v7[1] = a3;
  result = sub_229543C5C(&v12, (a5[7] + 32 * a1));
  v9 = a5[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v11;
  }

  return result;
}

_OWORD *sub_2297FFCE4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v19 = a6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v18);
  (*(*(a6 - 8) + 32))(boxed_opaque_existential_1, a4, a6);
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v13 = (a5[6] + 16 * a1);
  *v13 = a2;
  v13[1] = a3;
  result = sub_229543C5C(&v18, (a5[7] + 32 * a1));
  v15 = a5[2];
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v17;
  }

  return result;
}

BOOL sub_2297FFDB8(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  result = (*a1 | *a2) == 0;
  if (v2)
  {
    v5 = v3 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    sub_229562F68(0, &qword_281401770, 0x277CCABB0);
    v6 = v2;
    v7 = v3;
    v8 = sub_22A4DDEDC();

    return v8 & 1;
  }

  return result;
}

uint64_t sub_2297FFF94(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_229800018(unint64_t a1, void *a2, uint64_t a3, unint64_t *a4, void *a5)
{
  if (a1 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_22A4DE0EC())
  {
    v9 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x22AAD13F0](v9, a1);
      }

      else
      {
        if (v9 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v10 = *(a1 + 8 * v9 + 32);
      }

      v11 = v10;
      v12 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      v16 = v10;
      sub_2297F8C24(&v16, a2, a3, a4, a5);

      if (!v5)
      {
        ++v9;
        if (v12 != i)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }
}

uint64_t sub_2298001DC(uint64_t a1)
{
  v4 = v1[3];
  v12 = v1[2];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v9 = v1[8];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_229569B30;

  return sub_2297F0B94(a1, v12, v4, v5, v6, v7, v8, v9);
}

unint64_t sub_2298002FC()
{
  result = qword_27D8819E0;
  if (!qword_27D8819E0)
  {
    sub_229562F68(255, &qword_27D87CEF0, off_278666100);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8819E0);
  }

  return result;
}

uint64_t objectdestroy_60Tm()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t objectdestroyTm_7()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

void sub_229800500(uint64_t a1, void *a2)
{
  v5 = *(sub_22A4DB7DC() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v2 + 16);
  v9 = *(v2 + 24);
  v10 = *(v2 + v7);
  v11 = *(v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_2297F64D4(a1, a2, v8, v9, v2 + v6, v10, v11);
}

void sub_229800614(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = [v2 accessory];
  if (!v6)
  {
    goto LABEL_12;
  }

  v7 = v6;
  v8 = [v6 home];
  if (!v8)
  {

LABEL_12:
    MEMORY[0x28223BE20](v6);
    sub_22A4DD5EC();
    sub_22A4DBCEC();
    sub_22A4DBD1C();

    return;
  }

  v9 = v8;
  v10 = [v7 description];
  sub_22A4DD5EC();

  v11 = [v9 isCurrentDeviceConfirmedPrimaryResident];
  if (v11)
  {
    v12 = [a1 path];
    v23 = v9;
    v13 = [v12 cluster];

    v22[1] = v22;
    MEMORY[0x28223BE20](v14);
    sub_22A4DD5EC();
    sub_22A4DBCEC();
    v15 = v13;
    v16 = v23;
    sub_22A4DBD1C();

    objc_opt_self();
    v17 = swift_dynamicCastObjCClass();
    if (v17)
    {
      v18 = v17;
      v19 = v7;
      if ([v15 unsignedIntValue] == 257)
      {
        v20 = [v16 lockNotificationManager];
        [v20 handleDoorLockEventReport:a1 forAccessory:v18 flow:a2];

        v19 = v20;
      }
    }

    v21 = [objc_msgSend(objc_opt_self() featuresDataSource)];
    swift_unknownObjectRelease();
    if (v21)
    {
      [v3 submitLogEventForEventReport_];
    }
  }

  else
  {
    MEMORY[0x28223BE20](v11);
    sub_22A4DD5EC();
    sub_22A4DBCEC();
    sub_22A4DBD1C();
  }
}

uint64_t sub_229800B20@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D881620, &unk_22A5846F0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v35 - v5;
  v7 = sub_22A4DBC5C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [a1 ifaceName];
  if (v11)
  {
    v12 = v11;
    v13 = sub_22A4DD5EC();

    v14 = [a1 type];
    if (v14)
    {
      v37 = v13;
      v15 = v14;
      v16 = sub_22A4DD5EC();
      v18 = v17;

      v19 = [a1 macAddress];
      if (v19)
      {
        v20 = v19;
        v36 = a2;
        v21 = sub_22A4DD5EC();
        v35[1] = v22;
        v35[2] = v21;

        if (v16 == 0x74656E7265687465 && v18 == 0xE800000000000000 || (sub_22A4DE60C() & 1) != 0)
        {

          v23 = MEMORY[0x277D0EFC0];
        }

        else if (v16 == 0x3132303865656569 && v18 == 0xE900000000000031)
        {

          v23 = MEMORY[0x277D0EFC8];
        }

        else
        {
          v34 = sub_22A4DE60C();

          v23 = MEMORY[0x277D0EFB8];
          if (v34)
          {
            v23 = MEMORY[0x277D0EFC8];
          }
        }

        v24 = v36;
        (*(v8 + 104))(v10, *v23, v7);
        v25 = [a1 ipv4Addresses];
        if (!v25 || (v38 = 0, v26 = v25, sub_22A4DD82C(), v26, !v38))
        {
        }

        v27 = [a1 ipv6Addresses];
        if (!v27 || (v38 = 0, v28 = v27, sub_22A4DD82C(), v28, !v38))
        {
        }

        v29 = sub_22A4DBB8C();
        (*(*(v29 - 8) + 56))(v6, 1, 1, v29);
        sub_22A4DBABC();
        v30 = sub_22A4DBAEC();
        return (*(*(v30 - 8) + 56))(v24, 0, 1, v30);
      }
    }
  }

  v32 = sub_22A4DBAEC();
  v33 = *(*(v32 - 8) + 56);

  return v33(a2, 1, 1, v32);
}

uint64_t sub_229800F88@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 ifaceName];
  if (v4)
  {
    v5 = v4;
    sub_22A4DD5EC();

    [a1 isPrimary];
    v6 = [a1 confirmedIfaceName];
    if (v6)
    {
      v7 = v6;
      sub_22A4DD5EC();
    }

    v9 = [a1 ipv4Addresses];
    if (v9)
    {
      v10 = v9;
      sub_22A4DD82C();
    }

    v11 = [a1 routerIPv4];
    if (v11)
    {
      v12 = v11;
      sub_22A4DD5EC();
    }

    v13 = [a1 networkSignatureV4];
    if (v13)
    {
      v14 = v13;
      sub_22A4DD5EC();
    }

    v15 = [a1 ipv6Addresses];
    if (v15)
    {
      v16 = v15;
      sub_22A4DD82C();
    }

    v17 = [a1 routerIPv6];
    if (v17)
    {
      v18 = v17;
      sub_22A4DD5EC();
    }

    v19 = [a1 networkSignatureV6];
    if (v19)
    {
      v20 = v19;
      sub_22A4DD5EC();
    }

    sub_22A4DBC1C();
    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  v21 = sub_22A4DBC3C();
  v22 = *(*(v21 - 8) + 56);

  return v22(a2, v8, 1, v21);
}

id sub_229801258()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D881620, &unk_22A5846F0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v45 - v1;
  v3 = sub_22A4DBB8C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22A4DBC5C();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v45 - v12;
  v14 = [objc_allocWithZone(MEMORY[0x277CD1718]) init];
  if (v14)
  {
    v46 = v6;
    v47 = v4;
    sub_22A4DBA8C();
    v15 = sub_22A4DD5AC();

    [v14 setMacAddress_];

    sub_22A4DBACC();
    v16 = sub_22A4DD5AC();

    [v14 setIfaceName_];

    sub_22A4DBADC();
    (*(v8 + 16))(v11, v13, v7);
    v17 = (*(v8 + 88))(v11, v7);
    v18 = *MEMORY[0x277D0EFB8];
    v48 = v3;
    if (v17 == v18 || v17 == *MEMORY[0x277D0EFC0])
    {
      (*(v8 + 8))(v13, v7);
    }

    else
    {
      v19 = *MEMORY[0x277D0EFC8];
      v20 = *(v8 + 8);
      v21 = v17;
      v20(v13, v7);
      if (v21 != v19)
      {
        v20(v11, v7);
      }
    }

    v22 = v46;
    v23 = sub_22A4DD5AC();

    [v14 setType_];

    v24 = sub_22A4DBA9C();
    sub_229869FC0(v24);

    v25 = objc_allocWithZone(MEMORY[0x277CBEB18]);
    v26 = sub_22A4DD81C();

    v27 = [v25 initWithArray_];

    [v14 setIpv4Addresses_];
    v28 = sub_22A4DBAAC();
    sub_229869FC0(v28);

    v29 = objc_allocWithZone(MEMORY[0x277CBEB18]);
    v30 = sub_22A4DD81C();

    v31 = [v29 initWithArray_];

    [v14 setIpv6Addresses_];
    sub_22A4DBA7C();
    v33 = v47;
    v32 = v48;
    if ((*(v47 + 48))(v2, 1, v48) == 1)
    {
      sub_229804A34(v2);
    }

    else
    {
      (*(v33 + 32))(v22, v2, v32);
      v34 = [objc_allocWithZone(MEMORY[0x277CD1710]) init];
      if (v34)
      {
        v35 = v34;
        v36 = sub_22A4DBB5C();
        v38 = v37;
        v39 = sub_22A4DB61C();
        sub_2295798D4(v36, v38);
        [v35 setSsid_];

        v40 = sub_22A4DBB7C();
        v42 = v41;
        v43 = sub_22A4DB61C();
        sub_2295798D4(v40, v42);
        [v35 setBssid_];

        [v14 setWifiInfo_];
      }

      (*(v33 + 8))(v22, v32);
    }
  }

  return v14;
}

id sub_229801800()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CD1720]) init];
  if (v0)
  {
    sub_22A4DBBBC();
    v1 = sub_22A4DD5AC();

    [v0 setIfaceName_];

    [v0 setIsPrimary_];
    sub_22A4DBC0C();
    if (v2)
    {
      v3 = sub_22A4DD5AC();

      [v0 setConfirmedIfaceName_];
    }

    v4 = sub_22A4DBBCC();
    sub_229869FC0(v4);

    v5 = objc_allocWithZone(MEMORY[0x277CBEB18]);
    v6 = sub_22A4DD81C();

    v7 = [v5 initWithArray_];

    [v0 setIpv4Addresses_];
    v8 = sub_22A4DBBDC();
    sub_229869FC0(v8);

    v9 = objc_allocWithZone(MEMORY[0x277CBEB18]);
    v10 = sub_22A4DD81C();

    v11 = [v9 initWithArray_];

    [v0 setIpv6Addresses_];
    sub_22A4DBBEC();
    if (v12)
    {
      v13 = sub_22A4DD5AC();

      [v0 setNetworkSignatureV4_];
    }

    sub_22A4DBB9C();
    if (v14)
    {
      v15 = sub_22A4DD5AC();

      [v0 setRouterIPv4_];
    }

    sub_22A4DBBFC();
    if (v16)
    {
      v17 = sub_22A4DD5AC();

      [v0 setNetworkSignatureV6_];
    }

    sub_22A4DBBAC();
    if (v18)
    {
      v19 = sub_22A4DD5AC();

      [v0 setRouterIPv6_];
    }
  }

  return v0;
}

void __swiftcall InterfaceInfo.init(name:type:hwAddr:)(HomeKitDaemon::InterfaceInfo *__return_ptr retstr, Swift::String name, Swift::String type, Swift::String hwAddr)
{
  retstr->name = name;
  retstr->type = type;
  retstr->hwAddr = hwAddr;
}

id NetworkInfoController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id NetworkInfoController.init()()
{
  type metadata accessor for NetworkInfoSCDataSource();
  v0 = swift_allocObject();
  v1 = sub_2298047A4(v0);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v1;
}

Swift::Void __swiftcall NetworkInfoController.start()()
{
  v1 = *MEMORY[0x277CBECE8];
  v2 = sub_22A4DD5AC();
  v3 = SCDynamicStoreCreate(v1, v2, 0, 0);

  v4 = *(v0 + OBJC_IVAR___HMDNetworkInfoController_store);
  *(v0 + OBJC_IVAR___HMDNetworkInfoController_store) = v3;
}

void sub_229801D68()
{
  v305 = sub_22A4DBC3C();
  v308 = *(v305 - 8);
  MEMORY[0x28223BE20](v305);
  v301 = &v300 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_22A4DBAEC();
  v3 = *(v2 - 8);
  v316 = v2;
  v317 = v3;
  MEMORY[0x28223BE20](v2);
  v5 = &v300 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D881620, &unk_22A5846F0);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v314 = &v300 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v339 = &v300 - v9;
  v10 = sub_22A4DBC5C();
  length = v10[-1].length;
  v12 = MEMORY[0x28223BE20](v10);
  v329 = &v300 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v300 - v14;
  v16 = *(v0 + OBJC_IVAR___HMDNetworkInfoController_store);
  if (!v16)
  {
    v109 = sub_22A4DD05C();
    v110 = sub_22A4DDCEC();
    if (os_log_type_enabled(v109, v110))
    {
      v111 = swift_slowAlloc();
      *v111 = 0;
      _os_log_impl(&dword_229538000, v109, v110, "No store", v111, 2u);
      MEMORY[0x22AAD4E50](v111, -1, -1);
    }

    goto LABEL_90;
  }

  v319 = v0;
  v341 = v16;
  sub_229804A9C();
  v19 = *(v17 + 16);
  if (!v19)
  {

    v109 = sub_22A4DD05C();
    v123 = sub_22A4DDCEC();
    if (os_log_type_enabled(v109, v123))
    {
      v124 = swift_slowAlloc();
      *v124 = 0;
      _os_log_impl(&dword_229538000, v109, v123, "Couldn't obtain interfaces", v124, 2u);
      MEMORY[0x22AAD4E50](v124, -1, -1);
    }

LABEL_90:
    return;
  }

  v318 = OBJC_IVAR___HMDNetworkInfoController_logger;
  LODWORD(v330) = *MEMORY[0x277D0EFC8];
  v21 = *(length + 104);
  v20 = (length + 104);
  v335 = (v20 - 96);
  v336 = v21;
  v304 = *MEMORY[0x277D0EFC0];
  v334 = *MEMORY[0x277CE1648];
  v315 = *MEMORY[0x277CE1688];
  v333 = *MEMORY[0x277CBECE8];
  v307 = *MEMORY[0x277CE1728];
  v313 = *MEMORY[0x277CE1690];
  v306 = *MEMORY[0x277CE1758];
  v337 = v20;
  v303 = *MEMORY[0x277CE1660];
  v310 = v317 + 1;
  v311 = (v20 - 88);
  v300 = v17;
  v22 = (v17 + 72);
  v23 = MEMORY[0x277D84F90];
  *&v18 = 136316162;
  v302 = v18;
  v312 = v5;
  NetworkGlobalEntity = v10;
  v338 = v15;
  do
  {
    v331 = v23;
    v24 = *(v22 - 4);
    v342 = *(v22 - 5);
    v343 = v24;
    v25 = *(v22 - 3);
    v26 = *(v22 - 2);
    v28 = *(v22 - 1);
    v27 = *v22;
    v336(v15, v330, v10);
    v344 = v26;
    v29 = v25 == 0x3132303845454549 && v26 == 0xE900000000000031;
    v30 = v25;
    v328 = v22;
    v332 = v28;
    if (!v29)
    {
      if ((sub_22A4DE60C() & 1) == 0)
      {
        v31 = v25 == 0x74656E7265687445 && v344 == 0xE800000000000000;
        if (!v31 && (sub_22A4DE60C() & 1) == 0)
        {
          (*v335)(v15, v10);
          v23 = v331;
          goto LABEL_58;
        }
      }

      if (v25 == 0x74656E7265687445 && v344 == 0xE800000000000000)
      {
        goto LABEL_19;
      }
    }

    if (sub_22A4DE60C())
    {
LABEL_19:
      v33 = *v335;

      v33(v15, v10);
      v34 = v10;
      v336(v15, v304, v10);
    }

    else
    {
      v34 = v10;
    }

    NetworkServiceEntity = v30;
    v35 = MEMORY[0x277D84F90];
    *&v354 = MEMORY[0x277D84F90];
    *&v346 = MEMORY[0x277D84F90];
    v36 = sub_22A4DD5AC();
    NetworkInterfaceEntity = SCDynamicStoreKeyCreateNetworkInterfaceEntity(v333, v334, v36, v315);

    v326 = NetworkInterfaceEntity;
    v38 = sub_229804D9C(v341, NetworkInterfaceEntity);
    sub_22976F210(v38);
    v40 = v39;

    v340 = v27;
    if (v40)
    {
      v41 = sub_22A4DD5EC();
      if (*(v40 + 16))
      {
        v43 = sub_229543DBC(v41, v42);
        v45 = v44;

        if (v45)
        {
          v46 = *(*(v40 + 56) + 8 * v43);

          swift_beginAccess();
          *&v354 = v46;
        }

        else
        {

          v46 = v35;
        }

        v34 = NetworkGlobalEntity;
      }

      else
      {

        v46 = v35;
      }
    }

    else
    {
      v46 = v35;
    }

    v47 = sub_22A4DD5AC();
    v48 = SCDynamicStoreKeyCreateNetworkInterfaceEntity(v333, v334, v47, v313);

    v324 = v48;
    v49 = sub_229804D9C(v341, v48);
    sub_22976F234(v49);
    v51 = v50;

    v327 = v19;
    if (v51)
    {
      v52 = sub_22A4DD5EC();
      if (*(v51 + 16))
      {
        v54 = sub_229543DBC(v52, v53);
        v56 = v55;

        if (v56)
        {
          v57 = *(*(v51 + 56) + 8 * v54);

          v58 = sub_22986AF98(v57);

          if (v58)
          {
            v35 = v58;
          }

          else
          {
            v35 = MEMORY[0x277D84F90];
          }

          swift_beginAccess();
          *&v346 = v35;
        }

        else
        {

          v35 = MEMORY[0x277D84F90];
        }

        v59 = NetworkGlobalEntity;
      }

      else
      {

        v59 = v34;
      }
    }

    else
    {
      v59 = v34;
    }

    v323 = v35;
    v325 = v46;
    v60 = sub_22A4DBB8C();
    v61 = *(*(v60 - 8) + 56);
    v61(v339, 1, 1, v60);
    v62 = v329;
    v336(v329, v330, v59);
    v63 = sub_22A4DBC4C();
    v322 = *v335;
    v322(v62, v59);
    if (v63)
    {
      v64 = sub_22A4DD5AC();
      v65 = SCDynamicStoreKeyCreateNetworkInterfaceEntity(v333, v334, v64, v303);

      v66 = sub_229804D9C(v341, v65);
      if (*(v66 + 16) && (v67 = sub_229543DBC(0x4449535342, 0xE500000000000000), (v68 & 1) != 0) && (v345[0] = *(*(v66 + 56) + 8 * v67), swift_unknownObjectRetain(), (swift_dynamicCast() & 1) != 0))
      {
        v69 = v362;
        if (*(v66 + 16))
        {
          v70 = sub_229543DBC(1145656147, 0xE400000000000000);
          if (v71)
          {
            v72 = *(*(v66 + 56) + 8 * v70);
            swift_unknownObjectRetain();

            v345[0] = v72;
            if (swift_dynamicCast())
            {
              v73 = v314;
              sub_22A4DBB6C();

              v74 = v339;
              sub_229804A34(v339);
              v61(v73, 0, 1, v60);
              sub_229804F54(v73, v74);
            }

            else
            {

              sub_2295798D4(v69, *(&v69 + 1));
            }

            v59 = NetworkGlobalEntity;
            goto LABEL_50;
          }
        }

        sub_2295798D4(v69, *(&v69 + 1));
      }

      else
      {
      }

      v59 = NetworkGlobalEntity;
    }

LABEL_50:

    v75 = sub_22A4DD05C();
    v76 = sub_22A4DDCDC();

    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      v309 = swift_slowAlloc();
      *&v362 = v309;
      *v77 = v302;

      v79 = MEMORY[0x277D837D0];
      v80 = MEMORY[0x22AAD0A20](v78, MEMORY[0x277D837D0]);
      v82 = v81;

      v83 = sub_2295A3E30(v80, v82, &v362);

      *(v77 + 4) = v83;
      *(v77 + 12) = 2080;

      v85 = v344;
      v86 = MEMORY[0x22AAD0A20](v84, v79);
      v88 = v87;

      v89 = sub_2295A3E30(v86, v88, &v362);

      *(v77 + 14) = v89;
      *(v77 + 22) = 2080;

      v90 = sub_2295A3E30(v332, v340, &v362);

      *(v77 + 24) = v90;
      *(v77 + 32) = 2080;
      v91 = v343;

      v92 = sub_2295A3E30(v342, v91, &v362);

      *(v77 + 34) = v92;
      *(v77 + 42) = 2080;

      v93 = sub_2295A3E30(NetworkServiceEntity, v85, &v362);

      *(v77 + 44) = v93;
      _os_log_impl(&dword_229538000, v75, v76, "ObtainedIP: %s  %s mac: %s name: %s type: %s", v77, 0x34u);
      v94 = v309;
      swift_arrayDestroy();
      v95 = v312;
      MEMORY[0x22AAD4E50](v94, -1, -1);
      v59 = NetworkGlobalEntity;
      MEMORY[0x22AAD4E50](v77, -1, -1);

      v96 = v338;
      v19 = v327;
    }

    else
    {

      v96 = v338;
      v19 = v327;
      v95 = v312;
    }

    v97 = v59;
    (*v311)(v329, v96, v59);
    sub_229804EE4(v339, v314);

    v98 = v95;
    sub_22A4DBABC();

    v23 = v331;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v23 = sub_22958AD60(0, v23[2] + 1, 1, v23);
    }

    v100 = v23[2];
    v99 = v23[3];
    v10 = v97;
    if (v100 >= v99 >> 1)
    {
      v23 = sub_22958AD60((v99 > 1), v100 + 1, 1, v23);
    }

    v15 = v338;

    sub_229804A34(v339);
    v322(v15, v10);
    v23[2] = v100 + 1;
    (v317[1].isa)(v23 + ((LOBYTE(v317[2].data) + 32) & ~LOBYTE(v317[2].data)) + v317[2].info * v100, v98, v316);

    v22 = v328;
LABEL_58:
    v22 += 6;
    --v19;
  }

  while (v19);

  NetworkGlobalEntity = SCDynamicStoreKeyCreateNetworkGlobalEntity(v333, v334, v315);
  v101 = sub_229804D9C(v341, NetworkGlobalEntity);
  v102 = v101;
  if (*(v101 + 16) && (v103 = sub_229543DBC(0x537972616D697250, 0xEE00656369767265), (v104 & 1) != 0))
  {
    v105 = *(*(v102 + 56) + 8 * v103);
    swift_unknownObjectRetain();

    *&v354 = v105;
    v106 = swift_dynamicCast();
    v107 = v362;
    if (!v106)
    {
      v107 = 0;
    }

    v339 = v107;
    if (v106)
    {
      v108 = *(&v362 + 1);
    }

    else
    {
      v108 = 0;
    }
  }

  else
  {

    v339 = 0;
    v108 = 0;
  }

  v112 = sub_22A4DD05C();
  v113 = sub_22A4DDCCC();

  v114 = os_log_type_enabled(v112, v113);
  v331 = v23;
  if (v114)
  {
    v115 = swift_slowAlloc();
    v116 = swift_slowAlloc();
    *&v362 = v116;
    *v115 = 136315138;
    if (v108)
    {
      v117 = v339;
    }

    else
    {
      v117 = 7104878;
    }

    if (v108)
    {
      v118 = v108;
    }

    else
    {
      v118 = 0xE300000000000000;
    }

    v119 = sub_2295A3E30(v117, v118, &v362);

    *(v115 + 4) = v119;
    _os_log_impl(&dword_229538000, v112, v113, "primaryServiceName %s", v115, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v116);
    MEMORY[0x22AAD4E50](v116, -1, -1);
    MEMORY[0x22AAD4E50](v115, -1, -1);
  }

  v325 = *MEMORY[0x277CE1628];
  NetworkServiceEntity = SCDynamicStoreKeyCreateNetworkServiceEntity(v333, v334, v325, v315);
  v120 = SCDynamicStoreCopyKeyList(v341, NetworkServiceEntity);
  v121 = MEMORY[0x277D84F90];
  if (v120)
  {
    v122 = v120;
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      *&v362 = 0;
      type metadata accessor for CFString(0);
      sub_22A4DD82C();

      if (v362)
      {
        v121 = v362;
      }
    }

    else
    {
    }
  }

  v125 = sub_22A4DD05C();
  v126 = sub_22A4DDCCC();
  v127 = os_log_type_enabled(v125, v126);
  v340 = v121;
  if (v127)
  {
    v128 = swift_slowAlloc();
    v129 = swift_slowAlloc();
    *&v362 = v129;
    *v128 = 136315138;
    type metadata accessor for CFString(0);
    v131 = MEMORY[0x22AAD0A20](v121, v130);
    v133 = sub_2295A3E30(v131, v132, &v362);

    *(v128 + 4) = v133;
    v121 = v340;
    _os_log_impl(&dword_229538000, v125, v126, "v4ServiceKeys %s", v128, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v129);
    MEMORY[0x22AAD4E50](v129, -1, -1);
    MEMORY[0x22AAD4E50](v128, -1, -1);
  }

  if (v121 >> 62)
  {
    goto LABEL_254;
  }

  v134 = *((v121 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_96:
  v336 = v108;
  if (!v134)
  {
    v344 = MEMORY[0x277D84F90];
LABEL_160:

    v317 = SCDynamicStoreKeyCreateNetworkServiceEntity(v333, v334, v325, v313);
    v186 = SCDynamicStoreCopyKeyList(v341, v317);
    v187 = MEMORY[0x277D84F90];
    if (v186)
    {
      v188 = v186;
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        *&v362 = 0;
        type metadata accessor for CFString(0);
        sub_22A4DD82C();

        if (v362)
        {
          v189 = v362;
        }

        else
        {
          v189 = v187;
        }
      }

      else
      {

        v189 = MEMORY[0x277D84F90];
      }
    }

    else
    {
      v189 = MEMORY[0x277D84F90];
    }

    v190 = sub_22A4DD05C();
    v191 = sub_22A4DDCCC();
    v192 = os_log_type_enabled(v190, v191);
    v326 = v189;
    if (v192)
    {
      v193 = swift_slowAlloc();
      v194 = swift_slowAlloc();
      *&v362 = v194;
      *v193 = 136315138;
      type metadata accessor for CFString(0);
      v196 = MEMORY[0x22AAD0A20](v189, v195);
      v198 = sub_2295A3E30(v196, v197, &v362);
      v189 = v326;

      *(v193 + 4) = v198;
      _os_log_impl(&dword_229538000, v190, v191, "v6serviceKeys %s", v193, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v194);
      MEMORY[0x22AAD4E50](v194, -1, -1);
      MEMORY[0x22AAD4E50](v193, -1, -1);
    }

    v199 = v344;
    v200 = MEMORY[0x277CE16F0];
    if (v189 >> 62)
    {
      v272 = MEMORY[0x277CE16F0];
      v273 = sub_22A4DE0EC();
      v200 = v272;
      v201 = v273;
      if (v273)
      {
        goto LABEL_171;
      }
    }

    else
    {
      v201 = *((v189 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v201)
      {
LABEL_171:
        v121 = 0;
        v342 = *v200;
        v343 = v189 & 0xC000000000000001;
        v337 = (v189 + 32);
        v338 = v189 & 0xFFFFFFFFFFFFFF8;
        v324 = "ntroller";
        v315 = "NetworkSignature";
        v325 = *MEMORY[0x277CE1780];
        v340 = v201;
        do
        {
          if (v343)
          {
            v202 = MEMORY[0x22AAD13F0](v121, v189);
          }

          else
          {
            if (v121 >= *(v338 + 16))
            {
              goto LABEL_252;
            }

            v202 = *&v337[8 * v121];
          }

          v203 = v202;
          if (__OFADD__(v121++, 1))
          {
            __break(1u);
LABEL_252:
            __break(1u);
LABEL_253:
            __break(1u);
LABEL_254:
            v134 = sub_22A4DE0EC();
            goto LABEL_96;
          }

          v205 = SCDynamicStoreCopyValue(v341, v202);
          v344 = v199;
          if (v205)
          {
            v206 = v205;
            TypeID = CFDictionaryGetTypeID();
            if (TypeID == CFGetTypeID(v206) && (*&v362 = v206, swift_unknownObjectRetain(), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D881628, &qword_22A584700), (swift_dynamicCast() & 1) != 0))
            {
              swift_unknownObjectRelease();
              v208 = v354;
            }

            else
            {
              v208 = sub_22956AED0(v187);
              swift_unknownObjectRelease();
            }
          }

          else
          {
            v208 = MEMORY[0x277D84F98];
          }

          v209 = sub_22A4DD5EC();
          if (*(v208 + 16))
          {
            v211 = sub_229543DBC(v209, v210);
            v213 = v212;

            if (v213)
            {
              *&v354 = *(*(v208 + 56) + 8 * v211);
              swift_unknownObjectRetain();
              if (swift_dynamicCast())
              {
                v214 = v362;
                if (v108)
                {
                  *&v362 = sub_22A4DD5EC();
                  *(&v362 + 1) = v215;
                  *&v354 = v339;
                  *(&v354 + 1) = v108;
                  sub_22962F254();

                  LODWORD(v332) = sub_22A4DDFFC();

                  if (*(v208 + 16))
                  {
                    goto LABEL_190;
                  }

LABEL_201:
                  v334 = 0;
                  v335 = 0;
LABEL_210:
                  v328 = 0;
                  v333 = 0;
                }

                else
                {
                  LODWORD(v332) = 0;
                  if (!*(v208 + 16))
                  {
                    goto LABEL_201;
                  }

LABEL_190:
                  v216 = sub_229543DBC(0xD000000000000010, v324 | 0x8000000000000000);
                  if (v217)
                  {
                    *&v354 = *(*(v208 + 56) + 8 * v216);
                    swift_unknownObjectRetain();
                    v218 = swift_dynamicCast();
                    if (v218)
                    {
                      v219 = v362;
                    }

                    else
                    {
                      v219 = 0;
                    }

                    if (v218)
                    {
                      v220 = *(&v362 + 1);
                    }

                    else
                    {
                      v220 = 0;
                    }

                    v334 = v220;
                    v335 = v219;
                    if (!*(v208 + 16))
                    {
                      goto LABEL_210;
                    }
                  }

                  else
                  {
                    v334 = 0;
                    v335 = 0;
                    if (!*(v208 + 16))
                    {
                      goto LABEL_210;
                    }
                  }

                  v221 = sub_229543DBC(0xD000000000000016, v315 | 0x8000000000000000);
                  if ((v222 & 1) == 0)
                  {
                    goto LABEL_210;
                  }

                  *&v354 = *(*(v208 + 56) + 8 * v221);
                  swift_unknownObjectRetain();
                  v223 = swift_dynamicCast();
                  v224 = v362;
                  if (!v223)
                  {
                    v224 = 0;
                  }

                  v328 = v224;
                  if (v223)
                  {
                    v225 = *(&v362 + 1);
                  }

                  else
                  {
                    v225 = 0;
                  }

                  v333 = v225;
                }

                v226 = sub_22A4DD5EC();
                if (*(v208 + 16))
                {
                  v228 = sub_229543DBC(v226, v227);
                  v230 = v229;

                  if (v230)
                  {
                    *&v354 = *(*(v208 + 56) + 8 * v228);
                    swift_unknownObjectRetain();
                    v231 = swift_dynamicCast();
                    v232 = v362;
                    if (!v231)
                    {
                      v232 = 0;
                    }

                    v327 = v232;
                    if (v231)
                    {
                      v233 = *(&v362 + 1);
                    }

                    else
                    {
                      v233 = 0;
                    }

                    v330 = v233;
LABEL_221:
                    v234 = MEMORY[0x277D84F90];
                    v235 = sub_22A4DD5EC();
                    if (*(v208 + 16))
                    {
                      v237 = sub_229543DBC(v235, v236);
                      v239 = v238;

                      if (v239)
                      {
                        v240 = *(*(v208 + 56) + 8 * v237);
                        swift_unknownObjectRetain();

                        *&v362 = v240;
                        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E400, "ll\b");
                        if (swift_dynamicCast())
                        {
                          v329 = v354;
                          v199 = v344;
                          v234 = MEMORY[0x277D84F90];
                          goto LABEL_229;
                        }
                      }

                      else
                      {
                      }

                      v234 = MEMORY[0x277D84F90];
                    }

                    else
                    {
                    }

                    v329 = v234;
                    v199 = v344;
LABEL_229:
                    LOBYTE(v362) = v332 & 1;
                    *(&v362 + 1) = v214;
                    v363 = *(&v214 + 1);
                    *&v364 = 0;
                    v365 = 0u;
                    v366 = 0u;
                    *(&v364 + 1) = v234;
                    *&v367[0] = v234;
                    memset(v367 + 8, 0, 32);
                    v241 = *(v199 + 2);
                    if (v241)
                    {
                      v242 = 0;
                      v243 = 0;
                      while (1)
                      {
                        v244 = &v199[v242];
                        v245 = *&v199[v242 + 40] == v214 && *&v199[v242 + 48] == *(&v214 + 1);
                        if (v245 || (sub_22A4DE60C() & 1) != 0)
                        {
                          break;
                        }

                        ++v243;
                        v242 += 120;
                        if (v241 == v243)
                        {
                          goto LABEL_237;
                        }
                      }

                      v246 = *(v244 + 2);
                      v247 = *(v244 + 3);
                      v248 = *(v244 + 5);
                      v348 = *(v244 + 4);
                      v349 = v248;
                      v346 = v246;
                      v347 = v247;
                      v249 = *(v244 + 6);
                      v250 = *(v244 + 7);
                      v251 = *(v244 + 8);
                      v353 = *(v244 + 18);
                      v351 = v250;
                      v352 = v251;
                      v350 = v249;
                      v358 = v366;
                      v359 = v367[0];
                      v360 = v367[1];
                      v361 = *&v367[2];
                      v354 = v362;
                      v355 = v363;
                      v356 = v364;
                      v357 = v365;
                      sub_229804E7C(&v346, v345);
                      sub_229804EB4(&v354);
                      v332 = *(&v351 + 1);
                      v252 = v352;
                      v253 = v353;
                      v322 = *(&v347 + 1);
                      v323 = *(&v352 + 1);
                      v254 = v348;
                      v366 = v350;
                      v367[0] = v351;
                      v367[1] = v352;
                      *&v367[2] = v353;
                      v362 = v346;
                      v363 = v347;
                      v364 = v348;
                      v365 = v349;
                      sub_2296F0858(v329);
                      if (v254)
                      {

                        v255 = v322;
                        v256 = v254;
                        v257 = v335;
                        v108 = v336;
                      }

                      else
                      {
                        v257 = v335;
                        v108 = v336;
                        v256 = v333;
                        v255 = v328;
                      }

                      *(&v363 + 1) = v255;
                      *&v364 = v256;
                      v199 = v344;
                      if (v253)
                      {

                        *(&v367[1] + 1) = v323;
                        *&v367[2] = v253;
                        if (v252)
                        {
                          goto LABEL_243;
                        }

LABEL_245:
                        v252 = v330;
                        v201 = v340;
                        v258 = v327;
                      }

                      else
                      {
                        *(&v367[1] + 1) = v257;
                        *&v367[2] = v334;
                        if (!v252)
                        {
                          goto LABEL_245;
                        }

LABEL_243:

                        v258 = v332;
                        v201 = v340;
                      }

                      *(&v367[0] + 1) = v258;
                      *&v367[1] = v252;
                      v358 = v366;
                      v359 = v367[0];
                      v360 = v367[1];
                      v361 = *&v367[2];
                      v354 = v362;
                      v355 = v363;
                      v356 = v364;
                      v357 = v365;
                      sub_229804E7C(&v354, &v346);
                      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                      {
                        v199 = sub_2295AFE78(v199);
                      }

                      if (v243 >= *(v199 + 2))
                      {
                        goto LABEL_253;
                      }

                      v259 = &v199[v242];
                      v260 = *&v199[v242 + 32];
                      v261 = *&v199[v242 + 48];
                      v262 = *&v199[v242 + 80];
                      v348 = *&v199[v242 + 64];
                      v349 = v262;
                      v346 = v260;
                      v347 = v261;
                      v263 = *&v199[v242 + 96];
                      v264 = *&v199[v242 + 112];
                      v265 = *&v199[v242 + 128];
                      v353 = *&v199[v242 + 144];
                      v351 = v264;
                      v352 = v265;
                      v350 = v263;
                      v266 = v354;
                      v267 = v355;
                      v268 = v357;
                      *(v259 + 4) = v356;
                      *(v259 + 5) = v268;
                      *(v259 + 2) = v266;
                      *(v259 + 3) = v267;
                      v269 = v358;
                      v270 = v359;
                      v271 = v360;
                      *(v259 + 18) = v361;
                      *(v259 + 7) = v270;
                      *(v259 + 8) = v271;
                      *(v259 + 6) = v269;
                      sub_229804EB4(&v346);
                    }

                    else
                    {
LABEL_237:
                      sub_2296F0858(v329);
                      *(&v363 + 1) = v328;
                      *&v364 = v333;
                      *(&v367[1] + 1) = v335;
                      *&v367[2] = v334;
                      *(&v367[0] + 1) = v327;
                      *&v367[1] = v330;

                      v108 = v336;
                      v201 = v340;
                    }

                    v358 = v366;
                    v359 = v367[0];
                    v360 = v367[1];
                    v361 = *&v367[2];
                    v354 = v362;
                    v355 = v363;
                    v356 = v364;
                    v357 = v365;
                    sub_229804EB4(&v354);
                    v187 = MEMORY[0x277D84F90];
                    v189 = v326;
                    continue;
                  }
                }

                else
                {
                }

                v327 = 0;
                v330 = 0;
                goto LABEL_221;
              }
            }

            v199 = v344;
            v201 = v340;
          }

          else
          {

            v199 = v344;
          }
        }

        while (v121 != v201);
      }
    }

    v274 = *(v199 + 2);
    v344 = v199;
    if (v274)
    {
      *&v362 = MEMORY[0x277D84F90];
      sub_229583794(0, v274, 0);
      v275 = v362;
      v330 = v308 + 32;
      v276 = (v199 + 72);
      v277 = v301;
      do
      {
        v342 = v274;
        v343 = v275;
        LODWORD(v340) = *(v276 - 40);
        v278 = *(v276 - 4);
        v279 = *(v276 - 3);
        v338 = *(v276 - 2);
        v339 = v278;
        v280 = *v276;
        v281 = v276[1];
        v336 = v276[3];
        v337 = v281;
        v282 = v276[6];
        v334 = v279;
        v335 = v282;
        v283 = v276[8];
        v332 = v280;
        v333 = v283;

        v275 = v343;
        sub_22A4DBC1C();
        *&v362 = v275;
        v285 = *(v275 + 16);
        v284 = *(v275 + 24);
        if (v285 >= v284 >> 1)
        {
          sub_229583794((v284 > 1), v285 + 1, 1);
          v277 = v301;
          v275 = v362;
        }

        v276 += 15;
        *(v275 + 16) = v285 + 1;
        (*(v308 + 32))(v275 + ((*(v308 + 80) + 32) & ~*(v308 + 80)) + *(v308 + 72) * v285, v277, v305);
        v274 = v342 - 1;
      }

      while (v342 != 1);
    }

    v286 = sub_22A4DD05C();
    v287 = sub_22A4DDCCC();
    if (os_log_type_enabled(v286, v287))
    {
      v288 = swift_slowAlloc();
      v289 = swift_slowAlloc();
      *&v362 = v289;
      *v288 = 136315394;

      v291 = MEMORY[0x22AAD0A20](v290, v316);
      v293 = v292;

      v294 = sub_2295A3E30(v291, v293, &v362);

      *(v288 + 4) = v294;
      *(v288 + 12) = 2080;

      v296 = MEMORY[0x22AAD0A20](v295, v305);
      v298 = v297;

      v299 = sub_2295A3E30(v296, v298, &v362);

      *(v288 + 14) = v299;
      _os_log_impl(&dword_229538000, v286, v287, "%s %s", v288, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v289, -1, -1);
      MEMORY[0x22AAD4E50](v288, -1, -1);
    }

    return;
  }

  if (v134 >= 1)
  {
    v135 = 0;
    v136 = *MEMORY[0x277CE16F0];
    v342 = v121 & 0xC000000000000001;
    v343 = v136;
    v326 = "ntroller";
    v324 = "NetworkSignature";
    v327 = *MEMORY[0x277CE1748];
    v344 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v342)
      {
        v137 = MEMORY[0x22AAD13F0](v135, v121);
        if (v108)
        {
          goto LABEL_103;
        }
      }

      else
      {
        v137 = *(v121 + 8 * v135 + 32);
        if (v108)
        {
LABEL_103:
          *&v362 = sub_22A4DD5EC();
          *(&v362 + 1) = v138;
          *&v354 = v339;
          *(&v354 + 1) = v108;
          sub_22962F254();

          v139 = sub_22A4DDFFC();

          goto LABEL_106;
        }
      }

      v139 = 0;
LABEL_106:
      v140 = SCDynamicStoreCopyValue(v341, v137);
      if (v140)
      {
        v141 = v140;
        v142 = CFDictionaryGetTypeID();
        if (v142 == CFGetTypeID(v141))
        {
          *&v362 = v141;
          swift_unknownObjectRetain();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D881628, &qword_22A584700);
          if (swift_dynamicCast())
          {
            swift_unknownObjectRelease();
            v143 = v354;
            goto LABEL_112;
          }
        }

        swift_unknownObjectRelease();
      }

      v143 = MEMORY[0x277D84F98];
LABEL_112:
      v144 = sub_22A4DD5EC();
      if (*(v143 + 16))
      {
        v146 = sub_229543DBC(v144, v145);
        v148 = v147;

        if (v148)
        {
          *&v354 = *(*(v143 + 56) + 8 * v146);
          swift_unknownObjectRetain();
          if (swift_dynamicCast())
          {
            v338 = *(&v362 + 1);
            v149 = v362;
            v121 = v340;
            if (!*(v143 + 16))
            {
              v335 = 0;
              v337 = 0;
              goto LABEL_135;
            }

            v150 = sub_229543DBC(0xD000000000000010, v326 | 0x8000000000000000);
            if (v151)
            {
              *&v354 = *(*(v143 + 56) + 8 * v150);
              swift_unknownObjectRetain();
              v152 = swift_dynamicCast();
              v153 = v362;
              if (!v152)
              {
                v153 = 0;
              }

              v337 = v153;
              if (v152)
              {
                v154 = *(&v362 + 1);
              }

              else
              {
                v154 = 0;
              }

              v335 = v154;
              if (!*(v143 + 16))
              {
LABEL_135:
                v328 = 0;
                v329 = 0;
                goto LABEL_136;
              }
            }

            else
            {
              v337 = 0;
              v335 = 0;
              if (!*(v143 + 16))
              {
                goto LABEL_135;
              }
            }

            v155 = sub_229543DBC(0xD000000000000016, v324 | 0x8000000000000000);
            if ((v156 & 1) == 0)
            {
              goto LABEL_135;
            }

            *&v354 = *(*(v143 + 56) + 8 * v155);
            swift_unknownObjectRetain();
            v157 = swift_dynamicCast();
            if (v157)
            {
              v158 = v362;
            }

            else
            {
              v158 = 0;
            }

            if (v157)
            {
              v159 = *(&v362 + 1);
            }

            else
            {
              v159 = 0;
            }

            v328 = v159;
            v329 = v158;
LABEL_136:
            v160 = sub_22A4DD5EC();
            if (*(v143 + 16))
            {
              v162 = sub_229543DBC(v160, v161);
              v164 = v163;

              if (v164)
              {
                *&v354 = *(*(v143 + 56) + 8 * v162);
                swift_unknownObjectRetain();
                v165 = swift_dynamicCast();
                v166 = v362;
                if (!v165)
                {
                  v166 = 0;
                }

                v332 = v166;
                if (v165)
                {
                  v167 = *(&v362 + 1);
                }

                else
                {
                  v167 = 0;
                }

                v330 = v167;
              }

              else
              {
                v332 = 0;
                v330 = 0;
              }

              v121 = v340;
            }

            else
            {

              v332 = 0;
              v330 = 0;
            }

            v168 = sub_22A4DD5EC();
            if (*(v143 + 16))
            {
              v170 = sub_229543DBC(v168, v169);
              v172 = v171;

              if ((v172 & 1) == 0)
              {

                v175 = MEMORY[0x277D84F90];
                v121 = v340;
                goto LABEL_154;
              }

              v173 = *(*(v143 + 56) + 8 * v170);
              swift_unknownObjectRetain();

              *&v362 = v173;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E400, "ll\b");
              v174 = swift_dynamicCast();
              v121 = v340;
              if (v174)
              {
                v175 = v354;
LABEL_154:
                v176 = v149;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v344 = sub_22958AC3C(0, *(v344 + 2) + 1, 1, v344);
                }

                v178 = *(v344 + 2);
                v177 = *(v344 + 3);
                if (v178 >= v177 >> 1)
                {
                  v344 = sub_22958AC3C((v177 > 1), v178 + 1, 1, v344);
                }

                v179 = v344;
                *(v344 + 2) = v178 + 1;
                v180 = &v179[120 * v178];
                v180[32] = v139 & 1;
                v181 = *(&v362 + 3);
                *(v180 + 33) = v362;
                *(v180 + 9) = v181;
                v182 = v338;
                *(v180 + 5) = v176;
                *(v180 + 6) = v182;
                v183 = v328;
                *(v180 + 7) = v329;
                *(v180 + 8) = v183;
                v184 = v332;
                *(v180 + 9) = v175;
                *(v180 + 10) = v184;
                v108 = v336;
                v185 = v337;
                *(v180 + 11) = v330;
                *(v180 + 12) = v185;
                *(v180 + 13) = v335;
                *(v180 + 14) = MEMORY[0x277D84F90];
                *(v180 + 120) = 0u;
                *(v180 + 136) = 0u;
                goto LABEL_100;
              }
            }

            else
            {
            }

            v175 = MEMORY[0x277D84F90];
            goto LABEL_154;
          }
        }

        v121 = v340;
      }

      else
      {
      }

LABEL_100:
      if (v134 == ++v135)
      {
        goto LABEL_160;
      }
    }
  }

  __break(1u);
}

unint64_t NetworkInfoController.obtainNetworkInfoProto()()
{
  v47 = sub_22A4DBC3C();
  v43 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v1 = v42 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_22A4DBAEC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_229801D68();
  v8 = MEMORY[0x277D84F90];
  v48 = MEMORY[0x277D84F90];
  v9 = *(v6 + 16);
  v44 = v7;
  if (v9)
  {
    v11 = *(v3 + 16);
    v10 = v3 + 16;
    v46 = v11;
    v12 = *(v10 + 64);
    v42[1] = v6;
    v13 = v6 + ((v12 + 32) & ~v12);
    v14 = *(v10 + 56);
    v15 = (v10 - 8);
    v45 = MEMORY[0x277D84F90];
    do
    {
      v16 = v10;
      v46(v5, v13, v2);
      v17 = sub_229801258();
      v18 = (*v15)(v5, v2);
      if (v17)
      {
        MEMORY[0x22AAD09E0](v18);
        if (*((v48 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v48 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v45 = *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_22A4DD85C();
        }

        sub_22A4DD87C();
        v45 = v48;
      }

      v13 += v14;
      --v9;
      v10 = v16;
    }

    while (v9);

    v19 = v44;
    v20 = v45;
    v8 = MEMORY[0x277D84F90];
  }

  else
  {
    v19 = v7;

    v20 = MEMORY[0x277D84F90];
  }

  v48 = v8;
  v21 = *(v19 + 16);
  if (v21)
  {
    v22 = *(v43 + 16);
    v45 = v20;
    v46 = v22;
    v23 = v19 + ((*(v43 + 80) + 32) & ~*(v43 + 80));
    v24 = *(v43 + 72);
    v25 = (v43 + 8);
    v26 = MEMORY[0x277D84F90];
    do
    {
      v27 = v47;
      v46(v1, v23, v47);
      v28 = sub_229801800();
      v29 = (*v25)(v1, v27);
      if (v28)
      {
        MEMORY[0x22AAD09E0](v29);
        if (*((v48 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v48 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_22A4DD85C();
        }

        sub_22A4DD87C();
        v26 = v48;
      }

      v23 += v24;
      --v21;
    }

    while (v21);

    v30 = v26;
    v20 = v45;
  }

  else
  {

    v30 = MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D881610, &qword_22A5845C0);
  inited = swift_initStackObject();
  *(inited + 32) = 0x496B726F7774654ELL;
  *(inited + 16) = xmmword_22A5761A0;
  *(inited + 40) = 0xEB000000006F666ELL;
  if (v20 >> 62)
  {

    v40 = sub_22A4DE3AC();
    swift_bridgeObjectRelease_n();
    v20 = v40;
  }

  else
  {
    v32 = v20 & 0xFFFFFFFFFFFFFF8;

    sub_22A4DE61C();
    if (swift_dynamicCastMetatype() || (v36 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10)) == 0)
    {
LABEL_21:
    }

    else
    {
      v37 = (v32 + 32);
      while (*v37)
      {
        ++v37;
        if (!--v36)
        {
          goto LABEL_21;
        }
      }

      v20 = v32 | 1;
    }
  }

  *(inited + 48) = v20;
  *(inited + 56) = 0xD000000000000012;
  *(inited + 64) = 0x800000022A58BC30;
  if (v30 >> 62)
  {

    v41 = sub_22A4DE3AC();
    swift_bridgeObjectRelease_n();
    v30 = v41;
  }

  else
  {
    v33 = v30 & 0xFFFFFFFFFFFFFF8;

    sub_22A4DE61C();
    if (swift_dynamicCastMetatype() || (v38 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10)) == 0)
    {
LABEL_24:
    }

    else
    {
      v39 = (v33 + 32);
      while (*v39)
      {
        ++v39;
        if (!--v38)
        {
          goto LABEL_24;
        }
      }

      v30 = v33 | 1;
    }
  }

  *(inited + 72) = v30;
  v34 = sub_22956B960(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D881618, qword_22A5845C8);
  swift_arrayDestroy();
  return v34;
}

id NetworkInfoController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NetworkInfoController(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_2298047A4(uint64_t a1)
{
  v2 = type metadata accessor for NetworkInfoSCDataSource();
  v14[3] = v2;
  v14[4] = &off_283CE6A30;
  v14[0] = a1;
  v3 = type metadata accessor for NetworkInfoController(0);
  v4 = objc_allocWithZone(v3);
  v5 = __swift_mutable_project_boxed_opaque_existential_0(v14, v2);
  MEMORY[0x28223BE20](v5);
  v7 = (&v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v8 + 16))(v7);
  v9 = *v7;
  v13[3] = v2;
  v13[4] = &off_283CE6A30;
  v13[0] = v9;
  sub_22A4DD5EC();
  sub_22A4DD06C();
  *&v4[OBJC_IVAR___HMDNetworkInfoController_store] = 0;
  sub_22957F1C4(v13, &v4[OBJC_IVAR___HMDNetworkInfoController_dataSource]);
  v12.receiver = v4;
  v12.super_class = v3;
  v10 = objc_msgSendSuper2(&v12, sel_init);
  __swift_destroy_boxed_opaque_existential_0(v13);
  __swift_destroy_boxed_opaque_existential_0(v14);
  return v10;
}

uint64_t type metadata accessor for NetworkInfoController(uint64_t a1)
{
  result = qword_2814023A8;
  if (!qword_2814023A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_229804990(uint64_t a1)
{
  result = sub_22A4DD07C();
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

uint64_t sub_229804A34(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D881620, &unk_22A5846F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_229804A9C()
{
  v0 = SCNetworkInterfaceCopyAll();
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    type metadata accessor for SCNetworkInterface(0);
    sub_22A4DD82C();
  }
}

unint64_t sub_229804D9C(const __SCDynamicStore *a1, const __CFString *a2)
{
  v2 = SCDynamicStoreCopyValue(a1, a2);
  if (v2)
  {
    v3 = v2;
    TypeID = CFDictionaryGetTypeID();
    if (TypeID == CFGetTypeID(v3) && (swift_unknownObjectRetain(), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D881628, &qword_22A584700), swift_dynamicCast()))
    {
      swift_unknownObjectRelease();
      return v8;
    }

    else
    {
      v6 = sub_22956AED0(MEMORY[0x277D84F90]);
      swift_unknownObjectRelease();
      return v6;
    }
  }

  else
  {
    v7 = MEMORY[0x277D84F90];

    return sub_22956AED0(v7);
  }
}

uint64_t sub_229804EE4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D881620, &unk_22A5846F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_229804F54(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D881620, &unk_22A5846F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

__n128 __swift_memcpy120_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_229804FF0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
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

uint64_t sub_229805038(uint64_t result, int a2, int a3)
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 120) = 1;
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

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2298050B4()
{
  if (*(v0 + OBJC_IVAR____TtCOO13HomeKitDaemon16DeviceMediaState16FrameworkAdapter24MediaRemotePlaybackState_notificationTask))
  {

    sub_22A4DDA7C();
  }

  MRMediaRemoteSetWantsNowPlayingNotifications();
  sub_2296792B0(v0 + OBJC_IVAR____TtCOO13HomeKitDaemon16DeviceMediaState16FrameworkAdapter24MediaRemotePlaybackState_updateStream);

  return swift_deallocClassInstance();
}

uint64_t _s24MediaRemotePlaybackStateCMa(uint64_t a1)
{
  result = qword_27D881638;
  if (!qword_27D881638)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2298051DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_2296791B4(319, a2, a3, a4);
  if (v4 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t HMAccessorySleepWakeState.description.getter(uint64_t a1)
{
  v1 = 0x656B617741;
  v2 = 0x746C7561666564;
  if (a1 == 1)
  {
    v2 = 0x7065656C53;
  }

  if (a1 != 2)
  {
    v1 = v2;
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return 0x6E776F6E6B6E55;
  }
}

uint64_t sub_229805310()
{
  v1 = *v0;
  v2 = 0x656B617741;
  v3 = 0x746C7561666564;
  if (*v0 == 1)
  {
    v3 = 0x7065656C53;
  }

  if (v1 != 2)
  {
    v2 = v3;
  }

  if (v1)
  {
    return v2;
  }

  else
  {
    return 0x6E776F6E6B6E55;
  }
}

uint64_t sub_229805390@<X0>(_BYTE *a2@<X8>)
{

  *a2 = 1;
  return result;
}

uint64_t sub_2298053C0(uint64_t a1)
{
  v2 = sub_229805C78();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2298053FC(uint64_t a1)
{
  v2 = sub_229805C78();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_229805438()
{
  v1 = 0x615065766F6D6572;
  if (*v0 != 1)
  {
    v1 = 1953719668;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x73736150646461;
  }
}

uint64_t sub_229805494@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_229806750(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2298054BC(uint64_t a1)
{
  v2 = sub_229805AD4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2298054F8(uint64_t a1)
{
  v2 = sub_229805AD4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_229805540(uint64_t a1)
{
  v2 = sub_229805BD0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22980557C(uint64_t a1)
{
  v2 = sub_229805BD0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2298055B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_22A4DE60C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_229805638(uint64_t a1)
{
  v2 = sub_229805B28();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_229805674(uint64_t a1)
{
  v2 = sub_229805B28();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t HomeUtilPassCommand.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v31 = a5;
  v26 = a4;
  v29 = a2;
  v30 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D881648, &qword_22A5848E0);
  v27 = *(v6 - 8);
  v28 = v6;
  MEMORY[0x28223BE20](v6);
  v25 = &v21 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D881650, &qword_22A5848E8);
  v23 = *(v8 - 8);
  v24 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D881658, &qword_22A5848F0);
  v22 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v21 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D881660, &qword_22A5848F8);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v21 - v16;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_229805AD4();
  sub_22A4DE80C();
  if (!v31)
  {
    LOBYTE(v32) = 1;
    sub_229805BD0();
    sub_22A4DE50C();
    LOBYTE(v32) = v29 & 1;
    v33 = v30;
    v34 = v26;
    sub_229805C24();
    v18 = v24;
    sub_22A4DE59C();
    v19 = v23;
    goto LABEL_5;
  }

  if (v31 == 1)
  {
    LOBYTE(v32) = 2;
    sub_229805B28();
    v10 = v25;
    sub_22A4DE50C();
    v32 = v29;
    v33 = v30;
    sub_229805B7C();
    v18 = v28;
    sub_22A4DE59C();
    v19 = v27;
LABEL_5:
    (*(v19 + 8))(v10, v18);
    return (*(v15 + 8))(v17, v14);
  }

  LOBYTE(v32) = 0;
  sub_229805C78();
  sub_22A4DE50C();
  (*(v22 + 8))(v13, v11);
  return (*(v15 + 8))(v17, v14);
}

unint64_t sub_229805AD4()
{
  result = qword_27D881668;
  if (!qword_27D881668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D881668);
  }

  return result;
}

unint64_t sub_229805B28()
{
  result = qword_27D881670;
  if (!qword_27D881670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D881670);
  }

  return result;
}

unint64_t sub_229805B7C()
{
  result = qword_27D881678;
  if (!qword_27D881678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D881678);
  }

  return result;
}

unint64_t sub_229805BD0()
{
  result = qword_27D881680;
  if (!qword_27D881680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D881680);
  }

  return result;
}

unint64_t sub_229805C24()
{
  result = qword_27D881688;
  if (!qword_27D881688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D881688);
  }

  return result;
}

unint64_t sub_229805C78()
{
  result = qword_27D881690;
  if (!qword_27D881690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D881690);
  }

  return result;
}

unint64_t HomeUtilPassCommand.init(from:)(void *a1)
{
  result = sub_22980686C(a1);
  if (v1)
  {
    return v3;
  }

  return result;
}

unint64_t sub_229805CF4@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_22980686C(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5;
    *(a1 + 16) = v6;
    *(a1 + 24) = v7;
  }

  return result;
}

uint64_t sub_229805D4C()
{
  if (*v0)
  {
    return 0x656D614E656D6F68;
  }

  else
  {
    return 7105633;
  }
}

uint64_t sub_229805D80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 7105633 && a2 == 0xE300000000000000;
  if (v5 || (sub_22A4DE60C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x656D614E656D6F68 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_22A4DE60C();

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

uint64_t sub_229805E5C(uint64_t a1)
{
  v2 = sub_229806ED0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_229805E98(uint64_t a1)
{
  v2 = sub_229806ED0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t RemovePassesCommand.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D881698, &qword_22A584900);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v11 - v8;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_229806ED0();
  sub_22A4DE80C();
  v13 = 0;
  sub_22A4DE55C();
  if (!v4)
  {
    v12 = 1;
    sub_22A4DE51C();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_229806090@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_229806F24(a2);
  if (!v2)
  {
    *a1 = result & 1;
    *(a1 + 8) = v5;
    *(a1 + 16) = v6;
  }

  return result;
}

uint64_t sub_2298060FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x656D614E74736574 && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_22A4DE60C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_229806184(uint64_t a1)
{
  v2 = sub_2298070D0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2298061C0(uint64_t a1)
{
  v2 = sub_2298070D0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TestCommand.encode(to:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8816A8, &qword_22A584908);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_2298070D0();
  sub_22A4DE80C();
  sub_22A4DE51C();
  return (*(v5 + 8))(v7, v4);
}

void *TestCommand.init(from:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8816B8, &qword_22A584910);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - v5;
  v7 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_2298070D0();
  sub_22A4DE7FC();
  if (!v1)
  {
    v7 = sub_22A4DE46C();
    (*(v4 + 8))(v6, v3);
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v7;
}

uint64_t sub_229806498@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8816B8, &qword_22A584910);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_2298070D0();
  sub_22A4DE7FC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v9 = sub_22A4DE46C();
  v11 = v10;
  (*(v6 + 8))(v8, v5);
  result = __swift_destroy_boxed_opaque_existential_0(a1);
  *a2 = v9;
  a2[1] = v11;
  return result;
}

uint64_t sub_229806614(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8816A8, &qword_22A584908);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_2298070D0();
  sub_22A4DE80C();
  sub_22A4DE51C();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_229806750(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73736150646461 && a2 == 0xE700000000000000;
  if (v4 || (sub_22A4DE60C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x615065766F6D6572 && a2 == 0xEC00000073657373 || (sub_22A4DE60C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1953719668 && a2 == 0xE400000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_22A4DE60C();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

unint64_t sub_22980686C(void *a1)
{
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D881750, &qword_22A585128);
  v36 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v37 = &v30 - v2;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D881758, &qword_22A585130);
  v35 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v4 = &v30 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D881760, &qword_22A585138);
  v32 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v30 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D881768, &qword_22A585140);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v30 - v10;
  v12 = a1[3];
  v40 = a1;
  v13 = __swift_project_boxed_opaque_existential_0(a1, v12);
  sub_229805AD4();
  v14 = v38;
  sub_22A4DE7FC();
  if (!v14)
  {
    v31 = 0;
    v38 = v11;
    v15 = sub_22A4DE4FC();
    v16 = *(v15 + 16);
    if (!v16 || ((v17 = *(v15 + 32), v16 == 1) ? (v18 = v17 == 3) : (v18 = 1), v18))
    {
      v19 = sub_22A4DE24C();
      swift_allocError();
      v21 = v20;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D881770, &qword_22A585148);
      *v21 = &type metadata for HomeUtilPassCommand;
      v13 = v38;
      sub_22A4DE45C();
      sub_22A4DE23C();
      (*(*(v19 - 8) + 104))(v21, *MEMORY[0x277D84160], v19);
      swift_willThrow();
      (*(v9 + 8))(v13, v8);
LABEL_17:
      swift_unknownObjectRelease();
      goto LABEL_18;
    }

    if (*(v15 + 32))
    {
      if (v17 == 1)
      {
        LOBYTE(v39) = 1;
        sub_229805BD0();
        v22 = v4;
        v23 = v38;
        v13 = v38;
        v24 = v31;
        sub_22A4DE44C();
        if (!v24)
        {
          sub_22980796C();
          v28 = v33;
          sub_22A4DE4EC();
          (*(v35 + 8))(v22, v28);
          (*(v9 + 8))(v23, v8);
          swift_unknownObjectRelease();
          v13 = v39;
          goto LABEL_18;
        }

        (*(v9 + 8))(v23, v8);
        goto LABEL_17;
      }

      LOBYTE(v39) = 2;
      sub_229805B28();
      v13 = v38;
      v26 = v31;
      sub_22A4DE44C();
      if (!v26)
      {
        sub_229807918();
        v29 = v34;
        sub_22A4DE4EC();
        (*(v36 + 8))(0, v29);
        (*(v9 + 8))(v38, v8);
        swift_unknownObjectRelease();
        v13 = v39;
        goto LABEL_18;
      }

      goto LABEL_16;
    }

    LOBYTE(v39) = 0;
    sub_229805C78();
    v13 = v38;
    v25 = v31;
    sub_22A4DE44C();
    if (v25)
    {
LABEL_16:
      (*(v9 + 8))(v13, v8);
      goto LABEL_17;
    }

    (*(v32 + 8))(v7, v5);
    (*(v9 + 8))(v13, v8);
    swift_unknownObjectRelease();
    v13 = 0;
  }

LABEL_18:
  __swift_destroy_boxed_opaque_existential_0(v40);
  return v13;
}

unint64_t sub_229806ED0()
{
  result = qword_27D8816A0;
  if (!qword_27D8816A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8816A0);
  }

  return result;
}

uint64_t sub_229806F24(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D881748, &qword_22A585120);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9[-v5];
  v7 = a1[3];
  __swift_project_boxed_opaque_existential_0(a1, v7);
  sub_229806ED0();
  sub_22A4DE7FC();
  if (!v1)
  {
    v9[15] = 0;
    LOBYTE(v7) = sub_22A4DE4AC();
    v9[14] = 1;
    sub_22A4DE46C();
    (*(v4 + 8))(v6, v3);
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v7 & 1;
}

unint64_t sub_2298070D0()
{
  result = qword_27D8816B0;
  if (!qword_27D8816B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8816B0);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_13HomeKitDaemon0A15UtilPassCommandO(uint64_t a1)
{
  if ((*(a1 + 24) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 24) & 3;
  }
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_229807154(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 25))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 24);
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

uint64_t sub_22980719C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t sub_2298071E4(uint64_t result, unsigned int a2)
{
  v2 = a2 - 2;
  if (a2 >= 2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    LOBYTE(a2) = 2;
    *result = v2;
  }

  *(result + 24) = a2;
  return result;
}

uint64_t sub_229807210(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
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

uint64_t sub_22980726C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

unint64_t sub_229807344()
{
  result = qword_27D8816C0;
  if (!qword_27D8816C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8816C0);
  }

  return result;
}

unint64_t sub_22980739C()
{
  result = qword_27D8816C8;
  if (!qword_27D8816C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8816C8);
  }

  return result;
}

unint64_t sub_2298073F4()
{
  result = qword_27D8816D0;
  if (!qword_27D8816D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8816D0);
  }

  return result;
}

unint64_t sub_22980744C()
{
  result = qword_27D8816D8;
  if (!qword_27D8816D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8816D8);
  }

  return result;
}

unint64_t sub_2298074A4()
{
  result = qword_27D8816E0;
  if (!qword_27D8816E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8816E0);
  }

  return result;
}

unint64_t sub_2298074FC()
{
  result = qword_27D8816E8;
  if (!qword_27D8816E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8816E8);
  }

  return result;
}

unint64_t sub_229807554()
{
  result = qword_27D8816F0;
  if (!qword_27D8816F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8816F0);
  }

  return result;
}

unint64_t sub_2298075AC()
{
  result = qword_27D8816F8;
  if (!qword_27D8816F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8816F8);
  }

  return result;
}

unint64_t sub_229807604()
{
  result = qword_27D881700;
  if (!qword_27D881700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D881700);
  }

  return result;
}

unint64_t sub_22980765C()
{
  result = qword_27D881708;
  if (!qword_27D881708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D881708);
  }

  return result;
}

unint64_t sub_2298076B4()
{
  result = qword_27D881710;
  if (!qword_27D881710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D881710);
  }

  return result;
}

unint64_t sub_22980770C()
{
  result = qword_27D881718;
  if (!qword_27D881718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D881718);
  }

  return result;
}

unint64_t sub_229807764()
{
  result = qword_27D881720;
  if (!qword_27D881720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D881720);
  }

  return result;
}

unint64_t sub_2298077BC()
{
  result = qword_27D881728;
  if (!qword_27D881728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D881728);
  }

  return result;
}

unint64_t sub_229807814()
{
  result = qword_27D881730;
  if (!qword_27D881730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D881730);
  }

  return result;
}

unint64_t sub_22980786C()
{
  result = qword_27D881738;
  if (!qword_27D881738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D881738);
  }

  return result;
}

unint64_t sub_2298078C4()
{
  result = qword_27D881740;
  if (!qword_27D881740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D881740);
  }

  return result;
}

unint64_t sub_229807918()
{
  result = qword_27D881778;
  if (!qword_27D881778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D881778);
  }

  return result;
}

unint64_t sub_22980796C()
{
  result = qword_27D881780;
  if (!qword_27D881780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D881780);
  }

  return result;
}

uint64_t sub_2298079DC(uint64_t a1, uint64_t a2)
{
  v3[19] = a2;
  v3[20] = v2;
  v3[18] = a1;
  v4 = sub_22A4DB7DC();
  v3[21] = v4;
  v3[22] = *(v4 - 8);
  v3[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_229807AA0, 0, 0);
}

uint64_t sub_229807AA0()
{
  v1 = [*(v0 + 160) accessory];
  *(v0 + 192) = v1;
  if (v1)
  {
    v2 = v1;
    v3 = [v1 home];
    if (v3)
    {
      v4 = v3;
      v5 = [v3 administratorHandler];
      *(v0 + 200) = v5;

      if (v5)
      {
        v6 = *(v0 + 176);
        v7 = *(v0 + 184);
        v8 = *(v0 + 160);
        v9 = *(v0 + 168);
        v10 = *(v0 + 152);
        v26 = *(v0 + 144);
        v11 = *MEMORY[0x277CD2550];
        *(v0 + 208) = *MEMORY[0x277CD2550];
        v27 = v11;
        v12 = [v2 messageTargetUUID];
        sub_22A4DB79C();

        v13 = objc_allocWithZone(MEMORY[0x277D0F820]);
        v14 = sub_22A4DB77C();
        v15 = [v13 initWithTarget_];
        *(v0 + 216) = v15;

        (*(v6 + 8))(v7, v9);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D080, &qword_22A57CF50);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_22A5761A0;
        *(inited + 32) = sub_22A4DD5EC();
        *(inited + 40) = v17;
        v18 = [v8 instanceID];
        *(inited + 72) = sub_229678A8C();
        *(inited + 48) = v18;
        *(inited + 80) = sub_22A4DD5EC();
        *(inited + 88) = v19;
        *(inited + 120) = MEMORY[0x277D837D0];
        *(inited + 96) = v26;
        *(inited + 104) = v10;

        v20 = sub_22956AC5C(inited);
        *(v0 + 224) = v20;
        swift_setDeallocating();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87DE50, &qword_22A577CD0);
        swift_arrayDestroy();
        v21 = swift_task_alloc();
        *(v0 + 232) = v21;
        *v21 = v0;
        v21[1] = sub_229807DFC;

        return sub_2297983DC(v27, v15, v20);
      }
    }
  }

  v23 = objc_opt_self();
  v24 = sub_22A4DD5AC();
  [v23 hmErrorWithCode:3 description:v24 reason:0 suggestion:0 underlyingError:0];

  swift_willThrow();

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_229807DFC()
{
  v2 = *v1;
  *(*v1 + 240) = v0;

  if (v0)
  {
    v3 = sub_229807F98;
  }

  else
  {
    v4 = *(v2 + 216);
    v5 = *(v2 + 208);

    v3 = sub_229807F24;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_229807F24()
{
  v1 = *(v0 + 192);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_229807F98()
{
  v1 = v0[27];
  v3 = v0[25];
  v2 = v0[26];
  v4 = v0[24];

  v5 = v0[1];

  return v5();
}

uint64_t sub_229808024(uint64_t a1, uint64_t a2)
{
  v3[48] = a2;
  v3[49] = v2;
  v3[47] = a1;
  return MEMORY[0x2822009F8](sub_229808048, 0, 0);
}

uint64_t sub_229808048()
{
  v27 = v0;
  v1 = *(v0 + 384);
  if (v1)
  {
    v2 = *(v0 + 376);
  }

  else
  {
    v2 = 0x53555F6E65;
  }

  if (v1)
  {
    v3 = *(v0 + 384);
  }

  else
  {
    v3 = 0xE500000000000000;
  }

  v4 = sub_229773768();
  if (v4)
  {
    v5 = v4;
    if (*(v4 + 16) && (v6 = sub_229543DBC(v2, v3), (v7 & 1) != 0))
    {
      sub_2295404B0(*(v5 + 56) + 32 * v6, v0 + 16);

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C370, &qword_22A578090);
      if (swift_dynamicCast())
      {
        v8 = *(v0 + 344);
        *(v0 + 336) = v8;
        v9 = sub_229809210(v2, v3);
        if (v10)
        {
          v11 = MEMORY[0x277D837D0];
          *(v0 + 72) = MEMORY[0x277D837D0];
          *(v0 + 48) = v9;
          *(v0 + 56) = v10;
          sub_229543C58(v0 + 48, v0 + 304);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v26 = v8;
          v13 = *(v0 + 328);
          v14 = __swift_mutable_project_boxed_opaque_existential_0(v0 + 304, v13);
          v15 = *(v13 - 8);
          v16 = swift_task_alloc();
          (*(v15 + 16))(v16, v14, v13);
          sub_2297FF768(v16, 0x656D614E656D6F48, 0xE800000000000000, isUniquelyReferenced_nonNull_native, &v26, v11);
          __swift_destroy_boxed_opaque_existential_0((v0 + 304));

          *(v0 + 336) = v26;
        }

        else
        {
          sub_2297FCFD4(0x656D614E656D6F48, 0xE800000000000000, (v0 + 80));
          sub_22953EAE4(v0 + 80, &unk_27D87FC20, &unk_22A578810);
        }

        v19 = [*(v0 + 392) accessories];
        sub_229562F68(0, &qword_281401C30, off_278665FE8);
        v20 = sub_22A4DD83C();
        *(v0 + 400) = v20;

        *(v0 + 352) = v20;
        v21 = swift_task_alloc();
        *(v0 + 408) = v21;
        *(v21 + 16) = v2;
        *(v21 + 24) = v3;
        v22 = swift_task_alloc();
        *(v0 + 416) = v22;
        v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D548, &unk_22A578880);
        v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87C3A8, &qword_22A576E88);
        *(v0 + 424) = v24;
        v25 = sub_229579858(&qword_27D881788, &qword_27D87D548, &unk_22A578880);
        *v22 = v0;
        v22[1] = sub_229808424;

        return MEMORY[0x282167810](&unk_22A5851E0, v21, v23, v24, v25);
      }
    }

    else
    {
    }
  }

  v17 = *(v0 + 8);

  return v17(0);
}

uint64_t sub_229808424(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 432) = a1;
  *(v3 + 440) = v1;

  if (v1)
  {

    v4 = sub_2298091E0;
  }

  else
  {

    v4 = sub_2298085AC;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2298085AC(uint64_t isUniquelyReferenced_nonNull_native, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v29 = v5;
  v6 = 0;
  v7 = *(v5 + 432);
  v8 = *(v7 + 16);
  v9 = MEMORY[0x277D84F90];
LABEL_2:
  *(v5 + 448) = v9;
  while (v8 != v6)
  {
    if (v6 >= *(v7 + 16))
    {
      __break(1u);
      return MEMORY[0x282167810](isUniquelyReferenced_nonNull_native, a2, a3, a4, a5);
    }

    v10 = *(v7 + 32 + 8 * v6++);
    if (v10)
    {

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = sub_22958A770(0, v9[2] + 1, 1, v9);
        v9 = isUniquelyReferenced_nonNull_native;
      }

      v12 = v9[2];
      v11 = v9[3];
      if (v12 >= v11 >> 1)
      {
        isUniquelyReferenced_nonNull_native = sub_22958A770((v11 > 1), v12 + 1, 1, v9);
        v9 = isUniquelyReferenced_nonNull_native;
      }

      v9[2] = v12 + 1;
      v9[v12 + 4] = v10;
      goto LABEL_2;
    }
  }

  if (v9[2])
  {
    *(v5 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881E90, &qword_22A5788A0);
    *(v5 + 112) = v9;
    sub_229543C58(v5 + 112, v5 + 144);

    v13 = *(v5 + 336);
    v14 = swift_isUniquelyReferenced_nonNull_native();
    v28 = v13;
    v15 = *(v5 + 168);
    v16 = __swift_mutable_project_boxed_opaque_existential_0(v5 + 144, v15);
    v17 = *(v15 - 8);
    v18 = swift_task_alloc();
    (*(v17 + 16))(v18, v16, v15);
    sub_2297FED58(*v18, 0x726F737365636341, 0xEB00000000736569, v14, &v28);
    __swift_destroy_boxed_opaque_existential_0((v5 + 144));

    *(v5 + 336) = v28;
  }

  v19 = *(v5 + 384);
  if (v19)
  {
    v20 = *(v5 + 384);
  }

  else
  {
    v20 = 0xE500000000000000;
  }

  if (v19)
  {
    v21 = *(v5 + 376);
  }

  else
  {
    v21 = 0x53555F6E65;
  }

  v22 = [*(v5 + 392) rooms];
  sub_229562F68(0, &unk_2814017A0, off_278666308);
  v23 = sub_22A4DD83C();
  *(v5 + 456) = v23;

  *(v5 + 360) = v23;
  v24 = swift_task_alloc();
  *(v5 + 464) = v24;
  *(v24 + 16) = v21;
  *(v24 + 24) = v20;
  v25 = swift_task_alloc();
  *(v5 + 472) = v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87C3D0, &qword_22A576EA8);
  a5 = sub_229579858(&qword_27D881790, &qword_27D87C3D0, &qword_22A576EA8);
  *v25 = v5;
  v25[1] = sub_22980890C;
  a4 = *(v5 + 424);
  isUniquelyReferenced_nonNull_native = &unk_22A5851F0;
  a2 = v24;
  a3 = v26;

  return MEMORY[0x282167810](isUniquelyReferenced_nonNull_native, a2, a3, a4, a5);
}

uint64_t sub_22980890C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 480) = a1;
  *(v3 + 488) = v1;

  if (v1)
  {

    v4 = sub_2295926CC;
  }

  else
  {

    v4 = sub_229808AA0;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_229808AA0(uint64_t isUniquelyReferenced_nonNull_native, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v30 = v5;
  v6 = 0;
  v7 = *(v5 + 480);
  v8 = *(v7 + 16);
  v9 = MEMORY[0x277D84F90];
  while (v8 != v6)
  {
    if (v6 >= *(v7 + 16))
    {
      __break(1u);
LABEL_23:
      __break(1u);
      return MEMORY[0x282167810](isUniquelyReferenced_nonNull_native, a2, a3, a4, a5);
    }

    v10 = *(v7 + 32 + 8 * v6++);
    if (v10)
    {

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = sub_22958A770(0, v9[2] + 1, 1, v9);
        v9 = isUniquelyReferenced_nonNull_native;
      }

      v12 = v9[2];
      v11 = v9[3];
      if (v12 >= v11 >> 1)
      {
        isUniquelyReferenced_nonNull_native = sub_22958A770((v11 > 1), v12 + 1, 1, v9);
        v9 = isUniquelyReferenced_nonNull_native;
      }

      v9[2] = v12 + 1;
      v9[v12 + 4] = v10;
    }
  }

  if (v9[2])
  {
    *(v5 + 200) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881E90, &qword_22A5788A0);
    *(v5 + 176) = v9;
    sub_229543C58(v5 + 176, v5 + 208);

    v13 = *(v5 + 336);
    v14 = swift_isUniquelyReferenced_nonNull_native();
    v29 = v13;
    v15 = *(v5 + 232);
    v16 = __swift_mutable_project_boxed_opaque_existential_0(v5 + 208, v15);
    v17 = *(v15 - 8);
    v18 = swift_task_alloc();
    (*(v17 + 16))(v18, v16, v15);
    sub_2297FED58(*v18, 0x736D6F6F52, 0xE500000000000000, v14, &v29);
    __swift_destroy_boxed_opaque_existential_0((v5 + 208));

    *(v5 + 336) = v29;
  }

  isUniquelyReferenced_nonNull_native = [*(v5 + 392) actionSets];
  if (!isUniquelyReferenced_nonNull_native)
  {
    goto LABEL_23;
  }

  v19 = isUniquelyReferenced_nonNull_native;
  v21 = *(v5 + 376);
  v20 = *(v5 + 384);

  if (v20)
  {
    v22 = v20;
  }

  else
  {
    v22 = 0xE500000000000000;
  }

  if (v20)
  {
    v23 = v21;
  }

  else
  {
    v23 = 0x53555F6E65;
  }

  sub_229562F68(0, &qword_281401C20, off_278666020);
  v24 = sub_22A4DD83C();
  *(v5 + 496) = v24;

  *(v5 + 368) = v24;
  v25 = swift_task_alloc();
  *(v5 + 504) = v25;
  *(v25 + 16) = v23;
  *(v25 + 24) = v22;
  v26 = swift_task_alloc();
  *(v5 + 512) = v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D558, &unk_22A578890);
  a5 = sub_229579858(&qword_27D881798, &qword_27D87D558, &unk_22A578890);
  *v26 = v5;
  v26[1] = sub_229808E0C;
  a4 = *(v5 + 424);
  isUniquelyReferenced_nonNull_native = &unk_22A585200;
  a2 = v25;
  a3 = v27;

  return MEMORY[0x282167810](isUniquelyReferenced_nonNull_native, a2, a3, a4, a5);
}

uint64_t sub_229808E0C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 520) = a1;
  *(v3 + 528) = v1;

  if (v1)
  {

    v4 = sub_2298091F8;
  }

  else
  {
    v4 = sub_229808FA4;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

void sub_229808FA4()
{
  v17 = v0;
  v1 = 0;
  v2 = v0[65];
  v3 = *(v2 + 16);
  v4 = MEMORY[0x277D84F90];
  while (v3 != v1)
  {
    if (v1 >= *(v2 + 16))
    {
      __break(1u);
      return;
    }

    v5 = *(v2 + 32 + 8 * v1++);
    if (v5)
    {

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = sub_22958A770(0, v4[2] + 1, 1, v4);
      }

      v7 = v4[2];
      v6 = v4[3];
      if (v7 >= v6 >> 1)
      {
        v4 = sub_22958A770((v6 > 1), v7 + 1, 1, v4);
      }

      v4[2] = v7 + 1;
      v4[v7 + 4] = v5;
    }
  }

  if (v4[2])
  {
    v0[33] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881E90, &qword_22A5788A0);
    v0[30] = v4;
    sub_229543C58((v0 + 30), (v0 + 34));
    v8 = v0[42];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = v8;
    v10 = v0[37];
    v11 = __swift_mutable_project_boxed_opaque_existential_0((v0 + 34), v10);
    v12 = *(v10 - 8);
    v13 = swift_task_alloc();
    (*(v12 + 16))(v13, v11, v10);
    sub_2297FED58(*v13, 0x73656E656353, 0xE600000000000000, isUniquelyReferenced_nonNull_native, &v16);
    __swift_destroy_boxed_opaque_existential_0(v0 + 34);

    v14 = v16;
  }

  else
  {

    v14 = v0[42];
  }

  v15 = v0[1];

  v15(v14);
}

uint64_t sub_229809210(uint64_t a1, uint64_t a2)
{
  v4 = sub_229773768();
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  if (!*(v4 + 16))
  {
    goto LABEL_11;
  }

  v6 = sub_229543DBC(a1, a2);
  if ((v7 & 1) == 0)
  {
    goto LABEL_11;
  }

  sub_2295404B0(*(v5 + 56) + 32 * v6, v12);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C370, &qword_22A578090);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  if (!*(v11 + 16) || (v8 = sub_229543DBC(0x656D614E656D6F48, 0xE800000000000000), (v9 & 1) == 0))
  {
LABEL_11:

    return 0;
  }

  sub_2295404B0(*(v11 + 56) + 32 * v8, v12);

  if (swift_dynamicCast())
  {
    return v11;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22980934C(uint64_t a1)
{
  v2[96] = v1;
  v2[95] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D2A0, &unk_22A578BD0);
  v2[97] = swift_task_alloc();
  v2[98] = swift_task_alloc();
  v3 = sub_22A4DB7DC();
  v2[99] = v3;
  v2[100] = *(v3 - 8);
  v2[101] = swift_task_alloc();
  v2[102] = swift_task_alloc();
  v2[103] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22980946C, 0, 0);
}

uint64_t sub_22980946C()
{
  v1 = *(v0 + 760);
  v2 = MEMORY[0x277D837D0];
  if (!*(v1 + 16) || (v3 = sub_229543DBC(0x656D614E656D6F48, 0xE800000000000000), (v4 & 1) == 0))
  {
    v16 = *(v0 + 768);
    *(v0 + 528) = 0u;
    *(v0 + 544) = 0u;
    sub_22953EAE4(v0 + 528, &unk_27D87FC20, &unk_22A578810);
    type metadata accessor for HMError(0);
    *(v0 + 704) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7B0, &unk_22A578800);
    inited = swift_initStackObject();
    *(inited + 32) = 0x6E6F73616552;
    *(inited + 16) = xmmword_22A576180;
    *(inited + 40) = 0xE600000000000000;
    sub_22A4DE1FC();

    v18 = [v16 shortDescription];
    v19 = sub_22A4DD5EC();
    v21 = v20;

    MEMORY[0x22AAD08C0](v19, v21);

    *(inited + 72) = v2;
    *(inited + 48) = 0xD000000000000016;
    *(inited + 56) = 0x800000022A597AD0;
    sub_22956AD8C(inited);
    swift_setDeallocating();
    sub_22953EAE4(inited + 32, &qword_27D87CDA0, &unk_22A57A930);
    sub_22953E140(&qword_27D87D7C0, type metadata accessor for HMError, &unk_22A576D30);
    sub_22A4DB3CC();
LABEL_22:
    swift_willThrow();

    v41 = *(v0 + 8);
LABEL_23:

    return v41();
  }

  v5 = *(v0 + 760);
  sub_2295404B0(*(v5 + 56) + 32 * v3, v0 + 528);
  sub_22953EAE4(v0 + 528, &unk_27D87FC20, &unk_22A578810);
  if (!*(v1 + 16) || (v6 = sub_229543DBC(0x696669746E656449, 0xEA00000000007265), (v7 & 1) == 0) || (sub_2295404B0(*(v5 + 56) + 32 * v6, v0 + 400), *(v0 + 832) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90), (swift_dynamicCast() & 1) == 0))
  {
LABEL_21:
    v34 = *(v0 + 768);
    type metadata accessor for HMError(0);
    *(v0 + 648) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7B0, &unk_22A578800);
    v35 = swift_initStackObject();
    *(v35 + 32) = 0x6E6F73616552;
    *(v35 + 16) = xmmword_22A576180;
    *(v35 + 40) = 0xE600000000000000;
    sub_22A4DE1FC();

    v36 = [v34 shortDescription];
    v37 = sub_22A4DD5EC();
    v39 = v38;

    MEMORY[0x22AAD08C0](v37, v39);

    MEMORY[0x22AAD08C0](7235872, 0xE300000000000000);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
    v40 = sub_22A4DD4AC();
    MEMORY[0x22AAD08C0](v40);

    *(v35 + 72) = v2;
    *(v35 + 48) = 0xD000000000000027;
    *(v35 + 56) = 0x800000022A597AF0;
    sub_22956AD8C(v35);
    swift_setDeallocating();
    sub_22953EAE4(v35 + 32, &qword_27D87CDA0, &unk_22A57A930);
    sub_22953E140(&qword_27D87D7C0, type metadata accessor for HMError, &unk_22A576D30);
    sub_22A4DB3CC();
    goto LABEL_22;
  }

  v8 = *(v0 + 824);
  v9 = *(v0 + 800);
  v111 = *(v0 + 576);
  v112 = *(v0 + 792);
  v10 = *(v0 + 584);
  v11 = [*(v0 + 768) uuid];
  sub_22A4DB79C();

  v12 = sub_22A4DB76C();
  v14 = v13;
  v15 = *(v9 + 8);
  *(v0 + 840) = v15;
  *(v0 + 848) = (v9 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v15(v8, v112);
  if (v12 != v111 || v14 != v10)
  {
    v22 = sub_22A4DE60C();

    if (v22)
    {
      goto LABEL_11;
    }

    goto LABEL_21;
  }

LABEL_11:
  if (!*(v1 + 16) || (v23 = sub_229543DBC(0x726F737365636341, 0xEB00000000736569), (v24 & 1) == 0) || (sub_2295404B0(*(v5 + 56) + 32 * v23, v0 + 496), *(v0 + 856) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881E90, &qword_22A5788A0), (swift_dynamicCast() & 1) == 0))
  {
    v42 = *(v0 + 768);
    type metadata accessor for HMError(0);
    *(v0 + 632) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7B0, &unk_22A578800);
    v43 = swift_initStackObject();
    *(v43 + 32) = 0x6E6F73616552;
    *(v43 + 16) = xmmword_22A576180;
    *(v43 + 40) = 0xE600000000000000;
    sub_22A4DE1FC();

    v44 = [v42 shortDescription];
    v45 = sub_22A4DD5EC();
    v47 = v46;

    MEMORY[0x22AAD08C0](v45, v47);

    *(v43 + 72) = MEMORY[0x277D837D0];
    *(v43 + 48) = 0xD000000000000028;
    *(v43 + 56) = 0x800000022A597B20;
    sub_22956AD8C(v43);
    swift_setDeallocating();
    sub_22953EAE4(v43 + 32, &qword_27D87CDA0, &unk_22A57A930);
    sub_22953E140(&qword_27D87D7C0, type metadata accessor for HMError, &unk_22A576D30);
    sub_22A4DB3CC();
    goto LABEL_22;
  }

  result = *(v0 + 624);
  *(v0 + 864) = result;
  v26 = *(result + 16);
  *(v0 + 872) = v26;
  if (v26)
  {
    *(v0 + 880) = 0;
    if (*(result + 16))
    {
      v27 = *(result + 32);
      *(v0 + 888) = v27;
      if (*(v27 + 16))
      {

        v28 = sub_229543DBC(0x696669746E656449, 0xEA00000000007265);
        if (v29)
        {
          sub_2295404B0(*(v27 + 56) + 32 * v28, v0 + 336);
          if (swift_dynamicCast())
          {
            v30 = *(v0 + 800);
            v31 = *(v0 + 792);
            v32 = *(v0 + 784);
            sub_22A4DB75C();

            if ((*(v30 + 48))(v32, 1, v31) == 1)
            {
              v33 = *(v0 + 784);

              sub_22953EAE4(v33, &unk_27D87D2A0, &unk_22A578BD0);
LABEL_45:
              v72 = *(v0 + 768);
              type metadata accessor for HMError(0);
              *(v0 + 608) = 3;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7B0, &unk_22A578800);
              v73 = swift_initStackObject();
              *(v73 + 32) = 0x6E6F73616552;
              *(v73 + 16) = xmmword_22A576180;
              *(v73 + 40) = 0xE600000000000000;
              sub_22A4DE1FC();
              MEMORY[0x22AAD08C0](0xD000000000000031, 0x800000022A597B50);
              v74 = [v72 shortDescription];
              v75 = sub_22A4DD5EC();
              v77 = v76;

              MEMORY[0x22AAD08C0](v75, v77);

              *(v73 + 72) = MEMORY[0x277D837D0];
              *(v73 + 48) = 0;
              *(v73 + 56) = 0xE000000000000000;
              sub_22956AD8C(v73);
              swift_setDeallocating();
              sub_22953EAE4(v73 + 32, &qword_27D87CDA0, &unk_22A57A930);
              sub_22953E140(&qword_27D87D7C0, type metadata accessor for HMError, &unk_22A576D30);
              sub_22A4DB3CC();
              goto LABEL_22;
            }

            v65 = *(v0 + 840);
            v66 = *(v0 + 816);
            v67 = *(v0 + 792);
            v68 = *(v0 + 768);
            (*(*(v0 + 800) + 32))(v66, *(v0 + 784), v67);
            v69 = sub_22A4DB77C();
            v70 = [v68 accessoryWithUUID_];
            *(v0 + 896) = v70;

            v65(v66, v67);
            if (v70)
            {
              v71 = swift_task_alloc();
              *(v0 + 904) = v71;
              *v71 = v0;
              v71[1] = sub_22980A9EC;

              return sub_229623DB4(v27);
            }
          }
        }
      }

      goto LABEL_45;
    }

    __break(1u);
    goto LABEL_67;
  }

  v48 = *(v0 + 760);

  if (!*(v48 + 16) || (v49 = sub_229543DBC(0x736D6F6F52, 0xE500000000000000), (v50 & 1) == 0) || (sub_2295404B0(*(*(v0 + 760) + 56) + 32 * v49, v0 + 464), (swift_dynamicCast() & 1) == 0))
  {
    v59 = *(v0 + 768);
    type metadata accessor for HMError(0);
    *(v0 + 664) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7B0, &unk_22A578800);
    v60 = swift_allocObject();
    *(v60 + 32) = 0x6E6F73616552;
    *(v60 + 16) = xmmword_22A576180;
    *(v60 + 40) = 0xE600000000000000;
    sub_22A4DE1FC();

    v61 = [v59 shortDescription];
    v62 = sub_22A4DD5EC();
    v64 = v63;

    MEMORY[0x22AAD08C0](v62, v64);

    *(v60 + 72) = MEMORY[0x277D837D0];
    *(v60 + 48) = 0xD000000000000022;
    *(v60 + 56) = 0x800000022A597B90;
    sub_22956AD8C(v60);
    swift_setDeallocating();
    sub_22953EAE4(v60 + 32, &qword_27D87CDA0, &unk_22A57A930);
    swift_deallocClassInstance();
    sub_22953E140(&qword_27D87D7C0, type metadata accessor for HMError, &unk_22A576D30);
    sub_22A4DB3CC();
    goto LABEL_22;
  }

  result = *(v0 + 672);
  *(v0 + 920) = result;
  v51 = *(result + 16);
  *(v0 + 928) = v51;
  if (v51)
  {
    *(v0 + 936) = 0;
    if (!*(result + 16))
    {
LABEL_67:
      __break(1u);
      goto LABEL_68;
    }

    v52 = *(result + 32);
    *(v0 + 944) = v52;
    if (*(v52 + 16))
    {

      v53 = sub_229543DBC(0x696669746E656449, 0xEA00000000007265);
      if (v54)
      {
        sub_2295404B0(*(v52 + 56) + 32 * v53, v0 + 432);
        if (swift_dynamicCast())
        {
          v55 = *(v0 + 800);
          v56 = *(v0 + 792);
          v57 = *(v0 + 776);
          sub_22A4DB75C();

          if ((*(v55 + 48))(v57, 1, v56) == 1)
          {
            v58 = *(v0 + 776);

            sub_22953EAE4(v58, &unk_27D87D2A0, &unk_22A578BD0);
LABEL_63:
            v99 = *(v0 + 768);
            type metadata accessor for HMError(0);
            *(v0 + 696) = 3;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7B0, &unk_22A578800);
            v100 = swift_allocObject();
            *(v100 + 32) = 0x6E6F73616552;
            *(v100 + 16) = xmmword_22A576180;
            *(v100 + 40) = 0xE600000000000000;
            sub_22A4DE1FC();

            v101 = [v99 shortDescription];
            v102 = sub_22A4DD5EC();
            v104 = v103;

            MEMORY[0x22AAD08C0](v102, v104);

            *(v100 + 72) = MEMORY[0x277D837D0];
            *(v100 + 48) = 0xD00000000000002CLL;
            *(v100 + 56) = 0x800000022A597BC0;
            sub_22956AD8C(v100);
            swift_setDeallocating();
            sub_22953EAE4(v100 + 32, &qword_27D87CDA0, &unk_22A57A930);
            swift_deallocClassInstance();
            sub_22953E140(&qword_27D87D7C0, type metadata accessor for HMError, &unk_22A576D30);
            sub_22A4DB3CC();
            goto LABEL_22;
          }

          v92 = *(v0 + 840);
          v93 = *(v0 + 808);
          v94 = *(v0 + 792);
          v95 = *(v0 + 768);
          (*(*(v0 + 800) + 32))(v93, *(v0 + 776), v94);
          v96 = sub_22A4DB77C();
          v97 = [v95 roomWithUUID_];
          *(v0 + 952) = v97;

          v92(v93, v94);
          if (v97)
          {
            v98 = swift_task_alloc();
            *(v0 + 960) = v98;
            *v98 = v0;
            v98[1] = sub_22980B9D0;

            return sub_22958E42C(v52);
          }
        }
      }
    }

    goto LABEL_63;
  }

  v78 = *(v0 + 760);

  if (!*(v78 + 16) || (v79 = sub_229543DBC(0x73656E656353, 0xE600000000000000), (v80 & 1) == 0) || (sub_2295404B0(*(*(v0 + 760) + 56) + 32 * v79, v0 + 368), (swift_dynamicCast() & 1) == 0))
  {
    v86 = *(v0 + 768);
    type metadata accessor for HMError(0);
    *(v0 + 728) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7B0, &unk_22A578800);
    v87 = swift_allocObject();
    *(v87 + 32) = 0x6E6F73616552;
    *(v87 + 16) = xmmword_22A576180;
    *(v87 + 40) = 0xE600000000000000;
    sub_22A4DE1FC();

    v88 = [v86 shortDescription];
    v89 = sub_22A4DD5EC();
    v91 = v90;

    MEMORY[0x22AAD08C0](v89, v91);

    *(v87 + 72) = MEMORY[0x277D837D0];
    *(v87 + 48) = 0xD000000000000024;
    *(v87 + 56) = 0x800000022A597BF0;
    sub_22956AD8C(v87);
    swift_setDeallocating();
    sub_22953EAE4(v87 + 32, &qword_27D87CDA0, &unk_22A57A930);
    swift_deallocClassInstance();
    sub_22953E140(&qword_27D87D7C0, type metadata accessor for HMError, &unk_22A576D30);
    sub_22A4DB3CC();
    goto LABEL_22;
  }

  result = *(v0 + 736);
  *(v0 + 976) = result;
  v81 = *(result + 16);
  *(v0 + 984) = v81;
  if (!v81)
  {

    v41 = *(v0 + 8);
    goto LABEL_23;
  }

  *(v0 + 992) = 0;
  if (!*(result + 16))
  {
LABEL_68:
    __break(1u);
    return result;
  }

  v82 = *(result + 32);
  *(v0 + 1000) = v82;

  v84 = sub_2298150B0(v83, &selRef_actionSetWithUUID_);
  *(v0 + 1008) = v84;
  if (!v84)
  {
    v105 = *(v0 + 768);

    type metadata accessor for HMError(0);
    *(v0 + 752) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7B0, &unk_22A578800);
    v106 = swift_allocObject();
    *(v106 + 32) = 0x6E6F73616552;
    *(v106 + 16) = xmmword_22A576180;
    *(v106 + 40) = 0xE600000000000000;
    sub_22A4DE1FC();
    MEMORY[0x22AAD08C0](0xD000000000000032, 0x800000022A597C20);
    v107 = [v105 shortDescription];
    v108 = sub_22A4DD5EC();
    v110 = v109;

    MEMORY[0x22AAD08C0](v108, v110);

    *(v106 + 72) = MEMORY[0x277D837D0];
    *(v106 + 48) = 0;
    *(v106 + 56) = 0xE000000000000000;
    sub_22956AD8C(v106);
    swift_setDeallocating();
    sub_22953EAE4(v106 + 32, &qword_27D87CDA0, &unk_22A57A930);
    swift_deallocClassInstance();
    sub_22953E140(&qword_27D87D7C0, type metadata accessor for HMError, &unk_22A576D30);
    sub_22A4DB3CC();
    goto LABEL_22;
  }

  v85 = swift_task_alloc();
  *(v0 + 1016) = v85;
  *v85 = v0;
  v85[1] = sub_22980C428;

  return sub_22958C5E4(v82);
}

uint64_t sub_22980A9EC()
{
  *(*v1 + 912) = v0;

  if (v0)
  {

    v2 = sub_22980C8D4;
  }

  else
  {
    v2 = sub_22980AB14;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22980AB14()
{
  v1 = *(v0 + 880);
  v2 = *(v0 + 872);

  if (v1 + 1 != v2)
  {
    v15 = *(v0 + 880) + 1;
    *(v0 + 880) = v15;
    result = *(v0 + 864);
    if (v15 >= *(result + 16))
    {
      __break(1u);
LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

    v16 = *(result + 8 * v15 + 32);
    *(v0 + 888) = v16;
    if (*(v16 + 16))
    {

      v17 = sub_229543DBC(0x696669746E656449, 0xEA00000000007265);
      if (v18)
      {
        sub_2295404B0(*(v16 + 56) + 32 * v17, v0 + 336);
        if (swift_dynamicCast())
        {
          v19 = *(v0 + 800);
          v20 = *(v0 + 792);
          v21 = *(v0 + 784);
          sub_22A4DB75C();

          if ((*(v19 + 48))(v21, 1, v20) == 1)
          {
            v22 = *(v0 + 784);

            sub_22953EAE4(v22, &unk_27D87D2A0, &unk_22A578BD0);
LABEL_26:
            v36 = MEMORY[0x277D837D0];
            v37 = *(v0 + 768);
            type metadata accessor for HMError(0);
            *(v0 + 608) = 3;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7B0, &unk_22A578800);
            inited = swift_initStackObject();
            *(inited + 32) = 0x6E6F73616552;
            *(inited + 16) = xmmword_22A576180;
            *(inited + 40) = 0xE600000000000000;
            sub_22A4DE1FC();
            MEMORY[0x22AAD08C0](0xD000000000000031, 0x800000022A597B50);
            v39 = [v37 shortDescription];
            v40 = sub_22A4DD5EC();
            v42 = v41;

            MEMORY[0x22AAD08C0](v40, v42);

            *(inited + 72) = v36;
            *(inited + 48) = 0;
            *(inited + 56) = 0xE000000000000000;
            sub_22956AD8C(inited);
            swift_setDeallocating();
            sub_22953EAE4(inited + 32, &qword_27D87CDA0, &unk_22A57A930);
            sub_22953E140(&qword_27D87D7C0, type metadata accessor for HMError, &unk_22A576D30);
            sub_22A4DB3CC();
            goto LABEL_27;
          }

          v29 = *(v0 + 840);
          v30 = *(v0 + 816);
          v31 = *(v0 + 792);
          v32 = *(v0 + 768);
          (*(*(v0 + 800) + 32))(v30, *(v0 + 784), v31);
          v33 = sub_22A4DB77C();
          v34 = [v32 accessoryWithUUID_];
          *(v0 + 896) = v34;

          v29(v30, v31);
          if (v34)
          {
            v35 = swift_task_alloc();
            *(v0 + 904) = v35;
            *v35 = v0;
            v35[1] = sub_22980A9EC;

            return sub_229623DB4(v16);
          }
        }
      }
    }

    goto LABEL_26;
  }

  v3 = *(v0 + 760);

  if (!*(v3 + 16) || (v4 = sub_229543DBC(0x736D6F6F52, 0xE500000000000000), (v5 & 1) == 0) || (sub_2295404B0(*(*(v0 + 760) + 56) + 32 * v4, v0 + 464), (swift_dynamicCast() & 1) == 0))
  {
    v23 = *(v0 + 768);
    type metadata accessor for HMError(0);
    *(v0 + 664) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7B0, &unk_22A578800);
    v24 = swift_allocObject();
    *(v24 + 32) = 0x6E6F73616552;
    *(v24 + 16) = xmmword_22A576180;
    *(v24 + 40) = 0xE600000000000000;
    sub_22A4DE1FC();

    v25 = [v23 shortDescription];
    v26 = sub_22A4DD5EC();
    v28 = v27;

    MEMORY[0x22AAD08C0](v26, v28);

    *(v24 + 72) = MEMORY[0x277D837D0];
    *(v24 + 48) = 0xD000000000000022;
    *(v24 + 56) = 0x800000022A597B90;
    sub_22956AD8C(v24);
    swift_setDeallocating();
    sub_22953EAE4(v24 + 32, &qword_27D87CDA0, &unk_22A57A930);
    swift_deallocClassInstance();
    sub_22953E140(&qword_27D87D7C0, type metadata accessor for HMError, &unk_22A576D30);
    sub_22A4DB3CC();
LABEL_27:
    swift_willThrow();

    v43 = *(v0 + 8);
LABEL_28:

    return v43();
  }

  result = *(v0 + 672);
  *(v0 + 920) = result;
  v7 = *(result + 16);
  *(v0 + 928) = v7;
  if (v7)
  {
    *(v0 + 936) = 0;
    if (*(result + 16))
    {
      v8 = *(result + 32);
      *(v0 + 944) = v8;
      if (*(v8 + 16))
      {

        v9 = sub_229543DBC(0x696669746E656449, 0xEA00000000007265);
        if (v10)
        {
          sub_2295404B0(*(v8 + 56) + 32 * v9, v0 + 432);
          if (swift_dynamicCast())
          {
            v11 = *(v0 + 800);
            v12 = *(v0 + 792);
            v13 = *(v0 + 776);
            sub_22A4DB75C();

            if ((*(v11 + 48))(v13, 1, v12) == 1)
            {
              v14 = *(v0 + 776);

              sub_22953EAE4(v14, &unk_27D87D2A0, &unk_22A578BD0);
LABEL_48:
              v65 = *(v0 + 768);
              type metadata accessor for HMError(0);
              *(v0 + 696) = 3;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7B0, &unk_22A578800);
              v66 = swift_allocObject();
              *(v66 + 32) = 0x6E6F73616552;
              *(v66 + 16) = xmmword_22A576180;
              *(v66 + 40) = 0xE600000000000000;
              sub_22A4DE1FC();

              v67 = [v65 shortDescription];
              v68 = sub_22A4DD5EC();
              v70 = v69;

              MEMORY[0x22AAD08C0](v68, v70);

              *(v66 + 72) = MEMORY[0x277D837D0];
              *(v66 + 48) = 0xD00000000000002CLL;
              *(v66 + 56) = 0x800000022A597BC0;
              sub_22956AD8C(v66);
              swift_setDeallocating();
              sub_22953EAE4(v66 + 32, &qword_27D87CDA0, &unk_22A57A930);
              swift_deallocClassInstance();
              sub_22953E140(&qword_27D87D7C0, type metadata accessor for HMError, &unk_22A576D30);
              sub_22A4DB3CC();
              goto LABEL_27;
            }

            v58 = *(v0 + 840);
            v59 = *(v0 + 808);
            v60 = *(v0 + 792);
            v61 = *(v0 + 768);
            (*(*(v0 + 800) + 32))(v59, *(v0 + 776), v60);
            v62 = sub_22A4DB77C();
            v63 = [v61 roomWithUUID_];
            *(v0 + 952) = v63;

            v58(v59, v60);
            if (v63)
            {
              v64 = swift_task_alloc();
              *(v0 + 960) = v64;
              *v64 = v0;
              v64[1] = sub_22980B9D0;

              return sub_22958E42C(v8);
            }
          }
        }
      }

      goto LABEL_48;
    }

    goto LABEL_52;
  }

  v44 = *(v0 + 760);

  if (!*(v44 + 16) || (v45 = sub_229543DBC(0x73656E656353, 0xE600000000000000), (v46 & 1) == 0) || (sub_2295404B0(*(*(v0 + 760) + 56) + 32 * v45, v0 + 368), (swift_dynamicCast() & 1) == 0))
  {
    v52 = *(v0 + 768);
    type metadata accessor for HMError(0);
    *(v0 + 728) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7B0, &unk_22A578800);
    v53 = swift_allocObject();
    *(v53 + 32) = 0x6E6F73616552;
    *(v53 + 16) = xmmword_22A576180;
    *(v53 + 40) = 0xE600000000000000;
    sub_22A4DE1FC();

    v54 = [v52 shortDescription];
    v55 = sub_22A4DD5EC();
    v57 = v56;

    MEMORY[0x22AAD08C0](v55, v57);

    *(v53 + 72) = MEMORY[0x277D837D0];
    *(v53 + 48) = 0xD000000000000024;
    *(v53 + 56) = 0x800000022A597BF0;
    sub_22956AD8C(v53);
    swift_setDeallocating();
    sub_22953EAE4(v53 + 32, &qword_27D87CDA0, &unk_22A57A930);
    swift_deallocClassInstance();
    sub_22953E140(&qword_27D87D7C0, type metadata accessor for HMError, &unk_22A576D30);
    sub_22A4DB3CC();
    goto LABEL_27;
  }

  result = *(v0 + 736);
  *(v0 + 976) = result;
  v47 = *(result + 16);
  *(v0 + 984) = v47;
  if (!v47)
  {

    v43 = *(v0 + 8);
    goto LABEL_28;
  }

  *(v0 + 992) = 0;
  if (!*(result + 16))
  {
LABEL_53:
    __break(1u);
    return result;
  }

  v48 = *(result + 32);
  *(v0 + 1000) = v48;

  v50 = sub_2298150B0(v49, &selRef_actionSetWithUUID_);
  *(v0 + 1008) = v50;
  if (!v50)
  {
    v71 = *(v0 + 768);

    type metadata accessor for HMError(0);
    *(v0 + 752) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7B0, &unk_22A578800);
    v72 = swift_allocObject();
    *(v72 + 32) = 0x6E6F73616552;
    *(v72 + 16) = xmmword_22A576180;
    *(v72 + 40) = 0xE600000000000000;
    sub_22A4DE1FC();
    MEMORY[0x22AAD08C0](0xD000000000000032, 0x800000022A597C20);
    v73 = [v71 shortDescription];
    v74 = sub_22A4DD5EC();
    v76 = v75;

    MEMORY[0x22AAD08C0](v74, v76);

    *(v72 + 72) = MEMORY[0x277D837D0];
    *(v72 + 48) = 0;
    *(v72 + 56) = 0xE000000000000000;
    sub_22956AD8C(v72);
    swift_setDeallocating();
    sub_22953EAE4(v72 + 32, &qword_27D87CDA0, &unk_22A57A930);
    swift_deallocClassInstance();
    sub_22953E140(&qword_27D87D7C0, type metadata accessor for HMError, &unk_22A576D30);
    sub_22A4DB3CC();
    goto LABEL_27;
  }

  v51 = swift_task_alloc();
  *(v0 + 1016) = v51;
  *v51 = v0;
  v51[1] = sub_22980C428;

  return sub_22958C5E4(v48);
}

uint64_t sub_22980B9D0()
{
  *(*v1 + 968) = v0;

  if (v0)
  {

    v2 = sub_22980C980;
  }

  else
  {
    v2 = sub_22980BAF8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22980BAF8()
{
  v1 = *(v0 + 936);
  v2 = *(v0 + 928);

  if (v1 + 1 == v2)
  {
    v3 = *(v0 + 760);

    if (*(v3 + 16))
    {
      v4 = sub_229543DBC(0x73656E656353, 0xE600000000000000);
      if (v5)
      {
        sub_2295404B0(*(*(v0 + 760) + 56) + 32 * v4, v0 + 368);
        if (swift_dynamicCast())
        {
          result = *(v0 + 736);
          *(v0 + 976) = result;
          v7 = *(result + 16);
          *(v0 + 984) = v7;
          if (!v7)
          {

            v40 = *(v0 + 8);
            goto LABEL_27;
          }

          *(v0 + 992) = 0;
          if (*(result + 16))
          {
            v8 = *(result + 32);
            *(v0 + 1000) = v8;

            v10 = sub_2298150B0(v9, &selRef_actionSetWithUUID_);
            *(v0 + 1008) = v10;
            if (v10)
            {
              v11 = swift_task_alloc();
              *(v0 + 1016) = v11;
              *v11 = v0;
              v11[1] = sub_22980C428;

              return sub_22958C5E4(v8);
            }

            v41 = *(v0 + 768);

            type metadata accessor for HMError(0);
            *(v0 + 752) = 3;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7B0, &unk_22A578800);
            v42 = swift_allocObject();
            *(v42 + 32) = 0x6E6F73616552;
            *(v42 + 16) = xmmword_22A576180;
            *(v42 + 40) = 0xE600000000000000;
            sub_22A4DE1FC();
            MEMORY[0x22AAD08C0](0xD000000000000032, 0x800000022A597C20);
            v43 = [v41 shortDescription];
            v44 = sub_22A4DD5EC();
            v46 = v45;

            MEMORY[0x22AAD08C0](v44, v46);

            *(v42 + 72) = MEMORY[0x277D837D0];
            *(v42 + 48) = 0;
            *(v42 + 56) = 0xE000000000000000;
            sub_22956AD8C(v42);
            swift_setDeallocating();
            sub_22953EAE4(v42 + 32, &qword_27D87CDA0, &unk_22A57A930);
            swift_deallocClassInstance();
            sub_22953E140(&qword_27D87D7C0, type metadata accessor for HMError, &unk_22A576D30);
            sub_22A4DB3CC();
            goto LABEL_26;
          }

LABEL_33:
          __break(1u);
          return result;
        }
      }
    }

    v20 = *(v0 + 768);
    type metadata accessor for HMError(0);
    *(v0 + 728) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7B0, &unk_22A578800);
    v21 = swift_allocObject();
    *(v21 + 32) = 0x6E6F73616552;
    *(v21 + 16) = xmmword_22A576180;
    *(v21 + 40) = 0xE600000000000000;
    sub_22A4DE1FC();

    v22 = [v20 shortDescription];
    v23 = sub_22A4DD5EC();
    v25 = v24;

    MEMORY[0x22AAD08C0](v23, v25);

    *(v21 + 72) = MEMORY[0x277D837D0];
    *(v21 + 48) = 0xD000000000000024;
    *(v21 + 56) = 0x800000022A597BF0;
    sub_22956AD8C(v21);
    swift_setDeallocating();
    sub_22953EAE4(v21 + 32, &qword_27D87CDA0, &unk_22A57A930);
    swift_deallocClassInstance();
    sub_22953E140(&qword_27D87D7C0, type metadata accessor for HMError, &unk_22A576D30);
    sub_22A4DB3CC();
LABEL_26:
    swift_willThrow();

    v40 = *(v0 + 8);
LABEL_27:

    return v40();
  }

  v12 = *(v0 + 936) + 1;
  *(v0 + 936) = v12;
  result = *(v0 + 920);
  if (v12 >= *(result + 16))
  {
    __break(1u);
    goto LABEL_33;
  }

  v13 = *(result + 8 * v12 + 32);
  *(v0 + 944) = v13;
  if (!*(v13 + 16))
  {
    goto LABEL_24;
  }

  v14 = sub_229543DBC(0x696669746E656449, 0xEA00000000007265);
  if ((v15 & 1) == 0)
  {
    goto LABEL_23;
  }

  sub_2295404B0(*(v13 + 56) + 32 * v14, v0 + 432);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_23;
  }

  v16 = *(v0 + 800);
  v17 = *(v0 + 792);
  v18 = *(v0 + 776);
  sub_22A4DB75C();

  if ((*(v16 + 48))(v18, 1, v17) == 1)
  {
    v19 = *(v0 + 776);

    sub_22953EAE4(v19, &unk_27D87D2A0, &unk_22A578BD0);
LABEL_25:
    v33 = MEMORY[0x277D837D0];
    v34 = *(v0 + 768);
    type metadata accessor for HMError(0);
    *(v0 + 696) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7B0, &unk_22A578800);
    v35 = swift_allocObject();
    *(v35 + 32) = 0x6E6F73616552;
    *(v35 + 16) = xmmword_22A576180;
    *(v35 + 40) = 0xE600000000000000;
    sub_22A4DE1FC();

    v36 = [v34 shortDescription];
    v37 = sub_22A4DD5EC();
    v39 = v38;

    MEMORY[0x22AAD08C0](v37, v39);

    *(v35 + 72) = v33;
    *(v35 + 48) = 0xD00000000000002CLL;
    *(v35 + 56) = 0x800000022A597BC0;
    sub_22956AD8C(v35);
    swift_setDeallocating();
    sub_22953EAE4(v35 + 32, &qword_27D87CDA0, &unk_22A57A930);
    swift_deallocClassInstance();
    sub_22953E140(&qword_27D87D7C0, type metadata accessor for HMError, &unk_22A576D30);
    sub_22A4DB3CC();
    goto LABEL_26;
  }

  v26 = *(v0 + 840);
  v27 = *(v0 + 808);
  v28 = *(v0 + 792);
  v29 = *(v0 + 768);
  (*(*(v0 + 800) + 32))(v27, *(v0 + 776), v28);
  v30 = sub_22A4DB77C();
  v31 = [v29 roomWithUUID_];
  *(v0 + 952) = v31;

  v26(v27, v28);
  if (!v31)
  {
LABEL_23:

LABEL_24:

    goto LABEL_25;
  }

  v32 = swift_task_alloc();
  *(v0 + 960) = v32;
  *v32 = v0;
  v32[1] = sub_22980B9D0;

  return sub_22958E42C(v13);
}

uint64_t sub_22980C428()
{
  *(*v1 + 1024) = v0;

  if (v0)
  {

    v2 = sub_22980CA2C;
  }

  else
  {
    v2 = sub_22980C550;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

void sub_22980C550()
{
  v1 = v0[126];
  v2 = v0[124];
  v3 = v0[123];

  if (v2 + 1 == v3)
  {

    v4 = v0[1];
LABEL_9:

    v4();
    return;
  }

  v5 = v0[124] + 1;
  v0[124] = v5;
  v6 = v0[122];
  if (v5 >= *(v6 + 16))
  {
    __break(1u);
    return;
  }

  v7 = *(v6 + 8 * v5 + 32);
  v0[125] = v7;

  v9 = sub_2298150B0(v8, &selRef_actionSetWithUUID_);
  v0[126] = v9;
  if (!v9)
  {
    v11 = v0[96];

    type metadata accessor for HMError(0);
    v0[94] = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7B0, &unk_22A578800);
    v12 = swift_allocObject();
    *(v12 + 32) = 0x6E6F73616552;
    *(v12 + 16) = xmmword_22A576180;
    *(v12 + 40) = 0xE600000000000000;
    sub_22A4DE1FC();
    MEMORY[0x22AAD08C0](0xD000000000000032, 0x800000022A597C20);
    v13 = [v11 shortDescription];
    v14 = sub_22A4DD5EC();
    v16 = v15;

    MEMORY[0x22AAD08C0](v14, v16);

    *(v12 + 72) = MEMORY[0x277D837D0];
    *(v12 + 48) = 0;
    *(v12 + 56) = 0xE000000000000000;
    sub_22956AD8C(v12);
    swift_setDeallocating();
    sub_22953EAE4(v12 + 32, &qword_27D87CDA0, &unk_22A57A930);
    swift_deallocClassInstance();
    sub_22953E140(&qword_27D87D7C0, type metadata accessor for HMError, &unk_22A576D30);
    sub_22A4DB3CC();
    swift_willThrow();

    v4 = v0[1];
    goto LABEL_9;
  }

  v10 = swift_task_alloc();
  v0[127] = v10;
  *v10 = v0;
  v10[1] = sub_22980C428;

  sub_22958C5E4(v7);
}

uint64_t sub_22980C8D4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22980C980()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22980CA2C()
{

  v1 = *(v0 + 8);

  return v1();
}

void *sub_22980CAD8()
{
  v1 = v0;
  v2 = sub_22A4DB7DC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v75 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [v1 name];
  v7 = sub_22A4DD5EC();
  v9 = v8;

  v10 = MEMORY[0x277D837D0];
  v83 = MEMORY[0x277D837D0];
  v81 = v7;
  v82 = v9;
  sub_229543C58(&v81, v79);
  v11 = MEMORY[0x277D84F98];
  LOBYTE(v7) = swift_isUniquelyReferenced_nonNull_native();
  v78 = v11;
  v12 = __swift_mutable_project_boxed_opaque_existential_0(v79, v80);
  MEMORY[0x28223BE20](v12);
  v14 = (&v75 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v15 + 16))(v14);
  sub_2297FE940(*v14, v14[1], 0x656D614E656D6F48, 0xE800000000000000, v7, &v78);
  __swift_destroy_boxed_opaque_existential_0(v79);
  v16 = v78;
  v17 = [v1 uuid];
  sub_22A4DB79C();

  v18 = sub_22A4DB76C();
  v20 = v19;
  (*(v3 + 8))(v5, v2);
  v83 = v10;
  v81 = v18;
  v82 = v20;
  sub_229543C58(&v81, v79);
  LOBYTE(v5) = swift_isUniquelyReferenced_nonNull_native();
  v78 = v16;
  v21 = __swift_mutable_project_boxed_opaque_existential_0(v79, v80);
  MEMORY[0x28223BE20](v21);
  v23 = (&v75 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v24 + 16))(v23);
  sub_2297FE940(*v23, v23[1], 0x696669746E656449, 0xEA00000000007265, v5, &v78);
  __swift_destroy_boxed_opaque_existential_0(v79);
  v25 = v78;
  v77 = v1;
  v26 = [v1 accessories];
  sub_229562F68(0, &qword_281401C30, off_278665FE8);
  v27 = sub_22A4DD83C();

  if (v27 >> 62)
  {
    v28 = sub_22A4DE0EC();
  }

  else
  {
    v28 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v28)
  {
    v81 = MEMORY[0x277D84F90];
    result = sub_229583714(0, v28 & ~(v28 >> 63), 0);
    if (v28 < 0)
    {
      __break(1u);
      goto LABEL_44;
    }

    v30 = 0;
    v31 = v81;
    do
    {
      if ((v27 & 0xC000000000000001) != 0)
      {
        v32 = MEMORY[0x22AAD13F0](v30, v27);
      }

      else
      {
        v32 = *(v27 + 8 * v30 + 32);
      }

      v33 = v32;
      v34 = sub_229624F78();

      v81 = v31;
      v36 = *(v31 + 16);
      v35 = *(v31 + 24);
      if (v36 >= v35 >> 1)
      {
        sub_229583714((v35 > 1), v36 + 1, 1);
        v31 = v81;
      }

      ++v30;
      *(v31 + 16) = v36 + 1;
      *(v31 + 8 * v36 + 32) = v34;
    }

    while (v28 != v30);
  }

  else
  {

    v31 = MEMORY[0x277D84F90];
  }

  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881E90, &qword_22A5788A0);
  v83 = v76;
  v81 = v31;
  sub_229543C58(&v81, v79);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v78 = v25;
  v38 = __swift_mutable_project_boxed_opaque_existential_0(v79, v80);
  MEMORY[0x28223BE20](v38);
  v40 = (&v75 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v41 + 16))(v40);
  sub_2297FED58(*v40, 0x726F737365636341, 0xEB00000000736569, isUniquelyReferenced_nonNull_native, &v78);
  __swift_destroy_boxed_opaque_existential_0(v79);
  v42 = v78;
  v43 = [v77 rooms];
  sub_229562F68(0, &unk_2814017A0, off_278666308);
  v44 = sub_22A4DD83C();

  if (!(v44 >> 62))
  {
    v45 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v45)
    {
      goto LABEL_16;
    }

LABEL_27:

    v47 = MEMORY[0x277D84F90];
    goto LABEL_28;
  }

  v45 = sub_22A4DE0EC();
  if (!v45)
  {
    goto LABEL_27;
  }

LABEL_16:
  v81 = MEMORY[0x277D84F90];
  result = sub_229583714(0, v45 & ~(v45 >> 63), 0);
  if (v45 < 0)
  {
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v46 = 0;
  v47 = v81;
  do
  {
    if ((v44 & 0xC000000000000001) != 0)
    {
      v48 = MEMORY[0x22AAD13F0](v46, v44);
    }

    else
    {
      v48 = *(v44 + 8 * v46 + 32);
    }

    v49 = v48;
    v50 = sub_22958E994();

    v81 = v47;
    v52 = *(v47 + 16);
    v51 = *(v47 + 24);
    if (v52 >= v51 >> 1)
    {
      sub_229583714((v51 > 1), v52 + 1, 1);
      v47 = v81;
    }

    ++v46;
    *(v47 + 16) = v52 + 1;
    *(v47 + 8 * v52 + 32) = v50;
  }

  while (v45 != v46);

LABEL_28:
  v83 = v76;
  v81 = v47;
  sub_229543C58(&v81, v79);
  v53 = swift_isUniquelyReferenced_nonNull_native();
  v78 = v42;
  v54 = __swift_mutable_project_boxed_opaque_existential_0(v79, v80);
  MEMORY[0x28223BE20](v54);
  v56 = (&v75 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v57 + 16))(v56);
  sub_2297FED58(*v56, 0x736D6F6F52, 0xE500000000000000, v53, &v78);
  __swift_destroy_boxed_opaque_existential_0(v79);
  v58 = v78;
  result = [v77 actionSets];
  v59 = MEMORY[0x277D84F90];
  if (result)
  {
    v60 = result;
    sub_229562F68(0, &qword_281401C20, off_278666020);
    v61 = sub_22A4DD83C();

    if (v61 >> 62)
    {
      v62 = sub_22A4DE0EC();
      if (v62)
      {
LABEL_31:
        v81 = v59;
        result = sub_229583714(0, v62 & ~(v62 >> 63), 0);
        if ((v62 & 0x8000000000000000) == 0)
        {
          v63 = 0;
          v64 = v81;
          do
          {
            if ((v61 & 0xC000000000000001) != 0)
            {
              v65 = MEMORY[0x22AAD13F0](v63, v61);
            }

            else
            {
              v65 = *(v61 + 8 * v63 + 32);
            }

            v66 = v65;
            v67 = sub_22958CD88();

            v81 = v64;
            v69 = *(v64 + 16);
            v68 = *(v64 + 24);
            if (v69 >= v68 >> 1)
            {
              sub_229583714((v68 > 1), v69 + 1, 1);
              v64 = v81;
            }

            ++v63;
            *(v64 + 16) = v69 + 1;
            *(v64 + 8 * v69 + 32) = v67;
          }

          while (v62 != v63);

          goto LABEL_42;
        }

        goto LABEL_45;
      }
    }

    else
    {
      v62 = *((v61 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v62)
      {
        goto LABEL_31;
      }
    }

    v64 = MEMORY[0x277D84F90];
LABEL_42:
    v83 = v76;
    v81 = v64;
    sub_229543C58(&v81, v79);
    v70 = swift_isUniquelyReferenced_nonNull_native();
    v78 = v58;
    v71 = __swift_mutable_project_boxed_opaque_existential_0(v79, v80);
    MEMORY[0x28223BE20](v71);
    v73 = (&v75 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v74 + 16))(v73);
    sub_2297FED58(*v73, 0x73656E656353, 0xE600000000000000, v70, &v78);
    __swift_destroy_boxed_opaque_existential_0(v79);
    return v78;
  }

LABEL_46:
  __break(1u);
  return result;
}