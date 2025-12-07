uint64_t sub_51B3C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_B7550();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1 + OBJC_IVAR____TtC13FindMyAppCore36DelegatedSharesSetupWebsiteViewModel_delegatedURLShare;
  if (*(v8 + *(type metadata accessor for DelegatedURLShare(0) + 32)) == 1)
  {
    v26 = &type metadata for SolariumFeatureFlag;
    v27 = sub_28360();
    sub_B6610();
    __swift_destroy_boxed_opaque_existential_0(&v23);
    type metadata accessor for DelegatedSharesReportingModule();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v10 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
    sub_B7580();
    (*(v5 + 104))(v7, enum case for Image.ResizingMode.stretch(_:), v4);
    v11 = sub_B7570();

    (*(v5 + 8))(v7, v4);
    v19 = v11;
    v20 = 0;
    v21 = 257;
    v22 = 0;
  }

  else
  {
    v26 = &type metadata for SolariumFeatureFlag;
    v27 = sub_28360();
    sub_B6610();
    __swift_destroy_boxed_opaque_existential_0(&v23);
    type metadata accessor for DelegatedSharesReportingModule();
    v12 = swift_getObjCClassFromMetadata();
    v13 = [objc_opt_self() bundleForClass:v12];
    sub_B7580();
    (*(v5 + 104))(v7, enum case for Image.ResizingMode.stretch(_:), v4);
    v14 = sub_B7570();

    (*(v5 + 8))(v7, v4);
    v19 = v14;
    v20 = 0;
    v21 = 257;
    v22 = 1;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0538, &qword_C04E0);
  sub_40DB8();
  result = sub_B6F00();
  v16 = v24;
  v17 = v25 != 0;
  *a2 = v23;
  *(a2 + 16) = v16;
  *(a2 + 18) = v17;
  return result;
}

uint64_t sub_51EB4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0ED0, &unk_C0B90);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10 - v6;
  *v7 = sub_B6EA0();
  *(v7 + 1) = 0;
  v7[16] = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0F18, &qword_C0BD0);
  sub_51FC8(a1, &v7[*(v8 + 44)]);
  sub_53D38(v7, a2);
  return (*(v5 + 56))(a2, 0, 1, v4);
}

uint64_t sub_51FC8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v46 = a2;
  v3 = sub_B62F0();
  v43 = *(v3 - 8);
  v44 = v3;
  __chkstk_darwin(v3);
  v42 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ShareWebLinkPlatterView(0);
  v6 = __chkstk_darwin(v5);
  v47 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v10 = &v42 - v9;
  __chkstk_darwin(v8);
  v12 = &v42 - v11;
  sub_B7A60();
  v45 = sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v13 = OBJC_IVAR____TtC13FindMyAppCore36DelegatedSharesSetupWebsiteViewModel_delegatedURLShare;
  v15 = *a1;
  v14 = a1[1];
  v16 = a1[2];
  v59 = *(a1 + 3);
  v17 = swift_allocObject();
  v18 = *(a1 + 1);
  *(v17 + 16) = *a1;
  *(v17 + 32) = v18;
  *(v17 + 48) = a1[4];
  v19 = sub_B64C0();
  (*(*(v19 - 8) + 16))(v10, v15 + v13, v19);
  v20 = &v10[*(v5 + 20)];
  *v20 = sub_53DF8;
  v20[1] = v17;
  *(&v57 + 1) = &type metadata for SolariumFeatureFlag;
  v21 = sub_28360();
  *&v58[0] = v21;

  sub_C5D8(v14, v16);
  sub_A310(&v59, v54, &qword_F0C80, &qword_C0680);
  LOBYTE(v14) = sub_B6610();
  __swift_destroy_boxed_opaque_existential_0(&v56);
  if (v14)
  {
    v22 = xmmword_BFB50;
  }

  else
  {
    if (qword_EEAB8 != -1)
    {
      swift_once();
    }

    v22 = xmmword_FAD90;
  }

  *&v10[*(v5 + 24)] = v22;
  sub_53E60(v10, v12);
  *(&v57 + 1) = &type metadata for SolariumFeatureFlag;
  *&v58[0] = v21;
  v23 = sub_B6610();
  __swift_destroy_boxed_opaque_existential_0(&v56);
  if (v23)
  {
    v57 = 0u;
    memset(v58, 0, 25);
    v56 = 0u;
  }

  else
  {
    sub_B6E60();
    if (qword_EEAB0 != -1)
    {
      swift_once();
    }

    v24 = v44;
    v25 = __swift_project_value_buffer(v44, qword_FAD48);
    (*(v43 + 16))(v42, v25, v24);
    v26 = sub_B71B0();
    v28 = v27;
    v30 = v29;
    v32 = v31;
    KeyPath = swift_getKeyPath();
    LOBYTE(v54[0]) = 0;
    v30 &= 1u;
    LOBYTE(v51) = v30;
    sub_41410(v26, v28, v30);

    sub_9C84(v26, v28, v30);

    v34 = v54[0];
    v35 = v51;
    sub_41410(v26, v28, v30);
    *&v56 = 0x4030000000000000;
    BYTE8(v56) = v34;
    *&v57 = v26;
    *(&v57 + 1) = v28;
    LOBYTE(v58[0]) = v35;
    *(&v58[0] + 1) = v32;
    *&v58[1] = KeyPath;
    BYTE8(v58[1]) = 1;
  }

  v36 = v47;
  sub_53ECC(v12, v47);
  v48 = v56;
  v49 = v57;
  v50[0] = v58[0];
  *(v50 + 9) = *(v58 + 9);
  v37 = v46;
  *v46 = 0x4034000000000000;
  *(v37 + 8) = 0;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0F20, &qword_C0C08);
  sub_53ECC(v36, v37 + *(v38 + 48));
  v39 = (v37 + *(v38 + 64));
  v51 = v48;
  v52 = v49;
  v53[0] = v50[0];
  *(v53 + 9) = *(v50 + 9);
  sub_A310(&v51, v54, &qword_F0F28, &unk_C0C10);
  sub_A194(&v56, &qword_F0F28, &unk_C0C10);
  v40 = v52;
  *v39 = v51;
  v39[1] = v40;
  v39[2] = v53[0];
  *(v39 + 41) = *(v53 + 9);
  sub_53F30(v12);
  v54[0] = v48;
  v54[1] = v49;
  v55[0] = v50[0];
  *(v55 + 9) = *(v50 + 9);
  sub_A194(v54, &qword_F0F28, &unk_C0C10);
  sub_53F30(v36);
}

char *sub_52570()
{
  v49 = sub_B6800();
  v1 = *(v49 - 8);
  __chkstk_darwin(v49);
  v47 = &v35 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_B67E0();
  v57 = *(v54 - 8);
  __chkstk_darwin(v54);
  v4 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_B67D0();
  v56 = *(v53 - 8);
  __chkstk_darwin(v53);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_F17B0, &qword_BE7D0);
  __chkstk_darwin(v7 - 8);
  v9 = &v35 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0BE8, &unk_C0EB0);
  v10 = *(v1 + 72);
  v48 = v1;
  v11 = (*(v48 + 80) + 32) & ~*(v48 + 80);
  v46 = v10;
  v55 = v11;
  v52 = swift_allocObject();
  *(v52 + 16) = xmmword_BDA30;
  if (qword_EEAB0 != -1)
  {
    swift_once();
  }

  v12 = sub_B62F0();
  v13 = __swift_project_value_buffer(v12, qword_FAD48);
  v14 = *(v12 - 8);
  v15 = *(v14 + 16);
  v42 = v13;
  v41 = v14 + 16;
  v40 = v15;
  (v15)(v9);
  v39 = *(v14 + 56);
  v39(v9, 0, 1, v12);
  v16 = sub_B78D0();
  v50 = v17;
  v51 = v16;
  sub_A194(v9, &unk_F17B0, &qword_BE7D0);
  v18 = *(v56 + 104);
  v38 = enum case for OnboardingTrayAction.State.enabled(_:);
  v56 += 104;
  v37 = v18;
  v18(v6);
  v19 = *(v57 + 104);
  v57 += 104;
  v36 = v19;
  v19(v4, enum case for OnboardingTrayAction.Style.bold(_:), v54);
  v21 = *v0;
  v20 = v0[1];
  v22 = v6;
  v23 = v0[2];
  v59[0] = *(v0 + 3);
  v24 = swift_allocObject();
  v25 = *(v0 + 1);
  *(v24 + 16) = *v0;
  *(v24 + 32) = v25;
  *(v24 + 48) = v0[4];
  v43 = v21;

  v45 = v20;
  v44 = v23;
  sub_C5D8(v20, v23);
  sub_A310(v59, v58, &qword_F0C80, &qword_C0680);
  v26 = v52;
  v51 = v4;
  sub_B67F0();
  v58[3] = &type metadata for SolariumFeatureFlag;
  v58[4] = sub_28360();
  v27 = sub_B6610();
  __swift_destroy_boxed_opaque_existential_0(v58);
  if (v27)
  {
    v40(v9, v42, v12);
    v39(v9, 0, 1, v12);
    sub_B78D0();
    sub_A194(v9, &unk_F17B0, &qword_BE7D0);
    v37(v22, v38, v53);
    v36(v51, enum case for OnboardingTrayAction.Style.link(_:), v54);
    v28 = swift_allocObject();
    v29 = *(v0 + 1);
    *(v28 + 16) = *v0;
    *(v28 + 32) = v29;
    *(v28 + 48) = v0[4];

    sub_C5D8(v45, v44);
    sub_A310(v59, v58, &qword_F0C80, &qword_C0680);
    v30 = v47;
    sub_B67F0();
    v32 = *(v26 + 2);
    v31 = *(v26 + 3);
    if (v32 >= v31 >> 1)
    {
      v26 = sub_536D4((v31 > 1), v32 + 1, 1, v26, &qword_F0BE8, &unk_C0EB0, &type metadata accessor for OnboardingTrayAction);
    }

    v33 = v55;
    *(v26 + 2) = v32 + 1;
    (*(v48 + 32))(&v26[v33 + v32 * v46], v30, v49);
  }

  return v26;
}

uint64_t sub_52C4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a1;
  v26 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0F10, &unk_C0BC0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v23 = &v20 - v4;
  v5 = sub_B6F50();
  __chkstk_darwin(v5 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0F00, &unk_C0BB0);
  v22 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v20 - v7;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0EF0, &qword_C0BA8);
  v9 = __chkstk_darwin(v25);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v20 - v12;
  sub_B7A60();
  v24 = sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v29 = &type metadata for SolariumFeatureFlag;
  v30 = sub_28360();
  v14 = sub_B6610();
  __swift_destroy_boxed_opaque_existential_0(&v27);
  if (v14)
  {
    (*(v3 + 56))(v11, 1, 1, v2);
    v15 = sub_A8CC(&qword_F0F08, &qword_F0F00, &unk_C0BB0, &protocol conformance descriptor for ToolbarItem<A, B>);
    v27 = v6;
    v28 = v15;
    swift_getOpaqueTypeConformance2();
    sub_B6F70();
    sub_53C3C(v11);
  }

  else
  {
    v16 = sub_B6F40();
    __chkstk_darwin(v16);
    *(&v20 - 2) = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0CB0, &qword_C06A0);
    sub_4C714();
    sub_B6A80();
    v17 = sub_A8CC(&qword_F0F08, &qword_F0F00, &unk_C0BB0, &protocol conformance descriptor for ToolbarItem<A, B>);
    v18 = v23;
    sub_B6F60();
    (*(v3 + 16))(v11, v18, v2);
    (*(v3 + 56))(v11, 0, 1, v2);
    v27 = v6;
    v28 = v17;
    swift_getOpaqueTypeConformance2();
    sub_B6F70();
    sub_53C3C(v11);
    (*(v3 + 8))(v18, v2);
    (*(v22 + 8))(v8, v6);
  }

  sub_53AF8();
  sub_B6F60();
  sub_53C3C(v13);
}

uint64_t sub_5311C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_F17B0, &qword_BE7D0);
  __chkstk_darwin(v2 - 8);
  v4 = &v20[-v3];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEE88, &qword_BD620);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v20[-v7];
  sub_B7A60();
  sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_EEAB0 != -1)
  {
    swift_once();
  }

  v9 = sub_B62F0();
  v10 = __swift_project_value_buffer(v9, qword_FAD48);
  v11 = *(v9 - 8);
  (*(v11 + 16))(v4, v10, v9);
  (*(v11 + 56))(v4, 0, 1, v9);
  v12 = sub_B78D0();
  v14 = v13;
  sub_A194(v4, &unk_F17B0, &qword_BE7D0);
  v21 = v12;
  v22 = v14;
  v15 = *(a1 + 8);
  v16 = *(a1 + 16);
  v23 = *(a1 + 24);
  v17 = swift_allocObject();
  v18 = *(a1 + 16);
  *(v17 + 16) = *a1;
  *(v17 + 32) = v18;
  *(v17 + 48) = *(a1 + 32);

  sub_C5D8(v15, v16);
  sub_A310(&v23, v20, &qword_F0C80, &qword_C0680);
  sub_97E8();
  sub_B7640();
  sub_A8CC(&qword_EEE80, &qword_EEE88, &qword_BD620, &protocol conformance descriptor for Button<A>);
  sub_B7360();
  (*(v6 + 8))(v8, v5);
}

uint64_t sub_534A4(uint64_t a1)
{
  sub_B7A60();
  sub_B7A50();
  sub_B7A00();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    v3(isCurrentExecutor);
  }
}

char *sub_5358C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0F30, &qword_C0C20);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 272);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[272 * v8])
    {
      memmove(v12, v13, 272 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_536D4(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t sub_538B0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_F17B0, &qword_BE7D0);
  __chkstk_darwin(v0 - 8);
  v2 = &v10[-1] - v1;
  v10[3] = &type metadata for SolariumFeatureFlag;
  v10[4] = sub_28360();
  v3 = sub_B6610();
  __swift_destroy_boxed_opaque_existential_0(v10);
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  if (qword_EEAB0 != -1)
  {
    swift_once();
  }

  v4 = sub_B62F0();
  v5 = __swift_project_value_buffer(v4, qword_FAD48);
  v6 = *(v4 - 8);
  (*(v6 + 16))(v2, v5, v4);
  (*(v6 + 56))(v2, 0, 1, v4);
  v7 = sub_B78D0();
  sub_A194(v2, &unk_F17B0, &qword_BE7D0);
  return v7;
}

unint64_t sub_53A6C()
{
  result = qword_F0ED8;
  if (!qword_F0ED8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F0EC8, &qword_C1D70);
    sub_40DB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F0ED8);
  }

  return result;
}

unint64_t sub_53AF8()
{
  result = qword_F0EF8;
  if (!qword_F0EF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F0EF0, &qword_C0BA8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F0F00, &unk_C0BB0);
    sub_A8CC(&qword_F0F08, &qword_F0F00, &unk_C0BB0, &protocol conformance descriptor for ToolbarItem<A, B>);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F0EF8);
  }

  return result;
}

uint64_t sub_53BF4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_53C3C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0EF0, &qword_C0BA8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_53D08()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    return v1();
  }

  return result;
}

uint64_t sub_53D38(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0ED0, &unk_C0B90);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm_4()
{

  if (*(v0 + 24))
  {
  }

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_53DF8()
{
  v1 = *(v0 + 16);
  v2 = OBJC_IVAR____TtC13FindMyAppCore36DelegatedSharesSetupWebsiteViewModel_delegatedURLShare;
  v3 = *(v1 + OBJC_IVAR____TtC13FindMyAppCore36DelegatedSharesSetupWebsiteViewModel_dependencies);

  v3(v1 + v2);
}

uint64_t sub_53E60(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShareWebLinkPlatterView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_53ECC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShareWebLinkPlatterView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_53F30(uint64_t a1)
{
  v2 = type metadata accessor for ShareWebLinkPlatterView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_53F8C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F0EC0, &unk_C0B80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F0EB8, &qword_C0B78);
  sub_B64C0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F0EB0, &qword_C0B70);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F0EE8, &qword_C0BA0);
  sub_B6850();
  sub_53BF4(&qword_F0560, &type metadata accessor for OnboardingWelcomeView, &protocol conformance descriptor for OnboardingWelcomeView);
  swift_getOpaqueTypeConformance2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F0EF0, &qword_C0BA8);
  sub_53AF8();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_53BF4(&qword_F0BA0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
  sub_47AD4();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_541BC()
{
  sub_54380(v0 + OBJC_IVAR____TtC13FindMyAppCore36DelegatedSharesSetupWebsiteViewModel_delegatedURLShare);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for DelegatedSharesSetupWebsiteViewModel(uint64_t a1)
{
  result = qword_F0F78;
  if (!qword_F0F78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_54288(uint64_t a1)
{
  result = type metadata accessor for DelegatedURLShare(319);
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

unint64_t sub_54328()
{
  result = qword_F1008;
  if (!qword_F1008)
  {
    type metadata accessor for DelegatedSharesSetupWebsiteViewModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F1008);
  }

  return result;
}

uint64_t sub_54380(uint64_t a1)
{
  v2 = type metadata accessor for DelegatedURLShare(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_54400(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_B64C0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_544D0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_B64C0();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

unint64_t sub_545A8(uint64_t a1)
{
  result = sub_B64C0();
  if (v2 <= 0x3F)
  {
    result = sub_27660();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ShareWebLinkPlatterView.Style(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ShareWebLinkPlatterView.Style(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

uint64_t sub_546A8@<X0>(uint64_t a1@<X8>)
{
  sub_B7A60();
  sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_B6470();
  sub_97E8();
  v2 = sub_B7200();
  v4 = v3;
  v6 = v5;
  sub_B6F80();
  v7 = sub_B71C0();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  sub_9C84(v2, v4, v6 & 1);

  KeyPath = swift_getKeyPath();
  v15 = swift_getKeyPath();
  LOBYTE(v34[0]) = 0;
  v16 = sub_B7540();
  sub_B6B80();
  *&v24 = v7;
  *(&v24 + 1) = v9;
  LOBYTE(v25) = v11 & 1;
  *(&v25 + 1) = *v23;
  DWORD1(v25) = *&v23[3];
  *(&v25 + 1) = v13;
  *&v26 = KeyPath;
  BYTE8(v26) = 0;
  HIDWORD(v26) = *&v22[3];
  *(&v26 + 9) = *v22;
  *&v27 = v15;
  *(&v27 + 1) = 1;
  v28 = 0;
  LOBYTE(v33) = 0;
  v29 = v24;
  v30 = v25;
  v31 = v26;
  v32 = v27;
  v17 = v24;
  v18 = v25;
  v19 = v27;
  v20 = v33;
  *(a1 + 32) = v26;
  *(a1 + 48) = v19;
  *a1 = v17;
  *(a1 + 16) = v18;
  *(a1 + 64) = v20;
  *(a1 + 72) = 0x4020000000000000;
  *(a1 + 80) = 0;
  *(a1 + 88) = v16;
  sub_A310(&v24, v34, &qword_F1198, &qword_C0E70);
  v34[0] = v7;
  v34[1] = v9;
  v35 = v11 & 1;
  *v36 = *v23;
  *&v36[3] = *&v23[3];
  v37 = v13;
  v38 = KeyPath;
  v39 = 0;
  *v40 = *v22;
  *&v40[3] = *&v22[3];
  v41 = v15;
  v42 = 1;
  v43 = 0;
  sub_A194(v34, &qword_F1198, &qword_C0E70);
}

double sub_54924@<D0>(uint64_t a2@<X8>)
{
  v3 = sub_B6E30();
  v17 = 0;
  sub_546A8(&v10);
  v20 = v12;
  v21 = v13;
  v22 = v14;
  v23 = v15;
  v18 = v10;
  v19 = v11;
  v24[2] = v12;
  v24[3] = v13;
  v24[4] = v14;
  v24[5] = v15;
  v24[0] = v10;
  v24[1] = v11;
  sub_A310(&v18, &v9, &qword_F1190, &qword_C0E08);
  sub_A194(v24, &qword_F1190, &qword_C0E08);
  *&v16[39] = v20;
  *&v16[55] = v21;
  *&v16[71] = v22;
  *&v16[87] = v23;
  *&v16[7] = v18;
  *&v16[23] = v19;
  v4 = *&v16[32];
  *(a2 + 65) = *&v16[48];
  v5 = *&v16[80];
  *(a2 + 81) = *&v16[64];
  *(a2 + 97) = v5;
  v7 = *v16;
  result = *&v16[16];
  *(a2 + 33) = *&v16[16];
  *(a2 + 49) = v4;
  v8 = v17;
  *a2 = v3;
  *(a2 + 8) = 0;
  *(a2 + 16) = v8;
  *(a2 + 112) = *&v16[95];
  *(a2 + 17) = v7;
  return result;
}

double sub_54A30()
{
  result = _UISheetCornerRadius;
  *&xmmword_FAD90 = 0x4030000000000000;
  *(&xmmword_FAD90 + 1) = _UISheetCornerRadius;
  return result;
}

uint64_t sub_54A54@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v33[1] = a1;
  v3 = type metadata accessor for ShareWebLinkPlatterView(0);
  v4 = v3 - 8;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v3);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F10A8, &qword_C0D78);
  __chkstk_darwin(v7);
  v9 = v33 - v8;
  v10 = sub_B64C0();
  (*(*(v10 - 8) + 16))(v9, v2, v10);
  v11 = v2 + *(v4 + 32);
  LOBYTE(v4) = sub_B70B0();
  sub_B6A10();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v20 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_F10B0, &qword_C0D80) + 36)];
  *v20 = v4;
  *(v20 + 1) = v13;
  *(v20 + 2) = v15;
  *(v20 + 3) = v17;
  *(v20 + 4) = v19;
  v20[40] = 0;
  v21 = sub_B7760();
  v23 = v22;
  v24 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_F10B8, &qword_C0D88) + 36)];
  *v24 = 1;
  *(v24 + 4) = 256;
  *(v24 + 2) = v21;
  *(v24 + 3) = v23;
  v25 = *(v11 + 8);
  v26 = &v9[*(v7 + 36)];
  v27 = *(sub_B6C60() + 20);
  v28 = enum case for RoundedCornerStyle.continuous(_:);
  v29 = sub_B6E70();
  (*(*(v29 - 8) + 104))(&v26[v27], v28, v29);
  *v26 = v25;
  *(v26 + 1) = v25;
  *&v26[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_F10C0, &unk_C0D90) + 36)] = 256;
  sub_53ECC(v2, v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v30 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v31 = swift_allocObject();
  sub_53E60(v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v31 + v30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEE88, &qword_BD620);
  sub_55244();
  sub_A8CC(&qword_EEE80, &qword_EEE88, &qword_BD620, &protocol conformance descriptor for Button<A>);
  sub_B7460();

  return sub_A194(v9, &qword_F10A8, &qword_C0D78);
}

uint64_t sub_54DA4(uint64_t a1)
{
  v2 = type metadata accessor for ShareWebLinkPlatterView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  sub_B7A60();
  sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_53ECC(a1, &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_53E60(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5);
  sub_B7610();
}

uint64_t sub_54F38(uint64_t a1)
{
  sub_B7A60();
  sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = type metadata accessor for ShareWebLinkPlatterView(0);
  (*(a1 + *(v2 + 20)))(a1);
}

uint64_t sub_54FF0@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_B62F0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_B7A60();
  sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_B6E60();
  if (qword_EEAB0 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v2, qword_FAD48);
  (*(v3 + 16))(v5, v6, v2);
  v7 = sub_B71B0();
  v9 = v8;
  v11 = v10;
  v13 = v12;

  *a1 = v7;
  *(a1 + 8) = v9;
  *(a1 + 16) = v11 & 1;
  *(a1 + 24) = v13;
  return result;
}

uint64_t sub_551D4()
{
  v1 = *(type metadata accessor for ShareWebLinkPlatterView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_54DA4(v2);
}

unint64_t sub_55244()
{
  result = qword_F10C8;
  if (!qword_F10C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F10A8, &qword_C0D78);
    sub_552FC();
    sub_A8CC(&qword_F10F8, &qword_F10C0, &unk_C0D90, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F10C8);
  }

  return result;
}

unint64_t sub_552FC()
{
  result = qword_F10D0;
  if (!qword_F10D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F10B8, &qword_C0D88);
    sub_553B4();
    sub_A8CC(&qword_F10E8, &qword_F10F0, &qword_C0DA0, &protocol conformance descriptor for _BackgroundModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F10D0);
  }

  return result;
}

unint64_t sub_553B4()
{
  result = qword_F10D8;
  if (!qword_F10D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F10B0, &qword_C0D80);
    sub_55440();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F10D8);
  }

  return result;
}

unint64_t sub_55440()
{
  result = qword_F10E0;
  if (!qword_F10E0)
  {
    type metadata accessor for WebLinkRowView(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F10E0);
  }

  return result;
}

uint64_t objectdestroyTm_5()
{
  v1 = *(type metadata accessor for ShareWebLinkPlatterView(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = sub_B64C0();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_555A4()
{
  v1 = *(type metadata accessor for ShareWebLinkPlatterView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_54F38(v2);
}

uint64_t sub_55618(uint64_t a1, uint64_t a2)
{
  v4 = sub_B64C0();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_55698(uint64_t a1, uint64_t a2)
{
  v4 = sub_B64C0();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_55708(uint64_t a1)
{
  result = sub_B64C0();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_55774()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F10A8, &qword_C0D78);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_EEE88, &qword_BD620);
  sub_55244();
  sub_A8CC(&qword_EEE80, &qword_EEE88, &qword_BD620, &protocol conformance descriptor for Button<A>);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_5585C@<X0>(uint64_t a1@<X8>)
{
  result = sub_B6DB0();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t DelegatedSharesShareeItemDescriptionView.init(viewModel:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEDF8, &unk_BD520);
  swift_storeEnumTagMultiPayload();
  v11[3] = &type metadata for SolariumFeatureFlag;
  v11[4] = sub_28360();
  v4 = sub_B6610();
  __swift_destroy_boxed_opaque_existential_0(v11);
  v5 = (v4 & 1) == 0;
  if (v4)
  {
    v6 = 0xD00000000000002BLL;
  }

  else
  {
    v6 = 0xD000000000000024;
  }

  if (v5)
  {
    v7 = "ROR_CONTINUE_ACTION_SHEET";
  }

  else
  {
    v7 = "-website-cover-photo";
  }

  v8 = v7 | 0x8000000000000000;
  result = type metadata accessor for DelegatedSharesShareeItemDescriptionView(0);
  v10 = (a2 + *(result + 24));
  *v10 = v6;
  v10[1] = v8;
  *(a2 + *(result + 20)) = a1;
  return result;
}

uint64_t sub_559E8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_F17B0, &qword_BE7D0);
  __chkstk_darwin(v1 - 8);
  v3 = &v17 - v2;
  v4 = type metadata accessor for DelegatedSharesReportingState(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DelegatedSharesShareeItemDescriptionView(0);
  sub_56F3C(*(v0 + *(v7 + 20)) + OBJC_IVAR____TtC13FindMyAppCore45DelegatedSharesShareeItemDescriptionViewModel_reportingState, v6, type metadata accessor for DelegatedSharesReportingState);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0A10, &qword_C01B0);
  if ((*(*(v8 - 8) + 48))(v6, 2, v8))
  {
    if (qword_EEAB0 != -1)
    {
      swift_once();
    }

    v9 = sub_B62F0();
    v10 = __swift_project_value_buffer(v9, qword_FAD48);
    v11 = *(v9 - 8);
    (*(v11 + 16))(v3, v10, v9);
    (*(v11 + 56))(v3, 0, 1, v9);
    v12 = sub_B78D0();
    sub_2B630(v3);
  }

  else
  {
    if (qword_EEAB0 != -1)
    {
      swift_once();
    }

    v13 = sub_B62F0();
    v14 = __swift_project_value_buffer(v13, qword_FAD48);
    v15 = *(v13 - 8);
    (*(v15 + 16))(v3, v14, v13);
    (*(v15 + 56))(v3, 0, 1, v13);
    v12 = sub_B78D0();
    sub_2B630(v3);
    sub_56FA4(v6);
  }

  return v12;
}

uint64_t DelegatedSharesShareeItemDescriptionView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v54 = a1;
  v3 = type metadata accessor for DelegatedSharesShareeItemDescriptionView(0);
  v48 = *(v3 - 8);
  __chkstk_darwin(v3 - 8);
  v49 = v4;
  v51 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_B67E0();
  v44 = *(v46 - 8);
  __chkstk_darwin(v46);
  v47 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_B67D0();
  v42 = *(v6 - 8);
  v43 = v6;
  __chkstk_darwin(v6);
  v45 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_B6980();
  v55 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_F17B0, &qword_BE7D0);
  __chkstk_darwin(v11 - 8);
  v13 = &v34 - v12;
  v14 = sub_B6850();
  v52 = *(v14 - 8);
  v53 = v14;
  __chkstk_darwin(v14);
  v50 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_EEAB0 != -1)
  {
    swift_once();
  }

  v16 = sub_B62F0();
  v17 = __swift_project_value_buffer(v16, qword_FAD48);
  v18 = *(v16 - 8);
  v19 = *(v18 + 16);
  v37 = v17;
  v36 = v19;
  (v19)(v13);
  v20 = *(v18 + 56);
  v20(v13, 0, 1, v16);
  v21 = sub_B78D0();
  v40 = v22;
  v41 = v21;
  sub_2B630(v13);
  v39 = sub_559E8();
  v38 = v23;
  v56[3] = &type metadata for SolariumFeatureFlag;
  v56[4] = sub_28360();
  v24 = sub_B6610();
  __swift_destroy_boxed_opaque_existential_0(v56);
  if (v24)
  {
    v25 = [objc_opt_self() clearColor];
  }

  else
  {
    sub_40D5C();
    if (qword_EEB08 != -1)
    {
      swift_once();
    }

    v26 = __swift_project_value_buffer(v8, qword_FAEA0);
    v55[2](v10, v26, v8);
    v25 = sub_B7B90();
  }

  v55 = v25;
  v35 = &v34;
  __chkstk_darwin(v25);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0BE8, &unk_C0EB0);
  sub_B6800();
  v27 = swift_allocObject();
  v34 = xmmword_BDA30;
  *(v27 + 16) = xmmword_BDA30;
  v36(v13, v37, v16);
  v20(v13, 0, 1, v16);
  sub_B78D0();
  sub_2B630(v13);
  (*(v42 + 104))(v45, enum case for OnboardingTrayAction.State.enabled(_:), v43);
  (*(v44 + 104))(v47, enum case for OnboardingTrayAction.Style.bold(_:), v46);
  v28 = v51;
  sub_56F3C(v2, v51, type metadata accessor for DelegatedSharesShareeItemDescriptionView);
  v29 = (*(v48 + 80) + 16) & ~*(v48 + 80);
  v30 = swift_allocObject();
  sub_56AE4(v28, v30 + v29);
  sub_B67F0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0538, &qword_C04E0);
  sub_40DB8();
  v31 = v50;
  sub_B6830();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0780, &qword_C0EC0);
  sub_B6C80();
  *(swift_allocObject() + 16) = v34;
  sub_B6C70();
  sub_56BC0();
  v32 = v53;
  sub_B7300();

  return (*(v52 + 8))(v31, v32);
}

