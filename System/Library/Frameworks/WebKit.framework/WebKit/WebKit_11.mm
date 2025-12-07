uint64_t sub_19D60EC28()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 2;
  v4 = v0 + 10;
  v5 = v0 + 18;
  v7 = v0[23];
  v6 = v0[24];
  v8 = v0[22];
  v9 = v1[21];
  v12 = v1[20];
  v1[2] = v2;
  v1[7] = v5;
  v1[3] = sub_19D60EDE4;
  swift_continuation_init();
  v1[17] = v8;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v1 + 14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0175D0, &qword_19E701600);
  sub_19E6CD558();
  (*(v7 + 32))(boxed_opaque_existential_0, v6, v8);
  v1[10] = MEMORY[0x1E69E9820];
  v1[11] = 1107296256;
  v1[12] = sub_19D60F010;
  v1[13] = &block_descriptor_44;
  [v9 createPDFWithConfiguration:v12 completionHandler:v4];
  (*(v7 + 8))(boxed_opaque_existential_0, v8);

  return MEMORY[0x1EEE6DEC8](v3);
}

uint64_t sub_19D60EDE4()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 224) = v2;
  v3 = *(v1 + 216);
  v4 = *(v1 + 208);
  if (v2)
  {
    v5 = sub_19D60EF94;
  }

  else
  {
    v5 = sub_19D60EF14;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_19D60EF14()
{

  v1 = v0[18];
  v2 = v0[19];

  v3 = v0[1];

  return v3(v1, v2);
}

uint64_t sub_19D60EF94()
{

  swift_willThrow();

  v1 = *(v0 + 8);

  return v1();
}

void sub_19D60F010(uint64_t a1, void *a2, void *a3)
{
  __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0175E8, &qword_19E700870);
    sub_19E6CD568();
  }

  else
  {
    v6 = a2;
    sub_19E6CCF48();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0175E8, &qword_19E700870);
    sub_19E6CD578();
  }
}

uint64_t WKWebView.evaluateJavaScript(_:in:contentWorld:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[26] = a5;
  v6[27] = v5;
  v6[24] = a3;
  v6[25] = a4;
  v6[22] = a1;
  v6[23] = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0175E0, &qword_19E700860);
  v6[28] = v7;
  v6[29] = *(v7 - 8);
  v6[30] = swift_task_alloc();
  sub_19E6CD5B8();
  v6[31] = sub_19E6CD5A8();
  v9 = sub_19E6CD548();
  v6[32] = v9;
  v6[33] = v8;

  return MEMORY[0x1EEE6DFA0](sub_19D60F1D8, v9, v8);
}

uint64_t sub_19D60F1D8()
{
  v1 = v0;
  v2 = v0 + 2;
  v3 = v0 + 18;
  v4 = v0[29];
  v5 = v0[30];
  v6 = v0[28];
  v10 = v1[27];
  v11 = v1[25];
  v12 = v1[26];
  v7 = sub_19E6CD4C8();
  v1[34] = v7;
  v1[2] = v1;
  v1[7] = v3;
  v1[3] = sub_19D60F3C0;
  swift_continuation_init();
  v1[17] = v6;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v1 + 14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0175C0, &qword_19E701DE0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0175D0, &qword_19E701600);
  sub_19E6CD558();
  (*(v4 + 32))(boxed_opaque_existential_0, v5, v6);
  v1[10] = MEMORY[0x1E69E9820];
  v1[11] = 1107296256;
  v1[12] = sub_19D60EA4C;
  v1[13] = &block_descriptor_48;
  [v10 evaluateJavaScript:v7 inFrame:v11 inContentWorld:v12 completionHandler:?];
  (*(v4 + 8))(boxed_opaque_existential_0, v6);

  return MEMORY[0x1EEE6DEC8](v2);
}

uint64_t sub_19D60F3C0()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 280) = v2;
  v3 = *(v1 + 264);
  v4 = *(v1 + 256);
  if (v2)
  {
    v5 = sub_19D60F578;
  }

  else
  {
    v5 = sub_19D60F4F0;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_19D60F4F0()
{
  v1 = *(v0 + 272);
  v2 = *(v0 + 176);

  v3 = *(v0 + 160);
  *v2 = *(v0 + 144);
  v2[1] = v3;

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_19D60F578()
{
  v1 = *(v0 + 272);

  swift_willThrow();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t WKWebView.find(_:configuration:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[21] = a3;
  v4[22] = v3;
  v4[19] = a1;
  v4[20] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0175F0, &qword_19E700888);
  v4[23] = v5;
  v4[24] = *(v5 - 8);
  v4[25] = swift_task_alloc();
  sub_19E6CD5B8();
  v4[26] = sub_19E6CD5A8();
  v7 = sub_19E6CD548();
  v4[27] = v7;
  v4[28] = v6;

  return MEMORY[0x1EEE6DFA0](sub_19D60F6FC, v7, v6);
}

uint64_t sub_19D60F6FC()
{
  v1 = v0;
  v2 = v0 + 2;
  v3 = v0 + 10;
  v4 = v0 + 18;
  v5 = v0[24];
  v6 = v0[25];
  v7 = v0[23];
  v11 = v1[22];
  v12 = v1[21];
  v8 = sub_19E6CD4C8();
  v1[29] = v8;
  v1[2] = v1;
  v1[7] = v4;
  v1[3] = sub_19D60F8BC;
  swift_continuation_init();
  v1[17] = v7;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v1 + 14);
  sub_19D61039C();
  sub_19E6CD558();
  (*(v5 + 32))(boxed_opaque_existential_0, v6, v7);
  v1[10] = MEMORY[0x1E69E9820];
  v1[11] = 1107296256;
  v1[12] = sub_19D60FA48;
  v1[13] = &block_descriptor_52;
  [v11 findString:v8 withConfiguration:v12 completionHandler:v3];
  (*(v5 + 8))(boxed_opaque_existential_0, v7);

  return MEMORY[0x1EEE6DEC8](v2);
}

uint64_t sub_19D60F8BC()
{
  v1 = *(*v0 + 224);
  v2 = *(*v0 + 216);

  return MEMORY[0x1EEE6DFA0](sub_19D60F9C4, v2, v1);
}

uint64_t sub_19D60F9C4()
{
  v1 = v0[29];

  v2 = v0[18];

  v3 = v0[1];

  return v3(v2);
}

uint64_t sub_19D60FA48(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  v3 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0175F0, &qword_19E700888);
  return sub_19E6CD578();
}

uint64_t WKWebExtension.init(appExtensionBundle:)(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  sub_19E6CD5B8();
  v2[5] = sub_19E6CD5A8();
  v4 = sub_19E6CD548();

  return MEMORY[0x1EEE6DFA0](sub_19D60FB74, v4, v3);
}

uint64_t sub_19D60FB74()
{
  v1 = v0[3];

  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v0[2] = 0;
  v3 = [v2 initWithAppExtensionBundle:v1 resourceBaseURL:0 error:v0 + 2];
  v4 = v0[2];
  v5 = v0[3];
  if (v3)
  {
    v6 = v3;
    v7 = v4;

    v8 = v0[1];

    return v8(v6);
  }

  else
  {
    v10 = v4;
    sub_19E6CCEB8();

    swift_willThrow();
    v11 = v0[1];

    return v11();
  }
}

uint64_t WKWebExtension.init(resourceBaseURL:)(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  sub_19E6CD5B8();
  v2[5] = sub_19E6CD5A8();
  v4 = sub_19E6CD548();

  return MEMORY[0x1EEE6DFA0](sub_19D60FDA0, v4, v3);
}

uint64_t sub_19D60FDA0()
{

  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v2 = sub_19E6CCEF8();
  v0[2] = 0;
  v3 = [v1 initWithAppExtensionBundle:0 resourceBaseURL:v2 error:v0 + 2];

  v4 = v0[2];
  v5 = v0[3];
  if (v3)
  {
    v6 = sub_19E6CCF28();
    v7 = *(*(v6 - 8) + 8);
    v8 = v4;
    v7(v5, v6);
    v9 = v0[1];

    return v9(v3);
  }

  else
  {
    v11 = v4;
    sub_19E6CCEB8();

    swift_willThrow();
    v12 = sub_19E6CCF28();
    (*(*(v12 - 8) + 8))(v5, v12);
    v13 = v0[1];

    return v13();
  }
}

unint64_t sub_19D60FFE0(uint64_t a1, uint64_t a2)
{
  sub_19E6CD918();
  sub_19E6CD518();
  v4 = sub_19E6CD938();

  return sub_19D610058(a1, a2, v4);
}

