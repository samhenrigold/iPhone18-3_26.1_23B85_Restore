void *static INMediaItem.unique(_:)(unint64_t a1)
{
  v2 = sub_2664DFE38();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = MEMORY[0x277D84F90];
  sub_2663DEE18(a1, &v40);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v2, qword_280F914F0);
  swift_beginAccess();
  (*(v3 + 16))(v5, v6, v2);
  v7 = sub_2664DFE18();
  v8 = sub_2664E06C8();
  if (!os_log_type_enabled(v7, v8))
  {
    goto LABEL_20;
  }

  v9 = swift_slowAlloc();
  v36 = swift_slowAlloc();
  v39[0] = v36;
  *v9 = 136446210;
  swift_beginAccess();
  v10 = v40;
  v37 = v8;
  if (v40 >> 62)
  {
    v11 = sub_2664E0A68();
  }

  else
  {
    v11 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v12 = MEMORY[0x277D84F90];
  if (!v11)
  {
LABEL_19:
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800734A0, &qword_2664E3B40);
    v26 = MEMORY[0x2667834D0](v12, v25);
    v28 = v27;

    v29 = sub_2662A320C(v26, v28, v39);

    *(v9 + 4) = v29;
    _os_log_impl(&dword_26629C000, v7, v37, "INMediaItem#unique items: %{public}s", v9, 0xCu);
    v30 = v36;
    __swift_destroy_boxed_opaque_existential_1Tm(v36);
    MEMORY[0x266784AD0](v30, -1, -1);
    MEMORY[0x266784AD0](v9, -1, -1);
LABEL_20:

    (*(v3 + 8))(v5, v2);
    swift_beginAccess();
    return v40;
  }

  v38 = MEMORY[0x277D84F90];

  result = sub_2662FD1B0(0, v11 & ~(v11 >> 63), 0);
  if ((v11 & 0x8000000000000000) == 0)
  {
    v31 = v9;
    v32 = v7;
    v33 = v5;
    v34 = v3;
    v35 = v2;
    v14 = 0;
    v12 = v38;
    do
    {
      if ((v10 & 0xC000000000000001) != 0)
      {
        v15 = MEMORY[0x266783B70](v14, v10);
      }

      else
      {
        v15 = *(v10 + 8 * v14 + 32);
      }

      v16 = v15;
      v17 = [v15 identifier];
      if (v17)
      {
        v18 = v17;
        v19 = sub_2664E02C8();
        v21 = v20;
      }

      else
      {

        v19 = 0;
        v21 = 0;
      }

      v38 = v12;
      v23 = *(v12 + 16);
      v22 = *(v12 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_2662FD1B0((v22 > 1), v23 + 1, 1);
        v12 = v38;
      }

      ++v14;
      *(v12 + 16) = v23 + 1;
      v24 = v12 + 16 * v23;
      *(v24 + 32) = v19;
      *(v24 + 40) = v21;
    }

    while (v11 != v14);

    v3 = v34;
    v2 = v35;
    v7 = v32;
    v5 = v33;
    v9 = v31;
    goto LABEL_19;
  }

  __break(1u);
  return result;
}

uint64_t sub_2663E029C(id *a1, uint64_t *a2)
{
  v3 = v2;
  v6 = sub_2664DFE38();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = *a1;
  v11 = *a2;
  if (*a2 >> 62)
  {
LABEL_55:
    v52 = v8;
    v53 = sub_2664E0A68();
    v8 = v52;
    v63 = v53;
    if (v53)
    {
      goto LABEL_3;
    }

LABEL_43:
    v37 = v64;
    MEMORY[0x266783490]();
    if (*((*a2 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_2664E04C8();
    }

    return sub_2664E0518();
  }

  v63 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v63)
  {
    goto LABEL_43;
  }

LABEL_3:
  v57 = v8;
  v58 = a2;
  v55 = v10;
  v56 = v7;
  v10 = (v11 & 0xC000000000000001);
  v59 = v3;
  v60 = v11 & 0xFFFFFFFFFFFFFF8;

  v12 = 0;
  v61 = v11 & 0xC000000000000001;
  v62 = v11;
  a2 = v63;
  v3 = v64;
  while (1)
  {
    if (v10)
    {
      v8 = MEMORY[0x266783B70](v12, v11);
    }

    else
    {
      if (v12 >= *(v60 + 16))
      {
        goto LABEL_54;
      }

      v8 = *(v11 + 8 * v12 + 32);
    }

    v7 = v8;
    v13 = (v12 + 1);
    if (__OFADD__(v12, 1))
    {
      __break(1u);
LABEL_54:
      __break(1u);
      goto LABEL_55;
    }

    v14 = [v3 type];
    if (v14 == [v7 type])
    {
      break;
    }

LABEL_5:
    ++v12;
    if (v13 == a2)
    {

      a2 = v58;
      goto LABEL_43;
    }
  }

  v15 = [v3 title];
  if (v15)
  {
    v16 = v15;
    v17 = sub_2664E02C8();
    v19 = v18;
  }

  else
  {
    v17 = 0;
    v19 = 0;
  }

  v20 = [v7 title];
  if (!v20)
  {
    if (!v19)
    {
      goto LABEL_26;
    }

    goto LABEL_37;
  }

  v21 = v20;
  v22 = sub_2664E02C8();
  v24 = v23;

  if (v19)
  {
    if (v24)
    {
      if (v17 == v22 && v19 == v24)
      {
      }

      else
      {
        v25 = sub_2664E0D88();

        if ((v25 & 1) == 0)
        {
LABEL_40:

          goto LABEL_41;
        }
      }

      goto LABEL_26;
    }

LABEL_37:

LABEL_41:
    v11 = v62;
    a2 = v63;
    v10 = v61;
    v3 = v64;
    goto LABEL_5;
  }

  if (v24)
  {
LABEL_39:

    goto LABEL_40;
  }

LABEL_26:
  v26 = [v64 artist];
  if (v26)
  {
    v27 = v26;
    v28 = sub_2664E02C8();
    v30 = v29;
  }

  else
  {
    v28 = 0;
    v30 = 0;
  }

  v31 = [v7 artist];
  if (!v31)
  {
    if (!v30)
    {
      goto LABEL_48;
    }

    goto LABEL_37;
  }

  v32 = v31;
  v33 = sub_2664E02C8();
  v35 = v34;

  if (!v30)
  {
    if (!v35)
    {
      goto LABEL_48;
    }

    goto LABEL_39;
  }

  if (!v35)
  {
    goto LABEL_37;
  }

  if (v28 != v33 || v30 != v35)
  {
    v36 = sub_2664E0D88();

    if (v36)
    {
      goto LABEL_48;
    }

    goto LABEL_40;
  }

LABEL_48:

  v39 = v64;
  v40 = v57;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v41 = __swift_project_value_buffer(v40, qword_280F914F0);
  swift_beginAccess();
  v43 = v55;
  v42 = v56;
  v56[2](v55, v41, v40);
  v44 = v39;
  v45 = sub_2664DFE18();
  v46 = sub_2664E06C8();

  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v65 = v48;
    *v47 = 136315138;
    v49 = INMediaItem.slimDescription.getter();
    v51 = sub_2662A320C(v49, v50, &v65);

    *(v47 + 4) = v51;
    _os_log_impl(&dword_26629C000, v45, v46, "INMediaItem#unique suppressing duplicate type/artist/title result: %s", v47, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v48);
    MEMORY[0x266784AD0](v48, -1, -1);
    MEMORY[0x266784AD0](v47, -1, -1);

    return (v42[1])(v43, v57);
  }

  else
  {

    return (v42[1])(v43, v40);
  }
}

Swift::Bool __swiftcall INMediaItem.isLibrary()()
{
  v0 = INMediaItem.isInternalSignalPresent(_:)(&unk_2877E4C98);
  sub_2662C1834(&unk_2877E4CB8);
  return v0 & 1;
}

uint64_t INMediaItem.toAudioMediaItem()()
{
  v1 = v0;
  v2 = sub_2664DFBE8();
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [v1 identifier];
  if (v5)
  {
    v6 = v5;
    sub_2664E02C8();
  }

  v7 = [v1 title];
  if (v7)
  {
    v8 = v7;
    sub_2664E02C8();
  }

  sub_2663ECB60([v1 type], v4);
  v9 = [v1 artist];
  if (v9)
  {
    v10 = v9;
    sub_2664E02C8();
  }

  return sub_2664DFBF8();
}

Swift::String_optional __swiftcall INMediaItem.machineUtterance(for:)(INPlayMediaIntent a1)
{
  v2 = v1;
  v132 = sub_2664DFE38();
  v4 = *(v132 - 8);
  v5 = MEMORY[0x28223BE20](v132);
  v7 = &v129 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v129 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v129 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v131 = &v129 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v129 = &v129 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v129 - v19;
  MEMORY[0x28223BE20](v18);
  v130 = &v129 - v21;
  v22 = [(objc_class *)a1.super.super.isa hashedRouteUIDs];
  if (!v22 || (v23 = v22, v24 = v4, v25 = sub_2664E04A8(), v23, v26 = *(v25 + 16), v4 = v24, , v26))
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v27 = v132;
    v28 = __swift_project_value_buffer(v132, qword_280F914F0);
    swift_beginAccess();
    (*(v4 + 16))(v7, v28, v27);
    v29 = a1.super.super.isa;
    v30 = sub_2664DFE18();
    v31 = sub_2664E06C8();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v135 = v33;
      *v32 = 136315138;
      v34 = [(objc_class *)v29 hashedRouteUIDs];
      if (v34)
      {
        v35 = sub_2664E04A8();

        v36 = *(v35 + 16);
      }

      else
      {
        v36 = 0;
      }

      v133 = v36;
      v134 = v34 == 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073468, &qword_2664EB040);
      v54 = sub_2664E0318();
      v56 = sub_2662A320C(v54, v55, &v135);

      *(v32 + 4) = v56;
      _os_log_impl(&dword_26629C000, v30, v31, "INMediaItem#machineUtterance skipping machineUtterance generation due to presence of hashedRouteUIDs of count: %s", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v33);
      MEMORY[0x266784AD0](v33, -1, -1);
      MEMORY[0x266784AD0](v32, -1, -1);

      (*(v4 + 8))(v7, v132);
    }

    else
    {

      (*(v4 + 8))(v7, v27);
    }

LABEL_20:
    v57 = 0;
    v58 = 0;
    goto LABEL_59;
  }

  v37 = [(objc_class *)a1.super.super.isa mediaSearch];
  if (v37 && (v38 = v37, v39 = [v37 sortOrder], v38, v39 == 4) || (v40 = -[objc_class mediaSearch](a1.super.super.isa, sel_mediaSearch)) != 0 && (v41 = v40, v42 = objc_msgSend(v40, sel_sortOrder), v41, v42 == 5))
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v43 = v132;
    v44 = __swift_project_value_buffer(v132, qword_280F914F0);
    swift_beginAccess();
    v45 = v24;
    (*(v24 + 16))(v10, v44, v43);
    v46 = a1.super.super.isa;
    v47 = sub_2664DFE18();
    v48 = sub_2664E06C8();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v135 = v50;
      *v49 = 136315138;
      v51 = [(objc_class *)v46 mediaSearch];
      v52 = v51;
      if (v51)
      {
        v53 = [v51 sortOrder];
      }

      else
      {
        v53 = 0;
      }

      v133 = v53;
      v134 = v52 == 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073470, &qword_2664EB048);
      v92 = sub_2664E0318();
      v94 = sub_2662A320C(v92, v93, &v135);

      *(v49 + 4) = v94;
      _os_log_impl(&dword_26629C000, v47, v48, "INMediaItem#machineUtterance skipping machineUtterance generation because sortOrder: %s", v49, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v50);
      MEMORY[0x266784AD0](v50, -1, -1);
      MEMORY[0x266784AD0](v49, -1, -1);

      (*(v45 + 8))(v10, v132);
    }

    else
    {

      (*(v24 + 8))(v10, v43);
    }

    goto LABEL_20;
  }

  v59 = [v2 type];
  v60 = vdupq_n_s64(v59);
  if ((vmaxv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(xmmword_2877E4CE8, v60), vceqq_s64(unk_2877E4CF8, v60)))) & 1) == 0 && qword_2877E4D08 != v59)
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v61 = v132;
    v62 = __swift_project_value_buffer(v132, qword_280F914F0);
    swift_beginAccess();
    v63 = v24;
    (*(v24 + 16))(v13, v62, v61);
    v64 = v2;
    v65 = sub_2664DFE18();
    v66 = sub_2664E06C8();

    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v133 = v68;
      *v67 = 136315394;
      v135 = [v64 type];
      type metadata accessor for INMediaItemType(0);
      v70 = v69;
      v71 = sub_2664E0318();
      v73 = sub_2662A320C(v71, v72, &v133);

      *(v67 + 4) = v73;
      *(v67 + 12) = 2080;
      v74 = MEMORY[0x2667834D0](&unk_2877E4CC8, v70);
      v76 = sub_2662A320C(v74, v75, &v133);

      *(v67 + 14) = v76;
      _os_log_impl(&dword_26629C000, v65, v66, "INMediaItem#machineUtterance skipping machineUtterance generation self.type: %s not in supportedTypes: %s", v67, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266784AD0](v68, -1, -1);
      MEMORY[0x266784AD0](v67, -1, -1);
    }

    (*(v63 + 8))(v13, v61);
    goto LABEL_20;
  }

  if ([v2 type] == 3)
  {
    sub_2664DEB98();
    swift_allocObject();
    sub_2664DEB88();
    sub_2664DEB68();

    v77 = [v2 title];
    if (v77)
    {
      v78 = v77;
      sub_2664E02C8();
    }

    v100 = v131;
    sub_2664DEB68();

    v101 = sub_2664DEB78();
    v103 = v102;

    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v104 = v132;
    v105 = __swift_project_value_buffer(v132, qword_280F914F0);
    swift_beginAccess();
    (*(v24 + 16))(v100, v105, v104);

    v106 = sub_2664DFE18();
    v107 = sub_2664E06C8();

    if (os_log_type_enabled(v106, v107))
    {
      v108 = swift_slowAlloc();
      v109 = swift_slowAlloc();
      v133 = v109;
      *v108 = 136315138;

      v110 = sub_2662A320C(v101, v103, &v133);

      *(v108 + 4) = v110;
      _os_log_impl(&dword_26629C000, v106, v107, "INMediaItem#machineUtterance generate machineUtterance for artist result: %s", v108, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v109);
      MEMORY[0x266784AD0](v109, -1, -1);
      MEMORY[0x266784AD0](v108, -1, -1);

      (*(v24 + 8))(v100, v104);
      v58 = v103;
      v57 = v101;
    }

    else
    {

      (*(v24 + 8))(v100, v104);
      v57 = v101;
      v58 = v103;
    }
  }

  else
  {
    v79 = v24;
    if (_s16SiriAudioSupport22InternalSignalsManagerC10doesIntent_4haveSbSo8INIntentC_SaySSGtFZ_0(a1.super.super.isa, &unk_2877E4D10))
    {
      sub_2664DEB98();
      swift_allocObject();
      sub_2664DEB88();
      sub_2664DEB68();

      sub_2664DEB68();

      v80 = sub_2664DEB78();
      v82 = v81;

      if (qword_280F914E8 != -1)
      {
        swift_once();
      }

      v83 = v132;
      v84 = __swift_project_value_buffer(v132, qword_280F914F0);
      swift_beginAccess();
      v85 = v129;
      (*(v79 + 16))(v129, v84, v83);

      v86 = sub_2664DFE18();
      v87 = sub_2664E06C8();

      if (os_log_type_enabled(v86, v87))
      {
        v88 = swift_slowAlloc();
        v89 = swift_slowAlloc();
        v133 = v89;
        *v88 = 136315138;

        v90 = v79;
        v91 = sub_2662A320C(v80, v82, &v133);

        *(v88 + 4) = v91;
        _os_log_impl(&dword_26629C000, v86, v87, "INMediaItem#machineUtterance generate machineUtterance for implicit recommendation: %s", v88, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v89);
        MEMORY[0x266784AD0](v89, -1, -1);
        MEMORY[0x266784AD0](v88, -1, -1);

        (*(v90 + 8))(v85, v83);
        v58 = v82;
        v57 = v80;
      }

      else
      {

        (*(v79 + 8))(v85, v83);
        v57 = v80;
        v58 = v82;
      }
    }

    else
    {
      v95 = [v2 identifier];
      if (v95)
      {
        v96 = v95;
        v97 = sub_2664E02C8();
        v99 = v98;
      }

      else
      {
        v97 = 0;
        v99 = 0xE000000000000000;
      }

      v111 = v132;
      v112 = v130;
      static PlaybackItem.Identifier.parse(uri:)(v97, v99, v136);

      if (!v136[2])
      {
        if (qword_280F914E8 != -1)
        {
          swift_once();
        }

        v124 = __swift_project_value_buffer(v111, qword_280F914F0);
        swift_beginAccess();
        (*(v79 + 16))(v20, v124, v111);
        v125 = sub_2664DFE18();
        v126 = sub_2664E06C8();
        if (os_log_type_enabled(v125, v126))
        {
          v127 = swift_slowAlloc();
          *v127 = 0;
          _os_log_impl(&dword_26629C000, v125, v126, "INMediaItem#machineUtterance skipping machineUtterance because of an invalid mediaId", v127, 2u);
          MEMORY[0x266784AD0](v127, -1, -1);
        }

        (*(v79 + 8))(v20, v111);
        goto LABEL_20;
      }

      sub_2664DEB98();
      swift_allocObject();
      sub_2664DEB88();
      sub_2664DEB68();

      sub_2664DEB68();

      v113 = sub_2664DEB78();
      v115 = v114;

      if (qword_280F914E8 != -1)
      {
        swift_once();
      }

      v116 = v132;
      v117 = __swift_project_value_buffer(v132, qword_280F914F0);
      swift_beginAccess();
      (*(v79 + 16))(v112, v117, v116);

      v118 = sub_2664DFE18();
      v119 = sub_2664E06C8();

      if (os_log_type_enabled(v118, v119))
      {
        v120 = swift_slowAlloc();
        v121 = swift_slowAlloc();
        v133 = v121;
        *v120 = 136315138;

        v122 = v79;
        v123 = sub_2662A320C(v113, v115, &v133);

        *(v120 + 4) = v123;
        _os_log_impl(&dword_26629C000, v118, v119, "INMediaItem#machineUtterance generate machineUtterance: %s", v120, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v121);
        MEMORY[0x266784AD0](v121, -1, -1);
        MEMORY[0x266784AD0](v120, -1, -1);

        (*(v122 + 8))(v112, v116);
        v58 = v115;
        v57 = v113;
      }

      else
      {

        (*(v79 + 8))(v112, v116);
        v57 = v113;
        v58 = v115;
      }
    }
  }

LABEL_59:
  result.value._object = v58;
  result.value._countAndFlagsBits = v57;
  return result;
}

void INMediaItem.addToPlaybackContext(intentSignals:)(void *a1)
{
  v2 = v1;
  v4 = sub_2664DFE38();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v75 - v9;
  v11 = [v1 identifier];
  if (v11)
  {
    v12 = v11;
    v13 = sub_2664E02C8();
    v15 = v14;
  }

  else
  {
    v13 = 0;
    v15 = 0xE000000000000000;
  }

  static PlaybackItem.Identifier.parse(uri:)(v13, v15, v80);

  v77 = v80[0];
  v78 = v80[2];
  v16 = a1[3];
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v16);
  if ((*(v17 + 8))(v16, v17))
  {
    v18 = qword_280071C68;
    v19 = 4;
  }

  else
  {
    v20 = INMediaItem.isInternalSignalPresent(_:)(&unk_2877E4DD0);
    sub_2662C1834(&unk_2877E4DF0);
    if (v20)
    {
      if (qword_280071C68 != -1)
      {
        swift_once();
      }

      v21 = off_280073BF8;
      if ([*(off_280073BF8 + 2) executionSource] == 3)
      {
        v19 = 6;
        v22 = v21;
        goto LABEL_22;
      }
    }

    v23 = INMediaItem.isInternalSignalPresent(_:)(&unk_2877E4E00);
    sub_2662C1834(&unk_2877E4E20);
    if (v23 & 1) != 0 && v78 && BYTE1(v77) != 8 && (sub_266341AA4(BYTE1(v77), 5u))
    {
      v18 = qword_280071C68;
      v19 = 3;
    }

    else
    {
      v24 = INMediaItem.isInternalSignalPresent(_:)(&unk_2877E4E30);
      sub_2662C1834(&unk_2877E4E50);
      v18 = qword_280071C68;
      if (v24)
      {
        v19 = 5;
      }

      else
      {
        v19 = 2;
      }
    }
  }

  if (v18 != -1)
  {
    v74 = v19;
    swift_once();
    v19 = v74;
  }

  v22 = off_280073BF8;
LABEL_22:
  [v22[2] setEndpoint_];
  v25 = INMediaItem.isInternalSignalPresent(_:)(&unk_2877E4E60);
  sub_2662C1834(&unk_2877E4E80);
  if (v25)
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v26 = __swift_project_value_buffer(v4, qword_280F914F0);
    swift_beginAccess();
    (*(v5 + 16))(v10, v26, v4);
    v27 = sub_2664DFE18();
    v28 = sub_2664E06C8();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_26629C000, v27, v28, "INMediaItem#addToPlaybackContext ignore Nls signals since library result is first", v29, 2u);
      MEMORY[0x266784AD0](v29, -1, -1);
    }

    (*(v5 + 8))(v10, v4);
    v30 = v78;
  }

  else
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v31 = __swift_project_value_buffer(v4, qword_280F914F0);
    swift_beginAccess();
    (*(v5 + 16))(v8, v31, v4);
    v32 = sub_2664DFE18();
    v33 = sub_2664E06C8();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_26629C000, v32, v33, "INMediaItem#addToPlaybackContext set Nls signals since Pegasus result is first", v34, 2u);
      MEMORY[0x266784AD0](v34, -1, -1);
    }

    (*(v5 + 8))(v8, v4);
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v35 = CommonIntentSignals.isNlsResult()();
    v30 = v78;
    if (v35)
    {
      if (qword_280071C68 != -1)
      {
        swift_once();
      }

      *(v22[3] + OBJC_IVAR____TtC16SiriAudioSupport25AdditionalPlaybackContext_isNlsResult) = 1;
    }

    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    if (CommonIntentSignals.isNlsContainerResult()())
    {
      if (qword_280071C68 != -1)
      {
        swift_once();
      }

      *(v22[3] + OBJC_IVAR____TtC16SiriAudioSupport25AdditionalPlaybackContext_isNlsContainerResult) = 1;
    }
  }

  INMediaItem.isInternalSignalPresent(_:)(&unk_2877E4E90);
  sub_2662C1834(&unk_2877E4EB0);
  if (qword_280071C68 != -1)
  {
    swift_once();
  }

  [v22[2] setContentSource_];
  if (!v30)
  {
    return;
  }

  v76 = v22;
  v79 = v77;
  if (PlaybackItem.Scheme.rawValue.getter() == 0x6172706D61732D78 && v36 == 0xEB000000006F6964)
  {

    goto LABEL_47;
  }

  v37 = sub_2664E0D88();

  if (v37)
  {
LABEL_47:
    v38 = [objc_allocWithZone(MEMORY[0x277D57650]) init];
    if (v38)
    {
      v39 = v38;

      v40 = INMediaItem.isInternalSignalPresent(_:)(&unk_2877E4EC0);
      swift_arrayDestroy();
      if (v40)
      {
        [v39 setRadioStationSubtype_];
      }

      else
      {
        v63 = INMediaItem.isInternalSignalPresent(_:)(&unk_2877E4F00);
        sub_2662C1834(&unk_2877E4F20);
        if (v63)
        {
          [v39 setRadioStationSubtype_];
        }

        else
        {
          v64 = INMediaItem.isInternalSignalPresent(_:)(&unk_2877E4F30);
          sub_2662C1834(&unk_2877E4F50);
          if (v64)
          {
            [v39 setRadioStationSubtype_];
          }

          else
          {
            v65 = INMediaItem.isInternalSignalPresent(_:)(&unk_2877E4F60);
            sub_2662C1834(&unk_2877E4F80);
            if (v65)
            {
              [v39 setRadioStationSubtype_];
            }

            else
            {
              v68 = INMediaItem.isInternalSignalPresent(_:)(&unk_2877E4F90);
              sub_2662C1834(&unk_2877E4FB0);
              if (v68)
              {
                [v39 setRadioStationSubtype_];
              }

              else
              {
                v69 = INMediaItem.isInternalSignalPresent(_:)(&unk_2877E4FC0);
                sub_2662C1834(&unk_2877E4FE0);
                if (v69)
                {
                  [v39 setRadioStationSubtype_];
                }

                else
                {
                  v70 = INMediaItem.isInternalSignalPresent(_:)(&unk_2877E4FF0);
                  sub_2662C1834(&unk_2877E5010);
                  if (v70)
                  {
                    [v39 setRadioStationSubtype_];
                  }

                  else
                  {
                    v71 = INMediaItem.isInternalSignalPresent(_:)(&unk_2877E5020);
                    sub_2662C1834(&unk_2877E5040);
                    if (v71)
                    {
                      v72 = 7;
                    }

                    else
                    {
                      v72 = 0;
                    }

                    [v39 setRadioStationSubtype_];
                  }
                }
              }
            }
          }
        }
      }

      v73 = v76;
      if (qword_280071C68 != -1)
      {
        swift_once();
      }

      [v73[2] setRadioStationContext_];

      return;
    }
  }

  if ([v2 type] == 5 && (v41 = objc_msgSend(objc_allocWithZone(MEMORY[0x277D57648]), sel_init)) != 0)
  {
    v75 = v41;
    v42 = 0;
    v43 = BYTE1(v77);
    while (v42 != 4)
    {
      v45 = byte_2877E5050[v42 + 32];
      if (v45 > 3)
      {
        if (byte_2877E5050[v42 + 32] > 5u)
        {
          if (v45 == 6)
          {
            v50 = 0x62696C656C6F6877;
            v51 = 0xEC00000079726172;
          }

          else
          {
            v51 = 0xE700000000000000;
            v50 = 0x6E776F6E6B6E75;
          }
        }

        else
        {
          if (v45 == 4)
          {
            v50 = 1684630645;
          }

          else
          {
            v50 = 0x6867696C746F7073;
          }

          if (v45 == 4)
          {
            v51 = 0xE400000000000000;
          }

          else
          {
            v51 = 0xE900000000000074;
          }
        }
      }

      else
      {
        if (v45 == 2)
        {
          v46 = 0x72657669746C756DLL;
        }

        else
        {
          v46 = 0x65726F7473;
        }

        if (v45 == 2)
        {
          v47 = 0xEA00000000006573;
        }

        else
        {
          v47 = 0xE500000000000000;
        }

        if (byte_2877E5050[v42 + 32])
        {
          v48 = 0x636E797369726973;
        }

        else
        {
          v48 = 0x656369766564;
        }

        if (byte_2877E5050[v42 + 32])
        {
          v49 = 0xE800000000000000;
        }

        else
        {
          v49 = 0xE600000000000000;
        }

        if (byte_2877E5050[v42 + 32] <= 1u)
        {
          v50 = v48;
        }

        else
        {
          v50 = v46;
        }

        if (byte_2877E5050[v42 + 32] <= 1u)
        {
          v51 = v49;
        }

        else
        {
          v51 = v47;
        }
      }

      v52 = 0x62696C656C6F6877;
      if (v43 != 6)
      {
        v52 = 0x6E776F6E6B6E75;
      }

      v53 = 0xEC00000079726172;
      if (v43 != 6)
      {
        v53 = 0xE700000000000000;
      }

      v54 = 0x6867696C746F7073;
      if (v43 == 4)
      {
        v54 = 1684630645;
      }

      v55 = 0xE900000000000074;
      if (v43 == 4)
      {
        v55 = 0xE400000000000000;
      }

      if (v43 <= 5)
      {
        v52 = v54;
        v53 = v55;
      }

      if (v43 == 2)
      {
        v56 = 0x72657669746C756DLL;
      }

      else
      {
        v56 = 0x65726F7473;
      }

      if (v43 == 2)
      {
        v57 = 0xEA00000000006573;
      }

      else
      {
        v57 = 0xE500000000000000;
      }

      if (v43)
      {
        v58 = 0x636E797369726973;
      }

      else
      {
        v58 = 0x656369766564;
      }

      if (v43)
      {
        v59 = 0xE800000000000000;
      }

      else
      {
        v59 = 0xE600000000000000;
      }

      if (v43 <= 1)
      {
        v56 = v58;
        v57 = v59;
      }

      if (v43 <= 3)
      {
        v60 = v56;
      }

      else
      {
        v60 = v52;
      }

      if (v43 <= 3)
      {
        v61 = v57;
      }

      else
      {
        v61 = v53;
      }

      if (v50 == v60 && v51 == v61)
      {

LABEL_117:
        v62 = 1;
        goto LABEL_126;
      }

      v44 = sub_2664E0D88();

      ++v42;
      if (v44)
      {
        goto LABEL_117;
      }
    }

    v62 = 2;
LABEL_126:

    v66 = v75;
    [v75 setPlaylistSubtype_];
    v67 = v76;
    if (qword_280071C68 != -1)
    {
      swift_once();
    }

    [v67[2] setPlaylistContext_];
  }

  else
  {
  }
}

