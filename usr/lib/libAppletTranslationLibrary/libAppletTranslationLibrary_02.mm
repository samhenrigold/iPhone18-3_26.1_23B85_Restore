BOOL sub_22EF76C84(__int128 *a1, __int128 *a2)
{
  v2 = a1[1];
  v5 = *a1;
  v6[0] = v2;
  *(v6 + 11) = *(a1 + 27);
  v3 = a2[1];
  v7 = *a2;
  v8[0] = v3;
  *(v8 + 11) = *(a2 + 27);
  return sub_22EF7B740(&v5, &v7);
}

id sub_22EF76D2C(uint64_t a1, uint64_t a2)
{
  result = [objc_allocWithZone(type metadata accessor for LyonSwiftDecoder(a1 a2))];
  qword_27DA9E510 = result;
  return result;
}

id sub_22EF76D98(uint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR____TtC24AppletTranslationLibrary16LyonSwiftDecoder_endpointIdentifier;
  v4 = &v2[OBJC_IVAR____TtC24AppletTranslationLibrary16LyonSwiftDecoder_readerIdentifier];
  *v4 = 0;
  v4[1] = 0;
  v5 = OBJC_IVAR____TtC24AppletTranslationLibrary16LyonSwiftDecoder_endpointNotFoundReason;
  v2[OBJC_IVAR____TtC24AppletTranslationLibrary16LyonSwiftDecoder_endpointNotFoundReason] = 4;
  v6 = &v2[v3];
  v7 = &v2[OBJC_IVAR____TtC24AppletTranslationLibrary16LyonSwiftDecoder_readerVendorId];
  *v7 = 0;
  v7[1] = 0;
  v8 = &v2[OBJC_IVAR____TtC24AppletTranslationLibrary16LyonSwiftDecoder_readerProductId];
  *v8 = 0;
  v8[1] = 0;
  v9 = &v2[OBJC_IVAR____TtC24AppletTranslationLibrary16LyonSwiftDecoder_readerFirmwareVersion];
  *v9 = 0;
  v9[1] = 0;
  v2[OBJC_IVAR____TtC24AppletTranslationLibrary16LyonSwiftDecoder_state] = 0x80;
  *v6 = 0;
  v6[1] = 0;
  *&v2[OBJC_IVAR____TtC24AppletTranslationLibrary16LyonSwiftDecoder_sw] = -28672;
  v2[v5] = 4;
  v2[OBJC_IVAR____TtC24AppletTranslationLibrary16LyonSwiftDecoder_antiRelayResult] = 0;
  v2[OBJC_IVAR____TtC24AppletTranslationLibrary16LyonSwiftDecoder_requestAuth] = 0;
  v2[OBJC_IVAR____TtC24AppletTranslationLibrary16LyonSwiftDecoder_protocolVersion] = 0;
  v11.receiver = v2;
  v11.super_class = type metadata accessor for LyonSwiftDecoder(a1, a2);
  return objc_msgSendSuper2(&v11, sel_init);
}

char *sub_22EF76E98(uint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v8 = *a1;
  v9 = a1[1];
  v10 = a1[4];
  v11 = (v10 >> 60) & 3 | (4 * *(a1 + 42));
  if (v11 <= 8)
  {
    if (!((v10 >> 60) & 3 | (4 * *(a1 + 42))))
    {
      return sub_22EF79784(a1, a2, a3);
    }

    if (v11 == 4)
    {
      return sub_22EF7A180(a1, a2, a3);
    }

    if (v11 == 5)
    {
      return sub_22EF78A7C(v8, v9, a2, a3);
    }

    goto LABEL_20;
  }

  if (v11 == 9)
  {
    return sub_22EF78154(v8, v9, a2, a3);
  }

  if (v11 == 11)
  {
    sub_22EF77F9C(v8);
    v17 = MEMORY[0x277D84F90];
    return sub_22EFAB468(v17);
  }

  if (v11 != 12)
  {
LABEL_20:
    v17 = MEMORY[0x277D84F90];
    return sub_22EFAB468(v17);
  }

  v13 = *(a1 + 20);
  v14 = v10 | v9;
  v16 = a1[2];
  v15 = a1[3];
  if (!*(a1 + 20) && !(v14 | v8 | v15 | v16))
  {
    return sub_22EF7A71C(a1, a2, a3);
  }

  v18 = v14 | v15 | v16;
  if (!v13 && v8 == 2 && !v18)
  {
    *(a4 + OBJC_IVAR____TtC24AppletTranslationLibrary16LyonSwiftDecoder_state) = 1;
    goto LABEL_20;
  }

  if (v13 || v8 != 3 || v18)
  {
    goto LABEL_20;
  }

  *(a4 + OBJC_IVAR____TtC24AppletTranslationLibrary16LyonSwiftDecoder_state) = -127;
  return sub_22EF7924C(a2, a3);
}

unint64_t sub_22EF77018(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 32);
  v5 = (v4 >> 60) & 3 | (4 * *(a1 + 42));
  if (v5 == 4)
  {
    return sub_22EF7A71C(a1, a2, a3);
  }

  if (v5 == 11)
  {
    sub_22EF77F9C(*a1);
    v7 = MEMORY[0x277D84F90];
  }

  else
  {
    if (v5 == 12 && !*(a1 + 40) && !(*(a1 + 24) | *(a1 + 16) | *(a1 + 8) | *a1 | v4))
    {
      return sub_22EF7A71C(a1, a2, a3);
    }

    v7 = MEMORY[0x277D84F90];
  }

  return sub_22EFAB468(v7);
}

uint64_t sub_22EF770C4(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *a1;
  v6 = *(a1 + 1);
  v7 = a1[7];
  v8 = *(a1 + 5);
  LOBYTE(v125) = *a1;
  *(&v125 + 1) = v6;
  HIBYTE(v125) = v7;
  *(&v125 + 5) = v8;
  v9 = *(a1 + 1);
  v10 = a1[16];
  v11 = a1[17];
  v12 = a1[18];
  v13 = *(a1 + 19) | (a1[23] << 32);
  v15 = *(a1 + 3);
  v14 = *(a1 + 4);
  v16 = (v14 >> 60) & 3 | (4 * a1[42]);
  if (v16 <= 7)
  {
    v17 = *(a1 + 20);
    if (v16 == 1)
    {
      v108 = a1[17];
      v110 = a1[18];
      v116 = *(a1 + 4);
      v119 = v4;
      v114 = v125;
      if (qword_27DA9E370 != -1)
      {
        swift_once();
      }

      v24 = sub_22EFB626C();
      __swift_project_value_buffer(v24, qword_27DA9E518);
      v25 = sub_22EFB624C();
      v26 = sub_22EFB65CC();
      v27 = v17 >> 8;
      if (os_log_type_enabled(v25, v26))
      {
        v105 = v9;
        v28 = swift_slowAlloc();
        v103 = swift_slowAlloc();
        v122[0] = v103;
        *v28 = 136315138;
        if (v27 == 4)
        {
          v29 = 0;
        }

        else
        {
          v29 = v27 + 1;
        }

        v123 = v29;
        v124 = v27 == 4;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E5E0, &qword_22EFBC408);
        v30 = sub_22EFB64AC();
        v32 = v15;
        v33 = sub_22EF9447C(v30, v31, v122);

        *(v28 + 4) = v33;
        v15 = v32;
        _os_log_impl(&dword_22EEF5000, v25, v26, "Endpoint not found: %s", v28, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v103);
        MEMORY[0x2318FC200](v103, -1, -1);
        v34 = v28;
        v9 = v105;
        MEMORY[0x2318FC200](v34, -1, -1);
      }

      if ((v27 - 3) >= 2u)
      {
        v122[0] = sub_22EF83154(v9, v10 | (v108 << 8) | (v110 << 16) | (v13 << 24));
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E400, &unk_22EFBD180);
        sub_22EF7C054();
        v93 = sub_22EFB646C();
        v95 = v94;

        v96 = (v119 + OBJC_IVAR____TtC24AppletTranslationLibrary16LyonSwiftDecoder_endpointIdentifier);
        *v96 = v93;
        v96[1] = v95;

        v122[0] = sub_22EF83154(v15, v116 & 0xCFFFFFFFFFFFFFFFLL);
        v35 = v119;
        v97 = sub_22EFB646C();
        v99 = v98;

        v100 = (v119 + OBJC_IVAR____TtC24AppletTranslationLibrary16LyonSwiftDecoder_readerIdentifier);
        *v100 = v97;
        v100[1] = v99;
      }

      else
      {
        v35 = v119;
      }

      *(v35 + OBJC_IVAR____TtC24AppletTranslationLibrary16LyonSwiftDecoder_state) = v114 | 0x40;
      *(v35 + OBJC_IVAR____TtC24AppletTranslationLibrary16LyonSwiftDecoder_endpointNotFoundReason) = v27;
      return sub_22EFAB468(MEMORY[0x277D84F90]);
    }

    v113 = a1[16];
    if (v16 != 2)
    {
      if (v16 == 6)
      {
        v18 = v125;
        *(v4 + OBJC_IVAR____TtC24AppletTranslationLibrary16LyonSwiftDecoder_state) = v113 & 1 | 0x40;
        v122[0] = sub_22EF83154(v18, v9);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E400, &unk_22EFBD180);
        sub_22EF7C054();
        v19 = v4;
        v20 = sub_22EFB646C();
        v22 = v21;

        v23 = (v19 + OBJC_IVAR____TtC24AppletTranslationLibrary16LyonSwiftDecoder_endpointIdentifier);
        *v23 = v20;
        v23[1] = v22;

        *(v19 + OBJC_IVAR____TtC24AppletTranslationLibrary16LyonSwiftDecoder_requestAuth) = 1;
      }

      return sub_22EFAB468(MEMORY[0x277D84F90]);
    }

    v39 = v125;
    v104 = v125;
    *(v4 + OBJC_IVAR____TtC24AppletTranslationLibrary16LyonSwiftDecoder_state) = v12 & 1;
    v40 = v14;
    v117 = v14;
    v109 = v11;
    v111 = v12;
    sub_22EF83154(v39, v9);
    v106 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E400, &unk_22EFBD180);
    sub_22EF7C054();
    v41 = v4;
    v42 = sub_22EFB646C();
    v44 = v43;

    v45 = (v41 + OBJC_IVAR____TtC24AppletTranslationLibrary16LyonSwiftDecoder_endpointIdentifier);
    *v45 = v42;
    v45[1] = v44;

    sub_22EF83154(v15, v40 & 0xCFFFFFFFFFFFFFFFLL);
    v46 = sub_22EFB646C();
    v48 = v47;

    v120 = v41;
    v49 = (v41 + OBJC_IVAR____TtC24AppletTranslationLibrary16LyonSwiftDecoder_readerIdentifier);
    *v49 = v46;
    v49[1] = v48;

    *(v41 + OBJC_IVAR____TtC24AppletTranslationLibrary16LyonSwiftDecoder_protocolVersion) = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E5B0, &qword_22EFBC3C8);
    v50 = swift_allocObject();
    *(v50 + 16) = xmmword_22EFBC110;
    sub_22EFB648C();
    v51 = MEMORY[0x277D837D0];
    sub_22EFB668C();
    v52 = sub_22EFB648C();
    *(v50 + 96) = v51;
    *(v50 + 72) = v52;
    *(v50 + 80) = v53;
    sub_22EFB668C();
    *(v50 + 168) = v51;
    *(v50 + 144) = a2;
    *(v50 + 152) = a3;
    strcpy(v122, "selectStatus");

    sub_22EFB668C();
    *(v50 + 240) = MEMORY[0x277D83B88];
    *(v50 + 216) = 36864;
    strcpy(v122, "command");
    sub_22EFB668C();
    *(v50 + 312) = MEMORY[0x277D84C58];
    *(v50 + 288) = v113;
    *(v50 + 289) = v109;
    sub_22EFB668C();
    sub_22EF83154(v104, v106);
    v54 = sub_22EFB646C();
    v56 = v55;

    *(v50 + 384) = v51;
    *(v50 + 360) = v54;
    *(v50 + 368) = v56;
    sub_22EFB668C();
    sub_22EF83154(v15, v117 & 0xCFFFFFFFFFFFFFFFLL);
    v57 = sub_22EFB646C();
    v59 = v58;

    *(v50 + 456) = v51;
    *(v50 + 432) = v57;
    *(v50 + 440) = v59;
    strcpy(v122, "informative");
    HIDWORD(v122[1]) = -352321536;
    sub_22EFB668C();
    v60 = *(v120 + OBJC_IVAR____TtC24AppletTranslationLibrary16LyonSwiftDecoder_antiRelayResult);
    v61 = MEMORY[0x277D84B78];
    *(v50 + 528) = MEMORY[0x277D84B78];
    *(v50 + 504) = v60;
    v122[0] = 0xD000000000000012;
    v122[1] = 0x800000022EFC65C0;
    sub_22EFB668C();
    if (v111)
    {
      v62 = 2;
    }

    else
    {
      v62 = 1;
    }

    *(v50 + 600) = v61;
    *(v50 + 576) = v62;
    sub_22EFB648C();
    sub_22EFB668C();
    v63 = MEMORY[0x277D839B0];
    *(v50 + 672) = MEMORY[0x277D839B0];
    *(v50 + 648) = 1;
    sub_22EFB648C();
    sub_22EFB668C();
    *(v50 + 744) = v63;
    *(v50 + 720) = 1;
    sub_22EFB648C();
    sub_22EFB668C();
    *(v50 + 816) = v63;
    *(v50 + 792) = 0;
    v122[0] = sub_22EFB648C();
    v122[1] = v64;
    sub_22EFB668C();
    *(v50 + 888) = MEMORY[0x277D83B88];
    *(v50 + 864) = 1000;
    v65 = sub_22EFAB468(v50);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E5B8, &unk_22EFBC3D0);
LABEL_28:
    swift_arrayDestroy();
    swift_deallocClassInstance();
    return v65;
  }

  if (v16 != 8)
  {
    if (v16 != 10)
    {
      if (v16 == 11)
      {
        sub_22EF77F9C(v125);
      }

      return sub_22EFAB468(MEMORY[0x277D84F90]);
    }

    v112 = v10 | (v11 << 8) | (v12 << 16) | (v13 << 24);
    v115 = v6;
    *(v4 + OBJC_IVAR____TtC24AppletTranslationLibrary16LyonSwiftDecoder_state) = -127;
    v107 = v15;
    v118 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E5B0, &qword_22EFBC3C8);
    v68 = swift_allocObject();
    *(v68 + 16) = xmmword_22EFBC100;
    sub_22EFB648C();
    v69 = v9;
    v70 = MEMORY[0x277D837D0];
    sub_22EFB668C();
    v71 = sub_22EFB648C();
    *(v68 + 96) = v70;
    *(v68 + 72) = v71;
    *(v68 + 80) = v72;
    sub_22EFB668C();
    *(v68 + 168) = v70;
    *(v68 + 144) = a2;
    *(v68 + 152) = a3;
    strcpy(v122, "didError");

    sub_22EFB668C();
    *(v68 + 240) = MEMORY[0x277D839B0];
    *(v68 + 216) = 1;
    strcpy(v122, "command");
    v122[1] = 0xE700000000000000;
    sub_22EFB668C();
    v121 = v4;
    v73 = asc_22EFC66CF[sub_22EF76B24()];
    *(v68 + 312) = MEMORY[0x277D84B78];
    *(v68 + 288) = v73;
    sub_22EFB668C();
    sub_22EF83154(v69, v112);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E400, &unk_22EFBD180);
    sub_22EF7C054();
    v74 = sub_22EFB646C();
    v76 = v75;

    *(v68 + 384) = v70;
    *(v68 + 360) = v74;
    *(v68 + 368) = v76;
    sub_22EFB668C();
    sub_22EF83154(v107, v118 & 0xCFFFFFFFFFFFFFFFLL);
    v77 = sub_22EFB646C();
    v79 = v78;

    *(v68 + 456) = v70;
    *(v68 + 432) = v77;
    *(v68 + 440) = v79;
    v122[0] = 0x737574617473;
    v122[1] = 0xE600000000000000;
    sub_22EFB668C();
    v80 = *(v121 + OBJC_IVAR____TtC24AppletTranslationLibrary16LyonSwiftDecoder_sw);
    v81 = MEMORY[0x277D84C58];
    *(v68 + 528) = MEMORY[0x277D84C58];
    *(v68 + 504) = v80;
    strcpy(v122, "informative");
    sub_22EFB668C();
    *(v68 + 600) = v81;
    *(v68 + 576) = v5;
    *(v68 + 577) = v115;
    sub_22EFB668C();
    *(v68 + 672) = v81;
    *(v68 + 648) = 0;
    v122[0] = sub_22EFB648C();
    v122[1] = v82;
    sub_22EFB668C();
    *(v68 + 744) = MEMORY[0x277D839B0];
    *(v68 + 720) = 1;
    v65 = sub_22EFAB468(v68);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E5B8, &unk_22EFBC3D0);
    goto LABEL_28;
  }

  v36 = &byte_2843B6850;
  for (i = qword_2843B6840; i; --i)
  {
    v38 = *v36++;
    if (v38 == v5)
    {
      *(v4 + OBJC_IVAR____TtC24AppletTranslationLibrary16LyonSwiftDecoder_antiRelayResult) = v5;
      return sub_22EFAB468(MEMORY[0x277D84F90]);
    }
  }

  *(v4 + OBJC_IVAR____TtC24AppletTranslationLibrary16LyonSwiftDecoder_state) = -127;
  if (qword_27DA9E370 != -1)
  {
    swift_once();
  }

  v84 = sub_22EFB626C();
  __swift_project_value_buffer(v84, qword_27DA9E518);
  v85 = sub_22EFB624C();
  v86 = sub_22EFB65CC();
  if (os_log_type_enabled(v85, v86))
  {
    v87 = swift_slowAlloc();
    v88 = swift_slowAlloc();
    v122[0] = v88;
    *v87 = 136315138;
    v123 = v5;
    v89 = sub_22EFB64AC();
    v91 = sub_22EF9447C(v89, v90, v122);

    *(v87 + 4) = v91;
    _os_log_impl(&dword_22EEF5000, v85, v86, "Applet detected an attack: %s", v87, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v88);
    MEMORY[0x2318FC200](v88, -1, -1);
    MEMORY[0x2318FC200](v87, -1, -1);
  }

  type metadata accessor for ATLError(0);
  sub_22EF7BF94();
  swift_allocError();
  *v92 = 5;
  return swift_willThrow();
}

void sub_22EF77F9C(__int16 a1)
{
  v2 = v1;
  if (qword_27DA9E370 != -1)
  {
    swift_once();
  }

  v4 = sub_22EFB626C();
  __swift_project_value_buffer(v4, qword_27DA9E518);
  v5 = sub_22EFB624C();
  v6 = sub_22EFB65CC();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v15 = v8;
    *v7 = 136315138;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E428, &unk_22EFBBC50);
    v9 = swift_allocObject();
    v10 = MEMORY[0x277D84C58];
    *(v9 + 16) = xmmword_22EFBB8C0;
    v11 = MEMORY[0x277D84CB8];
    *(v9 + 56) = v10;
    *(v9 + 64) = v11;
    *(v9 + 32) = a1;
    v12 = sub_22EFB649C();
    v14 = sub_22EF9447C(v12, v13, &v15);

    *(v7 + 4) = v14;
    _os_log_impl(&dword_22EEF5000, v5, v6, "Fatal Lyon Error: SW=0x%s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
    MEMORY[0x2318FC200](v8, -1, -1);
    MEMORY[0x2318FC200](v7, -1, -1);
  }

  if (*(v2 + OBJC_IVAR____TtC24AppletTranslationLibrary16LyonSwiftDecoder_sw) == -28672)
  {
    *(v2 + OBJC_IVAR____TtC24AppletTranslationLibrary16LyonSwiftDecoder_sw) = a1;
  }
}

unint64_t sub_22EF78154(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = &v4[OBJC_IVAR____TtC24AppletTranslationLibrary16LyonSwiftDecoder_endpointIdentifier];
  v7 = *&v4[OBJC_IVAR____TtC24AppletTranslationLibrary16LyonSwiftDecoder_endpointIdentifier + 8];
  if (!v7 || (v8 = *&v4[OBJC_IVAR____TtC24AppletTranslationLibrary16LyonSwiftDecoder_readerIdentifier + 8]) == 0)
  {
    if (qword_27DA9E370 != -1)
    {
      goto LABEL_56;
    }

    goto LABEL_5;
  }

  v9 = a2;
  v10 = a1;
  v11 = *v6;
  v6 = *&v4[OBJC_IVAR____TtC24AppletTranslationLibrary16LyonSwiftDecoder_readerIdentifier];
  v74 = a1;
  v75 = a2;

  sub_22EF70B68(v10, v9);
  while (1)
  {
    v20 = v9 >> 62;
    if ((v9 >> 62) > 1)
    {
      break;
    }

    if (v20)
    {
      if (__OFSUB__(HIDWORD(v10), v10))
      {
        goto LABEL_55;
      }

      if (HIDWORD(v10) - v10 < 1)
      {
        goto LABEL_31;
      }
    }

    else if (!BYTE6(v9))
    {
      goto LABEL_31;
    }

LABEL_21:
    v25 = sub_22EFB0E70(&v74, 0);
    if (v5)
    {

      sub_22EF708C8(v74, v75);
      return v8;
    }

    if (v25 == 129)
    {
      v28 = v27 >> 62;
      if ((v27 >> 62) <= 1)
      {
        if (!v28)
        {
          v19 = BYTE6(v27);
LABEL_9:
          if (v19 != 32)
          {
            goto LABEL_10;
          }

          v65 = v11;
          v66 = v6;
          v68 = v26;
          v69 = v27;
          v67 = v4;
          if (qword_27DA9E370 != -1)
          {
            swift_once();
          }

          v40 = sub_22EFB626C();
          __swift_project_value_buffer(v40, qword_27DA9E518);
          sub_22EF70B68(v68, v69);
          v41 = sub_22EFB624C();
          v42 = sub_22EFB65AC();
          sub_22EF708C8(v68, v69);
          if (os_log_type_enabled(v41, v42))
          {
            buf = swift_slowAlloc();
            v64 = swift_slowAlloc();
            v76 = v64;
            *buf = 136315138;
            v63 = v42;
            sub_22EF70B68(v68, v69);
            sub_22EF76410(4, v68, v69, &v72);
            v44 = v72;
            v43 = v73;
            sub_22EF83154(v72, v73);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E400, &unk_22EFBD180);
            sub_22EF7C054();
            v45 = sub_22EFB646C();
            v47 = v46;
            sub_22EF708C8(v44, v43);

            v48 = sub_22EF9447C(v45, v47, &v76);

            *(buf + 4) = v48;
            _os_log_impl(&dword_22EEF5000, v41, v63, "Received shareSession event with stepUpSK %s", buf, 0xCu);
            __swift_destroy_boxed_opaque_existential_0Tm(v64);
            MEMORY[0x2318FC200](v64, -1, -1);
            MEMORY[0x2318FC200](buf, -1, -1);
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E5B0, &qword_22EFBC3C8);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_22EFBC120;
          v72 = sub_22EFB648C();
          v73 = v50;
          v51 = MEMORY[0x277D837D0];
          sub_22EFB668C();
          v52 = sub_22EFB648C();
          *(inited + 96) = v51;
          *(inited + 72) = v52;
          *(inited + 80) = v53;
          v72 = 0xD000000000000010;
          v73 = 0x800000022EFC65A0;
          sub_22EFB668C();
          *(inited + 168) = v51;
          *(inited + 144) = a3;
          *(inited + 152) = a4;
          v72 = 0xD000000000000012;
          v73 = 0x800000022EFC65E0;

          sub_22EFB668C();
          *(inited + 240) = v51;
          *(inited + 216) = v65;
          *(inited + 224) = v7;
          v72 = sub_22EFB648C();
          v73 = v54;
          sub_22EFB668C();
          v55 = 0x10000090007uLL >> (16 * v67[OBJC_IVAR____TtC24AppletTranslationLibrary16LyonSwiftDecoder_protocolVersion]);
          *(inited + 312) = MEMORY[0x277D84C58];
          *(inited + 288) = v55;
          v72 = 0xD000000000000010;
          v73 = 0x800000022EFC64E0;
          sub_22EFB668C();
          *(inited + 384) = v51;
          *(inited + 360) = v66;
          *(inited + 368) = v8;
          v72 = 0xD000000000000012;
          v73 = 0x800000022EFC65C0;
          sub_22EFB668C();
          if (v67[OBJC_IVAR____TtC24AppletTranslationLibrary16LyonSwiftDecoder_state])
          {
            v56 = 2;
          }

          else
          {
            v56 = 1;
          }

          if (v67[OBJC_IVAR____TtC24AppletTranslationLibrary16LyonSwiftDecoder_state] < 0)
          {
            v56 = 2;
          }

          *(inited + 456) = MEMORY[0x277D84B78];
          *(inited + 432) = v56;
          v72 = sub_22EFB648C();
          v73 = v57;
          sub_22EFB668C();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E5C8, &qword_22EFBC3E8);
          v58 = swift_initStackObject();
          *(v58 + 16) = xmmword_22EFBB8C0;
          *(v58 + 32) = sub_22EFB648C();
          *(v58 + 40) = v59;
          *(v58 + 48) = v68;
          *(v58 + 56) = v69;
          sub_22EF70B68(v68, v69);
          v60 = sub_22EFAB5A4(v58);
          swift_setDeallocating();
          sub_22EF7CFF8(v58 + 32, &qword_27DA9E5D0, &qword_22EFBC3F0);
          *(inited + 528) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E5D8, &unk_22EFBC3F8);
          *(inited + 504) = v60;
          v8 = sub_22EFAB468(inited);
          swift_setDeallocating();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E5B8, &unk_22EFBC3D0);
          swift_arrayDestroy();
          sub_22EF708C8(v68, v69);
          v10 = v74;
          v9 = v75;
LABEL_52:
          sub_22EF708C8(v10, v9);
          return v8;
        }

        LODWORD(v19) = HIDWORD(v26) - v26;
        if (!__OFSUB__(HIDWORD(v26), v26))
        {
          v19 = v19;
          goto LABEL_9;
        }

        __break(1u);
        goto LABEL_58;
      }

      if (v28 == 2)
      {
        v30 = *(v26 + 16);
        v29 = *(v26 + 24);
        v23 = __OFSUB__(v29, v30);
        v19 = v29 - v30;
        if (!v23)
        {
          goto LABEL_9;
        }

        __break(1u);
LABEL_31:

        if (qword_27DA9E370 == -1)
        {
LABEL_32:
          v31 = sub_22EFB626C();
          __swift_project_value_buffer(v31, qword_27DA9E518);
          v32 = sub_22EFB624C();
          v33 = sub_22EFB65AC();
          if (os_log_type_enabled(v32, v33))
          {
            v34 = swift_slowAlloc();
            *v34 = 0;
            _os_log_impl(&dword_22EEF5000, v32, v33, "Received shareSession event without stepUpSK", v34, 2u);
            MEMORY[0x2318FC200](v34, -1, -1);
          }

          v8 = sub_22EFAB468(MEMORY[0x277D84F90]);
          goto LABEL_52;
        }

LABEL_58:
        swift_once();
        goto LABEL_32;
      }
    }

LABEL_10:
    sub_22EF708C8(v26, v27);
    v10 = v74;
    v9 = v75;
  }

  if (v20 != 2)
  {
    goto LABEL_31;
  }

  v22 = *(v10 + 16);
  v21 = *(v10 + 24);
  v23 = __OFSUB__(v21, v22);
  v24 = v21 - v22;
  if (!v23)
  {
    if (v24 < 1)
    {
      goto LABEL_31;
    }

    goto LABEL_21;
  }

  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  swift_once();
