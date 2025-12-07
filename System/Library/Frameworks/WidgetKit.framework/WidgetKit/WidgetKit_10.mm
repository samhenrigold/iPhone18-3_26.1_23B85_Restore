uint64_t sub_192115F4C()
{
  sub_192228AD0();
  sub_1922279B0();

  return sub_192228B30();
}

uint64_t sub_192115FE4(uint64_t a1)
{
  sub_1922279B0();
}

uint64_t sub_192116068()
{
  sub_192228AD0();
  sub_1922279B0();

  return sub_192228B30();
}

unint64_t sub_1921160FC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_192117028(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_19211612C(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000011;
  v3 = "widgetDescriptors";
  v4 = 0xD000000000000013;
  if (*v1 == 1)
  {
    v4 = 0xD000000000000012;
  }

  else
  {
    v3 = "controlDescriptors";
  }

  if (*v1)
  {
    v2 = v4;
    v5 = v3;
  }

  else
  {
    v5 = "com.apple.widget.default";
  }

  *a1 = v2;
  a1[1] = v5 | 0x8000000000000000;
}

unint64_t sub_192116184()
{
  v1 = 0xD000000000000013;
  if (*v0 == 1)
  {
    v1 = 0xD000000000000012;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000011;
  }
}

unint64_t sub_1921161D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_192117028(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_192116200(uint64_t a1)
{
  v2 = sub_192117B34();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19211623C(uint64_t a1)
{
  v2 = sub_192117B34();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_192116290(void *a1)
{
  v3 = v2;
  v4 = v1;
  v46 = *MEMORY[0x1E69E9840];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF03E8, &qword_192233B90);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v37 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_192117B34();
  sub_192228B90();
  v10 = objc_opt_self();
  v42 = v4;
  sub_19202A7A8(0, &qword_1ED74C500, 0x1E6994388);
  v11 = sub_192227B60();
  v44 = 0;
  v41 = v10;
  v12 = [v10 archivedDataWithRootObject:v11 requiringSecureCoding:1 error:&v44];

  v13 = v44;
  if (v12)
  {
    v14 = sub_192225080();
    v16 = v15;
  }

  else
  {
    v17 = v13;
    v18 = sub_192224F90();

    swift_willThrow();
    v14 = 0;
    v3 = 0;
    v16 = 0xF000000000000000;
  }

  v44 = v14;
  v45 = v16;
  v43 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0400, &qword_192233B98);
  sub_192117B88();
  sub_1922288C0();
  if (v3)
  {
    (*(v7 + 8))(v9, v6);
    v19 = v14;
    v20 = v16;
  }

  else
  {
    v39 = v14;
    v40 = v7;
    sub_19202A7A8(0, &qword_1ED749A58, 0x1E6994248);
    v21 = sub_192227B60();
    v44 = 0;
    v22 = [v41 archivedDataWithRootObject:v21 requiringSecureCoding:1 error:&v44];

    v23 = v44;
    if (v22)
    {
      v24 = sub_192225080();
      v26 = v25;
    }

    else
    {
      v27 = v23;
      v28 = sub_192224F90();

      swift_willThrow();
      v24 = 0;
      v26 = 0xF000000000000000;
    }

    v44 = v24;
    v45 = v26;
    v43 = 1;
    sub_1922288C0();
    v37 = v26;
    v38 = v24;
    sub_19202A7A8(0, &qword_1ED749D10, 0x1E6994358);
    v29 = sub_192227B60();
    v44 = 0;
    v30 = [v41 archivedDataWithRootObject:v29 requiringSecureCoding:1 error:&v44];

    v31 = v44;
    if (v30)
    {
      v32 = sub_192225080();
      v34 = v33;
    }

    else
    {
      v35 = v31;
      v36 = sub_192224F90();

      swift_willThrow();
      v32 = 0;
      v34 = 0xF000000000000000;
    }

    v44 = v32;
    v45 = v34;
    v43 = 2;
    sub_1922288C0();
    (*(v40 + 8))(v9, v6);
    sub_192046ED4(v38, v37);
    sub_192046ED4(v39, v16);
    v19 = v32;
    v20 = v34;
  }

  sub_192046ED4(v19, v20);
}

char *sub_1921167F0()
{
  v1 = v0;
  v48.receiver = v0;
  v48.super_class = type metadata accessor for DescriptorFetchResult();
  v2 = objc_msgSendSuper2(&v48, sel_description);
  v3 = sub_192227960();
  v5 = v4;

  v49 = v3;
  v50 = v5;
  v6 = *&v1[OBJC_IVAR____TtC9WidgetKit21DescriptorFetchResult_widgetDescriptors];
  if (v6 >> 62)
  {
    sub_192228340();
  }

  v7 = sub_192228910();
  MEMORY[0x193B0A990](v7);

  MEMORY[0x193B0A990](0x7374656764697720, 0xE800000000000000);
  MEMORY[0x193B0A990](32, 0xE100000000000000);

  v45 = v1;
  if (v6 >> 62)
  {
    if (sub_192228340() > 0)
    {
      v8 = sub_192228340();
      if (!v8)
      {
        v11 = MEMORY[0x1E69E7CC0];
LABEL_17:
        v21 = MEMORY[0x193B0AB30](v11, MEMORY[0x1E69E6158]);
        v23 = v22;

        MEMORY[0x193B0A990](v21, v23);

        MEMORY[0x193B0A990](8250, 0xE200000000000000);

        goto LABEL_18;
      }

LABEL_8:
      v46 = MEMORY[0x1E69E7CC0];
      result = sub_192071C64(0, v8 & ~(v8 >> 63), 0);
      if (v8 < 0)
      {
        __break(1u);
        goto LABEL_46;
      }

      v10 = 0;
      v11 = v46;
      do
      {
        if ((v6 & 0xC000000000000001) != 0)
        {
          v12 = MEMORY[0x193B0B410](v10, v6);
        }

        else
        {
          v12 = *(v6 + 8 * v10 + 32);
        }

        v13 = v12;
        v14 = [v13 kind];
        v15 = sub_192227960();
        v17 = v16;

        v19 = *(v46 + 16);
        v18 = *(v46 + 24);
        if (v19 >= v18 >> 1)
        {
          sub_192071C64((v18 > 1), v19 + 1, 1);
        }

        ++v10;
        *(v46 + 16) = v19 + 1;
        v20 = v46 + 16 * v19;
        *(v20 + 32) = v15;
        *(v20 + 40) = v17;
      }

      while (v8 != v10);
      v1 = v45;
      goto LABEL_17;
    }
  }

  else
  {
    v8 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
      goto LABEL_8;
    }
  }

LABEL_18:
  v24 = *&v1[OBJC_IVAR____TtC9WidgetKit21DescriptorFetchResult_controlDescriptors];
  if (v24 >> 62)
  {
    sub_192228340();
  }

  v25 = sub_192228910();
  MEMORY[0x193B0A990](v25);

  MEMORY[0x193B0A990](0x6C6F72746E6F6320, 0xE900000000000073);
  MEMORY[0x193B0A990](8251, 0xE200000000000000);

  if (v24 >> 62)
  {
    if (sub_192228340() <= 0)
    {
      goto LABEL_35;
    }

    v26 = sub_192228340();
    if (!v26)
    {
      v28 = MEMORY[0x1E69E7CC0];
LABEL_34:
      v38 = MEMORY[0x193B0AB30](v28, MEMORY[0x1E69E6158]);
      v40 = v39;

      MEMORY[0x193B0A990](v38, v40);

      MEMORY[0x193B0A990](8250, 0xE200000000000000);

LABEL_35:
      v41 = *&v1[OBJC_IVAR____TtC9WidgetKit21DescriptorFetchResult_activityDescriptors];
      if (v41 >> 62)
      {
        sub_192228340();
      }

      v42 = sub_192228910();
      MEMORY[0x193B0A990](v42);

      MEMORY[0x193B0A990](0x7469766974636120, 0xEB00000000736569);
      MEMORY[0x193B0A990](8251, 0xE200000000000000);

      if (v41 >> 62)
      {
        if (sub_192228340() < 1)
        {
          return v49;
        }
      }

      else if (*((v41 & 0xFFFFFFFFFFFFFF8) + 0x10) < 1)
      {
        return v49;
      }

      v43 = sub_19202A7A8(0, &qword_1ED749D10, 0x1E6994358);
      v44 = MEMORY[0x193B0AB30](v41, v43);
      MEMORY[0x193B0A990](v44);

      MEMORY[0x193B0A990](8250, 0xE200000000000000);

      return v49;
    }
  }

  else
  {
    v26 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v26)
    {
      goto LABEL_35;
    }
  }

  v47 = MEMORY[0x1E69E7CC0];
  result = sub_192071C64(0, v26 & ~(v26 >> 63), 0);
  if ((v26 & 0x8000000000000000) == 0)
  {
    v27 = 0;
    v28 = v47;
    do
    {
      if ((v24 & 0xC000000000000001) != 0)
      {
        v29 = MEMORY[0x193B0B410](v27, v24);
      }

      else
      {
        v29 = *(v24 + 8 * v27 + 32);
      }

      v30 = v29;
      v31 = [v30 kind];
      v32 = sub_192227960();
      v34 = v33;

      v36 = *(v47 + 16);
      v35 = *(v47 + 24);
      if (v36 >= v35 >> 1)
      {
        sub_192071C64((v35 > 1), v36 + 1, 1);
      }

      ++v27;
      *(v47 + 16) = v36 + 1;
      v37 = v47 + 16 * v36;
      *(v37 + 32) = v32;
      *(v37 + 40) = v34;
    }

    while (v26 != v27);
    v1 = v45;
    goto LABEL_34;
  }

LABEL_46:
  __break(1u);
  return result;
}

uint64_t sub_192116DFC(uint64_t a1)
{
  sub_192117C0C(a1, v6);
  if (!v7)
  {
    sub_192030F04(v6);
    goto LABEL_6;
  }

  type metadata accessor for DescriptorFetchResult();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_6:
    v3 = 0;
    return v3 & 1;
  }

  if (v5 == v1)
  {

    v3 = 1;
  }

  else
  {
    v3 = sub_192117C7C(v1, v5, v2);
  }

  return v3 & 1;
}

id DescriptorFetchResult.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DescriptorFetchResult.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DescriptorFetchResult();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *sub_192116FD8@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_192117074(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

unint64_t sub_192117028(uint64_t a1, uint64_t a2)
{
  v2 = sub_192228700();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

void *sub_192117074(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0448, &qword_192233D98);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v63 - v5;
  v7 = a1[3];
  v76 = a1;
  v8 = __swift_project_boxed_opaque_existential_1(a1, v7);
  v9 = sub_192117B34();
  sub_192228B70();
  if (!v1)
  {
    v75 = v4;
    v80 = 0;
    sub_192047340();
    sub_1922287C0();
    v73 = v3;
    v74 = v6;
    v10 = v78;
    v11 = v79;
    v12 = sub_19202A7A8(0, &qword_1ED749280, 0x1E696ACD0);
    v13 = sub_19202A7A8(0, &qword_1ED74C500, 0x1E6994388);
    v72 = v10;
    v14 = sub_192228020();
    if (v14)
    {
      v70 = v12;
      v21 = v14;
      v80 = 1;
      v22 = v73;
      sub_1922287C0();
      v68 = v21;
      v30 = v78;
      v29 = v79;
      v31 = sub_19202A7A8(0, &qword_1ED749A58, 0x1E6994248);
      v69 = v30;
      v32 = sub_192228020();
      v71 = v11;
      if (v32)
      {
        v67 = v32;
        LOBYTE(v78) = 2;
        if ((sub_192228800() & 1) == 0)
        {
          v43 = MEMORY[0x1E69E7CC0];
LABEL_15:
          v44 = type metadata accessor for DescriptorFetchResult();
          v45 = objc_allocWithZone(v44);
          v47 = sub_192036D98(v68, v46);

          *&v45[OBJC_IVAR____TtC9WidgetKit21DescriptorFetchResult_widgetDescriptors] = v47;
          *&v45[OBJC_IVAR____TtC9WidgetKit21DescriptorFetchResult_activityDescriptors] = v43;
          *&v45[OBJC_IVAR____TtC9WidgetKit21DescriptorFetchResult_controlDescriptors] = v67;
          v77.receiver = v45;
          v77.super_class = v44;
          v8 = objc_msgSendSuper2(&v77, sel_init);
          sub_192039140(v69, v29);
          v48 = sub_192039140(v72, v71);
          (*(v75 + 8))(v74, v22, v48);
          __swift_destroy_boxed_opaque_existential_1(v76);
          return v8;
        }

        v80 = 2;
        sub_1922287C0();
        v49 = v78;
        v50 = v79;
        v66 = sub_19202A7A8(0, &qword_1ED749D10, 0x1E6994358);
        v51 = sub_192228020();
        v43 = v51;
        if (v51)
        {
          sub_192039140(v49, v50);
          goto LABEL_15;
        }

        v64 = v50;
        v65 = v49;
        v70 = v29;

        v57 = sub_1922284A0();
        v8 = swift_allocError();
        v59 = v58;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0450, &unk_19222F5A0);
        v60 = v66;
        *v59 = v66;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADF21D0, &qword_192238230);
        v61 = swift_allocObject();
        *(v61 + 16) = xmmword_19222B480;
        *(v61 + 56) = &type metadata for DescriptorFetchResult.CodingKeys;
        *(v61 + 64) = v9;
        *(v61 + 32) = 2;
        sub_192228480();
        v62 = *(*(v57 - 8) + 104);
        LODWORD(v68) = *MEMORY[0x1E69E6B08];
        v62(v59);
        swift_willThrow();
        v52 = sub_1922284A0();
        swift_allocError();
        v54 = v53;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0450, &unk_19222F5A0);
        *v54 = v60;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADF21D0, &qword_192238230);
        v55 = swift_allocObject();
        *(v55 + 16) = xmmword_19222B480;
        *(v55 + 56) = &type metadata for DescriptorFetchResult.CodingKeys;
        *(v55 + 64) = v9;
        *(v55 + 32) = 2;
        v56 = v8;
        sub_192228480();
        (*(*(v52 - 8) + 104))(v54, v68, v52);
        swift_willThrow();
        sub_192039140(v65, v64);
      }

      else
      {
        v70 = v29;

        v38 = sub_1922284A0();
        v8 = swift_allocError();
        v40 = v39;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0450, &unk_19222F5A0);
        *v40 = v31;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADF21D0, &qword_192238230);
        v41 = swift_allocObject();
        *(v41 + 16) = xmmword_19222B480;
        *(v41 + 56) = &type metadata for DescriptorFetchResult.CodingKeys;
        *(v41 + 64) = v9;
        *(v41 + 32) = 1;
        sub_192228480();
        v42 = *(*(v38 - 8) + 104);
        LODWORD(v68) = *MEMORY[0x1E69E6B08];
        v42(v40);
        swift_willThrow();
        v33 = sub_1922284A0();
        swift_allocError();
        v35 = v34;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0450, &unk_19222F5A0);
        *v35 = v31;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADF21D0, &qword_192238230);
        v36 = swift_allocObject();
        *(v36 + 16) = xmmword_19222B480;
        *(v36 + 56) = &type metadata for DescriptorFetchResult.CodingKeys;
        *(v36 + 64) = v9;
        *(v36 + 32) = 1;
        v37 = v8;
        sub_192228480();
        (*(*(v33 - 8) + 104))(v35, v68, v33);
        swift_willThrow();
      }

      sub_192039140(v69, v70);
      sub_192039140(v72, v71);
      v19 = v8;
    }

    else
    {
      v71 = v11;
      v23 = sub_1922284A0();
      v24 = swift_allocError();
      v26 = v25;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0450, &unk_19222F5A0);
      *v26 = v13;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADF21D0, &qword_192238230);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_19222B480;
      *(v27 + 56) = &type metadata for DescriptorFetchResult.CodingKeys;
      *(v27 + 64) = v9;
      *(v27 + 32) = 0;
      sub_192228480();
      v28 = *(*(v23 - 8) + 104);
      LODWORD(v70) = *MEMORY[0x1E69E6B08];
      v28(v26);
      swift_willThrow();
      v15 = sub_1922284A0();
      swift_allocError();
      v8 = v16;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0450, &unk_19222F5A0);
      *v8 = v13;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADF21D0, &qword_192238230);
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_19222B480;
      *(v17 + 56) = &type metadata for DescriptorFetchResult.CodingKeys;
      *(v17 + 64) = v9;
      *(v17 + 32) = 0;
      v18 = v24;
      sub_192228480();
      (*(*(v15 - 8) + 104))(v8, v70, v15);
      swift_willThrow();
      sub_192039140(v72, v71);
      v19 = v24;
    }

    (*(v75 + 8))(v74, v73);
  }

  __swift_destroy_boxed_opaque_existential_1(v76);
  return v8;
}

unint64_t sub_192117B34()
{
  result = qword_1EADF03F0;
  if (!qword_1EADF03F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF03F0);
  }

  return result;
}

unint64_t sub_192117B88()
{
  result = qword_1EADF0408;
  if (!qword_1EADF0408)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF0400, &qword_192233B98);
    sub_1920593E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF0408);
  }

  return result;
}

uint64_t sub_192117C0C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADEF330, &unk_19222CD40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_192117C7C(uint64_t a1, uint64_t a2, __n128 a3)
{
  if ((sub_1920E126C(*(a1 + OBJC_IVAR____TtC9WidgetKit21DescriptorFetchResult_widgetDescriptors), *(a2 + OBJC_IVAR____TtC9WidgetKit21DescriptorFetchResult_widgetDescriptors), a3) & 1) == 0 || (sub_1920E1280(*(a1 + OBJC_IVAR____TtC9WidgetKit21DescriptorFetchResult_controlDescriptors), *(a2 + OBJC_IVAR____TtC9WidgetKit21DescriptorFetchResult_controlDescriptors), v5) & 1) == 0)
  {
    return 0;
  }

  v7 = *(a1 + OBJC_IVAR____TtC9WidgetKit21DescriptorFetchResult_activityDescriptors);
  v8 = *(a2 + OBJC_IVAR____TtC9WidgetKit21DescriptorFetchResult_activityDescriptors);

  return sub_1920E14FC(v7, v8, v6);
}

unint64_t sub_192117E20()
{
  result = qword_1EADF0430;
  if (!qword_1EADF0430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF0430);
  }

  return result;
}

unint64_t sub_192117E78()
{
  result = qword_1EADF0438;
  if (!qword_1EADF0438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF0438);
  }

  return result;
}

unint64_t sub_192117ED0()
{
  result = qword_1EADF0440;
  if (!qword_1EADF0440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF0440);
  }

  return result;
}

id sub_192117F24()
{
  type metadata accessor for InfoPlistReader();
  v0 = swift_allocObject();
  result = sub_192117F60();
  qword_1EAE00888 = v0;
  return result;
}

id sub_192117F60()
{
  v1 = v0;
  v2 = sub_192225A40();
  v132 = *(v2 - 8);
  v133 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = v122 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = sub_1922259F0();
  v5 = *(v131 - 8);
  MEMORY[0x1EEE9AC00](v131);
  v130 = v122 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1922261D0();
  v128 = *(v7 - 8);
  v129 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v135 = v122 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v136 = v122 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v134 = v122 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v15 = v122 - v14;
  v16 = objc_opt_self();
  v17 = [v16 mainBundle];
  v18 = [v17 infoDictionary];

  if (!v18)
  {
    goto LABEL_11;
  }

  v19 = sub_192227840();

  if (!*(v19 + 16) || (v20 = sub_1920440AC(0xD00000000000001BLL, 0x800000019224AD70), (v21 & 1) == 0))
  {

    v18 = 0;
LABEL_11:
    v23 = 0;
    goto LABEL_12;
  }

  sub_19202A98C(*(v19 + 56) + 32 * v20, v139);

  v22 = swift_dynamicCast();
  if (v22)
  {
    v18 = v137;
  }

  else
  {
    v18 = 0;
  }

  if (v22)
  {
    v23 = v138;
  }

  else
  {
    v23 = 0;
  }

LABEL_12:
  v24 = [v16 mainBundle];
  v25 = [v24 infoDictionary];

  if (!v25)
  {
    goto LABEL_30;
  }

  v26 = sub_192227840();

  if (!*(v26 + 16) || (v27 = sub_1920440AC(0xD000000000000011, 0x800000019224AD50), (v28 & 1) == 0))
  {

LABEL_30:
    v31 = 0;
    v30 = 0;
    if (v23)
    {
      goto LABEL_21;
    }

LABEL_31:
    *(v1 + 16) = 0;
    *(v1 + 24) = 0;
    return v1;
  }

  sub_19202A98C(*(v26 + 56) + 32 * v27, v139);

  v29 = swift_dynamicCast();
  v30 = v138;
  if (v29)
  {
    v31 = v137;
  }

  else
  {
    v31 = 0;
  }

  if (!v29)
  {
    v30 = 0;
  }

  if (!(v23 | v30))
  {
    goto LABEL_31;
  }

LABEL_21:
  v122[1] = v18;
  v123 = v30;
  v122[0] = v31;
  v127 = v1;
  _s9WidgetKit0A11EnvironmentV14makeEnumerator4withAC0c6ValuesE0V7SwiftUI0cG0V_tFfA__0();
  v32 = *MEMORY[0x1E697DBB8];
  v33 = *(v5 + 104);
  v35 = v130;
  v34 = v131;
  v33(v130, v32, v131);
  sub_192225E60();
  v125 = *MEMORY[0x1E697DE20];
  v36 = *(v132 + 104);
  v132 = v23;
  v37 = v133;
  v36(v4);
  v126 = v15;
  sub_192225E90();
  _s9WidgetKit0A11EnvironmentV14makeEnumerator4withAC0c6ValuesE0V7SwiftUI0cG0V_tFfA__0();
  v33(v35, v32, v34);
  sub_192225E60();
  v124 = *MEMORY[0x1E697DE28];
  v36(v4);
  sub_192225E90();
  _s9WidgetKit0A11EnvironmentV14makeEnumerator4withAC0c6ValuesE0V7SwiftUI0cG0V_tFfA__0();
  v38 = *MEMORY[0x1E697DBA8];
  v33(v35, v38, v34);
  sub_192225E60();
  (v36)(v4, v125, v37);
  sub_192225E90();
  _s9WidgetKit0A11EnvironmentV14makeEnumerator4withAC0c6ValuesE0V7SwiftUI0cG0V_tFfA__0();
  v33(v35, v38, v34);
  sub_192225E60();
  v39 = v132;
  (v36)(v4, v124, v37);
  sub_192225E90();
  if (!v39)
  {
    *(v127 + 16) = 0;
    v41 = v126;
    v53 = v134;
    goto LABEL_33;
  }

  v40 = [objc_allocWithZone(MEMORY[0x1E69942E8]) init];
  sub_192227300();
  v41 = v126;
  sub_192227270();
  v43 = v42;
  sub_1922272A0();
  v45 = v44;
  sub_1922272C0();
  v47 = v46;
  sub_1922272B0();
  v49 = v48;
  v50 = objc_opt_self();
  result = [v50 colorWithRed:v45 green:v47 blue:v49 alpha:v43];
  if (!result)
  {
    __break(1u);
    goto LABEL_44;
  }

  v52 = result;
  [v40 addColor:result forColorScheme:1 displayGamut:1];

  v53 = v134;
  sub_192227270();
  v55 = v54;
  sub_1922272A0();
  v57 = v56;
  sub_1922272C0();
  v59 = v58;
  sub_1922272B0();
  result = [v50 colorWithRed:v57 green:v59 blue:v60 alpha:v55];
  if (!result)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v61 = result;
  [v40 addColor:result forColorScheme:1 displayGamut:0];

  sub_192227270();
  v63 = v62;
  sub_1922272A0();
  v65 = v64;
  sub_1922272C0();
  v67 = v66;
  sub_1922272B0();
  result = [v50 colorWithRed:v65 green:v67 blue:v68 alpha:v63];
  if (!result)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v69 = result;
  [v40 addColor:result forColorScheme:2 displayGamut:1];

  sub_192227270();
  v71 = v70;
  sub_1922272A0();
  v73 = v72;
  sub_1922272C0();
  v75 = v74;
  sub_1922272B0();
  result = [v50 colorWithRed:v73 green:v75 blue:v76 alpha:v71];
  if (!result)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v77 = result;
  [v40 addColor:result forColorScheme:2 displayGamut:0];

  [v40 copy];
  sub_1922282B0();

  swift_unknownObjectRelease();
  sub_192118CFC();
  v78 = swift_dynamicCast();
  v79 = v137;
  if (!v78)
  {
    v79 = 0;
  }

  *(v127 + 16) = v79;
LABEL_33:
  if (!v123)
  {
    v120 = v129;
    v121 = *(v128 + 8);
    v121(v135, v129);
    v121(v136, v120);
    v121(v53, v120);
    v121(v41, v120);
    v1 = v127;
    *(v127 + 24) = 0;
    return v1;
  }

  v80 = [objc_allocWithZone(MEMORY[0x1E69942E8]) init];
  sub_192227300();
  sub_192227270();
  v82 = v81;
  sub_1922272A0();
  v84 = v83;
  sub_1922272C0();
  v86 = v85;
  sub_1922272B0();
  v88 = v87;
  v89 = objc_opt_self();
  result = [v89 colorWithRed:v84 green:v86 blue:v88 alpha:v82];
  if (!result)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v90 = result;
  [v80 addColor:result forColorScheme:1 displayGamut:1];

  sub_192227270();
  v92 = v91;
  sub_1922272A0();
  v94 = v93;
  sub_1922272C0();
  v96 = v95;
  sub_1922272B0();
  result = [v89 colorWithRed:v94 green:v96 blue:v97 alpha:v92];
  if (!result)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v98 = result;
  [v80 addColor:result forColorScheme:1 displayGamut:0];

  sub_192227270();
  v100 = v99;
  sub_1922272A0();
  v102 = v101;
  sub_1922272C0();
  v104 = v103;
  sub_1922272B0();
  result = [v89 colorWithRed:v102 green:v104 blue:v105 alpha:v100];
  v106 = v135;
  if (!result)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v107 = result;
  [v80 addColor:result forColorScheme:2 displayGamut:1];

  sub_192227270();
  v109 = v108;
  sub_1922272A0();
  v111 = v110;
  sub_1922272C0();
  v113 = v112;
  sub_1922272B0();
  result = [v89 colorWithRed:v111 green:v113 blue:v114 alpha:v109];
  if (result)
  {
    v115 = result;
    [v80 addColor:result forColorScheme:2 displayGamut:0];

    [v80 copy];
    sub_1922282B0();

    swift_unknownObjectRelease();
    v116 = v129;
    v117 = *(v128 + 8);
    v117(v106, v129);
    v117(v136, v116);
    v117(v53, v116);
    v117(v41, v116);
    sub_192118CFC();
    v118 = swift_dynamicCast();
    v119 = v137;
    if (!v118)
    {
      v119 = 0;
    }

    v1 = v127;
    *(v127 + 24) = v119;
    return v1;
  }

LABEL_50:
  __break(1u);
  return result;
}