void INMediaItem.toSAMPMediaItem()()
{
  v1 = v0;
  v76 = sub_2664DFE38();
  v2 = *(v76 - 8);
  v3 = MEMORY[0x28223BE20](v76);
  v5 = &v69 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v69 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072BC0, &qword_2664E6030);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v69 - v9;
  v11 = sub_2664DE268();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v73 = &v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v69 - v16;
  MEMORY[0x28223BE20](v15);
  v74 = &v69 - v18;
  v19 = [objc_allocWithZone(MEMORY[0x277D47560]) init];
  v20 = [v1 identifier];
  v75 = v2;
  if (!v20)
  {
    goto LABEL_4;
  }

  v21 = v20;
  v72 = v7;
  sub_2664E02C8();

  sub_2664DE258();

  if ((*(v12 + 48))(v10, 1, v11) != 1)
  {
    v34 = v11;
    v35 = *(v12 + 32);
    v71 = v34;
    v35(v74, v10);
    v36 = v19;
    v37 = sub_2664DE208();
    [v36 setIdentifier_];

    v38 = v36;
    v39 = [v1 title];
    [v38 setTitle_];

    v40 = [v1 artist];
    [v38 setArtist_];

    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v41 = v76;
    __swift_project_value_buffer(v76, qword_280F914F0);
    swift_beginAccess();
    v42 = v75;
    v43 = v72;
    (*(v75 + 16))();
    v44 = v38;
    v45 = sub_2664DFE18();
    v46 = sub_2664E06C8();
    if (!os_log_type_enabled(v45, v46))
    {

      (*(v42 + 8))(v43, v41);
      (*(v12 + 8))(v74, v71);
      return;
    }

    v70 = v46;
    v47 = v35;
    v48 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    v77 = v69;
    *v48 = 136315650;
    v49 = [v44 identifier];

    if (v49)
    {
      v50 = v73;
      sub_2664DE218();

      v51 = v71;
      v47(v17, v50, v71);
      sub_2663C12D0();
      v52 = sub_2664E0D48();
      v54 = v53;
      v55 = *(v12 + 8);
      v55(v17, v51);
      v56 = sub_2662A320C(v52, v54, &v77);

      *(v48 + 4) = v56;
      *(v48 + 12) = 2080;
      v57 = [v44 title];

      if (v57)
      {
        v58 = sub_2664E02C8();
        v60 = v59;

        v61 = sub_2662A320C(v58, v60, &v77);

        *(v48 + 14) = v61;
        *(v48 + 22) = 2080;
        v62 = [v44 artist];

        if (v62)
        {
          v63 = sub_2664E02C8();
          v65 = v64;

          v66 = sub_2662A320C(v63, v65, &v77);

          *(v48 + 24) = v66;
          _os_log_impl(&dword_26629C000, v45, v70, "INMediaItem#toSAMPMediaItem Converted to SAMPMediaItem with identifier: %s, title: %s, artist: %s", v48, 0x20u);
          v67 = v69;
          swift_arrayDestroy();
          MEMORY[0x266784AD0](v67, -1, -1);
          MEMORY[0x266784AD0](v48, -1, -1);

          (*(v75 + 8))(v72, v76);
          v55(v74, v71);
          return;
        }

        goto LABEL_22;
      }
    }

    else
    {

      __break(1u);
    }

    __break(1u);
LABEL_22:
    __break(1u);
    return;
  }

  sub_2663E3554(v10);
  v2 = v75;
LABEL_4:
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v22 = v76;
  v23 = __swift_project_value_buffer(v76, qword_280F914F0);
  swift_beginAccess();
  (*(v2 + 16))(v5, v23, v22);
  v24 = v1;
  v25 = sub_2664DFE18();
  v26 = sub_2664E06D8();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v77 = v28;
    *v27 = 136446210;
    v29 = [v24 identifier];
    if (v29)
    {
      v30 = v29;
      v31 = sub_2664E02C8();
      v33 = v32;
    }

    else
    {
      v33 = 0xE500000000000000;
      v31 = 0x3E6C696E3CLL;
    }

    v68 = sub_2662A320C(v31, v33, &v77);

    *(v27 + 4) = v68;
    _os_log_impl(&dword_26629C000, v25, v26, "INMediaItem#toSAMPMediaItem Error converting identifier to URL: %{public}s. Returning nil.", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v28);
    MEMORY[0x266784AD0](v28, -1, -1);
    MEMORY[0x266784AD0](v27, -1, -1);

    (*(v75 + 8))(v5, v22);
  }

  else
  {

    (*(v2 + 8))(v5, v22);
  }
}

id _sSo11INMediaItemC16SiriAudioSupportE4from010audioMediaB0ABSg0cD11IntentUtils0dhB0V_tFZ_0(char *a1)
{
  v2 = sub_2664DFE38();
  v53 = *(v2 - 8);
  v54 = v2;
  v3 = MEMORY[0x28223BE20](v2);
  v5 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v51 - v6;
  v8 = sub_2664DFC48();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v51 - v13;
  v15 = sub_2664DFBE8();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2664DFC18();
  v51 = sub_2663ECDE0(v18);
  (*(v16 + 8))(v18, v15);
  v19 = *(v9 + 16);
  v52 = a1;
  v19(v14, a1, v8);
  PlaybackItem.Identifier.init(from:)(v14, v57);
  v20 = v58;
  if (v58)
  {
    v21 = v57[1];
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v22 = v54;
    v23 = __swift_project_value_buffer(v54, qword_280F914F0);
    swift_beginAccess();
    v24 = v53;
    (*(v53 + 16))(v7, v23, v22);

    v25 = sub_2664DFE18();
    v26 = sub_2664E06C8();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v55[0] = v28;
      *v27 = 136315138;

      v29 = sub_2662A320C(v21, v20, v55);

      *(v27 + 4) = v29;
      _os_log_impl(&dword_26629C000, v25, v26, "INMediaItem#from Identifier: %s", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v28);
      MEMORY[0x266784AD0](v28, -1, -1);
      MEMORY[0x266784AD0](v27, -1, -1);
    }

    (*(v24 + 8))(v7, v22);
    sub_2664DFC28();
    v31 = v30;
    v32 = sub_2664E02A8();

    if (v31)
    {
      v33 = sub_2664E02A8();
    }

    else
    {
      v33 = 0;
    }

    v48 = objc_allocWithZone(MEMORY[0x277CD3DB8]);
    v49 = [v48 initWithIdentifier:v32 title:v33 type:v51 artwork:0];
  }

  else
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v34 = v54;
    v35 = __swift_project_value_buffer(v54, qword_280F914F0);
    swift_beginAccess();
    v36 = v53;
    v37 = v5;
    (*(v53 + 16))(v5, v35, v34);
    v19(v12, v52, v8);
    v38 = sub_2664DFE18();
    v39 = sub_2664E06D8();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v52 = v37;
      v41 = v40;
      v42 = swift_slowAlloc();
      v56 = v42;
      *v41 = 136315138;
      v55[0] = sub_2664DFC08();
      v55[1] = v43;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800734A0, &qword_2664E3B40);
      v44 = sub_2664E0318();
      v46 = v45;
      (*(v9 + 8))(v12, v8);
      v47 = sub_2662A320C(v44, v46, &v56);

      *(v41 + 4) = v47;
      _os_log_impl(&dword_26629C000, v38, v39, "INMediaItem#from audioMediaItem failed to create playbackItem with identifier: %s", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v42);
      MEMORY[0x266784AD0](v42, -1, -1);
      MEMORY[0x266784AD0](v41, -1, -1);

      (*(v36 + 8))(v52, v54);
    }

    else
    {

      (*(v9 + 8))(v12, v8);
      (*(v36 + 8))(v37, v34);
    }

    return 0;
  }

  return v49;
}

uint64_t sub_2663E3554(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072BC0, &qword_2664E6030);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_2663E3650(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v3 = a1;
    v4 = sub_2664E0C38();

    if (v4)
    {
      sub_2662C1744(0, &unk_280F8F600, 0x277CFE340);
      swift_dynamicCast();
      return v10;
    }
  }

  else if (*(a2 + 16))
  {
    v6 = sub_26634DC88(a1);
    if (v7)
    {
      v8 = *(*(a2 + 56) + 8 * v6);
      v9 = v8;
      return v8;
    }
  }

  return 0;
}

id sub_2663E3714()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280073490, &qword_2664E8E20);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_2664EB090;
  v1 = objc_opt_self();
  result = [v1 keyPathForWorkoutStatus];
  if (!result)
  {
    __break(1u);
    goto LABEL_12;
  }

  *(v0 + 32) = result;
  result = [v1 keyPathForDeviceLockStatus];
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  *(v0 + 40) = result;
  result = [v1 keyPathForCarplayConnectedStatus];
  if (!result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  *(v0 + 48) = result;
  result = [v1 keyPathForCarConnectedStatus];
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  *(v0 + 56) = result;
  result = [v1 keyPathForNavigationStatus];
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  *(v0 + 64) = result;
  result = [v1 keyPathForSunriseSunsetDataDictionary];
  if (!result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  *(v0 + 72) = result;
  result = [v1 keyPathForMotionState];
  if (!result)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  *(v0 + 80) = result;
  result = [v1 keyPathForForegroundApp];
  if (!result)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  *(v0 + 88) = result;
  result = [v1 keyPathForAppUsageDataDictionaries];
  if (result)
  {
    *(v0 + 96) = result;
    qword_280F91CC0 = v0;
    return result;
  }

LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_2663E38B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v26 = a1;
  v25 = a2;
  v4 = sub_2664DFE08();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v8 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v23 - v9;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073478, &qword_2664EB188);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280073480, &qword_2664EB190);
  v11 = sub_2664E0318();
  v23 = v12;
  v24 = v11;
  if (qword_280F91508 != -1)
  {
    swift_once();
  }

  v13 = qword_280F91D48;
  sub_2664DFDE8();
  (*(v5 + 16))(v8, v10, v4);
  v14 = (*(v5 + 80) + 33) & ~*(v5 + 80);
  v15 = (v6 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  *(v16 + 16) = "appSelectionSignalsSignal";
  *(v16 + 24) = 25;
  *(v16 + 32) = 2;
  (*(v5 + 32))(v16 + v14, v8, v4);
  v17 = (v16 + v15);
  *v17 = v25;
  v17[1] = a3;

  v18 = sub_2664E0848();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800724D8, &unk_2664E3920);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_2664E36F0;
  *(v19 + 56) = MEMORY[0x277D837D0];
  *(v19 + 64) = sub_2662C4094();
  v20 = v23;
  *(v19 + 32) = v24;
  *(v19 + 40) = v20;
  sub_2664DFDC8(v18, &dword_26629C000, v13, "appSelectionSignalsSignal", 25, 2, v10, "name=%{signpost.telemetry:string1,public}@ enableTelemetry=YES ", 63, 2, v19);

  v21 = swift_allocObject();
  *(v21 + 16) = sub_266352A18;
  *(v21 + 24) = v16;

  sub_2663E3BE0(sub_266352AC0, v21, v27, v26);

  return (*(v5 + 8))(v10, v4);
}

uint64_t sub_2663E3BE0(void (*a1)(void *, __n128), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_2664DFE38();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F91468 != -1)
  {
    swift_once();
  }

  v12 = sub_26632958C(1009);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v8, qword_280F914F0);
  swift_beginAccess();
  (*(v9 + 16))(v11, v13, v8);
  v14 = sub_2664DFE18();
  v15 = sub_2664E06E8();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v24 = a2;
    v17 = a4;
    v18 = a3;
    v19 = a1;
    v20 = v16;
    *v16 = 0;
    _os_log_impl(&dword_26629C000, v14, v15, "ClientContextSignal#signal", v16, 2u);
    v21 = v20;
    a1 = v19;
    a3 = v18;
    a4 = v17;
    a2 = v24;
    MEMORY[0x266784AD0](v21, -1, -1);
  }

  (*(v9 + 8))(v11, v8);
  v22 = [objc_opt_self() userContext];

  sub_2663E72D0(v22, a4, a3, v12, a1, a2);
}

uint64_t sub_2663E3E68(uint64_t a1, void (*a2)(void *), uint64_t a3, uint64_t a4, _BOOL8 a5)
{
  v8 = sub_2664DFE38();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
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
    *v15 = 0;
    _os_log_impl(&dword_26629C000, v13, v14, "ClientContextSignal#signal context values", v15, 2u);
    MEMORY[0x266784AD0](v15, -1, -1);
  }

  (*(v9 + 8))(v11, v8);
  v16 = sub_2663E61E8(a1, a5);
  v18[3] = type metadata accessor for ClientContextSignal();
  v18[4] = &off_2877EEE58;
  v18[0] = v16;
  a2(v18);
  return __swift_destroy_boxed_opaque_existential_1Tm(v18);
}

uint64_t sub_2663E4068(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = *(a1 + 32);
  if (a2)
  {
    sub_2662C1744(0, &qword_280F8F5A0, 0x277CFE358);
    sub_2662C1744(0, &unk_280F8F600, 0x277CFE340);
    sub_2663E788C();
    v2 = sub_2664E01C8();
  }

  v3(v2);
}

uint64_t sub_2663E4124()
{
  v0 = sub_2662C3A68(&unk_2877E1520);
  result = swift_arrayDestroy();
  qword_280F91CC8 = v0;
  return result;
}

unint64_t sub_2663E4170(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073600, &unk_2664E37B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2664EB0A0;
  strcpy((inited + 32), "clientWorkout");
  *(inited + 46) = -4864;
  v5 = MEMORY[0x277D83B88];
  v6 = sub_2664E0D48();
  MEMORY[0x2667833B0](v6);

  v7 = MEMORY[0x277D837D0];
  *(inited + 48) = 0x6574617473;
  *(inited + 56) = 0xE500000000000000;
  *(inited + 72) = v7;
  strcpy((inited + 80), "clientLocked");
  *(inited + 93) = 0;
  *(inited + 94) = -5120;
  v8 = sub_2664E0D48();
  MEMORY[0x2667833B0](v8);

  *(inited + 96) = 0x6574617473;
  *(inited + 104) = 0xE500000000000000;
  *(inited + 120) = v7;
  strcpy((inited + 128), "clientCarplay");
  *(inited + 142) = -4864;
  v9 = sub_2664E0D48();
  MEMORY[0x2667833B0](v9);

  *(inited + 144) = 0x6574617473;
  *(inited + 152) = 0xE500000000000000;
  *(inited + 168) = v7;
  *(inited + 176) = 0xD000000000000012;
  *(inited + 184) = 0x80000002664F1090;
  v10 = sub_2664E0D48();
  MEMORY[0x2667833B0](v10);

  *(inited + 192) = 0x6574617473;
  *(inited + 200) = 0xE500000000000000;
  *(inited + 216) = v7;
  *(inited + 224) = 0xD000000000000010;
  *(inited + 232) = 0x80000002664F10B0;
  v11 = sub_2664E0D48();
  MEMORY[0x2667833B0](v11);

  *(inited + 240) = 0x6574617473;
  *(inited + 248) = 0xE500000000000000;
  *(inited + 264) = v7;
  strcpy((inited + 272), "clientMotion");
  *(inited + 285) = 0;
  *(inited + 286) = -5120;
  v12 = sub_2664E0D48();
  MEMORY[0x2667833B0](v12);

  *(inited + 288) = 0x6574617473;
  *(inited + 296) = 0xE500000000000000;
  *(inited + 312) = v7;
  strcpy((inited + 320), "clientDaylight");
  *(inited + 335) = -18;
  v13 = sub_2664E0D48();
  MEMORY[0x2667833B0](v13);

  *(inited + 336) = 0x6574617473;
  *(inited + 344) = 0xE500000000000000;
  *(inited + 360) = v7;
  *(inited + 368) = 0xD000000000000016;
  *(inited + 376) = 0x80000002664F10D0;
  v14 = v2[11];
  *(inited + 384) = v2[10];
  *(inited + 392) = v14;
  *(inited + 408) = v7;
  *(inited + 416) = 0xD000000000000014;
  *(inited + 424) = 0x80000002664F10F0;
  v15 = v2[13];
  *(inited + 432) = v3[12];
  *(inited + 440) = v15;
  *(inited + 456) = v7;
  *(inited + 464) = 0xD00000000000001CLL;
  *(inited + 472) = 0x80000002664F1110;
  v16 = v3[15];
  if (v16)
  {
    if (v3[14] == a1 && v16 == a2)
    {
      v17 = 1;
    }

    else
    {
      v17 = sub_2664E0D88();
    }
  }

  else
  {
    v17 = 0;
  }

  v18 = MEMORY[0x277D839B0];
  *(inited + 480) = v17 & 1;
  *(inited + 504) = v18;
  *(inited + 512) = 0x6F48746E65696C63;
  *(inited + 520) = 0xEF796144664F7275;
  v19 = v3[16];
  *(inited + 552) = v5;
  *(inited + 528) = v19;
  *(inited + 560) = 0x6144746E65696C63;
  *(inited + 568) = 0xEF6B656557664F79;
  v20 = v3[17];
  *(inited + 600) = v5;
  *(inited + 576) = v20;
  strcpy((inited + 608), "clientDevice");
  *(inited + 621) = 0;
  *(inited + 622) = -5120;
  v21 = v3[18];
  v22 = v3[19];
  *(inited + 648) = v7;
  *(inited + 624) = v21;
  *(inited + 632) = v22;

  v23 = sub_2663854AC(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2800734F0, &unk_2664E3660);
  swift_arrayDestroy();
  return v23;
}

uint64_t sub_2663E4630(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  result = sub_2663E4170(a1, a2);
  if (*(result + 16))
  {
    v7 = result;
    result = sub_2662A3E98(0xD000000000000016, 0x80000002664F10D0);
    if (v8)
    {
      sub_2662A01E8(*(v7 + 56) + 32 * result, v11);

      sub_266318804(v11, &v12);
      swift_dynamicCast();
      *(a3 + 136) = v9;
      *(a3 + 144) = v10;

      *(a3 + 208) = *(v4 + 128);
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2663E4700()
{

  return swift_deallocClassInstance();
}

double sub_2663E4784()
{
  if (qword_280F90728 != -1)
  {
    swift_once();
  }

  return result;
}

uint64_t sub_2663E47E0(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v4 = *(*v1 + 120);
  if (v4)
  {

    sub_2664475B4(a1, v3, v4);
    v3 = v6;
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  *(v2 + 112) = v3;
  *(v2 + 120) = v8;
}

unint64_t sub_2663E48B0(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = sub_2664DFE38();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v88 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v88 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v88 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v88 - v19;
  MEMORY[0x28223BE20](v18);
  v23 = &v88 - v22;
  if (!v21)
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v67 = __swift_project_value_buffer(v7, qword_280F914F0);
    swift_beginAccess();
    (*(v8 + 16))(v11, v67, v7);
    v68 = a1;
    v69 = sub_2664DFE18();
    v70 = sub_2664E06D8();

    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      *v71 = 138412290;
      *(v71 + 4) = v68;
      *v72 = v68;
      v73 = v68;
      _os_log_impl(&dword_26629C000, v69, v70, "ClientContextSignal#valueForKeyPath missing values, so no value for path: %@", v71, 0xCu);
      sub_2662E4324(v72);
      MEMORY[0x266784AD0](v72, -1, -1);
      MEMORY[0x266784AD0](v71, -1, -1);
    }

    (*(v8 + 8))(v11, v7);
    return -1;
  }

  v97 = a3;
  v24 = sub_2663E3650(a1, v21);
  if (!v24 || (v25 = v24, v26 = [v24 value], v25, !v26))
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v60 = __swift_project_value_buffer(v7, qword_280F914F0);
    swift_beginAccess();
    (*(v8 + 16))(v14, v60, v7);
    v61 = a1;
    v62 = sub_2664DFE18();
    v63 = sub_2664E06C8();

    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      *v64 = 138412290;
      *(v64 + 4) = v61;
      *v65 = v61;
      v66 = v61;
      _os_log_impl(&dword_26629C000, v62, v63, "ClientContextSignal#valueForKeyPath missing value for path: %@", v64, 0xCu);
      sub_2662E4324(v65);
      MEMORY[0x266784AD0](v65, -1, -1);
      MEMORY[0x266784AD0](v64, -1, -1);
    }

    (*(v8 + 8))(v14, v7);
    return -1;
  }

  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v27 = __swift_project_value_buffer(v7, qword_280F914F0);
  swift_beginAccess();
  v28 = *(v8 + 16);
  v95 = v8 + 16;
  v96 = v27;
  v94 = v28;
  v28(v23, v27, v7);
  swift_unknownObjectRetain();
  v29 = a1;
  v30 = sub_2664DFE18();
  v31 = sub_2664E06C8();
  swift_unknownObjectRelease();

  v32 = os_log_type_enabled(v30, v31);
  v93 = v29;
  if (v32)
  {
    v33 = swift_slowAlloc();
    v91 = a4;
    v34 = v33;
    v35 = swift_slowAlloc();
    v89 = v31;
    v36 = v26;
    v37 = v35;
    v88 = v35;
    v90 = swift_slowAlloc();
    v98[0] = v90;
    *v34 = 138412802;
    *(v34 + 4) = v29;
    *v37 = v29;
    v26 = v36;
    *(v34 + 12) = 2080;
    ObjectType = swift_getObjectType();
    v38 = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2800734E0, &qword_2664EB1E8);
    v39 = sub_2664E0318();
    v92 = v17;
    v41 = sub_2662A320C(v39, v40, v98);

    *(v34 + 14) = v41;
    *(v34 + 22) = 2080;
    ObjectType = v36;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800734B8, &unk_2664EB1C0);
    v42 = sub_2664E0318();
    v44 = sub_2662A320C(v42, v43, v98);
    v17 = v92;

    *(v34 + 24) = v44;
    _os_log_impl(&dword_26629C000, v30, v89, "ClientContextSignal#valueForKeyPath for path: %@ received value of type: %s: %s", v34, 0x20u);
    v45 = v88;
    sub_2662E4324(v88);
    MEMORY[0x266784AD0](v45, -1, -1);
    v46 = v90;
    swift_arrayDestroy();
    MEMORY[0x266784AD0](v46, -1, -1);
    v47 = v34;
    a4 = v91;
    MEMORY[0x266784AD0](v47, -1, -1);
  }

  v48 = *(v8 + 8);
  v48(v23, v7);
  v98[0] = v26;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800734B8, &unk_2664EB1C0);
  v49 = swift_dynamicCast();
  v50 = v97;
  if (!v49)
  {
    if (a4)
    {
      v98[0] = v26;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800729D0, &qword_2664EB1E0);
      if (swift_dynamicCast())
      {
        v75 = ObjectType;
        if (*(ObjectType + 16) && (v76 = sub_2662A3E98(v50, a4), (v77 & 1) != 0))
        {
          sub_2662A01E8(*(v75 + 56) + 32 * v76, v98);

          if (swift_dynamicCast())
          {
            v91 = ObjectType;
            v94(v17, v96, v7);
            v78 = v93;

            v79 = sub_2664DFE18();
            v80 = sub_2664E06C8();

            if (os_log_type_enabled(v79, v80))
            {
              v81 = swift_slowAlloc();
              v82 = swift_slowAlloc();
              v92 = v17;
              v83 = v82;
              v84 = swift_slowAlloc();
              v96 = v48;
              v85 = v84;
              v98[0] = v84;
              *v81 = 138412802;
              *(v81 + 4) = v78;
              *v83 = v78;
              *(v81 + 12) = 2080;
              v86 = v78;
              *(v81 + 14) = sub_2662A320C(v97, a4, v98);
              *(v81 + 22) = 2048;
              v87 = v91;
              *(v81 + 24) = v91;
              _os_log_impl(&dword_26629C000, v79, v80, "ClientContextSignal#valueForKeyPath for path: %@ and subpath: %s, received BOOL value: %ld", v81, 0x20u);
              sub_2662E4324(v83);
              MEMORY[0x266784AD0](v83, -1, -1);
              __swift_destroy_boxed_opaque_existential_1Tm(v85);
              MEMORY[0x266784AD0](v85, -1, -1);
              MEMORY[0x266784AD0](v81, -1, -1);
              swift_unknownObjectRelease();

              v96(v92, v7);
              return v87;
            }

            else
            {

              swift_unknownObjectRelease();
              v48(v17, v7);
              return v91;
            }
          }
        }

        else
        {
        }
      }
    }

    swift_unknownObjectRelease();
    return -1;
  }

  v51 = ObjectType;
  v94(v20, v96, v7);
  v52 = v93;
  v53 = sub_2664DFE18();
  v54 = sub_2664E06C8();

  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    v96 = v48;
    v57 = v56;
    *v55 = 138412546;
    *(v55 + 4) = v52;
    *v56 = v52;
    *(v55 + 12) = 2048;
    *(v55 + 14) = v51;
    v58 = v52;
    _os_log_impl(&dword_26629C000, v53, v54, "ClientContextSignal#valueForKeyPath for path: %@ received BOOL value: %ld", v55, 0x16u);
    sub_2662E4324(v57);
    v59 = v57;
    v48 = v96;
    MEMORY[0x266784AD0](v59, -1, -1);
    MEMORY[0x266784AD0](v55, -1, -1);
    swift_unknownObjectRelease();
  }

  else
  {

    swift_unknownObjectRelease();
  }

  v48(v20, v7);
  return v51;
}