LABEL_5:
  v12 = sub_22EFB626C();
  __swift_project_value_buffer(v12, qword_27DA9E518);
  v13 = v4;
  v14 = sub_22EFB624C();
  v8 = sub_22EFB65CC();

  if (os_log_type_enabled(v14, v8))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v74 = v16;
    *v15 = 136315394;
    if (v6[1])
    {
      v17 = *v6;
      v18 = v6[1];
    }

    else
    {
      v17 = 7104878;
      v18 = 0xE300000000000000;
    }

    v35 = sub_22EF9447C(v17, v18, &v74);

    *(v15 + 4) = v35;
    *(v15 + 12) = 2080;
    if (*&v13[OBJC_IVAR____TtC24AppletTranslationLibrary16LyonSwiftDecoder_readerIdentifier + 8])
    {
      v36 = *&v13[OBJC_IVAR____TtC24AppletTranslationLibrary16LyonSwiftDecoder_readerIdentifier];
      v37 = *&v13[OBJC_IVAR____TtC24AppletTranslationLibrary16LyonSwiftDecoder_readerIdentifier + 8];
    }

    else
    {
      v36 = 7104878;
      v37 = 0xE300000000000000;
    }

    v38 = sub_22EF9447C(v36, v37, &v74);

    *(v15 + 14) = v38;
    _os_log_impl(&dword_22EEF5000, v14, v8, "Missing mandatory information in Share Session: ep:%s\n, readerId:%s", v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2318FC200](v16, -1, -1);
    MEMORY[0x2318FC200](v15, -1, -1);
  }

  type metadata accessor for ATLError(0);
  sub_22EF7BF94();
  swift_allocError();
  *v39 = 3;
  swift_willThrow();
  return v8;
}

unint64_t sub_22EF78A7C(void *a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = v5;
  if (qword_27DA9E370 != -1)
  {
    swift_once();
  }

  v10 = sub_22EFB626C();
  __swift_project_value_buffer(v10, qword_27DA9E518);
  sub_22EF70B68(a1, a2);

  v11 = sub_22EFB624C();
  v12 = sub_22EFB65AC();
  sub_22EF708C8(a1, a2);

  v83 = v4;
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v80 = swift_slowAlloc();
    v86 = v80;
    *v13 = 136315394;
    v89 = sub_22EF83154(a1, a2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E400, &unk_22EFBD180);
    sub_22EF7C054();
    v14 = sub_22EFB646C();
    v16 = v15;

    v17 = sub_22EF9447C(v14, v16, &v86);
    v6 = v5;

    *(v13 + 4) = v17;
    *(v13 + 12) = 2080;
    *(v13 + 14) = sub_22EF9447C(a3, a4, &v86);
    _os_log_impl(&dword_22EEF5000, v11, v12, "messageInExchange %s for aid %s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2318FC200](v80, -1, -1);
    MEMORY[0x2318FC200](v13, -1, -1);
  }

  v86 = a1;
  v87 = a2;
  v88 = 1;
  sub_22EF70B68(a1, a2);
  v18 = sub_22EF73580();
  if (v6)
  {
    sub_22EF708C8(v86, v87);
    v22 = v6;
    v23 = sub_22EFB624C();
    v24 = sub_22EFB65CC();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v86 = v27;
      *v25 = 136315394;
      *(v25 + 4) = sub_22EF9447C(0xD000000000000026, 0x800000022EFC6620, &v86);
      *(v25 + 12) = 2112;
      v28 = v6;
      v29 = _swift_stdlib_bridgeErrorToNSError();
      *(v25 + 14) = v29;
      *v26 = v29;
      _os_log_impl(&dword_22EEF5000, v23, v24, "Error %s %@", v25, 0x16u);
      sub_22EF7CFF8(v26, &qword_27DA9E5C0, &qword_22EFBC3E0);
      MEMORY[0x2318FC200](v26, -1, -1);
      __swift_destroy_boxed_opaque_existential_0Tm(v27);
      MEMORY[0x2318FC200](v27, -1, -1);
      MEMORY[0x2318FC200](v25, -1, -1);
    }

    else
    {
    }

    return sub_22EFAB468(MEMORY[0x277D84F90]);
  }

  while (1)
  {
    if ((~v18 & 0xFF00000000) == 0)
    {
      goto LABEL_20;
    }

    v31 = BYTE4(v18) ? v18 : v18;
    if (BYTE4(v18) - 2 < 2)
    {
      v31 = v18;
    }

    if (v31 == 194)
    {
      break;
    }

    sub_22EF7C0B8(v18, v19, v20, v21);
    v18 = sub_22EF73580();
  }

  if (v21 >> 60 == 15)
  {
    sub_22EF7C0B8(v18, v19, v20, v21);
LABEL_20:
    v32 = sub_22EFAB468(MEMORY[0x277D84F90]);
LABEL_21:
    sub_22EF708C8(v86, v87);
    return v32;
  }

  v33 = v18;
  v85 = v19;
  v34 = v86;
  v35 = v87;
  v36 = v21;
  v37 = v20;
  sub_22EF70CB0(v20, v21);
  sub_22EF708C8(v34, v35);
  v86 = v37;
  v87 = v36;
  v88 = 0;
  v38 = v37;
  v39 = v36;
  sub_22EF70CB0(v37, v36);
  v40 = sub_22EF73580();
  if ((~v40 & 0xFF00000000) == 0 || v43 >> 60 == 15)
  {
LABEL_28:
    v32 = sub_22EFAB468(MEMORY[0x277D84F90]);
    sub_22EF7C0B8(v33, v85, v38, v39);
    sub_22EF7C0B8(v33, v85, v38, v39);
    goto LABEL_21;
  }

  v44 = v40;
  v82 = v41;
  v45 = v42;
  v46 = v43;
  v47 = sub_22EF73580();
  if ((~v47 & 0xFF00000000) == 0 || v50 >> 60 == 15)
  {
    v51 = v44;
    v52 = v82;
    v53 = v45;
    v54 = v46;
LABEL_27:
    sub_22EF7C0B8(v51, v52, v53, v54);
    goto LABEL_28;
  }

  v77 = v47;
  v78 = v48;
  v79 = v49;
  v81 = v50;
  v55 = sub_22EF73580();
  if ((~v55 & 0xFF00000000) == 0 || (v74 = v57, v75 = v55, v76 = v56, v73 = v58, v58 >> 60 == 15))
  {
    sub_22EF7C0B8(v44, v82, v45, v46);
    v51 = v77;
    v52 = v78;
    v53 = v79;
    v54 = v81;
    goto LABEL_27;
  }

  v70 = v45;
  v71 = v46;
  v89 = sub_22EF83154(v45, v46);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E400, &unk_22EFBD180);
  sub_22EF7C054();
  v59 = sub_22EFB646C();
  v61 = v60;

  v62 = (v83 + OBJC_IVAR____TtC24AppletTranslationLibrary16LyonSwiftDecoder_readerVendorId);
  *v62 = v59;
  v62[1] = v61;

  v89 = sub_22EF83154(v79, v81);
  v63 = sub_22EFB646C();
  v65 = v64;

  v66 = (v83 + OBJC_IVAR____TtC24AppletTranslationLibrary16LyonSwiftDecoder_readerProductId);
  *v66 = v63;
  v66[1] = v65;

  v89 = sub_22EF83154(v74, v73);
  v67 = sub_22EFB646C();
  v72 = v68;
  sub_22EF7C0B8(v44, v82, v70, v71);
  sub_22EF7C0B8(v77, v78, v79, v81);
  sub_22EF7C0B8(v75, v76, v74, v73);
  sub_22EF7C0B8(v33, v85, v38, v39);
  sub_22EF7C0B8(v33, v85, v38, v39);

  sub_22EF708C8(v86, v87);
  v69 = (v83 + OBJC_IVAR____TtC24AppletTranslationLibrary16LyonSwiftDecoder_readerFirmwareVersion);
  *v69 = v67;
  v69[1] = v72;

  return sub_22EFAB468(MEMORY[0x277D84F90]);
}

unint64_t sub_22EF7924C(uint64_t a1, uint64_t a2)
{
  v3 = &v2[OBJC_IVAR____TtC24AppletTranslationLibrary16LyonSwiftDecoder_endpointIdentifier];
  v4 = *&v2[OBJC_IVAR____TtC24AppletTranslationLibrary16LyonSwiftDecoder_endpointIdentifier + 8];
  if (v4 && (v5 = *&v2[OBJC_IVAR____TtC24AppletTranslationLibrary16LyonSwiftDecoder_readerIdentifier + 8]) != 0)
  {
    v32 = *v3;
    v35 = *&v2[OBJC_IVAR____TtC24AppletTranslationLibrary16LyonSwiftDecoder_readerIdentifier];
    if (v2[OBJC_IVAR____TtC24AppletTranslationLibrary16LyonSwiftDecoder_state])
    {
      v8 = 2;
    }

    else
    {
      v8 = 1;
    }

    if (v2[OBJC_IVAR____TtC24AppletTranslationLibrary16LyonSwiftDecoder_state] < 0)
    {
      v8 = 2;
    }

    v31 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E5B0, &qword_22EFBC3C8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_22EFBC130;
    sub_22EFB648C();

    v10 = MEMORY[0x277D837D0];
    sub_22EFB668C();
    v11 = sub_22EFB648C();
    *(inited + 96) = v10;
    *(inited + 72) = v11;
    *(inited + 80) = v12;
    sub_22EFB668C();
    *(inited + 168) = v10;
    *(inited + 144) = a1;
    *(inited + 152) = a2;

    sub_22EFB668C();
    *(inited + 240) = MEMORY[0x277D839B0];
    *(inited + 216) = 0;
    sub_22EFB668C();
    v13 = MEMORY[0x277D84B78];
    *(inited + 312) = MEMORY[0x277D84B78];
    *(inited + 288) = -1;
    sub_22EFB668C();
    *(inited + 384) = v13;
    *(inited + 360) = v31;
    sub_22EFB668C();
    *(inited + 456) = v10;
    *(inited + 432) = v32;
    *(inited + 440) = v4;
    sub_22EFB668C();
    *(inited + 528) = v10;
    *(inited + 504) = v35;
    *(inited + 512) = v5;
    v33 = 0x737574617473;
    v34 = 0xE600000000000000;
    sub_22EFB668C();
    v14 = *&v2[OBJC_IVAR____TtC24AppletTranslationLibrary16LyonSwiftDecoder_sw];
    v15 = MEMORY[0x277D84C58];
    *(inited + 600) = MEMORY[0x277D84C58];
    *(inited + 576) = v14;
    v33 = 0x746C75736572;
    v34 = 0xE600000000000000;
    sub_22EFB668C();
    *(inited + 672) = v15;
    *(inited + 648) = 64;
    v16 = sub_22EFAB468(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E5B8, &unk_22EFBC3D0);
    swift_arrayDestroy();
  }

  else
  {
    if (qword_27DA9E370 != -1)
    {
      swift_once();
    }

    v17 = sub_22EFB626C();
    v18 = __swift_project_value_buffer(v17, qword_27DA9E518);
    v19 = v2;
    v16 = v18;
    v20 = sub_22EFB624C();
    v21 = sub_22EFB65CC();

    if (os_log_type_enabled(v20, v21))
    {
      v16 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v33 = v22;
      *v16 = 136315394;
      if (v3[1])
      {
        v23 = *v3;
        v24 = v3[1];
      }

      else
      {
        v23 = 7104878;
        v24 = 0xE300000000000000;
      }

      v25 = sub_22EF9447C(v23, v24, &v33);

      *(v16 + 4) = v25;
      *(v16 + 12) = 2080;
      if (*&v19[OBJC_IVAR____TtC24AppletTranslationLibrary16LyonSwiftDecoder_readerIdentifier + 8])
      {
        v26 = *&v19[OBJC_IVAR____TtC24AppletTranslationLibrary16LyonSwiftDecoder_readerIdentifier];
        v27 = *&v19[OBJC_IVAR____TtC24AppletTranslationLibrary16LyonSwiftDecoder_readerIdentifier + 8];
      }

      else
      {
        v26 = 7104878;
        v27 = 0xE300000000000000;
      }

      v28 = sub_22EF9447C(v26, v27, &v33);

      *(v16 + 14) = v28;
      _os_log_impl(&dword_22EEF5000, v20, v21, "Missing mandatory information in StepUp Handover: ep:%s\n, readerId:%s", v16, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2318FC200](v22, -1, -1);
      MEMORY[0x2318FC200](v16, -1, -1);
    }

    type metadata accessor for ATLError(0);
    sub_22EF7BF94();
    swift_allocError();
    *v29 = 3;
    swift_willThrow();
  }

  return v16;
}

char *sub_22EF79784(char *result, uint64_t a2, uint64_t a3)
{
  if ((*(result + 4) >> 60) & 3 | (4 * result[42]))
  {
    if (qword_27DA9E370 != -1)
    {
      swift_once();
    }

    v5 = sub_22EFB626C();
    __swift_project_value_buffer(v5, qword_27DA9E518);
    v6 = sub_22EFB624C();
    v7 = sub_22EFB65CC();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_22EEF5000, v6, v7, "Wrong handler", v8, 2u);
      MEMORY[0x2318FC200](v8, -1, -1);
    }

    type metadata accessor for ATLError(0);
    sub_22EF7BF94();
    swift_allocError();
    *v9 = 3;
    swift_willThrow();
    return v4;
  }

  v10 = result;
  v11 = &v3[OBJC_IVAR____TtC24AppletTranslationLibrary16LyonSwiftDecoder_endpointIdentifier];
  v12 = *&v3[OBJC_IVAR____TtC24AppletTranslationLibrary16LyonSwiftDecoder_endpointIdentifier + 8];
  if (!v12 || !*&v3[OBJC_IVAR____TtC24AppletTranslationLibrary16LyonSwiftDecoder_readerIdentifier + 8])
  {
    sub_22EF7BFEC(result, &v93);
    if (qword_27DA9E370 != -1)
    {
      swift_once();
    }

    v19 = sub_22EFB626C();
    __swift_project_value_buffer(v19, qword_27DA9E518);
    v20 = v3;
    v21 = sub_22EFB624C();
    v4 = sub_22EFB65CC();

    if (os_log_type_enabled(v21, v4))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *&v93 = v23;
      *v22 = 136315394;
      if (v11[1])
      {
        v24 = *v11;
        v25 = v11[1];
      }

      else
      {
        v24 = 7104878;
        v25 = 0xE300000000000000;
      }

      v26 = sub_22EF9447C(v24, v25, &v93);

      *(v22 + 4) = v26;
      *(v22 + 12) = 2080;
      if (*&v20[OBJC_IVAR____TtC24AppletTranslationLibrary16LyonSwiftDecoder_readerIdentifier + 8])
      {
        v27 = *&v20[OBJC_IVAR____TtC24AppletTranslationLibrary16LyonSwiftDecoder_readerIdentifier];
        v28 = *&v20[OBJC_IVAR____TtC24AppletTranslationLibrary16LyonSwiftDecoder_readerIdentifier + 8];
      }

      else
      {
        v27 = 7104878;
        v28 = 0xE300000000000000;
      }

      v29 = sub_22EF9447C(v27, v28, &v93);

      *(v22 + 14) = v29;
      _os_log_impl(&dword_22EEF5000, v21, v4, "Missing mandatory information in ControlFlow: ep:%s\n, readerId:%s", v22, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2318FC200](v23, -1, -1);
      MEMORY[0x2318FC200](v22, -1, -1);
    }

    type metadata accessor for ATLError(0);
    sub_22EF7BF94();
    swift_allocError();
    *v30 = 3;
    swift_willThrow();
    sub_22EF7C024(v10);
    return v4;
  }

  v13 = *(result + 2);
  v14 = *result;
  v15 = result[3];
  v86 = *v11;
  v87 = *&v3[OBJC_IVAR____TtC24AppletTranslationLibrary16LyonSwiftDecoder_readerIdentifier];
  v84 = *(result + 1);
  v83 = *&v3[OBJC_IVAR____TtC24AppletTranslationLibrary16LyonSwiftDecoder_readerIdentifier + 8];
  if (v13 >> 60 == 15)
  {
    goto LABEL_35;
  }

  v16 = *(result + 1);
  v17 = v13 >> 62;
  if ((v13 >> 62) > 1)
  {
    if (v17 != 2)
    {
      goto LABEL_35;
    }

    v32 = *(v16 + 16);
    v31 = *(v16 + 24);
    v33 = __OFSUB__(v31, v32);
    v18 = v31 - v32;
    if (!v33)
    {
LABEL_30:
      if (v18 >= 1)
      {
        v81 = v14;
        v79 = v3;
        sub_22EF7BFEC(result, &v93);
        v34 = qword_27DA9E370;

        if (v34 != -1)
        {
          swift_once();
        }

        v35 = sub_22EFB626C();
        __swift_project_value_buffer(v35, qword_27DA9E518);
        sub_22EF70CB0(v16, v13);
        v36 = sub_22EFB624C();
        v78 = sub_22EFB65AC();
        if (os_log_type_enabled(v36, v78))
        {
          buf = swift_slowAlloc();
          v77 = swift_slowAlloc();
          *&v93 = v77;
          *buf = 136315138;
          sub_22EF7C024(v10);
          *&v92[0] = sub_22EF83154(v16, v13);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E400, &unk_22EFBD180);
          sub_22EF7C054();
          v37 = v36;
          v38 = sub_22EFB646C();
          v40 = v39;

          v41 = sub_22EF9447C(v38, v40, &v93);

          *(buf + 4) = v41;
          _os_log_impl(&dword_22EEF5000, v37, v78, "Domain specific data: %s", buf, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v77);
          MEMORY[0x2318FC200](v77, -1, -1);
          MEMORY[0x2318FC200](buf, -1, -1);
        }

        else
        {

          sub_22EF7C024(v10);
        }

        v3 = v79;
        v14 = v81;
        goto LABEL_38;
      }

LABEL_35:
      sub_22EF7BFEC(result, &v93);

LABEL_38:
      v82 = (v84 | (v15 << 16)) >> 8;
      if (v14)
      {
        v42 = 64;
      }

      else
      {
        v42 = 0;
      }

      v85 = v42;
      if (v3[OBJC_IVAR____TtC24AppletTranslationLibrary16LyonSwiftDecoder_state])
      {
        v43 = 2;
      }

      else
      {
        v43 = 1;
      }

      if (v3[OBJC_IVAR____TtC24AppletTranslationLibrary16LyonSwiftDecoder_state] < 0)
      {
        v43 = 2;
      }

      v80 = v43;
      v3[OBJC_IVAR____TtC24AppletTranslationLibrary16LyonSwiftDecoder_state] = -127;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E5A0, &qword_22EFBC3B8);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_22EFBC100;
      *(inited + 32) = sub_22EFB648C();
      *(inited + 40) = v45;
      v46 = sub_22EFB648C();
      v47 = MEMORY[0x277D837D0];
      *(inited + 48) = v46;
      *(inited + 56) = v48;
      *(inited + 72) = v47;
      *(inited + 80) = 0xD000000000000010;
      *(inited + 88) = 0x800000022EFC65A0;
      *(inited + 96) = a2;
      *(inited + 104) = a3;
      *(inited + 120) = v47;
      *(inited + 128) = 0x726F727245646964;
      *(inited + 136) = 0xE800000000000000;
      v49 = MEMORY[0x277D839B0];
      *(inited + 144) = (v14 & 1) == 0;
      *(inited + 168) = v49;
      *(inited + 176) = 0x646E616D6D6F63;
      *(inited + 184) = 0xE700000000000000;
      v50 = v3;
      v51 = sub_22EF76B24();
      v52 = MEMORY[0x277D84B78];
      *(inited + 192) = asc_22EFC66CF[v51];
      *(inited + 216) = v52;
      *(inited + 224) = 0xD000000000000012;
      *(inited + 232) = 0x800000022EFC65C0;
      *(inited + 240) = v80;
      *(inited + 264) = v52;
      *(inited + 272) = 0xD000000000000012;
      *(inited + 280) = 0x800000022EFC65E0;
      *(inited + 288) = v86;
      *(inited + 296) = v12;
      *(inited + 312) = v47;
      *(inited + 320) = 0xD000000000000010;
      *(inited + 328) = 0x800000022EFC64E0;
      *(inited + 336) = v87;
      *(inited + 344) = v83;
      *(inited + 360) = v47;
      *(inited + 368) = 0x737574617473;
      *(inited + 376) = 0xE600000000000000;
      v53 = MEMORY[0x277D84C58];
      *(inited + 384) = *&v3[OBJC_IVAR____TtC24AppletTranslationLibrary16LyonSwiftDecoder_sw];
      *(inited + 408) = v53;
      *(inited + 416) = 0x74616D726F666E69;
      *(inited + 424) = 0xEB00000000657669;
      *(inited + 432) = v82;
      *(inited + 456) = v53;
      *(inited + 464) = 0x746C75736572;
      *(inited + 472) = 0xE600000000000000;
      *(inited + 504) = v53;
      *(inited + 480) = v85;

      v54 = sub_22EFAAE54(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E5A8, &qword_22EFBC3C0);
      swift_arrayDestroy();
      v55 = *&v50[OBJC_IVAR____TtC24AppletTranslationLibrary16LyonSwiftDecoder_readerVendorId + 8];
      if (v55)
      {
        v56 = &v50[OBJC_IVAR____TtC24AppletTranslationLibrary16LyonSwiftDecoder_readerProductId];
        v57 = *&v50[OBJC_IVAR____TtC24AppletTranslationLibrary16LyonSwiftDecoder_readerProductId + 8];
        if (v57)
        {
          v58 = &v50[OBJC_IVAR____TtC24AppletTranslationLibrary16LyonSwiftDecoder_readerFirmwareVersion];
          v59 = *&v50[OBJC_IVAR____TtC24AppletTranslationLibrary16LyonSwiftDecoder_readerFirmwareVersion + 8];
          if (v59)
          {
            v60 = *&v50[OBJC_IVAR____TtC24AppletTranslationLibrary16LyonSwiftDecoder_readerVendorId];
            v89 = *v56;
            v91 = *v58;
            v61 = sub_22EFB648C();
            v63 = v62;
            v94 = MEMORY[0x277D837D0];
            *&v93 = v60;
            *(&v93 + 1) = v55;
            sub_22EF76360(&v93, v92);

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v95 = v54;
            sub_22EF75884(v92, v61, v63, isUniquelyReferenced_nonNull_native);

            v65 = v95;
            v66 = sub_22EFB648C();
            v68 = v67;
            v69 = MEMORY[0x277D837D0];
            v94 = MEMORY[0x277D837D0];
            *&v93 = v89;
            *(&v93 + 1) = v57;
            sub_22EF76360(&v93, v92);
            v70 = swift_isUniquelyReferenced_nonNull_native();
            v95 = v65;
            sub_22EF75884(v92, v66, v68, v70);

            v71 = v95;
            v72 = sub_22EFB648C();
            v74 = v73;
            v94 = v69;
            *&v93 = v91;
            *(&v93 + 1) = v59;
            sub_22EF76360(&v93, v92);
            v75 = swift_isUniquelyReferenced_nonNull_native();
            v95 = v71;
            sub_22EF75884(v92, v72, v74, v75);

            v54 = v95;
          }
        }
      }

      v4 = sub_22EF7ECD0(v54);
      sub_22EF7C024(v10);

      return v4;
    }

    __break(1u);
  }

  else if (!v17)
  {
    v18 = BYTE6(v13);
    goto LABEL_30;
  }

  LODWORD(v18) = HIDWORD(v16) - v16;
  if (!__OFSUB__(HIDWORD(v16), v16))
  {
    v18 = v18;
    goto LABEL_30;
  }

  __break(1u);
  return result;
}

unint64_t sub_22EF7A180(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = &v3[OBJC_IVAR____TtC24AppletTranslationLibrary16LyonSwiftDecoder_endpointIdentifier];
  v6 = *&v3[OBJC_IVAR____TtC24AppletTranslationLibrary16LyonSwiftDecoder_endpointIdentifier + 8];
  if (v6 && (v7 = *&v3[OBJC_IVAR____TtC24AppletTranslationLibrary16LyonSwiftDecoder_readerIdentifier + 8]) != 0)
  {
    v37 = *v5;
    v38 = *&v3[OBJC_IVAR____TtC24AppletTranslationLibrary16LyonSwiftDecoder_readerIdentifier];
    v10 = sub_22EF76B24();
    v42 = word_22EFBCCE2[v10];
    v36 = asc_22EFC66CF[v10];
    v11 = v3[OBJC_IVAR____TtC24AppletTranslationLibrary16LyonSwiftDecoder_state];
    if (v11)
    {
      v12 = 2;
    }

    else
    {
      v12 = 1;
    }

    if (v11 < 0)
    {
      v13 = 2;
    }

    else
    {
      v13 = v12;
    }

    v41 = v13;
    v3[OBJC_IVAR____TtC24AppletTranslationLibrary16LyonSwiftDecoder_state] = -127;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E5B0, &qword_22EFBC3C8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_22EFBC100;
    sub_22EFB648C();

    v15 = MEMORY[0x277D837D0];
    sub_22EFB668C();
    v16 = sub_22EFB648C();
    *(inited + 96) = v15;
    *(inited + 72) = v16;
    *(inited + 80) = v17;
    sub_22EFB668C();
    *(inited + 168) = v15;
    *(inited + 144) = a2;
    *(inited + 152) = a3;

    sub_22EFB668C();
    *(inited + 240) = MEMORY[0x277D839B0];
    *(inited + 216) = 1;
    sub_22EFB668C();
    v18 = MEMORY[0x277D84B78];
    *(inited + 312) = MEMORY[0x277D84B78];
    *(inited + 288) = v36;
    sub_22EFB668C();
    *(inited + 384) = v18;
    *(inited + 360) = v41;
    sub_22EFB668C();
    *(inited + 456) = v15;
    *(inited + 432) = v37;
    *(inited + 440) = v6;
    sub_22EFB668C();
    *(inited + 528) = v15;
    *(inited + 504) = v38;
    *(inited + 512) = v7;
    v39 = 0x737574617473;
    v40 = 0xE600000000000000;
    sub_22EFB668C();
    v19 = *&v4[OBJC_IVAR____TtC24AppletTranslationLibrary16LyonSwiftDecoder_sw];
    v20 = MEMORY[0x277D84C58];
    *(inited + 600) = MEMORY[0x277D84C58];
    *(inited + 576) = v19;
    sub_22EFB668C();
    *(inited + 672) = v20;
    *(inited + 648) = v42;
    v39 = sub_22EFB648C();
    v40 = v21;
    sub_22EFB668C();
    *(inited + 744) = MEMORY[0x277D839B0];
    *(inited + 720) = 0;
    v22 = sub_22EFAB468(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E5B8, &unk_22EFBC3D0);
    swift_arrayDestroy();
  }

  else
  {
    if (qword_27DA9E370 != -1)
    {
      swift_once();
    }

    v23 = sub_22EFB626C();
    __swift_project_value_buffer(v23, qword_27DA9E518);
    v24 = v3;
    v25 = sub_22EFB624C();
    v22 = sub_22EFB65CC();

    if (os_log_type_enabled(v25, v22))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v39 = v27;
      *v26 = 136315394;
      if (v5[1])
      {
        v28 = *v5;
        v29 = v5[1];
      }

      else
      {
        v28 = 7104878;
        v29 = 0xE300000000000000;
      }

      v30 = sub_22EF9447C(v28, v29, &v39);

      *(v26 + 4) = v30;
      *(v26 + 12) = 2080;
      if (*&v24[OBJC_IVAR____TtC24AppletTranslationLibrary16LyonSwiftDecoder_readerIdentifier + 8])
      {
        v31 = *&v24[OBJC_IVAR____TtC24AppletTranslationLibrary16LyonSwiftDecoder_readerIdentifier];
        v32 = *&v24[OBJC_IVAR____TtC24AppletTranslationLibrary16LyonSwiftDecoder_readerIdentifier + 8];
      }

      else
      {
        v31 = 7104878;
        v32 = 0xE300000000000000;
      }

      v33 = sub_22EF9447C(v31, v32, &v39);

      *(v26 + 14) = v33;
      _os_log_impl(&dword_22EEF5000, v25, v22, "Missing mandatory information in Dummy: ep:%s\n, readerId:%s", v26, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2318FC200](v27, -1, -1);
      MEMORY[0x2318FC200](v26, -1, -1);
    }

    type metadata accessor for ATLError(0);
    sub_22EF7BF94();
    swift_allocError();
    *v34 = 3;
    swift_willThrow();
  }

  return v22;
}

