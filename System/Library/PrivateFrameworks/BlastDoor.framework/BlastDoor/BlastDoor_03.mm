uint64_t __swift_get_extra_inhabitant_index_849Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2146D8DF8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8) >> 60;
    v11 = ((4 * v10) & 0xC) == 0;
    v12 = ((4 * v10) & 0xC | (v10 >> 2)) ^ 0xF;
    if (v11)
    {
      return 0;
    }

    else
    {
      return v12;
    }
  }
}

uint64_t __swift_store_extra_inhabitant_index_850Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2146D8DF8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    v11 = (a1 + *(a4 + 20));
    *v11 = 0;
    v11[1] = ((~a2 >> 2) & 3 | (4 * ~a2)) << 60;
  }

  return result;
}

void sub_21401F828(uint64_t a1)
{
  sub_2146D8DF8();
  if (v1 <= 0x3F)
  {
    sub_21402F448(319, &qword_280B2FDD0, MEMORY[0x277CC9318], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_793Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2146D8DF8();
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

uint64_t __swift_store_extra_inhabitant_index_794Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2146D8DF8();
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

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

__n128 __swift_memcpy16_4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_21401FBE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_2146D8E78();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      if (result > 7)
      {
        if (result > 10)
        {
          switch(result)
          {
            case 11:
              sub_21402035C(a2, a1, a3, a4);
              break;
            case 12:
              sub_214020438(a2, a1, a3, a4, &OBJC_IVAR____TtCV9BlastDoor29CSDMConversationActivityProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isSystemActivity);
              break;
            case 13:
              sub_2140204C0(a2, a1, a3, a4, &OBJC_IVAR____TtCV9BlastDoor29CSDMConversationActivityProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__timestampAsTimeIntervalSinceReferenceDate);
              break;
          }
        }

        else if (result == 8)
        {
          sub_2140201E8(a2, a1, a3, a4);
        }

        else if (result == 9)
        {
          sub_2140204C0(a2, a1, a3, a4, &OBJC_IVAR____TtCV9BlastDoor29CSDMConversationActivityProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__updatedDateEpochTime);
        }

        else
        {
          sub_2140202C4(a2, a1, a3, a4, &OBJC_IVAR____TtCV9BlastDoor29CSDMConversationActivityProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__fallbackApplicationName, MEMORY[0x277D217D0]);
        }
      }

      else if (result > 3)
      {
        switch(result)
        {
          case 4:
            sub_214020004(a2, a1, a3, a4);
            break;
          case 5:
            sub_214020088(a2, a1, a3, a4);
            break;
          case 7:
            sub_21402010C(a2, a1, a3, a4);
            break;
        }
      }

      else
      {
        switch(result)
        {
          case 1:
            sub_21401FE70(a2, a1, a3, a4);
            break;
          case 2:
            sub_21401FEF4(a2, a1, a3, a4, MEMORY[0x277D21760]);
            break;
          case 3:
            sub_21401FF80(a2, a1, a3, a4);
            break;
        }
      }

      result = sub_2146D8E78();
    }
  }

  return result;
}

uint64_t sub_21401FE70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_2146D8F38();
  return swift_endAccess();
}

uint64_t sub_21401FEF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  swift_beginAccess();
  a5(a2 + 32, a3, a4);
  return swift_endAccess();
}

uint64_t sub_21401FF80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_2146D8F38();
  return swift_endAccess();
}

uint64_t sub_214020004(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_2146D8F38();
  return swift_endAccess();
}

uint64_t sub_214020088(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_2146D8EC8();
  return swift_endAccess();
}

uint64_t sub_21402010C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for CSDMConversationActivityContextProto(0);
  sub_214027000(&qword_27C903B60, type metadata accessor for CSDMConversationActivityContextProto, byte_2146E8998);
  sub_2146D8F98();
  return swift_endAccess();
}

uint64_t sub_2140201E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for CSDMHandleProto(0);
  sub_214027000(&qword_27C903C20, type metadata accessor for CSDMHandleProto, byte_2146E9208);
  sub_2146D8F98();
  return swift_endAccess();
}

uint64_t sub_2140202C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, void (*a6)(uint64_t, uint64_t, uint64_t))
{
  v10 = *a5;
  swift_beginAccess();
  a6(a2 + v10, a3, a4);
  return swift_endAccess();
}

uint64_t sub_21402035C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for CSDMConversationActivityMetadataProto(0);
  sub_214027000(&qword_27C903B20, type metadata accessor for CSDMConversationActivityMetadataProto, byte_2146E86C8);
  sub_2146D8F98();
  return swift_endAccess();
}

uint64_t sub_214020438(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  swift_beginAccess();
  sub_2146D8E98();
  return swift_endAccess();
}

uint64_t sub_2140204C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  swift_beginAccess();
  sub_2146D8F28();
  return swift_endAccess();
}

uint64_t sub_214020548(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_2140206BC(a1, a2, a3, a4);
  if (!v4)
  {
    sub_214020758(a1, a2, a3, a4);
    sub_214020804(a1, a2, a3, a4);
    sub_2140208A0(a1, a2, a3, a4, 4);
    sub_21402094C(a1, a2, a3, a4);
    sub_2140209F8(a1, a2, a3, a4);
    sub_214020C14(a1, a2, a3, a4);
    sub_214021198(a1, a2, a3, a4, &OBJC_IVAR____TtCV9BlastDoor29CSDMConversationActivityProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__updatedDateEpochTime, 9);
    sub_214020E30(a1, a2, a3, a4, &OBJC_IVAR____TtCV9BlastDoor29CSDMConversationActivityProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__fallbackApplicationName, 10);
    sub_214020EE0(a1, a2, a3, a4);
    sub_2140210FC(a1, a2, a3, a4, &OBJC_IVAR____TtCV9BlastDoor29CSDMConversationActivityProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isSystemActivity, 12);
    return sub_214021198(a1, a2, a3, a4, &OBJC_IVAR____TtCV9BlastDoor29CSDMConversationActivityProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__timestampAsTimeIntervalSinceReferenceDate, 13);
  }

  return result;
}

uint64_t sub_2140206BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if (*(a1 + 24))
  {

    sub_2146D90A8();
  }

  return result;
}

uint64_t sub_214020758(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  v6 = *(a1 + 40);
  if (v6 >> 60 != 15)
  {
    v7 = *(a1 + 32);
    sub_21402D9F8(v7, v6);
    sub_2146D9048();
    return sub_213FDC6BC(v7, v6);
  }

  return result;
}

uint64_t sub_214020804(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if (*(a1 + 56))
  {

    sub_2146D90A8();
  }

  return result;
}

uint64_t sub_2140208A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = swift_beginAccess();
  if (*(a1 + 72))
  {

    sub_2146D90A8();
  }

  return result;
}

uint64_t sub_21402094C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  v6 = *(a1 + 88);
  if (v6 >> 60 != 15)
  {
    v7 = *(a1 + 80);
    sub_21402D9F8(v7, v6);
    sub_2146D9048();
    return sub_213FDC6BC(v7, v6);
  }

  return result;
}

uint64_t sub_2140209F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903DA0, &qword_2146E9880);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CSDMConversationActivityContextProto(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV9BlastDoor29CSDMConversationActivityProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__activityContext;
  swift_beginAccess();
  sub_213FB2E54(a1 + v12, v7, &qword_27C903DA0, &qword_2146E9880);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_213FB2DF4(v7, &qword_27C903DA0, &qword_2146E9880);
  }

  sub_214028E34(v7, v11, type metadata accessor for CSDMConversationActivityContextProto);
  sub_214027000(&qword_27C903B60, type metadata accessor for CSDMConversationActivityContextProto, byte_2146E8998);
  sub_2146D90F8();
  return sub_214028E9C(v11, type metadata accessor for CSDMConversationActivityContextProto);
}

uint64_t sub_214020C14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C903788, "Į\r");
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CSDMHandleProto(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV9BlastDoor29CSDMConversationActivityProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__originatorHandle;
  swift_beginAccess();
  sub_213FB2E54(a1 + v12, v7, &unk_27C903788, "Į\r");
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_213FB2DF4(v7, &unk_27C903788, "Į\r");
  }

  sub_214028E34(v7, v11, type metadata accessor for CSDMHandleProto);
  sub_214027000(&qword_27C903C20, type metadata accessor for CSDMHandleProto, byte_2146E9208);
  sub_2146D90F8();
  return sub_214028E9C(v11, type metadata accessor for CSDMHandleProto);
}

uint64_t sub_214020E30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v6 = a1 + *a5;
  result = swift_beginAccess();
  if (*(v6 + 8))
  {

    sub_2146D90A8();
  }

  return result;
}

uint64_t sub_214020EE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D90, &qword_2146E9870);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CSDMConversationActivityMetadataProto(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV9BlastDoor29CSDMConversationActivityProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__activityMetadata;
  swift_beginAccess();
  sub_213FB2E54(a1 + v12, v7, &qword_27C903D90, &qword_2146E9870);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_213FB2DF4(v7, &qword_27C903D90, &qword_2146E9870);
  }

  sub_214028E34(v7, v11, type metadata accessor for CSDMConversationActivityMetadataProto);
  sub_214027000(&qword_27C903B20, type metadata accessor for CSDMConversationActivityMetadataProto, byte_2146E86C8);
  sub_2146D90F8();
  return sub_214028E9C(v11, type metadata accessor for CSDMConversationActivityMetadataProto);
}

uint64_t sub_2140210FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  v7 = *a5;
  result = swift_beginAccess();
  if (*(a1 + v7) != 2)
  {
    return sub_2146D9028();
  }

  return result;
}

uint64_t sub_214021198(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v6 = a1 + *a5;
  result = swift_beginAccess();
  if ((*(v6 + 8) & 1) == 0)
  {
    return sub_2146D9098();
  }

  return result;
}

uint64_t sub_214021228(void *a1, void *a2)
{
  v4 = type metadata accessor for CSDMConversationActivityMetadataProto(0);
  v121 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v116 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D88, &qword_2146E9868);
  MEMORY[0x28223BE20](v120);
  v8 = &v116 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D90, &qword_2146E9870);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v119 = &v116 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v128 = &v116 - v12;
  v13 = type metadata accessor for CSDMHandleProto(0);
  v125 = *(v13 - 8);
  v126 = v13;
  MEMORY[0x28223BE20](v13);
  v122 = &v116 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D78, &qword_2146E9858);
  MEMORY[0x28223BE20](v124);
  v127 = &v116 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C903788, "Į\r");
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v134 = &v116 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v130 = &v116 - v19;
  v20 = type metadata accessor for CSDMConversationActivityContextProto(0);
  v131 = *(v20 - 8);
  v132 = v20;
  MEMORY[0x28223BE20](v20);
  v123 = &v116 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D98, &qword_2146E9878);
  MEMORY[0x28223BE20](v22);
  v133 = &v116 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903DA0, &qword_2146E9880);
  v25 = MEMORY[0x28223BE20](v24 - 8);
  v129 = &v116 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v116 - v27;
  swift_beginAccess();
  v29 = a1[2];
  v30 = a1[3];
  swift_beginAccess();
  v31 = a2[3];
  if (v30)
  {
    if (!v31 || (v29 != a2[2] || v30 != v31) && (sub_2146DA6A8() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v31)
  {
    return 0;
  }

  v116 = v6;
  v117 = v4;
  v118 = v8;
  swift_beginAccess();
  v33 = a1[4];
  v32 = a1[5];
  swift_beginAccess();
  v35 = a2[4];
  v34 = a2[5];
  if (v32 >> 60 == 15)
  {
    if (v34 >> 60 == 15)
    {

      sub_213FDCA18(v33, v32);
      sub_213FDCA18(v35, v34);
      sub_213FDC6BC(v33, v32);
      goto LABEL_13;
    }

    sub_213FDCA18(v33, v32);
    sub_213FDCA18(v35, v34);
LABEL_20:
    sub_213FDC6BC(v33, v32);
    v40 = v35;
    v41 = v34;
LABEL_21:
    sub_213FDC6BC(v40, v41);
    return 0;
  }

  sub_213FDCA18(v33, v32);
  sub_213FDCA18(v35, v34);
  if (v34 >> 60 == 15)
  {
    goto LABEL_20;
  }

  sub_213FDCA18(v33, v32);
  sub_213FDCA18(v35, v34);
  v36 = sub_214466780(v33, v32, v35, v34);
  sub_213FDC6BC(v35, v34);
  sub_213FDC6BC(v33, v32);
  sub_213FDC6BC(v35, v34);
  sub_213FDC6BC(v33, v32);
  if (!v36)
  {
    goto LABEL_53;
  }

LABEL_13:
  swift_beginAccess();
  v37 = a1[6];
  v38 = a1[7];
  swift_beginAccess();
  v39 = a2[7];
  if (v38)
  {
    if (!v39 || (v37 != a2[6] || v38 != v39) && (sub_2146DA6A8() & 1) == 0)
    {
      goto LABEL_53;
    }
  }

  else if (v39)
  {
    goto LABEL_53;
  }

  swift_beginAccess();
  v42 = a1[8];
  v43 = a1[9];
  swift_beginAccess();
  v44 = a2[9];
  if (v43)
  {
    if (!v44 || (v42 != a2[8] || v43 != v44) && (sub_2146DA6A8() & 1) == 0)
    {
      goto LABEL_53;
    }
  }

  else if (v44)
  {
    goto LABEL_53;
  }

  swift_beginAccess();
  v46 = a1[10];
  v45 = a1[11];
  swift_beginAccess();
  v47 = a2[10];
  v48 = a2[11];
  sub_213FDCA18(v46, v45);
  sub_213FDCA18(v47, v48);
  if (v45 >> 60 == 15)
  {
    if (v48 >> 60 == 15)
    {
      sub_213FDC6BC(v46, v45);
      goto LABEL_38;
    }

    goto LABEL_36;
  }

  sub_213FDCA18(v46, v45);
  sub_213FDCA18(v47, v48);
  if (v48 >> 60 == 15)
  {

    sub_213FDC6BC(v47, v48);
    sub_213FDC6BC(v46, v45);
LABEL_36:
    sub_213FDC6BC(v46, v45);
    v40 = v47;
    v41 = v48;
    goto LABEL_21;
  }

  v49 = sub_214466780(v46, v45, v47, v48);
  sub_213FDC6BC(v47, v48);
  sub_213FDC6BC(v46, v45);
  sub_213FDC6BC(v47, v48);
  sub_213FDC6BC(v46, v45);
  if (!v49)
  {
    goto LABEL_53;
  }

LABEL_38:
  v50 = OBJC_IVAR____TtCV9BlastDoor29CSDMConversationActivityProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__activityContext;
  swift_beginAccess();
  sub_213FB2E54(a1 + v50, v28, &qword_27C903DA0, &qword_2146E9880);
  v51 = OBJC_IVAR____TtCV9BlastDoor29CSDMConversationActivityProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__activityContext;
  swift_beginAccess();
  v52 = *(v22 + 48);
  v53 = v133;
  sub_213FB2E54(v28, v133, &qword_27C903DA0, &qword_2146E9880);
  sub_213FB2E54(a2 + v51, v53 + v52, &qword_27C903DA0, &qword_2146E9880);
  v54 = v132;
  v55 = *(v131 + 48);
  if (v55(v53, 1, v132) == 1)
  {
    sub_213FB2DF4(v28, &qword_27C903DA0, &qword_2146E9880);
    v56 = v55(v53 + v52, 1, v54);
    v57 = v134;
    if (v56 == 1)
    {
      sub_213FB2DF4(v53, &qword_27C903DA0, &qword_2146E9880);
      goto LABEL_45;
    }

LABEL_43:
    v61 = &qword_27C903D98;
    v62 = &qword_2146E9878;
    v63 = v53;
LABEL_52:
    sub_213FB2DF4(v63, v61, v62);
    goto LABEL_53;
  }

  v58 = v129;
  sub_213FB2E54(v53, v129, &qword_27C903DA0, &qword_2146E9880);
  v59 = v55(v53 + v52, 1, v54);
  v60 = v134;
  if (v59 == 1)
  {
    sub_213FB2DF4(v28, &qword_27C903DA0, &qword_2146E9880);
    sub_214028E9C(v58, type metadata accessor for CSDMConversationActivityContextProto);
    goto LABEL_43;
  }

  v64 = v53 + v52;
  v65 = v123;
  sub_214028E34(v64, v123, type metadata accessor for CSDMConversationActivityContextProto);
  v66 = sub_21402A61C(v58, v65);
  sub_214028E9C(v65, type metadata accessor for CSDMConversationActivityContextProto);
  sub_213FB2DF4(v28, &qword_27C903DA0, &qword_2146E9880);
  sub_214028E9C(v58, type metadata accessor for CSDMConversationActivityContextProto);
  sub_213FB2DF4(v53, &qword_27C903DA0, &qword_2146E9880);
  v57 = v60;
  if ((v66 & 1) == 0)
  {
    goto LABEL_53;
  }

LABEL_45:
  v67 = OBJC_IVAR____TtCV9BlastDoor29CSDMConversationActivityProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__originatorHandle;
  swift_beginAccess();
  v68 = v130;
  sub_213FB2E54(a1 + v67, v130, &unk_27C903788, "Į\r");
  v69 = OBJC_IVAR____TtCV9BlastDoor29CSDMConversationActivityProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__originatorHandle;
  swift_beginAccess();
  v70 = *(v124 + 48);
  v71 = v127;
  sub_213FB2E54(v68, v127, &unk_27C903788, "Į\r");
  v72 = v71;
  sub_213FB2E54(a2 + v69, v71 + v70, &unk_27C903788, "Į\r");
  v73 = v126;
  v74 = *(v125 + 48);
  if (v74(v71, 1, v126) == 1)
  {
    sub_213FB2DF4(v68, &unk_27C903788, "Į\r");
    v75 = v74(v71 + v70, 1, v73);
    v76 = v128;
    if (v75 == 1)
    {
      sub_213FB2DF4(v71, &unk_27C903788, "Į\r");
      goto LABEL_56;
    }

LABEL_50:
    v61 = &qword_27C903D78;
    v62 = &qword_2146E9858;
LABEL_51:
    v63 = v72;
    goto LABEL_52;
  }

  sub_213FB2E54(v71, v57, &unk_27C903788, "Į\r");
  v77 = v74(v71 + v70, 1, v73);
  v76 = v128;
  if (v77 == 1)
  {
    sub_213FB2DF4(v130, &unk_27C903788, "Į\r");
    sub_214028E9C(v57, type metadata accessor for CSDMHandleProto);
    goto LABEL_50;
  }

  v79 = v71 + v70;
  v80 = v122;
  sub_214028E34(v79, v122, type metadata accessor for CSDMHandleProto);
  v81 = sub_21402B72C(v57, v80);
  sub_214028E9C(v80, type metadata accessor for CSDMHandleProto);
  sub_213FB2DF4(v130, &unk_27C903788, "Į\r");
  sub_214028E9C(v57, type metadata accessor for CSDMHandleProto);
  sub_213FB2DF4(v72, &unk_27C903788, "Į\r");
  if ((v81 & 1) == 0)
  {
    goto LABEL_53;
  }

LABEL_56:
  v82 = (a1 + OBJC_IVAR____TtCV9BlastDoor29CSDMConversationActivityProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__updatedDateEpochTime);
  swift_beginAccess();
  v83 = *v82;
  v84 = *(v82 + 8);
  v85 = (a2 + OBJC_IVAR____TtCV9BlastDoor29CSDMConversationActivityProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__updatedDateEpochTime);
  swift_beginAccess();
  if (v84)
  {
    if ((v85[1] & 1) == 0)
    {
      goto LABEL_53;
    }
  }

  else if ((v85[1] & 1) != 0 || v83 != *v85)
  {
    goto LABEL_53;
  }

  v86 = (a1 + OBJC_IVAR____TtCV9BlastDoor29CSDMConversationActivityProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__fallbackApplicationName);
  swift_beginAccess();
  v87 = *v86;
  v88 = v86[1];
  v89 = (a2 + OBJC_IVAR____TtCV9BlastDoor29CSDMConversationActivityProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__fallbackApplicationName);
  swift_beginAccess();
  v90 = v89[1];
  if (v88)
  {
    if (!v90 || (v87 != *v89 || v88 != v90) && (sub_2146DA6A8() & 1) == 0)
    {
      goto LABEL_53;
    }
  }

  else if (v90)
  {
    goto LABEL_53;
  }

  v91 = OBJC_IVAR____TtCV9BlastDoor29CSDMConversationActivityProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__activityMetadata;
  swift_beginAccess();
  sub_213FB2E54(a1 + v91, v76, &qword_27C903D90, &qword_2146E9870);
  v92 = OBJC_IVAR____TtCV9BlastDoor29CSDMConversationActivityProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__activityMetadata;
  swift_beginAccess();
  v93 = *(v120 + 48);
  v94 = v118;
  sub_213FB2E54(v76, v118, &qword_27C903D90, &qword_2146E9870);
  v72 = v94;
  sub_213FB2E54(a2 + v92, v94 + v93, &qword_27C903D90, &qword_2146E9870);
  v95 = *(v121 + 48);
  v96 = v94;
  v97 = v117;
  if (v95(v96, 1, v117) == 1)
  {
    sub_213FB2DF4(v76, &qword_27C903D90, &qword_2146E9870);
    if (v95(v72 + v93, 1, v97) == 1)
    {
      sub_213FB2DF4(v72, &qword_27C903D90, &qword_2146E9870);
      goto LABEL_75;
    }

    goto LABEL_73;
  }

  v98 = v97;
  v99 = v119;
  sub_213FB2E54(v72, v119, &qword_27C903D90, &qword_2146E9870);
  if (v95(v72 + v93, 1, v98) == 1)
  {
    sub_213FB2DF4(v128, &qword_27C903D90, &qword_2146E9870);
    sub_214028E9C(v99, type metadata accessor for CSDMConversationActivityMetadataProto);
LABEL_73:
    v61 = &qword_27C903D88;
    v62 = &qword_2146E9868;
    goto LABEL_51;
  }

  v100 = v72 + v93;
  v101 = v116;
  sub_214028E34(v100, v116, type metadata accessor for CSDMConversationActivityMetadataProto);
  v102 = sub_2140294F0(v99, v101);
  v103 = v99;
  v104 = v72;
  v105 = v102;
  sub_214028E9C(v101, type metadata accessor for CSDMConversationActivityMetadataProto);
  sub_213FB2DF4(v128, &qword_27C903D90, &qword_2146E9870);
  sub_214028E9C(v103, type metadata accessor for CSDMConversationActivityMetadataProto);
  sub_213FB2DF4(v104, &qword_27C903D90, &qword_2146E9870);
  if ((v105 & 1) == 0)
  {
    goto LABEL_53;
  }

LABEL_75:
  v106 = OBJC_IVAR____TtCV9BlastDoor29CSDMConversationActivityProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isSystemActivity;
  swift_beginAccess();
  v107 = *(a1 + v106);
  v108 = OBJC_IVAR____TtCV9BlastDoor29CSDMConversationActivityProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isSystemActivity;
  swift_beginAccess();
  v109 = *(a2 + v108);
  if (v107 == 2)
  {
    if (v109 == 2)
    {
      goto LABEL_80;
    }

LABEL_53:

    return 0;
  }

  if (v109 == 2 || ((v107 ^ v109) & 1) != 0)
  {
    goto LABEL_53;
  }

LABEL_80:
  v110 = (a1 + OBJC_IVAR____TtCV9BlastDoor29CSDMConversationActivityProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__timestampAsTimeIntervalSinceReferenceDate);
  swift_beginAccess();
  v111 = *v110;
  LOBYTE(v110) = *(v110 + 8);

  v112 = (a2 + OBJC_IVAR____TtCV9BlastDoor29CSDMConversationActivityProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__timestampAsTimeIntervalSinceReferenceDate);
  swift_beginAccess();
  v113 = *v112;
  v114 = *(v112 + 8);

  if (v110)
  {
    if (!v114)
    {
      return 0;
    }
  }

  else
  {
    if (v111 == v113)
    {
      v115 = v114;
    }

    else
    {
      v115 = 1;
    }

    if (v115)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_21402226C@<X0>(uint64_t a1@<X0>, void *a2@<X2>, uint64_t *a3@<X3>, uint64_t a5@<X8>)
{
  sub_2146D8DE8();
  v9 = *(a1 + 20);
  if (*a2 != -1)
  {
    swift_once();
  }

  *(a5 + v9) = *a3;
}

uint64_t sub_2140223AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_214027000(&qword_27C903DD8, type metadata accessor for CSDMConversationActivityProto, a9s);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21402244C(uint64_t a1)
{
  v2 = sub_214027000(&qword_27C903B00, type metadata accessor for CSDMConversationActivityProto, a1u);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2140224B8(uint64_t a1, uint64_t a2)
{
  sub_214027000(&qword_27C903B00, type metadata accessor for CSDMConversationActivityProto, a1u);

  return sub_2146D9008();
}

uint64_t sub_214022578()
{
  v0 = sub_2146D9148();
  __swift_allocate_value_buffer(v0, qword_27CA19878);
  __swift_project_value_buffer(v0, qword_27CA19878);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D20, &unk_214735770);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D28, &qword_2146E9820) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2146E68D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "identifierUUIDString";
  *(v6 + 8) = 20;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_2146D9118();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "activity";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "creationDateEpochTime";
  *(v11 + 8) = 21;
  *(v11 + 16) = 2;
  v9();
  return sub_2146D9128();
}

uint64_t sub_21402278C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_2146D8E78();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        type metadata accessor for CSDMConversationActivitySessionProto(0);
        sub_2146D8F28();
        break;
      case 2:
        sub_21402286C(a1, v5, a2, a3);
        break;
      case 1:
        type metadata accessor for CSDMConversationActivitySessionProto(0);
        sub_2146D8F38();
        break;
    }
  }

  return result;
}

uint64_t sub_21402286C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for CSDMConversationActivitySessionProto(0);
  type metadata accessor for CSDMConversationActivityProto(0);
  sub_214027000(&qword_27C903B00, type metadata accessor for CSDMConversationActivityProto, a1u);
  return sub_2146D8F98();
}

uint64_t sub_214022920(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_21401C0EC(v3, a1, a2, a3, type metadata accessor for CSDMConversationActivitySessionProto);
  if (!v4)
  {
    sub_2140229BC(v3, a1, a2, a3);
    sub_214022BCC(v3, a1, a2, a3);
    return sub_2146D8DD8();
  }

  return result;
}

uint64_t sub_2140229BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C903858, &unk_2146E6F50);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CSDMConversationActivityProto(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CSDMConversationActivitySessionProto(0);
  sub_213FB2E54(a1 + *(v12 + 24), v7, &unk_27C903858, &unk_2146E6F50);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_213FB2DF4(v7, &unk_27C903858, &unk_2146E6F50);
  }

  sub_214028E34(v7, v11, type metadata accessor for CSDMConversationActivityProto);
  sub_214027000(&qword_27C903B00, type metadata accessor for CSDMConversationActivityProto, a1u);
  sub_2146D90F8();
  return sub_214028E9C(v11, type metadata accessor for CSDMConversationActivityProto);
}

uint64_t sub_214022BCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for CSDMConversationActivitySessionProto(0);
  if ((*(a1 + *(result + 28) + 8) & 1) == 0)
  {
    return sub_2146D9098();
  }

  return result;
}