unint64_t sub_19D610058(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_19E6CD878())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_19D610110(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB017600, &unk_19E701610);
    v3 = sub_19E6CD858();
    v4 = a1 + 32;

    while (1)
    {
      sub_19D6104FC(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_19D60FFE0(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_19D60D3B8(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_19D610220(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_19D610298(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_19D6102E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 16);
  v6[0] = a1;
  v6[1] = a2;
  return v4(v6, a3);
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

unint64_t sub_19D61039C()
{
  result = qword_1EB0175F8;
  if (!qword_1EB0175F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB0175F8);
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_19D61042C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_19D610440(a1, a2);
  }

  return a1;
}

uint64_t sub_19D610440(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_19D610494(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0175C0, &qword_19E701DE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_19D6104FC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB017608, &qword_19E702150);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t WebPage.BackForwardList.Item.ID.hash(into:)(uint64_t a1)
{
  sub_19E6CCF78();
  sub_19D611654(&qword_1EB017610, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);

  return sub_19E6CD4A8();
}

uint64_t WebPage.BackForwardList.Item.ID.hashValue.getter()
{
  sub_19E6CD918();
  sub_19E6CCF78();
  sub_19D611654(&qword_1EB017610, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_19E6CD4A8();
  return sub_19E6CD938();
}

uint64_t sub_19D6106D0()
{
  sub_19E6CD918();
  sub_19E6CCF78();
  sub_19D611654(&qword_1EB017610, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_19E6CD4A8();
  return sub_19E6CD938();
}

uint64_t sub_19D610758(uint64_t a1)
{
  sub_19E6CCF78();
  sub_19D611654(&qword_1EB017610, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);

  return sub_19E6CD4A8();
}

uint64_t sub_19D6107DC(uint64_t a1)
{
  sub_19E6CD918();
  sub_19E6CCF78();
  sub_19D611654(&qword_1EB017610, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_19E6CD4A8();
  return sub_19E6CD938();
}

void sub_19D610864(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_19E6CCF68();
  v4 = type metadata accessor for WebPage.BackForwardList.Item(0);
  *(a2 + *(v4 + 32)) = a1;
  v5 = a1;
  v6 = [v5 title];
  if (v6)
  {
    v7 = v6;
    v8 = sub_19E6CD4E8();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  v11 = (a2 + *(v4 + 20));
  *v11 = v8;
  v11[1] = v10;
  v12 = [v5 URL];
  sub_19E6CCF18();

  v13 = [v5 initialURL];
  sub_19E6CCF18();
}

uint64_t sub_19D6109A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WebPage.BackForwardList.Item.ID(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_19D610A24(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t WebPage.BackForwardList.Item.title.getter()
{
  v1 = *(v0 + *(type metadata accessor for WebPage.BackForwardList.Item(0) + 20));

  return v1;
}

uint64_t WebPage.BackForwardList.Item.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WebPage.BackForwardList.Item(0) + 24);
  v4 = sub_19E6CCF28();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t WebPage.BackForwardList.Item.initialURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WebPage.BackForwardList.Item(0) + 28);
  v4 = sub_19E6CCF28();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t WebPage.BackForwardList.currentItem.getter@<X0>(uint64_t a1@<X8>)
{
  if (*v1 && (v3 = [*v1 currentItem]) != 0)
  {
    v4 = v3;
    sub_19E6CD5B8();
    v5 = v4;
    sub_19E6CD5A8();
    sub_19E6CD548();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    v6 = v5;
    sub_19D610864(v6, a1);

    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = type metadata accessor for WebPage.BackForwardList.Item(0);
  v9 = *(*(v8 - 8) + 56);

  return v9(a1, v7, 1, v8);
}

void *sub_19D610CF4(SEL *a1)
{
  v3 = type metadata accessor for WebPage.BackForwardList.Item(0);
  v40 = *(v3 - 8);
  v6 = MEMORY[0x1EEE9AC00](v3, v4, v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v9, v10);
  v12 = &v34 - v11;
  v13 = MEMORY[0x1E69E7CC0];
  if (!*v1)
  {
    return v13;
  }

  v14 = [*v1 *a1];
  sub_19D611980(0, &qword_1EB017618, off_1E762D938);
  v15 = sub_19E6CD538();

  if (v15 >> 62)
  {
    goto LABEL_22;
  }

  v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v16)
  {
LABEL_23:

    return v13;
  }

  while (1)
  {
    v41 = v13;
    result = sub_19D6112C8(0, v16 & ~(v16 >> 63), 0);
    if (v16 < 0)
    {
      break;
    }

    v13 = v41;
    v39 = v15 & 0xC000000000000001;
    v18 = sub_19E6CD5B8();
    v19 = v15;
    v20 = 0;
    v35 = v15 & 0xFFFFFFFFFFFFFF8;
    v36 = v18;
    v37 = v16;
    v38 = v15;
    while (1)
    {
      if (v39)
      {
        v21 = MEMORY[0x19EAFE3C0](v20, v19);
        goto LABEL_11;
      }

      if ((v20 & 0x8000000000000000) != 0)
      {
        break;
      }

      if (v20 >= *(v35 + 16))
      {
        goto LABEL_21;
      }

      v21 = *(v19 + 8 * v20 + 32);
LABEL_11:
      v22 = v21;
      sub_19E6CD5A8();
      sub_19E6CD548();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v23 = v22;
      sub_19E6CCF68();
      *&v8[*(v3 + 32)] = v23;
      v24 = v23;
      v25 = [v24 title];
      if (v25)
      {
        v26 = v25;
        v27 = sub_19E6CD4E8();
        v29 = v28;
      }

      else
      {
        v27 = 0;
        v29 = 0;
      }

      v30 = &v8[*(v3 + 20)];
      *v30 = v27;
      v30[1] = v29;
      v31 = [v24 URL];
      sub_19E6CCF18();

      v32 = [v24 initialURL];
      sub_19E6CCF18();

      sub_19D6115A8(v8, v12);

      v41 = v13;
      v15 = *(v13 + 16);
      v33 = *(v13 + 24);
      if (v15 >= v33 >> 1)
      {
        sub_19D6112C8((v33 > 1), v15 + 1, 1);
        v13 = v41;
      }

      ++v20;
      *(v13 + 16) = v15 + 1;
      sub_19D6115A8(v12, v13 + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v15);
      v19 = v38;
      if (v37 == v20)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    v16 = sub_19E6CD7D8();
    if (!v16)
    {
      goto LABEL_23;
    }
  }

  __break(1u);
  return result;
}

uint64_t WebPage.BackForwardList.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*v2 && (v4 = [*v2 itemAtIndex_]) != 0)
  {
    v5 = v4;
    sub_19E6CD5B8();
    v6 = v5;
    sub_19E6CD5A8();
    sub_19E6CD548();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    v7 = v6;
    sub_19D610864(v7, a2);

    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = type metadata accessor for WebPage.BackForwardList.Item(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(a2, v8, 1, v9);
}

uint64_t static WebPage.BackForwardList.== infix(_:_:)(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a1)
  {
    if (v3)
    {
      sub_19D611980(0, &qword_1EB017620, off_1E762D930);
      v4 = v3;
      v5 = v2;
      v6 = sub_19E6CD6A8();

      if (v6)
      {
        return 1;
      }
    }
  }

  else if (!v3)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_19D611240(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a1)
  {
    if (v3)
    {
      sub_19D611980(0, &qword_1EB017620, off_1E762D930);
      v4 = v3;
      v5 = v2;
      v6 = sub_19E6CD6A8();

      if (v6)
      {
        return 1;
      }
    }
  }

  else if (!v3)
  {
    return 1;
  }

  return 0;
}

void *sub_19D6112C8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_19D6112E8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_19D6112E8(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB017640, "0x");
  v10 = *(type metadata accessor for WebPage.BackForwardList.Item(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for WebPage.BackForwardList.Item(0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t _s6WebKit0A4PageC15BackForwardListV4ItemV2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((_s6WebKit0A4PageC15BackForwardListV4ItemV2IDV2eeoiySbAI_AItFZ_0() & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for WebPage.BackForwardList.Item(0) + 20);
  v5 = (a1 + v4);
  v6 = *(a1 + v4 + 8);
  v7 = (a2 + v4);
  v8 = v7[1];
  if (v6)
  {
    if (!v8)
    {
      return 0;
    }

    v9 = *v5 == *v7 && v6 == v8;
    if (!v9 && (sub_19E6CD878() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v8)
  {
    return 0;
  }

  if (sub_19E6CCF08() & 1) != 0 && (sub_19E6CCF08())
  {
    sub_19D611980(0, &qword_1EB017648, 0x1E69E58C0);
    return sub_19E6CD6A8() & 1;
  }

  return 0;
}

uint64_t sub_19D6115A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WebPage.BackForwardList.Item(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_19D611654(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_19D6116F0(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_19D61174C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

void sub_19D6117D4(uint64_t a1)
{
  type metadata accessor for WebPage.BackForwardList.Item.ID(319);
  if (v1 <= 0x3F)
  {
    sub_19D611898();
    if (v2 <= 0x3F)
    {
      sub_19E6CCF28();
      if (v3 <= 0x3F)
      {
        sub_19D611980(319, &qword_1EB017618, off_1E762D938);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_19D611898()
{
  if (!qword_1EB017638)
  {
    v0 = sub_19E6CD6C8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB017638);
    }
  }
}

uint64_t sub_19D611910(uint64_t a1)
{
  result = sub_19E6CCF78();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_19D611980(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

double WebPage.Configuration.init()@<D0>(uint64_t a1@<X8>)
{
  *a1 = [objc_opt_self() defaultDataStore];
  *(a1 + 8) = [objc_allocWithZone(WKUserContentController) init];
  *(a1 + 16) = 0;
  WebPage.NavigationPreferences.init()((a1 + 24));
  *(a1 + 32) = sub_19D612738(MEMORY[0x1E69E7CC0]);
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  *(a1 + 40) = &unk_19E700A08;
  *(a1 + 48) = v2;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *&result = 16842753;
  *(a1 + 73) = 16842753;
  *(a1 + 77) = 0;
  *(a1 + 79) = 1;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  return result;
}

void *WebPage.Configuration.webExtensionController.getter()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

void WebPage.Configuration.defaultNavigationPreferences.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 25);
  v3 = *(v1 + 26);
  *a1 = *(v1 + 24);
  *(a1 + 1) = v2;
  *(a1 + 2) = v3;
}

uint64_t WebPage.Configuration.defaultNavigationPreferences.setter(uint64_t result)
{
  v2 = *(result + 1);
  v3 = *(result + 2);
  *(v1 + 24) = *result;
  *(v1 + 25) = v2;
  *(v1 + 26) = v3;
  return result;
}

uint64_t WebPage.Configuration.urlSchemeHandlers.setter(uint64_t a1)
{

  *(v1 + 32) = a1;
  return result;
}

uint64_t WebPage.DeviceSensorAuthorization.init(decision:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *a2 = &unk_19E700A18;
  a2[1] = result;
  return result;
}

uint64_t WebPage.Configuration.deviceSensorAuthorization.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 48);
  *a1 = *(v1 + 40);
  a1[1] = v2;
}

__n128 WebPage.Configuration.deviceSensorAuthorization.setter(__n128 *a1)
{

  result = *a1;
  *(v1 + 40) = *a1;
  return result;
}

uint64_t WebPage.Configuration.applicationNameForUserAgent.getter()
{
  v1 = *(v0 + 56);

  return v1;
}

uint64_t WebPage.Configuration.applicationNameForUserAgent.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return result;
}

uint64_t (*WebPage.Configuration.showsSystemScreenTimeBlockingView.modify(uint64_t a1))()
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 79);
  return sub_19D611F34;
}

BOOL static WebPage.DeviceSensorAuthorization.Permission.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == 1)
  {
    return (*(a2 + 8) & 1) != 0;
  }

  if (*(a2 + 8))
  {
    return 0;
  }

  return *a1 == *a2;
}

uint64_t WebPage.DeviceSensorAuthorization.Permission.hash(into:)()
{
  if (v0[1])
  {
    v1 = 0;
  }

  else
  {
    v1 = *v0;
    MEMORY[0x19EAFE5E0](1);
  }

  return MEMORY[0x19EAFE5E0](v1);
}

uint64_t WebPage.DeviceSensorAuthorization.Permission.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_19E6CD918();
  v3 = 0;
  if ((v2 & 1) == 0)
  {
    MEMORY[0x19EAFE5E0](1);
    v3 = v1;
  }

  MEMORY[0x19EAFE5E0](v3);
  return sub_19E6CD938();
}

uint64_t sub_19D6120C0()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_19E6CD918();
  v3 = 0;
  if ((v2 & 1) == 0)
  {
    MEMORY[0x19EAFE5E0](1);
    v3 = v1;
  }

  MEMORY[0x19EAFE5E0](v3);
  return sub_19E6CD938();
}

uint64_t sub_19D612120()
{
  if (v0[1])
  {
    v1 = 0;
  }

  else
  {
    v1 = *v0;
    MEMORY[0x19EAFE5E0](1);
  }

  return MEMORY[0x19EAFE5E0](v1);
}

uint64_t sub_19D612168(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  sub_19E6CD918();
  if (v3)
  {
    v2 = 0;
  }

  else
  {
    MEMORY[0x19EAFE5E0](1);
  }

  MEMORY[0x19EAFE5E0](v2);
  return sub_19E6CD938();
}

BOOL sub_19D6121C8(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == 1)
  {
    return (*(a2 + 8) & 1) != 0;
  }

  if (*(a2 + 8))
  {
    return 0;
  }

  return *a1 == *a2;
}

uint64_t WebPage.DeviceSensorAuthorization.init(decisionHandler:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t WebPage.Configuration.MediaPlaybackBehavior.hashValue.getter()
{
  v1 = *v0;
  sub_19E6CD918();
  MEMORY[0x19EAFE5E0](v1);
  return sub_19E6CD938();
}

uint64_t _s6WebKit0A4PageC21NavigationPreferencesV11ContentModeO9hashValueSivg_0()
{
  v1 = *v0;
  sub_19E6CD918();
  MEMORY[0x19EAFE5E0](v1);
  return sub_19E6CD938();
}

uint64_t sub_19D612334(uint64_t a1)
{
  v2 = *v1;
  sub_19E6CD918();
  MEMORY[0x19EAFE5E0](v2);
  return sub_19E6CD938();
}

BOOL sub_19D6123B4(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_19D6123E4@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_19D612410@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_19D6124E8()
{
  v1 = *v0;
  sub_19E6CD918();
  MEMORY[0x19EAFE5E0](v1);
  return sub_19E6CD938();
}

uint64_t sub_19D61255C(uint64_t a1)
{
  v2 = *v1;
  sub_19E6CD918();
  MEMORY[0x19EAFE5E0](v2);
  return sub_19E6CD938();
}

uint64_t sub_19D6125A0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_19D6130DC(a1);

  *a2 = v3;
  return result;
}

unint64_t sub_19D6125EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_19D61319C(a1, a2, a3);
  v3 = sub_19E6CD498();
  return sub_19D612654(a1, a2, v3);
}

unint64_t sub_19D612654(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v6 = ~v4;
    sub_19D60D64C(a1, a2, a3);
    do
    {

      v7 = sub_19E6CD4B8();

      if (v7)
      {
        break;
      }

      v5 = (v5 + 1) & v6;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_19D612738(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB017698, &qword_19E700ED0);
    v3 = sub_19E6CD858();
    v4 = a1 + 32;

    while (1)
    {
      sub_19D613114(v4, &v13);
      result = sub_19D6125EC(v13, v14, v5);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v8 = (v3[6] + 16 * result);
      v9 = v14;
      *v8 = v13;
      v8[1] = v9;
      result = sub_19D613184(&v15, v3[7] + 40 * result);
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 56;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_19D612848()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_19D613200;

  return sub_19D61220C(v3, v4, v5, v2);
}

uint64_t sub_19D6128DC()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_19D612970;

  return sub_19D61220C(v3, v4, v5, v2);
}

uint64_t sub_19D612970(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

unint64_t sub_19D612A70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB017650;
  if (!qword_1EB017650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB017650);
  }

  return result;
}

unint64_t sub_19D612AC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB017658;
  if (!qword_1EB017658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB017658);
  }

  return result;
}

__n128 __swift_memcpy90_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 74) = *(a2 + 74);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_19D612B40(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 90))
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

uint64_t sub_19D612B88(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 90) = 1;
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

    *(result + 90) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_19D612BF0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_19D612C38(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t _s25DeviceSensorAuthorizationV10PermissionOwet(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s25DeviceSensorAuthorizationV10PermissionOwst(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_19D612CEC(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_19D612D08(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

uint64_t _s21NavigationPreferencesV11ContentModeOwet(unsigned __int8 *a1, unsigned int a2)
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

uint64_t _s21NavigationPreferencesV11ContentModeOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

void sub_19D612EE0(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_19D612FBC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_19D6130DC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t sub_19D613114(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0176A0, &qword_19E700ED8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_19D613184(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

unint64_t sub_19D61319C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB0176A8;
  if (!qword_1EB0176A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0176A8);
  }

  return result;
}

uint64_t WebPage.JavaScriptConfirmResult.hashValue.getter()
{
  v1 = *v0;
  sub_19E6CD918();
  MEMORY[0x19EAFE5E0](v1);
  return sub_19E6CD938();
}

uint64_t WebPage.JavaScriptPromptResult.hash(into:)(uint64_t a1)
{
  if (!*(v1 + 8))
  {
    return MEMORY[0x19EAFE5E0](1);
  }

  MEMORY[0x19EAFE5E0](0);

  return sub_19E6CD518();
}

uint64_t WebPage.JavaScriptPromptResult.hashValue.getter()
{
  v1 = *(v0 + 8);
  sub_19E6CD918();
  if (v1)
  {
    MEMORY[0x19EAFE5E0](0);
    sub_19E6CD518();
  }

  else
  {
    MEMORY[0x19EAFE5E0](1);
  }

  return sub_19E6CD938();
}

uint64_t sub_19D613394()
{
  v1 = *(v0 + 8);
  sub_19E6CD918();
  if (v1)
  {
    MEMORY[0x19EAFE5E0](0);
    sub_19E6CD518();
  }

  else
  {
    MEMORY[0x19EAFE5E0](1);
  }

  return sub_19E6CD938();
}

uint64_t sub_19D613404(uint64_t a1)
{
  if (!*(v1 + 8))
  {
    return MEMORY[0x19EAFE5E0](1);
  }

  MEMORY[0x19EAFE5E0](0);

  return sub_19E6CD518();
}

uint64_t sub_19D61347C(uint64_t a1)
{
  v2 = *(v1 + 8);
  sub_19E6CD918();
  if (v2)
  {
    MEMORY[0x19EAFE5E0](0);
    sub_19E6CD518();
  }

  else
  {
    MEMORY[0x19EAFE5E0](1);
  }

  return sub_19E6CD938();
}

uint64_t static WebPage.FileInputPromptResult.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  if (*a1)
  {
    if (v2)
    {

      v4 = sub_19D613570(v3, v2);

      return v4 & 1;
    }

    return 0;
  }

  if (v2)
  {
    return 0;
  }

  swift_bridgeObjectRelease_n();
  return 1;
}

uint64_t sub_19D613570(uint64_t a1, uint64_t a2)
{
  v4 = sub_19E6CCF28();
  v5 = *(v4 - 8);
  v8 = MEMORY[0x1EEE9AC00](v4, v6, v7);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v11, v12);
  v14 = &v28 - v13;
  v15 = *(a1 + 16);
  if (v15 != *(a2 + 16))
  {
    v25 = 0;
    return v25 & 1;
  }

  if (!v15 || a1 == a2)
  {
    v25 = 1;
    return v25 & 1;
  }

  v16 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v17 = a1 + v16;
  v18 = a2 + v16;
  v20 = *(v5 + 16);
  v19 = v5 + 16;
  v21 = (v19 - 8);
  v28 = *(v19 + 56);
  v29 = v20;
  while (1)
  {
    v22 = v29;
    result = (v29)(v14, v17, v4);
    if (!v15)
    {
      break;
    }

    v24 = v19;
    v22(v10, v18, v4);
    sub_19D614AF8(&qword_1EB0176D0, MEMORY[0x1E6968FC8]);
    v25 = sub_19E6CD4B8();
    v26 = *v21;
    (*v21)(v10, v4);
    v26(v14, v4);
    if (v25)
    {
      v18 += v28;
      v17 += v28;
      v27 = v15-- == 1;
      v19 = v24;
      if (!v27)
      {
        continue;
      }
    }

    return v25 & 1;
  }

  __break(1u);
  return result;
}

uint64_t WebPage.FileInputPromptResult.hash(into:)(uint64_t a1)
{
  v2 = sub_19E6CCF28();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4, v5);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v1;
  if (!*v1)
  {
    return MEMORY[0x19EAFE5E0](1);
  }

  MEMORY[0x19EAFE5E0](0);
  result = MEMORY[0x19EAFE5E0](*(v8 + 16));
  v10 = *(v8 + 16);
  if (v10)
  {
    v13 = *(v3 + 16);
    v11 = v3 + 16;
    v12 = v13;
    v14 = v8 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v15 = *(v11 + 56);
    do
    {
      v12(v7, v14, v2);
      sub_19D614AF8(&qword_1EB0176B0, MEMORY[0x1E6968FC0]);
      sub_19E6CD4A8();
      result = (*(v11 - 8))(v7, v2);
      v14 += v15;
      --v10;
    }

    while (v10);
  }

  return result;
}

uint64_t WebPage.FileInputPromptResult.hashValue.getter()
{
  v2[9] = *v0;
  sub_19E6CD918();
  WebPage.FileInputPromptResult.hash(into:)(v2);
  return sub_19E6CD938();
}

uint64_t sub_19D613938()
{
  v2[9] = *v0;
  sub_19E6CD918();
  WebPage.FileInputPromptResult.hash(into:)(v2);
  return sub_19E6CD938();
}

uint64_t sub_19D613988(uint64_t a1)
{
  v3[9] = *v1;
  sub_19E6CD918();
  WebPage.FileInputPromptResult.hash(into:)(v3);
  return sub_19E6CD938();
}

uint64_t sub_19D6139D4()
{
  sub_19E6CD5B8();
  *(v0 + 16) = sub_19E6CD5A8();
  v2 = sub_19E6CD548();

  return MEMORY[0x1EEE6DFA0](sub_19D613A68, v2, v1);
}

uint64_t sub_19D613A68()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t WebPage.DialogPresenting.handleJavaScriptAlert(message:initiatedBy:)()
{
  sub_19E6CD5B8();
  *(v0 + 16) = sub_19E6CD5A8();
  v2 = sub_19E6CD548();

  return MEMORY[0x1EEE6DFA0](sub_19D614B40, v2, v1);
}

uint64_t sub_19D613B5C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_19D614B3C;

  return WebPage.DialogPresenting.handleJavaScriptConfirm(message:initiatedBy:)(a1);
}

uint64_t WebPage.DialogPresenting.handleJavaScriptConfirm(message:initiatedBy:)(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_19E6CD5B8();
  *(v1 + 24) = sub_19E6CD5A8();
  v3 = sub_19E6CD548();

  return MEMORY[0x1EEE6DFA0](sub_19D613C8C, v3, v2);
}

uint64_t sub_19D613C8C()
{
  v1 = *(v0 + 16);

  *v1 = 1;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_19D613CF4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_19D614B3C;

  return WebPage.DialogPresenting.handleJavaScriptPrompt(message:defaultText:initiatedBy:)(a1);
}

uint64_t WebPage.DialogPresenting.handleJavaScriptPrompt(message:defaultText:initiatedBy:)(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_19E6CD5B8();
  *(v1 + 24) = sub_19E6CD5A8();
  v3 = sub_19E6CD548();

  return MEMORY[0x1EEE6DFA0](sub_19D613E24, v3, v2);
}

uint64_t sub_19D613E24()
{
  v1 = *(v0 + 16);

  *v1 = 0;
  v1[1] = 0;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_19D613E88(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_19D613F20;

  return WebPage.DialogPresenting.handleFileInputPrompt(parameters:initiatedBy:)(a1);
}

uint64_t sub_19D613F20()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t WebPage.DialogPresenting.handleFileInputPrompt(parameters:initiatedBy:)(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_19E6CD5B8();
  *(v1 + 24) = sub_19E6CD5A8();
  v3 = sub_19E6CD548();

  return MEMORY[0x1EEE6DFA0](sub_19D6140AC, v3, v2);
}

uint64_t sub_19D6140AC()
{
  v1 = *(v0 + 16);

  *v1 = 0;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t _s6WebKit0A4PageC22JavaScriptPromptResultO2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  v4 = a1[1];
  v5 = a2[1];
  if (!v4)
  {
    if (!v5)
    {
      swift_bridgeObjectRelease_n();
      return 1;
    }

    return 0;
  }

  if (!v5)
  {
    return 0;
  }

  if (*a1 == *a2 && v4 == v5)
  {
    return 1;
  }

  return sub_19E6CD878();
}

unint64_t sub_19D61418C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB0176B8;
  if (!qword_1EB0176B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0176B8);
  }

  return result;
}

unint64_t sub_19D6141E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB0176C0;
  if (!qword_1EB0176C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0176C0);
  }

  return result;
}

unint64_t sub_19D61423C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB0176C8;
  if (!qword_1EB0176C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0176C8);
  }

  return result;
}

uint64_t _s23JavaScriptConfirmResultOwet(unsigned __int8 *a1, unsigned int a2)
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

uint64_t _s23JavaScriptConfirmResultOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_19D6143EC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_19D61443C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_19D614490(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_19D6144A8(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t sub_19D6144D8(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_19D614528(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_19D61457C(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_19D614594(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t dispatch thunk of WebPage.DialogPresenting.handleJavaScriptAlert(message:initiatedBy:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 8) + **(a5 + 8));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_19D614B3C;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of WebPage.DialogPresenting.handleJavaScriptConfirm(message:initiatedBy:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = (*(a6 + 16) + **(a6 + 16));
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_19D614B3C;

  return v15(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of WebPage.DialogPresenting.handleJavaScriptPrompt(message:defaultText:initiatedBy:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v19 = (*(a8 + 24) + **(a8 + 24));
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  *v17 = v8;
  v17[1] = sub_19D614B3C;

  return v19(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t dispatch thunk of WebPage.DialogPresenting.handleFileInputPrompt(parameters:initiatedBy:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 32) + **(a5 + 32));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_19D613F20;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t sub_19D614AF8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_19E6CCF28();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void WebPage.FrameInfo.request.getter()
{
  v1 = [*v0 request];
  sub_19E6CCD68();
}

id WebPage.FrameInfo.securityOrigin.getter()
{
  v1 = [*v0 securityOrigin];

  return v1;
}

uint64_t sub_19D614C00(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_19D614C48(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t WebPage.NavigationEvent.hashValue.getter()
{
  v1 = *v0;
  sub_19E6CD918();
  MEMORY[0x19EAFE5E0](v1);
  return sub_19E6CD938();
}

unint64_t sub_19D614D20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB017A60;
  if (!qword_1EB017A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB017A60);
  }

  return result;
}

uint64_t _s21NavigationPreferencesV20UpgradeToHTTPSPolicyOwet(unsigned __int8 *a1, unsigned int a2)
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

uint64_t _s21NavigationPreferencesV20UpgradeToHTTPSPolicyOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t get_enum_tag_for_layout_string_6WebKit0A4PageC15NavigationErrorO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_19D614EEC(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 8))
  {
    return (*a1 + 2147483645);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_19D614F48(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

uint64_t WebPage.NavigationAction.source.getter@<X0>(void *a1@<X8>)
{
  v3 = [*v1 sourceFrame];

  return sub_19D610BA8(v3, a1);
}

id WebPage.NavigationAction.target.getter@<X0>(void *a1@<X8>)
{
  result = [*v1 targetFrame];
  if (result)
  {
    v4 = result;
    sub_19E6CD5B8();
    v5 = v4;
    sub_19E6CD5A8();
    sub_19E6CD548();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    v6 = v5;
    sub_19D610BA8(v6, a1);
  }

  else
  {
    *a1 = 0;
  }

  return result;
}

void WebPage.NavigationAction.request.getter()
{
  v1 = [*v0 request];
  sub_19E6CCD68();
}

id WebPage.NavigationResponse.response.getter()
{
  v1 = [*v0 response];

  return v1;
}

uint64_t sub_19D615284()
{
  sub_19E6CD5B8();
  *(v0 + 16) = sub_19E6CD5A8();
  v2 = sub_19E6CD548();

  return MEMORY[0x1EEE6DFA0](sub_19D615318, v2, v1);
}

uint64_t sub_19D615318()
{

  v1 = *(v0 + 8);

  return v1(1);
}

uint64_t WebPage.NavigationDeciding.decidePolicy(for:preferences:)()
{
  sub_19E6CD5B8();
  *(v0 + 16) = sub_19E6CD5A8();
  v2 = sub_19E6CD548();

  return MEMORY[0x1EEE6DFA0](sub_19D615B80, v2, v1);
}

uint64_t sub_19D615410()
{
  sub_19E6CD5B8();
  *(v0 + 16) = sub_19E6CD5A8();
  v2 = sub_19E6CD548();

  return MEMORY[0x1EEE6DFA0](sub_19D615B80, v2, v1);
}

uint64_t WebPage.NavigationDeciding.decidePolicy(for:)()
{
  sub_19E6CD5B8();
  *(v0 + 16) = sub_19E6CD5A8();
  v2 = sub_19E6CD548();

  return MEMORY[0x1EEE6DFA0](sub_19D615B80, v2, v1);
}

uint64_t sub_19D615538()
{
  sub_19E6CD5B8();
  *(v0 + 16) = sub_19E6CD5A8();
  v2 = sub_19E6CD548();

  return MEMORY[0x1EEE6DFA0](sub_19D6155CC, v2, v1);
}

uint64_t sub_19D6155CC()
{

  v1 = *(v0 + 8);

  return v1(1, 0);
}

uint64_t WebPage.NavigationDeciding.decideAuthenticationChallengeDisposition(for:)()
{
  sub_19E6CD5B8();
  *(v0 + 16) = sub_19E6CD5A8();
  v2 = sub_19E6CD548();

  return MEMORY[0x1EEE6DFA0](sub_19D615B84, v2, v1);
}

uint64_t dispatch thunk of WebPage.NavigationDeciding.decidePolicy(for:preferences:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 8) + **(a4 + 8));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_19D612970;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of WebPage.NavigationDeciding.decidePolicy(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 16) + **(a3 + 16));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_19D613200;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of WebPage.NavigationDeciding.decideAuthenticationChallengeDisposition(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 24) + **(a3 + 24));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_19D615A70;

  return v9(a1, a2, a3);
}

uint64_t sub_19D615A70(uint64_t a1, uint64_t a2)
{
  v7 = *v2;

  v5 = *(v7 + 8);

  return v5(a1, a2);
}

double WebPage.NavigationPreferences.init()@<D0>(_DWORD *a1@<X8>)
{
  *&result = 33554688;
  *a1 = 33554688;
  return result;
}

uint64_t (*WebPage.NavigationPreferences.isLockdownModeEnabled.modify(uint64_t a1))()
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 3) & 1;
  return sub_19D615CE4;
}

void sub_19D615CF4(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = [a1 preferredContentMode];
  if (v4 >= 3 || (v5 = v4, v6 = [a1 preferredHTTPSNavigationPolicy], v6 >= 4))
  {
    sub_19E6CD808();
    __break(1u);
  }

  else
  {
    v7 = v6;
    v8 = [a1 allowsContentJavaScript];
    v9 = [a1 isLockdownModeEnabled];

    *a2 = v5;
    a2[1] = v8;
    a2[2] = v7;
    a2[3] = v9;
  }
}

unint64_t sub_19D615DEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB0176D8;
  if (!qword_1EB0176D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0176D8);
  }

  return result;
}

unint64_t sub_19D615E44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB0176E0;
  if (!qword_1EB0176E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0176E0);
  }

  return result;
}

uint64_t _s21NavigationPreferencesVwet(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 4))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 1);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t _s21NavigationPreferencesVwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 4) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 4) = 0;
    }

    if (a2)
    {
      *(result + 1) = a2 + 1;
    }
  }

  return result;
}

void static WebPage.ExportedContentConfiguration.Region.rect(_:)(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  *(a1 + 24) = a5;
  *(a1 + 32) = 0;
}

double static WebPage.ExportedContentConfiguration.Region.contents.getter@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1;
  return result;
}

uint64_t static WebPage.ExportedContentConfiguration.pdf(region:allowTransparentBackground:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v3 = 256;
  v4 = *(result + 16);
  if ((a2 & 1) == 0)
  {
    v3 = 0;
  }

  v5 = v3 | *(result + 32);
  *a3 = *result;
  *(a3 + 16) = v4;
  *(a3 + 32) = v5;
  *(a3 + 40) = 0;
  *(a3 + 48) = 0;
  return result;
}

uint64_t static WebPage.ExportedContentConfiguration.image(region:allowTransparentBackground:snapshotWidth:afterScreenUpdates:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, char a5@<W4>, uint64_t a6@<X8>)
{
  v6 = 256;
  if ((a2 & 1) == 0)
  {
    v6 = 0;
  }

  v7 = v6 & 0xFFFFFFFFFFFFFFFELL | *(result + 32) & 1;
  v8 = *(result + 16);
  if (a5)
  {
    v9 = -32512;
  }

  else
  {
    v9 = 0x8000;
  }

  *a6 = *result;
  *(a6 + 16) = v8;
  *(a6 + 32) = v7;
  *(a6 + 40) = a3;
  *(a6 + 48) = v9 & 0xFFFE | a4 & 1;
  return result;
}

uint64_t static WebPage.transferRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  v39 = a1;
  v1 = sub_19E6CD198();
  MEMORY[0x1EEE9AC00](v1 - 8, v2, v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0176E8, &qword_19E701500);
  v37[0] = *(v4 - 8);
  v5 = v37[0];
  v6 = *(v37[0] + 64);
  MEMORY[0x1EEE9AC00](v4, v7, v8);
  v9 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  v40 = v37 - v9;
  sub_19E6CD158();
  v10 = sub_19D618F48(&qword_1EB0176F0, type metadata accessor for WebPage, &protocol conformance descriptor for WebPage);
  v11 = sub_19E6CCFF8();
  MEMORY[0x1EEE9AC00](v11, v12, v13);
  sub_19E6CD168();
  v14 = v37 - v9;
  v15 = sub_19E6CCFF8();
  MEMORY[0x1EEE9AC00](v15, v16, v17);
  v38 = v37 - v9;
  sub_19E6CD188();
  v37[2] = v10;
  v18 = sub_19E6CCFF8();
  MEMORY[0x1EEE9AC00](v18, v19, v20);
  v21 = v37 - v9;
  sub_19E6CD178();
  sub_19E6CCFF8();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0176F8, &qword_19E701528);
  v25 = MEMORY[0x1EEE9AC00](v22, v23, v24);
  v27 = v37 - v26;
  v28 = v25[12];
  v29 = v25[16];
  v30 = v25[20];
  v31 = *(v5 + 16);
  v31(v37 - v26, v40, v4);
  v32 = &v27[v28];
  v33 = v14;
  v31(v32, v14, v4);
  v34 = v38;
  v31(&v27[v29], v38, v4);
  v31(&v27[v30], v21, v4);
  sub_19E6CD008();
  v35 = *(v37[0] + 8);
  v35(v21, v4);
  v35(v34, v4);
  v35(v33, v4);
  return (v35)(v40, v4);
}

uint64_t sub_19D6163F8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_19D619500;

  return sub_19D616488();
}

uint64_t sub_19D616488()
{
  v1[4] = v0;
  v1[5] = sub_19E6CD5B8();
  v1[6] = sub_19E6CD5A8();
  v3 = sub_19E6CD548();
  v1[7] = v3;
  v1[8] = v2;

  return MEMORY[0x1EEE6DFA0](sub_19D616524, v3, v2);
}