uint64_t sub_22EF7A71C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (*(v3 + OBJC_IVAR____TtC24AppletTranslationLibrary16LyonSwiftDecoder_requestAuth))
  {
    v7 = -4091;
  }

  else
  {
    v7 = word_22EFD2100[*(v3 + OBJC_IVAR____TtC24AppletTranslationLibrary16LyonSwiftDecoder_endpointNotFoundReason)];
  }

  v32 = v7;
  if (*(v3 + OBJC_IVAR____TtC24AppletTranslationLibrary16LyonSwiftDecoder_state))
  {
    v8 = 2;
  }

  else
  {
    v8 = 1;
  }

  if (*(v3 + OBJC_IVAR____TtC24AppletTranslationLibrary16LyonSwiftDecoder_state) < 0)
  {
    v9 = 2;
  }

  else
  {
    v9 = v8;
  }

  *(v3 + OBJC_IVAR____TtC24AppletTranslationLibrary16LyonSwiftDecoder_state) = -127;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E5A0, &qword_22EFBC3B8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22EFBC130;
  *(inited + 32) = sub_22EFB648C();
  *(inited + 40) = v11;
  v12 = sub_22EFB648C();
  v13 = MEMORY[0x277D837D0];
  *(inited + 48) = v12;
  *(inited + 56) = v14;
  *(inited + 72) = v13;
  *(inited + 80) = 0xD000000000000010;
  *(inited + 88) = 0x800000022EFC65A0;
  *(inited + 96) = a2;
  *(inited + 104) = a3;
  *(inited + 120) = v13;
  *(inited + 128) = 0x726F727245646964;
  *(inited + 136) = 0xE800000000000000;
  v15 = MEMORY[0x277D839B0];
  *(inited + 144) = 1;
  *(inited + 168) = v15;
  *(inited + 176) = 0x646E616D6D6F63;
  *(inited + 184) = 0xE700000000000000;
  v16 = sub_22EF76B24();
  v17 = MEMORY[0x277D84B78];
  *(inited + 192) = asc_22EFC66CF[v16];
  *(inited + 216) = v17;
  *(inited + 224) = 0xD000000000000012;
  *(inited + 232) = 0x800000022EFC65C0;
  *(inited + 240) = v9;
  *(inited + 264) = v17;
  *(inited + 272) = 0x737574617473;
  *(inited + 280) = 0xE600000000000000;
  v18 = MEMORY[0x277D84C58];
  *(inited + 288) = *(v3 + OBJC_IVAR____TtC24AppletTranslationLibrary16LyonSwiftDecoder_sw);
  *(inited + 312) = v18;
  *(inited + 320) = 0x74616D726F666E69;
  *(inited + 328) = 0xEB00000000657669;
  *(inited + 336) = *(v3 + OBJC_IVAR____TtC24AppletTranslationLibrary16LyonSwiftDecoder_antiRelayResult);
  *(inited + 360) = v17;
  *(inited + 368) = 0x746C75736572;
  *(inited + 376) = 0xE600000000000000;
  *(inited + 408) = v18;
  *(inited + 384) = v32;
  *(inited + 416) = sub_22EFB648C();
  *(inited + 424) = v19;
  *(inited + 456) = v15;
  *(inited + 432) = 1;

  v20 = sub_22EFAAE54(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E5A8, &qword_22EFBC3C0);
  swift_arrayDestroy();
  v21 = *(v4 + OBJC_IVAR____TtC24AppletTranslationLibrary16LyonSwiftDecoder_endpointIdentifier + 8);
  if (v21)
  {
    v22 = *(v4 + OBJC_IVAR____TtC24AppletTranslationLibrary16LyonSwiftDecoder_endpointIdentifier);
    v23 = MEMORY[0x277D837D0];
    v35 = MEMORY[0x277D837D0];
    *&v34 = v22;
    *(&v34 + 1) = v21;
    sub_22EF76360(&v34, v33);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v36 = v20;
    sub_22EF75884(v33, 0xD000000000000012, 0x800000022EFC65E0, isUniquelyReferenced_nonNull_native);
    v20 = v36;
    v25 = v23;
  }

  else
  {
    v25 = MEMORY[0x277D837D0];
  }

  v26 = (v4 + OBJC_IVAR____TtC24AppletTranslationLibrary16LyonSwiftDecoder_readerIdentifier);
  v27 = *(v4 + OBJC_IVAR____TtC24AppletTranslationLibrary16LyonSwiftDecoder_readerIdentifier + 8);
  if (v27)
  {
    v28 = *v26;
    v35 = v25;
    *&v34 = v28;
    *(&v34 + 1) = v27;
    sub_22EF76360(&v34, v33);

    v29 = swift_isUniquelyReferenced_nonNull_native();
    v36 = v20;
    sub_22EF75884(v33, 0xD000000000000010, 0x800000022EFC64E0, v29);
    v20 = v36;
  }

  v30 = sub_22EF7ECD0(v20);

  return v30;
}

id sub_22EF7AD1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, const char *a8)
{
  sub_22EF7D668(a8);
  v8 = sub_22EFB641C();

  return v8;
}

uint64_t sub_22EF7ADDC()
{
  *(v0 + OBJC_IVAR____TtC24AppletTranslationLibrary16LyonSwiftDecoder_state) = 0x80;
  v1 = (v0 + OBJC_IVAR____TtC24AppletTranslationLibrary16LyonSwiftDecoder_endpointIdentifier);
  *v1 = 0;
  v1[1] = 0;

  v2 = (v0 + OBJC_IVAR____TtC24AppletTranslationLibrary16LyonSwiftDecoder_readerIdentifier);
  *v2 = 0;
  v2[1] = 0;

  *(v0 + OBJC_IVAR____TtC24AppletTranslationLibrary16LyonSwiftDecoder_sw) = -28672;
  *(v0 + OBJC_IVAR____TtC24AppletTranslationLibrary16LyonSwiftDecoder_endpointNotFoundReason) = 4;
  *(v0 + OBJC_IVAR____TtC24AppletTranslationLibrary16LyonSwiftDecoder_antiRelayResult) = 0;
  *(v0 + OBJC_IVAR____TtC24AppletTranslationLibrary16LyonSwiftDecoder_requestAuth) = 0;
  v3 = (v0 + OBJC_IVAR____TtC24AppletTranslationLibrary16LyonSwiftDecoder_readerVendorId);
  *v3 = 0;
  v3[1] = 0;

  v4 = (v0 + OBJC_IVAR____TtC24AppletTranslationLibrary16LyonSwiftDecoder_readerProductId);
  *v4 = 0;
  v4[1] = 0;

  v5 = (v0 + OBJC_IVAR____TtC24AppletTranslationLibrary16LyonSwiftDecoder_readerFirmwareVersion);
  *v5 = 0;
  v5[1] = 0;
}

id sub_22EF7AF04(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for LyonSwiftDecoder(a1, a2);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t getEnumTagSinglePayload for LyonConstants.ProtocolVersion(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for LyonConstants.ProtocolVersion(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LyonConstants.AntiRelayResult(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for LyonConstants.AntiRelayResult(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LyonConstants.ReasonEndpointNotFound(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for LyonConstants.ReasonEndpointNotFound(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for LyonConstants.State(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x7E)
  {
    goto LABEL_17;
  }

  if (a2 + 130 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 130) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 130;
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

      return (*a1 | (v4 << 8)) - 130;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 130;
    }
  }

LABEL_17:
  v6 = ((*a1 >> 6) & 0xFFFFFF83 | (4 * ((*a1 >> 1) & 0x1F))) ^ 0x7F;
  if (v6 >= 0x7D)
  {
    v6 = -1;
  }

  return v6 + 1;
}

uint64_t storeEnumTagSinglePayload for LyonConstants.State(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 130 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 130) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0x7E)
  {
    v4 = 0;
  }

  if (a2 > 0x7D)
  {
    v5 = ((a2 - 126) >> 8) + 1;
    *result = a2 - 126;
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
    *result = 2 * (((-a2 >> 2) & 0x1F) - 32 * a2);
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_22EF7B554(_BYTE *a1)
{
  v1 = *a1;
  if (v1 >= 0)
  {
    return *a1 >> 6;
  }

  else
  {
    return v1 & 1 | 2u;
  }
}

_BYTE *sub_22EF7B580(_BYTE *result, unsigned int a2)
{
  if (a2 < 2)
  {
    *result = *result & 1 | (a2 << 6);
  }

  else
  {
    *result = a2 & 1 | 0x80;
  }

  return result;
}

unint64_t sub_22EF7B5C0()
{
  result = qword_27DA9E588;
  if (!qword_27DA9E588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA9E588);
  }

  return result;
}

unint64_t sub_22EF7B618()
{
  result = qword_27DA9E590;
  if (!qword_27DA9E590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA9E590);
  }

  return result;
}

unint64_t sub_22EF7B670()
{
  result = qword_27DA9E598;
  if (!qword_27DA9E598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA9E598);
  }

  return result;
}

uint64_t sub_22EF7B6C4()
{
  v0 = sub_22EFB626C();
  __swift_allocate_value_buffer(v0, qword_27DA9E518);
  __swift_project_value_buffer(v0, qword_27DA9E518);
  return sub_22EFB625C();
}

BOOL sub_22EF7B740(unsigned __int8 *a1, int8x16_t *a2)
{
  v3 = *a1;
  v4 = *(a1 + 1) | (a1[3] << 16);
  v5 = *(a1 + 1);
  v6 = a1[16];
  v7 = a1[17];
  v8 = a1[18];
  v9 = a1[19];
  v10 = *(a1 + 5);
  v11 = *(a1 + 3);
  v12 = *(a1 + 4);
  v13 = *(a1 + 20);
  v14 = v3 | (v4 << 8) | (*(a1 + 1) << 32);
  v15 = v7 << 8;
  v16 = (v9 << 24) | (v10 << 32);
  v17 = (v3 | (v4 << 8));
  v18 = v4 >> 8;
  switch((v12 >> 60) & 3 | (4 * a1[42]))
  {
    case 1uLL:
      v38 = a2[2].u64[0];
      if (((v38 >> 60) & 3 | (4 * a2[2].i8[10])) != 1)
      {
        return 0;
      }

      if ((v3 ^ a2->u8[0]))
      {
        return 0;
      }

      v39 = v15 | v6 | (v8 << 16);
      v40 = a2[1].i64[1];
      v41 = a2[2].u16[4];
      if (!sub_22EF6E8C0(v5, v39 | v16, a2->i64[1], a2[1].u64[0]))
      {
        return 0;
      }

      v42 = sub_22EF6E8C0(v11, v12 & 0xCFFFFFFFFFFFFFFFLL, v40, v38 & 0xCFFFFFFFFFFFFFFFLL);
      v19 = 0;
      if (!v42 || v13 != v41)
      {
        return v19;
      }

      v43 = v41 >> 8;
      if (v13 >> 8 == 4)
      {
        if (v43 == 4)
        {
          return 1;
        }
      }

      else if (v43 != 4 && v13 >> 8 == v43)
      {
        return 1;
      }

      return 0;
    case 2uLL:
      v28 = a2[2].u64[0];
      if (((v28 >> 60) & 3 | (4 * a2[2].i8[10])) != 2)
      {
        return 0;
      }

      v53 = a2[1].i64[1];
      v55 = a2[1].u8[3];
      v56 = a2[1].u8[2];
      v29 = a2[1].u16[0];
      v54 = a2[2].i16[4];
      v30 = sub_22EF6E8C0(v14, v5, a2->i64[0], a2->u64[1]);
      v19 = 0;
      if (!v30)
      {
        return v19;
      }

      if ((v15 | v6) != v29)
      {
        return v19;
      }

      v19 = 0;
      if ((v8 ^ v56) & 1) != 0 || ((v9 ^ v55))
      {
        return v19;
      }

      v31 = sub_22EF6E8C0(v11, v12 & 0xCFFFFFFFFFFFFFFFLL, v53, v28 & 0xCFFFFFFFFFFFFFFFLL);
      v32 = (0x10000090007uLL >> (16 * v13)) == (0x10000090007uLL >> (16 * v54));
LABEL_45:
      if (v31)
      {
        return v32;
      }

      else
      {
        return 0;
      }

    case 3uLL:
      if (((a2[2].i64[0] >> 60) & 3 | (4 * a2[2].i8[10])) != 3)
      {
        return 0;
      }

      v33 = a2[1].i64[0];
      v34 = a2[1].i64[1];
      if (!sub_22EF6E8C0(v14, v5, a2->i64[0], a2->u64[1]))
      {
        return 0;
      }

      v14 = v15 | v6 | (v8 << 16) | v16;
      v35 = v11;
      v36 = v33;
      v37 = v34;
      goto LABEL_40;
    case 4uLL:
      if (((a2[2].i64[0] >> 60) & 3 | (4 * a2[2].i8[10])) != 4)
      {
        return 0;
      }

      goto LABEL_39;
    case 5uLL:
      if (((a2[2].i64[0] >> 60) & 3 | (4 * a2[2].i8[10])) == 5)
      {
        goto LABEL_39;
      }

      return 0;
    case 6uLL:
      if (((a2[2].i64[0] >> 60) & 3 | (4 * a2[2].i8[10])) != 6)
      {
        return 0;
      }

      v45 = a2[1].i8[0];
      v31 = sub_22EF6E8C0(v14, v5, a2->i64[0], a2->u64[1]);
      v32 = v6 ^ v45 ^ 1;
      goto LABEL_45;
    case 7uLL:
      if (((a2[2].i64[0] >> 60) & 3 | (4 * a2[2].i8[10])) != 7)
      {
        return 0;
      }

      goto LABEL_39;
    case 8uLL:
      if (((a2[2].i64[0] >> 60) & 3 | (4 * a2[2].i8[10])) != 8)
      {
        return 0;
      }

      return v3 == a2->u8[0];
    case 9uLL:
      if (((a2[2].i64[0] >> 60) & 3 | (4 * a2[2].i8[10])) != 9)
      {
        return 0;
      }

LABEL_39:
      v36 = a2->i64[0];
      v37 = a2->i64[1];
      v35 = v5;
      goto LABEL_40;
    case 10uLL:
      v46 = a2[2].u64[0];
      if (((v46 >> 60) & 3 | (4 * a2[2].i8[10])) != 0xA)
      {
        return 0;
      }

      if (v17 != a2->u16[0])
      {
        return 0;
      }

      v47 = a2[1].i64[1];
      if (!sub_22EF6E8C0(v5, v15 | v6 | (v8 << 16) | v16, a2->i64[1], a2[1].u64[0]))
      {
        return 0;
      }

      v35 = v12 & 0xCFFFFFFFFFFFFFFFLL;
      v37 = v46 & 0xCFFFFFFFFFFFFFFFLL;
      v14 = v11;
      v36 = v47;
LABEL_40:

      return sub_22EF6E8C0(v14, v35, v36, v37);
    case 11uLL:
      if (((a2[2].i64[0] >> 60) & 3 | (4 * a2[2].i8[10])) != 0xB)
      {
        return 0;
      }

      return v17 == a2->u16[0];
    case 12uLL:
      v24 = v15 | v6 | (v8 << 16) | v16 | v5 | v11 | v12;
      if (v13 || v24 | v14)
      {
        if (!v13 && (!v24 ? (v48 = v14 == 1) : (v48 = 0), v48))
        {
          v49 = a2[2].u64[0];
          if (((v49 >> 60) & 3 | (4 * a2[2].i8[10])) != 0xC || a2[2].i16[4] || a2->i64[0] != 1)
          {
            return 0;
          }
        }

        else if (!v13 && (!v24 ? (v50 = v14 == 2) : (v50 = 0), v50))
        {
          v49 = a2[2].u64[0];
          if (((v49 >> 60) & 3 | (4 * a2[2].i8[10])) != 0xC || a2[2].i16[4] || a2->i64[0] != 2)
          {
            return 0;
          }
        }

        else if (!v13 && (!v24 ? (v51 = v14 == 3) : (v51 = 0), v51))
        {
          v49 = a2[2].u64[0];
          if (((v49 >> 60) & 3 | (4 * a2[2].i8[10])) != 0xC || a2[2].i16[4] || a2->i64[0] != 3)
          {
            return 0;
          }
        }

        else
        {
          v49 = a2[2].u64[0];
          if (((v49 >> 60) & 3 | (4 * a2[2].i8[10])) != 0xC || a2[2].i16[4] || a2->i64[0] != 4)
          {
            return 0;
          }
        }

        v27 = a2[1].i64[1] | a2[1].i64[0];
        v25 = a2->i64[1] | v49;
      }

      else
      {
        v25 = a2[2].u64[0];
        if (((v25 >> 60) & 3 | (4 * a2[2].i8[10])) != 0xC || a2[2].i16[4])
        {
          return 0;
        }

        v26 = vorrq_s8(*a2, a2[1]);
        v27 = vorr_s8(*v26.i8, *&vextq_s8(v26, v26, 8uLL));
      }

      return !(v27 | v25);
    default:
      if ((a2[2].i64[0] >> 60) & 3 | (4 * a2[2].i8[10]))
      {
        return 0;
      }

      v19 = 0;
      if (((v3 ^ a2->u8[0]) & 1) != 0 || v18 != a2->u16[1])
      {
        return v19;
      }

      v20 = a2->i64[1];
      v21 = a2[1].u64[0];
      v22 = v6 | (v7 << 8) | (v8 << 16);
      if ((~v10 & 0xF0000000) == 0)
      {
        if (v21 >> 60 == 15)
        {
          sub_22EF7BFEC(a1, v57);
          sub_22EF7BFEC(a2, v57);
          sub_22EF708B4(v5, v22 | v16);
          return 1;
        }

        goto LABEL_85;
      }

      if (v21 >> 60 == 15)
      {
LABEL_85:
        sub_22EF7BFEC(a1, v57);
        sub_22EF7BFEC(a2, v57);
        sub_22EF708B4(v5, v22 | v16);
        sub_22EF708B4(v20, v21);
        return 0;
      }

      sub_22EF7BFEC(a1, v57);
      sub_22EF7BFEC(a2, v57);
      v52 = sub_22EF6E8C0(v5, v22 | v16, v20, v21);
      sub_22EF708B4(v20, v21);
      sub_22EF708B4(v5, v22 | v16);
      return v52;
  }
}

BOOL sub_22EF7BDF4(unsigned __int8 a1, unsigned __int8 a2)
{
  if (a1 >> 6)
  {
    if (a1 >> 6 == 1)
    {
      if ((a2 & 0xC0) != 0x40)
      {
        return 0;
      }

      return ((a2 ^ a1) & 1) == 0;
    }

    if (a1 == 128)
    {
      if (a2 == 128)
      {
        return 1;
      }
    }

    else if (a2 == 129)
    {
      return 1;
    }
  }

  else if (a2 < 0x40u)
  {
    return ((a2 ^ a1) & 1) == 0;
  }

  return 0;
}

uint64_t sub_22EF7BE64(int a1)
{
  result = (a1 - 1);
  if (result >= 4u)
  {
    if (qword_27DA9E370 != -1)
    {
      swift_once();
    }

    v2 = sub_22EFB626C();
    __swift_project_value_buffer(v2, qword_27DA9E518);
    v3 = sub_22EFB624C();
    v4 = sub_22EFB65CC();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_22EEF5000, v3, v4, "Unexpected reason for ep not found", v5, 2u);
      MEMORY[0x2318FC200](v5, -1, -1);
    }

    return 4;
  }

  return result;
}

uint64_t sub_22EF7BF54(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    return (0x302010004uLL >> (8 * a1));
  }

  else
  {
    return 4;
  }
}

uint64_t sub_22EF7BF80(uint64_t result)
{
  if (result >= 5u)
  {
    return 5;
  }

  else
  {
    return result;
  }
}

unint64_t sub_22EF7BF94()
{
  result = qword_27DA9E410;
  if (!qword_27DA9E410)
  {
    type metadata accessor for ATLError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA9E410);
  }

  return result;
}

unint64_t sub_22EF7C054()
{
  result = qword_27DA9E408;
  if (!qword_27DA9E408)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DA9E400, &unk_22EFBD180);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA9E408);
  }

  return result;
}

uint64_t sub_22EF7C0B8(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if ((~result & 0xFF00000000) != 0)
  {
    return sub_22EF708B4(a3, a4);
  }

  return result;
}

uint64_t sub_22EF7C0D4(char a1)
{
  if (a1 + 1) < 0x19u && ((0x1F1DFF9u >> (a1 + 1)))
  {
    return byte_22EFBCD0A[(a1 + 1)];
  }

  if (qword_27DA9E370 != -1)
  {
    swift_once();
  }

  v3 = sub_22EFB626C();
  __swift_project_value_buffer(v3, qword_27DA9E518);
  v4 = sub_22EFB624C();
  v5 = sub_22EFB65CC();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136315138;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E428, &unk_22EFBBC50);
    v8 = swift_allocObject();
    v9 = MEMORY[0x277D84B78];
    *(v8 + 16) = xmmword_22EFBB8C0;
    v10 = MEMORY[0x277D84BC0];
    *(v8 + 56) = v9;
    *(v8 + 64) = v10;
    *(v8 + 32) = a1;
    v11 = sub_22EFB649C();
    v13 = sub_22EF9447C(v11, v12, &v14);

    *(v6 + 4) = v13;
    _os_log_impl(&dword_22EEF5000, v4, v5, "Unknown event type %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    MEMORY[0x2318FC200](v7, -1, -1);
    MEMORY[0x2318FC200](v6, -1, -1);
  }

  return 20;
}

uint64_t sub_22EF7C2AC(char a1)
{
  if ((a1 + 1) > 0x18u)
  {
    return 20;
  }

  else
  {
    return byte_22EFBCD23[(a1 + 1)];
  }
}

uint64_t sub_22EF7C2D8@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v57 = result;
  v6 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v6 != 2)
    {
      goto LABEL_38;
    }

    v8 = *(result + 16);
    v7 = *(result + 24);
    v9 = __OFSUB__(v7, v8);
    v10 = v7 - v8;
    if (!v9)
    {
      if (v10 < 1)
      {
        goto LABEL_38;
      }

      goto LABEL_11;
    }

    __break(1u);
    goto LABEL_45;
  }

  if (!v6)
  {
    if (!BYTE6(a2))
    {
      goto LABEL_38;
    }

    goto LABEL_11;
  }

  if (__OFSUB__(HIDWORD(result), result))
  {
LABEL_45:
    __break(1u);
    v9 = __OFSUB__(HIDWORD(a3), a3);
    v43 = HIDWORD(a3) - a3;
    if (v9)
    {
      __break(1u);
      __break(1u);
      __break(1u);
      goto LABEL_65;
    }

    if (v43 < 1)
    {
      sub_22EF726E8();
      swift_allocError();
      swift_willThrow();
      sub_22EF708C8(v5, a2);
      return sub_22EF708C8(v57, a2);
    }

    v16 = 0;
    v18 = 0;
    v19 = 1;
    v15 = (sub_22EF7250C() & 1) == 0;
    v17 = 0x2000000000000000;
    v14 = a2;
LABEL_14:
    v20 = v14;
    result = sub_22EF708C8(v57, a2);
    *v4 = v5;
    *(v4 + 8) = v20;
    *(v4 + 16) = v15;
    *(v4 + 24) = v16;
    *(v4 + 32) = v17;
    *(v4 + 40) = v18;
    *(v4 + 42) = v19;
    return result;
  }

  if (HIDWORD(result) - result < 1)
  {
    goto LABEL_38;
  }

LABEL_11:
  v4 = a3;
  v11 = sub_22EF7250C();
  v12 = sub_22EF7C0D4(v11);
  if (v3)
  {
    return sub_22EF708C8(v57, a2);
  }

  v13 = v12;
  if (v12 == 20)
  {
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 3;
    v5 = 4;
    goto LABEL_14;
  }

  v21 = v57;
  v22 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v22)
    {
      v21 = BYTE6(a2);
      goto LABEL_24;
    }

    goto LABEL_22;
  }

  if (v22 != 2)
  {
LABEL_38:
    sub_22EF726E8();
    swift_allocError();
LABEL_39:
    swift_willThrow();
    return sub_22EF708C8(v57, a2);
  }

  v23 = *(v57 + 16);
  v24 = *(v57 + 24);
  v9 = __OFSUB__(v24, v23);
  v21 = v24 - v23;
  if (!v9)
  {
    goto LABEL_24;
  }

  __break(1u);
LABEL_22:
  v9 = __OFSUB__(HIDWORD(v21), v21);
  LODWORD(v21) = HIDWORD(v21) - v21;
  if (v9)
  {
    __break(1u);
    goto LABEL_63;
  }

  v21 = v21;
LABEL_24:
  if (v21 < 1)
  {
    goto LABEL_38;
  }

  v25 = sub_22EF7250C();
  if (v13 > 0xAu)
  {
LABEL_36:
    if (v25 != 16)
    {
      goto LABEL_32;
    }

    goto LABEL_37;
  }

  if (((1 << v13) & 0x38) == 0)
  {
    if (((1 << v13) & 0x406) != 0)
    {
      if (v25 == 17)
      {
        goto LABEL_37;
      }

LABEL_32:
      LOBYTE(v5) = v25;
      if (qword_27DA9E370 == -1)
      {
LABEL_33:
        v26 = sub_22EFB626C();
        __swift_project_value_buffer(v26, qword_27DA9E518);
        v27 = sub_22EFB624C();
        v28 = sub_22EFB65CC();
        if (os_log_type_enabled(v27, v28))
        {
          v29 = swift_slowAlloc();
          v30 = swift_slowAlloc();
          v59 = v30;
          *v29 = 136315138;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E428, &unk_22EFBBC50);
          v31 = swift_allocObject();
          v32 = MEMORY[0x277D84B78];
          *(v31 + 16) = xmmword_22EFBB8C0;
          v33 = MEMORY[0x277D84BC0];
          *(v31 + 56) = v32;
          *(v31 + 64) = v33;
          *(v31 + 32) = v5;
          v34 = sub_22EFB649C();
          v36 = sub_22EF9447C(v34, v35, &v59);

          *(v29 + 4) = v36;
          _os_log_impl(&dword_22EEF5000, v27, v28, "Event version is different from expected: %s", v29, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v30);
          MEMORY[0x2318FC200](v30, -1, -1);
          MEMORY[0x2318FC200](v29, -1, -1);
        }

        type metadata accessor for ATLError(0);
        sub_22EF7BF94();
        swift_allocError();
        *v37 = 3;
        goto LABEL_39;
      }

LABEL_63:
      swift_once();
      goto LABEL_33;
    }

    goto LABEL_36;
  }

  if (byte_2843B6828 != v25 && byte_2843B6829 != v25)
  {
    goto LABEL_32;
  }

