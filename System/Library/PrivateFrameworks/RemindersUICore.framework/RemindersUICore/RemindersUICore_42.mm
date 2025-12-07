uint64_t sub_21D4C3A5C(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v7;
  }

  if (!a2)
  {
    return 0;
  }

  if (v6 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v9 = a2 - v6;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (v14)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (v14)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_28;
  }

  if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 2)
    {
      v17 = (*(v4 + 48))(a1);
      if (v17 >= 2)
      {
        return v17 - 1;
      }

      else
      {
        return 0;
      }
    }

    return 0;
  }

LABEL_21:
  v15 = v14 - 1;
  if (v10)
  {
    v15 = 0;
    LODWORD(v10) = *a1;
  }

  return v6 + (v10 | v15) + 1;
}

_DWORD *sub_21D4C3B98(_DWORD *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 64);
  v9 = v7 - 1;
  if (!v7)
  {
    v9 = 0;
    ++v8;
  }

  v10 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v9 < a3)
  {
    v11 = a3 - v9;
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v5 = v13;
    }

    else
    {
      v5 = 0;
    }
  }

  if (a2 > v9)
  {
    if (v10)
    {
      v14 = 1;
    }

    else
    {
      v14 = a2 - v9;
    }

    if (v10)
    {
      v15 = ~v9 + a2;
      v16 = result;
      bzero(result, v10);
      result = v16;
      *v16 = v15;
    }

    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + v10) = v14;
      }

      else
      {
        *(result + v10) = v14;
      }
    }

    else if (v5)
    {
      *(result + v10) = v14;
    }

    return result;
  }

  if (v5 <= 1)
  {
    if (v5)
    {
      *(result + v10) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_33;
    }

LABEL_32:
    if (!a2)
    {
      return result;
    }

    goto LABEL_33;
  }

  if (v5 == 2)
  {
    *(result + v10) = 0;
    goto LABEL_32;
  }

  *(result + v10) = 0;
  if (!a2)
  {
    return result;
  }

LABEL_33:
  if (v7 >= 2)
  {
    v17 = *(v6 + 56);

    return v17();
  }

  return result;
}

void sub_21D4C3D34(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE65010, &qword_21DC08D60);
  MEMORY[0x28223BE20](v3 - 8);
  v46 = v40 - v4;
  v47 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v5 = sub_21DBFBD7C();
  }

  else
  {
    v5 = *(a1 + 16);
  }

  if (v5)
  {
    v54 = MEMORY[0x277D84F90];
    sub_21D18E678(0, v5 & ~(v5 >> 63), 0);
    v6 = v54;
    if (v47)
    {
      v7 = sub_21DBFBD0C();
    }

    else
    {
      v7 = sub_21DBFBCCC();
      v8 = *(a1 + 36);
    }

    v51 = v7;
    v52 = v8;
    v53 = v47 != 0;
    if ((v5 & 0x8000000000000000) == 0)
    {
      v9 = 0;
      v10 = a1 & 0xFFFFFFFFFFFFFF8;
      if (a1 < 0)
      {
        v10 = a1;
      }

      v42 = a1 + 56;
      v43 = v10;
      v40[1] = v1;
      v41 = a1 + 64;
      v44 = v5;
      v45 = a1;
      while (v9 < v5)
      {
        if (__OFADD__(v9++, 1))
        {
          goto LABEL_37;
        }

        v13 = v51;
        v48 = v52;
        v49 = v53;
        sub_21D3656F4(v51, v52, v53, a1);
        v15 = v14;
        v16 = [v14 name];
        v17 = sub_21DBFA16C();
        v19 = v18;

        v50[0] = v17;
        v50[1] = v19;
        v20 = v6;
        v21 = v46;
        sub_21DBF57AC();
        v22 = sub_21DBF582C();
        (*(*(v22 - 8) + 56))(v21, 0, 1, v22);
        sub_21D176F0C();
        v23 = sub_21DBFBBEC();
        v25 = v24;
        v26 = v21;
        v6 = v20;
        sub_21D0CF7E0(v26, &unk_27CE65010, &qword_21DC08D60);

        v54 = v20;
        v28 = *(v20 + 16);
        v27 = *(v20 + 24);
        if (v28 >= v27 >> 1)
        {
          sub_21D18E678((v27 > 1), v28 + 1, 1);
          v6 = v54;
        }

        *(v6 + 16) = v28 + 1;
        v29 = v6 + 16 * v28;
        *(v29 + 32) = v23;
        *(v29 + 40) = v25;
        if (v47)
        {
          a1 = v45;
          if (!v49)
          {
            goto LABEL_42;
          }

          if (sub_21DBFBD2C())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v5 = v44;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5AE58, &unk_21DC11840);
          v11 = sub_21DBFAAEC();
          sub_21DBFBDEC();
          v11(v50, 0);
          if (v9 == v5)
          {
LABEL_34:
            sub_21D15746C(v51, v52, v53);
            return;
          }
        }

        else
        {
          a1 = v45;
          if (v49)
          {
            goto LABEL_43;
          }

          if ((v13 & 0x8000000000000000) != 0)
          {
            goto LABEL_38;
          }

          v30 = 1 << *(v45 + 32);
          if (v13 >= v30)
          {
            goto LABEL_38;
          }

          v31 = v13 >> 6;
          v32 = *(v42 + 8 * (v13 >> 6));
          if (((v32 >> v13) & 1) == 0)
          {
            goto LABEL_39;
          }

          if (*(v45 + 36) != v48)
          {
            goto LABEL_40;
          }

          v33 = v32 & (-2 << (v13 & 0x3F));
          if (v33)
          {
            v30 = __clz(__rbit64(v33)) | v13 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v34 = v31 << 6;
            v35 = v31 + 1;
            v36 = (v41 + 8 * v31);
            while (v35 < (v30 + 63) >> 6)
            {
              v38 = *v36++;
              v37 = v38;
              v34 += 64;
              ++v35;
              if (v38)
              {
                sub_21D15746C(v13, v48, 0);
                v30 = __clz(__rbit64(v37)) + v34;
                goto LABEL_33;
              }
            }

            sub_21D15746C(v13, v48, 0);
          }

LABEL_33:
          v39 = *(a1 + 36);
          v51 = v30;
          v52 = v39;
          v53 = 0;
          v5 = v44;
          if (v9 == v44)
          {
            goto LABEL_34;
          }
        }
      }

      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
  }
}

void sub_21D4C417C(uint64_t a1, void *a2)
{
  v37 = a2;
  v3 = type metadata accessor for TTRReminderSuggestedAttribute.AttributeType(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CFD8, &qword_21DC18B38);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = (&v32 - v7);
  v9 = type metadata accessor for TTRReminderTitleAttributesHarvester.Attribute(0);
  MEMORY[0x28223BE20](v9);
  v39 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v32 - v12;
  MEMORY[0x28223BE20](v14);
  v36 = &v32 - v16;
  v42 = *(a1 + 16);
  if (!v42)
  {
    v43 = MEMORY[0x277D84F90];
    return;
  }

  v17 = 0;
  v38 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v41 = a1 + v38;
  v44 = *(v15 + 72);
  v40 = (v15 + 56);
  v43 = MEMORY[0x277D84F90];
  v33 = v5;
  v34 = v3;
  v35 = v8;
  while (1)
  {
    v18 = (v41 + v44 * v17);
    v19 = *(v9 + 20);
    sub_21D4D97E4(&v18[v19], v5, type metadata accessor for TTRReminderSuggestedAttribute.AttributeType);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    sub_21D4D5640(v5, type metadata accessor for TTRReminderSuggestedAttribute.AttributeType);
    if (!EnumCaseMultiPayload)
    {
      break;
    }

    (*v40)(v8, 1, 1, v9);
    sub_21D0CF7E0(v8, &qword_27CE5CFD8, &qword_21DC18B38);
LABEL_4:
    if (++v17 == v42)
    {
      return;
    }
  }

  v21 = *v37;
  v22 = *(*v37 + 16);
  sub_21DBF8E0C();
  if (!v22)
  {
LABEL_11:

    v8 = v35;
    sub_21D4D97E4(v18, v35, type metadata accessor for TTRReminderTitleAttributesHarvester.Attribute);
LABEL_13:
    (*v40)(v8, 0, 1, v9);
    v27 = v36;
    sub_21D4D984C(v8, v36, type metadata accessor for TTRReminderTitleAttributesHarvester.Attribute);
    sub_21D4D984C(v27, v39, type metadata accessor for TTRReminderTitleAttributesHarvester.Attribute);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v5 = v33;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v43 = sub_21D2137C8(0, v43[2] + 1, 1, v43);
    }

    v30 = v43[2];
    v29 = v43[3];
    if (v30 >= v29 >> 1)
    {
      v43 = sub_21D2137C8((v29 > 1), v30 + 1, 1, v43);
    }

    v31 = v43;
    v43[2] = v30 + 1;
    sub_21D4D984C(v39, v31 + v38 + v30 * v44, type metadata accessor for TTRReminderTitleAttributesHarvester.Attribute);
    goto LABEL_4;
  }

  v23 = 0;
  v24 = v21 + v38;
  while (v23 < *(v21 + 16))
  {
    sub_21D4D97E4(v24, v13, type metadata accessor for TTRReminderTitleAttributesHarvester.Attribute);
    if (_s15RemindersUICore29TTRReminderSuggestedAttributeV0E4TypeO19areKeyContentsEqualySbAE_AEtFZ_0(&v13[*(v9 + 20)], &v18[v19]))
    {

      v25 = *v18;
      v26 = *(v18 + 1);
      v8 = v35;
      sub_21D4D97E4(&v18[v19], v35 + *(v9 + 20), type metadata accessor for TTRReminderSuggestedAttribute.AttributeType);
      sub_21DBF79CC();
      sub_21D4D5640(v13, type metadata accessor for TTRReminderTitleAttributesHarvester.Attribute);
      *v8 = v25;
      v8[1] = v26;
      goto LABEL_13;
    }

    ++v23;
    sub_21D4D5640(v13, type metadata accessor for TTRReminderTitleAttributesHarvester.Attribute);
    v24 += v44;
    if (v22 == v23)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t sub_21D4C465C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_21DBF7B0C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v17 - v12;
  v14 = *(v7 + 16);
  v14(v9, v3, v6, v11);
  sub_21D0F1CB0(&qword_280D0C7C0, MEMORY[0x277D45750], MEMORY[0x277D45768]);
  sub_21DBFBC3C();
  (v14)(v9, a1, v6);
  sub_21DBFBC8C();
  if (sub_21DBFBC7C())
  {
    (*(v7 + 8))(v13, v6);
    v15 = 1;
  }

  else
  {
    (*(v7 + 32))(a2, v13, v6);
    v15 = 0;
  }

  return (*(v7 + 56))(a2, v15, 1, v6);
}

uint64_t sub_21D4C484C()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_280D0F390);
  v1 = __swift_project_value_buffer(v0, qword_280D0F390);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t TTRReminderTitleAttributesHarvester.Attribute.source.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for TTRReminderTitleAttributesHarvester.Attribute(0) + 24);
  v4 = sub_21DBF79FC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t TTRReminderTitleAttributesHarvester.Attribute.init(range:type:source:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  *a5 = a1;
  *(a5 + 1) = a2;
  v8 = type metadata accessor for TTRReminderTitleAttributesHarvester.Attribute(0);
  sub_21D4D984C(a3, &a5[*(v8 + 20)], type metadata accessor for TTRReminderSuggestedAttribute.AttributeType);
  v9 = *(v8 + 24);
  v10 = sub_21DBF79FC();
  v11 = *(*(v10 - 8) + 32);

  return v11(&a5[v9], a4, v10);
}

uint64_t static TTRReminderTitleAttributesHarvester.Attribute.== infix(_:_:)(void *a1, char *a2)
{
  if (*a1 != *a2 || a1[1] != *(a2 + 1))
  {
    return 0;
  }

  v5 = type metadata accessor for TTRReminderTitleAttributesHarvester.Attribute(0);
  if ((sub_21DBF79BC() & 1) == 0)
  {
    return 0;
  }

  v6 = *(v5 + 20);

  return _s15RemindersUICore29TTRReminderSuggestedAttributeV0E4TypeO19areKeyContentsEqualySbAE_AEtFZ_0((a1 + v6), &a2[v6]);
}

uint64_t TTRReminderTitleAttributesHarvester.Attribute.sameValue(with:)(char *a1)
{
  if (*v1 != *a1 || v1[1] != *(a1 + 1))
  {
    return 0;
  }

  v5 = *(type metadata accessor for TTRReminderTitleAttributesHarvester.Attribute(0) + 20);

  return _s15RemindersUICore29TTRReminderSuggestedAttributeV0E4TypeO19areKeyContentsEqualySbAE_AEtFZ_0((v1 + v5), &a1[v5]);
}

uint64_t sub_21D4C4BAC(void *a1, char *a2, uint64_t a3)
{
  v3 = *a1 == *a2 && a1[1] == *(a2 + 1);
  if (!v3 || (sub_21DBF79BC() & 1) == 0)
  {
    return 0;
  }

  v7 = *(a3 + 20);

  return _s15RemindersUICore29TTRReminderSuggestedAttributeV0E4TypeO19areKeyContentsEqualySbAE_AEtFZ_0((a1 + v7), &a2[v7]);
}

uint64_t sub_21D4C4C38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!sub_21D4D496C(a1, a2))
  {
    return 0;
  }

  v6 = *(a3 + 20);
  v7 = *(a1 + v6);
  v8 = *(a2 + v6);

  return sub_21D1D5834(v7, v8);
}

void sub_21D4C4CA0()
{
  v0 = [objc_opt_self() defaultTimeZone];
  sub_21DBF5C2C();
}

uint64_t TTRReminderTitleAttributesHarvester.__allocating_init(queue:backgroundQueue:locationOptionsProvider:contactsProvider:store:excludedSuggestedAttributes:locale:timeZone:now:forTesting:)(void *a1, void *a2, void *a3, void *a4, void *a5, uint64_t a6, uint64_t a7, void (*a8)(uint64_t), void (*a9)(uint64_t), uint64_t a10, unsigned __int8 a11)
{
  v16 = a3[3];
  v15 = a3[4];
  v17 = __swift_mutable_project_boxed_opaque_existential_1(a3, v16);
  v18 = a4[3];
  v19 = a4[4];
  v20 = __swift_mutable_project_boxed_opaque_existential_1(a4, v18);
  v21 = sub_21D4D5348(a1, a2, v17, v20, a5, a6, a7, a8, a9, a10, a11, v23, v16, v18, v15, v19);

  __swift_destroy_boxed_opaque_existential_0(a4);
  __swift_destroy_boxed_opaque_existential_0(a3);
  return v21;
}

uint64_t TTRReminderTitleAttributesHarvester.init(queue:backgroundQueue:locationOptionsProvider:contactsProvider:store:excludedSuggestedAttributes:locale:timeZone:now:forTesting:)(void *a1, void *a2, void *a3, void *a4, void *a5, uint64_t a6, uint64_t a7, void (*a8)(uint64_t), void (*a9)(uint64_t), uint64_t a10, unsigned __int8 a11)
{
  v36 = a6;
  v37 = a7;
  v38 = a8;
  v33 = a10;
  v34 = a9;
  v32 = a11;
  v16 = a3[3];
  v31 = a3[4];
  v17 = __swift_mutable_project_boxed_opaque_existential_1(a3, v16);
  v18 = MEMORY[0x28223BE20](v17);
  v20 = &v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v20, v18);
  v23 = a4[3];
  v22 = a4[4];
  v24 = __swift_mutable_project_boxed_opaque_existential_1(a4, v23);
  v25 = MEMORY[0x28223BE20](v24);
  v27 = &v31 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v28 + 16))(v27, v25);
  v29 = sub_21D4D4C1C(a1, a2, v20, v27, a5, v36, v37, v38, v34, v33, v32, v35, v16, v23, v31, v22);

  __swift_destroy_boxed_opaque_existential_0(a4);
  __swift_destroy_boxed_opaque_existential_0(a3);
  return v29;
}

uint64_t sub_21D4C5020()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 16);
  }

  else
  {
    v1 = sub_21D4D857C(v0);
    *(v0 + 16) = v1;
  }

  return v1;
}

uint64_t sub_21D4C5080(uint64_t a1)
{
  v14 = a1;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D0A8, &qword_21DC18C38);
  v1 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v3 = &v13 - v2;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D0B0, &qword_21DC18C40);
  v4 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v6 = &v13 - v5;
  swift_allocObject();
  swift_weakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D0B8, &qword_21DC18C48);
  swift_allocObject();
  v18 = sub_21DBF911C();
  v17 = 0;
  sub_21D0D0F1C(&qword_280D0C420, &qword_27CE5D0B8, &qword_21DC18C48, MEMORY[0x277CBCEB0]);
  sub_21DBF922C();

  v7 = swift_allocObject();
  swift_weakInit();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = v14;

  sub_21DBF8FFC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CFA8, &qword_21DC18B08);
  sub_21D0D0F1C(&qword_280D0C620, &qword_27CE5D0A8, &qword_21DC18C38, MEMORY[0x277CBCB78]);
  sub_21D0D0F1C(&qword_280D0C4A8, &qword_27CE5CFA8, &qword_21DC18B08, MEMORY[0x277CBCD90]);
  v9 = v15;
  sub_21DBF93DC();

  (*(v1 + 8))(v3, v9);
  sub_21D0D0F1C(&qword_280D0C560, &qword_27CE5D0B0, &qword_21DC18C40, MEMORY[0x277CBCCE0]);
  v10 = v16;
  v11 = sub_21DBF920C();
  (*(v4 + 8))(v6, v10);
  return v11;
}

uint64_t sub_21D4C5424@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_21D4D97E4(a1, a2, type metadata accessor for TTRReminderTitleAttributesHarvester.VersionedResults);
  v4 = type metadata accessor for TTRReminderTitleAttributesHarvester.VersionedResults(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a2, 0, 1, v4);
}

uint64_t sub_21D4C54AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a6@<X8>)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CFB0, &qword_21DC18B10);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v22 - v12;
  v14 = type metadata accessor for TTRReminderTitleAttributesHarvester.VersionedResults(0);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    if (sub_21D4D496C(a1, a2))
    {
      sub_21D0D3954(a4, v13, &qword_27CE5CFB0, &qword_21DC18B10);
      if ((*(v15 + 48))(v13, 1, v14) == 1)
      {
        sub_21D0CF7E0(v13, &qword_27CE5CFB0, &qword_21DC18B10);
      }

      else
      {
        sub_21D4D984C(v13, v17, type metadata accessor for TTRReminderTitleAttributesHarvester.VersionedResults);
        if (_s15RemindersUICore25TTRAccountsListsViewModelC06PinnedD7SectionV2eeoiySbAE_AEtFZ_0())
        {
          v19 = *&v17[*(v14 + 20)];
          sub_21DBF8E0C();
          sub_21D4D5640(v17, type metadata accessor for TTRReminderTitleAttributesHarvester.VersionedResults);
LABEL_11:
          v20 = sub_21D4C576C(*(a1 + *(v14 + 20)), *(a2 + *(v14 + 20)), *(a3 + *(v14 + 20)), v19);

          sub_21D4D97E4(a1, a6, type metadata accessor for TTRReminderTitleAttributesHarvester.HarvestRequest);
          v18 = 0;
          *(a6 + *(v14 + 20)) = v20;
          return (*(v15 + 56))(a6, v18, 1, v14);
        }

        sub_21D4D5640(v17, type metadata accessor for TTRReminderTitleAttributesHarvester.VersionedResults);
      }

      v19 = MEMORY[0x277D84F90];
      goto LABEL_11;
    }
  }

  v18 = 1;
  return (*(v15 + 56))(a6, v18, 1, v14);
}

void *sub_21D4C576C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v96 = a4;
  v85 = a1;
  v86 = a3;
  v6 = type metadata accessor for TTRReminderSuggestedAttribute.AttributeType(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v82 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v91 = &v82 - v10;
  MEMORY[0x28223BE20](v11);
  v13 = &v82 - v12;
  v98 = type metadata accessor for TTRReminderTitleAttributesHarvester.Attribute(0);
  v87 = *(v98 - 8);
  MEMORY[0x28223BE20](v98);
  v82 = &v82 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v97 = &v82 - v16;
  MEMORY[0x28223BE20](v17);
  v83 = &v82 - v18;
  MEMORY[0x28223BE20](v19);
  v92 = &v82 - v20;
  MEMORY[0x28223BE20](v21);
  v90 = &v82 - v22;
  MEMORY[0x28223BE20](v23);
  v89 = &v82 - v24;
  MEMORY[0x28223BE20](v25);
  v93 = &v82 - v26;
  MEMORY[0x28223BE20](v27);
  v29 = &v82 - v28;
  v30 = sub_21DBF9D8C();
  v31 = *(v30 - 8);
  v32 = MEMORY[0x28223BE20](v30);
  v34 = (&v82 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  v35 = *(v4 + OBJC_IVAR____TtC15RemindersUICore35TTRReminderTitleAttributesHarvester_backgroundQueue);
  *v34 = v35;
  (*(v31 + 104))(v34, *MEMORY[0x277D85200], v30, v32);
  v36 = v35;
  LOBYTE(v35) = sub_21DBF9DAC();
  v38 = *(v31 + 8);
  v37 = v31 + 8;
  v38(v34, v30);
  if ((v35 & 1) == 0)
  {
    __break(1u);
    goto LABEL_48;
  }

  v84 = a2;
  v39 = MEMORY[0x277D84F90];
  v101 = MEMORY[0x277D84F90];
  v40 = v96[2];
  if (v40)
  {
    v94 = (*(v87 + 80) + 32) & ~*(v87 + 80);
    v95 = MEMORY[0x277D84F90];
    v41 = v96 + v94;
    v42 = *(v87 + 72);
    v96 = MEMORY[0x277D84F90];
    v88 = v8;
    do
    {
      sub_21D4D97E4(v41, v29, type metadata accessor for TTRReminderTitleAttributesHarvester.Attribute);
      v45 = *(v98 + 20);
      sub_21D4D97E4(&v29[v45], v13, type metadata accessor for TTRReminderSuggestedAttribute.AttributeType);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      sub_21D4D5640(v13, type metadata accessor for TTRReminderSuggestedAttribute.AttributeType);
      if (EnumCaseMultiPayload)
      {
        v47 = &v29[v45];
        v48 = v91;
        sub_21D4D97E4(v47, v91, type metadata accessor for TTRReminderSuggestedAttribute.AttributeType);
        v49 = swift_getEnumCaseMultiPayload();
        sub_21D4D5640(v48, type metadata accessor for TTRReminderSuggestedAttribute.AttributeType);
        if (v49 == 4)
        {
          sub_21D4D97E4(v29, v89, type metadata accessor for TTRReminderTitleAttributesHarvester.Attribute);
          v50 = v95;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v50 = sub_21D2137C8(0, v50[2] + 1, 1, v50);
          }

          v52 = v50[2];
          v51 = v50[3];
          v95 = v50;
          if (v52 >= v51 >> 1)
          {
            v95 = sub_21D2137C8((v51 > 1), v52 + 1, 1, v95);
          }

          sub_21D4D5640(v29, type metadata accessor for TTRReminderTitleAttributesHarvester.Attribute);
          v54 = v94;
          v53 = v95;
          v95[2] = v52 + 1;
          v43 = v53 + v54 + v52 * v42;
          v44 = v89;
        }

        else
        {
          sub_21D4D97E4(v29, v90, type metadata accessor for TTRReminderTitleAttributesHarvester.Attribute);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v39 = sub_21D2137C8(0, v39[2] + 1, 1, v39);
          }

          v61 = v39[2];
          v60 = v39[3];
          if (v61 >= v60 >> 1)
          {
            v39 = sub_21D2137C8((v60 > 1), v61 + 1, 1, v39);
          }

          sub_21D4D5640(v29, type metadata accessor for TTRReminderTitleAttributesHarvester.Attribute);
          v39[2] = v61 + 1;
          v43 = v39 + v94 + v61 * v42;
          v44 = v90;
        }

        sub_21D4D984C(v44, v43, type metadata accessor for TTRReminderTitleAttributesHarvester.Attribute);
      }

      else
      {
        sub_21D4D97E4(v29, v93, type metadata accessor for TTRReminderTitleAttributesHarvester.Attribute);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v96 = sub_21D2137C8(0, v96[2] + 1, 1, v96);
        }

        v55 = v6;
        v57 = v96[2];
        v56 = v96[3];
        v58 = v39;
        if (v57 >= v56 >> 1)
        {
          v96 = sub_21D2137C8((v56 > 1), v57 + 1, 1, v96);
        }

        sub_21D4D5640(v29, type metadata accessor for TTRReminderTitleAttributesHarvester.Attribute);
        v59 = v96;
        v96[2] = v57 + 1;
        sub_21D4D984C(v93, v59 + v94 + v57 * v42, type metadata accessor for TTRReminderTitleAttributesHarvester.Attribute);
        v101 = v59;
        v39 = v58;
        v6 = v55;
        v8 = v88;
      }

      v41 += v42;
      --v40;
    }

    while (v40);
  }

  else
  {
    v95 = MEMORY[0x277D84F90];
    v96 = MEMORY[0x277D84F90];
  }

  v94 = v39;
  v62 = v85;
  sub_21D4C417C(v85, &v101);
  v93 = v63;
  v91 = 0;
  v64 = *(v62 + 16);
  if (v64)
  {
    v65 = (*(v87 + 80) + 32) & ~*(v87 + 80);
    v66 = *(v87 + 72);
    v67 = v62 + v65;
    v34 = MEMORY[0x277D84F90];
    v68 = v92;
    do
    {
      sub_21D4D97E4(v67, v68, type metadata accessor for TTRReminderTitleAttributesHarvester.Attribute);
      sub_21D4D97E4(v68 + *(v98 + 20), v8, type metadata accessor for TTRReminderSuggestedAttribute.AttributeType);
      v69 = swift_getEnumCaseMultiPayload();
      sub_21D4D5640(v8, type metadata accessor for TTRReminderSuggestedAttribute.AttributeType);
      if (v69)
      {
        sub_21D4D984C(v68, v97, type metadata accessor for TTRReminderTitleAttributesHarvester.Attribute);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v100 = v34;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_21D18F024(0, v34[2] + 1, 1);
          v34 = v100;
        }

        v72 = v34[2];
        v71 = v34[3];
        if (v72 >= v71 >> 1)
        {
          sub_21D18F024((v71 > 1), v72 + 1, 1);
          v34 = v100;
        }

        v34[2] = v72 + 1;
        sub_21D4D984C(v97, v34 + v65 + v72 * v66, type metadata accessor for TTRReminderTitleAttributesHarvester.Attribute);
        v68 = v92;
      }

      else
      {
        sub_21D4D5640(v68, type metadata accessor for TTRReminderTitleAttributesHarvester.Attribute);
      }

      v67 += v66;
      --v64;
    }

    while (v64);
  }

  else
  {
    v34 = MEMORY[0x277D84F90];
  }

  if (*(v86 + 16))
  {
    v8 = ((*(v87 + 80) + 32) & ~*(v87 + 80));
    v29 = v83;
    v73 = sub_21D4D97E4(&v8[v86], v83, type metadata accessor for TTRReminderTitleAttributesHarvester.Attribute);
    LOBYTE(v100) = 0;
    MEMORY[0x28223BE20](v73);
    *(&v82 - 2) = v29;
    *(&v82 - 1) = &v100;
    v37 = sub_21D4E665C(sub_21D4D98B4, (&v82 - 4), v95);

    if (v100)
    {
LABEL_41:
      sub_21D4D5640(v29, type metadata accessor for TTRReminderTitleAttributesHarvester.Attribute);
      goto LABEL_43;
    }

    v30 = v82;
    sub_21D4D97E4(v29, v82, type metadata accessor for TTRReminderTitleAttributesHarvester.Attribute);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_38:
      v75 = *(v37 + 16);
      v74 = *(v37 + 24);
      if (v75 >= v74 >> 1)
      {
        v37 = sub_21D2137C8((v74 > 1), v75 + 1, 1, v37);
      }

      *(v37 + 16) = v75 + 1;
      sub_21D4D984C(v30, &v8[v37 + *(v87 + 72) * v75], type metadata accessor for TTRReminderTitleAttributesHarvester.Attribute);
      goto LABEL_41;
    }

LABEL_48:
    v37 = sub_21D2137C8(0, *(v37 + 16) + 1, 1, v37);
    goto LABEL_38;
  }

  v37 = v95;
LABEL_43:
  v76 = v93;
  v99 = v93;
  sub_21DBF8E0C();
  sub_21D562CB0(v34);
  v77 = sub_21DBF8E0C();
  sub_21D562CB0(v77);
  sub_21D562CB0(v37);
  sub_21D562CB0(v94);
  v78 = v99;
  v79 = *(v76 + 16);

  if (v79)
  {
    v80 = MEMORY[0x277D84F90];
  }

  else
  {
    v80 = sub_21DBF8E0C();
  }

  v100 = v78;
  sub_21D562CB0(v80);

  return v100;
}

uint64_t sub_21D4C620C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CFD0, &qword_21DC18B30);
  if (sub_21D4D496C(a1 + *(v4 + 48), a1))
  {
    sub_21D4D97E4(a1, a2, type metadata accessor for TTRReminderTitleAttributesHarvester.VersionedResults);
    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = type metadata accessor for TTRReminderTitleAttributesHarvester.VersionedResults(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a2, v5, 1, v6);
}

Swift::Void __swiftcall TTRReminderTitleAttributesHarvester.updateParserIfNeeded(forTextInputPrimaryLanguage:)(Swift::String forTextInputPrimaryLanguage)
{
  v2 = v1;
  object = forTextInputPrimaryLanguage._object;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60DB0, qword_21DC0BF70);
  MEMORY[0x28223BE20](v3 - 8);
  v63 = &v57 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68, &unk_21DC0C060);
  MEMORY[0x28223BE20](v5 - 8);
  v61 = &v57 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE65010, &qword_21DC08D60);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v57 - v11;
  v13 = sub_21DBF582C();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v60 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v57 - v17;
  *&v21 = MEMORY[0x28223BE20](v19).n128_u64[0];
  v22 = &v57 - v20;
  v23 = *(v1 + 24);
  if (v23)
  {
    v24 = v14;
    v25 = &v57 - v20;
    v26 = [v23 locale];
    sub_21DBF577C();

    v22 = v25;
    v14 = v24;
    (*(v24 + 56))(v9, 0, 1, v13);
  }

  else
  {
    (*(v14 + 56))(v9, 1, 1, v13);
  }

  sub_21D4C6A2C(v9, (v1 + OBJC_IVAR____TtC15RemindersUICore35TTRReminderTitleAttributesHarvester_initialParserLocale), v12);
  sub_21D0CF7E0(v9, &unk_27CE65010, &qword_21DC08D60);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_21D0CF7E0(v12, &unk_27CE65010, &qword_21DC08D60);
  }

  else
  {
    (*(v14 + 32))(v22, v12, v13);
    if (qword_280D0F388 != -1)
    {
      swift_once();
    }

    v27 = sub_21DBF84BC();
    __swift_project_value_buffer(v27, qword_280D0F390);
    (*(v14 + 16))(v18, v22, v13);

    v28 = sub_21DBF84AC();
    LODWORD(v29) = sub_21DBFAEDC();

    v30 = os_log_type_enabled(v28, v29);
    v59 = v14;
    if (v30)
    {
      v31 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v64 = v58;
      *v31 = 136315394;
      v32 = *(v1 + 24);
      if (v32)
      {
        v33 = [v32 locale];
        LODWORD(object) = v29;
        v29 = v60;
        sub_21DBF577C();

        v34 = sub_21DBF570C();
        v36 = v35;
        v37 = v29;
        LOBYTE(v29) = object;
        (*(v14 + 8))(v37, v13);
      }

      else
      {
        v36 = 0xE300000000000000;
        v34 = 7104878;
      }

      v38 = sub_21D0CDFB4(v34, v36, &v64);

      *(v31 + 4) = v38;
      *(v31 + 12) = 2080;
      v39 = sub_21DBF570C();
      v41 = v40;
      object = *(v14 + 8);
      object(v18, v13);
      v42 = sub_21D0CDFB4(v39, v41, &v64);

      *(v31 + 14) = v42;
      _os_log_impl(&dword_21D0C9000, v28, v29, "TTRReminderTitleAttributesHarvester: recreating REMNLQueryParser parser {from: %s, to: %s}", v31, 0x16u);
      v43 = v58;
      swift_arrayDestroy();
      MEMORY[0x223D46520](v43, -1, -1);
      MEMORY[0x223D46520](v31, -1, -1);
    }

    else
    {

      object = *(v14 + 8);
      object(v18, v13);
    }

    sub_21D0D3954(v2 + OBJC_IVAR____TtC15RemindersUICore35TTRReminderTitleAttributesHarvester_now, v61, &qword_27CE58D68, &unk_21DC0C060);
    v44 = sub_21DBF5C4C();
    v45 = *(v44 - 8);
    (*(v45 + 56))(v63, 1, 1, v44);
    v46 = v22;
    v47 = sub_21DBF574C();
    v48 = v61;
    v49 = v47;
    v50 = sub_21DBF563C();
    v51 = *(v50 - 8);
    v52 = 0;
    if ((*(v51 + 48))(v48, 1, v50) != 1)
    {
      v52 = sub_21DBF55BC();
      (*(v51 + 8))(v48, v50);
    }

    v53 = v63;
    if ((*(v45 + 48))(v63, 1, v44) == 1)
    {
      v54 = 0;
    }

    else
    {
      v54 = sub_21DBF5C0C();
      (*(v45 + 8))(v53, v44);
    }

    v55 = [objc_allocWithZone(MEMORY[0x277D45A90]) initWithLocale:v49 referenceDate:v52 referenceTimeZone:v54 forTesting:0];

    object(v46, v13);
    v56 = *(v2 + 24);
    *(v2 + 24) = v55;
  }
}