uint64_t sub_19D616524(uint64_t a1)
{
  v2 = sub_19E6CD5A8();
  v1[9] = v2;
  v3 = swift_task_alloc();
  v1[10] = v3;
  *v3 = v1;
  v3[1] = sub_19D616610;
  v4 = v1[4];
  v5 = MEMORY[0x1E69E85E0];
  v6 = MEMORY[0x1E6969080];

  return MEMORY[0x1EEE6DE38](v1 + 2, v2, v5, 0xD00000000000001ALL, 0x800000019E70AD00, sub_19D619024, v4, v6);
}

uint64_t sub_19D616610()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = *(v2 + 56);
    v4 = *(v2 + 64);
    v5 = sub_19D616794;
  }

  else
  {

    v3 = *(v2 + 56);
    v4 = *(v2 + 64);
    v5 = sub_19D61672C;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_19D61672C()
{

  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[1];

  return v3(v1, v2);
}

uint64_t sub_19D616794()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_19D616804()
{
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = xmmword_19E7014F0;
  *(v0 + 64) = 0;
  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  *v1 = v0;
  v1[1] = sub_19D6168B4;

  return WebPage.exported(as:)((v0 + 16));
}

uint64_t sub_19D6168B4(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(v6 + 80) = v2;

  if (v2)
  {

    return MEMORY[0x1EEE6DFA0](sub_19D616A04, 0, 0);
  }

  else
  {
    v7 = *(v6 + 8);

    return v7(a1, a2);
  }
}

uint64_t WebPage.exported(as:)(uint64_t *a1)
{
  v3 = *a1;
  v4 = a1[1];
  *(v2 + 128) = v1;
  *(v2 + 136) = v3;
  v5 = a1[2];
  v6 = a1[3];
  *(v2 + 144) = v4;
  *(v2 + 152) = v5;
  v7 = a1[4];
  *(v2 + 160) = v6;
  *(v2 + 168) = v7;
  v8 = *(a1 + 24);
  if (v8 < 0)
  {
    v11 = a1[5];
    v12 = (v7 >> 8) & 1;
    *(v2 + 56) = v3;
    *(v2 + 64) = v4;
    *(v2 + 72) = v5;
    *(v2 + 80) = v6;
    *(v2 + 88) = v7 & 1;
    v13 = swift_task_alloc();
    *(v2 + 208) = v13;
    *v13 = v2;
    v13[1] = sub_19D616CA4;

    return sub_19D617A54(v2 + 56, v12, v11, v8 & 1, BYTE1(v8) & 1);
  }

  else
  {
    sub_19E6CD5B8();
    *(v2 + 176) = sub_19E6CD5A8();
    v10 = sub_19E6CD548();
    *(v2 + 184) = v10;
    *(v2 + 192) = v9;

    return MEMORY[0x1EEE6DFA0](sub_19D616B84, v10, v9);
  }
}

uint64_t sub_19D616B84()
{
  v1 = *(v0 + 168);
  v2 = [objc_allocWithZone(WKPDFConfiguration) init];
  *(v0 + 200) = v2;
  v3 = 0uLL;
  v4 = 0uLL;
  if ((v1 & 1) == 0)
  {
    v4 = *(v0 + 152);
    v3 = *(v0 + 136);
  }

  v5 = *(v0 + 168);
  v6 = (v5 >> 8) & 1;
  *(v0 + 16) = v3;
  *(v0 + 32) = v4;
  *(v0 + 48) = v5 & 1;
  WKPDFConfiguration.rect.setter(v0 + 16);
  [v2 setAllowTransparentBackground_];
  *(v0 + 224) = WebPage.backingWebView.getter();
  v7 = swift_task_alloc();
  *(v0 + 232) = v7;
  *v7 = v0;
  v7[1] = sub_19D616DF4;

  return WKWebView.pdf(configuration:)(v2);
}

uint64_t sub_19D616CA4(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(v6 + 216) = v2;

  if (v2)
  {

    return MEMORY[0x1EEE6DFA0](sub_19D617004, 0, 0);
  }

  else
  {
    v7 = *(v6 + 8);

    return v7(a1, a2);
  }
}

uint64_t sub_19D616DF4(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  *(v4 + 96) = v3;
  *(v4 + 104) = a1;
  *(v4 + 112) = a2;
  *(v4 + 120) = v2;
  *(v4 + 240) = v2;

  if (v2)
  {
    v5 = *(v4 + 184);
    v6 = *(v4 + 192);
    v7 = sub_19D616F8C;
  }

  else
  {

    v5 = *(v4 + 184);
    v6 = *(v4 + 192);
    v7 = sub_19D616F18;
  }

  return MEMORY[0x1EEE6DFA0](v7, v5, v6);
}

uint64_t sub_19D616F18()
{

  v1 = *(v0 + 104);
  v2 = *(v0 + 112);
  v3 = *(v0 + 8);

  return v3(v1, v2);
}

uint64_t sub_19D616F8C()
{
  v1 = *(v0 + 200);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_19D61701C()
{
  *(v0 + 32) = 0u;
  *(v0 + 16) = 0u;
  *(v0 + 48) = 1;
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = sub_19D6170D8;

  return sub_19D617A54(v0 + 16, 0, 0, 1, 1);
}

uint64_t sub_19D6170D8(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(v6 + 64) = v2;

  if (v2)
  {

    return MEMORY[0x1EEE6DFA0](sub_19D617228, 0, 0);
  }

  else
  {
    v7 = *(v6 + 8);

    return v7(a1, a2);
  }
}

uint64_t sub_19D617240()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_19D6172D0;

  return sub_19D6173E0();
}

uint64_t sub_19D6172D0(uint64_t a1, uint64_t a2)
{
  v10 = *v3;

  v8 = *(v10 + 8);
  if (!v2)
  {
    v6 = a1;
    v7 = a2;
  }

  return v8(v6, v7);
}

uint64_t sub_19D6173E0()
{
  v1[4] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB017728, &qword_19E701608);
  v1[5] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB017738, "pc");
  v1[6] = swift_task_alloc();
  v2 = sub_19E6CCF28();
  v1[7] = v2;
  v1[8] = *(v2 - 8);
  v1[9] = swift_task_alloc();
  sub_19E6CD5B8();
  v1[10] = sub_19E6CD5A8();
  v4 = sub_19E6CD548();
  v1[11] = v4;
  v1[12] = v3;

  return MEMORY[0x1EEE6DFA0](sub_19D617544, v4, v3);
}

uint64_t sub_19D617544()
{
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[6];
  WebPage.url.getter(v3);
  v4 = (*(v2 + 48))(v3, 1, v1);
  v5 = v0[6];
  if (v4 == 1)
  {

    sub_19D60D358(v5, &qword_1EB017738, "pc");
    type metadata accessor for WKError(0);
    v0[3] = 1;
    sub_19D610110(MEMORY[0x1E69E7CC0]);
    sub_19D618F48(&qword_1EB017720, type metadata accessor for WKError, &unk_19E7017E0);
    sub_19E6CCE98();
    swift_willThrow();

    v6 = v0[1];

    return v6();
  }

  else
  {
    v8 = v0[5];
    (*(v0[8] + 32))(v0[9], v0[6], v0[7]);
    sub_19E6CD178();
    v9 = sub_19E6CD198();
    (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
    v10 = swift_task_alloc();
    v0[13] = v10;
    v11 = sub_19D618FD8();
    *v10 = v0;
    v10[1] = sub_19D617794;
    v12 = v0[7];
    v13 = v0[5];

    return MEMORY[0x1EEDBF590](v13, v12, v11);
  }
}

uint64_t sub_19D617794(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v6[14] = v2;

  v7 = v6[5];
  if (v2)
  {
    sub_19D60D358(v7, &qword_1EB017728, &qword_19E701608);
    v8 = v6[11];
    v9 = v6[12];
    v10 = sub_19D6179B0;
  }

  else
  {
    v6[15] = a2;
    v6[16] = a1;
    sub_19D60D358(v7, &qword_1EB017728, &qword_19E701608);
    v8 = v6[11];
    v9 = v6[12];
    v10 = sub_19D617900;
  }

  return MEMORY[0x1EEE6DFA0](v10, v8, v9);
}

uint64_t sub_19D617900()
{
  v1 = v0[9];
  v2 = v0[7];
  v3 = v0[8];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];
  v6 = v0[15];
  v5 = v0[16];

  return v4(v5, v6);
}

uint64_t sub_19D6179B0()
{
  v1 = v0[9];
  v2 = v0[7];
  v3 = v0[8];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_19D617A54(uint64_t a1, char a2, uint64_t a3, char a4, char a5)
{
  *(v6 + 338) = a5;
  *(v6 + 337) = a4;
  *(v6 + 176) = a3;
  *(v6 + 184) = v5;
  *(v6 + 336) = a2;
  v7 = *(a1 + 16);
  *(v6 + 192) = *a1;
  *(v6 + 208) = v7;
  *(v6 + 339) = *(a1 + 32);
  *(v6 + 224) = sub_19E6CD5B8();
  *(v6 + 232) = sub_19E6CD5A8();
  v9 = sub_19E6CD548();
  *(v6 + 240) = v9;
  *(v6 + 248) = v8;

  return MEMORY[0x1EEE6DFA0](sub_19D617B0C, v9, v8);
}

uint64_t sub_19D617B0C()
{
  v1 = *(v0 + 339);
  v2 = [objc_allocWithZone(WKSnapshotConfiguration) init];
  v3 = v2;
  *(v0 + 256) = v2;
  v4 = MEMORY[0x1E695F050];
  v5 = (MEMORY[0x1E695F050] + 24);
  v6 = (MEMORY[0x1E695F050] + 16);
  v7 = (MEMORY[0x1E695F050] + 8);
  if ((v1 & 1) == 0)
  {
    v4 = (v0 + 192);
    v7 = (v0 + 200);
    v6 = (v0 + 208);
    v5 = (v0 + 216);
  }

  v8 = *(v0 + 337);
  v9 = *(v0 + 336);
  [v2 setRect_];
  [v3 _setUsesTransparentBackground_];
  if (v8)
  {
    v10 = 0;
  }

  else
  {
    v11 = *(v0 + 176);
    sub_19E6CD5A8();
    sub_19E6CD548();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    v10 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  }

  v12 = *(v0 + 338);
  [v3 setSnapshotWidth_];

  [v3 setAfterScreenUpdates_];
  v19 = WebPage.backingWebView.getter();
  *(v0 + 264) = v19;
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 144;
  *(v0 + 24) = sub_19D617E9C;
  swift_continuation_init();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB017710, &qword_19E7015F8);
  *(v0 + 136) = v13;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 112));
  v15 = *(v13 - 8);
  v16 = swift_task_alloc();
  sub_19D618814();
  v17 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0175D0, &qword_19E701600);
  sub_19E6CD558();
  (*(v15 + 32))(boxed_opaque_existential_0, v16, v13);
  *(v0 + 80) = MEMORY[0x1E69E9820];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_19D618A24;
  *(v0 + 104) = &block_descriptor_0;
  [v19 takeSnapshotWithConfiguration:v17 completionHandler:?];
  (*(v15 + 8))(boxed_opaque_existential_0, v13);

  return MEMORY[0x1EEE6DEC8](v0 + 16);
}

uint64_t sub_19D617E9C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 272) = v2;
  v3 = *(v1 + 248);
  v4 = *(v1 + 240);
  if (v2)
  {
    v5 = sub_19D61841C;
  }

  else
  {
    v5 = sub_19D617FCC;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_19D617FCC()
{
  v2 = v0[32];
  v1 = v0[33];
  v3 = v0[18];
  v0[35] = v3;

  if (MEMORY[0x1E6981758])
  {
    v4 = MEMORY[0x1E6981738] == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4 || MEMORY[0x1E6981740] == 0 || MEMORY[0x1E6981750] == 0)
  {
    v16 = v0[32];

    type metadata accessor for WKError(0);
    v0[20] = 1;
    sub_19D610110(MEMORY[0x1E69E7CC0]);
    sub_19D618F48(&qword_1EB017720, type metadata accessor for WKError, &unk_19E7017E0);
    sub_19E6CCE98();
    swift_willThrow();

    v17 = v0[1];

    return v17();
  }

  else
  {
    v7 = v3;
    v8 = sub_19E6CD3C8();
    v0[36] = v8;
    v0[21] = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB017728, &qword_19E701608);
    v9 = swift_task_alloc();
    v0[37] = v9;
    sub_19E6CD188();
    v10 = sub_19E6CD198();
    (*(*(v10 - 8) + 56))(v9, 0, 1, v10);
    v11 = swift_task_alloc();
    v0[38] = v11;
    v14 = sub_19D618F90(v11, v12, v13);
    *v11 = v0;
    v11[1] = sub_19D618230;
    v15 = MEMORY[0x1E6981750];

    return MEMORY[0x1EEDBF590](v9, v15, v14);
  }
}

uint64_t sub_19D618230(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 312) = v2;

  if (v2)
  {
    sub_19D60D358(v6[37], &qword_1EB017728, &qword_19E701608);
    v7 = v6[30];
    v8 = v6[31];
    v9 = sub_19D6184A0;
  }

  else
  {
    v10 = v6[37];
    v6[40] = a2;
    v6[41] = a1;
    sub_19D60D358(v10, &qword_1EB017728, &qword_19E701608);

    v7 = v6[30];
    v8 = v6[31];
    v9 = sub_19D618394;
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v8);
}

uint64_t sub_19D618394()
{
  v1 = v0[35];
  v2 = v0[32];

  v3 = v0[1];
  v5 = v0[40];
  v4 = v0[41];

  return v3(v4, v5);
}

uint64_t sub_19D61841C()
{
  v1 = v0[33];
  v2 = v0[32];

  swift_willThrow();

  v3 = v0[1];

  return v3();
}

uint64_t sub_19D6184A0()
{
  v1 = *(v0 + 280);

  v2 = *(v0 + 8);

  return v2();
}

__n128 __swift_memcpy50_8(uint64_t a1, uint64_t a2)
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

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t _s28ExportedContentConfigurationV6RegionV7StorageOwet(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 33))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_19D6185B4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
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

  *(result + 33) = v3;
  return result;
}

unint64_t sub_19D6185F4()
{
  result = qword_1EB017700;
  if (!qword_1EB017700)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB017708, &qword_19E7015E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB017700);
  }

  return result;
}

uint64_t _s28ExportedContentConfigurationV6RegionV7StorageOwCP(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
}

uint64_t _s28ExportedContentConfigurationV6RegionV7StorageOwst(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 1;
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

  *(result + 33) = v3;
  return result;
}

uint64_t sub_19D6186B0(uint64_t a1)
{
  if (*(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_19D6186CC(uint64_t result, int a2)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    *(result + 32) = 1;
  }

  else
  {
    *(result + 32) = 0;
  }

  return result;
}

uint64_t sub_19D618704(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 50))
  {
    return *a1 + 0x80000000;
  }

  v2 = (*(a1 + 32) >> 2) & 0xFFFFFF80 | (*(a1 + 32) >> 1);
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_19D61875C(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 40) = 0;
    result = 0.0;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 48) = 0;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 50) = 1;
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
      result = 0.0;
      *a1 = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 32) = (4 * -a2) & 0x3FFFFFE00 | (2 * (-a2 & 0x7FLL));
      *(a1 + 40) = 0;
      *(a1 + 48) = 0;
      return result;
    }

    *(a1 + 50) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_19D6187E0(uint64_t result, __int16 a2)
{
  v2 = *(result + 48) & 0x101 | (a2 << 15);
  *(result + 32) &= 0x101uLL;
  *(result + 48) = v2;
  return result;
}

unint64_t sub_19D618814()
{
  result = qword_1EB017718;
  if (!qword_1EB017718)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB017718);
  }

  return result;
}

void sub_19D618860(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0175E8, &qword_19E700870);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4, v5);
  v7 = &v11 - v6;
  sub_19E6CD5B8();
  sub_19E6CD5A8();
  sub_19E6CD548();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8 = WebPage.backingWebView.getter();
  (*(v3 + 16))(v7, a1, v2);
  v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v10 = swift_allocObject();
  (*(v3 + 32))(v10 + v9, v7, v2);
  WKWebView.createWebArchiveData(completionHandler:)(sub_19D61902C, v10);
}

void sub_19D618A24(uint64_t a1, void *a2, void *a3)
{
  __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB017710, &qword_19E7015F8);
    sub_19E6CD568();
  }

  else if (a2)
  {
    v6 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB017710, &qword_19E7015F8);
    sub_19E6CD578();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_19D618B00(uint64_t a1)
{
  v2 = sub_19D618F48(&qword_1EB017768, type metadata accessor for WKError, &unk_19E70179C);

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_19D618B6C(uint64_t a1)
{
  v2 = sub_19D618F48(&qword_1EB017768, type metadata accessor for WKError, &unk_19E70179C);

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

uint64_t sub_19D618BD8(uint64_t a1)
{
  v2 = sub_19D618F48(&qword_1EB017720, type metadata accessor for WKError, &unk_19E7017E0);

  return MEMORY[0x1EEDC3B70](a1, v2);
}

uint64_t sub_19D618C5C(uint64_t a1)
{
  v2 = sub_19D618F48(&qword_1EB017720, type metadata accessor for WKError, &unk_19E7017E0);

  return MEMORY[0x1EEDC3BE0](a1, v2);
}

uint64_t sub_19D618CC8(uint64_t a1)
{
  v2 = sub_19D618F48(&qword_1EB017720, type metadata accessor for WKError, &unk_19E7017E0);

  return MEMORY[0x1EEDC3B98](a1, v2);
}

uint64_t sub_19D618D34(void *a1, uint64_t a2)
{
  v4 = sub_19D618F48(&qword_1EB017720, type metadata accessor for WKError, &unk_19E7017E0);
  v5 = a1;

  return MEMORY[0x1EEDC3B88](v5, a2, v4);
}

uint64_t sub_19D618DE8(uint64_t a1, uint64_t a2)
{
  v4 = sub_19D618F48(&qword_1EB017720, type metadata accessor for WKError, &unk_19E7017E0);

  return MEMORY[0x1EEDC3BC8](a1, a2, v4);
}

uint64_t sub_19D618E64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_19E6CD918();
  sub_19E6CD4A8();
  return sub_19E6CD938();
}

uint64_t sub_19D618EC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_19D618F48(&qword_1EB017720, type metadata accessor for WKError, &unk_19E7017E0);

  return MEMORY[0x1EEDC3BA8](a1, a2, a3, v6);
}

uint64_t sub_19D618F48(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_19D618F90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB017730;
  if (!qword_1EB017730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB017730);
  }

  return result;
}

unint64_t sub_19D618FD8()
{
  result = qword_1EB017740;
  if (!qword_1EB017740)
  {
    sub_19E6CCF28();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB017740);
  }

  return result;
}

uint64_t sub_19D61902C(void *a1, unint64_t a2, char a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0175E8, &qword_19E700870);
  if (a3)
  {
    v6 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0175E8, &qword_19E700870);
    return sub_19E6CD568();
  }

  else
  {
    sub_19D61911C(a1, a2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0175E8, &qword_19E700870);
    return sub_19E6CD578();
  }
}

uint64_t sub_19D61911C(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_19D61917C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_19D61919C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
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

  *(result + 32) = v3;
  return result;
}

unint64_t sub_19D6193EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB017790;
  if (!qword_1EB017790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB017790);
  }

  return result;
}

uint64_t WebPage.CSSMediaType.rawValue.getter()
{
  v1 = *v0;

  return v1;
}

void *sub_19D619590@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v2 = result[1];
  *a2 = *result;
  a2[1] = v2;
  return result;
}

uint64_t sub_19D61959C@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t WebPage.FullscreenState.hashValue.getter()
{
  v1 = *v0;
  sub_19E6CD918();
  MEMORY[0x19EAFE5E0](v1);
  return sub_19E6CD938();
}

uint64_t sub_19D619630(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  sub_19D610BA8(0, v13);
  *(v4 + 112) = v13[0];
  v8 = MEMORY[0x1E69E7CC0];
  *(v4 + 136) = sub_19D626CC0(MEMORY[0x1E69E7CC0]);
  *(v4 + 144) = 0;
  *(v4 + 152) = 0;
  *(v4 + 160) = sub_19D626DB8(v8);
  *(v4 + 168) = sub_19D626FA0(v8);
  *(v4 + 176) = sub_19D627188(v8);
  sub_19E6CCFC8();
  v9 = a1[3];
  *(v4 + 48) = a1[2];
  *(v4 + 64) = v9;
  *(v4 + 80) = a1[4];
  *(v4 + 90) = *(a1 + 74);
  v10 = a1[1];
  *(v4 + 16) = *a1;
  *(v4 + 32) = v10;
  type metadata accessor for WKUIDelegateAdapter();
  sub_19D6283C4(a3, v13, &qword_1EB0178D0, &unk_19E702870);
  *(v4 + 120) = sub_19D632CA8(v13);
  type metadata accessor for WKNavigationDelegateAdapter();
  sub_19D6283C4(a2, v13, &qword_1EB0178D8, &qword_19E702200);
  v11 = sub_19D62E5D8(v13);
  sub_19D60D358(a3, &qword_1EB0178D0, &unk_19E702870);
  sub_19D60D358(a2, &qword_1EB0178D8, &qword_19E702200);
  *(v4 + 128) = v11;
  swift_beginAccess();
  swift_weakAssign();
  swift_beginAccess();
  swift_weakAssign();
  return v4;
}

void sub_19D619800(void **a1)
{
  v2 = *a1;
  v3 = swift_beginAccess();
  sub_19D619950(v3, v4, v5);
  if (sub_19E6CD4B8())
  {
    v6 = *(v1 + 112);
    *(v1 + 112) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v8, v9);
    sub_19D6282A4(&qword_1EB0177C0, type metadata accessor for WebPage, &protocol conformance descriptor for WebPage);
    sub_19E6CCF88();
  }
}

unint64_t sub_19D619950(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB0177B8;
  if (!qword_1EB0177B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0177B8);
  }

  return result;
}