LABEL_37:
  v5 = 0;
  v15 = 0;
  v38 = Data.popPrefix(_:)(2);
  v16 = v39;
  v40 = sub_22EFACD50(v38, v39);
  sub_22EF70B68(v38, v16);
  v56 = sub_22EF7F734(v38, v16, 0, 0);
  result = sub_22EF708C8(v38, v16);
  v41 = v57;
  v42 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v42)
    {
      result = BYTE6(a2);
LABEL_58:
      v51 = Data.popPrefix(_:)(result);
      v15 = v52;
      v53 = v51;
      v54 = (v40 & 0x1FF) == 1;
      sub_22EF708C8(v38, v16);
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      v5 = v54 & 0xFFFFFFFF0000FFFFLL | (v56 << 16);
      v14 = v53;
      goto LABEL_14;
    }

    goto LABEL_55;
  }

  if (v42 != 2)
  {
    result = 0;
    goto LABEL_58;
  }

  v45 = *(v57 + 16);
  v46 = *(v57 + 24);
  result = v46 - v45;
  if (!__OFSUB__(v46, v45))
  {
    goto LABEL_58;
  }

  __break(1u);
  v49 = v45 + 16;
  v47 = *(v45 + 16);
  v48 = *(v49 + 8);
  v9 = __OFSUB__(v48, v47);
  v41 = v48 - v47;
  if (!v9)
  {
    if (v41 < 1)
    {
      sub_22EF726E8();
      swift_allocError();
      swift_willThrow();
      sub_22EF708C8(v16, 0);
      sub_22EF708C8(v13, 0);
      return sub_22EF708C8(v57, a2);
    }

    v55 = sub_22EF7250C();
    v19 = 0;
    v18 = v38 | (sub_22EF7BE64(v55) << 8);
    v17 = 0x1000000000000000;
    v14 = v13;
    goto LABEL_14;
  }

  __break(1u);
LABEL_55:
  v9 = __OFSUB__(HIDWORD(v41), v41);
  v50 = HIDWORD(v41) - v41;
  if (!v9)
  {
    result = v50;
    goto LABEL_58;
  }

LABEL_65:
  __break(1u);
  __break(1u);
  return result;
}

uint64_t sub_22EF7CFF8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_22EF7D058(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = OBJC_IVAR____TtC24AppletTranslationLibrary16LyonSwiftDecoder_state;
  v9 = v4[OBJC_IVAR____TtC24AppletTranslationLibrary16LyonSwiftDecoder_state];
  if (v9 >> 6)
  {
    if (v9 >> 6 == 1)
    {
      v38 = a3;
      v39 = a4;
      v10 = sub_22EF7D77C;
    }

    else
    {
      if (v9 != 128)
      {
        return sub_22EFAB468(MEMORY[0x277D84F90]);
      }

      v10 = sub_22EF7D7B4;
      v38 = a3;
      v39 = a4;
    }
  }

  else
  {
    v10 = sub_22EF7D798;
    v38 = a3;
    v39 = a4;
  }

  *(swift_allocObject() + 16) = v4;
  v11 = v4;
  sub_22EF70B68(a1, a2);
  sub_22EF7C2D8(a1, a2, v41);
  if (v5)
  {
    if (qword_27DA9E370 != -1)
    {
      swift_once();
    }

    v23 = sub_22EFB626C();
    __swift_project_value_buffer(v23, qword_27DA9E518);
    sub_22EF70B68(a1, a2);
    v24 = sub_22EFB624C();
    v25 = sub_22EFB65CC();
    sub_22EF708C8(a1, a2);
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v40[0] = v27;
      *v26 = 136315138;
      v42 = sub_22EF83154(a1, a2);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E400, &unk_22EFBD180);
      sub_22EF7C054();
      v28 = sub_22EFB646C();
      v30 = v29;

      v31 = sub_22EF9447C(v28, v30, v40);

      *(v26 + 4) = v31;
      _os_log_impl(&dword_22EEF5000, v24, v25, "LyonDecoder eventHandler error: %s", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v27);
      MEMORY[0x2318FC200](v27, -1, -1);
      MEMORY[0x2318FC200](v26, -1, -1);
    }

    type metadata accessor for ATLError(0);
    sub_22EF7BF94();
    swift_allocError();
    *v32 = 3;
    swift_willThrow();
  }

  else
  {
    v37 = v4;
    if (qword_27DA9E370 != -1)
    {
      swift_once();
    }

    v12 = sub_22EFB626C();
    __swift_project_value_buffer(v12, qword_27DA9E518);
    v13 = v11;
    sub_22EF7BFEC(v41, v40);
    v14 = sub_22EFB624C();
    v15 = sub_22EFB65EC();
    sub_22EF7C024(v41);

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v40[0] = v36;
      *v16 = 136315394;
      v35 = v15;
      LOBYTE(v42) = sub_22EF76B24();
      v17 = sub_22EFB64AC();
      v19 = sub_22EF9447C(v17, v18, v40);

      *(v16 + 4) = v19;
      *(v16 + 12) = 2080;
      LOBYTE(v42) = v37[v8];
      v20 = sub_22EFB64AC();
      v22 = sub_22EF9447C(v20, v21, v40);

      *(v16 + 14) = v22;
      _os_log_impl(&dword_22EEF5000, v14, v35, "Received event %s in state %s", v16, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2318FC200](v36, -1, -1);
      MEMORY[0x2318FC200](v16, -1, -1);
    }

    v33 = v10(v41, v38, v39);

    sub_22EF7C024(v41);
    return v33;
  }
}

unint64_t sub_22EF7D54C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E5B0, &qword_22EFBC3C8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22EFBBCB0;
  sub_22EFB648C();
  sub_22EFB668C();
  *(inited + 96) = MEMORY[0x277D839B0];
  *(inited + 72) = 1;
  sub_22EFB648C();
  sub_22EFB668C();
  *(inited + 168) = MEMORY[0x277D83B88];
  *(inited + 144) = 1000;
  v1 = sub_22EFAB468(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E5B8, &unk_22EFBC3D0);
  swift_arrayDestroy();
  return v1;
}

uint64_t sub_22EF7D668(const char *a1)
{
  if (qword_27DA9E370 != -1)
  {
    swift_once();
  }

  v2 = sub_22EFB626C();
  __swift_project_value_buffer(v2, qword_27DA9E518);
  v3 = sub_22EFB624C();
  v4 = sub_22EFB65CC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_22EEF5000, v3, v4, a1, v5, 2u);
    MEMORY[0x2318FC200](v5, -1, -1);
  }

  type metadata accessor for ATLError(0);
  sub_22EF7BF94();
  swift_allocError();
  *v6 = 2;
  return swift_willThrow();
}

uint64_t getEnumTagSinglePayload for LyonConstants.EventType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xED)
  {
    goto LABEL_17;
  }

  if (a2 + 19 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 19) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 19;
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

      return (*a1 | (v4 << 8)) - 19;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 19;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x14;
  v8 = v6 - 20;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for LyonConstants.EventType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 19 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 19) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xED)
  {
    v4 = 0;
  }

  if (a2 > 0xEC)
  {
    v5 = ((a2 - 237) >> 8) + 1;
    *result = a2 + 19;
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
    *result = a2 + 19;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataVSg(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

uint64_t get_enum_tag_for_layout_string_24AppletTranslationLibrary13LyonConstantsO5EventO(uint64_t a1)
{
  v1 = 4 * (*(a1 + 42) & 3);
  if (v1 == 12)
  {
    return (*a1 + 12);
  }

  else
  {
    return (*(a1 + 32) >> 60) & 3 | v1;
  }
}

__n128 __swift_memcpy43_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 27) = *(a2 + 27);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_22EF7D98C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3F4 && *(a1 + 43))
  {
    return (*a1 + 1012);
  }

  v3 = ((*(a1 + 32) >> 60) & 3 | (4 * *(a1 + 42))) ^ 0x3FF;
  if (v3 >= 0x3F3)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_22EF7D9E0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3F3)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 42) = 0;
    *(result + 40) = 0;
    *result = a2 - 1012;
    if (a3 >= 0x3F4)
    {
      *(result + 43) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3F4)
    {
      *(result + 43) = 0;
    }

    if (a2)
    {
      *result = 0u;
      *(result + 16) = 0u;
      *(result + 32) = (-a2 & 3) << 60;
      *(result + 40) = 0;
      *(result + 42) = -a2 >> 2;
    }
  }

  return result;
}

uint64_t sub_22EF7DA5C(uint64_t result, unsigned int a2)
{
  if (a2 < 0xC)
  {
    *(result + 32) = *(result + 32) & 0xCFFFFFFFFFFFFFFFLL | ((a2 & 3) << 60);
    *(result + 42) = a2 >> 2;
  }

  else
  {
    *result = a2 - 12;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0;
    *(result + 42) = 3;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LyonConstants.TransactionType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for LyonConstants.TransactionType(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_22EF7DC10()
{
  result = qword_27DA9E5E8;
  if (!qword_27DA9E5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA9E5E8);
  }

  return result;
}

unint64_t sub_22EF7DC68()
{
  result = qword_27DA9E5F0;
  if (!qword_27DA9E5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA9E5F0);
  }

  return result;
}

char *sub_22EF7DCC8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E600, &qword_22EFBD1B0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_22EF7DDCC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E608, &qword_22EFBD1D0);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_22EF7DED0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E450, &qword_22EFBBCC0);
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

char *sub_22EF7E000(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E638, &qword_22EFBCD68);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_22EF7E10C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E430, &unk_22EFBD190);
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

char *sub_22EF7E200(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E610, &qword_22EFBCD40);
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

void *sub_22EF7E330(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 25;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 3);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 8 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_22EF7E464(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E628, &qword_22EFBCD58);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_22EF7E58C(uint64_t result)
{
  if (result)
  {
    if (result < 15)
    {
      return 0;
    }

    else
    {
      v1 = result;
      sub_22EFB607C();
      swift_allocObject();
      sub_22EFB606C();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_22EFB614C();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = 0;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_22EF7E630(uint64_t a1, unint64_t a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = HIBYTE(a2) & 0xF;
  v21[0] = a1;
  v21[1] = a2;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v21[2] = 0;
  v22 = v2;

  v3 = MEMORY[0x277D84F90];
  while (1)
  {
    sub_22EFB64FC();
    if (!v4)
    {
      break;
    }

    v5 = sub_22EFB645C();
    v7 = v6;

    if ((v7 & 1) == 0)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v3 = sub_22EF7DCC8(0, *(v3 + 2) + 1, 1, v3);
      }

      v9 = *(v3 + 2);
      v8 = *(v3 + 3);
      if (v9 >= v8 >> 1)
      {
        v3 = sub_22EF7DCC8((v8 > 1), v9 + 1, 1, v3);
      }

      *(v3 + 2) = v9 + 1;
      *&v3[8 * v9 + 32] = v5;
    }
  }

  v10 = *(v3 + 2);
  if (v10)
  {

    goto LABEL_26;
  }

  v11 = sub_22EFB64DC();

  if (v10 != v11)
  {
LABEL_26:

    return 0;
  }

  v12 = sub_22EF7E58C(v10 >> 1);
  v24 = v12;
  v25 = v13;
  if (v10)
  {
    v14 = 0;
    do
    {
      if (__OFADD__(v14, 2))
      {
        v16 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v16 = v14 + 2;
      }

      if ((v14 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
      }

      v17 = *(v3 + 2);
      if (v14 >= v17)
      {
        goto LABEL_30;
      }

      if (v14 + 1 >= v17)
      {
        goto LABEL_31;
      }

      v18 = *&v3[8 * v14 + 40] | (16 * *&v3[8 * v14 + 32]);
      if ((v18 & 0x8000000000000000) != 0)
      {
        goto LABEL_32;
      }

      if (v18 > 0xFF)
      {
        goto LABEL_33;
      }

      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E5F8, &unk_22EFBD1A0);
      v22 = v15;
      v23 = sub_22EF7E8F0();
      LOBYTE(v21[0]) = v18;
      __swift_project_boxed_opaque_existential_1(v21, v15);
      sub_22EFB616C();
      __swift_destroy_boxed_opaque_existential_0Tm(v21);
      v14 = v16;
    }

    while (v16 < v10);

    return v24;
  }

  else
  {
    v20 = v12;

    return v20;
  }
}

unint64_t sub_22EF7E8F0()
{
  result = qword_281477D58;
  if (!qword_281477D58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DA9E5F8, &unk_22EFBD1A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281477D58);
  }

  return result;
}

uint64_t sub_22EF7E958(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a3 + 1;
  if (__OFADD__(a3, 1))
  {
    goto LABEL_35;
  }

  v6 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v6 != 2)
    {
      goto LABEL_17;
    }

    v8 = *(a1 + 16);
    v7 = *(a1 + 24);
    v9 = __OFSUB__(v7, v8);
    v10 = v7 - v8;
    if (v9)
    {
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    if (v10 < v3)
    {
      goto LABEL_18;
    }
  }

  else if (v6)
  {
    if (__OFSUB__(HIDWORD(a1), a1))
    {
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
    }

    if (HIDWORD(a1) - a1 < v3)
    {
LABEL_18:
      sub_22EFB66DC();

      v12 = sub_22EFB683C();
      MEMORY[0x2318FB260](v12);

      MEMORY[0x2318FB260](0x6164206D6F726620, 0xEF206E656C206174);
      if (v6 > 1)
      {
        if (v6 != 2 || !__OFSUB__(*(a1 + 24), *(a1 + 16)))
        {
          goto LABEL_26;
        }

        __break(1u);
      }

      else if (!v6)
      {
        goto LABEL_26;
      }

      if (!__OFSUB__(HIDWORD(a1), a1))
      {
LABEL_26:
        sub_22EF70EBC(0, &qword_27DA9E448, 0x277CCA9B8);
        v13 = sub_22EFB683C();
        MEMORY[0x2318FB260](v13);

        MEMORY[0x2318FB260](0x2074657366666F20, 0xE800000000000000);
        v14 = sub_22EFB683C();
        MEMORY[0x2318FB260](v14);

        sub_22EF74470(0xD000000000000012, 0x800000022EFC67A0, 8, 0);
        swift_willThrow();
        return sub_22EF708C8(a1, a2);
      }

      goto LABEL_40;
    }
  }

  else if (BYTE6(a2) < v3)
  {
    goto LABEL_18;
  }

  if (!v6)
  {
    goto LABEL_33;
  }

  if (v6 != 2)
  {
    v3 = a1;
    v11 = a1 + a3;
    if (__OFADD__(a1, a3))
    {
      goto LABEL_41;
    }

    goto LABEL_29;
  }

  v3 = *(a1 + 16);
  v11 = v3 + a3;
  if (!__OFADD__(v3, a3))
  {
LABEL_29:
    v9 = __OFADD__(v3, a3);
    v16 = v3 + a3;
    if (!v9)
    {
      goto LABEL_30;
    }

    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  __break(1u);
LABEL_17:
  if (v3 > 0)
  {
    goto LABEL_18;
  }

LABEL_33:
  v11 = a3;
  v16 = a3;
LABEL_30:
  v9 = __OFADD__(v16, 1);
  v17 = v16 + 1;
  if (v9)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if (v17 < v11)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E678, &unk_22EFBCDE0);
  sub_22EF8225C();
  sub_22EF822B0();
  sub_22EFB601C();
  sub_22EF708C8(a1, a2);
  return 0;
}

uint64_t sub_22EF7ECD0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E670, &unk_22EFBCDD0);
    v2 = sub_22EFB67FC();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_22EF76370(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_22EF76360(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_22EF76360(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_22EF76360(v31, v32);
    result = sub_22EFB666C();
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v7 + 8 * (v18 >> 6))) == 0)
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
        v23 = *(v7 + 8 * v19);
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*(v7 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_22EF76360(v32, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

id sub_22EF7EFF4(uint64_t a1, uint64_t a2)
{
  result = [objc_allocWithZone(type metadata accessor for AlphonsoSwiftDecoder(a1 a2))];
  qword_27DA9E640 = result;
  return result;
}

id sub_22EF7F41C(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for AlphonsoSwiftDecoder(a1, a2);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

id sub_22EF7F478()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E3F0, &unk_22EFBBC40);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_22EFBCD70;
  *(v0 + 32) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  *(v0 + 40) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  *(v0 + 48) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  *(v0 + 56) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  *(v0 + 64) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  result = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  *(v0 + 72) = result;
  qword_27DA9E648 = v0;
  return result;
}

uint64_t sub_22EF7F56C()
{
  v0 = sub_22EFB626C();
  __swift_allocate_value_buffer(v0, qword_27DA9E650);
  __swift_project_value_buffer(v0, qword_27DA9E650);
  return sub_22EFB625C();
}

_OWORD *sub_22EF7F5E8@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v6 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *v4;
  v13 = sub_22EFA9408(a2, a3);
  v15 = v12[2];
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_9;
  }

  v5 = v14;
  if (v12[3] < v18)
  {
    sub_22EF74B3C(v18, isUniquelyReferenced_nonNull_native);
    v13 = sub_22EFA9408(a2, a3);
    if ((v5 & 1) == (v19 & 1))
    {
      goto LABEL_6;
    }

    v13 = sub_22EFB687C();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_9:
    v22 = v13;
    sub_22EF75BBC();
    v13 = v22;
    if (v5)
    {
      goto LABEL_7;
    }

LABEL_10:
    sub_22EF75B50(v13, a2, a3, a1, v12);
    *a4 = 0u;
    a4[1] = 0u;

    goto LABEL_11;
  }

LABEL_6:
  if ((v5 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_7:
  v20 = 32 * v13;
  sub_22EF76360((v12[7] + 32 * v13), a4);
  result = sub_22EF76360(a1, (v12[7] + v20));
LABEL_11:
  *v6 = v12;
  return result;
}

uint64_t sub_22EF7F734(uint64_t a1, unint64_t a2, uint64_t a3, char a4)
{
  v4 = a3 + 2;
  if (__OFADD__(a3, 2))
  {
    goto LABEL_37;
  }

  v7 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v7 != 2)
    {
      goto LABEL_17;
    }

    v9 = *(a1 + 16);
    v8 = *(a1 + 24);
    v10 = __OFSUB__(v8, v9);
    v11 = v8 - v9;
    if (v10)
    {
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    if (v11 < v4)
    {
      goto LABEL_18;
    }
  }

  else if (v7)
  {
    if (__OFSUB__(HIDWORD(a1), a1))
    {
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
    }

    if (HIDWORD(a1) - a1 < v4)
    {
LABEL_18:
      sub_22EFB66DC();

      v13 = sub_22EFB683C();
      MEMORY[0x2318FB260](v13);

      MEMORY[0x2318FB260](0x6164206D6F726620, 0xEF206E656C206174);
      if (v7 > 1)
      {
        if (v7 != 2 || !__OFSUB__(*(a1 + 24), *(a1 + 16)))
        {
          goto LABEL_26;
        }

        __break(1u);
      }

      else if (!v7)
      {
        goto LABEL_26;
      }

      if (!__OFSUB__(HIDWORD(a1), a1))
      {
LABEL_26:
        sub_22EF70EBC(0, &qword_27DA9E448, 0x277CCA9B8);
        v14 = sub_22EFB683C();
        MEMORY[0x2318FB260](v14);

        MEMORY[0x2318FB260](0x2074657366666F20, 0xE800000000000000);
        v15 = sub_22EFB683C();
        MEMORY[0x2318FB260](v15);

        sub_22EF74470(0xD000000000000012, 0x800000022EFC67A0, 8, 0);
        return swift_willThrow();
      }

      goto LABEL_42;
    }
  }

  else if (BYTE6(a2) < v4)
  {
    goto LABEL_18;
  }

  if (!v7)
  {
    goto LABEL_35;
  }

  if (v7 != 2)
  {
    v4 = a1;
    v12 = a1 + a3;
    if (__OFADD__(a1, a3))
    {
      goto LABEL_43;
    }

    goto LABEL_29;
  }

  v4 = *(a1 + 16);
  v12 = v4 + a3;
  if (!__OFADD__(v4, a3))
  {
LABEL_29:
    v10 = __OFADD__(v4, a3);
    v17 = v4 + a3;
    if (!v10)
    {
      goto LABEL_30;
    }

    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  __break(1u);
LABEL_17:
  if (v4 > 0)
  {
    goto LABEL_18;
  }

LABEL_35:
  v12 = a3;
  v17 = a3;
LABEL_30:
  v10 = __OFADD__(v17, 2);
  v18 = v17 + 2;
  if (v10)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  if (v18 < v12)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E678, &unk_22EFBCDE0);
  sub_22EF8225C();
  sub_22EF822B0();
  sub_22EFB601C();
  v19 = bswap32(0) >> 16;
  if (a4)
  {
    return 0;
  }

  else
  {
    return v19;
  }
}

uint64_t sub_22EF7FAA8(uint64_t a1, unint64_t a2, uint64_t a3, char a4)
{
  v4 = a3 + 4;
  if (__OFADD__(a3, 4))
  {
    goto LABEL_37;
  }

  v7 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v7 != 2)
    {
      goto LABEL_17;
    }

    v9 = *(a1 + 16);
    v8 = *(a1 + 24);
    v10 = __OFSUB__(v8, v9);
    v11 = v8 - v9;
    if (v10)
    {
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    if (v11 < v4)
    {
      goto LABEL_18;
    }
  }

  else if (v7)
  {
    if (__OFSUB__(HIDWORD(a1), a1))
    {
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
    }

    if (HIDWORD(a1) - a1 < v4)
    {
LABEL_18:
      sub_22EFB66DC();

      v13 = sub_22EFB683C();
      MEMORY[0x2318FB260](v13);

      MEMORY[0x2318FB260](0x6164206D6F726620, 0xEF206E656C206174);
      if (v7 > 1)
      {
        if (v7 != 2 || !__OFSUB__(*(a1 + 24), *(a1 + 16)))
        {
          goto LABEL_26;
        }

        __break(1u);
      }

      else if (!v7)
      {
        goto LABEL_26;
      }

      if (!__OFSUB__(HIDWORD(a1), a1))
      {
LABEL_26:
        sub_22EF70EBC(0, &qword_27DA9E448, 0x277CCA9B8);
        v14 = sub_22EFB683C();
        MEMORY[0x2318FB260](v14);

        MEMORY[0x2318FB260](0x2074657366666F20, 0xE800000000000000);
        v15 = sub_22EFB683C();
        MEMORY[0x2318FB260](v15);

        sub_22EF74470(0xD000000000000012, 0x800000022EFC67A0, 8, 0);
        return swift_willThrow();
      }

      goto LABEL_42;
    }
  }

  else if (BYTE6(a2) < v4)
  {
    goto LABEL_18;
  }

  if (!v7)
  {
    goto LABEL_35;
  }

  if (v7 != 2)
  {
    v4 = a1;
    v12 = a1 + a3;
    if (__OFADD__(a1, a3))
    {
      goto LABEL_43;
    }

    goto LABEL_29;
  }

  v4 = *(a1 + 16);
  v12 = v4 + a3;
  if (!__OFADD__(v4, a3))
  {
LABEL_29:
    v10 = __OFADD__(v4, a3);
    v17 = v4 + a3;
    if (!v10)
    {
      goto LABEL_30;
    }

    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  __break(1u);
LABEL_17:
  if (v4 > 0)
  {
    goto LABEL_18;
  }

LABEL_35:
  v12 = a3;
  v17 = a3;
LABEL_30:
  v10 = __OFADD__(v17, 4);
  v18 = v17 + 4;
  if (v10)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  if (v18 < v12)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E678, &unk_22EFBCDE0);
  sub_22EF8225C();
  sub_22EF822B0();
  sub_22EFB601C();
  v19 = bswap32(0);
  if (a4)
  {
    return 0;
  }

  else
  {
    return v19;
  }
}

uint64_t sub_22EF7FE18(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v7 = result;
  v8 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v8 != 2)
    {
      goto LABEL_12;
    }

    v10 = *(result + 16);
    v9 = *(result + 24);
    v11 = __OFSUB__(v9, v10);
    v12 = v9 - v10;
    if (!v11)
    {
      if (v12 == 5)
      {
        goto LABEL_8;
      }

      goto LABEL_12;
    }

    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (!v8)
  {
    if (BYTE6(a2) != 5)
    {
      goto LABEL_12;
    }

LABEL_8:
    sub_22EF70B68(result, a2);
    v16 = sub_22EF7E958(v7, a2, 2);
    if (!v5)
    {
      v17 = v16;
      sub_22EF70B68(v7, a2);
      v18 = sub_22EF7F734(v7, a2, 3, 0);
      sub_22EF708C8(v7, a2);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E5A0, &qword_22EFBC3B8);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_22EFBC130;
      *(inited + 32) = sub_22EFB648C();
      *(inited + 40) = v20;
      v21 = sub_22EFB648C();
      v22 = MEMORY[0x277D837D0];
      *(inited + 48) = v21;
      *(inited + 56) = v23;
      *(inited + 72) = v22;
      *(inited + 80) = 0xD000000000000010;
      *(inited + 120) = v22;
      *(inited + 88) = 0x800000022EFC65A0;
      *(inited + 96) = a3;
      *(inited + 104) = a4;
      *(inited + 128) = sub_22EFB648C();
      *(inited + 136) = v24;
      v25 = MEMORY[0x277D84B78];
      *(inited + 168) = MEMORY[0x277D84B78];
      *(inited + 144) = a5;
      *(inited + 176) = sub_22EFB648C();
      *(inited + 184) = v26;
      *(inited + 192) = v17;
      *(inited + 216) = v25;
      strcpy((inited + 224), "selectStatus");
      *(inited + 237) = 0;
      *(inited + 238) = -5120;
      *(inited + 264) = MEMORY[0x277D84C58];
      *(inited + 240) = v18;
      *(inited + 272) = sub_22EFB648C();
      *(inited + 280) = v27;
      *(inited + 312) = MEMORY[0x277D839B0];
      *(inited + 288) = 1;
      *(inited + 320) = sub_22EFB648C();
      *(inited + 328) = v28;
      v29 = MEMORY[0x277D83B88];
      *(inited + 360) = MEMORY[0x277D83B88];
      *(inited + 336) = 0;
      *(inited + 368) = sub_22EFB648C();
      *(inited + 376) = v30;
      *(inited + 408) = v29;
      *(inited + 384) = 0;
      *(inited + 416) = sub_22EFB648C();
      *(inited + 424) = v31;
      *(inited + 456) = v29;
      *(inited + 432) = 2000;

      v7 = sub_22EFAAE54(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E5A8, &qword_22EFBC3C0);
      swift_arrayDestroy();
    }

    return v7;
  }

  if (__OFSUB__(HIDWORD(result), result))
  {
    goto LABEL_30;
  }

  if (HIDWORD(result) - result == 5)
  {
    goto LABEL_8;
  }