uint64_t sub_214022C44@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  sub_2146D8DE8();
  v4 = a1[6];
  v5 = (a2 + a1[5]);
  *v5 = 0;
  v5[1] = 0;
  v6 = type metadata accessor for CSDMConversationActivityProto(0);
  result = (*(*(v6 - 8) + 56))(a2 + v4, 1, 1, v6);
  v8 = a2 + a1[7];
  *v8 = 0;
  *(v8 + 8) = 1;
  return result;
}

uint64_t sub_214022D20(uint64_t a1, uint64_t a2)
{
  v4 = sub_214027000(&qword_27C903DE0, type metadata accessor for CSDMConversationActivitySessionProto, byte_2146E83C0);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_214022DC0(uint64_t a1)
{
  v2 = sub_214027000(&qword_27C903AE0, type metadata accessor for CSDMConversationActivitySessionProto, byte_2146E83F8);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_214022E2C(uint64_t a1, uint64_t a2)
{
  sub_214027000(&qword_27C903AE0, type metadata accessor for CSDMConversationActivitySessionProto, byte_2146E83F8);

  return sub_2146D9008();
}

uint64_t sub_214022EAC()
{
  v0 = sub_2146D9148();
  __swift_allocate_value_buffer(v0, qword_27CA19890);
  __swift_project_value_buffer(v0, qword_27CA19890);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D20, &unk_214735770);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D28, &qword_2146E9820) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_2146E6970;
  v4 = v28 + v3;
  v5 = v28 + v3 + v1[14];
  *(v28 + v3) = 1;
  *v5 = "pseudonym";
  *(v5 + 8) = 9;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_2146D9118();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "publicKey";
  *(v9 + 8) = 9;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "privateKey";
  *(v11 + 1) = 10;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "invitedHandles";
  *(v13 + 1) = 14;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "creationDateEpochTime";
  *(v15 + 1) = 21;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "groupUUIDString";
  *(v17 + 1) = 15;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "originatorHandle";
  *(v19 + 1) = 16;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "pseudonymExpirationDateEpochTime";
  *(v21 + 1) = 32;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "isActivated";
  *(v22 + 8) = 11;
  *(v22 + 16) = 2;
  v8();
  v23 = (v4 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 11;
  *v24 = "linkName";
  *(v24 + 1) = 8;
  v24[16] = 2;
  v8();
  v25 = (v4 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 12;
  *v26 = "linkLifetimeScope";
  *(v26 + 1) = 17;
  v26[16] = 2;
  v8();
  return sub_2146D9128();
}

uint64_t sub_2140232A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_2146D8E78();
  if (!v4)
  {
    while (1)
    {
      if (v10)
      {
        return result;
      }

      if (result <= 5)
      {
        if (result <= 2)
        {
          if (result == 1)
          {
LABEL_4:
            v11 = v4;
            type metadata accessor for CSDMConversationLinkProto(0);
LABEL_5:
            v4 = v11;
            sub_2146D8F38();
            goto LABEL_6;
          }

          if (result == 2)
          {
LABEL_28:
            type metadata accessor for CSDMConversationLinkProto(0);
            sub_2146D8EC8();
          }
        }

        else
        {
          if (result == 3)
          {
            goto LABEL_28;
          }

          if (result != 4)
          {
            v11 = v4;
            type metadata accessor for CSDMConversationLinkProto(0);
            goto LABEL_17;
          }

          type metadata accessor for CSDMHandleProto(0);
          sub_214027000(&qword_27C903C20, type metadata accessor for CSDMHandleProto, byte_2146E9208);
          sub_2146D8F78();
        }
      }

      else if (result > 8)
      {
        switch(result)
        {
          case 9:
            type metadata accessor for CSDMConversationLinkProto(0);
            sub_2146D8E98();
            break;
          case 11:
            goto LABEL_4;
          case 12:
            sub_2140235DC(a1, v5, a2, a3);
            break;
        }
      }

      else
      {
        v11 = v4;
        if (result == 6)
        {
          type metadata accessor for CSDMConversationLinkProto(0);
          goto LABEL_5;
        }

        if (result != 7)
        {
          type metadata accessor for CSDMConversationLinkProto(0);
LABEL_17:
          v4 = v11;
          sub_2146D8F28();
          goto LABEL_6;
        }

        sub_214023528(a1, v5, a2, a3);
      }

LABEL_6:
      result = sub_2146D8E78();
    }
  }

  return result;
}

uint64_t sub_214023528(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for CSDMConversationLinkProto(0);
  type metadata accessor for CSDMHandleProto(0);
  sub_214027000(&qword_27C903C20, type metadata accessor for CSDMHandleProto, byte_2146E9208);
  return sub_2146D8F98();
}

uint64_t sub_2140235DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for CSDMConversationLinkProto(0);
  sub_21402EE20();
  return sub_2146D8EB8();
}

uint64_t sub_214023650(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_21401BA04(v3, a1, a2, a3, type metadata accessor for CSDMConversationLinkProto, 1);
  if (!v4)
  {
    sub_214023878(v3, a1, a2, a3, type metadata accessor for CSDMConversationLinkProto, 2);
    sub_21402392C(v3, a1, a2, a3);
    if (*(*v3 + 16))
    {
      type metadata accessor for CSDMHandleProto(0);
      sub_214027000(&qword_27C903C20, type metadata accessor for CSDMHandleProto, byte_2146E9208);
      sub_2146D90D8();
    }

    sub_2140239CC(v3, a1, a2, a3);
    sub_214023A44(v3, a1, a2, a3, type metadata accessor for CSDMConversationLinkProto, 6);
    sub_214023AC8(v3, a1, a2, a3);
    sub_214023CD8(v3, a1, a2, a3);
    sub_214023D50(v3, a1, a2, a3);
    sub_214023DC8(v3, a1, a2, a3);
    sub_214023E40(v3, a1, a2, a3);
    type metadata accessor for CSDMConversationLinkProto(0);
    return sub_2146D8DD8();
  }

  return result;
}

uint64_t sub_214023878(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6)
{
  result = a5(0);
  v8 = a1 + *(result + 28);
  v9 = *(v8 + 8);
  if (v9 >> 60 != 15)
  {
    v10 = *v8;
    sub_21402D9F8(*v8, *(v8 + 8));
    sub_2146D9048();
    return sub_213FDC6BC(v10, v9);
  }

  return result;
}

uint64_t sub_21402392C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for CSDMConversationLinkProto(0);
  v6 = a1 + *(result + 32);
  v7 = *(v6 + 8);
  if (v7 >> 60 != 15)
  {
    v8 = *v6;
    sub_21402D9F8(*v6, *(v6 + 8));
    sub_2146D9048();
    return sub_213FDC6BC(v8, v7);
  }

  return result;
}

uint64_t sub_2140239CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for CSDMConversationLinkProto(0);
  if ((*(a1 + *(result + 36) + 8) & 1) == 0)
  {
    return sub_2146D9098();
  }

  return result;
}

uint64_t sub_214023A44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6)
{
  result = a5(0);
  if (*(a1 + *(result + 40) + 8))
  {
    return sub_2146D90A8();
  }

  return result;
}

uint64_t sub_214023AC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C903788, "Į\r");
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CSDMHandleProto(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CSDMConversationLinkProto(0);
  sub_213FB2E54(a1 + *(v12 + 44), v7, &unk_27C903788, "Į\r");
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_213FB2DF4(v7, &unk_27C903788, "Į\r");
  }

  sub_214028E34(v7, v11, type metadata accessor for CSDMHandleProto);
  sub_214027000(&qword_27C903C20, type metadata accessor for CSDMHandleProto, byte_2146E9208);
  sub_2146D90F8();
  return sub_214028E9C(v11, type metadata accessor for CSDMHandleProto);
}

uint64_t sub_214023CD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for CSDMConversationLinkProto(0);
  if ((*(a1 + *(result + 48) + 8) & 1) == 0)
  {
    return sub_2146D9098();
  }

  return result;
}

uint64_t sub_214023D50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for CSDMConversationLinkProto(0);
  if (*(a1 + *(result + 52)) != 2)
  {
    return sub_2146D9028();
  }

  return result;
}

uint64_t sub_214023DC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for CSDMConversationLinkProto(0);
  if (*(a1 + *(result + 56) + 8))
  {
    return sub_2146D90A8();
  }

  return result;
}

uint64_t sub_214023E40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for CSDMConversationLinkProto(0);
  if (*(a1 + *(result + 60)) != 2)
  {
    sub_21402EE20();
    return sub_2146D9038();
  }

  return result;
}

uint64_t sub_214023ED0@<X0>(int *a1@<X0>, char *a2@<X8>)
{
  *a2 = MEMORY[0x277D84F90];
  sub_2146D8DE8();
  v4 = a1[7];
  v5 = &a2[a1[6]];
  *v5 = 0;
  *(v5 + 1) = 0;
  *&a2[v4] = xmmword_2146E68C0;
  v6 = a1[9];
  *&a2[a1[8]] = xmmword_2146E68C0;
  v7 = &a2[v6];
  *v7 = 0;
  v7[8] = 1;
  v8 = a1[11];
  v9 = &a2[a1[10]];
  *v9 = 0;
  *(v9 + 1) = 0;
  v10 = type metadata accessor for CSDMHandleProto(0);
  result = (*(*(v10 - 8) + 56))(&a2[v8], 1, 1, v10);
  v12 = a1[13];
  v13 = &a2[a1[12]];
  *v13 = 0;
  v13[8] = 1;
  a2[v12] = 2;
  v14 = a1[15];
  v15 = &a2[a1[14]];
  *v15 = 0;
  *(v15 + 1) = 0;
  a2[v14] = 2;
  return result;
}

uint64_t sub_214023FD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_2146D8DF8();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_214024048(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 20);
  v5 = sub_2146D8DF8();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_214024110(uint64_t a1, uint64_t a2)
{
  v4 = sub_214027000(&qword_27C903DE8, type metadata accessor for CSDMConversationLinkProto, aV_16);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2140241B0(uint64_t a1)
{
  v2 = sub_214027000(&qword_27C903AC0, type metadata accessor for CSDMConversationLinkProto, byte_2146E8290);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21402421C(uint64_t a1, uint64_t a2)
{
  sub_214027000(&qword_27C903AC0, type metadata accessor for CSDMConversationLinkProto, byte_2146E8290);

  return sub_2146D9008();
}

uint64_t sub_21402429C()
{
  v0 = sub_2146D9148();
  __swift_allocate_value_buffer(v0, qword_27CA198A8);
  __swift_project_value_buffer(v0, qword_27CA198A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D20, &unk_214735770);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D28, &qword_2146E9820) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2146E6910;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "Indefinite";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_2146D9118();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "CallDuration";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v9();
  return sub_2146D9128();
}

uint64_t sub_214024488()
{
  v0 = sub_2146D9148();
  __swift_allocate_value_buffer(v0, qword_27CA198C0);
  __swift_project_value_buffer(v0, qword_27CA198C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D20, &unk_214735770);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D28, &qword_2146E9820) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2146E68D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "version";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_2146D9118();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "handleType";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "notificationStyles";
  *(v11 + 8) = 18;
  *(v11 + 16) = 2;
  v9();
  return sub_2146D9128();
}

uint64_t sub_21402469C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_2146D8E78();
  if (!v4)
  {
    while (1)
    {
      if (v10)
      {
        return result;
      }

      switch(result)
      {
        case 3:
          goto LABEL_10;
        case 2:
          sub_2140247A4(a1, v5, a2, a3, type metadata accessor for CSDMConversationInvitationPreferenceProto, sub_21402EE74, &type metadata for CSDMConversationInvitationPreferenceProto.PreferenceHandleType);
          break;
        case 1:
LABEL_10:
          type metadata accessor for CSDMConversationInvitationPreferenceProto(0);
          sub_2146D8F58();
          break;
      }

      result = sub_2146D8E78();
    }
  }

  return result;
}

uint64_t sub_2140247A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void), uint64_t a7)
{
  a5(0);
  a6();
  return sub_2146D8EB8();
}

uint64_t sub_21402482C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_214017D50(v3, a1, a2, a3, type metadata accessor for CSDMConversationInvitationPreferenceProto);
  if (!v4)
  {
    sub_2140248F8(v3, a1, a2, a3, type metadata accessor for CSDMConversationInvitationPreferenceProto, sub_21402EE74, &type metadata for CSDMConversationInvitationPreferenceProto.PreferenceHandleType);
    sub_21402499C(v3, a1, a2, a3);
    return sub_2146D8DD8();
  }

  return result;
}

uint64_t sub_2140248F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void), uint64_t a7)
{
  result = a5(0);
  if (*(a1 + *(result + 24)) != 4)
  {
    a6();
    return sub_2146D9038();
  }

  return result;
}

uint64_t sub_21402499C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for CSDMConversationInvitationPreferenceProto(0);
  if ((*(a1 + *(result + 28) + 4) & 1) == 0)
  {
    return sub_2146D90B8();
  }

  return result;
}

uint64_t sub_214024A14@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_2146D8DE8();
  v5 = a1[6];
  v6 = a2 + a1[5];
  *v6 = 0;
  *(v6 + 4) = 1;
  *(a2 + v5) = 4;
  v7 = a2 + a1[7];
  *v7 = 0;
  *(v7 + 4) = 1;
  return result;
}

uint64_t sub_214024AB4(uint64_t a1, uint64_t a2)
{
  v4 = sub_214027000(&qword_27C903DF8, type metadata accessor for CSDMConversationInvitationPreferenceProto, byte_2146E80C8);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_214024B54(uint64_t a1)
{
  v2 = sub_214027000(&qword_27C903AA0, type metadata accessor for CSDMConversationInvitationPreferenceProto, byte_2146E8100);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_214024BC0(uint64_t a1, uint64_t a2)
{
  sub_214027000(&qword_27C903AA0, type metadata accessor for CSDMConversationInvitationPreferenceProto, byte_2146E8100);

  return sub_2146D9008();
}

uint64_t sub_214024C40()
{
  v0 = sub_2146D9148();
  __swift_allocate_value_buffer(v0, qword_27CA198D8);
  __swift_project_value_buffer(v0, qword_27CA198D8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D20, &unk_214735770);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D28, &qword_2146E9820) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2146E68F0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "None";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_2146D9118();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "Generic";
  *(v10 + 8) = 7;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "PhoneNumber";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "EmailAddress";
  *(v14 + 1) = 12;
  v14[16] = 2;
  v9();
  return sub_2146D9128();
}

uint64_t sub_214024EA8()
{
  v0 = sub_2146D9148();
  __swift_allocate_value_buffer(v0, qword_27CA198F0);
  __swift_project_value_buffer(v0, qword_27CA198F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D20, &unk_214735770);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D28, &qword_2146E9820) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2146E68D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "conversationID";
  *(v6 + 8) = 14;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_2146D9118();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "timebase";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "paddingForHashedValue";
  *(v11 + 8) = 21;
  *(v11 + 16) = 2;
  v9();
  return sub_2146D9128();
}

uint64_t sub_2140250BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_2146D8E78();
    if (v3 || (v5 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 3:
        goto LABEL_8;
      case 2:
        type metadata accessor for CSDMConversationReportProto(0);
        sub_2146D8F28();
        break;
      case 1:
LABEL_8:
        type metadata accessor for CSDMConversationReportProto(0);
        sub_2146D8F38();
        break;
    }
  }
}

uint64_t sub_214025194(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_21401C0EC(v3, a1, a2, a3, type metadata accessor for CSDMConversationReportProto);
  if (!v4)
  {
    sub_214025248(v3, a1, a2, a3);
    sub_214017DCC(v3, a1, a2, a3, type metadata accessor for CSDMConversationReportProto, 3);
    return sub_2146D8DD8();
  }

  return result;
}

uint64_t sub_214025248(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for CSDMConversationReportProto(0);
  if ((*(a1 + *(result + 24) + 8) & 1) == 0)
  {
    return sub_2146D9098();
  }

  return result;
}

uint64_t sub_2140252C0@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_2146D8DE8();
  v5 = a1[6];
  v6 = (a2 + a1[5]);
  *v6 = 0;
  v6[1] = 0;
  v7 = a2 + v5;
  *v7 = 0;
  *(v7 + 8) = 1;
  v8 = (a2 + a1[7]);
  *v8 = 0;
  v8[1] = 0;
  return result;
}

uint64_t sub_21402535C(uint64_t a1, uint64_t a2)
{
  v4 = sub_214027000(&qword_27C903E08, type metadata accessor for CSDMConversationReportProto, aY_47);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2140253FC(uint64_t a1)
{
  v2 = sub_214027000(&qword_27C903A80, type metadata accessor for CSDMConversationReportProto, asc_2146E7F70);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_214025468(uint64_t a1, uint64_t a2)
{
  sub_214027000(&qword_27C903A80, type metadata accessor for CSDMConversationReportProto, asc_2146E7F70);

  return sub_2146D9008();
}

uint64_t sub_2140254E8()
{
  v0 = sub_2146D9148();
  __swift_allocate_value_buffer(v0, qword_27CA19908);
  __swift_project_value_buffer(v0, qword_27CA19908);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D20, &unk_214735770);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D28, &qword_2146E9820) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2146E6980;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "version";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_2146D9118();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "primaryHandle";
  *(v10 + 8) = 13;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "primaryIdentifier";
  *(v12 + 1) = 17;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "primaryAvcIdentifier";
  *(v14 + 1) = 20;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "associatedPseudonym";
  *(v16 + 1) = 19;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "conversationGroupUUIDString";
  *(v18 + 1) = 27;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "type";
  *(v20 + 1) = 4;
  v20[16] = 2;
  v9();
  return sub_2146D9128();
}

uint64_t sub_2140257F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_2146D8E78();
    if (v4 || (v10 & 1) != 0)
    {
      return result;
    }

    if (result <= 3)
    {
      switch(result)
      {
        case 1:
          type metadata accessor for CSDMMemberAssociationClaimProto(0);
          sub_2146D8F58();
          break;
        case 2:
          sub_2140259A8(a1, v5, a2, a3, type metadata accessor for CSDMMemberAssociationClaimProto);
          break;
        case 3:
          type metadata accessor for CSDMMemberAssociationClaimProto(0);
          sub_2146D8F68();
          break;
      }
    }

    else if (result > 5)
    {
      if (result == 6)
      {
LABEL_16:
        type metadata accessor for CSDMMemberAssociationClaimProto(0);
        sub_2146D8F38();
      }

      else if (result == 7)
      {
        type metadata accessor for CSDMMemberAssociationClaimProto(0);
        sub_2146D8EF8();
      }
    }

    else
    {
      if (result == 4)
      {
        goto LABEL_16;
      }

      sub_214025A60(a1, v5, a2, a3);
    }
  }
}

uint64_t sub_2140259A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  a5(0);
  type metadata accessor for CSDMHandleProto(0);
  sub_214027000(&qword_27C903C20, type metadata accessor for CSDMHandleProto, byte_2146E9208);
  return sub_2146D8F98();
}

uint64_t sub_214025A60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for CSDMMemberAssociationClaimProto(0);
  type metadata accessor for CSDMHandleProto(0);
  sub_214027000(&qword_27C903C20, type metadata accessor for CSDMHandleProto, byte_2146E9208);
  return sub_2146D8F98();
}

uint64_t sub_214025B14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_214017D50(v3, a1, a2, a3, type metadata accessor for CSDMMemberAssociationClaimProto);
  if (!v4)
  {
    sub_214025C54(v3, a1, a2, a3, type metadata accessor for CSDMMemberAssociationClaimProto);
    sub_214025E68(v3, a1, a2, a3);
    sub_21401BA88(v3, a1, a2, a3, type metadata accessor for CSDMMemberAssociationClaimProto, 4);
    sub_214025EE0(v3, a1, a2, a3);
    sub_214023A44(v3, a1, a2, a3, type metadata accessor for CSDMMemberAssociationClaimProto, 6);
    sub_2140260F0(v3, a1, a2, a3);
    return sub_2146D8DD8();
  }

  return result;
}

uint64_t sub_214025C54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v16[3] = a4;
  v16[0] = a2;
  v16[1] = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C903788, "Į\r");
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v16 - v8;
  v10 = type metadata accessor for CSDMHandleProto(0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a5(0);
  sub_213FB2E54(a1 + *(v14 + 24), v9, &unk_27C903788, "Į\r");
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_213FB2DF4(v9, &unk_27C903788, "Į\r");
  }

  sub_214028E34(v9, v13, type metadata accessor for CSDMHandleProto);
  sub_214027000(&qword_27C903C20, type metadata accessor for CSDMHandleProto, byte_2146E9208);
  sub_2146D90F8();
  return sub_214028E9C(v13, type metadata accessor for CSDMHandleProto);
}

uint64_t sub_214025E68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for CSDMMemberAssociationClaimProto(0);
  if ((*(a1 + *(result + 28) + 8) & 1) == 0)
  {
    return sub_2146D90C8();
  }

  return result;
}

uint64_t sub_214025EE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C903788, "Į\r");
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CSDMHandleProto(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CSDMMemberAssociationClaimProto(0);
  sub_213FB2E54(a1 + *(v12 + 36), v7, &unk_27C903788, "Į\r");
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_213FB2DF4(v7, &unk_27C903788, "Į\r");
  }

  sub_214028E34(v7, v11, type metadata accessor for CSDMHandleProto);
  sub_214027000(&qword_27C903C20, type metadata accessor for CSDMHandleProto, byte_2146E9208);
  sub_2146D90F8();
  return sub_214028E9C(v11, type metadata accessor for CSDMHandleProto);
}

uint64_t sub_2140260F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for CSDMMemberAssociationClaimProto(0);
  if ((*(a1 + *(result + 44) + 4) & 1) == 0)
  {
    return sub_2146D9068();
  }

  return result;
}

uint64_t sub_214026168@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  sub_2146D8DE8();
  v4 = a1[6];
  v5 = a2 + a1[5];
  *v5 = 0;
  *(v5 + 4) = 1;
  v6 = type metadata accessor for CSDMHandleProto(0);
  v7 = *(*(v6 - 8) + 56);
  v7(a2 + v4, 1, 1, v6);
  v8 = a1[8];
  v9 = a2 + a1[7];
  *v9 = 0;
  *(v9 + 8) = 1;
  v10 = (a2 + v8);
  *v10 = 0;
  v10[1] = 0;
  result = (v7)(a2 + a1[9], 1, 1, v6);
  v12 = a1[11];
  v13 = (a2 + a1[10]);
  *v13 = 0;
  v13[1] = 0;
  v14 = a2 + v12;
  *v14 = 0;
  *(v14 + 4) = 1;
  return result;
}