uint64_t sub_21D4C6A2C@<X0>(uint64_t a1@<X0>, char *a4@<X3>, uint64_t a5@<X8>)
{
  v73 = a1;
  v74 = a5;
  v6 = sub_21DBF56DC();
  v69 = *(v6 - 8);
  v70 = v6;
  MEMORY[0x28223BE20](v6);
  v67 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v68 = &v61 - v9;
  v10 = sub_21DBF580C();
  v64 = *(v10 - 8);
  v65 = v10;
  MEMORY[0x28223BE20](v10);
  v63 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v62 = &v61 - v13;
  v14 = sub_21DBF582C();
  v72 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v61 = &v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v71 = &v61 - v17;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D118, &qword_21DC18C88);
  MEMORY[0x28223BE20](v66);
  v19 = &v61 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE65010, &qword_21DC08D60);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v61 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = &v61 - v24;
  MEMORY[0x28223BE20](v26);
  v28 = &v61 - v27;
  MEMORY[0x28223BE20](v29);
  v31 = &v61 - v30;
  sub_21DBF573C();
  if (!v32)
  {
    v65 = v25;
    v70 = v31;
    v35 = v72;
    v67 = *(v72 + 16);
    v68 = a4;
    (v67)(v28, a4, v14);
    v69 = *(v35 + 56);
    (v69)(v28, 0, 1, v14);
    v36 = *(v66 + 48);
    sub_21D0D3954(v73, v19, &unk_27CE65010, &qword_21DC08D60);
    sub_21D0D3954(v28, &v19[v36], &unk_27CE65010, &qword_21DC08D60);
    v37 = *(v35 + 48);
    v38 = v19;
    if (v37(v19, 1, v14) == 1)
    {
      sub_21D0CF7E0(v28, &unk_27CE65010, &qword_21DC08D60);
      v39 = v37(&v19[v36], 1, v14);
      v40 = v70;
      if (v39 == 1)
      {
        sub_21D0CF7E0(v19, &unk_27CE65010, &qword_21DC08D60);
LABEL_16:
        v57 = 1;
        goto LABEL_17;
      }
    }

    else
    {
      v54 = v19;
      v55 = v65;
      sub_21D0D3954(v54, v65, &unk_27CE65010, &qword_21DC08D60);
      if (v37((v38 + v36), 1, v14) != 1)
      {
        v58 = v38 + v36;
        v59 = v71;
        (*(v35 + 32))(v71, v58, v14);
        sub_21D0F1CB0(&qword_27CE5D120, MEMORY[0x277CC9788], MEMORY[0x277CC97A0]);
        LODWORD(v73) = sub_21DBFA10C();
        v60 = *(v35 + 8);
        v60(v59, v14);
        sub_21D0CF7E0(v28, &unk_27CE65010, &qword_21DC08D60);
        v60(v55, v14);
        sub_21D0CF7E0(v38, &unk_27CE65010, &qword_21DC08D60);
        v56 = v68;
        v40 = v70;
        if (v73)
        {
          goto LABEL_16;
        }

LABEL_14:
        (v67)(v40, v56, v14);
        v57 = 0;
LABEL_17:
        (v69)(v40, v57, 1, v14);
        return sub_21D0D523C(v40, v74, &unk_27CE65010, &qword_21DC08D60);
      }

      sub_21D0CF7E0(v28, &unk_27CE65010, &qword_21DC08D60);
      (*(v35 + 8))(v55, v14);
      v40 = v70;
    }

    sub_21D0CF7E0(v38, &qword_27CE5D118, &qword_21DC18C88);
    v56 = v68;
    goto LABEL_14;
  }

  sub_21DBF576C();
  sub_21D0D3954(v73, v22, &unk_27CE65010, &qword_21DC08D60);
  v33 = v72;
  v34 = v14;
  if ((*(v72 + 48))(v22, 1, v14) == 1)
  {
    sub_21D0CF7E0(v22, &unk_27CE65010, &qword_21DC08D60);
  }

  else
  {
    v41 = v61;
    (*(v33 + 32))(v61, v22, v14);
    sub_21DBF8E0C();
    v42 = v62;
    sub_21DBF57BC();
    v43 = v63;
    sub_21DBF581C();
    v44 = Locale.Language.isEquivalentOrMoreSpecific(than:)(v42);
    v45 = *(v64 + 8);
    v46 = v43;
    v47 = v65;
    v45(v46, v65);
    v45(v42, v47);
    (*(v33 + 8))(v41, v34);
    if (v44)
    {

      return (*(v33 + 56))(v74, 1, 1, v34);
    }
  }

  v49 = v68;
  sub_21DBF56CC();
  v51 = v69;
  v50 = v70;
  (*(v69 + 16))(v67, v49, v70);
  v52 = v71;
  sub_21DBF56EC();
  sub_21DBF570C();
  (*(v33 + 8))(v52, v34);
  v53 = v74;
  sub_21DBF56FC();
  (*(v51 + 8))(v49, v50);
  return (*(v33 + 56))(v53, 0, 1, v34);
}

uint64_t TTRReminderTitleAttributesHarvester.feedback(for:feedbackFactor:)(uint64_t a1, double a2)
{
  v22 = sub_21DBF9D2C();
  v24 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_21DBF9D5C();
  v21 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21DBF79FC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v13 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(v2 + OBJC_IVAR____TtC15RemindersUICore35TTRReminderTitleAttributesHarvester_backgroundQueue);
  (*(v10 + 16))(v13, a1, v9, v12);
  v14 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v15 = (v11 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  (*(v10 + 32))(v16 + v14, v13, v9);
  *(v16 + v15) = a2;
  *(v16 + ((v15 + 15) & 0xFFFFFFFFFFFFFFF8)) = v2;
  aBlock[4] = sub_21D4D5520;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D0D74FC;
  aBlock[3] = &block_descriptor_40;
  v17 = _Block_copy(aBlock);

  sub_21DBF9D4C();
  v25 = MEMORY[0x277D84F90];
  sub_21D0F1CB0(&qword_280D1B920, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD60, &qword_21DC092C0);
  sub_21D0D0F1C(&qword_280D1B910, &unk_27CE5CD60, &qword_21DC092C0, MEMORY[0x277D83970]);
  v18 = v22;
  sub_21DBFBCBC();
  MEMORY[0x223D438F0](0, v8, v6, v17);
  _Block_release(v17);
  (*(v24 + 8))(v6, v18);
  (*(v21 + 8))(v8, v23);
}

uint64_t sub_21D4C765C(uint64_t a1, uint64_t a2, double a3)
{
  v5 = sub_21DBF79FC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21DBF7B9C();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v8, a1, v5, v11);
  sub_21DBF7B8C();
  if (qword_280D0F388 != -1)
  {
    swift_once();
  }

  v14 = sub_21DBF84BC();
  __swift_project_value_buffer(v14, qword_280D0F390);
  v15 = sub_21DBF84AC();
  v16 = sub_21DBFAEAC();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_21D0C9000, v15, v16, "Sending suggested attribute model feedback to invocation performer", v17, 2u);
    MEMORY[0x223D46520](v17, -1, -1);
  }

  if (*(a2 + OBJC_IVAR____TtC15RemindersUICore35TTRReminderTitleAttributesHarvester_suggestedAttributesHarvester))
  {
    sub_21DBF7CBC();
  }

  return (*(v10 + 8))(v13, v9);
}

uint64_t TTRReminderTitleAttributesHarvester.postSuggestionAnalytics(reminder:)(uint64_t a1)
{
  v3 = sub_21DBF9D2C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_21DBF9D5C();
  v7 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14[1] = *(v1 + OBJC_IVAR____TtC15RemindersUICore35TTRReminderTitleAttributesHarvester_backgroundQueue);
  sub_21D4D55B8(a1, v18);
  v10 = swift_allocObject();
  v11 = v18[1];
  *(v10 + 16) = v18[0];
  *(v10 + 32) = v11;
  *(v10 + 48) = v18[2];
  *(v10 + 64) = v1;
  aBlock[4] = sub_21D4D5614;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D0D74FC;
  aBlock[3] = &block_descriptor_6_1;
  v12 = _Block_copy(aBlock);

  sub_21DBF9D4C();
  v16 = MEMORY[0x277D84F90];
  sub_21D0F1CB0(&qword_280D1B920, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD60, &qword_21DC092C0);
  sub_21D0D0F1C(&qword_280D1B910, &unk_27CE5CD60, &qword_21DC092C0, MEMORY[0x277D83970]);
  sub_21DBFBCBC();
  MEMORY[0x223D438F0](0, v9, v6, v12);
  _Block_release(v12);
  (*(v4 + 8))(v6, v3);
  (*(v7 + 8))(v9, v15);
}

uint64_t sub_21D4C7CB8(void *a1, uint64_t a2)
{
  v4 = sub_21DBF7C3C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_21D4D98F0(a1);
  if (result)
  {

    sub_21DBF7C2C();
    if (*(a2 + OBJC_IVAR____TtC15RemindersUICore35TTRReminderTitleAttributesHarvester_suggestedAttributesHarvester))
    {
      sub_21DBF7BFC();
    }

    (*(v5 + 8))(v7, v4);
  }

  return result;
}

uint64_t TTRReminderTitleAttributesHarvester.harvestAutoCompleteAttributesFrom(autoCompleteReminders:)(unint64_t a1)
{
  v2 = sub_21DBF7A0C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_21DBF79FC();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v14[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v3 + 104))(v5, *MEMORY[0x277D45708], v2, v8);
  sub_21DBF79EC();
  v15 = v10;
  sub_21D174280(sub_21D4D5620, v14, a1);
  v12 = v11;
  (*(v7 + 8))(v10, v6);
  return v12;
}

id sub_21D4C80F8@<X0>(void **a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = *a1;
  v6 = type metadata accessor for TTRReminderTitleAttributesHarvester.Attribute(0);
  *&a3[*(v6 + 20)] = v5;
  type metadata accessor for TTRReminderSuggestedAttribute.AttributeType(0);
  swift_storeEnumTagMultiPayload();
  v7 = *(v6 + 24);
  v8 = sub_21DBF79FC();
  (*(*(v8 - 8) + 16))(&a3[v7], a2, v8);
  *a3 = 0;
  *(a3 + 1) = 0;
  return v5;
}

uint64_t sub_21D4C81AC(__n128 a1)
{
  v2 = sub_21DBF580C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CF40, &qword_21DC18A98);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v29 - v7;
  v9 = sub_21DBF582C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v14 = MEMORY[0x28223BE20](v13).n128_u64[0];
  v16 = v29 - v15;
  v17 = *(v1 + 24);
  if (!v17)
  {
    v22 = 0;
    return v22 & 1;
  }

  v18 = [v17 locale];
  sub_21DBF577C();

  (*(v10 + 32))(v16, v12, v9);
  sub_21DBF581C();
  sub_21DBF57DC();
  (*(v3 + 8))(v5, v2);
  v19 = sub_21DBF572C();
  v20 = *(v19 - 8);
  if ((*(v20 + 48))(v8, 1, v19) != 1)
  {
    v23 = sub_21DBF571C();
    v25 = v24;
    (*(v20 + 8))(v8, v19);
    if (v23 == 28261 && v25 == 0xE200000000000000)
    {
    }

    else
    {
      v27 = sub_21DBFC64C();

      if ((v27 & 1) == 0)
      {
        goto LABEL_4;
      }
    }

    (*(v10 + 8))(v16, v9);
    v22 = 1;
    return v22 & 1;
  }

  sub_21D0CF7E0(v8, &qword_27CE5CF40, &qword_21DC18A98);
LABEL_4:
  v29[2] = sub_21DBF570C();
  v29[3] = v21;
  v29[0] = 0x736E61482D687ALL;
  v29[1] = 0xE700000000000000;
  sub_21D176F0C();
  v22 = sub_21DBFBBDC();

  (*(v10 + 8))(v16, v9);
  return v22 & 1;
}

uint64_t sub_21D4C8548(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D038, &qword_21DC18B98);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v10 - v6;
  v10[1] = a1;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_21D4DA488;
  *(v8 + 24) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D040, &qword_21DC18BA0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D048, &unk_21DC18BA8);
  sub_21D0D0F1C(&qword_280D0C4A0, &qword_27CE5D040, &qword_21DC18BA0, MEMORY[0x277CBCD90]);
  sub_21DBF931C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B280, &qword_21DC09C40);
  sub_21D0D0F1C(&qword_280D0C570, &qword_27CE5D038, &qword_21DC18B98, MEMORY[0x277CBCCC0]);
  sub_21DBF938C();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_21D4C8780(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a2;
  v5 = type metadata accessor for TTRReminderTitleAttributesHarvester.Attribute(0);
  v54 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68, &unk_21DC0C060);
  MEMORY[0x28223BE20](v8 - 8);
  v55 = v53 - v9;
  v10 = sub_21DBF9D8C();
  v11 = *(v10 - 8);
  v59 = v10;
  v60 = v11;
  MEMORY[0x28223BE20](v10);
  v58 = (v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_280D0F388 != -1)
  {
    swift_once();
  }

  v57 = a3;
  v13 = sub_21DBF84BC();
  v56 = __swift_project_value_buffer(v13, qword_280D0F390);
  v14 = sub_21DBF84AC();
  v15 = sub_21DBFAE9C();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_21D0C9000, v14, v15, "Harvesting attributes using NLP", v16, 2u);
    MEMORY[0x223D46520](v16, -1, -1);
  }

  v17 = type metadata accessor for TTRReminderTitleAttributesHarvester.HarvestRequest(0);
  v18 = v62;
  v19 = sub_21DBF640C();
  v20 = (v18 + *(v17 + 24));
  v22 = *v20;
  v21 = v20[1];
  v64 = *(a1 + 24);
  v23 = v64;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D0F0, &unk_21DC18C78);
  v24 = v61;
  sub_21DBFBA6C();

  if (v24)
  {
    return v17;
  }

  v53[0] = v17;
  v53[1] = a1;
  v53[2] = v21;
  v53[3] = v22;
  v61 = v63;
  v25 = *(a1 + OBJC_IVAR____TtC15RemindersUICore35TTRReminderTitleAttributesHarvester_backgroundQueue);
  v27 = v58;
  v26 = v59;
  *v58 = v25;
  v28 = v60;
  (*(v60 + 104))(v27, *MEMORY[0x277D85200], v26);
  v29 = v25;
  LOBYTE(v25) = sub_21DBF9DAC();
  result = (*(v28 + 8))(v27, v26);
  if (v25)
  {
    v31 = sub_21DBFA12C();
    v32 = v61;
    v33 = [v61 parseString_];

    if (v33)
    {
      v60 = 0;
      v34 = v19 ^ 1;
      sub_21D0D8CF0(0, &qword_280D177E0, 0x277CCA898);
      v35 = sub_21DBFA5EC();

      v36 = [v32 referenceDate];
      v37 = v55;
      sub_21DBF55FC();

      v38 = sub_21DBF563C();
      (*(*(v38 - 8) + 56))(v37, 0, 1, v38);
      v17 = sub_21D4D072C(v35, v37, v34 & 1);

      sub_21D0CF7E0(v37, &qword_27CE58D68, &unk_21DC0C060);
      v39 = sub_21DBF84AC();
      v40 = sub_21DBFAE9C();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        *v41 = 0;
        _os_log_impl(&dword_21D0C9000, v39, v40, "Using QueryParser NLP attributes", v41, 2u);
        MEMORY[0x223D46520](v41, -1, -1);
      }

      sub_21DBF8E0C();
      v42 = sub_21DBF84AC();
      v43 = sub_21DBFAE9C();
      v44 = os_log_type_enabled(v42, v43);
      v45 = v62;
      v46 = v53[0];
      if (v44)
      {
        v47 = swift_slowAlloc();
        *v47 = 134217984;
        *(v47 + 4) = *(v17 + 16);

        _os_log_impl(&dword_21D0C9000, v42, v43, "NLP finished {attributes.count: %ld}", v47, 0xCu);
        MEMORY[0x223D46520](v47, -1, -1);

        v48 = *(v17 + 16);
        if (!v48)
        {
          return v17;
        }

LABEL_15:
        v50 = v54;
        v51 = v17 + ((*(v54 + 80) + 32) & ~*(v54 + 80));
        swift_beginAccess();
        v52 = *(v50 + 72);
        do
        {
          sub_21D4D97E4(v51, v7, type metadata accessor for TTRReminderTitleAttributesHarvester.Attribute);
          if (swift_weakLoadStrong())
          {
            sub_21D4C8E14(v7, *(v45 + *(v46 + 20)));
          }

          sub_21D4D5640(v7, type metadata accessor for TTRReminderTitleAttributesHarvester.Attribute);
          v51 += v52;
          --v48;
        }

        while (v48);
        return v17;
      }

      v48 = *(v17 + 16);
      if (v48)
      {
        goto LABEL_15;
      }
    }

    else
    {
      sub_21D4DA518();
      swift_allocError();
      *v49 = 0;
      swift_willThrow();
    }

    return v17;
  }

  __break(1u);
  return result;
}

void sub_21D4C8E14(char *a1, uint64_t a2)
{
  v81 = a2;
  v86 = a1;
  v85 = sub_21DBF643C();
  v75 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v84 = &v70 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_21DBF509C();
  v4 = *(v3 - 8);
  v76 = v3;
  v77 = v4;
  MEMORY[0x28223BE20](v3);
  v83 = &v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_21DBF7BCC();
  v82 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v7 = &v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21DBF7BEC();
  v79 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v70 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v70 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v70 - v18;
  v20 = type metadata accessor for TTRRecurrenceRuleModel(0);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v70 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for TTRReminderSuggestedAttribute.AttributeType(0);
  MEMORY[0x28223BE20](v23);
  v25 = (&v70 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = sub_21DBF7A0C();
  MEMORY[0x28223BE20](v26);
  v28 = &v70 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v29);
  v87 = v32;
  v88 = &v70 - v31;
  v33 = *(v32 + 104);
  v89 = v34;
  v33(v30);
  v35 = type metadata accessor for TTRReminderTitleAttributesHarvester.Attribute(0);
  sub_21D4D97E4(&v86[*(v35 + 20)], v25, type metadata accessor for TTRReminderSuggestedAttribute.AttributeType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload > 7)
    {
      v37 = v87;
      v38 = v88;
    }

    else
    {
      v37 = v87;
      v38 = v88;
      if (EnumCaseMultiPayload != 5)
      {
        v39 = *(v87 + 8);
        v40 = v88;
LABEL_32:
        v39(v40, v89);
        return;
      }
    }

    (*(v37 + 8))(v38, v89);
LABEL_13:
    sub_21D4D5640(v25, type metadata accessor for TTRReminderSuggestedAttribute.AttributeType);
    return;
  }

  v71 = v13;
  v72 = v22;
  v41 = v84;
  v42 = v85;
  v86 = v28;
  v73 = v8;
  v74 = v7;
  if (EnumCaseMultiPayload > 1)
  {
    v43 = v88;
    if (EnumCaseMultiPayload == 2)
    {
      v55 = *v25;
      v56 = [*v25 structuredLocation];
      v57 = [v56 contactLabel];

      if (v57)
      {
        sub_21DBFA16C();

        v58 = [v55 proximity];
        if (sub_21DBFA24C())
        {
          v83 = v55;

          v59 = MEMORY[0x277D45000];
          v60 = v80;
          v62 = v74;
          v61 = v75;
        }

        else
        {
          v67 = sub_21DBFA25C();

          v60 = v80;
          v62 = v74;
          v61 = v75;
          if ((v67 & 1) == 0)
          {
            (*(v87 + 8))(v88, v89);

            return;
          }

          v83 = v55;
          v59 = MEMORY[0x277D45008];
        }

        *v41 = v58;
        v68 = v61;
        (*(v61 + 104))(v41, *v59, v42);
        sub_21DBF642C();
        (*(v68 + 8))(v41, v42);
        (*(v82 + 104))(v62, *MEMORY[0x277D457E0], v60);
        (*(v87 + 16))(v86, v88, v89);
        sub_21DBFADFC();
        v69 = v71;
        sub_21DBF7BDC();
        if (*(v78 + OBJC_IVAR____TtC15RemindersUICore35TTRReminderTitleAttributesHarvester_suggestedAttributesHarvester))
        {
          sub_21DBF7BBC();
        }

        (*(v79 + 8))(v69, v73);
        v40 = v88;
        v39 = *(v87 + 8);
        goto LABEL_32;
      }
    }

    else
    {
      v44 = v82;
      v45 = v86;
      if (EnumCaseMultiPayload != 3)
      {
        (*(v87 + 8))(v88, v89);
        goto LABEL_13;
      }

      v46 = *v25;
      v47 = [*v25 description];
      sub_21DBFA16C();

      (*(v44 + 104))(v74, *MEMORY[0x277D457D8], v80);
      (*(v87 + 16))(v45, v43, v89);
      sub_21DBFADFC();
      sub_21DBF7BDC();
      if (*(v78 + OBJC_IVAR____TtC15RemindersUICore35TTRReminderTitleAttributesHarvester_suggestedAttributesHarvester))
      {
        sub_21DBF7BBC();
      }

      (*(v79 + 8))(v10, v73);
    }

    v39 = *(v87 + 8);
    v40 = v43;
    goto LABEL_32;
  }

  v48 = v88;
  if (EnumCaseMultiPayload)
  {
    v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CF38, &qword_21DC188E0);
    sub_21D4D984C(v25 + *(v63 + 48), v72, type metadata accessor for TTRRecurrenceRuleModel);
    v64 = TTRRecurrenceRuleModel.standaloneREMRecurrenceRule()();
    v65 = [v64 iCalendarDescription];

    sub_21DBFA16C();
    (*(v82 + 104))(v74, *MEMORY[0x277D457D0], v80);
    v66 = v87;
    (*(v87 + 16))(v86, v48, v89);
    sub_21DBFADFC();
    sub_21DBF7BDC();
    if (*(v78 + OBJC_IVAR____TtC15RemindersUICore35TTRReminderTitleAttributesHarvester_suggestedAttributesHarvester))
    {
      sub_21DBF7BBC();
    }

    (*(v79 + 8))(v19, v73);
    sub_21D4D5640(v72, type metadata accessor for TTRRecurrenceRuleModel);
    (*(v66 + 8))(v48, v89);
    (*(v77 + 8))(v25, v76);
  }

  else
  {
    v49 = v77;
    v50 = v83;
    v51 = v25;
    v52 = v76;
    v53 = (*(v77 + 32))(v83, v51, v76);
    MEMORY[0x223D3D5E0](v53);
    (*(v82 + 104))(v74, *MEMORY[0x277D457C8], v80);
    v54 = v87;
    (*(v87 + 16))(v86, v48, v89);
    sub_21DBFADFC();
    sub_21DBF7BDC();
    if (*(v78 + OBJC_IVAR____TtC15RemindersUICore35TTRReminderTitleAttributesHarvester_suggestedAttributesHarvester))
    {
      sub_21DBF7BBC();
    }

    (*(v79 + 8))(v16, v73);
    (*(v49 + 8))(v50, v52);
    (*(v54 + 8))(v88, v89);
  }
}

uint64_t sub_21D4C9908@<X0>(char *a1@<X0>, uint64_t (*a2)(uint64_t, char *)@<X1>, uint64_t *a3@<X8>)
{
  v7 = *a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D030, &qword_21DC18B90);
  result = a2(v7, &a1[*(v8 + 48)]);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_21D4C99B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v44 = a2;
  v45 = a3;
  v38 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CFE0, &qword_21DC18B40);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v33 - v6;
  v8 = sub_21DBF8F3C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CFE8, &qword_21DC18B48);
  v13 = *(v12 - 8);
  v36 = v12;
  v37 = v13;
  MEMORY[0x28223BE20](v12);
  v15 = &v33 - v14;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CFF0, &qword_21DC18B50);
  v43 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v34 = &v33 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CFF8, &qword_21DC18B58);
  v18 = *(v17 - 8);
  v41 = v17;
  v42 = v18;
  v19 = MEMORY[0x28223BE20](v17);
  v39 = &v33 - v20;
  v35 = *(v3 + OBJC_IVAR____TtC15RemindersUICore35TTRReminderTitleAttributesHarvester_backgroundQueue);
  (*(v9 + 104))(v11, *MEMORY[0x277CBCBD0], v8, v19);
  (*(v5 + 104))(v7, *MEMORY[0x277CBCBE8], v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CF98, &qword_21DC18AF8);
  sub_21D0D0F1C(&qword_280D0C548, &qword_27CE5CF98, &qword_21DC18AF8, MEMORY[0x277CBCCF8]);
  sub_21DBF92FC();
  (*(v5 + 8))(v7, v4);
  (*(v9 + 8))(v11, v8);
  sub_21D0D0F1C(&qword_280D0C578, &qword_27CE5CFE8, &qword_21DC18B48, MEMORY[0x277CBCC80]);
  sub_21D0F1CB0(&qword_280D10890, type metadata accessor for TTRReminderTitleAttributesHarvester.HarvestRequest, byte_21DC18A48);
  v21 = v34;
  v22 = v36;
  sub_21DBF93AC();
  (*(v37 + 8))(v15, v22);
  v23 = swift_allocObject();
  swift_weakInit();
  v24 = swift_allocObject();
  v25 = v35;
  v24[2] = v35;
  v24[3] = v23;
  v26 = v45;
  v24[4] = v44;
  v24[5] = v26;
  v27 = v25;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CFA8, &qword_21DC18B08);
  sub_21D0D0F1C(&qword_280D0C5E8, &qword_27CE5CFF0, &qword_21DC18B50, MEMORY[0x277CBCBE0]);
  sub_21D0D0F1C(&qword_280D0C4A8, &qword_27CE5CFA8, &qword_21DC18B08, MEMORY[0x277CBCD90]);
  v29 = v39;
  v28 = v40;
  sub_21DBF93DC();

  (*(v43 + 8))(v21, v28);
  sub_21D0D0F1C(&qword_280D0C550, &qword_27CE5CFF8, &qword_21DC18B58, MEMORY[0x277CBCCE0]);
  v30 = v41;
  v31 = sub_21DBF920C();
  (*(v42 + 8))(v29, v30);
  return v31;
}

uint64_t sub_21D4C9FB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v44 = a2;
  v45 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CFE0, &qword_21DC18B40);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v34 - v7;
  v9 = sub_21DBF8F3C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D0D8, &qword_21DC18C60);
  v14 = *(v13 - 8);
  v37 = v13;
  v38 = v14;
  MEMORY[0x28223BE20](v13);
  v16 = &v34 - v15;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D0E0, &qword_21DC18C68);
  v43 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v35 = &v34 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D0E8, &qword_21DC18C70);
  v19 = *(v18 - 8);
  v41 = v18;
  v42 = v19;
  v20 = MEMORY[0x28223BE20](v18);
  v39 = &v34 - v21;
  v46 = a1;
  v36 = *(v3 + OBJC_IVAR____TtC15RemindersUICore35TTRReminderTitleAttributesHarvester_backgroundQueue);
  (*(v10 + 104))(v12, *MEMORY[0x277CBCBD0], v9, v20);
  (*(v6 + 104))(v8, *MEMORY[0x277CBCBE8], v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CFA0, &qword_21DC18B00);
  sub_21D0D0F1C(&qword_280D0C7B0, &qword_27CE5CFA0, &qword_21DC18B00, MEMORY[0x277D457F8]);
  sub_21DBF92FC();
  (*(v6 + 8))(v8, v5);
  (*(v10 + 8))(v12, v9);
  sub_21D0D0F1C(&qword_280D0C580, &qword_27CE5D0D8, &qword_21DC18C60, MEMORY[0x277CBCC80]);
  sub_21D0F1CB0(&qword_280D10890, type metadata accessor for TTRReminderTitleAttributesHarvester.HarvestRequest, byte_21DC18A48);
  v22 = v35;
  v23 = v37;
  sub_21DBF93AC();
  (*(v38 + 8))(v16, v23);
  v24 = swift_allocObject();
  swift_weakInit();
  v25 = swift_allocObject();
  v26 = v36;
  v25[2] = v36;
  v25[3] = v24;
  v27 = v45;
  v25[4] = v44;
  v25[5] = v27;
  v28 = v26;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CFA8, &qword_21DC18B08);
  sub_21D0D0F1C(&qword_280D0C5F0, &qword_27CE5D0E0, &qword_21DC18C68, MEMORY[0x277CBCBE0]);
  sub_21D0D0F1C(&qword_280D0C4A8, &qword_27CE5CFA8, &qword_21DC18B08, MEMORY[0x277CBCD90]);
  v30 = v39;
  v29 = v40;
  sub_21DBF93DC();

  (*(v43 + 8))(v22, v29);
  sub_21D0D0F1C(&qword_280D0C558, &qword_27CE5D0E8, &qword_21DC18C70, MEMORY[0x277CBCCE0]);
  v31 = v41;
  v32 = sub_21DBF920C();
  (*(v42 + 8))(v30, v31);
  return v32;
}

void sub_21D4CA5B4(void (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v7 = *(Strong + OBJC_IVAR____TtC15RemindersUICore35TTRReminderTitleAttributesHarvester_store);
    v8 = swift_allocObject();
    *(v8 + 16) = sub_21D22D130;
    *(v8 + 24) = v5;
    v16 = sub_21D4DA3EC;
    v17 = v8;
    aBlock = MEMORY[0x277D85DD0];
    v13 = 1107296256;
    v14 = sub_21D4CA934;
    v15 = &block_descriptor_47;
    v9 = _Block_copy(&aBlock);

    v10 = v7;

    [v10 anchoredBubbleCloudOverridesWithCompletion_];
    _Block_release(v9);
  }

  else
  {

    v11 = [objc_opt_self() unexpectedError];
    aBlock = v11;
    LOBYTE(v13) = 1;
    a1(&aBlock);
  }
}

void sub_21D4CA768(char a1, id a2, void (*a3)(id, uint64_t))
{
  if (a2)
  {
    v5 = a2;
    if (qword_280D0F388 != -1)
    {
      swift_once();
    }

    v6 = sub_21DBF84BC();
    __swift_project_value_buffer(v6, qword_280D0F390);
    v7 = a2;
    v8 = sub_21DBF84AC();
    v9 = sub_21DBFAEBC();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v16 = v11;
      *v10 = 136315138;
      swift_getErrorValue();
      v12 = sub_21DBFC75C();
      v14 = sub_21D0CDFB4(v12, v13, &v16);

      *(v10 + 4) = v14;
      _os_log_impl(&dword_21D0C9000, v8, v9, "TTRReminderTitleAttributesHarvester: Error when querying anchoredBubbleCloudOverridesPublisher {error: %s}", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x223D46520](v11, -1, -1);
      MEMORY[0x223D46520](v10, -1, -1);
    }

    v15 = a2;
    a3(a2, 1);
  }

  else
  {
    (a3)(a1 & 1);
  }
}

void sub_21D4CA934(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_21D4CA9AC(uint64_t a1, char a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D038, &qword_21DC18B98);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v11 - v6;
  v11[1] = a1;
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_21D4DA3B8;
  *(v9 + 24) = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D040, &qword_21DC18BA0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D048, &unk_21DC18BA8);
  sub_21D0D0F1C(&qword_280D0C4A0, &qword_27CE5D040, &qword_21DC18BA0, MEMORY[0x277CBCD90]);
  sub_21DBF931C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B280, &qword_21DC09C40);
  sub_21D0D0F1C(&qword_280D0C570, &qword_27CE5D038, &qword_21DC18B98, MEMORY[0x277CBCCC0]);
  sub_21DBF938C();
  return (*(v5 + 8))(v7, v4);
}

char *sub_21D4CABF8(uint64_t a1, void (*a2)(char *, uint64_t, uint64_t), int a3)
{
  LODWORD(v142) = a3;
  v150 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CFD8, &qword_21DC18B38);
  MEMORY[0x28223BE20](v4 - 8);
  v148 = &v107[-v5];
  v147 = type metadata accessor for TTRReminderTitleAttributesHarvester.Attribute(0);
  v141 = *(v147 - 8);
  MEMORY[0x28223BE20](v147);
  v146 = &v107[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_21DBF7A1C();
  v152 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v139 = &v107[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v11 = &v107[-v10];
  MEMORY[0x28223BE20](v12);
  v145 = &v107[-v13];
  MEMORY[0x28223BE20](v14);
  v143 = &v107[-v15];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D050, &unk_21DC18BB8);
  MEMORY[0x28223BE20](v16 - 8);
  v136 = &v107[-v17];
  v140 = sub_21DBF9D8C();
  v138 = *(v140 - 8);
  MEMORY[0x28223BE20](v140);
  v137 = &v107[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v131 = sub_21DBF7B0C();
  v149 = *(v131 - 8);
  MEMORY[0x28223BE20](v131);
  v135 = &v107[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v20);
  v128 = &v107[-v21];
  MEMORY[0x28223BE20](v22);
  v130 = &v107[-v23];
  v24 = sub_21DBF56BC();
  v129 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v133 = &v107[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v26);
  v134 = &v107[-v27];
  v28 = sub_21DBF7A0C();
  v29 = *(v28 - 1);
  MEMORY[0x28223BE20](v28);
  v31 = &v107[-((v30 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_280D0F388 != -1)
  {
LABEL_61:
    swift_once();
  }

  v32 = sub_21DBF84BC();
  v123 = __swift_project_value_buffer(v32, qword_280D0F390);
  v33 = sub_21DBF84AC();
  v34 = sub_21DBFAE9C();
  v35 = os_log_type_enabled(v33, v34);
  v151 = v7;
  if (v35)
  {
    v36 = swift_slowAlloc();
    *v36 = 0;
    _os_log_impl(&dword_21D0C9000, v33, v34, "Harvesting attributes using anchoredBubble model", v36, 2u);
    MEMORY[0x223D46520](v36, -1, -1);
  }

  if ((v142 & 1) == 0)
  {
    return MEMORY[0x277D84F90];
  }

  sub_21DBF7CCC();
  (*(v29 + 104))(v31, *MEMORY[0x277D456F8], v28);
  v37 = sub_21DBF7C4C();
  (*(v29 + 8))(v31, v28);
  if ((v37 & 1) == 0)
  {
    return MEMORY[0x277D84F90];
  }

  v38 = type metadata accessor for TTRReminderTitleAttributesHarvester.HarvestRequest(0);
  v39 = v38[5];
  v40 = (a2 + v38[6]);
  v42 = *v40;
  v41 = v40[1];
  v142 = v42;
  v132 = v41;
  v124 = *(a2 + v39);
  v43 = v129;
  (*(v129 + 16))(v134, a2, v24);
  v44 = v38[8];
  v127 = *(a2 + v38[7]);
  v126 = *(a2 + v44);
  v45 = v38[14];
  v46 = a2;
  v47 = v149;
  v122 = v24;
  v48 = (v149 + 16);
  v49 = v130;
  v50 = v131;
  v125 = *(v149 + 16);
  (v125)(v130, v46 + v45, v131);
  v51 = (v46 + v38[15]);
  v53 = *v51;
  v52 = v51[1];
  v121 = v53;
  v120 = v52;
  v153 = *(v150 + OBJC_IVAR____TtC15RemindersUICore35TTRReminderTitleAttributesHarvester_listPredictor);
  v54 = "TitleAttributesHarvester.swift";

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D0D0, &qword_21DC18C58);
  v55 = v144;
  sub_21DBFBA6C();
  v144 = v55;
  if (v55)
  {

    (*(v47 + 8))(v49, v50);
    (*(v43 + 8))(v134, v122);
    return v54;
  }

  v24 = v132;
  v57 = v142;
  v119 = v48;

  v58 = v154;
  v59 = *(v150 + OBJC_IVAR____TtC15RemindersUICore35TTRReminderTitleAttributesHarvester_backgroundQueue);
  v61 = v137;
  v60 = v138;
  *v137 = v59;
  v29 = v140;
  (*(v60 + 104))(v61, *MEMORY[0x277D85200], v140);
  v62 = v59;
  v63 = sub_21DBF9DAC();
  v64 = *(v60 + 8);
  v7 = v60 + 8;
  v64(v61, v29);
  if ((v63 & 1) == 0)
  {
    __break(1u);
    goto LABEL_63;
  }

  v116 = v58;
  v142 = sub_21DBF660C();
  v65 = MEMORY[0x277D45750];
  sub_21D0F1CB0(&qword_280D0C7C8, MEMORY[0x277D45750], MEMORY[0x277D45760]);
  v66 = v131;
  sub_21DBFA5BC();
  sub_21D0F1CB0(&qword_280D0C7B8, v65, MEMORY[0x277D45770]);
  v29 = v128;
  sub_21DBFC8DC();
  v24 = v135;
  v61 = v125;
  (v125)(v135, v130, v66);
  v67 = v65;
  v63 = v66;
  sub_21D0F1CB0(&qword_280D0C7C0, v67, MEMORY[0x277D45768]);
  sub_21DBFBC8C();
  v7 = v151;
  v57 = v149;
  if (qword_280D152C0 != -1)
  {
LABEL_63:
    swift_once();
  }

  TTRAcceptedAttributeCache.excludedAttributesDueToAccepted(_:)(v124, v24);
  v28 = v136;
  sub_21D4C465C(v24, v136);
  v68 = *(v57 + 8);
  v149 = v57 + 8;
  v115 = v68;
  v68(v24, v63);
  sub_21D0CF7E0(v28, &qword_27CE5D050, &unk_21DC18BB8);
  v69 = v63;
  v70 = *(v150 + OBJC_IVAR____TtC15RemindersUICore35TTRReminderTitleAttributesHarvester_store);
  v61(v24, v29, v69);
  sub_21DBF7B3C();
  swift_allocObject();
  v71 = v70;
  v124 = sub_21DBF7B1C();
  v72 = v142;
  v140 = *(v142 + 16);
  if (!v140)
  {
    v125 = MEMORY[0x277D84F90];
LABEL_45:

    v90 = *(v125 + 16);
    if (v90)
    {
      v91 = v151;
      v92 = *(v152 + 16);
      v93 = v125 + ((*(v152 + 80) + 32) & ~*(v152 + 80));
      v142 = *(v152 + 72);
      v143 = v92;
      v152 += 16;
      v94 = (v152 - 8);
      v95 = (v141 + 48);
      v54 = MEMORY[0x277D84F90];
      do
      {
        v96 = v145;
        v143(v145, v93, v91);
        v97 = v148;
        sub_21D4CE0E8(v96, v148);
        (*v94)(v96, v91);
        if ((*v95)(v97, 1, v147) == 1)
        {
          sub_21D0CF7E0(v97, &qword_27CE5CFD8, &qword_21DC18B38);
        }

        else
        {
          sub_21D4D984C(v97, v146, type metadata accessor for TTRReminderTitleAttributesHarvester.Attribute);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v54 = sub_21D2137C8(0, *(v54 + 2) + 1, 1, v54);
          }

          v99 = *(v54 + 2);
          v98 = *(v54 + 3);
          if (v99 >= v98 >> 1)
          {
            v54 = sub_21D2137C8((v98 > 1), v99 + 1, 1, v54);
          }

          *(v54 + 2) = v99 + 1;
          sub_21D4D984C(v146, &v54[((*(v141 + 80) + 32) & ~*(v141 + 80)) + *(v141 + 72) * v99], type metadata accessor for TTRReminderTitleAttributesHarvester.Attribute);
        }

        v93 += v142;
        --v90;
      }

      while (v90);

      v100 = v122;
      v101 = v129;
    }

    else
    {

      v54 = MEMORY[0x277D84F90];
      v101 = v129;
      v100 = v122;
    }

    v102 = v131;
    v103 = v115;
    v115(v128, v131);
    v103(v130, v102);
    (*(v101 + 8))(v134, v100);
    sub_21DBF8E0C();
    v104 = sub_21DBF84AC();
    v105 = sub_21DBFAE9C();
    if (os_log_type_enabled(v104, v105))
    {
      v106 = swift_slowAlloc();
      *v106 = 134217984;
      *(v106 + 4) = *(v54 + 2);

      _os_log_impl(&dword_21D0C9000, v104, v105, "anchoredBubble model finished {attributes.count: %ld}", v106, 0xCu);
      MEMORY[0x223D46520](v106, -1, -1);
    }

    else
    {
    }

    return v54;
  }

  v31 = 0;
  v109 = v11 + 8;
  v138 = v152 + 16;
  v137 = (v152 + 88);
  LODWORD(v136) = *MEMORY[0x277D456D0];
  LODWORD(v121) = *MEMORY[0x277D456B8];
  v118 = *MEMORY[0x277D456C0];
  v117 = *MEMORY[0x277D45718];
  v114 = *MEMORY[0x277D456E0];
  v113 = *MEMORY[0x277D45710];
  v132 = (v152 + 8);
  v135 = (v152 + 96);
  v112 = *MEMORY[0x277D456E8];
  v119 = (v129 + 8);
  v111 = *MEMORY[0x277D45720];
  v120 = (v152 + 32);
  v110 = *MEMORY[0x277D456C8];
  v108 = *MEMORY[0x277D456D8];
  v125 = MEMORY[0x277D84F90];
  a2 = v143;
  while (1)
  {
    if (v31 >= *(v72 + 16))
    {
      __break(1u);
      goto LABEL_61;
    }

    v73 = v152;
    v28 = ((*(v152 + 80) + 32) & ~*(v152 + 80));
    v29 = *(v152 + 72);
    v74 = *(v152 + 16);
    v24 = v138;
    v74(a2, &v28[v72 + v29 * v31], v7);
    v74(v11, a2, v7);
    v75 = (*(v73 + 88))(v11, v7);
    if (v75 == v136)
    {
      (*v135)(v11, v7);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D0A0, &qword_21DC18C18);
      if (v127)
      {
        v76 = [v127 uuid];
        v77 = v133;
        sub_21DBF568C();

        sub_21DBF565C();
        (*v119)(v77, v122);
      }

      v79 = sub_21DBF7B2C();

      v80 = sub_21DBF79FC();
      (*(*(v80 - 8) + 8))(v11, v80);
      if (v79)
      {
        v81 = *v120;
        (*v120)(v139, v143, v151);
        v82 = v125;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v153 = v82;
        if (isUniquelyReferenced_nonNull_native)
        {
          v84 = v82;
        }

        else
        {
          sub_21D18F068(0, *(v82 + 16) + 1, 1);
          v84 = v153;
        }

        v88 = *(v84 + 16);
        v87 = *(v84 + 24);
        if (v88 >= v87 >> 1)
        {
          sub_21D18F068((v87 > 1), v88 + 1, 1);
          v84 = v153;
        }

        *(v84 + 16) = v88 + 1;
        v125 = v84;
        v89 = &v28[v84 + v88 * v29];
        v7 = v151;
        v81(v89, v139, v151);
        a2 = v143;
      }

      else
      {
        a2 = v143;
        v7 = v151;
        (*v132)(v143, v151);
      }

      goto LABEL_15;
    }

    if (v75 != v121 && v75 != v118)
    {
      break;
    }

LABEL_22:
    (*v132)(a2, v7);
    (*v135)(v11, v7);
LABEL_23:
    v78 = sub_21DBF79FC();
    (*(*(v78 - 8) + 8))(v11, v78);
LABEL_15:
    ++v31;
    v72 = v142;
    if (v140 == v31)
    {
      goto LABEL_45;
    }
  }

  if (v75 == v117)
  {
    (*v132)(a2, v7);
    (*v135)(v11, v7);
    v85 = &qword_27CE5D098;
    v86 = &qword_21DC18C10;
LABEL_35:
    __swift_instantiateConcreteTypeFromMangledNameV2(v85, v86);

    goto LABEL_23;
  }

  if (v75 == v114)
  {
    (*v132)(a2, v7);
    (*v135)(v11, v7);
    v85 = &qword_27CE5D090;
    v86 = &qword_21DC18C08;
    goto LABEL_35;
  }

  if (v75 == v113)
  {
    (*v132)(a2, v7);
    (*v135)(v11, v7);

    goto LABEL_23;
  }

  if (v75 == v112 || v75 == v111)
  {
    goto LABEL_22;
  }

  if (v75 == v110)
  {
    (*v132)(a2, v7);
    (*v135)(v11, v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D070, &qword_21DC18BE8);

    goto LABEL_23;
  }

  if (v75 == v108)
  {
    (*v132)(a2, v7);
    (*v135)(v11, v7);
    v85 = &qword_27CE5D060;
    v86 = &unk_21DC18BD0;
    goto LABEL_35;
  }

  result = sub_21DBFC63C();
  __break(1u);
  return result;
}