LABEL_12:
  if (qword_27DA9E388 != -1)
  {
    swift_once();
  }

  v32 = sub_22EFB626C();
  __swift_project_value_buffer(v32, qword_27DA9E650);
  sub_22EF70B68(v7, a2);
  v33 = sub_22EFB624C();
  v34 = sub_22EFB65CC();
  if (!os_log_type_enabled(v33, v34))
  {
    sub_22EF708C8(v7, a2);
LABEL_27:

    type metadata accessor for ATLError(0);
    sub_22EF7BF94();
    swift_allocError();
    *v39 = 3;
    swift_willThrow();
    return v7;
  }

  result = swift_slowAlloc();
  *result = 134218240;
  if (v8 > 1)
  {
    if (v8 != 2)
    {
      v35 = 0;
      goto LABEL_26;
    }

    v37 = *(v7 + 16);
    v36 = *(v7 + 24);
    v11 = __OFSUB__(v36, v37);
    v35 = v36 - v37;
    if (!v11)
    {
      goto LABEL_26;
    }

    __break(1u);
  }

  else if (!v8)
  {
    v35 = BYTE6(a2);
LABEL_26:
    *(result + 4) = v35;
    v38 = result;
    sub_22EF708C8(v7, a2);
    *(v38 + 12) = 256;
    *(v38 + 14) = 5;
    _os_log_impl(&dword_22EEF5000, v33, v34, "Start event length %ld (exp) %hhu", v38, 0xFu);
    MEMORY[0x2318FC200](v38, -1, -1);
    goto LABEL_27;
  }

  LODWORD(v35) = HIDWORD(v7) - v7;
  if (!__OFSUB__(HIDWORD(v7), v7))
  {
    v35 = v35;
    goto LABEL_26;
  }

LABEL_31:
  __break(1u);
  return result;
}

unint64_t sub_22EF80268(unint64_t result)
{
  if (result >> 61 != 3)
  {
    sub_22EF82314();
    swift_allocError();
    *(v13 + 8) = 0;
    *(v13 + 16) = 0;
    *v13 = 4;
    *(v13 + 24) = 3;
    swift_willThrow();
    goto LABEL_14;
  }

  v3 = *((result & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  if (!*(v3 + 16))
  {
    __break(1u);
    goto LABEL_19;
  }

  v2 = v1;

  result = sub_22EFA9408(0x61655273656C6966, 0xE900000000000064);
  if ((v4 & 1) == 0)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v5 = *(*(v3 + 56) + 8 * result);
  if (v5 >> 61 != 1)
  {

    sub_22EF82314();
    swift_allocError();
    *(v14 + 8) = 0;
    *(v14 + 16) = 0;
    *v14 = 4;
    *(v14 + 24) = 3;
    swift_willThrow();
    goto LABEL_13;
  }

  if (!*(v3 + 16))
  {
    goto LABEL_20;
  }

  v7 = *((v5 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  v6 = *((v5 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
  sub_22EF70B68(v7, v6);
  result = sub_22EFA9408(0x69725773656C6966, 0xEC0000006E657474);
  if (v8)
  {
    v9 = *(*(v3 + 56) + 8 * result);
    v10 = v9 & 0x1FFFFFFFFFFFFFFFLL;

    if (v9 >> 61 == 1)
    {
      v11 = *((v9 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v12 = *(v10 + 24);
      sub_22EF70B68(*(v10 + 16), v12);

      sub_22EF70B68(v7, v6);
      v2 = sub_22EF7F734(v7, v6, 0, 0);
      sub_22EF708C8(v7, v6);
      if (!v1)
      {
        v16 = sub_22EF7F734(v11, v12, 0, 0);
        sub_22EF708C8(v11, v12);
        sub_22EF708C8(v7, v6);

        return v2 | (v16 << 16);
      }

      sub_22EF708C8(v7, v6);
      sub_22EF708C8(v11, v12);
LABEL_14:

      return v2;
    }

    sub_22EF82314();
    swift_allocError();
    *(v15 + 8) = 0;
    *(v15 + 16) = 0;
    *v15 = 4;
    *(v15 + 24) = 3;
    swift_willThrow();
    sub_22EF708C8(v7, v6);
LABEL_13:

    goto LABEL_14;
  }

LABEL_21:
  __break(1u);
  return result;
}

unint64_t sub_22EF80528(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = a2;
  v123 = *MEMORY[0x277D85DE8];
  v8 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v8 != 2)
    {
      goto LABEL_12;
    }

    v10 = *(a1 + 16);
    v9 = *(a1 + 24);
    v11 = __OFSUB__(v9, v10);
    v12 = v9 - v10;
    if (!v11)
    {
      if (v12 == 19)
      {
        goto LABEL_8;
      }

      goto LABEL_12;
    }

    __break(1u);
LABEL_105:
    __break(1u);
LABEL_106:
    __break(1u);
    goto LABEL_107;
  }

  if (v8)
  {
    if (!__OFSUB__(HIDWORD(a1), a1))
    {
      if (HIDWORD(a1) - a1 == 19)
      {
        goto LABEL_8;
      }

LABEL_12:
      if (qword_27DA9E388 != -1)
      {
        swift_once();
      }

      v16 = sub_22EFB626C();
      __swift_project_value_buffer(v16, qword_27DA9E650);
      sub_22EF70B68(a1, v6);
      v17 = sub_22EFB624C();
      v18 = sub_22EFB65CC();
      if (!os_log_type_enabled(v17, v18))
      {
        sub_22EF708C8(a1, v6);
LABEL_30:

        type metadata accessor for ATLError(0);
        v6 = v32;
        sub_22EF7BF94();
        swift_allocError();
        *v33 = 3;
        swift_willThrow();
        return v6;
      }

      v13 = swift_slowAlloc();
      *v13 = 134218240;
      if (v8 <= 1)
      {
        if (!v8)
        {
          v19 = BYTE6(v6);
LABEL_29:
          *(v13 + 4) = v19;
          v31 = v13;
          sub_22EF708C8(a1, v6);
          *(v31 + 12) = 256;
          *(v31 + 14) = 19;
          _os_log_impl(&dword_22EEF5000, v17, v18, "End event length %ld (exp) %hhu", v31, 0xFu);
          MEMORY[0x2318FC200](v31, -1, -1);
          goto LABEL_30;
        }

        LODWORD(v19) = HIDWORD(a1) - a1;
        if (!__OFSUB__(HIDWORD(a1), a1))
        {
          v19 = v19;
          goto LABEL_29;
        }

        goto LABEL_106;
      }

      if (v8 != 2)
      {
        v19 = 0;
        goto LABEL_29;
      }

      v21 = *(a1 + 16);
      v20 = *(a1 + 24);
      v11 = __OFSUB__(v20, v21);
      v19 = v20 - v21;
      if (!v11)
      {
        goto LABEL_29;
      }

      __break(1u);
      goto LABEL_23;
    }

    goto LABEL_105;
  }

  if (BYTE6(a2) != 19)
  {
    goto LABEL_12;
  }

LABEL_8:
  v106 = a3;
  v108 = a5;
  v109 = a4;
  sub_22EF70B68(a1, a2);
  LODWORD(v13) = sub_22EF7F734(a1, v6, 2, 0);
  v8 = v5;
  if (v5)
  {
    v14 = a1;
    v15 = v6;
LABEL_98:
    sub_22EF708C8(v14, v15);
    return v6;
  }

LABEL_23:
  v105 = v13;
  sub_22EF708C8(a1, v6);
  v22 = sub_22EFB618C();
  v23 = MEMORY[0x277CC9318];
  v24 = MEMORY[0x277CC9300];
  v115 = MEMORY[0x277CC9318];
  v116 = MEMORY[0x277CC9300];
  v113 = v22;
  v114 = v25;
  v26 = __swift_project_boxed_opaque_existential_1(&v113, MEMORY[0x277CC9318]);
  v27 = *v26;
  v28 = v26[1];
  v29 = v28 >> 62;
  if ((v28 >> 62) > 1)
  {
    if (v29 != 2)
    {
      memset(v110, 0, 14);
      v30 = v110;
      goto LABEL_51;
    }

    v35 = *(v27 + 16);
    v34 = *(v27 + 24);
    v36 = sub_22EFB603C();
    if (v36)
    {
      v37 = sub_22EFB605C();
      if (__OFSUB__(v35, v37))
      {
LABEL_111:
        __break(1u);
        goto LABEL_112;
      }

      v36 += v35 - v37;
    }

    v11 = __OFSUB__(v34, v35);
    v38 = v34 - v35;
    if (v11)
    {
      goto LABEL_108;
    }

    v39 = sub_22EFB604C();
    if (v39 >= v38)
    {
      v40 = v38;
    }

    else
    {
      v40 = v39;
    }
  }

  else
  {
    if (!v29)
    {
      v110[0] = *v26;
      LOWORD(v110[1]) = v28;
      BYTE2(v110[1]) = BYTE2(v28);
      BYTE3(v110[1]) = BYTE3(v28);
      BYTE4(v110[1]) = BYTE4(v28);
      BYTE5(v110[1]) = BYTE5(v28);
      v30 = v110 + BYTE6(v28);
LABEL_51:
      sub_22EF72654(v110, v30, &v111);
      goto LABEL_52;
    }

    v41 = v27;
    v42 = v27 >> 32;
    v43 = v42 - v41;
    if (v42 < v41)
    {
LABEL_107:
      __break(1u);
LABEL_108:
      __break(1u);
      goto LABEL_109;
    }

    v36 = sub_22EFB603C();
    if (v36)
    {
      v44 = sub_22EFB605C();
      if (__OFSUB__(v41, v44))
      {
LABEL_113:
        __break(1u);
LABEL_114:
        __break(1u);
      }

      v36 += v41 - v44;
    }

    v45 = sub_22EFB604C();
    if (v45 >= v43)
    {
      v40 = v43;
    }

    else
    {
      v40 = v45;
    }
  }

  v46 = &v36[v40];
  if (v36)
  {
    v47 = v46;
  }

  else
  {
    v47 = 0;
  }

  sub_22EF72654(v36, v47, &v111);
  v24 = MEMORY[0x277CC9300];
LABEL_52:
  v49 = v111;
  v48 = v112;
  sub_22EF70B68(v111, v112);
  __swift_destroy_boxed_opaque_existential_0Tm(&v113);
  v50 = sub_22EFB618C();
  v115 = v23;
  v116 = v24;
  v113 = v50;
  v114 = v51;
  v52 = __swift_project_boxed_opaque_existential_1(&v113, v23);
  v53 = *v52;
  v54 = v52[1];
  v55 = v54 >> 62;
  if ((v54 >> 62) > 1)
  {
    if (v55 != 2)
    {
      memset(v110, 0, 14);
      v56 = v110;
      goto LABEL_80;
    }

    v103 = v49;
    v57 = v48;
    v59 = *(v53 + 16);
    v58 = *(v53 + 24);
    v60 = sub_22EFB603C();
    if (v60)
    {
      v61 = sub_22EFB605C();
      if (__OFSUB__(v59, v61))
      {
LABEL_112:
        __break(1u);
        goto LABEL_113;
      }

      v60 += v59 - v61;
    }

    v11 = __OFSUB__(v58, v59);
    v62 = v58 - v59;
    if (v11)
    {
      goto LABEL_110;
    }

    v63 = sub_22EFB604C();
    if (v63 >= v62)
    {
      v64 = v62;
    }

    else
    {
      v64 = v63;
    }

    v65 = &v60[v64];
    if (v60)
    {
      v66 = v65;
    }

    else
    {
      v66 = 0;
    }

    sub_22EF72654(v60, v66, &v111);
    v48 = v57;
LABEL_78:
    v49 = v103;
    goto LABEL_81;
  }

  if (v55)
  {
    v103 = v49;
    v67 = v48;
    v68 = v53;
    v69 = v53 >> 32;
    v70 = v69 - v68;
    if (v69 < v68)
    {
LABEL_109:
      __break(1u);
LABEL_110:
      __break(1u);
      goto LABEL_111;
    }

    v71 = sub_22EFB603C();
    if (v71)
    {
      v72 = sub_22EFB605C();
      if (__OFSUB__(v68, v72))
      {
        goto LABEL_114;
      }

      v71 += v68 - v72;
    }

    v48 = v67;
    v73 = sub_22EFB604C();
    if (v73 >= v70)
    {
      v74 = v70;
    }

    else
    {
      v74 = v73;
    }

    v75 = &v71[v74];
    if (v71)
    {
      v76 = v75;
    }

    else
    {
      v76 = 0;
    }

    sub_22EF72654(v71, v76, &v111);
    goto LABEL_78;
  }

  v110[0] = *v52;
  LOWORD(v110[1]) = v54;
  BYTE2(v110[1]) = BYTE2(v54);
  BYTE3(v110[1]) = BYTE3(v54);
  BYTE4(v110[1]) = BYTE4(v54);
  BYTE5(v110[1]) = BYTE5(v54);
  v56 = v110 + BYTE6(v54);
LABEL_80:
  sub_22EF72654(v110, v56, &v111);
LABEL_81:
  v78 = v111;
  v77 = v112;
  __swift_destroy_boxed_opaque_existential_0Tm(&v113);
  v117 = 225;
  v118 = 0;
  v119 = &unk_2843B68F8;
  v120 = 1;
  v121 = 64;
  v122 = MEMORY[0x277D84F90];
  v113 = v78;
  v114 = v77;
  sub_22EF70B68(v78, v77);
  sub_22EF70B68(v78, v77);
  v79 = sub_22EFACFBC(&v113, &v117);
  if (v8)
  {
    sub_22EF708C8(v49, v48);
    sub_22EF708C8(v78, v77);
    sub_22EF708C8(v49, v48);
    sub_22EF708C8(v78, v77);
    v14 = v113;
    v15 = v114;
    goto LABEL_98;
  }

  v80 = v79;
  sub_22EF708C8(v113, v114);
  v81 = sub_22EF80268(v80);
  sub_22EF708C8(v78, v77);
  sub_22EF70B68(a1, v6);
  v82 = sub_22EF7E958(a1, v6, 18);
  v104 = v82;
  if ((v82 & 8) == 0)
  {
    v83 = (v82 & 4) == 0;
    if (v105 == 36864)
    {
      goto LABEL_96;
    }

LABEL_88:
    v84 = 1;
    v85 = sub_22EFB619C();
    sub_22EF708C8(v49, v48);
    if (v83 && v85 == 32)
    {
      v84 = (~v105 & 0x63C0) != 0 && v105 != 36864;
    }

    goto LABEL_97;
  }

  if (v105 != 36864)
  {
    v83 = 0;
    goto LABEL_88;
  }

LABEL_96:
  sub_22EF708C8(v49, v48);
  v84 = 0;
LABEL_97:
  sub_22EF70B68(v49, v48);
  v87 = sub_22EF7FAA8(v49, v48, 0, 0);
  sub_22EF708C8(v49, v48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E5A0, &qword_22EFBC3B8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22EFBC100;
  *(inited + 32) = sub_22EFB648C();
  *(inited + 40) = v90;
  v91 = sub_22EFB648C();
  v92 = MEMORY[0x277D837D0];
  *(inited + 48) = v91;
  *(inited + 56) = v93;
  *(inited + 72) = v92;
  *(inited + 80) = 0xD000000000000010;
  *(inited + 120) = v92;
  *(inited + 88) = 0x800000022EFC65A0;
  *(inited + 96) = v106;
  *(inited + 104) = v109;
  *(inited + 128) = sub_22EFB648C();
  *(inited + 136) = v94;
  v107 = v48;
  v95 = MEMORY[0x277D84B78];
  *(inited + 144) = v108;
  *(inited + 168) = v95;
  *(inited + 176) = 0x737574617473;
  *(inited + 184) = 0xE600000000000000;
  v96 = MEMORY[0x277D84C58];
  *(inited + 192) = v105;
  *(inited + 216) = v96;
  *(inited + 224) = 0x646E616D6D6F63;
  *(inited + 232) = 0xE700000000000000;
  *(inited + 264) = MEMORY[0x277D84CC0];
  *(inited + 240) = v87;
  *(inited + 272) = sub_22EFB648C();
  *(inited + 280) = v97;
  *(inited + 312) = v96;
  *(inited + 288) = v81;
  *(inited + 320) = sub_22EFB648C();
  *(inited + 328) = v98;
  *(inited + 336) = HIWORD(v81);
  *(inited + 360) = v96;
  *(inited + 368) = 0xD000000000000012;
  *(inited + 376) = 0x800000022EFC67E0;
  *(inited + 384) = v104;
  *(inited + 408) = MEMORY[0x277D84B78];
  *(inited + 416) = 0x726F727245646964;
  *(inited + 424) = 0xE800000000000000;
  v99 = MEMORY[0x277D839B0];
  *(inited + 432) = v84;
  *(inited + 456) = v99;
  *(inited + 464) = 0x746C75736572;
  *(inited + 472) = 0xE600000000000000;
  v100 = objc_allocWithZone(MEMORY[0x277CCABB0]);

  if (v84)
  {
    v101 = 0;
  }

  else
  {
    v101 = 64;
  }

  v102 = [v100 initWithUnsignedShort_];
  *(inited + 504) = sub_22EF70EBC(0, &qword_27DA9E3F8, 0x277CCABB0);
  *(inited + 480) = v102;
  v6 = sub_22EFAAE54(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E5A8, &qword_22EFBC3C0);
  swift_arrayDestroy();
  sub_22EF708C8(v78, v77);
  sub_22EF708C8(v49, v107);
  return v6;
}

uint64_t sub_22EF81010(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = a2;
  v7 = result;
  v8 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v8 != 2)
    {
      goto LABEL_12;
    }

    v10 = *(result + 16);
    v9 = *(result + 24);
    v11 = __OFSUB__(v9, v10);
    v12 = v9 - v10;
    if (!v11)
    {
      if (v12 == 6)
      {
        goto LABEL_8;
      }

      goto LABEL_12;
    }

    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (!v8)
  {
    if (BYTE6(a2) != 6)
    {
      goto LABEL_12;
    }

LABEL_8:
    sub_22EF70B68(result, a2);
    v16 = sub_22EF7E958(v7, v6, 2);
    if (!v5)
    {
      v17 = v16;
      sub_22EF70B68(v7, v6);
      v18 = sub_22EF7F734(v7, v6, 3, 0);
      sub_22EF708C8(v7, v6);
      sub_22EF70B68(v7, v6);
      v19 = sub_22EF7E958(v7, v6, 5);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E5A0, &qword_22EFBC3B8);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_22EFBCD80;
      *(inited + 32) = sub_22EFB648C();
      *(inited + 40) = v21;
      v22 = sub_22EFB648C();
      v23 = MEMORY[0x277D837D0];
      *(inited + 48) = v22;
      *(inited + 56) = v24;
      *(inited + 72) = v23;
      *(inited + 80) = 0xD000000000000010;
      *(inited + 120) = v23;
      *(inited + 88) = 0x800000022EFC65A0;
      *(inited + 96) = a3;
      *(inited + 104) = a4;
      *(inited + 128) = sub_22EFB648C();
      *(inited + 136) = v25;
      v26 = MEMORY[0x277D84B78];
      *(inited + 168) = MEMORY[0x277D84B78];
      *(inited + 144) = a5;
      *(inited + 176) = sub_22EFB648C();
      *(inited + 184) = v27;
      *(inited + 216) = v26;
      *(inited + 192) = v17;
      *(inited + 224) = sub_22EFB648C();
      *(inited + 232) = v28;
      *(inited + 264) = MEMORY[0x277D84C58];
      *(inited + 240) = v18;
      *(inited + 272) = sub_22EFB648C();
      *(inited + 280) = v29;
      *(inited + 312) = v26;
      *(inited + 288) = v19;

      v6 = sub_22EFAAE54(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E5A8, &qword_22EFBC3C0);
      swift_arrayDestroy();
    }

    return v6;
  }

  if (__OFSUB__(HIDWORD(result), result))
  {
    goto LABEL_30;
  }

  if (HIDWORD(result) - result == 6)
  {
    goto LABEL_8;
  }

LABEL_12:
  if (qword_27DA9E388 != -1)
  {
    swift_once();
  }

  v30 = sub_22EFB626C();
  __swift_project_value_buffer(v30, qword_27DA9E650);
  sub_22EF70B68(v7, v6);
  v31 = sub_22EFB624C();
  v32 = sub_22EFB65CC();
  if (!os_log_type_enabled(v31, v32))
  {
    sub_22EF708C8(v7, v6);
LABEL_27:

    type metadata accessor for ATLError(0);
    v6 = v37;
    sub_22EF7BF94();
    swift_allocError();
    *v38 = 3;
    swift_willThrow();
    return v6;
  }

  result = swift_slowAlloc();
  *result = 134218240;
  if (v8 > 1)
  {
    if (v8 != 2)
    {
      v33 = 0;
      goto LABEL_26;
    }

    v35 = *(v7 + 16);
    v34 = *(v7 + 24);
    v11 = __OFSUB__(v34, v35);
    v33 = v34 - v35;
    if (!v11)
    {
      goto LABEL_26;
    }

    __break(1u);
  }

  else if (!v8)
  {
    v33 = BYTE6(v6);
LABEL_26:
    *(result + 4) = v33;
    v36 = result;
    sub_22EF708C8(v7, v6);
    *(v36 + 12) = 256;
    *(v36 + 14) = 6;
    _os_log_impl(&dword_22EEF5000, v31, v32, "Start event length %ld (exp) %hhu", v36, 0xFu);
    MEMORY[0x2318FC200](v36, -1, -1);
    goto LABEL_27;
  }

  LODWORD(v33) = HIDWORD(v7) - v7;
  if (!__OFSUB__(HIDWORD(v7), v7))
  {
    v33 = v33;
    goto LABEL_26;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_22EF8141C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v7 != 2)
    {
      goto LABEL_8;
    }

    v9 = *(a1 + 16);
    v8 = *(a1 + 24);
    v10 = __OFSUB__(v8, v9);
    v11 = v8 - v9;
    if (!v10)
    {
      if (v11 >= 2)
      {
        goto LABEL_16;
      }

      goto LABEL_8;
    }

    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    swift_once();
LABEL_25:
    v24 = sub_22EFB626C();
    __swift_project_value_buffer(v24, qword_27DA9E650);
    v13 = sub_22EFB624C();
    v14 = sub_22EFB65CC();
    if (!os_log_type_enabled(v13, v14))
    {
      goto LABEL_13;
    }

    v15 = swift_slowAlloc();
    *v15 = 0;
    v16 = "Invalid hci event version";
LABEL_12:
    _os_log_impl(&dword_22EEF5000, v13, v14, v16, v15, 2u);
    MEMORY[0x2318FC200](v15, -1, -1);
LABEL_13:

    type metadata accessor for ATLError(0);
    sub_22EF7BF94();
    swift_allocError();
    *v17 = 3;
    return swift_willThrow();
  }

  if (v7)
  {
    if (!__OFSUB__(HIDWORD(a1), a1))
    {
      if (HIDWORD(a1) - a1 >= 2)
      {
        goto LABEL_16;
      }

LABEL_8:
      if (qword_27DA9E388 != -1)
      {
        swift_once();
      }

      v12 = sub_22EFB626C();
      __swift_project_value_buffer(v12, qword_27DA9E650);
      v13 = sub_22EFB624C();
      v14 = sub_22EFB65CC();
      if (!os_log_type_enabled(v13, v14))
      {
        goto LABEL_13;
      }

      v15 = swift_slowAlloc();
      *v15 = 0;
      v16 = "Invalid event data";
      goto LABEL_12;
    }

    goto LABEL_39;
  }

  if (BYTE6(a2) < 2uLL)
  {
    goto LABEL_8;
  }

LABEL_16:
  sub_22EF70B68(a1, a2);
  result = sub_22EF7E958(a1, a2, 0);
  if (!v4)
  {
    v21 = result;
    sub_22EF70B68(a1, a2);
    v22 = sub_22EF7E958(a1, a2, 1);
    if (v22 == 8)
    {
      if (v21 > 2u)
      {
        if (v21 == 3)
        {
          v23 = sub_22EF81010(a1, a2, a3, a4, 8);
          goto LABEL_37;
        }

        if (v21 == 18)
        {
          return sub_22EFAB468(MEMORY[0x277D84F90]);
        }
      }

      else
      {
        if (v21 == 1)
        {
          v23 = sub_22EF7FE18(a1, a2, a3, a4, 8);
          goto LABEL_37;
        }

        if (v21 == 2)
        {
          v23 = sub_22EF80528(a1, a2, a3, a4, 8);
LABEL_37:
          v33 = sub_22EF7ECD0(v23);

          return v33;
        }
      }

      if (qword_27DA9E388 != -1)
      {
        swift_once();
      }

      v25 = sub_22EFB626C();
      __swift_project_value_buffer(v25, qword_27DA9E650);
      sub_22EF70B68(a1, a2);
      v26 = sub_22EFB624C();
      v27 = sub_22EFB65AC();
      sub_22EF708C8(a1, a2);
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v34 = v29;
        *v28 = 16777730;
        *(v28 + 4) = v21;
        *(v28 + 5) = 2080;
        v30 = sub_22EFB613C();
        v32 = sub_22EF9447C(v30, v31, &v34);

        *(v28 + 7) = v32;
        _os_log_impl(&dword_22EEF5000, v26, v27, "Unkown event with event type %hhu and contents %s", v28, 0xFu);
        __swift_destroy_boxed_opaque_existential_0Tm(v29);
        MEMORY[0x2318FC200](v29, -1, -1);
        MEMORY[0x2318FC200](v28, -1, -1);
      }

      return sub_22EFAB468(MEMORY[0x277D84F90]);
    }

    if (qword_27DA9E388 == -1)
    {
      goto LABEL_25;
    }

    goto LABEL_40;
  }

  return result;
}

void *sub_22EF8189C(void *a1, uint64_t a2, unint64_t a3)
{
  v83 = *MEMORY[0x277D85DE8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E5A0, &qword_22EFBC3B8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22EFBBCB0;
  *(inited + 32) = sub_22EFB648C();
  *(inited + 40) = v7;
  *(inited + 72) = MEMORY[0x277D839B0];
  *(inited + 48) = 0;
  *(inited + 80) = sub_22EFB648C();
  *(inited + 88) = v8;
  *(inited + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E668, &unk_22EFBCDC0);
  *(inited + 96) = MEMORY[0x277D84F90];
  v9 = sub_22EFAAE54(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E5A8, &qword_22EFBC3C0);
  swift_arrayDestroy();
  v77 = v9;

  v10 = sub_22EF7E630(a2, a3);
  if (v11 >> 60 == 15)
  {
    __break(1u);
  }

  v12 = v10;
  v13 = v11;
  v14 = sub_22EFB61BC();
  sub_22EF708B4(v12, v13);
  v15 = SelectByNameCmd(v14);

  v16 = sub_22EFB61DC();
  v18 = v17;

  v19 = sub_22EFB61BC();
  *&v80[0] = 0;
  v20 = [a1 transceiveAndCheckSW:v19 error:v80];

  v21 = *&v80[0];
  if (!v20)
  {
    v65 = v21;
    v66 = sub_22EFB60EC();

    swift_willThrow();
    if (qword_27DA9E388 != -1)
    {
      swift_once();
    }

    v67 = sub_22EFB626C();
    __swift_project_value_buffer(v67, qword_27DA9E650);

    v68 = sub_22EFB624C();
    v69 = sub_22EFB65CC();

    if (os_log_type_enabled(v68, v69))
    {
      v70 = v16;
      v71 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      *&v80[0] = v72;
      *v71 = 136315138;
      *(v71 + 4) = sub_22EF9447C(a2, a3, v80);
      _os_log_impl(&dword_22EEF5000, v68, v69, "Could not SELECT %s while getting applet state and history", v71, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v72);
      MEMORY[0x2318FC200](v72, -1, -1);
      v73 = v71;
      v16 = v70;
      MEMORY[0x2318FC200](v73, -1, -1);
    }

    v64 = sub_22EFAB468(MEMORY[0x277D84F90]);
    sub_22EF708C8(v16, v18);

    return v64;
  }

  v75 = v16;
  v22 = sub_22EFB61DC();
  v24 = v23;

  sub_22EF708C8(v22, v24);
  v81 = sub_22EFAB164(&unk_2843B6998);
  v82 = v25;
  sub_22EFB619C();
  sub_22EFB61AC();
  v26 = sub_22EFB61BC();
  if (qword_27DA9E380 != -1)
  {
    swift_once();
  }

  sub_22EF70EBC(0, &qword_27DA9E3F8, 0x277CCABB0);
  v27 = sub_22EFB653C();
  *&v80[0] = 0;
  v28 = [a1 transceiveAndCheckSW:v26 inArray:v27 keepingSW:1 error:v80];

  v29 = *&v80[0];
  if (!v28)
  {
    v64 = v29;
    sub_22EFB60EC();

    swift_willThrow();
    sub_22EF708C8(v75, v18);
LABEL_24:
    sub_22EF708C8(v81, v82);

    return v64;
  }

  v30 = sub_22EFB61DC();
  v32 = v31;

  sub_22EFB619C();
  sub_22EFB61AC();
  v33 = sub_22EFB61BC();
  v34 = sub_22EFB653C();
  *&v80[0] = 0;
  v35 = [a1 transceiveAndCheckSW:v33 inArray:v34 keepingSW:1 error:v80];

  v36 = *&v80[0];
  if (!v35)
  {
    v64 = v36;
    sub_22EFB60EC();

    swift_willThrow();
    sub_22EF708C8(v75, v18);
    sub_22EF708C8(v30, v32);
    goto LABEL_24;
  }

  v37 = sub_22EFB61DC();
  v39 = v38;

  v40 = sub_22EFB61BC();
  SW = GetSW(v40);

  v42 = v32;
  if (SW == 25536)
  {
    v79 = MEMORY[0x277D839B0];
    LOBYTE(v78) = 1;
    v43 = sub_22EFB648C();
    sub_22EF7F5E8(&v78, v43, v44, v80);

    sub_22EF731F0(v80);
    v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E400, &unk_22EFBD180);
    *&v78 = &unk_2843B69C0;
    v45 = sub_22EFB648C();
    sub_22EF7F5E8(&v78, v45, v46, v80);

    sub_22EF731F0(v80);
  }

  v47 = sub_22EFB61BC();
  v48 = GetSW(v47);

  if (v48 != 25536)
  {
    goto LABEL_16;
  }

  v79 = MEMORY[0x277D839B0];
  LOBYTE(v78) = 1;
  v49 = sub_22EFB648C();
  sub_22EF7F5E8(&v78, v49, v50, v80);

  sub_22EF731F0(v80);
  v51 = sub_22EFB648C();
  v53 = v52;
  v54 = v77;
  if (*(v77 + 16))
  {
    v55 = sub_22EFA9408(v51, v52);
    v57 = v56;

    if (v57)
    {
      sub_22EF76370(*(v77 + 56) + 32 * v55, &v78);
      sub_22EF76360(&v78, v80);
      v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E400, &unk_22EFBD180);
      swift_dynamicCast();
      v53 = v76;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
LABEL_13:
        v59 = *(v53 + 2);
        v58 = *(v53 + 3);
        if (v59 >= v58 >> 1)
        {
          v53 = sub_22EF7DED0((v58 > 1), v59 + 1, 1, v53);
        }

        *(v53 + 2) = v59 + 1;
        v60 = &v53[16 * v59];
        *(v60 + 4) = 0xD00000000000001ELL;
        *(v60 + 5) = 0x800000022EFC6760;
        v79 = v54;
        *&v78 = v53;
        v61 = sub_22EFB648C();
        v63 = v62;

        sub_22EF7F5E8(&v78, v61, v63, v80);

        sub_22EF731F0(v80);

        v42 = v32;
LABEL_16:
        v64 = sub_22EF7ECD0(v77);
        sub_22EF708C8(v75, v18);
        sub_22EF708C8(v37, v39);
        sub_22EF708C8(v30, v42);
        sub_22EF708C8(v81, v82);

        return v64;
      }
    }

    else
    {
      __break(1u);
    }

    v53 = sub_22EF7DED0(0, *(v53 + 2) + 1, 1, v53);
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

unint64_t sub_22EF82140()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E5B0, &qword_22EFBC3C8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22EFBBCB0;
  sub_22EFB648C();
  sub_22EFB668C();
  *(inited + 96) = MEMORY[0x277D839B0];
  *(inited + 72) = 1;
  sub_22EFB648C();
  sub_22EFB668C();
  *(inited + 168) = MEMORY[0x277D83B88];
  *(inited + 144) = 2000;
  v1 = sub_22EFAB468(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E5B8, &unk_22EFBC3D0);
  swift_arrayDestroy();
  return v1;
}

unint64_t sub_22EF8225C()
{
  result = qword_27DA9E680;
  if (!qword_27DA9E680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA9E680);
  }

  return result;
}

unint64_t sub_22EF822B0()
{
  result = qword_27DA9E688;
  if (!qword_27DA9E688)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DA9E678, &unk_22EFBCDE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA9E688);
  }

  return result;
}

