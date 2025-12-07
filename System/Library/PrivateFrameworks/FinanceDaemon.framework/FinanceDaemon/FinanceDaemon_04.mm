uint64_t sub_226B1ED68(uint64_t a1)
{
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A67B0, &qword_226D72480);
  MEMORY[0x28223BE20](v88);
  v3 = &v73 - v2;
  v87 = sub_226D6B9BC();
  v4 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v75 = &v73 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v74 = &v73 - v7;
  MEMORY[0x28223BE20](v8);
  v73 = &v73 - v9;
  v10 = type metadata accessor for BankConnectWebServiceTaskExclusivityIdentifier(0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v81 = (&v73 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v13);
  v80 = (&v73 - v14);
  MEMORY[0x28223BE20](v15);
  v17 = &v73 - v16;
  MEMORY[0x28223BE20](v18);
  v79 = &v73 - v19;
  MEMORY[0x28223BE20](v20);
  v22 = &v73 - v21;
  MEMORY[0x28223BE20](v23);
  v83 = &v73 - v24;
  MEMORY[0x28223BE20](v25);
  v92 = &v73 - v26;
  v27 = *(a1 + 16);
  if (v27)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A69A0, &qword_226D72488);
    v28 = sub_226D6EECC();
    v29 = 0;
    v90 = v28 + 56;
    v78 = a1 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v91 = *(v11 + 72);
    v82 = (v4 + 32);
    v86 = (v4 + 8);
    v30 = v28;
    v84 = v17;
    v77 = v27;
    v89 = v28;
    while (1)
    {
      v31 = v92;
      sub_226B1FE34(v78 + v91 * v29, v92, type metadata accessor for BankConnectWebServiceTaskExclusivityIdentifier);
      sub_226D6F2FC();
      sub_226B1FE34(v31, v83, type metadata accessor for BankConnectWebServiceTaskExclusivityIdentifier);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v85 = v29;
      if (EnumCaseMultiPayload > 4)
      {
        break;
      }

      if (EnumCaseMultiPayload > 1)
      {
        if (EnumCaseMultiPayload == 2)
        {
          v33 = 2;
          goto LABEL_20;
        }

        if (EnumCaseMultiPayload == 3)
        {
          v33 = 3;
LABEL_20:
          MEMORY[0x22AA8B3B0](v33);
          sub_226D6E42C();
          v30 = v89;

          goto LABEL_28;
        }

        v34 = 4;
        goto LABEL_27;
      }

      v35 = v73;
      v36 = v87;
      if (EnumCaseMultiPayload)
      {
        (*v82)(v73, v83, v87);
        v37 = 1;
      }

      else
      {
        (*v82)(v73, v83, v87);
        v37 = 0;
      }

      MEMORY[0x22AA8B3B0](v37);
      sub_226B2042C(&qword_27D7A6790, MEMORY[0x277CC8058], MEMORY[0x277CC8068]);
      sub_226D6E30C();
      (*v86)(v35, v36);
LABEL_28:
      v38 = sub_226D6F35C();
      v39 = ~(-1 << *(v30 + 32));
      v40 = v38 & v39;
      v41 = (v38 & v39) >> 6;
      v42 = *(v90 + 8 * v41);
      v43 = 1 << (v38 & v39);
      if ((v43 & v42) == 0)
      {
LABEL_29:
        *(v90 + 8 * v41) = v42 | v43;
        result = sub_226B1FEFC(v92, *(v30 + 48) + v40 * v91, type metadata accessor for BankConnectWebServiceTaskExclusivityIdentifier);
        v45 = *(v30 + 16);
        v46 = __OFADD__(v45, 1);
        v47 = v45 + 1;
        if (!v46)
        {
          *(v30 + 16) = v47;
          goto LABEL_5;
        }

        __break(1u);
        return result;
      }

      while (1)
      {
        sub_226B1FE34(*(v30 + 48) + v40 * v91, v22, type metadata accessor for BankConnectWebServiceTaskExclusivityIdentifier);
        v48 = &v3[*(v88 + 48)];
        sub_226B1FE34(v22, v3, type metadata accessor for BankConnectWebServiceTaskExclusivityIdentifier);
        sub_226B1FE34(v92, v48, type metadata accessor for BankConnectWebServiceTaskExclusivityIdentifier);
        v49 = swift_getEnumCaseMultiPayload();
        if (v49 > 4)
        {
          if (v49 <= 6)
          {
            if (v49 == 5)
            {
              sub_226B1FE9C(v22, type metadata accessor for BankConnectWebServiceTaskExclusivityIdentifier);
              if (swift_getEnumCaseMultiPayload() == 5)
              {
                goto LABEL_4;
              }
            }

            else
            {
              sub_226B1FE9C(v22, type metadata accessor for BankConnectWebServiceTaskExclusivityIdentifier);
              if (swift_getEnumCaseMultiPayload() == 6)
              {
                goto LABEL_4;
              }
            }
          }

          else if (v49 == 7)
          {
            sub_226B1FE9C(v22, type metadata accessor for BankConnectWebServiceTaskExclusivityIdentifier);
            if (swift_getEnumCaseMultiPayload() == 7)
            {
              goto LABEL_4;
            }
          }

          else if (v49 == 8)
          {
            sub_226B1FE9C(v22, type metadata accessor for BankConnectWebServiceTaskExclusivityIdentifier);
            if (swift_getEnumCaseMultiPayload() == 8)
            {
              goto LABEL_4;
            }
          }

          else
          {
            sub_226B1FE9C(v22, type metadata accessor for BankConnectWebServiceTaskExclusivityIdentifier);
            if (swift_getEnumCaseMultiPayload() == 9)
            {
              goto LABEL_4;
            }
          }

          goto LABEL_32;
        }

        if (v49 > 1)
        {
          break;
        }

        if (v49)
        {
          sub_226B1FE34(v3, v17, type metadata accessor for BankConnectWebServiceTaskExclusivityIdentifier);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v63 = v75;
            v64 = v87;
            (*v82)(v75, v48, v87);
            v65 = MEMORY[0x22AA87A30](v84, v63);
            v66 = *v86;
            v67 = v63;
            v17 = v84;
            (*v86)(v67, v64);
            sub_226B1FE9C(v22, type metadata accessor for BankConnectWebServiceTaskExclusivityIdentifier);
            v66(v17, v64);
            if (v65)
            {
              goto LABEL_4;
            }

            goto LABEL_73;
          }

          sub_226B1FE9C(v22, type metadata accessor for BankConnectWebServiceTaskExclusivityIdentifier);
          (*v86)(v17, v87);
        }

        else
        {
          v55 = v79;
          sub_226B1FE34(v3, v79, type metadata accessor for BankConnectWebServiceTaskExclusivityIdentifier);
          if (!swift_getEnumCaseMultiPayload())
          {
            v68 = v74;
            v69 = v55;
            v70 = v87;
            (*v82)(v74, v48, v87);
            v76 = MEMORY[0x22AA87A30](v55, v68);
            v71 = *v86;
            v72 = v68;
            v17 = v84;
            (*v86)(v72, v70);
            sub_226B1FE9C(v22, type metadata accessor for BankConnectWebServiceTaskExclusivityIdentifier);
            v71(v69, v70);
            if (v76)
            {
              goto LABEL_4;
            }

            goto LABEL_73;
          }

          sub_226B1FE9C(v22, type metadata accessor for BankConnectWebServiceTaskExclusivityIdentifier);
          (*v86)(v55, v87);
        }

LABEL_32:
        sub_226AC47B0(v3, &qword_27D7A67B0, &qword_226D72480);
LABEL_33:
        v40 = (v40 + 1) & v39;
        v41 = v40 >> 6;
        v30 = v89;
        v42 = *(v90 + 8 * (v40 >> 6));
        v43 = 1 << v40;
        if ((v42 & (1 << v40)) == 0)
        {
          goto LABEL_29;
        }
      }

      if (v49 != 2)
      {
        if (v49 != 3)
        {
          sub_226B1FE9C(v22, type metadata accessor for BankConnectWebServiceTaskExclusivityIdentifier);
          if (swift_getEnumCaseMultiPayload() == 4)
          {
            goto LABEL_4;
          }

          goto LABEL_32;
        }

        v50 = v81;
        sub_226B1FE34(v3, v81, type metadata accessor for BankConnectWebServiceTaskExclusivityIdentifier);
        v52 = *v50;
        v51 = v50[1];
        if (swift_getEnumCaseMultiPayload() == 3)
        {
          v53 = *v48;
          v54 = *(v48 + 1);
          if (v52 == v53 && v51 == v54)
          {
            goto LABEL_3;
          }

          goto LABEL_58;
        }

LABEL_31:
        sub_226B1FE9C(v22, type metadata accessor for BankConnectWebServiceTaskExclusivityIdentifier);

        goto LABEL_32;
      }

      v56 = v80;
      sub_226B1FE34(v3, v80, type metadata accessor for BankConnectWebServiceTaskExclusivityIdentifier);
      v58 = *v56;
      v57 = v56[1];
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        goto LABEL_31;
      }

      v59 = *v48;
      v60 = *(v48 + 1);
      if (v58 != v59 || v57 != v60)
      {
LABEL_58:
        v62 = sub_226D6F21C();

        sub_226B1FE9C(v22, type metadata accessor for BankConnectWebServiceTaskExclusivityIdentifier);
        if (v62)
        {
          goto LABEL_4;
        }

LABEL_73:
        sub_226B1FE9C(v3, type metadata accessor for BankConnectWebServiceTaskExclusivityIdentifier);
        goto LABEL_33;
      }

LABEL_3:

      sub_226B1FE9C(v22, type metadata accessor for BankConnectWebServiceTaskExclusivityIdentifier);
LABEL_4:
      sub_226B1FE9C(v3, type metadata accessor for BankConnectWebServiceTaskExclusivityIdentifier);
      sub_226B1FE9C(v92, type metadata accessor for BankConnectWebServiceTaskExclusivityIdentifier);
      v30 = v89;
LABEL_5:
      v29 = v85 + 1;
      if (v85 + 1 == v77)
      {
        return v30;
      }
    }

    if (EnumCaseMultiPayload <= 6)
    {
      if (EnumCaseMultiPayload == 5)
      {
        v34 = 5;
      }

      else
      {
        v34 = 6;
      }
    }

    else if (EnumCaseMultiPayload == 7)
    {
      v34 = 7;
    }

    else if (EnumCaseMultiPayload == 8)
    {
      v34 = 8;
    }

    else
    {
      v34 = 9;
    }

LABEL_27:
    MEMORY[0x22AA8B3B0](v34);
    goto LABEL_28;
  }

  return MEMORY[0x277D84FA0];
}

void sub_226B1F8F4(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (sub_226D6EDFC())
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A69C8, &unk_226D7E520);
      v3 = sub_226D6EECC();
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = sub_226D6EDFC();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x277D84FA0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = v3 + 56;
  v37 = v5;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    v35 = v1;
    while (1)
    {
      v8 = MEMORY[0x22AA8AFD0](v7, v1);
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = sub_226D6EC2C();
      v12 = -1 << *(v3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = *(v6 + 8 * (v13 >> 6));
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        sub_226D69F0C();
        while (1)
        {
          v18 = *(*(v3 + 48) + 8 * v13);
          v19 = sub_226D6EC3C();

          if (v19)
          {
            break;
          }

          v13 = (v13 + 1) & v17;
          v14 = v13 >> 6;
          v15 = *(v6 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            v1 = v35;
            v5 = v37;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v1 = v35;
        v5 = v37;
        if (v7 == v37)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *(v6 + 8 * v14) = v16 | v15;
        *(*(v3 + 48) + 8 * v13) = v10;
        v20 = *(v3 + 16);
        v9 = __OFADD__(v20, 1);
        v21 = v20 + 1;
        if (v9)
        {
          goto LABEL_32;
        }

        *(v3 + 16) = v21;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
    v22 = 0;
    v36 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v22 != v36)
    {
      v23 = *(v1 + 32 + 8 * v22);
      v24 = sub_226D6EC2C();
      v25 = -1 << *(v3 + 32);
      v26 = v24 & ~v25;
      v27 = v26 >> 6;
      v28 = *(v6 + 8 * (v26 >> 6));
      v29 = 1 << v26;
      if (((1 << v26) & v28) != 0)
      {
        v30 = ~v25;
        sub_226D69F0C();
        while (1)
        {
          v31 = *(*(v3 + 48) + 8 * v26);
          v32 = sub_226D6EC3C();

          if (v32)
          {
            break;
          }

          v26 = (v26 + 1) & v30;
          v27 = v26 >> 6;
          v28 = *(v6 + 8 * (v26 >> 6));
          v29 = 1 << v26;
          if (((1 << v26) & v28) == 0)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
LABEL_29:
        *(v6 + 8 * v27) = v29 | v28;
        *(*(v3 + 48) + 8 * v26) = v23;
        v33 = *(v3 + 16);
        v9 = __OFADD__(v33, 1);
        v34 = v33 + 1;
        if (v9)
        {
          goto LABEL_34;
        }

        *(v3 + 16) = v34;
      }

      if (++v22 == v37)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

uint64_t sub_226B1FBC0(uint64_t a1)
{
  v2 = type metadata accessor for OrderWebServiceTaskExclusivityIdentifier(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v24 - v7;
  v9 = *(a1 + 16);
  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A69C0, &unk_226D724A0);
    v10 = sub_226D6EECC();
    v11 = 0;
    v12 = v10 + 56;
    v13 = *(v3 + 80);
    v25 = v9;
    v26 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v3 + 72);
    while (2)
    {
      sub_226B1FE34(v26 + v14 * v11, v8, type metadata accessor for OrderWebServiceTaskExclusivityIdentifier);
      sub_226D6F2FC();
      sub_226CF4780(v27);
      v15 = sub_226D6F35C();
      v16 = ~(-1 << *(v10 + 32));
      for (i = v15 & v16; ; i = (i + 1) & v16)
      {
        v18 = *(v12 + 8 * (i >> 6));
        if (((1 << i) & v18) == 0)
        {
          break;
        }

        sub_226B1FE34(*(v10 + 48) + i * v14, v5, type metadata accessor for OrderWebServiceTaskExclusivityIdentifier);
        v19 = sub_226CF5B9C(v5, v8);
        sub_226B1FE9C(v5, type metadata accessor for OrderWebServiceTaskExclusivityIdentifier);
        if (v19)
        {
          sub_226B1FE9C(v8, type metadata accessor for OrderWebServiceTaskExclusivityIdentifier);
          goto LABEL_4;
        }
      }

      *(v12 + 8 * (i >> 6)) = (1 << i) | v18;
      result = sub_226B1FEFC(v8, *(v10 + 48) + i * v14, type metadata accessor for OrderWebServiceTaskExclusivityIdentifier);
      v21 = *(v10 + 16);
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (!v22)
      {
        *(v10 + 16) = v23;
LABEL_4:
        if (++v11 == v25)
        {
          return v10;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}

uint64_t sub_226B1FE34(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_226B1FE9C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_226B1FEFC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_226B1FF64(uint64_t a1)
{
  v2 = sub_226D680EC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A69D8, &unk_226D724C0);
    v9 = sub_226D6EECC();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_226B2042C(&qword_27D7A9690, MEMORY[0x277CC7180], MEMORY[0x277CC7188]);
      v16 = sub_226D6E2FC();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v5, *(v9 + 48) + v18 * v14, v2);
          sub_226B2042C(&qword_27D7A69E0, MEMORY[0x277CC7180], MEMORY[0x277CC7190]);
          v23 = sub_226D6E35C();
          v24 = *v15;
          (*v15)(v5, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

void sub_226B202AC(uint64_t a1)
{
  sub_226D6D52C();
  if (v1 <= 0x3F)
  {
    sub_226B20350(319);
    if (v2 <= 0x3F)
    {
      sub_226D6D4AC();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_226B20350(uint64_t a1)
{
  if (!qword_281062B70)
  {
    sub_226D6D4AC();
    v1 = sub_226D6EC9C();
    if (!v2)
    {
      atomic_store(v1, &qword_281062B70);
    }
  }
}

uint64_t sub_226B203A8(uint64_t a1)
{
  *(a1 + 8) = sub_226B2042C(&qword_27D7A6780, type metadata accessor for BankConnectNotificationEventsUnregisterTask, &unk_226D72430);
  result = sub_226B2042C(&qword_27D7A69F8, type metadata accessor for BankConnectNotificationEventsUnregisterTask, &unk_226D724FC);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_226B2042C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_226B20478(char **a1, void (*a2)(uint64_t, uint64_t))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  MEMORY[0x28223BE20](v4 - 8);
  v48 = &v48 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6A00, &qword_226D72538);
  v52 = *(v6 - 8);
  v53 = v6;
  MEMORY[0x28223BE20](v6);
  v49 = &v48 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6A08, &qword_226D72540);
  MEMORY[0x28223BE20](v8 - 8);
  v51 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v55 = &v48 - v11;
  v12 = sub_226D698EC();
  v13 = v12;
  v14 = v12 & 0xFFFFFFFFFFFFFF8;
  if (!(v12 >> 62))
  {
    v15 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v56 = a1;
    v57 = a2;
    if (v15)
    {
      goto LABEL_3;
    }

LABEL_23:
    v59 = MEMORY[0x277D84F90];
    goto LABEL_24;
  }

LABEL_22:
  v15 = sub_226D6EDFC();
  v56 = a1;
  v57 = a2;
  if (!v15)
  {
    goto LABEL_23;
  }

LABEL_3:
  v16 = 0;
  v59 = MEMORY[0x277D84F90];
  a1 = &selRef_setSortDescriptors_;
  do
  {
    v17 = v16;
    while (1)
    {
      if ((v13 & 0xC000000000000001) != 0)
      {
        v18 = MEMORY[0x22AA8AFD0](v17, v13);
        v16 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          goto LABEL_20;
        }
      }

      else
      {
        if (v17 >= *(v14 + 16))
        {
          goto LABEL_21;
        }

        v18 = *(v13 + 8 * v17 + 32);
        v16 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
LABEL_20:
          __break(1u);
LABEL_21:
          __break(1u);
          goto LABEL_22;
        }
      }

      v19 = v18;
      v20 = [v19 messageIDHash];
      if (v20)
      {
        break;
      }

      ++v17;
      if (v16 == v15)
      {
        goto LABEL_24;
      }
    }

    v21 = v20;
    v22 = sub_226D6E39C();
    v50 = v23;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v59 = sub_226BBAB0C(0, *(v59 + 2) + 1, 1, v59);
    }

    a2 = *(v59 + 2);
    v24 = *(v59 + 3);
    if (a2 >= v24 >> 1)
    {
      v59 = sub_226BBAB0C((v24 > 1), a2 + 1, 1, v59);
    }

    v25 = v59;
    *(v59 + 2) = a2 + 1;
    v26 = &v25[16 * a2];
    v27 = v50;
    *(v26 + 4) = v22;
    *(v26 + 5) = v27;
  }

  while (v16 != v15);
LABEL_24:

  v28 = sub_226AE3C28(v59);

  v29 = v56;
  v30 = [v56 orderContent];
  v31 = [v30 sanitizedOrderNumber];

  v32 = sub_226D6E39C();
  v34 = v33;

  sub_226D69D0C();
  v35 = v54;
  v36 = v55;
  v37 = v57;
  sub_226BDCB08(v28, v32, v34, v57, v55);
  if (v35)
  {
  }

  else
  {

    v39 = v51;
    sub_226B209F8(v36, v51);
    v40 = v53;
    if ((*(v52 + 48))(v39, 1, v53) == 1)
    {
      sub_226AC47B0(v36, &qword_27D7A6A08, &qword_226D72540);
      v36 = v39;
    }

    else
    {
      v41 = v49;
      sub_226B20A68(v39, v49);
      v42 = *v41;
      v43 = *(v40 + 48);
      if (v42 != [v29 isMarkedAsComplete])
      {
        v44 = sub_226D6D4AC();
        v45 = *(v44 - 8);
        v46 = &v41[v43];
        v47 = v48;
        (*(v45 + 16))(v48, v46, v44);
        (*(v45 + 56))(v47, 0, 1, v44);
        sub_226D698BC();
        sub_226AC47B0(v47, &qword_27D7A8BE0, &unk_226D718F0);
        memset(v58, 0, 80);
        sub_226B42120(v29, v37);
        sub_226AFD62C(v58);
      }

      sub_226AC47B0(v41, &qword_27D7A6A00, &qword_226D72538);
    }

    return sub_226AC47B0(v36, &qword_27D7A6A08, &qword_226D72540);
  }
}

uint64_t sub_226B209F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6A08, &qword_226D72540);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_226B20A68(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6A00, &qword_226D72538);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_226B20AEC()
{
  v1 = *v0;
  sub_226D6F2FC();
  MEMORY[0x22AA8B3B0](v1);
  return sub_226D6F35C();
}

uint64_t sub_226B20B60(uint64_t a1)
{
  v2 = *v1;
  sub_226D6F2FC();
  MEMORY[0x22AA8B3B0](v2);
  return sub_226D6F35C();
}

uint64_t sub_226B20BA4()
{
  v1 = 0x656C62616B6E696CLL;
  if (*v0 != 1)
  {
    v1 = 0x6B6E696C20746F6ELL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6D72657465646E75;
  }
}

char *sub_226B20C30()
{
  v69 = v0;
  v3 = v0[15];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v3[5]);
  v4 = sub_226D676AC();
  v0[16] = v4;
  v61 = v3;
  v5 = __swift_project_boxed_opaque_existential_1(v3 + 2, v3[5]);
  sub_226AE532C((v5 + 16), (v0 + 2));
  v6 = v0[5];
  v7 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v6);
  (*(v7 + 8))(&v68, v6, v7);
  v8 = v68;
  v0[17] = v68;
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  v62 = v8;
  v68 = v8;
  v9 = BankConnectPaymentPassDataSource.paymentPasses()();
  v10 = v9;
  v68 = MEMORY[0x277D84F90];
  if (v9 >> 62)
  {
LABEL_72:
    v11 = sub_226D6EDFC();
  }

  else
  {
    v11 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v12 = MEMORY[0x277D84F90];
  v64 = v4;
  v66 = v0;
  if (v11)
  {
    v13 = 0;
    v3 = (v10 & 0xC000000000000001);
    v4 = (v10 & 0xFFFFFFFFFFFFFF8);
    while (1)
    {
      if (v3)
      {
        v14 = MEMORY[0x22AA8AFD0](v13, v10);
        v0 = (v13 + 1);
        if (__OFADD__(v13, 1))
        {
LABEL_21:
          __break(1u);
LABEL_22:
          v0 = v66;
          v17 = v68;
          v4 = v64;
          v12 = MEMORY[0x277D84F90];
          goto LABEL_24;
        }
      }

      else
      {
        if (v13 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_72;
        }

        v14 = *(v10 + 8 * v13 + 32);
        v0 = (v13 + 1);
        if (__OFADD__(v13, 1))
        {
          goto LABEL_21;
        }
      }

      v1 = v14;
      if ([v1 cardType] == 1)
      {
        v15 = [v1 isEMoneyPass] ^ 1;
      }

      else
      {
        v15 = 0;
      }

      v16 = [v1 hasAssociatedPeerPaymentAccount];
      v2 = [v1 associatedAccountServiceAccountIdentifier];

      if (v2)
      {
      }

      else if (v15 && (v16 & 1) == 0)
      {
        sub_226D6EF6C();
        v2 = *(v68 + 16);
        sub_226D6EF9C();
        sub_226D6EFAC();
        sub_226D6EF7C();
        goto LABEL_16;
      }

LABEL_16:
      ++v13;
      if (v0 == v11)
      {
        goto LABEL_22;
      }
    }
  }

  v17 = MEMORY[0x277D84F90];
LABEL_24:

  if ((v17 & 0x8000000000000000) != 0 || (v17 & 0x4000000000000000) != 0)
  {
    v18 = sub_226D6EDFC();
    if (v18)
    {
LABEL_27:
      v68 = v12;
      sub_226D6EF8C();
      if (v18 < 0)
      {
        __break(1u);
        goto LABEL_77;
      }

      v19 = 0;
      v3 = &selRef_setSortDescriptors_;
      do
      {
        if ((v17 & 0xC000000000000001) != 0)
        {
          v20 = MEMORY[0x22AA8AFD0](v19, v17);
        }

        else
        {
          v20 = *(v17 + 8 * v19 + 32);
        }

        v21 = v20;
        ++v19;
        v1 = [v20 fkPaymentPass];

        sub_226D6EF6C();
        v2 = *(v68 + 16);
        sub_226D6EF9C();
        sub_226D6EFAC();
        sub_226D6EF7C();
      }

      while (v18 != v19);

      v0 = v66;
      v22 = v68;
      if (!(v68 >> 62))
      {
        goto LABEL_34;
      }

      goto LABEL_75;
    }
  }

  else
  {
    v18 = *(v17 + 16);
    if (v18)
    {
      goto LABEL_27;
    }
  }

  v22 = MEMORY[0x277D84F90];
  if (!(MEMORY[0x277D84F90] >> 62))
  {
LABEL_34:
    v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_35;
  }

LABEL_75:
  v23 = sub_226D6EDFC();
LABEL_35:
  v24 = MEMORY[0x277D84F90];
  if (!v23)
  {
    goto LABEL_48;
  }

  v68 = MEMORY[0x277D84F90];
  sub_226AE1D68(0, v23 & ~(v23 >> 63), 0);
  if (v23 < 0)
  {
LABEL_77:
    __break(1u);
    goto LABEL_78;
  }

  v24 = v68;
  if ((v22 & 0xC000000000000001) != 0)
  {
    v25 = 0;
    do
    {
      MEMORY[0x22AA8AFD0](v25, v22);
      v26 = [swift_unknownObjectRetain() serialNumber];
      v27 = sub_226D6E39C();
      v29 = v28;

      swift_unknownObjectRelease_n();
      v68 = v24;
      v31 = *(v24 + 16);
      v30 = *(v24 + 24);
      if (v31 >= v30 >> 1)
      {
        sub_226AE1D68((v30 > 1), v31 + 1, 1);
        v24 = v68;
      }

      ++v25;
      *(v24 + 16) = v31 + 1;
      v32 = v24 + 16 * v31;
      *(v32 + 32) = v27;
      *(v32 + 40) = v29;
    }

    while (v23 != v25);
  }

  else
  {
    v33 = (v22 + 32);
    do
    {
      v34 = *v33;
      v35 = [v34 serialNumber];
      v36 = sub_226D6E39C();
      v38 = v37;

      v68 = v24;
      v40 = *(v24 + 16);
      v39 = *(v24 + 24);
      if (v40 >= v39 >> 1)
      {
        sub_226AE1D68((v39 > 1), v40 + 1, 1);
        v24 = v68;
      }

      *(v24 + 16) = v40 + 1;
      v41 = v24 + 16 * v40;
      *(v41 + 32) = v36;
      *(v41 + 40) = v38;
      ++v33;
      --v23;
    }

    while (v23);
  }

  v4 = v64;
  v0 = v66;
LABEL_48:
  v0[18] = v24;
  v42 = v0[15];
  v43 = swift_task_alloc();
  v43[2] = v42;
  v43[3] = v24;
  v43[4] = v4;
  sub_226D6EB7C();

  v2 = MEMORY[0x277D84F90];
  v0[12] = sub_226B23138(MEMORY[0x277D84F90]);
  sub_226B21E80(v24, v0 + 12);
  v44 = swift_task_alloc();
  *(v44 + 16) = v4;
  *(v44 + 24) = v0 + 12;
  sub_226D6EB8C();

  v0[19] = v0[12];
  v46 = swift_task_alloc();
  v46[2] = v24;
  v46[3] = v4;
  v46[4] = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6A10, &unk_226D72558);
  sub_226D6EB8C();
  v0[20] = 0;

  v1 = v0[13];
  v3 = (v1 >> 62);
  if (v1 >> 62)
  {
LABEL_78:
    if (sub_226D6EDFC())
    {
      goto LABEL_54;
    }

LABEL_79:

    v60 = v0[1];

    return v60();
  }

  if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_79;
  }

LABEL_54:
  __swift_project_boxed_opaque_existential_1(v61 + 2, v61[5]);
  sub_226D1F020(v0 + 7);
  v63 = v0[10];
  v65 = v0[11];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v63);
  if (v3)
  {
    v47 = sub_226D6EDFC();
  }

  else
  {
    v47 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v47)
  {
    v68 = v2;
    result = sub_226AE1D68(0, v47 & ~(v47 >> 63), 0);
    if (v47 < 0)
    {
      __break(1u);
      return result;
    }

    v48 = 0;
    v49 = v68;
    do
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v50 = MEMORY[0x22AA8AFD0](v48, v1);
      }

      else
      {
        v50 = *(v1 + 8 * v48 + 32);
      }

      v51 = v50;
      v52 = [v51 primaryAccountIdentifier];
      v53 = sub_226D6E39C();
      v55 = v54;

      v68 = v49;
      v57 = *(v49 + 16);
      v56 = *(v49 + 24);
      if (v57 >= v56 >> 1)
      {
        sub_226AE1D68((v56 > 1), v57 + 1, 1);
        v49 = v68;
      }

      ++v48;
      *(v49 + 16) = v57 + 1;
      v58 = v49 + 16 * v57;
      *(v58 + 32) = v53;
      *(v58 + 40) = v55;
    }

    while (v47 != v48);

    v0 = v66;
  }

  else
  {

    v49 = MEMORY[0x277D84F90];
  }

  v0[21] = v49;
  v67 = (*(v65 + 16) + **(v65 + 16));
  v59 = swift_task_alloc();
  v0[22] = v59;
  *v59 = v0;
  v59[1] = sub_226B21578;

  return v67(v49, v63, v65);
}