uint64_t sub_56558@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_B7550();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for DelegatedSharesShareeItemDescriptionView(0);
  type metadata accessor for DelegatedSharesReportingModule();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = objc_opt_self();

  v9 = [v8 bundleForClass:ObjCClassFromMetadata];
  sub_B7580();
  (*(v4 + 104))(v6, enum case for Image.ResizingMode.stretch(_:), v3);
  v10 = sub_B7570();

  result = (*(v4 + 8))(v6, v3);
  *a2 = v10;
  *(a2 + 8) = 0;
  *(a2 + 16) = 257;
  return result;
}

uint64_t sub_566F0(uint64_t a1, uint64_t a2)
{
  v3 = sub_B6DE0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEDF8, &unk_BD520);
  __chkstk_darwin(v7);
  v9 = &v16 - v8;
  v10 = sub_B6B50();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_56ECC(a2, v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v11 + 32))(v13, v9, v10);
  }

  else
  {
    sub_B7B50();
    v14 = sub_B7080();
    sub_B6990();

    sub_B6DD0();
    swift_getAtKeyPath();

    (*(v4 + 8))(v6, v3);
  }

  sub_B6B40();
  return (*(v11 + 8))(v13, v10);
}

uint64_t type metadata accessor for DelegatedSharesShareeItemDescriptionView(uint64_t a1)
{
  result = qword_F1208;
  if (!qword_F1208)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_569B4()
{
  v1 = *(type metadata accessor for DelegatedSharesShareeItemDescriptionView(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEDF8, &unk_BD520);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_B6B50();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_56AE4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DelegatedSharesShareeItemDescriptionView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_56B48(uint64_t a1)
{
  v3 = *(type metadata accessor for DelegatedSharesShareeItemDescriptionView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_566F0(a1, v4);
}

unint64_t sub_56BC0()
{
  result = qword_F0560;
  if (!qword_F0560)
  {
    sub_B6850();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F0560);
  }

  return result;
}

uint64_t sub_56C48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEE90, &unk_BD680);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_56D24(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEE90, &unk_BD680);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

void sub_56DE8(uint64_t a1)
{
  sub_9EC8(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for DelegatedSharesShareeItemDescriptionViewModel(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_56E74()
{
  sub_B6850();
  sub_56BC0();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_56ECC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEDF8, &unk_BD520);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_56F3C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_56FA4(uint64_t a1)
{
  v2 = type metadata accessor for DelegatedSharesReportingState(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t DelegatedSharesShareeItemDescriptionViewModel.__allocating_init(reportingState:)(uint64_t a1)
{
  v2 = swift_allocObject();
  sub_57074(a1, v2 + OBJC_IVAR____TtC13FindMyAppCore45DelegatedSharesShareeItemDescriptionViewModel_reportingState);
  return v2;
}

uint64_t sub_57074(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DelegatedSharesReportingState(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t DelegatedSharesShareeItemDescriptionViewModel.__deallocating_deinit()
{
  sub_56FA4(v0 + OBJC_IVAR____TtC13FindMyAppCore45DelegatedSharesShareeItemDescriptionViewModel_reportingState);

  return swift_deallocClassInstance();
}

uint64_t sub_57164(uint64_t a1)
{
  result = sub_57228(&qword_F1248, &protocol conformance descriptor for DelegatedSharesShareeItemDescriptionViewModel);
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata accessor for DelegatedSharesShareeItemDescriptionViewModel(uint64_t a1)
{
  result = qword_F1280;
  if (!qword_F1280)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_57228(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for DelegatedSharesShareeItemDescriptionViewModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_57274(uint64_t a1)
{
  result = type metadata accessor for DelegatedSharesReportingState(319);
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

uint64_t sub_57354()
{
  v0 = sub_B62F0();
  __swift_allocate_value_buffer(v0, qword_F13A0);
  __swift_project_value_buffer(v0, qword_F13A0);
  type metadata accessor for OwnerInfoModule();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  return sub_B62E0();
}

uint64_t static FindMyLocalizationTable.ownerInfo.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_EEAC0 != -1)
  {
    swift_once();
  }

  v2 = sub_B62F0();
  v3 = __swift_project_value_buffer(v2, qword_F13A0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

void *OwnerInfoSectionView.init(viewModel:)@<X0>(void *a2@<X8>)
{
  type metadata accessor for OwnerInfoSectionViewModel(0);
  result = sub_B75B0();
  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t OwnerInfoSectionView.body.getter@<X0>(uint64_t a2@<X8>)
{
  v5 = *v2;
  v4 = v2[1];
  *a2 = sub_B6EA0();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F13B8, "­");
  return sub_5754C(v5, v4, a2 + *(v6 + 44));
}

uint64_t sub_5754C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v25 = a2;
  v27 = a3;
  v4 = type metadata accessor for DetailsSectionTemplate(0);
  __chkstk_darwin(v4);
  v6 = (&v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = sub_B63C0();
  v7 = *(v26 - 8);
  __chkstk_darwin(v26);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_F17B0, &qword_BE7D0);
  __chkstk_darwin(v10 - 8);
  v12 = &v25 - v11;
  sub_B7A60();
  sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_EEAC0 != -1)
  {
    swift_once();
  }

  v13 = sub_B62F0();
  v14 = __swift_project_value_buffer(v13, qword_F13A0);
  v15 = *(v13 - 8);
  (*(v15 + 16))(v12, v14, v13);
  (*(v15 + 56))(v12, 0, 1, v13);
  v16 = sub_B78D0();
  v18 = v17;
  sub_2B630(v12);
  sub_B6390();
  v28[0] = a1;
  v28[1] = v25;
  v19 = sub_57928();
  *v6 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF668, &qword_BE260);
  swift_storeEnumTagMultiPayload();
  v28[3] = &type metadata for SolariumFeatureFlag;
  v28[4] = sub_28360();
  v20 = sub_B6610();
  __swift_destroy_boxed_opaque_existential_0(v28);
  if (v20)
  {
    v21 = xmmword_BED70;
  }

  else
  {
    if (qword_EEAE0 != -1)
    {
      swift_once();
    }

    v21 = xmmword_FAE50;
  }

  *(v6 + v4[8]) = v21;
  v22 = (v6 + v4[5]);
  *v22 = v16;
  v22[1] = v18;
  (*(v7 + 32))(v6 + v4[6], v9, v26);
  *(v6 + v4[7]) = v19;
  v23 = (v6 + v4[9]);
  *v23 = 0;
  v23[1] = 0;
  sub_30658(v6, v27);
}

char *sub_57928()
{
  v1 = sub_B65A0();
  v43 = *(v1 - 8);
  v44 = v1;
  __chkstk_darwin(v1);
  v3 = &v39 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_F17B0, &qword_BE7D0);
  __chkstk_darwin(v4 - 8);
  v6 = &v39 - v5;
  v7 = *v0;
  v8 = v0[1];
  *&v51[0] = *v0;
  *(&v51[0] + 1) = v8;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F13D0, &qword_C1120);
  sub_B75C0();
  v9 = v45;
  swift_getKeyPath();
  *&v51[0] = v9;
  sub_57FB8();
  sub_B65C0();

  v10 = *(v9 + 16);
  v11 = *(v9 + 24);

  if (v11)
  {
    v39 = v10;
    v40 = v8;
    v41 = v7;
    if (qword_EEAC0 != -1)
    {
      swift_once();
    }

    v12 = sub_B62F0();
    v13 = __swift_project_value_buffer(v12, qword_F13A0);
    v14 = *(v12 - 8);
    (*(v14 + 16))(v6, v13, v12);
    (*(v14 + 56))(v6, 0, 1, v12);
    v15 = sub_B78D0();
    v17 = v16;
    sub_2B630(v6);
    *(&v51[7] + 8) = 0u;
    *(&v51[8] + 8) = 0u;
    *(&v51[9] + 1) = 0;
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    sub_B6590();
    v18 = sub_B6560();
    v20 = v19;
    (*(v43 + 8))(v3, v44);
    *&v51[0] = v18;
    *(&v51[0] + 1) = v20;
    *&v51[1] = v15;
    *(&v51[1] + 1) = v17;
    LOBYTE(v51[2]) = 0;
    *(&v51[2] + 1) = 0;
    *&v51[3] = 0;
    BYTE8(v51[3]) = 0;
    *&v51[4] = v39;
    *(&v51[4] + 1) = v11;
    LOBYTE(v51[5]) = 1;
    *(&v51[5] + 8) = 0u;
    *(&v51[6] + 8) = 0u;
    memset(&v51[10], 0, 112);
    sub_2C360(&v45, &v51[11]);
    v21 = sub_5358C(0, 1, 1, &_swiftEmptyArrayStorage);
    v23 = *(v21 + 2);
    v22 = *(v21 + 3);
    if (v23 >= v22 >> 1)
    {
      v21 = sub_5358C((v22 > 1), v23 + 1, 1, v21);
    }

    v8 = v40;
    *(v21 + 2) = v23 + 1;
    memcpy(&v21[272 * v23 + 32], v51, 0x110uLL);
    v7 = v41;
  }

  else
  {
    v21 = &_swiftEmptyArrayStorage;
  }

  *&v51[0] = v7;
  *(&v51[0] + 1) = v8;
  sub_B75C0();
  v24 = v45;
  swift_getKeyPath();
  *&v51[0] = v24;
  sub_B65C0();

  v26 = *(v24 + 32);
  v25 = *(v24 + 40);

  if (v25)
  {
    if (qword_EEAC0 != -1)
    {
      swift_once();
    }

    v27 = sub_B62F0();
    v28 = __swift_project_value_buffer(v27, qword_F13A0);
    v29 = *(v27 - 8);
    (*(v29 + 16))(v6, v28, v27);
    (*(v29 + 56))(v6, 0, 1, v27);
    v30 = sub_B78D0();
    v32 = v31;
    sub_2B630(v6);
    *(&v51[7] + 8) = 0u;
    *(&v51[8] + 8) = 0u;
    *(&v51[9] + 1) = 0;
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    sub_B6590();
    v33 = sub_B6560();
    v35 = v34;
    (*(v43 + 8))(v3, v44);
    *&v51[0] = v33;
    *(&v51[0] + 1) = v35;
    *&v51[1] = v30;
    *(&v51[1] + 1) = v32;
    LOBYTE(v51[2]) = 0;
    *(&v51[2] + 1) = 0;
    *&v51[3] = 0;
    BYTE8(v51[3]) = 0;
    *&v51[4] = v26;
    *(&v51[4] + 1) = v25;
    LOBYTE(v51[5]) = 1;
    *(&v51[5] + 8) = 0u;
    *(&v51[6] + 8) = 0u;
    memset(&v51[10], 0, 112);
    sub_2C360(&v45, &v51[11]);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v21 = sub_5358C(0, *(v21 + 2) + 1, 1, v21);
    }

    v37 = *(v21 + 2);
    v36 = *(v21 + 3);
    if (v37 >= v36 >> 1)
    {
      v21 = sub_5358C((v36 > 1), v37 + 1, 1, v21);
    }

    *(v21 + 2) = v37 + 1;
    memcpy(&v21[272 * v37 + 32], v51, 0x110uLL);
  }

  return v21;
}

unint64_t sub_57F44()
{
  result = qword_F13C0;
  if (!qword_F13C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F13C8, &unk_C10D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F13C0);
  }

  return result;
}

unint64_t sub_57FB8()
{
  result = qword_F13D8;
  if (!qword_F13D8)
  {
    type metadata accessor for OwnerInfoSectionViewModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F13D8);
  }

  return result;
}

uint64_t sub_58018()
{
  swift_getKeyPath();
  sub_57FB8();
  sub_B65C0();

  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_58098()
{
  swift_getKeyPath();
  sub_57FB8();
  sub_B65C0();

  v1 = *(v0 + 32);

  return v1;
}

uint64_t sub_58118@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_57FB8();
  sub_B65C0();

  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;
}

uint64_t sub_581AC(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);
  if (v5)
  {
    if (a2)
    {
      v6 = *(v2 + 16) == a1 && v5 == a2;
      if (v6 || (sub_B7DD0() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_57FB8();
    sub_B65B0();
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t sub_582EC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_57FB8();
  sub_B65C0();

  v4 = *(v3 + 40);
  *a2 = *(v3 + 32);
  a2[1] = v4;
}

uint64_t sub_58380(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];

  return a5(v7, v6);
}

uint64_t sub_583C8(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  if (v5)
  {
    if (a2)
    {
      v6 = *(v2 + 32) == a1 && v5 == a2;
      if (v6 || (sub_B7DD0() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_57FB8();
    sub_B65B0();
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
}

uint64_t OwnerInfoSectionViewModel.__allocating_init(account:serialNumber:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = 0u;
  *(v8 + 32) = 0u;
  sub_B69B0();
  sub_B65F0();
  sub_581AC(a1, a2);
  sub_583C8(a3, a4);
  return v8;
}

uint64_t OwnerInfoSectionViewModel.init(account:serialNumber:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0u;
  sub_B69B0();
  sub_B65F0();
  sub_581AC(a1, a2);
  sub_583C8(a3, a4);
  return v4;
}

Swift::Void __swiftcall OwnerInfoSectionViewModel.updateProperties(account:serialNumber:)(Swift::String_optional account, Swift::String_optional serialNumber)
{
  object = serialNumber.value._object;
  countAndFlagsBits = serialNumber.value._countAndFlagsBits;
  v4 = account.value._object;
  v5 = account.value._countAndFlagsBits;
  v6 = sub_B69A0();
  v7 = sub_B7B60();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_0, v6, v7, "Updating Owner section for item", v8, 2u);
  }

  sub_581AC(v5, v4);
  if (object)
  {
    sub_97E8();
    countAndFlagsBits = sub_B7BF0();
  }

  else
  {
    v9 = 0;
  }

  sub_583C8(countAndFlagsBits, v9);
}

uint64_t OwnerInfoSectionViewModel.deinit()
{

  v1 = OBJC_IVAR____TtC13FindMyAppCore25OwnerInfoSectionViewModel_logger;
  v2 = sub_B69C0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC13FindMyAppCore25OwnerInfoSectionViewModel___observationRegistrar;
  v4 = sub_B6600();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t OwnerInfoSectionViewModel.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC13FindMyAppCore25OwnerInfoSectionViewModel_logger;
  v2 = sub_B69C0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC13FindMyAppCore25OwnerInfoSectionViewModel___observationRegistrar;
  v4 = sub_B6600();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for OwnerInfoSectionViewModel(uint64_t a1)
{
  result = qword_F1410;
  if (!qword_F1410)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_589D0(uint64_t a1)
{
  result = sub_B69C0();
  if (v2 <= 0x3F)
  {
    result = sub_B6600();
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

uint64_t sub_58AF0()
{
  v1 = v0[2];
  v2 = v0[4];
  *(v1 + 32) = v0[3];
  *(v1 + 40) = v2;
}

uint64_t keypath_setTm(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];

  return a5(v7, v6);
}

uint64_t sub_58B94()
{
  v1 = v0[2];
  v2 = v0[4];
  *(v1 + 16) = v0[3];
  *(v1 + 24) = v2;
}

__n128 OwnerInfoSectionViewModel.Dependencies.init(pasteboardHandler:)@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_58C14()
{
  v0 = sub_B62F0();
  __swift_allocate_value_buffer(v0, qword_FADB0);
  __swift_project_value_buffer(v0, qword_FADB0);
  type metadata accessor for LostModeDetailPlatterModule();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  return sub_B62E0();
}

uint64_t sub_58CE0()
{
  v0 = sub_B62F0();
  __swift_allocate_value_buffer(v0, qword_FADC8);
  __swift_project_value_buffer(v0, qword_FADC8);
  type metadata accessor for SeeLostItemModule();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  return sub_B62E0();
}

void *SeeLostItemView.init(viewModel:onDismiss:)@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  type metadata accessor for SeeLostItemViewModel(0);
  result = sub_B75B0();
  *a4 = v8;
  a4[1] = v9;
  a4[2] = a2;
  a4[3] = a3;
  return result;
}

uint64_t sub_58DE8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_F17B0, &qword_BE7D0);
  __chkstk_darwin(v0 - 8);
  v2 = &v10[-1] - v1;
  v10[3] = &type metadata for SolariumFeatureFlag;
  v10[4] = sub_28360();
  v3 = sub_B6610();
  __swift_destroy_boxed_opaque_existential_0(v10);
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  if (qword_EEAD0 != -1)
  {
    swift_once();
  }

  v4 = sub_B62F0();
  v5 = __swift_project_value_buffer(v4, qword_FADC8);
  v6 = *(v4 - 8);
  (*(v6 + 16))(v2, v5, v4);
  (*(v6 + 56))(v2, 0, 1, v4);
  v7 = sub_B78D0();
  sub_A194(v2, &unk_F17B0, &qword_BE7D0);
  return v7;
}

uint64_t SeeLostItemView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v135 = a1;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEE00, &unk_BDA40);
  v131 = *(v132 - 8);
  __chkstk_darwin(v132);
  v107 = &v106 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEE08, &qword_BD530);
  __chkstk_darwin(v3 - 8);
  v130 = &v106 - v4;
  v141 = sub_B67E0();
  v146 = *(v141 - 8);
  __chkstk_darwin(v141);
  v142 = &v106 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = sub_B67D0();
  v145 = *(v140 - 8);
  v6 = __chkstk_darwin(v140);
  v136 = &v106 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v117 = &v106 - v9;
  __chkstk_darwin(v8);
  v116 = &v106 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_F17B0, &qword_BE7D0);
  __chkstk_darwin(v11 - 8);
  v13 = &v106 - v12;
  v127 = sub_B6850();
  v126 = *(v127 - 8);
  __chkstk_darwin(v127);
  v125 = &v106 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0BB8, &qword_C0468);
  v129 = *(v143 - 8);
  __chkstk_darwin(v143);
  v128 = &v106 - v15;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F15E0, &qword_C12A8);
  v133 = *(v134 - 8);
  __chkstk_darwin(v134);
  v144 = &v106 - v16;
  v17 = *v1;
  v151 = v1[1];
  v18 = v1[2];
  v19 = v1[3];
  v149 = v18;
  if (qword_EEAD0 != -1)
  {
    swift_once();
  }

  v20 = sub_B62F0();
  v21 = __swift_project_value_buffer(v20, qword_FADC8);
  v22 = *(v20 - 8);
  v23 = v22 + 16;
  v24 = *(v22 + 16);
  v24(v13, v21, v20);
  v26 = *(v22 + 56);
  v25 = v22 + 56;
  v26(v13, 0, 1, v20);
  v124 = sub_B78D0();
  v123 = v27;
  sub_A194(v13, &unk_F17B0, &qword_BE7D0);
  v28 = v151;
  v155 = v17;
  v156 = v151;
  v157 = v149;
  v158 = v19;
  v148 = v19;
  v122 = sub_58DE8();
  v121 = v29;
  v138 = v23;
  v137 = v24;
  v24(v13, v21, v20);
  v118 = v20;
  v139 = v26;
  v26(v13, 0, 1, v20);
  v120 = sub_B78D0();
  v119 = v30;
  sub_A194(v13, &unk_F17B0, &qword_BE7D0);
  v152 = v17;
  v153 = v28;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F15E8, &qword_C12B0);
  sub_B75C0();
  v32 = v154;
  swift_getKeyPath();
  v152 = v32;
  v150 = sub_5D9BC(&qword_F15F0, type metadata accessor for SeeLostItemViewModel, &protocol conformance descriptor for SeeLostItemViewModel);
  sub_B65C0();

  v33 = *(v32 + OBJC_IVAR____TtC13FindMyAppCore20SeeLostItemViewModel__isPartnerURL);

  v34 = v17;
  v147 = v31;
  if ((v33 & 1) != 0 || (v152 = v17, v153 = v151, sub_B75C0(), v35 = v154, swift_getKeyPath(), v152 = v35, sub_B65C0(), , v36 = *(v35 + OBJC_IVAR____TtC13FindMyAppCore20SeeLostItemViewModel__isSignedIn), , (v36 & 1) == 0))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0BE8, &unk_C0EB0);
    v47 = *(sub_B6800() - 8);
    v115 = *(v47 + 72);
    v48 = (*(v47 + 80) + 32) & ~*(v47 + 80);
    v49 = swift_allocObject();
    v114 = v49;
    *(v49 + 16) = xmmword_BD800;
    v136 = (v49 + v48);
    v50 = v118;
    v137(v13, v21, v118);
    v139(v13, 0, 1, v50);
    v109 = sub_B78D0();
    v108 = v51;
    sub_A194(v13, &unk_F17B0, &qword_BE7D0);
    v52 = v151;
    v152 = v34;
    v153 = v151;
    sub_B75C0();
    v110 = v25;
    v53 = v34;
    v54 = v154;
    swift_getKeyPath();
    v152 = v54;
    sub_B65C0();

    v55 = *(v54 + OBJC_IVAR____TtC13FindMyAppCore20SeeLostItemViewModel__isLoadingItemData);

    v56 = *(v145 + 104);
    v113 = v56;
    v145 += 104;
    v112 = enum case for OnboardingTrayAction.State.enabled(_:);
    if (v55)
    {
      v57 = enum case for OnboardingTrayAction.State.loading(_:);
    }

    else
    {
      v57 = enum case for OnboardingTrayAction.State.enabled(_:);
    }

    v56(v116, v57, v140);
    v58 = *(v146 + 104);
    v146 += 104;
    v111 = v58;
    v58(v142, enum case for OnboardingTrayAction.Style.bold(_:), v141);
    v59 = swift_allocObject();
    v59[2] = v34;
    v59[3] = v52;
    v61 = v148;
    v60 = v149;
    v59[4] = v149;
    v59[5] = v61;

    sub_B67F0();
    v137(v13, v21, v50);
    v139(v13, 0, 1, v50);
    sub_B78D0();
    v139 = v62;
    sub_A194(v13, &unk_F17B0, &qword_BE7D0);
    v152 = v53;
    v153 = v52;
    sub_B75C0();
    v63 = v154;
    swift_getKeyPath();
    v152 = v63;
    sub_B65C0();

    v64 = *(v63 + OBJC_IVAR____TtC13FindMyAppCore20SeeLostItemViewModel__isLoadingItemData);

    if (v64)
    {
      v65 = enum case for OnboardingTrayAction.State.disabled(_:);
    }

    else
    {
      v65 = v112;
    }

    v113(v117, v65, v140);
    v111(v142, enum case for OnboardingTrayAction.Style.link(_:), v141);
    v66 = swift_allocObject();
    v66[2] = v53;
    v66[3] = v52;
    v66[4] = v60;
    v66[5] = v61;
    v46 = v53;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0BE8, &unk_C0EB0);
    v37 = *(sub_B6800() - 8);
    v117 = ((*(v37 + 80) + 32) & ~*(v37 + 80));
    *(swift_allocObject() + 16) = xmmword_BDA30;
    v38 = v118;
    v137(v13, v21, v118);
    v139(v13, 0, 1, v38);
    sub_B78D0();
    v139 = v39;
    sub_A194(v13, &unk_F17B0, &qword_BE7D0);
    v40 = v151;
    v152 = v17;
    v153 = v151;
    sub_B75C0();
    v41 = v154;
    swift_getKeyPath();
    v152 = v41;
    sub_B65C0();

    v42 = *(v41 + OBJC_IVAR____TtC13FindMyAppCore20SeeLostItemViewModel__isLoadingItemData);

    v43 = &enum case for OnboardingTrayAction.State.loading(_:);
    if (!v42)
    {
      v43 = &enum case for OnboardingTrayAction.State.enabled(_:);
    }

    (*(v145 + 104))(v136, *v43, v140);
    (*(v146 + 104))(v142, enum case for OnboardingTrayAction.Style.bold(_:), v141);
    v44 = swift_allocObject();
    v44[2] = v17;
    v44[3] = v40;
    v45 = v148;
    v44[4] = v149;
    v44[5] = v45;

    v46 = v34;
  }

  sub_B67F0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F15F8, &qword_C1330);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0C08, &qword_C04D8);
  sub_5D3E0();
  sub_A8CC(&qword_F0C28, &qword_F0C08, &qword_C04D8, &protocol conformance descriptor for TupleView<A>);
  v67 = v125;
  sub_B6840();
  v68 = v46;
  v69 = v151;
  v155 = v46;
  v156 = v151;
  sub_B75C0();
  v70 = v152;
  swift_getKeyPath();
  v155 = v70;
  sub_B65C0();

  v71 = sub_5D9BC(&qword_F0560, &type metadata accessor for OnboardingWelcomeView, &protocol conformance descriptor for OnboardingWelcomeView);
  v72 = v128;
  v73 = v127;
  sub_B73A0();
  v74 = (*(v126 + 8))(v67, v73);
  __chkstk_darwin(v74);
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0558, &qword_BFBB8);
  v155 = v73;
  v156 = v71;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v77 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F0568, &qword_BFBC0);
  v78 = sub_A8CC(&qword_F0570, &qword_F0568, &qword_BFBC0, &protocol conformance descriptor for ToolbarItem<A, B>);
  v155 = v77;
  v156 = v78;
  v79 = swift_getOpaqueTypeConformance2();
  v80 = v143;
  v150 = v75;
  v145 = v79;
  v146 = OpaqueTypeConformance2;
  sub_B7450();
  (*(v129 + 8))(v72, v80);
  v155 = v68;
  v156 = v69;
  sub_B75C0();
  v81 = v130;
  sub_5E754(v130);

  v82 = v131;
  v83 = v132;
  if ((*(v131 + 48))(v81, 1, v132))
  {
    sub_A194(v81, &qword_EEE08, &qword_BD530);
    v84 = 0;
    v85 = 0xE000000000000000;
  }

  else
  {
    v86 = v107;
    (*(v82 + 16))(v107, v81, v83);
    sub_A194(v81, &qword_EEE08, &qword_BD530);
    v84 = sub_B6920();
    v85 = v87;
    (*(v82 + 8))(v86, v83);
  }

  v155 = v84;
  v156 = v85;
  sub_97E8();
  v147 = sub_B7200();
  v141 = v89;
  v142 = v88;
  v91 = v90;
  sub_B7A60();
  v92 = v151;

  v93 = v148;

  v94 = sub_B7A50();
  v95 = swift_allocObject();
  v95[2] = v94;
  v95[3] = &protocol witness table for MainActor;
  v95[4] = v68;
  v95[5] = v92;
  v96 = v149;
  v95[6] = v149;
  v95[7] = v93;

  v97 = sub_B7A50();
  v98 = swift_allocObject();
  v98[2] = v97;
  v98[3] = &protocol witness table for MainActor;
  v98[4] = v68;
  v98[5] = v92;
  v98[6] = v96;
  v98[7] = v93;
  v99 = sub_B76D0();
  v100 = __chkstk_darwin(v99);
  __chkstk_darwin(v100);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEE70, &qword_BFEF0);
  v155 = v143;
  v156 = v150;
  v157 = v146;
  v158 = v145;
  swift_getOpaqueTypeConformance2();
  sub_9BD4();
  v101 = v134;
  v102 = v147;
  v103 = v142;
  v104 = v144;
  sub_B7400();

  sub_9C84(v102, v103, v91 & 1);

  return (*(v133 + 8))(v104, v101);
}