unint64_t sub_22EF82314()
{
  result = qword_27DA9E690;
  if (!qword_27DA9E690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA9E690);
  }

  return result;
}

uint64_t sub_22EF82368(uint64_t a1, uint64_t a2)
{
  v10[0] = a1;
  v10[1] = a2;

  v5 = [v2 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v5)
  {
    sub_22EFB663C();
    swift_unknownObjectRelease();
    sub_22EF76370(v11, v10);
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_0Tm(v11);
      return v9;
    }

    else
    {
      sub_22EF70EBC(0, &qword_27DA9E448, 0x277CCA9B8);
      v10[0] = 0;
      v10[1] = 0xE000000000000000;
      sub_22EFB66DC();

      strcpy(v10, "Value for key ");
      HIBYTE(v10[1]) = -18;
      MEMORY[0x2318FB260](a1, a2);
      MEMORY[0x2318FB260](0x6574636570786520, 0xEF20657079742064);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E700, &unk_22EFBD210);
      v7 = sub_22EFB695C();
      MEMORY[0x2318FB260](v7);

      MEMORY[0x2318FB260](0x746F672074756220, 0xE900000000000020);
      __swift_project_boxed_opaque_existential_1(v11, v11[3]);
      swift_getDynamicType();
      v8 = sub_22EFB695C();
      MEMORY[0x2318FB260](v8);

      sub_22EF74470(v10[0], v10[1], 8, 0);
      swift_willThrow();
      return __swift_destroy_boxed_opaque_existential_0Tm(v11);
    }
  }

  else
  {
    sub_22EF70EBC(0, &qword_27DA9E448, 0x277CCA9B8);
    sub_22EFB66DC();

    MEMORY[0x2318FB260](a1, a2);
    sub_22EF74470(0xD000000000000016, 0x800000022EFC6C70, 8, 0);
    return swift_willThrow();
  }
}

uint64_t sub_22EF8261C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X8>)
{
  v4 = v3;
  v13[0] = a1;
  v13[1] = a2;

  v8 = [v4 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v8)
  {
    sub_22EFB663C();
    swift_unknownObjectRelease();
    sub_22EF76370(v14, v13);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E6F0, &qword_22EFBD200);
    if (swift_dynamicCast())
    {
      result = __swift_destroy_boxed_opaque_existential_0Tm(v14);
      *a3 = v12;
    }

    else
    {
      sub_22EFA33C4(0, 0xB000000000000000);
      sub_22EF70EBC(0, &qword_27DA9E448, 0x277CCA9B8);
      v13[0] = 0;
      v13[1] = 0xE000000000000000;
      sub_22EFB66DC();

      strcpy(v13, "Value for key ");
      HIBYTE(v13[1]) = -18;
      MEMORY[0x2318FB260](a1, a2);
      MEMORY[0x2318FB260](0x6574636570786520, 0xEF20657079742064);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E6F8, &qword_22EFBD208);
      v10 = sub_22EFB695C();
      MEMORY[0x2318FB260](v10);

      MEMORY[0x2318FB260](0x746F672074756220, 0xE900000000000020);
      __swift_project_boxed_opaque_existential_1(v14, v14[3]);
      swift_getDynamicType();
      v11 = sub_22EFB695C();
      MEMORY[0x2318FB260](v11);

      sub_22EF74470(v13[0], v13[1], 8, 0);
      swift_willThrow();
      return __swift_destroy_boxed_opaque_existential_0Tm(v14);
    }
  }

  else
  {
    sub_22EF70EBC(0, &qword_27DA9E448, 0x277CCA9B8);
    sub_22EFB66DC();

    MEMORY[0x2318FB260](a1, a2);
    sub_22EF74470(0xD000000000000016, 0x800000022EFC6C70, 8, 0);
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_22EF82904(uint64_t a1, uint64_t a2)
{
  v9[0] = a1;
  v9[1] = a2;

  v5 = [v2 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v5)
  {
    sub_22EFB663C();
    swift_unknownObjectRelease();
    sub_22EF76370(v10, v9);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E6E0, &qword_22EFBD1F0);
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_0Tm(v10);
      return v10[5];
    }

    else
    {
      sub_22EF70EBC(0, &qword_27DA9E448, 0x277CCA9B8);
      v9[0] = 0;
      v9[1] = 0xE000000000000000;
      sub_22EFB66DC();

      strcpy(v9, "Value for key ");
      HIBYTE(v9[1]) = -18;
      MEMORY[0x2318FB260](a1, a2);
      MEMORY[0x2318FB260](0x6574636570786520, 0xEF20657079742064);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E6E8, &qword_22EFBD1F8);
      v7 = sub_22EFB695C();
      MEMORY[0x2318FB260](v7);

      MEMORY[0x2318FB260](0x746F672074756220, 0xE900000000000020);
      __swift_project_boxed_opaque_existential_1(v10, v10[3]);
      swift_getDynamicType();
      v8 = sub_22EFB695C();
      MEMORY[0x2318FB260](v8);

      sub_22EF74470(v9[0], v9[1], 8, 0);
      swift_willThrow();
      return __swift_destroy_boxed_opaque_existential_0Tm(v10);
    }
  }

  else
  {
    sub_22EF70EBC(0, &qword_27DA9E448, 0x277CCA9B8);
    sub_22EFB66DC();

    MEMORY[0x2318FB260](a1, a2);
    sub_22EF74470(0xD000000000000016, 0x800000022EFC6C70, 8, 0);
    return swift_willThrow();
  }
}

uint64_t sub_22EF82BC8(uint64_t a1, uint64_t a2)
{
  v10[0] = a1;
  v10[1] = a2;

  v5 = [v2 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v5)
  {
    sub_22EFB663C();
    swift_unknownObjectRelease();
    sub_22EF76370(v11, v10);
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_0Tm(v11);
      return v9;
    }

    else
    {
      sub_22EF70EBC(0, &qword_27DA9E448, 0x277CCA9B8);
      v10[0] = 0;
      v10[1] = 0xE000000000000000;
      sub_22EFB66DC();

      strcpy(v10, "Value for key ");
      HIBYTE(v10[1]) = -18;
      MEMORY[0x2318FB260](a1, a2);
      MEMORY[0x2318FB260](0x6574636570786520, 0xEF20657079742064);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E730, &qword_22EFBD248);
      v7 = sub_22EFB695C();
      MEMORY[0x2318FB260](v7);

      MEMORY[0x2318FB260](0x746F672074756220, 0xE900000000000020);
      __swift_project_boxed_opaque_existential_1(v11, v11[3]);
      swift_getDynamicType();
      v8 = sub_22EFB695C();
      MEMORY[0x2318FB260](v8);

      sub_22EF74470(v10[0], v10[1], 8, 0);
      swift_willThrow();
      return __swift_destroy_boxed_opaque_existential_0Tm(v11);
    }
  }

  else
  {
    sub_22EF70EBC(0, &qword_27DA9E448, 0x277CCA9B8);
    sub_22EFB66DC();

    MEMORY[0x2318FB260](a1, a2);
    sub_22EF74470(0xD000000000000016, 0x800000022EFC6C70, 8, 0);
    return swift_willThrow();
  }
}

uint64_t sub_22EF82E7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X8>)
{
  v4 = v3;
  v13[0] = a1;
  v13[1] = a2;

  v8 = [v4 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v8)
  {
    sub_22EFB663C();
    swift_unknownObjectRelease();
    sub_22EF76370(v14, v13);
    if (swift_dynamicCast())
    {
      result = __swift_destroy_boxed_opaque_existential_0Tm(v14);
      *a3 = v12;
    }

    else
    {
      sub_22EF708B4(0, 0xF000000000000000);
      sub_22EF70EBC(0, &qword_27DA9E448, 0x277CCA9B8);
      v13[0] = 0;
      v13[1] = 0xE000000000000000;
      sub_22EFB66DC();

      strcpy(v13, "Value for key ");
      HIBYTE(v13[1]) = -18;
      MEMORY[0x2318FB260](a1, a2);
      MEMORY[0x2318FB260](0x6574636570786520, 0xEF20657079742064);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E708, &qword_22EFBD220);
      v10 = sub_22EFB695C();
      MEMORY[0x2318FB260](v10);

      MEMORY[0x2318FB260](0x746F672074756220, 0xE900000000000020);
      __swift_project_boxed_opaque_existential_1(v14, v14[3]);
      swift_getDynamicType();
      v11 = sub_22EFB695C();
      MEMORY[0x2318FB260](v11);

      sub_22EF74470(v13[0], v13[1], 8, 0);
      swift_willThrow();
      return __swift_destroy_boxed_opaque_existential_0Tm(v14);
    }
  }

  else
  {
    sub_22EF70EBC(0, &qword_27DA9E448, 0x277CCA9B8);
    sub_22EFB66DC();

    MEMORY[0x2318FB260](a1, a2);
    sub_22EF74470(0xD000000000000016, 0x800000022EFC6C70, 8, 0);
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_22EF83154(unint64_t a1, unint64_t a2)
{
  v47 = *MEMORY[0x277D85DE8];
  v4 = a2 >> 62;
  v31 = HIDWORD(a1);
  if ((a2 >> 62) <= 1)
  {
    if (!v4)
    {
      v5 = BYTE6(a2);
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (v4 != 2)
  {
    return MEMORY[0x277D84F90];
  }

  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  v5 = v6 - v7;
  if (__OFSUB__(v6, v7))
  {
    __break(1u);
LABEL_8:
    if (__OFSUB__(HIDWORD(a1), a1))
    {
      goto LABEL_49;
    }

    v5 = HIDWORD(a1) - a1;
  }

LABEL_10:
  v8 = MEMORY[0x277D84F90];
  if (v5)
  {
    v46 = MEMORY[0x277D84F90];
    v32 = a2 >> 62;
    sub_22EF9AAC8(0, v5 & ~(v5 >> 63), 0);
    v9 = v32;
    if (v32)
    {
      if (v32 == 2)
      {
        v10 = *(a1 + 16);
      }

      else
      {
        v10 = a1;
      }
    }

    else
    {
      v10 = 0;
    }

    v33 = v10;
    if (v5 < 0)
    {
      goto LABEL_48;
    }

    v11 = 0;
    v8 = v46;
    v30 = &v34 + v10;
    do
    {
      if (v11 >= v5)
      {
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
      }

      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_41;
      }

      v13 = v33 + v11;
      if (v9 == 2)
      {
        if (v13 < *(a1 + 16))
        {
          goto LABEL_43;
        }

        if (v13 >= *(a1 + 24))
        {
          goto LABEL_45;
        }

        v18 = sub_22EFB603C();
        if (!v18)
        {
          goto LABEL_51;
        }

        v15 = v18;
        v19 = sub_22EFB605C();
        v17 = v13 - v19;
        if (__OFSUB__(v13, v19))
        {
          goto LABEL_47;
        }
      }

      else
      {
        if (v9 != 1)
        {
          if (v13 >= BYTE6(a2))
          {
            goto LABEL_42;
          }

          v34 = a1;
          v35 = BYTE2(a1);
          v36 = BYTE3(a1);
          v37 = v31;
          v38 = BYTE5(a1);
          v39 = BYTE6(a1);
          v40 = HIBYTE(a1);
          v41 = a2;
          v42 = BYTE2(a2);
          v43 = BYTE3(a2);
          v44 = BYTE4(a2);
          v45 = BYTE5(a2);
          v20 = v30[v11];
          goto LABEL_36;
        }

        if (v13 < a1 || v13 >= a1 >> 32)
        {
          goto LABEL_44;
        }

        v14 = sub_22EFB603C();
        if (!v14)
        {
          goto LABEL_50;
        }

        v15 = v14;
        v16 = sub_22EFB605C();
        v17 = v13 - v16;
        if (__OFSUB__(v13, v16))
        {
          goto LABEL_46;
        }
      }

      v20 = *(v15 + v17);
      v9 = v32;
LABEL_36:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E428, &unk_22EFBBC50);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_22EFBB8C0;
      *(v21 + 56) = MEMORY[0x277D84B78];
      *(v21 + 64) = MEMORY[0x277D84BC0];
      *(v21 + 32) = v20;
      v22 = sub_22EFB649C();
      v46 = v8;
      v25 = *(v8 + 16);
      v24 = *(v8 + 24);
      if (v25 >= v24 >> 1)
      {
        v29 = v22;
        v27 = v23;
        sub_22EF9AAC8((v24 > 1), v25 + 1, 1);
        v9 = v32;
        v23 = v27;
        v22 = v29;
        v8 = v46;
      }

      *(v8 + 16) = v25 + 1;
      v26 = v8 + 16 * v25;
      *(v26 + 32) = v22;
      *(v26 + 40) = v23;
      ++v11;
    }

    while (v12 != v5);
  }

  return v8;
}

uint64_t sub_22EF834D0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v3 = a1;
  v31 = MEMORY[0x277D84F90];
  sub_22EF9AAE8(0, v1, 0);
  v2 = v31;
  v4 = v3 + 64;
  result = sub_22EFB665C();
  v6 = result;
  v7 = 0;
  v8 = *(v3 + 36);
  v25 = v3 + 72;
  v26 = v1;
  v27 = v8;
  v28 = v3 + 64;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v3 + 32))
  {
    v10 = v6 >> 6;
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_22;
    }

    if (v8 != *(v3 + 36))
    {
      goto LABEL_23;
    }

    v29 = v7;
    v11 = (*(v3 + 48) + 16 * v6);
    v12 = v11[1];
    v30 = *v11;
    v13 = v3;
    v14 = *(*(v3 + 56) + 8 * v6);
    v15 = *(v31 + 16);
    v16 = *(v31 + 24);

    if (v15 >= v16 >> 1)
    {
      result = sub_22EF9AAE8((v16 > 1), v15 + 1, 1);
    }

    *(v31 + 16) = v15 + 1;
    v17 = (v31 + 24 * v15);
    v17[4] = v30;
    v17[5] = v12;
    v17[6] = v14;
    v9 = 1 << *(v13 + 32);
    if (v6 >= v9)
    {
      goto LABEL_24;
    }

    v3 = v13;
    v4 = v28;
    v18 = *(v28 + 8 * v10);
    if ((v18 & (1 << v6)) == 0)
    {
      goto LABEL_25;
    }

    v8 = v27;
    if (v27 != *(v3 + 36))
    {
      goto LABEL_26;
    }

    v19 = v18 & (-2 << (v6 & 0x3F));
    if (v19)
    {
      v9 = __clz(__rbit64(v19)) | v6 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v20 = v10 << 6;
      v21 = v10 + 1;
      v22 = (v25 + 8 * v10);
      while (v21 < (v9 + 63) >> 6)
      {
        v24 = *v22++;
        v23 = v24;
        v20 += 64;
        ++v21;
        if (v24)
        {
          result = sub_22EF71A2C(v6, v27, 0);
          v9 = __clz(__rbit64(v23)) + v20;
          goto LABEL_4;
        }
      }

      result = sub_22EF71A2C(v6, v27, 0);
    }

LABEL_4:
    v7 = v29 + 1;
    v6 = v9;
    if (v29 + 1 == v26)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_22EF83730(uint64_t (*a1)(__int128 *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = (a3 + 32);
    v7 = v4 - 1;
    do
    {
      v8 = v7;
      v9 = *v6++;
      v12 = v9;
      sub_22EF70B68(v9, *(&v9 + 1));
      v10 = a1(&v12);
      sub_22EF708C8(v12, *(&v12 + 1));
      LOBYTE(v4) = (v3 != 0) | v10;
      if ((v3 != 0) | v10 & 1)
      {
        break;
      }

      v7 = v8 - 1;
    }

    while (v8);
  }

  return v4 & 1;
}

uint64_t sub_22EF837E0(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

void *sub_22EF8388C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_22EF94370(*(a1 + 16), 0);
  v4 = sub_22EFAA300(&v6, v3 + 2, v2, a1);
  sub_22EFA0FD0(v6);
  if (v4 != v2)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x277D84F90];
  }

  return v3;
}

uint64_t sub_22EF8391C(uint64_t a1, uint64_t a2)
{
  v9[0] = a1;
  v9[1] = a2;

  v5 = [v2 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (!v5)
  {
    return 2;
  }

  sub_22EFB663C();
  swift_unknownObjectRelease();
  sub_22EF76370(v10, v9);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v10);
    return v11;
  }

  else
  {
    sub_22EF70EBC(0, &qword_27DA9E448, 0x277CCA9B8);
    v9[0] = 0;
    v9[1] = 0xE000000000000000;
    sub_22EFB66DC();

    strcpy(v9, "Value for key ");
    HIBYTE(v9[1]) = -18;
    MEMORY[0x2318FB260](a1, a2);
    MEMORY[0x2318FB260](0x6574636570786520, 0xEF20657079742064);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E738, &qword_22EFBD250);
    v7 = sub_22EFB695C();
    MEMORY[0x2318FB260](v7);

    MEMORY[0x2318FB260](0x746F672074756220, 0xE900000000000020);
    __swift_project_boxed_opaque_existential_1(v10, v10[3]);
    swift_getDynamicType();
    v8 = sub_22EFB695C();
    MEMORY[0x2318FB260](v8);

    sub_22EF74470(v9[0], v9[1], 8, 0);
    swift_willThrow();
    return __swift_destroy_boxed_opaque_existential_0Tm(v10);
  }
}

uint64_t sub_22EF83B50(uint64_t a1, uint64_t a2)
{
  v10[0] = a1;
  v10[1] = a2;

  v5 = [v2 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (!v5)
  {
    return 0;
  }

  sub_22EFB663C();
  swift_unknownObjectRelease();
  sub_22EF76370(v11, v10);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v11);
    return v9;
  }

  else
  {
    sub_22EF70EBC(0, &qword_27DA9E448, 0x277CCA9B8);
    v10[0] = 0;
    v10[1] = 0xE000000000000000;
    sub_22EFB66DC();

    strcpy(v10, "Value for key ");
    HIBYTE(v10[1]) = -18;
    MEMORY[0x2318FB260](a1, a2);
    MEMORY[0x2318FB260](0x6574636570786520, 0xEF20657079742064);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E730, &qword_22EFBD248);
    v7 = sub_22EFB695C();
    MEMORY[0x2318FB260](v7);

    MEMORY[0x2318FB260](0x746F672074756220, 0xE900000000000020);
    __swift_project_boxed_opaque_existential_1(v11, v11[3]);
    swift_getDynamicType();
    v8 = sub_22EFB695C();
    MEMORY[0x2318FB260](v8);

    sub_22EF74470(v10[0], v10[1], 8, 0);
    swift_willThrow();
    return __swift_destroy_boxed_opaque_existential_0Tm(v11);
  }
}

uint64_t sub_22EF83D88(uint64_t a1, uint64_t a2, unint64_t *a3, void *a4, uint64_t *a5, uint64_t *a6)
{
  v17[0] = a1;
  v17[1] = a2;

  v13 = [v6 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (!v13)
  {
    return 0;
  }

  sub_22EFB663C();
  swift_unknownObjectRelease();
  sub_22EF76370(v18, v17);
  sub_22EF70EBC(0, a3, a4);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v18);
    return v18[5];
  }

  else
  {
    sub_22EF70EBC(0, &qword_27DA9E448, 0x277CCA9B8);
    v17[0] = 0;
    v17[1] = 0xE000000000000000;
    sub_22EFB66DC();

    strcpy(v17, "Value for key ");
    HIBYTE(v17[1]) = -18;
    MEMORY[0x2318FB260](a1, a2);
    MEMORY[0x2318FB260](0x6574636570786520, 0xEF20657079742064);
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v15 = sub_22EFB695C();
    MEMORY[0x2318FB260](v15);

    MEMORY[0x2318FB260](0x746F672074756220, 0xE900000000000020);
    __swift_project_boxed_opaque_existential_1(v18, v18[3]);
    swift_getDynamicType();
    v16 = sub_22EFB695C();
    MEMORY[0x2318FB260](v16);

    sub_22EF74470(v17[0], v17[1], 8, 0);
    swift_willThrow();
    return __swift_destroy_boxed_opaque_existential_0Tm(v18);
  }
}

uint64_t sub_22EF83FE0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v17[0] = a1;
  v17[1] = a2;

  v13 = [v6 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (!v13)
  {
    return 0;
  }

  sub_22EFB663C();
  swift_unknownObjectRelease();
  sub_22EF76370(v18, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v18);
    return v18[5];
  }

  else
  {
    sub_22EF70EBC(0, &qword_27DA9E448, 0x277CCA9B8);
    v17[0] = 0;
    v17[1] = 0xE000000000000000;
    sub_22EFB66DC();

    strcpy(v17, "Value for key ");
    HIBYTE(v17[1]) = -18;
    MEMORY[0x2318FB260](a1, a2);
    MEMORY[0x2318FB260](0x6574636570786520, 0xEF20657079742064);
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v15 = sub_22EFB695C();
    MEMORY[0x2318FB260](v15);

    MEMORY[0x2318FB260](0x746F672074756220, 0xE900000000000020);
    __swift_project_boxed_opaque_existential_1(v18, v18[3]);
    swift_getDynamicType();
    v16 = sub_22EFB695C();
    MEMORY[0x2318FB260](v16);

    sub_22EF74470(v17[0], v17[1], 8, 0);
    swift_willThrow();
    return __swift_destroy_boxed_opaque_existential_0Tm(v18);
  }
}

uint64_t sub_22EF84234(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v62[5] = *MEMORY[0x277D85DE8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E768, &qword_22EFBD288);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = v53 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E770, &unk_22EFBD290);
  MEMORY[0x28223BE20](v16);
  v18 = v53 - v17;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E778, &unk_22EFBD450);
  MEMORY[0x28223BE20](v54);
  v20 = v53 - v19;
  v59[0] = a1;
  v59[1] = a2;
  v59[2] = a3;
  v59[3] = a4;
  v55 = a1;
  v56 = a2;
  v57 = a3;
  v58 = a4;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E780, &qword_22EFBD2A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E788, &qword_22EFBD2A8);
  if (swift_dynamicCast())
  {
    sub_22EEF729C(v60, v62);
    v21 = __swift_project_boxed_opaque_existential_1(v62, v62[3]);
    MEMORY[0x28223BE20](v21);
    v53[-2] = v5;
    sub_22EFB608C();
    return __swift_destroy_boxed_opaque_existential_0Tm(v62);
  }

  v61 = 0;
  memset(v60, 0, sizeof(v60));
  sub_22EF7CFF8(v60, &qword_27DA9E790, &qword_22EFBD2B0);
  v23 = *v5;
  v24 = v5[1];
  v25 = v24 >> 62;
  if ((v24 >> 62) <= 1)
  {
    if (!v25)
    {
      v26 = BYTE6(v24);
      goto LABEL_13;
    }

    goto LABEL_10;
  }

  v26 = 0;
  if (v25 != 2)
  {
    goto LABEL_13;
  }

  v28 = v23 + 16;
  v23 = *(v23 + 16);
  v27 = *(v28 + 8);
  v26 = v27 - v23;
  if (__OFSUB__(v27, v23))
  {
    __break(1u);
LABEL_10:
    if (__OFSUB__(HIDWORD(v23), v23))
    {
      goto LABEL_58;
    }

    v26 = HIDWORD(v23) - v23;
    v27 = v23 >> 32;
  }

  if (v27 < 0)
  {
    goto LABEL_54;
  }

