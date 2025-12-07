void sub_1E60323A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0726C8, &qword_1E66094D0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = aBlock - v12;
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v14 = sub_1E65E3B68();
  __swift_project_value_buffer(v14, qword_1EE2EA2A0);
  sub_1E65E3B38();
  v15 = [objc_allocWithZone(MEMORY[0x1E698CCD0]) initWithRequest:a2 bag:*(a3 + OBJC_IVAR____TtC10Blackbeard26EngagementMessagePresenter_bag) presentingViewController:a4];
  v16 = [v15 presentEngagement];

  (*(v11 + 16))(v13, a1, v10);
  v17 = (*(v11 + 80) + 25) & ~*(v11 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = a3;
  *(v18 + 24) = a5;
  (*(v11 + 32))(v18 + v17, v13, v10);
  aBlock[4] = sub_1E6032BF0;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E64453F4;
  aBlock[3] = &block_descriptor_0;
  v19 = _Block_copy(aBlock);

  [v16 addFinishBlock_];
  _Block_release(v19);
}

uint64_t sub_1E6032654(uint64_t a1, void *a2, uint64_t a3, char a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v14 - v8;
  v10 = sub_1E65E60A8();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  *(v11 + 32) = a3;
  *(v11 + 40) = a4;

  sub_1E64B80F8(0, 0, v9, &unk_1E65ED620, v11);

  if (a2)
  {
    v14[1] = a2;
    v12 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0726C8, &qword_1E66094D0);
    return sub_1E65E5FE8();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0726C8, &qword_1E66094D0);
    return sub_1E65E5FF8();
  }
}

uint64_t sub_1E60327CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 40) = a5;
  *(v5 + 16) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1E60327F0, 0, 0);
}

uint64_t sub_1E60327F0()
{
  v1 = EngagementService.resetPlacement.getter();
  *(v0 + 24) = v2;
  v6 = (v1 + *v1);
  v3 = swift_task_alloc();
  *(v0 + 32) = v3;
  *v3 = v0;
  v3[1] = sub_1E60328F8;
  v4 = *(v0 + 40);

  return v6(v4);
}

uint64_t sub_1E60328F8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1E6032A08()
{
  v1 = OBJC_IVAR____TtC10Blackbeard26EngagementMessagePresenter_accountService;
  v2 = type metadata accessor for AccountService();
  (*(v2[-1].Description + 1))(v0 + v1, v2);
  swift_unknownObjectRelease();
  v3 = OBJC_IVAR____TtC10Blackbeard26EngagementMessagePresenter_engagementService;
  v4 = type metadata accessor for EngagementService();
  (*(v4[-1].Description + 1))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC10Blackbeard26EngagementMessagePresenter_metricService;
  v6 = type metadata accessor for MetricService();
  (*(v6[-1].Description + 1))(v0 + v5, v6);
  v7 = OBJC_IVAR____TtC10Blackbeard26EngagementMessagePresenter_serviceSubscriptionService;
  v8 = type metadata accessor for ServiceSubscriptionService();
  (*(v8[-1].Description + 1))(v0 + v7, v8);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

unint64_t sub_1E6032B9C()
{
  result = qword_1ED0735A0;
  if (!qword_1ED0735A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0735A0);
  }

  return result;
}

uint64_t sub_1E6032BF0(uint64_t a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0726C8, &qword_1E66094D0);
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);

  return sub_1E6032654(a1, a2, v5, v6);
}

uint64_t sub_1E6032C84(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1E5DFA78C;

  return sub_1E60327CC(a1, v4, v5, v6, v7);
}

uint64_t sub_1E6032D48(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5DFE6BC;

  return sub_1E6031840(a1, v1);
}

unint64_t sub_1E6032DE4()
{
  result = qword_1ED0723A0;
  if (!qword_1ED0723A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED0723A0);
  }

  return result;
}

uint64_t sub_1E6032E30(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E5DFA78C;

  return sub_1E6031A90(a1);
}

uint64_t sub_1E6032ECC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E6031B2C(a1, v4, v5);
}

uint64_t sub_1E6032F7C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735E0, &qword_1E65ED680);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1E6032FF8()
{
  result = qword_1ED0735F0;
  if (!qword_1ED0735F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0735F0);
  }

  return result;
}

uint64_t PageMetricsRender.primaryData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for PageMetricsRender(0) + 44);

  return sub_1E6033120(v3, a1);
}

uint64_t type metadata accessor for PageMetricsRender(uint64_t a1)
{
  result = qword_1EE2D9C60;
  if (!qword_1EE2D9C60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E6033120(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073600, &qword_1E65ED750);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t PageMetricsRender.secondaryData.getter()
{
  type metadata accessor for PageMetricsRender(0);
}

uint64_t PageMetricsRender.init(isAppLaunch:pageAppearTime:pageEndTime:pageInterruptTime:pageRequestTime:pageUserInteractiveTime:preloadStatus:primaryData:resourceRequestEndTime:resourceRequestOnScreenEndTime:resourceRequestStartTime:secondaryData:isSamplingForced:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, char a7@<W6>, char a8@<W7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, double a12@<D2>, uint64_t a13, uint64_t a14, char a15, uint64_t a16, char a17, uint64_t a18, char a19)
{
  *a9 = a1;
  *(a9 + 8) = a10;
  *(a9 + 16) = a2;
  *(a9 + 24) = a3 & 1;
  *(a9 + 32) = a4;
  *(a9 + 40) = a5 & 1;
  *(a9 + 48) = a11;
  *(a9 + 56) = a6;
  *(a9 + 64) = a7 & 1;
  *(a9 + 65) = a8;
  v21 = type metadata accessor for PageMetricsRender(0);
  result = sub_1E6033358(a13, a9 + v21[11]);
  v23 = a9 + v21[12];
  *v23 = a14;
  *(v23 + 8) = a15 & 1;
  v24 = a9 + v21[13];
  *v24 = a16;
  *(v24 + 8) = a17 & 1;
  *(a9 + v21[14]) = a12;
  *(a9 + v21[15]) = a18;
  *(a9 + v21[16]) = a19;
  return result;
}

uint64_t sub_1E6033358(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073600, &qword_1E65ED750);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t PageMetricsRender.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1E65D9D98();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v42 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073600, &qword_1E65ED750);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v42 - v12;
  if (*v2 != 2)
  {
    sub_1E65E6D48();
  }

  sub_1E65E6D48();
  v14 = *(v2 + 8);
  if (v14 == 0.0)
  {
    v14 = 0.0;
  }

  MEMORY[0x1E694E770](*&v14);
  if (*(v2 + 24) == 1)
  {
    sub_1E65E6D48();
  }

  else
  {
    v15 = *(v2 + 16);
    sub_1E65E6D48();
    if ((v15 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }

    MEMORY[0x1E694E770](v16);
  }

  if (*(v2 + 40) == 1)
  {
    sub_1E65E6D48();
  }

  else
  {
    v17 = *(v2 + 32);
    sub_1E65E6D48();
    if ((v17 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v18 = v17;
    }

    else
    {
      v18 = 0;
    }

    MEMORY[0x1E694E770](v18);
  }

  v19 = *(v2 + 48);
  if (v19 == 0.0)
  {
    v19 = 0.0;
  }

  MEMORY[0x1E694E770](*&v19);
  v20 = *(v2 + 64);
  v45 = a1;
  if (v20 == 1)
  {
    sub_1E65E6D48();
  }

  else
  {
    v21 = *(v2 + 56);
    sub_1E65E6D48();
    if ((v21 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v22 = v21;
    }

    else
    {
      v22 = 0;
    }

    MEMORY[0x1E694E770](v22);
  }

  if (*(v2 + 65) == 4)
  {
    sub_1E65E6D48();
  }

  else
  {
    sub_1E65E6D48();
    sub_1E65DA698();
    sub_1E65E5D78();
  }

  v23 = type metadata accessor for PageMetricsRender(0);
  sub_1E6033120(v2 + v23[11], v13);
  if ((*(v5 + 48))(v13, 1, v4) == 1)
  {
    sub_1E65E6D48();
  }

  else
  {
    (*(v5 + 32))(v10, v13, v4);
    sub_1E65E6D48();
    sub_1E603412C(&qword_1ED073608, MEMORY[0x1E69CC970], MEMORY[0x1E69CC978]);
    sub_1E65E5B48();
    (*(v5 + 8))(v10, v4);
  }

  v24 = (v2 + v23[12]);
  if (*(v24 + 8) == 1)
  {
    sub_1E65E6D48();
  }

  else
  {
    v25 = *v24;
    sub_1E65E6D48();
    if ((v25 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v26 = v25;
    }

    else
    {
      v26 = 0;
    }

    MEMORY[0x1E694E770](v26);
  }

  v27 = (v2 + v23[13]);
  v28 = v8;
  v29 = v5;
  if (*(v27 + 8) == 1)
  {
    sub_1E65E6D48();
  }

  else
  {
    v30 = *v27;
    sub_1E65E6D48();
    if ((v30 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v31 = v30;
    }

    else
    {
      v31 = 0;
    }

    MEMORY[0x1E694E770](v31);
  }

  v32 = *(v2 + v23[14]);
  if (v32 == 0.0)
  {
    v32 = 0.0;
  }

  MEMORY[0x1E694E770](*&v32);
  v43 = v23;
  v44 = v2;
  v33 = *(v2 + v23[15]);
  MEMORY[0x1E694E740](*(v33 + 16));
  v34 = *(v33 + 16);
  if (v34)
  {
    v35 = v28;
    v38 = *(v29 + 16);
    v36 = v29 + 16;
    v37 = v38;
    v39 = v33 + ((*(v36 + 64) + 32) & ~*(v36 + 64));
    v40 = *(v36 + 56);
    do
    {
      v37(v35, v39, v4);
      sub_1E603412C(&qword_1ED073608, MEMORY[0x1E69CC970], MEMORY[0x1E69CC978]);
      sub_1E65E5B48();
      (*(v36 - 8))(v35, v4);
      v39 += v40;
      --v34;
    }

    while (v34);
  }

  if (*(v44 + v43[16]) != 2)
  {
    sub_1E65E6D48();
  }

  return sub_1E65E6D48();
}

uint64_t PageMetricsRender.hashValue.getter()
{
  sub_1E65E6D28();
  PageMetricsRender.hash(into:)(v1);
  return sub_1E65E6D78();
}

uint64_t sub_1E6033900()
{
  sub_1E65E6D28();
  PageMetricsRender.hash(into:)(v1);
  return sub_1E65E6D78();
}

uint64_t sub_1E6033944(uint64_t a1)
{
  sub_1E65E6D28();
  PageMetricsRender.hash(into:)(v2);
  return sub_1E65E6D78();
}

BOOL _s10Blackbeard17PageMetricsRenderV2eeoiySbAC_ACtFZ_0(double *a1, double *a2)
{
  v4 = sub_1E65D9D98();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073600, &qword_1E65ED750);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v42 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073618, &qword_1E65ED828);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v42 - v13;
  v15 = *a1;
  v16 = *a2;
  if (v15 == 2)
  {
    if (v16 != 2)
    {
      return 0;
    }

LABEL_6:
    if (a1[1] != a2[1])
    {
      return 0;
    }

    v17 = *(a2 + 24);
    if (a1[3])
    {
      if (!*(a2 + 24))
      {
        return v17;
      }
    }

    else
    {
      if (a1[2] != a2[2])
      {
        LOBYTE(v17) = 1;
      }

      if (v17)
      {
        return 0;
      }
    }

    v17 = *(a2 + 40);
    if (a1[5])
    {
      if (!*(a2 + 40))
      {
        return v17;
      }
    }

    else
    {
      if (a1[4] != a2[4])
      {
        LOBYTE(v17) = 1;
      }

      if (v17)
      {
        return 0;
      }
    }

    if (a1[6] != a2[6])
    {
      return 0;
    }

    v17 = *(a2 + 64);
    if (a1[8])
    {
      if (!*(a2 + 64))
      {
        return v17;
      }
    }

    else
    {
      if (a1[7] != a2[7])
      {
        LOBYTE(v17) = 1;
      }

      if (v17)
      {
        return 0;
      }
    }

    v18 = *(a2 + 65);
    if (*(a1 + 65) == 4)
    {
      v43 = v12;
      if (v18 != 4)
      {
        return 0;
      }
    }

    else
    {
      if (v18 == 4)
      {
        return 0;
      }

      v43 = v12;
      v19 = sub_1E65DA698();
      v21 = v20;
      if (v19 == sub_1E65DA698() && v21 == v22)
      {
      }

      else
      {
        v23 = sub_1E65E6C18();

        if ((v23 & 1) == 0)
        {
          return 0;
        }
      }
    }

    v42 = type metadata accessor for PageMetricsRender(0);
    v24 = v42[11];
    v25 = *(v43 + 48);
    sub_1E6033120(a1 + v24, v14);
    sub_1E6033120(a2 + v24, &v14[v25]);
    v26 = *(v5 + 48);
    if (v26(v14, 1, v4) == 1)
    {
      if (v26(&v14[v25], 1, v4) == 1)
      {
        sub_1E5DFE50C(v14, &qword_1ED073600, &qword_1E65ED750);
LABEL_43:
        v30 = v42;
        v31 = v42[12];
        v32 = (a1 + v31);
        v33 = *(a1 + v31 + 8);
        v34 = (a2 + v31);
        v17 = *(a2 + v31 + 8);
        if (v33)
        {
          if (!v17)
          {
            return v17;
          }
        }

        else
        {
          if (*v32 != *v34)
          {
            LOBYTE(v17) = 1;
          }

          if (v17)
          {
            return 0;
          }
        }

        v35 = v42[13];
        v36 = (a1 + v35);
        v37 = *(a1 + v35 + 8);
        v38 = (a2 + v35);
        v17 = *(a2 + v35 + 8);
        if (v37)
        {
          if (!v17)
          {
            return v17;
          }
        }

        else
        {
          if (*v36 != *v38)
          {
            LOBYTE(v17) = 1;
          }

          if (v17)
          {
            return 0;
          }
        }

        if (*(a1 + v42[14]) == *(a2 + v42[14]) && (sub_1E61B79D0(*(a1 + v42[15]), *(a2 + v42[15])) & 1) != 0)
        {
          v39 = v30[16];
          v40 = *(a1 + v39);
          v41 = *(a2 + v39);
          if (v40 != 2)
          {
            return v41 != 2 && ((v41 ^ v40) & 1) == 0;
          }

          if (v41 == 2)
          {
            return 1;
          }
        }

        return 0;
      }
    }

    else
    {
      sub_1E6033120(v14, v10);
      if (v26(&v14[v25], 1, v4) != 1)
      {
        (*(v5 + 32))(v7, &v14[v25], v4);
        sub_1E603412C(&qword_1ED073620, MEMORY[0x1E69CC970], MEMORY[0x1E69CC980]);
        v28 = sub_1E65E5B98();
        v29 = *(v5 + 8);
        v29(v7, v4);
        v29(v10, v4);
        sub_1E5DFE50C(v14, &qword_1ED073600, &qword_1E65ED750);
        if ((v28 & 1) == 0)
        {
          return 0;
        }

        goto LABEL_43;
      }

      (*(v5 + 8))(v10, v4);
    }

    sub_1E5DFE50C(v14, &qword_1ED073618, &qword_1E65ED828);
    return 0;
  }

  v17 = 0;
  if (v16 != 2 && ((v16 ^ v15) & 1) == 0)
  {
    goto LABEL_6;
  }

  return v17;
}

void sub_1E6033F30(uint64_t a1)
{
  sub_1E6034080(319, &qword_1EE2D4808, MEMORY[0x1E69E6370]);
  if (v1 <= 0x3F)
  {
    sub_1E6034080(319, &qword_1EE2D4730, MEMORY[0x1E69E63B0]);
    if (v2 <= 0x3F)
    {
      sub_1E6034080(319, &qword_1EE2D6FD0, MEMORY[0x1E69CCEF8]);
      if (v3 <= 0x3F)
      {
        sub_1E60340CC(319, &qword_1EE2D7008, MEMORY[0x1E69E6720]);
        if (v4 <= 0x3F)
        {
          sub_1E60340CC(319, &qword_1EE2D4870, MEMORY[0x1E69E62F8]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1E6034080(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_1E65E6668();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1E60340CC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_1E65D9D98();
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1E603412C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t CanvasLayout<>.transform(with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v67 = a2;
  v64 = a1;
  v79 = a3;
  v3 = sub_1E65DBDD8();
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v71 = v60 - v5;
  v6 = sub_1E65DBF08();
  v77 = *(v6 - 8);
  v78 = v6;
  v7 = MEMORY[0x1EEE9AC00](v6);
  v63 = v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v70 = v60 - v9;
  v10 = sub_1E65E07B8();
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v69 = (v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = MEMORY[0x1EEE9AC00](v11);
  v68 = v60 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v62 = v60 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v74 = (v60 - v18);
  MEMORY[0x1EEE9AC00](v17);
  v66 = v60 - v19;
  v20 = sub_1E65DB948();
  v75 = *(v20 - 8);
  v76 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v22 = v60 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = sub_1E65DC158();
  v23 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73);
  v72 = v60 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1E65DB9F8();
  v26 = MEMORY[0x1EEE9AC00](v25 - 8);
  v65 = v60 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x1EEE9AC00](v26);
  v29 = MEMORY[0x1EEE9AC00](v28);
  v80 = v60 - v30;
  MEMORY[0x1EEE9AC00](v29);
  v32 = v60 - v31;
  v33 = sub_1E65DBB28();
  v34 = MEMORY[0x1EEE9AC00](v33 - 8);
  v35 = MEMORY[0x1EEE9AC00](v34);
  MEMORY[0x1EEE9AC00](v35);
  v37 = v60 - v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072618, qword_1E65FBAF0);
  sub_1E65E0678();
  v61 = sub_1E65E07C8();
  sub_1E65E0708();
  if (v82 > 1u)
  {
    sub_1E65E0708();
    v41 = v81;
    sub_1E65DAE38();
    sub_1E65DAE38();
    if (v41 > 3)
    {
      sub_1E65DBB08();
      sub_1E65E0768();
      v53 = *MEMORY[0x1E699D3E8];
      v74 = *(v23 + 104);
      v55 = v72;
      v54 = v73;
      v74(v72, v53, v73);
      v56 = v76;
      v57 = *(v75 + 104);
      v57(v22, *MEMORY[0x1E699D178], v76);
      sub_1E65DB9E8();
      sub_1E65E0768();
      sub_1E65DBDC8();
      LODWORD(v75) = v61 & 1;
      v58 = MEMORY[0x1E699D340];
      if ((v61 & 1) == 0)
      {
        v58 = MEMORY[0x1E699D348];
      }

      (*(v77 + 104))(v63, *v58, v78);
      v74(v55, *MEMORY[0x1E699D3F0], v54);
      v57(v22, *MEMORY[0x1E699D170], v56);
      sub_1E65DB9E8();
    }

    else
    {
      sub_1E65DBB08();
      v48 = *MEMORY[0x1E699D3E8];
      v69 = *(v23 + 104);
      v50 = v72;
      v49 = v73;
      v69(v72, v48, v73);
      v51 = v76;
      v52 = *(v75 + 104);
      v52(v22, *MEMORY[0x1E699D178], v76);
      sub_1E65DB9E8();
      sub_1E65E0768();
      (*(v77 + 104))(v70, *MEMORY[0x1E699D340], v78);
      v69(v50, *MEMORY[0x1E699D3F0], v49);
      v52(v22, *MEMORY[0x1E699D170], v51);
      sub_1E65DB9E8();
      sub_1E65E0778();
      sub_1E65DBDB8();
    }
  }

  else
  {
    v38 = 0x3FE999999999999ALL;
    sub_1E65E0708();
    if (sub_1E65DB988() == v64 && v39 == v67)
    {
      v40 = v22;
    }

    else
    {
      v40 = v22;
      v42 = sub_1E65E6C18();

      if ((v42 & 1) == 0)
      {
        v38 = 0x3FE3333333333333;
      }
    }

    v69 = v38;
    v60[1] = v37;
    sub_1E65DBB08();
    v43 = *(v23 + 104);
    v45 = v72;
    v44 = v73;
    v43(v72, *MEMORY[0x1E699D408], v73);
    v46 = v76;
    v47 = *(v75 + 104);
    v47(v40, *MEMORY[0x1E699D178], v76);
    v60[0] = v32;
    sub_1E65DB9E8();
    sub_1E65E0768();
    (*(v77 + 104))(v70, *MEMORY[0x1E699D340], v78);
    v43(v45, *MEMORY[0x1E699D3F8], v44);
    v47(v40, *MEMORY[0x1E699D170], v46);
    sub_1E65DB9E8();
    sub_1E65E0778();
    sub_1E65DBDB8();
  }

  return sub_1E65DBBD8();
}

uint64_t sub_1E6034BC0(uint64_t *a1, int *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v8 = (a2 + *a2);
  v5 = *(a1 + 16);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFA78C;

  return v8(v3, v4, v5);
}

uint64_t sub_1E6034CCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v732 = a3;
  v747 = a2;
  *&v754 = a1;
  v753 = a4;
  v744 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073628, &qword_1E65ED890);
  MEMORY[0x1EEE9AC00](v744);
  v745 = &v553 - v4;
  v752 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073630, &qword_1E65ED898);
  MEMORY[0x1EEE9AC00](v752);
  v746 = (&v553 - v5);
  v750 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073638, &qword_1E65ED8A0);
  MEMORY[0x1EEE9AC00](v750);
  v751 = &v553 - v6;
  v686 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073640, &qword_1E65ED8A8);
  MEMORY[0x1EEE9AC00](v686);
  v615 = &v553 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073648, &qword_1E6607560);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v705 = &v553 - v9;
  v682 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073650, &qword_1E65ED8B0);
  MEMORY[0x1EEE9AC00](v682);
  v684 = &v553 - v10;
  v743 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073658, &qword_1E65ED8B8);
  MEMORY[0x1EEE9AC00](v743);
  v687 = &v553 - v11;
  v627 = sub_1E65E5128();
  v626 = *(v627 - 8);
  MEMORY[0x1EEE9AC00](v627);
  v625 = &v553 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1E65E5038();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v621 = &v553 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1E65E5058();
  MEMORY[0x1EEE9AC00](v15 - 8);
  v666 = &v553 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073660, &qword_1E65ED8C0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v622 = &v553 - v18;
  v674 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073668, &qword_1E65ED8C8);
  v617 = *(v674 - 8);
  MEMORY[0x1EEE9AC00](v674);
  v616 = &v553 - v19;
  v675 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073670, &qword_1E65ED8D0);
  v620 = *(v675 - 8);
  MEMORY[0x1EEE9AC00](v675);
  v667 = &v553 - v20;
  v679 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073678, &qword_1E65ED8D8);
  v624 = *(v679 - 8);
  MEMORY[0x1EEE9AC00](v679);
  v623 = &v553 - v21;
  v611 = type metadata accessor for RouteResource(0);
  MEMORY[0x1EEE9AC00](v611);
  v613 = &v553 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v607 = type metadata accessor for RouteSource(0);
  MEMORY[0x1EEE9AC00](v607);
  v609 = &v553 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v608 = type metadata accessor for RouteDestination(0);
  MEMORY[0x1EEE9AC00](v608);
  v610 = (&v553 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v709 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073680, &qword_1E65ED8E0);
  v605 = *(v709 - 8);
  MEMORY[0x1EEE9AC00](v709);
  v604 = &v553 - v25;
  v681 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073688, &qword_1E65ED8E8);
  v612 = *(v681 - 8);
  MEMORY[0x1EEE9AC00](v681);
  v664 = &v553 - v26;
  v685 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073690, &qword_1E65ED8F0);
  v619 = *(v685 - 8);
  MEMORY[0x1EEE9AC00](v685);
  v618 = &v553 - v27;
  v600 = type metadata accessor for GalleryDescriptor(0);
  v592 = *(v600 - 8);
  v28 = MEMORY[0x1EEE9AC00](v600);
  v593 = v29;
  v594 = &v553 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v706 = (&v553 - v30);
  v673 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073698, &qword_1E65ED8F8);
  MEMORY[0x1EEE9AC00](v673);
  v678 = &v553 - v31;
  v724 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0736A0, &qword_1E65ED900);
  MEMORY[0x1EEE9AC00](v724);
  v680 = &v553 - v32;
  v683 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0736A8, &qword_1E65ED908);
  v614 = *(v683 - 8);
  MEMORY[0x1EEE9AC00](v683);
  v665 = &v553 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072330, &qword_1E65EAB70);
  MEMORY[0x1EEE9AC00](v34 - 8);
  v596 = &v553 - v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073570, &unk_1E65F4570);
  MEMORY[0x1EEE9AC00](v36 - 8);
  v595 = &v553 - v37;
  v707 = sub_1E65D8F28();
  v719 = *(v707 - 8);
  v38 = MEMORY[0x1EEE9AC00](v707);
  v660 = &v553 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v704 = &v553 - v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410);
  MEMORY[0x1EEE9AC00](v41 - 8);
  v659 = &v553 - v42;
  v700 = sub_1E65D8C68();
  v699 = *(v700 - 8);
  MEMORY[0x1EEE9AC00](v700);
  v658 = &v553 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073578, &qword_1E65F0E60);
  MEMORY[0x1EEE9AC00](v44 - 8);
  v656 = &v553 - v45;
  v661 = type metadata accessor for PageMetricsClick(0);
  v662 = *(v661 - 8);
  v46 = MEMORY[0x1EEE9AC00](v661);
  v590 = &v553 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = MEMORY[0x1EEE9AC00](v46);
  v708 = &v553 - v49;
  v663 = v50;
  MEMORY[0x1EEE9AC00](v48);
  v606 = &v553 - v51;
  v52 = sub_1E65D7848();
  MEMORY[0x1EEE9AC00](v52 - 8);
  v693 = &v553 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_1E65E5C28();
  MEMORY[0x1EEE9AC00](v54 - 8);
  v691 = &v553 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v676 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0779B0, &qword_1E65ED910);
  v601 = *(v676 - 8);
  MEMORY[0x1EEE9AC00](v676);
  v599 = &v553 - v56;
  v703 = sub_1E65DEC18();
  v718 = *(v703 - 8);
  v57 = MEMORY[0x1EEE9AC00](v703);
  v657 = &v553 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  v588 = v58;
  MEMORY[0x1EEE9AC00](v57);
  v702 = &v553 - v59;
  v717 = sub_1E65D76F8();
  v701 = *(v717 - 8);
  v60 = MEMORY[0x1EEE9AC00](v717);
  v655 = &v553 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  v587 = v61;
  MEMORY[0x1EEE9AC00](v60);
  v698 = &v553 - v62;
  v575 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0736B0, &unk_1E65F8480);
  v584 = *(v575 - 8);
  v63 = MEMORY[0x1EEE9AC00](v575);
  v654 = &v553 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = MEMORY[0x1EEE9AC00](v63);
  v585 = v67;
  v586 = &v553 - v66;
  MEMORY[0x1EEE9AC00](v65);
  v697 = (&v553 - v68);
  v671 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0736B8, &qword_1E65ED918);
  v598 = *(v671 - 8);
  MEMORY[0x1EEE9AC00](v671);
  v597 = &v553 - v69;
  v677 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0736C0, &qword_1E65ED920);
  v603 = *(v677 - 8);
  MEMORY[0x1EEE9AC00](v677);
  v602 = &v553 - v70;
  v720 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0736C8, &qword_1E65ED928);
  MEMORY[0x1EEE9AC00](v720);
  v722 = &v553 - v71;
  v668 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0736D0, &qword_1E65ED930);
  MEMORY[0x1EEE9AC00](v668);
  v670 = &v553 - v72;
  v721 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0736D8, &qword_1E65ED938);
  MEMORY[0x1EEE9AC00](v721);
  v672 = &v553 - v73;
  *&v737 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0736E0, &qword_1E65ED940);
  MEMORY[0x1EEE9AC00](v737);
  v723 = &v553 - v74;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0736E8, &qword_1E65ED948);
  v582 = *(v75 - 8);
  v583 = v75;
  MEMORY[0x1EEE9AC00](v75);
  v580 = &v553 - v76;
  v581 = sub_1E65E1398();
  v579 = *(v581 - 8);
  MEMORY[0x1EEE9AC00](v581);
  v649 = &v553 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_1E65E1298();
  MEMORY[0x1EEE9AC00](v78 - 8);
  v574 = &v553 - ((v79 + 15) & 0xFFFFFFFFFFFFFFF0);
  v647 = sub_1E65E1208();
  v576 = *(v647 - 8);
  MEMORY[0x1EEE9AC00](v647);
  v646 = &v553 - ((v80 + 15) & 0xFFFFFFFFFFFFFFF0);
  v690 = sub_1E65E1168();
  v653 = *(v690 - 8);
  v81 = MEMORY[0x1EEE9AC00](v690);
  v578 = &v553 - ((v82 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = MEMORY[0x1EEE9AC00](v81);
  v652 = &v553 - v84;
  v577 = v85;
  MEMORY[0x1EEE9AC00](v83);
  v689 = &v553 - v86;
  v669 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072788, &qword_1E65EBC00);
  v591 = *(v669 - 8);
  MEMORY[0x1EEE9AC00](v669);
  v589 = &v553 - v87;
  v696 = sub_1E65E1518();
  v695 = *(v696 - 8);
  v88 = MEMORY[0x1EEE9AC00](v696);
  v571 = v89;
  v572 = &v553 - ((v89 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v88);
  v694 = &v553 - v90;
  v748 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0736F0, &qword_1E65ED950);
  v731 = *(v748 - 1);
  MEMORY[0x1EEE9AC00](v748);
  v730 = &v553 - v91;
  v651 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0736F8, &qword_1E65ED958);
  v573 = *(v651 - 8);
  MEMORY[0x1EEE9AC00](v651);
  v642 = &v553 - v92;
  v711 = sub_1E65D74E8();
  v710 = *(v711 - 8);
  v93 = MEMORY[0x1EEE9AC00](v711);
  v564 = v94;
  v565 = &v553 - ((v94 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v93);
  v641 = &v553 - v95;
  v727 = sub_1E65D72D8();
  v726 = *(v727 - 8);
  MEMORY[0x1EEE9AC00](v727);
  v725 = &v553 - ((v96 + 15) & 0xFFFFFFFFFFFFFFF0);
  v640 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073700, &qword_1E65ED960);
  MEMORY[0x1EEE9AC00](v640);
  v643 = &v553 - v97;
  v716 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073708, &qword_1E65ED968);
  MEMORY[0x1EEE9AC00](v716);
  v644 = &v553 - v98;
  v639 = sub_1E65E20D8();
  v568 = *(v639 - 8);
  MEMORY[0x1EEE9AC00](v639);
  v567 = &v553 - ((v99 + 15) & 0xFFFFFFFFFFFFFFF0);
  v645 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073710, &qword_1E65ED970);
  v570 = *(v645 - 8);
  MEMORY[0x1EEE9AC00](v645);
  v569 = &v553 - v100;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073718, &qword_1E65ED978);
  v558 = *(v101 - 8);
  v102 = MEMORY[0x1EEE9AC00](v101 - 8);
  v630 = &v553 - ((v103 + 15) & 0xFFFFFFFFFFFFFFF0);
  v560 = v103;
  MEMORY[0x1EEE9AC00](v102);
  v638 = &v553 - v104;
  v692 = sub_1E65E4018();
  v650 = *(v692 - 8);
  MEMORY[0x1EEE9AC00](v692);
  v648 = &v553 - ((v105 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = type metadata accessor for AppComposer(0);
  v728 = *(v106 - 8);
  v107 = MEMORY[0x1EEE9AC00](v106);
  v563 = &v553 - ((v108 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = MEMORY[0x1EEE9AC00](v107);
  v562 = &v553 - v110;
  v111 = MEMORY[0x1EEE9AC00](v109);
  v561 = &v553 - v112;
  v113 = MEMORY[0x1EEE9AC00](v111);
  v688 = &v553 - v114;
  v115 = MEMORY[0x1EEE9AC00](v113);
  v636 = &v553 - v116;
  v729 = v117;
  MEMORY[0x1EEE9AC00](v115);
  v738 = &v553 - v118;
  v632 = sub_1E65E2298();
  v556 = *(v632 - 8);
  MEMORY[0x1EEE9AC00](v632);
  v555 = &v553 - ((v119 + 15) & 0xFFFFFFFFFFFFFFF0);
  v635 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073720, &qword_1E65ED980);
  v559 = *(v635 - 8);
  MEMORY[0x1EEE9AC00](v635);
  v557 = &v553 - v120;
  v637 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073728, &qword_1E65ED988);
  v566 = *(v637 - 8);
  MEMORY[0x1EEE9AC00](v637);
  v633 = &v553 - v121;
  v739 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073730, &qword_1E65ED990);
  MEMORY[0x1EEE9AC00](v739);
  v741 = &v553 - v122;
  v733 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073738, &qword_1E65ED998);
  MEMORY[0x1EEE9AC00](v733);
  v735 = &v553 - v123;
  v712 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073740, &qword_1E65ED9A0);
  MEMORY[0x1EEE9AC00](v712);
  v714 = &v553 - v124;
  v629 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073748, &qword_1E65ED9A8);
  MEMORY[0x1EEE9AC00](v629);
  v631 = (&v553 - v125);
  v713 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073750, &qword_1E65ED9B0);
  MEMORY[0x1EEE9AC00](v713);
  v634 = &v553 - v126;
  v734 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073758, &qword_1E65ED9B8);
  MEMORY[0x1EEE9AC00](v734);
  v715 = &v553 - v127;
  v740 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073760, &qword_1E65ED9C0);
  MEMORY[0x1EEE9AC00](v740);
  v736 = &v553 - v128;
  v129 = type metadata accessor for ActionButtonDescriptor.Kind(0);
  MEMORY[0x1EEE9AC00](v129);
  v131 = &v553 - ((v130 + 15) & 0xFFFFFFFFFFFFFFF0);
  v749 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073768, &qword_1E65ED9C8);
  MEMORY[0x1EEE9AC00](v749);
  v742 = &v553 - v132;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072638, &qword_1E65EB950);
  MEMORY[0x1EEE9AC00](v133 - 8);
  v135 = &v553 - v134;
  v136 = type metadata accessor for ActionButtonDescriptor(0);
  v137 = *(v136 - 8);
  MEMORY[0x1EEE9AC00](v136);
  v139 = &v553 - ((v138 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E5DFD1CC(v754, v135, &qword_1ED072638, &qword_1E65EB950);
  if ((*(v137 + 48))(v135, 1, v136) != 1)
  {
    v554 = v106;
    v144 = v755;
    sub_1E60484F0(v135, v139, type metadata accessor for ActionButtonDescriptor);
    sub_1E6048734(&v139[*(v136 + 20)], v131, type metadata accessor for ActionButtonDescriptor.Kind);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v628 = v139;
    if (EnumCaseMultiPayload <= 4)
    {
      if (EnumCaseMultiPayload > 1)
      {
        if (EnumCaseMultiPayload != 2)
        {
          if (EnumCaseMultiPayload != 3)
          {
            v335 = *(v695 + 32);
            v730 = (v695 + 32);
            v731 = v335;
            v335(v694, v131, v696);
            (*(v653 + 104))(v689, *MEMORY[0x1E699E768], v690);
            v336 = sub_1E642764C(MEMORY[0x1E69E7CC0]);
            v744 = *v144;
            *&v754 = type metadata accessor for AppComposer;
            v337 = v738;
            sub_1E6048734(v144, v738, type metadata accessor for AppComposer);
            sub_1E5DF650C(v747, &v765);
            v338 = *(v728 + 80);
            v339 = (v338 + 24) & ~v338;
            v340 = v729;
            v341 = (v729 + v339 + 7) & 0xFFFFFFFFFFFFFFF8;
            v342 = swift_allocObject();
            *(v342 + 16) = v336;
            v343 = v342;
            v726 = v342;
            sub_1E60484F0(v337, v342 + v339, type metadata accessor for AppComposer);
            sub_1E5DF599C(&v765, v343 + v341);
            v344 = v636;
            v345 = v754;
            sub_1E6048734(v144, v636, v754);
            v728 = v338;
            v346 = v340 + ((v338 + 16) & ~v338);
            v347 = (v338 + 16) & ~v338;
            v725 = swift_allocObject();
            sub_1E60484F0(v344, &v725[v347], type metadata accessor for AppComposer);
            v348 = v688;
            v349 = v345;
            sub_1E6048734(v144, v688, v345);
            v719 = swift_allocObject();
            sub_1E60484F0(v348, v719 + v347, type metadata accessor for AppComposer);
            v350 = v561;
            sub_1E6048734(v144, v561, v349);
            v718 = swift_allocObject();
            sub_1E60484F0(v350, v718 + v347, type metadata accessor for AppComposer);
            v351 = v562;
            sub_1E6048734(v144, v562, v349);
            v727 = v346;
            v745 = (v338 | 7);
            v352 = swift_allocObject();
            v748 = v347;
            sub_1E60484F0(v351, v352 + v347, type metadata accessor for AppComposer);
            v353 = v563;
            v354 = v349;
            sub_1E6048734(v144, v563, v349);
            v355 = swift_allocObject();
            v746 = type metadata accessor for AppComposer;
            sub_1E60484F0(v353, v355 + v347, type metadata accessor for AppComposer);
            sub_1E65E1288();
            sub_1E65E11F8();
            sub_1E65E1388();
            v356 = v695;
            v357 = v572;
            v358 = v696;
            (*(v695 + 16))(v572, v694, v696);
            v359 = v755;
            v360 = v738;
            sub_1E6048734(v755, v738, v354);
            v361 = (*(v356 + 80) + 16) & ~*(v356 + 80);
            v362 = (v571 + v728 + v361) & ~v728;
            v363 = swift_allocObject();
            (v731)(v363 + v361, v357, v358);
            v364 = v360;
            sub_1E60484F0(v360, v363 + v362, type metadata accessor for AppComposer);
            type metadata accessor for AppFeature(0);
            sub_1E604FBB0(&qword_1EE2DBD90, type metadata accessor for AppFeature, &protocol conformance descriptor for AppFeature);
            v731 = sub_1E604FBB0(&qword_1EE2D6530, MEMORY[0x1E699E7A0], MEMORY[0x1E699E798]);
            v365 = v580;
            sub_1E65E4DE8();
            sub_1E6048734(v359, v364, v754);
            v366 = v732;
            v730 = v732[7];
            v367 = (v727 + 7) & 0xFFFFFFFFFFFFFFF8;
            v729 = v732[9];
            v368 = swift_allocObject();
            sub_1E60484F0(v364, v748 + v368, v746);
            v369 = (v368 + v367);
            v370 = v366[3];
            v369[2] = v366[2];
            v369[3] = v370;
            v369[4] = v366[4];
            v371 = v366[1];
            *v369 = *v366;
            v369[1] = v371;
            swift_unknownObjectRetain();

            v372 = v646;
            v373 = v649;
            v374 = v647;
            v375 = sub_1E65E4F08();

            (*(v582 + 8))(v365, v583);
            (*(v579 + 8))(v373, v581);
            (*(v576 + 8))(v372, v374);
            v376 = v653;
            v377 = *(v653 + 16);
            v378 = v689;
            v379 = v690;
            v377(v652, v689, v690);
            v380 = v738;
            sub_1E6048734(v755, v738, v754);
            sub_1E5DF650C(v747, &v765);
            v381 = swift_allocObject();
            sub_1E60484F0(v380, v748 + v381, v746);
            sub_1E5DF599C(&v765, v381 + v367);
            v382 = v578;
            v383 = v378;
            v384 = v379;
            v377(v578, v383, v379);
            v385 = (*(v376 + 80) + 16) & ~*(v376 + 80);
            v386 = (v577 + v385 + 7) & 0xFFFFFFFFFFFFFFF8;
            v387 = swift_allocObject();
            v388 = v376;
            (*(v376 + 32))(v387 + v385, v382, v384);
            *(v387 + v386) = v375;
            sub_1E65E3878();

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073808, &qword_1E65EDA90);
            sub_1E604FBB0(&qword_1EE2D6048, MEMORY[0x1E699ED90], MEMORY[0x1E699ED88]);
            v389 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED073810, &qword_1E65EDA98);
            OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
            v760 = v389;
            v761 = OpaqueTypeConformance2;
            swift_getOpaqueTypeConformance2();
            v391 = v589;
            sub_1E65E1488();
            (*(v388 + 8))(v689, v690);
            v392 = v591;
            v393 = v669;
            (*(v591 + 16))(v670, v391, v669);
            swift_storeEnumTagMultiPayload();
            sub_1E5FED46C(&qword_1EE2D6500, &qword_1ED072788, &qword_1E65EBC00, MEMORY[0x1E699E850]);
            v394 = sub_1E5FED46C(&qword_1EE2D6860, &qword_1ED0736B8, &qword_1E65ED918, MEMORY[0x1E699CCC8]);
            v395 = sub_1E5FED46C(&qword_1EE2D6870, &unk_1ED0779B0, &qword_1E65ED910, MEMORY[0x1E699CC80]);
            *&v765 = v671;
            *(&v765 + 1) = v676;
            v766 = v394;
            *&v767 = v395;
            swift_getOpaqueTypeConformance2();
            v396 = v672;
            sub_1E65E4138();
            sub_1E5DFD1CC(v396, v722, &qword_1ED0736D8, &qword_1E65ED938);
            swift_storeEnumTagMultiPayload();
            sub_1E603C178();
            sub_1E603C300();
            v397 = v723;
            sub_1E65E4138();
            sub_1E5DFE50C(v396, &qword_1ED0736D8, &qword_1E65ED938);
            sub_1E5DFD1CC(v397, v735, &qword_1ED0736E0, &qword_1E65ED940);
            swift_storeEnumTagMultiPayload();
            sub_1E603BBB8();
            sub_1E603C0EC();
            v398 = v736;
            sub_1E65E4138();
            sub_1E5DFE50C(v397, &qword_1ED0736E0, &qword_1E65ED940);
            sub_1E5DFD1CC(v398, v741, &qword_1ED073760, &qword_1E65ED9C0);
            swift_storeEnumTagMultiPayload();
            sub_1E603BB2C();
            sub_1E603C628();
            v174 = v742;
            sub_1E65E4138();
            sub_1E5DFE50C(v398, &qword_1ED073760, &qword_1E65ED9C0);
            (*(v392 + 8))(v391, v393);
            (*(v695 + 8))(v694, v696);
            goto LABEL_39;
          }

          v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073818, &unk_1E6607980);
          v147 = &v131[*(v146 + 48)];
          v148 = v147[1];
          v755 = *v147;
          v149 = *(v146 + 64);
          (*(v726 + 32))();
          v150 = v710;
          v151 = *(v710 + 32);
          v152 = &v131[v149];
          v153 = v641;
          v154 = v711;
          v151(v641, v152, v711);
          sub_1E5DF650C(v747, &v765);
          v155 = v565;
          (*(v150 + 16))(v565, v153, v154);
          v156 = (*(v150 + 80) + 72) & ~*(v150 + 80);
          v157 = swift_allocObject();
          sub_1E5DF599C(&v765, v157 + 16);
          *(v157 + 56) = v755;
          *(v157 + 64) = v148;
          v158 = (v151)(v157 + v156, v155, v154);
          MEMORY[0x1EEE9AC00](v158);
          v159 = v730;
          sub_1E65E4AA8();
          sub_1E65E4B58();
          v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073770, &qword_1E65ED9D0);
          v161 = sub_1E5FED46C(&qword_1EE2D4B90, &qword_1ED0736F0, &qword_1E65ED950, MEMORY[0x1E697D680]);
          v162 = sub_1E603C008();
          v163 = MEMORY[0x1E6981CD8];
          v164 = v642;
          v165 = v748;
          sub_1E65E4938();
          (*(v731 + 8))(v159, v165);
          v166 = v573;
          v167 = v164;
          v168 = v651;
          (*(v573 + 16))(v643, v167, v651);
          swift_storeEnumTagMultiPayload();
          v169 = sub_1E604FBB0(&unk_1EE2D6290, MEMORY[0x1E699F1F0], MEMORY[0x1E699F1E8]);
          v170 = sub_1E603BE04();
          *&v765 = v639;
          *(&v765 + 1) = &type metadata for BuildPlanButtonStyle;
          v766 = v169;
          *&v767 = v170;
          swift_getOpaqueTypeConformance2();
          *&v765 = v165;
          *(&v765 + 1) = v163;
          v766 = v160;
          *&v767 = v161;
          *(&v767 + 1) = MEMORY[0x1E6981CD0];
          v768 = v162;
          swift_getOpaqueTypeConformance2();
          v171 = v644;
          sub_1E65E4138();
          sub_1E5DFD1CC(v171, v714, &qword_1ED073708, &qword_1E65ED968);
          swift_storeEnumTagMultiPayload();
          sub_1E603BC44();
          sub_1E603BE58();
          v172 = v715;
          sub_1E65E4138();
          sub_1E5DFE50C(v171, &qword_1ED073708, &qword_1E65ED968);
          sub_1E5DFD1CC(v172, v735, &qword_1ED073758, &qword_1E65ED9B8);
          swift_storeEnumTagMultiPayload();
          sub_1E603BBB8();
          sub_1E603C0EC();
          v173 = v736;
          sub_1E65E4138();
          sub_1E5DFE50C(v172, &qword_1ED073758, &qword_1E65ED9B8);
          sub_1E5DFD1CC(v173, v741, &qword_1ED073760, &qword_1E65ED9C0);
          swift_storeEnumTagMultiPayload();
          sub_1E603BB2C();
          sub_1E603C628();
          v174 = v742;
          sub_1E65E4138();
          sub_1E5DFE50C(v173, &qword_1ED073760, &qword_1E65ED9C0);
          (*(v166 + 8))(v642, v168);
          (*(v710 + 8))(v641, v711);
          goto LABEL_25;
        }

        v249 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073820, &qword_1E65EDAA0);
        *&v754 = *&v131[v249[12]];
        v250 = &v131[v249[16]];
        v252 = *v250;
        v251 = v250[1];
        v744 = v252;
        v731 = v251;
        v253 = &v131[v249[20]];
        v255 = *v253;
        v254 = *(v253 + 1);
        v746 = v255;
        v745 = v254;
        v256 = v131;
        v257 = v638;
        sub_1E5FAB460(v256, v638, &qword_1ED073718, &qword_1E65ED978);
        sub_1E6048734(v144, v738, type metadata accessor for AppComposer);
        sub_1E5DF650C(v747, &v765);
        sub_1E5DFD1CC(v257, v630, &qword_1ED073718, &qword_1E65ED978);
        v258 = v732;
        v725 = *v732;
        v726 = v732[3];
        v727 = v732[5];
        v730 = v732[7];
        v747 = v732[9];
        v259 = (*(v728 + 80) + 16) & ~*(v728 + 80);
        v260 = (v729 + v259 + 7) & 0xFFFFFFFFFFFFFFF8;
        v261 = (v260 + 47) & 0xFFFFFFFFFFFFFFF8;
        v262 = (*(v558 + 80) + v261 + 16) & ~*(v558 + 80);
        v263 = (v560 + v262 + 7) & 0xFFFFFFFFFFFFFFF8;
        v264 = (v263 + 15) & 0xFFFFFFFFFFFFFFF8;
        v265 = swift_allocObject();
        sub_1E60484F0(v738, v265 + v259, type metadata accessor for AppComposer);
        sub_1E5DF599C(&v765, v265 + v260);
        v266 = (v265 + v261);
        v267 = v731;
        *v266 = v744;
        v266[1] = v267;
        sub_1E5FAB460(v630, v265 + v262, &qword_1ED073718, &qword_1E65ED978);
        *(v265 + v263) = v754;
        v268 = (v265 + v264);
        v269 = v745;
        *v268 = v746;
        v268[1] = v269;
        v270 = (v265 + ((v264 + 23) & 0xFFFFFFFFFFFFFFF8));
        v271 = v258[3];
        v270[2] = v258[2];
        v270[3] = v271;
        v270[4] = v258[4];
        v272 = v258[1];
        *v270 = *v258;
        v270[1] = v272;
        swift_unknownObjectRetain();

        v273 = v567;
        sub_1E65E20C8();
        v274 = *(v755 + *(v554 + 20) + 8);
        LOBYTE(v765) = 2;
        BYTE1(v765) = v274;
        v275 = sub_1E604FBB0(&unk_1EE2D6290, MEMORY[0x1E699F1F0], MEMORY[0x1E699F1E8]);
        v276 = sub_1E603BE04();
        v277 = v569;
        v278 = v639;
        sub_1E65E47E8();
        (*(v568 + 8))(v273, v278);
        v279 = v570;
        v280 = v645;
        (*(v570 + 16))(v643, v277, v645);
        swift_storeEnumTagMultiPayload();
        *&v765 = v278;
        *(&v765 + 1) = &type metadata for BuildPlanButtonStyle;
        v766 = v275;
        *&v767 = v276;
        swift_getOpaqueTypeConformance2();
        v281 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED073770, &qword_1E65ED9D0);
        v282 = sub_1E5FED46C(&qword_1EE2D4B90, &qword_1ED0736F0, &qword_1E65ED950, MEMORY[0x1E697D680]);
        v283 = sub_1E603C008();
        *&v765 = v748;
        *(&v765 + 1) = MEMORY[0x1E6981CD8];
        v766 = v281;
        *&v767 = v282;
        *(&v767 + 1) = MEMORY[0x1E6981CD0];
        v768 = v283;
        swift_getOpaqueTypeConformance2();
        v284 = v644;
        sub_1E65E4138();
        sub_1E5DFD1CC(v284, v714, &qword_1ED073708, &qword_1E65ED968);
        swift_storeEnumTagMultiPayload();
        sub_1E603BC44();
        sub_1E603BE58();
        v285 = v715;
        sub_1E65E4138();
        sub_1E5DFE50C(v284, &qword_1ED073708, &qword_1E65ED968);
        sub_1E5DFD1CC(v285, v735, &qword_1ED073758, &qword_1E65ED9B8);
        swift_storeEnumTagMultiPayload();
        sub_1E603BBB8();
        sub_1E603C0EC();
        v286 = v736;
        sub_1E65E4138();
        sub_1E5DFE50C(v285, &qword_1ED073758, &qword_1E65ED9B8);
        sub_1E5DFD1CC(v286, v741, &qword_1ED073760, &qword_1E65ED9C0);
        swift_storeEnumTagMultiPayload();
        sub_1E603BB2C();
        sub_1E603C628();
        v174 = v742;
        sub_1E65E4138();
        sub_1E5DFE50C(v286, &qword_1ED073760, &qword_1E65ED9C0);
        (*(v279 + 8))(v277, v280);
        v287 = v638;
        v288 = &qword_1ED073718;
        v289 = &qword_1E65ED978;