uint64_t sub_5A504@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_B7550();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = &type metadata for SolariumFeatureFlag;
  v22 = sub_28360();
  v6 = sub_B6610();
  __swift_destroy_boxed_opaque_existential_0(&v18);
  if (v6)
  {
    type metadata accessor for SeeLostItemModule();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v8 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
    sub_B7580();
    (*(v3 + 104))(v5, enum case for Image.ResizingMode.stretch(_:), v2);
    v9 = sub_B7570();

    (*(v3 + 8))(v5, v2);
    v14 = v9;
    v15 = 0;
    v16 = 257;
    v17 = 0;
  }

  else
  {
    v14 = sub_5A780;
    v15 = 0;
    v16 = 0;
    v17 = 1;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0538, &qword_C04E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1610, &qword_C1338);
  sub_40DB8();
  sub_A8CC(&qword_F1608, &qword_F1610, &qword_C1338, &protocol conformance descriptor for GeometryReader<A>);
  result = sub_B6F00();
  v11 = v19;
  v12 = v20 != 0;
  *a1 = v18;
  *(a1 + 16) = v11;
  *(a1 + 18) = v12;
  return result;
}

double sub_5A780@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_B7550();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_B7A60();
  sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for SeeLostItemModule();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  sub_B7580();
  (*(v3 + 104))(v5, enum case for Image.ResizingMode.stretch(_:), v2);
  v8 = sub_B7570();

  (*(v3 + 8))(v5, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1618, &qword_C1480);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_BD800;
  *(v9 + 32) = sub_B74D0();
  *(v9 + 40) = sub_B74E0();
  sub_B7740();
  sub_B77D0();
  sub_B6B60();
  sub_B6B60();
  sub_B6BC0();
  v10 = v13[1];

  *a1 = v8;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 17) = 1;
  *(a1 + 19) = 1;
  *(a1 + 24) = v10;
  result = *&v14;
  v12 = v15;
  *(a1 + 32) = v14;
  *(a1 + 48) = v12;
  return result;
}

uint64_t sub_5AA20@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_F17B0, &qword_BE7D0);
  __chkstk_darwin(v2 - 8);
  v4 = &v25[-v3];
  v26[3] = &type metadata for SolariumFeatureFlag;
  v26[4] = sub_28360();
  v5 = sub_B6610();
  result = __swift_destroy_boxed_opaque_existential_0(v26);
  if (v5)
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    KeyPath = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
  }

  else
  {
    if (qword_EEAD0 != -1)
    {
      swift_once();
    }

    v15 = sub_B62F0();
    v16 = __swift_project_value_buffer(v15, qword_FADC8);
    v17 = *(v15 - 8);
    (*(v17 + 16))(v4, v16, v15);
    v12 = 1;
    (*(v17 + 56))(v4, 0, 1, v15);
    v18 = sub_B78D0();
    v20 = v19;
    sub_A194(v4, &unk_F17B0, &qword_BE7D0);
    v26[0] = v18;
    v26[1] = v20;
    sub_97E8();
    v8 = sub_B7200();
    v9 = v21;
    v23 = v22;
    v10 = v24;
    KeyPath = swift_getKeyPath();
    LOBYTE(v26[0]) = 0;
    v23 &= 1u;
    v25[0] = v23;
    sub_41410(v8, v9, v23);

    sub_9C84(v8, v9, v23);

    v14 = LOBYTE(v26[0]);
    v13 = v25[0];
    v7 = 0x4030000000000000;
  }

  *a1 = v7;
  *(a1 + 8) = v14;
  *(a1 + 16) = v8;
  *(a1 + 24) = v9;
  *(a1 + 32) = v13;
  *(a1 + 40) = v10;
  *(a1 + 48) = KeyPath;
  *(a1 + 56) = v12;
  return result;
}

uint64_t sub_5AC9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  sub_B7A60();
  v5[7] = sub_B7A50();
  v7 = sub_B7A00();
  v5[8] = v7;
  v5[9] = v6;

  return _swift_task_switch(sub_5AD34, v7, v6);
}

uint64_t sub_5AD34()
{
  v1 = v0[6];
  v0[2] = v0[5];
  v0[3] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F15E8, &qword_C12B0);
  sub_B75C0();
  v0[10] = v0[4];
  v2 = swift_task_alloc();
  v0[11] = v2;
  *v2 = v0;
  v2[1] = sub_5ADF4;

  return sub_5DD18();
}

uint64_t sub_5ADF4()
{
  v1 = *v0;

  v2 = *(v1 + 72);
  v3 = *(v1 + 64);

  return _swift_task_switch(sub_5AF38, v3, v2);
}

uint64_t sub_5AF38()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_5AF98(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *))
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_F1790, &qword_C16E0);
  __chkstk_darwin(v7 - 8);
  v9 = v18 - v8;
  v18[2] = a2;
  v18[3] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F15E8, &qword_C12B0);
  sub_B75C0();
  v10 = v18[1];
  v11 = sub_B69A0();
  v12 = sub_B7B60();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_0, v11, v12, "SeeLostItemViewModel: Opening partner item link on web", v13, 2u);
  }

  v14 = OBJC_IVAR____TtC13FindMyAppCore20SeeLostItemViewModel_inputURL;
  v15 = sub_B64C0();
  v16 = *(v15 - 8);
  (*(v16 + 16))(v9, v10 + v14, v15);
  (*(v16 + 56))(v9, 0, 1, v15);
  a4(v9);

  return sub_A194(v9, &unk_F1790, &qword_C16E0);
}

uint64_t sub_5B17C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF458, &qword_BDED0);
  __chkstk_darwin(v12 - 8);
  v14 = &v19 - v13;
  v15 = sub_B7A80();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  sub_B7A60();

  v16 = sub_B7A50();
  v17 = swift_allocObject();
  v17[2] = v16;
  v17[3] = &protocol witness table for MainActor;
  v17[4] = a2;
  v17[5] = a3;
  v17[6] = a4;
  v17[7] = a5;
  sub_30A3C(0, 0, v14, a7, v17);
}

uint64_t sub_5B2C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  sub_B7A60();
  v5[7] = sub_B7A50();
  v7 = sub_B7A00();
  v5[8] = v7;
  v5[9] = v6;

  return _swift_task_switch(sub_5B35C, v7, v6);
}

uint64_t sub_5B35C()
{
  v1 = v0[6];
  v0[2] = v0[5];
  v0[3] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F15E8, &qword_C12B0);
  sub_B75C0();
  v0[10] = v0[4];
  v2 = swift_task_alloc();
  v0[11] = v2;
  *v2 = v0;
  v2[1] = sub_5B41C;

  return sub_5DD18();
}

uint64_t sub_5B41C()
{
  v1 = *v0;

  v2 = *(v1 + 72);
  v3 = *(v1 + 64);

  return _swift_task_switch(sub_5DC68, v3, v2);
}

uint64_t sub_5B560@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v16[0] = a4;
  v16[1] = a5;
  v8 = sub_B6F50();
  __chkstk_darwin(v8 - 8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0568, &qword_BFBC0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v16 - v11;
  sub_B7A60();
  sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v13 = sub_B6F30();
  __chkstk_darwin(v13);
  v16[-4] = a1;
  v16[-3] = a2;
  v14 = v16[0];
  v16[-2] = a3;
  v16[-1] = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0630, &unk_BFD20);
  sub_41428();
  sub_B6A80();
  sub_A8CC(&qword_F0570, &qword_F0568, &qword_BFBC0, &protocol conformance descriptor for ToolbarItem<A, B>);
  sub_B6F60();
  (*(v10 + 8))(v12, v9);
}

uint64_t sub_5B7B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v65 = a3;
  v66 = a4;
  v67 = a2;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0690, &unk_BFD50);
  __chkstk_darwin(v64);
  v8 = &v61 - v7;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0680, &qword_BFD48);
  __chkstk_darwin(v73);
  v10 = &v61 - v9;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0698, &qword_BFD60);
  __chkstk_darwin(v71);
  v72 = &v61 - v11;
  v12 = sub_B7950();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_F17B0, &qword_BE7D0);
  __chkstk_darwin(v16 - 8);
  v18 = &v61 - v17;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0658, &unk_BFD30);
  __chkstk_darwin(v62);
  v61 = &v61 - v19;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0648, &unk_C1FC0);
  __chkstk_darwin(v70);
  v63 = &v61 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0630, &unk_BFD20);
  __chkstk_darwin(v21 - 8);
  v69 = &v61 - v22;
  sub_B7A60();
  v68 = sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v77 = &type metadata for SolariumFeatureFlag;
  v78 = sub_28360();
  v23 = sub_B6610();
  __swift_destroy_boxed_opaque_existential_0(&v75);
  if (v23)
  {
    v64 = a5;
    if (qword_EEAB0 != -1)
    {
      swift_once();
    }

    v24 = sub_B62F0();
    v25 = __swift_project_value_buffer(v24, qword_FAD48);
    v26 = *(v24 - 8);
    (*(v26 + 16))(v18, v25, v24);
    (*(v26 + 56))(v18, 0, 1, v24);
    v27 = sub_B78D0();
    v29 = v28;
    sub_A194(v18, &unk_F17B0, &qword_BE7D0);
    (*(v13 + 104))(v15, enum case for String.ButtonType.cancel(_:), v12);
    v30 = sub_B7960();
    v32 = v31;
    (*(v13 + 8))(v15, v12);
    v33 = swift_allocObject();
    v33[2] = a1;
    v34 = a1;
    v36 = v66;
    v35 = v67;
    v37 = v65;
    v33[3] = v67;
    v33[4] = v37;
    v33[5] = v36;
    v75 = v27;
    v76 = v29;
    __chkstk_darwin(v33);
    *(&v61 - 4) = &v75;
    *(&v61 - 3) = v30;
    *(&v61 - 2) = v32;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F06A0, &unk_C06B0);
    sub_A8CC(&qword_F06A8, &qword_F06A0, &unk_C06B0, &protocol conformance descriptor for Label<A, B>);
    v38 = v61;
    sub_B7610();

    v75 = v34;
    v76 = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F15E8, &qword_C12B0);
    sub_B75C0();
    v39 = v74;
    swift_getKeyPath();
    v75 = v39;
    sub_5D9BC(&qword_F15F0, type metadata accessor for SeeLostItemViewModel, &protocol conformance descriptor for SeeLostItemViewModel);
    sub_B65C0();

    LOBYTE(v32) = *(v39 + OBJC_IVAR____TtC13FindMyAppCore20SeeLostItemViewModel__isLoadingItemData);

    KeyPath = swift_getKeyPath();
    v41 = swift_allocObject();
    *(v41 + 16) = v32;
    v42 = (v38 + *(v62 + 36));
    *v42 = KeyPath;
    v42[1] = sub_42D18;
    v42[2] = v41;
    sub_415C0();
    v43 = v63;
    sub_B7360();
    sub_A194(v38, &qword_F0658, &unk_BFD30);
    sub_A310(v43, v72, &qword_F0648, &unk_C1FC0);
    swift_storeEnumTagMultiPayload();
    sub_5D908(&qword_F0640, &qword_F0648, &unk_C1FC0, sub_415C0);
    sub_5D908(&qword_F0678, &qword_F0680, &qword_BFD48, sub_416A4);
    v44 = v69;
    sub_B6F00();
    sub_A194(v43, &qword_F0648, &unk_C1FC0);
    a5 = v64;
  }

  else
  {
    v45 = v10;
    if (qword_EEAB0 != -1)
    {
      swift_once();
    }

    v46 = sub_B62F0();
    v47 = __swift_project_value_buffer(v46, qword_FAD48);
    v48 = *(v46 - 8);
    (*(v48 + 16))(v18, v47, v46);
    (*(v48 + 56))(v18, 0, 1, v46);
    v49 = sub_B78D0();
    v51 = v50;
    sub_A194(v18, &unk_F17B0, &qword_BE7D0);
    v75 = v49;
    v76 = v51;
    v52 = swift_allocObject();
    v54 = v66;
    v53 = v67;
    v52[2] = a1;
    v52[3] = v53;
    v52[4] = v65;
    v52[5] = v54;
    sub_97E8();

    sub_B7640();
    v75 = a1;
    v76 = v53;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F15E8, &qword_C12B0);
    sub_B75C0();
    v55 = v74;
    swift_getKeyPath();
    v75 = v55;
    sub_5D9BC(&qword_F15F0, type metadata accessor for SeeLostItemViewModel, &protocol conformance descriptor for SeeLostItemViewModel);
    sub_B65C0();

    LOBYTE(v51) = *(v55 + OBJC_IVAR____TtC13FindMyAppCore20SeeLostItemViewModel__isLoadingItemData);

    v56 = swift_getKeyPath();
    v57 = swift_allocObject();
    *(v57 + 16) = v51;
    v58 = &v8[*(v64 + 36)];
    *v58 = v56;
    v58[1] = sub_417AC;
    v58[2] = v57;
    sub_416A4();
    v59 = v45;
    sub_B7360();
    sub_A194(v8, &qword_F0690, &unk_BFD50);
    sub_A310(v45, v72, &qword_F0680, &qword_BFD48);
    swift_storeEnumTagMultiPayload();
    sub_5D908(&qword_F0640, &qword_F0648, &unk_C1FC0, sub_415C0);
    sub_5D908(&qword_F0678, &qword_F0680, &qword_BFD48, sub_416A4);
    v44 = v69;
    sub_B6F00();
    sub_A194(v59, &qword_F0680, &qword_BFD48);
  }

  sub_5DA40(v44, a5);
}

uint64_t sub_5C340(uint64_t a1, uint64_t a2, void (*a3)(char *), uint64_t a4, uint64_t a5)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_F1790, &qword_C16E0);
  __chkstk_darwin(v6 - 8);
  v8 = &v11 - v7;
  sub_B7A60();
  sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v9 = sub_B64C0();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  a3(v8);
  sub_A194(v8, &unk_F1790, &qword_C16E0);
}

uint64_t sub_5C49C@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, BOOL *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEE08, &qword_BD530);
  __chkstk_darwin(v6 - 8);
  v8 = v12 - v7;
  sub_B7A60();
  sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v12[2] = a1;
  v12[3] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F15E8, &qword_C12B0);
  sub_B75C0();
  sub_5E754(v8);

  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEE00, &unk_BDA40);
  v10 = (*(*(v9 - 8) + 48))(v8, 1, v9) != 1;
  sub_A194(v8, &qword_EEE08, &qword_BD530);

  *a3 = v10;
  return result;
}

uint64_t sub_5C638(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_B7A60();
  sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8[0] = a4;
  v8[1] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F15E8, &qword_C12B0);
  sub_B75C0();
  LOWORD(v8[0]) = -256;
  sub_6001C(v8);
}

uint64_t sub_5C718(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEE00, &unk_BDA40);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v19 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEE08, &qword_BD530);
  __chkstk_darwin(v8 - 8);
  v10 = v19 - v9;
  sub_B7A60();
  sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v19[0] = a1;
  v19[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F15E8, &qword_C12B0);
  sub_B75C0();
  sub_5E754(v10);

  if ((*(v5 + 48))(v10, 1, v4))
  {
    sub_A194(v10, &qword_EEE08, &qword_BD530);
    v11 = &_swiftEmptyArrayStorage;
  }

  else
  {
    (*(v5 + 16))(v7, v10, v4);
    sub_A194(v10, &qword_EEE08, &qword_BD530);
    v11 = sub_B6930();
    (*(v5 + 8))(v7, v4);
  }

  v19[0] = v11;
  KeyPath = swift_getKeyPath();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEF30, &qword_C1F50);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEE88, &qword_BD620);
  v15 = sub_A8CC(&qword_EEF38, &qword_EEF30, &qword_C1F50, &protocol conformance descriptor for [A]);
  v16 = sub_A8CC(&qword_EEE80, &qword_EEE88, &qword_BD620, &protocol conformance descriptor for Button<A>);
  sub_B76E0(v19, KeyPath, sub_5CA64, 0, v13, v14, v15, &protocol witness table for String, v16);
}

uint64_t sub_5CA64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20[1] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEF40, &unk_BD6E0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v20 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEF48, &unk_C01F0);
  __chkstk_darwin(v7 - 8);
  v9 = v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEF50, &unk_BD6F0);
  __chkstk_darwin(v10 - 8);
  v12 = v20 - v11;
  sub_B7A60();
  v20[0] = sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v20[2] = sub_B68C0();
  v20[3] = v13;
  sub_B68A0();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F17D0, &unk_BFFA0);
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v9, 1, v14) == 1)
  {
    sub_A194(v9, &qword_EEF48, &unk_C01F0);
    v16 = sub_B6A00();
    (*(*(v16 - 8) + 56))(v12, 1, 1, v16);
  }

  else
  {
    sub_B6890();
    (*(v15 + 8))(v9, v14);
  }

  (*(v4 + 16))(v6, a1, v3);
  v17 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v18 = swift_allocObject();
  (*(v4 + 32))(v18 + v17, v6, v3);
  sub_97E8();
  sub_B7630();
}

uint64_t sub_5CDD0()
{
  sub_B7A60();
  sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEF40, &unk_BD6E0);
  v0 = sub_B68D0();
  v2(v0);
}

uint64_t sub_5CE98@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEE00, &unk_BDA40);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v24 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEE08, &qword_BD530);
  __chkstk_darwin(v10 - 8);
  v12 = &v24 - v11;
  sub_B7A60();
  sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v25 = a1;
  v26 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F15E8, &qword_C12B0);
  sub_B75C0();
  sub_5E754(v12);

  if ((*(v7 + 48))(v12, 1, v6))
  {
    sub_A194(v12, &qword_EEE08, &qword_BD530);
    v13 = 0;
    v14 = 0xE000000000000000;
  }

  else
  {
    (*(v7 + 16))(v9, v12, v6);
    sub_A194(v12, &qword_EEE08, &qword_BD530);
    v13 = sub_B6940();
    v14 = v15;
    (*(v7 + 8))(v9, v6);
  }

  v25 = v13;
  v26 = v14;
  sub_97E8();
  v16 = sub_B7200();
  v18 = v17;
  v20 = v19;
  v22 = v21;

  *a3 = v16;
  *(a3 + 8) = v18;
  *(a3 + 16) = v20 & 1;
  *(a3 + 24) = v22;
  return result;
}

uint64_t sub_5D1DC@<X0>(uint64_t *a1@<X0>, void *a3@<X4>, _BYTE *a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_5D9BC(&qword_F15F0, type metadata accessor for SeeLostItemViewModel, &protocol conformance descriptor for SeeLostItemViewModel);
  sub_B65C0();

  *a4 = *(v6 + *a3);
  return result;
}

unint64_t sub_5D3E0()
{
  result = qword_F1600;
  if (!qword_F1600)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F15F8, &qword_C1330);
    sub_40DB8();
    sub_A8CC(&qword_F1608, &qword_F1610, &qword_C1338, &protocol conformance descriptor for GeometryReader<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F1600);
  }

  return result;
}

uint64_t sub_5D548()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F15E0, &qword_C12A8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_EEE70, &qword_BFEF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F0BB8, &qword_C0468);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F0558, &qword_BFBB8);
  sub_B6850();
  sub_5D9BC(&qword_F0560, &type metadata accessor for OnboardingWelcomeView, &protocol conformance descriptor for OnboardingWelcomeView);
  swift_getOpaqueTypeConformance2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F0568, &qword_BFBC0);
  sub_A8CC(&qword_F0570, &qword_F0568, &qword_BFBC0, &protocol conformance descriptor for ToolbarItem<A, B>);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_9BD4();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_5D724(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2184C;

  return sub_5B2C4(a1, v4, v5, v6, v7);
}

uint64_t sub_5D7FC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEF40, &unk_BD6E0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_5D890()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEF40, &unk_BD6E0);

  return sub_5CDD0();
}

uint64_t sub_5D908(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    sub_5D9BC(&qword_F0670, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_5D9BC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_5DA40(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0630, &unk_BFD20);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm_6()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t objectdestroy_15Tm_0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_5DB74(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_F248;

  return sub_5AC9C(a1, v4, v5, v6, v7);
}

uint64_t sub_5DCA8(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_60848();
  sub_B65C0();

  return *(v2 + *a2);
}

uint64_t sub_5DD18()
{
  v1[7] = v0;
  sub_B7A60();
  v1[8] = sub_B7A50();
  v3 = sub_B7A00();
  v1[9] = v3;
  v1[10] = v2;

  return _swift_task_switch(sub_5DDB0, v3, v2);
}

uint64_t sub_5DDB0()
{
  v10 = v0;
  v1 = v0[7];
  swift_getKeyPath();
  v0[2] = v1;
  v0[11] = OBJC_IVAR____TtC13FindMyAppCore20SeeLostItemViewModel___observationRegistrar;
  v0[12] = sub_60848();
  sub_B65C0();

  if ((*(v1 + OBJC_IVAR____TtC13FindMyAppCore20SeeLostItemViewModel__isPartnerURL) & 1) != 0 || (v2 = v0[7], swift_getKeyPath(), v0[3] = v2, sub_B65C0(), , *(v2 + OBJC_IVAR____TtC13FindMyAppCore20SeeLostItemViewModel__isSignedIn) == 1))
  {
    v3 = v0[7];
    v4 = OBJC_IVAR____TtC13FindMyAppCore20SeeLostItemViewModel__isLoadingItemData;
    v0[13] = OBJC_IVAR____TtC13FindMyAppCore20SeeLostItemViewModel__isLoadingItemData;
    if (*(v3 + v4) == 1)
    {
      *(v3 + v4) = 1;
    }

    else
    {
      swift_getKeyPath();
      v5 = swift_task_alloc();
      *(v5 + 16) = v3;
      *(v5 + 24) = 1;
      v0[4] = v3;
      sub_B65B0();
    }

    v6 = swift_task_alloc();
    v0[14] = v6;
    *v6 = v0;
    v6[1] = sub_5DFF0;

    return sub_608EC();
  }

  else
  {

    v9[0] = 516;
    sub_6001C(v9);
    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_5DFF0(char a1)
{
  v4 = *v2;
  *(*v2 + 120) = v1;

  if (v1)
  {
    v5 = *(v4 + 72);
    v6 = *(v4 + 80);
    v7 = sub_5E540;
  }

  else
  {
    *(v4 + 136) = a1 & 1;
    v5 = *(v4 + 72);
    v6 = *(v4 + 80);
    v7 = sub_5E11C;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_5E11C(uint64_t a1)
{
  v16 = v1;
  if (*(v1 + 136) == 1)
  {
    v2 = sub_B69A0();
    v3 = sub_B7B60();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_0, v2, v3, "SeeLostItemViewModel: Share is valid", v4, 2u);
    }

    v5 = swift_task_alloc();
    *(v1 + 128) = v5;
    *v5 = v1;
    v5[1] = sub_5E3C0;

    return sub_60D0C(0, 0);
  }

  else
  {

    v7 = sub_B69A0();
    v8 = sub_B7B60();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_0, v7, v8, "SeeLostItemViewModel: Share is not valid", v9, 2u);
    }

    v10 = *(v1 + 104);
    v11 = *(v1 + 56);

    if (*(v11 + v10))
    {
      v12 = *(v1 + 56);
      swift_getKeyPath();
      v13 = swift_task_alloc();
      *(v13 + 16) = v12;
      *(v13 + 24) = 0;
      *(v1 + 48) = v12;
      sub_B65B0();
    }

    else
    {
      *(*(v1 + 56) + *(v1 + 104)) = 0;
    }

    v15[0] = 515;
    sub_6001C(v15);
    v14 = *(v1 + 8);

    return v14();
  }
}

uint64_t sub_5E3C0()
{
  v1 = *v0;

  v2 = *(v1 + 80);
  v3 = *(v1 + 72);

  return _swift_task_switch(sub_5E4E0, v3, v2);
}

uint64_t sub_5E4E0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_5E540()
{
  v13 = v0;

  swift_errorRetain();
  v1 = sub_B69A0();
  v2 = sub_B7B40();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&dword_0, v1, v2, "SeeLostItemViewModel: Failed to load preview data with error: %@", v3, 0xCu);
    sub_A194(v4, &qword_EF4F8, &qword_C16D0);
  }

  v6 = v0[13];
  v7 = v0[7];

  if (*(v7 + v6))
  {
    v8 = v0[7];
    swift_getKeyPath();
    v9 = swift_task_alloc();
    *(v9 + 16) = v8;
    *(v9 + 24) = 0;
    v0[5] = v8;
    sub_B65B0();
  }

  else
  {
    *(v0[7] + v0[13]) = 0;
  }

  v12[0] = 513;
  sub_6001C(v12);

  v10 = v0[1];

  return v10();
}