uint64_t sub_2663E52E4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v119 = a3;
  v120 = a4;
  v6 = sub_2664DFE38();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v114 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v114 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v114 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v114 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v114 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v114 - v23;
  if (!a2)
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v50 = __swift_project_value_buffer(v6, qword_280F914F0);
    swift_beginAccess();
    (*(v7 + 16))(v10, v50, v6);
    v51 = a1;
    v52 = sub_2664DFE18();
    v53 = sub_2664E06D8();

    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      *v54 = 138412290;
      *(v54 + 4) = v51;
      *v55 = v51;
      v56 = v51;
      _os_log_impl(&dword_26629C000, v52, v53, "ClientContextSignal#stringValueForKeyPath missing values, so no value for path: %@", v54, 0xCu);
      sub_2662E4324(v55);
      MEMORY[0x266784AD0](v55, -1, -1);
      MEMORY[0x266784AD0](v54, -1, -1);
    }

    (*(v7 + 8))(v10, v6);
    return 0;
  }

  v25 = sub_2663E3650(a1, a2);
  if (!v25)
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v57 = __swift_project_value_buffer(v6, qword_280F914F0);
    swift_beginAccess();
    (*(v7 + 16))(v13, v57, v6);
    v58 = a1;
    v59 = sub_2664DFE18();
    v60 = sub_2664E06C8();

    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      *v61 = 138412290;
      *(v61 + 4) = v58;
      *v62 = v58;
      v63 = v58;
      _os_log_impl(&dword_26629C000, v59, v60, "ClientContextSignal#stringValueForKeyPath missing entry for path: %@", v61, 0xCu);
      sub_2662E4324(v62);
      MEMORY[0x266784AD0](v62, -1, -1);
      MEMORY[0x266784AD0](v61, -1, -1);
    }

    (*(v7 + 8))(v13, v6);
    return 0;
  }

  v26 = v25;
  if (v120)
  {
    v27 = [v25 value];
    if (v27)
    {
      v123[0] = v27;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800734B8, &unk_2664EB1C0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800729D0, &qword_2664EB1E0);
      if (swift_dynamicCast())
      {
        v28 = v121;
        if (v121[2] && (v29 = sub_2662A3E98(v119, v120), (v30 & 1) != 0))
        {
          sub_2662A01E8(*(v28 + 56) + 32 * v29, v123);

          if (swift_dynamicCast())
          {
            v117 = v26;
            v118 = v121;
            v116 = v122;
            if (qword_280F914E8 != -1)
            {
              swift_once();
            }

            v31 = v6;
            v32 = __swift_project_value_buffer(v6, qword_280F914F0);
            swift_beginAccess();
            v33 = v7;
            (*(v7 + 16))(v24, v32, v6);

            v34 = a1;
            v35 = v120;

            v36 = sub_2664DFE18();
            v37 = sub_2664E06C8();

            if (os_log_type_enabled(v36, v37))
            {
              v38 = swift_slowAlloc();
              v39 = swift_slowAlloc();
              v115 = swift_slowAlloc();
              v121 = v115;
              *v38 = 138413058;
              *(v38 + 4) = v34;
              *v39 = v34;
              *(v38 + 12) = 2080;
              v40 = v34;
              *(v38 + 14) = sub_2662A320C(v119, v35, &v121);
              *(v38 + 22) = 2080;
              v124 = MEMORY[0x277D837D0];
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2800734D0, &qword_2664EB1D8);
              v41 = sub_2664E0318();
              v42 = v31;
              v44 = sub_2662A320C(v41, v43, &v121);

              *(v38 + 24) = v44;
              *(v38 + 32) = 2080;
              v45 = v116;

              v46 = v118;
              v47 = sub_2662A320C(v118, v45, &v121);

              *(v38 + 34) = v47;
              _os_log_impl(&dword_26629C000, v36, v37, "ClientContextSignal#stringValueForKeyPath for path: %@ and subpath: %s received value of type: %s: %s", v38, 0x2Au);
              sub_2662E4324(v39);
              MEMORY[0x266784AD0](v39, -1, -1);
              v48 = v115;
              swift_arrayDestroy();
              MEMORY[0x266784AD0](v48, -1, -1);
              MEMORY[0x266784AD0](v38, -1, -1);

              (*(v33 + 8))(v24, v42);
              return v46;
            }

            (*(v33 + 8))(v24, v31);
            return v118;
          }
        }

        else
        {
        }
      }
    }

    v64 = [v26 value];
    if (v64)
    {
      v123[0] = v64;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800734B8, &unk_2664EB1C0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800734C0, qword_2664EB4A0);
      if (swift_dynamicCast())
      {
        if (v121[2] && (v65 = v121[4], , , *(v65 + 16)) && (v66 = sub_2662A3E98(v119, v120), (v67 & 1) != 0))
        {
          sub_2662A01E8(*(v65 + 56) + 32 * v66, v123);

          if (swift_dynamicCast())
          {
            v118 = v121;
            v116 = v122;
            if (qword_280F914E8 != -1)
            {
              swift_once();
            }

            v68 = v6;
            v69 = __swift_project_value_buffer(v6, qword_280F914F0);
            swift_beginAccess();
            v70 = v7;
            (*(v7 + 16))(v22, v69, v6);
            v71 = a1;
            v72 = v120;

            v73 = sub_2664DFE18();
            v74 = sub_2664E06C8();

            if (os_log_type_enabled(v73, v74))
            {
              v75 = swift_slowAlloc();
              v76 = swift_slowAlloc();
              v115 = v68;
              v77 = v76;
              v114 = swift_slowAlloc();
              v121 = v114;
              *v75 = 138413058;
              *(v75 + 4) = v71;
              *v77 = v71;
              *(v75 + 12) = 2080;
              v78 = v71;
              *(v75 + 14) = sub_2662A320C(v119, v72, &v121);
              *(v75 + 22) = 2080;
              v124 = MEMORY[0x277D837D0];
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2800734D0, &qword_2664EB1D8);
              v79 = sub_2664E0318();
              v81 = sub_2662A320C(v79, v80, &v121);
              v117 = v26;
              v82 = v81;

              *(v75 + 24) = v82;
              *(v75 + 32) = 2080;
              v83 = v116;

              v84 = v118;
              v85 = sub_2662A320C(v118, v83, &v121);

              *(v75 + 34) = v85;
              _os_log_impl(&dword_26629C000, v73, v74, "ClientContextSignal#stringValueForKeyPath for path: %@ and nested array subpath: %s received value of type: %s: %s", v75, 0x2Au);
              sub_2662E4324(v77);
              MEMORY[0x266784AD0](v77, -1, -1);
              v86 = v114;
              swift_arrayDestroy();
              MEMORY[0x266784AD0](v86, -1, -1);
              MEMORY[0x266784AD0](v75, -1, -1);

              (*(v70 + 8))(v22, v115);
              return v84;
            }

            (*(v7 + 8))(v22, v68);
            return v118;
          }
        }

        else
        {
        }
      }
    }
  }

  v87 = [v26 value];
  if (!v87 || (v121 = v87, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800734B8, &unk_2664EB1C0), v88 = MEMORY[0x277D837D0], (swift_dynamicCast() & 1) == 0))
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v105 = __swift_project_value_buffer(v6, qword_280F914F0);
    swift_beginAccess();
    (*(v7 + 16))(v16, v105, v6);
    v106 = a1;
    v107 = sub_2664DFE18();
    v108 = sub_2664E06C8();

    if (os_log_type_enabled(v107, v108))
    {
      v109 = v26;
      v110 = swift_slowAlloc();
      v111 = swift_slowAlloc();
      *v110 = 138412290;
      *(v110 + 4) = v106;
      *v111 = v106;
      v112 = v106;
      _os_log_impl(&dword_26629C000, v107, v108, "ClientContextSignal#stringValueForKeyPath missing value for path: %@", v110, 0xCu);
      sub_2662E4324(v111);
      MEMORY[0x266784AD0](v111, -1, -1);
      v113 = v110;
      v26 = v109;
      MEMORY[0x266784AD0](v113, -1, -1);
    }

    (*(v7 + 8))(v16, v6);
    return 0;
  }

  v89 = v123[1];
  v117 = v26;
  v118 = v123[0];
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v90 = __swift_project_value_buffer(v6, qword_280F914F0);
  swift_beginAccess();
  (*(v7 + 16))(v19, v90, v6);
  v91 = a1;

  v92 = sub_2664DFE18();
  v93 = sub_2664E06C8();

  if (os_log_type_enabled(v92, v93))
  {
    v94 = swift_slowAlloc();
    v95 = swift_slowAlloc();
    v96 = swift_slowAlloc();
    v120 = v7;
    v121 = v96;
    v97 = v96;
    *v94 = 138412802;
    *(v94 + 4) = v91;
    *v95 = v91;
    *(v94 + 12) = 2080;
    v124 = v88;
    v98 = v91;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2800734D0, &qword_2664EB1D8);
    v99 = sub_2664E0318();
    v101 = sub_2662A320C(v99, v100, &v121);

    *(v94 + 14) = v101;
    *(v94 + 22) = 2080;
    v102 = v89;

    v103 = v118;
    v104 = sub_2662A320C(v118, v102, &v121);

    *(v94 + 24) = v104;
    _os_log_impl(&dword_26629C000, v92, v93, "ClientContextSignal#stringValueForKeyPath for path: %@ received value of type: %s: %s", v94, 0x20u);
    sub_2662E4324(v95);
    MEMORY[0x266784AD0](v95, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x266784AD0](v97, -1, -1);
    MEMORY[0x266784AD0](v94, -1, -1);

    (*(v120 + 8))(v19, v6);
    return v103;
  }

  else
  {

    (*(v7 + 8))(v19, v6);
    return v118;
  }
}

double *sub_2663E61E8(uint64_t a1, _BOOL8 a2)
{
  v136 = a2;
  v134 = sub_2664DE178();
  v133 = *(v134 - 8);
  MEMORY[0x28223BE20](v134);
  v132 = &v118 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = sub_2664DE578();
  v127 = *(v130 - 8);
  MEMORY[0x28223BE20](v130);
  v124 = &v118 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = sub_2664DE598();
  v128 = *(v131 - 8);
  MEMORY[0x28223BE20](v131);
  v125 = &v118 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = sub_2664DE438();
  v126 = *(v129 - 8);
  MEMORY[0x28223BE20](v129);
  v145 = &v118 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2664DE518();
  v138 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v118 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2664DFE38();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v118 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v144 = &v118 - v16;
  MEMORY[0x28223BE20](v15);
  v18 = &v118 - v17;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v19 = __swift_project_value_buffer(v10, qword_280F914F0);
  swift_beginAccess();
  v20 = *(v11 + 16);
  v140 = v11 + 16;
  v141 = v19;
  v139 = v20;
  v20(v18, v19, v10);

  v21 = sub_2664DFE18();
  v22 = sub_2664E06C8();

  v23 = os_log_type_enabled(v21, v22);
  v137 = v10;
  v143 = v11;
  v120 = v14;
  if (v23)
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v147[0] = v25;
    *v24 = 136315138;
    v148 = a1;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800734C8, &qword_2664EB1D0);
    v26 = sub_2664E0318();
    v135 = v7;
    v28 = a1;
    v29 = sub_2662A320C(v26, v27, v147);

    *(v24 + 4) = v29;
    a1 = v28;
    _os_log_impl(&dword_26629C000, v21, v22, "ClientContextSignal#clientContextSignal values: %s", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v25);
    MEMORY[0x266784AD0](v25, -1, -1);
    v30 = v24;
    v10 = v137;
    MEMORY[0x266784AD0](v30, -1, -1);

    v7 = v135;
  }

  else
  {
  }

  v142 = *(v11 + 8);
  v142(v18, v10);
  sub_2664DE508();
  v122 = sub_2664DE4D8();
  v32 = v31;
  v33 = *(v138 + 8);
  v33(v9, v7);
  sub_2664DE508();
  v34 = sub_2664DE4C8();
  v123 = v35;
  v33(v9, v7);
  v36 = v144;
  if (qword_280F90D58 != -1)
  {
    swift_once();
  }

  v37 = BYTE2(dword_280F90D60);
  v38 = objc_opt_self();
  result = [v38 keyPathForCarplayConnectedStatus];
  if (!result)
  {
    __break(1u);
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v40 = result;
  v41 = sub_2663E48B0(result, a1, 0, 0);

  v139(v36, v141, v10);

  v42 = sub_2664DFE18();
  v43 = v10;
  v44 = sub_2664E06C8();
  v45 = os_log_type_enabled(v42, v44);
  v121 = v34;
  LODWORD(v135) = v37;
  v138 = v41;
  if (v45)
  {
    v119 = v32;
    v46 = v41 == 1;
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v147[0] = v49;
    *v47 = 67109634;
    *(v47 + 4) = v46;
    *(v47 + 8) = 2112;
    v50 = [v38 keyPathForAppUsageDataDictionaries];
    *(v47 + 10) = v50;
    *v48 = v50;
    *(v47 + 18) = 2080;
    v118 = a1;
    if (!a1)
    {
      goto LABEL_18;
    }

    v51 = [v38 keyPathForAppUsageDataDictionaries];

    if (!v51)
    {
LABEL_61:
      __break(1u);
      return result;
    }

    v52 = sub_2663E3650(v51, a1);

    if (v52 && (v53 = [v52 value], v52, v53))
    {
      v148 = v53;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800734B8, &unk_2664EB1C0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800734C0, qword_2664EB4A0);
      v54 = swift_dynamicCast();
      v55 = v146;
      if (!v54)
      {
        v55 = 0;
      }
    }

    else
    {
LABEL_18:
      v55 = 0;
    }

    v148 = v55;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800734A8, qword_2664EB198);
    v57 = sub_2664E0318();
    v59 = sub_2662A320C(v57, v58, v147);

    *(v47 + 20) = v59;
    _os_log_impl(&dword_26629C000, v42, v44, "ClientContextSignal#clientContextSignal isCarplay? %{BOOL}d, keypath: %@ values: %s", v47, 0x1Cu);
    sub_2662E4324(v48);
    MEMORY[0x266784AD0](v48, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v49);
    MEMORY[0x266784AD0](v49, -1, -1);
    MEMORY[0x266784AD0](v47, -1, -1);

    v56 = v137;
    v142(v144, v137);
    a1 = v118;
    v32 = v119;
  }

  else
  {

    v142(v36, v43);
    v56 = v43;
  }

  result = [v38 keyPathForForegroundApp];
  if (!result)
  {
    goto LABEL_53;
  }

  v60 = result;
  v61 = sub_2663E52E4(result, a1, 0, 0);
  v63 = v62;

  v64 = v138;
  if (v138 != 1)
  {
    goto LABEL_31;
  }

  result = [v38 keyPathForAppUsageDataDictionaries];
  if (!result)
  {
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  v65 = result;
  v66 = sub_2663E52E4(result, a1, 0x4449656C646E7562, 0xE800000000000000);
  v68 = v67;

  if (!v68)
  {
    goto LABEL_31;
  }

  v69 = HIBYTE(v68) & 0xF;
  if ((v68 & 0x2000000000000000) == 0)
  {
    v69 = v66 & 0xFFFFFFFFFFFFLL;
  }

  if (!v69)
  {

LABEL_31:
    v144 = v61;
    v68 = v63;
    goto LABEL_32;
  }

  v144 = v66;
  v70 = v120;
  v139(v120, v141, v56);

  v71 = sub_2664DFE18();
  v72 = sub_2664E06C8();

  if (os_log_type_enabled(v71, v72))
  {
    v73 = swift_slowAlloc();
    v119 = v32;
    LODWORD(v141) = v72;
    v74 = v73;
    v75 = swift_slowAlloc();
    v147[1] = v63;
    v148 = v75;
    *v74 = 136315394;
    v147[0] = v61;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800734A0, &qword_2664E3B40);
    v76 = sub_2664E0318();
    v78 = a1;
    v79 = sub_2662A320C(v76, v77, &v148);

    *(v74 + 4) = v79;
    a1 = v78;
    *(v74 + 12) = 2080;
    *(v74 + 14) = sub_2662A320C(v144, v68, &v148);
    _os_log_impl(&dword_26629C000, v71, v141, "ClientContextSignal#clientContextSignal overriding foreground bundle: %s with carplay foreground bundle: %s", v74, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266784AD0](v75, -1, -1);
    v32 = v119;
    MEMORY[0x266784AD0](v74, -1, -1);

    v142(v70, v137);
  }

  else
  {

    v142(v70, v56);
  }

  v64 = v138;
LABEL_32:
  sub_2664DE428();
  sub_2664DE388();
  v81 = v80;
  result = [v38 keyPathForWorkoutStatus];
  if (!result)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v82 = result;
  v83 = sub_2663E48B0(result, a1, 0, 0);

  result = [v38 keyPathForDeviceLockStatus];
  v84 = v135;
  if (!result)
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v85 = result;
  v86 = sub_2663E48B0(result, a1, 0, 0);

  result = [v38 keyPathForCarConnectedStatus];
  if (!result)
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  v87 = result;
  v143 = sub_2663E48B0(result, a1, 0, 0);

  result = [v38 keyPathForNavigationStatus];
  if (!result)
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  v88 = result;
  v142 = sub_2663E48B0(result, a1, 0, 0);

  result = [v38 keyPathForSunriseSunsetDataDictionary];
  if (!result)
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  v89 = result;
  v140 = v86;
  v141 = v83;
  v139 = sub_2663E48B0(result, a1, 0x67696C7961447369, 0xEA00000000007468);

  result = [v38 keyPathForMotionState];
  if (!result)
  {
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  v90 = result;
  v136 = v64 == 1;
  if (v84)
  {
    v91 = 0xE300000000000000;
  }

  else
  {
    v91 = 0xE500000000000000;
  }

  v92 = 6578544;
  if (!v84)
  {
    v92 = 0x656E6F6870;
  }

  v137 = v92;
  v138 = v91;
  v135 = sub_2663E48B0(result, a1, 0, 0);

  v93 = 0x6E776F6E6B6E75;
  if (v32)
  {
    v93 = v122;
  }

  v122 = v93;
  v94 = 0xE700000000000000;
  if (v32)
  {
    v94 = v32;
  }

  v120 = v94;

  v119 = v68;
  v95 = v125;
  sub_2664DE568();
  v96 = v127;
  v97 = *(v127 + 104);
  v98 = v124;
  v99 = v130;
  v97(v124, *MEMORY[0x277CC9980], v130);
  v118 = sub_2664DE588();
  v100 = *(v96 + 8);
  v100(v98, v99);
  v128 = *(v128 + 8);
  v101 = v131;
  (v128)(v95, v131);
  sub_2664DE568();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073208, &unk_2664E9A70);
  v102 = (*(v96 + 80) + 32) & ~*(v96 + 80);
  v103 = swift_allocObject();
  *(v103 + 16) = xmmword_2664E36F0;
  v97((v103 + v102), *MEMORY[0x277CC99B8], v99);
  sub_2662C43B4(v103);
  swift_setDeallocating();
  v100((v103 + v102), v99);
  swift_deallocClassInstance();
  v104 = v132;
  v105 = v145;
  sub_2664DE538();

  (v128)(v95, v101);
  v106 = sub_2664DE168();
  LOBYTE(v96) = v107;
  (*(v133 + 8))(v104, v134);
  (*(v126 + 8))(v105, v129);
  if (v96)
  {
    v108 = 0;
  }

  else
  {
    v108 = v106;
  }

  type metadata accessor for ClientContextSignal();
  v109 = swift_allocObject();
  v109[2] = v81;
  v110 = v140;
  v109[3] = v141;
  v109[4] = v110;
  v112 = v142;
  v111 = v143;
  v109[5] = v136;
  v109[6] = v111;
  v113 = v139;
  v109[7] = v112;
  v109[8] = v113;
  v114 = v121;
  v109[9] = v135;
  v109[10] = v114;
  v115 = v122;
  v109[11] = v123;
  v109[12] = v115;
  v116 = v144;
  v109[13] = v120;
  v109[14] = v116;
  v109[15] = v119;

  v109[16] = v118;
  v109[17] = v108;
  v117 = v138;
  v109[18] = v137;
  v109[19] = v117;
  return v109;
}

uint64_t sub_2663E722C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12[3] = a5;
  v12[4] = a6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v12);
  (*(*(a5 - 8) + 16))(boxed_opaque_existential_1, a1, a5);
  if (a2)
  {
    sub_26636B8D0();
  }

  a3(v12);
  return __swift_destroy_boxed_opaque_existential_1Tm(v12);
}

uint64_t sub_2663E72D0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *, __n128), uint64_t a6)
{
  v37 = a3;
  v38 = a2;
  v10 = sub_2664DFE38();
  v36 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_2664DE438();
  v39 = *(v41 - 8);
  v13 = *(v39 + 64);
  v14 = MEMORY[0x28223BE20](v41);
  v15 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v35 - v16;
  v18 = swift_allocObject();
  v18[2] = a4;
  v18[3] = a5;
  v18[4] = a6;

  v40 = v17;
  sub_2664DE428();
  if (a1)
  {
    v19 = qword_280F90720;
    swift_unknownObjectRetain();
    if (v19 != -1)
    {
      swift_once();
    }

    sub_2662C1744(0, &qword_280F8F5A0, 0x277CFE358);
    v20 = sub_2664E0488();
    v21 = v39;
    v22 = v40;
    v23 = v41;
    (*(v39 + 16))(v15, v40, v41);
    v24 = (*(v21 + 80) + 40) & ~*(v21 + 80);
    v25 = swift_allocObject();
    *(v25 + 2) = sub_2663E77B0;
    *(v25 + 3) = v18;
    *(v25 + 4) = v37;
    (*(v21 + 32))(&v25[v24], v15, v23);
    v44 = sub_2663E7814;
    v45 = v25;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2663E4068;
    v43 = &block_descriptor_30;
    v26 = _Block_copy(aBlock);

    [a1 valuesForKeyPaths:v20 responseQueue:v38 withCompletion:v26];
    _Block_release(v26);
    swift_unknownObjectRelease();

    (*(v21 + 8))(v22, v23);
  }

  else
  {
    v27 = v36;
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v28 = __swift_project_value_buffer(v10, qword_280F914F0);
    swift_beginAccess();
    (*(v27 + 16))(v12, v28, v10);
    v29 = sub_2664DFE18();
    v30 = sub_2664E06D8();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_26629C000, v29, v30, "ClientContextSignal#signal nil user context", v31, 2u);
      MEMORY[0x266784AD0](v31, -1, -1);
    }

    (*(v27 + 8))(v12, v10);
    v32 = v40;
    v33 = sub_2663E61E8(0, v40);
    v43 = type metadata accessor for ClientContextSignal();
    v44 = &off_2877EEE58;
    aBlock[0] = v33;

    if (a4)
    {
      sub_26636B8D0();
    }

    (a5)(aBlock);
    __swift_destroy_boxed_opaque_existential_1Tm(aBlock);
    (*(v39 + 8))(v32, v41);
  }
}

uint64_t sub_2663E77B0(void *a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = a1[3];
  v6 = a1[4];
  v7 = __swift_project_boxed_opaque_existential_1(a1, v5);

  return sub_2663E722C(v7, v2, v3, v4, v5, v6);
}

uint64_t sub_2663E7814(uint64_t a1)
{
  v3 = *(sub_2664DE438() - 8);
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1 + ((*(v3 + 80) + 40) & ~*(v3 + 80));

  return sub_2663E3E68(a1, v4, v5, v6, v7);
}

unint64_t sub_2663E788C()
{
  result = qword_280F8F598;
  if (!qword_280F8F598)
  {
    sub_2662C1744(255, &qword_280F8F5A0, 0x277CFE358);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F8F598);
  }

  return result;
}

uint64_t CompanionDeviceProvider.__allocating_init(multiUserConnectionProvider:)(uint64_t a1)
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

uint64_t CompanionDeviceError.hashValue.getter()
{
  v1 = *v0;
  sub_2664E0E68();
  MEMORY[0x266783E90](v1);
  return sub_2664E0EB8();
}

void *CompanionDeviceProvider.init(multiUserConnectionProvider:)(void *a1)
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

uint64_t sub_2663E7B90(void *a1, uint64_t a2, uint64_t a3)
{
  v20 = a1;
  v18 = a2;
  v19 = a3;
  v3 = sub_2664DFE08();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v7 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v18 - v8;
  if (qword_280F91508 != -1)
  {
    swift_once();
  }

  v10 = qword_280F91D48;
  sub_2664DFDE8();
  (*(v4 + 16))(v7, v9, v3);
  v11 = (*(v4 + 80) + 33) & ~*(v4 + 80);
  v12 = (v5 + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = swift_allocObject();
  *(v13 + 16) = "recognizedUserCompanion";
  *(v13 + 24) = 23;
  *(v13 + 32) = 2;
  (*(v4 + 32))(v13 + v11, v7, v3);
  v14 = (v13 + v12);
  v15 = v19;
  *v14 = v18;
  v14[1] = v15;

  v16 = sub_2664E0848();
  sub_2664DFDC8(v16, &dword_26629C000, v10, "recognizedUserCompanion", 23, 2, v9, " enableTelemetry=YES ", 21, 2, MEMORY[0x277D84F90]);

  sub_2663E8908(v20, v21, sub_2663899A8, v13);

  return (*(v4 + 8))(v9, v3);
}

uint64_t sub_2663E7DEC(uint64_t (*a1)(void), uint64_t a2, void *a3, void *a4)
{
  v8 = sub_2664DFE38();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v39 - v13;
  v15 = a3[3];
  v16 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v15);
  LOBYTE(v41[0]) = 1;
  v17 = (*(v16 + 32))(v41, v15, v16);
  if (v18)
  {
    v19 = v17;
    v20 = v18;
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v40 = a1;
    v21 = __swift_project_value_buffer(v8, qword_280F914F0);
    swift_beginAccess();
    (*(v9 + 16))(v12, v21, v8);

    v22 = sub_2664DFE18();
    v23 = sub_2664E06E8();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v39 = a2;
      v25 = v24;
      v26 = swift_slowAlloc();
      v43[0] = v26;
      *v25 = 136315138;
      *(v25 + 4) = sub_2662A320C(v19, v20, v43);
      _os_log_impl(&dword_26629C000, v22, v23, "CompanionDeviceProvider#supports sharedUserID %s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v26);
      MEMORY[0x266784AD0](v26, -1, -1);
      v27 = v25;
      a2 = v39;
      MEMORY[0x266784AD0](v27, -1, -1);
    }

    (*(v9 + 8))(v12, v8);
    v28 = a4[5];
    v29 = a4[6];
    __swift_project_boxed_opaque_existential_1(a4 + 2, v28);
    v30 = swift_allocObject();
    *(v30 + 16) = v40;
    *(v30 + 24) = a2;
    v31 = *(v29 + 40);

    v31(v19, v20, sub_2663E8E7C, v30, v28, v29);
  }

  else
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v33 = __swift_project_value_buffer(v8, qword_280F914F0);
    swift_beginAccess();
    (*(v9 + 16))(v14, v33, v8);
    v34 = sub_2664DFE18();
    v35 = sub_2664E06D8();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = a1;
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_26629C000, v34, v35, "User is not recognized or confidence is not high enough to get companion information", v37, 2u);
      v38 = v37;
      a1 = v36;
      MEMORY[0x266784AD0](v38, -1, -1);
    }

    (*(v9 + 8))(v14, v8);
    memset(v41, 0, sizeof(v41));
    v42 = 256;
    return a1(v41);
  }
}

void sub_2663E8230(void *a1, void (*a2)(void), uint64_t a3)
{
  v44 = a3;
  v5 = sub_2664DFE38();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v41 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v43 = &v40 - v10;
  MEMORY[0x28223BE20](v9);
  v12 = &v40 - v11;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v5, qword_280F914F0);
  swift_beginAccess();
  v14 = *(v6 + 16);
  v45 = v5;
  v42 = v14;
  v14(v12, v13, v5);
  v15 = a1;
  v16 = sub_2664DFE18();
  v17 = sub_2664E06C8();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v40 = a2;
    v19 = v18;
    v20 = v6;
    v21 = swift_slowAlloc();
    *v19 = 138412290;
    *(v19 + 4) = v15;
    *v21 = a1;
    v22 = v15;
    _os_log_impl(&dword_26629C000, v16, v17, "CompanionDeviceProvider#supports sharedUserInfo %@", v19, 0xCu);
    sub_2662E4324(v21);
    v23 = v21;
    v6 = v20;
    MEMORY[0x266784AD0](v23, -1, -1);
    v24 = v19;
    a2 = v40;
    MEMORY[0x266784AD0](v24, -1, -1);
  }

  v25 = *(v6 + 8);
  v26 = v45;
  v25(v12, v45);
  if (a1)
  {
    v27 = v15;
    sub_2664DD460(v27, &v46);
    if (v47 == 1)
    {
      v28 = v41;
      v29 = v45;
      v42(v41, v13, v45);
      v30 = sub_2664DFE18();
      v31 = sub_2664E06D8();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = a2;
        v33 = swift_slowAlloc();
        *v33 = 0;
        _os_log_impl(&dword_26629C000, v30, v31, "CompanionDeviceProvider#supports Failed to get companion device info for user", v33, 2u);
        v34 = v33;
        a2 = v32;
        MEMORY[0x266784AD0](v34, -1, -1);
      }

      v25(v28, v29);
      v46 = 1;
      v47 = 0;
      v48 = 0uLL;
      v49 = 256;
      a2(&v46);
    }

    else
    {
      v49 = v49;
      a2(&v46);

      sub_2663E8E84(v46, v47, v48, *(&v48 + 1), v49, SHIBYTE(v49));
    }
  }

  else
  {
    v42(v43, v13, v26);
    v35 = sub_2664DFE18();
    v36 = sub_2664E06D8();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = a2;
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_26629C000, v35, v36, "CompanionDeviceProvider#supports Failed to retrieve sharedUserInfo", v38, 2u);
      v39 = v38;
      a2 = v37;
      MEMORY[0x266784AD0](v39, -1, -1);
    }

    v25(v43, v26);
    v46 = 1;
    v47 = 0;
    v48 = 0uLL;
    v49 = 256;
    a2(&v46);
  }
}

uint64_t CompanionDeviceProvider.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_2663E8708(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  v7 = a1;
  v8 = v4;
  return sub_266388150("recognizedUserCompanion", 23, 2, a2, a3, " enableTelemetry=YES ", 21, 2, sub_2663E8E74, v6);
}

void *sub_2663E8770(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  a2[5] = a3;
  a2[6] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2 + 2);
  (*(*(a3 - 8) + 32))(boxed_opaque_existential_1, a1, a3);
  return a2;
}

uint64_t sub_2663E87E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(_OWORD *))
{
  v7 = *(a1 + 32);
  v8 = *(a1 + 33);
  v9 = *(a1 + 16);
  v11[0] = *a1;
  v11[1] = v9;
  v12 = v7;
  v13 = v8;
  sub_2664E0838();
  if (qword_280F91508 != -1)
  {
    swift_once();
  }

  sub_2664DFDD8();
  return a6(v11);
}

uint64_t sub_2663E88BC(uint64_t a1, uint64_t (*a2)(_OWORD *))
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 33);
  v4 = *(a1 + 16);
  v6[0] = *a1;
  v6[1] = v4;
  v7 = v2;
  v8 = v3;
  return a2(v6);
}

uint64_t sub_2663E8908(void *a1, void *a2, void (*a3)(_OWORD *), uint64_t a4)
{
  v39 = a2;
  v41 = sub_2664DFE38();
  v7 = *(v41 - 8);
  v8 = MEMORY[0x28223BE20](v41);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v38 - v11;
  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  *(v13 + 24) = a4;
  v40 = v13;
  v15 = a1[3];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v15);
  LOBYTE(v42[0]) = 1;
  v16 = *(v14 + 32);

  v17 = v16(v42, v15, v14);
  if (v18)
  {
    v19 = v17;
    v20 = v18;
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v21 = v41;
    v22 = __swift_project_value_buffer(v41, qword_280F914F0);
    swift_beginAccess();
    (*(v7 + 16))(v12, v22, v21);

    v23 = sub_2664DFE18();
    v24 = sub_2664E06E8();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v44[0] = v26;
      *v25 = 136315138;
      *(v25 + 4) = sub_2662A320C(v19, v20, v44);
      _os_log_impl(&dword_26629C000, v23, v24, "CompanionDeviceProvider#supports sharedUserID %s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v26);
      MEMORY[0x266784AD0](v26, -1, -1);
      MEMORY[0x266784AD0](v25, -1, -1);
    }

    (*(v7 + 8))(v12, v21);
    v27 = v39[5];
    v28 = v39[6];
    __swift_project_boxed_opaque_existential_1(v39 + 2, v27);
    v29 = swift_allocObject();
    v30 = v40;
    *(v29 + 16) = sub_2663E8EC8;
    *(v29 + 24) = v30;
    v31 = *(v28 + 40);

    v31(v19, v20, sub_2663E8F14, v29, v27, v28);
  }

  else
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v32 = v41;
    v33 = __swift_project_value_buffer(v41, qword_280F914F0);
    swift_beginAccess();
    (*(v7 + 16))(v10, v33, v32);
    v34 = sub_2664DFE18();
    v35 = sub_2664E06D8();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_26629C000, v34, v35, "User is not recognized or confidence is not high enough to get companion information", v36, 2u);
      MEMORY[0x266784AD0](v36, -1, -1);
    }

    (*(v7 + 8))(v10, v41);
    memset(v42, 0, sizeof(v42));
    v43 = 256;
    a3(v42);
  }
}

unint64_t sub_2663E8D88()
{
  result = qword_280073500[0];
  if (!qword_280073500[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280073500);
  }

  return result;
}

void sub_2663E8E84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if ((a6 & 1) == 0)
  {
  }
}

uint64_t sub_2663E8EC8(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(a1 + 32);
  v4 = *(a1 + 33);
  v5 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v5;
  v8 = v3;
  v9 = v4;
  return v2(v7);
}