uint64_t WebPage.__allocating_init<A, B>(configuration:navigationDecider:dialogPresenter:)(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v20[3] = a4;
  v20[4] = a6;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v20);
  v14 = *(a4 - 8);
  (*(v14 + 16))(boxed_opaque_existential_0, a2, a4);
  v19[3] = a5;
  v19[4] = a7;
  v15 = __swift_allocate_boxed_opaque_existential_0(v19);
  v16 = *(a5 - 8);
  (*(v16 + 16))(v15, a3, a5);
  v17 = swift_allocObject();
  sub_19D619630(a1, v20, v19);
  (*(v16 + 8))(a3, a5);
  (*(v14 + 8))(a2, a4);
  return v17;
}

uint64_t WebPage.__allocating_init<A>(configuration:dialogPresenter:)(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = 0;
  memset(v12, 0, sizeof(v12));
  v11[3] = a3;
  v11[4] = a4;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v11);
  v8 = *(a3 - 8);
  (*(v8 + 16))(boxed_opaque_existential_0, a2, a3);
  v9 = swift_allocObject();
  sub_19D619630(a1, v12, v11);
  (*(v8 + 8))(a2, a3);
  return v9;
}

uint64_t WebPage.__allocating_init<A>(configuration:navigationDecider:)(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[3] = a3;
  v13[4] = a4;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v13);
  v8 = *(a3 - 8);
  (*(v8 + 16))(boxed_opaque_existential_0, a2, a3);
  v12 = 0;
  memset(v11, 0, sizeof(v11));
  v9 = swift_allocObject();
  sub_19D619630(a1, v13, v11);
  (*(v8 + 8))(a2, a3);
  return v9;
}

uint64_t WebPage.__allocating_init(configuration:)(_OWORD *a1)
{
  v7 = 0;
  memset(v6, 0, sizeof(v6));
  v5 = 0;
  memset(v4, 0, sizeof(v4));
  v2 = swift_allocObject();
  sub_19D619630(a1, v6, v4);
  return v2;
}

id WebPage.backForwardList.getter@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  sub_19D6282A4(&qword_1EB0177C0, type metadata accessor for WebPage, &protocol conformance descriptor for WebPage);
  sub_19E6CCF98();

  swift_beginAccess();
  v3 = *(v1 + 112);
  *a1 = v3;

  return v3;
}

id sub_19D619DE0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_19D6282A4(&qword_1EB0177C0, type metadata accessor for WebPage, &protocol conformance descriptor for WebPage);
  sub_19E6CCF98();

  swift_beginAccess();
  v4 = *(v3 + 112);
  *a2 = v4;

  return v4;
}

void sub_19D619EAC(void **a1)
{
  v2 = *a1;
  v1 = v2;
  sub_19D619800(&v2);
}

void sub_19D619EE8()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  swift_beginAccess();
  v3 = *(v2 + 112);
  *(v2 + 112) = v1;
  v4 = v1;
}

uint64_t type metadata accessor for WebPage(uint64_t a1)
{
  result = qword_1EB01CA60;
  if (!qword_1EB01CA60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_19D619F94@<X0>(uint64_t a1@<X8>)
{
  v36[1] = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0177D8, &qword_19E701DC0);
  MEMORY[0x1EEE9AC00](v1 - 8, v2, v3);
  v39 = v36 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0177C8, &qword_19E701DB0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7, v8);
  v10 = v36 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0177E0, &qword_19E701DC8);
  v12 = *(v11 - 8);
  v37 = v11;
  v38 = v12;
  MEMORY[0x1EEE9AC00](v11, v13, v14);
  v16 = v36 - v15;
  v17 = sub_19E6CCF78();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v22 = MEMORY[0x1EEE9AC00](v17, v20, v21);
  v23 = v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v24, v25);
  v27 = v36 - v26;
  sub_19E6CCF68();
  (*(v6 + 104))(v10, *MEMORY[0x1E69E8790], v5);
  sub_19E6CD618();
  (*(v6 + 8))(v10, v5);
  v28 = swift_allocObject();
  swift_weakInit();
  v29 = *(v18 + 16);
  v29(v23, v27, v17);
  v30 = (*(v18 + 80) + 24) & ~*(v18 + 80);
  v31 = swift_allocObject();
  *(v31 + 16) = v28;
  (*(v18 + 32))(v31 + v30, v23, v17);
  v32 = v37;
  sub_19E6CD628();
  v29(v23, v27, v17);
  v34 = v38;
  v33 = v39;
  (*(v38 + 16))(v39, v16, v32);
  (*(v34 + 56))(v33, 0, 1, v32);
  swift_beginAccess();
  sub_19D622CB8(v33, v23);
  swift_endAccess();
  (*(v34 + 8))(v16, v32);
  return (*(v18 + 8))(v27, v17);
}

uint64_t WebPage.url.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v47 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB017738, "pc");
  v6 = MEMORY[0x1EEE9AC00](v3 - 8, v4, v5);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v6, v9, v10);
  v46 = &v43 - v12;
  MEMORY[0x1EEE9AC00](v11, v13, v14);
  v16 = &v43 - v15;
  v17 = sub_19E6CCFD8();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17, v20, v21);
  v22 = &v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  KeyPath = swift_getKeyPath();
  v48 = swift_getKeyPath();
  swift_beginAccess();
  v24 = sub_19D622788(KeyPath, v1[17]);
  swift_endAccess();
  if (v24)
  {

    v25 = v47;
  }

  else
  {
    v43 = v16;
    v44 = v8;

    WTF::isIntegralOrPointerType(v26);
    v28 = v27;
    v45 = WebPage.backingWebView.getter();
    v50 = v45;
    (*(v18 + 16))(&v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), v2 + OBJC_IVAR____TtC6WebKit7WebPage___observationRegistrar, v17);
    swift_unownedRetainStrong();
    swift_unownedRetain();

    v29 = (*(v18 + 80) + 16) & ~*(v18 + 80);
    v30 = (v19 + v29 + 7) & 0xFFFFFFFFFFFFFFF8;
    v31 = swift_allocObject();
    (*(v18 + 32))(v31 + v29, v22, v17);
    *(v31 + v30) = v2;
    *(v31 + ((v30 + 15) & 0xFFFFFFFFFFFFFFF8)) = v28;

    v32 = sub_19E6CCEE8();

    swift_beginAccess();
    v33 = v2[17];
    if ((v33 & 0xC000000000000001) != 0)
    {
      if (v33 < 0)
      {
        v34 = v2[17];
      }

      else
      {
        v34 = v33 & 0xFFFFFFFFFFFFFF8;
      }

      result = sub_19E6CD7D8();
      if (__OFADD__(result, 1))
      {
        __break(1u);
        return result;
      }

      v2[17] = sub_19D624BD8(v34, result + 1);
    }

    v25 = v47;
    v16 = v43;
    v8 = v44;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v49 = v2[17];
    sub_19D625FDC(v32, KeyPath, isUniquelyReferenced_nonNull_native);
    v2[17] = v49;
    swift_endAccess();
  }

  v50 = v2;
  sub_19D6282A4(&qword_1EB0177C0, type metadata accessor for WebPage, &protocol conformance descriptor for WebPage);
  sub_19E6CCF98();
  v37 = WebPage.backingWebView.getter();
  v38 = [v37 URL];
  if (v38)
  {
    v39 = v38;
    sub_19E6CCF18();

    v40 = 0;
  }

  else
  {
    v40 = 1;
  }

  v41 = sub_19E6CCF28();
  (*(*(v41 - 8) + 56))(v8, v40, 1, v41);
  v42 = v46;
  sub_19D627430(v8, v46);
  sub_19D627430(v42, v16);

  sub_19D627430(v16, v25);
}

uint64_t sub_19D61A800@<X0>(uint64_t **a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  KeyPath = swift_getKeyPath();
  swift_getKeyPath();
  sub_19D61ADD4(KeyPath, v3, a2);
}

uint64_t sub_19D61A87C@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [*a1 URL];
  if (v3)
  {
    v4 = v3;
    sub_19E6CCF18();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_19E6CCF28();
  v7 = *(*(v6 - 8) + 56);

  return v7(a2, v5, 1, v6);
}

void WebPage.title.getter()
{
  v1 = v0;
  v2 = sub_19E6CCFD8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2, v5, v6);
  v7 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  KeyPath = swift_getKeyPath();
  swift_getKeyPath();
  swift_beginAccess();
  v9 = sub_19D622788(KeyPath, v0[17]);
  swift_endAccess();
  if (v9)
  {
  }

  else
  {

    WTF::isIntegralOrPointerType(v10);
    v22 = v11;
    v23 = WebPage.backingWebView.getter();
    v25 = v23;
    (*(v3 + 16))(&v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v1 + OBJC_IVAR____TtC6WebKit7WebPage___observationRegistrar, v2);
    swift_unownedRetainStrong();
    swift_unownedRetain();

    v12 = (*(v3 + 80) + 16) & ~*(v3 + 80);
    v13 = (v4 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
    v14 = swift_allocObject();
    (*(v3 + 32))(v14 + v12, v7, v2);
    *(v14 + v13) = v1;
    *(v14 + ((v13 + 15) & 0xFFFFFFFFFFFFFFF8)) = v22;

    v15 = sub_19E6CCEE8();

    swift_beginAccess();
    v16 = v1[17];
    if ((v16 & 0xC000000000000001) != 0)
    {
      if (v16 < 0)
      {
        v17 = v1[17];
      }

      else
      {
        v17 = v16 & 0xFFFFFFFFFFFFFF8;
      }

      v18 = sub_19E6CD7D8();
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_13;
      }

      v1[17] = sub_19D624BD8(v17, v18 + 1);
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v1[17];
    sub_19D625FDC(v15, KeyPath, isUniquelyReferenced_nonNull_native);
    v1[17] = v24;
    swift_endAccess();
  }

  v25 = v1;
  sub_19D6282A4(&qword_1EB0177C0, type metadata accessor for WebPage, &protocol conformance descriptor for WebPage);
  sub_19E6CCF98();
  v1 = WebPage.backingWebView.getter();
  v20 = [v1 title];
  if (v20)
  {
    v21 = v20;
    sub_19E6CD4E8();

    return;
  }

LABEL_13:

  __break(1u);
}

uint64_t sub_19D61ACEC@<X0>(uint64_t **a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  KeyPath = swift_getKeyPath();
  v5 = swift_getKeyPath();
  sub_19D61B0E8(KeyPath, v5, v3);
  v7 = v6;
  v9 = v8;

  *a2 = v7;
  a2[1] = v9;
  return result;
}

void sub_19D61AD6C(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 title];
  if (v3)
  {
    v4 = v3;
    v5 = sub_19E6CD4E8();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a2 = v5;
  a2[1] = v7;
}

void sub_19D61ADD4(uint64_t a1@<X0>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = sub_19E6CCFD8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7, v10, v11);
  v12 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v13 = sub_19D622788(a1, a3[17]);
  swift_endAccess();
  if (v13)
  {

LABEL_10:
    v29 = a3;
    sub_19D6282A4(&qword_1EB0177C0, type metadata accessor for WebPage, &protocol conformance descriptor for WebPage);
    sub_19E6CCF98();
    v24 = WebPage.backingWebView.getter();
    v29 = v24;
    swift_getAtKeyPath();

    return;
  }

  v25[1] = a4;

  WTF::isIntegralOrPointerType(v14);
  v26 = v15;
  v27 = WebPage.backingWebView.getter();
  v29 = v27;
  (*(v8 + 16))(v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a3 + OBJC_IVAR____TtC6WebKit7WebPage___observationRegistrar, v7);
  swift_unownedRetainStrong();
  swift_unownedRetain();

  v16 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v17 = (v9 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  (*(v8 + 32))(v18 + v16, v12, v7);
  *(v18 + v17) = a3;
  *(v18 + ((v17 + 15) & 0xFFFFFFFFFFFFFFF8)) = v26;

  v19 = sub_19E6CCEE8();

  swift_beginAccess();
  v20 = a3[17];
  if ((v20 & 0xC000000000000001) == 0)
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v28 = a3[17];
    sub_19D625FDC(v19, a1, isUniquelyReferenced_nonNull_native);
    a3[17] = v28;
    swift_endAccess();
    goto LABEL_10;
  }

  if (v20 < 0)
  {
    v21 = a3[17];
  }

  else
  {
    v21 = v20 & 0xFFFFFFFFFFFFFF8;
  }

  v22 = sub_19E6CD7D8();
  if (!__OFADD__(v22, 1))
  {
    a3[17] = sub_19D624BD8(v21, v22 + 1);
    goto LABEL_9;
  }

  __break(1u);
}

void sub_19D61B0E8(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_19E6CCFD8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5, v8, v9);
  v10 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v11 = sub_19D622788(a1, a3[17]);
  swift_endAccess();
  if (v11)
  {
  }

  else
  {

    WTF::isIntegralOrPointerType(v12);
    v23 = v13;
    v24 = WebPage.backingWebView.getter();
    v26 = v24;
    (*(v6 + 16))(&v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a3 + OBJC_IVAR____TtC6WebKit7WebPage___observationRegistrar, v5);
    swift_unownedRetainStrong();
    swift_unownedRetain();

    v14 = (*(v6 + 80) + 16) & ~*(v6 + 80);
    v15 = (v7 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
    v16 = swift_allocObject();
    (*(v6 + 32))(v16 + v14, v10, v5);
    *(v16 + v15) = a3;
    *(v16 + ((v15 + 15) & 0xFFFFFFFFFFFFFFF8)) = v23;

    v17 = sub_19E6CCEE8();

    swift_beginAccess();
    v18 = a3[17];
    if ((v18 & 0xC000000000000001) != 0)
    {
      if (v18 < 0)
      {
        v19 = a3[17];
      }

      else
      {
        v19 = v18 & 0xFFFFFFFFFFFFFF8;
      }

      v20 = sub_19E6CD7D8();
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_13;
      }

      a3[17] = sub_19D624BD8(v19, v20 + 1);
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = a3[17];
    sub_19D625FDC(v17, a1, isUniquelyReferenced_nonNull_native);
    a3[17] = v25;
    swift_endAccess();
  }

  v26 = a3;
  sub_19D6282A4(&qword_1EB0177C0, type metadata accessor for WebPage, &protocol conformance descriptor for WebPage);
  sub_19E6CCF98();
  v22 = WebPage.backingWebView.getter();
  v25 = v22;
  swift_getAtKeyPath();

  if (!v27)
  {
LABEL_13:
    __break(1u);
  }
}

void sub_19D61B3F8(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_19E6CCFD8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5, v8, v9);
  v10 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v11 = sub_19D622788(a1, a3[17]);
  swift_endAccess();
  if (v11)
  {

LABEL_10:
    v26 = a3;
    sub_19D6282A4(&qword_1EB0177C0, type metadata accessor for WebPage, &protocol conformance descriptor for WebPage);
    sub_19E6CCF98();
    v22 = WebPage.backingWebView.getter();
    v25 = v22;
    swift_getAtKeyPath();

    return;
  }

  WTF::isIntegralOrPointerType(v12);
  v23 = v13;
  v24 = WebPage.backingWebView.getter();
  v26 = v24;
  (*(v6 + 16))(&v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a3 + OBJC_IVAR____TtC6WebKit7WebPage___observationRegistrar, v5);
  swift_unownedRetainStrong();
  swift_unownedRetain();

  v14 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v15 = (v7 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  (*(v6 + 32))(v16 + v14, v10, v5);
  *(v16 + v15) = a3;
  *(v16 + ((v15 + 15) & 0xFFFFFFFFFFFFFFF8)) = v23;

  v17 = sub_19E6CCEE8();

  swift_beginAccess();
  v18 = a3[17];
  if ((v18 & 0xC000000000000001) == 0)
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = a3[17];
    sub_19D625FDC(v17, a1, isUniquelyReferenced_nonNull_native);
    a3[17] = v25;
    swift_endAccess();
    goto LABEL_10;
  }

  if (v18 < 0)
  {
    v19 = a3[17];
  }

  else
  {
    v19 = v18 & 0xFFFFFFFFFFFFFF8;
  }

  v20 = sub_19E6CD7D8();
  if (!__OFADD__(v20, 1))
  {
    a3[17] = sub_19D624BD8(v19, v20 + 1);
    goto LABEL_9;
  }

  __break(1u);
}

uint64_t sub_19D61B6FC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_19E6CCFD8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5, v8, v9);
  v10 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v11 = sub_19D622788(a1, a3[17]);
  swift_endAccess();
  if (v11)
  {

LABEL_10:
    v26 = a3;
    sub_19D6282A4(&qword_1EB0177C0, type metadata accessor for WebPage, &protocol conformance descriptor for WebPage);
    sub_19E6CCF98();
    v22 = WebPage.backingWebView.getter();
    v26 = v22;
    swift_getAtKeyPath();

    return v25;
  }

  WTF::isIntegralOrPointerType(v12);
  v23 = v13;
  v24 = WebPage.backingWebView.getter();
  v26 = v24;
  (*(v6 + 16))(&v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a3 + OBJC_IVAR____TtC6WebKit7WebPage___observationRegistrar, v5);
  swift_unownedRetainStrong();
  swift_unownedRetain();

  v14 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v15 = (v7 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  (*(v6 + 32))(v16 + v14, v10, v5);
  *(v16 + v15) = a3;
  *(v16 + ((v15 + 15) & 0xFFFFFFFFFFFFFFF8)) = v23;

  v17 = sub_19E6CCEE8();

  swift_beginAccess();
  v18 = a3[17];
  if ((v18 & 0xC000000000000001) == 0)
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = a3[17];
    sub_19D625FDC(v17, a1, isUniquelyReferenced_nonNull_native);
    a3[17] = v25;
    swift_endAccess();
    goto LABEL_10;
  }

  if (v18 < 0)
  {
    v19 = a3[17];
  }

  else
  {
    v19 = v18 & 0xFFFFFFFFFFFFFF8;
  }

  result = sub_19E6CD7D8();
  if (!__OFADD__(result, 1))
  {
    a3[17] = sub_19D624BD8(v19, result + 1);
    goto LABEL_9;
  }

  __break(1u);
  return result;
}

uint64_t *sub_19D61BA00(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_19E6CCFD8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5, v8, v9);
  v10 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v11 = sub_19D622788(a1, a3[17]);
  swift_endAccess();
  if (v11)
  {

LABEL_10:
    v26 = a3;
    sub_19D6282A4(&qword_1EB0177C0, type metadata accessor for WebPage, &protocol conformance descriptor for WebPage);
    sub_19E6CCF98();
    v22 = WebPage.backingWebView.getter();
    v25 = v22;
    swift_getAtKeyPath();

    return v26;
  }

  WTF::isIntegralOrPointerType(v12);
  v23 = v13;
  v24 = WebPage.backingWebView.getter();
  v26 = v24;
  (*(v6 + 16))(&v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a3 + OBJC_IVAR____TtC6WebKit7WebPage___observationRegistrar, v5);
  swift_unownedRetainStrong();
  swift_unownedRetain();

  v14 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v15 = (v7 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  (*(v6 + 32))(v16 + v14, v10, v5);
  *(v16 + v15) = a3;
  *(v16 + ((v15 + 15) & 0xFFFFFFFFFFFFFFF8)) = v23;

  v17 = sub_19E6CCEE8();

  swift_beginAccess();
  v18 = a3[17];
  if ((v18 & 0xC000000000000001) == 0)
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = a3[17];
    sub_19D625FDC(v17, a1, isUniquelyReferenced_nonNull_native);
    a3[17] = v25;
    swift_endAccess();
    goto LABEL_10;
  }

  if (v18 < 0)
  {
    v19 = a3[17];
  }

  else
  {
    v19 = v18 & 0xFFFFFFFFFFFFFF8;
  }

  result = sub_19E6CD7D8();
  if (!__OFADD__(result, 1))
  {
    a3[17] = sub_19D624BD8(v19, result + 1);
    goto LABEL_9;
  }

  __break(1u);
  return result;
}

void sub_19D61BD04(uint64_t a1@<X0>, unint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v7 = sub_19E6CCFD8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7, v10, v11);
  v12 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v13 = sub_19D622788(a1, *(a3 + 136));
  swift_endAccess();
  if (v13)
  {
  }

  else
  {
    v26 = a4;

    WTF::isIntegralOrPointerType(v14);
    v27 = v15;
    v28 = WebPage.backingWebView.getter();
    v30 = v28;
    (*(v8 + 16))(&v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a3 + OBJC_IVAR____TtC6WebKit7WebPage___observationRegistrar, v7);
    swift_unownedRetainStrong();
    swift_unownedRetain();

    v16 = (*(v8 + 80) + 16) & ~*(v8 + 80);
    v17 = (v9 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
    v18 = swift_allocObject();
    (*(v8 + 32))(v18 + v16, v12, v7);
    *(v18 + v17) = a3;
    *(v18 + ((v17 + 15) & 0xFFFFFFFFFFFFFFF8)) = v27;

    v19 = sub_19E6CCEE8();

    swift_beginAccess();
    v20 = *(a3 + 136);
    if ((v20 & 0xC000000000000001) != 0)
    {
      if (v20 < 0)
      {
        v21 = *(a3 + 136);
      }

      else
      {
        v21 = v20 & 0xFFFFFFFFFFFFFF8;
      }

      v22 = sub_19E6CD7D8();
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_13;
      }

      *(a3 + 136) = sub_19D624BD8(v21, v22 + 1);
    }

    a4 = v26;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v29 = *(a3 + 136);
    sub_19D625FDC(v19, a1, isUniquelyReferenced_nonNull_native);
    *(a3 + 136) = v29;
    swift_endAccess();
  }

  v30 = a3;
  sub_19D6282A4(&qword_1EB0177C0, type metadata accessor for WebPage, &protocol conformance descriptor for WebPage);
  sub_19E6CCF98();
  v24 = WebPage.backingWebView.getter();
  v29 = v24;
  swift_getAtKeyPath();

  if (v30 < 4)
  {
    *a4 = 0x1020003u >> (8 * v30);
    return;
  }

LABEL_13:
  sub_19E6CD808();
  __break(1u);
}