id sub_21D4CC060@<X0>(const char *a1@<X3>, void **a2@<X0>, uint64_t (*a3)(void)@<X1>, uint64_t (*a4)()@<X2>, void *a5@<X8>, ...)
{
  v9 = *a2;
  if (qword_280D0F388 != -1)
  {
    swift_once();
  }

  v10 = sub_21DBF84BC();
  __swift_project_value_buffer(v10, qword_280D0F390);
  v11 = v9;
  v12 = sub_21DBF84AC();
  v13 = a3();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v20 = v15;
    *v14 = 136315138;
    swift_getErrorValue();
    v16 = a4();
    v18 = sub_21D0CDFB4(v16, v17, &v20);

    *(v14 + 4) = v18;
    _os_log_impl(&dword_21D0C9000, v12, v13, a1, v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x223D46520](v15, -1, -1);
    MEMORY[0x223D46520](v14, -1, -1);
  }

  *a5 = v9;
  return v9;
}

void *sub_21D4CC224(char *a1, uint64_t a2)
{
  v148 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CFD8, &qword_21DC18B38);
  MEMORY[0x28223BE20](v3 - 8);
  v149 = &v102 - v4;
  v146 = type metadata accessor for TTRReminderTitleAttributesHarvester.Attribute(0);
  v140 = *(v146 - 8);
  MEMORY[0x28223BE20](v146);
  v143 = &v102 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v145 = sub_21DBF7A1C();
  v147 = *(v145 - 8);
  MEMORY[0x28223BE20](v145);
  v144 = &v102 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D050, &unk_21DC18BB8);
  MEMORY[0x28223BE20](v7 - 8);
  v125 = &v102 - v8;
  v127 = sub_21DBF7CAC();
  v126 = *(v127 - 8);
  MEMORY[0x28223BE20](v127);
  v136 = &v102 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68, &unk_21DC0C060);
  MEMORY[0x28223BE20](v10 - 8);
  v122 = &v102 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58370, &unk_21DC091F0);
  MEMORY[0x28223BE20](v12 - 8);
  v120 = &v102 - v13;
  v14 = sub_21DBF7C9C();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v123 = &v102 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v138 = &v102 - v18;
  v19 = sub_21DBF7C6C();
  v132 = *(v19 - 8);
  v133 = v19;
  MEMORY[0x28223BE20](v19);
  v121 = &v102 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v137 = &v102 - v22;
  v141 = sub_21DBF9D8C();
  v130 = *(v141 - 8);
  MEMORY[0x28223BE20](v141);
  v129 = &v102 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = sub_21DBF7B0C();
  v24 = *(v139 - 8);
  MEMORY[0x28223BE20](v139);
  v124 = &v102 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v131 = &v102 - v27;
  MEMORY[0x28223BE20](v28);
  v30 = &v102 - v29;
  if (qword_280D0F388 != -1)
  {
    swift_once();
  }

  v134 = v15;
  v135 = v14;
  v31 = sub_21DBF84BC();
  v108 = __swift_project_value_buffer(v31, qword_280D0F390);
  v32 = sub_21DBF84AC();
  v33 = sub_21DBFAE9C();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 0;
    _os_log_impl(&dword_21D0C9000, v32, v33, "Harvesting suggested attributes using REMSuggestedAttributesHarvester", v34, 2u);
    MEMORY[0x223D46520](v34, -1, -1);
  }

  v35 = type metadata accessor for TTRReminderTitleAttributesHarvester.HarvestRequest(0);
  v36 = v35[5];
  v37 = (a2 + v35[6]);
  v39 = *v37;
  v38 = v37[1];
  v116 = v39;
  v115 = v38;
  v112 = *(a2 + v36);
  v40 = v35[8];
  v128 = *(a2 + v35[7]);
  v117 = *(a2 + v40);
  v41 = v35[10];
  v113 = *(a2 + v35[9]);
  v114 = *(a2 + v41);
  v42 = v35[12];
  v111 = *(a2 + v35[11]);
  v110 = *(a2 + v42);
  v43 = v35[14];
  v109 = *(a2 + v35[13]);
  v44 = *(v24 + 16);
  v45 = v30;
  v46 = v30;
  v47 = v139;
  v44(v45, a2 + v43, v139);
  v48 = (a2 + v35[15]);
  v50 = *v48;
  v49 = v48[1];
  v119 = v50;
  v118 = v49;
  v51 = v148;
  v52 = *&v148[OBJC_IVAR____TtC15RemindersUICore35TTRReminderTitleAttributesHarvester_suggestedAttributesHarvester];
  v150 = v52;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D058, &qword_21DC18BC8);
  v53 = v142;
  sub_21DBFBA6C();
  if (v53)
  {

    (*(v24 + 8))(v46, v47);
    return v52;
  }

  v54 = v128;
  v142 = (v24 + 16);
  v107 = v46;
  v106 = v24;

  v104 = v151;
  v55 = *(v51 + OBJC_IVAR____TtC15RemindersUICore35TTRReminderTitleAttributesHarvester_backgroundQueue);
  v56 = v129;
  *v129 = v55;
  v57 = v130;
  v58 = v141;
  (*(v130 + 104))(v56, *MEMORY[0x277D85200], v141);
  v59 = v55;
  v60 = sub_21DBF9DAC();
  v62 = *(v57 + 8);
  v61 = v57 + 8;
  v62(v56, v58);
  if (v60)
  {
    v63 = 1;
    sub_21DBF7C5C();
    sub_21DBF7C8C();
    v105 = 0;
    v103 = v44;
    if (v54)
    {
      v64 = [v54 uuid];
      v65 = v120;
      sub_21DBF568C();

      v63 = 0;
      v66 = v133;
      v67 = v134;
    }

    else
    {
      v66 = v133;
      v67 = v134;
      v65 = v120;
    }

    v68 = sub_21DBF56BC();
    (*(*(v68 - 8) + 56))(v65, v63, 1, v68);
    sub_21DBF612C();
    MEMORY[0x223D3E8D0](v65);
    v69 = v122;
    _s15RemindersUICore22TTRCurrentTimeProviderC3now10Foundation4DateVyF_0();
    v70 = sub_21DBF563C();
    (*(*(v70 - 8) + 56))(v69, 0, 1, v70);
    sub_21DBF797C();
    swift_allocObject();
    sub_21DBF8E0C();

    sub_21DBF8E0C();
    v51 = v112;
    v130 = sub_21DBF796C();
    if (v117)
    {
      sub_21DBFADFC();
    }

    (*(v132 + 16))(v121, v137, v66);
    (*(v67 + 16))(v123, v138, v135);
    sub_21DBF8E0C();
    sub_21D4DA2A0(MEMORY[0x277D84F90]);

    sub_21DBF7C7C();
    v71 = MEMORY[0x277D45750];
    sub_21D0F1CB0(&qword_280D0C7C8, MEMORY[0x277D45750], MEMORY[0x277D45760]);
    v61 = v139;
    sub_21DBFA5BC();
    sub_21D0F1CB0(&qword_280D0C7B8, v71, MEMORY[0x277D45770]);
    v58 = v131;
    sub_21DBFC8DC();
    v72 = v124;
    v73 = v103;
    v103(v124, v107, v61);
    v74 = v71;
    v60 = v72;
    sub_21D0F1CB0(&qword_280D0C7C0, v74, MEMORY[0x277D45768]);
    sub_21DBFBC8C();
    v44 = v73;
    if (qword_280D152C0 == -1)
    {
      goto LABEL_14;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_14:
  TTRAcceptedAttributeCache.excludedAttributesDueToAccepted(_:)(v51, v60);
  v75 = v60;
  v76 = v125;
  sub_21D4C465C(v75, v125);
  v77 = v106 + 8;
  v78 = *(v106 + 8);
  v78(v75, v61);
  sub_21D0CF7E0(v76, &qword_27CE5D050, &unk_21DC18BB8);
  v79 = *&v148[OBJC_IVAR____TtC15RemindersUICore35TTRReminderTitleAttributesHarvester_store];
  v44(v75, v58, v61);
  sub_21DBF7B3C();
  swift_allocObject();
  v80 = v79;
  v52 = sub_21DBF7B1C();
  v81 = v136;
  v82 = v105;
  v83 = sub_21DBF7B6C();
  if (v82)
  {

    v78(v58, v61);
    (*(v126 + 8))(v81, v127);
    (*(v134 + 8))(v138, v135);
    (*(v132 + 8))(v137, v133);
    v78(v107, v61);
  }

  else
  {
    v128 = v52;
    v129 = v78;
    v105 = 0;
    v106 = v77;
    v84 = *(v83 + 16);
    if (v84)
    {
      v142 = *(v147 + 16);
      v85 = (*(v147 + 80) + 32) & ~*(v147 + 80);
      v125 = v83;
      v86 = v83 + v85;
      v141 = *(v147 + 72);
      v147 += 16;
      v87 = (v147 - 8);
      v88 = (v140 + 48);
      v52 = MEMORY[0x277D84F90];
      v89 = v149;
      do
      {
        v90 = v144;
        v91 = v145;
        v142(v144, v86, v145);
        sub_21D4CE0E8(v90, v89);
        v89 = v149;
        (*v87)(v90, v91);
        if ((*v88)(v89, 1, v146) == 1)
        {
          sub_21D0CF7E0(v89, &qword_27CE5CFD8, &qword_21DC18B38);
        }

        else
        {
          sub_21D4D984C(v89, v143, type metadata accessor for TTRReminderTitleAttributesHarvester.Attribute);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v52 = sub_21D2137C8(0, v52[2] + 1, 1, v52);
          }

          v93 = v52[2];
          v92 = v52[3];
          if (v93 >= v92 >> 1)
          {
            v52 = sub_21D2137C8((v92 > 1), v93 + 1, 1, v52);
          }

          v52[2] = v93 + 1;
          sub_21D4D984C(v143, v52 + ((*(v140 + 80) + 32) & ~*(v140 + 80)) + *(v140 + 72) * v93, type metadata accessor for TTRReminderTitleAttributesHarvester.Attribute);
          v89 = v149;
        }

        v86 += v141;
        --v84;
      }

      while (v84);

      v94 = v135;
      v81 = v136;
      v95 = v133;
      v96 = v134;
      v61 = v139;
    }

    else
    {

      v52 = MEMORY[0x277D84F90];
      v95 = v133;
      v96 = v134;
      v94 = v135;
    }

    v97 = v129;
    (v129)(v131, v61);
    (*(v126 + 8))(v81, v127);
    (*(v96 + 8))(v138, v94);
    (*(v132 + 8))(v137, v95);
    v97(v107, v61);
    sub_21DBF8E0C();
    v98 = sub_21DBF84AC();
    v99 = sub_21DBFAE9C();
    if (os_log_type_enabled(v98, v99))
    {
      v100 = swift_slowAlloc();
      *v100 = 134217984;
      *(v100 + 4) = v52[2];

      _os_log_impl(&dword_21D0C9000, v98, v99, "REMSuggestedAttributesHarvester finished {attributes.count: %ld}", v100, 0xCu);
      MEMORY[0x223D46520](v100, -1, -1);
    }

    else
    {
    }
  }

  return v52;
}

uint64_t sub_21D4CD414(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D038, &qword_21DC18B98);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v9 - v6;
  v9[1] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D040, &qword_21DC18BA0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D048, &unk_21DC18BA8);
  sub_21D0D0F1C(&qword_280D0C4A0, &qword_27CE5D040, &qword_21DC18BA0, MEMORY[0x277CBCD90]);
  sub_21DBF931C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B280, &qword_21DC09C40);
  sub_21D0D0F1C(&qword_280D0C570, &qword_27CE5D038, &qword_21DC18B98, MEMORY[0x277CBCCC0]);
  sub_21DBF938C();
  return (*(v5 + 8))(v7, v4);
}

void *sub_21D4CD5F4(uint64_t a1, void *a2)
{
  v28 = a1;
  v4 = sub_21DBF56BC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_280D0F388 != -1)
  {
    swift_once();
  }

  v27 = v5;
  v8 = sub_21DBF84BC();
  v26 = __swift_project_value_buffer(v8, qword_280D0F390);
  v9 = sub_21DBF84AC();
  v10 = sub_21DBFAE9C();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_21D0C9000, v9, v10, "Extracting mentions using REMSuggestedAttributesHarvester", v11, 2u);
    MEMORY[0x223D46520](v11, -1, -1);
  }

  v12 = type metadata accessor for TTRReminderTitleAttributesHarvester.HarvestRequest(0);
  v13 = (a2 + *(v12 + 24));
  v14 = *v13;
  v15 = v13[1];
  v30 = *(a2 + *(v12 + 28));
  v16 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE60EE0, &qword_21DC18C30);
  sub_21DBFBA6C();

  if (!v2)
  {
    v24 = v15;
    v25 = v14;
    v17 = v31;
    v18 = v27;
    (*(v27 + 16))(v7, a2, v4);
    v29 = *(v28 + OBJC_IVAR____TtC15RemindersUICore35TTRReminderTitleAttributesHarvester_suggestedAttributesHarvester);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D058, &qword_21DC18BC8);
    sub_21DBFBA6C();

    a2 = sub_21D4CD9FC(v25, v24, v17, v7, v30);
    (*(v18 + 8))(v7, v4);

    sub_21DBF8E0C();
    v20 = sub_21DBF84AC();
    v21 = sub_21DBFAE9C();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 134217984;
      *(v22 + 4) = a2[2];

      _os_log_impl(&dword_21D0C9000, v20, v21, "REMSuggestedAttributesHarvester finished {mentions.count: %ld}", v22, 0xCu);
      MEMORY[0x223D46520](v22, -1, -1);
    }

    else
    {
    }
  }

  return a2;
}

void *sub_21D4CD9FC(uint64_t a1, uint64_t a2, void *a3, void (**a4)(char *, uint64_t), void (*a5)(char *, uint64_t, uint64_t))
{
  v7 = v6;
  v55 = a1;
  v56 = a5;
  v54 = a4;
  v50 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CFD8, &qword_21DC18B38);
  MEMORY[0x28223BE20](v9 - 8);
  v59 = &v48 - v10;
  v62 = type metadata accessor for TTRReminderTitleAttributesHarvester.Attribute(0);
  v57 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v61 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_21DBF7A1C();
  v64 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v58 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_21DBF56BC();
  v49 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = (&v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = sub_21DBF7C1C();
  v51 = *(v16 - 8);
  v52 = v16;
  MEMORY[0x28223BE20](v16);
  v53 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_21DBF9D8C();
  v19 = *(v18 - 8);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = (&v48 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v63 = v5;
  v23 = *(v5 + OBJC_IVAR____TtC15RemindersUICore35TTRReminderTitleAttributesHarvester_backgroundQueue);
  *v22 = v23;
  (*(v19 + 104))(v22, *MEMORY[0x277D85200], v18, v20);
  v24 = v23;
  LOBYTE(v23) = sub_21DBF9DAC();
  result = (*(v19 + 8))(v22, v18);
  if (v23)
  {
    v48 = v13;
    v26 = [a3 entityName];
    v27 = sub_21DBFA16C();
    v29 = v28;

    v30 = [objc_opt_self() cdEntityName];
    v31 = sub_21DBFA16C();
    v33 = v32;

    if (v27 == v31 && v29 == v33)
    {
    }

    else
    {
      v34 = sub_21DBFC64C();

      if ((v34 & 1) == 0)
      {
        sub_21DBF8E0C();
        sub_21DBFADFC();
        (*(v49 + 16))(v15, v54, v48);
        v35 = v53;
        sub_21DBF7C0C();
        v36 = sub_21DBF7BAC();
        if (!v6)
        {
          v37 = *(v36 + 16);
          if (v37)
          {
            v38 = *(v64 + 16);
            v39 = *(v64 + 80);
            v49 = v36;
            v40 = v36 + ((v39 + 32) & ~v39);
            v55 = *(v64 + 72);
            v56 = v38;
            v64 += 16;
            v54 = (v64 - 8);
            v41 = (v57 + 48);
            v15 = MEMORY[0x277D84F90];
            v50 = 0;
            v42 = v59;
            do
            {
              v43 = v7;
              v44 = v58;
              v45 = v60;
              v56(v58, v40, v60);
              sub_21D4CE0E8(v44, v42);
              (*v54)(v44, v45);
              if ((*v41)(v42, 1, v62) == 1)
              {
                sub_21D0CF7E0(v42, &qword_27CE5CFD8, &qword_21DC18B38);
                v7 = v43;
              }

              else
              {
                sub_21D4D984C(v42, v61, type metadata accessor for TTRReminderTitleAttributesHarvester.Attribute);
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v15 = sub_21D2137C8(0, v15[2] + 1, 1, v15);
                }

                v47 = v15[2];
                v46 = v15[3];
                if (v47 >= v46 >> 1)
                {
                  v15 = sub_21D2137C8((v46 > 1), v47 + 1, 1, v15);
                }

                v15[2] = v47 + 1;
                sub_21D4D984C(v61, v15 + ((*(v57 + 80) + 32) & ~*(v57 + 80)) + *(v57 + 72) * v47, type metadata accessor for TTRReminderTitleAttributesHarvester.Attribute);
                v7 = v50;
              }

              v40 += v55;
              --v37;
            }

            while (v37);

            v35 = v53;
          }

          else
          {

            v15 = MEMORY[0x277D84F90];
          }
        }

        (*(v51 + 8))(v35, v52);
        return v15;
      }
    }

    return MEMORY[0x277D84F90];
  }

  __break(1u);
  return result;
}

uint64_t sub_21D4CE0E8@<X0>(char *a1@<X0>, void *a2@<X8>)
{
  v241 = a2;
  v242 = a1;
  v246 = *MEMORY[0x277D85DE8];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE65010, &qword_21DC08D60);
  MEMORY[0x28223BE20](v2 - 8);
  v215 = &v209 - v3;
  v212 = sub_21DBF6AEC();
  v211 = *(v212 - 8);
  MEMORY[0x28223BE20](v212);
  v210 = &v209 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v220 = sub_21DBF5C4C();
  v219 = *(v220 - 8);
  MEMORY[0x28223BE20](v220);
  v218 = &v209 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v224 = sub_21DBF509C();
  v223 = *(v224 - 8);
  MEMORY[0x28223BE20](v224);
  v221 = &v209 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v222 = &v209 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68, &unk_21DC0C060);
  MEMORY[0x28223BE20](v9 - 8);
  v226 = &v209 - v10;
  v11 = sub_21DBF563C();
  v228 = *(v11 - 8);
  v229 = v11;
  MEMORY[0x28223BE20](v11);
  v227 = &v209 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v231 = &v209 - v14;
  v230 = sub_21DBF643C();
  v232 = *(v230 - 8);
  MEMORY[0x28223BE20](v230);
  v213 = (&v209 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v16);
  v217 = (&v209 - v17);
  MEMORY[0x28223BE20](v18);
  v214 = (&v209 - v19);
  MEMORY[0x28223BE20](v20);
  v225 = (&v209 - v21);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58370, &unk_21DC091F0);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = &v209 - v23;
  v25 = sub_21DBF56BC();
  v26 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v28 = &v209 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v237 = &v209 - v30;
  v31 = sub_21DBF7A1C();
  v32 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v34 = &v209 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_21DBF79FC();
  v36 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v209 = &v209 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38);
  v216 = &v209 - v39;
  MEMORY[0x28223BE20](v40);
  v233 = &v209 - v41;
  MEMORY[0x28223BE20](v42);
  v234 = &v209 - v43;
  MEMORY[0x28223BE20](v44);
  v46 = &v209 - v45;
  MEMORY[0x28223BE20](v47);
  v240 = &v209 - v48;
  v235 = type metadata accessor for TTRReminderSuggestedAttribute.AttributeType(0);
  v49 = MEMORY[0x28223BE20](v235);
  v236 = (&v209 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v32 + 16))(v34, v242, v31, v49);
  v51 = (*(v32 + 88))(v34, v31);
  if (v51 == *MEMORY[0x277D456D0])
  {
    v242 = v28;
    (*(v32 + 96))(v34, v31);
    v52 = *&v34[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D0A0, &qword_21DC18C18) + 48)];
    v233 = *(v36 + 32);
    (v233)(v46, v34, v35);
    sub_21DBF610C();
    sub_21DBF564C();

    if ((*(v26 + 48))(v24, 1, v25) == 1)
    {
      (*(v36 + 8))(v46, v35);

      sub_21D0CF7E0(v24, &qword_27CE58370, &unk_21DC091F0);
LABEL_32:
      v124 = type metadata accessor for TTRReminderTitleAttributesHarvester.Attribute(0);
      return (*(*(v124 - 8) + 56))(v241, 1, 1, v124);
    }

    v232 = v52;
    v239 = v36;
    v234 = v35;
    v55 = v237;
    (*(v26 + 32))(v237, v24, v25);
    v56 = *(v238 + OBJC_IVAR____TtC15RemindersUICore35TTRReminderTitleAttributesHarvester_store);
    v57 = v242;
    (*(v26 + 16))(v242, v55, v25);
    v58 = [objc_opt_self() cdEntityName];
    if (!v58)
    {
      sub_21DBFA16C();
      v58 = sub_21DBFA12C();
      v57 = v242;
    }

    v59 = objc_allocWithZone(MEMORY[0x277D44700]);
    v60 = sub_21DBF566C();
    v61 = [v59 initWithUUID:v60 entityName:v58];

    v62 = *(v26 + 8);
    v62(v57, v25);
    v243 = 0;
    v63 = [v56 fetchListWithObjectID:v61 error:&v243];

    if (!v63)
    {
      v96 = v243;
      v97 = sub_21DBF52DC();

      swift_willThrow();

      v62(v55, v25);
      (*(v239 + 8))(v46, v234);
      goto LABEL_32;
    }

    v64 = v243;
    v62(v55, v25);

    v65 = v236;
    *v236 = v63;
    swift_storeEnumTagMultiPayload();
    v66 = v240;
    v67 = v46;
    v69 = v233;
    v68 = v234;
    (v233)(v240, v67, v234);
    goto LABEL_10;
  }

  v239 = v36;
  if (v51 == *MEMORY[0x277D456B8])
  {
    (*(v32 + 96))(v34, v31);
    v54 = v239;
    v53 = v240;
    (*(v239 + 32))(v240, v34, v35);
    (*(v54 + 8))(v53, v35);
    goto LABEL_32;
  }

  v66 = v240;
  if (v51 == *MEMORY[0x277D456C0])
  {
    (*(v32 + 96))(v34, v31);
    v75 = v239;
    (*(v239 + 32))(v66, v34, v35);
    (*(v75 + 8))(v66, v35);
    goto LABEL_32;
  }

  if (v51 == *MEMORY[0x277D45718])
  {
    (*(v32 + 96))(v34, v31);
    v76 = *&v34[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D098, &qword_21DC18C10) + 48)];
    v77 = v239;
    v78 = v234;
    v79 = v35;
    v233 = *(v239 + 32);
    (v233)(v234, v34, v35);
    v80 = v77;
    v81 = v76;
    (*(v80 + 16))(v66, v78, v35);
    if (sub_21DBF644C())
    {
      v82 = *(v238 + OBJC_IVAR____TtC15RemindersUICore35TTRReminderTitleAttributesHarvester_locationOptionsProvider + 24);
      v83 = *(v238 + OBJC_IVAR____TtC15RemindersUICore35TTRReminderTitleAttributesHarvester_locationOptionsProvider + 32);
      __swift_project_boxed_opaque_existential_1((v238 + OBJC_IVAR____TtC15RemindersUICore35TTRReminderTitleAttributesHarvester_locationOptionsProvider), v82);
      v238 = (*(v83 + 16))(v82, v83);
      if (v238)
      {

        v242 = v81;
        v84 = sub_21DBF628C();
        v86 = v85;
        v87 = v225;
        *v225 = 1;
        v88 = v232;
        v89 = *(v232 + 104);
        LODWORD(v237) = *MEMORY[0x277D45000];
        v90 = v230;
        v231 = v89;
        (v89)(v87);
        v91 = sub_21DBF642C();
        v93 = v92;
        v94 = v87;
        v95 = *(v88 + 8);
        v232 = v88 + 8;
        v95(v94, v90);
        if (v84 == v91 && v86 == v93)
        {
LABEL_28:

          v117 = 1;
          v68 = v35;
          v66 = v240;
LABEL_46:
          v153 = v239;
          v65 = v236;
          v149 = v234;
LABEL_64:
          v187 = objc_allocWithZone(MEMORY[0x277D44580]);
          v188 = v238;
          v189 = [v187 initWithStructuredLocation:v238 proximity:v117];

          (*(v153 + 8))(v149, v68);
          *v65 = v189;
          swift_storeEnumTagMultiPayload();
          v70 = 0;
          v71 = 0;
          v69 = v233;
          goto LABEL_11;
        }

        v141 = sub_21DBFC64C();

        v66 = v240;
        if ((v141 & 1) == 0)
        {
          v229 = sub_21DBF628C();
          v143 = v142;

          v144 = v214;
          *v214 = 2;
          v145 = v230;
          (v231)(v144, v237, v230);
          v146 = sub_21DBF642C();
          v148 = v147;
          v95(v144, v145);
          v149 = v234;
          if (v229 == v146 && v143 == v148)
          {

            v117 = 2;
          }

          else
          {
            v162 = sub_21DBFC64C();

            if (v162)
            {
              v117 = 2;
            }

            else
            {
              v117 = 0;
            }
          }

          v68 = v35;
          v153 = v239;
          v65 = v236;
          goto LABEL_64;
        }

LABEL_45:

        v117 = 1;
        v68 = v35;
        goto LABEL_46;
      }
    }

    else if (sub_21DBF645C())
    {
      v242 = v76;
      v105 = *(v238 + OBJC_IVAR____TtC15RemindersUICore35TTRReminderTitleAttributesHarvester_locationOptionsProvider + 24);
      v106 = *(v238 + OBJC_IVAR____TtC15RemindersUICore35TTRReminderTitleAttributesHarvester_locationOptionsProvider + 32);
      __swift_project_boxed_opaque_existential_1((v238 + OBJC_IVAR____TtC15RemindersUICore35TTRReminderTitleAttributesHarvester_locationOptionsProvider), v105);
      v238 = (*(v106 + 24))(v105, v106);
      if (v238)
      {

        v107 = sub_21DBF628C();
        v109 = v108;
        v110 = v217;
        *v217 = 1;
        v111 = v232;
        v112 = *(v232 + 104);
        LODWORD(v229) = *MEMORY[0x277D45008];
        v113 = v230;
        v237 = v112;
        (v112)(v110);
        v114 = sub_21DBF642C();
        v116 = v115;
        v231 = *(v111 + 8);
        v232 = v111 + 8;
        (v231)(v110, v113);
        if (v107 == v114 && v109 == v116)
        {
          goto LABEL_28;
        }

        v152 = sub_21DBFC64C();

        v66 = v240;
        if ((v152 & 1) == 0)
        {
          v163 = sub_21DBF628C();
          v165 = v164;

          v166 = v213;
          *v213 = 2;
          v167 = v230;
          (v237)(v166, v229, v230);
          v168 = sub_21DBF642C();
          v170 = v169;
          (v231)(v166, v167);
          if (v163 == v168 && v165 == v170)
          {

            v117 = 2;
          }

          else
          {
            v186 = sub_21DBFC64C();

            if (v186)
            {
              v117 = 2;
            }

            else
            {
              v117 = 0;
            }
          }

          v68 = v35;
          v153 = v239;
          v65 = v236;
          v149 = v234;
          goto LABEL_64;
        }

        goto LABEL_45;
      }
    }

    v123 = *(v239 + 8);
    v123(v78, v79);
    v123(v66, v79);
    goto LABEL_32;
  }

  if (v51 == *MEMORY[0x277D456E0])
  {
    (*(v32 + 96))(v34, v31);
    v98 = *&v34[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D090, &qword_21DC18C08) + 48)];
    v99 = v239;
    v69 = *(v239 + 32);
    v100 = v34;
    v68 = v35;
    (v69)(v233, v100, v35);
    v101 = v231;
    _s15RemindersUICore22TTRCurrentTimeProviderC3now10Foundation4DateVyF_0();
    v102 = v226;
    v242 = v98;
    sub_21D4D2F38(v98, v101, v226);
    v104 = v228;
    v103 = v229;
    if ((*(v228 + 48))(v102, 1, v229) == 1)
    {

      (*(v104 + 8))(v101, v103);
      (*(v99 + 8))(v233, v68);
      sub_21D0CF7E0(v102, &qword_27CE58D68, &unk_21DC0C060);
      goto LABEL_32;
    }

    (*(v104 + 32))(v227, v102, v103);
    (*(v99 + 16))(v66, v233, v68);
    v125 = v104;
    v126 = objc_opt_self();
    v127 = v103;
    v128 = sub_21DBF55BC();
    v129 = v218;
    (*(v238 + OBJC_IVAR____TtC15RemindersUICore35TTRReminderTitleAttributesHarvester_timeZone))();
    v130 = sub_21DBF5C0C();
    (*(v219 + 8))(v129, v220);
    v131 = [v126 rem:v128 dateComponentsWithDate:v130 timeZone:1 isAllDay:?];

    v132 = v221;
    sub_21DBF4EFC();

    v133 = sub_21DBF4EDC();
    v134 = [v133 rem_strippingTimeZone];

    v135 = v222;
    sub_21DBF4EFC();

    v136 = v223;
    v137 = v224;
    (*(v223 + 8))(v132, v224);
    v138 = *(v125 + 8);
    v138(v227, v127);
    v138(v231, v127);
    (*(v239 + 8))(v233, v68);
    v65 = v236;
    (*(v136 + 32))(v236, v135, v137);
    goto LABEL_42;
  }

  if (v51 == *MEMORY[0x277D45710])
  {
    (*(v32 + 96))(v34, v31);
    v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D088, &qword_21DC18C00);
    v119 = *&v34[*(v118 + 48)];
    v120 = &v34[*(v118 + 64)];
    v70 = *v120;
    v71 = *(v120 + 1);
    v69 = *(v239 + 32);
    v121 = v34;
    v68 = v35;
    (v69)(v66, v121, v35);
    v122 = v236;
    *v236 = v119;
    v65 = v122;
    swift_storeEnumTagMultiPayload();
    goto LABEL_11;
  }

  if (v51 == *MEMORY[0x277D456E8])
  {
    (*(v32 + 96))(v34, v31);
    v139 = v34[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D080, &qword_21DC18BF8) + 48)];
    v69 = *(v239 + 32);
    v140 = v34;
    v68 = v35;
    (v69)(v66, v140, v35);
    v65 = v236;
    *v236 = v139;