uint64_t sub_192118C98()
{

  return swift_deallocClassInstance();
}

unint64_t sub_192118CFC()
{
  result = qword_1EADF0458;
  if (!qword_1EADF0458)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EADF0458);
  }

  return result;
}

uint64_t ElevatedMemoryRequestAssertion.reason.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t ElevatedMemoryRequestAssertion.__allocating_init(widget:reason:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_1EADEE928 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v6 = qword_1EADF0460;
  type metadata accessor for ElevatedMemoryRequestAssertion();
  v7 = swift_allocObject();
  *(v7 + 48) = 0;
  type metadata accessor for UnfairLock();
  v8 = swift_allocObject();

  v9 = swift_slowAlloc();
  *v9 = 0;
  *(v8 + 16) = v9;
  *(v7 + 56) = v8;
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  *(v7 + 32) = a3;
  *(v7 + 40) = v6;
  return v7;
}

uint64_t sub_192118F20()
{
  sub_192228400();
  MEMORY[0x193B0A990](0xD000000000000028, 0x800000019224AD90);
  MEMORY[0x193B0A990](*(v0 + 24), *(v0 + 32));
  MEMORY[0x193B0A990](0x746567646977202CLL, 0xE90000000000003DLL);
  v1 = [*(v0 + 16) description];
  v2 = sub_192227960();
  v4 = v3;

  MEMORY[0x193B0A990](v2, v4);

  MEMORY[0x193B0A990](62, 0xE100000000000000);
  return 0;
}

double sub_192119010()
{
  v1 = *(v0 + 56);
  v2 = *(v1 + 16);

  os_unfair_lock_lock(v2);
  if ((*(v0 + 49) & 1) == 0 && *(v0 + 48) != 1)
  {
    *(v0 + 48) = 1;
    v3 = *(v0 + 40);
    if (*(v3 + 40) == 1)
    {
      v4 = *(v3 + 32);
      v5 = *(v4 + 16);

      os_unfair_lock_lock(v5);
      sub_192119964(v0, v3);
      os_unfair_lock_unlock(*(v4 + 16));
    }
  }

  os_unfair_lock_unlock(*(v1 + 16));

  return result;
}

double sub_192119104()
{
  v1 = *(v0 + 56);
  v2 = *(v1 + 16);

  os_unfair_lock_lock(v2);
  if (*(v0 + 48) == 1)
  {
    *(v0 + 48) = 256;
    v3 = *(v0 + 40);
    if (*(v3 + 40) == 1)
    {
      v4 = *(v3 + 32);
      v5 = *(v4 + 16);

      os_unfair_lock_lock(v5);
      sub_192119B88(v3, v0);
      os_unfair_lock_unlock(*(v4 + 16));
    }
  }

  os_unfair_lock_unlock(*(v1 + 16));

  return result;
}

uint64_t ElevatedMemoryRequestAssertion.deinit()
{

  return v0;
}

uint64_t ElevatedMemoryRequestAssertion.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_192119284()
{
  v1 = *(*v0 + 24);

  return v1;
}

uint64_t sub_1921192DC()
{
  swift_weakDestroy();

  return swift_deallocClassInstance();
}

uint64_t sub_192119314()
{
  type metadata accessor for MemoryRequestsController();
  v0 = swift_allocObject();
  *(v0 + 16) = MEMORY[0x1E69E7CC0];
  *(v0 + 24) = 0;
  type metadata accessor for UnfairLock();
  v1 = swift_allocObject();
  v2 = swift_slowAlloc();
  *v2 = 0;
  *(v1 + 16) = v2;
  *(v0 + 32) = v1;
  result = swift_beginAccess();
  *(v0 + 40) = byte_1EADED1A0;
  qword_1EADF0460 = v0;
  return result;
}

uint64_t static MemoryRequestsController.shared.getter()
{
  if (qword_1EADEE928 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

double static MemoryRequestsController.shared.setter(uint64_t a1)
{
  if (qword_1EADEE928 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_1EADF0460 = a1;

  return result;
}

uint64_t (*static MemoryRequestsController.shared.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_1EADEE928 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_192119558@<X0>(void *a1@<X8>)
{
  if (qword_1EADEE928 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = qword_1EADF0460;
}

double sub_1921195D8(uint64_t *a1)
{
  v1 = *a1;
  v2 = qword_1EADEE928;

  if (v2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_1EADF0460 = v1;

  return result;
}

uint64_t MemoryRequestsController.deinit()
{
  v1 = *(v0 + 32);
  v2 = *(v1 + 16);

  os_unfair_lock_lock(v2);
  [*(v0 + 24) invalidate];
  os_unfair_lock_unlock(*(v1 + 16));

  return v0;
}

uint64_t MemoryRequestsController.__deallocating_deinit()
{
  v1 = *(v0 + 32);
  v2 = *(v1 + 16);

  os_unfair_lock_lock(v2);
  [*(v0 + 24) invalidate];
  os_unfair_lock_unlock(*(v1 + 16));

  return swift_deallocClassInstance();
}

void *sub_192119768(__n128 a1)
{
  if (*(v1 + 40) == 1)
  {
    v2 = *(v1 + 32);
    v3 = *(v2 + 16);

    os_unfair_lock_lock(v3);
    swift_beginAccess();
    v4 = *(v1 + 16);
    v15 = MEMORY[0x1E69E7CC0];
    if (v4 >> 62)
    {
LABEL_22:
      v5 = sub_192228340();
    }

    else
    {
      v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v6 = 0;
    v7 = MEMORY[0x1E69E7CC0];
    while (v5 != v6)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        MEMORY[0x193B0B410](v6, v4);
        v8 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          goto LABEL_20;
        }
      }

      else
      {
        if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_21;
        }

        v8 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
LABEL_20:
          __break(1u);
LABEL_21:
          __break(1u);
          goto LABEL_22;
        }
      }

      Strong = swift_weakLoadStrong();

      ++v6;
      if (Strong)
      {
        MEMORY[0x193B0AB00](v10);
        if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_192227BB0();
        }

        sub_192227C00();
        v7 = v15;
        v6 = v8;
      }
    }

    os_unfair_lock_unlock(*(v2 + 16));

    v14 = sub_1920968C8(v7, v13);

    return v14;
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];

    return sub_1920968C8(v11, a1);
  }
}

double sub_192119964(uint64_t a1, uint64_t a2)
{
  if (qword_1EADEE9A8 != -1)
  {
    swift_once();
  }

  v3 = sub_1922258B0();
  __swift_project_value_buffer(v3, qword_1EAE008A8);

  v4 = sub_192225890();
  v5 = sub_192227FB0();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13[0] = v7;
    *v6 = 136446210;
    v8 = sub_192118F20();
    v10 = sub_19202B8CC(v8, v9, v13);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_192028000, v4, v5, "Adding elevated memory assertion: %{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x193B0C7F0](v7, -1, -1);
    MEMORY[0x193B0C7F0](v6, -1, -1);
  }

  type metadata accessor for WeakAssertion();
  swift_allocObject();
  swift_weakInit();
  swift_weakAssign();
  swift_beginAccess();

  MEMORY[0x193B0AB00](v11);
  if (*((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_192227BB0();
  }

  sub_192227C00();
  swift_endAccess();
  sub_19211A024();

  return result;
}

void sub_192119B88(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_beginAccess();
  v6 = *(a1 + 16);
  if (v6 >> 62)
  {
LABEL_21:
    v7 = sub_192228340();
    if (!v7)
    {
      return;
    }
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return;
    }
  }

  v19[7] = v3;
  v3 = v6 & 0xFFFFFFFFFFFFFF8;

  for (i = 0; ; ++i)
  {
    if ((v6 & 0xC000000000000001) != 0)
    {
      MEMORY[0x193B0B410](i, v6);
    }

    else
    {
      if (i >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_20;
      }
    }

    Strong = swift_weakLoadStrong();

    if (Strong)
    {

      if (Strong == a2)
      {
        break;
      }
    }

    v10 = i + 1;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    if (v10 == v7)
    {

      return;
    }
  }

  if (qword_1EADEE9A8 != -1)
  {
    swift_once();
  }

  v11 = sub_1922258B0();
  __swift_project_value_buffer(v11, qword_1EAE008A8);

  v12 = sub_192225890();
  v13 = sub_192227FB0();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v19[0] = v15;
    *v14 = 136446210;
    v16 = sub_192118F20();
    v18 = sub_19202B8CC(v16, v17, v19);

    *(v14 + 4) = v18;
    _os_log_impl(&dword_192028000, v12, v13, "Removing elevated memory assertion: %{public}s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v15);
    MEMORY[0x193B0C7F0](v15, -1, -1);
    MEMORY[0x193B0C7F0](v14, -1, -1);
  }

  swift_beginAccess();
  sub_192119F94(i);
  swift_endAccess();

  sub_19211A024();
}

uint64_t sub_192119F94(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    result = sub_19205E96C();
    v3 = result;
  }

  v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
    memmove(((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 32), ((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 40), 8 * (v5 - 1 - a1));
    *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) = v6;
    *v1 = v3;
    return v7;
  }

  return result;
}

void sub_19211A024()
{
  v1 = v0;
  os_unfair_lock_assert_owner(*(*(v0 + 32) + 16));
  swift_beginAccess();
  v2 = *(v0 + 16);
  v11 = MEMORY[0x1E69E7CC0];
  if (v2 >> 62)
  {
LABEL_26:
    v3 = sub_192228340();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v3)
  {
    v4 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        MEMORY[0x193B0B410](v4, v2);
        v5 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
LABEL_14:
          __break(1u);
LABEL_15:
          v6 = v11;
          goto LABEL_17;
        }
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_26;
        }

        v5 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          goto LABEL_14;
        }
      }

      if (swift_weakLoadStrong())
      {

        sub_1922284F0();
        sub_192228530();
        sub_192228540();
        sub_192228500();
      }

      else
      {
      }

      ++v4;
      if (v5 == v3)
      {
        goto LABEL_15;
      }
    }
  }

  v6 = MEMORY[0x1E69E7CC0];
LABEL_17:

  *(v1 + 16) = v6;

  v7 = *(v1 + 16);
  if (v7 >> 62)
  {
    v8 = sub_192228340();
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v8 <= 0)
  {
    [*(v1 + 24) invalidate];
    v9 = 0;
  }

  else
  {
    if (*(v1 + 24))
    {
      return;
    }

    v9 = sub_19211A208();
  }

  v10 = *(v1 + 24);
  *(v1 + 24) = v9;
}

id sub_19211A208()
{
  v28[1] = *MEMORY[0x1E69E9840];
  v0 = [objc_opt_self() currentProcess];
  v1 = sub_192227930();
  v2 = sub_192227930();
  v3 = [objc_opt_self() attributeWithDomain:v1 name:v2];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEBD8, &qword_19222CAF0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_19222C680;
  *(v4 + 32) = v3;
  v5 = objc_allocWithZone(MEMORY[0x1E69C7548]);
  v6 = v0;
  v7 = v3;
  v8 = sub_192227930();
  sub_19211A610();
  v9 = sub_192227B60();

  v10 = [v5 initWithExplanation:v8 target:v6 attributes:v9];

  v28[0] = 0;
  if ([v10 acquireWithError_])
  {
    v11 = qword_1EADEE9A8;
    v12 = v28[0];
    if (v11 != -1)
    {
      swift_once();
    }

    v13 = sub_1922258B0();
    __swift_project_value_buffer(v13, qword_1EAE008A8);
    v14 = sub_192225890();
    v15 = sub_192227FB0();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_192028000, v14, v15, "Acquired high memory assertion.", v16, 2u);
      MEMORY[0x193B0C7F0](v16, -1, -1);
    }
  }

  else
  {
    v17 = v28[0];
    v18 = sub_192224F90();

    swift_willThrow();
    if (qword_1EADEE9A8 != -1)
    {
      swift_once();
    }

    v19 = sub_1922258B0();
    __swift_project_value_buffer(v19, qword_1EAE008A8);
    v20 = v18;
    v21 = sub_192225890();
    v22 = sub_192227F90();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *v23 = 138543362;
      v25 = v18;
      v26 = _swift_stdlib_bridgeErrorToNSError();
      *(v23 + 4) = v26;
      *v24 = v26;
      _os_log_impl(&dword_192028000, v21, v22, "Unable to acquire high memory assertion. Error: %{public}@", v23, 0xCu);
      sub_1920FB918(v24);
      MEMORY[0x193B0C7F0](v24, -1, -1);
      MEMORY[0x193B0C7F0](v23, -1, -1);
    }

    else
    {
    }

    return 0;
  }

  return v10;
}

unint64_t sub_19211A610()
{
  result = qword_1ED748560;
  if (!qword_1ED748560)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED748560);
  }

  return result;
}

uint64_t dispatch thunk of WidgetRelevanceProvider.relevances()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 16) + **(a3 + 16));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1920A59A8;

  return v9(a1, a2, a3);
}

uint64_t sub_19211A7B0()
{
  sub_192228AD0();
  sub_1922279B0();

  return sub_192228B30();
}

uint64_t sub_19211A838(uint64_t a1)
{
  sub_1922279B0();
}

uint64_t sub_19211A8AC()
{
  sub_192228AD0();
  sub_1922279B0();

  return sub_192228B30();
}

uint64_t sub_19211A930(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x647261646E617473;
  }

  else
  {
    v3 = 0x6573616572636E69;
  }

  if (v2)
  {
    v4 = 0xE900000000000064;
  }

  else
  {
    v4 = 0xE800000000000000;
  }

  if (*a2)
  {
    v5 = 0x647261646E617473;
  }

  else
  {
    v5 = 0x6573616572636E69;
  }

  if (*a2)
  {
    v6 = 0xE800000000000000;
  }

  else
  {
    v6 = 0xE900000000000064;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 0;
  }

  else
  {
    v8 = sub_1922289A0();
  }

  return v8 & 1;
}

uint64_t sub_19211A9DC(unsigned __int8 *a1, _BYTE *a2)
{
  v2 = *a1;
  if (*a2)
  {
    v3 = 0x647261646E617473;
  }

  else
  {
    v3 = 0x6573616572636E69;
  }

  if (*a2)
  {
    v4 = 0xE800000000000000;
  }

  else
  {
    v4 = 0xE900000000000064;
  }

  if (v2)
  {
    v5 = 0x647261646E617473;
  }

  else
  {
    v5 = 0x6573616572636E69;
  }

  if (v2)
  {
    v6 = 0xE800000000000000;
  }

  else
  {
    v6 = 0xE900000000000064;
  }

  if (v3 == v5 && v4 == v6)
  {

    v9 = 1;
  }

  else
  {
    v8 = sub_1922289A0();

    v9 = v8 ^ 1;
  }

  return v9 & 1;
}

uint64_t sub_19211AA9C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x647261646E617473;
  }

  else
  {
    v3 = 0x6573616572636E69;
  }

  if (v2)
  {
    v4 = 0xE900000000000064;
  }

  else
  {
    v4 = 0xE800000000000000;
  }

  if (*a2)
  {
    v5 = 0x647261646E617473;
  }

  else
  {
    v5 = 0x6573616572636E69;
  }

  if (*a2)
  {
    v6 = 0xE800000000000000;
  }

  else
  {
    v6 = 0xE900000000000064;
  }

  if (v3 == v5 && v4 == v6)
  {

    v9 = 1;
  }

  else
  {
    v8 = sub_1922289A0();

    v9 = v8 ^ 1;
  }

  return v9 & 1;
}

uint64_t sub_19211AB5C(unsigned __int8 *a1, _BYTE *a2)
{
  v2 = *a1;
  if (*a2)
  {
    v3 = 0x647261646E617473;
  }

  else
  {
    v3 = 0x6573616572636E69;
  }

  if (*a2)
  {
    v4 = 0xE800000000000000;
  }

  else
  {
    v4 = 0xE900000000000064;
  }

  if (v2)
  {
    v5 = 0x647261646E617473;
  }

  else
  {
    v5 = 0x6573616572636E69;
  }

  if (v2)
  {
    v6 = 0xE800000000000000;
  }

  else
  {
    v6 = 0xE900000000000064;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 0;
  }

  else
  {
    v8 = sub_1922289A0();
  }

  return v8 & 1;
}

uint64_t sub_19211AC08(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1920A59A8;

  return TimelineProvider.relevances()(a1);
}

uint64_t sub_19211ACDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1920B3B44;

  return TimelineProvider.relevance()(a1, a2, a3);
}

uint64_t TimelineProvider.relevance()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 24) = a1;
  v8 = (*(a3 + 48) + **(a3 + 48));
  v6 = swift_task_alloc();
  *(v3 + 32) = v6;
  *v6 = v3;
  v6[1] = sub_19211AEB0;

  return v8(v3 + 16, a2, a3);
}

uint64_t sub_19211AEB0()
{

  return MEMORY[0x1EEE6DFA0](sub_19211AFAC, 0, 0);
}

uint64_t dispatch thunk of TimelineProvider.relevances()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 48) + **(a3 + 48));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1920A59A8;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of TimelineProvider.relevance()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 56) + **(a3 + 56));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1920B3B44;

  return v9(a1, a2, a3);
}

uint64_t sub_19211B25C(uint64_t a1, uint64_t a2)
{
  result = sub_19202DC80();
  if ((result & 1) == 0)
  {
    return (*(a2 + 48))();
  }

  return result;
}

uint64_t sub_19211B2CC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_192227BE0();
  *(v4 + 16) = 1024;
  bzero((v4 + 32), 0x400uLL);
  if (MEMORY[0x193B08880]([v2 fileDescriptor], 50, v4 + 32) == -1)
  {
    v7 = 1;
    goto LABEL_5;
  }

  sub_192227920();
  v6 = v5;

  if (v6)
  {
    sub_192224FD0();
    v7 = 0;
LABEL_5:

    goto LABEL_7;
  }

  v7 = 1;
LABEL_7:
  v8 = sub_192225020();
  v9 = *(*(v8 - 8) + 56);

  return v9(a1, v7, 1, v8);
}

void sub_19211B3F8()
{
  if (!qword_1EADEDE98)
  {
    v0 = sub_192225A00();
    if (!v1)
    {
      atomic_store(v0, &qword_1EADEDE98);
    }
  }
}

void sub_19211B448(uint64_t a1)
{
  sub_19211B3F8();
  if (v1 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_19211B4D0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 57) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if (v5 > 0xFE)
      {
        return (*(v4 + 48))((a1 + v6 + 57) & ~v6);
      }

      v15 = *(a1 + 56);
      if (v15 > 1)
      {
        return (v15 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void sub_19211B654(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0xFE)
  {
    v8 = 254;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 57) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_46:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if (v7 > 0xFE)
  {
    v19 = *(v6 + 56);
    v20 = &a1[v9 + 57] & ~v9;

    v19(v20);
  }

  else if (a2 > 0xFE)
  {
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    a1[56] = 0;
    *a1 = a2 - 255;
  }

  else
  {
    a1[56] = -a2;
  }
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

uint64_t sub_19211B8F4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 56))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_19211B914(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 56) = v3;
  return result;
}

double sub_19211B95C@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  return result;
}

void *sub_19211B9CC@<X0>(uint64_t a1@<X8>)
{
  sub_192101B78();
  result = sub_1922261E0();
  if (v7)
  {
    __break(1u);
  }

  else
  {
    *a1 = v3;
    *(a1 + 16) = v4;
    *(a1 + 32) = v5;
    *(a1 + 48) = v6;
  }

  return result;
}

uint64_t sub_19211BA38(uint64_t a1)
{
  v2 = sub_192225C70();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v12 - v7;
  sub_19211BBDC(v13);
  v9 = *(a1 + 24);
  sub_1922271D0();
  v12[1] = v9;
  v12[2] = MEMORY[0x1E697E5D8];
  swift_getWitnessTable();
  sub_1921BB14C();
  v10 = *(v3 + 8);
  v10(v5, v2);
  sub_1921BB14C();
  return (v10)(v8, v2);
}

void sub_19211BBDC(uint64_t a1@<X8>)
{
  v3 = sub_1922261D0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v1;
  v7 = v1[1];
  v9 = v1[2];
  v10 = *(v1 + 6);
  if (*(v1 + 56) == 1)
  {
    v11 = *(v1 + 6);
  }

  else
  {
    v12 = *v1;
    v16 = v7;
    v17 = v9;
    v15 = v8;

    sub_192227FA0();
    v13 = sub_192226D00();
    sub_1922257A0();

    _s9WidgetKit0A11EnvironmentV14makeEnumerator4withAC0c6ValuesE0V7SwiftUI0cG0V_tFfA__0();
    swift_getAtKeyPath();
    v14 = sub_19211C744(v12, *(&v15 + 1), v16, *(&v16 + 1), v17, *(&v17 + 1), v10, 0);
    (*(v4 + 8))(v6, v3, v14);
    v8 = v18;
    v7 = v19;
    v9 = v20;
    v11 = v21;
  }

  *a1 = v8;
  *(a1 + 16) = v7;
  *(a1 + 32) = v9;
  *(a1 + 48) = v11;
}

uint64_t sub_19211BD80()
{
  v0 = sub_192226280();
  MEMORY[0x1EEE9AC00](v0 - 8);
  sub_19211BBDC(&v2);
  sub_192226270();
  sub_19211BBDC(v3);
  sub_192226220();
  return sub_192226210();
}

uint64_t sub_19211BE40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF0470, &unk_192234400);
  v4 = *(a1 + 16);
  sub_19211C75C(&qword_1EADEDE78, MEMORY[0x1E697DDC8]);
  v24 = sub_192225B80();
  v28 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v25 = &v24 - v5;
  v6 = sub_192226230();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = sub_192226310();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_192225C70();
  v27 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v26 = &v24 - v15;
  sub_19211BD80();
  sub_192226240();
  v16 = *(a1 + 24);
  v17 = sub_19211C2A4(v10, v4, v16);
  (*(v8 + 8))(v10, v7);
  v31 = v4;
  v32 = v16;
  v33 = v2;
  v18 = v25;
  (v17)(sub_19211C750, v30);

  sub_19211BBDC(v38);
  v36 = sub_19211C75C(&qword_1EADEDE70, MEMORY[0x1E697DDD0]);
  v37 = v16;
  v19 = v24;
  WitnessTable = swift_getWitnessTable();
  sub_1922271D0();
  (*(v28 + 8))(v18, v19);
  v34 = WitnessTable;
  v35 = MEMORY[0x1E697E5D8];
  swift_getWitnessTable();
  v21 = v26;
  sub_1921BB14C();
  v22 = *(v27 + 8);
  v22(v13, v11);
  sub_1921BB14C();
  return (v22)(v21, v11);
}

uint64_t (*sub_19211C2A4(uint64_t a1, uint64_t a2, uint64_t a3))@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_192226310();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  (*(v7 + 16))(&v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v6, v9);
  v10 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  *(v11 + 24) = a3;
  (*(v7 + 32))(v11 + v10, &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  return sub_19211C7AC;
}

uint64_t sub_19211C3DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t x8_0@<X8>)
{
  v11 = sub_192226310();
  v12 = sub_19211C848();
  return sub_19211C45C(a1, a2, v11, a4, v12, a5, x8_0);
}

uint64_t sub_19211C45C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v19[0] = a6;
  v19[1] = a7;
  v13 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v15 = v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_192225A20();
  v17 = MEMORY[0x1EEE9AC00](v16);
  (*(v13 + 16))(v15, v7, a3, v17);
  sub_192225A30();
  v19[4] = a3;
  v19[5] = a4;
  v19[6] = a5;
  v19[7] = v19[0];
  v19[8] = a1;
  v19[9] = a2;
  swift_getWitnessTable();
  return sub_192225B90();
}

uint64_t sub_19211C604(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for DynamicIslandExpandedContainer(0, v6, v7, v8);
  sub_1921BB14C();
  sub_1921BB14C();
  return (*(v3 + 8))(v5, a2);
}