void sub_2663E8F30(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *))
{
  v5 = sub_2664DFE38();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v5, qword_280F914F0);
  swift_beginAccess();
  (*(v6 + 16))(v8, v9, v5);

  v10 = sub_2664DFE18();
  v11 = sub_2664E06B8();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v19[0] = v13;
    *v12 = 136315138;
    *(v12 + 4) = sub_2662A320C(*(a1 + 56), *(a1 + 64), v19);
    _os_log_impl(&dword_26629C000, v10, v11, "WholeLibraryHandler: building device playlist query for identifier: %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    MEMORY[0x266784AD0](v13, -1, -1);
    MEMORY[0x266784AD0](v12, -1, -1);
  }

  (*(v6 + 8))(v8, v5);
  v14 = [objc_opt_self() songsQuery];
  v15 = [v14 filterPredicates];

  if (v15)
  {
    sub_2663E9D9C();
    sub_26637F50C();
    v16 = sub_2664E0608();

    v17 = sub_2663E967C(v16);

    v19[1] = 0;
    v19[2] = 0;
    v19[0] = v17;
    v20 = xmmword_2664EB350;
    v21 = 0;
    v22 = 0;
    a3(v19);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2663E91F8()
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
  v6 = sub_2664E06B8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_26629C000, v5, v6, "WholeLibraryHandler: overriding shuffle for whole library", v7, 2u);
    MEMORY[0x266784AD0](v7, -1, -1);
  }

  (*(v1 + 8))(v3, v0);
  return 1;
}

uint64_t sub_2663E93A0(void *a1, void *a2, void *a3, void *a4)
{
  v8 = swift_allocObject();
  v9 = __swift_mutable_project_boxed_opaque_existential_1(a1, a1[3]);
  MEMORY[0x28223BE20](v9);
  v11 = (&v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v12 + 16))(v11);
  v13 = __swift_mutable_project_boxed_opaque_existential_1(a2, a2[3]);
  MEMORY[0x28223BE20](v13);
  v15 = (&v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v16 + 16))(v15);
  v17 = __swift_mutable_project_boxed_opaque_existential_1(a4, a4[3]);
  MEMORY[0x28223BE20](v17);
  v19 = (&v23 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v20 + 16))(v19);
  v21 = sub_2663E972C(*v11, v15, a3, v19, v8);
  __swift_destroy_boxed_opaque_existential_1Tm(a4);
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v21;
}

uint64_t sub_2663E9608()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 12);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 17);

  return swift_deallocClassInstance();
}

void *sub_2663E967C(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v2 = sub_2664E0A68();
  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  while (1)
  {
    v3 = sub_26640C934(v2, 0);

    v1 = sub_26640CDF8(&v5, v3 + 4, v2, v1);
    sub_2662B793C(v5);
    if (v1 == v2)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v2 = v1[2];
    if (!v2)
    {
      return MEMORY[0x277D84F90];
    }
  }

  return v3;
}

uint64_t sub_2663E972C(uint64_t a1, _OWORD *a2, void *a3, _OWORD *a4, uint64_t a5)
{
  v57 = a3;
  v10 = type metadata accessor for MediaPlaybackProvider();
  v80[3] = v10;
  v80[4] = &off_2877F3740;
  v80[0] = a1;
  v79[3] = &type metadata for PlaybackStarter;
  v79[4] = &off_2877EE098;
  v11 = swift_allocObject();
  v79[0] = v11;
  v12 = a2[3];
  v11[3] = a2[2];
  v11[4] = v12;
  v11[5] = a2[4];
  v13 = a2[1];
  v11[1] = *a2;
  v11[2] = v13;
  v78[3] = &type metadata for PlaybackQueueLocationProvider;
  v78[4] = &off_2877E8100;
  v14 = swift_allocObject();
  v78[0] = v14;
  v15 = a4[3];
  v14[3] = a4[2];
  v14[4] = v15;
  v14[5] = a4[4];
  v16 = a4[1];
  v14[1] = *a4;
  v14[2] = v16;
  sub_2662A5550(v80, v77);
  sub_2662A5550(v79, v76);
  sub_2662A5550(a3, v75);
  sub_2662A5550(v78, v74);
  v17 = __swift_mutable_project_boxed_opaque_existential_1(v77, v77[3]);
  MEMORY[0x28223BE20](v17);
  v19 = (&v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v20 + 16))(v19);
  v21 = __swift_mutable_project_boxed_opaque_existential_1(v76, v76[3]);
  MEMORY[0x28223BE20](v21);
  v23 = (&v56 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v24 + 16))(v23);
  v25 = __swift_mutable_project_boxed_opaque_existential_1(v74, v74[3]);
  MEMORY[0x28223BE20](v25);
  v27 = (&v56 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v28 + 16))(v27);
  v29 = *v19;
  v73[3] = v10;
  v73[4] = &off_2877F3740;
  v73[0] = v29;
  v71 = &type metadata for PlaybackStarter;
  v72 = &off_2877EE098;
  v30 = swift_allocObject();
  v70[0] = v30;
  v31 = v23[3];
  v30[3] = v23[2];
  v30[4] = v31;
  v30[5] = v23[4];
  v32 = v23[1];
  v30[1] = *v23;
  v30[2] = v32;
  v68 = &type metadata for PlaybackQueueLocationProvider;
  v69 = &off_2877E8100;
  v33 = swift_allocObject();
  v67[0] = v33;
  v34 = v27[3];
  v33[3] = v27[2];
  v33[4] = v34;
  v33[5] = v27[4];
  v35 = v27[1];
  v33[1] = *v27;
  v33[2] = v35;
  v36 = __swift_mutable_project_boxed_opaque_existential_1(v73, v10);
  MEMORY[0x28223BE20](v36);
  v38 = (&v56 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v39 + 16))(v38);
  v40 = __swift_mutable_project_boxed_opaque_existential_1(v70, v71);
  MEMORY[0x28223BE20](v40);
  v42 = (&v56 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v43 + 16))(v42);
  v44 = __swift_mutable_project_boxed_opaque_existential_1(v67, v68);
  MEMORY[0x28223BE20](v44);
  v46 = (&v56 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v47 + 16))(v46);
  v48 = *v38;
  v65 = v10;
  v66 = &off_2877F3740;
  v63 = &off_2877EE098;
  *&v64 = v48;
  v62 = &type metadata for PlaybackStarter;
  v49 = swift_allocObject();
  *&v61 = v49;
  v50 = v42[3];
  v49[3] = v42[2];
  v49[4] = v50;
  v49[5] = v42[4];
  v51 = v42[1];
  v49[1] = *v42;
  v49[2] = v51;
  v59 = &type metadata for PlaybackQueueLocationProvider;
  v60 = &off_2877E8100;
  v52 = swift_allocObject();
  *&v58 = v52;
  v53 = v46[3];
  v52[3] = v46[2];
  v52[4] = v53;
  v52[5] = v46[4];
  v54 = v46[1];
  v52[1] = *v46;
  v52[2] = v54;
  __swift_destroy_boxed_opaque_existential_1Tm(v57);
  __swift_destroy_boxed_opaque_existential_1Tm(v78);
  __swift_destroy_boxed_opaque_existential_1Tm(v79);
  __swift_destroy_boxed_opaque_existential_1Tm(v80);
  sub_2662A8618(&v64, a5 + 16);
  sub_2662A8618(&v61, a5 + 56);
  sub_2662A8618(v75, a5 + 96);
  sub_2662A8618(&v58, a5 + 136);
  __swift_destroy_boxed_opaque_existential_1Tm(v67);
  __swift_destroy_boxed_opaque_existential_1Tm(v70);
  __swift_destroy_boxed_opaque_existential_1Tm(v73);
  __swift_destroy_boxed_opaque_existential_1Tm(v74);
  __swift_destroy_boxed_opaque_existential_1Tm(v76);
  __swift_destroy_boxed_opaque_existential_1Tm(v77);
  return a5;
}

unint64_t sub_2663E9D9C()
{
  result = qword_280072EE8;
  if (!qword_280072EE8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280072EE8);
  }

  return result;
}

uint64_t Pair.init(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a3 - 8) + 32))(a5, a1);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(*(a4 - 8) + 32);
  v10 = a5 + *(TupleTypeMetadata2 + 48);

  return v9(v10, a2, a4);
}

uint64_t static Pair.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v32 = a6;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v11 = *(TupleTypeMetadata2 - 8);
  v12 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v29 - v15;
  v17 = *(v11 + 16);
  v30 = a1;
  v17(&v29 - v15, a1, TupleTypeMetadata2);
  v34 = *(TupleTypeMetadata2 + 48);
  v31 = a2;
  v29 = v17;
  v17(v14, a2, TupleTypeMetadata2);
  v18 = *(TupleTypeMetadata2 + 48);
  LODWORD(v33) = sub_2664E0298();
  v19 = *(*(a4 - 8) + 8);
  v19(&v14[v18], a4);
  v20 = *(*(a3 - 8) + 8);
  v20(v14, a3);
  v21 = v34 + v16;
  v34 = v19;
  v19(v21, a4);
  v20(v16, a3);
  if (v33)
  {
    v22 = v29;
    v29(v16, v30, TupleTypeMetadata2);
    v33 = *(TupleTypeMetadata2 + 48);
    v22(v14, v31, TupleTypeMetadata2);
    v23 = *(TupleTypeMetadata2 + 48);
    v24 = v33;
    v25 = sub_2664E0298();
    v26 = &v14[v23];
    v27 = v34;
    v34(v26, a4);
    v20(v14, a3);
    v27(&v16[v24], a4);
    v20(v16, a3);
  }

  else
  {
    v25 = 0;
  }

  return v25 & 1;
}

uint64_t Pair.hash(into:)(uint64_t a1, void *a2)
{
  v16 = a1;
  v3 = a2[2];
  v4 = a2[3];
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v6 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v8 = &v13 - v7;
  v14 = *(v6 + 16);
  v14(&v13 - v7, v2, TupleTypeMetadata2);
  v9 = *(TupleTypeMetadata2 + 48);
  sub_2664E0268();
  v13 = *(*(v4 - 8) + 8);
  v13(&v8[v9], v4);
  v10 = *(*(v3 - 8) + 8);
  v10(v8, v3);
  v14(v8, v15, TupleTypeMetadata2);
  v11 = *(TupleTypeMetadata2 + 48);
  sub_2664E0268();
  v13(&v8[v11], v4);
  return (v10)(v8, v3);
}

uint64_t Pair.hashValue.getter(void *a1)
{
  sub_2664E0E68();
  Pair.hash(into:)(v3, a1);
  return sub_2664E0EB8();
}

uint64_t sub_2663EA38C(uint64_t a1, void *a2)
{
  sub_2664E0E68();
  Pair.hash(into:)(v4, a2);
  return sub_2664E0EB8();
}

uint64_t sub_2663EA404(uint64_t a1)
{
  result = swift_getTupleTypeMetadata2();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2663EA47C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 80);
  if (v8 <= v5)
  {
    v10 = *(v4 + 84);
  }

  else
  {
    v10 = *(v7 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v11 = *(*(*(a3 + 16) - 8) + 64) + v9;
  v12 = a2 - v10;
  if (a2 <= v10)
  {
    goto LABEL_28;
  }

  v13 = (v11 & ~v9) + *(*(v6 - 8) + 64);
  v14 = 8 * v13;
  if (v13 <= 3)
  {
    v16 = ((v12 + ~(-1 << v14)) >> v14) + 1;
    if (HIWORD(v16))
    {
      v15 = *(a1 + v13);
      if (!v15)
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v16 > 0xFF)
    {
      v15 = *(a1 + v13);
      if (!*(a1 + v13))
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v16 < 2)
    {
LABEL_27:
      if (v10)
      {
LABEL_28:
        if (v5 >= v8)
        {
          return (*(v4 + 48))();
        }

        else
        {
          return (*(v7 + 48))((a1 + v11) & ~v9, v8, v6);
        }
      }

      return 0;
    }
  }

  v15 = *(a1 + v13);
  if (!*(a1 + v13))
  {
    goto LABEL_27;
  }

LABEL_14:
  v17 = (v15 - 1) << v14;
  if (v13 > 3)
  {
    v17 = 0;
  }

  if (v13)
  {
    if (v13 <= 3)
    {
      v18 = v13;
    }

    else
    {
      v18 = 4;
    }

    if (v18 > 2)
    {
      if (v18 == 3)
      {
        v19 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v19 = *a1;
      }
    }

    else if (v18 == 1)
    {
      v19 = *a1;
    }

    else
    {
      v19 = *a1;
    }
  }

  else
  {
    v19 = 0;
  }

  return v10 + (v19 | v17) + 1;
}

char *sub_2663EA658(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(a4 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = *(v5 + 64);
  v11 = *(v8 + 80);
  if (v9 <= v6)
  {
    v12 = *(v5 + 84);
  }

  else
  {
    v12 = *(v8 + 84);
  }

  v13 = ((v10 + v11) & ~v11) + *(*(v7 - 8) + 64);
  v14 = a3 >= v12;
  v15 = a3 - v12;
  if (v15 != 0 && v14)
  {
    if (v13 <= 3)
    {
      v20 = ((v15 + ~(-1 << (8 * v13))) >> (8 * v13)) + 1;
      if (HIWORD(v20))
      {
        v16 = 4;
      }

      else
      {
        if (v20 < 0x100)
        {
          v21 = 1;
        }

        else
        {
          v21 = 2;
        }

        if (v20 >= 2)
        {
          v16 = v21;
        }

        else
        {
          v16 = 0;
        }
      }
    }

    else
    {
      v16 = 1;
    }
  }

  else
  {
    v16 = 0;
  }

  if (v12 < a2)
  {
    v17 = ~v12 + a2;
    if (v13 < 4)
    {
      v19 = (v17 >> (8 * v13)) + 1;
      if (v13)
      {
        v22 = v17 & ~(-1 << (8 * v13));
        v23 = result;
        bzero(result, v13);
        result = v23;
        if (v13 != 3)
        {
          if (v13 == 2)
          {
            *v23 = v22;
            if (v16 > 1)
            {
LABEL_46:
              if (v16 == 2)
              {
                *&result[v13] = v19;
              }

              else
              {
                *&result[v13] = v19;
              }

              return result;
            }
          }

          else
          {
            *v23 = v17;
            if (v16 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *v23 = v22;
        v23[2] = BYTE2(v22);
      }

      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v18 = result;
      bzero(result, v13);
      result = v18;
      *v18 = v17;
      v19 = 1;
      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v16)
    {
      result[v13] = v19;
    }

    return result;
  }

  if (v16 > 1)
  {
    if (v16 != 2)
    {
      *&result[v13] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_31;
    }

    *&result[v13] = 0;
  }

  else if (v16)
  {
    result[v13] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return result;
  }

LABEL_31:
  if (v6 >= v9)
  {
    v26 = *(v5 + 56);

    return v26();
  }

  else
  {
    v24 = *(v8 + 56);
    v25 = &result[v10 + v11] & ~v11;

    return v24(v25);
  }
}

uint64_t static SiriAudioEnvironment.siriLocale.getter()
{
  if (static SiriEnvironmentWrapper.retrieve()())
  {
    sub_2664DF4E8();
    sub_2664DF588();
  }

  else
  {
    sub_2664DEC08();
    __swift_project_boxed_opaque_existential_1(v1, v1[3]);
    sub_2664DE928();
    return __swift_destroy_boxed_opaque_existential_1Tm(v1);
  }
}

uint64_t sub_2663EAB9C()
{
  v0 = sub_2664E0788();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2664E00B8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2664E0068();
  sub_2664E0768();
  v8 = _s16SiriAudioSupport14DispatchQueuesV5queue_3qos10attributesSo012OS_dispatch_F0CSS_0D00D3QoSVAhIE10AttributesVtFZ_0(0xD00000000000001FLL, 0x80000002664F7BC0, v7, v3);
  (*(v1 + 8))(v3, v0);
  result = (*(v5 + 8))(v7, v4);
  qword_280073598 = v8;
  return result;
}

uint64_t static SiriAudioEnvironment.directInvocationContext.getter()
{
  if (static SiriEnvironmentWrapper.retrieve()())
  {
    v0 = sub_2664DF4B8();
  }

  else
  {
    sub_2664DEC08();
    __swift_project_boxed_opaque_existential_1(v2, v2[3]);
    v0 = sub_2664DE9D8();
    __swift_destroy_boxed_opaque_existential_1Tm(v2);
  }

  return v0;
}

uint64_t static SiriAudioEnvironment.userAssignedDeviceName.getter()
{
  if (static SiriEnvironmentWrapper.retrieve()())
  {
    if (qword_280071C00 != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800734A0, &qword_2664E3B40);
    sub_2664E07D8();

    return v2[0];
  }

  else
  {
    sub_2664DEC08();
    __swift_project_boxed_opaque_existential_1(v2, v2[3]);
    v1 = sub_2664DE8F8();
    __swift_destroy_boxed_opaque_existential_1Tm(v2);
    return v1;
  }
}

void sub_2663EAEB8(uint64_t *a1@<X8>)
{
  if (qword_280073590)
  {
    v1 = qword_280073588;
    v2 = qword_280073590;
LABEL_9:
    *a1 = v1;
    a1[1] = v2;

    return;
  }

  v3 = a1;
  v4 = MGGetStringAnswer();
  if (v4)
  {
    v5 = v4;
    v1 = sub_2664E02C8();
    v2 = v6;

    if (!qword_2800735A0)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800735B0, &qword_2664EB478);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_2664E36F0;
      *(v7 + 32) = @"UserAssignedDeviceName";
      v8 = @"UserAssignedDeviceName";
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2800737F0, &unk_2664E5320);
      v9 = sub_2664E0488();

      if (qword_280071C00 != -1)
      {
        swift_once();
      }

      v12[4] = sub_2663EB588;
      v12[5] = 0;
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 1107296256;
      v12[2] = sub_2663EB0C0;
      v12[3] = &block_descriptor_31;
      v10 = _Block_copy(v12);

      v11 = MGRegisterForUpdates();
      _Block_release(v10);

      qword_2800735A0 = v11;
    }

    qword_280073588 = v1;
    qword_280073590 = v2;

    a1 = v3;
    goto LABEL_9;
  }

  __break(1u);
}

void sub_2663EB0C0(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

uint64_t static SiriAudioEnvironment.responseMode.getter@<X0>(uint64_t a1@<X8>)
{
  if (static SiriEnvironmentWrapper.retrieve()())
  {
    sub_2664DF4D8();

    sub_2664DFA98();

    v2 = 0;
  }

  else
  {
    v2 = 1;
  }

  v3 = sub_2664DF578();
  v4 = *(*(v3 - 8) + 56);

  return v4(a1, v2, 1, v3);
}

uint64_t static SiriAudioEnvironment.isDialogDriven.getter()
{
  v0 = sub_2664DF5C8();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = v19 - v5;
  v7 = sub_2664DF578();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = v19 - v12;
  if (static SiriEnvironmentWrapper.retrieve()())
  {
    sub_2664DF4D8();
    sub_2664DFA98();

    sub_2664DF568();
    v14 = sub_2664DF558();
    v15 = *(v8 + 8);
    v15(v11, v7);
    v15(v13, v7);
    if (v14)
    {

      v16 = 1;
    }

    else
    {
      sub_2664DF4D8();
      sub_2664DFA98();

      sub_2664DF548();
      v16 = sub_2664DF558();

      v15(v11, v7);
      v15(v13, v7);
    }
  }

  else
  {
    sub_2664DEC08();
    __swift_project_boxed_opaque_existential_1(v20, v20[3]);
    sub_2664DE958();
    (*(v1 + 104))(v4, *MEMORY[0x277D61D90], v0);
    sub_2663EB77C(&qword_2800735A8, MEMORY[0x277D61DA0], MEMORY[0x277D61DA8]);
    sub_2664E0468();
    sub_2664E0468();
    if (v19[3] == v19[1] && v19[4] == v19[2])
    {
      v16 = 1;
    }

    else
    {
      v16 = sub_2664E0D88();
    }

    v17 = *(v1 + 8);
    v17(v4, v0);
    v17(v6, v0);

    __swift_destroy_boxed_opaque_existential_1Tm(v20);
  }

  return v16 & 1;
}

uint64_t sub_2663EB588()
{
  qword_280073588 = 0;
  qword_280073590 = 0;
}

uint64_t _s16SiriAudioSupport0aB11EnvironmentV12isCarDNDModeSbvgZ_0()
{
  v0 = sub_2664DF608();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v11[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v11[-1] - v5;
  if (static SiriEnvironmentWrapper.retrieve()())
  {
    sub_2664DF4E8();
    sub_2664DF598();

    sub_2664DF5F8();
    sub_2663EB77C(&qword_2800735B8, MEMORY[0x277D61DC0], MEMORY[0x277D61DC8]);
    v7 = sub_2664E09F8();

    v8 = *(v1 + 8);
    v8(v4, v0);
    v8(v6, v0);
  }

  else
  {
    sub_2664DEC08();
    __swift_project_boxed_opaque_existential_1(v11, v11[3]);
    v7 = sub_2664DE938();
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
  }

  return v7 & 1;
}

uint64_t sub_2663EB77C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t RecordableResult.name.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC16SiriAudioSupport16RecordableResult_name);

  return v1;
}

uint64_t sub_2663EB990(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC16SiriAudioSupport16RecordableResult_info;
  swift_beginAccess();
  *(v3 + v4) = v2;
}

double sub_2663EB9F8()
{
  swift_beginAccess();

  return result;
}

uint64_t sub_2663EBA40(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16SiriAudioSupport16RecordableResult_info;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

id RecordableResult.__allocating_init(name:version:timeElapsed:rows:info:signalTiming:test:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, double a8)
{
  v17 = objc_allocWithZone(v8);
  v18 = &v17[OBJC_IVAR____TtC16SiriAudioSupport16RecordableResult_name];
  *v18 = a1;
  v18[1] = a2;
  *&v17[OBJC_IVAR____TtC16SiriAudioSupport16RecordableResult_version] = a3;
  *&v17[OBJC_IVAR____TtC16SiriAudioSupport16RecordableResult_timeElapsed] = a8;
  *&v17[OBJC_IVAR____TtC16SiriAudioSupport16RecordableResult_rows] = a4;
  *&v17[OBJC_IVAR____TtC16SiriAudioSupport16RecordableResult_info] = a5;
  *&v17[OBJC_IVAR____TtC16SiriAudioSupport16RecordableResult_signalTiming] = a6;
  v17[OBJC_IVAR____TtC16SiriAudioSupport16RecordableResult_test] = a7;
  v20.receiver = v17;
  v20.super_class = v8;
  return objc_msgSendSuper2(&v20, sel_init);
}

id RecordableResult.init(name:version:timeElapsed:rows:info:signalTiming:test:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, double a8)
{
  v9 = &v8[OBJC_IVAR____TtC16SiriAudioSupport16RecordableResult_name];
  *v9 = a1;
  v9[1] = a2;
  *&v8[OBJC_IVAR____TtC16SiriAudioSupport16RecordableResult_version] = a3;
  *&v8[OBJC_IVAR____TtC16SiriAudioSupport16RecordableResult_timeElapsed] = a8;
  *&v8[OBJC_IVAR____TtC16SiriAudioSupport16RecordableResult_rows] = a4;
  *&v8[OBJC_IVAR____TtC16SiriAudioSupport16RecordableResult_info] = a5;
  *&v8[OBJC_IVAR____TtC16SiriAudioSupport16RecordableResult_signalTiming] = a6;
  v8[OBJC_IVAR____TtC16SiriAudioSupport16RecordableResult_test] = a7;
  v11.receiver = v8;
  v11.super_class = type metadata accessor for RecordableResult();
  return objc_msgSendSuper2(&v11, sel_init);
}

unint64_t sub_2663EBC80()
{
  v46 = sub_266386244(MEMORY[0x277D84F90]);
  sub_266448F64([objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_], 0x6C6C694D656D6974, 0xEF6C61746F547369);
  v1 = *(v0 + OBJC_IVAR____TtC16SiriAudioSupport16RecordableResult_signalTiming);
  v4 = *(v1 + 64);
  v3 = v1 + 64;
  v2 = v4;
  v5 = 1 << *(*(v0 + OBJC_IVAR____TtC16SiriAudioSupport16RecordableResult_signalTiming) + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & v2;
  v8 = (v5 + 63) >> 6;
  v45 = *(v0 + OBJC_IVAR____TtC16SiriAudioSupport16RecordableResult_signalTiming);

  v9 = 0;
  if (v7)
  {
    goto LABEL_6;
  }

  do
  {
LABEL_7:
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
      goto LABEL_22;
    }

    if (v12 >= v8)
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073600, &unk_2664E37B0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_2664EB480;
      *(inited + 32) = 1701667182;
      *(inited + 40) = 0xE400000000000000;
      v33 = *(v0 + OBJC_IVAR____TtC16SiriAudioSupport16RecordableResult_name + 8);
      v34 = MEMORY[0x277D837D0];
      *(inited + 48) = *(v0 + OBJC_IVAR____TtC16SiriAudioSupport16RecordableResult_name);
      *(inited + 56) = v33;
      *(inited + 72) = v34;
      *(inited + 80) = 0x6E6F6973726576;
      *(inited + 88) = 0xE700000000000000;
      v35 = MEMORY[0x277D83B88];
      *(inited + 96) = *(v0 + OBJC_IVAR____TtC16SiriAudioSupport16RecordableResult_version);
      *(inited + 120) = v35;
      *(inited + 128) = 0x6C6C694D656D6974;
      *(inited + 136) = 0xEA00000000007369;
      v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073608, &qword_2664EB498);
      *(inited + 144) = v46;
      *(inited + 168) = v36;
      *(inited + 176) = 1937207154;
      *(inited + 184) = 0xE400000000000000;
      v37 = *(v0 + OBJC_IVAR____TtC16SiriAudioSupport16RecordableResult_rows);
      v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800734C0, qword_2664EB4A0);
      *(inited + 192) = v37;
      *(inited + 216) = v38;
      *(inited + 224) = 1868983913;
      *(inited + 232) = 0xE400000000000000;
      v39 = OBJC_IVAR____TtC16SiriAudioSupport16RecordableResult_info;
      swift_beginAccess();
      v40 = *(v0 + v39);
      v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800729D0, &qword_2664EB1E0);
      *(inited + 240) = v40;
      *(inited + 264) = v41;
      *(inited + 272) = 0x747365547369;
      *(inited + 280) = 0xE600000000000000;
      v42 = *(v0 + OBJC_IVAR____TtC16SiriAudioSupport16RecordableResult_test);
      *(inited + 312) = MEMORY[0x277D839B0];
      *(inited + 288) = v42;

      v43 = sub_2663854AC(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2800734F0, &unk_2664E3660);
      swift_arrayDestroy();

      return v43;
    }

    v7 = *(v3 + 8 * v12);
    ++v9;
  }

  while (!v7);
  while (1)
  {
    v13 = __clz(__rbit64(v7)) | (v12 << 6);
    v14 = (*(v45 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    v17 = *(*(v45 + 56) + 8 * v13);

    v18 = v17;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = sub_2662A3E98(v16, v15);
    v22 = v46[2];
    v23 = (v21 & 1) == 0;
    v24 = __OFADD__(v22, v23);
    v25 = v22 + v23;
    if (v24)
    {
      break;
    }

    v26 = v21;
    if (v46[3] >= v25)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v31 = v20;
        sub_266454428();
        v20 = v31;
      }
    }

    else
    {
      sub_2664513B0(v25, isUniquelyReferenced_nonNull_native);
      v20 = sub_2662A3E98(v16, v15);
      if ((v26 & 1) != (v27 & 1))
      {
        goto LABEL_24;
      }
    }

    v7 &= v7 - 1;
    if (v26)
    {
      v10 = v46[7];
      v11 = *(v10 + 8 * v20);
      *(v10 + 8 * v20) = v18;

      v9 = v12;
      if (!v7)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v46[(v20 >> 6) + 8] |= 1 << v20;
      v28 = (v46[6] + 16 * v20);
      *v28 = v16;
      v28[1] = v15;
      *(v46[7] + 8 * v20) = v18;
      v29 = v46[2];
      v24 = __OFADD__(v29, 1);
      v30 = v29 + 1;
      if (v24)
      {
        goto LABEL_23;
      }

      v46[2] = v30;
      v9 = v12;
      if (!v7)
      {
        goto LABEL_7;
      }
    }

LABEL_6:
    v12 = v9;
  }

LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = sub_2664E0DD8();
  __break(1u);
  return result;
}

void sub_2663EC104(void *a1)
{
  v3 = sub_2664E02A8();
  v4 = sub_2664E02A8();
  [a1 encodeObject:v3 forKey:v4];

  v5 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v6 = sub_2664E02A8();
  [a1 encodeObject:v5 forKey:v6];

  v7 = *(v1 + OBJC_IVAR____TtC16SiriAudioSupport16RecordableResult_timeElapsed);
  v8 = sub_2664E02A8();
  [a1 encodeDouble:v8 forKey:v7];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800729D0, &qword_2664EB1E0);
  v9 = sub_2664E0488();
  v10 = sub_2664E02A8();
  [a1 encodeObject:v9 forKey:v10];

  swift_beginAccess();

  v11 = sub_2664E01A8();

  v12 = sub_2664E02A8();
  [a1 encodeObject:v11 forKey:v12];

  sub_2662C1744(0, &qword_280F8F550, 0x277CCABB0);
  v13 = sub_2664E01A8();
  v14 = sub_2664E02A8();
  [a1 encodeObject:v13 forKey:v14];

  v15 = *(v1 + OBJC_IVAR____TtC16SiriAudioSupport16RecordableResult_test);
  v16 = sub_2664E02A8();
  [a1 encodeBool:v15 forKey:v16];
}