LABEL_28:
        sub_1E5DFE50C(v287, v288, v289);
        goto LABEL_39;
      }

      if (!EnumCaseMultiPayload)
      {
        v230 = *v131;
        v231 = *(v131 + 1);
        sub_1E6049490();
        if (!sub_1E63E9F24(v230, v231))
        {
          v232 = [objc_opt_self() grayColor];
        }

        v233 = v751;
        v234 = sub_1E65E4968();
        v235 = v631;
        *v631 = v234;
        v755 = v234;
        *(v235 + 4) = 256;
        swift_storeEnumTagMultiPayload();

        *&v754 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072790, &unk_1E65FA590);
        sub_1E5FED46C(qword_1EE2D4F50, &qword_1ED072790, &unk_1E65FA590, MEMORY[0x1E697DB78]);
        v236 = sub_1E604FBB0(&qword_1EE2D6268, MEMORY[0x1E699F258], MEMORY[0x1E699F250]);
        v237 = sub_1E604FBB0(&qword_1EE2D4D98, MEMORY[0x1E697C5D0], MEMORY[0x1E697C5C8]);
        *&v765 = v632;
        *(&v765 + 1) = v692;
        v766 = v236;
        *&v767 = v237;
        v238 = swift_getOpaqueTypeConformance2();
        v239 = sub_1E603BE04();
        *&v765 = v635;
        *(&v765 + 1) = &type metadata for BuildPlanButtonStyle;
        v766 = v238;
        *&v767 = v239;
        swift_getOpaqueTypeConformance2();
        v240 = v634;
        sub_1E65E4138();
        sub_1E5DFD1CC(v240, v714, &qword_1ED073750, &qword_1E65ED9B0);
        swift_storeEnumTagMultiPayload();
        sub_1E603BC44();
        sub_1E603BE58();
        v241 = v715;
        sub_1E65E4138();
        sub_1E5DFE50C(v240, &qword_1ED073750, &qword_1E65ED9B0);
        sub_1E5DFD1CC(v241, v735, &qword_1ED073758, &qword_1E65ED9B8);
        swift_storeEnumTagMultiPayload();
        sub_1E603BBB8();
        sub_1E603C0EC();
        v242 = v736;
        sub_1E65E4138();
        sub_1E5DFE50C(v241, &qword_1ED073758, &qword_1E65ED9B8);
        sub_1E5DFD1CC(v242, v741, &qword_1ED073760, &qword_1E65ED9C0);
        swift_storeEnumTagMultiPayload();
        sub_1E603BB2C();
        sub_1E603C628();
        v174 = v742;
        sub_1E65E4138();

        sub_1E5DFE50C(v242, &qword_1ED073760, &qword_1E65ED9C0);
        goto LABEL_40;
      }

      LODWORD(v754) = *v131;
      v420 = *(v131 + 2);
      v744 = *(v131 + 1);
      v421 = v738;
      sub_1E6048734(v144, v738, type metadata accessor for AppComposer);
      sub_1E5DF650C(v747, &v765);
      v422 = v732;
      v745 = v732[3];
      v746 = v732[5];
      v747 = v732[7];
      v748 = v732[9];
      v423 = (*(v728 + 80) + 16) & ~*(v728 + 80);
      v424 = (v729 + v423 + 7) & 0xFFFFFFFFFFFFFFF8;
      v425 = (v424 + 47) & 0xFFFFFFFFFFFFFFF8;
      v426 = swift_allocObject();
      sub_1E60484F0(v421, v426 + v423, type metadata accessor for AppComposer);
      sub_1E5DF599C(&v765, v426 + v424);
      v427 = (v426 + v425);
      *v427 = v744;
      v427[1] = v420;
      v428 = (v426 + ((v425 + 23) & 0xFFFFFFFFFFFFFFF8));
      v429 = v422[4];
      v428[3] = v422[3];
      v428[4] = v429;
      v430 = v422[2];
      v428[1] = v422[1];
      v428[2] = v430;
      *v428 = *v422;
      swift_unknownObjectRetain();

      v431 = v555;
      sub_1E65E2288();
      v432 = v648;
      sub_1E65E4008();
      v433 = sub_1E604FBB0(&qword_1EE2D6268, MEMORY[0x1E699F258], MEMORY[0x1E699F250]);
      v434 = sub_1E604FBB0(&qword_1EE2D4D98, MEMORY[0x1E697C5D0], MEMORY[0x1E697C5C8]);
      v435 = v557;
      v436 = v632;
      v437 = v692;
      sub_1E65E47D8();
      (*(v650 + 8))(v432, v437);
      (*(v556 + 8))(v431, v436);
      v438 = *(v755 + *(v554 + 20) + 8);
      LOBYTE(v760) = v754;
      BYTE1(v760) = v438;
      *&v765 = v436;
      *(&v765 + 1) = v437;
      v766 = v433;
      *&v767 = v434;
      v439 = swift_getOpaqueTypeConformance2();
      v440 = sub_1E603BE04();
      v441 = v633;
      v442 = v635;
      sub_1E65E47E8();
      (*(v559 + 8))(v435, v442);
      v443 = v566;
      v444 = v637;
      (*(v566 + 16))(v631, v441, v637);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072790, &unk_1E65FA590);
      sub_1E5FED46C(qword_1EE2D4F50, &qword_1ED072790, &unk_1E65FA590, MEMORY[0x1E697DB78]);
      *&v765 = v442;
      *(&v765 + 1) = &type metadata for BuildPlanButtonStyle;
      v766 = v439;
      *&v767 = v440;
      swift_getOpaqueTypeConformance2();
      v445 = v634;
      sub_1E65E4138();
      sub_1E5DFD1CC(v445, v714, &qword_1ED073750, &qword_1E65ED9B0);
      swift_storeEnumTagMultiPayload();
      sub_1E603BC44();
      sub_1E603BE58();
      v446 = v715;
      sub_1E65E4138();
      sub_1E5DFE50C(v445, &qword_1ED073750, &qword_1E65ED9B0);
      sub_1E5DFD1CC(v446, v735, &qword_1ED073758, &qword_1E65ED9B8);
      swift_storeEnumTagMultiPayload();
      sub_1E603BBB8();
      sub_1E603C0EC();
      v447 = v736;
      sub_1E65E4138();
      sub_1E5DFE50C(v446, &qword_1ED073758, &qword_1E65ED9B8);
      sub_1E5DFD1CC(v447, v741, &qword_1ED073760, &qword_1E65ED9C0);
      swift_storeEnumTagMultiPayload();
      sub_1E603BB2C();
      sub_1E603C628();
      v174 = v742;
      sub_1E65E4138();
      sub_1E5DFE50C(v447, &qword_1ED073760, &qword_1E65ED9C0);
      (*(v443 + 8))(v633, v444);
      goto LABEL_39;
    }

    v176 = v554;
    if (EnumCaseMultiPayload > 6)
    {
      if (EnumCaseMultiPayload == 7)
      {
        v290 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0737A8, &qword_1E65EDA28) + 48);
        (*(v726 + 32))(v725, v131, v727);
        *&v754 = type metadata accessor for GalleryDescriptor;
        v291 = v706;
        sub_1E60484F0(&v131[v290], v706, type metadata accessor for GalleryDescriptor);
        sub_1E65E5BA8();
        type metadata accessor for LocalizationBundle();
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v293 = [objc_opt_self() bundleForClass_];
        swift_getKeyPath();
        sub_1E65E4EC8();

        v294 = sub_1E65E5D48();
        v296 = v295;
        v297 = v594;
        sub_1E6048734(v291, v594, type metadata accessor for GalleryDescriptor);
        v298 = v732;
        v730 = *v732;
        v731 = v732[3];
        v744 = v732[5];
        v745 = v732[7];
        v746 = v732[9];
        sub_1E6048734(v144, v738, type metadata accessor for AppComposer);
        sub_1E5DF650C(v747, &v765);
        v299 = (*(v592 + 80) + 32) & ~*(v592 + 80);
        v300 = (v593 + v299 + 7) & 0xFFFFFFFFFFFFFFF8;
        v301 = (*(v728 + 80) + v300 + 80) & ~*(v728 + 80);
        v302 = (v729 + v301 + 7) & 0xFFFFFFFFFFFFFFF8;
        v303 = swift_allocObject();
        *(v303 + 16) = v294;
        *(v303 + 24) = v296;
        sub_1E60484F0(v297, v303 + v299, v754);
        v304 = (v303 + v300);
        v305 = v298[3];
        v304[2] = v298[2];
        v304[3] = v305;
        v304[4] = v298[4];
        v306 = v298[1];
        *v304 = *v298;
        v304[1] = v306;
        sub_1E60484F0(v738, v303 + v301, type metadata accessor for AppComposer);
        v307 = sub_1E5DF599C(&v765, v303 + v302);
        MEMORY[0x1EEE9AC00](v307);

        swift_unknownObjectRetain();

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0737B0, &qword_1E65EDA30);
        sub_1E6048670();
        v308 = v604;
        sub_1E65E4AA8();

        sub_1E65E4B58();
        v747 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073780, &qword_1E65ED9D8);
        v755 = MEMORY[0x1E697D680];
        v746 = sub_1E5FED46C(&qword_1EE2D4B80, &qword_1ED073680, &qword_1E65ED8E0, MEMORY[0x1E697D680]);
        *&v754 = sub_1E603C544();
        v309 = v709;
        sub_1E65E4938();
        (*(v605 + 8))(v308, v309);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072B20, &qword_1E6609840);
        v310 = swift_allocObject();
        *(v310 + 16) = xmmword_1E65EB9E0;
        *(v310 + 32) = 0x6C6C4120776F6853;
        *(v310 + 40) = 0xE800000000000000;
        v311 = v706;
        v313 = *v706;
        v312 = v706[1];
        LOBYTE(v298) = sub_1E65DFFF8();
        LOBYTE(v296) = *(v311 + 17);
        v314 = *(v600 + 28);
        v315 = v609;
        swift_storeEnumTagMultiPayload();
        v316 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077AE0, &unk_1E65EA7B0) + 80);
        v317 = v610;
        *v610 = v313;
        *(v317 + 8) = v312;
        *(v317 + 16) = v298 & 1;
        *(v317 + 17) = v296;
        (*(v726 + 16))(v317 + v316, v311 + v314, v727);
        swift_storeEnumTagMultiPayload();
        v318 = v608;
        sub_1E6048734(v315, v317 + *(v608 + 20), type metadata accessor for RouteSource);

        sub_1E604879C(v315, type metadata accessor for RouteSource);
        *(v317 + *(v318 + 24)) = MEMORY[0x1E69E7CD0];
        v319 = v613;
        sub_1E6048734(v317, v613, type metadata accessor for RouteResource);
        sub_1E604879C(v317, type metadata accessor for RouteDestination);
        v320 = sub_1E64802E0();
        v322 = v321;
        sub_1E604879C(v319, type metadata accessor for RouteResource);
        *(v310 + 48) = v320;
        *(v310 + 56) = v322;
        *&v765 = v709;
        *(&v765 + 1) = MEMORY[0x1E6981CD8];
        v766 = v747;
        *&v767 = v746;
        *(&v767 + 1) = MEMORY[0x1E6981CD0];
        v768 = v754;
        v323 = swift_getOpaqueTypeConformance2();
        v324 = v618;
        v325 = v681;
        v326 = v664;
        sub_1E65E4708();

        (*(v612 + 8))(v326, v325);
        v327 = v619;
        v328 = v324;
        v329 = v685;
        (*(v619 + 16))(v678, v324, v685);
        swift_storeEnumTagMultiPayload();
        v330 = sub_1E5FED46C(&qword_1EE2D4B90, &qword_1ED0736F0, &qword_1E65ED950, v755);
        v331 = sub_1E603C4F0();
        *&v765 = v748;
        *(&v765 + 1) = &type metadata for ViewCatalogItemButtonStyle;
        v766 = v330;
        *&v767 = v331;
        swift_getOpaqueTypeConformance2();
        *&v765 = v325;
        *(&v765 + 1) = v323;
        swift_getOpaqueTypeConformance2();
        v332 = v680;
        sub_1E65E4138();
        sub_1E5DFD1CC(v332, v722, &qword_1ED0736A0, &qword_1E65ED900);
        swift_storeEnumTagMultiPayload();
        sub_1E603C178();
        sub_1E603C300();
        v333 = v723;
        sub_1E65E4138();
        sub_1E5DFE50C(v332, &qword_1ED0736A0, &qword_1E65ED900);
        sub_1E5DFD1CC(v333, v735, &qword_1ED0736E0, &qword_1E65ED940);
        swift_storeEnumTagMultiPayload();
        sub_1E603BBB8();
        sub_1E603C0EC();
        v334 = v736;
        sub_1E65E4138();
        sub_1E5DFE50C(v333, &qword_1ED0736E0, &qword_1E65ED940);
        sub_1E5DFD1CC(v334, v741, &qword_1ED073760, &qword_1E65ED9C0);
        swift_storeEnumTagMultiPayload();
        sub_1E603BB2C();
        sub_1E603C628();
        v174 = v742;
        sub_1E65E4138();
        sub_1E5DFE50C(v334, &qword_1ED073760, &qword_1E65ED9C0);
        (*(v327 + 8))(v328, v329);
        sub_1E604879C(v706, type metadata accessor for GalleryDescriptor);
LABEL_25:
        (*(v726 + 8))(v725, v727);
        goto LABEL_39;
      }

      if (EnumCaseMultiPayload != 8)
      {
        v399 = &v131[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073788, &unk_1E6607970) + 48)];
        v401 = *v399;
        v400 = *(v399 + 1);
        v746 = v401;
        v745 = v400;
        sub_1E5FAB460(v131, v705, &qword_1ED073648, &qword_1E6607560);
        v402 = v732;
        v403 = v732[2];
        v404 = v732[5];
        v405 = v732[8];
        v748 = v732[7];
        v744 = v405;
        v406 = v732[9];
        v407 = v738;
        sub_1E6048734(v144, v738, type metadata accessor for AppComposer);
        v408 = (*(v728 + 80) + 96) & ~*(v728 + 80);
        v409 = (v729 + v408 + 7) & 0xFFFFFFFFFFFFFFF8;
        v410 = swift_allocObject();
        v737 = *v402;
        v411 = (v410 + v409);
        v754 = *(v402 + 24);
        v412 = v402[3];
        v410[3] = v402[2];
        v410[4] = v412;
        v410[5] = v402[4];
        v413 = v402[1];
        v410[1] = *v402;
        v410[2] = v413;
        sub_1E60484F0(v407, v410 + v408, type metadata accessor for AppComposer);
        v414 = v745;
        *v411 = v746;
        v411[1] = v414;
        v765 = v737;
        v766 = v403;
        v767 = v754;
        v768 = v404;
        v769 = &unk_1E65ED9E8;
        v770 = v410;
        v771 = v744;
        v772 = v406;
        swift_unknownObjectRetain_n();
        swift_retain_n();
        swift_retain_n();
        swift_retain_n();

        v415 = v615;
        sub_1E6042DDC(v705, v628, v747, &v765, v615);

        swift_unknownObjectRelease();
        sub_1E5DFD1CC(v415, v684, &qword_1ED073640, &qword_1E65ED8A8);
        swift_storeEnumTagMultiPayload();
        v416 = sub_1E5FED46C(&qword_1EE2D4B88, &qword_1ED073668, &qword_1E65ED8C8, MEMORY[0x1E697D680]);
        v417 = sub_1E603C7A8();
        v760 = v674;
        v761 = &type metadata for ViewPlanButtonStyle;
        v762 = v416;
        v763 = v417;
        v418 = swift_getOpaqueTypeConformance2();
        v760 = v675;
        v761 = v418;
        swift_getOpaqueTypeConformance2();
        sub_1E5FED46C(qword_1EE2D7530, &qword_1ED073640, &qword_1E65ED8A8, &unk_1E65FE7C0);
        v419 = v687;
        sub_1E65E4138();
        sub_1E5DFD1CC(v419, v741, &qword_1ED073658, &qword_1E65ED8B8);
        swift_storeEnumTagMultiPayload();
        sub_1E603BB2C();
        sub_1E603C628();
        v174 = v742;
        sub_1E65E4138();
        sub_1E5DFE50C(v419, &qword_1ED073658, &qword_1E65ED8B8);
        sub_1E5DFE50C(v415, &qword_1ED073640, &qword_1E65ED8A8);
        v287 = v705;
        v288 = &qword_1ED073648;
        v289 = &qword_1E6607560;
        goto LABEL_28;
      }

      LODWORD(v745) = *v131;
      sub_1E65E5BA8();
      type metadata accessor for LocalizationBundle();
      v177 = swift_getObjCClassFromMetadata();
      v178 = [objc_opt_self() bundleForClass_];
      swift_getKeyPath();
      sub_1E65E4EC8();

      v746 = sub_1E65E5D48();
      v180 = v179;
      v181 = sub_1E65D9D78();
      v182 = v708;
      (*(*(v181 - 8) + 56))(v708, 1, 1, v181);
      v183 = v661;
      (*(v699 + 104))(v182 + *(v661 + 20), *MEMORY[0x1E69CBAA0], v700);
      (*(v710 + 56))(v182 + v183[6], 1, 1, v711);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072E58, &qword_1E65F0E90);
      sub_1E65D86A8();
      v184 = swift_allocObject();
      *(v184 + 16) = xmmword_1E65EA670;
      *&v737 = _s10Blackbeard20MetricIdentifierTypeO8rawValueSSvg_0();
      v736 = v185;
      v186 = *MEMORY[0x1E69CBCC8];
      v187 = v719 + 104;
      v748 = *(v719 + 104);
      LODWORD(v738) = v186;
      v188 = v707;
      (v748)(v704, v186, v707);
      v744 = v187;
      *&v754 = v180;

      sub_1E6427498(MEMORY[0x1E69E7CC0]);
      sub_1E65D8678();
      v189 = v183[8];
      v190 = sub_1E65DA208();
      (*(*(v190 - 8) + 56))(v182 + v189, 1, 1, v190);
      (v748)(v182 + v183[14], v186, v188);
      v191 = v183[15];
      v192 = *MEMORY[0x1E69CC448];
      v193 = sub_1E65D9908();
      v194 = *(v193 - 8);
      (*(v194 + 104))(v182 + v191, v192, v193);
      (*(v194 + 56))(v182 + v191, 0, 1, v193);
      v195 = sub_1E6427784(MEMORY[0x1E69E7CC0]);
      *(v182 + v183[7]) = v184;
      v196 = (v182 + v183[9]);
      *v196 = 0;
      v196[1] = 0;
      v197 = (v182 + v183[10]);
      *v197 = 0;
      v197[1] = 0;
      *(v182 + v183[11]) = v195;
      v198 = (v182 + v183[12]);
      *v198 = 0;
      v198[1] = 0;
      *(v182 + v183[13]) = xmmword_1E65ED860;
      v199 = v732;
      *&v737 = v732[9];
      v200 = v590;
      sub_1E6048734(v182, v590, type metadata accessor for PageMetricsClick);
      sub_1E5DF650C(v747, &v765);
      v201 = (*(v662 + 80) + 96) & ~*(v662 + 80);
      v202 = (v663 + v201 + 7) & 0xFFFFFFFFFFFFFFF8;
      v203 = swift_allocObject();
      v204 = v199[3];
      v203[3] = v199[2];
      v203[4] = v204;
      v203[5] = v199[4];
      v205 = v199[1];
      v203[1] = *v199;
      v203[2] = v205;
      sub_1E60484F0(v200, v203 + v201, type metadata accessor for PageMetricsClick);
      v206 = sub_1E5DF599C(&v765, v203 + v202);
      MEMORY[0x1EEE9AC00](v206);
      v207 = v746;
      swift_unknownObjectRetain();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073790, &qword_1E65EDA18);
      sub_1E5FED46C(&qword_1EE2D4BA8, &qword_1ED073790, &qword_1E65EDA18, MEMORY[0x1E697D658]);
      v208 = v616;
      sub_1E65E4AA8();
      v209 = *(v755 + *(v554 + 20) + 8);
      LOBYTE(v765) = v745;
      BYTE1(v765) = v209;
      v755 = sub_1E5FED46C(&qword_1EE2D4B88, &qword_1ED073668, &qword_1E65ED8C8, MEMORY[0x1E697D680]);
      v747 = sub_1E603C7A8();
      v210 = v674;
      sub_1E65E47E8();
      (*(v617 + 8))(v208, v210);
      sub_1E65E5048();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073798, &qword_1E65EDA20);
      inited = swift_initStackObject();
      *(inited + 32) = 1701667182;
      *(inited + 16) = xmmword_1E65EA190;
      v212 = MEMORY[0x1E69E6158];
      *(inited + 40) = 0xE400000000000000;
      *(inited + 48) = v207;
      *(inited + 56) = v754;
      *(inited + 72) = v212;
      strcpy((inited + 80), "impressionType");
      *(inited + 95) = -18;
      v213 = v704;
      v214 = v707;
      (v748)(v704, v738, v707);
      v215 = sub_1E65D8F18();
      v217 = v216;
      (*(v719 + 8))(v213, v214);
      *(inited + 96) = v215;
      *(inited + 104) = v217;
      *(inited + 120) = v212;
      *(inited + 128) = 0x6973736572706D69;
      v218 = MEMORY[0x1E69E6530];
      *(inited + 136) = 0xEF7865646E496E6FLL;
      *(inited + 144) = 0;
      *(inited + 168) = v218;
      *(inited + 176) = 0x657079546469;
      *(inited + 216) = v212;
      *(inited + 184) = 0xE600000000000000;
      *(inited + 192) = 0x64695F737469;
      *(inited + 200) = 0xE600000000000000;
      sub_1E6215168(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0737A0, &qword_1E65FF0D0);
      swift_arrayDestroy();
      sub_1E65E5028();
      v219 = MEMORY[0x1E69E7CC0];
      sub_1E6215168(MEMORY[0x1E69E7CC0]);
      sub_1E6215168(v219);
      v220 = v622;
      sub_1E65E5068();
      v221 = sub_1E65E5078();
      (*(*(v221 - 8) + 56))(v220, 0, 1, v221);
      v222 = v625;
      sub_1E65E5118();
      *&v765 = v210;
      *(&v765 + 1) = &type metadata for ViewPlanButtonStyle;
      v766 = v755;
      *&v767 = v747;
      v223 = swift_getOpaqueTypeConformance2();
      v224 = v623;
      v225 = v675;
      v226 = v667;
      sub_1E65E4738();
      (*(v626 + 8))(v222, v627);
      sub_1E5DFE50C(v220, &qword_1ED073660, &qword_1E65ED8C0);
      (*(v620 + 8))(v226, v225);
      v227 = v624;
      v228 = v679;
      (*(v624 + 16))(v684, v224, v679);
      swift_storeEnumTagMultiPayload();
      *&v765 = v225;
      *(&v765 + 1) = v223;
      swift_getOpaqueTypeConformance2();
      sub_1E5FED46C(qword_1EE2D7530, &qword_1ED073640, &qword_1E65ED8A8, &unk_1E65FE7C0);
      v229 = v687;
      sub_1E65E4138();
      sub_1E5DFD1CC(v229, v741, &qword_1ED073658, &qword_1E65ED8B8);
      swift_storeEnumTagMultiPayload();
      sub_1E603BB2C();
      sub_1E603C628();
      v174 = v742;
      sub_1E65E4138();
      sub_1E5DFE50C(v229, &qword_1ED073658, &qword_1E65ED8B8);
      (*(v227 + 8))(v224, v228);
      sub_1E604879C(v708, type metadata accessor for PageMetricsClick);
LABEL_39:
      v233 = v751;