double sub_19211C744(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  if ((a8 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_19211C75C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF0470, &unk_192234400);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_19211C7AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(v3 + 16);
  v8 = *(v3 + 24);
  sub_192226310();

  return sub_19211C3DC(a1, a2, v7, v8, a3);
}

unint64_t sub_19211C848()
{
  result = qword_1EADEDD98;
  if (!qword_1EADEDD98)
  {
    sub_192226310();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEDD98);
  }

  return result;
}

uint64_t sub_19211C8A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v15 - v10;
  v12(v9);
  sub_1921BB14C();
  v13 = *(v5 + 8);
  v13(v7, a4);
  sub_1921BB14C();
  return (v13)(v11, a4);
}

uint64_t sub_19211CA04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEDF8, &qword_19222B5B0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  sub_19202CFFC(a3, v25 - v10, &qword_1EADEEDF8, &qword_19222B5B0);
  v12 = sub_192227CF0();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_192033970(v11, &qword_1EADEEDF8, &qword_19222B5B0);
  }

  else
  {
    sub_192227CE0();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_192227C70();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1922279A0() + 32;
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

      sub_192033970(a3, &qword_1EADEEDF8, &qword_19222B5B0);

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

  sub_192033970(a3, &qword_1EADEEDF8, &qword_19222B5B0);
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

uint64_t TimelineEntryPreviewSource.unwrapTimeline<A>(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a2;
  v4[5] = a3;
  v5 = *(v3 + 24);
  v4[6] = sub_192227CC0();
  v4[7] = sub_192227CB0();
  v8 = (v5 + *v5);
  v6 = swift_task_alloc();
  v4[8] = v6;
  *v6 = v4;
  v6[1] = sub_19211CE14;

  return v8();
}

uint64_t sub_19211CE14(uint64_t a1)
{
  *(*v1 + 72) = a1;

  v3 = sub_192227C70();

  return MEMORY[0x1EEE6DFA0](sub_19211CF58, v3, v2);
}

uint64_t sub_19211CF58()
{
  v1 = *(v0 + 72);
  v9 = *(v0 + 32);

  *(v0 + 16) = v1;
  v2 = swift_task_alloc();
  *(v2 + 16) = v9;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0478, &unk_192234418);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF420, &unk_19222D820);
  v5 = sub_192121A04(&qword_1EADF0480, &qword_1EADF0478, &unk_192234418);
  v6 = sub_19204301C(sub_19211D4F0, v2, v3, v9, v4, v5, MEMORY[0x1E69E7288], v0 + 24);

  v7 = *(v0 + 8);

  return v7(v6);
}

uint64_t TimelineProviderPreviewSource.unwrapContent<A>(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  result = sub_19211DC4C(AssociatedTypeWitness, a1);
  if (!v5)
  {
    return sub_19211D6F8(a4, a2);
  }

  return result;
}

uint64_t TimelineEntryPreviewSource.makeWidget.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_19211D250@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X3>, uint64_t a4@<X8>)
{
  v8 = sub_192228240();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v23 - v10;
  sub_192033A64(a1, &v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEBD0, &qword_1922349A0);
  v12 = swift_dynamicCast();
  v13 = *(*(a2 - 8) + 56);
  if (v12)
  {
    v14 = *(a2 - 8);
    v13(v11, 0, 1, a2);
    return (*(v14 + 32))(a4, v11, a2);
  }

  else
  {
    v13(v11, 1, 1, a2);
    (*(v9 + 8))(v11, v8);
    MetatypeMetadata = swift_getMetatypeMetadata();
    *&v26 = a2;
    v16 = a1[3];
    v17 = __swift_project_boxed_opaque_existential_1(a1, v16);
    *(&v25 + 1) = v16;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v24);
    (*(*(v16 - 8) + 16))(boxed_opaque_existential_1, v17, v16);
    sub_192121A58();
    v19 = swift_allocError();
    v21 = v20;
    strcpy(v20, "Widget preview");
    *(v20 + 15) = -18;
    strcpy((v20 + 16), "timeline entry");
    *(v20 + 31) = -18;
    sub_19203BEDC(&v26, (v20 + 32));
    v22 = v25;
    *(v21 + 64) = v24;
    *(v21 + 80) = v22;
    result = swift_willThrow();
    *a3 = v19;
  }

  return result;
}

uint64_t sub_19211D538()
{
  v1 = *v0;

  return v1;
}

uint64_t _s9WidgetKit26TimelineEntryPreviewSourceV13contentDomain21DeveloperToolsSupport0ef7ContentH0Ovg_0@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E6966798];
  v3 = sub_192225720();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t TimelineProviderPreviewSource.makeWidget.getter()
{
  v1 = *v0;

  return v1;
}

void *TimelineProviderPreviewSource.intent.getter()
{
  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

uint64_t sub_19211D6F8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v5 = sub_192228240();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = v15 - v8;
  (*(v2 + 72))(v18, v7);
  sub_19202A98C(v18, &v16);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1(v18);
    v10 = *(a1 - 8);
    (*(v10 + 56))(v9, 0, 1, a1);
    return (*(v10 + 32))(a2, v9, a1);
  }

  else
  {
    (*(*(a1 - 8) + 56))(v9, 1, 1, a1);
    (*(v6 + 8))(v9, v5);
    MetatypeMetadata = swift_getMetatypeMetadata();
    *&v16 = a1;
    sub_19202A98C(v18, v15);
    sub_192121A58();
    swift_allocError();
    v13 = v12;
    strcpy(v12, "Widget preview");
    *(v12 + 15) = -18;
    *(v12 + 16) = 0xD000000000000011;
    *(v12 + 24) = 0x800000019224B190;
    sub_19203BEDC(&v16, (v12 + 32));
    v14 = v15[1];
    *(v13 + 64) = v15[0];
    *(v13 + 80) = v14;
    swift_willThrow();
    return __swift_destroy_boxed_opaque_existential_1(v18);
  }
}

uint64_t TimelineProviderPreviewSource.unwrapContent<A>(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_19211DA00(AssociatedTypeWitness, &v10);
  if (!v4)
  {
    v5 = v10;
    sub_19211D6F8(a3, a1);
  }

  return v5;
}

id sub_19211DA00@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v5 = sub_192228240();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v18 - v7;
  v9 = *(v2 + 24);
  *&v18 = v9;
  v10 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0508, &qword_192234998);
  v11 = swift_dynamicCast();
  v12 = *(*(a1 - 8) + 56);
  if (v11)
  {
    v13 = *(a1 - 8);
    v12(v8, 0, 1, a1);
    return (*(v13 + 32))(a2, v8, a1);
  }

  else
  {
    v12(v8, 1, 1, a1);
    (*(v6 + 8))(v8, v5);
    MetatypeMetadata = swift_getMetatypeMetadata();
    *&v18 = a1;
    if (v9)
    {
      v15 = sub_19211014C();
    }

    else
    {
      v15 = 0;
    }

    sub_192121A58();
    swift_allocError();
    v17 = v16;
    strcpy(v16, "Widget preview");
    *(v16 + 15) = -18;
    *(v16 + 16) = 0x746E65746E69;
    *(v16 + 24) = 0xE600000000000000;
    sub_19203BEDC(&v18, (v16 + 32));
    v17[8] = v9;
    v17[9] = 0;
    v17[10] = 0;
    v17[11] = v15;
    swift_willThrow();
    return v10;
  }
}

uint64_t sub_19211DC4C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v5 = sub_192228240();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v19 - v7;
  sub_19202CFFC(v2 + 32, v23, &qword_1EADF0488, &unk_192234428);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0488, &unk_192234428);
  v9 = swift_dynamicCast();
  v10 = *(*(a1 - 8) + 56);
  if (v9)
  {
    v11 = *(a1 - 8);
    v10(v8, 0, 1, a1);
    return (*(v11 + 32))(a2, v8, a1);
  }

  else
  {
    v10(v8, 1, 1, a1);
    (*(v6 + 8))(v8, v5);
    MetatypeMetadata = swift_getMetatypeMetadata();
    *&v21 = a1;
    sub_19202CFFC(v2 + 32, v23, &qword_1EADF0488, &unk_192234428);
    v13 = v24;
    if (v24)
    {
      v14 = __swift_project_boxed_opaque_existential_1(v23, v24);
      *(&v20 + 1) = v13;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v19);
      (*(*(v13 - 8) + 16))(boxed_opaque_existential_1, v14, v13);
      __swift_destroy_boxed_opaque_existential_1(v23);
    }

    else
    {
      sub_192033970(v23, &qword_1EADF0488, &unk_192234428);
      v19 = 0u;
      v20 = 0u;
    }

    sub_192121A58();
    swift_allocError();
    v17 = v16;
    strcpy(v16, "Widget preview");
    *(v16 + 15) = -18;
    *(v16 + 16) = 0x65746E6920707061;
    *(v16 + 24) = 0xEA0000000000746ELL;
    sub_19203BEDC(&v21, (v16 + 32));
    v18 = v20;
    *(v17 + 64) = v19;
    *(v17 + 80) = v18;
    return swift_willThrow();
  }
}

void *sub_19211DF2C()
{
  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

uint64_t sub_19211DF54(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v4 = *(v2 + 32);
  v3[5] = sub_192227CC0();
  v3[6] = sub_192227CB0();
  v7 = (v4 + *v4);
  v5 = swift_task_alloc();
  v3[7] = v5;
  *v5 = v3;
  v5[1] = sub_19211E064;

  return v7();
}

uint64_t sub_19211E064(uint64_t a1)
{
  *(*v1 + 64) = a1;

  v3 = sub_192227C70();

  return MEMORY[0x1EEE6DFA0](sub_19211E1A8, v3, v2);
}

uint64_t sub_19211E1A8()
{
  v1 = v0[8];
  v2 = v0[4];

  v0[2] = v1;
  v3 = swift_task_alloc();
  *(v3 + 16) = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF04C0, &qword_192234930);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF420, &unk_19222D820);
  v6 = sub_192121A04(&qword_1EADF04C8, &qword_1EADF04C0, &qword_192234930);
  v7 = sub_19204301C(sub_1921219E4, v3, v4, v2, v5, v6, MEMORY[0x1E69E7288], (v0 + 3));

  v8 = v0[1];

  return v8(v7);
}

uint64_t sub_19211E330@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_192228240();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v23 - v10;
  sub_192033A64(a1, &v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF04D0, &qword_192234938);
  v12 = swift_dynamicCast();
  v13 = *(*(a2 - 8) + 56);
  if (v12)
  {
    v14 = *(a2 - 8);
    v13(v11, 0, 1, a2);
    return (*(v14 + 32))(a4, v11, a2);
  }

  else
  {
    v13(v11, 1, 1, a2);
    (*(v9 + 8))(v11, v8);
    MetatypeMetadata = swift_getMetatypeMetadata();
    *&v26 = a2;
    v16 = a1[3];
    v17 = __swift_project_boxed_opaque_existential_1(a1, v16);
    *(&v25 + 1) = v16;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v24);
    (*(*(v16 - 8) + 16))(boxed_opaque_existential_1, v17, v16);
    sub_192121A58();
    v19 = swift_allocError();
    v21 = v20;
    strcpy(v20, "Widget preview");
    *(v20 + 15) = -18;
    *(v20 + 16) = 0x636E6176656C6572;
    *(v20 + 24) = 0xEF7972746E652065;
    sub_19203BEDC(&v26, (v20 + 32));
    v22 = v25;
    *(v21 + 64) = v24;
    *(v21 + 80) = v22;
    result = swift_willThrow();
    *a3 = v19;
  }

  return result;
}

uint64_t sub_19211E5D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *v3;
  v7 = *(v3 + 24);
  *(v4 + 64) = sub_192227CC0();
  v11 = *(v3 + 1);
  v12 = *(v3 + 2);
  v8 = sub_192227CB0();
  *(v4 + 16) = v6;
  *(v4 + 72) = v8;
  *(v4 + 24) = v11;
  *(v4 + 40) = v7;
  *(v4 + 48) = v12;
  v9 = swift_task_alloc();
  *(v4 + 80) = v9;
  *v9 = v4;
  v9[1] = sub_19211E6BC;

  return sub_19211DF54(a3, a3);
}

uint64_t sub_19211E6BC(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 88) = v1;

  if (v1)
  {
    v5 = sub_192227C70();
    v7 = v6;
    v8 = sub_19211E878;
  }

  else
  {
    *(v4 + 96) = a1;
    v5 = sub_192227C70();
    v7 = v9;
    v8 = sub_19211E810;
  }

  return MEMORY[0x1EEE6DFA0](v8, v5, v7);
}

uint64_t sub_19211E810()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 96);

  return v1(v2);
}

uint64_t sub_19211E878()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_19211E8F8()
{
  v1 = *(v0 + 8);

  return v1;
}

id sub_19211E960()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

uint64_t sub_19211E9A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 144) = a3;
  *(v5 + 152) = a4;
  *(v5 + 136) = a2;
  type metadata accessor for TimelineProviderContext(0);
  *(v5 + 160) = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *(v5 + 168) = AssociatedTypeWitness;
  *(v5 + 176) = *(AssociatedTypeWitness - 8);
  *(v5 + 184) = swift_task_alloc();
  *(v5 + 192) = swift_task_alloc();
  v8 = swift_getAssociatedTypeWitness();
  *(v5 + 200) = v8;
  v9 = *(v8 - 8);
  *(v5 + 208) = v9;
  *(v5 + 216) = *(v9 + 64);
  *(v5 + 224) = swift_task_alloc();
  v10 = sub_192228240();
  *(v5 + 232) = v10;
  *(v5 + 240) = *(v10 - 8);
  *(v5 + 248) = swift_task_alloc();
  *(v5 + 256) = *(a3 - 8);
  *(v5 + 264) = swift_task_alloc();
  v11 = *(v4 + 48);
  *(v5 + 272) = *(v4 + 32);
  *(v5 + 288) = v11;
  sub_192227CC0();
  *(v5 + 304) = sub_192227CB0();
  v13 = sub_192227C70();
  *(v5 + 312) = v13;
  *(v5 + 320) = v12;

  return MEMORY[0x1EEE6DFA0](sub_19211EC38, v13, v12);
}

uint64_t sub_19211EC38()
{
  v20 = v0;
  (*(v0 + 272))();
  if (swift_dynamicCast())
  {
    v1 = *(v0 + 288);
    v3 = *(v0 + 256);
    v2 = *(v0 + 264);
    v4 = *(v0 + 248);
    v5 = *(v0 + 144);
    (*(v3 + 56))(v4, 0, 1, v5);
    (*(v3 + 32))(v2, v4, v5);
    v18 = (v1 + *v1);
    v6 = swift_task_alloc();
    *(v0 + 328) = v6;
    *v6 = v0;
    v6[1] = sub_19211EF38;

    return v18(v0 + 112);
  }

  else
  {
    v8 = *(v0 + 272);
    v9 = *(v0 + 248);
    v10 = *(v0 + 256);
    v11 = *(v0 + 232);
    v12 = *(v0 + 240);
    v13 = *(v0 + 144);

    (*(v10 + 56))(v9, 1, 1, v13);
    (*(v12 + 8))(v9, v11);
    *(v0 + 72) = swift_getMetatypeMetadata();
    *(v0 + 48) = v13;
    v8(v19);
    sub_192121A58();
    swift_allocError();
    v15 = v14;
    strcpy(v14, "Widget preview");
    *(v14 + 15) = -18;
    *(v14 + 16) = 0xD000000000000012;
    *(v14 + 24) = 0x800000019224B140;
    sub_19203BEDC((v0 + 48), (v14 + 32));
    v16 = v19[1];
    *(v15 + 64) = v19[0];
    *(v15 + 80) = v16;
    swift_willThrow();

    v17 = *(v0 + 8);

    return v17();
  }
}

uint64_t sub_19211EF38()
{
  v1 = *v0;

  v2 = *(v1 + 320);
  v3 = *(v1 + 312);

  return MEMORY[0x1EEE6DFA0](sub_19211F058, v3, v2);
}

uint64_t sub_19211F058()
{
  v1 = *(v0 + 200);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF04E0, &unk_192234948);
  sub_192219A34(v1, v1, (v0 + 104));

  *(v0 + 120) = sub_192227820();
  v4 = type metadata accessor for WidgetRelevance(0, v1, v2, v3);
  *(v0 + 336) = sub_192219B84(v4);

  if (sub_192227C10())
  {
    v5 = sub_192227BF0();
    sub_192227BA0();
    if (v5)
    {
      (*(*(v0 + 208) + 16))(*(v0 + 224), *(v0 + 336) + ((*(*(v0 + 208) + 80) + 32) & ~*(*(v0 + 208) + 80)), *(v0 + 200));
    }

    else
    {
      v18 = *(v0 + 216);
      result = sub_192228450();
      if (v18 != 8)
      {
        __break(1u);
        return result;
      }

      v19 = *(v0 + 224);
      v20 = *(v0 + 200);
      v21 = *(v0 + 208);
      *(v0 + 128) = result;
      (*(v21 + 16))(v19, v0 + 128, v20);
      swift_unknownObjectRelease();
    }

    *(v0 + 344) = 1;
    v6 = *(v0 + 160);
    v23 = *(v0 + 152);
    sub_192087350(*(v0 + 136), v6);
    v7 = *(v6 + 64);
    v8 = *(v6 + 72);
    v9 = *(v6 + 56);
    sub_1920FB69C(v6);
    *(v0 + 80) = v7;
    *(v0 + 88) = v8;
    *(v0 + 96) = v9;
    v22 = (*(v23 + 48) + **(v23 + 48));
    v10 = swift_task_alloc();
    *(v0 + 352) = v10;
    *v10 = v0;
    v10[1] = sub_19211F3D8;
    v11 = *(v0 + 224);
    v12 = *(v0 + 192);
    v13 = *(v0 + 144);
    v14 = *(v0 + 152);

    return v22(v12, v11, v0 + 80, v13, v14);
  }

  else
  {
    (*(*(v0 + 256) + 8))(*(v0 + 264), *(v0 + 144));

    v16 = *(v0 + 120);

    v17 = *(v0 + 8);

    return v17(v16);
  }
}

uint64_t sub_19211F3D8()
{
  v2 = *v1;
  *(*v1 + 360) = v0;

  if (v0)
  {
    v3 = v2[28];
    v4 = v2[25];
    v5 = v2[26];

    (*(v5 + 8))(v3, v4);

    v6 = v2[39];
    v7 = v2[40];
    v8 = sub_19211F8B0;
  }

  else
  {
    (*(v2[26] + 8))(v2[28], v2[25]);
    v6 = v2[39];
    v7 = v2[40];
    v8 = sub_19211F53C;
  }

  return MEMORY[0x1EEE6DFA0](v8, v6, v7);
}

uint64_t sub_19211F53C()
{
  v1 = *(v0 + 344);
  v2 = *(v0 + 192);
  v3 = *(v0 + 176);
  v4 = *(v0 + 168);
  (*(v3 + 16))(*(v0 + 184), v2, v4);
  sub_192227C40();
  sub_192227C20();
  (*(v3 + 8))(v2, v4);
  if (v1 == sub_192227C10())
  {
    (*(*(v0 + 256) + 8))(*(v0 + 264), *(v0 + 144));

    v5 = *(v0 + 120);

    v6 = *(v0 + 8);

    return v6(v5);
  }

  v8 = *(v0 + 344);
  v9 = sub_192227BF0();
  sub_192227BA0();
  if (v9)
  {
    result = (*(*(v0 + 208) + 16))(*(v0 + 224), *(v0 + 336) + ((*(*(v0 + 208) + 80) + 32) & ~*(*(v0 + 208) + 80)) + *(*(v0 + 208) + 72) * v8, *(v0 + 200));
  }

  else
  {
    v19 = *(v0 + 216);
    result = sub_192228450();
    if (v19 != 8)
    {
LABEL_14:
      __break(1u);
      return result;
    }

    v20 = *(v0 + 224);
    v21 = *(v0 + 200);
    v22 = *(v0 + 208);
    *(v0 + 128) = result;
    (*(v22 + 16))(v20, v0 + 128, v21);
    result = swift_unknownObjectRelease();
  }

  *(v0 + 344) = v8 + 1;
  if (__OFADD__(v8, 1))
  {
    __break(1u);
    goto LABEL_14;
  }

  v10 = *(v0 + 160);
  v24 = *(v0 + 152);
  sub_192087350(*(v0 + 136), v10);
  v11 = *(v10 + 64);
  v12 = *(v10 + 72);
  v13 = *(v10 + 56);
  sub_1920FB69C(v10);
  *(v0 + 80) = v11;
  *(v0 + 88) = v12;
  *(v0 + 96) = v13;
  v23 = (*(v24 + 48) + **(v24 + 48));
  v14 = swift_task_alloc();
  *(v0 + 352) = v14;
  *v14 = v0;
  v14[1] = sub_19211F3D8;
  v15 = *(v0 + 224);
  v16 = *(v0 + 192);
  v17 = *(v0 + 144);
  v18 = *(v0 + 152);

  return v23(v16, v15, v0 + 80, v17, v18);
}

uint64_t sub_19211F8B0()
{
  v2 = v0[32];
  v1 = v0[33];
  v3 = v0[18];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t StaticConfiguration.previewTimeline<A>(source:with:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = *(v7 + 16);
  v11 = *(v7 + 24);
  (*v7)(v16, a1, a2, a3, a4, a5);
  v12 = v16[4];
  __swift_project_boxed_opaque_existential_1(v16, v16[3]);
  sub_192120FF8(v10, v11, a6, a7);
  v14 = v13;
  (*(v12 + 48))(v13);

  return __swift_destroy_boxed_opaque_existential_1(v16);
}

uint64_t IntentConfiguration.previewTimeline<A>(source:with:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = *(v7 + 16);
  v11 = *(v7 + 24);
  (*v7)(v16, a1, a2, a3, a4, a5);
  v12 = v16[4];
  __swift_project_boxed_opaque_existential_1(v16, v16[3]);
  sub_192120FF8(v10, v11, a6, a7);
  v14 = v13;
  (*(v12 + 48))(v13);

  return __swift_destroy_boxed_opaque_existential_1(v16);
}

uint64_t AppIntentConfiguration.previewTimeline<A>(source:with:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = *(v7 + 16);
  v11 = *(v7 + 24);
  (*v7)(v16, a1, a2, a3, a4, a5);
  v12 = v16[4];
  __swift_project_boxed_opaque_existential_1(v16, v16[3]);
  sub_192120FF8(v10, v11, a6, a7);
  v14 = v13;
  (*(*(v12 + 8) + 48))(v13);

  return __swift_destroy_boxed_opaque_existential_1(v16);
}

double RelevanceConfiguration.previewTimeline<A>(source:with:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v38 = a7;
  v39 = a3;
  v33 = a4;
  v35 = a1;
  v36 = a2;
  v10 = type metadata accessor for TimelineProviderContext(0);
  v37 = *(v10 - 8);
  v11 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v34 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a6 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v15 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEDF8, &qword_19222B5B0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v32 - v17;
  v19 = v7[1];
  v41 = *v7;
  v42 = v19;
  v43 = v7[2];
  v20 = sub_192227CF0();
  (*(*(v20 - 8) + 56))(v18, 1, 1, v20);
  (*(v12 + 16))(v15, v35, a6);
  sub_192087350(v36, &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_192227CC0();
  (*(*(a5 - 8) + 16))(v40, &v41, a5);

  v21 = sub_192227CB0();
  v22 = (*(v12 + 80) + 112) & ~*(v12 + 80);
  v23 = (v13 + *(v37 + 80) + v22) & ~*(v37 + 80);
  v24 = swift_allocObject();
  v25 = MEMORY[0x1E69E85E0];
  *(v24 + 16) = v21;
  *(v24 + 24) = v25;
  v26 = *(a5 + 24);
  *(v24 + 32) = *(a5 + 16);
  *(v24 + 40) = a6;
  v27 = v38;
  *(v24 + 48) = v26;
  *(v24 + 56) = v27;
  v28 = v42;
  *(v24 + 64) = v41;
  *(v24 + 80) = v28;
  *(v24 + 96) = v43;
  (*(v12 + 32))(v24 + v22, v15, a6);
  sub_192121144(v34, v24 + v23);
  v29 = (v24 + ((v11 + v23 + 7) & 0xFFFFFFFFFFFFFFF8));
  v30 = v33;
  *v29 = v39;
  v29[1] = v30;
  sub_19211CA04(0, 0, v18, &unk_192234440, v24);

  return result;
}

uint64_t sub_19211FF78(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 64) = a7;
  *(v8 + 72) = a8;
  *(v8 + 80) = sub_192227CC0();
  *(v8 + 88) = sub_192227CB0();
  v12 = a4[1];
  *(v8 + 16) = *a4;
  *(v8 + 32) = v12;
  *(v8 + 48) = a4[2];
  v13 = swift_task_alloc();
  *(v8 + 96) = v13;
  v15 = type metadata accessor for RelevanceConfiguration(0, v18, v20, v14);
  *v13 = v8;
  v13[1] = sub_19212008C;

  return sub_192120308(a5, a6, v15, v19, v21);
}

uint64_t sub_19212008C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 104) = v1;

  if (v1)
  {
    v5 = sub_192227C70();
    v7 = v6;
    v8 = sub_192120270;
  }

  else
  {
    *(v4 + 112) = a1;
    v5 = sub_192227C70();
    v7 = v9;
    v8 = sub_1921201E0;
  }

  return MEMORY[0x1EEE6DFA0](v8, v5, v7);
}