id RecordableResult.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_2663EC638(a1);

  return v4;
}

id RecordableResult.init(coder:)(void *a1)
{
  v2 = sub_2663EC638(a1);

  return v2;
}

id RecordableResult.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id RecordableResult.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RecordableResult();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_2663EC638(void *a1)
{
  v2 = v1;
  v4 = sub_2662C1744(0, &qword_280072F00, 0x277CCACA8);
  result = sub_2664E08C8();
  if (!result)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v6 = result;
  v7 = sub_2664E02C8();
  v9 = v8;

  v10 = &v2[OBJC_IVAR____TtC16SiriAudioSupport16RecordableResult_name];
  *v10 = v7;
  v10[1] = v9;
  v11 = sub_2662C1744(0, &qword_280F8F550, 0x277CCABB0);
  v12 = sub_2664E08C8();
  if (v12)
  {
    v13 = v12;
    v14 = [v12 integerValue];
  }

  else
  {
    v14 = -1;
  }

  *&v2[OBJC_IVAR____TtC16SiriAudioSupport16RecordableResult_version] = v14;
  v15 = sub_2664E02A8();
  [a1 decodeDoubleForKey_];
  v17 = v16;

  *&v2[OBJC_IVAR____TtC16SiriAudioSupport16RecordableResult_timeElapsed] = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073610, qword_2664EB4F8);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_2664E34D0;
  v19 = sub_2662C1744(0, &qword_280073618, 0x277CBEAC0);
  *(v18 + 32) = v19;
  v20 = sub_2662C1744(0, &unk_280F8F570, 0x277CBEA60);
  *(v18 + 40) = v20;
  *(v18 + 48) = v4;
  *(v18 + 56) = v11;
  sub_2664E08D8();

  if (!v28)
  {
    goto LABEL_10;
  }

  sub_266318804(&v27, v29);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800734C0, qword_2664EB4A0);
  swift_dynamicCast();
  *&v2[OBJC_IVAR____TtC16SiriAudioSupport16RecordableResult_rows] = v26;
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_2664E34D0;
  *(v21 + 32) = v19;
  *(v21 + 40) = v20;
  *(v21 + 48) = v4;
  *(v21 + 56) = v11;
  sub_2664E08D8();

  if (!v28)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_266318804(&v27, v29);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800729D0, &qword_2664EB1E0);
  swift_dynamicCast();
  *&v2[OBJC_IVAR____TtC16SiriAudioSupport16RecordableResult_info] = v26;
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_2664E34D0;
  *(v22 + 32) = v19;
  *(v22 + 40) = v20;
  *(v22 + 48) = v4;
  *(v22 + 56) = v11;
  sub_2664E08D8();

  if (v28)
  {
    sub_266318804(&v27, v29);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073608, &qword_2664EB498);
    swift_dynamicCast();
    *&v2[OBJC_IVAR____TtC16SiriAudioSupport16RecordableResult_signalTiming] = v26;
    v23 = sub_2664E02A8();
    v24 = [a1 decodeBoolForKey_];

    v2[OBJC_IVAR____TtC16SiriAudioSupport16RecordableResult_test] = v24;
    v25.receiver = v2;
    v25.super_class = type metadata accessor for RecordableResult();
    return objc_msgSendSuper2(&v25, sel_init);
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_2663ECB60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2664DFBE8();
  v5 = *(*(v4 - 8) + 104);
  if ((a1 - 1) > 0x13)
  {
    v6 = MEMORY[0x277D55508];
  }

  else
  {
    v6 = qword_279BCC358[a1 - 1];
  }

  v7 = *v6;

  return v5(a2, v7, v4);
}

uint64_t sub_2663ECBF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  switch(a1)
  {
    case 1:
      v3 = MEMORY[0x277D5ED90];
      goto LABEL_19;
    case 2:
      v3 = MEMORY[0x277D5ED98];
      goto LABEL_19;
    case 3:
      v3 = MEMORY[0x277D5EDC0];
      goto LABEL_19;
    case 4:
      v3 = MEMORY[0x277D5EDA0];
      goto LABEL_19;
    case 5:
      v3 = MEMORY[0x277D5EE18];
      goto LABEL_19;
    case 6:
    case 8:
      v3 = MEMORY[0x277D5EE08];
      goto LABEL_19;
    case 7:
    case 13:
      v3 = MEMORY[0x277D5EDF0];
      goto LABEL_19;
    case 9:
    case 17:
      v3 = MEMORY[0x277D5EE10];
      goto LABEL_19;
    case 10:
      v3 = MEMORY[0x277D5ED28];
      goto LABEL_19;
    case 11:
      v3 = MEMORY[0x277D5EDA8];
      goto LABEL_19;
    case 12:
      v3 = MEMORY[0x277D5EDD8];
      goto LABEL_19;
    case 14:
      v3 = MEMORY[0x277D5ED38];
      goto LABEL_19;
    case 15:
      v3 = MEMORY[0x277D5ED58];
      goto LABEL_19;
    case 16:
    case 19:
      v3 = MEMORY[0x277D5ED48];
      goto LABEL_19;
    case 18:
      v3 = MEMORY[0x277D5EDB0];
      goto LABEL_19;
    case 20:
      v3 = MEMORY[0x277D5ED80];
LABEL_19:
      v9 = *v3;
      v10 = sub_2664DF248();
      v12 = *(v10 - 8);
      (*(v12 + 104))(a2, v9, v10);
      v5 = *(v12 + 56);
      v7 = a2;
      v8 = 0;
      v6 = v10;
      break;
    default:
      v4 = sub_2664DF248();
      v5 = *(*(v4 - 8) + 56);
      v6 = v4;
      v7 = a2;
      v8 = 1;
      break;
  }

  return v5(v7, v8, 1, v6);
}

uint64_t sub_2663ECDE0(uint64_t a1)
{
  v2 = sub_2664DFBE8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, a1, v2);
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 == *MEMORY[0x277D554A8])
  {
    return 4;
  }

  if (v6 == *MEMORY[0x277D554C8])
  {
    return 3;
  }

  if (v6 == *MEMORY[0x277D55510])
  {
    return 5;
  }

  if (v6 == *MEMORY[0x277D55500])
  {
    return 9;
  }

  if (v6 == *MEMORY[0x277D55498])
  {
    return 1;
  }

  if (v6 == *MEMORY[0x277D554F8])
  {
    return 6;
  }

  if (v6 == *MEMORY[0x277D55448])
  {
    return 14;
  }

  if (v6 == *MEMORY[0x277D554B8])
  {
    return 18;
  }

  if (v6 == *MEMORY[0x277D55488])
  {
    return 20;
  }

  if (v6 == *MEMORY[0x277D554E0])
  {
    return 12;
  }

  if (v6 == *MEMORY[0x277D554A0])
  {
    return 2;
  }

  if (v6 == *MEMORY[0x277D55458])
  {
    return 16;
  }

  if (v6 == *MEMORY[0x277D554E8])
  {
    return 7;
  }

  if (v6 == *MEMORY[0x277D55468])
  {
    return 15;
  }

  if (v6 == *MEMORY[0x277D554B0])
  {
    return 11;
  }

  if (v6 == *MEMORY[0x277D55520])
  {
    return 10;
  }

  if (v6 != *MEMORY[0x277D55508])
  {
    (*(v3 + 8))(v5, v2);
  }

  return 0;
}

__n128 __swift_memcpy192_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  result = a2[8];
  v9 = a2[9];
  v10 = a2[11];
  *(a1 + 160) = a2[10];
  *(a1 + 176) = v10;
  *(a1 + 128) = result;
  *(a1 + 144) = v9;
  return result;
}

uint64_t sub_2663ED10C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 192))
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

uint64_t sub_2663ED154(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 184) = 0;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 192) = 1;
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

    *(result + 192) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_2663ED1E4(uint64_t a1, unint64_t a2)
{
  v4 = sub_2664DFE38();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
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
    v12 = swift_slowAlloc();
    v19 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_2662A320C(a1, a2, &v19);
    _os_log_impl(&dword_26629C000, v9, v10, "BiomeDonator#donateSharedUserId %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    MEMORY[0x266784AD0](v12, -1, -1);
    MEMORY[0x266784AD0](v11, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  v13 = [BiomeLibrary() Siri];
  swift_unknownObjectRelease();
  v14 = [v13 RecognizedUser];
  swift_unknownObjectRelease();
  v15 = objc_allocWithZone(MEMORY[0x277CF1568]);
  v16 = sub_2664E02A8();
  v17 = [v15 initWithSharedUserId_];

  v18 = [v14 source];
  [v18 sendEvent_];
}

id sub_2663ED4D8(void *a1)
{
  [a1 clientDayOfWeek];
  v25 = sub_2664E0E38();
  [a1 rawClientHourOfDay];
  v24 = sub_2664E0E38();
  [a1 isMediaAlbumPresent];
  v23 = sub_2664E0558();
  [a1 isMediaArtistPresent];
  v22 = sub_2664E0558();
  [a1 isMediaGenrePresent];
  v21 = sub_2664E0558();
  [a1 isMediaMoodPresent];
  v20 = sub_2664E0558();
  [a1 isMediaNamePresent];
  v19 = sub_2664E0558();
  [a1 isMediaReleaseDatePresent];
  v18 = sub_2664E0558();
  [a1 nowPlayingLastBundleRecencyS];
  v17 = sub_2664E0E38();
  [a1 rawLanguage];
  v16 = sub_2664E0E48();
  [a1 rawLocale];
  v29 = sub_2664E0E48();
  [a1 rawRegion];
  v27 = sub_2664E0E48();
  [a1 isClientDaylight];
  v2 = sub_2664E0558();
  [a1 isClientNavigating];
  v3 = sub_2664E0558();
  [a1 isClientWorkout];
  v4 = sub_2664E0558();
  [a1 mediaType];
  v28 = sub_2664E0E38();
  [a1 nowPlayingState];
  v26 = sub_2664E0E38();
  [a1 isPireneRequest];
  v5 = sub_2664E0558();
  [a1 foregroundBundleRecencyS];
  v6 = sub_2664E05D8();
  [a1 mediaParsecCategory];
  v7 = sub_2664E0E38();
  [a1 sirikitResponseCode];
  v8 = sub_2664E0E38();
  [a1 appSelectionUses];
  v9 = sub_2664E0E38();
  [a1 modelVersion];
  v10 = sub_2664E0EE8();
  v11 = [a1 resolutionType];
  if (v11 > 9 || (v12 = v11, ((1 << v11) & 0x20C) == 0))
  {
    v12 = 0;
  }

  LODWORD(v14) = v12;
  v15 = [objc_allocWithZone(MEMORY[0x277CF14C0]) initWithClientDayOfWeek:v25 rawClientHourOfDay:v24 isMediaAlbumPresent:v23 isMediaArtistPresent:v22 isMediaGenrePresent:v21 isMediaMoodPresent:v20 isMediaNamePresent:v19 isMediaReleaseDatePresent:v18 nowPlayingLastBundleRecencyS:v17 rawLanguage:v16 rawLocale:v29 rawRegion:v27 isClientDaylight:v2 isClientNavigating:v3 isClientWorkout:v4 mediaType:v28 nowPlayingState:v26 isPireneRequest:v5 foregroundBundleRecencyS:v6 mediaParsecCategory:v7 sirikitResponseCode:v8 appSelectionUses:v9 modelVersion:v10 resolutionType:v14];

  return v15;
}

id sub_2663ED8C4(void *a1)
{
  [a1 isClientForegroundActiveBundle];
  v24 = sub_2664E0558();
  [a1 compoundActiveBundleScore];
  v22 = sub_2664E05D8();
  [a1 compoundMediaTypeBundleScore];
  v21 = sub_2664E05D8();
  [a1 entitySearchBundleRecencyS];
  v20 = sub_2664E05D8();
  [a1 entitySearchBundleScore];
  v19 = sub_2664E05D8();
  [a1 isForegroundBundle];
  v23 = sub_2664E0558();
  [a1 isNowPlayingBundle];
  v18 = sub_2664E0558();
  [a1 nowPlayingBundleCount];
  v17 = sub_2664E0E38();
  [a1 nowPlayingBundleRecencyS];
  v16 = sub_2664E05D8();
  [a1 nowPlayingBundleScore];
  v15 = sub_2664E05D8();
  [a1 isNowPlayingLastBundle];
  v54 = sub_2664E0558();
  [a1 nowPlayingUsage1Day];
  v53 = sub_2664E0E38();
  [a1 nowPlayingUsage7Days];
  v52 = sub_2664E0E38();
  [a1 nowPlayingUsage14Days];
  v51 = sub_2664E0E38();
  [a1 isRawLastNowPlayingCoreDuet];
  v50 = sub_2664E0558();
  [a1 isRawMediaCategoryAudiobookSignal];
  v49 = sub_2664E0558();
  [a1 isRawMediaCategoryMusicSignal];
  v48 = sub_2664E0558();
  [a1 isRawMediaCategoryPodcastSignal];
  v47 = sub_2664E0558();
  [a1 isRawMediaCategoryRadioSignal];
  v46 = sub_2664E0558();
  [a1 isRawMediaCategoryVideoSignal];
  v45 = sub_2664E0558();
  [a1 rawMediaTypeUsageSignalBook];
  v44 = sub_2664E0E38();
  [a1 rawMediaTypeUsageSignalMusic];
  v43 = sub_2664E0E38();
  [a1 rawMediaTypeUsageSignalPodcast];
  v42 = sub_2664E0E38();
  [a1 rawMediaTypeUsageSignalVideo];
  v41 = sub_2664E0E38();
  [a1 rawNowPlayingCountCoreDuet10Min];
  v40 = sub_2664E0E38();
  [a1 rawNowPlayingCountCoreDuet1Day];
  v39 = sub_2664E0E38();
  [a1 rawNowPlayingCountCoreDuet1Hr];
  v38 = sub_2664E0E38();
  [a1 rawNowPlayingCountCoreDuet28Day];
  v37 = sub_2664E0E38();
  [a1 rawNowPlayingCountCoreDuet2Min];
  v36 = sub_2664E0E38();
  [a1 rawNowPlayingCountCoreDuet6Hr];
  v35 = sub_2664E0E38();
  [a1 rawNowPlayingCountCoreDuet7Day];
  v34 = sub_2664E0E38();
  [a1 rawNowPlayingRecencyCD];
  v33 = sub_2664E0E38();
  [a1 rawEntitySearchRecency];
  v32 = sub_2664E0E38();
  [a1 usageScoreBooks];
  v31 = sub_2664E05D8();
  [a1 usageScoreMusic];
  v30 = sub_2664E05D8();
  [a1 usageScorePodcasts];
  v29 = sub_2664E05D8();
  [a1 isAppFirstParty];
  v28 = sub_2664E0558();
  [a1 isRequestedApp];
  v27 = sub_2664E0558();
  [a1 isNowPlayingBundlePSE1];
  v26 = sub_2664E0558();
  [a1 isNowPlayingBundlePSE2];
  v25 = sub_2664E0558();
  [a1 vq21Score];
  v5 = sub_2664E05D8();
  [a1 isSupportedFlag];
  v6 = sub_2664E0558();
  [a1 isUnicornFlag];
  v7 = sub_2664E0558();
  [a1 isSupportedUnicornMatchFlag];
  v8 = sub_2664E0558();
  [a1 isDisambiguationSelectedApp];
  v9 = sub_2664E0558();
  v2 = [a1 isModelPredictedApp];
  v10 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  [a1 usageScoreRadio];
  v11 = sub_2664E05D8();
  [a1 usageScoreMusicWithoutRadio];
  v12 = sub_2664E05D8();
  [a1 rawMediaTypeUsageSignalRadio];
  v13 = sub_2664E0E38();
  [a1 rawMediaTypeUsageSignalMusicWithoutRadio];
  v14 = sub_2664E0E38();
  v4 = [objc_allocWithZone(MEMORY[0x277CF14B8]) initWithIsClientForegroundActiveBundle:v24 compoundActiveBundleScore:v22 compoundMediaTypeBundleScore:v21 entitySearchBundleRecencyS:v20 entitySearchBundleScore:v19 isForegroundBundle:v23 isNowPlayingBundle:v18 nowPlayingBundleCount:v17 nowPlayingBundleRecencyS:v16 nowPlayingBundleScore:v15 isNowPlayingLastBundle:v54 nowPlayingUsage1Day:v53 nowPlayingUsage7Days:v52 nowPlayingUsage14Days:v51 isRawLastNowPlayingCoreDuet:v50 isRawMediaCategoryAudiobookSignal:v49 isRawMediaCategoryMusicSignal:v48 isRawMediaCategoryPodcastSignal:v47 isRawMediaCategoryRadioSignal:v46 isRawMediaCategoryVideoSignal:v45 rawMediaTypeUsageSignalBook:v44 rawMediaTypeUsageSignalMusic:v43 rawMediaTypeUsageSignalPodcast:v42 rawMediaTypeUsageSignalVideo:v41 rawNowPlayingCountCoreDuet10Min:v40 rawNowPlayingCountCoreDuet1Day:v39 rawNowPlayingCountCoreDuet1Hr:v38 rawNowPlayingCountCoreDuet28Day:v37 rawNowPlayingCountCoreDuet2Min:v36 rawNowPlayingCountCoreDuet6Hr:v35 rawNowPlayingCountCoreDuet7Day:v34 rawNowPlayingRecencyCD:v33 rawEntitySearchRecency:v32 usageScoreBooks:v31 usageScoreMusic:v30 usageScorePodcasts:v29 isAppFirstParty:v28 isRequestedApp:v27 isNowPlayingBundlePSE1:v26 isNowPlayingBundlePSE2:v25 vq21Score:v5 isSupportedFlag:v6 isUnicornFlag:v7 isSupportedUnicornMatchFlag:v8 isDisambiguationSelectedApp:v9 isModelPredictedApp:v10 usageScoreRadio:v11 usageScoreMusicWithoutRadio:v12 rawMediaTypeUsageSignalRadio:v13 rawMediaTypeUsageSignalMusicWithoutRadio:v14];

  return v4;
}

unint64_t sub_2663EE0AC(unint64_t result)
{
  v1 = result;
  v6 = MEMORY[0x277D84F90];
  if (!(result >> 62))
  {
    v2 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
      goto LABEL_3;
    }

    return MEMORY[0x277D84F90];
  }

  result = sub_2664E0A68();
  v2 = result;
  if (!result)
  {
    return MEMORY[0x277D84F90];
  }

LABEL_3:
  if (v2 < 1)
  {
    __break(1u);
  }

  else
  {
    for (i = 0; i != v2; ++i)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x266783B70](i, v1);
      }

      else
      {
        v4 = *(v1 + 8 * i + 32);
      }

      v5 = v4;
      sub_2663ED8C4(v4);
      MEMORY[0x266783490]();
      if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_2664E04C8();
      }

      sub_2664E0518();
    }

    return v6;
  }

  return result;
}

uint64_t sub_2663EE1D8(void *a1, unint64_t a2)
{
  v4 = sub_2664DFE38();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v29 - v9;
  if (a1 && a2)
  {
    v11 = a1;
    v12 = sub_2663ED4D8(v11);
    sub_2663EE0AC(a2);
    v13 = objc_allocWithZone(MEMORY[0x277CF14B0]);
    sub_2663EE6DC();
    v14 = v12;
    v15 = sub_2664E0488();

    v16 = [v13 initWithIndepSignals:v14 depSignals:v15];

    v17 = [BiomeLibrary() Siri];
    swift_unknownObjectRelease();
    v18 = [v17 AppSelection];
    swift_unknownObjectRelease();
    v19 = [v18 Music];
    swift_unknownObjectRelease();
    v20 = [v19 source];
    [v20 sendEvent_];

    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v21 = __swift_project_value_buffer(v4, qword_280F914F0);
    swift_beginAccess();
    (*(v5 + 16))(v10, v21, v4);
    v22 = sub_2664DFE18();
    v23 = sub_2664E06C8();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_26629C000, v22, v23, "BiomeDonator#donateAppSelectionSignals: Sent event to Biome", v24, 2u);
      MEMORY[0x266784AD0](v24, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v25 = __swift_project_value_buffer(v4, qword_280F914F0);
    swift_beginAccess();
    (*(v5 + 16))(v8, v25, v4);
    v11 = sub_2664DFE18();
    v26 = sub_2664E06C8();
    if (os_log_type_enabled(v11, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_26629C000, v11, v26, "BiomeDonator#donateAppSelectionSignals: Signals not available returning", v27, 2u);
      MEMORY[0x266784AD0](v27, -1, -1);
    }

    v10 = v8;
  }

  return (*(v5 + 8))(v10, v4);
}

unint64_t sub_2663EE6DC()
{
  result = qword_280073620;
  if (!qword_280073620)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280073620);
  }

  return result;
}

uint64_t TCCStatus.hashValue.getter()
{
  v1 = *v0;
  sub_2664E0E68();
  MEMORY[0x266783E90](v1);
  return sub_2664E0EB8();
}

unint64_t sub_2663EE7B4()
{
  result = qword_280073628;
  if (!qword_280073628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280073628);
  }

  return result;
}

uint64_t AccountStoreProviding.ownerDSID.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 16))(v5, a1);
  v2 = v6;
  if (v6)
  {
    v3 = v7;
    __swift_project_boxed_opaque_existential_1(v5, v6);
    v2 = (*(v3 + 8))(v2, v3);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
  }

  else
  {
    sub_2662A9238(v5, &qword_2800729A0, qword_2664E5288);
  }

  return v2;
}

uint64_t AccountStoreProviding.amsDSID(forHomeUserIdentifier:completion:)(uint64_t a1, unint64_t a2, uint64_t (*a3)(void), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v41 = a6;
  v40 = a5;
  v44 = a3;
  v9 = sub_2664DFE38();
  v10 = *(v9 - 8);
  v42 = v9;
  v43 = v10;
  MEMORY[0x28223BE20](v9);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073C60, &unk_2664EE400);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v38 - v14;
  v16 = sub_2664DE4A8();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v20 = &v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v22 = &v38 - v21;
  v39 = a1;
  sub_2664DE448();
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    v23 = v44;
    sub_2662A9238(v15, &qword_280073C60, &unk_2664EE400);
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v24 = v42;
    v25 = __swift_project_value_buffer(v42, qword_280F914F0);
    swift_beginAccess();
    v26 = v43;
    (*(v43 + 16))(v12, v25, v24);

    v27 = sub_2664DFE18();
    v28 = sub_2664E06D8();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v45 = v30;
      *v29 = 136315138;
      *(v29 + 4) = sub_2662A320C(v39, a2, &v45);
      _os_log_impl(&dword_26629C000, v27, v28, "AccountProvider#identity Unable to convert homeID: %s to UUID", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v30);
      MEMORY[0x266784AD0](v30, -1, -1);
      MEMORY[0x266784AD0](v29, -1, -1);
    }

    (*(v26 + 8))(v12, v24);
    return v23(0);
  }

  else
  {
    v32 = *(v17 + 32);
    v32(v22, v15, v16);
    (*(v17 + 16))(v20, v22, v16);
    v33 = (*(v17 + 80) + 16) & ~*(v17 + 80);
    v34 = swift_allocObject();
    v32((v34 + v33), v20, v16);
    v35 = (v34 + ((v18 + v33 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v35 = v44;
    v35[1] = a4;
    v36 = v41;
    v37 = *(v41 + 8);

    v37(v22, sub_2663EF5FC, v34, v40, v36);

    return (*(v17 + 8))(v22, v16);
  }
}

uint64_t sub_2663EED60(uint64_t a1, void *a2, uint64_t a3, void (*a4)(void), uint64_t a5)
{
  v80 = a4;
  v81 = a5;
  v77 = a3;
  v7 = sub_2664DE4A8();
  v78 = *(v7 - 8);
  v79 = v7;
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v76 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v76 - v14;
  v16 = sub_2664DFE38();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v76 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v76 - v22;
  MEMORY[0x28223BE20](v21);
  v25 = &v76 - v24;
  if (a2)
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v26 = __swift_project_value_buffer(v16, qword_280F914F0);
    swift_beginAccess();
    v27 = v17;
    (*(v17 + 16))(v20, v26, v16);
    v28 = v78;
    v29 = v79;
    (*(v78 + 16))(v10, v77, v79);
    v30 = a2;
    v31 = sub_2664DFE18();
    v32 = sub_2664E06D8();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      v82 = v77;
      *v33 = 136315394;
      sub_2663EF71C();
      LODWORD(v76) = v32;
      v34 = sub_2664E0D48();
      v35 = v29;
      v36 = v27;
      v38 = v37;
      (*(v28 + 8))(v10, v35);
      v39 = sub_2662A320C(v34, v38, &v82);

      *(v33 + 4) = v39;
      *(v33 + 12) = 2080;
      swift_getErrorValue();
      *&v83 = sub_2664E0DE8();
      *(&v83 + 1) = v40;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800734A0, &qword_2664E3B40);
      v41 = sub_2664E0318();
      v43 = sub_2662A320C(v41, v42, &v82);

      *(v33 + 14) = v43;
      _os_log_impl(&dword_26629C000, v31, v76, "AccountStoreProviding#amsDSID homeID %s not found in database. Error: %s", v33, 0x16u);
      v44 = v77;
      swift_arrayDestroy();
      MEMORY[0x266784AD0](v44, -1, -1);
      MEMORY[0x266784AD0](v33, -1, -1);

      (*(v36 + 8))(v20, v16);
    }

    else
    {

      (*(v28 + 8))(v10, v29);
      (*(v27 + 8))(v20, v16);
    }

    return (v80)(0);
  }

  sub_2663EF6AC(a1, &v83);
  if (!v84)
  {
    sub_2662A9238(&v83, &qword_2800729A0, qword_2664E5288);
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v50 = __swift_project_value_buffer(v16, qword_280F914F0);
    swift_beginAccess();
    v51 = v17;
    (*(v17 + 16))(v25, v50, v16);
    v52 = v78;
    v53 = v79;
    (*(v78 + 16))(v15, v77, v79);
    v54 = sub_2664DFE18();
    v55 = sub_2664E06D8();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      *&v83 = v76;
      *v56 = 136315138;
      v57 = MEMORY[0x266781480]();
      v77 = v16;
      v59 = v58;
      (*(v52 + 8))(v15, v53);
      v60 = sub_2662A320C(v57, v59, &v83);

      *(v56 + 4) = v60;
      _os_log_impl(&dword_26629C000, v54, v55, "AccountStoreProviding#amsDSID store Account is nil for homeIdentifier: %s", v56, 0xCu);
      v61 = v76;
      __swift_destroy_boxed_opaque_existential_1Tm(v76);
      MEMORY[0x266784AD0](v61, -1, -1);
      MEMORY[0x266784AD0](v56, -1, -1);

      (*(v51 + 8))(v25, v77);
    }

    else
    {

      (*(v52 + 8))(v15, v53);
      (*(v51 + 8))(v25, v16);
    }

    return (v80)(0);
  }

  sub_2662A8618(&v83, v85);
  v45 = v86;
  v46 = v87;
  __swift_project_boxed_opaque_existential_1(v85, v86);
  v47 = (*(v46 + 8))(v45, v46);
  if (v47)
  {
    v48 = v47;
    v80();
  }

  else
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v62 = v16;
    v63 = __swift_project_value_buffer(v16, qword_280F914F0);
    swift_beginAccess();
    v64 = v17;
    (*(v17 + 16))(v23, v63, v62);
    v65 = v78;
    v66 = v79;
    (*(v78 + 16))(v13, v77, v79);
    v67 = sub_2664DFE18();
    v68 = sub_2664E06D8();
    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      v77 = v62;
      v70 = v69;
      v76 = swift_slowAlloc();
      v82 = v76;
      *v70 = 136315138;
      sub_2663EF71C();
      v71 = sub_2664E0D48();
      v73 = v72;
      (*(v65 + 8))(v13, v66);
      v74 = sub_2662A320C(v71, v73, &v82);

      *(v70 + 4) = v74;
      _os_log_impl(&dword_26629C000, v67, v68, "AccountStoreProviding#amsDSID no DSID for homeID: %s", v70, 0xCu);
      v75 = v76;
      __swift_destroy_boxed_opaque_existential_1Tm(v76);
      MEMORY[0x266784AD0](v75, -1, -1);
      MEMORY[0x266784AD0](v70, -1, -1);

      (*(v64 + 8))(v23, v77);
    }

    else
    {

      (*(v65 + 8))(v13, v66);
      (*(v64 + 8))(v23, v62);
    }

    (v80)(0);
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v85);
}

uint64_t sub_2663EF5FC(uint64_t a1, void *a2)
{
  v5 = *(sub_2664DE4A8() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
  v8 = *v7;
  v9 = *(v7 + 8);

  return sub_2663EED60(a1, a2, v2 + v6, v8, v9);
}

uint64_t sub_2663EF6AC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800729A0, qword_2664E5288);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2663EF71C()
{
  result = qword_280073630;
  if (!qword_280073630)
  {
    sub_2664DE4A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280073630);
  }

  return result;
}

void __swiftcall UserPreferenceLookupData.init(serviceBundleIdentifier:serviceName:fallbackUserSharedUserID:fallbackUsername:)(SiriAudioSupport::UserPreferenceLookupData *__return_ptr retstr, Swift::String_optional serviceBundleIdentifier, Swift::String_optional serviceName, Swift::String_optional fallbackUserSharedUserID, Swift::String_optional fallbackUsername)
{
  retstr->serviceBundleIdentifier = serviceBundleIdentifier;
  retstr->serviceName = serviceName;
  retstr->fallbackUserSharedUserID = fallbackUserSharedUserID;
  retstr->fallbackUsername = fallbackUsername;
}