uint64_t sub_5E754@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEF48, &unk_C01F0);
  __chkstk_darwin(v3 - 8);
  v5 = v75 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_F17B0, &qword_BE7D0);
  __chkstk_darwin(v6 - 8);
  v8 = v75 - v7;
  swift_getKeyPath();
  v90 = v1;
  sub_60848();
  sub_B65C0();

  if ((*&v1[OBJC_IVAR____TtC13FindMyAppCore20SeeLostItemViewModel__destination] + 256) >= 0x300u)
  {
    v10 = *&v1[OBJC_IVAR____TtC13FindMyAppCore20SeeLostItemViewModel__destination];
    v88 = v5;
    v89 = a1;
    if (v10 <= 1)
    {
      if (v10)
      {
        if (qword_EEAD0 != -1)
        {
          swift_once();
        }

        v62 = sub_B62F0();
        v63 = __swift_project_value_buffer(v62, qword_FADC8);
        v64 = *(v62 - 8);
        v65 = *(v64 + 16);
        v65(v8, v63, v62);
        v66 = *(v64 + 56);
        v66(v8, 0, 1, v62);
        v67 = sub_B78D0();
        v86 = v68;
        v87 = v67;
        sub_A194(v8, &unk_F17B0, &qword_BE7D0);
        v65(v8, v63, v62);
        v66(v8, 0, 1, v62);
        v69 = sub_B78D0();
        v84 = v70;
        v85 = v69;
        sub_A194(v8, &unk_F17B0, &qword_BE7D0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_F17C0, &qword_C1760);
        v71 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEF40, &unk_BD6E0) - 8);
        v83 = (*(v71 + 80) + 32) & ~*(v71 + 80);
        *(swift_allocObject() + 16) = xmmword_BDA30;
        v65(v8, v63, v62);
        v66(v8, 0, 1, v62);
        sub_B78D0();
        sub_A194(v8, &unk_F17B0, &qword_BE7D0);
        v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F17D0, &unk_BFFA0);
        (*(*(v72 - 8) + 56))(v88, 1, 1, v72);
        v22 = swift_allocObject();
        swift_weakInit();
      }

      else
      {
        if (qword_EEAD0 != -1)
        {
          swift_once();
        }

        v23 = sub_B62F0();
        v24 = __swift_project_value_buffer(v23, qword_FADC8);
        v25 = *(v23 - 8);
        v26 = *(v25 + 16);
        v26(v8, v24, v23);
        v27 = *(v25 + 56);
        v27(v8, 0, 1, v23);
        v28 = sub_B78D0();
        v86 = v29;
        v87 = v28;
        sub_A194(v8, &unk_F17B0, &qword_BE7D0);
        v26(v8, v24, v23);
        v27(v8, 0, 1, v23);
        v30 = sub_B78D0();
        v84 = v31;
        v85 = v30;
        sub_A194(v8, &unk_F17B0, &qword_BE7D0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_F17C0, &qword_C1760);
        v32 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEF40, &unk_BD6E0) - 8);
        v83 = (*(v32 + 80) + 32) & ~*(v32 + 80);
        *(swift_allocObject() + 16) = xmmword_BDA30;
        v26(v8, v24, v23);
        v27(v8, 0, 1, v23);
        sub_B78D0();
        sub_A194(v8, &unk_F17B0, &qword_BE7D0);
        v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F17D0, &unk_BFFA0);
        (*(*(v33 - 8) + 56))(v88, 1, 1, v33);
        v22 = swift_allocObject();
        swift_weakInit();
      }
    }

    else if (v10 == 2)
    {
      if (qword_EEAD0 != -1)
      {
        swift_once();
      }

      v34 = sub_B62F0();
      v35 = __swift_project_value_buffer(v34, qword_FADC8);
      v36 = *(v34 - 8);
      v37 = *(v36 + 16);
      v37(v8, v35, v34);
      v38 = *(v36 + 56);
      v38(v8, 0, 1, v34);
      v39 = sub_B78D0();
      v86 = v40;
      v87 = v39;
      sub_A194(v8, &unk_F17B0, &qword_BE7D0);
      v37(v8, v35, v34);
      v38(v8, 0, 1, v34);
      v41 = sub_B78D0();
      v84 = v42;
      v85 = v41;
      sub_A194(v8, &unk_F17B0, &qword_BE7D0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_F17C0, &qword_C1760);
      v43 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEF40, &unk_BD6E0) - 8);
      v83 = (*(v43 + 80) + 32) & ~*(v43 + 80);
      *(swift_allocObject() + 16) = xmmword_BDA30;
      v37(v8, v35, v34);
      v38(v8, 0, 1, v34);
      sub_B78D0();
      sub_A194(v8, &unk_F17B0, &qword_BE7D0);
      v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F17D0, &unk_BFFA0);
      (*(*(v44 - 8) + 56))(v88, 1, 1, v44);
      v22 = swift_allocObject();
      swift_weakInit();
    }

    else
    {
      if (v10 != 3)
      {
        if (qword_EEAD0 != -1)
        {
          swift_once();
        }

        v45 = sub_B62F0();
        v46 = __swift_project_value_buffer(v45, qword_FADC8);
        v47 = *(v45 - 8);
        v48 = *(v47 + 16);
        v48(v8, v46, v45);
        v49 = *(v47 + 56);
        v49(v8, 0, 1, v45);
        v50 = sub_B78D0();
        v85 = v51;
        v86 = v50;
        sub_A194(v8, &unk_F17B0, &qword_BE7D0);
        v79 = v46;
        v48(v8, v46, v45);
        v78 = v48;
        v49(v8, 0, 1, v45);
        v77 = v49;
        v52 = sub_B78D0();
        v83 = v53;
        v84 = v52;
        sub_A194(v8, &unk_F17B0, &qword_BE7D0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_F17C0, &qword_C1760);
        v54 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEF40, &unk_BD6E0) - 8);
        v81 = *(v54 + 72);
        v55 = (*(v54 + 80) + 32) & ~*(v54 + 80);
        v56 = swift_allocObject();
        v82 = v56;
        *(v56 + 16) = xmmword_BD800;
        v87 = v56 + v55;
        v48(v8, v46, v45);
        v49(v8, 0, 1, v45);
        sub_B78D0();
        v75[1] = v57;
        sub_A194(v8, &unk_F17B0, &qword_BE7D0);
        v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F17D0, &unk_BFFA0);
        v59 = *(v58 - 8);
        v76 = *(v59 + 56);
        v60 = v88;
        v76(v88, 1, 1, v58);
        v90 = ItemContactInfoSetupIntroductionViewModel.bind();
        v91 = 0;
        v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0A20, &unk_C0200);
        sub_B68B0();
        v78(v8, v79, v45);
        v77(v8, 0, 1, v45);
        sub_B78D0();
        sub_A194(v8, &unk_F17B0, &qword_BE7D0);
        (*(v59 + 104))(v60, enum case for AlertInfo.ActionInfo.Style.cancel<A>(_:), v58);
        v76(v60, 0, 1, v58);
        v61 = swift_allocObject();
        swift_weakInit();
        v90 = sub_63038;
        v91 = v61;
        sub_B68B0();
        a1 = v89;
        goto LABEL_23;
      }

      if (qword_EEAD0 != -1)
      {
        swift_once();
      }

      v11 = sub_B62F0();
      v12 = __swift_project_value_buffer(v11, qword_FADC8);
      v13 = *(v11 - 8);
      v14 = *(v13 + 16);
      v14(v8, v12, v11);
      v15 = *(v13 + 56);
      v15(v8, 0, 1, v11);
      v16 = sub_B78D0();
      v86 = v17;
      v87 = v16;
      sub_A194(v8, &unk_F17B0, &qword_BE7D0);
      v14(v8, v12, v11);
      v15(v8, 0, 1, v11);
      v18 = sub_B78D0();
      v84 = v19;
      v85 = v18;
      sub_A194(v8, &unk_F17B0, &qword_BE7D0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_F17C0, &qword_C1760);
      v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEF40, &unk_BD6E0) - 8);
      v83 = (*(v20 + 80) + 32) & ~*(v20 + 80);
      *(swift_allocObject() + 16) = xmmword_BDA30;
      v14(v8, v12, v11);
      v15(v8, 0, 1, v11);
      sub_B78D0();
      sub_A194(v8, &unk_F17B0, &qword_BE7D0);
      v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F17D0, &unk_BFFA0);
      (*(*(v21 - 8) + 56))(v88, 1, 1, v21);
      v22 = swift_allocObject();
      swift_weakInit();
    }

    v90 = sub_63040;
    v91 = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0A20, &unk_C0200);
    sub_B68B0();
    a1 = v89;
LABEL_23:
    sub_B6910();
    v9 = 0;
    goto LABEL_24;
  }

  v9 = 1;
LABEL_24:
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEE00, &unk_BDA40);
  return (*(*(v73 - 8) + 56))(a1, v9, 1, v73);
}

uint64_t sub_5FA58()
{
  swift_getKeyPath();
  sub_60848();
  sub_B65C0();

  return swift_unknownObjectWeakLoadStrong();
}

uint64_t sub_5FAD4@<X0>(uint64_t *a2@<X8>)
{
  swift_getKeyPath();
  sub_60848();
  sub_B65C0();

  result = swift_unknownObjectWeakLoadStrong();
  *a2 = result;
  return result;
}

uint64_t sub_5FB58(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_60848();
  sub_B65B0();
}

uint64_t sub_5FC1C(uint64_t result, void *a2, uint64_t a3, uint64_t a4)
{
  if (*(v4 + *a2) == (result & 1))
  {
    *(v4 + *a2) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_60848();
    sub_B65B0();
  }

  return result;
}

uint64_t sub_5FCF0()
{
  swift_getKeyPath();
  sub_60848();
  sub_B65C0();

  v1 = *(v0 + OBJC_IVAR____TtC13FindMyAppCore20SeeLostItemViewModel__onItemFound);

  return v1;
}

uint64_t sub_5FD7C@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_60848();
  sub_B65C0();

  v5 = *(v3 + OBJC_IVAR____TtC13FindMyAppCore20SeeLostItemViewModel__onItemFound);
  v4 = *(v3 + OBJC_IVAR____TtC13FindMyAppCore20SeeLostItemViewModel__onItemFound + 8);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  *a2 = sub_62A94;
  a2[1] = v6;
}

uint64_t sub_5FE30(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  swift_getKeyPath();
  sub_60848();

  sub_B65B0();
}

uint64_t sub_5FF1C@<X0>(_WORD *a1@<X8>)
{
  swift_getKeyPath();
  sub_60848();
  sub_B65C0();

  *a1 = *(v1 + OBJC_IVAR____TtC13FindMyAppCore20SeeLostItemViewModel__destination);
  return result;
}

uint64_t sub_5FF9C@<X0>(uint64_t *a1@<X0>, _WORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_60848();
  sub_B65C0();

  *a2 = *(v3 + OBJC_IVAR____TtC13FindMyAppCore20SeeLostItemViewModel__destination);
  return result;
}

uint64_t sub_6001C(unsigned __int16 *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC13FindMyAppCore20SeeLostItemViewModel__destination;
  result = *(v1 + OBJC_IVAR____TtC13FindMyAppCore20SeeLostItemViewModel__destination);
  if (result >> 8 <= 0xFE)
  {
    if (v2 >> 8 > 0xFE)
    {
      goto LABEL_7;
    }

    result = sub_80A98(result, v2);
    if ((result & 1) == 0)
    {
      goto LABEL_7;
    }

LABEL_6:
    *(v1 + v3) = v2;
    return result;
  }

  if (v2 >> 8 > 0xFE)
  {
    goto LABEL_6;
  }

LABEL_7:
  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_60848();
  sub_B65B0();
}

uint64_t sub_60130(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (*(result + OBJC_IVAR____TtC13FindMyAppCore20SeeLostItemViewModel__isLoadingItemData))
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      sub_60848();
      sub_B65B0();
    }

    else
    {
      *(result + OBJC_IVAR____TtC13FindMyAppCore20SeeLostItemViewModel__isLoadingItemData) = 0;
    }
  }

  return result;
}

uint64_t sub_6023C(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    if (*(Strong + OBJC_IVAR____TtC13FindMyAppCore20SeeLostItemViewModel__isLoadingItemData))
    {
      v2 = Strong;
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      v9 = v2;
      sub_60848();
      sub_B65B0();
    }

    else
    {
      *(Strong + OBJC_IVAR____TtC13FindMyAppCore20SeeLostItemViewModel__isLoadingItemData) = 0;
    }
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = result;
    swift_getKeyPath();
    v7[0] = v5;
    sub_60848();
    sub_B65C0();

    v6 = *(v5 + OBJC_IVAR____TtC13FindMyAppCore20SeeLostItemViewModel__onItemFound);

    v7[0] = 0;
    v7[1] = 0;
    v8 = 1;
    v6(v7);
  }

  return result;
}

uint64_t SeeLostItemViewModel.__allocating_init(inputURL:sharingUUID:isPartnerURL:isSignedIn:delegate:dependencies:onItemFound:)(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5, __int128 *a6, uint64_t a7, uint64_t a8)
{
  v45 = a7;
  v46 = a8;
  v40 = a5;
  v41 = a2;
  v38 = a3;
  v39 = a4;
  v44 = a1;
  v10 = sub_B65A0();
  v34 = v10;
  v42 = *(v10 - 8);
  v11 = v42;
  __chkstk_darwin(v10);
  v13 = v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_B64C0();
  v43 = *(v14 - 8);
  v15 = v43;
  __chkstk_darwin(v14);
  v47 = v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v15 + 16);
  v33[1] = &qword_C1480;
  v18 = *a6;
  v36 = a6[1];
  v37 = v18;
  v35 = v14;
  v17();
  v19 = *(v11 + 16);
  v19(v13, a2, v10);
  v20 = swift_allocObject();
  v21 = OBJC_IVAR____TtC13FindMyAppCore20SeeLostItemViewModel__delegate;
  swift_unknownObjectWeakInit();
  v22 = (v20 + OBJC_IVAR____TtC13FindMyAppCore20SeeLostItemViewModel__onItemFound);
  *v22 = ItemContactInfoSetupIntroductionViewModel.bind();
  v22[1] = 0;
  sub_B69B0();
  v23 = OBJC_IVAR____TtC13FindMyAppCore20SeeLostItemViewModel__destination;
  *(v20 + OBJC_IVAR____TtC13FindMyAppCore20SeeLostItemViewModel__destination) = -256;
  sub_B65F0();
  *(v20 + v23) = -256;
  (v17)(v20 + OBJC_IVAR____TtC13FindMyAppCore20SeeLostItemViewModel_inputURL, v47, v14);
  v24 = v34;
  v19((v20 + OBJC_IVAR____TtC13FindMyAppCore20SeeLostItemViewModel_sharingUUID), v13, v34);
  v25 = v39;
  *(v20 + OBJC_IVAR____TtC13FindMyAppCore20SeeLostItemViewModel__isPartnerURL) = v38;
  *(v20 + OBJC_IVAR____TtC13FindMyAppCore20SeeLostItemViewModel__isSignedIn) = v25;
  swift_unknownObjectRetain();
  sub_60800(v20 + v21);
  swift_unknownObjectWeakInit();
  swift_unknownObjectRelease();
  *(v20 + OBJC_IVAR____TtC13FindMyAppCore20SeeLostItemViewModel__isLoadingItemData) = 0;
  v26 = (v20 + OBJC_IVAR____TtC13FindMyAppCore20SeeLostItemViewModel_dependencies);
  v27 = v36;
  *v26 = v37;
  v26[1] = v27;
  swift_getKeyPath();
  v48 = v20;
  v49 = v45;
  v50 = v46;
  v51 = v20;
  sub_60848();
  sub_B65B0();
  swift_unknownObjectRelease();

  v28 = *(v42 + 8);
  v29 = v24;
  v28(v41, v24);
  v30 = *(v43 + 8);
  v31 = v35;
  v30(v44, v35);
  v28(v13, v29);
  v30(v47, v31);
  return v20;
}

unint64_t sub_60848()
{
  result = qword_F15F0;
  if (!qword_F15F0)
  {
    type metadata accessor for SeeLostItemViewModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F15F0);
  }

  return result;
}

uint64_t type metadata accessor for SeeLostItemViewModel(uint64_t a1)
{
  result = qword_F16B0;
  if (!qword_F16B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_608EC()
{
  v1[2] = v0;
  sub_B7A60();
  v1[3] = sub_B7A50();
  v3 = sub_B7A00();
  v1[4] = v3;
  v1[5] = v2;

  return _swift_task_switch(sub_60984, v3, v2);
}

uint64_t sub_60984(uint64_t a1)
{
  v2 = sub_B69A0();
  v3 = sub_B7B60();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "SeeLostItemViewModel: Requesting preview", v4, 2u);
  }

  v5 = *(v1 + 16);

  v6 = OBJC_IVAR____TtC13FindMyAppCore20SeeLostItemViewModel_inputURL;
  v9 = (*(v5 + OBJC_IVAR____TtC13FindMyAppCore20SeeLostItemViewModel_dependencies + 16) + **(v5 + OBJC_IVAR____TtC13FindMyAppCore20SeeLostItemViewModel_dependencies + 16));
  v7 = swift_task_alloc();
  *(v1 + 48) = v7;
  *v7 = v1;
  v7[1] = sub_60B10;

  return v9(v5 + v6);
}

uint64_t sub_60B10(char a1)
{
  v4 = *v2;
  *(*v2 + 56) = v1;

  if (v1)
  {
    v5 = *(v4 + 32);
    v6 = *(v4 + 40);
    v7 = sub_60CA4;
  }

  else
  {
    *(v4 + 64) = a1 & 1;
    v5 = *(v4 + 32);
    v6 = *(v4 + 40);
    v7 = sub_60C3C;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_60C3C()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 64);

  return v1(v2);
}

uint64_t sub_60CA4()
{

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_60D0C(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_F1790, &qword_C16E0);
  v3[8] = swift_task_alloc();
  v4 = sub_B64C0();
  v3[9] = v4;
  v3[10] = *(v4 - 8);
  v3[11] = swift_task_alloc();
  v5 = sub_B65A0();
  v3[12] = v5;
  v3[13] = *(v5 - 8);
  v3[14] = swift_task_alloc();
  sub_B7A60();
  v3[15] = sub_B7A50();
  v7 = sub_B7A00();
  v3[16] = v7;
  v3[17] = v6;

  return _swift_task_switch(sub_60E98, v7, v6);
}

uint64_t sub_60E98()
{
  v1 = v0[7];
  v2 = OBJC_IVAR____TtC13FindMyAppCore20SeeLostItemViewModel_inputURL;
  v7 = (*(v1 + OBJC_IVAR____TtC13FindMyAppCore20SeeLostItemViewModel_dependencies) + **(v1 + OBJC_IVAR____TtC13FindMyAppCore20SeeLostItemViewModel_dependencies));
  v3 = swift_task_alloc();
  v0[18] = v3;
  *v3 = v0;
  v3[1] = sub_60FAC;
  v4 = v0[5];
  v5 = v0[6];

  return v7(v1 + v2, v4, v5);
}

uint64_t sub_60FAC(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 152) = a1;
  *(v4 + 160) = v1;

  v5 = *(v3 + 136);
  v6 = *(v3 + 128);
  if (v1)
  {
    v7 = sub_615AC;
  }

  else
  {
    v7 = sub_610F0;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_610F0()
{
  v40 = v0;
  v1 = v0[19];

  if (!v1)
  {
    goto LABEL_9;
  }

  v2 = v0[19];
  v3 = [v2 share];
  if (v3)
  {
    v4 = v3;
    v5 = sub_B69A0();
    v6 = sub_B7B60();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_0, v5, v6, "SeeLostItemViewModel: On item found", v7, 2u);
    }

    v9 = v0[13];
    v8 = v0[14];
    v10 = v0[12];
    v11 = v0[7];

    swift_getKeyPath();
    v0[4] = v11;
    sub_60848();
    sub_B65C0();

    v12 = *(v11 + OBJC_IVAR____TtC13FindMyAppCore20SeeLostItemViewModel__onItemFound);

    v13 = [v4 beaconIdentifier];
    sub_B6580();

    v14 = sub_B6560();
    v16 = v15;
    (*(v9 + 8))(v8, v10);
    v37 = v14;
    v38 = v16;
    v39 = 0;
    v12(&v37);

    sub_62C40(v37, v38, v39);
    goto LABEL_15;
  }

  v17 = [v2 authUrl];
  if (!v17)
  {
    goto LABEL_9;
  }

  v18 = v0[9];
  v19 = v0[10];
  v20 = v0[8];
  v21 = v17;
  sub_B7900();

  sub_B64B0();

  if ((*(v19 + 48))(v20, 1, v18) == 1)
  {
    sub_A194(v0[8], &unk_F1790, &qword_C16E0);
LABEL_9:
    v22 = sub_B69A0();
    v23 = sub_B7B60();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_0, v22, v23, "SeeLostItemViewModel: Failed to load item data", v24, 2u);
    }

    v25 = v0[7];

    if (*(v25 + OBJC_IVAR____TtC13FindMyAppCore20SeeLostItemViewModel__isLoadingItemData))
    {
      v26 = v0[7];
      swift_getKeyPath();
      v27 = swift_task_alloc();
      *(v27 + 16) = v26;
      *(v27 + 24) = 0;
      v0[3] = v26;
      sub_60848();
      sub_B65B0();
    }

    else
    {
      *(v25 + OBJC_IVAR____TtC13FindMyAppCore20SeeLostItemViewModel__isLoadingItemData) = 0;
    }

    v28 = v0[19];
    LOWORD(v37) = 512;
    sub_6001C(&v37);

    goto LABEL_15;
  }

  (*(v0[10] + 32))(v0[11], v0[8], v0[9]);
  v31 = sub_B69A0();
  v32 = sub_B7B60();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    *v33 = 0;
    _os_log_impl(&dword_0, v31, v32, "SeeLostItemViewModel: Opening partner authentication flow", v33, 2u);
  }

  v35 = v0[10];
  v34 = v0[11];
  v36 = v0[9];

  sub_617E8();
  (*(v35 + 8))(v34, v36);
LABEL_15:

  v29 = v0[1];

  return v29();
}

uint64_t sub_615AC()
{
  v12 = v0;

  swift_errorRetain();
  v1 = sub_B69A0();
  v2 = sub_B7B40();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&dword_0, v1, v2, "SeeLostItemViewModel: Failed to load item data with error: %@", v3, 0xCu);
    sub_A194(v4, &qword_EF4F8, &qword_C16D0);
  }

  v6 = v0[7];

  if (*(v6 + OBJC_IVAR____TtC13FindMyAppCore20SeeLostItemViewModel__isLoadingItemData))
  {
    v7 = v0[7];
    swift_getKeyPath();
    v8 = swift_task_alloc();
    *(v8 + 16) = v7;
    *(v8 + 24) = 0;
    v0[2] = v7;
    sub_60848();
    sub_B65B0();
  }

  else
  {
    *(v6 + OBJC_IVAR____TtC13FindMyAppCore20SeeLostItemViewModel__isLoadingItemData) = 0;
  }

  v11[0] = 512;
  sub_6001C(v11);

  v9 = v0[1];

  return v9();
}

void sub_617E8()
{
  v1 = v0;
  v2 = swift_allocObject();
  swift_weakInit();
  v3 = objc_allocWithZone(ASWebAuthenticationSession);

  sub_B6480(v4);
  v6 = v5;
  v7 = sub_B78E0();
  v10[4] = sub_62C88;
  v10[5] = v2;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_62AEC;
  v10[3] = &block_descriptor_0;
  v8 = _Block_copy(v10);
  v9 = [v3 initWithURL:v6 callbackURLScheme:v7 completionHandler:v8];
  _Block_release(v8);

  [v9 setPrefersEphemeralWebBrowserSession:1];
  swift_getKeyPath();
  v10[0] = v1;
  sub_60848();
  sub_B65C0();

  [v9 setPresentationContextProvider:swift_unknownObjectWeakLoadStrong()];
  swift_unknownObjectRelease();
  [v9 start];
}

uint64_t sub_619C4(uint64_t a1, char *a2, uint64_t a3)
{
  v42 = a1;
  v5 = sub_B69C0();
  v43 = *(v5 - 8);
  v44 = v5;
  v6 = __chkstk_darwin(v5);
  v41 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v40 = &v40 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_F1790, &qword_C16E0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9 - 8);
  v12 = &v40 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF458, &qword_BDED0);
  __chkstk_darwin(v13 - 8);
  v15 = &v40 - v14;
  sub_B7A60();
  v45 = sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (!a2)
  {
    v28 = sub_B7A80();
    (*(*(v28 - 8) + 56))(v15, 1, 1, v28);
    sub_62CD8(v42, v12);

    v29 = sub_B7A50();
    v30 = (*(v10 + 80) + 40) & ~*(v10 + 80);
    v31 = swift_allocObject();
    v31[2] = v29;
    v31[3] = &protocol witness table for MainActor;
    v31[4] = a3;
    sub_62E70(v12, v31 + v30);
    sub_30CFC(0, 0, v15, &unk_C1720, v31);
    goto LABEL_19;
  }

  swift_getErrorValue();
  if (sub_B7E30() == 1)
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    v18 = v43;
    v17 = v44;
    if (Strong)
    {
      v19 = v40;
      (*(v43 + 16))(v40, Strong + OBJC_IVAR____TtC13FindMyAppCore20SeeLostItemViewModel_logger, v44);

      swift_errorRetain();
      v20 = sub_B69A0();
      v21 = sub_B7B60();

      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v46 = a2;
        v47[0] = v23;
        *v22 = 136315138;
        swift_errorRetain();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_F17A0, &qword_C1728);
        v24 = sub_B7930();
        v26 = sub_17834(v24, v25, v47);

        *(v22 + 4) = v26;
        v27 = "SeeLostItemViewModel: User cancelled the authentication: %s";
LABEL_12:
        _os_log_impl(&dword_0, v20, v21, v27, v22, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v23);

        goto LABEL_13;
      }

      goto LABEL_13;
    }
  }

  else
  {
    swift_beginAccess();
    v32 = swift_weakLoadStrong();
    v18 = v43;
    v17 = v44;
    if (v32)
    {
      v19 = v41;
      (*(v43 + 16))(v41, v32 + OBJC_IVAR____TtC13FindMyAppCore20SeeLostItemViewModel_logger, v44);

      swift_errorRetain();
      v20 = sub_B69A0();
      v21 = sub_B7B60();

      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v46 = a2;
        v47[0] = v23;
        *v22 = 136315138;
        swift_errorRetain();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_F17A0, &qword_C1728);
        v33 = sub_B7930();
        v35 = sub_17834(v33, v34, v47);

        *(v22 + 4) = v35;
        v27 = "SeeLostItemViewModel: ASWebAuthenticationSession returned error: %s";
        goto LABEL_12;
      }

LABEL_13:

      (*(v18 + 8))(v19, v17);
    }
  }

  swift_beginAccess();
  v36 = swift_weakLoadStrong();
  if (!v36)
  {
  }

  if (*(v36 + OBJC_IVAR____TtC13FindMyAppCore20SeeLostItemViewModel__isLoadingItemData))
  {
    v37 = v36;
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    *(&v40 - 2) = v37;
    *(&v40 - 8) = 0;
    v46 = v37;
    sub_60848();
    sub_B65B0();
  }

  *(v36 + OBJC_IVAR____TtC13FindMyAppCore20SeeLostItemViewModel__isLoadingItemData) = 0;
LABEL_19:
}

uint64_t sub_62048(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[5] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_F1790, &qword_C16E0);
  v5[8] = swift_task_alloc();
  sub_B7A60();
  v5[9] = sub_B7A50();
  v7 = sub_B7A00();
  v5[10] = v7;
  v5[11] = v6;

  return _swift_task_switch(sub_6211C, v7, v6);
}

uint64_t sub_6211C()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 96) = Strong;
  if (Strong)
  {
    v2 = *(v0 + 64);
    sub_62CD8(*(v0 + 56), v2);
    v3 = sub_B64C0();
    v4 = *(v3 - 8);
    v5 = (*(v4 + 48))(v2, 1, v3);
    v6 = *(v0 + 64);
    if (v5 == 1)
    {
      sub_A194(*(v0 + 64), &unk_F1790, &qword_C16E0);
      v7 = 0;
      v8 = 0;
    }

    else
    {
      v7 = sub_B6470();
      v8 = v11;
      (*(v4 + 8))(v6, v3);
    }

    *(v0 + 104) = v8;
    v12 = swift_task_alloc();
    *(v0 + 112) = v12;
    *v12 = v0;
    v12[1] = sub_62308;

    return sub_60D0C(v7, v8);
  }

  else
  {

    **(v0 + 40) = *(v0 + 96) == 0;

    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t sub_62308()
{
  v1 = *v0;

  v2 = *(v1 + 88);
  v3 = *(v1 + 80);

  return _swift_task_switch(sub_62468, v3, v2);
}

uint64_t sub_62468()
{

  **(v0 + 40) = *(v0 + 96) == 0;

  v1 = *(v0 + 8);

  return v1();
}

uint64_t SeeLostItemViewModel.deinit()
{
  v1 = OBJC_IVAR____TtC13FindMyAppCore20SeeLostItemViewModel_sharingUUID;
  v2 = sub_B65A0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC13FindMyAppCore20SeeLostItemViewModel_inputURL;
  v4 = sub_B64C0();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  sub_60800(v0 + OBJC_IVAR____TtC13FindMyAppCore20SeeLostItemViewModel__delegate);

  v5 = OBJC_IVAR____TtC13FindMyAppCore20SeeLostItemViewModel_logger;
  v6 = sub_B69C0();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = OBJC_IVAR____TtC13FindMyAppCore20SeeLostItemViewModel___observationRegistrar;
  v8 = sub_B6600();
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  return v0;
}

uint64_t SeeLostItemViewModel.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC13FindMyAppCore20SeeLostItemViewModel_sharingUUID;
  v2 = sub_B65A0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC13FindMyAppCore20SeeLostItemViewModel_inputURL;
  v4 = sub_B64C0();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  sub_60800(v0 + OBJC_IVAR____TtC13FindMyAppCore20SeeLostItemViewModel__delegate);

  v5 = OBJC_IVAR____TtC13FindMyAppCore20SeeLostItemViewModel_logger;
  v6 = sub_B69C0();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = OBJC_IVAR____TtC13FindMyAppCore20SeeLostItemViewModel___observationRegistrar;
  v8 = sub_B6600();
  (*(*(v8 - 8) + 8))(v0 + v7, v8);

  return swift_deallocClassInstance();
}

unint64_t sub_627EC()
{
  result = qword_F1680;
  if (!qword_F1680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F1680);
  }

  return result;
}

uint64_t sub_62858(uint64_t a1)
{
  result = sub_B65A0();
  if (v2 <= 0x3F)
  {
    result = sub_B64C0();
    if (v3 <= 0x3F)
    {
      result = sub_B69C0();
      if (v4 <= 0x3F)
      {
        result = sub_B6600();
        if (v5 <= 0x3F)
        {
          return swift_updateClassMetadata2();
        }
      }
    }
  }

  return result;
}

uint64_t sub_629E8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_62A48()
{
  v1 = v0[4];
  v2 = (v0[2] + OBJC_IVAR____TtC13FindMyAppCore20SeeLostItemViewModel__onItemFound);
  *v2 = v0[3];
  v2[1] = v1;
}

uint64_t sub_62AEC(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_F1790, &qword_C16E0);
  __chkstk_darwin(v6 - 8);
  v8 = &v14 - v7;
  v9 = *(a1 + 32);
  if (a2)
  {
    sub_B64A0();
    v10 = sub_B64C0();
    (*(*(v10 - 8) + 56))(v8, 0, 1, v10);
  }

  else
  {
    v11 = sub_B64C0();
    (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  }

  v12 = a3;
  v9(v8, a3);

  return sub_A194(v8, &unk_F1790, &qword_C16E0);
}