uint64_t sub_21402626C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2146D8DF8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_2140262D4(uint64_t a1)
{
  v3 = sub_2146D8DF8();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t sub_21402636C(uint64_t a1, uint64_t a2)
{
  v4 = sub_214027000(&qword_27C903E10, type metadata accessor for CSDMMemberAssociationClaimProto, byte_2146E7DD0);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21402640C@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_2146D9148();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t sub_2140264A8(uint64_t a1)
{
  v2 = sub_214027000(&qword_27C903A60, type metadata accessor for CSDMMemberAssociationClaimProto, byte_2146E7E08);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_214026514(uint64_t a1, uint64_t a2)
{
  sub_2146DA958();
  sub_2146D94E8();
  return sub_2146DA9B8();
}

uint64_t sub_21402656C(uint64_t a1, uint64_t a2)
{
  sub_214027000(&qword_27C903A60, type metadata accessor for CSDMMemberAssociationClaimProto, byte_2146E7E08);

  return sub_2146D9008();
}

uint64_t sub_2140265E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2146DA958();
  sub_2146D94E8();
  return sub_2146DA9B8();
}

uint64_t sub_214026648(uint64_t a1, id *a2)
{
  result = sub_2146D9598();
  *a2 = 0;
  return result;
}

uint64_t sub_2140266C0(uint64_t a1, id *a2)
{
  v3 = sub_2146D95A8();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_214026740@<X0>(uint64_t *a2@<X8>)
{
  sub_2146D95B8();
  v3 = sub_2146D9588();

  *a2 = v3;
  return result;
}

void *sub_214026784@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_214026794()
{
  v1 = *v0;
  sub_2146DA958();
  MEMORY[0x216055860](v1);
  return sub_2146DA9B8();
}

uint64_t sub_2140267DC(uint64_t a1)
{
  v2 = *v1;
  sub_2146DA958();
  MEMORY[0x216055860](v2);
  return sub_2146DA9B8();
}

uint64_t sub_2140268D8(uint64_t a1, uint64_t a2)
{
  sub_2146DA958();
  swift_getWitnessTable(aQe, a2);
  sub_2146D8CB8();
  return sub_2146DA9B8();
}

uint64_t sub_214026940(void *a1, uint64_t *a2)
{
  v2 = sub_2146D95B8();
  v4 = v3;
  if (v2 == sub_2146D95B8() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_2146DA6A8();
  }

  return v7 & 1;
}

_DWORD *sub_2140269C8@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_2140269E4(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  swift_getWitnessTable(aQe, a3);

  return sub_2146D8CA8();
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_214026B14()
{
  result = qword_27C903908;
  if (!qword_27C903908)
  {
    result = swift_getWitnessTable(byte_2146E7228, &type metadata for CSDMHandleProto.HandleType, v0, v1);
    atomic_store(result, &qword_27C903908);
  }

  return result;
}

unint64_t sub_214026B6C()
{
  result = qword_27C903910;
  if (!qword_27C903910)
  {
    result = swift_getWitnessTable(a0_3, &type metadata for CSDMHandleProto.HandleType, v0, v1);
    atomic_store(result, &qword_27C903910);
  }

  return result;
}

unint64_t sub_214026BC4()
{
  result = qword_27C903918;
  if (!qword_27C903918)
  {
    result = swift_getWitnessTable(aA_55, &type metadata for CSDMHandleProto.HandleType, v0, v1);
    atomic_store(result, &qword_27C903918);
  }

  return result;
}

unint64_t sub_214026C4C()
{
  result = qword_27C903930;
  if (!qword_27C903930)
  {
    result = swift_getWitnessTable(aI_58, &type metadata for CSDMConversationParticipantDidLeaveContextProto.LeaveReason, v0, v1);
    atomic_store(result, &qword_27C903930);
  }

  return result;
}

unint64_t sub_214026CA4()
{
  result = qword_27C903938;
  if (!qword_27C903938)
  {
    result = swift_getWitnessTable(byte_2146E7290, &type metadata for CSDMConversationParticipantDidLeaveContextProto.LeaveReason, v0, v1);
    atomic_store(result, &qword_27C903938);
  }

  return result;
}

unint64_t sub_214026CFC()
{
  result = qword_27C903940;
  if (!qword_27C903940)
  {
    result = swift_getWitnessTable(a9_17, &type metadata for CSDMConversationParticipantDidLeaveContextProto.LeaveReason, v0, v1);
    atomic_store(result, &qword_27C903940);
  }

  return result;
}

unint64_t sub_214026D84()
{
  result = qword_27C903958;
  if (!qword_27C903958)
  {
    result = swift_getWitnessTable(aA_56, &type metadata for CSDMCallMessageProto.CallMessageType, v0, v1);
    atomic_store(result, &qword_27C903958);
  }

  return result;
}

unint64_t sub_214026DDC()
{
  result = qword_27C903960;
  if (!qword_27C903960)
  {
    result = swift_getWitnessTable(byte_2146E73B8, &type metadata for CSDMCallMessageProto.CallMessageType, v0, v1);
    atomic_store(result, &qword_27C903960);
  }

  return result;
}

unint64_t sub_214026E34()
{
  result = qword_27C903968;
  if (!qword_27C903968)
  {
    result = swift_getWitnessTable(byte_2146E74B8, &type metadata for CSDMCallMessageProto.CallMessageType, v0, v1);
    atomic_store(result, &qword_27C903968);
  }

  return result;
}

uint64_t sub_214026E88@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_2146D9588();

  *a2 = v3;
  return result;
}

uint64_t sub_214026ED0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2146D95B8();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_214026EFC(uint64_t a1)
{
  v2 = sub_214027000(&qword_27C903E18, type metadata accessor for BlastDoorInstanceType, byte_2146E75A8);
  v3 = sub_214027000(&qword_27C903E20, type metadata accessor for BlastDoorInstanceType, byte_2146E7548);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_214027000(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2140270D8()
{
  v0 = sub_2146D95B8();
  v1 = MEMORY[0x216054680](v0);

  return v1;
}

uint64_t sub_214027114(uint64_t a1)
{
  sub_2146D95B8();
  sub_2146D9698();
}

uint64_t sub_214027168(uint64_t a1)
{
  sub_2146D95B8();
  sub_2146DA958();
  sub_2146D9698();
  v1 = sub_2146DA9B8();

  return v1;
}

unint64_t sub_214027210()
{
  result = qword_27C903998;
  if (!qword_27C903998)
  {
    result = swift_getWitnessTable(byte_2146E76F8, &type metadata for CSDMConversationLinkProto.ConversationLinkLifetimeScope, v0, v1);
    atomic_store(result, &qword_27C903998);
  }

  return result;
}

unint64_t sub_214027268()
{
  result = qword_27C9039A0;
  if (!qword_27C9039A0)
  {
    result = swift_getWitnessTable(aI_59, &type metadata for CSDMConversationLinkProto.ConversationLinkLifetimeScope, v0, v1);
    atomic_store(result, &qword_27C9039A0);
  }

  return result;
}

unint64_t sub_2140272C0()
{
  result = qword_27C9039A8;
  if (!qword_27C9039A8)
  {
    result = swift_getWitnessTable(byte_2146E7738, &type metadata for CSDMConversationLinkProto.ConversationLinkLifetimeScope, v0, v1);
    atomic_store(result, &qword_27C9039A8);
  }

  return result;
}

unint64_t sub_214027348()
{
  result = qword_27C9039C0;
  if (!qword_27C9039C0)
  {
    result = swift_getWitnessTable(byte_2146E7820, &type metadata for CSDMConversationMessageProto.ConversationMessageType, v0, v1);
    atomic_store(result, &qword_27C9039C0);
  }

  return result;
}

unint64_t sub_2140273A0()
{
  result = qword_27C9039C8;
  if (!qword_27C9039C8)
  {
    result = swift_getWitnessTable(aA_57, &type metadata for CSDMConversationMessageProto.ConversationMessageType, v0, v1);
    atomic_store(result, &qword_27C9039C8);
  }

  return result;
}

unint64_t sub_2140273F8()
{
  result = qword_27C9039D0;
  if (!qword_27C9039D0)
  {
    result = swift_getWitnessTable(aI_60, &type metadata for CSDMConversationMessageProto.ConversationMessageType, v0, v1);
    atomic_store(result, &qword_27C9039D0);
  }

  return result;
}

unint64_t sub_214027480()
{
  result = qword_27C9039E8;
  if (!qword_27C9039E8)
  {
    result = swift_getWitnessTable(aQ_46, &type metadata for CSDMConversationInvitationPreferenceProto.PreferenceHandleType, v0, v1);
    atomic_store(result, &qword_27C9039E8);
  }

  return result;
}

unint64_t sub_2140274D8()
{
  result = qword_27C9039F0;
  if (!qword_27C9039F0)
  {
    result = swift_getWitnessTable(byte_2146E7888, &type metadata for CSDMConversationInvitationPreferenceProto.PreferenceHandleType, v0, v1);
    atomic_store(result, &qword_27C9039F0);
  }

  return result;
}

unint64_t sub_214027530()
{
  result = qword_27C9039F8;
  if (!qword_27C9039F8)
  {
    result = swift_getWitnessTable(aA_58, &type metadata for CSDMConversationInvitationPreferenceProto.PreferenceHandleType, v0, v1);
    atomic_store(result, &qword_27C9039F8);
  }

  return result;
}

unint64_t sub_2140275B8()
{
  result = qword_27C903A10;
  if (!qword_27C903A10)
  {
    result = swift_getWitnessTable(aI_61, &type metadata for CSDMConversationAudioVideoModeEnum, v0, v1);
    atomic_store(result, &qword_27C903A10);
  }

  return result;
}

unint64_t sub_214027610()
{
  result = qword_27C903A18;
  if (!qword_27C903A18)
  {
    result = swift_getWitnessTable(byte_2146E79B0, &type metadata for CSDMConversationAudioVideoModeEnum, v0, v1);
    atomic_store(result, &qword_27C903A18);
  }

  return result;
}

unint64_t sub_214027668()
{
  result = qword_27C903A20;
  if (!qword_27C903A20)
  {
    result = swift_getWitnessTable(byte_2146E7AB0, &type metadata for CSDMConversationAudioVideoModeEnum, v0, v1);
    atomic_store(result, &qword_27C903A20);
  }

  return result;
}

uint64_t sub_2140276EC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    v5 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable(MEMORY[0x277D83988], v5);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_214027744()
{
  result = qword_27C903A38;
  if (!qword_27C903A38)
  {
    result = swift_getWitnessTable(asc_2146E7B98, &type metadata for CSDMConversationPresentationModeEnum, v0, v1);
    atomic_store(result, &qword_27C903A38);
  }

  return result;
}

unint64_t sub_21402779C()
{
  result = qword_27C903A40;
  if (!qword_27C903A40)
  {
    result = swift_getWitnessTable(byte_2146E7AD8, &type metadata for CSDMConversationPresentationModeEnum, v0, v1);
    atomic_store(result, &qword_27C903A40);
  }

  return result;
}

unint64_t sub_2140277F4()
{
  result = qword_27C903A48;
  if (!qword_27C903A48)
  {
    result = swift_getWitnessTable(byte_2146E7BD8, &type metadata for CSDMConversationPresentationModeEnum, v0, v1);
    atomic_store(result, &qword_27C903A48);
  }

  return result;
}

unint64_t sub_214028D38()
{
  result = qword_27C903CA8;
  if (!qword_27C903CA8)
  {
    result = swift_getWitnessTable(a1_17, &type metadata for CSDMConversationPresentationModeEnum, v0, v1);
    atomic_store(result, &qword_27C903CA8);
  }

  return result;
}

unint64_t sub_214028D8C()
{
  result = qword_27C903CB0;
  if (!qword_27C903CB0)
  {
    result = swift_getWitnessTable(aY_45, &type metadata for CSDMConversationAudioVideoModeEnum, v0, v1);
    atomic_store(result, &qword_27C903CB0);
  }

  return result;
}

unint64_t sub_214028DE0()
{
  result = qword_27C903CC0;
  if (!qword_27C903CC0)
  {
    result = swift_getWitnessTable(byte_2146E77D8, &type metadata for CSDMConversationMessageProto.ConversationMessageType, v0, v1);
    atomic_store(result, &qword_27C903CC0);
  }

  return result;
}

uint64_t sub_214028E34(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_214028E9C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_214028EFC(unint64_t a1)
{
  if (a1 > 0x25)
  {
    return 34;
  }

  else
  {
    return byte_2146E9BC0[a1];
  }
}

uint64_t sub_214028F1C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CSDMConversationParticipantDidLeaveContextProto(0);
  v5 = *(v4 + 20);
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 4);
  v8 = (a2 + v5);
  v9 = *(a2 + v5 + 4);
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }
  }

  else
  {
    if (*v6 != *v8)
    {
      LOBYTE(v9) = 1;
    }

    if (v9)
    {
      return 0;
    }
  }

  v10 = *(v4 + 24);
  v11 = *(a1 + v10);
  v12 = *(a2 + v10);
  if (v11 == 4)
  {
    if (v12 != 4)
    {
      return 0;
    }
  }

  else if (v11 != v12)
  {
    return 0;
  }

  sub_2146D8DF8();
  sub_214027000(&qword_27C903D38, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_2146D9578() & 1;
}

uint64_t sub_21402900C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CSDMConversationInvitationPreferenceProto(0);
  v5 = v4[5];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 4);
  v8 = (a2 + v5);
  v9 = *(a2 + v5 + 4);
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }
  }

  else
  {
    if (*v6 != *v8)
    {
      LOBYTE(v9) = 1;
    }

    if (v9)
    {
      return 0;
    }
  }

  v10 = v4[6];
  v11 = *(a1 + v10);
  v12 = *(a2 + v10);
  if (v11 == 4)
  {
    if (v12 != 4)
    {
      return 0;
    }
  }

  else if (v11 != v12)
  {
    return 0;
  }

  v13 = v4[7];
  v14 = (a1 + v13);
  v15 = *(a1 + v13 + 4);
  v16 = (a2 + v13);
  v17 = *(a2 + v13 + 4);
  if (v15)
  {
    if (!v17)
    {
      return 0;
    }
  }

  else
  {
    if (*v14 != *v16)
    {
      LOBYTE(v17) = 1;
    }

    if (v17)
    {
      return 0;
    }
  }

  sub_2146D8DF8();
  sub_214027000(&qword_27C903D38, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_2146D9578() & 1;
}