LABEL_40:
      sub_1E5DFD1CC(v174, v233, &qword_1ED073768, &qword_1E65ED9C8);
      swift_storeEnumTagMultiPayload();
      sub_1E603BAA0();
      sub_1E603C7FC();
      sub_1E65E4138();
      sub_1E5DFE50C(v174, &qword_1ED073768, &qword_1E65ED9C8);
      return sub_1E604879C(v628, type metadata accessor for ActionButtonDescriptor);
    }

    if (EnumCaseMultiPayload != 5)
    {
      v448 = *(v131 + 1);
      v746 = *v131;
      *&v754 = v131[16];
      sub_1E65E5BA8();
      type metadata accessor for LocalizationBundle();
      v449 = swift_getObjCClassFromMetadata();
      v450 = [objc_opt_self() bundleForClass_];
      swift_getKeyPath();
      sub_1E65E4EC8();

      v755 = sub_1E65E5D48();
      v745 = v451;
      v452 = sub_1E65D9D78();
      (*(*(v452 - 8) + 56))(v656, 1, 1, v452);
      (*(v699 + 104))(v658, *MEMORY[0x1E69CBAA0], v700);
      (*(v710 + 56))(v659, 1, 1, v711);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072E58, &qword_1E65F0E90);
      sub_1E65D86A8();
      v453 = swift_allocObject();
      *(v453 + 16) = xmmword_1E65EA670;
      v744 = v453;
      v454 = v448;

      v738 = _s10Blackbeard20MetricIdentifierTypeO8rawValueSSvg_0();
      v729 = v455;
      v456 = *MEMORY[0x1E69CBCC8];
      v457 = *(v719 + 104);
      v458 = v707;
      v457(v704, v456, v707);

      sub_1E6427498(MEMORY[0x1E69E7CC0]);
      sub_1E65D8678();
      v459 = sub_1E65DA208();
      v460 = v595;
      (*(*(v459 - 8) + 56))(v595, 1, 1, v459);
      v457(v660, v456, v458);
      v461 = sub_1E65D9908();
      v462 = *(v461 - 8);
      v463 = v596;
      (*(v462 + 104))(v596, **(&unk_1E8797378 + v754), v461);
      (*(v462 + 56))(v463, 0, 1, v461);
      v464 = sub_1E6427784(MEMORY[0x1E69E7CC0]);
      v465 = v606;
      sub_1E5FAB460(v656, v606, &qword_1ED073578, &qword_1E65F0E60);
      v466 = v661;
      (*(v699 + 32))(v465 + *(v661 + 20), v658, v700);
      sub_1E5FAB460(v659, v465 + v466[6], &qword_1ED072340, &qword_1E65EA410);
      *(v465 + v466[7]) = v744;
      sub_1E5FAB460(v460, v465 + v466[8], &qword_1ED073570, &unk_1E65F4570);
      v467 = (v465 + v466[9]);
      *v467 = 0;
      v467[1] = 0;
      v468 = (v465 + v466[10]);
      *v468 = 0;
      v468[1] = 0;
      *(v465 + v466[11]) = v464;
      v469 = (v465 + v466[12]);
      *v469 = 0;
      v469[1] = 0;
      v470 = (v465 + v466[13]);
      v471 = v746;
      *v470 = v746;
      v470[1] = v454;
      (*(v719 + 32))(v465 + v466[14], v660, v458);
      sub_1E5FAB460(v463, v465 + v466[15], &qword_1ED072330, &qword_1E65EAB70);
      sub_1E5DF650C(v747, &v765);
      v472 = v732;
      v738 = v732[5];
      v744 = v732[7];
      v747 = v732[9];
      v473 = v708;
      sub_1E6048734(v465, v708, type metadata accessor for PageMetricsClick);
      v474 = (*(v662 + 80) + 160) & ~*(v662 + 80);
      v475 = swift_allocObject();
      *(v475 + 16) = v754;
      sub_1E5DF599C(&v765, v475 + 24);
      *(v475 + 64) = v471;
      *(v475 + 72) = v454;
      v476 = v472[3];
      *(v475 + 112) = v472[2];
      *(v475 + 128) = v476;
      *(v475 + 144) = v472[4];
      v477 = v472[1];
      *(v475 + 80) = *v472;
      *(v475 + 96) = v477;
      v478 = sub_1E60484F0(v473, v475 + v474, type metadata accessor for PageMetricsClick);
      MEMORY[0x1EEE9AC00](v478);

      swift_unknownObjectRetain();

      v479 = v730;
      sub_1E65E4AA8();

      v480 = MEMORY[0x1E697D680];
      v481 = sub_1E5FED46C(&qword_1EE2D4B90, &qword_1ED0736F0, &qword_1E65ED950, MEMORY[0x1E697D680]);
      v482 = sub_1E603C4F0();
      v483 = v665;
      v484 = v748;
      sub_1E65E47E8();
      (*(v731 + 8))(v479, v484);
      v485 = v614;
      v486 = v483;
      v487 = v683;
      (*(v614 + 16))(v678, v486, v683);
      swift_storeEnumTagMultiPayload();
      *&v765 = v484;
      *(&v765 + 1) = &type metadata for ViewCatalogItemButtonStyle;
      v766 = v481;
      *&v767 = v482;
      swift_getOpaqueTypeConformance2();
      v488 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED073780, &qword_1E65ED9D8);
      v489 = sub_1E5FED46C(&qword_1EE2D4B80, &qword_1ED073680, &qword_1E65ED8E0, v480);
      v490 = sub_1E603C544();
      *&v765 = v709;
      *(&v765 + 1) = MEMORY[0x1E6981CD8];
      v766 = v488;
      *&v767 = v489;
      *(&v767 + 1) = MEMORY[0x1E6981CD0];
      v768 = v490;
      v491 = swift_getOpaqueTypeConformance2();
      *&v765 = v681;
      *(&v765 + 1) = v491;
      swift_getOpaqueTypeConformance2();
      v492 = v680;
      v493 = v487;
      sub_1E65E4138();
      sub_1E5DFD1CC(v492, v722, &qword_1ED0736A0, &qword_1E65ED900);
      swift_storeEnumTagMultiPayload();
      sub_1E603C178();
      sub_1E603C300();
      v494 = v723;
      sub_1E65E4138();
      sub_1E5DFE50C(v492, &qword_1ED0736A0, &qword_1E65ED900);
      sub_1E5DFD1CC(v494, v735, &qword_1ED0736E0, &qword_1E65ED940);
      swift_storeEnumTagMultiPayload();
      sub_1E603BBB8();
      sub_1E603C0EC();
      v495 = v736;
      sub_1E65E4138();
      sub_1E5DFE50C(v494, &qword_1ED0736E0, &qword_1E65ED940);
      sub_1E5DFD1CC(v495, v741, &qword_1ED073760, &qword_1E65ED9C0);
      swift_storeEnumTagMultiPayload();
      sub_1E603BB2C();
      sub_1E603C628();
      v174 = v742;
      sub_1E65E4138();
      sub_1E5DFE50C(v495, &qword_1ED073760, &qword_1E65ED9C0);
      (*(v485 + 8))(v665, v493);
      sub_1E604879C(v465, type metadata accessor for PageMetricsClick);
      goto LABEL_39;
    }

    v243 = *v131;
    v244 = *(v131 + 1);
    LODWORD(v745) = v131[16];
    v245 = v697;
    *v697 = v243;
    v245[1] = v244;
    swift_storeEnumTagMultiPayload();
    v246 = *(v701 + 16);
    v744 = v701 + 16;
    v731 = v246;
    v246(v698, v139, v717);
    v247 = *(v144 + *(v176 + 20) + 8);
    if (v247 > 1)
    {
      if (v247 == 2)
      {
        v496 = &unk_1F5FA7F80;
LABEL_34:
        v746 = sub_1E5F9B258(v496);
        goto LABEL_35;
      }
    }

    else if (!v247)
    {
      v248 = sub_1E65DE608();
      v746 = sub_1E600A684(v248);

LABEL_35:
      (*(v718 + 104))(v702, *MEMORY[0x1E699CD30], v703);
      v497 = sub_1E65DAE38();
      if (v497 == sub_1E65DAE38())
      {
        v498 = sub_1E65E3FF8();
        v763 = MEMORY[0x1E697DFA0];
        v764 = sub_1E6048C44();
        v760 = v498;
        v761 = 0x402C000000000000;
        LOBYTE(v762) = 0;
      }

      else
      {
        v763 = sub_1E65DEAA8();
        v764 = sub_1E604FBB0(&qword_1EE2D6850, MEMORY[0x1E699CCD8], MEMORY[0x1E699CCD0]);
        __swift_allocate_boxed_opaque_existential_1(&v760);
        sub_1E65DEA98();
      }

      v716 = type metadata accessor for AppComposer;
      v499 = v738;
      sub_1E6048734(v144, v738, type metadata accessor for AppComposer);
      sub_1E5DF650C(v747, v759);
      v500 = v732;
      v719 = *v732;
      v725 = v732[3];
      v726 = v732[5];
      v727 = v732[7];
      v730 = v732[9];
      v501 = *(v728 + 80);
      v502 = (v501 + 16) & ~v501;
      v503 = v729 + v502;
      *&v754 = v502;
      v504 = v501 | 7;
      v505 = (v729 + v502) & 0xFFFFFFFFFFFFFFF8;
      v506 = swift_allocObject();
      v729 = type metadata accessor for AppComposer;
      sub_1E60484F0(v499, v506 + v502, type metadata accessor for AppComposer);
      v503[v506] = v745;
      v748 = v506;
      sub_1E5DF599C(v759, v506 + v505 + 8);
      v507 = (v506 + ((v505 + 55) & 0xFFFFFFFFFFFFFFF8));
      v508 = v500[3];
      v507[2] = v500[2];
      v507[3] = v508;
      v507[4] = v500[4];
      v509 = v500[1];
      *v507 = *v500;
      v507[1] = v509;
      v510 = v755;
      v511 = v636;
      v512 = v716;
      sub_1E6048734(v755, v636, v716);
      v513 = v697;
      v514 = v586;
      sub_1E5DFD1CC(v697, v586, &qword_1ED0736B0, &unk_1E65F8480);
      v515 = *(v584 + 80);
      v516 = &v503[v515] & ~v515;
      v715 = (v516 + v585);
      v738 = v516;
      v728 = v504 | v515;
      v517 = swift_allocObject();
      v745 = v517;
      sub_1E60484F0(v511, v517 + v754, type metadata accessor for AppComposer);
      sub_1E5FAB460(v514, v517 + v516, &qword_1ED0736B0, &unk_1E65F8480);
      sub_1E6048734(v510, v688, v512);
      sub_1E5DFD1CC(v513, v654, &qword_1ED0736B0, &unk_1E65F8480);
      (v731)(v655, v698, v717);
      sub_1E5DF650C(v747, v758);
      v518 = v718;
      (*(v718 + 16))(v657, v702, v703);
      sub_1E5DFD1CC(&v760, v756, &qword_1ED0737D8, &qword_1E65EDA40);
      v519 = (v715 + 7) & 0xFFFFFFFFFFFFFFF8;
      v520 = v701;
      v521 = (v519 + *(v701 + 80) + 8) & ~*(v701 + 80);
      v522 = (v587 + v521 + 7) & 0xFFFFFFFFFFFFFFF8;
      v523 = (v522 + 47) & 0xFFFFFFFFFFFFFFF8;
      v524 = (*(v518 + 80) + v523 + 80) & ~*(v518 + 80);
      v525 = (v588 + v524 + 7) & 0xFFFFFFFFFFFFFFF8;
      v526 = swift_allocObject();
      sub_1E60484F0(v688, v526 + v754, v729);
      sub_1E5FAB460(v654, v526 + v738, &qword_1ED0736B0, &unk_1E65F8480);
      *(v526 + v519) = v746;
      (*(v520 + 32))(v526 + v521, v655, v717);
      sub_1E5DF599C(v758, v526 + v522);
      v527 = (v526 + v523);
      v528 = v500[3];
      v527[2] = v500[2];
      v527[3] = v528;
      v527[4] = v500[4];
      v529 = v500[1];
      *v527 = *v500;
      v527[1] = v529;
      v530 = v703;
      (*(v718 + 32))(v526 + v524, v657, v703);
      v531 = v526 + v525;
      v532 = v756[1];
      *v531 = v756[0];
      *(v531 + 16) = v532;
      *(v531 + 32) = v757;
      swift_unknownObjectRetain_n();
      swift_retain_n();
      swift_retain_n();
      swift_retain_n();
      swift_retain_n();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0737E0, &qword_1E65EDA48);
      v755 = sub_1E5FED46C(&qword_1EE2D6500, &qword_1ED072788, &qword_1E65EBC00, MEMORY[0x1E699E850]);
      v533 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0737E8, &qword_1E65EDA50);
      v534 = sub_1E65DE748();
      v535 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0737F0, &qword_1E65EDA58);
      v536 = sub_1E604FBB0(&qword_1EE2D6890, MEMORY[0x1E699CC00], MEMORY[0x1E699CBF8]);
      v537 = sub_1E6048B5C();
      *&v765 = v534;
      *(&v765 + 1) = MEMORY[0x1E6981CD8];
      v766 = v535;
      *&v767 = v536;
      *(&v767 + 1) = MEMORY[0x1E6981CD0];
      v768 = v537;
      v538 = swift_getOpaqueTypeConformance2();
      *&v765 = v533;
      *(&v765 + 1) = v538;
      swift_getOpaqueTypeConformance2();
      v539 = v597;
      sub_1E65DE9A8();
      (*(v718 + 8))(v702, v530);
      (*(v701 + 8))(v698, v717);
      sub_1E5DFE50C(v697, &qword_1ED0736B0, &unk_1E65F8480);
      sub_1E5DFE50C(&v760, &qword_1ED0737D8, &qword_1E65EDA40);
      v540 = v648;
      sub_1E65E4008();
      sub_1E604FBB0(&qword_1EE2D4D98, MEMORY[0x1E697C5D0], MEMORY[0x1E697C5C8]);
      v541 = v599;
      v542 = v692;
      sub_1E65E3C08();
      (*(v650 + 8))(v540, v542);
      v543 = sub_1E5FED46C(&qword_1EE2D6860, &qword_1ED0736B8, &qword_1E65ED918, MEMORY[0x1E699CCC8]);
      v544 = sub_1E5FED46C(&qword_1EE2D6870, &unk_1ED0779B0, &qword_1E65ED910, MEMORY[0x1E699CC80]);
      v545 = v602;
      v546 = v671;
      v547 = v676;
      sub_1E65E47D8();
      (*(v601 + 8))(v541, v547);
      (*(v598 + 8))(v539, v546);
      v548 = v603;
      v549 = v677;
      (*(v603 + 16))(v670, v545, v677);
      swift_storeEnumTagMultiPayload();
      *&v765 = v546;
      *(&v765 + 1) = v547;
      v766 = v543;
      *&v767 = v544;
      swift_getOpaqueTypeConformance2();
      v550 = v672;
      sub_1E65E4138();
      sub_1E5DFD1CC(v550, v722, &qword_1ED0736D8, &qword_1E65ED938);
      swift_storeEnumTagMultiPayload();
      sub_1E603C178();
      sub_1E603C300();
      v551 = v723;
      sub_1E65E4138();
      sub_1E5DFE50C(v550, &qword_1ED0736D8, &qword_1E65ED938);
      sub_1E5DFD1CC(v551, v735, &qword_1ED0736E0, &qword_1E65ED940);
      swift_storeEnumTagMultiPayload();
      sub_1E603BBB8();
      sub_1E603C0EC();
      v552 = v736;
      sub_1E65E4138();
      sub_1E5DFE50C(v551, &qword_1ED0736E0, &qword_1E65ED940);
      sub_1E5DFD1CC(v552, v741, &qword_1ED073760, &qword_1E65ED9C0);
      swift_storeEnumTagMultiPayload();
      sub_1E603BB2C();
      sub_1E603C628();
      v174 = v742;
      sub_1E65E4138();
      sub_1E5DFE50C(v552, &qword_1ED073760, &qword_1E65ED9C0);
      (*(v548 + 8))(v545, v549);
      goto LABEL_39;
    }

    v496 = &unk_1F5FA7F58;
    goto LABEL_34;
  }

  sub_1E5DFE50C(v135, &qword_1ED072638, &qword_1E65EB950);
  if (*(v755 + *(v106 + 20) + 8) == 3)
  {
    v140 = v730;
    sub_1E65E4AA8();
    v141 = v731;
    v142 = v748;
    (*(v731 + 16))(v745, v140, v748);
    swift_storeEnumTagMultiPayload();
    sub_1E5FED46C(&qword_1EE2D4B90, &qword_1ED0736F0, &qword_1E65ED950, MEMORY[0x1E697D680]);
    v143 = v746;
    sub_1E65E4138();
    (*(v141 + 8))(v140, v142);
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    sub_1E5FED46C(&qword_1EE2D4B90, &qword_1ED0736F0, &qword_1E65ED950, MEMORY[0x1E697D680]);
    v143 = v746;
    sub_1E65E4138();
  }

  sub_1E5DFD1CC(v143, v751, &qword_1ED073630, &qword_1E65ED898);
  swift_storeEnumTagMultiPayload();
  sub_1E603BAA0();
  sub_1E603C7FC();
  sub_1E65E4138();
  return sub_1E5DFE50C(v143, &qword_1ED073630, &qword_1E65ED898);
}

unint64_t sub_1E603BAA0()
{
  result = qword_1EE2D4C50;
  if (!qword_1EE2D4C50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED073768, &qword_1E65ED9C8);
    sub_1E603BB2C();
    sub_1E603C628();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D4C50);
  }

  return result;
}

unint64_t sub_1E603BB2C()
{
  result = qword_1EE2D4C58;
  if (!qword_1EE2D4C58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED073760, &qword_1E65ED9C0);
    sub_1E603BBB8();
    sub_1E603C0EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D4C58);
  }

  return result;
}

unint64_t sub_1E603BBB8()
{
  result = qword_1EE2D4C78;
  if (!qword_1EE2D4C78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED073758, &qword_1E65ED9B8);
    sub_1E603BC44();
    sub_1E603BE58();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D4C78);
  }

  return result;
}

unint64_t sub_1E603BC44()
{
  result = qword_1EE2D4D18;
  if (!qword_1EE2D4D18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED073750, &qword_1E65ED9B0);
    sub_1E5FED46C(qword_1EE2D4F50, &qword_1ED072790, &unk_1E65FA590, MEMORY[0x1E697DB78]);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED073720, &qword_1E65ED980);
    sub_1E65E2298();
    sub_1E65E4018();
    sub_1E604FBB0(&qword_1EE2D6268, MEMORY[0x1E699F258], MEMORY[0x1E699F250]);
    sub_1E604FBB0(&qword_1EE2D4D98, MEMORY[0x1E697C5D0], MEMORY[0x1E697C5C8]);
    swift_getOpaqueTypeConformance2();
    sub_1E603BE04();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D4D18);
  }

  return result;
}

unint64_t sub_1E603BE04()
{
  result = qword_1EE2D9668;
  if (!qword_1EE2D9668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D9668);
  }

  return result;
}

unint64_t sub_1E603BE58()
{
  result = qword_1EE2D4CF8;
  if (!qword_1EE2D4CF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED073708, &qword_1E65ED968);
    sub_1E65E20D8();
    sub_1E604FBB0(&unk_1EE2D6290, MEMORY[0x1E699F1F0], MEMORY[0x1E699F1E8]);
    sub_1E603BE04();
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0736F0, &qword_1E65ED950);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED073770, &qword_1E65ED9D0);
    sub_1E5FED46C(&qword_1EE2D4B90, &qword_1ED0736F0, &qword_1E65ED950, MEMORY[0x1E697D680]);
    sub_1E603C008();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D4CF8);
  }

  return result;
}

unint64_t sub_1E603C008()
{
  result = qword_1EE2D4E68;
  if (!qword_1EE2D4E68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED073770, &qword_1E65ED9D0);
    sub_1E5FED46C(&qword_1EE2D4B90, &qword_1ED0736F0, &qword_1E65ED950, MEMORY[0x1E697D680]);
    sub_1E5FED46C(&unk_1EE2D4BF0, &qword_1ED073778, &qword_1E6600D60, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D4E68);
  }

  return result;
}

unint64_t sub_1E603C0EC()
{
  result = qword_1EE2D4CB8;
  if (!qword_1EE2D4CB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0736E0, &qword_1E65ED940);
    sub_1E603C178();
    sub_1E603C300();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D4CB8);
  }

  return result;
}

unint64_t sub_1E603C178()
{
  result = qword_1EE2D4D58;
  if (!qword_1EE2D4D58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0736D8, &qword_1E65ED938);
    sub_1E5FED46C(&qword_1EE2D6500, &qword_1ED072788, &qword_1E65EBC00, MEMORY[0x1E699E850]);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0736B8, &qword_1E65ED918);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ED0779B0, &qword_1E65ED910);
    sub_1E5FED46C(&qword_1EE2D6860, &qword_1ED0736B8, &qword_1E65ED918, MEMORY[0x1E699CCC8]);
    sub_1E5FED46C(&qword_1EE2D6870, &unk_1ED0779B0, &qword_1E65ED910, MEMORY[0x1E699CC80]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D4D58);
  }

  return result;
}

unint64_t sub_1E603C300()
{
  result = qword_1EE2D4CF0;
  if (!qword_1EE2D4CF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0736A0, &qword_1E65ED900);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0736F0, &qword_1E65ED950);
    v1 = MEMORY[0x1E697D680];
    sub_1E5FED46C(&qword_1EE2D4B90, &qword_1ED0736F0, &qword_1E65ED950, MEMORY[0x1E697D680]);
    sub_1E603C4F0();
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED073688, &qword_1E65ED8E8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED073680, &qword_1E65ED8E0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED073780, &qword_1E65ED9D8);
    sub_1E5FED46C(&qword_1EE2D4B80, &qword_1ED073680, &qword_1E65ED8E0, v1);
    sub_1E603C544();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D4CF0);
  }

  return result;
}

unint64_t sub_1E603C4F0()
{
  result = qword_1EE2D82B8[0];
  if (!qword_1EE2D82B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE2D82B8);
  }

  return result;
}

unint64_t sub_1E603C544()
{
  result = qword_1EE2D4E60;
  if (!qword_1EE2D4E60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED073780, &qword_1E65ED9D8);
    sub_1E5FED46C(&qword_1EE2D4B80, &qword_1ED073680, &qword_1E65ED8E0, MEMORY[0x1E697D680]);
    sub_1E5FED46C(&qword_1EE2D4C00, &unk_1ED07A430, &qword_1E65EC470, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D4E60);
  }

  return result;
}

unint64_t sub_1E603C628()
{
  result = qword_1EE2D4D00;
  if (!qword_1EE2D4D00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED073658, &qword_1E65ED8B8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED073670, &qword_1E65ED8D0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED073668, &qword_1E65ED8C8);
    sub_1E5FED46C(&qword_1EE2D4B88, &qword_1ED073668, &qword_1E65ED8C8, MEMORY[0x1E697D680]);
    sub_1E603C7A8();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1E5FED46C(qword_1EE2D7530, &qword_1ED073640, &qword_1E65ED8A8, &unk_1E65FE7C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D4D00);
  }

  return result;
}

unint64_t sub_1E603C7A8()
{
  result = qword_1EE2D9868;
  if (!qword_1EE2D9868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D9868);
  }

  return result;
}

unint64_t sub_1E603C7FC()
{
  result = qword_1EE2D4CD8;
  if (!qword_1EE2D4CD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED073630, &qword_1E65ED898);
    sub_1E5FED46C(&qword_1EE2D4B90, &qword_1ED0736F0, &qword_1E65ED950, MEMORY[0x1E697D680]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D4CD8);
  }

  return result;
}

uint64_t sub_1E603C8B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1E65D74E8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v21 - v13;
  v15 = sub_1E65E60A8();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  sub_1E5DF650C(a1, v22);
  (*(v9 + 16))(v11, a4, v8);
  sub_1E65E6058();

  v16 = sub_1E65E6048();
  v17 = (*(v9 + 80) + 88) & ~*(v9 + 80);
  v18 = swift_allocObject();
  v19 = MEMORY[0x1E69E85E0];
  *(v18 + 2) = v16;
  *(v18 + 3) = v19;
  sub_1E5DF599C(v22, (v18 + 32));
  *(v18 + 9) = a2;
  *(v18 + 10) = a3;
  (*(v9 + 32))(&v18[v17], v11, v8);
  sub_1E6059EAC(0, 0, v14, &unk_1E65EDAE0, v18);
}

uint64_t sub_1E603CADC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[8] = a6;
  v7[9] = a7;
  v7[6] = a4;
  v7[7] = a5;
  v7[10] = type metadata accessor for RouteDestination(0);
  v7[11] = swift_task_alloc();
  sub_1E65E6058();
  v7[12] = sub_1E65E6048();
  v9 = sub_1E65E5FC8();
  v7[13] = v9;
  v7[14] = v8;

  return MEMORY[0x1EEE6DFA0](sub_1E603CBA8, v9, v8);
}

uint64_t sub_1E603CBA8()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 64);
  v18 = *(v0 + 72);
  v3 = *(v0 + 48);
  v4 = *(v0 + 56);
  v21 = *(v0 + 80);
  v22 = v3[3];
  v23 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v22);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0720F0, &unk_1E65EA2B0);
  v6 = v5[12];
  v7 = (v1 + v5[16]);
  v8 = v5[20];
  v9 = (v1 + v5[24]);
  v10 = (v1 + v5[28]);
  v19 = v5[32];
  v20 = v5[36];
  *(v0 + 16) = v4;
  *(v0 + 24) = v2;

  sub_1E65E6848();
  v11 = sub_1E65D74E8();
  (*(*(v11 - 8) + 16))(v1 + v6, v18, v11);
  v12 = sub_1E65DB3E8();
  *v7 = 0;
  v7[1] = 0;
  (*(*(v12 - 8) + 56))(v1 + v8, 1, 1, v12);
  *v9 = 0;
  v9[1] = 0;
  v13 = sub_1E65DB5D8();
  *v10 = 0;
  v10[1] = 0;
  (*(*(v13 - 8) + 56))(v1 + v19, 1, 1, v13);
  v14 = sub_1E65D7A38();
  (*(*(v14 - 8) + 56))(v1 + v20, 1, 1, v14);
  type metadata accessor for RouteResource(0);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for RouteSource(0);
  swift_storeEnumTagMultiPayload();
  *(v1 + *(v21 + 24)) = MEMORY[0x1E69E7CD0];
  *(v0 + 32) = 2;
  *(v0 + 40) = -64;
  sub_1E600F5B0((v0 + 41));
  v15 = swift_task_alloc();
  *(v0 + 120) = v15;
  *v15 = v0;
  v15[1] = sub_1E603CE88;
  v16 = *(v0 + 88);

  return RoutingContext.presentDestination(_:style:priority:)(v16, (v0 + 32), (v0 + 41), v22, v23);
}

uint64_t sub_1E603CE88()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  *(*v1 + 128) = v0;

  sub_1E604879C(v3, type metadata accessor for RouteDestination);
  v4 = *(v2 + 104);
  v5 = *(v2 + 112);
  if (v0)
  {
    v6 = sub_1E603D040;
  }

  else
  {
    v6 = sub_1E603CFD4;
  }

  return MEMORY[0x1EEE6DFA0](v6, v4, v5);
}

uint64_t sub_1E603CFD4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E603D040()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E603D0AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073770, &qword_1E65ED9D0) + 36));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073778, &qword_1E6600D60);
  sub_1E65E3E48();
  *v4 = swift_getKeyPath();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0736F0, &qword_1E65ED950);
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, a1, v5);
}

uint64_t sub_1E603D178@<X0>(void *a1@<X0>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v116 = a4;
  v108 = a3;
  v121 = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0736E8, &qword_1E65ED948);
  v119 = *(v7 - 8);
  v120 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v113 = &v93 - v8;
  v118 = sub_1E65E1398();
  v117 = *(v118 - 8);
  MEMORY[0x1EEE9AC00](v118);
  v129 = &v93 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AppComposer(0);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v105 = &v93 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v103 = &v93 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v102 = &v93 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v99 = &v93 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v93 - v21;
  v24 = v23;
  MEMORY[0x1EEE9AC00](v20);
  v26 = &v93 - v25;
  v27 = sub_1E65E1298();
  MEMORY[0x1EEE9AC00](v27 - 8);
  v104 = &v93 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = sub_1E65E1208();
  v112 = *(v107 - 8);
  MEMORY[0x1EEE9AC00](v107);
  v128 = &v93 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_1E65E1168();
  v110 = v30;
  v109 = *(v30 - 8);
  v31 = v109;
  v114 = *(v109 + 64);
  v32 = MEMORY[0x1EEE9AC00](v30);
  v115 = &v93 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x1EEE9AC00](v32);
  v131 = &v93 - v35;
  MEMORY[0x1EEE9AC00](v34);
  v37 = &v93 - v36;
  v111 = &v93 - v36;
  v38 = sub_1E65E1518();
  v39 = *(v38 - 8);
  v126 = v38;
  v127 = v39;
  v101 = *(v39 + 64);
  v40 = MEMORY[0x1EEE9AC00](v38);
  v100 = &v93 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v40);
  v130 = &v93 - v42;
  sub_1E65E14F8();
  (*(v31 + 104))(v37, *MEMORY[0x1E699E768], v30);
  v43 = sub_1E642764C(MEMORY[0x1E69E7CC0]);
  v106 = *a1;
  v124 = v26;
  sub_1E6048734(a1, v26, type metadata accessor for AppComposer);
  sub_1E5DF650C(a3, &v135);
  v44 = *(v11 + 80);
  v45 = (v44 + 24) & ~v44;
  v98 = v24;
  v46 = (v24 + v45 + 7) & 0xFFFFFFFFFFFFFFF8;
  v47 = swift_allocObject();
  *(v47 + 16) = v43;
  v48 = v47 + v45;
  v49 = v47;
  v96 = v47;
  sub_1E60484F0(v26, v48, type metadata accessor for AppComposer);
  sub_1E5DF599C(&v135, v49 + v46);
  sub_1E6048734(a1, v22, type metadata accessor for AppComposer);
  v95 = swift_allocObject();
  v50 = (v44 + 16) & ~v44;
  sub_1E60484F0(v22, v95 + v50, type metadata accessor for AppComposer);
  v51 = v99;
  sub_1E6048734(a1, v99, type metadata accessor for AppComposer);
  v52 = v50 + v24;
  v93 = swift_allocObject();
  sub_1E60484F0(v51, v93 + v50, type metadata accessor for AppComposer);
  v53 = v102;
  sub_1E6048734(a1, v102, type metadata accessor for AppComposer);
  v99 = swift_allocObject();
  sub_1E60484F0(v53, v99 + v50, type metadata accessor for AppComposer);
  v54 = v103;
  sub_1E6048734(a1, v103, type metadata accessor for AppComposer);
  v97 = v52;
  v122 = v44 | 7;
  v55 = swift_allocObject();
  v125 = v50;
  v132 = type metadata accessor for AppComposer;
  sub_1E60484F0(v54, v55 + v50, type metadata accessor for AppComposer);
  v123 = a1;
  v56 = v105;
  sub_1E6048734(a1, v105, type metadata accessor for AppComposer);
  v57 = swift_allocObject();
  sub_1E60484F0(v56, v57 + ((v44 + 16) & ~v44), type metadata accessor for AppComposer);
  sub_1E65E1288();
  sub_1E65E11F8();
  sub_1E65E1388();
  v59 = v126;
  v58 = v127;
  v60 = v100;
  (*(v127 + 16))(v100, v130, v126);
  v61 = a1;
  v62 = v124;
  v94 = type metadata accessor for AppComposer;
  sub_1E6048734(v61, v124, type metadata accessor for AppComposer);
  v63 = v58;
  v64 = (*(v58 + 80) + 16) & ~*(v58 + 80);
  v65 = (v101 + v44 + v64) & ~v44;
  v66 = swift_allocObject();
  (*(v63 + 32))(v66 + v64, v60, v59);
  v67 = v62;
  sub_1E60484F0(v62, v66 + v65, v132);
  type metadata accessor for AppFeature(0);
  sub_1E604FBB0(&qword_1EE2DBD90, type metadata accessor for AppFeature, &protocol conformance descriptor for AppFeature);
  v105 = sub_1E604FBB0(&qword_1EE2D6530, MEMORY[0x1E699E7A0], MEMORY[0x1E699E798]);
  v68 = v113;
  v69 = v107;
  sub_1E65E4DE8();
  sub_1E6048734(v123, v67, type metadata accessor for AppComposer);
  v104 = v116[7];
  v70 = (v97 + 7) & 0xFFFFFFFFFFFFFFF8;
  v71 = v116;
  v72 = swift_allocObject();
  sub_1E60484F0(v67, v72 + v125, v132);
  v73 = (v72 + v70);
  v74 = v71[3];
  v73[2] = v71[2];
  v73[3] = v74;
  v73[4] = v71[4];
  v75 = v71[1];
  *v73 = *v71;
  v73[1] = v75;
  swift_unknownObjectRetain();

  v77 = v128;
  v76 = v129;
  v78 = sub_1E65E4F08();

  (*(v119 + 8))(v68, v120);
  (*(v117 + 8))(v76, v118);
  (*(v112 + 8))(v77, v69);
  v79 = v109;
  v80 = *(v109 + 16);
  v81 = v111;
  v82 = v110;
  v80(v131, v111, v110);
  v83 = v124;
  sub_1E6048734(v123, v124, v94);
  sub_1E5DF650C(v108, &v135);
  v84 = swift_allocObject();
  sub_1E60484F0(v83, v84 + v125, v132);
  sub_1E5DF599C(&v135, v84 + v70);
  v85 = v115;
  v86 = v82;
  v80(v115, v81, v82);
  v87 = (*(v79 + 80) + 16) & ~*(v79 + 80);
  v88 = (v114 + v87 + 7) & 0xFFFFFFFFFFFFFFF8;
  v89 = swift_allocObject();
  (*(v79 + 32))(v89 + v87, v85, v86);
  *(v89 + v88) = v78;
  sub_1E65E3878();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073808, &qword_1E65EDA90);
  sub_1E604FBB0(&qword_1EE2D6048, MEMORY[0x1E699ED90], MEMORY[0x1E699ED88]);
  v90 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED073810, &qword_1E65EDA98);
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v133 = v90;
  v134 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_1E65E1488();
  (*(v79 + 8))(v81, v86);
  return (*(v127 + 8))(v130, v126);
}

uint64_t sub_1E603DF44(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  v24 = a4;
  v27 = a3;
  v26 = a1;
  v9 = type metadata accessor for PageMetricsClick(0);
  v25 = *(v9 - 8);
  v10 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v23 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v23 - v12;
  v14 = sub_1E65E60A8();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  sub_1E5DF650C(a2, v28);
  sub_1E6048734(a6, &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PageMetricsClick);
  sub_1E65E6058();
  v15 = v24;

  swift_unknownObjectRetain();

  v16 = sub_1E65E6048();
  v17 = (*(v25 + 80) + 176) & ~*(v25 + 80);
  v18 = swift_allocObject();
  v19 = MEMORY[0x1E69E85E0];
  *(v18 + 16) = v16;
  *(v18 + 24) = v19;
  *(v18 + 32) = v26;
  sub_1E5DF599C(v28, v18 + 40);
  *(v18 + 80) = v27;
  *(v18 + 88) = v15;
  v20 = *(a5 + 3);
  *(v18 + 128) = *(a5 + 2);
  *(v18 + 144) = v20;
  *(v18 + 160) = *(a5 + 4);
  v21 = *(a5 + 1);
  *(v18 + 96) = *a5;
  *(v18 + 112) = v21;
  sub_1E60484F0(v23, v18 + v17, type metadata accessor for PageMetricsClick);
  sub_1E6059EAC(0, 0, v13, &unk_1E65EDB20, v18);
}

uint64_t sub_1E603E1DC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 40) = a8;
  *(v8 + 48) = v13;
  *(v8 + 24) = a6;
  *(v8 + 32) = a7;
  *(v8 + 16) = a5;
  *(v8 + 270) = a4;
  *(v8 + 56) = type metadata accessor for RouteSource(0);
  *(v8 + 64) = swift_task_alloc();
  *(v8 + 72) = type metadata accessor for RouteDestination(0);
  *(v8 + 80) = swift_task_alloc();
  *(v8 + 88) = swift_task_alloc();
  *(v8 + 96) = swift_task_alloc();
  *(v8 + 104) = swift_task_alloc();
  *(v8 + 112) = swift_task_alloc();
  *(v8 + 120) = swift_task_alloc();
  sub_1E65E6058();
  *(v8 + 128) = sub_1E65E6048();
  v10 = sub_1E65E5FC8();
  *(v8 + 136) = v10;
  *(v8 + 144) = v9;

  return MEMORY[0x1EEE6DFA0](sub_1E603E324, v10, v9);
}