uint64_t sub_226B21578(uint64_t a1)
{

  return MEMORY[0x2822009F8](sub_226B2169C, 0, 0);
}

uint64_t sub_226B2169C()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 144);
  v3 = *(v0 + 128);
  *(v0 + 112) = sub_226B23138(MEMORY[0x277D84F90]);
  sub_226B21E80(v2, (v0 + 112));
  v4 = swift_task_alloc();
  *(v4 + 16) = v3;
  *(v4 + 24) = v0 + 112;
  sub_226D6EB8C();
  v5 = *(v0 + 152);
  if (v1)
  {
    v7 = *(v0 + 128);
    v6 = *(v0 + 136);

    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 56));
    v9 = *(v0 + 8);
  }

  else
  {

    sub_226B24694(v5, *(v0 + 112));
    v8 = *(v0 + 136);

    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 56));
    v9 = *(v0 + 8);
  }

  return v9();
}

void sub_226B21818(uint64_t a1, uint64_t a2, void *a3)
{
  v7[1] = *MEMORY[0x277D85DE8];
  sub_226B24B10(a2, a3);
  if (!v3)
  {
    v7[0] = 0;
    if ([a3 save_])
    {
      v5 = v7[0];
    }

    else
    {
      v6 = v7[0];
      sub_226D6D04C();

      swift_willThrow();
    }
  }
}