LABEL_42:
    swift_storeEnumTagMultiPayload();
LABEL_10:
    v70 = 0;
    v71 = 0;
LABEL_11:
    v72 = type metadata accessor for TTRReminderTitleAttributesHarvester.Attribute(0);
    v73 = v241;
    sub_21D4D984C(v65, v241 + *(v72 + 20), type metadata accessor for TTRReminderSuggestedAttribute.AttributeType);
    (v69)(v73 + *(v72 + 24), v66, v68);
    *v73 = v70;
    v73[1] = v71;
    return (*(*(v72 - 8) + 56))(v73, 0, 1, v72);
  }

  if (v51 == *MEMORY[0x277D45720])
  {
    (*(v32 + 96))(v34, v31);
    v150 = *&v34[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D078, &qword_21DC18BF0) + 48)];
    v69 = *(v239 + 32);
    v151 = v34;
    v68 = v35;
    (v69)(v66, v151, v35);
    v65 = v236;
    *v236 = v150;
    goto LABEL_42;
  }

  if (v51 == *MEMORY[0x277D456C8])
  {
    (*(v32 + 96))(v34, v31);
    v154 = &v34[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D070, &qword_21DC18BE8) + 48)];
    v156 = *v154;
    v155 = *(v154 + 1);
    v237 = v156;
    v242 = v155;
    v157 = (v239 + 32);
    v158 = *(v239 + 32);
    v158(v216, v34, v35);
    sub_21DBF6AFC();
    v159 = v211;
    v160 = v210;
    v161 = v212;
    (*(v211 + 104))(v210, *MEMORY[0x277D45328], v212);
    v190 = sub_21DBF6ADC();
    v233 = v158;
    (*(v159 + 8))(v160, v161);
    v231 = v157;
    if (v190 >> 62)
    {
      v191 = sub_21DBFBD7C();
    }

    else
    {
      v191 = *((v190 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v192 = v216;
    if (!v191)
    {
LABEL_81:

      (*(v239 + 8))(v192, v35);
      goto LABEL_32;
    }

    v193 = 0;
    v238 = v190 & 0xC000000000000001;
    v234 = (v190 & 0xFFFFFFFFFFFFFF8);
    v232 = v191;
    while (1)
    {
      if (v238)
      {
        v194 = MEMORY[0x223D44740](v193, v190);
      }

      else
      {
        if (v193 >= *(v234 + 2))
        {
          goto LABEL_85;
        }

        v194 = *(v190 + 8 * v193 + 32);
      }

      v195 = v194;
      v196 = v193 + 1;
      if (__OFADD__(v193, 1))
      {
        __break(1u);
LABEL_85:
        __break(1u);
      }

      v197 = v190;
      v198 = [v194 name];
      v199 = sub_21DBFA16C();
      v201 = v200;

      v243 = v199;
      v244 = v201;
      v202 = v215;
      sub_21DBF57AC();
      v203 = sub_21DBF582C();
      (*(*(v203 - 8) + 56))(v202, 0, 1, v203);
      sub_21D176F0C();
      v204 = sub_21DBFBBEC();
      v206 = v205;
      sub_21D0CF7E0(v202, &unk_27CE65010, &qword_21DC08D60);

      if (v204 == v237 && v206 == v242)
      {
        break;
      }

      v207 = sub_21DBFC64C();

      v192 = v216;
      if (v207)
      {
        goto LABEL_83;
      }

      ++v193;
      v190 = v197;
      if (v196 == v232)
      {
        goto LABEL_81;
      }
    }

    v192 = v216;
LABEL_83:

    v66 = v240;
    v208 = v192;
    v68 = v35;
    v69 = v233;
    (v233)(v240, v208, v35);
    v65 = v236;
    *v236 = v195;
    goto LABEL_42;
  }

  if (v51 == *MEMORY[0x277D456D8])
  {
    (*(v32 + 96))(v34, v31);
    v171 = *&v34[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D060, &unk_21DC18BD0) + 48)];
    v172 = v239;
    v173 = v209;
    v233 = *(v239 + 32);
    (v233)(v209, v34, v35);
    v174 = sub_21DBF636C();
    if (!v174)
    {
      (*(v172 + 8))(v173, v35);

      goto LABEL_32;
    }

    v175 = v174;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450, &unk_21DC09E70);
    v176 = swift_allocObject();
    *(v176 + 16) = xmmword_21DC0BFD0;
    v177 = [objc_opt_self() descriptorForRequiredKeysForStyle_];
    v242 = v171;
    v178 = *MEMORY[0x277CBD098];
    *(v176 + 32) = v177;
    *(v176 + 40) = v178;
    v179 = *MEMORY[0x277CBCFC0];
    *(v176 + 48) = *MEMORY[0x277CBCFC0];
    __swift_project_boxed_opaque_existential_1((v238 + OBJC_IVAR____TtC15RemindersUICore35TTRReminderTitleAttributesHarvester_contactsProvider), *(v238 + OBJC_IVAR____TtC15RemindersUICore35TTRReminderTitleAttributesHarvester_contactsProvider + 24));
    v180 = v178;
    v181 = v179;
    v182 = sub_21DBF6A4C();
    v184 = v183;

    v243 = v182;
    LOBYTE(v244) = v184 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D068, &qword_21DC18BE0);
    sub_21DBFC83C();

    sub_21D3A229C(v182);
    v185 = v245;
    if (!v245)
    {
      (*(v239 + 8))(v173, v35);
      goto LABEL_32;
    }

    v66 = v240;
    v69 = v233;
    (v233)(v240, v173, v35);
    v68 = v35;
    v65 = v236;
    *v236 = v185;
    goto LABEL_42;
  }

  result = sub_21DBFC63C();
  __break(1u);
  return result;
}

uint64_t sub_21D4CFD58(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t), uint64_t a5, uint64_t a6)
{
  v55 = a6;
  v58 = a5;
  v59 = a4;
  v52 = a3;
  v48 = a2;
  v51 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D000, &qword_21DC18B60);
  v8 = *(v7 - 8);
  v63 = v7;
  v64 = v8;
  MEMORY[0x28223BE20](v7);
  v61 = &v44 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D008, &qword_21DC18B68);
  v11 = *(v10 - 8);
  v56 = v10;
  v57 = v11;
  MEMORY[0x28223BE20](v10);
  v54 = &v44 - v12;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D010, &qword_21DC18B70);
  v62 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v53 = &v44 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F250, &unk_21DC13240);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v44 - v15;
  v50 = type metadata accessor for TTRReminderTitleAttributesHarvester.HarvestRequest(0);
  MEMORY[0x28223BE20](v50);
  v18 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D018, &qword_21DC18B78);
  v20 = *(v19 - 8);
  v65 = v19;
  v66 = v20;
  MEMORY[0x28223BE20](v19);
  v22 = &v44 - v21;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D020, &qword_21DC18B80);
  v23 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v25 = &v44 - v24;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D028, &qword_21DC18B88);
  v26 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v28 = &v44 - v27;
  v49 = type metadata accessor for TTRReminderTitleAttributesHarvester.HarvestRequest;
  sub_21D4D97E4(a1, v18, type metadata accessor for TTRReminderTitleAttributesHarvester.HarvestRequest);
  sub_21DBF90EC();
  v68 = v48;
  v29 = sub_21DBFB0DC();
  (*(*(v29 - 8) + 56))(v16, 1, 1, v29);
  sub_21D0D8CF0(0, &qword_280D1B900, 0x277D85C78);
  v48 = sub_21D0D0F1C(&qword_280D0C430, &qword_27CE5D018, &qword_21DC18B78, MEMORY[0x277CBCE80]);
  sub_21D47130C();
  v30 = v65;
  sub_21DBF936C();
  sub_21D0CF7E0(v16, &unk_27CE5F250, &unk_21DC13240);
  v31 = *(v66 + 8);
  v66 += 8;
  v46 = v31;
  v31(v22, v30);
  swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D030, &qword_21DC18B90);
  sub_21D0D0F1C(&qword_280D0C4F0, &qword_27CE5D020, &qword_21DC18B80, MEMORY[0x277CBCD60]);
  v32 = v45;
  sub_21DBF921C();

  (*(v23 + 8))(v25, v32);
  sub_21D0D0F1C(&qword_280D0C630, &qword_27CE5D028, &qword_21DC18B88, MEMORY[0x277CBCB10]);
  v33 = v47;
  v34 = sub_21DBF920C();
  (*(v26 + 8))(v28, v33);
  v35 = v54;
  v59(v34);
  v67 = MEMORY[0x277D84F90];
  sub_21D0D0F1C(&qword_280D0C538, &qword_27CE5D008, &qword_21DC18B68, MEMORY[0x277CBCD08]);
  v36 = v53;
  v37 = v56;
  sub_21DBF922C();
  (*(v57 + 8))(v35, v37);
  sub_21D4D97E4(v51, v18, v49);
  sub_21DBF90EC();
  type metadata accessor for TTRReminderTitleAttributesHarvester.VersionedResults(0);
  sub_21D0D0F1C(&qword_280D0C618, &qword_27CE5D010, &qword_21DC18B70, MEMORY[0x277CBCB78]);
  v39 = v60;
  v38 = v61;
  v40 = v65;
  sub_21DBF928C();
  v46(v22, v40);
  sub_21D0D0F1C(&qword_280D0C5C0, &qword_27CE5D000, &qword_21DC18B60, MEMORY[0x277CBCC08]);
  v41 = v63;
  v42 = sub_21DBF920C();

  (*(v64 + 8))(v38, v41);
  (*(v62 + 8))(v36, v39);
  return v42;
}

uint64_t sub_21D4D05CC@<X0>(uint64_t a1@<X0>, uint64_t *a3@<X8>)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D030, &qword_21DC18B90);
  v7 = v6;
  if (!Strong)
  {
    return (*(*(v6 - 8) + 56))(a3, 1, 1, v6);
  }

  v8 = *(v6 + 48);
  *a3 = Strong;
  sub_21D4D97E4(a1, a3 + v8, type metadata accessor for TTRReminderTitleAttributesHarvester.HarvestRequest);
  return (*(*(v7 - 8) + 56))(a3, 0, 1, v7);
}

double sub_21D4D06C8@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  sub_21D4D97E4(a1, a3, type metadata accessor for TTRReminderTitleAttributesHarvester.HarvestRequest);
  *(a3 + *(type metadata accessor for TTRReminderTitleAttributesHarvester.VersionedResults(0) + 20)) = v5;

  sub_21DBF8E0C();
  return result;
}

uint64_t sub_21D4D072C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_21DBF7A0C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x277D84F90];
  v12 = sub_21D4D08DC(a1, a2);
  if (v12)
  {
    sub_21D562CB0(v12);
  }

  if (a3)
  {
    sub_21DBF656C();
    v13 = sub_21DBF654C();
    v14 = (*(v9 + 104))(v11, *MEMORY[0x277D456F0], v8);
    MEMORY[0x28223BE20](v14);
    *(&v17 - 2) = v4;
    *(&v17 - 1) = v11;
    v15 = sub_21D4E6934(sub_21D4DA56C, (&v17 - 4), v13);

    (*(v9 + 8))(v11, v8);
    sub_21D562CB0(v15);
  }

  return v18;
}

void *sub_21D4D08DC(uint64_t a1, uint64_t a2)
{
  v30 = sub_21DBF7A0C();
  v2 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CFD8, &qword_21DC18B38);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = (&v20 - v6);
  v29 = type metadata accessor for TTRReminderTitleAttributesHarvester.Attribute(0);
  v21 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v28 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21DBF656C();
  v9 = sub_21DBF655C();
  v10 = v9;
  if (v9 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_21DBFBD7C())
  {
    v12 = 0;
    v26 = v10 & 0xFFFFFFFFFFFFFF8;
    v27 = v10 & 0xC000000000000001;
    v25 = *MEMORY[0x277D456F0];
    v23 = (v2 + 1);
    v24 = (v2 + 13);
    v22 = (v21 + 48);
    v2 = MEMORY[0x277D84F90];
    v13 = v30;
    while (1)
    {
      if (v27)
      {
        v14 = MEMORY[0x223D44740](v12, v10);
      }

      else
      {
        if (v12 >= *(v26 + 16))
        {
          goto LABEL_18;
        }

        v14 = *(v10 + 8 * v12 + 32);
      }

      v15 = v14;
      v16 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      (*v24)(v4, v25, v13);
      sub_21D4D0DD0(v15, v4, v7);

      (*v23)(v4, v13);
      if ((*v22)(v7, 1, v29) == 1)
      {
        sub_21D0CF7E0(v7, &qword_27CE5CFD8, &qword_21DC18B38);
      }

      else
      {
        sub_21D4D984C(v7, v28, type metadata accessor for TTRReminderTitleAttributesHarvester.Attribute);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v2 = sub_21D2137C8(0, v2[2] + 1, 1, v2);
        }

        v18 = v2[2];
        v17 = v2[3];
        if (v18 >= v17 >> 1)
        {
          v2 = sub_21D2137C8((v17 > 1), v18 + 1, 1, v2);
        }

        v2[2] = v18 + 1;
        sub_21D4D984C(v28, v2 + ((*(v21 + 80) + 32) & ~*(v21 + 80)) + *(v21 + 72) * v18, type metadata accessor for TTRReminderTitleAttributesHarvester.Attribute);
      }

      ++v12;
      if (v16 == i)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

  v2 = MEMORY[0x277D84F90];
LABEL_21:

  return v2;
}

uint64_t sub_21D4D0CB8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X2>, void *a4@<X8>)
{
  v8 = type metadata accessor for TTRReminderTitleAttributesHarvester.Attribute(0);
  v9 = *(v8 + 20);
  if (_s15RemindersUICore29TTRReminderSuggestedAttributeV0E4TypeO19areKeyContentsEqualySbAE_AEtFZ_0((a1 + v9), (a2 + v9)))
  {
    *a3 = 1;
    v10 = *a1;
    v11 = a1[1];
    sub_21D4D97E4(a1 + v9, a4 + *(v8 + 20), type metadata accessor for TTRReminderSuggestedAttribute.AttributeType);
    sub_21DBF79CC();
    *a4 = v10;
    a4[1] = v11;
  }

  else
  {
    sub_21D4D97E4(a1, a4, type metadata accessor for TTRReminderTitleAttributesHarvester.Attribute);
  }

  return (*(*(v8 - 8) + 56))(a4, 0, 1, v8);
}

uint64_t sub_21D4D0DD0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v147 = a2;
  v5 = sub_21DBF7A0C();
  v145 = *(v5 - 8);
  v146 = v5;
  MEMORY[0x28223BE20](v5);
  v144 = &v130 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D60, &unk_21DC0A690);
  MEMORY[0x28223BE20](v7 - 8);
  v135 = &v130 - v8;
  v9 = sub_21DBF563C();
  v149 = *(v9 - 8);
  v150 = v9;
  MEMORY[0x28223BE20](v9);
  v139 = &v130 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v136 = &v130 - v12;
  MEMORY[0x28223BE20](v13);
  v142 = &v130 - v14;
  v148 = sub_21DBF509C();
  v152 = *(v148 - 8);
  MEMORY[0x28223BE20](v148);
  v138 = &v130 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v140 = &v130 - v17;
  v143 = type metadata accessor for TTRReminderSuggestedAttribute.AttributeType(0);
  MEMORY[0x28223BE20](v143);
  v153 = &v130 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for TTRRecurrenceRuleModel(0);
  v20 = *(v19 - 1);
  MEMORY[0x28223BE20](v19);
  v141 = &v130 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v133 = &v130 - v23;
  MEMORY[0x28223BE20](v24);
  v134 = &v130 - v25;
  MEMORY[0x28223BE20](v26);
  v28 = &v130 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A018, &unk_21DC0DCB0);
  MEMORY[0x28223BE20](v29 - 8);
  v151 = &v130 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v33 = &v130 - v32;
  if (qword_280D0F388 != -1)
  {
    swift_once();
  }

  v34 = sub_21DBF84BC();
  __swift_project_value_buffer(v34, qword_280D0F390);
  v35 = a1;
  v36 = sub_21DBF84AC();
  v37 = sub_21DBFAEAC();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = v20;
    v39 = a3;
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    *v40 = 138412290;
    *(v40 + 4) = v35;
    *v41 = v35;
    v42 = v35;
    _os_log_impl(&dword_21D0C9000, v36, v37, "Processing recurrent event: %@", v40, 0xCu);
    sub_21D0CF7E0(v41, &unk_27CE60070, &unk_21DC09550);
    MEMORY[0x223D46520](v41, -1, -1);
    v43 = v40;
    a3 = v39;
    v20 = v38;
    MEMORY[0x223D46520](v43, -1, -1);
  }

  v44 = *(v20 + 56);
  v44(v33, 1, 1, v19);
  v137 = [v35 weekDay];
  v45 = [v35 hourFrequency];
  if (v45 != 0x7FFFFFFFFFFFFFFFLL)
  {
    sub_21D0CF7E0(v33, &qword_27CE5A018, &unk_21DC0DCB0);
    v54 = type metadata accessor for TTRRecurrenceEndModel(0);
    (*(*(v54 - 8) + 56))(v33, 1, 1, v54);
    v55 = v19[5];
    v56 = v19[6];
    *&v33[v19[7]] = 0;
    *&v33[v19[8]] = 0;
    *&v33[v19[9]] = 0;
    *&v33[v19[10]] = 0;
    *&v33[v19[11]] = 0;
    *&v33[v19[12]] = 0;
    *&v33[v19[13]] = 0;
    *&v33[v55] = 4;
    *&v33[v56] = v45;
    goto LABEL_13;
  }

  v132 = 0x7FFFFFFFFFFFFFFFLL;
  v46 = [v35 dayFrequency];
  if (v46 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v57 = v46;
    sub_21D0CF7E0(v33, &qword_27CE5A018, &unk_21DC0DCB0);
    v58 = type metadata accessor for TTRRecurrenceEndModel(0);
    (*(*(v58 - 8) + 56))(v33, 1, 1, v58);
    v59 = v19[5];
    v60 = v19[6];
    *&v33[v19[7]] = 0;
    *&v33[v19[8]] = 0;
    *&v33[v19[9]] = 0;
    *&v33[v19[10]] = 0;
    *&v33[v19[11]] = 0;
    *&v33[v19[12]] = 0;
    *&v33[v19[13]] = 0;
    *&v33[v59] = 0;
    *&v33[v60] = v57;
    v44(v33, 0, 1, v19);
LABEL_15:
    v45 = v132;
    goto LABEL_49;
  }

  v47 = [v35 monthFrequency];
  v131 = v44;
  if (v47 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v61 = v47;
    v62 = v20;
    v63 = type metadata accessor for TTRRecurrenceEndModel(0);
    (*(*(v63 - 8) + 56))(v28, 1, 1, v63);
    v64 = v19[5];
    v65 = v19[6];
    *&v28[v19[7]] = 0;
    v66 = v19[8];
    *&v28[v66] = 0;
    *&v28[v19[9]] = 0;
    *&v28[v19[10]] = 0;
    *&v28[v19[11]] = 0;
    *&v28[v19[12]] = 0;
    *&v28[v19[13]] = 0;
    *&v28[v64] = 2;
    *&v28[v65] = v61;
    v67 = [v35 weekOfMonthFrequency];
    if (v67 == 0x7FFFFFFFFFFFFFFFLL)
    {
      if (v137 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v68 = [v35 weekdayOrdinal];
        if (v68 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v69 = v68;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58960, &qword_21DC0CEF0);
          v70 = swift_allocObject();
          *(v70 + 16) = xmmword_21DC08D00;
          *(v70 + 32) = v137;
          *(v70 + 40) = v69;
          sub_21D0CF7E0(v33, &qword_27CE5A018, &unk_21DC0DCB0);
          *&v28[v66] = v70;
LABEL_29:
          v20 = v62;
          v45 = v132;
          sub_21D4D97E4(v28, v33, type metadata accessor for TTRRecurrenceRuleModel);
          v131(v33, 0, 1, v19);
LABEL_48:
          sub_21D4D5640(v28, type metadata accessor for TTRRecurrenceRuleModel);
          goto LABEL_49;
        }
      }
    }

    else
    {
      v79 = v137;
      if (v137 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v87 = v67;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58960, &qword_21DC0CEF0);
        v88 = swift_allocObject();
        v89 = v79;
        v90 = v88;
        *(v88 + 16) = xmmword_21DC08D00;
        *(v88 + 32) = v89;
        *(v88 + 40) = v87;
        sub_21D0CF7E0(v33, &qword_27CE5A018, &unk_21DC0DCB0);
        *&v28[v66] = v90;
        goto LABEL_29;
      }
    }

    sub_21D0CF7E0(v33, &qword_27CE5A018, &unk_21DC0DCB0);
    goto LABEL_29;
  }

  v48 = [v35 weekOfYear];
  if (v48 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v71 = v48;
    v72 = type metadata accessor for TTRRecurrenceEndModel(0);
    v73 = v134;
    (*(*(v72 - 8) + 56))(v134, 1, 1, v72);
    v74 = v19[5];
    v75 = v19[6];
    *&v73[v19[7]] = 0;
    v133 = v19[8];
    *&v73[v133] = 0;
    *&v73[v19[9]] = 0;
    *&v73[v19[10]] = 0;
    *&v73[v19[11]] = 0;
    *&v73[v19[12]] = 0;
    *&v73[v19[13]] = 0;
    *&v73[v74] = 1;
    *&v73[v75] = v71;
    v76 = [v35 weekdayStart];
    if (v76 == 0x7FFFFFFFFFFFFFFFLL || (v77 = v76, result = [v35 weekdayEnd], result == 0x7FFFFFFFFFFFFFFFLL))
    {
      if (v137 == 0x7FFFFFFFFFFFFFFFLL)
      {
        sub_21D0CF7E0(v33, &qword_27CE5A018, &unk_21DC0DCB0);
        v45 = v132;
        v28 = v134;
      }

      else
      {
        v91 = v137;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58960, &qword_21DC0CEF0);
        v92 = swift_allocObject();
        *(v92 + 16) = xmmword_21DC08D00;
        *(v92 + 32) = v91;
        *(v92 + 40) = 0;
        sub_21D0CF7E0(v33, &qword_27CE5A018, &unk_21DC0DCB0);
        v93 = v134;
        *&v134[v133] = v92;
        v28 = v93;
        v45 = v132;
      }

LABEL_47:
      sub_21D4D97E4(v28, v33, type metadata accessor for TTRRecurrenceRuleModel);
      v44(v33, 0, 1, v19);
      goto LABEL_48;
    }

    if (result < v77)
    {
      v94 = __OFADD__(result, 7);
      result += 7;
      if (v94)
      {
LABEL_67:
        __break(1u);
        goto LABEL_68;
      }

      if (result < v77)
      {
LABEL_68:
        __break(1u);
        return result;
      }
    }

    v137 = result;
    v130 = a3;
    v95 = MEMORY[0x277D84F90];
    while (!__OFSUB__(v77, 1))
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      v96 = v20;
      if ((result & 1) == 0)
      {
        result = sub_21D212558(0, *(v95 + 16) + 1, 1, v95);
        v95 = result;
      }

      v98 = *(v95 + 16);
      v97 = *(v95 + 24);
      if (v98 >= v97 >> 1)
      {
        result = sub_21D212558((v97 > 1), v98 + 1, 1, v95);
        v95 = result;
      }

      *(v95 + 16) = v98 + 1;
      v99 = v95 + 16 * v98;
      *(v99 + 32) = (v77 - 1) % 7 + 1;
      *(v99 + 40) = 0;
      if (v137 == v77)
      {
        sub_21D0CF7E0(v33, &qword_27CE5A018, &unk_21DC0DCB0);
        v28 = v134;
        *&v134[v133] = v95;
        a3 = v130;
        v20 = v96;
        v45 = v132;
        v44 = v131;
        goto LABEL_47;
      }

      v94 = __OFADD__(v77++, 1);
      v20 = v96;
      if (v94)
      {
        goto LABEL_66;
      }
    }

    __break(1u);
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  if (v137 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v80 = [v35 weekdayOrdinal];
    v81 = type metadata accessor for TTRRecurrenceEndModel(0);
    v82 = v133;
    (*(*(v81 - 8) + 56))(v133, 1, 1, v81);
    v84 = v19[5];
    v83 = v19[6];
    *(v82 + v19[7]) = 0;
    v85 = v19[9];
    v134 = v19[8];
    *(v82 + v85) = 0;
    *(v82 + v19[10]) = 0;
    *(v82 + v19[11]) = 0;
    *(v82 + v19[12]) = 0;
    *(v82 + v19[13]) = 0;
    if (v80 == 0x7FFFFFFFFFFFFFFFLL)
    {
      *(v82 + v84) = 1;
      *(v82 + v83) = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58960, &qword_21DC0CEF0);
      v86 = swift_allocObject();
      *(v86 + 16) = xmmword_21DC08D00;
      *(v86 + 32) = v137;
      *(v86 + 40) = 0;
      sub_21D0CF7E0(v33, &qword_27CE5A018, &unk_21DC0DCB0);
      *&v134[v82] = v86;
    }

    else
    {
      *(v82 + v84) = 2;
      *(v82 + v83) = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58960, &qword_21DC0CEF0);
      v100 = swift_allocObject();
      *(v100 + 16) = xmmword_21DC08D00;
      *(v100 + 32) = v137;
      *(v100 + 40) = v80;
      sub_21D0CF7E0(v33, &qword_27CE5A018, &unk_21DC0DCB0);
      *&v134[v82] = v100;
    }

    sub_21D4D97E4(v82, v33, type metadata accessor for TTRRecurrenceRuleModel);
    v44(v33, 0, 1, v19);
    sub_21D4D5640(v82, type metadata accessor for TTRRecurrenceRuleModel);
    goto LABEL_15;
  }

  v49 = [v35 yearFrequency];
  v45 = v132;
  if (v49 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v50 = v49;
    sub_21D0CF7E0(v33, &qword_27CE5A018, &unk_21DC0DCB0);
    v51 = type metadata accessor for TTRRecurrenceEndModel(0);
    (*(*(v51 - 8) + 56))(v33, 1, 1, v51);
    v52 = v19[5];
    v53 = v19[6];
    *&v33[v19[7]] = 0;
    *&v33[v19[8]] = 0;
    *&v33[v19[9]] = 0;
    *&v33[v19[10]] = 0;
    *&v33[v19[11]] = 0;
    *&v33[v19[12]] = 0;
    *&v33[v19[13]] = 0;
    *&v33[v52] = 3;
    *&v33[v53] = v50;
LABEL_13:
    v44(v33, 0, 1, v19);
  }

LABEL_49:
  v101 = v151;
  sub_21D0D3954(v33, v151, &qword_27CE5A018, &unk_21DC0DCB0);
  if ((*(v20 + 48))(v101, 1, v19) == 1)
  {
    sub_21D0CF7E0(v101, &qword_27CE5A018, &unk_21DC0DCB0);
    v102 = [v35 startDate];
    v103 = v152;
    v104 = v153;
    if (!v102)
    {
      sub_21D0CF7E0(v33, &qword_27CE5A018, &unk_21DC0DCB0);
      v115 = type metadata accessor for TTRReminderTitleAttributesHarvester.Attribute(0);
      return (*(*(v115 - 8) + 56))(a3, 1, 1, v115);
    }

    v105 = v139;
    v106 = v102;
    sub_21DBF55FC();

    v107 = [v35 isAllDay];
    v108 = v138;
    sub_21D4D220C(v107, v138);
    (*(v149 + 8))(v105, v150);
    (*(v103 + 32))(v104, v108, v148);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    v109 = v141;
    sub_21D4D984C(v101, v141, type metadata accessor for TTRRecurrenceRuleModel);
    v110 = [v35 startDate];
    v111 = v152;
    v104 = v153;
    if (v110)
    {
      v112 = v110;
      sub_21DBF55FC();

      v113 = v140;
      if (v45 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v114 = [v35 isAllDay];
      }

      else
      {
        v114 = 0;
      }

      v120 = v142;
      sub_21D4D220C(v114, v113);
      (*(v149 + 8))(v120, v150);
      v117 = v148;
    }

    else
    {
      v116 = v135;
      sub_21D4D2458(v109, v135);
      v117 = v148;
      v118 = (*(v111 + 48))(v116, 1, v148);
      v113 = v140;
      if (v118 == 1)
      {
        sub_21D0CF7E0(v33, &qword_27CE5A018, &unk_21DC0DCB0);
        sub_21D0CF7E0(v116, &qword_27CE58D60, &unk_21DC0A690);
        v119 = type metadata accessor for TTRReminderTitleAttributesHarvester.Attribute(0);
        (*(*(v119 - 8) + 56))(a3, 1, 1, v119);
        return sub_21D4D5640(v109, type metadata accessor for TTRRecurrenceRuleModel);
      }

      (*(v111 + 32))(v140, v116, v117);
    }

    v121 = [v35 endDate];
    if (v121)
    {
      v122 = v136;
      v123 = v121;
      sub_21DBF55FC();

      sub_21D0CF7E0(v109, &unk_27CE62610, &unk_21DC0DF00);
      (*(v149 + 32))(v109, v122, v150);
      v124 = type metadata accessor for TTRRecurrenceEndModel(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v124 - 8) + 56))(v109, 0, 1, v124);
    }

    v125 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CF38, &qword_21DC188E0) + 48);
    (*(v111 + 32))(v104, v113, v117);
    sub_21D4D97E4(v109, v104 + v125, type metadata accessor for TTRRecurrenceRuleModel);
    swift_storeEnumTagMultiPayload();
    sub_21D4D5640(v109, type metadata accessor for TTRRecurrenceRuleModel);
  }

  v126 = [v35 range];
  v128 = v127;
  v129 = type metadata accessor for TTRReminderTitleAttributesHarvester.Attribute(0);
  sub_21D4D97E4(v104, a3 + *(v129 + 20), type metadata accessor for TTRReminderSuggestedAttribute.AttributeType);
  (*(v145 + 16))(v144, v147, v146);
  sub_21DBF79EC();
  sub_21D4D5640(v104, type metadata accessor for TTRReminderSuggestedAttribute.AttributeType);
  sub_21D0CF7E0(v33, &qword_27CE5A018, &unk_21DC0DCB0);
  *a3 = v126;
  a3[1] = v128;
  return (*(*(v129 - 8) + 56))(a3, 0, 1, v129);
}

uint64_t sub_21D4D220C@<X0>(char a1@<W1>, uint64_t a2@<X8>)
{
  v19 = a2;
  v4 = sub_21DBF5C4C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_21DBF509C();
  v8 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = objc_opt_self();
  v12 = sub_21DBF55BC();
  (*(v2 + OBJC_IVAR____TtC15RemindersUICore35TTRReminderTitleAttributesHarvester_timeZone))();
  v13 = sub_21DBF5C0C();
  (*(v5 + 8))(v7, v4);
  v14 = [v11 rem:v12 dateComponentsWithDate:v13 timeZone:a1 & 1 isAllDay:?];

  sub_21DBF4EFC();
  if ((a1 & 1) == 0)
  {
    return (*(v8 + 32))(v19, v10, v18);
  }

  v15 = sub_21DBF4EDC();
  v16 = [v15 rem_strippingTimeZone];

  sub_21DBF4EFC();
  return (*(v8 + 8))(v10, v18);
}

void sub_21D4D2458(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v59 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D60, &unk_21DC0A690);
  MEMORY[0x28223BE20](v5 - 8);
  v53 = &v46 - v6;
  v7 = sub_21DBF5C4C();
  v56 = *(v7 - 8);
  v57 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68, &unk_21DC0C060);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v46 - v11;
  v13 = sub_21DBF563C();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v51 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v52 = &v46 - v17;
  MEMORY[0x28223BE20](v18);
  v20 = &v46 - v19;
  v21 = type metadata accessor for TTRRecurrenceRuleModel(0);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v46 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_21D0D8CF0(0, &qword_280D177E8, 0x277D44740);
  sub_21D4D97E4(a1, v23, type metadata accessor for TTRRecurrenceRuleModel);
  v55 = v24;
  v25 = sub_21D4D3C50(v23);
  v26 = v3;
  sub_21D0D3954(v3 + OBJC_IVAR____TtC15RemindersUICore35TTRReminderTitleAttributesHarvester_now, v12, &qword_27CE58D68, &unk_21DC0C060);
  v27 = *(v14 + 48);
  v28 = v27(v12, 1, v13);
  v58 = v13;
  if (v28 == 1)
  {
    _s15RemindersUICore22TTRCurrentTimeProviderC3now10Foundation4DateVyF_0();
    if (v27(v12, 1, v13) != 1)
    {
      sub_21D0CF7E0(v12, &qword_27CE58D68, &unk_21DC0C060);
    }
  }

  else
  {
    (*(v14 + 32))(v20, v12, v13);
  }

  v47 = [v25 frequency];
  v54 = v47 != 4;
  v29 = sub_21DBF509C();
  v30 = *(v29 - 8);
  v49 = *(v30 + 56);
  v50 = v29;
  v48 = v30 + 56;
  v49(v59, 1, 1);
  v31 = objc_opt_self();
  v32 = sub_21DBF55BC();
  v33 = sub_21DBF55BC();
  (*(v26 + OBJC_IVAR____TtC15RemindersUICore35TTRReminderTitleAttributesHarvester_timeZone))();
  v34 = sub_21DBF5C0C();
  (*(v56 + 8))(v9, v57);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450, &unk_21DC09E70);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_21DC09CF0;
  *(v35 + 32) = v25;
  v36 = v25;
  v37 = sub_21DBFA5DC();

  v38 = [v31 nextRecurrentDueDateAfter:v32 dueDate:v33 timeZone:v34 allDay:v54 recurrenceRules:v37];

  if (v38)
  {
    v39 = v47 != 4;
    v40 = v51;
    sub_21DBF55FC();

    v41 = v52;
    v42 = v58;
    (*(v14 + 32))(v52, v40, v58);
    v43 = v53;
    sub_21D4D220C(v39, v53);

    v44 = *(v14 + 8);
    v44(v41, v42);
    v45 = v59;
    sub_21D0CF7E0(v59, &qword_27CE58D60, &unk_21DC0A690);
    v44(v20, v42);
    (v49)(v43, 0, 1, v50);
    sub_21D0D523C(v43, v45, &qword_27CE58D60, &unk_21DC0A690);
  }

  else
  {
    (*(v14 + 8))(v20, v58);
  }
}