uint64_t *sub_19D61C07C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_19E6CCFD8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5, v8, v9);
  v10 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v11 = sub_19D622788(a1, a3[17]);
  swift_endAccess();
  if (v11)
  {

LABEL_10:
    v26 = a3;
    sub_19D6282A4(&qword_1EB0177C0, type metadata accessor for WebPage, &protocol conformance descriptor for WebPage);
    sub_19E6CCF98();
    v22 = WebPage.backingWebView.getter();
    v25 = v22;
    swift_getAtKeyPath();

    return v26;
  }

  WTF::isIntegralOrPointerType(v12);
  v23 = v13;
  v24 = WebPage.backingWebView.getter();
  v26 = v24;
  (*(v6 + 16))(&v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a3 + OBJC_IVAR____TtC6WebKit7WebPage___observationRegistrar, v5);
  swift_unownedRetainStrong();
  swift_unownedRetain();

  v14 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v15 = (v7 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  (*(v6 + 32))(v16 + v14, v10, v5);
  *(v16 + v15) = a3;
  *(v16 + ((v15 + 15) & 0xFFFFFFFFFFFFFFF8)) = v23;

  v17 = sub_19E6CCEE8();

  swift_beginAccess();
  v18 = a3[17];
  if ((v18 & 0xC000000000000001) == 0)
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = a3[17];
    sub_19D625FDC(v17, a1, isUniquelyReferenced_nonNull_native);
    a3[17] = v25;
    swift_endAccess();
    goto LABEL_10;
  }

  if (v18 < 0)
  {
    v19 = a3[17];
  }

  else
  {
    v19 = v18 & 0xFFFFFFFFFFFFFF8;
  }

  result = sub_19E6CD7D8();
  if (!__OFADD__(result, 1))
  {
    a3[17] = sub_19D624BD8(v19, result + 1);
    goto LABEL_9;
  }

  __break(1u);
  return result;
}

uint64_t WebPage.backingProperty<A, B>(_:backedBy:_:)(uint64_t *a1, void *a2, void (*a3)(char *))
{
  v4 = v3;
  v8 = *(*a2 + *MEMORY[0x1E69E77B0] + 8);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](a1, a2, a3);
  v11 = &v18 - v10;
  swift_beginAccess();
  v12 = sub_19D622788(a1, v3[17]);
  swift_endAccess();
  if (v12)
  {

LABEL_10:
    v21 = v4;
    sub_19D6282A4(&qword_1EB0177C0, type metadata accessor for WebPage, &protocol conformance descriptor for WebPage);
    sub_19E6CCF98();
    v17 = WebPage.backingWebView.getter();
    v21 = v17;
    swift_getAtKeyPath();

    a3(v11);
    return (*(v9 + 8))(v11, v8);
  }

  v19 = sub_19D623E28(a1, a2);
  swift_beginAccess();
  v13 = v4[17];
  if ((v13 & 0xC000000000000001) == 0)
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = v4[17];
    sub_19D625FDC(v19, a1, isUniquelyReferenced_nonNull_native);
    v4[17] = v20;
    swift_endAccess();
    goto LABEL_10;
  }

  if (v13 < 0)
  {
    v14 = v4[17];
  }

  else
  {
    v14 = v13 & 0xFFFFFFFFFFFFFF8;
  }

  result = sub_19E6CD7D8();
  if (!__OFADD__(result, 1))
  {
    v4[17] = sub_19D624BD8(v14, result + 1);
    goto LABEL_9;
  }

  __break(1u);
  return result;
}

void WebPage.estimatedProgress.getter()
{
  v1 = v0;
  v2 = sub_19E6CCFD8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2, v5, v6);
  v7 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  KeyPath = swift_getKeyPath();
  swift_getKeyPath();
  swift_beginAccess();
  v9 = sub_19D622788(KeyPath, v0[17]);
  swift_endAccess();
  if (v9)
  {

LABEL_10:
    v24 = v1;
    sub_19D6282A4(&qword_1EB0177C0, type metadata accessor for WebPage, &protocol conformance descriptor for WebPage);
    sub_19E6CCF98();
    v20 = WebPage.backingWebView.getter();
    [v20 estimatedProgress];

    return;
  }

  WTF::isIntegralOrPointerType(v10);
  v21 = v11;
  v22 = WebPage.backingWebView.getter();
  v24 = v22;
  (*(v3 + 16))(&v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v1 + OBJC_IVAR____TtC6WebKit7WebPage___observationRegistrar, v2);
  swift_unownedRetainStrong();
  swift_unownedRetain();

  v12 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v13 = (v4 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = swift_allocObject();
  (*(v3 + 32))(v14 + v12, v7, v2);
  *(v14 + v13) = v1;
  *(v14 + ((v13 + 15) & 0xFFFFFFFFFFFFFFF8)) = v21;

  v15 = sub_19E6CCEE8();

  swift_beginAccess();
  v16 = v1[17];
  if ((v16 & 0xC000000000000001) == 0)
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = v1[17];
    sub_19D625FDC(v15, KeyPath, isUniquelyReferenced_nonNull_native);
    v1[17] = v23;
    swift_endAccess();
    goto LABEL_10;
  }

  if (v16 < 0)
  {
    v17 = v1[17];
  }

  else
  {
    v17 = v16 & 0xFFFFFFFFFFFFFF8;
  }

  v18 = sub_19E6CD7D8();
  if (!__OFADD__(v18, 1))
  {
    v1[17] = sub_19D624BD8(v17, v18 + 1);
    goto LABEL_9;
  }

  __break(1u);
}

uint64_t sub_19D61C920@<X0>(uint64_t **a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  KeyPath = swift_getKeyPath();
  v5 = swift_getKeyPath();
  sub_19D61B3F8(KeyPath, v5, v3);
  v7 = v6;

  *a2 = v7;
  return result;
}

id sub_19D61C99C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 estimatedProgress];
  *a2 = v4;
  return result;
}

id WebPage.isLoading.getter()
{
  v1 = v0;
  v2 = sub_19E6CCFD8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2, v5, v6);
  v7 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  KeyPath = swift_getKeyPath();
  swift_getKeyPath();
  swift_beginAccess();
  v9 = sub_19D622788(KeyPath, v0[17]);
  swift_endAccess();
  if (v9)
  {

LABEL_10:
    v25 = v1;
    sub_19D6282A4(&qword_1EB0177C0, type metadata accessor for WebPage, &protocol conformance descriptor for WebPage);
    sub_19E6CCF98();
    v20 = WebPage.backingWebView.getter();
    v21 = [v20 isLoading];

    return v21;
  }

  WTF::isIntegralOrPointerType(v10);
  v22 = v11;
  v23 = WebPage.backingWebView.getter();
  v25 = v23;
  (*(v3 + 16))(&v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v1 + OBJC_IVAR____TtC6WebKit7WebPage___observationRegistrar, v2);
  swift_unownedRetainStrong();
  swift_unownedRetain();

  v12 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v13 = (v4 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = swift_allocObject();
  (*(v3 + 32))(v14 + v12, v7, v2);
  *(v14 + v13) = v1;
  *(v14 + ((v13 + 15) & 0xFFFFFFFFFFFFFFF8)) = v22;

  v15 = sub_19E6CCEE8();

  swift_beginAccess();
  v16 = v1[17];
  if ((v16 & 0xC000000000000001) == 0)
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v1[17];
    sub_19D625FDC(v15, KeyPath, isUniquelyReferenced_nonNull_native);
    v1[17] = v24;
    swift_endAccess();
    goto LABEL_10;
  }

  if (v16 < 0)
  {
    v17 = v1[17];
  }

  else
  {
    v17 = v16 & 0xFFFFFFFFFFFFFF8;
  }

  result = sub_19E6CD7D8();
  if (!__OFADD__(result, 1))
  {
    v1[17] = sub_19D624BD8(v17, result + 1);
    goto LABEL_9;
  }

  __break(1u);
  return result;
}

id sub_19D61CD14@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isLoading];
  *a2 = result;
  return result;
}

id WebPage.serverTrust.getter()
{
  v1 = v0;
  v2 = sub_19E6CCFD8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2, v5, v6);
  v7 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  KeyPath = swift_getKeyPath();
  swift_getKeyPath();
  swift_beginAccess();
  v9 = sub_19D622788(KeyPath, v0[17]);
  swift_endAccess();
  if (v9)
  {

LABEL_10:
    v25 = v1;
    sub_19D6282A4(&qword_1EB0177C0, type metadata accessor for WebPage, &protocol conformance descriptor for WebPage);
    sub_19E6CCF98();
    v20 = WebPage.backingWebView.getter();
    v21 = [v20 serverTrust];

    return v21;
  }

  WTF::isIntegralOrPointerType(v10);
  v22 = v11;
  v23 = WebPage.backingWebView.getter();
  v25 = v23;
  (*(v3 + 16))(&v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v1 + OBJC_IVAR____TtC6WebKit7WebPage___observationRegistrar, v2);
  swift_unownedRetainStrong();
  swift_unownedRetain();

  v12 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v13 = (v4 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = swift_allocObject();
  (*(v3 + 32))(v14 + v12, v7, v2);
  *(v14 + v13) = v1;
  *(v14 + ((v13 + 15) & 0xFFFFFFFFFFFFFFF8)) = v22;

  v15 = sub_19E6CCEE8();

  swift_beginAccess();
  v16 = v1[17];
  if ((v16 & 0xC000000000000001) == 0)
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v1[17];
    sub_19D625FDC(v15, KeyPath, isUniquelyReferenced_nonNull_native);
    v1[17] = v24;
    swift_endAccess();
    goto LABEL_10;
  }

  if (v16 < 0)
  {
    v17 = v1[17];
  }

  else
  {
    v17 = v16 & 0xFFFFFFFFFFFFFF8;
  }

  result = sub_19E6CD7D8();
  if (!__OFADD__(result, 1))
  {
    v1[17] = sub_19D624BD8(v17, result + 1);
    goto LABEL_9;
  }

  __break(1u);
  return result;
}

uint64_t sub_19D61D080@<X0>(uint64_t **a1@<X0>, uint64_t **a2@<X8>)
{
  v3 = *a1;
  KeyPath = swift_getKeyPath();
  v5 = swift_getKeyPath();
  v6 = sub_19D61BA00(KeyPath, v5, v3);

  *a2 = v6;
  return result;
}

id sub_19D61D0F4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 serverTrust];
  *a2 = result;
  return result;
}

id WebPage.hasOnlySecureContent.getter()
{
  v1 = v0;
  v2 = sub_19E6CCFD8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2, v5, v6);
  v7 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  KeyPath = swift_getKeyPath();
  swift_getKeyPath();
  swift_beginAccess();
  v9 = sub_19D622788(KeyPath, v0[17]);
  swift_endAccess();
  if (v9)
  {

LABEL_10:
    v25 = v1;
    sub_19D6282A4(&qword_1EB0177C0, type metadata accessor for WebPage, &protocol conformance descriptor for WebPage);
    sub_19E6CCF98();
    v20 = WebPage.backingWebView.getter();
    v21 = [v20 hasOnlySecureContent];

    return v21;
  }

  WTF::isIntegralOrPointerType(v10);
  v22 = v11;
  v23 = WebPage.backingWebView.getter();
  v25 = v23;
  (*(v3 + 16))(&v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v1 + OBJC_IVAR____TtC6WebKit7WebPage___observationRegistrar, v2);
  swift_unownedRetainStrong();
  swift_unownedRetain();

  v12 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v13 = (v4 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = swift_allocObject();
  (*(v3 + 32))(v14 + v12, v7, v2);
  *(v14 + v13) = v1;
  *(v14 + ((v13 + 15) & 0xFFFFFFFFFFFFFFF8)) = v22;

  v15 = sub_19E6CCEE8();

  swift_beginAccess();
  v16 = v1[17];
  if ((v16 & 0xC000000000000001) == 0)
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v1[17];
    sub_19D625FDC(v15, KeyPath, isUniquelyReferenced_nonNull_native);
    v1[17] = v24;
    swift_endAccess();
    goto LABEL_10;
  }

  if (v16 < 0)
  {
    v17 = v1[17];
  }

  else
  {
    v17 = v16 & 0xFFFFFFFFFFFFFF8;
  }

  result = sub_19E6CD7D8();
  if (!__OFADD__(result, 1))
  {
    v1[17] = sub_19D624BD8(v17, result + 1);
    goto LABEL_9;
  }

  __break(1u);
  return result;
}

id sub_19D61D474@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 hasOnlySecureContent];
  *a2 = result;
  return result;
}

id WebPage.isWritingToolsActive.getter()
{
  v1 = v0;
  v2 = sub_19E6CCFD8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2, v5, v6);
  v7 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  KeyPath = swift_getKeyPath();
  swift_getKeyPath();
  swift_beginAccess();
  v9 = sub_19D622788(KeyPath, v0[17]);
  swift_endAccess();
  if (v9)
  {

LABEL_10:
    v25 = v1;
    sub_19D6282A4(&qword_1EB0177C0, type metadata accessor for WebPage, &protocol conformance descriptor for WebPage);
    sub_19E6CCF98();
    v20 = WebPage.backingWebView.getter();
    v21 = [v20 isWritingToolsActive];

    return v21;
  }

  WTF::isIntegralOrPointerType(v10);
  v22 = v11;
  v23 = WebPage.backingWebView.getter();
  v25 = v23;
  (*(v3 + 16))(&v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v1 + OBJC_IVAR____TtC6WebKit7WebPage___observationRegistrar, v2);
  swift_unownedRetainStrong();
  swift_unownedRetain();

  v12 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v13 = (v4 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = swift_allocObject();
  (*(v3 + 32))(v14 + v12, v7, v2);
  *(v14 + v13) = v1;
  *(v14 + ((v13 + 15) & 0xFFFFFFFFFFFFFFF8)) = v22;

  v15 = sub_19E6CCEE8();

  swift_beginAccess();
  v16 = v1[17];
  if ((v16 & 0xC000000000000001) == 0)
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v1[17];
    sub_19D625FDC(v15, KeyPath, isUniquelyReferenced_nonNull_native);
    v1[17] = v24;
    swift_endAccess();
    goto LABEL_10;
  }

  if (v16 < 0)
  {
    v17 = v1[17];
  }

  else
  {
    v17 = v16 & 0xFFFFFFFFFFFFFF8;
  }

  result = sub_19E6CD7D8();
  if (!__OFADD__(result, 1))
  {
    v1[17] = sub_19D624BD8(v17, result + 1);
    goto LABEL_9;
  }

  __break(1u);
  return result;
}

id sub_19D61D7EC@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isWritingToolsActive];
  *a2 = result;
  return result;
}

id WebPage.isBlockedByScreenTime.getter()
{
  v1 = v0;
  v2 = sub_19E6CCFD8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2, v5, v6);
  v7 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  KeyPath = swift_getKeyPath();
  swift_getKeyPath();
  swift_beginAccess();
  v9 = sub_19D622788(KeyPath, v0[17]);
  swift_endAccess();
  if (v9)
  {

LABEL_10:
    v25 = v1;
    sub_19D6282A4(&qword_1EB0177C0, type metadata accessor for WebPage, &protocol conformance descriptor for WebPage);
    sub_19E6CCF98();
    v20 = WebPage.backingWebView.getter();
    v21 = [v20 isBlockedByScreenTime];

    return v21;
  }

  WTF::isIntegralOrPointerType(v10);
  v22 = v11;
  v23 = WebPage.backingWebView.getter();
  v25 = v23;
  (*(v3 + 16))(&v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v1 + OBJC_IVAR____TtC6WebKit7WebPage___observationRegistrar, v2);
  swift_unownedRetainStrong();
  swift_unownedRetain();

  v12 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v13 = (v4 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = swift_allocObject();
  (*(v3 + 32))(v14 + v12, v7, v2);
  *(v14 + v13) = v1;
  *(v14 + ((v13 + 15) & 0xFFFFFFFFFFFFFFF8)) = v22;

  v15 = sub_19E6CCEE8();

  swift_beginAccess();
  v16 = v1[17];
  if ((v16 & 0xC000000000000001) == 0)
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v1[17];
    sub_19D625FDC(v15, KeyPath, isUniquelyReferenced_nonNull_native);
    v1[17] = v24;
    swift_endAccess();
    goto LABEL_10;
  }

  if (v16 < 0)
  {
    v17 = v1[17];
  }

  else
  {
    v17 = v16 & 0xFFFFFFFFFFFFFF8;
  }

  result = sub_19E6CD7D8();
  if (!__OFADD__(result, 1))
  {
    v1[17] = sub_19D624BD8(v17, result + 1);
    goto LABEL_9;
  }

  __break(1u);
  return result;
}

uint64_t sub_19D61DB64@<X0>(uint64_t **a1@<X0>, _BYTE *a4@<X8>)
{
  v5 = *a1;
  KeyPath = swift_getKeyPath();
  v7 = swift_getKeyPath();
  LOBYTE(v5) = sub_19D61B6FC(KeyPath, v7, v5);

  *a4 = v5 & 1;
  return result;
}

id sub_19D61DBD8@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isBlockedByScreenTime];
  *a2 = result;
  return result;
}

uint64_t WebPage.fullscreenState.getter@<X0>(_BYTE *a1@<X8>)
{
  v2 = v1;
  v4 = sub_19E6CCFD8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7, v8);
  v9 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  KeyPath = swift_getKeyPath();
  swift_getKeyPath();
  swift_beginAccess();
  v11 = sub_19D622788(KeyPath, v1[17]);
  swift_endAccess();
  if (v11)
  {
  }

  else
  {
    v26 = a1;

    WTF::isIntegralOrPointerType(v12);
    v27 = v13;
    v28 = WebPage.backingWebView.getter();
    v30 = v28;
    (*(v5 + 16))(&v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v2 + OBJC_IVAR____TtC6WebKit7WebPage___observationRegistrar, v4);
    swift_unownedRetainStrong();
    swift_unownedRetain();

    v14 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v15 = (v6 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
    v16 = swift_allocObject();
    (*(v5 + 32))(v16 + v14, v9, v4);
    *(v16 + v15) = v2;
    *(v16 + ((v15 + 15) & 0xFFFFFFFFFFFFFFF8)) = v27;

    v17 = sub_19E6CCEE8();

    swift_beginAccess();
    v18 = v2[17];
    if ((v18 & 0xC000000000000001) != 0)
    {
      if (v18 < 0)
      {
        v19 = v2[17];
      }

      else
      {
        v19 = v18 & 0xFFFFFFFFFFFFFF8;
      }

      v20 = sub_19E6CD7D8();
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_13;
      }

      v2[17] = sub_19D624BD8(v19, v20 + 1);
    }

    a1 = v26;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v29 = v2[17];
    sub_19D625FDC(v17, KeyPath, isUniquelyReferenced_nonNull_native);
    v2[17] = v29;
    swift_endAccess();
  }

  v30 = v2;
  sub_19D6282A4(&qword_1EB0177C0, type metadata accessor for WebPage, &protocol conformance descriptor for WebPage);
  sub_19E6CCF98();
  v22 = WebPage.backingWebView.getter();
  v23 = [v22 fullscreenState];

  if (v23 < 4)
  {

    *a1 = 0x1020003u >> (8 * v23);
    return result;
  }

LABEL_13:
  result = sub_19E6CD808();
  __break(1u);
  return result;
}

uint64_t sub_19D61DFA4@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  KeyPath = swift_getKeyPath();
  swift_getKeyPath();
  sub_19D61BD04(KeyPath, v3, &v6);

  *a2 = v6;
  return result;
}

id sub_19D61E024@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 fullscreenState];
  *a2 = result;
  return result;
}

id WebPage.cameraCaptureState.getter()
{
  v1 = v0;
  v2 = sub_19E6CCFD8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2, v5, v6);
  v7 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  KeyPath = swift_getKeyPath();
  swift_getKeyPath();
  swift_beginAccess();
  v9 = sub_19D622788(KeyPath, v0[17]);
  swift_endAccess();
  if (v9)
  {

LABEL_10:
    v25 = v1;
    sub_19D6282A4(&qword_1EB0177C0, type metadata accessor for WebPage, &protocol conformance descriptor for WebPage);
    sub_19E6CCF98();
    v20 = WebPage.backingWebView.getter();
    v21 = [v20 cameraCaptureState];

    return v21;
  }

  WTF::isIntegralOrPointerType(v10);
  v22 = v11;
  v23 = WebPage.backingWebView.getter();
  v25 = v23;
  (*(v3 + 16))(&v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v1 + OBJC_IVAR____TtC6WebKit7WebPage___observationRegistrar, v2);
  swift_unownedRetainStrong();
  swift_unownedRetain();

  v12 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v13 = (v4 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = swift_allocObject();
  (*(v3 + 32))(v14 + v12, v7, v2);
  *(v14 + v13) = v1;
  *(v14 + ((v13 + 15) & 0xFFFFFFFFFFFFFFF8)) = v22;

  v15 = sub_19E6CCEE8();

  swift_beginAccess();
  v16 = v1[17];
  if ((v16 & 0xC000000000000001) == 0)
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v1[17];
    sub_19D625FDC(v15, KeyPath, isUniquelyReferenced_nonNull_native);
    v1[17] = v24;
    swift_endAccess();
    goto LABEL_10;
  }

  if (v16 < 0)
  {
    v17 = v1[17];
  }

  else
  {
    v17 = v16 & 0xFFFFFFFFFFFFFF8;
  }

  result = sub_19E6CD7D8();
  if (!__OFADD__(result, 1))
  {
    v1[17] = sub_19D624BD8(v17, result + 1);
    goto LABEL_9;
  }

  __break(1u);
  return result;
}

id sub_19D61E39C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 cameraCaptureState];
  *a2 = result;
  return result;
}