uint64_t sub_226B218E8@<X0>(unint64_t a3@<X2>, unint64_t a4@<X8>)
{
  v7 = sub_226D6D4AC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226D6C06C();
  sub_226D6D46C();
  v11 = sub_226D6C05C();
  v12 = v4;
  if (v4)
  {
    return (*(v8 + 8))(v10, v7);
  }

  v14 = v11;
  v53 = a3;
  v54 = a4;
  (*(v8 + 8))(v10, v7);

  v16 = sub_226AE3C28(v15);

  if (v14 >> 62)
  {
    goto LABEL_43;
  }

  for (i = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_226D6EDFC())
  {
    v52[1] = v12;
    v18 = MEMORY[0x277D84F90];
    if (i)
    {
      v58 = MEMORY[0x277D84F90];
      result = sub_226AE1D68(0, i & ~(i >> 63), 0);
      if (i < 0)
      {
        __break(1u);
        return result;
      }

      v57 = v16;
      v19 = v58;
      if ((v14 & 0xC000000000000001) != 0)
      {
        v20 = 0;
        do
        {
          MEMORY[0x22AA8AFD0](v20, v14);
          v21 = [swift_unknownObjectRetain() passSerial];
          v22 = sub_226D6E39C();
          v24 = v23;
          swift_unknownObjectRelease_n();

          v58 = v19;
          v26 = *(v19 + 16);
          v25 = *(v19 + 24);
          if (v26 >= v25 >> 1)
          {
            sub_226AE1D68((v25 > 1), v26 + 1, 1);
            v19 = v58;
          }

          ++v20;
          *(v19 + 16) = v26 + 1;
          v27 = v19 + 16 * v26;
          *(v27 + 32) = v22;
          *(v27 + 40) = v24;
        }

        while (i != v20);
      }

      else
      {
        v28 = 32;
        do
        {
          v29 = *(v14 + v28);
          v30 = [v29 passSerial];
          v31 = sub_226D6E39C();
          v33 = v32;

          v58 = v19;
          v35 = *(v19 + 16);
          v34 = *(v19 + 24);
          if (v35 >= v34 >> 1)
          {
            sub_226AE1D68((v34 > 1), v35 + 1, 1);
            v19 = v58;
          }

          *(v19 + 16) = v35 + 1;
          v36 = v19 + 16 * v35;
          *(v36 + 32) = v31;
          *(v36 + 40) = v33;
          v28 += 8;
          --i;
        }

        while (i);
      }

      v16 = v57;
      v18 = MEMORY[0x277D84F90];
    }

    else
    {

      v19 = MEMORY[0x277D84F90];
    }

    v37 = sub_226D54F60(v19, v16);

    v59 = v18;
    v38 = v53;
    v12 = v54;
    if (v53 >> 62)
    {
      break;
    }

    v14 = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v14)
    {
      goto LABEL_45;
    }

LABEL_21:
    v39 = 0;
    v56 = v38 & 0xFFFFFFFFFFFFFF8;
    v57 = v38 & 0xC000000000000001;
    v55 = v38 + 32;
    v40 = v37 + 7;
    while (1)
    {
      if (v57)
      {
        v41 = MEMORY[0x22AA8AFD0](v39, v53);
      }

      else
      {
        if (v39 >= *(v56 + 16))
        {
          goto LABEL_42;
        }

        v41 = *(v55 + 8 * v39);
      }

      v42 = v41;
      if (__OFADD__(v39++, 1))
      {
        break;
      }

      v12 = [v41 serialNumber];
      v44 = sub_226D6E39C();
      v46 = v45;

      if (v37[2] && (sub_226D6F2FC(), sub_226D6E42C(), v47 = sub_226D6F35C(), v48 = -1 << *(v37 + 32), v12 = v47 & ~v48, ((*(v40 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0))
      {
        v16 = ~v48;
        while (1)
        {
          v49 = (v37[6] + 16 * v12);
          v50 = *v49 == v44 && v49[1] == v46;
          if (v50 || (sub_226D6F21C() & 1) != 0)
          {
            break;
          }

          v12 = (v12 + 1) & v16;
          if (((*(v40 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
          {
            goto LABEL_22;
          }
        }

        v12 = &v59;
        sub_226D6EF6C();
        sub_226D6EF9C();
        sub_226D6EFAC();
        sub_226D6EF7C();
      }

      else
      {
LABEL_22:
      }

      if (v39 == v14)
      {
        v51 = v59;
        v12 = v54;
        goto LABEL_46;
      }
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    ;
  }

  v14 = sub_226D6EDFC();
  if (v14)
  {
    goto LABEL_21;
  }

LABEL_45:
  v51 = MEMORY[0x277D84F90];
LABEL_46:

  *v12 = v51;
  return result;
}

uint64_t sub_226B21DF0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_226AD827C;

  return BankConnectServiceImplementation.reevaluateBankConnectEligibility()();
}

uint64_t sub_226B21E80(uint64_t result, void *a2)
{
  v2 = *(result + 16);
  if (!v2)
  {
    return result;
  }

  for (i = (result + 40); ; i += 2)
  {
    v6 = *(i - 1);
    v5 = *i;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *a2;
    v22 = *a2;
    *a2 = 0x8000000000000000;
    v9 = sub_226C2FDD4(v6, v5);
    v11 = v8[2];
    v12 = (v10 & 1) == 0;
    v13 = __OFADD__(v11, v12);
    v14 = v11 + v12;
    if (v13)
    {
      break;
    }

    v15 = v10;
    if (v8[3] < v14)
    {
      sub_226C31FE4(v14, isUniquelyReferenced_nonNull_native);
      v9 = sub_226C2FDD4(v6, v5);
      if ((v15 & 1) != (v16 & 1))
      {
        goto LABEL_18;
      }

LABEL_10:
      v17 = v22;
      if (v15)
      {
        goto LABEL_3;
      }

      goto LABEL_11;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_10;
    }

    v21 = v9;
    sub_226C38320();
    v9 = v21;
    v17 = v22;
    if (v15)
    {
LABEL_3:
      *(v17[7] + v9) = 0;
      goto LABEL_4;
    }

LABEL_11:
    v17[(v9 >> 6) + 8] |= 1 << v9;
    v18 = (v17[6] + 16 * v9);
    *v18 = v6;
    v18[1] = v5;
    *(v17[7] + v9) = 0;
    v19 = v17[2];
    v13 = __OFADD__(v19, 1);
    v20 = v19 + 1;
    if (v13)
    {
      goto LABEL_17;
    }

    v17[2] = v20;

LABEL_4:
    *a2 = v17;

    if (!--v2)
    {
      return result;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  result = sub_226D6F25C();
  __break(1u);
  return result;
}

void sub_226B2201C(uint64_t a1, void *a2)
{
  sub_226D6C06C();
  v4 = sub_226D6C03C();
  isUniquelyReferenced_nonNull_native = sub_226D6EBBC();

  if (!v2)
  {
    v34 = a2;
    if (isUniquelyReferenced_nonNull_native >> 62)
    {
LABEL_30:
      v6 = sub_226D6EDFC();
      v7 = v34;
      if (v6)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v6 = *((isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8) + 0x10);
      v7 = v34;
      if (v6)
      {
LABEL_4:
        v8 = 0;
        v32 = isUniquelyReferenced_nonNull_native;
        v33 = isUniquelyReferenced_nonNull_native & 0xC000000000000001;
        v30 = isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8;
        v31 = v6;
        do
        {
          if (v33)
          {
            v10 = MEMORY[0x22AA8AFD0](v8, isUniquelyReferenced_nonNull_native);
          }

          else
          {
            if (v8 >= *(v30 + 16))
            {
              goto LABEL_29;
            }

            v10 = *(isUniquelyReferenced_nonNull_native + 8 * v8 + 32);
          }

          v11 = v10;
          if (__OFADD__(v8, 1))
          {
            __break(1u);
LABEL_27:
            __break(1u);
LABEL_28:
            __break(1u);
LABEL_29:
            __break(1u);
            goto LABEL_30;
          }

          v35 = v8 + 1;
          v12 = [v10 passSerial];
          v13 = sub_226D6E39C();
          v15 = v14;

          if ([v11 linkable])
          {
            v16 = 1;
          }

          else
          {
            v16 = 2;
          }

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v17 = *v7;
          v36 = *v7;
          *v7 = 0x8000000000000000;
          v19 = sub_226C2FDD4(v13, v15);
          v20 = v17[2];
          v21 = (v18 & 1) == 0;
          v22 = v20 + v21;
          if (__OFADD__(v20, v21))
          {
            goto LABEL_27;
          }

          v23 = v18;
          if (v17[3] >= v22)
          {
            if (isUniquelyReferenced_nonNull_native)
            {
              if (v18)
              {
                goto LABEL_5;
              }
            }

            else
            {
              sub_226C38320();
              if (v23)
              {
                goto LABEL_5;
              }
            }
          }

          else
          {
            sub_226C31FE4(v22, isUniquelyReferenced_nonNull_native);
            v24 = sub_226C2FDD4(v13, v15);
            if ((v23 & 1) != (v25 & 1))
            {
              sub_226D6F25C();
              __break(1u);
              return;
            }

            v19 = v24;
            if (v23)
            {
LABEL_5:

              v9 = v36;
              *(v36[7] + v19) = v16;

              goto LABEL_6;
            }
          }

          v9 = v36;
          v36[(v19 >> 6) + 8] |= 1 << v19;
          v26 = (v36[6] + 16 * v19);
          *v26 = v13;
          v26[1] = v15;
          *(v36[7] + v19) = v16;

          v27 = v36[2];
          v28 = __OFADD__(v27, 1);
          v29 = v27 + 1;
          if (v28)
          {
            goto LABEL_28;
          }

          v36[2] = v29;
LABEL_6:
          v7 = v34;
          *v34 = v9;

          ++v8;
          isUniquelyReferenced_nonNull_native = v32;
        }

        while (v35 != v31);
      }
    }
  }
}

unint64_t sub_226B222FC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6B28, &qword_226D72628);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6B30, &qword_226D72630);
    v7 = sub_226D6F10C();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_226AC40E8(v9, v5, &qword_27D7A6B28, &qword_226D72628);
      v11 = *v5;
      v12 = v5[1];
      result = sub_226C2FDD4(*v5, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = sub_226D684AC();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v15, v5 + v8, v18);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_226B224FC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6A18, &qword_226D77DD0);
    v3 = sub_226D6F10C();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_226C2FDD4(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_226B22610(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6A20, &qword_226D72590);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6A28, &qword_226D72598);
    v7 = sub_226D6F10C();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_226AC40E8(v9, v5, &qword_27D7A6A20, &qword_226D72590);
      v12 = *v5;
      v11 = v5[1];
      result = sub_226C2FD40(*v5, v11);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v12;
      v16[1] = v11;
      v17 = v7[7];
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6A30, &qword_226D738B0);
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v15, v5 + v8, v18);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_226B22808(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6A38, &qword_226D725A0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6A40, &unk_226D77E00);
    v7 = sub_226D6F10C();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_226AC40E8(v9, v5, &qword_27D7A6A38, &qword_226D725A0);
      v11 = *v5;
      v12 = v5[1];
      result = sub_226C2FD40(*v5, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = _s7ChangesV11FulfillmentVMa(0);
      result = sub_226B24AA8(v5 + v8, v17 + *(*(v18 - 8) + 72) * v15, _s7ChangesV11FulfillmentVMa);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_226B229F0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6AA8, &qword_226D725E0);
    v3 = sub_226D6F10C();
    v4 = a1 + 32;

    while (1)
    {
      sub_226AC40E8(v4, v13, &qword_27D7A6AB0, &unk_226D79520);
      result = sub_226C2FE4C(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_226B24A98(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_226B22B2C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6A90, &qword_226D725D0);
    v3 = sub_226D6F10C();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_226C2FE90(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_226B22C08(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6A98, &qword_226D725D8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6AA0, &unk_226D77EE0);
    v7 = sub_226D6F10C();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_226AC40E8(v9, v5, &qword_27D7A6A98, &qword_226D725D8);
      result = sub_226C2FED4(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_226D689EC();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 16 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_226B22DF0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6AD0, &qword_226D725F0);
    v3 = sub_226D6F10C();
    v4 = a1 + 32;

    while (1)
    {
      sub_226AC40E8(v4, &v13, &qword_27D7A68E8, &unk_226D76980);
      v5 = v13;
      v6 = v14;
      result = sub_226C2FDD4(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_226B24A98(&v15, (v3[7] + 32 * result));
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_226B22F20(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6A48, &qword_226D725A8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8C40, &unk_226D7AE70);
    v7 = sub_226D6F10C();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_226AC40E8(v9, v5, &qword_27D7A6A48, &qword_226D725A8);
      result = sub_226C2FFAC(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for PermissionIdentifier(0);
      sub_226B24AA8(v5, v14 + *(*(v15 - 8) + 72) * v13, type metadata accessor for PermissionIdentifier);
      v16 = v7[7];
      v17 = type metadata accessor for Permission(0);
      result = sub_226B24AA8(&v5[v8], v16 + *(*(v17 - 8) + 72) * v13, type metadata accessor for Permission);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_226B23138(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6B20, &unk_226D77FC0);
    v3 = sub_226D6F10C();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_226C2FDD4(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_226B23270(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6B10, &qword_226D72620);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v20 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6B18, &qword_226D77EC0);
    v7 = sub_226D6F10C();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_226AC40E8(v9, v5, &qword_27D7A6B10, &qword_226D72620);
      v11 = *v5;
      result = sub_226C30098(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v11;
      v15 = v7[7];
      v16 = type metadata accessor for XPCActivityScheduler.ActivityInfo(0);
      result = sub_226B24AA8(&v5[v8], v15 + *(*(v16 - 8) + 72) * v14, type metadata accessor for XPCActivityScheduler.ActivityInfo);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_226B23454(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6AC0, &qword_226D77F60);
    v3 = sub_226D6F10C();
    v4 = a1 + 32;

    while (1)
    {
      sub_226AC40E8(v4, &v11, &qword_27D7A6AC8, &unk_226D76970);
      v5 = v11;
      result = sub_226C301A0(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_226B24A98(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_226B2357C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6AE8, &qword_226D72600);
    v3 = sub_226D6F10C();
    v4 = a1 + 32;

    while (1)
    {
      sub_226AC40E8(v4, &v11, &qword_27D7A6AF0, &qword_226D72608);
      v5 = v11;
      result = sub_226C30258(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_226B24A98(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_226B236A4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6A88, &unk_226D77ED0);
    v3 = sub_226D6F10C();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);

      result = sub_226C3015C(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_226B2379C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6AD8, &qword_226D725F8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6AE0, &qword_226D77F90);
    v7 = sub_226D6F10C();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_226AC40E8(v9, v5, &qword_27D7A6AD8, &qword_226D725F8);
      result = sub_226C302EC(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_226D680FC();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = v7[7];
      v17 = sub_226D68CEC();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v13, &v5[v8], v17);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_226B239BC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6A78, &qword_226D725C8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v22 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6A80, &qword_226D7AD90);
    v7 = sub_226D6F10C();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_226AC40E8(v9, v5, &qword_27D7A6A78, &qword_226D725C8);
      result = sub_226C2FE4C(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6] + 40 * result;
      v15 = *v5;
      v16 = *(v5 + 1);
      *(v14 + 32) = *(v5 + 4);
      *v14 = v15;
      *(v14 + 16) = v16;
      v17 = v7[7];
      v18 = type metadata accessor for WebServicePendingTasksRetryState.TaskState(0);
      result = sub_226B24AA8(&v5[v8], v17 + *(*(v18 - 8) + 72) * v13, type metadata accessor for WebServicePendingTasksRetryState.TaskState);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_226B23BB0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6B08, &qword_226D72618);
    v3 = sub_226D6F10C();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = sub_226C301A0(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_226B23CA0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6B00, &qword_226D72610);
    v3 = sub_226D6F10C();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_226C2FDD4(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_226B23D9C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6AF8, &unk_226D77FA0);
    v3 = sub_226D6F10C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_226C2FDD4(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_226B23E98(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6A50, &qword_226D725B0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6A58, &qword_226D725B8);
    v7 = sub_226D6F10C();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_226AC40E8(v9, v5, &qword_27D7A6A50, &qword_226D725B0);
      result = sub_226C3064C(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_226D6B9BC();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_226B24080(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6AB8, &qword_226D725E8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8C50, &qword_226D77F50);
    v7 = sub_226D6F10C();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_226AC40E8(v9, v5, &qword_27D7A6AB8, &qword_226D725E8);
      result = sub_226C3049C(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_226D6D52C();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = v7[7];
      v17 = sub_226D67E5C();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v13, &v5[v8], v17);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_226B242B4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_226D6F10C();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      v10 = v9;
      result = sub_226C2FDD4(v7, v8);
      if (v12)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = (v5[6] + 16 * result);
      *v13 = v7;
      v13[1] = v8;
      *(v5[7] + 8 * result) = v10;
      v14 = v5[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v5[2] = v16;
      if (!--v3)
      {

        return v5;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_226B243B0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6A68, &unk_226D7C6B0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6A70, &qword_226D725C0);
    v7 = sub_226D6F10C();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_226AC40E8(v9, v5, &qword_27D7A6A68, &unk_226D7C6B0);
      v11 = *v5;
      v12 = v5[1];
      result = sub_226C2FDD4(*v5, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = sub_226D66F6C();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v15, v5 + v8, v18);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_226B2459C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A9680, &qword_226D77EF0);
    v3 = sub_226D6F10C();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = sub_226C3015C(v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v7;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

void sub_226B24694(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a1 + 64;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 64);
  v8 = (v5 + 63) >> 6;
  v9 = 0;

  v42 = a2;
  while (v7)
  {
LABEL_9:
    v11 = (v3[6] + ((v9 << 10) | (16 * __clz(__rbit64(v7)))));
    v12 = *v11;
    v13 = v11[1];
    v14 = v3[2];

    if (v14 && (v15 = sub_226C2FDD4(v12, v13), (v16 & 1) != 0))
    {
      v17 = *(v3[7] + v15);
    }

    else
    {
      v17 = 3;
    }

    v44 = v17;
    if (*(a2 + 16) && (v18 = sub_226C2FDD4(v12, v13), (v19 & 1) != 0))
    {
      v20 = *(*(a2 + 56) + v18);
    }

    else
    {
      v20 = 3;
    }

    v43 = v20;
    if (qword_27D7A5F60 != -1)
    {
      swift_once();
    }

    v21 = sub_226D6E07C();
    __swift_project_value_buffer(v21, qword_27D7A7D10);

    v22 = sub_226D6E05C();
    v23 = sub_226D6E9EC();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v45 = v41;
      *v24 = 136315650;
      v25 = sub_226AC4530(v12, v13, &v45);

      *(v24 + 4) = v25;
      *(v24 + 12) = 2080;
      v26 = 0x6B6E696C20746F6ELL;
      if (v44 != 2)
      {
        v26 = 7104878;
      }

      v27 = 0xEC000000656C6261;
      if (v44 != 2)
      {
        v27 = 0xE300000000000000;
      }

      v28 = 0x656C62616B6E696CLL;
      if (!v44)
      {
        v28 = 0x6D72657465646E75;
      }

      v29 = 0xEC00000064656E69;
      if (v44)
      {
        v29 = 0xE800000000000000;
      }

      if (v44 <= 1)
      {
        v30 = v28;
      }

      else
      {
        v30 = v26;
      }

      if (v44 <= 1)
      {
        v31 = v29;
      }

      else
      {
        v31 = v27;
      }

      v32 = sub_226AC4530(v30, v31, &v45);

      *(v24 + 14) = v32;
      *(v24 + 22) = 2080;
      v33 = 0x6B6E696C20746F6ELL;
      if (v43 != 2)
      {
        v33 = 7104878;
      }

      v34 = 0xEC000000656C6261;
      if (v43 != 2)
      {
        v34 = 0xE300000000000000;
      }

      v35 = 0x6D72657465646E75;
      if (v43)
      {
        v35 = 0x656C62616B6E696CLL;
      }

      v36 = 0xEC00000064656E69;
      if (v43)
      {
        v36 = 0xE800000000000000;
      }

      if (v43 <= 1)
      {
        v37 = v35;
      }

      else
      {
        v37 = v33;
      }

      if (v43 <= 1)
      {
        v38 = v36;
      }

      else
      {
        v38 = v34;
      }

      v39 = sub_226AC4530(v37, v38, &v45);

      *(v24 + 24) = v39;
      _os_log_impl(&dword_226AB4000, v22, v23, "Finished evaluating engagement event eligibility for pass %s: before (%s), after (%s)", v24, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x22AA8BEE0](v41, -1, -1);
      MEMORY[0x22AA8BEE0](v24, -1, -1);

      v3 = v40;
    }

    else
    {
    }

    a2 = v42;
    v7 &= v7 - 1;
    if (v44 != 1 && v43 == 1)
    {
      sub_226B9E364();
    }
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v8)
    {

      return;
    }

    v7 = *(v4 + 8 * v10);
    ++v9;
    if (v7)
    {
      v9 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
}

_OWORD *sub_226B24A98(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_226B24AA8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_226B24B10(uint64_t a1, id a2)
{
  sub_226D6C06C();
  v4 = sub_226D6C04C();
  if (!v2)
  {
    v5 = v4;
    if (qword_27D7A5F60 != -1)
    {
      goto LABEL_39;
    }

    while (1)
    {
      v6 = sub_226D6E07C();
      __swift_project_value_buffer(v6, qword_27D7A7D10);

      v7 = sub_226D6E05C();
      v8 = sub_226D6E9EC();
      v9 = v5 >> 62;
      if (os_log_type_enabled(v7, v8))
      {
        v10 = swift_slowAlloc();
        v11 = swift_slowAlloc();
        v46 = v11;
        *v10 = 134218242;
        if (v9)
        {
          v12 = sub_226D6EDFC();
        }

        else
        {
          v12 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        *(v10 + 4) = v12;

        *(v10 + 12) = 2080;
        v43 = v11;
        if (v9)
        {
          v13 = sub_226D6EDFC();
        }

        else
        {
          v13 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v44 = v8;
        if (v13)
        {
          v45 = MEMORY[0x277D84F90];
          sub_226AE1D68(0, v13 & ~(v13 >> 63), 0);
          if (v13 < 0)
          {
            __break(1u);
            return;
          }

          v40 = v10;
          v41 = v7;
          v42 = a2;
          if ((v5 & 0xC000000000000001) != 0)
          {
            v14 = 0;
            do
            {
              MEMORY[0x22AA8AFD0](v14, v5);
              v15 = [swift_unknownObjectRetain() passSerial];
              v16 = sub_226D6E39C();
              v18 = v17;
              swift_unknownObjectRelease_n();

              v20 = *(v45 + 16);
              v19 = *(v45 + 24);
              if (v20 >= v19 >> 1)
              {
                sub_226AE1D68((v19 > 1), v20 + 1, 1);
              }

              ++v14;
              *(v45 + 16) = v20 + 1;
              v21 = v45 + 16 * v20;
              *(v21 + 32) = v16;
              *(v21 + 40) = v18;
            }

            while (v13 != v14);
          }

          else
          {
            v22 = (v5 + 32);
            do
            {
              v23 = *v22;
              v24 = [v23 passSerial];
              v25 = sub_226D6E39C();
              v27 = v26;

              v29 = *(v45 + 16);
              v28 = *(v45 + 24);
              if (v29 >= v28 >> 1)
              {
                sub_226AE1D68((v28 > 1), v29 + 1, 1);
              }

              *(v45 + 16) = v29 + 1;
              v30 = v45 + 16 * v29;
              *(v30 + 32) = v25;
              *(v30 + 40) = v27;
              ++v22;
              --v13;
            }

            while (v13);
          }

          v7 = v41;
          a2 = v42;
          v10 = v40;
          v9 = v5 >> 62;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A5FC0, &unk_226D75DC0);
        sub_226AE3D6C();
        v31 = sub_226D6E31C();
        v33 = v32;

        v34 = sub_226AC4530(v31, v33, &v46);

        *(v10 + 14) = v34;
        _os_log_impl(&dword_226AB4000, v7, v44, "Removing %ld dangling responses for passes %s", v10, 0x16u);
        __swift_destroy_boxed_opaque_existential_0Tm(v43);
        MEMORY[0x22AA8BEE0](v43, -1, -1);
        MEMORY[0x22AA8BEE0](v10, -1, -1);
      }

      else
      {
      }

      if (v9)
      {
        v35 = sub_226D6EDFC();
      }

      else
      {
        v35 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      a2 = a2;
      if (!v35)
      {
LABEL_35:

        return;
      }

      v36 = 0;
      while (1)
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v37 = MEMORY[0x22AA8AFD0](v36, v5);
        }

        else
        {
          if (v36 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_38;
          }

          v37 = *(v5 + 8 * v36 + 32);
        }

        v38 = v37;
        v39 = v36 + 1;
        if (__OFADD__(v36, 1))
        {
          break;
        }

        [a2 deleteObject_];

        ++v36;
        if (v39 == v35)
        {
          goto LABEL_35;
        }
      }

      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      swift_once();
    }
  }
}

uint64_t getEnumTagSinglePayload for ActivityIdentifier(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ActivityIdentifier(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_226B250F8()
{
  result = qword_27D7A6B40;
  if (!qword_27D7A6B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A6B40);
  }

  return result;
}

id sub_226B25164()
{
  result = [objc_opt_self() isWalletVisible];
  byte_281062560 = result;
  return result;
}

uint64_t static WalletInfo.isWalletVisible.getter()
{
  if (qword_281062558 != -1)
  {
    swift_once();
  }

  return byte_281062560;
}

id static WalletInfo.isWalletDeletedRemote.getter()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D37FC0]) init];
  v1 = [v0 passbookHasBeenDeleted];

  return v1;
}

uint64_t sub_226B25278()
{
  if (qword_281062558 != -1)
  {
    swift_once();
  }

  return byte_281062560;
}

id sub_226B25308()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D37FC0]) init];
  v1 = [v0 passbookHasBeenDeleted];

  return v1;
}

uint64_t getEnumTagSinglePayload for WalletInfo(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for WalletInfo(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t sub_226B25490(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = "com.apple.financed.orders.tasks";
  v4 = 0xD000000000000025;
  if (v2 == 1)
  {
    v5 = 0xD000000000000025;
  }

  else
  {
    v5 = 0xD000000000000024;
  }

  if (v2 == 1)
  {
    v6 = "com.apple.financed.orders.tasks";
  }

  else
  {
    v6 = "ed.bankconnect.reboot";
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xD00000000000001FLL;
  }

  if (v2)
  {
    v8 = v6;
  }

  else
  {
    v8 = "com.apple.springboard";
  }

  if (*a2 != 1)
  {
    v4 = 0xD000000000000024;
    v3 = "ed.bankconnect.reboot";
  }

  if (*a2)
  {
    v9 = v4;
  }

  else
  {
    v9 = 0xD00000000000001FLL;
  }

  if (*a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = "com.apple.springboard";
  }

  if (v7 == v9 && (v8 | 0x8000000000000000) == (v10 | 0x8000000000000000))
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_226D6F21C();
  }

  return v11 & 1;
}

uint64_t sub_226B25568()
{
  sub_226D6F2FC();
  sub_226D6E42C();

  return sub_226D6F35C();
}

uint64_t sub_226B25604(uint64_t a1)
{
  sub_226D6E42C();
}

uint64_t sub_226B2568C(uint64_t a1)
{
  sub_226D6F2FC();
  sub_226D6E42C();

  return sub_226D6F35C();
}

unint64_t sub_226B25724@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_226B299A0(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_226B25754(unint64_t *a1@<X8>)
{
  v2 = 0xD00000000000001FLL;
  v3 = "com.apple.financed.orders.tasks";
  v4 = 0xD000000000000025;
  if (*v1 != 1)
  {
    v4 = 0xD000000000000024;
    v3 = "ed.bankconnect.reboot";
  }

  if (*v1)
  {
    v2 = v4;
    v5 = v3;
  }

  else
  {
    v5 = "com.apple.springboard";
  }

  *a1 = v2;
  a1[1] = v5 | 0x8000000000000000;
}

unint64_t sub_226B257B0()
{
  v1 = 0xD000000000000025;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000024;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD00000000000001FLL;
  }
}

BOOL sub_226B25908(_BYTE *a1, unsigned __int8 *a2)
{
  v3 = *a2;
  v4 = *v2;
  if ((v4 & v3) != v3)
  {
    *v2 = v4 | v3;
  }

  *a1 = v3;
  return (v4 & v3) != v3;
}

unsigned __int8 *sub_226B25938@<X0>(unsigned __int8 *result@<X0>, _BYTE *a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  v5 = v4 & v3;
  if ((v4 & v3) != 0)
  {
    *v2 = v4 & ~v3;
  }

  *a2 = v5;
  a2[1] = v5 == 0;
  return result;
}

unsigned __int8 *sub_226B25964@<X0>(unsigned __int8 *result@<X0>, _BYTE *a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 = v4 | v3;
  v5 = v4 & v3;
  *a2 = v5;
  a2[1] = v5 == 0;
  return result;
}

uint64_t sub_226B25A58@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = sub_226B299EC(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_226B25A9C()
{
  sub_226D6EEFC();
  MEMORY[0x22AA8A510](0xD00000000000001CLL, 0x8000000226D7F810);
  v1 = "com.apple.financed.orders.tasks";
  v2 = 0xD000000000000025;
  if (*v0 != 1)
  {
    v2 = 0xD000000000000024;
    v1 = "ed.bankconnect.reboot";
  }

  if (*v0)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0xD00000000000001FLL;
  }

  if (*v0)
  {
    v4 = v1;
  }

  else
  {
    v4 = "com.apple.springboard";
  }

  MEMORY[0x22AA8A510](v3, v4 | 0x8000000000000000);

  MEMORY[0x22AA8A510](0xD000000000000015, 0x8000000226D7F830);
  type metadata accessor for ActivityRequest(0);
  sub_226D6D4AC();
  sub_226B2A0DC(&qword_281062B80, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
  v5 = sub_226D6F1CC();
  MEMORY[0x22AA8A510](v5);

  MEMORY[0x22AA8A510](0x6E6F6974706F202CLL, 0xEB00000000203A73);
  sub_226D6EFBC();
  MEMORY[0x22AA8A510](10528, 0xE200000000000000);
  return 0;
}

void sub_226B25C70(uint64_t a1)
{
  v2 = v1;
  empty = xpc_dictionary_create_empty();
  v4 = type metadata accessor for ActivityRequest(0);
  sub_226D6D3BC();
  if ((*&v5 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v5 <= -9.22337204e18)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v5 >= 9.22337204e18)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  xpc_dictionary_set_int64(empty, *MEMORY[0x277D86250], v5 & ~(v5 >> 63));
  xpc_dictionary_set_int64(empty, *MEMORY[0x277D86270], *MEMORY[0x277D862A8]);
  xpc_dictionary_set_string(empty, *MEMORY[0x277D86340], *MEMORY[0x277D86350]);
  v6 = *(v1 + *(v4 + 24));
  if ((*(v2 + *(v4 + 24)) & 4) == 0)
  {
    goto LABEL_7;
  }

  if (!*MEMORY[0x277D86398])
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  xpc_dictionary_set_BOOL(empty, *MEMORY[0x277D86398], 1);
LABEL_7:
  if (v6)
  {
    xpc_dictionary_set_BOOL(empty, *MEMORY[0x277D86230], 1);
  }

  if ((v6 & 2) != 0)
  {
    if (*MEMORY[0x277D86328])
    {
      xpc_dictionary_set_BOOL(empty, *MEMORY[0x277D86328], 1);
      return;
    }

LABEL_17:
    __break(1u);
  }
}

uint64_t sub_226B25DF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for XPCActivityScheduler.ActivityInfo(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_226D6E1CC();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = (&v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *(v2 + 16);
  *v13 = v14;
  (*(v10 + 104))(v13, *MEMORY[0x277D85200], v9, v11);
  v15 = v14;
  LOBYTE(v14) = sub_226D6E1DC();
  (*(v10 + 8))(v13, v9);
  if (v14)
  {
    swift_beginAccess();
    v16 = *(v2 + 24);
    if (*(v16 + 16))
    {
      v17 = sub_226C30098(a1);
      if (v18)
      {
        sub_226B29B78(*(v16 + 56) + *(v6 + 72) * v17, v8, type metadata accessor for XPCActivityScheduler.ActivityInfo);
        sub_226B2A028(v8, a2, type metadata accessor for XPCActivityScheduler.ActivityInfo);
        return swift_endAccess();
      }
    }
  }

  else
  {
    __break(1u);
  }

  swift_endAccess();
  v23 = 0;
  v24 = 0xE000000000000000;
  sub_226D6EEFC();

  v23 = 0xD000000000000019;
  v24 = 0x8000000226D7F870;
  if (a1)
  {
    if (a1 == 1)
    {
      v20 = 0xD000000000000025;
    }

    else
    {
      v20 = 0xD000000000000024;
    }

    if (a1 == 1)
    {
      v21 = "com.apple.financed.orders.tasks";
    }

    else
    {
      v21 = "ed.bankconnect.reboot";
    }
  }

  else
  {
    v20 = 0xD00000000000001FLL;
    v21 = "com.apple.springboard";
  }

  MEMORY[0x22AA8A510](v20, v21 | 0x8000000000000000);

  MEMORY[0x22AA8A510](0x67657220746F6E20, 0xEF64657265747369);
  result = sub_226D6F0AC();
  __break(1u);
  return result;
}

uint64_t sub_226B26120(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v68 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6B88, &unk_226D72B68);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v64 - v8;
  v10 = type metadata accessor for XPCActivityScheduler.ActivityInfo(0);
  v69 = *(v10 - 1);
  MEMORY[0x28223BE20](v10);
  v65 = &v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = (&v64 - v13);
  v15 = sub_226D6E1CC();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = (&v64 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = *(v4 + 16);
  *v19 = v20;
  (*(v16 + 104))(v19, *MEMORY[0x277D85200], v15, v17);
  v21 = v20;
  LOBYTE(v20) = sub_226D6E1DC();
  (*(v16 + 8))(v19, v15);
  if (v20)
  {
    v66 = a3;
    v67 = v9;
    if (qword_28105F590 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v22 = 0xD00000000000001FLL;
  v23 = sub_226D6E07C();
  __swift_project_value_buffer(v23, qword_28105F598);
  v24 = sub_226D6E05C();
  v25 = sub_226D6E9EC();
  v26 = os_log_type_enabled(v24, v25);
  v70 = a1;
  if (v26)
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v71[0] = v28;
    *v27 = 136446210;
    if (a1)
    {
      if (a1 == 1)
      {
        v29 = 0xD000000000000025;
      }

      else
      {
        v29 = 0xD000000000000024;
      }

      if (a1 == 1)
      {
        v30 = "com.apple.financed.orders.tasks";
      }

      else
      {
        v30 = "ed.bankconnect.reboot";
      }
    }

    else
    {
      v30 = "com.apple.springboard";
      v29 = 0xD00000000000001FLL;
    }

    v31 = sub_226AC4530(v29, v30 | 0x8000000000000000, v71);

    *(v27 + 4) = v31;
    _os_log_impl(&dword_226AB4000, v24, v25, "%{public}s: Registering activity handler", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v28);
    MEMORY[0x22AA8BEE0](v28, -1, -1);
    MEMORY[0x22AA8BEE0](v27, -1, -1);

    a1 = v70;
    v22 = 0xD00000000000001FLL;
  }

  else
  {
  }

  swift_beginAccess();
  v32 = *(v4 + 24);
  if (*(v32 + 16) && (v33 = sub_226C30098(a1), (v34 & 1) != 0))
  {
    sub_226B29B78(*(v32 + 56) + *(v69 + 72) * v33, v65, type metadata accessor for XPCActivityScheduler.ActivityInfo);
    swift_endAccess();
    v35 = sub_226D6E05C();
    v36 = sub_226D6E9AC();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v71[0] = v38;
      *v37 = 136446210;
      if (a1)
      {
        if (a1 == 1)
        {
          v39 = 0xD000000000000025;
        }

        else
        {
          v39 = 0xD000000000000024;
        }

        if (a1 == 1)
        {
          v40 = "com.apple.financed.orders.tasks";
        }

        else
        {
          v40 = "ed.bankconnect.reboot";
        }
      }

      else
      {
        v40 = "com.apple.springboard";
        v39 = 0xD00000000000001FLL;
      }

      v44 = sub_226AC4530(v39, v40 | 0x8000000000000000, v71);

      *(v37 + 4) = v44;
      _os_log_impl(&dword_226AB4000, v35, v36, "%{public}s: Replacing existing activity handler", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v38);
      MEMORY[0x22AA8BEE0](v38, -1, -1);
      MEMORY[0x22AA8BEE0](v37, -1, -1);

      v22 = 0xD00000000000001FLL;
    }

    else
    {
    }

    sub_226B2A028(v65, v14, type metadata accessor for XPCActivityScheduler.ActivityInfo);
    v45 = v66;

    *v14 = v68;
    v14[1] = v45;
  }

  else
  {
    swift_endAccess();
    v41 = v10[5];
    v42 = type metadata accessor for ActivityRequest(0);
    (*(*(v42 - 8) + 56))(v14 + v41, 1, 1, v42);
    v43 = v66;
    *v14 = v68;
    v14[1] = v43;
    *(v14 + v10[6]) = 0;
    *(v14 + v10[7]) = 0;
  }

  v46 = v10[6];
  v47 = *(v14 + v46);
  v48 = sub_226D6E05C();
  v49 = sub_226D6E9EC();
  v50 = os_log_type_enabled(v48, v49);
  if (v47)
  {
    if (v50)
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v71[0] = v52;
      *v51 = 136446210;
      v53 = v70;
      if (v70)
      {
        if (v70 == 1)
        {
          v22 = 0xD000000000000025;
        }

        else
        {
          v22 = 0xD000000000000024;
        }

        if (v70 == 1)
        {
          v54 = "com.apple.financed.orders.tasks";
        }

        else
        {
          v54 = "ed.bankconnect.reboot";
        }
      }

      else
      {
        v54 = "com.apple.springboard";
      }

      v58 = sub_226AC4530(v22, v54 | 0x8000000000000000, v71);

      *(v51 + 4) = v58;
      _os_log_impl(&dword_226AB4000, v48, v49, "%{public}s: Activity already registering", v51, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v52);
      MEMORY[0x22AA8BEE0](v52, -1, -1);
      MEMORY[0x22AA8BEE0](v51, -1, -1);
    }

    else
    {

      v53 = v70;
    }

    v59 = v67;
    sub_226B29B78(v14, v67, type metadata accessor for XPCActivityScheduler.ActivityInfo);
    (*(v69 + 56))(v59, 0, 1, v10);
    swift_beginAccess();
    sub_226D48A48(v59, v53);
    swift_endAccess();
  }

  else
  {
    if (v50)
    {
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v71[0] = v56;
      *v55 = 136446210;
      if (v70)
      {
        if (v70 == 1)
        {
          v22 = 0xD000000000000025;
        }

        else
        {
          v22 = 0xD000000000000024;
        }

        if (v70 == 1)
        {
          v57 = "com.apple.financed.orders.tasks";
        }

        else
        {
          v57 = "ed.bankconnect.reboot";
        }
      }

      else
      {
        v57 = "com.apple.springboard";
      }

      v60 = sub_226AC4530(v22, v57 | 0x8000000000000000, v71);

      *(v55 + 4) = v60;
      _os_log_impl(&dword_226AB4000, v48, v49, "%{public}s: Registering activity now", v55, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v56);
      MEMORY[0x22AA8BEE0](v56, -1, -1);
      MEMORY[0x22AA8BEE0](v55, -1, -1);
    }

    *(v14 + v46) = 1;
    v61 = v67;
    sub_226B29B78(v14, v67, type metadata accessor for XPCActivityScheduler.ActivityInfo);
    (*(v69 + 56))(v61, 0, 1, v10);
    swift_beginAccess();
    v62 = v61;
    LOBYTE(v61) = v70;
    sub_226D48A48(v62, v70);
    swift_endAccess();
    sub_226B26A08(v61);
  }

  return sub_226B29BE0(v14, type metadata accessor for XPCActivityScheduler.ActivityInfo);
}

void sub_226B26A08(char a1)
{
  v2 = v1;
  if (qword_28105F590 != -1)
  {
    swift_once();
  }

  v4 = sub_226D6E07C();
  __swift_project_value_buffer(v4, qword_28105F598);
  v5 = sub_226D6E05C();
  v6 = sub_226D6E9EC();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16[0] = v8;
    *v7 = 136446210;
    if (a1)
    {
      if (a1 == 1)
      {
        v9 = 0xD000000000000025;
      }

      else
      {
        v9 = 0xD000000000000024;
      }

      if (a1 == 1)
      {
        v10 = "com.apple.financed.orders.tasks";
      }

      else
      {
        v10 = "ed.bankconnect.reboot";
      }
    }

    else
    {
      v10 = "com.apple.springboard";
      v9 = 0xD00000000000001FLL;
    }

    v11 = sub_226AC4530(v9, v10 | 0x8000000000000000, v16);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_226AB4000, v5, v6, "%{public}s: Registering activity (check-in)", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
    MEMORY[0x22AA8BEE0](v8, -1, -1);
    MEMORY[0x22AA8BEE0](v7, -1, -1);
  }

  v12 = *MEMORY[0x277D86238];
  v13 = swift_allocObject();
  *(v13 + 16) = v2;
  *(v13 + 24) = a1;
  v16[4] = sub_226B29C40;
  v16[5] = v13;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 1107296256;
  v16[2] = sub_226B27F7C;
  v16[3] = &block_descriptor_33;
  v14 = _Block_copy(v16);

  v15 = sub_226D6E40C();

  xpc_activity_register((v15 + 32), v12, v14);

  _Block_release(v14);
}

uint64_t sub_226B26CC0(uint64_t a1)
{
  v3 = type metadata accessor for ActivityRequest(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = *(v1 + 16);
  sub_226B29B78(a1, aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ActivityRequest);
  v7 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = v1;
  sub_226B2A028(aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7, type metadata accessor for ActivityRequest);
  v9 = swift_allocObject();
  *(v9 + 16) = sub_226B29A24;
  *(v9 + 24) = v8;
  aBlock[4] = sub_226B1BA20;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_226CAD254;
  aBlock[3] = &block_descriptor_2;
  v10 = _Block_copy(aBlock);

  dispatch_sync(v6, v10);
  _Block_release(v10);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_226B26ECC(unsigned __int8 *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6B88, &unk_226D72B68);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v75 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A6B48, &qword_226D72788);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v75 - v7;
  v9 = type metadata accessor for XPCActivityScheduler.ActivityInfo(0);
  v78 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v81 = &v75 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ActivityRequest(0);
  v79 = *(v11 - 8);
  v80 = v11;
  MEMORY[0x28223BE20](v11);
  v76 = &v75 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v75 - v14;
  v16 = sub_226D6E1CC();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = (&v75 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v82 = v1;
  v21 = *(v1 + 16);
  *v20 = v21;
  (*(v17 + 104))(v20, *MEMORY[0x277D85200], v16, v18);
  v22 = v21;
  LOBYTE(v21) = sub_226D6E1DC();
  (*(v17 + 8))(v20, v16);
  if (v21)
  {
    v83 = *a1;
    if (qword_28105F590 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v23 = sub_226D6E07C();
  __swift_project_value_buffer(v23, qword_28105F598);
  v24 = a1;
  sub_226B29B78(a1, v15, type metadata accessor for ActivityRequest);
  v25 = sub_226D6E05C();
  v26 = sub_226D6E9EC();
  if (os_log_type_enabled(v25, v26))
  {
    v75 = v9;
    v77 = v5;
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v84[0] = v28;
    *v27 = 136446466;
    v29 = "com.apple.financed.orders.tasks";
    v30 = 0xD000000000000025;
    if (v83 != 1)
    {
      v30 = 0xD000000000000024;
      v29 = "ed.bankconnect.reboot";
    }

    if (v83)
    {
      v31 = v30;
    }

    else
    {
      v31 = 0xD00000000000001FLL;
    }

    if (v83)
    {
      v32 = v29;
    }

    else
    {
      v32 = "com.apple.springboard";
    }

    v33 = sub_226AC4530(v31, v32 | 0x8000000000000000, v84);

    *(v27 + 4) = v33;
    *(v27 + 12) = 2080;
    v34 = sub_226B25A9C();
    v36 = v35;
    sub_226B29BE0(v15, type metadata accessor for ActivityRequest);
    v37 = sub_226AC4530(v34, v36, v84);

    *(v27 + 14) = v37;
    _os_log_impl(&dword_226AB4000, v25, v26, "%{public}s: Submitting activity request %s", v27, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA8BEE0](v28, -1, -1);
    MEMORY[0x22AA8BEE0](v27, -1, -1);

    v5 = v77;
    v9 = v75;
  }

  else
  {

    sub_226B29BE0(v15, type metadata accessor for ActivityRequest);
  }

  v38 = v81;
  sub_226B25DF0(v83, v81);
  v39 = *(v9 + 20);
  sub_226B29AA0(v38 + v39, v8);
  v41 = v79;
  v40 = v80;
  if ((*(v79 + 48))(v8, 1, v80) == 1)
  {
    sub_226B29B10(v8);
    goto LABEL_29;
  }

  v42 = v8;
  v43 = v76;
  sub_226B2A028(v42, v76, type metadata accessor for ActivityRequest);
  if (!sub_226B29870(v24, v43))
  {
    sub_226B29BE0(v43, type metadata accessor for ActivityRequest);
LABEL_29:
    sub_226B29B10(v38 + v39);
    sub_226B29B78(v24, v38 + v39, type metadata accessor for ActivityRequest);
    (*(v41 + 56))(v38 + v39, 0, 1, v40);
    v53 = v9;
    v54 = *(v9 + 24);
    v55 = *(v38 + v54);
    v56 = sub_226D6E05C();
    v57 = sub_226D6E9EC();
    v58 = os_log_type_enabled(v56, v57);
    if (v55)
    {
      if (v58)
      {
        v77 = v5;
        v59 = swift_slowAlloc();
        v60 = swift_slowAlloc();
        v84[0] = v60;
        *v59 = 136446210;
        v61 = "com.apple.financed.orders.tasks";
        v62 = 0xD000000000000025;
        if (v83 != 1)
        {
          v62 = 0xD000000000000024;
          v61 = "ed.bankconnect.reboot";
        }

        if (v83)
        {
          v63 = v62;
        }

        else
        {
          v63 = 0xD00000000000001FLL;
        }

        if (v83)
        {
          v64 = v61;
        }

        else
        {
          v64 = "com.apple.springboard";
        }

        v65 = sub_226AC4530(v63, v64 | 0x8000000000000000, v84);

        *(v59 + 4) = v65;
        _os_log_impl(&dword_226AB4000, v56, v57, "%{public}s: Activity already registering", v59, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v60);
        MEMORY[0x22AA8BEE0](v60, -1, -1);
        MEMORY[0x22AA8BEE0](v59, -1, -1);

        v5 = v77;
      }

      else
      {
      }

      *(v38 + v54) = 1;
      sub_226B29B78(v38, v5, type metadata accessor for XPCActivityScheduler.ActivityInfo);
      (*(v78 + 56))(v5, 0, 1, v53);
      swift_beginAccess();
      sub_226D48A48(v5, v83);
      swift_endAccess();
    }

    else
    {
      if (v58)
      {
        v77 = v5;
        v66 = swift_slowAlloc();
        v67 = swift_slowAlloc();
        v84[0] = v67;
        *v66 = 136446210;
        v68 = "com.apple.financed.orders.tasks";
        v69 = 0xD000000000000025;
        if (v83 != 1)
        {
          v69 = 0xD000000000000024;
          v68 = "ed.bankconnect.reboot";
        }

        if (v83)
        {
          v70 = v69;
        }

        else
        {
          v70 = 0xD00000000000001FLL;
        }

        if (v83)
        {
          v71 = v68;
        }

        else
        {
          v71 = "com.apple.springboard";
        }

        v72 = sub_226AC4530(v70, v71 | 0x8000000000000000, v84);

        *(v66 + 4) = v72;
        _os_log_impl(&dword_226AB4000, v56, v57, "%{public}s: Registering activity now", v66, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v67);
        MEMORY[0x22AA8BEE0](v67, -1, -1);
        MEMORY[0x22AA8BEE0](v66, -1, -1);

        v5 = v77;
      }

      else
      {
      }

      *(v38 + v54) = 1;
      sub_226B29B78(v38, v5, type metadata accessor for XPCActivityScheduler.ActivityInfo);
      (*(v78 + 56))(v5, 0, 1, v53);
      swift_beginAccess();
      v73 = v83;
      sub_226D48A48(v5, v83);
      swift_endAccess();
      sub_226B26A08(v73);
    }

    return sub_226B29BE0(v38, type metadata accessor for XPCActivityScheduler.ActivityInfo);
  }

  v44 = sub_226D6E05C();
  v45 = sub_226D6E9EC();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v84[0] = v47;
    *v46 = 136446210;
    v48 = "com.apple.financed.orders.tasks";
    v49 = 0xD000000000000025;
    if (v83 != 1)
    {
      v49 = 0xD000000000000024;
      v48 = "ed.bankconnect.reboot";
    }

    if (v83)
    {
      v50 = v49;
    }

    else
    {
      v50 = 0xD00000000000001FLL;
    }

    if (v83)
    {
      v51 = v48;
    }

    else
    {
      v51 = "com.apple.springboard";
    }

    v52 = sub_226AC4530(v50, v51 | 0x8000000000000000, v84);

    *(v46 + 4) = v52;
    _os_log_impl(&dword_226AB4000, v44, v45, "%{public}s: Activity request equals pending request", v46, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v47);
    MEMORY[0x22AA8BEE0](v47, -1, -1);
    MEMORY[0x22AA8BEE0](v46, -1, -1);
  }

  sub_226B29BE0(v43, type metadata accessor for ActivityRequest);
  return sub_226B29BE0(v38, type metadata accessor for XPCActivityScheduler.ActivityInfo);
}

uint64_t sub_226B2795C(char a1)
{
  v3 = sub_226D6E1CC();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = (&v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v1 + 16);
  *v7 = v8;
  (*(v4 + 104))(v7, *MEMORY[0x277D85200], v3, v5);
  v9 = v8;
  LOBYTE(v8) = sub_226D6E1DC();
  (*(v4 + 8))(v7, v3);
  if (v8)
  {
    if (qword_28105F590 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v10 = sub_226D6E07C();
  __swift_project_value_buffer(v10, qword_28105F598);
  v11 = sub_226D6E05C();
  v12 = sub_226D6E9EC();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v21 = v14;
    *v13 = 136446210;
    if (a1)
    {
      if (a1 == 1)
      {
        v15 = 0xD000000000000025;
      }

      else
      {
        v15 = 0xD000000000000024;
      }

      if (a1 == 1)
      {
        v16 = "com.apple.financed.orders.tasks";
      }

      else
      {
        v16 = "ed.bankconnect.reboot";
      }
    }

    else
    {
      v16 = "com.apple.springboard";
      v15 = 0xD00000000000001FLL;
    }

    v17 = sub_226AC4530(v15, v16 | 0x8000000000000000, &v21);

    *(v13 + 4) = v17;
    _os_log_impl(&dword_226AB4000, v11, v12, "%{public}s: Unregistering activity", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v14);
    MEMORY[0x22AA8BEE0](v14, -1, -1);
    MEMORY[0x22AA8BEE0](v13, -1, -1);
  }

  v18 = sub_226D6E40C();

  xpc_activity_unregister((v18 + 32));
}

void sub_226B27C38(_xpc_activity_s *a1, uint64_t a2)
{
  LOBYTE(v3) = a2;
  state = xpc_activity_get_state(a1);
  if (state == 2)
  {
LABEL_5:

    sub_226B29C6C(v3);
    return;
  }

  if (!state)
  {
    v6 = *(v2 + 16);
    v7 = swift_allocObject();
    *(v7 + 16) = v2;
    *(v7 + 24) = a1;
    *(v7 + 32) = v3;
    v3 = swift_allocObject();
    *(v3 + 16) = sub_226B29FB4;
    *(v3 + 24) = v7;
    aBlock[4] = sub_226B2A194;
    aBlock[5] = v3;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_226CAD254;
    aBlock[3] = &block_descriptor_43;
    v8 = _Block_copy(aBlock);

    swift_unknownObjectRetain();

    dispatch_sync(v6, v8);
    _Block_release(v8);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return;
    }

    __break(1u);
    goto LABEL_5;
  }

  v10 = state;
  if (qword_28105F590 != -1)
  {
    swift_once();
  }

  v11 = sub_226D6E07C();
  __swift_project_value_buffer(v11, qword_28105F598);
  oslog = sub_226D6E05C();
  v12 = sub_226D6E9EC();
  if (os_log_type_enabled(oslog, v12))
  {
    v13 = 0xD00000000000001FLL;
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    aBlock[0] = v15;
    *v14 = 136446466;
    if (v3)
    {
      if (v3 == 1)
      {
        v13 = 0xD000000000000025;
      }

      else
      {
        v13 = 0xD000000000000024;
      }

      if (v3 == 1)
      {
        v16 = "com.apple.financed.orders.tasks";
      }

      else
      {
        v16 = "ed.bankconnect.reboot";
      }
    }

    else
    {
      v16 = "com.apple.springboard";
    }

    v17 = sub_226AC4530(v13, v16 | 0x8000000000000000, aBlock);

    *(v14 + 4) = v17;
    *(v14 + 12) = 2048;
    *(v14 + 14) = v10;
    _os_log_impl(&dword_226AB4000, oslog, v12, "%{public}s: Activity callback with state %ld", v14, 0x16u);
    __swift_destroy_boxed_opaque_existential_0Tm(v15);
    MEMORY[0x22AA8BEE0](v15, -1, -1);
    MEMORY[0x22AA8BEE0](v14, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_226B27F7C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

uint64_t sub_226B27FDC(_xpc_activity_s *a1, uint64_t a2)
{
  v106 = a1;
  v4 = sub_226D6D4AC();
  v104 = *(v4 - 8);
  v105 = v4;
  MEMORY[0x28223BE20](v4);
  v103 = &v101 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6B88, &unk_226D72B68);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v101 - v7;
  v9 = type metadata accessor for ActivityRequest(0);
  v108 = *(v9 - 8);
  v109 = v9;
  MEMORY[0x28223BE20](v9);
  v102 = &v101 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v111 = &v101 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6BF0, &qword_226D72B78);
  MEMORY[0x28223BE20](v13);
  v15 = &v101 - v14;
  v112 = type metadata accessor for XPCActivityScheduler.ActivityInfo(0);
  v110 = *(v112 - 1);
  MEMORY[0x28223BE20](v112);
  v17 = &v101 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_226D6E1CC();
  v19 = *(v18 - 8);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = (&v101 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v113 = v2;
  v23 = *(v2 + 16);
  *v22 = v23;
  (*(v19 + 104))(v22, *MEMORY[0x277D85200], v18, v20);
  v24 = v23;
  LOBYTE(v23) = sub_226D6E1DC();
  (*(v19 + 8))(v22, v18);
  if (v23)
  {
    v107 = v8;
    if (qword_28105F590 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v25 = 0xD00000000000001FLL;
  v26 = sub_226D6E07C();
  v27 = __swift_project_value_buffer(v26, qword_28105F598);
  v28 = sub_226D6E05C();
  v29 = sub_226D6E9EC();
  if (os_log_type_enabled(v28, v29))
  {
    v101 = v27;
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v114[0] = v31;
    *v30 = 136446210;
    v32 = a2;
    v33 = a2;
    if (a2)
    {
      v34 = v17;
      if (v33 == 1)
      {
        v35 = 0xD000000000000025;
      }

      else
      {
        v35 = 0xD000000000000024;
      }

      if (v33 == 1)
      {
        v36 = "com.apple.financed.orders.tasks";
      }

      else
      {
        v36 = "ed.bankconnect.reboot";
      }
    }

    else
    {
      v34 = v17;
      v36 = "com.apple.springboard";
      v35 = 0xD00000000000001FLL;
    }

    v37 = sub_226AC4530(v35, v36 | 0x8000000000000000, v114);

    *(v30 + 4) = v37;
    _os_log_impl(&dword_226AB4000, v28, v29, "%{public}s: Check-in", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v31);
    MEMORY[0x22AA8BEE0](v31, -1, -1);
    MEMORY[0x22AA8BEE0](v30, -1, -1);

    v17 = v34;
    a2 = v32;
    v25 = 0xD00000000000001FLL;
  }

  else
  {
  }

  sub_226B25DF0(a2, v17);
  v38 = v112[6];
  v39 = v17[v38];
  v40 = *(v13 + 48);
  sub_226B29AA0(&v17[v112[5]], &v15[v40]);
  if (v39)
  {
    if ((*(v108 + 48))(&v15[v40], 1, v109) == 1)
    {
      v41 = a2;
      v42 = sub_226D6E05C();
      v43 = sub_226D6E9EC();
      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        v114[0] = v45;
        *v44 = 136446210;
        if (v41)
        {
          if (v41 == 1)
          {
            v25 = 0xD000000000000025;
          }

          else
          {
            v25 = 0xD000000000000024;
          }

          if (v41 == 1)
          {
            v46 = "com.apple.financed.orders.tasks";
          }

          else
          {
            v46 = "ed.bankconnect.reboot";
          }
        }

        else
        {
          v46 = "com.apple.springboard";
        }

        v65 = sub_226AC4530(v25, v46 | 0x8000000000000000, v114);

        *(v44 + 4) = v65;
        _os_log_impl(&dword_226AB4000, v42, v43, "%{public}s: No pending request", v44, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v45);
        MEMORY[0x22AA8BEE0](v45, -1, -1);
        MEMORY[0x22AA8BEE0](v44, -1, -1);
      }

      v17[v38] = 0;
      v66 = v107;
      sub_226B29B78(v17, v107, type metadata accessor for XPCActivityScheduler.ActivityInfo);
      (*(v110 + 56))(v66, 0, 1, v112);
      swift_beginAccess();
      sub_226D48A48(v66, v41);
      swift_endAccess();
      v67 = v17;
      return sub_226B29BE0(v67, type metadata accessor for XPCActivityScheduler.ActivityInfo);
    }

    LODWORD(v109) = a2;
    v53 = &v15[v40];
    v54 = v111;
    sub_226B2A028(v53, v111, type metadata accessor for ActivityRequest);
    v55 = v102;
    sub_226B29B78(v54, v102, type metadata accessor for ActivityRequest);
    v56 = sub_226D6E05C();
    v57 = sub_226D6E9EC();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v114[0] = v59;
      *v58 = 136446466;
      v60 = v59;
      if (v109)
      {
        if (v109 == 1)
        {
          v61 = 0xD000000000000025;
        }

        else
        {
          v61 = 0xD000000000000024;
        }

        if (v109 == 1)
        {
          v62 = "com.apple.financed.orders.tasks";
        }

        else
        {
          v62 = "ed.bankconnect.reboot";
        }
      }

      else
      {
        v62 = "com.apple.springboard";
        v61 = 0xD00000000000001FLL;
      }

      v68 = sub_226AC4530(v61, v62 | 0x8000000000000000, v114);

      *(v58 + 4) = v68;
      *(v58 + 12) = 2080;
      v69 = sub_226B25A9C();
      v70 = v55;
      v72 = v71;
      sub_226B29BE0(v70, type metadata accessor for ActivityRequest);
      v73 = sub_226AC4530(v69, v72, v114);

      *(v58 + 14) = v73;
      _os_log_impl(&dword_226AB4000, v56, v57, "%{public}s: Pending request %s", v58, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AA8BEE0](v60, -1, -1);
      MEMORY[0x22AA8BEE0](v58, -1, -1);
    }

    else
    {

      sub_226B29BE0(v55, type metadata accessor for ActivityRequest);
    }

    v17[v38] = 0;
    v74 = v112;
    v75 = v112[7];
    v76 = v17[v75];
    v17[v75] = 1;
    v77 = v107;
    sub_226B29B78(v17, v107, type metadata accessor for XPCActivityScheduler.ActivityInfo);
    (*(v110 + 56))(v77, 0, 1, v74);
    swift_beginAccess();
    sub_226D48A48(v77, v109);
    swift_endAccess();
    v78 = v103;
    sub_226D6D46C();
    sub_226B25C70(v78);
    v80 = v79;
    (*(v104 + 8))(v78, v105);
    if (v76 == 1)
    {
      v81 = xpc_activity_copy_criteria(v106);
      if (v81)
      {
        if (xpc_equal(v81, v80))
        {
          v82 = sub_226D6E05C();
          v83 = sub_226D6E9EC();
          if (os_log_type_enabled(v82, v83))
          {
            v84 = swift_slowAlloc();
            v85 = swift_slowAlloc();
            v114[0] = v85;
            *v84 = 136446210;
            if (v109)
            {
              if (v109 == 1)
              {
                v86 = "com.apple.financed.orders.tasks";
                v87 = 0xD000000000000025;
              }

              else
              {
                v86 = "ed.bankconnect.reboot";
                v87 = 0xD000000000000024;
              }
            }

            else
            {
              v86 = "com.apple.springboard";
              v87 = 0xD00000000000001FLL;
            }

            v100 = sub_226AC4530(v87, v86 | 0x8000000000000000, v114);

            *(v84 + 4) = v100;
            _os_log_impl(&dword_226AB4000, v82, v83, "%{public}s: Old and new criteria are equal", v84, 0xCu);
            __swift_destroy_boxed_opaque_existential_0Tm(v85);
            MEMORY[0x22AA8BEE0](v85, -1, -1);
            MEMORY[0x22AA8BEE0](v84, -1, -1);
          }

          swift_unknownObjectRelease();
          goto LABEL_66;
        }

        swift_unknownObjectRelease();
      }
    }

    v88 = MEMORY[0x22AA8C0C0](v80);
    v89 = sub_226D6E47C();
    v91 = v90;
    free(v88);

    v92 = sub_226D6E05C();
    v93 = sub_226D6E9EC();

    if (os_log_type_enabled(v92, v93))
    {
      v94 = swift_slowAlloc();
      v95 = swift_slowAlloc();
      v114[0] = v95;
      *v94 = 136446466;
      if (v109)
      {
        if (v109 == 1)
        {
          v96 = "com.apple.financed.orders.tasks";
          v97 = 0xD000000000000025;
        }

        else
        {
          v96 = "ed.bankconnect.reboot";
          v97 = 0xD000000000000024;
        }
      }

      else
      {
        v96 = "com.apple.springboard";
        v97 = 0xD00000000000001FLL;
      }

      v98 = sub_226AC4530(v97, v96 | 0x8000000000000000, v114);

      *(v94 + 4) = v98;
      *(v94 + 12) = 2080;
      v99 = sub_226AC4530(v89, v91, v114);

      *(v94 + 14) = v99;
      _os_log_impl(&dword_226AB4000, v92, v93, "%{public}s: Updating criteria to %s", v94, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AA8BEE0](v95, -1, -1);
      MEMORY[0x22AA8BEE0](v94, -1, -1);
    }

    else
    {
    }

    xpc_activity_set_criteria(v106, v80);
LABEL_66:
    swift_unknownObjectRelease();
    sub_226B29BE0(v111, type metadata accessor for ActivityRequest);
    v67 = v17;
    return sub_226B29BE0(v67, type metadata accessor for XPCActivityScheduler.ActivityInfo);
  }

  v47 = sub_226D6E05C();
  v48 = sub_226D6E9EC();
  if (os_log_type_enabled(v47, v48))
  {
    v49 = a2;
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v114[0] = v51;
    *v50 = 136446210;
    if (v49)
    {
      if (v49 == 1)
      {
        v25 = 0xD000000000000025;
      }

      else
      {
        v25 = 0xD000000000000024;
      }

      if (v49 == 1)
      {
        v52 = "com.apple.financed.orders.tasks";
      }

      else
      {
        v52 = "ed.bankconnect.reboot";
      }
    }

    else
    {
      v52 = "com.apple.springboard";
    }

    v63 = sub_226AC4530(v25, v52 | 0x8000000000000000, v114);

    *(v50 + 4) = v63;
    _os_log_impl(&dword_226AB4000, v47, v48, "%{public}s: Activity not registering", v50, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v51);
    MEMORY[0x22AA8BEE0](v51, -1, -1);
    MEMORY[0x22AA8BEE0](v50, -1, -1);
  }

  sub_226B29BE0(v17, type metadata accessor for XPCActivityScheduler.ActivityInfo);
  return sub_226B29B10(&v15[v40]);
}

uint64_t sub_226B28DB8@<X0>(uint64_t a2@<X1>, uint64_t (**a3)()@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6B88, &unk_226D72B68);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v18 - v6;
  v8 = type metadata accessor for XPCActivityScheduler.ActivityInfo(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226B25DF0(a2, v11);
  v12 = *(v8 + 20);
  sub_226B29B10(&v11[v12]);
  v13 = type metadata accessor for ActivityRequest(0);
  (*(*(v13 - 8) + 56))(&v11[v12], 1, 1, v13);
  sub_226B29B78(v11, v7, type metadata accessor for XPCActivityScheduler.ActivityInfo);
  (*(v9 + 56))(v7, 0, 1, v8);
  swift_beginAccess();
  sub_226D48A48(v7, a2);
  swift_endAccess();
  v15 = *v11;
  v14 = *(v11 + 1);
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  *(v16 + 24) = v14;
  *a3 = sub_226B2A000;
  a3[1] = v16;

  return sub_226B29BE0(v11, type metadata accessor for XPCActivityScheduler.ActivityInfo);
}

uint64_t sub_226B28FE0()
{

  return swift_deallocClassInstance();
}

void sub_226B2908C(uint64_t a1)
{
  sub_226B29128();
  if (v1 <= 0x3F)
  {
    sub_226B29178(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_226B29128()
{
  result = qword_28105F3F8;
  if (!qword_28105F3F8)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_28105F3F8);
  }

  return result;
}

void sub_226B29178(uint64_t a1)
{
  if (!qword_281062440[0])
  {
    type metadata accessor for ActivityRequest(255);
    v1 = sub_226D6EC9C();
    if (!v2)
    {
      atomic_store(v1, qword_281062440);
    }
  }
}

uint64_t getEnumTagSinglePayload for XPCActivityScheduler.ActivityState(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for XPCActivityScheduler.ActivityState(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_226B29374(uint64_t a1)
{
  result = sub_226D6D4AC();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_226B2941C()
{
  result = qword_281062330;
  if (!qword_281062330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281062330);
  }

  return result;
}

unint64_t sub_226B29474()
{
  result = qword_27D7A6B58;
  if (!qword_27D7A6B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A6B58);
  }

  return result;
}

unint64_t sub_226B294CC()
{
  result = qword_27D7A6B60;
  if (!qword_27D7A6B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A6B60);
  }

  return result;
}

unint64_t sub_226B29524()
{
  result = qword_27D7A6B68;
  if (!qword_27D7A6B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A6B68);
  }

  return result;
}

unint64_t sub_226B2957C()
{
  result = qword_27D7A6B70;
  if (!qword_27D7A6B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A6B70);
  }

  return result;
}

unint64_t sub_226B295D4()
{
  result = qword_27D7A6B78;
  if (!qword_27D7A6B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A6B78);
  }

  return result;
}

uint64_t sub_226B29628()
{
  v1 = sub_226D6EA3C();
  MEMORY[0x28223BE20](v1);
  v2 = sub_226D6E1BC();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = sub_226D6EA4C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226B2A090();
  (*(v4 + 104))(v6, *MEMORY[0x277D85268], v3);
  sub_226D6E19C();
  v7 = MEMORY[0x277D84F90];
  v9[1] = MEMORY[0x277D84F90];
  sub_226B2A0DC(&qword_28105F478, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6C00, &qword_226D73DF0);
  sub_226B2A124();
  sub_226D6ED5C();
  *(v0 + 16) = sub_226D6EA8C();
  *(v0 + 24) = sub_226B23270(v7);
  return v0;
}

BOOL sub_226B29870(_BYTE *a1, _BYTE *a2)
{
  v3 = *a1;
  v4 = "com.apple.financed.orders.tasks";
  v5 = 0xD000000000000025;
  if (v3 == 1)
  {
    v6 = 0xD000000000000025;
  }

  else
  {
    v6 = 0xD000000000000024;
  }

  if (v3 == 1)
  {
    v7 = "com.apple.financed.orders.tasks";
  }

  else
  {
    v7 = "ed.bankconnect.reboot";
  }

  if (*a1)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0xD00000000000001FLL;
  }

  if (v3)
  {
    v9 = v7;
  }

  else
  {
    v9 = "com.apple.springboard";
  }

  if (*a2 != 1)
  {
    v5 = 0xD000000000000024;
    v4 = "ed.bankconnect.reboot";
  }

  if (*a2)
  {
    v10 = v5;
  }

  else
  {
    v10 = 0xD00000000000001FLL;
  }

  if (*a2)
  {
    v11 = v4;
  }

  else
  {
    v11 = "com.apple.springboard";
  }

  if (v8 == v10 && (v9 | 0x8000000000000000) == (v11 | 0x8000000000000000))
  {
  }

  else
  {
    v13 = sub_226D6F21C();

    if ((v13 & 1) == 0)
    {
      return 0;
    }
  }

  v14 = type metadata accessor for ActivityRequest(0);
  if (sub_226D6D44C())
  {
    return a1[*(v14 + 24)] == a2[*(v14 + 24)];
  }

  return 0;
}

unint64_t sub_226B299A0(uint64_t a1, uint64_t a2)
{
  v2 = sub_226D6F13C();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_226B299EC(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = result;
  LODWORD(result) = 0;
  v3 = (v2 + 32);
  do
  {
    v5 = *v3++;
    v4 = v5;
    if ((v5 & ~result) == 0)
    {
      v4 = 0;
    }

    result = v4 | result;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_226B29AA0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A6B48, &qword_226D72788);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_226B29B10(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A6B48, &qword_226D72788);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_226B29B78(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_226B29BE0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_226B29C6C(char a1)
{
  if (qword_28105F590 != -1)
  {
    swift_once();
  }

  v2 = sub_226D6E07C();
  __swift_project_value_buffer(v2, qword_28105F598);
  v3 = sub_226D6E05C();
  v4 = sub_226D6E9EC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = 0xD00000000000001FLL;
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v20 = v7;
    *v6 = 136446210;
    if (a1)
    {
      if (a1 == 1)
      {
        v5 = 0xD000000000000025;
      }

      else
      {
        v5 = 0xD000000000000024;
      }

      if (a1 == 1)
      {
        v8 = "com.apple.financed.orders.tasks";
      }

      else
      {
        v8 = "ed.bankconnect.reboot";
      }
    }

    else
    {
      v8 = "com.apple.springboard";
    }

    v10 = sub_226AC4530(v5, v8 | 0x8000000000000000, &v20);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_226AB4000, v3, v4, "%{public}s: Run (nudge)", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    MEMORY[0x22AA8BEE0](v7, -1, -1);
    MEMORY[0x22AA8BEE0](v6, -1, -1);
  }

  else
  {
  }

  MEMORY[0x28223BE20](v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6BF8, &unk_226D72B80);
  sub_226D6EA6C();
  v11 = v20;
  v12 = sub_226D6E05C();
  v13 = sub_226D6E9EC();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = 0xD00000000000001FLL;
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v20 = v16;
    *v15 = 136446210;
    if (a1)
    {
      if (a1 == 1)
      {
        v14 = 0xD000000000000025;
      }

      else
      {
        v14 = 0xD000000000000024;
      }

      if (a1 == 1)
      {
        v17 = "com.apple.financed.orders.tasks";
      }

      else
      {
        v17 = "ed.bankconnect.reboot";
      }
    }

    else
    {
      v17 = "com.apple.springboard";
    }

    v18 = sub_226AC4530(v14, v17 | 0x8000000000000000, &v20);

    *(v15 + 4) = v18;
    _os_log_impl(&dword_226AB4000, v12, v13, "%{public}s: Calling activity handler", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v16);
    MEMORY[0x22AA8BEE0](v16, -1, -1);
    MEMORY[0x22AA8BEE0](v15, -1, -1);
  }

  v11();
}

uint64_t sub_226B2A028(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_226B2A090()
{
  result = qword_28105F470;
  if (!qword_28105F470)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28105F470);
  }

  return result;
}

uint64_t sub_226B2A0DC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_226B2A124()
{
  result = qword_28105F518;
  if (!qword_28105F518)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7A6C00, &qword_226D73DF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28105F518);
  }

  return result;
}

uint64_t sub_226B2A1AC(uint64_t *a1, int a2)
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

uint64_t sub_226B2A1F4(uint64_t result, int a2, int a3)
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

uint64_t sub_226B2A240()
{
  sub_226D67FDC();
  v0 = sub_226D67FAC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B70, &qword_226D73130);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_226D72B90;
  sub_226B2A4F4();
  *(v1 + 32) = sub_226D6E91C();
  *(v1 + 40) = sub_226D6E91C();
  *(v1 + 48) = sub_226D6E91C();
  *(v1 + 56) = sub_226D6E91C();
  v2 = sub_226D6E5CC();

  v3 = [objc_opt_self() andPredicateWithSubpredicates_];

  [v0 setPredicate_];
  v4 = sub_226D6EBBC();

  return v4;
}

void sub_226B2A3E8(unint64_t a1)
{
  v3 = *v1;
  if (a1 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_226D6EDFC())
  {
    v8 = v3;
    if (!i)
    {
      break;
    }

    v3 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x22AA8AFD0](v3, a1);
      }

      else
      {
        if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v5 = *(a1 + 8 * v3 + 32);
      }

      v6 = v5;
      v7 = (v3 + 1);
      if (__OFADD__(v3, 1))
      {
        break;
      }

      [v8 deleteObject_];

      ++v3;
      if (v7 == i)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

LABEL_12:
}

unint64_t sub_226B2A4F4()
{
  result = qword_28105F4B8;
  if (!qword_28105F4B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28105F4B8);
  }

  return result;
}

uint64_t sub_226B2A544(uint64_t a1)
{
  v2 = sub_226D6D4AC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v12 - v8;
  MEMORY[0x22AA8B3E0](*v1, v7);
  v10 = _s8MetadataV9CloudItemV6ObjectVMa_0(0);
  sub_226D6D52C();
  sub_226B300E8(&qword_281062B60, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_226D6E30C();
  sub_226AC40E8(v1 + *(v10 + 24), v9, &qword_27D7A8BE0, &unk_226D718F0);
  if ((*(v3 + 48))(v9, 1, v2) == 1)
  {
    sub_226D6F31C();
  }

  else
  {
    (*(v3 + 32))(v5, v9, v2);
    sub_226D6F31C();
    sub_226B300E8(&qword_27D7A6620, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
    sub_226D6E30C();
    (*(v3 + 8))(v5, v2);
  }

  return sub_226D6EC4C();
}

uint64_t sub_226B2A7EC()
{
  v1 = _s8MetadataV9CloudItemV6ObjectVMa_0(0);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + *(_s8MetadataV9CloudItemVMa_0(0) + 24));
  v6 = *(v5 + 16);
  result = MEMORY[0x277D84F90];
  if (v6)
  {
    v12 = MEMORY[0x277D84F90];
    sub_226D6EF8C();
    v8 = v5 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v9 = *(v2 + 72);
    do
    {
      sub_226B30080(v8, v4, _s8MetadataV9CloudItemV6ObjectVMa_0);
      v10 = *&v4[*(v1 + 28)];
      sub_226B2FF38(v4, _s8MetadataV9CloudItemV6ObjectVMa_0);
      sub_226D6EF6C();
      sub_226D6EF9C();
      sub_226D6EFAC();
      sub_226D6EF7C();
      v8 += v9;
      --v6;
    }

    while (v6);
    return v12;
  }

  return result;
}

uint64_t sub_226B2A968@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v30 - v4;
  v34 = sub_226D6D4AC();
  v6 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v38 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = _s8MetadataV9CloudItemV6ObjectVMa_0(0);
  v8 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v37 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6C40, &qword_226D72C08);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v30 - v14;
  v16 = _s8MetadataV9CloudItemVMa_0(0);
  v17 = *(v1 + *(v16 + 24));
  sub_226B30080(v1 + *(v16 + 20), v15, _s8MetadataV9CloudItemV6ObjectVMa_0);
  v39 = v17;
  sub_226AC40E8(v15, v12, &qword_27D7A6C40, &qword_226D72C08);

  sub_226CED2B8(v12);
  sub_226AC47B0(v15, &qword_27D7A6C40, &qword_226D72C08);
  v18 = *(v39 + 16);
  if (v18)
  {
    v30 = v39;
    v31 = a1;
    v19 = *(v36 + 24);
    v20 = v39 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v21 = *(v8 + 72);
    v33 = v6;
    v35 = (v6 + 48);
    v36 = v6 + 32;
    v22 = MEMORY[0x277D84F90];
    v23 = v34;
    v32 = v21;
    do
    {
      v24 = v37;
      sub_226B30080(v20, v37, _s8MetadataV9CloudItemV6ObjectVMa_0);
      sub_226AC40E8(v24 + v19, v5, &qword_27D7A8BE0, &unk_226D718F0);
      sub_226B2FF38(v24, _s8MetadataV9CloudItemV6ObjectVMa_0);
      if ((*v35)(v5, 1, v23) == 1)
      {
        sub_226AC47B0(v5, &qword_27D7A8BE0, &unk_226D718F0);
      }

      else
      {
        v25 = v19;
        v26 = *v36;
        (*v36)(v38, v5, v23);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v22 = sub_226BBB218(0, *(v22 + 2) + 1, 1, v22);
        }

        v28 = *(v22 + 2);
        v27 = *(v22 + 3);
        if (v28 >= v27 >> 1)
        {
          v22 = sub_226BBB218((v27 > 1), v28 + 1, 1, v22);
        }

        *(v22 + 2) = v28 + 1;
        v23 = v34;
        v26(&v22[((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v33 + 72) * v28], v38, v34);
        v19 = v25;
        v21 = v32;
      }

      v20 += v21;
      --v18;
    }

    while (v18);

    a1 = v31;
  }

  else
  {

    v22 = MEMORY[0x277D84F90];
  }

  sub_226B2ADCC(v22, a1);
}

uint64_t sub_226B2ADCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_226D6D4AC();
  MEMORY[0x28223BE20](*(v4 - 8));
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10.n128_f64[0] = MEMORY[0x28223BE20](v7);
  v11 = &v23 - v9;
  v12 = *(a1 + 16);
  if (v12)
  {
    v13 = *(v8 + 16);
    v14 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v26 = v8;
    v24 = a2;
    v25 = v13;
    (v13)(&v23 - v9, v14, v4, v10.n128_f64[0]);
    result = v26;
    if (v12 == 1)
    {
LABEL_3:
      v16 = v24;
      (*(result + 32))(v24, v11, v4);
      return (*(v26 + 56))(v16, 0, 1, v4);
    }

    else
    {
      v18 = (v26 + 32);
      v19 = 1;
      while (1)
      {
        v20 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          break;
        }

        v25(v6, v14 + *(result + 72) * v19, v4);
        sub_226B300E8(&qword_27D7A66D8, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
        v21 = sub_226D6E32C();
        v22 = *(v26 + 8);
        if (v21)
        {
          v22(v11, v4);
          (*v18)(v11, v6, v4);
        }

        else
        {
          v22(v6, v4);
        }

        ++v19;
        result = v26;
        if (v20 == v12)
        {
          goto LABEL_3;
        }
      }

      __break(1u);
    }
  }

  else
  {
    v17 = *(v8 + 56);

    return v17(a2, 1, 1, v4, v10);
  }

  return result;
}

uint64_t sub_226B2B07C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v51 = sub_226D6D4AC();
  v4 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v45 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v44 = &v41 - v7;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6C30, &unk_226D74330);
  MEMORY[0x28223BE20](v49);
  v9 = &v41 - v8;
  IsMarkedAsCompleteEntryVMa = _s8MetadataV23IsMarkedAsCompleteEntryVMa(0);
  MEMORY[0x28223BE20](IsMarkedAsCompleteEntryVMa);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16.n128_f64[0] = MEMORY[0x28223BE20](v13);
  v17 = *(a1 + 16);
  if (v17)
  {
    v41 = a2;
    v50 = v14;
    v48 = a1 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
    v52 = &v41 - v15;
    result = sub_226B30080(v48, &v41 - v15, _s8MetadataV23IsMarkedAsCompleteEntryVMa);
    if (v17 == 1)
    {
LABEL_3:
      v19 = v41;
      sub_226B2FFD8(v52, v41, _s8MetadataV23IsMarkedAsCompleteEntryVMa);
      return (*(v50 + 56))(v19, 0, 1, IsMarkedAsCompleteEntryVMa);
    }

    v21 = (v4 + 48);
    v42 = v12;
    v43 = (v4 + 32);
    v46 = (v4 + 8);
    v47 = v17;
    v22 = 1;
    while (1)
    {
      v23 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        return result;
      }

      sub_226B30080(v48 + *(v50 + 72) * v22, v12, _s8MetadataV23IsMarkedAsCompleteEntryVMa);
      v24 = IsMarkedAsCompleteEntryVMa;
      v25 = *(IsMarkedAsCompleteEntryVMa + 20);
      v26 = *(v49 + 48);
      sub_226AC40E8(&v52[v25], v9, &qword_27D7A8BE0, &unk_226D718F0);
      sub_226AC40E8(&v12[v25], &v9[v26], &qword_27D7A8BE0, &unk_226D718F0);
      v27 = *v21;
      v28 = v51;
      LODWORD(v25) = (*v21)(v9, 1, v51);
      v29 = v27(&v9[v26], 1, v28);
      if (v25 == 1)
      {
        if (v29 != 1)
        {
          sub_226AC47B0(&v9[v26], &qword_27D7A8BE0, &unk_226D718F0);
          IsMarkedAsCompleteEntryVMa = v24;
          goto LABEL_21;
        }

        IsMarkedAsCompleteEntryVMa = v24;
        if (*v52)
        {
          goto LABEL_15;
        }
      }

      else
      {
        if (v29 == 1)
        {
          (*v46)(v9, v51);
          IsMarkedAsCompleteEntryVMa = v24;
          goto LABEL_9;
        }

        v30 = v51;
        v31 = v44;
        v32 = *v43;
        (*v43)(v44, v9, v51);
        v33 = &v9[v26];
        v34 = v45;
        v32(v45, v33, v30);
        if (sub_226D6D40C())
        {
          v35 = v34;
          v36 = *v46;
          (*v46)(v35, v30);
          v36(v31, v30);
          IsMarkedAsCompleteEntryVMa = v24;
          v12 = v42;
LABEL_21:
          v37 = v52;
          sub_226B2FF38(v52, _s8MetadataV23IsMarkedAsCompleteEntryVMa);
          result = sub_226B2FFD8(v12, v37, _s8MetadataV23IsMarkedAsCompleteEntryVMa);
          goto LABEL_10;
        }

        v38 = sub_226D6D3FC();
        v39 = v34;
        v40 = *v46;
        (*v46)(v39, v30);
        v40(v31, v30);
        IsMarkedAsCompleteEntryVMa = v24;
        v12 = v42;
        if (v38 & 1) == 0 && (*v52)
        {
LABEL_15:
          if ((*v12 & 1) == 0)
          {
            goto LABEL_21;
          }
        }
      }

LABEL_9:
      result = sub_226B2FF38(v12, _s8MetadataV23IsMarkedAsCompleteEntryVMa);
LABEL_10:
      ++v22;
      if (v23 == v47)
      {
        goto LABEL_3;
      }
    }
  }

  v20 = *(v14 + 56);

  return v20(a2, 1, 1, IsMarkedAsCompleteEntryVMa, v16);
}