void sub_21D4D2A30(id *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v48 = a3;
  v8 = sub_21DBF7A0C();
  v46 = *(v8 - 8);
  v47 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TTRReminderSuggestedAttribute.AttributeType(0);
  *&v12 = MEMORY[0x28223BE20](v11).n128_u64[0];
  v14 = (&v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *a1;
  v16 = [*a1 proximity];
  v17 = [v15 locationType];
  if (v17 >= 2)
  {
    if (v17 == 2)
    {
      if (v16)
      {
        v22 = 2;
      }

      else
      {
        v22 = 1;
      }

      v23 = [objc_allocWithZone(MEMORY[0x277D44590]) initWithEvent_];
      goto LABEL_15;
    }

    if (qword_280D0F388 != -1)
    {
      swift_once();
    }

    v40 = sub_21DBF84BC();
    __swift_project_value_buffer(v40, qword_280D0F390);
    v41 = MEMORY[0x277D84F90];
    v42 = sub_21D17716C(MEMORY[0x277D84F90]);
    v43 = sub_21D17716C(v41);
    sub_21DAEAB00("unknown location type", 21, 2, v42, v43);
    __break(1u);
  }

  else
  {
    v44 = v4;
    v45 = a4;
    v18 = [v15 locationType];
    v20 = *(a2 + OBJC_IVAR____TtC15RemindersUICore35TTRReminderTitleAttributesHarvester_locationOptionsProvider + 24);
    v19 = *(a2 + OBJC_IVAR____TtC15RemindersUICore35TTRReminderTitleAttributesHarvester_locationOptionsProvider + 32);
    __swift_project_boxed_opaque_existential_1((a2 + OBJC_IVAR____TtC15RemindersUICore35TTRReminderTitleAttributesHarvester_locationOptionsProvider), v20);
    if (v18)
    {
      v21 = (*(v19 + 24))(v20, v19);
    }

    else
    {
      v21 = (*(v19 + 16))(v20, v19);
    }

    v24 = v21;
    a4 = v45;
    if (v21)
    {
      if (v16)
      {
        v25 = 2;
      }

      else
      {
        v25 = 1;
      }

      v23 = [objc_allocWithZone(MEMORY[0x277D44580]) initWithStructuredLocation:v21 proximity:v25];

LABEL_15:
      *v14 = v23;
      swift_storeEnumTagMultiPayload();
      v26 = [v15 range];
      v28 = v27;
      v29 = type metadata accessor for TTRReminderTitleAttributesHarvester.Attribute(0);
      sub_21D4D97E4(v14, a4 + *(v29 + 20), type metadata accessor for TTRReminderSuggestedAttribute.AttributeType);
      (*(v46 + 16))(v10, v48, v47);
      sub_21DBF79EC();
      sub_21D4D5640(v14, type metadata accessor for TTRReminderSuggestedAttribute.AttributeType);
      *a4 = v26;
      a4[1] = v28;
      (*(*(v29 - 8) + 56))(a4, 0, 1, v29);
      return;
    }

    if (qword_280D0F388 != -1)
    {
      swift_once();
    }

    v30 = sub_21DBF84BC();
    __swift_project_value_buffer(v30, qword_280D0F390);
    v31 = v15;
    v32 = sub_21DBF84AC();
    v33 = sub_21DBFAEDC();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v50 = v35;
      *v34 = 136315138;
      v49 = [v31 locationType];
      type metadata accessor for TTRNLTextStructuredEventLocationType(0);
      v36 = sub_21DBFA1AC();
      v38 = sub_21D0CDFB4(v36, v37, &v50);

      *(v34 + 4) = v38;
      _os_log_impl(&dword_21D0C9000, v32, v33, "Not showing location suggestion because locationOptionsProvider doesn't have it {locationType: %s}", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v35);
      MEMORY[0x223D46520](v35, -1, -1);
      MEMORY[0x223D46520](v34, -1, -1);
    }

    v39 = type metadata accessor for TTRReminderTitleAttributesHarvester.Attribute(0);
    (*(*(v39 - 8) + 56))(v45, 1, 1, v39);
  }
}

uint64_t sub_21D4D2F38@<X0>(void (*a1)(uint64_t, char *, uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v116 = a1;
  v124 = a2;
  v118 = a3;
  v3 = sub_21DBF58EC();
  v110 = *(v3 - 8);
  v111 = v3;
  MEMORY[0x28223BE20](v3);
  v108 = &v90 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = sub_21DBF592C();
  v107 = *(v109 - 8);
  MEMORY[0x28223BE20](v109);
  v106 = &v90 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = sub_21DBF58AC();
  v105 = *(v121 - 8);
  MEMORY[0x28223BE20](v121);
  v103 = &v90 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60DB0, qword_21DC0BF70);
  MEMORY[0x28223BE20](v7 - 8);
  v102 = &v90 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A8B0, &unk_21DC18C20);
  MEMORY[0x28223BE20](v9 - 8);
  v101 = &v90 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68, &unk_21DC0C060);
  MEMORY[0x28223BE20](v11 - 8);
  v104 = &v90 - v12;
  v117 = sub_21DBF563C();
  v119 = *(v117 - 8);
  MEMORY[0x28223BE20](v117);
  v91 = &v90 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v90 = &v90 - v15;
  MEMORY[0x28223BE20](v16);
  v113 = &v90 - v17;
  v122 = sub_21DBF5A0C();
  v125 = *(v122 - 8);
  MEMORY[0x28223BE20](v122);
  v19 = &v90 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = sub_21DBF5A2C();
  v114 = *(v126 - 8);
  MEMORY[0x28223BE20](v126);
  v123 = &v90 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_21DBF5C4C();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = &v90 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_21DBF509C();
  v26 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v28 = &v90 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = objc_opt_self();
  v30 = sub_21DBF55BC();
  (*(v115 + OBJC_IVAR____TtC15RemindersUICore35TTRReminderTitleAttributesHarvester_timeZone))();
  v31 = sub_21DBF5C0C();
  v97 = v22;
  v32 = *(v22 + 8);
  v98 = v21;
  v32(v24, v21);
  v33 = [v29 rem:v30 dateComponentsWithDate:v31 timeZone:0 isAllDay:?];

  sub_21DBF4EFC();
  v93 = sub_21DBF4F5C();
  v35 = v34;
  v36 = *(v26 + 8);
  v120 = v28;
  v100 = v25;
  v99 = v26 + 8;
  v96 = v36;
  v36(v28, v25);
  v37 = v123;
  _s15RemindersUICore22TTRCurrentTimeProviderC8calendar10Foundation8CalendarVvg_0();
  v38 = *MEMORY[0x277CC99B8];
  v39 = v125;
  v40 = *(v125 + 104);
  v41 = v122;
  v95 = v125 + 104;
  v94 = v40;
  (v40)(v19, v38, v122);
  v42 = sub_21DBF5A1C();
  v43 = v39 + 8;
  v44 = *(v39 + 8);
  v92 = v19;
  v45 = v19;
  v46 = v43;
  v44(v45, v41);
  v47 = v114;
  v49 = v114 + 8;
  v48 = *(v114 + 8);
  v50 = v37;
  v51 = v126;
  v48(v50);
  if (v42 != sub_21DBF63AC() || (v35 & 1) != 0 || v93 >= sub_21DBF55AC())
  {
    v125 = v46;
    v93 = v44;
    _s15RemindersUICore22TTRCurrentTimeProviderC8calendar10Foundation8CalendarVvg_0();
    v56 = *(v47 + 56);
    v112 = v48;
    v56(v101, 1, 1, v51);
    (*(v97 + 56))(v102, 1, 1, v98);
    sub_21DBF63AC();
    sub_21DBF504C();
    v57 = v105;
    v58 = v103;
    (*(v105 + 104))(v103, *MEMORY[0x277CC9878], v121);
    v59 = *MEMORY[0x277CC9900];
    v60 = v107;
    v61 = *(v107 + 104);
    v115 = v49;
    v62 = v106;
    v63 = v109;
    v61(v106, v59, v109);
    v65 = v110;
    v64 = v111;
    v66 = v108;
    (*(v110 + 104))(v108, *MEMORY[0x277CC98E8], v111);
    v67 = v104;
    v68 = v123;
    sub_21DBF59EC();
    (*(v65 + 8))(v66, v64);
    (*(v60 + 8))(v62, v63);
    v69 = v112;
    (*(v57 + 8))(v58, v121);
    v96(v120, v100);
    v69(v68, v126);
    v55 = v119;
    v54 = v117;
    if ((*(v119 + 48))(v67, 1, v117) == 1)
    {
      sub_21D0CF7E0(v67, &qword_27CE58D68, &unk_21DC0C060);
LABEL_13:
      v52 = 1;
      v53 = v118;
      return (*(v55 + 56))(v53, v52, 1, v54);
    }

    v70 = *(v55 + 32);
    v120 = (v55 + 32);
    v116 = v70;
    v70(v113, v67, v54);
    _s15RemindersUICore22TTRCurrentTimeProviderC8calendar10Foundation8CalendarVvg_0();
    v71 = v92;
    LODWORD(v121) = *MEMORY[0x277CC9968];
    v72 = v122;
    v94(v92);
    v73 = sub_21DBF59BC();
    v93(v71, v72);
    v69(v68, v126);
    if (v73)
    {
      v74 = *(v55 + 8);
    }

    else
    {
      _s15RemindersUICore22TTRCurrentTimeProviderC8calendar10Foundation8CalendarVvg_0();
      v75 = type metadata accessor for TTRReminderEditor();
      v76 = v91;
      _s15RemindersUICore22TTRCurrentTimeProviderC3now10Foundation4DateVyF_0();
      v77 = v71;
      v78 = v90;
      v124 = v75;
      static TTRReminderEditor.tomorrowDueDate(now:)(v76, v90);
      v79 = *(v55 + 8);
      v79(v76, v54);
      v80 = v122;
      (v94)(v77, v121, v122);
      v81 = v123;
      LOBYTE(v75) = sub_21DBF59BC();
      v82 = v80;
      v74 = v79;
      v93(v77, v82);
      v79(v78, v54);
      (v112)(v81, v126);
      if ((v75 & 1) == 0)
      {
        _s15RemindersUICore22TTRCurrentTimeProviderC8calendar10Foundation8CalendarVvg_0();
        v85 = v91;
        _s15RemindersUICore22TTRCurrentTimeProviderC3now10Foundation4DateVyF_0();
        static TTRReminderEditor.thisWeekendDueDate(now:)(v85, v78);
        v79(v85, v54);
        v86 = v92;
        v87 = v122;
        (v94)(v92, v121, v122);
        v83 = v113;
        v88 = sub_21DBF59BC();
        v93(v86, v87);
        v74(v78, v54);
        (v112)(v81, v126);
        v55 = v119;
        if ((v88 & 1) == 0)
        {
          v89 = v118;
          v116(v118, v83, v54);
          v53 = v89;
          v52 = 0;
          return (*(v55 + 56))(v53, v52, 1, v54);
        }

        goto LABEL_12;
      }

      v55 = v119;
    }

    v83 = v113;
LABEL_12:
    v74(v83, v54);
    goto LABEL_13;
  }

  v52 = 1;
  v54 = v117;
  v53 = v118;
  v55 = v119;
  return (*(v55 + 56))(v53, v52, 1, v54);
}

id sub_21D4D3C50(uint64_t a1)
{
  v41 = [objc_opt_self() newObjectID];
  v40 = [objc_opt_self() newObjectID];
  v39 = [objc_opt_self() newObjectID];
  v2 = type metadata accessor for TTRRecurrenceRuleModel(0);
  v37 = *(a1 + v2[6]);
  v38 = *(a1 + v2[5]);
  v36 = *(a1 + v2[7]);
  v3 = *(a1 + v2[8]);
  if (v3)
  {
    v4 = *(v3 + 16);
    if (v4)
    {
      sub_21DBFC01C();
      v5 = objc_opt_self();
      v6 = (v3 + 40);
      do
      {
        v7 = [v5 dayOfWeek:*(v6 - 1) weekNumber:*v6];
        sub_21DBFBFEC();
        sub_21DBFC03C();
        sub_21DBFC04C();
        sub_21DBFBFFC();
        v6 += 2;
        --v4;
      }

      while (v4);
    }

    sub_21D0D8CF0(0, &qword_27CE5A8F8, 0x277D44718);
    v35 = sub_21DBFA5DC();
  }

  else
  {
    v35 = 0;
  }

  v8 = *(a1 + v2[9]);
  if (v8)
  {
    v9 = *(v8 + 16);
    if (v9)
    {
      sub_21DBFC01C();
      v10 = (v8 + 32);
      do
      {
        v11 = *v10++;
        [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
        sub_21DBFBFEC();
        sub_21DBFC03C();
        sub_21DBFC04C();
        sub_21DBFBFFC();
        --v9;
      }

      while (v9);
    }

    sub_21D0D8CF0(0, &unk_280D0C1E0, 0x277CCABB0);
    v34 = sub_21DBFA5DC();
  }

  else
  {
    v34 = 0;
  }

  v12 = *(a1 + v2[12]);
  if (v12)
  {
    v13 = *(v12 + 16);
    if (v13)
    {
      sub_21DBFC01C();
      v14 = (v12 + 32);
      do
      {
        v15 = *v14++;
        [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
        sub_21DBFBFEC();
        sub_21DBFC03C();
        sub_21DBFC04C();
        sub_21DBFBFFC();
        --v13;
      }

      while (v13);
    }

    sub_21D0D8CF0(0, &unk_280D0C1E0, 0x277CCABB0);
    v33 = sub_21DBFA5DC();
  }

  else
  {
    v33 = 0;
  }

  v16 = *(a1 + v2[11]);
  if (v16)
  {
    v17 = *(v16 + 16);
    if (v17)
    {
      sub_21DBFC01C();
      v18 = (v16 + 32);
      do
      {
        v19 = *v18++;
        [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
        sub_21DBFBFEC();
        sub_21DBFC03C();
        sub_21DBFC04C();
        sub_21DBFBFFC();
        --v17;
      }

      while (v17);
    }

    sub_21D0D8CF0(0, &unk_280D0C1E0, 0x277CCABB0);
    v20 = sub_21DBFA5DC();
  }

  else
  {
    v20 = 0;
  }

  v21 = *(a1 + v2[10]);
  if (v21)
  {
    v22 = *(v21 + 16);
    if (v22)
    {
      sub_21DBFC01C();
      v23 = (v21 + 32);
      do
      {
        v24 = *v23++;
        [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
        sub_21DBFBFEC();
        sub_21DBFC03C();
        sub_21DBFC04C();
        sub_21DBFBFFC();
        --v22;
      }

      while (v22);
    }

    sub_21D0D8CF0(0, &unk_280D0C1E0, 0x277CCABB0);
    v25 = sub_21DBFA5DC();
  }

  else
  {
    v25 = 0;
  }

  v26 = *(a1 + v2[13]);
  if (v26)
  {
    v27 = *(v26 + 16);
    if (v27)
    {
      sub_21DBFC01C();
      v28 = (v26 + 32);
      do
      {
        v29 = *v28++;
        [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
        sub_21DBFBFEC();
        sub_21DBFC03C();
        sub_21DBFC04C();
        sub_21DBFBFFC();
        --v27;
      }

      while (v27);
    }

    sub_21D0D8CF0(0, &unk_280D0C1E0, 0x277CCABB0);
    v30 = sub_21DBFA5DC();
  }

  else
  {
    v30 = 0;
  }

  v31 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initRecurrenceRuleWithObjectID:v41 accountID:v40 reminderID:v39 frequency:v38 interval:v37 firstDayOfTheWeek:v36 daysOfTheWeek:v35 daysOfTheMonth:v34 monthsOfTheYear:v33 weeksOfTheYear:v20 daysOfTheYear:v25 setPositions:v30 end:0];

  sub_21D4D5640(a1, type metadata accessor for TTRRecurrenceRuleModel);
  return v31;
}

uint64_t TTRReminderTitleAttributesHarvester.deinit()
{

  v1 = OBJC_IVAR____TtC15RemindersUICore35TTRReminderTitleAttributesHarvester_initialParserLocale;
  v2 = sub_21DBF582C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_21D0CF7E0(v0 + OBJC_IVAR____TtC15RemindersUICore35TTRReminderTitleAttributesHarvester_now, &qword_27CE58D68, &unk_21DC0C060);

  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC15RemindersUICore35TTRReminderTitleAttributesHarvester_locationOptionsProvider));
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC15RemindersUICore35TTRReminderTitleAttributesHarvester_contactsProvider));

  v3 = OBJC_IVAR____TtC15RemindersUICore35TTRReminderTitleAttributesHarvester_excludedSuggestedAttributes;
  v4 = sub_21DBF7B0C();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return v0;
}

uint64_t TTRReminderTitleAttributesHarvester.__deallocating_deinit()
{
  TTRReminderTitleAttributesHarvester.deinit();

  return swift_deallocClassInstance();
}

uint64_t TTRReminderSuggestedAttribute.AttributeType.typeDescription.getter()
{
  v1 = type metadata accessor for TTRReminderSuggestedAttribute.AttributeType(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21D4D97E4(v0, v3, type metadata accessor for TTRReminderSuggestedAttribute.AttributeType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 4)
  {
    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
        v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CF38, &qword_21DC188E0);
        sub_21D4D5640(&v3[*(v6 + 48)], type metadata accessor for TTRRecurrenceRuleModel);
        v7 = sub_21DBF509C();
        (*(*(v7 - 8) + 8))(v3, v7);
        return 0x6E65727275636572;
      }

      else
      {
        sub_21D4D5640(v3, type metadata accessor for TTRReminderSuggestedAttribute.AttributeType);
        return 0x65746164657564;
      }
    }

    else if (EnumCaseMultiPayload == 2)
    {
      sub_21D4D5640(v3, type metadata accessor for TTRReminderSuggestedAttribute.AttributeType);
      return 0x6E6F697461636F6CLL;
    }

    else if (EnumCaseMultiPayload == 3)
    {
      sub_21D4D5640(v3, type metadata accessor for TTRReminderSuggestedAttribute.AttributeType);
      return 0x656C6369686576;
    }

    else
    {
      sub_21D4D5640(v3, type metadata accessor for TTRReminderSuggestedAttribute.AttributeType);
      return 1953720684;
    }
  }

  else if (EnumCaseMultiPayload > 7)
  {
    if (EnumCaseMultiPayload == 8)
    {
      sub_21D4D5640(v3, type metadata accessor for TTRReminderSuggestedAttribute.AttributeType);
      return 6775156;
    }

    else if (EnumCaseMultiPayload == 9)
    {
      sub_21D4D5640(v3, type metadata accessor for TTRReminderSuggestedAttribute.AttributeType);
      return 0x73656D206E656877;
    }

    else
    {
      sub_21D4D5640(v3, type metadata accessor for TTRReminderSuggestedAttribute.AttributeType);
      return 0x7265646E696D6572;
    }
  }

  else if (EnumCaseMultiPayload == 5)
  {
    sub_21D4D5640(v3, type metadata accessor for TTRReminderSuggestedAttribute.AttributeType);
    return 0x65656E6769737361;
  }

  else if (EnumCaseMultiPayload == 6)
  {
    return 1734437990;
  }

  else
  {
    return 0x797469726F697270;
  }
}

void sub_21D4D4734(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 iCalendarDescription];
  v4 = sub_21DBFA16C();
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
}

uint64_t sub_21D4D479C@<X0>(char *a1@<X0>, uint64_t *a3@<X2>, uint64_t *a4@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D0C0, &qword_21DC18C50);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v16 - v9;
  v11 = *a1;
  v12 = *a3;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v13 = swift_allocObject();
    *(v13 + 16) = v11;
    v14 = sub_21D4C9FB0(v12, sub_21D4DA3B0, v13);
  }

  else
  {
    type metadata accessor for TTRReminderTitleAttributesHarvester.VersionedResults(0);
    sub_21DBF90FC();
    sub_21D0D0F1C(&qword_27CE5D0C8, &qword_27CE5D0C0, &qword_21DC18C50, MEMORY[0x277CBCE90]);
    v14 = sub_21DBF920C();
    result = (*(v8 + 8))(v10, v7);
  }

  *a4 = v14;
  return result;
}

BOOL sub_21D4D496C(uint64_t a1, uint64_t a2)
{
  if ((_s15RemindersUICore25TTRAccountsListsViewModelC06PinnedD7SectionV2eeoiySbAE_AEtFZ_0() & 1) == 0)
  {
    return 0;
  }

  sub_21D0D8CF0(0, &qword_280D17680, 0x277D82BB8);
  v4 = type metadata accessor for TTRReminderTitleAttributesHarvester.HarvestRequest(0);
  if ((sub_21DBFB63C() & 1) == 0)
  {
    return 0;
  }

  v5 = v4[6];
  v6 = *(a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v6 == *v8 && v7 == v8[1];
  if (!v9 && (sub_21DBFC64C() & 1) == 0)
  {
    return 0;
  }

  v10 = v4[7];
  v11 = *(a1 + v10);
  v12 = *(a2 + v10);
  if (v11)
  {
    if (!v12)
    {
      return 0;
    }

    sub_21D0D8CF0(0, &qword_280D17880, 0x277D44700);
    v13 = v12;
    v14 = v11;
    v15 = sub_21DBFB63C();

    if ((v15 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v12)
  {
    return 0;
  }

  v16 = v4[8];
  v17 = *(a1 + v16);
  v18 = *(a2 + v16);
  if (v17)
  {
    if (!v18)
    {
      return 0;
    }

    sub_21D0D8CF0(0, &qword_280D17880, 0x277D44700);
    v19 = v18;
    v20 = v17;
    v21 = sub_21DBFB63C();

    if ((v21 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v18)
  {
    return 0;
  }

  sub_21DBF62AC();
  if (sub_21DBF629C() & 1) != 0 && (sub_21DBF629C() & 1) != 0 && *(a1 + v4[11]) == *(a2 + v4[11]) && *(a1 + v4[12]) == *(a2 + v4[12]) && (sub_21D3220EC(*(a1 + v4[13]), *(a2 + v4[13])))
  {
    sub_21DBF7B0C();
    sub_21D0F1CB0(&qword_280D0C7C8, MEMORY[0x277D45750], MEMORY[0x277D45760]);
    sub_21DBFA5BC();
    sub_21DBFA5BC();
    if (v29 == v28)
    {
      v22 = v4[15];
      v23 = (a1 + v22);
      v24 = *(a1 + v22 + 8);
      v25 = (a2 + v22);
      v26 = v25[1];
      if (v24)
      {
        return v26 && (*v23 == *v25 && v24 == v26 || (sub_21DBFC64C() & 1) != 0);
      }

      if (!v26)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_21D4D4C1C(void *a1, void *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, void (*a8)(uint64_t), void (*a9)(uint64_t), uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v70 = a5;
  v71 = a6;
  v68 = a1;
  v69 = a2;
  v72 = a10;
  v73 = a7;
  v74 = a9;
  v75 = a8;
  v67 = a16;
  v65 = sub_21DBF54CC();
  v64 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v63 = &v61 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60DB0, qword_21DC0BF70);
  MEMORY[0x28223BE20](v19 - 8);
  v61 = &v61 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68, &unk_21DC0C060);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v61 - v22;
  v24 = sub_21DBF582C();
  v25 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v27 = &v61 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77[3] = a13;
  v77[4] = a15;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v77);
  (*(*(a13 - 8) + 32))(boxed_opaque_existential_0, a3, a13);
  v76[3] = a14;
  v76[4] = v67;
  v29 = __swift_allocate_boxed_opaque_existential_0(v76);
  (*(*(a14 - 8) + 32))(v29, a4, a14);
  *(a12 + 16) = 0;
  *(a12 + 24) = 0;
  v30 = OBJC_IVAR____TtC15RemindersUICore35TTRReminderTitleAttributesHarvester_requestSubject;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CFA0, &qword_21DC18B00);
  swift_allocObject();
  *(a12 + v30) = sub_21DBF7D2C();
  *(a12 + OBJC_IVAR____TtC15RemindersUICore35TTRReminderTitleAttributesHarvester_resultsPublisherSelfSubscriptionCancellable) = 0;
  v66 = v25;
  v31 = *(v25 + 16);
  v32 = v73;
  v31(a12 + OBJC_IVAR____TtC15RemindersUICore35TTRReminderTitleAttributesHarvester_initialParserLocale, v73, v24);
  v33 = v72;
  sub_21D0D3954(v72, a12 + OBJC_IVAR____TtC15RemindersUICore35TTRReminderTitleAttributesHarvester_now, &qword_27CE58D68, &unk_21DC0C060);
  v67 = v24;
  v31(v27, v32, v24);
  v34 = v61;
  v35 = sub_21D0D3954(v33, v23, &qword_27CE58D68, &unk_21DC0C060);
  v75(v35);
  v36 = sub_21DBF5C4C();
  v37 = *(v36 - 8);
  (*(v37 + 56))(v34, 0, 1, v36);
  v62 = v27;
  v38 = sub_21DBF574C();
  v39 = sub_21DBF563C();
  v40 = *(v39 - 8);
  v41 = 0;
  if ((*(v40 + 48))(v23, 1, v39) != 1)
  {
    v41 = sub_21DBF55BC();
    (*(v40 + 8))(v23, v39);
  }

  if ((*(v37 + 48))(v34, 1, v36) == 1)
  {
    v42 = 0;
  }

  else
  {
    v42 = sub_21DBF5C0C();
    (*(v37 + 8))(v34, v36);
  }

  v43 = [objc_allocWithZone(MEMORY[0x277D45A90]) initWithLocale:v38 referenceDate:v41 referenceTimeZone:v42 forTesting:a11 & 1];

  v44 = v67;
  v66 = *(v66 + 8);
  (v66)(v62, v67);
  v45 = *(a12 + 24);
  *(a12 + 24) = v43;

  sub_21DBF661C();
  sub_21D0D8CF0(0, &qword_280D0C1D8, 0x277D44710);
  v46 = v63;
  sub_21DBFB69C();
  v47 = sub_21DBF65FC();
  (*(v64 + 8))(v46, v65);
  *(a12 + OBJC_IVAR____TtC15RemindersUICore35TTRReminderTitleAttributesHarvester_listPredictor) = v47;
  v49 = v68;
  v48 = v69;
  *(a12 + OBJC_IVAR____TtC15RemindersUICore35TTRReminderTitleAttributesHarvester_queue) = v68;
  *(a12 + OBJC_IVAR____TtC15RemindersUICore35TTRReminderTitleAttributesHarvester_backgroundQueue) = v48;
  sub_21D0D32E4(v77, a12 + OBJC_IVAR____TtC15RemindersUICore35TTRReminderTitleAttributesHarvester_locationOptionsProvider);
  sub_21D0D32E4(v76, a12 + OBJC_IVAR____TtC15RemindersUICore35TTRReminderTitleAttributesHarvester_contactsProvider);
  v50 = v70;
  *(a12 + OBJC_IVAR____TtC15RemindersUICore35TTRReminderTitleAttributesHarvester_store) = v70;
  v51 = OBJC_IVAR____TtC15RemindersUICore35TTRReminderTitleAttributesHarvester_excludedSuggestedAttributes;
  v52 = sub_21DBF7B0C();
  v53 = *(v52 - 8);
  v54 = v71;
  (*(v53 + 16))(a12 + v51, v71, v52);
  v55 = objc_allocWithZone(MEMORY[0x277D44870]);
  v56 = v49;
  [v55 initWithQueue:v48 store:v50];
  sub_21DBF7CCC();
  swift_allocObject();
  v57 = sub_21DBF7B7C();
  sub_21D0CF7E0(v72, &qword_27CE58D68, &unk_21DC0C060);
  (v66)(v73, v44);
  (*(v53 + 8))(v54, v52);
  __swift_destroy_boxed_opaque_existential_0(v76);
  __swift_destroy_boxed_opaque_existential_0(v77);
  *(a12 + OBJC_IVAR____TtC15RemindersUICore35TTRReminderTitleAttributesHarvester_suggestedAttributesHarvester) = v57;
  v58 = (a12 + OBJC_IVAR____TtC15RemindersUICore35TTRReminderTitleAttributesHarvester_timeZone);
  v59 = v74;
  *v58 = v75;
  v58[1] = v59;
  return a12;
}

uint64_t sub_21D4D5348(void *a1, void *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, void (*a8)(uint64_t), void (*a9)(uint64_t), uint64_t a10, unsigned __int8 a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v34 = a7;
  v35 = a8;
  v32 = a5;
  v33 = a6;
  v26 = a4;
  v30 = a1;
  v31 = a2;
  v28 = a10;
  v29 = a9;
  v27 = a11;
  v17 = *(a14 - 8);
  MEMORY[0x28223BE20](a12);
  v19 = &v26 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(a13 - 8);
  MEMORY[0x28223BE20](v21);
  v23 = &v26 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = swift_allocObject();
  (*(v20 + 16))(v23, a3, a13);
  (*(v17 + 16))(v19, v26, a14);
  return sub_21D4D4C1C(v30, v31, v23, v19, v32, v33, v34, v35, v29, v28, v27, v24, a13, a14, a15, a16);
}

uint64_t sub_21D4D5520()
{
  v1 = *(sub_21DBF79FC() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + v3);
  v5 = *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_21D4C765C(v0 + v2, v5, v4);
}

uint64_t sub_21D4D5640(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_21D4D56C8(uint64_t a1)
{
  sub_21DBF582C();
  if (v1 <= 0x3F)
  {
    sub_21D4D5850(319);
    if (v2 <= 0x3F)
    {
      sub_21DBF7B0C();
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_21D4D5850(uint64_t a1)
{
  if (!qword_280D1B858)
  {
    sub_21DBF563C();
    v1 = sub_21DBFBA8C();
    if (!v2)
    {
      atomic_store(v1, &qword_280D1B858);
    }
  }
}

char *initializeBufferWithCopyOfBuffer for TTRReminderTitleAttributesHarvester.Attribute(char *a1, char *a2, uint64_t a3)
{
  v4 = a1;
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) == 0)
  {
    *a1 = *a2;
    v7 = *(a3 + 20);
    v8 = &a1[v7];
    v9 = &a2[v7];
    v10 = type metadata accessor for TTRReminderSuggestedAttribute.AttributeType(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 3)
    {
      if (EnumCaseMultiPayload > 1)
      {
LABEL_17:
        v20 = *v9;
        *v8 = *v9;
        v21 = v20;
LABEL_28:
        swift_storeEnumTagMultiPayload();
        goto LABEL_29;
      }

      if (!EnumCaseMultiPayload)
      {
        v22 = sub_21DBF509C();
        (*(*(v22 - 8) + 16))(v8, v9, v22);
        goto LABEL_28;
      }

      if (EnumCaseMultiPayload == 1)
      {
        v13 = sub_21DBF509C();
        (*(*(v13 - 8) + 16))(v8, v9, v13);
        v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CF38, &qword_21DC188E0) + 48);
        v15 = &v8[v14];
        v16 = v9 + v14;
        v17 = type metadata accessor for TTRRecurrenceEndModel(0);
        v18 = *(v17 - 8);
        if ((*(v18 + 48))(v16, 1, v17))
        {
          v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE62610, &unk_21DC0DF00);
          memcpy(v15, v16, *(*(v19 - 8) + 64));
        }

        else
        {
          if (swift_getEnumCaseMultiPayload())
          {
            memcpy(v15, v16, *(v18 + 64));
          }

          else
          {
            v23 = sub_21DBF563C();
            (*(*(v23 - 8) + 16))(v15, v16, v23);
            swift_storeEnumTagMultiPayload();
          }

          (*(v18 + 56))(v15, 0, 1, v17);
        }

        v24 = type metadata accessor for TTRRecurrenceRuleModel(0);
        *&v15[v24[5]] = *&v16[v24[5]];
        *&v15[v24[6]] = *&v16[v24[6]];
        *&v15[v24[7]] = *&v16[v24[7]];
        *&v15[v24[8]] = *&v16[v24[8]];
        *&v15[v24[9]] = *&v16[v24[9]];
        *&v15[v24[10]] = *&v16[v24[10]];
        *&v15[v24[11]] = *&v16[v24[11]];
        *&v15[v24[12]] = *&v16[v24[12]];
        *&v15[v24[13]] = *&v16[v24[13]];
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        goto LABEL_28;
      }
    }

    else if (EnumCaseMultiPayload <= 7)
    {
      if (EnumCaseMultiPayload == 4 || EnumCaseMultiPayload == 5)
      {
        goto LABEL_17;
      }
    }

    else if (EnumCaseMultiPayload == 8 || EnumCaseMultiPayload == 9 || EnumCaseMultiPayload == 10)
    {
      goto LABEL_17;
    }

    memcpy(v8, v9, *(*(v10 - 8) + 64));
LABEL_29:
    v25 = *(a3 + 24);
    v26 = sub_21DBF79FC();
    (*(*(v26 - 8) + 16))(&v4[v25], &a2[v25], v26);
    return v4;
  }

  v12 = *a2;
  *v4 = *a2;
  v4 = (v12 + ((v5 + 16) & ~v5));

  return v4;
}

uint64_t destroy for TTRReminderTitleAttributesHarvester.Attribute(uint64_t a1, uint64_t a2)
{
  v4 = (a1 + *(a2 + 20));
  type metadata accessor for TTRReminderSuggestedAttribute.AttributeType(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload > 1)
    {
      goto LABEL_17;
    }

    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v6 = sub_21DBF509C();
        (*(*(v6 - 8) + 8))(v4, v6);
        v7 = v4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CF38, &qword_21DC188E0) + 48);
        v8 = type metadata accessor for TTRRecurrenceEndModel(0);
        if (!(*(*(v8 - 8) + 48))(v7, 1, v8) && !swift_getEnumCaseMultiPayload())
        {
          v9 = sub_21DBF563C();
          (*(*(v9 - 8) + 8))(v7, v9);
        }

        type metadata accessor for TTRRecurrenceRuleModel(0);
      }
    }

    else
    {
      v14 = sub_21DBF509C();
      (*(*(v14 - 8) + 8))(v4, v14);
    }
  }

  else
  {
    if (EnumCaseMultiPayload > 7)
    {
      if (EnumCaseMultiPayload != 8 && EnumCaseMultiPayload != 9 && EnumCaseMultiPayload != 10)
      {
        goto LABEL_18;
      }

LABEL_17:

      goto LABEL_18;
    }

    if (EnumCaseMultiPayload == 4 || EnumCaseMultiPayload == 5)
    {
      goto LABEL_17;
    }
  }

LABEL_18:
  v10 = *(a2 + 24);
  v11 = sub_21DBF79FC();
  v12 = *(*(v11 - 8) + 8);

  return v12(a1 + v10, v11);
}

char *initializeWithCopy for TTRReminderTitleAttributesHarvester.Attribute(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;
  v6 = *(a3 + 20);
  v7 = &a1[v6];
  v8 = &a2[v6];
  v9 = type metadata accessor for TTRReminderSuggestedAttribute.AttributeType(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload > 1)
    {
LABEL_15:
      v18 = *v8;
      *v7 = *v8;
      v19 = v18;
LABEL_26:
      swift_storeEnumTagMultiPayload();
      goto LABEL_27;
    }

    if (!EnumCaseMultiPayload)
    {
      v20 = sub_21DBF509C();
      (*(*(v20 - 8) + 16))(v7, v8, v20);
      goto LABEL_26;
    }

    if (EnumCaseMultiPayload == 1)
    {
      v11 = sub_21DBF509C();
      (*(*(v11 - 8) + 16))(v7, v8, v11);
      v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CF38, &qword_21DC188E0) + 48);
      v13 = &v7[v12];
      v14 = v8 + v12;
      v15 = type metadata accessor for TTRRecurrenceEndModel(0);
      v16 = *(v15 - 8);
      if ((*(v16 + 48))(v14, 1, v15))
      {
        v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE62610, &unk_21DC0DF00);
        memcpy(v13, v14, *(*(v17 - 8) + 64));
      }

      else
      {
        if (swift_getEnumCaseMultiPayload())
        {
          memcpy(v13, v14, *(v16 + 64));
        }

        else
        {
          v21 = sub_21DBF563C();
          (*(*(v21 - 8) + 16))(v13, v14, v21);
          swift_storeEnumTagMultiPayload();
        }

        (*(v16 + 56))(v13, 0, 1, v15);
      }

      v22 = type metadata accessor for TTRRecurrenceRuleModel(0);
      *&v13[v22[5]] = *&v14[v22[5]];
      *&v13[v22[6]] = *&v14[v22[6]];
      *&v13[v22[7]] = *&v14[v22[7]];
      *&v13[v22[8]] = *&v14[v22[8]];
      *&v13[v22[9]] = *&v14[v22[9]];
      *&v13[v22[10]] = *&v14[v22[10]];
      *&v13[v22[11]] = *&v14[v22[11]];
      *&v13[v22[12]] = *&v14[v22[12]];
      *&v13[v22[13]] = *&v14[v22[13]];
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      goto LABEL_26;
    }
  }

  else if (EnumCaseMultiPayload <= 7)
  {
    if (EnumCaseMultiPayload == 4 || EnumCaseMultiPayload == 5)
    {
      goto LABEL_15;
    }
  }

  else if (EnumCaseMultiPayload == 8 || EnumCaseMultiPayload == 9 || EnumCaseMultiPayload == 10)
  {
    goto LABEL_15;
  }

  memcpy(v7, v8, *(*(v9 - 8) + 64));