uint64_t UserPreferenceLookupData.description.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  v7 = v0[7];
  v16 = v0[6];

  sub_2664E0B28();
  MEMORY[0x2667833B0](0xD000000000000034, 0x80000002664F7D00);
  if (v1)
  {
    v8 = v2;
  }

  else
  {
    v8 = 0x3E6C696E3CLL;
  }

  if (!v1)
  {
    v1 = 0xE500000000000000;
  }

  MEMORY[0x2667833B0](v8, v1);

  MEMORY[0x2667833B0](0x636976726573202CLL, 0xEF203A656D614E65);
  if (v3)
  {
    v9 = v4;
  }

  else
  {
    v9 = 0x3E6C696E3CLL;
  }

  if (v3)
  {
    v10 = v3;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  MEMORY[0x2667833B0](v9, v10);

  MEMORY[0x2667833B0](0xD00000000000001CLL, 0x80000002664F7D40);
  if (v5)
  {
    v11 = v6;
  }

  else
  {
    v11 = 0x3E6C696E3CLL;
  }

  if (v5)
  {
    v12 = v5;
  }

  else
  {
    v12 = 0xE500000000000000;
  }

  MEMORY[0x2667833B0](v11, v12);

  MEMORY[0x2667833B0](0xD000000000000014, 0x80000002664F7D60);
  if (v7)
  {
    v13 = v16;
  }

  else
  {
    v13 = 0x3E6C696E3CLL;
  }

  if (v7)
  {
    v14 = v7;
  }

  else
  {
    v14 = 0xE500000000000000;
  }

  MEMORY[0x2667833B0](v13, v14);

  MEMORY[0x2667833B0](2129184, 0xE300000000000000);
  return 0;
}

uint64_t UserPreferenceLookupData.serviceBundleIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t UserPreferenceLookupData.serviceBundleIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t UserPreferenceLookupData.serviceName.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t UserPreferenceLookupData.serviceName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t UserPreferenceLookupData.fallbackUserSharedUserID.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t UserPreferenceLookupData.fallbackUserSharedUserID.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t UserPreferenceLookupData.fallbackUsername.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t UserPreferenceLookupData.fallbackUsername.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t sub_2663EFB9C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 64))
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

uint64_t sub_2663EFBF8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

id static Locks.named(_:)(uint64_t a1, uint64_t a2)
{
  v2 = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
  v3 = sub_2664E02A8();
  [v2 setName_];

  return v2;
}

uint64_t sub_2663EFE80(void (*a1)(uint64_t, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9, uint64_t a10)
{
  v27 = a4;
  v28 = a8;
  v30 = a2;
  v31 = a1;
  v29 = a10;
  v26 = a9;
  v14 = sub_2664DE438();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v17, a6, v14);
  v18 = (*(v15 + 80) + 40) & ~*(v15 + 80);
  v19 = (v16 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v19 + 15) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  v22 = v27;
  *(v21 + 2) = a3;
  *(v21 + 3) = v22;
  *(v21 + 4) = a5;
  (*(v15 + 32))(&v21[v18], v17, v14);
  *&v21[v19] = a7;
  v23 = v28;
  *&v21[v20] = v28;

  v24 = v23;
  v31(v29, v21);
}

void sub_2663F0020(uint64_t a1, unint64_t a2, uint64_t a3, _BYTE *a4, int a5, NSObject *a6)
{
  v40 = a5;
  v41 = a4;
  v39 = a1;
  v9 = sub_2664DE438();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v38 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v36 - v13;
  v15 = sub_2664DFE38();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v19 = __swift_project_value_buffer(v15, qword_280F914F0);
  swift_beginAccess();
  (*(v16 + 16))(v18, v19, v15);
  (*(v10 + 16))(v14, a3, v9);

  v20 = v9;
  v21 = sub_2664DFE18();
  v22 = a2;
  v23 = sub_2664E06E8();

  if (os_log_type_enabled(v21, v23))
  {
    v24 = swift_slowAlloc();
    v36 = v20;
    v25 = v24;
    v26 = swift_slowAlloc();
    v37 = a6;
    v27 = v26;
    v42[0] = v26;
    *v25 = 136446466;
    *(v25 + 4) = sub_2662A320C(v39, v22, v42);
    *(v25 + 12) = 2050;
    v28 = v38;
    sub_2664DE428();
    sub_2664DE388();
    v30 = v29;
    v39 = v15;
    v31 = *(v10 + 8);
    v32 = v28;
    v33 = v36;
    v31(v32, v36);
    v31(v14, v33);
    *(v25 + 14) = v30;
    _os_log_impl(&dword_26629C000, v21, v23, "Completions#timeout completion: %{public}s received result in %{public}f seconds", v25, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v27);
    v34 = v27;
    a6 = v37;
    MEMORY[0x266784AD0](v34, -1, -1);
    MEMORY[0x266784AD0](v25, -1, -1);

    (*(v16 + 8))(v18, v39);
  }

  else
  {

    (*(v10 + 8))(v14, v20);
    (*(v16 + 8))(v18, v15);
  }

  v35 = v41;
  swift_beginAccess();
  *v35 = v40 & 1;
  dispatch_group_leave(a6);
}

void sub_2663F03E0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, _OWORD *a5, NSObject *a6)
{
  v45 = a5;
  v46 = a6;
  v43 = a1;
  v9 = sub_2664DE438();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v42 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v41 - v13;
  v15 = sub_2664DFE38();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v19 = __swift_project_value_buffer(v15, qword_280F914F0);
  swift_beginAccess();
  (*(v16 + 16))(v18, v19, v15);
  (*(v10 + 16))(v14, a3, v9);

  v20 = sub_2664DFE18();
  v44 = v9;
  v21 = v20;
  v22 = v15;
  v23 = sub_2664E06E8();

  if (os_log_type_enabled(v21, v23))
  {
    v24 = a2;
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v27 = v24;
    v28 = v26;
    v47[0] = v26;
    *v25 = 136446466;
    *(v25 + 4) = sub_2662A320C(v43, v27, v47);
    *(v25 + 12) = 2050;
    v43 = v22;
    v29 = v42;
    sub_2664DE428();
    sub_2664DE388();
    v31 = v30;
    v41 = v18;
    v32 = *(v10 + 8);
    v33 = v29;
    v34 = v44;
    v32(v33, v44);
    v32(v14, v34);
    *(v25 + 14) = v31;
    _os_log_impl(&dword_26629C000, v21, v23, "Completions#timeout completion: %{public}s received result in %{public}f seconds", v25, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v28);
    MEMORY[0x266784AD0](v28, -1, -1);
    MEMORY[0x266784AD0](v25, -1, -1);

    (*(v16 + 8))(v41, v43);
  }

  else
  {

    (*(v10 + 8))(v14, v44);
    (*(v16 + 8))(v18, v22);
  }

  swift_beginAccess();
  v35 = *(a4 + 8);
  v36 = *(a4 + 16);
  v37 = *(a4 + 24);
  v38 = *(a4 + 32);
  v39 = v45;
  v40 = v45[1];
  *a4 = *v45;
  *(a4 + 16) = v40;
  *(a4 + 32) = *(v39 + 32);
  sub_2663F5560(v39, v47);
  sub_2663142F4(v35, v36, v37, v38);
  dispatch_group_leave(v46);
}

void sub_2663F07B4(char *a1, unint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, NSObject *a8)
{
  v45 = a6;
  v46 = a7;
  v43 = a5;
  v44 = a4;
  v42 = a1;
  v11 = sub_2664DE438();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v41 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v39 - v15;
  v17 = sub_2664DFE38();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v21 = __swift_project_value_buffer(v17, qword_280F914F0);
  swift_beginAccess();
  (*(v18 + 16))(v20, v21, v17);
  (*(v12 + 16))(v16, a3, v11);

  v22 = v17;
  v23 = sub_2664DFE18();
  v24 = a2;
  v25 = v11;
  v26 = sub_2664E06E8();

  if (os_log_type_enabled(v23, v26))
  {
    v27 = swift_slowAlloc();
    v39 = v22;
    v28 = v27;
    v29 = swift_slowAlloc();
    v40 = a8;
    v30 = v29;
    v47[0] = v29;
    *v28 = 136446466;
    *(v28 + 4) = sub_2662A320C(v42, v24, v47);
    *(v28 + 12) = 2050;
    v31 = v41;
    sub_2664DE428();
    sub_2664DE388();
    v33 = v32;
    v42 = v20;
    v34 = *(v12 + 8);
    v34(v31, v25);
    v34(v16, v25);
    *(v28 + 14) = v33;
    _os_log_impl(&dword_26629C000, v23, v26, "Completions#timeout completion: %{public}s received result in %{public}f seconds", v28, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v30);
    v35 = v30;
    a8 = v40;
    MEMORY[0x266784AD0](v35, -1, -1);
    MEMORY[0x266784AD0](v28, -1, -1);

    (*(v18 + 8))(v42, v39);
  }

  else
  {

    (*(v12 + 8))(v16, v25);
    (*(v18 + 8))(v20, v22);
  }

  v36 = v44;
  swift_beginAccess();
  v38 = v45;
  v37 = v46;
  *v36 = v43;
  v36[1] = v38;
  v36[2] = v37;

  dispatch_group_leave(a8);
}

void sub_2663F0B88(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, NSObject *a6)
{
  v39 = a4;
  v40 = a6;
  v37 = a1;
  v9 = sub_2664DE438();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v36 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v35 - v13;
  v15 = sub_2664DFE38();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v19 = __swift_project_value_buffer(v15, qword_280F914F0);
  swift_beginAccess();
  (*(v16 + 16))(v18, v19, v15);
  (*(v10 + 16))(v14, a3, v9);

  v20 = sub_2664DFE18();
  v38 = v9;
  v21 = v20;
  v22 = sub_2664E06E8();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = a2;
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v35 = a5;
    v26 = v25;
    v41[0] = v25;
    *v24 = 136446466;
    *(v24 + 4) = sub_2662A320C(v37, v23, v41);
    *(v24 + 12) = 2050;
    v27 = v36;
    sub_2664DE428();
    sub_2664DE388();
    v29 = v28;
    v37 = v15;
    v30 = *(v10 + 8);
    v31 = v27;
    v32 = v38;
    v30(v31, v38);
    v30(v14, v32);
    *(v24 + 14) = v29;
    _os_log_impl(&dword_26629C000, v21, v22, "Completions#timeout completion: %{public}s received result in %{public}f seconds", v24, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v26);
    v33 = v26;
    a5 = v35;
    MEMORY[0x266784AD0](v33, -1, -1);
    MEMORY[0x266784AD0](v24, -1, -1);

    (*(v16 + 8))(v18, v37);
  }

  else
  {

    (*(v10 + 8))(v14, v38);
    (*(v16 + 8))(v18, v15);
  }

  v34 = v39;
  swift_beginAccess();
  *v34 = a5;

  dispatch_group_leave(v40);
}

uint64_t sub_2663F0F4C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, int a5, uint64_t a6, int a7, uint64_t (*a8)(uint64_t *, __n128), uint64_t a9, uint64_t a10)
{
  v64 = a8;
  v61 = a7;
  v55 = a6;
  v53 = a5;
  v56 = a4;
  v51 = a3;
  v65 = a9;
  v11 = sub_2664DE438();
  v58 = *(v11 - 8);
  v59 = v11;
  v12 = MEMORY[0x28223BE20](v11);
  v54 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v57 = &v50 - v14;
  v60 = sub_2664DFE38();
  v63 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v62 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_2664E0018();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = (&v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = sub_2664E00E8();
  v21 = *(v20 - 8);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v50 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v26 = &v50 - v25;
  sub_2664E00C8();
  v52 = a2;
  *v19 = a2;
  (*(v17 + 104))(v19, *MEMORY[0x277D85178], v16);
  MEMORY[0x266783140](v24, v19);
  (*(v17 + 8))(v19, v16);
  v27 = *(v21 + 8);
  v27(v24, v20);
  sub_2664E0738();
  v27(v26, v20);
  if (sub_2664E0028())
  {
    swift_beginAccess();
    LOBYTE(v67[0]) = *(a10 + 16);
    return (v64)(v67);
  }

  else
  {
    v50 = a10;
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v29 = v60;
    v30 = __swift_project_value_buffer(v60, qword_280F914F0);
    swift_beginAccess();
    v31 = v62;
    v32 = v63;
    (*(v63 + 16))(v62, v30, v29);
    v34 = v57;
    v33 = v58;
    v35 = v59;
    (*(v58 + 16))(v57, v55, v59);
    v36 = v56;

    v37 = sub_2664DFE18();
    v38 = sub_2664E06D8();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v67[0] = v40;
      *v39 = 136446978;
      *(v39 + 4) = sub_2662A320C(v51, v36, v67);
      *(v39 + 12) = 2050;
      *(v39 + 14) = v52;
      *(v39 + 22) = 2080;
      v66 = v53 & 1;
      v41 = sub_2664E0318();
      v43 = sub_2662A320C(v41, v42, v67);

      *(v39 + 24) = v43;
      *(v39 + 32) = 2050;
      v44 = v54;
      sub_2664DE428();
      sub_2664DE388();
      v46 = v45;
      v47 = *(v33 + 8);
      v47(v44, v35);
      v47(v34, v35);
      *(v39 + 34) = v46;
      _os_log_impl(&dword_26629C000, v37, v38, "Completions#timeout completion: %{public}s not complete within timeout: %{public}ldms, returning default: %s. %{public}f seconds since start.", v39, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x266784AD0](v40, -1, -1);
      MEMORY[0x266784AD0](v39, -1, -1);

      (*(v63 + 8))(v62, v29);
    }

    else
    {

      (*(v33 + 8))(v34, v35);
      (*(v32 + 8))(v31, v29);
    }

    v48 = v64;
    v49 = v50;
    if (v61)
    {
      sub_2664DF638();
      swift_allocObject();
      sub_2664DF628();
      sub_2664DF618();
    }

    swift_beginAccess();
    v66 = *(v49 + 16);
    return (v48)(&v66);
  }
}

uint64_t sub_2663F1638(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, __int128 *a5, uint64_t a6, int a7, void (*a8)(__int128 *), uint64_t a9, uint64_t a10)
{
  v73 = a8;
  v69 = a7;
  v63 = a6;
  v65 = a5;
  v64 = a4;
  v60 = a3;
  v74 = a9;
  v67 = sub_2664DE438();
  v66 = *(v67 - 8);
  v11 = MEMORY[0x28223BE20](v67);
  v62 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v72 = &v60 - v13;
  v71 = sub_2664DFE38();
  v68 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v70 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2664E0018();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = (&v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = sub_2664E00E8();
  v20 = *(v19 - 8);
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v60 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = &v60 - v24;
  sub_2664E00C8();
  v61 = a2;
  *v18 = a2;
  (*(v16 + 104))(v18, *MEMORY[0x277D85178], v15);
  MEMORY[0x266783140](v23, v18);
  (*(v16 + 8))(v18, v15);
  v26 = *(v20 + 8);
  v26(v23, v19);
  sub_2664E0738();
  v26(v25, v19);
  if (sub_2664E0028())
  {
    swift_beginAccess();
    v27 = *(a10 + 24);
    v28 = *(a10 + 32);
    v29 = *(a10 + 40);
    v30 = *(a10 + 48);
    LOBYTE(v76) = *(a10 + 16);
    *(&v76 + 1) = v27;
    *&v77 = v28;
    *(&v77 + 1) = v29;
    v78 = v30;
    sub_266314294(v27, v28, v29, v30);
    v73(&v76);
  }

  else
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v31 = v71;
    v32 = __swift_project_value_buffer(v71, qword_280F914F0);
    swift_beginAccess();
    v33 = v68;
    v34 = v70;
    (*(v68 + 16))(v70, v32, v31);
    v35 = v66;
    v36 = v67;
    (*(v66 + 16))(v72, v63, v67);
    v37 = v64;

    v38 = v65;
    sub_2663F5560(v65, &v76);
    v39 = sub_2664DFE18();
    v40 = sub_2664E06D8();

    LODWORD(v63) = v40;
    v41 = v40;
    v42 = v39;
    if (os_log_type_enabled(v39, v41))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v75[0] = v44;
      *v43 = 136446978;
      *(v43 + 4) = sub_2662A320C(v60, v37, v75);
      *(v43 + 12) = 2050;
      *(v43 + 14) = v61;
      *(v43 + 22) = 2080;
      v45 = v38[1];
      v76 = *v38;
      v77 = v45;
      v78 = *(v38 + 4);
      v46 = sub_2664E0318();
      v48 = sub_2662A320C(v46, v47, v75);

      *(v43 + 24) = v48;
      *(v43 + 32) = 2050;
      v49 = v62;
      sub_2664DE428();
      v50 = v72;
      sub_2664DE388();
      v52 = v51;
      v53 = *(v35 + 8);
      v53(v49, v36);
      v53(v50, v36);
      *(v43 + 34) = v52;
      _os_log_impl(&dword_26629C000, v42, v63, "Completions#timeout completion: %{public}s not complete within timeout: %{public}ldms, returning default: %s. %{public}f seconds since start.", v43, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x266784AD0](v44, -1, -1);
      MEMORY[0x266784AD0](v43, -1, -1);

      (*(v33 + 8))(v70, v71);
    }

    else
    {

      sub_2663F55BC(v38);
      (*(v35 + 8))(v72, v36);
      (*(v33 + 8))(v34, v31);
    }

    v54 = v73;
    if (v69)
    {
      sub_2664DF638();
      swift_allocObject();
      sub_2664DF628();
      sub_2664DF618();
    }

    swift_beginAccess();
    v55 = *(a10 + 24);
    v56 = *(a10 + 32);
    v57 = *(a10 + 40);
    v58 = *(a10 + 48);
    LOBYTE(v76) = *(a10 + 16);
    *(&v76 + 1) = v55;
    *&v77 = v56;
    *(&v77 + 1) = v57;
    v78 = v58;
    sub_266314294(v55, v56, v57, v58);
    v54(&v76);
  }

  return sub_2663142F4(*(&v76 + 1), v77, *(&v77 + 1), v78);
}

uint64_t sub_2663F1D98(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, void (*a10)(__int128 *, __n128), uint64_t a11, uint64_t a12)
{
  v67 = a8;
  v69 = a7;
  *(&v65 + 1) = a6;
  *&v65 = a5;
  v68 = a4;
  v63 = a3;
  v75 = a10;
  v76 = a11;
  v13 = sub_2664DE438();
  v71 = *(v13 - 8);
  v72 = v13;
  v14 = MEMORY[0x28223BE20](v13);
  v66 = &v60[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v14);
  v70 = &v60[-v16];
  v77 = sub_2664DFE38();
  v73 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v74 = &v60[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = sub_2664E0018();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v60[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = sub_2664E00E8();
  v23 = *(v22 - 8);
  v24 = MEMORY[0x28223BE20](v22);
  v26 = &v60[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v24);
  v28 = &v60[-v27];
  sub_2664E00C8();
  v64 = a2;
  *v21 = a2;
  (*(v19 + 104))(v21, *MEMORY[0x277D85178], v18);
  MEMORY[0x266783140](v26, v21);
  (*(v19 + 8))(v21, v18);
  v29 = *(v23 + 8);
  v29(v26, v22);
  sub_2664E0738();
  v29(v28, v22);
  if (sub_2664E0028())
  {
    swift_beginAccess();
    v30 = *(a12 + 32);
    v80 = *(a12 + 16);
    v81 = v30;

    (v75)(&v80);
  }

  else
  {
    v62 = a12;
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v31 = a9;
    v32 = v77;
    v33 = __swift_project_value_buffer(v77, qword_280F914F0);
    swift_beginAccess();
    v35 = v73;
    v34 = v74;
    (*(v73 + 16))(v74, v33, v32);
    v37 = v70;
    v36 = v71;
    v38 = v72;
    (*(v71 + 16))(v70, v67, v72);
    v39 = v69;

    v40 = v68;

    v41 = sub_2664DFE18();
    v42 = sub_2664E06D8();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v61 = v42;
      v44 = v40;
      v45 = v43;
      v67 = swift_slowAlloc();
      *&v78 = v67;
      *v45 = 136446978;
      v46 = v44;
      v31 = a9;
      *(v45 + 4) = sub_2662A320C(v63, v46, &v78);
      *(v45 + 12) = 2050;
      *(v45 + 14) = v64;
      *(v45 + 22) = 2080;
      v80 = v65;
      v81 = v39;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072948, &qword_2664E5050);
      v47 = sub_2664E0318();
      v49 = v37;
      v50 = sub_2662A320C(v47, v48, &v78);

      *(v45 + 24) = v50;
      *(v45 + 32) = 2050;
      v51 = v66;
      sub_2664DE428();
      sub_2664DE388();
      v53 = v52;
      v54 = *(v36 + 8);
      v54(v51, v38);
      v54(v49, v38);
      *(v45 + 34) = v53;
      _os_log_impl(&dword_26629C000, v41, v61, "Completions#timeout completion: %{public}s not complete within timeout: %{public}ldms, returning default: %s. %{public}f seconds since start.", v45, 0x2Au);
      v55 = v67;
      swift_arrayDestroy();
      MEMORY[0x266784AD0](v55, -1, -1);
      MEMORY[0x266784AD0](v45, -1, -1);

      (*(v35 + 8))(v74, v77);
    }

    else
    {

      (*(v36 + 8))(v37, v38);
      (*(v35 + 8))(v34, v77);
    }

    v56 = v75;
    v57 = v62;
    if (v31)
    {
      sub_2664DF638();
      swift_allocObject();
      sub_2664DF628();
      sub_2664DF618();
    }

    swift_beginAccess();
    v58 = *(v57 + 32);
    v78 = *(v57 + 16);
    v79 = v58;

    (v56)(&v78);
  }
}

uint64_t sub_2663F2518(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, int a7, void (*a8)(uint64_t *, __n128), uint64_t a9, uint64_t a10)
{
  v68 = a8;
  v64 = a7;
  v58 = a6;
  v59 = a4;
  v60 = a5;
  v55 = a3;
  v69 = a9;
  v65 = sub_2664DE438();
  v62 = *(v65 - 8);
  v11 = MEMORY[0x28223BE20](v65);
  v57 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v61 = &v54 - v13;
  v67 = sub_2664DFE38();
  v63 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v66 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2664E0018();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = (&v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = sub_2664E00E8();
  v20 = *(v19 - 8);
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v54 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = &v54 - v24;
  sub_2664E00C8();
  v56 = a2;
  *v18 = a2;
  (*(v16 + 104))(v18, *MEMORY[0x277D85178], v15);
  MEMORY[0x266783140](v23, v18);
  (*(v16 + 8))(v18, v15);
  v26 = *(v20 + 8);
  v26(v23, v19);
  sub_2664E0738();
  v26(v25, v19);
  if (sub_2664E0028())
  {
    swift_beginAccess();
    v71[0] = *(a10 + 16);

    (v68)(v71);
  }

  else
  {
    v54 = a10;
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v27 = v67;
    v28 = __swift_project_value_buffer(v67, qword_280F914F0);
    swift_beginAccess();
    v29 = v63;
    v30 = v66;
    (*(v63 + 16))(v66, v28, v27);
    v32 = v61;
    v31 = v62;
    v33 = v65;
    (*(v62 + 16))(v61, v58, v65);
    v34 = v60;

    v35 = v59;

    v36 = sub_2664DFE18();
    v37 = sub_2664E06D8();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = v35;
      v39 = swift_slowAlloc();
      v40 = v32;
      v41 = swift_slowAlloc();
      v71[0] = v41;
      *v39 = 136446978;
      *(v39 + 4) = sub_2662A320C(v55, v38, v71);
      *(v39 + 12) = 2050;
      *(v39 + 14) = v56;
      *(v39 + 22) = 2080;
      v70 = v34;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073648, qword_2664EB7E8);
      v42 = sub_2664E0318();
      v44 = sub_2662A320C(v42, v43, v71);

      *(v39 + 24) = v44;
      *(v39 + 32) = 2050;
      v45 = v57;
      sub_2664DE428();
      sub_2664DE388();
      v47 = v46;
      v48 = *(v31 + 8);
      v49 = v45;
      v50 = v65;
      v48(v49, v65);
      v48(v40, v50);
      *(v39 + 34) = v47;
      _os_log_impl(&dword_26629C000, v36, v37, "Completions#timeout completion: %{public}s not complete within timeout: %{public}ldms, returning default: %s. %{public}f seconds since start.", v39, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x266784AD0](v41, -1, -1);
      MEMORY[0x266784AD0](v39, -1, -1);

      (*(v29 + 8))(v66, v67);
    }

    else
    {

      (*(v31 + 8))(v32, v33);
      (*(v29 + 8))(v30, v27);
    }

    v51 = v54;
    v52 = v68;
    if (v64)
    {
      sub_2664DF638();
      swift_allocObject();
      sub_2664DF628();
      sub_2664DF618();
    }

    swift_beginAccess();
    v70 = *(v51 + 16);

    (v52)(&v70);
  }
}

uint64_t sub_2663F2C38()
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
  v8 = _s16SiriAudioSupport14DispatchQueuesV5queue_3qos10attributesSo012OS_dispatch_F0CSS_0D00D3QoSVAhIE10AttributesVtFZ_0(0xD000000000000015, 0x80000002664F7DE0, v7, v3);
  (*(v1 + 8))(v3, v0);
  result = (*(v5 + 8))(v7, v4);
  qword_280073638 = v8;
  return result;
}

uint64_t sub_2663F2DD0(void (*a1)(uint64_t *), uint64_t a2, uint64_t a3, unint64_t a4, _BYTE *a5, void *a6, uint64_t a7, uint64_t a8)
{
  v34 = a6;
  v35 = a5;
  v36 = a3;
  v13 = sub_2664DFE38();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v13, qword_280F914F0);
  swift_beginAccess();
  (*(v14 + 16))(v16, v17, v13);

  v18 = sub_2664DFE18();
  v19 = sub_2664E06E8();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v32 = a7;
    v21 = v20;
    v22 = swift_slowAlloc();
    v33 = a2;
    v23 = a1;
    v24 = a8;
    v25 = v22;
    v37 = v22;
    *v21 = 136446210;
    *(v21 + 4) = sub_2662A320C(v36, a4, &v37);
    _os_log_impl(&dword_26629C000, v18, v19, "Continuations#buildAndStart [%{public}s] waiting for previous...", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v25);
    v26 = v25;
    a8 = v24;
    a1 = v23;
    a2 = v33;
    MEMORY[0x266784AD0](v26, -1, -1);
    v27 = v21;
    a7 = v32;
    MEMORY[0x266784AD0](v27, -1, -1);
  }

  (*(v14 + 8))(v16, v13);
  if (v35)
  {
    v28 = v35;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073640, &qword_2664EB7E0);
    swift_allocObject();
    v28 = sub_2662ECF60(0xD00000000000001BLL, 0x80000002664F7DA0, sub_2663F3108, 0);
  }

  swift_bridgeObjectRetain_n();

  v29 = v34;

  sub_266311654(0, 1, v28, v36, a4, a1, a2, v29, a7, a8);

  swift_bridgeObjectRelease_n();
}