uint64_t sub_1E603E324()
{
  v1 = *(v0 + 270);
  if (v1 > 3)
  {
    if (*(v0 + 270) <= 5u)
    {
      if (v1 == 4)
      {
        v20 = *(v0 + 96);
        v21 = *(v0 + 64);
        v22 = *(v0 + 72);
        v24 = *(v0 + 24);
        v23 = *(v0 + 32);
        v25 = *(v0 + 16);
        v9 = v25[3];
        v8 = v25[4];
        __swift_project_boxed_opaque_existential_1(v25, v9);
        swift_storeEnumTagMultiPayload();
        *v20 = v24;
        v20[1] = v23;
        type metadata accessor for RouteResource(0);
        swift_storeEnumTagMultiPayload();
        sub_1E6048734(v21, v20 + *(v22 + 20), type metadata accessor for RouteSource);

        sub_1E604879C(v21, type metadata accessor for RouteSource);
        *(v20 + *(v22 + 24)) = MEMORY[0x1E69E7CD0];
        sub_1E600F5B0((v0 + 266));
        v26 = swift_task_alloc();
        *(v0 + 200) = v26;
        *v26 = v0;
        v26[1] = sub_1E603F0D8;
        v11 = *(v0 + 96);
        v12 = (v0 + 266);
        goto LABEL_17;
      }
    }

    else if (v1 != 6)
    {
      if (v1 == 7)
      {
        v2 = *(v0 + 88);
        v3 = *(v0 + 64);
        v4 = *(v0 + 72);
        v6 = *(v0 + 24);
        v5 = *(v0 + 32);
        v7 = *(v0 + 16);
        v9 = v7[3];
        v8 = v7[4];
        __swift_project_boxed_opaque_existential_1(v7, v9);
        swift_storeEnumTagMultiPayload();
        *v2 = v6;
        v2[1] = v5;
        type metadata accessor for RouteResource(0);
        swift_storeEnumTagMultiPayload();
        sub_1E6048734(v3, v2 + *(v4 + 20), type metadata accessor for RouteSource);

        sub_1E604879C(v3, type metadata accessor for RouteSource);
        *(v2 + *(v4 + 24)) = MEMORY[0x1E69E7CD0];
        sub_1E600F5B0((v0 + 265));
        v10 = swift_task_alloc();
        *(v0 + 216) = v10;
        *v10 = v0;
        v10[1] = sub_1E603F2E4;
        v11 = *(v0 + 88);
        v12 = (v0 + 265);
      }

      else
      {
        v42 = *(v0 + 72);
        v41 = *(v0 + 80);
        v43 = *(v0 + 64);
        v45 = *(v0 + 24);
        v44 = *(v0 + 32);
        v46 = *(v0 + 16);
        v9 = v46[3];
        v8 = v46[4];
        __swift_project_boxed_opaque_existential_1(v46, v9);
        swift_storeEnumTagMultiPayload();
        *v41 = v45;
        v41[1] = v44;
        type metadata accessor for RouteResource(0);
        swift_storeEnumTagMultiPayload();
        sub_1E6048734(v43, v41 + *(v42 + 20), type metadata accessor for RouteSource);

        sub_1E604879C(v43, type metadata accessor for RouteSource);
        *(v41 + *(v42 + 24)) = MEMORY[0x1E69E7CD0];
        sub_1E600F5B0((v0 + 264));
        v47 = swift_task_alloc();
        *(v0 + 232) = v47;
        *v47 = v0;
        v47[1] = sub_1E603F4F0;
        v11 = *(v0 + 80);
        v12 = (v0 + 264);
      }

      goto LABEL_17;
    }

    return sub_1E65E69D8();
  }

  if (*(v0 + 270) <= 1u)
  {
    if (*(v0 + 270))
    {
      v27 = *(v0 + 120);
      v28 = *(v0 + 64);
      v29 = *(v0 + 72);
      v31 = *(v0 + 24);
      v30 = *(v0 + 32);
      v32 = *(v0 + 16);
      v9 = v32[3];
      v8 = v32[4];
      __swift_project_boxed_opaque_existential_1(v32, v9);
      swift_storeEnumTagMultiPayload();
      *v27 = v31;
      v27[1] = v30;
      type metadata accessor for RouteResource(0);
      swift_storeEnumTagMultiPayload();
      sub_1E6048734(v28, v27 + *(v29 + 20), type metadata accessor for RouteSource);

      sub_1E604879C(v28, type metadata accessor for RouteSource);
      *(v27 + *(v29 + 24)) = MEMORY[0x1E69E7CD0];
      sub_1E600F5B0((v0 + 269));
      v33 = swift_task_alloc();
      *(v0 + 152) = v33;
      *v33 = v0;
      v33[1] = sub_1E603EAB4;
      v11 = *(v0 + 120);
      v12 = (v0 + 269);
      goto LABEL_17;
    }

    return sub_1E65E69D8();
  }

  if (v1 == 2)
  {
    v13 = *(v0 + 112);
    v14 = *(v0 + 64);
    v15 = *(v0 + 72);
    v17 = *(v0 + 24);
    v16 = *(v0 + 32);
    v18 = *(v0 + 16);
    v9 = v18[3];
    v8 = v18[4];
    __swift_project_boxed_opaque_existential_1(v18, v9);
    swift_storeEnumTagMultiPayload();
    *v13 = v17;
    v13[1] = v16;
    type metadata accessor for RouteResource(0);
    swift_storeEnumTagMultiPayload();
    sub_1E6048734(v14, v13 + *(v15 + 20), type metadata accessor for RouteSource);

    sub_1E604879C(v14, type metadata accessor for RouteSource);
    *(v13 + *(v15 + 24)) = MEMORY[0x1E69E7CD0];
    sub_1E600F5B0((v0 + 268));
    v19 = swift_task_alloc();
    *(v0 + 168) = v19;
    *v19 = v0;
    v19[1] = sub_1E603ECC0;
    v11 = *(v0 + 112);
    v12 = (v0 + 268);
  }

  else
  {
    v34 = *(v0 + 104);
    v35 = *(v0 + 64);
    v36 = *(v0 + 72);
    v38 = *(v0 + 24);
    v37 = *(v0 + 32);
    v39 = *(v0 + 16);
    v9 = v39[3];
    v8 = v39[4];
    __swift_project_boxed_opaque_existential_1(v39, v9);
    swift_storeEnumTagMultiPayload();
    *v34 = v38;
    v34[1] = v37;
    type metadata accessor for PlaylistType(0);
    swift_storeEnumTagMultiPayload();
    type metadata accessor for RouteResource(0);
    swift_storeEnumTagMultiPayload();
    sub_1E6048734(v35, v34 + *(v36 + 20), type metadata accessor for RouteSource);

    sub_1E604879C(v35, type metadata accessor for RouteSource);
    *(v34 + *(v36 + 24)) = MEMORY[0x1E69E7CD0];
    sub_1E600F5B0((v0 + 267));
    v40 = swift_task_alloc();
    *(v0 + 184) = v40;
    *v40 = v0;
    v40[1] = sub_1E603EECC;
    v11 = *(v0 + 104);
    v12 = (v0 + 267);
  }

LABEL_17:

  return RoutingContext.appendDestination(_:priority:)(v11, v12, v9, v8);
}

uint64_t sub_1E603EAB4()
{
  v2 = *v1;
  v2[20] = v0;

  if (v0)
  {
    sub_1E604879C(v2[15], type metadata accessor for RouteDestination);
    v3 = v2[17];
    v4 = v2[18];

    return MEMORY[0x1EEE6DFA0](sub_1E603F8FC, v3, v4);
  }

  else
  {
    sub_1E604879C(v2[15], type metadata accessor for RouteDestination);
    v8 = (*(v2[5] + 48) + **(v2[5] + 48));
    v5 = swift_task_alloc();
    v2[31] = v5;
    *v5 = v2;
    v5[1] = sub_1E603F6FC;
    v6 = v2[6];

    return v8(v6);
  }
}

uint64_t sub_1E603ECC0()
{
  v2 = *v1;
  v2[22] = v0;

  if (v0)
  {
    sub_1E604879C(v2[14], type metadata accessor for RouteDestination);
    v3 = v2[17];
    v4 = v2[18];

    return MEMORY[0x1EEE6DFA0](sub_1E603F9BC, v3, v4);
  }

  else
  {
    sub_1E604879C(v2[14], type metadata accessor for RouteDestination);
    v8 = (*(v2[5] + 48) + **(v2[5] + 48));
    v5 = swift_task_alloc();
    v2[31] = v5;
    *v5 = v2;
    v5[1] = sub_1E603F6FC;
    v6 = v2[6];

    return v8(v6);
  }
}

uint64_t sub_1E603EECC()
{
  v2 = *v1;
  v2[24] = v0;

  if (v0)
  {
    sub_1E604879C(v2[13], type metadata accessor for RouteDestination);
    v3 = v2[17];
    v4 = v2[18];

    return MEMORY[0x1EEE6DFA0](sub_1E603FA7C, v3, v4);
  }

  else
  {
    sub_1E604879C(v2[13], type metadata accessor for RouteDestination);
    v8 = (*(v2[5] + 48) + **(v2[5] + 48));
    v5 = swift_task_alloc();
    v2[31] = v5;
    *v5 = v2;
    v5[1] = sub_1E603F6FC;
    v6 = v2[6];

    return v8(v6);
  }
}

uint64_t sub_1E603F0D8()
{
  v2 = *v1;
  v2[26] = v0;

  if (v0)
  {
    sub_1E604879C(v2[12], type metadata accessor for RouteDestination);
    v3 = v2[17];
    v4 = v2[18];

    return MEMORY[0x1EEE6DFA0](sub_1E603FB3C, v3, v4);
  }

  else
  {
    sub_1E604879C(v2[12], type metadata accessor for RouteDestination);
    v8 = (*(v2[5] + 48) + **(v2[5] + 48));
    v5 = swift_task_alloc();
    v2[31] = v5;
    *v5 = v2;
    v5[1] = sub_1E603F6FC;
    v6 = v2[6];

    return v8(v6);
  }
}

uint64_t sub_1E603F2E4()
{
  v2 = *v1;
  v2[28] = v0;

  if (v0)
  {
    sub_1E604879C(v2[11], type metadata accessor for RouteDestination);
    v3 = v2[17];
    v4 = v2[18];

    return MEMORY[0x1EEE6DFA0](sub_1E603FBFC, v3, v4);
  }

  else
  {
    sub_1E604879C(v2[11], type metadata accessor for RouteDestination);
    v8 = (*(v2[5] + 48) + **(v2[5] + 48));
    v5 = swift_task_alloc();
    v2[31] = v5;
    *v5 = v2;
    v5[1] = sub_1E603F6FC;
    v6 = v2[6];

    return v8(v6);
  }
}

uint64_t sub_1E603F4F0()
{
  v2 = *v1;
  v2[30] = v0;

  if (v0)
  {
    sub_1E604879C(v2[10], type metadata accessor for RouteDestination);
    v3 = v2[17];
    v4 = v2[18];

    return MEMORY[0x1EEE6DFA0](sub_1E603FCBC, v3, v4);
  }

  else
  {
    sub_1E604879C(v2[10], type metadata accessor for RouteDestination);
    v8 = (*(v2[5] + 48) + **(v2[5] + 48));
    v5 = swift_task_alloc();
    v2[31] = v5;
    *v5 = v2;
    v5[1] = sub_1E603F6FC;
    v6 = v2[6];

    return v8(v6);
  }
}

uint64_t sub_1E603F6FC()
{
  v2 = *v1;
  *(*v1 + 256) = v0;

  v3 = *(v2 + 144);
  v4 = *(v2 + 136);
  if (v0)
  {
    v5 = sub_1E603FD7C;
  }

  else
  {
    v5 = sub_1E603F838;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1E603F838()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E603F8FC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E603F9BC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E603FA7C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E603FB3C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E603FBFC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E603FCBC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E603FD7C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E603FE3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v32 = a6;
  v30 = a5;
  v35 = a1;
  v9 = type metadata accessor for AppComposer(0);
  v34 = *(v9 - 8);
  v10 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v29 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for GalleryDescriptor(0);
  v31 = *(v11 - 8);
  v12 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v28 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v27 - v14;
  v33 = &v27 - v14;
  v16 = sub_1E65E60A8();
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  sub_1E6048734(a3, &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for GalleryDescriptor);
  sub_1E6048734(v30, &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AppComposer);
  sub_1E5DF650C(v32, v36);
  sub_1E65E6058();

  swift_unknownObjectRetain();

  v17 = sub_1E65E6048();
  v18 = (*(v31 + 80) + 48) & ~*(v31 + 80);
  v19 = (v12 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = (*(v34 + 80) + v19 + 80) & ~*(v34 + 80);
  v21 = swift_allocObject();
  v22 = MEMORY[0x1E69E85E0];
  v21[2] = v17;
  v21[3] = v22;
  v21[4] = v35;
  v21[5] = a2;
  sub_1E60484F0(v28, v21 + v18, type metadata accessor for GalleryDescriptor);
  v23 = (v21 + v19);
  v24 = *(a4 + 3);
  v23[2] = *(a4 + 2);
  v23[3] = v24;
  v23[4] = *(a4 + 4);
  v25 = *(a4 + 1);
  *v23 = *a4;
  v23[1] = v25;
  sub_1E60484F0(v29, v21 + v20, type metadata accessor for AppComposer);
  sub_1E5DF599C(v36, v21 + ((v10 + v20 + 7) & 0xFFFFFFFFFFFFFFF8));
  sub_1E6059EAC(0, 0, v33, &unk_1E65EDBE8, v21);
}

uint64_t sub_1E60401B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = a8;
  v8[7] = v16;
  v8[4] = a6;
  v8[5] = a7;
  v8[2] = a4;
  v8[3] = a5;
  v8[8] = type metadata accessor for RouteSource(0);
  v8[9] = swift_task_alloc();
  v8[10] = type metadata accessor for RouteDestination(0);
  v8[11] = swift_task_alloc();
  v9 = sub_1E65D89F8();
  v8[12] = v9;
  v8[13] = *(v9 - 8);
  v8[14] = swift_task_alloc();
  v10 = sub_1E65DE3E8();
  v8[15] = v10;
  v8[16] = *(v10 - 8);
  v8[17] = swift_task_alloc();
  v11 = sub_1E65D8F28();
  v8[18] = v11;
  v8[19] = *(v11 - 8);
  v8[20] = swift_task_alloc();
  v8[21] = type metadata accessor for PageMetricsClick(0);
  v8[22] = swift_task_alloc();
  sub_1E65E6058();
  v8[23] = sub_1E65E6048();
  v13 = sub_1E65E5FC8();
  v8[24] = v13;
  v8[25] = v12;

  return MEMORY[0x1EEE6DFA0](sub_1E6040400, v13, v12);
}

uint64_t sub_1E6040400()
{
  v2 = v0[21];
  v1 = v0[22];
  v3 = v0[19];
  v29 = v0[20];
  v31 = v0[5];
  v32 = v0[18];
  v30 = v0[4];
  v4 = sub_1E65D9D78();
  (*(*(v4 - 8) + 56))(v1, 1, 1, v4);
  v5 = v2[5];
  v6 = *MEMORY[0x1E69CBAA0];
  v7 = sub_1E65D8C68();
  (*(*(v7 - 8) + 104))(v1 + v5, v6, v7);
  v8 = v2[6];
  v9 = sub_1E65D74E8();
  (*(*(v9 - 8) + 56))(v1 + v8, 1, 1, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072E58, &qword_1E65F0E90);
  sub_1E65D86A8();
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1E65EA670;
  v28 = v10;
  _s10Blackbeard20MetricIdentifierTypeO8rawValueSSvg_0();
  v27 = *(v3 + 104);
  v27(v29, *MEMORY[0x1E69CBCC8], v32);
  sub_1E6427498(MEMORY[0x1E69E7CC0]);

  sub_1E65D8678();
  v11 = v2[8];
  v12 = sub_1E65DA208();
  (*(*(v12 - 8) + 56))(v1 + v11, 1, 1, v12);
  v13 = *v30;
  v0[26] = *v30;
  v14 = v30[1];
  v0[27] = v14;
  v27(v1 + v2[14], *MEMORY[0x1E69CBCF0], v32);
  v15 = v2[15];
  v16 = *MEMORY[0x1E69CC488];
  v17 = sub_1E65D9908();
  v18 = *(v17 - 8);
  (*(v18 + 104))(v1 + v15, v16, v17);
  (*(v18 + 56))(v1 + v15, 0, 1, v17);

  v19 = sub_1E6427784(MEMORY[0x1E69E7CC0]);
  *(v1 + v2[7]) = v28;
  v20 = (v1 + v2[9]);
  *v20 = 0;
  v20[1] = 0;
  v21 = (v1 + v2[10]);
  *v21 = 0;
  v21[1] = 0;
  *(v1 + v2[11]) = v19;
  v22 = (v1 + v2[12]);
  *v22 = 0;
  v22[1] = 0;
  v23 = (v1 + v2[13]);
  *v23 = v13;
  v23[1] = v14;
  v33 = (*(v31 + 48) + **(v31 + 48));
  v24 = swift_task_alloc();
  v0[28] = v24;
  *v24 = v0;
  v24[1] = sub_1E6040884;
  v25 = v0[22];

  return v33(v25);
}

uint64_t sub_1E6040884()
{
  v2 = *v1;
  *(*v1 + 232) = v0;

  v3 = *(v2 + 200);
  v4 = *(v2 + 192);
  if (v0)
  {
    v5 = sub_1E6040ED8;
  }

  else
  {
    v5 = sub_1E60409C0;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1E60409C0()
{
  if (*(*(v0 + 32) + 16) == 1)
  {
    v2 = *(v0 + 128);
    v1 = *(v0 + 136);
    v3 = *(v0 + 120);
    type metadata accessor for AppComposer(0);
    v4 = sub_1E65DAE18();
    (*(v2 + 104))(v1, *MEMORY[0x1E69CAD28], v3);
    v5 = sub_1E637C87C(v1, v4);

    (*(v2 + 8))(v1, v3);
    if (v5)
    {
      v7 = *(v0 + 104);
      v6 = *(v0 + 112);
      v8 = *(v0 + 96);
      (*(v7 + 104))(v6, *MEMORY[0x1E69CB788], v8);
      sub_1E6171EC8(v6, 0);
      (*(v7 + 8))(v6, v8);
    }
  }

  v9 = *(v0 + 208);
  v10 = *(v0 + 216);
  v11 = *(v0 + 88);
  v12 = *(v0 + 72);
  v13 = *(v0 + 56);
  v14 = *(v0 + 32);
  v23 = *(v0 + 80);
  v24 = v13[3];
  v25 = v13[4];
  __swift_project_boxed_opaque_existential_1(v13, v24);
  v15 = sub_1E65DFFF8();
  v16 = *(v14 + 17);
  v17 = *(type metadata accessor for GalleryDescriptor(0) + 28);
  swift_storeEnumTagMultiPayload();
  v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077AE0, &unk_1E65EA7B0) + 80);
  *v11 = v9;
  *(v11 + 8) = v10;
  *(v11 + 16) = v15 & 1;
  *(v11 + 17) = v16;
  v19 = sub_1E65D72D8();
  (*(*(v19 - 8) + 16))(v11 + v18, v14 + v17, v19);
  type metadata accessor for RouteResource(0);
  swift_storeEnumTagMultiPayload();
  sub_1E6048734(v12, v11 + *(v23 + 20), type metadata accessor for RouteSource);

  sub_1E604879C(v12, type metadata accessor for RouteSource);
  *(v11 + *(v23 + 24)) = MEMORY[0x1E69E7CD0];
  sub_1E600F5B0((v0 + 256));
  v20 = swift_task_alloc();
  *(v0 + 240) = v20;
  *v20 = v0;
  v20[1] = sub_1E6040CB8;
  v21 = *(v0 + 88);

  return RoutingContext.appendDestination(_:priority:)(v21, (v0 + 256), v24, v25);
}

uint64_t sub_1E6040CB8()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  *(*v1 + 248) = v0;

  sub_1E604879C(v3, type metadata accessor for RouteDestination);
  v4 = *(v2 + 192);
  v5 = *(v2 + 200);
  if (v0)
  {
    v6 = sub_1E6040FAC;
  }

  else
  {
    v6 = sub_1E6040E04;
  }

  return MEMORY[0x1EEE6DFA0](v6, v4, v5);
}

uint64_t sub_1E6040E04()
{
  v1 = *(v0 + 176);

  sub_1E604879C(v1, type metadata accessor for PageMetricsClick);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1E6040ED8()
{
  v1 = *(v0 + 176);

  sub_1E604879C(v1, type metadata accessor for PageMetricsClick);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1E6040FAC()
{
  v1 = *(v0 + 176);

  sub_1E604879C(v1, type metadata accessor for PageMetricsClick);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1E6041080(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1E65E4B58();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0737B8, &qword_1E65EDA38);
  sub_1E5FED46C(&qword_1EE2D4B68, &qword_1ED0737B8, &qword_1E65EDA38, MEMORY[0x1E69817F8]);
  return sub_1E65E4B68();
}

uint64_t sub_1E6041174@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_1E65E3F68();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073828, &qword_1E65EDB58);
  return sub_1E60411C8(a1, (a2 + *(v4 + 44)));
}

uint64_t sub_1E60411C8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v57 = a2;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073830, &qword_1E65EDB60) - 8;
  v3 = MEMORY[0x1EEE9AC00](v56);
  v55 = v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v54 = (v46 - v5);
  v6 = sub_1E65E4548();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1E65D72D8();
  MEMORY[0x1EEE9AC00](v10);
  (*(v12 + 16))(v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  v13 = sub_1E65E46A8();
  v15 = v14;
  v17 = v16;
  sub_1E65E4528();
  sub_1E65E44B8();

  v52 = *MEMORY[0x1E6980EA8];
  v18 = *(v7 + 104);
  v46[1] = v7 + 104;
  v51 = v18;
  v48 = v6;
  v18(v9);
  sub_1E65E4578();

  v19 = *(v7 + 8);
  v49 = v7 + 8;
  v50 = v19;
  v19(v9, v6);
  v20 = sub_1E65E4668();
  v22 = v21;
  LOBYTE(v6) = v23;

  sub_1E6012728(v13, v15, v17 & 1);

  v58[0] = sub_1E65E41D8();
  v24 = sub_1E65E4648();
  v26 = v25;
  v53 = v27;
  v47 = v28;
  sub_1E6012728(v20, v22, v6 & 1);

  v29 = sub_1E65E49F8();
  sub_1E65E4528();
  sub_1E65E44B8();

  v30 = v48;
  v51(v9, v52, v48);
  v31 = sub_1E65E4578();

  v50(v9, v30);
  KeyPath = swift_getKeyPath();
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073838, &qword_1E65EDB98);
  v34 = v54;
  v35 = (v54 + *(v33 + 36));
  v36 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073840, &qword_1E65EDBA0) + 28);
  v37 = *MEMORY[0x1E69816C8];
  v38 = sub_1E65E4A28();
  (*(*(v38 - 8) + 104))(v35 + v36, v37, v38);
  *v35 = swift_getKeyPath();
  v39 = v34;
  *v34 = v29;
  v34[1] = KeyPath;
  v34[2] = v31;
  v40 = sub_1E65E41F8();
  v41 = v55;
  *(v34 + *(v56 + 44)) = v40;
  sub_1E5DFD1CC(v34, v41, &qword_1ED073830, &qword_1E65EDB60);
  v42 = v57;
  *v57 = v24;
  v42[1] = v26;
  LOBYTE(KeyPath) = v53 & 1;
  *(v42 + 16) = v53 & 1;
  v42[3] = v47;
  *(v42 + 2) = xmmword_1E65ED870;
  *(v42 + 48) = 0;
  v42[7] = MEMORY[0x1E69E7CC0];
  v43 = v42;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073848, &qword_1E65EDBD8);
  sub_1E5DFD1CC(v41, v43 + *(v44 + 64), &qword_1ED073830, &qword_1E65EDB60);
  sub_1E60126D4(v24, v26, KeyPath);

  sub_1E60126D4(32, 0xE100000000000000, 0);

  sub_1E5DFE50C(v39, &qword_1ED073830, &qword_1E65EDB60);
  sub_1E5DFE50C(v41, &qword_1ED073830, &qword_1E65EDB60);
  sub_1E6012728(32, 0xE100000000000000, 0);

  sub_1E6012728(v24, v26, KeyPath);
}

uint64_t sub_1E6041730@<X0>(uint64_t a3@<X8>)
{
  sub_1E5F9AEA8();

  result = sub_1E65E46B8();
  *a3 = result;
  *(a3 + 8) = v5;
  *(a3 + 16) = v6 & 1;
  *(a3 + 24) = v7;
  return result;
}

uint64_t sub_1E604179C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1E65E49A8();
  KeyPath = swift_getKeyPath();
  v5 = sub_1E65E3D08();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073680, &qword_1E65ED8E0);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073780, &qword_1E65ED9D8);
  v8 = (a2 + *(result + 36));
  *v8 = KeyPath;
  v8[1] = v5;
  return result;
}

uint64_t sub_1E6041870(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v21 = a3;
  v5 = type metadata accessor for PageMetricsClick(0);
  v22 = *(v5 - 8);
  v6 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v20 - v9;
  v11 = sub_1E65E60A8();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  sub_1E6048734(a2, v7, type metadata accessor for PageMetricsClick);
  sub_1E5DF650C(v21, v23);
  sub_1E65E6058();
  swift_unknownObjectRetain();

  v12 = sub_1E65E6048();
  v13 = (*(v22 + 80) + 112) & ~*(v22 + 80);
  v14 = (v6 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = swift_allocObject();
  v16 = MEMORY[0x1E69E85E0];
  *(v15 + 16) = v12;
  *(v15 + 24) = v16;
  v17 = *(a1 + 3);
  *(v15 + 64) = *(a1 + 2);
  *(v15 + 80) = v17;
  *(v15 + 96) = *(a1 + 4);
  v18 = *(a1 + 1);
  *(v15 + 32) = *a1;
  *(v15 + 48) = v18;
  sub_1E60484F0(v7, v15 + v13, type metadata accessor for PageMetricsClick);
  sub_1E5DF599C(v23, v15 + v14);
  sub_1E6059EAC(0, 0, v10, &unk_1E65EDBF8, v15);
}

uint64_t sub_1E6041AEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a6;
  v6[3] = type metadata accessor for RouteDestination(0);
  v6[4] = swift_task_alloc();
  v6[5] = sub_1E65E6058();
  v6[6] = sub_1E65E6048();
  v11 = (*(a4 + 48) + **(a4 + 48));
  v9 = swift_task_alloc();
  v6[7] = v9;
  *v9 = v6;
  v9[1] = sub_1E6041C34;

  return v11(a5);
}

uint64_t sub_1E6041C34()
{
  v2 = *v1;
  v2[8] = v0;

  v4 = sub_1E65E5FC8();
  v2[9] = v4;
  v2[10] = v3;
  if (v0)
  {
    v5 = sub_1E6042078;
  }

  else
  {
    v5 = sub_1E6041D94;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1E6041D94()
{
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);
  v3 = *(v0 + 16);
  v5 = v3[3];
  v4 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v5);
  *v1 = 0;
  type metadata accessor for RouteResource(0);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for RouteSource(0);
  swift_storeEnumTagMultiPayload();
  *(v1 + *(v2 + 24)) = MEMORY[0x1E69E7CD0];
  sub_1E600F5B0((v0 + 104));
  v6 = swift_task_alloc();
  *(v0 + 88) = v6;
  *v6 = v0;
  v6[1] = sub_1E6041EBC;
  v7 = *(v0 + 32);

  return RoutingContext.appendDestination(_:priority:)(v7, (v0 + 104), v5, v4);
}

uint64_t sub_1E6041EBC()
{
  v2 = *v1;
  v3 = *(*v1 + 32);
  *(*v1 + 96) = v0;

  sub_1E604879C(v3, type metadata accessor for RouteDestination);
  v4 = *(v2 + 72);
  v5 = *(v2 + 80);
  if (v0)
  {
    v6 = sub_1E60420E4;
  }

  else
  {
    v6 = sub_1E6042008;
  }

  return MEMORY[0x1EEE6DFA0](v6, v4, v5);
}

uint64_t sub_1E6042008()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E6042078()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E60420E4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E6042150(uint64_t a1, uint64_t a2)
{
  sub_1E5F9AEA8();

  return sub_1E65E4A58();
}

uint64_t sub_1E60421C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a3;
  v5[9] = a5;
  v5[6] = a1;
  v5[7] = a2;
  v6 = sub_1E65DD0A8();
  v5[10] = v6;
  v5[11] = *(v6 - 8);
  v5[12] = swift_task_alloc();
  v5[13] = type metadata accessor for PageMetricsClick(0);
  v5[14] = swift_task_alloc();
  v5[15] = swift_task_alloc();
  v7 = sub_1E65D8C68();
  v5[16] = v7;
  v5[17] = *(v7 - 8);
  v5[18] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073578, &qword_1E65F0E60);
  v5[19] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6042358, 0, 0);
}

uint64_t sub_1E6042358()
{
  v74 = v0;
  v1 = v0[6];
  v70 = v0[13];
  v2 = *(v70 + 20);
  (*(v0[17] + 104))(v0[18], *MEMORY[0x1E69CB9D0], v0[16]);
  sub_1E604FBB0(&qword_1EE2D7100, MEMORY[0x1E69CBAA8], MEMORY[0x1E69CBAC0]);
  sub_1E65E5E98();
  sub_1E65E5E98();
  v4 = v0[17];
  v3 = v0[18];
  v5 = v0[16];
  if (v0[2] == v0[4] && v0[3] == v0[5])
  {
    (*(v4 + 8))(v0[18], v0[16]);

LABEL_5:
    v7 = v0[19];
    v8 = sub_1E65D9D78();
    (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
    goto LABEL_7;
  }

  v6 = sub_1E65E6C18();
  (*(v4 + 8))(v3, v5);

  if (v6)
  {
    goto LABEL_5;
  }

  v9 = v0[19];
  v10 = *MEMORY[0x1E69CC8F8];
  v11 = sub_1E65D9D78();
  v12 = *(v11 - 8);
  (*(v12 + 104))(v9, v10, v11);
  (*(v12 + 56))(v9, 0, 1, v11);
LABEL_7:
  v13 = v0[16];
  v14 = v0[17];
  v16 = v0[13];
  v15 = v0[14];
  v60 = v0[9];
  v17 = v0[6];
  sub_1E5DFD1CC(v0[19], v15, &qword_1ED073578, &qword_1E65F0E60);
  v64 = *(v70 + 20);
  v65 = *(v14 + 16);
  v65(v15 + v64, v1 + v2, v13);
  v63 = v16[6];
  sub_1E5DFD1CC(v17 + v63, v15 + v63, &qword_1ED072340, &qword_1E65EA410);
  v71 = *(v17 + v16[7]);
  v62 = v16[8];
  sub_1E5DFD1CC(v17 + v62, v15 + v62, &qword_1ED073570, &unk_1E65F4570);
  v18 = (v17 + v16[9]);
  v20 = *v18;
  v19 = v18[1];
  v21 = (v17 + v16[10]);
  v67 = v19;
  v68 = *v21;
  v69 = v21[1];
  v22 = v16[12];
  v23 = *(v17 + v16[11]);
  v24 = *(v17 + v22);
  v66 = *(v17 + v22 + 8);
  v25 = v16[14];
  v26 = (v17 + v16[13]);
  v27 = *v26;
  v28 = v26[1];
  v29 = sub_1E65D8F28();
  v55 = v25;
  v53 = *(*(v29 - 8) + 16);
  v54 = v29;
  v53(v15 + v25, v17 + v25);
  v52 = v16[15];
  sub_1E5DFD1CC(v17 + v52, v15 + v52, &qword_1ED072330, &qword_1E65EAB70);
  *(v15 + v16[7]) = v71;
  v30 = (v15 + v16[9]);
  v59 = v20;
  *v30 = v20;
  v30[1] = v67;
  v31 = (v15 + v16[10]);
  *v31 = v68;
  v31[1] = v69;
  *(v15 + v16[11]) = v23;
  v32 = (v15 + v16[12]);
  v57 = v28;
  v58 = v24;
  *v32 = v24;
  v32[1] = v66;
  v33 = (v15 + v16[13]);
  v56 = v27;
  *v33 = v27;
  v33[1] = v28;
  if (v60 == 6)
  {
    v34 = v0[12];
    v51 = v0[11];
    v61 = v0[10];
    swift_getKeyPath();
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    v35 = v23;
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();

    sub_1E65E4EC8();

    v36 = sub_1E6014274();
    (*(v51 + 8))(v34, v61);
  }

  else
  {
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    v35 = v23;
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();

    v36 = sub_1E6427784(MEMORY[0x1E69E7CC0]);
  }

  v38 = v0[15];
  v37 = v0[16];
  sub_1E5DFD1CC(v0[14], v38, &qword_1ED073578, &qword_1E65F0E60);
  v65(v38 + *(v70 + 20), v15 + v64, v37);
  sub_1E5DFD1CC(v15 + v63, v38 + v16[6], &qword_1ED072340, &qword_1E65EA410);
  sub_1E5DFD1CC(v15 + v62, v38 + v16[8], &qword_1ED073570, &unk_1E65F4570);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v73[0] = v35;
  sub_1E5FEE178(v36, sub_1E60481B8, 0, isUniquelyReferenced_nonNull_native, v73);

  v40 = v0[14];
  v41 = v0[15];
  v42 = *(v0[7] + 48);
  v43 = v73[0];
  (v53)(v41 + v16[14], v15 + v55, v54);
  sub_1E5DFD1CC(v15 + v52, v41 + v16[15], &qword_1ED072330, &qword_1E65EAB70);
  sub_1E604879C(v40, type metadata accessor for PageMetricsClick);
  *(v41 + v16[7]) = v71;
  v44 = (v41 + v16[9]);
  *v44 = v59;
  v44[1] = v67;
  v45 = (v41 + v16[10]);
  *v45 = v68;
  v45[1] = v69;
  *(v41 + v16[11]) = v43;
  v46 = (v41 + v16[12]);
  *v46 = v58;
  v46[1] = v66;
  v47 = (v41 + v16[13]);
  *v47 = v56;
  v47[1] = v57;
  v72 = (v42 + *v42);
  v48 = swift_task_alloc();
  v0[20] = v48;
  *v48 = v0;
  v48[1] = sub_1E6042B24;
  v49 = v0[15];

  return v72(v49);
}

uint64_t sub_1E6042B24()
{
  v2 = *v1;
  *(*v1 + 168) = v0;

  sub_1E604879C(*(v2 + 120), type metadata accessor for PageMetricsClick);
  if (v0)
  {
    v3 = sub_1E6042D24;
  }

  else
  {
    v3 = sub_1E6042C6C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E6042C6C()
{
  sub_1E5DFE50C(*(v0 + 152), &qword_1ED073578, &qword_1E65F0E60);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E6042D24()
{
  sub_1E5DFE50C(*(v0 + 152), &qword_1ED073578, &qword_1E65F0E60);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E6042DDC@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v209 = a4;
  v195 = a3;
  v179 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073648, &qword_1E6607560);
  v178 = *(v8 - 8);
  v177 = *(v178 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v176 = &v146 - v9;
  v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073850, &unk_1E65F71B0);
  v174 = *(v175 - 8);
  MEMORY[0x1EEE9AC00](v175);
  v171 = &v146 - v10;
  v11 = sub_1E65DED78();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v167 = &v146 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v170 = sub_1E65DEC38();
  v173 = *(v170 - 8);
  MEMORY[0x1EEE9AC00](v170);
  v199 = &v146 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v198 = sub_1E65DEC18();
  v197 = *(v198 - 8);
  v169 = *(v197 + 64);
  v14 = MEMORY[0x1EEE9AC00](v198);
  v168 = &v146 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v196 = &v146 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073858, &unk_1E65F84A0);
  v166 = *(v17 - 8);
  v191 = *(v166 + 64);
  v18 = MEMORY[0x1EEE9AC00](v17 - 8);
  v165 = &v146 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v203 = (&v146 - v20);
  v185 = sub_1E65D76F8();
  v202 = *(v185 - 8);
  v193 = *(v202 + 64);
  MEMORY[0x1EEE9AC00](v185);
  v184 = &v146 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CA0, &unk_1E65F7160);
  v158 = *(v159 - 8);
  MEMORY[0x1EEE9AC00](v159);
  v186 = &v146 - v22;
  v23 = type metadata accessor for AppComposer(0);
  v24 = *(v23 - 8);
  v160 = v23 - 8;
  v211 = v24;
  v25 = *(v24 + 64);
  v26 = MEMORY[0x1EEE9AC00](v23 - 8);
  v164 = &v146 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v26);
  v163 = &v146 - v28;
  v29 = MEMORY[0x1EEE9AC00](v27);
  v162 = &v146 - v30;
  v31 = MEMORY[0x1EEE9AC00](v29);
  v161 = &v146 - v32;
  MEMORY[0x1EEE9AC00](v31);
  v34 = &v146 - v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073860, &unk_1E65FA8F0);
  MEMORY[0x1EEE9AC00](v35 - 8);
  v190 = &v146 - v36;
  v182 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CB0, &unk_1E65F7170);
  v153 = *(v182 - 8);
  MEMORY[0x1EEE9AC00](v182);
  v183 = &v146 - v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072AA8, &unk_1E65FA900);
  v189 = *(v38 - 8);
  v181 = *(v189 + 64);
  v39 = MEMORY[0x1EEE9AC00](v38 - 8);
  v180 = &v146 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39);
  v42 = &v146 - v41;
  v200 = &v146 - v41;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0776E0, &qword_1E65EDC00);
  MEMORY[0x1EEE9AC00](v43 - 8);
  v45 = &v146 - v44;
  v194 = a1;
  sub_1E622C840(&v146 - v44);
  v204 = a2;
  v172 = sub_1E6200DD8(v45, a2, v209);
  sub_1E5DFE50C(v45, &unk_1ED0776E0, &qword_1E65EDC00);
  sub_1E622CA0C(v42);
  v192 = *v5;
  sub_1E6048734(v5, v34, type metadata accessor for AppComposer);
  v46 = *(v211 + 80);
  v47 = ((v46 + 16) & ~v46) + v25;
  v48 = (v46 + 16) & ~v46;
  v49 = v46 | 7;
  v188 = swift_allocObject();
  sub_1E60484F0(v34, v188 + v48, type metadata accessor for AppComposer);
  sub_1E6048734(v5, v34, type metadata accessor for AppComposer);
  v50 = swift_allocObject();
  sub_1E60484F0(v34, v50 + v48, type metadata accessor for AppComposer);
  v206 = v5;
  v207 = type metadata accessor for AppComposer;
  sub_1E6048734(v5, v34, type metadata accessor for AppComposer);
  v201 = v47;
  v210 = v49;
  v51 = swift_allocObject();
  v211 = v48;
  v205 = v34;
  v208 = type metadata accessor for AppComposer;
  sub_1E60484F0(v34, v51 + v48, type metadata accessor for AppComposer);
  v52 = swift_allocObject();
  *(v52 + 16) = &unk_1E65F7190;
  *(v52 + 24) = v51;
  sub_1E6048734(v5, v34, type metadata accessor for AppComposer);
  v53 = swift_allocObject();
  sub_1E60484F0(v34, v53 + v48, type metadata accessor for AppComposer);
  sub_1E604BABC();
  sub_1E65DED58();
  sub_1E65DEAC8();
  v54 = v200;
  v55 = v180;
  sub_1E5DFD1CC(v200, v180, &qword_1ED072AA8, &unk_1E65FA900);
  v56 = v202;
  v57 = *(v202 + 16);
  v156 = v202 + 16;
  v157 = v57;
  v58 = v184;
  v59 = v185;
  v57(v184, v204, v185);
  v147 = *(v189 + 80);
  v60 = (v147 + 16) & ~v147;
  v190 = (v60 + v181);
  v189 = v147 | 7;
  v154 = *(v56 + 80);
  v61 = (v60 + v181 + v154) & ~v154;
  v62 = v61 + v193;
  v63 = swift_allocObject();
  sub_1E5FAB460(v55, v63 + v60, &qword_1ED072AA8, &unk_1E65FA900);
  v64 = *(v56 + 32);
  v202 = v56 + 32;
  v155 = v64;
  v64(v63 + v61, v58, v59);
  *(v63 + v62) = 0;
  v65 = v54;
  v66 = v55;
  sub_1E5DFD1CC(v65, v55, &qword_1ED072AA8, &unk_1E65FA900);
  v67 = swift_allocObject();
  sub_1E5FAB460(v55, v67 + v60, &qword_1ED072AA8, &unk_1E65FA900);
  v152 = type metadata accessor for AppFeature(0);
  v151 = sub_1E604FBB0(&qword_1EE2DBD90, type metadata accessor for AppFeature, &protocol conformance descriptor for AppFeature);
  v146 = sub_1E5FED46C(&qword_1EE2D6848, &unk_1ED077CB0, &unk_1E65F7170, MEMORY[0x1E699CCE0]);
  sub_1E65E4DE8();
  v68 = v205;
  sub_1E6048734(v206, v205, v207);
  v69 = v209;
  v187 = *v209;
  v188 = v209[3];
  v189 = v209[5];
  v190 = v209[7];
  v148 = v209[9];
  sub_1E5DFD1CC(v200, v66, &qword_1ED072AA8, &unk_1E65FA900);
  v149 = ((v201 + 7) & 0xFFFFFFFFFFFFFFF8) + 80;
  v70 = (v201 + 7) & 0xFFFFFFFFFFFFFFF8;
  v150 = v70;
  v71 = (v149 + v147) & ~v147;
  v72 = swift_allocObject();
  sub_1E60484F0(v68, v72 + v211, v208);
  v73 = (v72 + v70);
  v74 = v69[3];
  v73[2] = v69[2];
  v73[3] = v74;
  v73[4] = v69[4];
  v75 = v69[1];
  *v73 = *v69;
  v73[1] = v75;
  sub_1E5FAB460(v180, v72 + v71, &qword_1ED072AA8, &unk_1E65FA900);
  swift_unknownObjectRetain();

  sub_1E65E4CC8();
  v76 = swift_allocObject();
  *(v76 + 16) = sub_1E604BC48;
  *(v76 + 24) = v72;

  v77 = v183;
  v78 = v186;
  v79 = v182;
  v181 = sub_1E65E4F08();

  (*(v158 + 8))(v78, v159);
  (*(v153 + 8))(v77, v79);
  sub_1E5DFE50C(v200, &qword_1ED072AA8, &unk_1E65FA900);
  v80 = v203;
  sub_1E622CE04(v203);
  v81 = sub_1E65DE608();
  v200 = sub_1E600A684(v81);

  (*(v197 + 104))(v196, *MEMORY[0x1E699CD38], v198);
  type metadata accessor for AppEnvironment(0);
  v82 = v206;
  v186 = SessionService.requireNewSessionsAllowed.getter();
  v183 = v83;
  v84 = v205;
  v85 = v207;
  sub_1E6048734(v82, v205, v207);
  v86 = v201;
  v182 = swift_allocObject();
  v87 = v211;
  v88 = v84;
  v89 = v208;
  sub_1E60484F0(v88, v182 + v211, v208);
  v90 = v161;
  sub_1E6048734(v82, v161, v85);
  v180 = swift_allocObject();
  v91 = v90;
  v92 = v89;
  sub_1E60484F0(v91, v180 + v87, v89);
  v93 = v162;
  sub_1E6048734(v82, v162, v85);
  v94 = v86;
  v161 = swift_allocObject();
  sub_1E60484F0(v93, v161 + v87, v92);
  v95 = v163;
  sub_1E6048734(v82, v163, v85);
  v162 = swift_allocObject();
  v96 = v95;
  v97 = v92;
  sub_1E60484F0(v96, v162 + v87, v92);
  v98 = v195;
  sub_1E5DF650C(v195, &v218);
  v163 = swift_allocObject();
  sub_1E5DF599C(&v218, v163 + 16);
  v99 = v164;
  sub_1E6048734(v82, v164, v85);
  v100 = v165;
  sub_1E5DFD1CC(v80, v165, &qword_1ED073858, &unk_1E65F84A0);
  sub_1E5DF650C(v98, &v217);
  v101 = *(v166 + 80);
  v102 = (v94 + v101) & ~v101;
  v103 = (v191 + v102 + 7) & 0xFFFFFFFFFFFFFFF8;
  v104 = swift_allocObject();
  sub_1E60484F0(v99, v104 + v211, v97);
  sub_1E5FAB460(v100, v104 + v102, &qword_1ED073858, &unk_1E65F84A0);
  sub_1E5DF599C(&v217, v104 + v103);
  sub_1E65DED68();
  sub_1E65DEC28();
  v105 = v203;
  sub_1E5DFD1CC(v203, v100, &qword_1ED073858, &unk_1E65F84A0);
  v106 = v184;
  v107 = v185;
  v157(v184, v204, v185);
  v108 = (v101 + 16) & ~v101;
  v191 += v108;
  v109 = (v191 + 7) & 0xFFFFFFFFFFFFFFF8;
  v110 = (v154 + v109 + 8) & ~v154;
  v111 = swift_allocObject();
  sub_1E5FAB460(v100, v111 + v108, &qword_1ED073858, &unk_1E65F84A0);
  *(v111 + v109) = v200;
  v155(v111 + v110, v106, v107);
  sub_1E5DFD1CC(v105, v100, &qword_1ED073858, &unk_1E65F84A0);
  v112 = swift_allocObject();
  sub_1E5FAB460(v100, v112 + v108, &qword_1ED073858, &unk_1E65F84A0);
  sub_1E604FBB0(&qword_1EE2D6838, MEMORY[0x1E699CD48], MEMORY[0x1E699CD40]);
  v113 = v171;
  v114 = v170;
  sub_1E65E4DE8();
  v115 = v205;
  sub_1E6048734(v206, v205, v207);
  v116 = v197;
  v117 = v168;
  v118 = v196;
  v119 = v198;
  (*(v197 + 16))(v168, v196, v198);
  v120 = (v149 + *(v116 + 80)) & ~*(v116 + 80);
  v121 = swift_allocObject();
  sub_1E60484F0(v115, v121 + v211, v208);
  v122 = (v121 + v150);
  v123 = v209;
  v124 = *(v209 + 3);
  v122[2] = *(v209 + 2);
  v122[3] = v124;
  v122[4] = v123[4];
  v125 = v123[1];
  *v122 = *v123;
  v122[1] = v125;
  (*(v116 + 32))(v121 + v120, v117, v119);
  swift_unknownObjectRetain();

  sub_1E65E4CC8();
  v126 = swift_allocObject();
  *(v126 + 16) = sub_1E604C228;
  *(v126 + 24) = v121;

  v127 = v199;
  v202 = sub_1E65E4F08();

  (*(v174 + 8))(v113, v175);
  (*(v173 + 8))(v127, v114);
  (*(v116 + 8))(v118, v119);
  sub_1E5DFE50C(v203, &qword_1ED073858, &unk_1E65F84A0);
  v128 = v206;
  v129 = v205;
  sub_1E6048734(v206, v205, v207);
  v130 = v194;
  v131 = v176;
  sub_1E5DFD1CC(v194, v176, &qword_1ED073648, &qword_1E6607560);
  v132 = (v201 + *(v178 + 80)) & ~*(v178 + 80);
  v133 = (v177 + v132 + 7) & 0xFFFFFFFFFFFFFFF8;
  v134 = swift_allocObject();
  sub_1E60484F0(v129, v134 + v211, v208);
  sub_1E5FAB460(v131, v134 + v132, &qword_1ED073648, &qword_1E6607560);
  v135 = (v134 + v133);
  v136 = v209;
  v137 = *(v209 + 3);
  v135[2] = *(v209 + 2);
  v135[3] = v137;
  v135[4] = v136[4];
  v138 = v136[1];
  *v135 = *v136;
  v135[1] = v138;
  v212 = v128;
  v213 = v130;
  v214 = v204;
  v215 = v195;
  v216 = v136;
  swift_unknownObjectRetain();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073888, &qword_1E65EDC28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073890, &qword_1E65EDC30);
  v139 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED073898, &qword_1E65EDC38);
  v140 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ED0776B0, &unk_1E65EDE50);
  v141 = sub_1E604C440();
  v142 = sub_1E5FED46C(&qword_1EE2D4460, &unk_1ED0776B0, &unk_1E65EDE50, MEMORY[0x1E69E6ED8]);
  *&v218 = v139;
  *(&v218 + 1) = v140;
  v219 = v141;
  v220 = v142;
  swift_getOpaqueTypeConformance2();
  sub_1E5FED46C(&qword_1ED0738E0, &qword_1ED073890, &qword_1E65EDC30, MEMORY[0x1E6981F48]);
  v143 = v179;
  sub_1E65E45B8();
  *(v143 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0738E8, &qword_1E65EDC58) + 36)) = 0x3FF0000000000000;
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073640, &qword_1E65ED8A8);
  sub_1E6047C5C(v143 + *(v144 + 52));
}