uint64_t sub_62C40(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_62C50(uint64_t a1, uint64_t a2)
{
  swift_weakDestroy();

  return _swift_deallocObject(v2, 24, 7);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_62CD8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_F1790, &qword_C16E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_62D48()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_F1790, &qword_C16E0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(v1 + 64);
  swift_unknownObjectRelease();

  v5 = sub_B64C0();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_62E70(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_F1790, &qword_C16E0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_62EE0(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_F1790, &qword_C16E0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_F248;

  return sub_62048(a1, v6, v7, v8, v1 + v5);
}

void static SeeLostItemViewModel.Dependencies.live()(void *a1@<X8>)
{
  *a1 = &unk_C17A0;
  a1[1] = 0;
  a1[2] = &unk_C17A8;
  a1[3] = 0;
}

uint64_t sub_63110(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[20] = a2;
  v3[21] = a3;
  v3[19] = a1;
  v4 = sub_B69C0();
  v3[22] = v4;
  v3[23] = *(v4 - 8);
  v3[24] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F17E0, &qword_C17B8);
  v3[25] = v5;
  v3[26] = *(v5 - 8);
  v3[27] = swift_task_alloc();

  return _swift_task_switch(sub_6323C, 0, 0);
}

uint64_t sub_6323C()
{
  v1 = v0[21];
  v2 = [objc_allocWithZone(SPOwnerInterface) init];
  v11 = [v2 beaconSharingSession];
  v0[28] = v11;

  sub_B6470();
  v3 = sub_B78E0();

  if (v1)
  {
    v4 = sub_B78E0();
  }

  else
  {
    v4 = 0;
  }

  v5 = v0[26];
  v6 = v0[27];
  v7 = v0[25];
  v8 = [objc_allocWithZone(SPDelegatedShareImportContext) initWithUrl:v3 callbackValue:v4];
  v0[29] = v8;

  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_63498;
  swift_continuation_init();
  v0[17] = v7;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 14);
  sub_64150();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF518, &qword_C0860);
  sub_B7A10();
  (*(v5 + 32))(boxed_opaque_existential_0, v6, v7);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_63818;
  v0[13] = &block_descriptor_4;
  [v11 importDelegatedShare:v8 completion:?];
  (*(v5 + 8))(boxed_opaque_existential_0, v7);

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_63498()
{
  v1 = *(*v0 + 48);
  *(*v0 + 240) = v1;
  if (v1)
  {
    v2 = sub_6363C;
  }

  else
  {
    v2 = sub_635A8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_635A8()
{
  swift_unknownObjectRelease();
  v1 = *(v0 + 144);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_6363C(uint64_t a1)
{
  v2 = v1[29];
  swift_willThrow();

  swift_unknownObjectRelease();
  sub_B69B0();
  swift_errorRetain();
  v3 = sub_B69A0();
  v4 = sub_B7B60();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&dword_0, v3, v4, "SeeLostItemViewModel: Error when importing delegated share: %@", v5, 0xCu);
    sub_640E8(v6);
  }

  v9 = v1[23];
  v8 = v1[24];
  v10 = v1[22];

  swift_willThrow();
  (*(v9 + 8))(v8, v10);

  v11 = v1[1];

  return v11();
}

void sub_63818(uint64_t a1, void *a2, void *a3)
{
  __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F17E0, &qword_C17B8);
    sub_B7A20();
  }

  else if (a2)
  {
    v6 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F17E0, &qword_C17B8);
    sub_B7A30();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_638C8(uint64_t a1)
{
  v1[18] = a1;
  v2 = sub_B69C0();
  v1[19] = v2;
  v1[20] = *(v2 - 8);
  v1[21] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F17D8, &qword_C17B0);
  v1[22] = v3;
  v1[23] = *(v3 - 8);
  v1[24] = swift_task_alloc();

  return _swift_task_switch(sub_639F0, 0, 0);
}

uint64_t sub_639F0()
{
  v1 = v0[23];
  v2 = v0[24];
  v3 = v0[22];
  v4 = [objc_allocWithZone(SPOwnerInterface) init];
  v5 = [v4 beaconSharingSession];
  v0[25] = v5;

  sub_B6470();
  v6 = objc_allocWithZone(SPDelegatedShareImportContext);
  v7 = sub_B78E0();

  v8 = [v6 initWithUrl:v7 callbackValue:0];
  v0[26] = v8;

  v0[2] = v0;
  v0[7] = v0 + 28;
  v0[3] = sub_63C44;
  swift_continuation_init();
  v0[17] = v3;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF518, &qword_C0860);
  sub_B7A10();
  (*(v1 + 32))(boxed_opaque_existential_0, v2, v3);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_6402C;
  v0[13] = &block_descriptor_1;
  [v5 importSharePreview:v8 completion:?];
  (*(v1 + 8))(boxed_opaque_existential_0, v3);

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_63C44()
{
  v1 = *(*v0 + 48);
  *(*v0 + 216) = v1;
  if (v1)
  {
    v2 = sub_63DE8;
  }

  else
  {
    v2 = sub_63D54;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_63D54()
{
  swift_unknownObjectRelease();
  v1 = *(v0 + 224);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_63DE8(uint64_t a1)
{
  v2 = v1[26];
  swift_willThrow();

  swift_unknownObjectRelease();
  sub_B69B0();
  swift_errorRetain();
  v3 = sub_B69A0();
  v4 = sub_B7B60();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&dword_0, v3, v4, "SeeLostItemViewModel: Error when trying to preview status for delegated share: %@", v5, 0xCu);
    sub_640E8(v6);
  }

  v9 = v1[20];
  v8 = v1[21];
  v10 = v1[19];

  swift_willThrow();
  (*(v9 + 8))(v8, v10);

  v11 = v1[1];

  return v11(0);
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

void sub_6402C(uint64_t a1, char a2, void *a3)
{
  __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v4 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F17D8, &qword_C17B0);
    sub_B7A20();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F17D8, &qword_C17B0);
    sub_B7A30();
  }
}

uint64_t sub_640E8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF4F8, &qword_C16D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_64150()
{
  result = qword_F17E8;
  if (!qword_F17E8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_F17E8);
  }

  return result;
}

uint64_t sub_641A4(uint64_t a1)
{
  result = sub_6421C(&qword_F17F0, &protocol conformance descriptor for SeeLostItemViewModel);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_6421C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SeeLostItemViewModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t _s5AlertOwet(unsigned __int8 *a1, unsigned int a2)
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

uint64_t _s5AlertOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_643B0(uint64_t a1)
{
  *(a1 + 8) = sub_643E0();
  result = sub_64434();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_643E0()
{
  result = qword_F1800;
  if (!qword_F1800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F1800);
  }

  return result;
}

unint64_t sub_64434()
{
  result = qword_F1808;
  if (!qword_F1808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F1808);
  }

  return result;
}

unint64_t sub_6448C()
{
  result = qword_F1810;
  if (!qword_F1810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F1810);
  }

  return result;
}

unint64_t sub_644E4()
{
  result = qword_F1818;
  if (!qword_F1818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F1818);
  }

  return result;
}

unint64_t sub_6453C()
{
  result = qword_F1820;
  if (!qword_F1820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F1820);
  }

  return result;
}

unint64_t sub_64594()
{
  result = qword_F1828;
  if (!qword_F1828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F1828);
  }

  return result;
}

unint64_t sub_645EC()
{
  result = qword_F1830;
  if (!qword_F1830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F1830);
  }

  return result;
}

unint64_t sub_64644()
{
  result = qword_F1838;
  if (!qword_F1838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F1838);
  }

  return result;
}

uint64_t ItemContactInfoUpdater.init(enableBlock:updateBlock:disableBlock:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *a7 = result;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  a7[4] = a5;
  a7[5] = a6;
  return result;
}

uint64_t sub_64718@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_B6DE0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEDF8, &unk_BD520);
  __chkstk_darwin(v8);
  v10 = &v14 - v9;
  sub_A310(v2, &v14 - v9, &qword_EEDF8, &unk_BD520);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_B6B50();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_B7B50();
    v13 = sub_B7080();
    sub_B6990();

    sub_B6DD0();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

double ItemContactInfoSetupConfirmationView.init(viewModel:onDismiss:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = sub_B6370();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a4 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEDF8, &unk_BD520);
  swift_storeEnumTagMultiPayload();
  v12 = type metadata accessor for ItemContactInfoSetupConfirmationView(0);
  v27 = 0x404E000000000000;
  sub_275B4();
  sub_B6AB0();
  v13 = a4 + v12[8];
  *v13 = xmmword_C1CE0;
  *(v13 + 2) = 0x3FF0000000000000;
  v14 = (a4 + v12[5]);
  *&v25 = a1;
  type metadata accessor for ItemContactInfoSetupConfirmationViewModel(0);

  sub_B75B0();
  v15 = v28;
  *v14 = v27;
  v14[1] = v15;
  v16 = (a4 + v12[9]);
  *v16 = a2;
  v16[1] = a3;
  swift_getKeyPath();
  v27 = a1;
  sub_72884(&qword_F1840, type metadata accessor for ItemContactInfoSetupConfirmationViewModel, &protocol conformance descriptor for ItemContactInfoSetupConfirmationViewModel);
  sub_B65C0();

  v17 = OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel__lostModeInfo;
  swift_beginAccess();
  (*(v9 + 16))(v11, a1 + v17, v8);
  MyAppCore12LostModeInfoV19contactDisplayValueSSvg_0 = _s13FindMyAppCore12LostModeInfoV19contactDisplayValueSSvg_0();
  v20 = v19;
  (*(v9 + 8))(v11, v8);
  v21 = a4 + v12[6];
  v24[0] = MyAppCore12LostModeInfoV19contactDisplayValueSSvg_0;
  v24[1] = v20;
  sub_B75B0();

  result = *&v25;
  v23 = v26;
  *v21 = v25;
  *(v21 + 2) = v23;
  return result;
}

uint64_t ItemContactInfoSetupConfirmationView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v119 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEE00, &unk_BDA40);
  v113 = *(v3 - 1);
  v114 = v3;
  __chkstk_darwin(v3);
  v97 = &v96 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEE08, &qword_BD530);
  __chkstk_darwin(v5 - 8);
  v112 = &v96 - v6;
  v7 = type metadata accessor for ItemContactInfoSetupConfirmationView(0);
  v111 = *(v7 - 8);
  __chkstk_darwin(v7);
  v115 = v8;
  v122 = &v96 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_B6980();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v96 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_F17B0, &qword_BE7D0);
  __chkstk_darwin(v13 - 8);
  v15 = &v96 - v14;
  v104 = sub_B6850();
  v103 = *(v104 - 8);
  __chkstk_darwin(v104);
  v102 = &v96 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0BB8, &qword_C0468);
  v106 = *(v108 - 8);
  __chkstk_darwin(v108);
  v105 = (&v96 - v17);
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1848, &qword_C1D50);
  v109 = *(v110 - 8);
  __chkstk_darwin(v110);
  v107 = &v96 - v18;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1850, &qword_C1D58);
  __chkstk_darwin(v124);
  v121 = &v96 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1858, &qword_C1D60);
  v117 = *(v20 - 8);
  v118 = v20;
  __chkstk_darwin(v20);
  v116 = &v96 - v21;
  if (qword_EEAC8 != -1)
  {
    swift_once();
  }

  v22 = sub_B62F0();
  v23 = __swift_project_value_buffer(v22, qword_FADB0);
  v24 = *(v22 - 8);
  (*(v24 + 16))(v15, v23, v22);
  (*(v24 + 56))(v15, 0, 1, v22);
  v120 = sub_B78D0();
  v101 = v25;
  sub_A194(v15, &unk_F17B0, &qword_BE7D0);
  v128 = &type metadata for SolariumFeatureFlag;
  v129 = sub_28360();
  v26 = sub_B6610();
  __swift_destroy_boxed_opaque_existential_0(&v125);
  v123 = v7;
  if (v26)
  {
    v27 = [objc_opt_self() clearColor];
  }

  else
  {
    v28 = (v2 + *(v7 + 20));
    v30 = *v28;
    v29 = v28[1];
    v125 = v30;
    v126 = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1860, &qword_C1D68);
    sub_B75C0();
    v31 = v131 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel_lostAccessory;
    LOBYTE(v31) = *(v31 + *(type metadata accessor for LostAccessory(0) + 24));

    sub_40D5C();
    if (v31)
    {
      if (qword_EEB18 != -1)
      {
        swift_once();
      }

      v32 = qword_FAED0;
    }

    else
    {
      if (qword_EEB20 != -1)
      {
        swift_once();
      }

      v32 = qword_FAEE8;
    }

    v33 = __swift_project_value_buffer(v9, v32);
    (*(v10 + 16))(v12, v33, v9);
    v27 = sub_B7B90();
  }

  v100 = v27;
  v99 = &v96;
  v34 = __chkstk_darwin(v27);
  __chkstk_darwin(v34);
  v35 = v2;
  v98 = sub_6AB7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0EC8, &qword_C1D70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1868, &unk_C1D78);
  sub_53A6C();
  v36 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F1870, &qword_C1D88);
  v37 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F1878, &qword_C1D90);
  v38 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F1880, &qword_C1D98);
  v39 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F1888, &qword_C1DA0);
  v40 = sub_705D0();
  v125 = v39;
  v126 = &type metadata for Color;
  v127 = v40;
  v128 = &protocol witness table for Color;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v125 = v38;
  v126 = OpaqueTypeConformance2;
  v42 = swift_getOpaqueTypeConformance2();
  v125 = v37;
  v126 = v42;
  v43 = swift_getOpaqueTypeConformance2();
  v125 = v36;
  v126 = v43;
  swift_getOpaqueTypeConformance2();
  v44 = v102;
  sub_B6840();
  v45 = *(v123 + 20);
  v120 = v35;
  v46 = (v35 + v45);
  v47 = v46[1];
  v123 = *v46;
  v125 = v123;
  v126 = v47;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1860, &qword_C1D68);
  sub_B75C0();
  v49 = v131;
  swift_getKeyPath();
  v125 = v49;
  v50 = sub_72884(&qword_F1840, type metadata accessor for ItemContactInfoSetupConfirmationViewModel, &protocol conformance descriptor for ItemContactInfoSetupConfirmationViewModel);
  sub_B65C0();

  LOBYTE(v35) = *(v49 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel__isSubmitting);

  if ((v35 & 1) == 0)
  {
    v125 = v123;
    v126 = v47;
    sub_B75C0();
    v51 = v131;
    swift_getKeyPath();
    v125 = v51;
    sub_B65C0();
  }

  v101 = v50;
  v52 = sub_72884(&qword_F0560, &type metadata accessor for OnboardingWelcomeView, &protocol conformance descriptor for OnboardingWelcomeView);
  v53 = v105;
  v54 = v104;
  sub_B73A0();
  v55 = (*(v103 + 8))(v44, v54);
  __chkstk_darwin(v55);
  v56 = v120;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F18B8, &qword_C1E08);
  v125 = v54;
  v126 = v52;
  swift_getOpaqueTypeConformance2();
  v57 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F18C0, &qword_C1E10);
  v58 = sub_70814();
  v125 = v57;
  v126 = v58;
  swift_getOpaqueTypeConformance2();
  v59 = v107;
  v60 = v108;
  sub_B7450();
  (*(v106 + 8))(v53, v60);
  v61 = v122;
  sub_728EC(v56, v122, type metadata accessor for ItemContactInfoSetupConfirmationView);
  v62 = v111[80];
  v63 = (v62 + 16) & ~v62;
  v106 = v63 + v115;
  v64 = swift_allocObject();
  v108 = v63;
  sub_708C8(v61, v64 + v63);
  v65 = v121;
  (*(v109 + 32))(v121, v59, v110);
  v66 = &v65[*(v124 + 36)];
  *v66 = sub_7092C;
  v66[1] = v64;
  v66[2] = 0;
  v66[3] = 0;
  v125 = v123;
  v126 = v47;
  v111 = v47;
  v110 = v48;
  sub_B75C0();
  v67 = v112;
  sub_73D48(v112);

  v69 = v113;
  v68 = v114;
  if ((*(v113 + 48))(v67, 1, v114))
  {
    sub_A194(v67, &qword_EEE08, &qword_BD530);
    v70 = 0;
    v71 = 0xE000000000000000;
  }

  else
  {
    v72 = v97;
    (*(v69 + 16))(v97, v67, v68);
    sub_A194(v67, &qword_EEE08, &qword_BD530);
    v70 = sub_B6920();
    v71 = v73;
    (*(v69 + 8))(v72, v68);
  }

  v125 = v70;
  v126 = v71;
  sub_97E8();
  v74 = sub_B7200();
  v112 = v75;
  v113 = v74;
  LODWORD(v107) = v76;
  v109 = v77;
  v78 = v120;
  v79 = v122;
  v114 = type metadata accessor for ItemContactInfoSetupConfirmationView;
  sub_728EC(v120, v122, type metadata accessor for ItemContactInfoSetupConfirmationView);
  sub_B7A60();
  v80 = sub_B7A50();
  v81 = (v62 + 32) & ~v62;
  v82 = swift_allocObject();
  *(v82 + 16) = v80;
  *(v82 + 24) = &protocol witness table for MainActor;
  sub_708C8(v79, v82 + v81);
  sub_728EC(v78, v79, type metadata accessor for ItemContactInfoSetupConfirmationView);
  v83 = sub_B7A50();
  v84 = swift_allocObject();
  *(v84 + 16) = v83;
  *(v84 + 24) = &protocol witness table for MainActor;
  sub_708C8(v79, v84 + v81);
  v85 = sub_B76D0();
  v102 = &v96;
  v86 = __chkstk_darwin(v85);
  __chkstk_darwin(v86);
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F18E0, &qword_C1E28);
  v105 = sub_709A4();
  v115 = sub_70B3C();
  v103 = v62;
  v87 = v107;
  v88 = v116;
  v90 = v112;
  v89 = v113;
  v91 = v121;
  sub_B7400();

  sub_9C84(v89, v90, v87 & 1);

  sub_A194(v91, &qword_F1850, &qword_C1D58);
  v125 = v123;
  v126 = v111;
  sub_B75C0();
  v92 = v131;
  swift_getKeyPath();
  v125 = v92;
  sub_B65C0();

  LOBYTE(v91) = *(v92 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel__dismiss);

  LOBYTE(v131) = v91;
  sub_728EC(v78, v79, v114);
  v93 = swift_allocObject();
  sub_708C8(v79, v93 + v108);
  v125 = v124;
  v126 = v104;
  v127 = &type metadata for Text;
  v128 = v105;
  v129 = v115;
  v130 = &protocol witness table for Text;
  swift_getOpaqueTypeConformance2();
  v94 = v118;
  sub_B7470();

  return (*(v117 + 8))(v88, v94);
}

uint64_t sub_65DE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_B7550();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = (a1 + *(type metadata accessor for ItemContactInfoSetupConfirmationView(0) + 20));
  v10 = *v8;
  v9 = v8[1];
  *&v23 = v10;
  *(&v23 + 1) = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1860, &qword_C1D68);
  sub_B75C0();
  v11 = v19 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel_lostAccessory;
  LOBYTE(v11) = *(v11 + *(type metadata accessor for LostAccessory(0) + 24));

  v26 = &type metadata for SolariumFeatureFlag;
  v27 = sub_28360();
  sub_B6610();
  __swift_destroy_boxed_opaque_existential_0(&v23);
  type metadata accessor for DelegatedSharesReportingModule();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v13 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  sub_B7580();
  (*(v5 + 104))(v7, enum case for Image.ResizingMode.stretch(_:), v4);
  v14 = sub_B7570();

  (*(v5 + 8))(v7, v4);
  v19 = v14;
  v20 = 0;
  v21 = 257;
  v22 = (v11 & 1) != 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0538, &qword_C04E0);
  sub_40DB8();
  result = sub_B6F00();
  v16 = v24;
  v17 = v25 != 0;
  *a2 = v23;
  *(a2 + 16) = v16;
  *(a2 + 18) = v17;
  return result;
}

uint64_t sub_66190@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v3 = sub_B6E50();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1888, &qword_C1DA0);
  __chkstk_darwin(v7);
  v9 = &v32 - v8;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1880, &qword_C1D98);
  v36 = *(v40 - 8);
  __chkstk_darwin(v40);
  v33 = &v32 - v10;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1878, &qword_C1D90);
  v38 = *(v41 - 8);
  __chkstk_darwin(v41);
  v35 = &v32 - v11;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1870, &qword_C1D88);
  v37 = *(v39 - 8);
  __chkstk_darwin(v39);
  v34 = &v32 - v12;
  v42 = a1;
  v44 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F19F8, &qword_C2058);
  sub_A8CC(&qword_F1A00, &qword_F19F8, &qword_C2058, &protocol conformance descriptor for TupleView<A>);
  sub_B7180();
  sub_B6E40();
  v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_F18A0, &qword_C1DA8) + 36);
  (*(v4 + 16))(&v9[v13], v6, v3);
  v14 = *(v4 + 56);
  v14(&v9[v13], 0, 1, v3);
  KeyPath = swift_getKeyPath();
  v16 = &v9[*(v7 + 36)];
  v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0748, &qword_BFE70) + 28);
  (*(v4 + 32))(v16 + v17, v6, v3);
  v18 = v33;
  v14(v16 + v17, 0, 1, v3);
  *v16 = KeyPath;
  v45 = sub_B74E0();
  v19 = sub_705D0();
  sub_B7380();

  sub_A194(v9, &qword_F1888, &qword_C1DA0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0738, &qword_BFE30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_BD800;
  LOBYTE(KeyPath) = sub_B70E0();
  *(inited + 32) = KeyPath;
  v21 = sub_B7100();
  *(inited + 33) = v21;
  sub_B70F0();
  sub_B70F0();
  if (sub_B70F0() != KeyPath)
  {
    sub_B70F0();
  }

  sub_B70F0();
  if (sub_B70F0() != v21)
  {
    sub_B70F0();
  }

  type metadata accessor for ItemContactInfoSetupConfirmationView(0);
  v45 = v7;
  v46 = &type metadata for Color;
  v47 = v19;
  v48 = &protocol witness table for Color;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v23 = v35;
  v24 = v40;
  sub_B7270();
  (*(v36 + 8))(v18, v24);
  sub_B70C0();
  v45 = v24;
  v46 = OpaqueTypeConformance2;
  v25 = swift_getOpaqueTypeConformance2();
  v26 = v34;
  v27 = v41;
  sub_B7270();
  (*(v38 + 8))(v23, v27);
  v45 = v27;
  v46 = v25;
  swift_getOpaqueTypeConformance2();
  v28 = v43;
  v29 = v39;
  sub_B7390();
  (*(v37 + 8))(v26, v29);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1868, &unk_C1D78);
  return (*(*(v30 - 8) + 56))(v28, 0, 1, v30);
}

uint64_t sub_66848@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v86 = a2;
  v77 = sub_B62F0();
  v76 = *(v77 - 8);
  __chkstk_darwin(v77);
  v75 = &v71 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1A10, &qword_C20A0);
  v83 = *(v91 - 8);
  __chkstk_darwin(v91);
  v78 = &v71 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1A18, &qword_C20A8);
  v6 = __chkstk_darwin(v5 - 8);
  v85 = &v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v87 = &v71 - v8;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1A20, &qword_C20B0);
  v80 = *(v88 - 8);
  __chkstk_darwin(v88);
  v74 = &v71 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1A28, &qword_C20B8);
  v11 = __chkstk_darwin(v10 - 8);
  v84 = &v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v94 = &v71 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1A30, &qword_C20C0);
  v79 = *(v14 - 8);
  __chkstk_darwin(v14);
  v72 = &v71 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1A38, &qword_C20C8);
  v17 = __chkstk_darwin(v16 - 8);
  v82 = &v71 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v93 = &v71 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1A40, &qword_C20D0);
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v71 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1A48, &qword_C20D8);
  v25 = __chkstk_darwin(v24 - 8);
  v92 = &v71 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v28 = &v71 - v27;
  v29 = sub_B7A60();
  v81 = sub_B7A50();
  v73 = v29;
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v30 = (a1 + *(type metadata accessor for ItemContactInfoSetupConfirmationView(0) + 20));
  v32 = *v30;
  v31 = v30[1];
  v95 = *v30;
  v96 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1860, &qword_C1D68);
  sub_B75C0();
  v33 = *(v99 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel_userVisibleEditItems);

  v89 = a1;
  v90 = v28;
  if (v33)
  {
    __chkstk_darwin(v34);
    *(&v71 - 2) = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1B08, &qword_C2158);
    sub_72648();
    sub_B7720();
    v95 = 1;
    LOWORD(v96) = 256;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0850, &qword_BFF60);
    sub_A8CC(&qword_F0858, &qword_F0850, &qword_BFF60, &protocol conformance descriptor for _ShapeView<A, B>);
    v28 = v90;
    *&v23[*(v20 + 36)] = sub_B76A0();
    sub_AB00(v23, v28, &qword_F1A40, &qword_C20D0);
    v35 = 0;
  }

  else
  {
    v35 = 1;
  }

  v36 = 1;
  (*(v21 + 56))(v28, v35, 1, v20);
  v95 = v32;
  v96 = v31;
  sub_B75C0();
  v37 = *(v99 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel_userVisibleEditItems);

  if ((v37 & 2) != 0)
  {
    __chkstk_darwin(v38);
    *(&v71 - 2) = v89;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1AC8, &qword_C2130);
    sub_72384();
    v39 = v72;
    sub_B7720();
    v95 = 1;
    LOWORD(v96) = 256;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0850, &qword_BFF60);
    sub_A8CC(&qword_F0858, &qword_F0850, &qword_BFF60, &protocol conformance descriptor for _ShapeView<A, B>);
    *(v39 + *(v14 + 36)) = sub_B76A0();
    sub_AB00(v39, v93, &qword_F1A30, &qword_C20C0);
    v36 = 0;
  }

  v40 = 1;
  (*(v79 + 56))(v93, v36, 1, v14);
  v95 = v32;
  v96 = v31;
  sub_B75C0();
  v41 = *(v99 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel_userVisibleEditItems);

  if ((v41 & 4) != 0)
  {
    __chkstk_darwin(v42);
    v43 = v89;
    *(&v71 - 2) = v89;
    sub_694B0(v43, &v95);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1A98, &qword_C2118);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1AA0, &qword_C2120);
    sub_72248();
    sub_72300();
    v44 = v74;
    sub_B7730();
    v95 = 1;
    LOWORD(v96) = 256;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0850, &qword_BFF60);
    sub_A8CC(&qword_F0858, &qword_F0850, &qword_BFF60, &protocol conformance descriptor for _ShapeView<A, B>);
    *(v44 + *(v88 + 36)) = sub_B76A0();
    sub_AB00(v44, v94, &qword_F1A20, &qword_C20B0);
    v40 = 0;
  }

  v45 = 1;
  (*(v80 + 56))(v94, v40, 1, v88);
  v95 = v32;
  v96 = v31;
  sub_B75C0();
  v46 = *(v99 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel_editType);

  if (v46 == 1)
  {
    __chkstk_darwin(v47);
    *(&v71 - 2) = v89;
    sub_B7A50();
    sub_B7A00();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    v48 = v28;
    sub_B6E60();
    if (qword_EEAC8 != -1)
    {
      swift_once();
    }

    v49 = v77;
    v50 = __swift_project_value_buffer(v77, qword_FADB0);
    (*(v76 + 16))(v75, v50, v49);
    v51 = sub_B71B0();
    v53 = v52;
    v55 = v54;
    v57 = v56;

    v95 = v51;
    v96 = v53;
    v97 = v55 & 1;
    v98 = v57;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1A58, &qword_C20E8);
    sub_72010();
    v58 = v78;
    sub_B7730();
    v95 = 1;
    LOWORD(v96) = 256;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0850, &qword_BFF60);
    sub_A8CC(&qword_F0858, &qword_F0850, &qword_BFF60, &protocol conformance descriptor for _ShapeView<A, B>);
    *(v58 + *(v91 + 36)) = sub_B76A0();
    sub_AB00(v58, v87, &qword_F1A10, &qword_C20A0);
    v45 = 0;
    v28 = v48;
  }

  v59 = v87;
  (*(v83 + 56))(v87, v45, 1, v91);
  v60 = v28;
  v61 = v92;
  sub_A310(v60, v92, &qword_F1A48, &qword_C20D8);
  v62 = v93;
  v63 = v82;
  sub_A310(v93, v82, &qword_F1A38, &qword_C20C8);
  v64 = v94;
  v65 = v84;
  sub_A310(v94, v84, &qword_F1A28, &qword_C20B8);
  v66 = v85;
  sub_A310(v59, v85, &qword_F1A18, &qword_C20A8);
  v67 = v61;
  v68 = v86;
  sub_A310(v67, v86, &qword_F1A48, &qword_C20D8);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1A50, &qword_C20E0);
  sub_A310(v63, v68 + v69[12], &qword_F1A38, &qword_C20C8);
  sub_A310(v65, v68 + v69[16], &qword_F1A28, &qword_C20B8);
  sub_A310(v66, v68 + v69[20], &qword_F1A18, &qword_C20A8);
  sub_A194(v59, &qword_F1A18, &qword_C20A8);
  sub_A194(v64, &qword_F1A28, &qword_C20B8);
  sub_A194(v62, &qword_F1A38, &qword_C20C8);
  sub_A194(v90, &qword_F1A48, &qword_C20D8);
  sub_A194(v66, &qword_F1A18, &qword_C20A8);
  sub_A194(v65, &qword_F1A28, &qword_C20B8);
  sub_A194(v63, &qword_F1A38, &qword_C20C8);
  sub_A194(v92, &qword_F1A48, &qword_C20D8);
}