LABEL_13:
  v29 = sub_22EFB615C();
  v30 = MEMORY[0x28223BE20](v29);
  v53[-4] = v26;
  v53[-3] = 0;
  v53[-2] = v59;
  sub_22EFA8FDC(sub_22EFA8124, v30, &v53[-6]);
  v31 = *&v18[*(v16 + 48)];
  sub_22EFA814C(v18, v20);
  if (!v31)
  {
    v53[0] = 0;
    v53[1] = v5;
    v36 = 0;
    memset(v62, 0, 15);
    v37 = *(v54 + 44);
LABEL_18:
    v54 = v36;
    while (1)
    {
      sub_22EFA81BC(&v20[v37], v15);
      v38 = sub_22EFB622C();
      v39 = *(v38 - 8);
      v40 = *(v39 + 48);
      v41 = v40(v15, 1, v38);
      sub_22EF7CFF8(v15, &qword_27DA9E768, &qword_22EFBD288);
      if (v41 != 1)
      {
        if (v40(&v20[v37], 1, v38) == 1)
        {
          goto LABEL_60;
        }

        sub_22EFA80DC(&qword_27DA9E480, MEMORY[0x277CC92E0], MEMORY[0x277CC92E8]);
        sub_22EFB661C();
        if (BYTE1(v60[0]) != 1)
        {
          v49 = v54;
          *(v62 + v54) = v60[0];
          v36 = (v49 + 1);
          if ((v36 >> 8))
          {
            goto LABEL_59;
          }

          if ((v49 + 1) == 14)
          {
            *&v60[0] = v62[0];
            *(v60 + 6) = *(v62 + 6);
            sub_22EFB617C();
            v36 = 0;
          }

          goto LABEL_18;
        }
      }

      v42 = *(v20 + 4);
      v43 = *(v20 + 3) >> 1;
      if (v42 == v43)
      {
        if (v54)
        {
          *&v60[0] = v62[0];
          *(v60 + 6) = *(v62 + 6);
          sub_22EFB617C();
        }

        return sub_22EF7CFF8(v20, &qword_27DA9E778, &unk_22EFBD450);
      }

      if (v42 >= v43 || v42 < *(v20 + 2))
      {
        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
      }

      v45 = (*(v20 + 1) + 16 * v42);
      v46 = *v45;
      v47 = v45[1];
      *(v20 + 4) = v42 + 1;
      v48 = v47 >> 62;
      if ((v47 >> 62) > 1)
      {
        if (v48 == 2)
        {
LABEL_19:
          sub_22EF70B68(v46, v47);
        }
      }

      else if (v48)
      {
        goto LABEL_19;
      }

      sub_22EFB623C();
      (*(v39 + 56))(v12, 0, 1, v38);
      sub_22EFA822C(v12, &v20[v37]);
    }
  }

  v32 = 0;
  v33 = *v5;
  v34 = v5[1];
  v35 = v34 >> 62;
  if ((v34 >> 62) > 1)
  {
    if (v35 == 2)
    {
      v32 = *(v33 + 16);
    }
  }

  else if (v35)
  {
    v32 = v33;
  }

  v50 = __OFADD__(v32, v26);
  v51 = v32 + v26;
  if (v50)
  {
    goto LABEL_55;
  }

  if (__OFADD__(v51, v31))
  {
    goto LABEL_56;
  }

  if (v35 > 1)
  {
    if (v35 == 2)
    {
      v52 = *(v33 + 24);
    }

    else
    {
      v52 = 0;
    }
  }

  else if (v35)
  {
    v52 = v33 >> 32;
  }

  else
  {
    v52 = BYTE6(v34);
  }

  if (v52 < v51 + v31)
  {
    goto LABEL_57;
  }

  sub_22EFB616C();
  return sub_22EF7CFF8(v20, &qword_27DA9E778, &unk_22EFBD450);
}

uint64_t sub_22EF848D0()
{
  v0 = sub_22EFB626C();
  __swift_allocate_value_buffer(v0, qword_27DAA03B8);
  __swift_project_value_buffer(v0, qword_27DAA03B8);
  return sub_22EFB625C();
}

void sub_22EF84BEC(unint64_t a1, unint64_t a2, void *a3)
{
  v8 = sub_22EF90790(a1, 0, 0);
  if (!v4)
  {
    v9 = v8;
    v10 = sub_22EF90790(a1, 1, 0);
    v11 = sub_22EF90790(a1, 2, 0);
    v12 = v11;
    v20 = v11;
    if (a2)
    {
      v13 = sub_22EF90790(a2, 2, 1);
      sub_22EF90F34(v13);
      v12 = v20;
    }

    v14 = v3[2];

    v15 = sub_22EF92F74(v10, v14);

    v16 = v3[3];

    v17 = sub_22EF92F74(v9, v16);

    v18 = v3[4];

    v19 = sub_22EF92F74(v12, v18);

    if ((v17 & 1) != 0 || !*(v9 + 16))
    {

      if (v15)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v3[3] = v9;

      sub_22EF91050(0, a3);
      if (v15)
      {
        goto LABEL_14;
      }
    }

    if (*(v10 + 16))
    {
      v3[2] = v10;

      sub_22EF91050(1, a3);
      goto LABEL_15;
    }

LABEL_14:

LABEL_15:
    if (v19)
    {
    }

    else
    {
      v3[4] = v12;

      sub_22EF91050(2, a3);
      sub_22EF91B70(2, a3);
    }
  }
}