uint64_t sub_214029130(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CSDMEncryptedConversationMessageProto(0);
  v5 = *(v4 + 20);
  v7 = *(a1 + v5);
  v6 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v10 = *v8;
  v9 = v8[1];
  if (v6 >> 60 == 15)
  {
    if (v9 >> 60 == 15)
    {
      sub_213FDCA18(v7, v6);
      sub_213FDCA18(v10, v9);
      sub_213FDC6BC(v7, v6);
      goto LABEL_7;
    }

LABEL_5:
    sub_213FDCA18(v7, v6);
    sub_213FDCA18(v10, v9);
    sub_213FDC6BC(v7, v6);
    v11 = v10;
    v12 = v9;
LABEL_12:
    sub_213FDC6BC(v11, v12);
    return 0;
  }

  if (v9 >> 60 == 15)
  {
    goto LABEL_5;
  }

  sub_213FDCA18(v7, v6);
  sub_213FDCA18(v10, v9);
  v13 = sub_214466780(v7, v6, v10, v9);
  sub_213FDC6BC(v10, v9);
  sub_213FDC6BC(v7, v6);
  if (!v13)
  {
    return 0;
  }

LABEL_7:
  v14 = *(v4 + 24);
  v16 = *(a1 + v14);
  v15 = *(a1 + v14 + 8);
  v17 = (a2 + v14);
  v19 = *v17;
  v18 = v17[1];
  if (v15 >> 60 != 15)
  {
    if (v18 >> 60 == 15)
    {
      goto LABEL_11;
    }

    sub_213FDCA18(v16, v15);
    sub_213FDCA18(v19, v18);
    v21 = sub_214466780(v16, v15, v19, v18);
    sub_213FDC6BC(v19, v18);
    sub_213FDC6BC(v16, v15);
    if (v21)
    {
      goto LABEL_15;
    }

    return 0;
  }

  if (v18 >> 60 != 15)
  {
LABEL_11:
    sub_213FDCA18(v16, v15);
    sub_213FDCA18(v19, v18);
    sub_213FDC6BC(v16, v15);
    v11 = v19;
    v12 = v18;
    goto LABEL_12;
  }

  sub_213FDCA18(v16, v15);
  sub_213FDCA18(v19, v18);
  sub_213FDC6BC(v16, v15);
LABEL_15:
  sub_2146D8DF8();
  sub_214027000(&qword_27C903D38, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_2146D9578() & 1;
}

uint64_t sub_214029394(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CSDMConversationActivitySceneAssociationBehaviorProto(0);
  v5 = v4[5];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v8[1];
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }

    if (*v6 != *v8 || v7 != v9)
    {
      v11 = v4;
      v12 = sub_2146DA6A8();
      v4 = v11;
      if ((v12 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v9)
  {
    return 0;
  }

  v13 = v4[6];
  v14 = *(a1 + v13);
  v15 = *(a2 + v13);
  if (v14 == 2)
  {
    if (v15 != 2)
    {
      return 0;
    }
  }

  else if (v15 == 2 || ((v14 ^ v15) & 1) != 0)
  {
    return 0;
  }

  v16 = v4[7];
  v17 = (a1 + v16);
  v18 = *(a1 + v16 + 8);
  v19 = (a2 + v16);
  v20 = v19[1];
  if (v18)
  {
    if (!v20)
    {
      return 0;
    }

    v21 = *v17 == *v19 && v18 == v20;
    if (!v21 && (sub_2146DA6A8() & 1) == 0)
    {
      return 0;
    }

LABEL_22:
    sub_2146D8DF8();
    sub_214027000(&qword_27C903D38, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    return sub_2146D9578() & 1;
  }

  if (!v20)
  {
    goto LABEL_22;
  }

  return 0;
}

uint64_t sub_2140294F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CSDMConversationActivitySceneAssociationBehaviorProto(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v68[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9036F0, "а\r");
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v68[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903DA8, &qword_2146E9888);
  MEMORY[0x28223BE20](v11);
  v13 = &v68[-v12];
  v14 = type metadata accessor for CSDMConversationActivityMetadataProto(0);
  v15 = v14[5];
  v16 = (a1 + v15);
  v17 = *(a1 + v15 + 8);
  v18 = (a2 + v15);
  v19 = v18[1];
  if (v17)
  {
    if (!v19)
    {
      goto LABEL_34;
    }

    if (*v16 != *v18 || v17 != v19)
    {
      v21 = v14;
      v22 = sub_2146DA6A8();
      v14 = v21;
      if ((v22 & 1) == 0)
      {
        goto LABEL_34;
      }
    }
  }

  else if (v19)
  {
    goto LABEL_34;
  }

  v23 = v14[6];
  v24 = *(a1 + v23);
  v25 = *(a2 + v23);
  if (v24 == 2)
  {
    if (v25 != 2)
    {
      goto LABEL_34;
    }
  }

  else if (v25 == 2 || ((v24 ^ v25) & 1) != 0)
  {
    goto LABEL_34;
  }

  v26 = v14[7];
  v27 = (a1 + v26);
  v28 = *(a1 + v26 + 8);
  v29 = (a2 + v26);
  v30 = v29[1];
  if (v28)
  {
    if (!v30)
    {
      goto LABEL_34;
    }

    if (*v27 != *v29 || v28 != v30)
    {
      v31 = v14;
      v32 = sub_2146DA6A8();
      v14 = v31;
      if ((v32 & 1) == 0)
      {
        goto LABEL_34;
      }
    }
  }

  else if (v30)
  {
    goto LABEL_34;
  }

  v33 = v14[8];
  v34 = (a1 + v33);
  v35 = *(a1 + v33 + 8);
  v36 = (a2 + v33);
  v37 = v36[1];
  if (v35)
  {
    if (!v37)
    {
      goto LABEL_34;
    }

    if (*v34 != *v36 || v35 != v37)
    {
      v38 = v14;
      v39 = sub_2146DA6A8();
      v14 = v38;
      if ((v39 & 1) == 0)
      {
        goto LABEL_34;
      }
    }
  }

  else if (v37)
  {
    goto LABEL_34;
  }

  v40 = v14[9];
  v41 = *(a1 + v40);
  v42 = *(a1 + v40 + 8);
  v43 = (a2 + v40);
  v44 = v43[1];
  v72 = *v43;
  if (v42 >> 60 == 15)
  {
    if (v44 >> 60 == 15)
    {
      v70 = v14;
      v71 = v41;
      sub_213FDCA18(v41, v42);
      sub_213FDCA18(v72, v44);
      sub_213FDC6BC(v71, v42);
      goto LABEL_37;
    }

LABEL_33:
    v45 = v41;
    sub_213FDCA18(v41, v42);
    v46 = v72;
    sub_213FDCA18(v72, v44);
    sub_213FDC6BC(v45, v42);
    sub_213FDC6BC(v46, v44);
    goto LABEL_34;
  }

  if (v44 >> 60 == 15)
  {
    goto LABEL_33;
  }

  v70 = v14;
  v71 = v41;
  sub_213FDCA18(v41, v42);
  sub_213FDCA18(v72, v44);
  v69 = sub_214466780(v71, v42, v72, v44);
  sub_213FDC6BC(v72, v44);
  sub_213FDC6BC(v71, v42);
  if (!v69)
  {
    goto LABEL_34;
  }

LABEL_37:
  v49 = v70[10];
  v50 = (a1 + v49);
  v51 = *(a1 + v49 + 4);
  v52 = (a2 + v49);
  v53 = *(a2 + v49 + 4);
  if (v51)
  {
    if (!v53)
    {
      goto LABEL_34;
    }
  }

  else
  {
    if (*v50 != *v52)
    {
      LOBYTE(v53) = 1;
    }

    if (v53)
    {
      goto LABEL_34;
    }
  }

  v54 = v70[11];
  v55 = *(v11 + 48);
  sub_213FB2E54(a1 + v54, v13, &unk_27C9036F0, "а\r");
  v56 = a2 + v54;
  v57 = v55;
  sub_213FB2E54(v56, &v13[v55], &unk_27C9036F0, "а\r");
  v58 = *(v5 + 48);
  if (v58(v13, 1, v4) != 1)
  {
    sub_213FB2E54(v13, v10, &unk_27C9036F0, "а\r");
    if (v58(&v13[v57], 1, v4) != 1)
    {
      sub_214028E34(&v13[v57], v7, type metadata accessor for CSDMConversationActivitySceneAssociationBehaviorProto);
      v59 = sub_214029394(v10, v7);
      sub_214028E9C(v7, type metadata accessor for CSDMConversationActivitySceneAssociationBehaviorProto);
      sub_214028E9C(v10, type metadata accessor for CSDMConversationActivitySceneAssociationBehaviorProto);
      sub_213FB2DF4(v13, &unk_27C9036F0, "а\r");
      if ((v59 & 1) == 0)
      {
        goto LABEL_34;
      }

      goto LABEL_50;
    }

    sub_214028E9C(v10, type metadata accessor for CSDMConversationActivitySceneAssociationBehaviorProto);
LABEL_48:
    sub_213FB2DF4(v13, &qword_27C903DA8, &qword_2146E9888);
    goto LABEL_34;
  }

  if (v58(&v13[v57], 1, v4) != 1)
  {
    goto LABEL_48;
  }

  sub_213FB2DF4(v13, &unk_27C9036F0, "а\r");
LABEL_50:
  v60 = v70[12];
  v61 = *(a1 + v60);
  v62 = *(a2 + v60);
  if (v61 == 2)
  {
    if (v62 != 2)
    {
      goto LABEL_34;
    }
  }

  else if (v62 == 2 || ((v61 ^ v62) & 1) != 0)
  {
    goto LABEL_34;
  }

  v63 = v70[13];
  v64 = (a1 + v63);
  v65 = *(a1 + v63 + 4);
  v66 = (a2 + v63);
  v67 = *(a2 + v63 + 4);
  if ((v65 & 1) == 0)
  {
    if (*v64 != *v66)
    {
      LOBYTE(v67) = 1;
    }

    if (v67)
    {
      goto LABEL_34;
    }

LABEL_61:
    sub_2146D8DF8();
    sub_214027000(&qword_27C903D38, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v47 = sub_2146D9578();
    return v47 & 1;
  }

  if (v67)
  {
    goto LABEL_61;
  }

LABEL_34:
  v47 = 0;
  return v47 & 1;
}

uint64_t sub_214029B00(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CSDMConversationActivityProto(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C903858, &unk_2146E6F50);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v43 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D80, &qword_2146E9860);
  MEMORY[0x28223BE20](v11);
  v13 = &v43 - v12;
  v14 = type metadata accessor for CSDMConversationActivitySessionProto(0);
  v15 = v14[5];
  v16 = (a1 + v15);
  v17 = *(a1 + v15 + 8);
  v18 = (a2 + v15);
  v19 = v18[1];
  if (v17)
  {
    if (!v19)
    {
      goto LABEL_17;
    }

    v20 = *v16 == *v18 && v17 == v19;
    if (!v20 && (sub_2146DA6A8() & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  else if (v19)
  {
    goto LABEL_17;
  }

  v44 = v7;
  v21 = v14[6];
  v22 = a1;
  v23 = *(v11 + 48);
  v43 = v22;
  sub_213FB2E54(v22 + v21, v13, &unk_27C903858, &unk_2146E6F50);
  v24 = a2 + v21;
  v25 = a2;
  sub_213FB2E54(v24, &v13[v23], &unk_27C903858, &unk_2146E6F50);
  v26 = *(v5 + 48);
  if (v26(v13, 1, v4) != 1)
  {
    sub_213FB2E54(v13, v10, &unk_27C903858, &unk_2146E6F50);
    if (v26(&v13[v23], 1, v4) != 1)
    {
      v31 = v44;
      sub_214028E34(&v13[v23], v44, type metadata accessor for CSDMConversationActivityProto);
      v32 = *(v4 + 20);
      v33 = *&v10[v32];
      v34 = *(v31 + v32);
      if (v33 == v34 || (, , v35 = sub_214021228(v33, v34), , , (v35 & 1) != 0))
      {
        sub_2146D8DF8();
        sub_214027000(&qword_27C903D38, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
        v36 = v44;
        v37 = sub_2146D9578();
        sub_214028E9C(v36, type metadata accessor for CSDMConversationActivityProto);
        sub_214028E9C(v10, type metadata accessor for CSDMConversationActivityProto);
        sub_213FB2DF4(v13, &unk_27C903858, &unk_2146E6F50);
        if ((v37 & 1) == 0)
        {
          goto LABEL_17;
        }

        goto LABEL_22;
      }

      sub_214028E9C(v44, type metadata accessor for CSDMConversationActivityProto);
      sub_214028E9C(v10, type metadata accessor for CSDMConversationActivityProto);
      v27 = &unk_27C903858;
      v28 = &unk_2146E6F50;
LABEL_16:
      sub_213FB2DF4(v13, v27, v28);
      goto LABEL_17;
    }

    sub_214028E9C(v10, type metadata accessor for CSDMConversationActivityProto);
LABEL_15:
    v27 = &qword_27C903D80;
    v28 = &qword_2146E9860;
    goto LABEL_16;
  }

  if (v26(&v13[v23], 1, v4) != 1)
  {
    goto LABEL_15;
  }

  sub_213FB2DF4(v13, &unk_27C903858, &unk_2146E6F50);
LABEL_22:
  v38 = v14[7];
  v39 = (v43 + v38);
  v40 = *(v43 + v38 + 8);
  v41 = (v25 + v38);
  v42 = *(v25 + v38 + 8);
  if ((v40 & 1) == 0)
  {
    if (*v39 != *v41)
    {
      LOBYTE(v42) = 1;
    }

    if (v42)
    {
      goto LABEL_17;
    }

LABEL_28:
    sub_2146D8DF8();
    sub_214027000(&qword_27C903D38, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v29 = sub_2146D9578();
    return v29 & 1;
  }

  if (v42)
  {
    goto LABEL_28;
  }

LABEL_17:
  v29 = 0;
  return v29 & 1;
}

uint64_t sub_214029FBC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CSDMHandleProto(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v67[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C903788, "Į\r");
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v72 = &v67[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v12 = &v67[-v11];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D78, &qword_2146E9858);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v67[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v14);
  v18 = &v67[-v17];
  v19 = type metadata accessor for CSDMMemberAssociationClaimProto(0);
  v20 = v19;
  v21 = *(v19 + 20);
  v22 = (a1 + v21);
  v23 = *(a1 + v21 + 4);
  v24 = (a2 + v21);
  v25 = *(a2 + v21 + 4);
  if (v23)
  {
    if (!v25)
    {
      goto LABEL_14;
    }
  }

  else
  {
    if (*v22 != *v24)
    {
      LOBYTE(v25) = 1;
    }

    if (v25)
    {
      goto LABEL_14;
    }
  }

  v69 = v16;
  v70 = v7;
  v73 = a2;
  v26 = *(v19 + 24);
  v27 = *(v13 + 48);
  v71 = a1;
  sub_213FB2E54(a1 + v26, v18, &unk_27C903788, "Į\r");
  v28 = v73 + v26;
  v29 = v73;
  sub_213FB2E54(v28, &v18[v27], &unk_27C903788, "Į\r");
  v30 = *(v5 + 48);
  if (v30(v18, 1, v4) == 1)
  {
    if (v30(&v18[v27], 1, v4) != 1)
    {
LABEL_13:
      sub_213FB2DF4(v18, &qword_27C903D78, &qword_2146E9858);
      goto LABEL_14;
    }

    sub_213FB2DF4(v18, &unk_27C903788, "Į\r");
  }

  else
  {
    sub_213FB2E54(v18, v12, &unk_27C903788, "Į\r");
    if (v30(&v18[v27], 1, v4) == 1)
    {
      v31 = v12;
LABEL_12:
      sub_214028E9C(v31, type metadata accessor for CSDMHandleProto);
      goto LABEL_13;
    }

    v34 = &v18[v27];
    v35 = v70;
    sub_214028E34(v34, v70, type metadata accessor for CSDMHandleProto);
    v68 = sub_21402B72C(v12, v35);
    sub_214028E9C(v35, type metadata accessor for CSDMHandleProto);
    sub_214028E9C(v12, type metadata accessor for CSDMHandleProto);
    sub_213FB2DF4(v18, &unk_27C903788, "Į\r");
    if ((v68 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  v36 = v20[7];
  v37 = v71;
  v38 = (v71 + v36);
  v39 = *(v71 + v36 + 8);
  v40 = (v29 + v36);
  v41 = *(v29 + v36 + 8);
  if (v39)
  {
    if (!v41)
    {
      goto LABEL_14;
    }
  }

  else
  {
    if (*v38 != *v40)
    {
      LOBYTE(v41) = 1;
    }

    if (v41)
    {
      goto LABEL_14;
    }
  }

  v42 = v20[8];
  v43 = (v71 + v42);
  v44 = *(v71 + v42 + 8);
  v45 = (v29 + v42);
  v46 = v45[1];
  if (v44)
  {
    if (!v46)
    {
      goto LABEL_14;
    }

    if (*v43 != *v45 || v44 != v46)
    {
      v47 = sub_2146DA6A8();
      v37 = v71;
      if ((v47 & 1) == 0)
      {
        goto LABEL_14;
      }
    }
  }

  else if (v46)
  {
    goto LABEL_14;
  }

  v48 = v20[9];
  v49 = *(v13 + 48);
  v18 = v69;
  sub_213FB2E54(v37 + v48, v69, &unk_27C903788, "Į\r");
  v50 = v73 + v48;
  v51 = v73;
  sub_213FB2E54(v50, &v18[v49], &unk_27C903788, "Į\r");
  if (v30(v18, 1, v4) != 1)
  {
    v52 = v72;
    sub_213FB2E54(v18, v72, &unk_27C903788, "Į\r");
    if (v30(&v18[v49], 1, v4) != 1)
    {
      v53 = v70;
      sub_214028E34(&v18[v49], v70, type metadata accessor for CSDMHandleProto);
      v54 = sub_21402B72C(v52, v53);
      sub_214028E9C(v53, type metadata accessor for CSDMHandleProto);
      sub_214028E9C(v52, type metadata accessor for CSDMHandleProto);
      sub_213FB2DF4(v18, &unk_27C903788, "Į\r");
      if ((v54 & 1) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_36;
    }

    v31 = v52;
    goto LABEL_12;
  }

  if (v30(&v18[v49], 1, v4) != 1)
  {
    goto LABEL_13;
  }

  sub_213FB2DF4(v18, &unk_27C903788, "Į\r");
LABEL_36:
  v55 = v20[10];
  v56 = v71;
  v57 = (v71 + v55);
  v58 = *(v71 + v55 + 8);
  v59 = (v51 + v55);
  v60 = v59[1];
  if (v58)
  {
    if (!v60)
    {
      goto LABEL_14;
    }

    if (*v57 != *v59 || v58 != v60)
    {
      v61 = sub_2146DA6A8();
      v56 = v71;
      if ((v61 & 1) == 0)
      {
        goto LABEL_14;
      }
    }
  }

  else if (v60)
  {
    goto LABEL_14;
  }

  v62 = v20[11];
  v63 = (v56 + v62);
  v64 = *(v56 + v62 + 4);
  v65 = (v51 + v62);
  v66 = *(v51 + v62 + 4);
  if ((v64 & 1) == 0)
  {
    if (*v63 != *v65)
    {
      LOBYTE(v66) = 1;
    }

    if (v66)
    {
      goto LABEL_14;
    }

LABEL_49:
    sub_2146D8DF8();
    sub_214027000(&qword_27C903D38, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v32 = sub_2146D9578();
    return v32 & 1;
  }

  if (v66)
  {
    goto LABEL_49;
  }

LABEL_14:
  v32 = 0;
  return v32 & 1;
}

uint64_t sub_21402A61C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CSDMConversationActivityContextProto(0);
  v5 = v4[5];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v8[1];
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }

    if (*v6 != *v8 || v7 != v9)
    {
      v11 = v4;
      v12 = sub_2146DA6A8();
      v4 = v11;
      if ((v12 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v9)
  {
    return 0;
  }

  v13 = v4[6];
  v14 = (a1 + v13);
  v15 = *(a1 + v13 + 8);
  v16 = (a2 + v13);
  v17 = v16[1];
  if (v15)
  {
    if (!v17)
    {
      return 0;
    }

    if (*v14 != *v16 || v15 != v17)
    {
      v19 = v4;
      v20 = sub_2146DA6A8();
      v4 = v19;
      if ((v20 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v17)
  {
    return 0;
  }

  v21 = v4[7];
  v22 = (a1 + v21);
  v23 = *(a1 + v21 + 8);
  v24 = (a2 + v21);
  v25 = v24[1];
  if (v23)
  {
    if (!v25)
    {
      return 0;
    }

    if (*v22 != *v24 || v23 != v25)
    {
      v27 = v4;
      v28 = sub_2146DA6A8();
      v4 = v27;
      if ((v28 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v25)
  {
    return 0;
  }

  v29 = v4[8];
  v30 = (a1 + v29);
  v31 = *(a1 + v29 + 8);
  v32 = (a2 + v29);
  v33 = v32[1];
  if (v31)
  {
    if (v33)
    {
      v34 = *v30 == *v32 && v31 == v33;
      if (v34 || (sub_2146DA6A8() & 1) != 0)
      {
        goto LABEL_35;
      }
    }
  }

  else if (!v33)
  {
LABEL_35:
    sub_2146D8DF8();
    sub_214027000(&qword_27C903D38, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    return sub_2146D9578() & 1;
  }

  return 0;
}

uint64_t sub_21402A7F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t))
{
  v7 = *(a3(0) + 20);
  v8 = *(a1 + v7);
  v9 = *(a2 + v7);
  if (v8 != v9)
  {

    v10 = a4(v8, v9);

    if ((v10 & 1) == 0)
    {
      return 0;
    }
  }

  sub_2146D8DF8();
  sub_214027000(&qword_27C903D38, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_2146D9578() & 1;
}

uint64_t sub_21402A8E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CSDMConversationReportProto(0);
  v5 = v4[5];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v8[1];
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }

    if (*v6 != *v8 || v7 != v9)
    {
      v11 = v4;
      v12 = sub_2146DA6A8();
      v4 = v11;
      if ((v12 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v9)
  {
    return 0;
  }

  v13 = v4[6];
  v14 = (a1 + v13);
  v15 = *(a1 + v13 + 8);
  v16 = (a2 + v13);
  v17 = *(a2 + v13 + 8);
  if (v15)
  {
    if (!v17)
    {
      return 0;
    }
  }

  else
  {
    if (*v14 != *v16)
    {
      LOBYTE(v17) = 1;
    }

    if (v17)
    {
      return 0;
    }
  }

  v18 = v4[7];
  v19 = (a1 + v18);
  v20 = *(a1 + v18 + 8);
  v21 = (a2 + v18);
  v22 = v21[1];
  if (v20)
  {
    if (!v22)
    {
      return 0;
    }

    v23 = *v19 == *v21 && v20 == v22;
    if (!v23 && (sub_2146DA6A8() & 1) == 0)
    {
      return 0;
    }

LABEL_23:
    sub_2146D8DF8();
    sub_214027000(&qword_27C903D38, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    return sub_2146D9578() & 1;
  }

  if (!v22)
  {
    goto LABEL_23;
  }

  return 0;
}

uint64_t sub_21402AA44(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CSDMHandleProto(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v59[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C903788, "Į\r");
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v63 = &v59[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v12 = &v59[-v11];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D78, &qword_2146E9858);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v59[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v14);
  v18 = &v59[-v17];
  v19 = type metadata accessor for CSDMConversationMemberProto(0);
  v20 = v19;
  v21 = *(v19 + 20);
  v65 = a1;
  v22 = (a1 + v21);
  v23 = *(a1 + v21 + 4);
  v24 = (a2 + v21);
  v25 = *(a2 + v21 + 4);
  if (v23)
  {
    if (!v25)
    {
      goto LABEL_14;
    }
  }

  else
  {
    if (*v22 != *v24)
    {
      LOBYTE(v25) = 1;
    }

    if (v25)
    {
      goto LABEL_14;
    }
  }

  v61 = v16;
  v62 = v7;
  v64 = a2;
  v26 = *(v19 + 24);
  v27 = *(v13 + 48);
  sub_213FB2E54(v65 + v26, v18, &unk_27C903788, "Į\r");
  v28 = v64 + v26;
  v29 = v64;
  sub_213FB2E54(v28, &v18[v27], &unk_27C903788, "Į\r");
  v30 = *(v5 + 48);
  if (v30(v18, 1, v4) == 1)
  {
    if (v30(&v18[v27], 1, v4) != 1)
    {
LABEL_13:
      sub_213FB2DF4(v18, &qword_27C903D78, &qword_2146E9858);
      goto LABEL_14;
    }

    sub_213FB2DF4(v18, &unk_27C903788, "Į\r");
  }

  else
  {
    sub_213FB2E54(v18, v12, &unk_27C903788, "Į\r");
    if (v30(&v18[v27], 1, v4) == 1)
    {
      v31 = v12;
LABEL_12:
      sub_214028E9C(v31, type metadata accessor for CSDMHandleProto);
      goto LABEL_13;
    }

    v34 = &v18[v27];
    v35 = v62;
    sub_214028E34(v34, v62, type metadata accessor for CSDMHandleProto);
    v60 = sub_21402B72C(v12, v35);
    sub_214028E9C(v35, type metadata accessor for CSDMHandleProto);
    sub_214028E9C(v12, type metadata accessor for CSDMHandleProto);
    sub_213FB2DF4(v18, &unk_27C903788, "Į\r");
    if ((v60 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  v36 = v20[7];
  v37 = (v65 + v36);
  v38 = *(v65 + v36 + 8);
  v39 = (v29 + v36);
  v40 = v39[1];
  if (v38)
  {
    if (!v40 || (*v37 != *v39 || v38 != v40) && (sub_2146DA6A8() & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  else if (v40)
  {
    goto LABEL_14;
  }

  v41 = v20[8];
  v42 = *(v13 + 48);
  v18 = v61;
  sub_213FB2E54(v65 + v41, v61, &unk_27C903788, "Į\r");
  v43 = v64 + v41;
  v44 = v64;
  sub_213FB2E54(v43, &v18[v42], &unk_27C903788, "Į\r");
  if (v30(v18, 1, v4) != 1)
  {
    v45 = v63;
    sub_213FB2E54(v18, v63, &unk_27C903788, "Į\r");
    if (v30(&v18[v42], 1, v4) != 1)
    {
      v46 = &v18[v42];
      v47 = v62;
      sub_214028E34(v46, v62, type metadata accessor for CSDMHandleProto);
      v48 = sub_21402B72C(v45, v47);
      sub_214028E9C(v47, type metadata accessor for CSDMHandleProto);
      sub_214028E9C(v45, type metadata accessor for CSDMHandleProto);
      sub_213FB2DF4(v18, &unk_27C903788, "Į\r");
      if ((v48 & 1) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_30;
    }

    v31 = v45;
    goto LABEL_12;
  }

  if (v30(&v18[v42], 1, v4) != 1)
  {
    goto LABEL_13;
  }

  sub_213FB2DF4(v18, &unk_27C903788, "Į\r");
LABEL_30:
  v49 = v20[9];
  v50 = (v65 + v49);
  v51 = *(v65 + v49 + 8);
  v52 = (v44 + v49);
  v53 = *(v44 + v49 + 8);
  if (v51)
  {
    if (!v53)
    {
      goto LABEL_14;
    }
  }

  else
  {
    if (*v50 != *v52)
    {
      LOBYTE(v53) = 1;
    }

    if (v53)
    {
      goto LABEL_14;
    }
  }

  v54 = v20[10];
  v55 = (v65 + v54);
  v56 = *(v65 + v54 + 8);
  v57 = (v44 + v54);
  v58 = v57[1];
  if (v56)
  {
    if (!v58 || (*v55 != *v57 || v56 != v58) && (sub_2146DA6A8() & 1) == 0)
    {
      goto LABEL_14;
    }

LABEL_43:
    sub_2146D8DF8();
    sub_214027000(&qword_27C903D38, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v32 = sub_2146D9578();
    return v32 & 1;
  }

  if (!v58)
  {
    goto LABEL_43;
  }

LABEL_14:
  v32 = 0;
  return v32 & 1;
}

uint64_t sub_21402B070(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for CSDMHandleProto(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C903788, "Į\r");
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v70 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D78, &qword_2146E9858);
  MEMORY[0x28223BE20](v11);
  v13 = &v70 - v12;
  v14 = type metadata accessor for CSDMConversationLinkProto(0);
  v15 = v14[6];
  v16 = (a1 + v15);
  v17 = *(a1 + v15 + 8);
  v18 = (a2 + v15);
  v19 = v18[1];
  if (v17)
  {
    if (!v19)
    {
      goto LABEL_20;
    }

    v20 = *v16 == *v18 && v17 == v19;
    if (!v20 && (sub_2146DA6A8() & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  else if (v19)
  {
    goto LABEL_20;
  }

  v70 = v7;
  v71 = v5;
  v21 = v14[7];
  v73 = a1;
  v23 = *(a1 + v21);
  v22 = *(a1 + v21 + 8);
  v24 = (a2 + v21);
  v26 = *v24;
  v25 = v24[1];
  if (v22 >> 60 == 15)
  {
    if (v25 >> 60 != 15)
    {
      goto LABEL_19;
    }

    v72 = a2;
    sub_213FDCA18(v23, v22);
    sub_213FDCA18(v26, v25);
    sub_213FDC6BC(v23, v22);
  }

  else
  {
    if (v25 >> 60 == 15)
    {
      goto LABEL_19;
    }

    v72 = a2;
    sub_213FDCA18(v23, v22);
    sub_213FDCA18(v26, v25);
    v27 = sub_214466780(v23, v22, v26, v25);
    sub_213FDC6BC(v26, v25);
    sub_213FDC6BC(v23, v22);
    if (!v27)
    {
      goto LABEL_20;
    }
  }

  v28 = v14[8];
  v23 = *(v73 + v28);
  v22 = *(v73 + v28 + 8);
  v29 = (v72 + v28);
  v26 = *v29;
  v25 = v29[1];
  if (v22 >> 60 == 15)
  {
    if (v25 >> 60 == 15)
    {
      sub_213FDCA18(v23, v22);
      sub_213FDCA18(v26, v25);
      sub_213FDC6BC(v23, v22);
      goto LABEL_23;
    }

LABEL_19:
    sub_213FDCA18(v23, v22);
    sub_213FDCA18(v26, v25);
    sub_213FDC6BC(v23, v22);
    sub_213FDC6BC(v26, v25);
    goto LABEL_20;
  }

  if (v25 >> 60 == 15)
  {
    goto LABEL_19;
  }

  sub_213FDCA18(v23, v22);
  sub_213FDCA18(v26, v25);
  v32 = sub_214466780(v23, v22, v26, v25);
  sub_213FDC6BC(v26, v25);
  sub_213FDC6BC(v23, v22);
  if (!v32)
  {
    goto LABEL_20;
  }

LABEL_23:
  v33 = v72;
  v34 = v73;
  if ((sub_2143D6458(*v73, *v72) & 1) == 0)
  {
    goto LABEL_20;
  }

  v35 = v14[9];
  v36 = (v34 + v35);
  v37 = *(v34 + v35 + 8);
  v38 = (v33 + v35);
  v39 = *(v33 + v35 + 8);
  if (v37)
  {
    if (!v39)
    {
      goto LABEL_20;
    }
  }

  else
  {
    if (*v36 != *v38)
    {
      LOBYTE(v39) = 1;
    }

    if (v39)
    {
      goto LABEL_20;
    }
  }

  v40 = v14[10];
  v41 = (v34 + v40);
  v42 = *(v34 + v40 + 8);
  v43 = (v33 + v40);
  v44 = v43[1];
  if (v42)
  {
    if (!v44 || (*v41 != *v43 || v42 != v44) && (sub_2146DA6A8() & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  else if (v44)
  {
    goto LABEL_20;
  }

  v45 = v14[11];
  v46 = v33;
  v47 = *(v11 + 48);
  sub_213FB2E54(v34 + v45, v13, &unk_27C903788, "Į\r");
  v48 = v33;
  sub_213FB2E54(v33 + v45, &v13[v47], &unk_27C903788, "Į\r");
  v49 = *(v71 + 48);
  if (v49(v13, 1, v4) == 1)
  {
    if (v49(&v13[v47], 1, v4) == 1)
    {
      sub_213FB2DF4(v13, &unk_27C903788, "Į\r");
      goto LABEL_44;
    }

LABEL_42:
    sub_213FB2DF4(v13, &qword_27C903D78, &qword_2146E9858);
    goto LABEL_20;
  }

  sub_213FB2E54(v13, v10, &unk_27C903788, "Į\r");
  if (v49(&v13[v47], 1, v4) == 1)
  {
    sub_214028E9C(v10, type metadata accessor for CSDMHandleProto);
    goto LABEL_42;
  }

  v50 = &v13[v47];
  v51 = v70;
  sub_214028E34(v50, v70, type metadata accessor for CSDMHandleProto);
  v52 = sub_21402B72C(v10, v51);
  sub_214028E9C(v51, type metadata accessor for CSDMHandleProto);
  sub_214028E9C(v10, type metadata accessor for CSDMHandleProto);
  sub_213FB2DF4(v13, &unk_27C903788, "Į\r");
  if ((v52 & 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_44:
  v53 = v14[12];
  v54 = v73;
  v55 = (v73 + v53);
  v56 = *(v73 + v53 + 8);
  v57 = (v46 + v53);
  v58 = *(v46 + v53 + 8);
  if (v56)
  {
    if (!v58)
    {
      goto LABEL_20;
    }
  }

  else
  {
    if (*v55 != *v57)
    {
      LOBYTE(v58) = 1;
    }

    if (v58)
    {
      goto LABEL_20;
    }
  }

  v59 = v14[13];
  v60 = *(v73 + v59);
  v61 = *(v48 + v59);
  if (v60 == 2)
  {
    if (v61 != 2)
    {
      goto LABEL_20;
    }
  }

  else if (v61 == 2 || ((v60 ^ v61) & 1) != 0)
  {
    goto LABEL_20;
  }

  v62 = v14[14];
  v63 = (v73 + v62);
  v64 = *(v73 + v62 + 8);
  v65 = (v48 + v62);
  v66 = v65[1];
  if (v64)
  {
    if (!v66 || (*v63 != *v65 || v64 != v66) && (sub_2146DA6A8() & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  else if (v66)
  {
    goto LABEL_20;
  }

  v67 = v14[15];
  v68 = *(v54 + v67);
  v69 = *(v48 + v67);
  if (v68 == 2)
  {
    if (v69 == 2)
    {
LABEL_67:
      sub_2146D8DF8();
      sub_214027000(&qword_27C903D38, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v30 = sub_2146D9578();
      return v30 & 1;
    }

LABEL_20:
    v30 = 0;
    return v30 & 1;
  }

  v30 = 0;
  if (v69 != 2 && ((v69 ^ v68) & 1) == 0)
  {
    goto LABEL_67;
  }

  return v30 & 1;
}

uint64_t sub_21402B72C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CSDMHandleProto(0);
  v5 = v4[5];
  v6 = *(a1 + v5);
  v7 = *(a2 + v5);
  if (v6 == 4)
  {
    if (v7 != 4)
    {
      return 0;
    }
  }

  else if (v6 != v7)
  {
    return 0;
  }

  v8 = v4[6];
  v9 = (a1 + v8);
  v10 = *(a1 + v8 + 8);
  v11 = (a2 + v8);
  v12 = v11[1];
  if (v10)
  {
    if (!v12)
    {
      return 0;
    }

    if (*v9 != *v11 || v10 != v12)
    {
      v14 = v4;
      v15 = sub_2146DA6A8();
      v4 = v14;
      if ((v15 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v12)
  {
    return 0;
  }

  v16 = v4[7];
  v17 = (a1 + v16);
  v18 = *(a1 + v16 + 8);
  v19 = (a2 + v16);
  v20 = v19[1];
  if (v18)
  {
    if (!v20)
    {
      return 0;
    }

    if (*v17 != *v19 || v18 != v20)
    {
      v22 = v4;
      v23 = sub_2146DA6A8();
      v4 = v22;
      if ((v23 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v20)
  {
    return 0;
  }

  v24 = v4[8];
  v25 = (a1 + v24);
  v26 = *(a1 + v24 + 8);
  v27 = (a2 + v24);
  v28 = v27[1];
  if (v26)
  {
    if (!v28)
    {
      return 0;
    }

    v29 = *v25 == *v27 && v26 == v28;
    if (!v29 && (sub_2146DA6A8() & 1) == 0)
    {
      return 0;
    }

LABEL_30:
    sub_2146D8DF8();
    sub_214027000(&qword_27C903D38, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    return sub_2146D9578() & 1;
  }

  if (!v28)
  {
    goto LABEL_30;
  }

  return 0;
}

uint64_t sub_21402B8D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CSDMAVConferenceInviteDataProto(0);
  v5 = v4[5];
  v7 = *(a1 + v5);
  v6 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v10 = *v8;
  v9 = v8[1];
  if (v6 >> 60 == 15)
  {
    if (v9 >> 60 != 15)
    {
      goto LABEL_10;
    }

    sub_213FDCA18(v7, v6);
    sub_213FDCA18(v10, v9);
    sub_213FDC6BC(v7, v6);
  }

  else
  {
    if (v9 >> 60 == 15)
    {
      goto LABEL_10;
    }

    sub_213FDCA18(v7, v6);
    sub_213FDCA18(v10, v9);
    v11 = sub_214466780(v7, v6, v10, v9);
    sub_213FDC6BC(v10, v9);
    sub_213FDC6BC(v7, v6);
    if (!v11)
    {
      return 0;
    }
  }

  v12 = v4[6];
  v7 = *(a1 + v12);
  v6 = *(a1 + v12 + 8);
  v13 = (a2 + v12);
  v10 = *v13;
  v9 = v13[1];
  if (v6 >> 60 == 15)
  {
    if (v9 >> 60 == 15)
    {
      sub_213FDCA18(v7, v6);
      sub_213FDCA18(v10, v9);
      sub_213FDC6BC(v7, v6);
      goto LABEL_14;
    }

LABEL_10:
    sub_213FDCA18(v7, v6);
    sub_213FDCA18(v10, v9);
    sub_213FDC6BC(v7, v6);
    v14 = v10;
    v15 = v9;
LABEL_11:
    sub_213FDC6BC(v14, v15);
    return 0;
  }

  if (v9 >> 60 == 15)
  {
    goto LABEL_10;
  }

  sub_213FDCA18(v7, v6);
  sub_213FDCA18(v10, v9);
  v17 = sub_214466780(v7, v6, v10, v9);
  sub_213FDC6BC(v10, v9);
  sub_213FDC6BC(v7, v6);
  if (!v17)
  {
    return 0;
  }

LABEL_14:
  v18 = v4[7];
  v20 = *(a1 + v18);
  v19 = *(a1 + v18 + 8);
  v21 = (a2 + v18);
  v23 = *v21;
  v22 = v21[1];
  if (v19 >> 60 != 15)
  {
    if (v22 >> 60 == 15)
    {
      goto LABEL_18;
    }

    sub_213FDCA18(v20, v19);
    sub_213FDCA18(v23, v22);
    v24 = sub_214466780(v20, v19, v23, v22);
    sub_213FDC6BC(v23, v22);
    sub_213FDC6BC(v20, v19);
    if (v24)
    {
      goto LABEL_20;
    }

    return 0;
  }

  if (v22 >> 60 != 15)
  {
LABEL_18:
    sub_213FDCA18(v20, v19);
    sub_213FDCA18(v23, v22);
    sub_213FDC6BC(v20, v19);
    v14 = v23;
    v15 = v22;
    goto LABEL_11;
  }

  sub_213FDCA18(v20, v19);
  sub_213FDCA18(v23, v22);
  sub_213FDC6BC(v20, v19);
LABEL_20:
  sub_2146D8DF8();
  sub_214027000(&qword_27C903D38, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_2146D9578() & 1;
}

uint64_t sub_21402BBE4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CSDMAVConferenceInviteDataProto(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9037B8, &unk_2147598F0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v48 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D30, &qword_2146E9828);
  MEMORY[0x28223BE20](v11);
  v13 = &v48 - v12;
  v14 = type metadata accessor for CSDMCallMessageProto(0);
  v15 = v14[5];
  v16 = *(a1 + v15);
  v17 = *(a2 + v15);
  if (v16 == 3)
  {
    if (v17 != 3)
    {
      goto LABEL_22;
    }
  }

  else if (v16 != v17)
  {
    goto LABEL_22;
  }

  v18 = v14[6];
  v19 = (a1 + v18);
  v20 = *(a1 + v18 + 4);
  v21 = (a2 + v18);
  v22 = *(a2 + v18 + 4);
  if (v20)
  {
    if (!v22)
    {
      goto LABEL_22;
    }
  }

  else
  {
    if (*v19 != *v21)
    {
      LOBYTE(v22) = 1;
    }

    if (v22)
    {
      goto LABEL_22;
    }
  }

  v23 = v14[7];
  v24 = *(a1 + v23);
  v25 = *(a2 + v23);
  if (v24 == 2)
  {
    if (v25 != 2)
    {
      goto LABEL_22;
    }
  }

  else if (v25 == 2 || ((v24 ^ v25) & 1) != 0)
  {
    goto LABEL_22;
  }

  v49 = v14;
  v26 = v14[8];
  v27 = *(v11 + 48);
  sub_213FB2E54(a1 + v26, v13, &unk_27C9037B8, &unk_2147598F0);
  v28 = a2 + v26;
  v29 = v27;
  sub_213FB2E54(v28, &v13[v27], &unk_27C9037B8, &unk_2147598F0);
  v30 = *(v5 + 48);
  if (v30(v13, 1, v4) != 1)
  {
    sub_213FB2E54(v13, v10, &unk_27C9037B8, &unk_2147598F0);
    if (v30(&v13[v29], 1, v4) != 1)
    {
      sub_214028E34(&v13[v29], v7, type metadata accessor for CSDMAVConferenceInviteDataProto);
      v33 = sub_21402B8D4(v10, v7);
      sub_214028E9C(v7, type metadata accessor for CSDMAVConferenceInviteDataProto);
      sub_214028E9C(v10, type metadata accessor for CSDMAVConferenceInviteDataProto);
      sub_213FB2DF4(v13, &unk_27C9037B8, &unk_2147598F0);
      if ((v33 & 1) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_25;
    }

    sub_214028E9C(v10, type metadata accessor for CSDMAVConferenceInviteDataProto);
LABEL_21:
    sub_213FB2DF4(v13, &qword_27C903D30, &qword_2146E9828);
    goto LABEL_22;
  }

  if (v30(&v13[v29], 1, v4) != 1)
  {
    goto LABEL_21;
  }

  sub_213FB2DF4(v13, &unk_27C9037B8, &unk_2147598F0);
LABEL_25:
  v34 = v49[9];
  v35 = *(a1 + v34);
  v36 = *(a2 + v34);
  if (v35 == 2)
  {
    if (v36 != 2)
    {
      goto LABEL_22;
    }
  }

  else if (v36 == 2 || ((v35 ^ v36) & 1) != 0)
  {
    goto LABEL_22;
  }

  v37 = v49[10];
  v38 = *(a1 + v37);
  v39 = *(a2 + v37);
  if (v38 == 2)
  {
    if (v39 != 2)
    {
      goto LABEL_22;
    }
  }

  else if (v39 == 2 || ((v38 ^ v39) & 1) != 0)
  {
    goto LABEL_22;
  }

  v40 = v49[11];
  v41 = *(a1 + v40);
  v42 = *(a2 + v40);
  if (v41 == 2)
  {
    if (v42 != 2)
    {
      goto LABEL_22;
    }
  }

  else if (v42 == 2 || ((v41 ^ v42) & 1) != 0)
  {
    goto LABEL_22;
  }

  v43 = v49[12];
  v44 = (a1 + v43);
  v45 = *(a1 + v43 + 8);
  v46 = (a2 + v43);
  v47 = v46[1];
  if (v45)
  {
    if (!v47 || (*v44 != *v46 || v45 != v47) && (sub_2146DA6A8() & 1) == 0)
    {
      goto LABEL_22;
    }

LABEL_47:
    sub_2146D8DF8();
    sub_214027000(&qword_27C903D38, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v31 = sub_2146D9578();
    return v31 & 1;
  }

  if (!v47)
  {
    goto LABEL_47;
  }

LABEL_22:
  v31 = 0;
  return v31 & 1;
}

uint64_t sub_21402C09C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903CB8, &qword_2146E97F0);
  MEMORY[0x28223BE20](v3 - 8);
  v108 = &v100 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903CF0, &unk_2146E9810);
  MEMORY[0x28223BE20](v5 - 8);
  v103 = &v100 - v6;
  *(v1 + 16) = 0;
  v7 = MEMORY[0x277D84F90];
  *(v1 + 20) = 1;
  *(v1 + 24) = v7;
  v8 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__message;
  v101 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__message;
  v9 = type metadata accessor for CSDMConversationMessageProto(0);
  (*(*(v9 - 8) + 56))(v1 + v8, 1, 1, v9);
  v10 = (v1 + OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__messagesGroupUuidstring);
  *v10 = 0;
  v10[1] = 0;
  v11 = (v1 + OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__messagesGroupName);
  *v11 = 0;
  v11[1] = 0;
  v104 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isMomentsAvailable;
  *(v1 + OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isMomentsAvailable) = 2;
  v12 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__activitySession;
  v105 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__activitySession;
  v13 = type metadata accessor for CSDMConversationActivitySessionProto(0);
  (*(*(v13 - 8) + 56))(v1 + v12, 1, 1, v13);
  v106 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__video;
  *(v1 + OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__video) = 2;
  v107 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isScreenSharingAvailable;
  *(v1 + OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isScreenSharingAvailable) = 2;
  v14 = (v1 + OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__providerIdentifier);
  v102 = (v1 + OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__providerIdentifier);
  *v14 = 0;
  v14[1] = 0;
  v109 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__otherInvitedHandles;
  *(v1 + OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__otherInvitedHandles) = v7;
  v110 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isPersonaAvailable;
  *(v1 + OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isPersonaAvailable) = 2;
  v111 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__lightweightMembers;
  *(v1 + OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__lightweightMembers) = v7;
  v112 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isLightweight;
  *(v1 + OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isLightweight) = 2;
  v113 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isGondolaCallingAvailable;
  *(v1 + OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isGondolaCallingAvailable) = 2;
  v114 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__videoEnabled;
  *(v1 + OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__videoEnabled) = 2;
  v15 = v1 + OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__sharePlayProtocolVersion;
  v115 = v1 + OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__sharePlayProtocolVersion;
  *v15 = 0;
  *(v15 + 4) = 1;
  v116 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isGftdowngradeToOneToOneAvailable;
  *(v1 + OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isGftdowngradeToOneToOneAvailable) = 2;
  v117 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isUplusNdowngradeAvailable;
  *(v1 + OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isUplusNdowngradeAvailable) = 2;
  v16 = (v1 + OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__collaborationIdentifier);
  v118 = (v1 + OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__collaborationIdentifier);
  *v16 = 0;
  v16[1] = 0;
  v119 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__supportsLeaveContext;
  *(v1 + OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__supportsLeaveContext) = 2;
  v120 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isUplusOneScreenSharingAvailable;
  *(v1 + OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isUplusOneScreenSharingAvailable) = 2;
  v121 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isSpatialPersonaEnabled;
  *(v1 + OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isSpatialPersonaEnabled) = 2;
  v122 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isUplusOneAvlessAvailable;
  *(v1 + OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isUplusOneAvlessAvailable) = 2;
  v17 = v1 + OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__visionFeatureVersion;
  v123 = v1 + OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__visionFeatureVersion;
  *v17 = 0;
  *(v17 + 4) = 1;
  v18 = v1 + OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__visionCallEstablishmentVersion;
  v124 = v1 + OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__visionCallEstablishmentVersion;
  *v18 = 0;
  *(v18 + 4) = 1;
  v125 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isUplusOneVisionToVisionAvailable;
  *(v1 + OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isUplusOneVisionToVisionAvailable) = 2;
  v126 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__supportsRequestToScreenShare;
  *(v1 + OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__supportsRequestToScreenShare) = 2;
  v127 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isPhotosSharePlayAvailable;
  *(v1 + OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isPhotosSharePlayAvailable) = 2;
  v19 = (v1 + OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__stableDeviceIdentifier);
  v128 = (v1 + OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__stableDeviceIdentifier);
  *v19 = 0;
  v19[1] = 0;
  v129 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isTranslationAvailable;
  *(v1 + OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isTranslationAvailable) = 2;
  v130 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isNearbySharePlay;
  *(v1 + OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isNearbySharePlay) = 2;
  v131 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isUpgradeToVideo;
  *(v1 + OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isUpgradeToVideo) = 2;
  v20 = v1 + OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__nearbyFeatureVersion;
  v132 = v1 + OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__nearbyFeatureVersion;
  *(v20 + 4) = 1;
  *v20 = 0;
  swift_beginAccess();
  LODWORD(v7) = *(a1 + 16);
  v21 = *(a1 + 20);
  swift_beginAccess();
  *(v1 + 16) = v7;
  *(v1 + 20) = v21;
  swift_beginAccess();
  v22 = *(a1 + 24);
  swift_beginAccess();
  *(v1 + 24) = v22;
  v23 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__message;
  swift_beginAccess();
  v24 = v103;
  sub_213FB2E54(a1 + v23, v103, &qword_27C903CF0, &unk_2146E9810);
  v25 = v101;
  swift_beginAccess();

  sub_21402EDB8(v24, v1 + v25, &qword_27C903CF0, &unk_2146E9810);
  swift_endAccess();
  v26 = (a1 + OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__messagesGroupUuidstring);
  swift_beginAccess();
  v28 = *v26;
  v27 = v26[1];
  swift_beginAccess();
  *v10 = v28;
  v10[1] = v27;

  v29 = (a1 + OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__messagesGroupName);
  swift_beginAccess();
  v31 = *v29;
  v30 = v29[1];
  swift_beginAccess();
  *v11 = v31;
  v11[1] = v30;

  v32 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isMomentsAvailable;
  swift_beginAccess();
  LOBYTE(v32) = *(a1 + v32);
  v33 = v104;
  swift_beginAccess();
  *(v1 + v33) = v32;
  v34 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__activitySession;
  swift_beginAccess();
  v35 = v108;
  sub_213FB2E54(a1 + v34, v108, &qword_27C903CB8, &qword_2146E97F0);
  v36 = v105;
  swift_beginAccess();
  sub_21402EDB8(v35, v1 + v36, &qword_27C903CB8, &qword_2146E97F0);
  swift_endAccess();
  v37 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__video;
  swift_beginAccess();
  LOBYTE(v37) = *(a1 + v37);
  v38 = v106;
  swift_beginAccess();
  *(v1 + v38) = v37;
  v39 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isScreenSharingAvailable;
  swift_beginAccess();
  LOBYTE(v39) = *(a1 + v39);
  v40 = v107;
  swift_beginAccess();
  *(v1 + v40) = v39;
  v41 = (a1 + OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__providerIdentifier);
  swift_beginAccess();
  v43 = *v41;
  v42 = v41[1];
  v44 = v102;
  swift_beginAccess();
  *v44 = v43;
  v44[1] = v42;

  v45 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__otherInvitedHandles;
  swift_beginAccess();
  v46 = *(a1 + v45);
  v47 = v109;
  swift_beginAccess();
  *(v1 + v47) = v46;

  v48 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isPersonaAvailable;
  swift_beginAccess();
  LOBYTE(v48) = *(a1 + v48);
  v49 = v110;
  swift_beginAccess();
  *(v1 + v49) = v48;
  v50 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__lightweightMembers;
  swift_beginAccess();
  v51 = *(a1 + v50);
  v52 = v111;
  swift_beginAccess();
  *(v1 + v52) = v51;

  v53 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isLightweight;
  swift_beginAccess();
  LOBYTE(v53) = *(a1 + v53);
  v54 = v112;
  swift_beginAccess();
  *(v1 + v54) = v53;
  v55 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isGondolaCallingAvailable;
  swift_beginAccess();
  LOBYTE(v55) = *(a1 + v55);
  v56 = v113;
  swift_beginAccess();
  *(v1 + v56) = v55;
  v57 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__videoEnabled;
  swift_beginAccess();
  LOBYTE(v57) = *(a1 + v57);
  v58 = v114;
  swift_beginAccess();
  *(v1 + v58) = v57;
  v59 = a1 + OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__sharePlayProtocolVersion;
  swift_beginAccess();
  LODWORD(v58) = *v59;
  LOBYTE(v59) = *(v59 + 4);
  v60 = v115;
  swift_beginAccess();
  *v60 = v58;
  *(v60 + 4) = v59;
  v61 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isGftdowngradeToOneToOneAvailable;
  swift_beginAccess();
  LOBYTE(v61) = *(a1 + v61);
  v62 = v116;
  swift_beginAccess();
  *(v1 + v62) = v61;
  v63 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isUplusNdowngradeAvailable;
  swift_beginAccess();
  LOBYTE(v63) = *(a1 + v63);
  v64 = v117;
  swift_beginAccess();
  *(v1 + v64) = v63;
  v65 = (a1 + OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__collaborationIdentifier);
  swift_beginAccess();
  v67 = *v65;
  v66 = v65[1];
  v68 = v118;
  swift_beginAccess();
  *v68 = v67;
  v68[1] = v66;

  v69 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__supportsLeaveContext;
  swift_beginAccess();
  LOBYTE(v69) = *(a1 + v69);
  v70 = v119;
  swift_beginAccess();
  *(v1 + v70) = v69;
  v71 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isUplusOneScreenSharingAvailable;
  swift_beginAccess();
  LOBYTE(v71) = *(a1 + v71);
  v72 = v120;
  swift_beginAccess();
  *(v1 + v72) = v71;
  v73 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isSpatialPersonaEnabled;
  swift_beginAccess();
  LOBYTE(v73) = *(a1 + v73);
  v74 = v121;
  swift_beginAccess();
  *(v1 + v74) = v73;
  v75 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isUplusOneAvlessAvailable;
  swift_beginAccess();
  LOBYTE(v75) = *(a1 + v75);
  v76 = v122;
  swift_beginAccess();
  *(v1 + v76) = v75;
  v77 = a1 + OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__visionFeatureVersion;
  swift_beginAccess();
  LODWORD(v76) = *v77;
  LOBYTE(v77) = *(v77 + 4);
  v78 = v123;
  swift_beginAccess();
  *v78 = v76;
  *(v78 + 4) = v77;
  v79 = a1 + OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__visionCallEstablishmentVersion;
  swift_beginAccess();
  LODWORD(v76) = *v79;
  LOBYTE(v79) = *(v79 + 4);
  v80 = v124;
  swift_beginAccess();
  *v80 = v76;
  *(v80 + 4) = v79;
  v81 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isUplusOneVisionToVisionAvailable;
  swift_beginAccess();
  LOBYTE(v81) = *(a1 + v81);
  v82 = v125;
  swift_beginAccess();
  *(v1 + v82) = v81;
  v83 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__supportsRequestToScreenShare;
  swift_beginAccess();
  LOBYTE(v83) = *(a1 + v83);
  v84 = v126;
  swift_beginAccess();
  *(v1 + v84) = v83;
  v85 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isPhotosSharePlayAvailable;
  swift_beginAccess();
  LOBYTE(v85) = *(a1 + v85);
  v86 = v127;
  swift_beginAccess();
  *(v1 + v86) = v85;
  v87 = (a1 + OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__stableDeviceIdentifier);
  swift_beginAccess();
  v89 = *v87;
  v88 = v87[1];
  v90 = v128;
  swift_beginAccess();
  *v90 = v89;
  v90[1] = v88;

  v91 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isTranslationAvailable;
  swift_beginAccess();
  LOBYTE(v91) = *(a1 + v91);
  v92 = v129;
  swift_beginAccess();
  *(v1 + v92) = v91;
  v93 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isNearbySharePlay;
  swift_beginAccess();
  LOBYTE(v93) = *(a1 + v93);
  v94 = v130;
  swift_beginAccess();
  *(v1 + v94) = v93;
  v95 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isUpgradeToVideo;
  swift_beginAccess();
  LOBYTE(v95) = *(a1 + v95);
  v96 = v131;
  swift_beginAccess();
  *(v1 + v96) = v95;
  v97 = a1 + OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__nearbyFeatureVersion;
  swift_beginAccess();
  LODWORD(v95) = *v97;
  LOBYTE(v97) = *(v97 + 4);
  v98 = v132;
  swift_beginAccess();
  *v98 = v95;
  *(v98 + 4) = v97;
  return v1;
}

uint64_t sub_21402CD8C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903CB8, &qword_2146E97F0);
  MEMORY[0x28223BE20](v3 - 8);
  v116 = &v90 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903CC8, &qword_2146E97F8);
  MEMORY[0x28223BE20](v5 - 8);
  v106 = &v90 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903CD0, &qword_2146E9800);
  MEMORY[0x28223BE20](v7 - 8);
  v101 = &v90 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903CD8, &qword_2146E9808);
  MEMORY[0x28223BE20](v9 - 8);
  v98 = &v90 - v10;
  *(v1 + 16) = 0;
  *(v1 + 21) = 546;
  *(v1 + 20) = 1;
  v11 = MEMORY[0x277D84F90];
  *(v1 + 24) = MEMORY[0x277D84F90];
  *(v1 + 32) = 0;
  *(v1 + 48) = v11;
  *(v1 + 40) = 0;
  *(v1 + 56) = 0;
  v91 = (v1 + 56);
  *(v1 + 60) = 1;
  *(v1 + 72) = 0;
  *(v1 + 64) = 0;
  v92 = (v1 + 64);
  *(v1 + 80) = v11;
  v93 = (v1 + 80);
  *(v1 + 96) = 0;
  *(v1 + 88) = 0;
  v94 = (v1 + 88);
  v12 = OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__link;
  v95 = OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__link;
  v13 = type metadata accessor for CSDMConversationLinkProto(0);
  (*(*(v13 - 8) + 56))(v1 + v12, 1, 1, v13);
  v14 = OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__reportData;
  v96 = OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__reportData;
  v15 = type metadata accessor for CSDMConversationReportProto(0);
  (*(*(v15 - 8) + 56))(v1 + v14, 1, 1, v15);
  v97 = OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isLetMeInApproved;
  *(v1 + OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isLetMeInApproved) = 2;
  v16 = OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__encryptedMessage;
  v99 = OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__encryptedMessage;
  v17 = type metadata accessor for CSDMEncryptedConversationMessageProto(0);
  (*(*(v17 - 8) + 56))(v1 + v16, 1, 1, v17);
  v18 = (v1 + OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__letMeInDelegationHandle);
  v100 = (v1 + OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__letMeInDelegationHandle);
  *v18 = 0;
  v18[1] = 0;
  v19 = (v1 + OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__letMeInDelegationUuid);
  v102 = (v1 + OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__letMeInDelegationUuid);
  *v19 = 0;
  v19[1] = 0;
  v20 = OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__enclosedEncryptedType;
  *(v1 + OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__enclosedEncryptedType) = 34;
  v103 = v20;
  v104 = OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__invitationPreferences;
  *(v1 + OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__invitationPreferences) = v11;
  v105 = OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__removedMembers;
  *(v1 + OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__removedMembers) = v11;
  v107 = OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__lightweightMembers;
  *(v1 + OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__lightweightMembers) = v11;
  v108 = OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__activeLightweightParticipants;
  *(v1 + OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__activeLightweightParticipants) = v11;
  v109 = OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__guestModeEnabled;
  *(v1 + OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__guestModeEnabled) = 2;
  v21 = (v1 + OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__highlightIdentifier);
  v110 = (v1 + OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__highlightIdentifier);
  *v21 = 0;
  v21[1] = 0;
  v22 = OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__stagedActivitySession;
  v111 = OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__stagedActivitySession;
  v23 = type metadata accessor for CSDMConversationActivitySessionProto(0);
  (*(*(v23 - 8) + 56))(v1 + v22, 1, 1, v23);
  v112 = OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__avMode;
  *(v1 + OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__avMode) = 3;
  v24 = v1 + OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__requestBlobRecoveryOptions;
  v113 = v1 + OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__requestBlobRecoveryOptions;
  *v24 = 0;
  *(v24 + 4) = 1;
  v25 = OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__presentationMode;
  *(v1 + OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__presentationMode) = 3;
  v114 = v25;
  v115 = OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isNearbySession;
  *(v1 + OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isNearbySession) = 2;
  swift_beginAccess();
  LODWORD(v22) = *(a1 + 16);
  LOBYTE(v16) = *(a1 + 20);
  swift_beginAccess();
  *(v1 + 16) = v22;
  *(v1 + 20) = v16;
  swift_beginAccess();
  LOBYTE(v22) = *(a1 + 21);
  swift_beginAccess();
  *(v1 + 21) = v22;
  swift_beginAccess();
  LOBYTE(v22) = *(a1 + 22);
  swift_beginAccess();
  *(v1 + 22) = v22;
  swift_beginAccess();
  v26 = *(a1 + 24);
  swift_beginAccess();
  *(v1 + 24) = v26;
  swift_beginAccess();
  v28 = *(a1 + 32);
  v27 = *(a1 + 40);
  swift_beginAccess();
  *(v1 + 32) = v28;
  *(v1 + 40) = v27;
  swift_beginAccess();
  v29 = *(a1 + 48);
  swift_beginAccess();
  *(v1 + 48) = v29;

  swift_beginAccess();
  LODWORD(v29) = *(a1 + 56);
  LOBYTE(v27) = *(a1 + 60);
  v30 = v91;
  swift_beginAccess();
  *v30 = v29;
  *(v1 + 60) = v27;
  swift_beginAccess();
  v32 = *(a1 + 64);
  v31 = *(a1 + 72);
  v33 = v92;
  swift_beginAccess();
  *v33 = v32;
  *(v1 + 72) = v31;

  swift_beginAccess();
  v34 = *(a1 + 80);
  v35 = v93;
  swift_beginAccess();
  *v35 = v34;

  swift_beginAccess();
  v37 = *(a1 + 88);
  v36 = *(a1 + 96);
  v38 = v94;
  swift_beginAccess();
  *v38 = v37;
  *(v1 + 96) = v36;

  v39 = OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__link;
  swift_beginAccess();
  v40 = v98;
  sub_213FB2E54(a1 + v39, v98, &qword_27C903CD8, &qword_2146E9808);
  v41 = v95;
  swift_beginAccess();
  sub_21402EDB8(v40, v1 + v41, &qword_27C903CD8, &qword_2146E9808);
  swift_endAccess();
  v42 = OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__reportData;
  swift_beginAccess();
  v43 = v101;
  sub_213FB2E54(a1 + v42, v101, &qword_27C903CD0, &qword_2146E9800);
  v44 = v96;
  swift_beginAccess();
  sub_21402EDB8(v43, v1 + v44, &qword_27C903CD0, &qword_2146E9800);
  swift_endAccess();
  v45 = OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isLetMeInApproved;
  swift_beginAccess();
  LOBYTE(v45) = *(a1 + v45);
  v46 = v97;
  swift_beginAccess();
  *(v1 + v46) = v45;
  v47 = OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__encryptedMessage;
  swift_beginAccess();
  v48 = v106;
  sub_213FB2E54(a1 + v47, v106, &qword_27C903CC8, &qword_2146E97F8);
  v49 = v99;
  swift_beginAccess();
  sub_21402EDB8(v48, v1 + v49, &qword_27C903CC8, &qword_2146E97F8);
  swift_endAccess();
  v50 = (a1 + OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__letMeInDelegationHandle);
  swift_beginAccess();
  v52 = *v50;
  v51 = v50[1];
  v53 = v100;
  swift_beginAccess();
  *v53 = v52;
  v53[1] = v51;

  v54 = (a1 + OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__letMeInDelegationUuid);
  swift_beginAccess();
  v56 = *v54;
  v55 = v54[1];
  v57 = v102;
  swift_beginAccess();
  *v57 = v56;
  v57[1] = v55;

  v58 = OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__enclosedEncryptedType;
  swift_beginAccess();
  LOBYTE(v58) = *(a1 + v58);
  v59 = v103;
  swift_beginAccess();
  *(v1 + v59) = v58;
  v60 = OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__invitationPreferences;
  swift_beginAccess();
  v61 = *(a1 + v60);
  v62 = v104;
  swift_beginAccess();
  *(v1 + v62) = v61;

  v63 = OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__removedMembers;
  swift_beginAccess();
  v64 = *(a1 + v63);
  v65 = v105;
  swift_beginAccess();
  *(v1 + v65) = v64;

  v66 = OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__lightweightMembers;
  swift_beginAccess();
  v67 = *(a1 + v66);
  v68 = v107;
  swift_beginAccess();
  *(v1 + v68) = v67;

  v69 = OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__activeLightweightParticipants;
  swift_beginAccess();
  v70 = *(a1 + v69);
  v71 = v108;
  swift_beginAccess();
  *(v1 + v71) = v70;

  v72 = OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__guestModeEnabled;
  swift_beginAccess();
  LOBYTE(v72) = *(a1 + v72);
  v73 = v109;
  swift_beginAccess();
  *(v1 + v73) = v72;
  v74 = (a1 + OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__highlightIdentifier);
  swift_beginAccess();
  v76 = *v74;
  v75 = v74[1];
  v77 = v110;
  swift_beginAccess();
  *v77 = v76;
  v77[1] = v75;

  v78 = OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__stagedActivitySession;
  swift_beginAccess();
  v79 = v116;
  sub_213FB2E54(a1 + v78, v116, &qword_27C903CB8, &qword_2146E97F0);
  v80 = v111;
  swift_beginAccess();
  sub_21402EDB8(v79, v1 + v80, &qword_27C903CB8, &qword_2146E97F0);
  swift_endAccess();
  v81 = OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__avMode;
  swift_beginAccess();
  LOBYTE(v81) = *(a1 + v81);
  v82 = v112;
  swift_beginAccess();
  *(v1 + v82) = v81;
  v83 = a1 + OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__requestBlobRecoveryOptions;
  swift_beginAccess();
  LODWORD(v82) = *v83;
  LOBYTE(v83) = *(v83 + 4);
  v84 = v113;
  swift_beginAccess();
  *v84 = v82;
  *(v84 + 4) = v83;
  v85 = OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__presentationMode;
  swift_beginAccess();
  LOBYTE(v85) = *(a1 + v85);
  v86 = v114;
  swift_beginAccess();
  *(v1 + v86) = v85;
  v87 = OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isNearbySession;
  swift_beginAccess();
  LOBYTE(a1) = *(a1 + v87);
  v88 = v115;
  swift_beginAccess();
  *(v1 + v88) = a1;
  return v1;
}

uint64_t sub_21402D9F8(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

unint64_t sub_21402DA4C()
{
  result = qword_27C903D00;
  if (!qword_27C903D00)
  {
    result = swift_getWitnessTable(aY_46, &type metadata for CSDMConversationParticipantDidLeaveContextProto.LeaveReason, v0, v1);
    atomic_store(result, &qword_27C903D00);
  }

  return result;
}

unint64_t sub_21402DAA0()
{
  result = qword_27C903D10;
  if (!qword_27C903D10)
  {
    result = swift_getWitnessTable(aQ_45, &type metadata for CSDMCallMessageProto.CallMessageType, v0, v1);
    atomic_store(result, &qword_27C903D10);
  }

  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

unint64_t sub_21402DB90()
{
  result = qword_27C903D48;
  if (!qword_27C903D48)
  {
    result = swift_getWitnessTable(byte_2146E71E0, &type metadata for CSDMHandleProto.HandleType, v0, v1);
    atomic_store(result, &qword_27C903D48);
  }

  return result;
}

uint64_t sub_21402DBE4(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C903788, "Į\r");
  MEMORY[0x28223BE20](v3 - 8);
  v89 = &v88 - v4;
  *(v1 + 16) = 0;
  *(v1 + 20) = 1;
  *(v1 + 24) = 0;
  *(v1 + 32) = 1;
  v5 = OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__handle;
  v6 = type metadata accessor for CSDMHandleProto(0);
  (*(*(v6 - 8) + 56))(v1 + v5, 1, 1, v6);
  v7 = (v1 + OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__avcData);
  *(v1 + OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__avcData) = xmmword_2146E68C0;
  v90 = OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isMomentsAvailable;
  *(v1 + OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isMomentsAvailable) = 2;
  v91 = OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isScreenSharingAvailable;
  *(v1 + OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isScreenSharingAvailable) = 2;
  v92 = OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isGondolaCallingAvailable;
  *(v1 + OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isGondolaCallingAvailable) = 2;
  v93 = OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isPersonaAvailable;
  *(v1 + OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isPersonaAvailable) = 2;
  v94 = OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isLightweight;
  *(v1 + OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isLightweight) = 2;
  v8 = v1 + OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__sharePlayProtocolVersion;
  *v8 = 0;
  *(v8 + 4) = 1;
  v9 = v1 + OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__options;
  v95 = v1 + OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__options;
  *v9 = 0;
  *(v9 + 4) = 1;
  v96 = OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isGftdowngradeToOneToOneAvailable;
  *(v1 + OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isGftdowngradeToOneToOneAvailable) = 2;
  v97 = OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__guestModeEnabled;
  *(v1 + OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__guestModeEnabled) = 2;
  v98 = OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isUplusNdowngradeAvailable;
  *(v1 + OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isUplusNdowngradeAvailable) = 2;
  v99 = OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__avMode;
  *(v1 + OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__avMode) = 3;
  v100 = OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__supportsLeaveContext;
  *(v1 + OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__supportsLeaveContext) = 2;
  v101 = OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isUplusOneScreenSharingAvailable;
  *(v1 + OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isUplusOneScreenSharingAvailable) = 2;
  v102 = (v1 + OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__personaHandshakeData);
  *(v1 + OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__personaHandshakeData) = xmmword_2146E68C0;
  v103 = OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isSpatialPersonaEnabled;
  *(v1 + OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isSpatialPersonaEnabled) = 2;
  v104 = OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isUplusOneAvlessAvailable;
  *(v1 + OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isUplusOneAvlessAvailable) = 2;
  v10 = v1 + OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__visionFeatureVersion;
  v105 = v1 + OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__visionFeatureVersion;
  *v10 = 0;
  *(v10 + 4) = 1;
  v11 = v1 + OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__visionCallEstablishmentVersion;
  v106 = v1 + OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__visionCallEstablishmentVersion;
  *v11 = 0;
  *(v11 + 4) = 1;
  v107 = OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isUplusOneVisionToVisionAvailable;
  *(v1 + OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isUplusOneVisionToVisionAvailable) = 2;
  v108 = OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__supportsRequestToScreenShare;
  *(v1 + OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__supportsRequestToScreenShare) = 2;
  v12 = v1 + OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__spatialPersonaGenerationCounter;
  v109 = v1 + OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__spatialPersonaGenerationCounter;
  *v12 = 0;
  *(v12 + 4) = 1;
  v110 = OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isPhotosSharePlayAvailable;
  *(v1 + OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isPhotosSharePlayAvailable) = 2;
  v13 = OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__presentationMode;
  *(v1 + OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__presentationMode) = 3;
  v14 = (v1 + OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__stableDeviceIdentifier);
  v111 = v13;
  v112 = v14;
  *v14 = 0;
  v14[1] = 0;
  v113 = OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isTranslationAvailable;
  *(v1 + OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isTranslationAvailable) = 2;
  v15 = OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isNearbySharePlay;
  *(v1 + OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isNearbySharePlay) = 2;
  v16 = v1 + OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__nearbyFeatureVersion;
  v114 = v15;
  v115 = v16;
  *(v16 + 4) = 1;
  *v16 = 0;
  swift_beginAccess();
  v17 = *(a1 + 16);
  v18 = *(a1 + 20);
  swift_beginAccess();
  *(v1 + 16) = v17;
  *(v1 + 20) = v18;
  swift_beginAccess();
  v19 = *(a1 + 24);
  v20 = *(a1 + 32);
  swift_beginAccess();
  *(v1 + 24) = v19;
  *(v1 + 32) = v20;
  v21 = OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__handle;
  swift_beginAccess();
  v22 = v89;
  sub_213FB2E54(a1 + v21, v89, &unk_27C903788, "Į\r");
  swift_beginAccess();
  sub_21402EDB8(v22, v1 + v5, &unk_27C903788, "Į\r");
  swift_endAccess();
  v23 = (a1 + OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__avcData);
  swift_beginAccess();
  v25 = *v23;
  v24 = v23[1];
  swift_beginAccess();
  v26 = *v7;
  v27 = v7[1];
  *v7 = v25;
  v7[1] = v24;
  sub_213FDCA18(v25, v24);
  sub_213FDC6BC(v26, v27);
  v28 = OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isMomentsAvailable;
  swift_beginAccess();
  LOBYTE(v28) = *(a1 + v28);
  v29 = v90;
  swift_beginAccess();
  *(v1 + v29) = v28;
  v30 = OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isScreenSharingAvailable;
  swift_beginAccess();
  LOBYTE(v30) = *(a1 + v30);
  v31 = v91;
  swift_beginAccess();
  *(v1 + v31) = v30;
  v32 = OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isGondolaCallingAvailable;
  swift_beginAccess();
  LOBYTE(v32) = *(a1 + v32);
  v33 = v92;
  swift_beginAccess();
  *(v1 + v33) = v32;
  v34 = OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isPersonaAvailable;
  swift_beginAccess();
  LOBYTE(v34) = *(a1 + v34);
  v35 = v93;
  swift_beginAccess();
  *(v1 + v35) = v34;
  v36 = OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isLightweight;
  swift_beginAccess();
  LOBYTE(v36) = *(a1 + v36);
  v37 = v94;
  swift_beginAccess();
  *(v1 + v37) = v36;
  v38 = a1 + OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__sharePlayProtocolVersion;
  swift_beginAccess();
  LODWORD(v37) = *v38;
  LOBYTE(v38) = *(v38 + 4);
  swift_beginAccess();
  *v8 = v37;
  *(v8 + 4) = v38;
  v39 = a1 + OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__options;
  swift_beginAccess();
  LODWORD(v38) = *v39;
  LOBYTE(v39) = *(v39 + 4);
  v40 = v95;
  swift_beginAccess();
  *v40 = v38;
  *(v40 + 4) = v39;
  v41 = OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isGftdowngradeToOneToOneAvailable;
  swift_beginAccess();
  LOBYTE(v41) = *(a1 + v41);
  v42 = v96;
  swift_beginAccess();
  *(v1 + v42) = v41;
  v43 = OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__guestModeEnabled;
  swift_beginAccess();
  LOBYTE(v43) = *(a1 + v43);
  v44 = v97;
  swift_beginAccess();
  *(v1 + v44) = v43;
  v45 = OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isUplusNdowngradeAvailable;
  swift_beginAccess();
  LOBYTE(v45) = *(a1 + v45);
  v46 = v98;
  swift_beginAccess();
  *(v1 + v46) = v45;
  v47 = OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__avMode;
  swift_beginAccess();
  LOBYTE(v47) = *(a1 + v47);
  v48 = v99;
  swift_beginAccess();
  *(v1 + v48) = v47;
  v49 = OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__supportsLeaveContext;
  swift_beginAccess();
  LOBYTE(v49) = *(a1 + v49);
  v50 = v100;
  swift_beginAccess();
  *(v1 + v50) = v49;
  v51 = OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isUplusOneScreenSharingAvailable;
  swift_beginAccess();
  LOBYTE(v51) = *(a1 + v51);
  v52 = v101;
  swift_beginAccess();
  *(v1 + v52) = v51;
  v53 = (a1 + OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__personaHandshakeData);
  swift_beginAccess();
  v55 = *v53;
  v54 = v53[1];
  v56 = v102;
  swift_beginAccess();
  v57 = *v56;
  v58 = v56[1];
  *v56 = v55;
  v56[1] = v54;
  sub_213FDCA18(v55, v54);
  sub_213FDC6BC(v57, v58);
  v59 = OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isSpatialPersonaEnabled;
  swift_beginAccess();
  LOBYTE(v59) = *(a1 + v59);
  v60 = v103;
  swift_beginAccess();
  *(v1 + v60) = v59;
  v61 = OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isUplusOneAvlessAvailable;
  swift_beginAccess();
  LOBYTE(v61) = *(a1 + v61);
  v62 = v104;
  swift_beginAccess();
  *(v1 + v62) = v61;
  v63 = a1 + OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__visionFeatureVersion;
  swift_beginAccess();
  LODWORD(v62) = *v63;
  LOBYTE(v63) = *(v63 + 4);
  v64 = v105;
  swift_beginAccess();
  *v64 = v62;
  *(v64 + 4) = v63;
  v65 = a1 + OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__visionCallEstablishmentVersion;
  swift_beginAccess();
  LODWORD(v62) = *v65;
  LOBYTE(v65) = *(v65 + 4);
  v66 = v106;
  swift_beginAccess();
  *v66 = v62;
  *(v66 + 4) = v65;
  v67 = OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isUplusOneVisionToVisionAvailable;
  swift_beginAccess();
  LOBYTE(v67) = *(a1 + v67);
  v68 = v107;
  swift_beginAccess();
  *(v1 + v68) = v67;
  v69 = OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__supportsRequestToScreenShare;
  swift_beginAccess();
  LOBYTE(v69) = *(a1 + v69);
  v70 = v108;
  swift_beginAccess();
  *(v1 + v70) = v69;
  v71 = a1 + OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__spatialPersonaGenerationCounter;
  swift_beginAccess();
  LODWORD(v70) = *v71;
  LOBYTE(v71) = *(v71 + 4);
  v72 = v109;
  swift_beginAccess();
  *v72 = v70;
  *(v72 + 4) = v71;
  v73 = OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isPhotosSharePlayAvailable;
  swift_beginAccess();
  LOBYTE(v73) = *(a1 + v73);
  v74 = v110;
  swift_beginAccess();
  *(v1 + v74) = v73;
  v75 = OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__presentationMode;
  swift_beginAccess();
  LOBYTE(v75) = *(a1 + v75);
  v76 = v111;
  swift_beginAccess();
  *(v1 + v76) = v75;
  v77 = (a1 + OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__stableDeviceIdentifier);
  swift_beginAccess();
  v79 = *v77;
  v78 = v77[1];
  v80 = v112;
  swift_beginAccess();
  *v80 = v79;
  v80[1] = v78;

  v81 = OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isTranslationAvailable;
  swift_beginAccess();
  LOBYTE(v81) = *(a1 + v81);
  v82 = v113;
  swift_beginAccess();
  *(v1 + v82) = v81;
  v83 = OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isNearbySharePlay;
  swift_beginAccess();
  LOBYTE(v83) = *(a1 + v83);
  v84 = v114;
  swift_beginAccess();
  *(v1 + v84) = v83;
  v85 = a1 + OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__nearbyFeatureVersion;
  swift_beginAccess();
  LODWORD(v83) = *v85;
  LOBYTE(v85) = *(v85 + 4);
  v86 = v115;
  swift_beginAccess();
  *v86 = v83;
  *(v86 + 4) = v85;
  return v1;
}

uint64_t sub_21402E6F0(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D90, &qword_2146E9870);
  MEMORY[0x28223BE20](v3 - 8);
  v69 = &v58 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C903788, "Į\r");
  MEMORY[0x28223BE20](v5 - 8);
  v66 = &v58 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903DA0, &qword_2146E9880);
  MEMORY[0x28223BE20](v7 - 8);
  v62 = &v58 - v8;
  *(v1 + 24) = 0;
  *(v1 + 32) = 0;
  *(v1 + 16) = 0;
  *(v1 + 40) = 0xF000000000000000;
  *(v1 + 80) = 0;
  v59 = (v1 + 80);
  *(v1 + 64) = 0u;
  v58 = (v1 + 64);
  *(v1 + 48) = 0u;
  *(v1 + 88) = 0xF000000000000000;
  v9 = OBJC_IVAR____TtCV9BlastDoor29CSDMConversationActivityProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__activityContext;
  v60 = OBJC_IVAR____TtCV9BlastDoor29CSDMConversationActivityProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__activityContext;
  v10 = type metadata accessor for CSDMConversationActivityContextProto(0);
  (*(*(v10 - 8) + 56))(v1 + v9, 1, 1, v10);
  v11 = OBJC_IVAR____TtCV9BlastDoor29CSDMConversationActivityProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__originatorHandle;
  v61 = OBJC_IVAR____TtCV9BlastDoor29CSDMConversationActivityProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__originatorHandle;
  v12 = type metadata accessor for CSDMHandleProto(0);
  (*(*(v12 - 8) + 56))(v1 + v11, 1, 1, v12);
  v13 = v1 + OBJC_IVAR____TtCV9BlastDoor29CSDMConversationActivityProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__updatedDateEpochTime;
  v63 = v1 + OBJC_IVAR____TtCV9BlastDoor29CSDMConversationActivityProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__updatedDateEpochTime;
  *v13 = 0;
  *(v13 + 8) = 1;
  v14 = (v1 + OBJC_IVAR____TtCV9BlastDoor29CSDMConversationActivityProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__fallbackApplicationName);
  v64 = (v1 + OBJC_IVAR____TtCV9BlastDoor29CSDMConversationActivityProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__fallbackApplicationName);
  *v14 = 0;
  v14[1] = 0;
  v15 = OBJC_IVAR____TtCV9BlastDoor29CSDMConversationActivityProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__activityMetadata;
  v65 = OBJC_IVAR____TtCV9BlastDoor29CSDMConversationActivityProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__activityMetadata;
  v16 = type metadata accessor for CSDMConversationActivityMetadataProto(0);
  (*(*(v16 - 8) + 56))(v1 + v15, 1, 1, v16);
  v17 = OBJC_IVAR____TtCV9BlastDoor29CSDMConversationActivityProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isSystemActivity;
  *(v1 + OBJC_IVAR____TtCV9BlastDoor29CSDMConversationActivityProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isSystemActivity) = 2;
  v18 = v1 + OBJC_IVAR____TtCV9BlastDoor29CSDMConversationActivityProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__timestampAsTimeIntervalSinceReferenceDate;
  v67 = v17;
  v68 = v18;
  *v18 = 0;
  *(v18 + 8) = 1;
  swift_beginAccess();
  v19 = a1[2];
  v20 = a1[3];
  swift_beginAccess();
  *(v1 + 16) = v19;
  *(v1 + 24) = v20;
  swift_beginAccess();
  v22 = a1[4];
  v21 = a1[5];
  swift_beginAccess();
  v23 = *(v1 + 32);
  v24 = *(v1 + 40);
  *(v1 + 32) = v22;
  *(v1 + 40) = v21;

  sub_213FDCA18(v22, v21);
  sub_213FDC6BC(v23, v24);
  swift_beginAccess();
  v26 = a1[6];
  v25 = a1[7];
  swift_beginAccess();
  *(v1 + 48) = v26;
  *(v1 + 56) = v25;

  swift_beginAccess();
  v28 = a1[8];
  v27 = a1[9];
  v29 = v58;
  swift_beginAccess();
  *v29 = v28;
  *(v1 + 72) = v27;

  swift_beginAccess();
  v30 = a1[10];
  v31 = a1[11];
  v32 = v59;
  swift_beginAccess();
  v33 = *v32;
  v34 = v32;
  v35 = *(v1 + 88);
  *v34 = v30;
  *(v1 + 88) = v31;
  sub_213FDCA18(v30, v31);
  sub_213FDC6BC(v33, v35);
  v36 = OBJC_IVAR____TtCV9BlastDoor29CSDMConversationActivityProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__activityContext;
  swift_beginAccess();
  v37 = v62;
  sub_213FB2E54(a1 + v36, v62, &qword_27C903DA0, &qword_2146E9880);
  v38 = v60;
  swift_beginAccess();
  sub_21402EDB8(v37, v1 + v38, &qword_27C903DA0, &qword_2146E9880);
  swift_endAccess();
  v39 = OBJC_IVAR____TtCV9BlastDoor29CSDMConversationActivityProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__originatorHandle;
  swift_beginAccess();
  v40 = v66;
  sub_213FB2E54(a1 + v39, v66, &unk_27C903788, "Į\r");
  v41 = v61;
  swift_beginAccess();
  sub_21402EDB8(v40, v1 + v41, &unk_27C903788, "Į\r");
  swift_endAccess();
  v42 = a1 + OBJC_IVAR____TtCV9BlastDoor29CSDMConversationActivityProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__updatedDateEpochTime;
  swift_beginAccess();
  v43 = *v42;
  LOBYTE(v42) = v42[8];
  v44 = v63;
  swift_beginAccess();
  *v44 = v43;
  *(v44 + 8) = v42;
  v45 = (a1 + OBJC_IVAR____TtCV9BlastDoor29CSDMConversationActivityProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__fallbackApplicationName);
  swift_beginAccess();
  v47 = *v45;
  v46 = v45[1];
  v48 = v64;
  swift_beginAccess();
  *v48 = v47;
  v48[1] = v46;

  v49 = OBJC_IVAR____TtCV9BlastDoor29CSDMConversationActivityProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__activityMetadata;
  swift_beginAccess();
  v50 = v69;
  sub_213FB2E54(a1 + v49, v69, &qword_27C903D90, &qword_2146E9870);
  v51 = v65;
  swift_beginAccess();
  sub_21402EDB8(v50, v1 + v51, &qword_27C903D90, &qword_2146E9870);
  swift_endAccess();
  v52 = OBJC_IVAR____TtCV9BlastDoor29CSDMConversationActivityProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isSystemActivity;
  swift_beginAccess();
  LOBYTE(v52) = *(a1 + v52);
  v53 = v67;
  swift_beginAccess();
  *(v1 + v53) = v52;
  v54 = a1 + OBJC_IVAR____TtCV9BlastDoor29CSDMConversationActivityProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__timestampAsTimeIntervalSinceReferenceDate;
  swift_beginAccess();
  v55 = *v54;
  LOBYTE(v54) = v54[8];
  v56 = v68;
  swift_beginAccess();
  *v56 = v55;
  *(v56 + 8) = v54;
  return v1;
}

uint64_t sub_21402EDB8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

unint64_t sub_21402EE20()
{
  result = qword_27C903DF0;
  if (!qword_27C903DF0)
  {
    result = swift_getWitnessTable(aS_9, &type metadata for CSDMConversationLinkProto.ConversationLinkLifetimeScope, v0, v1);
    atomic_store(result, &qword_27C903DF0);
  }

  return result;
}

unint64_t sub_21402EE74()
{
  result = qword_27C903E00;
  if (!qword_27C903E00)
  {
    result = swift_getWitnessTable(byte_2146E7900, &type metadata for CSDMConversationInvitationPreferenceProto.PreferenceHandleType, v0, v1);
    atomic_store(result, &qword_27C903E00);
  }

  return result;
}

__n128 __swift_memcpy88_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_21402EF3C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 88))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21402EF5C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
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

  *(result + 88) = v3;
  return result;
}

void sub_21402EFEC(uint64_t a1)
{
  sub_2146D8DF8();
  if (v1 <= 0x3F)
  {
    sub_21402F448(319, &qword_280B2E328, MEMORY[0x277D84CC0], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_21400E518(319, &unk_27C9035F8, type metadata accessor for CSDMHandleProto, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_21402F448(319, &qword_280B2E320, MEMORY[0x277D84D38], MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          sub_21402F448(319, &qword_280B34BE0, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
          if (v5 <= 0x3F)
          {
            sub_21402F448(319, &qword_27C903E58, MEMORY[0x277D849A8], MEMORY[0x277D83D88]);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for SingleKiss(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SingleKiss(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_21402F254(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 40))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21402F274(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
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

  *(result + 40) = v3;
  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
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

uint64_t sub_21402F3C8(uint64_t a1, int a2)
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

uint64_t sub_21402F3E8(uint64_t result, int a2, int a3)
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

void sub_21402F448(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_21402F508()
{
  if ((*(v0 + 25) & 1) == 0)
  {
    return *(v0 + 16);
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_21402F574@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (*(result + 25))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v2 = *(result + 24);
    *a2 = *(result + 16);
    *(a2 + 8) = v2 & 1;
  }

  return result;
}

uint64_t sub_21402F5FC(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F38, &unk_2146E9D40);
  v12 = v1[*(v5 + 32)];
  v11[0] = 0x6E776F6E6B6E753CLL;
  v11[1] = 0xE90000000000003ELL;
  v11[2] = 0xD00000000000001CLL;
  v11[3] = 0x800000021478A360;
  if (v4(a1, &v12, v11))
  {

    v6 = *(v5 + 28);
    sub_213FB2DF4(&v2[v6], &qword_27C903F40, &unk_2146F1C50);
    sub_214032588(a1, &v2[v6]);
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
    v8 = *(*(v7 - 8) + 56);

    return v8(&v2[v6], 0, 1, v7);
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v10 = 0x6E776F6E6B6E753CLL;
    v10[1] = 0xE90000000000003ELL;
    v10[2] = 0xD00000000000001CLL;
    v10[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t sub_21402F7C8(double a1)
{
  v8 = a1;
  v3 = *v1;
  v7 = *(v1 + 25);
  v6[0] = 0x6E776F6E6B6E753CLL;
  v6[1] = 0xE90000000000003ELL;
  v6[2] = 0xD00000000000001CLL;
  v6[3] = 0x800000021478A360;
  if (v3(&v8, &v7, v6))
  {

    *(v1 + 16) = a1;
    *(v1 + 24) = 0;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v5 = 0x6E776F6E6B6E753CLL;
    v5[1] = 0xE90000000000003ELL;
    v5[2] = 0xD00000000000001CLL;
    v5[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t sub_21402F904(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131D0, &qword_2146EAA70);
  v13 = v1[*(v5 + 32)];
  v12[0] = 0x6E776F6E6B6E753CLL;
  v12[1] = 0xE90000000000003ELL;
  v12[2] = 0xD00000000000001CLL;
  v12[3] = 0x800000021478A360;
  if (v4(a1, &v13, v12))
  {

    v6 = *(v5 + 28);
    sub_213FB2DF4(&v1[v6], &unk_27C9131A0, &unk_2146E9D10);
    v7 = sub_2146D8958();
    v11 = *(v7 - 8);
    (*(v11 + 32))(&v2[v6], a1, v7);
    v8 = *(v11 + 56);

    return v8(&v2[v6], 0, 1, v7);
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v10 = 0x6E776F6E6B6E753CLL;
    v10[1] = 0xE90000000000003ELL;
    v10[2] = 0xD00000000000001CLL;
    v10[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t sub_21402FAF0(__int16 a1)
{
  v8 = a1;
  v3 = *v1;
  v7 = *(v1 + 19);
  v6[0] = 0x6E776F6E6B6E753CLL;
  v6[1] = 0xE90000000000003ELL;
  v6[2] = 0xD00000000000001CLL;
  v6[3] = 0x800000021478A360;
  if (v3(&v8, &v7, v6))
  {

    *(v1 + 16) = a1;
    *(v1 + 18) = 0;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v5 = 0x6E776F6E6B6E753CLL;
    v5[1] = 0xE90000000000003ELL;
    v5[2] = 0xD00000000000001CLL;
    v5[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t _s9BlastDoor12AngerMessageV8durationSfvs_0(float a1)
{
  v8 = a1;
  v3 = *v1;
  v7 = *(v1 + 21);
  v6[0] = 0x6E776F6E6B6E753CLL;
  v6[1] = 0xE90000000000003ELL;
  v6[2] = 0xD00000000000001CLL;
  v6[3] = 0x800000021478A360;
  if (v3(&v8, &v7, v6))
  {

    *(v1 + 16) = a1;
    *(v1 + 20) = 0;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v5 = 0x6E776F6E6B6E753CLL;
    v5[1] = 0xE90000000000003ELL;
    v5[2] = 0xD00000000000001CLL;
    v5[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t sub_21402FD60(int a1)
{
  v8 = a1;
  v3 = *v1;
  v7 = *(v1 + 21);
  v6[0] = 0x6E776F6E6B6E753CLL;
  v6[1] = 0xE90000000000003ELL;
  v6[2] = 0xD00000000000001CLL;
  v6[3] = 0x800000021478A360;
  if (v3(&v8, &v7, v6))
  {

    *(v1 + 16) = a1;
    *(v1 + 20) = 0;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v5 = 0x6E776F6E6B6E753CLL;
    v5[1] = 0xE90000000000003ELL;
    v5[2] = 0xD00000000000001CLL;
    v5[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t _s9BlastDoor11CPIMMessageV14MlsEraIdHeaderV03eraF0Sivs_0(uint64_t a1)
{
  v8 = a1;
  v3 = *v1;
  v7 = *(v1 + 25);
  v6[0] = 0x6E776F6E6B6E753CLL;
  v6[1] = 0xE90000000000003ELL;
  v6[2] = 0xD00000000000001CLL;
  v6[3] = 0x800000021478A360;
  if (v3(&v8, &v7, v6))
  {

    *(v1 + 16) = a1;
    *(v1 + 24) = 0;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v5 = 0x6E776F6E6B6E753CLL;
    v5[1] = 0xE90000000000003ELL;
    v5[2] = 0xD00000000000001CLL;
    v5[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t sub_21402FFC8(char a1)
{
  v7 = a1;
  v2 = *v1;
  v6 = *(v1 + 17);
  v5[0] = 0x6E776F6E6B6E753CLL;
  v5[1] = 0xE90000000000003ELL;
  v5[2] = 0xD00000000000001CLL;
  v5[3] = 0x800000021478A360;
  if (v2(&v7, &v6, v5))
  {

    *(v1 + 16) = v7;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v4 = 0x6E776F6E6B6E753CLL;
    v4[1] = 0xE90000000000003ELL;
    v4[2] = 0xD00000000000001CLL;
    v4[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t sub_2140300F8(uint64_t a1)
{
  v8 = a1;
  v9 = BYTE4(a1) & 1;
  v3 = *v1;
  v7 = *(v1 + 22);
  v6[0] = 0x6E776F6E6B6E753CLL;
  v6[1] = 0xE90000000000003ELL;
  v6[2] = 0xD00000000000001CLL;
  v6[3] = 0x800000021478A360;
  if (v3(&v8, &v7, v6))
  {

    *(v1 + 20) = (a1 & 0x100000000uLL) >> 32;
    *(v1 + 16) = a1;
    *(v1 + 21) = 0;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v5 = 0x6E776F6E6B6E753CLL;
    v5[1] = 0xE90000000000003ELL;
    v5[2] = 0xD00000000000001CLL;
    v5[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t sub_214030244(uint64_t a1, char a2)
{
  v10 = a1;
  v11 = a2 & 1;
  v5 = *v2;
  v9 = *(v2 + 26);
  v8[0] = 0x6E776F6E6B6E753CLL;
  v8[1] = 0xE90000000000003ELL;
  v8[2] = 0xD00000000000001CLL;
  v8[3] = 0x800000021478A360;
  if (v5(&v10, &v9, v8))
  {

    *(v2 + 16) = a1;
    *(v2 + 24) = a2 & 1;
    *(v2 + 25) = 0;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v7 = 0x6E776F6E6B6E753CLL;
    v7[1] = 0xE90000000000003ELL;
    v7[2] = 0xD00000000000001CLL;
    v7[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t (*sub_214030394(uint64_t a1))(uint64_t a1)
{
  *(a1 + 16) = v1;
  if (*(v1 + 25))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v2 = *(v1 + 24);
    *a1 = *(v1 + 16);
    *(a1 + 8) = v2 & 1;
    return sub_214030428;
  }

  return result;
}

uint64_t sub_214030458@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 25);
  v6 = *(v1 + 26);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 25) = v5;
  *(a1 + 26) = v6;
}

uint64_t sub_214030484(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = *(a1 + 24);
  v7 = *(a1 + 25);
  v8 = *(a1 + 26);

  *a2 = v4;
  *(a2 + 8) = v3;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
  *(a2 + 25) = v7;
  *(a2 + 26) = v8;
  return result;
}

__n128 sub_2140304F8(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u8[8];
  v5 = a1[1].n128_u8[9];
  v6 = a1[1].n128_u8[10];

  result = *a1;
  *v1 = *a1;
  v1[1].n128_u64[0] = v3;
  v1[1].n128_u8[8] = v4;
  v1[1].n128_u8[9] = v5;
  v1[1].n128_u8[10] = v6;
  return result;
}

void (*sub_214030558(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = *(v1 + 8);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 25);
  v9 = *(v1 + 26);
  *v4 = *v1;
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 25) = v8;
  *(v4 + 26) = v9;

  return sub_2140305F8;
}

void sub_2140305F8(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v5 = **a1;
  v4 = (*a1)[1];
  v6 = (*a1)[2];
  v7 = *(*a1 + 24);
  v8 = *(*a1 + 25);
  v9 = *(*a1 + 26);
  if (a2)
  {

    *v3 = v5;
    *(v3 + 8) = v4;
    *(v3 + 16) = v6;
    *(v3 + 24) = v7;
    *(v3 + 25) = v8;
    *(v3 + 26) = v9;
  }

  else
  {

    *v3 = v5;
    *(v3 + 8) = v4;
    *(v3 + 16) = v6;
    *(v3 + 24) = v7;
    *(v3 + 25) = v8;
    *(v3 + 26) = v9;
  }

  free(v2);
}

uint64_t sub_2140306B8()
{
  if (*(v0 + 56) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + 48);

    return v1;
  }

  return result;
}

uint64_t sub_214030738@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 56);
  if (v4 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a2 = *(a1 + 48);
    a2[1] = v4;
  }

  return result;
}

uint64_t sub_2140307AC(uint64_t *a1)
{
  sub_214031B48(*a1, a1[1], 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);
}

uint64_t sub_21403085C(uint64_t a1, uint64_t a2)
{
  v10[0] = a1;
  v10[1] = a2;
  v5 = *(v2 + 32);
  v9 = *(v2 + 64);
  v8[0] = 0x6E776F6E6B6E753CLL;
  v8[1] = 0xE90000000000003ELL;
  v8[2] = 0xD00000000000001CLL;
  v8[3] = 0x800000021478A360;
  if (v5(v10, &v9, v8))
  {
    sub_213FDC6D0(*(v2 + 48), *(v2 + 56));

    *(v2 + 48) = a1;
    *(v2 + 56) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v7 = 0x6E776F6E6B6E753CLL;
    v7[1] = 0xE90000000000003ELL;
    v7[2] = 0xD00000000000001CLL;
    v7[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

void (*sub_2140309A0(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(v1 + 48);
  *(v3 + 24) = v5;
  v6 = *(v1 + 56);
  v4[4] = v6;
  if (v6 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *v4 = v5;
    v4[1] = v6;

    return sub_214030A78;
  }

  return result;
}

void sub_214030A78(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = (*a1)[1];
  v3 = (*a1)[2];
  v5 = **a1;
  if ((a2 & 1) == 0)
  {
    v11 = **a1;
    v12 = v4;
    v8 = *(v3 + 32);
    v13 = *(v3 + 64);
    v14 = 0x6E776F6E6B6E753CLL;
    v15 = 0xE90000000000003ELL;
    v16 = 0xD00000000000001CLL;
    v17 = 0x800000021478A360;
    if (v8(&v11, &v13, &v14))
    {
      v9 = v2[2];
      sub_213FDC6D0(v2[3], v2[4]);

      *(v9 + 48) = v5;
      *(v9 + 56) = v4;
      goto LABEL_6;
    }

LABEL_9:
    sub_214031C4C();
    swift_allocError();
    *v10 = 0x6E776F6E6B6E753CLL;
    v10[1] = 0xE90000000000003ELL;
    v10[2] = 0xD00000000000001CLL;
    v10[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
    return;
  }

  v11 = **a1;
  v12 = v4;
  v6 = *(v3 + 32);
  v13 = *(v3 + 64);
  v14 = 0x6E776F6E6B6E753CLL;
  v15 = 0xE90000000000003ELL;
  v16 = 0xD00000000000001CLL;
  v17 = 0x800000021478A360;

  if ((v6(&v11, &v13, &v14) & 1) == 0)
  {
    goto LABEL_9;
  }

  v7 = v2[2];
  sub_213FDC6D0(v2[3], v2[4]);

  *(v7 + 48) = v5;
  *(v7 + 56) = v4;

LABEL_6:

  free(v2);
}

uint64_t sub_214030C48@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  v4 = *(v1 + 56);
  v5 = *(v1 + 64);
  *a1 = *(v1 + 32);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

uint64_t sub_214030CA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v5 = *(a1 + 64);
  *a2 = *(a1 + 32);
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  *(a2 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

uint64_t sub_214030CF4(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = *(a1 + 32);
  v8 = *(a2 + 48);
  v9 = *(a2 + 56);

  sub_213FDC9D0(v5, v6);

  result = sub_213FDC6D0(v8, v9);
  *(a2 + 32) = v4;
  *(a2 + 40) = v3;
  *(a2 + 48) = v5;
  *(a2 + 56) = v6;
  *(a2 + 64) = v7;
  return result;
}

__n128 sub_214030D7C(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = v1[3].n128_i64[0];
  v7 = v1[3].n128_i64[1];

  sub_213FDC6D0(v6, v7);
  result = *a1;
  v1[2] = *a1;
  v1[3].n128_u64[0] = v3;
  v1[3].n128_u64[1] = v4;
  v1[4].n128_u8[0] = v5;
  return result;
}

void (*sub_214030DE4(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 40);
  v6 = *(v1 + 48);
  v7 = *(v1 + 56);
  v8 = *(v1 + 64);
  *v4 = *(v1 + 32);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_213FDC9D0(v6, v7);
  return sub_214030E84;
}

void sub_214030E84(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v5 = **a1;
  v4 = (*a1)[1];
  v7 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = *(*a1 + 32);
  v9 = *(v3 + 48);
  v10 = *(v3 + 56);
  if (a2)
  {

    sub_213FDC9D0(v7, v6);

    sub_213FDC6D0(v9, v10);
    *(v3 + 32) = v5;
    *(v3 + 40) = v4;
    *(v3 + 48) = v7;
    *(v3 + 56) = v6;
    *(v3 + 64) = v8;
    v11 = v2[2];
    v12 = v2[3];

    sub_213FDC6D0(v11, v12);
  }

  else
  {

    sub_213FDC6D0(v9, v10);
    *(v3 + 32) = v5;
    *(v3 + 40) = v4;
    *(v3 + 48) = v7;
    *(v3 + 56) = v6;
    *(v3 + 64) = v8;
  }

  free(v2);
}

uint64_t sub_214030F64()
{
  if (*(v0 + 96) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + 88);

    return v1;
  }

  return result;
}

uint64_t sub_214030FE4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 96);
  if (v4 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a2 = *(a1 + 88);
    a2[1] = v4;
  }

  return result;
}

uint64_t sub_214031058(uint64_t *a1)
{
  sub_214031B48(*a1, a1[1], 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);
}

uint64_t sub_214031108(uint64_t a1, uint64_t a2)
{
  v10[0] = a1;
  v10[1] = a2;
  v5 = *(v2 + 72);
  v9 = *(v2 + 104);
  v8[0] = 0x6E776F6E6B6E753CLL;
  v8[1] = 0xE90000000000003ELL;
  v8[2] = 0xD00000000000001CLL;
  v8[3] = 0x800000021478A360;
  if (v5(v10, &v9, v8))
  {
    sub_213FDC6D0(*(v2 + 88), *(v2 + 96));

    *(v2 + 88) = a1;
    *(v2 + 96) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v7 = 0x6E776F6E6B6E753CLL;
    v7[1] = 0xE90000000000003ELL;
    v7[2] = 0xD00000000000001CLL;
    v7[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

void (*sub_21403124C(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(v1 + 88);
  *(v3 + 24) = v5;
  v6 = *(v1 + 96);
  v4[4] = v6;
  if (v6 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *v4 = v5;
    v4[1] = v6;

    return sub_214031324;
  }

  return result;
}

void sub_214031324(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = (*a1)[1];
  v3 = (*a1)[2];
  v5 = **a1;
  if ((a2 & 1) == 0)
  {
    v11 = **a1;
    v12 = v4;
    v8 = *(v3 + 72);
    v13 = *(v3 + 104);
    v14 = 0x6E776F6E6B6E753CLL;
    v15 = 0xE90000000000003ELL;
    v16 = 0xD00000000000001CLL;
    v17 = 0x800000021478A360;
    if (v8(&v11, &v13, &v14))
    {
      v9 = v2[2];
      sub_213FDC6D0(v2[3], v2[4]);

      *(v9 + 88) = v5;
      *(v9 + 96) = v4;
      goto LABEL_6;
    }

LABEL_9:
    sub_214031C4C();
    swift_allocError();
    *v10 = 0x6E776F6E6B6E753CLL;
    v10[1] = 0xE90000000000003ELL;
    v10[2] = 0xD00000000000001CLL;
    v10[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
    return;
  }

  v11 = **a1;
  v12 = v4;
  v6 = *(v3 + 72);
  v13 = *(v3 + 104);
  v14 = 0x6E776F6E6B6E753CLL;
  v15 = 0xE90000000000003ELL;
  v16 = 0xD00000000000001CLL;
  v17 = 0x800000021478A360;

  if ((v6(&v11, &v13, &v14) & 1) == 0)
  {
    goto LABEL_9;
  }

  v7 = v2[2];
  sub_213FDC6D0(v2[3], v2[4]);

  *(v7 + 88) = v5;
  *(v7 + 96) = v4;

LABEL_6:

  free(v2);
}

uint64_t sub_2140314F4@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 80);
  v3 = *(v1 + 88);
  v4 = *(v1 + 96);
  v5 = *(v1 + 104);
  *a1 = *(v1 + 72);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

uint64_t sub_21403154C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 80);
  v3 = *(a1 + 88);
  v4 = *(a1 + 96);
  v5 = *(a1 + 104);
  *a2 = *(a1 + 72);
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  *(a2 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

uint64_t sub_2140315A0(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = *(a1 + 32);
  v8 = *(a2 + 88);
  v9 = *(a2 + 96);

  sub_213FDC9D0(v5, v6);

  result = sub_213FDC6D0(v8, v9);
  *(a2 + 72) = v4;
  *(a2 + 80) = v3;
  *(a2 + 88) = v5;
  *(a2 + 96) = v6;
  *(a2 + 104) = v7;
  return result;
}

__n128 sub_214031628(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = *(v1 + 88);
  v7 = *(v1 + 96);

  sub_213FDC6D0(v6, v7);
  result = *a1;
  *(v1 + 72) = *a1;
  *(v1 + 88) = v3;
  *(v1 + 96) = v4;
  *(v1 + 104) = v5;
  return result;
}

void (*sub_214031690(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 80);
  v6 = *(v1 + 88);
  v7 = *(v1 + 96);
  v8 = *(v1 + 104);
  *v4 = *(v1 + 72);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_213FDC9D0(v6, v7);
  return sub_214031730;
}

void sub_214031730(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v5 = **a1;
  v4 = (*a1)[1];
  v7 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = *(*a1 + 32);
  v9 = *(v3 + 88);
  v10 = *(v3 + 96);
  if (a2)
  {

    sub_213FDC9D0(v7, v6);

    sub_213FDC6D0(v9, v10);
    *(v3 + 72) = v5;
    *(v3 + 80) = v4;
    *(v3 + 88) = v7;
    *(v3 + 96) = v6;
    *(v3 + 104) = v8;
    v11 = v2[2];
    v12 = v2[3];

    sub_213FDC6D0(v11, v12);
  }

  else
  {

    sub_213FDC6D0(v9, v10);
    *(v3 + 72) = v5;
    *(v3 + 80) = v4;
    *(v3 + 88) = v7;
    *(v3 + 96) = v6;
    *(v3 + 104) = v8;
  }

  free(v2);
}

uint64_t sub_214031810@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[14];
  v3 = v1[15];
  v4 = v1[16];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  return sub_214031CA0(v2, v3, v4);
}

__n128 sub_214031824(__n128 *a1)
{
  v4 = *a1;
  v2 = a1[1].n128_u64[0];
  sub_214031CE0(v1[14], v1[15], v1[16]);
  result = v4;
  *(v1 + 7) = v4;
  v1[16] = v2;
  return result;
}

unint64_t sub_21403188C@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F28, &unk_2146E9D30);
  v4 = swift_allocObject();
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_2146E9C00;
  *(v4 + 16) = sub_214032554;
  *(v4 + 24) = v5;
  *(v3 + 32) = v4;
  v6 = sub_2142DFFF8(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F30, &unk_2147319A0);
  v7 = swift_allocObject();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v7 + 16) = sub_21403255C;
  *(v7 + 24) = v8;
  *(inited + 32) = v7;
  return sub_2140428D0(inited, a1);
}

unint64_t sub_214031A38@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t x8_0@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v8 = swift_initStackObject();
  *(v8 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = 0;
  *(v8 + 32) = v9;
  v10 = sub_2142E0070(v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130C0, &unk_2146EAA60);
  v11 = swift_allocObject();
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  *(v11 + 16) = a3;
  *(v11 + 24) = v12;
  *(inited + 32) = v11;
  return sub_214042A28(inited, x8_0);
}

uint64_t sub_214031B48(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v20[0] = a1;
  v20[1] = a2;
  if (a3 == 2)
  {
    a3 = *(v7 + 32);
  }

  else
  {
    *(v7 + 32) = a3;
  }

  v15 = *v7;
  v19 = a3;
  v18[0] = a4;
  v18[1] = a5;
  v18[2] = a6;
  v18[3] = a7;
  result = v15(v20, &v19, v18);
  if (!v8)
  {
    if (result)
    {
      sub_213FDC6D0(*(v7 + 16), *(v7 + 24));
      *(v7 + 16) = a1;
      *(v7 + 24) = a2;
    }

    else
    {
      sub_214031C4C();
      swift_allocError();
      *v17 = a4;
      v17[1] = a5;
      v17[2] = a6;
      v17[3] = a7;
      swift_willThrow();
    }
  }

  return result;
}

unint64_t sub_214031C4C()
{
  result = qword_27C9130D0;
  if (!qword_27C9130D0)
  {
    result = swift_getWitnessTable(a1_16, &type metadata for ValidatorError, v0, v1);
    atomic_store(result, &qword_27C9130D0);
  }

  return result;
}

uint64_t sub_214031CA0(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_214031CE0(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_214031D20(uint64_t a1)
{
  *(a1 + 8) = sub_214031D50();
  result = sub_214031DA4();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_214031D50()
{
  result = qword_27C903F10;
  if (!qword_27C903F10)
  {
    result = swift_getWitnessTable(aYrm, &type metadata for TranslatedMessagePart, v0, v1);
    atomic_store(result, &qword_27C903F10);
  }

  return result;
}

unint64_t sub_214031DA4()
{
  result = qword_27C903F18;
  if (!qword_27C903F18)
  {
    result = swift_getWitnessTable(aYm_0, &type metadata for TranslatedMessagePart, v0, v1);
    atomic_store(result, &qword_27C903F18);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_SSSgSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t get_enum_tag_for_layout_string_9BlastDoor17_AttributedStringVSg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
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

uint64_t sub_214031E68(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 136))
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

uint64_t sub_214031EB0(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_214031F20(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v20[0] = a1;
  v20[1] = a2;
  if (a3 == 2)
  {
    a3 = *(v7 + 32);
  }

  else
  {
    *(v7 + 32) = a3;
  }

  v15 = *v7;
  v19 = a3;
  v18[0] = a4;
  v18[1] = a5;
  v18[2] = a6;
  v18[3] = a7;
  result = v15(v20, &v19, v18);
  if (!v8)
  {
    if (result)
    {

      *(v7 + 16) = a1;
      *(v7 + 24) = a2;
    }

    else
    {
      sub_214031C4C();
      swift_allocError();
      *v17 = a4;
      v17[1] = a5;
      v17[2] = a6;
      v17[3] = a7;
      swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_214032024(uint64_t a1, unint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v20 = a1;
  v21 = a2;
  if (a3 == 2)
  {
    a3 = *(v7 + 32);
  }

  else
  {
    *(v7 + 32) = a3;
  }

  v13 = *v7;
  v19 = a3;
  v18[0] = a4;
  v18[1] = a5;
  v18[2] = a6;
  v18[3] = a7;
  result = v13(&v20, &v19, v18);
  if (!v8)
  {
    if (result)
    {
      sub_213FDC6BC(*(v7 + 16), *(v7 + 24));
      v15 = v20;
      v16 = v21;
      *(v7 + 16) = v20;
      *(v7 + 24) = v16;
      return sub_21402D9F8(v15, v16);
    }

    else
    {
      sub_214031C4C();
      swift_allocError();
      *v17 = a4;
      v17[1] = a5;
      v17[2] = a6;
      v17[3] = a7;
      swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_214032118(uint64_t a1, unint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v20 = a1;
  v21 = a2;
  if (a3 == 2)
  {
    a3 = *(v7 + 32);
  }

  else
  {
    *(v7 + 32) = a3;
  }

  v13 = *v7;
  v19 = a3;
  v18[0] = a4;
  v18[1] = a5;
  v18[2] = a6;
  v18[3] = a7;
  result = v13(&v20, &v19, v18);
  if (!v8)
  {
    if (result)
    {
      sub_214032564(*(v7 + 16), *(v7 + 24));
      v15 = v20;
      v16 = v21;
      *(v7 + 16) = v20;
      *(v7 + 24) = v16;
      return sub_213FDCA18(v15, v16);
    }

    else
    {
      sub_214031C4C();
      swift_allocError();
      *v17 = a4;
      v17[1] = a5;
      v17[2] = a6;
      v17[3] = a7;
      swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_21403220C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v22 = a1;
  v23 = a2;
  v24 = a3;
  if (a4 == 2)
  {
    a4 = *(v8 + 40);
  }

  else
  {
    *(v8 + 40) = a4;
  }

  v14 = *v8;
  v21 = a4;
  v20[0] = a5;
  v20[1] = a6;
  v20[2] = a7;
  v20[3] = a8;
  result = v14(&v22, &v21, v20);
  if (!v9)
  {
    if (result)
    {
      sub_214032578(*(v8 + 16), *(v8 + 24), *(v8 + 32));
      v16 = v22;
      v17 = v23;
      v18 = v24;
      *(v8 + 16) = v22;
      *(v8 + 24) = v17;
      *(v8 + 32) = v18;
      return sub_214031CA0(v16, v17, v18);
    }

    else
    {
      sub_214031C4C();
      swift_allocError();
      *v19 = a5;
      v19[1] = a6;
      v19[2] = a7;
      v19[3] = a8;
      swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_21403233C(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v18 = a1;
  if (a2 == 2)
  {
    a2 = *(v6 + 24);
  }

  else
  {
    *(v6 + 24) = a2;
  }

  v13 = *v6;
  v17 = a2;
  v16[0] = a3;
  v16[1] = a4;
  v16[2] = a5;
  v16[3] = a6;
  result = v13(&v18, &v17, v16);
  if (!v7)
  {
    if (result)
    {

      *(v6 + 16) = a1;
    }

    else
    {
      sub_214031C4C();
      swift_allocError();
      *v15 = a3;
      v15[1] = a4;
      v15[2] = a5;
      v15[3] = a6;
      swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_214032438(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(void))
{
  v20 = a1;
  if (a2 == 2)
  {
    a2 = *(v7 + 24);
  }

  else
  {
    *(v7 + 24) = a2;
  }

  v15 = *v7;
  v19 = a2;
  v18[0] = a3;
  v18[1] = a4;
  v18[2] = a5;
  v18[3] = a6;
  result = v15(&v20, &v19, v18);
  if (!v8)
  {
    if (result)
    {
      a7(*(v7 + 16));
      *(v7 + 16) = a1;
    }

    else
    {
      sub_214031C4C();
      swift_allocError();
      *v17 = a3;
      v17[1] = a4;
      v17[2] = a5;
      v17[3] = a6;
      swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_214032564(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 11)
  {
    return sub_213FDC6BC(result, a2);
  }

  return result;
}

uint64_t sub_214032578(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result != 1)
  {
    return sub_214031CE0(result, a2, a3);
  }

  return result;
}

uint64_t sub_214032588(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_214032620(uint64_t a1)
{
  *(a1 + 8) = sub_2140326D4(&qword_27C903F48, aI_64);
  result = sub_2140326D4(&qword_27C903F50, byte_2146F7FE8);
  *(a1 + 16) = result;
  return result;
}

uint64_t type metadata accessor for MBDChip(uint64_t a1)
{
  result = qword_27C903F60;
  if (!qword_27C903F60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2140326D4(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    v5 = type metadata accessor for MBDChip(255);
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

void sub_214032740(uint64_t a1)
{
  sub_2140327BC(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_2140327BC(uint64_t a1)
{
  if (!qword_27C903F70)
  {
    type metadata accessor for MBDChipContent(255);
    v1 = sub_2146D9D38();
    if (!v2)
    {
      atomic_store(v1, &qword_27C903F70);
    }
  }
}

uint64_t sub_214032824()
{
  sub_2146DA958();
  MEMORY[0x216055860](0);
  return sub_2146DA9B8();
}

uint64_t sub_214032868(uint64_t a1)
{
  sub_2146DA958();
  MEMORY[0x216055860](0);
  return sub_2146DA9B8();
}

uint64_t sub_2140328C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000016 && 0x800000021478A3D0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_2146DA6A8();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_214032964(uint64_t a1)
{
  v2 = sub_214032B58();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2140329A0(uint64_t a1)
{
  v2 = sub_214032B58();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MediaMetadata.Context.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F78, &qword_2146E9D90);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214032B58();
  sub_2146DAA28();
  sub_2146DA338();
  return (*(v3 + 8))(v5, v2);
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_214032B58()
{
  result = qword_280B34698;
  if (!qword_280B34698)
  {
    result = swift_getWitnessTable(byte_2146EA678, &type metadata for MediaMetadata.Context.CodingKeys, v0, v1);
    atomic_store(result, &qword_280B34698);
  }

  return result;
}

uint64_t MediaMetadata.Context.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F80, &qword_2146E9D98);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214032B58();
  sub_2146DAA08();
  if (!v2)
  {
    v9 = sub_2146DA178();
    (*(v6 + 8))(v8, v5);
    *a2 = v9 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t __swift_destroy_boxed_opaque_existential_1(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_214032D68(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F78, &qword_2146E9D90);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214032B58();
  sub_2146DAA28();
  sub_2146DA338();
  return (*(v3 + 8))(v5, v2);
}

BlastDoor::MediaMetadata::LargeImageContextualInfo __swiftcall MediaMetadata.LargeImageContextualInfo.init(pixelWidth:pixelHeight:bufferByteSize:)(Swift::Int pixelWidth, Swift::Int pixelHeight, Swift::Int bufferByteSize)
{
  *v3 = pixelWidth;
  v3[1] = pixelHeight;
  v3[2] = bufferByteSize;
  result.bufferByteSize = bufferByteSize;
  result.pixelHeight = pixelHeight;
  result.pixelWidth = pixelWidth;
  return result;
}

Swift::String __swiftcall MediaMetadata.LargeImageContextualInfo.description()()
{
  sub_2146D9EF8();
  MEMORY[0x2160545D0](0xD00000000000002BLL, 0x800000021478A3A0);
  v0 = sub_2146DA428();
  MEMORY[0x2160545D0](v0);

  MEMORY[0x2160545D0](0x69576C6578697020, 0xED0000203A687464);
  v1 = sub_2146DA428();
  MEMORY[0x2160545D0](v1);

  MEMORY[0x2160545D0](0x65486C6578697020, 0xEE00203A74686769);
  v2 = sub_2146DA428();
  MEMORY[0x2160545D0](v2);

  MEMORY[0x2160545D0](41, 0xE100000000000000);
  v3 = 0;
  v4 = 0xE000000000000000;
  result._object = v4;
  result._countAndFlagsBits = v3;
  return result;
}

uint64_t sub_2140330A0()
{
  v1 = 0x6965486C65786970;
  if (*v0 != 1)
  {
    v1 = 0x7942726566667562;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6469576C65786970;
  }
}

uint64_t sub_214033114@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21403C684(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_21403313C(uint64_t a1)
{
  v2 = sub_214033364();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214033178(uint64_t a1)
{
  v2 = sub_214033364();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MediaMetadata.LargeImageContextualInfo.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F88, &qword_2146E9DA0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v10 - v6;
  v8 = *(v1 + 8);
  v10[0] = *(v1 + 16);
  v10[1] = v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214033364();
  sub_2146DAA28();
  v13 = 0;
  sub_2146DA368();
  if (v2)
  {
    return (*(v5 + 8))(v7, v4);
  }

  v12 = 1;
  sub_2146DA368();
  v11 = 2;
  sub_2146DA368();
  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_214033364()
{
  result = qword_280B34C08;
  if (!qword_280B34C08)
  {
    result = swift_getWitnessTable(byte_2146EA628, &type metadata for MediaMetadata.LargeImageContextualInfo.CodingKeys, v0, v1);
    atomic_store(result, &qword_280B34C08);
  }

  return result;
}

uint64_t MediaMetadata.LargeImageContextualInfo.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F90, &qword_2146E9DA8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214033364();
  sub_2146DAA08();
  if (!v2)
  {
    v17 = 0;
    v9 = sub_2146DA1A8();
    v16 = 1;
    v14 = sub_2146DA1A8();
    v15 = 2;
    v11 = sub_2146DA1A8();
    (*(v6 + 8))(v8, v5);
    v12 = v14;
    *a2 = v9;
    a2[1] = v12;
    a2[2] = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

__n128 MediaMetadata.largeImageContextualInfo.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[1].n128_u64[0];
  v3 = v1[1].n128_u8[8];
  result = *v1;
  *a1 = *v1;
  a1[1].n128_u64[0] = v2;
  a1[1].n128_u8[8] = v3;
  return result;
}

__n128 MediaMetadata.largeImageContextualInfo.setter(__n128 *a1)
{
  v2 = a1[1].n128_u64[0];
  v3 = a1[1].n128_u8[8];
  result = *a1;
  *v1 = *a1;
  v1[1].n128_u64[0] = v2;
  v1[1].n128_u8[8] = v3;
  return result;
}

uint64_t type metadata accessor for MediaMetadata(uint64_t a1)
{
  result = qword_280B34E38;
  if (!qword_280B34E38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t MediaMetadata.timezoneOffset.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for MediaMetadata(0);
  v6 = v2 + *(result + 24);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t MediaMetadata.subsecTimeOriginal.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for MediaMetadata(0);
  v6 = v2 + *(result + 28);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t MediaMetadata.rawOrientation.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for MediaMetadata(0);
  v6 = v2 + *(result + 32);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t MediaMetadata.rawPixelWidth.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for MediaMetadata(0);
  v6 = v2 + *(result + 36);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t MediaMetadata.rawPixelHeight.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for MediaMetadata(0);
  v6 = v2 + *(result + 40);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t MediaMetadata.lensModel.getter()
{
  v1 = *(v0 + *(type metadata accessor for MediaMetadata(0) + 44));

  return v1;
}

uint64_t MediaMetadata.lensModel.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for MediaMetadata(0) + 44));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t MediaMetadata.lensMake.getter()
{
  v1 = *(v0 + *(type metadata accessor for MediaMetadata(0) + 48));

  return v1;
}

uint64_t MediaMetadata.lensMake.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for MediaMetadata(0) + 48));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t MediaMetadata.profileName.getter()
{
  v1 = *(v0 + *(type metadata accessor for MediaMetadata(0) + 52));

  return v1;
}

uint64_t MediaMetadata.profileName.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for MediaMetadata(0) + 52));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t MediaMetadata.processingFlags.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for MediaMetadata(0);
  v6 = v2 + *(result + 56);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t MediaMetadata.isCustomRendered.setter(char a1)
{
  result = type metadata accessor for MediaMetadata(0);
  *(v1 + *(result + 60)) = a1;
  return result;
}

uint64_t MediaMetadata.apertureValue.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for MediaMetadata(0);
  v6 = v2 + *(result + 64);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t MediaMetadata.exposureBiasValue.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for MediaMetadata(0);
  v6 = v2 + *(result + 68);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t MediaMetadata.flash.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for MediaMetadata(0);
  v6 = v2 + *(result + 72);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t MediaMetadata.focalLength.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for MediaMetadata(0);
  v6 = v2 + *(result + 76);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t MediaMetadata.focalLenIn35mmFilm.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for MediaMetadata(0);
  v6 = v2 + *(result + 80);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t MediaMetadata.isoRatingValue.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for MediaMetadata(0);
  v6 = v2 + *(result + 84);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t MediaMetadata.meteringMode.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for MediaMetadata(0);
  v6 = v2 + *(result + 88);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t MediaMetadata.shutterSpeed.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for MediaMetadata(0);
  v6 = v2 + *(result + 92);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t MediaMetadata.model.getter()
{
  v1 = *(v0 + *(type metadata accessor for MediaMetadata(0) + 96));

  return v1;
}

uint64_t MediaMetadata.model.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for MediaMetadata(0) + 96));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t MediaMetadata.make.getter()
{
  v1 = *(v0 + *(type metadata accessor for MediaMetadata(0) + 100));

  return v1;
}

uint64_t MediaMetadata.make.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for MediaMetadata(0) + 100));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t MediaMetadata.whiteBalance.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for MediaMetadata(0);
  v6 = v2 + *(result + 104);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t MediaMetadata.lightSource.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for MediaMetadata(0);
  v6 = v2 + *(result + 108);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t MediaMetadata.ciffWhiteBalanceIndex.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for MediaMetadata(0);
  v6 = v2 + *(result + 112);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t MediaMetadata.videoDynamicRange.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for MediaMetadata(0);
  v6 = v2 + *(result + 116);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t MediaMetadata.hdrGain.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for MediaMetadata(0);
  v6 = v2 + *(result + 120);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t MediaMetadata.hasHDRGainMap.setter(char a1)
{
  result = type metadata accessor for MediaMetadata(0);
  *(v1 + *(result + 124)) = a1;
  return result;
}

uint64_t MediaMetadata.videoContainsCinematicData.setter(char a1)
{
  result = type metadata accessor for MediaMetadata(0);
  *(v1 + *(result + 128)) = a1;
  return result;
}

uint64_t MediaMetadata.videoComplementMediaGroupId.getter()
{
  v1 = *(v0 + *(type metadata accessor for MediaMetadata(0) + 132));

  return v1;
}

uint64_t MediaMetadata.videoComplementMediaGroupId.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for MediaMetadata(0) + 132));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t MediaMetadata.gifDelayTime.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for MediaMetadata(0);
  v6 = v2 + *(result + 136);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t MediaMetadata.variationIdentifier.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for MediaMetadata(0);
  v6 = v2 + *(result + 140);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t MediaMetadata.videoComplementDurationValue.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for MediaMetadata(0);
  v6 = v2 + *(result + 144);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t MediaMetadata.videoComplementDurationTimescale.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for MediaMetadata(0);
  v6 = v2 + *(result + 148);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t MediaMetadata.videoComplementImageDisplayValue.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for MediaMetadata(0);
  v6 = v2 + *(result + 152);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t MediaMetadata.videoComplementImageDisplayTimescale.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for MediaMetadata(0);
  v6 = v2 + *(result + 156);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t MediaMetadata.avDuration.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for MediaMetadata(0);
  v6 = v2 + *(result + 160);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t MediaMetadata.avFPS.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for MediaMetadata(0);
  v6 = v2 + *(result + 164);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t MediaMetadata.codecFourCharCode.getter()
{
  v1 = *(v0 + *(type metadata accessor for MediaMetadata(0) + 168));

  return v1;
}

uint64_t MediaMetadata.codecFourCharCode.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for MediaMetadata(0) + 168));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t MediaMetadata.captureMode.getter()
{
  v1 = *(v0 + *(type metadata accessor for MediaMetadata(0) + 172));

  return v1;
}

uint64_t MediaMetadata.captureMode.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for MediaMetadata(0) + 172));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t MediaMetadata.isVideoMontage.getter()
{
  v1 = *(v0 + *(type metadata accessor for MediaMetadata(0) + 176));

  return v1;
}

uint64_t MediaMetadata.isVideoMontage.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for MediaMetadata(0) + 176));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t MediaMetadata.isProRes.setter(char a1)
{
  result = type metadata accessor for MediaMetadata(0);
  *(v1 + *(result + 180)) = a1;
  return result;
}

uint64_t MediaMetadata.videoDurationValue.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for MediaMetadata(0);
  v6 = v2 + *(result + 184);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t MediaMetadata.videoDurationTimescale.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for MediaMetadata(0);
  v6 = v2 + *(result + 188);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t MediaMetadata.originatingAssetIdentifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for MediaMetadata(0) + 192));

  return v1;
}

uint64_t MediaMetadata.originatingAssetIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for MediaMetadata(0) + 192));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t MediaMetadata.longitude.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for MediaMetadata(0);
  v6 = v2 + *(result + 196);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t MediaMetadata.latitude.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for MediaMetadata(0);
  v6 = v2 + *(result + 200);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t MediaMetadata.altitude.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for MediaMetadata(0);
  v6 = v2 + *(result + 204);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t MediaMetadata.gpsSpeed.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for MediaMetadata(0);
  v6 = v2 + *(result + 208);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t MediaMetadata.gpsSpeedRef.getter()
{
  v1 = *(v0 + *(type metadata accessor for MediaMetadata(0) + 212));

  return v1;
}

uint64_t MediaMetadata.gpsSpeedRef.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for MediaMetadata(0) + 212));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t MediaMetadata.gpsHPositioningError.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for MediaMetadata(0);
  v6 = v2 + *(result + 220);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t MediaMetadata.imageDirection.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for MediaMetadata(0);
  v6 = v2 + *(result + 224);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t MediaMetadata.imageDirectionRef.getter()
{
  v1 = *(v0 + *(type metadata accessor for MediaMetadata(0) + 228));

  return v1;
}

uint64_t MediaMetadata.imageDirectionRef.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for MediaMetadata(0) + 228));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t MediaMetadata.uniformTypeIdentifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for MediaMetadata(0) + 232));

  return v1;
}

uint64_t MediaMetadata.uniformTypeIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for MediaMetadata(0) + 232));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t MediaMetadata.fileSize.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for MediaMetadata(0);
  v6 = v2 + *(result + 236);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t MediaMetadata.originalFileName.getter()
{
  v1 = *(v0 + *(type metadata accessor for MediaMetadata(0) + 240));

  return v1;
}

uint64_t MediaMetadata.originalFileName.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for MediaMetadata(0) + 240));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t MediaMetadata.isPhotoBooth.setter(char a1)
{
  result = type metadata accessor for MediaMetadata(0);
  *(v1 + *(result + 244)) = a1;
  return result;
}

uint64_t MediaMetadata.userComment.getter()
{
  v1 = *(v0 + *(type metadata accessor for MediaMetadata(0) + 252));

  return v1;
}

uint64_t MediaMetadata.userComment.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for MediaMetadata(0) + 252));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t MediaMetadata.isFrontFacingCamera.setter(char a1)
{
  result = type metadata accessor for MediaMetadata(0);
  *(v1 + *(result + 256)) = a1;
  return result;
}

uint64_t MediaMetadata.spatialOverCaptureIdentifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for MediaMetadata(0) + 260));

  return v1;
}

uint64_t MediaMetadata.spatialOverCaptureIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for MediaMetadata(0) + 260));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t MediaMetadata.semanticStyleSceneBias.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for MediaMetadata(0);
  v6 = v2 + *(result + 264);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t MediaMetadata.semanticStyleWarmthBias.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for MediaMetadata(0);
  v6 = v2 + *(result + 268);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t MediaMetadata.semanticStyleRenderingVersion.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for MediaMetadata(0);
  v6 = v2 + *(result + 272);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t MediaMetadata.semanticStylePreset.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for MediaMetadata(0);
  v6 = v2 + *(result + 276);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t MediaMetadata.hasSmartStyle.setter(char a1)
{
  result = type metadata accessor for MediaMetadata(0);
  *(v1 + *(result + 280)) = a1;
  return result;
}

uint64_t MediaMetadata.smartStyleToneBias.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for MediaMetadata(0);
  v6 = v2 + *(result + 284);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t MediaMetadata.smartStyleColorBias.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for MediaMetadata(0);
  v6 = v2 + *(result + 288);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t MediaMetadata.smartStyleIntensity.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for MediaMetadata(0);
  v6 = v2 + *(result + 292);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t MediaMetadata.smartStyleCast.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for MediaMetadata(0);
  v6 = v2 + *(result + 296);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t MediaMetadata.smartStyleRenderingVersion.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for MediaMetadata(0);
  v6 = v2 + *(result + 300);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t MediaMetadata.smartStyleIsReversible.setter(char a1)
{
  result = type metadata accessor for MediaMetadata(0);
  *(v1 + *(result + 304)) = a1;
  return result;
}

uint64_t MediaMetadata.smartStyleVideoCastValue.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for MediaMetadata(0);
  v6 = v2 + *(result + 308);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t MediaMetadata.isHDR.setter(char a1)
{
  result = type metadata accessor for MediaMetadata(0);
  *(v1 + *(result + 312)) = a1;
  return result;
}

uint64_t MediaMetadata.hasISOGainMap.setter(char a1)
{
  result = type metadata accessor for MediaMetadata(0);
  *(v1 + *(result + 316)) = a1;
  return result;
}

uint64_t MediaMetadata.isAnimatedImage.setter(char a1)
{
  result = type metadata accessor for MediaMetadata(0);
  *(v1 + *(result + 320)) = a1;
  return result;
}

uint64_t MediaMetadata.stillImageCaptureFlags.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for MediaMetadata(0);
  v6 = v2 + *(result + 324);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

BlastDoor::MediaMetadata::AppleMakerNoteCamera __swiftcall MediaMetadata.AppleMakerNoteCamera.init(defaultingRawValue:defaultValue:)(Swift::Int_optional defaultingRawValue, BlastDoor::MediaMetadata::AppleMakerNoteCamera defaultValue)
{
  v3 = *defaultValue;
  if (defaultingRawValue.is_nil)
  {
    value = *defaultValue;
  }

  else
  {
    value = defaultingRawValue.value;
  }

  if (value < 7)
  {
    v3 = value;
  }

  *v2 = v3;
  return defaultingRawValue.value;
}

BlastDoor::MediaMetadata::AppleMakerNoteCamera_optional __swiftcall MediaMetadata.AppleMakerNoteCamera.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 7;
  if (rawValue < 7)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t MediaMetadata.cameraUsedForCapture.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for MediaMetadata(0);
  *a1 = *(v1 + *(result + 328));
  return result;
}

uint64_t MediaMetadata.cameraUsedForCapture.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for MediaMetadata(0);
  *(v1 + *(result + 328)) = v2;
  return result;
}

uint64_t MediaMetadata.exifFlashFired.setter(char a1)
{
  result = type metadata accessor for MediaMetadata(0);
  *(v1 + *(result + 332)) = a1;
  return result;
}

uint64_t MediaMetadata.exifAuxFlashCompensation.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for MediaMetadata(0);
  v6 = v2 + *(result + 336);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t MediaMetadata.captureModeTimelapse.setter(char a1)
{
  result = type metadata accessor for MediaMetadata(0);
  *(v1 + *(result + 340)) = a1;
  return result;
}

uint64_t MediaMetadata.hasSpatialAudio.setter(char a1)
{
  result = type metadata accessor for MediaMetadata(0);
  *(v1 + *(result + 344)) = a1;
  return result;
}

uint64_t MediaMetadata.isAlchemist.setter(char a1)
{
  result = type metadata accessor for MediaMetadata(0);
  *(v1 + *(result + 348)) = a1;
  return result;
}

uint64_t MediaMetadata.isThreeImageStereoHEIC.setter(char a1)
{
  result = type metadata accessor for MediaMetadata(0);
  *(v1 + *(result + 352)) = a1;
  return result;
}

uint64_t MediaMetadata.generativeAIImageType.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for MediaMetadata(0);
  v6 = v2 + *(result + 356);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t MediaMetadata.IPTCCredit.getter()
{
  v1 = *(v0 + *(type metadata accessor for MediaMetadata(0) + 360));

  return v1;
}

uint64_t MediaMetadata.IPTCCredit.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for MediaMetadata(0) + 360));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

__n128 MediaMetadata.init(largeImageContextualInfo:)@<Q0>(__n128 *a1@<X0>, uint64_t a2@<X8>)
{
  v78 = *a1;
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u8[8];
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 1;
  v5 = type metadata accessor for MediaMetadata(0);
  v6 = v5[5];
  v7 = sub_2146D8B08();
  v8 = *(*(v7 - 8) + 56);
  v8(a2 + v6, 1, 1, v7);
  v9 = a2 + v5[6];
  *v9 = 0;
  *(v9 + 8) = 1;
  v10 = a2 + v5[7];
  *v10 = 0;
  *(v10 + 8) = 1;
  v11 = a2 + v5[8];
  *v11 = 0;
  *(v11 + 8) = 1;
  v12 = a2 + v5[9];
  *v12 = 0;
  *(v12 + 8) = 1;
  v13 = a2 + v5[10];
  *v13 = 0;
  *(v13 + 8) = 1;
  v14 = (a2 + v5[11]);
  *v14 = 0;
  v14[1] = 0;
  v15 = (a2 + v5[12]);
  *v15 = 0;
  v15[1] = 0;
  v16 = (a2 + v5[13]);
  *v16 = 0;
  v16[1] = 0;
  v17 = a2 + v5[14];
  *v17 = 0;
  *(v17 + 8) = 1;
  *(a2 + v5[15]) = 2;
  v18 = a2 + v5[16];
  *v18 = 0;
  *(v18 + 8) = 1;
  v19 = a2 + v5[17];
  *v19 = 0;
  *(v19 + 8) = 1;
  v20 = a2 + v5[18];
  *v20 = 0;
  *(v20 + 8) = 1;
  v21 = a2 + v5[19];
  *v21 = 0;
  *(v21 + 8) = 1;
  v22 = a2 + v5[20];
  *v22 = 0;
  *(v22 + 8) = 1;
  v23 = a2 + v5[21];
  *v23 = 0;
  *(v23 + 8) = 1;
  v24 = a2 + v5[22];
  *v24 = 0;
  *(v24 + 8) = 1;
  v25 = a2 + v5[23];
  *v25 = 0;
  *(v25 + 8) = 1;
  v26 = (a2 + v5[24]);
  *v26 = 0;
  v26[1] = 0;
  v27 = (a2 + v5[25]);
  *v27 = 0;
  v27[1] = 0;
  v28 = a2 + v5[26];
  *v28 = 0;
  *(v28 + 8) = 1;
  v29 = a2 + v5[27];
  *v29 = 0;
  *(v29 + 8) = 1;
  v30 = a2 + v5[28];
  *v30 = 0;
  *(v30 + 8) = 1;
  v31 = a2 + v5[29];
  *v31 = 0;
  *(v31 + 8) = 1;
  v32 = a2 + v5[30];
  *v32 = 0;
  *(v32 + 8) = 1;
  *(a2 + v5[31]) = 2;
  *(a2 + v5[32]) = 2;
  v33 = (a2 + v5[33]);
  *v33 = 0;
  v33[1] = 0;
  v34 = a2 + v5[34];
  *v34 = 0;
  *(v34 + 8) = 1;
  v35 = a2 + v5[35];
  *v35 = 0;
  *(v35 + 8) = 1;
  v36 = a2 + v5[36];
  *v36 = 0;
  *(v36 + 8) = 1;
  v37 = a2 + v5[37];
  *v37 = 0;
  *(v37 + 8) = 1;
  v38 = a2 + v5[38];
  *v38 = 0;
  *(v38 + 8) = 1;
  v39 = a2 + v5[39];
  *v39 = 0;
  *(v39 + 8) = 1;
  v40 = a2 + v5[40];
  *v40 = 0;
  *(v40 + 8) = 1;
  v41 = a2 + v5[41];
  *v41 = 0;
  *(v41 + 8) = 1;
  v42 = (a2 + v5[42]);
  *v42 = 0;
  v42[1] = 0;
  v43 = (a2 + v5[43]);
  *v43 = 0;
  v43[1] = 0;
  v44 = (a2 + v5[44]);
  *v44 = 0;
  v44[1] = 0;
  *(a2 + v5[45]) = 2;
  v45 = a2 + v5[46];
  *v45 = 0;
  *(v45 + 8) = 1;
  v46 = a2 + v5[47];
  *v46 = 0;
  *(v46 + 8) = 1;
  v47 = (a2 + v5[48]);
  *v47 = 0;
  v47[1] = 0;
  v48 = a2 + v5[49];
  *v48 = 0;
  *(v48 + 8) = 1;
  v49 = a2 + v5[50];
  *v49 = 0;
  *(v49 + 8) = 1;
  v50 = a2 + v5[51];
  *v50 = 0;
  *(v50 + 8) = 1;
  v51 = a2 + v5[52];
  *v51 = 0;
  *(v51 + 8) = 1;
  v52 = (a2 + v5[53]);
  *v52 = 0;
  v52[1] = 0;
  v8(a2 + v5[54], 1, 1, v7);
  v53 = a2 + v5[55];
  *v53 = 0;
  *(v53 + 8) = 1;
  v54 = a2 + v5[56];
  *v54 = 0;
  *(v54 + 8) = 1;
  v55 = (a2 + v5[57]);
  *v55 = 0;
  v55[1] = 0;
  v56 = (a2 + v5[58]);
  *v56 = 0;
  v56[1] = 0;
  v57 = a2 + v5[59];
  *v57 = 0;
  *(v57 + 8) = 1;
  v58 = (a2 + v5[60]);
  *v58 = 0;
  v58[1] = 0;
  *(a2 + v5[61]) = 2;
  v59 = v5[62];
  v60 = sub_2146D8B88();
  (*(*(v60 - 8) + 56))(a2 + v59, 1, 1, v60);
  v61 = (a2 + v5[63]);
  *v61 = 0;
  v61[1] = 0;
  *(a2 + v5[64]) = 2;
  v62 = (a2 + v5[65]);
  *v62 = 0;
  v62[1] = 0;
  v63 = a2 + v5[66];
  *v63 = 0;
  *(v63 + 8) = 1;
  v64 = a2 + v5[67];
  *v64 = 0;
  *(v64 + 8) = 1;
  v65 = a2 + v5[68];
  *v65 = 0;
  *(v65 + 8) = 1;
  v66 = a2 + v5[69];
  *v66 = 0;
  *(v66 + 8) = 1;
  *(a2 + v5[70]) = 2;
  v67 = a2 + v5[71];
  *v67 = 0;
  *(v67 + 8) = 1;
  v68 = a2 + v5[72];
  *v68 = 0;
  *(v68 + 8) = 1;
  v69 = a2 + v5[73];
  *v69 = 0;
  *(v69 + 8) = 1;
  v70 = a2 + v5[74];
  *v70 = 0;
  *(v70 + 8) = 1;
  v71 = a2 + v5[75];
  *v71 = 0;
  *(v71 + 8) = 1;
  *(a2 + v5[76]) = 2;
  v72 = a2 + v5[77];
  *v72 = 0;
  *(v72 + 8) = 1;
  *(a2 + v5[78]) = 2;
  *(a2 + v5[79]) = 2;
  *(a2 + v5[80]) = 2;
  v73 = a2 + v5[81];
  *v73 = 0;
  *(v73 + 8) = 1;
  *(a2 + v5[82]) = 7;
  *(a2 + v5[83]) = 2;
  v74 = a2 + v5[84];
  *v74 = 0;
  *(v74 + 8) = 1;
  *(a2 + v5[85]) = 2;
  *(a2 + v5[86]) = 2;
  *(a2 + v5[87]) = 2;
  *(a2 + v5[88]) = 2;
  v75 = a2 + v5[89];
  *v75 = 0;
  *(v75 + 8) = 1;
  v76 = (a2 + v5[90]);
  *v76 = 0;
  v76[1] = 0;
  result = v78;
  *a2 = v78;
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  return result;
}

uint64_t sub_214037BA4(char a1)
{
  result = 0x7461446567616D69;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0x656E6F7A656D6974;
      break;
    case 3:
    case 16:
    case 42:
    case 67:
      result = 0xD000000000000012;
      break;
    case 4:
      result = 0x6E6569724F776172;
      break;
    case 5:
    case 6:
      result = 0x6C65786950776172;
      break;
    case 7:
      result = 0x65646F4D736E656CLL;
      break;
    case 8:
      result = 0x656B614D736E656CLL;
      break;
    case 9:
      result = 0x4E656C69666F7270;
      break;
    case 10:
      result = 0x69737365636F7270;
      break;
    case 11:
    case 56:
      result = 0xD000000000000010;
      break;
    case 12:
      result = 0x6572757472657061;
      break;
    case 13:
    case 25:
    case 38:
    case 53:
      result = 0xD000000000000011;
      break;
    case 14:
      result = 0x6873616C66;
      break;
    case 15:
      result = 0x6E654C6C61636F66;
      break;
    case 17:
      result = 0x6E697461526F7369;
      break;
    case 18:
      result = 0x676E69726574656DLL;
      break;
    case 19:
      result = 0x5372657474756873;
      break;
    case 20:
      result = 0x6C65646F6DLL;
      break;
    case 21:
      result = 1701536109;
      break;
    case 22:
      result = 0x6C61426574696877;
      break;
    case 23:
      result = 0x756F53746867696CLL;
      break;
    case 24:
    case 54:
    case 85:
      result = 0xD000000000000015;
      break;
    case 26:
      result = 0x6E696147726468;
      break;
    case 27:
      v3 = 0x524448736168;
      goto LABEL_14;
    case 28:
    case 44:
    case 71:
      result = 0xD00000000000001ALL;
      break;
    case 29:
      result = 0xD00000000000001BLL;
      break;
    case 30:
      result = 0x79616C6544666967;
      break;
    case 31:
      result = 0xD000000000000013;
      break;
    case 32:
    case 61:
      result = 0xD00000000000001CLL;
      break;
    case 33:
    case 34:
      result = 0xD000000000000020;
      break;
    case 35:
      result = 0xD000000000000024;
      break;
    case 36:
      result = 0x6974617275447661;
      break;
    case 37:
      result = 0x5350467661;
      break;
    case 39:
      result = 0x4D65727574706163;
      break;
    case 40:
      result = 0x4D6F656469567369;
      break;
    case 41:
      result = 0x7365526F72507369;
      break;
    case 43:
    case 62:
    case 72:
    case 77:
    case 84:
      result = 0xD000000000000016;
      break;
    case 45:
      result = 0x64757469676E6F6CLL;
      break;
    case 46:
      result = 0x656475746974616CLL;
      break;
    case 47:
      result = 0x6564757469746C61;
      break;
    case 48:
    case 49:
      result = 0x6465657053737067;
      break;
    case 50:
      result = 0x73656D6954737067;
      break;
    case 51:
    case 78:
    case 81:
      result = 0xD000000000000014;
      break;
    case 52:
      result = 0x7269446567616D69;
      break;
    case 55:
      result = 0x657A6953656C6966;
      break;
    case 57:
      result = 0x426F746F68507369;
      break;
    case 58:
      result = 0x6975557473727562;
      break;
    case 59:
      result = 0x6D6D6F4372657375;
      break;
    case 60:
      result = 0xD000000000000013;
      break;
    case 63:
      result = 0xD000000000000017;
      break;
    case 64:
      result = 0xD00000000000001DLL;
      break;
    case 65:
      result = 0xD000000000000013;
      break;
    case 66:
      result = 0x7472616D53736168;
      break;
    case 68:
      result = 0xD000000000000013;
      break;
    case 69:
      result = 0xD000000000000013;
      break;
    case 70:
      result = 0x7974537472616D73;
      break;
    case 74:
      result = 0x5244487369;
      break;
    case 75:
      v3 = 0x4F5349736168;
LABEL_14:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x6147000000000000;
      break;
    case 76:
      result = 0x74616D696E417369;
      break;
    case 79:
      result = 0x73616C4666697865;
      break;
    case 82:
      result = 0x6974617053736168;
      break;
    case 83:
      result = 0x6D6568636C417369;
      break;
    case 86:
      result = 0x6465724343545049;
      break;
    default:
      result = 0xD000000000000018;
      break;
  }

  return result;
}

uint64_t sub_214038454()
{
  v1 = *v0;
  sub_2146DA958();
  MEMORY[0x216055860](v1);
  return sub_2146DA9B8();
}

uint64_t sub_21403849C(uint64_t a1)
{
  v2 = *v1;
  sub_2146DA958();
  MEMORY[0x216055860](v2);
  return sub_2146DA9B8();
}

uint64_t sub_2140384E8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21403C7B0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_21403851C(uint64_t a1)
{
  v2 = sub_214039858();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214038558(uint64_t a1)
{
  v2 = sub_214039858();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MediaMetadata.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F98, &qword_2146E9DC0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214039858();
  sub_2146DAA28();
  v9 = *(v3 + 2);
  v10 = *(v3 + 24);
  v13 = *v3;
  v14 = v9;
  v15 = v10;
  v16 = 0;
  sub_2140398AC();
  sub_2146DA308();
  if (!v2)
  {
    v11 = type metadata accessor for MediaMetadata(0);
    LOBYTE(v13) = 1;
    sub_2146D8B08();
    sub_21403BAD8(&qword_280B34C68, MEMORY[0x277CC9578], MEMORY[0x277CC9580]);
    sub_2146DA308();
    LOBYTE(v13) = 2;
    sub_2146DA2E8();
    LOBYTE(v13) = 3;
    sub_2146DA2D8();
    LOBYTE(v13) = 4;
    sub_2146DA2E8();
    LOBYTE(v13) = 5;
    sub_2146DA2F8();
    LOBYTE(v13) = 6;
    sub_2146DA2F8();
    LOBYTE(v13) = 7;
    sub_2146DA2B8();
    LOBYTE(v13) = 8;
    sub_2146DA2B8();
    LOBYTE(v13) = 9;
    sub_2146DA2B8();
    LOBYTE(v13) = 10;
    sub_2146DA2F8();
    LOBYTE(v13) = 11;
    sub_2146DA2C8();
    LOBYTE(v13) = 12;
    sub_2146DA2D8();
    LOBYTE(v13) = 13;
    sub_2146DA2E8();
    LOBYTE(v13) = 14;
    sub_2146DA2E8();
    LOBYTE(v13) = 15;
    sub_2146DA2D8();
    LOBYTE(v13) = 16;
    sub_2146DA2D8();
    LOBYTE(v13) = 17;
    sub_2146DA2E8();
    LOBYTE(v13) = 18;
    sub_2146DA2E8();
    LOBYTE(v13) = 19;
    sub_2146DA2D8();
    LOBYTE(v13) = 20;
    sub_2146DA2B8();
    LOBYTE(v13) = 21;
    sub_2146DA2B8();
    LOBYTE(v13) = 22;
    sub_2146DA2E8();
    LOBYTE(v13) = 23;
    sub_2146DA2E8();
    LOBYTE(v13) = 24;
    sub_2146DA2E8();
    LOBYTE(v13) = 25;
    sub_2146DA2E8();
    LOBYTE(v13) = 26;
    sub_2146DA2D8();
    LOBYTE(v13) = 27;
    sub_2146DA2C8();
    LOBYTE(v13) = 28;
    sub_2146DA2C8();
    LOBYTE(v13) = 29;
    sub_2146DA2B8();
    LOBYTE(v13) = 30;
    sub_2146DA2D8();
    LOBYTE(v13) = 31;
    sub_2146DA2F8();
    LOBYTE(v13) = 32;
    sub_2146DA2D8();
    LOBYTE(v13) = 33;
    sub_2146DA2D8();
    LOBYTE(v13) = 34;
    sub_2146DA2D8();
    LOBYTE(v13) = 35;
    sub_2146DA2D8();
    LOBYTE(v13) = 36;
    sub_2146DA2D8();
    LOBYTE(v13) = 37;
    sub_2146DA2D8();
    LOBYTE(v13) = 38;
    sub_2146DA2B8();
    LOBYTE(v13) = 39;
    sub_2146DA2B8();
    LOBYTE(v13) = 40;
    sub_2146DA2B8();
    LOBYTE(v13) = 41;
    sub_2146DA2C8();
    LOBYTE(v13) = 42;
    sub_2146DA2D8();
    LOBYTE(v13) = 43;
    sub_2146DA2D8();
    LOBYTE(v13) = 44;
    sub_2146DA2B8();
    LOBYTE(v13) = 45;
    sub_2146DA2D8();
    LOBYTE(v13) = 46;
    sub_2146DA2D8();
    LOBYTE(v13) = 47;
    sub_2146DA2D8();
    LOBYTE(v13) = 48;
    sub_2146DA2D8();
    LOBYTE(v13) = 49;
    sub_2146DA2B8();
    LOBYTE(v13) = 50;
    sub_2146DA308();
    LOBYTE(v13) = 51;
    sub_2146DA2D8();
    LOBYTE(v13) = 52;
    sub_2146DA2D8();
    LOBYTE(v13) = 53;
    sub_2146DA2B8();
    LOBYTE(v13) = 54;
    sub_2146DA2B8();
    LOBYTE(v13) = 55;
    sub_2146DA2F8();
    LOBYTE(v13) = 56;
    sub_2146DA2B8();
    LOBYTE(v13) = 57;
    sub_2146DA2C8();
    LOBYTE(v13) = 58;
    sub_2146D8B88();
    sub_21403BAD8(&qword_280B34D20, MEMORY[0x277CC95F0], MEMORY[0x277CC95F8]);
    sub_2146DA308();
    LOBYTE(v13) = 59;
    sub_2146DA2B8();
    LOBYTE(v13) = 60;
    sub_2146DA2C8();
    LOBYTE(v13) = 61;
    sub_2146DA2B8();
    LOBYTE(v13) = 62;
    sub_2146DA2D8();
    LOBYTE(v13) = 63;
    sub_2146DA2D8();
    LOBYTE(v13) = 64;
    sub_2146DA2E8();
    LOBYTE(v13) = 65;
    sub_2146DA2E8();
    LOBYTE(v13) = 66;
    sub_2146DA2C8();
    LOBYTE(v13) = 67;
    sub_2146DA2D8();
    LOBYTE(v13) = 68;
    sub_2146DA2D8();
    LOBYTE(v13) = 69;
    sub_2146DA2D8();
    LOBYTE(v13) = 70;
    sub_2146DA2D8();
    LOBYTE(v13) = 71;
    sub_2146DA2E8();
    LOBYTE(v13) = 72;
    sub_2146DA2C8();
    LOBYTE(v13) = 73;
    sub_2146DA2D8();
    LOBYTE(v13) = 74;
    sub_2146DA2C8();
    LOBYTE(v13) = 75;
    sub_2146DA2C8();
    LOBYTE(v13) = 76;
    sub_2146DA2C8();
    LOBYTE(v13) = 77;
    sub_2146DA2F8();
    LOBYTE(v13) = *(v3 + *(v11 + 328));
    v16 = 78;
    sub_214039900();
    sub_2146DA308();
    LOBYTE(v13) = 79;
    sub_2146DA2C8();
    LOBYTE(v13) = 80;
    sub_2146DA2D8();
    LOBYTE(v13) = 81;
    sub_2146DA2C8();
    LOBYTE(v13) = 82;
    sub_2146DA2C8();
    LOBYTE(v13) = 83;
    sub_2146DA2C8();
    LOBYTE(v13) = 84;
    sub_2146DA2C8();
    LOBYTE(v13) = 85;
    sub_2146DA2D8();
    LOBYTE(v13) = 86;
    sub_2146DA2B8();
  }

  return (*(v6 + 8))(v8, v5);
}