void sub_226B2B5D4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_226D6D4AC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  MEMORY[0x28223BE20](v8 - 8);
  v28 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v23 - v12;
  MEMORY[0x22AA8B3E0](*v1, v11);
  v14 = _s8MetadataV9CloudItemV6ObjectVMa_0(0);
  v15 = sub_226D6D52C();
  v26 = sub_226B300E8(&qword_281062B60, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  v27 = v15;
  sub_226D6E30C();
  sub_226AC40E8(v1 + *(v14 + 24), v13, &qword_27D7A8BE0, &unk_226D718F0);
  v16 = *(v5 + 48);
  v17 = v16(v13, 1, v4);
  v24 = v7;
  v25 = v5;
  if (v17 == 1)
  {
    sub_226D6F31C();
  }

  else
  {
    (*(v5 + 32))(v7, v13, v4);
    sub_226D6F31C();
    sub_226B300E8(&qword_27D7A6620, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
    sub_226D6E30C();
    (*(v5 + 8))(v7, v4);
  }

  sub_226D6EC4C();
  v18 = _s8MetadataV9CloudItemVMa_0(0);
  v19 = (v1 + *(v18 + 20));
  MEMORY[0x22AA8B3E0](*v19);
  sub_226D6E30C();
  v20 = v28;
  sub_226AC40E8(v19 + *(v14 + 24), v28, &qword_27D7A8BE0, &unk_226D718F0);
  if (v16(v20, 1, v4) == 1)
  {
    sub_226D6F31C();
  }

  else
  {
    v22 = v24;
    v21 = v25;
    (*(v25 + 32))(v24, v20, v4);
    sub_226D6F31C();
    sub_226B300E8(&qword_27D7A6620, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
    sub_226D6E30C();
    (*(v21 + 8))(v22, v4);
  }

  sub_226D6EC4C();
  sub_226AF0EDC(a1, *(v2 + *(v18 + 24)));
}

uint64_t sub_226B2B9CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *))
{
  sub_226D6F2FC();
  a3(v5);
  return sub_226D6F35C();
}