LABEL_27:
  v23 = *(a3 + 24);
  v24 = sub_21DBF79FC();
  (*(*(v24 - 8) + 16))(&a1[v23], &a2[v23], v24);
  return a1;
}

char *assignWithCopy for TTRReminderTitleAttributesHarvester.Attribute(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);
  if (a1 != a2)
  {
    v6 = *(a3 + 20);
    v7 = &a1[v6];
    v8 = &a2[v6];
    sub_21D4D5640(&a1[v6], type metadata accessor for TTRReminderSuggestedAttribute.AttributeType);
    v9 = type metadata accessor for TTRReminderSuggestedAttribute.AttributeType(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 3)
    {
      if (EnumCaseMultiPayload > 1)
      {
LABEL_16:
        v18 = *v8;
        *v7 = *v8;
        v19 = v18;
LABEL_27:
        swift_storeEnumTagMultiPayload();
        goto LABEL_28;
      }

      if (!EnumCaseMultiPayload)
      {
        v20 = sub_21DBF509C();
        (*(*(v20 - 8) + 16))(v7, v8, v20);
        goto LABEL_27;
      }

      if (EnumCaseMultiPayload == 1)
      {
        v11 = sub_21DBF509C();
        (*(*(v11 - 8) + 16))(v7, v8, v11);
        v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CF38, &qword_21DC188E0) + 48);
        v13 = &v7[v12];
        v14 = v8 + v12;
        v15 = type metadata accessor for TTRRecurrenceEndModel(0);
        v16 = *(v15 - 8);
        if ((*(v16 + 48))(v14, 1, v15))
        {
          v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE62610, &unk_21DC0DF00);
          memcpy(v13, v14, *(*(v17 - 8) + 64));
        }

        else
        {
          if (swift_getEnumCaseMultiPayload())
          {
            memcpy(v13, v14, *(v16 + 64));
          }

          else
          {
            v21 = sub_21DBF563C();
            (*(*(v21 - 8) + 16))(v13, v14, v21);
            swift_storeEnumTagMultiPayload();
          }

          (*(v16 + 56))(v13, 0, 1, v15);
        }

        v22 = type metadata accessor for TTRRecurrenceRuleModel(0);
        *&v13[v22[5]] = *&v14[v22[5]];
        *&v13[v22[6]] = *&v14[v22[6]];
        *&v13[v22[7]] = *&v14[v22[7]];
        *&v13[v22[8]] = *&v14[v22[8]];
        *&v13[v22[9]] = *&v14[v22[9]];
        *&v13[v22[10]] = *&v14[v22[10]];
        *&v13[v22[11]] = *&v14[v22[11]];
        *&v13[v22[12]] = *&v14[v22[12]];
        *&v13[v22[13]] = *&v14[v22[13]];
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        goto LABEL_27;
      }
    }

    else if (EnumCaseMultiPayload <= 7)
    {
      if (EnumCaseMultiPayload == 4 || EnumCaseMultiPayload == 5)
      {
        goto LABEL_16;
      }
    }

    else if (EnumCaseMultiPayload == 8 || EnumCaseMultiPayload == 9 || EnumCaseMultiPayload == 10)
    {
      goto LABEL_16;
    }

    memcpy(v7, v8, *(*(v9 - 8) + 64));
  }

LABEL_28:
  v23 = *(a3 + 24);
  v24 = sub_21DBF79FC();
  (*(*(v24 - 8) + 24))(&a1[v23], &a2[v23], v24);
  return a1;
}

char *initializeWithTake for TTRReminderTitleAttributesHarvester.Attribute(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;
  v6 = *(a3 + 20);
  v7 = &a1[v6];
  v8 = &a2[v6];
  v9 = type metadata accessor for TTRReminderSuggestedAttribute.AttributeType(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v12 = sub_21DBF509C();
    (*(*(v12 - 8) + 32))(v7, v8, v12);
    v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CF38, &qword_21DC188E0) + 48);
    v14 = &v7[v13];
    v15 = &v8[v13];
    v16 = type metadata accessor for TTRRecurrenceEndModel(0);
    v17 = *(v16 - 8);
    if ((*(v17 + 48))(v15, 1, v16))
    {
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE62610, &unk_21DC0DF00);
      memcpy(v14, v15, *(*(v18 - 8) + 64));
    }

    else
    {
      if (swift_getEnumCaseMultiPayload())
      {
        memcpy(v14, v15, *(v17 + 64));
      }

      else
      {
        v19 = sub_21DBF563C();
        (*(*(v19 - 8) + 32))(v14, v15, v19);
        swift_storeEnumTagMultiPayload();
      }

      (*(v17 + 56))(v14, 0, 1, v16);
    }

    v20 = type metadata accessor for TTRRecurrenceRuleModel(0);
    *&v14[v20[5]] = *&v15[v20[5]];
    *&v14[v20[6]] = *&v15[v20[6]];
    *&v14[v20[7]] = *&v15[v20[7]];
    *&v14[v20[8]] = *&v15[v20[8]];
    *&v14[v20[9]] = *&v15[v20[9]];
    *&v14[v20[10]] = *&v15[v20[10]];
    *&v14[v20[11]] = *&v15[v20[11]];
    *&v14[v20[12]] = *&v15[v20[12]];
    *&v14[v20[13]] = *&v15[v20[13]];
    goto LABEL_12;
  }

  if (!EnumCaseMultiPayload)
  {
    v11 = sub_21DBF509C();
    (*(*(v11 - 8) + 32))(v7, v8, v11);
LABEL_12:
    swift_storeEnumTagMultiPayload();
    goto LABEL_13;
  }

  memcpy(v7, v8, *(*(v9 - 8) + 64));
LABEL_13:
  v21 = *(a3 + 24);
  v22 = sub_21DBF79FC();
  (*(*(v22 - 8) + 32))(&a1[v21], &a2[v21], v22);
  return a1;
}

char *assignWithTake for TTRReminderTitleAttributesHarvester.Attribute(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;
  if (a1 != a2)
  {
    v6 = *(a3 + 20);
    v7 = &a1[v6];
    v8 = &a2[v6];
    sub_21D4D5640(&a1[v6], type metadata accessor for TTRReminderSuggestedAttribute.AttributeType);
    v9 = type metadata accessor for TTRReminderSuggestedAttribute.AttributeType(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      v12 = sub_21DBF509C();
      (*(*(v12 - 8) + 32))(v7, v8, v12);
      v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CF38, &qword_21DC188E0) + 48);
      v14 = &v7[v13];
      v15 = &v8[v13];
      v16 = type metadata accessor for TTRRecurrenceEndModel(0);
      v17 = *(v16 - 8);
      if ((*(v17 + 48))(v15, 1, v16))
      {
        v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE62610, &unk_21DC0DF00);
        memcpy(v14, v15, *(*(v18 - 8) + 64));
      }

      else
      {
        if (swift_getEnumCaseMultiPayload())
        {
          memcpy(v14, v15, *(v17 + 64));
        }

        else
        {
          v19 = sub_21DBF563C();
          (*(*(v19 - 8) + 32))(v14, v15, v19);
          swift_storeEnumTagMultiPayload();
        }

        (*(v17 + 56))(v14, 0, 1, v16);
      }

      v20 = type metadata accessor for TTRRecurrenceRuleModel(0);
      *&v14[v20[5]] = *&v15[v20[5]];
      *&v14[v20[6]] = *&v15[v20[6]];
      *&v14[v20[7]] = *&v15[v20[7]];
      *&v14[v20[8]] = *&v15[v20[8]];
      *&v14[v20[9]] = *&v15[v20[9]];
      *&v14[v20[10]] = *&v15[v20[10]];
      *&v14[v20[11]] = *&v15[v20[11]];
      *&v14[v20[12]] = *&v15[v20[12]];
      *&v14[v20[13]] = *&v15[v20[13]];
      goto LABEL_13;
    }

    if (!EnumCaseMultiPayload)
    {
      v11 = sub_21DBF509C();
      (*(*(v11 - 8) + 32))(v7, v8, v11);
LABEL_13:
      swift_storeEnumTagMultiPayload();
      goto LABEL_14;
    }

    memcpy(v7, v8, *(*(v9 - 8) + 64));
  }

LABEL_14:
  v21 = *(a3 + 24);
  v22 = sub_21DBF79FC();
  (*(*(v22 - 8) + 40))(&a1[v21], &a2[v21], v22);
  return a1;
}

uint64_t sub_21D4D6FD0(uint64_t a1)
{
  result = type metadata accessor for TTRReminderSuggestedAttribute.AttributeType(319);
  if (v2 <= 0x3F)
  {
    result = sub_21DBF79FC();
    if (v3 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

void *sub_21D4D70A4(void *a1, void *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v26 = *a2;
    *a1 = *a2;
    a1 = (v26 + ((v5 + 16) & ~v5));
  }

  else
  {
    v6 = sub_21DBF56BC();
    (*(*(v6 - 8) + 16))(a1, a2, v6);
    v7 = type metadata accessor for TTRReminderTitleAttributesHarvester.HarvestRequest(0);
    v8 = v7[5];
    v29 = *(a2 + v8);
    *(a1 + v8) = v29;
    v9 = v7[6];
    v10 = (a1 + v9);
    v11 = (a2 + v9);
    v12 = v11[1];
    *v10 = *v11;
    v10[1] = v12;
    v13 = v7[7];
    v14 = *(a2 + v13);
    *(a1 + v13) = v14;
    v15 = v7[8];
    v16 = *(a2 + v15);
    *(a1 + v15) = v16;
    *(a1 + v7[9]) = *(a2 + v7[9]);
    *(a1 + v7[10]) = *(a2 + v7[10]);
    *(a1 + v7[11]) = *(a2 + v7[11]);
    *(a1 + v7[12]) = *(a2 + v7[12]);
    *(a1 + v7[13]) = *(a2 + v7[13]);
    v17 = v7[14];
    v18 = sub_21DBF7B0C();
    v28 = *(*(v18 - 8) + 16);
    v19 = v29;
    sub_21DBF8E0C();
    v20 = v14;
    v21 = v16;

    sub_21DBF8E0C();
    v28(a1 + v17, a2 + v17, v18);
    v22 = v7[15];
    v23 = (a1 + v22);
    v24 = (a2 + v22);
    v25 = v24[1];
    *v23 = *v24;
    v23[1] = v25;
    *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
    sub_21DBF8E0C();
    sub_21DBF8E0C();
  }

  return a1;
}

double sub_21D4D72D0(uint64_t a1)
{
  v2 = sub_21DBF56BC();
  (*(*(v2 - 8) + 8))(a1, v2);
  v3 = type metadata accessor for TTRReminderTitleAttributesHarvester.HarvestRequest(0);

  v4 = v3[14];
  v5 = sub_21DBF7B0C();
  (*(*(v5 - 8) + 8))(a1 + v4, v5);

  return result;
}

uint64_t sub_21D4D73FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_21DBF56BC();
  (*(*(v5 - 8) + 16))(a1, a2, v5);
  v6 = type metadata accessor for TTRReminderTitleAttributesHarvester.HarvestRequest(0);
  v7 = v6[5];
  v27 = *(a2 + v7);
  *(a1 + v7) = v27;
  v8 = v6[6];
  v9 = (a1 + v8);
  v10 = (a2 + v8);
  v11 = v10[1];
  *v9 = *v10;
  v9[1] = v11;
  v12 = v6[7];
  v13 = *(a2 + v12);
  *(a1 + v12) = v13;
  v14 = v6[8];
  v15 = *(a2 + v14);
  *(a1 + v14) = v15;
  *(a1 + v6[9]) = *(a2 + v6[9]);
  *(a1 + v6[10]) = *(a2 + v6[10]);
  *(a1 + v6[11]) = *(a2 + v6[11]);
  *(a1 + v6[12]) = *(a2 + v6[12]);
  *(a1 + v6[13]) = *(a2 + v6[13]);
  v16 = v6[14];
  v17 = sub_21DBF7B0C();
  v26 = *(*(v17 - 8) + 16);
  v18 = v27;
  sub_21DBF8E0C();
  v19 = v13;
  v20 = v15;

  sub_21DBF8E0C();
  v26(a1 + v16, a2 + v16, v17);
  v21 = v6[15];
  v22 = (a1 + v21);
  v23 = (a2 + v21);
  v24 = v23[1];
  *v22 = *v23;
  v22[1] = v24;
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  return a1;
}

uint64_t sub_21D4D75BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21DBF56BC();
  (*(*(v6 - 8) + 24))(a1, a2, v6);
  v7 = type metadata accessor for TTRReminderTitleAttributesHarvester.HarvestRequest(0);
  v8 = v7[5];
  v9 = *(a2 + v8);
  v10 = *(a1 + v8);
  *(a1 + v8) = v9;
  v11 = v9;

  v12 = v7[6];
  v13 = (a1 + v12);
  v14 = (a2 + v12);
  *v13 = *v14;
  v13[1] = v14[1];
  sub_21DBF8E0C();

  v15 = v7[7];
  v16 = *(a1 + v15);
  v17 = *(a2 + v15);
  *(a1 + v15) = v17;
  v18 = v17;

  v19 = v7[8];
  v20 = *(a1 + v19);
  v21 = *(a2 + v19);
  *(a1 + v19) = v21;
  v22 = v21;

  *(a1 + v7[9]) = *(a2 + v7[9]);

  *(a1 + v7[10]) = *(a2 + v7[10]);

  *(a1 + v7[11]) = *(a2 + v7[11]);
  *(a1 + v7[12]) = *(a2 + v7[12]);
  *(a1 + v7[13]) = *(a2 + v7[13]);
  sub_21DBF8E0C();

  v23 = v7[14];
  v24 = sub_21DBF7B0C();
  (*(*(v24 - 8) + 24))(a1 + v23, a2 + v23, v24);
  v25 = v7[15];
  v26 = (a1 + v25);
  v27 = (a2 + v25);
  *v26 = *v27;
  v26[1] = v27[1];
  sub_21DBF8E0C();

  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  sub_21DBF8E0C();

  return a1;
}

uint64_t sub_21D4D77A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21DBF56BC();
  (*(*(v6 - 8) + 32))(a1, a2, v6);
  v7 = type metadata accessor for TTRReminderTitleAttributesHarvester.HarvestRequest(0);
  *(a1 + v7[5]) = *(a2 + v7[5]);
  *(a1 + v7[6]) = *(a2 + v7[6]);
  *(a1 + v7[7]) = *(a2 + v7[7]);
  *(a1 + v7[8]) = *(a2 + v7[8]);
  *(a1 + v7[9]) = *(a2 + v7[9]);
  *(a1 + v7[10]) = *(a2 + v7[10]);
  *(a1 + v7[11]) = *(a2 + v7[11]);
  *(a1 + v7[12]) = *(a2 + v7[12]);
  *(a1 + v7[13]) = *(a2 + v7[13]);
  v8 = v7[14];
  v9 = sub_21DBF7B0C();
  (*(*(v9 - 8) + 32))(a1 + v8, a2 + v8, v9);
  *(a1 + v7[15]) = *(a2 + v7[15]);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  return a1;
}

uint64_t sub_21D4D78F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21DBF56BC();
  (*(*(v6 - 8) + 40))(a1, a2, v6);
  v7 = type metadata accessor for TTRReminderTitleAttributesHarvester.HarvestRequest(0);
  v8 = v7[5];
  v9 = *(a1 + v8);
  *(a1 + v8) = *(a2 + v8);

  v10 = v7[6];
  v11 = (a1 + v10);
  v12 = (a2 + v10);
  v14 = *v12;
  v13 = v12[1];
  *v11 = v14;
  v11[1] = v13;

  v15 = v7[7];
  v16 = *(a1 + v15);
  *(a1 + v15) = *(a2 + v15);

  v17 = v7[8];
  v18 = *(a1 + v17);
  *(a1 + v17) = *(a2 + v17);

  *(a1 + v7[9]) = *(a2 + v7[9]);

  *(a1 + v7[10]) = *(a2 + v7[10]);

  *(a1 + v7[11]) = *(a2 + v7[11]);
  *(a1 + v7[12]) = *(a2 + v7[12]);
  *(a1 + v7[13]) = *(a2 + v7[13]);

  v19 = v7[14];
  v20 = sub_21DBF7B0C();
  (*(*(v20 - 8) + 40))(a1 + v19, a2 + v19, v20);
  v21 = v7[15];
  v22 = (a1 + v21);
  v23 = (a2 + v21);
  v25 = *v23;
  v24 = v23[1];
  *v22 = v25;
  v22[1] = v24;

  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));

  return a1;
}

uint64_t sub_21D4D7AD8(uint64_t a1)
{
  result = type metadata accessor for TTRReminderTitleAttributesHarvester.HarvestRequest(319);
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void *sub_21D4D7B70(void *a1, void *a2, int *a3)
{
  v5 = *(*(a3 - 1) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v27 = *a2;
    *a1 = *a2;
    a1 = (v27 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = sub_21DBF56BC();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
    v8 = a3[5];
    v9 = a3[6];
    v31 = *(a2 + v8);
    *(a1 + v8) = v31;
    v10 = (a1 + v9);
    v11 = (a2 + v9);
    v12 = v11[1];
    *v10 = *v11;
    v10[1] = v12;
    v13 = a3[7];
    v14 = a3[8];
    v15 = *(a2 + v13);
    *(a1 + v13) = v15;
    v30 = *(a2 + v14);
    *(a1 + v14) = v30;
    v16 = a3[10];
    *(a1 + a3[9]) = *(a2 + a3[9]);
    *(a1 + v16) = *(a2 + v16);
    v17 = a3[12];
    *(a1 + a3[11]) = *(a2 + a3[11]);
    *(a1 + v17) = *(a2 + v17);
    v18 = a3[14];
    *(a1 + a3[13]) = *(a2 + a3[13]);
    v19 = sub_21DBF7B0C();
    v29 = *(*(v19 - 8) + 16);
    v20 = v31;
    sub_21DBF8E0C();
    v21 = v15;
    v22 = v30;

    sub_21DBF8E0C();
    v29(a1 + v18, a2 + v18, v19);
    v23 = a3[15];
    v24 = (a1 + v23);
    v25 = (a2 + v23);
    v26 = v25[1];
    *v24 = *v25;
    v24[1] = v26;
    sub_21DBF8E0C();
  }

  return a1;
}

double sub_21D4D7D48(uint64_t a1, int *a2)
{
  v4 = sub_21DBF56BC();
  (*(*(v4 - 8) + 8))(a1, v4);

  v5 = a2[14];
  v6 = sub_21DBF7B0C();
  (*(*(v6 - 8) + 8))(a1 + v5, v6);

  return result;
}

uint64_t sub_21D4D7E5C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_21DBF56BC();
  (*(*(v6 - 8) + 16))(a1, a2, v6);
  v7 = a3[5];
  v8 = a3[6];
  v29 = *(a2 + v7);
  *(a1 + v7) = v29;
  v9 = (a1 + v8);
  v10 = (a2 + v8);
  v11 = v10[1];
  *v9 = *v10;
  v9[1] = v11;
  v12 = a3[7];
  v13 = a3[8];
  v14 = *(a2 + v12);
  *(a1 + v12) = v14;
  v28 = *(a2 + v13);
  *(a1 + v13) = v28;
  v15 = a3[10];
  *(a1 + a3[9]) = *(a2 + a3[9]);
  *(a1 + v15) = *(a2 + v15);
  v16 = a3[12];
  *(a1 + a3[11]) = *(a2 + a3[11]);
  *(a1 + v16) = *(a2 + v16);
  v17 = a3[14];
  *(a1 + a3[13]) = *(a2 + a3[13]);
  v18 = sub_21DBF7B0C();
  v27 = *(*(v18 - 8) + 16);
  v19 = v29;
  sub_21DBF8E0C();
  v20 = v14;
  v21 = v28;

  sub_21DBF8E0C();
  v27(a1 + v17, a2 + v17, v18);
  v22 = a3[15];
  v23 = (a1 + v22);
  v24 = (a2 + v22);
  v25 = v24[1];
  *v23 = *v24;
  v23[1] = v25;
  sub_21DBF8E0C();
  return a1;
}

uint64_t sub_21D4D7FE8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_21DBF56BC();
  (*(*(v6 - 8) + 24))(a1, a2, v6);
  v7 = a3[5];
  v8 = *(a2 + v7);
  v9 = *(a1 + v7);
  *(a1 + v7) = v8;
  v10 = v8;

  v11 = a3[6];
  v12 = (a1 + v11);
  v13 = (a2 + v11);
  *v12 = *v13;
  v12[1] = v13[1];
  sub_21DBF8E0C();

  v14 = a3[7];
  v15 = *(a1 + v14);
  v16 = *(a2 + v14);
  *(a1 + v14) = v16;
  v17 = v16;

  v18 = a3[8];
  v19 = *(a1 + v18);
  v20 = *(a2 + v18);
  *(a1 + v18) = v20;
  v21 = v20;

  *(a1 + a3[9]) = *(a2 + a3[9]);

  *(a1 + a3[10]) = *(a2 + a3[10]);

  *(a1 + a3[11]) = *(a2 + a3[11]);
  *(a1 + a3[12]) = *(a2 + a3[12]);
  *(a1 + a3[13]) = *(a2 + a3[13]);
  sub_21DBF8E0C();

  v22 = a3[14];
  v23 = sub_21DBF7B0C();
  (*(*(v23 - 8) + 24))(a1 + v22, a2 + v22, v23);
  v24 = a3[15];
  v25 = (a1 + v24);
  v26 = (a2 + v24);
  *v25 = *v26;
  v25[1] = v26[1];
  sub_21DBF8E0C();

  return a1;
}

uint64_t sub_21D4D81A4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_21DBF56BC();
  (*(*(v6 - 8) + 32))(a1, a2, v6);
  v7 = a3[6];
  *(a1 + a3[5]) = *(a2 + a3[5]);
  *(a1 + v7) = *(a2 + v7);
  v8 = a3[8];
  *(a1 + a3[7]) = *(a2 + a3[7]);
  *(a1 + v8) = *(a2 + v8);
  v9 = a3[10];
  *(a1 + a3[9]) = *(a2 + a3[9]);
  *(a1 + v9) = *(a2 + v9);
  v10 = a3[12];
  *(a1 + a3[11]) = *(a2 + a3[11]);
  *(a1 + v10) = *(a2 + v10);
  v11 = a3[14];
  *(a1 + a3[13]) = *(a2 + a3[13]);
  v12 = sub_21DBF7B0C();
  (*(*(v12 - 8) + 32))(a1 + v11, a2 + v11, v12);
  *(a1 + a3[15]) = *(a2 + a3[15]);
  return a1;
}

uint64_t sub_21D4D82B8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_21DBF56BC();
  (*(*(v6 - 8) + 40))(a1, a2, v6);
  v7 = a3[5];
  v8 = *(a1 + v7);
  *(a1 + v7) = *(a2 + v7);

  v9 = a3[6];
  v10 = (a1 + v9);
  v11 = (a2 + v9);
  v13 = *v11;
  v12 = v11[1];
  *v10 = v13;
  v10[1] = v12;

  v14 = a3[7];
  v15 = *(a1 + v14);
  *(a1 + v14) = *(a2 + v14);

  v16 = a3[8];
  v17 = *(a1 + v16);
  *(a1 + v16) = *(a2 + v16);

  *(a1 + a3[9]) = *(a2 + a3[9]);

  *(a1 + a3[10]) = *(a2 + a3[10]);

  v18 = a3[12];
  *(a1 + a3[11]) = *(a2 + a3[11]);
  *(a1 + v18) = *(a2 + v18);
  *(a1 + a3[13]) = *(a2 + a3[13]);

  v19 = a3[14];
  v20 = sub_21DBF7B0C();
  (*(*(v20 - 8) + 40))(a1 + v19, a2 + v19, v20);
  v21 = a3[15];
  v22 = (a1 + v21);
  v23 = (a2 + v21);
  v25 = *v23;
  v24 = v23[1];
  *v22 = v25;
  v22[1] = v24;

  return a1;
}

uint64_t sub_21D4D8454(uint64_t a1)
{
  result = sub_21DBF56BC();
  if (v2 <= 0x3F)
  {
    result = sub_21DBF7B0C();
    if (v3 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

uint64_t sub_21D4D857C(uint64_t a1)
{
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CF48, &qword_21DC18AA0);
  v97 = *(v95 - 8);
  MEMORY[0x28223BE20](v95);
  v92 = &v64 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CF50, &qword_21DC18AA8);
  v4 = *(v3 - 8);
  v100 = v3;
  v101 = v4;
  MEMORY[0x28223BE20](v3);
  v93 = &v64 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CF58, &qword_21DC18AB0);
  v7 = *(v6 - 8);
  v98 = v6;
  v99 = v7;
  MEMORY[0x28223BE20](v6);
  v94 = &v64 - v8;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CF60, &qword_21DC18AB8);
  v85 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v81 = &v64 - v9;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CF68, &qword_21DC18AC0);
  v87 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v82 = &v64 - v10;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CF70, &qword_21DC18AC8);
  v96 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v83 = &v64 - v11;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CF78, &qword_21DC18AD0);
  v77 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v71 = &v64 - v12;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CF80, &qword_21DC18AD8);
  v79 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v72 = &v64 - v13;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CF88, &qword_21DC18AE0);
  v76 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v109 = &v64 - v14;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CF90, &unk_21DC18AE8);
  v91 = *(v113 - 8);
  MEMORY[0x28223BE20](v113);
  v108 = &v64 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F250, &unk_21DC13240);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v64 - v17;
  v103 = sub_21DBFB10C();
  v19 = *(v103 - 8);
  MEMORY[0x28223BE20](v103);
  v21 = &v64 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CF98, &qword_21DC18AF8);
  v89 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v23 = &v64 - v22;
  v24 = OBJC_IVAR____TtC15RemindersUICore35TTRReminderTitleAttributesHarvester_requestSubject;
  v25 = swift_allocObject();
  swift_weakInit();

  v112 = sub_21D4C9FB0(v26, sub_21D4D97D4, v25);

  v111 = sub_21D4C5080(v27);

  v75 = v24;

  v110 = sub_21D4C9FB0(v28, sub_21D4CD3E8, 0);

  v116 = *(a1 + v24);

  sub_21DBFB0FC();
  v115 = *(a1 + OBJC_IVAR____TtC15RemindersUICore35TTRReminderTitleAttributesHarvester_queue);
  v29 = v115;
  v106 = sub_21DBFB0DC();
  v30 = *(v106 - 8);
  v105 = *(v30 + 56);
  v107 = v30 + 56;
  v105(v18, 1, 1, v106);
  v68 = v29;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CFA0, &qword_21DC18B00);
  v104 = sub_21D0D8CF0(0, &qword_280D1B900, 0x277D85C78);
  v69 = sub_21D0D0F1C(&qword_280D0C7B0, &qword_27CE5CFA0, &qword_21DC18B00, MEMORY[0x277D457F8]);
  v31 = sub_21D47130C();
  v80 = v23;
  v67 = v31;
  sub_21DBF937C();
  sub_21D0CF7E0(v18, &unk_27CE5F250, &unk_21DC13240);
  (*(v19 + 8))(v21, v103);

  v116 = sub_21D4C99B0(v23, sub_21D4CC1F8, 0);
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CFA8, &qword_21DC18B08);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CFB0, &qword_21DC18B10);
  v103 = sub_21D0D0F1C(&qword_280D0C4A8, &qword_27CE5CFA8, &qword_21DC18B08, MEMORY[0x277CBCD90]);
  sub_21DBF927C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CFB8, &qword_21DC18B18);
  v33 = (*(*(v32 - 8) + 80) + 32) & ~*(*(v32 - 8) + 80);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_21DC08D00;
  v66 = type metadata accessor for TTRReminderTitleAttributesHarvester.VersionedResults(0);
  (*(*(v66 - 8) + 56))(v34 + v33, 1, 1, v66);
  v116 = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CFC0, &qword_21DC18B20);
  sub_21D0D0F1C(&qword_280D0C3D8, &qword_27CE5CFC0, &qword_21DC18B20, MEMORY[0x277D83970]);
  v35 = v71;
  sub_21DBFA4DC();

  v36 = *(a1 + OBJC_IVAR____TtC15RemindersUICore35TTRReminderTitleAttributesHarvester_backgroundQueue);
  v65 = a1;
  v115 = v36;
  v105(v18, 1, 1, v106);
  sub_21D0D0F1C(&qword_280D0C530, &qword_27CE5CF78, &qword_21DC18AD0, MEMORY[0x277CBCD18]);
  v37 = v36;
  v38 = v72;
  v39 = v74;
  sub_21DBF936C();
  sub_21D0CF7E0(v18, &unk_27CE5F250, &unk_21DC13240);

  (*(v77 + 8))(v35, v39);
  v40 = MEMORY[0x277CBCC08];
  sub_21D0D0F1C(&qword_280D0C5D0, &qword_27CE5CF88, &qword_21DC18AE0, MEMORY[0x277CBCC08]);
  v41 = MEMORY[0x277CBCD60];
  sub_21D0D0F1C(&qword_280D0C4C8, &qword_27CE5CF80, &qword_21DC18AD8, MEMORY[0x277CBCD60]);
  v42 = v73;
  v43 = v78;
  v44 = v109;
  sub_21DBF935C();
  (*(v79 + 8))(v38, v43);
  (*(v76 + 8))(v44, v42);
  v115 = v110;
  v116 = v112;
  v114 = v111;
  swift_allocObject();
  swift_weakInit();
  sub_21D0D0F1C(&qword_280D0C628, &qword_27CE5CF90, &unk_21DC18AE8, MEMORY[0x277CBCB40]);
  v45 = v81;
  sub_21DBF924C();

  sub_21D0D0F1C(&qword_280D0C5C8, &qword_27CE5CF60, &qword_21DC18AB8, v40);
  v46 = v82;
  v47 = v84;
  sub_21DBF921C();
  (*(v85 + 8))(v45, v47);
  v48 = MEMORY[0x277CBCB10];
  sub_21D0D0F1C(&qword_280D0C638, &qword_27CE5CF68, &qword_21DC18AC0, MEMORY[0x277CBCB10]);
  sub_21D0F1CB0(&qword_280D107C0, type metadata accessor for TTRReminderTitleAttributesHarvester.VersionedResults, aY_6);
  v49 = v83;
  v50 = v86;
  sub_21DBF93AC();
  (*(v87 + 8))(v46, v50);
  v51 = v68;
  v116 = v68;
  v105(v18, 1, 1, v106);
  sub_21D0D0F1C(&qword_280D0C600, &qword_27CE5CF70, &qword_21DC18AC8, MEMORY[0x277CBCBE0]);
  v52 = v92;
  v53 = v88;
  sub_21DBF936C();
  sub_21D0CF7E0(v18, &unk_27CE5F250, &unk_21DC13240);

  v54 = v65;
  v116 = *(v65 + v75);
  sub_21D0D0F1C(&qword_280D0C4E0, &qword_27CE5CF48, &qword_21DC18AA0, v41);
  v55 = v93;
  v56 = v95;
  sub_21DBF923C();
  (*(v97 + 8))(v52, v56);
  sub_21D0D0F1C(&qword_280D0C660, &qword_27CE5CF50, &qword_21DC18AA8, MEMORY[0x277CBCAF0]);
  v57 = v94;
  v58 = v100;
  sub_21DBF921C();
  (*(v101 + 8))(v55, v58);
  sub_21D0D0F1C(&qword_280D0C640, &qword_27CE5CF58, &qword_21DC18AB0, v48);
  v59 = v98;
  v60 = sub_21DBF92EC();
  (*(v99 + 8))(v57, v59);
  v116 = v60;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CFC8, &qword_21DC18B28);
  sub_21D0D0F1C(&qword_280D0C588, &qword_27CE5CFC8, &qword_21DC18B28, MEMORY[0x277CBCC78]);
  v61 = sub_21DBF920C();

  v116 = v61;
  v62 = sub_21DBF93CC();

  (*(v96 + 8))(v49, v53);
  (*(v91 + 8))(v108, v113);
  (*(v89 + 8))(v80, v90);
  *(v54 + OBJC_IVAR____TtC15RemindersUICore35TTRReminderTitleAttributesHarvester_resultsPublisherSelfSubscriptionCancellable) = v62;

  return v61;
}

uint64_t sub_21D4D97E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21D4D984C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21D4D98F0(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68, &unk_21DC0C060);
  MEMORY[0x28223BE20](v2 - 8);
  v79 = v73 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58370, &unk_21DC091F0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v73 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D60, &unk_21DC0A690);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = v73 - v11;
  v13 = sub_21DBF509C();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v77 = v73 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[5];
  if (v16)
  {
    *(&v81 + 1) = sub_21D0D8CF0(0, &qword_280D17690, 0x277D44660);
    v82 = &protocol witness table for REMList;
    *&v80 = v16;
    sub_21D0D0FD0(&v80, v83);
  }

  else
  {
    v82 = 0;
    v80 = 0u;
    v81 = 0u;
    v17 = a1[3];
    v18 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v17);
    (*(v18 + 184))(v83, v17, v18);
    if (*(&v81 + 1))
    {
      sub_21D0CF7E0(&v80, &qword_27CE59DC0, &qword_21DC0FBF0);
    }
  }

  v19 = v84;
  if (v84)
  {
    v75 = v6;
    v78 = v14;
    v20 = v13;
    v21 = v85;
    __swift_project_boxed_opaque_existential_1(v83, v84);
    v22 = *(v21 + 8);
    v23 = v16;
    v24 = v21;
    v25 = v20;
    v26 = v78;
    v27 = v22(v19, v24);
    __swift_destroy_boxed_opaque_existential_0(v83);
    sub_21D0D32E4(a1, v83);
    v28 = v84;
    v29 = v85;
    __swift_project_boxed_opaque_existential_1(v83, v84);
    (*(v29 + 96))(v28, v29);
    v30 = *(v26 + 48);
    if (v30(v12, 1, v25) == 1)
    {
      sub_21D0CF7E0(v12, &qword_27CE58D60, &unk_21DC0A690);
      v76 = 0;
    }

    else
    {
      v33 = v77;
      (*(v26 + 32))(v77, v12, v25);
      sub_21DBF4EBC();
      if (v34)
      {
        (*(v26 + 8))(v33, v25);
        v76 = 0;
      }

      else
      {
        sub_21DBF63BC();
        swift_allocObject();
        v76 = sub_21DBF63CC();
        (*(v26 + 8))(v33, v25);
      }
    }

    v35 = v84;
    v36 = v85;
    __swift_project_boxed_opaque_existential_1(v83, v84);
    if ((*(v36 + 152))(v35, v36))
    {
      sub_21DBF637C();
      swift_allocObject();
      v77 = sub_21DBF638C();
    }

    else
    {
      v77 = 0;
    }

    v37 = v84;
    v38 = v85;
    __swift_project_boxed_opaque_existential_1(v83, v84);
    v39 = (*(v38 + 136))(v37, v38);
    if (v39)
    {
      *&v80 = v39;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D108, &qword_21DC34C00);
      sub_21D0D0F1C(&qword_27CE5D110, &qword_27CE5D108, &qword_21DC34C00, MEMORY[0x277D83970]);
      v74 = sub_21DBFA49C();
    }

    else
    {
      v74 = 0;
    }

    v40 = v84;
    v41 = v85;
    __swift_project_boxed_opaque_existential_1(v83, v84);
    v42 = (*(v41 + 48))(v40, v41);
    if (v43)
    {
      v44 = v42;
    }

    else
    {
      v44 = 0;
    }

    v45 = 0xE000000000000000;
    if (v43)
    {
      v45 = v43;
    }

    v73[1] = v45;
    v73[2] = v44;
    v46 = v84;
    v47 = v85;
    __swift_project_boxed_opaque_existential_1(v83, v84);
    v73[0] = (*(v47 + 8))(v46, v47);
    sub_21DBF612C();
    v48 = [v27 uuid];
    v49 = v75;
    sub_21DBF568C();

    v50 = sub_21DBF56BC();
    (*(*(v50 - 8) + 56))(v49, 0, 1, v50);
    v75 = MEMORY[0x223D3E8D0](v49);
    v51 = sub_21DBF563C();
    (*(*(v51 - 8) + 56))(v79, 1, 1, v51);
    v52 = v84;
    v53 = v85;
    __swift_project_boxed_opaque_existential_1(v83, v84);
    (*(v53 + 96))(v52, v53);
    if (v30(v9, 1, v25) == 1)
    {
      sub_21D0CF7E0(v9, &qword_27CE58D60, &unk_21DC0A690);
    }

    else
    {
      MEMORY[0x223D3D5E0]();
      (*(v78 + 8))(v9, v25);
    }

    v54 = v84;
    v55 = v85;
    __swift_project_boxed_opaque_existential_1(v83, v84);
    v56 = (*(v55 + 80))(v54, v55);
    if (v56)
    {
      v57 = v56;
    }

    else
    {
      v57 = MEMORY[0x277D84F90];
    }

    sub_21DBF646C();
    MEMORY[0x223D3EBD0](v57);

    v58 = v84;
    v59 = v85;
    __swift_project_boxed_opaque_existential_1(v83, v84);
    (*(v59 + 200))(&v80, v58, v59);
    v60 = *(&v81 + 1);
    v61 = v27;
    if (*(&v81 + 1))
    {
      v62 = v82;
      __swift_project_boxed_opaque_existential_1(&v80, *(&v81 + 1));
      (v62[2])(v60, v62);
      __swift_destroy_boxed_opaque_existential_0(&v80);
    }

    else
    {
      sub_21D0CF7E0(&v80, &qword_27CE5D100, &unk_21DC25DD0);
    }

    v63 = v84;
    v64 = v85;
    __swift_project_boxed_opaque_existential_1(v83, v84);
    (*(v64 + 88))(v63, v64);
    v66 = v84;
    v65 = v85;
    __swift_project_boxed_opaque_existential_1(v83, v84);
    (*(v65 + 216))(&v80, v66, v65);
    v67 = *(&v81 + 1);
    if (*(&v81 + 1))
    {
      v68 = v82;
      __swift_project_boxed_opaque_existential_1(&v80, *(&v81 + 1));
      v69 = (v68[1])(v67, v68);
      sub_21D4C3D34(v69);
      v71 = v70;

      __swift_destroy_boxed_opaque_existential_0(&v80);
    }

    else
    {
      sub_21D0CF7E0(&v80, &qword_27CE5A140, &unk_21DC0E560);
      v71 = MEMORY[0x277D84F90];
    }

    sub_21D0FC0A8(v71);

    sub_21DBF797C();
    swift_allocObject();
    v32 = sub_21DBF796C();

    __swift_destroy_boxed_opaque_existential_0(v83);
  }

  else
  {
    v31 = v16;
    sub_21D0CF7E0(v83, &qword_27CE59DC0, &qword_21DC0FBF0);
    return 0;
  }

  return v32;
}