id WebPage.microphoneCaptureState.getter()
{
  v1 = v0;
  v2 = sub_19E6CCFD8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2, v5, v6);
  v7 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  KeyPath = swift_getKeyPath();
  swift_getKeyPath();
  swift_beginAccess();
  v9 = sub_19D622788(KeyPath, v0[17]);
  swift_endAccess();
  if (v9)
  {

LABEL_10:
    v25 = v1;
    sub_19D6282A4(&qword_1EB0177C0, type metadata accessor for WebPage, &protocol conformance descriptor for WebPage);
    sub_19E6CCF98();
    v20 = WebPage.backingWebView.getter();
    v21 = [v20 microphoneCaptureState];

    return v21;
  }

  WTF::isIntegralOrPointerType(v10);
  v22 = v11;
  v23 = WebPage.backingWebView.getter();
  v25 = v23;
  (*(v3 + 16))(&v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v1 + OBJC_IVAR____TtC6WebKit7WebPage___observationRegistrar, v2);
  swift_unownedRetainStrong();
  swift_unownedRetain();

  v12 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v13 = (v4 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = swift_allocObject();
  (*(v3 + 32))(v14 + v12, v7, v2);
  *(v14 + v13) = v1;
  *(v14 + ((v13 + 15) & 0xFFFFFFFFFFFFFFF8)) = v22;

  v15 = sub_19E6CCEE8();

  swift_beginAccess();
  v16 = v1[17];
  if ((v16 & 0xC000000000000001) == 0)
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v1[17];
    sub_19D625FDC(v15, KeyPath, isUniquelyReferenced_nonNull_native);
    v1[17] = v24;
    swift_endAccess();
    goto LABEL_10;
  }

  if (v16 < 0)
  {
    v17 = v1[17];
  }

  else
  {
    v17 = v16 & 0xFFFFFFFFFFFFFF8;
  }

  result = sub_19E6CD7D8();
  if (!__OFADD__(result, 1))
  {
    v1[17] = sub_19D624BD8(v17, result + 1);
    goto LABEL_9;
  }

  __break(1u);
  return result;
}

uint64_t sub_19D61E714@<X0>(uint64_t **a1@<X0>, uint64_t **a4@<X8>)
{
  v5 = *a1;
  KeyPath = swift_getKeyPath();
  v7 = swift_getKeyPath();
  v8 = sub_19D61C07C(KeyPath, v7, v5);

  *a4 = v8;
  return result;
}

id sub_19D61E784@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 microphoneCaptureState];
  *a2 = result;
  return result;
}

void WebPage.mediaType.getter(uint64_t *a2@<X8>)
{
  v3 = WebPage.backingWebView.getter();
  v4 = [v3 mediaType];

  if (v4)
  {
    v5 = sub_19E6CD4E8();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a2 = v5;
  a2[1] = v7;
}

void WebPage.mediaType.setter(uint64_t *a1)
{
  v1 = a1[1];
  v2 = WebPage.backingWebView.getter();
  if (v1)
  {
    v3 = sub_19E6CD4C8();
  }

  else
  {
    v3 = 0;
  }

  [v2 setMediaType_];
}

id WebPage.backingWebView.getter()
{
  v1 = *(v0 + 152);
  if (v1)
  {
    v2 = *(v0 + 152);
  }

  else
  {
    type metadata accessor for WebPageWebView();
    sub_19D627F10();
    v3 = *(v0 + 64);
    v4 = *(v0 + 32);
    v19 = *(v0 + 48);
    v20 = v3;
    v5 = *(v0 + 64);
    v21[0] = *(v0 + 80);
    *(v21 + 10) = *(v0 + 90);
    v6 = *(v0 + 32);
    v18[0] = *(v0 + 16);
    v18[1] = v6;
    v16[2] = v19;
    v16[3] = v5;
    v17[0] = *(v0 + 80);
    *(v17 + 10) = *(v0 + 90);
    v16[0] = v18[0];
    v16[1] = v4;
    sub_19D6273B4(v18, &v15);
    v7 = v0;
    sub_19D63ABB0(v16);
    v9 = WebPageWebView.__allocating_init(frame:configuration:)(v8, 0.0, 0.0, 1024.0, 768.0);
    v10 = *(v0 + 128);
    v11 = v9;
    [v11 setNavigationDelegate_];
    [v11 setUIDelegate_];

    v12 = *(v7 + 152);
    *(v7 + 152) = v11;
    v2 = v11;

    v1 = 0;
  }

  v13 = v1;
  return v2;
}

void (*WebPage.mediaType.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  a1[2] = v1;
  v3 = WebPage.backingWebView.getter();
  v4 = [v3 mediaType];

  if (v4)
  {
    v5 = sub_19E6CD4E8();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a1 = v5;
  a1[1] = v7;
  return sub_19D61EA90;
}

uint64_t WebPage.customUserAgent.getter()
{
  v0 = WebPage.backingWebView.getter();
  v1 = [v0 customUserAgent];

  if (!v1)
  {
    return 0;
  }

  v2 = sub_19E6CD4E8();

  return v2;
}

void sub_19D61EB1C(SEL *a1@<X3>, uint64_t *a2@<X8>)
{
  v4 = WebPage.backingWebView.getter();
  v5 = [v4 *a1];

  if (v5)
  {
    v6 = sub_19E6CD4E8();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  *a2 = v6;
  a2[1] = v8;
}

void sub_19D61EBA0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v6 = a1[1];
  v7 = WebPage.backingWebView.getter();
  if (v6)
  {
    v8 = sub_19E6CD4C8();
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  [v7 *a5];
}

void WebPage.customUserAgent.setter(uint64_t a1, uint64_t a2)
{
  v3 = WebPage.backingWebView.getter();
  if (a2)
  {
    v4 = sub_19E6CD4C8();
  }

  else
  {
    v4 = 0;
  }

  [v3 setCustomUserAgent_];
}

void (*WebPage.customUserAgent.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  a1[2] = v1;
  v3 = WebPage.backingWebView.getter();
  v4 = [v3 customUserAgent];

  if (v4)
  {
    v5 = sub_19E6CD4E8();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a1 = v5;
  a1[1] = v7;
  return sub_19D61ED44;
}

void sub_19D61ED50(uint64_t *a1, char a2, SEL *a3)
{
  v4 = a1[1];
  v5 = *(a1[2] + 152);
  if (a2)
  {
    v7 = v5;
    if (v4)
    {

      v6 = sub_19E6CD4C8();
    }

    else
    {
      v6 = 0;
    }

    [v7 *a3];
  }

  else
  {
    v7 = v5;
    if (v4)
    {
      v6 = sub_19E6CD4C8();

      [v7 *a3];
    }

    else
    {
      v6 = 0;
      [v7 *a3];
    }
  }
}

id WebPage.isInspectable.getter()
{
  v0 = WebPage.backingWebView.getter();
  v1 = [v0 isInspectable];

  return v1;
}

void sub_19D61EE84(unsigned __int8 *a1@<X8>)
{
  v2 = WebPage.backingWebView.getter();
  v3 = [v2 isInspectable];

  *a1 = v3;
}

void sub_19D61EED0(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = WebPage.backingWebView.getter();
  [v2 setInspectable_];
}

void WebPage.isInspectable.setter(char a1)
{
  v2 = WebPage.backingWebView.getter();
  [v2 setInspectable_];
}

id (*WebPage.isInspectable.modify(uint64_t a1))(unsigned __int8 *a1)
{
  *a1 = v1;
  v3 = WebPage.backingWebView.getter();
  v4 = [v3 isInspectable];

  *(a1 + 8) = v4;
  return sub_19D61EFE4;
}

uint64_t sub_19D61F030@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 144);
  return result;
}

void sub_19D61F078(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 144) = v2;
  v4 = WebPage.backingWebView.getter();
  v5 = v4;
  if (*(v3 + 144))
  {
    v6 = 0.0;
  }

  else
  {
    v6 = 1024.0;
  }

  if (*(v3 + 144))
  {
    v7 = 0.0;
  }

  else
  {
    v7 = 768.0;
  }

  [v4 setFrame_];
}

void WebPage.isBoundToWebView.setter(char a1)
{
  swift_beginAccess();
  *(v1 + 144) = a1;
  v3 = WebPage.backingWebView.getter();
  v4 = v3;
  if (*(v1 + 144))
  {
    v5 = 0.0;
  }

  else
  {
    v5 = 1024.0;
  }

  if (*(v1 + 144))
  {
    v6 = 0.0;
  }

  else
  {
    v6 = 768.0;
  }

  [v3 setFrame_];
}

void (*WebPage.isBoundToWebView.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_19D61F1D0;
}

void sub_19D61F1D0(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = *(a1 + 24);
    v5 = WebPage.backingWebView.getter();
    v8 = v5;
    if (*(v4 + 144))
    {
      v6 = 0.0;
    }

    else
    {
      v6 = 1024.0;
    }

    if (*(v4 + 144))
    {
      v7 = 0.0;
    }

    else
    {
      v7 = 768.0;
    }

    [v5 setFrame_];
  }
}

id sub_19D61F268@<X0>(void *a1@<X8>)
{
  result = WebPage.backingWebView.getter();
  *a1 = result;
  return result;
}

void sub_19D61F294(void **a1, uint64_t a2)
{
  v2 = *a1;
  v4 = *(*a2 + 152);
  *(*a2 + 152) = *a1;
  v3 = v2;
}

void WebPage.backingWebView.setter(uint64_t a1)
{
  v2 = *(v1 + 152);
  *(v1 + 152) = a1;
}

void (*WebPage.backingWebView.modify(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = WebPage.backingWebView.getter();
  return sub_19D61F330;
}

void sub_19D61F330(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + 152);
  *(v1 + 152) = v2;
}

uint64_t WebPage.load(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0177C8, &qword_19E701DB0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5, v6);
  v8 = &v24 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB017738, "pc");
  MEMORY[0x1EEE9AC00](v9 - 8, v10, v11);
  v13 = &v24 - v12;
  v14 = sub_19E6CCF28();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16, v17);
  v19 = &v24 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_19D6283C4(a1, v13, &qword_1EB017738, "pc");
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_19D60D358(v13, &qword_1EB017738, "pc");
    (*(v4 + 104))(v8, *MEMORY[0x1E69E8790], v3);
    return sub_19E6CD658();
  }

  else
  {
    v21 = (*(v15 + 32))(v19, v13, v14);
    MEMORY[0x1EEE9AC00](v21, v22, v23);
    *(&v24 - 2) = v19;
    sub_19D61F7C0(sub_19D6275C4, (&v24 - 4), v25);
    return (*(v15 + 8))(v19, v14);
  }
}

{
  v3[2] = a1;
  return sub_19D61F7C0(sub_19D6275CC, v3, a2);
}

{
  v3[2] = a1;
  return sub_19D61F7C0(sub_19D62784C, v3, a2);
}

id sub_19D61F610(void *a1, uint64_t a2)
{
  v4 = sub_19E6CCF28();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6, v7);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_19E6CCD88();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12, v13);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v9, a2, v4);
  sub_19E6CCD78();
  v16 = sub_19E6CCD58();
  (*(v11 + 8))(v15, v10);
  v17 = [a1 loadRequest_];

  return v17;
}

uint64_t sub_19D61F7C0@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v35 = a2;
  v36 = a1;
  v37 = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0177D0, &qword_19E701DB8);
  MEMORY[0x1EEE9AC00](v3 - 8, v4, v5);
  v34 = &v33 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0177D8, &qword_19E701DC0);
  MEMORY[0x1EEE9AC00](v7 - 8, v8, v9);
  v11 = &v33 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0177C8, &qword_19E701DB0);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14, v15);
  v17 = &v33 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0177E0, &qword_19E701DC8);
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18, v20, v21);
  v23 = &v33 - v22;
  v24 = WebPage.backingWebView.getter();
  v25 = v36();

  (*(v13 + 104))(v17, *MEMORY[0x1E69E8790], v12);
  if (!v25)
  {
    return sub_19E6CD658();
  }

  sub_19E6CD618();
  (*(v13 + 8))(v17, v12);
  v26 = swift_allocObject();
  swift_weakInit();
  v27 = swift_allocObject();
  *(v27 + 16) = v26;
  *(v27 + 24) = v25;
  v28 = v25;
  sub_19E6CD628();
  (*(v19 + 16))(v11, v23, v18);
  (*(v19 + 56))(v11, 0, 1, v18);
  swift_beginAccess();
  sub_19D622EEC(v11, v28);
  swift_endAccess();
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0177E8, &qword_19E701DD0);
  v30 = *(v29 - 8);
  v31 = v34;
  (*(v30 + 16))(v34, v37, v29);
  (*(v30 + 56))(v31, 0, 1, v29);
  swift_beginAccess();
  sub_19D623194(v31, v28);
  swift_endAccess();

  return (*(v19 + 8))(v23, v18);
}

void WebPage.load(_:mimeType:characterEncoding:baseURL:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __CFString *a5)
{
  v8 = sub_19E6CD4F8();
  v9 = CFStringConvertNSStringEncodingToEncoding(v8);
  if (v9 == -1)
  {
    __break(1u);
    goto LABEL_6;
  }

  v10 = CFStringConvertEncodingToIANACharSetName(v9);
  if (v10)
  {
    a5 = v10;
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v11 = 0;
      sub_19E6CD4D8();

      goto LABEL_7;
    }

LABEL_6:
  }

LABEL_7:
  __break(1u);
}

uint64_t WebPage.load(html:baseURL:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5[2] = a1;
  v5[3] = a2;
  v5[4] = a3;
  return sub_19D61F7C0(sub_19D6276D8, v5, a4);
}

uint64_t WebPage.load(simulatedRequest:response:responseData:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = a3;
  v6[5] = a4;
  return sub_19D61F7C0(sub_19D627748, v6, a5);
}

uint64_t WebPage.load(simulatedRequest:responseHTML:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5[2] = a1;
  v5[3] = a2;
  v5[4] = a3;
  return sub_19D61F7C0(sub_19D6277D0, v5, a4);
}

uint64_t WebPage.reload(fromOrigin:)@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v35 = a1;
  v36 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0177D0, &qword_19E701DB8);
  MEMORY[0x1EEE9AC00](v2 - 8, v3, v4);
  v34 = &v34 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0177D8, &qword_19E701DC0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7, v8);
  v10 = &v34 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0177C8, &qword_19E701DB0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13, v14);
  v16 = &v34 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0177E0, &qword_19E701DC8);
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v19, v20);
  v22 = &v34 - v21;
  v23 = WebPage.backingWebView.getter();
  v24 = v23;
  v25 = &selRef_reloadFromOrigin;
  if ((v35 & 1) == 0)
  {
    v25 = &selRef_reload;
  }

  v26 = [v23 *v25];

  (*(v12 + 104))(v16, *MEMORY[0x1E69E8790], v11);
  if (!v26)
  {
    return sub_19E6CD658();
  }

  sub_19E6CD618();
  (*(v12 + 8))(v16, v11);
  v27 = swift_allocObject();
  swift_weakInit();
  v28 = swift_allocObject();
  *(v28 + 16) = v27;
  *(v28 + 24) = v26;
  v29 = v26;
  sub_19E6CD628();
  (*(v18 + 16))(v10, v22, v17);
  (*(v18 + 56))(v10, 0, 1, v17);
  swift_beginAccess();
  sub_19D622EEC(v10, v29);
  swift_endAccess();
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0177E8, &qword_19E701DD0);
  v31 = *(v30 - 8);
  v32 = v34;
  (*(v31 + 16))(v34, v36, v30);
  (*(v31 + 56))(v32, 0, 1, v30);
  swift_beginAccess();
  sub_19D623194(v32, v29);
  swift_endAccess();

  return (*(v18 + 8))(v22, v17);
}

Swift::Void __swiftcall WebPage.stopLoading()()
{
  v0 = WebPage.backingWebView.getter();
  [v0 stopLoading];
}

uint64_t WebPage.callJavaScript(_:arguments:in:contentWorld:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v7[26] = a6;
  v7[27] = v6;
  v7[24] = a3;
  v7[25] = a4;
  v7[22] = a1;
  v7[23] = a2;
  v7[28] = *a5;
  sub_19E6CD5B8();
  v7[29] = sub_19E6CD5A8();
  v9 = sub_19E6CD548();
  v7[30] = v9;
  v7[31] = v8;

  return MEMORY[0x1EEE6DFA0](sub_19D6203C8, v9, v8);
}

uint64_t sub_19D6203C8()
{
  v1 = v0[28];
  v2 = v0[26];
  v0[32] = WebPage.backingWebView.getter();
  v3 = v0[26];
  if (v2)
  {
    v4 = v1;
    v5 = v3;
  }

  else
  {
    v6 = objc_opt_self();
    v7 = v1;
    v5 = [v6 pageWorld];
  }

  v0[33] = v5;
  v8 = v3;
  v9 = swift_task_alloc();
  v0[34] = v9;
  *v9 = v0;
  v9[1] = sub_19D6204DC;
  v10 = v0[28];
  v11 = v0[24];
  v12 = v0[25];
  v13 = v0[23];

  return WKWebView.callAsyncJavaScript(_:arguments:in:contentWorld:)((v0 + 2), v13, v11, v12, v10, v5);
}

uint64_t sub_19D6204DC()
{
  v2 = *v1;
  v2[35] = v0;

  v3 = v2[33];
  v4 = v2[32];
  v5 = v2[28];
  if (v0)
  {

    v6 = v2[30];
    v7 = v2[31];
    v8 = sub_19D6207EC;
  }

  else
  {

    v6 = v2[30];
    v7 = v2[31];
    v8 = sub_19D620654;
  }

  return MEMORY[0x1EEE6DFA0](v8, v6, v7);
}

uint64_t sub_19D620654()
{

  sub_19D6283C4(v0 + 16, v0 + 80, &qword_1EB0175C0, &qword_19E701DE0);
  if (*(v0 + 104))
  {
    v1 = *(v0 + 176);
    sub_19D60D3B8((v0 + 80), (v0 + 48));
    sub_19D60D3C8(v0 + 48, v0 + 112);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0177F0, &qword_19E701DE8);
    swift_dynamicCast();
    v2 = *(v0 + 168);
    v3 = __swift_project_boxed_opaque_existential_0((v0 + 144), v2);
    v1[3] = v2;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v1);
    (*(*(v2 - 8) + 16))(boxed_opaque_existential_0, v3, v2);
    __swift_destroy_boxed_opaque_existential_0((v0 + 48));
    sub_19D60D358(v0 + 16, &qword_1EB0175C0, &qword_19E701DE0);
    __swift_destroy_boxed_opaque_existential_0((v0 + 144));
  }

  else
  {
    v5 = *(v0 + 176);
    sub_19D60D358(v0 + 16, &qword_1EB0175C0, &qword_19E701DE0);
    sub_19D60D358(v0 + 80, &qword_1EB0175C0, &qword_19E701DE0);
    *v5 = 0u;
    v5[1] = 0u;
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_19D6207EC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t WebPage.pauseAllMediaPlayback()()
{
  v1[18] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0177F8, &qword_19E701DF8);
  v1[19] = v2;
  v1[20] = *(v2 - 8);
  v1[21] = swift_task_alloc();
  sub_19E6CD5B8();
  v1[22] = sub_19E6CD5A8();
  v4 = sub_19E6CD548();
  v1[23] = v4;
  v1[24] = v3;

  return MEMORY[0x1EEE6DFA0](sub_19D620950, v4, v3);
}

uint64_t sub_19D620950()
{
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[19];
  v4 = WebPage.backingWebView.getter();
  v0[25] = v4;
  v0[2] = v0;
  v0[3] = sub_19D620AF0;
  swift_continuation_init();
  v0[17] = v3;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 14);
  sub_19E6CD558();
  (*(v2 + 32))(boxed_opaque_existential_0, v1, v3);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_19D620C68;
  v0[13] = &block_descriptor_1;
  [v4 pauseAllMediaPlaybackWithCompletionHandler_];
  (*(v2 + 8))(boxed_opaque_existential_0, v3);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_19D620AF0()
{
  v1 = *(*v0 + 192);
  v2 = *(*v0 + 184);

  return MEMORY[0x1EEE6DFA0](sub_19D620BF8, v2, v1);
}

uint64_t sub_19D620BF8()
{
  v1 = *(v0 + 200);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_19D620C68(uint64_t a1)
{
  __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0177F8, &qword_19E701DF8);
  return sub_19E6CD578();
}

uint64_t WebPage.mediaPlaybackState()()
{
  v1[19] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB017800, &qword_19E701E08);
  v1[20] = v2;
  v1[21] = *(v2 - 8);
  v1[22] = swift_task_alloc();
  sub_19E6CD5B8();
  v1[23] = sub_19E6CD5A8();
  v4 = sub_19E6CD548();
  v1[24] = v4;
  v1[25] = v3;

  return MEMORY[0x1EEE6DFA0](sub_19D620DB0, v4, v3);
}

uint64_t sub_19D620DB0()
{
  v2 = v0[21];
  v1 = v0[22];
  v3 = v0[20];
  v4 = WebPage.backingWebView.getter();
  v0[26] = v4;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_19D620F60;
  swift_continuation_init();
  v0[17] = v3;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 14);
  type metadata accessor for WKMediaPlaybackState(0);
  sub_19E6CD558();
  (*(v2 + 32))(boxed_opaque_existential_0, v1, v3);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_19D6210E8;
  v0[13] = &block_descriptor_90;
  [v4 requestMediaPlaybackStateWithCompletionHandler_];
  (*(v2 + 8))(boxed_opaque_existential_0, v3);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_19D620F60()
{
  v1 = *(*v0 + 200);
  v2 = *(*v0 + 192);

  return MEMORY[0x1EEE6DFA0](sub_19D621068, v2, v1);
}

uint64_t sub_19D621068()
{
  v1 = v0[26];

  v2 = v0[18];

  v3 = v0[1];

  return v3(v2);
}

uint64_t sub_19D6210E8(uint64_t a1, uint64_t a2)
{
  __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB017800, &qword_19E701E08);
  return sub_19E6CD578();
}

uint64_t WebPage.setAllMediaPlaybackSuspended(_:)(char a1)
{
  *(v2 + 144) = v1;
  *(v2 + 208) = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0177F8, &qword_19E701DF8);
  *(v2 + 152) = v3;
  *(v2 + 160) = *(v3 - 8);
  *(v2 + 168) = swift_task_alloc();
  sub_19E6CD5B8();
  *(v2 + 176) = sub_19E6CD5A8();
  v5 = sub_19E6CD548();
  *(v2 + 184) = v5;
  *(v2 + 192) = v4;

  return MEMORY[0x1EEE6DFA0](sub_19D621248, v5, v4);
}