uint64_t sub_1921201E0()
{
  v1 = *(v0 + 64);

  v1(v2, 0);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_192120270()
{
  v1 = v0[13];
  v2 = v0[8];

  v3 = v1;
  v2(v1, 1);

  v4 = v0[1];

  return v4();
}

uint64_t sub_192120308(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 240) = a4;
  *(v6 + 248) = a5;
  *(v6 + 224) = a2;
  *(v6 + 232) = a3;
  *(v6 + 216) = a1;
  *(v6 + 256) = *(a4 - 8);
  *(v6 + 264) = swift_task_alloc();
  v7 = v5[1];
  *(v6 + 16) = *v5;
  *(v6 + 32) = v7;
  *(v6 + 48) = v5[2];
  *(v6 + 272) = sub_192227CC0();
  *(v6 + 280) = sub_192227CB0();
  v9 = sub_192227C70();
  *(v6 + 288) = v9;
  *(v6 + 296) = v8;

  return MEMORY[0x1EEE6DFA0](sub_19212040C, v9, v8);
}

uint64_t sub_19212040C()
{
  v1 = *(*(v0 + 256) + 16);
  v1(*(v0 + 264), *(v0 + 216), *(v0 + 240));
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF04E8, &qword_192234978);
  if (swift_dynamicCast())
  {
    v4 = *(v0 + 240);
    v3 = *(v0 + 248);
    v6 = *(v0 + 224);
    v5 = *(v0 + 232);
    sub_19203832C((v0 + 104), v0 + 64);
    v7 = sub_192227CB0();
    *(v0 + 304) = v7;
    v8 = swift_task_alloc();
    *(v0 + 312) = v8;
    v8[2] = *(v5 + 16);
    v8[3] = v4;
    v8[4] = *(v5 + 24);
    v8[5] = v3;
    v8[6] = v0 + 16;
    v8[7] = v0 + 64;
    v8[8] = v6;
    v9 = swift_task_alloc();
    *(v0 + 320) = v9;
    v10 = type metadata accessor for WidgetViewCollection(0);
    *v9 = v0;
    v9[1] = sub_1921206FC;
    v11 = MEMORY[0x1E69E85E0];

    return MEMORY[0x1EEE6DE38](v0 + 208, v7, v11, 0xD000000000000025, 0x800000019224B160, sub_192121B64, v8, v10);
  }

  else
  {
    v12 = *(v0 + 240);
    v13 = *(v0 + 216);

    *(v0 + 136) = 0;
    *(v0 + 120) = 0u;
    *(v0 + 104) = 0u;
    sub_192033970(v0 + 104, &qword_1EADF04F0, &qword_192234980);
    *(v0 + 168) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF04F8, &qword_192234988);
    *(v0 + 144) = v2;
    *(v0 + 200) = v12;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 176));
    v1(boxed_opaque_existential_1, v13, v12);
    sub_192121A58();
    swift_allocError();
    v16 = v15;
    strcpy(v15, "Widget preview");
    *(v15 + 15) = -18;
    *(v15 + 16) = 0xD000000000000016;
    *(v15 + 24) = 0x8000000192234590;
    sub_19203BEDC((v0 + 144), (v15 + 32));
    v17 = *(v0 + 192);
    *(v16 + 64) = *(v0 + 176);
    *(v16 + 80) = v17;
    swift_willThrow();

    v18 = *(v0 + 8);

    return v18();
  }
}

uint64_t sub_1921206FC()
{
  v2 = *v1;
  *(*v1 + 328) = v0;

  if (v0)
  {
    v3 = *(v2 + 288);
    v4 = *(v2 + 296);
    v5 = sub_1921208A0;
  }

  else
  {

    v3 = *(v2 + 288);
    v4 = *(v2 + 296);
    v5 = sub_192120820;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_192120820()
{

  v1 = v0[26];
  __swift_destroy_boxed_opaque_existential_1(v0 + 8);

  v2 = v0[1];

  return v2(v1);
}

uint64_t sub_1921208A0()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 64));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_192120928(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4)
{
  v35 = a4;
  v33 = a1;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0500, &qword_192234990);
  v6 = *(v32 - 8);
  v7 = MEMORY[0x1EEE9AC00](v32);
  v9 = &v27 - v8;
  v10 = *a2;
  v29 = a2[1];
  v30 = v10;
  (a2[4])(v36, v7);
  v11 = v37;
  v12 = v38;
  __swift_project_boxed_opaque_existential_1(v36, v37);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v34 = *(AssociatedTypeWitness - 8);
  v14 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v16 = &v27 - v15;
  (*(v12 + 32))(v11, v12, v14);
  v17 = a3[4];
  v31 = a3[3];
  v27 = v17;
  v28 = __swift_project_boxed_opaque_existential_1(a3, v31);
  v18 = a3[3];
  v19 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v18);
  sub_192120FF8(v30, v29, v18, *(v19 + 8));
  v21 = v20;
  v22 = v32;
  (*(v6 + 16))(v9, v33, v32);
  v23 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v24 = swift_allocObject();
  (*(v6 + 32))(v24 + v23, v9, v22);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 48))(v21, v35, v28, sub_192121B78, v24, v31, *(*(v27 + 8) + 8), AssociatedTypeWitness, AssociatedConformanceWitness);

  (*(v34 + 8))(v16, AssociatedTypeWitness);
  return __swift_destroy_boxed_opaque_existential_1(v36);
}

uint64_t sub_192120C24(void *a1, char a2)
{
  if (a2)
  {
    v2 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0500, &qword_192234990);
    return sub_192227C80();
  }

  else
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0500, &qword_192234990);
    return sub_192227C90();
  }
}

uint64_t sub_192120CB8()
{
  sub_19202CFFC((v0 + 8), &v4, &unk_1EADEF330, &unk_19222CD40);
  if (v5)
  {
    sub_19203BEDC(&v4, &v6);
    *&v4 = 0;
    *(&v4 + 1) = 0xE000000000000000;
    sub_192228400();
    MEMORY[0x193B0A990](*v0, v0[1]);
    MEMORY[0x193B0A990](0x6574636570786520, 0xEA00000000002064);
    MEMORY[0x193B0A990](v0[2], v0[3]);
    MEMORY[0x193B0A990](0x6570797420666F20, 0xE900000000000020);
    sub_1922285A0();
    MEMORY[0x193B0A990](0x797420746F67203BLL, 0xEB00000000206570);
    __swift_project_boxed_opaque_existential_1(&v6, v7);
    swift_getDynamicType();
    v1 = sub_192228BD0();
    MEMORY[0x193B0A990](v1);

    v2 = v4;
    __swift_destroy_boxed_opaque_existential_1(&v6);
  }

  else
  {
    sub_192033970(&v4, &unk_1EADEF330, &unk_19222CD40);
    *&v6 = 0;
    *(&v6 + 1) = 0xE000000000000000;
    sub_192228400();
    MEMORY[0x193B0A990](*v0, v0[1]);
    MEMORY[0x193B0A990](0x6574636570786520, 0xEA00000000002064);
    MEMORY[0x193B0A990](v0[2], v0[3]);
    MEMORY[0x193B0A990](0x6570797420666F20, 0xE900000000000020);
    sub_1922285A0();
    MEMORY[0x193B0A990](0x696E20746F67203BLL, 0xE90000000000006CLL);
    return v6;
  }

  return v2;
}

uint64_t sub_192120F00()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void sub_192120FF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = [objc_opt_self() mainBundle];
  v7 = [v6 bundleIdentifier];

  if (v7)
  {
    (*(a4 + 24))(&v13, a3, a4);
    v12 = byte_1922349AA[v13];
    v8 = _sSo15CHSWidgetFamilyV9WidgetKitEyAbC08InternalcB0OcfC_0(&v12);
    v9 = (*(a4 + 48))(a3, a4);
    v10 = objc_allocWithZone(MEMORY[0x1E6994370]);
    v11 = sub_192227930();
    [v10 initWithExtensionBundleIdentifier:v7 containerBundleIdentifier:0 kind:v11 family:v8 intent:v9];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_192121144(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TimelineProviderContext(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1921211A8(uint64_t a1)
{
  v3 = *(v1 + 40);
  v4 = *(*(v3 - 8) + 64);
  v5 = (*(*(v3 - 8) + 80) + 112) & ~*(*(v3 - 8) + 80);
  v6 = *(type metadata accessor for TimelineProviderContext(0) - 8);
  v7 = (v5 + v4 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = *(v1 + 16);
  v9 = *(v1 + 24);
  v10 = (v1 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v2 + 16) = v13;
  *v13 = v2;
  v13[1] = sub_1920A59A8;

  return sub_19211FF78(a1, v8, v9, (v1 + 64), v1 + v5, v1 + v7, v11, v12);
}

unint64_t sub_192121360(uint64_t a1)
{
  result = sub_192121388();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_192121388()
{
  result = qword_1EADF0490;
  if (!qword_1EADF0490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF0490);
  }

  return result;
}

unint64_t sub_1921213DC(uint64_t a1)
{
  result = sub_192121404();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_192121404()
{
  result = qword_1EADF0498;
  if (!qword_1EADF0498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF0498);
  }

  return result;
}

uint64_t sub_192121458(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_192121494(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1921214D0(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_19212150C(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1921215AC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1921215F4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_192121670(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_1921216B8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
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

uint64_t sub_192121744(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_19212178C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_1921217F4(uint64_t a1)
{
  result = sub_19212181C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_19212181C()
{
  result = qword_1EADF04A0;
  if (!qword_1EADF04A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF04A0);
  }

  return result;
}

unint64_t sub_192121870(uint64_t a1)
{
  result = sub_192121898();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_192121898()
{
  result = qword_1EADF04A8;
  if (!qword_1EADF04A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF04A8);
  }

  return result;
}

unint64_t sub_1921218EC(uint64_t a1)
{
  result = sub_192121914();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_192121914()
{
  result = qword_1EADF04B0;
  if (!qword_1EADF04B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF04B0);
  }

  return result;
}

unint64_t sub_192121968(uint64_t a1)
{
  result = sub_192121990();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_192121990()
{
  result = qword_1EADF04B8;
  if (!qword_1EADF04B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF04B8);
  }

  return result;
}

uint64_t sub_192121A04(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

unint64_t sub_192121A58()
{
  result = qword_1EADF04D8;
  if (!qword_1EADF04D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF04D8);
  }

  return result;
}

uint64_t sub_192121AAC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1920A59A8;

  return sub_192037220(a1, v4);
}

uint64_t sub_192121B78(void *a1, char a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0500, &qword_192234990);

  return sub_192120C24(a1, a2 & 1);
}

double sub_192121C30(uint64_t a1, const char *a2)
{
  if (qword_1ED74C6B0 != -1)
  {
    swift_once();
  }

  v3 = sub_1922258B0();
  __swift_project_value_buffer(v3, qword_1ED74CCC8);
  v4 = sub_192225890();
  v5 = sub_192227F90();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_192028000, v4, v5, a2, v6, 2u);
    MEMORY[0x193B0C7F0](v6, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v9 = *(Strong + 24);
    v10 = *(v9 + 16);
    v11 = Strong;

    os_unfair_lock_lock(v10);
    v12 = *(v11 + 32);
    *(v11 + 32) = 0;

    os_unfair_lock_unlock(*(v9 + 16));
  }

  return result;
}

uint64_t sub_192121D7C()
{
  result = sub_192227960();
  qword_1EADEDBA8 = result;
  unk_1EADEDBB0 = v1;
  return result;
}

uint64_t sub_192121DD4()
{
  result = sub_192227960();
  qword_1EADED240 = result;
  *algn_1EADED248 = v1;
  return result;
}

uint64_t sub_192121E2C()
{
  result = sub_192227960();
  qword_1EADF0510 = result;
  *algn_1EADF0518 = v1;
  return result;
}

uint64_t sub_192121E84(void *a1, void *a2, void *a3, uint64_t a4)
{
  if (*a1 != -1)
  {
    v6 = a2;
    swift_once();
    a2 = v6;
  }

  v4 = *a2;

  return v4;
}

uint64_t sub_192121EF8()
{
  v0 = sub_19202B38C();
  v19 = sub_192122280;
  v20 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v16 = 1107296256;
  v17 = sub_1921BBB98;
  v18 = &block_descriptor_173;
  v1 = _Block_copy(&aBlock);
  v2 = [v0 remoteObjectProxyWithErrorHandler_];
  _Block_release(v1);

  sub_1922282B0();
  swift_unknownObjectRelease();
  sub_19202A98C(v21, &aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0538, &unk_192234A88);
  if (swift_dynamicCast())
  {
    if (qword_1ED74C6B0 != -1)
    {
      swift_once();
    }

    v3 = sub_1922258B0();
    __swift_project_value_buffer(v3, qword_1ED74CCC8);
    v4 = sub_192225890();
    v5 = sub_192227FB0();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_192028000, v4, v5, "Invalidate widget configuration recommendations.", v6, 2u);
      MEMORY[0x193B0C7F0](v6, -1, -1);
    }

    v19 = sub_19212243C;
    v20 = 0;
    aBlock = MEMORY[0x1E69E9820];
    v16 = 1107296256;
    v17 = sub_19202AF14;
    v18 = &block_descriptor_176;
    v7 = _Block_copy(&aBlock);
    [v14 invalidateConfigurationRecommendationsWithCompletion_];
    _Block_release(v7);
    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_1ED74C6B0 != -1)
    {
      swift_once();
    }

    v8 = sub_1922258B0();
    __swift_project_value_buffer(v8, qword_1ED74CCC8);
    v9 = sub_192225890();
    v10 = sub_192227F90();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      aBlock = v12;
      *v11 = 136446210;
      *(v11 + 4) = sub_19202B8CC(0xD000000000000028, 0x800000019224B4B0, &aBlock);
      __swift_destroy_boxed_opaque_existential_1(v12);
      MEMORY[0x193B0C7F0](v12, -1, -1);
      MEMORY[0x193B0C7F0](v11, -1, -1);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v21);
}

void sub_192122280(void *a1)
{
  if (qword_1ED74C6B0 != -1)
  {
    swift_once();
  }

  v2 = sub_1922258B0();
  __swift_project_value_buffer(v2, qword_1ED74CCC8);
  v3 = a1;
  oslog = sub_192225890();
  v4 = sub_192227F90();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v11 = v7;
    *v5 = 136446466;
    *(v5 + 4) = sub_19202B8CC(0xD000000000000028, 0x800000019224B4B0, &v11);
    *(v5 + 12) = 2114;
    v8 = a1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 14) = v9;
    *v6 = v9;
    _os_log_impl(&dword_192028000, oslog, v4, "%{public}s - remoteObjectProxy error: %{public}@", v5, 0x16u);
    sub_192033970(v6, &qword_1EADEEDF0, &qword_1922319C0);
    MEMORY[0x193B0C7F0](v6, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x193B0C7F0](v7, -1, -1);
    MEMORY[0x193B0C7F0](v5, -1, -1);
  }
}

void sub_19212243C(NSObject *a1)
{
  if (a1)
  {
    v2 = a1;
    if (qword_1ED74C6B0 != -1)
    {
      swift_once();
    }

    v3 = sub_1922258B0();
    __swift_project_value_buffer(v3, qword_1ED74CCC8);
    v4 = a1;
    v5 = sub_192225890();
    v6 = sub_192227F90();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v18 = v9;
      *v7 = 136446466;
      *(v7 + 4) = sub_19202B8CC(0xD000000000000028, 0x800000019224B4B0, &v18);
      *(v7 + 12) = 2114;
      v10 = a1;
      v11 = _swift_stdlib_bridgeErrorToNSError();
      *(v7 + 14) = v11;
      *v8 = v11;
      _os_log_impl(&dword_192028000, v5, v6, "%{public}s - error reloading supported intents: %{public}@", v7, 0x16u);
      sub_192033970(v8, &qword_1EADEEDF0, &qword_1922319C0);
      MEMORY[0x193B0C7F0](v8, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v9);
      MEMORY[0x193B0C7F0](v9, -1, -1);
      MEMORY[0x193B0C7F0](v7, -1, -1);

      return;
    }

    v16 = a1;
  }

  else
  {
    if (qword_1ED74C6B0 != -1)
    {
      swift_once();
    }

    v12 = sub_1922258B0();
    __swift_project_value_buffer(v12, qword_1ED74CCC8);
    oslog = sub_192225890();
    v13 = sub_192227F90();
    if (os_log_type_enabled(oslog, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v18 = v15;
      *v14 = 136446210;
      *(v14 + 4) = sub_19202B8CC(0xD000000000000028, 0x800000019224B4B0, &v18);
      _os_log_impl(&dword_192028000, oslog, v13, "%{public}s - success", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v15);
      MEMORY[0x193B0C7F0](v15, -1, -1);
      MEMORY[0x193B0C7F0](v14, -1, -1);

      return;
    }

    v16 = oslog;
  }
}

uint64_t sub_192122780(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_19202B38C();
  v22 = sub_192122B2C;
  v23 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v19 = 1107296256;
  v20 = sub_1921BBB98;
  v21 = &block_descriptor_167;
  v4 = _Block_copy(&aBlock);
  v5 = [v3 remoteObjectProxyWithErrorHandler_];
  _Block_release(v4);

  sub_1922282B0();
  swift_unknownObjectRelease();
  sub_19202A98C(v24, &aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0538, &unk_192234A88);
  if (swift_dynamicCast())
  {
    if (qword_1ED74C6B0 != -1)
    {
      swift_once();
    }

    v6 = sub_1922258B0();
    __swift_project_value_buffer(v6, qword_1ED74CCC8);
    v7 = sub_192225890();
    v8 = sub_192227FB0();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_192028000, v7, v8, "Invalidate widget configuration recommendations.", v9, 2u);
      MEMORY[0x193B0C7F0](v9, -1, -1);
    }

    v10 = sub_192227930();
    v22 = sub_192122CE8;
    v23 = 0;
    aBlock = MEMORY[0x1E69E9820];
    v19 = 1107296256;
    v20 = sub_19202AF14;
    v21 = &block_descriptor_170;
    v11 = _Block_copy(&aBlock);
    [v17 invalidateConfigurationRecommendationsInBundle:v10 completion:v11];
    _Block_release(v11);
    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_1ED74C6B0 != -1)
    {
      swift_once();
    }

    v12 = sub_1922258B0();
    __swift_project_value_buffer(v12, qword_1ED74CCC8);
    v10 = sub_192225890();
    v13 = sub_192227F90();
    if (os_log_type_enabled(v10, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      aBlock = v15;
      *v14 = 136446210;
      *(v14 + 4) = sub_19202B8CC(0xD000000000000031, 0x800000019224B470, &aBlock);
      __swift_destroy_boxed_opaque_existential_1(v15);
      MEMORY[0x193B0C7F0](v15, -1, -1);
      MEMORY[0x193B0C7F0](v14, -1, -1);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v24);
}

void sub_192122B2C(void *a1)
{
  if (qword_1ED74C6B0 != -1)
  {
    swift_once();
  }

  v2 = sub_1922258B0();
  __swift_project_value_buffer(v2, qword_1ED74CCC8);
  v3 = a1;
  oslog = sub_192225890();
  v4 = sub_192227F90();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v11 = v7;
    *v5 = 136446466;
    *(v5 + 4) = sub_19202B8CC(0xD000000000000031, 0x800000019224B470, &v11);
    *(v5 + 12) = 2114;
    v8 = a1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 14) = v9;
    *v6 = v9;
    _os_log_impl(&dword_192028000, oslog, v4, "%{public}s - remoteObjectProxy error: %{public}@", v5, 0x16u);
    sub_192033970(v6, &qword_1EADEEDF0, &qword_1922319C0);
    MEMORY[0x193B0C7F0](v6, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x193B0C7F0](v7, -1, -1);
    MEMORY[0x193B0C7F0](v5, -1, -1);
  }
}

void sub_192122CE8(NSObject *a1)
{
  if (a1)
  {
    v2 = a1;
    if (qword_1ED74C6B0 != -1)
    {
      swift_once();
    }

    v3 = sub_1922258B0();
    __swift_project_value_buffer(v3, qword_1ED74CCC8);
    v4 = a1;
    v5 = sub_192225890();
    v6 = sub_192227F90();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v18 = v9;
      *v7 = 136446466;
      *(v7 + 4) = sub_19202B8CC(0xD000000000000031, 0x800000019224B470, &v18);
      *(v7 + 12) = 2114;
      v10 = a1;
      v11 = _swift_stdlib_bridgeErrorToNSError();
      *(v7 + 14) = v11;
      *v8 = v11;
      _os_log_impl(&dword_192028000, v5, v6, "%{public}s - error reloading supported intents: %{public}@", v7, 0x16u);
      sub_192033970(v8, &qword_1EADEEDF0, &qword_1922319C0);
      MEMORY[0x193B0C7F0](v8, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v9);
      MEMORY[0x193B0C7F0](v9, -1, -1);
      MEMORY[0x193B0C7F0](v7, -1, -1);

      return;
    }

    v16 = a1;
  }

  else
  {
    if (qword_1ED74C6B0 != -1)
    {
      swift_once();
    }

    v12 = sub_1922258B0();
    __swift_project_value_buffer(v12, qword_1ED74CCC8);
    oslog = sub_192225890();
    v13 = sub_192227F90();
    if (os_log_type_enabled(oslog, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v18 = v15;
      *v14 = 136446210;
      *(v14 + 4) = sub_19202B8CC(0xD000000000000031, 0x800000019224B470, &v18);
      _os_log_impl(&dword_192028000, oslog, v13, "%{public}s - success", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v15);
      MEMORY[0x193B0C7F0](v15, -1, -1);
      MEMORY[0x193B0C7F0](v14, -1, -1);

      return;
    }

    v16 = oslog;
  }
}

double sub_192123014(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEDF8, &qword_19222B5B0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v11 - v6;
  v8 = sub_192227CF0();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v2;
  v9[5] = a1;
  v9[6] = a2;

  sub_19211CA04(0, 0, v7, &unk_1922349D0, v9);

  return result;
}

uint64_t sub_192123138(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[11] = a5;
  v6[12] = a6;
  v6[10] = a4;
  v7 = sub_192227710();
  v6[13] = v7;
  v6[14] = *(v7 - 8);
  v6[15] = swift_task_alloc();
  v8 = sub_192227790();
  v6[16] = v8;
  v6[17] = *(v8 - 8);
  v6[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_192123258, 0, 0);
}

uint64_t sub_192123258()
{
  v1 = swift_task_alloc();
  *(v0 + 152) = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0520, &qword_1922349E0);
  *v1 = v0;
  v1[1] = sub_192123340;
  v3 = *(v0 + 80);

  return MEMORY[0x1EEE6DE38](v0 + 64, 0, 0, 0xD000000000000017, 0x800000019224B1E0, sub_19212B53C, v3, v2);
}