uint64_t sub_226B2BA30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  sub_226D6F2FC();
  a4(v6);
  return sub_226D6F35C();
}

uint64_t sub_226B2BA74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_226B2A540() & 1) == 0 || (sub_226B2A540() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 24);
  v7 = *(a1 + v6);
  v8 = *(a2 + v6);

  return sub_226B2E760(v7, v8);
}

uint64_t sub_226B2BAF4(uint64_t a1)
{
  v3 = sub_226D6D4AC();
  v28 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v27 - v10;
  v12 = _s8MetadataV9CloudItemVMa_0(0);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = (v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = _s8MetadataV15CloudItemStatusOMa_0(0);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226B30080(v1, v18, _s8MetadataV15CloudItemStatusOMa_0);
  v19 = (*(v13 + 48))(v18, 2, v12);
  if (v19)
  {
    if (v19 == 1)
    {
      v20 = 0;
    }

    else
    {
      v20 = 2;
    }

    return MEMORY[0x22AA8B3B0](v20);
  }

  else
  {
    sub_226B2FFD8(v18, v15, _s8MetadataV9CloudItemVMa_0);
    MEMORY[0x22AA8B3B0](1);
    MEMORY[0x22AA8B3E0](*v15);
    v21 = _s8MetadataV9CloudItemV6ObjectVMa_0(0);
    v22 = sub_226D6D52C();
    v27[1] = sub_226B300E8(&qword_281062B60, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
    v27[2] = v22;
    sub_226D6E30C();
    sub_226AC40E8(v15 + *(v21 + 24), v11, &qword_27D7A8BE0, &unk_226D718F0);
    v23 = v28;
    v27[0] = *(v28 + 48);
    if ((v27[0])(v11, 1, v3) == 1)
    {
      sub_226D6F31C();
    }

    else
    {
      (*(v23 + 32))(v5, v11, v3);
      sub_226D6F31C();
      sub_226B300E8(&qword_27D7A6620, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
      sub_226D6E30C();
      (*(v23 + 8))(v5, v3);
    }

    sub_226D6EC4C();
    v25 = (v15 + *(v12 + 20));
    MEMORY[0x22AA8B3E0](*v25);
    sub_226D6E30C();
    sub_226AC40E8(v25 + *(v21 + 24), v8, &qword_27D7A8BE0, &unk_226D718F0);
    if ((v27[0])(v8, 1, v3) == 1)
    {
      sub_226D6F31C();
    }

    else
    {
      v26 = v28;
      (*(v28 + 32))(v5, v8, v3);
      sub_226D6F31C();
      sub_226B300E8(&qword_27D7A6620, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
      sub_226D6E30C();
      (*(v26 + 8))(v5, v3);
    }

    sub_226D6EC4C();
    sub_226AF0EDC(a1, *(v15 + *(v12 + 24)));
    return sub_226B2FF38(v15, _s8MetadataV9CloudItemVMa_0);
  }
}

uint64_t sub_226B2C0A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  sub_226D6F2FC();
  sub_226B2C178(v5, a3);
  return sub_226D6F35C();
}

uint64_t sub_226B2C130(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  sub_226D6F2FC();
  sub_226B2C178(v6, a4);
  return sub_226D6F35C();
}

uint64_t sub_226B2C178(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = sub_226D6D4AC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v13 - v9;
  sub_226D6EC4C();
  MEMORY[0x22AA8B3E0](*(v2 + 8));
  v11 = a2(0);
  sub_226AC40E8(v2 + *(v11 + 24), v10, &qword_27D7A8BE0, &unk_226D718F0);
  if ((*(v5 + 48))(v10, 1, v4) == 1)
  {
    return sub_226D6F31C();
  }

  (*(v5 + 32))(v7, v10, v4);
  sub_226D6F31C();
  sub_226B300E8(&qword_27D7A6620, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  sub_226D6E30C();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_226B2C420(uint64_t a1)
{
  v2 = v1;
  v36 = _s8MetadataV9LocalItemV14PendingConsentVMa(0);
  v34 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v31 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_226D6D4AC();
  v32 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v30 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6C10, &unk_226D731E0);
  MEMORY[0x28223BE20](v6 - 8);
  v33 = &v29 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  MEMORY[0x28223BE20](v8 - 8);
  v29 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v29 - v11;
  v13 = _s8MetadataV9LocalItemV7ConsentVMa(0);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6C20, &qword_226D72BF8);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v29 - v18;
  v35 = v2;
  sub_226AC40E8(v2, &v29 - v18, &qword_27D7A6C20, &qword_226D72BF8);
  if ((*(v14 + 48))(v19, 1, v13) == 1)
  {
    sub_226D6F31C();
    v20 = v32;
  }

  else
  {
    sub_226B2FFD8(v19, v16, _s8MetadataV9LocalItemV7ConsentVMa);
    sub_226D6F31C();
    sub_226D6EC4C();
    MEMORY[0x22AA8B3E0](*(v16 + 1));
    sub_226AC40E8(&v16[*(v13 + 24)], v12, &qword_27D7A8BE0, &unk_226D718F0);
    v20 = v32;
    if ((*(v32 + 48))(v12, 1, v4) == 1)
    {
      sub_226D6F31C();
    }

    else
    {
      v21 = v30;
      (*(v20 + 32))(v30, v12, v4);
      sub_226D6F31C();
      sub_226B300E8(&qword_27D7A6620, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
      sub_226D6E30C();
      (*(v20 + 8))(v21, v4);
    }

    sub_226B2FF38(v16, _s8MetadataV9LocalItemV7ConsentVMa);
  }

  v22 = v36;
  v23 = v33;
  v24 = _s8MetadataV9LocalItemVMa_0(0);
  sub_226AC40E8(v35 + *(v24 + 20), v23, &qword_27D7A6C10, &unk_226D731E0);
  if ((*(v34 + 48))(v23, 1, v22) == 1)
  {
    return sub_226D6F31C();
  }

  v26 = v31;
  sub_226B2FFD8(v23, v31, _s8MetadataV9LocalItemV14PendingConsentVMa);
  sub_226D6F31C();
  sub_226D6EC4C();
  MEMORY[0x22AA8B3E0](*(v26 + 8));
  v27 = v29;
  sub_226AC40E8(v26 + *(v22 + 24), v29, &qword_27D7A8BE0, &unk_226D718F0);
  if ((*(v20 + 48))(v27, 1, v4) == 1)
  {
    sub_226D6F31C();
  }

  else
  {
    v28 = v30;
    (*(v20 + 32))(v30, v27, v4);
    sub_226D6F31C();
    sub_226B300E8(&qword_27D7A6620, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
    sub_226D6E30C();
    (*(v20 + 8))(v28, v4);
  }

  return sub_226B2FF38(v26, _s8MetadataV9LocalItemV14PendingConsentVMa);
}

uint64_t sub_226B2CA8C(uint64_t a1)
{
  v57 = a1;
  v1 = sub_226D6D4AC();
  v51 = *(v1 - 8);
  v52 = v1;
  MEMORY[0x28223BE20](v1);
  v50 = &v46 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = _s8MetadataV9LocalItemV14PendingConsentVMa(0);
  v53 = *(v3 - 8);
  v54 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6C10, &unk_226D731E0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v46 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v46 - v13;
  v55 = _s8MetadataV9LocalItemV7ConsentVMa(0);
  v49 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v16 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6C20, &qword_226D72BF8);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v46 - v18;
  v20 = _s8MetadataV9LocalItemVMa_0(0);
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v46 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = _s8MetadataV15LocalItemStatusOMa_0(0);
  MEMORY[0x28223BE20](v24 - 8);
  v26 = &v46 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226B30080(v56, v26, _s8MetadataV15LocalItemStatusOMa_0);
  v27 = (*(v21 + 48))(v26, 2, v20);
  if (v27)
  {
    if (v27 == 1)
    {
      v28 = 0;
    }

    else
    {
      v28 = 2;
    }

    return MEMORY[0x22AA8B3B0](v28);
  }

  v56 = v8;
  v47 = v11;
  v48 = v5;
  v29 = v50;
  v30 = v51;
  v31 = v52;
  sub_226B2FFD8(v26, v23, _s8MetadataV9LocalItemVMa_0);
  MEMORY[0x22AA8B3B0](1);
  sub_226AC40E8(v23, v19, &qword_27D7A6C20, &qword_226D72BF8);
  if ((*(v49 + 48))(v19, 1, v55) == 1)
  {
    sub_226D6F31C();
    v32 = v31;
    v33 = v30;
LABEL_11:
    v38 = v29;
    goto LABEL_13;
  }

  v35 = v19;
  v36 = v16;
  sub_226B2FFD8(v35, v16, _s8MetadataV9LocalItemV7ConsentVMa);
  sub_226D6F31C();
  sub_226D6EC4C();
  MEMORY[0x22AA8B3E0](*(v16 + 1));
  v37 = v14;
  sub_226AC40E8(&v16[*(v55 + 24)], v14, &qword_27D7A8BE0, &unk_226D718F0);
  v33 = v30;
  v32 = v31;
  if ((*(v30 + 48))(v37, 1, v31) == 1)
  {
    sub_226D6F31C();
    sub_226B2FF38(v36, _s8MetadataV9LocalItemV7ConsentVMa);
    goto LABEL_11;
  }

  v39 = v36;
  v38 = v29;
  (*(v30 + 32))(v29, v37, v32);
  sub_226D6F31C();
  sub_226B300E8(&qword_27D7A6620, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  sub_226D6E30C();
  (*(v30 + 8))(v29, v32);
  sub_226B2FF38(v39, _s8MetadataV9LocalItemV7ConsentVMa);
LABEL_13:
  v40 = v53;
  v41 = v56;
  sub_226AC40E8(&v23[*(v20 + 20)], v56, &qword_27D7A6C10, &unk_226D731E0);
  v42 = v54;
  if ((*(v40 + 48))(v41, 1, v54) == 1)
  {
    sub_226D6F31C();
    return sub_226B2FF38(v23, _s8MetadataV9LocalItemVMa_0);
  }

  else
  {
    v43 = v41;
    v44 = v48;
    sub_226B2FFD8(v43, v48, _s8MetadataV9LocalItemV14PendingConsentVMa);
    sub_226D6F31C();
    sub_226D6EC4C();
    MEMORY[0x22AA8B3E0](*(v44 + 8));
    v45 = v47;
    sub_226AC40E8(v44 + *(v42 + 24), v47, &qword_27D7A8BE0, &unk_226D718F0);
    if ((*(v33 + 48))(v45, 1, v32) == 1)
    {
      sub_226D6F31C();
    }

    else
    {
      (*(v33 + 32))(v38, v45, v32);
      sub_226D6F31C();
      sub_226B300E8(&qword_27D7A6620, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
      sub_226D6E30C();
      (*(v33 + 8))(v38, v32);
    }

    sub_226B2FF38(v23, _s8MetadataV9LocalItemVMa_0);
    return sub_226B2FF38(v44, _s8MetadataV9LocalItemV14PendingConsentVMa);
  }
}

uint64_t sub_226B2D260(uint64_t a1)
{
  v76 = _s8MetadataV9LocalItemV14PendingConsentVMa(0);
  v80 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v77 = v70 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6C10, &unk_226D731E0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v70 - v5;
  v7 = _s8MetadataV9LocalItemV7ConsentVMa(0);
  v78 = *(v7 - 8);
  v79 = v7;
  MEMORY[0x28223BE20](v7);
  v75 = v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6C20, &qword_226D72BF8);
  MEMORY[0x28223BE20](v9 - 8);
  v88 = v70 - v10;
  v90 = _s8MetadataV9LocalItemVMa_0(0);
  v87 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v81 = v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_226D6D4AC();
  v13 = *(v12 - 8);
  v83 = v12;
  v84 = v13;
  MEMORY[0x28223BE20](v12);
  v82 = v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = _s8MetadataV15LocalItemStatusOMa_0(0);
  MEMORY[0x28223BE20](v15 - 8);
  v86 = v70 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  MEMORY[0x28223BE20](v17 - 8);
  v74 = v70 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v73 = v70 - v20;
  MEMORY[0x28223BE20](v21);
  v23 = v70 - v22;
  MEMORY[0x28223BE20](v24);
  v26 = v70 - v25;
  v27 = _s8MetadataV9CloudItemVMa_0(0);
  v28 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v30 = (v70 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  v31 = _s8MetadataV15CloudItemStatusOMa_0(0);
  MEMORY[0x28223BE20](v31 - 8);
  v33 = v70 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226D6E42C();
  sub_226D6F31C();
  v85 = _s8MetadataVMa_0(0);
  v34 = *(v85 + 24);
  v89 = v1;
  sub_226B30080(v1 + v34, v33, _s8MetadataV15CloudItemStatusOMa_0);
  v35 = (*(v28 + 48))(v33, 2, v27);
  if (v35)
  {
    if (v35 == 1)
    {
      v36 = 0;
    }

    else
    {
      v36 = 2;
    }

    MEMORY[0x22AA8B3B0](v36);
    v42 = v89;
    v43 = v90;
    v45 = v87;
    v44 = v88;
    v46 = v85;
    v47 = v86;
    v48 = v6;
  }

  else
  {
    v71 = v23;
    v72 = v6;
    sub_226B2FFD8(v33, v30, _s8MetadataV9CloudItemVMa_0);
    MEMORY[0x22AA8B3B0](1);
    MEMORY[0x22AA8B3E0](*v30);
    v37 = _s8MetadataV9CloudItemV6ObjectVMa_0(0);
    v38 = sub_226D6D52C();
    v39 = sub_226B300E8(&qword_281062B60, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
    v70[2] = v38;
    v70[1] = v39;
    sub_226D6E30C();
    sub_226AC40E8(v30 + *(v37 + 24), v26, &qword_27D7A8BE0, &unk_226D718F0);
    v41 = v83;
    v40 = v84;
    v70[0] = *(v84 + 48);
    if ((v70[0])(v26, 1, v83) == 1)
    {
      sub_226D6F31C();
    }

    else
    {
      v49 = v82;
      (*(v40 + 32))(v82, v26, v41);
      sub_226D6F31C();
      sub_226B300E8(&qword_27D7A6620, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
      sub_226D6E30C();
      (*(v40 + 8))(v49, v41);
    }

    v45 = v87;
    sub_226D6EC4C();
    v50 = (v30 + *(v27 + 20));
    MEMORY[0x22AA8B3E0](*v50);
    sub_226D6E30C();
    v51 = v71;
    sub_226AC40E8(v50 + *(v37 + 24), v71, &qword_27D7A8BE0, &unk_226D718F0);
    if ((v70[0])(v51, 1, v41) == 1)
    {
      sub_226D6F31C();
    }

    else
    {
      v52 = v84;
      v53 = v82;
      (*(v84 + 32))(v82, v51, v41);
      sub_226D6F31C();
      sub_226B300E8(&qword_27D7A6620, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
      sub_226D6E30C();
      (*(v52 + 8))(v53, v41);
    }

    v48 = v72;
    v43 = v90;
    sub_226D6EC4C();
    sub_226AF0EDC(a1, *(v30 + *(v27 + 24)));
    sub_226B2FF38(v30, _s8MetadataV9CloudItemVMa_0);
    v44 = v88;
    v42 = v89;
    v46 = v85;
    v47 = v86;
  }

  sub_226B30080(v42 + *(v46 + 28), v47, _s8MetadataV15LocalItemStatusOMa_0);
  v54 = (*(v45 + 48))(v47, 2, v43);
  if (v54)
  {
    if (v54 == 1)
    {
      v55 = 0;
    }

    else
    {
      v55 = 2;
    }

    return MEMORY[0x22AA8B3B0](v55);
  }

  else
  {
    v56 = v81;
    sub_226B2FFD8(v47, v81, _s8MetadataV9LocalItemVMa_0);
    MEMORY[0x22AA8B3B0](1);
    sub_226AC40E8(v56, v44, &qword_27D7A6C20, &qword_226D72BF8);
    v57 = v79;
    if ((*(v78 + 48))(v44, 1, v79) == 1)
    {
      sub_226D6F31C();
      v59 = v76;
      v58 = v77;
      v60 = v83;
      v61 = v84;
    }

    else
    {
      v63 = v75;
      sub_226B2FFD8(v44, v75, _s8MetadataV9LocalItemV7ConsentVMa);
      v64 = v57;
      sub_226D6F31C();
      sub_226D6EC4C();
      MEMORY[0x22AA8B3E0](*(v63 + 8));
      v65 = v73;
      sub_226AC40E8(v63 + *(v64 + 24), v73, &qword_27D7A8BE0, &unk_226D718F0);
      v60 = v83;
      v61 = v84;
      v66 = (*(v84 + 48))(v65, 1, v83);
      v59 = v76;
      v58 = v77;
      if (v66 == 1)
      {
        sub_226D6F31C();
      }

      else
      {
        v67 = v82;
        (*(v61 + 32))(v82, v65, v60);
        sub_226D6F31C();
        sub_226B300E8(&qword_27D7A6620, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
        sub_226D6E30C();
        (*(v61 + 8))(v67, v60);
      }

      sub_226B2FF38(v63, _s8MetadataV9LocalItemV7ConsentVMa);
      v43 = v90;
    }

    sub_226AC40E8(v56 + *(v43 + 20), v48, &qword_27D7A6C10, &unk_226D731E0);
    if ((*(v80 + 48))(v48, 1, v59) == 1)
    {
      sub_226D6F31C();
      return sub_226B2FF38(v56, _s8MetadataV9LocalItemVMa_0);
    }

    else
    {
      sub_226B2FFD8(v48, v58, _s8MetadataV9LocalItemV14PendingConsentVMa);
      sub_226D6F31C();
      sub_226D6EC4C();
      MEMORY[0x22AA8B3E0](*(v58 + 8));
      v68 = v74;
      sub_226AC40E8(v58 + *(v59 + 24), v74, &qword_27D7A8BE0, &unk_226D718F0);
      if ((*(v61 + 48))(v68, 1, v60) == 1)
      {
        sub_226D6F31C();
      }

      else
      {
        v69 = v82;
        (*(v61 + 32))(v82, v68, v60);
        sub_226D6F31C();
        sub_226B300E8(&qword_27D7A6620, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
        sub_226D6E30C();
        (*(v61 + 8))(v69, v60);
      }

      sub_226B2FF38(v56, _s8MetadataV9LocalItemVMa_0);
      return sub_226B2FF38(v58, _s8MetadataV9LocalItemV14PendingConsentVMa);
    }
  }
}

uint64_t sub_226B2DF44(uint64_t *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v4 && (sub_226D6F21C() & 1) == 0 || *(a1 + 16) != *(a2 + 16) || (sub_226B2BAF0() & 1) == 0)
  {
    return 0;
  }

  return sub_226B2CA88();
}

uint64_t sub_226B2DFEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_226D6B9BC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9.n128_f64[0] = MEMORY[0x28223BE20](v8);
  v11 = &v25 - v10;
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
    v22 = 0;
    return v22 & 1;
  }

  if (!v12 || a1 == a2)
  {
    v22 = 1;
    return v22 & 1;
  }

  v13 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v14 = a1 + v13;
  v15 = a2 + v13;
  v17 = *(v5 + 16);
  v16 = v5 + 16;
  v18 = (v16 - 8);
  v25 = *(v16 + 56);
  v26 = v17;
  while (1)
  {
    v19 = v26;
    result = (v26)(v11, v14, v4, v9);
    if (!v12)
    {
      break;
    }

    v21 = v16;
    v19(v7, v15, v4);
    sub_226B300E8(&qword_27D7A6C50, MEMORY[0x277CC8058], MEMORY[0x277CC8070]);
    v22 = sub_226D6E35C();
    v23 = *v18;
    (*v18)(v7, v4);
    v23(v11, v4);
    if (v22)
    {
      v15 += v25;
      v14 += v25;
      v24 = v12-- == 1;
      v16 = v21;
      if (!v24)
      {
        continue;
      }
    }

    return v22 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_226B2E200(uint64_t a1, uint64_t a2)
{
  v4 = _s8MetadataV9CloudItemV6ObjectVMa(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v18 - v9;
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
LABEL_12:
    v16 = 0;
    return v16 & 1;
  }

  if (v11 && a1 != a2)
  {
    v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v13 = a1 + v12;
    v14 = a2 + v12;
    v15 = *(v8 + 72);
    while (1)
    {
      sub_226B30080(v13, v10, _s8MetadataV9CloudItemV6ObjectVMa);
      sub_226B30080(v14, v6, _s8MetadataV9CloudItemV6ObjectVMa);
      if ((sub_226D6D4EC() & 1) == 0)
      {
        break;
      }

      sub_226AE59B4(0, &qword_27D7A6580, 0x277D82BB8);
      if ((sub_226D6EC3C() & 1) == 0)
      {
        break;
      }

      v16 = sub_226D6D44C();
      sub_226B2FF38(v6, _s8MetadataV9CloudItemV6ObjectVMa);
      sub_226B2FF38(v10, _s8MetadataV9CloudItemV6ObjectVMa);
      if (v16)
      {
        v14 += v15;
        v13 += v15;
        if (--v11)
        {
          continue;
        }
      }

      return v16 & 1;
    }

    sub_226B2FF38(v6, _s8MetadataV9CloudItemV6ObjectVMa);
    sub_226B2FF38(v10, _s8MetadataV9CloudItemV6ObjectVMa);
    goto LABEL_12;
  }

  v16 = 1;
  return v16 & 1;
}

uint64_t sub_226B2E43C(uint64_t a1, uint64_t a2)
{
  v4 = _s8MetadataV9CloudItemV6ObjectVMa_1(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v18 - v9;
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
LABEL_12:
    v16 = 0;
    return v16 & 1;
  }

  if (v11 && a1 != a2)
  {
    v12 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v13 = a1 + v12;
    v14 = a2 + v12;
    sub_226AE59B4(0, &qword_27D7A6580, 0x277D82BB8);
    v15 = *(v5 + 72);
    while (1)
    {
      sub_226B30080(v13, v10, _s8MetadataV9CloudItemV6ObjectVMa_1);
      sub_226B30080(v14, v7, _s8MetadataV9CloudItemV6ObjectVMa_1);
      if ((sub_226D6EC3C() & 1) == 0 || (sub_226D6D4EC() & 1) == 0)
      {
        break;
      }

      v16 = sub_226D6D44C();
      sub_226B2FF38(v7, _s8MetadataV9CloudItemV6ObjectVMa_1);
      sub_226B2FF38(v10, _s8MetadataV9CloudItemV6ObjectVMa_1);
      if (v16)
      {
        v14 += v15;
        v13 += v15;
        if (--v11)
        {
          continue;
        }
      }

      return v16 & 1;
    }

    sub_226B2FF38(v7, _s8MetadataV9CloudItemV6ObjectVMa_1);
    sub_226B2FF38(v10, _s8MetadataV9CloudItemV6ObjectVMa_1);
    goto LABEL_12;
  }

  v16 = 1;
  return v16 & 1;
}

uint64_t sub_226B2E674(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_226B2E6D0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_226D6F21C() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_226B2E760(uint64_t a1, uint64_t a2)
{
  v4 = sub_226D6D4AC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  MEMORY[0x28223BE20](v8 - 8);
  v42 = &v32 - v9;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6C30, &unk_226D74330);
  MEMORY[0x28223BE20](v39);
  v11 = &v32 - v10;
  v43 = _s8MetadataV9CloudItemV6ObjectVMa_0(0);
  MEMORY[0x28223BE20](v43);
  v13 = (&v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v14);
  v17 = (&v32 - v16);
  v18 = *(a1 + 16);
  if (v18 != *(a2 + 16))
  {
LABEL_19:
    v30 = 0;
    return v30 & 1;
  }

  if (v18 && a1 != a2)
  {
    v35 = v7;
    v19 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    v20 = a1 + v19;
    v21 = a2 + v19;
    v41 = (v5 + 48);
    v33 = &v32 - v16;
    v34 = (v5 + 32);
    v36 = (v5 + 8);
    v38 = *(v15 + 72);
    while (1)
    {
      sub_226B30080(v20, v17, _s8MetadataV9CloudItemV6ObjectVMa_0);
      v40 = v20;
      sub_226B30080(v21, v13, _s8MetadataV9CloudItemV6ObjectVMa_0);
      if (*v17 != *v13 || (sub_226D6D4EC() & 1) == 0)
      {
        break;
      }

      v22 = *(v43 + 24);
      v23 = *(v39 + 48);
      sub_226AC40E8(v17 + v22, v11, &qword_27D7A8BE0, &unk_226D718F0);
      sub_226AC40E8(v13 + v22, &v11[v23], &qword_27D7A8BE0, &unk_226D718F0);
      v24 = *v41;
      if ((*v41)(v11, 1, v4) == 1)
      {
        if (v24(&v11[v23], 1, v4) != 1)
        {
          goto LABEL_17;
        }

        sub_226AC47B0(v11, &qword_27D7A8BE0, &unk_226D718F0);
      }

      else
      {
        sub_226AC40E8(v11, v42, &qword_27D7A8BE0, &unk_226D718F0);
        if (v24(&v11[v23], 1, v4) == 1)
        {
          (*v36)(v42, v4);
LABEL_17:
          sub_226AC47B0(v11, &qword_27D7A6C30, &unk_226D74330);
          break;
        }

        v25 = &v11[v23];
        v26 = v4;
        v27 = v35;
        (*v34)(v35, v25, v26);
        sub_226B300E8(&qword_27D7A6C38, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
        v37 = sub_226D6E35C();
        v28 = *v36;
        v29 = v27;
        v4 = v26;
        (*v36)(v29, v26);
        v28(v42, v26);
        v17 = v33;
        sub_226AC47B0(v11, &qword_27D7A8BE0, &unk_226D718F0);
        if ((v37 & 1) == 0)
        {
          break;
        }
      }

      sub_226AE59B4(0, &qword_27D7A6580, 0x277D82BB8);
      v30 = sub_226D6EC3C();
      sub_226B2FF38(v13, _s8MetadataV9CloudItemV6ObjectVMa_0);
      sub_226B2FF38(v17, _s8MetadataV9CloudItemV6ObjectVMa_0);
      if (v30)
      {
        v21 += v38;
        v20 = v40 + v38;
        if (--v18)
        {
          continue;
        }
      }

      return v30 & 1;
    }

    sub_226B2FF38(v13, _s8MetadataV9CloudItemV6ObjectVMa_0);
    sub_226B2FF38(v17, _s8MetadataV9CloudItemV6ObjectVMa_0);
    goto LABEL_19;
  }

  v30 = 1;
  return v30 & 1;
}

uint64_t sub_226B2ECEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_226D6D4AC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v38 - v9;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6C30, &unk_226D74330);
  MEMORY[0x28223BE20](v49);
  v12 = &v38 - v11;
  v46 = _s8MetadataV9CloudItemV6ObjectVMa_2(0);
  MEMORY[0x28223BE20](v46);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = &v38 - v17;
  v19 = *(a1 + 16);
  if (v19 != *(a2 + 16))
  {
    return 0;
  }

  if (!v19 || a1 == a2)
  {
    return 1;
  }

  v39 = v7;
  v20 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v21 = v5;
  v22 = a1 + v20;
  v23 = a2 + v20;
  v38 = (v21 + 32);
  v40 = (v21 + 8);
  v41 = v10;
  v43 = *(v16 + 72);
  v44 = (v21 + 48);
  v45 = v12;
  v24 = v46;
  while (1)
  {
    result = sub_226B30080(v22, v18, _s8MetadataV9CloudItemV6ObjectVMa_2);
    if (!v19)
    {
      break;
    }

    v48 = v23;
    sub_226B30080(v23, v14, _s8MetadataV9CloudItemV6ObjectVMa_2);
    if ((sub_226D6D44C() & 1) == 0)
    {
      goto LABEL_22;
    }

    if ((sub_226D6D4EC() & 1) == 0)
    {
      goto LABEL_22;
    }

    sub_226AE59B4(0, &qword_27D7A6580, 0x277D82BB8);
    if ((sub_226D6EC3C() & 1) == 0 || v18[v24[7]] != v14[v24[7]])
    {
      goto LABEL_22;
    }

    v47 = v22;
    v26 = v24[8];
    v27 = *(v49 + 48);
    sub_226AC40E8(&v18[v26], v12, &qword_27D7A8BE0, &unk_226D718F0);
    sub_226AC40E8(&v14[v26], &v12[v27], &qword_27D7A8BE0, &unk_226D718F0);
    v28 = *v44;
    if ((*v44)(v12, 1, v4) == 1)
    {
      if (v28(&v12[v27], 1, v4) != 1)
      {
        goto LABEL_21;
      }

      sub_226AC47B0(v12, &qword_27D7A8BE0, &unk_226D718F0);
      v29 = v47;
    }

    else
    {
      v30 = v41;
      sub_226AC40E8(v12, v41, &qword_27D7A8BE0, &unk_226D718F0);
      if (v28(&v12[v27], 1, v4) == 1)
      {
        (*v40)(v30, v4);
LABEL_21:
        sub_226AC47B0(v12, &qword_27D7A6C30, &unk_226D74330);
LABEL_22:
        sub_226B2FF38(v14, _s8MetadataV9CloudItemV6ObjectVMa_2);
        sub_226B2FF38(v18, _s8MetadataV9CloudItemV6ObjectVMa_2);
        return 0;
      }

      v31 = &v12[v27];
      v32 = v39;
      (*v38)(v39, v31, v4);
      sub_226B300E8(&qword_27D7A6C38, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
      v42 = sub_226D6E35C();
      v33 = *v40;
      (*v40)(v32, v4);
      v33(v30, v4);
      sub_226AC47B0(v45, &qword_27D7A8BE0, &unk_226D718F0);
      v24 = v46;
      v29 = v47;
      if ((v42 & 1) == 0)
      {
        goto LABEL_22;
      }
    }

    v34 = v24[9];
    v35 = *&v18[v34];
    v36 = *&v14[v34];
    sub_226B2FF38(v14, _s8MetadataV9CloudItemV6ObjectVMa_2);
    sub_226B2FF38(v18, _s8MetadataV9CloudItemV6ObjectVMa_2);
    result = v35 == v36;
    if (v35 == v36)
    {
      v23 = v48 + v43;
      v22 = v29 + v43;
      v37 = v19-- == 1;
      v12 = v45;
      if (!v37)
      {
        continue;
      }
    }

    return result;
  }

  __break(1u);
  return result;
}

BOOL sub_226B2F288(void *a1, void *a2, uint64_t (*a3)(void))
{
  v6 = sub_226D6D4AC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6C30, &unk_226D74330);
  MEMORY[0x28223BE20](v13);
  v15 = &v24 - v14;
  sub_226AE59B4(0, &qword_27D7A6580, 0x277D82BB8);
  if ((sub_226D6EC3C() & 1) == 0 || a1[1] != a2[1])
  {
    return 0;
  }

  v16 = v7;
  v17 = *(a3(0) + 24);
  v18 = *(v13 + 48);
  sub_226AC40E8(a1 + v17, v15, &qword_27D7A8BE0, &unk_226D718F0);
  v19 = v16;
  sub_226AC40E8(a2 + v17, &v15[v18], &qword_27D7A8BE0, &unk_226D718F0);
  v20 = *(v16 + 48);
  if (v20(v15, 1, v6) == 1)
  {
    if (v20(&v15[v18], 1, v6) == 1)
    {
      sub_226AC47B0(v15, &qword_27D7A8BE0, &unk_226D718F0);
      return 1;
    }

    goto LABEL_8;
  }

  sub_226AC40E8(v15, v12, &qword_27D7A8BE0, &unk_226D718F0);
  if (v20(&v15[v18], 1, v6) == 1)
  {
    (*(v16 + 8))(v12, v6);
LABEL_8:
    sub_226AC47B0(v15, &qword_27D7A6C30, &unk_226D74330);
    return 0;
  }

  (*(v16 + 32))(v9, &v15[v18], v6);
  sub_226B300E8(&qword_27D7A6C38, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
  v22 = sub_226D6E35C();
  v23 = *(v19 + 8);
  v23(v9, v6);
  v23(v12, v6);
  sub_226AC47B0(v15, &qword_27D7A8BE0, &unk_226D718F0);
  return (v22 & 1) != 0;
}

BOOL sub_226B2F60C(uint64_t a1, uint64_t a2)
{
  v4 = _s8MetadataV9LocalItemV14PendingConsentVMa(0);
  v41 = *(v4 - 8);
  v42 = v4;
  MEMORY[0x28223BE20](v4);
  v35 = (&v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6C10, &unk_226D731E0);
  MEMORY[0x28223BE20](v6 - 8);
  v36 = (&v35 - v7);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6C18, &qword_226D72BF0);
  MEMORY[0x28223BE20](v37);
  v38 = &v35 - v8;
  v9 = _s8MetadataV9LocalItemV7ConsentVMa(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = (&v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6C20, &qword_226D72BF8);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = (&v35 - v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6C28, &qword_226D72C00);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v35 - v17;
  v20 = *(v19 + 56);
  v39 = a1;
  sub_226AC40E8(a1, &v35 - v17, &qword_27D7A6C20, &qword_226D72BF8);
  v40 = a2;
  sub_226AC40E8(a2, &v18[v20], &qword_27D7A6C20, &qword_226D72BF8);
  v21 = *(v10 + 48);
  if (v21(v18, 1, v9) != 1)
  {
    sub_226AC40E8(v18, v15, &qword_27D7A6C20, &qword_226D72BF8);
    if (v21(&v18[v20], 1, v9) != 1)
    {
      sub_226B2FFD8(&v18[v20], v12, _s8MetadataV9LocalItemV7ConsentVMa);
      v25 = sub_226B2F288(v15, v12, _s8MetadataV9LocalItemV7ConsentVMa);
      sub_226B2FF38(v12, _s8MetadataV9LocalItemV7ConsentVMa);
      sub_226B2FF38(v15, _s8MetadataV9LocalItemV7ConsentVMa);
      sub_226AC47B0(v18, &qword_27D7A6C20, &qword_226D72BF8);
      if (!v25)
      {
        return 0;
      }

      goto LABEL_8;
    }

    sub_226B2FF38(v15, _s8MetadataV9LocalItemV7ConsentVMa);
LABEL_6:
    v22 = &qword_27D7A6C28;
    v23 = &qword_226D72C00;
    v24 = v18;
LABEL_14:
    sub_226AC47B0(v24, v22, v23);
    return 0;
  }

  if (v21(&v18[v20], 1, v9) != 1)
  {
    goto LABEL_6;
  }

  sub_226AC47B0(v18, &qword_27D7A6C20, &qword_226D72BF8);
LABEL_8:
  v26 = *(_s8MetadataV9LocalItemVMa_0(0) + 20);
  v27 = v38;
  v28 = *(v37 + 48);
  sub_226AC40E8(v39 + v26, v38, &qword_27D7A6C10, &unk_226D731E0);
  sub_226AC40E8(v40 + v26, v27 + v28, &qword_27D7A6C10, &unk_226D731E0);
  v29 = v42;
  v30 = *(v41 + 48);
  if (v30(v27, 1, v42) == 1)
  {
    if (v30(v27 + v28, 1, v29) == 1)
    {
      sub_226AC47B0(v27, &qword_27D7A6C10, &unk_226D731E0);
      return 1;
    }

    goto LABEL_13;
  }

  v31 = v36;
  sub_226AC40E8(v27, v36, &qword_27D7A6C10, &unk_226D731E0);
  if (v30(v27 + v28, 1, v29) == 1)
  {
    sub_226B2FF38(v31, _s8MetadataV9LocalItemV14PendingConsentVMa);
LABEL_13:
    v22 = &qword_27D7A6C18;
    v23 = &qword_226D72BF0;
    v24 = v27;
    goto LABEL_14;
  }

  v33 = v35;
  sub_226B2FFD8(v27 + v28, v35, _s8MetadataV9LocalItemV14PendingConsentVMa);
  v34 = sub_226B2F288(v31, v33, _s8MetadataV9LocalItemV14PendingConsentVMa);
  sub_226B2FF38(v33, _s8MetadataV9LocalItemV14PendingConsentVMa);
  sub_226B2FF38(v31, _s8MetadataV9LocalItemV14PendingConsentVMa);
  sub_226AC47B0(v27, &qword_27D7A6C10, &unk_226D731E0);
  return v34;
}

BOOL sub_226B2FBE8(uint64_t a1, uint64_t a2)
{
  v4 = _s8MetadataV9LocalItemVMa_0(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = _s8MetadataV15LocalItemStatusOMa_0(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6C08, &qword_226D72BE8);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v20 - v12;
  v15 = *(v14 + 56);
  sub_226B30080(a1, &v20 - v12, _s8MetadataV15LocalItemStatusOMa_0);
  sub_226B30080(a2, &v13[v15], _s8MetadataV15LocalItemStatusOMa_0);
  v16 = *(v5 + 48);
  v17 = v16(v13, 2, v4);
  if (!v17)
  {
    sub_226B30080(v13, v10, _s8MetadataV15LocalItemStatusOMa_0);
    if (!v16(&v13[v15], 2, v4))
    {
      sub_226B2FFD8(&v13[v15], v7, _s8MetadataV9LocalItemVMa_0);
      v18 = sub_226B2F60C(v10, v7);
      sub_226B2FF38(v7, _s8MetadataV9LocalItemVMa_0);
      sub_226B2FF38(v10, _s8MetadataV9LocalItemVMa_0);
      sub_226B2FF38(v13, _s8MetadataV15LocalItemStatusOMa_0);
      return v18;
    }

    sub_226B2FF38(v10, _s8MetadataV9LocalItemVMa_0);
    goto LABEL_9;
  }

  if (v17 == 1)
  {
    if (v16(&v13[v15], 2, v4) != 1)
    {
      goto LABEL_9;
    }
  }

  else if (v16(&v13[v15], 2, v4) != 2)
  {
LABEL_9:
    sub_226AC47B0(v13, &qword_27D7A6C08, &qword_226D72BE8);
    return 0;
  }

  sub_226B2FF38(v13, _s8MetadataV15LocalItemStatusOMa_0);
  return 1;
}

uint64_t sub_226B2FF38(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_226B2FFD8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_226B30080(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_226B300E8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_226B30130(void *a1, void *a2)
{
  v4 = sub_226D6D4AC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v24 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6C30, &unk_226D74330);
  MEMORY[0x28223BE20](v11);
  v13 = v24 - v12;
  if (*a1 != *a2)
  {
    goto LABEL_9;
  }

  v14 = _s8MetadataV9CloudItemV6ObjectVMa_0(0);
  if ((sub_226D6D4EC() & 1) == 0)
  {
    goto LABEL_9;
  }

  v15 = a1;
  v16 = v5;
  v24[3] = v14;
  v17 = *(v14 + 24);
  v18 = *(v11 + 48);
  v24[1] = v15;
  sub_226AC40E8(v15 + v17, v13, &qword_27D7A8BE0, &unk_226D718F0);
  v24[2] = a2;
  sub_226AC40E8(a2 + v17, &v13[v18], &qword_27D7A8BE0, &unk_226D718F0);
  v19 = *(v16 + 48);
  if (v19(v13, 1, v4) == 1)
  {
    if (v19(&v13[v18], 1, v4) == 1)
    {
      sub_226AC47B0(v13, &qword_27D7A8BE0, &unk_226D718F0);
LABEL_12:
      sub_226AE59B4(0, &qword_27D7A6580, 0x277D82BB8);
      v20 = sub_226D6EC3C();
      return v20 & 1;
    }

    goto LABEL_8;
  }

  sub_226AC40E8(v13, v10, &qword_27D7A8BE0, &unk_226D718F0);
  if (v19(&v13[v18], 1, v4) == 1)
  {
    (*(v16 + 8))(v10, v4);
LABEL_8:
    sub_226AC47B0(v13, &qword_27D7A6C30, &unk_226D74330);
    goto LABEL_9;
  }

  (*(v16 + 32))(v7, &v13[v18], v4);
  sub_226B300E8(&qword_27D7A6C38, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
  v22 = sub_226D6E35C();
  v23 = *(v16 + 8);
  v23(v7, v4);
  v23(v10, v4);
  sub_226AC47B0(v13, &qword_27D7A8BE0, &unk_226D718F0);
  if (v22)
  {
    goto LABEL_12;
  }

LABEL_9:
  v20 = 0;
  return v20 & 1;
}

uint64_t sub_226B304DC(uint64_t a1, uint64_t a2)
{
  v4 = _s8MetadataV9CloudItemVMa_0(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = _s8MetadataV15CloudItemStatusOMa_0(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = (&v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6C48, &qword_226D72C10);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v19 - v12;
  v15 = *(v14 + 56);
  sub_226B30080(a1, &v19 - v12, _s8MetadataV15CloudItemStatusOMa_0);
  sub_226B30080(a2, &v13[v15], _s8MetadataV15CloudItemStatusOMa_0);
  v16 = *(v5 + 48);
  v17 = v16(v13, 2, v4);
  if (v17)
  {
    if (v17 == 1)
    {
      if (v16(&v13[v15], 2, v4) != 1)
      {
        goto LABEL_9;
      }

LABEL_8:
      sub_226B2FF38(v13, _s8MetadataV15CloudItemStatusOMa_0);
      return 1;
    }

    if (v16(&v13[v15], 2, v4) == 2)
    {
      goto LABEL_8;
    }
  }

  else
  {
    sub_226B30080(v13, v10, _s8MetadataV15CloudItemStatusOMa_0);
    if (!v16(&v13[v15], 2, v4))
    {
      sub_226B2FFD8(&v13[v15], v7, _s8MetadataV9CloudItemVMa_0);
      if ((sub_226B30130(v10, v7) & 1) == 0 || (sub_226B30130((v10 + *(v4 + 20)), (v7 + *(v4 + 20))) & 1) == 0 || (sub_226B2E760(*(v10 + *(v4 + 24)), *(v7 + *(v4 + 24))) & 1) == 0)
      {
        sub_226B2FF38(v7, _s8MetadataV9CloudItemVMa_0);
        sub_226B2FF38(v10, _s8MetadataV9CloudItemVMa_0);
        sub_226B2FF38(v13, _s8MetadataV15CloudItemStatusOMa_0);
        return 0;
      }

      sub_226B2FF38(v7, _s8MetadataV9CloudItemVMa_0);
      sub_226B2FF38(v10, _s8MetadataV9CloudItemVMa_0);
      goto LABEL_8;
    }

    sub_226B2FF38(v10, _s8MetadataV9CloudItemVMa_0);
  }

LABEL_9:
  sub_226AC47B0(v13, &qword_27D7A6C48, &qword_226D72C10);
  return 0;
}

void sub_226B30888(uint64_t a1)
{
  _s8MetadataV9CloudItemV6ObjectVMa_0(319);
  if (v1 <= 0x3F)
  {
    sub_226B30C24(319, &qword_27D7A6C68, _s8MetadataV9CloudItemV6ObjectVMa_0, MEMORY[0x277D83940]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_8Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = (a4)(0, a2, a3);
  v7 = (*(*(v6 - 8) + 48))(a1, a2, v6);
  if (v7 >= 3)
  {
    return v7 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t __swift_store_extra_inhabitant_index_9Tm(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  if (a2)
  {
    v7 = (a2 + 2);
  }

  else
  {
    v7 = 0;
  }

  v8 = a5(0);
  v9 = *(*(v8 - 8) + 56);

  return v9(a1, v7, a3, v8);
}

uint64_t sub_226B30AB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v4 = a4(319, a2, a3);
  if (v5 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v4;
}

void sub_226B30B38(uint64_t a1)
{
  sub_226D6D52C();
  if (v1 <= 0x3F)
  {
    sub_226B30C24(319, &qword_281062B70, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_226AE59B4(319, &qword_27D7A6370, 0x277CBE448);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_226B30C24(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_226B30CD8(uint64_t a1)
{
  sub_226B30C24(319, &qword_27D7A6CC0, _s8MetadataV9LocalItemV7ConsentVMa, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_226B30C24(319, &qword_27D7A6CC8, _s8MetadataV9LocalItemV14PendingConsentVMa, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_37Tm(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *__swift_store_extra_inhabitant_index_38Tm(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_226B30F50(uint64_t a1)
{
  sub_226AE59B4(319, &qword_27D7A6370, 0x277CBE448);
  if (v1 <= 0x3F)
  {
    sub_226B30C24(319, &qword_281062B70, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_226B31064(uint64_t a1)
{
  result = _s8MetadataV15CloudItemStatusOMa_0(319);
  if (v2 <= 0x3F)
  {
    result = _s8MetadataV15LocalItemStatusOMa_0(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_226B31344()
{
  v1 = v0;
  v2 = sub_226D6B49C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v37[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v8 = &v37[-v7];
  v9 = sub_226D6921C();
  MEMORY[0x28223BE20](v9);
  v11 = &v37[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_226B31754(v1, v11);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      return sub_226B224FC(MEMORY[0x277D84F90]);
    }

    v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6D30, &qword_226D79790) + 48);
    v14 = *(v3 + 32);
    v14(v8, v11, v2);
    v14(v5, (v11 + v13), v2);
    v15 = sub_226D6B46C();
    v17 = v16;
    if (v15 == sub_226D6B46C() && v17 == v18)
    {
      v20 = 1;
    }

    else
    {
      v20 = sub_226D6F21C();
    }

    v24 = sub_226D6B44C();
    v26 = v25;
    v28 = v24 == sub_226D6B44C() && v26 == v27;
    v39 = v3;
    if (v28)
    {

      v38 = 1;
    }

    else
    {
      v38 = sub_226D6F21C();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6660, &qword_226D74320);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_226D71840;
    *(inited + 32) = 0xD00000000000001ALL;
    *(inited + 40) = 0x8000000226D7F980;
    v42 = 0;
    v43 = 0xE000000000000000;
    if (v20)
    {
      v30 = 1702195828;
    }

    else
    {
      v30 = 0x65736C6166;
    }

    if (v20)
    {
      v31 = 0xE400000000000000;
    }

    else
    {
      v31 = 0xE500000000000000;
    }

    MEMORY[0x22AA8A510](v30, v31);

    v32 = v43;
    *(inited + 48) = v42;
    *(inited + 56) = v32;
    *(inited + 64) = 0xD000000000000016;
    *(inited + 72) = 0x8000000226D7F9A0;
    v42 = 0;
    v43 = 0xE000000000000000;
    if (v38)
    {
      v33 = 1702195828;
    }

    else
    {
      v33 = 0x65736C6166;
    }

    if (v38)
    {
      v34 = 0xE400000000000000;
    }

    else
    {
      v34 = 0xE500000000000000;
    }

    MEMORY[0x22AA8A510](v33, v34);

    v35 = v43;
    *(inited + 80) = v42;
    *(inited + 88) = v35;
    v22 = sub_226B224FC(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6668, &qword_226D71880);
    swift_arrayDestroy();
    v36 = *(v39 + 8);
    v36(v5, v2);
    v36(v8, v2);
  }

  else
  {
    v21 = *v11;
    swift_getErrorValue();
    v22 = sub_226B317B8(v40, v41);
  }

  return v22;
}

uint64_t sub_226B31754(uint64_t a1, uint64_t a2)
{
  v4 = sub_226D6921C();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_226B317B8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = *(a1 - 8);
  MEMORY[0x28223BE20](a1);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v30 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6660, &qword_226D74320);
  inited = swift_initStackObject();
  *(inited + 32) = 0x6D6F44726F727265;
  v31 = v3;
  v32 = inited + 32;
  *(inited + 16) = xmmword_226D71840;
  *(inited + 40) = 0xEB000000006E6961;
  v12 = *(v5 + 16);
  v12(v10, v3, a1);
  v13 = sub_226D6F1FC();
  if (v13)
  {
    v14 = v13;
    (*(v5 + 8))(v10, a1);
  }

  else
  {
    v14 = swift_allocError();
    (*(v5 + 32))(v15, v10, a1);
  }

  v16 = sub_226D6D03C();

  v17 = [v16 domain];
  v18 = sub_226D6E39C();
  v20 = v19;

  *(inited + 48) = v18;
  *(inited + 56) = v20;
  *(inited + 64) = 0x646F43726F727265;
  *(inited + 72) = 0xE900000000000065;
  v34 = 0;
  v35 = 0xE000000000000000;
  v12(v7, v31, a1);
  v21 = sub_226D6F1FC();
  if (v21)
  {
    v22 = v21;
    (*(v5 + 8))(v7, a1);
  }

  else
  {
    v22 = swift_allocError();
    (*(v5 + 32))(v23, v7, a1);
  }

  v24 = sub_226D6D03C();

  v25 = [v24 code];
  v33 = v25;
  v26 = sub_226D6F1CC();
  MEMORY[0x22AA8A510](v26);

  v27 = v35;
  *(inited + 80) = v34;
  *(inited + 88) = v27;
  v28 = sub_226B224FC(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6668, &qword_226D71880);
  swift_arrayDestroy();
  return v28;
}

id sub_226B31B0C()
{
  v0 = sub_226D67F1C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_226D6D1AC();
  v27 = *(v4 - 8);
  v28 = v4;
  MEMORY[0x28223BE20](v4);
  v26 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v22 - v7;
  sub_226D6AE8C();
  sub_226D6AE5C();
  v9 = [objc_opt_self() ephemeralSessionConfiguration];
  sub_226D67E6C();
  sub_226D67F0C();
  v10 = sub_226D6E36C();

  [v9 set:v10 sourceApplicationBundleIdentifier:?];

  v11 = sub_226D1EA08();
  v25 = v9;
  [v9 set:v11 appleIDContext:?];

  v12 = *(v1 + 8);
  v24 = v0;
  v12(v3, v0);
  result = [objc_opt_self() defaultStore];
  if (result)
  {
    v14 = sub_226D69BDC();
    swift_allocObject();
    v23 = sub_226D69BCC();
    v15 = sub_226D676FC();
    swift_allocObject();
    v16 = sub_226D676EC();
    v36 = sub_226D6B5EC();
    v37 = MEMORY[0x277CC7F68];
    __swift_allocate_boxed_opaque_existential_1(v35);
    sub_226D6B58C();
    sub_226D67E8C();
    sub_226D67F0C();
    v12(v3, v24);
    sub_226D6704C();
    v17 = sub_226D6BE5C();
    swift_allocObject();
    v18 = sub_226D6BE4C();
    v20 = v27;
    v19 = v28;
    (*(v27 + 16))(v26, v8, v28);
    v37 = MEMORY[0x277CC79A0];
    v36 = v14;
    v34 = MEMORY[0x277CC6D98];
    v35[0] = v23;
    v33 = v15;
    v32 = v16;
    v30 = v17;
    v31 = MEMORY[0x277CC8180];
    v29 = v18;
    swift_allocObject();

    v21 = sub_226D6AE6C();
    (*(v20 + 8))(v8, v19);
    return v21;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_226B31F10()
{

  return swift_deallocClassInstance();
}

unint64_t sub_226B31FA8()
{
  result = qword_2810623D8;
  if (!qword_2810623D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810623D8);
  }

  return result;
}

void sub_226B32000(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_226D67F1C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_226D6713C();
  v10 = v9;
  if (qword_28105F5D8 != -1)
  {
    swift_once();
  }

  v11 = sub_226D6E07C();
  v12 = __swift_project_value_buffer(v11, qword_28105F5E0);

  v33[2] = v12;
  v13 = sub_226D6E05C();
  v14 = sub_226D6E9EC();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v33[1] = a2;
    v16 = v15;
    v17 = swift_slowAlloc();
    v34 = v17;
    *v16 = 136315138;
    *(v16 + 4) = sub_226AC4530(v8, v10, &v34);
    _os_log_impl(&dword_226AB4000, v13, v14, "Reloading timeline for: %s.", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v17);
    MEMORY[0x22AA8BEE0](v17, -1, -1);
    MEMORY[0x22AA8BEE0](v16, -1, -1);
  }

  sub_226D67EAC();
  sub_226D67F0C();
  (*(v5 + 8))(v7, v4);
  v18 = objc_allocWithZone(MEMORY[0x277CFA320]);
  v19 = sub_226D6E36C();

  v20 = sub_226D6E36C();
  v21 = [v18 initWithExtensionBundleIdentifier:v19 kind:v20];

  v22 = sub_226D6E36C();
  v23 = [v21 reloadTimelineBudgetedWithReason_];

  if (v23)
  {

    v24 = v23;
    v25 = sub_226D6E05C();
    v26 = sub_226D6E9CC();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v34 = v29;
      *v27 = 136315394;
      v30 = sub_226AC4530(v8, v10, &v34);

      *(v27 + 4) = v30;
      *(v27 + 12) = 2112;
      v31 = v24;
      v32 = _swift_stdlib_bridgeErrorToNSError();
      *(v27 + 14) = v32;
      *v28 = v32;
      _os_log_impl(&dword_226AB4000, v25, v26, "Failed to reload timeline for %s: %@.", v27, 0x16u);
      sub_226AC47B0(v28, &qword_27D7A5FB0, &qword_226D70870);
      MEMORY[0x22AA8BEE0](v28, -1, -1);
      __swift_destroy_boxed_opaque_existential_0Tm(v29);
      MEMORY[0x22AA8BEE0](v29, -1, -1);
      MEMORY[0x22AA8BEE0](v27, -1, -1);
    }

    else
    {
    }
  }

  else
  {
  }
}

uint64_t sub_226B3241C(uint64_t a1)
{
  v167 = sub_226D6714C();
  v166 = *(v167 - 8);
  MEMORY[0x28223BE20](v167);
  v165 = &v164 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_226D6828C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v179 = &v164 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v194 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6D38, &qword_226D730A0);
  MEMORY[0x28223BE20](v194);
  v203 = &v164 - v6;
  v223 = sub_226D6D4AC();
  v7 = *(v223 - 8);
  MEMORY[0x28223BE20](v223);
  v181 = &v164 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v201 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6C30, &unk_226D74330);
  MEMORY[0x28223BE20](v201);
  v202 = &v164 - v9;
  v178 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6D40, &qword_226D730A8);
  MEMORY[0x28223BE20](v178);
  v177 = &v164 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v213 = &v164 - v12;
  MEMORY[0x28223BE20](v13);
  v209 = &v164 - v14;
  MEMORY[0x28223BE20](v15);
  v180 = &v164 - v16;
  MEMORY[0x28223BE20](v17);
  v225 = &v164 - v18;
  MEMORY[0x28223BE20](v19);
  v218 = &v164 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6D48, &unk_226D730B0);
  MEMORY[0x28223BE20](v21 - 8);
  v200 = &v164 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v199 = &v164 - v24;
  MEMORY[0x28223BE20](v25);
  v198 = &v164 - v26;
  MEMORY[0x28223BE20](v27);
  v205 = &v164 - v28;
  v176 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  MEMORY[0x28223BE20](v176);
  v175 = &v164 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v189 = &v164 - v31;
  MEMORY[0x28223BE20](v32);
  v188 = &v164 - v33;
  MEMORY[0x28223BE20](v34);
  v197 = &v164 - v35;
  MEMORY[0x28223BE20](v36);
  v224 = &v164 - v37;
  MEMORY[0x28223BE20](v38);
  v219 = &v164 - v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6D50, &unk_226D75230);
  MEMORY[0x28223BE20](v40 - 8);
  v204 = &v164 - v41;
  v207 = sub_226D67C0C();
  v42 = *(v207 - 8);
  MEMORY[0x28223BE20](v207);
  v196 = &v164 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v44);
  v195 = &v164 - v45;
  MEMORY[0x28223BE20](v46);
  v222 = &v164 - v47;
  v48 = sub_226D6A2EC();
  v49 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v217 = &v164 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_226D6E07C();
  v52 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v54 = &v164 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28105F708 != -1)
  {
    swift_once();
  }

  v55 = __swift_project_value_buffer(v51, qword_28105F710);
  v168 = v52;
  v56 = *(v52 + 16);
  v169 = v51;
  v56(v54, v55, v51);

  v208 = v54;
  v57 = sub_226D6E05C();
  v58 = sub_226D6E9AC();
  v59 = os_log_type_enabled(v57, v58);
  v216 = v3;
  if (v59)
  {
    v60 = v48;
    v61 = swift_slowAlloc();
    *v61 = 134217984;
    *(v61 + 4) = *(a1 + 16);

    _os_log_impl(&dword_226AB4000, v57, v58, "Processing %ld account changes during Bank Connect widget refresh", v61, 0xCu);
    v62 = v61;
    v48 = v60;
    MEMORY[0x22AA8BEE0](v62, -1, -1);
  }

  else
  {
  }

  v64 = v219;
  v65 = *(a1 + 16);
  if (v65)
  {
    v67 = *(v49 + 16);
    v66 = v49 + 16;
    v191 = v67;
    v190 = (v42 + 48);
    v186 = (v42 + 32);
    v221 = (v42 + 8);
    v214 = (v4 + 56);
    v215 = (v7 + 56);
    v185 = (v7 + 48);
    v173 = (v7 + 32);
    v174 = (v7 + 8);
    v184 = (v4 + 48);
    v171 = (v4 + 32);
    v172 = (v4 + 8);
    v193 = (v66 - 8);
    v68 = a1 + ((*(v66 + 64) + 32) & ~*(v66 + 64));
    v192 = v66;
    v183 = *(v66 + 56);
    *&v63 = 136315906;
    v170 = v63;
    v69 = v207;
    v70 = v205;
    v71 = v204;
    v187 = v48;
    v67(v217, v68, v48);
    while (1)
    {
      sub_226D6A2DC();
      if ((*v190)(v71, 1, v69) == 1)
      {
        break;
      }

      v211 = v68;
      (*v186)(v222, v71, v69);
      sub_226D67BBC();
      v74 = sub_226D69C2C();
      v75 = *(v74 - 8);
      v76 = *(v75 + 48);
      v77 = v76(v70, 1, v74);
      v212 = v65;
      if (v77 == 1)
      {
        sub_226AC47B0(v70, &qword_27D7A6D48, &unk_226D730B0);
        v78 = 1;
      }

      else
      {
        sub_226D69C0C();
        (*(v75 + 8))(v70, v74);
        v78 = 0;
      }

      v79 = v64;
      v80 = *v215;
      (*v215)(v79, v78, 1, v223);
      v81 = v195;
      sub_226D6A2BC();
      v82 = v198;
      sub_226D67BBC();
      v220 = *v221;
      v220(v81, v69);
      if (v76(v82, 1, v74) == 1)
      {
        sub_226AC47B0(v82, &qword_27D7A6D48, &unk_226D730B0);
        v83 = 1;
        v84 = v224;
      }

      else
      {
        v84 = v224;
        sub_226D69C0C();
        (*(v75 + 8))(v82, v74);
        v83 = 0;
      }

      v80(v84, v83, 1, v223);
      v85 = v199;
      sub_226D67BBC();
      if (v76(v85, 1, v74) == 1)
      {
        sub_226AC47B0(v85, &qword_27D7A6D48, &unk_226D730B0);
        v86 = 1;
        v87 = v218;
      }

      else
      {
        v87 = v218;
        sub_226D69C1C();
        (*(v75 + 8))(v85, v74);
        v86 = 0;
      }

      v88 = *v214;
      (*v214)(v87, v86, 1, v216);
      v89 = v196;
      sub_226D6A2BC();
      v90 = v200;
      sub_226D67BBC();
      v220(v89, v69);
      if (v76(v90, 1, v74) == 1)
      {
        sub_226AC47B0(v90, &qword_27D7A6D48, &unk_226D730B0);
        v91 = 1;
      }

      else
      {
        sub_226D69C1C();
        (*(v75 + 8))(v90, v74);
        v91 = 0;
      }

      v92 = v223;
      v93 = v185;
      v94 = v197;
      v95 = v216;
      v88(v225, v91, 1, v216);
      v96 = *(v201 + 48);
      v97 = v202;
      sub_226AC40E8(v219, v202, &qword_27D7A8BE0, &unk_226D718F0);
      sub_226AC40E8(v224, v97 + v96, &qword_27D7A8BE0, &unk_226D718F0);
      v98 = *v93;
      if ((*v93)(v97, 1, v92) == 1)
      {
        v99 = v98(v97 + v96, 1, v92);
        v100 = v218;
        v101 = v203;
        if (v99 != 1)
        {
          goto LABEL_41;
        }

        sub_226AC47B0(v97, &qword_27D7A8BE0, &unk_226D718F0);
      }

      else
      {
        sub_226AC40E8(v97, v94, &qword_27D7A8BE0, &unk_226D718F0);
        v102 = v98(v97 + v96, 1, v92);
        v101 = v203;
        if (v102 == 1)
        {
          (*v174)(v94, v92);
          v100 = v218;
LABEL_41:
          v154 = &qword_27D7A6C30;
          v155 = &unk_226D74330;
          v156 = v97;
LABEL_44:
          sub_226AC47B0(v156, v154, v155);
LABEL_45:
          v147 = v208;
          v157 = sub_226D6E05C();
          v158 = sub_226D6E9EC();
          if (os_log_type_enabled(v157, v158))
          {
            v159 = swift_slowAlloc();
            *v159 = 0;
            _os_log_impl(&dword_226AB4000, v157, v158, "The account balance was updated, refreshed Bank Connect widget", v159, 2u);
            MEMORY[0x22AA8BEE0](v159, -1, -1);
          }

          v160 = v166;
          v161 = v165;
          v162 = v167;
          (*(v166 + 104))(v165, *MEMORY[0x277CC6B40], v167);
          sub_226B32000(v161, 0xD000000000000013, 0x8000000226D7FA50);
          (*(v160 + 8))(v161, v162);
          sub_226AC47B0(v225, &qword_27D7A6D40, &qword_226D730A8);
          sub_226AC47B0(v100, &qword_27D7A6D40, &qword_226D730A8);
          sub_226AC47B0(v224, &qword_27D7A8BE0, &unk_226D718F0);
          sub_226AC47B0(v219, &qword_27D7A8BE0, &unk_226D718F0);
          v220(v222, v207);
          v48 = v187;
          goto LABEL_48;
        }

        v103 = v181;
        (*v173)(v181, v97 + v96, v92);
        sub_226B33D28(&qword_27D7A6C38, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
        v104 = sub_226D6E35C();
        v105 = *v174;
        (*v174)(v103, v92);
        v105(v94, v92);
        sub_226AC47B0(v97, &qword_27D7A8BE0, &unk_226D718F0);
        v100 = v218;
        if ((v104 & 1) == 0)
        {
          goto LABEL_45;
        }
      }

      v106 = *(v194 + 48);
      sub_226AC40E8(v100, v101, &qword_27D7A6D40, &qword_226D730A8);
      sub_226AC40E8(v225, v101 + v106, &qword_27D7A6D40, &qword_226D730A8);
      v107 = *v184;
      if ((*v184)(v101, 1, v95) == 1)
      {
        if (v107(v101 + v106, 1, v95) != 1)
        {
          goto LABEL_43;
        }

        sub_226AC47B0(v101, &qword_27D7A6D40, &qword_226D730A8);
      }

      else
      {
        v108 = v180;
        sub_226AC40E8(v101, v180, &qword_27D7A6D40, &qword_226D730A8);
        if (v107(v101 + v106, 1, v95) == 1)
        {
          (*v172)(v108, v95);
LABEL_43:
          v154 = &qword_27D7A6D38;
          v155 = &qword_226D730A0;
          v156 = v101;
          goto LABEL_44;
        }

        v109 = v179;
        (*v171)(v179, v101 + v106, v95);
        sub_226B33D28(&qword_27D7A6D58, MEMORY[0x277CC7258], MEMORY[0x277CC7260]);
        v110 = sub_226D6E35C();
        v111 = *v172;
        (*v172)(v109, v95);
        v111(v108, v95);
        sub_226AC47B0(v101, &qword_27D7A6D40, &qword_226D730A8);
        if ((v110 & 1) == 0)
        {
          goto LABEL_45;
        }
      }

      v112 = v219;
      v113 = v188;
      sub_226AC40E8(v219, v188, &qword_27D7A8BE0, &unk_226D718F0);
      v114 = v224;
      v115 = v189;
      sub_226AC40E8(v224, v189, &qword_27D7A8BE0, &unk_226D718F0);
      v116 = v209;
      sub_226AC40E8(v100, v209, &qword_27D7A6D40, &qword_226D730A8);
      v117 = v213;
      sub_226AC40E8(v225, v213, &qword_27D7A6D40, &qword_226D730A8);
      v118 = sub_226D6E05C();
      v119 = sub_226D6E9AC();
      v210 = v118;
      v206 = v119;
      if (os_log_type_enabled(v118, v119))
      {
        v120 = swift_slowAlloc();
        v121 = v115;
        v182 = swift_slowAlloc();
        v226 = v182;
        *v120 = v170;
        v122 = v175;
        sub_226AC40E8(v113, v175, &qword_27D7A8BE0, &unk_226D718F0);
        v123 = sub_226D6E3FC();
        v125 = v124;
        sub_226AC47B0(v113, &qword_27D7A8BE0, &unk_226D718F0);
        v126 = sub_226AC4530(v123, v125, &v226);

        *(v120 + 4) = v126;
        *(v120 + 12) = 2080;
        sub_226AC40E8(v121, v122, &qword_27D7A8BE0, &unk_226D718F0);
        v127 = sub_226D6E3FC();
        v129 = v128;
        sub_226AC47B0(v121, &qword_27D7A8BE0, &unk_226D718F0);
        v130 = sub_226AC4530(v127, v129, &v226);

        *(v120 + 14) = v130;
        *(v120 + 22) = 2080;
        v131 = v209;
        v132 = v177;
        sub_226AC40E8(v209, v177, &qword_27D7A6D40, &qword_226D730A8);
        v133 = sub_226D6E3FC();
        v135 = v134;
        sub_226AC47B0(v131, &qword_27D7A6D40, &qword_226D730A8);
        v136 = sub_226AC4530(v133, v135, &v226);

        *(v120 + 24) = v136;
        *(v120 + 32) = 2080;
        sub_226AC40E8(v213, v132, &qword_27D7A6D40, &qword_226D730A8);
        v137 = v213;
        v138 = sub_226D6E3FC();
        v140 = v139;
        sub_226AC47B0(v137, &qword_27D7A6D40, &qword_226D730A8);
        v141 = sub_226AC4530(v138, v140, &v226);
        v64 = v219;

        *(v120 + 34) = v141;
        v142 = v210;
        _os_log_impl(&dword_226AB4000, v210, v206, "Bank Connect widget refresh is not needed. Old timestamp: %s, new timestamp: %s. Old balance: %s, new balance: %s", v120, 0x2Au);
        v143 = v182;
        swift_arrayDestroy();
        MEMORY[0x22AA8BEE0](v143, -1, -1);
        MEMORY[0x22AA8BEE0](v120, -1, -1);

        sub_226AC47B0(v225, &qword_27D7A6D40, &qword_226D730A8);
        sub_226AC47B0(v218, &qword_27D7A6D40, &qword_226D730A8);
        sub_226AC47B0(v224, &qword_27D7A8BE0, &unk_226D718F0);
        sub_226AC47B0(v64, &qword_27D7A8BE0, &unk_226D718F0);
        v69 = v207;
        v220(v222, v207);
        v72 = v217;
        v48 = v187;
        (*v193)(v217, v187);
        v70 = v205;
        v73 = v212;
      }

      else
      {

        sub_226AC47B0(v117, &qword_27D7A6D40, &qword_226D730A8);
        sub_226AC47B0(v116, &qword_27D7A6D40, &qword_226D730A8);
        sub_226AC47B0(v115, &qword_27D7A8BE0, &unk_226D718F0);
        sub_226AC47B0(v113, &qword_27D7A8BE0, &unk_226D718F0);
        sub_226AC47B0(v225, &qword_27D7A6D40, &qword_226D730A8);
        sub_226AC47B0(v100, &qword_27D7A6D40, &qword_226D730A8);
        sub_226AC47B0(v114, &qword_27D7A8BE0, &unk_226D718F0);
        sub_226AC47B0(v112, &qword_27D7A8BE0, &unk_226D718F0);
        v69 = v207;
        v220(v222, v207);
        v72 = v217;
        v48 = v187;
        (*v193)(v217, v187);
        v70 = v205;
        v73 = v212;
        v64 = v112;
      }

      v68 = v211 + v183;
      v65 = v73 - 1;
      v71 = v204;
      if (!v65)
      {
        goto LABEL_36;
      }

      v191(v72, v68, v48);
    }

    sub_226AC47B0(v71, &qword_27D7A6D50, &unk_226D75230);
    v148 = v166;
    v149 = v165;
    v150 = v167;
    (*(v166 + 104))(v165, *MEMORY[0x277CC6B40], v167);
    sub_226B32000(v149, 0xD000000000000017, 0x8000000226D7FA30);
    (*(v148 + 8))(v149, v150);
    v147 = v208;
    v151 = sub_226D6E05C();
    v152 = sub_226D6E9EC();
    if (os_log_type_enabled(v151, v152))
    {
      v153 = swift_slowAlloc();
      *v153 = 0;
      _os_log_impl(&dword_226AB4000, v151, v152, "New account was inserted, refreshed Bank Connect widget", v153, 2u);
      MEMORY[0x22AA8BEE0](v153, -1, -1);
    }

LABEL_48:
    v146 = v168;
    (*v193)(v217, v48);
    v144 = 1;
    v145 = v169;
  }

  else
  {
LABEL_36:
    v144 = 0;
    v145 = v169;
    v146 = v168;
    v147 = v208;
  }

  (*(v146 + 8))(v147, v145);
  return v144;
}

uint64_t sub_226B33D28(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *sub_226B33D70(void *result, uint64_t a2, uint64_t a3)
{
  v4 = MEMORY[0x277D84F90];
  v13 = MEMORY[0x277D84F90];
  v5 = *(a3 + 16);
  if (v5)
  {
    v6 = result;
    v7 = 0;
    v8 = a3 + 32;
    v11 = a3 + 32;
    do
    {
      v9 = v8 + 40 * v7;
      for (i = v7; ; ++i)
      {
        if (i >= v5)
        {
          __break(1u);
LABEL_17:
          __break(1u);
          return result;
        }

        v7 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_17;
        }

        result = (v6)(&v12, v9);
        if (v3)
        {

          return v4;
        }

        if (v12)
        {
          break;
        }

        v9 += 40;
        if (v7 == v5)
        {
          return v4;
        }
      }

      MEMORY[0x22AA8A610](result);
      if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_226D6E61C();
      }

      result = sub_226D6E65C();
      v4 = v13;
      v8 = v11;
    }

    while (v7 != v5);
  }

  return v4;
}

uint64_t sub_226B33EB4(uint64_t a1, void (*a2)(uint64_t *), uint64_t a3, uint64_t a4)
{
  v10 = a1;
  v6 = a4 + 32;
  v7 = *(a4 + 16) + 1;
  while (--v7)
  {
    v8 = v6 + 40;
    a2(&v10);
    v6 = v8;
    if (v4)
    {
    }
  }

  return v10;
}