uint64_t sub_6769C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_F17B0, &qword_BE7D0);
  __chkstk_darwin(v3 - 8);
  v5 = &v32 - v4;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1B30, &qword_C2168);
  v34 = *(v36 - 8);
  __chkstk_darwin(v36);
  v33 = &v32 - v6;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1B20, &qword_C2160);
  __chkstk_darwin(v32);
  v38 = &v32 - v7;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1B08, &qword_C2158);
  __chkstk_darwin(v37);
  v9 = &v32 - v8;
  sub_B7A60();
  v35 = sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_EEAB0 != -1)
  {
    swift_once();
  }

  v10 = sub_B62F0();
  v11 = __swift_project_value_buffer(v10, qword_FAD48);
  v12 = *(v10 - 8);
  (*(v12 + 16))(v5, v11, v10);
  (*(v12 + 56))(v5, 0, 1, v10);
  v13 = sub_B78D0();
  v15 = v14;
  sub_A194(v5, &unk_F17B0, &qword_BE7D0);
  v45 = v13;
  v46 = v15;
  v16 = (a1 + *(type metadata accessor for ItemContactInfoSetupConfirmationView(0) + 20));
  v17 = v16[1];
  v40 = *v16;
  v18 = v40;
  v41 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1860, &qword_C1D68);
  sub_B75E0();
  v20 = v42;
  v19 = v43;
  v21 = v44;
  swift_getKeyPath();
  v42 = v20;
  v43 = v19;
  v44 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1B38, &qword_C2198);
  sub_B76B0();

  sub_97E8();
  v22 = v33;
  sub_B7670();
  v42 = v18;
  v43 = v17;
  sub_B75C0();
  v23 = *(v40 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel_userInteractableEditItems);

  if (v23)
  {
    v24 = sub_B6F80();
  }

  else
  {
    v24 = sub_B6FA0();
  }

  v25 = v24;
  v26 = v38;
  (*(v34 + 32))(v38, v22, v36);
  *(v26 + *(v32 + 36)) = v25;
  v42 = v18;
  v43 = v17;
  sub_B75C0();
  v27 = *(v40 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel_userInteractableEditItems);

  KeyPath = swift_getKeyPath();
  v29 = swift_allocObject();
  *(v29 + 16) = (v27 & 1) == 0;
  sub_AB00(v26, v9, &qword_F1B20, &qword_C2160);
  v30 = &v9[*(v37 + 36)];
  *v30 = KeyPath;
  v30[1] = sub_42D18;
  v30[2] = v29;
  sub_AB00(v9, v39, &qword_F1B08, &qword_C2158);
}

uint64_t sub_67BBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v83 = a2;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1B40, &qword_C21A0);
  __chkstk_darwin(v81);
  v82 = (&v61 - v3);
  v4 = type metadata accessor for ItemContactInfoSetupConfirmationView(0);
  v74 = *(v4 - 8);
  v5 = *(v74 + 64);
  __chkstk_darwin(v4);
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1AF8, &qword_C2148);
  v70 = *(v71 - 8);
  __chkstk_darwin(v71);
  v69 = &v61 - v6;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1AF0, &qword_C2140);
  __chkstk_darwin(v72);
  v76 = &v61 - v7;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1AD8, &qword_C2138);
  __chkstk_darwin(v77);
  v73 = &v61 - v8;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1B48, &qword_C21A8);
  v9 = *(v80 - 8);
  __chkstk_darwin(v80);
  v75 = &v61 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1AC8, &qword_C2130);
  __chkstk_darwin(v11 - 8);
  v79 = &v61 - v12;
  sub_B7A60();
  v78 = sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v13 = (a1 + *(v4 + 20));
  v14 = *v13;
  v15 = v13[1];
  v87 = *v13;
  v88 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1860, &qword_C1D68);
  sub_B75C0();
  v16 = *(v84 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel_userInteractableEditItems);

  if ((v16 & 2) != 0)
  {
    v65 = v5;
    v66 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
    v67 = v9;
    sub_B6E60();
    v35 = (a1 + *(v4 + 24));
    v36 = *v35;
    v37 = v35[1];
    v38 = v35[2];
    v64 = v36;
    v84 = v36;
    v85 = v37;
    v63 = v37;
    v62 = v38;
    v86 = v38;
    v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1B50, &qword_C2B90);
    sub_B75E0();
    v39 = v69;
    sub_B7790();
    v68 = a1;
    sub_68620();
    sub_A8CC(&qword_F1B00, &qword_F1AF8, &qword_C2148, &protocol conformance descriptor for TextField<A>);
    v40 = v76;
    v41 = v71;
    sub_B7280();
    (*(v70 + 8))(v39, v41);
    v87 = v14;
    v88 = v15;
    sub_B75C0();
    v42 = v84;
    swift_getKeyPath();
    v87 = v42;
    sub_72884(&qword_F1840, type metadata accessor for ItemContactInfoSetupConfirmationViewModel, &protocol conformance descriptor for ItemContactInfoSetupConfirmationViewModel);
    sub_B65C0();

    v43 = *(v42 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel__isSubmitting);

    KeyPath = swift_getKeyPath();
    v45 = swift_allocObject();
    *(v45 + 16) = v43;
    v46 = (v40 + *(v72 + 36));
    *v46 = KeyPath;
    v46[1] = sub_42D18;
    v46[2] = v45;
    v87 = v14;
    v88 = v15;
    sub_B75C0();
    v47 = v84;
    swift_getKeyPath();
    v87 = v47;
    sub_B65C0();

    v48 = *(v47 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel__isSubmitting);

    if (v48 == 1)
    {
      v49 = sub_B6FA0();
    }

    else
    {
      v49 = sub_B6F80();
    }

    v50 = v49;
    v34 = v79;
    v51 = v73;
    sub_AB00(v76, v73, &qword_F1AF0, &qword_C2140);
    v52 = v77;
    *(v51 + *(v77 + 36)) = v50;
    v87 = v64;
    v88 = v63;
    v89 = v62;
    sub_B75C0();
    v87 = v84;
    v88 = v85;
    v53 = v66;
    sub_728EC(v68, v66, type metadata accessor for ItemContactInfoSetupConfirmationView);
    v54 = (*(v74 + 80) + 16) & ~*(v74 + 80);
    v55 = swift_allocObject();
    sub_708C8(v53, v55 + v54);
    v56 = sub_72460();
    v57 = v75;
    sub_B7470();

    sub_A194(v51, &qword_F1AD8, &qword_C2138);
    v58 = v67;
    v59 = v80;
    (*(v67 + 16))(v82, v57, v80);
    swift_storeEnumTagMultiPayload();
    v87 = v52;
    v88 = &type metadata for String;
    v89 = v56;
    v90 = &protocol witness table for String;
    swift_getOpaqueTypeConformance2();
    sub_B6F00();
    (*(v58 + 8))(v57, v59);
  }

  else
  {
    v87 = v14;
    v88 = v15;
    sub_B75C0();
    v17 = v84;
    swift_getKeyPath();
    v87 = v17;
    sub_72884(&qword_F1840, type metadata accessor for ItemContactInfoSetupConfirmationViewModel, &protocol conformance descriptor for ItemContactInfoSetupConfirmationViewModel);
    sub_B65C0();

    v19 = *(v17 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel__contactInfo);
    v18 = *(v17 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel__contactInfo + 8);

    v87 = v19;
    v88 = v18;
    sub_97E8();
    v20 = sub_B7200();
    v22 = v21;
    v24 = v23;
    LODWORD(v87) = sub_B6FA0();
    v25 = sub_B71C0();
    v27 = v26;
    v29 = v28;
    v31 = v30;
    sub_9C84(v20, v22, v24 & 1);

    v32 = v82;
    *v82 = v25;
    v32[1] = v27;
    *(v32 + 16) = v29 & 1;
    v32[3] = v31;
    swift_storeEnumTagMultiPayload();
    v33 = sub_72460();
    v87 = v77;
    v88 = &type metadata for String;
    v89 = v33;
    v90 = &protocol witness table for String;
    swift_getOpaqueTypeConformance2();
    v34 = v79;
    sub_B6F00();
  }

  sub_AB00(v34, v83, &qword_F1AC8, &qword_C2130);
}

uint64_t sub_68620()
{
  v1 = sub_B6320();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_B6370();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for LostModeInfo(0);
  __chkstk_darwin(v9 - 8);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = (v0 + *(type metadata accessor for ItemContactInfoSetupConfirmationView(0) + 20));
  v14 = *v12;
  v13 = v12[1];
  v17[2] = v14;
  v17[3] = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1860, &qword_C1D68);
  sub_B75C0();
  sub_728EC(v17[1] + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel_originalLostModeInfo, v11, type metadata accessor for LostModeInfo);

  (*(v6 + 16))(v8, v11, v5);
  sub_72954(v11);
  sub_B6330();
  (*(v6 + 8))(v8, v5);
  v15 = (*(v2 + 88))(v4, v1);
  if (v15 == enum case for PersonModel.Handle.Kind.phoneNumber(_:))
  {
    return 5;
  }

  if (v15 == enum case for PersonModel.Handle.Kind.email(_:))
  {
    return 7;
  }

  if (v15 != enum case for PersonModel.Handle.Kind.unknown(_:))
  {
    (*(v2 + 8))(v4, v1);
  }

  return 6;
}

uint64_t sub_688D0(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v6 = sub_B6320();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v37 - v11;
  v13 = *a1;
  v39 = a1[1];
  v40 = v13;
  v14 = *a2;
  v37 = a2[1];
  v38 = v14;
  sub_B7A60();
  v42 = sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v15 = type metadata accessor for ItemContactInfoSetupConfirmationView(0);
  v16 = (a3 + *(v15 + 20));
  v17 = v16[1];
  v41 = *v16;
  *&v45 = v41;
  *(&v45 + 1) = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1860, &qword_C1D68);
  sub_B75C0();
  (*(v7 + 16))(v12, v43 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel_contactKind, v6);

  (*(v7 + 104))(v10, enum case for PersonModel.Handle.Kind.phoneNumber(_:), v6);
  sub_72884(&qword_F1B58, &type metadata accessor for PersonModel.Handle.Kind, &protocol conformance descriptor for PersonModel.Handle.Kind);
  v18 = sub_B78C0();
  v19 = *(v7 + 8);
  v19(v10, v6);
  v19(v12, v6);
  if (v18)
  {
    v20 = sub_68DB0(v40, v39, v38, v37);
    v22 = v21;
    v23 = *(v15 + 24);
    v40 = a3;
    v24 = (a3 + v23);
    v25 = *v24;
    v26 = v24[1];
    v27 = v24[2];
    *&v45 = *v24;
    *(&v45 + 1) = v26;
    v46 = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1B50, &qword_C2B90);
    sub_B75C0();
    if (v20 == v43 && v22 == v44)
    {
    }

    else
    {
      v39 = v27;
      v28 = sub_B7DD0();

      if (v28)
      {
      }

      else
      {
        *&v45 = v25;
        *(&v45 + 1) = v26;
        v46 = v39;
        v43 = v20;
        v44 = v22;
        sub_B75D0();
      }
    }

    a3 = v40;
  }

  *&v45 = v41;
  *(&v45 + 1) = v17;
  sub_B75C0();
  v29 = v43;
  v30 = (a3 + *(v15 + 24));
  v31 = *v30;
  v32 = *(v30 + 2);
  v45 = v31;
  v46 = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1B50, &qword_C2B90);
  sub_B75C0();
  v33 = v43;
  v34 = v44;
  if (*(v29 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel__contactInfo) == v43 && *(v29 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel__contactInfo + 8) == v44 || (sub_B7DD0() & 1) != 0)
  {
    sub_76EA8(v33, v34);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    *(&v37 - 4) = v29;
    *(&v37 - 3) = v33;
    *(&v37 - 2) = v34;
    *&v45 = v29;
    sub_72884(&qword_F1840, type metadata accessor for ItemContactInfoSetupConfirmationViewModel, &protocol conformance descriptor for ItemContactInfoSetupConfirmationViewModel);
    sub_B65B0();
  }
}

uint64_t sub_68DB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ItemContactInfoSetupConfirmationView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1860, &qword_C1D68);
  sub_B75C0();
  v7 = *(v30 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel_dependencies + 48);

  v8 = a3;
  v9 = a1;
  v10 = v7(v8, a4);
  v12 = v11;

  v13 = v10;
  sub_B75C0();
  v14 = *(v30 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel_dependencies + 32);

  v15 = v14(v13, v12);
  v17 = v16;

  v18 = v15 == v9 && v17 == a2;
  if (!v18 && (sub_B7DD0() & 1) == 0)
  {
    goto LABEL_10;
  }

  v19 = sub_B7990();
  if (v19 >= sub_B7990())
  {
    goto LABEL_10;
  }

  v20 = sub_B7990();
  result = sub_B7990();
  v22 = __OFSUB__(v20, result);
  v23 = v20 - result;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    result = sub_B7990();
    if (!__OFSUB__(result, v23))
    {
      sub_7FAB0((result - v23) & ~((result - v23) >> 63), v13, v12, v24);

      sub_B75C0();
      v25 = sub_B7970();
      v27 = v26;

      v28 = *(v30 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel_dependencies + 32);

      v15 = v28(v25, v27);

LABEL_10:

      return v15;
    }
  }

  __break(1u);
  return result;
}

__n128 sub_69090@<Q0>(uint64_t a2@<X8>)
{
  sub_B7A60();
  sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v9 = sub_B6EA0();
  sub_69210(&v11);
  v3 = v11;
  v4 = v12;
  v5 = *(&v12 + 1);
  v6 = v13;
  v7 = BYTE8(v13);
  type metadata accessor for ItemContactInfoSetupConfirmationView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF570, &qword_C1E20);
  sub_B6AC0();
  sub_B7760();
  sub_B6B10();

  *&v10[7] = v11;
  *&v10[23] = v12;
  *&v10[39] = v13;
  *a2 = v9;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = v3;
  *(a2 + 40) = v4;
  *(a2 + 48) = v5;
  *(a2 + 56) = v6;
  *(a2 + 64) = v7;
  result = *v10;
  *(a2 + 112) = *&v10[47];
  *(a2 + 97) = *&v10[32];
  *(a2 + 81) = *&v10[16];
  *(a2 + 65) = *v10;
  return result;
}

uint64_t sub_69210@<X0>(uint64_t a2@<X8>)
{
  sub_B7A60();
  sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for ItemContactInfoSetupConfirmationView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1860, &qword_C1D68);
  sub_B75C0();
  swift_getKeyPath();
  sub_72884(&qword_F1840, type metadata accessor for ItemContactInfoSetupConfirmationViewModel, &protocol conformance descriptor for ItemContactInfoSetupConfirmationViewModel);
  sub_B65C0();

  swift_beginAccess();
  type metadata accessor for LostModeInfo(0);

  sub_97E8();
  v3 = sub_B7200();
  v5 = v4;
  v7 = v6;
  sub_B75C0();
  v8 = *(v17 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel_userInteractableEditItems);

  if ((v8 & 4) != 0)
  {
    sub_B6F80();
  }

  else
  {
    sub_B6FA0();
  }

  v9 = sub_B71C0();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  sub_9C84(v3, v5, v7 & 1);

  *a2 = v9;
  *(a2 + 8) = v11;
  *(a2 + 16) = v13 & 1;
  *(a2 + 24) = v15;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  sub_41410(v9, v11, v13 & 1);

  sub_9C84(v9, v11, v13 & 1);
}

uint64_t sub_694B0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_B62F0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_B7A60();
  sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8 = (a1 + *(type metadata accessor for ItemContactInfoSetupConfirmationView(0) + 20));
  v10 = *v8;
  v9 = v8[1];
  v22[2] = v10;
  v22[3] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1860, &qword_C1D68);
  sub_B75C0();
  v11 = *(v22[1] + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel_editType);

  if (v11)
  {

    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
  }

  else
  {
    sub_B6E60();
    if (qword_EEAC8 != -1)
    {
      swift_once();
    }

    v17 = __swift_project_value_buffer(v4, qword_FADB0);
    (*(v5 + 16))(v7, v17, v4);
    v13 = sub_B71B0();
    v14 = v18;
    v20 = v19;
    v16 = v21;

    v15 = v20 & 1;
  }

  *a2 = v13;
  a2[1] = v14;
  a2[2] = v15;
  a2[3] = v16;
  return result;
}

uint64_t sub_69704@<X0>(uint64_t a1@<X8>)
{
  sub_B7A60();
  sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_697B4(a1);
}

uint64_t sub_697B4@<X0>(uint64_t a1@<X8>)
{
  v136 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1B60, &qword_C21E0);
  v123 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v114 - v3;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1A90, &unk_C2108);
  v5 = __chkstk_darwin(v135);
  v7 = (&v114 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v5);
  v9 = &v114 - v8;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1B68, &qword_C21E8);
  __chkstk_darwin(v133);
  v134 = &v114 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEE00, &unk_BDA40);
  v127 = *(v11 - 8);
  v128 = v11;
  __chkstk_darwin(v11);
  v115 = &v114 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEE08, &qword_BD530);
  v14 = __chkstk_darwin(v13 - 8);
  v117 = &v114 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v116 = &v114 - v16;
  v124 = type metadata accessor for ItemContactInfoSetupConfirmationView(0);
  v17 = *(v124 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v124);
  v19 = &v114 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEF50, &unk_BD6F0);
  __chkstk_darwin(v20 - 8);
  v22 = &v114 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1A78, &unk_C20F8);
  v130 = *(v23 - 8);
  v131 = v23;
  v24 = __chkstk_darwin(v23);
  v126 = &v114 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v125 = &v114 - v26;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1B70, &unk_C21F0);
  v120 = *(v121 - 8);
  __chkstk_darwin(v121);
  v119 = &v114 - v27;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1A70, &qword_C20F0);
  v28 = __chkstk_darwin(v132);
  v118 = &v114 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v122 = &v114 - v30;
  v140 = &type metadata for SolariumFeatureFlag;
  v141 = sub_28360();
  v31 = sub_B6610();
  __swift_destroy_boxed_opaque_existential_0(&v138);
  v129 = v18;
  if (v31)
  {
    sub_B69F0();
    v32 = sub_B6A00();
    (*(*(v32 - 8) + 56))(v22, 0, 1, v32);
    sub_728EC(v1, &v114 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ItemContactInfoSetupConfirmationView);
    v33 = *(v17 + 80);
    v117 = ~v33;
    v34 = v1;
    v35 = swift_allocObject();
    v36 = sub_708C8(v19, v35 + ((v33 + 16) & ~v33));
    __chkstk_darwin(v36);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0840, &qword_BFF58);
    sub_A8CC(&qword_F0848, &qword_F0840, &qword_BFF58, &protocol conformance descriptor for HStack<A>);
    sub_B7600();
    v37 = v1;
    v38 = (v1 + *(v124 + 20));
    v40 = *v38;
    v39 = v38[1];
    v126 = v40;
    v138 = v40;
    v139 = v39;
    v124 = v39;
    v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1860, &qword_C1D68);
    sub_B75C0();
    v41 = v116;
    sub_749A4(v116);

    v43 = v127;
    v42 = v128;
    if ((*(v127 + 48))(v41, 1, v128))
    {
      sub_A194(v41, &qword_EEE08, &qword_BD530);
      v44 = 0;
      v45 = 0xE000000000000000;
    }

    else
    {
      v59 = v115;
      (*(v43 + 16))(v115, v41, v42);
      sub_A194(v41, &qword_EEE08, &qword_BD530);
      v44 = sub_B6920();
      v45 = v60;
      (*(v43 + 8))(v59, v42);
    }

    v138 = v44;
    v139 = v45;
    sub_97E8();
    v61 = sub_B7200();
    v127 = v62;
    v128 = v61;
    LODWORD(v115) = v63;
    v116 = v64;
    sub_728EC(v34, v19, type metadata accessor for ItemContactInfoSetupConfirmationView);
    sub_B7A60();
    v65 = sub_B7A50();
    v66 = (v33 + 32) & v117;
    v67 = swift_allocObject();
    *(v67 + 16) = v65;
    *(v67 + 24) = &protocol witness table for MainActor;
    sub_708C8(v19, v67 + v66);
    sub_728EC(v37, v19, type metadata accessor for ItemContactInfoSetupConfirmationView);
    v68 = sub_B7A50();
    v69 = swift_allocObject();
    *(v69 + 16) = v68;
    *(v69 + 24) = &protocol witness table for MainActor;
    sub_708C8(v19, v69 + v66);
    v70 = sub_B76D0();
    v71 = __chkstk_darwin(v70);
    __chkstk_darwin(v71);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEE70, &qword_BFEF0);
    sub_A8CC(&qword_F1A80, &qword_F1A78, &unk_C20F8, &protocol conformance descriptor for Button<A>);
    sub_9BD4();
    v72 = v131;
    v73 = v115;
    v74 = v119;
    v76 = v127;
    v75 = v128;
    v77 = v125;
    sub_B7310();

    sub_9C84(v75, v76, v73 & 1);

    (*(v130 + 8))(v77, v72);
    v138 = v126;
    v139 = v124;
    sub_B75C0();
    v78 = v137;
    swift_getKeyPath();
    v138 = v78;
    sub_72884(&qword_F1840, type metadata accessor for ItemContactInfoSetupConfirmationViewModel, &protocol conformance descriptor for ItemContactInfoSetupConfirmationViewModel);
    sub_B65C0();

    v79 = v78[OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel__isDisabling];

    KeyPath = swift_getKeyPath();
    v81 = swift_allocObject();
    *(v81 + 16) = v79;
    v82 = v118;
    v120[4](v118, v74, v121);
    v83 = (v82 + *(v132 + 36));
    *v83 = KeyPath;
    v83[1] = sub_42D18;
    v83[2] = v81;
    v84 = &qword_F1A70;
    v85 = &qword_C20F0;
    v86 = v122;
    sub_AB00(v82, v122, &qword_F1A70, &qword_C20F0);
    sub_A310(v86, v134, &qword_F1A70, &qword_C20F0);
    swift_storeEnumTagMultiPayload();
    sub_720F4(&qword_F1A68, &qword_F1A70, &qword_C20F0, &opaque type descriptor for <<opaque return type of View.confirmationDialog<A, B>(_:isPresented:titleVisibility:actions:message:)>>);
    sub_720F4(&qword_F1A88, &qword_F1A90, &unk_C2108, &opaque type descriptor for <<opaque return type of View.alert<A, B>(_:isPresented:actions:message:)>>);
  }

  else
  {
    v120 = v7;
    v121 = v4;
    v122 = v2;
    v125 = v9;
    sub_B69E0();
    v46 = sub_B6A00();
    (*(*(v46 - 8) + 56))(v22, 0, 1, v46);
    sub_728EC(v1, &v114 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ItemContactInfoSetupConfirmationView);
    v47 = *(v17 + 80);
    v114 = ~v47;
    v48 = swift_allocObject();
    v119 = &v114 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
    v49 = sub_708C8(v119, v48 + ((v47 + 16) & ~v47));
    __chkstk_darwin(v49);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0840, &qword_BFF58);
    sub_A8CC(&qword_F0848, &qword_F0840, &qword_BFF58, &protocol conformance descriptor for HStack<A>);
    sub_B7600();
    v50 = v1;
    v51 = (v1 + *(v124 + 20));
    v53 = *v51;
    v52 = v51[1];
    v124 = v53;
    v138 = v53;
    v139 = v52;
    v118 = v52;
    v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1860, &qword_C1D68);
    sub_B75C0();
    v54 = v117;
    sub_749A4(v117);

    v56 = v127;
    v55 = v128;
    if ((*(v127 + 48))(v54, 1, v128))
    {
      sub_A194(v54, &qword_EEE08, &qword_BD530);
      v57 = 0;
      v58 = 0xE000000000000000;
    }

    else
    {
      v87 = v115;
      (*(v56 + 16))(v115, v54, v55);
      sub_A194(v54, &qword_EEE08, &qword_BD530);
      v57 = sub_B6920();
      v58 = v88;
      (*(v56 + 8))(v87, v55);
    }

    v138 = v57;
    v139 = v58;
    sub_97E8();
    v89 = sub_B7200();
    v127 = v90;
    v128 = v89;
    LODWORD(v115) = v91;
    v117 = v92;
    v93 = v50;
    v94 = v119;
    sub_728EC(v50, v119, type metadata accessor for ItemContactInfoSetupConfirmationView);
    sub_B7A60();
    v95 = sub_B7A50();
    v96 = (v47 + 32) & v114;
    v97 = swift_allocObject();
    *(v97 + 16) = v95;
    *(v97 + 24) = &protocol witness table for MainActor;
    sub_708C8(v94, v97 + v96);
    sub_728EC(v93, v94, type metadata accessor for ItemContactInfoSetupConfirmationView);
    v98 = sub_B7A50();
    v99 = swift_allocObject();
    *(v99 + 16) = v98;
    *(v99 + 24) = &protocol witness table for MainActor;
    sub_708C8(v94, v99 + v96);
    v100 = sub_B76D0();
    v101 = __chkstk_darwin(v100);
    __chkstk_darwin(v101);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEE70, &qword_BFEF0);
    sub_A8CC(&qword_F1A80, &qword_F1A78, &unk_C20F8, &protocol conformance descriptor for Button<A>);
    sub_9BD4();
    v102 = v131;
    v103 = v115;
    v104 = v121;
    v106 = v127;
    v105 = v128;
    v107 = v126;
    sub_B7400();

    sub_9C84(v105, v106, v103 & 1);

    (*(v130 + 8))(v107, v102);
    v138 = v124;
    v139 = v118;
    sub_B75C0();
    v108 = v137;
    swift_getKeyPath();
    v138 = v108;
    sub_72884(&qword_F1840, type metadata accessor for ItemContactInfoSetupConfirmationViewModel, &protocol conformance descriptor for ItemContactInfoSetupConfirmationViewModel);
    sub_B65C0();

    LOBYTE(v94) = v108[OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel__isDisabling];

    v109 = swift_getKeyPath();
    v110 = swift_allocObject();
    *(v110 + 16) = v94;
    v111 = v120;
    (*(v123 + 32))(v120, v104, v122);
    v112 = (v111 + *(v135 + 36));
    *v112 = v109;
    v112[1] = sub_42D18;
    v112[2] = v110;
    v84 = &qword_F1A90;
    v85 = &unk_C2108;
    v86 = v125;
    sub_AB00(v111, v125, &qword_F1A90, &unk_C2108);
    sub_A310(v86, v134, &qword_F1A90, &unk_C2108);
    swift_storeEnumTagMultiPayload();
    sub_720F4(&qword_F1A68, &qword_F1A70, &qword_C20F0, &opaque type descriptor for <<opaque return type of View.confirmationDialog<A, B>(_:isPresented:titleVisibility:actions:message:)>>);
    sub_720F4(&qword_F1A88, &qword_F1A90, &unk_C2108, &opaque type descriptor for <<opaque return type of View.alert<A, B>(_:isPresented:actions:message:)>>);
  }

  sub_B6F00();
  return sub_A194(v86, v84, v85);
}