uint64_t sub_19D621248()
{
  v2 = *(v0 + 160);
  v1 = *(v0 + 168);
  v3 = *(v0 + 152);
  v4 = *(v0 + 208);
  v5 = WebPage.backingWebView.getter();
  *(v0 + 200) = v5;
  *(v0 + 16) = v0;
  *(v0 + 24) = sub_19D6213F8;
  swift_continuation_init();
  *(v0 + 136) = v3;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 112));
  sub_19E6CD558();
  (*(v2 + 32))(boxed_opaque_existential_0, v1, v3);
  *(v0 + 80) = MEMORY[0x1E69E9820];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_19D620C68;
  *(v0 + 104) = &block_descriptor_93;
  [v5 setAllMediaPlaybackSuspended:v4 completionHandler:v0 + 80];
  (*(v2 + 8))(boxed_opaque_existential_0, v3);

  return MEMORY[0x1EEE6DEC8](v0 + 16);
}

uint64_t sub_19D6213F8()
{
  v1 = *(*v0 + 192);
  v2 = *(*v0 + 184);

  return MEMORY[0x1EEE6DFA0](sub_19D628454, v2, v1);
}

uint64_t WebPage.closeAllMediaPresentations()()
{
  v1[18] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0177F8, &qword_19E701DF8);
  v1[19] = v2;
  v1[20] = *(v2 - 8);
  v1[21] = swift_task_alloc();
  sub_19E6CD5B8();
  v1[22] = sub_19E6CD5A8();
  v4 = sub_19E6CD548();
  v1[23] = v4;
  v1[24] = v3;

  return MEMORY[0x1EEE6DFA0](sub_19D621600, v4, v3);
}

uint64_t sub_19D621600()
{
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[19];
  v4 = WebPage.backingWebView.getter();
  v0[25] = v4;
  v0[2] = v0;
  v0[3] = sub_19D6213F8;
  swift_continuation_init();
  v0[17] = v3;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 14);
  sub_19E6CD558();
  (*(v2 + 32))(boxed_opaque_existential_0, v1, v3);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_19D620C68;
  v0[13] = &block_descriptor_96;
  [v4 closeAllMediaPresentationsWithCompletionHandler_];
  (*(v2 + 8))(boxed_opaque_existential_0, v3);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t WebPage.setCameraCaptureState(_:)(uint64_t a1)
{
  v2[18] = a1;
  v2[19] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0177F8, &qword_19E701DF8);
  v2[20] = v3;
  v2[21] = *(v3 - 8);
  v2[22] = swift_task_alloc();
  sub_19E6CD5B8();
  v2[23] = sub_19E6CD5A8();
  v5 = sub_19E6CD548();
  v2[24] = v5;
  v2[25] = v4;

  return MEMORY[0x1EEE6DFA0](sub_19D6218A0, v5, v4);
}

uint64_t sub_19D6218A0()
{
  v2 = v0[21];
  v1 = v0[22];
  v3 = v0[20];
  v4 = v0[18];
  v5 = WebPage.backingWebView.getter();
  v0[26] = v5;
  v0[2] = v0;
  v0[3] = sub_19D621A50;
  swift_continuation_init();
  v0[17] = v3;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 14);
  sub_19E6CD558();
  (*(v2 + 32))(boxed_opaque_existential_0, v1, v3);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_19D620C68;
  v0[13] = &block_descriptor_99;
  [v5 setCameraCaptureState:v4 completionHandler:v0 + 10];
  (*(v2 + 8))(boxed_opaque_existential_0, v3);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_19D621A50()
{
  v1 = *(*v0 + 200);
  v2 = *(*v0 + 192);

  return MEMORY[0x1EEE6DFA0](sub_19D621B58, v2, v1);
}

uint64_t sub_19D621B58()
{
  v1 = *(v0 + 208);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t WebPage.setMicrophoneCaptureState(_:)(uint64_t a1)
{
  v2[18] = a1;
  v2[19] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0177F8, &qword_19E701DF8);
  v2[20] = v3;
  v2[21] = *(v3 - 8);
  v2[22] = swift_task_alloc();
  sub_19E6CD5B8();
  v2[23] = sub_19E6CD5A8();
  v5 = sub_19E6CD548();
  v2[24] = v5;
  v2[25] = v4;

  return MEMORY[0x1EEE6DFA0](sub_19D621CC8, v5, v4);
}

uint64_t sub_19D621CC8()
{
  v2 = v0[21];
  v1 = v0[22];
  v3 = v0[20];
  v4 = v0[18];
  v5 = WebPage.backingWebView.getter();
  v0[26] = v5;
  v0[2] = v0;
  v0[3] = sub_19D621E78;
  swift_continuation_init();
  v0[17] = v3;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 14);
  sub_19E6CD558();
  (*(v2 + 32))(boxed_opaque_existential_0, v1, v3);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_19D620C68;
  v0[13] = &block_descriptor_102;
  [v5 setMicrophoneCaptureState:v4 completionHandler:v0 + 10];
  (*(v2 + 8))(boxed_opaque_existential_0, v3);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_19D621E78()
{
  v1 = *(*v0 + 200);
  v2 = *(*v0 + 192);

  return MEMORY[0x1EEE6DFA0](sub_19D628458, v2, v1);
}

uint64_t sub_19D621F80(uint64_t *a1, void *a2)
{
  v3 = v2;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB017808, &qword_19E701E30);
  v6 = *(v96 - 8);
  MEMORY[0x1EEE9AC00](v96, v7, v8);
  v94 = &v85 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0177E0, &qword_19E701DC8);
  v11 = *(v10 - 8);
  v14 = MEMORY[0x1EEE9AC00](v10, v12, v13);
  v91 = &v85 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v14, v16, v17);
  v20 = &v85 - v19;
  MEMORY[0x1EEE9AC00](v18, v21, v22);
  v24 = &v85 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0177D8, &qword_19E701DC0);
  v28 = MEMORY[0x1EEE9AC00](v25 - 8, v26, v27);
  v89 = &v85 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28, v30, v31);
  v33 = &v85 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB017810, &qword_19E701E38);
  MEMORY[0x1EEE9AC00](v34 - 8, v35, v36);
  v38 = &v85 - v37;
  v95 = *a1;
  v39 = *(a1 + 8);
  v93 = v10;
  v97 = v11;
  v88 = v6;
  v92 = v39;
  if (a2)
  {
    swift_beginAccess();
    v40 = *(v3 + 20);
    v41 = *(v40 + 16);
    v90 = a2;
    v87 = v24;
    if (v41 && (v42 = sub_19D6246C8(a2), (v43 & 1) != 0))
    {
      (*(v11 + 16))(v33, *(v40 + 56) + *(v11 + 72) * v42, v10);
      v44 = 0;
    }

    else
    {
      v44 = 1;
    }

    v45 = *(v11 + 56);
    v45(v33, v44, 1, v10);
    v86 = *(v11 + 48);
    if (v86(v33, 1, v10))
    {
      v46 = v90;
      sub_19D60D358(v33, &qword_1EB0177D8, &qword_19E701DC0);
      swift_endAccess();
      v47 = 1;
    }

    else
    {
      v61 = *(v11 + 16);
      v85 = v45;
      v62 = v87;
      v61(v87, v33, v10);
      v63 = v90;
      sub_19D60D358(v33, &qword_1EB0177D8, &qword_19E701DC0);
      swift_endAccess();
      v102 = v95;
      v103 = v39;
      sub_19E6CD638();
      v64 = v62;
      v45 = v85;
      (*(v11 + 8))(v64, v10);
      v47 = 0;
    }

    (*(v6 + 56))(v38, v47, 1, v96);
    sub_19D60D358(v38, &qword_1EB017810, &qword_19E701E38);
    if ((v39 & 1) == 0 && v95 == 3)
    {
      v65 = v45;
      swift_beginAccess();
      v66 = *(v3 + 20);
      if (*(v66 + 16))
      {
        v67 = sub_19D6246C8(v90);
        v68 = v89;
        if (v69)
        {
          (*(v11 + 16))(v89, *(v66 + 56) + *(v11 + 72) * v67, v10);
          v70 = 0;
        }

        else
        {
          v70 = 1;
        }
      }

      else
      {
        v70 = 1;
        v68 = v89;
      }

      v65(v68, v70, 1, v10);
      if (!v86(v68, 1, v10))
      {
        v84 = v87;
        (*(v11 + 16))(v87, v68, v10);
        sub_19D60D358(v68, &qword_1EB0177D8, &qword_19E701DC0);
        swift_endAccess();
        v102 = 0;
        sub_19E6CD648();

        (*(v11 + 8))(v84, v10);
        goto LABEL_30;
      }

      sub_19D60D358(v68, &qword_1EB0177D8, &qword_19E701DC0);
      swift_endAccess();
    }

LABEL_30:
    swift_beginAccess();
    v71 = *(v3 + 22);
    v72 = 1 << *(v71 + 32);
    v73 = -1;
    if (v72 < 64)
    {
      v73 = ~(-1 << v72);
    }

    v74 = v73 & *(v71 + 64);
    v75 = (v72 + 63) >> 6;
    v89 = (v97 + 8);
    v90 = (v97 + 16);
    v76 = (v88 + 8);

    v77 = 0;
    v78 = v97;
    for (i = v93; v74; result = (*v76)(v83, v96))
    {
      v80 = v77;
LABEL_38:
      v81 = __clz(__rbit64(v74));
      v74 &= v74 - 1;
      v82 = v91;
      (*(v78 + 16))(v91, *(v71 + 56) + *(v78 + 72) * (v81 | (v80 << 6)), i);
      v83 = v94;
      v98 = v95;
      v99 = v92;
      sub_19E6CD638();
      (*(v78 + 8))(v82, i);
    }

    while (1)
    {
      v80 = v77 + 1;
      if (__OFADD__(v77, 1))
      {
        break;
      }

      if (v80 >= v75)
      {
      }

      v74 = *(v71 + 64 + 8 * v80);
      ++v77;
      if (v74)
      {
        v77 = v80;
        goto LABEL_38;
      }
    }

    __break(1u);
    goto LABEL_43;
  }

  swift_beginAccess();
  v87 = v3;
  v48 = *(v3 + 20);
  v49 = 1 << *(v48 + 32);
  v50 = -1;
  if (v49 < 64)
  {
    v50 = ~(-1 << v49);
  }

  v51 = v50 & *(v48 + 64);
  v52 = (v49 + 63) >> 6;
  v89 = (v11 + 8);
  v90 = (v11 + 16);
  v53 = (v6 + 8);

  v55 = 0;
  for (j = v97; v51; result = (*v53)(v60, v96))
  {
    v57 = v55;
LABEL_16:
    v58 = __clz(__rbit64(v51));
    v51 &= v51 - 1;
    v59 = v93;
    (*(j + 16))(v20, *(v48 + 56) + *(j + 72) * (v58 | (v57 << 6)), v93);
    v60 = v94;
    v100 = v95;
    v101 = v92;
    sub_19E6CD638();
    (*(j + 8))(v20, v59);
  }

  while (1)
  {
    v57 = v55 + 1;
    if (__OFADD__(v55, 1))
    {
      break;
    }

    if (v57 >= v52)
    {

      v3 = v87;
      goto LABEL_30;
    }

    v51 = *(v48 + 64 + 8 * v57);
    ++v55;
    if (v51)
    {
      v55 = v57;
      goto LABEL_16;
    }
  }

LABEL_43:
  __break(1u);
  return result;
}

void *sub_19D622788(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {

    v3 = sub_19E6CD7E8();

    if (v3)
    {
      sub_19E6CCE28();
      swift_dynamicCast();
      return v9;
    }
  }

  else if (*(a2 + 16))
  {
    v5 = sub_19D6245B4(a1);
    if (v6)
    {
      v7 = *(*(a2 + 56) + 8 * v5);
      v8 = v7;
      return v7;
    }
  }

  return 0;
}

uint64_t sub_19D622840(uint64_t a1, uint64_t a2)
{
  v3 = sub_19E6CCF78();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3, v6, v7);
  v8 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB017A40, &qword_19E702170);
  MEMORY[0x1EEE9AC00](v9 - 8, v10, v11);
  v13 = &v21 - v12;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v15 = result;
    v16 = sub_19E6CD5D8();
    (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
    (*(v4 + 16))(&v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v3);
    sub_19E6CD5B8();

    v17 = sub_19E6CD5A8();
    v18 = (*(v4 + 80) + 40) & ~*(v4 + 80);
    v19 = swift_allocObject();
    v20 = MEMORY[0x1E69E85E0];
    *(v19 + 2) = v17;
    *(v19 + 3) = v20;
    *(v19 + 4) = v15;
    (*(v4 + 32))(&v19[v18], v8, v3);
    sub_19D62343C(0, 0, v13, &unk_19E7021F0, v19);
  }

  return result;
}

uint64_t sub_19D622A6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0177D8, &qword_19E701DC0);
  v5[7] = swift_task_alloc();
  v6 = sub_19E6CCF78();
  v5[8] = v6;
  v5[9] = *(v6 - 8);
  v5[10] = swift_task_alloc();
  sub_19E6CD5B8();
  v5[11] = sub_19E6CD5A8();
  v8 = sub_19E6CD548();

  return MEMORY[0x1EEE6DFA0](sub_19D622B98, v8, v7);
}

uint64_t sub_19D622B98()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v5 = v0[6];
  v4 = v0[7];

  (*(v3 + 16))(v1, v5, v2);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0177E0, &qword_19E701DC8);
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  swift_beginAccess();
  sub_19D622CB8(v4, v1);
  swift_endAccess();

  v7 = v0[1];

  return v7();
}

uint64_t sub_19D622CB8(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0177D8, &qword_19E701DC0);
  MEMORY[0x1EEE9AC00](v5 - 8, v6, v7);
  v9 = &v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0177E0, &qword_19E701DC8);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12, v13);
  v15 = &v20 - v14;
  if ((*(v11 + 48))(a1, 1, v10) == 1)
  {
    sub_19D60D358(a1, &qword_1EB0177D8, &qword_19E701DC0);
    sub_19D624A20(a2, v9);
    v16 = sub_19E6CCF78();
    (*(*(v16 - 8) + 8))(a2, v16);
    return sub_19D60D358(v9, &qword_1EB0177D8, &qword_19E701DC0);
  }

  else
  {
    (*(v11 + 32))(v15, a1, v10);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v2;
    sub_19D625DCC(v15, a2, isUniquelyReferenced_nonNull_native);
    v19 = sub_19E6CCF78();
    result = (*(*(v19 - 8) + 8))(a2, v19);
    *v2 = v21;
  }

  return result;
}

uint64_t sub_19D622EEC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0177D8, &qword_19E701DC0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7, v8);
  v10 = &v24 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0177E0, &qword_19E701DC8);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13, v14);
  v16 = &v24 - v15;
  if ((*(v12 + 48))(a1, 1, v11) == 1)
  {
    sub_19D60D358(a1, &qword_1EB0177D8, &qword_19E701DC0);
    v17 = sub_19D6246C8(a2);
    if (v18)
    {
      v19 = v17;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v21 = *v3;
      v25 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_19D626960(&qword_1EB0177E0, &qword_19E701DC8, &qword_1EB017860, &qword_19E702160);
        v21 = v25;
      }

      (*(v12 + 32))(v10, *(v21 + 56) + *(v12 + 72) * v19, v11);
      sub_19D625C10(v19, v21, &qword_1EB0177E0, &qword_19E701DC8);
      *v3 = v21;
      (*(v12 + 56))(v10, 0, 1, v11);
    }

    else
    {
      (*(v12 + 56))(v10, 1, 1, v11);
    }

    return sub_19D60D358(v10, &qword_1EB0177D8, &qword_19E701DC0);
  }

  else
  {
    (*(v12 + 32))(v16, a1, v11);
    v22 = swift_isUniquelyReferenced_nonNull_native();
    v25 = *v3;
    result = sub_19D626144(v16, a2, v22, &qword_1EB0177E0, &qword_19E701DC8, &qword_1EB017860, &qword_19E702160);
    *v3 = v25;
  }

  return result;
}

uint64_t sub_19D623194(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0177D0, &qword_19E701DB8);
  MEMORY[0x1EEE9AC00](v6 - 8, v7, v8);
  v10 = &v24 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0177E8, &qword_19E701DD0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13, v14);
  v16 = &v24 - v15;
  if ((*(v12 + 48))(a1, 1, v11) == 1)
  {
    sub_19D60D358(a1, &qword_1EB0177D0, &qword_19E701DB8);
    v17 = sub_19D6246C8(a2);
    if (v18)
    {
      v19 = v17;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v21 = *v3;
      v25 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_19D626960(&qword_1EB0177E8, &qword_19E701DD0, &qword_1EB017858, &qword_19E702158);
        v21 = v25;
      }

      (*(v12 + 32))(v10, *(v21 + 56) + *(v12 + 72) * v19, v11);
      sub_19D625C10(v19, v21, &qword_1EB0177E8, &qword_19E701DD0);
      *v3 = v21;
      (*(v12 + 56))(v10, 0, 1, v11);
    }

    else
    {
      (*(v12 + 56))(v10, 1, 1, v11);
    }

    return sub_19D60D358(v10, &qword_1EB0177D0, &qword_19E701DB8);
  }

  else
  {
    (*(v12 + 32))(v16, a1, v11);
    v22 = swift_isUniquelyReferenced_nonNull_native();
    v25 = *v3;
    result = sub_19D626144(v16, a2, v22, &qword_1EB0177E8, &qword_19E701DD0, &qword_1EB017858, &qword_19E702158);
    *v3 = v25;
  }

  return result;
}

uint64_t sub_19D62343C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB017A40, &qword_19E702170);
  MEMORY[0x1EEE9AC00](v9 - 8, v10, v11);
  v13 = v27 - v12;
  sub_19D6283C4(a3, v27 - v12, &unk_1EB017A40, &qword_19E702170);
  v14 = sub_19E6CD5D8();
  v15 = *(v14 - 8);
  v16 = (*(v15 + 48))(v13, 1, v14);

  if (v16 == 1)
  {
    sub_19D60D358(v13, &unk_1EB017A40, &qword_19E702170);
  }

  else
  {
    sub_19E6CD5C8();
    (*(v15 + 8))(v13, v14);
  }

  v17 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_19E6CD548();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_19E6CD508() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_19D60D358(a3, &unk_1EB017A40, &qword_19E702170);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_19D60D358(a3, &unk_1EB017A40, &qword_19E702170);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_19D623748(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_19E6CD5B8();
  sub_19E6CD5A8();
  sub_19E6CD548();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  sub_19D627E7C(isCurrentExecutor, v5, v6);
  swift_allocError();
  *v7 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0177E0, &qword_19E701DC8);
  sub_19E6CD648();
}

uint64_t sub_19D623834(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB017868, &qword_19E702168);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5, v8, v9);
  v11 = &v25 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB017A40, &qword_19E702170);
  MEMORY[0x1EEE9AC00](v12 - 8, v13, v14);
  v16 = &v25 - v15;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v18 = result;
    v19 = sub_19E6CD5D8();
    (*(*(v19 - 8) + 56))(v16, 1, 1, v19);
    (*(v6 + 16))(v11, a1, v5);
    sub_19E6CD5B8();

    v25 = a3;
    v20 = sub_19E6CD5A8();
    v21 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v22 = (v7 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
    v23 = swift_allocObject();
    v24 = MEMORY[0x1E69E85E0];
    *(v23 + 16) = v20;
    *(v23 + 24) = v24;
    (*(v6 + 32))(v23 + v21, v11, v5);
    *(v23 + v22) = v18;
    *(v23 + ((v22 + 15) & 0xFFFFFFFFFFFFFFF8)) = v25;
    sub_19D62343C(0, 0, v16, &unk_19E702180, v23);
  }

  return result;
}

uint64_t sub_19D623AA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[9] = a5;
  v6[10] = a6;
  v6[8] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0177D0, &qword_19E701DB8);
  v6[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0177D8, &qword_19E701DC0);
  v6[12] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB017868, &qword_19E702168);
  v6[13] = v7;
  v6[14] = *(v7 - 8);
  v6[15] = swift_task_alloc();
  sub_19E6CD5B8();
  v6[16] = sub_19E6CD5A8();
  v9 = sub_19E6CD548();

  return MEMORY[0x1EEE6DFA0](sub_19D623C14, v9, v8);
}

uint64_t sub_19D623C14()
{
  v1 = v0[15];
  v2 = v0[13];
  v3 = v0[14];
  v4 = v0[8];

  (*(v3 + 16))(v1, v4, v2);
  LODWORD(v4) = (*(v3 + 88))(v1, v2);
  v5 = *MEMORY[0x1E69E8760];
  (*(v3 + 8))(v1, v2);
  if (v4 == v5)
  {
    v6 = WebPage.backingWebView.getter();
    [v6 stopLoading];
  }

  v7 = v0[11];
  v8 = v0[12];
  v9 = v0[10];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0177E0, &qword_19E701DC8);
  (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  swift_beginAccess();
  sub_19D622EEC(v8, v9);
  swift_endAccess();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0177E8, &qword_19E701DD0);
  (*(*(v11 - 8) + 56))(v7, 1, 1, v11);
  swift_beginAccess();
  sub_19D623194(v7, v9);
  swift_endAccess();

  v12 = v0[1];

  return v12();
}

uint64_t sub_19D623E28(uint64_t *a1, void *a2)
{
  v20 = *a1;
  v21 = a2;
  v19 = *a2;
  v3 = sub_19E6CCFD8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3, v6, v7);
  v8 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);

  WTF::isIntegralOrPointerType(v9);
  v11 = v10;
  v12 = WebPage.backingWebView.getter();
  v22 = v12;
  (*(v4 + 16))(v8, v2 + OBJC_IVAR____TtC6WebKit7WebPage___observationRegistrar, v3);
  swift_unownedRetainStrong();
  swift_unownedRetain();

  v13 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v14 = (v5 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = swift_allocObject();
  v16 = *MEMORY[0x1E69E77B0];
  *(v15 + 16) = *(v20 + *MEMORY[0x1E69E77B0] + 8);
  *(v15 + 24) = *(v19 + v16 + 8);
  (*(v4 + 32))(v15 + v13, v8, v3);
  *(v15 + v14) = v2;
  *(v15 + ((v14 + 15) & 0xFFFFFFFFFFFFFFF8)) = v11;

  v17 = sub_19E6CCEE8();

  return v17;
}