double sub_1E6044824@<D0>(uint64_t a1@<X8>)
{
  result = 2.1146788e214;
  *a1 = xmmword_1E65ED880;
  *(a1 + 16) = 0;
  *(a1 + 24) = MEMORY[0x1E69E7CC0];
  return result;
}

uint64_t sub_1E6044844(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer(0) - 8);
  v5 = (*(v4 + 80) + 96) & ~*(v4 + 80);
  v6 = (v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = *v6;
  v8 = v6[1];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1E5DFE6BC;

  return sub_1E60421C4(a1, v1 + 16, v1 + v5, v7, v8);
}

uint64_t sub_1E6044960(char a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v30 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073648, &qword_1E6607560);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v11 = v29 - v10;
  v12 = type metadata accessor for AppComposer(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  result = MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = v29 - v18;
  if (a1)
  {
    v20 = sub_1E65E60A8();
    (*(*(v20 - 8) + 56))(v19, 1, 1, v20);
    sub_1E6048734(a2, v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AppComposer);
    sub_1E5DFD1CC(v30, v11, &qword_1ED073648, &qword_1E6607560);
    v21 = a4[7];
    v29[1] = a4[5];
    v29[2] = v21;
    v30 = a4[9];
    v22 = (*(v13 + 80) + 32) & ~*(v13 + 80);
    v23 = (v14 + *(v8 + 80) + v22) & ~*(v8 + 80);
    v24 = (v9 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
    v25 = swift_allocObject();
    *(v25 + 16) = 0;
    *(v25 + 24) = 0;
    sub_1E60484F0(v15, v25 + v22, type metadata accessor for AppComposer);
    sub_1E5FAB460(v11, v25 + v23, &qword_1ED073648, &qword_1E6607560);
    v26 = (v25 + v24);
    v27 = *(a4 + 3);
    v26[2] = *(a4 + 2);
    v26[3] = v27;
    v26[4] = *(a4 + 4);
    v28 = *(a4 + 1);
    *v26 = *a4;
    v26[1] = v28;
    swift_unknownObjectRetain();

    sub_1E64B80F8(0, 0, v19, &unk_1E65EDCF8, v25);
  }

  return result;
}

uint64_t sub_1E6044C7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *(a6 + 48);
  v9 = *(a6 + 56);
  v10 = swift_task_alloc();
  *(v6 + 16) = v10;
  *v10 = v6;
  v10[1] = sub_1E5DFA78C;

  return sub_1E604F3CC(a5, v8, v9);
}

uint64_t sub_1E6044D2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  v78 = a6;
  v76 = sub_1E65D76F8();
  v85 = *(v76 - 1);
  v77 = *(v85 + 64);
  MEMORY[0x1EEE9AC00](v76);
  v75 = v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for AppComposer(0);
  v74 = *(v12 - 8);
  v73 = *(v74 + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v70 = v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0776E0, &qword_1E65EDC00);
  v72 = *(v14 - 8);
  v71 = *(v72 + 64);
  v15 = MEMORY[0x1EEE9AC00](v14 - 8);
  v69 = v68 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v79 = (v68 - v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0738F0, &qword_1E65F7280);
  v19 = *(v18 - 8);
  v95 = v18;
  v96 = v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v88 = v68 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v94 = v68 - v22;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0738F8, &qword_1E65EDC90);
  v91 = *(v90 - 8);
  v23 = MEMORY[0x1EEE9AC00](v90);
  v86 = v68 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v92 = v68 - v25;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073900, &qword_1E65EDC98);
  v89 = *(v84 - 8);
  v26 = MEMORY[0x1EEE9AC00](v84);
  v93 = v68 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v80 = v68 - v28;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073908, &qword_1E65EDCA0);
  v87 = *(v82 - 8);
  v29 = MEMORY[0x1EEE9AC00](v82);
  v81 = v68 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v83 = v68 - v31;
  v105 = a1;
  v106 = a2;
  v32 = a3;
  v107 = a3;
  v108 = a4;
  v109 = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073910, &qword_1E65EDCA8);
  sub_1E5FED46C(&qword_1EE2D6858, &qword_1ED073910, &qword_1E65EDCA8, MEMORY[0x1E699CCC8]);
  sub_1E65E4AF8();
  v101 = a1;
  v102 = a2;
  v103 = a5;
  v104 = a4;
  v33 = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073918, &unk_1E65F7260);
  v34 = MEMORY[0x1E6981F48];
  sub_1E5FED46C(&qword_1EE2D4B48, &qword_1ED073918, &unk_1E65F7260, MEMORY[0x1E6981F48]);
  sub_1E65E4AF8();
  v97 = a1;
  v98 = a2;
  v99 = a3;
  v100 = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073920, &qword_1E65EDCB0);
  sub_1E5FED46C(&qword_1EE2D4B40, &qword_1ED073920, &qword_1E65EDCB0, v34);
  sub_1E65E4AF8();
  v35 = v79;
  sub_1E622C840(v79);
  v36 = v70;
  sub_1E6048734(a1, v70, type metadata accessor for AppComposer);
  v37 = v69;
  sub_1E5DFD1CC(v35, v69, &unk_1ED0776E0, &qword_1E65EDC00);
  v38 = v85;
  v39 = v75;
  v40 = v32;
  v41 = v76;
  (*(v85 + 16))(v75, v40, v76);
  v68[1] = *v33;
  v68[2] = v33[3];
  v68[3] = v33[5];
  v68[4] = v33[7];
  v68[5] = v33[9];
  v42 = v33;
  v43 = (*(v74 + 80) + 16) & ~*(v74 + 80);
  v44 = (v73 + *(v72 + 80) + v43) & ~*(v72 + 80);
  v45 = (v71 + *(v38 + 80) + v44) & ~*(v38 + 80);
  v46 = (v77 + v45 + 7) & 0xFFFFFFFFFFFFFFF8;
  v47 = swift_allocObject();
  sub_1E60484F0(v36, v47 + v43, type metadata accessor for AppComposer);
  sub_1E5FAB460(v37, v47 + v44, &unk_1ED0776E0, &qword_1E65EDC00);
  (*(v85 + 32))(v47 + v45, v39, v41);
  v48 = (v47 + v46);
  v49 = v42[3];
  v48[2] = v42[2];
  v48[3] = v49;
  v48[4] = v42[4];
  v50 = v42[1];
  *v48 = *v42;
  v48[1] = v50;
  sub_1E604C89C();
  swift_unknownObjectRetain();

  sub_1E65DE4E8();
  sub_1E5DFE50C(v79, &unk_1ED0776E0, &qword_1E65EDC00);
  v76 = *(v87 + 16);
  v51 = v81;
  v52 = v82;
  (v76)(v81, v83, v82);
  v85 = *(v89 + 16);
  v53 = v84;
  (v85)(v93, v80, v84);
  v79 = *(v91 + 16);
  v54 = v86;
  (v79)(v86, v92, v90);
  v77 = *(v96 + 16);
  v55 = v88;
  v77(v88, v94, v95);
  v56 = v78;
  (v76)(v78, v51, v52);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073928, &qword_1E65EDCB8);
  (v85)(v56 + v57[12], v93, v53);
  v58 = v90;
  (v79)(v56 + v57[16], v54, v90);
  v59 = v95;
  v77((v56 + v57[20]), v55, v95);
  v60 = *(v96 + 8);
  v96 += 8;
  v60(v94, v59);
  v61 = *(v91 + 8);
  v62 = v58;
  v61(v92, v58);
  v63 = *(v89 + 8);
  v64 = v84;
  v63(v80, v84);
  v65 = *(v87 + 8);
  v66 = v82;
  v65(v83, v82);
  v60(v88, v95);
  v61(v86, v62);
  v63(v93, v64);
  return (v65)(v81, v66);
}

uint64_t sub_1E60458BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X4>, uint64_t a5@<X8>)
{
  v58 = a2;
  v59 = a3;
  v60 = a5;
  v54 = sub_1E65D76F8();
  v61 = *(v54 - 8);
  v57 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v54);
  v53 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AppComposer(0);
  v56 = *(v8 - 8);
  v9 = *(v56 + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v52 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v44 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0736B0, &unk_1E65F8480);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](v13 - 8);
  v48 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v44 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v44 - v20;
  sub_1E622CFB8((&v44 - v20));
  sub_1E6048734(a1, v12, type metadata accessor for AppComposer);
  v55 = v21;
  sub_1E5DFD1CC(v21, v19, &qword_1ED0736B0, &unk_1E65F8480);
  v22 = *(v56 + 80);
  v23 = (v22 + 16) & ~v22;
  v24 = *(v14 + 80);
  v25 = (v9 + v24 + v23) & ~v24;
  v26 = v25 + v15;
  v46 = v25;
  v47 = v22 | v24 | 7;
  v27 = swift_allocObject();
  v56 = v27;
  v45 = type metadata accessor for AppComposer;
  sub_1E60484F0(v12, v27 + v23, type metadata accessor for AppComposer);
  sub_1E5FAB460(v19, v27 + v25, &qword_1ED0736B0, &unk_1E65F8480);
  v28 = a1;
  v29 = v52;
  sub_1E6048734(v28, v52, type metadata accessor for AppComposer);
  v30 = v21;
  v31 = v48;
  sub_1E5DFD1CC(v30, v48, &qword_1ED0736B0, &unk_1E65F8480);
  v32 = v61;
  v34 = v53;
  v33 = v54;
  (*(v61 + 16))(v53, v58, v54);
  sub_1E5DF650C(v59, v62);
  v35 = a4[3];
  v49 = *a4;
  v50 = v35;
  v51 = a4[5];
  v36 = a4[9];
  v58 = a4[7];
  v59 = v36;
  v37 = (v26 + *(v32 + 80)) & ~*(v32 + 80);
  v38 = (v57 + v37 + 7) & 0xFFFFFFFFFFFFFFF8;
  v39 = swift_allocObject();
  sub_1E60484F0(v29, v39 + v23, v45);
  sub_1E5FAB460(v31, v39 + v46, &qword_1ED0736B0, &unk_1E65F8480);
  (*(v61 + 32))(v39 + v37, v34, v33);
  sub_1E5DF599C(v62, v39 + v38);
  v40 = (v39 + ((v38 + 47) & 0xFFFFFFFFFFFFFFF8));
  v41 = *(a4 + 3);
  v40[2] = *(a4 + 2);
  v40[3] = v41;
  v40[4] = *(a4 + 4);
  v42 = *(a4 + 1);
  *v40 = *a4;
  v40[1] = v42;
  sub_1E65DE748();
  sub_1E604FBB0(&qword_1EE2D6890, MEMORY[0x1E699CC00], MEMORY[0x1E699CBF8]);
  swift_unknownObjectRetain();

  sub_1E65DE9A8();
  return sub_1E5DFE50C(v55, &qword_1ED0736B0, &unk_1E65F8480);
}

uint64_t sub_1E6045E30@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X2>, uint64_t a3@<X3>, char *a4@<X8>)
{
  v66 = a3;
  v63 = a1;
  v70 = a4;
  v6 = sub_1E65DE588();
  v68 = *(v6 - 8);
  v69 = v6;
  v7 = MEMORY[0x1EEE9AC00](v6);
  v67 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v74 = &v51 - v9;
  v10 = type metadata accessor for AppComposer(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v51 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073988, &unk_1E65F72F0);
  v57 = *(v13 - 8);
  v14 = *(v57 + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v52 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = (&v51 - v16);
  v61 = &v51 - v16;
  v65 = sub_1E65DE468();
  v73 = *(v65 - 8);
  v18 = MEMORY[0x1EEE9AC00](v65);
  v64 = &v51 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v71 = &v51 - v20;
  sub_1E622D2A4(v17);
  v53 = sub_1E5F9B258(&unk_1F5FA8248);
  v62 = type metadata accessor for AppComposer;
  sub_1E6048734(a1, &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AppComposer);
  sub_1E5DFD1CC(v17, &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), &qword_1ED073988, &unk_1E65F72F0);
  v55 = *a2;
  v56 = a2[3];
  v54 = a2[7];
  v72 = a2[9];
  v21 = *(v11 + 80);
  v22 = (v21 + 16) & ~v21;
  v60 = v22 + v12;
  v58 = v22;
  v59 = v21 | 7;
  v23 = (v22 + v12 + *(v57 + 80)) & ~*(v57 + 80);
  v24 = (v14 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  v26 = v25 + v22;
  v27 = v51;
  sub_1E60484F0(v51, v26, type metadata accessor for AppComposer);
  sub_1E5FAB460(v52, v25 + v23, &qword_1ED073988, &unk_1E65F72F0);
  *(v25 + v24) = v53;
  v28 = (v25 + ((v24 + 15) & 0xFFFFFFFFFFFFFFF8));
  v29 = *(a2 + 4);
  v28[3] = *(a2 + 3);
  v28[4] = v29;
  v30 = *(a2 + 2);
  v28[1] = *(a2 + 1);
  v28[2] = v30;
  *v28 = *a2;
  swift_unknownObjectRetain();

  v31 = v71;
  sub_1E65DE458();
  sub_1E5DFE50C(v61, &qword_1ED073988, &unk_1E65F72F0);
  sub_1E6048734(v63, v27, v62);
  sub_1E5DF650C(v66, v75);
  v32 = (v60 + 7) & 0xFFFFFFFFFFFFFFF8;
  v33 = swift_allocObject();
  sub_1E60484F0(v27, v33 + v58, type metadata accessor for AppComposer);
  v34 = (v33 + v32);
  v35 = *(a2 + 3);
  v34[2] = *(a2 + 2);
  v34[3] = v35;
  v34[4] = *(a2 + 4);
  v36 = *(a2 + 1);
  *v34 = *a2;
  v34[1] = v36;
  sub_1E5DF599C(v75, v33 + ((v32 + 87) & 0xFFFFFFFFFFFFFFF8));
  swift_unknownObjectRetain();

  v37 = v74;
  sub_1E65DE578();
  v38 = *(v73 + 16);
  v39 = v64;
  v40 = v65;
  v38(v64, v31, v65);
  v41 = v67;
  v42 = v68;
  v43 = *(v68 + 16);
  v44 = v37;
  v45 = v69;
  v43(v67, v44, v69);
  v46 = v70;
  v38(v70, v39, v40);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073990, &unk_1E65F7300);
  v43(&v46[*(v47 + 48)], v41, v45);
  v48 = *(v42 + 8);
  v48(v74, v45);
  v49 = *(v73 + 8);
  v49(v71, v40);
  v48(v41, v45);
  return (v49)(v39, v40);
}

uint64_t sub_1E604648C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, char *a5@<X8>)
{
  v183 = a3;
  v184 = a4;
  v159 = a2;
  v190 = a1;
  v173 = a5;
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073930, &qword_1E65EDCC0);
  v171 = *(v147 - 8);
  v5 = MEMORY[0x1EEE9AC00](v147);
  v145 = &v132 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v143 = &v132 - v8;
  v144 = v9;
  MEMORY[0x1EEE9AC00](v7);
  v146 = &v132 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073938, &unk_1E65F72A0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v163 = &v132 - v12;
  v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073940, &qword_1E65EDCC8);
  v162 = *(v164 - 8);
  v13 = MEMORY[0x1EEE9AC00](v164);
  v142 = &v132 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = v14;
  MEMORY[0x1EEE9AC00](v13);
  v168 = &v132 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073948, &unk_1E65F72B0);
  v17 = MEMORY[0x1EEE9AC00](v16 - 8);
  v172 = &v132 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v169 = &v132 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v170 = &v132 - v21;
  v22 = sub_1E65D76F8();
  v181 = v22;
  v23 = *(v22 - 8);
  v161 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v132 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v180 = v25;
  v26 = type metadata accessor for AppComposer(0);
  v175 = *(v26 - 8);
  v27 = *(v175 + 64);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v28 = &v132 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073950, &unk_1E65F4360);
  v152 = *(v29 - 8);
  v30 = *(v152 + 8);
  v31 = MEMORY[0x1EEE9AC00](v29 - 8);
  v148 = &v132 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v132 - v32;
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077CE0, &unk_1E65F72C0);
  v187 = *(v157 - 8);
  v186 = *(v187 + 64);
  v34 = MEMORY[0x1EEE9AC00](v157);
  v160 = &v132 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x1EEE9AC00](v34);
  v158 = &v132 - v37;
  v38 = MEMORY[0x1EEE9AC00](v36);
  v156 = &v132 - v39;
  MEMORY[0x1EEE9AC00](v38);
  v185 = (&v132 - v40);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073958, &qword_1E65EDCD0);
  v155 = *(v41 - 8);
  v154 = *(v155 + 64);
  v42 = MEMORY[0x1EEE9AC00](v41 - 8);
  v174 = &v132 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = MEMORY[0x1EEE9AC00](v42);
  v153 = &v132 - v45;
  MEMORY[0x1EEE9AC00](v44);
  v47 = &v132 - v46;
  v189 = &v132 - v46;
  v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073960, &qword_1E65EDCD8);
  v166 = *(v167 - 8);
  v48 = MEMORY[0x1EEE9AC00](v167);
  v165 = &v132 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v48);
  v188 = &v132 - v50;
  sub_1E622D590(v47);
  v150 = v33;
  sub_1E6184404(v33);
  v151 = type metadata accessor for AppComposer;
  v182 = v28;
  sub_1E6048734(v190, v28, type metadata accessor for AppComposer);
  sub_1E5DFD1CC(v33, &v132 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0), &qword_1ED073950, &unk_1E65F4360);
  v51 = v23;
  v52 = *(v23 + 16);
  v139 = v23 + 16;
  v138 = v52;
  v52(v25, v183, v22);
  v53 = v184;
  v54 = *v184;
  v55 = v184[5];
  v176 = v184[3];
  v177 = v55;
  v56 = v184[9];
  v178 = v184[7];
  v179 = v56;
  v57 = *(v175 + 80);
  v58 = (v57 + 16) & ~v57;
  v175 = v58 + v27;
  v149 = v57 | 7;
  v59 = (v58 + v27 + *(v152 + 80)) & ~*(v152 + 80);
  v60 = *(v51 + 80);
  v61 = (v30 + v60 + v59) & ~v60;
  v135 = v60;
  v133 = v161 + 7;
  v62 = (v161 + 7 + v61) & 0xFFFFFFFFFFFFFFF8;
  v136 = v57 | 7 | v60;
  v63 = swift_allocObject();
  v152 = type metadata accessor for AppComposer;
  sub_1E60484F0(v28, v63 + v58, type metadata accessor for AppComposer);
  sub_1E5FAB460(v148, v63 + v59, &qword_1ED073950, &unk_1E65F4360);
  v64 = *(v51 + 32);
  v148 = v51 + 32;
  v134 = v64;
  v64(v63 + v61, v180, v181);
  v65 = (v63 + v62);
  v66 = *(v53 + 3);
  v65[2] = *(v53 + 2);
  v65[3] = v66;
  v65[4] = *(v53 + 4);
  v67 = *(v53 + 1);
  *v65 = *v53;
  v65[1] = v67;
  v68 = (v63 + ((v62 + 87) & 0xFFFFFFFFFFFFFFF8));
  *v68 = nullsub_1;
  v68[1] = 0;
  v69 = sub_1E604BABC();
  v140 = v54;
  swift_unknownObjectRetain();

  v70 = v185;
  v137 = v69;
  sub_1E65DE518();
  sub_1E5DFE50C(v150, &qword_1ED073950, &unk_1E65F4360);
  v71 = v182;
  sub_1E6048734(v190, v182, v151);
  v72 = v153;
  sub_1E5DFD1CC(v189, v153, &qword_1ED073958, &qword_1E65EDCD0);
  v73 = *(v155 + 80);
  v74 = ((v175 + v73) & ~v73);
  v151 = (v74 + v154);
  v150 = (v149 | v73);
  v75 = swift_allocObject();
  v155 = v75;
  v161 = v58;
  sub_1E60484F0(v71, v75 + v58, v152);
  v152 = v74;
  sub_1E5FAB460(v72, v74 + v75, &qword_1ED073958, &qword_1E65EDCD0);
  v76 = v187;
  v77 = *(v187 + 16);
  v78 = v156;
  v79 = v157;
  v77(v156, v70, v157);
  v80 = (*(v76 + 80) + 16) & ~*(v76 + 80);
  v154 = swift_allocObject();
  v81 = *(v76 + 32);
  v81(v154 + v80, v78, v79);
  v82 = v158;
  v83 = v185;
  v77(v158, v185, v79);
  v156 = swift_allocObject();
  v81(&v156[v80], v82, v79);
  v84 = v160;
  v85 = v83;
  v77(v160, v83, v79);
  v86 = swift_allocObject();
  v81(v86 + v80, v84, v79);
  v87 = v162;
  v88 = sub_1E604CB00();
  sub_1E5FED46C(&qword_1EE2D68D0, &qword_1ED077CE0, &unk_1E65F72C0, MEMORY[0x1E699CAF8]);
  v89 = v163;
  v90 = v174;
  sub_1E65DE8A8();
  (*(v187 + 8))(v85, v79);
  sub_1E5DFE50C(v189, &qword_1ED073958, &qword_1E65EDCD0);
  sub_1E622D590(v90);
  sub_1E61845B4(v89);
  if ((*(v87 + 48))(v89, 1, v164) == 1)
  {
    sub_1E5DFE50C(v90, &qword_1ED073958, &qword_1E65EDCD0);
    sub_1E5DFE50C(v89, &qword_1ED073938, &unk_1E65F72A0);
    v91 = 1;
    v92 = v169;
  }

  else
  {
    v93 = v135;
    v94 = v168;
    sub_1E5FAB460(v89, v168, &qword_1ED073940, &qword_1E65EDCC8);
    v186 = type metadata accessor for AppComposer;
    v95 = v182;
    sub_1E6048734(v190, v182, type metadata accessor for AppComposer);
    v96 = v142;
    sub_1E5DFD1CC(v94, v142, &qword_1ED073940, &qword_1E65EDCC8);
    v187 = v88;
    v98 = v180;
    v97 = v181;
    v138(v180, v183, v181);
    v99 = (v175 + *(v87 + 80)) & ~*(v87 + 80);
    v100 = v99 + v141;
    v101 = (v93 + v99 + v141 + 1) & ~v93;
    v102 = (v133 + v101) & 0xFFFFFFFFFFFFFFF8;
    v103 = swift_allocObject();
    v185 = type metadata accessor for AppComposer;
    sub_1E60484F0(v95, v103 + v161, type metadata accessor for AppComposer);
    sub_1E5FAB460(v96, v103 + v99, &qword_1ED073940, &qword_1E65EDCC8);
    *(v103 + v100) = 0;
    v134(v103 + v101, v98, v97);
    v104 = (v103 + v102);
    v105 = v184;
    v106 = *(v184 + 3);
    v104[2] = *(v184 + 2);
    v104[3] = v106;
    v104[4] = *(v105 + 4);
    v107 = *(v105 + 1);
    *v104 = *v105;
    v104[1] = v107;
    swift_unknownObjectRetain();

    v108 = v146;
    sub_1E65DE528();
    sub_1E6048734(v190, v95, v186);
    v109 = v189;
    sub_1E5DFD1CC(v90, v189, &qword_1ED073958, &qword_1E65EDCD0);
    v110 = swift_allocObject();
    v190 = v110;
    sub_1E60484F0(v95, v110 + v161, v185);
    sub_1E5FAB460(v109, v152 + v110, &qword_1ED073958, &qword_1E65EDCD0);
    v111 = v171;
    v112 = *(v171 + 16);
    v113 = v143;
    v114 = v147;
    v112(v143, v108, v147);
    v115 = (*(v111 + 80) + 16) & ~*(v111 + 80);
    v189 = swift_allocObject();
    v116 = *(v111 + 32);
    v116(v189 + v115, v113, v114);
    v112(v113, v108, v114);
    v186 = swift_allocObject();
    v116(v186 + v115, v113, v114);
    v117 = v145;
    v112(v145, v108, v114);
    v118 = swift_allocObject();
    v116(v118 + v115, v117, v114);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073980, &qword_1E65EDCE8);
    sub_1E604DE38();
    sub_1E5FED46C(&qword_1EE2D68C8, &qword_1ED073930, &qword_1E65EDCC0, MEMORY[0x1E699CB00]);
    v119 = v169;
    sub_1E65DE8A8();
    (*(v171 + 8))(v108, v114);
    sub_1E5DFE50C(v168, &qword_1ED073940, &qword_1E65EDCC8);
    sub_1E5DFE50C(v174, &qword_1ED073958, &qword_1E65EDCD0);
    v91 = 0;
    v92 = v119;
  }

  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073970, &unk_1E65F72E0);
  (*(*(v120 - 8) + 56))(v92, v91, 1, v120);
  v121 = v170;
  sub_1E5FAB460(v92, v170, &qword_1ED073948, &unk_1E65F72B0);
  v122 = v166;
  v123 = *(v166 + 16);
  v124 = v165;
  v125 = v188;
  v126 = v167;
  v123(v165, v188, v167);
  v127 = v172;
  sub_1E5DFD1CC(v121, v172, &qword_1ED073948, &unk_1E65F72B0);
  v128 = v173;
  v123(v173, v124, v126);
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073978, &qword_1E65EDCE0);
  sub_1E5DFD1CC(v127, &v128[*(v129 + 48)], &qword_1ED073948, &unk_1E65F72B0);
  sub_1E5DFE50C(v121, &qword_1ED073948, &unk_1E65F72B0);
  v130 = *(v122 + 8);
  v130(v125, v126);
  sub_1E5DFE50C(v127, &qword_1ED073948, &unk_1E65F72B0);
  return (v130)(v124, v126);
}

uint64_t sub_1E604787C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0776B0, &unk_1E65EDE50);
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v15 - v1;
  v3 = sub_1E65E4548();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1E65E49F8();
  sub_1E65E4498();
  sub_1E65E44B8();

  (*(v4 + 104))(v6, *MEMORY[0x1E6980EA8], v3);
  v8 = sub_1E65E4578();

  (*(v4 + 8))(v6, v3);
  KeyPath = swift_getKeyPath();
  [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
  v10 = sub_1E65E4968();
  v11 = swift_getKeyPath();
  if (UIAccessibilityButtonShapesEnabled())
  {
    sub_1E65E4BA8();
  }

  else
  {
    sub_1E65E4BB8();
  }

  sub_1E65E3E38();
  *&v15 = v7;
  *(&v15 + 1) = KeyPath;
  *&v16 = v8;
  *(&v16 + 1) = v11;
  *&v17 = v10;
  BYTE8(v23[1]) = 0;
  v12 = *MEMORY[0x1E697E6E8];
  v13 = sub_1E65E3DD8();
  (*(*(v13 - 8) + 104))(v2, v12, v13);
  sub_1E604FBB0(&qword_1EE2D4EF0, MEMORY[0x1E697E730], MEMORY[0x1E697E750]);
  result = sub_1E65E5B98();
  if (result)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073898, &qword_1E65EDC38);
    sub_1E604C440();
    sub_1E5FED46C(&qword_1EE2D4460, &unk_1ED0776B0, &unk_1E65EDE50, MEMORY[0x1E69E6ED8]);
    sub_1E65E4848();
    sub_1E5DFE50C(v2, &unk_1ED0776B0, &unk_1E65EDE50);
    v24[6] = v21;
    v24[7] = v22;
    v25[0] = v23[0];
    *(v25 + 9) = *(v23 + 9);
    v24[2] = v17;
    v24[3] = v18;
    v24[4] = v19;
    v24[5] = v20;
    v24[0] = v15;
    v24[1] = v16;
    return sub_1E5DFE50C(v24, &qword_1ED073898, &qword_1E65EDC38);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E6047C5C@<X0>(uint64_t a4@<X8>)
{
  v41 = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073998, &qword_1E65EDD08);
  v5 = *(v4 - 8);
  v39 = v4;
  v40 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v33 = &v30 - v6;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0739A0, &qword_1E65EDD10);
  v38 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v8 = &v30 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CF0, &unk_1E65F7110);
  v10 = *(v9 - 8);
  v36 = v9;
  v37 = v10;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v30 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0739A8, &qword_1E65F7120);
  v35 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v30 - v14;
  v16 = sub_1E65DED98();
  v34 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_1E65DED88();
  sub_1E604BABC();

  sub_1E65DEE28();
  sub_1E604C89C();

  sub_1E65DE568();
  v19 = sub_1E604FBB0(&qword_1EE2D6818, MEMORY[0x1E699CDB0], MEMORY[0x1E699CDA8]);
  v31 = v16;
  MEMORY[0x1E69482C0](v18, v16, v19);
  v42 = v16;
  v43 = v19;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v21 = sub_1E5FED46C(&qword_1EE2D6810, &qword_1ED0739A8, &qword_1E65F7120, MEMORY[0x1E699CDD8]);
  v22 = v33;
  v23 = v8;
  v24 = v32;
  v25 = v13;
  sub_1E65E08A8();
  v42 = v24;
  v43 = v13;
  v44 = OpaqueTypeConformance2;
  v45 = v21;
  swift_getOpaqueTypeConformance2();
  sub_1E5FED46C(&qword_1EE2D68A8, &unk_1ED077CF0, &unk_1E65F7110, MEMORY[0x1E699CB30]);
  v26 = v12;
  v27 = v39;
  v28 = v36;
  sub_1E65E08A8();
  (*(v40 + 8))(v22, v27);
  (*(v38 + 8))(v23, v24);
  (*(v37 + 8))(v26, v28);
  (*(v35 + 8))(v15, v25);
  return (*(v34 + 8))(v18, v31);
}

uint64_t sub_1E60481B8@<X0>(char *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_1E604FBF8((a1 + 8), (a2 + 8));
  *a2 = v3;
  return result;
}

uint64_t sub_1E60481E8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E65E3ED8();
  *a1 = result;
  return result;
}

uint64_t sub_1E60482E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = a5(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1);
  return a6(v10);
}

uint64_t sub_1E60483B0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E65E3EA8();
  *a1 = result;
  return result;
}

uint64_t sub_1E6048408(int *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(int *, uint64_t))
{
  v4 = *a1;
  v5 = *(a1 + 6);
  v8 = *(a1 + 2);
  v7 = v4;
  v9 = v5;
  return a4(&v7, a3);
}

uint64_t sub_1E6048458()
{
  v1 = *(type metadata accessor for PageMetricsClick(0) - 8);
  v2 = (*(v1 + 80) + 96) & ~*(v1 + 80);
  v3 = v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8);

  return sub_1E6041870((v0 + 16), v0 + v2, v3);
}