void *sub_6AB7C()
{
  v1 = v0;
  v2 = type metadata accessor for ItemContactInfoSetupConfirmationView(0);
  v3 = v2 - 8;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v2);
  v6 = sub_B67E0();
  v35 = *(v6 - 8);
  v36 = v6;
  __chkstk_darwin(v6);
  v37 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_B67D0();
  v33 = *(v8 - 8);
  v34 = v8;
  __chkstk_darwin(v8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_F17B0, &qword_BE7D0);
  __chkstk_darwin(v11 - 8);
  v13 = &v29 - v12;
  v14 = (v0 + *(v3 + 28));
  v15 = *v14;
  v16 = v14[1];
  v39 = *v14;
  v40 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1860, &qword_C1D68);
  sub_B75C0();
  v17 = *(v38 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel_editType);

  if (v17)
  {
    return &_swiftEmptyArrayStorage;
  }

  v30 = v4;
  v31 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0BE8, &unk_C0EB0);
  v19 = *(sub_B6800() - 8);
  v29 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_BDA30;
  if (qword_EEAC8 != -1)
  {
    swift_once();
  }

  v20 = sub_B62F0();
  v21 = __swift_project_value_buffer(v20, qword_FADB0);
  v22 = *(v20 - 8);
  (*(v22 + 16))(v13, v21, v20);
  (*(v22 + 56))(v13, 0, 1, v20);
  sub_B78D0();
  sub_A194(v13, &unk_F17B0, &qword_BE7D0);
  v39 = v15;
  v40 = v16;
  sub_B75C0();
  v23 = v38;
  swift_getKeyPath();
  v39 = v23;
  sub_72884(&qword_F1840, type metadata accessor for ItemContactInfoSetupConfirmationViewModel, &protocol conformance descriptor for ItemContactInfoSetupConfirmationViewModel);
  sub_B65C0();

  LODWORD(v20) = *(v23 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel__isSubmitting);

  v24 = &enum case for OnboardingTrayAction.State.loading(_:);
  if (!v20)
  {
    v24 = &enum case for OnboardingTrayAction.State.enabled(_:);
  }

  (*(v33 + 104))(v10, *v24, v34);
  (*(v35 + 104))(v37, enum case for OnboardingTrayAction.Style.bold(_:), v36);
  v25 = v31;
  sub_728EC(v32, v31, type metadata accessor for ItemContactInfoSetupConfirmationView);
  v26 = (*(v30 + 80) + 16) & ~*(v30 + 80);
  v27 = swift_allocObject();
  sub_708C8(v25, v27 + v26);
  sub_B67F0();
  return v18;
}

uint64_t sub_6B0D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a1;
  v50 = a2;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F19E8, &qword_C1FB0);
  __chkstk_darwin(v46);
  v3 = &v39 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F18D8, &qword_C1E18);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v39 - v6;
  v8 = sub_B6F50();
  __chkstk_darwin(v8 - 8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F19F0, &qword_C1FB8);
  v44 = *(v9 - 8);
  v45 = v9;
  v10 = __chkstk_darwin(v9);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v47 = &v39 - v13;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F18C0, &qword_C1E10);
  v14 = __chkstk_darwin(v49);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v39 - v17;
  sub_B7A60();
  v51 = sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v19 = type metadata accessor for ItemContactInfoSetupConfirmationView(0);
  v20 = v48;
  v21 = (v48 + *(v19 + 20));
  v23 = *v21;
  v22 = v21[1];
  v53 = v23;
  v54 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1860, &qword_C1D68);
  sub_B75C0();
  v24 = *(v52 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel_editType);

  if (v24 == 1)
  {
    v25 = sub_B6F30();
    v41 = v7;
    v42 = v5;
    v43 = v4;
    v40 = v12;
    __chkstk_darwin(v25);
    *(&v39 - 2) = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0648, &unk_C1FC0);
    sub_71B40();
    v26 = v47;
    sub_B6A80();
    v27 = sub_B6F40();
    __chkstk_darwin(v27);
    *(&v39 - 2) = v20;
    v28 = v40;
    sub_B6A80();
    v29 = *(v46 + 48);
    v30 = v44;
    v31 = *(v44 + 16);
    v32 = v26;
    v33 = v45;
    v31(v3, v32, v45);
    v31(&v3[v29], v28, v33);
    v34 = v41;
    sub_B6EE0();
    v35 = v42;
    v36 = v43;
    (*(v42 + 16))(v16, v34, v43);
    (*(v35 + 56))(v16, 0, 1, v36);
    sub_A8CC(&qword_F18D0, &qword_F18D8, &qword_C1E18, &protocol conformance descriptor for TupleToolbarContent<A>);
    sub_B6F70();
    sub_A194(v16, &qword_F18C0, &qword_C1E10);
    (*(v35 + 8))(v34, v36);
    v37 = *(v30 + 8);
    v37(v28, v33);
    v37(v47, v33);
  }

  else
  {
    (*(v5 + 56))(v16, 1, 1, v4);
    sub_A8CC(&qword_F18D0, &qword_F18D8, &qword_C1E18, &protocol conformance descriptor for TupleToolbarContent<A>);
    sub_B6F70();
    sub_A194(v16, &qword_F18C0, &qword_C1E10);
  }

  sub_70814();
  sub_B6F60();
  sub_A194(v18, &qword_F18C0, &qword_C1E10);
}

uint64_t sub_6B704@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a1;
  v40 = a2;
  v2 = type metadata accessor for ItemContactInfoSetupConfirmationView(0);
  v35 = *(v2 - 8);
  v36 = v2;
  v3 = *(v35 + 64);
  __chkstk_darwin(v2);
  v4 = sub_B7950();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_F17B0, &qword_BE7D0);
  __chkstk_darwin(v8 - 8);
  v10 = &v34 - v9;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0658, &unk_BFD30);
  __chkstk_darwin(v39);
  v12 = &v34 - v11;
  sub_B7A60();
  v38 = sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_EEAB0 != -1)
  {
    swift_once();
  }

  v13 = sub_B62F0();
  v14 = __swift_project_value_buffer(v13, qword_FAD48);
  v15 = *(v13 - 8);
  (*(v15 + 16))(v10, v14, v13);
  (*(v15 + 56))(v10, 0, 1, v13);
  v16 = sub_B78D0();
  v18 = v17;
  sub_A194(v10, &unk_F17B0, &qword_BE7D0);
  (*(v5 + 104))(v7, enum case for String.ButtonType.cancel(_:), v4);
  v19 = sub_B7960();
  v21 = v20;
  (*(v5 + 8))(v7, v4);
  v22 = v37;
  sub_728EC(v37, &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ItemContactInfoSetupConfirmationView);
  v23 = (*(v35 + 80) + 16) & ~*(v35 + 80);
  v24 = swift_allocObject();
  v25 = sub_708C8(&v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v24 + v23);
  v42 = v16;
  v43 = v18;
  __chkstk_darwin(v25);
  *(&v34 - 4) = &v42;
  *(&v34 - 3) = v19;
  *(&v34 - 2) = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F06A0, &unk_C06B0);
  sub_A8CC(&qword_F06A8, &qword_F06A0, &unk_C06B0, &protocol conformance descriptor for Label<A, B>);
  sub_B7610();

  v26 = (v22 + *(v36 + 20));
  v28 = *v26;
  v27 = v26[1];
  v42 = v28;
  v43 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1860, &qword_C1D68);
  sub_B75C0();
  v29 = v41;
  swift_getKeyPath();
  v42 = v29;
  sub_72884(&qword_F1840, type metadata accessor for ItemContactInfoSetupConfirmationViewModel, &protocol conformance descriptor for ItemContactInfoSetupConfirmationViewModel);
  sub_B65C0();

  LOBYTE(v18) = *(v29 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel__isSubmitting);

  KeyPath = swift_getKeyPath();
  v31 = swift_allocObject();
  *(v31 + 16) = v18;
  v32 = &v12[*(v39 + 36)];
  *v32 = KeyPath;
  v32[1] = sub_42D18;
  v32[2] = v31;
  sub_415C0();
  sub_B7360();
  sub_A194(v12, &qword_F0658, &unk_BFD30);
}

uint64_t sub_6BCFC(uint64_t a1)
{
  sub_B7A60();
  sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = *(a1 + *(type metadata accessor for ItemContactInfoSetupConfirmationView(0) + 36));
  if (v2)
  {
    v2();
  }
}

uint64_t sub_6BDB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a1;
  v50 = a2;
  v42 = type metadata accessor for ItemContactInfoSetupConfirmationView(0);
  v40 = *(v42 - 8);
  v2 = *(v40 + 64);
  __chkstk_darwin(v42);
  v41 = &v40 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_B7950();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_F17B0, &qword_BE7D0);
  __chkstk_darwin(v7 - 8);
  v9 = &v40 - v8;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0668, &qword_C1FD0);
  v47 = *(v49 - 8);
  __chkstk_darwin(v49);
  v11 = &v40 - v10;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0658, &unk_BFD30);
  __chkstk_darwin(v48);
  v43 = &v40 - v12;
  sub_B7A60();
  v46 = sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v45 = v11;
  if (qword_EEAB0 != -1)
  {
    swift_once();
  }

  v13 = sub_B62F0();
  v14 = __swift_project_value_buffer(v13, qword_FAD48);
  v15 = *(v13 - 8);
  (*(v15 + 16))(v9, v14, v13);
  (*(v15 + 56))(v9, 0, 1, v13);
  v16 = sub_B78D0();
  v18 = v17;
  sub_A194(v9, &unk_F17B0, &qword_BE7D0);
  (*(v4 + 104))(v6, enum case for String.ButtonType.done(_:), v3);
  v19 = sub_B7960();
  v21 = v20;
  (*(v4 + 8))(v6, v3);
  v22 = v44;
  v23 = v41;
  sub_728EC(v44, v41, type metadata accessor for ItemContactInfoSetupConfirmationView);
  v24 = (*(v40 + 80) + 16) & ~*(v40 + 80);
  v25 = swift_allocObject();
  v26 = sub_708C8(v23, v25 + v24);
  v52 = v16;
  v53 = v18;
  __chkstk_darwin(v26);
  *(&v40 - 4) = &v52;
  *(&v40 - 3) = v19;
  *(&v40 - 2) = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F06A0, &unk_C06B0);
  sub_A8CC(&qword_F06A8, &qword_F06A0, &unk_C06B0, &protocol conformance descriptor for Label<A, B>);
  v27 = v45;
  sub_B7610();

  v28 = (v22 + *(v42 + 20));
  v29 = *v28;
  v30 = v28[1];
  v52 = *v28;
  v53 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1860, &qword_C1D68);
  sub_B75C0();
  v31 = v51;
  swift_getKeyPath();
  v52 = v31;
  sub_72884(&qword_F1840, type metadata accessor for ItemContactInfoSetupConfirmationViewModel, &protocol conformance descriptor for ItemContactInfoSetupConfirmationViewModel);
  sub_B65C0();

  LOBYTE(v18) = *(v31 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel__isSubmitting);
  v32 = 1;

  if ((v18 & 1) == 0)
  {
    v52 = v29;
    v53 = v30;
    sub_B75C0();
    v33 = v51;
    swift_getKeyPath();
    v52 = v33;
    sub_B65C0();

    v34 = *(v33 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel__shouldEnableSaveButton);

    v32 = v34 ^ 1;
  }

  KeyPath = swift_getKeyPath();
  v36 = swift_allocObject();
  *(v36 + 16) = v32 & 1;
  v37 = v43;
  (*(v47 + 32))(v43, v27, v49);
  v38 = (v37 + *(v48 + 36));
  *v38 = KeyPath;
  v38[1] = sub_417AC;
  v38[2] = v36;
  sub_415C0();
  sub_B7360();
  sub_A194(v37, &qword_F0658, &unk_BFD30);
}

uint64_t sub_6C4E8(uint64_t a1)
{
  v2 = type metadata accessor for ItemContactInfoSetupConfirmationView(0);
  v19[0] = *(v2 - 8);
  v3 = *(v19[0] + 64);
  __chkstk_darwin(v2);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF458, &qword_BDED0);
  __chkstk_darwin(v4 - 8);
  v6 = v19 - v5;
  sub_B7A60();
  sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7 = (a1 + *(v2 + 20));
  v9 = *v7;
  v8 = v7[1];
  v20 = v9;
  v21 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1860, &qword_C1D68);
  sub_B75C0();
  v10 = v19[1];
  swift_getKeyPath();
  v20 = v10;
  sub_72884(&qword_F1840, type metadata accessor for ItemContactInfoSetupConfirmationViewModel, &protocol conformance descriptor for ItemContactInfoSetupConfirmationViewModel);
  sub_B65C0();

  v11 = *(v10 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel__shouldEnableSaveButton);

  if (v11 == 1)
  {
    v13 = sub_B7A80();
    (*(*(v13 - 8) + 56))(v6, 1, 1, v13);
    sub_728EC(a1, v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ItemContactInfoSetupConfirmationView);
    v14 = sub_B7A50();
    v15 = (*(v19[0] + 80) + 32) & ~*(v19[0] + 80);
    v16 = swift_allocObject();
    *(v16 + 16) = v14;
    *(v16 + 24) = &protocol witness table for MainActor;
    sub_708C8(v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15);
    sub_30A3C(0, 0, v6, &unk_C2038, v16);
  }

  else
  {
    v17 = *(a1 + *(v2 + 36));
    if (v17)
    {
      v17(v12);
    }
  }
}

uint64_t sub_6C81C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  sub_B7A60();
  v4[6] = sub_B7A50();
  v6 = sub_B7A00();
  v4[7] = v6;
  v4[8] = v5;

  return _swift_task_switch(sub_6C8B4, v6, v5);
}

uint64_t sub_6C8B4()
{
  v1 = v0[5];
  v2 = type metadata accessor for ItemContactInfoSetupConfirmationView(0);
  v0[9] = v2;
  v3 = (v1 + *(v2 + 20));
  v5 = *v3;
  v4 = v3[1];
  v0[2] = v5;
  v0[3] = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1860, &qword_C1D68);
  sub_B75C0();
  v0[10] = v0[4];
  v6 = swift_task_alloc();
  v0[11] = v6;
  *v6 = v0;
  v6[1] = sub_6C98C;

  return sub_734C8();
}

uint64_t sub_6C98C(char a1)
{
  v2 = *v1;
  *(*v1 + 96) = a1;

  v3 = *(v2 + 64);
  v4 = *(v2 + 56);

  return _swift_task_switch(sub_730C0, v4, v3);
}

uint64_t sub_6CAD8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF458, &qword_BDED0);
  __chkstk_darwin(v2 - 8);
  v4 = v13 - v3;
  sub_B7A60();
  sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = (a1 + *(type metadata accessor for ItemContactInfoSetupConfirmationView(0) + 20));
  v7 = *v5;
  v6 = v5[1];
  v13[2] = v7;
  v13[3] = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1860, &qword_C1D68);
  sub_B75C0();
  v8 = sub_B7A80();
  (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
  v9 = swift_allocObject();
  swift_weakInit();

  v10 = sub_B7A50();
  v11 = swift_allocObject();
  v11[2] = v10;
  v11[3] = &protocol witness table for MainActor;
  v11[4] = v9;

  sub_30A3C(0, 0, v4, &unk_C1FA8, v11);
}

uint64_t sub_6CCE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24[2] = a2;
  v3 = type metadata accessor for ItemContactInfoSetupConfirmationView(0);
  v24[0] = *(v3 - 8);
  v4 = *(v24[0] + 64);
  __chkstk_darwin(v3);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEE00, &unk_BDA40);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v24 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEE08, &qword_BD530);
  __chkstk_darwin(v9 - 8);
  v11 = v24 - v10;
  sub_B7A60();
  v24[1] = sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v12 = (a1 + *(v3 + 20));
  v14 = *v12;
  v13 = v12[1];
  v25[0] = v14;
  v25[1] = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1860, &qword_C1D68);
  sub_B75C0();
  sub_73D48(v11);

  if ((*(v6 + 48))(v11, 1, v5))
  {
    sub_A194(v11, &qword_EEE08, &qword_BD530);
    v15 = &_swiftEmptyArrayStorage;
  }

  else
  {
    (*(v6 + 16))(v8, v11, v5);
    sub_A194(v11, &qword_EEE08, &qword_BD530);
    v15 = sub_B6930();
    (*(v6 + 8))(v8, v5);
  }

  v25[0] = v15;
  KeyPath = swift_getKeyPath();
  sub_728EC(a1, v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ItemContactInfoSetupConfirmationView);
  v17 = (*(v24[0] + 80) + 16) & ~*(v24[0] + 80);
  v18 = swift_allocObject();
  sub_708C8(v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEF30, &qword_C1F50);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1900, &qword_C1E30);
  v21 = sub_A8CC(&qword_EEF38, &qword_EEF30, &qword_C1F50, &protocol conformance descriptor for [A]);
  v22 = sub_70BC0();
  sub_B76E0(v25, KeyPath, sub_71454, v18, v19, v20, v21, &protocol witness table for String, v22);
}

uint64_t sub_6D0D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v103 = a2;
  v113 = a3;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F19D8, &qword_C1F58);
  __chkstk_darwin(v110);
  v112 = &v87 - v4;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F19E0, &unk_C1F60);
  __chkstk_darwin(v95);
  v96 = &v87 - v5;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1910, &unk_C1E38);
  __chkstk_darwin(v111);
  v97 = &v87 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEF40, &unk_BD6E0);
  v105 = *(v7 - 8);
  v102 = *(v105 + 64);
  __chkstk_darwin(v7);
  v104 = &v87 - v8;
  v9 = type metadata accessor for ItemContactInfoSetupConfirmationView(0);
  v98 = *(v9 - 8);
  __chkstk_darwin(v9 - 8);
  v99 = v10;
  v101 = &v87 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEF50, &unk_BD6F0);
  v12 = __chkstk_darwin(v11 - 8);
  v90 = &v87 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v89 = &v87 - v15;
  __chkstk_darwin(v14);
  v93 = &v87 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEE88, &qword_BD620);
  v108 = *(v17 - 8);
  v109 = v17;
  v18 = __chkstk_darwin(v17);
  v91 = &v87 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v92 = &v87 - v21;
  __chkstk_darwin(v20);
  v94 = &v87 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEF48, &unk_C01F0);
  v24 = __chkstk_darwin(v23 - 8);
  v88 = &v87 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v24);
  v28 = &v87 - v27;
  v29 = __chkstk_darwin(v26);
  v31 = &v87 - v30;
  v32 = __chkstk_darwin(v29);
  v34 = &v87 - v33;
  __chkstk_darwin(v32);
  v36 = &v87 - v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1900, &qword_C1E30);
  __chkstk_darwin(v37 - 8);
  v107 = &v87 - v38;
  sub_B7A60();
  v106 = sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v39 = a1;
  sub_B68A0();
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F17D0, &unk_BFFA0);
  v41 = *(v40 - 8);
  v42 = *(v41 + 48);
  v43 = v42(v36, 1, v40);
  v114 = v7;
  v115 = v39;
  v100 = v36;
  if (v43 == 1)
  {
    v116 = sub_B68C0();
    v117 = v44;
    sub_B68A0();
    if (v42(v34, 1, v40) == 1)
    {
      sub_A194(v34, &qword_EEF48, &unk_C01F0);
      v45 = sub_B6A00();
      (*(*(v45 - 8) + 56))(v93, 1, 1, v45);
    }

    else
    {
      sub_B6890();
      (*(v41 + 8))(v34, v40);
    }

    v53 = v107;
    v54 = v101;
    sub_728EC(v103, v101, type metadata accessor for ItemContactInfoSetupConfirmationView);
    v56 = v104;
    v55 = v105;
    v57 = v114;
    (*(v105 + 16))(v104, v115, v114);
    v58 = (*(v98 + 80) + 16) & ~*(v98 + 80);
    v59 = (v99 + *(v55 + 80) + v58) & ~*(v55 + 80);
    v60 = swift_allocObject();
    sub_708C8(v54, v60 + v58);
    (*(v55 + 32))(v60 + v59, v56, v57);
    sub_97E8();
    v61 = v94;
    sub_B7630();
    v63 = v108;
    v62 = v109;
    (*(v108 + 16))(v96, v61, v109);
    swift_storeEnumTagMultiPayload();
    sub_A8CC(&qword_EEE80, &qword_EEE88, &qword_BD620, &protocol conformance descriptor for Button<A>);
    v64 = v97;
    sub_B6F00();
    sub_A310(v64, v112, &qword_F1910, &unk_C1E38);
    swift_storeEnumTagMultiPayload();
    sub_70C78();
    sub_B6F00();
    sub_A194(v64, &qword_F1910, &unk_C1E38);
    (*(v63 + 8))(v61, v62);
LABEL_18:
    sub_A194(v100, &qword_EEF48, &unk_C01F0);
    goto LABEL_19;
  }

  sub_A310(v36, v31, &qword_EEF48, &unk_C01F0);
  v46 = (*(v41 + 88))(v31, v40);
  if (v46 != enum case for AlertInfo.ActionInfo.Style.cancel<A>(_:) && v46 != enum case for AlertInfo.ActionInfo.Style.destructive<A>(_:))
  {
    v47 = *(v41 + 8);
    v47(v31, v40);
    v116 = sub_B68C0();
    v117 = v48;
    v49 = v88;
    sub_B68A0();
    if (v42(v49, 1, v40) == 1)
    {
      sub_A194(v49, &qword_EEF48, &unk_C01F0);
      v50 = sub_B6A00();
      (*(*(v50 - 8) + 56))(v90, 1, 1, v50);
    }

    else
    {
      sub_B6890();
      v47(v49, v40);
    }

    v76 = v101;
    sub_728EC(v103, v101, type metadata accessor for ItemContactInfoSetupConfirmationView);
    v78 = v104;
    v77 = v105;
    v79 = v114;
    (*(v105 + 16))(v104, v115, v114);
    v80 = (*(v98 + 80) + 16) & ~*(v98 + 80);
    v81 = (v99 + *(v77 + 80) + v80) & ~*(v77 + 80);
    v82 = swift_allocObject();
    sub_708C8(v76, v82 + v80);
    (*(v77 + 32))(v82 + v81, v78, v79);
    sub_97E8();
    v83 = v91;
    sub_B7630();
    v85 = v108;
    v84 = v109;
    (*(v108 + 16))(v112, v83, v109);
    swift_storeEnumTagMultiPayload();
    sub_70C78();
    sub_A8CC(&qword_EEE80, &qword_EEE88, &qword_BD620, &protocol conformance descriptor for Button<A>);
    v53 = v107;
    sub_B6F00();
    (*(v85 + 8))(v83, v84);
    goto LABEL_18;
  }

  sub_A194(v100, &qword_EEF48, &unk_C01F0);
  v116 = sub_B68C0();
  v117 = v51;
  sub_B68A0();
  if (v42(v28, 1, v40) == 1)
  {
    sub_A194(v28, &qword_EEF48, &unk_C01F0);
    v52 = sub_B6A00();
    (*(*(v52 - 8) + 56))(v89, 1, 1, v52);
  }

  else
  {
    sub_B6890();
    (*(v41 + 8))(v28, v40);
  }

  v53 = v107;
  v65 = v101;
  sub_728EC(v103, v101, type metadata accessor for ItemContactInfoSetupConfirmationView);
  v67 = v104;
  v66 = v105;
  v68 = v114;
  (*(v105 + 16))(v104, v115, v114);
  v69 = (*(v98 + 80) + 16) & ~*(v98 + 80);
  v70 = (v99 + *(v66 + 80) + v69) & ~*(v66 + 80);
  v71 = swift_allocObject();
  sub_708C8(v65, v71 + v69);
  (*(v66 + 32))(v71 + v70, v67, v68);
  sub_97E8();
  v72 = v92;
  sub_B7630();
  v74 = v108;
  v73 = v109;
  (*(v108 + 16))(v96, v72, v109);
  swift_storeEnumTagMultiPayload();
  sub_A8CC(&qword_EEE80, &qword_EEE88, &qword_BD620, &protocol conformance descriptor for Button<A>);
  v75 = v97;
  sub_B6F00();
  sub_A310(v75, v112, &qword_F1910, &unk_C1E38);
  swift_storeEnumTagMultiPayload();
  sub_70C78();
  sub_B6F00();
  sub_A194(v75, &qword_F1910, &unk_C1E38);
  (*(v74 + 8))(v72, v73);
LABEL_19:
  sub_AB00(v53, v113, &qword_F1900, &qword_C1E30);
}

uint64_t sub_6DFAC(uint64_t a1)
{
  v2 = type metadata accessor for ItemContactInfoSetupConfirmationView(0);
  v19[0] = *(v2 - 8);
  v3 = *(v19[0] + 64);
  __chkstk_darwin(v2);
  v4 = v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF458, &qword_BDED0);
  __chkstk_darwin(v5 - 8);
  v7 = v19 - v6;
  sub_B7A60();
  sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8 = (a1 + *(v2 + 20));
  v10 = *v8;
  v9 = v8[1];
  v20 = v10;
  v21 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1860, &qword_C1D68);
  sub_B75C0();
  v11 = v19[1];
  swift_getKeyPath();
  v20 = v11;
  sub_72884(&qword_F1840, type metadata accessor for ItemContactInfoSetupConfirmationViewModel, &protocol conformance descriptor for ItemContactInfoSetupConfirmationViewModel);
  sub_B65C0();

  v12 = *(v11 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel__destination);

  if (v12 >> 8 <= 0xFE && (v12 & 0xFF00) == 0x200 && (v12 - 1) >= 2u)
  {
    v13 = sub_B7A80();
    (*(*(v13 - 8) + 56))(v7, 1, 1, v13);
    sub_728EC(a1, v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ItemContactInfoSetupConfirmationView);
    v14 = sub_B7A50();
    v15 = (*(v19[0] + 80) + 32) & ~*(v19[0] + 80);
    v16 = swift_allocObject();
    *(v16 + 16) = v14;
    *(v16 + 24) = &protocol witness table for MainActor;
    sub_708C8(v4, v16 + v15);
    sub_30A3C(0, 0, v7, &unk_C1FA0, v16);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEF40, &unk_BD6E0);
    v17 = sub_B68D0();
    v20(v17);
  }
}

uint64_t sub_6E310(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  sub_B7A60();
  v4[6] = sub_B7A50();
  v6 = sub_B7A00();
  v4[7] = v6;
  v4[8] = v5;

  return _swift_task_switch(sub_6E3A8, v6, v5);
}

uint64_t sub_6E3A8()
{
  v1 = v0[5];
  v2 = type metadata accessor for ItemContactInfoSetupConfirmationView(0);
  v0[9] = v2;
  v3 = (v1 + *(v2 + 20));
  v5 = *v3;
  v4 = v3[1];
  v0[2] = v5;
  v0[3] = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1860, &qword_C1D68);
  sub_B75C0();
  v0[10] = v0[4];
  v6 = swift_task_alloc();
  v0[11] = v6;
  *v6 = v0;
  v6[1] = sub_6C98C;

  return sub_741F4();
}

uint64_t sub_6E480(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_B7A60();
  sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for ItemContactInfoSetupConfirmationView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1860, &qword_C1D68);
  sub_B75C0();
  swift_getKeyPath();
  sub_72884(&qword_F1840, type metadata accessor for ItemContactInfoSetupConfirmationViewModel, &protocol conformance descriptor for ItemContactInfoSetupConfirmationViewModel);
  sub_B65C0();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEF40, &unk_BD6E0);
  v3 = sub_B68D0();
  v5(v3);
}

uint64_t sub_6E608(uint64_t a1, unsigned __int8 *a2)
{
  v3 = sub_B6B50();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a2;
  sub_B7A60();
  sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (v7)
  {
    sub_64718(v6);
    sub_B6B40();
    (*(v4 + 8))(v6, v3);
  }

  else
  {
  }
}

uint64_t sub_6E788@<X0>(uint64_t a1@<X2>, void (*a3)(void *)@<X4>, BOOL *a4@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEE08, &qword_BD530);
  __chkstk_darwin(v7 - 8);
  v9 = v17 - v8;
  sub_B7A60();
  sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v10 = (a1 + *(type metadata accessor for ItemContactInfoSetupConfirmationView(0) + 20));
  v12 = *v10;
  v11 = v10[1];
  v17[2] = v12;
  v17[3] = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1860, &qword_C1D68);
  v13 = sub_B75C0();
  a3(v13);

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEE00, &unk_BDA40);
  v15 = (*(*(v14 - 8) + 48))(v9, 1, v14) != 1;
  sub_A194(v9, &qword_EEE08, &qword_BD530);

  *a4 = v15;
  return result;
}

uint64_t sub_6E964@<X0>(uint64_t a1@<X0>, void (*a3)(uint64_t)@<X2>, uint64_t a4@<X8>)
{
  v28 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEE00, &unk_BDA40);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v28 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEE08, &qword_BD530);
  __chkstk_darwin(v10 - 8);
  v12 = &v28 - v11;
  sub_B7A60();
  sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v13 = (a1 + *(type metadata accessor for ItemContactInfoSetupConfirmationView(0) + 20));
  v15 = *v13;
  v14 = v13[1];
  v29 = v15;
  v30 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1860, &qword_C1D68);
  v16 = sub_B75C0();
  v28(v16);

  if ((*(v7 + 48))(v12, 1, v6))
  {
    sub_A194(v12, &qword_EEE08, &qword_BD530);
    v17 = 0;
    v18 = 0xE000000000000000;
  }

  else
  {
    (*(v7 + 16))(v9, v12, v6);
    sub_A194(v12, &qword_EEE08, &qword_BD530);
    v17 = sub_B6940();
    v18 = v19;
    (*(v7 + 8))(v9, v6);
  }

  v29 = v17;
  v30 = v18;
  sub_97E8();
  v20 = sub_B7200();
  v22 = v21;
  v24 = v23;
  v26 = v25;

  *a4 = v20;
  *(a4 + 8) = v22;
  *(a4 + 16) = v24 & 1;
  *(a4 + 24) = v26;
  return result;
}