uint64_t sub_192123340()
{
  *(*v1 + 160) = v0;

  if (v0)
  {
    v2 = sub_1921236BC;
  }

  else
  {
    v2 = sub_192123454;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_192123454()
{
  v1 = v0[8];
  v2 = v0[18];
  v3 = v0[15];
  v13 = v0[17];
  v14 = v0[16];
  v11 = v0[13];
  v5 = v0[11];
  v4 = v0[12];
  v10 = v0[20] != 0;
  v12 = v0[14];
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  *(v6 + 32) = v1;
  *(v6 + 40) = v10;

  v0[6] = sub_19212B420;
  v0[7] = v6;
  v0[2] = MEMORY[0x1E69E9820];
  v0[3] = 1107296256;
  v0[4] = sub_19202AB80;
  v0[5] = &block_descriptor_163;
  v7 = _Block_copy(v0 + 2);

  sub_192227740();
  v0[9] = MEMORY[0x1E69E7CC0];
  sub_19202A7F0(&qword_1ED74C620, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEDE8, &unk_19222B5A0);
  sub_19202A880(&qword_1ED74C610, &qword_1EADEEDE8, &unk_19222B5A0);
  sub_1922282F0();
  MEMORY[0x193B0B040](0, v2, v3, v7);
  _Block_release(v7);
  sub_19212B414(v1, v10);
  (*(v12 + 8))(v3, v11);
  (*(v13 + 8))(v2, v14);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1921236BC()
{
  v1 = v0[20];
  v2 = v0[20];
  v3 = v0[18];
  v4 = v0[15];
  v13 = v0[17];
  v14 = v0[16];
  v11 = v0[13];
  v6 = v0[11];
  v5 = v0[12];
  v12 = v0[14];
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = v5;
  *(v7 + 32) = v2;
  *(v7 + 40) = v2 != 0;
  v0[6] = sub_19212B420;
  v0[7] = v7;
  v0[2] = MEMORY[0x1E69E9820];
  v0[3] = 1107296256;
  v0[4] = sub_19202AB80;
  v0[5] = &block_descriptor_163;
  v8 = _Block_copy(v0 + 2);

  sub_192227740();
  v0[9] = MEMORY[0x1E69E7CC0];
  sub_19202A7F0(&qword_1ED74C620, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEDE8, &unk_19222B5A0);
  sub_19202A880(&qword_1ED74C610, &qword_1EADEEDE8, &unk_19222B5A0);
  sub_1922282F0();
  MEMORY[0x193B0B040](0, v3, v4, v8);
  _Block_release(v8);
  sub_19212B414(v2, v2 != 0);
  (*(v12 + 8))(v4, v11);
  (*(v13 + 8))(v3, v14);

  v9 = v0[1];

  return v9();
}

uint64_t sub_19212393C()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0520, &qword_1922349E0);
  *v1 = v0;
  v1[1] = sub_192123A24;
  v3 = *(v0 + 24);

  return MEMORY[0x1EEE6DE38](v0 + 16, 0, 0, 0xD000000000000017, 0x800000019224B1E0, sub_19212AA84, v3, v2);
}

uint64_t sub_192123A24()
{
  *(*v1 + 40) = v0;

  if (v0)
  {
    v2 = sub_192123B54;
  }

  else
  {
    v2 = sub_192123B38;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

void sub_192123B6C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  os_unfair_lock_lock(*(v4 + 16));
  sub_192123BE8(a2, a1);
  v5 = *(v4 + 16);

  os_unfair_lock_unlock(v5);
}

void sub_192123BE8(uint64_t a1, uint64_t a2)
{
  v55 = sub_192227710();
  v54 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v52 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_192227790();
  v51 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v50 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0550, &qword_192234AD0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v46 - v9;
  v56 = sub_19202B38C();
  v11 = *(v7 + 16);
  v59 = a2;
  v57 = v11;
  v11(v10, a2, v6);
  v12 = *(v7 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  v14 = *(v7 + 32);
  v49 = (v12 + 24) & ~v12;
  v58 = v14;
  v14(v13 + v49, v10, v6);
  v66 = sub_19212AF08;
  v67 = v13;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v64 = sub_1921BBB98;
  v65 = &block_descriptor_121;
  v15 = _Block_copy(&aBlock);
  v60 = a1;

  v16 = v56;
  v17 = [v56 remoteObjectProxyWithErrorHandler_];
  _Block_release(v15);

  sub_1922282B0();
  swift_unknownObjectRelease();
  sub_19202A98C(v68, &aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0538, &unk_192234A88);
  if (swift_dynamicCast())
  {
    v18 = *&v62[0];
    v57(v10, v59, v6);
    v19 = v49;
    v20 = swift_allocObject();
    *(v20 + 16) = v60;
    v58(v20 + v19, v10, v6);
    v66 = sub_19212B070;
    v67 = v20;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    v64 = sub_192125A50;
    v65 = &block_descriptor_133;
    v21 = _Block_copy(&aBlock);

    [v18 _loadCurrentConfigurations_];
    _Block_release(v21);
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(v68);
  }

  else
  {
    v48 = v7 + 16;
    v56 = v12;
    v46 = v8;
    v49 = v6;
    if (qword_1ED74C6B0 != -1)
    {
      swift_once();
    }

    v47 = ~v56;
    v22 = sub_1922258B0();
    __swift_project_value_buffer(v22, qword_1ED74CCC8);
    v23 = sub_192225890();
    v24 = sub_192227F90();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *&aBlock = v26;
      *v25 = 136446210;
      *(v25 + 4) = sub_19202B8CC(0xD000000000000017, 0x800000019224B1E0, &aBlock);
      __swift_destroy_boxed_opaque_existential_1(v26);
      MEMORY[0x193B0C7F0](v26, -1, -1);
      MEMORY[0x193B0C7F0](v25, -1, -1);
    }

    *&aBlock = 0;
    *(&aBlock + 1) = 0xE000000000000000;
    sub_192228400();
    MEMORY[0x193B0A990](0xD000000000000017, 0x800000019224B1E0);
    MEMORY[0x193B0A990](0xD000000000000047, 0x800000019224B3E0);
    v27 = aBlock;
    v28 = *MEMORY[0x1E69941E8];
    v29 = sub_19214036C(MEMORY[0x1E69E7CC0]);
    v30 = sub_192227960();
    v32 = v31;
    v65 = MEMORY[0x1E69E6158];
    aBlock = v27;
    sub_19203BEDC(&aBlock, v62);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v61 = v29;
    sub_19213DB28(v62, v30, v32, isUniquelyReferenced_nonNull_native);

    v34 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v35 = sub_192227830();

    v36 = [v34 initWithDomain:v28 code:1200 userInfo:v35];

    v37 = v49;
    v57(v10, v59, v49);
    v38 = (v56 + 16) & v47;
    v39 = (v46 + v38 + 7) & 0xFFFFFFFFFFFFFFF8;
    v40 = swift_allocObject();
    v58(v40 + v38, v10, v37);
    *(v40 + v39) = v36;
    v66 = sub_19212AF88;
    v67 = v40;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    v64 = sub_19202AB80;
    v65 = &block_descriptor_127;
    v41 = _Block_copy(&aBlock);
    v42 = v36;
    v43 = v50;
    sub_192227740();
    *&v62[0] = MEMORY[0x1E69E7CC0];
    sub_19202A7F0(&qword_1ED74C620, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEDE8, &unk_19222B5A0);
    sub_19202A880(&qword_1ED74C610, &qword_1EADEEDE8, &unk_19222B5A0);
    v44 = v52;
    v45 = v55;
    sub_1922282F0();
    MEMORY[0x193B0B040](0, v43, v44, v41);
    _Block_release(v41);

    (*(v54 + 8))(v44, v45);
    (*(v51 + 8))(v43, v53);
    __swift_destroy_boxed_opaque_existential_1(v68);
  }
}

double sub_192124524(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_192227710();
  v40 = *(v6 - 8);
  v41 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v38 = v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_192227790();
  v37 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v36 = v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0550, &qword_192234AD0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v34 - v12;
  if (qword_1ED74C6B0 != -1)
  {
    swift_once();
  }

  v14 = sub_1922258B0();
  __swift_project_value_buffer(v14, qword_1ED74CCC8);
  v15 = a1;
  v16 = sub_192225890();
  v17 = sub_192227F90();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v34[1] = a2;
    v20 = v19;
    v21 = swift_slowAlloc();
    v35 = a3;
    v22 = v21;
    aBlock[0] = v21;
    *v18 = 136446466;
    *(v18 + 4) = sub_19202B8CC(0xD000000000000017, 0x800000019224B1E0, aBlock);
    *(v18 + 12) = 2114;
    v23 = a1;
    v24 = _swift_stdlib_bridgeErrorToNSError();
    *(v18 + 14) = v24;
    *v20 = v24;
    _os_log_impl(&dword_192028000, v16, v17, "%{public}s - remoteObjectProxy error: %{public}@", v18, 0x16u);
    sub_192033970(v20, &qword_1EADEEDF0, &qword_1922319C0);
    MEMORY[0x193B0C7F0](v20, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v22);
    v25 = v22;
    a3 = v35;
    MEMORY[0x193B0C7F0](v25, -1, -1);
    MEMORY[0x193B0C7F0](v18, -1, -1);
  }

  (*(v10 + 16))(v13, a3, v9);
  v26 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v27 = swift_allocObject();
  (*(v10 + 32))(v27 + v26, v13, v9);
  *(v27 + ((v11 + v26 + 7) & 0xFFFFFFFFFFFFFFF8)) = a1;
  aBlock[4] = sub_19212B4CC;
  aBlock[5] = v27;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_19202AB80;
  aBlock[3] = &block_descriptor_156;
  v28 = _Block_copy(aBlock);
  v29 = a1;
  v30 = v36;
  sub_192227740();
  v42 = MEMORY[0x1E69E7CC0];
  sub_19202A7F0(&qword_1ED74C620, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEDE8, &unk_19222B5A0);
  sub_19202A880(&qword_1ED74C610, &qword_1EADEEDE8, &unk_19222B5A0);
  v31 = v38;
  v32 = v41;
  sub_1922282F0();
  MEMORY[0x193B0B040](0, v30, v31, v28);
  _Block_release(v28);
  (*(v40 + 8))(v31, v32);
  (*(v37 + 8))(v30, v39);

  return result;
}

uint64_t sub_192124A5C(uint64_t a1, void *a2)
{
  v2 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0550, &qword_192234AD0);
  return sub_192227C80();
}

double sub_192124AAC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v34 = a4;
  v30 = a1;
  v6 = sub_192227710();
  v33 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_192227790();
  v31 = *(v9 - 8);
  v32 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0550, &qword_192234AD0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v30 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEDF8, &qword_19222B5B0);
  v18 = MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v30 - v19;
  if (a2)
  {
    v30 = *(a3 + 16);
    (*(v13 + 16))(v16, v34, v12, v18);
    v21 = (*(v13 + 80) + 16) & ~*(v13 + 80);
    v22 = swift_allocObject();
    (*(v13 + 32))(v22 + v21, v16, v12);
    *(v22 + ((v14 + v21 + 7) & 0xFFFFFFFFFFFFFFF8)) = a2;
    aBlock[4] = sub_19212B210;
    aBlock[5] = v22;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_19202AB80;
    aBlock[3] = &block_descriptor_143;
    v23 = _Block_copy(aBlock);
    v24 = a2;
    v25 = a2;
    sub_192227740();
    v35 = MEMORY[0x1E69E7CC0];
    sub_19202A7F0(&qword_1ED74C620, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEDE8, &unk_19222B5A0);
    sub_19202A880(&qword_1ED74C610, &qword_1EADEEDE8, &unk_19222B5A0);
    sub_1922282F0();
    MEMORY[0x193B0B040](0, v11, v8, v23);
    _Block_release(v23);

    (*(v33 + 8))(v8, v6);
    (*(v31 + 8))(v11, v32);
  }

  else
  {
    v26 = sub_192227CF0();
    (*(*(v26 - 8) + 56))(v20, 1, 1, v26);
    (*(v13 + 16))(v16, v34, v12);
    v27 = (*(v13 + 80) + 48) & ~*(v13 + 80);
    v28 = swift_allocObject();
    *(v28 + 2) = 0;
    *(v28 + 3) = 0;
    *(v28 + 4) = v30;
    *(v28 + 5) = a3;
    (*(v13 + 32))(&v28[v27], v16, v12);

    sub_19211CA04(0, 0, v20, &unk_192234AE0, v28);
  }

  return result;
}

uint64_t sub_192124F98(int a1, id a2)
{
  v2 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0550, &qword_192234AD0);
  return sub_192227C80();
}

uint64_t sub_192124FEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[23] = a5;
  v6[24] = a6;
  v6[22] = a4;
  v7 = sub_192227710();
  v6[25] = v7;
  v6[26] = *(v7 - 8);
  v6[27] = swift_task_alloc();
  v8 = sub_192227790();
  v6[28] = v8;
  v6[29] = *(v8 - 8);
  v6[30] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0550, &qword_192234AD0);
  v6[31] = v9;
  v10 = *(v9 - 8);
  v6[32] = v10;
  v6[33] = *(v10 + 64);
  v6[34] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19212517C, 0, 0);
}

uint64_t sub_19212517C(__n128 a1)
{
  v2 = v1[22];
  if (v2 >> 62)
  {
    result = sub_192228340();
    v1[35] = result;
    if (result)
    {
LABEL_3:
      if (result < 1)
      {
        __break(1u);
      }

      else
      {
        v4 = v1[22];
        v5 = MEMORY[0x1E69E7CC0];
        v1[36] = 0;
        v1[37] = v5;
        if ((v4 & 0xC000000000000001) != 0)
        {
          v6 = MEMORY[0x193B0B410](0, a1);
        }

        else
        {
          v6 = *(v4 + 32);
        }

        v1[38] = v6;
        v7 = v6;
        v8 = swift_task_alloc();
        v1[39] = v8;
        *v8 = v1;
        v8[1] = sub_192125504;

        return sub_1920D8C04((v1 + 2), v7);
      }

      return result;
    }
  }

  else
  {
    result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v1[35] = result;
    if (result)
    {
      goto LABEL_3;
    }
  }

  v9 = v1[33];
  v10 = v1[34];
  v12 = v1[31];
  v11 = v1[32];
  v13 = v1[30];
  v14 = v1[27];
  v22 = v1[29];
  v23 = v1[28];
  v20 = v1[25];
  v21 = v1[26];
  (*(v11 + 16))(v10, v1[24], v12, a1);
  v15 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v16 = swift_allocObject();
  (*(v11 + 32))(v16 + v15, v10, v12);
  v17 = MEMORY[0x1E69E7CC0];
  *(v16 + ((v9 + v15 + 7) & 0xFFFFFFFFFFFFFFF8)) = MEMORY[0x1E69E7CC0];
  v1[19] = sub_19212B2A0;
  v1[20] = v16;
  v1[15] = MEMORY[0x1E69E9820];
  v1[16] = 1107296256;
  v1[17] = sub_19202AB80;
  v1[18] = &block_descriptor_149;
  v18 = _Block_copy(v1 + 15);
  sub_192227740();
  v1[21] = v17;
  sub_19202A7F0(&qword_1ED74C620, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEDE8, &unk_19222B5A0);
  sub_19202A880(&qword_1ED74C610, &qword_1EADEEDE8, &unk_19222B5A0);
  sub_1922282F0();
  MEMORY[0x193B0B040](0, v13, v14, v18);
  _Block_release(v18);
  (*(v21 + 8))(v14, v20);
  (*(v22 + 8))(v13, v23);

  v19 = v1[1];

  return v19();
}

uint64_t sub_192125504()
{

  return MEMORY[0x1EEE6DFA0](sub_192125600, 0, 0);
}

uint64_t sub_192125600()
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v2 = *(v0 + 296);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1920C3150(0, *(v2 + 2) + 1, 1, *(v0 + 296));
  }

  v4 = *(v2 + 2);
  v3 = *(v2 + 3);
  if (v4 >= v3 >> 1)
  {
    v2 = sub_1920C3150((v3 > 1), v4 + 1, 1, v2);
  }

  v6 = *(v0 + 280);
  v5 = *(v0 + 288);

  *(v2 + 2) = v4 + 1;
  v7 = &v2[104 * v4];
  v8 = *(v0 + 16);
  v9 = *(v0 + 48);
  *(v7 + 3) = *(v0 + 32);
  *(v7 + 4) = v9;
  *(v7 + 2) = v8;
  v10 = *(v0 + 64);
  v11 = *(v0 + 80);
  v12 = *(v0 + 96);
  *(v7 + 16) = *(v0 + 112);
  *(v7 + 6) = v11;
  *(v7 + 7) = v12;
  *(v7 + 5) = v10;
  if (v5 + 1 == v6)
  {
    v14 = *(v0 + 264);
    v13 = *(v0 + 272);
    v16 = *(v0 + 248);
    v15 = *(v0 + 256);
    v17 = *(v0 + 240);
    v31 = *(v0 + 232);
    v32 = *(v0 + 224);
    v28 = *(v0 + 216);
    v29 = *(v0 + 200);
    v30 = *(v0 + 208);
    (*(v15 + 16))(v13, *(v0 + 192), v16);
    v18 = (*(v15 + 80) + 16) & ~*(v15 + 80);
    v19 = swift_allocObject();
    (*(v15 + 32))(v19 + v18, v13, v16);
    *(v19 + ((v14 + v18 + 7) & 0xFFFFFFFFFFFFFFF8)) = v2;
    *(v0 + 152) = sub_19212B2A0;
    *(v0 + 160) = v19;
    *(v0 + 120) = MEMORY[0x1E69E9820];
    *(v0 + 128) = 1107296256;
    *(v0 + 136) = sub_19202AB80;
    *(v0 + 144) = &block_descriptor_149;
    v20 = _Block_copy((v0 + 120));
    sub_192227740();
    *(v0 + 168) = MEMORY[0x1E69E7CC0];
    sub_19202A7F0(&qword_1ED74C620, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEDE8, &unk_19222B5A0);
    sub_19202A880(&qword_1ED74C610, &qword_1EADEEDE8, &unk_19222B5A0);
    sub_1922282F0();
    MEMORY[0x193B0B040](0, v17, v28, v20);
    _Block_release(v20);
    (*(v30 + 8))(v28, v29);
    (*(v31 + 8))(v17, v32);

    v21 = *(v0 + 8);

    return v21();
  }

  else
  {
    v23 = *(v0 + 288) + 1;
    *(v0 + 288) = v23;
    *(v0 + 296) = v2;
    v24 = *(v0 + 176);
    if ((v24 & 0xC000000000000001) != 0)
    {
      v25 = MEMORY[0x193B0B410]();
    }

    else
    {
      v25 = *(v24 + 8 * v23 + 32);
    }

    *(v0 + 304) = v25;
    v26 = v25;
    v27 = swift_task_alloc();
    *(v0 + 312) = v27;
    *v27 = v0;
    v27[1] = sub_192125504;

    return sub_1920D8C04(v0 + 16, v26);
  }
}

uint64_t sub_1921259FC(uint64_t a1, uint64_t a2)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0550, &qword_192234AD0);
  return sub_192227C90();
}

void sub_192125A50(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  sub_19202A7A8(0, &qword_1ED74BB40, 0x1E6994370);
  v5 = sub_192227B70();

  v6 = a3;
  v4(v5, a3);
}

void sub_192125B00(void *a1)
{
  if (qword_1ED74C6B0 != -1)
  {
    swift_once();
  }

  v2 = sub_1922258B0();
  __swift_project_value_buffer(v2, qword_1ED74CCC8);
  v3 = a1;
  oslog = sub_192225890();
  v4 = sub_192227F90();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v11 = v7;
    *v5 = 136446466;
    *(v5 + 4) = sub_19202B8CC(0xD000000000000018, 0x800000019224B430, &v11);
    *(v5 + 12) = 2114;
    v8 = a1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 14) = v9;
    *v6 = v9;
    _os_log_impl(&dword_192028000, oslog, v4, "%{public}s - remoteObjectProxy error: %{public}@", v5, 0x16u);
    sub_192033970(v6, &qword_1EADEEDF0, &qword_1922319C0);
    MEMORY[0x193B0C7F0](v6, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x193B0C7F0](v7, -1, -1);
    MEMORY[0x193B0C7F0](v5, -1, -1);
  }
}

void sub_192125CBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *(v6 + 24);
  os_unfair_lock_lock(*(v13 + 16));
  sub_192125D6C(v6, a5, a6, a1, a2, a3, a4);
  v14 = *(v13 + 16);

  os_unfair_lock_unlock(v14);
}

void sub_192125D6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v45 = a7;
  v12 = sub_192227710();
  v50 = *(v12 - 8);
  v51 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v48 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_192227790();
  v47 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v46 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_19202B38C();
  v16 = swift_allocObject();
  v16[2] = a1;
  v16[3] = a2;
  v16[4] = a3;
  v57 = sub_19212AE7C;
  v58 = v16;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v55 = sub_1921BBB98;
  v56 = &block_descriptor_82;
  v17 = _Block_copy(&aBlock);

  v18 = [v15 remoteObjectProxyWithErrorHandler_];
  _Block_release(v17);

  sub_1922282B0();
  swift_unknownObjectRelease();
  sub_19202A98C(v59, &aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0538, &unk_192234A88);
  if (swift_dynamicCast())
  {
    v19 = *&v53[0];
    v20 = sub_192227930();
    v21 = sub_192227930();
    v22 = swift_allocObject();
    v22[2] = a1;
    v22[3] = a2;
    v22[4] = a3;
    v22[5] = a4;
    v22[6] = a5;
    v57 = sub_19212AE88;
    v58 = v22;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    v55 = sub_19202AF14;
    v56 = &block_descriptor_94;
    v23 = _Block_copy(&aBlock);

    [v19 _reloadTimelinesOfKind_inBundle_completion_];
    _Block_release(v23);
    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_1(v59);
  }

  else
  {
    v45 = a2;
    if (qword_1ED74C6B0 != -1)
    {
      swift_once();
    }

    v24 = sub_1922258B0();
    __swift_project_value_buffer(v24, qword_1ED74CCC8);
    v25 = sub_192225890();
    v26 = sub_192227F90();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *&aBlock = v28;
      *v27 = 136446210;
      *(v27 + 4) = sub_19202B8CC(0xD00000000000002CLL, 0x800000019224B3B0, &aBlock);
      __swift_destroy_boxed_opaque_existential_1(v28);
      MEMORY[0x193B0C7F0](v28, -1, -1);
      MEMORY[0x193B0C7F0](v27, -1, -1);
    }

    *&aBlock = 0;
    *(&aBlock + 1) = 0xE000000000000000;
    sub_192228400();
    MEMORY[0x193B0A990](0xD00000000000002CLL, 0x800000019224B3B0);
    MEMORY[0x193B0A990](0xD000000000000047, 0x800000019224B3E0);
    v29 = aBlock;
    v30 = *MEMORY[0x1E69941E8];
    v31 = sub_19214036C(MEMORY[0x1E69E7CC0]);
    v32 = sub_192227960();
    v34 = v33;
    v56 = MEMORY[0x1E69E6158];
    aBlock = v29;
    sub_19203BEDC(&aBlock, v53);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v52 = v31;
    sub_19213DB28(v53, v32, v34, isUniquelyReferenced_nonNull_native);

    v36 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v37 = sub_192227830();

    v38 = [v36 initWithDomain:v30 code:1200 userInfo:v37];

    v39 = swift_allocObject();
    v39[2] = v45;
    v39[3] = a3;
    v39[4] = v38;
    v57 = sub_19212B4C0;
    v58 = v39;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    v55 = sub_19202AB80;
    v56 = &block_descriptor_88;
    v40 = _Block_copy(&aBlock);

    v41 = v38;
    v42 = v46;
    sub_192227740();
    *&v53[0] = MEMORY[0x1E69E7CC0];
    sub_19202A7F0(&qword_1ED74C620, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEDE8, &unk_19222B5A0);
    sub_19202A880(&qword_1ED74C610, &qword_1EADEEDE8, &unk_19222B5A0);
    v43 = v48;
    v44 = v51;
    sub_1922282F0();
    MEMORY[0x193B0B040](0, v42, v43, v40);
    _Block_release(v40);

    (*(v50 + 8))(v43, v44);
    (*(v47 + 8))(v42, v49);
    __swift_destroy_boxed_opaque_existential_1(v59);
  }
}

double sub_192126528(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_192227710();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_192227790();
  v37 = *(v12 - 8);
  v38 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ED74C6B0 != -1)
  {
    swift_once();
  }

  v15 = sub_1922258B0();
  __swift_project_value_buffer(v15, qword_1ED74CCC8);
  v16 = a1;
  v17 = sub_192225890();
  v18 = sub_192227F90();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v36 = v9;
    v20 = v19;
    v21 = swift_slowAlloc();
    v35 = a4;
    v22 = a3;
    v23 = v21;
    v24 = swift_slowAlloc();
    v34 = a2;
    v25 = v24;
    aBlock[0] = v24;
    *v20 = 136446466;
    *(v20 + 4) = sub_19202B8CC(0xD00000000000002CLL, 0x800000019224B3B0, aBlock);
    *(v20 + 12) = 2114;
    v26 = a1;
    v27 = _swift_stdlib_bridgeErrorToNSError();
    *(v20 + 14) = v27;
    *v23 = v27;
    _os_log_impl(&dword_192028000, v17, v18, "%{public}s - remoteObjectProxy error: %{public}@", v20, 0x16u);
    sub_192033970(v23, &qword_1EADEEDF0, &qword_1922319C0);
    v28 = v23;
    a3 = v22;
    a4 = v35;
    MEMORY[0x193B0C7F0](v28, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v25);
    MEMORY[0x193B0C7F0](v25, -1, -1);
    v29 = v20;
    v9 = v36;
    MEMORY[0x193B0C7F0](v29, -1, -1);
  }

  v30 = swift_allocObject();
  v30[2] = a3;
  v30[3] = a4;
  v30[4] = a1;
  aBlock[4] = sub_19212AE98;
  aBlock[5] = v30;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_19202AB80;
  aBlock[3] = &block_descriptor_106;
  v31 = _Block_copy(aBlock);
  v32 = a1;

  sub_192227740();
  v39 = MEMORY[0x1E69E7CC0];
  sub_19202A7F0(&qword_1ED74C620, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEDE8, &unk_19222B5A0);
  sub_19202A880(&qword_1ED74C610, &qword_1EADEEDE8, &unk_19222B5A0);
  sub_1922282F0();
  MEMORY[0x193B0B040](0, v14, v11, v31);
  _Block_release(v31);
  (*(v9 + 8))(v11, v8);
  (*(v37 + 8))(v14, v38);

  return result;
}

double sub_192126988(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (a1)
  {
    v11 = a1;
    v12 = a1;
    if (qword_1ED74C6B0 != -1)
    {
      swift_once();
    }

    v13 = sub_1922258B0();
    __swift_project_value_buffer(v13, qword_1ED74CCC8);
    v14 = v11;

    v15 = sub_192225890();
    v16 = sub_192227F90();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v31 = a2;
      v32 = swift_slowAlloc();
      v19 = a3;
      v20 = a4;
      v21 = v32;
      *v17 = 136446722;
      *(v17 + 4) = sub_19202B8CC(0xD00000000000002CLL, 0x800000019224B3B0, &v32);
      *(v17 + 12) = 2082;
      *(v17 + 14) = sub_19202B8CC(a5, a6, &v32);
      *(v17 + 22) = 2114;
      v22 = v11;
      v23 = _swift_stdlib_bridgeErrorToNSError();
      *(v17 + 24) = v23;
      *v18 = v23;
      _os_log_impl(&dword_192028000, v15, v16, "%{public}s - error reloading timelines of kind '%{public}s': %{public}@", v17, 0x20u);
      sub_192033970(v18, &qword_1EADEEDF0, &qword_1922319C0);
      MEMORY[0x193B0C7F0](v18, -1, -1);
      swift_arrayDestroy();
      v24 = v21;
      a4 = v20;
      a3 = v19;
      a2 = v31;
      MEMORY[0x193B0C7F0](v24, -1, -1);
      MEMORY[0x193B0C7F0](v17, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    if (qword_1ED74C6B0 != -1)
    {
      swift_once();
    }

    v25 = sub_1922258B0();
    __swift_project_value_buffer(v25, qword_1ED74CCC8);

    v26 = sub_192225890();
    v27 = sub_192227FB0();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v32 = v29;
      *v28 = 136446466;
      *(v28 + 4) = sub_19202B8CC(0xD00000000000002CLL, 0x800000019224B3B0, &v32);
      *(v28 + 12) = 2082;
      *(v28 + 14) = sub_19202B8CC(a5, a6, &v32);
      _os_log_impl(&dword_192028000, v26, v27, "%{public}s - reloaded timelines of kind '%{public}s'", v28, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x193B0C7F0](v29, -1, -1);
      MEMORY[0x193B0C7F0](v28, -1, -1);
    }

    v11 = 0;
  }

  return sub_192126D38(a2, a3, a4, v11);
}

