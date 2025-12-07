double keypath_getTm_0@<D0>(_OWORD *a1@<X3>, uint64_t *a2@<X4>, uint64_t a3@<X8>)
{
  swift_beginAccess();
  v6 = *a2;
  *a3 = *a1;
  *(a3 + 16) = v6;

  return result;
}

uint64_t sub_2664ACDA0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v7 = sub_2664DFE38();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 16);
  if (a3)
  {
    v12 = (v11 == 0) | a4;
    if (!v11 && (a4 & 1) != 0)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v12 = a4;
    if (!v11)
    {
LABEL_4:
      v12 = 1;
    }
  }

  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v7, qword_280F914F0);
  swift_beginAccess();
  (*(v8 + 16))(v10, v13, v7);
  v14 = sub_2664DFE18();
  v15 = sub_2664E06E8();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = a3 != 0;
    v17 = swift_slowAlloc();
    *v17 = 67109888;
    *(v17 + 4) = v16;
    *(v17 + 8) = 1024;
    *(v17 + 10) = v11 == 0;
    *(v17 + 14) = 1024;
    *(v17 + 16) = a4 & 1;
    *(v17 + 20) = 1024;
    *(v17 + 22) = v12 & 1;
    _os_log_impl(&dword_26629C000, v14, v15, "MediaPlaybackProvider#shouldSendPlayCommand seRoutePresent: %{BOOL}d, nonWHA: %{BOOL}d, apartOfWHAGroup: %{BOOL}d, shouldSendPlayCommand: %{BOOL}d...", v17, 0x1Au);
    MEMORY[0x266784AD0](v17, -1, -1);
  }

  (*(v8 + 8))(v10, v7);
  return v12 & 1;
}

unint64_t sub_2664ACFCC(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
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
  result = sub_2664E0388();
  if (v6)
  {
    result = v5;
  }

  if (4 * v3 < result >> 14)
  {
    goto LABEL_14;
  }

  return sub_2664E0428();
}

void sub_2664AD07C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_2664DFE38();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &aBlock[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v5, qword_280F914F0);
  swift_beginAccess();
  (*(v6 + 16))(v8, v9, v5);
  v10 = sub_2664DFE18();
  v11 = sub_2664E06E8();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 134217984;
    *(v12 + 4) = 0x4014000000000000;
    _os_log_impl(&dword_26629C000, v10, v11, "MediaPlaybackProvider#groupLeaderWithTimeOut %f...", v12, 0xCu);
    MEMORY[0x266784AD0](v12, -1, -1);
  }

  (*(v6 + 8))(v8, v5);
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  aBlock[4] = sub_2664AEA0C;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2664365E0;
  aBlock[3] = &block_descriptor_104;
  v14 = _Block_copy(aBlock);

  MRAVEndpointGetMyGroupLeaderWithTimeout();
  _Block_release(v14);
}

uint64_t sub_2664AD2F4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, uint64_t a11)
{
  v14 = MROriginCopy();
  if (a1)
  {
    UniqueIdentifier = MROriginGetUniqueIdentifier();
  }

  else
  {
    UniqueIdentifier = 0;
  }

  v16 = a2[5];
  v17 = a2[6];
  __swift_project_boxed_opaque_existential_1(a2 + 2, v16);
  v18 = swift_allocObject();
  *(v18 + 16) = a7;
  *(v18 + 24) = a8;
  *(v18 + 32) = a9;
  *(v18 + 40) = v14;
  *(v18 + 48) = a1;
  *(v18 + 56) = a2;
  *(v18 + 64) = a10;
  *(v18 + 68) = UniqueIdentifier;
  *(v18 + 72) = a1 == 0;
  *(v18 + 80) = a11;
  v19 = *(v17 + 8);

  v19(a3, a4, a5, a6, sub_2664AEB08, v18, v16, v17);
}

void sub_2664AD444(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [objc_allocWithZone(MEMORY[0x277D27850]) init];
  v7 = v6;
  if (a1)
  {
    [v6 setOrigin_];
  }

  v8 = [objc_allocWithZone(MEMORY[0x277D27828]) init];
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;
  v11[4] = sub_2664B7380;
  v11[5] = v9;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_26634045C;
  v11[3] = &block_descriptor_153;
  v10 = _Block_copy(v11);

  [v8 sendCommand:121 toDestination:v7 withOptions:0 completion:v10];
  _Block_release(v10);
}

id sub_2664AD590(id a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_2664DFE38();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v49[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v49[-v11];
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v49[-v14];
  MEMORY[0x28223BE20](v13);
  v17 = &v49[-v16];
  if (a1)
  {
    if (a3)
    {
      v18 = a1;
      [v18 mutableCopy];
      sub_2664E09E8();
      swift_unknownObjectRelease();
      sub_2662C1744(0, &qword_280072C48, 0x277D27850);
      if (swift_dynamicCast())
      {
        v19 = v53;
        v20 = sub_2664E02A8();
        [v19 setOriginatingOutputDeviceUID_];

        if (qword_280F914E8 != -1)
        {
          swift_once();
        }

        v21 = __swift_project_value_buffer(v5, qword_280F914F0);
        swift_beginAccess();
        (*(v6 + 16))(v17, v21, v5);
        a1 = v19;
        v22 = sub_2664DFE18();
        v23 = sub_2664E06C8();

        if (os_log_type_enabled(v22, v23))
        {
          v24 = swift_slowAlloc();
          v52 = swift_slowAlloc();
          v53 = v52;
          *v24 = 136446210;
          v25 = a1;
          v50 = v23;
          v26 = v25;
          v27 = [v25 description];
          v28 = sub_2664E02C8();
          v51 = v18;
          v29 = v28;
          v31 = v30;

          v32 = sub_2662A320C(v29, v31, &v53);

          *(v24 + 4) = v32;
          _os_log_impl(&dword_26629C000, v22, v50, "MediaPlaybackProvider#createDestinationForSERouteId resolved destination: %{public}s", v24, 0xCu);
          v33 = v52;
          __swift_destroy_boxed_opaque_existential_1Tm(v52);
          MEMORY[0x266784AD0](v33, -1, -1);
          MEMORY[0x266784AD0](v24, -1, -1);
        }

        else
        {
        }

        (*(v6 + 8))(v17, v5);
      }

      else
      {
        if (qword_280F914E8 != -1)
        {
          swift_once();
        }

        v44 = __swift_project_value_buffer(v5, qword_280F914F0);
        swift_beginAccess();
        (*(v6 + 16))(v15, v44, v5);
        v45 = sub_2664DFE18();
        v46 = sub_2664E06D8();
        if (os_log_type_enabled(v45, v46))
        {
          v47 = swift_slowAlloc();
          *v47 = 0;
          _os_log_impl(&dword_26629C000, v45, v46, "MediaPlaybackProvider#createDestinationForSERouteId destination mutable copy failed", v47, 2u);
          MEMORY[0x266784AD0](v47, -1, -1);
        }

        (*(v6 + 8))(v15, v5);
      }
    }

    else
    {
      v38 = qword_280F914E8;
      v39 = a1;
      if (v38 != -1)
      {
        swift_once();
      }

      v40 = __swift_project_value_buffer(v5, qword_280F914F0);
      swift_beginAccess();
      (*(v6 + 16))(v12, v40, v5);
      v41 = sub_2664DFE18();
      v42 = sub_2664E06D8();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        *v43 = 0;
        _os_log_impl(&dword_26629C000, v41, v42, "MediaPlaybackProvider#createDestinationForSERouteId nil seRouteId", v43, 2u);
        MEMORY[0x266784AD0](v43, -1, -1);
      }

      (*(v6 + 8))(v12, v5);
    }
  }

  else
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v34 = __swift_project_value_buffer(v5, qword_280F914F0);
    swift_beginAccess();
    (*(v6 + 16))(v9, v34, v5);
    v35 = sub_2664DFE18();
    v36 = sub_2664E06D8();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_26629C000, v35, v36, "MediaPlaybackProvider#createDestinationForSERouteId nil destination passed in", v37, 2u);
      MEMORY[0x266784AD0](v37, -1, -1);
    }

    (*(v6 + 8))(v9, v5);
    return 0;
  }

  return a1;
}

uint64_t sub_2664ADBE8(char *a1, uint64_t a2, void *a3, void *a4, void (*a5)(uint64_t, uint64_t), uint64_t a6, void *a7, char a8)
{
  v86 = a2;
  v85 = sub_2664DFE08();
  v83 = *(v85 - 8);
  v15 = *(v83 + 64);
  v16 = MEMORY[0x28223BE20](v85);
  MEMORY[0x28223BE20](v16);
  v84 = &v75 - v17;
  v18 = sub_2664DFE38();
  v19 = *(v18 - 8);
  v81 = v18;
  v82 = v19;
  v20 = MEMORY[0x28223BE20](v18);
  v76 = &v75 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v75 = &v75 - v23;
  MEMORY[0x28223BE20](v22);
  v78 = &v75 - v24;
  v25 = swift_allocObject();
  *(v25 + 16) = a3;
  *(v25 + 24) = a4;
  v80 = a5;
  *(v25 + 32) = a5;
  *(v25 + 40) = a6;
  *(v25 + 48) = a7;
  v26 = a8;
  *(v25 + 56) = a8;
  v77 = a3;
  v79 = a4;

  v27 = a7;
  v28 = [a1 outputDeviceUIDs];
  v29 = sub_2664E04A8();

  v30 = *(v29 + 16);

  if (v30 || (v31 = [a1 hashedOutputDeviceUIDs], v32 = sub_2664E04A8(), v31, v33 = *(v32 + 16), , v33))
  {
    v82 = a1;
    v34 = swift_allocObject();
    *(v34 + 16) = sub_2664B6BBC;
    *(v34 + 24) = v25;
    v35 = qword_280F91508;
    v81 = v25;

    if (v35 != -1)
    {
      swift_once();
    }

    v36 = qword_280F91D48;
    v37 = v84;
    sub_2664DFDE8();
    v38 = v83;
    v39 = v85;
    (*(v83 + 16))(&v75 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v37, v85);
    v40 = (*(v38 + 80) + 33) & ~*(v38 + 80);
    v41 = swift_allocObject();
    *(v41 + 16) = "mediaPlaybackProviderCurrentDeviceApartWHAGroup";
    *(v41 + 24) = 47;
    *(v41 + 32) = 2;
    (*(v38 + 32))(v41 + v40, &v75 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v39);
    v42 = (v41 + ((v15 + v40 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v42 = sub_2662D31E8;
    v42[1] = v34;

    v43 = sub_2664E0848();
    sub_2664DFDC8(v43, &dword_26629C000, v36, "mediaPlaybackProviderCurrentDeviceApartWHAGroup", 47, 2, v37, " enableTelemetry=YES ", 21, 2, MEMORY[0x277D84F90]);
    v44 = swift_allocObject();
    *(v44 + 16) = sub_2664B7424;
    *(v44 + 24) = v41;
    v45 = swift_allocObject();
    *(v45 + 16) = sub_2662D31EC;
    *(v45 + 24) = v44;
    v46 = swift_allocObject();
    v47 = v82;
    v46[2] = v82;
    v46[3] = sub_2662D31F0;
    v46[4] = v45;
    aBlock[4] = sub_2662D31C0;
    aBlock[5] = v46;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2664B740C;
    aBlock[3] = &block_descriptor_334;
    v48 = _Block_copy(aBlock);

    v49 = v47;

    MEMORY[0x266784170](v86, v48);
    _Block_release(v48);

    (*(v38 + 8))(v37, v39);
  }

  else
  {
    v86 = a6;
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v85 = v27;
    v51 = v81;
    v52 = __swift_project_value_buffer(v81, qword_280F914F0);
    swift_beginAccess();
    v53 = *(v82 + 2);
    v54 = v78;
    v53(v78, v52, v51);
    v55 = sub_2664DFE18();
    v56 = sub_2664E06C8();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      *v57 = 0;
      _os_log_impl(&dword_26629C000, v55, v56, "MediaPlaybackProvider#currentDeviceApartOfWHAGroup: no hashed routes, skipping", v57, 2u);
      MEMORY[0x266784AD0](v57, -1, -1);
    }

    v58 = v81;
    v59 = *(v82 + 1);
    v82 += 8;
    v59(v54, v81);
    v60 = [v77 outputDeviceUIDs];
    v61 = sub_2664E04A8();

    v62 = *(v61 + 16);

    if (v62)
    {
      v63 = v76;
      v53(v76, v52, v58);
      v64 = sub_2664DFE18();
      v65 = sub_2664E06E8();
      if (os_log_type_enabled(v64, v65))
      {
        v66 = swift_slowAlloc();
        *v66 = 0;
        _os_log_impl(&dword_26629C000, v64, v65, "PlaybackStarter#send remote WHA destination with immediatelyStartPlayback:true", v66, 2u);
        v67 = v66;
        v58 = v81;
        MEMORY[0x266784AD0](v67, -1, -1);
      }

      v59(v63, v58);
      [v79 setShouldImmediatelyStartPlayback_];
      v68 = v85;
      v69 = 0;
    }

    else
    {
      v70 = v75;
      v53(v75, v52, v58);
      v71 = sub_2664DFE18();
      v72 = sub_2664E06E8();
      if (os_log_type_enabled(v71, v72))
      {
        v73 = swift_slowAlloc();
        *v73 = 67240192;
        *(v73 + 4) = v26 & 1;
        _os_log_impl(&dword_26629C000, v71, v72, "PlaybackStarter#send Sending to destination with immediatelyStartPlayback:%{BOOL,public}d", v73, 8u);
        v74 = v73;
        v58 = v81;
        MEMORY[0x266784AD0](v74, -1, -1);
      }

      v59(v70, v58);
      [v79 setShouldImmediatelyStartPlayback_];
      v68 = v85;
      v69 = 1;
    }

    v80(v68, v69);
  }
}

uint64_t sub_2664AE454(void *a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4)
{
  v47 = a3;
  v7 = sub_2664DFE38();
  v44 = *(v7 - 8);
  v45 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_2664DFE08();
  v10 = *(v46 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v46);
  MEMORY[0x28223BE20](v12);
  v14 = &v44 - v13;
  v15 = [a1 outputDeviceUIDs];
  v16 = sub_2664E04A8();

  v17 = *(v16 + 16);

  if (v17 || (v18 = [a1 hashedOutputDeviceUIDs], v19 = sub_2664E04A8(), v18, v20 = *(v19 + 16), , v20))
  {
    v44 = a1;
    v45 = a2;
    v21 = swift_allocObject();
    *(v21 + 16) = v47;
    *(v21 + 24) = a4;
    v22 = qword_280F91508;

    if (v22 != -1)
    {
      swift_once();
    }

    v23 = qword_280F91D48;
    sub_2664DFDE8();
    v24 = v46;
    (*(v10 + 16))(&v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v14);
    v25 = (*(v10 + 80) + 33) & ~*(v10 + 80);
    v26 = swift_allocObject();
    *(v26 + 16) = "mediaPlaybackProviderCurrentDeviceApartWHAGroup";
    *(v26 + 24) = 47;
    *(v26 + 32) = 2;
    (*(v10 + 32))(v26 + v25, &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v24);
    v27 = (v26 + ((v11 + v25 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v27 = sub_2662D2B60;
    v27[1] = v21;

    v28 = sub_2664E0848();
    sub_2664DFDC8(v28, &dword_26629C000, v23, "mediaPlaybackProviderCurrentDeviceApartWHAGroup", 47, 2, v14, " enableTelemetry=YES ", 21, 2, MEMORY[0x277D84F90]);
    v29 = swift_allocObject();
    *(v29 + 16) = sub_2662D2B68;
    *(v29 + 24) = v26;
    v30 = swift_allocObject();
    *(v30 + 16) = sub_2662D2B6C;
    *(v30 + 24) = v29;
    v31 = swift_allocObject();
    v32 = v44;
    v31[2] = v44;
    v31[3] = sub_2662D2B74;
    v31[4] = v30;
    aBlock[4] = sub_2662D2B7C;
    aBlock[5] = v31;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2664B740C;
    aBlock[3] = &block_descriptor_48;
    v33 = _Block_copy(aBlock);

    v34 = v32;

    MEMORY[0x266784170](v45, v33);
    _Block_release(v33);

    return (*(v10 + 8))(v14, v24);
  }

  else
  {
    v36 = v47;
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v37 = v45;
    v38 = __swift_project_value_buffer(v45, qword_280F914F0);
    swift_beginAccess();
    v39 = v44;
    (*(v44 + 2))(v9, v38, v37);
    v40 = sub_2664DFE18();
    v41 = sub_2664E06C8();
    v42 = v36;
    if (os_log_type_enabled(v40, v41))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&dword_26629C000, v40, v41, "MediaPlaybackProvider#currentDeviceApartOfWHAGroup: no hashed routes, skipping", v43, 2u);
      MEMORY[0x266784AD0](v43, -1, -1);
    }

    v39[1](v9, v37);
    return v42(0);
  }
}

uint64_t objectdestroy_176Tm(uint64_t a1)
{
  v3 = *(v1 + 32);
  if (v3 != 1)
  {
  }

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

uint64_t sub_2664AEC5C(_BYTE *__src, _BYTE *a2)
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

uint64_t sub_2664AED14(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      if (result < 0)
      {
        __break(1u);
      }

      else
      {
        return 0;
      }
    }

    else
    {
      sub_2664DE148();
      swift_allocObject();
      sub_2664DE118();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_2664DE2B8();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

uint64_t sub_2664AEDB4(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_2664DE148();
  swift_allocObject();
  result = sub_2664DE0F8();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_2664DE2B8();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_2664AEE30(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_2664DE148();
  swift_allocObject();
  result = sub_2664DE0F8();
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

uint64_t sub_2664AEEB4(unsigned int a1, uint64_t a2)
{
  v74 = a1;
  v3 = sub_2664DFE38();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v72 = &v66 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v71 = &v66 - v11;
  MEMORY[0x28223BE20](v10);
  v13 = &v66 - v12;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v3, qword_280F914F0);
  swift_beginAccess();
  v73 = *(v4 + 16);
  v73(v13, v14, v3);
  v15 = sub_2664DFE18();
  v16 = sub_2664E06C8();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = v4;
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_26629C000, v15, v16, "MediaPlaybackProvider#allowCommandForRequest...", v18, 2u);
    v19 = v18;
    v4 = v17;
    MEMORY[0x266784AD0](v19, -1, -1);
  }

  v22 = *(v4 + 8);
  v20 = (v4 + 8);
  v21 = v22;
  v22(v13, v3);
  if (qword_280071CC0 != -1)
  {
    swift_once();
  }

  v23 = qword_280073F68;
  sub_2662A98AC();
  result = *MEMORY[0x277D27D08];
  if (*MEMORY[0x277D27D08])
  {
    if (*(a2 + 16))
    {
      v25 = sub_26634DAA8(result);
      if (v26)
      {
        sub_2662A01E8(*(a2 + 56) + 32 * v25, v77);
        if (swift_dynamicCast())
        {
          v27 = v75;
          v28 = v76;
          v29 = HIBYTE(v76) & 0xF;
          if ((v76 & 0x2000000000000000) == 0)
          {
            v29 = v75 & 0xFFFFFFFFFFFFLL;
          }

          if (v29)
          {
            if (qword_280071CB8 != -1)
            {
              swift_once();
            }

            swift_beginAccess();
            v30 = off_280073F60;
            v31 = v74;
            if (*(off_280073F60 + 2))
            {
              v32 = sub_26634DB5C(v74);
              if (v33)
              {
                v34 = (v30[7] + 16 * v32);
                v35 = v34[1];
                v70 = *v34;
                v72 = v35;
                swift_endAccess();
                swift_beginAccess();

                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v75 = off_280073F60;
                off_280073F60 = 0x8000000000000000;
                sub_26634F7D4(v27, v28, v74, isUniquelyReferenced_nonNull_native);
                off_280073F60 = v75;
                swift_endAccess();
                v37 = v71;
                v73(v71, v14, v3);
                v38 = v72;

                v39 = sub_2664DFE18();
                v40 = sub_2664E06C8();

                if (os_log_type_enabled(v39, v40))
                {
                  v68 = v40;
                  v67 = v27;
                  v69 = v23;
                  v73 = v20;
                  v41 = swift_slowAlloc();
                  v42 = swift_slowAlloc();
                  v77[0] = v42;
                  *v41 = 136315650;
                  v43 = v42;
                  if (v74)
                  {
                    if (v74 == 1)
                    {
                      v44 = 0xD00000000000001DLL;
                    }

                    else
                    {
                      v44 = 0xD000000000000018;
                    }

                    if (v74 == 1)
                    {
                      v45 = "mandPrepareForSetQueue";
                    }

                    else
                    {
                      v45 = "MRMediaRemoteCommandSendQueue";
                    }
                  }

                  else
                  {
                    v44 = 0xD000000000000026;
                    v45 = "led";
                  }

                  v63 = sub_2662A320C(v44, v45 | 0x8000000000000000, v77);

                  *(v41 + 4) = v63;
                  *(v41 + 12) = 2080;
                  v60 = v70;
                  v38 = v72;
                  *(v41 + 14) = sub_2662A320C(v70, v72, v77);
                  *(v41 + 22) = 2080;
                  v64 = v67;
                  *(v41 + 24) = sub_2662A320C(v67, v28, v77);
                  _os_log_impl(&dword_26629C000, v39, v68, "MediaPlaybackProvider#allowCommandForRequest cmd: %s, currRefId: '%s', newRefId: '%s'", v41, 0x20u);
                  swift_arrayDestroy();
                  MEMORY[0x266784AD0](v43, -1, -1);
                  MEMORY[0x266784AD0](v41, -1, -1);

                  v21(v71, v3);
                  v27 = v64;
                }

                else
                {

                  v21(v37, v3);
                  v60 = v70;
                }

                if (v60 == v27 && v38 == v28)
                {

                  v59 = 0;
                }

                else
                {
                  v65 = sub_2664E0D88();

                  v59 = v65 ^ 1;
                }

                goto LABEL_41;
              }
            }

            swift_endAccess();
            v46 = v72;
            v73(v72, v14, v3);

            v47 = sub_2664DFE18();
            v48 = sub_2664E06C8();

            if (os_log_type_enabled(v47, v48))
            {
              LODWORD(v71) = v48;
              v73 = v20;
              v49 = v31;
              v50 = swift_slowAlloc();
              v51 = swift_slowAlloc();
              v77[0] = v51;
              *v50 = 136315394;
              v52 = v51;
              if (v49)
              {
                if (v49 == 1)
                {
                  v53 = 0xD00000000000001DLL;
                }

                else
                {
                  v53 = 0xD000000000000018;
                }

                if (v49 == 1)
                {
                  v54 = "mandPrepareForSetQueue";
                }

                else
                {
                  v54 = "MRMediaRemoteCommandSendQueue";
                }
              }

              else
              {
                v53 = 0xD000000000000026;
                v54 = "led";
              }

              v61 = sub_2662A320C(v53, v54 | 0x8000000000000000, v77);

              *(v50 + 4) = v61;
              *(v50 + 12) = 2080;
              *(v50 + 14) = sub_2662A320C(v27, v28, v77);
              _os_log_impl(&dword_26629C000, v47, v71, "MediaPlaybackProvider#allowCommandForRequest cmd: %s associated with '%s'", v50, 0x16u);
              swift_arrayDestroy();
              MEMORY[0x266784AD0](v52, -1, -1);
              MEMORY[0x266784AD0](v50, -1, -1);

              v21(v72, v3);
              v31 = v74;
            }

            else
            {

              v21(v46, v3);
            }

            swift_beginAccess();
            v62 = swift_isUniquelyReferenced_nonNull_native();
            v75 = off_280073F60;
            off_280073F60 = 0x8000000000000000;
            sub_26634F7D4(v27, v28, v31, v62);
            off_280073F60 = v75;
            swift_endAccess();
LABEL_40:
            v59 = 1;
LABEL_41:
            sub_2662AA89C();
            return v59 & 1;
          }
        }
      }
    }

    if (qword_280071CB8 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v55 = swift_isUniquelyReferenced_nonNull_native();
    v75 = off_280073F60;
    off_280073F60 = 0x8000000000000000;
    sub_26634F7D4(0, 0xE000000000000000, v74, v55);
    off_280073F60 = v75;
    swift_endAccess();
    v73(v7, v14, v3);
    v56 = sub_2664DFE18();
    v57 = sub_2664E06C8();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      *v58 = 0;
      _os_log_impl(&dword_26629C000, v56, v57, "MediaPlaybackProvider#allowCommandForRequest refId empty or nil, allowed...", v58, 2u);
      MEMORY[0x266784AD0](v58, -1, -1);
    }

    v21(v7, v3);
    goto LABEL_40;
  }

  __break(1u);
  return result;
}

uint64_t sub_2664AF830(void *a1, void *a2, char *a3, int a4, uint64_t (*a5)(void *), uint64_t a6)
{
  v44 = a2;
  v45 = a5;
  v40 = a4;
  v41 = a1;
  v39 = *v6;
  v9 = sub_2664DFE38();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2664DFE08();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v17 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v38 - v18;
  v43 = a3;
  if (sub_2664AEEB4(1u, a3))
  {
    v38 = a6;
    v20 = [v44 outputDeviceUIDs];
    v21 = sub_2664E04A8();

    v22 = *(v21 + 16);

    if (qword_280F91508 != -1)
    {
      swift_once();
    }

    v23 = qword_280F91D48;
    sub_2664DFDE8();
    (*(v14 + 16))(v17, v19, v13);
    v24 = (*(v14 + 80) + 33) & ~*(v14 + 80);
    v25 = swift_allocObject();
    *(v25 + 16) = "mediaPlaybackProviderSend";
    *(v25 + 24) = 25;
    *(v25 + 32) = 2;
    (*(v14 + 32))(v25 + v24, v17, v13);
    v26 = (v25 + ((v15 + v24 + 7) & 0xFFFFFFFFFFFFFFF8));
    v27 = v38;
    *v26 = v45;
    v26[1] = v27;

    v28 = sub_2664E0848();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800724D8, &unk_2664E3920);
    v29 = swift_allocObject();
    v30 = MEMORY[0x277D83B88];
    *(v29 + 16) = xmmword_2664E36F0;
    v31 = MEMORY[0x277D83C10];
    *(v29 + 56) = v30;
    *(v29 + 64) = v31;
    *(v29 + 32) = v22;
    sub_2664DFDC8(v28, &dword_26629C000, v23, "mediaPlaybackProviderSend", 25, 2, v19, "outputDeviceCount=%{signpost.telemetry:number1,public}d enableTelemetry=YES ", 76, 2, v29);

    v32 = swift_allocObject();
    *(v32 + 16) = sub_2664B6BD0;
    *(v32 + 24) = v25;

    sub_266490554(sub_2664B6BD4, v32, v41, v43, v44, v42, v40 & 1, v39);

    return (*(v14 + 8))(v19, v13);
  }

  else
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v34 = __swift_project_value_buffer(v9, qword_280F914F0);
    swift_beginAccess();
    (*(v10 + 16))(v12, v34, v9);
    v35 = sub_2664DFE18();
    v36 = sub_2664E06D8();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_26629C000, v35, v36, "MediaPlaybackProvider#send preventing re-send MRMediaRemoteCommandSendQueue for same Siri request", v37, 2u);
      MEMORY[0x266784AD0](v37, -1, -1);
    }

    (*(v10 + 8))(v12, v9);
    memset(v46, 0, sizeof(v46));
    return v45(v46);
  }
}

unsigned __int8 *sub_2664AFD44(uint64_t a1, unint64_t a2)
{
  v4 = sub_2664DFE38();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v98 = &v94 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v97 = &v94 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v96 = &v94 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v95 = &v94 - v13;
  MEMORY[0x28223BE20](v12);
  v15 = &v94 - v14;
  v103 = a1;
  v104 = a2;
  v105 = 47;
  v106 = 0xE100000000000000;
  sub_2662D2EBC();
  v16 = sub_2664E0968();
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v4, qword_280F914F0);
  swift_beginAccess();
  v18 = *(v5 + 16);
  v100 = v5 + 16;
  v101 = v17;
  v99 = v18;
  v18(v15, v17, v4);

  v19 = sub_2664DFE18();
  v20 = sub_2664E06C8();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = v5;
    v23 = v4;
    v24 = swift_slowAlloc();
    v105 = v24;
    *v21 = 136315394;
    *(v21 + 4) = sub_2662A320C(a1, a2, &v105);
    *(v21 + 12) = 2080;
    v25 = MEMORY[0x2667834D0](v16, MEMORY[0x277D837D0]);
    v27 = sub_2662A320C(v25, v26, &v105);

    *(v21 + 14) = v27;
    _os_log_impl(&dword_26629C000, v19, v20, "MediaPlaybackProvider#spotlightIdentitfierAsCollection library grouping splitting identifier: %s into components: %s", v21, 0x16u);
    swift_arrayDestroy();
    v28 = v24;
    v4 = v23;
    MEMORY[0x266784AD0](v28, -1, -1);
    MEMORY[0x266784AD0](v21, -1, -1);

    v29 = v22;
  }

  else
  {

    v29 = v5;
  }

  v30 = *(v29 + 8);
  result = v30(v15, v4);
  if (v16[2] != 3)
  {

    v42 = v98;
    v99(v98, v101, v4);
    v43 = sub_2664DFE18();
    v44 = sub_2664E06C8();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&dword_26629C000, v43, v44, "MediaPlaybackProvider#spotlightIdentitfierAsCollection identifier didn't have 3 components", v45, 2u);
      MEMORY[0x266784AD0](v45, -1, -1);
    }

    v46 = v42;
LABEL_81:
    v30(v46, v4);
    return 0;
  }

  v33 = v16[6];
  v32 = v16[7];
  v34 = HIBYTE(v32) & 0xF;
  v35 = v33 & 0xFFFFFFFFFFFFLL;
  if ((v32 & 0x2000000000000000) != 0)
  {
    v36 = HIBYTE(v32) & 0xF;
  }

  else
  {
    v36 = v33 & 0xFFFFFFFFFFFFLL;
  }

  if (!v36)
  {
LABEL_72:
    v61 = v97;
    v99(v97, v101, v4);

    v62 = sub_2664DFE18();
    v63 = sub_2664E06C8();

    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v105 = v65;
      *v64 = 136315138;
      v66 = v4;
      v67 = v16[6];
      v68 = v16[7];

      v69 = sub_2662A320C(v67, v68, &v105);
      v70 = v30;
      v71 = v69;

      *(v64 + 4) = v71;
      _os_log_impl(&dword_26629C000, v62, v63, "MediaPlaybackProvider#spotlightIdentitfierAsCollection could not parse MPMediaEntityType from component: %s", v64, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v65);
      MEMORY[0x266784AD0](v65, -1, -1);
      MEMORY[0x266784AD0](v64, -1, -1);

      v72 = v97;
      goto LABEL_79;
    }

LABEL_80:

    v46 = v61;
    goto LABEL_81;
  }

  if ((v32 & 0x1000000000000000) != 0)
  {

    v38 = sub_26640687C();
    v74 = v73;

    if ((v74 & 1) == 0)
    {
      goto LABEL_75;
    }

    goto LABEL_72;
  }

  if ((v32 & 0x2000000000000000) != 0)
  {
    v105 = v16[6];
    v106 = v32 & 0xFFFFFFFFFFFFFFLL;
    if (v33 == 43)
    {
      if (v34)
      {
        if (--v34)
        {
          v38 = 0;
          v53 = &v105 + 1;
          while (1)
          {
            v54 = *v53 - 48;
            if (v54 > 9)
            {
              break;
            }

            v55 = 10 * v38;
            if ((v38 * 10) >> 64 != (10 * v38) >> 63)
            {
              break;
            }

            v38 = v55 + v54;
            if (__OFADD__(v55, v54))
            {
              break;
            }

            ++v53;
            if (!--v34)
            {
              goto LABEL_71;
            }
          }
        }

        goto LABEL_70;
      }
    }

    else
    {
      if (v33 != 45)
      {
        if (v34)
        {
          v38 = 0;
          v58 = &v105;
          while (1)
          {
            v59 = *v58 - 48;
            if (v59 > 9)
            {
              break;
            }

            v60 = 10 * v38;
            if ((v38 * 10) >> 64 != (10 * v38) >> 63)
            {
              break;
            }

            v38 = v60 + v59;
            if (__OFADD__(v60, v59))
            {
              break;
            }

            v58 = (v58 + 1);
            if (!--v34)
            {
              goto LABEL_71;
            }
          }
        }

        goto LABEL_70;
      }

      if (v34)
      {
        if (--v34)
        {
          v38 = 0;
          v47 = &v105 + 1;
          while (1)
          {
            v48 = *v47 - 48;
            if (v48 > 9)
            {
              break;
            }

            v49 = 10 * v38;
            if ((v38 * 10) >> 64 != (10 * v38) >> 63)
            {
              break;
            }

            v38 = v49 - v48;
            if (__OFSUB__(v49, v48))
            {
              break;
            }

            ++v47;
            if (!--v34)
            {
              goto LABEL_71;
            }
          }
        }

        goto LABEL_70;
      }

LABEL_89:
      __break(1u);
LABEL_90:
      __break(1u);
    }

    __break(1u);
    return result;
  }

  if ((v33 & 0x1000000000000000) == 0)
  {
    goto LABEL_87;
  }

  for (result = ((v32 & 0xFFFFFFFFFFFFFFFLL) + 32); ; result = sub_2664E0B78())
  {
    v37 = *result;
    if (v37 == 43)
    {
      if (v35 < 1)
      {
        goto LABEL_90;
      }

      v34 = v35 - 1;
      if (v35 != 1)
      {
        v38 = 0;
        if (!result)
        {
          goto LABEL_62;
        }

        v50 = result + 1;
        while (1)
        {
          v51 = *v50 - 48;
          if (v51 > 9)
          {
            break;
          }

          v52 = 10 * v38;
          if ((v38 * 10) >> 64 != (10 * v38) >> 63)
          {
            break;
          }

          v38 = v52 + v51;
          if (__OFADD__(v52, v51))
          {
            break;
          }

          ++v50;
          if (!--v34)
          {
            goto LABEL_71;
          }
        }
      }
    }

    else if (v37 == 45)
    {
      if (v35 < 1)
      {
        __break(1u);
        goto LABEL_89;
      }

      v34 = v35 - 1;
      if (v35 != 1)
      {
        v38 = 0;
        if (!result)
        {
          goto LABEL_62;
        }

        v39 = result + 1;
        while (1)
        {
          v40 = *v39 - 48;
          if (v40 > 9)
          {
            break;
          }

          v41 = 10 * v38;
          if ((v38 * 10) >> 64 != (10 * v38) >> 63)
          {
            break;
          }

          v38 = v41 - v40;
          if (__OFSUB__(v41, v40))
          {
            break;
          }

          ++v39;
          if (!--v34)
          {
            goto LABEL_71;
          }
        }
      }
    }

    else if (v35)
    {
      v38 = 0;
      if (!result)
      {
LABEL_62:
        LOBYTE(v34) = 0;
        goto LABEL_71;
      }

      while (1)
      {
        v56 = *result - 48;
        if (v56 > 9)
        {
          break;
        }

        v57 = 10 * v38;
        if ((v38 * 10) >> 64 != (10 * v38) >> 63)
        {
          break;
        }

        v38 = v57 + v56;
        if (__OFADD__(v57, v56))
        {
          break;
        }

        ++result;
        if (!--v35)
        {
          goto LABEL_62;
        }
      }
    }

LABEL_70:
    v38 = 0;
    LOBYTE(v34) = 1;
LABEL_71:
    v102 = v34;
    if (v34)
    {
      goto LABEL_72;
    }

LABEL_75:
    if (v16[2] >= 3uLL)
    {
      break;
    }

    __break(1u);
LABEL_87:
    ;
  }

  v75 = v38;
  v76 = v16[8];
  v77 = v16[9];

  v78 = sub_26648B718(v76, v77);
  if (v79)
  {
    v61 = v96;
    v99(v96, v101, v4);

    v62 = sub_2664DFE18();
    v80 = sub_2664E06C8();

    if (!os_log_type_enabled(v62, v80))
    {
      goto LABEL_80;
    }

    v81 = swift_slowAlloc();
    v82 = swift_slowAlloc();
    v105 = v82;
    *v81 = 136315138;
    v66 = v4;
    v83 = v16[8];
    v84 = v16[9];

    v85 = sub_2662A320C(v83, v84, &v105);
    v70 = v30;
    v86 = v85;

    *(v81 + 4) = v86;
    _os_log_impl(&dword_26629C000, v62, v80, "MediaPlaybackProvider#spotlightIdentitfierAsCollection could not parse persistentID from component: %s", v81, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v82);
    MEMORY[0x266784AD0](v82, -1, -1);
    MEMORY[0x266784AD0](v81, -1, -1);

    v72 = v96;
LABEL_79:
    v70(v72, v66);
    return 0;
  }

  else
  {
    v87 = v78;

    v88 = sub_2662D44A0(v87);
    v89 = v95;
    v99(v95, v101, v4);
    v90 = sub_2664DFE18();
    v91 = sub_2664E06C8();
    if (os_log_type_enabled(v90, v91))
    {
      v92 = swift_slowAlloc();
      *v92 = 134218240;
      *(v92 + 4) = v75;
      *(v92 + 12) = 2048;
      *(v92 + 14) = v88;
      _os_log_impl(&dword_26629C000, v90, v91, "MediaPlaybackProvider#spotlightIdentitfierAsCollection type:%ld, persistentID:%llu", v92, 0x16u);
      v93 = v92;
      v89 = v95;
      MEMORY[0x266784AD0](v93, -1, -1);
    }

    v30(v89, v4);
    return v75;
  }
}

uint64_t sub_2664B07A8(void *a1, void *a2)
{
  v4 = sub_2664DFE38();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v37 = &v36 - v9;
  v10 = a1[2];
  if (v10 == 1 && (v11 = v4, v12 = a1[4], v13 = a1[5], , v14 = sub_2664AFD44(v12, v13), v16 = v15, v18 = v17, v4 = v11, , (v18 & 1) == 0) && v14 == 1 && (v19 = [a2 collectionWithPersistentID:v16 groupingType:6]) != 0)
  {
    v20 = v19;
    v21 = [v19 items];

    sub_2662C1744(0, &qword_280072D58, 0x277CD5DE0);
    v22 = sub_2664E04A8();

    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v23 = __swift_project_value_buffer(v11, qword_280F914F0);
    swift_beginAccess();
    v24 = v37;
    (*(v5 + 16))(v37, v23, v4);
    v25 = sub_2664DFE18();
    v26 = sub_2664E06C8();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_26629C000, v25, v26, "MediaPlaybackProvider#itemsFromSpotlight returing collection items", v27, 2u);
      MEMORY[0x266784AD0](v27, -1, -1);
    }

    (*(v5 + 8))(v24, v4);
  }

  else
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v28 = __swift_project_value_buffer(v4, qword_280F914F0);
    swift_beginAccess();
    (*(v5 + 16))(v8, v28, v4);
    v29 = sub_2664DFE18();
    v30 = sub_2664E06C8();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_26629C000, v29, v30, "MediaPlaybackProvider#itemsFromSpotlight converting identifiers into entity items", v31, 2u);
      MEMORY[0x266784AD0](v31, -1, -1);
    }

    (*(v5 + 8))(v8, v4);
    v22 = MEMORY[0x277D84F90];
    v40 = MEMORY[0x277D84F90];
    if (v10)
    {
      v32 = a1 + 5;
      do
      {
        v33 = *v32;
        v39[0] = *(v32 - 1);
        v39[1] = v33;

        sub_266493D38(v39, a2, &v38);

        if (v38)
        {
          MEMORY[0x266783490](v34);
          if (*((v40 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v40 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_2664E04C8();
          }

          sub_2664E0518();
          v22 = v40;
        }

        v32 += 2;
        --v10;
      }

      while (v10);
    }
  }

  return v22;
}

unint64_t sub_2664B0BF0(uint64_t a1, uint64_t a2)
{
  v2 = sub_2664E0CB8();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_2664B0C3C(unint64_t a1, void *a2, uint64_t a3)
{
  if (a1 && (v5 = a1, v6 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInt_], v15 = v6, MEMORY[0x28223BE20](v6), v12[2] = &v15, LOBYTE(v5) = sub_2662C5584(sub_2664B7388, v12, v5), v6, (v5 & 1) != 0) || (v15 = a2, v16 = a3, v13 = -7403, v13 = sub_2664E0D48(), v14 = v7, sub_2662D2EBC(), v8 = sub_2664E09B8(), , (v8 & 1) != 0))
  {
    v9 = 1;
  }

  else
  {
    v15 = a2;
    v16 = a3;
    v13 = -7400;
    v13 = sub_2664E0D48();
    v14 = v10;
    v9 = sub_2664E09B8();
  }

  return v9 & 1;
}

uint64_t sub_2664B0DC8(uint64_t a1, unint64_t a2)
{
  v4 = sub_2664DFE38();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2664DFD28();
  if (*(v8 + 16) && (v9 = sub_2662A3E98(0xD00000000000001BLL, 0x80000002664FB7A0), (v10 & 1) != 0))
  {
    v11 = *(*(v8 + 56) + 8 * v9);

    v22 = v11;
    v12 = sub_2664E0D48();
    v22 = 40;
    v23 = 0xE100000000000000;
    MEMORY[0x2667833B0](v12);

    MEMORY[0x2667833B0](44, 0xE100000000000000);

    v13 = v22;
    v14 = v23;
    v22 = a1;
    v23 = a2;
    v21[1] = v13;
    v21[2] = v14;
    sub_2662D2EBC();
    v15 = sub_2664E09B8();
  }

  else
  {

    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v16 = __swift_project_value_buffer(v4, qword_280F914F0);
    swift_beginAccess();
    (*(v5 + 16))(v7, v16, v4);
    v17 = sub_2664DFE18();
    v18 = sub_2664E06D8();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_26629C000, v17, v18, "MediaPlaybackProvider#isSonicXSchemeURLError unable to get xsqErrorDomain", v19, 2u);
      MEMORY[0x266784AD0](v19, -1, -1);
    }

    (*(v5 + 8))(v7, v4);
    v15 = 0;
  }

  return v15 & 1;
}

unsigned __int8 *sub_2664B1060(unint64_t a1, uint64_t a2)
{
  v4 = sub_2664DFE38();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2664DE098();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2664DFD28();
  if (!*(v12 + 16) || (v13 = sub_2662A3E98(0xD00000000000001BLL, 0x80000002664FB7A0), (v14 & 1) == 0))
  {

    if (qword_280F914E8 != -1)
    {
LABEL_80:
      swift_once();
    }

    v23 = __swift_project_value_buffer(v4, qword_280F914F0);
    swift_beginAccess();
    (*(v5 + 16))(v7, v23, v4);
    v24 = sub_2664DFE18();
    v25 = sub_2664E06D8();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_26629C000, v24, v25, "MediaPlaybackProvider#extractErrorCodeFromXYPairWithXSchemeURLError unable to get xsqErrorDomain", v26, 2u);
      MEMORY[0x266784AD0](v26, -1, -1);
    }

    (*(v5 + 8))(v7, v4);
    return 0;
  }

  v62 = v9;
  v15 = *(*(v12 + 56) + 8 * v13);

  v63 = v15;
  v16 = sub_2664E0D48();
  v63 = 40;
  v64 = 0xE100000000000000;
  MEMORY[0x2667833B0](v16);

  v4 = v64;

  MEMORY[0x2667833B0](44, 0xE100000000000000);

  v5 = v63;
  v7 = v64;
  v63 = a1;
  v64 = a2;
  v67 = 41;
  v68 = 0xE100000000000000;
  sub_2662D2EBC();
  v17 = sub_2664E0968();
  v18 = v17;
  v19 = *(v17 + 16);
  if (!v19)
  {
LABEL_8:

    return 0;
  }

  v20 = 0;
  v21 = (v17 + 40);
  while (1)
  {
    if (v20 >= *(v18 + 16))
    {
      __break(1u);
      goto LABEL_80;
    }

    v22 = *(v21 - 1);
    v4 = *v21;

    if (sub_2664E03F8())
    {
      break;
    }

    ++v20;
    v21 += 2;
    if (v19 == v20)
    {
      goto LABEL_8;
    }
  }

  v63 = sub_2664ACFCC(4uLL, v22, v4);
  v64 = v28;
  v65 = v29;
  v66 = v30;
  sub_2664DE068();
  sub_2663C1328();
  v31 = sub_2664E0988();
  v33 = v32;
  (*(v62 + 8))(v11, v8);

  v63 = v31;
  v64 = v33;
  v34 = sub_2664E0418();
  v36 = v35;
  result = swift_bridgeObjectRelease_n();
  v37 = HIBYTE(v36) & 0xF;
  v38 = v34 & 0xFFFFFFFFFFFFLL;
  if ((v36 & 0x2000000000000000) != 0)
  {
    v39 = HIBYTE(v36) & 0xF;
  }

  else
  {
    v39 = v34 & 0xFFFFFFFFFFFFLL;
  }

  if (!v39)
  {

    return 0;
  }

  if ((v36 & 0x1000000000000000) == 0)
  {
    if ((v36 & 0x2000000000000000) != 0)
    {
      v63 = v34;
      v64 = v36 & 0xFFFFFFFFFFFFFFLL;
      if (v34 == 43)
      {
        if (v37)
        {
          if (--v37)
          {
            v41 = 0;
            v51 = &v63 + 1;
            while (1)
            {
              v52 = *v51 - 48;
              if (v52 > 9)
              {
                break;
              }

              v53 = 10 * v41;
              if ((v41 * 10) >> 64 != (10 * v41) >> 63)
              {
                break;
              }

              v41 = v53 + v52;
              if (__OFADD__(v53, v52))
              {
                break;
              }

              ++v51;
              if (!--v37)
              {
                goto LABEL_75;
              }
            }
          }

          goto LABEL_74;
        }

LABEL_87:
        __break(1u);
        return result;
      }

      if (v34 != 45)
      {
        if (v37)
        {
          v41 = 0;
          v56 = &v63;
          while (1)
          {
            v57 = *v56 - 48;
            if (v57 > 9)
            {
              break;
            }

            v58 = 10 * v41;
            if ((v41 * 10) >> 64 != (10 * v41) >> 63)
            {
              break;
            }

            v41 = v58 + v57;
            if (__OFADD__(v58, v57))
            {
              break;
            }

            v56 = (v56 + 1);
            if (!--v37)
            {
              goto LABEL_75;
            }
          }
        }

        goto LABEL_74;
      }

      if (v37)
      {
        if (--v37)
        {
          v41 = 0;
          v45 = &v63 + 1;
          while (1)
          {
            v46 = *v45 - 48;
            if (v46 > 9)
            {
              break;
            }

            v47 = 10 * v41;
            if ((v41 * 10) >> 64 != (10 * v41) >> 63)
            {
              break;
            }

            v41 = v47 - v46;
            if (__OFSUB__(v47, v46))
            {
              break;
            }

            ++v45;
            if (!--v37)
            {
              goto LABEL_75;
            }
          }
        }

        goto LABEL_74;
      }
    }

    else
    {
      if ((v34 & 0x1000000000000000) != 0)
      {
        result = ((v36 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        result = sub_2664E0B78();
      }

      v40 = *result;
      if (v40 == 43)
      {
        if (v38 >= 1)
        {
          v37 = v38 - 1;
          if (v38 != 1)
          {
            v41 = 0;
            if (result)
            {
              v48 = result + 1;
              while (1)
              {
                v49 = *v48 - 48;
                if (v49 > 9)
                {
                  goto LABEL_74;
                }

                v50 = 10 * v41;
                if ((v41 * 10) >> 64 != (10 * v41) >> 63)
                {
                  goto LABEL_74;
                }

                v41 = v50 + v49;
                if (__OFADD__(v50, v49))
                {
                  goto LABEL_74;
                }

                ++v48;
                if (!--v37)
                {
                  goto LABEL_75;
                }
              }
            }

            goto LABEL_66;
          }

          goto LABEL_74;
        }

        goto LABEL_86;
      }

      if (v40 != 45)
      {
        if (v38)
        {
          v41 = 0;
          if (result)
          {
            while (1)
            {
              v54 = *result - 48;
              if (v54 > 9)
              {
                goto LABEL_74;
              }

              v55 = 10 * v41;
              if ((v41 * 10) >> 64 != (10 * v41) >> 63)
              {
                goto LABEL_74;
              }

              v41 = v55 + v54;
              if (__OFADD__(v55, v54))
              {
                goto LABEL_74;
              }

              ++result;
              if (!--v38)
              {
                goto LABEL_66;
              }
            }
          }

          goto LABEL_66;
        }

LABEL_74:
        v41 = 0;
        LOBYTE(v37) = 1;
        goto LABEL_75;
      }

      if (v38 >= 1)
      {
        v37 = v38 - 1;
        if (v38 != 1)
        {
          v41 = 0;
          if (result)
          {
            v42 = result + 1;
            while (1)
            {
              v43 = *v42 - 48;
              if (v43 > 9)
              {
                goto LABEL_74;
              }

              v44 = 10 * v41;
              if ((v41 * 10) >> 64 != (10 * v41) >> 63)
              {
                goto LABEL_74;
              }

              v41 = v44 - v43;
              if (__OFSUB__(v44, v43))
              {
                goto LABEL_74;
              }

              ++v42;
              if (!--v37)
              {
                goto LABEL_75;
              }
            }
          }

LABEL_66:
          LOBYTE(v37) = 0;
LABEL_75:
          LOBYTE(v67) = v37;
          v59 = v37;

          goto LABEL_76;
        }

        goto LABEL_74;
      }

      __break(1u);
    }

    __break(1u);
LABEL_86:
    __break(1u);
    goto LABEL_87;
  }

  LOBYTE(v67) = 0;

  v41 = sub_26640687C();
  v59 = v60;
  swift_bridgeObjectRelease_n();
LABEL_76:
  if (v59)
  {
    return 0;
  }

  else
  {
    return v41;
  }
}

uint64_t sub_2664B178C(uint64_t a1, uint64_t a2)
{
  sub_2664E0D48();
  sub_2662D2EBC();
  v2 = sub_2664E09B8();

  if (v2)
  {
    v3 = 1;
  }

  else
  {
    sub_2664E0D48();
    v3 = sub_2664E09B8();
  }

  return v3 & 1;
}

uint64_t sub_2664B1890(uint64_t a1, uint64_t a2)
{
  if (*(sub_2664DFD28() + 16) && (sub_2662A3E98(0x726F7272454349, 0xE700000000000000), (v2 & 1) != 0))
  {

    sub_2664E0D48();
    sub_2662D2EBC();
    v3 = sub_2664E09B8();

    sub_2664E0D48();
    v4 = sub_2664E09B8();

    v5 = v3 & v4;
  }

  else
  {

    v5 = 0;
  }

  return v5 & 1;
}

uint64_t sub_2664B19E4(void *a1, unint64_t a2)
{
  if (!a1)
  {
    return 0;
  }

  v3 = a1;
  v4 = [v3 domain];
  v5 = sub_2664E02C8();
  v7 = v6;

  if (v5 == sub_2664E02C8() && v7 == v8)
  {
  }

  else
  {
    v10 = sub_2664E0D88();

    if ((v10 & 1) == 0)
    {
      goto LABEL_23;
    }
  }

  if ([v3 code] != 9)
  {
LABEL_23:

    return 0;
  }

  if (!a2)
  {
    goto LABEL_18;
  }

  if (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_13;
    }

LABEL_18:
    v13 = 0;
    goto LABEL_19;
  }

  result = sub_2664E0A68();
  if (!result)
  {
    goto LABEL_18;
  }

LABEL_13:
  if ((a2 & 0xC000000000000001) != 0)
  {
    v12 = MEMORY[0x266783B70](0, a2);
    goto LABEL_16;
  }

  if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v12 = *(a2 + 32);
LABEL_16:
    v13 = v12;
LABEL_19:
    sub_2662C1744(0, &qword_280F8F550, 0x277CCABB0);
    v14 = sub_2664E08F8();
    v15 = v14;
    if (v13)
    {
      v16 = sub_2664E0918();

      return (v16 & 1) != 0;
    }

    goto LABEL_23;
  }

  __break(1u);
  return result;
}

void sub_2664B1B84()
{
  v0 = sub_2664DFE38();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = v26 - v5;
  v7 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v8 = sub_2664E02A8();
  v9 = [v7 initWithSuiteName_];

  if (v9)
  {
    v10 = sub_2664E02A8();
    v11 = [v9 objectForKey_];

    if (v11)
    {
      sub_2664E09E8();
      swift_unknownObjectRelease();
    }

    else
    {
      v27 = 0u;
      v28 = 0u;
    }

    v29[0] = v27;
    v29[1] = v28;
    if (*(&v28 + 1))
    {
      if ((swift_dynamicCast() & 1) == 0)
      {
LABEL_18:

        return;
      }

      v12 = v26[1];
      v13 = mach_absolute_time();
      v14 = v13 >= v12;
      v15 = v13 - v12;
      if (v14)
      {
        if (qword_280071C28 == -1)
        {
LABEL_10:
          v16 = *&qword_28007CCF8;
          if (qword_280F914E8 != -1)
          {
            v26[0] = qword_28007CCF8;
            swift_once();
            v16 = *v26;
          }

          v17 = v16 * v15;
          v18 = __swift_project_value_buffer(v0, qword_280F914F0);
          swift_beginAccess();
          v26[0] = *(v1 + 16);
          (v26[0])(v6, v18, v0);
          v19 = sub_2664DFE18();
          v20 = sub_2664E06E8();
          if (os_log_type_enabled(v19, v20))
          {
            v21 = swift_slowAlloc();
            *v21 = 134217984;
            *(v21 + 4) = v17;
            _os_log_impl(&dword_26629C000, v19, v20, "MediaPlaybackProvider#checkTTSEndToSendPlayDelay read EndTTSTime with timeDiff: %f", v21, 0xCu);
            MEMORY[0x266784AD0](v21, -1, -1);
          }

          v22 = *(v1 + 8);
          v22(v6, v0);
          if (v17 > 1.0)
          {
            (v26[0])(v4, v18, v0);
            v23 = sub_2664DFE18();
            v24 = sub_2664E06D8();
            if (os_log_type_enabled(v23, v24))
            {
              v25 = swift_slowAlloc();
              *v25 = 0;
              _os_log_impl(&dword_26629C000, v23, v24, "MediaPlaybackProvider#checkTTSEndToSendPlayDelay large delay detected", v25, 2u);
              MEMORY[0x266784AD0](v25, -1, -1);
            }

            v22(v4, v0);
            sub_2664DF638();
            swift_allocObject();
            sub_2664DF628();
            sub_2664DF618();
          }

          goto LABEL_18;
        }
      }

      else
      {
        __break(1u);
      }

      swift_once();
      goto LABEL_10;
    }

    sub_2662A9238(v29, &unk_280074250, &unk_2664E3680);
  }
}

uint64_t sub_2664B2034()
{
  v0 = sub_2664DE438();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2664DE408();
  v4 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  v5 = sub_2664E02A8();
  [v4 setDateFormat_];

  v6 = sub_2664DE3A8();
  v7 = [v4 stringFromDate_];

  v8 = sub_2664E02C8();
  (*(v1 + 8))(v3, v0);
  return v8;
}

uint64_t sub_2664B21A4(uint64_t *a1)
{
  v2 = sub_2664DFE38();
  v74 = *(v2 - 8);
  v75 = v2;
  v3 = MEMORY[0x28223BE20](v2);
  v5 = &v66 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v66 - v7;
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v66 - v10;
  MEMORY[0x28223BE20](v9);
  v73 = &v66 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280074220, &qword_2664F0C60);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v66 - v14;
  v16 = sub_2664DFBD8();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v66 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v66 - v21;
  type metadata accessor for ErrorFilingProvider();
  v23 = static ErrorFilingProvider.getTrialPolicy()();
  if (v24 >> 60 == 15)
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v25 = v75;
    v26 = __swift_project_value_buffer(v75, qword_280F914F0);
    swift_beginAccess();
    v27 = v74;
    (*(v74 + 16))(v5, v26, v25);
    v28 = sub_2664DFE18();
    v29 = sub_2664E06C8();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_26629C000, v28, v29, "MediaPlaybackProvider#doesCurrentDevicePolicyAllowTimeoutErrorsForTailspin no Trial policy, returning false", v30, 2u);
      MEMORY[0x266784AD0](v30, -1, -1);
    }

    (*(v27 + 8))(v5, v25);
    return 0;
  }

  v70 = a1;
  v31 = v16;
  v32 = v23;
  v33 = v24;
  sub_2664DFBA8();
  v71 = v32;
  v72 = v33;
  v34 = v31;
  sub_2664DFB98();
  if ((*(v17 + 48))(v15, 1, v31) == 1)
  {
    sub_2662A9238(v15, &unk_280074220, &qword_2664F0C60);
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v35 = v75;
    v36 = __swift_project_value_buffer(v75, qword_280F914F0);
    swift_beginAccess();
    v37 = v74;
    (*(v74 + 16))(v8, v36, v35);
    v38 = sub_2664DFE18();
    v39 = sub_2664E06C8();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_26629C000, v38, v39, "MediaPlaybackProvider#doesCurrentDevicePolicyAllowTimeoutErrorsForTailspin no parseable policy, returning false", v40, 2u);
      MEMORY[0x266784AD0](v40, -1, -1);
    }

    sub_2662B79A8(v71, v72);

    (*(v37 + 8))(v8, v35);
    return 0;
  }

  v41 = v22;
  (*(v17 + 32))(v22, v15, v34);
  v42 = *(sub_2664DFBB8() + 16);

  if (!v42)
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v58 = v75;
    v59 = __swift_project_value_buffer(v75, qword_280F914F0);
    swift_beginAccess();
    v60 = v74;
    (*(v74 + 16))(v11, v59, v58);
    v61 = sub_2664DFE18();
    v62 = sub_2664E06C8();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      *v63 = 0;
      _os_log_impl(&dword_26629C000, v61, v62, "MediaPlaybackProvider#doesCurrentDevicePolicyAllowTimeoutErrorsForTailspin tailspin list is empty", v63, 2u);
      MEMORY[0x266784AD0](v63, -1, -1);
    }

    sub_2662B79A8(v71, v72);

    (*(v60 + 8))(v11, v58);
    (*(v17 + 8))(v41, v34);
    return 0;
  }

  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v43 = v75;
  v44 = __swift_project_value_buffer(v75, qword_280F914F0);
  swift_beginAccess();
  v45 = v73;
  v46 = v74;
  (*(v74 + 16))(v73, v44, v43);
  (*(v17 + 16))(v20, v41, v34);
  v47 = sub_2664DFE18();
  v48 = sub_2664E06C8();
  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    v67 = v49;
    v69 = swift_slowAlloc();
    v76 = v69;
    *v49 = 136315138;
    v68 = v48;
    sub_2664DFBB8();
    v66 = MEMORY[0x2667834D0]();
    v51 = v50;

    v52 = *(v17 + 8);
    v52(v20, v34);
    v53 = v52;
    v54 = sub_2662A320C(v66, v51, &v76);

    v55 = v67;
    *(v67 + 1) = v54;
    _os_log_impl(&dword_26629C000, v47, v68, "MediaPlaybackProvider#doesCurrentDevicePolicyAllowTimeoutErrorsForTailspin tailspins supported: %s", v55, 0xCu);
    v56 = v69;
    __swift_destroy_boxed_opaque_existential_1Tm(v69);
    MEMORY[0x266784AD0](v56, -1, -1);
    MEMORY[0x266784AD0](v55, -1, -1);

    v57 = v53;
    (*(v46 + 8))(v45, v75);
  }

  else
  {

    v57 = *(v17 + 8);
    v57(v20, v34);
    (*(v46 + 8))(v45, v43);
  }

  v65 = sub_2664DFBB8();
  sub_2662B79A8(v71, v72);
  v57(v41, v34);
  *v70 = v65;
  return 1;
}

uint64_t sub_2664B29E0(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v54 = a2;
  v6 = sub_2664DFE38();
  v51 = *(v6 - 8);
  v52 = v6;
  v7 = MEMORY[0x28223BE20](v6);
  v48 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v49 = &v47 - v9;
  v50 = a1;
  v10 = *(a1 + 16);
  if (v10)
  {
    v11 = 0;
    v12 = a1 + 40;
    v13 = MEMORY[0x277D84F90];
    v47 = v12;
    do
    {
      v53 = v13;
      v14 = (v12 + 16 * v11);
      v15 = v11;
      while (1)
      {
        if (v15 >= v10)
        {
          __break(1u);
LABEL_28:
          __break(1u);
          goto LABEL_29;
        }

        v11 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          goto LABEL_28;
        }

        v3 = *(v14 - 1);
        v16 = *v14;
        v55 = v54;
        v56 = a3;
        v57[0] = v3;
        v57[1] = v16;
        sub_2662D2EBC();

        if (sub_2664E09B8())
        {
          break;
        }

        ++v15;
        v14 += 2;
        if (v11 == v10)
        {
          v13 = v53;
          goto LABEL_16;
        }
      }

      v13 = v53;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v58 = v13;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_2662FCF24(0, *(v13 + 16) + 1, 1);
        v13 = v58;
      }

      v12 = v47;
      v19 = *(v13 + 16);
      v18 = *(v13 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_2662FCF24((v18 > 1), v19 + 1, 1);
        v13 = v58;
      }

      *(v13 + 16) = v19 + 1;
      v20 = v13 + 16 * v19;
      *(v20 + 32) = v3;
      *(v20 + 40) = v16;
    }

    while (v11 != v10);
  }

  else
  {
    v13 = MEMORY[0x277D84F90];
  }

LABEL_16:
  v21 = *(v13 + 16);

  if (v21)
  {
    byte_280073F50 = 1;
    v3 = v50;
    v11 = v51;
    if (qword_280F914E8 != -1)
    {
LABEL_29:
      swift_once();
    }

    v22 = v52;
    v23 = __swift_project_value_buffer(v52, qword_280F914F0);
    swift_beginAccess();
    v24 = v49;
    (*(v11 + 16))(v49, v23, v22);

    v25 = sub_2664DFE18();
    v26 = a3;
    v27 = sub_2664E06C8();

    if (os_log_type_enabled(v25, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v57[0] = v29;
      *v28 = 136315394;
      v30 = MEMORY[0x2667834D0](v3, MEMORY[0x277D837D0]);
      v32 = sub_2662A320C(v30, v31, v57);

      *(v28 + 4) = v32;
      *(v28 + 12) = 2080;
      *(v28 + 14) = sub_2662A320C(v54, v26, v57);
      _os_log_impl(&dword_26629C000, v25, v27, "MediaPlaybackProvider#generateTailSpinIfPolicyAndErrorAllow collecting tailspin for list: %s and errorDescription: %s", v28, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266784AD0](v29, -1, -1);
      MEMORY[0x266784AD0](v28, -1, -1);

      (*(v11 + 8))(v49, v22);
    }

    else
    {

      (*(v11 + 8))(v24, v22);
    }

    return sub_2664DF5D8();
  }

  else
  {
    v34 = v50;
    v33 = v51;
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v35 = v52;
    v36 = __swift_project_value_buffer(v52, qword_280F914F0);
    swift_beginAccess();
    v37 = v48;
    (*(v33 + 16))(v48, v36, v35);

    v38 = sub_2664DFE18();
    v39 = sub_2664E06C8();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v57[0] = v41;
      *v40 = 136315394;
      v42 = MEMORY[0x2667834D0](v34, MEMORY[0x277D837D0]);
      v44 = a3;
      v45 = sub_2662A320C(v42, v43, v57);

      *(v40 + 4) = v45;
      *(v40 + 12) = 2080;
      *(v40 + 14) = sub_2662A320C(v54, v44, v57);
      _os_log_impl(&dword_26629C000, v38, v39, "MediaPlaybackProvider#generateTailSpinIfPolicyAndErrorAllow no op, with tailspinList: %s and errorDescription: '%s'", v40, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266784AD0](v41, -1, -1);
      MEMORY[0x266784AD0](v40, -1, -1);
    }

    result = (*(v33 + 8))(v37, v35);
    byte_280073F50 = 0;
  }

  return result;
}

uint64_t sub_2664B300C(uint64_t a1, uint64_t a2)
{
  if (*(sub_2664DFD28() + 16) && (sub_2662A3E98(0xD000000000000012, 0x80000002664FB8A0), (v2 & 1) != 0))
  {

    sub_2664E0D48();
    sub_2662D2EBC();
    v3 = sub_2664E09B8();

    sub_2664E0D48();
    v4 = sub_2664E09B8();

    v5 = v3 & v4;
  }

  else
  {

    v5 = 0;
  }

  return v5 & 1;
}

uint64_t sub_2664B3164(uint64_t a1, uint64_t a2)
{
  sub_2662D2EBC();
  if (sub_2664E09B8() & 1) != 0 || (sub_2664E09B8())
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_2664E09B8();
  }

  return v2 & 1;
}

uint64_t sub_2664B3274(uint64_t a1, uint64_t a2)
{
  sub_2662D2EBC();
  if (sub_2664E09B8() & 1) != 0 || (sub_2664E09B8())
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_2664E09B8();
  }

  return v2 & 1;
}

unint64_t sub_2664B337C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v46 = a1;
  v47 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v48 = v8;
  v49 = 0;
  v50 = v11 & v9;
  v51 = a2;
  v52 = a3;

  sub_2664AAD9C(&v43);
  if (!v45)
  {
    goto LABEL_25;
  }

  v12 = v43;
  sub_266318804(&v44, v42);
  v13 = *a5;
  result = sub_26634DD28(v12);
  v16 = *(v13 + 16);
  v17 = (v15 & 1) == 0;
  v18 = __OFADD__(v16, v17);
  v19 = v16 + v17;
  if (v18)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v20 = v15;
  if (*(v13 + 24) < v19)
  {
    sub_266452550(v19, a4 & 1);
    result = sub_26634DD28(v12);
    if ((v20 & 1) == (v21 & 1))
    {
      goto LABEL_10;
    }

LABEL_8:
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2800737F0, &unk_2664E5320);
    result = sub_2664E0DD8();
    __break(1u);
  }

  if ((a4 & 1) == 0)
  {
    v25 = result;
    sub_266454E14();
    result = v25;
    if (v20)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_10:
  if (v20)
  {
LABEL_11:
    v22 = *a5;
    v23 = 32 * result;
    sub_2662A01E8(*(*a5 + 56) + 32 * result, v41);
    __swift_destroy_boxed_opaque_existential_1Tm(v42);

    v24 = *(v22 + 56);
    __swift_destroy_boxed_opaque_existential_1Tm((v24 + v23));
    sub_266318804(v41, (v24 + v23));
    goto LABEL_15;
  }

LABEL_13:
  v26 = *a5;
  *(*a5 + 8 * (result >> 6) + 64) |= 1 << result;
  *(v26[6] + 8 * result) = v12;
  result = sub_266318804(v42, (v26[7] + 32 * result));
  v27 = v26[2];
  v18 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (!v18)
  {
    v26[2] = v28;
LABEL_15:
    sub_2664AAD9C(&v43);
    if (v45)
    {
      v20 = 1;
      do
      {
        v12 = v43;
        sub_266318804(&v44, v42);
        v32 = *a5;
        result = sub_26634DD28(v12);
        v34 = *(v32 + 16);
        v35 = (v33 & 1) == 0;
        v18 = __OFADD__(v34, v35);
        v36 = v34 + v35;
        if (v18)
        {
          goto LABEL_26;
        }

        a4 = v33;
        if (*(v32 + 24) < v36)
        {
          sub_266452550(v36, 1);
          result = sub_26634DD28(v12);
          if ((a4 & 1) != (v37 & 1))
          {
            goto LABEL_8;
          }
        }

        if (a4)
        {
          v29 = *a5;
          v30 = 32 * result;
          sub_2662A01E8(*(*a5 + 56) + 32 * result, v41);
          __swift_destroy_boxed_opaque_existential_1Tm(v42);

          v31 = *(v29 + 56);
          __swift_destroy_boxed_opaque_existential_1Tm((v31 + v30));
          sub_266318804(v41, (v31 + v30));
        }

        else
        {
          v38 = *a5;
          *(*a5 + 8 * (result >> 6) + 64) |= 1 << result;
          *(v38[6] + 8 * result) = v12;
          result = sub_266318804(v42, (v38[7] + 32 * result));
          v39 = v38[2];
          v18 = __OFADD__(v39, 1);
          v40 = v39 + 1;
          if (v18)
          {
            goto LABEL_27;
          }

          v38[2] = v40;
        }

        sub_2664AAD9C(&v43);
      }

      while (v45);
    }

LABEL_25:
    sub_2662B793C(v46);
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_2664B369C(char a1, char a2, char a3)
{
  v6 = sub_2664E0038();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_2664E00B8();
  v10 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F90D30 != -1)
  {
    swift_once();
  }

  v16[1] = qword_280F90D38;
  v13 = swift_allocObject();
  v13[16] = a2;
  v13[17] = a1;
  v13[18] = a3 & 1;
  aBlock[4] = sub_2664B6A60;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2662A3F90;
  aBlock[3] = &block_descriptor_259;
  v14 = _Block_copy(aBlock);
  sub_2664E0068();
  v18 = MEMORY[0x277D84F90];
  sub_2664B67D0(&qword_280F8F6A0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280074210, &qword_2664E3640);
  sub_2662C1428(&qword_280F8F660, &qword_280074210, &qword_2664E3640, MEMORY[0x277D83970]);
  sub_2664E0A08();
  MEMORY[0x266783800](0, v12, v9, v14);
  _Block_release(v14);
  (*(v7 + 8))(v9, v6);
  (*(v10 + 8))(v12, v17);
}

uint64_t sub_2664B39AC(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v3 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v3 || a1 == 0xD000000000000026 && 0x80000002664F3330 == a2)
  {
    return 0;
  }

  if (sub_2664E0D88())
  {
    return 0;
  }

  if (!*(sub_2664DFD38() + 16))
  {

    return 0;
  }

  sub_2662A3E98(a1, a2);
  v9 = v8;

  result = 0;
  if (v9)
  {
    if (a3)
    {

      return 1;
    }
  }

  return result;
}

uint64_t sub_2664B3A8C(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v71 = a3;
  v72 = a4;
  v69 = a1;
  v70 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280074230, &qword_2664EF6F0);
  MEMORY[0x28223BE20](v4 - 8);
  v68 = &v55 - v5;
  v6 = sub_2664E0018();
  v64 = *(v6 - 8);
  v65 = v6;
  MEMORY[0x28223BE20](v6);
  v61 = (&v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v63 = sub_2664E00E8();
  v62 = *(v63 - 8);
  v8 = MEMORY[0x28223BE20](v63);
  v59 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v60 = &v55 - v10;
  v11 = sub_2664DFE38();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v66 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v55 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v55 - v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073FE8, &qword_2664EF6F8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2664E36F0;
  v73 = sub_2664DF5E8();
  v74 = v21;

  MEMORY[0x2667833B0](0xD000000000000014, 0x80000002664F4810);

  v22 = v74;
  *(inited + 32) = v73;
  *(inited + 40) = v22;
  *(inited + 48) = 0x6E6970736C696174;
  *(inited + 56) = 0xE800000000000000;
  v23 = sub_2663869D0(inited);
  swift_setDeallocating();
  sub_2662A9238(inited + 32, &unk_280074240, &unk_2664EF700);
  v24 = _s16SiriAudioSupport19ErrorFilingProviderC20collectAnyExtraFiles22filePathsAndExtensionsSay10Foundation3URLVGSDyS2SG_tFZ_0(v23);

  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v25 = __swift_project_value_buffer(v11, qword_280F914F0);
  swift_beginAccess();
  v67 = *(v12 + 16);
  v67(v19, v25, v11);

  v26 = sub_2664DFE18();
  v27 = sub_2664E06E8();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = v12;
    v29 = swift_slowAlloc();
    *v29 = 134217984;
    *(v29 + 4) = *(v24 + 16);

    _os_log_impl(&dword_26629C000, v26, v27, "MediaPlaybackProvider#fileRadarWithTailSpins count: %ld", v29, 0xCu);
    v30 = v29;
    v12 = v28;
    MEMORY[0x266784AD0](v30, -1, -1);
  }

  else
  {
  }

  v33 = *(v12 + 8);
  v32 = v12 + 8;
  v31 = v33;
  v33(v19, v11);
  if (byte_280073F50 == 1)
  {
    v55 = v25;
    v67(v17, v25, v11);
    v34 = sub_2664DFE18();
    v35 = sub_2664E06E8();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = v31;
      v37 = v32;
      v38 = swift_slowAlloc();
      *v38 = 134217984;
      *(v38 + 4) = 20;
      _os_log_impl(&dword_26629C000, v34, v35, "MediaPlaybackProvider#fileRadarWithTailSpins waiting up to %ld seconds for tailspin file creation to complete", v38, 0xCu);
      v39 = v38;
      v32 = v37;
      v31 = v36;
      MEMORY[0x266784AD0](v39, -1, -1);
    }

    v57 = v24;

    v58 = v32;
    v56 = v31;
    v31(v17, v11);
    v40 = v66;
    if (qword_280071CB0 != -1)
    {
      swift_once();
    }

    v41 = v59;
    sub_2664E00C8();
    v42 = v61;
    *v61 = 20;
    v44 = v64;
    v43 = v65;
    (*(v64 + 104))(v42, *MEMORY[0x277D85188], v65);
    v45 = v60;
    MEMORY[0x266783140](v41, v42);
    (*(v44 + 8))(v42, v43);
    v46 = *(v62 + 8);
    v47 = v63;
    v46(v41, v63);
    sub_2664E0868();
    v46(v45, v47);
    v48 = sub_2664E0028();
    v67(v40, v55, v11);
    v49 = sub_2664DFE18();
    v50 = sub_2664E06E8();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 67109120;
      *(v51 + 4) = v48 & 1;
      _os_log_impl(&dword_26629C000, v49, v50, "MediaPlaybackProvider#fileRadarWithTailSpins notification received: %{BOOL}d", v51, 8u);
      MEMORY[0x266784AD0](v51, -1, -1);
    }

    v56(v40, v11);
    v24 = v57;
  }

  type metadata accessor for ErrorFilingProvider();
  v52 = sub_2664DFB08();
  v53 = v68;
  (*(*(v52 - 8) + 56))(v68, 1, 1, v52);
  sub_2664DA31C(v69, v70, 0, 0, v71, v72, 0, v24, v53, 0, 0, 0, 0);

  return sub_2662A9238(v53, &unk_280074230, &qword_2664EF6F0);
}

uint64_t sub_2664B4280(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, unint64_t a6, void *a7, uint64_t a8, uint64_t a9, unsigned __int8 a10, uint64_t a11, uint64_t a12)
{
  v216 = a8;
  v223 = a7;
  v214 = a6;
  v226 = a5;
  v233 = a4;
  v225 = a3;
  v235 = a2;
  v218 = a1;
  v221 = sub_2664DFE08();
  v220 = *(v221 - 8);
  MEMORY[0x28223BE20](v221);
  v219 = v205 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072AA0, &qword_2664E9EA0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = v205 - v14;
  v16 = sub_2664DEA08();
  v213 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v212 = v205 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v224 = sub_2664DFD68();
  v227 = *(v224 - 8);
  v18 = MEMORY[0x28223BE20](v224);
  v217 = v205 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = v205 - v20;
  v22 = sub_2664DFE38();
  v23 = *(v22 - 8);
  v24 = MEMORY[0x28223BE20](v22);
  v215 = v205 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v28 = v205 - v27;
  v29 = MEMORY[0x28223BE20](v26);
  v222 = v205 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v211 = v205 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v35 = v205 - v34;
  v36 = MEMORY[0x28223BE20](v33);
  v38 = v205 - v37;
  MEMORY[0x28223BE20](v36);
  v40 = v205 - v39;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v41 = __swift_project_value_buffer(v22, qword_280F914F0);
  swift_beginAccess();
  v42 = v22;
  v43 = v23;
  v44 = *(v23 + 16);
  v229 = v23 + 16;
  v230 = v41;
  v234 = v42;
  v228 = v44;
  (v44)(v40, v41);
  v45 = sub_2664DFE18();
  v46 = sub_2664E06C8();
  v47 = os_log_type_enabled(v45, v46);
  v232 = v21;
  if (v47)
  {
    v48 = swift_slowAlloc();
    *v48 = 0;
    _os_log_impl(&dword_26629C000, v45, v46, "MediaPlaybackProvider#logSignpost...", v48, 2u);
    v49 = v48;
    v21 = v232;
    MEMORY[0x266784AD0](v49, -1, -1);
  }

  v51 = v43 + 8;
  v50 = *(v43 + 8);
  v52 = v234;
  v231 = v50;
  v50(v40, v234);
  if (v233)
  {
    v53 = sub_2664DE198();
    v54 = sub_2664DE198();
    IsInformational = MPCAssistantErrorIsInformational();

    if (IsInformational)
    {
      v228(v38, v230, v52);
      v56 = sub_2664DFE18();
      v57 = sub_2664E06E8();
      if (os_log_type_enabled(v56, v57))
      {
        v58 = v52;
        v59 = swift_slowAlloc();
        *v59 = 0;
        _os_log_impl(&dword_26629C000, v56, v57, "MediaPlaybackProvider#logSignpost ignoring an informational error", v59, 2u);
        MEMORY[0x266784AD0](v59, -1, -1);

        v60 = v38;
        v61 = v58;
      }

      else
      {

        v60 = v38;
        v61 = v52;
      }

      return v231(v60, v61);
    }

    v21 = v232;
  }

  v208 = v15;
  v209 = v16;
  sub_2664DFD98();
  v62 = sub_2664DFD78();
  v64 = v63;
  v65 = sub_2664DFD48();
  v67 = v66;

  v68 = HIBYTE(v67) & 0xF;
  if ((v67 & 0x2000000000000000) == 0)
  {
    v68 = v65 & 0xFFFFFFFFFFFFLL;
  }

  if (!v68)
  {

    v228(v28, v230, v52);
    v74 = sub_2664DFE18();
    v75 = sub_2664E06C8();
    if (os_log_type_enabled(v74, v75))
    {
      v76 = swift_slowAlloc();
      *v76 = 0;
      _os_log_impl(&dword_26629C000, v74, v75, "MediaPlaybackProvider#logSignpost no error onion available", v76, 2u);
      MEMORY[0x266784AD0](v76, -1, -1);
    }

    v231(v28, v52);
    v77 = v224;
    v78 = v227;
    goto LABEL_91;
  }

  v210 = v64;
  v69 = sub_2664DFD88();
  v239 = v69;
  v240 = v70;
  v71 = HIBYTE(v70) & 0xF;
  if ((v70 & 0x2000000000000000) == 0)
  {
    v71 = v69 & 0xFFFFFFFFFFFFLL;
  }

  if (v71)
  {
    v72 = v51;
    MEMORY[0x2667833B0](47, 0xE100000000000000);
    v69 = v239;
    v73 = v240;
  }

  else
  {
    v73 = v70;
    v72 = v51;
  }

  v79 = v210;
  v236[0] = v69;
  v236[1] = v73;

  MEMORY[0x2667833B0](v62, v79);

  MEMORY[0x2667833B0](47, 0xE100000000000000);

  v81 = v236[0];
  v80 = v236[1];
  sub_2664DFD48();
  v82 = sub_2664DFDA8();
  v84 = v83;

  v236[0] = v81;
  v236[1] = v80;

  MEMORY[0x2667833B0](v82, v84);

  v85 = v236[1];
  v86 = HIBYTE(v236[1]) & 0xF;
  if ((v236[1] & 0x2000000000000000) == 0)
  {
    v86 = v236[0] & 0xFFFFFFFFFFFFLL;
  }

  if (!v86)
  {

    v77 = v224;
    v78 = v227;
    v21 = v232;
    v101 = v226;
    if (v226)
    {
      goto LABEL_92;
    }

    return (*(v78 + 8))(v21, v77);
  }

  v206 = v236[0];
  v87 = v234;
  v228(v35, v230, v234);

  v88 = sub_2664DFE18();
  v89 = sub_2664E06E8();

  v90 = os_log_type_enabled(v88, v89);
  v207 = v85;
  if (v90)
  {
    v91 = v85;
    v92 = swift_slowAlloc();
    v93 = swift_slowAlloc();
    v236[0] = v93;
    *v92 = 136315138;
    *(v92 + 4) = sub_2662A320C(v206, v91, v236);
    _os_log_impl(&dword_26629C000, v88, v89, "MediaPlaybackProvider#logSignpost mediaPlaybackProviderErrorStatus: %s", v92, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v93);
    MEMORY[0x266784AD0](v93, -1, -1);
    MEMORY[0x266784AD0](v92, -1, -1);
  }

  v231(v35, v87);
  v21 = v232;
  v94 = v225;
  v95 = v222;
  sub_2664DFD48();
  v96 = sub_2664B39AC(v235, v94, v233);

  v97 = sub_2664DFD48();
  v99 = v98;
  if ((sub_2664B0C3C(v226, v97, v98) & 1) == 0)
  {
    if (sub_2664B178C(v97, v99))
    {

      v100 = 37;
      goto LABEL_45;
    }

    v236[0] = v97;
    v236[1] = v99;
    v237 = 0xD00000000000003ALL;
    v238 = 0x80000002664FB080;
    sub_2662D2EBC();
    if (sub_2664E09B8())
    {

      v100 = 155;
      goto LABEL_45;
    }

    v103 = sub_2664B1890(v97, v99);

    if (v103)
    {
      v100 = 54;
      goto LABEL_45;
    }

    if (v233)
    {
      v104 = sub_2664DE198();
      v105 = sub_2664B19E4(v104, v226);

      if ((v105 & 1) == 0)
      {
        v106 = sub_2664DE198();
        v107 = [v106 code];

        if (v107 == 15)
        {
          v100 = 52;
          goto LABEL_45;
        }

LABEL_44:
        v100 = 0;
        goto LABEL_45;
      }
    }

    else if ((sub_2664B19E4(0, v226) & 1) == 0)
    {
      goto LABEL_44;
    }

    v100 = 160;
    goto LABEL_45;
  }

  v100 = 1;
LABEL_45:
  if (v235 == 0xD000000000000026 && 0x80000002664F3330 == v94 || (v108 = 0, (sub_2664E0D88() & 1) != 0))
  {
    v108 = sub_266457DC4(v100, &unk_2877E4AD8);
  }

  v205[2] = v72;
  if ((v235 != 0xD00000000000001DLL || 0x80000002664F3360 != v94) && (sub_2664E0D88() & 1) == 0 && (v235 != 0xD000000000000018 || 0x80000002664F3380 != v94) && ((v108 | v96 | sub_2664E0D88()) & 1) == 0)
  {
    v132 = v206;
    goto LABEL_84;
  }

  LODWORD(v233) = v96;
  v109 = v211;
  v110 = v234;
  v228(v211, v230, v234);

  v111 = sub_2664DFE18();
  v112 = sub_2664E06C8();

  if (os_log_type_enabled(v111, v112))
  {
    v113 = swift_slowAlloc();
    v114 = swift_slowAlloc();
    v236[0] = v114;
    *v113 = 136315138;
    *(v113 + 4) = sub_2662A320C(v235, v94, v236);
    _os_log_impl(&dword_26629C000, v111, v112, "MediaPlaybackProvider#logSignpost submitting error metrics for %s", v113, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v114);
    MEMORY[0x266784AD0](v114, -1, -1);
    MEMORY[0x266784AD0](v113, -1, -1);
  }

  v231(v109, v110);
  v205[1] = v73;
  v115 = v206;
  if (qword_280F91468 != -1)
  {
    goto LABEL_108;
  }

  while (1)
  {
    v211 = qword_280F91470;
    v116 = v213;
    v117 = v212;
    v118 = v209;
    (*(v213 + 104))(v212, *MEMORY[0x277D5BC00], v209);
    v119 = *MEMORY[0x277D5B8D0];
    v120 = sub_2664DE808();
    v121 = *(v120 - 8);
    v122 = v208;
    (*(v121 + 104))(v208, v119, v120);
    (*(v121 + 56))(v122, 0, 1, v120);
    v236[0] = 0;
    v236[1] = 0xE000000000000000;
    sub_2664E0B28();

    v236[0] = 0xD00000000000001CLL;
    v236[1] = 0x80000002664FB210;
    v205[0] = 0x80000002664FB210;
    MEMORY[0x2667833B0](v115, v207);
    sub_26631F2F0(v117, 0xD000000000000011, 0x80000002664FB230, v122, v236[0], v236[1]);

    sub_2662A9238(v122, &qword_280072AA0, &qword_2664E9EA0);
    (*(v116 + 8))(v117, v118);
    if ((v233 & 1) == 0)
    {
      v95 = v222;
      v131 = v217;
      v132 = v115;
      v21 = v232;
      goto LABEL_85;
    }

    v123 = 0x6E776F6E6B6E75;
    if (v223)
    {
      v124 = [v223 playerPath];
      if (v124)
      {
        v125 = v124;
        v126 = [v124 description];

        v127 = sub_2664E02C8();
        v129 = v128;

        v130 = v127;
      }

      else
      {
        v129 = 0xE700000000000000;
        v130 = 0x6E776F6E6B6E75;
      }
    }

    else
    {
      v129 = 0xE700000000000000;
      v130 = 0x6E776F6E6B6E75;
    }

    strcpy(v236, "playerPath = ");
    HIWORD(v236[1]) = -4864;
    MEMORY[0x2667833B0](v130, v129);

    result = *MEMORY[0x277D27D08];
    if (!*MEMORY[0x277D27D08])
    {
      break;
    }

    v133 = v236[0];
    v134 = v236[1];
    v135 = v218;
    if (*(v218 + 16) && (v136 = sub_26634DAA8(result), (v137 & 1) != 0) && (sub_2662A01E8(*(v135 + 56) + 32 * v136, v236), (swift_dynamicCast() & 1) != 0))
    {
      v138 = v237;
      v139 = v238;
    }

    else
    {
      v139 = 0xE700000000000000;
      v138 = 0x6E776F6E6B6E75;
    }

    strcpy(v236, "contextID = ");
    BYTE5(v236[1]) = 0;
    HIWORD(v236[1]) = -5120;
    MEMORY[0x2667833B0](v138, v139);

    result = *MEMORY[0x277D27DF0];
    if (!*MEMORY[0x277D27DF0])
    {
      goto LABEL_116;
    }

    v140 = v236[1];
    v233 = v236[0];
    v141 = v218;
    if (*(v218 + 16) && (v142 = sub_26634DAA8(result), (v143 & 1) != 0) && (sub_2662A01E8(*(v141 + 56) + 32 * v142, v236), (swift_dynamicCast() & 1) != 0))
    {
      v123 = v237;
      v144 = v238;
    }

    else
    {
      v144 = 0xE700000000000000;
    }

    v223 = v133;
    v236[0] = 0xD000000000000016;
    v236[1] = 0x80000002664FB1D0;
    MEMORY[0x2667833B0](v123, v144);

    v145 = *MEMORY[0x277D27CE8];
    if (!*MEMORY[0x277D27CE8])
    {
      goto LABEL_117;
    }

    v147 = v236[0];
    v146 = v236[1];

    v148 = v218;
    if (*(v218 + 16) && (v149 = sub_26634DAA8(v145), (v150 & 1) != 0) && (sub_2662A01E8(*(v148 + 56) + 32 * v149, v236), (swift_dynamicCast() & 1) != 0))
    {
      v151 = v134;
      v153 = v237;
      v152 = v238;

      v154 = v153;
    }

    else
    {
      v151 = v134;

      v152 = 0x80000002664FB1F0;
      v154 = 0xD000000000000015;
    }

    strcpy(v236, "commandID = ");
    BYTE5(v236[1]) = 0;
    HIWORD(v236[1]) = -5120;
    MEMORY[0x2667833B0](v154, v152);

    v155 = v236[0];
    v156 = v236[1];
    strcpy(v236, "timeOfError: ");
    HIWORD(v236[1]) = -4864;
    MEMORY[0x2667833B0](a11, a12);
    v157 = v236[0];
    v158 = v236[1];
    v236[0] = 0;
    v236[1] = 0xE000000000000000;
    sub_2664E0B28();

    v236[0] = 10;
    v236[1] = 0xE100000000000000;
    MEMORY[0x2667833B0](v223, v151);

    MEMORY[0x2667833B0](2570, 0xE200000000000000);
    MEMORY[0x2667833B0](v233, v140);

    MEMORY[0x2667833B0](10, 0xE100000000000000);
    MEMORY[0x2667833B0](v147, v146);

    MEMORY[0x2667833B0](10, 0xE100000000000000);
    MEMORY[0x2667833B0](v155, v156);

    MEMORY[0x2667833B0](10, 0xE100000000000000);
    MEMORY[0x2667833B0](v157, v158);

    v159 = v236[0];
    v160 = v236[1];
    v236[0] = 0;
    v236[1] = 0xE000000000000000;
    sub_2664E0B28();

    v236[0] = 0xD00000000000001CLL;
    v236[1] = v205[0];
    v132 = v206;
    MEMORY[0x2667833B0](v206, v207);
    sub_2664B3A8C(v236[0], v236[1], v159, v160);
    v21 = v232;
    v95 = v222;
LABEL_84:
    v131 = v217;
LABEL_85:
    v161 = MEMORY[0x277D837D0];

    v162 = sub_2664E0858();
    if (qword_280F91508 != -1)
    {
      swift_once();
    }

    v163 = qword_280F91D48;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800724D8, &unk_2664E3920);
    v164 = swift_allocObject();
    *(v164 + 16) = xmmword_2664E36F0;
    *(v164 + 56) = v161;
    *(v164 + 64) = sub_2662C4094();
    v165 = v207;
    *(v164 + 32) = v132;
    *(v164 + 40) = v165;
    v166 = v219;
    sub_2664DFDF8();
    LOBYTE(v202) = 2;
    sub_2664DFDC8(v162, &dword_26629C000, v163, "mediaPlaybackProviderErrorStatus", 32, 2, v166, "MRErrorRepresentationDomain=%{signpost.telemetry:string1,public}@ enableTelemetry=YES ", 86, v202, v164);

    (*(v220 + 8))(v166, v221);
    v167 = v234;
    v228(v95, v230, v234);
    v78 = v227;
    v77 = v224;
    (*(v227 + 16))(v131, v21, v224);
    v168 = v225;

    v169 = sub_2664DFE18();
    v170 = sub_2664E06D8();

    if (os_log_type_enabled(v169, v170))
    {
      v171 = swift_slowAlloc();
      v172 = swift_slowAlloc();
      v236[0] = v172;
      *v171 = 136446466;
      *(v171 + 4) = sub_2662A320C(v235, v168, v236);
      *(v171 + 12) = 2082;
      v173 = sub_2664DFD48();
      v175 = v174;
      (*(v227 + 8))(v131, v77);
      v176 = sub_2662A320C(v173, v175, v236);

      *(v171 + 14) = v176;
      _os_log_impl(&dword_26629C000, v169, v170, "Logging SiriKitEvent Event: %{public}s with extended error description: %{public}s", v171, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266784AD0](v172, -1, -1);
      v177 = v171;
      v78 = v227;
      MEMORY[0x266784AD0](v177, -1, -1);

      v178 = v222;
    }

    else
    {

      (*(v78 + 8))(v131, v77);
      v178 = v95;
    }

    v231(v178, v167);
LABEL_91:
    v101 = v226;
    if (!v226)
    {
      return (*(v78 + 8))(v21, v77);
    }

LABEL_92:
    v115 = v101 & 0xFFFFFFFFFFFFFF8;
    if (v101 >> 62)
    {
      if (!sub_2664E0A68())
      {
        return (*(v78 + 8))(v21, v77);
      }
    }

    else if (!*((v101 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return (*(v78 + 8))(v21, v77);
    }

    if ((v101 & 0xC000000000000001) != 0)
    {
      v179 = MEMORY[0x266783B70](0, v101);
LABEL_97:
      v180 = v179;
      v181 = a9;
      v182 = v215;
      if (!v214)
      {
        goto LABEL_110;
      }

      if (v214 >> 62)
      {
        if (!sub_2664E0A68())
        {
          goto LABEL_110;
        }

LABEL_100:
        LODWORD(v233) = a10;
        v183 = v234;
        v228(v182, v230, v234);
        v184 = v225;

        v185 = sub_2664DFE18();
        v186 = sub_2664E06E8();

        if (os_log_type_enabled(v185, v186))
        {
          v187 = swift_slowAlloc();
          v230 = a9;
          v188 = v187;
          v189 = swift_slowAlloc();
          v236[0] = v189;
          *v188 = 136446210;
          *(v188 + 4) = sub_2662A320C(v235, v184, v236);
          _os_log_impl(&dword_26629C000, v185, v186, "Logging Signpost Event: %{public}s resultStatuses is empty", v188, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v189);
          v190 = v189;
          v77 = v224;
          MEMORY[0x266784AD0](v190, -1, -1);
          v191 = v188;
          v181 = v230;
          MEMORY[0x266784AD0](v191, -1, -1);
        }

        v192 = v231(v182, v183);
        MEMORY[0x28223BE20](v192);
        v201 = v216;
        v202 = v181;
        LOBYTE(v203) = v233;
        v204 = v21;
        sub_266487534(sub_2664B6A1C, &v205[-6], v226);
      }

      else
      {
        if (*((v214 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_100;
        }

LABEL_110:
        v193 = [v180 integerValue];
        v194 = sub_2664DFD58();
        v195 = sub_2664E0858();
        if (qword_280F91508 != -1)
        {
          swift_once();
        }

        v196 = qword_280F91D48;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800724D8, &unk_2664E3920);
        v197 = swift_allocObject();
        *(v197 + 16) = xmmword_2664E34E0;
        v198 = MEMORY[0x277D83B88];
        v199 = MEMORY[0x277D83C10];
        *(v197 + 56) = MEMORY[0x277D83B88];
        *(v197 + 64) = v199;
        *(v197 + 32) = v193;
        *(v197 + 96) = v198;
        *(v197 + 104) = v199;
        *(v197 + 72) = v194;
        v200 = v219;
        sub_2664DFDF8();
        LOBYTE(v202) = 2;
        sub_2664DFDC8(v195, &dword_26629C000, v196, v216, a9, a10, v200, "status=%{signpost.telemetry:number1,public}d extendedStatus=%{signpost.telemetry:number2,public}d enableTelemetry=YES ", 118, v202, v197);

        (*(v220 + 8))(v200, v221);
        v77 = v224;
      }

      v78 = v227;
      return (*(v78 + 8))(v21, v77);
    }

    if (*((v101 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v179 = *(v101 + 32);
      goto LABEL_97;
    }

    __break(1u);
LABEL_108:
    swift_once();
  }

  __break(1u);
LABEL_116:
  __break(1u);
LABEL_117:
  __break(1u);
  return result;
}

void sub_2664B5C78(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = a3;
  v25 = a4;
  v22 = a1;
  v23 = a2;
  v4 = sub_2664DFE38();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v21 - v9;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v4, qword_280F914F0);
  swift_beginAccess();
  v12 = *(v5 + 16);
  v12(v10, v11, v4);
  v13 = sub_2664DFE18();
  v14 = sub_2664E06E8();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_26629C000, v13, v14, "MediaPlaybackProvider#prepareForSetQueueDestination...", v15, 2u);
    MEMORY[0x266784AD0](v15, -1, -1);
  }

  v16 = *(v5 + 8);
  v16(v10, v4);
  v12(v8, v11, v4);
  v17 = sub_2664DFE18();
  v18 = sub_2664E06C8();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_26629C000, v17, v18, "MediaPlaybackProvider#prepareForSetQueueDestination using system media application", v19, 2u);
    MEMORY[0x266784AD0](v19, -1, -1);
  }

  v16(v8, v4);
  v20 = [objc_opt_self() systemMediaApplicationDestination];
  sub_26649DAEC(v20, v22, v23, v24, v25);
}

uint64_t sub_2664B5F24(uint64_t a1)
{
  v1 = sub_2664DFE38();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v1, qword_280F914F0);
  swift_beginAccess();
  (*(v2 + 16))(v4, v5, v1);
  v6 = sub_2664DFE18();
  v7 = sub_2664E06C8();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_26629C000, v6, v7, "MediaPlaybackProvider#destroyMRQueue destroying queue...", v8, 2u);
    MEMORY[0x266784AD0](v8, -1, -1);
  }

  (*(v2 + 8))(v4, v1);
  return MRSystemAppPlaybackQueueDestroy();
}

uint64_t sub_2664B60DC(char a1, char a2, uint64_t (*a3)(uint64_t), uint64_t a4, unsigned int a5, uint64_t a6, void (*a7)(__int128 *), uint64_t a8)
{
  v54 = a8;
  v55 = a7;
  v53 = a6;
  v56 = a5;
  v11 = sub_2664DFE38();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v49 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v49 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v49 - v22;
  if (a1)
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v24 = __swift_project_value_buffer(v11, qword_280F914F0);
    swift_beginAccess();
    (*(v12 + 16))(v23, v24, v11);
    v25 = sub_2664DFE18();
    v26 = sub_2664E06E8();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_26629C000, v25, v26, "MediaPlaybackProvider#addToUpNext Insertion position supported", v27, 2u);
      MEMORY[0x266784AD0](v27, -1, -1);
    }

    (*(v12 + 8))(v23, v11);
    v28 = v56;
    return a3(v28);
  }

  if (a2)
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v29 = __swift_project_value_buffer(v11, qword_280F914F0);
    swift_beginAccess();
    (*(v12 + 16))(v21, v29, v11);
    v30 = sub_2664DFE18();
    v31 = sub_2664E06E8();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_26629C000, v30, v31, "MediaPlaybackProvider#addToUpNext Insertion position of 'next' is supported. Default to that.", v32, 2u);
      MEMORY[0x266784AD0](v32, -1, -1);
    }

    (*(v12 + 8))(v21, v11);
    v28 = 0;
    return a3(v28);
  }

  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v34 = __swift_project_value_buffer(v11, qword_280F914F0);
  swift_beginAccess();
  v52 = *(v12 + 16);
  v52(v18, v34, v11);
  v35 = sub_2664DFE18();
  v36 = sub_2664E06D8();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v51 = v34;
    v38 = v37;
    v50 = swift_slowAlloc();
    *&v58 = v50;
    *v38 = 136315138;
    v57 = v56;
    sub_2664B66E4();
    v39 = sub_2664E09D8();
    v41 = sub_2662A320C(v39, v40, &v58);

    *(v38 + 4) = v41;
    _os_log_impl(&dword_26629C000, v35, v36, "MediaPlaybackProvider#addToUpNext Insertion position not supported for %s", v38, 0xCu);
    v42 = v50;
    __swift_destroy_boxed_opaque_existential_1Tm(v50);
    MEMORY[0x266784AD0](v42, -1, -1);
    v43 = v38;
    v34 = v51;
    MEMORY[0x266784AD0](v43, -1, -1);
  }

  v44 = *(v12 + 8);
  v44(v18, v11);
  sub_2664B5F24(v53);
  v52(v15, v34, v11);
  v45 = sub_2664DFE18();
  v46 = sub_2664E06B8();
  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    *&v58 = v48;
    *v47 = 134218498;
    *(v47 + 4) = 19;
    *(v47 + 12) = 2048;
    *(v47 + 14) = 6;
    *(v47 + 22) = 2080;
    *(v47 + 24) = sub_2662A320C(0xD000000000000019, 0x80000002664FAF70, &v58);
    _os_log_impl(&dword_26629C000, v45, v46, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v47, 0x20u);
    __swift_destroy_boxed_opaque_existential_1Tm(v48);
    MEMORY[0x266784AD0](v48, -1, -1);
    MEMORY[0x266784AD0](v47, -1, -1);
  }

  v44(v15, v11);
  v58 = xmmword_2664EF570;
  v59 = 0x80000002664FAF70;
  v55(&v58);
}

unint64_t sub_2664B66E4()
{
  result = qword_280073FD0;
  if (!qword_280073FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280073FD0);
  }

  return result;
}

uint64_t objectdestroy_155Tm(void (*a1)(void))
{

  a1(*(v1 + 32));

  return MEMORY[0x2821FE8E8](v1, 56, 7);
}

uint64_t sub_2664B67D0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2664B6818()
{
  v1 = *(sub_2664DE438() - 8);
  v2 = (*(v1 + 80) + 72) & ~*(v1 + 80);
  v3 = v2 + *(v1 + 64);
  return sub_2663F4930(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), (v0 + 48), v0 + v2, *(v0 + v3), *(v0 + (v3 & 0xFFFFFFFFFFFFFFF8) + 8), *(v0 + (v3 & 0xFFFFFFFFFFFFFFF8) + 16), *(v0 + (((v3 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_2664B68C0(__int128 *a1)
{
  v3 = *(sub_2664DFE08() - 8);
  v4 = (*(v3 + 80) + 33) & ~*(v3 + 80);
  return sub_2663606A4(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32), v1 + v4, *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

void sub_2664B695C(void *a1)
{
  v3 = *(sub_2664DE438() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + 16);
  v8 = (v1 + v5);
  v9 = *v8;
  v10 = v8[1];
  v11 = *(v1 + v6);

  sub_26649F0B4(a1, v7, v1 + v4, v9, v10, v11);
}

void sub_2664B6A70(void *a1)
{
  v3 = *(sub_2664DE438() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = (v1 + v5);
  v10 = *v9;
  v11 = v9[1];
  v12 = *(v1 + v6);

  sub_26648F610(a1, v7, v8, v1 + v4, v10, v11, v12);
}

uint64_t objectdestroy_286Tm()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

void sub_2664B6BD8(void *a1)
{
  v3 = *(sub_2664DE438() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = ((v5 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  sub_2664925C0(a1, *(v1 + 16), *(v1 + 24), v1 + v4, *(v1 + v5), *(v1 + (v5 & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + v6), *(v1 + v6 + 8), *(v1 + ((v6 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((v6 + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((((v6 + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t objectdestroy_244Tm()
{

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t objectdestroy_247Tm()
{

  return MEMORY[0x2821FE8E8](v0, 136, 7);
}

uint64_t objectdestroy_215Tm()
{
  v1 = sub_2664DE438();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_2664B6F0C(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, char *, uint64_t, uint64_t))
{
  v2 = *(sub_2664DE438() - 8);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v1 + 2);
  v6 = *(v1 + 3);
  v7 = *(v1 + 4);
  v8 = *(v1 + 5);
  v9 = *(v1 + 6);
  v10 = *&v1[v4];
  v11 = *&v1[(v4 + 15) & 0xFFFFFFFFFFFFFFF8];

  return a1(v5, v6, v7, v8, v9, &v1[v3], v10, v11);
}

uint64_t sub_2664B6FC4()
{
  v1 = *(sub_2664DE438() - 8);
  v2 = (*(v1 + 80) + 49) & ~*(v1 + 80);
  v3 = v2 + *(v1 + 64);
  return sub_2663F0F4C(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), v0 + v2, *(v0 + v3), *(v0 + (v3 & 0xFFFFFFFFFFFFFFF8) + 8), *(v0 + (v3 & 0xFFFFFFFFFFFFFFF8) + 16), *(v0 + (((v3 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8)));
}

unint64_t sub_2664B7080()
{
  result = qword_280073FF8;
  if (!qword_280073FF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_2800737F0, &unk_2664E5320);
    sub_2664B67D0(&qword_280071F78, type metadata accessor for CFString, &unk_2664E3024);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280073FF8);
  }

  return result;
}

void *sub_2664B7134@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(v3 + 16);
  v7 = *v5;
  v6 = v5[1];
  v13[0] = v7;
  v13[1] = v6;
  v12[2] = v13;
  result = sub_2664AA958(sub_2664B719C, v12, a1, a2);
  *a3 = result;
  a3[1] = v9;
  a3[2] = v10;
  a3[3] = v11;
  return result;
}

uint64_t sub_2664B71F4(__int128 *a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = a1[9];
  v12[8] = a1[8];
  v12[9] = v5;
  v6 = a1[11];
  v12[10] = a1[10];
  v12[11] = v6;
  v7 = a1[5];
  v12[4] = a1[4];
  v12[5] = v7;
  v8 = a1[7];
  v12[6] = a1[6];
  v12[7] = v8;
  v9 = a1[1];
  v12[0] = *a1;
  v12[1] = v9;
  v10 = a1[3];
  v12[2] = a1[2];
  v12[3] = v10;
  return sub_266489448(v12, v2, v3, v4);
}

uint64_t objectdestroy_124Tm(uint64_t a1)
{

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

unint64_t sub_2664B72C8()
{
  result = qword_280074020;
  if (!qword_280074020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280074020);
  }

  return result;
}

Swift::Void __swiftcall INAddMediaIntent.addPlaylistAppEntityId(appEntityId:)(Swift::String appEntityId)
{
  MEMORY[0x2667833B0](appEntityId._countAndFlagsBits, appEntityId._object);
  _s16SiriAudioSupport22InternalSignalsManagerC3add_2toySS_So8INIntentCtFZ_0(0xD000000000000014, 0x80000002664FBE30, v1);
}

Swift::String_optional __swiftcall INAddMediaIntent.getPlaylistAppEntityId()()
{
  v1 = _s16SiriAudioSupport22InternalSignalsManagerC9getSignal4with4fromSSSgSS_So8INIntentCtFZ_0(0xD000000000000014, 0x80000002664FBE30, v0);
  result.value._object = v2;
  result.value._countAndFlagsBits = v1;
  return result;
}

uint64_t sub_2664B74CC()
{
  v1 = sub_2664DEA78();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(&off_279BCC920 + *v0);
  v6 = *(v5 + 16);
  if (!v6)
  {

    return MEMORY[0x277D84F90];
  }

  v14 = MEMORY[0x277D84F90];
  sub_2662FCFF4(0, v6, 0);
  v7 = v14;
  v8 = 32;
  do
  {
    v9 = *(v5 + v8);
    if (v9 > 2)
    {
      if (v9 != 3)
      {
        if (v9 == 4)
        {
          sub_2664DEA58();
          goto LABEL_13;
        }

        goto LABEL_10;
      }

      sub_2664DEA48();
    }

    else
    {
      if (v9 != 1)
      {
        if (v9 == 2)
        {
          sub_2664DEA28();
          goto LABEL_13;
        }

LABEL_10:
        sub_2664DEA38();
        goto LABEL_13;
      }

      sub_2664DEA68();
    }

LABEL_13:
    v14 = v7;
    v11 = *(v7 + 16);
    v10 = *(v7 + 24);
    if (v11 >= v10 >> 1)
    {
      sub_2662FCFF4((v10 > 1), v11 + 1, 1);
      v7 = v14;
    }

    *(v7 + 16) = v11 + 1;
    (*(v2 + 32))(v7 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v11, v4, v1);
    v8 += 8;
    --v6;
  }

  while (v6);

  return v7;
}

uint64_t AcceptedSpeakerIdConfidence.hashValue.getter()
{
  v1 = *v0;
  sub_2664E0E68();
  MEMORY[0x266783E90](v1);
  return sub_2664E0EB8();
}

unint64_t sub_2664B7754()
{
  result = qword_280074028;
  if (!qword_280074028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280074028);
  }

  return result;
}

double sub_2664B77B8()
{
  if (qword_280071C38 != -1)
  {
    swift_once();
  }

  v0 = qword_2800737C0;
  type metadata accessor for MediaRemoteProvider();
  v1 = swift_allocObject();
  v1[5] = type metadata accessor for MediaRemoteAPIProvider();
  v1[6] = &protocol witness table for MediaRemoteAPIProvider;
  v1[2] = v0;
  qword_280074030 = v1;

  return result;
}

uint64_t MediaRemoteProvider.__allocating_init(mediaRemoteAPIProvider:)(uint64_t a1)
{
  v2 = swift_allocObject();
  v10 = *(a1 + 24);
  v3 = v10;
  v4 = __swift_mutable_project_boxed_opaque_existential_1(a1, v10);
  v5 = *(v10 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7);
  *(v2 + 40) = v10;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v2 + 16));
  (*(v5 + 32))(boxed_opaque_existential_1, v7, v3);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v2;
}

double static MediaRemoteProvider.shared.getter()
{
  if (qword_280071CF0 != -1)
  {
    swift_once();
  }

  return result;
}

void *MediaRemoteProvider.init(mediaRemoteAPIProvider:)(void *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  v5 = __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  MEMORY[0x28223BE20](v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7);
  v9 = sub_2663E8770(v7, v1, v3, v4);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v9;
}

uint64_t MediaRemoteProvider.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t ShowMusicNoticeAppIntent.init(noticeEntity:itemEntity:)@<X0>(uint64_t *a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073968, &qword_2664ED390);
  swift_allocObject();
  a3[1] = sub_2664DFA28();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073970, &qword_2664ED398);
  swift_allocObject();
  *a3 = sub_2664DFA28();

  sub_2664DFA38();
}

uint64_t PodcastShowEntity.__allocating_init(_:)(uint64_t a1)
{
  v2 = sub_2664DF888();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_allocObject();
  (*(v3 + 16))(v5, a1, v2);
  v6 = sub_2664DF8E8();
  (*(v3 + 8))(a1, v2);
  return v6;
}

uint64_t PodcastShowEntity.init(_:)(uint64_t a1)
{
  v2 = sub_2664DF888();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2);
  v5 = sub_2664DF8E8();
  (*(v3 + 8))(a1, v2);
  return v5;
}

uint64_t PodcastShowEntity.__deallocating_deinit()
{
  _s16SiriAudioSupport20PodcastChannelEntityCfd_0();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PodcastShowEntity(uint64_t a1)
{
  result = qword_2800740A0;
  if (!qword_2800740A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2664B8164(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28213DE00](a1, a2, WitnessTable);
}

uint64_t sub_2664B81F8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28213DB58](a1, WitnessTable);
}

uint64_t sub_2664B8280(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PodcastShowEntity(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2664B82C4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28213DDE8](a1, a2, WitnessTable);
}

Swift::UInt64_optional __swiftcall MPMediaLibrary.persistentID(fromSiriSyncID:)(Swift::String fromSiriSyncID)
{
  v2 = v1;
  object = fromSiriSyncID._object;
  countAndFlagsBits = fromSiriSyncID._countAndFlagsBits;
  v5 = sub_2664DFE38();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2664E02A8();
  v10 = [v2 entityWithSiriSyncIdentifier_];

  if (v10)
  {
    v11 = [v10 persistentID];
  }

  else
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v12 = __swift_project_value_buffer(v5, qword_280F914F0);
    swift_beginAccess();
    (*(v6 + 16))(v8, v12, v5);

    v13 = sub_2664DFE18();
    v14 = sub_2664E06D8();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v19 = v16;
      *v15 = 136315138;
      *(v15 + 4) = sub_2662A320C(countAndFlagsBits, object, &v19);
      _os_log_impl(&dword_26629C000, v13, v14, "MPMediaLibrary#persistantID Failed to get mediaEntity by querying with siriSyncID: %s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v16);
      MEMORY[0x266784AD0](v16, -1, -1);
      MEMORY[0x266784AD0](v15, -1, -1);
    }

    (*(v6 + 8))(v8, v5);
    v11 = 0;
  }

  v17 = v10 == 0;
  v18 = v11;
  result.value = v18;
  result.is_nil = v17;
  return result;
}

uint64_t sub_2664B85EC(uint64_t a1, void *a2)
{
  v4 = sub_2664DF398();
  v5 = MEMORY[0x28223BE20](v4);
  v7 = v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v47 = v41 - v9;
  v48 = a1;
  v10 = a1 + 56;
  v11 = 1 << *(a1 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(a1 + 56);
  v14 = (v11 + 63) >> 6;
  v50 = (v8 + 32);
  v45 = v8;
  v41[2] = v8 + 40;

  v15 = 0;
  v42 = v14;
  v43 = a1 + 56;
  v44 = a2;
  v46 = v4;
  while (v13)
  {
LABEL_11:
    v19 = (*(v48 + 48) + ((v15 << 10) | (16 * __clz(__rbit64(v13)))));
    v20 = *v19;
    v21 = v19[1];

    v22 = v47;
    sub_2664DF388();
    v23 = v7;
    v49 = *v50;
    v49(v7, v22, v4);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = *a2;
    v51 = v25;
    v27 = sub_2662A3E98(v20, v21);
    v28 = v25[2];
    v29 = (v26 & 1) == 0;
    v30 = v28 + v29;
    if (__OFADD__(v28, v29))
    {
      goto LABEL_22;
    }

    v31 = v26;
    if (v25[3] >= v30)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_266454B64();
      }
    }

    else
    {
      sub_2664521A4(v30, isUniquelyReferenced_nonNull_native);
      v32 = sub_2662A3E98(v20, v21);
      if ((v31 & 1) != (v33 & 1))
      {
        goto LABEL_24;
      }

      v27 = v32;
    }

    v7 = v23;
    v34 = v51;
    if (v31)
    {
      v16 = v51[7] + *(v45 + 72) * v27;
      v4 = v46;
      (*(v45 + 40))(v16, v23, v46);
    }

    else
    {
      v51[(v27 >> 6) + 8] |= 1 << v27;
      v35 = (v34[6] + 16 * v27);
      *v35 = v20;
      v35[1] = v21;
      v36 = v34[7] + *(v45 + 72) * v27;
      v4 = v46;
      v49(v36, v23, v46);
      v37 = v34[2];
      v38 = __OFADD__(v37, 1);
      v39 = v37 + 1;
      if (v38)
      {
        goto LABEL_23;
      }

      v34[2] = v39;
    }

    v13 &= v13 - 1;
    v17 = v44;
    *v44 = v34;
    a2 = v17;

    v14 = v42;
    v10 = v43;
  }

  while (1)
  {
    v18 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v18 >= v14)
    {
    }

    v13 = *(v10 + 8 * v18);
    ++v15;
    if (v13)
    {
      v15 = v18;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = sub_2664E0DD8();
  __break(1u);
  return result;
}

uint64_t sub_2664B8938()
{
  result = sub_2662C46F0(&unk_2877E54F0);
  qword_280F90D70 = result;
  return result;
}

uint64_t sub_2664B8960()
{
  v0 = sub_2662C3A68(&unk_2877E1320);
  result = swift_arrayDestroy();
  off_280F90D88 = v0;
  return result;
}

uint64_t sub_2664B89AC()
{
  result = sub_26639EED8(&unk_2877E2D88);
  qword_280F90DB0 = result;
  return result;
}

uint64_t sub_2664B89D4()
{
  result = sub_26639EED8(&unk_2877E2DF8);
  qword_280F90D98 = result;
  return result;
}

uint64_t sub_2664B89FC()
{
  result = sub_26639EED8(&unk_2877E2E40);
  qword_280F90DD0 = result;
  return result;
}

uint64_t sub_2664B8A24()
{
  v0 = sub_26639EB98(&unk_2877E1360);
  result = swift_arrayDestroy();
  qword_280F91D00 = v0;
  return result;
}

unint64_t sub_2664B8A70(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073600, &unk_2664E37B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2664EB480;
  *(inited + 32) = 0xD000000000000019;
  *(inited + 40) = 0x80000002664F0EF0;
  v7 = *v2;
  v8 = 0;
  v9 = 0;
  if (*(v7 + 16))
  {
    v10 = sub_2662A3E98(a1, a2);
    v9 = 0;
    if (v11)
    {
      v9 = *(*(v7 + 56) + 8 * v10);
    }
  }

  v12 = MEMORY[0x277D839F8];
  *(inited + 48) = v9;
  *(inited + 72) = v12;
  *(inited + 80) = 0xD00000000000001CLL;
  *(inited + 88) = 0x80000002664F0F10;
  v13 = v3[1];
  if (*(v13 + 16))
  {
    v14 = sub_2662A3E98(a1, a2);
    if (v15)
    {
      v8 = *(*(v13 + 56) + 8 * v14);
    }
  }

  *(inited + 96) = v8;
  *(inited + 120) = v12;
  *(inited + 128) = 0x4674726F70707573;
  *(inited + 136) = 0xEB0000000067616CLL;
  v16 = 0;
  if (sub_2663CD060(a1, a2, v3[2]))
  {
    v17 = 1.0;
  }

  else
  {
    v17 = 0.0;
  }

  *(inited + 144) = v17;
  *(inited + 168) = v12;
  *(inited + 176) = 0x466E726F63696E75;
  *(inited + 184) = 0xEB0000000067616CLL;
  if (sub_2663CD060(a1, a2, v3[3]))
  {
    v18 = 1.0;
  }

  else
  {
    v18 = 0.0;
  }

  *(inited + 192) = v18;
  *(inited + 216) = v12;
  *(inited + 224) = 0xD000000000000013;
  *(inited + 232) = 0x80000002664F0F30;
  if (sub_2663CD060(a1, a2, v3[4]))
  {
    v19 = 1.0;
  }

  else
  {
    v19 = 0.0;
  }

  *(inited + 240) = v19;
  *(inited + 264) = v12;
  *(inited + 272) = 825389430;
  *(inited + 280) = 0xE400000000000000;
  v20 = v3[5];
  if (*(v20 + 16))
  {
    v21 = sub_2662A3E98(a1, a2);
    if (v22)
    {
      v16 = *(*(v20 + 56) + 8 * v21);
    }
  }

  *(inited + 312) = v12;
  *(inited + 288) = v16;
  v23 = sub_2663854AC(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2800734F0, &unk_2664E3660);
  swift_arrayDestroy();
  return v23;
}

uint64_t sub_2664B8CC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = v3[1];
  v9 = 0;
  v10 = 0;
  if (*(v8 + 16))
  {
    v11 = sub_2662A3E98(a1, a2);
    v10 = 0;
    if (v12)
    {
      v10 = *(*(v8 + 56) + 8 * v11);
    }
  }

  *(a3 + 96) = v10;
  v13 = *v4;
  if (*(*v4 + 16))
  {
    v14 = sub_2662A3E98(a1, a2);
    if (v15)
    {
      v9 = *(*(v13 + 56) + 8 * v14);
    }
  }

  *(a3 + 120) = v9;
  v16 = 0;
  if (sub_2663CD060(a1, a2, v4[2]))
  {
    v17 = 1.0;
  }

  else
  {
    v17 = 0.0;
  }

  *(a3 + 104) = v17;
  if (sub_2663CD060(a1, a2, v4[3]))
  {
    v18 = 1.0;
  }

  else
  {
    v18 = 0.0;
  }

  *(a3 + 176) = v18;
  result = sub_2663CD060(a1, a2, v4[4]);
  if (result)
  {
    v20 = 1.0;
  }

  else
  {
    v20 = 0.0;
  }

  *(a3 + 16) = v20;
  v21 = v4[5];
  if (*(v21 + 16))
  {
    result = sub_2662A3E98(a1, a2);
    if (v22)
    {
      v16 = *(*(v21 + 56) + 8 * result);
    }
  }

  *(a3 + 32) = v16;
  return result;
}

uint64_t sub_2664B8DEC(uint64_t *a1, uint64_t a2, char a3, uint64_t a4)
{
  if (*(a4 + 16) && (v7 = sub_2662A3E98(*a1, a1[1]), (v8 & 1) != 0))
  {
    v9 = *(*(a4 + 56) + 8 * v7);
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  v10 = sub_266484DB4(a2, a3 & 1, v9);

  return v10 & 1;
}

void sub_2664B8E74(unint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4, unint64_t *a5)
{
  v6 = *a1;
  v7 = *(a1 + 8);
  v44 = v7;
  v45 = v6;
  v42 = a3;
  v43 = a4;
  if (a2 && *(a2 + 16) && (a1 = sub_2662A3E98(v6, v7), (v9 & 1) != 0))
  {
    v10 = *(*(a2 + 56) + 8 * a1);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v11 = 0.05;
  v12 = &qword_2664EF818[253];
  v13 = 0.05;
  v46 = *(v10 + 16);
  if (v46)
  {
    v41 = a5;
    v14 = 0;
    v49 = v10 + 32;
    while (v14 < *(v10 + 16))
    {
      v15 = v12;
      v16 = (v49 + 16 * v14);
      v17 = *v16;
      v18 = v16[1];
      v19 = qword_280F90D80;

      if (v19 != -1)
      {
        swift_once();
      }

      v20 = off_280F90D88;
      if (*(off_280F90D88 + 2))
      {
        sub_2664E0E68();
        sub_2664E0368();
        v21 = sub_2664E0EB8();
        v22 = -1 << v20[32];
        v23 = v21 & ~v22;
        if ((*&v20[((v23 >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> v23))
        {
          v24 = ~v22;
          while (1)
          {
            v25 = (*(v20 + 6) + 16 * v23);
            v26 = *v25 == v17 && v25[1] == v18;
            if (v26 || (sub_2664E0D88() & 1) != 0)
            {
              break;
            }

            v23 = (v23 + 1) & v24;
            if (((*&v20[((v23 >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> v23) & 1) == 0)
            {
              goto LABEL_8;
            }
          }

          v12 = v15;
          v13 = v15[150];
          goto LABEL_23;
        }
      }

LABEL_8:
      ++v14;

      v12 = v15;
      if (v14 == v46)
      {
        v13 = 0.05;
LABEL_23:
        a5 = v41;
        goto LABEL_24;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_24:
    v47 = 0xD000000000000017;
    v48 = 0x80000002664F0E70;
    MEMORY[0x28223BE20](a1);
    v40 = &v47;
    v27 = sub_2662AA720(sub_2662AA7CC, v39, v10);
    v28 = v12[150];
    if (v27)
    {
      v29 = v12[150];
    }

    else
    {
      v29 = 0.05;
    }

    v47 = 0xD000000000000019;
    v48 = 0x80000002664F0E90;
    MEMORY[0x28223BE20](v27);
    v40 = &v47;
    v30 = sub_2662AA720(sub_2663A6860, v39, v10);
    if (v30)
    {
      v11 = v28;
    }

    v47 = 0xD000000000000014;
    v48 = 0x80000002664F0ED0;
    MEMORY[0x28223BE20](v30);
    v40 = &v47;
    v31 = sub_2662AA720(sub_2663A6860, v39, v10);

    if (v31)
    {
      v11 = v11 * 0.5;
      v29 = v29 * 0.5;
      v13 = v13 * 0.5;
    }

    v32 = v42;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v47 = *v32;
    *v32 = 0x8000000000000000;
    v35 = v44;
    v34 = v45;
    sub_26634F084(v45, v44, isUniquelyReferenced_nonNull_native, v13);
    *v32 = v47;

    v36 = v43;
    v37 = swift_isUniquelyReferenced_nonNull_native();
    v47 = *v36;
    *v36 = 0x8000000000000000;
    sub_26634F084(v34, v35, v37, v29);
    *v36 = v47;

    v38 = swift_isUniquelyReferenced_nonNull_native();
    v47 = *a5;
    *a5 = 0x8000000000000000;
    sub_26634F084(v34, v35, v38, v11);
    *a5 = v47;
  }
}

double sub_2664B92BC()
{
  if (qword_280F90DC0 != -1)
  {
    swift_once();
  }

  return result;
}

unint64_t *sub_2664B9320(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
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

    v8 = sub_2664B9718(result, a2, a3, a4);

    return v8;
  }

  return result;
}

unint64_t *sub_2664B93B0(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, __n128))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    v8 = sub_2664B9EA0(result, a2, a3, a4);

    return v8;
  }

  return result;
}

unint64_t *sub_2664B9440(unint64_t *result, uint64_t a2, void *a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = sub_2664BA24C(v7, a2, a3, a4);
    swift_bridgeObjectRelease_n();

    return v8;
  }

  return result;
}

unint64_t *sub_2664B94DC(unint64_t *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    v6 = sub_2664B9DB4(result, a2, a3);

    return v6;
  }

  return result;
}

unint64_t *sub_2664B9554(uint64_t a1, uint64_t a2)
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
    v9 = sub_2664B9718((v12 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0)), v6, a2, a1);
  }

  else
  {
    v11 = swift_slowAlloc();

    v9 = sub_2664B9320(v11, v6, a2, a1);

    MEMORY[0x266784AD0](v11, -1, -1);
  }

  return v9;
}

unint64_t *sub_2664B9718(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v50 = result;
  if (*(a4 + 16) >= *(a3 + 16))
  {
    v53 = 0;
    v13 = 0;
    v14 = a3 + 56;
    v15 = 1 << *(a3 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(a3 + 56);
    v18 = (v15 + 63) >> 6;
    v19 = a4 + 56;
    while (v17)
    {
      v20 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_18:
      v51 = v20 | (v13 << 6);
      v23 = (*(a3 + 48) + 16 * v51);
      v25 = *v23;
      v24 = v23[1];
      sub_2664E0E68();

      sub_2664E0368();
      v26 = sub_2664E0EB8();
      v27 = -1 << *(v4 + 32);
      v28 = v26 & ~v27;
      if ((*(v19 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28))
      {
        v29 = ~v27;
        while (1)
        {
          v30 = (*(a4 + 48) + 16 * v28);
          v31 = *v30 == v25 && v30[1] == v24;
          if (v31 || (sub_2664E0D88() & 1) != 0)
          {
            break;
          }

          v28 = (v28 + 1) & v29;
          if (((*(v19 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
          {
            goto LABEL_10;
          }
        }

        *(v50 + ((v51 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v51;
        v32 = __OFADD__(v53++, 1);
        v4 = a4;
        if (v32)
        {
          __break(1u);
LABEL_30:
          v5 = a3;
LABEL_31:

          return sub_2664CF388(v50, a2, v53, v5);
        }
      }

      else
      {
LABEL_10:

        v4 = a4;
      }
    }

    v21 = v13;
    while (1)
    {
      v13 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v13 >= v18)
      {
        goto LABEL_30;
      }

      v22 = *(v14 + 8 * v13);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v17 = (v22 - 1) & v22;
        goto LABEL_18;
      }
    }

LABEL_54:
    __break(1u);
  }

  else
  {
    v53 = 0;
    v6 = 0;
    v7 = a4 + 56;
    v8 = 1 << *(a4 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(a4 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = a3 + 56;
    v49 = v11;
    while (v10)
    {
      v33 = __clz(__rbit64(v10));
      v52 = (v10 - 1) & v10;
LABEL_41:
      v36 = (*(v4 + 48) + 16 * (v33 | (v6 << 6)));
      v38 = *v36;
      v37 = v36[1];
      sub_2664E0E68();

      sub_2664E0368();
      v39 = sub_2664E0EB8();
      v40 = -1 << *(v5 + 32);
      v41 = v39 & ~v40;
      v42 = v41 >> 6;
      v43 = 1 << v41;
      if (((1 << v41) & *(v12 + 8 * (v41 >> 6))) != 0)
      {
        v44 = (*(v5 + 48) + 16 * v41);
        if (*v44 != v38 || v44[1] != v37)
        {
          v46 = ~v40;
          while ((sub_2664E0D88() & 1) == 0)
          {
            v41 = (v41 + 1) & v46;
            v42 = v41 >> 6;
            v43 = 1 << v41;
            if (((1 << v41) & *(v12 + 8 * (v41 >> 6))) == 0)
            {
              v5 = a3;
              goto LABEL_33;
            }

            v47 = (*(a3 + 48) + 16 * v41);
            if (*v47 == v38 && v47[1] == v37)
            {
              break;
            }
          }
        }

        v11 = v49;
        v50[v42] |= v43;
        v5 = a3;
        v32 = __OFADD__(v53++, 1);
        v4 = a4;
        v10 = v52;
        if (v32)
        {
          __break(1u);
          goto LABEL_54;
        }
      }

      else
      {
LABEL_33:

        v4 = a4;
        v11 = v49;
        v10 = v52;
      }
    }

    v34 = v6;
    while (1)
    {
      v6 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        break;
      }

      if (v6 >= v11)
      {
        goto LABEL_31;
      }

      v35 = *(v7 + 8 * v6);
      ++v34;
      if (v35)
      {
        v33 = __clz(__rbit64(v35));
        v52 = (v35 - 1) & v35;
        goto LABEL_41;
      }
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_2664B9AF4(uint64_t a1)
{
  v2 = a1;
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    MEMORY[0x28223BE20](a1);
    v6 = v10 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v6, v5);
    result = sub_2664B9DB4(v6, v4, v2);
    if (v1)
    {
      return swift_willThrow();
    }

    return result;
  }

  v8 = swift_slowAlloc();
  v9 = sub_2664B94DC(v8, v4, v2);
  result = MEMORY[0x266784AD0](v8, -1, -1);
  if (!v1)
  {
    return v9;
  }

  return result;
}

unint64_t *sub_2664B9C54(uint64_t a1)
{
  v2 = a1;
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    MEMORY[0x28223BE20](a1);
    v6 = v10 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v6, v5);
    result = sub_266484CC8(v6, v4, v2);
    if (v1)
    {
      return swift_willThrow();
    }

    return result;
  }

  v8 = swift_slowAlloc();
  v9 = sub_266484AF0(v8, v4, v2);
  result = MEMORY[0x266784AD0](v8, -1, -1);
  if (!v1)
  {
    return v9;
  }

  return result;
}

unint64_t *sub_2664B9DB4(unint64_t *result, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  v5 = 0;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v11 = v10 | (v5 << 6);
LABEL_11:
    if (*(*(a3 + 56) + 8 * v11) == 2)
    {
      *(result + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      if (__OFADD__(v4++, 1))
      {
        __break(1u);
        return sub_2664D0018(result, a2, v4, a3);
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v9)
    {
      return sub_2664D0018(result, a2, v4, a3);
    }

    v13 = *(a3 + 64 + 8 * v5);
    ++v12;
    if (v13)
    {
      v8 = (v13 - 1) & v13;
      v11 = __clz(__rbit64(v13)) | (v5 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_2664B9EA0(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, __n128))
{
  v25 = a3;
  v22 = 0;
  v21 = result;
  v5 = 0;
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v14 = v11 | (v5 << 6);
    v15 = (*(v25 + 48) + 16 * v14);
    v16 = v15[1];
    v24[0] = *v15;
    v24[1] = v16;

    v17 = (a4)(v24);

    if (v4)
    {
      return result;
    }

    if (v17)
    {
      *(v21 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v22++, 1))
      {
        __break(1u);
LABEL_16:
        v19 = v25;

        return sub_2664CF388(v21, a2, v22, v19);
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      goto LABEL_16;
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

double sub_2664BA014@<D0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  v3 = a1[2];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v3;

  return result;
}

unint64_t sub_2664BA02C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280073A50, &unk_2664ED5F0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v23 - v9;
  v11 = sub_2664DF398();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v13);
  v18 = &v23 - v17;
  v19 = *a4;
  if (*(*a4 + 16))
  {
    result = sub_2662A3E98(a1, a2);
    if (v20)
    {
      v21 = *(v19 + 56) + *(v12 + 72) * result;
      v24 = a1;
      v22 = *(v12 + 16);
      v22(v15, v21, v11);
      (*(v12 + 32))(v18, v15, v11);
      HistoryStats.addInstance(date:)(a3);
      v22(v10, v18, v11);
      (*(v12 + 56))(v10, 0, 1, v11);

      sub_266449250(v10, v24, a2);
      return (*(v12 + 8))(v18, v11);
    }
  }

  return result;
}

uint64_t sub_2664BA24C(unint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v40[0] = a2;
  v41 = a1;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800729E0, &qword_2664E5308);
  MEMORY[0x28223BE20](v47);
  v7 = (v40 - v6);
  v55 = sub_2664DF398();
  result = MEMORY[0x28223BE20](v55);
  v54 = v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = 0;
  v52 = a3;
  v14 = a3[8];
  v13 = a3 + 8;
  v12 = v14;
  v15 = 1 << *(v13 - 32);
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  else
  {
    v16 = -1;
  }

  v17 = v16 & v12;
  v18 = (v15 + 63) >> 6;
  v43 = 0;
  v44 = v9 + 16;
  v45 = a4;
  v46 = v9;
  v48 = (v9 + 8);
  v49 = v18;
  v50 = v7;
  v42 = a4 + 56;
  while (v17)
  {
    v19 = __clz(__rbit64(v17));
    v53 = (v17 - 1) & v17;
LABEL_14:
    v22 = v19 | (v11 << 6);
    v23 = v52[7];
    v24 = (v52[6] + 16 * v22);
    v25 = *v24;
    v26 = v24[1];
    v27 = *(v46 + 72);
    v51 = v22;
    v28 = *(v46 + 16);
    v29 = v54;
    v30 = v55;
    v28(v54, v23 + v27 * v22, v55);
    *v7 = v25;
    v7[1] = v26;
    v28(v7 + *(v47 + 48), v29, v30);
    v31 = v45;
    if (!*(v45 + 16))
    {
      swift_bridgeObjectRetain_n();
      goto LABEL_6;
    }

    sub_2664E0E68();
    swift_bridgeObjectRetain_n();
    sub_2664E0368();
    v32 = sub_2664E0EB8();
    v33 = -1 << *(v31 + 32);
    v34 = v32 & ~v33;
    v35 = v42;
    if ((*(v42 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34))
    {
      v36 = ~v33;
      while (1)
      {
        v37 = (*(v31 + 48) + 16 * v34);
        v38 = *v37 == v25 && v37[1] == v26;
        if (v38 || (sub_2664E0D88() & 1) != 0)
        {
          break;
        }

        v34 = (v34 + 1) & v36;
        if (((*(v35 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34) & 1) == 0)
        {
          goto LABEL_6;
        }
      }

      v7 = v50;
      sub_2662A9238(v50, &qword_2800729E0, &qword_2664E5308);
      (*v48)(v54, v55);

      *(v41 + ((v51 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v51;
      v39 = __OFADD__(v43++, 1);
      v18 = v49;
      v17 = v53;
      if (v39)
      {
        __break(1u);
        return sub_2664CFC98(v41, v40[0], v43, v52);
      }
    }

    else
    {
LABEL_6:
      v7 = v50;
      sub_2662A9238(v50, &qword_2800729E0, &qword_2664E5308);
      (*v48)(v54, v55);

      v18 = v49;
      v17 = v53;
    }
  }

  v20 = v11;
  while (1)
  {
    v11 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v11 >= v18)
    {
      return sub_2664CFC98(v41, v40[0], v43, v52);
    }

    v21 = v13[v11];
    ++v20;
    if (v21)
    {
      v19 = __clz(__rbit64(v21));
      v53 = (v21 - 1) & v21;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2664BA650(uint64_t a1, uint64_t a2)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = 8 * v7;
  v9 = swift_bridgeObjectRetain_n();
  if (v6 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v12 = swift_slowAlloc();

      v10 = sub_2664B9440(v12, v7, a1, a2);
      MEMORY[0x266784AD0](v12, -1, -1);
      swift_bridgeObjectRelease_n();
      return v10;
    }
  }

  MEMORY[0x28223BE20](v9);
  bzero(v13 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0), v8);

  v10 = sub_2664BA24C((v13 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0)), v7, a1, a2);

  if (v2)
  {
    swift_willThrow();
  }

  swift_bridgeObjectRelease_n();
  return v10;
}

uint64_t sub_2664BA810(uint64_t a1, uint64_t a2)
{
  v321 = sub_2664DF398();
  v323 = *(v321 - 8);
  MEMORY[0x28223BE20](v321);
  v320 = v275 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v298 = sub_2664DE438();
  v297 = *(v298 - 8);
  v5 = MEMORY[0x28223BE20](v298);
  v285 = v275 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v296 = v275 - v7;
  v322 = sub_2664DFE38();
  v324 = *(v322 - 8);
  v8 = MEMORY[0x28223BE20](v322);
  v291 = v275 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v289 = v275 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v299 = v275 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v295 = v275 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v284 = v275 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v292 = v275 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v308 = v275 - v21;
  MEMORY[0x28223BE20](v20);
  v23 = v275 - v22;
  v301 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800729C8, &unk_2664E52E0);
  v24 = MEMORY[0x28223BE20](v301);
  v290 = v275 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v288 = v275 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v294 = v275 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v310 = (v275 - v31);
  v32 = MEMORY[0x28223BE20](v30);
  v314 = v275 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v287 = v275 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v286 = (v275 - v37);
  v38 = MEMORY[0x28223BE20](v36);
  v293 = (v275 - v39);
  v40 = MEMORY[0x28223BE20](v38);
  v42 = v275 - v41;
  v43 = MEMORY[0x28223BE20](v40);
  v300 = v275 - v44;
  v45 = MEMORY[0x28223BE20](v43);
  v47 = v275 - v46;
  MEMORY[0x28223BE20](v45);
  v315 = v275 - v48;
  v330 = MEMORY[0x277D84F98];
  v309 = a1;
  sub_2664B85EC(a1, &v330);
  v318 = 0;
  v316 = a2;
  v49 = *(a2 + 16);
  if (!v49)
  {
    goto LABEL_11;
  }

  v50 = v316 + 32;
  v51 = *(a2 + 16);
  while (1)
  {
    sub_2662A5550(v50, &v326);
    sub_2662A5550(&v326, v325);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072550, &qword_2664EA240);
    if (swift_dynamicCast())
    {
      break;
    }

    __swift_destroy_boxed_opaque_existential_1Tm(&v326);
    v50 += 40;
    if (!--v51)
    {
      goto LABEL_11;
    }
  }

  sub_2662A8618(&v326, &v328);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_11:
    v306 = 0;
    v307 = 0;
    goto LABEL_12;
  }

  v307 = *(&v326 + 1);
  v52 = v326;
  v306 = v327;
  if (!v326)
  {
LABEL_12:
    v65 = sub_2664DEC48();
    v66 = *(*(v65 - 8) + 56);
    LODWORD(v313) = 1;
    v66(v315, 1, 1, v65);
    v52 = 0;
LABEL_13:
    v58 = v322;
    goto LABEL_14;
  }

  v53 = sub_2664DEFF8();
  if (!*(v52 + 16))
  {

    v180 = sub_2664DEC48();
    (*(*(v180 - 8) + 56))(v315, 1, 1, v180);
    LODWORD(v313) = 0;
    goto LABEL_13;
  }

  v55 = sub_2662A3E98(v53, v54);
  v57 = v56;

  v58 = v322;
  if (v57)
  {
    v59 = *(v52 + 56);
    v60 = sub_2664DEC48();
    v61 = *(v60 - 8);
    v62 = v61;
    v63 = v59 + *(v61 + 72) * v55;
    v64 = v315;
    (*(v61 + 16))(v315, v63, v60);

    (*(v62 + 56))(v64, 0, 1, v60);
  }

  else
  {

    v181 = sub_2664DEC48();
    (*(*(v181 - 8) + 56))(v315, 1, 1, v181);
  }

  LODWORD(v313) = 0;
LABEL_14:
  v67 = v324;
  v319 = v52;
  if (qword_280F914E8 == -1)
  {
    goto LABEL_15;
  }

  while (1)
  {
    swift_once();
LABEL_15:
    v68 = __swift_project_value_buffer(v58, qword_280F914F0);
    swift_beginAccess();
    v69 = *(v67 + 16);
    v305 = v68;
    v304 = v67 + 16;
    v303 = v69;
    v69(v23, v68, v58);
    sub_2664C0484(v315, v47);
    v70 = sub_2664DFE18();
    v71 = sub_2664E06C8();
    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      v328 = v73;
      *v72 = 136315138;
      sub_2664C0484(v47, v300);
      v74 = sub_2664E0318();
      v76 = v75;
      sub_2662A9238(v47, &qword_2800729C8, &unk_2664E52E0);
      v77 = sub_2662A320C(v74, v76, &v328);
      v67 = v324;

      *(v72 + 4) = v77;
      _os_log_impl(&dword_26629C000, v70, v71, "CompoundSignal#activeScores current foregroundBundleMap is %s", v72, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v73);
      v78 = v73;
      v58 = v322;
      MEMORY[0x266784AD0](v78, -1, -1);
      MEMORY[0x266784AD0](v72, -1, -1);
    }

    else
    {

      sub_2662A9238(v47, &qword_2800729C8, &unk_2664E52E0);
    }

    v302 = *(v67 + 8);
    v302(v23, v58);
    sub_2664C0484(v315, v42);
    v79 = sub_2664DEC48();
    v80 = *(v79 - 8);
    v81 = *(v80 + 48);
    v312 = v80 + 48;
    v311 = v81;
    v82 = v81(v42, 1, v79);
    v83 = MEMORY[0x277D60188];
    v84 = v319;
    v317 = v79;
    if (v82 == 1)
    {
      goto LABEL_19;
    }

    v281 = *(v80 + 88);
    v85 = v281(v42, v79);
    if (v85 != *v83)
    {
      (*(v80 + 8))(v42, v79);
      goto LABEL_31;
    }

    v276 = v85;
    v277 = v80 + 88;
    v86 = *(v80 + 96);
    v275[1] = v80 + 96;
    v275[0] = v86;
    v86(v42, v79);
    v87 = *v42;

    v89 = v318;
    v90 = sub_2664B9C54(v88);

    v91 = sub_2664877AC(v90);
    v93 = v92;

    v94 = sub_2664B9AF4(v87);
    v318 = v89;

    v280 = sub_2664877AC(v94);
    v95 = v80;
    v97 = v96;

    v98 = v308;
    v303(v308, v305, v58);

    v99 = sub_2664DFE18();
    LODWORD(v89) = sub_2664E06C8();

    v278 = v89;
    v100 = os_log_type_enabled(v99, v89);
    v283 = v97;
    v279 = v91;
    if (v100)
    {
      v101 = swift_slowAlloc();
      v102 = swift_slowAlloc();
      v282 = v95;
      v103 = v102;
      *&v326 = v102;
      *v101 = 136315394;
      v328 = v91;
      v329 = v93;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800734A0, &qword_2664E3B40);
      v104 = sub_2664E0318();
      v106 = sub_2662A320C(v104, v105, &v326);

      *(v101 + 4) = v106;
      v107 = v322;
      *(v101 + 12) = 2080;
      v328 = v280;
      v329 = v97;

      v108 = sub_2664E0318();
      v110 = sub_2662A320C(v108, v109, &v326);

      *(v101 + 14) = v110;
      _os_log_impl(&dword_26629C000, v99, v278, "CompoundSignal#activeScores current foregroundBundleId is %s and last foregroundBundleId is %s", v101, 0x16u);
      swift_arrayDestroy();
      v80 = v282;
      MEMORY[0x266784AD0](v103, -1, -1);
      v111 = v101;
      v84 = v319;
      MEMORY[0x266784AD0](v111, -1, -1);

      v302(v98, v107);
      v112 = v107;
      if (!v93)
      {
        goto LABEL_29;
      }
    }

    else
    {

      v302(v98, v58);
      v80 = v95;
      v112 = v58;
      if (!v93)
      {
LABEL_29:
        v79 = v317;
        if (!v283)
        {
          goto LABEL_30;
        }

        goto LABEL_80;
      }
    }

    v113 = v296;
    sub_2664DE428();
    v114 = v279;
    sub_2664BA02C(v279, v93, v113, &v330);
    v115 = *(v297 + 8);
    v116 = v298;
    v115(v113, v298);
    sub_2664DE428();
    sub_2664BA02C(v114, v93, v113, &v330);

    v115(v113, v116);
    v79 = v317;
    if (!v283)
    {
      goto LABEL_30;
    }

    if (v114 == v280 && v93 == v283)
    {

LABEL_30:

      v58 = v112;
      goto LABEL_31;
    }

    v164 = sub_2664E0D88();

    if (v164)
    {
      goto LABEL_30;
    }

LABEL_80:
    if (v313)
    {
      v165 = 1;
      v42 = v293;
      v166 = v292;
      v167 = v286;
      v58 = v112;
    }

    else
    {

      v170 = sub_2664DF018();
      v42 = v293;
      v167 = v286;
      v58 = v112;
      if (*(v84 + 16))
      {
        v172 = sub_2662A3E98(v170, v171);
        v174 = v173;

        if (v174)
        {
          v79 = v317;
          (*(v80 + 16))(v42, *(v84 + 56) + *(v80 + 72) * v172, v317);

          v165 = 0;
        }

        else
        {

          v165 = 1;
          v79 = v317;
        }
      }

      else
      {

        v165 = 1;
      }

      v166 = v292;
    }

    (*(v80 + 56))(v42, v165, 1, v79);
    v303(v166, v305, v58);
    sub_2664C0484(v42, v167);
    v183 = sub_2664DFE18();
    v184 = sub_2664E06C8();
    if (os_log_type_enabled(v183, v184))
    {
      v185 = swift_slowAlloc();
      v186 = v167;
      v187 = swift_slowAlloc();
      v328 = v187;
      *v185 = 136315138;
      sub_2664C0484(v167, v300);
      v188 = sub_2664E0318();
      v190 = v189;
      sub_2662A9238(v186, &qword_2800729C8, &unk_2664E52E0);
      v191 = sub_2662A320C(v188, v190, &v328);

      *(v185 + 4) = v191;
      _os_log_impl(&dword_26629C000, v183, v184, "CompoundSignal#activeScores foreground recency map is %s", v185, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v187);
      v42 = v293;
      MEMORY[0x266784AD0](v187, -1, -1);
      v192 = v185;
      v79 = v317;
      MEMORY[0x266784AD0](v192, -1, -1);

      v193 = v292;
    }

    else
    {

      sub_2662A9238(v167, &qword_2800729C8, &unk_2664E52E0);
      v193 = v166;
    }

    v302(v193, v58);
    v194 = v287;
    sub_2664C0484(v42, v287);
    v195 = v311(v194, 1, v79);
    v84 = v319;
    if (v195 == 1)
    {
      sub_2662A9238(v42, &qword_2800729C8, &unk_2664E52E0);

      sub_2662A9238(v194, &qword_2800729C8, &unk_2664E52E0);
    }

    else
    {
      v196 = v281(v194, v79);
      if (v196 == v276)
      {
        (v275[0])(v194, v79);
        v197 = *v194;
        if (!*(*v194 + 16) || (v198 = sub_2662A3E98(v280, v283), (v199 & 1) == 0))
        {

LABEL_19:
          sub_2662A9238(v42, &qword_2800729C8, &unk_2664E52E0);
          goto LABEL_31;
        }

        v282 = v80;
        v200 = v58;
        v201 = *(*(v197 + 56) + 8 * v198);

        v202 = v284;
        v303(v284, v305, v200);
        v203 = sub_2664DFE18();
        v204 = sub_2664E06C8();
        if (os_log_type_enabled(v203, v204))
        {
          v205 = swift_slowAlloc();
          v206 = swift_slowAlloc();
          v328 = v206;
          *v205 = 136315138;
          *&v326 = v201;
          v207 = sub_2664E0D48();
          v209 = sub_2662A320C(v207, v208, &v328);

          *(v205 + 4) = v209;
          _os_log_impl(&dword_26629C000, v203, v204, "CompoundSignal#activeScores last foreground elaspsed time is for common.foregroundAppRecency  %s", v205, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v206);
          MEMORY[0x266784AD0](v206, -1, -1);
          v210 = v293;
          MEMORY[0x266784AD0](v205, -1, -1);

          v302(v284, v200);
          v211 = v285;
          v84 = v319;
        }

        else
        {

          v302(v202, v200);
          v211 = v285;
          v84 = v319;
          v210 = v42;
        }

        sub_2664DE428();
        v265 = v296;
        sub_2664DE398();
        v266 = *(v297 + 8);
        v267 = v211;
        v268 = v298;
        v266(v267, v298);
        sub_2664BA02C(v280, v283, v265, &v330);

        v266(v265, v268);
        sub_2662A9238(v210, &qword_2800729C8, &unk_2664E52E0);
        v58 = v322;
        v79 = v317;
        v80 = v282;
      }

      else
      {
        sub_2662A9238(v42, &qword_2800729C8, &unk_2664E52E0);

        (*(v80 + 8))(v194, v79);
      }
    }

LABEL_31:
    if (!v49)
    {
      v121 = 0;
LABEL_50:
      v316 = 0;
      v125 = 0;
      goto LABEL_51;
    }

    v117 = v316 + 32;
    v118 = v316 + 32;
    v119 = v49;
    while (1)
    {
      sub_2662A5550(v118, &v326);
      sub_2662A5550(&v326, v325);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072550, &qword_2664EA240);
      type metadata accessor for NowPlayingAppSignal();
      if (swift_dynamicCast())
      {
        break;
      }

      __swift_destroy_boxed_opaque_existential_1Tm(&v326);
      v118 += 40;
      if (!--v119)
      {
        v120 = 0;
        goto LABEL_40;
      }
    }

    sub_2662A8618(&v326, &v328);
    if (swift_dynamicCast())
    {
      v120 = v326;
    }

    else
    {
      v120 = 0;
    }

LABEL_40:
    v58 = v322;
    while (1)
    {
      sub_2662A5550(v117, &v326);
      sub_2662A5550(&v326, v325);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072550, &qword_2664EA240);
      if (swift_dynamicCast())
      {
        break;
      }

      __swift_destroy_boxed_opaque_existential_1Tm(&v326);
      v117 += 40;
      if (!--v49)
      {
        v122 = 0;
        v123 = 1;
        goto LABEL_47;
      }
    }

    sub_2662A8618(&v326, &v328);
    v124 = swift_dynamicCast();
    v123 = v124 ^ 1;
    if (v124)
    {
      v122 = v326;
    }

    else
    {
      v122 = 0;
    }

LABEL_47:
    v84 = v319;
    v79 = v317;
    v121 = v120;
    if (!v120)
    {
      goto LABEL_50;
    }

    v125 = *(v120 + 3);
    if (v125)
    {
      if (v123)
      {
        goto LABEL_50;
      }

      v316 = *(v120 + 2);
      v156 = qword_280F90D68;

      if (v156 != -1)
      {
        swift_once();
      }

      v157 = sub_2663CD158(v122, qword_280F90D70);
      v158 = v295;
      if (v157)
      {
        v303(v295, v305, v58);

        v159 = sub_2664DFE18();
        v160 = sub_2664E06C8();

        if (os_log_type_enabled(v159, v160))
        {
          v161 = swift_slowAlloc();
          v162 = swift_slowAlloc();
          v328 = v162;
          *v161 = 136315138;
          v163 = v316;
          *(v161 + 4) = sub_2662A320C(v316, v125, &v328);
          _os_log_impl(&dword_26629C000, v159, v160, "CompoundSignal#activeScores currently playing: %s", v161, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v162);
          MEMORY[0x266784AD0](v162, -1, -1);
          MEMORY[0x266784AD0](v161, -1, -1);

          v302(v295, v58);
          v79 = v317;
        }

        else
        {

          v302(v158, v58);
          v79 = v317;
          v163 = v316;
        }

        v182 = v296;
        sub_2664DE428();
        sub_2664BA02C(v163, v125, v182, &v330);

        (*(v297 + 8))(v182, v298);
      }

      else
      {

        v316 = 0;
        v125 = 0;
      }

      v121 = v120;
    }

    else
    {
      v316 = 0;
    }

LABEL_51:
    v308 = v121;
    if (v313)
    {
      v126 = 1;
    }

    else
    {

      sub_2664DEEF8();
      v127 = sub_2664DEEE8();
      if (*(v84 + 16))
      {
        v129 = sub_2662A3E98(v127, v128);
        v131 = v130;

        if (v131)
        {
          v79 = v317;
          (*(v80 + 16))(v314, *(v84 + 56) + *(v80 + 72) * v129, v317);

          v126 = 0;
        }

        else
        {

          v126 = 1;
          v79 = v317;
        }
      }

      else
      {

        v126 = 1;
      }
    }

    v132 = *(v80 + 56);
    v133 = v314;
    v132(v314, v126, 1, v79);
    v134 = v133;
    v135 = v310;
    sub_2664C0484(v134, v310);
    if (v311(v135, 1, v79) == 1)
    {

      sub_2664C04F4(v84, v307);
      v136 = v135;
      goto LABEL_60;
    }

    v137 = *(v80 + 88);
    v295 = (v80 + 88);
    v293 = v137;
    v138 = v137(v135, v79);
    if (v138 != *MEMORY[0x277D60188])
    {

      sub_2664C04F4(v84, v307);
      (*(v80 + 8))(v135, v79);
      goto LABEL_125;
    }

    LODWORD(v292) = v138;
    v282 = v80;
    v139 = *(v80 + 96);
    v287 = v80 + 96;
    v286 = v139;
    v139(v135, v79);
    v140 = *v135;
    v141 = v299;
    v303(v299, v305, v58);

    v142 = sub_2664DFE18();
    v143 = sub_2664E06C8();

    if (os_log_type_enabled(v142, v143))
    {
      v144 = swift_slowAlloc();
      v145 = swift_slowAlloc();
      v328 = v145;
      *v144 = 136315138;
      v146 = sub_2664E01D8();
      v148 = sub_2662A320C(v146, v147, &v328);

      *(v144 + 4) = v148;
      v58 = v322;
      _os_log_impl(&dword_26629C000, v142, v143, "CompoundSignal#activeScores last now playing map is %s", v144, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v145);
      MEMORY[0x266784AD0](v145, -1, -1);
      MEMORY[0x266784AD0](v144, -1, -1);

      v149 = v299;
    }

    else
    {

      v149 = v141;
    }

    v302(v149, v58);
    v150 = v318;
    v151 = sub_2664B9C54(v140);
    v318 = v150;

    v152 = sub_2664877AC(v151);
    v154 = v153;

    if (!v154)
    {

      sub_2664C04F4(v319, v307);
      goto LABEL_125;
    }

    v155 = v319;
    if (v125)
    {
      if (v152 == v316 && v154 == v125)
      {

LABEL_83:
        sub_2664C04F4(v155, v307);

        goto LABEL_125;
      }

      v168 = sub_2664E0D88();

      if (v168)
      {
        goto LABEL_83;
      }
    }

    v322 = v152;
    if (v313)
    {
      v169 = 1;
      v42 = v294;
    }

    else
    {

      sub_2664DF078();
      v175 = sub_2664DF068();
      v42 = v294;
      if (*(v155 + 16))
      {
        v177 = sub_2662A3E98(v175, v176);
        v179 = v178;

        if (v179)
        {
          (*(v282 + 16))(v42, *(v155 + 56) + *(v282 + 72) * v177, v317);

          v169 = 0;
        }

        else
        {

          v169 = 1;
        }
      }

      else
      {

        v169 = 1;
      }
    }

    v212 = v289;
    v132(v42, v169, 1, v317);
    v303(v212, v305, v58);
    v213 = v288;
    sub_2664C0484(v42, v288);
    v214 = sub_2664DFE18();
    v215 = v58;
    v216 = sub_2664E06C8();
    if (os_log_type_enabled(v214, v216))
    {
      v217 = swift_slowAlloc();
      v218 = swift_slowAlloc();
      v328 = v218;
      *v217 = 136315138;
      sub_2664C0484(v213, v300);
      v219 = sub_2664E0318();
      v221 = v220;
      sub_2662A9238(v213, &qword_2800729C8, &unk_2664E52E0);
      v222 = sub_2662A320C(v219, v221, &v328);

      *(v217 + 4) = v222;
      _os_log_impl(&dword_26629C000, v214, v216, "CompoundSignal#activeScores last playing recency map is %s", v217, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v218);
      MEMORY[0x266784AD0](v218, -1, -1);
      v223 = v217;
      v42 = v294;
      MEMORY[0x266784AD0](v223, -1, -1);
    }

    else
    {

      sub_2662A9238(v213, &qword_2800729C8, &unk_2664E52E0);
    }

    v302(v212, v215);
    v224 = v291;
    v225 = v290;
    sub_2664C0484(v42, v290);
    v226 = v317;
    if (v311(v225, 1, v317) == 1)
    {
      sub_2662A9238(v42, &qword_2800729C8, &unk_2664E52E0);

      v136 = v225;
      goto LABEL_60;
    }

    v227 = v293(v225, v226);
    if (v227 == v292)
    {
      break;
    }

    sub_2662A9238(v42, &qword_2800729C8, &unk_2664E52E0);

    (*(v282 + 8))(v225, v226);
    while (1)
    {
LABEL_125:
      v240 = v330;
      v241 = v309;

      v313 = v240;
      v242 = sub_2664BA650(v240, v241);

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280073A40, qword_2664E69E0);
      v243 = sub_2664E0C78();
      v244 = v243;
      v67 = 0;
      v49 = v242 + 64;
      v245 = *(v242 + 64);
      v322 = v242;
      v246 = 1 << *(v242 + 32);
      v247 = -1;
      if (v246 < 64)
      {
        v247 = ~(-1 << v246);
      }

      v42 = v247 & v245;
      v58 = (v246 + 63) >> 6;
      v318 = v323 + 16;
      v317 = v323 + 8;
      v316 = v243 + 64;
      v319 = v243;
      if ((v247 & v245) != 0)
      {
        break;
      }

LABEL_129:
      v249 = v67;
      while (1)
      {
        v67 = v249 + 1;
        if (__OFADD__(v249, 1))
        {
          break;
        }

        if (v67 >= v58)
        {

          v262 = sub_26639F100();
          v263 = sub_2663D8A24(v244, v262);

          sub_2662A9238(v314, &qword_2800729C8, &unk_2664E52E0);
          sub_2662A9238(v315, &qword_2800729C8, &unk_2664E52E0);

          return v263;
        }

        v250 = *(v49 + 8 * v67);
        ++v249;
        if (v250)
        {
          v248 = __clz(__rbit64(v250));
          v42 = (v250 - 1) & v250;
          goto LABEL_134;
        }
      }

      __break(1u);
LABEL_139:

LABEL_147:
      v136 = v42;
LABEL_60:
      sub_2662A9238(v136, &qword_2800729C8, &unk_2664E52E0);
    }

    while (1)
    {
      v248 = __clz(__rbit64(v42));
      v42 &= v42 - 1;
LABEL_134:
      v47 = v248 | (v67 << 6);
      v23 = (16 * v47);
      v251 = *(v322 + 56);
      v252 = (*(v322 + 48) + 16 * v47);
      v253 = v252[1];
      v324 = *v252;
      v254 = v323;
      v255 = v320;
      v256 = v321;
      (*(v323 + 16))(v320, v251 + *(v323 + 72) * v47, v321);

      v257 = sub_2663D80F4(604800.0);
      (*(v254 + 8))(v255, v256);
      *(v316 + ((v47 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v47;
      v244 = v319;
      v258 = (*(v319 + 48) + 16 * v47);
      *v258 = v324;
      v258[1] = v253;
      *(*(v244 + 56) + 8 * v47) = v257;
      v259 = *(v244 + 16);
      v260 = __OFADD__(v259, 1);
      v261 = v259 + 1;
      if (v260)
      {
        break;
      }

      *(v244 + 16) = v261;
      if (!v42)
      {
        goto LABEL_129;
      }
    }

    __break(1u);
  }

  v286(v225, v226);
  v228 = *v225;
  if (!*(*v225 + 16))
  {
    goto LABEL_139;
  }

  v229 = sub_2662A3E98(v322, v154);
  if ((v230 & 1) == 0)
  {
    goto LABEL_139;
  }

  v231 = *(*(v228 + 56) + 8 * v229);

  v303(v224, v305, v215);
  v232 = sub_2664DFE18();
  v233 = sub_2664E06C8();
  if (os_log_type_enabled(v232, v233))
  {
    v234 = swift_slowAlloc();
    v235 = swift_slowAlloc();
    v328 = v235;
    *v234 = 136315138;
    *&v326 = v231;
    v236 = sub_2664E0D48();
    v238 = sub_2662A320C(v236, v237, &v328);

    *(v234 + 4) = v238;
    _os_log_impl(&dword_26629C000, v232, v233, "CompoundSignal#activeScores last playing elaspsed time is for raw.LastNowPlayingRecency  %s", v234, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v235);
    MEMORY[0x266784AD0](v235, -1, -1);
    MEMORY[0x266784AD0](v234, -1, -1);

    v239 = v291;
  }

  else
  {

    v239 = v224;
  }

  v302(v239, v215);
  v269 = v285;
  result = sub_2664DE428();
  v42 = v294;
  if (!__OFSUB__(0, v231))
  {
    v270 = v296;
    v271 = v269;
    sub_2664DE398();
    v272 = *(v297 + 8);
    v273 = v271;
    v274 = v298;
    v272(v273, v298);
    sub_2664BA02C(v322, v154, v270, &v330);

    v272(v270, v274);
    goto LABEL_147;
  }

  __break(1u);
  return result;
}

uint64_t sub_2664BCF74(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *, __n128), uint64_t a3, char a4, void *a5)
{
  v44 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  while (v9)
  {
    v39 = a4;
    v13 = v11;
LABEL_14:
    v15 = __clz(__rbit64(v9)) | (v13 << 6);
    v16 = (*(a1 + 48) + 16 * v15);
    v17 = v16[1];
    v18 = *(*(a1 + 56) + 8 * v15);
    v43[0] = *v16;
    v43[1] = v17;
    v43[2] = v18;

    (a2)(&v40, v43);

    v19 = v40;
    v20 = v41;
    v21 = v42;
    v22 = *v44;
    v24 = sub_2662A3E98(v40, v41);
    v25 = v22[2];
    v26 = (v23 & 1) == 0;
    v27 = v25 + v26;
    if (__OFADD__(v25, v26))
    {
      goto LABEL_25;
    }

    v28 = v23;
    if (v22[3] >= v27)
    {
      if ((v39 & 1) == 0)
      {
        sub_266453E30();
      }
    }

    else
    {
      sub_2664508BC(v27, v39 & 1);
      v29 = sub_2662A3E98(v19, v20);
      if ((v28 & 1) != (v30 & 1))
      {
        goto LABEL_27;
      }

      v24 = v29;
    }

    v9 &= v9 - 1;
    v31 = *v44;
    if (v28)
    {
      v12 = *(v31[7] + 8 * v24);

      *(v31[7] + 8 * v24) = v21 + v12;
    }

    else
    {
      v31[(v24 >> 6) + 8] |= 1 << v24;
      v32 = (v31[6] + 16 * v24);
      *v32 = v19;
      v32[1] = v20;
      *(v31[7] + 8 * v24) = v21;
      v33 = v31[2];
      v34 = __OFADD__(v33, 1);
      v35 = v33 + 1;
      if (v34)
      {
        goto LABEL_26;
      }

      v31[2] = v35;
    }

    a4 = 1;
    v11 = v13;
  }

  v14 = v11;
  while (1)
  {
    v13 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v13 >= v10)
    {
      sub_2662B793C(a1);
    }

    v9 = *(v6 + 8 * v13);
    ++v14;
    if (v9)
    {
      v39 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = sub_2664E0DD8();
  __break(1u);
  return result;
}

uint64_t sub_2664BD1F4(void *a1, uint64_t a2, uint64_t a3)
{
  v162 = a1;
  v5 = 0;
  v170 = sub_2664DFE38();
  v165 = *(v170 - 8);
  v6 = MEMORY[0x28223BE20](v170);
  v163 = (&v157 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6);
  v164 = &v157 - v8;
  v175 = MEMORY[0x277D84F98];
  v176 = MEMORY[0x277D84F98];
  v174 = MEMORY[0x277D84F98];
  v9 = *(a3 + 16);
  v168 = a3;
  if (v9)
  {
    v10 = a3 + 32;
    v11 = v9;
    while (1)
    {
      sub_2662A5550(v10, &v172);
      sub_2662A5550(&v172, v173);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072550, &qword_2664EA240);
      if (swift_dynamicCast())
      {
        break;
      }

      __swift_destroy_boxed_opaque_existential_1Tm(&v172);
      v10 += 40;
      if (!--v11)
      {
        goto LABEL_10;
      }
    }

    sub_2662A8618(&v172, v173);
    if (swift_dynamicCast())
    {
      v11 = v172;
    }

    else
    {
      v11 = 0;
    }

LABEL_10:
    v5 = 0;
  }

  else
  {
    v11 = 0;
  }

  v12 = 1 << *(a2 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(a2 + 56);
  v15 = (v12 + 63) >> 6;

  v16 = 0;
  if (v14)
  {
    while (1)
    {
      v17 = v16;
LABEL_19:
      v18 = (*(a2 + 48) + ((v17 << 10) | (16 * __clz(__rbit64(v14)))));
      v19 = v18[1];
      v14 &= v14 - 1;
      v173[0] = *v18;
      v173[1] = v19;

      sub_2664B8E74(v173, v11, &v176, &v175, &v174);

      if (!v14)
      {
        goto LABEL_15;
      }
    }
  }

  while (1)
  {
LABEL_15:
    v17 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
LABEL_106:
      __break(1u);
LABEL_107:
      __break(1u);
LABEL_108:
      __break(1u);
LABEL_109:
      __break(1u);
LABEL_110:
      __break(1u);
LABEL_111:
      __break(1u);
LABEL_112:
      __break(1u);
LABEL_113:
      __break(1u);
LABEL_114:
      __break(1u);
      goto LABEL_115;
    }

    if (v17 >= v15)
    {
      break;
    }

    v14 = *(a2 + 56 + 8 * v17);
    ++v16;
    if (v14)
    {
      v16 = v17;
      goto LABEL_19;
    }
  }

  v166 = a2 + 56;
  v161 = v11;

  v167 = a2;

  v21 = sub_266430D18(v20, 0, 0);
  swift_bridgeObjectRelease_n();
  v169 = v21;
  v176 = v21;

  v23 = sub_266430D18(v22, 0, 0);
  swift_bridgeObjectRelease_n();
  v175 = v23;

  v25 = sub_266430D18(v24, 0, 0);
  swift_bridgeObjectRelease_n();
  v174 = v25;
  if (v9)
  {
    v26 = v168 + 32;
    while (1)
    {
      sub_2662A5550(v26, &v172);
      sub_2662A5550(&v172, &v171);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072550, &qword_2664EA240);
      type metadata accessor for NowPlayingUsageSignal();
      if (swift_dynamicCast())
      {
        break;
      }

      __swift_destroy_boxed_opaque_existential_1Tm(&v172);
      v26 += 40;
      if (!--v9)
      {
        goto LABEL_25;
      }
    }

    sub_2662A8618(&v172, v173);
    v145 = swift_dynamicCast();
    v9 = v170;
    if (v145)
    {
      v146 = v172;
      v147 = *(v172 + 16);

      v148 = v176;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v173[0] = v148;
      sub_2664BCF74(v147, sub_2664BA014, 0, isUniquelyReferenced_nonNull_native, v173);

      v150 = *(v146 + 24);

      v151 = v175;
      v152 = swift_isUniquelyReferenced_nonNull_native();
      v173[0] = v151;
      sub_2664BCF74(v150, sub_2664BA014, 0, v152, v173);

      v153 = *(v146 + 32);

      v154 = v174;
      v155 = swift_isUniquelyReferenced_nonNull_native();
      v173[0] = v154;
      sub_2664BCF74(v153, sub_2664BA014, 0, v155, v173);

      a2 = v165;
      goto LABEL_27;
    }
  }

  else
  {
LABEL_25:
    v9 = v170;
  }

  a2 = v165;
LABEL_27:

  v28 = sub_266430D18(v27, 0, 0);
  swift_bridgeObjectRelease_n();
  v170 = v28;
  v176 = v28;

  v30 = sub_266430D18(v29, 0, 0);
  swift_bridgeObjectRelease_n();
  v169 = v30;
  v175 = v30;

  v32 = sub_266430D18(v31, 0, 0);
  swift_bridgeObjectRelease_n();
  v168 = v32;
  v174 = v32;
  if (qword_280F914E8 == -1)
  {
    goto LABEL_28;
  }

LABEL_115:
  swift_once();
LABEL_28:
  v33 = __swift_project_value_buffer(v9, qword_280F914F0);
  swift_beginAccess();
  v34 = *(a2 + 16);
  v35 = v164;
  v34(v164, v33, v9);
  v36 = sub_2664DFE18();
  v37 = sub_2664E06C8();
  v38 = os_log_type_enabled(v36, v37);
  v157 = v5;
  v158 = v34;
  v159 = a2 + 16;
  v160 = v33;
  if (v38)
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    *&v172 = v40;
    *v39 = 136315650;

    v41 = sub_2664E01D8();
    v43 = v42;

    v44 = sub_2662A320C(v41, v43, &v172);

    *(v39 + 4) = v44;
    *(v39 + 12) = 2080;

    v45 = sub_2664E01D8();
    v47 = v46;

    v48 = sub_2662A320C(v45, v47, &v172);
    v49 = v165;

    *(v39 + 14) = v48;
    *(v39 + 22) = 2080;

    v50 = sub_2664E01D8();
    v52 = v51;

    v53 = sub_2662A320C(v50, v52, &v172);

    *(v39 + 24) = v53;
    _os_log_impl(&dword_26629C000, v36, v37, "CompoundSignal#mediaTypeAffinityScores app-affinity for music:%s podcasts:%s books:%s", v39, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266784AD0](v40, -1, -1);
    MEMORY[0x266784AD0](v39, -1, -1);

    v54 = *(v49 + 8);
    v55 = v164;
  }

  else
  {

    v54 = *(a2 + 8);
    v55 = v35;
  }

  v164 = v54;
  (v54)(v55, v9);
  v56 = v162;
  v57 = &_swift_FORCE_LOAD___swiftAVFoundation___SiriAudioSupport;
  v58 = [v162 mediaSearch];
  v59 = &qword_2664EBFD0[6];
  v60 = &qword_2664EF818[253];
  if (!v58)
  {
    v63 = 0.7;
    v64 = 0.2;
    v65 = 0.1;
    goto LABEL_47;
  }

  v61 = v58;
  v62 = [v58 mediaType];

  if (qword_280F90DA8 != -1)
  {
    goto LABEL_122;
  }

  while (1)
  {
    if (sub_2663CD224(v62, qword_280F90DB0))
    {
      v63 = 2.7;
    }

    else
    {
      v63 = 0.7;
    }

    if (qword_280F90D90 != -1)
    {
      swift_once();
    }

    if (sub_2663CD224(v62, qword_280F90D98))
    {
      v64 = 2.2;
    }

    else
    {
      v64 = *(v59 + 213);
    }

    if (qword_280F90DC8 != -1)
    {
      swift_once();
    }

    if (sub_2663CD224(v62, qword_280F90DD0))
    {
      v65 = 2.1;
    }

    else
    {
      v65 = v60[151];
    }

LABEL_47:
    v66 = [v56 v57[498]];
    if (v66)
    {
      v67 = v66;
      v68 = [v66 albumName];

      if (v68)
      {
        v69 = sub_2664E02C8();
        v71 = v70;

        v72 = HIBYTE(v71) & 0xF;
        if ((v71 & 0x2000000000000000) == 0)
        {
          v72 = v69 & 0xFFFFFFFFFFFFLL;
        }

        if (v72)
        {
          v63 = v63 + 1.0;
        }
      }
    }

    v73 = [v56 v57[498]];
    if (v73)
    {
      v74 = v73;
      v75 = [v73 genreNames];

      if (v75)
      {
        v76 = sub_2664E04A8();

        v77 = *(v76 + 16);

        if (v77)
        {
          v63 = v63 + 1.0;
        }
      }
    }

    v78 = [v56 v57[498]];
    if (v78)
    {
      v79 = v78;
      v80 = [v78 moodNames];

      if (v80)
      {
        v81 = sub_2664E04A8();

        v82 = *(v81 + 16);

        if (v82)
        {
          v63 = v63 + 1.0;
        }
      }
    }

    v83 = [v56 v57[498]];
    v84 = [v83 releaseDate];

    if (v84)
    {

      v63 = v63 + 1.0;
    }

    v85 = [v56 v57[498]];
    if (v85)
    {
      v86 = v85;
      v87 = [v85 artistName];

      if (v87)
      {
        v88 = sub_2664E02C8();
        v90 = v89;

        v91 = HIBYTE(v90) & 0xF;
        if ((v90 & 0x2000000000000000) == 0)
        {
          v91 = v88 & 0xFFFFFFFFFFFFLL;
        }

        if (v91)
        {
          v63 = v63 + 0.4;
          v64 = v64 + *(v59 + 213);
          v65 = v65 + v60[151];
        }
      }
    }

    v62 = 0x636973756DLL;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800728B0, &unk_2664F0500);
    inited = swift_initStackObject();
    *(inited + 32) = 0x636973756DLL;
    v60 = (inited + 32);
    *(inited + 16) = xmmword_2664E36E0;
    *(inited + 40) = 0xE500000000000000;
    *(inited + 48) = v63;
    *(inited + 56) = 0x74736163646F70;
    *(inited + 64) = 0xE700000000000000;
    *(inited + 72) = v64;
    *(inited + 80) = 1802465122;
    *(inited + 88) = 0xE400000000000000;
    *(inited + 96) = v65;
    v57 = sub_266386140(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800728B8, &unk_2664E4F20);
    swift_arrayDestroy();

    v56 = sub_266430D18(v93, 0, 0);
    swift_bridgeObjectRelease_n();
    v59 = v163;
    if (!v56[2])
    {
      __break(1u);
LABEL_117:
      __break(1u);
LABEL_118:
      __break(1u);
LABEL_119:
      __break(1u);
LABEL_120:
      __break(1u);
      goto LABEL_121;
    }

    v62 = v56;
    v94 = sub_2662A3E98(0x636973756DLL, 0xE500000000000000);
    if ((v95 & 1) == 0)
    {
      goto LABEL_117;
    }

    if (!v56[2])
    {
      goto LABEL_118;
    }

    v96 = *(v56[7] + 8 * v94);
    v62 = v56;
    v97 = sub_2662A3E98(0x74736163646F70, 0xE700000000000000);
    if ((v98 & 1) == 0)
    {
      goto LABEL_119;
    }

    if (!v56[2])
    {
      goto LABEL_120;
    }

    v99 = *(v56[7] + 8 * v97);
    v62 = sub_2662A3E98(1802465122, 0xE400000000000000);
    v101 = v100;

    if (v101)
    {
      break;
    }

LABEL_121:
    __break(1u);
LABEL_122:
    swift_once();
  }

  v102 = *(v56[7] + 8 * v62);
  v158(v59, v160, v9);
  v103 = sub_2664DFE18();
  v104 = sub_2664E06C8();
  v105 = os_log_type_enabled(v103, v104);
  v165 = v56;
  if (v105)
  {
    v106 = swift_slowAlloc();
    v107 = swift_slowAlloc();
    *&v172 = v107;
    *v106 = 136315138;

    v108 = sub_2664E01D8();
    v110 = v109;

    v111 = sub_2662A320C(v108, v110, &v172);

    *(v106 + 4) = v111;
    _os_log_impl(&dword_26629C000, v103, v104, "CompoundSignal#mediaTypeAffinityScores input-affinity: %s", v106, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v107);
    MEMORY[0x266784AD0](v107, -1, -1);
    MEMORY[0x266784AD0](v106, -1, -1);
  }

  (v164)(v59, v9);
  v5 = v166;
  a2 = v167;
  v112 = 1 << *(v167 + 32);
  v113 = -1;
  if (v112 < 64)
  {
    v113 = ~(-1 << v112);
  }

  v114 = v113 & *(v167 + 56);
  v9 = (v112 + 63) >> 6;

  v115 = 0;
  v116 = MEMORY[0x277D84F98];
  while (1)
  {
    if (!v114)
    {
      while (1)
      {
        v117 = v115 + 1;
        if (__OFADD__(v115, 1))
        {
          goto LABEL_106;
        }

        if (v117 >= v9)
        {

          v144 = sub_266430D18(v116, 0, 0);

          return v144;
        }

        v114 = *(v5 + 8 * v117);
        ++v115;
        if (v114)
        {
          goto LABEL_87;
        }
      }
    }

    v117 = v115;
LABEL_87:
    v118 = v170;
    if (!*(v170 + 16))
    {
      goto LABEL_107;
    }

    v119 = (*(a2 + 48) + ((v117 << 10) | (16 * __clz(__rbit64(v114)))));
    v120 = *v119;
    v121 = v119[1];

    v122 = sub_2662A3E98(v120, v121);
    if ((v123 & 1) == 0)
    {
      goto LABEL_108;
    }

    v5 = v169;
    if (!*(v169 + 16))
    {
      goto LABEL_109;
    }

    v124 = *(*(v118 + 56) + 8 * v122);
    v125 = sub_2662A3E98(v120, v121);
    if ((v126 & 1) == 0)
    {
      goto LABEL_110;
    }

    v127 = v168;
    if (!*(v168 + 16))
    {
      goto LABEL_111;
    }

    v128 = *(*(v5 + 56) + 8 * v125);
    v129 = sub_2662A3E98(v120, v121);
    if ((v130 & 1) == 0)
    {
      goto LABEL_112;
    }

    v131 = *(*(v127 + 56) + 8 * v129);
    a2 = swift_isUniquelyReferenced_nonNull_native();
    *&v172 = v116;
    v132 = sub_2662A3E98(v120, v121);
    v134 = *(v116 + 16);
    v135 = (v133 & 1) == 0;
    v136 = __OFADD__(v134, v135);
    v137 = v134 + v135;
    if (v136)
    {
      goto LABEL_113;
    }

    v5 = v133;
    if (*(v116 + 24) < v137)
    {
      break;
    }

    if ((a2 & 1) == 0)
    {
      v143 = v132;
      sub_266453E30();
      v132 = v143;
    }

LABEL_99:
    a2 = v167;
    v114 &= v114 - 1;
    v139 = v96 * v124 + v99 * v128 + v102 * v131;
    v116 = v172;
    if (v5)
    {
      *(*(v172 + 56) + 8 * v132) = v139;
    }

    else
    {
      *(v172 + 8 * (v132 >> 6) + 64) |= 1 << v132;
      v140 = (*(v116 + 48) + 16 * v132);
      *v140 = v120;
      v140[1] = v121;
      *(*(v116 + 56) + 8 * v132) = v139;
      v141 = *(v116 + 16);
      v136 = __OFADD__(v141, 1);
      v142 = v141 + 1;
      if (v136)
      {
        goto LABEL_114;
      }

      *(v116 + 16) = v142;
    }

    v115 = v117;
    v5 = v166;
  }

  sub_2664508BC(v137, a2);
  v132 = sub_2662A3E98(v120, v121);
  if ((v5 & 1) == (v138 & 1))
  {
    goto LABEL_99;
  }

  result = sub_2664E0DD8();
  __break(1u);
  return result;
}

uint64_t sub_2664BE2FC(void *a1, uint64_t a2, uint64_t a3)
{
  v61 = a2;
  v65 = *MEMORY[0x277D85DE8];
  v55[1] = 0;
  v5 = sub_2664DFE38();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a3 + 16);
  if (!v9)
  {
    goto LABEL_8;
  }

  v10 = a3 + 32;
  while (1)
  {
    sub_2662A5550(v10, &v63);
    sub_2662A5550(&v63, v62);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072550, &qword_2664EA240);
    if (swift_dynamicCast())
    {
      break;
    }

    __swift_destroy_boxed_opaque_existential_1Tm(&v63);
    v10 += 40;
    if (!--v9)
    {
      goto LABEL_8;
    }
  }

  sub_2662A8618(&v63, v64);
  if (swift_dynamicCast())
  {
    v11 = v63;
  }

  else
  {
LABEL_8:
    v11 = sub_266385A94(MEMORY[0x277D84F90]);
  }

  v12 = v8;
  v13 = [a1 mediaSearch];
  v14 = v13;
  if (v13)
  {
    v15 = [v13 mediaType];
  }

  else
  {
    v15 = 0;
  }

  v16 = v61;
  if (qword_280F914E8 != -1)
  {
    goto LABEL_39;
  }

LABEL_13:
  v17 = __swift_project_value_buffer(v5, qword_280F914F0);
  swift_beginAccess();
  (*(v6 + 16))(v12, v17, v5);

  v18 = sub_2664DFE18();
  v19 = sub_2664E06C8();

  if (os_log_type_enabled(v18, v19))
  {
    v60 = v12;
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v59 = v5;
    v22 = v21;
    v62[0] = v21;
    *v20 = 136315394;
    *&v63 = v15;
    BYTE8(v63) = v14 == 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800733C0, &unk_2664F04F0);
    v23 = sub_2664E0318();
    v24 = v15;
    v26 = sub_2662A320C(v23, v25, v62);

    *(v20 + 4) = v26;
    *(v20 + 12) = 2080;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072440, &qword_2664E3600);
    v27 = sub_2664E01D8();
    v29 = sub_2662A320C(v27, v28, v62);

    *(v20 + 14) = v29;
    v15 = v24;
    _os_log_impl(&dword_26629C000, v18, v19, "CompoundSignal#supportFlag computing for mediaType:%s and categories:%s...", v20, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266784AD0](v22, -1, -1);
    v30 = v20;
    v16 = v61;
    MEMORY[0x266784AD0](v30, -1, -1);

    v31 = *(v6 + 8);
    v6 += 8;
    v32 = v31(v60, v59);
  }

  else
  {

    v33 = *(v6 + 8);
    v6 += 8;
    v32 = v33(v12, v5);
  }

  MEMORY[0x28223BE20](v32);
  v55[-4] = v15;
  LOBYTE(v55[-3]) = v34;
  v55[-2] = v11;
  v35 = *(v16 + 32);
  v36 = v35 & 0x3F;
  v56 = ((1 << v35) + 63) >> 6;
  v37 = 8 * v56;

  if (v36 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    v55[3] = v55;
    v39 = v11;
    v60 = v15;
    v55[2] = v55;
    LODWORD(v59) = v14 == 0;
    MEMORY[0x28223BE20](isStackAllocationSafe);
    v57 = v55 - ((v37 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v57, v37);
    v58 = 0;
    v15 = 0;
    v12 = v16 + 56;
    v40 = 1 << *(v16 + 32);
    v41 = -1;
    if (v40 < 64)
    {
      v41 = ~(-1 << v40);
    }

    v16 = v41 & *(v16 + 56);
    v14 = ((v40 + 63) >> 6);
    while (1)
    {
      if (!v16)
      {
        v44 = v15;
        v5 = v39;
        while (1)
        {
          v15 = v44 + 1;
          if (__OFADD__(v44, 1))
          {
            break;
          }

          if (v15 >= v14)
          {
            goto LABEL_36;
          }

          v45 = *(v12 + 8 * v15);
          ++v44;
          if (v45)
          {
            v16 = (v45 - 1) & v45;
            v43 = __clz(__rbit64(v45)) | (v15 << 6);
            goto LABEL_30;
          }
        }

        __break(1u);
LABEL_39:
        swift_once();
        goto LABEL_13;
      }

      v42 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v43 = v42 | (v15 << 6);
      v5 = v39;
LABEL_30:
      v46 = (*(v61 + 48) + 16 * v43);
      v47 = v46[1];
      if (!*(v5 + 16))
      {
        break;
      }

      v48 = *v46;

      v49 = sub_2662A3E98(v48, v47);
      v11 = MEMORY[0x277D84F90];
      if (v50)
      {
        v11 = *(*(v5 + 56) + 8 * v49);
        goto LABEL_21;
      }

LABEL_22:
      v6 = sub_266484DB4(v60, v59, v11);

      if (v6)
      {
        *&v57[(v43 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v43;
        if (__OFADD__(v58++, 1))
        {
          __break(1u);
LABEL_36:
          v52 = sub_2664CF388(v57, v56, v58, v61);
          goto LABEL_37;
        }
      }
    }

    v11 = MEMORY[0x277D84F90];
LABEL_21:

    goto LABEL_22;
  }

  v54 = swift_slowAlloc();
  v52 = sub_2664B93B0(v54, v56, v16, sub_2664C045C);
  MEMORY[0x266784AD0](v54, -1, -1);
LABEL_37:

  return v52;
}

uint64_t sub_2664BEA64(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    goto LABEL_8;
  }

  v2 = a1 + 32;
  while (1)
  {
    sub_2662A5550(v2, &v8);
    sub_2662A5550(&v8, v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072550, &qword_2664EA240);
    if (swift_dynamicCast())
    {
      break;
    }

    __swift_destroy_boxed_opaque_existential_1Tm(&v8);
    v2 += 40;
    if (!--v1)
    {
      goto LABEL_8;
    }
  }

  sub_2662A8618(&v8, v9);
  if (swift_dynamicCast())
  {
    v3 = v8;

    v4 = v3;
  }

  else
  {
LABEL_8:
    v4 = sub_266385A94(MEMORY[0x277D84F90]);
  }

  v5 = sub_2664855EC(v4);

  return v5;
}

uint64_t sub_2664BEBA4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v88 = a7;
  v86 = a6;
  v84 = a5;
  v85 = a4;
  v87 = a3;
  v83 = a1;
  v82 = sub_2664DFE38();
  v81 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v80 = &v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a2 + 16);
  if (!v9)
  {
    goto LABEL_8;
  }

  v10 = a2 + 32;
  v11 = *(a2 + 16);
  while (1)
  {
    sub_2662A5550(v10, &v92);
    sub_2662A5550(&v92, v91);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072550, &qword_2664EA240);
    if (swift_dynamicCast())
    {
      break;
    }

    __swift_destroy_boxed_opaque_existential_1Tm(&v92);
    v10 += 40;
    if (!--v11)
    {
      goto LABEL_8;
    }
  }

  sub_2662A8618(&v92, v93);
  if (swift_dynamicCast())
  {
  }

  else
  {
LABEL_8:
    sub_266385A94(MEMORY[0x277D84F90]);
  }

  v76 = sub_26639F100();
  if (!v9)
  {
    goto LABEL_16;
  }

  v12 = a2 + 32;
  v13 = v9;
  while (1)
  {
    sub_2662A5550(v12, &v92);
    sub_2662A5550(&v92, v91);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072550, &qword_2664EA240);
    type metadata accessor for EntitySearchSignalLocal();
    if (swift_dynamicCast())
    {
      break;
    }

    __swift_destroy_boxed_opaque_existential_1Tm(&v92);
    v12 += 40;
    if (!--v13)
    {
      goto LABEL_16;
    }
  }

  sub_2662A8618(&v92, v93);
  if (swift_dynamicCast())
  {
    v90 = *(v92 + 16);
  }

  else
  {
LABEL_16:
    v90 = sub_266386140(MEMORY[0x277D84F90]);
    if (!v9)
    {
LABEL_23:
      v16 = sub_266386140(MEMORY[0x277D84F90]);
      goto LABEL_24;
    }
  }

  v14 = a2 + 32;
  v15 = v9;
  while (1)
  {
    sub_2662A5550(v14, &v92);
    sub_2662A5550(&v92, v91);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072550, &qword_2664EA240);
    type metadata accessor for LastNowPlayingSignal();
    if (swift_dynamicCast())
    {
      break;
    }

    __swift_destroy_boxed_opaque_existential_1Tm(&v92);
    v14 += 40;
    if (!--v15)
    {
      goto LABEL_23;
    }
  }

  sub_2662A8618(&v92, v93);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_23;
  }

  v16 = *(v92 + 48);

  if (!v9)
  {
    goto LABEL_31;
  }

LABEL_24:
  v17 = a2 + 32;
  while (1)
  {
    sub_2662A5550(v17, &v92);
    sub_2662A5550(&v92, v91);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072550, &qword_2664EA240);
    type metadata accessor for ForegroundAppSignal();
    if (swift_dynamicCast())
    {
      break;
    }

    __swift_destroy_boxed_opaque_existential_1Tm(&v92);
    v17 += 40;
    if (!--v9)
    {
      goto LABEL_31;
    }
  }

  sub_2662A8618(&v92, v93);
  if (swift_dynamicCast())
  {
    v18 = *(v92 + 24);
    v19 = *(v92 + 32);
  }

  else
  {
LABEL_31:
    v18 = 0;
    v19 = 0;
  }

  v20 = [v83 mediaSearch];
  v21 = v82;
  v22 = v81;
  v23 = v80;
  if (v20)
  {
    v24 = v20;
    v83 = [v20 mediaType];
  }

  else
  {
    v83 = 0;
  }

  v77 = 0;
  v79 = v18;
  v89 = v16;
  if (qword_280F914E8 != -1)
  {
    goto LABEL_57;
  }

  while (1)
  {
    v25 = __swift_project_value_buffer(v21, qword_280F914F0);
    swift_beginAccess();
    (*(v22 + 16))(v23, v25, v21);

    v26 = v76;

    v27 = v90;

    v23 = v27;
    v28 = v26;
    v29 = sub_2664DFE18();
    v30 = sub_2664E06C8();
    v78 = v19;

    v75 = v30;
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      *&v92 = v74;
      *v31 = 136317186;
      v73 = v29;
      v32 = sub_2664E0618();
      v34 = sub_2662A320C(v32, v33, &v92);

      *(v31 + 4) = v34;
      *(v31 + 12) = 2080;
      v35 = sub_2664E0618();
      v37 = sub_2662A320C(v35, v36, &v92);

      *(v31 + 14) = v37;
      *(v31 + 22) = 2080;
      v38 = sub_2664E0618();
      v40 = sub_2662A320C(v38, v39, &v92);

      *(v31 + 24) = v40;
      *(v31 + 32) = 2080;
      v41 = MEMORY[0x277D839F8];
      v42 = sub_2664E01D8();
      v44 = sub_2662A320C(v42, v43, &v92);

      *(v31 + 34) = v44;
      *(v31 + 42) = 2080;
      v45 = sub_2664E01D8();
      v47 = sub_2662A320C(v45, v46, &v92);

      *(v31 + 44) = v47;
      *(v31 + 52) = 2080;
      v48 = sub_2664E01D8();
      v50 = sub_2662A320C(v48, v49, &v92);

      *(v31 + 54) = v50;
      *(v31 + 62) = 2080;
      v51 = sub_2664E01D8();
      v53 = sub_2662A320C(v51, v52, &v92);

      *(v31 + 64) = v53;
      *(v31 + 72) = 2080;
      v19 = v78;
      v54 = v79;
      v55 = v78 ? v79 : 7104878;
      v56 = v78 ? v78 : 0xE300000000000000;

      v57 = sub_2662A320C(v55, v56, &v92);

      *(v31 + 74) = v57;
      *(v31 + 82) = 2080;
      v58 = MEMORY[0x2667834D0](&unk_2877E5658, v41);
      v60 = sub_2662A320C(v58, v59, &v92);

      *(v31 + 84) = v60;
      v23 = v90;
      v61 = v73;
      _os_log_impl(&dword_26629C000, v73, v75, "VisionQuest21#vq21 candidateBundleIdentifiers:%s, supportFlag:%s, unicornFlag:%s, compoundMediaTypeBundleScore:%s, entitySearchBundleScore:%s, compoundActiveBundleScore:%s, nowPlayingBundleScore:%s, foregroundBundle:%s, weights:%s", v31, 0x5Cu);
      v62 = v74;
      swift_arrayDestroy();
      MEMORY[0x266784AD0](v62, -1, -1);
      MEMORY[0x266784AD0](v31, -1, -1);

      (*(v81 + 8))(v80, v82);
    }

    else
    {

      (*(v81 + 8))(v80, v82);
      v54 = v79;
      v19 = v78;
    }

    v91[0] = MEMORY[0x277D84F98];
    v63 = 1 << *(v28 + 32);
    v64 = -1;
    if (v63 < 64)
    {
      v64 = ~(-1 << v63);
    }

    v22 = v64 & *(v28 + 56);
    v21 = (v63 + 63) >> 6;

    v65 = 0;
    v66 = v77;
    if (v22)
    {
      break;
    }

LABEL_49:
    while (1)
    {
      v67 = v65 + 1;
      if (__OFADD__(v65, 1))
      {
        break;
      }

      if (v67 >= v21)
      {

        v70 = sub_266430D18(v91[0], v28, 1);

        return v70;
      }

      v22 = *(v28 + 56 + 8 * v67);
      ++v65;
      if (v22)
      {
        goto LABEL_52;
      }
    }

    __break(1u);
LABEL_57:
    swift_once();
  }

  while (1)
  {
    v67 = v65;
LABEL_52:
    v68 = (*(v28 + 48) + ((v67 << 10) | (16 * __clz(__rbit64(v22)))));
    v69 = v68[1];
    *&v92 = *v68;
    *(&v92 + 1) = v69;

    sub_266485FDC(v91, &v92, v87, v85, &unk_2877E5658, v84, v83, v86, v90, v88, v89, v54, v19);
    if (v66)
    {
      break;
    }

    v22 &= v22 - 1;

    v65 = v67;
    v23 = v90;
    if (!v22)
    {
      goto LABEL_49;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2664BF708@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, double *a4@<X8>)
{
  v152 = a1;
  v147 = a4;
  v153 = sub_2664DFE38();
  v151 = *(v153 - 8);
  v6 = MEMORY[0x28223BE20](v153);
  v148 = &v139 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v142 = &v139 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v141 = &v139 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v140 = &v139 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v139 = &v139 - v15;
  MEMORY[0x28223BE20](v14);
  v158 = &v139 - v16;
  v17 = sub_2664DE438();
  v145 = *(v17 - 8);
  v146 = v17;
  v18 = MEMORY[0x28223BE20](v17);
  v144 = &v139 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v143 = &v139 - v20;
  sub_2664DE428();
  v149 = a2;
  v154 = a3;
  v21 = sub_2664BA810(a2, a3);
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280073A40, qword_2664E69E0);
  v22 = sub_2664E0C78();
  v159 = v22;
  v23 = 0;
  v24 = 1 << *(v21 + 32);
  v25 = -1;
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  v26 = v25 & *(v21 + 64);
  v27 = (v24 + 63) >> 6;
  v28 = v22 + 64;
  if (v26)
  {
    goto LABEL_4;
  }

LABEL_5:
  v30 = v23;
  while (1)
  {
    v23 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      __break(1u);
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    if (v23 >= v27)
    {
      break;
    }

    v31 = *(v21 + 64 + 8 * v23);
    ++v30;
    if (v31)
    {
      v29 = __clz(__rbit64(v31));
      v26 = (v31 - 1) & v31;
      while (2)
      {
        v32 = v29 | (v23 << 6);
        v33 = (*(v21 + 48) + 16 * v32);
        v35 = *v33;
        v34 = v33[1];

        v36 = Double.rounded(to:)(3);
        *(v28 + ((v32 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v32;
        v37 = v159;
        v38 = (*(v159 + 48) + 16 * v32);
        *v38 = v35;
        v38[1] = v34;
        *(*(v37 + 56) + 8 * v32) = v36;
        v39 = *(v37 + 16);
        v40 = __OFADD__(v39, 1);
        v41 = v39 + 1;
        if (!v40)
        {
          *(v37 + 16) = v41;
          if (!v26)
          {
            goto LABEL_5;
          }

LABEL_4:
          v29 = __clz(__rbit64(v26));
          v26 &= v26 - 1;
          continue;
        }

        break;
      }

LABEL_42:
      __break(1u);
      goto LABEL_43;
    }
  }

  if (qword_280F914E8 != -1)
  {
    goto LABEL_44;
  }

  while (1)
  {
    v42 = v153;
    v43 = __swift_project_value_buffer(v153, qword_280F914F0);
    swift_beginAccess();
    v44 = v151;
    v45 = *(v151 + 16);
    v46 = v158;
    v150 = v43;
    v156 = v45;
    v157 = v151 + 16;
    v45(v158, v43, v42);

    v47 = sub_2664DFE18();
    v48 = sub_2664E06C8();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v160 = v50;
      *v49 = 136315138;
      v51 = sub_2664E01D8();
      v53 = sub_2662A320C(v51, v52, &v160);

      *(v49 + 4) = v53;
      _os_log_impl(&dword_26629C000, v47, v48, "CompoundSignal#signal compoundActiveScores: %s", v49, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v50);
      MEMORY[0x266784AD0](v50, -1, -1);
      MEMORY[0x266784AD0](v49, -1, -1);
    }

    v158 = *(v44 + 8);
    (v158)(v46, v42);
    v54 = sub_2664BD1F4(v152, v149, v154);
    v55 = sub_2664E0C78();
    v56 = v55;
    v57 = 0;
    v58 = 1 << *(v54 + 32);
    v59 = -1;
    if (v58 < 64)
    {
      v59 = ~(-1 << v58);
    }

    v60 = v59 & *(v54 + 64);
    v61 = (v58 + 63) >> 6;
    v62 = v55 + 64;
    v155 = v55;
    if (!v60)
    {
      break;
    }

    while (1)
    {
      v63 = __clz(__rbit64(v60));
      v60 &= v60 - 1;
LABEL_25:
      v66 = v63 | (v57 << 6);
      v67 = (*(v54 + 48) + 16 * v66);
      v69 = *v67;
      v68 = v67[1];

      v70 = Double.rounded(to:)(3);
      *(v62 + ((v66 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v66;
      v71 = v155;
      v72 = (*(v155 + 48) + 16 * v66);
      *v72 = v69;
      v72[1] = v68;
      *(*(v71 + 56) + 8 * v66) = v70;
      v73 = *(v71 + 16);
      v40 = __OFADD__(v73, 1);
      v74 = v73 + 1;
      if (v40)
      {
        break;
      }

      v56 = v71;
      *(v71 + 16) = v74;
      if (!v60)
      {
        goto LABEL_20;
      }
    }

LABEL_43:
    __break(1u);
LABEL_44:
    swift_once();
  }

LABEL_20:
  v64 = v57;
  while (1)
  {
    v57 = v64 + 1;
    if (__OFADD__(v64, 1))
    {
      goto LABEL_41;
    }

    if (v57 >= v61)
    {
      break;
    }

    v65 = *(v54 + 64 + 8 * v57);
    ++v64;
    if (v65)
    {
      v63 = __clz(__rbit64(v65));
      v60 = (v65 - 1) & v65;
      goto LABEL_25;
    }
  }

  v75 = v139;
  v76 = v150;
  v77 = v153;
  v156(v139, v150, v153);

  v78 = sub_2664DFE18();
  v79 = sub_2664E06C8();

  if (os_log_type_enabled(v78, v79))
  {
    v80 = swift_slowAlloc();
    v81 = swift_slowAlloc();
    v160 = v81;
    *v80 = 136315138;
    v82 = sub_2664E01D8();
    v84 = sub_2662A320C(v82, v83, &v160);

    *(v80 + 4) = v84;
    _os_log_impl(&dword_26629C000, v78, v79, "CompoundSignal#signal compoundAffinityScores: %s", v80, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v81);
    MEMORY[0x266784AD0](v81, -1, -1);
    MEMORY[0x266784AD0](v80, -1, -1);
  }

  (v158)(v75, v77);
  v85 = v140;
  v86 = sub_2664BE2FC(v152, v149, v154);
  v156(v85, v76, v77);

  v87 = sub_2664DFE18();
  v88 = sub_2664E06C8();

  if (os_log_type_enabled(v87, v88))
  {
    v89 = swift_slowAlloc();
    v90 = swift_slowAlloc();
    v160 = v90;
    *v89 = 136315138;
    v91 = sub_2664E0618();
    v93 = sub_2662A320C(v91, v92, &v160);

    *(v89 + 4) = v93;
    v76 = v150;
    _os_log_impl(&dword_26629C000, v87, v88, "CompoundSignal#signal supportFlag: %s", v89, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v90);
    MEMORY[0x266784AD0](v90, -1, -1);
    MEMORY[0x266784AD0](v89, -1, -1);
  }

  (v158)(v85, v77);
  v94 = v141;
  v149 = v86;
  v95 = sub_2664BEA64(v154);
  v156(v94, v76, v77);

  v96 = sub_2664DFE18();
  v97 = sub_2664E06C8();

  v98 = os_log_type_enabled(v96, v97);
  v151 = v95;
  if (v98)
  {
    v99 = swift_slowAlloc();
    v100 = swift_slowAlloc();
    v160 = v100;
    *v99 = 136315138;
    v101 = sub_2664E0618();
    v103 = sub_2662A320C(v101, v102, &v160);
    v95 = v151;

    *(v99 + 4) = v103;
    v77 = v153;
    _os_log_impl(&dword_26629C000, v96, v97, "CompoundSignal#signal unicornFlag: %s", v99, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v100);
    v104 = v100;
    v76 = v150;
    MEMORY[0x266784AD0](v104, -1, -1);
    MEMORY[0x266784AD0](v99, -1, -1);
  }

  (v158)(v94, v77);
  v105 = v142;
  v106 = v149;

  v107 = sub_2664B9554(v95, v106);
  v156(v105, v76, v77);

  v108 = sub_2664DFE18();
  v109 = sub_2664E06C8();

  if (os_log_type_enabled(v108, v109))
  {
    v110 = swift_slowAlloc();
    v111 = swift_slowAlloc();
    v160 = v111;
    *v110 = 136315138;
    v112 = sub_2664E0618();
    v114 = sub_2662A320C(v112, v113, &v160);
    v76 = v150;

    *(v110 + 4) = v114;
    _os_log_impl(&dword_26629C000, v108, v109, "CompoundSignal#signal supportUnicornMatch: %s", v110, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v111);
    v115 = v111;
    v77 = v153;
    MEMORY[0x266784AD0](v115, -1, -1);
    MEMORY[0x266784AD0](v110, -1, -1);
  }

  (v158)(v105, v77);
  v116 = v148;
  v117 = v149;
  v118 = sub_2664BEBA4(v152, v154, v149, v151, v107, v56, v159);
  v156(v116, v76, v77);

  v119 = sub_2664DFE18();
  v120 = sub_2664E06C8();

  if (os_log_type_enabled(v119, v120))
  {
    v121 = swift_slowAlloc();
    v122 = v77;
    v123 = swift_slowAlloc();
    v160 = v123;
    *v121 = 136315138;
    v124 = sub_2664E01D8();
    v126 = sub_2662A320C(v124, v125, &v160);

    *(v121 + 4) = v126;
    _os_log_impl(&dword_26629C000, v119, v120, "CompoundSignal#signal vq21: %s", v121, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v123);
    MEMORY[0x266784AD0](v123, -1, -1);
    MEMORY[0x266784AD0](v121, -1, -1);

    v56 = v155;
    v127 = v122;
    v128 = v148;
    v117 = v149;
  }

  else
  {

    v128 = v116;
    v127 = v77;
  }

  (v158)(v128, v127);
  v129 = v144;
  sub_2664DE428();
  v130 = v143;
  sub_2664DE388();
  v132 = v131;
  v133 = *(v145 + 8);
  v134 = v129;
  v135 = v146;
  v133(v134, v146);
  result = (v133)(v130, v135);
  v137 = v147;
  *v147 = v159;
  *(v137 + 1) = v56;
  v138 = v151;
  *(v137 + 2) = v117;
  *(v137 + 3) = v138;
  *(v137 + 4) = v107;
  *(v137 + 5) = v118;
  *(v137 + 6) = v132;
  return result;
}

uint64_t sub_2664C0484(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800729C8, &unk_2664E52E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2664C04F4(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

void privateMediaItemDataFromBacking(recommendationId:assetInfo:subItemIdentifiers:sharedUserIdFromPlayableMusicAccount:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  if (a5)
  {
    v17 = a1;
    v18 = a2;
    v19 = a3;
    v20 = a4;
    v21 = a6;
    v22 = a7;
    v7 = 0;
    v23 = MEMORY[0x277D84F90];
    v24 = MEMORY[0x277D84F90];
    v8 = *(a5 + 16);
    v9 = a5 + 40;
    v16 = a5 + 40;
LABEL_3:
    v10 = v9 + 16 * v7;
    while (1)
    {
      if (v8 == v7)
      {
        a6 = v21;
        a7 = v22;
        a3 = v19;
        a4 = v20;
        a1 = v17;
        a2 = v18;
        v15 = v23;
        goto LABEL_13;
      }

      if (v7 >= v8)
      {
        break;
      }

      v11 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        goto LABEL_15;
      }

      v12 = objc_allocWithZone(MEMORY[0x277CD3DD0]);

      v13 = sub_2664E02A8();
      v14 = [v12 initWithIdentifier:v13 assetInfo:0];

      ++v7;
      v10 += 16;
      if (v14)
      {
        MEMORY[0x266783490]();
        if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_2664E04C8();
        }

        sub_2664E0518();
        v23 = v24;
        v7 = v11;
        v9 = v16;
        goto LABEL_3;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }

  else
  {
    v15 = 0;
LABEL_13:
    privateMediaItemDataFromBacking(recommendationId:assetInfo:mediaSubItems:sharedUserIdFromPlayableMusicAccount:)(a1, a2, a3, a4, v15, a6, a7);
  }
}

id privateMediaItemDataFromBacking(recommendationId:assetInfo:mediaSubItems:sharedUserIdFromPlayableMusicAccount:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, void *a7)
{
  v92 = a2;
  v93 = a7;
  v90 = a6;
  v91 = a4;
  v88 = a3;
  v89 = a1;
  v8 = sub_2664DFE38();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v81 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v81 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v87 = &v81 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v81 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v81 - v21;
  v23 = [objc_allocWithZone(MEMORY[0x277CD4388]) init];
  if (!v23)
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v34 = __swift_project_value_buffer(v8, qword_280F914F0);
    swift_beginAccess();
    (*(v9 + 16))(v12, v34, v8);
    v35 = sub_2664DFE18();
    v36 = sub_2664E06D8();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_26629C000, v35, v36, "Workarounds#privateMediaItemDataFromBacking Unexpected nil initializer result for _INPBPrivateMediaItemValueData", v37, 2u);
      MEMORY[0x266784AD0](v37, -1, -1);
    }

    (*(v9 + 8))(v12, v8);
    return 0;
  }

  v24 = v23;
  v25 = &selRef_setIsRawMediaCategoryMusicSignal_;
  if (a5)
  {
    v81 = v15;
    v86 = v22;
    v94 = MEMORY[0x277D84F90];
    if (a5 >> 62)
    {
LABEL_62:
      v26 = sub_2664E0A68();
    }

    else
    {
      v26 = *((a5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v82 = v20;
    v83 = v24;
    v84 = v8;
    v85 = v9;
    if (v26)
    {
      v8 = 0;
      v9 = a5 & 0xC000000000000001;
      v24 = 0x277CD4000;
      do
      {
        v20 = v8;
        while (1)
        {
          if (v9)
          {
            v27 = MEMORY[0x266783B70](v20, a5);
          }

          else
          {
            if (v20 >= *((a5 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_61;
            }

            v27 = *(a5 + 8 * v20 + 32);
          }

          v28 = v27;
          v8 = v20 + 1;
          if (__OFADD__(v20, 1))
          {
            __break(1u);
LABEL_61:
            __break(1u);
            goto LABEL_62;
          }

          v29 = [objc_allocWithZone(MEMORY[0x277CD4368]) init];
          if (v29)
          {
            break;
          }

          ++v20;
          if (v8 == v26)
          {
            goto LABEL_26;
          }
        }

        v30 = v29;
        v31 = [v28 identifier];
        [v30 setIdentifier_];

        v32 = v30;
        v33 = [v28 assetInfo];
        [v32 setAssetInfo_];

        MEMORY[0x266783490]();
        if (*((v94 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v94 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_2664E04C8();
        }

        sub_2664E0518();
      }

      while (v8 != v26);
    }

LABEL_26:
    sub_2662C1744(0, &qword_2800740B0, 0x277CD4368);
    v38 = sub_2664E0488();

    v8 = v84;
    v9 = v85;
    v20 = v82;
    v24 = v83;
    v22 = v86;
    v15 = v81;
    v25 = &selRef_setIsRawMediaCategoryMusicSignal_;
  }

  else
  {
    v38 = 0;
  }

  [v24 setMediaSubItems_];

  if (v91)
  {
    v39 = sub_2664E02A8();
  }

  else
  {
    v39 = 0;
  }

  [v24 v25[248]];

  if (v92)
  {
    v40 = sub_2664E02A8();
  }

  else
  {
    v40 = 0;
  }

  [v24 setRecommendationId_];

  if (v93)
  {
    v41 = sub_2664E02A8();
  }

  else
  {
    v41 = 0;
  }

  [v24 setSharedUserIdFromPlayableMusicAccount_];

  v42 = [objc_allocWithZone(MEMORY[0x277CD4360]) init];
  if (!v42)
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v68 = __swift_project_value_buffer(v8, qword_280F914F0);
    swift_beginAccess();
    (*(v9 + 16))(v15, v68, v8);
    v69 = sub_2664DFE18();
    v70 = sub_2664E06D8();
    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      *v71 = 0;
      _os_log_impl(&dword_26629C000, v69, v70, "Workarounds#privateMediaItemDataFromBacking Unexpected nil initializer result for _INPBMediaItemValue", v71, 2u);
      MEMORY[0x266784AD0](v71, -1, -1);
    }

    else
    {
    }

    (*(v9 + 8))(v15, v8);
    return 0;
  }

  v43 = v42;
  [v42 setPrivateMediaItemValueData_];
  v44 = [objc_allocWithZone(MEMORY[0x277CD4370]) init];
  if (!v44)
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v72 = __swift_project_value_buffer(v8, qword_280F914F0);
    swift_beginAccess();
    v20 = v87;
    (*(v9 + 16))(v87, v72, v8);
    v73 = sub_2664DFE18();
    v74 = sub_2664E06D8();
    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      *v75 = 0;
      _os_log_impl(&dword_26629C000, v73, v74, "Workarounds#privateMediaItemDataFromBacking Unexpected nil initializer result for _INPBPlayMediaIntent", v75, 2u);
      MEMORY[0x266784AD0](v75, -1, -1);

LABEL_71:
      (*(v9 + 8))(v20, v8);
      return 0;
    }

LABEL_70:
    goto LABEL_71;
  }

  v45 = v44;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280073490, &qword_2664E8E20);
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_2664E34F0;
  *(v46 + 32) = v43;
  sub_2662C1744(0, &qword_280072520, 0x277CD4360);
  v43 = v43;
  v47 = sub_2664E0488();

  [v45 setMediaItems_];

  v48 = [objc_allocWithZone(MEMORY[0x277CD3EC0]) initWithIdentifier:0 backingStore:v45];
  v49 = [v48 mediaItems];
  if (!v49)
  {
LABEL_65:
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v76 = __swift_project_value_buffer(v8, qword_280F914F0);
    swift_beginAccess();
    (*(v9 + 16))(v20, v76, v8);
    v77 = sub_2664DFE18();
    v78 = sub_2664E06D8();
    if (os_log_type_enabled(v77, v78))
    {
      v79 = v43;
      v80 = swift_slowAlloc();
      *v80 = 0;
      _os_log_impl(&dword_26629C000, v77, v78, "Workarounds#privateMediaItemDataFromBacking Unexpected nil media item after building INPlayMediaIntent from backing store", v80, 2u);
      MEMORY[0x266784AD0](v80, -1, -1);

      goto LABEL_71;
    }

    goto LABEL_70;
  }

  v50 = v49;
  sub_2662C1744(0, &qword_280F8F650, 0x277CD3DB8);
  v51 = sub_2664E04A8();

  if (!(v51 >> 62))
  {
    result = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_41;
    }

    goto LABEL_64;
  }

  result = sub_2664E0A68();
  if (!result)
  {
LABEL_64:

    goto LABEL_65;
  }

LABEL_41:
  if ((v51 & 0xC000000000000001) != 0)
  {
    v53 = MEMORY[0x266783B70](0, v51);
  }

  else
  {
    if (!*((v51 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v53 = *(v51 + 32);
  }

  v54 = v53;
  v93 = v43;

  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v55 = __swift_project_value_buffer(v8, qword_280F914F0);
  swift_beginAccess();
  (*(v9 + 16))(v22, v55, v8);
  v56 = v54;
  v57 = sub_2664DFE18();
  v58 = sub_2664E06B8();

  if (os_log_type_enabled(v57, v58))
  {
    v59 = swift_slowAlloc();
    v86 = v22;
    v60 = v59;
    v61 = v24;
    v62 = v8;
    v63 = swift_slowAlloc();
    *v60 = 138412290;
    *(v60 + 4) = v56;
    *v63 = v56;
    v64 = v56;
    _os_log_impl(&dword_26629C000, v57, v58, "Workarounds#privateMediaItemDataFromBacking Resolved hydrated media item from backing store: %@", v60, 0xCu);
    sub_2662E4324(v63);
    v65 = v63;
    v8 = v62;
    v24 = v61;
    MEMORY[0x266784AD0](v65, -1, -1);
    v66 = v60;
    v22 = v86;
    MEMORY[0x266784AD0](v66, -1, -1);
  }

  (*(v9 + 8))(v22, v8);
  v67 = [v56 privateMediaItemValueData];

  return v67;
}

uint64_t sub_2664C1240(uint64_t a1, uint64_t a2, void (*a3)(void *), uint64_t a4)
{
  v202 = a4;
  v203 = a3;
  v204 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800740C8, &unk_2664F0650);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v222 = &v200 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v219 = (&v200 - v8);
  v207 = sub_2664DFE38();
  v231 = *(v207 - 8);
  v9 = MEMORY[0x28223BE20](v207);
  v201 = &v200 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v240 = &v200 - v11;
  v233 = sub_2664DE438();
  v239 = *(v233 - 8);
  v12 = MEMORY[0x28223BE20](v233);
  v244 = &v200 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v220 = &v200 - v15;
  MEMORY[0x28223BE20](v14);
  v221 = &v200 - v16;
  v252 = sub_2664DF3C8();
  v247 = *(v252 - 8);
  v17 = MEMORY[0x28223BE20](v252);
  v230 = &v200 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v251 = &v200 - v19;
  v249 = sub_2664DF398();
  v236 = *(v249 - 8);
  v20 = MEMORY[0x28223BE20](v249);
  v214 = &v200 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v241 = &v200 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v248 = &v200 - v25;
  MEMORY[0x28223BE20](v24);
  v234 = &v200 - v26;
  v27 = sub_2664E0038();
  v28 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v30 = &v200 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_2664E00B8();
  v32 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v34 = &v200 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F90D30 != -1)
  {
    goto LABEL_116;
  }

  while (1)
  {
    v250 = qword_280F90D38;
    v35 = swift_allocObject();
    *(v35 + 16) = a1;
    v256 = sub_2664C5F6C;
    v257 = v35;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2662A3F90;
    v255 = &block_descriptor_49;
    v36 = _Block_copy(aBlock);

    sub_2664E0068();
    v253 = MEMORY[0x277D84F90];
    sub_2662A3E50(&qword_280F8F6A0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280074210, &qword_2664E3640);
    sub_2662A5AC8();
    sub_2664E0A08();
    MEMORY[0x266783800](0, v34, v30, v36);
    _Block_release(v36);
    v37 = *(v28 + 8);
    v28 += 8;
    v37(v30, v27);
    (*(v32 + 8))(v34, v31);

    v218 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280073A40, qword_2664E69E0);
    v38 = sub_2664E0C78();
    v210 = v38;
    v39 = 0;
    v235 = a1;
    v40 = *(a1 + 64);
    v232 = a1 + 64;
    v41 = 1 << *(a1 + 32);
    v42 = -1;
    if (v41 < 64)
    {
      v42 = ~(-1 << v41);
    }

    a1 = v42 & v40;
    v30 = (v41 + 63) >> 6;
    v237 = v236 + 16;
    v238 = (v236 + 8);
    v31 = v38 + 64;
    v32 = v234;
    if ((v42 & v40) == 0)
    {
      break;
    }

    while (1)
    {
      v43 = __clz(__rbit64(a1));
      a1 &= a1 - 1;
LABEL_11:
      v34 = v43 | (v39 << 6);
      v28 = 16 * v34;
      v46 = *(v235 + 56);
      v47 = *(v235 + 48) + 16 * v34;
      v48 = *(v47 + 8);
      v250 = *v47;
      v27 = v236;
      v49 = v249;
      (*(v236 + 16))(v32, v46 + *(v236 + 72) * v34, v249);

      v50 = sub_2663D80F4(604800.0);
      v38 = (*(v27 + 8))(v32, v49);
      *(v31 + ((v34 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v34;
      v51 = v210;
      v52 = (*(v210 + 48) + 16 * v34);
      *v52 = v250;
      v52[1] = v48;
      *(*(v51 + 56) + 8 * v34) = v50;
      v53 = *(v51 + 16);
      v54 = __OFADD__(v53, 1);
      v55 = v53 + 1;
      if (v54)
      {
        break;
      }

      *(v51 + 16) = v55;
      if (!a1)
      {
        goto LABEL_6;
      }
    }

LABEL_106:
    __break(1u);
LABEL_107:
    __break(1u);
LABEL_108:
    __break(1u);
LABEL_109:
    __break(1u);
LABEL_110:
    __break(1u);
LABEL_111:
    __break(1u);
LABEL_112:
    __break(1u);
LABEL_113:
    __break(1u);
LABEL_114:
    __break(1u);
LABEL_115:
    __break(1u);
LABEL_116:
    swift_once();
  }

LABEL_6:
  v44 = v39;
  while (1)
  {
    v39 = v44 + 1;
    if (__OFADD__(v44, 1))
    {
LABEL_95:
      __break(1u);
LABEL_96:
      __break(1u);
LABEL_97:
      __break(1u);
LABEL_98:
      __break(1u);
LABEL_99:
      __break(1u);
LABEL_100:
      __break(1u);
LABEL_101:
      __break(1u);
LABEL_102:
      __break(1u);
LABEL_103:
      __break(1u);
LABEL_104:
      __break(1u);
LABEL_105:
      __break(1u);
      goto LABEL_106;
    }

    if (v39 >= v30)
    {
      break;
    }

    v45 = *(v232 + 8 * v39);
    ++v44;
    if (v45)
    {
      v43 = __clz(__rbit64(v45));
      a1 = (v45 - 1) & v45;
      goto LABEL_11;
    }
  }

  MEMORY[0x28223BE20](v38);
  *(&v200 - 2) = v204;
  v30 = v235;
  v200 = sub_266421620(sub_2664C5F74, (&v200 - 4), v235);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072FE8, &qword_2664F0860);
  v56 = sub_2664E0C78();
  v209 = v56;
  v32 = 0;
  v57 = 1 << *(v30 + 32);
  v58 = -1;
  if (v57 < 64)
  {
    v58 = ~(-1 << v57);
  }

  v31 = v58 & *(v30 + 64);
  v242 = ((v57 + 63) >> 6);
  v229 = *MEMORY[0x277D5FF88];
  v28 = v247 + 104;
  v34 = v247 + 8;
  v228 = *MEMORY[0x277D5FF60];
  v227 = *MEMORY[0x277D5FF80];
  v226 = *MEMORY[0x277D5FF50];
  v225 = *MEMORY[0x277D5FF70];
  v224 = *MEMORY[0x277D5FF58];
  v223 = *MEMORY[0x277D5FF68];
  v243 = v56 + 64;
  while (1)
  {
    v27 = v244;
    if (!v31)
    {
      break;
    }

    v59 = __clz(__rbit64(v31));
    v31 &= v31 - 1;
LABEL_24:
    v62 = v59 | (v32 << 6);
    v63 = *(v30 + 56);
    v64 = (*(v30 + 48) + 16 * v62);
    v65 = v64[1];
    v245 = *v64;
    v66 = *(v236 + 72);
    v247 = v62;
    v67 = v234;
    (*(v236 + 16))(v234, v63 + v66 * v62, v249);
    v27 = *v28;
    v68 = v251;
    a1 = v252;
    (*v28)(v251, v229, v252);
    v246 = v65;

    v250 = sub_2664DF3A8();
    v69 = *v34;
    (*v34)(v68, a1);
    v30 = v230;
    (v27)(v230, v228, a1);
    v70 = sub_2664DF3A8();
    v69(v30, a1);
    v54 = __OFADD__(v250, v70);
    v71 = &v250[v70];
    if (v54)
    {
      goto LABEL_107;
    }

    v250 = v31;
    v31 = v251;
    a1 = v252;
    (v27)(v251, v227, v252);
    v30 = sub_2664DF3A8();
    v69(v31, a1);
    v54 = __OFADD__(v71, v30);
    v72 = &v71[v30];
    if (v54)
    {
      goto LABEL_108;
    }

    v31 = v251;
    a1 = v252;
    (v27)(v251, v226, v252);
    v30 = sub_2664DF3A8();
    v69(v31, a1);
    v54 = __OFADD__(v72, v30);
    v73 = &v72[v30];
    if (v54)
    {
      goto LABEL_109;
    }

    v31 = v251;
    a1 = v252;
    (v27)(v251, v225, v252);
    v30 = sub_2664DF3A8();
    v69(v31, a1);
    v54 = __OFADD__(v73, v30);
    v74 = &v73[v30];
    if (v54)
    {
      goto LABEL_110;
    }

    v31 = v251;
    a1 = v252;
    (v27)(v251, v224, v252);
    v30 = sub_2664DF3A8();
    v69(v31, a1);
    v54 = __OFADD__(v74, v30);
    v75 = &v74[v30];
    if (v54)
    {
      goto LABEL_111;
    }

    v31 = v251;
    v30 = v252;
    (v27)(v251, v223, v252);
    v27 = sub_2664DF3A8();
    v69(v31, v30);
    (*v238)(v67, v249);
    if (__OFADD__(v75, v27))
    {
      goto LABEL_112;
    }

    v76 = v247;
    *(v243 + ((v247 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v247;
    v77 = v209;
    v78 = (*(v209 + 48) + 16 * v76);
    *v78 = v245;
    v78[1] = v246;
    *(*(v77 + 56) + 8 * v76) = &v75[v27];
    v79 = *(v77 + 16);
    v54 = __OFADD__(v79, 1);
    v80 = v79 + 1;
    if (v54)
    {
      goto LABEL_113;
    }

    *(v77 + 16) = v80;
    v30 = v235;
    v31 = v250;
  }

  v60 = v32;
  while (1)
  {
    v32 = v60 + 1;
    if (__OFADD__(v60, 1))
    {
      goto LABEL_96;
    }

    if (v32 >= v242)
    {
      break;
    }

    v61 = *(v232 + 8 * v32);
    ++v60;
    if (v61)
    {
      v59 = __clz(__rbit64(v61));
      v31 = (v61 - 1) & v61;
      goto LABEL_24;
    }
  }

  v216 = v28;
  v215 = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072F48, qword_2664F0660);
  v81 = sub_2664E0C78();
  v31 = v81;
  v34 = 0;
  v82 = 1 << *(v30 + 32);
  v83 = -1;
  if (v82 < 64)
  {
    v83 = ~(-1 << v82);
  }

  v84 = v83 & *(v30 + 64);
  v28 = (v82 + 63) >> 6;
  v205 = (v231 + 2);
  v206 = (v231 + 1);
  v231 = (v239 + 8);
  v250 = (v81 + 64);
  v32 = v236;
  v242 = (v236 + 32);
  while (1)
  {
    v85 = v241;
    if (!v84)
    {
      break;
    }

    v86 = __clz(__rbit64(v84));
    v243 = (v84 - 1) & v84;
LABEL_42:
    v89 = v86 | (v34 << 6);
    v90 = *(v30 + 56);
    v91 = *(v30 + 48) + 16 * v89;
    a1 = *(v91 + 8);
    v246 = *v91;
    v92 = *(v32 + 16);
    v247 = *(v32 + 72) * v89;
    v92(v248, v90 + v247, v249);
    v245 = a1;

    sub_2664DF388();
    sub_2664DF378();
    sub_2664DE3C8();
    if (v93 <= 0.0)
    {
      sub_2664DF368();
    }

    else
    {
      if (qword_280F914E8 != -1)
      {
        swift_once();
      }

      v94 = v207;
      v95 = __swift_project_value_buffer(v207, qword_280F914F0);
      swift_beginAccess();
      v96 = v240;
      (*v205)(v240, v95, v94);
      v97 = sub_2664DFE18();
      v98 = sub_2664E06D8();
      if (os_log_type_enabled(v97, v98))
      {
        v99 = swift_slowAlloc();
        *v99 = 0;
        _os_log_impl(&dword_26629C000, v97, v98, "HistoryStats cannot add instance from the future", v99, 2u);
        MEMORY[0x266784AD0](v99, -1, -1);

        (*v206)(v240, v94);
      }

      else
      {

        (*v206)(v96, v94);
      }

      v30 = v235;
      v27 = v244;
      v85 = v241;
    }

    (*v231)(v27, v233);
    v100 = v249;
    (*v238)(v248, v249);
    *&v250[(v89 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v89;
    v101 = (*(v31 + 48) + 16 * v89);
    v102 = v245;
    *v101 = v246;
    v101[1] = v102;
    (*v242)(*(v31 + 56) + v247, v85, v100);
    v103 = *(v31 + 16);
    v54 = __OFADD__(v103, 1);
    v104 = v103 + 1;
    if (v54)
    {
      goto LABEL_114;
    }

    *(v31 + 16) = v104;
    v84 = v243;
  }

  v87 = v34;
  while (1)
  {
    v34 = v87 + 1;
    if (__OFADD__(v87, 1))
    {
      goto LABEL_97;
    }

    if (v34 >= v28)
    {
      break;
    }

    v88 = *(v232 + 8 * v34);
    ++v87;
    if (v88)
    {
      v86 = __clz(__rbit64(v88));
      v243 = (v88 - 1) & v88;
      goto LABEL_42;
    }
  }

  v105 = sub_2664E0C78();
  v208 = v105;
  v27 = 0;
  v106 = 1 << *(v31 + 32);
  v107 = -1;
  if (v106 < 64)
  {
    v107 = ~(-1 << v106);
  }

  a1 = v107 & *(v31 + 64);
  v30 = (v106 + 63) >> 6;
  v247 = v105 + 64;
  for (i = v250; a1; i = v250)
  {
    v109 = __clz(__rbit64(a1));
    a1 &= a1 - 1;
LABEL_61:
    v28 = v109 | (v27 << 6);
    v112 = *(v31 + 56);
    v113 = (*(v31 + 48) + 16 * v28);
    v114 = v113[1];
    v248 = *v113;
    v115 = v112 + *(v32 + 72) * v28;
    v116 = *(v32 + 16);
    v34 = v234;
    v117 = v32;
    v32 = v249;
    v116(v234, v115, v249);

    v118 = sub_2663D80F4(14400.0);
    (*(v117 + 8))(v34, v32);
    *(v247 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
    v119 = v208;
    v120 = (*(v208 + 48) + 16 * v28);
    *v120 = v248;
    v120[1] = v114;
    *(*(v119 + 56) + 8 * v28) = v118;
    v121 = *(v119 + 16);
    v54 = __OFADD__(v121, 1);
    v122 = v121 + 1;
    if (v54)
    {
      goto LABEL_115;
    }

    *(v119 + 16) = v122;
    v32 = v236;
  }

  v110 = v27;
  v28 = v233;
  v34 = v222;
  while (1)
  {
    v27 = v110 + 1;
    if (__OFADD__(v110, 1))
    {
      goto LABEL_98;
    }

    if (v27 >= v30)
    {
      break;
    }

    v111 = *&i[8 * v27];
    ++v110;
    if (v111)
    {
      v109 = __clz(__rbit64(v111));
      a1 = (v111 - 1) & v111;
      goto LABEL_61;
    }
  }

  v123 = v220;
  sub_2664DE428();
  sub_2664DE398();
  v124 = v239;
  v218 = *(v239 + 8);
  v218(v123, v28);
  v125 = 1 << *(v235 + 32);
  v126 = -1;
  if (v125 < 64)
  {
    v126 = ~(-1 << v125);
  }

  v32 = v126 & *(v235 + 64);
  v211 = (v125 + 63) >> 6;
  v212 = (v124 + 32);

  v213 = 0;
  v217 = 0;
  v127 = 0;
  v128 = MEMORY[0x277D84F98];
  v244 = MEMORY[0x277D84F98];
  v245 = MEMORY[0x277D84F98];
  v30 = v214;
  while (1)
  {
    v243 = v128;
    if (!v32)
    {
      if (v211 <= (v127 + 1))
      {
        v130 = (v127 + 1);
      }

      else
      {
        v130 = v211;
      }

      v27 = v130 - 1;
      while (1)
      {
        v129 = (v127 + 1);
        if (__OFADD__(v127, 1))
        {
          break;
        }

        if (v129 >= v211)
        {
          v178 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800729E0, &qword_2664E5308);
          (*(*(v178 - 8) + 56))(v34, 1, 1, v178);
          v32 = 0;
          goto LABEL_77;
        }

        v32 = *(v232 + 8 * v129);
        ++v127;
        if (v32)
        {
          goto LABEL_76;
        }
      }

      __break(1u);
      goto LABEL_95;
    }

    v129 = v127;
LABEL_76:
    v131 = __clz(__rbit64(v32));
    v32 &= v32 - 1;
    v132 = v131 | (v129 << 6);
    v133 = (*(v235 + 48) + 16 * v132);
    v135 = *v133;
    v134 = v133[1];
    v136 = v236;
    v137 = v234;
    v138 = v249;
    (*(v236 + 16))(v234, *(v235 + 56) + *(v236 + 72) * v132, v249);
    v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800729E0, &qword_2664E5308);
    v140 = *(v139 + 48);
    *v34 = v135;
    *(v34 + 8) = v134;
    (*(v136 + 32))(v34 + v140, v137, v138);
    (*(*(v139 - 8) + 56))(v34, 0, 1, v139);

    v27 = v129;
    v30 = v214;
LABEL_77:
    v141 = v219;
    sub_2664C5F90(v34, v219);
    v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800729E0, &qword_2664E5308);
    if ((*(*(v142 - 8) + 48))(v141, 1, v142) == 1)
    {
      break;
    }

    v241 = v27;
    v143 = *v141;
    v144 = v141[1];
    (*v242)(v30, v141 + *(v142 + 48), v249);
    v145 = v220;
    sub_2664DF378();
    v146 = v221;
    v147 = sub_2664DE3B8();
    v148 = v233;
    v149 = v218;
    v218(v145, v233);
    v247 = v143;
    v248 = v144;
    if (v147)
    {

      sub_2664DF378();
      v149(v146, v148);
      (*v212)(v146, v145, v148);
      v213 = v143;
      v217 = v144;
    }

    v150 = v215;
    v34 = v216;
    v151 = *v216;
    v31 = v251;
    v152 = v252;
    (*v216)(v251, v229, v252);
    v153 = v30;
    v246 = sub_2664DF3A8();
    v27 = *v150;
    (*v150)(v31, v152);
    v30 = v152;
    a1 = v230;
    v250 = v151;
    (v151)(v230, v228, v152);
    v154 = sub_2664DF3A8();
    (v27)(a1, v30);
    v28 = v246 + v154;
    if (__OFADD__(v246, v154))
    {
      goto LABEL_99;
    }

    v155 = v252;
    (v250)(v31, v227, v252);
    v30 = sub_2664DF3A8();
    (v27)(v31, v155);
    v54 = __OFADD__(v28, v30);
    v28 += v30;
    if (v54)
    {
      goto LABEL_100;
    }

    v30 = v153;
    v31 = v251;
    v156 = v252;
    (v250)(v251, v226, v252);
    v157 = sub_2664DF3A8();
    (v27)(v31, v156);
    v54 = __OFADD__(v28, v157);
    v28 += v157;
    if (v54)
    {
      goto LABEL_101;
    }

    v31 = v150;
    v158 = v251;
    v159 = v252;
    (v250)(v251, v225, v252);
    v160 = sub_2664DF3A8();
    (v27)(v158, v159);
    if (__OFADD__(v28, v160))
    {
      goto LABEL_102;
    }

    v239 = v32;
    v161 = (v28 + v160);
    v162 = v245;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    aBlock[0] = v162;
    v28 = v247;
    a1 = v248;
    sub_26634F084(v247, v248, isUniquelyReferenced_nonNull_native, v161);
    v245 = aBlock[0];
    v240 = HistoryStats.total1Day.getter();
    v32 = v31;
    v31 = v251;
    v164 = v252;
    v165 = v224;
    (v250)(v251, v224, v252);
    v166 = sub_2664DF3A8();
    v246 = v27;
    (v27)(v31, v164);
    if (__OFADD__(v240, v166))
    {
      goto LABEL_103;
    }

    v167 = &v240[v166];
    v168 = v244;
    v169 = swift_isUniquelyReferenced_nonNull_native();
    aBlock[0] = v168;
    sub_26634F084(v28, a1, v169, v167);
    v244 = aBlock[0];
    v170 = HistoryStats.total1Day.getter();
    v31 = v251;
    v171 = v252;
    (v250)(v251, v165, v252);
    v172 = sub_2664DF3A8();
    v246(v31, v171);
    v54 = __OFADD__(v170, v172);
    v28 = v170 + v172;
    if (v54)
    {
      goto LABEL_104;
    }

    v173 = v251;
    v174 = v252;
    (v250)(v251, v223, v252);
    v175 = sub_2664DF3A8();
    v246(v173, v174);
    if (__OFADD__(v28, v175))
    {
      goto LABEL_105;
    }

    v176 = v243;
    v177 = swift_isUniquelyReferenced_nonNull_native();
    aBlock[0] = v176;
    sub_26634F084(v247, v248, v177, (v28 + v175));

    (*v238)(v30, v249);
    v128 = aBlock[0];
    v127 = v241;
    v34 = v222;
    v32 = v239;
  }

  v179 = v218;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v180 = v207;
  v181 = __swift_project_value_buffer(v207, qword_280F914F0);
  swift_beginAccess();
  v182 = v201;
  (*v205)(v201, v181, v180);
  v183 = sub_2664DFE18();
  v184 = sub_2664E06E8();
  v185 = os_log_type_enabled(v183, v184);
  v186 = v221;
  v187 = v220;
  if (v185)
  {
    v188 = swift_slowAlloc();
    *v188 = 0;
    _os_log_impl(&dword_26629C000, v183, v184, "LastNowPlayingSignal#signal returning LastNowPlayingSignal", v188, 2u);
    MEMORY[0x266784AD0](v188, -1, -1);
  }

  (*v206)(v182, v180);
  sub_2664DE428();
  sub_2664DE388();
  v190 = v189;
  v191 = v233;
  v179(v187, v233);
  sub_2664DE388();
  v192 = Double.rounded(to:)(5);
  NowPlayingSignal = type metadata accessor for LastNowPlayingSignal();
  v194 = swift_allocObject();
  v195 = v217;
  *(v194 + 2) = v213;
  *(v194 + 3) = v195;
  v194[4] = v192;
  v196 = v210;
  *(v194 + 5) = v200;
  *(v194 + 6) = v196;
  v197 = v209;
  *(v194 + 7) = v208;
  *(v194 + 8) = v197;
  *(v194 + 9) = v190;
  v198 = v244;
  *(v194 + 10) = v245;
  *(v194 + 11) = v198;
  *(v194 + 12) = v243;
  v255 = NowPlayingSignal;
  v256 = &off_2877F4AE8;
  aBlock[0] = v194;
  v203(aBlock);
  v179(v186, v191);
  return __swift_destroy_boxed_opaque_existential_1Tm(aBlock);
}

void sub_2664C2F3C(uint64_t a1)
{
  v79 = sub_2664DE438();
  v2 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v78 = &v72 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = sub_2664DFE38();
  v4 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v95 = &v72 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2664DF398();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v90 = &v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v89 = &v72 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v72 - v13;
  MEMORY[0x28223BE20](v12);
  v80 = &v72 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800740C8, &unk_2664F0650);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v91 = (&v72 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v17);
  v88 = (&v72 - v19);
  v20 = *(a1 + 64);
  v74 = a1 + 64;
  v21 = 1 << *(a1 + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & v20;
  v73 = (v21 + 63) >> 6;
  v92 = (v7 + 32);
  v93 = (v7 + 16);
  v81 = v7;
  v86 = (v7 + 8);
  v87 = (v4 + 16);
  v85 = (v4 + 8);
  v77 = (v2 + 8);
  v82 = a1;

  v24 = 0;
  *&v25 = 136315650;
  v76 = v25;
  v75 = v14;
  while (v23)
  {
    v27 = v24;
LABEL_14:
    v30 = __clz(__rbit64(v23));
    v23 &= v23 - 1;
    v31 = v30 | (v27 << 6);
    v32 = v81;
    v33 = (*(v82 + 48) + 16 * v31);
    v35 = *v33;
    v34 = v33[1];
    v36 = v80;
    (*(v81 + 16))(v80, *(v82 + 56) + *(v81 + 72) * v31, v6);
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800729E0, &qword_2664E5308);
    v38 = *(v37 + 48);
    v39 = v91;
    *v91 = v35;
    v39[1] = v34;
    v29 = v39;
    (*(v32 + 32))(v39 + v38, v36, v6);
    (*(*(v37 - 8) + 56))(v29, 0, 1, v37);

    v94 = v27;
LABEL_15:
    v40 = v29;
    v41 = v88;
    sub_2664C5F90(v40, v88);
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800729E0, &qword_2664E5308);
    v43 = (*(*(v42 - 8) + 48))(v41, 1, v42);
    v45 = v89;
    v44 = v90;
    if (v43 == 1)
    {

      return;
    }

    v46 = v41;
    v47 = *v41;
    v48 = v41[1];
    (*v92)(v14, v46 + *(v42 + 48), v6);
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v49 = v96;
    v50 = __swift_project_value_buffer(v96, qword_280F914F0);
    swift_beginAccess();
    (*v87)(v95, v50, v49);
    v51 = *v93;
    (*v93)(v45, v14, v6);
    v51(v44, v14, v6);

    v52 = sub_2664DFE18();
    v53 = sub_2664E06C8();

    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v84 = swift_slowAlloc();
      v97 = v84;
      *v54 = v76;
      v55 = sub_2662A320C(v47, v48, &v97);
      v83 = v53;
      v56 = v55;

      *(v54 + 4) = v56;
      *(v54 + 12) = 2080;
      v57 = v78;
      sub_2664DF378();
      sub_2662A3E50(&qword_280F914D8, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
      v58 = v79;
      v59 = sub_2664E0D48();
      v61 = v60;
      (*v77)(v57, v58);
      v62 = *v86;
      (*v86)(v45, v6);
      v63 = v62;
      v64 = sub_2662A320C(v59, v61, &v97);

      *(v54 + 14) = v64;
      *(v54 + 22) = 2080;
      sub_2664DF358();
      v65 = MEMORY[0x2667834D0]();
      v67 = v66;

      v63(v44, v6);
      v68 = sub_2662A320C(v65, v67, &v97);

      *(v54 + 24) = v68;
      _os_log_impl(&dword_26629C000, v52, v83, "LastNowPlayingSignal#signal For bundle %s - recency: %s frequencies: %s", v54, 0x20u);
      v69 = v84;
      swift_arrayDestroy();
      MEMORY[0x266784AD0](v69, -1, -1);
      MEMORY[0x266784AD0](v54, -1, -1);

      (*v85)(v95, v96);
      v70 = v75;
      v63(v75, v6);
      v24 = v94;
      v14 = v70;
    }

    else
    {

      v26 = *v86;
      (*v86)(v44, v6);
      v26(v45, v6);
      (*v85)(v95, v96);
      v26(v14, v6);
      v24 = v94;
    }
  }

  if (v73 <= v24 + 1)
  {
    v28 = v24 + 1;
  }

  else
  {
    v28 = v73;
  }

  v29 = v91;
  while (1)
  {
    v27 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v27 >= v73)
    {
      v94 = v28 - 1;
      v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800729E0, &qword_2664E5308);
      (*(*(v71 - 8) + 56))(v29, 1, 1, v71);
      v23 = 0;
      goto LABEL_15;
    }

    v23 = *(v74 + 8 * v27);
    ++v24;
    if (v23)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
}

void sub_2664C3834(Swift::Double *a1@<X8>)
{
  v2 = sub_2664DE438();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v6 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2664DF378();
  sub_2664DE388();
  (*(v3 + 8))(v5, v2);
  *a1 = Double.rounded(to:)(5);
}

uint64_t sub_2664C3940(uint64_t a1)
{
  v146 = sub_2664E0038();
  v3 = *(v146 - 8);
  MEMORY[0x28223BE20](v146);
  v143 = &v140 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = sub_2664E00B8();
  MEMORY[0x28223BE20](v144);
  v141 = &v140 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = v6;
  v7 = v1[2];
  v8 = v1[3];
  v145 = v3;
  if (v8)
  {

    sub_2664475B4(a1, v7, v8);
    v7 = v9;
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v1[2] = v7;
  v1[3] = v11;

  v12 = v1[5];

  sub_2664495A0(a1, v12);
  v14 = v13;

  v1[5] = v14;

  v15 = v1[6];

  sub_266449428(a1, v15);
  v17 = v16;

  v1[6] = v17;

  v18 = v1[7];

  sub_266449428(a1, v18);
  v20 = v19;

  v1[7] = v20;

  v21 = v1[8];

  sub_26644F128(a1, v21);
  v23 = v22;

  v1[8] = v23;

  v24 = v1[10];

  sub_266449428(a1, v24);
  v26 = v25;

  v1[10] = v26;

  v27 = v1[11];

  sub_266449428(a1, v27);
  v29 = v28;

  v1[11] = v29;

  v30 = v1[12];

  sub_266449428(a1, v30);
  v32 = v31;

  v1[12] = v32;

  v33 = sub_26639F100();
  v150 = v1;
  v34 = v1[10];

  v149 = v33;
  v35 = sub_266430D18(v34, v33, 0);

  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280073A40, qword_2664E69E0);
  v36 = sub_2664E0C78();
  v37 = v36;
  v38 = 0;
  v39 = 1 << *(v35 + 32);
  v40 = -1;
  if (v39 < 64)
  {
    v40 = ~(-1 << v39);
  }

  v41 = v40 & *(v35 + 64);
  v42 = (v39 + 63) >> 6;
  for (i = v36 + 64; v41; v37[2] = v54)
  {
    v43 = __clz(__rbit64(v41));
    v41 &= v41 - 1;
LABEL_13:
    v46 = v43 | (v38 << 6);
    v47 = (*(v35 + 48) + 16 * v46);
    v48 = *v47;
    v49 = v47[1];

    v50 = Double.rounded(to:)(3);
    *(i + ((v46 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v46;
    v51 = (v37[6] + 16 * v46);
    *v51 = v48;
    v51[1] = v49;
    *(v37[7] + 8 * v46) = v50;
    v52 = v37[2];
    v53 = __OFADD__(v52, 1);
    v54 = v52 + 1;
    if (v53)
    {
LABEL_74:
      __break(1u);
      goto LABEL_75;
    }
  }

  v44 = v38;
  while (1)
  {
    v38 = v44 + 1;
    if (__OFADD__(v44, 1))
    {
      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
LABEL_72:
      __break(1u);
LABEL_73:
      __break(1u);
      goto LABEL_74;
    }

    if (v38 >= v42)
    {
      break;
    }

    v45 = *(v35 + 64 + 8 * v38);
    ++v44;
    if (v45)
    {
      v43 = __clz(__rbit64(v45));
      v41 = (v45 - 1) & v45;
      goto LABEL_13;
    }
  }

  v150[10] = v37;

  v56 = sub_266430D18(v55, v149, 0);

  v57 = sub_2664E0C78();
  v58 = v57;
  v38 = 0;
  v59 = 1 << *(v56 + 32);
  v60 = -1;
  if (v59 < 64)
  {
    v60 = ~(-1 << v59);
  }

  v61 = v60 & *(v56 + 64);
  v62 = (v59 + 63) >> 6;
  i = v57 + 64;
  if (!v61)
  {
LABEL_20:
    v64 = v38;
    while (1)
    {
      v38 = v64 + 1;
      if (__OFADD__(v64, 1))
      {
        goto LABEL_70;
      }

      if (v38 >= v62)
      {

        v150[11] = v58;

        v75 = sub_266430D18(v74, v149, 0);

        v76 = sub_2664E0C78();
        v77 = v76;
        v38 = 0;
        v78 = 1 << *(v75 + 32);
        v79 = -1;
        if (v78 < 64)
        {
          v79 = ~(-1 << v78);
        }

        v80 = v79 & *(v75 + 64);
        v81 = (v78 + 63) >> 6;
        i = v76 + 64;
        if (!v80)
        {
LABEL_32:
          v83 = v38;
          while (1)
          {
            v38 = v83 + 1;
            if (__OFADD__(v83, 1))
            {
              goto LABEL_71;
            }

            if (v38 >= v81)
            {

              v150[12] = v77;

              v94 = sub_2663D8A24(v93, v149);

              v95 = sub_2664E0C78();
              v96 = v95;
              v38 = 0;
              v97 = 1 << *(v94 + 32);
              v98 = -1;
              if (v97 < 64)
              {
                v98 = ~(-1 << v97);
              }

              v99 = v98 & *(v94 + 64);
              v100 = (v97 + 63) >> 6;
              i = v95 + 64;
              if (!v99)
              {
LABEL_44:
                v102 = v38;
                while (1)
                {
                  v38 = v102 + 1;
                  if (__OFADD__(v102, 1))
                  {
                    goto LABEL_72;
                  }

                  if (v38 >= v100)
                  {

                    v150[6] = v96;

                    v113 = sub_2663D8A24(v112, v149);

                    v114 = sub_2664E0C78();
                    v115 = v114;
                    v38 = 0;
                    v116 = 1 << *(v113 + 32);
                    v117 = -1;
                    if (v116 < 64)
                    {
                      v117 = ~(-1 << v116);
                    }

                    v118 = v117 & *(v113 + 64);
                    v119 = (v116 + 63) >> 6;
                    i = v114 + 64;
                    if (!v118)
                    {
LABEL_56:
                      v121 = v38;
                      while (1)
                      {
                        v38 = v121 + 1;
                        if (__OFADD__(v121, 1))
                        {
                          goto LABEL_73;
                        }

                        if (v38 >= v119)
                        {

                          v38 = v150;
                          v150[7] = v115;

                          sub_2664C5518(v149, v38);
                          v132 = v131;

                          if (*(v132 + 16))
                          {
                            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072FE8, &qword_2664F0860);
                            v133 = sub_2664E0C98();
                          }

                          else
                          {
                            v133 = MEMORY[0x277D84F98];
                          }

                          aBlock[0] = v133;

                          sub_2664C519C(v134, 1, aBlock);

                          *(v38 + 64) = aBlock[0];

                          if (qword_280F90D30 != -1)
                          {
                            goto LABEL_79;
                          }

                          goto LABEL_68;
                        }

                        v122 = *(v113 + 64 + 8 * v38);
                        ++v121;
                        if (v122)
                        {
                          v120 = __clz(__rbit64(v122));
                          v118 = (v122 - 1) & v122;
                          goto LABEL_61;
                        }
                      }
                    }

                    while (1)
                    {
                      v120 = __clz(__rbit64(v118));
                      v118 &= v118 - 1;
LABEL_61:
                      v123 = v120 | (v38 << 6);
                      v124 = (*(v113 + 48) + 16 * v123);
                      v125 = *v124;
                      v126 = v124[1];

                      v127 = Double.rounded(to:)(3);
                      *(i + ((v123 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v123;
                      v128 = (v115[6] + 16 * v123);
                      *v128 = v125;
                      v128[1] = v126;
                      *(v115[7] + 8 * v123) = v127;
                      v129 = v115[2];
                      v53 = __OFADD__(v129, 1);
                      v130 = v129 + 1;
                      if (v53)
                      {
                        goto LABEL_78;
                      }

                      v115[2] = v130;
                      if (!v118)
                      {
                        goto LABEL_56;
                      }
                    }
                  }

                  v103 = *(v94 + 64 + 8 * v38);
                  ++v102;
                  if (v103)
                  {
                    v101 = __clz(__rbit64(v103));
                    v99 = (v103 - 1) & v103;
                    goto LABEL_49;
                  }
                }
              }

              while (1)
              {
                v101 = __clz(__rbit64(v99));
                v99 &= v99 - 1;
LABEL_49:
                v104 = v101 | (v38 << 6);
                v105 = (*(v94 + 48) + 16 * v104);
                v106 = *v105;
                v107 = v105[1];

                v108 = Double.rounded(to:)(3);
                *(i + ((v104 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v104;
                v109 = (v96[6] + 16 * v104);
                *v109 = v106;
                v109[1] = v107;
                *(v96[7] + 8 * v104) = v108;
                v110 = v96[2];
                v53 = __OFADD__(v110, 1);
                v111 = v110 + 1;
                if (v53)
                {
                  goto LABEL_77;
                }

                v96[2] = v111;
                if (!v99)
                {
                  goto LABEL_44;
                }
              }
            }

            v84 = *(v75 + 64 + 8 * v38);
            ++v83;
            if (v84)
            {
              v82 = __clz(__rbit64(v84));
              v80 = (v84 - 1) & v84;
              goto LABEL_37;
            }
          }
        }

        while (1)
        {
          v82 = __clz(__rbit64(v80));
          v80 &= v80 - 1;
LABEL_37:
          v85 = v82 | (v38 << 6);
          v86 = (*(v75 + 48) + 16 * v85);
          v87 = *v86;
          v88 = v86[1];

          v89 = Double.rounded(to:)(3);
          *(i + ((v85 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v85;
          v90 = (v77[6] + 16 * v85);
          *v90 = v87;
          v90[1] = v88;
          *(v77[7] + 8 * v85) = v89;
          v91 = v77[2];
          v53 = __OFADD__(v91, 1);
          v92 = v91 + 1;
          if (v53)
          {
            goto LABEL_76;
          }

          v77[2] = v92;
          if (!v80)
          {
            goto LABEL_32;
          }
        }
      }

      v65 = *(v56 + 64 + 8 * v38);
      ++v64;
      if (v65)
      {
        v63 = __clz(__rbit64(v65));
        v61 = (v65 - 1) & v65;
        goto LABEL_25;
      }
    }
  }

  while (1)
  {
    v63 = __clz(__rbit64(v61));
    v61 &= v61 - 1;
LABEL_25:
    v66 = v63 | (v38 << 6);
    v67 = (*(v56 + 48) + 16 * v66);
    v68 = *v67;
    v69 = v67[1];

    v70 = Double.rounded(to:)(3);
    *(i + ((v66 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v66;
    v71 = (v58[6] + 16 * v66);
    *v71 = v68;
    v71[1] = v69;
    *(v58[7] + 8 * v66) = v70;
    v72 = v58[2];
    v53 = __OFADD__(v72, 1);
    v73 = v72 + 1;
    if (v53)
    {
      break;
    }

    v58[2] = v73;
    if (!v61)
    {
      goto LABEL_20;
    }
  }

LABEL_75:
  __break(1u);
LABEL_76:
  __break(1u);
LABEL_77:
  __break(1u);
LABEL_78:
  __break(1u);
LABEL_79:
  swift_once();
LABEL_68:
  aBlock[4] = sub_2664C6000;
  aBlock[5] = v38;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2662A3F90;
  aBlock[3] = &block_descriptor_43_1;
  v135 = _Block_copy(aBlock);

  v136 = v141;
  sub_2664E0068();
  v151 = MEMORY[0x277D84F90];
  sub_2662A3E50(&qword_280F8F6A0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280074210, &qword_2664E3640);
  sub_2662A5AC8();
  v137 = v143;
  v138 = v146;
  sub_2664E0A08();
  MEMORY[0x266783800](0, v136, v137, v135);
  _Block_release(v135);
  (*(v145 + 8))(v137, v138);
  (*(v142 + 8))(v136, v144);
}

uint64_t sub_2664C4548(void *a1)
{
  v2 = sub_2664DFE38();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v2, qword_280F914F0);
  swift_beginAccess();
  (*(v3 + 16))(v5, v6, v2);

  v7 = sub_2664DFE18();
  v8 = sub_2664E06C8();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v35 = v8;
    v10 = v9;
    v36 = swift_slowAlloc();
    v39 = v36;
    *v10 = 136316162;
    v11 = a1[3];
    v37 = a1[2];
    v38 = v11;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800734A0, &qword_2664E3B40);
    v12 = sub_2664E0318();
    v14 = sub_2662A320C(v12, v13, &v39);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2080;

    v34 = v7;
    v15 = sub_2664E01D8();
    v17 = v16;

    v18 = sub_2662A320C(v15, v17, &v39);

    *(v10 + 14) = v18;
    *(v10 + 22) = 2080;

    v19 = sub_2664E01D8();
    v21 = v20;

    v22 = sub_2662A320C(v19, v21, &v39);

    *(v10 + 24) = v22;
    *(v10 + 32) = 2080;

    v23 = sub_2664E01D8();
    v25 = v24;

    v26 = sub_2662A320C(v23, v25, &v39);

    *(v10 + 34) = v26;
    *(v10 + 42) = 2080;

    v27 = sub_2664E01D8();
    v29 = v28;

    v30 = sub_2662A320C(v27, v29, &v39);

    *(v10 + 44) = v30;
    v7 = v34;
    _os_log_impl(&dword_26629C000, v34, v35, "LastNowPlayingSignal#applyCandidates mostRecentBundleIdentifier: %s, nowPlayingBundleRecency: %s, nowPlayingBundleScore: %s, nowPlayingBundleRecencyScore: %s, nowPlayingBundleCount: %s", v10, 0x34u);
    v31 = v36;
    swift_arrayDestroy();
    MEMORY[0x266784AD0](v31, -1, -1);
    MEMORY[0x266784AD0](v10, -1, -1);
  }

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_2664C4920()
{
  v0 = sub_2662C3A68(&unk_2877E1690);
  result = swift_arrayDestroy();
  qword_280F91C80 = v0;
  return result;
}

unint64_t sub_2664C496C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073600, &unk_2664E37B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2664E9030;
  *(inited + 32) = 0xD000000000000013;
  *(inited + 40) = 0x80000002664F11F0;
  v7 = v2[10];
  v8 = 0;
  v9 = 0;
  if (*(v7 + 16))
  {

    v10 = sub_2662A3E98(a1, a2);
    if (v11)
    {
      v9 = *(*(v7 + 56) + 8 * v10);
    }
  }

  v12 = MEMORY[0x277D839F8];
  *(inited + 48) = v9;
  *(inited + 72) = v12;
  *(inited + 80) = 0xD000000000000014;
  *(inited + 88) = 0x80000002664F1210;
  v13 = v3[11];
  if (*(v13 + 16))
  {

    v14 = sub_2662A3E98(a1, a2);
    if (v15)
    {
      v8 = *(*(v13 + 56) + 8 * v14);
    }
  }

  *(inited + 96) = v8;
  *(inited + 120) = v12;
  *(inited + 128) = 0xD000000000000015;
  *(inited + 136) = 0x80000002664F1230;
  v16 = v3[12];
  if (*(v16 + 16))
  {

    v17 = sub_2662A3E98(a1, a2);
    v18 = 0;
    if (v19)
    {
      v18 = *(*(v16 + 56) + 8 * v17);
    }
  }

  else
  {
    v18 = 0;
  }

  *(inited + 144) = v18;
  *(inited + 168) = v12;
  *(inited + 176) = 0xD000000000000014;
  *(inited + 184) = 0x80000002664F11B0;
  v20 = v3[3];
  if (v20)
  {
    if (v3[2] == a1 && v20 == a2)
    {
      result = 1;
    }

    else
    {
      result = sub_2664E0D88();
    }
  }

  else
  {
    result = 0;
  }

  v22 = MEMORY[0x277D839B0];
  *(inited + 192) = result & 1;
  *(inited + 216) = v22;
  *(inited + 224) = 0xD00000000000001BLL;
  *(inited + 232) = 0x80000002664F11D0;
  *(inited + 240) = v3[4];
  *(inited + 264) = v12;
  *(inited + 272) = 0xD000000000000017;
  *(inited + 280) = 0x80000002664F1270;
  v23 = v3[5];
  if (*(v23 + 16))
  {

    v24 = sub_2662A3E98(a1, a2);
    if (v25)
    {
      v26 = *(*(v23 + 56) + 8 * v24);
    }

    else
    {
      v26 = 0x4142750000000000;
    }
  }

  else
  {
    v26 = 0x4142750000000000;
  }

  *(inited + 288) = v26;
  *(inited + 312) = v12;
  *(inited + 320) = 0xD000000000000015;
  *(inited + 328) = 0x80000002664F1250;
  v27 = v3[6];
  v28 = 0;
  v29 = 0;
  if (*(v27 + 16))
  {

    v30 = sub_2662A3E98(a1, a2);
    if (v31)
    {
      v29 = *(*(v27 + 56) + 8 * v30);
    }
  }

  *(inited + 336) = v29;
  *(inited + 360) = v12;
  *(inited + 368) = 0xD00000000000001CLL;
  *(inited + 376) = 0x80000002664F12D0;
  v32 = v3[7];
  if (*(v32 + 16))
  {

    v33 = sub_2662A3E98(a1, a2);
    if (v34)
    {
      v28 = *(*(v32 + 56) + 8 * v33);
    }
  }

  *(inited + 384) = v28;
  *(inited + 408) = v12;
  *(inited + 416) = 0xD000000000000015;
  *(inited + 424) = 0x80000002664F1290;
  v35 = v3[8];
  if (*(v35 + 16))
  {

    v36 = sub_2662A3E98(a1, a2);
    if (v37)
    {
      v38 = *(*(v35 + 56) + 8 * v36);
    }

    else
    {
      v38 = 0;
    }
  }

  else
  {
    v38 = 0;
  }

  v39 = 0;
  v40 = 0;
  v41 = MEMORY[0x277D83B88];
  *(inited + 432) = v38;
  *(inited + 456) = v41;
  *(inited + 464) = 0xD000000000000014;
  *(inited + 472) = 0x80000002664F12B0;
  v42 = v3[8];
  *(inited + 504) = v41;
  v43 = 1 << *(v42 + 32);
  v44 = -1;
  if (v43 < 64)
  {
    v44 = ~(-1 << v43);
  }

  v45 = v44 & *(v42 + 64);
  v46 = (v43 + 63) >> 6;
  while (v45)
  {
    v47 = v39;
LABEL_49:
    v48 = __clz(__rbit64(v45));
    v45 &= v45 - 1;
    v49 = *(*(v42 + 56) + ((v47 << 9) | (8 * v48)));
    v50 = __OFADD__(v40, v49);
    v40 += v49;
    if (v50)
    {
      __break(1u);
LABEL_52:
      *(inited + 480) = v40;
      v51 = sub_2663854AC(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2800734F0, &unk_2664E3660);
      swift_arrayDestroy();
      return v51;
    }
  }

  while (1)
  {
    v47 = v39 + 1;
    if (__OFADD__(v39, 1))
    {
      break;
    }

    if (v47 >= v46)
    {
      goto LABEL_52;
    }

    v45 = *(v42 + 64 + 8 * v47);
    ++v39;
    if (v45)
    {
      v39 = v47;
      goto LABEL_49;
    }
  }

  __break(1u);
  return result;
}

void sub_2664C4E1C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_2664C496C(a1, a2);
  if (!*(v4 + 16))
  {
    __break(1u);
    goto LABEL_9;
  }

  v5 = v4;
  v6 = sub_2662A3E98(0xD00000000000001BLL, 0x80000002664F11D0);
  if ((v7 & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  sub_2662A01E8(*(v5 + 56) + 32 * v6, v19);
  sub_266318804(v19, v20);
  sub_266319BF4();
  swift_dynamicCast();
  [v18 doubleValue];
  v9 = v8;

  a3[6] = v9;
  if (!*(v5 + 16))
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v10 = sub_2662A3E98(0xD000000000000013, 0x80000002664F11F0);
  if ((v11 & 1) == 0)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_2662A01E8(*(v5 + 56) + 32 * v10, v19);
  sub_266318804(v19, v20);
  swift_dynamicCast();
  [v18 doubleValue];
  v13 = v12;

  a3[33] = v13;
  if (!*(v5 + 16))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v14 = sub_2662A3E98(0xD000000000000015, 0x80000002664F1250);
  if (v15)
  {
    sub_2662A01E8(*(v5 + 56) + 32 * v14, v19);

    sub_266318804(v19, v20);
    swift_dynamicCast();
    [v18 doubleValue];
    v17 = v16;

    a3[34] = v17;
    return;
  }

LABEL_13:
  __break(1u);
}

void *sub_2664C500C()
{

  return v0;
}

uint64_t sub_2664C5064()
{
  sub_2664C500C();

  return swift_deallocClassInstance();
}

double sub_2664C50D4()
{
  if (qword_280F90268 != -1)
  {
    swift_once();
  }

  return result;
}

void sub_2664C519C(void *a1, char a2, void *a3)
{
  v37 = a1[2];
  if (!v37)
  {
    goto LABEL_21;
  }

  LOBYTE(v5) = a2;
  v7 = a1[4];
  v6 = a1[5];
  v8 = a1[6];
  v9 = *a3;

  v10 = sub_2662A3E98(v7, v6);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    sub_266450E14(v15, v5 & 1);
    v10 = sub_2662A3E98(v7, v6);
    if ((v16 & 1) == (v17 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    v10 = sub_2664E0DD8();
    __break(1u);
  }

  if (v5)
  {
LABEL_7:
    if (v16)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v20 = v10;
  sub_26645410C();
  v10 = v20;
  if (v16)
  {
LABEL_8:
    v18 = swift_allocError();
    swift_willThrow();
    v19 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280073B30, &qword_2664E4E50);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_26;
  }

LABEL_11:
  v21 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  v22 = (v21[6] + 16 * v10);
  *v22 = v7;
  v22[1] = v6;
  *(v21[7] + 8 * v10) = v8;
  v23 = v21[2];
  v14 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v14)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    sub_2664E0B28();
    MEMORY[0x2667833B0](0xD00000000000001BLL, 0x80000002664F4320);
    sub_2664E0C28();
    MEMORY[0x2667833B0](39, 0xE100000000000000);
    sub_2664E0C48();
    __break(1u);
    return;
  }

  v21[2] = v24;
  if (v37 != 1)
  {
    v5 = a1 + 9;
    v8 = 1;
    while (v8 < a1[2])
    {
      v7 = *(v5 - 2);
      v6 = *(v5 - 1);
      v25 = *v5;
      v26 = *a3;

      v27 = sub_2662A3E98(v7, v6);
      v29 = v26[2];
      v30 = (v28 & 1) == 0;
      v14 = __OFADD__(v29, v30);
      v31 = v29 + v30;
      if (v14)
      {
        goto LABEL_23;
      }

      v16 = v28;
      if (v26[3] < v31)
      {
        sub_266450E14(v31, 1);
        v27 = sub_2662A3E98(v7, v6);
        if ((v16 & 1) != (v32 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v16)
      {
        goto LABEL_8;
      }

      v33 = *a3;
      *(*a3 + 8 * (v27 >> 6) + 64) |= 1 << v27;
      v34 = (v33[6] + 16 * v27);
      *v34 = v7;
      v34[1] = v6;
      *(v33[7] + 8 * v27) = v25;
      v35 = v33[2];
      v14 = __OFADD__(v35, 1);
      v36 = v35 + 1;
      if (v14)
      {
        goto LABEL_24;
      }

      ++v8;
      v33[2] = v36;
      v5 += 3;
      if (v37 == v8)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_25;
  }

LABEL_21:
}

void sub_2664C5518(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  v3 = *(a1 + 16);
  if (v3)
  {
    v38 = MEMORY[0x277D84F90];
    sub_2662FD1D0(0, v3, 0);
    v36 = v38;
    v4 = v2 + 56;
    v5 = sub_2664E0A18();
    v6 = 0;
    v30 = v2 + 64;
    v31 = v3;
    v32 = v2 + 56;
    v33 = v2;
    while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(v2 + 32))
    {
      v8 = v5 >> 6;
      if ((*(v4 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
      {
        goto LABEL_27;
      }

      v35 = *(v2 + 36);
      v9 = (*(v2 + 48) + 16 * v5);
      v10 = *v9;
      v11 = v9[1];
      v12 = *(a2 + 64);
      v13 = *(v12 + 16);

      if (v13)
      {

        v14 = sub_2662A3E98(v10, v11);
        if (v15)
        {
          v16 = *(*(v12 + 56) + 8 * v14);
        }

        else
        {
          v16 = 0;
        }

        v17 = v16;
      }

      else
      {
        v17 = 0;
      }

      v18 = v35;
      v19 = v36;
      v39 = v36;
      v21 = *(v36 + 16);
      v20 = *(v36 + 24);
      if (v21 >= v20 >> 1)
      {
        v37 = v17;
        sub_2662FD1D0((v20 > 1), v21 + 1, 1);
        v18 = v35;
        v17 = v37;
        v19 = v39;
      }

      *(v19 + 16) = v21 + 1;
      v22 = (v19 + 24 * v21);
      v22[4] = v10;
      v22[5] = v11;
      v22[6] = v17;
      v2 = v33;
      v7 = 1 << *(v33 + 32);
      if (v5 >= v7)
      {
        goto LABEL_28;
      }

      v4 = v32;
      v23 = *(v32 + 8 * v8);
      if ((v23 & (1 << v5)) == 0)
      {
        goto LABEL_29;
      }

      v36 = v19;
      if (v18 != *(v33 + 36))
      {
        goto LABEL_30;
      }

      v24 = v23 & (-2 << (v5 & 0x3F));
      if (v24)
      {
        v7 = __clz(__rbit64(v24)) | v5 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v25 = v8 << 6;
        v26 = v8 + 1;
        v27 = (v30 + 8 * v8);
        while (v26 < (v7 + 63) >> 6)
        {
          v29 = *v27++;
          v28 = v29;
          v25 += 64;
          ++v26;
          if (v29)
          {
            sub_26634AE1C(v5, v18, 0);
            v7 = __clz(__rbit64(v28)) + v25;
            goto LABEL_4;
          }
        }

        sub_26634AE1C(v5, v18, 0);
      }

LABEL_4:
      ++v6;
      v5 = v7;
      if (v6 == v31)
      {
        return;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
  }
}

uint64_t sub_2664C57AC(uint64_t a1, uint64_t a2)
{
  v30 = a1;
  v33 = sub_2664DE438();
  v3 = *(v33 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v33);
  v32 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v29 - v6;
  v8 = sub_2664DFE38();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F91468 != -1)
  {
    swift_once();
  }

  v31 = sub_26632958C(1014);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v8, qword_280F914F0);
  swift_beginAccess();
  (*(v9 + 16))(v11, v12, v8);
  v13 = sub_2664DFE18();
  v14 = sub_2664E06E8();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v29 = v3;
    v16 = v7;
    v17 = a2;
    v18 = v15;
    *v15 = 0;
    _os_log_impl(&dword_26629C000, v13, v14, "LastNowPlayingSignal#signal", v15, 2u);
    v19 = v18;
    a2 = v17;
    v7 = v16;
    v3 = v29;
    MEMORY[0x266784AD0](v19, -1, -1);
  }

  (*(v9 + 8))(v11, v8);
  if (qword_280F90080 != -1)
  {
    swift_once();
  }

  v20 = swift_allocObject();
  v21 = v30;
  *(v20 + 2) = v31;
  *(v20 + 3) = v21;
  *(v20 + 4) = a2;

  sub_2664DE428();
  v23 = v32;
  v22 = v33;
  (*(v3 + 16))(v32, v7, v33);
  v24 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v25 = (v4 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = swift_allocObject();
  (*(v3 + 32))(v26 + v24, v23, v22);
  v27 = (v26 + v25);
  *v27 = sub_266352BC8;
  v27[1] = v20;

  sub_2662DF794(sub_2664C5ECC, v26);

  return (*(v3 + 8))(v7, v22);
}

uint64_t sub_2664C5BAC(uint64_t a1, uint64_t a2)
{
  v24 = a1;
  v3 = sub_2664DFE08();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v7 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v22 - v8;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800740B8, &qword_2664F0638);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800740C0, &unk_2664F0640);
  v10 = sub_2664E0318();
  v22 = v11;
  v23 = v10;
  if (qword_280F91508 != -1)
  {
    swift_once();
  }

  v12 = qword_280F91D48;
  sub_2664DFDE8();
  (*(v4 + 16))(v7, v9, v3);
  v13 = (*(v4 + 80) + 33) & ~*(v4 + 80);
  v14 = (v5 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = swift_allocObject();
  *(v15 + 16) = "appSelectionSignalsSignal";
  *(v15 + 24) = 25;
  *(v15 + 32) = 2;
  (*(v4 + 32))(v15 + v13, v7, v3);
  v16 = (v15 + v14);
  *v16 = v24;
  v16[1] = a2;

  v17 = sub_2664E0848();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800724D8, &unk_2664E3920);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_2664E36F0;
  *(v18 + 56) = MEMORY[0x277D837D0];
  *(v18 + 64) = sub_2662C4094();
  v19 = v22;
  *(v18 + 32) = v23;
  *(v18 + 40) = v19;
  sub_2664DFDC8(v17, &dword_26629C000, v12, "appSelectionSignalsSignal", 25, 2, v9, "name=%{signpost.telemetry:string1,public}@ enableTelemetry=YES ", 63, 2, v18);

  v20 = swift_allocObject();
  *(v20 + 16) = sub_266352A18;
  *(v20 + 24) = v15;

  sub_2664C57AC(sub_266352AC0, v20);

  return (*(v4 + 8))(v9, v3);
}

uint64_t sub_2664C5ECC(uint64_t a1)
{
  v3 = *(sub_2664DE438() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v6 = *v5;
  v7 = *(v5 + 8);

  return sub_2664C1240(a1, v1 + v4, v6, v7);
}

uint64_t sub_2664C5F90(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800740C8, &unk_2664F0650);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_2664C604C(void *a1, void *a2, __int128 *a3, int a4, uint64_t a5, uint64_t a6)
{
  v149 = a6;
  v148 = a5;
  v147 = a4;
  v146 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072BC0, &qword_2664E6030);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v134 - v9;
  v11 = sub_2664DE268();
  v150 = *(v11 - 8);
  v12 = MEMORY[0x28223BE20](v11);
  v139 = &v134 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v137 = &v134 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v135 = &v134 - v17;
  MEMORY[0x28223BE20](v16);
  v142 = &v134 - v18;
  v19 = sub_2664DFE38();
  v20 = *(v19 - 8);
  v21 = MEMORY[0x28223BE20](v19);
  v141 = &v134 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v140 = &v134 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v138 = &v134 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v136 = &v134 - v28;
  MEMORY[0x28223BE20](v27);
  v30 = &v134 - v29;
  v31 = a3[1];
  v155 = *a3;
  v32 = a3[2];
  v156 = v31;
  *v157 = v32;
  *&v157[15] = *(a3 + 47);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v33 = __swift_project_value_buffer(v19, qword_280F914F0);
  swift_beginAccess();
  v34 = *(v20 + 16);
  v152 = v19;
  v143 = v34;
  (v34)(v30, v33);
  v35 = sub_2664DFE18();
  v36 = sub_2664E06C8();
  v37 = os_log_type_enabled(v35, v36);
  v151 = a2;
  if (v37)
  {
    v38 = swift_slowAlloc();
    *v38 = 0;
    _os_log_impl(&dword_26629C000, v35, v36, "PlaybackHelpers#resolver...", v38, 2u);
    v39 = v38;
    a2 = v151;
    MEMORY[0x266784AD0](v39, -1, -1);
  }

  v41 = v20 + 8;
  v40 = *(v20 + 8);
  v42 = v152;
  v145 = v41;
  v144 = v40;
  v40(v30, v152);
  v43 = sub_2664C813C(a2);
  v44 = a2[4];
  v45 = a2[5];
  sub_2664DE258();
  v46 = v150;
  if ((*(v150 + 48))(v10, 1, v11) == 1)
  {

    sub_2663E3554(v10);
    v47 = v141;
    v143(v141, v33, v42);

    v48 = sub_2664DFE18();
    v49 = sub_2664E06D8();

    v50 = v42;
    if (os_log_type_enabled(v48, v49))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v153[0] = v52;
      *v51 = 136446210;
      *(v51 + 4) = sub_2662A320C(v44, v45, v153);
      _os_log_impl(&dword_26629C000, v48, v49, "PlaybackHelpers#resolver url conversion failed for : %{public}s", v51, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v52);
      MEMORY[0x266784AD0](v52, -1, -1);
      MEMORY[0x266784AD0](v51, -1, -1);
    }

    v144(v47, v50);
    goto LABEL_9;
  }

  v64 = v142;
  (*(v46 + 32))(v142, v10, v11);
  v65 = *(v43 + 2);
  v66 = 0x277D27000uLL;
  v67 = v43;
  v68 = objc_opt_self();
  v69 = sub_2664DE208();
  if (v65)
  {
    v70 = sub_2664E0488();
    v71 = [v68 supportsContainerURL:v69 itemURLs:v70];

    if (v71)
    {
      v72 = v138;
      v143(v138, v33, v152);
      v73 = v150;
      v74 = v137;
      (*(v150 + 16))(v137, v64, v11);

      v75 = sub_2664DFE18();
      v76 = sub_2664E06C8();

      if (os_log_type_enabled(v75, v76))
      {
        v77 = swift_slowAlloc();
        v143 = swift_slowAlloc();
        v153[0] = v143;
        *v77 = 136446466;
        sub_2663C12D0();
        v78 = sub_2664E0D48();
        v79 = v74;
        v81 = v80;
        v82 = *(v73 + 8);
        v82(v79, v11);
        v83 = sub_2662A320C(v78, v81, v153);

        *(v77 + 4) = v83;
        *(v77 + 12) = 2082;
        v84 = MEMORY[0x2667834D0](v67, v11);
        v86 = sub_2662A320C(v84, v85, v153);

        *(v77 + 14) = v86;
        v87 = v76;
        v88 = v82;
        _os_log_impl(&dword_26629C000, v75, v87, "PlaybackHelpers#resolver using x scheme, url: %{public}s, container url: %{public}s", v77, 0x16u);
        v89 = v143;
        swift_arrayDestroy();
        MEMORY[0x266784AD0](v89, -1, -1);
        MEMORY[0x266784AD0](v77, -1, -1);

        v90 = v138;
      }

      else
      {

        v88 = *(v73 + 8);
        v88(v74, v11);
        v90 = v72;
      }

      v144(v90, v152);
      v125 = objc_allocWithZone(MEMORY[0x277D27890]);
      v126 = v142;
      v127 = sub_2664DE208();
      v128 = sub_2664E0488();

      v53 = [v125 initWithContextID:0 containerURL:v127 itemURLs:v128];

      v88(v126, v11);
      v129 = v53;
      goto LABEL_10;
    }

LABEL_19:
    v110 = v140;
    v111 = v152;
    v143(v140, v33, v152);
    v112 = v150;
    v113 = v139;
    (*(v150 + 16))(v139, v64, v11);
    v114 = sub_2664DFE18();
    v115 = sub_2664E06E8();
    if (os_log_type_enabled(v114, v115))
    {
      v116 = v112;
      v117 = swift_slowAlloc();
      v118 = swift_slowAlloc();
      v153[0] = v118;
      *v117 = 136446210;
      sub_2663C12D0();
      v119 = sub_2664E0D48();
      v121 = v120;
      v122 = *(v116 + 8);
      v122(v113, v11);
      v123 = sub_2662A320C(v119, v121, v153);

      *(v117 + 4) = v123;
      _os_log_impl(&dword_26629C000, v114, v115, "PlaybackHelpers#resolver url scheme not supported: %{public}s", v117, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v118);
      MEMORY[0x266784AD0](v118, -1, -1);
      MEMORY[0x266784AD0](v117, -1, -1);

      v144(v140, v152);
      v122(v64, v11);
    }

    else
    {

      v124 = *(v112 + 8);
      v124(v113, v11);
      v144(v110, v111);
      v124(v64, v11);
    }

LABEL_9:
    v53 = 0;
    goto LABEL_10;
  }

  v91 = [v68 supportsURL_];

  if (!v91)
  {
    goto LABEL_19;
  }

  v92 = v136;
  v93 = v64;
  v94 = v152;
  v143(v136, v33, v152);
  v95 = v150;
  v96 = v135;
  (*(v150 + 16))(v135, v93, v11);
  v97 = sub_2664DFE18();
  v98 = sub_2664E06C8();
  if (os_log_type_enabled(v97, v98))
  {
    v99 = v95;
    v100 = swift_slowAlloc();
    v101 = swift_slowAlloc();
    v153[0] = v101;
    *v100 = 136446210;
    sub_2663C12D0();
    v102 = sub_2664E0D48();
    v103 = v96;
    v105 = v104;
    v106 = *(v99 + 8);
    v106(v103, v11);
    v66 = 0x277D27000;
    v107 = sub_2662A320C(v102, v105, v153);

    *(v100 + 4) = v107;
    _os_log_impl(&dword_26629C000, v97, v98, "PlaybackHelpers#resolver using x scheme, url: %{public}s", v100, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v101);
    MEMORY[0x266784AD0](v101, -1, -1);
    MEMORY[0x266784AD0](v100, -1, -1);

    v108 = v136;
    v109 = v152;
  }

  else
  {

    v106 = *(v95 + 8);
    v106(v96, v11);
    v108 = v92;
    v109 = v94;
  }

  v144(v108, v109);
  v130 = objc_allocWithZone(*(v66 + 2192));
  v131 = v142;
  v132 = sub_2664DE208();
  v53 = [v130 initWithContextID:0 url:v132];

  v106(v131, v11);
  v133 = v53;
LABEL_10:
  v54 = v146;
  v55 = v146[3];
  v56 = v146[4];
  v152 = __swift_project_boxed_opaque_existential_1(v146, v55);
  v57 = *(&v155 + 1);
  v58 = v156;
  sub_2662A5550(v54, v154);
  v59 = swift_allocObject();
  *(v59 + 16) = v53;
  *(v59 + 24) = v155;
  v60 = *v157;
  *(v59 + 40) = v156;
  *(v59 + 56) = v60;
  *(v59 + 71) = *&v157[15];
  *(v59 + 80) = v151;
  sub_2662A8618(v154, v59 + 88);
  *(v59 + 128) = v147;
  v61 = v149;
  *(v59 + 136) = v148;
  *(v59 + 144) = v61;
  v62 = v53;
  v63 = *(v56 + 24);

  sub_2662D2A64(&v155, v153);

  v63(v57, v58, sub_2664C848C, v59, v55, v56);
}

uint64_t sub_2664C6E58(uint64_t a1, void *a2, id a3, uint64_t a4, void *a5, void *a6, int a7, uint64_t a8, uint64_t a9)
{
  v10 = a7;
  if (a3)
  {
    v17 = *(a4 + 49);
    if (v17 == 2)
    {
      v18 = 2;
    }

    else
    {
      v18 = v17 == 1;
    }

    [a3 setRepeatType_];
    [a3 setShuffleType_];
    [a3 setShouldOverrideManuallyCuratedQueue_];
    if (a5[11])
    {
      v19 = sub_2664E02A8();
    }

    else
    {
      v19 = 0;
    }

    [a3 setSiriRecommendationID_];

    swift_beginAccess();
    if (a5[3])
    {

      v20 = sub_2664E02A8();
    }

    else
    {
      v20 = 0;
    }

    [a3 setSiriAssetInfo_];

    v21 = sub_2664E01A8();
    [a3 setSiriWHAMetricsInfo_];

    v22 = sub_2664E02A8();
    [a3 setFeatureName_];

    if (a2)
    {
      a2 = sub_2664E02A8();
    }

    v10 = a7;
    [a3 setHomeKitUserIdentifier_];

    [a3 setShouldImmediatelyStartPlayback_];
  }

  v24 = a6[3];
  v23 = a6[4];
  __swift_project_boxed_opaque_existential_1(a6, v24);
  v25 = *(a4 + 8);
  v34 = *(a4 + 16);
  v26 = a5[12];
  v27 = a5[13];
  v33 = v26;
  v28 = swift_allocObject();
  *(v28 + 16) = a3;
  *(v28 + 24) = v10;
  v29 = *(a4 + 16);
  *(v28 + 32) = *a4;
  *(v28 + 48) = v29;
  *(v28 + 64) = *(a4 + 32);
  *(v28 + 79) = *(a4 + 47);
  *(v28 + 88) = a8;
  *(v28 + 96) = a9;
  v30 = *(v23 + 8);
  sub_2662D2A64(a4, v35);

  v31 = a3;
  v30(v25, v34, v33, v27, sub_2664C84C8, v28, v24, v23);
}

void sub_2664C7124(uint64_t a1, void *a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v63 = a4;
  v64 = a6;
  v61 = a5;
  v9 = sub_2664DFE08();
  v59 = *(v9 - 8);
  v60 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  v62 = *(a1 + 8);
  if (a2)
  {
    if (v12 == 1)
    {
      v13 = 0;
    }

    else
    {
      v13 = v12;
    }

    [a2 setUserIdentity_];
  }

  v65 = a2;
  v58 = [objc_allocWithZone(MEMORY[0x277D27820]) init];
  v14 = [objc_allocWithZone(MEMORY[0x277CDD348]) init];
  if (a3 == 2)
  {
    if (qword_280F8F800 != -1)
    {
      swift_once();
    }

    v15 = qword_280F8F808;
    v67 = type metadata accessor for MultiUserConnectionProvider();
    v68 = &protocol witness table for MultiUserConnectionProvider;
    *&v66 = v15;
    v16 = type metadata accessor for AccountProvider();
    v17 = swift_allocObject();

    v57 = sub_266360778(v14, &v66, v17);

    v18 = [objc_allocWithZone(MEMORY[0x277D27840]) init];
    v19 = [objc_allocWithZone(MEMORY[0x277D27838]) init];
    if (qword_280F90B20 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    sub_2662A5550(qword_280F90B28, &v66);
    if (qword_280F905C0 != -1)
    {
      swift_once();
    }

    *&v69 = qword_280F905C8;
    *(&v69 + 5) = *(&qword_280F905C8 + 5);
    v71 = &type metadata for FeatureFlagProvider;
    v72 = &protocol witness table for FeatureFlagProvider;
    v20 = type metadata accessor for SharedContextProvider();
    inited = swift_initStaticObject();
    v86 = &protocol witness table for SharedContextProvider;
    v85 = v20;
    v83 = &protocol witness table for SubscriptionProvider;
    *&v84 = inited;
    v82 = &type metadata for SubscriptionProvider;
    if (qword_280F91468 != -1)
    {
      swift_once();
    }

    v22 = qword_280F91470;
    v79 = type metadata accessor for SiriKitTaskLoggingProvider();
    v80 = &protocol witness table for SiriKitTaskLoggingProvider;
    *&v78 = v22;
    v76 = &type metadata for WatchOSSupportProvider;
    v77 = &off_2877EC0A0;
    type metadata accessor for MediaPlaybackProvider();
    v23 = swift_initStackObject();
    __swift_mutable_project_boxed_opaque_existential_1(v75, v76);
    v23[28] = &type metadata for WatchOSSupportProvider;
    v23[29] = &off_2877EC0A0;
    v23[5] = v16;
    v23[6] = &protocol witness table for AccountProvider;
    v24 = v58;
    v23[2] = v57;
    v23[17] = v24;
    v23[18] = v18;
    v23[19] = v19;
    sub_2662A8618(&v66, (v23 + 20));
    sub_2662A8618(&v69, (v23 + 30));
    sub_2662A8618(&v84, (v23 + 35));
    sub_2662A8618(&v81, (v23 + 7));
    sub_2662A8618(&v78, (v23 + 12));

    __swift_destroy_boxed_opaque_existential_1Tm(v75);
    if (qword_280F91508 != -1)
    {
      swift_once();
    }

    v25 = qword_280F91D48;
    sub_2664DFDE8();
    v26 = sub_2664E0848();
    sub_2664DFDC8(v26, &dword_26629C000, v25, "mediaPlaybackProviderStreamingAvailability", 42, 2, v11, " enableTelemetry=YES ", 21, 2, MEMORY[0x277D84F90]);
    sub_26648D3D0(0, v23, v74);
    sub_2664E0838();
    sub_2664DFDD8();
    swift_setDeallocating();
    sub_2664A5B64();
    swift_deallocClassInstance();
    (*(v59 + 8))(v11, v60);
    LODWORD(v60) = v74[0] == 4;
    v27 = [objc_opt_self() systemMediaApplicationDestination];
    v28 = v63;
    v29 = sub_2664E0488();
    v30 = swift_allocObject();
    v31 = *(v28 + 16);
    *(v30 + 16) = *v28;
    *(v30 + 32) = v31;
    *(v30 + 48) = *(v28 + 32);
    *(v30 + 63) = *(v28 + 47);
    v32 = v62;
    v34 = v64;
    v33 = v65;
    *(v30 + 72) = v61;
    *(v30 + 80) = v34;
    *(v30 + 88) = v12;
    *(v30 + 96) = v32;
    *(v30 + 104) = v33;
    v72 = sub_2664C84DC;
    v73 = v30;
    *&v69 = MEMORY[0x277D85DD0];
    *(&v69 + 1) = 1107296256;
    v70 = sub_2663A0C48;
    v71 = &block_descriptor_50;
    v35 = _Block_copy(&v69);
    sub_2662D2A64(v28, &v66);

    sub_266465164(v12, v32);
    v36 = v33;

    [v27 resolveWithQueue:0 hashedRouteIdentifiers:v29 localPlaybackPermitted:v60 audioRoutingInfo:0 completion:v35];
  }

  else
  {
    if (qword_280F8F800 != -1)
    {
      swift_once();
    }

    v37 = qword_280F8F808;
    v67 = type metadata accessor for MultiUserConnectionProvider();
    v68 = &protocol witness table for MultiUserConnectionProvider;
    *&v66 = v37;
    v38 = type metadata accessor for AccountProvider();
    v39 = swift_allocObject();

    v57 = sub_266360778(v14, &v66, v39);

    v56 = [objc_allocWithZone(MEMORY[0x277D27840]) init];
    v40 = [objc_allocWithZone(MEMORY[0x277D27838]) init];
    if (qword_280F90B20 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    sub_2662A5550(qword_280F90B28, &v66);
    if (qword_280F905C0 != -1)
    {
      swift_once();
    }

    *&v69 = qword_280F905C8;
    *(&v69 + 5) = *(&qword_280F905C8 + 5);
    v71 = &type metadata for FeatureFlagProvider;
    v72 = &protocol witness table for FeatureFlagProvider;
    v41 = type metadata accessor for SharedContextProvider();
    v42 = swift_initStaticObject();
    v86 = &protocol witness table for SharedContextProvider;
    v85 = v41;
    v83 = &protocol witness table for SubscriptionProvider;
    *&v84 = v42;
    v82 = &type metadata for SubscriptionProvider;
    if (qword_280F91468 != -1)
    {
      swift_once();
    }

    v43 = qword_280F91470;
    v79 = type metadata accessor for SiriKitTaskLoggingProvider();
    v80 = &protocol witness table for SiriKitTaskLoggingProvider;
    *&v78 = v43;
    v76 = &type metadata for WatchOSSupportProvider;
    v77 = &off_2877EC0A0;
    type metadata accessor for MediaPlaybackProvider();
    v44 = swift_allocObject();
    __swift_mutable_project_boxed_opaque_existential_1(v75, &type metadata for WatchOSSupportProvider);
    v44[28] = &type metadata for WatchOSSupportProvider;
    v44[29] = &off_2877EC0A0;
    v44[5] = v38;
    v44[6] = &protocol witness table for AccountProvider;
    v45 = v58;
    v44[2] = v57;
    v46 = v56;
    v44[17] = v45;
    v44[18] = v46;
    v44[19] = v40;
    sub_2662A8618(&v66, (v44 + 20));
    sub_2662A8618(&v69, (v44 + 30));
    sub_2662A8618(&v84, (v44 + 35));
    sub_2662A8618(&v81, (v44 + 7));
    sub_2662A8618(&v78, (v44 + 12));

    __swift_destroy_boxed_opaque_existential_1Tm(v75);
    if (qword_280F91508 != -1)
    {
      swift_once();
    }

    v47 = qword_280F91D48;
    sub_2664DFDE8();
    v48 = sub_2664E0848();
    sub_2664DFDC8(v48, &dword_26629C000, v47, "mediaPlaybackProviderStreamingAvailability", 42, 2, v11, " enableTelemetry=YES ", 21, 2, MEMORY[0x277D84F90]);
    v58 = (a3 & 0x1010101);
    sub_26648D3D0(v58, v44, v74);
    sub_2664E0838();
    sub_2664DFDD8();
    swift_setDeallocating();
    sub_2664A5B64();
    swift_deallocClassInstance();
    (*(v59 + 8))(v11, v60);
    LODWORD(v60) = v74[0] == 4;
    v27 = [objc_opt_self() systemMediaApplicationDestination];
    v49 = v63;
    v29 = sub_2664E0488();
    v50 = swift_allocObject();
    v51 = *(v49 + 16);
    *(v50 + 16) = *v49;
    *(v50 + 32) = v51;
    *(v50 + 48) = *(v49 + 32);
    *(v50 + 63) = *(v49 + 47);
    v52 = v62;
    v53 = v64;
    v54 = v65;
    *(v50 + 72) = v61;
    *(v50 + 80) = v53;
    *(v50 + 88) = v12;
    *(v50 + 96) = v52;
    *(v50 + 104) = v54;
    v72 = sub_2664C894C;
    v73 = v50;
    *&v69 = MEMORY[0x277D85DD0];
    *(&v69 + 1) = 1107296256;
    v70 = sub_2663A0C48;
    v71 = &block_descriptor_13;
    v35 = _Block_copy(&v69);
    sub_2662D2A64(v49, &v66);

    sub_266465164(v12, v52);
    v55 = v54;

    [v27 resolveWithQueue:0 hashedRouteIdentifiers:v29 localPlaybackPermitted:v60 audioRoutingInfo:v58 completion:v35];
  }

  _Block_release(v35);
}

void sub_2664C7C6C(void *a1, uint64_t a2, void (*a3)(void **), uint64_t a4, void *a5, void *a6, void *a7)
{
  LOBYTE(v17) = *(a2 + 48);
  v12 = a7;
  v13 = sub_2664C7D24(&v17);
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a1;
  v21 = v13;
  v22 = 0;
  sub_266465164(a5, a6);
  v14 = a1;
  a3(&v17);
  v15 = v19;
  v16 = v20;
  sub_26633C3AC(v17, v18);
}

uint64_t sub_2664C7D24(unsigned __int8 *a1)
{
  v2 = sub_2664DFE38();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v33 = &v32 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v32 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v32 - v12;
  v34 = *a1;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v2, qword_280F914F0);
  swift_beginAccess();
  v15 = *(v3 + 16);
  v15(v13, v14, v2);
  v16 = sub_2664DFE18();
  v17 = sub_2664E06C8();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v32 = v6;
    v19 = v2;
    v20 = v11;
    v21 = v3;
    v22 = v18;
    *v18 = 0;
    _os_log_impl(&dword_26629C000, v16, v17, "PlaybackHelpers#playbackQueueInsertionPosition...", v18, 2u);
    v23 = v22;
    v3 = v21;
    v11 = v20;
    v2 = v19;
    v6 = v32;
    MEMORY[0x266784AD0](v23, -1, -1);
  }

  v24 = *(v3 + 8);
  v24(v13, v2);
  if (v34 == 2)
  {
    v6 = v33;
    v15(v33, v14, v2);
    v25 = sub_2664DFE18();
    v29 = sub_2664E06C8();
    if (os_log_type_enabled(v25, v29))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_26629C000, v25, v29, "PlaybackHelpers#playbackQueueInsertionPosition Tail", v27, 2u);
      v28 = 1;
LABEL_13:
      v11 = v6;
      goto LABEL_14;
    }

    v28 = 1;
LABEL_18:
    v11 = v6;
    goto LABEL_19;
  }

  if (v34 != 1)
  {
    v15(v6, v14, v2);
    v25 = sub_2664DFE18();
    v30 = sub_2664E06C8();
    if (os_log_type_enabled(v25, v30))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_26629C000, v25, v30, "PlaybackHelpers#playbackQueueInsertionPosition defaulting to Head", v27, 2u);
      v28 = 0;
      goto LABEL_13;
    }

    v28 = 0;
    goto LABEL_18;
  }

  v15(v11, v14, v2);
  v25 = sub_2664DFE18();
  v26 = sub_2664E06C8();
  if (!os_log_type_enabled(v25, v26))
  {
    v28 = 0;
    goto LABEL_19;
  }

  v27 = swift_slowAlloc();
  *v27 = 0;
  _os_log_impl(&dword_26629C000, v25, v26, "PlaybackHelpers#playbackQueueInsertionPosition Head", v27, 2u);
  v28 = 0;
LABEL_14:
  MEMORY[0x266784AD0](v27, -1, -1);
LABEL_19:

  v24(v11, v2);
  return v28;
}

char *sub_2664C813C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072BC0, &qword_2664E6030);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v19 - v3;
  v5 = sub_2664DE268();
  v19 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v22 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a1[9];
  if (v7 >> 62)
  {
    goto LABEL_25;
  }

  v26 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v26)
  {
    while (1)
    {
      v8 = 0;
      v24 = v7 & 0xFFFFFFFFFFFFFF8;
      v25 = v7 & 0xC000000000000001;
      v20 = (v19 + 32);
      v21 = (v19 + 48);
      v9 = (v19 + 56);
      v23 = MEMORY[0x277D84F90];
      while (v25)
      {
        v10 = MEMORY[0x266783B70](v8, v7);
        v11 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          goto LABEL_23;
        }

LABEL_10:
        v12 = *(v10 + 32) == a1[4] && *(v10 + 40) == a1[5];
        if (v12 || (sub_2664E0D88() & 1) != 0)
        {

          (*v9)(v4, 1, 1, v5);
        }

        else
        {
          sub_2664DE258();

          if ((*v21)(v4, 1, v5) != 1)
          {
            v13 = *v20;
            (*v20)(v22, v4, v5);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v23 = sub_266384A4C(0, *(v23 + 2) + 1, 1, v23);
            }

            v15 = *(v23 + 2);
            v14 = *(v23 + 3);
            if (v15 >= v14 >> 1)
            {
              v23 = sub_266384A4C((v14 > 1), v15 + 1, 1, v23);
            }

            v16 = v22;
            v17 = v23;
            *(v23 + 2) = v15 + 1;
            v13(&v17[((*(v19 + 80) + 32) & ~*(v19 + 80)) + *(v19 + 72) * v15], v16, v5);
            goto LABEL_6;
          }
        }

        sub_2663E3554(v4);
LABEL_6:
        ++v8;
        if (v11 == v26)
        {
          return v23;
        }
      }

      if (v8 >= *(v24 + 16))
      {
        goto LABEL_24;
      }

      v10 = *(v7 + 8 * v8 + 32);

      v11 = v8 + 1;
      if (!__OFADD__(v8, 1))
      {
        goto LABEL_10;
      }

LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      if (sub_2664E0A68())
      {
        v26 = sub_2664E0A68();
        if (v26)
        {
          continue;
        }
      }

      return MEMORY[0x277D84F90];
    }
  }

  return MEMORY[0x277D84F90];
}

uint64_t objectdestroy_5Tm_3()
{

  v1 = *(v0 + 88);
  if (v1 != 1)
  {
  }

  return MEMORY[0x2821FE8E8](v0, 112, 7);
}

uint64_t sub_2664C8564(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072BC0, &qword_2664E6030);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v31 - v3;
  v5 = sub_2664DE268();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2664DFE38();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v9, qword_280F914F0);
  swift_beginAccess();
  (*(v10 + 16))(v12, v13, v9);
  v14 = sub_2664DFE18();
  v15 = sub_2664E06C8();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v31 = v4;
    v17 = a1;
    v18 = v5;
    v19 = v6;
    v20 = v8;
    v21 = v16;
    *v16 = 0;
    _os_log_impl(&dword_26629C000, v14, v15, "PlaybackHelpers#isXSchemeSupported...", v16, 2u);
    v22 = v21;
    v8 = v20;
    v6 = v19;
    v5 = v18;
    a1 = v17;
    v4 = v31;
    MEMORY[0x266784AD0](v22, -1, -1);
  }

  (*(v10 + 8))(v12, v9);
  v23 = sub_2664C813C(a1);
  sub_2664DE258();
  if ((*(v6 + 48))(v4, 1, v5) != 1)
  {
    (*(v6 + 32))(v8, v4, v5);
    v24 = *(v23 + 2);
    v25 = objc_opt_self();
    v26 = sub_2664DE208();
    if (v24)
    {
      v27 = sub_2664E0488();

      v28 = [v25 supportsContainerURL:v26 itemURLs:v27];

      (*(v6 + 8))(v8, v5);
      if ((v28 & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      v30 = [v25 supportsURL_];

      (*(v6 + 8))(v8, v5);

      if ((v30 & 1) == 0)
      {
        return 0;
      }
    }

    return 1;
  }

  sub_2663E3554(v4);
  return 0;
}

uint64_t sub_2664C8950()
{
  sub_2664E0B28();
  v1 = sub_2663430A0();
  MEMORY[0x2667833B0](v1);

  MEMORY[0x2667833B0](0x6D65744962757320, 0xEA00000000003A73);
  v2 = *(v0 + 72);
  v3 = type metadata accessor for PlaybackItem();
  v4 = MEMORY[0x2667834D0](v2, v3);
  MEMORY[0x2667833B0](v4);

  MEMORY[0x2667833B0](0xD000000000000012, 0x80000002664FBFA0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800734A0, &qword_2664E3B40);
  v5 = sub_2664E0318();
  MEMORY[0x2667833B0](v5);

  MEMORY[0x2667833B0](0xD000000000000026, 0x80000002664FBFC0);

  v6 = sub_2664E0318();
  MEMORY[0x2667833B0](v6);

  return 0;
}

uint64_t PlaybackItemContainer.__allocating_init(_:assetInfo:subItems:recommendationID:sharedUserIdFromPlayableMusicAccount:)(void *a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v17 = swift_allocObject();
  v17[9] = a5;
  v17[10] = a6;
  v17[11] = a7;
  v17[12] = a8;
  v17[13] = a9;
  return PlaybackItem.init(_:assetInfo:)(a1, a2, a3, a4);
}

uint64_t PlaybackItemContainer.init(_:assetInfo:subItems:recommendationID:sharedUserIdFromPlayableMusicAccount:)(void *a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9[9] = a5;
  v9[10] = a6;
  v9[11] = a7;
  v9[12] = a8;
  v9[13] = a9;
  return PlaybackItem.init(_:assetInfo:)(a1, a2, a3, a4);
}

uint64_t PlaybackItemContainer.recommendationID.getter()
{
  v1 = *(v0 + 80);

  return v1;
}

uint64_t PlaybackItemContainer.sharedUserIdFromPlayableMusicAccount.getter()
{
  v1 = *(v0 + 96);

  return v1;
}

uint64_t sub_2664C8C04()
{
}

void *PlaybackItemContainer.deinit()
{

  return v0;
}

uint64_t PlaybackItemContainer.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void sub_2664C8D6C(uint64_t a1)
{
  v2 = a1 + 56;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 56);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  while (v5)
  {
    v8 = v7;
LABEL_9:
    v9 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v10 = (*(a1 + 48) + 24 * (v9 | (v8 << 6)));
    v11 = *v10;
    v12 = v10[1];
    v13 = *(v10 + 2);
    swift_bridgeObjectRetain_n();
    sub_2664D0B88(v14, v11, v12, v13);
  }

  while (1)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v8 >= v6)
    {

      return;
    }

    v5 = *(v2 + 8 * v8);
    ++v7;
    if (v5)
    {
      v7 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
}

void sub_2664C8E9C(uint64_t a1)
{
  type metadata accessor for NowPlayingUsageProvider();
  v1 = swift_allocObject();
  v2 = MEMORY[0x277D84FA0];
  v1[2] = 0;
  v1[3] = v2;
  v1[4] = MEMORY[0x277D84F98];
  v3 = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
  v4 = sub_2664E02A8();
  [v3 setName_];

  v1[5] = v3;
  qword_280F91C50 = v1;
}

uint64_t sub_2664C8F4C(uint64_t a1, uint64_t a2)
{
  v79 = a1;
  v80 = a2;
  v71 = *v2;
  v72 = sub_2664DE438();
  v70 = *(v72 - 8);
  v3 = MEMORY[0x28223BE20](v72);
  v68 = v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v69 = v57 - v5;
  v64 = sub_2664E0018();
  v63 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v7 = (v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_2664E00E8();
  v67 = *(v8 - 8);
  v9 = MEMORY[0x28223BE20](v8);
  v61 = v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v66 = v57 - v11;
  v12 = sub_2664E0038();
  v76 = *(v12 - 8);
  v77 = v12;
  MEMORY[0x28223BE20](v12);
  v73 = v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2664E00B8();
  v74 = *(v14 - 8);
  v75 = v14;
  MEMORY[0x28223BE20](v14);
  v16 = v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_2664DFE38();
  v18 = *(v17 - 8);
  v19 = MEMORY[0x28223BE20](v17);
  v65 = v57 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v22 = v57 - v21;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v23 = __swift_project_value_buffer(v17, qword_280F914F0);
  swift_beginAccess();
  v24 = *(v18 + 16);
  v62 = v23;
  v60 = v24;
  v24(v22, v23, v17);
  v25 = sub_2664DFE18();
  v26 = sub_2664E06C8();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = v18;
    v28 = v16;
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&dword_26629C000, v25, v26, "NowPlayingUsageProvider#affinity...", v29, 2u);
    v30 = v29;
    v16 = v28;
    v18 = v27;
    MEMORY[0x266784AD0](v30, -1, -1);
  }

  v33 = *(v18 + 8);
  v31 = v18 + 8;
  v32 = v33;
  v33(v22, v17);
  v34 = v78;
  if (*(v78 + 16) <= 0.0)
  {
    v58 = v32;
    v59 = v31;
    if (qword_280F90D30 != -1)
    {
      swift_once();
    }

    v57[1] = qword_280F90D38;
    v39 = v61;
    sub_2664E00C8();
    *v7 = 5;
    v40 = v63;
    v41 = v64;
    (*(v63 + 104))(v7, *MEMORY[0x277D85188], v64);
    v42 = v66;
    MEMORY[0x266783140](v39, v7);
    (*(v40 + 8))(v7, v41);
    v67 = *(v67 + 8);
    v57[0] = v8;
    (v67)(v39, v8);
    v86 = sub_2664D44D0;
    v87 = v34;
    aBlock = MEMORY[0x277D85DD0];
    v83 = 1107296256;
    v84 = sub_2662A3F90;
    v85 = &block_descriptor_51;
    v43 = _Block_copy(&aBlock);

    sub_2664E0068();
    v81 = MEMORY[0x277D84F90];
    sub_2664D44D8(&qword_280F8F6A0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280074210, &qword_2664E3640);
    sub_2662A5AC8();
    v44 = v16;
    v45 = v73;
    v46 = v77;
    sub_2664E0A08();
    MEMORY[0x2667837B0](v42, v44, v45, v43);
    _Block_release(v43);
    (*(v76 + 8))(v45, v46);
    (*(v74 + 8))(v44, v75);
    (v67)(v42, v57[0]);

    v47 = v65;
    v60(v65, v62, v17);
    v48 = sub_2664DFE18();
    v49 = sub_2664E06C8();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      *v50 = 0;
      _os_log_impl(&dword_26629C000, v48, v49, "NowPlayingUsageProvider#affinity no data, loading last 150...", v50, 2u);
      MEMORY[0x266784AD0](v50, -1, -1);
    }

    v58(v47, v17);
    v51 = v68;
    sub_2664DE428();
    v52 = v69;
    sub_2664DE398();
    v53 = *(v70 + 8);
    v54 = v72;
    v53(v51, v72);
    v55 = swift_allocObject();
    v55[2] = v79;
    v56 = v71;
    v55[3] = v80;
    v55[4] = v56;

    sub_2664CA9EC(v52, 150, sub_2664D4520, v55);

    return (v53)(v52, v54);
  }

  else
  {
    if (qword_280F90D30 != -1)
    {
      swift_once();
    }

    v86 = sub_2664CADF4;
    v87 = 0;
    aBlock = MEMORY[0x277D85DD0];
    v83 = 1107296256;
    v84 = sub_2662A3F90;
    v85 = &block_descriptor_19_0;
    v35 = _Block_copy(&aBlock);
    sub_2664E0068();
    v81 = MEMORY[0x277D84F90];
    sub_2664D44D8(&qword_280F8F6A0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280074210, &qword_2664E3640);
    sub_2662A5AC8();
    v36 = v73;
    v37 = v77;
    sub_2664E0A08();
    MEMORY[0x266783800](0, v16, v36, v35);
    _Block_release(v35);
    (*(v76 + 8))(v36, v37);
    (*(v74 + 8))(v16, v75);
    return sub_2664CAF9C(v79, v80);
  }
}

uint64_t sub_2664C99CC()
{
  v0 = sub_2664DFE08();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2664DFE38();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v4, qword_280F914F0);
  swift_beginAccess();
  (*(v5 + 16))(v7, v8, v4);
  v9 = sub_2664DFE18();
  v10 = sub_2664E06E8();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_26629C000, v9, v10, "NowPlayingUsageProvider#affinity (lazy load) no data, loading async...", v11, 2u);
    MEMORY[0x266784AD0](v11, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  v12 = sub_2664E0858();
  if (qword_280F91508 != -1)
  {
    swift_once();
  }

  v13 = qword_280F91D48;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800724D8, &unk_2664E3920);
  v14 = swift_allocObject();
  v15 = MEMORY[0x277D83B88];
  *(v14 + 16) = xmmword_2664E36F0;
  v16 = MEMORY[0x277D83C10];
  *(v14 + 56) = v15;
  *(v14 + 64) = v16;
  *(v14 + 32) = 0;
  sub_2664DFDF8();
  sub_2664DFDC8(v12, &dword_26629C000, v13, "nowPlayingUsageProviderLoad", 27, 2, v3, "status=%{signpost.telemetry:number1,public}d enableTelemetry=YES ", 65, 2, v14);

  (*(v1 + 8))(v3, v0);
  return sub_2664CAF9C(sub_2664C9D18, 0);
}

uint64_t sub_2664C9D18(uint64_t a1)
{
  v81 = a1;
  v78 = sub_2664DE438();
  v98 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v77 = &v73 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = sub_2664DF398();
  v80 = *(v100 - 8);
  v2 = MEMORY[0x28223BE20](v100);
  v99 = &v73 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v73 - v5;
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v73 - v8;
  MEMORY[0x28223BE20](v7);
  v79 = &v73 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800740C8, &unk_2664F0650);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = (&v73 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v12);
  v97 = (&v73 - v15);
  v16 = sub_2664DFE38();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = (&v73 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v18);
  v22 = (&v73 - v21);
  if (qword_280F914E8 == -1)
  {
    goto LABEL_2;
  }

  while (1)
  {
    swift_once();
LABEL_2:
    v88 = v20;
    v23 = __swift_project_value_buffer(v16, qword_280F914F0);
    swift_beginAccess();
    v24 = v17[2];
    v86 = v17 + 2;
    v87 = v23;
    v85 = v24;
    (v24)(v22, v23, v16);
    v20 = sub_2664DFE18();
    v25 = sub_2664E06E8();
    v26 = os_log_type_enabled(v20, v25);
    v93 = v6;
    if (v26)
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_26629C000, v20, v25, "NowPlayingUsageProvider#affinity load complete.", v27, 2u);
      MEMORY[0x266784AD0](v27, -1, -1);
    }

    v28 = v17[1];
    v89 = ++v17;
    v84 = v28;
    (v28)(v22, v16);
    v29 = *(v81 + 64);
    v74 = v81 + 64;
    v30 = 1 << *(v81 + 32);
    v31 = -1;
    if (v30 < 64)
    {
      v31 = ~(-1 << v30);
    }

    v32 = v31 & v29;
    v73 = (v30 + 63) >> 6;
    v94 = (v80 + 32);
    v95 = (v80 + 16);
    v83 = (v80 + 8);
    v76 = (v98 + 8);

    v33 = 0;
    *&v34 = 136315650;
    v75 = v34;
    v96 = v9;
    v92 = v16;
    v16 = v99;
    v90 = v14;
    v22 = v97;
    if (v32)
    {
      break;
    }

LABEL_10:
    if (v73 <= v33 + 1)
    {
      v36 = v33 + 1;
    }

    else
    {
      v36 = v73;
    }

    v37 = v36 - 1;
    while (1)
    {
      v6 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
        break;
      }

      if (v6 >= v73)
      {
        v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800729E0, &qword_2664E5308);
        (*(*(v71 - 8) + 56))(v14, 1, 1, v71);
        v32 = 0;
        goto LABEL_18;
      }

      v32 = *(v74 + 8 * v6);
      ++v33;
      if (v32)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  while (1)
  {
    v6 = v33;
LABEL_17:
    v38 = __clz(__rbit64(v32));
    v32 &= v32 - 1;
    v39 = v38 | (v6 << 6);
    v40 = (*(v81 + 48) + 16 * v39);
    v42 = *v40;
    v41 = v40[1];
    v43 = v80;
    v44 = v79;
    v45 = v100;
    (*(v80 + 16))(v79, *(v81 + 56) + *(v80 + 72) * v39, v100);
    v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800729E0, &qword_2664E5308);
    v47 = *(v46 + 48);
    *v14 = v42;
    v14[1] = v41;
    (*(v43 + 32))(v14 + v47, v44, v45);
    (*(*(v46 - 8) + 56))(v14, 0, 1, v46);

    v37 = v6;
    v16 = v99;
    v9 = v96;
    v22 = v97;
LABEL_18:
    sub_2664C5F90(v14, v22);
    v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800729E0, &qword_2664E5308);
    v49 = (*(*(v48 - 8) + 48))(v22, 1, v48);
    v50 = v93;
    if (v49 == 1)
    {
    }

    v98 = v37;
    v51 = v16;
    v52 = v22[1];
    v91 = *v22;
    v53 = v100;
    (*v94)(v9, v22 + *(v48 + 48), v100);
    v54 = v88;
    v17 = v92;
    (v85)(v88, v87, v92);
    v55 = *v95;
    (*v95)(v50, v9, v53);
    v55(v51, v9, v53);

    v20 = sub_2664DFE18();
    v56 = sub_2664E06C8();

    if (os_log_type_enabled(v20, v56))
    {
      v57 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      v101 = v82;
      *v57 = v75;
      v58 = sub_2662A320C(v91, v52, &v101);

      *(v57 + 4) = v58;
      *(v57 + 12) = 2080;
      v59 = v77;
      sub_2664DF378();
      sub_2664D44D8(&qword_280F914D8, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
      v60 = v78;
      v61 = sub_2664E0D48();
      v63 = v62;
      (*v76)(v59, v60);
      v17 = v83;
      v64 = *v83;
      (*v83)(v93, v100);
      v65 = sub_2662A320C(v61, v63, &v101);

      *(v57 + 14) = v65;
      *(v57 + 22) = 2080;
      sub_2664DF358();
      v66 = MEMORY[0x2667834D0]();
      v68 = v67;

      (v64)(v99, v100);
      v69 = sub_2662A320C(v66, v68, &v101);

      *(v57 + 24) = v69;
      _os_log_impl(&dword_26629C000, v20, v56, "NowPlayingUsageProvider#affinity (lazy load) For bundle %s - recency: %s frequencies: %s", v57, 0x20u);
      v70 = v82;
      swift_arrayDestroy();
      v16 = v99;
      MEMORY[0x266784AD0](v70, -1, -1);
      MEMORY[0x266784AD0](v57, -1, -1);

      (v84)(v54, v92);
      v9 = v96;
      (v64)(v96, v100);
      v33 = v98;
      v14 = v90;
      v22 = v97;
      if (!v32)
      {
        goto LABEL_10;
      }
    }

    else
    {

      v20 = *v83;
      v35 = v100;
      (*v83)(v51, v100);
      (v20)(v50, v35);
      (v84)(v54, v17);
      v9 = v96;
      (v20)(v96, v35);
      v33 = v98;
      v14 = v90;
      v16 = v51;
      v22 = v97;
      if (!v32)
      {
        goto LABEL_10;
      }
    }
  }
}

uint64_t sub_2664CA720(uint64_t a1, void (*a2)(uint64_t))
{
  v4 = sub_2664DE438();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    sub_2664DE428();
    sub_2664CA8AC(MEMORY[0x277D84FA0], MEMORY[0x277D84F98], a1);
    v9 = v8;
    v11 = v10;
    (*(v5 + 8))(v7, v4);
    sub_2664D39A8(v9, v11);
    v13 = v12;

    a2(v13);
  }

  else
  {
    sub_266385ABC(MEMORY[0x277D84F90]);
    (a2)();
  }
}

void sub_2664CA8AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2664DE3E8();
  v7 = floor(v6 / 86400.0);
  if ((*&v7 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (v7 <= -9.22337204e18)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v7 >= 9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v8 = v7;
  v10[2] = a3;

  sub_2664C8D6C(a1);
  v10[0] = a2;

  sub_2664D2ADC(v9, v8, v10);

  if (!__OFSUB__(v8, 28))
  {
    sub_2664CF800(v10[0], v8 - 28);

    return;
  }

LABEL_9:
  __break(1u);
}

uint64_t sub_2664CA9EC(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v40 = a4;
  v37 = a2;
  v38 = a3;
  v36 = a1;
  v4 = sub_2664DE438();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v42 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v7);
  v41 = &v34 - v9;
  MEMORY[0x28223BE20](v8);
  v11 = &v34 - v10;
  v12 = sub_2664DFE38();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v12, qword_280F914F0);
  swift_beginAccess();
  (*(v13 + 16))(v15, v16, v12);
  v17 = sub_2664DFE18();
  v18 = sub_2664E06C8();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_26629C000, v17, v18, "NowPlayingUsageProvider#events...", v19, 2u);
    MEMORY[0x266784AD0](v19, -1, -1);
  }

  (*(v13 + 8))(v15, v12);
  sub_2664DE428();
  if (qword_280F90270 != -1)
  {
    swift_once();
  }

  v35 = sub_2662C1744(0, &qword_280F8F5E0, 0x277CD3EC0);
  v20 = *(v5 + 16);
  v20(v41, v36, v4);
  v20(v42, v11, v4);
  v21 = *(v5 + 80);
  v22 = (v21 + 16) & ~v21;
  v23 = v6 + 7;
  v24 = (v6 + 7 + v22) & 0xFFFFFFFFFFFFFFF8;
  v25 = (v24 + 15) & 0xFFFFFFFFFFFFFFF8;
  v26 = (v21 + 16 + v25) & ~v21;
  v27 = (v23 + v26) & 0xFFFFFFFFFFFFFFF8;
  v28 = swift_allocObject();
  v36 = v11;
  v29 = *(v5 + 32);
  v29(v28 + v22, v41, v4);
  v30 = v38;
  *(v28 + v24) = v37;
  v31 = (v28 + v25);
  v32 = v40;
  *v31 = v30;
  v31[1] = v32;
  v29(v28 + v26, v42, v4);
  *(v28 + v27) = v39;

  sub_2662BFF60(v35, 0, 0, 1, sub_2664D440C, v28);

  return (*(v5 + 8))(v36, v4);
}

uint64_t sub_2664CADF4()
{
  v0 = sub_2664DFE08();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2664E0858();
  if (qword_280F91508 != -1)
  {
    swift_once();
  }

  v5 = qword_280F91D48;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800724D8, &unk_2664E3920);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_2664E36F0;
  v7 = MEMORY[0x277D83C10];
  *(v6 + 56) = MEMORY[0x277D83B88];
  *(v6 + 64) = v7;
  *(v6 + 32) = 1;
  sub_2664DFDF8();
  sub_2664DFDC8(v4, &dword_26629C000, v5, "nowPlayingUsageProviderLoad", 27, 2, v3, "status=%{signpost.telemetry:number1,public}d enableTelemetry=YES ", 65, 2, v6);

  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_2664CAF9C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v40 = a1;
  v41 = a2;
  v42 = *v2;
  v43 = sub_2664DE438();
  v38 = *(v43 - 8);
  v4 = *(v38 + 64);
  v5 = MEMORY[0x28223BE20](v43);
  v37 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v35 - v7;
  v9 = MEMORY[0x28223BE20](v6);
  v39 = &v35 - v10;
  MEMORY[0x28223BE20](v9);
  v12 = &v35 - v11;
  v13 = sub_2664DFE38();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = v3;
  [v3[5] lock];
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v18 = __swift_project_value_buffer(v13, qword_280F914F0);
  swift_beginAccess();
  (*(v14 + 16))(v16, v18, v13);
  v19 = sub_2664DFE18();
  v20 = sub_2664E06C8();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_26629C000, v19, v20, "NowPlayingUsageProvider#update [lock aquired]", v21, 2u);
    MEMORY[0x266784AD0](v21, -1, -1);
  }

  (*(v14 + 8))(v16, v13);
  v22 = v12;
  sub_2664DE428();
  v35 = v12;
  sub_2664DE398();
  sub_2664DE3E8();
  v23 = v38;
  v36 = *(v38 + 8);
  v24 = v43;
  v36(v8, v43);
  v25 = v39;
  sub_2664DE3D8();
  v26 = v37;
  (*(v23 + 16))(v37, v22, v24);
  v27 = (*(v23 + 80) + 24) & ~*(v23 + 80);
  v28 = (v4 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
  v29 = (v28 + 23) & 0xFFFFFFFFFFFFFFF8;
  v30 = swift_allocObject();
  *(v30 + 16) = v17;
  (*(v23 + 32))(v30 + v27, v26, v24);
  v31 = (v30 + v28);
  v32 = v41;
  *v31 = v40;
  v31[1] = v32;
  *(v30 + v29) = v42;

  sub_2664CA9EC(v25, 0x7FFFFFFFFFFFFFFFLL, sub_2664D435C, v30);

  v33 = v36;
  v36(v25, v24);
  return v33(v35, v24);
}

uint64_t sub_2664CB3EC(uint64_t a1, void *a2, uint64_t a3, void (*a4)(uint64_t), uint64_t a5)
{
  v41 = a4;
  v42 = a5;
  v8 = sub_2664DFE38();
  v39 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a2[3];
  v12 = a2[4];
  if (a1)
  {
    v13 = a1;
  }

  else
  {
    v13 = MEMORY[0x277D84FA0];
  }

  v40 = a3;
  sub_2664CA8AC(v11, v12, v13);
  v15 = v14;
  v17 = v16;
  v19 = v18;

  if (a1)
  {
    a2[2] = v15;
    a2[3] = v17;
    a2[4] = v19;

    sub_2664D39A8(v17, v19);
    v21 = v20;

    v41(v21);

    v22 = v40;

    return sub_2664CB728(a2, v22);
  }

  else
  {
    v24 = v10;
    v25 = v39;
    v38 = v8;
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v26 = v38;
    v27 = __swift_project_value_buffer(v38, qword_280F914F0);
    swift_beginAccess();
    v28 = v27;
    v29 = v26;
    (*(v25 + 16))(v10, v28, v26);
    v30 = sub_2664DFE18();
    v31 = sub_2664E06D8();
    v32 = os_log_type_enabled(v30, v31);
    v33 = v41;
    if (v32)
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_26629C000, v30, v31, "NowPlayingUsageProvider#update skipping persistence as events invalid", v34, 2u);
      v35 = v34;
      v29 = v38;
      MEMORY[0x266784AD0](v35, -1, -1);
    }

    (*(v25 + 8))(v24, v29);
    sub_2664D39A8(v17, v19);
    v37 = v36;

    v33(v37);

    return sub_2664CB728(a2, v40);
  }
}

uint64_t sub_2664CB728(uint64_t a1, uint64_t a2)
{
  v4 = sub_2664DE438();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v24 - v9;
  v11 = sub_2664DFE38();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  [*(a1 + 40) unlock];
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v11, qword_280F914F0);
  swift_beginAccess();
  (*(v12 + 16))(v14, v15, v11);
  (*(v5 + 16))(v10, a2, v4);
  v16 = sub_2664DFE18();
  v17 = sub_2664E06C8();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = v8;
    v19 = swift_slowAlloc();
    *v19 = 134217984;
    sub_2664DE428();
    sub_2664DE388();
    v21 = v20;
    v24 = v14;
    v22 = *(v5 + 8);
    v22(v18, v4);
    v22(v10, v4);
    v14 = v24;
    *(v19 + 4) = v21;
    _os_log_impl(&dword_26629C000, v16, v17, "NowPlayingUsageProvider#update complete in %fs", v19, 0xCu);
    MEMORY[0x266784AD0](v19, -1, -1);
  }

  else
  {

    (*(v5 + 8))(v10, v4);
  }

  return (*(v12 + 8))(v14, v11);
}

uint64_t sub_2664CBA40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_2664DFE38();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280073A50, &unk_2664ED5F0);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v50 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v47 - v16;
  v18 = sub_2664DF398();
  v53 = *(v18 - 8);
  v54 = v18;
  MEMORY[0x28223BE20](v18);
  v56 = &v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v20 = a1;
  v21 = *(a5 + 16);
  v22 = *(v21 + 16);
  v55 = v20;
  v51 = a5;
  v52 = v10;
  if (v22 && (v23 = sub_2662A3E98(v20, a2), (v24 & 1) != 0))
  {
    v25 = a2;
    v26 = v53;
    v27 = v54;
    (*(v53 + 16))(v17, *(v21 + 56) + *(v53 + 72) * v23, v54);
    v28 = 0;
  }

  else
  {
    v25 = a2;
    v28 = 1;
    v26 = v53;
    v27 = v54;
  }

  v48 = *(v26 + 56);
  v49 = v26 + 56;
  v48(v17, v28, 1, v27);
  swift_endAccess();
  v29 = *(v26 + 48);
  if (v29(v17, 1, v27) == 1)
  {
    sub_2664DF388();
    result = v29(v17, 1, v27);
    if (result != 1)
    {
      result = sub_2662A9238(v17, &unk_280073A50, &unk_2664ED5F0);
    }
  }

  else
  {
    result = (*(v26 + 32))(v56, v17, v27);
  }

  if (a4 >= 1)
  {
    v47 = v25;
    v31 = (v52 + 16);
    v32 = (v52 + 8);
    v33 = 1;
    v34 = v55;
    while (1)
    {
      sub_2664DE3C8();
      if (v35 <= 0.0)
      {
        result = sub_2664DF368();
        if (a4 == v33)
        {
          goto LABEL_22;
        }
      }

      else
      {
        if (qword_280F914E8 != -1)
        {
          swift_once();
        }

        v36 = __swift_project_value_buffer(v9, qword_280F914F0);
        swift_beginAccess();
        (*v31)(v12, v36, v9);
        v37 = sub_2664DFE18();
        v38 = sub_2664E06D8();
        if (os_log_type_enabled(v37, v38))
        {
          v39 = swift_slowAlloc();
          *v39 = 0;
          _os_log_impl(&dword_26629C000, v37, v38, "HistoryStats cannot add instance from the future", v39, 2u);
          v40 = v39;
          v34 = v55;
          MEMORY[0x266784AD0](v40, -1, -1);
        }

        result = (*v32)(v12, v9);
        if (a4 == v33)
        {
LABEL_22:
          v43 = v53;
          v42 = v54;
          v44 = v50;
          v45 = v56;
          (*(v53 + 16))(v50, v56, v54);
          v48(v44, 0, 1, v42);
          swift_beginAccess();
          v46 = v47;

          sub_266449250(v44, v34, v46);
          swift_endAccess();
          return (*(v43 + 8))(v45, v42);
        }
      }

      if (__OFADD__(v33++, 1))
      {
        __break(1u);
        break;
      }
    }
  }

  __break(1u);
  return result;
}

void sub_2664CBF34(uint64_t a1, void (*a2)(char *, uint64_t), uint64_t a3, void (*a4)(__n128), uint64_t a5, void (*a6)(char *, uint64_t))
{
  v204 = a6;
  v217 = a5;
  v218 = a4;
  v221 = a3;
  v224 = a2;
  v237 = *MEMORY[0x277D85DE8];
  v8 = sub_2664DFE08();
  v206 = *(v8 - 8);
  v207 = v8;
  MEMORY[0x28223BE20](v8);
  v205 = &v201 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v223 = sub_2664DE438();
  v220 = *(v223 - 8);
  v10 = MEMORY[0x28223BE20](v223);
  v201 = &v201 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  inited = &v201 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v210 = &v201 - v16;
  MEMORY[0x28223BE20](v15);
  v214 = &v201 - v17;
  v222 = sub_2664DFE38();
  v225 = *(v222 - 8);
  v18 = MEMORY[0x28223BE20](v222);
  v209 = &v201 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v212 = &v201 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v208 = &v201 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v211 = &v201 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v213 = &v201 - v27;
  MEMORY[0x28223BE20](v26);
  v219 = &v201 - v28;
  v229 = sub_2664DE098();
  v226 = *(v229 - 1);
  MEMORY[0x28223BE20](v229);
  v228 = &v201 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = *(a1 + 16);
  *&v230 = inited;
  if (v30)
  {
    v31 = (a1 + 88);
    v32 = MEMORY[0x277D84F90];
    v227 = xmmword_2664E36F0;
    while (1)
    {
      v33 = *v31;
      v34 = *(v31 - 7);
      v35 = *(v31 - 6);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072478, &unk_2664EA600);
      inited = swift_initStackObject();
      *(inited + 1) = v227;
      v36 = (inited + 16);
      *(inited + 4) = v34;
      *(inited + 5) = v35;
      v37 = *(v33 + 16);

      if (v37)
      {
        v45 = sub_2663846F4(1, v37 + 1, 1, inited);
        if (!*(v33 + 16))
        {

          __break(1u);
          return;
        }

        inited = v45;
        v36 = (v45 + 16);
        if ((*(v45 + 3) >> 1) - *(v45 + 2) < v37)
        {
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
        }

        swift_arrayInitWithCopy();

        v46 = *(inited + 2);
        v6 = v46 + v37;
        if (__OFADD__(v46, v37))
        {
          goto LABEL_110;
        }

        *v36 = v6;
      }

      else
      {

        v6 = *v36;
      }

      v38 = *(v32 + 2);
      v39 = v38 + v6;
      if (__OFADD__(v38, v6))
      {
LABEL_102:
        __break(1u);
LABEL_103:
        __break(1u);
LABEL_104:
        __break(1u);
LABEL_105:
        __break(1u);
LABEL_106:
        swift_once();
LABEL_52:
        v76 = v222;
        v77 = __swift_project_value_buffer(v222, qword_280F914F0);
        swift_beginAccess();
        v78 = v225;
        v228 = *(v225 + 16);
        (v228)(v219, v77, v76);
        v79 = *(v6 + 16);
        v80 = v214;
        v81 = v6;
        v82 = v223;
        v202 = v79;
        v79(v214, v224, v223);
        v83 = v226;

        v84 = sub_2664DFE18();
        v85 = sub_2664E06C8();

        if (os_log_type_enabled(v84, v85))
        {
          v86 = swift_slowAlloc();
          v87 = swift_slowAlloc();
          v233[0] = v87;
          *v86 = 136315650;
          v88 = MEMORY[0x2667834D0](v83, MEMORY[0x277D837D0]);
          v89 = v85;
          v91 = sub_2662A320C(v88, v90, v233);

          *(v86 + 4) = v91;
          *(v86 + 12) = 2080;
          sub_2664D44D8(&qword_280F914D8, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
          v92 = sub_2664E0D48();
          v94 = v93;
          v214 = *(v81 + 8);
          (v214)(v80, v223);
          v95 = sub_2662A320C(v92, v94, v233);

          *(v86 + 14) = v95;
          *(v86 + 22) = 2048;
          *(v86 + 24) = v221;
          _os_log_impl(&dword_26629C000, v84, v89, "NowPlayingUsageProvider#events querying bundles %s since %s limiting to %ld", v86, 0x20u);
          swift_arrayDestroy();
          v96 = v87;
          inited = v230;
          MEMORY[0x266784AD0](v96, -1, -1);
          v97 = v86;
          v78 = v225;
          MEMORY[0x266784AD0](v97, -1, -1);
        }

        else
        {

          v214 = *(v81 + 8);
          (v214)(v80, v82);
        }

        v224 = *(v78 + 8);
        v224(v219, v76);
        v101 = v76;
        goto LABEL_67;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v39 <= *(v32 + 3) >> 1)
      {
        if (!*v36)
        {
          goto LABEL_3;
        }
      }

      else
      {
        if (v38 <= v39)
        {
          v41 = v38 + v6;
        }

        else
        {
          v41 = v38;
        }

        v32 = sub_2663846F4(isUniquelyReferenced_nonNull_native, v41, 1, v32);
        if (!*v36)
        {
LABEL_3:

          inited = v230;
          if (v6)
          {
            goto LABEL_103;
          }

          goto LABEL_4;
        }
      }

      if ((*(v32 + 3) >> 1) - *(v32 + 2) < v6)
      {
        goto LABEL_104;
      }

      swift_arrayInitWithCopy();

      inited = v230;
      if (v6)
      {
        v42 = *(v32 + 2);
        v43 = __OFADD__(v42, v6);
        v44 = v42 + v6;
        if (v43)
        {
          goto LABEL_105;
        }

        *(v32 + 2) = v44;
      }

LABEL_4:
      v31 += 8;
      if (!--v30)
      {
        goto LABEL_25;
      }
    }
  }

  v32 = MEMORY[0x277D84F90];
LABEL_25:
  v47 = *(v32 + 2);
  v48 = MEMORY[0x277D84F90];
  if (v47)
  {
    v49 = 0;
    *&v227 = v226 + 8;
    v50 = v32 + 40;
    v215 = v47 - 1;
    v216 = v32 + 40;
    v51 = v228;
    do
    {
      v226 = v48;
      v52 = &v50[16 * v49];
      v53 = v49;
      while (1)
      {
        if (v53 >= *(v32 + 2))
        {
          __break(1u);
          goto LABEL_102;
        }

        v54 = *(v52 - 1);
        v55 = *v52;
        v234 = v54;
        v235 = v55;

        sub_2664DE068();
        sub_2662D2EBC();
        v6 = sub_2664E0988();
        v57 = v56;
        (*v227)(v51, v229);
        v58 = !v6 && v57 == 0xE000000000000000;
        if (!v58)
        {
          break;
        }

LABEL_29:

        ++v53;
        v52 += 16;
        inited = v230;
        if (v47 == v53)
        {
          v48 = v226;
          goto LABEL_44;
        }
      }

      v6 = sub_2664E0D88();

      if (v6)
      {
        goto LABEL_29;
      }

      v59 = v226;
      v60 = swift_isUniquelyReferenced_nonNull_native();
      v233[0] = v59;
      if ((v60 & 1) == 0)
      {
        sub_2662FCF24(0, v59[2] + 1, 1);
        v59 = v233[0];
      }

      v62 = v59[2];
      v61 = v59[3];
      v6 = v62 + 1;
      if (v62 >= v61 >> 1)
      {
        sub_2662FCF24((v61 > 1), v62 + 1, 1);
        v59 = v233[0];
      }

      v49 = v53 + 1;
      v59[2] = v6;
      v63 = &v59[2 * v62];
      v63[4] = v54;
      v63[5] = v55;
      v50 = v216;
      v58 = v215 == v53;
      inited = v230;
      v48 = v59;
    }

    while (!v58);
  }

LABEL_44:

  v64 = sub_2664E02A8();
  v216 = [objc_opt_self() eventStreamWithName_];

  v65 = objc_opt_self();
  v66 = sub_2664DE3A8();
  v229 = [v65 predicateForEventsWithStartDateAfter_];

  v203 = *(v48 + 2);
  v226 = v48;
  v215 = v65;
  if (v203)
  {
    v67 = sub_2664E0488();
    v68 = [v65 predicateForEventsWithStringValueInValues_];

    v231[10] = v229;
    v231[11] = v68;
    v234 = MEMORY[0x277D84F90];
    v69 = v229;
    v213 = v68;
    v70 = 0;
    v210 = 0;
    v6 = v220;
    while (v70 != 2)
    {
      v71 = v231[v70++ + 10];
      if (v71)
      {
        v72 = v71;
        MEMORY[0x266783490]();
        if (*((v234 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v234 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_2664E04C8();
          inited = v230;
          v6 = v220;
        }

        sub_2664E0518();
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280074138, &qword_2664F0838);
    swift_arrayDestroy();
    sub_2662C1744(0, &qword_280F8F648, 0x277CCAC30);
    v73 = sub_2664E0488();

    v74 = [objc_opt_self() andPredicateWithSubpredicates_];

    v75 = qword_280F914E8;
    *&v227 = v74;
    if (v75 != -1)
    {
      goto LABEL_106;
    }

    goto LABEL_52;
  }

  v98 = v229;
  v236 = v229;
  v234 = MEMORY[0x277D84F90];
  v99 = v229;
  if (v98)
  {
    v100 = v99;
    MEMORY[0x266783490]();
    v101 = v222;
    if (*((v234 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v234 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_2664E04C8();
    }

    sub_2664E0518();
  }

  else
  {
    v101 = v222;
  }

  sub_2662A9238(&v236, &qword_280074138, &qword_2664F0838);
  sub_2662C1744(0, &qword_280F8F648, 0x277CCAC30);
  v102 = sub_2664E0488();

  v103 = [objc_opt_self() andPredicateWithSubpredicates_];

  v104 = qword_280F914E8;
  *&v227 = v103;
  if (v104 != -1)
  {
    swift_once();
  }

  v105 = __swift_project_value_buffer(v101, qword_280F914F0);
  swift_beginAccess();
  v106 = v225;
  v107 = v213;
  v228 = *(v225 + 16);
  (v228)(v213, v105, v101);
  v108 = v220;
  v109 = v210;
  v110 = v223;
  v202 = *(v220 + 16);
  v202(v210, v224, v223);
  v111 = sub_2664DFE18();
  v112 = sub_2664E06C8();
  if (os_log_type_enabled(v111, v112))
  {
    v113 = v109;
    v114 = swift_slowAlloc();
    v115 = swift_slowAlloc();
    v233[0] = v115;
    *v114 = 136315394;
    sub_2664D44D8(&qword_280F914D8, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
    v116 = sub_2664E0D48();
    v118 = v117;
    v214 = *(v108 + 8);
    (v214)(v113, v110);
    v119 = sub_2662A320C(v116, v118, v233);
    v101 = v222;

    *(v114 + 4) = v119;
    *(v114 + 12) = 2048;
    *(v114 + 14) = v221;
    _os_log_impl(&dword_26629C000, v111, v112, "NowPlayingUsageProvider#events querying all bundles since %s limiting to %ld", v114, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v115);
    v120 = v115;
    v121 = v225;
    MEMORY[0x266784AD0](v120, -1, -1);
    MEMORY[0x266784AD0](v114, -1, -1);

    v122 = *(v121 + 8);
    v123 = v213;
  }

  else
  {

    v214 = *(v108 + 8);
    (v214)(v109, v110);
    v122 = *(v106 + 8);
    v123 = v107;
  }

  v224 = v122;
  v122(v123, v101);
  v210 = 0;
  inited = v230;
LABEL_67:
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280073490, &qword_2664E8E20);
  v124 = swift_allocObject();
  v230 = xmmword_2664E34F0;
  *(v124 + 16) = xmmword_2664E34F0;
  v125 = v216;
  *(v124 + 32) = v216;
  v126 = swift_allocObject();
  *(v126 + 16) = v230;
  v127 = v125;
  v128 = [v215 startDateSortDescriptorAscending_];
  if (!v128)
  {
    goto LABEL_111;
  }

  v129 = v128;

  *(v126 + 32) = v129;
  sub_2662C1744(0, &qword_280F8F638, 0x277CFE1E8);
  v130 = sub_2664E0488();

  sub_2662C1744(0, &qword_280F8F5E8, 0x277CCAC98);
  v131 = sub_2664E0488();

  v132 = objc_opt_self();
  v133 = v227;
  v134 = [v132 eventQueryWithPredicate:v227 eventStreams:v130 offset:0 limit:v221 sortDescriptors:v131];

  [v134 setReadMetadata_];
  v135 = [objc_allocWithZone(MEMORY[0x277CFE208]) init];
  v233[0] = 0;
  v136 = [v135 executeQuery:v134 error:v233];

  v137 = v233[0];
  if (v136)
  {
    *&v230 = v127;
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v233[0] = 0;
      sub_2662C1744(0, &qword_280F8F540, 0x277CFE1D8);
      v138 = v137;
      v139 = v136;
      sub_2664E0498();

      v140 = v233[0];
      v141 = v228;
      if (v233[0])
      {
        v226 = v139;
        if (qword_280F914E8 != -1)
        {
          swift_once();
        }

        v142 = __swift_project_value_buffer(v101, qword_280F914F0);
        swift_beginAccess();
        v143 = v208;
        v221 = v142;
        v216 = (v225 + 16);
        v228 = v141;
        (v141)(v208, v142, v101);
        v144 = v223;
        v202(inited, v204, v223);

        v145 = sub_2664DFE18();
        LODWORD(v215) = sub_2664E06C8();
        v146 = os_log_type_enabled(v145, v215);
        v219 = (v140 >> 62);
        if (v146)
        {
          v147 = swift_slowAlloc();
          *v147 = 134218496;
          if (v140 >> 62)
          {
            v148 = sub_2664E0A68();
          }

          else
          {
            v148 = *((v140 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          *(v147 + 4) = v148;

          *(v147 + 12) = 2048;
          v149 = v201;
          sub_2664DE428();
          sub_2664DE388();
          v151 = v150;
          v152 = v149;
          v153 = v223;
          v154 = v214;
          (v214)(v152, v223);
          v154(inited, v153);
          *(v147 + 14) = v151;
          *(v147 + 22) = 2048;
          *(v147 + 24) = 0x4066800000000000;
          _os_log_impl(&dword_26629C000, v145, v215, "NowPlayingUsageProvider#events %ld results in %fs, rate limiting to 1/app/%fs", v147, 0x20u);
          MEMORY[0x266784AD0](v147, -1, -1);

          v101 = v222;
          v143 = v208;
        }

        else
        {

          (v214)(inited, v144);
        }

        v182 = v228;
        v183 = v224;
        v184 = (v225 + 8);
        v224(v143, v101);
        v185 = v219;
        v228 = v184;
        if (v219)
        {
          v186 = sub_2664E0A68();
        }

        else
        {
          v186 = *((v140 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v187 = sub_2664E0858();
        if (qword_280F91508 != -1)
        {
          swift_once();
        }

        v188 = qword_280F91D48;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800724D8, &unk_2664E3920);
        v189 = swift_allocObject();
        *(v189 + 16) = xmmword_2664E34E0;
        v190 = MEMORY[0x277D83B88];
        v191 = MEMORY[0x277D83C10];
        *(v189 + 56) = MEMORY[0x277D83B88];
        *(v189 + 64) = v191;
        *(v189 + 32) = v203;
        *(v189 + 96) = v190;
        *(v189 + 104) = v191;
        *(v189 + 72) = v186;
        v192 = v205;
        sub_2664DFDF8();
        sub_2664DFDC8(v187, &dword_26629C000, v188, "nowPlayingCoreDuetFilteredLoad", 30, 2, v192, "apps=%{signpost.telemetry:number1,public}d events=%{signpost.telemetry:number2,public}d enableTelemetry=YES ", 108, 2, v189);

        (*(v206 + 8))(v192, v207);
        v231[0] = MEMORY[0x277D84FA0];
        memset(v232, 0, sizeof(v232));
        sub_2664D3074(v140, v232, v231);
        v193 = v222;
        v182(v212, v221, v222);

        v194 = sub_2664DFE18();
        v195 = sub_2664E06C8();
        if (os_log_type_enabled(v194, v195))
        {
          v196 = swift_slowAlloc();
          *v196 = 134218240;
          if (v185)
          {
            v197 = v134;
            v198 = sub_2664E0A68();
          }

          else
          {
            v197 = v134;
            v198 = *((v140 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          *(v196 + 4) = v198;

          *(v196 + 12) = 2048;
          swift_beginAccess();
          *(v196 + 14) = *(v231[0] + 16);
          _os_log_impl(&dword_26629C000, v194, v195, "NowPlayingUsageProvider#events filtered %ld to %ld results", v196, 0x16u);
          MEMORY[0x266784AD0](v196, -1, -1);
        }

        else
        {
          v197 = v134;

          swift_bridgeObjectRelease_n();
        }

        v199 = v227;
        v183(v212, v193);
        swift_beginAccess();

        (v218)(v200);

        return;
      }
    }

    else
    {
      v174 = v137;
      v141 = v228;
    }

    v228 = v134;
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v175 = __swift_project_value_buffer(v101, qword_280F914F0);
    swift_beginAccess();
    v176 = v211;
    (v141)(v211, v175, v101);
    v177 = sub_2664DFE18();
    v178 = sub_2664E06D8();
    v179 = os_log_type_enabled(v177, v178);
    v180 = v224;
    if (v179)
    {
      v181 = swift_slowAlloc();
      *v181 = 0;
      _os_log_impl(&dword_26629C000, v177, v178, "NowPlayingUsageProvider#events not [DKEvent] response", v181, 2u);
      MEMORY[0x266784AD0](v181, -1, -1);
    }

    v180(v176, v101);
    (v218)(0);
  }

  else
  {
    v155 = v233[0];
    v156 = sub_2664DE1A8();

    swift_willThrow();
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v157 = __swift_project_value_buffer(v101, qword_280F914F0);
    swift_beginAccess();
    v158 = v209;
    (v228)(v209, v157, v101);
    v159 = v156;
    v160 = sub_2664DFE18();
    v161 = sub_2664E06D8();

    if (os_log_type_enabled(v160, v161))
    {
      v162 = swift_slowAlloc();
      *&v230 = v127;
      v163 = v162;
      v164 = swift_slowAlloc();
      v232[0] = v164;
      *v163 = 136315138;
      swift_getErrorValue();
      v165 = sub_2664E0DE8();
      v167 = sub_2662A320C(v165, v166, v232);
      v228 = v134;
      v168 = v101;
      v169 = v167;

      *(v163 + 4) = v169;
      _os_log_impl(&dword_26629C000, v160, v161, "NowPlayingUsageProvider#signal CoreDuet error - %s", v163, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v164);
      v170 = v164;
      v133 = v227;
      MEMORY[0x266784AD0](v170, -1, -1);
      v171 = v163;
      v127 = v230;
      MEMORY[0x266784AD0](v171, -1, -1);

      v172 = v158;
      v173 = v168;
      v134 = v228;
    }

    else
    {

      v172 = v158;
      v173 = v101;
    }

    v224(v172, v173);
    (v218)(0);
  }
}

uint64_t sub_2664CD8CC()
{
  v1 = 0x746E65636572;
  if (*v0 != 1)
  {
    v1 = 0x794273746E657665;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6D617473656D6974;
  }
}

uint64_t sub_2664CD930@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2664D3C84(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2664CD964(uint64_t a1)
{
  v2 = sub_2664D4018();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2664CD9A0(uint64_t a1)
{
  v2 = sub_2664D4018();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2664CD9DC(void *a1, uint64_t a2, uint64_t a3, double a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280074110, &unk_2664F0828);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v13 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2664D4018();
  sub_2664E0F08();
  LOBYTE(v14) = 0;
  sub_2664E0D08();
  if (!v4)
  {
    v14 = a2;
    HIBYTE(v13) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800740E0, &qword_2664F0810);
    sub_2664D4170(&qword_280074118, sub_2664D41E8, MEMORY[0x277D83B50]);
    sub_2664E0D18();
    v14 = a3;
    HIBYTE(v13) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800740F8, &unk_2664F0818);
    sub_2664D423C();
    sub_2664E0D18();
  }

  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_2664CDC00(void *a1, uint64_t a2, uint64_t a3, double a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280074188, &qword_2664F0A78);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v11[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2664D4888();
  sub_2664E0F08();
  v11[15] = 0;
  sub_2664E0CF8();
  if (!v4)
  {
    v11[14] = 1;
    sub_2664E0D08();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_2664CDD9C@<X0>(void *a1@<X8>, void *a2@<X0>)
{
  result = sub_2664D3DA4(a2);
  if (!v2)
  {
    *a1 = v6;
    a1[1] = result;
    a1[2] = v5;
  }

  return result;
}

uint64_t sub_2664CDDEC()
{
  if (*v0)
  {
    return 0x6D617473656D6974;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_2664CDE30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x80000002664F5CA0 == a2 || (sub_2664E0D88() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_2664E0D88();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_2664CDF20(uint64_t a1)
{
  v2 = sub_2664D4888();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2664CDF5C(uint64_t a1)
{
  v2 = sub_2664D4888();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2664CDF98()
{
  v1 = *(v0 + 16);
  sub_2664E0E68();
  sub_2664E0368();
  v2 = 0.0;
  if (v1 != 0.0)
  {
    v2 = v1;
  }

  MEMORY[0x266783EC0](*&v2);
  return sub_2664E0EB8();
}

uint64_t sub_2664CE010(uint64_t a1)
{
  v2 = *(v1 + 16);
  sub_2664E0368();
  v3 = 0.0;
  if (v2 != 0.0)
  {
    v3 = v2;
  }

  return MEMORY[0x266783EC0](*&v3);
}

uint64_t sub_2664CE05C(uint64_t a1)
{
  v2 = *(v1 + 16);
  sub_2664E0E68();
  sub_2664E0368();
  v3 = 0.0;
  if (v2 != 0.0)
  {
    v3 = v2;
  }

  MEMORY[0x266783EC0](*&v3);
  return sub_2664E0EB8();
}

void sub_2664CE0D0(uint64_t *a1@<X8>, void *a2@<X0>)
{
  v6 = sub_2664D46AC(a2);
  if (!v2)
  {
    *a1 = v4;
    a1[1] = v5;
    *(a1 + 2) = v6;
  }
}

BOOL sub_2664CE120(double *a1, uint64_t a2)
{
  v2 = a1[2];
  v3 = *(a2 + 16);
  if (*a1 == *a2 && *(a1 + 1) == *(a2 + 8))
  {
    return v2 == v3;
  }

  v5 = sub_2664E0D88();
  result = 0;
  if (v5)
  {
    return v2 == v3;
  }

  return result;
}

uint64_t sub_2664CE180()
{

  return swift_deallocClassInstance();
}

uint64_t sub_2664CE204(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, unint64_t *a5, void *a6)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
    v10 = sub_2664E0AE8();
    v23 = v10;
    sub_2664E0A58();
    if (sub_2664E0A88())
    {
      sub_2662C1744(0, a5, a6);
      do
      {
        swift_dynamicCast();
        v17 = *(v10 + 16);
        if (*(v10 + 24) <= v17)
        {
          sub_2664CE8C4(v17 + 1, a3, a4);
        }

        v10 = v23;
        result = sub_2664E0908();
        v12 = v23 + 56;
        v13 = -1 << *(v23 + 32);
        v14 = result & ~v13;
        v15 = v14 >> 6;
        if (((-1 << v14) & ~*(v23 + 56 + 8 * (v14 >> 6))) != 0)
        {
          v16 = __clz(__rbit64((-1 << v14) & ~*(v23 + 56 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v18 = 0;
          v19 = (63 - v13) >> 6;
          do
          {
            if (++v15 == v19 && (v18 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v20 = v15 == v19;
            if (v15 == v19)
            {
              v15 = 0;
            }

            v18 |= v20;
            v21 = *(v12 + 8 * v15);
          }

          while (v21 == -1);
          v16 = __clz(__rbit64(~v21)) + (v15 << 6);
        }

        *(v12 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
        *(*(v23 + 48) + 8 * v16) = v22;
        ++*(v23 + 16);
      }

      while (sub_2664E0A88());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v10;
}

uint64_t sub_2664CE404(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800724E0, &qword_2664E3790);
  result = sub_2664E0AD8();
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
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_2664E0E68();
      sub_2664E0368();
      result = sub_2664E0EB8();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_2664CE664(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073BE0, &qword_2664EDCB8);
  result = sub_2664E0AD8();
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
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = *(v3 + 48) + 40 * (v15 | (v6 << 6));
      v27 = *v18;
      v28 = *(v18 + 16);
      v29 = *(v18 + 32);
      result = sub_2664E0A98();
      v19 = -1 << *(v5 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v5 + 48) + 40 * v13;
      *v14 = v27;
      *(v14 + 16) = v28;
      *(v14 + 32) = v29;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero((v3 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v26;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_2664CE8C4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_2664E0AD8();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(*(v5 + 48) + 8 * (v16 | (v8 << 6)));
      result = sub_2664E0908();
      v20 = -1 << *(v7 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
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

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v19;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
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

    v27 = 1 << *(v5 + 32);
    if (v27 >= 64)
    {
      bzero((v5 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v27;
    }

    *(v5 + 16) = 0;
  }

  *v4 = v7;
  return result;
}

uint64_t sub_2664CEAE4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280074158, &qword_2664F0868);
  result = sub_2664E0AD8();
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
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      sub_2664E0E68();
      MEMORY[0x266783E90](v17);
      result = sub_2664E0EB8();
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
      *(*(v5 + 48) + 8 * v13) = v17;
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

uint64_t sub_2664CED34(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280074150, &qword_2664F0858);
  result = sub_2664E0AD8();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    v25 = v2;
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
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      result = sub_2664E0E58();
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
      *(*(v5 + 48) + 8 * v13) = v17;
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

    if (v8 >= 64)
    {
      bzero((v3 + 56), 8 * v11);
    }

    else
    {
      *v7 = -1 << v8;
    }

    v2 = v25;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_2664CEF58(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280074140, &qword_2664F0840);
  result = sub_2664E0AD8();
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
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = *(v3 + 48) + 24 * (v15 | (v6 << 6));
      v19 = *v18;
      v20 = *(v18 + 8);
      v21 = *(v18 + 16);
      sub_2664E0E68();
      sub_2664E0368();
      if (v21 == 0.0)
      {
        v22 = 0.0;
      }

      else
      {
        v22 = v21;
      }

      MEMORY[0x266783EC0](*&v22);
      result = sub_2664E0EB8();
      v23 = -1 << *(v5 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v12 + 8 * (v24 >> 6))) == 0)
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
          v29 = *(v12 + 8 * v25);
          if (v29 != -1)
          {
            v13 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v24) & ~*(v12 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v5 + 48) + 24 * v13;
      *v14 = v19;
      *(v14 + 8) = v20;
      *(v14 + 16) = v21;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v30;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_2664CF1EC(uint64_t a1, uint64_t a2)
{
  sub_2664E0908();
  result = sub_2664E0A48();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

void *sub_2664CF270(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    sub_2664CF96C(result, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

void *sub_2664CF2F8(void *result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
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
      v8 = a5;
      v9 = a4;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
      a4 = v9;
      a5 = v8;
    }

    v10 = sub_2664D3364(result, a2, a3, a4, a5);

    return v10;
  }

  return result;
}

uint64_t sub_2664CF388(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800724E0, &qword_2664E3790);
  result = sub_2664E0AF8();
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
  v29 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    sub_2664E0E68();

    sub_2664E0368();
    result = sub_2664E0EB8();
    v19 = -1 << *(v9 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v9 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v29;
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

uint64_t sub_2664CF5AC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280074140, &qword_2664F0840);
  result = sub_2664E0AF8();
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
  v31 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(v4 + 48) + 24 * (v13 | (v11 << 6));
    v17 = *v16;
    v18 = *(v16 + 8);
    v19 = *(v16 + 16);
    sub_2664E0E68();

    sub_2664E0368();
    if (v19 == 0.0)
    {
      v20 = 0.0;
    }

    else
    {
      v20 = v19;
    }

    MEMORY[0x266783EC0](*&v20);
    result = sub_2664E0EB8();
    v21 = -1 << *(v9 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
    {
      v25 = 0;
      v26 = (63 - v21) >> 6;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v12 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_30;
        }
      }

      goto LABEL_34;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_30:
    *(v12 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    v29 = *(v9 + 48) + 24 * v24;
    *v29 = v17;
    *(v29 + 8) = v18;
    *(v29 + 16) = v19;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_35;
    }

    v4 = v31;
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
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
  return result;
}

void sub_2664CF800(uint64_t a1, uint64_t a2)
{
  v4 = a1;
  v10[1] = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v6 = ((1 << v5) + 63) >> 6;
  if ((v5 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v9 = swift_slowAlloc();
      sub_2664CF270(v9, v6, v4, a2);
      MEMORY[0x266784AD0](v9, -1, -1);
      return;
    }
  }

  MEMORY[0x28223BE20](a1);
  v8 = v10 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0);
  bzero(v8, v7);
  sub_2664CF96C(v8, v6, v4, a2);
  if (v2)
  {
    swift_willThrow();
  }
}

void sub_2664CF96C(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = 0;
  v6 = 0;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v12 = v11 | (v6 << 6);
LABEL_11:
    if (*(*(a3 + 48) + 8 * v12) > a4)
    {
      *(result + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      if (__OFADD__(v5++, 1))
      {
        __break(1u);
LABEL_15:
        sub_2664D0254(result, a2, v5, a3);
        return;
      }
    }
  }

  v13 = v6;
  while (1)
  {
    v6 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v6 >= v10)
    {
      goto LABEL_15;
    }

    v14 = *(a3 + 64 + 8 * v6);
    ++v13;
    if (v14)
    {
      v9 = (v14 - 1) & v14;
      v12 = __clz(__rbit64(v14)) | (v6 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t sub_2664CFA5C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280074148, &unk_2664F0848);
  result = sub_2664E0C98();
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
  v12 = result + 64;
  v31 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    v32 = *(v17 + v16);
    sub_2664E0E68();

    sub_2664E0368();
    result = sub_2664E0EB8();
    v21 = -1 << *(v9 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
    {
      v25 = 0;
      v26 = (63 - v21) >> 6;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v12 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    v29 = (*(v9 + 48) + 16 * v24);
    *v29 = v19;
    v29[1] = v20;
    *(*(v9 + 56) + v24) = v32;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v31;
    if (!v5)
    {
      return v9;
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
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_2664CFC98(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v48 = a1;
  v7 = sub_2664DF398();
  v54 = *(v7 - 8);
  v8 = MEMORY[0x28223BE20](v7);
  v55 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v50 = &v44 - v11;
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  v49 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072F48, qword_2664F0660);
  result = sub_2664E0C98();
  v13 = result;
  if (a2 < 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = *v48;
  }

  v15 = 0;
  v46 = result;
  v47 = v54 + 16;
  v16 = v54 + 32;
  v17 = result + 64;
  v18 = v49;
  v45 = a4;
  while (v14)
  {
    v19 = v18;
    v20 = v16;
    v21 = __clz(__rbit64(v14));
    v51 = (v14 - 1) & v14;
LABEL_16:
    v24 = v21 | (v15 << 6);
    v25 = a4[7];
    v26 = (a4[6] + 16 * v24);
    v27 = *v26;
    v28 = v26[1];
    v29 = v54;
    v53 = *(v54 + 72);
    v30 = v50;
    (*(v54 + 16))(v50, v25 + v53 * v24, v19);
    v31 = *(v29 + 32);
    v32 = v30;
    v16 = v20;
    v31(v55, v32, v19);
    v13 = v46;
    sub_2664E0E68();

    v52 = v27;
    sub_2664E0368();
    result = sub_2664E0EB8();
    v33 = -1 << *(v13 + 32);
    v34 = result & ~v33;
    v35 = v34 >> 6;
    if (((-1 << v34) & ~*(v17 + 8 * (v34 >> 6))) == 0)
    {
      v37 = 0;
      v38 = (63 - v33) >> 6;
      v18 = v49;
      while (++v35 != v38 || (v37 & 1) == 0)
      {
        v39 = v35 == v38;
        if (v35 == v38)
        {
          v35 = 0;
        }

        v37 |= v39;
        v40 = *(v17 + 8 * v35);
        if (v40 != -1)
        {
          v36 = __clz(__rbit64(~v40)) + (v35 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v36 = __clz(__rbit64((-1 << v34) & ~*(v17 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
    v18 = v49;
LABEL_26:
    *(v17 + ((v36 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v36;
    v41 = (*(v13 + 48) + 16 * v36);
    v42 = v53;
    *v41 = v52;
    v41[1] = v28;
    result = (v31)(*(v13 + 56) + v36 * v42, v55, v18);
    ++*(v13 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v45;
    v14 = v51;
    if (!a3)
    {
      return v13;
    }
  }

  v22 = v15;
  while (1)
  {
    v15 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v15 >= a2)
    {
      return v13;
    }

    v23 = v48[v15];
    ++v22;
    if (v23)
    {
      v19 = v18;
      v20 = v16;
      v21 = __clz(__rbit64(v23));
      v51 = (v23 - 1) & v23;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_2664D0018(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072FE8, &qword_2664F0860);
  result = sub_2664E0C98();
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
  v12 = result + 64;
  v31 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    v32 = *(v17 + 8 * v16);
    sub_2664E0E68();

    sub_2664E0368();
    result = sub_2664E0EB8();
    v21 = -1 << *(v9 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
    {
      v25 = 0;
      v26 = (63 - v21) >> 6;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v12 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    v29 = (*(v9 + 48) + 16 * v24);
    *v29 = v19;
    v29[1] = v20;
    *(*(v9 + 56) + 8 * v24) = v32;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v31;
    if (!v5)
    {
      return v9;
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
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

void sub_2664D0254(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    v5 = a3;
    if (a4[2] == a3)
    {
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280073A60, &unk_2664ED600);
      v8 = sub_2664E0C98();
      v9 = v8;
      if (a2 < 1)
      {
        v10 = 0;
      }

      else
      {
        v10 = *a1;
      }

      v11 = 0;
      v12 = v8 + 64;
      while (v10)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_16:
        v16 = v13 | (v11 << 6);
        v17 = *(a4[6] + 8 * v16);
        v18 = *(a4[7] + 8 * v16);
        v19 = sub_2664E0E58();
        v20 = -1 << *(v9 + 32);
        v21 = v19 & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
        {
          v24 = 0;
          v25 = (63 - v20) >> 6;
          while (++v22 != v25 || (v24 & 1) == 0)
          {
            v26 = v22 == v25;
            if (v22 == v25)
            {
              v22 = 0;
            }

            v24 |= v26;
            v27 = *(v12 + 8 * v22);
            if (v27 != -1)
            {
              v23 = __clz(__rbit64(~v27)) + (v22 << 6);
              goto LABEL_26;
            }
          }

          goto LABEL_30;
        }

        v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
        *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        *(*(v9 + 48) + 8 * v23) = v17;
        *(*(v9 + 56) + 8 * v23) = v18;
        ++*(v9 + 16);
        if (__OFSUB__(v5--, 1))
        {
          goto LABEL_31;
        }

        if (!v5)
        {
          return;
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
          return;
        }

        v15 = a1[v11];
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
    }
  }
}

uint64_t sub_2664D0458(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_2664E0E68();
  sub_2664E0368();
  v8 = sub_2664E0EB8();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_2664E0D88() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_2664D2214(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_2664D05A8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = sub_2664E0A98();
  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  if ((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (1)
    {
      sub_266350228(*(v6 + 48) + 40 * v9, v16);
      v11 = MEMORY[0x266783AC0](v16, a2);
      sub_266350284(v16);
      if (v11)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_266350284(a2);
    sub_266350228(*(v6 + 48) + 40 * v9, a1);
    return 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_266350228(a2, v16);
    v15 = *v3;
    sub_2664D2394(v16, v9, isUniquelyReferenced_nonNull_native);
    *v3 = v15;
    v13 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v13;
    *(a1 + 32) = *(a2 + 32);
    return 1;
  }
}

uint64_t sub_2664D073C(uint64_t *a1, void *a2, unint64_t *a3, void *a4, uint64_t *a5, uint64_t *a6)
{
  v11 = v6;
  v14 = *v6;
  if ((*v6 & 0xC000000000000001) != 0)
  {
    if (v14 < 0)
    {
      v15 = *v6;
    }

    else
    {
      v15 = v14 & 0xFFFFFFFFFFFFFF8;
    }

    v16 = a2;

    v17 = sub_2664E0A78();

    if (v17)
    {

      sub_2662C1744(0, a3, a4);
      swift_dynamicCast();
      result = 0;
      *a1 = v36;
    }

    else
    {
      result = sub_2664E0A68();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v27 = sub_2664CE204(v15, result + 1, a5, a6, a3, a4);
        v28 = *(v27 + 16);
        if (*(v27 + 24) <= v28)
        {
          sub_2664CE8C4(v28 + 1, a5, a6);
        }

        v29 = v16;
        sub_2664CF1EC(v29, v27);

        *v11 = v27;
        *a1 = v29;
        return 1;
      }
    }
  }

  else
  {
    sub_2662C1744(0, a3, a4);
    v19 = sub_2664E0908();
    v20 = -1 << *(v14 + 32);
    v21 = v19 & ~v20;
    if ((*(v14 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21))
    {
      v22 = ~v20;
      while (1)
      {
        v23 = *(*(v14 + 48) + 8 * v21);
        v24 = sub_2664E0918();

        if (v24)
        {
          break;
        }

        v21 = (v21 + 1) & v22;
        if (((*(v14 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      v30 = *(*(v14 + 48) + 8 * v21);
      *a1 = v30;
      v31 = v30;
      return 0;
    }

    else
    {
LABEL_11:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v37 = *v11;
      v26 = a2;
      sub_2664D250C(v26, v21, isUniquelyReferenced_nonNull_native, a5, a6, a3, a4);
      *v11 = v37;
      *a1 = v26;
      return 1;
    }
  }

  return result;
}

uint64_t sub_2664D09B0(void *a1, uint64_t a2)
{
  v5 = *v2;
  sub_2664E0E68();
  MEMORY[0x266783E90](a2);
  v6 = sub_2664E0EB8();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 8 * v8) != a2)
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
    sub_2664D269C(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_2664D0AA8(void *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = sub_2664E0E58();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 8 * v8) != a2)
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
    sub_2664D27F8(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_2664D0B88(double *a1, uint64_t a2, uint64_t a3, double a4)
{
  v9 = *v4;
  sub_2664E0E68();
  sub_2664E0368();
  v10 = 0.0;
  if (a4 != 0.0)
  {
    v10 = a4;
  }

  MEMORY[0x266783EC0](*&v10);
  v11 = sub_2664E0EB8();
  v12 = -1 << *(v9 + 32);
  v13 = v11 & ~v12;
  if ((*(v9 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v14 = ~v12;
    v15 = *(v9 + 48);
    while (1)
    {
      v16 = v15 + 24 * v13;
      v17 = *(v16 + 16);
      v18 = *v16 == a2 && *(v16 + 8) == a3;
      if (v18 || (sub_2664E0D88()) && v17 == a4)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
      if (((*(v9 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    v21 = *(v9 + 48) + 24 * v13;
    v22 = *(v21 + 8);
    v23 = *(v21 + 16);
    *a1 = *v21;
    *(a1 + 1) = v22;
    *(a1 + 2) = v23;

    return 0;
  }

  else
  {
LABEL_13:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v4;

    sub_2664D2918(a2, a3, v13, isUniquelyReferenced_nonNull_native, a4);
    *v4 = v24;
    *a1 = a2;
    *(a1 + 1) = a3;
    a1[2] = a4;
    return 1;
  }
}

void sub_2664D0D30()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800724E0, &qword_2664E3790);
  v2 = *v0;
  v3 = sub_2664E0AC8();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

      v16 = *(v2 + 56 + 8 * v8);
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
}

void *sub_2664D0E8C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073BE0, &qword_2664EDCB8);
  v2 = *v0;
  v3 = sub_2664E0AC8();
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
    v10 = *(v2 + 56);
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
        v17 = 40 * (v14 | (v8 << 6));
        result = sub_266350228(*(v2 + 48) + v17, v21);
        v18 = *(v4 + 48) + v17;
        v19 = v21[0];
        v20 = v21[1];
        *(v18 + 32) = v22;
        *v18 = v19;
        *(v18 + 16) = v20;
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

      v16 = *(v2 + 56 + 8 * v8);
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

id sub_2664D1004(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_2664E0AC8();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 56 + 8 * v8)
    {
      result = memmove(result, (v4 + 56), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 56);
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
        *(*(v6 + 48) + 8 * v19) = v20;
        result = v20;
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

      v18 = *(v4 + 56 + 8 * v10);
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

void *sub_2664D1144()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280074158, &qword_2664F0868);
  v2 = *v0;
  v3 = sub_2664E0AC8();
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
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
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

void *sub_2664D1284()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280074150, &qword_2664F0858);
  v2 = *v0;
  v3 = sub_2664E0AC8();
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
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
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

void sub_2664D13C4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280074140, &qword_2664F0840);
  v2 = *v0;
  v3 = sub_2664E0AC8();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v17 = 24 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = v18[2];
        v21 = (*(v4 + 48) + v17);
        *v21 = *v18;
        v21[1] = v19;
        v21[2] = v20;
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

      v16 = *(v2 + 56 + 8 * v8);
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
}

uint64_t sub_2664D152C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800724E0, &qword_2664E3790);
  result = sub_2664E0AD8();
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
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_2664E0E68();

      sub_2664E0368();
      result = sub_2664E0EB8();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
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

uint64_t sub_2664D1764(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073BE0, &qword_2664EDCB8);
  result = sub_2664E0AD8();
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
      v16 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      sub_266350228(*(v3 + 48) + 40 * (v16 | (v6 << 6)), v26);
      result = sub_2664E0A98();
      v19 = -1 << *(v5 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v11 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v11 + 8 * v21);
          if (v25 != -1)
          {
            v12 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v20) & ~*(v11 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = *(v5 + 48) + 40 * v12;
      v14 = v26[0];
      v15 = v26[1];
      *(v13 + 32) = v27;
      *v13 = v14;
      *(v13 + 16) = v15;
      ++*(v5 + 16);
    }

    v17 = v6;
    while (1)
    {
      v6 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v18 = *(v3 + 56 + 8 * v6);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v9 = (v18 - 1) & v18;
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

uint64_t sub_2664D1990(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_2664E0AD8();
  v7 = result;
  if (*(v5 + 16))
  {
    v26 = v3;
    v8 = 0;
    v9 = 1 << *(v5 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v5 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(*(v5 + 48) + 8 * (v15 | (v8 << 6)));
      result = sub_2664E0908();
      v19 = -1 << *(v7 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v13 + 8 * v21);
          if (v25 != -1)
          {
            v14 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v14 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v7 + 48) + 8 * v14) = v18;
      ++*(v7 + 16);
    }

    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v8 >= v12)
      {

        v4 = v26;
        goto LABEL_26;
      }

      v17 = *(v5 + 56 + 8 * v8);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
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
    *v4 = v7;
  }

  return result;
}

uint64_t sub_2664D1B9C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280074158, &qword_2664F0868);
  result = sub_2664E0AD8();
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
      v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      sub_2664E0E68();
      MEMORY[0x266783E90](v16);
      result = sub_2664E0EB8();
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
      *(*(v5 + 48) + 8 * v12) = v16;
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

uint64_t sub_2664D1DBC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280074150, &qword_2664F0858);
  result = sub_2664E0AD8();
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
      v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      result = sub_2664E0E58();
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

        goto LABEL_26;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 8 * v12) = v16;
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
        goto LABEL_24;
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
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_24:

    *v2 = v5;
  }

  return result;
}

uint64_t sub_2664D1FAC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280074140, &qword_2664F0840);
  result = sub_2664E0AD8();
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
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = *(v3 + 48) + 24 * (v14 | (v6 << 6));
      v18 = *v17;
      v19 = *(v17 + 8);
      v20 = *(v17 + 16);
      sub_2664E0E68();

      sub_2664E0368();
      if (v20 == 0.0)
      {
        v21 = 0.0;
      }

      else
      {
        v21 = v20;
      }

      MEMORY[0x266783EC0](*&v21);
      result = sub_2664E0EB8();
      v22 = -1 << *(v5 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v11 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v11 + 8 * v24);
          if (v28 != -1)
          {
            v12 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_31;
      }

      v12 = __clz(__rbit64((-1 << v23) & ~*(v11 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = *(v5 + 48) + 24 * v12;
      *v13 = v18;
      *(v13 + 8) = v19;
      *(v13 + 16) = v20;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_29;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
  }

  else
  {

LABEL_29:
    *v2 = v5;
  }

  return result;
}

void sub_2664D2214(uint64_t a1, uint64_t a2, unint64_t a3, char a4)
{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_2664CE404(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      sub_2664D0D30();
      goto LABEL_16;
    }

    sub_2664D152C(v8 + 1);
  }

  v10 = *v4;
  sub_2664E0E68();
  sub_2664E0368();
  v11 = sub_2664E0EB8();
  v12 = -1 << *(v10 + 32);
  a3 = v11 & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      v15 = *v14 == a1 && v14[1] == a2;
      if (v15 || (sub_2664E0D88() & 1) != 0)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = a1;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return;
  }

  __break(1u);
LABEL_19:
  sub_2664E0DC8();
  __break(1u);
}

uint64_t sub_2664D2394(uint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_2664CE664(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      result = sub_2664D0E8C();
      goto LABEL_12;
    }

    sub_2664D1764(v7 + 1);
  }

  v9 = *v3;
  result = sub_2664E0A98();
  v10 = -1 << *(v9 + 32);
  a2 = result & ~v10;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    do
    {
      sub_266350228(*(v9 + 48) + 40 * a2, v19);
      v12 = MEMORY[0x266783AC0](v19, v6);
      result = sub_266350284(v19);
      if (v12)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v13 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v14 = *(v13 + 48) + 40 * a2;
  v15 = *(v6 + 16);
  *v14 = *v6;
  *(v14 + 16) = v15;
  *(v14 + 32) = *(v6 + 32);
  v16 = *(v13 + 16);
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (!v17)
  {
    *(v13 + 16) = v18;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_2664E0DC8();
  __break(1u);
  return result;
}

void sub_2664D250C(uint64_t a1, unint64_t a2, char a3, uint64_t *a4, uint64_t *a5, unint64_t *a6, void *a7)
{
  v10 = *(*v7 + 16);
  v11 = *(*v7 + 24);
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v12 = a6;
    v13 = a7;
    sub_2664CE8C4(v10 + 1, a4, a5);
  }

  else
  {
    if (v11 > v10)
    {
      sub_2664D1004(a4, a5);
      goto LABEL_12;
    }

    v12 = a6;
    v13 = a7;
    sub_2664D1990(v10 + 1, a4, a5);
  }

  v14 = *v7;
  v15 = sub_2664E0908();
  v16 = -1 << *(v14 + 32);
  a2 = v15 & ~v16;
  if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    sub_2662C1744(0, v12, v13);
    do
    {
      v18 = *(*(v14 + 48) + 8 * a2);
      v19 = sub_2664E0918();

      if (v19)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v20 = *v7;
  *(*v7 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v20 + 48) + 8 * a2) = a1;
  v21 = *(v20 + 16);
  v22 = __OFADD__(v21, 1);
  v23 = v21 + 1;
  if (!v22)
  {
    *(v20 + 16) = v23;
    return;
  }

  __break(1u);
LABEL_15:
  sub_2664E0DC8();
  __break(1u);
}

void sub_2664D269C(uint64_t result, unint64_t a2, char a3)
{
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_2664CEAE4(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      sub_2664D1144();
      a2 = v7;
      goto LABEL_12;
    }

    sub_2664D1B9C(v5 + 1);
  }

  v8 = *v3;
  sub_2664E0E68();
  MEMORY[0x266783E90](result);
  v9 = sub_2664E0EB8();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    v12 = v9 & ~v10;
    type metadata accessor for INMediaItemType(0);
    a2 = v12;
    while (*(*(v8 + 48) + 8 * a2) != result)
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
  *(*(v13 + 48) + 8 * a2) = result;
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
  sub_2664E0DC8();
  __break(1u);
}

uint64_t sub_2664D27F8(uint64_t result, unint64_t a2, char a3)
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
    sub_2664CED34(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_2664D1284();
      a2 = v7;
      goto LABEL_12;
    }

    sub_2664D1DBC(v5 + 1);
  }

  v8 = *v3;
  result = sub_2664E0E58();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + 8 * a2) != v4)
    {
      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + 8 * a2) = v4;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_2664E0DC8();
  __break(1u);
  return result;
}

void sub_2664D2918(uint64_t a1, uint64_t a2, unint64_t a3, char a4, double a5)
{
  v6 = v5;
  v11 = *(*v5 + 16);
  v12 = *(*v5 + 24);
  if (v12 > v11 && (a4 & 1) != 0)
  {
    goto LABEL_20;
  }

  if (a4)
  {
    sub_2664CEF58(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_2664D13C4();
      goto LABEL_20;
    }

    sub_2664D1FAC(v11 + 1);
  }

  v13 = *v5;
  sub_2664E0E68();
  sub_2664E0368();
  v14 = 0.0;
  if (a5 != 0.0)
  {
    v14 = a5;
  }

  MEMORY[0x266783EC0](*&v14);
  v15 = sub_2664E0EB8();
  v16 = v13 + 56;
  v17 = -1 << *(v13 + 32);
  a3 = v15 & ~v17;
  if ((*(v13 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v18 = ~v17;
    v19 = *(v13 + 48);
    do
    {
      v20 = v19 + 24 * a3;
      v21 = *(v20 + 16);
      v22 = *v20 == a1 && *(v20 + 8) == a2;
      if (v22 || (sub_2664E0D88()) && v21 == a5)
      {
        goto LABEL_23;
      }

      a3 = (a3 + 1) & v18;
    }

    while (((*(v16 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_20:
  v23 = *v6;
  *(*v6 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v24 = *(v23 + 48) + 24 * a3;
  *v24 = a1;
  *(v24 + 8) = a2;
  *(v24 + 16) = a5;
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return;
  }

  __break(1u);
LABEL_23:
  sub_2664E0DC8();
  __break(1u);
}

void *sub_2664D2ADC(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v67 = a2;
  v5 = a1;
  v71 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 32);
  v7 = ((1 << v6) + 63) >> 6;
  if ((v6 & 0x3Fu) > 0xD)
  {
LABEL_62:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v57 = swift_slowAlloc();
      v58 = sub_2664CF2F8(v57, v7, v5, v67, a3);

      MEMORY[0x266784AD0](v57, -1, -1);
      return v58;
    }
  }

  v60 = v7;
  v61 = v3;
  v59[1] = v59;
  MEMORY[0x28223BE20](a1);
  v62 = v59 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
  bzero(v62, v8);
  v7 = 0;
  v9 = v5 + 56;
  v10 = 1 << *(v5 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(v5 + 56);
  v13 = (v10 + 63) >> 6;
  v65 = v5;
  v66 = v13;
  v63 = 0;
  v64 = v5 + 56;
  while (1)
  {
    while (1)
    {
      if (!v12)
      {
        v15 = v7;
        while (1)
        {
          v7 = v15 + 1;
          if (__OFADD__(v15, 1))
          {
            break;
          }

          if (v7 >= v13)
          {
            return sub_2664CF5AC(v62, v60, v63, v5);
          }

          v16 = *(v9 + 8 * v7);
          ++v15;
          if (v16)
          {
            v14 = __clz(__rbit64(v16));
            v12 = (v16 - 1) & v16;
            goto LABEL_14;
          }
        }

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
LABEL_61:
        __break(1u);
        goto LABEL_62;
      }

      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_14:
      v17 = v14 | (v7 << 6);
      v18 = *(v5 + 48) + 24 * v17;
      v19 = floor(*(v18 + 16) / 86400.0);
      if ((*&v19 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_54;
      }

      if (v19 <= -9.22337204e18)
      {
        goto LABEL_55;
      }

      if (v19 >= 9.22337204e18)
      {
        goto LABEL_56;
      }

      v20 = v19;
      if (v19 != v67)
      {
        break;
      }

      *&v62[(v17 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v17;
      v40 = __OFADD__(v63++, 1);
      if (v40)
      {
        __break(1u);
      }
    }

    v21 = *v18;
    v22 = *(v18 + 8);
    v68 = v12;
    v69 = v21;
    v23 = *a3;
    if (*(*a3 + 16) && (v24 = sub_266350334(v19), (v25 & 1) != 0))
    {
      v26 = *(*(v23 + 56) + 8 * v24);
    }

    else
    {
      v26 = MEMORY[0x277D84F98];
    }

    v3 = v26[2];

    if (v3 && (v27 = sub_2662A3E98(v69, v22), (v28 & 1) != 0))
    {
      v29 = *(v26[7] + 8 * v27);
    }

    else
    {
      v29 = 0;
    }

    v30 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      goto LABEL_57;
    }

    v31 = a3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v70 = v26;
    a3 = sub_2662A3E98(v69, v22);
    v34 = v26[2];
    v35 = (v33 & 1) == 0;
    v36 = v34 + v35;
    if (__OFADD__(v34, v35))
    {
      goto LABEL_58;
    }

    v5 = v33;
    if (v26[3] >= v36)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v39 = v70;
        if (v33)
        {
          goto LABEL_34;
        }
      }

      else
      {
        sub_26645410C();
        v39 = v70;
        if (v5)
        {
          goto LABEL_34;
        }
      }
    }

    else
    {
      sub_266450E14(v36, isUniquelyReferenced_nonNull_native);
      v37 = sub_2662A3E98(v69, v22);
      if ((v5 & 1) != (v38 & 1))
      {
        goto LABEL_65;
      }

      a3 = v37;
      v39 = v70;
      if (v5)
      {
LABEL_34:
        *(v39[7] + 8 * a3) = v30;
        goto LABEL_41;
      }
    }

    v39[(a3 >> 6) + 8] |= 1 << a3;
    v41 = (v39[6] + 16 * a3);
    *v41 = v69;
    v41[1] = v22;
    *(v39[7] + 8 * a3) = v30;
    v42 = v39[2];
    v40 = __OFADD__(v42, 1);
    v43 = v42 + 1;
    if (v40)
    {
      goto LABEL_60;
    }

    v39[2] = v43;

LABEL_41:

    a3 = v31;
    v44 = swift_isUniquelyReferenced_nonNull_native();
    v70 = *v31;
    v45 = v70;
    *v31 = 0x8000000000000000;
    v46 = sub_266350334(v20);
    v48 = v45[2];
    v49 = (v47 & 1) == 0;
    v40 = __OFADD__(v48, v49);
    v50 = v48 + v49;
    if (v40)
    {
      goto LABEL_59;
    }

    v5 = v47;
    if (v45[3] < v50)
    {
      break;
    }

    v13 = v66;
    if (v44)
    {
      goto LABEL_46;
    }

    v55 = v46;
    sub_266454F94();
    v46 = v55;
    v52 = v70;
    if (v5)
    {
LABEL_5:
      *(v52[7] + 8 * v46) = v39;

      goto LABEL_6;
    }

LABEL_47:
    v52[(v46 >> 6) + 8] |= 1 << v46;
    *(v52[6] + 8 * v46) = v20;
    *(v52[7] + 8 * v46) = v39;
    v53 = v52[2];
    v40 = __OFADD__(v53, 1);
    v54 = v53 + 1;
    if (v40)
    {
      goto LABEL_61;
    }

    v52[2] = v54;
LABEL_6:
    *a3 = v52;

    v9 = v64;
    v5 = v65;
    v12 = v68;
  }

  sub_26645284C(v50, v44);
  v46 = sub_266350334(v20);
  v13 = v66;
  if ((v5 & 1) == (v51 & 1))
  {
LABEL_46:
    v52 = v70;
    if (v5)
    {
      goto LABEL_5;
    }

    goto LABEL_47;
  }

  sub_2664E0DD8();
  __break(1u);
LABEL_65:
  result = sub_2664E0DD8();
  __break(1u);
  return result;
}

void sub_2664D3074(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v28[1] = a3;
  v31 = sub_2664DE438();
  v5 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v30 = v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
LABEL_26:
    v7 = sub_2664E0A68();
    if (v7)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
LABEL_3:
      v8 = 0;
      v35 = a1 & 0xC000000000000001;
      v9 = a1 & 0xFFFFFFFFFFFFFF8;
      v29 = v5 + 1;
      v32 = a1;
      v33 = v7;
      do
      {
        if (v35)
        {
          v10 = MEMORY[0x266783B70](v8, a1);
        }

        else
        {
          if (v8 >= *(v9 + 16))
          {
            goto LABEL_25;
          }

          v10 = *(a1 + 8 * v8 + 32);
        }

        v5 = v10;
        v11 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          __break(1u);
LABEL_25:
          __break(1u);
          goto LABEL_26;
        }

        v12 = [v10 stringValue];
        if (v12)
        {
          v13 = v12;
          v14 = sub_2664E02C8();
          v16 = v15;

          v17 = HIBYTE(v16) & 0xF;
          v37 = v14;
          if ((v16 & 0x2000000000000000) == 0)
          {
            v17 = v14 & 0xFFFFFFFFFFFFLL;
          }

          if (!v17)
          {
            goto LABEL_20;
          }

          v34 = v16;
          v18 = a2;
          v19 = [v5 startDate];
          if (!v19)
          {
            __break(1u);
            return;
          }

          if (v20 = v19, v21 = v30, sub_2664DE3F8(), v20, sub_2664DE3E8(), v23 = v22, (*v29)(v21, v31), a2 = v18, v24 = *(v18 + 8), v11 = v8 + 1, v25 = v34, v24) && ((v26 = *(v18 + 16), v37 == *v18) && v24 == v34 || (sub_2664E0D88()) && v26 - v23 < 180.0)
          {
LABEL_20:
          }

          else
          {
            v27 = v37;
            *a2 = v37;
            *(a2 + 8) = v25;
            *(a2 + 16) = v23;

            sub_2664D0B88(&v36, v27, v25, v23);
          }

          a1 = v32;
          v7 = v33;
        }

        else
        {
        }

        ++v8;
      }

      while (v11 != v7);
    }
  }
}

uint64_t sub_2664D3364(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v60 = 0;
  v6 = 0;
  v7 = a3 + 56;
  v8 = 1 << *(a3 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a3 + 56);
  v11 = (v8 + 63) >> 6;
  v61 = v11;
  v62 = a3 + 56;
  while (v10)
  {
    v12 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_13:
    v15 = v12 | (v6 << 6);
    v16 = *(a3 + 48) + 24 * v15;
    v17 = floor(*(v16 + 16) / 86400.0);
    if ((*&v17 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_52;
    }

    if (v17 <= -9.22337204e18)
    {
      goto LABEL_53;
    }

    if (v17 >= 9.22337204e18)
    {
      goto LABEL_54;
    }

    v18 = v17;
    if (v17 == a4)
    {
      *(a1 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v40 = __OFADD__(v60++, 1);
      if (v40)
      {
        goto LABEL_60;
      }
    }

    else
    {
      v19 = *(v16 + 8);
      v66 = *v16;
      v20 = *a5;
      if (*(*a5 + 16) && (v21 = sub_266350334(v17), (v22 & 1) != 0))
      {
        v23 = *(*(v20 + 56) + 8 * v21);
      }

      else
      {
        v23 = MEMORY[0x277D84F98];
      }

      v24 = v23[2];

      if (v24 && (v25 = sub_2662A3E98(v66, v19), (v26 & 1) != 0))
      {
        v27 = *(v23[7] + 8 * v25);
      }

      else
      {
        v27 = 0;
      }

      v28 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        goto LABEL_55;
      }

      v65 = v10;
      v29 = a5;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v32 = sub_2662A3E98(v66, v19);
      v33 = v23[2];
      v34 = (v31 & 1) == 0;
      v35 = v33 + v34;
      if (__OFADD__(v33, v34))
      {
        goto LABEL_56;
      }

      v36 = v31;
      if (v23[3] >= v35)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          v39 = v23;
          if (v31)
          {
            goto LABEL_33;
          }
        }

        else
        {
          sub_26645410C();
          v39 = v23;
          if (v36)
          {
            goto LABEL_33;
          }
        }
      }

      else
      {
        sub_266450E14(v35, isUniquelyReferenced_nonNull_native);
        v37 = sub_2662A3E98(v66, v19);
        if ((v36 & 1) != (v38 & 1))
        {
          goto LABEL_62;
        }

        v32 = v37;
        v39 = v23;
        if (v36)
        {
LABEL_33:
          *(v39[7] + 8 * v32) = v28;
          goto LABEL_40;
        }
      }

      v39[(v32 >> 6) + 8] |= 1 << v32;
      v41 = (v39[6] + 16 * v32);
      *v41 = v66;
      v41[1] = v19;
      *(v39[7] + 8 * v32) = v28;
      v42 = v39[2];
      v40 = __OFADD__(v42, 1);
      v43 = v42 + 1;
      if (v40)
      {
        goto LABEL_58;
      }

      v39[2] = v43;

LABEL_40:

      a5 = v29;
      v44 = swift_isUniquelyReferenced_nonNull_native();
      v45 = *v29;
      v67 = *v29;
      *v29 = 0x8000000000000000;
      v46 = sub_266350334(v18);
      v48 = *(v45 + 16);
      v49 = (v47 & 1) == 0;
      v40 = __OFADD__(v48, v49);
      v50 = v48 + v49;
      if (v40)
      {
        goto LABEL_57;
      }

      v51 = v47;
      if (*(v45 + 24) < v50)
      {
        sub_26645284C(v50, v44);
        v46 = sub_266350334(v18);
        v10 = v65;
        if ((v51 & 1) != (v52 & 1))
        {
          goto LABEL_61;
        }

LABEL_45:
        v53 = v67;
        if (v51)
        {
          goto LABEL_4;
        }

        goto LABEL_46;
      }

      v10 = v65;
      if (v44)
      {
        goto LABEL_45;
      }

      v56 = v46;
      sub_266454F94();
      v46 = v56;
      v53 = v67;
      if (v51)
      {
LABEL_4:
        *(v53[7] + 8 * v46) = v39;

        goto LABEL_5;
      }

LABEL_46:
      v53[(v46 >> 6) + 8] |= 1 << v46;
      *(v53[6] + 8 * v46) = v18;
      *(v53[7] + 8 * v46) = v39;
      v54 = v53[2];
      v40 = __OFADD__(v54, 1);
      v55 = v54 + 1;
      if (v40)
      {
        goto LABEL_59;
      }

      v53[2] = v55;
LABEL_5:
      *a5 = v53;

      v11 = v61;
      v7 = v62;
    }
  }

  v13 = v6;
  while (1)
  {
    v6 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v6 >= v11)
    {

      return sub_2664CF5AC(a1, a2, v60, a3);
    }

    v14 = *(v7 + 8 * v6);
    ++v13;
    if (v14)
    {
      v12 = __clz(__rbit64(v14));
      v10 = (v14 - 1) & v14;
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
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
LABEL_61:
  sub_2664E0DD8();
  __break(1u);
LABEL_62:
  result = sub_2664E0DD8();
  __break(1u);
  return result;
}

void sub_2664D37E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_2664DE438();
  v20 = *(v5 - 8);
  v21 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2664DE3D8();
  v8 = 1 << *(a2 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a2 + 64);
  v11 = (v8 + 63) >> 6;

  v12 = 0;
  while (v10)
  {
    v13 = v12;
LABEL_9:
    v14 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    v15 = v14 | (v13 << 6);
    v16 = (*(a2 + 48) + 16 * v15);
    v17 = *v16;
    v18 = v16[1];
    v19 = *(*(a2 + 56) + 8 * v15);

    sub_2664CBA40(v17, v18, v7, v19, a3);
  }

  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v13 >= v11)
    {

      (*(v20 + 8))(v7, v21);
      return;
    }

    v10 = *(a2 + 64 + 8 * v13);
    ++v12;
    if (v10)
    {
      v12 = v13;
      goto LABEL_9;
    }
  }

  __break(1u);
}

void sub_2664D39A8(uint64_t a1, uint64_t a2)
{
  v31 = a2;
  v32 = sub_2664DE438();
  v3 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = swift_allocObject();
  *(v6 + 16) = MEMORY[0x277D84F98];
  v30 = v6 + 16;
  v7 = 1 << *(a1 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a1 + 56);
  v10 = (v7 + 63) >> 6;
  v11 = (v3 + 8);

  v12 = 0;
  if (v9)
  {
    while (1)
    {
      v13 = v12;
LABEL_9:
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v15 = (*(a1 + 48) + 24 * (v14 | (v13 << 6)));
      v16 = *v15;
      v17 = v15[1];

      sub_2664DE3D8();
      sub_2664CBA40(v16, v17, v5, 1, v6);

      (*v11)(v5, v32);
      if (!v9)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
      goto LABEL_23;
    }

    if (v13 >= v10)
    {
      break;
    }

    v9 = *(a1 + 56 + 8 * v13);
    ++v12;
    if (v9)
    {
      v12 = v13;
      goto LABEL_9;
    }
  }

  v18 = v31;
  v19 = v31 + 64;
  v20 = 1 << *(v31 + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & *(v31 + 64);
  v23 = (v20 + 63) >> 6;

  v24 = 0;
  while (v22)
  {
    v25 = v24;
LABEL_19:
    v26 = __clz(__rbit64(v22));
    v22 &= v22 - 1;
    v27 = (v25 << 9) | (8 * v26);
    v28 = *(*(v18 + 48) + v27);
    v29 = *(*(v18 + 56) + v27);

    sub_2664D37E8(v28, v29, v6);
  }

  while (1)
  {
    v25 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v25 >= v23)
    {

      swift_beginAccess();

      return;
    }

    v22 = *(v19 + 8 * v25);
    ++v24;
    if (v22)
    {
      v24 = v25;
      goto LABEL_19;
    }
  }

LABEL_23:
  __break(1u);
}

uint64_t sub_2664D3C84(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070;
  if (v4 || (sub_2664E0D88() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746E65636572 && a2 == 0xE600000000000000 || (sub_2664E0D88() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x794273746E657665 && a2 == 0xEB00000000796144)
  {

    return 2;
  }

  else
  {
    v6 = sub_2664E0D88();

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

uint64_t sub_2664D3DA4(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800740D0, &qword_2664F0808);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2664D4018();
  sub_2664E0EF8();
  LOBYTE(v10) = 0;
  sub_2664E0CD8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800740E0, &qword_2664F0810);
  v9 = 1;
  sub_2664D4170(&qword_2800740E8, sub_2664D406C, MEMORY[0x277D83B70]);
  sub_2664E0CE8();
  v7 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800740F8, &unk_2664F0818);
  v9 = 2;
  sub_2664D40C0();
  sub_2664E0CE8();
  (*(v3 + 8))(v5, v2);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v7;
}

unint64_t sub_2664D4018()
{
  result = qword_2800740D8;
  if (!qword_2800740D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800740D8);
  }

  return result;
}

unint64_t sub_2664D406C()
{
  result = qword_2800740F0;
  if (!qword_2800740F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800740F0);
  }

  return result;
}

unint64_t sub_2664D40C0()
{
  result = qword_280074100;
  if (!qword_280074100)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800740F8, &unk_2664F0818);
    sub_2664D42EC(&qword_280074108, MEMORY[0x277D83808], MEMORY[0x277D83BB8], MEMORY[0x277D83528]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280074100);
  }

  return result;
}

uint64_t sub_2664D4170(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800740E0, &qword_2664F0810);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2664D41E8()
{
  result = qword_280074120;
  if (!qword_280074120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280074120);
  }

  return result;
}

unint64_t sub_2664D423C()
{
  result = qword_280074128;
  if (!qword_280074128)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800740F8, &unk_2664F0818);
    sub_2664D42EC(&qword_280074130, MEMORY[0x277D837D8], MEMORY[0x277D83B90], MEMORY[0x277D83508]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280074128);
  }

  return result;
}

uint64_t sub_2664D42EC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800731A0, &qword_2664E9780);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2664D435C(uint64_t a1)
{
  v3 = *(sub_2664DE438() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v7 = *v6;
  v8 = *(v6 + 8);

  return sub_2664CB3EC(a1, v5, v1 + v4, v7, v8);
}

void sub_2664D440C(uint64_t a1)
{
  v3 = *(sub_2664DE438() - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = (*(v3 + 64) + 7 + v5) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v1 + v6);
  v9 = *(v1 + v7);
  v10 = *(v1 + v7 + 8);

  sub_2664CBF34(a1, (v1 + v5), v8, v9, v10, (v1 + ((v4 + 16 + v7) & ~v4)));
}

uint64_t sub_2664D44D8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2664D4550()
{
  result = qword_280F8FA28[0];
  if (!qword_280F8FA28[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280F8FA28);
  }

  return result;
}

unint64_t sub_2664D45A8()
{
  result = qword_280074160;
  if (!qword_280074160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280074160);
  }

  return result;
}

unint64_t sub_2664D4600()
{
  result = qword_280074168;
  if (!qword_280074168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280074168);
  }

  return result;
}

unint64_t sub_2664D4658()
{
  result = qword_280074170;
  if (!qword_280074170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280074170);
  }

  return result;
}

double sub_2664D46AC(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280074178, &qword_2664F0A70);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2664D4888();
  sub_2664E0EF8();
  if (!v1)
  {
    v12 = 0;
    sub_2664E0CC8();
    v11 = 1;
    sub_2664E0CD8();
    v2 = v9;
    (*(v5 + 8))(v7, v4);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v2;
}

unint64_t sub_2664D4888()
{
  result = qword_280074180;
  if (!qword_280074180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280074180);
  }

  return result;
}

unint64_t sub_2664D48F0()
{
  result = qword_280074190;
  if (!qword_280074190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280074190);
  }

  return result;
}

unint64_t sub_2664D4948()
{
  result = qword_280074198;
  if (!qword_280074198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280074198);
  }

  return result;
}

unint64_t sub_2664D49A0()
{
  result = qword_2800741A0;
  if (!qword_2800741A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800741A0);
  }

  return result;
}

uint64_t sub_2664D4A60()
{
  v0 = sub_2664E0788();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2664E00B8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2664E0078();
  sub_2664E0768();
  v8 = _s16SiriAudioSupport14DispatchQueuesV5queue_3qos10attributesSo012OS_dispatch_F0CSS_0D00D3QoSVAhIE10AttributesVtFZ_0(0xD000000000000014, 0x80000002664FC200, v7, v3);
  (*(v1 + 8))(v3, v0);
  result = (*(v5 + 8))(v7, v4);
  qword_2800741A8 = v8;
  return result;
}

double static SiriAudioState.warmupWithRequestId(requestID:)(uint64_t a1, uint64_t a2)
{
  _s16SiriAudioSupport0aB5StateV8isWarmupSbvsZ_0(1);
  qword_2800741C0 = a1;
  qword_2800741C8 = a2;

  return result;
}

uint64_t _s16SiriAudioSupport0aB5StateV16currentRequestIdSSSgyFZ_0()
{
  v0 = sub_2664DFE38();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_2662A3324(&byte_2800741B8, "SiriAudio#isWarmup#get %{BOOL}d"))
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v4 = __swift_project_value_buffer(v0, qword_280F914F0);
    swift_beginAccess();
    (*(v1 + 16))(v3, v4, v0);
    v5 = sub_2664DFE18();
    v6 = sub_2664E06D8();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v20 = v8;
      *v7 = 136315138;
      if (qword_2800741C8)
      {
        v9 = qword_2800741C0;
      }

      else
      {
        v9 = 0x3E6C696E3CLL;
      }

      if (qword_2800741C8)
      {
        v10 = qword_2800741C8;
      }

      else
      {
        v10 = 0xE500000000000000;
      }

      v11 = sub_2662A320C(v9, v10, &v20);

      *(v7 + 4) = v11;
      _os_log_impl(&dword_26629C000, v5, v6, "SiriAudioState#currentRequestId warmup, returning warmup requestID: %s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v8);
      MEMORY[0x266784AD0](v8, -1, -1);
      MEMORY[0x266784AD0](v7, -1, -1);
    }

    (*(v1 + 8))(v3, v0);
    v12 = qword_2800741C0;
  }

  else
  {
    if (qword_280F90B20 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v13 = qword_280F90B40;
    v14 = unk_280F90B48;
    v15 = __swift_project_boxed_opaque_existential_1(qword_280F90B28, qword_280F90B40);
    v16 = *(v13 - 8);
    MEMORY[0x28223BE20](v15);
    v18 = &v20 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v16 + 16))(v18);
    v12 = (*(v14 + 16))(v13, v14);
    (*(v16 + 8))(v18, v13);
  }

  return v12;
}

uint64_t _s16SiriAudioSupport0aB5StateV8isWarmupSbvsZ_0(char a1)
{
  v2 = sub_2664DFE38();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v2, qword_280F914F0);
  swift_beginAccess();
  (*(v3 + 16))(v5, v6, v2);
  v7 = sub_2664DFE18();
  v8 = sub_2664E06E8();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 67109120;
    *(v9 + 4) = a1 & 1;
    _os_log_impl(&dword_26629C000, v7, v8, "SiriAudio#isWarmup#set %{BOOL}d", v9, 8u);
    MEMORY[0x266784AD0](v9, -1, -1);
  }

  result = (*(v3 + 8))(v5, v2);
  byte_2800741B8 = a1 & 1;
  return result;
}

uint64_t sub_2664D5270()
{
  v16 = sub_2664E0018();
  v0 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v2 = (&v14 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = sub_2664E00E8();
  v3 = *(v15 - 8);
  v4 = MEMORY[0x28223BE20](v15);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - v7;
  v9 = sub_2664E0038();
  MEMORY[0x28223BE20](v9);
  if (qword_2800741B0)
  {

    sub_2664E0108();
  }

  aBlock[4] = sub_2662A3FD4;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2662A3F90;
  aBlock[3] = &block_descriptor_52;
  _Block_copy(aBlock);
  v17 = MEMORY[0x277D84F90];
  sub_2662A6120();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280074210, &qword_2664E3640);
  sub_2662A5AC8();
  sub_2664E0A08();
  sub_2664E0118();
  swift_allocObject();
  qword_2800741B0 = sub_2664E00F8();

  if (qword_280071CF8 != -1)
  {
    swift_once();
  }

  sub_2664E00C8();
  *v2 = 1000;
  v10 = v16;
  (*(v0 + 104))(v2, *MEMORY[0x277D85178], v16);
  MEMORY[0x266783140](v6, v2);
  (*(v0 + 8))(v2, v10);
  v11 = *(v3 + 8);
  v12 = v15;
  v11(v6, v15);
  sub_2664E07A8();

  return (v11)(v8, v12);
}

uint64_t sub_2664D5614(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

uint64_t static ErrorFilingProvider.getTrialPolicy()()
{
  v8 = xmmword_2664F0BB0;
  if (qword_280071D00 != -1)
  {
    swift_once();
  }

  v1 = qword_2800741D0;
  v2 = swift_allocObject();
  *(v2 + 16) = &v8;
  *(v2 + 24) = v0;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_2664D8638;
  *(v3 + 24) = v2;
  v7[4] = sub_2662AA56C;
  v7[5] = v3;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 1107296256;
  v7[2] = sub_2662ABACC;
  v7[3] = &block_descriptor_53;
  v4 = _Block_copy(v7);

  dispatch_sync(v1, v4);
  _Block_release(v4);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  else
  {
    v6 = v8;
    sub_26648736C(v8, *(&v8 + 1));
    sub_2662B79A8(v6, *(&v6 + 1));

    return v6;
  }

  return result;
}

uint64_t sub_2664D58B4()
{
  v0 = sub_2664E0788();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2664E00B8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2664E0088();
  v10[1] = 0;
  sub_2662A3CE8(&qword_280F8F5D0, MEMORY[0x277D85230], MEMORY[0x277D85240]);
  sub_2664E0F48();
  v8 = _s16SiriAudioSupport14DispatchQueuesV5queue_3qos10attributesSo012OS_dispatch_F0CSS_0D00D3QoSVAhIE10AttributesVtFZ_0(0xD00000000000001ELL, 0x80000002664FC5B0, v7, v3);
  (*(v1 + 8))(v3, v0);
  result = (*(v5 + 8))(v7, v4);
  qword_2800741D0 = v8;
  return result;
}

unint64_t sub_2664D5A94()
{
  result = sub_2663854AC(MEMORY[0x277D84F90]);
  qword_2800741E8 = result;
  return result;
}

dispatch_semaphore_t sub_2664D5ABC()
{
  result = dispatch_semaphore_create(0);
  qword_2800741F0 = result;
  return result;
}

uint64_t sub_2664D5AE8(double a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280074230, &qword_2664EF6F0);
  MEMORY[0x28223BE20](v2 - 8);
  v56 = &v47 - v3;
  v4 = sub_2664E0018();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v53 = (&v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_2664E00E8();
  v54 = *(v7 - 8);
  v55 = v7;
  v8 = MEMORY[0x28223BE20](v7);
  v51 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v52 = &v47 - v10;
  v11 = sub_2664DFE38();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  *&v57 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v47 - v15;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v11, qword_280F914F0);
  swift_beginAccess();
  v18 = *(v12 + 16);
  v49 = v17;
  v48 = v18;
  v18(v16, v17, v11);
  v19 = sub_2664DFE18();
  v20 = sub_2664E06D8();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = v12;
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_26629C000, v19, v20, "SRTBreachManager#checkForSRTBreach we have a breach, creating tailspin file and then TTR", v22, 2u);
    v23 = v22;
    v12 = v21;
    MEMORY[0x266784AD0](v23, -1, -1);
  }

  v47 = *(v12 + 8);
  v47(v16, v11);
  v50 = "leUniversalStoreIdentifiers>8";
  sub_2664DF5D8();
  if (qword_280071D10 != -1)
  {
    swift_once();
  }

  v24 = v51;
  sub_2664E00C8();
  v25 = v53;
  *v53 = 20;
  (*(v5 + 104))(v25, *MEMORY[0x277D85188], v4);
  v26 = v52;
  MEMORY[0x266783140](v24, v25);
  (*(v5 + 8))(v25, v4);
  v27 = v55;
  v28 = *(v54 + 8);
  v28(v24, v55);
  sub_2664E0868();
  v28(v26, v27);
  v29 = sub_2664E0028();
  v48(v57, v49, v11);
  v30 = sub_2664DFE18();
  v31 = sub_2664E06E8();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 67109120;
    *(v32 + 4) = v29 & 1;
    _os_log_impl(&dword_26629C000, v30, v31, "ErrorFilingProvider#checkForSRTBreach notification received: %{BOOL}d", v32, 8u);
    MEMORY[0x266784AD0](v32, -1, -1);
  }

  v47(v57, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073FE8, &qword_2664EF6F8);
  inited = swift_initStackObject();
  v57 = xmmword_2664E36F0;
  *(inited + 16) = xmmword_2664E36F0;
  v58 = sub_2664DF5E8();
  v59 = v34;

  MEMORY[0x2667833B0](0xD000000000000014, v50 | 0x8000000000000000);

  v35 = v59;
  *(inited + 32) = v58;
  *(inited + 40) = v35;
  *(inited + 48) = 0x6E6970736C696174;
  *(inited + 56) = 0xE800000000000000;
  v36 = sub_2663869D0(inited);
  swift_setDeallocating();
  sub_2662A9238(inited + 32, &unk_280074240, &unk_2664EF700);
  v37 = _s16SiriAudioSupport19ErrorFilingProviderC20collectAnyExtraFiles22filePathsAndExtensionsSay10Foundation3URLVGSDyS2SG_tFZ_0(v36);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800724D8, &unk_2664E3920);
  v38 = swift_allocObject();
  v39 = MEMORY[0x277D839F8];
  *(v38 + 16) = v57;
  v40 = MEMORY[0x277D83A80];
  *(v38 + 56) = v39;
  *(v38 + 64) = v40;
  *(v38 + 32) = a1;
  v58 = sub_2664E02E8();
  v59 = v41;

  MEMORY[0x2667833B0](0x73646E6F63657320, 0xE800000000000000);

  v42 = v58;
  v43 = v59;
  v44 = sub_2664DFB08();
  v45 = v56;
  (*(*(v44 - 8) + 56))(v56, 1, 1, v44);
  _s16SiriAudioSupport19ErrorFilingProviderC19fileTTRForSRTBreach13errorToReport11description14attachmentURLs9deviceIDs16ttrComponentInfoySS_SSSay10Foundation3URLVGSgSaySSGSg0A15FlowEnvironment012TTRComponentT0VSgtFZ_0(0x6361657242545253, 0xE900000000000068, v42, v43, v37, 0, v45);

  return sub_2662A9238(v45, &unk_280074230, &qword_2664EF6F0);
}

uint64_t sub_2664D626C(char a1, uint64_t a2, unint64_t a3)
{
  v6 = sub_2664DFE38();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v23 - v11;
  if ((a1 & 1) != 0 && a3)
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v13 = __swift_project_value_buffer(v6, qword_280F914F0);
    swift_beginAccess();
    (*(v7 + 16))(v12, v13, v6);

    v14 = sub_2664DFE18();
    v15 = sub_2664E06E8();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v23 = v17;
      *v16 = 136315138;
      *(v16 + 4) = sub_2662A320C(a2, a3, &v23);
      _os_log_impl(&dword_26629C000, v14, v15, "SRTBreachManager#checkForSRTBreach createTailSpinFile generated: %s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v17);
      MEMORY[0x266784AD0](v17, -1, -1);
      MEMORY[0x266784AD0](v16, -1, -1);
    }

    (*(v7 + 8))(v12, v6);
  }

  else
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v18 = __swift_project_value_buffer(v6, qword_280F914F0);
    swift_beginAccess();
    (*(v7 + 16))(v10, v18, v6);
    v19 = sub_2664DFE18();
    v20 = sub_2664E06D8();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_26629C000, v19, v20, "SRTBreachManager#checkForSRTBreach failed to create tailspin file", v21, 2u);
      MEMORY[0x266784AD0](v21, -1, -1);
    }

    (*(v7 + 8))(v10, v6);
  }

  if (qword_280071D10 != -1)
  {
    swift_once();
  }

  return sub_2664E0888();
}

void *sub_2664D65DC()
{
  type metadata accessor for ErrorFilingProvider.TrialClientManager();
  swift_allocObject();
  result = sub_2664D665C();
  qword_2800741F8 = result;
  return result;
}

id sub_2664D661C()
{
  result = [objc_opt_self() clientWithIdentifier_];
  qword_280074200 = result;
  return result;
}

void *sub_2664D665C()
{
  v1 = v0;
  v31 = *v0;
  v2 = sub_2664E0038();
  v30 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2664E00B8();
  v28 = *(v5 - 8);
  v29 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2664DFE38();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v8, qword_280F914F0);
  swift_beginAccess();
  (*(v9 + 16))(v11, v12, v8);
  v13 = sub_2664DFE18();
  v14 = sub_2664E06C8();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_26629C000, v13, v14, "ErrorFilingProvider#TrialClientManager#init", v15, 2u);
    MEMORY[0x266784AD0](v15, -1, -1);
  }

  (*(v9 + 8))(v11, v8);
  if (qword_280071D00 != -1)
  {
    swift_once();
  }

  v16 = qword_2800741D0;
  v37 = sub_2664DCE48;
  v38 = v1;
  aBlock = MEMORY[0x277D85DD0];
  v34 = 1107296256;
  v35 = sub_2662A3F90;
  v36 = &block_descriptor_57;
  v17 = _Block_copy(&aBlock);

  sub_2664E0068();
  v32 = MEMORY[0x277D84F90];
  sub_2662A3CE8(&qword_280F8F6A0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280074210, &qword_2664E3640);
  sub_2662A5AC8();
  sub_2664E0A08();
  MEMORY[0x266783800](0, v7, v4, v17);
  _Block_release(v17);
  (*(v30 + 8))(v4, v2);
  (*(v28 + 8))(v7, v29);

  sub_2664D7E80();
  if (qword_280071D20 != -1)
  {
    swift_once();
  }

  v18 = qword_280074200;
  v19 = sub_2664E02A8();
  v20 = swift_allocObject();
  v21 = v31;
  *(v20 + 16) = v1;
  *(v20 + 24) = v21;
  v37 = sub_2664DCE4C;
  v38 = v20;
  aBlock = MEMORY[0x277D85DD0];
  v34 = 1107296256;
  v35 = sub_2664D5614;
  v36 = &block_descriptor_63;
  v22 = _Block_copy(&aBlock);

  v23 = [v18 addUpdateHandlerForNamespaceName:v19 queue:v16 usingBlock:v22];
  _Block_release(v22);
  swift_unknownObjectRelease();

  v24 = sub_2664E0488();
  v25 = sub_2664E02A8();
  v37 = sub_2664D6F20;
  v38 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v34 = 1107296256;
  v35 = sub_2664D741C;
  v36 = &block_descriptor_66_1;
  v26 = _Block_copy(&aBlock);
  [v18 downloadLevelsForFactors:v24 withNamespace:v25 queue:v16 options:0 progress:0 completion:v26];
  _Block_release(v26);

  return v1;
}

uint64_t sub_2664D6C98(uint64_t a1)
{
  v2 = sub_2664DFE38();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v2, qword_280F914F0);
  swift_beginAccess();
  (*(v3 + 16))(v5, v6, v2);
  swift_unknownObjectRetain();
  v7 = sub_2664DFE18();
  v8 = sub_2664E06C8();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v15[1] = a1;
    v16 = v10;
    *v9 = 136315138;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280073330, &unk_2664EA450);
    v11 = sub_2664E0318();
    v13 = sub_2662A320C(v11, v12, &v16);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_26629C000, v7, v8, "ErrorFilingProvider#TrialClientManager update handler called with %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x266784AD0](v10, -1, -1);
    MEMORY[0x266784AD0](v9, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  if (qword_280071D20 != -1)
  {
    swift_once();
  }

  [qword_280074200 refresh];
  return sub_2664DC4A4();
}

uint64_t sub_2664D6F20(uint64_t a1, void *a2)
{
  v3 = sub_2664DFE38();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v41 = (&v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v40 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = &v40 - v10;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v3, qword_280F914F0);
  swift_beginAccess();
  v13 = *(v4 + 16);
  v13(v11, v12, v3);
  v14 = sub_2664DFE18();
  v15 = sub_2664E06C8();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v40 = v3;
    v17 = v4;
    v18 = v9;
    v19 = a2;
    v20 = v16;
    *v16 = 0;
    _os_log_impl(&dword_26629C000, v14, v15, "ErrorFilingProvider#TrialClientManager downloadLevels", v16, 2u);
    v21 = v20;
    a2 = v19;
    v9 = v18;
    v4 = v17;
    v3 = v40;
    MEMORY[0x266784AD0](v21, -1, -1);
  }

  v22 = *(v4 + 8);
  v22(v11, v3);
  if (a2)
  {
    v13(v9, v12, v3);
    v23 = a2;
    v24 = sub_2664DFE18();
    v25 = sub_2664E06D8();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v41 = v22;
      v28 = v27;
      v42 = v27;
      *v26 = 136315650;
      *(v26 + 4) = sub_2662A320C(0xD000000000000019, 0x80000002664F33D0, &v42);
      v29 = a2;
      *(v26 + 12) = 2080;
      *(v26 + 14) = sub_2662A320C(0xD000000000000023, 0x80000002664FC420, &v42);
      *(v26 + 22) = 2080;
      swift_getErrorValue();
      v30 = sub_2664E0DE8();
      v32 = sub_2662A320C(v30, v31, &v42);

      *(v26 + 24) = v32;
      _os_log_impl(&dword_26629C000, v24, v25, "Error downloading levels for factor: %s in namespace: %s. Error: %s", v26, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x266784AD0](v28, -1, -1);
      MEMORY[0x266784AD0](v26, -1, -1);

      return v41(v9, v3);
    }

    v39 = v9;
  }

  else
  {
    v34 = v41;
    v13(v41, v12, v3);
    v35 = sub_2664DFE18();
    v36 = sub_2664E06B8();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v42 = v38;
      *v37 = 136315394;
      *(v37 + 4) = sub_2662A320C(0xD000000000000019, 0x80000002664F33D0, &v42);
      *(v37 + 12) = 2080;
      *(v37 + 14) = sub_2662A320C(0xD000000000000023, 0x80000002664FC420, &v42);
      _os_log_impl(&dword_26629C000, v35, v36, "Successfully downloaded levels for factor: %s in namespace: %s", v37, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266784AD0](v38, -1, -1);
      MEMORY[0x266784AD0](v37, -1, -1);
    }

    v39 = v34;
  }

  return (v22)(v39, v3);
}

void sub_2664D741C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_2664D7494()
{
  v1 = v0;
  v2 = sub_2664E0038();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2664E00B8();
  v28 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v27 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2664DFE38();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v8, qword_280F914F0);
  swift_beginAccess();
  (*(v9 + 16))(v11, v12, v8);
  v13 = sub_2664DFE18();
  v14 = sub_2664E06B8();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v26 = v5;
    v16 = v6;
    v17 = v2;
    v18 = v3;
    v19 = v1;
    v20 = v15;
    *v15 = 0;
    _os_log_impl(&dword_26629C000, v13, v14, "ErrorFilingProvider#deinit", v15, 2u);
    v21 = v20;
    v1 = v19;
    v3 = v18;
    v2 = v17;
    v6 = v16;
    v5 = v26;
    MEMORY[0x266784AD0](v21, -1, -1);
  }

  (*(v9 + 8))(v11, v8);
  sub_2664259E0();
  v22 = sub_2664E07C8();
  aBlock[4] = sub_2664DCE40;
  aBlock[5] = v1;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2662A3F90;
  aBlock[3] = &block_descriptor_54_0;
  v23 = _Block_copy(aBlock);

  v24 = v27;
  sub_2664E0068();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_2662A3CE8(&qword_280F8F6A0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280074210, &qword_2664E3640);
  sub_2662A5AC8();
  sub_2664E0A08();
  MEMORY[0x266783800](0, v24, v5, v23);
  _Block_release(v23);

  (*(v3 + 8))(v5, v2);
  (*(v28 + 8))(v24, v6);
  return v1;
}

void sub_2664D78DC(const void *a1)
{
  DistributedCenter = CFNotificationCenterGetDistributedCenter();
  if (DistributedCenter)
  {
    v3 = DistributedCenter;
    v4 = sub_2664E02A8();
    CFNotificationCenterRemoveObserver(v3, a1, v4, 0);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2664D796C()
{
  sub_2664D7494();

  return swift_deallocClassInstance();
}

uint64_t static ErrorFilingProvider.setTrialPolicy(dataPolicy:)(uint64_t a1, unint64_t a2)
{
  v4 = sub_2664E0038();
  v30 = *(v4 - 8);
  v31 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2664E00B8();
  v28 = *(v7 - 8);
  v29 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2664DFE38();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v10, qword_280F914F0);
  swift_beginAccess();
  (*(v11 + 16))(v13, v14, v10);
  sub_26648736C(a1, a2);
  v15 = sub_2664DFE18();
  v16 = sub_2664E06C8();
  if (!os_log_type_enabled(v15, v16))
  {
    sub_2662B79A8(a1, a2);
    goto LABEL_8;
  }

  result = swift_slowAlloc();
  v18 = result;
  *result = 134217984;
  if (a2 >> 60 == 15)
  {
    goto LABEL_5;
  }

  v23 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v23)
    {
      v19 = BYTE6(a2);
      goto LABEL_6;
    }

LABEL_18:
    LODWORD(v19) = HIDWORD(a1) - a1;
    if (__OFSUB__(HIDWORD(a1), a1))
    {
      __break(1u);
      return result;
    }

    v19 = v19;
    goto LABEL_6;
  }

  if (v23 == 2)
  {
    v25 = *(a1 + 16);
    v24 = *(a1 + 24);
    v26 = __OFSUB__(v24, v25);
    v19 = v24 - v25;
    if (!v26)
    {
      goto LABEL_6;
    }

    __break(1u);
    goto LABEL_18;
  }

LABEL_5:
  v19 = 0;
LABEL_6:
  *(result + 4) = v19;
  sub_2662B79A8(a1, a2);
  _os_log_impl(&dword_26629C000, v15, v16, "ErrorFilingProvider#setTrialPolicy... policy is %ld bytes", v18, 0xCu);
  MEMORY[0x266784AD0](v18, -1, -1);
LABEL_8:

  (*(v11 + 8))(v13, v10);
  if (qword_280071D00 != -1)
  {
    swift_once();
  }

  v20 = swift_allocObject();
  v20[2] = a1;
  v20[3] = a2;
  v20[4] = v27[1];
  aBlock[4] = sub_2664DC178;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2662A3F90;
  aBlock[3] = &block_descriptor_9_3;
  v21 = _Block_copy(aBlock);
  sub_26648736C(a1, a2);
  sub_2664E0068();
  v32 = MEMORY[0x277D84F90];
  sub_2662A3CE8(&qword_280F8F6A0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280074210, &qword_2664E3640);
  sub_2662A5AC8();
  v22 = v31;
  sub_2664E0A08();
  MEMORY[0x266783800](0, v9, v6, v21);
  _Block_release(v21);
  (*(v30 + 8))(v6, v22);
  (*(v28 + 8))(v9, v29);
}

void sub_2664D7E80()
{
  v1 = v0;
  v2 = sub_2664DFE38();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v2, qword_280F914F0);
  swift_beginAccess();
  (*(v3 + 16))(v5, v6, v2);
  v7 = sub_2664DFE18();
  v8 = sub_2664E06C8();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_26629C000, v7, v8, "ErrorFilingProvider#registerForSRTNotifications...", v9, 2u);
    MEMORY[0x266784AD0](v9, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  DistributedCenter = CFNotificationCenterGetDistributedCenter();
  if (DistributedCenter)
  {
    v11 = DistributedCenter;
    v12 = sub_2664E02A8();
    CFNotificationCenterAddObserver(v11, v1, sub_2664D8094, v12, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  else
  {
    __break(1u);
  }
}

void sub_2664D8094(void *a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v8 = a1;
  v9 = a3;
  v10 = a5;
  sub_2664DCA74(a2, a5);
}

uint64_t static ErrorFilingProvider.setupTrialClient()()
{
  v0 = sub_2664E0038();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2664E0058();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2664E00B8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = AFIsInternalInstall();
  if (result)
  {
    sub_2664E0078();
    sub_2664259E0();
    v16[0] = v1;
    sub_2664E00A8();
    v13 = sub_2664E0808();
    (*(v5 + 8))(v7, v4);
    v14 = *(v9 + 8);
    v14(v11, v8);
    aBlock[4] = sub_2664D8464;
    aBlock[5] = 0;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2662A3F90;
    aBlock[3] = &block_descriptor_12_4;
    v15 = _Block_copy(aBlock);
    sub_2664E0068();
    v16[1] = MEMORY[0x277D84F90];
    sub_2662A3CE8(&qword_280F8F6A0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280074210, &qword_2664E3640);
    sub_2662A5AC8();
    sub_2664E0A08();
    MEMORY[0x266783800](0, v11, v3, v15);
    _Block_release(v15);

    (*(v16[0] + 8))(v3, v0);
    return (v14)(v11, v8);
  }

  return result;
}

uint64_t sub_2664D8464()
{
  v0 = sub_2664DFE38();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v4 = __swift_project_value_buffer(v0, qword_280F914F0);
  swift_beginAccess();
  (*(v1 + 16))(v3, v4, v0);
  v5 = sub_2664DFE18();
  v6 = sub_2664E06C8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_26629C000, v5, v6, "ErrorFilingProvider#setupTrialClient...", v7, 2u);
    MEMORY[0x266784AD0](v7, -1, -1);
  }

  result = (*(v1 + 8))(v3, v0);
  if (qword_280071D18 != -1)
  {
    return swift_once();
  }

  return result;
}

uint64_t sub_2664D8638()
{
  v1 = *(v0 + 16);
  v2 = qword_2800741D8;
  v3 = unk_2800741E0;
  v4 = *v1;
  v5 = v1[1];
  *v1 = qword_2800741D8;
  v1[1] = v3;
  sub_26648736C(v2, v3);

  return sub_2662B79A8(v4, v5);
}

uint64_t static ErrorFilingProvider.setErrorFilingInfo(errorCode:errorTitle:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_2664E0038();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_2664E00B8();
  v13 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v15 = v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280071D00 != -1)
  {
    swift_once();
  }

  v19[1] = qword_2800741D0;
  v16 = swift_allocObject();
  v16[2] = a1;
  v16[3] = a2;
  v16[4] = a3;
  v16[5] = a4;
  v16[6] = v4;
  aBlock[4] = sub_2664DC1C4;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2662A3F90;
  aBlock[3] = &block_descriptor_18_0;
  v17 = _Block_copy(aBlock);

  sub_2664E0068();
  v21 = MEMORY[0x277D84F90];
  sub_2662A3CE8(&qword_280F8F6A0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280074210, &qword_2664E3640);
  sub_2662A5AC8();
  sub_2664E0A08();
  MEMORY[0x266783800](0, v15, v12, v17);
  _Block_release(v17);
  (*(v10 + 8))(v12, v9);
  (*(v13 + 8))(v15, v20);
}

uint64_t sub_2664D897C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_280071D08 != -1)
  {
    v9 = a1;
    swift_once();
    a1 = v9;
  }

  v7 = MEMORY[0x277D837D0];
  v11 = MEMORY[0x277D837D0];
  *&v10 = a1;
  *(&v10 + 1) = a2;
  swift_beginAccess();

  sub_2664AABB0(&v10, 0xD000000000000010, 0x80000002664FC220, v12);
  swift_endAccess();
  result = sub_2662A9238(v12, &unk_280074250, &unk_2664E3680);
  if (a4)
  {
    v11 = v7;
    *&v10 = a3;
    *(&v10 + 1) = a4;
    swift_beginAccess();

    sub_2664AABB0(&v10, 0xD000000000000011, 0x80000002664FC240, v12);
    swift_endAccess();
    return sub_2662A9238(v12, &unk_280074250, &unk_2664E3680);
  }

  return result;
}

unint64_t static ErrorFilingProvider.getErrorFilingInfo()()
{
  v8 = sub_2663854AC(MEMORY[0x277D84F90]);
  if (qword_280071D00 != -1)
  {
    swift_once();
  }

  v1 = qword_2800741D0;
  v2 = swift_allocObject();
  *(v2 + 16) = &v8;
  *(v2 + 24) = v0;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_2664DC1D4;
  *(v3 + 24) = v2;
  aBlock[4] = sub_2663CD054;
  aBlock[5] = v3;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2662ABACC;
  aBlock[3] = &block_descriptor_28_1;
  v4 = _Block_copy(aBlock);

  dispatch_sync(v1, v4);
  _Block_release(v4);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  else
  {
    v6 = v8;

    return v6;
  }

  return result;
}

uint64_t sub_2664D8C8C(uint64_t *a1)
{
  if (qword_280071D08 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = qword_2800741E8;
}

uint64_t static ErrorFilingProvider.clearErrorFilingInfo()()
{
  v0 = sub_2664E0038();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2664E00B8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280071D00 != -1)
  {
    swift_once();
  }

  aBlock[4] = sub_2664D95D4;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2662A3F90;
  aBlock[3] = &block_descriptor_31_0;
  v8 = _Block_copy(aBlock);
  sub_2664E0068();
  v10[1] = MEMORY[0x277D84F90];
  sub_2662A3CE8(&qword_280F8F6A0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280074210, &qword_2664E3640);
  sub_2662A5AC8();
  sub_2664E0A08();
  MEMORY[0x266783800](0, v7, v3, v8);
  _Block_release(v8);
  (*(v1 + 8))(v3, v0);
  (*(v5 + 8))(v7, v4);
}

uint64_t static ErrorFilingProvider.generateABCSnapshot(errorToReport:errorDomain:errorType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v27 = a6;
  v28 = a4;
  v29 = a2;
  v6 = sub_2664DFE38();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v27 - v11;
  v13 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v14 = sub_2664E02A8();
  v15 = [v13 initWithSuiteName_];

  if (v15 && (v16 = sub_2664E02A8(), v17 = [v15 BOOLForKey_], v15, v16, (v17 & 1) != 0))
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v18 = __swift_project_value_buffer(v6, qword_280F914F0);
    swift_beginAccess();
    (*(v7 + 16))(v10, v18, v6);
    v19 = sub_2664DFE18();
    v20 = sub_2664E06D8();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_26629C000, v19, v20, "ErrorFilingProvider#generateABCSnapshot no-op because disabled!", v21, 2u);
      MEMORY[0x266784AD0](v21, -1, -1);
    }

    return (*(v7 + 8))(v10, v6);
  }

  else
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v23 = __swift_project_value_buffer(v6, qword_280F914F0);
    swift_beginAccess();
    (*(v7 + 16))(v12, v23, v6);
    v24 = sub_2664DFE18();
    v25 = sub_2664E06E8();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_26629C000, v24, v25, "ErrorFilingProvider#generateABCSnapshot called to capture some error condition", v26, 2u);
      MEMORY[0x266784AD0](v26, -1, -1);
    }

    (*(v7 + 8))(v12, v6);
    sub_2664DF638();
    swift_allocObject();
    sub_2664DF628();
    sub_2664DF618();
  }
}

uint64_t sub_2664D93DC(char a1, const char *a2, ...)
{
  v4 = sub_2664DFE38();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v4, qword_280F914F0);
  swift_beginAccess();
  (*(v5 + 16))(v7, v8, v4);
  v9 = sub_2664DFE18();
  v10 = sub_2664E06E8();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 67109120;
    *(v11 + 4) = a1 & 1;
    _os_log_impl(&dword_26629C000, v9, v10, a2, v11, 8u);
    MEMORY[0x266784AD0](v11, -1, -1);
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_2664D95D4()
{
  if (qword_280071D08 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_2800741E8 = MEMORY[0x277D84F98];
}

uint64_t _s16SiriAudioSupport19ErrorFilingProviderC20collectAnyExtraFiles22filePathsAndExtensionsSay10Foundation3URLVGSDyS2SG_tFZ_0(uint64_t a1)
{
  v119 = *MEMORY[0x277D85DE8];
  v2 = sub_2664DFE38();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v92 = &v88 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v91 = &v88 - v7;
  MEMORY[0x28223BE20](v6);
  v9 = &v88 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072BC0, &qword_2664E6030);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v88 - v11;
  v13 = sub_2664DE268();
  v14 = MEMORY[0x28223BE20](v13);
  v111 = &v88 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v115 = &v88 - v17;
  MEMORY[0x28223BE20](v16);
  v101 = &v88 - v19;
  v20 = *(a1 + 64);
  v21 = 1 << *(a1 + 32);
  v22 = -1;
  v116 = MEMORY[0x277D84F90];
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & v20;
  v104 = (v21 + 63) >> 6;
  v102 = (v18 + 48);
  v113 = (v18 + 32);
  v107 = v18 + 16;
  v108 = v18;
  v105 = (v18 + 8);
  v98 = (v3 + 16);
  v24 = (v3 + 8);
  v25 = a1 + 64;
  v97 = v24;

  v26 = 0;
  v89 = 0;
  v27.n128_u64[0] = 136315138;
  v90 = v27;
  v27.n128_u64[0] = 136315650;
  v88 = v27;
  v100 = v2;
  v106 = v13;
  v96 = a1;
  v93 = v9;
  v95 = v12;
  v94 = a1 + 64;
LABEL_5:
  if (v23)
  {
    goto LABEL_10;
  }

  while (1)
  {
    v28 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      __break(1u);
LABEL_45:
      __break(1u);
      goto LABEL_46;
    }

    if (v28 >= v104)
    {
      break;
    }

    v23 = *(v25 + 8 * v28);
    ++v26;
    if (v23)
    {
      v26 = v28;
LABEL_10:
      v29 = __clz(__rbit64(v23));
      v23 &= v23 - 1;
      v30 = (v26 << 10) | (16 * v29);
      v31 = (*(a1 + 48) + v30);
      v32 = *v31;
      v33 = v31[1];
      v34 = (*(a1 + 56) + v30);
      v35 = v34[1];
      v114 = *v34;

      v103 = v32;
      sub_2664DE258();
      if ((*v102)(v12, 1, v13) == 1)
      {

        sub_2662A9238(v12, &qword_280072BC0, &qword_2664E6030);
      }

      else
      {
        v110 = v35;
        v99 = v33;
        v112 = *v113;
        v112(v101, v12, v13);
        v36 = [objc_opt_self() defaultManager];
        v37 = sub_2664DE208();
        v118 = 0;
        v38 = [v36 contentsOfDirectoryAtURL:v37 includingPropertiesForKeys:0 options:0 error:&v118];

        v39 = v118;
        if (v38)
        {
          v40 = sub_2664E04A8();
          v41 = v39;

          v42 = v110;
          v109 = *(v40 + 16);
          if (v109)
          {
            v43 = 0;
            v44 = MEMORY[0x277D84F90];
            while (1)
            {
              if (v43 >= *(v40 + 16))
              {
                goto LABEL_45;
              }

              v45 = (*(v108 + 80) + 32) & ~*(v108 + 80);
              v46 = *(v108 + 72);
              (*(v108 + 16))(v115, v40 + v45 + v46 * v43, v13);
              if (sub_2664DE1D8() == v114 && v47 == v42)
              {
                break;
              }

              v48 = sub_2664E0D88();

              if (v48)
              {
                goto LABEL_21;
              }

              (*v105)(v115, v13);
LABEL_15:
              ++v43;
              v42 = v110;
              if (v109 == v43)
              {
                goto LABEL_31;
              }
            }

LABEL_21:
            v112(v111, v115, v13);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v118 = v44;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_2662FD240(0, *(v44 + 2) + 1, 1);
              v44 = v118;
            }

            v51 = *(v44 + 2);
            v50 = *(v44 + 3);
            if (v51 >= v50 >> 1)
            {
              sub_2662FD240((v50 > 1), v51 + 1, 1);
              v44 = v118;
            }

            *(v44 + 2) = v51 + 1;
            v52 = v44 + v45 + v51 * v46;
            v13 = v106;
            v112(v52, v111, v106);
            goto LABEL_15;
          }

          v44 = MEMORY[0x277D84F90];
LABEL_31:

          if (qword_280F914E8 != -1)
          {
            swift_once();
          }

          v64 = v100;
          v65 = __swift_project_value_buffer(v100, qword_280F914F0);
          swift_beginAccess();
          v66 = v93;
          (*v98)(v93, v65, v64);
          swift_retain_n();
          v67 = v99;

          v68 = sub_2664DFE18();
          v69 = sub_2664E06C8();

          if (os_log_type_enabled(v68, v69))
          {
            v70 = swift_slowAlloc();
            LODWORD(v110) = v69;
            v71 = v70;
            v112 = swift_slowAlloc();
            v118 = v112;
            *v71 = v88.n128_u32[0];
            v72 = sub_2662A320C(v103, v67, &v118);

            *(v71 + 4) = v72;
            *(v71 + 12) = 2080;
            v73 = sub_2662A320C(v114, v42, &v118);

            *(v71 + 14) = v73;
            *(v71 + 22) = 2048;
            v74 = *(v44 + 2);

            *(v71 + 24) = v74;

            _os_log_impl(&dword_26629C000, v68, v110, "ErrorFilingProvider#collectAnyExtraFiles looking in %s, for %s extensions, found %ld", v71, 0x20u);
            v75 = v112;
            swift_arrayDestroy();
            MEMORY[0x266784AD0](v75, -1, -1);
            MEMORY[0x266784AD0](v71, -1, -1);

            (*v97)(v66, v100);
          }

          else
          {

            (*v97)(v66, v64);
          }

          sub_2662FA11C(v44);
          (*v105)(v101, v13);
        }

        else
        {
          v53 = v118;

          v54 = sub_2664DE1A8();

          swift_willThrow();
          v55 = v92;
          if (qword_280F914E8 != -1)
          {
            swift_once();
          }

          v56 = v100;
          v57 = __swift_project_value_buffer(v100, qword_280F914F0);
          swift_beginAccess();
          (*v98)(v55, v57, v56);
          v58 = v99;

          v59 = sub_2664DFE18();
          v60 = sub_2664E06D8();

          if (os_log_type_enabled(v59, v60))
          {
            v61 = swift_slowAlloc();
            v62 = swift_slowAlloc();
            v118 = v62;
            *v61 = v90.n128_u32[0];
            v63 = sub_2662A320C(v103, v58, &v118);

            *(v61 + 4) = v63;
            _os_log_impl(&dword_26629C000, v59, v60, "ErrorFilingProvider#collectAnyExtraFiles error fetching attachment(s) for directory: %s", v61, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v62);
            MEMORY[0x266784AD0](v62, -1, -1);
            MEMORY[0x266784AD0](v61, -1, -1);

            (*v97)(v92, v100);
          }

          else
          {

            (*v97)(v55, v56);
          }

          (*v105)(v101, v13);
          v89 = 0;
        }

        a1 = v96;
        v12 = v95;
        v25 = v94;
      }

      goto LABEL_5;
    }
  }

  if (qword_280F914E8 == -1)
  {
    goto LABEL_41;
  }

LABEL_46:
  swift_once();
LABEL_41:
  v76 = v100;
  v77 = __swift_project_value_buffer(v100, qword_280F914F0);
  swift_beginAccess();
  v78 = v91;
  (*v98)(v91, v77, v76);
  v79 = v116;

  v80 = sub_2664DFE18();
  v81 = sub_2664E06B8();

  if (os_log_type_enabled(v80, v81))
  {
    v82 = swift_slowAlloc();
    v83 = swift_slowAlloc();
    v117 = v83;
    *v82 = v90.n128_u32[0];
    v84 = MEMORY[0x2667834D0](v79, v13);
    v86 = sub_2662A320C(v84, v85, &v117);

    *(v82 + 4) = v86;
    _os_log_impl(&dword_26629C000, v80, v81, "ErrorFilingProvider#collectAnyExtraFiles: %s", v82, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v83);
    MEMORY[0x266784AD0](v83, -1, -1);
    MEMORY[0x266784AD0](v82, -1, -1);
  }

  (*v97)(v78, v76);
  return v79;
}

uint64_t sub_2664DA31C(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unint64_t a11, uint64_t a12, unint64_t a13)
{
  v86 = a8;
  v87 = a7;
  v83 = a6;
  v80 = a5;
  v81 = a2;
  v78 = a3;
  v79 = a1;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280074260, qword_2664F0C68);
  MEMORY[0x28223BE20](v14 - 8);
  v91 = &v72 - v15;
  v92 = sub_2664DFB28();
  v90 = *(v92 - 8);
  MEMORY[0x28223BE20](v92);
  v89 = &v72 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280074230, &qword_2664EF6F0);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v72 - v18;
  v93 = sub_2664DFB08();
  v88 = *(v93 - 8);
  v20 = MEMORY[0x28223BE20](v93);
  v82 = &v72 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v85 = &v72 - v22;
  v23 = sub_2664DFE38();
  v24 = *(v23 - 8);
  v25 = MEMORY[0x28223BE20](v23);
  v27 = &v72 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v29 = &v72 - v28;
  v30 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v84 = "leUniversalStoreIdentifiers>8";
  v31 = sub_2664E02A8();
  v32 = [v30 initWithSuiteName_];

  if (v32 && (v33 = sub_2664E02A8(), v34 = [v32 BOOLForKey_], v32, v33, (v34 & 1) != 0))
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v35 = __swift_project_value_buffer(v23, qword_280F914F0);
    swift_beginAccess();
    (*(v24 + 16))(v27, v35, v23);
    v36 = sub_2664DFE18();
    v37 = sub_2664E06D8();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_26629C000, v36, v37, "ErrorFilingProvider#fileTTR no-op because disabled!", v38, 2u);
      MEMORY[0x266784AD0](v38, -1, -1);
    }

    return (*(v24 + 8))(v27, v23);
  }

  else
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v40 = __swift_project_value_buffer(v23, qword_280F914F0);
    swift_beginAccess();
    (*(v24 + 16))(v29, v40, v23);
    v41 = sub_2664DFE18();
    v42 = sub_2664E06E8();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&dword_26629C000, v41, v42, "ErrorFilingProvider#fileTTR called to capture some error condition", v43, 2u);
      MEMORY[0x266784AD0](v43, -1, -1);
    }

    v74 = a9;
    v44 = a11;

    (*(v24 + 8))(v29, v23);
    v45 = static ErrorFilingProvider.getTrialPolicy()();
    if (v46 >> 60 == 15)
    {
      v47 = 0;
    }

    else
    {
      v47 = v45;
    }

    if (v46 >> 60 == 15)
    {
      v48 = 0xC000000000000000;
    }

    else
    {
      v48 = v46;
    }

    v49 = v78;
    if (!a4)
    {
      v49 = 0;
    }

    v73 = v49;
    v50 = 0xE000000000000000;
    if (a4)
    {
      v51 = a4;
    }

    else
    {
      v51 = 0xE000000000000000;
    }

    sub_2664DFBA8();
    swift_allocObject();
    sub_2663C50C4(v47, v48);

    v78 = v47;
    v77 = v48;
    v75 = sub_2664DFB88();
    if (a13)
    {
      v94 = a12;
      v95 = a13;

      MEMORY[0x2667833B0](8236, 0xE200000000000000);
      v52 = v94;
      v50 = v95;
    }

    else
    {
      v52 = 0;
    }

    v76 = a12;
    if (a11)
    {

      v54 = v81;
      v55 = v79;
    }

    else
    {
      v94 = 0;
      v95 = 0xE000000000000000;
      sub_2664E0B28();
      MEMORY[0x2667833B0](0xD00000000000002DLL, 0x80000002664FC560);
      MEMORY[0x2667833B0](v73, v51);

      MEMORY[0x2667833B0](v52, v50);

      v55 = v79;
      v54 = v81;
      MEMORY[0x2667833B0](v79, v81);
      a10 = v94;
      v44 = v95;
    }

    v81 = a13;
    v72 = v44;
    v79 = a10;
    if (a13)
    {
      v56 = v55;
    }

    else
    {
      v56 = a10;
    }

    v73 = v56;

    if (v83)
    {
      v57 = v80;
    }

    else
    {
      v57 = 0;
    }

    if (v83)
    {
      v58 = v83;
    }

    else
    {
      v58 = 0xE000000000000000;
    }

    v94 = v55;
    v95 = v54;

    MEMORY[0x2667833B0](v57, v58);

    sub_2664DCE54(v74, v19);
    v59 = v88;
    v60 = *(v88 + 48);
    v61 = v93;
    if (v60(v19, 1, v93) == 1)
    {
      v62 = v82;
      MEMORY[0x266782B10](0xD000000000000011, 0x80000002664FC520, 0x6F69647541, 0xE500000000000000, 1050192);
      v63 = v62;
      if (v60(v19, 1, v61) != 1)
      {
        sub_2662A9238(v19, &unk_280074230, &qword_2664EF6F0);
      }
    }

    else
    {
      v63 = v82;
      (*(v59 + 32))(v82, v19, v61);
    }

    v64 = v85;
    (*(v59 + 32))(v85, v63, v61);
    v65 = v87;

    v67 = v59;
    v68 = v89;
    MEMORY[0x266782B30](v66, &unk_2877E5828, v65, 0xD00000000000001ALL, 0x80000002664FC590);
    v70 = v90;
    v69 = v91;
    v71 = v92;
    (*(v90 + 16))(v91, v68, v92);
    (*(v70 + 56))(v69, 0, 1, v71);
    sub_2664DFB78();

    sub_266348774(v78, v77);
    sub_2662A9238(v69, &qword_280074260, qword_2664F0C68);
    (*(v70 + 8))(v68, v71);
    return (*(v67 + 8))(v64, v93);
  }
}

uint64_t sub_2664DACD0(uint64_t a1)
{
  v82 = sub_2664E0038();
  v81 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v80 = &v73 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_2664E0058();
  v76 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v75 = &v73 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_2664E00B8();
  v79 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v78 = &v73 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280074220, &qword_2664F0C60);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v73 - v6;
  v8 = sub_2664DFBD8();
  v87 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v73 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2664DFE38();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v90 = &v73 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v91 = &v73 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v89 = &v73 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v88 = &v73 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v73 - v22;
  MEMORY[0x28223BE20](v21);
  v25 = &v73 - v24;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v26 = __swift_project_value_buffer(v11, qword_280F914F0);
  swift_beginAccess();
  v27 = *(v12 + 16);
  v93 = v12 + 16;
  v94 = v26;
  v92 = v27;
  v27(v25, v26, v11);

  v28 = sub_2664DFE18();
  v29 = sub_2664E06C8();

  v30 = os_log_type_enabled(v28, v29);
  v86 = v10;
  v85 = v23;
  if (v30)
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v84 = v8;
    v74 = v12;
    v33 = v32;
    aBlock[0] = v32;
    *v31 = 136315138;
    v96 = a1;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073430, &qword_2664EADE0);
    v34 = sub_2664E0318();
    v36 = v7;
    v37 = v11;
    v38 = sub_2662A320C(v34, v35, aBlock);

    *(v31 + 4) = v38;
    v11 = v37;
    v7 = v36;
    _os_log_impl(&dword_26629C000, v28, v29, "SRTBreachManager#checkForSRTBreach called with payload: %s", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v33);
    v39 = v33;
    v12 = v74;
    v8 = v84;
    MEMORY[0x266784AD0](v39, -1, -1);
    MEMORY[0x266784AD0](v31, -1, -1);
  }

  v40 = *(v12 + 8);
  v40(v25, v11);
  if (!a1)
  {
    v43 = v90;
    v92(v90, v94, v11);
    v44 = sub_2664DFE18();
    v45 = sub_2664E06D8();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      v47 = "SRTBreachManager#checkForSRTBreach no-op with payload nil";
LABEL_25:
      _os_log_impl(&dword_26629C000, v44, v45, v47, v46, 2u);
      MEMORY[0x266784AD0](v46, -1, -1);
    }

LABEL_26:

    v40(v43, v11);
    return 0;
  }

  if (!*(a1 + 16))
  {
    goto LABEL_23;
  }

  v41 = sub_2662A3E98(0xD000000000000012, 0x80000002664FC3B0);
  if ((v42 & 1) == 0)
  {
    goto LABEL_23;
  }

  sub_2662A01E8(*(a1 + 56) + 32 * v41, aBlock);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_23;
  }

  if (v96 != 0xD00000000000002CLL || 0x80000002664FC3D0 != v97)
  {
    v48 = sub_2664E0D88();

    if (v48)
    {
      goto LABEL_15;
    }

LABEL_23:
    v43 = v91;
    v92(v91, v94, v11);
    v44 = sub_2664DFE18();
    v45 = sub_2664E06C8();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      v47 = "SRTBreachManager#checkForSRTBreach plugin not matching, ignoring";
      goto LABEL_25;
    }

    goto LABEL_26;
  }

LABEL_15:
  if (!*(a1 + 16) || (v49 = sub_2662A3E98(0x656D6954545253, 0xE700000000000000), (v50 & 1) == 0) || (sub_2662A01E8(*(a1 + 56) + 32 * v49, aBlock), (swift_dynamicCast() & 1) == 0))
  {
    v43 = v89;
    v92(v89, v94, v11);
    v44 = sub_2664DFE18();
    v45 = sub_2664E06C8();
    if (!os_log_type_enabled(v44, v45))
    {
      goto LABEL_26;
    }

    v46 = swift_slowAlloc();
    *v46 = 0;
    v47 = "SRTBreachManager#checkForSRTBreach srtTime not applicable, ignoring";
    goto LABEL_25;
  }

  v51 = *&v96;
  type metadata accessor for ErrorFilingProvider();
  v52 = static ErrorFilingProvider.getTrialPolicy()();
  if (v53 >> 60 == 15)
  {
LABEL_21:
    v43 = v88;
    v92(v88, v94, v11);
    v44 = sub_2664DFE18();
    v45 = sub_2664E06C8();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      v47 = "SRTBreachManager#checkForSRTBreach no relevant filing policy found, ignoring";
      goto LABEL_25;
    }

    goto LABEL_26;
  }

  v54 = v52;
  v55 = v53;
  sub_2664DFBA8();
  sub_2664DFB98();
  v56 = v87;
  if ((*(v87 + 48))(v7, 1, v8) == 1)
  {
    sub_2662B79A8(v54, v55);
    sub_2662A9238(v7, &unk_280074220, &qword_2664F0C60);
    goto LABEL_21;
  }

  v91 = v54;
  v58 = v86;
  (*(v56 + 32))(v86, v7, v8);
  sub_2664DFBC8();
  if (v59 <= 0.0 || (sub_2664DFBC8(), v51 >= 60.1) || v60 >= v51)
  {
    v69 = v85;
    v92(v85, v94, v11);
    v70 = sub_2664DFE18();
    v71 = sub_2664E06C8();
    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      *v72 = 0;
      _os_log_impl(&dword_26629C000, v70, v71, "SRTBreachManager#checkForSRTBreach SRT timing not breaching policy value", v72, 2u);
      MEMORY[0x266784AD0](v72, -1, -1);
      sub_2662B79A8(v91, v55);

      v40(v69, v11);
      (*(v56 + 8))(v86, v8);
    }

    else
    {
      sub_2662B79A8(v91, v55);

      v40(v69, v11);
      (*(v56 + 8))(v58, v8);
    }

    return 0;
  }

  v61 = v78;
  sub_2664E0078();
  sub_2664259E0();
  v62 = v75;
  sub_2664E00A8();
  v94 = sub_2664E0808();
  (*(v76 + 8))(v62, v77);
  v84 = v8;
  v63 = *(v79 + 8);
  v63(v61, v83);
  v64 = swift_allocObject();
  *(v64 + 16) = v51;
  aBlock[4] = sub_2664DCE38;
  aBlock[5] = v64;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2662A3F90;
  aBlock[3] = &block_descriptor_51;
  v65 = _Block_copy(aBlock);
  sub_2664E0068();
  v96 = MEMORY[0x277D84F90];
  sub_2662A3CE8(&qword_280F8F6A0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280074210, &qword_2664E3640);
  sub_2662A5AC8();
  v66 = v80;
  v67 = v82;
  sub_2664E0A08();
  v68 = v94;
  MEMORY[0x266783800](0, v61, v66, v65);
  sub_2662B79A8(v91, v55);
  _Block_release(v65);

  (*(v81 + 8))(v66, v67);
  v63(v61, v83);
  (*(v56 + 8))(v86, v84);

  return 1;
}

uint64_t _s16SiriAudioSupport19ErrorFilingProviderC19fileTTRForSRTBreach13errorToReport11description14attachmentURLs9deviceIDs16ttrComponentInfoySS_SSSay10Foundation3URLVGSgSaySSGSg0A15FlowEnvironment012TTRComponentT0VSgtFZ_0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v52 = a4;
  v53 = a7;
  v57 = a6;
  v55 = a5;
  v50 = a3;
  v60 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280074260, qword_2664F0C68);
  MEMORY[0x28223BE20](v8 - 8);
  v62 = v49 - v9;
  v63 = sub_2664DFB28();
  v61 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v58 = v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280074230, &qword_2664EF6F0);
  MEMORY[0x28223BE20](v11 - 8);
  v51 = v49 - v12;
  v56 = sub_2664DFB08();
  v64 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v54 = v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2664DFE38();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = v49 - v19;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v59 = a1;
  v21 = __swift_project_value_buffer(v14, qword_280F914F0);
  swift_beginAccess();
  v22 = *(v15 + 16);
  v22(v20, v21, v14);
  v23 = sub_2664DFE18();
  v24 = sub_2664E06C8();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&dword_26629C000, v23, v24, "ErrorFilingProvider#fileTTRForSRTBreach...", v25, 2u);
    MEMORY[0x266784AD0](v25, -1, -1);
  }

  v26 = *(v15 + 8);
  v26(v20, v14);
  v27 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v49[4] = "leUniversalStoreIdentifiers>8";
  v28 = sub_2664E02A8();
  v29 = [v27 initWithSuiteName_];

  if (v29 && (v30 = sub_2664E02A8(), v31 = [v29 BOOLForKey_], v29, v30, (v31 & 1) != 0))
  {
    v22(v18, v21, v14);
    v32 = sub_2664DFE18();
    v33 = sub_2664E06D8();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_26629C000, v32, v33, "ErrorFilingProvider#fileTTRForSRTBreach no-op because disabled!", v34, 2u);
      MEMORY[0x266784AD0](v34, -1, -1);
    }

    return (v26)(v18, v14);
  }

  else
  {
    sub_2664DFB58();
    swift_allocObject();
    v49[3] = sub_2664DFB48();
    v65 = 0;
    v66 = 0xE000000000000000;
    sub_2664E0B28();
    MEMORY[0x2667833B0](0xD000000000000032, 0x80000002664FC4E0);
    v36 = v50;
    v37 = v52;
    MEMORY[0x2667833B0](v50, v52);
    v49[1] = v65;
    v49[2] = v66;
    v65 = v59;
    v66 = v60;

    MEMORY[0x2667833B0](32, 0xE100000000000000);

    MEMORY[0x2667833B0](v36, v37);

    v52 = v65;
    v38 = v51;
    sub_2664DCE54(v53, v51);
    v39 = v64;
    v40 = *(v64 + 48);
    v41 = v56;
    if (v40(v38, 1, v56) == 1)
    {
      v42 = v54;
      MEMORY[0x266782B10](0xD000000000000011, 0x80000002664FC520, 0x6F69647541, 0xE500000000000000, 1050192);
      if (v40(v38, 1, v41) != 1)
      {
        sub_2662A9238(v38, &unk_280074230, &qword_2664EF6F0);
      }
    }

    else
    {
      v42 = v54;
      (*(v39 + 32))(v54, v38, v41);
    }

    v43 = v57;

    v45 = v58;
    MEMORY[0x266782B30](v44, &unk_2877E5858, v43, 0xD000000000000013, 0x80000002664FC540);
    v47 = v61;
    v46 = v62;
    v48 = v63;
    (*(v61 + 16))(v62, v45, v63);
    (*(v47 + 56))(v46, 0, 1, v48);
    sub_2664DFB38();

    sub_2662A9238(v46, &qword_280074260, qword_2664F0C68);
    (*(v47 + 8))(v45, v48);
    return (*(v64 + 8))(v42, v41);
  }
}

uint64_t sub_2664DC178()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = qword_2800741D8;
  v4 = unk_2800741E0;
  qword_2800741D8 = v1;
  unk_2800741E0 = v2;
  sub_26648736C(v1, v2);

  return sub_2662B79A8(v3, v4);
}

id sub_2664DC260(uint64_t a1)
{
  v2 = sub_2664DFE38();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](a1);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v4)
  {
    result = [v4 fileValue];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v8 = result;
    v9 = [result path];

    if (v9)
    {
      v10 = sub_2664E02C8();
      v12 = v11;

      v13 = HIBYTE(v12) & 0xF;
      if ((v12 & 0x2000000000000000) == 0)
      {
        v13 = v10 & 0xFFFFFFFFFFFFLL;
      }

      if (v13)
      {
        return v10;
      }
    }
  }

  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v2, qword_280F914F0);
  swift_beginAccess();
  (*(v3 + 16))(v6, v14, v2);
  v15 = sub_2664DFE18();
  v16 = sub_2664E06C8();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_26629C000, v15, v16, "ErrorFilingProvider#TrialClientManager#getPathForFactor using default local file system path", v17, 2u);
    MEMORY[0x266784AD0](v17, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  return 0xD000000000000065;
}

uint64_t sub_2664DC4A4()
{
  v0 = sub_2664DE268();
  v42 = *(v0 - 8);
  v43 = v0;
  MEMORY[0x28223BE20](v0);
  v2 = v39 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_2664DFE38();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v44 = v39 - v9;
  MEMORY[0x28223BE20](v8);
  v11 = v39 - v10;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v39[2] = v7;
  v12 = __swift_project_value_buffer(v3, qword_280F914F0);
  swift_beginAccess();
  v45 = *(v4 + 16);
  v45(v11, v12, v3);
  v13 = sub_2664DFE18();
  v14 = sub_2664E06C8();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_26629C000, v13, v14, "ErrorFilingProvider#TrialClientManager#loadLatest...", v15, 2u);
    MEMORY[0x266784AD0](v15, -1, -1);
  }

  v41 = v2;

  v16 = *(v4 + 8);
  v16(v11, v3);
  if (qword_280071D20 != -1)
  {
    swift_once();
  }

  v17 = qword_280074200;
  v18 = sub_2664E02A8();
  v19 = sub_2664E02A8();
  v20 = [v17 levelForFactor:v18 withNamespaceName:v19];

  v40 = v20;
  v21 = sub_2664DC260(v20);
  v23 = v22;
  v24 = v44;
  v45(v44, v12, v3);

  v25 = sub_2664DFE18();
  v26 = sub_2664E06C8();

  v27 = os_log_type_enabled(v25, v26);
  v39[1] = v12;
  if (v27)
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v39[0] = v16;
    v30 = v29;
    v46 = v29;
    *v28 = 136446210;

    v31 = sub_2662A320C(v21, v23, &v46);

    *(v28 + 4) = v31;
    _os_log_impl(&dword_26629C000, v25, v26, "ErrorFilingProvider#TrialClientManager#loadLatest level path: %{public}s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v30);
    v32 = v30;
    v33 = v39[0];
    MEMORY[0x266784AD0](v32, -1, -1);
    MEMORY[0x266784AD0](v28, -1, -1);

    v33(v44, v3);
  }

  else
  {

    v16(v24, v3);
  }

  v34 = v41;
  sub_2664DE1F8();

  v35 = sub_2664DE288();
  v37 = v36;
  type metadata accessor for ErrorFilingProvider();
  sub_2663C50C4(v35, v37);
  static ErrorFilingProvider.setTrialPolicy(dataPolicy:)(v35, v37);
  sub_266348774(v35, v37);

  sub_266348774(v35, v37);
  return (*(v42 + 8))(v34, v43);
}

uint64_t sub_2664DCA74(uint64_t a1, void *a2)
{
  v4 = sub_2664DFE38();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v28 - v9;
  if (a1)
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v11 = __swift_project_value_buffer(v4, qword_280F914F0);
    swift_beginAccess();
    (*(v5 + 16))(v8, v11, v4);
    v12 = a2;
    v13 = sub_2664DFE18();
    v14 = sub_2664E06C8();

    v15 = os_log_type_enabled(v13, v14);
    v28[0] = v12;
    if (v15)
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v28[1] = a2;
      v29 = v17;
      *v16 = 136315138;
      v18 = v12;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280074218, &qword_2664F0C58);
      v19 = sub_2664E0318();
      v21 = sub_2662A320C(v19, v20, &v29);

      *(v16 + 4) = v21;
      _os_log_impl(&dword_26629C000, v13, v14, "ErrorFilingProvider#registerForSRTNotifications userInfo: %s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v17);
      MEMORY[0x266784AD0](v17, -1, -1);
      MEMORY[0x266784AD0](v16, -1, -1);
    }

    (*(v5 + 8))(v8, v4);
    if (!a2 || (objc_opt_self(), !swift_dynamicCastObjCClass()) || (v29 = 0, sub_2664E01B8(), (v22 = v29) == 0))
    {
      v22 = 0;
    }

    sub_2664DACD0(v22);
  }

  else
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v24 = __swift_project_value_buffer(v4, qword_280F914F0);
    swift_beginAccess();
    (*(v5 + 16))(v10, v24, v4);
    v25 = sub_2664DFE18();
    v26 = sub_2664E06D8();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_26629C000, v25, v26, "ErrorFilingProvider#registerForSRTNotifications observer nil!", v27, 2u);
      MEMORY[0x266784AD0](v27, -1, -1);
    }

    return (*(v5 + 8))(v10, v4);
  }
}

uint64_t sub_2664DCE54(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280074230, &qword_2664EF6F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2664DCF3C(uint64_t a1, void *a2)
{
  v4 = swift_allocObject();
  v5 = __swift_mutable_project_boxed_opaque_existential_1(a2, a2[3]);
  MEMORY[0x28223BE20](v5);
  v7 = (v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v8 + 16))(v7);
  v9 = *v7;
  v17[3] = type metadata accessor for MediaPlaybackProvider();
  v17[4] = &off_2877F3740;
  v17[0] = v9;
  sub_2662A5550(v17, v16);
  v10 = __swift_mutable_project_boxed_opaque_existential_1(v16, v16[3]);
  MEMORY[0x28223BE20](v10);
  v12 = (v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v13 + 16))(v12);
  v14 = sub_2664DD13C(a1, *v12, v4);
  __swift_destroy_boxed_opaque_existential_1Tm(v17);
  __swift_destroy_boxed_opaque_existential_1Tm(v16);
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  return v14;
}

uint64_t sub_2664DD13C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2664DFE38();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v17[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18[3] = type metadata accessor for MediaPlaybackProvider();
  v18[4] = &off_2877F3740;
  v18[0] = a2;
  *(a3 + 16) = a1;
  sub_2662A5550(v18, a3 + 32);
  v10 = qword_280F914E8;

  if (v10 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v6, qword_280F914F0);
  swift_beginAccess();
  (*(v7 + 16))(v9, v11, v6);
  v12 = sub_2664DFE18();
  v13 = sub_2664E06E8();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_26629C000, v12, v13, "PodcastPlaybackHandler#ControllerReferece Retrieving controller reference...", v14, 2u);
    MEMORY[0x266784AD0](v14, -1, -1);
  }

  (*(v7 + 8))(v9, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280074268, &qword_2664F0CB8);
  swift_allocObject();
  v15 = sub_2662EDC64();

  __swift_destroy_boxed_opaque_existential_1Tm(v18);
  *(a3 + 24) = v15;
  return a3;
}

uint64_t FollowShowAppIntent.init(show:)@<X0>(uint64_t *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073748, &qword_2664EC460);
  swift_allocObject();
  result = sub_2664DFA28();
  *a2 = result;
  return result;
}

void sub_2664DD460(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2664DFE38();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [a1 companionDeviceInfo];
  if (v8)
  {
    v9 = v8;
    v10 = [v8 assistantID];
    if (v10)
    {
      v11 = v10;
      v12 = sub_2664E02C8();
      v14 = v13;
    }

    else
    {
      v12 = 0;
      v14 = 0;
    }

    v19 = [v9 productPrefix];
    if (v19)
    {
      v20 = v19;
      v21 = sub_2664E02C8();
      v23 = v22;
    }

    else
    {
      v21 = 0;
      v23 = 0;
    }

    v24 = [v9 peerToPeerHandoffCapability];

    *a2 = v12;
    *(a2 + 8) = v14;
    *(a2 + 16) = v21;
    *(a2 + 24) = v23;
    *(a2 + 32) = v24;
  }

  else
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v15 = __swift_project_value_buffer(v4, qword_280F914F0);
    swift_beginAccess();
    (*(v5 + 16))(v7, v15, v4);
    v16 = sub_2664DFE18();
    v17 = sub_2664E06D8();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_26629C000, v16, v17, "CompanionDeviceInfo#from AFSharedUserInfo.companionDeviceInfo is nil. Bailing", v18, 2u);
      MEMORY[0x266784AD0](v18, -1, -1);
    }

    (*(v5 + 8))(v7, v4);
    *a2 = xmmword_2664F0D60;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    *(a2 + 32) = 0;
  }
}

uint64_t CompanionDeviceInfo.assistantID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t CompanionDeviceInfo.assistantID.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t CompanionDeviceInfo.productPrefix.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t CompanionDeviceInfo.productPrefix.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

void __swiftcall CompanionDeviceInfo.init(assistantID:productPrefix:peerToPeerHandoffCapability:)(SiriAudioSupport::CompanionDeviceInfo *__return_ptr retstr, Swift::String_optional assistantID, Swift::String_optional productPrefix, Swift::Bool_optional peerToPeerHandoffCapability)
{
  retstr->assistantID = assistantID;
  retstr->productPrefix = productPrefix;
  retstr->peerToPeerHandoffCapability = peerToPeerHandoffCapability;
}

Swift::Bool __swiftcall CompanionDeviceInfo.supports(version:)(SiriAudioSupport::BuildVersion version)
{
  v2 = version;
  v3 = sub_2664DFE38();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0) + 40;
  MEMORY[0x28223BE20](v5);
  v9 = v27 - v8 + 40;
  v10 = *(v1 + 24);
  if (v10)
  {
    v11 = *v2;
    v12 = *(v1 + 16);
    type metadata accessor for CompanionProductPrefixParser();
    swift_initStackObject();

    CompanionProductPrefixParser.init(for:)(v12, v10);
    v27[0] = v11;
    v13 = sub_2662F22D4(v27);

    if (v13)
    {
      return 1;
    }

    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v19 = __swift_project_value_buffer(v3, qword_280F914F0);
    swift_beginAccess();
    (*(v4 + 16))(v9, v19, v3);

    v20 = sub_2664DFE18();
    v21 = sub_2664E06D8();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v26 = v23;
      *v22 = 136315394;
      *(v22 + 4) = sub_2662A320C(v12, v10, &v26);
      *(v22 + 12) = 2080;
      if (v11)
      {
        v24 = 4534578;
      }

      else
      {
        v24 = 4272434;
      }

      v25 = sub_2662A320C(v24, 0xE300000000000000, &v26);

      *(v22 + 14) = v25;
      _os_log_impl(&dword_26629C000, v20, v21, "CompanionDeviceInfo#supports companion version: %s older than required version: %s", v22, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266784AD0](v23, -1, -1);
      MEMORY[0x266784AD0](v22, -1, -1);
    }

    (*(v4 + 8))(v9, v3);
  }

  else
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v15 = __swift_project_value_buffer(v3, qword_280F914F0);
    swift_beginAccess();
    (*(v4 + 16))(v7, v15, v3);
    v16 = sub_2664DFE18();
    v17 = sub_2664E06D8();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_26629C000, v16, v17, "CompanionDeviceInfo#supports nil prefix returned. Returning false", v18, 2u);
      MEMORY[0x266784AD0](v18, -1, -1);
    }

    (*(v4 + 8))(v7, v3);
  }

  return 0;
}

uint64_t CompanionDeviceInfo.description.getter()
{
  sub_2664E0B28();
  MEMORY[0x2667833B0](0xD000000000000023, 0x80000002664FC630);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800734A0, &qword_2664E3B40);
  sub_2664E0C28();
  MEMORY[0x2667833B0](0xD000000000000011, 0x80000002664FC660);
  sub_2664E0C28();
  MEMORY[0x2667833B0](0xD00000000000001FLL, 0x80000002664FC680);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072C70, &qword_2664E6480);
  sub_2664E0C28();
  MEMORY[0x2667833B0](8317, 0xE200000000000000);
  return 0;
}

Swift::Bool __swiftcall CompanionDeviceInfo.supportsSiriForAirPlay()()
{
  v1 = *(v0 + 32);
  v2 = v0[1];
  v5 = *v0;
  v6 = v2;
  v7 = v1;
  v4 = 0;
  return CompanionDeviceInfo.supports(version:)(&v4) & v1 & 1;
}

Swift::Bool __swiftcall CompanionDeviceInfo.supportsHomePodAppSelection()()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + 32);
  v9 = *v0;
  v10 = v2;
  v11 = v3;
  v12 = v4;
  v13 = v5;
  v8 = 1;
  if (CompanionDeviceInfo.supports(version:)(&v8))
  {
    v9 = v1;
    v10 = v2;
    v11 = v3;
    v12 = v4;
    v13 = v5;
    v8 = 0;
    v6 = CompanionDeviceInfo.supports(version:)(&v8) & v5;
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2664DDE60(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 33))
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

uint64_t sub_2664DDEBC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t INMediaItem.isInternalSignalPresent(_:)(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = (a1 + 40);
    do
    {
      v4 = *(v3 - 1);
      v5 = *v3;

      v6 = [v1 privateMediaItemValueData];
      if (v6 && (v7 = v6, v8 = [v6 internalSignals], v7, v8))
      {
        v9 = sub_2664E04A8();

        v14[0] = v4;
        v14[1] = v5;
        MEMORY[0x28223BE20](v10);
        v13[2] = v14;
        v11 = sub_2662AA720(sub_2662AA7CC, v13, v9);

        if (v11)
        {
          return 1;
        }
      }

      else
      {
      }

      v3 += 2;
      --v2;
    }

    while (v2);
  }

  return 0;
}