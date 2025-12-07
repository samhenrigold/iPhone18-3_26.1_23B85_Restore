void sub_1C6EA1A5C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1C6EE49E0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1C6EA1BB0(uint64_t a1)
{
  result = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FloatList(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int32List(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int64List(319);
      if (v4 <= 0x3F)
      {
        result = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_BytesList(319);
        if (v5 <= 0x3F)
        {
          result = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(319);
          if (v6 <= 0x3F)
          {
            swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1C6EA1D28(uint64_t a1)
{
  result = sub_1C6EE4430();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1C6EA1DE0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t a5)
{
  sub_1C6EA1F20(319, a4, a5);
  if (v5 <= 0x3F)
  {
    sub_1C6EE4430();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C6EA1F20(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_1C6EE4D50();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1C6EA1F94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1C6EE4400();
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeatures(0);
  sub_1C6EA8620(&qword_1EDEF6320, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeatures, &unk_1C6EF3EE8);
  sub_1C6EA8620(&qword_1EDEF6318, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeatures, &unk_1C6EF3E20);
  return sub_1C6EE4490();
}

uint64_t sub_1C6EA208C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (sub_1C6EE4400(), type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeatures(0), sub_1C6EA8620(&qword_1EDEF6320, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeatures, &unk_1C6EF3EE8), sub_1C6EA8620(&qword_1EDEF6318, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeatures, &unk_1C6EF3E20), result = sub_1C6EE4610(), !v5))
  {
    type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeaturesStore(0);
    return sub_1C6EE4410();
  }

  return result;
}

uint64_t sub_1C6EA2268(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6EA8620(&qword_1EC1F91E0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeaturesStore, &unk_1C6EF4018);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6EA2308(uint64_t a1)
{
  v2 = sub_1C6EA8620(&qword_1EDEF62F0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeaturesStore, &unk_1C6EF4050);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6EA2374(uint64_t a1, uint64_t a2)
{
  sub_1C6EA8620(&qword_1EDEF62F0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeaturesStore, &unk_1C6EF4050);

  return sub_1C6EE45F0();
}

uint64_t sub_1C6EA2408()
{
  v0 = sub_1C6EE4720();
  __swift_allocate_value_buffer(v0, qword_1EC212EF0);
  __swift_project_value_buffer(v0, qword_1EC212EF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8210, &unk_1C6EEC6D0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8218, &unk_1C6EECEC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C6EE6B40;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "features";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C6EE46F0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "metadata";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  return sub_1C6EE4700();
}

uint64_t sub_1C6EA25D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_1C6EE44B0();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1C6EA2664(a1, v5, a2, a3);
    }

    else if (result == 2)
    {
      sub_1C6EA2718(a1, v5, a2, a3);
    }
  }

  return result;
}

uint64_t sub_1C6EA2664(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeatures(0);
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features(0);
  sub_1C6EA8620(qword_1EDEF7B08, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features, &unk_1C6EF40C8);
  return sub_1C6EE45A0();
}

uint64_t sub_1C6EA2718(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeatures(0);
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeaturesMetadata(0);
  sub_1C6EA8620(&qword_1EDEF62C0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeaturesMetadata, &unk_1C6EF3420);
  return sub_1C6EE45A0();
}

uint64_t sub_1C6EA27CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C6EA283C(v3, a1, a2, a3);
  if (!v4)
  {
    sub_1C6EA2A58(v3, a1, a2, a3);
    return sub_1C6EE4410();
  }

  return result;
}

uint64_t sub_1C6EA283C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7D68, &unk_1C6EE89B0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeatures(0);
  sub_1C6EAAB70(a1 + *(v12 + 20), v7, &qword_1EC1F7D68, &unk_1C6EE89B0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1C6EAABD8(v7, &qword_1EC1F7D68, &unk_1C6EE89B0);
  }

  sub_1C6EAAB08(v7, v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features);
  sub_1C6EA8620(qword_1EDEF7B08, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features, &unk_1C6EF40C8);
  sub_1C6EE46E0();
  return sub_1C6EAAAA8(v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features);
}

uint64_t sub_1C6EA2A58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7D58, &qword_1C6EE89A0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeaturesMetadata(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeatures(0);
  sub_1C6EAAB70(a1 + *(v12 + 24), v7, &qword_1EC1F7D58, &qword_1C6EE89A0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1C6EAABD8(v7, &qword_1EC1F7D58, &qword_1C6EE89A0);
  }

  sub_1C6EAAB08(v7, v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeaturesMetadata);
  sub_1C6EA8620(&qword_1EDEF62C0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeaturesMetadata, &unk_1C6EF3420);
  sub_1C6EE46E0();
  return sub_1C6EAAAA8(v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeaturesMetadata);
}

uint64_t sub_1C6EA2C74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C6EE4420();
  v4 = *(a1 + 20);
  v5 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features(0);
  (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v6 = *(a1 + 24);
  v7 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeaturesMetadata(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a2 + v6, 1, 1, v7);
}

uint64_t sub_1C6EA2D54@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C6EE4430();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_1C6EA2DBC(uint64_t a1)
{
  v3 = sub_1C6EE4430();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t sub_1C6EA2E78(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6EA8620(&qword_1EC1F91E8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeatures, &unk_1C6EF3EB0);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6EA2F18(uint64_t a1)
{
  v2 = sub_1C6EA8620(&qword_1EDEF6320, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeatures, &unk_1C6EF3EE8);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6EA2F84(uint64_t a1, uint64_t a2)
{
  sub_1C6EA8620(&qword_1EDEF6320, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeatures, &unk_1C6EF3EE8);

  return sub_1C6EE45F0();
}

uint64_t sub_1C6EA3024(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1C6EE4400();
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature(0);
  sub_1C6EA8620(qword_1EDEF7BB8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature, &unk_1C6EF3C90);
  sub_1C6EA8620(&qword_1EDEF7BB0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature, &unk_1C6EF3BC8);
  return sub_1C6EE4490();
}

uint64_t sub_1C6EA311C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (sub_1C6EE4400(), type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature(0), sub_1C6EA8620(qword_1EDEF7BB8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature, &unk_1C6EF3C90), sub_1C6EA8620(&qword_1EDEF7BB0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature, &unk_1C6EF3BC8), result = sub_1C6EE4610(), !v5))
  {
    type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features(0);
    return sub_1C6EE4410();
  }

  return result;
}

uint64_t sub_1C6EA32F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6EA8620(&qword_1EC1F91D0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features, &unk_1C6EF3DC0);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6EA3398(uint64_t a1)
{
  v2 = sub_1C6EA8620(qword_1EDEF7B08, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features, &unk_1C6EF40C8);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6EA3404(uint64_t a1, uint64_t a2)
{
  sub_1C6EA8620(qword_1EDEF7B08, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features, &unk_1C6EF40C8);

  return sub_1C6EE45F0();
}

uint64_t sub_1C6EA3498()
{
  v0 = sub_1C6EE4720();
  __swift_allocate_value_buffer(v0, qword_1EC212F20);
  __swift_project_value_buffer(v0, qword_1EC212F20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8210, &unk_1C6EEC6D0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8218, &unk_1C6EECEC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1C6EEA120;
  v4 = v16 + v3;
  v5 = v16 + v3 + v1[14];
  *(v16 + v3) = 1;
  *v5 = "float_list";
  *(v5 + 8) = 10;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADE8];
  v7 = sub_1C6EE46F0();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "int32_list";
  *(v9 + 8) = 10;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "int64_list";
  *(v11 + 1) = 10;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "bytes_list";
  *(v13 + 1) = 10;
  v13[16] = 2;
  v8();
  v14 = v4 + 4 * v2 + v1[14];
  *(v4 + 4 * v2) = 5;
  *v14 = "float16_list";
  *(v14 + 8) = 12;
  *(v14 + 16) = 2;
  v8();
  return sub_1C6EE4700();
}

uint64_t sub_1C6EA3728(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_1C6EE44B0();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result <= 2)
    {
      if (result == 1)
      {
        sub_1C6EA3830(v5, a1, a2, a3);
      }

      else if (result == 2)
      {
        sub_1C6EA3DE0(v5, a1, a2, a3);
      }
    }

    else
    {
      switch(result)
      {
        case 3:
          sub_1C6EA439C(v5, a1, a2, a3);
          break;
        case 4:
          sub_1C6EA4958(v5, a1, a2, a3);
          break;
        case 5:
          sub_1C6EA4F14(v5, a1, a2, a3);
          break;
      }
    }
  }

  return result;
}

uint64_t sub_1C6EA3830(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FloatList(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v40 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v39 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7A98, &qword_1C6EE7840);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F91F8, &qword_1C6EF4150);
  v21 = MEMORY[0x1EEE9AC00](v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = v5;
  v26 = v5;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  sub_1C6EAAB70(a1, v12, &qword_1EC1F7A98, &qword_1C6EE7840);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_1C6EAABD8(v12, &qword_1EC1F7A98, &qword_1C6EE7840);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_1C6EAAB08(v12, v19, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
    sub_1C6EAAB08(v19, v17, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload())
    {
      sub_1C6EAAAA8(v17, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
      v29 = v44;
    }

    else
    {
      sub_1C6EAABD8(v24, &qword_1EC1F91F8, &qword_1C6EF4150);
      v31 = v39;
      sub_1C6EAAB08(v17, v39, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FloatList);
      sub_1C6EAAB08(v31, v24, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FloatList);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }
  }

  v32 = v42;
  sub_1C6EA8620(qword_1EDEF7910, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FloatList, &unk_1C6EF3B28);
  v33 = v43;
  sub_1C6EE45A0();
  if (v33)
  {
    return sub_1C6EAABD8(v24, &qword_1EC1F91F8, &qword_1C6EF4150);
  }

  sub_1C6EAAB70(v24, v32, &qword_1EC1F91F8, &qword_1C6EF4150);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_1C6EAABD8(v24, &qword_1EC1F91F8, &qword_1C6EF4150);
    return sub_1C6EAABD8(v32, &qword_1EC1F91F8, &qword_1C6EF4150);
  }

  else
  {
    v35 = v40;
    sub_1C6EAAB08(v32, v40, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FloatList);
    if (v28 != 1)
    {
      sub_1C6EE44C0();
    }

    sub_1C6EAABD8(v24, &qword_1EC1F91F8, &qword_1C6EF4150);
    v36 = v38;
    sub_1C6EAABD8(v38, &qword_1EC1F7A98, &qword_1C6EE7840);
    sub_1C6EAAB08(v35, v36, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FloatList);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_1C6EA3DE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int32List(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7A98, &qword_1C6EE7840);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F9200, &qword_1C6EF4158);
  v21 = MEMORY[0x1EEE9AC00](v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = v5;
  v26 = v5;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  sub_1C6EAAB70(a1, v12, &qword_1EC1F7A98, &qword_1C6EE7840);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_1C6EAABD8(v12, &qword_1EC1F7A98, &qword_1C6EE7840);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_1C6EAAB08(v12, v19, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
    sub_1C6EAAB08(v19, v17, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1C6EAABD8(v24, &qword_1EC1F9200, &qword_1C6EF4158);
      v31 = v40;
      sub_1C6EAAB08(v17, v40, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int32List);
      sub_1C6EAAB08(v31, v24, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int32List);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_1C6EAAAA8(v17, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_1C6EA8620(qword_1EDEF7870, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int32List, &unk_1C6EF39C0);
  v33 = v43;
  sub_1C6EE45A0();
  if (v33)
  {
    return sub_1C6EAABD8(v24, &qword_1EC1F9200, &qword_1C6EF4158);
  }

  sub_1C6EAAB70(v24, v32, &qword_1EC1F9200, &qword_1C6EF4158);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_1C6EAABD8(v24, &qword_1EC1F9200, &qword_1C6EF4158);
    return sub_1C6EAABD8(v32, &qword_1EC1F9200, &qword_1C6EF4158);
  }

  else
  {
    v35 = v39;
    sub_1C6EAAB08(v32, v39, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int32List);
    if (v28 != 1)
    {
      sub_1C6EE44C0();
    }

    sub_1C6EAABD8(v24, &qword_1EC1F9200, &qword_1C6EF4158);
    v36 = v38;
    sub_1C6EAABD8(v38, &qword_1EC1F7A98, &qword_1C6EE7840);
    sub_1C6EAAB08(v35, v36, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int32List);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_1C6EA439C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int64List(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7A98, &qword_1C6EE7840);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F9208, &qword_1C6EF4160);
  v21 = MEMORY[0x1EEE9AC00](v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = v5;
  v26 = v5;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  sub_1C6EAAB70(a1, v12, &qword_1EC1F7A98, &qword_1C6EE7840);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_1C6EAABD8(v12, &qword_1EC1F7A98, &qword_1C6EE7840);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_1C6EAAB08(v12, v19, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
    sub_1C6EAAB08(v19, v17, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_1C6EAABD8(v24, &qword_1EC1F9208, &qword_1C6EF4160);
      v31 = v40;
      sub_1C6EAAB08(v17, v40, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int64List);
      sub_1C6EAAB08(v31, v24, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int64List);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_1C6EAAAA8(v17, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_1C6EA8620(&qword_1EC1F9178, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int64List, &unk_1C6EF3858);
  v33 = v43;
  sub_1C6EE45A0();
  if (v33)
  {
    return sub_1C6EAABD8(v24, &qword_1EC1F9208, &qword_1C6EF4160);
  }

  sub_1C6EAAB70(v24, v32, &qword_1EC1F9208, &qword_1C6EF4160);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_1C6EAABD8(v24, &qword_1EC1F9208, &qword_1C6EF4160);
    return sub_1C6EAABD8(v32, &qword_1EC1F9208, &qword_1C6EF4160);
  }

  else
  {
    v35 = v39;
    sub_1C6EAAB08(v32, v39, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int64List);
    if (v28 != 1)
    {
      sub_1C6EE44C0();
    }

    sub_1C6EAABD8(v24, &qword_1EC1F9208, &qword_1C6EF4160);
    v36 = v38;
    sub_1C6EAABD8(v38, &qword_1EC1F7A98, &qword_1C6EE7840);
    sub_1C6EAAB08(v35, v36, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int64List);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_1C6EA4958(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_BytesList(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7A98, &qword_1C6EE7840);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F9210, &qword_1C6EF4168);
  v21 = MEMORY[0x1EEE9AC00](v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = v5;
  v26 = v5;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  sub_1C6EAAB70(a1, v12, &qword_1EC1F7A98, &qword_1C6EE7840);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_1C6EAABD8(v12, &qword_1EC1F7A98, &qword_1C6EE7840);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_1C6EAAB08(v12, v19, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
    sub_1C6EAAB08(v19, v17, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_1C6EAABD8(v24, &qword_1EC1F9210, &qword_1C6EF4168);
      v31 = v40;
      sub_1C6EAAB08(v17, v40, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_BytesList);
      sub_1C6EAAB08(v31, v24, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_BytesList);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_1C6EAAAA8(v17, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_1C6EA8620(qword_1EDEF79B0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_BytesList, &unk_1C6EF36F0);
  v33 = v43;
  sub_1C6EE45A0();
  if (v33)
  {
    return sub_1C6EAABD8(v24, &qword_1EC1F9210, &qword_1C6EF4168);
  }

  sub_1C6EAAB70(v24, v32, &qword_1EC1F9210, &qword_1C6EF4168);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_1C6EAABD8(v24, &qword_1EC1F9210, &qword_1C6EF4168);
    return sub_1C6EAABD8(v32, &qword_1EC1F9210, &qword_1C6EF4168);
  }

  else
  {
    v35 = v39;
    sub_1C6EAAB08(v32, v39, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_BytesList);
    if (v28 != 1)
    {
      sub_1C6EE44C0();
    }

    sub_1C6EAABD8(v24, &qword_1EC1F9210, &qword_1C6EF4168);
    v36 = v38;
    sub_1C6EAABD8(v38, &qword_1EC1F7A98, &qword_1C6EE7840);
    sub_1C6EAAB08(v35, v36, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_BytesList);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_1C6EA4F14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7A98, &qword_1C6EE7840);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8328, &unk_1C6EEC750);
  v21 = MEMORY[0x1EEE9AC00](v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = v5;
  v26 = v5;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  sub_1C6EAAB70(a1, v12, &qword_1EC1F7A98, &qword_1C6EE7840);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_1C6EAABD8(v12, &qword_1EC1F7A98, &qword_1C6EE7840);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_1C6EAAB08(v12, v19, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
    sub_1C6EAAB08(v19, v17, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_1C6EAABD8(v24, &qword_1EC1F8328, &unk_1C6EEC750);
      v31 = v40;
      sub_1C6EAAB08(v17, v40, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
      sub_1C6EAAB08(v31, v24, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_1C6EAAAA8(v17, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_1C6EA8620(qword_1EDEF7740, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List, &unk_1C6EF3588);
  v33 = v43;
  sub_1C6EE45A0();
  if (v33)
  {
    return sub_1C6EAABD8(v24, &qword_1EC1F8328, &unk_1C6EEC750);
  }

  sub_1C6EAAB70(v24, v32, &qword_1EC1F8328, &unk_1C6EEC750);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_1C6EAABD8(v24, &qword_1EC1F8328, &unk_1C6EEC750);
    return sub_1C6EAABD8(v32, &qword_1EC1F8328, &unk_1C6EEC750);
  }

  else
  {
    v35 = v39;
    sub_1C6EAAB08(v32, v39, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
    if (v28 != 1)
    {
      sub_1C6EE44C0();
    }

    sub_1C6EAABD8(v24, &qword_1EC1F8328, &unk_1C6EEC750);
    v36 = v38;
    sub_1C6EAABD8(v38, &qword_1EC1F7A98, &qword_1C6EE7840);
    sub_1C6EAAB08(v35, v36, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_1C6EA54D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7A98, &qword_1C6EE7840);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v14 - v9;
  sub_1C6EAAB70(v3, &v14 - v9, &qword_1EC1F7A98, &qword_1C6EE7840);
  v11 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind(0);
  if ((*(*(v11 - 8) + 48))(v10, 1, v11) == 1)
  {
    goto LABEL_12;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_1C6EA58FC(v3, a1, a2, a3);
    }

    else
    {
      sub_1C6EA56C8(v3, a1, a2, a3);
    }
  }

  else if (EnumCaseMultiPayload == 2)
  {
    sub_1C6EA5B34(v3, a1, a2, a3);
  }

  else if (EnumCaseMultiPayload == 3)
  {
    sub_1C6EA5D6C(v3, a1, a2, a3);
  }

  else
  {
    sub_1C6EA5FA4(v3, a1, a2, a3);
  }

  result = sub_1C6EAAAA8(v10, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
  if (!v4)
  {
LABEL_12:
    type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature(0);
    return sub_1C6EE4410();
  }

  return result;
}

uint64_t sub_1C6EA56C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7A98, &qword_1C6EE7840);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FloatList(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6EAAB70(a1, v7, &qword_1EC1F7A98, &qword_1C6EE7840);
  v11 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_1C6EAABD8(v7, &qword_1EC1F7A98, &qword_1C6EE7840);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    sub_1C6EAAB08(v7, v10, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FloatList);
    sub_1C6EA8620(qword_1EDEF7910, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FloatList, &unk_1C6EF3B28);
    sub_1C6EE46E0();
    return sub_1C6EAAAA8(v10, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FloatList);
  }

  result = sub_1C6EAAAA8(v7, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
  __break(1u);
  return result;
}

uint64_t sub_1C6EA58FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7A98, &qword_1C6EE7840);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int32List(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6EAAB70(a1, v7, &qword_1EC1F7A98, &qword_1C6EE7840);
  v11 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_1C6EAABD8(v7, &qword_1EC1F7A98, &qword_1C6EE7840);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1C6EAAB08(v7, v10, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int32List);
    sub_1C6EA8620(qword_1EDEF7870, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int32List, &unk_1C6EF39C0);
    sub_1C6EE46E0();
    return sub_1C6EAAAA8(v10, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int32List);
  }

  result = sub_1C6EAAAA8(v7, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
  __break(1u);
  return result;
}

uint64_t sub_1C6EA5B34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7A98, &qword_1C6EE7840);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int64List(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6EAAB70(a1, v7, &qword_1EC1F7A98, &qword_1C6EE7840);
  v11 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_1C6EAABD8(v7, &qword_1EC1F7A98, &qword_1C6EE7840);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_1C6EAAB08(v7, v10, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int64List);
    sub_1C6EA8620(&qword_1EC1F9178, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int64List, &unk_1C6EF3858);
    sub_1C6EE46E0();
    return sub_1C6EAAAA8(v10, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int64List);
  }

  result = sub_1C6EAAAA8(v7, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
  __break(1u);
  return result;
}

uint64_t sub_1C6EA5D6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7A98, &qword_1C6EE7840);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_BytesList(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6EAAB70(a1, v7, &qword_1EC1F7A98, &qword_1C6EE7840);
  v11 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_1C6EAABD8(v7, &qword_1EC1F7A98, &qword_1C6EE7840);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 3)
  {
    sub_1C6EAAB08(v7, v10, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_BytesList);
    sub_1C6EA8620(qword_1EDEF79B0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_BytesList, &unk_1C6EF36F0);
    sub_1C6EE46E0();
    return sub_1C6EAAAA8(v10, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_BytesList);
  }

  result = sub_1C6EAAAA8(v7, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
  __break(1u);
  return result;
}

uint64_t sub_1C6EA5FA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7A98, &qword_1C6EE7840);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6EAAB70(a1, v7, &qword_1EC1F7A98, &qword_1C6EE7840);
  v11 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_1C6EAABD8(v7, &qword_1EC1F7A98, &qword_1C6EE7840);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 4)
  {
    sub_1C6EAAB08(v7, v10, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
    sub_1C6EA8620(qword_1EDEF7740, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List, &unk_1C6EF3588);
    sub_1C6EE46E0();
    return sub_1C6EAAAA8(v10, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  }

  result = sub_1C6EAAAA8(v7, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
  __break(1u);
  return result;
}

uint64_t sub_1C6EA61DC@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind(0);
  (*(*(v2 - 8) + 56))(a1, 1, 1, v2);
  return sub_1C6EE4420();
}

uint64_t sub_1C6EA62C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6EA8620(&qword_1EC1F91F0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature, &unk_1C6EF3C58);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6EA6360(uint64_t a1)
{
  v2 = sub_1C6EA8620(qword_1EDEF7BB8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature, &unk_1C6EF3C90);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6EA63CC(uint64_t a1, uint64_t a2)
{
  sub_1C6EA8620(qword_1EDEF7BB8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature, &unk_1C6EF3C90);

  return sub_1C6EE45F0();
}

uint64_t sub_1C6EA651C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6EA8620(&qword_1EC1F9218, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FloatList, &unk_1C6EF3AF0);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6EA65BC(uint64_t a1)
{
  v2 = sub_1C6EA8620(qword_1EDEF7910, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FloatList, &unk_1C6EF3B28);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6EA6628(uint64_t a1, uint64_t a2)
{
  sub_1C6EA8620(qword_1EDEF7910, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FloatList, &unk_1C6EF3B28);

  return sub_1C6EE45F0();
}

uint64_t sub_1C6EA66C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void (*a5)(void))
{
  if (!*(*v5 + 16) || (result = a4(), !v6))
  {
    (a5)(0, a2, a3, a4);
    return sub_1C6EE4410();
  }

  return result;
}

uint64_t sub_1C6EA6818(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6EA8620(&qword_1EC1F9220, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int32List, &unk_1C6EF3988);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6EA68B8(uint64_t a1)
{
  v2 = sub_1C6EA8620(qword_1EDEF7870, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int32List, &unk_1C6EF39C0);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6EA6924(uint64_t a1, uint64_t a2)
{
  sub_1C6EA8620(qword_1EDEF7870, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int32List, &unk_1C6EF39C0);

  return sub_1C6EE45F0();
}

uint64_t sub_1C6EA6A88(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6EA8620(&qword_1EC1F9228, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int64List, &unk_1C6EF3820);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6EA6B28(uint64_t a1)
{
  v2 = sub_1C6EA8620(&qword_1EC1F9178, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int64List, &unk_1C6EF3858);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6EA6B94(uint64_t a1, uint64_t a2)
{
  sub_1C6EA8620(&qword_1EC1F9178, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int64List, &unk_1C6EF3858);

  return sub_1C6EE45F0();
}

uint64_t sub_1C6EA6C48(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t))
{
  while (1)
  {
    result = sub_1C6EE44B0();
    if (v5 || (v10 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      a4(v4, a2, a3);
    }
  }

  return result;
}

uint64_t sub_1C6EA6D78(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6EA8620(&qword_1EC1F9230, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_BytesList, &unk_1C6EF36B8);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6EA6E18(uint64_t a1)
{
  v2 = sub_1C6EA8620(qword_1EDEF79B0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_BytesList, &unk_1C6EF36F0);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6EA6E84(uint64_t a1, uint64_t a2)
{
  sub_1C6EA8620(qword_1EDEF79B0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_BytesList, &unk_1C6EF36F0);

  return sub_1C6EE45F0();
}

uint64_t sub_1C6EA6F38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_1C6EE44B0();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1C6EE4520();
    }
  }

  return result;
}

uint64_t sub_1C6EA6FA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v3;
  v6 = v3[1];
  v7 = v6 >> 62;
  if ((v6 >> 62) > 1)
  {
    if (v7 != 2 || *(v5 + 16) == *(v5 + 24))
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if (v7)
  {
    if (v5 == v5 >> 32)
    {
      goto LABEL_10;
    }

LABEL_9:
    result = sub_1C6EE4670();
    if (v4)
    {
      return result;
    }

    goto LABEL_10;
  }

  if ((v6 & 0xFF000000000000) != 0)
  {
    goto LABEL_9;
  }

LABEL_10:
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0);
  return sub_1C6EE4410();
}

uint64_t sub_1C6EA7114(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6EA8620(&qword_1EC1F9238, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List, &unk_1C6EF3550);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6EA71B4(uint64_t a1)
{
  v2 = sub_1C6EA8620(qword_1EDEF7740, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List, &unk_1C6EF3588);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6EA7220(uint64_t a1, uint64_t a2)
{
  sub_1C6EA8620(qword_1EDEF7740, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List, &unk_1C6EF3588);

  return sub_1C6EE45F0();
}

uint64_t sub_1C6EA729C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!sub_1C6E6B56C(*a1, *(a1 + 8), *a2, *(a2 + 8)))
  {
    return 0;
  }

  sub_1C6EE4430();
  sub_1C6EA8620(&qword_1EDEF6870, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1C6EE4A50() & 1;
}

uint64_t sub_1C6EA7348()
{
  v0 = sub_1C6EE4720();
  __swift_allocate_value_buffer(v0, qword_1EC212FB0);
  __swift_project_value_buffer(v0, qword_1EC212FB0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8210, &unk_1C6EEC6D0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8218, &unk_1C6EECEC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C6EE6B40;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "last_modified";
  *(v6 + 8) = 13;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C6EE46F0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "features_serialized_bytes_count";
  *(v10 + 1) = 31;
  v10[16] = 2;
  v9();
  return sub_1C6EE4700();
}

uint64_t sub_1C6EA7510(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_1C6EE44B0();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1C6EA75A0(a1, v5, a2, a3);
    }

    else if (result == 2)
    {
      sub_1C6EE4560();
    }
  }

  return result;
}

uint64_t sub_1C6EA75A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeaturesMetadata(0);
  sub_1C6EE43E0();
  sub_1C6EA8620(qword_1EDEF6220, MEMORY[0x1E69AA900], MEMORY[0x1E69AA8F8]);
  return sub_1C6EE45A0();
}

uint64_t sub_1C6EA7654(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C6EA76F0(v3, a1, a2, a3);
  if (!v4)
  {
    if (*v3)
    {
      sub_1C6EE46A0();
    }

    type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeaturesMetadata(0);
    return sub_1C6EE4410();
  }

  return result;
}

uint64_t sub_1C6EA76F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7D48, &qword_1C6EE8990);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = sub_1C6EE43E0();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeaturesMetadata(0);
  sub_1C6EAAB70(a1 + *(v12 + 24), v7, &qword_1EC1F7D48, &qword_1C6EE8990);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1C6EAABD8(v7, &qword_1EC1F7D48, &qword_1C6EE8990);
  }

  (*(v9 + 32))(v11, v7, v8);
  sub_1C6EA8620(qword_1EDEF6220, MEMORY[0x1E69AA900], MEMORY[0x1E69AA8F8]);
  sub_1C6EE46E0();
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_1C6EA790C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  sub_1C6EE4420();
  v4 = *(a1 + 24);
  v5 = sub_1C6EE43E0();
  v6 = *(*(v5 - 8) + 56);

  return v6(&a2[v4], 1, 1, v5);
}

uint64_t sub_1C6EA7A04(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6EA8620(&qword_1EC1F9240, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeaturesMetadata, &unk_1C6EF33E8);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6EA7AA4(uint64_t a1)
{
  v2 = sub_1C6EA8620(&qword_1EDEF62C0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeaturesMetadata, &unk_1C6EF3420);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6EA7B10(uint64_t a1, uint64_t a2)
{
  sub_1C6EA8620(&qword_1EDEF62C0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeaturesMetadata, &unk_1C6EF3420);

  return sub_1C6EE45F0();
}

uint64_t sub_1C6EA7BB0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, unsigned int *a5)
{
  v9 = sub_1C6EE4720();
  __swift_allocate_value_buffer(v9, a2);
  __swift_project_value_buffer(v9, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8210, &unk_1C6EEC6D0);
  v10 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8218, &unk_1C6EECEC0) - 8);
  v11 = (*(*v10 + 80) + 32) & ~*(*v10 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1C6EE6590;
  v13 = v12 + v11 + v10[14];
  *(v12 + v11) = 1;
  *v13 = a3;
  *(v13 + 8) = a4;
  *(v13 + 16) = 2;
  v14 = *a5;
  v15 = sub_1C6EE46F0();
  (*(*(v15 - 8) + 104))(v13, v14, v15);
  return sub_1C6EE4700();
}

uint64_t sub_1C6EA7D20(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v7 = v4;
  while (1)
  {
    result = sub_1C6EE44B0();
    if (v5 || (v12 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      a4(a1, v7, a2, a3);
    }
  }

  return result;
}

uint64_t sub_1C6EA7DA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1C6EE4400();
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features(0);
  sub_1C6EA8620(qword_1EDEF7B08, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features, &unk_1C6EF40C8);
  sub_1C6EA8620(&qword_1EC1F91B8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features, &unk_1C6EF3D30);
  return sub_1C6EE4490();
}

uint64_t sub_1C6EA7E9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (sub_1C6EE4400(), type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features(0), sub_1C6EA8620(qword_1EDEF7B08, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features, &unk_1C6EF40C8), sub_1C6EA8620(&qword_1EC1F91B8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features, &unk_1C6EF3D30), result = sub_1C6EE4610(), !v5))
  {
    type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FeaturesStore(0);
    return sub_1C6EE4410();
  }

  return result;
}

uint64_t sub_1C6EA8050@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_1C6EE4430();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1C6EA80C4(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 20);
  v5 = sub_1C6EE4430();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_1C6EA81A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6EA8620(&qword_1EC1F9248, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FeaturesStore, &unk_1C6EF3280);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6EA8244@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_1C6EE4720();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t sub_1C6EA82E0(uint64_t a1)
{
  v2 = sub_1C6EA8620(&qword_1EC1F9128, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FeaturesStore, &unk_1C6EF32B8);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6EA834C(uint64_t a1, uint64_t a2)
{
  sub_1C6EE5580();
  sub_1C6EE4A00();
  return sub_1C6EE55A0();
}

uint64_t sub_1C6EA83A4(uint64_t a1, uint64_t a2)
{
  sub_1C6EA8620(&qword_1EC1F9128, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FeaturesStore, &unk_1C6EF32B8);

  return sub_1C6EE45F0();
}

uint64_t sub_1C6EA8420(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C6EE5580();
  sub_1C6EE4A00();
  return sub_1C6EE55A0();
}

uint64_t sub_1C6EA848C(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, void))
{
  if (((a5)(*a1, *a2, a3, a4) & 1) == 0)
  {
    return 0;
  }

  sub_1C6EE4430();
  sub_1C6EA8620(&qword_1EDEF6870, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1C6EE4A50() & 1;
}

uint64_t sub_1C6EA85A0(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C6EA8620(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C6EA9238(void *a1, void *a2)
{
  v4 = sub_1C6EE43E0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v23 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7D48, &qword_1C6EE8990);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v22 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7D50, &qword_1C6EE8998);
  v11 = v10 - 8;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v22 - v12;
  v22 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeaturesMetadata(0);
  v14 = *(v22 + 24);
  v15 = *(v11 + 56);
  v24 = a1;
  sub_1C6EAAB70(a1 + v14, v13, &qword_1EC1F7D48, &qword_1C6EE8990);
  v25 = a2;
  sub_1C6EAAB70(a2 + v14, &v13[v15], &qword_1EC1F7D48, &qword_1C6EE8990);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      sub_1C6EAABD8(v13, &qword_1EC1F7D48, &qword_1C6EE8990);
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  sub_1C6EAAB70(v13, v9, &qword_1EC1F7D48, &qword_1C6EE8990);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    (*(v5 + 8))(v9, v4);
LABEL_6:
    sub_1C6EAABD8(v13, &qword_1EC1F7D50, &qword_1C6EE8998);
LABEL_10:
    v20 = 0;
    return v20 & 1;
  }

  v17 = v23;
  (*(v5 + 32))(v23, &v13[v15], v4);
  sub_1C6EA8620(&qword_1EC1F7D80, MEMORY[0x1E69AA900], MEMORY[0x1E69AA908]);
  v18 = sub_1C6EE4A50();
  v19 = *(v5 + 8);
  v19(v17, v4);
  v19(v9, v4);
  sub_1C6EAABD8(v13, &qword_1EC1F7D48, &qword_1C6EE8990);
  if ((v18 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_8:
  if (*v24 != *v25)
  {
    goto LABEL_10;
  }

  sub_1C6EE4430();
  sub_1C6EA8620(&qword_1EDEF6870, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v20 = sub_1C6EE4A50();
  return v20 & 1;
}

uint64_t sub_1C6EA95F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeaturesMetadata(0);
  v46 = *(v4 - 8);
  v47 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v41 = (&v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7D58, &qword_1C6EE89A0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v42 = (&v40 - v7);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7D60, &qword_1C6EE89A8);
  MEMORY[0x1EEE9AC00](v45);
  v48 = &v40 - v8;
  v9 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v43 = (&v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7D68, &unk_1C6EE89B0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = (&v40 - v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7D70, &unk_1C6EF2EA0);
  v16 = v15 - 8;
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v40 - v17;
  v44 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeatures(0);
  v19 = *(v44 + 20);
  v20 = *(v16 + 56);
  v49 = a1;
  sub_1C6EAAB70(a1 + v19, v18, &qword_1EC1F7D68, &unk_1C6EE89B0);
  v21 = a2 + v19;
  v22 = a2;
  sub_1C6EAAB70(v21, &v18[v20], &qword_1EC1F7D68, &unk_1C6EE89B0);
  v23 = *(v10 + 48);
  if (v23(v18, 1, v9) == 1)
  {
    if (v23(&v18[v20], 1, v9) == 1)
    {
      sub_1C6EAABD8(v18, &qword_1EC1F7D68, &unk_1C6EE89B0);
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  sub_1C6EAAB70(v18, v14, &qword_1EC1F7D68, &unk_1C6EE89B0);
  if (v23(&v18[v20], 1, v9) == 1)
  {
    sub_1C6EAAAA8(v14, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features);
LABEL_9:
    v29 = &qword_1EC1F7D70;
    v30 = &unk_1C6EF2EA0;
LABEL_10:
    v31 = v18;
LABEL_11:
    sub_1C6EAABD8(v31, v29, v30);
    goto LABEL_12;
  }

  v34 = v43;
  sub_1C6EAAB08(&v18[v20], v43, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features);
  if ((sub_1C6E227C4(*v14, *v34) & 1) == 0)
  {
    sub_1C6EAAAA8(v34, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features);
    sub_1C6EAAAA8(v14, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features);
    v29 = &qword_1EC1F7D68;
    v30 = &unk_1C6EE89B0;
    goto LABEL_10;
  }

  sub_1C6EE4430();
  sub_1C6EA8620(&qword_1EDEF6870, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v35 = sub_1C6EE4A50();
  sub_1C6EAAAA8(v34, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features);
  sub_1C6EAAAA8(v14, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features);
  sub_1C6EAABD8(v18, &qword_1EC1F7D68, &unk_1C6EE89B0);
  if ((v35 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_4:
  v24 = *(v44 + 24);
  v25 = *(v45 + 48);
  v26 = v48;
  sub_1C6EAAB70(v49 + v24, v48, &qword_1EC1F7D58, &qword_1C6EE89A0);
  sub_1C6EAAB70(v22 + v24, v26 + v25, &qword_1EC1F7D58, &qword_1C6EE89A0);
  v27 = v47;
  v28 = *(v46 + 48);
  if (v28(v26, 1, v47) == 1)
  {
    if (v28(v26 + v25, 1, v27) == 1)
    {
      sub_1C6EAABD8(v26, &qword_1EC1F7D58, &qword_1C6EE89A0);
LABEL_22:
      sub_1C6EE4430();
      sub_1C6EA8620(&qword_1EDEF6870, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      v32 = sub_1C6EE4A50();
      return v32 & 1;
    }

    goto LABEL_19;
  }

  v36 = v42;
  sub_1C6EAAB70(v26, v42, &qword_1EC1F7D58, &qword_1C6EE89A0);
  if (v28(v26 + v25, 1, v27) == 1)
  {
    sub_1C6EAAAA8(v36, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeaturesMetadata);
LABEL_19:
    v29 = &qword_1EC1F7D60;
    v30 = &qword_1C6EE89A8;
    v31 = v26;
    goto LABEL_11;
  }

  v37 = v26 + v25;
  v38 = v41;
  sub_1C6EAAB08(v37, v41, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeaturesMetadata);
  v39 = sub_1C6EA9238(v36, v38);
  sub_1C6EAAAA8(v38, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeaturesMetadata);
  sub_1C6EAAAA8(v36, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeaturesMetadata);
  sub_1C6EAABD8(v26, &qword_1EC1F7D58, &qword_1C6EE89A0);
  if (v39)
  {
    goto LABEL_22;
  }

LABEL_12:
  v32 = 0;
  return v32 & 1;
}

uint64_t *sub_1C6EA9CA4(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  v3 = *a2;
  v4 = *(*result + 16);
  if (v4 != *(*a2 + 16))
  {
    return 0;
  }

  if (v4)
  {
    v5 = v2 == v3;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
LABEL_10:
    type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FloatList(0);
    sub_1C6EE4430();
    sub_1C6EA8620(&qword_1EDEF6870, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
    return (sub_1C6EE4A50() & 1);
  }

  else
  {
    v6 = (v2 + 32);
    v7 = (v3 + 32);
    while (v4)
    {
      if (*v6 != *v7)
      {
        return 0;
      }

      ++v6;
      ++v7;
      if (!--v4)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1C6EA9D94(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7A98, &qword_1C6EE7840);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7D20, &qword_1C6EE94E0);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v20 - v13;
  v15 = *(v12 + 56);
  sub_1C6EAAB70(a1, &v20 - v13, &qword_1EC1F7A98, &qword_1C6EE7840);
  sub_1C6EAAB70(a2, &v14[v15], &qword_1EC1F7A98, &qword_1C6EE7840);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) == 1)
  {
    if (v16(&v14[v15], 1, v4) == 1)
    {
      sub_1C6EAABD8(v14, &qword_1EC1F7A98, &qword_1C6EE7840);
LABEL_9:
      type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature(0);
      sub_1C6EE4430();
      sub_1C6EA8620(&qword_1EDEF6870, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      v17 = sub_1C6EE4A50();
      return v17 & 1;
    }

    goto LABEL_6;
  }

  sub_1C6EAAB70(v14, v10, &qword_1EC1F7A98, &qword_1C6EE7840);
  if (v16(&v14[v15], 1, v4) == 1)
  {
    sub_1C6EAAAA8(v10, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
LABEL_6:
    sub_1C6EAABD8(v14, &qword_1EC1F7D20, &qword_1C6EE94E0);
    goto LABEL_7;
  }

  sub_1C6EAAB08(&v14[v15], v7, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
  v18 = sub_1C6EAA0D8(v10, v7);
  sub_1C6EAAAA8(v7, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
  sub_1C6EAAAA8(v10, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
  sub_1C6EAABD8(v14, &qword_1EC1F7A98, &qword_1C6EE7840);
  if (v18)
  {
    goto LABEL_9;
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_1C6EAA0D8(uint64_t a1, char *a2)
{
  v61 = a1;
  v62 = a2;
  v55 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0);
  MEMORY[0x1EEE9AC00](v55);
  v58 = &v53 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_BytesList(0);
  MEMORY[0x1EEE9AC00](v54);
  v57 = (&v53 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v53 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int64List(0);
  MEMORY[0x1EEE9AC00](v53);
  v56 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int32List(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = (&v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FloatList(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind(0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v60 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v59 = (&v53 - v15);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v53 - v17;
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v53 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v23 = (&v53 - v22);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F91D8, &unk_1C6EF4140);
  v25 = MEMORY[0x1EEE9AC00](v24 - 8);
  v27 = &v53 - v26;
  v28 = *(v25 + 56);
  sub_1C6EAAA44(v61, &v53 - v26);
  sub_1C6EAAA44(v62, &v27[v28]);
  v62 = v27;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v30 = v62;
      sub_1C6EAAA44(v62, v18);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v36 = &v30[v28];
        v37 = v56;
        sub_1C6EAAB08(v36, v56, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int64List);
        if (sub_1C6E6F908())
        {
          sub_1C6EE4430();
          sub_1C6EA8620(&qword_1EDEF6870, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
          if (sub_1C6EE4A50())
          {
            v33 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int64List;
            sub_1C6EAAAA8(v37, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int64List);
            v34 = v18;
            goto LABEL_25;
          }
        }

        v48 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int64List;
        sub_1C6EAAAA8(v37, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int64List);
        v49 = v18;
LABEL_42:
        sub_1C6EAAAA8(v49, v48);
        v52 = v30;
LABEL_43:
        sub_1C6EAAAA8(v52, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
        return 0;
      }

      v45 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int64List;
      v46 = v18;
    }

    else
    {
      v30 = v62;
      if (EnumCaseMultiPayload != 3)
      {
        v21 = v60;
        sub_1C6EAAA44(v62, v60);
        v38 = swift_getEnumCaseMultiPayload();
        if (v38 == 4)
        {
          v39 = &v30[v28];
          v40 = v58;
          sub_1C6EAAB08(v39, v58, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
          if (sub_1C6E6B56C(*v21, *(v21 + 1), *v40, *(v40 + 8)))
          {
            sub_1C6EE4430();
            sub_1C6EA8620(&qword_1EDEF6870, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
            if (sub_1C6EE4A50())
            {
              v41 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List;
              v33 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List;
              v42 = v40;
LABEL_24:
              sub_1C6EAAAA8(v42, v41);
              v34 = v21;
              goto LABEL_25;
            }
          }

          v50 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List;
          v48 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List;
          v51 = v40;
LABEL_41:
          sub_1C6EAAAA8(v51, v50);
          v49 = v21;
          goto LABEL_42;
        }

        v47 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List;
LABEL_31:
        v45 = v47;
        v46 = v21;
        goto LABEL_32;
      }

      v31 = v59;
      sub_1C6EAAA44(v62, v59);
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        v32 = v57;
        sub_1C6EAAB08(&v30[v28], v57, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_BytesList);
        if (sub_1C6E597C0(*v31, *v32))
        {
          sub_1C6EE4430();
          sub_1C6EA8620(&qword_1EDEF6870, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
          if (sub_1C6EE4A50())
          {
            v33 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_BytesList;
            sub_1C6EAAAA8(v32, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_BytesList);
            v34 = v31;
LABEL_25:
            sub_1C6EAAAA8(v34, v33);
            v43 = v30;
LABEL_26:
            sub_1C6EAAAA8(v43, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
            return 1;
          }
        }

        v48 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_BytesList;
        sub_1C6EAAAA8(v32, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_BytesList);
        v49 = v31;
        goto LABEL_42;
      }

      v45 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_BytesList;
      v46 = v31;
    }

LABEL_32:
    sub_1C6EAAAA8(v46, v45);
    goto LABEL_33;
  }

  if (EnumCaseMultiPayload)
  {
    v30 = v62;
    sub_1C6EAAA44(v62, v21);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1C6EAAB08(&v30[v28], v7, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int32List);
      if (sub_1C6E59764(*v21, *v7))
      {
        sub_1C6EE4430();
        sub_1C6EA8620(&qword_1EDEF6870, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
        if (sub_1C6EE4A50())
        {
          v41 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int32List;
          v33 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int32List;
          v42 = v7;
          goto LABEL_24;
        }
      }

      v50 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int32List;
      v48 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int32List;
      v51 = v7;
      goto LABEL_41;
    }

    v47 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int32List;
    goto LABEL_31;
  }

  v35 = v62;
  sub_1C6EAAA44(v62, v23);
  if (!swift_getEnumCaseMultiPayload())
  {
    sub_1C6EAAB08(&v35[v28], v10, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FloatList);
    if (sub_1C6E59708(*v23, *v10))
    {
      sub_1C6EE4430();
      sub_1C6EA8620(&qword_1EDEF6870, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      if (sub_1C6EE4A50())
      {
        sub_1C6EAAAA8(v10, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FloatList);
        sub_1C6EAAAA8(v23, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FloatList);
        v43 = v62;
        goto LABEL_26;
      }
    }

    sub_1C6EAAAA8(v10, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FloatList);
    sub_1C6EAAAA8(v23, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FloatList);
    v52 = v62;
    goto LABEL_43;
  }

  sub_1C6EAAAA8(v23, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FloatList);
  v30 = v35;
LABEL_33:
  sub_1C6EAABD8(v30, &qword_1EC1F91D8, &unk_1C6EF4140);
  return 0;
}

uint64_t sub_1C6EAAA44(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C6EAAAA8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1C6EAAB08(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C6EAAB70(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1C6EAABD8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t __swift_get_extra_inhabitant_indexTm_0(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1C6EE4430();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *__swift_store_extra_inhabitant_indexTm_0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1C6EE4430();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C6EAADE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t))
{
  result = a6(319, a4, a5);
  if (v7 <= 0x3F)
  {
    result = sub_1C6EE4430();
    if (v8 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C6EAAFB0()
{
  v0 = sub_1C6EE4720();
  __swift_allocate_value_buffer(v0, qword_1EC212FE0);
  __swift_project_value_buffer(v0, qword_1EC212FE0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8210, &unk_1C6EEC6D0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8218, &unk_1C6EECEC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C6EEA120;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "named_entity_id";
  *(v6 + 8) = 15;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C6EE46F0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "editorial_description";
  *(v10 + 8) = 21;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "other_language_equivalent_entities";
  *(v12 + 1) = 34;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "examples";
  *(v14 + 1) = 8;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 5;
  *v15 = "sub_sections";
  *(v15 + 8) = 12;
  *(v15 + 16) = 2;
  v9();
  return sub_1C6EE4700();
}

uint64_t sub_1C6EAB24C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_1C6EE44B0();
  if (!v4)
  {
    while (1)
    {
      if (v10)
      {
        return result;
      }

      if (result <= 2)
      {
        if (result == 1)
        {
          sub_1C6EAB434(a1, v5, a2, a3);
        }

        else if (result == 2)
        {
          sub_1C6EE4580();
        }
      }

      else
      {
        switch(result)
        {
          case 3:
            v11 = v4;
            type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID(0);
            sub_1C6EAE430(qword_1EDEF7D30, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID, &unk_1C6EF08BC);
LABEL_5:
            v4 = v11;
            sub_1C6EE4590();
            break;
          case 4:
            v11 = v4;
            type metadata accessor for Com_Apple_News_Algorithms_Proto_Ratings_Example(0);
            sub_1C6EAE430(&qword_1EC1F92B0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Ratings_Example, &unk_1C6EF4580);
            goto LABEL_5;
          case 5:
            v11 = v4;
            type metadata accessor for Com_Apple_News_Algorithms_Proto_Ratings_SubSection(0);
            sub_1C6EAE430(&qword_1EC1F9270, type metadata accessor for Com_Apple_News_Algorithms_Proto_Ratings_SubSection, &unk_1C6EF42B0);
            goto LABEL_5;
        }
      }

      result = sub_1C6EE44B0();
    }
  }

  return result;
}

uint64_t sub_1C6EAB434(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Ratings_Guidelines(0);
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID(0);
  sub_1C6EAE430(qword_1EDEF7D30, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID, &unk_1C6EF08BC);
  return sub_1C6EE45A0();
}

uint64_t sub_1C6EAB4E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C6EAB710(v3, a1, a2, a3);
  if (!v4)
  {
    v6 = v3[1];
    v7 = HIBYTE(v6) & 0xF;
    if ((v6 & 0x2000000000000000) == 0)
    {
      v7 = *v3 & 0xFFFFFFFFFFFFLL;
    }

    if (v7)
    {
      sub_1C6EE46C0();
    }

    if (*(v3[2] + 16))
    {
      type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID(0);
      sub_1C6EAE430(qword_1EDEF7D30, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID, &unk_1C6EF08BC);
      sub_1C6EE46D0();
    }

    if (*(v3[3] + 16))
    {
      type metadata accessor for Com_Apple_News_Algorithms_Proto_Ratings_Example(0);
      sub_1C6EAE430(&qword_1EC1F92B0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Ratings_Example, &unk_1C6EF4580);
      sub_1C6EE46D0();
    }

    if (*(v3[4] + 16))
    {
      type metadata accessor for Com_Apple_News_Algorithms_Proto_Ratings_SubSection(0);
      sub_1C6EAE430(&qword_1EC1F9270, type metadata accessor for Com_Apple_News_Algorithms_Proto_Ratings_SubSection, &unk_1C6EF42B0);
      sub_1C6EE46D0();
    }

    type metadata accessor for Com_Apple_News_Algorithms_Proto_Ratings_Guidelines(0);
    return sub_1C6EE4410();
  }

  return result;
}

uint64_t sub_1C6EAB710(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7EF0, &unk_1C6EE9280);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Ratings_Guidelines(0);
  sub_1C6EB001C(a1 + *(v12 + 36), v7, &qword_1EC1F7EF0, &unk_1C6EE9280);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1C6EB0084(v7, &qword_1EC1F7EF0, &unk_1C6EE9280);
  }

  sub_1C6EB0144(v7, v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
  sub_1C6EAE430(qword_1EDEF7D30, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID, &unk_1C6EF08BC);
  sub_1C6EE46E0();
  return sub_1C6EB00E4(v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
}

uint64_t sub_1C6EAB920@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  *(a2 + 1) = 0xE000000000000000;
  v4 = MEMORY[0x1E69E7CC0];
  *(a2 + 2) = MEMORY[0x1E69E7CC0];
  *(a2 + 3) = v4;
  *(a2 + 4) = v4;
  sub_1C6EE4420();
  v5 = *(a1 + 36);
  v6 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(&a2[v5], 1, 1, v6);
}

uint64_t sub_1C6EAB9D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 32);
  v5 = sub_1C6EE4430();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1C6EABA48(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = sub_1C6EE4430();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_1C6EABB14(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6EAE430(&qword_1EC1F92E8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Ratings_Guidelines, &unk_1C6EF46B0);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6EABBB4(uint64_t a1)
{
  v2 = sub_1C6EAE430(&qword_1EC1F92D0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Ratings_Guidelines, &unk_1C6EF46E8);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6EABC20(uint64_t a1, uint64_t a2)
{
  sub_1C6EAE430(&qword_1EC1F92D0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Ratings_Guidelines, &unk_1C6EF46E8);

  return sub_1C6EE45F0();
}

uint64_t sub_1C6EABCA0()
{
  v0 = sub_1C6EE4720();
  __swift_allocate_value_buffer(v0, qword_1EC212FF8);
  __swift_project_value_buffer(v0, qword_1EC212FF8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8210, &unk_1C6EEC6D0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8218, &unk_1C6EECEC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C6EEA170;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "article_data";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C6EE46F0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "rating";
  *(v10 + 8) = 6;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "rating_justification";
  *(v12 + 1) = 20;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "sub_section_id";
  *(v14 + 1) = 14;
  v14[16] = 2;
  v9();
  return sub_1C6EE4700();
}

uint64_t sub_1C6EABEF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_1C6EE44B0();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result > 2)
    {
      if (result == 3)
      {
        sub_1C6EE4580();
      }

      else if (result == 4)
      {
        sub_1C6EAC138(a1, v5, a2, a3);
      }
    }

    else if (result == 1)
    {
      sub_1C6EABFD0(a1, v5, a2, a3);
    }

    else if (result == 2)
    {
      sub_1C6EAC084(a1, v5, a2, a3);
    }
  }

  return result;
}

uint64_t sub_1C6EABFD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Ratings_Example(0);
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Ratings_ExampleArticleData(0);
  sub_1C6EAE430(&qword_1EC1F9290, type metadata accessor for Com_Apple_News_Algorithms_Proto_Ratings_ExampleArticleData, &unk_1C6EF4418);
  return sub_1C6EE45A0();
}

uint64_t sub_1C6EAC084(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Ratings_Example(0);
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Ratings_Rating(0);
  sub_1C6EAE430(&qword_1EC1F8468, type metadata accessor for Com_Apple_News_Algorithms_Proto_Ratings_Rating, &unk_1C6EECE40);
  return sub_1C6EE45A0();
}

uint64_t sub_1C6EAC138(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Ratings_Example(0);
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID(0);
  sub_1C6EAE430(qword_1EDEF7D30, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID, &unk_1C6EF08BC);
  return sub_1C6EE45A0();
}

uint64_t sub_1C6EAC1EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C6EAC2CC(v3, a1, a2, a3);
  if (!v4)
  {
    sub_1C6EAC4DC(v3, a1, a2, a3);
    v9 = v3[1];
    v10 = HIBYTE(v9) & 0xF;
    if ((v9 & 0x2000000000000000) == 0)
    {
      v10 = *v3 & 0xFFFFFFFFFFFFLL;
    }

    if (v10)
    {
      sub_1C6EE46C0();
    }

    sub_1C6EAC6EC(v3, a1, a2, a3);
    type metadata accessor for Com_Apple_News_Algorithms_Proto_Ratings_Example(0);
    return sub_1C6EE4410();
  }

  return result;
}

uint64_t sub_1C6EAC2CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F92F0, &qword_1C6EF4760);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Ratings_ExampleArticleData(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Ratings_Example(0);
  sub_1C6EB001C(a1 + *(v12 + 24), v7, &qword_1EC1F92F0, &qword_1C6EF4760);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1C6EB0084(v7, &qword_1EC1F92F0, &qword_1C6EF4760);
  }

  sub_1C6EB0144(v7, v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Ratings_ExampleArticleData);
  sub_1C6EAE430(&qword_1EC1F9290, type metadata accessor for Com_Apple_News_Algorithms_Proto_Ratings_ExampleArticleData, &unk_1C6EF4418);
  sub_1C6EE46E0();
  return sub_1C6EB00E4(v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Ratings_ExampleArticleData);
}

uint64_t sub_1C6EAC4DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8308, &unk_1C6EEC730);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Ratings_Rating(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Ratings_Example(0);
  sub_1C6EB001C(a1 + *(v12 + 28), v7, &qword_1EC1F8308, &unk_1C6EEC730);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1C6EB0084(v7, &qword_1EC1F8308, &unk_1C6EEC730);
  }

  sub_1C6EB0144(v7, v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Ratings_Rating);
  sub_1C6EAE430(&qword_1EC1F8468, type metadata accessor for Com_Apple_News_Algorithms_Proto_Ratings_Rating, &unk_1C6EECE40);
  sub_1C6EE46E0();
  return sub_1C6EB00E4(v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Ratings_Rating);
}

uint64_t sub_1C6EAC6EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7EF0, &unk_1C6EE9280);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Ratings_Example(0);
  sub_1C6EB001C(a1 + *(v12 + 32), v7, &qword_1EC1F7EF0, &unk_1C6EE9280);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1C6EB0084(v7, &qword_1EC1F7EF0, &unk_1C6EE9280);
  }

  sub_1C6EB0144(v7, v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
  sub_1C6EAE430(qword_1EDEF7D30, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID, &unk_1C6EF08BC);
  sub_1C6EE46E0();
  return sub_1C6EB00E4(v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
}

uint64_t sub_1C6EAC900@<X0>(int *a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  *(a2 + 1) = 0xE000000000000000;
  sub_1C6EE4420();
  v4 = a1[6];
  v5 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Ratings_ExampleArticleData(0);
  (*(*(v5 - 8) + 56))(&a2[v4], 1, 1, v5);
  v6 = a1[7];
  v7 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Ratings_Rating(0);
  (*(*(v7 - 8) + 56))(&a2[v6], 1, 1, v7);
  v8 = a1[8];
  v9 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(&a2[v8], 1, 1, v9);
}

uint64_t sub_1C6EACA34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_1C6EE4430();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1C6EACAA8(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 20);
  v5 = sub_1C6EE4430();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_1C6EACB74(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6EAE430(&qword_1EC1F9300, type metadata accessor for Com_Apple_News_Algorithms_Proto_Ratings_Example, &unk_1C6EF4548);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6EACC14(uint64_t a1)
{
  v2 = sub_1C6EAE430(&qword_1EC1F92B0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Ratings_Example, &unk_1C6EF4580);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6EACC80(uint64_t a1, uint64_t a2)
{
  sub_1C6EAE430(&qword_1EC1F92B0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Ratings_Example, &unk_1C6EF4580);

  return sub_1C6EE45F0();
}

uint64_t sub_1C6EACD00()
{
  v0 = sub_1C6EE4720();
  __swift_allocate_value_buffer(v0, qword_1EC213010);
  __swift_project_value_buffer(v0, qword_1EC213010);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8210, &unk_1C6EEC6D0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8218, &unk_1C6EECEC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1C6EF41B0;
  v4 = v18 + v3 + v1[14];
  *(v18 + v3) = 1;
  *v4 = "id";
  *(v4 + 8) = 2;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1C6EE46F0();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v18 + v3 + v2 + v1[14];
  *(v18 + v3 + v2) = 2;
  *v8 = "article_id";
  *(v8 + 8) = 10;
  *(v8 + 16) = 2;
  v7();
  v9 = (v18 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "title";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v7();
  v11 = (v18 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "short_excerpt";
  *(v12 + 1) = 13;
  v12[16] = 2;
  v7();
  v13 = (v18 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "channel_name";
  *(v14 + 1) = 12;
  v14[16] = 2;
  v7();
  v15 = (v18 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "url";
  *(v16 + 1) = 3;
  v16[16] = 2;
  v7();
  return sub_1C6EE4700();
}

uint64_t sub_1C6EACFD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_1C6EE44B0();
    if (v4 || (v10 & 1) != 0)
    {
      return result;
    }

    if (result > 3)
    {
      if (result == 4 || result == 5 || result == 6)
      {
LABEL_2:
        sub_1C6EE4580();
      }
    }

    else if (result == 1)
    {
      sub_1C6EAD0AC(a1, v5, a2, a3);
    }

    else if (result == 2 || result == 3)
    {
      goto LABEL_2;
    }
  }
}

uint64_t sub_1C6EAD0AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Ratings_ExampleArticleData(0);
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID(0);
  sub_1C6EAE430(qword_1EDEF7D30, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID, &unk_1C6EF08BC);
  return sub_1C6EE45A0();
}

uint64_t sub_1C6EAD160(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C6EAD2D0(v3, a1, a2, a3);
  if (!v4)
  {
    v6 = v3[1];
    v7 = HIBYTE(v6) & 0xF;
    if ((v6 & 0x2000000000000000) == 0)
    {
      v7 = *v3 & 0xFFFFFFFFFFFFLL;
    }

    if (v7)
    {
      sub_1C6EE46C0();
    }

    v8 = v3[3];
    v9 = HIBYTE(v8) & 0xF;
    if ((v8 & 0x2000000000000000) == 0)
    {
      v9 = v3[2] & 0xFFFFFFFFFFFFLL;
    }

    if (v9)
    {
      sub_1C6EE46C0();
    }

    v10 = v3[5];
    v11 = HIBYTE(v10) & 0xF;
    if ((v10 & 0x2000000000000000) == 0)
    {
      v11 = v3[4] & 0xFFFFFFFFFFFFLL;
    }

    if (v11)
    {
      sub_1C6EE46C0();
    }

    v12 = v3[7];
    v13 = HIBYTE(v12) & 0xF;
    if ((v12 & 0x2000000000000000) == 0)
    {
      v13 = v3[6] & 0xFFFFFFFFFFFFLL;
    }

    if (v13)
    {
      sub_1C6EE46C0();
    }

    v14 = v3[9];
    v15 = HIBYTE(v14) & 0xF;
    if ((v14 & 0x2000000000000000) == 0)
    {
      v15 = v3[8] & 0xFFFFFFFFFFFFLL;
    }

    if (v15)
    {
      sub_1C6EE46C0();
    }

    type metadata accessor for Com_Apple_News_Algorithms_Proto_Ratings_ExampleArticleData(0);
    return sub_1C6EE4410();
  }

  return result;
}

uint64_t sub_1C6EAD2D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7EF0, &unk_1C6EE9280);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Ratings_ExampleArticleData(0);
  sub_1C6EB001C(a1 + *(v12 + 40), v7, &qword_1EC1F7EF0, &unk_1C6EE9280);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1C6EB0084(v7, &qword_1EC1F7EF0, &unk_1C6EE9280);
  }

  sub_1C6EB0144(v7, v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
  sub_1C6EAE430(qword_1EDEF7D30, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID, &unk_1C6EF08BC);
  sub_1C6EE46E0();
  return sub_1C6EB00E4(v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
}

uint64_t sub_1C6EAD4E4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  *(a2 + 1) = 0xE000000000000000;
  *(a2 + 2) = 0;
  *(a2 + 3) = 0xE000000000000000;
  *(a2 + 4) = 0;
  *(a2 + 5) = 0xE000000000000000;
  *(a2 + 6) = 0;
  *(a2 + 7) = 0xE000000000000000;
  *(a2 + 8) = 0;
  *(a2 + 9) = 0xE000000000000000;
  sub_1C6EE4420();
  v4 = *(a1 + 40);
  v5 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(&a2[v4], 1, 1, v5);
}

uint64_t sub_1C6EAD598@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  v5 = sub_1C6EE4430();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1C6EAD60C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 36);
  v5 = sub_1C6EE4430();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_1C6EAD6D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6EAE430(&qword_1EC1F9308, type metadata accessor for Com_Apple_News_Algorithms_Proto_Ratings_ExampleArticleData, &unk_1C6EF43E0);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6EAD778(uint64_t a1)
{
  v2 = sub_1C6EAE430(&qword_1EC1F9290, type metadata accessor for Com_Apple_News_Algorithms_Proto_Ratings_ExampleArticleData, &unk_1C6EF4418);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6EAD7E4(uint64_t a1, uint64_t a2)
{
  sub_1C6EAE430(&qword_1EC1F9290, type metadata accessor for Com_Apple_News_Algorithms_Proto_Ratings_ExampleArticleData, &unk_1C6EF4418);

  return sub_1C6EE45F0();
}

uint64_t sub_1C6EAD864()
{
  v0 = sub_1C6EE4720();
  __swift_allocate_value_buffer(v0, qword_1EC213028);
  __swift_project_value_buffer(v0, qword_1EC213028);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8210, &unk_1C6EEC6D0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8218, &unk_1C6EECEC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C6EE65B0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "id";
  *(v6 + 8) = 2;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C6EE46F0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "name";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "editorial_description";
  *(v11 + 8) = 21;
  *(v11 + 16) = 2;
  v9();
  return sub_1C6EE4700();
}

uint64_t sub_1C6EADA7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_1C6EE44B0();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result == 3 || result == 2)
    {
      sub_1C6EE4580();
    }

    else if (result == 1)
    {
      sub_1C6EADB20(a1, v5, a2, a3);
    }
  }

  return result;
}

uint64_t sub_1C6EADB20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Ratings_SubSection(0);
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID(0);
  sub_1C6EAE430(qword_1EDEF7D30, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID, &unk_1C6EF08BC);
  return sub_1C6EE45A0();
}

uint64_t sub_1C6EADBD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C6EADCB4(v3, a1, a2, a3);
  if (!v4)
  {
    v6 = v3[1];
    v7 = HIBYTE(v6) & 0xF;
    if ((v6 & 0x2000000000000000) == 0)
    {
      v7 = *v3 & 0xFFFFFFFFFFFFLL;
    }

    if (v7)
    {
      sub_1C6EE46C0();
    }

    v8 = v3[3];
    v9 = HIBYTE(v8) & 0xF;
    if ((v8 & 0x2000000000000000) == 0)
    {
      v9 = v3[2] & 0xFFFFFFFFFFFFLL;
    }

    if (v9)
    {
      sub_1C6EE46C0();
    }

    type metadata accessor for Com_Apple_News_Algorithms_Proto_Ratings_SubSection(0);
    return sub_1C6EE4410();
  }

  return result;
}

uint64_t sub_1C6EADCB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7EF0, &unk_1C6EE9280);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Ratings_SubSection(0);
  sub_1C6EB001C(a1 + *(v12 + 28), v7, &qword_1EC1F7EF0, &unk_1C6EE9280);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1C6EB0084(v7, &qword_1EC1F7EF0, &unk_1C6EE9280);
  }

  sub_1C6EB0144(v7, v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
  sub_1C6EAE430(qword_1EDEF7D30, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID, &unk_1C6EF08BC);
  sub_1C6EE46E0();
  return sub_1C6EB00E4(v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
}

uint64_t sub_1C6EADEC4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  *(a2 + 1) = 0xE000000000000000;
  *(a2 + 2) = 0;
  *(a2 + 3) = 0xE000000000000000;
  sub_1C6EE4420();
  v4 = *(a1 + 28);
  v5 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(&a2[v4], 1, 1, v5);
}

uint64_t sub_1C6EADF6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = sub_1C6EE4430();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1C6EADFE0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = sub_1C6EE4430();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_1C6EAE0AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6EAE430(&qword_1EC1F9310, type metadata accessor for Com_Apple_News_Algorithms_Proto_Ratings_SubSection, &unk_1C6EF4278);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6EAE14C@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_1C6EE4720();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t sub_1C6EAE1E8(uint64_t a1)
{
  v2 = sub_1C6EAE430(&qword_1EC1F9270, type metadata accessor for Com_Apple_News_Algorithms_Proto_Ratings_SubSection, &unk_1C6EF42B0);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6EAE254(uint64_t a1, uint64_t a2)
{
  sub_1C6EE5580();
  sub_1C6EE4A00();
  return sub_1C6EE55A0();
}

uint64_t sub_1C6EAE2AC(uint64_t a1, uint64_t a2)
{
  sub_1C6EAE430(&qword_1EC1F9270, type metadata accessor for Com_Apple_News_Algorithms_Proto_Ratings_SubSection, &unk_1C6EF42B0);

  return sub_1C6EE45F0();
}

uint64_t sub_1C6EAE328(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C6EE5580();
  sub_1C6EE4A00();
  return sub_1C6EE55A0();
}

uint64_t sub_1C6EAE430(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C6EAE7F0(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C6EAE900(void *a1, void *a2)
{
  v4 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v27 = (&v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7EF0, &unk_1C6EE9280);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = (&v26 - v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8220, &qword_1C6EEC6E0);
  v11 = v10 - 8;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v26 - v12;
  v26 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Ratings_SubSection(0);
  v14 = *(v26 + 28);
  v15 = *(v11 + 56);
  v28 = a1;
  sub_1C6EB001C(a1 + v14, v13, &qword_1EC1F7EF0, &unk_1C6EE9280);
  v29 = a2;
  sub_1C6EB001C(a2 + v14, &v13[v15], &qword_1EC1F7EF0, &unk_1C6EE9280);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_1C6EB001C(v13, v9, &qword_1EC1F7EF0, &unk_1C6EE9280);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      v21 = v27;
      sub_1C6EB0144(&v13[v15], v27, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
      v22 = *v9 == *v21 && v9[1] == v21[1];
      if (v22 || (sub_1C6EE54B0() & 1) != 0)
      {
        sub_1C6EE4430();
        sub_1C6EAE430(&qword_1EDEF6870, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
        v23 = sub_1C6EE4A50();
        sub_1C6EB00E4(v21, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
        sub_1C6EB00E4(v9, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
        sub_1C6EB0084(v13, &qword_1EC1F7EF0, &unk_1C6EE9280);
        if ((v23 & 1) == 0)
        {
          goto LABEL_8;
        }

        goto LABEL_16;
      }

      sub_1C6EB00E4(v21, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
      sub_1C6EB00E4(v9, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
      v17 = &qword_1EC1F7EF0;
      v18 = &unk_1C6EE9280;
LABEL_7:
      sub_1C6EB0084(v13, v17, v18);
      goto LABEL_8;
    }

    sub_1C6EB00E4(v9, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
LABEL_6:
    v17 = &qword_1EC1F8220;
    v18 = &qword_1C6EEC6E0;
    goto LABEL_7;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_1C6EB0084(v13, &qword_1EC1F7EF0, &unk_1C6EE9280);
LABEL_16:
  v25 = v28;
  v24 = v29;
  if (*v28 == *v29 && v28[1] == v29[1] || (sub_1C6EE54B0()) && (v25[2] == v24[2] && v25[3] == v24[3] || (sub_1C6EE54B0()))
  {
    sub_1C6EE4430();
    sub_1C6EAE430(&qword_1EDEF6870, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
    v19 = sub_1C6EE4A50();
    return v19 & 1;
  }

LABEL_8:
  v19 = 0;
  return v19 & 1;
}

uint64_t sub_1C6EAED5C(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v27 = (&v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7EF0, &unk_1C6EE9280);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = (&v26 - v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8220, &qword_1C6EEC6E0);
  v11 = v10 - 8;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v26 - v12;
  v26 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Ratings_Guidelines(0);
  v14 = *(v26 + 36);
  v15 = *(v11 + 56);
  v28 = a1;
  sub_1C6EB001C(a1 + v14, v13, &qword_1EC1F7EF0, &unk_1C6EE9280);
  v29 = a2;
  sub_1C6EB001C(a2 + v14, &v13[v15], &qword_1EC1F7EF0, &unk_1C6EE9280);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_1C6EB001C(v13, v9, &qword_1EC1F7EF0, &unk_1C6EE9280);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      v21 = v27;
      sub_1C6EB0144(&v13[v15], v27, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
      v22 = *v9 == *v21 && v9[1] == v21[1];
      if (v22 || (sub_1C6EE54B0() & 1) != 0)
      {
        sub_1C6EE4430();
        sub_1C6EAE430(&qword_1EDEF6870, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
        v23 = sub_1C6EE4A50();
        sub_1C6EB00E4(v21, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
        sub_1C6EB00E4(v9, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
        sub_1C6EB0084(v13, &qword_1EC1F7EF0, &unk_1C6EE9280);
        if ((v23 & 1) == 0)
        {
          goto LABEL_8;
        }

        goto LABEL_16;
      }

      sub_1C6EB00E4(v21, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
      sub_1C6EB00E4(v9, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
      v17 = &qword_1EC1F7EF0;
      v18 = &unk_1C6EE9280;
LABEL_7:
      sub_1C6EB0084(v13, v17, v18);
      goto LABEL_8;
    }

    sub_1C6EB00E4(v9, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
LABEL_6:
    v17 = &qword_1EC1F8220;
    v18 = &qword_1C6EEC6E0;
    goto LABEL_7;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_1C6EB0084(v13, &qword_1EC1F7EF0, &unk_1C6EE9280);
LABEL_16:
  v25 = v28;
  v24 = v29;
  if (*v28 == *v29 && v28[1] == v29[1] || (sub_1C6EE54B0()) && (sub_1C6E5B990(v25[2], v24[2]) & 1) != 0 && (sub_1C6E5BBFC(v25[3], v24[3]) & 1) != 0 && (sub_1C6E5BDF0(v25[4], v24[4]))
  {
    sub_1C6EE4430();
    sub_1C6EAE430(&qword_1EDEF6870, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
    v19 = sub_1C6EE4A50();
    return v19 & 1;
  }

LABEL_8:
  v19 = 0;
  return v19 & 1;
}

uint64_t sub_1C6EAF1C4(void *a1, void *a2)
{
  v4 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v27 = (&v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7EF0, &unk_1C6EE9280);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = (&v26 - v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8220, &qword_1C6EEC6E0);
  v11 = v10 - 8;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v26 - v12;
  v26 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Ratings_ExampleArticleData(0);
  v14 = *(v26 + 40);
  v15 = *(v11 + 56);
  v28 = a1;
  sub_1C6EB001C(a1 + v14, v13, &qword_1EC1F7EF0, &unk_1C6EE9280);
  v29 = a2;
  sub_1C6EB001C(a2 + v14, &v13[v15], &qword_1EC1F7EF0, &unk_1C6EE9280);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_1C6EB001C(v13, v9, &qword_1EC1F7EF0, &unk_1C6EE9280);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      v21 = v27;
      sub_1C6EB0144(&v13[v15], v27, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
      v22 = *v9 == *v21 && v9[1] == v21[1];
      if (v22 || (sub_1C6EE54B0() & 1) != 0)
      {
        sub_1C6EE4430();
        sub_1C6EAE430(&qword_1EDEF6870, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
        v23 = sub_1C6EE4A50();
        sub_1C6EB00E4(v21, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
        sub_1C6EB00E4(v9, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
        sub_1C6EB0084(v13, &qword_1EC1F7EF0, &unk_1C6EE9280);
        if ((v23 & 1) == 0)
        {
          goto LABEL_8;
        }

        goto LABEL_16;
      }

      sub_1C6EB00E4(v21, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
      sub_1C6EB00E4(v9, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
      v17 = &qword_1EC1F7EF0;
      v18 = &unk_1C6EE9280;
LABEL_7:
      sub_1C6EB0084(v13, v17, v18);
      goto LABEL_8;
    }

    sub_1C6EB00E4(v9, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
LABEL_6:
    v17 = &qword_1EC1F8220;
    v18 = &qword_1C6EEC6E0;
    goto LABEL_7;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_1C6EB0084(v13, &qword_1EC1F7EF0, &unk_1C6EE9280);
LABEL_16:
  v25 = v28;
  v24 = v29;
  if (*v28 == *v29 && v28[1] == v29[1] || (sub_1C6EE54B0()) && (v25[2] == v24[2] && v25[3] == v24[3] || (sub_1C6EE54B0()) && (v25[4] == v24[4] && v25[5] == v24[5] || (sub_1C6EE54B0()) && (v25[6] == v24[6] && v25[7] == v24[7] || (sub_1C6EE54B0()) && (v25[8] == v24[8] && v25[9] == v24[9] || (sub_1C6EE54B0()))
  {
    sub_1C6EE4430();
    sub_1C6EAE430(&qword_1EDEF6870, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
    v19 = sub_1C6EE4A50();
    return v19 & 1;
  }

LABEL_8:
  v19 = 0;
  return v19 & 1;
}

uint64_t sub_1C6EAF68C(void *a1, void *a2)
{
  v71 = a2;
  v3 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID(0);
  v61 = *(v3 - 8);
  v62 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v57 = (&v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7EF0, &unk_1C6EE9280);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v58 = (&v56 - v6);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8220, &qword_1C6EEC6E0);
  MEMORY[0x1EEE9AC00](v60);
  v63 = &v56 - v7;
  v8 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Ratings_Rating(0);
  v66 = *(v8 - 8);
  v67 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v59 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8308, &unk_1C6EEC730);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v64 = &v56 - v11;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8310, &unk_1C6EF53A0);
  MEMORY[0x1EEE9AC00](v65);
  v68 = &v56 - v12;
  v13 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Ratings_ExampleArticleData(0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = (&v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F92F0, &qword_1C6EF4760);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = (&v56 - v18);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F92F8, &qword_1C6EF4768);
  v21 = v20 - 8;
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v56 - v22;
  v69 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Ratings_Example(0);
  v70 = a1;
  v24 = *(v69 + 24);
  v25 = *(v21 + 56);
  sub_1C6EB001C(a1 + v24, v23, &qword_1EC1F92F0, &qword_1C6EF4760);
  sub_1C6EB001C(v71 + v24, &v23[v25], &qword_1EC1F92F0, &qword_1C6EF4760);
  v26 = *(v14 + 48);
  if (v26(v23, 1, v13) == 1)
  {
    if (v26(&v23[v25], 1, v13) == 1)
    {
      sub_1C6EB0084(v23, &qword_1EC1F92F0, &qword_1C6EF4760);
      goto LABEL_8;
    }

LABEL_6:
    v27 = &qword_1EC1F92F8;
    v28 = &qword_1C6EF4768;
    v29 = v23;
LABEL_25:
    sub_1C6EB0084(v29, v27, v28);
    goto LABEL_26;
  }

  sub_1C6EB001C(v23, v19, &qword_1EC1F92F0, &qword_1C6EF4760);
  if (v26(&v23[v25], 1, v13) == 1)
  {
    sub_1C6EB00E4(v19, type metadata accessor for Com_Apple_News_Algorithms_Proto_Ratings_ExampleArticleData);
    goto LABEL_6;
  }

  sub_1C6EB0144(&v23[v25], v16, type metadata accessor for Com_Apple_News_Algorithms_Proto_Ratings_ExampleArticleData);
  v30 = sub_1C6EAF1C4(v19, v16);
  sub_1C6EB00E4(v16, type metadata accessor for Com_Apple_News_Algorithms_Proto_Ratings_ExampleArticleData);
  sub_1C6EB00E4(v19, type metadata accessor for Com_Apple_News_Algorithms_Proto_Ratings_ExampleArticleData);
  sub_1C6EB0084(v23, &qword_1EC1F92F0, &qword_1C6EF4760);
  if ((v30 & 1) == 0)
  {
    goto LABEL_26;
  }

LABEL_8:
  v32 = v69;
  v31 = v70;
  v33 = *(v69 + 28);
  v34 = *(v65 + 48);
  v35 = v68;
  sub_1C6EB001C(v70 + v33, v68, &qword_1EC1F8308, &unk_1C6EEC730);
  v36 = v71;
  sub_1C6EB001C(v71 + v33, v35 + v34, &qword_1EC1F8308, &unk_1C6EEC730);
  v37 = v67;
  v38 = *(v66 + 48);
  if (v38(v35, 1, v67) != 1)
  {
    v39 = v64;
    sub_1C6EB001C(v35, v64, &qword_1EC1F8308, &unk_1C6EEC730);
    if (v38(v35 + v34, 1, v37) != 1)
    {
      v40 = v35 + v34;
      v41 = v59;
      sub_1C6EB0144(v40, v59, type metadata accessor for Com_Apple_News_Algorithms_Proto_Ratings_Rating);
      v42 = sub_1C6E700A8();
      sub_1C6EB00E4(v41, type metadata accessor for Com_Apple_News_Algorithms_Proto_Ratings_Rating);
      sub_1C6EB00E4(v39, type metadata accessor for Com_Apple_News_Algorithms_Proto_Ratings_Rating);
      sub_1C6EB0084(v35, &qword_1EC1F8308, &unk_1C6EEC730);
      if ((v42 & 1) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    sub_1C6EB00E4(v39, type metadata accessor for Com_Apple_News_Algorithms_Proto_Ratings_Rating);
    goto LABEL_13;
  }

  if (v38(v35 + v34, 1, v37) != 1)
  {
LABEL_13:
    v27 = &qword_1EC1F8310;
    v28 = &unk_1C6EF53A0;
    v29 = v35;
    goto LABEL_25;
  }

  sub_1C6EB0084(v35, &qword_1EC1F8308, &unk_1C6EEC730);
LABEL_15:
  if ((*v31 != *v36 || v31[1] != v36[1]) && (sub_1C6EE54B0() & 1) == 0)
  {
    goto LABEL_26;
  }

  v43 = *(v32 + 32);
  v44 = *(v60 + 48);
  v45 = v63;
  sub_1C6EB001C(v31 + v43, v63, &qword_1EC1F7EF0, &unk_1C6EE9280);
  v46 = v36 + v43;
  v47 = v45;
  sub_1C6EB001C(v46, v45 + v44, &qword_1EC1F7EF0, &unk_1C6EE9280);
  v48 = v62;
  v49 = *(v61 + 48);
  if (v49(v45, 1, v62) == 1)
  {
    if (v49(v45 + v44, 1, v48) == 1)
    {
      sub_1C6EB0084(v45, &qword_1EC1F7EF0, &unk_1C6EE9280);
LABEL_32:
      sub_1C6EE4430();
      sub_1C6EAE430(&qword_1EDEF6870, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      v51 = sub_1C6EE4A50();
      return v51 & 1;
    }

    goto LABEL_23;
  }

  v50 = v58;
  sub_1C6EB001C(v47, v58, &qword_1EC1F7EF0, &unk_1C6EE9280);
  if (v49(v47 + v44, 1, v48) == 1)
  {
    sub_1C6EB00E4(v50, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
LABEL_23:
    v27 = &qword_1EC1F8220;
    v28 = &qword_1C6EEC6E0;
LABEL_24:
    v29 = v47;
    goto LABEL_25;
  }

  v53 = v47 + v44;
  v54 = v57;
  sub_1C6EB0144(v53, v57, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
  if ((*v50 != *v54 || v50[1] != v54[1]) && (sub_1C6EE54B0() & 1) == 0)
  {
    sub_1C6EB00E4(v54, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
    sub_1C6EB00E4(v50, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
    v27 = &qword_1EC1F7EF0;
    v28 = &unk_1C6EE9280;
    goto LABEL_24;
  }

  sub_1C6EE4430();
  sub_1C6EAE430(&qword_1EDEF6870, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v55 = sub_1C6EE4A50();
  sub_1C6EB00E4(v54, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
  sub_1C6EB00E4(v50, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
  sub_1C6EB0084(v47, &qword_1EC1F7EF0, &unk_1C6EE9280);
  if (v55)
  {
    goto LABEL_32;
  }

LABEL_26:
  v51 = 0;
  return v51 & 1;
}

uint64_t sub_1C6EB001C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1C6EB0084(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1C6EB00E4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1C6EB0144(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1C6EB01D4(uint64_t a1)
{
  sub_1C6EB0370(319, &qword_1EC1F9328, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1C6EB0370(319, &qword_1EC1F9330, type metadata accessor for Com_Apple_News_Algorithms_Proto_Ratings_Example, MEMORY[0x1E69E62F8]);
    if (v2 <= 0x3F)
    {
      sub_1C6EB0370(319, &qword_1EC1F9338, type metadata accessor for Com_Apple_News_Algorithms_Proto_Ratings_SubSection, MEMORY[0x1E69E62F8]);
      if (v3 <= 0x3F)
      {
        sub_1C6EE4430();
        if (v4 <= 0x3F)
        {
          sub_1C6EB0370(319, qword_1EDEF7CE8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID, MEMORY[0x1E69E6720]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1C6EB0370(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1C6EB03FC(uint64_t a1)
{
  sub_1C6EE4430();
  if (v1 <= 0x3F)
  {
    sub_1C6EB0370(319, &qword_1EC1F9350, type metadata accessor for Com_Apple_News_Algorithms_Proto_Ratings_ExampleArticleData, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1C6EB0370(319, &qword_1EC1F9358, type metadata accessor for Com_Apple_News_Algorithms_Proto_Ratings_Rating, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        sub_1C6EB0370(319, qword_1EDEF7CE8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID, MEMORY[0x1E69E6720]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1C6EB0578(uint64_t a1)
{
  sub_1C6EE4430();
  if (v1 <= 0x3F)
  {
    sub_1C6EB0370(319, qword_1EDEF7CE8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C6EB0670(uint64_t a1)
{
  sub_1C6EE4430();
  if (v1 <= 0x3F)
  {
    sub_1C6EB0370(319, qword_1EDEF7CE8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1C6EB07A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_1C6EE44B0();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1C6EE4580();
    }
  }

  return result;
}

uint64_t sub_1C6EB0814(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3[1];
  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6 || (result = sub_1C6EE46C0(), !v4))
  {
    type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_InitializeSessionRequest(0);
    return sub_1C6EE4410();
  }

  return result;
}

uint64_t sub_1C6EB08A8@<X0>(void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  return sub_1C6EE4420();
}

uint64_t sub_1C6EB0944(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6EB45CC(&qword_1EC1F9480, type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_InitializeSessionRequest, &unk_1C6EF52F0);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6EB09E4(uint64_t a1)
{
  v2 = sub_1C6EB45CC(&qword_1EC1F9468, type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_InitializeSessionRequest, &unk_1C6EF5328);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6EB0A50(uint64_t a1, uint64_t a2)
{
  sub_1C6EB45CC(&qword_1EC1F9468, type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_InitializeSessionRequest, &unk_1C6EF5328);

  return sub_1C6EE45F0();
}

uint64_t sub_1C6EB0ACC(uint64_t *a1, void *a2, uint64_t a3)
{
  v3 = *a1 == *a2 && a1[1] == a2[1];
  if (!v3 && (sub_1C6EE54B0() & 1) == 0)
  {
    return 0;
  }

  sub_1C6EE4430();
  sub_1C6EB45CC(&qword_1EDEF6870, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1C6EE4A50() & 1;
}

uint64_t sub_1C6EB0BA8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, unsigned int *a5)
{
  v9 = sub_1C6EE4720();
  __swift_allocate_value_buffer(v9, a2);
  __swift_project_value_buffer(v9, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8210, &unk_1C6EEC6D0);
  v10 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8218, &unk_1C6EECEC0) - 8);
  v11 = (*(*v10 + 80) + 32) & ~*(*v10 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1C6EE6590;
  v13 = v12 + v11 + v10[14];
  *(v12 + v11) = 1;
  *v13 = a3;
  *(v13 + 8) = a4;
  *(v13 + 16) = 2;
  v14 = *a5;
  v15 = sub_1C6EE46F0();
  (*(*(v15 - 8) + 104))(v13, v14, v15);
  return sub_1C6EE4700();
}

uint64_t sub_1C6EB0D18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_1C6EE44B0();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1C6EE44D0();
    }
  }

  return result;
}

uint64_t sub_1C6EB0D88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*v3 != 1 || (result = sub_1C6EE4650(), !v4))
  {
    type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_InitializeSessionResponse(0);
    return sub_1C6EE4410();
  }

  return result;
}

uint64_t sub_1C6EB0E60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_1C6EE4430();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1C6EB0ED4(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 20);
  v5 = sub_1C6EE4430();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_1C6EB0FA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6EB45CC(&qword_1EC1F9488, type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_InitializeSessionResponse, &unk_1C6EF5188);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6EB1040(uint64_t a1)
{
  v2 = sub_1C6EB45CC(&qword_1EC1F9448, type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_InitializeSessionResponse, &unk_1C6EF51C0);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6EB10AC(uint64_t a1, uint64_t a2)
{
  sub_1C6EB45CC(&qword_1EC1F9448, type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_InitializeSessionResponse, &unk_1C6EF51C0);

  return sub_1C6EE45F0();
}

uint64_t sub_1C6EB1128(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  sub_1C6EE4430();
  sub_1C6EB45CC(&qword_1EDEF6870, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1C6EE4A50() & 1;
}

uint64_t sub_1C6EB11CC()
{
  v0 = sub_1C6EE4720();
  __swift_allocate_value_buffer(v0, qword_1EC213070);
  __swift_project_value_buffer(v0, qword_1EC213070);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8210, &unk_1C6EEC6D0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8218, &unk_1C6EECEC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C6EE65B0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "article_id";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C6EE46F0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "title";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "plain_text";
  *(v11 + 8) = 10;
  *(v11 + 16) = 2;
  v9();
  return sub_1C6EE4700();
}

uint64_t sub_1C6EB13E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_1C6EE44B0();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 3 || result == 2 || result == 1)
    {
      sub_1C6EE4580();
    }
  }

  return result;
}

uint64_t sub_1C6EB1478(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3[1];
  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6 || (result = sub_1C6EE46C0(), !v4))
  {
    v8 = v3[3];
    v9 = HIBYTE(v8) & 0xF;
    if ((v8 & 0x2000000000000000) == 0)
    {
      v9 = v3[2] & 0xFFFFFFFFFFFFLL;
    }

    if (!v9 || (result = sub_1C6EE46C0(), !v4))
    {
      v10 = v3[5];
      v11 = HIBYTE(v10) & 0xF;
      if ((v10 & 0x2000000000000000) == 0)
      {
        v11 = v3[4] & 0xFFFFFFFFFFFFLL;
      }

      if (!v11 || (result = sub_1C6EE46C0(), !v4))
      {
        type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_ArticleData(0);
        return sub_1C6EE4410();
      }
    }
  }

  return result;
}

uint64_t sub_1C6EB156C@<X0>(void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  a2[2] = 0;
  a2[3] = 0xE000000000000000;
  a2[4] = 0;
  a2[5] = 0xE000000000000000;
  return sub_1C6EE4420();
}

uint64_t sub_1C6EB15B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 28);
  v5 = sub_1C6EE4430();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1C6EB162C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 28);
  v5 = sub_1C6EE4430();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_1C6EB16F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6EB45CC(&qword_1EC1F9490, type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_ArticleData, &unk_1C6EF5020);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6EB1798(uint64_t a1)
{
  v2 = sub_1C6EB45CC(&qword_1EC1F9428, type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_ArticleData, &unk_1C6EF5058);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6EB1804(uint64_t a1, uint64_t a2)
{
  sub_1C6EB45CC(&qword_1EC1F9428, type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_ArticleData, &unk_1C6EF5058);

  return sub_1C6EE45F0();
}

uint64_t sub_1C6EB18A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_1C6EE44B0();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1C6EB1938(a1, v5, a2, a3);
    }

    else if (result == 2)
    {
      sub_1C6EB19EC(a1, v5, a2, a3);
    }
  }

  return result;
}

uint64_t sub_1C6EB1938(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_RatedArticleData(0);
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_ArticleData(0);
  sub_1C6EB45CC(&qword_1EC1F9428, type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_ArticleData, &unk_1C6EF5058);
  return sub_1C6EE45A0();
}

uint64_t sub_1C6EB19EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_RatedArticleData(0);
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Ratings_Rating(0);
  sub_1C6EB45CC(&qword_1EC1F8468, type metadata accessor for Com_Apple_News_Algorithms_Proto_Ratings_Rating, &unk_1C6EECE40);
  return sub_1C6EE45A0();
}

uint64_t sub_1C6EB1AA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C6EB1B10(v3, a1, a2, a3);
  if (!v4)
  {
    sub_1C6EB1D20(v3, a1, a2, a3);
    return sub_1C6EE4410();
  }

  return result;
}

uint64_t sub_1C6EB1B10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8318, &qword_1C6EEC740);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_ArticleData(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_RatedArticleData(0);
  sub_1C6EB64D8(a1 + *(v12 + 20), v7, &qword_1EC1F8318, &qword_1C6EEC740);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1C6EB6540(v7, &qword_1EC1F8318, &qword_1C6EEC740);
  }

  sub_1C6EB6410(v7, v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_ArticleData);
  sub_1C6EB45CC(&qword_1EC1F9428, type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_ArticleData, &unk_1C6EF5058);
  sub_1C6EE46E0();
  return sub_1C6EB6478(v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_ArticleData);
}

uint64_t sub_1C6EB1D20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8308, &unk_1C6EEC730);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Ratings_Rating(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_RatedArticleData(0);
  sub_1C6EB64D8(a1 + *(v12 + 24), v7, &qword_1EC1F8308, &unk_1C6EEC730);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1C6EB6540(v7, &qword_1EC1F8308, &unk_1C6EEC730);
  }

  sub_1C6EB6410(v7, v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Ratings_Rating);
  sub_1C6EB45CC(&qword_1EC1F8468, type metadata accessor for Com_Apple_News_Algorithms_Proto_Ratings_Rating, &unk_1C6EECE40);
  sub_1C6EE46E0();
  return sub_1C6EB6478(v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Ratings_Rating);
}

uint64_t sub_1C6EB1F30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C6EE4420();
  v4 = *(a1 + 20);
  v5 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_ArticleData(0);
  (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v6 = *(a1 + 24);
  v7 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Ratings_Rating(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a2 + v6, 1, 1, v7);
}

uint64_t sub_1C6EB2010@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C6EE4430();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_1C6EB2078(uint64_t a1)
{
  v3 = sub_1C6EE4430();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t sub_1C6EB2134(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6EB45CC(&qword_1EC1F9498, type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_RatedArticleData, &unk_1C6EF4EB8);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6EB21D4(uint64_t a1)
{
  v2 = sub_1C6EB45CC(&qword_1EC1F9408, type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_RatedArticleData, &unk_1C6EF4EF0);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6EB2240(uint64_t a1, uint64_t a2)
{
  sub_1C6EB45CC(&qword_1EC1F9408, type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_RatedArticleData, &unk_1C6EF4EF0);

  return sub_1C6EE45F0();
}

uint64_t sub_1C6EB22E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_1C6EE44B0();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      switch(result)
      {
        case 3:
          type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_RatedArticleData(0);
          sub_1C6EB45CC(&qword_1EC1F9408, type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_RatedArticleData, &unk_1C6EF4EF0);
          sub_1C6EE4590();
          break;
        case 2:
          sub_1C6EB2400(a1, v5, a2, a3);
          break;
        case 1:
          sub_1C6EE4580();
          break;
      }

      result = sub_1C6EE44B0();
    }
  }

  return result;
}

uint64_t sub_1C6EB2400(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_AddRatedArticlesRequest(0);
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_RatedArticleData(0);
  sub_1C6EB45CC(&qword_1EC1F9408, type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_RatedArticleData, &unk_1C6EF4EF0);
  return sub_1C6EE45A0();
}

uint64_t sub_1C6EB24B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = v3[1];
  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9 || (result = sub_1C6EE46C0(), !v4))
  {
    result = sub_1C6EB25E0(v3, a1, a2, a3);
    if (!v4)
    {
      if (*(v3[2] + 16))
      {
        type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_RatedArticleData(0);
        sub_1C6EB45CC(&qword_1EC1F9408, type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_RatedArticleData, &unk_1C6EF4EF0);
        sub_1C6EE46D0();
      }

      type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_AddRatedArticlesRequest(0);
      return sub_1C6EE4410();
    }
  }

  return result;
}

uint64_t sub_1C6EB25E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F94A8, &qword_1C6EF53B0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_RatedArticleData(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_AddRatedArticlesRequest(0);
  sub_1C6EB64D8(a1 + *(v12 + 28), v7, &qword_1EC1F94A8, &qword_1C6EF53B0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1C6EB6540(v7, &qword_1EC1F94A8, &qword_1C6EF53B0);
  }

  sub_1C6EB6410(v7, v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_RatedArticleData);
  sub_1C6EB45CC(&qword_1EC1F9408, type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_RatedArticleData, &unk_1C6EF4EF0);
  sub_1C6EE46E0();
  return sub_1C6EB6478(v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_RatedArticleData);
}

uint64_t sub_1C6EB287C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6EB45CC(&qword_1EC1F94A0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_AddRatedArticlesRequest, &unk_1C6EF4D50);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6EB291C(uint64_t a1)
{
  v2 = sub_1C6EB45CC(&qword_1EC1F93E8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_AddRatedArticlesRequest, &unk_1C6EF4D88);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6EB2988(uint64_t a1, uint64_t a2)
{
  sub_1C6EB45CC(&qword_1EC1F93E8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_AddRatedArticlesRequest, &unk_1C6EF4D88);

  return sub_1C6EE45F0();
}

uint64_t sub_1C6EB2A28(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = sub_1C6EE4720();
  __swift_allocate_value_buffer(v6, a2);
  __swift_project_value_buffer(v6, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8210, &unk_1C6EEC6D0);
  v7 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8218, &unk_1C6EECEC0) - 8);
  v8 = *(*v7 + 72);
  v9 = (*(*v7 + 80) + 32) & ~*(*v7 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1C6EE65B0;
  v11 = (v10 + v9);
  v12 = v10 + v9 + v7[14];
  *v11 = 1;
  *v12 = "entity_id";
  *(v12 + 8) = 9;
  *(v12 + 16) = 2;
  v13 = *MEMORY[0x1E69AADE8];
  v14 = sub_1C6EE46F0();
  v15 = *(*(v14 - 8) + 104);
  (v15)(v12, v13, v14);
  v16 = v11 + v8 + v7[14];
  *(v11 + v8) = 2;
  *v16 = a3;
  *(v16 + 1) = 12;
  v16[16] = 2;
  v15();
  v17 = v11 + 2 * v8 + v7[14];
  *(v11 + 2 * v8) = 3;
  *v17 = a4;
  *(v17 + 8) = a5;
  *(v17 + 16) = 2;
  v15();
  return sub_1C6EE4700();
}

uint64_t sub_1C6EB2C34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_1C6EE44B0();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        sub_1C6EE4530();
        break;
      case 2:
        sub_1C6EB2CE4(a1, v5, a2, a3);
        break;
      case 1:
        sub_1C6EE4580();
        break;
    }
  }

  return result;
}

uint64_t sub_1C6EB2CE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_ScoredArticleEntity(0);
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_ArticleData(0);
  sub_1C6EB45CC(&qword_1EC1F9428, type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_ArticleData, &unk_1C6EF5058);
  return sub_1C6EE45A0();
}

uint64_t sub_1C6EB2D98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + 8);
  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9 || (result = sub_1C6EE46C0(), !v4))
  {
    result = sub_1C6EB2E68(v3, a1, a2, a3);
    if (!v4)
    {
      if (*(v3 + 16))
      {
        sub_1C6EE4680();
      }

      type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_ScoredArticleEntity(0);
      return sub_1C6EE4410();
    }
  }

  return result;
}

uint64_t sub_1C6EB2E68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8318, &qword_1C6EEC740);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_ArticleData(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_ScoredArticleEntity(0);
  sub_1C6EB64D8(a1 + *(v12 + 28), v7, &qword_1EC1F8318, &qword_1C6EEC740);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1C6EB6540(v7, &qword_1EC1F8318, &qword_1C6EEC740);
  }

  sub_1C6EB6410(v7, v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_ArticleData);
  sub_1C6EB45CC(&qword_1EC1F9428, type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_ArticleData, &unk_1C6EF5058);
  sub_1C6EE46E0();
  return sub_1C6EB6478(v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_ArticleData);
}

uint64_t sub_1C6EB3078@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = 0;
  sub_1C6EE4420();
  v4 = *(a1 + 28);
  v5 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_ArticleData(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(a2 + v4, 1, 1, v5);
}

uint64_t sub_1C6EB3178(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6EB45CC(&qword_1EC1F94B8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_ScoredArticleEntity, &unk_1C6EF4BE8);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6EB3218(uint64_t a1)
{
  v2 = sub_1C6EB45CC(&qword_1EC1F93C8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_ScoredArticleEntity, &unk_1C6EF4C20);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6EB3284(uint64_t a1, uint64_t a2)
{
  sub_1C6EB45CC(&qword_1EC1F93C8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_ScoredArticleEntity, &unk_1C6EF4C20);

  return sub_1C6EE45F0();
}

uint64_t sub_1C6EB3324(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1C6EE4720();
  __swift_allocate_value_buffer(v8, a2);
  __swift_project_value_buffer(v8, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8210, &unk_1C6EEC6D0);
  v9 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8218, &unk_1C6EECEC0) - 8);
  v10 = *(*v9 + 72);
  v11 = (*(*v9 + 80) + 32) & ~*(*v9 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1C6EE6B40;
  v13 = (v12 + v11);
  v14 = v12 + v11 + v9[14];
  *v13 = 1;
  *v14 = a3;
  *(v14 + 8) = a4;
  *(v14 + 16) = 2;
  v15 = *MEMORY[0x1E69AADE8];
  v16 = sub_1C6EE46F0();
  v17 = *(*(v16 - 8) + 104);
  (v17)(v14, v15, v16);
  v18 = v13 + v10 + v9[14];
  *(v13 + v10) = 2;
  *v18 = a5;
  *(v18 + 1) = 6;
  v18[16] = 2;
  v17();
  return sub_1C6EE4700();
}

uint64_t sub_1C6EB34EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C6EE44B0();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 1)
      {
        sub_1C6EE44D0();
      }

      else if (result == 2)
      {
        type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_ScoredArticleEntity(0);
        sub_1C6EB45CC(&qword_1EC1F93C8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_ScoredArticleEntity, &unk_1C6EF4C20);
        sub_1C6EE4590();
      }

      result = sub_1C6EE44B0();
    }
  }

  return result;
}

uint64_t sub_1C6EB35E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*v3 != 1 || (result = sub_1C6EE4650(), !v4))
  {
    if (!*(*(v3 + 8) + 16) || (type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_ScoredArticleEntity(0), sub_1C6EB45CC(&qword_1EC1F93C8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_ScoredArticleEntity, &unk_1C6EF4C20), result = sub_1C6EE46D0(), !v4))
    {
      type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_ModelStatus(0);
      return sub_1C6EE4410();
    }
  }

  return result;
}

uint64_t sub_1C6EB36F4@<X0>(uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = MEMORY[0x1E69E7CC0];
  return sub_1C6EE4420();
}

uint64_t sub_1C6EB3798(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6EB45CC(&qword_1EC1F94C0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_ModelStatus, &unk_1C6EF4A80);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6EB3838(uint64_t a1)
{
  v2 = sub_1C6EB45CC(&qword_1EC1F93A8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_ModelStatus, &unk_1C6EF4AB8);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6EB38A4(uint64_t a1, uint64_t a2)
{
  sub_1C6EB45CC(&qword_1EC1F93A8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_ModelStatus, &unk_1C6EF4AB8);

  return sub_1C6EE45F0();
}

uint64_t sub_1C6EB3920(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (*a1 != *a2 || (sub_1C6E5AD34(*(a1 + 1), *(a2 + 1)) & 1) == 0)
  {
    return 0;
  }

  sub_1C6EE4430();
  sub_1C6EB45CC(&qword_1EDEF6870, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1C6EE4A50() & 1;
}

uint64_t sub_1C6EB39D8()
{
  v0 = sub_1C6EE4720();
  __swift_allocate_value_buffer(v0, qword_1EC2130E8);
  __swift_project_value_buffer(v0, qword_1EC2130E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8210, &unk_1C6EEC6D0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8218, &unk_1C6EECEC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C6EE65B0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "entity_id";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C6EE46F0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "article_ids";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "model_status";
  *(v11 + 8) = 12;
  *(v11 + 16) = 2;
  v9();
  return sub_1C6EE4700();
}

uint64_t sub_1C6EB3BEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_1C6EE44B0();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        sub_1C6EB3C9C(a1, v5, a2, a3);
        break;
      case 2:
        sub_1C6EE4570();
        break;
      case 1:
        sub_1C6EE4580();
        break;
    }
  }

  return result;
}

uint64_t sub_1C6EB3C9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_AddRatedArticlesResponse(0);
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_ModelStatus(0);
  sub_1C6EB45CC(&qword_1EC1F93A8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_ModelStatus, &unk_1C6EF4AB8);
  return sub_1C6EE45A0();
}

uint64_t sub_1C6EB3D50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = v3[1];
  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9 || (result = sub_1C6EE46C0(), !v4))
  {
    if (!*(v3[2] + 16) || (result = sub_1C6EE46B0(), !v4))
    {
      result = sub_1C6EB3E20(v3, a1, a2, a3);
      if (!v4)
      {
        type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_AddRatedArticlesResponse(0);
        return sub_1C6EE4410();
      }
    }
  }

  return result;
}

uint64_t sub_1C6EB3E20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F94D0, &qword_1C6EF53C0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_ModelStatus(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_AddRatedArticlesResponse(0);
  sub_1C6EB64D8(a1 + *(v12 + 28), v7, &qword_1EC1F94D0, &qword_1C6EF53C0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1C6EB6540(v7, &qword_1EC1F94D0, &qword_1C6EF53C0);
  }

  sub_1C6EB6410(v7, v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_ModelStatus);
  sub_1C6EB45CC(&qword_1EC1F93A8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_ModelStatus, &unk_1C6EF4AB8);
  sub_1C6EE46E0();
  return sub_1C6EB6478(v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_ModelStatus);
}

uint64_t sub_1C6EB4048@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X2>, char *a3@<X8>)
{
  *a3 = 0;
  *(a3 + 1) = 0xE000000000000000;
  *(a3 + 2) = MEMORY[0x1E69E7CC0];
  sub_1C6EE4420();
  v6 = *(a1 + 28);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(&a3[v6], 1, 1, v7);
}

uint64_t sub_1C6EB4108@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = sub_1C6EE4430();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1C6EB417C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = sub_1C6EE4430();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_1C6EB4248(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6EB45CC(&qword_1EC1F94C8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_AddRatedArticlesResponse, &unk_1C6EF4918);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6EB42E8@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_1C6EE4720();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t sub_1C6EB4384(uint64_t a1)
{
  v2 = sub_1C6EB45CC(&qword_1EC1F9388, type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_AddRatedArticlesResponse, &unk_1C6EF4950);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6EB43F0(uint64_t a1, uint64_t a2)
{
  sub_1C6EE5580();
  sub_1C6EE4A00();
  return sub_1C6EE55A0();
}

uint64_t sub_1C6EB4448(uint64_t a1, uint64_t a2)
{
  sub_1C6EB45CC(&qword_1EC1F9388, type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_AddRatedArticlesResponse, &unk_1C6EF4950);

  return sub_1C6EE45F0();
}

uint64_t sub_1C6EB44C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C6EE5580();
  sub_1C6EE4A00();
  return sub_1C6EE55A0();
}

uint64_t sub_1C6EB45CC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C6EB4E8C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C6EB4F9C(void *a1, void *a2)
{
  v4 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_ModelStatus(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F94D0, &qword_1C6EF53C0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v24 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F94D8, &qword_1C6EF53C8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v24 - v12;
  if (*a1 != *a2 && (sub_1C6EE54B0() & 1) == 0 || (sub_1C6E59BCC(a1[2], a2[2]) & 1) == 0)
  {
    goto LABEL_17;
  }

  v24 = v7;
  v25 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_AddRatedArticlesResponse(0);
  v14 = *(v25 + 28);
  v15 = *(v11 + 48);
  sub_1C6EB64D8(a1 + v14, v13, &qword_1EC1F94D0, &qword_1C6EF53C0);
  sub_1C6EB64D8(a2 + v14, &v13[v15], &qword_1EC1F94D0, &qword_1C6EF53C0);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_1C6EB64D8(v13, v10, &qword_1EC1F94D0, &qword_1C6EF53C0);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      v20 = &v13[v15];
      v21 = v24;
      sub_1C6EB6410(v20, v24, type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_ModelStatus);
      if (*v10 == *v21 && (sub_1C6E5AD34(*(v10 + 1), *(v21 + 1)) & 1) != 0)
      {
        sub_1C6EE4430();
        sub_1C6EB45CC(&qword_1EDEF6870, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
        v22 = sub_1C6EE4A50();
        sub_1C6EB6478(v21, type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_ModelStatus);
        sub_1C6EB6478(v10, type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_ModelStatus);
        sub_1C6EB6540(v13, &qword_1EC1F94D0, &qword_1C6EF53C0);
        if (v22)
        {
          goto LABEL_7;
        }

LABEL_17:
        v17 = 0;
        return v17 & 1;
      }

      sub_1C6EB6478(v21, type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_ModelStatus);
      sub_1C6EB6478(v10, type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_ModelStatus);
      v18 = &qword_1EC1F94D0;
      v19 = &qword_1C6EF53C0;
LABEL_16:
      sub_1C6EB6540(v13, v18, v19);
      goto LABEL_17;
    }

    sub_1C6EB6478(v10, type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_ModelStatus);
LABEL_10:
    v18 = &qword_1EC1F94D8;
    v19 = &qword_1C6EF53C8;
    goto LABEL_16;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
    goto LABEL_10;
  }

  sub_1C6EB6540(v13, &qword_1EC1F94D0, &qword_1C6EF53C0);
LABEL_7:
  sub_1C6EE4430();
  sub_1C6EB45CC(&qword_1EDEF6870, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v17 = sub_1C6EE4A50();
  return v17 & 1;
}

uint64_t sub_1C6EB53E4(void *a1, void *a2)
{
  v4 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_RatedArticleData(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F94A8, &qword_1C6EF53B0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F94B0, &qword_1C6EF53B8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v21 - v12;
  if (*a1 != *a2 && (sub_1C6EE54B0() & 1) == 0)
  {
    goto LABEL_12;
  }

  v22 = v7;
  v21 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_AddRatedArticlesRequest(0);
  v14 = *(v21 + 28);
  v15 = *(v11 + 48);
  sub_1C6EB64D8(a1 + v14, v13, &qword_1EC1F94A8, &qword_1C6EF53B0);
  sub_1C6EB64D8(a2 + v14, &v13[v15], &qword_1EC1F94A8, &qword_1C6EF53B0);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      sub_1C6EB6540(v13, &qword_1EC1F94A8, &qword_1C6EF53B0);
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  sub_1C6EB64D8(v13, v10, &qword_1EC1F94A8, &qword_1C6EF53B0);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    sub_1C6EB6478(v10, type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_RatedArticleData);
LABEL_8:
    sub_1C6EB6540(v13, &qword_1EC1F94B0, &qword_1C6EF53B8);
LABEL_12:
    v19 = 0;
    return v19 & 1;
  }

  v17 = v22;
  sub_1C6EB6410(&v13[v15], v22, type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_RatedArticleData);
  v18 = sub_1C6EB5C0C(v10, v17);
  sub_1C6EB6478(v17, type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_RatedArticleData);
  sub_1C6EB6478(v10, type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_RatedArticleData);
  sub_1C6EB6540(v13, &qword_1EC1F94A8, &qword_1C6EF53B0);
  if ((v18 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_10:
  if ((sub_1C6E59C5C(a1[2], a2[2]) & 1) == 0)
  {
    goto LABEL_12;
  }

  sub_1C6EE4430();
  sub_1C6EB45CC(&qword_1EDEF6870, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v19 = sub_1C6EE4A50();
  return v19 & 1;
}

uint64_t sub_1C6EB5778(float *a1, float *a2)
{
  v4 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_ArticleData(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8318, &qword_1C6EEC740);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = (&v29 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8320, &qword_1C6EEC748);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v29 - v12;
  if (*a1 != *a2 && (sub_1C6EE54B0() & 1) == 0)
  {
    goto LABEL_30;
  }

  v14 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_ScoredArticleEntity(0);
  v15 = *(v14 + 28);
  v16 = a1;
  v17 = *(v11 + 48);
  v29 = v14;
  v30 = v16;
  sub_1C6EB64D8(v16 + v15, v13, &qword_1EC1F8318, &qword_1C6EEC740);
  v18 = a2 + v15;
  v19 = a2;
  sub_1C6EB64D8(v18, &v13[v17], &qword_1EC1F8318, &qword_1C6EEC740);
  v20 = *(v5 + 48);
  if (v20(v13, 1, v4) == 1)
  {
    if (v20(&v13[v17], 1, v4) == 1)
    {
      sub_1C6EB6540(v13, &qword_1EC1F8318, &qword_1C6EEC740);
      goto LABEL_6;
    }

    goto LABEL_10;
  }

  sub_1C6EB64D8(v13, v10, &qword_1EC1F8318, &qword_1C6EEC740);
  if (v20(&v13[v17], 1, v4) == 1)
  {
    sub_1C6EB6478(v10, type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_ArticleData);
LABEL_10:
    v22 = &qword_1EC1F8320;
    v23 = &qword_1C6EEC748;
LABEL_29:
    sub_1C6EB6540(v13, v22, v23);
    goto LABEL_30;
  }

  sub_1C6EB6410(&v13[v17], v7, type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_ArticleData);
  v24 = *v10 == *v7 && v10[1] == v7[1];
  if (!v24 && (sub_1C6EE54B0() & 1) == 0 || (v10[2] == v7[2] ? (v25 = v10[3] == v7[3]) : (v25 = 0), !v25 && (sub_1C6EE54B0() & 1) == 0 || (v10[4] == v7[4] ? (v26 = v10[5] == v7[5]) : (v26 = 0), !v26 && (sub_1C6EE54B0() & 1) == 0)))
  {
    sub_1C6EB6478(v7, type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_ArticleData);
    sub_1C6EB6478(v10, type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_ArticleData);
    v22 = &qword_1EC1F8318;
    v23 = &qword_1C6EEC740;
    goto LABEL_29;
  }

  sub_1C6EE4430();
  sub_1C6EB45CC(&qword_1EDEF6870, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v19 = a2;
  v27 = sub_1C6EE4A50();
  sub_1C6EB6478(v7, type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_ArticleData);
  sub_1C6EB6478(v10, type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_ArticleData);
  sub_1C6EB6540(v13, &qword_1EC1F8318, &qword_1C6EEC740);
  if ((v27 & 1) == 0)
  {
    goto LABEL_30;
  }

LABEL_6:
  if (v30[4] != v19[4])
  {
LABEL_30:
    v21 = 0;
    return v21 & 1;
  }

  sub_1C6EE4430();
  sub_1C6EB45CC(&qword_1EDEF6870, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v21 = sub_1C6EE4A50();
  return v21 & 1;
}

uint64_t sub_1C6EB5C0C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Ratings_Rating(0);
  v46 = *(v4 - 8);
  v47 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v41 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8308, &unk_1C6EEC730);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v42 = &v40 - v7;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8310, &unk_1C6EF53A0);
  MEMORY[0x1EEE9AC00](v45);
  v48 = &v40 - v8;
  v9 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_ArticleData(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v43 = (&v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8318, &qword_1C6EEC740);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = (&v40 - v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8320, &qword_1C6EEC748);
  v16 = v15 - 8;
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v40 - v17;
  v44 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_RatedArticleData(0);
  v19 = *(v44 + 20);
  v20 = *(v16 + 56);
  v49 = a1;
  sub_1C6EB64D8(a1 + v19, v18, &qword_1EC1F8318, &qword_1C6EEC740);
  v21 = a2 + v19;
  v22 = a2;
  sub_1C6EB64D8(v21, &v18[v20], &qword_1EC1F8318, &qword_1C6EEC740);
  v23 = *(v10 + 48);
  if (v23(v18, 1, v9) == 1)
  {
    if (v23(&v18[v20], 1, v9) == 1)
    {
      sub_1C6EB6540(v18, &qword_1EC1F8318, &qword_1C6EEC740);
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  sub_1C6EB64D8(v18, v14, &qword_1EC1F8318, &qword_1C6EEC740);
  if (v23(&v18[v20], 1, v9) == 1)
  {
    sub_1C6EB6478(v14, type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_ArticleData);
LABEL_9:
    v29 = &qword_1EC1F8320;
    v30 = &qword_1C6EEC748;
LABEL_25:
    v34 = v18;
    goto LABEL_26;
  }

  v31 = v43;
  sub_1C6EB6410(&v18[v20], v43, type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_ArticleData);
  if ((*v14 != *v31 || v14[1] != v31[1]) && (sub_1C6EE54B0() & 1) == 0 || (v14[2] != v31[2] || v14[3] != v31[3]) && (sub_1C6EE54B0() & 1) == 0 || (v14[4] != v31[4] || v14[5] != v31[5]) && (sub_1C6EE54B0() & 1) == 0)
  {
    sub_1C6EB6478(v31, type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_ArticleData);
    sub_1C6EB6478(v14, type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_ArticleData);
    v29 = &qword_1EC1F8318;
    v30 = &qword_1C6EEC740;
    goto LABEL_25;
  }

  sub_1C6EE4430();
  sub_1C6EB45CC(&qword_1EDEF6870, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v32 = sub_1C6EE4A50();
  sub_1C6EB6478(v31, type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_ArticleData);
  sub_1C6EB6478(v14, type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_ArticleData);
  sub_1C6EB6540(v18, &qword_1EC1F8318, &qword_1C6EEC740);
  if ((v32 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_4:
  v24 = *(v44 + 24);
  v25 = *(v45 + 48);
  v26 = v48;
  sub_1C6EB64D8(v49 + v24, v48, &qword_1EC1F8308, &unk_1C6EEC730);
  sub_1C6EB64D8(v22 + v24, v26 + v25, &qword_1EC1F8308, &unk_1C6EEC730);
  v27 = v47;
  v28 = *(v46 + 48);
  if (v28(v26, 1, v47) == 1)
  {
    if (v28(v26 + v25, 1, v27) == 1)
    {
      sub_1C6EB6540(v26, &qword_1EC1F8308, &unk_1C6EEC730);
LABEL_30:
      sub_1C6EE4430();
      sub_1C6EB45CC(&qword_1EDEF6870, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      v35 = sub_1C6EE4A50();
      return v35 & 1;
    }

    goto LABEL_23;
  }

  v33 = v42;
  sub_1C6EB64D8(v26, v42, &qword_1EC1F8308, &unk_1C6EEC730);
  if (v28(v26 + v25, 1, v27) == 1)
  {
    sub_1C6EB6478(v33, type metadata accessor for Com_Apple_News_Algorithms_Proto_Ratings_Rating);
LABEL_23:
    v29 = &qword_1EC1F8310;
    v30 = &unk_1C6EF53A0;
    v34 = v26;
LABEL_26:
    sub_1C6EB6540(v34, v29, v30);
    goto LABEL_27;
  }

  v37 = v26 + v25;
  v38 = v41;
  sub_1C6EB6410(v37, v41, type metadata accessor for Com_Apple_News_Algorithms_Proto_Ratings_Rating);
  v39 = sub_1C6E700A8();
  sub_1C6EB6478(v38, type metadata accessor for Com_Apple_News_Algorithms_Proto_Ratings_Rating);
  sub_1C6EB6478(v33, type metadata accessor for Com_Apple_News_Algorithms_Proto_Ratings_Rating);
  sub_1C6EB6540(v26, &qword_1EC1F8308, &unk_1C6EEC730);
  if (v39)
  {
    goto LABEL_30;
  }

LABEL_27:
  v35 = 0;
  return v35 & 1;
}

uint64_t sub_1C6EB630C(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1C6EE54B0() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (sub_1C6EE54B0() & 1) == 0 || (a1[4] != a2[4] || a1[5] != a2[5]) && (sub_1C6EE54B0() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_ArticleData(0);
  sub_1C6EE4430();
  sub_1C6EB45CC(&qword_1EDEF6870, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1C6EE4A50() & 1;
}

uint64_t sub_1C6EB6410(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C6EB6478(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1C6EB64D8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1C6EB6540(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1C6EB6608(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_1C6EE4430();
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1C6EB66A4(uint64_t a1)
{
  result = sub_1C6EE4430();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1C6EB6750(uint64_t a1)
{
  sub_1C6EE4430();
  if (v1 <= 0x3F)
  {
    sub_1C6EB684C(319, &qword_1EC1F9520, type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_ArticleData, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1C6EB684C(319, &qword_1EC1F9358, type metadata accessor for Com_Apple_News_Algorithms_Proto_Ratings_Rating, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1C6EB684C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1C6EB68D8(uint64_t a1)
{
  sub_1C6EB684C(319, &qword_1EC1F9538, type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_RatedArticleData, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1C6EE4430();
    if (v2 <= 0x3F)
    {
      sub_1C6EB684C(319, &qword_1EC1F9540, type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_RatedArticleData, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1C6EB6A0C(uint64_t a1)
{
  sub_1C6EE4430();
  if (v1 <= 0x3F)
  {
    sub_1C6EB684C(319, &qword_1EC1F9520, type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_ArticleData, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C6EB6B00(uint64_t a1)
{
  sub_1C6EB684C(319, &qword_1EC1F9568, type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_ScoredArticleEntity, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1C6EE4430();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_35Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  if (a2 == 0x7FFFFFFF)
  {
    v6 = *(a1 + 8);
    if (v6 >= 0xFFFFFFFF)
    {
      LODWORD(v6) = -1;
    }

    return (v6 + 1);
  }

  else
  {
    v12 = sub_1C6EE4430();
    v13 = *(v12 - 8);
    if (*(v13 + 84) == a2)
    {
      v14 = v12;
      v15 = *(v13 + 48);
      v16 = a1 + *(a3 + 24);

      return v15(v16, a2, v14);
    }

    else
    {
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
      v18 = *(*(v17 - 8) + 48);
      v19 = a1 + *(a3 + 28);

      return v18(v19, a2, v17);
    }
  }
}

uint64_t __swift_store_extra_inhabitant_index_36Tm(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v12 = sub_1C6EE4430();
    v13 = *(v12 - 8);
    if (*(v13 + 84) == a3)
    {
      v14 = v12;
      v15 = *(v13 + 56);
      v16 = v7 + *(a4 + 24);

      return v15(v16, a2, a2, v14);
    }

    else
    {
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
      v18 = *(*(v17 - 8) + 56);
      v19 = v7 + *(a4 + 28);

      return v18(v19, a2, a2, v17);
    }
  }

  return result;
}

void sub_1C6EB6E6C(uint64_t a1)
{
  sub_1C6E953AC();
  if (v1 <= 0x3F)
  {
    sub_1C6EE4430();
    if (v2 <= 0x3F)
    {
      sub_1C6EB684C(319, &qword_1EC1F9580, type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_ModelStatus, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1C6EB7038(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_1C6EE44B0();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      if (result == 1)
      {
        sub_1C6EB7138(a1, v5, a2, a3);
      }

      else if (result == 2)
      {
        type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabTokenEmbedding(0);
        sub_1C6EBB3D4(&qword_1EC1F95F0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabTokenEmbedding, &unk_1C6EF5B48);
        sub_1C6EE4590();
      }

      result = sub_1C6EE44B0();
    }
  }

  return result;
}

uint64_t sub_1C6EB7138(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabEmbedding(0);
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabEmbeddingMetadata(0);
  sub_1C6EBB3D4(&qword_1EC1F9650, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabEmbeddingMetadata, &unk_1C6EF5F80);
  return sub_1C6EE45A0();
}

uint64_t sub_1C6EB71EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C6EB72E8(v3, a1, a2, a3);
  if (!v4)
  {
    if (*(*v3 + 16))
    {
      type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabTokenEmbedding(0);
      sub_1C6EBB3D4(&qword_1EC1F95F0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabTokenEmbedding, &unk_1C6EF5B48);
      sub_1C6EE46D0();
    }

    type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabEmbedding(0);
    return sub_1C6EE4410();
  }

  return result;
}

uint64_t sub_1C6EB72E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F9690, &qword_1C6EF6160);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabEmbeddingMetadata(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabEmbedding(0);
  sub_1C6EBD530(a1 + *(v12 + 24), v7, &qword_1EC1F9690, &qword_1C6EF6160);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1C6EBD598(v7, &qword_1EC1F9690, &qword_1C6EF6160);
  }

  sub_1C6EBD4C8(v7, v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabEmbeddingMetadata);
  sub_1C6EBB3D4(&qword_1EC1F9650, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabEmbeddingMetadata, &unk_1C6EF5F80);
  sub_1C6EE46E0();
  return sub_1C6EBD468(v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabEmbeddingMetadata);
}

uint64_t sub_1C6EB74F8@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = MEMORY[0x1E69E7CC0];
  sub_1C6EE4420();
  v4 = *(a1 + 24);
  v5 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabEmbeddingMetadata(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(&a2[v4], 1, 1, v5);
}

uint64_t sub_1C6EB75F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6EBB3D4(&qword_1EC1F9688, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabEmbedding, &unk_1C6EF60B0);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6EB7698(uint64_t a1)
{
  v2 = sub_1C6EBB3D4(&qword_1EC1F9670, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabEmbedding, &unk_1C6EF60E8);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6EB7704(uint64_t a1, uint64_t a2)
{
  sub_1C6EBB3D4(&qword_1EC1F9670, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabEmbedding, &unk_1C6EF60E8);

  return sub_1C6EE45F0();
}

uint64_t sub_1C6EB7784()
{
  v0 = sub_1C6EE4720();
  __swift_allocate_value_buffer(v0, qword_1EC213118);
  __swift_project_value_buffer(v0, qword_1EC213118);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8210, &unk_1C6EEC6D0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8218, &unk_1C6EECEC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C6EE65B0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "uuid";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C6EE46F0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "dimension";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "normalizer_index";
  *(v11 + 8) = 16;
  *(v11 + 16) = 2;
  v9();
  return sub_1C6EE4700();
}

uint64_t sub_1C6EB79A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_1C6EE44B0();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        sub_1C6EB7B08(a1, v5, a2, a3);
        break;
      case 2:
        sub_1C6EE4540();
        break;
      case 1:
        sub_1C6EB7A54(a1, v5, a2, a3);
        break;
    }
  }

  return result;
}

uint64_t sub_1C6EB7A54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabEmbeddingMetadata(0);
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID(0);
  sub_1C6EBB3D4(qword_1EDEF7D30, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID, &unk_1C6EF08BC);
  return sub_1C6EE45A0();
}

uint64_t sub_1C6EB7B08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1C6EE4400();
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TokenNormalizer(0);
  sub_1C6EBB3D4(&qword_1EC1F9630, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TokenNormalizer, &unk_1C6EF5E18);
  sub_1C6EBB3D4(&qword_1EC1F9638, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TokenNormalizer, &unk_1C6EF5D50);
  return sub_1C6EE4490();
}

uint64_t sub_1C6EB7C00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C6EB7D78(v3, a1, a2, a3);
  if (!v4)
  {
    if (*v3)
    {
      sub_1C6EE4690();
    }

    if (*(*(v3 + 8) + 16))
    {
      sub_1C6EE4400();
      type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TokenNormalizer(0);
      sub_1C6EBB3D4(&qword_1EC1F9630, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TokenNormalizer, &unk_1C6EF5E18);
      sub_1C6EBB3D4(&qword_1EC1F9638, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TokenNormalizer, &unk_1C6EF5D50);
      sub_1C6EE4610();
    }

    type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabEmbeddingMetadata(0);
    return sub_1C6EE4410();
  }

  return result;
}

uint64_t sub_1C6EB7D78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7EF0, &unk_1C6EE9280);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabEmbeddingMetadata(0);
  sub_1C6EBD530(a1 + *(v12 + 28), v7, &qword_1EC1F7EF0, &unk_1C6EE9280);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1C6EBD598(v7, &qword_1EC1F7EF0, &unk_1C6EE9280);
  }

  sub_1C6EBD4C8(v7, v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
  sub_1C6EBB3D4(qword_1EDEF7D30, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID, &unk_1C6EF08BC);
  sub_1C6EE46E0();
  return sub_1C6EBD468(v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
}

uint64_t sub_1C6EB7F8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = sub_1C6E0CE3C(MEMORY[0x1E69E7CC0]);
  sub_1C6EE4420();
  v4 = *(a1 + 28);
  v5 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(a2 + v4, 1, 1, v5);
}

uint64_t sub_1C6EB8094(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6EBB3D4(&qword_1EC1F96A0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabEmbeddingMetadata, &unk_1C6EF5F48);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6EB8134(uint64_t a1)
{
  v2 = sub_1C6EBB3D4(&qword_1EC1F9650, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabEmbeddingMetadata, &unk_1C6EF5F80);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6EB81A0(uint64_t a1, uint64_t a2)
{
  sub_1C6EBB3D4(&qword_1EC1F9650, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabEmbeddingMetadata, &unk_1C6EF5F80);

  return sub_1C6EE45F0();
}

uint64_t sub_1C6EB8220()
{
  v0 = sub_1C6EE4720();
  __swift_allocate_value_buffer(v0, qword_1EC213130);
  __swift_project_value_buffer(v0, qword_1EC213130);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8210, &unk_1C6EEC6D0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8218, &unk_1C6EECEC0) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1C6EE6590;
  v4 = v3 + v2 + v1[14];
  *(v3 + v2) = 1;
  *v4 = "subs";
  *(v4 + 8) = 4;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1C6EE46F0();
  (*(*(v6 - 8) + 104))(v4, v5, v6);
  return sub_1C6EE4700();
}

uint64_t sub_1C6EB838C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C6EE44B0();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 1)
      {
        type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_StringSub(0);
        sub_1C6EBB3D4(&qword_1EC1F9610, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_StringSub, &unk_1C6EF5CB0);
        sub_1C6EE4590();
      }

      result = sub_1C6EE44B0();
    }
  }

  return result;
}

uint64_t sub_1C6EB846C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_StringSub(0), sub_1C6EBB3D4(&qword_1EC1F9610, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_StringSub, &unk_1C6EF5CB0), result = sub_1C6EE46D0(), !v4))
  {
    type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TokenNormalizer(0);
    return sub_1C6EE4410();
  }

  return result;
}

uint64_t sub_1C6EB85F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6EBB3D4(&qword_1EC1F96A8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TokenNormalizer, &unk_1C6EF5DE0);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6EB8690(uint64_t a1)
{
  v2 = sub_1C6EBB3D4(&qword_1EC1F9630, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TokenNormalizer, &unk_1C6EF5E18);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6EB86FC(uint64_t a1, uint64_t a2)
{
  sub_1C6EBB3D4(&qword_1EC1F9630, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TokenNormalizer, &unk_1C6EF5E18);

  return sub_1C6EE45F0();
}

uint64_t sub_1C6EB8778(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if ((sub_1C6E5AAB0(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  sub_1C6EE4430();
  sub_1C6EBB3D4(&qword_1EDEF6870, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1C6EE4A50() & 1;
}

uint64_t sub_1C6EB8840(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_1C6EE4720();
  __swift_allocate_value_buffer(v7, a2);
  __swift_project_value_buffer(v7, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8210, &unk_1C6EEC6D0);
  v8 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8218, &unk_1C6EECEC0) - 8);
  v9 = *(*v8 + 72);
  v10 = (*(*v8 + 80) + 32) & ~*(*v8 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1C6EE6B40;
  v12 = (v11 + v10);
  v13 = v11 + v10 + v8[14];
  *v12 = 1;
  *v13 = a3;
  *(v13 + 8) = 6;
  *(v13 + 16) = 2;
  v14 = *MEMORY[0x1E69AADC8];
  v15 = sub_1C6EE46F0();
  v16 = *(*(v15 - 8) + 104);
  (v16)(v13, v14, v15);
  v17 = v12 + v9 + v8[14];
  *(v12 + v9) = 2;
  *v17 = a4;
  *(v17 + 1) = a5;
  v17[16] = 2;
  v16();
  return sub_1C6EE4700();
}

uint64_t sub_1C6EB89FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_1C6EE44B0();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 1 || result == 2)
    {
      sub_1C6EE4580();
    }
  }

  return result;
}

uint64_t sub_1C6EB8A7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3[1];
  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6 || (result = sub_1C6EE46C0(), !v4))
  {
    v8 = v3[3];
    v9 = HIBYTE(v8) & 0xF;
    if ((v8 & 0x2000000000000000) == 0)
    {
      v9 = v3[2] & 0xFFFFFFFFFFFFLL;
    }

    if (!v9 || (result = sub_1C6EE46C0(), !v4))
    {
      type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_StringSub(0);
      return sub_1C6EE4410();
    }
  }

  return result;
}

uint64_t sub_1C6EB8B40@<X0>(void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  a2[2] = 0;
  a2[3] = 0xE000000000000000;
  return sub_1C6EE4420();
}

uint64_t sub_1C6EB8BE0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6EBB3D4(&qword_1EC1F96B0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_StringSub, &unk_1C6EF5C78);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6EB8C80(uint64_t a1)
{
  v2 = sub_1C6EBB3D4(&qword_1EC1F9610, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_StringSub, &unk_1C6EF5CB0);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6EB8CEC(uint64_t a1, uint64_t a2)
{
  sub_1C6EBB3D4(&qword_1EC1F9610, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_StringSub, &unk_1C6EF5CB0);

  return sub_1C6EE45F0();
}

uint64_t sub_1C6EB8D68(uint64_t *a1, void *a2, uint64_t a3)
{
  v5 = *a1 == *a2 && a1[1] == a2[1];
  if (!v5 && (sub_1C6EE54B0() & 1) == 0)
  {
    return 0;
  }

  v6 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v6 && (sub_1C6EE54B0() & 1) == 0)
  {
    return 0;
  }

  sub_1C6EE4430();
  sub_1C6EBB3D4(&qword_1EDEF6870, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1C6EE4A50() & 1;
}

uint64_t sub_1C6EB8E44()
{
  v0 = sub_1C6EE4720();
  __swift_allocate_value_buffer(v0, qword_1EC213160);
  __swift_project_value_buffer(v0, qword_1EC213160);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8210, &unk_1C6EEC6D0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8218, &unk_1C6EECEC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C6EE6B40;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "collab_token";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C6EE46F0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "float16_vector";
  *(v10 + 1) = 14;
  v10[16] = 2;
  v9();
  return sub_1C6EE4700();
}

uint64_t sub_1C6EB900C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_1C6EE44B0();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1C6EB90A0(a1, v5, a2, a3);
    }

    else if (result == 2)
    {
      sub_1C6EB9154(a1, v5, a2, a3);
    }
  }

  return result;
}

uint64_t sub_1C6EB90A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabTokenEmbedding(0);
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabToken(0);
  sub_1C6EBB3D4(&qword_1EC1F95D0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabToken, &unk_1C6EF59E0);
  return sub_1C6EE45A0();
}

uint64_t sub_1C6EB9154(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabTokenEmbedding(0);
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0);
  sub_1C6EBB3D4(qword_1EDEF7740, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List, &unk_1C6EF3588);
  return sub_1C6EE45A0();
}

uint64_t sub_1C6EB9208(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C6EB9278(v3, a1, a2, a3);
  if (!v4)
  {
    sub_1C6EB9488(v3, a1, a2, a3);
    return sub_1C6EE4410();
  }

  return result;
}

uint64_t sub_1C6EB9278(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8358, &qword_1C6EEC780);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabToken(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabTokenEmbedding(0);
  sub_1C6EBD530(a1 + *(v12 + 20), v7, &qword_1EC1F8358, &qword_1C6EEC780);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1C6EBD598(v7, &qword_1EC1F8358, &qword_1C6EEC780);
  }

  sub_1C6EBD4C8(v7, v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabToken);
  sub_1C6EBB3D4(&qword_1EC1F95D0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabToken, &unk_1C6EF59E0);
  sub_1C6EE46E0();
  return sub_1C6EBD468(v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabToken);
}

uint64_t sub_1C6EB9488(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8328, &unk_1C6EEC750);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabTokenEmbedding(0);
  sub_1C6EBD530(a1 + *(v12 + 24), v7, &qword_1EC1F8328, &unk_1C6EEC750);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1C6EBD598(v7, &qword_1EC1F8328, &unk_1C6EEC750);
  }

  sub_1C6EBD4C8(v7, v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  sub_1C6EBB3D4(qword_1EDEF7740, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List, &unk_1C6EF3588);
  sub_1C6EE46E0();
  return sub_1C6EBD468(v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
}

uint64_t sub_1C6EB9698@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C6EE4420();
  v4 = *(a1 + 20);
  v5 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabToken(0);
  (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v6 = *(a1 + 24);
  v7 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a2 + v6, 1, 1, v7);
}

uint64_t sub_1C6EB9778@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C6EE4430();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_1C6EB97E0(uint64_t a1)
{
  v3 = sub_1C6EE4430();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t sub_1C6EB989C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6EBB3D4(&qword_1EC1F96B8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabTokenEmbedding, &unk_1C6EF5B10);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6EB993C(uint64_t a1)
{
  v2 = sub_1C6EBB3D4(&qword_1EC1F95F0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabTokenEmbedding, &unk_1C6EF5B48);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6EB99A8(uint64_t a1, uint64_t a2)
{
  sub_1C6EBB3D4(&qword_1EC1F95F0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabTokenEmbedding, &unk_1C6EF5B48);

  return sub_1C6EE45F0();
}

uint64_t sub_1C6EB9A28()
{
  v0 = sub_1C6EE4720();
  __swift_allocate_value_buffer(v0, qword_1EC213178);
  __swift_project_value_buffer(v0, qword_1EC213178);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8210, &unk_1C6EEC6D0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8218, &unk_1C6EECEC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C6EE6B40;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "token";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C6EE46F0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "target_token_spec";
  *(v10 + 1) = 17;
  v10[16] = 2;
  v9();
  return sub_1C6EE4700();
}

uint64_t sub_1C6EB9BF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_1C6EE44B0();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1C6EE4580();
    }

    else if (result == 2)
    {
      sub_1C6EB9C88(a1, v5, a2, a3);
    }
  }

  return result;
}

uint64_t sub_1C6EB9C88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabToken(0);
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TargetTokenSpec(0);
  sub_1C6EBB3D4(&qword_1EC1F95B0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TargetTokenSpec, &unk_1C6EF5878);
  return sub_1C6EE45A0();
}

uint64_t sub_1C6EB9D3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = v3[1];
  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9 || (result = sub_1C6EE46C0(), !v4))
  {
    result = sub_1C6EB9DE8(v3, a1, a2, a3);
    if (!v4)
    {
      type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabToken(0);
      return sub_1C6EE4410();
    }
  }

  return result;
}

uint64_t sub_1C6EB9DE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8348, &qword_1C6EEC770);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TargetTokenSpec(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabToken(0);
  sub_1C6EBD530(a1 + *(v12 + 24), v7, &qword_1EC1F8348, &qword_1C6EEC770);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1C6EBD598(v7, &qword_1EC1F8348, &qword_1C6EEC770);
  }

  sub_1C6EBD4C8(v7, v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TargetTokenSpec);
  sub_1C6EBB3D4(&qword_1EC1F95B0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TargetTokenSpec, &unk_1C6EF5878);
  sub_1C6EE46E0();
  return sub_1C6EBD468(v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TargetTokenSpec);
}

uint64_t sub_1C6EB9FFC@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  *(a2 + 1) = 0xE000000000000000;
  sub_1C6EE4420();
  v4 = *(a1 + 24);
  v5 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TargetTokenSpec(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(&a2[v4], 1, 1, v5);
}

uint64_t sub_1C6EBA0F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6EBB3D4(&qword_1EC1F96C0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabToken, &unk_1C6EF59A8);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6EBA198(uint64_t a1)
{
  v2 = sub_1C6EBB3D4(&qword_1EC1F95D0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabToken, &unk_1C6EF59E0);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6EBA204(uint64_t a1, uint64_t a2)
{
  sub_1C6EBB3D4(&qword_1EC1F95D0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabToken, &unk_1C6EF59E0);

  return sub_1C6EE45F0();
}

uint64_t sub_1C6EBA284()
{
  v0 = sub_1C6EE4720();
  __swift_allocate_value_buffer(v0, qword_1EC213190);
  __swift_project_value_buffer(v0, qword_1EC213190);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8210, &unk_1C6EEC6D0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8218, &unk_1C6EECEC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C6EE6B40;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "is_target";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C6EE46F0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "normalization_spec";
  *(v10 + 1) = 18;
  v10[16] = 2;
  v9();
  return sub_1C6EE4700();
}

uint64_t sub_1C6EBA44C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_1C6EE44B0();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1C6EE44D0();
    }

    else if (result == 2)
    {
      sub_1C6EBA4DC(a1, v5, a2, a3);
    }
  }

  return result;
}

uint64_t sub_1C6EBA4DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TargetTokenSpec(0);
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TokenNormalizationSpec(0);
  sub_1C6EBB3D4(&qword_1EC1F9590, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TokenNormalizationSpec, &unk_1C6EF5710);
  return sub_1C6EE45A0();
}

uint64_t sub_1C6EBA590(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*v3 != 1 || (result = sub_1C6EE4650(), !v4))
  {
    result = sub_1C6EBA638(v3, a1, a2, a3);
    if (!v4)
    {
      type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TargetTokenSpec(0);
      return sub_1C6EE4410();
    }
  }

  return result;
}

uint64_t sub_1C6EBA638(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8338, &qword_1C6EEC760);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TokenNormalizationSpec(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TargetTokenSpec(0);
  sub_1C6EBD530(a1 + *(v12 + 24), v7, &qword_1EC1F8338, &qword_1C6EEC760);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1C6EBD598(v7, &qword_1EC1F8338, &qword_1C6EEC760);
  }

  sub_1C6EBD4C8(v7, v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TokenNormalizationSpec);
  sub_1C6EBB3D4(&qword_1EC1F9590, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TokenNormalizationSpec, &unk_1C6EF5710);
  sub_1C6EE46E0();
  return sub_1C6EBD468(v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TokenNormalizationSpec);
}

uint64_t sub_1C6EBA84C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  *a2 = 0;
  sub_1C6EE4420();
  v4 = *(a1 + 24);
  v5 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TokenNormalizationSpec(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(&a2[v4], 1, 1, v5);
}

uint64_t sub_1C6EBA8EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_1C6EE4430();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1C6EBA960(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 20);
  v5 = sub_1C6EE4430();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_1C6EBAA2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6EBB3D4(&qword_1EC1F96C8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TargetTokenSpec, &unk_1C6EF5840);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6EBAACC(uint64_t a1)
{
  v2 = sub_1C6EBB3D4(&qword_1EC1F95B0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TargetTokenSpec, &unk_1C6EF5878);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6EBAB38(uint64_t a1, uint64_t a2)
{
  sub_1C6EBB3D4(&qword_1EC1F95B0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TargetTokenSpec, &unk_1C6EF5878);

  return sub_1C6EE45F0();
}

uint64_t sub_1C6EBABB8()
{
  v0 = sub_1C6EE4720();
  __swift_allocate_value_buffer(v0, qword_1EC2131A8);
  __swift_project_value_buffer(v0, qword_1EC2131A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8210, &unk_1C6EEC6D0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8218, &unk_1C6EECEC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C6EE6B40;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "should_normalize";
  *(v6 + 8) = 16;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C6EE46F0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "normalizer_index_key";
  *(v10 + 1) = 20;
  v10[16] = 2;
  v9();
  return sub_1C6EE4700();
}

uint64_t sub_1C6EBAD80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_1C6EE44B0();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1C6EE44D0();
    }

    else if (result == 2)
    {
      sub_1C6EE4580();
    }
  }

  return result;
}

uint64_t sub_1C6EBAE0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*v3 != 1 || (result = sub_1C6EE4650(), !v4))
  {
    v6 = *(v3 + 16);
    v7 = HIBYTE(v6) & 0xF;
    if ((v6 & 0x2000000000000000) == 0)
    {
      v7 = *(v3 + 8) & 0xFFFFFFFFFFFFLL;
    }

    if (!v7 || (result = sub_1C6EE46C0(), !v4))
    {
      type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TokenNormalizationSpec(0);
      return sub_1C6EE4410();
    }
  }

  return result;
}

uint64_t sub_1C6EBAEC8@<X0>(uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0xE000000000000000;
  return sub_1C6EE4420();
}

uint64_t sub_1C6EBAF10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = sub_1C6EE4430();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1C6EBAF84(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = sub_1C6EE4430();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_1C6EBB050(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6EBB3D4(&qword_1EC1F96D0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TokenNormalizationSpec, &unk_1C6EF56D8);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6EBB0F0@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_1C6EE4720();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t sub_1C6EBB18C(uint64_t a1)
{
  v2 = sub_1C6EBB3D4(&qword_1EC1F9590, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TokenNormalizationSpec, &unk_1C6EF5710);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6EBB1F8(uint64_t a1, uint64_t a2)
{
  sub_1C6EE5580();
  sub_1C6EE4A00();
  return sub_1C6EE55A0();
}

uint64_t sub_1C6EBB250(uint64_t a1, uint64_t a2)
{
  sub_1C6EBB3D4(&qword_1EC1F9590, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TokenNormalizationSpec, &unk_1C6EF5710);

  return sub_1C6EE45F0();
}

uint64_t sub_1C6EBB2CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C6EE5580();
  sub_1C6EE4A00();
  return sub_1C6EE55A0();
}

uint64_t sub_1C6EBB3D4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C6EBBC94(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C6EBBDA4(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = *(a1 + 1) == *(a2 + 1) && *(a1 + 2) == *(a2 + 2);
  if (!v3 && (sub_1C6EE54B0() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TokenNormalizationSpec(0);
  sub_1C6EE4430();
  sub_1C6EBB3D4(&qword_1EDEF6870, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1C6EE4A50() & 1;
}

uint64_t sub_1C6EBBE74(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TokenNormalizationSpec(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8338, &qword_1C6EEC760);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v23 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8340, &qword_1C6EEC768);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v23 - v12;
  if (*a1 != *a2)
  {
    goto LABEL_12;
  }

  v23 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TargetTokenSpec(0);
  v24 = a2;
  v14 = *(v23 + 24);
  v15 = *(v11 + 48);
  sub_1C6EBD530(&a1[v14], v13, &qword_1EC1F8338, &qword_1C6EEC760);
  sub_1C6EBD530(&v24[v14], &v13[v15], &qword_1EC1F8338, &qword_1C6EEC760);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_1C6EBD530(v13, v10, &qword_1EC1F8338, &qword_1C6EEC760);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      sub_1C6EBD4C8(&v13[v15], v7, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TokenNormalizationSpec);
      if (*v10 == *v7)
      {
        v21 = *(v10 + 1) == *(v7 + 1) && *(v10 + 2) == *(v7 + 2);
        if (v21 || (sub_1C6EE54B0() & 1) != 0)
        {
          sub_1C6EE4430();
          sub_1C6EBB3D4(&qword_1EDEF6870, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
          v22 = sub_1C6EE4A50();
          sub_1C6EBD468(v7, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TokenNormalizationSpec);
          sub_1C6EBD468(v10, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TokenNormalizationSpec);
          sub_1C6EBD598(v13, &qword_1EC1F8338, &qword_1C6EEC760);
          if (v22)
          {
            goto LABEL_5;
          }

LABEL_12:
          v17 = 0;
          return v17 & 1;
        }
      }

      sub_1C6EBD468(v7, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TokenNormalizationSpec);
      sub_1C6EBD468(v10, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TokenNormalizationSpec);
      v18 = &qword_1EC1F8338;
      v19 = &qword_1C6EEC760;
LABEL_11:
      sub_1C6EBD598(v13, v18, v19);
      goto LABEL_12;
    }

    sub_1C6EBD468(v10, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TokenNormalizationSpec);
LABEL_8:
    v18 = &qword_1EC1F8340;
    v19 = &qword_1C6EEC768;
    goto LABEL_11;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
    goto LABEL_8;
  }

  sub_1C6EBD598(v13, &qword_1EC1F8338, &qword_1C6EEC760);
LABEL_5:
  sub_1C6EE4430();
  sub_1C6EBB3D4(&qword_1EDEF6870, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v17 = sub_1C6EE4A50();
  return v17 & 1;
}

uint64_t sub_1C6EBC2A8(void *a1, void *a2)
{
  v4 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TargetTokenSpec(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8348, &qword_1C6EEC770);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8350, &qword_1C6EEC778);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v21 - v12;
  if (*a1 != *a2 && (sub_1C6EE54B0() & 1) == 0)
  {
    goto LABEL_9;
  }

  v21 = v7;
  v22 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabToken(0);
  v14 = *(v22 + 24);
  v15 = *(v11 + 48);
  sub_1C6EBD530(a1 + v14, v13, &qword_1EC1F8348, &qword_1C6EEC770);
  sub_1C6EBD530(a2 + v14, &v13[v15], &qword_1EC1F8348, &qword_1C6EEC770);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      sub_1C6EBD598(v13, &qword_1EC1F8348, &qword_1C6EEC770);
LABEL_11:
      sub_1C6EE4430();
      sub_1C6EBB3D4(&qword_1EDEF6870, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      v17 = sub_1C6EE4A50();
      return v17 & 1;
    }

    goto LABEL_8;
  }

  sub_1C6EBD530(v13, v10, &qword_1EC1F8348, &qword_1C6EEC770);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    sub_1C6EBD468(v10, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TargetTokenSpec);
LABEL_8:
    sub_1C6EBD598(v13, &qword_1EC1F8350, &qword_1C6EEC778);
    goto LABEL_9;
  }

  v18 = v21;
  sub_1C6EBD4C8(&v13[v15], v21, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TargetTokenSpec);
  v19 = sub_1C6EBBE74(v10, v18);
  sub_1C6EBD468(v18, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TargetTokenSpec);
  sub_1C6EBD468(v10, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TargetTokenSpec);
  sub_1C6EBD598(v13, &qword_1EC1F8348, &qword_1C6EEC770);
  if (v19)
  {
    goto LABEL_11;
  }

LABEL_9:
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_1C6EBC628(uint64_t a1, uint64_t a2)
{
  v44 = a1;
  v45 = a2;
  v2 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0);
  v41 = *(v2 - 8);
  v42 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v37 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8328, &unk_1C6EEC750);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v38 = &v36 - v5;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8330, &unk_1C6EF6170);
  MEMORY[0x1EEE9AC00](v40);
  v43 = &v36 - v6;
  v7 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabToken(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = (&v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8358, &qword_1C6EEC780);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = (&v36 - v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8360, &qword_1C6EEC788);
  v15 = v14 - 8;
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v36 - v16;
  v39 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabTokenEmbedding(0);
  v18 = *(v39 + 20);
  v19 = *(v15 + 56);
  sub_1C6EBD530(v44 + v18, v17, &qword_1EC1F8358, &qword_1C6EEC780);
  sub_1C6EBD530(v45 + v18, &v17[v19], &qword_1EC1F8358, &qword_1C6EEC780);
  v20 = *(v8 + 48);
  if (v20(v17, 1, v7) == 1)
  {
    if (v20(&v17[v19], 1, v7) == 1)
    {
      sub_1C6EBD598(v17, &qword_1EC1F8358, &qword_1C6EEC780);
      goto LABEL_8;
    }

LABEL_6:
    v21 = &qword_1EC1F8360;
    v22 = &qword_1C6EEC788;
    v23 = v17;
LABEL_16:
    sub_1C6EBD598(v23, v21, v22);
    goto LABEL_17;
  }

  sub_1C6EBD530(v17, v13, &qword_1EC1F8358, &qword_1C6EEC780);
  if (v20(&v17[v19], 1, v7) == 1)
  {
    sub_1C6EBD468(v13, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabToken);
    goto LABEL_6;
  }

  sub_1C6EBD4C8(&v17[v19], v10, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabToken);
  v24 = sub_1C6EBC2A8(v13, v10);
  sub_1C6EBD468(v10, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabToken);
  sub_1C6EBD468(v13, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabToken);
  sub_1C6EBD598(v17, &qword_1EC1F8358, &qword_1C6EEC780);
  if ((v24 & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_8:
  v25 = *(v39 + 24);
  v26 = *(v40 + 48);
  v27 = v43;
  sub_1C6EBD530(v44 + v25, v43, &qword_1EC1F8328, &unk_1C6EEC750);
  sub_1C6EBD530(v45 + v25, v27 + v26, &qword_1EC1F8328, &unk_1C6EEC750);
  v28 = v42;
  v29 = *(v41 + 48);
  if (v29(v27, 1, v42) != 1)
  {
    v31 = v38;
    sub_1C6EBD530(v27, v38, &qword_1EC1F8328, &unk_1C6EEC750);
    if (v29(v27 + v26, 1, v28) == 1)
    {
      sub_1C6EBD468(v31, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
      goto LABEL_14;
    }

    v33 = v27 + v26;
    v34 = v37;
    sub_1C6EBD4C8(v33, v37, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
    if (!sub_1C6E6B56C(*v31, *(v31 + 8), *v34, *(v34 + 8)))
    {
      sub_1C6EBD468(v34, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
      sub_1C6EBD468(v31, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
      v21 = &qword_1EC1F8328;
      v22 = &unk_1C6EEC750;
      goto LABEL_15;
    }

    sub_1C6EE4430();
    sub_1C6EBB3D4(&qword_1EDEF6870, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
    v35 = sub_1C6EE4A50();
    sub_1C6EBD468(v34, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
    sub_1C6EBD468(v31, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
    sub_1C6EBD598(v27, &qword_1EC1F8328, &unk_1C6EEC750);
    if (v35)
    {
      goto LABEL_11;
    }

LABEL_17:
    v30 = 0;
    return v30 & 1;
  }

  if (v29(v27 + v26, 1, v28) != 1)
  {
LABEL_14:
    v21 = &qword_1EC1F8330;
    v22 = &unk_1C6EF6170;
LABEL_15:
    v23 = v27;
    goto LABEL_16;
  }

  sub_1C6EBD598(v27, &qword_1EC1F8328, &unk_1C6EEC750);
LABEL_11:
  sub_1C6EE4430();
  sub_1C6EBB3D4(&qword_1EDEF6870, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v30 = sub_1C6EE4A50();
  return v30 & 1;
}

uint64_t sub_1C6EBCCC8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v26 = (&v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7EF0, &unk_1C6EE9280);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = (&v24 - v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8220, &qword_1C6EEC6E0);
  v11 = v10 - 8;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v24 - v12;
  v25 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabEmbeddingMetadata(0);
  v14 = *(v25 + 28);
  v15 = *(v11 + 56);
  v27 = a1;
  sub_1C6EBD530(a1 + v14, v13, &qword_1EC1F7EF0, &unk_1C6EE9280);
  sub_1C6EBD530(a2 + v14, &v13[v15], &qword_1EC1F7EF0, &unk_1C6EE9280);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_1C6EBD530(v13, v9, &qword_1EC1F7EF0, &unk_1C6EE9280);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      v19 = v26;
      sub_1C6EBD4C8(&v13[v15], v26, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
      v20 = *v9 == *v19 && v9[1] == v19[1];
      if (v20 || (sub_1C6EE54B0() & 1) != 0)
      {
        sub_1C6EE4430();
        sub_1C6EBB3D4(&qword_1EDEF6870, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
        v21 = sub_1C6EE4A50();
        sub_1C6EBD468(v19, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
        sub_1C6EBD468(v9, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
        sub_1C6EBD598(v13, &qword_1EC1F7EF0, &unk_1C6EE9280);
        if (v21)
        {
          goto LABEL_14;
        }

LABEL_17:
        v22 = 0;
        return v22 & 1;
      }

      sub_1C6EBD468(v19, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
      sub_1C6EBD468(v9, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
      v17 = &qword_1EC1F7EF0;
      v18 = &unk_1C6EE9280;
LABEL_7:
      sub_1C6EBD598(v13, v17, v18);
      goto LABEL_17;
    }

    sub_1C6EBD468(v9, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
LABEL_6:
    v17 = &qword_1EC1F8220;
    v18 = &qword_1C6EEC6E0;
    goto LABEL_7;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_1C6EBD598(v13, &qword_1EC1F7EF0, &unk_1C6EE9280);
LABEL_14:
  if (*v27 != *a2 || (sub_1C6E24F24(*(v27 + 8), *(a2 + 8)) & 1) == 0)
  {
    goto LABEL_17;
  }

  sub_1C6EE4430();
  sub_1C6EBB3D4(&qword_1EDEF6870, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v22 = sub_1C6EE4A50();
  return v22 & 1;
}

uint64_t sub_1C6EBD0FC(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabEmbeddingMetadata(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v23 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F9690, &qword_1C6EF6160);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v21 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F9698, &qword_1C6EF6168);
  v11 = v10 - 8;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v21 - v12;
  v22 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabEmbedding(0);
  v14 = *(v22 + 24);
  v15 = *(v11 + 56);
  v24 = a1;
  sub_1C6EBD530(a1 + v14, v13, &qword_1EC1F9690, &qword_1C6EF6160);
  sub_1C6EBD530(a2 + v14, &v13[v15], &qword_1EC1F9690, &qword_1C6EF6160);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      sub_1C6EBD598(v13, &qword_1EC1F9690, &qword_1C6EF6160);
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  sub_1C6EBD530(v13, v9, &qword_1EC1F9690, &qword_1C6EF6160);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    sub_1C6EBD468(v9, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabEmbeddingMetadata);
LABEL_6:
    sub_1C6EBD598(v13, &qword_1EC1F9698, &qword_1C6EF6168);
LABEL_10:
    v19 = 0;
    return v19 & 1;
  }

  v17 = v23;
  sub_1C6EBD4C8(&v13[v15], v23, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabEmbeddingMetadata);
  v18 = sub_1C6EBCCC8(v9, v17);
  sub_1C6EBD468(v17, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabEmbeddingMetadata);
  sub_1C6EBD468(v9, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabEmbeddingMetadata);
  sub_1C6EBD598(v13, &qword_1EC1F9690, &qword_1C6EF6160);
  if ((v18 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_8:
  if ((sub_1C6E5D324(*v24, *a2) & 1) == 0)
  {
    goto LABEL_10;
  }

  sub_1C6EE4430();
  sub_1C6EBB3D4(&qword_1EDEF6870, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v19 = sub_1C6EE4A50();
  return v19 & 1;
}

uint64_t sub_1C6EBD468(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1C6EBD4C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C6EBD530(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1C6EBD598(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_1C6EBD620(uint64_t a1)
{
  sub_1C6EBD71C(319, &qword_1EC1F96E8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabTokenEmbedding, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1C6EE4430();
    if (v2 <= 0x3F)
    {
      sub_1C6EBD71C(319, &qword_1EC1F96F0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabEmbeddingMetadata, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1C6EBD71C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1C6EBD7A8(uint64_t a1)
{
  sub_1C6EBD884(319);
  if (v1 <= 0x3F)
  {
    sub_1C6EE4430();
    if (v2 <= 0x3F)
    {
      sub_1C6EBD71C(319, qword_1EDEF7CE8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1C6EBD884(uint64_t a1)
{
  if (!qword_1EC1F9708)
  {
    type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TokenNormalizer(255);
    v1 = sub_1C6EE49E0();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC1F9708);
    }
  }
}

void sub_1C6EBD914(uint64_t a1)
{
  sub_1C6EBD71C(319, &qword_1EC1F9720, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_StringSub, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1C6EE4430();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C6EBDA24(uint64_t a1)
{
  sub_1C6EE4430();
  if (v1 <= 0x3F)
  {
    sub_1C6EBD71C(319, &qword_1EC1F9748, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabToken, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1C6EBD71C(319, &qword_1EC1F9750, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1C6EBDBC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5, uint64_t (*a6)(uint64_t))
{
  sub_1C6EE4430();
  if (v8 <= 0x3F)
  {
    sub_1C6EBD71C(319, a5, a6, MEMORY[0x1E69E6720]);
    if (v9 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1C6EBDCAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_1C6EE4430();
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1C6EBDE00()
{
  v0 = sub_1C6EE4720();
  __swift_allocate_value_buffer(v0, qword_1EC2131C0);
  __swift_project_value_buffer(v0, qword_1EC2131C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8210, &unk_1C6EEC6D0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8218, &unk_1C6EECEC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C6EE6B40;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "encoding_name";
  *(v6 + 8) = 13;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C6EE46F0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "float16_list";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v9();
  return sub_1C6EE4700();
}

uint64_t sub_1C6EBDFC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_1C6EE44B0();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1C6EE4580();
    }

    else if (result == 2)
    {
      sub_1C6EBE058(a1, v5, a2, a3);
    }
  }

  return result;
}

uint64_t sub_1C6EBE058(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Encoder_Float16Encoding(0);
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0);
  sub_1C6EBEEC8(qword_1EDEF7740, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List, &unk_1C6EF3588);
  return sub_1C6EE45A0();
}

uint64_t sub_1C6EBE10C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = v3[1];
  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9 || (result = sub_1C6EE46C0(), !v4))
  {
    result = sub_1C6EBE1B8(v3, a1, a2, a3);
    if (!v4)
    {
      type metadata accessor for Com_Apple_News_Algorithms_Proto_Encoder_Float16Encoding(0);
      return sub_1C6EE4410();
    }
  }

  return result;
}

uint64_t sub_1C6EBE1B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8328, &unk_1C6EEC750);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Encoder_Float16Encoding(0);
  sub_1C6EBE9B0(a1 + *(v12 + 24), v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1C6EBEE68(v7, &qword_1EC1F8328, &unk_1C6EEC750);
  }

  sub_1C6EBEA20(v7, v11);
  sub_1C6EBEEC8(qword_1EDEF7740, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List, &unk_1C6EF3588);
  sub_1C6EE46E0();
  return sub_1C6EBEA84(v11);
}

uint64_t sub_1C6EBE398@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  *(a2 + 1) = 0xE000000000000000;
  sub_1C6EE4420();
  v4 = *(a1 + 24);
  v5 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(&a2[v4], 1, 1, v5);
}

uint64_t sub_1C6EBE440@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_1C6EE4430();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1C6EBE4B4(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 20);
  v5 = sub_1C6EE4430();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_1C6EBE584(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6EBEEC8(&qword_1EC1F97B8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Encoder_Float16Encoding, &unk_1C6EF6458);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6EBE604@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC1F74C8 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6EE4720();
  v3 = __swift_project_value_buffer(v2, qword_1EC2131C0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1C6EBE6AC(uint64_t a1)
{
  v2 = sub_1C6EBEEC8(&qword_1EC1F97A0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Encoder_Float16Encoding, &unk_1C6EF6490);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6EBE718(uint64_t a1, uint64_t a2)
{
  sub_1C6EE5580();
  sub_1C6EE4A00();
  return sub_1C6EE55A0();
}

uint64_t sub_1C6EBE770(uint64_t a1, uint64_t a2)
{
  sub_1C6EBEEC8(&qword_1EC1F97A0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Encoder_Float16Encoding, &unk_1C6EF6490);

  return sub_1C6EE45F0();
}

uint64_t sub_1C6EBE7EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C6EE5580();
  sub_1C6EE4A00();
  return sub_1C6EE55A0();
}

uint64_t type metadata accessor for Com_Apple_News_Algorithms_Proto_Encoder_Float16Encoding(uint64_t a1)
{
  result = qword_1EC1F97C0;
  if (!qword_1EC1F97C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C6EBE9B0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8328, &unk_1C6EEC750);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C6EBEA20(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C6EBEA84(uint64_t a1)
{
  v2 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C6EBEAE0(void *a1, void *a2)
{
  v4 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8328, &unk_1C6EEC750);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v22 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8330, &unk_1C6EF6170);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v22 - v12;
  if (*a1 != *a2 && (sub_1C6EE54B0() & 1) == 0)
  {
    goto LABEL_11;
  }

  v14 = *(type metadata accessor for Com_Apple_News_Algorithms_Proto_Encoder_Float16Encoding(0) + 24);
  v15 = *(v11 + 48);
  sub_1C6EBE9B0(a1 + v14, v13);
  sub_1C6EBE9B0(a2 + v14, &v13[v15]);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_1C6EBE9B0(v13, v10);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      sub_1C6EBEA20(&v13[v15], v7);
      if (sub_1C6E6B56C(*v10, *(v10 + 1), *v7, *(v7 + 1)))
      {
        sub_1C6EE4430();
        sub_1C6EBEEC8(&qword_1EDEF6870, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
        v21 = sub_1C6EE4A50();
        sub_1C6EBEA84(v7);
        sub_1C6EBEA84(v10);
        sub_1C6EBEE68(v13, &qword_1EC1F8328, &unk_1C6EEC750);
        if (v21)
        {
          goto LABEL_6;
        }

LABEL_11:
        v17 = 0;
        return v17 & 1;
      }

      sub_1C6EBEA84(v7);
      sub_1C6EBEA84(v10);
      v18 = &qword_1EC1F8328;
      v19 = &unk_1C6EEC750;
LABEL_10:
      sub_1C6EBEE68(v13, v18, v19);
      goto LABEL_11;
    }

    sub_1C6EBEA84(v10);
LABEL_9:
    v18 = &qword_1EC1F8330;
    v19 = &unk_1C6EF6170;
    goto LABEL_10;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
    goto LABEL_9;
  }

  sub_1C6EBEE68(v13, &qword_1EC1F8328, &unk_1C6EEC750);
LABEL_6:
  sub_1C6EE4430();
  sub_1C6EBEEC8(&qword_1EDEF6870, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v17 = sub_1C6EE4A50();
  return v17 & 1;
}

uint64_t sub_1C6EBEE68(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1C6EBEEC8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1C6EBEF38(uint64_t a1)
{
  sub_1C6EE4430();
  if (v1 <= 0x3F)
  {
    sub_1C6EBEFCC(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C6EBEFCC(uint64_t a1)
{
  if (!qword_1EC1F9750)
  {
    type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(255);
    v1 = sub_1C6EE4FE0();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC1F9750);
    }
  }
}

unint64_t ConfigurationType.cachePolicy.getter@<X0>(void *a1@<X8>)
{
  a1[3] = &type metadata for ComputeServiceCachePolicy;
  result = sub_1C6EBF084();
  a1[4] = result;
  *a1 = 0x4143C68000000000;
  a1[1] = 1000000;
  return result;
}

unint64_t sub_1C6EBF084()
{
  result = qword_1EDEF80F8;
  if (!qword_1EDEF80F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEF80F8);
  }

  return result;
}

uint64_t ConfigurationManagerType.bundledConfiguration.getter@<X0>(uint64_t a3@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(*(AssociatedTypeWitness - 8) + 56);

  return v5(a3, 1, 1, AssociatedTypeWitness);
}

uint64_t sub_1C6EBF184(uint64_t a1, uint64_t a2)
{
  sub_1C6EE51C0();
  v4 = (*(a2 + 72))(a1, a2);
  if (v5)
  {
    MEMORY[0x1CCA57F60](v4);
    MEMORY[0x1CCA57F60](41, 0xE100000000000000);

    v6 = 40;
    v7 = 0xE100000000000000;
  }

  else
  {
    v6 = 0;
    v7 = 0xE000000000000000;
  }

  MEMORY[0x1CCA57F60](v6, v7);

  return v9;
}

ComputationalGraph::ComputeUnits_optional __swiftcall ComputeUnits.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1C6EE5360();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t ComputeUnits.rawValue.getter()
{
  v1 = 7105633;
  v2 = 0x5047646E41757063;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000012;
  }

  if (*v0)
  {
    v1 = 0x796C6E4F757063;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1C6EBF328()
{
  sub_1C6EE5580();
  sub_1C6EE4B30();

  return sub_1C6EE55A0();
}

uint64_t sub_1C6EBF3EC(uint64_t a1)
{
  sub_1C6EE4B30();
}

uint64_t sub_1C6EBF49C(uint64_t a1)
{
  sub_1C6EE5580();
  sub_1C6EE4B30();

  return sub_1C6EE55A0();
}

void sub_1C6EBF568(unint64_t *a1@<X8>)
{
  v2 = 0xE300000000000000;
  v3 = 7105633;
  v4 = 0xE900000000000055;
  v5 = 0x5047646E41757063;
  if (*v1 != 2)
  {
    v5 = 0xD000000000000012;
    v4 = 0x80000001C6EF7AC0;
  }

  if (*v1)
  {
    v3 = 0x796C6E4F757063;
    v2 = 0xE700000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t Configuration.identifier.getter()
{
  v1 = *v0;

  return v1;
}

double Configuration.cachePolicy.getter@<D0>(uint64_t a1@<X8>)
{
  result = *(v1 + 32);
  v3 = *(v1 + 40);
  *a1 = result;
  *(a1 + 8) = v3;
  return result;
}

void __swiftcall Configuration.init(id:packageIDs:computeUnits:cachePolicy:)(ComputationalGraph::Configuration *__return_ptr retstr, Swift::String id, Swift::OpaquePointer packageIDs, ComputationalGraph::ComputeUnits computeUnits, ComputationalGraph::ComputeServiceCachePolicy cachePolicy)
{
  v5 = *computeUnits;
  v6 = *cachePolicy.maxCacheSize;
  v7 = *(cachePolicy.maxCacheSize + 8);
  retstr->id = id;
  retstr->packageIDs = packageIDs;
  retstr->computeUnits = v5;
  retstr->cachePolicy.maxCacheAge = v6;
  retstr->cachePolicy.maxCacheSize = v7;
}

uint64_t sub_1C6EBF744()
{
  v1 = *v0;
  sub_1C6EE5580();
  MEMORY[0x1CCA58990](v1);
  return sub_1C6EE55A0();
}

uint64_t sub_1C6EBF7B8(uint64_t a1)
{
  v2 = *v1;
  sub_1C6EE5580();
  MEMORY[0x1CCA58990](v2);
  return sub_1C6EE55A0();
}

uint64_t sub_1C6EBF7FC()
{
  v1 = 25705;
  v2 = 0x55657475706D6F63;
  if (*v0 != 2)
  {
    v2 = 0x6C6F506568636163;
  }

  if (*v0)
  {
    v1 = 0x496567616B636170;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1C6EBF880@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1C6EC0900(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1C6EBF8C0(uint64_t a1)
{
  v2 = sub_1C6EBFBA4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C6EBF8FC(uint64_t a1)
{
  v2 = sub_1C6EBFBA4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Configuration.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F97D0, &unk_1C6EF6550);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v16 - v6;
  v18 = *(v1 + 16);
  v17 = *(v1 + 24);
  v8 = *(v1 + 32);
  v16 = *(v1 + 40);
  v9 = a1[3];
  v10 = a1;
  v12 = v11;
  __swift_project_boxed_opaque_existential_1(v10, v9);
  sub_1C6EBFBA4();
  sub_1C6EE55C0();
  LOBYTE(v19) = 0;
  sub_1C6EE5410();
  if (!v2)
  {
    v13 = v17;
    v14 = v16;
    v19 = v18;
    v21 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9A50, &qword_1C6EE90D0);
    sub_1C6EBFFBC(&qword_1EC1F97E0, MEMORY[0x1E69E6160], MEMORY[0x1E69E6300]);
    sub_1C6EE5440();
    LOBYTE(v19) = v13;
    v21 = 2;
    sub_1C6EBFBF8();
    sub_1C6EE5440();
    v19 = v8;
    v20 = v14;
    v21 = 3;
    sub_1C6EBFC4C();
    sub_1C6EE5440();
  }

  return (*(v5 + 8))(v7, v12);
}

unint64_t sub_1C6EBFBA4()
{
  result = qword_1EC1F97D8;
  if (!qword_1EC1F97D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F97D8);
  }

  return result;
}

unint64_t sub_1C6EBFBF8()
{
  result = qword_1EC1F97E8;
  if (!qword_1EC1F97E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F97E8);
  }

  return result;
}

unint64_t sub_1C6EBFC4C()
{
  result = qword_1EDEF8108[0];
  if (!qword_1EDEF8108[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDEF8108);
  }

  return result;
}

uint64_t Configuration.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F97F0, &qword_1C6EF6560);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6EBFBA4();
  sub_1C6EE55B0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v18) = 0;
  v9 = sub_1C6EE53A0();
  v11 = v10;
  v17 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9A50, &qword_1C6EE90D0);
  v21 = 1;
  sub_1C6EBFFBC(&qword_1EC1F97F8, MEMORY[0x1E69E6190], MEMORY[0x1E69E6330]);
  sub_1C6EE53D0();
  v16 = v18;
  v21 = 2;
  sub_1C6EC0028();
  sub_1C6EE53D0();
  v20 = v18;
  v21 = 3;
  sub_1C6EC007C();
  sub_1C6EE53D0();
  (*(v6 + 8))(v8, v5);
  v13 = v18;
  v14 = v19;
  v15 = v16;
  *a2 = v17;
  *(a2 + 8) = v11;
  *(a2 + 16) = v15;
  *(a2 + 24) = v20;
  *(a2 + 32) = v13;
  *(a2 + 40) = v14;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1C6EBFFBC(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC1F9A50, &qword_1C6EE90D0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C6EC0028()
{
  result = qword_1EC1F9800;
  if (!qword_1EC1F9800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F9800);
  }

  return result;
}

unint64_t sub_1C6EC007C()
{
  result = qword_1EDEF8100;
  if (!qword_1EDEF8100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEF8100);
  }

  return result;
}

unint64_t sub_1C6EC00D4()
{
  result = qword_1EC1F9808;
  if (!qword_1EC1F9808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F9808);
  }

  return result;
}

unint64_t sub_1C6EC012C()
{
  result = qword_1EC1F9810;
  if (!qword_1EC1F9810)
  {
    type metadata accessor for Package(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F9810);
  }

  return result;
}

unint64_t sub_1C6EC0198@<X0>(void *a1@<X8>)
{
  a1[3] = &type metadata for ComputeServiceCachePolicy;
  result = sub_1C6EBF084();
  a1[4] = result;
  *a1 = 0x4143C68000000000;
  a1[1] = 1000000;
  return result;
}

unint64_t sub_1C6EC01EC(void *a1)
{
  a1[1] = sub_1C6EC0224();
  a1[2] = sub_1C6EC0278();
  result = sub_1C6EC02CC();
  a1[3] = result;
  return result;
}

unint64_t sub_1C6EC0224()
{
  result = qword_1EC1F9818;
  if (!qword_1EC1F9818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F9818);
  }

  return result;
}

unint64_t sub_1C6EC0278()
{
  result = qword_1EC1F9820;
  if (!qword_1EC1F9820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F9820);
  }

  return result;
}

unint64_t sub_1C6EC02CC()
{
  result = qword_1EC1F9828;
  if (!qword_1EC1F9828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F9828);
  }

  return result;
}

uint64_t sub_1C6EC035C@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t dispatch thunk of ConfigurationManagerType.fetchConfigurationIfNeeded()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 32) + **(a3 + 32));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1C6EC04F8;

  return v9(a1, a2, a3);
}

uint64_t sub_1C6EC04F8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1C6EC0600(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1C6EC0648(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_1C6EC06A4(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_1C6EC0734(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C6EC07FC()
{
  result = qword_1EC1F9830;
  if (!qword_1EC1F9830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F9830);
  }

  return result;
}

unint64_t sub_1C6EC0854()
{
  result = qword_1EC1F9838;
  if (!qword_1EC1F9838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F9838);
  }

  return result;
}

unint64_t sub_1C6EC08AC()
{
  result = qword_1EC1F9840;
  if (!qword_1EC1F9840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F9840);
  }

  return result;
}

uint64_t sub_1C6EC0900(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1C6EE54B0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x496567616B636170 && a2 == 0xEA00000000007344 || (sub_1C6EE54B0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x55657475706D6F63 && a2 == 0xEC0000007374696ELL || (sub_1C6EE54B0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6C6F506568636163 && a2 == 0xEB00000000796369)
  {

    return 3;
  }

  else
  {
    v6 = sub_1C6EE54B0();

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

unint64_t sub_1C6EC0A6C()
{
  result = qword_1EC1F9848;
  if (!qword_1EC1F9848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F9848);
  }

  return result;
}

uint64_t RequestEventProcessorRegistry.__allocating_init()()
{
  result = swift_allocObject();
  v1 = MEMORY[0x1E69E7CC8];
  *(result + 16) = MEMORY[0x1E69E7CC0];
  *(result + 24) = v1;
  return result;
}

uint64_t RequestEventProcessorRegistry.init()()
{
  result = v0;
  v2 = MEMORY[0x1E69E7CC8];
  *(v0 + 16) = MEMORY[0x1E69E7CC0];
  *(v0 + 24) = v2;
  return result;
}

uint64_t sub_1C6EC0B38(void *a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = a1;
  MEMORY[0x1CCA58080]();
  if (*((*(v2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1C6EE4CE0();
  }

  sub_1C6EE4D20();
  return swift_endAccess();
}

uint64_t sub_1C6EC0BE0(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v3 + 24);
  *(v4 + 24) = 0x8000000000000000;
  v10 = sub_1C6DEC784(a2, a3);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
    __break(1u);
    goto LABEL_11;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    sub_1C6E08158(v15, isUniquelyReferenced_nonNull_native);
    v10 = sub_1C6DEC784(a2, a3);
    if ((v16 & 1) == (v17 & 1))
    {
      goto LABEL_6;
    }

    v10 = sub_1C6EE5500();
    __break(1u);
  }

  if (isUniquelyReferenced_nonNull_native)
  {
LABEL_6:
    *(v4 + 24) = v9;
    if (v16)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v22 = v10;
  sub_1C6E0A468();
  v10 = v22;
  *(v4 + 24) = v9;
  if ((v16 & 1) == 0)
  {
LABEL_7:
    v18 = v10;
    sub_1C6E0D448();

    v10 = v18;
  }

LABEL_8:
  v19 = (v9[7] + 8 * v10);
  v20 = a1;
  MEMORY[0x1CCA58080]();
  if (*((*v19 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v19 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
LABEL_11:
    sub_1C6EE4CE0();
  }

  sub_1C6EE4D20();
  return swift_endAccess();
}

id sub_1C6EC0D80(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_beginAccess();
  v6 = *(v3 + 24);
  if (*(v6 + 16))
  {

    v7 = sub_1C6DEC784(a1, a2);
    if (v8)
    {
      v9 = *(*(v6 + 56) + 8 * v7);

      if (v9 >> 62)
      {
        if (sub_1C6EE5110())
        {
          goto LABEL_5;
        }
      }

      else if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_5:
        swift_beginAccess();
        v15 = v9;

        sub_1C6ED20F8(v10);
        v11 = type metadata accessor for ComputationalGraphRequestEventMultiProcessor();
        v12 = objc_allocWithZone(v11);
        *&v12[OBJC_IVAR____TtC18ComputationalGraph44ComputationalGraphRequestEventMultiProcessor_eventProcessors] = v9;
        v14.receiver = v12;
        v14.super_class = v11;
        return objc_msgSendSuper2(&v14, sel_init);
      }
    }
  }

  return 0;
}

uint64_t RequestEventProcessorRegistry.deinit()
{

  return v0;
}

uint64_t RequestEventProcessorRegistry.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void sub_1C6EC0F0C(__int128 *a1)
{
  v9 = *a1;
  v2 = *(v1 + OBJC_IVAR____TtC18ComputationalGraph44ComputationalGraphRequestEventMultiProcessor_eventProcessors);
  if (v2 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1C6EE5110())
  {
    v4 = 0;
    v5 = MEMORY[0x1E69E7D40];
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x1CCA585E0](v4, v2);
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v6 = *(v2 + 8 * v4 + 32);
      }

      v7 = v6;
      v8 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v10 = v9;
      (*((*v5 & *v6) + 0x50))(&v10);

      ++v4;
      if (v8 == i)
      {
        return;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }
}

id sub_1C6EC1068(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ComputationalGraphRequestEventMultiProcessor();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void (*sub_1C6EC1168(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1CCA585E0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1C6EC11E8;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C6EC11F0@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (a1 >> 62)
  {
    goto LABEL_38;
  }

  v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v37 = a1;
  if (v4)
  {
    v5 = 0;
    v40 = a1 & 0xFFFFFFFFFFFFFF8;
    v41 = a1 & 0xC000000000000001;
    v39 = a1 + 32;
    v6 = MEMORY[0x1E69E7CC8];
    v7 = MEMORY[0x1E69E7CC8];
    v38 = v4;
    while (1)
    {
      if (v41)
      {
        v9 = MEMORY[0x1CCA585E0](v5, v37);
        v10 = __OFADD__(v5, 1);
        v11 = v5 + 1;
        if (v10)
        {
LABEL_29:
          __break(1u);
LABEL_30:
          sub_1C6EC1E30();
          swift_allocError();
          *v29 = v3;
          v29[1] = v4;
          swift_willThrow();
        }
      }

      else
      {
        if (v5 >= *(v40 + 16))
        {
LABEL_37:
          __break(1u);
LABEL_38:
          v34 = a1;
          v4 = sub_1C6EE5110();
          a1 = v34;
          goto LABEL_3;
        }

        v9 = *(v39 + 8 * v5);

        v10 = __OFADD__(v5, 1);
        v11 = v5 + 1;
        if (v10)
        {
          goto LABEL_29;
        }
      }

      v42 = v11;
      v12 = (*(*v9 + 136))();
      v13 = *(v12 + 16);

      if (v13)
      {
        v14 = (v12 + 40);
        v8 = v6;
        while (1)
        {
          v3 = *(v14 - 1);
          v4 = *v14;
          v16 = v8[2];

          if (v16)
          {
            sub_1C6DEC784(v3, v4);
            if (v17)
            {
              goto LABEL_30;
            }
          }

          v43 = v13;
          v18 = v9;

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v20 = v3;
          v22 = sub_1C6DEC784(v3, v4);
          v23 = v7[2];
          v24 = (v21 & 1) == 0;
          a1 = v23 + v24;
          if (__OFADD__(v23, v24))
          {
            __break(1u);
LABEL_36:
            __break(1u);
            goto LABEL_37;
          }

          v3 = v21;
          if (v7[3] >= a1)
          {
            if (isUniquelyReferenced_nonNull_native)
            {
              v8 = v7;
              if (v21)
              {
                goto LABEL_12;
              }
            }

            else
            {
              a1 = sub_1C6E0A5DC();
              v8 = v7;
              if (v3)
              {
                goto LABEL_12;
              }
            }
          }

          else
          {
            sub_1C6E0840C(a1, isUniquelyReferenced_nonNull_native);
            a1 = sub_1C6DEC784(v20, v4);
            if ((v3 & 1) != (v25 & 1))
            {
              result = sub_1C6EE5500();
              __break(1u);
              return result;
            }

            v22 = a1;
            v8 = v7;
            if (v3)
            {
LABEL_12:
              v15 = v8[7];
              v3 = *(v15 + 8 * v22);
              *(v15 + 8 * v22) = v18;
              v9 = v18;
              swift_bridgeObjectRelease_n();

              goto LABEL_13;
            }
          }

          v8[(v22 >> 6) + 8] |= 1 << v22;
          v26 = (v8[6] + 16 * v22);
          *v26 = v20;
          v26[1] = v4;
          *(v8[7] + 8 * v22) = v18;
          v27 = v8[2];
          v10 = __OFADD__(v27, 1);
          v28 = v27 + 1;
          if (v10)
          {
            goto LABEL_36;
          }

          v9 = v18;
          v8[2] = v28;

LABEL_13:
          v14 += 2;
          v6 = v8;
          v7 = v8;
          v13 = v43 - 1;
          if (v43 == 1)
          {
            goto LABEL_6;
          }
        }
      }

      v8 = v7;
LABEL_6:

      v7 = v8;
      v4 = v38;
      v5 = v42;
      if (v42 == v38)
      {
        goto LABEL_32;
      }
    }
  }

  v6 = MEMORY[0x1E69E7CC8];
LABEL_32:

  v32 = sub_1C6EC15F4(v31);

  if (v32)
  {
    sub_1C6EC1E30();
    swift_allocError();
    *v33 = 0;
    v33[1] = 0;
    swift_willThrow();
  }

  else
  {
    *a3 = v6;
    a3[1] = a2;
  }

  return result;
}

uint64_t sub_1C6EC15F4(uint64_t a1)
{
  v21 = MEMORY[0x1E69E7CD0];
  v22 = MEMORY[0x1E69E7CD0];
  v2 = a1 + 64;
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

  for (i = 0; v5; result = )
  {
LABEL_13:
    while (1)
    {
      v11 = __clz(__rbit64(v5));
      v5 &= v5 - 1;
      v12 = *(*(a1 + 56) + ((i << 9) | (8 * v11)));
      v13 = v22;
      if ((v22 & 0xC000000000000001) != 0)
      {
        break;
      }

      if (*(v22 + 16))
      {
        sub_1C6EE5580();

        sub_1C6EE4B30();
        v14 = sub_1C6EE55A0();
        v15 = -1 << *(v13 + 32);
        v16 = v14 & ~v15;
        if ((*(v13 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
        {
          v17 = ~v15;
          do
          {
            v18 = *(*(v13 + 48) + 8 * v16);
            v19 = *(v18 + 16) == *(v12 + 16) && *(v18 + 24) == *(v12 + 24);
            if (v19 || (sub_1C6EE54B0() & 1) != 0)
            {
              goto LABEL_15;
            }

            v16 = (v16 + 1) & v17;
          }

          while (((*(v13 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) != 0);
        }
      }

      else
      {
      }

LABEL_7:
      v9 = sub_1C6EC18D0(v12, &v22, &v21, a1);

      if (v9)
      {
        v20 = 1;
LABEL_28:

        return v20;
      }

      if (!v5)
      {
        goto LABEL_9;
      }
    }

    if ((sub_1C6EE5140() & 1) == 0)
    {
      goto LABEL_7;
    }

LABEL_15:
    ;
  }

LABEL_9:
  while (1)
  {
    v10 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v10 >= v6)
    {
      v20 = 0;
      goto LABEL_28;
    }

    v5 = *(v2 + 8 * v10);
    ++i;
    if (v5)
    {
      i = v10;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C6EC180C(uint64_t a1)
{
  v3 = *(v1 + 8);
  result = MEMORY[0x1E69E7CC8];
  v11 = MEMORY[0x1E69E7CC8];
  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = (a1 + 40);
    do
    {
      if (*(v3 + 16))
      {
        v7 = *(v6 - 1);
        v8 = *v6;

        sub_1C6DEC784(v7, v8);
        if (v9)
        {

          sub_1C6E269D0(v10, 0, 1);
        }
      }

      v6 += 2;
      --v5;
    }

    while (v5);
    return v11;
  }

  return result;
}

uint64_t sub_1C6EC18D0(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{

  v38 = a2;
  sub_1C6E03580(v40, a1);

  v39 = a3;
  sub_1C6E03580(v40, a1);

  result = (*(*a1 + 128))(v8);
  v10 = result;
  v11 = *(result + 16);
  if (!v11)
  {
LABEL_34:

    sub_1C6E0495C(a1);

    return 0;
  }

  v12 = 0;
  v13 = result + 32;
  v37 = result + 32;
  while (v12 < *(v10 + 16))
  {
    if (!*(a4 + 16))
    {
      goto LABEL_4;
    }

    v15 = (v13 + 16 * v12);
    v16 = *v15;
    v17 = v15[1];

    v18 = sub_1C6DEC784(v16, v17);
    v20 = v19;

    if ((v20 & 1) == 0)
    {
      goto LABEL_4;
    }

    v21 = *(*(a4 + 56) + 8 * v18);
    v22 = *v38;
    if ((*v38 & 0xC000000000000001) != 0)
    {
      swift_retain_n();
      v23 = sub_1C6EE5140();

      if (v23)
      {
        goto LABEL_23;
      }
    }

    else if (*(v22 + 16))
    {
      sub_1C6EE5580();

      sub_1C6EE4B30();
      v24 = sub_1C6EE55A0();
      v25 = -1 << *(v22 + 32);
      v26 = v24 & ~v25;
      if ((*(v22 + 56 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26))
      {
        v27 = ~v25;
        do
        {
          v28 = *(*(v22 + 48) + 8 * v26);
          v29 = *(v28 + 16) == *(v21 + 16) && *(v28 + 24) == *(v21 + 24);
          if (v29 || (sub_1C6EE54B0() & 1) != 0)
          {
            goto LABEL_23;
          }

          v26 = (v26 + 1) & v27;
        }

        while (((*(v22 + 56 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26) & 1) != 0);
      }
    }

    else
    {
    }

    if (sub_1C6EC18D0(v21, v38, v39, a4))
    {
      goto LABEL_35;
    }

LABEL_23:
    v30 = *v39;
    if ((*v39 & 0xC000000000000001) != 0)
    {

      v14 = sub_1C6EE5140();

      v13 = v37;
      if (v14)
      {
        goto LABEL_36;
      }
    }

    else
    {
      if (*(v30 + 16))
      {
        sub_1C6EE5580();
        sub_1C6EE4B30();
        v31 = sub_1C6EE55A0();
        v32 = -1 << *(v30 + 32);
        v33 = v31 & ~v32;
        if ((*(v30 + 56 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33))
        {
          v34 = ~v32;
          while (1)
          {
            v35 = *(*(v30 + 48) + 8 * v33);
            v36 = *(v35 + 16) == *(v21 + 16) && *(v35 + 24) == *(v21 + 24);
            if (v36 || (sub_1C6EE54B0() & 1) != 0)
            {
              break;
            }

            v33 = (v33 + 1) & v34;
            if (((*(v30 + 56 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33) & 1) == 0)
            {
              goto LABEL_33;
            }
          }

LABEL_35:

LABEL_36:

          return 1;
        }
      }

LABEL_33:

      v13 = v37;
    }

LABEL_4:
    if (++v12 == v11)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
  return result;
}

uint64_t _s18ComputationalGraph06GlobalB0V6ErrorsO2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
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

  return sub_1C6EE54B0();
}

uint64_t sub_1C6EC1CAC(uint64_t *a1, int a2)
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

uint64_t sub_1C6EC1CF4(uint64_t result, int a2, int a3)
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

uint64_t sub_1C6EC1D40(uint64_t a1, unsigned int a2)
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

uint64_t sub_1C6EC1D90(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1C6EC1DE4(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_1C6EC1E00(void *result, int a2)
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

unint64_t sub_1C6EC1E30()
{
  result = qword_1EC1F9858;
  if (!qword_1EC1F9858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F9858);
  }

  return result;
}

uint64_t sub_1C6EC1E84(uint64_t *a1)
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F77F8, &unk_1C6EE69B0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1C6ECE3C4(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_1C6EC9070(v6, &qword_1EC1F77F8, &unk_1C6EE69B0, sub_1C6EC9890, sub_1C6EC91C4);
  *a1 = v3;
  return result;
}

uint64_t sub_1C6EC1F70(uint64_t *a1)
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9A30, &qword_1C6EF6B38) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1C6ECE354(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_1C6EC9070(v6, &unk_1EC1F9A30, &qword_1C6EF6B38, sub_1C6ECAD68, sub_1C6EC9424);
  *a1 = v3;
  return result;
}

void *sub_1C6EC2060(void *a1, uint64_t *a2)
{
  v3 = v2;
  v7 = v3 + 2;
  v6 = *v3;
  v61 = v3;
  v57[1] = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7D48, &qword_1C6EE8990);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v71 = v57 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7D58, &qword_1C6EE89A0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v57 - v11;
  v13 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeaturesMetadata(0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v73 = v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeatures(0);
  MEMORY[0x1EEE9AC00](v70);
  v75 = v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F77F8, &unk_1C6EE69B0);
  v17 = *(v69 - 8);
  v18 = MEMORY[0x1EEE9AC00](v69);
  v68 = (v57 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v18);
  v74 = v57 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9A30, &qword_1C6EF6B38);
  v66 = *(v21 - 8);
  v67 = v21;
  MEMORY[0x1EEE9AC00](v21);
  v23 = v57 - v22;
  v59 = a1;
  sub_1C6ECEDD8(a1, v7);
  v60 = a2;
  v24 = *a2;
  v25 = *(*a2 + 16);
  v26 = MEMORY[0x1E69E7CC0];
  if (v25)
  {
    v27 = v14;
    v28 = sub_1C6E031D8(*(*a2 + 16), 0);
    v29 = v17;
    v30 = sub_1C6E0B3CC(v76, (v28 + ((*(v17 + 80) + 32) & ~*(v17 + 80))), v25, v24);
    v31 = v76[0];
    v62 = v76[1];
    v63 = v30;
    v58 = v76[2];
    v57[3] = v76[3];
    v57[2] = v76[4];

    sub_1C6ECEE3C(v31);
    if (v63 != v25)
    {
      __break(1u);

      __swift_destroy_boxed_opaque_existential_1(v7);
      result = swift_deallocPartialClassInstance();
      __break(1u);
      return result;
    }

    v17 = v29;
    v14 = v27;
    v26 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v28 = MEMORY[0x1E69E7CC0];
  }

  v77[0] = v28;
  sub_1C6EC1E84(v77);
  v32 = v77[0];
  v33 = *(v77[0] + 16);
  if (v33)
  {
    v76[0] = v26;
    sub_1C6E15C30(0, v33, 0);
    v34 = (*(v17 + 80) + 32) & ~*(v17 + 80);
    v58 = v32;
    v35 = v32 + v34;
    v26 = v76[0];
    v62 = *(v17 + 72);
    v63 = (v14 + 48);
    v64 = v12;
    v65 = v13;
    v72 = v23;
    do
    {
      v36 = v74;
      sub_1C6ECEE44(v35, v74, &qword_1EC1F77F8, &unk_1C6EE69B0);
      v37 = v23;
      v38 = v68;
      sub_1C6ECEE44(v36, v68, &qword_1EC1F77F8, &unk_1C6EE69B0);
      v39 = *v38;
      v40 = v38[1];
      v41 = v38 + *(v69 + 48);
      v42 = v75;
      sub_1C6ECEF0C(v41, v75, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeatures);
      *v37 = v39;
      v37[1] = v40;
      sub_1C6ECEE44(v42 + *(v70 + 24), v12, &qword_1EC1F7D58, &qword_1C6EE89A0);
      v43 = *v63;
      if ((*v63)(v12, 1, v13) == 1)
      {
        v44 = v73;
        *v73 = 0;
        sub_1C6EE4420();
        v45 = *(v13 + 24);
        v46 = sub_1C6EE43E0();
        (*(*(v46 - 8) + 56))(&v44[v45], 1, 1, v46);
        if (v43(v12, 1, v13) != 1)
        {
          sub_1C6ECEEAC(v12, &qword_1EC1F7D58, &qword_1C6EE89A0);
        }
      }

      else
      {
        sub_1C6ECEF0C(v12, v73, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeaturesMetadata);
      }

      v47 = *(v67 + 48);
      v48 = v73;
      v49 = v71;
      sub_1C6ECEE44(&v73[*(v13 + 24)], v71, &qword_1EC1F7D48, &qword_1C6EE8990);
      v50 = sub_1C6EE43E0();
      v51 = *(v50 - 8);
      v52 = *(v51 + 48);
      if (v52(v49, 1, v50) == 1)
      {
        sub_1C6EE43D0();
        sub_1C6ECEC10(v48, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeaturesMetadata);
        sub_1C6ECEC10(v75, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeatures);
        sub_1C6ECEEAC(v74, &qword_1EC1F77F8, &unk_1C6EE69B0);
        if (v52(v49, 1, v50) != 1)
        {
          sub_1C6ECEEAC(v71, &qword_1EC1F7D48, &qword_1C6EE8990);
        }
      }

      else
      {
        sub_1C6ECEC10(v48, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeaturesMetadata);
        sub_1C6ECEC10(v75, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeatures);
        sub_1C6ECEEAC(v74, &qword_1EC1F77F8, &unk_1C6EE69B0);
        (*(v51 + 32))(&v72[v47], v49, v50);
      }

      v76[0] = v26;
      v54 = *(v26 + 16);
      v53 = *(v26 + 24);
      v12 = v64;
      if (v54 >= v53 >> 1)
      {
        sub_1C6E15C30((v53 > 1), v54 + 1, 1);
        v26 = v76[0];
      }

      *(v26 + 16) = v54 + 1;
      v23 = v72;
      sub_1C6ECEF74(v72, v26 + ((*(v66 + 80) + 32) & ~*(v66 + 80)) + *(v66 + 72) * v54, &unk_1EC1F9A30, &qword_1C6EF6B38);
      v35 += v62;
      --v33;
      v13 = v65;
    }

    while (v33);
    __swift_destroy_boxed_opaque_existential_1(v59);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1(v59);
  }

  v55 = v61;
  v61[7] = v26;
  sub_1C6ECEF0C(v60, v55 + OBJC_IVAR____TtCC18ComputationalGraph13FeaturesStore17FeaturesStoreData_store, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeaturesStore);
  return v55;
}

uint64_t sub_1C6EC2920(char *a1, char *a2)
{
  v77 = a2;
  v70 = a1;
  v2 = sub_1C6EE42C0();
  v74 = *(v2 - 8);
  v75 = v2;
  v3 = MEMORY[0x1EEE9AC00](v2);
  v73 = &v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v78 = &v62 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7D48, &qword_1C6EE8990);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v72 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v67 = (&v62 - v9);
  v65 = sub_1C6EE43E0();
  v76 = *(v65 - 1);
  v10 = MEMORY[0x1EEE9AC00](v65);
  v71 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v66 = &v62 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7D58, &qword_1C6EE89A0);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v68 = &v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v62 - v16;
  v18 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeaturesMetadata(0);
  v79 = *(v18 - 8);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v69 = &v62 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v62 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F77F8, &unk_1C6EE69B0);
  v24 = v23 - 8;
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v62 - v25;
  v27 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeatures(0);
  v28 = MEMORY[0x1EEE9AC00](v27);
  v30 = &v62 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v32 = &v62 - v31;
  sub_1C6ECEE44(v70, v26, &qword_1EC1F77F8, &unk_1C6EE69B0);

  sub_1C6ECEF0C(&v26[*(v24 + 56)], v32, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeatures);
  sub_1C6ECEE44(v77, v26, &qword_1EC1F77F8, &unk_1C6EE69B0);

  v33 = &v26[*(v24 + 56)];
  v34 = v79;
  v77 = v30;
  sub_1C6ECEF0C(v33, v30, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeatures);
  v64 = v27;
  v35 = *(v27 + 24);
  v70 = v32;
  sub_1C6ECEE44(&v32[v35], v17, &qword_1EC1F7D58, &qword_1C6EE89A0);
  v36 = *(v34 + 48);
  v37 = v36(v17, 1, v18);
  v79 = v34 + 48;
  v63 = v36;
  if (v37 == 1)
  {
    *v22 = 0;
    sub_1C6EE4420();
    v38 = v76;
    v39 = v65;
    (*(v76 + 56))(&v22[*(v18 + 24)], 1, 1, v65);
    if (v36(v17, 1, v18) != 1)
    {
      sub_1C6ECEEAC(v17, &qword_1EC1F7D58, &qword_1C6EE89A0);
    }
  }

  else
  {
    sub_1C6ECEF0C(v17, v22, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeaturesMetadata);
    v39 = v65;
    v38 = v76;
  }

  v40 = v67;
  sub_1C6ECEE44(&v22[*(v18 + 24)], v67, &qword_1EC1F7D48, &qword_1C6EE8990);
  v41 = *(v38 + 48);
  v42 = (v41)(v40, 1, v39);
  v43 = v66;
  v65 = v41;
  if (v42 == 1)
  {
    sub_1C6EE43D0();
    sub_1C6ECEC10(v22, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeaturesMetadata);
    if ((v41)(v40, 1, v39) != 1)
    {
      sub_1C6ECEEAC(v40, &qword_1EC1F7D48, &qword_1C6EE8990);
    }
  }

  else
  {
    sub_1C6ECEC10(v22, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeaturesMetadata);
    (*(v38 + 32))(v43, v40, v39);
  }

  sub_1C6EE43B0();
  v44 = v38;
  v67 = *(v38 + 8);
  (v67)(v43, v39);
  v45 = v68;
  sub_1C6ECEE44(&v77[*(v64 + 24)], v68, &qword_1EC1F7D58, &qword_1C6EE89A0);
  v46 = v63;
  v47 = v39;
  if (v63(v45, 1, v18) == 1)
  {
    v48 = v45;
    v49 = v69;
    *v69 = 0;
    sub_1C6EE4420();
    (*(v44 + 56))(&v49[*(v18 + 24)], 1, 1, v47);
    if (v46(v48, 1, v18) != 1)
    {
      sub_1C6ECEEAC(v48, &qword_1EC1F7D58, &qword_1C6EE89A0);
    }
  }

  else
  {
    v50 = v45;
    v49 = v69;
    sub_1C6ECEF0C(v50, v69, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeaturesMetadata);
  }

  v51 = v72;
  sub_1C6ECEE44(&v49[*(v18 + 24)], v72, &qword_1EC1F7D48, &qword_1C6EE8990);
  v52 = v65;
  if ((v65)(v51, 1, v47) == 1)
  {
    v53 = v71;
    sub_1C6EE43D0();
    sub_1C6ECEC10(v49, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeaturesMetadata);
    v54 = v47;
    if (v52(v51, 1, v47) != 1)
    {
      sub_1C6ECEEAC(v51, &qword_1EC1F7D48, &qword_1C6EE8990);
    }
  }

  else
  {
    sub_1C6ECEC10(v49, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeaturesMetadata);
    v53 = v71;
    (*(v76 + 32))(v71, v51, v47);
    v54 = v47;
  }

  v55 = v73;
  sub_1C6EE43B0();
  (v67)(v53, v54);
  v56 = v78;
  v57 = sub_1C6EE4270();
  v58 = *(v74 + 8);
  v59 = v55;
  v60 = v75;
  v58(v59, v75);
  v58(v56, v60);
  sub_1C6ECEC10(v77, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeatures);
  sub_1C6ECEC10(v70, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeatures);
  return v57 & 1;
}

uint64_t sub_1C6EC3220@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v46 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7D48, &qword_1C6EE8990);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v48 = &v43 - v7;
  v8 = sub_1C6EE43E0();
  v49 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7D58, &qword_1C6EE89A0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v44 = &v43 - v12;
  v45 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeaturesMetadata(0);
  v13 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v47 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7780, &unk_1C6EE6930);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v43 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F9868, &unk_1C6EF6B40);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v43 - v19;
  v21 = OBJC_IVAR____TtCC18ComputationalGraph13FeaturesStore17FeaturesStoreData_store;
  swift_beginAccess();
  v22 = *(v3 + v21);
  if (*(v22 + 16) && (v23 = sub_1C6DEC784(a1, a2), (v24 & 1) != 0))
  {
    v25 = v23;
    v26 = *(v22 + 56);
    v27 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeatures(0);
    v28 = *(v27 - 8);
    v43 = v20;
    v29 = v10;
    v30 = v13;
    v31 = v28;
    sub_1C6ECEC70(v26 + *(v28 + 72) * v25, v17, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeatures);
    (*(v31 + 56))(v17, 0, 1, v27);
    v13 = v30;
    v10 = v29;
    v20 = v43;
  }

  else
  {
    v27 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeatures(0);
    (*(*(v27 - 8) + 56))(v17, 1, 1, v27);
  }

  v33 = v47;
  v32 = v48;
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeatures(0);
  if ((*(*(v27 - 8) + 48))(v17, 1, v27))
  {
    sub_1C6ECEEAC(v17, &qword_1EC1F7780, &unk_1C6EE6930);
    swift_endAccess();
    v34 = sub_1C6EE42C0();
    v35 = *(v34 - 8);
    (*(v35 + 56))(v20, 1, 1, v34);
    sub_1C6EE4250();
    result = (*(v35 + 48))(v20, 1, v34);
    if (result != 1)
    {
      return sub_1C6ECEEAC(v20, &qword_1EC1F9868, &unk_1C6EF6B40);
    }
  }

  else
  {
    v37 = v44;
    sub_1C6ECEE44(&v17[*(v27 + 24)], v44, &qword_1EC1F7D58, &qword_1C6EE89A0);
    v38 = *(v13 + 48);
    v39 = v45;
    if (v38(v37, 1, v45) == 1)
    {
      *v33 = 0;
      sub_1C6EE4420();
      (*(v49 + 56))(&v33[*(v39 + 24)], 1, 1, v8);
      if (v38(v37, 1, v39) != 1)
      {
        sub_1C6ECEEAC(v37, &qword_1EC1F7D58, &qword_1C6EE89A0);
      }
    }

    else
    {
      sub_1C6ECEF0C(v37, v33, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeaturesMetadata);
    }

    sub_1C6ECEE44(&v33[*(v39 + 24)], v32, &qword_1EC1F7D48, &qword_1C6EE8990);
    v40 = *(v49 + 48);
    if (v40(v32, 1, v8) == 1)
    {
      sub_1C6EE43D0();
      sub_1C6ECEC10(v33, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeaturesMetadata);
      if (v40(v32, 1, v8) != 1)
      {
        sub_1C6ECEEAC(v32, &qword_1EC1F7D48, &qword_1C6EE8990);
      }
    }

    else
    {
      sub_1C6ECEC10(v33, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeaturesMetadata);
      (*(v49 + 32))(v10, v32, v8);
    }

    sub_1C6ECEEAC(v17, &qword_1EC1F7780, &unk_1C6EE6930);
    swift_endAccess();
    sub_1C6EE43B0();
    (*(v49 + 8))(v10, v8);
    v41 = sub_1C6EE42C0();
    v42 = *(v41 - 8);
    (*(v42 + 56))(v20, 0, 1, v41);
    return (*(v42 + 32))(v46, v20, v41);
  }

  return result;
}