double sub_192126D38(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = sub_192227710();
  v19 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_192227790();
  v10 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = swift_allocObject();
  v13[2] = a2;
  v13[3] = a3;
  v13[4] = a4;
  aBlock[4] = sub_19212AE98;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_19202AB80;
  aBlock[3] = &block_descriptor_100;
  v14 = _Block_copy(aBlock);

  v15 = a4;
  sub_192227740();
  v20 = MEMORY[0x1E69E7CC0];
  sub_19202A7F0(&qword_1ED74C620, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEDE8, &unk_19222B5A0);
  sub_19202A880(&qword_1ED74C610, &qword_1EADEEDE8, &unk_19222B5A0);
  sub_1922282F0();
  MEMORY[0x193B0B040](0, v12, v9, v14);
  _Block_release(v14);
  (*(v19 + 8))(v9, v7);
  (*(v10 + 8))(v12, v18);

  return result;
}

void sub_192127024(void (*a1)(uint64_t))
{
  v3 = *(v1 + 24);
  os_unfair_lock_lock(*(v3 + 16));
  a1(v1);
  v4 = *(v3 + 16);

  os_unfair_lock_unlock(v4);
}

uint64_t sub_19212709C()
{
  v0 = sub_19202B38C();
  v15 = sub_192127370;
  v16 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v12 = 1107296256;
  v13 = sub_1921BBB98;
  v14 = &block_descriptor_73;
  v1 = _Block_copy(&aBlock);
  v2 = [v0 remoteObjectProxyWithErrorHandler_];
  _Block_release(v1);

  sub_1922282B0();
  swift_unknownObjectRelease();
  sub_19202A98C(v17, &aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0538, &unk_192234A88);
  if (swift_dynamicCast())
  {
    v15 = sub_19202F84C;
    v16 = 0;
    aBlock = MEMORY[0x1E69E9820];
    v12 = 1107296256;
    v13 = sub_19202AF14;
    v14 = &block_descriptor_76;
    v3 = _Block_copy(&aBlock);
    [v10 _reloadAllTimelines_];
    _Block_release(v3);
    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_1ED74C6B0 != -1)
    {
      swift_once();
    }

    v4 = sub_1922258B0();
    __swift_project_value_buffer(v4, qword_1ED74CCC8);
    v5 = sub_192225890();
    v6 = sub_192227F90();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      aBlock = v8;
      *v7 = 136446210;
      *(v7 + 4) = sub_19202B8CC(0xD000000000000014, 0x800000019224B390, &aBlock);
      __swift_destroy_boxed_opaque_existential_1(v8);
      MEMORY[0x193B0C7F0](v8, -1, -1);
      MEMORY[0x193B0C7F0](v7, -1, -1);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v17);
}

void sub_192127370(void *a1)
{
  if (qword_1ED74C6B0 != -1)
  {
    swift_once();
  }

  v2 = sub_1922258B0();
  __swift_project_value_buffer(v2, qword_1ED74CCC8);
  v3 = a1;
  oslog = sub_192225890();
  v4 = sub_192227F90();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v11 = v7;
    *v5 = 136446466;
    *(v5 + 4) = sub_19202B8CC(0xD000000000000014, 0x800000019224B390, &v11);
    *(v5 + 12) = 2114;
    v8 = a1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 14) = v9;
    *v6 = v9;
    _os_log_impl(&dword_192028000, oslog, v4, "%{public}s - remoteObjectProxy error: %{public}@", v5, 0x16u);
    sub_192033970(v6, &qword_1EADEEDF0, &qword_1922319C0);
    MEMORY[0x193B0C7F0](v6, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x193B0C7F0](v7, -1, -1);
    MEMORY[0x193B0C7F0](v5, -1, -1);
  }
}

uint64_t WidgetCenter.deinit()
{

  return v0;
}

uint64_t WidgetCenter.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void sub_1921275BC(void *a1)
{
  if (qword_1ED74C6B0 != -1)
  {
    swift_once();
  }

  v2 = sub_1922258B0();
  __swift_project_value_buffer(v2, qword_1ED74CCC8);
  v3 = a1;
  oslog = sub_192225890();
  v4 = sub_192227F90();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v11 = v7;
    *v5 = 136446466;
    *(v5 + 4) = sub_19202B8CC(0xD00000000000001DLL, 0x800000019224B370, &v11);
    *(v5 + 12) = 2114;
    v8 = a1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 14) = v9;
    *v6 = v9;
    _os_log_impl(&dword_192028000, oslog, v4, "%{public}s - remoteObjectProxy error: %{public}@", v5, 0x16u);
    sub_192033970(v6, &qword_1EADEEDF0, &qword_1922319C0);
    MEMORY[0x193B0C7F0](v6, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x193B0C7F0](v7, -1, -1);
    MEMORY[0x193B0C7F0](v5, -1, -1);
  }
}

uint64_t sub_192127778()
{
  v1 = *(*v0 + 48);
  *(*v0 + 176) = v1;
  if (v1)
  {
    v2 = sub_192127A50;
  }

  else
  {
    v2 = sub_192127888;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_192127888()
{
  v11 = v0;

  if (qword_1ED74C6B0 != -1)
  {
    swift_once();
  }

  v1 = sub_1922258B0();
  __swift_project_value_buffer(v1, qword_1ED74CCC8);

  v2 = sub_192225890();
  v3 = sub_192227FB0();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = *(v0 + 152);
    v4 = *(v0 + 160);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v10 = v7;
    *v6 = 136446466;
    *(v6 + 4) = sub_19202B8CC(0xD00000000000001DLL, 0x800000019224B370, &v10);
    *(v6 + 12) = 2082;
    *(v6 + 14) = sub_19202B8CC(v5, v4, &v10);
    _os_log_impl(&dword_192028000, v2, v3, "%{public}s - invalidated relevances for widget of kind '%{public}s'", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x193B0C7F0](v7, -1, -1);
    MEMORY[0x193B0C7F0](v6, -1, -1);
  }

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_192127A50(uint64_t a1)
{
  v20 = v1;
  v2 = v1[21];
  swift_willThrow();

  if (qword_1ED74C6B0 != -1)
  {
    swift_once();
  }

  v3 = v1[22];
  v4 = sub_1922258B0();
  __swift_project_value_buffer(v4, qword_1ED74CCC8);

  v5 = v3;
  v6 = sub_192225890();
  v7 = sub_192227F90();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v1[22];
  if (v8)
  {
    v11 = v1[19];
    v10 = v1[20];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v19[0] = v14;
    *v12 = 136446722;
    *(v12 + 4) = sub_19202B8CC(0xD00000000000001DLL, 0x800000019224B370, v19);
    *(v12 + 12) = 2082;
    *(v12 + 14) = sub_19202B8CC(v11, v10, v19);
    *(v12 + 22) = 2114;
    v15 = v9;
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 24) = v16;
    *v13 = v16;
    _os_log_impl(&dword_192028000, v6, v7, "%{public}s - error invalidating relevances for widget of kind '%{public}s': %{public}@", v12, 0x20u);
    sub_192033970(v13, &qword_1EADEEDF0, &qword_1922319C0);
    MEMORY[0x193B0C7F0](v13, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x193B0C7F0](v14, -1, -1);
    MEMORY[0x193B0C7F0](v12, -1, -1);
  }

  else
  {
  }

  v17 = v1[1];

  return v17();
}

uint64_t sub_192127CAC(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF420, &unk_19222D820);
    v5 = swift_allocError();
    *v6 = a2;
    v7 = a2;

    return MEMORY[0x1EEE6DEE8](v4, v5);
  }

  else
  {
    v8 = *v3;

    return MEMORY[0x1EEE6DEE0](v8);
  }
}

void WidgetCenter.invalidateRelevances(ofKind:inBundle:completion:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + 24);
  os_unfair_lock_lock(*(v9 + 16));
  sub_192127DF0(v4, a1, a2, a3, a4);
  v10 = *(v9 + 16);

  os_unfair_lock_unlock(v10);
}

uint64_t sub_192127DF0(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEDF8, &qword_19222B5B0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v31 - v10;
  v12 = sub_19202B38C();
  aBlock[4] = sub_192128280;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1921BBB98;
  aBlock[3] = &block_descriptor_53;
  v13 = _Block_copy(aBlock);
  v14 = [v12 remoteObjectProxyWithErrorHandler_];
  _Block_release(v13);

  sub_1922282B0();
  swift_unknownObjectRelease();
  sub_19202A98C(aBlock, v33);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0538, &unk_192234A88);
  if (swift_dynamicCast())
  {
    v15 = aBlock[7];
    if (qword_1ED74C6B0 != -1)
    {
      swift_once();
    }

    v16 = sub_1922258B0();
    __swift_project_value_buffer(v16, qword_1ED74CCC8);

    v17 = sub_192225890();
    v18 = sub_192227FB0();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v31 = a4;
      v32 = a5;
      v20 = v19;
      v21 = swift_slowAlloc();
      v33[0] = v21;
      *v20 = 136446210;
      *(v20 + 4) = sub_19202B8CC(a2, a3, v33);
      _os_log_impl(&dword_192028000, v17, v18, "Invalidate widget relevances for %{public}s.", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v21);
      MEMORY[0x193B0C7F0](v21, -1, -1);
      v22 = v20;
      a4 = v31;
      a5 = v32;
      MEMORY[0x193B0C7F0](v22, -1, -1);
    }

    v23 = sub_192227CF0();
    (*(*(v23 - 8) + 56))(v11, 1, 1, v23);
    v24 = swift_allocObject();
    v24[2] = 0;
    v24[3] = 0;
    v24[4] = v15;
    v24[5] = a2;
    v24[6] = a3;
    v24[7] = a4;
    v24[8] = a5;

    swift_unknownObjectRetain();

    sub_19211CA04(0, 0, v11, &unk_192234AA8, v24);
    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_1ED74C6B0 != -1)
    {
      swift_once();
    }

    v25 = sub_1922258B0();
    __swift_project_value_buffer(v25, qword_1ED74CCC8);
    v26 = sub_192225890();
    v27 = sub_192227F90();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v33[0] = v29;
      *v28 = 136446210;
      *(v28 + 4) = sub_19202B8CC(0xD000000000000031, 0x800000019224B330, v33);
      __swift_destroy_boxed_opaque_existential_1(v29);
      MEMORY[0x193B0C7F0](v29, -1, -1);
      MEMORY[0x193B0C7F0](v28, -1, -1);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(aBlock);
}

void sub_192128280(void *a1)
{
  if (qword_1ED74C6B0 != -1)
  {
    swift_once();
  }

  v2 = sub_1922258B0();
  __swift_project_value_buffer(v2, qword_1ED74CCC8);
  v3 = a1;
  oslog = sub_192225890();
  v4 = sub_192227F90();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v11 = v7;
    *v5 = 136446466;
    *(v5 + 4) = sub_19202B8CC(0xD000000000000031, 0x800000019224B330, &v11);
    *(v5 + 12) = 2114;
    v8 = a1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 14) = v9;
    *v6 = v9;
    _os_log_impl(&dword_192028000, oslog, v4, "%{public}s - remoteObjectProxy error: %{public}@", v5, 0x16u);
    sub_192033970(v6, &qword_1EADEEDF0, &qword_1922319C0);
    MEMORY[0x193B0C7F0](v6, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x193B0C7F0](v7, -1, -1);
    MEMORY[0x193B0C7F0](v5, -1, -1);
  }
}

uint64_t sub_19212843C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[21] = a7;
  v8[22] = a8;
  v8[19] = a5;
  v8[20] = a6;
  v8[18] = a4;
  return MEMORY[0x1EEE6DFA0](sub_192128464, 0, 0);
}

uint64_t sub_192128464()
{
  v1 = v0[18];
  v2 = sub_192227930();
  v0[23] = v2;
  v3 = sub_192227930();
  v0[24] = v3;
  v0[2] = v0;
  v0[3] = sub_1921285B0;
  v4 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0548, &qword_192234AB0);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_192127CAC;
  v0[13] = &block_descriptor_60;
  v0[14] = v4;
  [v1 invalidateRelevancesOfKind:v2 inBundle:v3 completionHandler:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1921285B0()
{
  v1 = *(*v0 + 48);
  *(*v0 + 200) = v1;
  if (v1)
  {
    v2 = sub_19212888C;
  }

  else
  {
    v2 = sub_1921286C0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1921286C0()
{
  v12 = v0;
  v1 = *(v0 + 184);

  if (qword_1ED74C6B0 != -1)
  {
    swift_once();
  }

  v2 = sub_1922258B0();
  __swift_project_value_buffer(v2, qword_1ED74CCC8);

  v3 = sub_192225890();
  v4 = sub_192227FB0();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = *(v0 + 152);
    v5 = *(v0 + 160);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v11 = v8;
    *v7 = 136446466;
    *(v7 + 4) = sub_19202B8CC(0xD000000000000031, 0x800000019224B330, &v11);
    *(v7 + 12) = 2082;
    *(v7 + 14) = sub_19202B8CC(v6, v5, &v11);
    _os_log_impl(&dword_192028000, v3, v4, "%{public}s - invalidated relevances for widget of kind '%{public}s'", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x193B0C7F0](v8, -1, -1);
    MEMORY[0x193B0C7F0](v7, -1, -1);
  }

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_19212888C(uint64_t a1)
{
  v21 = v1;
  v2 = v1[24];
  v3 = v1[23];
  swift_willThrow();

  if (qword_1ED74C6B0 != -1)
  {
    swift_once();
  }

  v4 = v1[25];
  v5 = sub_1922258B0();
  __swift_project_value_buffer(v5, qword_1ED74CCC8);

  v6 = v4;
  v7 = sub_192225890();
  v8 = sub_192227F90();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v1[25];
  if (v9)
  {
    v12 = v1[19];
    v11 = v1[20];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v20[0] = v15;
    *v13 = 136446722;
    *(v13 + 4) = sub_19202B8CC(0xD000000000000031, 0x800000019224B330, v20);
    *(v13 + 12) = 2082;
    *(v13 + 14) = sub_19202B8CC(v12, v11, v20);
    *(v13 + 22) = 2114;
    v16 = v10;
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 24) = v17;
    *v14 = v17;
    _os_log_impl(&dword_192028000, v7, v8, "%{public}s - error invalidating relevances for widget of kind '%{public}s': %{public}@", v13, 0x20u);
    sub_192033970(v14, &qword_1EADEEDF0, &qword_1922319C0);
    MEMORY[0x193B0C7F0](v14, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x193B0C7F0](v15, -1, -1);
    MEMORY[0x193B0C7F0](v13, -1, -1);
  }

  else
  {
  }

  v18 = v1[1];

  return v18();
}

void WidgetCenter.setRelevances<A>(_:kind:inBundle:completion:)(uint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v22 = *a1;
  v14 = type metadata accessor for WidgetRelevances(0, a8, a3, a4);
  v15 = sub_192222BC8(v14);
  Result = type metadata accessor for WidgetRelevanceFetchResult();
  v17 = objc_allocWithZone(Result);
  v17[OBJC_IVAR____TtC9WidgetKit26WidgetRelevanceFetchResult_isDefaultImplementation] = 0;
  v19 = sub_19218BD8C(v15, v18);

  *&v17[OBJC_IVAR____TtC9WidgetKit26WidgetRelevanceFetchResult_widgetRelevances] = v19;
  v21.receiver = v17;
  v21.super_class = Result;
  v20 = objc_msgSendSuper2(&v21, sel_init);
  sub_192128BF4(v20, a2, a3, a4, a5, a6, a7);
}

void sub_192128BF4(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  if (qword_1ED74C6B0 != -1)
  {
    swift_once();
  }

  v13 = sub_1922258B0();
  __swift_project_value_buffer(v13, qword_1ED74CCC8);

  v14 = sub_192225890();
  v15 = sub_192227FB0();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    aBlock = v17;
    *v16 = 136446210;
    *(v16 + 4) = sub_19202B8CC(a2, a3, &aBlock);
    _os_log_impl(&dword_192028000, v14, v15, "Request to set widget relevances for %{public}s.", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v17);
    MEMORY[0x193B0C7F0](v17, -1, -1);
    MEMORY[0x193B0C7F0](v16, -1, -1);
  }

  v18 = *(v8 + 24);
  os_unfair_lock_lock(*(v18 + 16));
  v19 = sub_19202B38C();
  v37 = sub_192129698;
  v38 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v34 = 1107296256;
  v35 = sub_1921BBB98;
  v36 = &block_descriptor_44;
  v20 = _Block_copy(&aBlock);
  v21 = [v19 remoteObjectProxyWithErrorHandler_];
  _Block_release(v20);

  sub_1922282B0();
  swift_unknownObjectRelease();
  sub_19202A98C(v39, &aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0538, &unk_192234A88);
  if (swift_dynamicCast())
  {
    v22 = sub_192227930();
    if (a5)
    {
      a5 = sub_192227930();
    }

    v23 = swift_allocObject();
    v23[2] = a2;
    v23[3] = a3;
    v23[4] = a6;
    v23[5] = a7;
    v23[6] = a1;
    v37 = sub_19212AD90;
    v38 = v23;
    aBlock = MEMORY[0x1E69E9820];
    v34 = 1107296256;
    v35 = sub_192129E4C;
    v36 = &block_descriptor_50;
    v24 = _Block_copy(&aBlock);

    v25 = a1;

    [v32 withWidgetRelevanceArchiveHandleForKind:v22 inBundle:a5 handler:v24];
    _Block_release(v24);
    swift_unknownObjectRelease();
  }

  else
  {
    v26 = sub_192225890();
    v27 = sub_192227F90();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      aBlock = v29;
      *v28 = 136446210;
      *(v28 + 4) = sub_19202B8CC(0xD00000000000003ALL, 0x800000019224B2A0, &aBlock);
      __swift_destroy_boxed_opaque_existential_1(v29);
      MEMORY[0x193B0C7F0](v29, -1, -1);
      MEMORY[0x193B0C7F0](v28, -1, -1);
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v39);
  os_unfair_lock_unlock(*(v18 + 16));
}

void WidgetCenter.setRelevanceResult(_:kind:completion:)(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = sub_192227710();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v57 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_192227730();
  v53 = *(v14 - 8);
  v54 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v55 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_192227790();
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0528, &qword_1922349E8);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v52 = &v51 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v56 = &v51 - v22;
  v58 = sub_192227CF0();
  v23 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v25 = &v51 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = swift_allocObject();
  v26[2] = v6;
  v26[3] = a1;
  v61 = a2;
  v26[4] = a2;
  v26[5] = a3;
  v59 = a4;
  v26[6] = a4;
  v26[7] = a5;
  v27 = objc_opt_self();
  v60 = a5;

  v62 = a3;

  v28 = a1;

  if (![v27 isMainThread] || (v29 = qos_class_self(), sub_192227D00(), v30 = sub_192227CE0(), v31 = *(v23 + 8), v31(v25, v58), v29 == v30))
  {
    sub_192128BF4(v28, v61, v62, 0, 0, v59, v60);
  }

  else
  {
    v32 = v18;
    sub_192227D00();
    sub_192227CE0();
    v31(v25, v58);
    v33 = v56;
    sub_192227720();
    if (qword_1ED74C6B0 != -1)
    {
      swift_once();
    }

    v34 = sub_1922258B0();
    __swift_project_value_buffer(v34, qword_1ED74CCC8);
    v35 = v62;

    v36 = sub_192225890();
    v37 = sub_192227F80();

    v38 = os_log_type_enabled(v36, v37);
    v40 = v52;
    v39 = v53;
    if (v38)
    {
      v41 = swift_slowAlloc();
      v60 = v32;
      v42 = v33;
      v43 = v35;
      v44 = v41;
      v45 = swift_slowAlloc();
      aBlock[0] = v45;
      *v44 = 136446210;
      v46 = v43;
      v33 = v42;
      *(v44 + 4) = sub_19202B8CC(v61, v46, aBlock);
      _os_log_impl(&dword_192028000, v36, v37, "Performing priority inversion workaround applying widget relevances for %{public}s.", v44, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v45);
      MEMORY[0x193B0C7F0](v45, -1, -1);
      MEMORY[0x193B0C7F0](v44, -1, -1);
    }

    v48 = v54;
    v47 = v55;
    sub_19212AAC4(v33, v40);
    v49 = *(v39 + 48);
    if (v49(v40, 1, v48) == 1)
    {
      (*(v39 + 104))(v47, *MEMORY[0x1E69E7F98], v48);
      if (v49(v40, 1, v48) != 1)
      {
        sub_192033970(v40, &qword_1EADF0528, &qword_1922349E8);
      }
    }

    else
    {
      (*(v39 + 32))(v47, v40, v48);
    }

    sub_192227780();
    sub_192227700();
    v50 = swift_allocObject();
    *(v50 + 16) = sub_19212AA8C;
    *(v50 + 24) = v26;
    aBlock[4] = sub_19203BE8C;
    aBlock[5] = v50;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_19202AB80;
    aBlock[3] = &block_descriptor_0;
    _Block_copy(aBlock);
    sub_1922277E0();
    swift_allocObject();

    sub_1922277C0();

    sub_1922277D0();

    sub_192033970(v33, &qword_1EADF0528, &qword_1922349E8);
  }
}

void sub_192129698(void *a1)
{
  if (qword_1ED74C6B0 != -1)
  {
    swift_once();
  }

  v2 = sub_1922258B0();
  __swift_project_value_buffer(v2, qword_1ED74CCC8);
  v3 = a1;
  oslog = sub_192225890();
  v4 = sub_192227F90();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v11 = v7;
    *v5 = 136446466;
    *(v5 + 4) = sub_19202B8CC(0xD00000000000003ALL, 0x800000019224B2A0, &v11);
    *(v5 + 12) = 2114;
    v8 = a1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 14) = v9;
    *v6 = v9;
    _os_log_impl(&dword_192028000, oslog, v4, "%{public}s - remoteObjectProxy error: %{public}@", v5, 0x16u);
    sub_192033970(v6, &qword_1EADEEDF0, &qword_1922319C0);
    MEMORY[0x193B0C7F0](v6, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x193B0C7F0](v7, -1, -1);
    MEMORY[0x193B0C7F0](v5, -1, -1);
  }
}

void sub_192129854(void *a1, void *a2, void *a3, uint64_t a4, unint64_t a5, void (*a6)(void), uint64_t a7, uint64_t a8)
{
  if (qword_1ED74C6B0 != -1)
  {
    swift_once();
  }

  v14 = sub_1922258B0();
  __swift_project_value_buffer(v14, qword_1ED74CCC8);

  v15 = sub_192225890();
  v16 = sub_192227FB0();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = a2;
    v19 = a8;
    v20 = a6;
    v21 = a3;
    v22 = swift_slowAlloc();
    *&v40 = v22;
    *v17 = 136446210;
    *(v17 + 4) = sub_19202B8CC(a4, a5, &v40);
    _os_log_impl(&dword_192028000, v15, v16, "Received widget relevances file handle for %{public}s.", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v22);
    v23 = v22;
    a3 = v21;
    a6 = v20;
    a8 = v19;
    a2 = v18;
    MEMORY[0x193B0C7F0](v23, -1, -1);
    MEMORY[0x193B0C7F0](v17, -1, -1);
  }

  if (a1)
  {
    v24 = a1;
    a6(a1);
  }

  else
  {
    if (!a2)
    {
      v26 = *MEMORY[0x1E69941E8];
      sub_19214036C(MEMORY[0x1E69E7CC0]);
      v27 = sub_192227960();
      v29 = v28;
      v41 = MEMORY[0x1E69E6158];
      *&v40 = 0xD00000000000001ELL;
      *(&v40 + 1) = 0x800000019224B310;
      sub_19203BEDC(&v40, v39);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_19213DB28(v39, v27, v29, isUniquelyReferenced_nonNull_native);

      v31 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
      v32 = sub_192227830();

      v33 = [v31 initWithDomain:v26 code:1200 userInfo:v32];

      a6(v33);
      sub_192129CB4(a3, a4, a5);
      return;
    }

    v25 = a2;
    sub_1921626C0(a8, v25);

    v34 = sub_192225890();
    v35 = sub_192227FB0();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      *&v40 = v37;
      *v36 = 136446210;
      *(v36 + 4) = sub_19202B8CC(a4, a5, &v40);
      _os_log_impl(&dword_192028000, v34, v35, "Wrote widget relevances for %{public}s.", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v37);
      MEMORY[0x193B0C7F0](v37, -1, -1);
      MEMORY[0x193B0C7F0](v36, -1, -1);
    }

    a6(0);
  }

  sub_192129CB4(a3, a4, a5);
}