void sub_22EF85014(uint64_t a1, int a2, void *a3)
{
  v293 = a3;
  v4 = v3;
  v275 = a2;
  v301 = *MEMORY[0x277D85DE8];
  v6 = sub_22EFB60FC();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = v264 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  LODWORD(v9) = *(v3 + OBJC_IVAR____TtC24AppletTranslationLibrary11ExpressMode_internalBuild);
  LODWORD(v291) = v9;
  if (v9 == 1 && [*(v3 + OBJC_IVAR____TtC24AppletTranslationLibrary11ExpressMode_userDefaults) BOOLForKey_])
  {
    v11 = objc_opt_self();
    *&v299 = 0;
    v12 = [v11 dataWithPropertyList:a1 format:200 options:0 error:&v299];
    v13 = v299;
    if (v12)
    {
      v14 = sub_22EFB61DC();
      v16 = v15;

      if (qword_27DA9E058 != -1)
      {
        goto LABEL_415;
      }

      goto LABEL_5;
    }

    v26 = v13;
    v27 = sub_22EFB60EC();

    swift_willThrow();
    v294 = 0;
  }

LABEL_9:
  v28 = MEMORY[0x277D84F90];
  v295 = MEMORY[0x277D84F90];
  sub_22EFB65FC();
  sub_22EFA80DC(&qword_281477DA0, MEMORY[0x277CC9178], MEMORY[0x277CC9180]);
  sub_22EFB661C();
  if (v300)
  {
    v292 = MEMORY[0x277D84F90];
    do
    {
      sub_22EF76360(&v299, &v297);
      sub_22EF76370(&v297, &v296);
      type metadata accessor for ExpressMode.PassConfig(0, v29);
      swift_allocObject();
      v30 = v294;
      v31 = sub_22EF8BE44(&v296);
      v294 = v30;
      if (v30)
      {
LABEL_35:
        __swift_destroy_boxed_opaque_existential_0Tm(&v297);
        v7[1](v10, v6);

        return;
      }

      v28 = v31;
      v32 = __swift_destroy_boxed_opaque_existential_0Tm(&v297);
      if (v28)
      {
        MEMORY[0x2318FB2A0](v32);
        if (*((v295 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v295 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_22EFB655C();
        }

        sub_22EFB657C();
        v292 = v295;
      }

      sub_22EFB661C();
    }

    while (v300);
  }

  else
  {
    v292 = v28;
  }

  v7[1](v10, v6);
  v290 = v4;
  if (v293)
  {
    v33 = qword_27DA9E058;
    v28 = v293;
    if (v33 != -1)
    {
      goto LABEL_52;
    }

    while (1)
    {
      v34 = sub_22EFB626C();
      __swift_project_value_buffer(v34, qword_27DAA03B8);
      v6 = v28;
      v35 = sub_22EFB624C();
      v28 = sub_22EFB65EC();

      if (os_log_type_enabled(v35, v28))
      {
        v36 = swift_slowAlloc();
        v10 = swift_slowAlloc();
        *v36 = 138412290;
        *(v36 + 4) = v6;
        *v10 = v293;
        v37 = v6;
        _os_log_impl(&dword_22EEF5000, v35, v28, "inSession with pass unique IDs: %@", v36, 0xCu);
        sub_22EF7CFF8(v10, &qword_27DA9E5C0, &qword_22EFBC3E0);
        MEMORY[0x2318FC200](v10, -1, -1);
        MEMORY[0x2318FC200](v36, -1, -1);
      }

      *&v299 = MEMORY[0x277D84F90];
      v38 = v292;
      if (v292 >> 62)
      {
        v49 = sub_22EFB67CC();
        v38 = v292;
        v7 = v49;
        if (!v49)
        {
LABEL_54:

          goto LABEL_55;
        }
      }

      else
      {
        v7 = *((v292 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v7)
        {
          goto LABEL_54;
        }
      }

      v10 = 0;
      v39 = v38 & 0xC000000000000001;
      v40 = v38 & 0xFFFFFFFFFFFFFF8;
      while (v39)
      {
        v28 = MEMORY[0x2318FB480](v10);
        v41 = (v10 + 1);
        if (__OFADD__(v10, 1))
        {
LABEL_34:
          __break(1u);
          goto LABEL_35;
        }

LABEL_30:
        v42 = sub_22EFB647C();
        v43 = [v6 containsObject_];

        if (v43)
        {
          sub_22EFB673C();
          sub_22EFB676C();
          sub_22EFB677C();
          sub_22EFB674C();
        }

        else
        {
        }

        ++v10;
        v38 = v292;
        if (v41 == v7)
        {
          goto LABEL_54;
        }
      }

      if (v10 < *(v40 + 16))
      {
        break;
      }

LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      swift_once();
    }

    v28 = *(v38 + 8 * v10 + 32);

    v41 = (v10 + 1);
    if (__OFADD__(v10, 1))
    {
      goto LABEL_34;
    }

    goto LABEL_30;
  }

  *&v299 = MEMORY[0x277D84F90];
  v44 = v292;
  if (!(v292 >> 62))
  {
    v45 = *((v292 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v45)
    {
      goto LABEL_55;
    }

LABEL_38:
    v6 = 0;
    v46 = v44 & 0xC000000000000001;
    v47 = v44 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v46)
      {
        v28 = MEMORY[0x2318FB480](v6);
        v48 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          goto LABEL_49;
        }
      }

      else
      {
        if (v6 >= *(v47 + 16))
        {
          goto LABEL_51;
        }

        v28 = *(v44 + 8 * v6 + 32);

        v48 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
LABEL_49:
          __break(1u);
          goto LABEL_50;
        }
      }

      if (*(v28 + 162) & 1) != 0 || (*(v28 + 161))
      {
        sub_22EFB673C();
        v10 = *(v299 + 16);
        sub_22EFB676C();
        sub_22EFB677C();
        sub_22EFB674C();
      }

      else
      {
      }

      ++v6;
      v44 = v292;
      if (v48 == v45)
      {
        goto LABEL_55;
      }
    }
  }

  while (1)
  {
    v263 = sub_22EFB67CC();
    v44 = v292;
    v45 = v263;
    if (v263)
    {
      goto LABEL_38;
    }

LABEL_55:
    v50 = v299;
    v296 = v299;
    v285 = v299;
    v51 = v290;
    if (v291 && (v52 = *(v290 + OBJC_IVAR____TtC24AppletTranslationLibrary11ExpressMode_userDefaults), [v52 integerForKey_] >= 1))
    {
      if (qword_27DA9E058 != -1)
      {
        swift_once();
      }

      v53 = sub_22EFB626C();
      __swift_project_value_buffer(v53, qword_27DAA03B8);
      v6 = v51;
      v54 = sub_22EFB624C();
      v55 = sub_22EFB65EC();
      if (os_log_type_enabled(v54, v55))
      {
        v10 = swift_slowAlloc();
        *v10 = 134217984;
        *(v10 + 4) = [v52 integerForKey_];

        _os_log_impl(&dword_22EEF5000, v54, v55, "Skipping compatibility check due to %ld", v10, 0xCu);
        MEMORY[0x2318FC200](v10, -1, -1);
      }

      else
      {
      }

      v276 = MEMORY[0x277D84F90];
      v50 = v285;
    }

    else
    {

      v57 = sub_22EFA2454(v56, v275 & 1);

      v276 = v57;
    }

    v295 = MEMORY[0x277D84FA0];
    v277 = v50 >> 62;
    if (!(v50 >> 62))
    {
      v7 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v58 = retryWithBackoff__backoffTable;
      if (!v7)
      {
        goto LABEL_343;
      }

      goto LABEL_66;
    }

    while (1)
    {
      v7 = sub_22EFB67CC();
      v58 = retryWithBackoff__backoffTable;
      if (!v7)
      {
LABEL_343:
        v232 = v294;
        v233 = sub_22EF9FB94(&v296, &v295);
        v294 = v232;
        if (v296 >> 62)
        {
          v262 = v233;
          v234 = sub_22EFB67CC();
          v233 = v262;
          if (v234 >= v262)
          {
LABEL_345:
            sub_22EFA32EC(v233, v234);
            if (qword_27DA9E058 == -1)
            {
              goto LABEL_346;
            }

            goto LABEL_402;
          }
        }

        else
        {
          v234 = *((v296 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v234 >= v233)
          {
            goto LABEL_345;
          }
        }

        __break(1u);
LABEL_402:
        swift_once();
LABEL_346:
        v235 = sub_22EFB626C();
        v236 = __swift_project_value_buffer(v235, qword_27DAA03B8);

        v71 = sub_22EFB624C();
        LOBYTE(v66) = sub_22EFB65EC();

        v237 = os_log_type_enabled(v71, v66);
        v291 = v236;
        if (!v237)
        {

          goto LABEL_351;
        }

        v6 = swift_slowAlloc();
        v10 = swift_slowAlloc();
        *&v299 = v10;
        *v6 = 134218498;
        swift_beginAccess();
        if (v296 >> 62)
        {
          goto LABEL_408;
        }

        for (i = *((v296 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_22EFB67CC())
        {
          *(v6 + 4) = i;
          *(v6 + 12) = 2080;
          v239 = MEMORY[0x2318FB2C0](v276, &type metadata for ExpressModeRejectedPass);
          v241 = v240;

          v242 = sub_22EF9447C(v239, v241, &v299);

          *(v6 + 14) = v242;
          *(v6 + 22) = 1024;
          *(v6 + 24) = v275 & 1;
          _os_log_impl(&dword_22EEF5000, v71, v66, "  configCount %ld, Incompatible applets? %s useLegacyBehavior? %{BOOL}d", v6, 0x1Cu);
          __swift_destroy_boxed_opaque_existential_0Tm(v10);
          MEMORY[0x2318FC200](v10, -1, -1);
          MEMORY[0x2318FC200](v6, -1, -1);

LABEL_351:
          swift_beginAccess();
          v66 = v296;
          if (v296 >> 62)
          {
            v243 = sub_22EFB67CC();
            if (!v243)
            {
LABEL_367:

              return;
            }
          }

          else
          {
            v243 = *((v296 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (!v243)
            {
              goto LABEL_367;
            }
          }

          if (v243 >= 1)
          {
            break;
          }

LABEL_407:
          __break(1u);
LABEL_408:
          ;
        }

        v293 = (v66 & 0xC000000000000001);

        v244 = 0;
        *&v245 = 136315138;
        v289 = v245;
        v290 = v243;
        v288 = v66;
        while (1)
        {
          if (v293)
          {
            v246 = MEMORY[0x2318FB480](v244, v66);
            if ((*(v246 + 162) & 1) == 0)
            {
              goto LABEL_360;
            }
          }

          else
          {
            v246 = *(v66 + 8 * v244 + 32);

            if ((*(v246 + 162) & 1) == 0)
            {
LABEL_360:
              if ((*(v246 + 161) & 1) == 0)
              {

                v247 = sub_22EFB624C();
                v248 = sub_22EFB65CC();

                if (os_log_type_enabled(v247, v248))
                {
                  v249 = swift_slowAlloc();
                  v250 = swift_slowAlloc();
                  v298 = v250;
                  *v249 = v289;
                  v252 = *(v246 + 16);
                  v251 = *(v246 + 24);

                  v253 = sub_22EF9447C(v252, v251, &v298);
                  v243 = v290;

                  *(v249 + 4) = v253;
                  _os_log_impl(&dword_22EEF5000, v247, v248, "Configuring non-express pass: %s", v249, 0xCu);
                  __swift_destroy_boxed_opaque_existential_0Tm(v250);
                  MEMORY[0x2318FC200](v250, -1, -1);
                  MEMORY[0x2318FC200](v249, -1, -1);
                }

                v66 = v288;
              }
            }
          }

          v254 = sub_22EFB624C();
          v255 = sub_22EFB65AC();

          if (os_log_type_enabled(v254, v255))
          {
            v256 = swift_slowAlloc();
            v257 = swift_slowAlloc();
            v298 = v257;
            *v256 = v289;
            v258 = sub_22EF8DDD8(2);
            v260 = sub_22EF9447C(v258, v259, &v298);

            *(v256 + 4) = v260;
            _os_log_impl(&dword_22EEF5000, v254, v255, "PassConfig:\n%s", v256, 0xCu);
            __swift_destroy_boxed_opaque_existential_0Tm(v257);
            MEMORY[0x2318FC200](v257, -1, -1);
            v261 = v256;
            v243 = v290;
            MEMORY[0x2318FC200](v261, -1, -1);
          }

          if (v243 == ++v244)
          {

            goto LABEL_367;
          }
        }
      }

LABEL_66:
      v14 = (v50 & 0xC000000000000001);
      v59 = v50 & 0xFFFFFFFFFFFFFF8;
      v284 = v50 + 32;
      v287 = v50 & 0xFFFFFFFFFFFFFF8;
      if (v50 < 0)
      {
        v59 = v50;
      }

      v274 = v59;

      *&v60 = *(v58 + 240);
      v269 = v60;
      v61 = 0;
      *(&v60 + 1) = 2;
      v289 = xmmword_22EFBB8C0;
      *&v60 = 136315394;
      v268 = v60;
      v288 = (v50 & 0xC000000000000001);
      v278 = v7;
LABEL_71:
      if (!v14)
      {
        break;
      }

      v62 = MEMORY[0x2318FB480](v61, v50);
      v63 = __OFADD__(v61, 1);
      v64 = (v61 + 1);
      if (!v63)
      {
        goto LABEL_77;
      }

LABEL_369:
      __break(1u);
LABEL_370:
      __break(1u);
LABEL_371:
      __break(1u);
LABEL_372:
      __break(1u);
LABEL_373:
      __break(1u);
LABEL_374:
      __break(1u);
LABEL_375:
      __break(1u);
LABEL_376:
      __break(1u);
LABEL_377:
      __break(1u);
LABEL_378:
      __break(1u);
LABEL_379:
      __break(1u);
LABEL_380:
      __break(1u);
LABEL_381:
      __break(1u);
LABEL_382:
      __break(1u);
LABEL_383:
      __break(1u);
LABEL_384:
      __break(1u);
LABEL_385:
      __break(1u);
LABEL_386:
      __break(1u);
LABEL_387:
      __break(1u);
LABEL_388:
      __break(1u);
LABEL_389:
      __break(1u);
LABEL_390:
      __break(1u);
LABEL_391:
      __break(1u);
LABEL_392:
      __break(1u);
LABEL_393:
      __break(1u);
LABEL_394:
      __break(1u);
LABEL_395:
      __break(1u);
LABEL_396:
      __break(1u);
LABEL_397:
      __break(1u);
    }

    if (v61 >= *(v287 + 16))
    {
      goto LABEL_373;
    }

    v62 = *(v284 + 8 * v61);

    v63 = __OFADD__(v61, 1);
    v64 = (v61 + 1);
    if (v63)
    {
      goto LABEL_369;
    }

LABEL_77:
    v65 = *(v62 + 144);
    v293 = v64;
    if (v65 && *(v65 + 16) || (*(v62 + 160) & 1) != 0 || *(v62 + 152) != 2)
    {

      goto LABEL_70;
    }

    v10 = v277 ? sub_22EFB67CC() : *(v287 + 16);

    v291 = v62;
    if (v10)
    {
      break;
    }

LABEL_196:

    if (qword_27DA9E058 != -1)
    {
      swift_once();
    }

    v113 = sub_22EFB626C();
    __swift_project_value_buffer(v113, qword_27DAA03B8);

    v114 = sub_22EFB624C();
    v10 = sub_22EFB65AC();

    v115 = os_log_type_enabled(v114, v10);
    v7 = v278;
    if (!v115)
    {
      goto LABEL_256;
    }

    v4 = swift_slowAlloc();
    v116 = swift_slowAlloc();
    *&v297 = v116;
    *v4 = v269;
    v6 = *(v62 + 32);
    v117 = *(v62 + 40);
    v16 = v117 >> 62;
    v283 = HIDWORD(v6);
    v273 = v114;
    LODWORD(v272) = v10;
    v271 = v4;
    v270 = v116;
    if ((v117 >> 62) <= 1)
    {
      if (!v16)
      {
        v28 = BYTE6(v117);
        goto LABEL_209;
      }

      if (!__OFSUB__(v283, v6))
      {
        v28 = v283 - v6;
        goto LABEL_209;
      }

LABEL_414:
      __break(1u);
LABEL_415:
      swift_once();
LABEL_5:
      v17 = sub_22EFB626C();
      __swift_project_value_buffer(v17, qword_27DAA03B8);
      sub_22EF70B68(v14, v16);
      v18 = sub_22EFB624C();
      v19 = sub_22EFB65AC();
      sub_22EF708C8(v14, v16);
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v292 = v14;
        LODWORD(v289) = v19;
        v21 = v20;
        v288 = swift_slowAlloc();
        *&v299 = v288;
        *v21 = 136315138;
        v22 = sub_22EFB61CC();
        v290 = v4;
        v24 = sub_22EF9447C(v22, v23, &v299);
        v4 = v290;

        *(v21 + 4) = v24;
        _os_log_impl(&dword_22EEF5000, v18, v289, "Raw Config : %s", v21, 0xCu);
        v25 = v288;
        __swift_destroy_boxed_opaque_existential_0Tm(v288);
        MEMORY[0x2318FC200](v25, -1, -1);
        MEMORY[0x2318FC200](v21, -1, -1);
        sub_22EF708C8(v292, v16);
      }

      else
      {

        sub_22EF708C8(v14, v16);
      }

      goto LABEL_9;
    }

    if (v16 != 2)
    {
      v120 = MEMORY[0x277D84F90];
      goto LABEL_240;
    }

    v119 = *(v6 + 16);
    v118 = *(v6 + 24);
    v28 = v118 - v119;
    if (__OFSUB__(v118, v119))
    {
      __break(1u);
      goto LABEL_414;
    }

LABEL_209:
    v120 = MEMORY[0x277D84F90];
    if (!v28)
    {
      goto LABEL_240;
    }

    v298 = MEMORY[0x277D84F90];
    v50 = &v298;
    sub_22EF9AAC8(0, v28 & ~(v28 >> 63), 0);
    v282 = v6;
    if (v16)
    {
      if (v16 == 2)
      {
        v121 = *(v6 + 16);
      }

      else
      {
        v121 = v282;
      }
    }

    else
    {
      v121 = 0;
    }

    v290 = v121;
    if ((v28 & 0x8000000000000000) == 0)
    {
      v122 = 0;
      v120 = v298;
      v280 = v6 >> 32;
      v281 = BYTE6(v117);
      v279 = &v299 + v290;
      v286 = v117 >> 62;
      while (1)
      {
        if (v122 >= v28)
        {
          goto LABEL_370;
        }

        v123 = v122 + 1;
        if (__OFADD__(v122, 1))
        {
          goto LABEL_371;
        }

        v10 = v290 + v122;
        if (v16 == 2)
        {
          if (v10 < *(v6 + 16))
          {
            goto LABEL_374;
          }

          if (v10 >= *(v6 + 24))
          {
            goto LABEL_377;
          }

          v128 = sub_22EFB603C();
          if (!v128)
          {
            goto LABEL_431;
          }

          v125 = v128;
          v50 = v117 & 0x3FFFFFFFFFFFFFFFLL;
          v129 = sub_22EFB605C();
          v127 = v10 - v129;
          if (__OFSUB__(v10, v129))
          {
            goto LABEL_379;
          }
        }

        else
        {
          if (v16 != 1)
          {
            if (v10 >= v281)
            {
              goto LABEL_375;
            }

            LOWORD(v299) = v6;
            BYTE2(v299) = BYTE2(v6);
            BYTE3(v299) = BYTE3(v6);
            BYTE4(v299) = v283;
            BYTE5(v299) = BYTE5(v6);
            BYTE6(v299) = BYTE6(v6);
            BYTE7(v299) = HIBYTE(v6);
            WORD4(v299) = v117;
            BYTE10(v299) = BYTE2(v117);
            BYTE11(v299) = BYTE3(v117);
            BYTE12(v299) = BYTE4(v117);
            BYTE13(v299) = BYTE5(v117);
            v50 = *(v279 + v122);
            goto LABEL_235;
          }

          if (v10 < v282 || v10 >= v280)
          {
            goto LABEL_376;
          }

          v124 = sub_22EFB603C();
          if (!v124)
          {
            goto LABEL_430;
          }

          v125 = v124;
          v50 = v117 & 0x3FFFFFFFFFFFFFFFLL;
          v126 = sub_22EFB605C();
          v127 = v10 - v126;
          if (__OFSUB__(v10, v126))
          {
            goto LABEL_378;
          }
        }

        v50 = *(v125 + v127);
LABEL_235:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E428, &unk_22EFBBC50);
        v130 = swift_allocObject();
        *(v130 + 16) = v289;
        *(v130 + 56) = MEMORY[0x277D84B78];
        *(v130 + 64) = MEMORY[0x277D84BC0];
        *(v130 + 32) = v50;
        v131 = sub_22EFB649C();
        v298 = v120;
        v10 = *(v120 + 16);
        v133 = *(v120 + 24);
        if (v10 >= v133 >> 1)
        {
          v50 = &v298;
          v267 = v131;
          v136 = v132;
          sub_22EF9AAC8((v133 > 1), v10 + 1, 1);
          v132 = v136;
          v131 = v267;
          v120 = v298;
        }

        *(v120 + 16) = v10 + 1;
        v134 = v120 + 16 * v10;
        *(v134 + 32) = v131;
        *(v134 + 40) = v132;
        ++v122;
        v135 = v123 == v28;
        v14 = v288;
        LODWORD(v16) = v286;
        if (v135)
        {
          v7 = v278;
LABEL_240:
          *&v299 = v120;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E400, &unk_22EFBD180);
          sub_22EF70E20(&qword_27DA9E408, &qword_27DA9E400, &unk_22EFBD180, MEMORY[0x277D83958]);
          v137 = sub_22EFB646C();
          v139 = v138;

          v140 = sub_22EF9447C(v137, v139, &v297);

          v6 = v271;
          *(v271 + 4) = v140;
          v141 = v273;
          _os_log_impl(&dword_22EEF5000, v273, v272, "Trying to fold %s but head applet not express", v6, 0xCu);
          v142 = v270;
          __swift_destroy_boxed_opaque_existential_0Tm(v270);
          MEMORY[0x2318FC200](v142, -1, -1);
          MEMORY[0x2318FC200](v6, -1, -1);

LABEL_257:
          v50 = v285;
          goto LABEL_70;
        }
      }
    }

    __break(1u);
LABEL_410:
    __break(1u);
LABEL_411:
    __break(1u);
  }

  v66 = 0;
  v290 = v10;
  while (1)
  {
    if (v14)
    {
      v67 = MEMORY[0x2318FB480](v66, v50);
      v6 = v66 + 1;
      if (__OFADD__(v66, 1))
      {
        goto LABEL_368;
      }
    }

    else
    {
      if (v66 >= *(v287 + 16))
      {
        goto LABEL_372;
      }

      v67 = *(v50 + 8 * v66 + 32);

      v6 = v66 + 1;
      if (__OFADD__(v66, 1))
      {
LABEL_368:
        __break(1u);
        goto LABEL_369;
      }
    }

    v68 = *(v67 + 32);
    v69 = *(v67 + 40);
    v10 = *(v62 + 128);
    v28 = *(v62 + 136);
    if (v69 >> 60 == 15)
    {
      if (v28 >> 60 == 15)
      {
        sub_22EF70B68(*(v67 + 32), *(v67 + 40));
        sub_22EF70CB0(v10, v28);

        sub_22EF708B4(v68, v69);
        v7 = v278;
        goto LABEL_246;
      }

      goto LABEL_87;
    }

    if (v28 >> 60 != 15)
    {
      break;
    }

LABEL_87:
    sub_22EF70B68(*(v67 + 32), *(v67 + 40));
    sub_22EF70CB0(v10, v28);

    sub_22EF708B4(v68, v69);
    sub_22EF708B4(v10, v28);
LABEL_88:
    ++v66;
    v10 = v290;
    v62 = v291;
    if (v6 == v290)
    {
      goto LABEL_196;
    }
  }

  v70 = v69 >> 62;
  v71 = (v28 >> 62);
  if (v69 >> 62 != 3)
  {
    if (v70 <= 1)
    {
      if (v70)
      {
        LODWORD(v72) = HIDWORD(v68) - v68;
        if (__OFSUB__(HIDWORD(v68), v68))
        {
          goto LABEL_405;
        }

        v72 = v72;
        goto LABEL_114;
      }

      v72 = BYTE6(v69);
      if (v71 <= 1)
      {
        goto LABEL_115;
      }

      goto LABEL_120;
    }

    if (v70 == 2)
    {
      v74 = *(v68 + 16);
      v73 = *(v68 + 24);
      v63 = __OFSUB__(v73, v74);
      v72 = v73 - v74;
      if (v63)
      {
        __break(1u);
LABEL_405:
        __break(1u);
LABEL_406:
        __break(1u);
        goto LABEL_407;
      }

      goto LABEL_114;
    }

    v72 = 0;
    if (v71 > 1)
    {
      goto LABEL_120;
    }

LABEL_115:
    if (v71)
    {
      LODWORD(v75) = HIDWORD(v10) - v10;
      if (__OFSUB__(HIDWORD(v10), v10))
      {
        goto LABEL_385;
      }

      v75 = v75;
    }

    else
    {
      v75 = BYTE6(v28);
    }

LABEL_122:
    if (v72 != v75)
    {
      goto LABEL_128;
    }

    if (v72 < 1)
    {
      goto LABEL_241;
    }

    if (v70 > 1)
    {
      if (v70 != 2)
      {
        *(&v299 + 6) = 0;
        *&v299 = 0;
        sub_22EF70B68(v68, v69);
        sub_22EF70CB0(v10, v28);
        sub_22EF70B68(v68, v69);
        sub_22EF70CB0(v10, v28);
LABEL_138:
        v82 = v294;
        sub_22EF92D44(&v299, v10, v28, &v297);
        v294 = v82;
        if (v82)
        {
          goto LABEL_446;
        }

        sub_22EF708B4(v10, v28);
        sub_22EF708C8(v68, v69);
        sub_22EF708B4(v10, v28);
        v83 = v297;
        sub_22EF708B4(v68, v69);
        v14 = v288;
        if (v83)
        {
          goto LABEL_245;
        }

        goto LABEL_195;
      }

      v286 = *(v68 + 16);
      sub_22EF70B68(v68, v69);
      sub_22EF70CB0(v10, v28);
      sub_22EF70B68(v68, v69);
      sub_22EF70CB0(v10, v28);
      v78 = sub_22EFB603C();
      if (v78)
      {
        v283 = v78;
        v79 = sub_22EFB605C();
        if (__OFSUB__(v286, v79))
        {
          goto LABEL_410;
        }

        v286 = v283 + v286 - v79;
      }

      else
      {
        v286 = 0;
      }

      sub_22EFB604C();
      if (v71 == 2)
      {
        v88 = *(v10 + 16);
        v283 = *(v10 + 24);
        v89 = sub_22EFB603C();
        if (v89)
        {
          v282 = v88;
          v90 = v89;
          v91 = sub_22EFB605C();
          v92 = v282;
          if (__OFSUB__(v282, v91))
          {
            goto LABEL_420;
          }

          v93 = (v282 - v91 + v90);
          v94 = v283;
        }

        else
        {
          v93 = 0;
          v94 = v283;
          v92 = v88;
        }

        v283 = v93;
        v105 = v94 - v92;
        if (__OFSUB__(v94, v92))
        {
          goto LABEL_417;
        }

        v106 = sub_22EFB604C();
        if (v106 >= v105)
        {
          v107 = v105;
        }

        else
        {
          v107 = v106;
        }

        v95 = v286;
        if (!v286)
        {
          goto LABEL_437;
        }

        v14 = v288;
        v104 = v283;
        if (!v283)
        {
          goto LABEL_436;
        }

        goto LABEL_192;
      }

      if (v71 == 1)
      {
        v283 = ((v10 >> 32) - v10);
        if (v10 >> 32 < v10)
        {
          __break(1u);
LABEL_417:
          __break(1u);
LABEL_418:
          __break(1u);
LABEL_419:
          __break(1u);
LABEL_420:
          __break(1u);
LABEL_421:
          __break(1u);
LABEL_422:
          __break(1u);
LABEL_423:
          __break(1u);
LABEL_424:
          __break(1u);
LABEL_425:
          __break(1u);
LABEL_426:
          __break(1u);
LABEL_427:
          __break(1u);
LABEL_428:
          __break(1u);
LABEL_429:
          __break(1u);
LABEL_430:
          __break(1u);
LABEL_431:
          __break(1u);
        }

        v84 = sub_22EFB603C();
        if (v84)
        {
          v282 = v84;
          v85 = sub_22EFB605C();
          if (__OFSUB__(v10, v85))
          {
            goto LABEL_422;
          }

          v282 += v10 - v85;
        }

        else
        {
          v282 = 0;
        }

        v14 = v288;
        v108 = sub_22EFB604C();
        v107 = v283;
        if (v108 < v283)
        {
          v107 = v108;
        }

        v95 = v286;
        if (!v286)
        {
          goto LABEL_440;
        }

        v104 = v282;
        if (!v282)
        {
          goto LABEL_439;
        }

        goto LABEL_192;
      }

      v95 = v286;
      *&v299 = v10;
      WORD4(v299) = v28;
      BYTE10(v299) = BYTE2(v28);
      BYTE11(v299) = BYTE3(v28);
      BYTE12(v299) = BYTE4(v28);
      BYTE13(v299) = BYTE5(v28);
      v14 = v288;
      if (!v286)
      {
        goto LABEL_438;
      }
    }

    else
    {
      if (!v70)
      {
        *&v299 = *(v67 + 32);
        WORD4(v299) = v69;
        BYTE10(v299) = BYTE2(v69);
        BYTE11(v299) = BYTE3(v69);
        BYTE12(v299) = BYTE4(v69);
        BYTE13(v299) = BYTE5(v69);
        sub_22EF70B68(v68, v69);
        sub_22EF70CB0(v10, v28);
        sub_22EF70B68(v68, v69);
        sub_22EF70CB0(v10, v28);
        goto LABEL_138;
      }

      if (v68 > v68 >> 32)
      {
        goto LABEL_406;
      }

      v286 = v68;
      sub_22EF70B68(v68, v69);
      sub_22EF70CB0(v10, v28);
      sub_22EF70B68(v68, v69);
      sub_22EF70CB0(v10, v28);
      v80 = sub_22EFB603C();
      if (v80)
      {
        v283 = v80;
        v81 = sub_22EFB605C();
        if (__OFSUB__(v286, v81))
        {
          goto LABEL_411;
        }

        v286 = v283 + v286 - v81;
      }

      else
      {
        v286 = 0;
      }

      sub_22EFB604C();
      if (v71 == 2)
      {
        v96 = *(v10 + 16);
        v283 = *(v10 + 24);
        v97 = sub_22EFB603C();
        if (v97)
        {
          v282 = v96;
          v98 = v97;
          v99 = sub_22EFB605C();
          v100 = v282;
          if (__OFSUB__(v282, v99))
          {
            goto LABEL_421;
          }

          v101 = (v282 - v99 + v98);
          v102 = v283;
        }

        else
        {
          v101 = 0;
          v102 = v283;
          v100 = v96;
        }

        v283 = v101;
        v109 = v102 - v100;
        if (__OFSUB__(v102, v100))
        {
          goto LABEL_419;
        }

        v110 = sub_22EFB604C();
        if (v110 >= v109)
        {
          v107 = v109;
        }

        else
        {
          v107 = v110;
        }

        v95 = v286;
        if (!v286)
        {
          goto LABEL_443;
        }

        v14 = v288;
        v104 = v283;
        if (!v283)
        {
          goto LABEL_442;
        }

        goto LABEL_192;
      }

      if (v71 == 1)
      {
        v283 = ((v10 >> 32) - v10);
        if (v10 >> 32 < v10)
        {
          goto LABEL_418;
        }

        v86 = sub_22EFB603C();
        if (v86)
        {
          v282 = v86;
          v87 = sub_22EFB605C();
          if (__OFSUB__(v10, v87))
          {
            goto LABEL_423;
          }

          v282 += v10 - v87;
        }

        else
        {
          v282 = 0;
        }

        v14 = v288;
        v111 = sub_22EFB604C();
        v107 = v283;
        if (v111 < v283)
        {
          v107 = v111;
        }

        v95 = v286;
        if (!v286)
        {
          goto LABEL_445;
        }

        v104 = v282;
        if (!v282)
        {
          goto LABEL_444;
        }

LABEL_192:
        if (v95 == v104)
        {
          sub_22EF708B4(v10, v28);
          sub_22EF708B4(v10, v28);
          sub_22EF708C8(v68, v69);
          goto LABEL_244;
        }

        v103 = v107;
        goto LABEL_194;
      }

      v95 = v286;
      *&v299 = v10;
      WORD4(v299) = v28;
      BYTE10(v299) = BYTE2(v28);
      BYTE11(v299) = BYTE3(v28);
      BYTE12(v299) = BYTE4(v28);
      BYTE13(v299) = BYTE5(v28);
      v14 = v288;
      if (!v286)
      {
        goto LABEL_441;
      }
    }

    v103 = BYTE6(v28);
    v104 = &v299;
LABEL_194:
    v112 = memcmp(v95, v104, v103);
    sub_22EF708B4(v10, v28);
    sub_22EF708B4(v10, v28);
    sub_22EF708C8(v68, v69);
    sub_22EF708B4(v68, v69);
    if (!v112)
    {
      goto LABEL_245;
    }

    goto LABEL_195;
  }

  v72 = 0;
  if (!v68 && v69 == 0xC000000000000000 && v28 >> 62 == 3)
  {
    v72 = 0;
    if (!v10 && v28 == 0xC000000000000000)
    {
      sub_22EF70B68(0, 0xC000000000000000);
      sub_22EF70CB0(0, 0xC000000000000000);
      sub_22EF708B4(0, 0xC000000000000000);
      v68 = 0;
      goto LABEL_243;
    }
  }

LABEL_114:
  if (v71 <= 1)
  {
    goto LABEL_115;
  }

LABEL_120:
  if (v71 == 2)
  {
    v77 = *(v10 + 16);
    v76 = *(v10 + 24);
    v63 = __OFSUB__(v76, v77);
    v75 = v76 - v77;
    if (v63)
    {
      goto LABEL_384;
    }

    goto LABEL_122;
  }

  if (v72)
  {
LABEL_128:
    sub_22EF70B68(*(v67 + 32), *(v67 + 40));
    sub_22EF70CB0(v10, v28);
    sub_22EF708B4(v10, v28);
    sub_22EF708B4(v68, v69);
    v14 = v288;
LABEL_195:

    v50 = v285;
    goto LABEL_88;
  }

LABEL_241:
  sub_22EF70B68(*(v67 + 32), *(v67 + 40));
  sub_22EF70CB0(v10, v28);
  sub_22EF708B4(v10, v28);
LABEL_243:
  v14 = v288;
LABEL_244:
  sub_22EF708B4(v68, v69);
LABEL_245:
  v7 = v278;

LABEL_246:
  v143 = *(v67 + 80);
  v144 = &OBJC_IVAR___HashHelper_ctx;
  if (v143 >= 3)
  {
    v145 = *(v67 + 88);
    v10 = *(v67 + 96);
    v6 = v291;
    v146 = v291[10];
    if (v146 >= 3)
    {
      v155 = v291[11];
      v154 = v291[12];
      sub_22EFA0DA0(*(v67 + 80), *(v67 + 88), *(v67 + 96));
      v290 = v155;
      v286 = v154;
      sub_22EFA0DA0(v146, v155, v154);
      if (qword_27DA9E058 != -1)
      {
        swift_once();
      }

      v156 = sub_22EFB626C();
      __swift_project_value_buffer(v156, qword_27DAA03B8);

      v157 = sub_22EFB624C();
      v158 = sub_22EFB65AC();

      LODWORD(v283) = v158;
      if (os_log_type_enabled(v157, v158))
      {
        v159 = swift_slowAlloc();
        v282 = v159;
        v281 = swift_slowAlloc();
        *&v299 = v281;
        *v159 = v269;

        v280 = v157;
        v160 = sub_22EF8DDD8(0);
        v161 = v145;
        v163 = v162;

        v164 = sub_22EF9447C(v160, v163, &v299);
        v145 = v161;

        v165 = v282;
        *(v282 + 4) = v164;
        v166 = v280;
        _os_log_impl(&dword_22EEF5000, v280, v283, "Folded %s", v165, 0xCu);
        v167 = v281;
        __swift_destroy_boxed_opaque_existential_0Tm(v281);
        MEMORY[0x2318FC200](v167, -1, -1);
        MEMORY[0x2318FC200](v282, -1, -1);
      }

      else
      {
      }

      v283 = sub_22EF87B48(v146, v290, v286, v143, v145, v10);
      v282 = v170;
      v281 = v171;

      v172 = *(v67 + 80);
      v173 = *(v67 + 88);
      v174 = *(v67 + 96);
      v175 = v282;
      *(v67 + 80) = v283;
      *(v67 + 88) = v175;
      *(v67 + 96) = v281;
      sub_22EFA0DF0(v172, v173, v174);
      *(v67 + 177) = 1;
      v176 = *(v6 + 32);
      v177 = *(v6 + 40);
      sub_22EF70B68(v176, v177);
      sub_22EF9BDD0(&v299, v176, v177);

      sub_22EF708C8(v299, *(&v299 + 1));
      goto LABEL_340;
    }

    sub_22EFA0DA0(*(v67 + 80), *(v67 + 88), *(v67 + 96));

    v144 = &OBJC_IVAR___HashHelper_ctx;
  }

  if (*(v144 + 11) != -1)
  {
    swift_once();
  }

  v147 = sub_22EFB626C();
  __swift_project_value_buffer(v147, qword_27DAA03B8);
  v148 = v291;

  v114 = sub_22EFB624C();
  v6 = sub_22EFB65AC();

  LODWORD(v270) = v6;
  if (!os_log_type_enabled(v114, v6))
  {

LABEL_256:

    goto LABEL_257;
  }

  v149 = swift_slowAlloc();
  v150 = swift_slowAlloc();
  *&v297 = v150;
  v267 = v149;
  *v149 = v268;
  v6 = v148[4];
  v151 = v148[5];
  v152 = v151 >> 62;
  v282 = HIDWORD(v6);
  v283 = (v151 >> 62);
  v266 = v114;
  v265 = v150;
  if ((v151 >> 62) > 1)
  {
    if (v152 == 2)
    {
      v169 = *(v6 + 16);
      v168 = *(v6 + 24);
      v153 = v168 - v169;
      if (__OFSUB__(v168, v169))
      {
        goto LABEL_426;
      }

      goto LABEL_270;
    }

    v178 = MEMORY[0x277D84F90];
    goto LABEL_300;
  }

  if (v152)
  {
    if (__OFSUB__(v282, v6))
    {
      goto LABEL_427;
    }

    v153 = v282 - v6;
  }

  else
  {
    v153 = BYTE6(v151);
  }

LABEL_270:
  v178 = MEMORY[0x277D84F90];
  if (!v153)
  {
LABEL_300:
    *&v299 = v178;
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E400, &unk_22EFBD180);
    v196 = sub_22EF70E20(&qword_27DA9E408, &qword_27DA9E400, &unk_22EFBD180, MEMORY[0x277D83958]);
    v264[2] = v6;
    v264[1] = v196;
    v197 = sub_22EFB646C();
    v199 = v198;

    v200 = sub_22EF9447C(v197, v199, &v297);

    v201 = v267;
    *(v267 + 1) = v200;
    *(v201 + 6) = 2080;
    v202 = *(v67 + 32);
    v10 = *(v67 + 40);
    v203 = v10 >> 62;
    v280 = HIDWORD(v202);
    if ((v10 >> 62) > 1)
    {
      if (v203 != 2)
      {
        v207 = MEMORY[0x277D84F90];
        goto LABEL_339;
      }

      v206 = *(v202 + 16);
      v205 = *(v202 + 24);
      v204 = v205 - v206;
      if (__OFSUB__(v205, v206))
      {
        goto LABEL_428;
      }
    }

    else if (v203)
    {
      if (__OFSUB__(v280, v202))
      {
        goto LABEL_429;
      }

      v204 = v280 - v202;
    }

    else
    {
      v204 = BYTE6(v10);
    }

    v207 = MEMORY[0x277D84F90];
    if (!v204)
    {
      goto LABEL_339;
    }

    v298 = MEMORY[0x277D84F90];
    v281 = v202;
    sub_22EF9AAC8(0, v204 & ~(v204 >> 63), 0);
    v50 = v281;
    v279 = v281;
    if (v203)
    {
      if (v203 == 2)
      {
        v208 = *(v281 + 16);
      }

      else
      {
        v208 = v279;
      }
    }

    else
    {
      v208 = 0;
    }

    v290 = v208;
    if (v204 < 0)
    {
      goto LABEL_425;
    }

    v209 = 0;
    v207 = v298;
    v272 = v281 >> 32;
    v273 = BYTE6(v10);
    v271 = &v299 + v290;
    v286 = v10;
    v283 = (v10 >> 62);
    v282 = v204;
    while (1)
    {
      if (v209 >= v204)
      {
        goto LABEL_382;
      }

      v6 = v209 + 1;
      if (__OFADD__(v209, 1))
      {
        goto LABEL_383;
      }

      v210 = v290 + v209;
      if (v203 == 2)
      {
        if (v210 < *(v50 + 16))
        {
          goto LABEL_392;
        }

        if (v210 >= *(v50 + 24))
        {
          goto LABEL_395;
        }

        v215 = sub_22EFB603C();
        if (!v215)
        {
          goto LABEL_435;
        }

        v212 = v215;
        v50 = v10 & 0x3FFFFFFFFFFFFFFFLL;
        v216 = sub_22EFB605C();
        v214 = v210 - v216;
        if (__OFSUB__(v210, v216))
        {
          goto LABEL_397;
        }
      }

      else
      {
        if (v203 != 1)
        {
          if (v210 >= v273)
          {
            goto LABEL_393;
          }

          LOWORD(v299) = v50;
          BYTE2(v299) = BYTE2(v50);
          BYTE3(v299) = BYTE3(v50);
          BYTE4(v299) = v280;
          BYTE5(v299) = BYTE5(v50);
          BYTE6(v299) = BYTE6(v50);
          BYTE7(v299) = HIBYTE(v50);
          WORD4(v299) = v10;
          BYTE10(v299) = BYTE2(v10);
          BYTE11(v299) = BYTE3(v10);
          BYTE12(v299) = BYTE4(v10);
          BYTE13(v299) = BYTE5(v10);
          v217 = v271[v209];
          goto LABEL_335;
        }

        if (v210 < v279 || v210 >= v272)
        {
          goto LABEL_394;
        }

        v211 = sub_22EFB603C();
        if (!v211)
        {
          goto LABEL_434;
        }

        v212 = v211;
        v50 = v10 & 0x3FFFFFFFFFFFFFFFLL;
        v213 = sub_22EFB605C();
        v214 = v210 - v213;
        if (__OFSUB__(v210, v213))
        {
          goto LABEL_396;
        }
      }

      v217 = *(v212 + v214);
      v50 = v281;
LABEL_335:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E428, &unk_22EFBBC50);
      v218 = swift_allocObject();
      *(v218 + 16) = v289;
      *(v218 + 56) = MEMORY[0x277D84B78];
      *(v218 + 64) = MEMORY[0x277D84BC0];
      *(v218 + 32) = v217;
      v219 = sub_22EFB649C();
      v221 = v220;
      v298 = v207;
      v223 = *(v207 + 16);
      v222 = *(v207 + 24);
      if (v223 >= v222 >> 1)
      {
        sub_22EF9AAC8((v222 > 1), v223 + 1, 1);
        v50 = v281;
        v207 = v298;
      }

      *(v207 + 16) = v223 + 1;
      v224 = v207 + 16 * v223;
      *(v224 + 32) = v219;
      *(v224 + 40) = v221;
      ++v209;
      v204 = v282;
      v10 = v286;
      LODWORD(v203) = v283;
      if (v6 == v282)
      {
        v14 = v288;
LABEL_339:
        *&v299 = v207;
        v225 = sub_22EFB646C();
        v227 = v226;

        v228 = sub_22EF9447C(v225, v227, &v297);

        v229 = v267;
        *(v267 + 14) = v228;
        v230 = v266;
        _os_log_impl(&dword_22EEF5000, v266, v270, "Trying to fold %s into %s but not ECP2", v229, 0x16u);
        v231 = v265;
        swift_arrayDestroy();
        MEMORY[0x2318FC200](v231, -1, -1);
        MEMORY[0x2318FC200](v229, -1, -1);

LABEL_340:
        v50 = v285;
        v7 = v278;
LABEL_70:
        v61 = v293;
        if (v293 == v7)
        {

          goto LABEL_343;
        }

        goto LABEL_71;
      }
    }
  }

  v298 = MEMORY[0x277D84F90];
  sub_22EF9AAC8(0, v153 & ~(v153 >> 63), 0);
  v281 = v6;
  v50 = v283;
  if (v283)
  {
    if (v283 == 2)
    {
      v179 = *(v6 + 16);
    }

    else
    {
      v179 = v281;
    }
  }

  else
  {
    v179 = 0;
  }

  v290 = v179;
  if (v153 < 0)
  {
    goto LABEL_424;
  }

  v180 = 0;
  v178 = v298;
  v279 = v6 >> 32;
  v280 = BYTE6(v151);
  v273 = (&v299 + v290);
  v286 = v153;
  while (2)
  {
    if (v180 >= v153)
    {
      goto LABEL_380;
    }

    v10 = v180 + 1;
    if (__OFADD__(v180, 1))
    {
      goto LABEL_381;
    }

    v181 = v290 + v180;
    if (v50 == 2)
    {
      if (v181 < *(v6 + 16))
      {
        goto LABEL_386;
      }

      if (v181 >= *(v6 + 24))
      {
        goto LABEL_389;
      }

      v186 = sub_22EFB603C();
      if (!v186)
      {
        goto LABEL_433;
      }

      v183 = v186;
      v50 = v151 & 0x3FFFFFFFFFFFFFFFLL;
      v187 = sub_22EFB605C();
      v185 = v181 - v187;
      if (__OFSUB__(v181, v187))
      {
        goto LABEL_391;
      }

LABEL_293:
      v188 = *(v183 + v185);
      v50 = v283;
      goto LABEL_296;
    }

    if (v50 != 1)
    {
      if (v181 >= v280)
      {
        goto LABEL_387;
      }

      LOWORD(v299) = v6;
      BYTE2(v299) = BYTE2(v6);
      BYTE3(v299) = BYTE3(v6);
      BYTE4(v299) = v282;
      BYTE5(v299) = BYTE5(v6);
      BYTE6(v299) = BYTE6(v6);
      BYTE7(v299) = HIBYTE(v6);
      WORD4(v299) = v151;
      BYTE10(v299) = BYTE2(v151);
      BYTE11(v299) = BYTE3(v151);
      BYTE12(v299) = BYTE4(v151);
      BYTE13(v299) = BYTE5(v151);
      v188 = *(&v273->isa + v180);
LABEL_296:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E428, &unk_22EFBBC50);
      v189 = swift_allocObject();
      *(v189 + 16) = v289;
      *(v189 + 56) = MEMORY[0x277D84B78];
      *(v189 + 64) = MEMORY[0x277D84BC0];
      *(v189 + 32) = v188;
      v190 = sub_22EFB649C();
      v298 = v178;
      v193 = *(v178 + 16);
      v192 = *(v178 + 24);
      if (v193 >= v192 >> 1)
      {
        v272 = v190;
        v195 = v191;
        sub_22EF9AAC8((v192 > 1), v193 + 1, 1);
        v50 = v283;
        v191 = v195;
        v190 = v272;
        v178 = v298;
      }

      *(v178 + 16) = v193 + 1;
      v194 = v178 + 16 * v193;
      *(v194 + 32) = v190;
      *(v194 + 40) = v191;
      ++v180;
      v153 = v286;
      if (v10 != v286)
      {
        continue;
      }

      v14 = v288;
      goto LABEL_300;
    }

    break;
  }

  if (v181 < v281 || v181 >= v279)
  {
    goto LABEL_388;
  }

  v182 = sub_22EFB603C();
  if (v182)
  {
    v183 = v182;
    v50 = v151 & 0x3FFFFFFFFFFFFFFFLL;
    v184 = sub_22EFB605C();
    v185 = v181 - v184;
    if (__OFSUB__(v181, v184))
    {
      goto LABEL_390;
    }

    goto LABEL_293;
  }

  __break(1u);
LABEL_433:
  __break(1u);
LABEL_434:
  __break(1u);
LABEL_435:
  __break(1u);
LABEL_436:
  __break(1u);
LABEL_437:
  __break(1u);
LABEL_438:
  __break(1u);
LABEL_439:
  __break(1u);
LABEL_440:
  __break(1u);
LABEL_441:
  __break(1u);
LABEL_442:
  __break(1u);
LABEL_443:
  __break(1u);
LABEL_444:
  __break(1u);
LABEL_445:
  __break(1u);
LABEL_446:

  __break(1u);
}