uint64_t WebPage.deinit()
{
  v1 = *(v0 + 64);
  v6[2] = *(v0 + 48);
  v6[3] = v1;
  v7[0] = *(v0 + 80);
  *(v7 + 10) = *(v0 + 90);
  v2 = *(v0 + 32);
  v6[0] = *(v0 + 16);
  v6[1] = v2;
  sub_19D6278D8(v6);

  sub_19D624190(*(v0 + 136));

  v3 = OBJC_IVAR____TtC6WebKit7WebPage___observationRegistrar;
  v4 = sub_19E6CCFD8();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t WebPage.__deallocating_deinit()
{
  WebPage.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

void sub_19D624190(unint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    v1 = 0;
    v2 = 0;
    v3 = 0;
    v4 = sub_19E6CD7C8() | 0x8000000000000000;
  }

  else
  {
    v5 = -1 << *(a1 + 32);
    v2 = ~v5;
    v1 = a1 + 64;
    v6 = -v5;
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v3 = v7 & *(a1 + 64);
    v4 = a1;
  }

  v8 = 0;
  v9 = (v2 + 64) >> 6;
  if ((v4 & 0x8000000000000000) != 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v10 = v8;
    v11 = v3;
    v12 = v8;
    if (!v3)
    {
      break;
    }

LABEL_12:
    v13 = (v11 - 1) & v11;
    v14 = (v12 << 9) | (8 * __clz(__rbit64(v11)));
    v15 = *(*(v4 + 48) + v14);
    v16 = *(*(v4 + 56) + v14);

    v17 = v16;
    if (!v15)
    {
LABEL_18:
      sub_19D627BE8(v4);

      return;
    }

    while (1)
    {

      sub_19E6CCE18();

      v8 = v12;
      v3 = v13;
      if ((v4 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_19E6CD7F8())
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB017850, &unk_19E702140);
        swift_dynamicCast();
        sub_19E6CCE28();
        swift_dynamicCast();
        v17 = v18;
        v12 = v8;
        v13 = v3;
        if (v18)
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= v9)
    {
      goto LABEL_18;
    }

    v11 = *(v1 + 8 * v12);
    ++v10;
    if (v11)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

Swift::Void __swiftcall WebPage.terminateWebContentProcess()()
{
  v0 = WebPage.backingWebView.getter();
  [v0 _killWebContentProcess];
}

uint64_t sub_19D6243C4(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_19D6244BC;

  return v6(a1);
}

uint64_t sub_19D6244BC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_19D6245B4(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB017850, &unk_19E702140);
  v2 = sub_19E6CD498();
  return sub_19D62470C(a1, v2);
}

unint64_t sub_19D624630(uint64_t a1)
{
  sub_19E6CCF78();
  sub_19D6282A4(&qword_1EB017610, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  v2 = sub_19E6CD498();

  return sub_19D6247F4(a1, v2);
}

unint64_t sub_19D6246C8(uint64_t a1)
{
  v2 = sub_19E6CD908();

  return sub_19D6249B4(a1, v2);
}

unint64_t sub_19D62470C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB017850, &unk_19E702140);
      if (sub_19E6CD4B8())
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_19D6247F4(uint64_t a1, uint64_t a2)
{
  v21 = a1;
  v4 = sub_19E6CCF78();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6, v7);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v2;
  v10 = -1 << *(v2 + 32);
  v11 = a2 & ~v10;
  v20 = v2 + 64;
  if ((*(v2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v15 = *(v5 + 16);
    v14 = v5 + 16;
    v13 = v15;
    v16 = *(v14 + 56);
    do
    {
      v13(v9, *(v22 + 48) + v16 * v11, v4);
      sub_19D6282A4(&qword_1EB0178C8, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
      v17 = sub_19E6CD4B8();
      (*(v14 - 8))(v9, v4);
      if (v17)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
    }

    while (((*(v20 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  return v11;
}

unint64_t sub_19D6249B4(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

uint64_t sub_19D624A20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_19D624630(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_19D6264A4();
      v9 = v21;
    }

    v10 = *(v9 + 48);
    v11 = sub_19E6CCF78();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    v12 = *(v9 + 56);
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0177E0, &qword_19E701DC8);
    v20 = *(v13 - 8);
    (*(v20 + 32))(a2, v12 + *(v20 + 72) * v7, v13);
    sub_19D6258C0(v7, v9);
    *v3 = v9;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0177E0, &qword_19E701DC8);
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

uint64_t sub_19D624BD8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0178B0, &qword_19E7021D0);
    v2 = sub_19E6CD848();
    v17 = v2;
    sub_19E6CD7C8();
    for (i = sub_19E6CD7F8(); i; i = sub_19E6CD7F8())
    {
      v15 = i;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB017850, &unk_19E702140);
      swift_dynamicCast();
      sub_19E6CCE28();
      swift_dynamicCast();
      v10 = *(v2 + 16);
      if (*(v2 + 24) <= v10)
      {
        sub_19D6252C8(v10 + 1, 1);
      }

      v2 = v17;
      result = sub_19E6CD498();
      v5 = v17 + 64;
      v6 = -1 << *(v17 + 32);
      v7 = result & ~v6;
      v8 = v7 >> 6;
      if (((-1 << v7) & ~*(v17 + 64 + 8 * (v7 >> 6))) != 0)
      {
        v9 = __clz(__rbit64((-1 << v7) & ~*(v17 + 64 + 8 * (v7 >> 6)))) | v7 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v11 = 0;
        v12 = (63 - v6) >> 6;
        do
        {
          if (++v8 == v12 && (v11 & 1) != 0)
          {
            __break(1u);
            return result;
          }

          v13 = v8 == v12;
          if (v8 == v12)
          {
            v8 = 0;
          }

          v11 |= v13;
          v14 = *(v5 + 8 * v8);
        }

        while (v14 == -1);
        v9 = __clz(__rbit64(~v14)) + (v8 << 6);
      }

      *(v5 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
      *(*(v17 + 48) + 8 * v9) = v16;
      *(*(v17 + 56) + 8 * v9) = v15;
      ++*(v17 + 16);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CC8];
  }

  return v2;
}

uint64_t sub_19D624E18(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0177E0, &qword_19E701DC8);
  v5 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56, v6, v7);
  v55 = &v44 - v8;
  v9 = sub_19E6CCF78();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11, v12);
  v57 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0178C0, &qword_19E7021E0);
  v51 = v4;
  result = sub_19E6CD838();
  v16 = result;
  if (*(v14 + 16))
  {
    v17 = 0;
    v18 = v10;
    v19 = (v14 + 64);
    v20 = 1 << *(v14 + 32);
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    else
    {
      v21 = -1;
    }

    v22 = v21 & *(v14 + 64);
    v23 = (v20 + 63) >> 6;
    v47 = (v18 + 16);
    v48 = v18;
    v45 = v2;
    v46 = v5 + 16;
    v49 = v14;
    v50 = v5;
    v52 = (v5 + 32);
    v53 = (v18 + 32);
    v24 = result + 64;
    v25 = v18;
    while (v22)
    {
      v27 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
LABEL_15:
      v30 = v27 | (v17 << 6);
      v31 = *(v14 + 48);
      v54 = *(v25 + 72);
      v32 = v31 + v54 * v30;
      if (v51)
      {
        (*v53)(v57, v32, v9);
        v33 = *(v14 + 56);
        v34 = *(v50 + 72);
        (*(v50 + 32))(v55, v33 + v34 * v30, v56);
      }

      else
      {
        (*v47)(v57, v32, v9);
        v35 = *(v14 + 56);
        v34 = *(v50 + 72);
        (*(v50 + 16))(v55, v35 + v34 * v30, v56);
      }

      sub_19D6282A4(&qword_1EB017610, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      result = sub_19E6CD498();
      v36 = -1 << *(v16 + 32);
      v37 = result & ~v36;
      v38 = v37 >> 6;
      if (((-1 << v37) & ~*(v24 + 8 * (v37 >> 6))) == 0)
      {
        v39 = 0;
        v40 = (63 - v36) >> 6;
        while (++v38 != v40 || (v39 & 1) == 0)
        {
          v41 = v38 == v40;
          if (v38 == v40)
          {
            v38 = 0;
          }

          v39 |= v41;
          v42 = *(v24 + 8 * v38);
          if (v42 != -1)
          {
            v26 = __clz(__rbit64(~v42)) + (v38 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v26 = __clz(__rbit64((-1 << v37) & ~*(v24 + 8 * (v37 >> 6)))) | v37 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v24 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      (*v53)((*(v16 + 48) + v54 * v26), v57, v9);
      result = (*v52)(*(v16 + 56) + v34 * v26, v55, v56);
      ++*(v16 + 16);
      v25 = v48;
      v14 = v49;
    }

    v28 = v17;
    while (1)
    {
      v17 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v17 >= v23)
      {
        break;
      }

      v29 = v19[v17];
      ++v28;
      if (v29)
      {
        v27 = __clz(__rbit64(v29));
        v22 = (v29 - 1) & v29;
        goto LABEL_15;
      }
    }

    if ((v51 & 1) == 0)
    {

      v3 = v45;
      goto LABEL_34;
    }

    v43 = 1 << *(v14 + 32);
    v3 = v45;
    if (v43 >= 64)
    {
      bzero(v19, ((v43 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v19 = -1 << v43;
    }

    *(v14 + 16) = 0;
  }

LABEL_34:
  *v3 = v16;
  return result;
}

uint64_t sub_19D6252C8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0178B0, &qword_19E7021D0);
  v32 = v4;
  result = sub_19E6CD838();
  v7 = result;
  if (*(v5 + 16))
  {
    v31 = v5;
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
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v32 & 1) == 0)
      {

        v22 = v21;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB017850, &unk_19E702140);
      result = sub_19E6CD498();
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

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
      v5 = v31;
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

    if ((v32 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v2;
    if (v30 >= 64)
    {
      bzero(v9, ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_19D625574(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v9 = v6;
  v10 = a2;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v11 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47, v12, v13);
  v46 = &v42 - v14;
  v15 = *v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v45 = v10;
  result = sub_19E6CD838();
  v17 = result;
  if (*(v15 + 16))
  {
    v42 = v9;
    v18 = 0;
    v19 = (v15 + 64);
    v20 = 1 << *(v15 + 32);
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    else
    {
      v21 = -1;
    }

    v22 = v21 & *(v15 + 64);
    v23 = (v20 + 63) >> 6;
    v43 = (v11 + 16);
    v44 = v11;
    v24 = (v11 + 32);
    v25 = result + 64;
    while (v22)
    {
      v27 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
LABEL_15:
      v30 = v27 | (v18 << 6);
      v31 = *(*(v15 + 48) + 8 * v30);
      v32 = *(v11 + 72);
      v33 = *(v15 + 56) + v32 * v30;
      if (v45)
      {
        (*v24)(v46, v33, v47);
      }

      else
      {
        (*v43)(v46, v33, v47);
      }

      result = sub_19E6CD908();
      v34 = -1 << *(v17 + 32);
      v35 = result & ~v34;
      v36 = v35 >> 6;
      if (((-1 << v35) & ~*(v25 + 8 * (v35 >> 6))) == 0)
      {
        v37 = 0;
        v38 = (63 - v34) >> 6;
        while (++v36 != v38 || (v37 & 1) == 0)
        {
          v39 = v36 == v38;
          if (v36 == v38)
          {
            v36 = 0;
          }

          v37 |= v39;
          v40 = *(v25 + 8 * v36);
          if (v40 != -1)
          {
            v26 = __clz(__rbit64(~v40)) + (v36 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v26 = __clz(__rbit64((-1 << v35) & ~*(v25 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v25 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      *(*(v17 + 48) + 8 * v26) = v31;
      result = (*v24)(*(v17 + 56) + v32 * v26, v46, v47);
      ++*(v17 + 16);
      v11 = v44;
    }

    v28 = v18;
    while (1)
    {
      v18 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v18 >= v23)
      {
        break;
      }

      v29 = v19[v18];
      ++v28;
      if (v29)
      {
        v27 = __clz(__rbit64(v29));
        v22 = (v29 - 1) & v29;
        goto LABEL_15;
      }
    }

    if ((v45 & 1) == 0)
    {

      v9 = v42;
      goto LABEL_34;
    }

    v41 = 1 << *(v15 + 32);
    v9 = v42;
    if (v41 >= 64)
    {
      bzero((v15 + 64), ((v41 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v19 = -1 << v41;
    }

    *(v15 + 16) = 0;
  }

LABEL_34:
  *v9 = v17;
  return result;
}

unint64_t sub_19D6258C0(int64_t a1, uint64_t a2)
{
  v4 = sub_19E6CCF78();
  v5 = *(v4 - 8);
  result = MEMORY[0x1EEE9AC00](v4, v6, v7);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a2 + 64;
  v12 = -1 << *(a2 + 32);
  v13 = (a1 + 1) & ~v12;
  if ((*(a2 + 64 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v43 = a2;
    v14 = ~v12;
    v15 = sub_19E6CD6F8();
    v16 = v14;
    a2 = v43;
    v42 = (v15 + 1) & v16;
    v18 = *(v5 + 16);
    v17 = v5 + 16;
    v40 = v11;
    v41 = v18;
    v19 = *(v17 + 56);
    v39 = (v17 - 8);
    do
    {
      v20 = v19;
      v21 = v19 * v13;
      v22 = v16;
      v23 = v17;
      v41(v10, *(a2 + 48) + v19 * v13, v4);
      sub_19D6282A4(&qword_1EB017610, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      v24 = sub_19E6CD498();
      result = (*v39)(v10, v4);
      v16 = v22;
      v25 = v24 & v22;
      if (a1 >= v42)
      {
        if (v25 >= v42 && a1 >= v25)
        {
LABEL_15:
          v17 = v23;
          if (v20 * a1 < v21 || *(v43 + 48) + v20 * a1 >= (*(v43 + 48) + v21 + v20))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v20 * a1 != v21)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v43;
          v28 = *(v43 + 56);
          v29 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0177E0, &qword_19E701DC8) - 8) + 72);
          v30 = v29 * a1;
          result = v28 + v29 * a1;
          v31 = v29 * v13;
          v32 = v28 + v29 * v13 + v29;
          if (v30 < v31 || result >= v32)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v13;
            v11 = v40;
            v16 = v22;
          }

          else
          {
            a1 = v13;
            v34 = v30 == v31;
            v11 = v40;
            v16 = v22;
            if (!v34)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v16 = v22;
              a1 = v13;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v25 >= v42 || a1 >= v25)
      {
        goto LABEL_15;
      }

      v17 = v23;
      v11 = v40;
      a2 = v43;
LABEL_4:
      v13 = (v13 + 1) & v16;
      v19 = v20;
    }

    while (((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) != 0);
  }

  *(v11 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v35 = *(a2 + 16);
  v36 = __OFSUB__(v35, 1);
  v37 = v35 - 1;
  if (v36)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v37;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_19D625C10(unint64_t result, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = result;
  v6 = a2 + 64;
  v7 = -1 << *(a2 + 32);
  v8 = (result + 1) & ~v7;
  if ((*(a2 + 64 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v11 = ~v7;
    v12 = (sub_19E6CD6F8() + 1) & ~v7;
    do
    {
      v13 = *(a2 + 48);
      v14 = (v13 + 8 * v8);
      result = sub_19E6CD908();
      v15 = result & v11;
      if (v5 >= v12)
      {
        if (v15 < v12 || v5 < v15)
        {
          goto LABEL_5;
        }
      }

      else if (v15 < v12 && v5 < v15)
      {
        goto LABEL_5;
      }

      v18 = (v13 + 8 * v5);
      if (v5 != v8 || v18 >= v14 + 1)
      {
        *v18 = *v14;
      }

      v19 = *(a2 + 56);
      v20 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8) + 72);
      v21 = v20 * v5;
      result = v19 + v20 * v5;
      v22 = v20 * v8;
      v23 = v19 + v20 * v8 + v20;
      if (v21 < v22 || result >= v23)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v5 = v8;
        if (v21 == v22)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v5 = v8;
LABEL_5:
      v8 = (v8 + 1) & v11;
    }

    while (((*(v6 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
  }

  *(v6 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v5) - 1;
  v25 = *(a2 + 16);
  v26 = __OFSUB__(v25, 1);
  v27 = v25 - 1;
  if (v26)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v27;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_19D625DCC(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_19E6CCF78();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10, v11);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v3;
  v16 = sub_19D624630(a2);
  v17 = v14[2];
  v18 = (v15 & 1) == 0;
  v19 = v17 + v18;
  if (__OFADD__(v17, v18))
  {
    __break(1u);
    goto LABEL_15;
  }

  v20 = v15;
  v21 = v14[3];
  if (v21 < v19 || (a3 & 1) == 0)
  {
    if (v21 >= v19 && (a3 & 1) == 0)
    {
      sub_19D6264A4();
      goto LABEL_7;
    }

    sub_19D624E18(v19, a3 & 1);
    v30 = sub_19D624630(a2);
    if ((v20 & 1) == (v31 & 1))
    {
      v16 = v30;
      v22 = *v4;
      if (v20)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v13, a2, v8);
      return sub_19D6262F4(v16, v13, a1, v22);
    }

LABEL_15:
    result = sub_19E6CD898();
    __break(1u);
    return result;
  }

LABEL_7:
  v22 = *v4;
  if ((v20 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v23 = v22[7];
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0177E0, &qword_19E701DC8);
  v25 = *(v24 - 8);
  v26 = *(v25 + 40);
  v27 = v24;
  v28 = v23 + *(v25 + 72) * v16;

  return v26(v28, a1, v27);
}

void sub_19D625FDC(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_19D6245B4(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_17;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_19D6252C8(v14, a3 & 1);
      v9 = sub_19D6245B4(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_18:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB017850, &unk_19E702140);
        sub_19E6CD898();
        __break(1u);
        return;
      }
    }

    else
    {
      v17 = v9;
      sub_19D626800();
      v9 = v17;
    }
  }

  v19 = *v4;
  if (v15)
  {
    v20 = v19[7];
    v21 = *(v20 + 8 * v9);
    *(v20 + 8 * v9) = a1;

    return;
  }

  v19[(v9 >> 6) + 8] |= 1 << v9;
  *(v19[6] + 8 * v9) = a2;
  *(v19[7] + 8 * v9) = a1;
  v22 = v19[2];
  v13 = __OFADD__(v22, 1);
  v23 = v22 + 1;
  if (v13)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v19[2] = v23;
}

uint64_t sub_19D626144(uint64_t a1, uint64_t a2, char a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7)
{
  v11 = v7;
  v15 = *v7;
  v17 = sub_19D6246C8(a2);
  v18 = v15[2];
  v19 = (v16 & 1) == 0;
  v20 = v18 + v19;
  if (__OFADD__(v18, v19))
  {
    __break(1u);
    goto LABEL_15;
  }

  v21 = v16;
  v22 = v15[3];
  if (v22 < v20 || (a3 & 1) == 0)
  {
    if (v22 >= v20 && (a3 & 1) == 0)
    {
      sub_19D626960(a4, a5, a6, a7);
      goto LABEL_7;
    }

    sub_19D625574(v20, a3 & 1, a4, a5, a6, a7);
    v31 = sub_19D6246C8(a2);
    if ((v21 & 1) == (v32 & 1))
    {
      v17 = v31;
      v23 = *v11;
      if (v21)
      {
        goto LABEL_8;
      }

      return sub_19D6263F4(v17, a2, a1, v23, a4, a5);
    }

LABEL_15:
    result = sub_19E6CD898();
    __break(1u);
    return result;
  }

LABEL_7:
  v23 = *v11;
  if ((v21 & 1) == 0)
  {
    return sub_19D6263F4(v17, a2, a1, v23, a4, a5);
  }

LABEL_8:
  v24 = v23[7];
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v26 = *(v25 - 8);
  v27 = *(v26 + 40);
  v28 = v25;
  v29 = v24 + *(v26 + 72) * v17;

  return v27(v29, a1, v28);
}

uint64_t sub_19D6262F4(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_19E6CCF78();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0177E0, &qword_19E701DC8);
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a3, v11);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

uint64_t sub_19D6263F4(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t *a5, uint64_t *a6)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  v9 = a4[7];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a3, v10);
  v12 = a4[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v14;
  }

  return result;
}

char *sub_19D6264A4()
{
  v1 = v0;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0177E0, &qword_19E701DC8);
  v48 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45, v2, v3);
  v44 = &v34 - v4;
  v43 = sub_19E6CCF78();
  v47 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43, v5, v6);
  v42 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0178C0, &qword_19E7021E0);
  v8 = *v0;
  v9 = sub_19E6CD828();
  v10 = v9;
  if (*(v8 + 16))
  {
    result = (v9 + 64);
    v12 = (v8 + 64);
    v13 = ((1 << *(v10 + 32)) + 63) >> 6;
    v34 = v1;
    v35 = v8 + 64;
    if (v10 != v8 || result >= &v12[8 * v13])
    {
      result = memmove(result, v12, 8 * v13);
    }

    v14 = 0;
    v15 = *(v8 + 16);
    v46 = v10;
    *(v10 + 16) = v15;
    v16 = 1 << *(v8 + 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & *(v8 + 64);
    v19 = (v16 + 63) >> 6;
    v39 = v47 + 16;
    v40 = v19;
    v37 = v47 + 32;
    v38 = v48 + 16;
    v36 = v48 + 32;
    v41 = v8;
    v21 = v42;
    v20 = v43;
    if (v18)
    {
      do
      {
        v22 = __clz(__rbit64(v18));
        v49 = (v18 - 1) & v18;
LABEL_14:
        v25 = v22 | (v14 << 6);
        v26 = v47;
        v27 = *(v47 + 72) * v25;
        (*(v47 + 16))(v21, *(v8 + 48) + v27, v20);
        v28 = v48;
        v29 = *(v48 + 72) * v25;
        v30 = v44;
        v31 = v45;
        (*(v48 + 16))(v44, *(v8 + 56) + v29, v45);
        v32 = v46;
        (*(v26 + 32))(*(v46 + 48) + v27, v21, v20);
        v33 = *(v32 + 56);
        v8 = v41;
        result = (*(v28 + 32))(v33 + v29, v30, v31);
        v19 = v40;
        v18 = v49;
      }

      while (v49);
    }

    v23 = v14;
    while (1)
    {
      v14 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v14 >= v19)
      {

        v1 = v34;
        v10 = v46;
        goto LABEL_18;
      }

      v24 = *(v35 + 8 * v14);
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v49 = (v24 - 1) & v24;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v10;
  }

  return result;
}