uint64_t sub_2663F3148(unsigned __int16 *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *), uint64_t a5, void (*a6)(char *, uint64_t), uint64_t a7, uint64_t a8)
{
  v166 = a8;
  v165 = a7;
  v167 = a6;
  v175 = a4;
  v176 = a5;
  v174 = a3;
  v172 = a2;
  v171 = sub_2664E0038();
  v178 = *(v171 - 8);
  MEMORY[0x28223BE20](v171);
  v10 = &v143 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2664E00B8();
  v177 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v143 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2664DE438();
  v170 = *(v14 - 8);
  v15 = *(v170 + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v17 = &v143 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v143 - v18;
  v20 = sub_2664DFE38();
  v21 = *(v20 - 8);
  v179 = v20;
  v180 = v21;
  v22 = MEMORY[0x28223BE20](v20);
  v23 = MEMORY[0x28223BE20](v22);
  v24 = MEMORY[0x28223BE20](v23);
  MEMORY[0x28223BE20](v24);
  v26 = MEMORY[0x28223BE20](&v143 - v25);
  v28 = &v143 - v27;
  v29 = MEMORY[0x28223BE20](v26);
  v173 = &v143 - v33;
  v34 = *(a1 + 2);
  if (v34)
  {
    v35 = *(a1 + 1);
    v36 = *a1;
    v37 = qword_280F914E8;

    if (v37 != -1)
    {
      swift_once();
    }

    v38 = v179;
    v39 = __swift_project_value_buffer(v179, qword_280F914F0);
    swift_beginAccess();
    v40 = v180;
    v41 = v173;
    (*(v180 + 16))(v173, v39, v38);

    v42 = v174;

    v43 = sub_2664DFE18();
    v44 = sub_2664E06D8();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = v35;
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v188[0] = v47;
      *v46 = 136446722;
      if (qword_280071B00 != -1)
      {
        swift_once();
      }

      *(v46 + 4) = sub_2662A320C(qword_280072E28, qword_280072E30, v188);
      *(v46 + 12) = 2082;
      *(v46 + 14) = sub_2662A320C(v172, v42, v188);
      *(v46 + 22) = 2080;
      LOBYTE(v181) = v36;
      v48 = PlaybackCode.rawValue.getter();
      v50 = sub_2662A320C(v48, v49, v188);

      *(v46 + 24) = v50;
      _os_log_impl(&dword_26629C000, v43, v44, "Continuations#buildAndStart %{public}s [%{public}s] previous continuation completed with ERROR code: %s - exiting", v46, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x266784AD0](v47, -1, -1);
      MEMORY[0x266784AD0](v46, -1, -1);

      (*(v180 + 8))(v173, v38);
      v35 = v45;
    }

    else
    {

      (*(v40 + 8))(v41, v38);
    }

    v188[0] = v36;
    v188[1] = v35;
    v188[2] = v34;
    v175(v188);
  }

  else
  {
    v156 = v29;
    v154 = v32;
    *&v155 = v31;
    v157 = v30;
    v159 = v15;
    v160 = v19;
    v161 = v13;
    v162 = v14;
    v163 = v11;
    v164 = v10;
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v51 = v179;
    v52 = __swift_project_value_buffer(v179, qword_280F914F0);
    swift_beginAccess();
    v53 = v180;
    v55 = v180 + 16;
    v54 = *(v180 + 16);
    v173 = v52;
    v169 = v54;
    v54(v28, v52, v51);
    v56 = v174;

    v57 = sub_2664DFE18();
    v58 = sub_2664E06E8();

    v59 = os_log_type_enabled(v57, v58);
    v158 = v17;
    if (v59)
    {
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      aBlock = v61;
      *v60 = 136446210;
      *(v60 + 4) = sub_2662A320C(v172, v56, &aBlock);
      _os_log_impl(&dword_26629C000, v57, v58, "Continuations#buildAndStart [%{public}s] previous completed successfully", v60, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v61);
      MEMORY[0x266784AD0](v61, -1, -1);
      v53 = v180;
      MEMORY[0x266784AD0](v60, -1, -1);
    }

    v168 = *(v53 + 8);
    v168(v28, v51);
    v62 = v51;
    v63 = v156;
    v169(v156, v173, v62);

    v64 = sub_2664DFE18();
    v65 = sub_2664E06E8();

    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      aBlock = v67;
      *v66 = 136446210;
      v68 = v172;
      *(v66 + 4) = sub_2662A320C(v172, v56, &aBlock);
      _os_log_impl(&dword_26629C000, v64, v65, "Continuations#buildAndStart [%{public}s] evaluating next Continuation function", v66, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v67);
      MEMORY[0x266784AD0](v67, -1, -1);
      MEMORY[0x266784AD0](v66, -1, -1);

      v168(v63, v62);
    }

    else
    {

      v168(v63, v62);
      v68 = v172;
    }

    aBlock = 0;
    v183 = 0xE000000000000000;
    sub_2664E0B28();

    aBlock = 0xD00000000000001CLL;
    v183 = 0x80000002664F7DC0;
    MEMORY[0x2667833B0](v68, v56);
    v70 = aBlock;
    v71 = v183;
    v72 = v169;
    if (qword_280071C08 != -1)
    {
      swift_once();
    }

    v156 = qword_280073638;
    v73 = v154;
    v72(v154, v173, v62);
    v74 = sub_2664DFE18();
    v75 = sub_2664E06B8();
    if (os_log_type_enabled(v74, v75))
    {
      v76 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      aBlock = v77;
      *v76 = 134218498;
      *(v76 + 4) = 0;
      *(v76 + 12) = 2048;
      *(v76 + 14) = 40;
      *(v76 + 22) = 2080;
      *(v76 + 24) = sub_2662A320C(0x74754F64656D6974, 0xE800000000000000, &aBlock);
      _os_log_impl(&dword_26629C000, v74, v75, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v76, 0x20u);
      __swift_destroy_boxed_opaque_existential_1Tm(v77);
      v78 = v77;
      v72 = v169;
      MEMORY[0x266784AD0](v78, -1, -1);
      MEMORY[0x266784AD0](v76, -1, -1);
    }

    v168(v73, v62);
    v79 = v166;
    v80 = v165;
    v81 = swift_allocObject();
    *(v81 + 16) = v80;
    *(v81 + 24) = v79;
    v172 = v81;
    v82 = v155;
    v72(v155, v173, v62);

    v83 = sub_2664DFE18();
    v84 = sub_2664E06C8();

    if (os_log_type_enabled(v83, v84))
    {
      v85 = swift_slowAlloc();
      v86 = swift_slowAlloc();
      aBlock = v86;
      *v85 = 136446466;
      *(v85 + 4) = sub_2662A320C(v70, v71, &aBlock);
      *(v85 + 12) = 2050;
      *(v85 + 14) = 60000;
      _os_log_impl(&dword_26629C000, v83, v84, "Completions#timeout protecting completion: %{public}s with timeout: %{public}ldms", v85, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v86);
      MEMORY[0x266784AD0](v86, -1, -1);
      v87 = v85;
      v88 = v70;
      MEMORY[0x266784AD0](v87, -1, -1);

      v168(v82, v62);
    }

    else
    {

      v168(v82, v62);
      v88 = v70;
    }

    v144 = v71;
    v174 = v88;
    v166 = v55;
    v89 = v160;
    sub_2664DE428();
    v90 = dispatch_group_create();
    v91 = swift_allocObject();
    v155 = xmmword_2664EB7D0;
    *(v91 + 16) = xmmword_2664EB7D0;
    v168 = v91;
    *(v91 + 32) = 0xE800000000000000;
    aBlock = 0;
    v183 = 0xE000000000000000;

    sub_2664E0B28();

    aBlock = 0xD00000000000001ALL;
    v183 = 0x80000002664F44D0;
    MEMORY[0x2667833B0](v88, v71);
    v92 = aBlock;
    v93 = v183;
    type metadata accessor for AtomicOnce();
    v94 = swift_allocObject();
    *(v94 + 24) = 0;
    *(v94 + 32) = v92;
    *(v94 + 40) = v93;
    v95 = qword_280F91468;

    v96 = v162;
    if (v95 != -1)
    {
      swift_once();
    }

    v97 = qword_280F91470;
    v185 = type metadata accessor for SiriKitTaskLoggingProvider();
    v186 = &protocol witness table for SiriKitTaskLoggingProvider;
    aBlock = v97;
    type metadata accessor for PThreadMutex();
    swift_allocObject();

    *(v94 + 16) = PThreadMutex.init(name:abortOnFail:analyticsService:)(v92, v93, 1, &aBlock);
    dispatch_group_enter(v90);
    v98 = v170;
    v99 = *(v170 + 16);
    v100 = v94;
    v101 = v158;
    v154 = (v170 + 16);
    v153 = v99;
    v99(v158, v89, v96);
    v102 = *(v98 + 80);
    v149 = ~v102;
    v103 = (v102 + 56) & ~v102;
    v104 = (v159 + v103 + 7) & 0xFFFFFFFFFFFFFFF8;
    v143 = v102;
    v105 = swift_allocObject();
    v106 = v96;
    v107 = v172;
    v105[2] = sub_2663F50E0;
    v105[3] = v107;
    v108 = v174;
    v105[4] = v100;
    v105[5] = v108;
    v109 = v144;
    v105[6] = v144;
    v110 = *(v98 + 32);
    v151 = v98 + 32;
    v150 = v110;
    v110(v105 + v103, v101, v106);
    *(v105 + v104) = v168;
    *(v105 + ((v104 + 15) & 0xFFFFFFFFFFFFFFF8)) = v90;
    v186 = sub_2663F5108;
    v187 = v105;
    aBlock = MEMORY[0x277D85DD0];
    v183 = 1107296256;
    v184 = sub_2662A3F90;
    v185 = &block_descriptor_15;
    v111 = _Block_copy(&aBlock);

    v165 = v100;

    v148 = v90;
    v112 = v161;
    sub_2664E0068();
    v181 = MEMORY[0x277D84F90];
    v113 = sub_2662A6120();
    v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280074210, &qword_2664E3640);
    v115 = sub_2662A5AC8();
    v116 = v164;
    v147 = v114;
    v146 = v115;
    v117 = v171;
    v152 = v113;
    sub_2664E0A08();
    MEMORY[0x266783800](0, v112, v116, v111);
    _Block_release(v111);
    v118 = v178 + 8;
    v167 = *(v178 + 8);
    v167(v116, v117);
    v119 = *(v177 + 8);
    v177 += 8;
    v145 = v119;
    v119(v112, v163);

    v120 = v157;
    v121 = v179;
    v169(v157, v173, v179);

    v122 = sub_2664DFE18();
    v123 = sub_2664E06E8();

    v124 = os_log_type_enabled(v122, v123);
    v178 = v118;
    if (v124)
    {
      v125 = swift_slowAlloc();
      v126 = swift_slowAlloc();
      aBlock = v126;
      *v125 = 136446210;
      *(v125 + 4) = sub_2662A320C(v174, v109, &aBlock);
      _os_log_impl(&dword_26629C000, v122, v123, "Completions#timeout waiting for completion: %{public}s...", v125, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v126);
      MEMORY[0x266784AD0](v126, -1, -1);
      MEMORY[0x266784AD0](v125, -1, -1);
    }

    (*(v180 + 8))(v120, v121);
    v127 = v109;
    v128 = v158;
    v129 = v160;
    v130 = v162;
    v153(v158, v160, v162);
    v131 = (v143 + 72) & v149;
    v132 = v131 + v159;
    v133 = (((v131 + v159) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8;
    v134 = swift_allocObject();
    v135 = v148;
    *(v134 + 16) = v148;
    *(v134 + 24) = 60000;
    *(v134 + 32) = v174;
    *(v134 + 40) = v127;
    *(v134 + 48) = v155;
    *(v134 + 64) = 0xE800000000000000;
    v150(v134 + v131, v128, v130);
    *(v134 + v132) = 1;
    v136 = v134 + (v132 & 0xFFFFFFFFFFFFFFF8);
    v137 = v176;
    *(v136 + 8) = v175;
    *(v136 + 16) = v137;
    *(v134 + v133) = v168;
    v186 = sub_2663F51C4;
    v187 = v134;
    aBlock = MEMORY[0x277D85DD0];
    v183 = 1107296256;
    v184 = sub_2662A3F90;
    v185 = &block_descriptor_21_1;
    v138 = _Block_copy(&aBlock);

    v139 = v135;

    v140 = v161;
    sub_2664E0068();
    v181 = MEMORY[0x277D84F90];
    v141 = v164;
    v142 = v171;
    sub_2664E0A08();
    MEMORY[0x266783800](0, v140, v141, v138);
    _Block_release(v138);

    v167(v141, v142);
    v145(v140, v163);
    (*(v170 + 8))(v129, v130);
  }
}

uint64_t sub_2663F44EC(_BYTE *a1, uint64_t a2, unint64_t a3)
{

  sub_2663124DC(0, 1, a1, a2, a3);
}

uint64_t sub_2663F4550(char *a1, uint64_t a2, unint64_t a3)
{
  v6 = sub_2664DFE38();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v30[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v12 = &v30[-v11];
  if (*(a1 + 2))
  {
    v13 = *a1;
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v14 = __swift_project_value_buffer(v6, qword_280F914F0);
    swift_beginAccess();
    (*(v7 + 16))(v12, v14, v6);

    v15 = sub_2664DFE18();
    v16 = sub_2664E06D8();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v19 = a2;
      v20 = v18;
      v31 = v18;
      *v17 = 136446466;
      *(v17 + 4) = sub_2662A320C(v19, a3, &v31);
      *(v17 + 12) = 2082;
      v30[15] = v13;
      v21 = PlaybackCode.rawValue.getter();
      v23 = sub_2662A320C(v21, v22, &v31);

      *(v17 + 14) = v23;
      _os_log_impl(&dword_26629C000, v15, v16, "Continuations#buildAndStart [%{public}s] completed with ERROR code: %{public}s in background", v17, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266784AD0](v20, -1, -1);
      MEMORY[0x266784AD0](v17, -1, -1);
    }

    return (*(v7 + 8))(v12, v6);
  }

  else
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v25 = __swift_project_value_buffer(v6, qword_280F914F0);
    swift_beginAccess();
    (*(v7 + 16))(v10, v25, v6);

    v26 = sub_2664DFE18();
    v27 = sub_2664E06E8();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v31 = v29;
      *v28 = 136446210;
      *(v28 + 4) = sub_2662A320C(a2, a3, &v31);
      _os_log_impl(&dword_26629C000, v26, v27, "Continuations#buildAndStart [%{public}s] completed successfully in background", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v29);
      MEMORY[0x266784AD0](v29, -1, -1);
      MEMORY[0x266784AD0](v28, -1, -1);
    }

    return (*(v7 + 8))(v10, v6);
  }
}

uint64_t sub_2663F4978(uint64_t a1, unint64_t a2, void *a3, void (*a4)(void **, __n128), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v52 = a8;
  v53 = a7;
  v54 = a6;
  v67 = a5;
  v68 = a4;
  v61 = sub_2664E0038();
  v64 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v59 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2664E00B8();
  v62 = *(v12 - 8);
  v63 = v12;
  MEMORY[0x28223BE20](v12);
  v55 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2664DFE38();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v50 - v19;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v65 = v18;
  v21 = __swift_project_value_buffer(v14, qword_280F914F0);
  swift_beginAccess();
  v22 = *(v15 + 16);
  v58 = v21;
  v57 = v15 + 16;
  v56 = v22;
  v22(v20, v21, v14);

  v23 = sub_2664DFE18();
  v24 = sub_2664E06C8();

  v25 = os_log_type_enabled(v23, v24);
  v66 = v15;
  v60 = v14;
  if (v25)
  {
    v26 = swift_slowAlloc();
    v51 = a3;
    v27 = v14;
    v28 = v26;
    v29 = v15;
    v30 = swift_slowAlloc();
    aBlock = v30;
    *v28 = 136446210;
    *(v28 + 4) = sub_2662A320C(a1, a2, &aBlock);
    _os_log_impl(&dword_26629C000, v23, v24, "Continuations#buildAndStart [%{public}s]...", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v30);
    MEMORY[0x266784AD0](v30, -1, -1);
    MEMORY[0x266784AD0](v28, -1, -1);

    v31 = v27;
    a3 = v51;
    (*(v29 + 8))(v20, v31);
  }

  else
  {

    (*(v15 + 8))(v20, v14);
  }

  v32 = a1;
  aBlock = 0;
  v71 = 0xE000000000000000;
  sub_2664E0B28();

  aBlock = 0xD00000000000001DLL;
  v71 = 0x80000002664F7D80;
  MEMORY[0x2667833B0](a1, a2);
  v33 = aBlock;
  v34 = v71;
  v35 = swift_allocObject();
  v35[2] = a1;
  v35[3] = a2;
  v35[4] = v54;
  v35[5] = a3;
  v36 = v52;
  v35[6] = v53;
  v35[7] = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073640, &qword_2664EB7E0);
  swift_allocObject();

  a3;

  v37 = sub_2662ECF60(v33, v34, sub_2663F50C4, v35);

  v38 = swift_allocObject();
  v38[2] = v37;
  v38[3] = v32;
  v38[4] = a2;
  v74 = sub_2663F50D4;
  v75 = v38;
  aBlock = MEMORY[0x277D85DD0];
  v71 = 1107296256;
  v72 = sub_2662A3F90;
  v73 = &block_descriptor_32;
  v39 = _Block_copy(&aBlock);

  v40 = v55;
  sub_2664E0068();
  v69 = MEMORY[0x277D84F90];
  sub_2662A6120();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280074210, &qword_2664E3640);
  sub_2662A5AC8();
  v41 = v59;
  v42 = v61;
  sub_2664E0A08();
  MEMORY[0x266783800](0, v40, v41, v39);
  _Block_release(v39);
  (*(v64 + 8))(v41, v42);
  (*(v62 + 8))(v40, v63);

  v43 = v65;
  v44 = v60;
  v56(v65, v58, v60);

  v45 = sub_2664DFE18();
  v46 = sub_2664E06C8();

  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    aBlock = v48;
    *v47 = 136446210;
    *(v47 + 4) = sub_2662A320C(v32, a2, &aBlock);
    _os_log_impl(&dword_26629C000, v45, v46, "Continuations#buildAndStart [%{public}s] returning early success completion (prior to work)", v47, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v48);
    MEMORY[0x266784AD0](v48, -1, -1);
    MEMORY[0x266784AD0](v47, -1, -1);
  }

  (*(v66 + 8))(v43, v44);
  v71 = 0;
  v72 = 0;
  aBlock = v37;
  LOBYTE(v73) = 0;

  v68(&aBlock);

  return sub_2662D2F30(aBlock, v71, v72, v73);
}

uint64_t sub_2663F5108()
{
  v1 = *(sub_2664DE438() - 8);
  v2 = (*(v1 + 80) + 56) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_2663EFE80(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), v0 + v2, *(v0 + v3), *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8)), &unk_2877EF5F8, sub_2663F5278);
}

uint64_t sub_2663F51C4()
{
  v1 = *(sub_2664DE438() - 8);
  v2 = (*(v1 + 80) + 72) & ~*(v1 + 80);
  v3 = v2 + *(v1 + 64);
  return sub_2663F1D98(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), v0 + v2, *(v0 + v3), *(v0 + (v3 & 0xFFFFFFFFFFFFFFF8) + 8), *(v0 + (v3 & 0xFFFFFFFFFFFFFFF8) + 16), *(v0 + (((v3 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_2663F5278(__int128 *a1)
{
  v3 = *(sub_2664DE438() - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);
  v9 = *(v1 + v5);
  v10 = *(v1 + v6);
  v11 = *(a1 + 2);
  v14 = *a1;
  v15 = v11;
  v13[2] = v7;
  v13[3] = v8;
  v13[4] = v1 + v4;
  v13[5] = v9 + 16;
  v13[6] = &v14;
  v13[7] = v10;
  return sub_266469DF8(sub_2663F5360, v13);
}

uint64_t sub_2663F5378(char *a1)
{
  v3 = *(sub_2664DE438() - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + 24);
  v8 = *(v1 + v5);
  v9 = *(v1 + v6);
  v10 = *(v1 + 32);
  v13 = *a1;
  v12[2] = v7;
  v12[3] = v10;
  v12[4] = v1 + v4;
  v12[5] = v8 + 16;
  v12[6] = &v13;
  v12[7] = v9;
  return sub_266469DF8(sub_2663F5458, v12);
}

uint64_t sub_2663F546C(uint64_t *a1)
{
  v3 = *(sub_2664DE438() - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + 24);
  v8 = *(v1 + v5);
  v9 = *(v1 + v6);
  v10 = *(v1 + 32);
  v13 = *a1;
  v12[2] = v7;
  v12[3] = v10;
  v12[4] = v1 + v4;
  v12[5] = v8 + 16;
  v12[6] = &v13;
  v12[7] = v9;
  return sub_266469DF8(sub_2663F554C, v12);
}

uint64_t objectdestroy_23Tm()
{
  v1 = sub_2664DE438();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_2663F5708(char *a1)
{
  v3 = *(sub_2664DE438() - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + 24);
  v7 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v14 = *a1;
  v8 = *(v1 + 32);
  v9 = *(v1 + v5);
  v10 = *(v1 + v7);
  v11 = *(a1 + 24);
  v15 = *(a1 + 8);
  v16 = v11;
  v13[2] = v6;
  v13[3] = v8;
  v13[4] = v1 + v4;
  v13[5] = v9 + 16;
  v13[6] = &v14;
  v13[7] = v10;
  return sub_266469DF8(sub_2663F57F4, v13);
}

void sub_2663F57F4()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v6 = v0[6];
  v5 = v0[7];
  v7 = *(v6 + 16);
  v8[0] = *v6;
  v8[1] = v7;
  v9 = *(v6 + 32);
  sub_2663F03E0(v1, v2, v3, v4, v8, v5);
}

id sub_2663F5844(uint64_t a1, void *a2, char a3)
{
  v6 = sub_2664DFE38();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v6, qword_280F914F0);
  swift_beginAccess();
  (*(v7 + 16))(v9, v10, v6);
  v11 = sub_2664DFE18();
  v12 = sub_2664E06D8();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 67109120;
    *(v13 + 4) = a3 & 1;
    _os_log_impl(&dword_26629C000, v11, v12, "LocalAlbumPlaybackhandler#albumQuery, targetsLocalDevice: %{BOOL}d", v13, 8u);
    MEMORY[0x266784AD0](v13, -1, -1);
  }

  (*(v7 + 8))(v9, v6);
  return sub_266376F50(a1, a2, 1, a3 & 1, 0);
}

uint64_t sub_2663F5A34(void *a1, void *a2, void *a3, void *a4)
{
  v8 = swift_allocObject();
  v9 = __swift_mutable_project_boxed_opaque_existential_1(a1, a1[3]);
  MEMORY[0x28223BE20](v9);
  v11 = (&v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v12 + 16))(v11);
  v13 = __swift_mutable_project_boxed_opaque_existential_1(a3, a3[3]);
  MEMORY[0x28223BE20](v13);
  v15 = (&v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v16 + 16))(v15);
  v17 = __swift_mutable_project_boxed_opaque_existential_1(a4, a4[3]);
  MEMORY[0x28223BE20](v17);
  v19 = (&v23 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v20 + 16))(v19);
  v21 = sub_2663F5CD8(*v11, a2, v15, v19, v8);
  __swift_destroy_boxed_opaque_existential_1Tm(a4);
  __swift_destroy_boxed_opaque_existential_1Tm(a3);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v21;
}

uint64_t sub_2663F5CD8(uint64_t a1, void *a2, _OWORD *a3, _OWORD *a4, uint64_t a5)
{
  v63 = a2;
  v10 = type metadata accessor for MediaPlaybackProvider();
  v82[3] = v10;
  v82[4] = &off_2877F3740;
  v82[0] = a1;
  v81[3] = &type metadata for PlaybackStarter;
  v81[4] = &off_2877EE098;
  v11 = swift_allocObject();
  v81[0] = v11;
  v12 = a3[3];
  v11[3] = a3[2];
  v11[4] = v12;
  v11[5] = a3[4];
  v13 = a3[1];
  v11[1] = *a3;
  v11[2] = v13;
  v80[3] = &type metadata for PlaybackQueueLocationProvider;
  v80[4] = &off_2877E8100;
  v14 = swift_allocObject();
  v80[0] = v14;
  v15 = a4[3];
  v14[3] = a4[2];
  v14[4] = v15;
  v14[5] = a4[4];
  v16 = a4[1];
  v14[1] = *a4;
  v14[2] = v16;
  sub_2662A5550(v82, v79);
  sub_2662A5550(a2, v78);
  sub_2662A5550(v81, v77);
  sub_2662A5550(v80, v76);
  v17 = __swift_mutable_project_boxed_opaque_existential_1(v79, v79[3]);
  MEMORY[0x28223BE20](v17);
  v19 = (&v62 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v20 + 16))(v19);
  v21 = __swift_mutable_project_boxed_opaque_existential_1(v77, v77[3]);
  MEMORY[0x28223BE20](v21);
  v23 = (&v62 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v24 + 16))(v23);
  v25 = __swift_mutable_project_boxed_opaque_existential_1(v76, v76[3]);
  MEMORY[0x28223BE20](v25);
  v27 = (&v62 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v28 + 16))(v27);
  v29 = *v19;
  v75[3] = v10;
  v75[4] = &off_2877F3740;
  v75[0] = v29;
  v74[3] = &type metadata for PlaybackStarter;
  v74[4] = &off_2877EE098;
  v30 = swift_allocObject();
  v74[0] = v30;
  v31 = v23[3];
  v30[3] = v23[2];
  v30[4] = v31;
  v30[5] = v23[4];
  v32 = v23[1];
  v30[1] = *v23;
  v30[2] = v32;
  v72 = &type metadata for PlaybackQueueLocationProvider;
  v73 = &off_2877E8100;
  v33 = swift_allocObject();
  *&v71 = v33;
  v34 = v27[3];
  v33[3] = v27[2];
  v33[4] = v34;
  v33[5] = v27[4];
  v35 = v27[1];
  v33[1] = *v27;
  v33[2] = v35;
  sub_2662A5550(v75, a5 + 16);
  sub_2662A5550(v78, a5 + 56);
  sub_2662A5550(v74, a5 + 104);
  sub_2662A5550(v75, v70);
  sub_2662A5550(v78, v69);
  sub_2662A5550(v74, v68);
  v36 = __swift_mutable_project_boxed_opaque_existential_1(v70, v70[3]);
  MEMORY[0x28223BE20](v36);
  v38 = (&v62 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v39 + 16))(v38);
  v40 = __swift_mutable_project_boxed_opaque_existential_1(v68, v68[3]);
  MEMORY[0x28223BE20](v40);
  v42 = (&v62 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v43 + 16))(v42);
  v44 = *v38;
  v67[3] = v10;
  v67[4] = &off_2877F3740;
  v66 = &off_2877EE098;
  v67[0] = v44;
  v65 = &type metadata for PlaybackStarter;
  v45 = swift_allocObject();
  v64[0] = v45;
  v46 = v42[3];
  v45[3] = v42[2];
  v45[4] = v46;
  v45[5] = v42[4];
  v47 = v42[1];
  v45[1] = *v42;
  v45[2] = v47;
  type metadata accessor for LocalPlaybackHelper();
  v48 = swift_allocObject();
  v49 = __swift_mutable_project_boxed_opaque_existential_1(v67, v10);
  MEMORY[0x28223BE20](v49);
  v51 = (&v62 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v52 + 16))(v51);
  v53 = __swift_mutable_project_boxed_opaque_existential_1(v64, v65);
  MEMORY[0x28223BE20](v53);
  v55 = (&v62 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v56 + 16))(v55);
  v57 = *v51;
  v48[5] = v10;
  v48[6] = &off_2877F3740;
  v48[2] = v57;
  v48[15] = &type metadata for PlaybackStarter;
  v48[16] = &off_2877EE098;
  v58 = swift_allocObject();
  v48[12] = v58;
  v59 = v55[3];
  v58[3] = v55[2];
  v58[4] = v59;
  v58[5] = v55[4];
  v60 = v55[1];
  v58[1] = *v55;
  v58[2] = v60;
  sub_2662A8618(v69, (v48 + 7));
  __swift_destroy_boxed_opaque_existential_1Tm(v64);
  __swift_destroy_boxed_opaque_existential_1Tm(v67);
  __swift_destroy_boxed_opaque_existential_1Tm(v63);
  __swift_destroy_boxed_opaque_existential_1Tm(v78);
  __swift_destroy_boxed_opaque_existential_1Tm(v80);
  __swift_destroy_boxed_opaque_existential_1Tm(v81);
  __swift_destroy_boxed_opaque_existential_1Tm(v82);
  __swift_destroy_boxed_opaque_existential_1Tm(v74);
  __swift_destroy_boxed_opaque_existential_1Tm(v75);
  __swift_destroy_boxed_opaque_existential_1Tm(v68);
  __swift_destroy_boxed_opaque_existential_1Tm(v70);
  *(a5 + 96) = v48;
  sub_2662A8618(&v71, a5 + 144);
  __swift_destroy_boxed_opaque_existential_1Tm(v76);
  __swift_destroy_boxed_opaque_existential_1Tm(v77);
  __swift_destroy_boxed_opaque_existential_1Tm(v79);
  return a5;
}