unint64_t sub_21D4DA2A0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE599E0, &unk_21DC38B80);
    v3 = sub_21DBFC40C();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;
      sub_21DBF8E0C();
      result = sub_21D0CEF70(v5, v6);
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

uint64_t objectdestroy_22Tm()
{

  return swift_deallocObject();
}

uint64_t sub_21D4DA454@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_21D4CFD58(a1, *(v3 + 16), *(v3 + 24), *(v3 + 32), *(v3 + 40), a2);
  *a3 = result;
  return result;
}

uint64_t sub_21D4DA4A4@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  v6 = *(v2 + 16);
  v7 = *a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D030, &qword_21DC18B90);
  result = v6(v7, &a1[*(v8 + 48)]);
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_21D4DA518()
{
  result = qword_27CE5D0F8;
  if (!qword_27CE5D0F8)
  {
    result = swift_getWitnessTable(byte_21DC18D08, &type metadata for TTRReminderTitleAttributesHarvester.HarvestError, v0, v1);
    atomic_store(result, &qword_27CE5D0F8);
  }

  return result;
}

unint64_t sub_21D4DA59C()
{
  result = qword_27CE5D128;
  if (!qword_27CE5D128)
  {
    result = swift_getWitnessTable(byte_21DC18CE0, &type metadata for TTRReminderTitleAttributesHarvester.HarvestError, v0, v1);
    atomic_store(result, &qword_27CE5D128);
  }

  return result;
}

void sub_21D4DA630(uint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t (*a7)(id, uint64_t), uint64_t a8, void (*a9)(uint64_t *__return_ptr), uint64_t a10)
{
  v719 = a8;
  v718 = a7;
  v717 = a6;
  v758 = a5;
  v769 = a3;
  v770 = a2;
  v693 = a1;
  v716 = a10;
  v715 = a9;
  v753 = type metadata accessor for TTRReminderSuggestedAttribute(0);
  v752 = *(v753 - 8);
  MEMORY[0x28223BE20](v753);
  v684 = &v677 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v680 = &v677 - v13;
  MEMORY[0x28223BE20](v14);
  v678 = &v677 - v15;
  MEMORY[0x28223BE20](v16);
  v723 = &v677 - v17;
  MEMORY[0x28223BE20](v18);
  v711 = &v677 - v19;
  MEMORY[0x28223BE20](v20);
  v722 = &v677 - v21;
  MEMORY[0x28223BE20](v22);
  v740 = &v677 - v23;
  MEMORY[0x28223BE20](v24);
  v697 = &v677 - v25;
  MEMORY[0x28223BE20](v26);
  v739 = &v677 - v27;
  MEMORY[0x28223BE20](v28);
  v738 = &v677 - v29;
  MEMORY[0x28223BE20](v30);
  v710 = &v677 - v31;
  MEMORY[0x28223BE20](v32);
  v709 = &v677 - v33;
  MEMORY[0x28223BE20](v34);
  v737 = &v677 - v35;
  MEMORY[0x28223BE20](v36);
  v736 = &v677 - v37;
  MEMORY[0x28223BE20](v38);
  v735 = &v677 - v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE65010, &qword_21DC08D60);
  MEMORY[0x28223BE20](v40 - 8);
  v748 = &v677 - v41;
  v42 = type metadata accessor for TTRRecurrenceRuleModel(0);
  MEMORY[0x28223BE20](v42 - 8);
  v728 = &v677 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v755 = type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType(0);
  MEMORY[0x28223BE20](v755);
  v714 = (&v677 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v45);
  v681 = (&v677 - v46);
  MEMORY[0x28223BE20](v47);
  v679 = (&v677 - v48);
  MEMORY[0x28223BE20](v49);
  v694 = (&v677 - v50);
  MEMORY[0x28223BE20](v51);
  v732 = (&v677 - v52);
  MEMORY[0x28223BE20](v53);
  v725 = &v677 - v54;
  MEMORY[0x28223BE20](v55);
  v731 = (&v677 - v56);
  MEMORY[0x28223BE20](v57);
  v701 = &v677 - v58;
  MEMORY[0x28223BE20](v59);
  v724 = &v677 - v60;
  MEMORY[0x28223BE20](v61);
  v746 = (&v677 - v62);
  MEMORY[0x28223BE20](v63);
  v745 = (&v677 - v64);
  MEMORY[0x28223BE20](v65);
  v744 = (&v677 - v66);
  MEMORY[0x28223BE20](v67);
  v743 = (&v677 - v68);
  MEMORY[0x28223BE20](v69);
  v742 = (&v677 - v70);
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D130, &unk_21DC18D50);
  MEMORY[0x28223BE20](v71 - 8);
  v713 = &v677 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v73);
  v712 = &v677 - v74;
  v730 = sub_21DBF5C4C();
  v774 = *(v730 - 8);
  MEMORY[0x28223BE20](v730);
  v700 = &v677 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v76);
  v696 = &v677 - v77;
  v729 = sub_21DBF563C();
  v773 = *(v729 - 8);
  MEMORY[0x28223BE20](v729);
  v699 = &v677 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v79);
  v695 = &v677 - v80;
  v749 = sub_21DBF509C();
  v81 = *(v749 - 8);
  MEMORY[0x28223BE20](v749);
  v726 = &v677 - ((v82 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v83);
  v741 = &v677 - v84;
  v754 = sub_21DBF7A0C();
  v784 = *(v754 - 8);
  MEMORY[0x28223BE20](v754);
  v786 = &v677 - ((v85 + 15) & 0xFFFFFFFFFFFFFFF0);
  v789 = type metadata accessor for TTRReminderTitleAttributesHarvester.Attribute(0);
  MEMORY[0x28223BE20](v789);
  v768 = (&v677 - ((v86 + 15) & 0xFFFFFFFFFFFFFFF0));
  v777 = type metadata accessor for TTRReminderSuggestedAttribute.AttributeType(0);
  MEMORY[0x28223BE20](v777);
  v775 = (&v677 - ((v87 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v88);
  v788 = (&v677 - v89);
  v782 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61E70, &unk_21DC2A2D0);
  v766 = *(v782 - 8);
  MEMORY[0x28223BE20](v782);
  v734 = &v677 - ((v90 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v91);
  v760 = &v677 - v92;
  MEMORY[0x28223BE20](v93);
  v759 = &v677 - v94;
  MEMORY[0x28223BE20](v95);
  v779 = &v677 - v96;
  MEMORY[0x28223BE20](v97);
  v785 = (&v677 - v98);
  MEMORY[0x28223BE20](v99);
  v787 = &v677 - v100;
  MEMORY[0x28223BE20](v101);
  v103 = &v677 - v102;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D138, &qword_21DC18D60);
  v105 = *(v104 - 8);
  MEMORY[0x28223BE20](v104);
  v765 = (&v677 - v106);
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D140, &unk_21DC18D68);
  MEMORY[0x28223BE20](v107 - 8);
  v764 = &v677 - ((v108 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v109);
  v763 = &v677 - v110;
  MEMORY[0x28223BE20](v111);
  v113 = &v677 - v112;
  v115 = MEMORY[0x28223BE20](v114);
  v117 = (&v677 - v116);
  v783 = 0;
  v721 = 0;
  v118 = 0;
  v767 = a4;
  v119 = *(a4 + 16);
  v780 = (v105 + 48);
  v781 = (v105 + 56);
  v772 = v81;
  v747 = (v81 + 8);
  v720 = -1;
  v776 = v104;
  v778 = v119;
  while (1)
  {
    if (v118 == v119)
    {
      v120 = 1;
      v118 = v119;
    }

    else
    {
      if (v118 >= v119)
      {
LABEL_312:
        __break(1u);
LABEL_313:
        __break(1u);
LABEL_314:
        __break(1u);
LABEL_315:
        __break(1u);
LABEL_316:
        __break(1u);
LABEL_317:
        __break(1u);
LABEL_318:
        if (qword_27CE56C60 != -1)
        {
          swift_once();
        }

        v669 = sub_21DBF84BC();
        __swift_project_value_buffer(v669, qword_27CE60CF0);
        v670 = MEMORY[0x277D84F90];
        v671 = sub_21D17716C(MEMORY[0x277D84F90]);
        v672 = sub_21D17716C(v670);
        sub_21DAEAB00("unknown proximity", 17, 2, v671, v672);
        goto LABEL_324;
      }

      if (__OFADD__(v118, 1))
      {
        goto LABEL_313;
      }

      v121 = v767 + ((*(v766 + 80) + 32) & ~*(v766 + 80)) + *(v766 + 72) * v118;
      v122 = *(v104 + 48);
      v123 = v765;
      *v765 = v118;
      sub_21D4E51D0(v121, v123 + v122);
      sub_21D0D523C(v123, v113, &qword_27CE5D138, &qword_21DC18D60);
      v120 = 0;
      ++v118;
    }

    v124 = *v781;
    (*v781)(v113, v120, 1, v104, v115);
    sub_21D0D523C(v113, v117, &qword_27CE5D140, &unk_21DC18D68);
    v125 = *v780;
    if ((*v780)(v117, 1, v104) == 1)
    {
      break;
    }

    v126 = v113;
    v127 = *v117;
    v128 = v117 + *(v104 + 48);
    v129 = v782;
    v130 = *(v128 + *(v782 + 48));
    v131 = v787;
    sub_21D4E59D0(v128, v787, type metadata accessor for TTRReminderTitleAttributesHarvester.Attribute);
    v132 = *(v129 + 48);
    sub_21D4E59D0(v131, v103, type metadata accessor for TTRReminderTitleAttributesHarvester.Attribute);
    *&v103[v132] = v130;
    v133 = v785;
    sub_21D4E51D0(v103, v785);

    sub_21D4E58A4(v133 + *(v789 + 20), v788, type metadata accessor for TTRReminderSuggestedAttribute.AttributeType);
    sub_21D4E590C(v133, type metadata accessor for TTRReminderTitleAttributesHarvester.Attribute);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 4)
    {
      if (EnumCaseMultiPayload > 1)
      {
        v104 = v776;
        v113 = v126;
        goto LABEL_2;
      }

      v104 = v776;
      v113 = v126;
      if (EnumCaseMultiPayload)
      {
        sub_21D0CF7E0(v103, &qword_27CE61E70, &unk_21DC2A2D0);
        v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CF38, &qword_21DC188E0);
        v138 = v788;
        sub_21D4E590C(v788 + *(v137 + 48), type metadata accessor for TTRRecurrenceRuleModel);
        (*v747)(v138, v749);
        v119 = v778;
      }

      else
      {
LABEL_2:
        sub_21D0CF7E0(v103, &qword_27CE61E70, &unk_21DC2A2D0);
        sub_21D4E590C(v788, type metadata accessor for TTRReminderSuggestedAttribute.AttributeType);
        v119 = v778;
      }
    }

    else if (EnumCaseMultiPayload > 7)
    {
      v104 = v776;
      v113 = v126;
      if (EnumCaseMultiPayload == 8 || EnumCaseMultiPayload == 9)
      {
        goto LABEL_2;
      }

      if (__OFADD__(v783, 1))
      {
        goto LABEL_317;
      }

      ++v783;
      v720 = v127;
      v135 = *v788;
      if (v721)
      {
        sub_21D0CF7E0(v103, &qword_27CE61E70, &unk_21DC2A2D0);

        v136 = 1;
        goto LABEL_33;
      }

      v139 = [*v788 notesAsString];
      if (v139)
      {
        v140 = v139;
        v141 = sub_21DBFA16C();
        v143 = v142;

        v144 = HIBYTE(v143) & 0xF;
        if ((v143 & 0x2000000000000000) == 0)
        {
          v144 = v141 & 0xFFFFFFFFFFFFLL;
        }

        v145 = v144 == 0;
      }

      else
      {
        v145 = 1;
      }

      v146 = [v135 attachmentContext];
      if (v146)
      {
        v147 = v146;
        v148 = [v146 imageAttachments];

        sub_21D0D8CF0(0, &qword_280D0C290, 0x277D44658);
        v149 = sub_21DBFA5EC();

        if (v149 >> 62)
        {
          v150 = sub_21DBFBD7C();
        }

        else
        {
          v150 = *((v149 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        sub_21D0CF7E0(v103, &qword_27CE61E70, &unk_21DC2A2D0);
        v721 = 1;
        v119 = v778;
        if (v145)
        {
          v721 = v150 > 0;
        }
      }

      else
      {
        sub_21D0CF7E0(v103, &qword_27CE61E70, &unk_21DC2A2D0);

        v136 = !v145;
LABEL_33:
        v721 = v136;
        v119 = v778;
      }
    }

    else
    {
      v104 = v776;
      v113 = v126;
      if (EnumCaseMultiPayload == 5)
      {
        goto LABEL_2;
      }

      sub_21D0CF7E0(v103, &qword_27CE61E70, &unk_21DC2A2D0);
      v119 = v778;
    }
  }

  v761 = v125;
  v762 = v124;
  v151 = 0;
  v795 = MEMORY[0x277D84FA0];
  v152 = HIBYTE(v769) & 0xF;
  v794 = MEMORY[0x277D84F90];
  if ((v769 & 0x2000000000000000) == 0)
  {
    v152 = v770;
  }

  v757 = (v152 << 16) | 7;
  v756 = *MEMORY[0x277D456F0];
  v153 = v784++;
  v785 = v153 + 13;
  v750 = *MEMORY[0x277D45700];
  v708 = v783 == 1;
  v751 = *MEMORY[0x277D45708];
  v692 = "n trigger menu item";
  v691 = 0x800000021DC4AB80;
  v690 = 0x800000021DC4ABC0;
  v689 = 0x800000021DC5EA30;
  v688 = 0x800000021DC5EA80;
  v733 = (v772 + 32);
  v703 = (v773 + 32);
  v702 = (v774 + 32);
  v687 = "reminder-due-date";
  v686 = 0x800000021DC44220;
  v698 = (v772 + 16);
  v707 = (v774 + 8);
  v706 = (v773 + 8);
  v685 = xmmword_21DC08D20;
  v705 = xmmword_21DC08D00;
  v704 = xmmword_21DC09CF0;
  v154 = v754;
  v155 = v768;
  v156 = v764;
  v157 = v763;
  while (1)
  {
LABEL_42:
    if (v151 == v778)
    {
      v158 = 1;
      v159 = v778;
      v160 = v769;
    }

    else
    {
      if (v151 >= v778)
      {
        goto LABEL_314;
      }

      v159 = v151 + 1;
      v160 = v769;
      if (__OFADD__(v151, 1))
      {
        goto LABEL_315;
      }

      v161 = v767 + ((*(v766 + 80) + 32) & ~*(v766 + 80)) + *(v766 + 72) * v151;
      v162 = *(v104 + 48);
      v163 = v765;
      *v765 = v151;
      sub_21D4E51D0(v161, v163 + v162);
      sub_21D0D523C(v163, v156, &qword_27CE5D138, &qword_21DC18D60);
      v158 = 0;
    }

    (v762)(v156, v158, 1, v104);
    sub_21D0D523C(v156, v157, &qword_27CE5D140, &unk_21DC18D68);
    if (v761(v157, 1, v104) == 1)
    {
      swift_beginAccess();
      v667 = v795;
      v668 = v693;
      *v693 = v770;
      v668[1] = v160;
      v668[2] = v667;
      swift_beginAccess();
      sub_21DBF8E0C();
      return;
    }

    v774 = v159;
    v164 = *v157;
    v165 = v157 + *(v104 + 48);
    v166 = v782;
    v167 = *(v165 + *(v782 + 48));
    v168 = v759;
    sub_21D4E59D0(v165, v759, type metadata accessor for TTRReminderTitleAttributesHarvester.Attribute);
    v169 = *(v166 + 48);
    v170 = v168;
    v171 = v779;
    sub_21D4E59D0(v170, v779, type metadata accessor for TTRReminderTitleAttributesHarvester.Attribute);
    *(v171 + v169) = v167;
    v172 = v760;
    sub_21D4E51D0(v171, v760);

    sub_21D4E59D0(v172, v155, type metadata accessor for TTRReminderTitleAttributesHarvester.Attribute);
    v173 = *v155;
    v174 = v155[1];
    if ((v160 & 0x1000000000000000) != 0)
    {
      v175 = sub_21DBFA35C();
      v176 = v173 + v174;
      if (__OFADD__(v173, v174))
      {
LABEL_311:
        __break(1u);
        goto LABEL_312;
      }
    }

    else
    {
      v175 = sub_21DBFA36C();
      v176 = v173 + v174;
      if (__OFADD__(v173, v174))
      {
        goto LABEL_311;
      }
    }

    v177 = v176 >= v175 ? v175 : v176;
    if (v173 < 0 || v173 >= v175)
    {
      v179 = 0;
      v180 = 1;
      if (v173 > 0)
      {
        v787 = 0;
        goto LABEL_62;
      }

      v787 = 0;
      if (v176 <= 0)
      {
        goto LABEL_62;
      }
    }

    else
    {
      v178 = __OFSUB__(v177, v173);
      v177 -= v173;
      if (v178)
      {
        goto LABEL_316;
      }

      v179 = v173;
    }

    v180 = v177 < 1;
    if (v177 < 1)
    {
      v179 = 0;
    }

    v787 = (v177 & ~(v177 >> 63));
LABEL_62:
    v181 = *(v789 + 24);
    v182 = v786;
    v183 = *v785;
    (*v785)(v786, v756, v154);
    v788 = v181;
    LOBYTE(v181) = sub_21DBF79DC();
    v783 = *v784;
    (v783)(v182, v154);
    v184 = v758;
    if ((v181 & 1) == 0)
    {
      v185 = v786;
      v183(v786, v750, v154);
      v184 = sub_21DBF79DC();
      (v783)(v185, v154);
    }

    v186 = (v184 & 1) != 0 ? v179 : 0;
    v771 = v186;
    v187 = (v184 & 1) != 0 ? v787 : 0;
    sub_21D4E58A4(v155 + *(v789 + 20), v775, type metadata accessor for TTRReminderSuggestedAttribute.AttributeType);
    v188 = swift_getEnumCaseMultiPayload();
    v773 = v187;
    LODWORD(v772) = v184 ^ 1 | v180;
    if (v188 <= 4)
    {
      break;
    }

    if (v188 > 7)
    {
      if (v188 == 8)
      {
        v246 = *v775;
        *v746 = *v775;
        swift_storeEnumTagMultiPayload();
        v247 = v246;
        v248 = [v247 name];
        if (!v248)
        {
          sub_21DBFA16C();
          v248 = sub_21DBFA12C();
        }

        v727 = v247;
        v249 = sub_21DBFA16C();
        v251 = v250;
        if (!v180)
        {
          swift_beginAccess();
          sub_21D29C590(&v790, v179, v787);
          swift_endAccess();
        }

        v252 = [objc_allocWithZone(MEMORY[0x277CCAB48]) initWithString_];

        v253 = v786;
        v183(v786, v751, v154);
        v254 = sub_21DBF79DC();
        (v783)(v253, v154);
        if (v254)
        {
          [v252 beginEditing];
          sub_21D4E3E9C(v252);
          v792 = v249;
          v793 = v251;
          v790 = v770;
          v791 = v769;
          v255 = sub_21DBF582C();
          v256 = v748;
          (*(*(v255 - 8) + 56))(v748, 1, 1, v255);
          sub_21D176F0C();
          v257 = sub_21DBFBBAC();
          v259 = v258;
          v261 = v260;
          sub_21D0CF7E0(v256, &unk_27CE65010, &qword_21DC08D60);
          v104 = v776;
          if (v261)
          {
          }

          else
          {
            v792 = v257;
            v793 = v259;
            v790 = v249;
            v791 = v251;
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5FB00, &unk_21DC18DC0);
            sub_21D4E596C();
            v484 = sub_21DBFB9DC();
            sub_21D4E4130(v252, v484, v485);
          }

          v155 = v768;
          v156 = v764;
          v157 = v763;
          v151 = v774;
          [v252 endEditing];
          v154 = v754;
        }

        else
        {

          v155 = v768;
          v104 = v776;
          v156 = v764;
          v157 = v763;
          v151 = v774;
        }

        v486 = v737;
        sub_21D4E58A4(v746, v737, type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType);
        v487 = v753;
        v488 = *(v753 + 20);
        v489 = sub_21DBF79FC();
        (*(*(v489 - 8) + 16))(v486 + v488, v788 + v155, v489);
        *(v486 + *(v487 + 24)) = v252;
        v490 = v486 + *(v487 + 28);
        v491 = v773;
        *v490 = v771;
        *(v490 + 8) = v491;
        *(v490 + 16) = v772 & 1;
        swift_beginAccess();
        v492 = v794;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v492 = sub_21D2137F0(0, v492[2] + 1, 1, v492);
        }

        v493 = v727;
        v495 = v492[2];
        v494 = v492[3];
        if (v495 >= v494 >> 1)
        {
          v492 = sub_21D2137F0((v494 > 1), v495 + 1, 1, v492);
        }

        v492[2] = v495 + 1;
        v496 = v492 + ((*(v752 + 80) + 32) & ~*(v752 + 80)) + *(v752 + 72) * v495;
        v497 = v737;
        sub_21D4E58A4(v737, v496, type metadata accessor for TTRReminderSuggestedAttribute);
        v794 = v492;
        swift_endAccess();

        sub_21D4E590C(v497, type metadata accessor for TTRReminderSuggestedAttribute);
        v213 = &v778;
        goto LABEL_251;
      }

      if (v188 != 9)
      {
        v309 = *v775;
        v310 = [*v775 title];
        if (v310)
        {
          v311 = v310;
          v312 = [v310 string];

          v313 = sub_21DBFA16C();
          v315 = v314;
        }

        else
        {
          v313 = 0;
          v315 = 0xE000000000000000;
        }

        v405 = [v309 objectID];
        v406 = v405;
        v407 = v717;
        if (*(v717 + 16) && (v408 = sub_21D17E07C(v405), (v409 & 1) != 0))
        {
          v410 = *(*(v407 + 56) + 8 * v408);
          sub_21DBF8E0C();
        }

        else
        {
          v410 = MEMORY[0x277D84F90];
        }

        v411 = v721 && v164 != v720;
        v412 = v714;
        *v714 = v309;
        *(v412 + 8) = v410;
        *(v412 + 16) = v708;
        *(v412 + 17) = v411;
        swift_storeEnumTagMultiPayload();
        v413 = v772 & 1;
        v414 = v309;
        v155 = v768;
        sub_21D4E3914(v412, v313, v315, v179, v787, v180, &v795, v768, v770, v769, v771, v773, v413, &v794);

        sub_21D4E590C(v412, type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType);
        goto LABEL_40;
      }

      v218 = *v775;
      v219 = [objc_opt_self() stringFromContact:*v775 style:0];
      if (v219)
      {
        v220 = v219;
        v221 = sub_21DBFA16C();
        v223 = v222;
        *v732 = v218;
        swift_storeEnumTagMultiPayload();
        if (v180)
        {
          v224 = v221;
          v225 = v218;
        }

        else
        {
          v224 = v221;
          swift_beginAccess();
          v462 = v218;
          sub_21D29C590(&v790, v179, v787);
          swift_endAccess();
        }

        v463 = [objc_allocWithZone(MEMORY[0x277CCAB48]) initWithString_];

        v464 = v786;
        v183(v786, v751, v154);
        v155 = v768;
        v465 = sub_21DBF79DC();
        (v783)(v464, v154);
        if (v465)
        {
          [v463 beginEditing];
          sub_21D4E3E9C(v463);
          v787 = v224;
          v792 = v224;
          v793 = v223;
          v790 = v770;
          v791 = v769;
          v466 = sub_21DBF582C();
          v467 = v748;
          (*(*(v466 - 8) + 56))(v748, 1, 1, v466);
          sub_21D176F0C();
          v468 = sub_21DBFBBAC();
          v470 = v469;
          v472 = v471;
          sub_21D0CF7E0(v467, &unk_27CE65010, &qword_21DC08D60);
          if (v472)
          {
          }

          else
          {
            v792 = v468;
            v793 = v470;
            v790 = v787;
            v791 = v223;
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5FB00, &unk_21DC18DC0);
            sub_21D4E596C();
            v557 = sub_21DBFB9DC();
            sub_21D4E4130(v463, v557, v558);
          }

          v104 = v776;
          v156 = v764;
          v157 = v763;
          v151 = v774;
          [v463 endEditing];
        }

        else
        {

          v104 = v776;
          v156 = v764;
          v157 = v763;
          v151 = v774;
        }

        v559 = v723;
        sub_21D4E58A4(v732, v723, type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType);
        v560 = v753;
        v561 = *(v753 + 20);
        v562 = sub_21DBF79FC();
        (*(*(v562 - 8) + 16))(v559 + v561, v788 + v155, v562);
        *(v559 + *(v560 + 24)) = v463;
        v563 = v559 + *(v560 + 28);
        v564 = v773;
        *v563 = v771;
        *(v563 + 8) = v564;
        *(v563 + 16) = v772 & 1;
        swift_beginAccess();
        v565 = v794;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v565 = sub_21D2137F0(0, v565[2] + 1, 1, v565);
        }

        v567 = v565[2];
        v566 = v565[3];
        v154 = v754;
        if (v567 >= v566 >> 1)
        {
          v565 = sub_21D2137F0((v566 > 1), v567 + 1, 1, v565);
        }

        v565[2] = v567 + 1;
        v568 = v565 + ((*(v752 + 80) + 32) & ~*(v752 + 80)) + *(v752 + 72) * v567;
        v569 = v723;
        sub_21D4E58A4(v723, v568, type metadata accessor for TTRReminderSuggestedAttribute);
        v794 = v565;
        swift_endAccess();

        sub_21D4E590C(v569, type metadata accessor for TTRReminderSuggestedAttribute);
        v213 = &v764;
        goto LABEL_251;
      }

      sub_21D0D8CF0(0, &unk_27CE626A0, 0x277D445D8);
      v236 = v218;
      v378 = sub_21DBFB4AC();
      if (v378)
      {
        v379 = v378;
        v380 = [v378 phones];
        v381 = sub_21DBFA5EC();

        v382 = v381[2];
        v727 = v379;
        if (!v382)
        {

          v582 = [v379 emails];
          v583 = sub_21DBFA5EC();

          if (v583[2])
          {
            v585 = v583[4];
            v584 = v583[5];
            sub_21DBF8E0C();

            *v681 = v236;
            swift_storeEnumTagMultiPayload();
            if (v180)
            {
              v586 = v236;
            }

            else
            {
              swift_beginAccess();
              v628 = v236;
              sub_21D29C590(&v790, v179, v787);
              swift_endAccess();
            }

            v629 = objc_allocWithZone(MEMORY[0x277CCAB48]);
            v630 = sub_21DBFA12C();
            v631 = [v629 initWithString_];

            v632 = v786;
            v183(v786, v751, v154);
            LOBYTE(v629) = sub_21DBF79DC();
            (v783)(v632, v154);
            if (v629)
            {
              [v631 beginEditing];
              sub_21D4E3E9C(v631);
              v792 = v585;
              v793 = v584;
              v790 = v770;
              v791 = v769;
              v633 = sub_21DBF582C();
              v634 = v748;
              (*(*(v633 - 8) + 56))(v748, 1, 1, v633);
              sub_21D176F0C();
              v635 = sub_21DBFBBAC();
              v637 = v636;
              v639 = v638;
              sub_21D0CF7E0(v634, &unk_27CE65010, &qword_21DC08D60);
              if (v639)
              {
              }

              else
              {
                v792 = v635;
                v793 = v637;
                v790 = v585;
                v791 = v584;
                __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5FB00, &unk_21DC18DC0);
                sub_21D4E596C();
                v640 = sub_21DBFB9DC();
                sub_21D4E4130(v631, v640, v641);
              }

              v155 = v768;
              v104 = v776;
              v156 = v764;
              v157 = v763;
              v151 = v774;
              [v631 endEditing];
            }

            else
            {

              v155 = v768;
              v104 = v776;
              v156 = v764;
              v157 = v763;
              v151 = v774;
            }

            v642 = v680;
            sub_21D4E58A4(v681, v680, type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType);
            v643 = v753;
            v644 = *(v753 + 20);
            v645 = sub_21DBF79FC();
            (*(*(v645 - 8) + 16))(v642 + v644, v788 + v155, v645);
            *(v642 + *(v643 + 24)) = v631;
            v646 = v642 + *(v643 + 28);
            v647 = v773;
            *v646 = v771;
            *(v646 + 8) = v647;
            *(v646 + 16) = v772 & 1;
            swift_beginAccess();
            v648 = v794;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v648 = sub_21D2137F0(0, v648[2] + 1, 1, v648);
            }

            v650 = v648[2];
            v649 = v648[3];
            v154 = v754;
            if (v650 >= v649 >> 1)
            {
              v648 = sub_21D2137F0((v649 > 1), v650 + 1, 1, v648);
            }

            v648[2] = v650 + 1;
            v651 = v648 + ((*(v752 + 80) + 32) & ~*(v752 + 80)) + *(v752 + 72) * v650;
            v652 = v680;
            sub_21D4E58A4(v680, v651, type metadata accessor for TTRReminderSuggestedAttribute);
            v794 = v648;
            swift_endAccess();

            sub_21D4E590C(v652, type metadata accessor for TTRReminderSuggestedAttribute);
            v213 = &v709;
          }

          else
          {

            *v679 = v236;
            swift_storeEnumTagMultiPayload();
            v613 = v236;
            v614 = _REMGetLocalizedString();
            if (!v614)
            {
              sub_21DBFA16C();
              v614 = sub_21DBFA12C();
            }

            v683 = v613;
            v615 = sub_21DBFA16C();
            v617 = v616;
            if (!v180)
            {
              swift_beginAccess();
              sub_21D29C590(&v790, v179, v787);
              swift_endAccess();
            }

            v618 = [objc_allocWithZone(MEMORY[0x277CCAB48]) initWithString_];

            v619 = v786;
            v183(v786, v751, v154);
            v620 = sub_21DBF79DC();
            (v783)(v619, v154);
            if (v620)
            {
              [v618 beginEditing];
              sub_21D4E3E9C(v618);
              v792 = v615;
              v793 = v617;
              v790 = v770;
              v791 = v769;
              v621 = sub_21DBF582C();
              v622 = v748;
              (*(*(v621 - 8) + 56))(v748, 1, 1, v621);
              sub_21D176F0C();
              v623 = sub_21DBFBBAC();
              v625 = v624;
              v627 = v626;
              sub_21D0CF7E0(v622, &unk_27CE65010, &qword_21DC08D60);
              v104 = v776;
              if (v627)
              {
              }

              else
              {
                v792 = v623;
                v793 = v625;
                v790 = v615;
                v791 = v617;
                __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5FB00, &unk_21DC18DC0);
                sub_21D4E596C();
                v653 = sub_21DBFB9DC();
                sub_21D4E4130(v618, v653, v654);
              }

              v155 = v768;
              v156 = v764;
              v157 = v763;
              v151 = v774;
              [v618 endEditing];
              v154 = v754;
            }

            else
            {

              v155 = v768;
              v104 = v776;
              v156 = v764;
              v157 = v763;
              v151 = v774;
            }

            v655 = v678;
            sub_21D4E58A4(v679, v678, type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType);
            v656 = v753;
            v657 = *(v753 + 20);
            v658 = sub_21DBF79FC();
            (*(*(v658 - 8) + 16))(v655 + v657, v788 + v155, v658);
            *(v655 + *(v656 + 24)) = v618;
            v659 = v655 + *(v656 + 28);
            v660 = v773;
            *v659 = v771;
            *(v659 + 8) = v660;
            *(v659 + 16) = v772 & 1;
            swift_beginAccess();
            v661 = v794;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v661 = sub_21D2137F0(0, v661[2] + 1, 1, v661);
            }

            v662 = v683;
            v664 = v661[2];
            v663 = v661[3];
            if (v664 >= v663 >> 1)
            {
              v661 = sub_21D2137F0((v663 > 1), v664 + 1, 1, v661);
            }

            v661[2] = v664 + 1;
            v665 = v661 + ((*(v752 + 80) + 32) & ~*(v752 + 80)) + *(v752 + 72) * v664;
            v666 = v678;
            sub_21D4E58A4(v678, v665, type metadata accessor for TTRReminderSuggestedAttribute);
            v794 = v661;
            swift_endAccess();

            sub_21D4E590C(v666, type metadata accessor for TTRReminderSuggestedAttribute);
            v213 = &v707;
          }

          goto LABEL_251;
        }

        v384 = v381[4];
        v383 = v381[5];
        sub_21DBF8E0C();

        v385 = objc_allocWithZone(MEMORY[0x277CBDB70]);
        v386 = sub_21DBFA12C();
        v387 = [v385 initWithStringValue_];

        *v694 = v236;
        swift_storeEnumTagMultiPayload();
        v683 = v236;
        v388 = [v387 formattedStringValue];
        if (v388)
        {
          v389 = v388;
          v384 = sub_21DBFA16C();
          v391 = v390;

          v383 = v391;
        }

        v392 = v773;
        if (!v180)
        {
          swift_beginAccess();
          sub_21D29C590(&v790, v179, v787);
          swift_endAccess();
        }

        v393 = objc_allocWithZone(MEMORY[0x277CCAB48]);
        v394 = sub_21DBFA12C();
        v395 = [v393 initWithString_];

        v396 = v786;
        v397 = v754;
        v183(v786, v751, v754);
        LOBYTE(v393) = sub_21DBF79DC();
        (v783)(v396, v397);
        if (v393)
        {
          [v395 beginEditing];
          sub_21D4E3E9C(v395);
          v792 = v384;
          v793 = v383;
          v790 = v770;
          v791 = v769;
          v398 = sub_21DBF582C();
          v399 = v748;
          (*(*(v398 - 8) + 56))(v748, 1, 1, v398);
          sub_21D176F0C();
          v400 = sub_21DBFBBAC();
          v402 = v401;
          v404 = v403;
          sub_21D0CF7E0(v399, &unk_27CE65010, &qword_21DC08D60);
          if (v404)
          {
          }

          else
          {
            v792 = v400;
            v793 = v402;
            v790 = v384;
            v791 = v383;
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5FB00, &unk_21DC18DC0);
            sub_21D4E596C();
            v600 = sub_21DBFB9DC();
            sub_21D4E4130(v395, v600, v601);
          }

          v155 = v768;
          v104 = v776;
          v156 = v764;
          v157 = v763;
          v392 = v773;
          [v395 endEditing];
        }

        else
        {

          v155 = v768;
          v104 = v776;
          v156 = v764;
          v157 = v763;
        }

        v602 = v684;
        sub_21D4E58A4(v694, v684, type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType);
        v603 = v753;
        v604 = *(v753 + 20);
        v605 = sub_21DBF79FC();
        (*(*(v605 - 8) + 16))(v602 + v604, v788 + v155, v605);
        *(v602 + *(v603 + 24)) = v395;
        v606 = v602 + *(v603 + 28);
        *v606 = v771;
        *(v606 + 8) = v392;
        *(v606 + 16) = v772 & 1;
        swift_beginAccess();
        v607 = v794;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v607 = sub_21D2137F0(0, v607[2] + 1, 1, v607);
        }

        v151 = v774;
        v608 = v683;
        v610 = v607[2];
        v609 = v607[3];
        if (v610 >= v609 >> 1)
        {
          v607 = sub_21D2137F0((v609 > 1), v610 + 1, 1, v607);
        }

        v607[2] = v610 + 1;
        v611 = v607 + ((*(v752 + 80) + 32) & ~*(v752 + 80)) + *(v752 + 72) * v610;
        v612 = v684;
        sub_21D4E58A4(v684, v611, type metadata accessor for TTRReminderSuggestedAttribute);
        v794 = v607;
        swift_endAccess();

        sub_21D4E590C(v612, type metadata accessor for TTRReminderSuggestedAttribute);
        v551 = &v723;