void sub_192129CB4(void *a1, uint64_t a2, unint64_t a3)
{
  if (a1)
  {
    v10 = a1;
    [v10 invalidate];
    if (qword_1ED74C6B0 != -1)
    {
      swift_once();
    }

    v5 = sub_1922258B0();
    __swift_project_value_buffer(v5, qword_1ED74CCC8);

    v6 = sub_192225890();
    v7 = sub_192227FB0();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v11 = v9;
      *v8 = 136446210;
      *(v8 + 4) = sub_19202B8CC(a2, a3, &v11);
      _os_log_impl(&dword_192028000, v6, v7, "Called completion action %{public}s.", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v9);
      MEMORY[0x193B0C7F0](v9, -1, -1);
      MEMORY[0x193B0C7F0](v8, -1, -1);
    }

    else
    {
    }
  }
}

void sub_192129E4C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = *(a1 + 32);

  v8 = a2;
  v10 = a3;
  v9 = a4;
  v7(a2, a3, a4);
}

uint64_t WidgetCenter.currentPushInfo.getter(uint64_t a1)
{
  *(v2 + 160) = a1;
  *(v2 + 168) = v1;
  return MEMORY[0x1EEE6DFA0](sub_192129F14, 0, 0);
}

uint64_t sub_192129F14()
{
  v7 = v0;
  v1 = *(v0[21] + 24);
  os_unfair_lock_lock(*(v1 + 16));
  sub_19212A320(&v6);
  os_unfair_lock_unlock(*(v1 + 16));
  v2 = v6;
  v0[22] = v6;
  if (v2)
  {
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_19212A0E8;
    v3 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0530, &qword_1922349F8);
    v0[10] = MEMORY[0x1E69E9820];
    v0[11] = 1107296256;
    v0[12] = sub_19212A74C;
    v0[13] = &block_descriptor_12;
    v0[14] = v3;
    [swift_unknownObjectRetain() widgetPushTokenWithCompletionHandler_];

    return MEMORY[0x1EEE6DEC8](v0 + 2);
  }

  else
  {
    *v0[20] = xmmword_19222A790;
    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_19212A0E8()
{
  v1 = *(*v0 + 48);
  *(*v0 + 184) = v1;
  if (v1)
  {
    v2 = sub_19212A28C;
  }

  else
  {
    v2 = sub_19212A1F8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_19212A1F8()
{
  swift_unknownObjectRelease();
  v1 = v0[18];
  v2 = v0[19];
  swift_unknownObjectRelease();
  if (v2 >> 60 == 15)
  {
    v3 = 0;
  }

  else
  {
    v3 = v1;
  }

  v4 = 0xF000000000000000;
  if (v2 >> 60 != 15)
  {
    v4 = v2;
  }

  v5 = v0[20];
  *v5 = v3;
  v5[1] = v4;
  v6 = v0[1];

  return v6();
}

uint64_t sub_19212A28C(uint64_t a1)
{
  v2 = v1[23];
  swift_willThrow();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  *v1[20] = xmmword_19222A790;
  v3 = v1[1];

  return v3();
}

uint64_t sub_19212A320@<X0>(void *a1@<X8>)
{
  v2 = sub_19202B38C();
  aBlock[4] = sub_19212A588;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1921BBB98;
  aBlock[3] = &block_descriptor_41;
  v3 = _Block_copy(aBlock);
  v4 = [v2 remoteObjectProxyWithErrorHandler_];
  _Block_release(v3);

  sub_1922282B0();
  swift_unknownObjectRelease();
  sub_19202A98C(aBlock, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0538, &unk_192234A88);
  if (swift_dynamicCast())
  {
    result = __swift_destroy_boxed_opaque_existential_1(aBlock);
    v6 = v12;
  }

  else
  {
    if (qword_1ED74C6B0 != -1)
    {
      swift_once();
    }

    v7 = sub_1922258B0();
    __swift_project_value_buffer(v7, qword_1ED74CCC8);
    v8 = sub_192225890();
    v9 = sub_192227F90();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v13[0] = v11;
      *v10 = 136446210;
      *(v10 + 4) = sub_19202B8CC(0x50746E6572727563, 0xEF6F666E49687375, v13);
      __swift_destroy_boxed_opaque_existential_1(v11);
      MEMORY[0x193B0C7F0](v11, -1, -1);
      MEMORY[0x193B0C7F0](v10, -1, -1);
    }

    result = __swift_destroy_boxed_opaque_existential_1(aBlock);
    v6 = 0;
  }

  *a1 = v6;
  return result;
}

void sub_19212A588(void *a1)
{
  if (qword_1ED74C6B0 != -1)
  {
    swift_once();
  }

  v2 = sub_1922258B0();
  __swift_project_value_buffer(v2, qword_1ED74CCC8);
  v3 = a1;
  oslog = sub_192225890();
  v4 = sub_192227F90();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v11 = v7;
    *v5 = 136446466;
    *(v5 + 4) = sub_19202B8CC(0x50746E6572727563, 0xEF6F666E49687375, &v11);
    *(v5 + 12) = 2114;
    v8 = a1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 14) = v9;
    *v6 = v9;
    _os_log_impl(&dword_192028000, oslog, v4, "%{public}s - remoteObjectProxy error: %{public}@", v5, 0x16u);
    sub_192033970(v6, &qword_1EADEEDF0, &qword_1922319C0);
    MEMORY[0x193B0C7F0](v6, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x193B0C7F0](v7, -1, -1);
    MEMORY[0x193B0C7F0](v5, -1, -1);
  }
}

uint64_t sub_19212A74C(uint64_t a1, void *a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF420, &unk_19222D820);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x1EEE6DEE8](v5, v6);
  }

  else
  {
    if (a2)
    {
      v9 = a2;
      v10 = sub_192225080();
      v12 = v11;
    }

    else
    {
      v10 = 0;
      v12 = 0xF000000000000000;
    }

    v13 = *(*(v5 + 64) + 40);
    *v13 = v10;
    v13[1] = v12;

    return MEMORY[0x1EEE6DEE0](v5);
  }
}

uint64_t sub_19212A86C(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_19202B8CC(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

char *sub_19212A8C8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0540, &qword_192234A98);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

uint64_t sub_19212A9BC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1920B3B44;

  return sub_192123138(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_19212AAC4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0528, &qword_1922349E8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t dispatch thunk of WidgetCenter.currentConfigurations()()
{
  v4 = (*(*v0 + 160) + **(*v0 + 160));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1920EF2F4;

  return v4();
}

uint64_t sub_19212ADA0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1920A59A8;

  return sub_19212843C(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t objectdestroy_96Tm()
{

  return swift_deallocObject();
}

double sub_19212AF08(void *a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0550, &qword_192234AD0) - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_192124524(a1, v4, v5);
}

uint64_t objectdestroy_117Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0550, &qword_192234AD0);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

double sub_19212B070(uint64_t a1, void *a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0550, &qword_192234AD0) - 8);
  v6 = *(v2 + 16);
  v7 = v2 + ((*(v5 + 80) + 24) & ~*(v5 + 80));

  return sub_192124AAC(a1, a2, v6, v7);
}

uint64_t sub_19212B100(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0550, &qword_192234AD0) - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1920B3B44;

  return sub_192124FEC(a1, v6, v7, v8, v9, v1 + v5);
}

uint64_t sub_19212B214()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0550, &qword_192234AD0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  return sub_192124F98(v0 + v2, *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_19212B2B8(uint64_t (*a1)(unint64_t, uint64_t))
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0550, &qword_192234AD0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v1 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));

  return a1(v1 + v3, v4);
}

uint64_t objectdestroy_139Tm(void (*a1)(void))
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0550, &qword_192234AD0);
  v4 = *(v3 - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v4 + 8))(v1 + v5, v3);
  a1(*(v1 + v6));

  return swift_deallocObject();
}

void sub_19212B414(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t ActivityViewTag.description.getter()
{
  v1 = *v0;
  if (v1 == 4)
  {
    return 0x6D6574497473696CLL;
  }

  v3 = 0xE800000000000000;
  v4 = 0x6465646E61707865;
  v5 = 0xEF676E696C696172;
  v6 = 0x54746361706D6F63;
  if (v1 != 2)
  {
    v6 = 0x4D746361706D6F63;
    v5 = 0xEE006C616D696E69;
  }

  if (*v0)
  {
    v4 = 0x4C746361706D6F63;
    v3 = 0xEE00676E69646165;
  }

  if (*v0 <= 1u)
  {
    v7 = v4;
  }

  else
  {
    v7 = v6;
  }

  if (*v0 <= 1u)
  {
    v8 = v3;
  }

  else
  {
    v8 = v5;
  }

  MEMORY[0x193B0A990](v7, v8);

  return 0x2D6F646E696ALL;
}

uint64_t ActivityViewTag.defaultViewAlignment.getter(uint64_t a1)
{
  v2 = *v1;
  if (v2 <= 1)
  {
    if (!*v1)
    {
      return sub_1922275E0();
    }

    return sub_192227600();
  }

  if (v2 != 2)
  {
    if (v2 == 3)
    {
      return sub_1922275F0();
    }

    return sub_192227600();
  }

  return sub_192227610();
}

BOOL static ActivityViewTag.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 4)
  {
    return v3 == 4;
  }

  if (v3 == 4)
  {
    return 0;
  }

  return v2 == v3;
}

uint64_t sub_19212B6D4()
{
  if (*v0)
  {
    return 0x6F646E696ALL;
  }

  else
  {
    return 0x6D6574497473696CLL;
  }
}

uint64_t sub_19212B70C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6D6574497473696CLL && a2 == 0xE800000000000000;
  if (v6 || (sub_1922289A0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6F646E696ALL && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1922289A0();

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

uint64_t sub_19212B7E4(uint64_t a1)
{
  v2 = sub_19212C5BC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19212B820(uint64_t a1)
{
  v2 = sub_19212C5BC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_19212B868@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1922289A0();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_19212B8E8(uint64_t a1)
{
  v2 = sub_19212C610();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19212B924(uint64_t a1)
{
  v2 = sub_19212C610();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_19212B960(uint64_t a1)
{
  v2 = sub_19212C6B8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19212B99C(uint64_t a1)
{
  v2 = sub_19212C6B8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ActivityViewTag.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0558, &qword_192234B00);
  v19 = *(v3 - 8);
  v20 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v18 = &v16 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0560, &qword_192234B08);
  v16 = *(v5 - 8);
  v17 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0568, &qword_192234B10);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - v10;
  v12 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19212C5BC();
  sub_192228B90();
  if (v12 == 4)
  {
    v21 = 0;
    sub_19212C6B8();
    sub_192228820();
    (*(v16 + 8))(v7, v17);
  }

  else
  {
    v23 = 1;
    sub_19212C610();
    v14 = v18;
    sub_192228820();
    v22 = v12;
    sub_19212C664();
    v15 = v20;
    sub_1922288C0();
    (*(v19 + 8))(v14, v15);
  }

  return (*(v9 + 8))(v11, v8);
}

uint64_t ActivityViewTag.hash(into:)()
{
  v1 = *v0;
  if (v1 == 4)
  {
    v1 = 0;
  }

  else
  {
    MEMORY[0x193B0BA90](1);
  }

  return MEMORY[0x193B0BA90](v1);
}

uint64_t ActivityViewTag.hashValue.getter()
{
  v1 = *v0;
  sub_192228AD0();
  v2 = 0;
  if (v1 != 4)
  {
    MEMORY[0x193B0BA90](1);
    v2 = v1;
  }

  MEMORY[0x193B0BA90](v2);
  return sub_192228B30();
}

uint64_t ActivityViewTag.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v25 = a2;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0580, &qword_192234B18);
  v24 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v4 = &v22 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0588, &qword_192234B20);
  v23 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v22 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0590, &unk_192234B28);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v22 - v10;
  v12 = a1[3];
  v27 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_19212C5BC();
  v13 = v26;
  sub_192228B70();
  if (!v13)
  {
    v26 = v5;
    v14 = v9;
    v15 = v25;
    v16 = sub_1922287F0();
    if (*(v16 + 16) == 1)
    {
      if (*(v16 + 32))
      {
        v30 = 1;
        sub_19212C610();
        sub_192228710();
        sub_19212C70C();
        v21 = v22;
        sub_1922287C0();
        (*(v24 + 8))(v4, v21);
        (*(v14 + 8))(v11, v8);
        swift_unknownObjectRelease();
        *v15 = v29;
      }

      else
      {
        v28 = 0;
        sub_19212C6B8();
        sub_192228710();
        (*(v23 + 8))(v7, v26);
        (*(v9 + 8))(v11, v8);
        swift_unknownObjectRelease();
        *v15 = 4;
      }
    }

    else
    {
      v17 = sub_1922284A0();
      swift_allocError();
      v19 = v18;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0450, &unk_19222F5A0);
      *v19 = &type metadata for ActivityViewTag;
      sub_192228720();
      sub_192228480();
      (*(*(v17 - 8) + 104))(v19, *MEMORY[0x1E69E6AF8], v17);
      swift_willThrow();
      (*(v14 + 8))(v11, v8);
      swift_unknownObjectRelease();
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v27);
}

uint64_t sub_19212C244()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 3;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_19212C278()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 4;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_19212C2AC()
{
  v1 = *v0;
  sub_192228AD0();
  v2 = 0;
  if (v1 != 4)
  {
    MEMORY[0x193B0BA90](1);
    v2 = v1;
  }

  MEMORY[0x193B0BA90](v2);
  return sub_192228B30();
}

uint64_t sub_19212C30C()
{
  v1 = *v0;
  if (v1 == 4)
  {
    v1 = 0;
  }

  else
  {
    MEMORY[0x193B0BA90](1);
  }

  return MEMORY[0x193B0BA90](v1);
}

uint64_t sub_19212C354()
{
  v1 = *v0;
  sub_192228AD0();
  if (v1 == 4)
  {
    v1 = 0;
  }

  else
  {
    MEMORY[0x193B0BA90](1);
  }

  MEMORY[0x193B0BA90](v1);
  return sub_192228B30();
}

void *sub_19212C3B4@<X0>(uint64_t *a1@<X8>)
{
  result = _s9WidgetKit15ActivityViewTagO8allCasesSayACGvgZ_0();
  *a1 = result;
  return result;
}

BOOL sub_19212C410(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 4)
  {
    return v3 == 4;
  }

  if (v3 == 4)
  {
    return 0;
  }

  return v2 == v3;
}

void *_s9WidgetKit15ActivityViewTagO8allCasesSayACGvgZ_0()
{
  v10 = MEMORY[0x1E69E7CC0];
  sub_19209ADB0(0, 4, 0);
  v0 = v10;
  v2 = *(v10 + 16);
  v1 = *(v10 + 24);
  v3 = v1 >> 1;
  v4 = v2 + 1;
  if (v1 >> 1 <= v2)
  {
    sub_19209ADB0((v1 > 1), v2 + 1, 1);
    v0 = v10;
    v1 = *(v10 + 24);
    v3 = v1 >> 1;
  }

  *(v0 + 16) = v4;
  *(v0 + v2 + 32) = 0;
  v5 = v2 + 2;
  if (v3 < (v2 + 2))
  {
    sub_19209ADB0((v1 > 1), v2 + 2, 1);
    v0 = v10;
    v1 = *(v10 + 24);
    v3 = v1 >> 1;
  }

  *(v0 + 16) = v5;
  *(v0 + v4 + 32) = 1;
  v6 = v2 + 3;
  if (v3 < (v2 + 3))
  {
    sub_19209ADB0((v1 > 1), v2 + 3, 1);
  }

  v7 = v10;
  *(v10 + 16) = v6;
  *(v10 + v5 + 32) = 2;
  v8 = *(v10 + 24);
  if ((v2 + 4) > (v8 >> 1))
  {
    sub_19209ADB0((v8 > 1), v2 + 4, 1);
    v7 = v10;
  }

  *(v7 + 16) = v2 + 4;
  *(v7 + v6 + 32) = 3;
  sub_192167B04(v7);
  return &unk_1F06A7B08;
}

unint64_t sub_19212C5BC()
{
  result = qword_1EADEE3A0;
  if (!qword_1EADEE3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEE3A0);
  }

  return result;
}

unint64_t sub_19212C610()
{
  result = qword_1EADF0570;
  if (!qword_1EADF0570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF0570);
  }

  return result;
}

unint64_t sub_19212C664()
{
  result = qword_1EADF0578;
  if (!qword_1EADF0578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF0578);
  }

  return result;
}

unint64_t sub_19212C6B8()
{
  result = qword_1EADEE378;
  if (!qword_1EADEE378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEE378);
  }

  return result;
}

unint64_t sub_19212C70C()
{
  result = qword_1EADF0598;
  if (!qword_1EADF0598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF0598);
  }

  return result;
}

unint64_t sub_19212C764()
{
  result = qword_1EADF05A0;
  if (!qword_1EADF05A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF05A0);
  }

  return result;
}

unint64_t sub_19212C7BC()
{
  result = qword_1EADF05A8;
  if (!qword_1EADF05A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF05B0, &qword_192234B78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF05A8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ActivityViewTag(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_20;
  }

  v2 = a2 + 4;
  if (a2 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 <= 1)
  {
    if (!v4)
    {
      goto LABEL_20;
    }

    v5 = a1[1];
    if (!a1[1])
    {
      goto LABEL_20;
    }

    return (*a1 | (v5 << 8)) - 4;
  }

  if (v4 == 2)
  {
    v5 = *(a1 + 1);
    if (*(a1 + 1))
    {
      return (*a1 | (v5 << 8)) - 4;
    }
  }

  else
  {
    v5 = *(a1 + 1);
    if (v5)
    {
      return (*a1 | (v5 << 8)) - 4;
    }
  }

LABEL_20:
  v7 = *a1;
  v8 = v7 >= 4;
  v9 = v7 - 4;
  if (!v8)
  {
    v9 = -1;
  }

  if (v9 + 1 >= 2)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ActivityViewTag(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 4;
  if (a3 + 4 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFC)
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_19212C974(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 4)
  {
    return v1 - 3;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_19212C988(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 3;
  }

  return result;
}

unint64_t sub_19212C9DC()
{
  result = qword_1EADF05B8;
  if (!qword_1EADF05B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF05B8);
  }

  return result;
}

unint64_t sub_19212CA34()
{
  result = qword_1EADF05C0;
  if (!qword_1EADF05C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF05C0);
  }

  return result;
}

unint64_t sub_19212CA8C()
{
  result = qword_1EADEE368;
  if (!qword_1EADEE368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEE368);
  }

  return result;
}

unint64_t sub_19212CAE4()
{
  result = qword_1EADEE370;
  if (!qword_1EADEE370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEE370);
  }

  return result;
}

unint64_t sub_19212CB3C()
{
  result = qword_1EADEE380;
  if (!qword_1EADEE380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEE380);
  }

  return result;
}

unint64_t sub_19212CB94()
{
  result = qword_1EADEE388;
  if (!qword_1EADEE388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEE388);
  }

  return result;
}

unint64_t sub_19212CBEC()
{
  result = qword_1EADEE390;
  if (!qword_1EADEE390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEE390);
  }

  return result;
}

unint64_t sub_19212CC44()
{
  result = qword_1EADEE398;
  if (!qword_1EADEE398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEE398);
  }

  return result;
}

uint64_t sub_19212CC98(uint64_t a1, uint64_t a2)
{
  v3[11] = a2;
  v3[12] = v2;
  v3[10] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE10, &unk_19222B630);
  v3[13] = swift_task_alloc();
  type metadata accessor for ControlTemplateToggle.Option(0);
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v3[16] = sub_192227CC0();
  v3[17] = sub_192227CB0();
  v5 = swift_task_alloc();
  v3[18] = v5;
  *v5 = v3;
  v5[1] = sub_19212CDCC;

  return sub_19212EA78(v2, a2);
}

uint64_t sub_19212CDCC(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[2] = v3;
  v4[3] = a1;
  v4[4] = a2;
  v4[5] = v2;
  v5 = *v3;
  v4[19] = a2;
  v4[20] = v2;

  if (v2)
  {
    v7 = sub_192227C70();

    return MEMORY[0x1EEE6DFA0](sub_19212D814, v7, v6);
  }

  else
  {
    v8 = swift_task_alloc();
    v4[21] = v8;
    *v8 = v5;
    v8[1] = sub_19212CF5C;
    v9 = v4[11];
    v10 = v4[12];

    return sub_19212F0D4(v10, v9);
  }
}

uint64_t sub_19212CF5C(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[6] = v3;
  v4[7] = a1;
  v4[8] = a2;
  v4[9] = v2;
  v5 = *v3;
  v4[22] = a2;
  v4[23] = v2;

  if (v2)
  {
    v7 = sub_192227C70();

    return MEMORY[0x1EEE6DFA0](sub_19212D89C, v7, v6);
  }

  else
  {
    v8 = swift_task_alloc();
    v4[24] = v8;
    *v8 = v5;
    v8[1] = sub_19212D0F4;
    v9 = v4[15];
    v11 = v4[11];
    v10 = v4[12];

    return sub_19212DA40(v9, 1, v10, v11);
  }
}

uint64_t sub_19212D0F4()
{
  v2 = *v1;
  v2[25] = v0;

  if (v0)
  {

    v4 = sub_192227C70();

    return MEMORY[0x1EEE6DFA0](sub_192112A8C, v4, v3);
  }

  else
  {
    v5 = swift_task_alloc();
    v2[26] = v5;
    *v5 = v2;
    v5[1] = sub_19212D2A8;
    v6 = v2[14];
    v8 = v2[11];
    v7 = v2[12];

    return sub_19212DA40(v6, 0, v7, v8);
  }
}

uint64_t sub_19212D2A8()
{
  v2 = *v1;
  *(v2 + 216) = v0;

  if (v0)
  {
    sub_19212F3C4(*(v2 + 120));

    v4 = sub_192227C70();

    return MEMORY[0x1EEE6DFA0](sub_19212D930, v4, v3);
  }

  else
  {
    v5 = *(v2 + 96);
    *(v2 + 256) = *(v5 + 32);
    v6 = *(v5 + 168);
    v10 = (*(v5 + 152) + **(v5 + 152));
    v7 = swift_task_alloc();
    *(v2 + 224) = v7;
    *v7 = v2;
    v7[1] = sub_19212D4DC;
    v8 = *(v2 + 104);

    return v10(v8, v6);
  }
}

uint64_t sub_19212D4DC()
{
  v2 = *v1;
  *(*v1 + 232) = v0;

  if (v0)
  {
    v5 = v2 + 14;
    v3 = v2[14];
    v4 = v5[1];

    sub_19212F3C4(v3);
    sub_19212F3C4(v4);
    v6 = sub_192227C70();
    v8 = v7;
    v9 = sub_19212D9B8;
  }

  else
  {
    v10 = v2[3];
    v2[30] = v2[7];
    v2[31] = v10;
    v6 = sub_192227C70();
    v8 = v11;
    v9 = sub_19212D690;
  }

  return MEMORY[0x1EEE6DFA0](v9, v6, v8);
}

uint64_t sub_19212D690()
{
  v1 = *(v0 + 248);
  v15 = *(v0 + 256);
  v2 = *(v0 + 176);
  v3 = *(v0 + 152);
  v4 = *(v0 + 112);
  v5 = *(v0 + 120);
  v13 = *(v0 + 240);
  v14 = *(v0 + 104);
  v6 = *(v0 + 80);

  v7 = type metadata accessor for ControlTemplateToggle(0);
  v8 = v7[8];
  v9 = sub_192225020();
  (*(*(v9 - 8) + 56))(&v6[v8], 1, 1, v9);
  v10 = &v6[v7[11]];
  *v6 = v1;
  *(v6 + 1) = v3;
  *(v6 + 2) = v13;
  *(v6 + 3) = v2;
  sub_19212F420(v5, &v6[v7[6]]);
  sub_19212F420(v4, &v6[v7[7]]);
  sub_19204193C(v14, &v6[v8], &qword_1EADEEE10, &unk_19222B630);
  v6[v7[9]] = 0;
  v6[v7[10]] = v15;
  *v10 = 0;
  *(v10 + 1) = 0;
  v6[v7[12]] = 0;

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_19212D814()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_19212D89C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_19212D930()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_19212D9B8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_19212DA40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 241) = a2;
  *(v4 + 264) = a1;
  *(v4 + 272) = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF720, &unk_19222E2F0);
  *(v4 + 280) = swift_task_alloc();
  *(v4 + 288) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFEC0, &unk_192231BD0);
  *(v4 + 296) = swift_task_alloc();
  *(v4 + 304) = swift_task_alloc();
  *(v4 + 312) = swift_task_alloc();
  v7 = sub_1922261D0();
  *(v4 + 320) = v7;
  *(v4 + 328) = *(v7 - 8);
  *(v4 + 336) = swift_task_alloc();
  v8 = sub_192226BA0();
  *(v4 + 344) = v8;
  *(v4 + 352) = *(v8 - 8);
  *(v4 + 360) = swift_task_alloc();
  *(v4 + 368) = swift_task_alloc();
  *(v4 + 376) = swift_task_alloc();
  *(v4 + 384) = sub_192227CC0();
  *(v4 + 392) = sub_192227CB0();
  v9 = *(a3 + 88);
  *(v4 + 400) = *(a3 + 104);
  v10 = *(a3 + 168);
  *(v4 + 416) = v10;
  v13 = (v9 + *v9);
  v11 = swift_task_alloc();
  *(v4 + 424) = v11;
  *v11 = v4;
  v11[1] = sub_19212DCD4;

  return v13(v10, a2);
}

uint64_t sub_19212DCD4(uint64_t a1)
{
  v3 = *v2;
  v3[54] = a1;
  v3[55] = v1;

  v5 = sub_192227C70();
  v3[56] = v5;
  v3[57] = v4;
  if (v1)
  {
    v6 = sub_19212E8A0;
  }

  else
  {
    v6 = sub_19212DE38;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, v4);
}