id sub_2663F6458(uint64_t a1, unint64_t a2, void *a3, uint64_t a4)
{
  v96 = a3;
  v7 = sub_2664DFE38();
  v8 = *(v7 - 8);
  v94 = v7;
  v95 = v8;
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v89 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v89 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v89 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v89 - v18;
  v20 = sub_2664DEC48();
  v93 = *(v20 - 8);
  v21 = MEMORY[0x28223BE20](v20);
  v23 = (&v89 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v21);
  v25 = &v89 - v24;
  if (*(a4 + 16) && (v26 = sub_2662A3E98(a1, a2), (v27 & 1) != 0))
  {
    v91 = a1;
    v92 = v20;
    v28 = v25;
    v29 = v93;
    v30 = *(v93 + 16);
    v30(v28, *(a4 + 56) + *(v93 + 72) * v26, v92);
    v30(v23, v28, v92);
    v31 = v29;
    v32 = v92;
    v33 = (*(v31 + 88))(v23, v92);
    if (v33 == *MEMORY[0x277D60170])
    {
      (*(v31 + 96))(v23, v32);
      v34 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
      (*(v31 + 8))(v28, v32);
      return v34;
    }

    v90 = v28;
    if (v33 == *MEMORY[0x277D60188])
    {
      (*(v31 + 96))(v23, v32);
      v44 = v32;
      v45 = v31;
      v46 = sub_2664876B0(*v23);
      v48 = v47;

      if ((v48 & 1) == 0)
      {
        v34 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
        (*(v45 + 8))(v90, v44);
        return v34;
      }

      if (qword_280F914E8 != -1)
      {
        swift_once();
      }

      v49 = v94;
      v50 = __swift_project_value_buffer(v94, qword_280F914F0);
      swift_beginAccess();
      v51 = v95;
      (*(v95 + 16))(v19, v50, v49);

      v52 = sub_2664DFE18();
      v53 = sub_2664E06D8();

      v54 = os_log_type_enabled(v52, v53);
      v55 = v92;
      v56 = v90;
      if (v54)
      {
        v57 = swift_slowAlloc();
        v58 = swift_slowAlloc();
        v97 = v58;
        *v57 = 136446210;
        *(v57 + 4) = sub_2662A320C(v91, a2, &v97);
        _os_log_impl(&dword_26629C000, v52, v53, "SelfEmitter: Couldn't convert signal value for %{public}s; empty dependent values list", v57, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v58);
        MEMORY[0x266784AD0](v58, -1, -1);
        MEMORY[0x266784AD0](v57, -1, -1);
      }

      (*(v51 + 8))(v19, v49);
      (*(v93 + 8))(v56, v55);
    }

    else
    {
      v59 = v91;
      if (v33 == *MEMORY[0x277D60180])
      {
        (*(v31 + 96))(v23, v32);
        v34 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
        (*(v31 + 8))(v90, v32);
        return v34;
      }

      if (v33 != *MEMORY[0x277D60178])
      {
        if (qword_280F914E8 != -1)
        {
          swift_once();
        }

        v78 = v94;
        v79 = __swift_project_value_buffer(v94, qword_280F914F0);
        swift_beginAccess();
        v80 = v95;
        (*(v95 + 16))(v14, v79, v78);

        v81 = sub_2664DFE18();
        v82 = sub_2664E06D8();

        if (os_log_type_enabled(v81, v82))
        {
          v83 = swift_slowAlloc();
          v89 = v81;
          v84 = v83;
          v85 = swift_slowAlloc();
          v97 = v85;
          *v84 = 136446210;
          *(v84 + 4) = sub_2662A320C(v59, a2, &v97);
          v86 = v82;
          v87 = v89;
          _os_log_impl(&dword_26629C000, v89, v86, "SelfEmitter: Couldn't convert signal value for %{public}s; unknown SignalValue type", v84, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v85);
          MEMORY[0x266784AD0](v85, -1, -1);
          MEMORY[0x266784AD0](v84, -1, -1);
        }

        else
        {
        }

        (*(v80 + 8))(v14, v78);
        v88 = *(v93 + 8);
        v88(v90, v32);
        v34 = v96;
        v88(v23, v32);
        return v34;
      }

      (*(v31 + 96))(v23, v32);
      sub_26648772C(*v23);
      v60 = v32;
      v61 = v31;
      v63 = v62;
      v65 = v64;

      if ((v65 & 1) == 0)
      {
        v34 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
        (*(v61 + 8))(v90, v60);
        return v34;
      }

      if (qword_280F914E8 != -1)
      {
        swift_once();
      }

      v66 = v94;
      v67 = __swift_project_value_buffer(v94, qword_280F914F0);
      swift_beginAccess();
      v68 = v95;
      (*(v95 + 16))(v17, v67, v66);

      v69 = sub_2664DFE18();
      v70 = sub_2664E06D8();

      v71 = os_log_type_enabled(v69, v70);
      v72 = v92;
      if (v71)
      {
        v73 = swift_slowAlloc();
        v74 = swift_slowAlloc();
        v75 = v59;
        v76 = v68;
        v77 = v74;
        v97 = v74;
        *v73 = 136446210;
        *(v73 + 4) = sub_2662A320C(v75, a2, &v97);
        _os_log_impl(&dword_26629C000, v69, v70, "SelfEmitter: Couldn't convert signal value for %{public}s; empty dependent values list", v73, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v77);
        MEMORY[0x266784AD0](v77, -1, -1);
        MEMORY[0x266784AD0](v73, -1, -1);

        (*(v76 + 8))(v17, v66);
      }

      else
      {

        (*(v68 + 8))(v17, v66);
      }

      (*(v93 + 8))(v90, v72);
    }
  }

  else
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v36 = v94;
    v37 = __swift_project_value_buffer(v94, qword_280F914F0);
    swift_beginAccess();
    v38 = v95;
    (*(v95 + 16))(v11, v37, v36);

    v39 = sub_2664DFE18();
    v40 = sub_2664E06D8();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v97 = v42;
      *v41 = 136446210;
      *(v41 + 4) = sub_2662A320C(a1, a2, &v97);
      _os_log_impl(&dword_26629C000, v39, v40, "SelfEmitter: Couldn't find signal value for %{public}s", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v42);
      MEMORY[0x266784AD0](v42, -1, -1);
      MEMORY[0x266784AD0](v41, -1, -1);
    }

    (*(v38 + 8))(v11, v36);
  }

  v43 = v96;

  return v43;
}

id sub_2663F6EFC(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v123 = a5;
  v119 = a3;
  v120 = a4;
  v9 = sub_2664DFE38();
  v10 = *(v9 - 8);
  v124 = v9;
  v125 = v10;
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v114 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v118 = &v114 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v114 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v114 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v117 = &v114 - v23;
  MEMORY[0x28223BE20](v22);
  v25 = &v114 - v24;
  v122 = sub_2664DEC48();
  v26 = *(v122 - 8);
  v27 = MEMORY[0x28223BE20](v122);
  v29 = &v114 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v31 = &v114 - v30;
  v32 = *(a6 + 16);
  v121 = a1;
  if (!v32 || (v33 = sub_2662A3E98(a1, a2), (v34 & 1) == 0))
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v53 = v124;
    v54 = __swift_project_value_buffer(v124, qword_280F914F0);
    swift_beginAccess();
    v55 = v125;
    (*(v125 + 16))(v13, v54, v53);

    v56 = sub_2664DFE18();
    v57 = sub_2664E06D8();

    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v126 = v59;
      *v58 = 136446210;
      *(v58 + 4) = sub_2662A320C(v121, a2, &v126);
      _os_log_impl(&dword_26629C000, v56, v57, "SelfEmitter: Couldn't find signal value for %{public}s", v58, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v59);
      MEMORY[0x266784AD0](v59, -1, -1);
      MEMORY[0x266784AD0](v58, -1, -1);
    }

    (*(v55 + 8))(v13, v53);
    goto LABEL_16;
  }

  v115 = a2;
  v35 = *(a6 + 56) + *(v26 + 72) * v33;
  v36 = v26;
  v37 = *(v26 + 16);
  v38 = v122;
  v37(v31, v35, v122);
  v116 = v31;
  v37(v29, v31, v38);
  v39 = v36;
  v40 = (*(v36 + 88))(v29, v38);
  if (v40 == *MEMORY[0x277D60170])
  {
    (*(v36 + 96))(v29, v38);
    v41 = *v29;
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v42 = v124;
    v43 = __swift_project_value_buffer(v124, qword_280F914F0);
    swift_beginAccess();
    v44 = v125;
    (*(v125 + 16))(v21, v43, v42);
    v45 = v115;

    v46 = sub_2664DFE18();
    v47 = sub_2664E06D8();

    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v126 = v49;
      *v48 = 136446210;
      *(v48 + 4) = sub_2662A320C(v121, v45, &v126);
      _os_log_impl(&dword_26629C000, v46, v47, "SelfEmitter: Expected dependent value, but have an independent signal result for signal %{public}s.  Returning that", v48, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v49);
      MEMORY[0x266784AD0](v49, -1, -1);
      MEMORY[0x266784AD0](v48, -1, -1);
    }

    (*(v44 + 8))(v21, v42);
    v50 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
LABEL_9:
    v51 = v50;
    (*(v39 + 8))(v116, v122);
    return v51;
  }

  if (v40 != *MEMORY[0x277D60188])
  {
    v68 = v116;
    v69 = v121;
    if (v40 == *MEMORY[0x277D60180])
    {
      (*(v39 + 96))(v29, v38);
      v70 = *v29;
      if (qword_280F914E8 != -1)
      {
        swift_once();
      }

      v71 = v124;
      v72 = __swift_project_value_buffer(v124, qword_280F914F0);
      swift_beginAccess();
      v73 = v125;
      (*(v125 + 16))(v18, v72, v71);
      v74 = v115;

      v75 = sub_2664DFE18();
      v76 = sub_2664E06D8();

      if (os_log_type_enabled(v75, v76))
      {
        v77 = swift_slowAlloc();
        v78 = swift_slowAlloc();
        v126 = v78;
        *v77 = 136446210;
        *(v77 + 4) = sub_2662A320C(v121, v74, &v126);
        _os_log_impl(&dword_26629C000, v75, v76, "SelfEmitter: Expected dependent value, but have an independent signal result for signal %{public}s.  Returning that", v77, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v78);
        MEMORY[0x266784AD0](v78, -1, -1);
        MEMORY[0x266784AD0](v77, -1, -1);
      }

      (*(v73 + 8))(v18, v71);
      v50 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
      goto LABEL_9;
    }

    v88 = v120;
    if (v40 != *MEMORY[0x277D60178])
    {
      if (qword_280F914E8 != -1)
      {
        swift_once();
      }

      v93 = v124;
      v94 = __swift_project_value_buffer(v124, qword_280F914F0);
      swift_beginAccess();
      v95 = v125;
      v96 = v118;
      (*(v125 + 16))(v118, v94, v93);
      v97 = v115;

      v98 = sub_2664DFE18();
      v99 = sub_2664E06D8();

      if (os_log_type_enabled(v98, v99))
      {
        v100 = swift_slowAlloc();
        v101 = swift_slowAlloc();
        v126 = v101;
        *v100 = 136446210;
        *(v100 + 4) = sub_2662A320C(v121, v97, &v126);
        _os_log_impl(&dword_26629C000, v98, v99, "SelfEmitter: Couldn't convert signal value for %{public}s; unknown SignalValue type", v100, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v101);
        MEMORY[0x266784AD0](v101, -1, -1);
        MEMORY[0x266784AD0](v100, -1, -1);

        (*(v95 + 8))(v118, v93);
      }

      else
      {

        (*(v95 + 8))(v96, v93);
      }

      v112 = *(v39 + 8);
      v113 = v122;
      v112(v68, v122);
      v51 = v123;
      v112(v29, v113);
      return v51;
    }

    (*(v39 + 96))(v29, v38);
    v89 = *v29;
    if (*(*v29 + 16))
    {
      v90 = sub_2662A3E98(v119, v88);
      if (v91)
      {
        v92 = *(*(*&v89 + 56) + 8 * v90);

        v51 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
        (*(v39 + 8))(v68, v38);
        return v51;
      }
    }

    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v102 = v124;
    v103 = __swift_project_value_buffer(v124, qword_280F914F0);
    swift_beginAccess();
    v104 = v125;
    v105 = v117;
    (*(v125 + 16))(v117, v103, v102);

    v106 = v115;

    v107 = sub_2664DFE18();
    v108 = sub_2664E06D8();

    if (os_log_type_enabled(v107, v108))
    {
      v109 = v88;
      v110 = swift_slowAlloc();
      v111 = swift_slowAlloc();
      v126 = v111;
      *v110 = 136446466;
      *(v110 + 4) = sub_2662A320C(v119, v109, &v126);
      *(v110 + 12) = 2080;
      *(v110 + 14) = sub_2662A320C(v69, v106, &v126);
      _os_log_impl(&dword_26629C000, v107, v108, "SelfEmitter: Didn't find dependent value for bundle %{public}s in signal %s", v110, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266784AD0](v111, -1, -1);
      MEMORY[0x266784AD0](v110, -1, -1);

      (*(v104 + 8))(v117, v102);
    }

    else
    {

      (*(v104 + 8))(v105, v102);
    }

    goto LABEL_49;
  }

  (*(v36 + 96))(v29, v38);
  v61 = *v29;
  v62 = v116;
  v63 = v120;
  if (*(*v29 + 16))
  {
    v64 = sub_2662A3E98(v119, v120);
    if (v65)
    {
      v66 = v62;
      v67 = *(*(*&v61 + 56) + 8 * v64);

      v51 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
      (*(v39 + 8))(v66, v38);
      return v51;
    }
  }

  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v79 = v124;
  v80 = __swift_project_value_buffer(v124, qword_280F914F0);
  swift_beginAccess();
  v81 = v125;
  (*(v125 + 16))(v25, v80, v79);

  v82 = v115;

  v83 = sub_2664DFE18();
  v84 = sub_2664E06D8();

  if (os_log_type_enabled(v83, v84))
  {
    v85 = v63;
    v86 = swift_slowAlloc();
    v87 = swift_slowAlloc();
    v126 = v87;
    *v86 = 136446466;
    *(v86 + 4) = sub_2662A320C(v119, v85, &v126);
    *(v86 + 12) = 2080;
    *(v86 + 14) = sub_2662A320C(v121, v82, &v126);
    _os_log_impl(&dword_26629C000, v83, v84, "SelfEmitter: Didn't find dependent value for bundle %{public}s in signal %s", v86, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266784AD0](v87, -1, -1);
    MEMORY[0x266784AD0](v86, -1, -1);

    (*(v81 + 8))(v25, v79);
LABEL_49:
    (*(v39 + 8))(v116, v122);
    goto LABEL_16;
  }

  (*(v81 + 8))(v25, v79);
  (*(v39 + 8))(v62, v122);
LABEL_16:
  v60 = v123;

  return v60;
}

void sub_2663F7D44(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, int a5, uint64_t a6)
{
  v12 = sub_2664DFE38();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  v17 = sub_2663F6EFC(a1, a2, a3, a4, v16, a6);

  [v17 doubleValue];
  v19 = v18;

  if (v19 != -1.0)
  {
    v27 = v19 * 1000.0;
    if (COERCE__INT64(fabs(v19 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v27 > -2147483650.0)
    {
      if (v27 < 2147483650.0)
      {
        return;
      }

LABEL_13:
      __break(1u);
      return;
    }

    __break(1u);
    goto LABEL_13;
  }

  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v20 = __swift_project_value_buffer(v12, qword_280F914F0);
  swift_beginAccess();
  (*(v13 + 16))(v15, v20, v12);

  v21 = sub_2664DFE18();
  v22 = sub_2664E06D8();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v28 = a1;
    v24 = v23;
    v25 = swift_slowAlloc();
    v29 = a5;
    v26 = v25;
    v30 = v25;
    *v24 = 136446466;
    *(v24 + 4) = sub_2662A320C(a3, a4, &v30);
    *(v24 + 12) = 2082;
    *(v24 + 14) = sub_2662A320C(v28, a2, &v30);
    _os_log_impl(&dword_26629C000, v21, v22, "SelfEmitter#doubleScaledToInt: Failed to find the doubleValue for bundle %{public}s in signal %{public}s; returning default", v24, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266784AD0](v26, -1, -1);
    MEMORY[0x266784AD0](v24, -1, -1);
  }

  (*(v13 + 8))(v15, v12);
}

uint64_t sub_2663F8080(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v35 = a3;
  v36 = a4;
  v8 = sub_2664DFE38();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2664DEC48();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v35 - v17;
  if (!*(a5 + 16) || (v19 = sub_2662A3E98(a1, a2), (v20 & 1) == 0))
  {
    v28 = a1;
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v29 = __swift_project_value_buffer(v8, qword_280F914F0);
    swift_beginAccess();
    (*(v9 + 16))(v11, v29, v8);

    v30 = sub_2664DFE18();
    v31 = sub_2664E06D8();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v37 = v33;
      *v32 = 136446210;
      *(v32 + 4) = sub_2662A320C(v28, a2, &v37);
      _os_log_impl(&dword_26629C000, v30, v31, "SelfEmitter: Couldn't find signal value for %{public}s", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v33);
      MEMORY[0x266784AD0](v33, -1, -1);
      MEMORY[0x266784AD0](v32, -1, -1);
    }

    (*(v9 + 8))(v11, v8);
    return 0;
  }

  v21 = *(a5 + 56) + *(v13 + 72) * v19;
  v22 = *(v13 + 16);
  v22(v18, v21, v12);
  v22(v16, v18, v12);
  if ((*(v13 + 88))(v16, v12) != *MEMORY[0x277D60188])
  {
    v34 = *(v13 + 8);
    v34(v18, v12);
    v34(v16, v12);
    return 0;
  }

  (*(v13 + 96))(v16, v12);
  v23 = *v16;
  if (!*(*v16 + 16) || (v24 = sub_2662A3E98(v35, v36), (v25 & 1) == 0))
  {

    (*(v13 + 8))(v18, v12);
    return 0;
  }

  v26 = *(*(v23 + 56) + 8 * v24);
  (*(v13 + 8))(v18, v12);

  if (v26 == 2)
  {
    return 2;
  }

  else
  {
    return v26 == 1;
  }
}

uint64_t sub_2663F8490(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  swift_unknownObjectRetain();
  v3(a2);

  return swift_unknownObjectRelease();
}

id sub_2663F84E4(uint64_t a1)
{
  sub_2663F9624();
  v2 = [swift_getObjCClassFromMetadata() identityKind];
  v3 = objc_allocWithZone(MEMORY[0x277CD5DA0]);
  v4 = swift_allocObject();
  *(v4 + 16) = sub_2663F9670;
  *(v4 + 24) = a1;
  v8[4] = sub_26631D1BC;
  v8[5] = v4;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_26631C950;
  v8[3] = &block_descriptor_33;
  v5 = _Block_copy(v8);

  v6 = [v3 initWithModelKind:v2 block:v5];

  _Block_release(v5);

  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if ((v2 & 1) == 0)
  {
    return v6;
  }

  __break(1u);
  return result;
}

uint64_t sub_2663F8650(void *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = sub_2663F9678;
  *(v4 + 24) = a2;
  v7[4] = sub_2663F968C;
  v7[5] = v4;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 1107296256;
  v7[2] = sub_2663F8490;
  v7[3] = &block_descriptor_21_2;
  v5 = _Block_copy(v7);

  [a1 setUniversalStoreIdentifiersWithBlock_];
  _Block_release(v5);
  LOBYTE(a1) = swift_isEscapingClosureAtFileLocation();

  if (a1)
  {
    __break(1u);
  }

  return result;
}

unsigned __int8 *sub_2663F8790(void *a1, uint64_t a2)
{
  v4 = sub_2664DFE38();
  v5 = *(v4 - 8);
  result = MEMORY[0x28223BE20](v4);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a2 + 56);
  v9 = *(a2 + 64);
  v11 = HIBYTE(v9) & 0xF;
  v12 = v10 & 0xFFFFFFFFFFFFLL;
  if ((v9 & 0x2000000000000000) != 0)
  {
    v13 = HIBYTE(v9) & 0xF;
  }

  else
  {
    v13 = v10 & 0xFFFFFFFFFFFFLL;
  }

  if (!v13)
  {
    goto LABEL_63;
  }

  if ((v9 & 0x1000000000000000) != 0)
  {

    v37 = sub_26640687C();
    v39 = v38;

    if (v39)
    {
      goto LABEL_63;
    }

    v15 = v37;
    return [a1 setSubscriptionAdamID_];
  }

  if ((v9 & 0x2000000000000000) != 0)
  {
    v40 = v10;
    v41 = v9 & 0xFFFFFFFFFFFFFFLL;
    if (v10 == 43)
    {
      if (v11)
      {
        if (--v11)
        {
          v15 = 0;
          v25 = &v40 + 1;
          while (1)
          {
            v26 = *v25 - 48;
            if (v26 > 9)
            {
              break;
            }

            v27 = 10 * v15;
            if ((v15 * 10) >> 64 != (10 * v15) >> 63)
            {
              break;
            }

            v15 = v27 + v26;
            if (__OFADD__(v27, v26))
            {
              break;
            }

            ++v25;
            if (!--v11)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }

LABEL_75:
      __break(1u);
      return result;
    }

    if (v10 != 45)
    {
      if (v11)
      {
        v15 = 0;
        v30 = &v40;
        while (1)
        {
          v31 = *v30 - 48;
          if (v31 > 9)
          {
            break;
          }

          v32 = 10 * v15;
          if ((v15 * 10) >> 64 != (10 * v15) >> 63)
          {
            break;
          }

          v15 = v32 + v31;
          if (__OFADD__(v32, v31))
          {
            break;
          }

          ++v30;
          if (!--v11)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    if (v11)
    {
      if (--v11)
      {
        v15 = 0;
        v19 = &v40 + 1;
        while (1)
        {
          v20 = *v19 - 48;
          if (v20 > 9)
          {
            break;
          }

          v21 = 10 * v15;
          if ((v15 * 10) >> 64 != (10 * v15) >> 63)
          {
            break;
          }

          v15 = v21 - v20;
          if (__OFSUB__(v21, v20))
          {
            break;
          }

          ++v19;
          if (!--v11)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    goto LABEL_73;
  }

  if ((v10 & 0x1000000000000000) != 0)
  {
    result = ((v9 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    result = sub_2664E0B78();
  }

  v14 = *result;
  if (v14 == 43)
  {
    if (v12 >= 1)
    {
      v11 = v12 - 1;
      if (v12 != 1)
      {
        v15 = 0;
        if (result)
        {
          v22 = result + 1;
          while (1)
          {
            v23 = *v22 - 48;
            if (v23 > 9)
            {
              goto LABEL_61;
            }

            v24 = 10 * v15;
            if ((v15 * 10) >> 64 != (10 * v15) >> 63)
            {
              goto LABEL_61;
            }

            v15 = v24 + v23;
            if (__OFADD__(v24, v23))
            {
              goto LABEL_61;
            }

            ++v22;
            if (!--v11)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_53;
      }

      goto LABEL_61;
    }

    goto LABEL_74;
  }

  if (v14 == 45)
  {
    if (v12 >= 1)
    {
      v11 = v12 - 1;
      if (v12 != 1)
      {
        v15 = 0;
        if (result)
        {
          v16 = result + 1;
          while (1)
          {
            v17 = *v16 - 48;
            if (v17 > 9)
            {
              goto LABEL_61;
            }

            v18 = 10 * v15;
            if ((v15 * 10) >> 64 != (10 * v15) >> 63)
            {
              goto LABEL_61;
            }

            v15 = v18 - v17;
            if (__OFSUB__(v18, v17))
            {
              goto LABEL_61;
            }

            ++v16;
            if (!--v11)
            {
              goto LABEL_62;
            }
          }
        }

LABEL_53:
        LOBYTE(v11) = 0;
        goto LABEL_62;
      }

      goto LABEL_61;
    }

    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  if (v12)
  {
    v15 = 0;
    if (result)
    {
      while (1)
      {
        v28 = *result - 48;
        if (v28 > 9)
        {
          goto LABEL_61;
        }

        v29 = 10 * v15;
        if ((v15 * 10) >> 64 != (10 * v15) >> 63)
        {
          goto LABEL_61;
        }

        v15 = v29 + v28;
        if (__OFADD__(v29, v28))
        {
          goto LABEL_61;
        }

        ++result;
        if (!--v12)
        {
          goto LABEL_53;
        }
      }
    }

    goto LABEL_53;
  }

LABEL_61:
  v15 = 0;
  LOBYTE(v11) = 1;
LABEL_62:
  v42 = v11;
  if ((v11 & 1) == 0)
  {
    return [a1 setSubscriptionAdamID_];
  }

LABEL_63:
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v33 = __swift_project_value_buffer(v4, qword_280F914F0);
  swift_beginAccess();
  (*(v5 + 16))(v8, v33, v4);
  v34 = sub_2664DFE18();
  v35 = sub_2664E06D8();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    *v36 = 0;
    _os_log_impl(&dword_26629C000, v34, v35, "Adam ID is not a parsable Int64", v36, 2u);
    MEMORY[0x266784AD0](v36, -1, -1);
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_2663F8C1C(void *a1, void *a2, void *a3, void *a4)
{
  v8 = swift_allocObject();
  v9 = __swift_mutable_project_boxed_opaque_existential_1(a1, a1[3]);
  MEMORY[0x28223BE20](v9);
  v11 = (&v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v12 + 16))(v11);
  v13 = __swift_mutable_project_boxed_opaque_existential_1(a3, a3[3]);
  MEMORY[0x28223BE20](v13);
  v15 = (&v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v16 + 16))(v15);
  v17 = __swift_mutable_project_boxed_opaque_existential_1(a4, a4[3]);
  MEMORY[0x28223BE20](v17);
  v19 = (&v23 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v20 + 16))(v19);
  v21 = sub_2663F8EB4(*v11, a2, v15, v19, v8);
  __swift_destroy_boxed_opaque_existential_1Tm(a4);
  __swift_destroy_boxed_opaque_existential_1Tm(a3);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v21;
}

uint64_t sub_2663F8EB4(uint64_t a1, void *a2, _OWORD *a3, _OWORD *a4, uint64_t a5)
{
  v63 = a2;
  v10 = type metadata accessor for MediaPlaybackProvider();
  v82[3] = v10;
  v82[4] = &off_2877F3740;
  v82[0] = a1;
  v81[3] = &type metadata for PlaybackStarter;
  v81[4] = &off_2877EE098;
  v11 = swift_allocObject();
  v81[0] = v11;
  v12 = a3[3];
  v11[3] = a3[2];
  v11[4] = v12;
  v11[5] = a3[4];
  v13 = a3[1];
  v11[1] = *a3;
  v11[2] = v13;
  v80[3] = &type metadata for PlaybackQueueLocationProvider;
  v80[4] = &off_2877E8100;
  v14 = swift_allocObject();
  v80[0] = v14;
  v15 = a4[3];
  v14[3] = a4[2];
  v14[4] = v15;
  v14[5] = a4[4];
  v16 = a4[1];
  v14[1] = *a4;
  v14[2] = v16;
  sub_2662A5550(v82, v79);
  sub_2662A5550(a2, v78);
  sub_2662A5550(v81, v77);
  sub_2662A5550(v80, v76);
  v17 = __swift_mutable_project_boxed_opaque_existential_1(v79, v79[3]);
  MEMORY[0x28223BE20](v17);
  v19 = (&v62 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v20 + 16))(v19);
  v21 = __swift_mutable_project_boxed_opaque_existential_1(v77, v77[3]);
  MEMORY[0x28223BE20](v21);
  v23 = (&v62 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v24 + 16))(v23);
  v25 = __swift_mutable_project_boxed_opaque_existential_1(v76, v76[3]);
  MEMORY[0x28223BE20](v25);
  v27 = (&v62 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v28 + 16))(v27);
  v29 = *v19;
  v75[3] = v10;
  v75[4] = &off_2877F3740;
  v75[0] = v29;
  v74[3] = &type metadata for PlaybackStarter;
  v74[4] = &off_2877EE098;
  v30 = swift_allocObject();
  v74[0] = v30;
  v31 = v23[3];
  v30[3] = v23[2];
  v30[4] = v31;
  v30[5] = v23[4];
  v32 = v23[1];
  v30[1] = *v23;
  v30[2] = v32;
  v72 = &type metadata for PlaybackQueueLocationProvider;
  v73 = &off_2877E8100;
  v33 = swift_allocObject();
  *&v71 = v33;
  v34 = v27[3];
  v33[3] = v27[2];
  v33[4] = v34;
  v33[5] = v27[4];
  v35 = v27[1];
  v33[1] = *v27;
  v33[2] = v35;
  sub_2662A5550(v75, a5 + 16);
  sub_2662A5550(v78, a5 + 56);
  sub_2662A5550(v74, a5 + 104);
  sub_2662A5550(v75, v70);
  sub_2662A5550(v78, v69);
  sub_2662A5550(v74, v68);
  v36 = __swift_mutable_project_boxed_opaque_existential_1(v70, v70[3]);
  MEMORY[0x28223BE20](v36);
  v38 = (&v62 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v39 + 16))(v38);
  v40 = __swift_mutable_project_boxed_opaque_existential_1(v68, v68[3]);
  MEMORY[0x28223BE20](v40);
  v42 = (&v62 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v43 + 16))(v42);
  v44 = *v38;
  v67[3] = v10;
  v67[4] = &off_2877F3740;
  v66 = &off_2877EE098;
  v67[0] = v44;
  v65 = &type metadata for PlaybackStarter;
  v45 = swift_allocObject();
  v64[0] = v45;
  v46 = v42[3];
  v45[3] = v42[2];
  v45[4] = v46;
  v45[5] = v42[4];
  v47 = v42[1];
  v45[1] = *v42;
  v45[2] = v47;
  type metadata accessor for LocalPlaybackHelper();
  v48 = swift_allocObject();
  v49 = __swift_mutable_project_boxed_opaque_existential_1(v67, v10);
  MEMORY[0x28223BE20](v49);
  v51 = (&v62 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v52 + 16))(v51);
  v53 = __swift_mutable_project_boxed_opaque_existential_1(v64, v65);
  MEMORY[0x28223BE20](v53);
  v55 = (&v62 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v56 + 16))(v55);
  v57 = *v51;
  v48[5] = v10;
  v48[6] = &off_2877F3740;
  v48[2] = v57;
  v48[15] = &type metadata for PlaybackStarter;
  v48[16] = &off_2877EE098;
  v58 = swift_allocObject();
  v48[12] = v58;
  v59 = v55[3];
  v58[3] = v55[2];
  v58[4] = v59;
  v58[5] = v55[4];
  v60 = v55[1];
  v58[1] = *v55;
  v58[2] = v60;
  sub_2662A8618(v69, (v48 + 7));
  __swift_destroy_boxed_opaque_existential_1Tm(v64);
  __swift_destroy_boxed_opaque_existential_1Tm(v67);
  __swift_destroy_boxed_opaque_existential_1Tm(v63);
  __swift_destroy_boxed_opaque_existential_1Tm(v78);
  __swift_destroy_boxed_opaque_existential_1Tm(v80);
  __swift_destroy_boxed_opaque_existential_1Tm(v81);
  __swift_destroy_boxed_opaque_existential_1Tm(v82);
  __swift_destroy_boxed_opaque_existential_1Tm(v74);
  __swift_destroy_boxed_opaque_existential_1Tm(v75);
  __swift_destroy_boxed_opaque_existential_1Tm(v68);
  __swift_destroy_boxed_opaque_existential_1Tm(v70);
  *(a5 + 96) = v48;
  sub_2662A8618(&v71, a5 + 144);
  __swift_destroy_boxed_opaque_existential_1Tm(v76);
  __swift_destroy_boxed_opaque_existential_1Tm(v77);
  __swift_destroy_boxed_opaque_existential_1Tm(v79);
  return a5;
}

unint64_t sub_2663F9624()
{
  result = qword_280073650;
  if (!qword_280073650)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280073650);
  }

  return result;
}