LABEL_242:
        sub_21D4E590C(*(v551 - 32), type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType);
        sub_21D4E590C(v155, type metadata accessor for TTRReminderTitleAttributesHarvester.Attribute);
        sub_21D0CF7E0(v779, &qword_27CE61E70, &unk_21DC2A2D0);
        v154 = v754;
        continue;
      }

LABEL_38:

LABEL_39:
      v155 = v768;
LABEL_40:
      sub_21D4E590C(v155, type metadata accessor for TTRReminderTitleAttributesHarvester.Attribute);
      sub_21D0CF7E0(v779, &qword_27CE61E70, &unk_21DC2A2D0);
LABEL_41:
      v104 = v776;
      v156 = v764;
      v157 = v763;
      v151 = v774;
      continue;
    }

    if (v188 == 5)
    {
      v236 = *v775;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450, &unk_21DC09E70);
      v237 = swift_allocObject();
      *(v237 + 16) = v704;
      *(v237 + 32) = [objc_opt_self() descriptorForRequiredKeysForStyle_];
      v238 = v718(v236, v237);
      v240 = v239;
      v242 = v241;

      if (!v238)
      {
        goto LABEL_38;
      }

      v243 = v731;
      *v731 = v236;
      v243[1] = v238;
      swift_storeEnumTagMultiPayload();
      if (v180)
      {
        v244 = v236;
        v245 = v238;
      }

      else
      {
        swift_beginAccess();
        v448 = v236;
        v449 = v238;
        sub_21D29C590(&v790, v179, v787);
        swift_endAccess();
      }

      v450 = objc_allocWithZone(MEMORY[0x277CCAB48]);
      v451 = sub_21DBFA12C();
      v452 = [v450 initWithString_];

      v453 = v786;
      v454 = v754;
      v183(v786, v751, v754);
      LOBYTE(v450) = sub_21DBF79DC();
      (v783)(v453, v454);
      if (v450)
      {
        [v452 beginEditing];
        sub_21D4E3E9C(v452);
        v792 = v240;
        v793 = v242;
        v790 = v770;
        v791 = v769;
        v455 = sub_21DBF582C();
        v456 = v748;
        (*(*(v455 - 8) + 56))(v748, 1, 1, v455);
        sub_21D176F0C();
        v457 = sub_21DBFBBAC();
        v459 = v458;
        v461 = v460;
        sub_21D0CF7E0(v456, &unk_27CE65010, &qword_21DC08D60);
        if (v461)
        {
        }

        else
        {
          v792 = v457;
          v793 = v459;
          v790 = v240;
          v791 = v242;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5FB00, &unk_21DC18DC0);
          sub_21D4E596C();
          v538 = sub_21DBFB9DC();
          sub_21D4E4130(v452, v538, v539);
        }

        v155 = v768;
        v104 = v776;
        v156 = v764;
        v157 = v763;
        [v452 endEditing];
      }

      else
      {

        v155 = v768;
        v104 = v776;
        v156 = v764;
        v157 = v763;
      }

      v540 = v722;
      sub_21D4E58A4(v731, v722, type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType);
      v541 = v753;
      v542 = *(v753 + 20);
      v543 = sub_21DBF79FC();
      (*(*(v543 - 8) + 16))(v540 + v542, v788 + v155, v543);
      *(v540 + *(v541 + 24)) = v452;
      v544 = v540 + *(v541 + 28);
      v545 = v773;
      *v544 = v771;
      *(v544 + 8) = v545;
      *(v544 + 16) = v772 & 1;
      swift_beginAccess();
      v546 = v794;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v546 = sub_21D2137F0(0, v546[2] + 1, 1, v546);
      }

      v151 = v774;
      v548 = v546[2];
      v547 = v546[3];
      if (v548 >= v547 >> 1)
      {
        v546 = sub_21D2137F0((v547 > 1), v548 + 1, 1, v546);
      }

      v546[2] = v548 + 1;
      v549 = v546 + ((*(v752 + 80) + 32) & ~*(v752 + 80)) + *(v752 + 72) * v548;
      v550 = v722;
      sub_21D4E58A4(v722, v549, type metadata accessor for TTRReminderSuggestedAttribute);
      v794 = v546;
      swift_endAccess();

      sub_21D4E590C(v550, type metadata accessor for TTRReminderSuggestedAttribute);
      v551 = &v763;
      goto LABEL_242;
    }

    if (v188 == 6)
    {
      if ((*v775 & 1) == 0)
      {
        goto LABEL_40;
      }

      *v725 = 1;
      swift_storeEnumTagMultiPayload();
      if (!v180)
      {
        swift_beginAccess();
        sub_21D29C590(&v790, v179, v787);
        swift_endAccess();
      }

      v189 = objc_allocWithZone(MEMORY[0x277CCAB48]);
      v190 = sub_21DBFA12C();
      v191 = [v189 initWithString_];

      v192 = v786;
      v183(v786, v751, v154);
      LOBYTE(v189) = sub_21DBF79DC();
      (v783)(v192, v154);
      v104 = v776;
      v156 = v764;
      v157 = v763;
      if (v189)
      {
        [v191 beginEditing];
        sub_21D4E3E9C(v191);
        v792 = 1734437958;
        v793 = 0xE400000000000000;
        v790 = v770;
        v791 = v160;
        v193 = sub_21DBF582C();
        v194 = v748;
        (*(*(v193 - 8) + 56))(v748, 1, 1, v193);
        sub_21D176F0C();
        v195 = sub_21DBFBBAC();
        v197 = v196;
        v199 = v198;
        sub_21D0CF7E0(v194, &unk_27CE65010, &qword_21DC08D60);
        if ((v199 & 1) == 0)
        {
          v792 = v195;
          v793 = v197;
          v790 = 1734437958;
          v791 = 0xE400000000000000;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5FB00, &unk_21DC18DC0);
          sub_21D4E596C();
          v200 = sub_21DBFB9DC();
          sub_21D4E4130(v191, v200, v201);
        }

        [v191 endEditing];
        v154 = v754;
      }

      v202 = v711;
      sub_21D4E58A4(v725, v711, type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType);
      v203 = v753;
      v204 = *(v753 + 20);
      v205 = sub_21DBF79FC();
      (*(*(v205 - 8) + 16))(v202 + v204, v788 + v155, v205);
      *(v202 + *(v203 + 24)) = v191;
      v206 = v202 + *(v203 + 28);
      v207 = v773;
      *v206 = v771;
      *(v206 + 8) = v207;
      *(v206 + 16) = v772 & 1;
      swift_beginAccess();
      v208 = v794;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v208 = sub_21D2137F0(0, v208[2] + 1, 1, v208);
      }

      v151 = v774;
      v210 = v208[2];
      v209 = v208[3];
      if (v210 >= v209 >> 1)
      {
        v208 = sub_21D2137F0((v209 > 1), v210 + 1, 1, v208);
      }

      v208[2] = v210 + 1;
      v211 = v208 + ((*(v752 + 80) + 32) & ~*(v752 + 80)) + *(v752 + 72) * v210;
      v212 = v711;
      sub_21D4E58A4(v711, v211, type metadata accessor for TTRReminderSuggestedAttribute);
      v794 = v208;
      swift_endAccess();
      sub_21D4E590C(v212, type metadata accessor for TTRReminderSuggestedAttribute);
      v213 = &v757;
      goto LABEL_251;
    }

    v289 = *v775;
    v290 = REMReminderPriorityLevelForPriority();
    v291 = v734;
    sub_21D4E51D0(v779, v734);
    v292 = *(v291 + *(v782 + 48));
    v293 = v745;
    *v745 = v289;
    v293[1] = v292;
    swift_storeEnumTagMultiPayload();
    REMReminderPriorityLevel.localizedString.getter(v290);
    v295 = v294;
    v297 = v296;
    if (!v180)
    {
      swift_beginAccess();
      sub_21D29C590(&v790, v179, v787);
      swift_endAccess();
    }

    v298 = objc_allocWithZone(MEMORY[0x277CCAB48]);
    v299 = sub_21DBFA12C();
    v300 = [v298 initWithString_];

    v301 = v786;
    v183(v786, v751, v154);
    LOBYTE(v298) = sub_21DBF79DC();
    (v783)(v301, v154);
    if (v298)
    {
      [v300 beginEditing];
      sub_21D4E3E9C(v300);
      v792 = v295;
      v793 = v297;
      v790 = v770;
      v791 = v769;
      v302 = sub_21DBF582C();
      v303 = v748;
      (*(*(v302 - 8) + 56))(v748, 1, 1, v302);
      sub_21D176F0C();
      v304 = sub_21DBFBBAC();
      v306 = v305;
      v308 = v307;
      sub_21D0CF7E0(v303, &unk_27CE65010, &qword_21DC08D60);
      if (v308)
      {
      }

      else
      {
        v792 = v304;
        v793 = v306;
        v790 = v295;
        v791 = v297;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5FB00, &unk_21DC18DC0);
        sub_21D4E596C();
        v525 = sub_21DBFB9DC();
        sub_21D4E4130(v300, v525, v526);
      }

      v104 = v776;
      v156 = v764;
      v157 = v763;
      v151 = v774;
      [v300 endEditing];
      v154 = v754;
    }

    else
    {

      v104 = v776;
      v156 = v764;
      v157 = v763;
      v151 = v774;
    }

    v527 = v736;
    sub_21D4E58A4(v745, v736, type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType);
    v528 = v753;
    v529 = *(v753 + 20);
    v530 = sub_21DBF79FC();
    (*(*(v530 - 8) + 16))(v527 + v529, v788 + v155, v530);
    *(v527 + *(v528 + 24)) = v300;
    v531 = v527 + *(v528 + 28);
    v532 = v773;
    *v531 = v771;
    *(v531 + 8) = v532;
    *(v531 + 16) = v772 & 1;
    swift_beginAccess();
    v533 = v794;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v533 = sub_21D2137F0(0, v533[2] + 1, 1, v533);
    }

    v535 = v533[2];
    v534 = v533[3];
    if (v535 >= v534 >> 1)
    {
      v533 = sub_21D2137F0((v534 > 1), v535 + 1, 1, v533);
    }

    v533[2] = v535 + 1;
    v536 = v533 + ((*(v752 + 80) + 32) & ~*(v752 + 80)) + *(v752 + 72) * v535;
    v537 = v736;
    sub_21D4E58A4(v736, v536, type metadata accessor for TTRReminderSuggestedAttribute);
    v794 = v533;
    swift_endAccess();
    sub_21D4E590C(v537, type metadata accessor for TTRReminderSuggestedAttribute);
    sub_21D4E590C(v745, type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType);
    sub_21D4E590C(v155, type metadata accessor for TTRReminderTitleAttributesHarvester.Attribute);
    sub_21D0CF7E0(v779, &qword_27CE61E70, &unk_21DC2A2D0);
    sub_21D4E590C(v734, type metadata accessor for TTRReminderTitleAttributesHarvester.Attribute);
  }

  if (v188 <= 1)
  {
    if (!v188)
    {
      v226 = v741;
      v227 = v749;
      (*v733)(v741, v775, v749);
      v228 = v712;
      sub_21D4E4A74(v712);
      v229 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D148, &qword_21DC18D78);
      if ((*(*(v229 - 8) + 48))(v228, 1, v229) != 1)
      {
        v316 = *(v229 + 48);
        v317 = v695;
        (*v703)(v695, v228, v729);
        v318 = v696;
        (*v702)(v696, v228 + v316, v730);
        v319 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
        v320 = sub_21DBF5C0C();
        [v319 setTimeZone_];

        [v319 setDoesRelativeDateFormatting_];
        [v319 setDateStyle_];
        v321 = sub_21DBF4EDC();
        v322 = [v321 rem_isAllDayDateComponents];

        [v319 setTimeStyle_];
        v323 = sub_21DBF55BC();
        v324 = [v319 stringFromDate_];

        v727 = sub_21DBFA16C();
        v326 = v325;

        (*v707)(v318, v730);
        (*v706)(v317, v729);
        (*v698)(v724, v741, v227);
        swift_storeEnumTagMultiPayload();
        if (!v180)
        {
          swift_beginAccess();
          sub_21D29C590(&v790, v179, v787);
          swift_endAccess();
        }

        v327 = objc_allocWithZone(MEMORY[0x277CCAB48]);
        v328 = v727;
        v329 = sub_21DBFA12C();
        v330 = v326;
        v331 = [v327 initWithString_];

        v332 = v786;
        v333 = v754;
        v183(v786, v751, v754);
        v155 = v768;
        LOBYTE(v327) = sub_21DBF79DC();
        (v783)(v332, v333);
        if (v327)
        {
          [v331 beginEditing];
          v787 = v331;
          sub_21D4E3E9C(v331);
          v792 = v328;
          v793 = v330;
          v790 = v770;
          v791 = v769;
          v334 = sub_21DBF582C();
          v335 = v748;
          (*(*(v334 - 8) + 56))(v748, 1, 1, v334);
          sub_21D176F0C();
          v336 = sub_21DBFBBAC();
          v338 = v337;
          v340 = v339;
          sub_21D0CF7E0(v335, &unk_27CE65010, &qword_21DC08D60);
          if (v340)
          {

            v341 = v749;
            v104 = v776;
            v156 = v764;
            v157 = v763;
            v151 = v774;
            v342 = v787;
          }

          else
          {
            v792 = v336;
            v793 = v338;
            v790 = v328;
            v791 = v330;
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5FB00, &unk_21DC18DC0);
            sub_21D4E596C();
            v570 = sub_21DBFB9DC();
            v342 = v787;
            sub_21D4E4130(v787, v570, v571);
            v341 = v749;
            v104 = v776;
            v156 = v764;
            v157 = v763;
            v151 = v774;
          }

          [v342 endEditing];
        }

        else
        {

          v341 = v749;
          v342 = v331;
          v104 = v776;
          v156 = v764;
          v157 = v763;
          v151 = v774;
        }

        v572 = v709;
        sub_21D4E58A4(v724, v709, type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType);
        v573 = v753;
        v574 = *(v753 + 20);
        v575 = sub_21DBF79FC();
        (*(*(v575 - 8) + 16))(v572 + v574, v788 + v155, v575);
        *(v572 + *(v573 + 24)) = v342;
        v576 = v572 + *(v573 + 28);
        v577 = v773;
        *v576 = v771;
        *(v576 + 8) = v577;
        *(v576 + 16) = v772 & 1;
        sub_21D4E58A4(v572, v710, type metadata accessor for TTRReminderSuggestedAttribute);
        swift_beginAccess();
        v578 = v794;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v794 = v578;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v578 = sub_21D2137F0(0, v578[2] + 1, 1, v578);
          v794 = v578;
        }

        v154 = v754;
        v581 = v578[2];
        v580 = v578[3];
        if (v581 >= v580 >> 1)
        {
          v578 = sub_21D2137F0((v580 > 1), v581 + 1, 1, v578);
          v794 = v578;
        }

        v578[2] = v581 + 1;
        sub_21D4E59D0(v710, v578 + ((*(v752 + 80) + 32) & ~*(v752 + 80)) + *(v752 + 72) * v581, type metadata accessor for TTRReminderSuggestedAttribute);
        v794 = v578;
        swift_endAccess();
        sub_21D4E590C(v709, type metadata accessor for TTRReminderSuggestedAttribute);
        sub_21D4E590C(v724, type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType);
        (*v747)(v741, v341);
        goto LABEL_252;
      }

      sub_21D0CF7E0(v228, &qword_27CE5D130, &unk_21DC18D50);
      (*v747)(v226, v227);
      goto LABEL_39;
    }

    v727 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CF38, &qword_21DC188E0);
    v278 = v727[12];
    v279 = v726;
    v280 = v775;
    v281 = v749;
    (*v733)(v726, v775, v749);
    v282 = v280 + v278;
    v283 = v728;
    sub_21D4E59D0(v282, v728, type metadata accessor for TTRRecurrenceRuleModel);
    v284 = v713;
    sub_21D4E4A74(v713);
    v285 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D148, &qword_21DC18D78);
    if ((*(*(v285 - 8) + 48))(v284, 1, v285) == 1)
    {
      sub_21D4E590C(v283, type metadata accessor for TTRRecurrenceRuleModel);
      (*v747)(v279, v281);
      sub_21D4E590C(v155, type metadata accessor for TTRReminderTitleAttributesHarvester.Attribute);
      sub_21D0CF7E0(v779, &qword_27CE61E70, &unk_21DC2A2D0);
      v286 = v284;
      v287 = &qword_27CE5D130;
      v288 = &unk_21DC18D50;
    }

    else
    {
      v343 = *(v285 + 48);
      v344 = v699;
      v345 = v729;
      (*v703)(v699, v284, v729);
      v346 = v284 + v343;
      v347 = v700;
      v348 = v730;
      (*v702)(v700, v346, v730);
      v349 = sub_21D4E4390(v279);
      if (v350)
      {
        v351 = v350;
        v683 = v349;
        v352 = v347;
        v353 = v728;
        v682 = TTRRecurrenceRuleModel.shortNaturalLanguageDescription(date:timeZone:lowercase:)(v344, v352, 0);
        v355 = v354;
        if (qword_280D1BAA8 != -1)
        {
          swift_once();
        }

        sub_21DBF516C();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE90, &qword_21DC109C0);
        v356 = swift_allocObject();
        *(v356 + 16) = v685;
        v357 = MEMORY[0x277D837D0];
        *(v356 + 56) = MEMORY[0x277D837D0];
        v358 = sub_21D17A884();
        *(v356 + 32) = v683;
        *(v356 + 40) = v351;
        *(v356 + 96) = v357;
        *(v356 + 104) = v358;
        v359 = v682;
        *(v356 + 64) = v358;
        *(v356 + 72) = v359;
        *(v356 + 80) = v355;
        v360 = sub_21DBFA17C();
        v362 = v361;

        v363 = v727[12];
        v364 = v701;
        (*v698)(v701, v726, v749);
        sub_21D4E58A4(v353, v364 + v363, type metadata accessor for TTRRecurrenceRuleModel);
        swift_storeEnumTagMultiPayload();
        v365 = v353;
        if (!v180)
        {
          swift_beginAccess();
          sub_21D29C590(&v790, v179, v787);
          swift_endAccess();
        }

        v366 = objc_allocWithZone(MEMORY[0x277CCAB48]);
        v367 = sub_21DBFA12C();
        v368 = [v366 initWithString_];

        v369 = v786;
        v370 = v754;
        v183(v786, v751, v754);
        LOBYTE(v366) = sub_21DBF79DC();
        (v783)(v369, v370);
        if (v366)
        {
          [v368 beginEditing];
          sub_21D4E3E9C(v368);
          v792 = v360;
          v793 = v362;
          v790 = v770;
          v791 = v769;
          v371 = sub_21DBF582C();
          v372 = v748;
          (*(*(v371 - 8) + 56))(v748, 1, 1, v371);
          sub_21D176F0C();
          v373 = sub_21DBFBBAC();
          v375 = v374;
          v377 = v376;
          sub_21D0CF7E0(v372, &unk_27CE65010, &qword_21DC08D60);
          if (v377)
          {
          }

          else
          {
            v792 = v373;
            v793 = v375;
            v790 = v360;
            v791 = v362;
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5FB00, &unk_21DC18DC0);
            sub_21D4E596C();
            v587 = sub_21DBFB9DC();
            sub_21D4E4130(v368, v587, v588);
          }

          v552 = v730;
          v553 = v700;
          v554 = v729;
          v555 = v699;
          v556 = v749;
          [v368 endEditing];
          v365 = v728;
        }

        else
        {

          v552 = v730;
          v553 = v700;
          v554 = v729;
          v555 = v699;
          v556 = v749;
        }

        v589 = v697;
        sub_21D4E58A4(v701, v697, type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType);
        v590 = v753;
        v591 = *(v753 + 20);
        v592 = sub_21DBF79FC();
        (*(*(v592 - 8) + 16))(v589 + v591, v788 + v768, v592);
        *(v589 + *(v590 + 24)) = v368;
        v593 = v589 + *(v590 + 28);
        v594 = v773;
        *v593 = v771;
        *(v593 + 8) = v594;
        *(v593 + 16) = v772 & 1;
        swift_beginAccess();
        sub_21D4E5274();
        v595 = v794;
        v597 = v794[2];
        v596 = v794[3];
        if (v597 >= v596 >> 1)
        {
          v595 = sub_21D2137F0((v596 > 1), v597 + 1, 1, v794);
          v794 = v595;
        }

        v154 = v754;
        v595[2] = v597 + 1;
        v598 = v595 + ((*(v752 + 80) + 32) & ~*(v752 + 80)) + *(v752 + 72) * v597;
        v599 = v697;
        sub_21D4E58A4(v697, v598, type metadata accessor for TTRReminderSuggestedAttribute);
        v794 = v595;
        swift_endAccess();
        sub_21D4E590C(v599, type metadata accessor for TTRReminderSuggestedAttribute);
        sub_21D4E590C(v701, type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType);
        (*v707)(v553, v552);
        (*v706)(v555, v554);
        sub_21D4E590C(v365, type metadata accessor for TTRRecurrenceRuleModel);
        (*v747)(v726, v556);
        goto LABEL_39;
      }

      (*v707)(v347, v348);
      (*v706)(v344, v345);
      sub_21D4E590C(v728, type metadata accessor for TTRRecurrenceRuleModel);
      (*v747)(v279, v749);
      v155 = v768;
      sub_21D4E590C(v768, type metadata accessor for TTRReminderTitleAttributesHarvester.Attribute);
      v286 = v779;
      v287 = &qword_27CE61E70;
      v288 = &unk_21DC2A2D0;
    }

    sub_21D0CF7E0(v286, v287, v288);
    v154 = v754;
    goto LABEL_41;
  }

  if (v188 == 2)
  {
    v230 = *v775;
    v231 = [*v775 structuredLocation];
    v715(&v792);

    v232 = v792;
    v233 = v742;
    *v742 = v230;
    *(v233 + 8) = v232;
    swift_storeEnumTagMultiPayload();
    v234 = v230;
    v235 = [v234 proximity];
    if (!v235)
    {
      goto LABEL_170;
    }

    if (v235 == 1)
    {
      if (qword_280D1BAA8 == -1)
      {
        goto LABEL_169;
      }
    }

    else
    {
      if (v235 != 2)
      {
        goto LABEL_318;
      }

      if (qword_280D1BAA8 == -1)
      {
        goto LABEL_169;
      }
    }

    swift_once();
LABEL_169:
    sub_21DBF516C();
LABEL_170:
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE90, &qword_21DC109C0);
    v416 = swift_allocObject();
    *(v416 + 16) = v705;
    v727 = v234;
    v417 = [v234 structuredLocation];
    v418 = [v417 displayName];

    if (v418)
    {
      v419 = sub_21DBFA16C();
      v421 = v420;
    }

    else
    {
      v419 = 0;
      v421 = 0xE000000000000000;
    }

    *(v416 + 56) = MEMORY[0x277D837D0];
    *(v416 + 64) = sub_21D17A884();
    *(v416 + 32) = v419;
    *(v416 + 40) = v421;
    v422 = sub_21DBFA17C();
    v424 = v423;

    if (!v180)
    {
      swift_beginAccess();
      sub_21D29C590(&v790, v179, v787);
      swift_endAccess();
    }

    v425 = objc_allocWithZone(MEMORY[0x277CCAB48]);
    v426 = sub_21DBFA12C();
    v427 = [v425 initWithString_];

    v428 = v786;
    v183(v786, v751, v154);
    LOBYTE(v425) = sub_21DBF79DC();
    (v783)(v428, v154);
    if (v425)
    {
      [v427 beginEditing];
      sub_21D4E3E9C(v427);
      v792 = v422;
      v793 = v424;
      v790 = v770;
      v791 = v769;
      v429 = sub_21DBF582C();
      v430 = v748;
      (*(*(v429 - 8) + 56))(v748, 1, 1, v429);
      sub_21D176F0C();
      v431 = sub_21DBFBBAC();
      v433 = v432;
      v435 = v434;
      sub_21D0CF7E0(v430, &unk_27CE65010, &qword_21DC08D60);
      v104 = v776;
      if (v435)
      {
      }

      else
      {
        v792 = v431;
        v793 = v433;
        v790 = v422;
        v791 = v424;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5FB00, &unk_21DC18DC0);
        sub_21D4E596C();
        v473 = sub_21DBFB9DC();
        sub_21D4E4130(v427, v473, v474);
      }

      v155 = v768;
      v156 = v764;
      v157 = v763;
      v151 = v774;
      [v427 endEditing];
      v154 = v754;
    }

    else
    {

      v155 = v768;
      v104 = v776;
      v156 = v764;
      v157 = v763;
      v151 = v774;
    }

    v475 = v738;
    sub_21D4E58A4(v742, v738, type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType);
    v476 = v753;
    v477 = *(v753 + 20);
    v478 = sub_21DBF79FC();
    (*(*(v478 - 8) + 16))(v475 + v477, v788 + v155, v478);
    *(v475 + *(v476 + 24)) = v427;
    v479 = v475 + *(v476 + 28);
    v480 = v773;
    *v479 = v771;
    *(v479 + 8) = v480;
    *(v479 + 16) = v772 & 1;
    sub_21D4E58A4(v475, v739, type metadata accessor for TTRReminderSuggestedAttribute);
    swift_beginAccess();
    v481 = v794;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v481 = sub_21D2137F0(0, v481[2] + 1, 1, v481);
    }

    v483 = v481[2];
    v482 = v481[3];
    if (v483 >= v482 >> 1)
    {
      v481 = sub_21D2137F0((v482 > 1), v483 + 1, 1, v481);
    }

    v481[2] = v483 + 1;
    sub_21D4E59D0(v739, v481 + ((*(v752 + 80) + 32) & ~*(v752 + 80)) + *(v752 + 72) * v483, type metadata accessor for TTRReminderSuggestedAttribute);
    v794 = v481;
    swift_endAccess();

    sub_21D4E590C(v738, type metadata accessor for TTRReminderSuggestedAttribute);
    v213 = &v774;
    goto LABEL_251;
  }

  if (v188 != 3)
  {
    v262 = *v775;
    *v744 = *v775;
    swift_storeEnumTagMultiPayload();
    v263 = v262;
    v264 = [v263 displayName];
    if (!v264)
    {
      sub_21DBFA16C();
      v264 = sub_21DBFA12C();
    }

    v727 = v263;
    v265 = sub_21DBFA16C();
    v267 = v266;
    if (!v180)
    {
      swift_beginAccess();
      sub_21D29C590(&v790, v179, v787);
      swift_endAccess();
    }

    v268 = [objc_allocWithZone(MEMORY[0x277CCAB48]) initWithString_];

    v269 = v786;
    v183(v786, v751, v154);
    v270 = sub_21DBF79DC();
    (v783)(v269, v154);
    if (v270)
    {
      [v268 beginEditing];
      sub_21D4E3E9C(v268);
      v792 = v265;
      v793 = v267;
      v790 = v770;
      v791 = v769;
      v271 = sub_21DBF582C();
      v272 = v748;
      (*(*(v271 - 8) + 56))(v748, 1, 1, v271);
      sub_21D176F0C();
      v273 = sub_21DBFBBAC();
      v275 = v274;
      v277 = v276;
      sub_21D0CF7E0(v272, &unk_27CE65010, &qword_21DC08D60);
      v104 = v776;
      if (v277)
      {
      }

      else
      {
        v792 = v273;
        v793 = v275;
        v790 = v265;
        v791 = v267;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5FB00, &unk_21DC18DC0);
        sub_21D4E596C();
        v498 = sub_21DBFB9DC();
        sub_21D4E4130(v268, v498, v499);
      }

      v155 = v768;
      v156 = v764;
      v157 = v763;
      v151 = v774;
      [v268 endEditing];
      v154 = v754;
    }

    else
    {

      v155 = v768;
      v104 = v776;
      v156 = v764;
      v157 = v763;
      v151 = v774;
    }

    v500 = v735;
    sub_21D4E58A4(v744, v735, type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType);
    v501 = v753;
    v502 = *(v753 + 20);
    v503 = sub_21DBF79FC();
    (*(*(v503 - 8) + 16))(v500 + v502, v788 + v155, v503);
    *(v500 + *(v501 + 24)) = v268;
    v504 = v500 + *(v501 + 28);
    v505 = v773;
    *v504 = v771;
    *(v504 + 8) = v505;
    *(v504 + 16) = v772 & 1;
    swift_beginAccess();
    v506 = v794;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v506 = sub_21D2137F0(0, v506[2] + 1, 1, v506);
    }

    v507 = v727;
    v509 = v506[2];
    v508 = v506[3];
    if (v509 >= v508 >> 1)
    {
      v506 = sub_21D2137F0((v508 > 1), v509 + 1, 1, v506);
    }

    v506[2] = v509 + 1;
    v510 = v506 + ((*(v752 + 80) + 32) & ~*(v752 + 80)) + *(v752 + 72) * v509;
    v511 = v735;
    sub_21D4E58A4(v735, v510, type metadata accessor for TTRReminderSuggestedAttribute);
    v794 = v506;
    swift_endAccess();

    sub_21D4E590C(v511, type metadata accessor for TTRReminderSuggestedAttribute);
    v213 = &v776;
    goto LABEL_251;
  }

  v214 = *v775;
  *v743 = *v775;
  swift_storeEnumTagMultiPayload();
  v215 = v214;
  v216 = [v215 event];
  v217 = v216;
  if (!v216)
  {
    v415 = 0xE000000000000000;
    if (!v180)
    {
      goto LABEL_182;
    }

    goto LABEL_183;
  }

  if (v216 == 1)
  {
    if (qword_280D1BAA8 == -1)
    {
LABEL_181:
      v217 = sub_21DBF516C();
      v415 = v436;
      if (!v180)
      {
LABEL_182:
        swift_beginAccess();
        sub_21D29C590(&v790, v179, v787);
        swift_endAccess();
      }

LABEL_183:
      v437 = objc_allocWithZone(MEMORY[0x277CCAB48]);
      v438 = sub_21DBFA12C();
      v439 = [v437 initWithString_];

      v440 = v786;
      v183(v786, v751, v154);
      LOBYTE(v437) = sub_21DBF79DC();
      (v783)(v440, v154);
      if (v437)
      {
        [v439 beginEditing];
        sub_21D4E3E9C(v439);
        v792 = v217;
        v793 = v415;
        v790 = v770;
        v791 = v769;
        v441 = sub_21DBF582C();
        v442 = v748;
        (*(*(v441 - 8) + 56))(v748, 1, 1, v441);
        sub_21D176F0C();
        v443 = sub_21DBFBBAC();
        v445 = v444;
        v447 = v446;
        sub_21D0CF7E0(v442, &unk_27CE65010, &qword_21DC08D60);
        if (v447)
        {
        }

        else
        {
          v792 = v443;
          v793 = v445;
          v790 = v217;
          v791 = v415;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5FB00, &unk_21DC18DC0);
          sub_21D4E596C();
          v512 = sub_21DBFB9DC();
          sub_21D4E4130(v439, v512, v513);
        }

        v104 = v776;
        v156 = v764;
        v157 = v763;
        v151 = v774;
        [v439 endEditing];
        v155 = v768;
      }

      else
      {

        v155 = v768;
        v104 = v776;
        v156 = v764;
        v157 = v763;
        v151 = v774;
      }

      v514 = v740;
      sub_21D4E58A4(v743, v740, type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType);
      v515 = v753;
      v516 = *(v753 + 20);
      v517 = sub_21DBF79FC();
      (*(*(v517 - 8) + 16))(v514 + v516, v788 + v155, v517);
      *(v514 + *(v515 + 24)) = v439;
      v518 = v514 + *(v515 + 28);
      v519 = v773;
      *v518 = v771;
      *(v518 + 8) = v519;
      *(v518 + 16) = v772 & 1;
      swift_beginAccess();
      v520 = v794;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v520 = sub_21D2137F0(0, v520[2] + 1, 1, v520);
      }

      v522 = v520[2];
      v521 = v520[3];
      v154 = v754;
      if (v522 >= v521 >> 1)
      {
        v520 = sub_21D2137F0((v521 > 1), v522 + 1, 1, v520);
      }

      v520[2] = v522 + 1;
      v523 = v520 + ((*(v752 + 80) + 32) & ~*(v752 + 80)) + *(v752 + 72) * v522;
      v524 = v740;
      sub_21D4E58A4(v740, v523, type metadata accessor for TTRReminderSuggestedAttribute);
      v794 = v520;
      swift_endAccess();

      sub_21D4E590C(v524, type metadata accessor for TTRReminderSuggestedAttribute);
      v213 = &v775;
LABEL_251:
      sub_21D4E590C(*(v213 - 32), type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType);
LABEL_252:
      sub_21D4E590C(v155, type metadata accessor for TTRReminderTitleAttributesHarvester.Attribute);
      sub_21D0CF7E0(v779, &qword_27CE61E70, &unk_21DC2A2D0);
      goto LABEL_42;
    }

LABEL_307:
    swift_once();
    goto LABEL_181;
  }

  if (v216 == 2)
  {
    if (qword_280D1BAA8 == -1)
    {
      goto LABEL_181;
    }

    goto LABEL_307;
  }

  if (qword_27CE56E20 != -1)
  {
    swift_once();
  }

  v673 = sub_21DBF84BC();
  __swift_project_value_buffer(v673, qword_27CE63870);
  v674 = MEMORY[0x277D84F90];
  v675 = sub_21D17716C(MEMORY[0x277D84F90]);
  v676 = sub_21D17716C(v674);
  sub_21DAEAB00("unknown event", 13, 2, v675, v676);
LABEL_324:
  __break(1u);
}