uint64_t sub_19212DE38()
{
  v1 = *(v0 + 400);
  *(v0 + 464) = swift_getKeyPath();
  v6 = (v1 + *v1);
  v2 = swift_task_alloc();
  *(v0 + 472) = v2;
  *v2 = v0;
  v2[1] = sub_19212DF40;
  v3 = *(v0 + 416);
  v4 = *(v0 + 241);

  return v6(v0 + 16, v3, v4);
}

uint64_t sub_19212DF40()
{
  v2 = *v1;
  *(*v1 + 480) = v0;

  v3 = *(v2 + 448);
  v4 = *(v2 + 456);
  if (v0)
  {
    v5 = sub_19212E980;
  }

  else
  {
    v5 = sub_19212E054;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_19212E054()
{
  v1 = *(v0 + 464);
  v2 = *(v0 + 432);
  v4 = *(v0 + 328);
  v3 = *(v0 + 336);
  v5 = *(v0 + 312);
  v87 = *(v0 + 320);
  v6 = *(v0 + 272);

  *(v0 + 224) = v2;
  v7 = *(v0 + 16);
  *(v0 + 104) = *(v0 + 32);
  v8 = *(v0 + 64);
  *(v0 + 120) = *(v0 + 48);
  *(v0 + 136) = v8;
  *(v0 + 152) = *(v0 + 80);
  *(v0 + 88) = v7;
  *(v0 + 232) = v1;
  *(v0 + 240) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0398, &unk_192233950);
  swift_allocObject();

  sub_192226760();
  v84 = *(v4 + 16);
  v84(v3, v6, v87);
  sub_192226700();
  sub_192226730();

  sub_192226A40();
  v9 = sub_192226A90();
  v10 = *(v9 - 8);
  v83 = *(v10 + 48);
  v11 = v83(v5, 1, v9);
  v12 = *(v0 + 312);
  v78 = v10;
  if (v11 == 1)
  {
    sub_192033970(v12, &qword_1EADEFEC0, &unk_192231BD0);
    v82 = 0;
    v81 = 0;
  }

  else
  {
    v13 = sub_192226A80();
    (*(v10 + 8))(v12, v9);
    v14 = [v13 string];

    v82 = sub_192227960();
    v81 = v15;
  }

  v16 = *(v0 + 280);
  sub_192226B80();
  v17 = sub_192226B70();
  v18 = *(v17 - 8);
  v19 = (*(v18 + 48))(v16, 1, v17);
  v20 = *(v0 + 280);
  if (v19 == 1)
  {
    sub_192033970(*(v0 + 280), &qword_1EADEF720, &unk_19222E2F0);
  }

  else
  {
    v21 = sub_192226B60();
    (*(v18 + 8))(v20, v17);
    if (v21)
    {
      sub_192226B80();
      goto LABEL_9;
    }
  }

  (*(v18 + 56))(*(v0 + 288), 1, 1, v17);
LABEL_9:
  v79 = v18;
  v80 = v17;
  v85 = v9;
  if (*(v0 + 88))
  {
    sub_192227270();
    v77 = 0;
    v24.i64[0] = v22;
    v24.i64[1] = v23;
    v26.i32[1] = v25;
    v76 = vorrq_s8(vshll_n_s32(v26, 0x20uLL), v24);
  }

  else
  {
    sub_1920B3090();
    sub_1922261E0();
    v76 = *(v0 + 244);
    v77 = *(v0 + 260);
  }

  v75 = v0 + 88;
  v27 = *(v0 + 368);
  v28 = *(v0 + 352);
  v29 = *(v0 + 336);
  v71 = *(v0 + 304);
  v73 = *(v0 + 344);
  v67 = *(v0 + 272);
  v69 = *(v0 + 320);
  v30 = *(v0 + 96);
  v31 = *(v0 + 104);
  v32 = *(v0 + 112);
  v33 = *(v0 + 120);
  *(v0 + 160) = v30;
  *(v0 + 168) = v31;
  *(v0 + 176) = v32;
  *(v0 + 184) = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF03A0, &unk_192234FD0);
  swift_allocObject();
  sub_192114BA4(v30, v31, v32, v33);
  sub_192114BA4(v30, v31, v32, v33);
  sub_192226760();
  v84(v29, v67, v69);
  sub_192226700();
  sub_192226730();

  sub_19212F484(v30, v31, v32, v33);
  sub_192226A40();
  v34 = *(v28 + 8);
  v34(v27, v73);
  v35 = v83(v71, 1, v85);
  v36 = *(v0 + 304);
  v70 = v34;
  if (v35 == 1)
  {
    sub_192033970(v36, &qword_1EADEFEC0, &unk_192231BD0);
    v72 = 0;
    v74 = 0;
  }

  else
  {
    v37 = sub_192226A80();
    (*(v78 + 8))(v36, v85);
    v38 = [v37 string];

    v39 = sub_192227960();
    v72 = v40;
    v74 = v39;
  }

  v41 = *(v0 + 360);
  v42 = *(v0 + 336);
  v65 = *(v0 + 320);
  v66 = *(v0 + 296);
  v68 = *(v0 + 344);
  v43 = *(v0 + 272);
  v44 = *(v0 + 128);
  v45 = *(v0 + 136);
  v46 = *(v0 + 144);
  v47 = *(v0 + 152);
  *(v0 + 192) = v44;
  *(v0 + 200) = v45;
  *(v0 + 208) = v46;
  *(v0 + 216) = v47;
  swift_allocObject();
  sub_192114BA4(v44, v45, v46, v47);
  sub_192114BA4(v44, v45, v46, v47);
  sub_192226760();
  v84(v42, v43, v65);
  sub_192226700();
  sub_192226730();

  sub_19212F484(v44, v45, v46, v47);
  sub_192226A40();
  v70(v41, v68);
  v48 = v83(v66, 1, v85);
  v49 = *(v0 + 376);
  v50 = *(v0 + 344);
  v51 = *(v0 + 296);
  if (v48 == 1)
  {
    sub_19212F4C8(v75);

    v70(v49, v50);
    sub_192033970(v51, &qword_1EADEFEC0, &unk_192231BD0);
    v86 = 0;
    v88 = 0;
  }

  else
  {
    v52 = sub_192226A80();
    (*(v78 + 8))(v51, v85);
    v53 = [v52 string];

    v54 = sub_192227960();
    v86 = v55;
    v88 = v54;

    sub_19212F4C8(v75);

    v70(v49, v50);
  }

  v56 = *(v0 + 288);
  v57 = *(v0 + 264);
  v58 = type metadata accessor for ControlTemplateToggle.Option(0);
  v59 = v58[6];
  (*(v79 + 56))(v57 + v59, 1, 1, v80);
  v60 = (v57 + v58[7]);
  v61 = (v57 + v58[8]);
  v62 = (v57 + v58[9]);
  *v57 = v82;
  v57[1] = v81;
  v57[2] = 0;
  sub_19204193C(v56, v57 + v59, &qword_1EADEF720, &unk_19222E2F0);
  *v60 = v76;
  v60[1].i8[0] = v77;
  *v61 = v74;
  v61[1] = v72;
  *v62 = v88;
  v62[1] = v86;

  v63 = *(v0 + 8);

  return v63();
}

uint64_t sub_19212E8A0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_19212E980()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_19212EA78(uint64_t a1, uint64_t a2)
{
  v2[3] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFEC0, &unk_192231BD0);
  v2[4] = swift_task_alloc();
  v4 = sub_1922261D0();
  v2[5] = v4;
  v2[6] = *(v4 - 8);
  v2[7] = swift_task_alloc();
  v5 = sub_192226BA0();
  v2[8] = v5;
  v2[9] = *(v5 - 8);
  v2[10] = swift_task_alloc();
  v2[11] = sub_192227CC0();
  v2[12] = sub_192227CB0();
  v6 = *(a1 + 56);
  v7 = *(a1 + 168);
  v10 = (v6 + *v6);
  v8 = swift_task_alloc();
  v2[13] = v8;
  *v8 = v2;
  v8[1] = sub_19212EC7C;

  return v10(v7);
}

uint64_t sub_19212EC7C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 112) = a1;
  *(v3 + 120) = v1;

  v5 = sub_192227C70();
  if (v1)
  {
    v6 = sub_19212F044;
  }

  else
  {
    v6 = sub_19212EDDC;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, v4);
}

uint64_t sub_19212EDDC()
{
  v1 = v0[14];
  v3 = v0[6];
  v2 = v0[7];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[3];

  v0[2] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0388, &qword_192233910);
  swift_allocObject();

  sub_192226760();
  (*(v3 + 16))(v2, v6, v5);
  sub_192226700();
  sub_192226730();

  sub_192226A40();
  v7 = sub_192226A90();
  v8 = *(v7 - 8);
  v9 = (*(v8 + 48))(v4, 1, v7);
  v10 = v0[10];
  v11 = v0[8];
  v12 = v0[9];
  v13 = v0[4];
  if (v9 == 1)
  {
    (*(v12 + 8))(v0[10], v11);

    sub_192033970(v13, &qword_1EADEFEC0, &unk_192231BD0);
    v14 = 0;
    v15 = 0;
  }

  else
  {
    v16 = sub_192226A80();
    (*(v8 + 8))(v13, v7);
    v17 = [v16 string];

    v14 = sub_192227960();
    v15 = v18;

    (*(v12 + 8))(v10, v11);
  }

  v19 = v0[1];

  return v19(v14, v15);
}

uint64_t sub_19212F044()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_19212F0D4(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFEC0, &unk_192231BD0);
  v2[5] = swift_task_alloc();
  v3 = sub_1922261D0();
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  v4 = sub_192226BA0();
  v2[9] = v4;
  v2[10] = *(v4 - 8);
  v2[11] = swift_task_alloc();
  sub_192227CC0();
  v2[12] = sub_192227CB0();
  v6 = sub_192227C70();
  v2[13] = v6;
  v2[14] = v5;

  return MEMORY[0x1EEE6DFA0](sub_19212F25C, v6, v5);
}

uint64_t sub_19212F25C()
{
  v1 = v0[3];
  v2 = *(v1 + 72);
  if (v2)
  {
    v3 = *(v1 + 168);
    v7 = (v2 + *v2);
    v4 = swift_task_alloc();
    v0[15] = v4;
    *v4 = v0;
    v4[1] = sub_19211417C;

    return v7(v3);
  }

  else
  {

    v6 = v0[1];

    return v6(0, 0);
  }
}

uint64_t sub_19212F3C4(uint64_t a1)
{
  v2 = type metadata accessor for ControlTemplateToggle.Option(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_19212F420(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ControlTemplateToggle.Option(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_19212F484(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_19207A338(result, a2, a3 & 1);
  }

  return result;
}

__n128 __swift_memcpy176_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = result;
  *(a1 + 128) = v8;
  return result;
}

uint64_t sub_19212F550(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 176))
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

uint64_t sub_19212F598(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0;
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
      *(result + 176) = 1;
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

    *(result + 176) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_19212F624(__n128 a1)
{
  result = qword_1EADED030;
  if (!qword_1EADED030)
  {
    type metadata accessor for ControlTemplateToggle(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADED030);
  }

  return result;
}

uint64_t sub_19212F67C(uint64_t *TupleTypeMetadata, unint64_t a2, uint64_t a3)
{
  v5 = TupleTypeMetadata;
  if (a2 == 1)
  {
    v6 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x1EEE9AC00](TupleTypeMetadata);
    v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (a2)
    {
      v9 = 0;
      v10 = a3 & 0xFFFFFFFFFFFFFFFELL;
      if (a2 < 4)
      {
        goto LABEL_9;
      }

      if (&v8[-v10] < 0x20)
      {
        goto LABEL_9;
      }

      v9 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      v11 = (v10 + 16);
      v12 = v8 + 16;
      v13 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v14 = *v11;
        *(v12 - 1) = *(v11 - 1);
        *v12 = v14;
        v11 += 2;
        v12 += 2;
        v13 -= 4;
      }

      while (v13);
      if (v9 != a2)
      {
LABEL_9:
        v15 = a2 - v9;
        v16 = 8 * v9;
        v17 = &v8[8 * v9];
        v18 = (v10 + v16);
        do
        {
          v19 = *v18++;
          *v17 = v19;
          v17 += 8;
          --v15;
        }

        while (v15);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v6 = TupleTypeMetadata;
  }

  MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v22 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v23 = (v6 + 32);
    v24 = a2;
    do
    {
      if (a2 == 1)
      {
        v25 = 0;
      }

      else
      {
        v25 = *v23;
      }

      v27 = *v22++;
      v26 = v27;
      v28 = *v5++;
      (*(*(v26 - 8) + 16))(&v21[v25], v28);
      v23 += 4;
      --v24;
    }

    while (v24);
  }

  return sub_192227670();
}

uint64_t sub_19212F850@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_1922265C0();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF07B0, &qword_1922352E8);
  return sub_19212F8B0(v2, *(a1 + 16), *(a1 + 24), a2 + *(v5 + 44), v6);
}

uint64_t sub_19212F8B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, uint64_t a5@<X3>)
{
  v22 = a4;
  v8 = type metadata accessor for AccessoryRectangularProgressViewStyle.ActionStyle.LabelStyle(0, a2, a3, a5);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v21 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0700, &qword_192235250);
  MEMORY[0x1EEE9AC00](v12);
  sub_192226C00();
  (*(v9 + 16))(v11, a1, v8);
  v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  *(v14 + 24) = a3;
  (*(v9 + 32))(v14 + v13, v11, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF07B8, &qword_1922352F0);
  sub_192132634();
  sub_1921326E8();
  v15 = v22;
  sub_192227350();
  v16 = (v15 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0808, &unk_192235310) + 36));
  v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFF18, &qword_192231E70) + 28);
  v18 = *MEMORY[0x1E69816C8];
  v19 = sub_192227400();
  (*(*(v19 - 8) + 104))(&v16[v17], v18, v19);
  result = swift_getKeyPath();
  *v16 = result;
  return result;
}

uint64_t sub_19212FB24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v39 = a2;
  v44 = a3;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0800, &qword_192235308);
  MEMORY[0x1EEE9AC00](v43);
  v38 = &v35 - v4;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0810, &qword_192235350);
  MEMORY[0x1EEE9AC00](v35);
  v36 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v37 = &v35 - v7;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0818, &qword_192235358);
  MEMORY[0x1EEE9AC00](v41);
  v42 = &v35 - v8;
  v9 = sub_192226ED0();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF07E0, &unk_1922352F8);
  MEMORY[0x1EEE9AC00](v40);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v35 - v16;
  v18 = sub_192226570();
  sub_19213290C(&qword_1EADEFF38, MEMORY[0x1E697F4E0], MEMORY[0x1E697F508]);
  sub_192227E00();
  sub_192227E60();
  v19 = v45;
  v20 = v46;
  sub_192226C30();
  if (v20 == v19)
  {
    sub_192226D80();
    (*(v10 + 104))(v12, *MEMORY[0x1E6980EA8], v9);
    v21 = sub_192226EE0();

    (*(v10 + 8))(v12, v9);
    KeyPath = swift_getKeyPath();
    v23 = &v17[*(v40 + 36)];
    *v23 = KeyPath;
    v23[1] = v21;
    sub_19202CFFC(v17, v42, &qword_1EADF07E0, &unk_1922352F8);
    swift_storeEnumTagMultiPayload();
    sub_1921327A0();
    sub_192031E74(&qword_1EADF07F8, &qword_1EADF0800, &qword_192235308, MEMORY[0x1E6981F48]);
    sub_1922266E0();
  }

  else
  {
    v24 = sub_192226EF0();
    v25 = swift_getKeyPath();
    v26 = &v17[*(v40 + 36)];
    *v26 = v25;
    v26[1] = v24;
    v27 = sub_192226E70();
    v28 = swift_getKeyPath();
    v29 = v37;
    (*(*(v18 - 8) + 16))(v37, a1, v18);
    v30 = (v29 + *(v35 + 36));
    *v30 = v28;
    v30[1] = v27;
    sub_19202CFFC(v17, v14, &qword_1EADF07E0, &unk_1922352F8);
    v31 = v36;
    sub_19202CFFC(v29, v36, &qword_1EADF0810, &qword_192235350);
    v32 = v38;
    sub_19202CFFC(v14, v38, &qword_1EADF07E0, &unk_1922352F8);
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0820, &qword_192235390);
    sub_19202CFFC(v31, v32 + *(v33 + 48), &qword_1EADF0810, &qword_192235350);
    sub_192033970(v31, &qword_1EADF0810, &qword_192235350);
    sub_192033970(v14, &qword_1EADF07E0, &unk_1922352F8);
    sub_19202CFFC(v32, v42, &qword_1EADF0800, &qword_192235308);
    swift_storeEnumTagMultiPayload();
    sub_1921327A0();
    sub_192031E74(&qword_1EADF07F8, &qword_1EADF0800, &qword_192235308, MEMORY[0x1E6981F48]);
    sub_1922266E0();
    sub_192033970(v32, &qword_1EADF0800, &qword_192235308);
    sub_192033970(v29, &qword_1EADF0810, &qword_192235350);
  }

  return sub_192033970(v17, &qword_1EADF07E0, &unk_1922352F8);
}

uint64_t sub_192130100@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_192226C60();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t sub_192130170(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  type metadata accessor for AccessoryRectangularProgressViewStyle.ActionStyle.LabelStyle(255, v5, v6, a4);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF06B8, &qword_192235228);
  sub_192225C70();
  swift_getTupleTypeMetadata3();
  sub_192227660();
  swift_getWitnessTable();
  v7 = sub_192227520();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v16[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v16[-v12];
  sub_192226340();
  v17 = v5;
  v18 = v6;
  v19 = v4;
  sub_192227510();
  swift_getWitnessTable();
  sub_1921BB14C();
  v14 = *(v8 + 8);
  v14(v10, v7);
  sub_1921BB14C();
  return (v14)(v13, v7);
}

uint64_t sub_192130394@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v38 = a3;
  v50 = a4;
  v49 = sub_192225DC0();
  v47 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF06B8, &qword_192235228);
  v45 = sub_192225C70();
  v48 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v42 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v46 = &v37 - v11;
  v12 = sub_192226C60();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for AccessoryRectangularProgressViewStyle.ActionStyle.LabelStyle(0, a2, a3, v16);
  v39 = *(v17 - 8);
  v18 = v39;
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v21);
  v40 = &v37 - v23;
  (*(v13 + 16))(v15, a1, v12, v22);
  (*(v13 + 32))(v20, v15, v12);
  WitnessTable = swift_getWitnessTable();
  sub_1921BB14C();
  v43 = *(v18 + 8);
  v44 = v18 + 8;
  v43(v20, v17);
  v24 = v38;
  type metadata accessor for AccessoryRectangularProgressViewStyle.ActionStyle(0, a2, v38, v25);
  sub_192225DB0();
  v26 = v42;
  sub_1922270E0();
  (*(v47 + 8))(v8, v49);
  v27 = sub_192031E74(&qword_1EADF06C0, &qword_1EADF06B8, &qword_192235228, MEMORY[0x1E6980A18]);
  v57[3] = v24;
  v57[4] = v27;
  v28 = v45;
  v29 = swift_getWitnessTable();
  v30 = v46;
  v31 = v26;
  sub_1921BB14C();
  v32 = v48;
  v33 = *(v48 + 8);
  v33(v31, v28);
  v34 = v40;
  (*(v39 + 16))(v20, v40, v17);
  v55 = 0;
  v56 = 1;
  v57[0] = v20;
  v57[1] = &v55;
  (*(v32 + 16))(v31, v30, v28);
  v57[2] = v31;
  v54[0] = v17;
  v54[1] = MEMORY[0x1E6981840];
  v54[2] = v28;
  v51 = WitnessTable;
  v52 = MEMORY[0x1E6981838];
  v53 = v29;
  sub_19212F67C(v57, 3uLL, v54);
  v33(v30, v28);
  v35 = v43;
  v43(v34, v17);
  v33(v31, v28);
  return v35(v20, v17);
}

uint64_t sub_1921308D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v57 = a2;
  v3 = sub_192226930();
  v4 = *(v3 - 8);
  v55 = v3;
  v56 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_192226C60();
  v7 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF06F0, &qword_192235240);
  v53 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v45 - v11;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF06F8, &qword_192235248);
  v52 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v51 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v58 = &v45 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0700, &qword_192235250);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v45 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0708, &qword_192235258);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v24 = &v45 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v45 - v26;
  v49 = &v45 - v26;
  sub_192226C30();
  v47 = v21;
  sub_192226C00();
  (*(v7 + 16))(v9, a1, v50);
  v28 = sub_192226C20();
  v29 = v24;
  (*(*(v28 - 8) + 56))(v24, 1, 1, v28);
  sub_192226C40();
  v30 = sub_192226BF0();
  v31 = v18;
  (*(*(v30 - 8) + 56))(v18, 1, 1, v30);
  v46 = v18;
  sub_192226C10();
  sub_192225A50();
  sub_192226920();
  sub_192031E74(&qword_1EADF0710, &qword_1EADF06F0, &qword_192235240, MEMORY[0x1E697BF38]);
  sub_19213290C(&qword_1EADF0718, MEMORY[0x1E697C8B8], MEMORY[0x1E697C8B0]);
  v32 = v58;
  v33 = v55;
  sub_192227000();
  (*(v56 + 8))(v6, v33);
  (*(v53 + 8))(v12, v10);
  v48 = v29;
  sub_19202CFFC(v27, v29, &qword_1EADF0708, &qword_192235258);
  sub_19202CFFC(v21, v31, &qword_1EADF0700, &qword_192235250);
  v35 = v51;
  v34 = v52;
  v36 = *(v52 + 16);
  v37 = v32;
  v38 = v54;
  v36(v51, v37, v54);
  v39 = v29;
  v40 = v57;
  sub_19202CFFC(v39, v57, &qword_1EADF0708, &qword_192235258);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0720, &qword_192235260);
  v42 = v46;
  sub_19202CFFC(v46, v40 + *(v41 + 48), &qword_1EADF0700, &qword_192235250);
  v36((v40 + *(v41 + 64)), v35, v38);
  v43 = *(v34 + 8);
  v43(v58, v38);
  sub_192033970(v47, &qword_1EADF0700, &qword_192235250);
  sub_192033970(v49, &qword_1EADF0708, &qword_192235258);
  v43(v35, v38);
  sub_192033970(v42, &qword_1EADF0700, &qword_192235250);
  return sub_192033970(v48, &qword_1EADF0708, &qword_192235258);
}

uint64_t sub_192130F24()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF06C8, &qword_192235230);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v6[-v3];
  v7 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF06D0, &qword_192235238);
  sub_192031E74(&qword_1EADF06D8, &qword_1EADF06D0, &qword_192235238, MEMORY[0x1E6981F48]);
  sub_192227430();
  sub_192031E74(&qword_1EADF06E0, &qword_1EADF06C8, &qword_192235230, MEMORY[0x1E697D658]);
  sub_1921322BC();
  sub_192227020();
  return (*(v2 + 8))(v4, v1);
}

uint64_t AccessoryRectangularProgressViewStyle.makeBody(configuration:)(uint64_t a1)
{
  v2 = sub_192226C60();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF05C8, &qword_1922350C0);
  MEMORY[0x1EEE9AC00](v5);
  sub_192226C50();
  (*(v3 + 16))(&v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2);
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  (*(v3 + 32))(v7 + v6, &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF05D0, &qword_1922350C8);
  sub_192131758();
  sub_19213180C();
  return sub_192227350();
}

uint64_t sub_1921312CC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v21 = a1;
  v23 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF05F8, &qword_1922350D0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v20 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EADF0728, &qword_192235268);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v20 - v6;
  v22 = type metadata accessor for AccessoryRectangularProgressViewStyle.StandaloneStyle(0);
  MEMORY[0x1EEE9AC00](v22);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFFB8, &qword_192235270);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v20 - v11;
  v13 = sub_1922275A0();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_19217CA0C(v12);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_192033970(v12, &qword_1EADEFFB8, &qword_192235270);
    v17 = sub_192226C60();
    (*(*(v17 - 8) + 16))(v9, v21, v17);
    sub_192132390(v9, v7);
    swift_storeEnumTagMultiPayload();
    sub_192031E74(&qword_1EADF05F0, &qword_1EADF05F8, &qword_1922350D0, &unk_1922351D8);
    sub_19213290C(&qword_1EADF0600, type metadata accessor for AccessoryRectangularProgressViewStyle.StandaloneStyle, &unk_192235188);
    sub_1922266E0();
    return sub_1921323F4(v9);
  }

  else
  {
    (*(v14 + 32))(v16, v12, v13);
    v19 = sub_192226C60();
    (*(*(v19 - 8) + 16))(v4, v21, v19);
    (*(v14 + 16))(&v4[*(v2 + 36)], v16, v13);
    sub_19202CFFC(v4, v7, &qword_1EADF05F8, &qword_1922350D0);
    swift_storeEnumTagMultiPayload();
    sub_192031E74(&qword_1EADF05F0, &qword_1EADF05F8, &qword_1922350D0, &unk_1922351D8);
    sub_19213290C(&qword_1EADF0600, type metadata accessor for AccessoryRectangularProgressViewStyle.StandaloneStyle, &unk_192235188);
    sub_1922266E0();
    sub_192033970(v4, &qword_1EADF05F8, &qword_1922350D0);
    return (*(v14 + 8))(v16, v13);
  }
}