uint64_t sub_6EC20(uint64_t a1, uint64_t a2)
{
  sub_B7A60();
  sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for ItemContactInfoSetupConfirmationView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1860, &qword_C1D68);
  sub_B75C0();
  sub_7493C();
}

uint64_t sub_6ED08@<X0>(uint64_t a1@<X0>, uint64_t a4@<X8>)
{
  sub_B7A60();
  sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *a4 = sub_B6E30();
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0860, &unk_C2200);
  sub_6EDEC(a1, (a4 + *(v6 + 44)));
}

uint64_t sub_6EDEC@<X0>(uint64_t a1@<X0>, uint64_t *a3@<X8>)
{
  v52 = a1;
  v53 = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0868, &unk_BFFB0);
  v56 = *(v3 - 8);
  v57 = v3;
  __chkstk_darwin(v3);
  v50 = (&v48 - v4);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0870, &unk_C2210);
  v5 = *(v49 - 8);
  v6 = __chkstk_darwin(v49);
  v8 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v48 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0878, &unk_BFFC0);
  v12 = __chkstk_darwin(v11 - 8);
  v55 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v58 = &v48 - v14;
  v15 = sub_B62F0();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_B7A60();
  v54 = sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_B6E60();
  if (qword_EEAC8 != -1)
  {
    swift_once();
  }

  v19 = __swift_project_value_buffer(v15, qword_FADB0);
  (*(v16 + 16))(v18, v19, v15);
  v20 = sub_B71B0();
  v22 = v21;
  v51 = v23;
  v25 = v24;
  v26 = (v52 + *(type metadata accessor for ItemContactInfoSetupConfirmationView(0) + 20));
  v28 = *v26;
  v27 = v26[1];
  v60 = v28;
  v61 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1860, &qword_C1D68);
  sub_B75C0();
  v29 = v59;
  swift_getKeyPath();
  v60 = v29;
  sub_72884(&qword_F1840, type metadata accessor for ItemContactInfoSetupConfirmationViewModel, &protocol conformance descriptor for ItemContactInfoSetupConfirmationViewModel);
  sub_B65C0();

  v30 = *(v29 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel__isDisabling);

  v31 = 1;
  if (v30 == 1)
  {
    v52 = v22;
    v32 = v20;
    v33 = v25;
    v34 = v10;
    sub_B6A90();
    v35 = *(v5 + 16);
    v36 = v10;
    v37 = v49;
    v35(v8, v36, v49);
    v38 = v50;
    *v50 = 0;
    *(v38 + 8) = 1;
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0888, &qword_BFFD0);
    v35((v38 + *(v39 + 48)), v8, v37);
    v40 = *(v5 + 8);
    v41 = v34;
    v25 = v33;
    v20 = v32;
    v22 = v52;
    v40(v41, v37);
    v40(v8, v37);
    sub_AB00(v38, v58, &qword_F0868, &unk_BFFB0);
    v31 = 0;
  }

  v42 = v58;
  (*(v56 + 56))(v58, v31, 1, v57);
  v43 = v55;
  sub_A310(v42, v55, &qword_F0878, &unk_BFFC0);
  v44 = v53;
  *v53 = v20;
  v44[1] = v22;
  v45 = v51 & 1;
  *(v44 + 16) = v51 & 1;
  v44[3] = v25;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0880, &unk_C2220);
  sub_A310(v43, v44 + *(v46 + 48), &qword_F0878, &unk_BFFC0);
  sub_41410(v20, v22, v45);

  sub_A194(v42, &qword_F0878, &unk_BFFC0);
  sub_A194(v43, &qword_F0878, &unk_BFFC0);
  sub_9C84(v20, v22, v45);
}

uint64_t sub_6F3E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_B7A60();
  sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = (a4 + *(type metadata accessor for ItemContactInfoSetupConfirmationView(0) + 20));
  v8 = *v6;
  v7 = v6[1];
  v10[0] = v8;
  v10[1] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1860, &qword_C1D68);
  sub_B75C0();
  LOWORD(v10[0]) = -256;
  sub_75E3C(v10);
}

uint64_t sub_6F4D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEE00, &unk_BDA40);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v22 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEE08, &qword_BD530);
  __chkstk_darwin(v8 - 8);
  v10 = v22 - v9;
  sub_B7A60();
  sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v11 = (a1 + *(type metadata accessor for ItemContactInfoSetupConfirmationView(0) + 20));
  v13 = *v11;
  v12 = v11[1];
  v22[0] = v13;
  v22[1] = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1860, &qword_C1D68);
  sub_B75C0();
  sub_749A4(v10);

  if ((*(v5 + 48))(v10, 1, v4))
  {
    sub_A194(v10, &qword_EEE08, &qword_BD530);
    v14 = &_swiftEmptyArrayStorage;
  }

  else
  {
    (*(v5 + 16))(v7, v10, v4);
    sub_A194(v10, &qword_EEE08, &qword_BD530);
    v14 = sub_B6930();
    (*(v5 + 8))(v7, v4);
  }

  v22[0] = v14;
  KeyPath = swift_getKeyPath();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEF30, &qword_C1F50);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEE88, &qword_BD620);
  v18 = sub_A8CC(&qword_EEF38, &qword_EEF30, &qword_C1F50, &protocol conformance descriptor for [A]);
  v19 = sub_A8CC(&qword_EEE80, &qword_EEE88, &qword_BD620, &protocol conformance descriptor for Button<A>);
  sub_B76E0(v22, KeyPath, v21, 0, v16, v17, v18, &protocol witness table for String, v19);
}

uint64_t sub_6F850@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v23[2] = a5;
  v23[3] = a4;
  v23[1] = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEF40, &unk_BD6E0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v23 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEF48, &unk_C01F0);
  __chkstk_darwin(v10 - 8);
  v12 = v23 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEF50, &unk_BD6F0);
  __chkstk_darwin(v13 - 8);
  v15 = v23 - v14;
  sub_B7A60();
  v23[0] = sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v23[4] = sub_B68C0();
  v23[5] = v16;
  sub_B68A0();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F17D0, &unk_BFFA0);
  v18 = *(v17 - 8);
  if ((*(v18 + 48))(v12, 1, v17) == 1)
  {
    sub_A194(v12, &qword_EEF48, &unk_C01F0);
    v19 = sub_B6A00();
    (*(*(v19 - 8) + 56))(v15, 1, 1, v19);
  }

  else
  {
    sub_B6890();
    (*(v18 + 8))(v12, v17);
  }

  (*(v7 + 16))(v9, a1, v6);
  v20 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v21 = swift_allocObject();
  (*(v7 + 32))(v21 + v20, v9, v6);
  sub_97E8();
  sub_B7630();
}

uint64_t sub_6FBAC(uint64_t a1, uint64_t a2)
{
  sub_B7A60();
  sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEF40, &unk_BD6E0);
  v2 = sub_B68D0();
  v4(v2);
}

uint64_t sub_6FC80(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for ItemContactInfoSetupConfirmationView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF458, &qword_BDED0);
  __chkstk_darwin(v7 - 8);
  v9 = &v15 - v8;
  v10 = sub_B7A80();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  sub_728EC(a2, v6, type metadata accessor for ItemContactInfoSetupConfirmationView);
  sub_B7A60();
  v11 = sub_B7A50();
  v12 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = v11;
  *(v13 + 24) = &protocol witness table for MainActor;
  sub_708C8(v6, v13 + v12);
  sub_30A3C(0, 0, v9, &unk_C2050, v13);
}

uint64_t sub_6FE4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  sub_B7A60();
  v4[6] = sub_B7A50();
  v6 = sub_B7A00();
  v4[7] = v6;
  v4[8] = v5;

  return _swift_task_switch(sub_6FEE4, v6, v5);
}

uint64_t sub_6FEE4()
{
  v1 = v0[5];
  v2 = type metadata accessor for ItemContactInfoSetupConfirmationView(0);
  v0[9] = v2;
  v3 = (v1 + *(v2 + 20));
  v5 = *v3;
  v4 = v3[1];
  v0[2] = v5;
  v0[3] = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1860, &qword_C1D68);
  sub_B75C0();
  v0[10] = v0[4];
  v6 = swift_task_alloc();
  v0[11] = v6;
  *v6 = v0;
  v6[1] = sub_6FFBC;

  return sub_75274();
}

uint64_t sub_6FFBC(char a1)
{
  v2 = *v1;
  *(*v1 + 96) = a1;

  v3 = *(v2 + 64);
  v4 = *(v2 + 56);

  return _swift_task_switch(sub_70108, v4, v3);
}

uint64_t sub_70108()
{
  v1 = *(v0 + 96);

  if (v1 == 1)
  {
    v3 = (*(v0 + 40) + *(*(v0 + 72) + 36));
    if (*v3)
    {
      (*v3)(v2);
    }
  }

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_7019C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_72884(&qword_F1840, type metadata accessor for ItemContactInfoSetupConfirmationViewModel, &protocol conformance descriptor for ItemContactInfoSetupConfirmationViewModel);
  sub_B65C0();

  v4 = OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel__lostModeInfo;
  swift_beginAccess();
  return sub_728EC(v3 + v4, a2, type metadata accessor for LostModeInfo);
}

uint64_t sub_70278(uint64_t a1)
{
  v2 = type metadata accessor for LostModeInfo(0);
  __chkstk_darwin(v2 - 8);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_728EC(a1, v4, type metadata accessor for LostModeInfo);
  return sub_7592C(v4);
}

uint64_t sub_70368@<X0>(uint64_t *a1@<X0>, void *a3@<X4>, _BYTE *a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_72884(&qword_F1840, type metadata accessor for ItemContactInfoSetupConfirmationViewModel, &protocol conformance descriptor for ItemContactInfoSetupConfirmationViewModel);
  sub_B65C0();

  *a4 = *(v6 + *a3);
  return result;
}

uint64_t sub_70480@<X0>(uint64_t *a1@<X0>, _WORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_72884(&qword_F1840, type metadata accessor for ItemContactInfoSetupConfirmationViewModel, &protocol conformance descriptor for ItemContactInfoSetupConfirmationViewModel);
  sub_B65C0();

  *a2 = *(v3 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel__destination);
  return result;
}

uint64_t type metadata accessor for ItemContactInfoSetupConfirmationView(uint64_t a1)
{
  result = qword_F1970;
  if (!qword_F1970)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_705D0()
{
  result = qword_F1890;
  if (!qword_F1890)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F1888, &qword_C1DA0);
    sub_70688();
    sub_A8CC(&qword_F0770, &qword_F0748, &qword_BFE70, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F1890);
  }

  return result;
}

unint64_t sub_70688()
{
  result = qword_F1898;
  if (!qword_F1898)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F18A0, &qword_C1DA8);
    sub_A8CC(&qword_F18A8, &qword_F18B0, &qword_C1DB0, &protocol conformance descriptor for Form<A>);
    sub_A8CC(&qword_F0760, &qword_F0768, &qword_BFE78, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F1898);
  }

  return result;
}

unint64_t sub_70814()
{
  result = qword_F18C8;
  if (!qword_F18C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F18C0, &qword_C1E10);
    sub_A8CC(&qword_F18D0, &qword_F18D8, &qword_C1E18, &protocol conformance descriptor for TupleToolbarContent<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F18C8);
  }

  return result;
}

uint64_t sub_708C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ItemContactInfoSetupConfirmationView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_709A4()
{
  result = qword_F18E8;
  if (!qword_F18E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F1850, &qword_C1D58);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F0BB8, &qword_C0468);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F18B8, &qword_C1E08);
    sub_B6850();
    sub_72884(&qword_F0560, &type metadata accessor for OnboardingWelcomeView, &protocol conformance descriptor for OnboardingWelcomeView);
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F18C0, &qword_C1E10);
    sub_70814();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F18E8);
  }

  return result;
}

unint64_t sub_70B3C()
{
  result = qword_F18F0;
  if (!qword_F18F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F18E0, &qword_C1E28);
    sub_70BC0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F18F0);
  }

  return result;
}

unint64_t sub_70BC0()
{
  result = qword_F18F8;
  if (!qword_F18F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F1900, &qword_C1E30);
    sub_70C78();
    sub_A8CC(&qword_EEE80, &qword_EEE88, &qword_BD620, &protocol conformance descriptor for Button<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F18F8);
  }

  return result;
}

unint64_t sub_70C78()
{
  result = qword_F1908;
  if (!qword_F1908)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F1910, &unk_C1E38);
    sub_A8CC(&qword_EEE80, &qword_EEE88, &qword_BD620, &protocol conformance descriptor for Button<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F1908);
  }

  return result;
}

uint64_t sub_70D78(uint64_t a1, unsigned __int8 *a2)
{
  type metadata accessor for ItemContactInfoSetupConfirmationView(0);

  return sub_6E608(a1, a2);
}

uint64_t sub_70E28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEE90, &unk_BD680);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF570, &qword_C1E20);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 28);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_70F78(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEE90, &unk_BD680);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF570, &qword_C1E20);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 28);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void sub_710B4(uint64_t a1)
{
  sub_711E8(319, &qword_EEF00, &type metadata accessor for DismissAction, &type metadata accessor for Environment);
  if (v1 <= 0x3F)
  {
    sub_711E8(319, &qword_F1980, type metadata accessor for ItemContactInfoSetupConfirmationViewModel, &type metadata accessor for State);
    if (v2 <= 0x3F)
    {
      sub_7124C();
      if (v3 <= 0x3F)
      {
        sub_27558(319);
        if (v4 <= 0x3F)
        {
          sub_7129C(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_711E8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_7124C()
{
  if (!qword_F1988)
  {
    v0 = sub_B75F0();
    if (!v1)
    {
      atomic_store(v0, &qword_F1988);
    }
  }
}

void sub_7129C(uint64_t a1)
{
  if (!qword_F1990)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_F1998, ":p");
    v1 = sub_B7BE0();
    if (!v2)
    {
      atomic_store(v1, &qword_F1990);
    }
  }
}

uint64_t sub_71300()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F1858, &qword_C1D60);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F1850, &qword_C1D58);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F18E0, &qword_C1E28);
  sub_709A4();
  sub_70B3C();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t getEnumTagSinglePayload for ItemContactInfoSetupConfirmationView.Style(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ItemContactInfoSetupConfirmationView.Style(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
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

  *(result + 24) = v3;
  return result;
}

uint64_t sub_71454@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for ItemContactInfoSetupConfirmationView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_6D0D8(a1, v6, a2);
}

uint64_t sub_714E8(uint64_t a1)
{
  v3 = *(type metadata accessor for ItemContactInfoSetupConfirmationView(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEF40, &unk_BD6E0) - 8);
  return sub_6E480(v1 + v4, v1 + ((v5 + *(v6 + 80)) & ~*(v6 + 80)), a1);
}

uint64_t objectdestroy_46Tm()
{
  v1 = type metadata accessor for ItemContactInfoSetupConfirmationView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v14 = *(*(v1 - 8) + 64);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEF40, &unk_BD6E0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = *(v5 + 64);
  v8 = v0 + v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEDF8, &unk_BD520);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_B6B50();
    (*(*(v9 - 8) + 8))(v0 + v3, v9);
  }

  else
  {
  }

  v10 = *(v1 + 28);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF570, &qword_C1E20);
  (*(*(v11 - 8) + 8))(v8 + v10, v11);
  if (*(v8 + *(v1 + 36)))
  {
  }

  v12 = (v3 + v14 + v6) & ~v6;
  (*(v5 + 8))(v0 + v12, v4);

  return _swift_deallocObject(v0, v12 + v7, v2 | v6 | 7);
}

uint64_t sub_71808()
{
  v1 = *(type metadata accessor for ItemContactInfoSetupConfirmationView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEF40, &unk_BD6E0);

  return sub_6DFAC(v0 + v2);
}

uint64_t sub_7191C(uint64_t a1)
{
  v4 = *(type metadata accessor for ItemContactInfoSetupConfirmationView(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2184C;

  return sub_6E310(a1, v6, v7, v1 + v5);
}

uint64_t sub_71A0C(uint64_t a1, uint64_t a2)
{
  swift_weakDestroy();

  return _swift_deallocObject(v2, 24, 7);
}

uint64_t sub_71A44()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_71A84(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2184C;

  return sub_77954(a1, v4, v5, v6);
}

unint64_t sub_71B40()
{
  result = qword_F0640;
  if (!qword_F0640)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F0648, &unk_C1FC0);
    sub_415C0();
    sub_72884(&qword_F0670, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F0640);
  }

  return result;
}

uint64_t sub_71C1C(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for ItemContactInfoSetupConfirmationView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_71CB4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1A08, &qword_C2098);
  __chkstk_darwin(v2 - 8);
  sub_A310(a1, &v5 - v3, &qword_F1A08, &qword_C2098);
  return sub_B6D30();
}

uint64_t sub_71D6C(uint64_t a1)
{
  v4 = *(type metadata accessor for ItemContactInfoSetupConfirmationView(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2184C;

  return sub_6C81C(a1, v6, v7, v1 + v5);
}

uint64_t sub_71E74(uint64_t a1)
{
  v3 = *(type metadata accessor for ItemContactInfoSetupConfirmationView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_6FC80(a1, v4);
}

uint64_t sub_71EE8(uint64_t a1)
{
  v4 = *(type metadata accessor for ItemContactInfoSetupConfirmationView(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_F248;

  return sub_6FE4C(a1, v6, v7, v1 + v5);
}

unint64_t sub_72010()
{
  result = qword_F1A60;
  if (!qword_F1A60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F1A58, &qword_C20E8);
    sub_720F4(&qword_F1A68, &qword_F1A70, &qword_C20F0, &opaque type descriptor for <<opaque return type of View.confirmationDialog<A, B>(_:isPresented:titleVisibility:actions:message:)>>);
    sub_720F4(&qword_F1A88, &qword_F1A90, &unk_C2108, &opaque type descriptor for <<opaque return type of View.alert<A, B>(_:isPresented:actions:message:)>>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F1A60);
  }

  return result;
}

uint64_t sub_720F4(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F1A78, &unk_C20F8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_EEE70, &qword_BFEF0);
    sub_A8CC(&qword_F1A80, &qword_F1A78, &unk_C20F8, &protocol conformance descriptor for Button<A>);
    sub_9BD4();
    swift_getOpaqueTypeConformance2();
    sub_A8CC(&qword_EEE48, &qword_EEE50, &qword_BFD40, &protocol conformance descriptor for _EnvironmentKeyTransformModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_72248()
{
  result = qword_F1AA8;
  if (!qword_F1AA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F1A98, &qword_C2118);
    sub_A8CC(&qword_F1AB0, &qword_F1AB8, &qword_C2128, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F1AA8);
  }

  return result;
}

unint64_t sub_72300()
{
  result = qword_F1AC0;
  if (!qword_F1AC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F1AA0, &qword_C2120);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F1AC0);
  }

  return result;
}

unint64_t sub_72384()
{
  result = qword_F1AD0;
  if (!qword_F1AD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F1AC8, &qword_C2130);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F1AD8, &qword_C2138);
    sub_72460();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F1AD0);
  }

  return result;
}

unint64_t sub_72460()
{
  result = qword_F1AE0;
  if (!qword_F1AE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F1AD8, &qword_C2138);
    sub_72518();
    sub_A8CC(&qword_EF628, &qword_EF558, &qword_C2150, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F1AE0);
  }

  return result;
}

unint64_t sub_72518()
{
  result = qword_F1AE8;
  if (!qword_F1AE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F1AF0, &qword_C2140);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F1AF8, &qword_C2148);
    sub_A8CC(&qword_F1B00, &qword_F1AF8, &qword_C2148, &protocol conformance descriptor for TextField<A>);
    swift_getOpaqueTypeConformance2();
    sub_A8CC(&qword_EEE48, &qword_EEE50, &qword_BFD40, &protocol conformance descriptor for _EnvironmentKeyTransformModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F1AE8);
  }

  return result;
}

unint64_t sub_72648()
{
  result = qword_F1B10;
  if (!qword_F1B10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F1B08, &qword_C2158);
    sub_72700();
    sub_A8CC(&qword_EEE48, &qword_EEE50, &qword_BFD40, &protocol conformance descriptor for _EnvironmentKeyTransformModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F1B10);
  }

  return result;
}

unint64_t sub_72700()
{
  result = qword_F1B18;
  if (!qword_F1B18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F1B20, &qword_C2160);
    sub_A8CC(&qword_F1B28, &qword_F1B30, &qword_C2168, &protocol conformance descriptor for Toggle<A>);
    sub_A8CC(&qword_EF628, &qword_EF558, &qword_C2150, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F1B18);
  }

  return result;
}

uint64_t sub_72804(uint64_t *a1, uint64_t *a2)
{
  v5 = *(type metadata accessor for ItemContactInfoSetupConfirmationView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_688D0(a1, a2, v6);
}

uint64_t sub_72884(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_728EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_72954(uint64_t a1)
{
  v2 = type metadata accessor for LostModeInfo(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroyTm_7()
{
  v1 = type metadata accessor for ItemContactInfoSetupConfirmationView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEDF8, &unk_BD520);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_B6B50();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
  }

  v7 = *(v1 + 28);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF570, &qword_C1E20);
  (*(*(v8 - 8) + 8))(v5 + v7, v8);
  if (*(v5 + *(v1 + 36)))
  {
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t objectdestroy_18Tm()
{
  v1 = type metadata accessor for ItemContactInfoSetupConfirmationView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  swift_unknownObjectRelease();
  v5 = v0 + v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEDF8, &unk_BD520);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_B6B50();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
  }

  v7 = *(v1 + 28);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF570, &qword_C1E20);
  (*(*(v8 - 8) + 8))(v5 + v7, v8);
  if (*(v5 + *(v1 + 36)))
  {
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_730C8@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_78BE4(&qword_F1840, &protocol conformance descriptor for ItemContactInfoSetupConfirmationViewModel);
  sub_B65C0();

  v3 = OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel__lostModeInfo;
  swift_beginAccess();
  return sub_7788C(v5 + v3, a1, type metadata accessor for LostModeInfo);
}

uint64_t sub_73218(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_78BE4(&qword_F1840, &protocol conformance descriptor for ItemContactInfoSetupConfirmationViewModel);
  sub_B65C0();

  return *(v2 + *a2);
}

uint64_t sub_732A4(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel__contactInfo) == a1 && *(v2 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel__contactInfo + 8) == a2;
  if (v5 || (sub_B7DD0() & 1) != 0)
  {

    return sub_76EA8(a1, a2);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_78BE4(&qword_F1840, &protocol conformance descriptor for ItemContactInfoSetupConfirmationViewModel);
    sub_B65B0();
  }
}

uint64_t sub_733F8()
{
  swift_getKeyPath();
  sub_78BE4(&qword_F1840, &protocol conformance descriptor for ItemContactInfoSetupConfirmationViewModel);
  sub_B65C0();

  v1 = *(v0 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel__contactInfo);

  return v1;
}

uint64_t sub_734C8()
{
  v1[10] = v0;
  type metadata accessor for LostModeInfo(0);
  v1[11] = swift_task_alloc();
  sub_B7A60();
  v1[12] = sub_B7A50();
  v3 = sub_B7A00();
  v1[13] = v3;
  v1[14] = v2;

  return _swift_task_switch(sub_7358C, v3, v2);
}

uint64_t sub_7358C()
{
  v1 = v0[10];
  v2 = OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel__isSubmitting;
  v0[15] = OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel__isSubmitting;
  if (*(v1 + v2) == 1)
  {
    *(v1 + v2) = 1;
  }

  else
  {
    swift_getKeyPath();
    v3 = swift_task_alloc();
    *(v3 + 16) = v1;
    *(v3 + 24) = 1;
    v0[5] = v1;
    sub_78BE4(&qword_F1840, &protocol conformance descriptor for ItemContactInfoSetupConfirmationViewModel);
    sub_B65B0();
  }

  v5 = v0[10];
  v4 = v0[11];
  v6 = (v5 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel_dependencies);
  v0[16] = *(v5 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel_dependencies + 72);
  v13 = v6[10];
  v0[17] = v6[11];
  v0[18] = v6[13];
  swift_getKeyPath();
  v0[19] = OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel___observationRegistrar;
  v0[6] = v5;
  v0[20] = sub_78BE4(&qword_F1840, &protocol conformance descriptor for ItemContactInfoSetupConfirmationViewModel);

  sub_B65C0();

  v7 = OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel__lostModeInfo;
  swift_beginAccess();
  sub_7788C(v5 + v7, v4, type metadata accessor for LostModeInfo);
  swift_getKeyPath();
  v0[7] = v5;
  sub_B65C0();

  v8 = *(v5 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel__shouldNotifyWhenFound);
  v12 = (v13 + *v13);
  v9 = swift_task_alloc();
  v0[21] = v9;
  *v9 = v0;
  v9[1] = sub_7388C;
  v10 = v0[11];

  return v12(v10, v8);
}

uint64_t sub_7388C()
{
  *(*v1 + 176) = v0;

  if (v0)
  {
    v2 = sub_73B68;
  }

  else
  {
    v2 = sub_739A0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_739A0()
{
  sub_778F4(v0[11], type metadata accessor for LostModeInfo);

  v1 = v0[13];
  v2 = v0[14];

  return _swift_task_switch(sub_73A40, v1, v2);
}

uint64_t sub_73A40()
{
  v1 = v0[15];
  v2 = v0[10];

  if (*(v2 + v1))
  {
    v3 = v0[10];
    swift_getKeyPath();
    v4 = swift_task_alloc();
    *(v4 + 16) = v3;
    *(v4 + 24) = 0;
    v0[9] = v3;
    sub_B65B0();
  }

  else
  {
    *(v0[10] + v0[15]) = 0;
  }

  v5 = v0[1];
  v6 = v0[22] == 0;

  return v5(v6);
}

uint64_t sub_73B68()
{
  sub_778F4(v0[11], type metadata accessor for LostModeInfo);

  v1 = v0[13];
  v2 = v0[14];

  return _swift_task_switch(sub_73C08, v1, v2);
}

uint64_t sub_73C08()
{
  v9 = v0;
  v1 = v0[15];
  v2 = v0[10];

  if (*(v2 + v1))
  {
    v3 = v0[10];
    swift_getKeyPath();
    v4 = swift_task_alloc();
    *(v4 + 16) = v3;
    *(v4 + 24) = 0;
    v0[8] = v3;
    sub_B65B0();
  }

  else
  {
    *(v0[10] + v0[15]) = 0;
  }

  v8[0] = 514;
  sub_75E3C(v8);

  v5 = v0[1];
  v6 = v0[22] == 0;

  return v5(v6);
}

uint64_t sub_73D48@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEF48, &unk_C01F0);
  __chkstk_darwin(v3 - 8);
  v5 = v19 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_F17B0, &qword_BE7D0);
  __chkstk_darwin(v6 - 8);
  v8 = v19 - v7;
  swift_getKeyPath();
  v20 = v1;
  sub_78BE4(&qword_F1840, &protocol conformance descriptor for ItemContactInfoSetupConfirmationViewModel);
  sub_B65C0();

  v9 = *(v1 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel__destination);
  v10 = 1;
  if (v9 >> 8 <= 0xFE && v9 >= 0x200 && (v9 - 1) <= 1u)
  {
    v23 = v9;
    v11 = sub_75F6C();
    v19[1] = v12;
    v19[2] = v11;
    v22 = v9;
    sub_76270();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_F17C0, &qword_C1760);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEF40, &unk_BD6E0);
    *(swift_allocObject() + 16) = xmmword_BDA30;
    if (qword_EEAC8 != -1)
    {
      swift_once();
    }

    v13 = sub_B62F0();
    v14 = __swift_project_value_buffer(v13, qword_FADB0);
    v15 = *(v13 - 8);
    (*(v15 + 16))(v8, v14, v13);
    (*(v15 + 56))(v8, 0, 1, v13);
    sub_B78D0();
    sub_2B630(v8);
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F17D0, &unk_BFFA0);
    (*(*(v16 - 8) + 56))(v5, 1, 1, v16);
    v20 = ItemContactInfoSetupIntroductionViewModel.bind();
    v21 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0A20, &unk_C0200);
    sub_B68B0();
    sub_B6910();
    v10 = 0;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEE00, &unk_BDA40);
  return (*(*(v17 - 8) + 56))(a1, v10, 1, v17);
}