uint64_t sub_1E60484F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E6048558()
{
  v1 = *(type metadata accessor for GalleryDescriptor(0) - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(type metadata accessor for AppComposer(0) - 8);
  v5 = (v3 + *(v4 + 80) + 80) & ~*(v4 + 80);
  v6 = *(v0 + 16);
  v7 = *(v0 + 24);
  v8 = v0 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8);

  return sub_1E603FE3C(v6, v7, v0 + v2, (v0 + v3), v0 + v5, v8);
}

unint64_t sub_1E6048670()
{
  result = qword_1EE2D4B50;
  if (!qword_1EE2D4B50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0737B0, &qword_1E65EDA30);
    sub_1E5FED46C(&qword_1EE2D4B68, &qword_1ED0737B8, &qword_1E65EDA38, MEMORY[0x1E69817F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D4B50);
  }

  return result;
}

uint64_t sub_1E6048734(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E604879C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E60487FC()
{
  v1 = *(type metadata accessor for PageMetricsClick(0) - 8);
  v2 = *(v0 + 64);
  v3 = *(v0 + 72);
  v4 = *(v0 + 16);
  v5 = v0 + ((*(v1 + 80) + 160) & ~*(v1 + 80));

  return sub_1E603DF44(v4, v0 + 24, v2, v3, (v0 + 80), v5);
}

uint64_t sub_1E6048888@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppComposer(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);

  return sub_1E603D178((v1 + v4), v1 + (v5 & 0xFFFFFFFFFFFFFFF8) + 8, (v1 + (((v5 & 0xFFFFFFFFFFFFFFF8) + 55) & 0xFFFFFFFFFFFFFFF8)), a1);
}

uint64_t sub_1E604895C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppComposer(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0736B0, &unk_1E65F8480) - 8);
  v7 = (v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(sub_1E65D76F8() - 8);
  v10 = (v8 + *(v9 + 80) + 8) & ~*(v9 + 80);
  v11 = (*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v11 + 47) & 0xFFFFFFFFFFFFFFF8;
  v13 = *(sub_1E65DEC18() - 8);
  v14 = (v12 + *(v13 + 80) + 80) & ~*(v13 + 80);
  v15 = *(v1 + v8);
  v16 = v1 + ((*(v13 + 64) + v14 + 7) & 0xFFFFFFFFFFFFFFF8);

  return sub_1E62D1820(v1 + v4, v1 + v7, v15, v1 + v10, v1 + v11, (v1 + v12), v1 + v14, v16, a1);
}

unint64_t sub_1E6048B5C()
{
  result = qword_1ED0737F8;
  if (!qword_1ED0737F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0737F0, &qword_1E65EDA58);
    sub_1E604FBB0(&qword_1EE2D6890, MEMORY[0x1E699CC00], MEMORY[0x1E699CBF8]);
    sub_1E5FED46C(&unk_1EE2D4BF0, &qword_1ED073778, &qword_1E6600D60, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0737F8);
  }

  return result;
}

unint64_t sub_1E6048C44()
{
  result = qword_1ED073800;
  if (!qword_1ED073800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED073800);
  }

  return result;
}

uint64_t sub_1E6048C98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(type metadata accessor for AppComposer(0) - 8);
  v9 = (*(v8 + 80) + 24) & ~*(v8 + 80);
  v10 = (*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v3 + 16);
  v12 = swift_task_alloc();
  *(v4 + 16) = v12;
  *v12 = v4;
  v12[1] = sub_1E5DFE6BC;

  return sub_1E611D1D0(a1, a2, a3, v11, v3 + v9, v3 + v10);
}

uint64_t sub_1E6048DC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(type metadata accessor for AppComposer(0) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_1E5FEE4D4;

  return sub_1E611E4AC(a1, a2, a3, v3 + v9);
}

uint64_t sub_1E6048EB4()
{
  v2 = *(type metadata accessor for AppComposer(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1E5DFE6BC;

  return sub_1E611E778(v0 + v3);
}

uint64_t sub_1E6048F80()
{
  v2 = *(type metadata accessor for AppComposer(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1E5DFE6BC;

  return sub_1E611E8AC(v0 + v3);
}

uint64_t sub_1E604904C(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E611E9F4(a1, v1 + v5);
}

uint64_t sub_1E6049124()
{
  v2 = *(type metadata accessor for AppComposer(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1E5DFE6BC;

  return sub_1E611EEE4(v0 + v3);
}

uint64_t sub_1E6049208()
{
  v1 = *(sub_1E65D74E8() - 8);
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);
  v4 = v0 + ((*(v1 + 80) + 72) & ~*(v1 + 80));

  return sub_1E603C8B4(v0 + 16, v2, v3, v4);
}

uint64_t sub_1E6049270@<X0>(uint64_t a2@<X8>)
{
  result = sub_1E65D7238();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  *(a2 + 24) = v6;
  return result;
}

uint64_t sub_1E60492A8()
{
  v1 = *(type metadata accessor for AppComposer(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 47) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073718, &qword_1E65ED978) - 8);
  v6 = (v4 + *(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_1E6169B70((v0 + v2), v0 + v3, *(v0 + v4), *(v0 + v4 + 8), v0 + v6, *(v0 + v7), *(v0 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), (v0 + ((((v7 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_1E60493E8()
{
  v1 = *(type metadata accessor for AppComposer(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 47) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v0 + v4);
  v7 = *v6;
  v8 = v6[1];

  return sub_1E600F5B8((v0 + v2), v0 + v3, v7, v8, (v0 + v5));
}

unint64_t sub_1E6049490()
{
  result = qword_1EE2D4510;
  if (!qword_1EE2D4510)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE2D4510);
  }

  return result;
}

uint64_t sub_1E60494DC(uint64_t a1)
{
  v4 = *(sub_1E65D74E8() - 8);
  v5 = (*(v4 + 80) + 88) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[9];
  v9 = v1[10];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1E5DFE6BC;

  return sub_1E603CADC(a1, v6, v7, (v1 + 4), v8, v9, v1 + v5);
}

uint64_t sub_1E60495E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(type metadata accessor for AppComposer(0) - 8);
  v9 = (*(v8 + 80) + 24) & ~*(v8 + 80);
  v10 = (*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v3 + 16);
  v12 = swift_task_alloc();
  *(v4 + 16) = v12;
  *v12 = v4;
  v12[1] = sub_1E5DFA78C;

  return sub_1E611D1D0(a1, a2, a3, v11, v3 + v9, v3 + v10);
}

uint64_t sub_1E6049710(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(type metadata accessor for AppComposer(0) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_1E5FE99E8;

  return sub_1E611E4AC(a1, a2, a3, v3 + v9);
}

uint64_t sub_1E6049800(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFA78C;

  return sub_1E611E9F4(a1, v1 + v5);
}

uint64_t objectdestroy_52Tm_0()
{
  v1 = sub_1E65E1518();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v97 = type metadata accessor for AppComposer(0);
  v96 = *(*(v97 - 1) + 80);
  (*(v2 + 8))(v0 + v3, v1);
  v93 = v0 + ((v3 + v4 + v96) & ~v96);

  v5 = v93 + v97[5];
  swift_unknownObjectRelease();
  v6 = type metadata accessor for AppEnvironment(0);
  v7 = v6[6];
  v95 = type metadata accessor for AccountService();
  v94 = *(v95[-1].Description + 1);
  v94(v5 + v7, v95);
  v8 = v6[7];
  v92 = type metadata accessor for AppStateService();
  v91 = *(v92[-1].Description + 1);
  v91(v5 + v8, v92);
  v9 = v6[8];
  v90 = type metadata accessor for ArchivedSessionService();
  v89 = *(v90[-1].Description + 1);
  v89(v5 + v9, v90);
  v10 = v6[9];
  v88 = type metadata accessor for AssetService();
  v87 = *(v88[-1].Description + 1);
  v87(v5 + v10, v88);
  v11 = v6[10];
  v86 = type metadata accessor for AwardsService();
  v85 = *(v86[-1].Description + 1);
  v85(v5 + v11, v86);
  v12 = v6[11];
  v84 = type metadata accessor for BookmarkService();
  v83 = *(v84[-1].Description + 1);
  v83(v5 + v12, v84);
  v13 = v6[12];
  v82 = type metadata accessor for CatalogService();
  v81 = *(v82[-1].Description + 1);
  v81(v5 + v13, v82);
  v14 = v6[13];
  v80 = type metadata accessor for ConfigurationService();
  v79 = *(v80[-1].Description + 1);
  v79(v5 + v14, v80);
  v15 = v6[14];
  v78 = type metadata accessor for ContentAvailabilityService();
  v77 = *(v78[-1].Description + 1);
  v77(v5 + v15, v78);
  v16 = v6[15];
  v76 = type metadata accessor for EngagementService();
  v75 = *(v76[-1].Description + 1);
  v75(v5 + v16, v76);
  v17 = v6[16];
  v74 = type metadata accessor for HealthDataService();
  v73 = *(v74[-1].Description + 1);
  v73(v5 + v17, v74);
  v18 = v6[17];
  v72 = type metadata accessor for InteropService();
  v71 = *(v72[-1].Description + 1);
  v71(v5 + v18, v72);
  v19 = v6[18];
  v70 = type metadata accessor for LocalizationService();
  v69 = *(v70[-1].Description + 1);
  v69(v5 + v19, v70);
  v20 = v6[19];
  v68 = type metadata accessor for MarketingService();
  v67 = *(v68[-1].Description + 1);
  v67(v5 + v20, v68);
  v21 = v6[20];
  v66 = type metadata accessor for MetricService();
  v65 = *(v66[-1].Description + 1);
  v65(v5 + v21, v66);
  v22 = v6[21];
  v64 = type metadata accessor for PersonalizationService();
  v63 = *(v64[-1].Description + 1);
  v63(v5 + v22, v64);
  v23 = v6[22];
  v62 = type metadata accessor for PlayerService();
  v61 = *(v62[-1].Description + 1);
  v61(v5 + v23, v62);
  v24 = v6[23];
  v60 = type metadata accessor for PrivacyPreferenceService();
  v59 = *(v60[-1].Description + 1);
  v59(v5 + v24, v60);
  v25 = v6[24];
  v58 = type metadata accessor for RecommendationService();
  v57 = *(v58[-1].Description + 1);
  v57(v5 + v25, v58);
  v26 = v6[25];
  v56 = type metadata accessor for RemoteBrowsingService();
  v55 = *(v56[-1].Description + 1);
  v55(v5 + v26, v56);
  v27 = v6[26];
  v54 = type metadata accessor for SearchService();
  v53 = *(v54[-1].Description + 1);
  v53(v5 + v27, v54);
  v28 = v6[27];
  v52 = type metadata accessor for ServiceSubscriptionService();
  v51 = *(v52[-1].Description + 1);
  v51(v5 + v28, v52);
  v29 = v6[28];
  v45 = type metadata accessor for SessionService();
  v50 = *(v45[-1].Description + 1);
  v50(v5 + v29, v45);
  v30 = v6[29];
  v31 = type metadata accessor for SharePlayService();
  v49 = *(v31[-1].Description + 1);
  v49(v5 + v30, v31);
  v32 = v6[30];
  v33 = type metadata accessor for SiriService();
  v48 = *(v33[-1].Description + 1);
  v48(v5 + v32, v33);
  v34 = v6[31];
  v35 = type metadata accessor for SyncService();
  v47 = *(v35[-1].Description + 1);
  v47(v5 + v34, v35);

  v36 = v6[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v46 = *(QueueService[-1].Description + 1);
  v46(v5 + v36, QueueService);
  __swift_destroy_boxed_opaque_existential_1((v5 + v6[34]));

  v38 = v6[36];
  v39 = type metadata accessor for WorkoutPlanService();
  v44 = *(v39[-1].Description + 1);
  v44(v5 + v38, v39);

  v40 = v93 + v97[7];

  v41 = v40 + *(type metadata accessor for AppDataItemResolver(0) + 24);
  swift_unknownObjectRelease();
  v94(v41 + v6[6], v95);
  v91(v41 + v6[7], v92);
  v89(v41 + v6[8], v90);
  v87(v41 + v6[9], v88);
  v85(v41 + v6[10], v86);
  v83(v41 + v6[11], v84);
  v81(v41 + v6[12], v82);
  v79(v41 + v6[13], v80);
  v77(v41 + v6[14], v78);
  v75(v41 + v6[15], v76);
  v73(v41 + v6[16], v74);
  v71(v41 + v6[17], v72);
  v69(v41 + v6[18], v70);
  v67(v41 + v6[19], v68);
  v65(v41 + v6[20], v66);
  v63(v41 + v6[21], v64);
  v61(v41 + v6[22], v62);
  v59(v41 + v6[23], v60);
  v57(v41 + v6[24], v58);
  v55(v41 + v6[25], v56);
  v53(v41 + v6[26], v54);
  v51(v41 + v6[27], v52);
  v50(v41 + v6[28], v45);
  v49(v41 + v6[29], v31);
  v48(v41 + v6[30], v33);
  v47(v41 + v6[31], v35);

  v46(v41 + v6[33], QueueService);
  __swift_destroy_boxed_opaque_existential_1((v41 + v6[34]));

  v44(v41 + v6[36], v39);
  swift_unknownObjectRelease();
  if (*(v93 + v97[9] + 8) >= 0xCuLL)
  {
  }

  v42 = (v93 + v97[10]);
  if (v42[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v42);
  }

  return swift_deallocObject();
}

uint64_t sub_1E604A624@<X0>(uint64_t x8_0@<X8>)
{
  v4 = *(sub_1E65E1518() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v7 = *(type metadata accessor for AppComposer(0) - 8);
  v8 = v2 + ((v5 + v6 + *(v7 + 80)) & ~*(v7 + 80));

  return sub_1E611F02C(v2 + v5, v8, x8_0);
}

uint64_t sub_1E604A708(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(type metadata accessor for AppComposer(0) - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = (v3 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1E611FC5C(a1, a2, a3, v3 + v8, v9);
}

uint64_t objectdestroy_58Tm()
{
  v96 = type metadata accessor for AppComposer(0);
  v94 = *(*(v96 - 1) + 80);
  v92 = *(*(v96 - 1) + 64);
  v93 = (v94 + 16) & ~v94;
  v95 = v0;
  v89 = v0 + v93;

  v1 = v0 + v93 + v96[5];
  swift_unknownObjectRelease();
  v2 = type metadata accessor for AppEnvironment(0);
  v3 = v2[6];
  v91 = type metadata accessor for AccountService();
  v90 = *(v91[-1].Description + 1);
  v90(v1 + v3, v91);
  v4 = v2[7];
  v88 = type metadata accessor for AppStateService();
  v87 = *(v88[-1].Description + 1);
  v87(v1 + v4, v88);
  v5 = v2[8];
  v86 = type metadata accessor for ArchivedSessionService();
  v85 = *(v86[-1].Description + 1);
  v85(v1 + v5, v86);
  v6 = v2[9];
  v84 = type metadata accessor for AssetService();
  v83 = *(v84[-1].Description + 1);
  v83(v1 + v6, v84);
  v7 = v2[10];
  v82 = type metadata accessor for AwardsService();
  v81 = *(v82[-1].Description + 1);
  v81(v1 + v7, v82);
  v8 = v2[11];
  v80 = type metadata accessor for BookmarkService();
  v79 = *(v80[-1].Description + 1);
  v79(v1 + v8, v80);
  v9 = v2[12];
  v78 = type metadata accessor for CatalogService();
  v77 = *(v78[-1].Description + 1);
  v77(v1 + v9, v78);
  v10 = v2[13];
  v76 = type metadata accessor for ConfigurationService();
  v75 = *(v76[-1].Description + 1);
  v75(v1 + v10, v76);
  v11 = v2[14];
  v74 = type metadata accessor for ContentAvailabilityService();
  v73 = *(v74[-1].Description + 1);
  v73(v1 + v11, v74);
  v12 = v2[15];
  v72 = type metadata accessor for EngagementService();
  v71 = *(v72[-1].Description + 1);
  v71(v1 + v12, v72);
  v13 = v2[16];
  v70 = type metadata accessor for HealthDataService();
  v69 = *(v70[-1].Description + 1);
  v69(v1 + v13, v70);
  v14 = v2[17];
  v68 = type metadata accessor for InteropService();
  v67 = *(v68[-1].Description + 1);
  v67(v1 + v14, v68);
  v15 = v2[18];
  v66 = type metadata accessor for LocalizationService();
  v65 = *(v66[-1].Description + 1);
  v65(v1 + v15, v66);
  v16 = v2[19];
  v64 = type metadata accessor for MarketingService();
  v63 = *(v64[-1].Description + 1);
  v63(v1 + v16, v64);
  v17 = v2[20];
  v62 = type metadata accessor for MetricService();
  v61 = *(v62[-1].Description + 1);
  v61(v1 + v17, v62);
  v18 = v2[21];
  v60 = type metadata accessor for PersonalizationService();
  v59 = *(v60[-1].Description + 1);
  v59(v1 + v18, v60);
  v19 = v2[22];
  v58 = type metadata accessor for PlayerService();
  v57 = *(v58[-1].Description + 1);
  v57(v1 + v19, v58);
  v20 = v2[23];
  v56 = type metadata accessor for PrivacyPreferenceService();
  v55 = *(v56[-1].Description + 1);
  v55(v1 + v20, v56);
  v21 = v2[24];
  v54 = type metadata accessor for RecommendationService();
  v53 = *(v54[-1].Description + 1);
  v53(v1 + v21, v54);
  v22 = v2[25];
  v52 = type metadata accessor for RemoteBrowsingService();
  v51 = *(v52[-1].Description + 1);
  v51(v1 + v22, v52);
  v23 = v2[26];
  v50 = type metadata accessor for SearchService();
  v49 = *(v50[-1].Description + 1);
  v49(v1 + v23, v50);
  v24 = v2[27];
  v48 = type metadata accessor for ServiceSubscriptionService();
  v47 = *(v48[-1].Description + 1);
  v47(v1 + v24, v48);
  v25 = v2[28];
  v41 = type metadata accessor for SessionService();
  v46 = *(v41[-1].Description + 1);
  v46(v1 + v25, v41);
  v26 = v2[29];
  v27 = type metadata accessor for SharePlayService();
  v45 = *(v27[-1].Description + 1);
  v45(v1 + v26, v27);
  v28 = v2[30];
  v29 = type metadata accessor for SiriService();
  v44 = *(v29[-1].Description + 1);
  v44(v1 + v28, v29);
  v30 = v2[31];
  v31 = type metadata accessor for SyncService();
  v43 = *(v31[-1].Description + 1);
  v43(v1 + v30, v31);

  v32 = v2[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v42 = *(QueueService[-1].Description + 1);
  v42(v1 + v32, QueueService);
  __swift_destroy_boxed_opaque_existential_1((v1 + v2[34]));

  v34 = v2[36];
  v35 = type metadata accessor for WorkoutPlanService();
  v40 = *(v35[-1].Description + 1);
  v40(v1 + v34, v35);

  v36 = v89 + v96[7];

  v37 = v36 + *(type metadata accessor for AppDataItemResolver(0) + 24);
  swift_unknownObjectRelease();
  v90(v37 + v2[6], v91);
  v87(v37 + v2[7], v88);
  v85(v37 + v2[8], v86);
  v83(v37 + v2[9], v84);
  v81(v37 + v2[10], v82);
  v79(v37 + v2[11], v80);
  v77(v37 + v2[12], v78);
  v75(v37 + v2[13], v76);
  v73(v37 + v2[14], v74);
  v71(v37 + v2[15], v72);
  v69(v37 + v2[16], v70);
  v67(v37 + v2[17], v68);
  v65(v37 + v2[18], v66);
  v63(v37 + v2[19], v64);
  v61(v37 + v2[20], v62);
  v59(v37 + v2[21], v60);
  v57(v37 + v2[22], v58);
  v55(v37 + v2[23], v56);
  v53(v37 + v2[24], v54);
  v51(v37 + v2[25], v52);
  v49(v37 + v2[26], v50);
  v47(v37 + v2[27], v48);
  v46(v37 + v2[28], v41);
  v45(v37 + v2[29], v27);
  v44(v37 + v2[30], v29);
  v43(v37 + v2[31], v31);

  v42(v37 + v2[33], QueueService);
  __swift_destroy_boxed_opaque_existential_1((v37 + v2[34]));

  v40(v37 + v2[36], v35);
  swift_unknownObjectRelease();
  if (*(v89 + v96[9] + 8) >= 0xCuLL)
  {
  }

  v38 = (v89 + v96[10]);
  if (v38[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v38);
  }

  __swift_destroy_boxed_opaque_existential_1((v95 + ((v92 + v93 + 7) & 0xFFFFFFFFFFFFFFF8)));

  return swift_deallocObject();
}

uint64_t sub_1E604B49C(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for AppComposer(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8);

  return sub_1E611FC88(a1, a2, v2 + v6, v7);
}

uint64_t objectdestroy_61Tm()
{
  v1 = sub_1E65E1168();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1E604B5EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v7 = a5;
  v13 = *(sub_1E65E1168() - 8);
  v14 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v15 = *(v6 + ((*(v13 + 64) + v14 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1E611FE08(a1, a2, a3, a4, v7, v6 + v14, v15, a6);
}

uint64_t sub_1E604B6C8(uint64_t a1)
{
  type metadata accessor for PageMetricsClick(0);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 80);
  v7 = *(v1 + 88);
  v8 = *(v1 + 32);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1E5DFE6BC;

  return sub_1E603E1DC(a1, v4, v5, v8, v1 + 40, v6, v7, v1 + 96);
}

uint64_t sub_1E604B7EC(uint64_t a1)
{
  v3 = *(type metadata accessor for GalleryDescriptor(0) - 8);
  v4 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(type metadata accessor for AppComposer(0) - 8);
  v7 = (v5 + *(v6 + 80) + 80) & ~*(v6 + 80);
  v8 = v1[2];
  v9 = v1[3];
  v10 = v1[4];
  v11 = v1[5];
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_1E5DFE6BC;

  return sub_1E60401B4(a1, v8, v9, v10, v11, v1 + v4, v1 + v5, v1 + v7);
}

uint64_t sub_1E604B99C(uint64_t a1)
{
  v4 = *(type metadata accessor for PageMetricsClick(0) - 8);
  v5 = (*(v4 + 80) + 112) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1E5DFE6BC;

  return sub_1E6041AEC(a1, v7, v8, v1 + 32, v1 + v5, v1 + v6);
}

unint64_t sub_1E604BABC()
{
  result = qword_1EE2D96B0;
  if (!qword_1EE2D96B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D96B0);
  }

  return result;
}

uint64_t sub_1E604BB10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072AA8, &unk_1E65FA900) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_1E65D76F8() - 8);
  v9 = v2 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80));
  v10 = *(v9 + *(v8 + 64));

  return sub_1E6001280(a1, v9, v10, a2);
}

uint64_t sub_1E604BC48(unsigned int *a1, uint64_t a2)
{
  v5 = *(type metadata accessor for AppComposer(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072AA8, &unk_1E65FA900);

  return sub_1E6001970(a1, a2, v2 + v6, (v2 + v7));
}

uint64_t sub_1E604BD48(int *a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 16);
  v5 = *a1;
  v6 = *(a1 + 6);
  v9 = *(a1 + 2);
  v8 = v5;
  v10 = v6;
  return v4(&v8, a3);
}

uint64_t sub_1E604BD98(uint64_t a1, uint64_t a2)
{
  v6 = *(type metadata accessor for AppComposer(0) - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1E604BE78;

  return sub_1E62D41D0(a1, a2, v2 + v7);
}

uint64_t sub_1E604BE78(double a1)
{
  v6 = *v1;

  v3 = *(v6 + 8);
  v4.n128_f64[0] = a1;

  return v3(v4);
}

uint64_t sub_1E604BF74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(type metadata accessor for AppComposer(0) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_1E5DFE6BC;

  return sub_1E62D4E8C(a1, a2, a3, v3 + v9);
}

uint64_t sub_1E604C068@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073858, &unk_1E65F84A0) - 8);
  v6 = (*(v5 + 64) + ((*(v5 + 80) + 16) & ~*(v5 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(sub_1E65D76F8() - 8);
  v8 = *(v2 + v6);
  v9 = v2 + ((v6 + *(v7 + 80) + 8) & ~*(v7 + 80));

  return sub_1E62D5C3C(a1, v8, v9, a2);
}

uint64_t sub_1E604C190(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8);
  v9 = v5 + ((*(v8 + 80) + 16) & ~*(v8 + 80));

  return a5(a1, a2, v9);
}

uint64_t sub_1E604C228(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for AppComposer(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(sub_1E65DEC18() - 8);
  v9 = v2 + ((v7 + *(v8 + 80) + 80) & ~*(v8 + 80));

  return sub_1E62D6014(a1, a2, v2 + v6, (v2 + v7), v9);
}

uint64_t sub_1E604C31C(char a1)
{
  v3 = *(type metadata accessor for AppComposer(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073648, &qword_1E6607560) - 8);
  v7 = (v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = (v1 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1E6044960(a1, v1 + v4, v1 + v7, v8);
}

unint64_t sub_1E604C440()
{
  result = qword_1ED0738A0;
  if (!qword_1ED0738A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED073898, &qword_1E65EDC38);
    sub_1E604C4F8();
    sub_1E5FED46C(&qword_1ED0738D0, &qword_1ED0738D8, &qword_1E65EDC50, MEMORY[0x1E697FD58]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0738A0);
  }

  return result;
}

unint64_t sub_1E604C4F8()
{
  result = qword_1ED0738A8;
  if (!qword_1ED0738A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0738B0, &qword_1E65EDC40);
    sub_1E604C584();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0738A8);
  }

  return result;
}

unint64_t sub_1E604C584()
{
  result = qword_1ED0738B8;
  if (!qword_1ED0738B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ED077D80, &qword_1E65EDC48);
    sub_1E604C63C();
    sub_1E5FED46C(&qword_1EE2D4BE0, &qword_1ED0738C8, &qword_1E65EDF20, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0738B8);
  }

  return result;
}

unint64_t sub_1E604C63C()
{
  result = qword_1ED077D90;
  if (!qword_1ED077D90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0738C0, &unk_1E65FAB20);
    sub_1E5FED46C(&qword_1EE2D4BE8, &unk_1ED0779E0, &qword_1E65EC400, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED077D90);
  }

  return result;
}

uint64_t sub_1E604C73C()
{
  v1 = *(type metadata accessor for AppComposer(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = v2 + *(v1 + 64);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0776E0, &qword_1E65EDC00) - 8);
  v5 = (v3 + *(v4 + 80)) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v7 = *(sub_1E65D76F8() - 8);
  v8 = (v5 + v6 + *(v7 + 80)) & ~*(v7 + 80);
  v9 = (v0 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1E6201608(v0 + v2, v0 + v5, v0 + v8, v9);
}

unint64_t sub_1E604C89C()
{
  result = qword_1EE2D96A0;
  if (!qword_1EE2D96A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D96A0);
  }

  return result;
}

uint64_t sub_1E604C8F0()
{
  v1 = *(type metadata accessor for AppComposer(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = v2 + *(v1 + 64);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073950, &unk_1E65F4360) - 8);
  v5 = (v3 + *(v4 + 80)) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v7 = *(sub_1E65D76F8() - 8);
  v8 = (v5 + v6 + *(v7 + 80)) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v0 + ((v9 + 87) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return sub_1E6493344((v0 + v2), v0 + v5, v0 + v8, (v0 + v9), v11, v12);
}

unint64_t sub_1E604CB00()
{
  result = qword_1EE2D96B8[0];
  if (!qword_1EE2D96B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE2D96B8);
  }

  return result;
}

uint64_t sub_1E604CB54()
{
  v1 = *(type metadata accessor for AppComposer(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = v2 + *(v1 + 64);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073940, &qword_1E65EDCC8) - 8);
  v5 = (v3 + *(v4 + 80)) & ~*(v4 + 80);
  v6 = v5 + *(v4 + 64);
  v7 = *(sub_1E65D76F8() - 8);
  v8 = (v6 + *(v7 + 80) + 1) & ~*(v7 + 80);
  v9 = *(v0 + v6);
  v10 = (v0 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1E61358C0((v0 + v2), v0 + v5, v9, v0 + v8, v10);
}

uint64_t objectdestroy_250Tm()
{
  v108 = type metadata accessor for AppComposer(0);
  v106 = *(*(v108 - 1) + 80);
  v1 = (v106 + 16) & ~v106;
  v2 = v1 + *(*(v108 - 1) + 64);
  v105 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073958, &qword_1E65EDCD0) - 8) + 80);
  v104 = v2 + v105;
  v107 = v0;
  v101 = v0 + v1;

  v3 = v0 + v1 + v108[5];
  swift_unknownObjectRelease();
  v4 = type metadata accessor for AppEnvironment(0);
  v5 = v4[6];
  v103 = type metadata accessor for AccountService();
  v102 = *(v103[-1].Description + 1);
  v102(v3 + v5, v103);
  v6 = v4[7];
  v100 = type metadata accessor for AppStateService();
  v99 = *(v100[-1].Description + 1);
  v99(v3 + v6, v100);
  v7 = v4[8];
  v98 = type metadata accessor for ArchivedSessionService();
  v97 = *(v98[-1].Description + 1);
  v97(v3 + v7, v98);
  v8 = v4[9];
  v96 = type metadata accessor for AssetService();
  v95 = *(v96[-1].Description + 1);
  v95(v3 + v8, v96);
  v9 = v4[10];
  v94 = type metadata accessor for AwardsService();
  v93 = *(v94[-1].Description + 1);
  v93(v3 + v9, v94);
  v10 = v4[11];
  v92 = type metadata accessor for BookmarkService();
  v91 = *(v92[-1].Description + 1);
  v91(v3 + v10, v92);
  v11 = v4[12];
  v90 = type metadata accessor for CatalogService();
  v89 = *(v90[-1].Description + 1);
  v89(v3 + v11, v90);
  v12 = v4[13];
  v88 = type metadata accessor for ConfigurationService();
  v87 = *(v88[-1].Description + 1);
  v87(v3 + v12, v88);
  v13 = v4[14];
  v86 = type metadata accessor for ContentAvailabilityService();
  v85 = *(v86[-1].Description + 1);
  v85(v3 + v13, v86);
  v14 = v4[15];
  v84 = type metadata accessor for EngagementService();
  v83 = *(v84[-1].Description + 1);
  v83(v3 + v14, v84);
  v15 = v4[16];
  v82 = type metadata accessor for HealthDataService();
  v81 = *(v82[-1].Description + 1);
  v81(v3 + v15, v82);
  v16 = v4[17];
  v80 = type metadata accessor for InteropService();
  v79 = *(v80[-1].Description + 1);
  v79(v3 + v16, v80);
  v17 = v4[18];
  v78 = type metadata accessor for LocalizationService();
  v77 = *(v78[-1].Description + 1);
  v77(v3 + v17, v78);
  v18 = v4[19];
  v76 = type metadata accessor for MarketingService();
  v75 = *(v76[-1].Description + 1);
  v75(v3 + v18, v76);
  v19 = v4[20];
  v74 = type metadata accessor for MetricService();
  v73 = *(v74[-1].Description + 1);
  v73(v3 + v19, v74);
  v20 = v4[21];
  v72 = type metadata accessor for PersonalizationService();
  v71 = *(v72[-1].Description + 1);
  v71(v3 + v20, v72);
  v21 = v4[22];
  v70 = type metadata accessor for PlayerService();
  v69 = *(v70[-1].Description + 1);
  v69(v3 + v21, v70);
  v22 = v4[23];
  v68 = type metadata accessor for PrivacyPreferenceService();
  v67 = *(v68[-1].Description + 1);
  v67(v3 + v22, v68);
  v23 = v4[24];
  v66 = type metadata accessor for RecommendationService();
  v65 = *(v66[-1].Description + 1);
  v65(v3 + v23, v66);
  v24 = v4[25];
  v64 = type metadata accessor for RemoteBrowsingService();
  v63 = *(v64[-1].Description + 1);
  v63(v3 + v24, v64);
  v25 = v4[26];
  v62 = type metadata accessor for SearchService();
  v61 = *(v62[-1].Description + 1);
  v61(v3 + v25, v62);
  v26 = v4[27];
  v60 = type metadata accessor for ServiceSubscriptionService();
  v59 = *(v60[-1].Description + 1);
  v59(v3 + v26, v60);
  v27 = v4[28];
  v53 = type metadata accessor for SessionService();
  v58 = *(v53[-1].Description + 1);
  v58(v3 + v27, v53);
  v28 = v4[29];
  v29 = type metadata accessor for SharePlayService();
  v57 = *(v29[-1].Description + 1);
  v57(v3 + v28, v29);
  v30 = v4[30];
  v31 = type metadata accessor for SiriService();
  v56 = *(v31[-1].Description + 1);
  v56(v3 + v30, v31);
  v32 = v4[31];
  v33 = type metadata accessor for SyncService();
  v55 = *(v33[-1].Description + 1);
  v55(v3 + v32, v33);

  v34 = v4[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v54 = *(QueueService[-1].Description + 1);
  v54(v3 + v34, QueueService);
  __swift_destroy_boxed_opaque_existential_1((v3 + v4[34]));

  v36 = v4[36];
  v37 = type metadata accessor for WorkoutPlanService();
  v52 = *(v37[-1].Description + 1);
  v52(v3 + v36, v37);

  v38 = v101 + v108[7];

  v39 = v38 + *(type metadata accessor for AppDataItemResolver(0) + 24);
  swift_unknownObjectRelease();
  v102(v39 + v4[6], v103);
  v99(v39 + v4[7], v100);
  v97(v39 + v4[8], v98);
  v95(v39 + v4[9], v96);
  v93(v39 + v4[10], v94);
  v91(v39 + v4[11], v92);
  v89(v39 + v4[12], v90);
  v87(v39 + v4[13], v88);
  v85(v39 + v4[14], v86);
  v83(v39 + v4[15], v84);
  v81(v39 + v4[16], v82);
  v79(v39 + v4[17], v80);
  v77(v39 + v4[18], v78);
  v75(v39 + v4[19], v76);
  v73(v39 + v4[20], v74);
  v71(v39 + v4[21], v72);
  v69(v39 + v4[22], v70);
  v67(v39 + v4[23], v68);
  v65(v39 + v4[24], v66);
  v63(v39 + v4[25], v64);
  v61(v39 + v4[26], v62);
  v59(v39 + v4[27], v60);
  v58(v39 + v4[28], v53);
  v57(v39 + v4[29], v29);
  v56(v39 + v4[30], v31);
  v55(v39 + v4[31], v33);

  v54(v39 + v4[33], QueueService);
  __swift_destroy_boxed_opaque_existential_1((v39 + v4[34]));

  v52(v39 + v4[36], v37);
  swift_unknownObjectRelease();
  if (*(v101 + v108[9] + 8) >= 0xCuLL)
  {
  }

  v40 = (v101 + v108[10]);
  if (v40[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v40);
  }

  v41 = v107 + (v104 & ~v105);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_1E6001C2C(*v41, *(v41 + 8), *(v41 + 16));
  if (EnumCaseMultiPayload == 1)
  {
    v43 = v41 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073968, &unk_1E65F4320) + 48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CC0, &unk_1E65F2610);
    v44 = swift_getEnumCaseMultiPayload();
    if (v44 == 2)
    {
    }

    else if (v44 == 1)
    {
      v45 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073870, &unk_1E65F4340) + 48);
      v46 = sub_1E65D76A8();
      (*(*(v46 - 8) + 8))(v43 + v45, v46);
    }

    v47 = v43 + *(type metadata accessor for DynamicLibraryActionLoadState(0) + 20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CD0, &unk_1E65F42F0);
    v48 = swift_getEnumCaseMultiPayload();
    if (v48 == 2)
    {
    }

    else if (v48 == 1)
    {
      v49 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0737D0, &unk_1E65F4330) + 48);
      v50 = sub_1E65D76A8();
      (*(*(v50 - 8) + 8))(v47 + v49, v50);
    }
  }

  return swift_deallocObject();
}

uint64_t sub_1E604DBAC(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a2, a3) - 8);
  v7 = v4 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return a4(a1, v7);
}

uint64_t sub_1E604DC6C(unint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v5 = a1 | ((HIDWORD(a1) & 1) << 32);
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a2, a3) - 8);
  v7 = v4 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return a4(v5, v7);
}

uint64_t objectdestroy_253Tm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  (*(*(v3 - 8) + 8))(v2 + ((*(*(v3 - 8) + 80) + 16) & ~*(*(v3 - 8) + 80)), v3);

  return swift_deallocObject();
}

uint64_t sub_1E604DDB8(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(uint64_t))
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a1, a2) - 8);
  v5 = v3 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a3(v5);
}

unint64_t sub_1E604DE38()
{
  result = qword_1EE2D68C0;
  if (!qword_1EE2D68C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED073980, &qword_1E65EDCE8);
    sub_1E5FED46C(&qword_1EE2D68C8, &qword_1ED073930, &qword_1E65EDCC0, MEMORY[0x1E699CB00]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D68C0);
  }

  return result;
}

uint64_t sub_1E604DEE8()
{
  v1 = *(type metadata accessor for AppComposer(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = v2 + *(v1 + 64);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073988, &unk_1E65F72F0) - 8);
  v5 = (v3 + *(v4 + 80)) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + v6);

  return sub_1E6364F6C(v0 + v2, v0 + v5, v7, (v0 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_1E604DFF8()
{
  v1 = *(type metadata accessor for AppComposer(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;

  return sub_1E6169B6C(v0 + v2, v0 + v3, v0 + ((v3 + 87) & 0xFFFFFFFFFFFFFFF8));
}

uint64_t objectdestroy_20Tm()
{
  v109 = type metadata accessor for AppComposer(0);
  v107 = *(*(v109 - 1) + 80);
  v1 = (v107 + 16) & ~v107;
  v2 = v1 + *(*(v109 - 1) + 64);
  v106 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0736B0, &unk_1E65F8480) - 8) + 80);
  v105 = v2 + v106;
  v108 = v0;
  v102 = v0 + v1;

  v3 = v0 + v1 + v109[5];
  swift_unknownObjectRelease();
  v4 = type metadata accessor for AppEnvironment(0);
  v5 = v4[6];
  v104 = type metadata accessor for AccountService();
  v103 = *(v104[-1].Description + 1);
  v103(v3 + v5, v104);
  v6 = v4[7];
  v101 = type metadata accessor for AppStateService();
  v100 = *(v101[-1].Description + 1);
  v100(v3 + v6, v101);
  v7 = v4[8];
  v99 = type metadata accessor for ArchivedSessionService();
  v98 = *(v99[-1].Description + 1);
  v98(v3 + v7, v99);
  v8 = v4[9];
  v97 = type metadata accessor for AssetService();
  v96 = *(v97[-1].Description + 1);
  v96(v3 + v8, v97);
  v9 = v4[10];
  v95 = type metadata accessor for AwardsService();
  v94 = *(v95[-1].Description + 1);
  v94(v3 + v9, v95);
  v10 = v4[11];
  v93 = type metadata accessor for BookmarkService();
  v92 = *(v93[-1].Description + 1);
  v92(v3 + v10, v93);
  v11 = v4[12];
  v91 = type metadata accessor for CatalogService();
  v90 = *(v91[-1].Description + 1);
  v90(v3 + v11, v91);
  v12 = v4[13];
  v89 = type metadata accessor for ConfigurationService();
  v88 = *(v89[-1].Description + 1);
  v88(v3 + v12, v89);
  v13 = v4[14];
  v87 = type metadata accessor for ContentAvailabilityService();
  v86 = *(v87[-1].Description + 1);
  v86(v3 + v13, v87);
  v14 = v4[15];
  v85 = type metadata accessor for EngagementService();
  v84 = *(v85[-1].Description + 1);
  v84(v3 + v14, v85);
  v15 = v4[16];
  v83 = type metadata accessor for HealthDataService();
  v82 = *(v83[-1].Description + 1);
  v82(v3 + v15, v83);
  v16 = v4[17];
  v81 = type metadata accessor for InteropService();
  v80 = *(v81[-1].Description + 1);
  v80(v3 + v16, v81);
  v17 = v4[18];
  v79 = type metadata accessor for LocalizationService();
  v78 = *(v79[-1].Description + 1);
  v78(v3 + v17, v79);
  v18 = v4[19];
  v77 = type metadata accessor for MarketingService();
  v76 = *(v77[-1].Description + 1);
  v76(v3 + v18, v77);
  v19 = v4[20];
  v75 = type metadata accessor for MetricService();
  v74 = *(v75[-1].Description + 1);
  v74(v3 + v19, v75);
  v20 = v4[21];
  v73 = type metadata accessor for PersonalizationService();
  v72 = *(v73[-1].Description + 1);
  v72(v3 + v20, v73);
  v21 = v4[22];
  v71 = type metadata accessor for PlayerService();
  v70 = *(v71[-1].Description + 1);
  v70(v3 + v21, v71);
  v22 = v4[23];
  v69 = type metadata accessor for PrivacyPreferenceService();
  v68 = *(v69[-1].Description + 1);
  v68(v3 + v22, v69);
  v23 = v4[24];
  v67 = type metadata accessor for RecommendationService();
  v66 = *(v67[-1].Description + 1);
  v66(v3 + v23, v67);
  v24 = v4[25];
  v65 = type metadata accessor for RemoteBrowsingService();
  v64 = *(v65[-1].Description + 1);
  v64(v3 + v24, v65);
  v25 = v4[26];
  v63 = type metadata accessor for SearchService();
  v62 = *(v63[-1].Description + 1);
  v62(v3 + v25, v63);
  v26 = v4[27];
  v61 = type metadata accessor for ServiceSubscriptionService();
  v60 = *(v61[-1].Description + 1);
  v60(v3 + v26, v61);
  v27 = v4[28];
  v54 = type metadata accessor for SessionService();
  v59 = *(v54[-1].Description + 1);
  v59(v3 + v27, v54);
  v28 = v4[29];
  v29 = type metadata accessor for SharePlayService();
  v58 = *(v29[-1].Description + 1);
  v58(v3 + v28, v29);
  v30 = v4[30];
  v31 = type metadata accessor for SiriService();
  v57 = *(v31[-1].Description + 1);
  v57(v3 + v30, v31);
  v32 = v4[31];
  v33 = type metadata accessor for SyncService();
  v56 = *(v33[-1].Description + 1);
  v56(v3 + v32, v33);

  v34 = v4[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v55 = *(QueueService[-1].Description + 1);
  v55(v3 + v34, QueueService);
  __swift_destroy_boxed_opaque_existential_1((v3 + v4[34]));

  v36 = v4[36];
  v37 = type metadata accessor for WorkoutPlanService();
  v53 = *(v37[-1].Description + 1);
  v53(v3 + v36, v37);

  v38 = v102 + v109[7];

  v39 = v38 + *(type metadata accessor for AppDataItemResolver(0) + 24);
  swift_unknownObjectRelease();
  v103(v39 + v4[6], v104);
  v100(v39 + v4[7], v101);
  v98(v39 + v4[8], v99);
  v96(v39 + v4[9], v97);
  v94(v39 + v4[10], v95);
  v92(v39 + v4[11], v93);
  v90(v39 + v4[12], v91);
  v88(v39 + v4[13], v89);
  v86(v39 + v4[14], v87);
  v84(v39 + v4[15], v85);
  v82(v39 + v4[16], v83);
  v80(v39 + v4[17], v81);
  v78(v39 + v4[18], v79);
  v76(v39 + v4[19], v77);
  v74(v39 + v4[20], v75);
  v72(v39 + v4[21], v73);
  v70(v39 + v4[22], v71);
  v68(v39 + v4[23], v69);
  v66(v39 + v4[24], v67);
  v64(v39 + v4[25], v65);
  v62(v39 + v4[26], v63);
  v60(v39 + v4[27], v61);
  v59(v39 + v4[28], v54);
  v58(v39 + v4[29], v29);
  v57(v39 + v4[30], v31);
  v56(v39 + v4[31], v33);

  v55(v39 + v4[33], QueueService);
  __swift_destroy_boxed_opaque_existential_1((v39 + v4[34]));

  v53(v39 + v4[36], v37);
  swift_unknownObjectRelease();
  if (*(v102 + v109[9] + 8) >= 0xCuLL)
  {
  }

  v40 = (v102 + v109[10]);
  if (v40[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v40);
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload == 1)
  {
    v42 = v108 + (v105 & ~v106) + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0737C0, &unk_1E65F7310) + 48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0737C8, &unk_1E6605140);
    v43 = swift_getEnumCaseMultiPayload();
    switch(v43)
    {
      case 2:

        break;
      case 1:
        v45 = sub_1E65DE788();
        (*(*(v45 - 8) + 8))(v42, v45);
        v46 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077E20, &unk_1E65F7140) + 48);
        v47 = sub_1E65D76A8();
        (*(*(v47 - 8) + 8))(v42 + v46, v47);
        break;
      case 0:
        v44 = sub_1E65DE788();
        (*(*(v44 - 8) + 8))(v42, v44);
        break;
    }

    v48 = v42 + *(type metadata accessor for DynamicStartWorkoutButtonLoadState(0) + 20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CD0, &unk_1E65F42F0);
    v49 = swift_getEnumCaseMultiPayload();
    if (v49 == 2)
    {
    }

    else if (v49 == 1)
    {
      v50 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0737D0, &unk_1E65F4330) + 48);
      v51 = sub_1E65D76A8();
      (*(*(v51 - 8) + 8))(v48 + v50, v51);
    }
  }

  return swift_deallocObject();
}

uint64_t sub_1E604EFCC(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(unint64_t, uint64_t))
{
  v6 = *(type metadata accessor for AppComposer(0) - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a1, a2) - 8);
  v10 = v3 + ((v7 + v8 + *(v9 + 80)) & ~*(v9 + 80));

  return a3(v3 + v7, v10);
}

uint64_t sub_1E604F0C0@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppComposer(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0736B0, &unk_1E65F8480) - 8);
  v7 = (v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(sub_1E65D76F8() - 8);
  v10 = (v7 + v8 + *(v9 + 80)) & ~*(v9 + 80);
  v11 = (*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;

  return sub_1E62D06EC(v1 + v4, v1 + v7, v1 + v10, v1 + v11, (v1 + ((v11 + 47) & 0xFFFFFFFFFFFFFFF8)), a1);
}

uint64_t sub_1E604F23C(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for AppComposer(0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073648, &qword_1E6607560) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = (*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v1 + 16);
  v12 = *(v1 + 24);
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_1E5DFE6BC;

  return sub_1E6044C7C(a1, v11, v12, v1 + v6, v1 + v9, v1 + v10);
}

uint64_t sub_1E604F3CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[9] = a2;
  v3[10] = a3;
  v3[8] = a1;
  v3[11] = type metadata accessor for PageMetricsClick(0);
  v3[12] = swift_task_alloc();
  sub_1E65E6058();
  v3[13] = sub_1E65E6048();
  v5 = sub_1E65E5FC8();
  v3[14] = v5;
  v3[15] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1E604F498, v5, v4);
}

uint64_t sub_1E604F498()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[9];
  v4 = sub_1E65D9D78();
  (*(*(v4 - 8) + 56))(v1, 1, 1, v4);
  v5 = v2[5];
  v6 = *MEMORY[0x1E69CB9D0];
  v7 = sub_1E65D8C68();
  (*(*(v7 - 8) + 104))(v1 + v5, v6, v7);
  v8 = v2[6];
  v9 = sub_1E65D74E8();
  (*(*(v9 - 8) + 56))(v1 + v8, 1, 1, v9);
  v10 = v2[8];
  v11 = sub_1E65DA208();
  (*(*(v11 - 8) + 56))(v1 + v10, 1, 1, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073648, &qword_1E6607560);
  sub_1E65DE488();
  v12 = v0[5];
  v13 = v0[6];
  v14 = v2[14];
  v15 = *MEMORY[0x1E69CBCC8];
  v16 = sub_1E65D8F28();
  (*(*(v16 - 8) + 104))(v1 + v14, v15, v16);
  v17 = v2[15];
  v18 = *MEMORY[0x1E69CC498];
  v19 = sub_1E65D9908();
  v20 = *(v19 - 8);
  (*(v20 + 104))(v1 + v17, v18, v19);
  (*(v20 + 56))(v1 + v17, 0, 1, v19);
  v21 = MEMORY[0x1E69E7CC0];
  v22 = sub_1E6427784(MEMORY[0x1E69E7CC0]);
  *(v1 + v2[7]) = v21;
  v23 = (v1 + v2[9]);
  *v23 = 0;
  v23[1] = 0;
  v24 = (v1 + v2[10]);
  *v24 = 0;
  v24[1] = 0;
  *(v1 + v2[11]) = v22;
  v25 = (v1 + v2[12]);
  *v25 = 0;
  v25[1] = 0;
  v26 = (v1 + v2[13]);
  *v26 = v12;
  v26[1] = v13;
  v30 = (v3 + *v3);
  v27 = swift_task_alloc();
  v0[16] = v27;
  *v27 = v0;
  v27[1] = sub_1E604F804;
  v28 = v0[12];

  return v30(v28);
}

uint64_t sub_1E604F804()
{
  v2 = *v1;
  *(*v1 + 136) = v0;

  v3 = *(v2 + 120);
  v4 = *(v2 + 112);
  if (v0)
  {
    v5 = sub_1E604F9C4;
  }

  else
  {
    v5 = sub_1E604F940;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1E604F940()
{
  v1 = *(v0 + 96);

  sub_1E604879C(v1, type metadata accessor for PageMetricsClick);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1E604F9C4()
{
  v17 = v0;
  v1 = v0[12];

  sub_1E604879C(v1, type metadata accessor for PageMetricsClick);
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v2 = v0[17];
  v3 = sub_1E65E3B68();
  __swift_project_value_buffer(v3, qword_1EE2EA2A0);
  v4 = v2;
  v5 = sub_1E65E3B48();
  v6 = sub_1E65E6328();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[17];
  if (v7)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16 = v10;
    *v9 = 136315138;
    swift_getErrorValue();
    v11 = sub_1E65E6C78();
    v13 = sub_1E5DFD4B0(v11, v12, &v16);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_1E5DE9000, v5, v6, "Failed to send menu click event: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x1E694F1C0](v10, -1, -1);
    MEMORY[0x1E694F1C0](v9, -1, -1);
  }

  else
  {
  }

  v14 = v0[1];

  return v14();
}

uint64_t sub_1E604FBB0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

int *sub_1E604FC70@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0739B0, &qword_1E65EDD40);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v22 - v6;
  v8 = type metadata accessor for ArtworkContent(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E65DCEB8();
  sub_1E64FAC48(v10);
  sub_1E5DFE50C(v7, &qword_1ED0739B0, &qword_1E65EDD40);
  v11 = sub_1E6053844(a1);
  v12 = sub_1E65DAE38();
  v13 = sub_1E65DAE38();
  v14 = sub_1E65E4B48();
  v15 = 4.0;
  if (v14)
  {
    v15 = 8.0;
  }

  v16 = 16.0;
  if (v14)
  {
    v16 = 18.0;
  }

  if (v12 == v13)
  {
    v17 = v16;
  }

  else
  {
    v17 = v15;
  }

  if (v12 == v13)
  {
    v18 = 12.0;
  }

  else
  {
    v18 = 8.0;
  }

  sub_1E6053A9C(v10, a3, type metadata accessor for ArtworkContent);
  result = type metadata accessor for ArtworkDescriptor(0);
  *(a3 + result[5]) = v11;
  v20 = a3 + result[6];
  *v20 = 0;
  *(v20 + 8) = v17;
  *(v20 + 16) = v17;
  *(v20 + 24) = v18;
  *(a3 + result[7]) = 1;
  v21 = (a3 + result[8]);
  *v21 = 0;
  v21[1] = 0;
  return result;
}

uint64_t sub_1E604FE38@<X0>(char *a2@<X8>)
{
  v3 = sub_1E65DAE38();
  if (v3 != sub_1E65DAE38())
  {
    *a2 = 2;
    goto LABEL_12;
  }

  v4 = sub_1E65DCB98();
  if (v4 > 8)
  {
    goto LABEL_9;
  }

  if (((1 << v4) & 0x198) != 0)
  {
LABEL_10:
    v7 = 2;
    goto LABEL_11;
  }

  if (v4 == 5)
  {
    *a2 = 2;
    a2[8] = 0;
    v5 = *MEMORY[0x1E699D870];
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0739C8, &qword_1E65EDD58);
    (*(*(v6 - 8) + 104))(a2, v5, v6);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072680, &qword_1E65EB990);
    swift_storeEnumTagMultiPayload();
    goto LABEL_12;
  }

  if (v4 != 6)
  {
LABEL_9:
    if (v4 >= 2)
    {
      v7 = 3;
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v7 = 4;
LABEL_11:
  *a2 = v7;
LABEL_12:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072650, &qword_1E65EB968);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1E604FF98@<X0>(uint64_t a1@<X8>)
{
  v22 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072638, &qword_1E65EB950);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v21 = &v19 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072640, &qword_1E65EB958);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v20 = &v19 - v4;
  v5 = sub_1E65D7268();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E65D7348();
  MEMORY[0x1EEE9AC00](v9);
  v10 = sub_1E65D72D8();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v19 = &v19 - v15;
  sub_1E65DCB68();
  sub_1E65D7338();
  sub_1E65D72E8();
  if (qword_1EE2D7270 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v9, qword_1EE2EA268);
  (*(v6 + 104))(v8, *MEMORY[0x1E69686E8], v5);
  sub_1E6053B3C(&qword_1EE2D7280, MEMORY[0x1E6968848], MEMORY[0x1E6968820]);
  sub_1E65D73C8();
  (*(v6 + 8))(v8, v5);
  (*(v11 + 8))(v14, v10);
  v16 = type metadata accessor for SectionHeaderSubtitleDescriptor(0);
  (*(*(v16 - 8) + 56))(v20, 1, 1, v16);
  v17 = type metadata accessor for ActionButtonDescriptor(0);
  (*(*(v17 - 8) + 56))(v21, 1, 1, v17);
  sub_1E6053B3C(qword_1EE2D8E10, type metadata accessor for ActionButtonDescriptor, &unk_1E6607920);
  sub_1E6053B3C(&qword_1EE2D7D88, type metadata accessor for SectionHeaderSubtitleDescriptor, &protocol conformance descriptor for SectionHeaderSubtitleDescriptor);
  return sub_1E65E0458();
}

uint64_t sub_1E6050418@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  LODWORD(v52) = a2;
  v56 = a1;
  v59 = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072630, &qword_1E65EB948);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = (v51 - v4);
  v6 = sub_1E65E0438();
  v53 = *(v6 - 8);
  v54 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v61 = v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072648, &qword_1E65EB960);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v60 = v51 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072650, &qword_1E65EB968);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v51 - v11;
  v13 = sub_1E65D76F8();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1E65DCB48();
  if (v18)
  {
    v19 = v17;
  }

  else
  {
    v19 = 1701736302;
  }

  if (v18)
  {
    v20 = v18;
  }

  else
  {
    v20 = 0xE400000000000000;
  }

  v63 = 0;
  v64 = 0xE000000000000000;
  sub_1E65E68A8();

  v63 = 0xD000000000000015;
  v64 = 0x80000001E6611A40;
  v21 = sub_1E65DCB68();
  MEMORY[0x1E694D7C0](v21);

  MEMORY[0x1E694D7C0](58, 0xE100000000000000);
  v22 = *(sub_1E65DCB88() + 16);

  v62 = v22;
  v23 = sub_1E65E6BC8();
  MEMORY[0x1E694D7C0](v23);

  MEMORY[0x1E694D7C0](58, 0xE100000000000000);
  MEMORY[0x1E694D7C0](v19, v20);

  MEMORY[0x1E694D7C0](58, 0xE100000000000000);
  sub_1E65D76E8();
  v24 = sub_1E65D76C8();
  v26 = v25;
  (*(v14 + 8))(v16, v13);
  v27 = v52;
  MEMORY[0x1E694D7C0](v24, v26);

  v57 = v63;
  v58 = v12;
  v55 = v64;
  sub_1E604FE38(v12);
  v28 = sub_1E65DAE38();
  if (v28 == sub_1E65DAE38())
  {
    v29 = v60;
    sub_1E604FF98(v60);
    v30 = 0;
  }

  else
  {
    v30 = 1;
    v29 = v60;
  }

  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072660, &qword_1E65EB970);
  (*(*(v31 - 8) + 56))(v29, v30, 1, v31);
  (*(v53 + 104))(v61, *MEMORY[0x1E699D7D8], v54);
  v32 = sub_1E65DCB88();
  MEMORY[0x1EEE9AC00](v32);
  v49 = v56;
  v50 = v27;
  v56 = sub_1E5F9F490(sub_1E6053B04, v48, v32);

  v33 = sub_1E65DCB28();
  v35 = v34;
  v36 = sub_1E65DCB68();
  v38 = v37;
  v39 = type metadata accessor for SectionMetrics(0);
  v40 = *(v39 + 24);
  v41 = *MEMORY[0x1E69CBCB0];
  v42 = sub_1E65D8F28();
  (*(*(v42 - 8) + 104))(v5 + v40, v41, v42);
  v43 = sub_1E6427498(MEMORY[0x1E69E7CC0]);
  *v5 = v33;
  v5[1] = v35;
  v5[2] = v36;
  v5[3] = v38;
  *(v5 + *(v39 + 32)) = v43;
  (*(*(v39 - 8) + 56))(v5, 0, 1, v39);
  v54 = type metadata accessor for ActionButtonDescriptor(0);
  v53 = type metadata accessor for ArtworkDescriptor(0);
  v52 = type metadata accessor for ContextMenu(0);
  v51[6] = type metadata accessor for ItemContext(0);
  v51[5] = type metadata accessor for ItemMetrics(0);
  v51[4] = type metadata accessor for SectionHeaderSubtitleDescriptor(0);
  v51[3] = type metadata accessor for ViewDescriptor(0);
  v51[2] = sub_1E6053B3C(qword_1EE2D8E10, type metadata accessor for ActionButtonDescriptor, &unk_1E6607920);
  v51[1] = sub_1E6053B3C(&qword_1EE2D9EB8, type metadata accessor for ArtworkDescriptor, &protocol conformance descriptor for ArtworkDescriptor);
  sub_1E6053B3C(&qword_1EE2DB8B0, type metadata accessor for ContextMenu, &unk_1E65EE1B8);
  sub_1E6053B3C(&qword_1EE2DB720, type metadata accessor for ItemContext, &protocol conformance descriptor for ItemContext);
  sub_1E6053B3C(&qword_1EE2DB738, type metadata accessor for ItemContext, &protocol conformance descriptor for ItemContext);
  sub_1E6053B3C(&qword_1EE2DB730, type metadata accessor for ItemContext, &protocol conformance descriptor for ItemContext);
  sub_1E6053B3C(&qword_1EE2DB650, type metadata accessor for ItemMetrics, &protocol conformance descriptor for ItemMetrics);
  sub_1E6053B3C(&qword_1EE2DA950, type metadata accessor for SectionMetrics, &protocol conformance descriptor for SectionMetrics);
  v44 = sub_1E5DF11E0();
  v45 = sub_1E6053B3C(&qword_1EE2D7D88, type metadata accessor for SectionHeaderSubtitleDescriptor, &protocol conformance descriptor for SectionHeaderSubtitleDescriptor);
  v46 = sub_1E6053B3C(&qword_1EE2DA6C0, type metadata accessor for ViewDescriptor, &protocol conformance descriptor for ViewDescriptor);
  v48[1] = v45;
  v49 = v46;
  v48[0] = v44;
  return sub_1E65E0418();
}

uint64_t sub_1E6050C60@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  LODWORD(v43) = a2;
  v44 = a1;
  v49 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072668, &qword_1E65EB978);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v41 = (v37 - v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072670, &qword_1E65EB980);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v48 = v37 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072610, &qword_1E65EB930);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v47 = v37 - v9;
  v10 = sub_1E65DCA68();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v39 = v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_1E65DCF98();
  v42 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v13 = v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_1E65E03F8();
  MEMORY[0x1EEE9AC00](v38);
  v15 = v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for ItemContext(0);
  v16 = MEMORY[0x1EEE9AC00](v45);
  v40 = v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v19 = v37 - v18;
  v20 = sub_1E65DCCE8();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v23 = v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1E65DCA48();
  MEMORY[0x1EEE9AC00](v24);
  v26 = v37 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E6053B84(v3, v26);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v42 + 32))(v13, v26, v46);
    v27 = sub_1E65DCED8();
    v29 = v28;
    v30 = sub_1E65DCEF8();
    if (v31)
    {
      v32 = v30;
    }

    else
    {
      v32 = 0;
    }

    if (v31)
    {
      v33 = v31;
    }

    else
    {
      v33 = 0xE000000000000000;
    }

    v50 = v27;
    v51 = v29;

    MEMORY[0x1E694D7C0](v32, v33);

    MEMORY[0x1E694D7C0](0, 0xE000000000000000);

    sub_1E65DCF48();
    sub_1E65DCED8();
    sub_1E65DCE68();
    sub_1E65DCEF8();
    sub_1E65DCC88();
    type metadata accessor for SearchItemContext(0);
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    sub_1E6052A2C(v44, v43, v47);
    sub_1E621AD08(v48);
    sub_1E60144DC(v41);
    v44 = type metadata accessor for ActionButtonDescriptor(0);
    v43 = type metadata accessor for ArtworkDescriptor(0);
    v39 = type metadata accessor for ContextMenu(0);
    v38 = type metadata accessor for ItemMetrics(0);
    v37[1] = type metadata accessor for ViewDescriptor(0);
    v37[0] = sub_1E6053B3C(qword_1EE2D8E10, type metadata accessor for ActionButtonDescriptor, &unk_1E6607920);
    sub_1E6053B3C(&qword_1EE2D9EB8, type metadata accessor for ArtworkDescriptor, &protocol conformance descriptor for ArtworkDescriptor);
    sub_1E6053B3C(&qword_1EE2DB8B0, type metadata accessor for ContextMenu, &unk_1E65EE1B8);
    sub_1E6053B3C(&qword_1EE2DB720, type metadata accessor for ItemContext, &protocol conformance descriptor for ItemContext);
    sub_1E6053B3C(&qword_1EE2DB738, type metadata accessor for ItemContext, &protocol conformance descriptor for ItemContext);
    sub_1E6053B3C(&qword_1EE2DB730, type metadata accessor for ItemContext, &protocol conformance descriptor for ItemContext);
    sub_1E6053B3C(&qword_1EE2DB650, type metadata accessor for ItemMetrics, &protocol conformance descriptor for ItemMetrics);
    sub_1E6053B3C(&qword_1EE2DA6C0, type metadata accessor for ViewDescriptor, &protocol conformance descriptor for ViewDescriptor);
    sub_1E65E0488();
    (*(v42 + 8))(v13, v46);
  }

  else
  {
    (*(v21 + 32))(v23, v26, v20);
    (*(v21 + 16))(v19, v23, v20);
    type metadata accessor for SearchItemContext(0);
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    v34 = sub_1E65DAE38();
    if (v34 == sub_1E65DAE38())
    {
      sub_1E6053664();
    }

    else
    {
      v35 = sub_1E65DCA28();
      sub_1E605312C(v35, v15);
      swift_storeEnumTagMultiPayload();
    }

    sub_1E6053B3C(&qword_1EE2DB720, type metadata accessor for ItemContext, &protocol conformance descriptor for ItemContext);
    sub_1E6053B3C(&qword_1EE2DB738, type metadata accessor for ItemContext, &protocol conformance descriptor for ItemContext);
    sub_1E6053B3C(&qword_1EE2DB730, type metadata accessor for ItemContext, &protocol conformance descriptor for ItemContext);
    sub_1E65E04D8();
    (*(v21 + 8))(v23, v20);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0720A8, &qword_1E65EA790);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1E605153C@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  LODWORD(v113) = a2;
  v107 = a1;
  v4 = sub_1E65D7348();
  v110 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v106 = &v102 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1E65E0848();
  v108 = *(v6 - 8);
  v109 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v111 = &v102 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072D90, &qword_1E66040F0);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v112 = &v102 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v102 - v11;
  v117 = sub_1E65D7268();
  v13 = *(v117 - 8);
  MEMORY[0x1EEE9AC00](v117);
  v116 = &v102 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1E65D72D8();
  v114 = *(v15 - 8);
  v115 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v102 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1E65DCA68();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v102 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E65DCF48();
  v22 = sub_1E65DCA58();
  (*(v19 + 8))(v21, v18);
  if (v22 <= 8u)
  {
    if (((1 << v22) & 0x198) != 0)
    {
LABEL_13:
      v55 = v13;
      v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072628, &qword_1E65EB940);
      v57 = v56[12];
      v58 = v56[16];
      v110 = v56[20];
      v111 = v56;
      v59 = sub_1E5F9B6D0(&unk_1F5FA82E8);
      v60 = a3;
      sub_1E604FC70(v59, a3 + v57);

      sub_1E65DCF58();
      if (qword_1EE2D7250 != -1)
      {
        swift_once();
      }

      v109 = v4;
      __swift_project_value_buffer(v4, qword_1EE2EA220);
      v61 = v55;
      v62 = *(v55 + 104);
      v64 = v116;
      v63 = v117;
      LODWORD(v107) = *MEMORY[0x1E69686E8];
      v106 = v62;
      (v62)(v116);
      v65 = sub_1E6053B3C(&qword_1EE2D7280, MEMORY[0x1E6968848], MEMORY[0x1E6968820]);
      v66 = v115;
      v105 = v65;
      sub_1E65D73C8();
      v67 = v60;
      v68 = *(v61 + 8);
      v108 = v61 + 8;
      v104 = v68;
      v68(v64, v63);
      v69 = v114;
      v70 = *(v114 + 1);
      v70(v17, v66);
      v71 = *(v69 + 7);
      v113 = v67;
      v71(v67 + v58, 0, 1, v66);
      v72 = v112;
      sub_1E65DCF78();
      v73 = v66;
      if ((*(v69 + 6))(v72, 1, v66) == 1)
      {
        sub_1E5DFE50C(v72, &qword_1ED072D90, &qword_1E66040F0);
        v74 = 1;
        v75 = v113;
        v76 = v110;
      }

      else
      {
        v114 = v70;
        if (qword_1EE2D7248 != -1)
        {
          swift_once();
        }

        __swift_project_value_buffer(v109, qword_1EE2EA208);
        v77 = v116;
        v78 = v117;
        (v106)(v116, v107, v117);
        v75 = v113;
        v76 = v110;
        v79 = v112;
        sub_1E65D73C8();
        v104(v77, v78);
        v114(v79, v73);
        v74 = 0;
      }

      v71(v75 + v76, v74, 1, v73);
      v71(v75 + *(v111 + 24), 1, 1, v73);
      sub_1E65E0A68();
      goto LABEL_21;
    }

    if (v22 == 5)
    {
      v109 = v4;
      v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0739B8, &qword_1E65EDD48);
      v24 = v23[12];
      v25 = v23[16];
      v112 = v23;
      v26 = v23[20];
      v110 = v25;
      v111 = v26;
      sub_1E65DCE68();
      sub_1E6052408();
      v27 = sub_1E5F9B6D0(&unk_1F5FA8270);
      sub_1E604FC70(v27, a3 + v24);

      sub_1E65DCF58();
      if (qword_1ED071A18 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v109, qword_1ED0963C0);
      v28 = *(v13 + 104);
      v29 = v116;
      v30 = v117;
      LODWORD(v106) = *MEMORY[0x1E69686E8];
      v31 = v13;
      v107 = v13 + 104;
      v105 = v28;
      v28(v116);
      v32 = sub_1E6053B3C(&qword_1EE2D7280, MEMORY[0x1E6968848], MEMORY[0x1E6968820]);
      v33 = v110;
      v34 = v115;
      v104 = v32;
      sub_1E65D73C8();
      v35 = *(v31 + 8);
      v108 = v31 + 8;
      v103 = v35;
      v35(v29, v30);
      v36 = a3;
      v37 = v114;
      v38 = *(v114 + 1);
      v38(v17, v34);
      v39 = *(v37 + 7);
      v113 = v36;
      v39(v36 + v33, 0, 1, v34);
      sub_1E65DCF78();
      if ((*(v37 + 6))(v12, 1, v34) == 1)
      {
        sub_1E5DFE50C(v12, &qword_1ED072D90, &qword_1E66040F0);
        v40 = 1;
        v41 = v113;
        v42 = v115;
        v43 = v111;
      }

      else
      {
        v114 = v38;
        if (qword_1ED071A20 != -1)
        {
          swift_once();
        }

        __swift_project_value_buffer(v109, qword_1ED0963D8);
        v97 = v116;
        v98 = v117;
        v105(v116, v106, v117);
        v41 = v113;
        v43 = v111;
        v42 = v115;
        sub_1E65D73C8();
        v103(v97, v98);
        v114(v12, v42);
        v40 = 0;
      }

      v39(&v43[v41], v40, 1, v42);
      v99 = *(v112 + 112);
      v100 = *(v112 + 128);
      v39(v41 + *(v112 + 96), 1, 1, v42);
      v39(v41 + v99, 1, 1, v42);
      v101 = type metadata accessor for ActionButtonDescriptor(0);
      (*(*(v101 - 8) + 56))(v41 + v100, 1, 1, v101);
      goto LABEL_21;
    }

    if (v22 == 6)
    {
      v44 = v13;
      v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0739C0, &qword_1E65EDD50);
      v46 = v45[12];
      v47 = v45[16];
      v48 = v45[20];
      v49 = sub_1E5F9B6D0(&unk_1F5FA8298);
      sub_1E604FC70(v49, a3 + v46);

      sub_1E65DCF58();
      if (qword_1ED071A48 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v4, qword_1ED096450);
      v51 = v116;
      v50 = v117;
      (*(v44 + 104))(v116, *MEMORY[0x1E69686E8], v117);
      sub_1E6053B3C(&qword_1EE2D7280, MEMORY[0x1E6968848], MEMORY[0x1E6968820]);
      v52 = v115;
      sub_1E65D73C8();
      (*(v44 + 8))(v51, v50);
      v53 = v114;
      (*(v114 + 1))(v17, v52);
      v54 = *(v53 + 7);
      v54(a3 + v47, 0, 1, v52);
      v54(a3 + v48, 1, 1, v52);
      sub_1E65E0A48();
      goto LABEL_21;
    }
  }

  if (v22 < 2u)
  {
    goto LABEL_13;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072618, qword_1E65FBAF0);
  sub_1E65E0678();
  v81 = sub_1E65E07C8();
  if (sub_1E65E4B48())
  {
    sub_1E65DC388();
  }

  sub_1E65E0838();
  v82 = v13;
  if (v81)
  {
    v83 = a3;
    if (qword_1ED071AF0 != -1)
    {
      swift_once();
    }

    v84 = qword_1ED096630;
  }

  else
  {
    v83 = a3;
    if (qword_1EE2D7268 != -1)
    {
      swift_once();
    }

    v84 = qword_1EE2EA250;
  }

  v85 = __swift_project_value_buffer(v4, v84);
  v86 = v106;
  (*(v110 + 16))(v106, v85, v4);
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072620, &qword_1E65EB938);
  v88 = v87[12];
  v89 = v87[16];
  v112 = v87[20];
  (*(v108 + 16))(v83, v111, v109);
  v90 = sub_1E5F9B6D0(&unk_1F5FA82C0);
  sub_1E604FC70(v90, a3 + v88);

  sub_1E65DCF58();
  v92 = v116;
  v91 = v117;
  (*(v82 + 104))(v116, *MEMORY[0x1E69686E8], v117);
  sub_1E6053B3C(&qword_1EE2D7280, MEMORY[0x1E6968848], MEMORY[0x1E6968820]);
  v93 = v115;
  sub_1E65D73C8();
  (*(v82 + 8))(v92, v91);
  v94 = v114;
  (*(v114 + 1))(v17, v93);
  (*(v110 + 8))(v86, v4);
  (*(v108 + 8))(v111, v109);
  (*(v94 + 7))(a3 + v89, 0, 1, v93);
  v95 = *MEMORY[0x1E699DB20];
  v96 = sub_1E65E0B08();
  (*(*(v96 - 8) + 104))(a3 + v112, v95, v96);
LABEL_21:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072610, &qword_1E65EB930);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1E6052408()
{
  v0 = sub_1E65E07B8();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1E65E05C8();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = &v16 - v7;
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v16 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072618, qword_1E65FBAF0);
  v11 = sub_1E65E06A8();
  if (*(v11 + 16) && (v12 = sub_1E64290E4(2), (v13 & 1) != 0))
  {
    v14 = *(v2 + 16);
    v14(v8, *(v11 + 56) + *(v2 + 72) * v12, v1);

    (*(v2 + 32))(v10, v8, v1);
    v14(v5, v10, v1);
    sub_1E65E0768();
    sub_1E65E0AB8();
    return (*(v2 + 8))(v10, v1);
  }

  else
  {

    result = sub_1E65E69D8();
    __break(1u);
  }

  return result;
}

uint64_t sub_1E60526C0@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CC0, &unk_1E65F2610);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v23 - v3;
  v5 = type metadata accessor for ActionButtonDescriptor.Kind(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = (&v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1E65DCE68();
  v8 = sub_1E65DCCF8();
  v10 = v9;
  if (v8 == sub_1E65DCCF8() && v10 == v11)
  {

LABEL_5:
    *v7 = sub_1E65DCED8();
    v7[1] = v13;
    v14 = sub_1E65DCE28();
    if (v14 != 2)
    {
      v15 = v14;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073870, &unk_1E65F4340);
      *v4 = v15 & 1;
      sub_1E65D7688();
    }

    swift_storeEnumTagMultiPayload();
    v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073788, &unk_1E6607970) + 48);
    v17 = v7 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073880, &qword_1E65EDC20) + 48);
    State = type metadata accessor for WorkoutActionsMenuLoadState(0);
    sub_1E621B0E4(&v17[*(State + 24)]);
    swift_storeEnumTagMultiPayload();
    sub_1E621B1F4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077A70, &qword_1E65F2620);
    swift_storeEnumTagMultiPayload();
    sub_1E6053A2C(v4, &v17[*(State + 28)]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073648, &qword_1E6607560);
    swift_storeEnumTagMultiPayload();
    *(v7 + v16) = xmmword_1E65EAE00;
    swift_storeEnumTagMultiPayload();
    sub_1E65D76E8();
    v19 = type metadata accessor for ActionButtonDescriptor(0);
    sub_1E6053A9C(v7, a1 + *(v19 + 20), type metadata accessor for ActionButtonDescriptor.Kind);
    return (*(*(v19 - 8) + 56))(a1, 0, 1, v19);
  }

  v12 = sub_1E65E6C18();

  if (v12)
  {
    goto LABEL_5;
  }

  v21 = type metadata accessor for ActionButtonDescriptor(0);
  v22 = *(*(v21 - 8) + 56);

  return v22(a1, 1, 1, v21);
}

uint64_t sub_1E6052A2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a2;
  v7 = sub_1E65D72D8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v50 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_1E65D7268();
  v53 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072D90, &qword_1E66040F0);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = (&v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v44 - v16;
  v18 = sub_1E65DAE38();
  if (v18 == sub_1E65DAE38())
  {

    return sub_1E605153C(a1, v4, a3);
  }

  else
  {
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0739B8, &qword_1E65EDD48);
    v21 = *(v20 + 48);
    v47 = v20;
    v49 = *(v20 + 64);
    v22 = sub_1E65DCE68();
    sub_1E605312C(v22, a3);
    v23 = sub_1E5F9B6D0(&unk_1F5FA8310);
    sub_1E604FC70(v23, a3 + v21);

    v52 = v3;
    sub_1E65DCF78();
    v46 = *(v8 + 48);
    v24 = v46(v17, 1, v7);
    v48 = v11;
    if (v24 == 1)
    {
      sub_1E5DFE50C(v17, &qword_1ED072D90, &qword_1E66040F0);
      v25 = 1;
      v26 = v49;
    }

    else
    {
      if (qword_1EE2D7248 != -1)
      {
        swift_once();
      }

      v27 = sub_1E65D7348();
      __swift_project_value_buffer(v27, qword_1EE2EA208);
      v28 = v51;
      (*(v53 + 104))(v11, *MEMORY[0x1E69686E8], v51);
      sub_1E6053B3C(&qword_1EE2D7280, MEMORY[0x1E6968848], MEMORY[0x1E6968820]);
      v26 = v49;
      sub_1E65D73C8();
      (*(v53 + 8))(v11, v28);
      (*(v8 + 8))(v17, v7);
      v25 = 0;
    }

    v49 = v8;
    v29 = *(v8 + 56);
    v29(a3 + v26, v25, 1, v7);
    v30 = v47;
    v31 = v47[20];
    sub_1E65DCF68();
    if (v46(v15, 1, v7) == 1)
    {
      sub_1E5DFE50C(v15, &qword_1ED072D90, &qword_1E66040F0);
      v32 = 1;
    }

    else
    {
      v45 = v31;
      v46 = v15;
      if (qword_1ED071A10 != -1)
      {
        swift_once();
      }

      v33 = sub_1E65D7348();
      __swift_project_value_buffer(v33, qword_1ED0963A8);
      v34 = v53;
      v35 = v48;
      v36 = v51;
      (*(v53 + 104))(v48, *MEMORY[0x1E69686E8], v51);
      sub_1E6053B3C(&qword_1EE2D7280, MEMORY[0x1E6968848], MEMORY[0x1E6968820]);
      v31 = v45;
      v37 = v46;
      sub_1E65D73C8();
      (*(v34 + 8))(v35, v36);
      (*(v49 + 8))(v37, v7);
      v32 = 0;
    }

    v38 = v50;
    v29(a3 + v31, v32, 1, v7);
    v39 = v30[24];
    v46 = v30[28];
    v50 = v30[32];
    sub_1E65DCF58();
    if (qword_1ED071A18 != -1)
    {
      swift_once();
    }

    v40 = sub_1E65D7348();
    __swift_project_value_buffer(v40, qword_1ED0963C0);
    v41 = v53;
    v42 = v48;
    v43 = v51;
    (*(v53 + 104))(v48, *MEMORY[0x1E69686E8], v51);
    sub_1E6053B3C(&qword_1EE2D7280, MEMORY[0x1E6968848], MEMORY[0x1E6968820]);
    sub_1E65D73C8();
    (*(v41 + 8))(v42, v43);
    (*(v49 + 8))(v38, v7);
    v29(a3 + v39, 0, 1, v7);
    v29(v46 + a3, 1, 1, v7);
    sub_1E60526C0(&v50[a3]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072610, &qword_1E65EB930);
    return swift_storeEnumTagMultiPayload();
  }
}

uint64_t sub_1E605312C@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2;
  v23[1] = a3;
  v4 = a2;
  v5 = sub_1E65E07B8();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1E65E05C8();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v23 - v11;
  sub_1E6053474(v3, v23 - v11);
  if (v4 == 5)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072618, qword_1E65FBAF0);
    sub_1E65E0678();
    sub_1E65E07C8();
  }

  v13 = sub_1E65DCCF8();
  v15 = v14;
  if (v13 == sub_1E65DCCF8() && v15 == v16)
  {
  }

  else
  {
    v17 = sub_1E65E6C18();

    if (v17 & 1) == 0 && (sub_1E65E4B48())
    {
      sub_1E65DC368();
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072618, qword_1E65FBAF0);
  sub_1E65E0668();
  (*(v7 + 16))(v10, v12, v6);
  v18 = sub_1E65DCCF8();
  v20 = v19;
  if (v18 == sub_1E65DCCF8() && v20 == v21)
  {
  }

  else
  {
    sub_1E65E6C18();
  }

  sub_1E65E05B8();
  sub_1E65E0AB8();
  return (*(v7 + 8))(v12, v6);
}

uint64_t sub_1E6053474@<X0>(unsigned __int8 a1@<W1>, uint64_t a2@<X8>)
{
  v3 = a1;
  v4 = sub_1E65E05C8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v3 == 5 && (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072618, qword_1E65FBAF0), sub_1E65E0678(), (sub_1E65E07C8() & 1) == 0))
  {

    return sub_1E65E0598();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072618, qword_1E65FBAF0);
    v8 = sub_1E65E06A8();
    if (*(v8 + 16) && (v9 = sub_1E64290E4(2), (v10 & 1) != 0))
    {
      (*(v5 + 16))(v7, *(v8 + 56) + *(v5 + 72) * v9, v4);

      return (*(v5 + 32))(a2, v7, v4);
    }

    else
    {

      result = sub_1E65E69D8();
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1E6053664()
{
  v1 = sub_1E65DCA68();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E65DCA38();
  v5 = sub_1E65DCA58();
  (*(v2 + 8))(v4, v1);
  if (v5 <= 8u)
  {
    if (((1 << v5) & 0x198) != 0)
    {
LABEL_8:
      sub_1E65E0A68();
      goto LABEL_9;
    }

    if (v5 == 5)
    {
      sub_1E65DCA28();
      sub_1E6052408();
      goto LABEL_9;
    }

    if (v5 == 6)
    {
      sub_1E65E0A48();
      goto LABEL_9;
    }
  }

  if (v5 < 2u)
  {
    goto LABEL_8;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072618, qword_1E65FBAF0);
  sub_1E65E0678();
  sub_1E65E07C8();
  if (sub_1E65E4B48())
  {
    sub_1E65DC388();
  }

  sub_1E65E0838();
LABEL_9:
  sub_1E65E03F8();
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1E6053844(uint64_t a1)
{
  v19 = MEMORY[0x1E69E7CD0];
  sub_1E65DCF18();
  if (v1)
  {

    if ((sub_1E637E938() & 1) != 0 && sub_1E65DCE88() >= 1)
    {
      sub_1E60F191C(&v13, 4);
    }

    if (sub_1E637E938())
    {
      sub_1E65DCE48();
      if (v2)
      {

        v3 = &v14;
        v4 = 1;
LABEL_24:
        sub_1E60F191C(v3, v4);
      }
    }
  }

  else
  {
    if (sub_1E637E938())
    {
      sub_1E65DCE48();
      if (v5)
      {

        sub_1E60F191C(&v15, 1);
      }
    }

    if ((sub_1E637E938() & 1) != 0 && sub_1E65DCE88() >= 1)
    {
      sub_1E60F191C(&v16, 0);
    }

    if (sub_1E637E938())
    {
      v6 = sub_1E65DCF08();
      if (v6 != 2 && (v6 & 1) != 0)
      {
        sub_1E60F191C(&v17, 2);
      }
    }

    if (sub_1E637E938())
    {
      sub_1E65DCE68();
      v7 = sub_1E65DCCF8();
      v9 = v8;
      if (v7 == sub_1E65DCCF8() && v9 == v10)
      {
      }

      else
      {
        v11 = sub_1E65E6C18();

        if ((v11 & 1) == 0)
        {
          return v19;
        }
      }

      v3 = &v18;
      v4 = 3;
      goto LABEL_24;
    }
  }

  return v19;
}

uint64_t sub_1E6053A2C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CC0, &unk_1E65F2610);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E6053A9C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E6053B3C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E6053B84(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E65DCA48();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t getEnumTagSinglePayload for ViewPlanButtonStyle(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
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

_WORD *storeEnumTagSinglePayload for ViewPlanButtonStyle(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
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
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
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

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
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

uint64_t sub_1E6053D64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v124 = a2;
  v125 = a1;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0739D0, &qword_1E65EDDE0);
  MEMORY[0x1EEE9AC00](v121);
  v109 = &v97 - v4;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0739D8, &qword_1E65EDDE8);
  MEMORY[0x1EEE9AC00](v122);
  v123 = &v97 - v5;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0739E0, &qword_1E65EDDF0);
  MEMORY[0x1EEE9AC00](v117);
  v118 = &v97 - v6;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0739E8, &qword_1E65EDDF8);
  MEMORY[0x1EEE9AC00](v119);
  v120 = &v97 - v7;
  v106 = sub_1E65E42E8();
  v103 = *(v106 - 8);
  MEMORY[0x1EEE9AC00](v106);
  v101 = &v97 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0739F0, &qword_1E65EDE00);
  v111 = *(v9 - 8);
  v112 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v110 = &v97 - v10;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0739F8, &qword_1E65EDE08);
  v104 = *(v105 - 8);
  MEMORY[0x1EEE9AC00](v105);
  v102 = &v97 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073A00, &qword_1E65EDE10);
  MEMORY[0x1EEE9AC00](v12);
  v107 = &v97 - v13;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073A08, &qword_1E65EDE18);
  MEMORY[0x1EEE9AC00](v115);
  v15 = &v97 - v14;
  v100 = sub_1E65E3FE8();
  v99 = *(v100 - 8);
  MEMORY[0x1EEE9AC00](v100);
  v98 = &v97 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1E65E43E8();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v97 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073A10, &qword_1E65EDE20);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v97 - v22;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073A18, &qword_1E65EDE28);
  MEMORY[0x1EEE9AC00](v113);
  v25 = &v97 - v24;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073A20, &qword_1E65EDE30);
  MEMORY[0x1EEE9AC00](v116);
  v114 = &v97 - v26;
  v27 = v3[1];
  if (v27 < 2)
  {
    v108 = v15;
    v109 = v12;
    v28 = *v3;
    v30 = *(v18 + 16);
    v29 = v18 + 16;
    v30(&v97 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), v125, v17);
    v31 = (*(v29 + 64) + 16) & ~*(v29 + 64);
    v32 = (v29 + 16);
    v33 = swift_allocObject();
    if (v28 == 1)
    {
      v34 = (*v32)(v33 + v31, &v97 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), v17);
      v112 = &v97;
      MEMORY[0x1EEE9AC00](v34);
      v111 = &v97 - 4;
      v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073B10, &qword_1E65EDF58);
      v110 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED073B18, &qword_1E65EDF60);
      v35 = sub_1E65E4258();
      v36 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED073B20, &qword_1E65EDF68);
      v37 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ED0776B0, &unk_1E65EDE50);
      v38 = sub_1E6056A28();
      v39 = sub_1E5FED46C(&qword_1EE2D4460, &unk_1ED0776B0, &unk_1E65EDE50, MEMORY[0x1E69E6ED8]);
      v126 = v36;
      v127 = v37;
      v128 = v38;
      v129 = v39;
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      v41 = sub_1E6056B70(&qword_1ED073B40, MEMORY[0x1E697C848], MEMORY[0x1E697C840]);
      v126 = v110;
      v127 = v35;
      v128 = OpaqueTypeConformance2;
      v129 = v41;
      swift_getOpaqueTypeConformance2();
      sub_1E65E4AA8();
      v42 = &v23[*(v21 + 36)];
      sub_1E65E4B28();
      LOBYTE(v37) = sub_1E65E4438();
      v42[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073AA8, &qword_1E6600E10) + 36)] = v37;
      v43 = v98;
      sub_1E65E3FD8();
      sub_1E6056190();
      sub_1E6056B70(&qword_1ED073AB0, MEMORY[0x1E697C540], MEMORY[0x1E697C538]);
      v44 = v100;
      sub_1E65E47E8();
      (*(v99 + 8))(v43, v44);
      sub_1E5DFE50C(v23, &qword_1ED073A10, &qword_1E65EDE20);
      v45 = &v25[*(v113 + 36)];
      v46 = *MEMORY[0x1E697F468];
      v47 = sub_1E65E3FA8();
      (*(*(v47 - 8) + 104))(v45, v46, v47);
      *&v45[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073AB8, &qword_1E65EDEF0) + 36)] = 256;
      v48 = &qword_1ED073A18;
      v49 = &qword_1E65EDE28;
      sub_1E5DFD1CC(v25, v108, &qword_1ED073A18, &qword_1E65EDE28);
    }

    else
    {
      v51 = (*v32)(v33 + v31, v20, v17);
      MEMORY[0x1EEE9AC00](v51);
      v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073A28, &qword_1E65EDE38);
      v52 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED073A30, &unk_1E65EDE40);
      v53 = sub_1E65E4018();
      v54 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED073A38, &unk_1E65F28F0);
      v55 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ED0776B0, &unk_1E65EDE50);
      v56 = sub_1E6055D14();
      v57 = sub_1E5FED46C(&qword_1EE2D4460, &unk_1ED0776B0, &unk_1E65EDE50, MEMORY[0x1E69E6ED8]);
      v126 = v54;
      v127 = v55;
      v128 = v56;
      v129 = v57;
      v58 = swift_getOpaqueTypeConformance2();
      v59 = sub_1E6056B70(&qword_1EE2D4D98, MEMORY[0x1E697C5D0], MEMORY[0x1E697C5C8]);
      v126 = v52;
      v127 = v53;
      v128 = v58;
      v129 = v59;
      swift_getOpaqueTypeConformance2();
      v60 = v110;
      sub_1E65E4AA8();
      v61 = v101;
      sub_1E65E42D8();
      v62 = sub_1E5FED46C(&qword_1ED073A60, &qword_1ED0739F0, &qword_1E65EDE00, MEMORY[0x1E697D680]);
      v63 = sub_1E6056B70(&qword_1EE2D4C10, MEMORY[0x1E697CB70], MEMORY[0x1E697CB68]);
      v64 = v102;
      v65 = v112;
      v66 = v106;
      sub_1E65E47E8();
      (*(v103 + 8))(v61, v66);
      (v111[1])(v60, v65);
      sub_1E65E4B58();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073AD8, &unk_1E65EDF00);
      v126 = v65;
      v127 = v66;
      v128 = v62;
      v129 = v63;
      swift_getOpaqueTypeConformance2();
      sub_1E6056520();
      v25 = v107;
      v67 = v105;
      sub_1E65E4938();
      (*(v104 + 8))(v64, v67);
      v68 = [objc_opt_self() secondarySystemBackgroundColor];
      v69 = sub_1E65E4968();
      KeyPath = swift_getKeyPath();
      v126 = v69;
      v71 = sub_1E65E3D08();
      v72 = &v25[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073AD0, &qword_1E65EDEF8) + 36)];
      *v72 = KeyPath;
      v72[1] = v71;
      [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
      *&v25[*(v109 + 9)] = sub_1E65E4968();
      v48 = &qword_1ED073A00;
      v49 = &qword_1E65EDE10;
      sub_1E5DFD1CC(v25, v108, &qword_1ED073A00, &qword_1E65EDE10);
    }

    swift_storeEnumTagMultiPayload();
    sub_1E605604C();
    sub_1E6056274();
    v50 = v114;
    sub_1E65E4138();
    sub_1E5DFE50C(v25, v48, v49);
    v73 = &qword_1ED073A20;
    v74 = &qword_1E65EDE30;
    sub_1E5DFD1CC(v50, v118, &qword_1ED073A20, &qword_1E65EDE30);
    swift_storeEnumTagMultiPayload();
    sub_1E6055FC0();
    sub_1E6056698();
    v75 = v120;
    goto LABEL_8;
  }

  if (v27 == 3)
  {
    (*(v18 + 16))(&v97 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), v125, v17);
    v76 = (*(v18 + 80) + 16) & ~*(v18 + 80);
    v77 = swift_allocObject();
    v78 = (*(v18 + 32))(v77 + v76, v20, v17);
    v115 = &v97;
    MEMORY[0x1EEE9AC00](v78);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073A28, &qword_1E65EDE38);
    v79 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED073A30, &unk_1E65EDE40);
    v80 = sub_1E65E4018();
    v81 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED073A38, &unk_1E65F28F0);
    v82 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ED0776B0, &unk_1E65EDE50);
    v83 = sub_1E6055D14();
    v84 = sub_1E5FED46C(&qword_1EE2D4460, &unk_1ED0776B0, &unk_1E65EDE50, MEMORY[0x1E69E6ED8]);
    v126 = v81;
    v127 = v82;
    v128 = v83;
    v129 = v84;
    v85 = swift_getOpaqueTypeConformance2();
    v86 = sub_1E6056B70(&qword_1EE2D4D98, MEMORY[0x1E697C5D0], MEMORY[0x1E697C5C8]);
    v126 = v79;
    v127 = v80;
    v128 = v85;
    v129 = v86;
    swift_getOpaqueTypeConformance2();
    v87 = v110;
    sub_1E65E4AA8();
    sub_1E65E4B58();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073A58, &unk_1E65EDE60);
    sub_1E5FED46C(&qword_1ED073A60, &qword_1ED0739F0, &qword_1E65EDE00, MEMORY[0x1E697D680]);
    sub_1E6055E2C();
    v50 = v109;
    v88 = v112;
    sub_1E65E4938();
    (v111[1])(v87, v88);
    v89 = sub_1E65E41D8();
    *(v50 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073A70, &qword_1E65EDE70) + 36)) = v89;
    sub_1E65E49A8();
    v90 = sub_1E65E49B8();

    v91 = swift_getKeyPath();
    v92 = (v50 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073A78, &qword_1E65EDEA8) + 36));
    *v92 = v91;
    v92[1] = v90;
    sub_1E65E4988();
    v93 = sub_1E65E49B8();

    v94 = swift_getKeyPath();
    v95 = (v50 + *(v121 + 36));
    *v95 = v94;
    v95[1] = v93;
    v73 = &qword_1ED0739D0;
    v74 = &qword_1E65EDDE0;
    sub_1E5DFD1CC(v50, v118, &qword_1ED0739D0, &qword_1E65EDDE0);
    swift_storeEnumTagMultiPayload();
    sub_1E6055FC0();
    sub_1E6056698();
    v75 = v120;
LABEL_8:
    sub_1E65E4138();
    sub_1E5DFD1CC(v75, v123, &qword_1ED0739E8, &qword_1E65EDDF8);
    swift_storeEnumTagMultiPayload();
    sub_1E6056970();
    sub_1E65E4138();
    sub_1E5DFE50C(v75, &qword_1ED0739E8, &qword_1E65EDDF8);
    return sub_1E5DFE50C(v50, v73, v74);
  }

  result = sub_1E65E69D8();
  __break(1u);
  return result;
}

uint64_t sub_1E6055118@<X0>(uint64_t a1@<X8>)
{
  v31 = a1;
  v1 = sub_1E65E4258();
  v32 = *(v1 - 8);
  v33 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v28 = &v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0776B0, &unk_1E65EDE50);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v28 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073B20, &qword_1E65EDF68);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v28 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073B18, &qword_1E65EDF60);
  v29 = *(v9 - 8);
  v30 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v28 - v10;
  sub_1E65E43C8();
  sub_1E65E4598();
  v12 = sub_1E65E44B8();

  KeyPath = swift_getKeyPath();
  v14 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072A70, &unk_1E65EC3F0) + 36)];
  *v14 = KeyPath;
  v14[1] = v12;
  v15 = &v8[*(v6 + 36)];
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073B38, &qword_1E65EDF70) + 28);
  v17 = *MEMORY[0x1E6980FD8];
  v18 = sub_1E65E4658();
  v19 = *(v18 - 8);
  (*(v19 + 104))(v15 + v16, v17, v18);
  (*(v19 + 56))(v15 + v16, 0, 1, v18);
  *v15 = swift_getKeyPath();
  v20 = *MEMORY[0x1E697E728];
  v21 = sub_1E65E3DD8();
  (*(*(v21 - 8) + 104))(v5, v20, v21);
  sub_1E6056B70(&qword_1EE2D4EF0, MEMORY[0x1E697E730], MEMORY[0x1E697E750]);
  result = sub_1E65E5B98();
  if (result)
  {
    v23 = sub_1E6056A28();
    v24 = sub_1E5FED46C(&qword_1EE2D4460, &unk_1ED0776B0, &unk_1E65EDE50, MEMORY[0x1E69E6ED8]);
    sub_1E65E4848();
    sub_1E5DFE50C(v5, &unk_1ED0776B0, &unk_1E65EDE50);
    sub_1E5DFE50C(v8, &qword_1ED073B20, &qword_1E65EDF68);
    v25 = v28;
    sub_1E65E4248();
    v34 = v6;
    v35 = v3;
    v36 = v23;
    v37 = v24;
    swift_getOpaqueTypeConformance2();
    sub_1E6056B70(&qword_1ED073B40, MEMORY[0x1E697C848], MEMORY[0x1E697C840]);
    v26 = v30;
    v27 = v33;
    sub_1E65E47D8();
    (*(v32 + 8))(v25, v27);
    return (*(v29 + 8))(v11, v26);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E60555F4@<X0>(uint64_t a1@<X8>)
{
  v47 = a1;
  v49 = sub_1E65E4018();
  v48 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v46 = &v43 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0776B0, &unk_1E65EDE50);
  MEMORY[0x1EEE9AC00](v45);
  v4 = &v43 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072A70, &unk_1E65EC3F0);
  v6 = v5 - 8;
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v43 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073A50, &qword_1E6600D50);
  v10 = v9 - 8;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v43 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073A38, &unk_1E65F28F0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v43 - v14;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073A30, &unk_1E65EDE40);
  v43 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v17 = &v43 - v16;
  sub_1E65E43C8();
  sub_1E65E44A8();
  sub_1E65E4508();
  v18 = sub_1E65E4538();

  KeyPath = swift_getKeyPath();
  v20 = &v8[*(v6 + 44)];
  *v20 = KeyPath;
  v20[1] = v18;
  sub_1E65E4BA8();
  sub_1E65E3E38();
  sub_1E5FAB460(v8, v12, &qword_1ED072A70, &unk_1E65EC3F0);
  v21 = &v12[*(v10 + 44)];
  v22 = v59;
  *(v21 + 4) = v58;
  *(v21 + 5) = v22;
  *(v21 + 6) = v60;
  v23 = v55;
  *v21 = v54;
  *(v21 + 1) = v23;
  v24 = v57;
  *(v21 + 2) = v56;
  *(v21 + 3) = v24;
  LOBYTE(v8) = sub_1E65E4488();
  sub_1E65E3BF8();
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  sub_1E5FAB460(v12, v15, &qword_1ED073A50, &qword_1E6600D50);
  v33 = &v15[*(v13 + 36)];
  *v33 = v8;
  *(v33 + 1) = v26;
  *(v33 + 2) = v28;
  *(v33 + 3) = v30;
  *(v33 + 4) = v32;
  v33[40] = 0;
  v34 = *MEMORY[0x1E697E728];
  v35 = sub_1E65E3DD8();
  (*(*(v35 - 8) + 104))(v4, v34, v35);
  sub_1E6056B70(&qword_1EE2D4EF0, MEMORY[0x1E697E730], MEMORY[0x1E697E750]);
  result = sub_1E65E5B98();
  if (result)
  {
    v37 = sub_1E6055D14();
    v38 = sub_1E5FED46C(&qword_1EE2D4460, &unk_1ED0776B0, &unk_1E65EDE50, MEMORY[0x1E69E6ED8]);
    v39 = v45;
    sub_1E65E4848();
    sub_1E5DFE50C(v4, &unk_1ED0776B0, &unk_1E65EDE50);
    sub_1E5DFE50C(v15, &qword_1ED073A38, &unk_1E65F28F0);
    v40 = v46;
    sub_1E65E4008();
    v50 = v13;
    v51 = v39;
    v52 = v37;
    v53 = v38;
    swift_getOpaqueTypeConformance2();
    sub_1E6056B70(&qword_1EE2D4D98, MEMORY[0x1E697C5D0], MEMORY[0x1E697C5C8]);
    v41 = v44;
    v42 = v49;
    sub_1E65E47D8();
    (*(v48 + 8))(v40, v42);
    return (*(v43 + 8))(v17, v41);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E6055C24@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X8>)
{
  v10 = (a6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(a2, a3) + 36));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073778, &qword_1E6600D60);
  sub_1E65E3E48();
  *v10 = swift_getKeyPath();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v12 = *(*(v11 - 8) + 16);

  return v12(a6, a1, v11);
}

unint64_t sub_1E6055D14()
{
  result = qword_1ED073A40;
  if (!qword_1ED073A40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED073A38, &unk_1E65F28F0);
    sub_1E6055DA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED073A40);
  }

  return result;
}

unint64_t sub_1E6055DA0()
{
  result = qword_1ED073A48;
  if (!qword_1ED073A48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED073A50, &qword_1E6600D50);
    sub_1E60007B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED073A48);
  }

  return result;
}

unint64_t sub_1E6055E2C()
{
  result = qword_1ED073A68;
  if (!qword_1ED073A68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED073A58, &unk_1E65EDE60);
    sub_1E5FED46C(&qword_1ED073A60, &qword_1ED0739F0, &qword_1E65EDE00, MEMORY[0x1E697D680]);
    sub_1E5FED46C(&unk_1EE2D4BF0, &qword_1ED073778, &qword_1E6600D60, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED073A68);
  }

  return result;
}

uint64_t sub_1E6055F10@<X0>(uint64_t *a1@<X8>)
{
  result = MEMORY[0x1E694B870]();
  *a1 = result;
  return result;
}

uint64_t sub_1E6055F68@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E65E3F38();
  *a1 = result;
  return result;
}

unint64_t sub_1E6055FC0()
{
  result = qword_1ED073A80;
  if (!qword_1ED073A80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED073A20, &qword_1E65EDE30);
    sub_1E605604C();
    sub_1E6056274();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED073A80);
  }

  return result;
}

unint64_t sub_1E605604C()
{
  result = qword_1ED073A88;
  if (!qword_1ED073A88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED073A18, &qword_1E65EDE28);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED073A10, &qword_1E65EDE20);
    sub_1E65E3FE8();
    sub_1E6056190();
    sub_1E6056B70(&qword_1ED073AB0, MEMORY[0x1E697C540], MEMORY[0x1E697C538]);
    swift_getOpaqueTypeConformance2();
    sub_1E5FED46C(&qword_1EE2D4EF8, &qword_1ED073AB8, &qword_1E65EDEF0, MEMORY[0x1E697DDB0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED073A88);
  }

  return result;
}

unint64_t sub_1E6056190()
{
  result = qword_1ED073A90;
  if (!qword_1ED073A90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED073A10, &qword_1E65EDE20);
    sub_1E5FED46C(&qword_1ED073A98, &qword_1ED073AA0, &unk_1E65EDEE0, MEMORY[0x1E697D680]);
    sub_1E5FED46C(&qword_1EE2D4C28, &qword_1ED073AA8, &qword_1E6600E10, MEMORY[0x1E6980468]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED073A90);
  }

  return result;
}

unint64_t sub_1E6056274()
{
  result = qword_1ED073AC0;
  if (!qword_1ED073AC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED073A00, &qword_1E65EDE10);
    sub_1E605632C();
    sub_1E5FED46C(&qword_1EE2D4C18, &qword_1ED072AA0, &qword_1E65EDF10, MEMORY[0x1E6980490]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED073AC0);
  }

  return result;
}

unint64_t sub_1E605632C()
{
  result = qword_1ED073AC8;
  if (!qword_1ED073AC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED073AD0, &qword_1E65EDEF8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0739F8, &qword_1E65EDE08);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED073AD8, &unk_1E65EDF00);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0739F0, &qword_1E65EDE00);
    sub_1E65E42E8();
    sub_1E5FED46C(&qword_1ED073A60, &qword_1ED0739F0, &qword_1E65EDE00, MEMORY[0x1E697D680]);
    sub_1E6056B70(&qword_1EE2D4C10, MEMORY[0x1E697CB70], MEMORY[0x1E697CB68]);
    swift_getOpaqueTypeConformance2();
    sub_1E6056520();
    swift_getOpaqueTypeConformance2();
    sub_1E5FED46C(&qword_1EE2D4C00, &unk_1ED07A430, &qword_1E65EC470, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED073AC8);
  }

  return result;
}

unint64_t sub_1E6056520()
{
  result = qword_1ED073AE0;
  if (!qword_1ED073AE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED073AD8, &unk_1E65EDF00);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0739F0, &qword_1E65EDE00);
    sub_1E65E42E8();
    sub_1E5FED46C(&qword_1ED073A60, &qword_1ED0739F0, &qword_1E65EDE00, MEMORY[0x1E697D680]);
    sub_1E6056B70(&qword_1EE2D4C10, MEMORY[0x1E697CB70], MEMORY[0x1E697CB68]);
    swift_getOpaqueTypeConformance2();
    sub_1E5FED46C(&unk_1EE2D4BF0, &qword_1ED073778, &qword_1E6600D60, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED073AE0);
  }

  return result;
}

unint64_t sub_1E6056698()
{
  result = qword_1ED073AE8;
  if (!qword_1ED073AE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0739D0, &qword_1E65EDDE0);
    sub_1E6056750();
    sub_1E5FED46C(&qword_1EE2D4BE0, &qword_1ED0738C8, &qword_1E65EDF20, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED073AE8);
  }

  return result;
}

unint64_t sub_1E6056750()
{
  result = qword_1ED073AF0;
  if (!qword_1ED073AF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED073A78, &qword_1E65EDEA8);
    sub_1E6056808();
    sub_1E5FED46C(&qword_1EE2D4BE0, &qword_1ED0738C8, &qword_1E65EDF20, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED073AF0);
  }

  return result;
}

unint64_t sub_1E6056808()
{
  result = qword_1ED073AF8;
  if (!qword_1ED073AF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED073A70, &qword_1E65EDE70);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0739F0, &qword_1E65EDE00);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED073A58, &unk_1E65EDE60);
    sub_1E5FED46C(&qword_1ED073A60, &qword_1ED0739F0, &qword_1E65EDE00, MEMORY[0x1E697D680]);
    sub_1E6055E2C();
    swift_getOpaqueTypeConformance2();
    sub_1E5FED46C(&qword_1EE2D4C20, &qword_1ED073B00, &qword_1E65EDF18, MEMORY[0x1E6980490]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED073AF8);
  }

  return result;
}

unint64_t sub_1E6056970()
{
  result = qword_1ED073B08;
  if (!qword_1ED073B08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0739E8, &qword_1E65EDDF8);
    sub_1E6055FC0();
    sub_1E6056698();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED073B08);
  }

  return result;
}

unint64_t sub_1E6056A28()
{
  result = qword_1ED073B28;
  if (!qword_1ED073B28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED073B20, &qword_1E65EDF68);
    sub_1E60007B0();
    sub_1E5FED46C(&qword_1ED073B30, &qword_1ED073B38, &qword_1E65EDF70, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED073B28);
  }

  return result;
}

uint64_t sub_1E6056AE0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073B48, &qword_1E65EDFD8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1E6056BB8(a1, &v5 - v3);
  return sub_1E65E3F28();
}

uint64_t sub_1E6056B70(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E6056BB8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073B48, &qword_1E65EDFD8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E6056C28()
{
  result = qword_1ED073B50;
  if (!qword_1ED073B50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED073B58, &qword_1E65EE010);
    sub_1E6056970();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED073B50);
  }

  return result;
}

uint64_t sub_1E6056CB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v8 = sub_1E65E5C28();
  v7[6] = v8;
  v7[7] = *(v8 - 8);
  v7[8] = swift_task_alloc();
  v9 = sub_1E65D8F28();
  v7[9] = v9;
  v7[10] = *(v9 - 8);
  v7[11] = swift_task_alloc();
  v7[12] = type metadata accessor for PageMetricsClick(0);
  v7[13] = swift_task_alloc();
  v7[14] = swift_task_alloc();
  v7[15] = sub_1E65E2258();
  v7[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6056E44, 0, 0);
}

uint64_t sub_1E6056E44()
{
  sub_1E6057C90(v0[2], v0[16]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      sub_1E6057CF4(v0[16], MEMORY[0x1E699F238]);
LABEL_10:

      v29 = v0[1];

      return v29();
    }

    v31 = v0[16];
    v32 = v0[14];
    v33 = v0[12];
    v34 = v0[10];
    v59 = v0[11];
    v61 = v0[9];
    v63 = v0[3];
    v65 = v0[4];
    v35 = v31[1];
    v68 = *v31;
    v36 = sub_1E65D9D78();
    (*(*(v36 - 8) + 56))(v32, 1, 1, v36);
    v37 = v33[5];
    v38 = *MEMORY[0x1E69CBAA0];
    v39 = sub_1E65D8C68();
    (*(*(v39 - 8) + 104))(v32 + v37, v38, v39);
    v40 = v33[6];
    v41 = sub_1E65D74E8();
    (*(*(v41 - 8) + 56))(v32 + v40, 1, 1, v41);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072E58, &qword_1E65F0E90);
    sub_1E65D86A8();
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_1E65EA670;
    v57 = v35;

    _s10Blackbeard20MetricIdentifierTypeO8rawValueSSvg_0();
    v56 = *MEMORY[0x1E69CBCD8];
    v43 = *(v34 + 104);
    v43(v59);
    sub_1E6427498(MEMORY[0x1E69E7CC0]);
    sub_1E65D8678();
    v44 = v33[8];
    v45 = sub_1E65DA208();
    (*(*(v45 - 8) + 56))(v32 + v44, 1, 1, v45);
    (v43)(v32 + v33[14], v56, v61);
    v46 = v33[15];
    v47 = *MEMORY[0x1E69CC498];
    v48 = sub_1E65D9908();
    v49 = *(v48 - 8);
    (*(v49 + 104))(v32 + v46, v47, v48);
    (*(v49 + 56))(v32 + v46, 0, 1, v48);
    *(v32 + v33[7]) = v42;
    v50 = (v32 + v33[9]);
    *v50 = 0;
    v50[1] = 0;
    v51 = (v32 + v33[10]);
    *v51 = 0;
    v51[1] = 0;
    *(v32 + v33[11]) = v63;
    v52 = (v32 + v33[12]);
    *v52 = 0;
    v52[1] = 0;
    v53 = (v32 + v33[13]);
    *v53 = v68;
    v53[1] = v57;
    v54 = *(v65 + 48);

    v67 = (v54 + *v54);
    v55 = swift_task_alloc();
    v0[17] = v55;
    *v55 = v0;
    v55[1] = sub_1E6057780;
    v28 = v0[14];
  }

  else
  {
    if (EnumCaseMultiPayload == 2 || EnumCaseMultiPayload != 3)
    {
      goto LABEL_10;
    }

    v4 = v0[12];
    v3 = v0[13];
    v5 = v0[10];
    v6 = v0[8];
    v62 = v0[9];
    v7 = v0[7];
    v58 = v0[11];
    v60 = v0[6];
    v66 = v0[4];
    v64 = v0[3];
    v8 = sub_1E65D9D78();
    (*(*(v8 - 8) + 56))(v3, 1, 1, v8);
    v9 = v4[5];
    v10 = *MEMORY[0x1E69CBAA0];
    v11 = sub_1E65D8C68();
    (*(*(v11 - 8) + 104))(v3 + v9, v10, v11);
    v12 = v4[6];
    v13 = sub_1E65D74E8();
    (*(*(v13 - 8) + 56))(v3 + v12, 1, 1, v13);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072E58, &qword_1E65F0E90);
    sub_1E65D86A8();
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1E65EA670;
    _s10Blackbeard20MetricIdentifierTypeO8rawValueSSvg_0();
    sub_1E65E5BA8();
    sub_1E65E2538();
    (*(v7 + 8))(v6, v60);
    v15 = *MEMORY[0x1E69CBCC8];
    v16 = *(v5 + 104);
    v16(v58, v15, v62);
    sub_1E6427498(MEMORY[0x1E69E7CC0]);
    sub_1E65D8678();
    v17 = v4[8];
    v18 = sub_1E65DA208();
    (*(*(v18 - 8) + 56))(v3 + v17, 1, 1, v18);
    v16(v3 + v4[14], v15, v62);
    v19 = v4[15];
    v20 = *MEMORY[0x1E69CC448];
    v21 = sub_1E65D9908();
    v22 = *(v21 - 8);
    (*(v22 + 104))(v3 + v19, v20, v21);
    (*(v22 + 56))(v3 + v19, 0, 1, v21);
    *(v3 + v4[7]) = v14;
    v23 = (v3 + v4[9]);
    *v23 = 0;
    v23[1] = 0;
    v24 = (v3 + v4[10]);
    *v24 = 0;
    v24[1] = 0;
    *(v3 + v4[11]) = v64;
    v25 = (v3 + v4[12]);
    *v25 = 0;
    v25[1] = 0;
    *(v3 + v4[13]) = xmmword_1E65ED860;
    v26 = *(v66 + 48);

    v67 = (v26 + *v26);
    v27 = swift_task_alloc();
    v0[19] = v27;
    *v27 = v0;
    v27[1] = sub_1E6057948;
    v28 = v0[13];
  }

  return v67(v28);
}

uint64_t sub_1E6057780()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_1E6057B10;
  }

  else
  {
    v2 = sub_1E6057894;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E6057894()
{
  sub_1E6057CF4(*(v0 + 112), type metadata accessor for PageMetricsClick);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E6057948()
{
  *(*v1 + 160) = v0;

  if (v0)
  {
    v2 = sub_1E6057BD0;
  }

  else
  {
    v2 = sub_1E6057A5C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E6057A5C()
{
  sub_1E6057CF4(*(v0 + 104), type metadata accessor for PageMetricsClick);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E6057B10()
{
  sub_1E6057CF4(*(v0 + 112), type metadata accessor for PageMetricsClick);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E6057BD0()
{
  sub_1E6057CF4(*(v0 + 104), type metadata accessor for PageMetricsClick);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E6057C90(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E65E2258();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E6057CF4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E6057D7C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073B60, &unk_1E65EE020);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1E6057DF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073B60, &unk_1E65EE020);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, a2, a3, v6);
}

uint64_t sub_1E6057E7C(void *a1)
{
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073BB0, &qword_1E65EE220);
  v2 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v4 = &v14 - v3;
  v5 = type metadata accessor for ContextMenu.Context(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073BB8, &qword_1E65EE228);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v14 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E60596CC();
  sub_1E65E6DA8();
  sub_1E60595FC(v14, v7, type metadata accessor for ContextMenu.Context);
  sub_1E6059720();
  sub_1E65E6B18();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073B60, &unk_1E65EE020);
  sub_1E6059774(&qword_1EE2D6900, MEMORY[0x1E699CA90]);
  v12 = v15;
  sub_1E65E6B78();
  sub_1E6059664(v7);
  (*(v2 + 8))(v4, v12);
  return (*(v9 + 8))(v11, v8);
}