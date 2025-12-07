void sub_1C952CC64(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5218, &qword_1C96AD3E0);
  MEMORY[0x1EEE9AC00](v58);
  v59 = (&v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v9);
  v60 = (&v51 - v10);
  v12 = *(v11 + 72);
  if (!v12)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return;
  }

  v13 = a2 - a1;
  v14 = a2 - a1 == 0x8000000000000000 && v12 == -1;
  if (v14)
  {
    goto LABEL_60;
  }

  v15 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v12 == -1)
  {
    goto LABEL_61;
  }

  v17 = v13 / v12;
  v64 = a1;
  v63 = a4;
  v18 = v15 / v12;
  if (v13 / v12 >= v15 / v12)
  {
    sub_1C95229B4();
    v33 = a4 + v18 * v12;
    v34 = -v12;
    v35 = v33;
    v54 = -v12;
    v55 = a4;
    v61 = a1;
LABEL_36:
    v36 = a2 + v34;
    v52 = v35;
    v56 = a2 + v34;
    while (1)
    {
      if (v33 <= a4)
      {
        v64 = a2;
        v62 = v35;
        goto LABEL_58;
      }

      if (a2 <= a1)
      {
        break;
      }

      v53 = v35;
      v37 = a2;
      v38 = a3 + v34;
      v39 = v33 + v34;
      v40 = v60;
      v41 = v36;
      v42 = v33;
      sub_1C94709F4(v33 + v34, v60, &qword_1EC3A5218, &qword_1C96AD3E0);
      v43 = v41;
      v44 = v59;
      sub_1C94709F4(v43, v59, &qword_1EC3A5218, &qword_1C96AD3E0);
      v57 = *v40;
      v45 = v44;
      v46 = *v44;
      sub_1C9470AFC(v45, &qword_1EC3A5218, &qword_1C96AD3E0);
      sub_1C9470AFC(v40, &qword_1EC3A5218, &qword_1C96AD3E0);
      if (v57 < v46)
      {
        if (a3 < v37 || v38 >= v37)
        {
          a2 = v56;
          swift_arrayInitWithTakeFrontToBack();
          v35 = v53;
          v34 = v54;
          a4 = v55;
          a3 = v38;
          a1 = v61;
          v33 = v42;
        }

        else
        {
          v34 = v54;
          v35 = v53;
          v14 = a3 == v37;
          a4 = v55;
          v49 = v56;
          a2 = v56;
          a3 = v38;
          a1 = v61;
          v33 = v42;
          if (!v14)
          {
            v50 = v53;
            swift_arrayInitWithTakeBackToFront();
            v33 = v42;
            a2 = v49;
            v35 = v50;
          }
        }

        goto LABEL_36;
      }

      v47 = a3 < v42 || v38 >= v42;
      a2 = v37;
      if (v47)
      {
        swift_arrayInitWithTakeFrontToBack();
        a3 += v34;
        v33 = v39;
        v35 = v39;
        v34 = v54;
        a4 = v55;
        a1 = v61;
        v36 = v56;
      }

      else
      {
        v35 = v39;
        v14 = v42 == a3;
        a3 += v34;
        v33 = v39;
        v34 = v54;
        a4 = v55;
        a1 = v61;
        v36 = v56;
        if (!v14)
        {
          swift_arrayInitWithTakeBackToFront();
          a3 = v38;
          v33 = v39;
          v35 = v39;
        }
      }
    }

    v64 = a2;
    v62 = v52;
  }

  else
  {
    sub_1C95229B4();
    v56 = a3;
    v57 = a4 + v17 * v12;
    v62 = v57;
    v19 = a1;
    while (a4 < v57 && a2 < a3)
    {
      v61 = v19;
      v21 = v12;
      v22 = a2;
      v23 = a2;
      v24 = v60;
      sub_1C94709F4(v22, v60, &qword_1EC3A5218, &qword_1C96AD3E0);
      v25 = a4;
      v26 = a4;
      v27 = v59;
      sub_1C94709F4(v25, v59, &qword_1EC3A5218, &qword_1C96AD3E0);
      v28 = *v24;
      v29 = *v27;
      sub_1C9470AFC(v27, &qword_1EC3A5218, &qword_1C96AD3E0);
      sub_1C9470AFC(v24, &qword_1EC3A5218, &qword_1C96AD3E0);
      if (v28 >= v29)
      {
        v12 = v21;
        a4 = v26 + v21;
        v30 = v61;
        if (v61 < v26 || v61 >= a4)
        {
          swift_arrayInitWithTakeFrontToBack();
          a2 = v23;
        }

        else
        {
          a2 = v23;
          if (v61 != v26)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v63 = v26 + v21;
      }

      else
      {
        v12 = v21;
        a2 = v23 + v21;
        v30 = v61;
        v31 = v61 < v23 || v61 >= a2;
        a4 = v26;
        if (v31)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v61 != v23)
        {
          swift_arrayInitWithTakeBackToFront();
        }
      }

      v19 = v30 + v12;
      v64 = v19;
      a3 = v56;
    }
  }

LABEL_58:
  sub_1C952EF88(&v64, &v63, &v62);
}

void (*sub_1C952D120(uint64_t a1, uint64_t a2, uint64_t a3))(id *a1)
{
  OUTLINED_FUNCTION_41_4(a1, a2, a3);
  sub_1C95AE200();
  if (v6)
  {
    v7 = *(v4 + 8 * v5 + 32);
  }

  else
  {
    v7 = MEMORY[0x1CCA8D440](v5, v4);
  }

  *v3 = v7;
  return sub_1C952D640;
}

void (*sub_1C952D18C(uint64_t a1, uint64_t a2, uint64_t a3))(id *a1)
{
  OUTLINED_FUNCTION_41_4(a1, a2, a3);
  sub_1C95AE200();
  if (v6)
  {
    v7 = *(v4 + 8 * v5 + 32);
  }

  else
  {
    v7 = MEMORY[0x1CCA8D440](v5, v4);
  }

  *v3 = v7;
  return sub_1C952D1F8;
}

uint64_t sub_1C952D200()
{
  OUTLINED_FUNCTION_39();
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  swift_task_alloc();
  OUTLINED_FUNCTION_35();
  *(v1 + 16) = v5;
  *v5 = v6;
  v5[1] = sub_1C94B0C0C;
  OUTLINED_FUNCTION_25_7();

  return sub_1C9529FE0(v7, v8, v9, v2, v3, v4);
}

uint64_t sub_1C952D2BC()
{
  OUTLINED_FUNCTION_30();
  v3 = v2;
  v4 = *(v0 + 16);
  swift_task_alloc();
  OUTLINED_FUNCTION_35();
  *(v1 + 16) = v5;
  *v5 = v6;
  v5[1] = sub_1C94B0C0C;

  return sub_1C94BFBBC(v3, v4);
}

unint64_t sub_1C952D36C()
{
  result = qword_1EDB7AB58;
  if (!qword_1EDB7AB58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC3A5280, &unk_1C96AD6D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7AB58);
  }

  return result;
}

uint64_t sub_1C952D3DC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5288, &qword_1C96AD6E8);
  OUTLINED_FUNCTION_7(v2);
  OUTLINED_FUNCTION_31_1();
  return sub_1C952AA10(a1);
}

uint64_t objectdestroy_45Tm()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5288, &qword_1C96AD6E8);
  OUTLINED_FUNCTION_6();
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1C952D4E4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5288, &qword_1C96AD6E8);
  OUTLINED_FUNCTION_7(v0);
  OUTLINED_FUNCTION_31_1();

  return sub_1C952ABD8();
}

uint64_t sub_1C952D554(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C952D5C4(uint64_t a1)
{
  result = sub_1C96A4DF4();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t == infix(_:_:)(double *a1, double *a2)
{
  v2 = *(a1 + 1);
  v3 = *(a1 + 2);
  v4 = a1[3];
  v5 = *(a1 + 32);
  v7 = *a2;
  v6 = *(a2 + 1);
  v8 = *(a2 + 2);
  v9 = a2[3];
  v10 = *(a2 + 32);
  v19 = *a1;
  sub_1C96A53C4();
  sub_1C952DACC(&v19);
  v19 = v7;
  sub_1C96A53C4();
  sub_1C952DACC(&v19);
  sub_1C9554184();
  v12 = v11;

  if (v12 & 1) != 0 && (v19 = v2, sub_1C96A53C4(), sub_1C952DACC(&v19), v19 = v6, sub_1C96A53C4(), sub_1C952DACC(&v19), sub_1C9554184(), v14 = v13, , , (v14))
  {
    v19 = v3;
    sub_1C96A53C4();
    sub_1C952DACC(&v19);
    v19 = v8;
    sub_1C96A53C4();
    sub_1C952DACC(&v19);
    sub_1C9554184();
    v16 = v15;

    if (v5 & 1 | ((v16 & 1) == 0))
    {
      v17 = v16 & v10;
    }

    else
    {
      v17 = (v4 == v9) & ~v10;
    }
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

uint64_t NotificationSubscriptionMigrationStatus.NoMigrationReason.hashValue.getter()
{
  sub_1C96A7EE4();
  MEMORY[0x1CCA8D880](0);
  return sub_1C96A7F24();
}

uint64_t static NotificationSubscriptionMigrationStatus.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = a1[2];
  v4 = *(a1 + 3);
  v6 = *(a1 + 32);
  v8 = *a2;
  v7 = *(a2 + 8);
  v10 = *(a2 + 16);
  v9 = *(a2 + 24);
  v11 = *(a2 + 32);
  if (!(v6 >> 6))
  {
    if (v11 <= 0x3F)
    {
      v50 = OUTLINED_FUNCTION_1_18();
      sub_1C94AF5A0(v50, v51, v52, v53, v54);
      v55 = OUTLINED_FUNCTION_0_21();
      goto LABEL_8;
    }

LABEL_27:
    v68 = OUTLINED_FUNCTION_0_21();
    sub_1C9524A7C(v68, v69, v70, v71, v72);
    v73 = OUTLINED_FUNCTION_1_18();
    sub_1C94AF5A0(v73, v74, v75, v76, v77);
    v78 = OUTLINED_FUNCTION_0_21();
    sub_1C94AF5A0(v78, v79, v80, v81, v82);
    v34 = 0;
    return v34 & 1;
  }

  if (v6 >> 6 != 1)
  {
    if (!(v5 | v2 | v3 | *&v4) && v6 == 128)
    {
      v60 = (v11 & 0xC0) == 0x80 && (*&v10 | *&v7 | *&v8 | *&v9) == 0;
      if (!v60 || v11 != 128)
      {
        goto LABEL_27;
      }

      OUTLINED_FUNCTION_2_17();
      sub_1C94AF5A0(v61, v62, v63, v64, v65);
      OUTLINED_FUNCTION_2_17();
LABEL_8:
      sub_1C94AF5A0(v55, v56, v57, v58, v59);
      v34 = 1;
      return v34 & 1;
    }

    if ((v11 & 0xC0) == 0x80)
    {
      v66 = v11 == 128 && *&v8 == 1;
      if (v66 && (*&v10 | *&v7 | *&v9) == 0)
      {
        v34 = 1;
        OUTLINED_FUNCTION_2_17();
        sub_1C94AF5A0(v84, v85, v86, v87, v88);
        OUTLINED_FUNCTION_2_17();
        goto LABEL_5;
      }
    }

    goto LABEL_27;
  }

  if ((v11 & 0xC0) != 0x40)
  {
    sub_1C96A53C4();
    sub_1C96A53C4();
    sub_1C96A53C4();
    goto LABEL_27;
  }

  *&v92[0] = *a1;
  *&v92[1] = v2;
  *&v92[2] = v5;
  v92[3] = v4;
  v93 = v6 & 1;
  v90[0] = v8;
  v90[1] = v7;
  v90[2] = v10;
  v90[3] = v9;
  v91 = v11 & 1;
  v12 = OUTLINED_FUNCTION_0_21();
  sub_1C9524A7C(v12, v13, v14, v15, v16);
  v17 = OUTLINED_FUNCTION_1_18();
  sub_1C9524A7C(v17, v18, v19, v20, v21);
  v22 = OUTLINED_FUNCTION_0_21();
  sub_1C9524A7C(v22, v23, v24, v25, v26);
  v27 = OUTLINED_FUNCTION_1_18();
  sub_1C9524A7C(v27, v28, v29, v30, v31);
  v32 = == infix(_:_:)(v92, v90);
  v33 = *&v4;
  v89 = *&v4;
  v34 = v32;
  sub_1C94AF5A0(v3, v2, v5, v33, v6);
  v35 = OUTLINED_FUNCTION_0_21();
  sub_1C94AF5A0(v35, v36, v37, v38, v39);
  v40 = OUTLINED_FUNCTION_0_21();
  sub_1C94AF5A0(v40, v41, v42, v43, v44);
  v45 = v3;
  v46 = v2;
  v47 = v5;
  v48 = v89;
  v49 = v6;
LABEL_5:
  sub_1C94AF5A0(v45, v46, v47, v48, v49);
  return v34 & 1;
}

void sub_1C952DACC(uint64_t *a1)
{
  v2 = *(type metadata accessor for NotificationSubscription(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1C964B13C();
    v3 = v4;
  }

  v5 = *(v3 + 16);
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v5;
  sub_1C952DE28(v6);
  *a1 = v3;
}

unint64_t sub_1C952DB78()
{
  result = qword_1EC3A5298;
  if (!qword_1EC3A5298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A5298);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_11WeatherCore39NotificationSubscriptionMigrationStatusO(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = v1;
  v3 = v1 >> 6;
  if (v2 >= 0)
  {
    return v3;
  }

  else
  {
    return (*a1 + 2);
  }
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

uint64_t sub_1C952DC00(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7E && *(a1 + 33))
    {
      v2 = *a1 + 125;
    }

    else
    {
      v2 = ((*(a1 + 32) >> 6) & 0xFFFFFF83 | (4 * ((*(a1 + 32) >> 1) & 0x1F))) ^ 0x7F;
      if (v2 >= 0x7D)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_1C952DC4C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 126;
    *(result + 8) = 0;
    if (a3 >= 0x7E)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *result = 0u;
      *(result + 16) = 0u;
      *(result + 32) = 2 * (((-a2 >> 2) & 0x1F) - 32 * a2);
    }
  }

  return result;
}

uint64_t sub_1C952DCB8(uint64_t result, unsigned int a2)
{
  if (a2 < 2)
  {
    v2 = *(result + 32) & 1 | (a2 << 6);
  }

  else
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    v2 = 0x80;
  }

  *(result + 32) = v2;
  return result;
}

uint64_t sub_1C952DCF0(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 33))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C952DD30(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for NotificationSubscriptionMigrationStatus.NoMigrationReason(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

void sub_1C952DE28(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1C96A7DA4();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        type metadata accessor for NotificationSubscription(0);
        v6 = sub_1C96A7304();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for NotificationSubscription(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1C952E168(v8, v9, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_1C952DF58(0, v2, 1, a1);
  }
}

void sub_1C952DF58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v33 = type metadata accessor for NotificationSubscription(0);
  MEMORY[0x1EEE9AC00](v33);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v26 - v11);
  MEMORY[0x1EEE9AC00](v13);
  v16 = (&v26 - v15);
  v28 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v18 = *(v14 + 72);
    v19 = *a4 + v18 * (a3 - 1);
    v20 = -v18;
    v21 = a1 - a3;
    v27 = v18;
    v22 = v17 + v18 * a3;
    while (2)
    {
      v31 = v19;
      v32 = a3;
      v29 = v22;
      v30 = v21;
      while (1)
      {
        sub_1C9524958(v22, v16);
        sub_1C9524958(v19, v12);
        if (*v12 == *v16 && v12[1] == v16[1])
        {
          break;
        }

        v24 = sub_1C96A7DE4();
        sub_1C95249BC(v12);
        sub_1C95249BC(v16);
        if (v24)
        {
          if (!v17)
          {
            __break(1u);
            return;
          }

          sub_1C9524A18(v22, v9);
          swift_arrayInitWithTakeFrontToBack();
          sub_1C9524A18(v9, v19);
          v19 += v20;
          v22 += v20;
          if (!__CFADD__(v21++, 1))
          {
            continue;
          }
        }

        goto LABEL_14;
      }

      sub_1C95249BC(v12);
      sub_1C95249BC(v16);
LABEL_14:
      a3 = v32 + 1;
      v19 = v31 + v27;
      v21 = v30 - 1;
      v22 = v29 + v27;
      if (v32 + 1 != v28)
      {
        continue;
      }

      break;
    }
  }
}

void sub_1C952E168(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v119 = a1;
  v135 = type metadata accessor for NotificationSubscription(0);
  v127 = *(v135 - 8);
  MEMORY[0x1EEE9AC00](v135);
  v122 = &v114 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v134 = &v114 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v114 - v10);
  MEMORY[0x1EEE9AC00](v12);
  v14 = (&v114 - v13);
  MEMORY[0x1EEE9AC00](v15);
  v131 = (&v114 - v16);
  MEMORY[0x1EEE9AC00](v17);
  v130 = (&v114 - v18);
  MEMORY[0x1EEE9AC00](v19);
  v118 = (&v114 - v20);
  MEMORY[0x1EEE9AC00](v21);
  v117 = (&v114 - v22);
  v129 = a3;
  v23 = a3[1];
  if (v23 < 1)
  {
    v25 = MEMORY[0x1E69E7CC0];
LABEL_115:
    a4 = *v119;
    if (!*v119)
    {
      goto LABEL_155;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_117:
      v106 = (v25 + 16);
      for (i = *(v25 + 16); i >= 2; *v106 = i)
      {
        if (!*v129)
        {
          goto LABEL_152;
        }

        v108 = (v25 + 16 * i);
        v109 = *v108;
        v110 = &v106[2 * i];
        v111 = *(v110 + 1);
        v112 = v133;
        sub_1C952EA4C(*v129 + *(v127 + 72) * *v108, *v129 + *(v127 + 72) * *v110, *v129 + *(v127 + 72) * v111, a4);
        v133 = v112;
        if (v112)
        {
          break;
        }

        if (v111 < v109)
        {
          goto LABEL_140;
        }

        if (i - 2 >= *v106)
        {
          goto LABEL_141;
        }

        *v108 = v109;
        v108[1] = v111;
        v113 = *v106 - i;
        if (*v106 < i)
        {
          goto LABEL_142;
        }

        i = *v106 - 1;
        sub_1C964AD0C(v110 + 16, v113, v110);
      }

LABEL_113:

      return;
    }

LABEL_149:
    v25 = sub_1C964ACF8(v25);
    goto LABEL_117;
  }

  v115 = a4;
  v24 = 0;
  v25 = MEMORY[0x1E69E7CC0];
  v123 = v11;
  v124 = v14;
  while (1)
  {
    v26 = v24++;
    v120 = v26;
    if (v24 < v23)
    {
      v27 = *v129;
      v28 = *(v127 + 72);
      v29 = v117;
      sub_1C9524958(*v129 + v28 * v24, v117);
      v128 = v28;
      v30 = v27 + v28 * v26;
      v31 = v118;
      sub_1C9524958(v30, v118);
      if (*v31 == *v29 && v31[1] == v29[1])
      {
        LODWORD(v126) = 0;
      }

      else
      {
        LODWORD(v126) = sub_1C96A7DE4();
      }

      v116 = v25;
      sub_1C95249BC(v118);
      sub_1C95249BC(v117);
      v33 = v26 + 2;
      v34 = v128 * (v26 + 2);
      v35 = v27 + v34;
      v36 = v128 * v24;
      v37 = v27 + v128 * v24;
      v125 = v23;
      while (1)
      {
        v38 = v24;
        v25 = v36;
        a4 = v34;
        v132 = v33;
        if (v33 >= v23)
        {
          break;
        }

        v39 = v130;
        sub_1C9524958(v35, v130);
        v40 = v131;
        sub_1C9524958(v37, v131);
        if (*v40 == *v39 && v40[1] == v39[1])
        {
          v42 = 0;
        }

        else
        {
          v42 = sub_1C96A7DE4();
        }

        sub_1C95249BC(v131);
        sub_1C95249BC(v130);
        v43 = v126 ^ v42;
        v44 = v132;
        v33 = v132 + 1;
        v35 += v128;
        v37 += v128;
        v24 = v38 + 1;
        v36 = v25 + v128;
        v34 = a4 + v128;
        v23 = v125;
        if (v43)
        {
          goto LABEL_21;
        }
      }

      v44 = v33;
LABEL_21:
      if (v126)
      {
        v26 = v120;
        if (v44 < v120)
        {
          goto LABEL_146;
        }

        if (v120 >= v44)
        {
          v24 = v44;
          v25 = v116;
          goto LABEL_39;
        }

        v45 = v120 * v128;
        do
        {
          if (v26 != v38)
          {
            v46 = *v129;
            if (!*v129)
            {
              goto LABEL_153;
            }

            sub_1C9524A18(v46 + v45, v122);
            v47 = v45 < v25 || v46 + v45 >= (v46 + a4);
            if (v47)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v45 != v25)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            sub_1C9524A18(v122, v46 + v25);
            v44 = v132;
          }

          ++v26;
          v25 -= v128;
          a4 -= v128;
          v45 += v128;
        }

        while (v26 < v38--);
      }

      v24 = v44;
      v25 = v116;
      v26 = v120;
    }

LABEL_39:
    v49 = v129[1];
    if (v24 < v49)
    {
      if (__OFSUB__(v24, v26))
      {
        goto LABEL_145;
      }

      if (v24 - v26 < v115)
      {
        break;
      }
    }

LABEL_62:
    if (v24 < v26)
    {
      goto LABEL_144;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1C94FB33C();
      v25 = v104;
    }

    v61 = *(v25 + 16);
    v62 = v61 + 1;
    if (v61 >= *(v25 + 24) >> 1)
    {
      sub_1C94FB33C();
      v25 = v105;
    }

    *(v25 + 16) = v62;
    v63 = v25 + 32;
    v64 = (v25 + 32 + 16 * v61);
    *v64 = v120;
    v64[1] = v24;
    v132 = *v119;
    if (!v132)
    {
      goto LABEL_154;
    }

    if (v61)
    {
      while (1)
      {
        v65 = v62 - 1;
        v66 = (v63 + 16 * (v62 - 1));
        v67 = (v25 + 16 * v62);
        if (v62 >= 4)
        {
          break;
        }

        if (v62 == 3)
        {
          v68 = *(v25 + 32);
          v69 = *(v25 + 40);
          v78 = __OFSUB__(v69, v68);
          v70 = v69 - v68;
          v71 = v78;
LABEL_82:
          if (v71)
          {
            goto LABEL_131;
          }

          v83 = *v67;
          v82 = v67[1];
          v84 = __OFSUB__(v82, v83);
          v85 = v82 - v83;
          v86 = v84;
          if (v84)
          {
            goto LABEL_134;
          }

          v87 = v66[1];
          v88 = v87 - *v66;
          if (__OFSUB__(v87, *v66))
          {
            goto LABEL_137;
          }

          if (__OFADD__(v85, v88))
          {
            goto LABEL_139;
          }

          if (v85 + v88 >= v70)
          {
            if (v70 < v88)
            {
              v65 = v62 - 2;
            }

            goto LABEL_104;
          }

          goto LABEL_97;
        }

        if (v62 < 2)
        {
          goto LABEL_133;
        }

        v90 = *v67;
        v89 = v67[1];
        v78 = __OFSUB__(v89, v90);
        v85 = v89 - v90;
        v86 = v78;
LABEL_97:
        if (v86)
        {
          goto LABEL_136;
        }

        v92 = *v66;
        v91 = v66[1];
        v78 = __OFSUB__(v91, v92);
        v93 = v91 - v92;
        if (v78)
        {
          goto LABEL_138;
        }

        if (v93 < v85)
        {
          goto LABEL_111;
        }

LABEL_104:
        if (v65 - 1 >= v62)
        {
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
          goto LABEL_148;
        }

        if (!*v129)
        {
          goto LABEL_151;
        }

        v97 = v24;
        v98 = v25;
        v99 = (v63 + 16 * (v65 - 1));
        v100 = *v99;
        v101 = v65;
        v102 = v63 + 16 * v65;
        v25 = *(v102 + 8);
        v103 = v133;
        sub_1C952EA4C(*v129 + *(v127 + 72) * *v99, *v129 + *(v127 + 72) * *v102, *v129 + *(v127 + 72) * v25, v132);
        v133 = v103;
        if (v103)
        {
          goto LABEL_113;
        }

        if (v25 < v100)
        {
          goto LABEL_126;
        }

        a4 = *(v98 + 16);
        if (v101 > a4)
        {
          goto LABEL_127;
        }

        *v99 = v100;
        v99[1] = v25;
        if (v101 >= a4)
        {
          goto LABEL_128;
        }

        v62 = a4 - 1;
        sub_1C964AD0C((v102 + 16), a4 - 1 - v101, v102);
        v25 = v98;
        *(v98 + 16) = a4 - 1;
        v24 = v97;
        v11 = v123;
        v14 = v124;
        if (a4 <= 2)
        {
          goto LABEL_111;
        }
      }

      v72 = v63 + 16 * v62;
      v73 = *(v72 - 64);
      v74 = *(v72 - 56);
      v78 = __OFSUB__(v74, v73);
      v75 = v74 - v73;
      if (v78)
      {
        goto LABEL_129;
      }

      v77 = *(v72 - 48);
      v76 = *(v72 - 40);
      v78 = __OFSUB__(v76, v77);
      v70 = v76 - v77;
      v71 = v78;
      if (v78)
      {
        goto LABEL_130;
      }

      v79 = v67[1];
      v80 = v79 - *v67;
      if (__OFSUB__(v79, *v67))
      {
        goto LABEL_132;
      }

      v78 = __OFADD__(v70, v80);
      v81 = v70 + v80;
      if (v78)
      {
        goto LABEL_135;
      }

      if (v81 >= v75)
      {
        v95 = *v66;
        v94 = v66[1];
        v78 = __OFSUB__(v94, v95);
        v96 = v94 - v95;
        if (v78)
        {
          goto LABEL_143;
        }

        if (v70 < v96)
        {
          v65 = v62 - 2;
        }

        goto LABEL_104;
      }

      goto LABEL_82;
    }

LABEL_111:
    v23 = v129[1];
    if (v24 >= v23)
    {
      goto LABEL_115;
    }
  }

  if (__OFADD__(v26, v115))
  {
    goto LABEL_147;
  }

  if (v26 + v115 >= v49)
  {
    v50 = v129[1];
  }

  else
  {
    v50 = v26 + v115;
  }

  if (v50 < v26)
  {
LABEL_148:
    __break(1u);
    goto LABEL_149;
  }

  if (v24 == v50)
  {
    goto LABEL_62;
  }

  v116 = v25;
  v51 = v24;
  v52 = *v129;
  v53 = *(v127 + 72);
  v54 = *v129 + v53 * (v51 - 1);
  v55 = -v53;
  v56 = v26 - v51;
  v132 = v51;
  v121 = v53;
  v57 = v52 + v51 * v53;
  v125 = v50;
LABEL_49:
  a4 = v57;
  v126 = v56;
  v128 = v54;
  while (1)
  {
    sub_1C9524958(a4, v14);
    sub_1C9524958(v54, v11);
    if (*v11 == *v14 && v11[1] == v14[1])
    {
      sub_1C95249BC(v11);
      sub_1C95249BC(v14);
LABEL_60:
      v54 = v128 + v121;
      v56 = v126 - 1;
      v57 += v121;
      if (++v132 == v125)
      {
        v24 = v125;
        v25 = v116;
        v26 = v120;
        goto LABEL_62;
      }

      goto LABEL_49;
    }

    v59 = sub_1C96A7DE4();
    sub_1C95249BC(v11);
    sub_1C95249BC(v14);
    if ((v59 & 1) == 0)
    {
      goto LABEL_60;
    }

    if (!v52)
    {
      break;
    }

    v60 = v134;
    sub_1C9524A18(a4, v134);
    swift_arrayInitWithTakeFrontToBack();
    sub_1C9524A18(v60, v54);
    v54 += v55;
    a4 += v55;
    v47 = __CFADD__(v56++, 1);
    if (v47)
    {
      goto LABEL_60;
    }
  }

  __break(1u);
LABEL_151:
  __break(1u);
LABEL_152:
  __break(1u);
LABEL_153:
  __break(1u);
LABEL_154:
  __break(1u);
LABEL_155:
  __break(1u);
}

void sub_1C952EA4C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v53 = type metadata accessor for NotificationSubscription(0);
  MEMORY[0x1EEE9AC00](v53);
  v52 = (&v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v9);
  v51 = (&v47 - v10);
  MEMORY[0x1EEE9AC00](v11);
  v13 = (&v47 - v12);
  MEMORY[0x1EEE9AC00](v14);
  v16 = (&v47 - v15);
  v18 = *(v17 + 72);
  if (!v18)
  {
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
    return;
  }

  v19 = a2 - a1;
  v20 = a2 - a1 == 0x8000000000000000 && v18 == -1;
  if (v20)
  {
    goto LABEL_72;
  }

  v21 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_73;
  }

  v23 = v19 / v18;
  v56 = a1;
  v55 = a4;
  v24 = v21 / v18;
  if (v19 / v18 < v21 / v18)
  {
    sub_1C9522984(a1, v19 / v18, a4);
    v25 = a4 + v23 * v18;
    v54 = v25;
    while (1)
    {
      if (a4 >= v25 || a2 >= a3)
      {
        goto LABEL_70;
      }

      sub_1C9524958(a2, v16);
      sub_1C9524958(a4, v13);
      if (*v13 == *v16 && v13[1] == v16[1])
      {
        sub_1C95249BC(v13);
        sub_1C95249BC(v16);
      }

      else
      {
        v28 = sub_1C96A7DE4();
        sub_1C95249BC(v13);
        sub_1C95249BC(v16);
        if (v28)
        {
          if (a1 < a2 || a1 >= a2 + v18)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v18;
          goto LABEL_40;
        }
      }

      if (a1 < a4 || a1 >= a4 + v18)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (a1 != a4)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v55 = a4 + v18;
      a4 += v18;
LABEL_40:
      a1 += v18;
      v56 = a1;
    }
  }

  sub_1C9522984(a2, v21 / v18, a4);
  v31 = a4 + v24 * v18;
  v32 = -v18;
  v33 = v31;
LABEL_42:
  v34 = a2 + v32;
  v35 = a3;
  v47 = v33;
  v49 = a2 + v32;
  v50 = a2;
  while (1)
  {
    if (v31 <= a4)
    {
      v56 = a2;
      v54 = v33;
      goto LABEL_70;
    }

    if (a2 <= a1)
    {
      break;
    }

    v48 = v33;
    v36 = v31 + v32;
    v37 = v51;
    sub_1C9524958(v31 + v32, v51);
    v38 = v34;
    v39 = v52;
    sub_1C9524958(v38, v52);
    if (*v39 == *v37 && v39[1] == v37[1])
    {
      v41 = 0;
    }

    else
    {
      v41 = sub_1C96A7DE4();
    }

    a3 = v35 + v32;
    sub_1C95249BC(v52);
    sub_1C95249BC(v51);
    if (v41)
    {
      if (v35 < v50 || a3 >= v50)
      {
        v44 = v49;
        swift_arrayInitWithTakeFrontToBack();
        v33 = v48;
        a2 = v44;
      }

      else
      {
        v45 = v49;
        v33 = v48;
        a2 = v49;
        if (v35 != v50)
        {
          v46 = v48;
          swift_arrayInitWithTakeBackToFront();
          a2 = v45;
          v33 = v46;
        }
      }

      goto LABEL_42;
    }

    if (v35 < v31 || a3 >= v31)
    {
      swift_arrayInitWithTakeFrontToBack();
      v35 += v32;
      v31 += v32;
      v33 = v36;
      v34 = v49;
      a2 = v50;
    }

    else
    {
      v33 = v31 + v32;
      v20 = v31 == v35;
      v35 += v32;
      v31 += v32;
      v34 = v49;
      a2 = v50;
      if (!v20)
      {
        swift_arrayInitWithTakeBackToFront();
        v35 = a3;
        v31 = v36;
        v33 = v36;
      }
    }
  }

  v56 = a2;
  v54 = v47;
LABEL_70:
  sub_1C952EEA8(&v56, &v55, &v54);
}

uint64_t sub_1C952EEA8(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = type metadata accessor for NotificationSubscription(0);
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_20;
  }

  v9 = v4 + (v5 - v4) / v7 * v7;
  if (v3 < v4 || v3 >= v9)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_1C952EF88(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5218, &qword_1C96AD3E0);
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_20;
  }

  v9 = v4 + (v5 - v4) / v7 * v7;
  if (v3 < v4 || v3 >= v9)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_1C952F074@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for LocationManager.CurrentLocationResolution(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_2();
  v5 = v3 - v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v14 - v7;
  type metadata accessor for LocationManager.CurrentLocationStatus(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_22_6();
  OUTLINED_FUNCTION_2_18();
  sub_1C953AE2C();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    OUTLINED_FUNCTION_1_19();
    OUTLINED_FUNCTION_32_0();
    sub_1C949A6D4();
    OUTLINED_FUNCTION_2_14();
    if (swift_getEnumCaseMultiPayload() == 1)
    {

      OUTLINED_FUNCTION_14_10();
      goto LABEL_7;
    }

    goto LABEL_8;
  }

  if (EnumCaseMultiPayload != 1)
  {
LABEL_9:
    v11 = 1;
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_1_19();
  sub_1C949A6D4();
  if (swift_getEnumCaseMultiPayload() != 1)
  {
LABEL_8:
    OUTLINED_FUNCTION_0_22();
    sub_1C953AE88();
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_14_10();
LABEL_7:
  sub_1C949A6D4();
  v11 = 0;
LABEL_10:
  v12 = type metadata accessor for Location(0);
  return __swift_storeEnumTagSinglePayload(a1, v11, 1, v12);
}

uint64_t sub_1C952F24C()
{
  type metadata accessor for LocationManager.CurrentLocationResolution(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_2();
  v3 = v1 - v2;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v11 - v5;
  type metadata accessor for LocationManager.CurrentLocationStatus(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_35_2();
  OUTLINED_FUNCTION_2_18();
  OUTLINED_FUNCTION_32_0();
  sub_1C953AE2C();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    OUTLINED_FUNCTION_1_19();
    OUTLINED_FUNCTION_2_14();
    sub_1C949A6D4();
    OUTLINED_FUNCTION_38();
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      return *v6;
    }

    v9 = *&v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5440, &qword_1C96ADB08) + 48)];
    OUTLINED_FUNCTION_6_14();
LABEL_7:
    sub_1C953AE88();
    return v9;
  }

  v9 = 0;
  if (EnumCaseMultiPayload == 1)
  {
    OUTLINED_FUNCTION_1_19();
    sub_1C949A6D4();
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      return *v3;
    }

    v9 = *(v3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5440, &qword_1C96ADB08) + 48));
    OUTLINED_FUNCTION_6_14();
    goto LABEL_7;
  }

  return v9;
}

uint64_t sub_1C952F3E0()
{
  v2 = OUTLINED_FUNCTION_28_4();
  type metadata accessor for LocationManager.CurrentLocationResolution(v2);
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_2();
  v6 = v4 - v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v66 - v8;
  v68 = type metadata accessor for LocationManager.CurrentLocationStatus(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_35_2();
  if (qword_1EDB7FDC8 != -1)
  {
    OUTLINED_FUNCTION_7_0(&qword_1EDB7FDC8);
  }

  v11 = sub_1C96A6154();
  __swift_project_value_buffer(v11, qword_1EDB7FDD0);
  v12 = v0;
  v13 = sub_1C96A6134();
  v14 = sub_1C96A76A4();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = OUTLINED_FUNCTION_8_4();
    v67 = v6;
    v17 = v16;
    v70 = v12;
    v71 = v16;
    OUTLINED_FUNCTION_24_6(7.2225e-34);
    sub_1C946B5D0(0, &qword_1EDB7FDB0, 0x1E6985C40);
    v66 = v1;
    v18 = v12;
    v19 = sub_1C96A70C4();
    v21 = sub_1C9484164(v19, v20, &v71);

    *(v15 + 14) = v21;
    _os_log_impl(&dword_1C945E000, v13, v14, "Received a new current location; evaluating whether to reverse geocode... location=%{private,mask.hash}s", v15, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v17);
    v6 = v67;
    OUTLINED_FUNCTION_26();
    OUTLINED_FUNCTION_26();
  }

  OUTLINED_FUNCTION_2_18();
  sub_1C953AE2C();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v44 = sub_1C96A6134();
    v45 = sub_1C96A76A4();
    if (OUTLINED_FUNCTION_14_1(v45))
    {
      *OUTLINED_FUNCTION_29() = 0;
      OUTLINED_FUNCTION_28_3(&dword_1C945E000, v46, v47, "Last known state is from cache, so we should revGeo the new current location");
      OUTLINED_FUNCTION_26();
    }

    OUTLINED_FUNCTION_3_9();
    goto LABEL_23;
  }

  if (EnumCaseMultiPayload != 1)
  {
    v48 = sub_1C96A6134();
    v49 = sub_1C96A76A4();
    if (OUTLINED_FUNCTION_14_1(v49))
    {
      *OUTLINED_FUNCTION_29() = 0;
      OUTLINED_FUNCTION_28_3(&dword_1C945E000, v50, v51, "Last known state is not determined, so we should revGeo the new current location");
      OUTLINED_FUNCTION_26();
    }

    return 1;
  }

  OUTLINED_FUNCTION_1_19();
  sub_1C949A6D4();
  sub_1C953AE2C();
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    OUTLINED_FUNCTION_0_22();
    sub_1C953AE88();
    v52 = sub_1C96A6134();
    v53 = sub_1C96A76A4();
    if (OUTLINED_FUNCTION_14_1(v53))
    {
      *OUTLINED_FUNCTION_29() = 0;
      OUTLINED_FUNCTION_28_3(&dword_1C945E000, v54, v55, "Last known state is from a current session but looks to have never been revGeo'ed, so we should revGeo the new current location");
      OUTLINED_FUNCTION_26();
    }

    OUTLINED_FUNCTION_0_22();
    goto LABEL_23;
  }

  v23 = *(v6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5440, &qword_1C96ADB08) + 48));
  [v23 coordinate];
  v25 = v24;
  v27 = v26;
  [v12 coordinate];
  if (vabdd_f64(v27, v29) > 0.001 || vabdd_f64(v25, v28) > 0.001)
  {
    v30 = v12;
    v31 = v23;
    v32 = sub_1C96A6134();
    v33 = sub_1C96A76A4();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v69 = v9;
      v70 = v30;
      v71 = v35;
      *v34 = 141558787;
      *(v34 + 4) = 1752392040;
      *(v34 + 12) = 2081;
      sub_1C946B5D0(0, &qword_1EDB7FDB0, 0x1E6985C40);
      v36 = v30;
      v37 = sub_1C96A70C4();
      v39 = sub_1C9484164(v37, v38, &v71);

      *(v34 + 14) = v39;
      *(v34 + 22) = 2160;
      *(v34 + 24) = 1752392040;
      *(v34 + 32) = 2081;
      v70 = v31;
      v40 = v31;
      v41 = sub_1C96A70C4();
      v43 = sub_1C9484164(v41, v42, &v71);

      *(v34 + 34) = v43;
      _os_log_impl(&dword_1C945E000, v32, v33, "The new location is different enough from the one we currently have, so we should revGeo the new current location. mostRecentLocation=%{private,mask.hash}s, lastObtainedLocation=%{private,mask.hash}s.", v34, 0x2Au);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_26();
      OUTLINED_FUNCTION_26();
    }

    else
    {
    }

    OUTLINED_FUNCTION_0_22();
    sub_1C953AE88();
    OUTLINED_FUNCTION_6_14();
LABEL_23:
    sub_1C953AE88();
    return 1;
  }

  v57 = v12;
  v58 = sub_1C96A6134();
  v59 = sub_1C96A76A4();

  if (os_log_type_enabled(v58, v59))
  {
    v60 = swift_slowAlloc();
    v61 = OUTLINED_FUNCTION_8_4();
    v70 = v57;
    v71 = v61;
    OUTLINED_FUNCTION_24_6(7.2225e-34);
    sub_1C946B5D0(0, &qword_1EDB7FDB0, 0x1E6985C40);
    v62 = v57;
    v63 = sub_1C96A70C4();
    v65 = sub_1C9484164(v63, v64, &v71);

    *(v60 + 14) = v65;
    _os_log_impl(&dword_1C945E000, v58, v59, "The new location almost equals one we currently have. location=%{private,mask.hash}s, so we should not revGeo the new current location", v60, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v61);
    OUTLINED_FUNCTION_26();
    OUTLINED_FUNCTION_26();
  }

  else
  {
  }

  OUTLINED_FUNCTION_0_22();
  sub_1C953AE88();
  OUTLINED_FUNCTION_6_14();
  sub_1C953AE88();
  return 0;
}

uint64_t sub_1C952FA6C()
{
  sub_1C96A3D04();
  sub_1C96A55D4();

  return v1;
}

uint64_t sub_1C952FAB8(char a1)
{
  sub_1C96A3D04();
  sub_1C96A55E4();
}

uint64_t sub_1C952FB04(void *a1)
{
  sub_1C96A3D04();
  sub_1C96A55D4();
}

uint64_t sub_1C952FB50(uint64_t a1, void *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A52A0, &qword_1C96AD9B0);
  v4 = OUTLINED_FUNCTION_7(v3);
  MEMORY[0x1EEE9AC00](v4);
  sub_1C948C8F0();
  sub_1C96A3D04();
  sub_1C96A55E4();

  return sub_1C9470AFC(a1, &qword_1EC3A52A0, &qword_1C96AD9B0);
}

void LocationManager.__allocating_init(geocodeManager:locationCacheManager:)()
{
  v1 = objc_allocWithZone(v0);
  OUTLINED_FUNCTION_38();
  LocationManager.init(geocodeManager:locationCacheManager:)();
}

{
  OUTLINED_FUNCTION_103();
  v3 = v2;
  OUTLINED_FUNCTION_28_4();
  sub_1C96A5174();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_22_6();
  sub_1C9469B6C(v0, v8);
  v5 = swift_allocObject();
  sub_1C94670AC(v8, v5 + 16);
  *&v8[0] = MEMORY[0x1E69E7CC0];
  sub_1C946F878(&qword_1EDB7D098, 255, MEMORY[0x1E69D6420], MEMORY[0x1E69D6428]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5350, &qword_1C96AD9E0);
  sub_1C9469C60(&qword_1EDB7CE98, &unk_1EC3A5350, &qword_1C96AD9E0);
  sub_1C96A79E4();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5360, &qword_1C96AD9E8);
  OUTLINED_FUNCTION_23(v6);
  sub_1C96A5424();
  sub_1C9469B6C(v3, v8);
  v7 = objc_allocWithZone(v1);
  LocationManager.init(geocodeManager:locationCacheManager:)();
  __swift_destroy_boxed_opaque_existential_1Tm(v3);
  __swift_destroy_boxed_opaque_existential_1Tm(v0);
  OUTLINED_FUNCTION_101();
}

void LocationManager.init(geocodeManager:locationCacheManager:)()
{
  OUTLINED_FUNCTION_103();
  v1 = v0;
  v63 = v3;
  v64 = v2;
  ObjectType = swift_getObjectType();
  v58 = sub_1C96A7724();
  OUTLINED_FUNCTION_1();
  v65 = v4;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_14();
  v60 = v7 - v6;
  OUTLINED_FUNCTION_15_4();
  v61 = sub_1C96A65E4();
  OUTLINED_FUNCTION_1();
  v66 = v8;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_14();
  v59 = v11 - v10;
  v12 = OUTLINED_FUNCTION_15_4();
  v57 = type metadata accessor for LocationManager.CurrentLocationStatus(v12);
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_2();
  v56 = v14 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v55 = &v54 - v17;
  OUTLINED_FUNCTION_15_4();
  v18 = sub_1C96A5114();
  v19 = OUTLINED_FUNCTION_7(v18);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_14();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A52A0, &qword_1C96AD9B0);
  v21 = OUTLINED_FUNCTION_7(v20);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v22);
  *&v0[OBJC_IVAR____TtC11WeatherCore15LocationManager_locationManager] = 0;
  v0[OBJC_IVAR____TtC11WeatherCore15LocationManager_isUpdatingLocation] = 0;
  v0[OBJC_IVAR____TtC11WeatherCore15LocationManager_hasReducedLocationUpdates] = 0;
  v23 = OBJC_IVAR____TtC11WeatherCore15LocationManager__firstRevGeoComplete;
  LOBYTE(v68) = 0;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A52C8, &qword_1C96AD9B8);
  OUTLINED_FUNCTION_23(v24);
  *&v0[v23] = sub_1C96A55B4();
  v25 = OBJC_IVAR____TtC11WeatherCore15LocationManager_logger;
  sub_1C946B5D0(0, &unk_1EDB7CD20, 0x1E69E9BF8);
  *&v0[v25] = sub_1C96A7904();
  v26 = OBJC_IVAR____TtC11WeatherCore15LocationManager__locationUpdateSignpostID;
  sub_1C96A60A4();
  OUTLINED_FUNCTION_29_2();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A52E8, &qword_1C96AD9C0);
  v28 = OUTLINED_FUNCTION_23(v27);
  sub_1C96A55B4();
  v29 = OUTLINED_FUNCTION_66();
  sub_1C9470AFC(v29, &qword_1EC3A52A0, &qword_1C96AD9B0);
  *&v1[v26] = v28;
  v30 = OBJC_IVAR____TtC11WeatherCore15LocationManager__authorizationSignpostID;
  OUTLINED_FUNCTION_29_2();
  v31 = swift_allocObject();
  sub_1C96A55B4();
  v32 = OUTLINED_FUNCTION_66();
  sub_1C9470AFC(v32, &qword_1EC3A52A0, &qword_1C96AD9B0);
  *&v1[v30] = v31;
  v33 = MEMORY[0x1E69E7CC0];
  *&v1[OBJC_IVAR____TtC11WeatherCore15LocationManager_observers] = MEMORY[0x1E69E7CC0];
  v34 = v33;
  v35 = OBJC_IVAR____TtC11WeatherCore15LocationManager_lock;
  sub_1C96A5104();
  v36 = sub_1C96A5134();
  OUTLINED_FUNCTION_23(v36);
  *&v1[v35] = sub_1C96A5124();
  v37 = OBJC_IVAR____TtC11WeatherCore15LocationManager__authorizationState;
  LODWORD(v68) = 0;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5310, &qword_1C96AD9C8);
  OUTLINED_FUNCTION_23(v38);
  *&v1[v37] = sub_1C96A55B4();
  v39 = OBJC_IVAR____TtC11WeatherCore15LocationManager__currentLocationStatus;
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_2_18();
  sub_1C953AE2C();
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5320, &unk_1C96AD9D0);
  OUTLINED_FUNCTION_23(v40);
  OUTLINED_FUNCTION_66();
  v41 = sub_1C96A55B4();
  OUTLINED_FUNCTION_3_9();
  sub_1C953AE88();
  v54 = v1;
  *&v1[v39] = v41;
  v42 = v63;
  *&v1[OBJC_IVAR____TtC11WeatherCore15LocationManager_geocodeManager] = v64;
  sub_1C9469B6C(v42, &v1[OBJC_IVAR____TtC11WeatherCore15LocationManager_locationCacheManager]);
  v57 = sub_1C946B5D0(0, &qword_1EDB7CDB0, 0x1E69E9610);
  sub_1C96A3D04();
  v43 = v59;
  sub_1C96A65A4();
  v68 = v34;
  v56 = sub_1C946F878(&qword_1EDB7CDC0, 255, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4A68, &qword_1C96AA320);
  sub_1C9469C60(&qword_1EDB7CE50, &qword_1EC3A4A68, &qword_1C96AA320);
  v44 = v60;
  v45 = v58;
  OUTLINED_FUNCTION_33_2();
  sub_1C96A79E4();
  v46 = sub_1C96A7714();
  v47 = *(v65 + 8);
  v65 += 8;
  v47(v44, v45);
  v48 = *(v66 + 8);
  v66 += 8;
  v48(v43, v61);
  v49 = v54;
  *&v54[OBJC_IVAR____TtC11WeatherCore15LocationManager_notifyQueue] = v46;
  sub_1C96A65A4();
  v68 = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_33_2();
  v50 = v45;
  sub_1C96A79E4();
  v51 = sub_1C96A7714();
  v47(v44, v50);
  v52 = OUTLINED_FUNCTION_2_14();
  (v48)(v52);
  *&v49[OBJC_IVAR____TtC11WeatherCore15LocationManager_locationActivityQueue] = v51;
  v67.receiver = v49;
  v67.super_class = ObjectType;
  v53 = objc_msgSendSuper2(&v67, sel_init);
  sub_1C9530314();

  __swift_destroy_boxed_opaque_existential_1Tm(v63);
  OUTLINED_FUNCTION_101();
}

uint64_t sub_1C9530314()
{
  v1 = sub_1C96A6564();
  v16 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1C96A65E4();
  v4 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *&v0[OBJC_IVAR____TtC11WeatherCore15LocationManager_locationActivityQueue];
  v8 = *&v0[OBJC_IVAR____TtC11WeatherCore15LocationManager_logger];
  v9 = swift_allocObject();
  v9[2] = v0;
  v9[3] = v7;
  v9[4] = v8;
  aBlock[4] = sub_1C953B084;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C946FCF8;
  aBlock[3] = &block_descriptor_141;
  v10 = _Block_copy(aBlock);
  v11 = v0;
  v7;
  v12 = v8;
  sub_1C96A6594();
  v17 = MEMORY[0x1E69E7CC0];
  sub_1C946F878(&qword_1EDB7CF40, 255, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5370, &qword_1C96AD9F0);
  sub_1C9469C60(&qword_1EDB7CE80, &unk_1EC3A5370, &qword_1C96AD9F0);
  sub_1C96A79E4();
  MEMORY[0x1CCA8D100](0, v6, v3, v10);
  _Block_release(v10);
  (*(v16 + 8))(v3, v1);
  (*(v4 + 8))(v6, v15);
}

void *sub_1C95307CC(void *a1, void *a2, void *a3)
{
  v6 = sub_1C96A60A4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_allocWithZone(MEMORY[0x1E695FBE8]);
  v10 = a2;
  v11 = a1;
  v12 = sub_1C953A038(0xD000000000000011, 0x80000001C96CA4E0, a1, a2);
  v13 = *&v11[OBJC_IVAR____TtC11WeatherCore15LocationManager_locationManager];
  *&v11[OBJC_IVAR____TtC11WeatherCore15LocationManager_locationManager] = v12;

  sub_1C96A7804();
  v14 = a3;
  sub_1C96A6084();
  sub_1C96A6074();
  (*(v7 + 8))(v9, v6);
  sub_1C9530950();
  return sub_1C9530DE4(0, v15);
}

uint64_t sub_1C9530950()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5458, &qword_1C96B3040);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v25 - v3;
  v27 = type metadata accessor for CachedCurrentLocation(0);
  MEMORY[0x1EEE9AC00](v27);
  v25 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1C96A60A4();
  v6 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1C96A6664();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = (&v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_1EDB7FDC8 != -1)
  {
    swift_once();
  }

  v13 = sub_1C96A6154();
  __swift_project_value_buffer(v13, qword_1EDB7FDD0);
  v14 = sub_1C96A6134();
  v15 = sub_1C96A76A4();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_1C945E000, v14, v15, "Prewarming cache ...", v16, 2u);
    MEMORY[0x1CCA8E3D0](v16, -1, -1);
  }

  v17 = *&v1[OBJC_IVAR____TtC11WeatherCore15LocationManager_locationActivityQueue];
  *v12 = v17;
  (*(v10 + 104))(v12, *MEMORY[0x1E69E8020], v9);
  v18 = v17;
  LOBYTE(v17) = sub_1C96A66A4();
  result = (*(v10 + 8))(v12, v9);
  if (v17)
  {
    sub_1C96A7804();
    v20 = *&v1[OBJC_IVAR____TtC11WeatherCore15LocationManager_logger];
    sub_1C96A6084();
    sub_1C96A6074();
    (*(v6 + 8))(v8, v26);
    v21 = *&v1[OBJC_IVAR____TtC11WeatherCore15LocationManager_locationCacheManager + 24];
    v22 = *&v1[OBJC_IVAR____TtC11WeatherCore15LocationManager_locationCacheManager + 32];
    __swift_project_boxed_opaque_existential_1(&v1[OBJC_IVAR____TtC11WeatherCore15LocationManager_locationCacheManager], v21);
    (*(v22 + 8))(v21, v22);
    if (__swift_getEnumTagSinglePayload(v4, 1, v27) == 1)
    {
      return sub_1C9470AFC(v4, &qword_1EC3A5458, &qword_1C96B3040);
    }

    else
    {
      v23 = v25;
      v24 = sub_1C949A6D4();
      v28 = *&v1[OBJC_IVAR____TtC11WeatherCore15LocationManager_lock];
      MEMORY[0x1EEE9AC00](v24);
      *(&v25 - 2) = v23;
      *(&v25 - 1) = v1;
      sub_1C96A5134();
      sub_1C96A3D04();
      sub_1C96A5554();

      return sub_1C953AE88();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_1C9530DE4(char a1, __n128 a2)
{
  v3 = v2;
  v5 = sub_1C96A6664();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = (&v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(v3 + OBJC_IVAR____TtC11WeatherCore15LocationManager_locationActivityQueue);
  *v9 = v10;
  (*(v6 + 104))(v9, *MEMORY[0x1E69E8020], v5, v7);
  v11 = v10;
  LOBYTE(v10) = sub_1C96A66A4();
  (*(v6 + 8))(v9, v5);
  if (v10)
  {
    if (qword_1EDB7FDC8 == -1)
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
  v12 = sub_1C96A6154();
  __swift_project_value_buffer(v12, qword_1EDB7FDD0);
  v13 = sub_1C96A6134();
  v14 = sub_1C96A76A4();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 67109120;
    *(v15 + 4) = a1 & 1;
    _os_log_impl(&dword_1C945E000, v13, v14, "Configure Location Manager. ReducedUpdates=%{BOOL}d", v15, 8u);
    MEMORY[0x1CCA8E3D0](v15, -1, -1);
  }

  result = *(v3 + OBJC_IVAR____TtC11WeatherCore15LocationManager_locationManager);
  if (a1)
  {
    if (!result)
    {
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    v17 = 1100.0;
LABEL_10:
    [result setDistanceFilter_];
    v18 = OBJC_IVAR____TtC11WeatherCore15LocationManager_locationManager;
    result = *(v3 + OBJC_IVAR____TtC11WeatherCore15LocationManager_locationManager);
    if (result)
    {
      [result setDesiredAccuracy_];
      *(v3 + OBJC_IVAR____TtC11WeatherCore15LocationManager_hasReducedLocationUpdates) = a1 & 1;
      result = *(v3 + v18);
      if (result)
      {
        return LocationManager.authorizationState.setter([result authorizationStatus]);
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_17;
  }

  if (result)
  {
    v17 = 500.0;
    goto LABEL_10;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t LocationManager.authorizationState.getter()
{
  sub_1C96A3D04();
  sub_1C96A55D4();

  return v1;
}

uint64_t LocationManager.authorizationState.setter(int a1)
{
  sub_1C96A3D04();
  sub_1C96A55E4();
}

uint64_t (*LocationManager.authorizationState.modify(uint64_t *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v3[4] = *(v1 + OBJC_IVAR____TtC11WeatherCore15LocationManager__authorizationState);
  sub_1C96A3D04();
  v3[5] = sub_1C96A55C4();
  return sub_1C9531168;
}

void sub_1C9531168(void *a1)
{
  v1 = *a1;
  (*(*a1 + 40))(*a1, 0);

  free(v1);
}

void *__swift_coroFrameAllocStub(size_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

uint64_t sub_1C95311F0()
{
  sub_1C96A3D04();
  sub_1C96A55D4();
}

uint64_t sub_1C9531240()
{
  v0 = OUTLINED_FUNCTION_28_4();
  v1 = type metadata accessor for LocationManager.CurrentLocationStatus(v0);
  v2 = OUTLINED_FUNCTION_7(v1);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_2_18();
  sub_1C953AE2C();
  sub_1C96A3D04();
  sub_1C96A55E4();

  OUTLINED_FUNCTION_3_9();
  return sub_1C953AE88();
}

uint64_t LocationManager.currentLocation.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for LocationManager.CurrentLocationStatus(0);
  v3 = OUTLINED_FUNCTION_7(v2);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_35_2();
  sub_1C96A50E4();
  sub_1C95311F0();
  sub_1C952F074(a1);
  OUTLINED_FUNCTION_3_9();
  sub_1C953AE88();
  return sub_1C96A50F4();
}

uint64_t LocationManager.currentCLLocation.getter()
{
  v0 = type metadata accessor for LocationManager.CurrentLocationStatus(0);
  v1 = OUTLINED_FUNCTION_7(v0);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_14();
  sub_1C96A50E4();
  sub_1C95311F0();
  v2 = sub_1C952F24C();
  OUTLINED_FUNCTION_3_9();
  sub_1C953AE88();
  sub_1C96A50F4();
  return v2;
}

id LocationManager.limitsPrecision.getter()
{
  result = *(v0 + OBJC_IVAR____TtC11WeatherCore15LocationManager_locationManager);
  if (result)
  {
    return [result _limitsPrecision];
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall LocationManager.requestAuthorization()()
{
  OUTLINED_FUNCTION_103();
  v2 = sub_1C96A6564();
  OUTLINED_FUNCTION_1();
  v18 = v3;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_35_2();
  sub_1C96A65E4();
  OUTLINED_FUNCTION_1();
  v16 = v6;
  v17 = v5;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_22_6();
  if (qword_1EDB7FDC8 != -1)
  {
    OUTLINED_FUNCTION_7_0(&qword_1EDB7FDC8);
  }

  v7 = sub_1C96A6154();
  __swift_project_value_buffer(v7, qword_1EDB7FDD0);
  v8 = sub_1C96A6134();
  v9 = sub_1C96A76A4();
  if (OUTLINED_FUNCTION_14_7(v9))
  {
    v10 = OUTLINED_FUNCTION_29();
    *v10 = 0;
    _os_log_impl(&dword_1C945E000, v8, v9, "Requesting location permissions for 'when in use'", v10, 2u);
    OUTLINED_FUNCTION_26();
  }

  OUTLINED_FUNCTION_23_0();
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v19[4] = sub_1C953A030;
  v19[5] = v11;
  OUTLINED_FUNCTION_13_7();
  OUTLINED_FUNCTION_12_11(COERCE_DOUBLE(1107296256));
  v19[2] = v12;
  v19[3] = &block_descriptor_2;
  v13 = _Block_copy(v19);
  sub_1C96A3D04();
  sub_1C96A6594();
  OUTLINED_FUNCTION_5_14();
  sub_1C946F878(v14, 255, v15, MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5370, &qword_1C96AD9F0);
  sub_1C9469C60(&qword_1EDB7CE80, &unk_1EC3A5370, &qword_1C96AD9F0);
  OUTLINED_FUNCTION_33_2();
  sub_1C96A79E4();
  MEMORY[0x1CCA8D100](0, v1, v0, v13);
  _Block_release(v13);
  (*(v18 + 8))(v0, v2);
  (*(v16 + 8))(v1, v17);

  OUTLINED_FUNCTION_101();
}

char *sub_1C9531768(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A52A0, &qword_1C96AD9B0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v13 - v2;
  v4 = sub_1C96A60A4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = result;
    v10 = OBJC_IVAR____TtC11WeatherCore15LocationManager_logger;
    v11 = *&result[OBJC_IVAR____TtC11WeatherCore15LocationManager_logger];
    sub_1C96A6084();
    (*(v5 + 16))(v3, v7, v4);
    __swift_storeEnumTagSinglePayload(v3, 0, 1, v4);
    sub_1C952FB50(v3, &OBJC_IVAR____TtC11WeatherCore15LocationManager__authorizationSignpostID);
    sub_1C96A77F4();
    v12 = *&v9[v10];
    sub_1C96A6074();

    result = *&v9[OBJC_IVAR____TtC11WeatherCore15LocationManager_locationManager];
    if (result)
    {
      [result requestWhenInUseAuthorization];

      return (*(v5 + 8))(v7, v4);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

Swift::Void __swiftcall LocationManager.requestAlwaysAuthorization()()
{
  OUTLINED_FUNCTION_103();
  v2 = v0;
  sub_1C96A6564();
  OUTLINED_FUNCTION_1();
  v37 = v4;
  v38 = v3;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_14();
  v35 = v6 - v5;
  OUTLINED_FUNCTION_15_4();
  v36 = sub_1C96A65E4();
  OUTLINED_FUNCTION_1();
  v34 = v7;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_22_6();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A52A0, &qword_1C96AD9B0);
  v10 = OUTLINED_FUNCTION_7(v9);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v34 - v11;
  v13 = sub_1C96A60A4();
  OUTLINED_FUNCTION_1();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_14();
  v19 = v18 - v17;
  v20 = *&v2[OBJC_IVAR____TtC11WeatherCore15LocationManager_logger];
  sub_1C96A6084();
  (*(v15 + 16))(v12, v19, v13);
  __swift_storeEnumTagSinglePayload(v12, 0, 1, v13);
  sub_1C952FB50(v12, &OBJC_IVAR____TtC11WeatherCore15LocationManager__authorizationSignpostID);
  sub_1C96A77F4();
  sub_1C96A6074();
  if (qword_1EDB7FDC8 != -1)
  {
    OUTLINED_FUNCTION_7_0(&qword_1EDB7FDC8);
  }

  v21 = sub_1C96A6154();
  __swift_project_value_buffer(v21, qword_1EDB7FDD0);
  v22 = sub_1C96A6134();
  v23 = sub_1C96A76A4();
  if (OUTLINED_FUNCTION_14_7(v23))
  {
    v24 = OUTLINED_FUNCTION_29();
    *v24 = 0;
    _os_log_impl(&dword_1C945E000, v22, v23, "Requesting location permissions for 'always'", v24, 2u);
    OUTLINED_FUNCTION_26();
  }

  OUTLINED_FUNCTION_23_0();
  v25 = swift_allocObject();
  *(v25 + 16) = v2;
  v40[4] = sub_1C953A0C4;
  v40[5] = v25;
  OUTLINED_FUNCTION_13_7();
  OUTLINED_FUNCTION_12_11(COERCE_DOUBLE(1107296256));
  v40[2] = v26;
  v40[3] = &block_descriptor_9;
  v27 = _Block_copy(v40);
  v28 = v2;
  sub_1C96A6594();
  v39 = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_5_14();
  sub_1C946F878(v29, 255, v30, MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5370, &qword_1C96AD9F0);
  sub_1C9469C60(&qword_1EDB7CE80, &unk_1EC3A5370, &qword_1C96AD9F0);
  v31 = v35;
  OUTLINED_FUNCTION_33_2();
  sub_1C96A79E4();
  MEMORY[0x1CCA8D100](0, v1, v31, v27);
  _Block_release(v27);
  v32 = OUTLINED_FUNCTION_38();
  v33(v32);
  (*(v34 + 8))(v1, v36);
  (*(v15 + 8))(v19, v13);

  OUTLINED_FUNCTION_101();
}

id sub_1C9531D88(uint64_t a1)
{
  result = *(a1 + OBJC_IVAR____TtC11WeatherCore15LocationManager_locationManager);
  if (result)
  {
    return [result requestAlwaysAuthorization];
  }

  __break(1u);
  return result;
}

void LocationManager.addObserver(_:)()
{
  OUTLINED_FUNCTION_103();
  v27 = v1;
  v28 = v2;
  sub_1C96A6564();
  OUTLINED_FUNCTION_1();
  v25 = v4;
  v26 = v3;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_14();
  v24 = v6 - v5;
  OUTLINED_FUNCTION_15_4();
  sub_1C96A65E4();
  OUTLINED_FUNCTION_1();
  v22 = v8;
  v23 = v7;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_14();
  v21 = v10 - v9;
  sub_1C96A50E4();
  v11 = OBJC_IVAR____TtC11WeatherCore15LocationManager_observers;
  swift_beginAccess();
  v12 = *&v0[v11];
  v29[0] = MEMORY[0x1E69E7CC0];
  v13 = sub_1C946D04C();
  sub_1C96A53C4();
  for (i = 0; ; ++i)
  {
    if (v13 == i)
    {

      *&v0[v11] = v29[0];

      type metadata accessor for LocationManagerObserverProxy();
      swift_allocObject();
      v15 = swift_unknownObjectRetain();
      sub_1C94AC734(v15, v28);
      v16 = swift_beginAccess();
      MEMORY[0x1CCA8CC10](v16);
      sub_1C94AC1D4(*((*&v0[v11] & 0xFFFFFFFFFFFFFF8) + 0x10));
      OUTLINED_FUNCTION_38();
      sub_1C96A7314();
      swift_endAccess();
      sub_1C96A50F4();
      OUTLINED_FUNCTION_23_0();
      v17 = swift_allocObject();
      *(v17 + 16) = v0;
      v29[4] = sub_1C953A0CC;
      v29[5] = v17;
      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 1107296256;
      v29[2] = sub_1C946FCF8;
      v29[3] = &block_descriptor_15;
      v18 = _Block_copy(v29);
      v0;
      sub_1C96A6594();
      OUTLINED_FUNCTION_5_14();
      sub_1C946F878(v19, 255, v20, MEMORY[0x1E69E7F70]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5370, &qword_1C96AD9F0);
      sub_1C9469C60(&qword_1EDB7CE80, &unk_1EC3A5370, &qword_1C96AD9F0);
      sub_1C96A79E4();
      MEMORY[0x1CCA8D100](0, v21, v24, v18);
      _Block_release(v18);
      (*(v25 + 8))(v24, v26);
      (*(v22 + 8))(v21, v23);

      sub_1C9532BDC(v27, v28);
      OUTLINED_FUNCTION_101();
      return;
    }

    if ((v12 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1CCA8D440](i, v12);
    }

    else
    {
      if (i >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_14;
      }

      sub_1C96A3D04();
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_unknownObjectRelease();
      sub_1C96A7B14();
      sub_1C96A7B34();
      OUTLINED_FUNCTION_2_14();
      sub_1C96A7B44();
      sub_1C96A7B24();
    }

    else
    {
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
}

void sub_1C95321CC()
{
  ObjectType = swift_getObjectType();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A52A0, &qword_1C96AD9B0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v69 = &v65 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v65 - v4;
  v6 = sub_1C96A6664();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = (&v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_1C96A60A4();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C96A7804();
  v14 = *(v0 + OBJC_IVAR____TtC11WeatherCore15LocationManager_logger);
  sub_1C96A6084();
  v66 = v14;
  v15 = v13;
  v16 = v0;
  sub_1C96A6074();
  v68 = v11;
  v18 = *(v11 + 8);
  v17 = v11 + 8;
  v67 = v18;
  v18(v15, v10);
  v19 = *(v0 + OBJC_IVAR____TtC11WeatherCore15LocationManager_locationActivityQueue);
  *v9 = v19;
  (*(v7 + 104))(v9, *MEMORY[0x1E69E8020], v6);
  v20 = v19;
  LOBYTE(v19) = sub_1C96A66A4();
  (*(v7 + 8))(v9, v6);
  if ((v19 & 1) == 0)
  {
    goto LABEL_60;
  }

  v65 = v17;
  v70 = v5;
  v71 = v10;
  v17 = *(v0 + OBJC_IVAR____TtC11WeatherCore15LocationManager_lock);
  sub_1C96A50E4();
  v21 = OBJC_IVAR____TtC11WeatherCore15LocationManager_observers;
  swift_beginAccess();
  type metadata accessor for LocationManagerObserverProxy();
  sub_1C96A53C4();
  v72 = sub_1C96A72E4();

  v22 = *(v0 + v21);
  v23 = sub_1C946D04C();
  sub_1C96A53C4();
  v24 = 0;
  while (1)
  {
    v25 = v24;
    if (v23 == v24)
    {
LABEL_11:

      sub_1C96A50F4();
      v10 = OBJC_IVAR____TtC11WeatherCore15LocationManager_locationManager;
      v26 = *(v0 + OBJC_IVAR____TtC11WeatherCore15LocationManager_locationManager);
      if (v26)
      {
        LODWORD(v17) = [v26 authorizationStatus];
        v29 = *(v0 + OBJC_IVAR____TtC11WeatherCore15LocationManager_hasReducedLocationUpdates);
        if (v29 != (v23 == v25))
        {
          sub_1C9530DE4(v29 ^ 1, v28);
        }

        if (qword_1EDB7FCE8 != -1)
        {
          goto LABEL_61;
        }

        goto LABEL_15;
      }

      __break(1u);
LABEL_63:
      __break(1u);
LABEL_64:
      __break(1u);
      goto LABEL_65;
    }

    if ((v22 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1CCA8D440](v24, v22);
    }

    else
    {
      if (v24 >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_59;
      }

      sub_1C96A3D04();
    }

    if (__OFADD__(v25, 1))
    {
      break;
    }

    v10 = sub_1C969A408();

    v24 = v25 + 1;
    if ((v10 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  swift_once();
LABEL_15:
  sub_1C946F878(qword_1EDB7F4C8, v27, type metadata accessor for LocationManager, &protocol conformance descriptor for LocationManager);
  sub_1C96A4E44();
  v30 = -122.028336;
  v31 = 37.3193115;
  switch(v74)
  {
    case 1:
      goto LABEL_32;
    case 2:
      v30 = -121.88709;
      v31 = 37.3372131;
      goto LABEL_32;
    case 3:
      v30 = -122.038679;
      v31 = 37.371428;
      goto LABEL_32;
    case 4:
      v30 = -122.459246;
      v31 = 37.7588212;
      goto LABEL_32;
    case 5:
      v30 = -117.115;
      v31 = 32.905;
      goto LABEL_32;
    case 6:
      v30 = -122.040102;
      v31 = 37.2283792;
      goto LABEL_32;
    case 7:
      v30 = 0.128;
      v31 = 51.507;
      goto LABEL_32;
    case 8:
      v30 = 72.878;
      v31 = 19.076;
      goto LABEL_32;
    case 9:
      v30 = 72.878;
      v31 = 19.086;
LABEL_32:
      v43 = *(v0 + v10);
      if (!v43)
      {
        goto LABEL_63;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5390, &qword_1C96AD420);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1C96ACFF0;
      v45 = objc_allocWithZone(MEMORY[0x1E6985C40]);
      v42 = v43;
      *(inited + 32) = [v45 initWithLatitude:v31 longitude:v30];
      sub_1C953330C(v42, inited);
      goto LABEL_34;
    default:
      v32 = *(v0 + v10);
      if (!v32)
      {
        goto LABEL_66;
      }

      v33 = [v32 location];
      if (!v33)
      {
        goto LABEL_35;
      }

      v34 = v33;
      if (qword_1EDB7FDC8 != -1)
      {
        swift_once();
      }

      v35 = sub_1C96A6154();
      __swift_project_value_buffer(v35, qword_1EDB7FDD0);
      v36 = sub_1C96A6134();
      v37 = sub_1C96A76A4();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        *v38 = 0;
        _os_log_impl(&dword_1C945E000, v36, v37, "Already have a prior current location", v38, 2u);
        MEMORY[0x1CCA8E3D0](v38, -1, -1);
      }

      v39 = *(v16 + v10);
      if (!v39)
      {
        goto LABEL_67;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5390, &qword_1C96AD420);
      v40 = swift_initStackObject();
      *(v40 + 16) = xmmword_1C96ACFF0;
      *(v40 + 32) = v34;
      v41 = v39;
      v42 = v34;
      sub_1C953330C(v41, v40);

LABEL_34:
      swift_setDeallocating();
      sub_1C953A0F0();
LABEL_35:
      v46 = OBJC_IVAR____TtC11WeatherCore15LocationManager_isUpdatingLocation;
      v47 = v17 - 3;
      if (*(v16 + OBJC_IVAR____TtC11WeatherCore15LocationManager_isUpdatingLocation))
      {
        if (v72 && v47 < 2)
        {
          return;
        }

        if (qword_1EDB7FDC8 != -1)
        {
          swift_once();
        }

        v48 = sub_1C96A6154();
        __swift_project_value_buffer(v48, qword_1EDB7FDD0);
        v49 = sub_1C96A6134();
        v50 = sub_1C96A76A4();
        if (os_log_type_enabled(v49, v50))
        {
          v51 = swift_slowAlloc();
          *v51 = 0;
          _os_log_impl(&dword_1C945E000, v49, v50, "Will request locationManager to stop updating Location", v51, 2u);
          MEMORY[0x1CCA8E3D0](v51, -1, -1);
        }

        *(v16 + v46) = 0;
        v52 = *(v16 + v10);
        if (v52)
        {
          v53 = &selRef_stopUpdatingLocation;
LABEL_56:
          [v52 *v53];
          return;
        }

        goto LABEL_64;
      }

      if (v72 < 1 || v47 > 1)
      {
        return;
      }

      if (qword_1EDB7FDC8 != -1)
      {
        swift_once();
      }

      v55 = sub_1C96A6154();
      __swift_project_value_buffer(v55, qword_1EDB7FDD0);
      v56 = sub_1C96A6134();
      v57 = sub_1C96A76A4();
      v58 = os_log_type_enabled(v56, v57);
      v60 = v70;
      v59 = v71;
      if (v58)
      {
        v61 = swift_slowAlloc();
        *v61 = 0;
        _os_log_impl(&dword_1C945E000, v56, v57, "Will request locationManager to start updating Location", v61, 2u);
        MEMORY[0x1CCA8E3D0](v61, -1, -1);
      }

      *(v16 + v46) = 1;
      sub_1C952FB04(&OBJC_IVAR____TtC11WeatherCore15LocationManager__locationUpdateSignpostID);
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v60, 1, v59);
      sub_1C9470AFC(v60, &qword_1EC3A52A0, &qword_1C96AD9B0);
      if (EnumTagSinglePayload == 1)
      {
        v63 = v66;
        sub_1C96A6084();
        sub_1C96A77F4();
        sub_1C96A6074();
        v64 = v69;
        (*(v68 + 16))(v69, v15, v59);
        __swift_storeEnumTagSinglePayload(v64, 0, 1, v59);
        sub_1C952FB50(v64, &OBJC_IVAR____TtC11WeatherCore15LocationManager__locationUpdateSignpostID);
        v67(v15, v59);
      }

      v52 = *(v16 + v10);
      if (v52)
      {
        v53 = &selRef_startUpdatingLocation;
        goto LABEL_56;
      }

      break;
  }

LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
}

void *sub_1C9532BDC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  result = (*(a2 + 8))(ObjectType, a2);
  v8 = result;
  v9 = 0;
  v10 = result[2];
  while (v10 != v9)
  {
    if (v9 >= v8[2])
    {
      __break(1u);
      return result;
    }

    v11 = v9 + 1;
    v12 = *(v8 + v9 + 32);
    result = sub_1C95346E4(&v12, v3, a1, a2);
    v9 = v11;
  }
}

void LocationManager.removeObserver(_:)()
{
  OUTLINED_FUNCTION_103();
  v2 = v0;
  v4 = v3;
  v5 = sub_1C96A6564();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_22_6();
  v23 = sub_1C96A65E4();
  OUTLINED_FUNCTION_1();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_14();
  v14 = v13 - v12;
  sub_1C96A50E4();
  v15 = OBJC_IVAR____TtC11WeatherCore15LocationManager_observers;
  swift_beginAccess();
  swift_unknownObjectRetain();
  v16 = sub_1C953A244(&v2[v15], v4);
  v17 = sub_1C946D04C();
  if (v17 < v16)
  {
    __break(1u);
    swift_endAccess();
    __break(1u);
  }

  else
  {
    sub_1C953A87C(v16, v17);
    swift_endAccess();
    sub_1C96A50F4();
    OUTLINED_FUNCTION_23_0();
    v18 = swift_allocObject();
    *(v18 + 16) = v2;
    v24[4] = sub_1C953B218;
    v24[5] = v18;
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 1107296256;
    v24[2] = sub_1C946FCF8;
    v24[3] = &block_descriptor_21_0;
    v19 = _Block_copy(v24);
    v20 = v2;
    sub_1C96A6594();
    OUTLINED_FUNCTION_5_14();
    sub_1C946F878(v21, 255, v22, MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5370, &qword_1C96AD9F0);
    sub_1C9469C60(&qword_1EDB7CE80, &unk_1EC3A5370, &qword_1C96AD9F0);
    OUTLINED_FUNCTION_33_2();
    sub_1C96A79E4();
    MEMORY[0x1CCA8D100](0, v14, v1, v19);
    _Block_release(v19);
    (*(v7 + 8))(v1, v5);
    (*(v10 + 8))(v14, v23);

    OUTLINED_FUNCTION_101();
  }
}

void sub_1C9532FDC(uint64_t a1)
{
  v1 = type metadata accessor for Location(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = (&v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = type metadata accessor for LocationManager.CurrentLocationStatus(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v19 - v8);
  v10 = type metadata accessor for CachedCurrentLocation.EmbeddedLocation(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1C953AE2C();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1C949A6D4();
    sub_1C953AE2C();
    v13 = *(v1 + 44);
    v14 = *(v3 + v13);
    if (v14)
    {
      v15 = *(v3 + v13);
    }

    else
    {
      v15 = [objc_allocWithZone(MEMORY[0x1E6985C40]) initWithLatitude:v3[4] longitude:v3[5]];
    }

    *&v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5440, &qword_1C96ADB08) + 48)] = v15;
    type metadata accessor for LocationManager.CurrentLocationResolution(0);
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    v18 = v14;
    sub_1C9531240();
    sub_1C953AE88();
  }

  else
  {
    v16 = *v12;
    *v9 = *v12;
    type metadata accessor for LocationManager.CurrentLocationResolution(0);
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    v17 = v16;
    sub_1C9531240();
  }
}

BOOL sub_1C9533294()
{
  v0 = sub_1C969A394();
  v1 = sub_1C9641C98(2u, v0);

  if (v1)
  {
    return 1;
  }

  v3 = sub_1C969A394();
  v4 = sub_1C9641C98(1u, v3);

  return v4;
}

void sub_1C953330C(void *a1, unint64_t a2)
{
  v76 = a1;
  i = a2;
  v3 = type metadata accessor for LocationManager.CurrentLocationStatus(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v4 = sub_1C96A6664();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v72[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A52A0, &qword_1C96AD9B0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v72[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v72[-v12];
  v14 = sub_1C96A60A4();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v72[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1C952FB04(&OBJC_IVAR____TtC11WeatherCore15LocationManager__locationUpdateSignpostID);
  if (__swift_getEnumTagSinglePayload(v13, 1, v14) == 1)
  {
    sub_1C9470AFC(v13, &qword_1EC3A52A0, &qword_1C96AD9B0);
  }

  else
  {
    (*(v15 + 32))(v17, v13, v14);
    sub_1C96A77E4();
    sub_1C96A6074();
    __swift_storeEnumTagSinglePayload(v10, 1, 1, v14);
    sub_1C952FB50(v10, &OBJC_IVAR____TtC11WeatherCore15LocationManager__locationUpdateSignpostID);
    (*(v15 + 8))(v17, v14);
  }

  v18 = v2;
  v19 = *&v2[OBJC_IVAR____TtC11WeatherCore15LocationManager_locationActivityQueue];
  *v7 = v19;
  (*(v5 + 104))(v7, *MEMORY[0x1E69E8020], v4);
  v20 = v19;
  LOBYTE(v19) = sub_1C96A66A4();
  v22 = *(v5 + 8);
  v21 = (v5 + 8);
  v22(v7, v4);
  if ((v19 & 1) == 0)
  {
    __break(1u);
LABEL_52:
    swift_once();
LABEL_8:
    v25 = sub_1C96A6154();
    __swift_project_value_buffer(v25, qword_1EDB7FDD0);
    v26 = sub_1C96A6134();
    v27 = sub_1C96A7684();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      v29 = "locationUpdate: received a location from CoreLocation with a latitude of 0. Discarding location.";
      goto LABEL_19;
    }

    goto LABEL_20;
  }

  v23 = sub_1C9605B30(i);
  if (!v23)
  {
    if (qword_1EDB7FDC8 != -1)
    {
      swift_once();
    }

    v30 = sub_1C96A6154();
    __swift_project_value_buffer(v30, qword_1EDB7FDD0);
    v31 = sub_1C96A6134();
    v32 = sub_1C96A76A4();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_1C945E000, v31, v32, "locationUpdate: received a location update but the location list is empty. Bailing.", v33, 2u);
      MEMORY[0x1CCA8E3D0](v33, -1, -1);
    }

    v34 = swift_allocObject();
    *(v34 + 16) = v18;
    v35 = v18;
    sub_1C9533DE0(sub_1C953AAE4, v34);

    return;
  }

  v21 = v23;
  [v23 coordinate];
  if (v24 == 0.0)
  {
    if (qword_1EDB7FDC8 == -1)
    {
      goto LABEL_8;
    }

    goto LABEL_52;
  }

  [v21 coordinate];
  if (v36 == 0.0)
  {
    if (qword_1EDB7FDC8 != -1)
    {
      goto LABEL_55;
    }

    goto LABEL_17;
  }

  v74 = *&v18[OBJC_IVAR____TtC11WeatherCore15LocationManager_lock];
  sub_1C96A50E4();
  sub_1C95311F0();
  v75 = sub_1C952F24C();
  v38 = v18;
  sub_1C953AE88();
  sub_1C95311F0();
  v73 = sub_1C952F3E0();
  sub_1C953AE88();
  v39 = OBJC_IVAR____TtC11WeatherCore15LocationManager_observers;
  swift_beginAccess();
  v40 = *&v18[v39];
  v41 = sub_1C946D04C();
  sub_1C96A53C4();
  v42 = 0;
  for (i = v41; ; v41 = i)
  {
    if (v42 == v41)
    {

LABEL_33:
      sub_1C96A50F4();
      v47 = v75;
      if (v73)
      {
        if (([v76 _limitsPrecision] & 1) != 0 || (v48.value.super.isa = v47, CLLocation.isAccurateEnough(lastKnownLocation:)(v48)))
        {
          if (sub_1C9536290(v21, v47))
          {
            v49 = v42 != i;
            v50 = swift_allocObject();
            v51 = swift_allocObject();
            *(v51 + 16) = v18;
            *(v51 + 24) = v49;
            *(v50 + 16) = sub_1C953AAEC;
            *(v50 + 24) = v51;
            MEMORY[0x1EEE9AC00](v51);
            *&v72[-16] = v18;
            *&v72[-8] = v21;
            type metadata accessor for CLLocationCoordinate2D(0);
            v52 = v18;
            sub_1C96A5784();
            v53 = swift_allocObject();
            *(v53 + 16) = v52;
            *(v53 + 24) = v50;
            v54 = v52;
            sub_1C96A3D04();
            v55 = sub_1C96A55A4();
            sub_1C96A5644();

            v56 = swift_allocObject();
            v56[2] = v54;
            v56[3] = v50;
            v56[4] = v21;
            v57 = v54;
            sub_1C96A3D04();
            v58 = v21;
            v59 = sub_1C96A55A4();
            sub_1C96A5674();

LABEL_48:
            return;
          }
        }

        if (qword_1EDB7FDC8 != -1)
        {
          swift_once();
        }

        v69 = sub_1C96A6154();
        __swift_project_value_buffer(v69, qword_1EDB7FDD0);
        v21 = v21;
        v61 = sub_1C96A6134();
        v70 = sub_1C96A76A4();

        if (!os_log_type_enabled(v61, v70))
        {

          goto LABEL_48;
        }

        v63 = swift_slowAlloc();
        *v63 = 141558275;
        *(v63 + 4) = 1752392040;
        *(v63 + 12) = 2049;
        [v21 horizontalAccuracy];
        *(v63 + 14) = v71;
        v64 = "locationUpdate: received a location that does not meet our accuracy or distance requirements. Discarding location. horizontalAccuracy=%{private,mask.hash}f";
        v65 = v70;
        v66 = v61;
        v67 = v63;
        v68 = 22;
      }

      else
      {
        if (qword_1EDB7FDC8 != -1)
        {
          swift_once();
        }

        v60 = sub_1C96A6154();
        __swift_project_value_buffer(v60, qword_1EDB7FDD0);
        v61 = sub_1C96A6134();
        v62 = sub_1C96A7684();
        if (!os_log_type_enabled(v61, v62))
        {
          goto LABEL_47;
        }

        v63 = swift_slowAlloc();
        *v63 = 0;
        v64 = "locationUpdate: we determined that we should not revGeo this new location. Discarding location.";
        v65 = v62;
        v66 = v61;
        v67 = v63;
        v68 = 2;
      }

      _os_log_impl(&dword_1C945E000, v66, v65, v64, v67, v68);
      MEMORY[0x1CCA8E3D0](v63, -1, -1);
LABEL_47:

      goto LABEL_48;
    }

    if ((v40 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1CCA8D440](v42, v40);
    }

    else
    {
      if (v42 >= *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_54;
      }

      sub_1C96A3D04();
    }

    if (__OFADD__(v42, 1))
    {
      break;
    }

    v43 = sub_1C969A394();
    v44 = *(v43 + 16);
    v45 = (v43 + 32);
    while (v44)
    {
      v46 = *v45++;
      --v44;
      if (v46 == 2)
      {

        v18 = v38;
        goto LABEL_33;
      }
    }

    ++v42;
    v18 = v38;
  }

  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  swift_once();
LABEL_17:
  v37 = sub_1C96A6154();
  __swift_project_value_buffer(v37, qword_1EDB7FDD0);
  v26 = sub_1C96A6134();
  v27 = sub_1C96A7684();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    v29 = "locationUpdate: received a location from CoreLocation with a longitude of 0. Discarding location.";
LABEL_19:
    _os_log_impl(&dword_1C945E000, v26, v27, v29, v28, 2u);
    MEMORY[0x1CCA8E3D0](v28, -1, -1);
  }

LABEL_20:
}

uint64_t sub_1C9533DE0(uint64_t a1, uint64_t a2)
{
  v46 = a2;
  v45 = a1;
  v51 = sub_1C96A6564();
  v40 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v50 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_1C96A65E4();
  v47 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v48 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C96A50E4();
  v5 = OBJC_IVAR____TtC11WeatherCore15LocationManager_observers;
  swift_beginAccess();
  v39 = sub_1C9470260(*&v2[v5]);
  swift_beginAccess();
  v54 = v2;
  v6 = *&v2[v5];
  result = sub_1C946D04C();
  v8 = result;
  v9 = 0;
  while (1)
  {
    if (v8 == v9)
    {
      v9 = sub_1C946D04C();
LABEL_14:
      result = sub_1C946D04C();
      if (result < v9)
      {
        goto LABEL_71;
      }

      v12 = v54;
      sub_1C953A87C(v9, result);
      swift_endAccess();
      v38 = sub_1C9470260(*&v12[v5]);
      v13 = *&v12[v5];
      sub_1C96A53C4();
      sub_1C96A50F4();
      result = sub_1C946D04C();
      v53 = result;
      v14 = 0;
      v42 = OBJC_IVAR____TtC11WeatherCore15LocationManager_notifyQueue;
      v44 = v13 & 0xC000000000000001;
      v52 = v13;
      v43 = v13 & 0xFFFFFFFFFFFFFF8;
      v41 = &v58;
      v15 = (v40 + 8);
      v16 = v48;
      ++v47;
      while (v53 != v14)
      {
        if (v44)
        {
          result = MEMORY[0x1CCA8D440](v14, v52);
          v17 = result;
        }

        else
        {
          if (v14 >= *(v43 + 16))
          {
            goto LABEL_61;
          }

          v17 = *(v52 + 8 * v14 + 32);
          result = sub_1C96A3D04();
        }

        if (__OFADD__(v14, 1))
        {
          goto LABEL_60;
        }

        v18 = swift_allocObject();
        v19 = v46;
        v18[2] = v45;
        v18[3] = v19;
        v18[4] = v17;
        v60 = sub_1C953AFC4;
        v61 = v18;
        aBlock = MEMORY[0x1E69E9820];
        v57 = 1107296256;
        v58 = sub_1C946FCF8;
        v59 = &block_descriptor_111;
        v20 = _Block_copy(&aBlock);
        sub_1C96A3D04();
        sub_1C96A3D04();
        sub_1C96A6594();
        v55 = MEMORY[0x1E69E7CC0];
        sub_1C946F878(&qword_1EDB7CF40, 255, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5370, &qword_1C96AD9F0);
        sub_1C9469C60(&qword_1EDB7CE80, &unk_1EC3A5370, &qword_1C96AD9F0);
        v21 = v50;
        v22 = v51;
        sub_1C96A79E4();
        MEMORY[0x1CCA8D100](0, v16, v21, v20);
        _Block_release(v20);

        (*v15)(v21, v22);
        (*v47)(v16, v49);

        ++v14;
      }

      if (v38 < v39)
      {
        v23 = v54;
        v24 = swift_allocObject();
        *(v24 + 16) = v23;
        v60 = sub_1C953B218;
        v61 = v24;
        aBlock = MEMORY[0x1E69E9820];
        v57 = 1107296256;
        v58 = sub_1C946FCF8;
        v59 = &block_descriptor_117;
        v25 = _Block_copy(&aBlock);
        v26 = v23;
        v27 = v48;
        sub_1C96A6594();
        v55 = MEMORY[0x1E69E7CC0];
        sub_1C946F878(&qword_1EDB7CF40, 255, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5370, &qword_1C96AD9F0);
        sub_1C9469C60(&qword_1EDB7CE80, &unk_1EC3A5370, &qword_1C96AD9F0);
        v29 = v50;
        v28 = v51;
        sub_1C96A79E4();
        MEMORY[0x1CCA8D100](0, v27, v29, v25);
        _Block_release(v25);
        (*v15)(v29, v28);
        (*v47)(v27, v49);
      }

      return result;
    }

    if ((v6 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1CCA8D440](v9, v6);
    }

    else
    {
      if (v9 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_62;
      }

      sub_1C96A3D04();
    }

    Strong = swift_unknownObjectWeakLoadStrong();

    if (!Strong)
    {
      break;
    }

    result = swift_unknownObjectRelease();
    v11 = __OFADD__(v9++, 1);
    if (v11)
    {
      goto LABEL_63;
    }
  }

  if (__OFADD__(v9, 1))
  {
    goto LABEL_75;
  }

  result = sub_1C946D04C();
  if (v9 + 1 == result)
  {
    goto LABEL_14;
  }

  v30 = v9 + 5;
  while (1)
  {
    v31 = v30 - 4;
    if ((v6 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1CCA8D440](v30 - 4, v6);
    }

    else
    {
      if ((v31 & 0x8000000000000000) != 0)
      {
        goto LABEL_64;
      }

      if (v31 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_65;
      }

      sub_1C96A3D04();
    }

    v32 = swift_unknownObjectWeakLoadStrong();

    if (!v32)
    {
      goto LABEL_51;
    }

    result = swift_unknownObjectRelease();
    if (v31 != v9)
    {
      break;
    }

LABEL_50:
    v11 = __OFADD__(v9++, 1);
    if (v11)
    {
      goto LABEL_67;
    }

LABEL_51:
    v37 = v30 - 3;
    if (__OFADD__(v31, 1))
    {
      goto LABEL_66;
    }

    if (v6 >> 62)
    {
      result = sub_1C96A7BB4();
    }

    else
    {
      result = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    ++v30;
    if (v37 == result)
    {
      goto LABEL_14;
    }
  }

  if ((v6 & 0xC000000000000001) != 0)
  {
    v33 = MEMORY[0x1CCA8D440](v9, v6);
    v34 = MEMORY[0x1CCA8D440](v30 - 4, v6);
  }

  else
  {
    if ((v9 & 0x8000000000000000) != 0)
    {
      goto LABEL_72;
    }

    v35 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9 >= v35)
    {
      goto LABEL_73;
    }

    if (v31 >= v35)
    {
      goto LABEL_74;
    }

    v33 = *(v6 + 8 * v9 + 32);
    v34 = *(v6 + 8 * v30);
    sub_1C96A3D04();
    sub_1C96A3D04();
  }

  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *&v54[v5] = v6;
  if (!result || (v6 & 0x8000000000000000) != 0 || (v6 & 0x4000000000000000) != 0)
  {
    result = sub_1C964B858();
    v6 = result;
    *&v54[v5] = result;
  }

  if ((v9 & 0x8000000000000000) != 0)
  {
    goto LABEL_68;
  }

  v36 = v6 & 0xFFFFFFFFFFFFFF8;
  if (v9 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_69;
  }

  *((v6 & 0xFFFFFFFFFFFFFF8) + 8 * v9 + 0x20) = v34;

  *&v54[v5] = v6;
  if ((v6 & 0x8000000000000000) == 0 && (v6 & 0x4000000000000000) == 0)
  {
    if ((v31 & 0x8000000000000000) != 0)
    {
      goto LABEL_59;
    }

    goto LABEL_48;
  }

  result = sub_1C964B858();
  v6 = result;
  *&v54[v5] = result;
  v36 = result & 0xFFFFFFFFFFFFFF8;
  if ((v31 & 0x8000000000000000) == 0)
  {
LABEL_48:
    if (v31 >= *(v36 + 16))
    {
      goto LABEL_70;
    }

    *(v36 + 8 * v30) = v33;

    *&v54[v5] = v6;
    goto LABEL_50;
  }

LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  __break(1u);
LABEL_74:
  __break(1u);
LABEL_75:
  __break(1u);
  return result;
}

void *sub_1C95346E4(_BYTE *a1, char *a2, uint64_t a3, uint64_t a4)
{
  v37 = a4;
  v38 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5450, &qword_1C96AD580);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v36 - v7;
  v9 = type metadata accessor for Location(0);
  v36[2] = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  MEMORY[0x1EEE9AC00](v10);
  v11 = sub_1C96A6564();
  v41 = *(v11 - 8);
  v42 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1C96A65E4();
  v39 = *(v14 - 8);
  v40 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v16 = v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*a1)
  {
    v25 = LocationManager.authorizationState.getter();
    v26 = swift_allocObject();
    v27 = v37;
    *(v26 + 16) = v38;
    *(v26 + 24) = v27;
    *(v26 + 32) = a2;
    *(v26 + 40) = v25;
    v47 = sub_1C953B060;
    v48 = v26;
    aBlock = MEMORY[0x1E69E9820];
    v44 = 1107296256;
    v45 = sub_1C946FCF8;
    v46 = &block_descriptor_135;
    v28 = _Block_copy(&aBlock);
    swift_unknownObjectRetain();
    v29 = a2;
    sub_1C96A6594();
    v49 = MEMORY[0x1E69E7CC0];
    sub_1C946F878(&qword_1EDB7CF40, 255, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5370, &qword_1C96AD9F0);
    sub_1C9469C60(&qword_1EDB7CE80, &unk_1EC3A5370, &qword_1C96AD9F0);
    v30 = v42;
    sub_1C96A79E4();
    MEMORY[0x1CCA8D100](0, v16, v13, v28);
    _Block_release(v28);
    (*(v41 + 8))(v13, v30);
LABEL_6:
    (*(v39 + 8))(v16, v40);
  }

  if (*a1 == 1)
  {
    result = LocationManager.currentCLLocation.getter();
    if (!result)
    {
      return result;
    }

    v18 = result;
    v19 = swift_allocObject();
    v20 = v37;
    v19[2] = v38;
    v19[3] = v20;
    v19[4] = a2;
    v19[5] = v18;
    v47 = sub_1C953AFFC;
    v48 = v19;
    aBlock = MEMORY[0x1E69E9820];
    v44 = 1107296256;
    v45 = sub_1C946FCF8;
    v46 = &block_descriptor_123;
    v21 = _Block_copy(&aBlock);
    swift_unknownObjectRetain();
    v22 = a2;
    v23 = v18;
    sub_1C96A6594();
    v49 = MEMORY[0x1E69E7CC0];
    sub_1C946F878(&qword_1EDB7CF40, 255, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5370, &qword_1C96AD9F0);
    sub_1C9469C60(&qword_1EDB7CE80, &unk_1EC3A5370, &qword_1C96AD9F0);
    v24 = v42;
    sub_1C96A79E4();
    MEMORY[0x1CCA8D100](0, v16, v13, v21);
    _Block_release(v21);

    (*(v41 + 8))(v13, v24);
    goto LABEL_6;
  }

  LocationManager.currentLocation.getter(v8);
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    return sub_1C9470AFC(v8, &qword_1EC3A5450, &qword_1C96AD580);
  }

  sub_1C949A6D4();
  v36[1] = *&a2[OBJC_IVAR____TtC11WeatherCore15LocationManager_notifyQueue];
  sub_1C953AE2C();
  v31 = swift_allocObject();
  v32 = v37;
  v31[2] = v38;
  v31[3] = v32;
  v31[4] = a2;
  sub_1C949A6D4();
  v47 = sub_1C953B008;
  v48 = v31;
  aBlock = MEMORY[0x1E69E9820];
  v44 = 1107296256;
  v45 = sub_1C946FCF8;
  v46 = &block_descriptor_129;
  v33 = _Block_copy(&aBlock);
  swift_unknownObjectRetain();
  v34 = a2;
  sub_1C96A6594();
  v49 = MEMORY[0x1E69E7CC0];
  sub_1C946F878(&qword_1EDB7CF40, 255, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5370, &qword_1C96AD9F0);
  sub_1C9469C60(&qword_1EDB7CE80, &unk_1EC3A5370, &qword_1C96AD9F0);
  v35 = v42;
  sub_1C96A79E4();
  MEMORY[0x1CCA8D100](0, v16, v13, v33);
  _Block_release(v33);
  (*(v41 + 8))(v13, v35);
  (*(v39 + 8))(v16, v40);
  sub_1C953AE88();
}

uint64_t sub_1C9534EB4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  v11[3] = type metadata accessor for LocationManager();
  v11[4] = &protocol witness table for LocationManager;
  v11[0] = a3;
  v8 = *(a2 + 32);
  v9 = a3;
  v8(v11, a4, ObjectType, a2);
  return __swift_destroy_boxed_opaque_existential_1Tm(v11);
}

id LocationManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id LocationManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *sub_1C9535244()
{
  swift_getObjectType();

  return sub_1C96A4E44();
}

uint64_t sub_1C953529C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x1EEE454E0](a1, a2, ObjectType, a6);
}

uint64_t sub_1C9535304(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x1EEE454F0](a1, a2, a3, ObjectType, a7);
}

uint64_t sub_1C9535374(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x1EEE454D8](a1, a2, a3, a4, ObjectType, a8);
}

Swift::Void __swiftcall LocationManager.locationManagerDidChangeAuthorization(_:)(CLLocationManager a1)
{
  OUTLINED_FUNCTION_103();
  v4 = v3;
  v5 = sub_1C96A6664();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_22_6();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A52A0, &qword_1C96AD9B0);
  v10 = OUTLINED_FUNCTION_7(v9);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_2();
  v13 = v11 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v52 - v15;
  v17 = sub_1C96A60A4();
  OUTLINED_FUNCTION_1();
  v19 = v18;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_14();
  v23 = v22 - v21;
  sub_1C952FB04(&OBJC_IVAR____TtC11WeatherCore15LocationManager__authorizationSignpostID);
  if (__swift_getEnumTagSinglePayload(v16, 1, v17) == 1)
  {
    sub_1C9470AFC(v16, &qword_1EC3A52A0, &qword_1C96AD9B0);
  }

  else
  {
    (*(v19 + 32))(v23, v16, v17);
    sub_1C96A77E4();
    sub_1C96A6074();
    __swift_storeEnumTagSinglePayload(v13, 1, 1, v17);
    sub_1C952FB50(v13, &OBJC_IVAR____TtC11WeatherCore15LocationManager__authorizationSignpostID);
    (*(v19 + 8))(v23, v17);
  }

  v24 = v1;
  v25 = *&v1[OBJC_IVAR____TtC11WeatherCore15LocationManager_locationActivityQueue];
  *v2 = v25;
  (*(v7 + 104))(v2, *MEMORY[0x1E69E8020], v5);
  v26 = v25;
  v27 = sub_1C96A66A4();
  (*(v7 + 8))(v2, v5);
  if (v27)
  {
    LODWORD(v5) = [v4 authorizationStatus];
    LODWORD(v25) = [v4 _limitsPrecision];
    LODWORD(v2) = [v4 isAuthorizedForWidgetUpdates];
    LocationManager.authorizationState.setter(v5);
    if (qword_1EDB7FDC8 == -1)
    {
      goto LABEL_6;
    }
  }

  else
  {
    __break(1u);
  }

  OUTLINED_FUNCTION_7_0(&qword_1EDB7FDC8);
LABEL_6:
  v28 = sub_1C96A6154();
  __swift_project_value_buffer(v28, qword_1EDB7FDD0);
  v29 = sub_1C96A6134();
  v30 = sub_1C96A76A4();
  if (OUTLINED_FUNCTION_14_7(v30))
  {
    v31 = swift_slowAlloc();
    v32 = OUTLINED_FUNCTION_8_4();
    v52 = v24;
    v53 = v32;
    v33 = v32;
    *v31 = 136446722;
    v34 = CLAuthorizationStatus.logDescription.getter();
    v36 = v5;
    v37 = v2;
    v38 = sub_1C9484164(v34, v35, &v53);

    *(v31 + 4) = v38;
    *(v31 + 12) = 1024;
    *(v31 + 14) = v25;
    *(v31 + 18) = 1024;
    *(v31 + 20) = v37;
    LODWORD(v5) = v36;
    _os_log_impl(&dword_1C945E000, v29, v30, "locationUpdate: locationManager didChangeAuthorization. Received new states: authorizationState:%{public}s, limitsPrecision: %{BOOL}d, isAuthorizedForWidgetUpdates=%{BOOL}d", v31, 0x18u);
    __swift_destroy_boxed_opaque_existential_1Tm(v33);
    v24 = v52;
    OUTLINED_FUNCTION_26();
    OUTLINED_FUNCTION_26();
  }

  v39 = sub_1C96A6134();
  v40 = sub_1C96A76A4();
  v41 = OUTLINED_FUNCTION_14_7(v40);
  if ((v5 - 3) > 1)
  {
    if (v41)
    {
      v43 = OUTLINED_FUNCTION_29();
      *v43 = 0;
      _os_log_impl(&dword_1C945E000, v39, v40, "We could be unauthorized or notDetermined. Update our current location caching to reflect this state", v43, 2u);
      OUTLINED_FUNCTION_26();
    }

    v53 = *&v24[OBJC_IVAR____TtC11WeatherCore15LocationManager_lock];
    MEMORY[0x1EEE9AC00](v44);
    *(&v52 - 2) = v24;
    sub_1C96A5134();
    sub_1C96A3D04();
    sub_1C96A5554();

    if ((v5 - 1) <= 1)
    {
      v45 = sub_1C96A6134();
      v46 = sub_1C96A76A4();
      if (OUTLINED_FUNCTION_14_7(v46))
      {
        v47 = OUTLINED_FUNCTION_29();
        *v47 = 0;
        _os_log_impl(&dword_1C945E000, v45, v46, "We are explicitly not authorized: clear the current location cache", v47, 2u);
        OUTLINED_FUNCTION_26();
      }

      v48 = *&v24[OBJC_IVAR____TtC11WeatherCore15LocationManager_locationCacheManager + 24];
      v49 = *&v24[OBJC_IVAR____TtC11WeatherCore15LocationManager_locationCacheManager + 32];
      __swift_project_boxed_opaque_existential_1(&v24[OBJC_IVAR____TtC11WeatherCore15LocationManager_locationCacheManager], v48);
      (*(v49 + 32))(v48, v49);
    }
  }

  else
  {
    if (v41)
    {
      v42 = OUTLINED_FUNCTION_29();
      *v42 = 0;
      _os_log_impl(&dword_1C945E000, v39, v40, "We are authorized: about to update location monitoring...", v42, 2u);
      OUTLINED_FUNCTION_26();
    }

    sub_1C95321CC();
  }

  v50 = swift_allocObject();
  *(v50 + 16) = v24;
  *(v50 + 24) = v5;
  v24;
  sub_1C9533DE0(sub_1C953A60C, v50);

  v51 = [objc_opt_self() defaultCenter];
  [v51 postWeatherLocationAuthorizationDidUpdateNotification];

  OUTLINED_FUNCTION_101();
}

uint64_t sub_1C9535B10()
{
  v0 = type metadata accessor for LocationManager.CurrentLocationStatus(0);
  MEMORY[0x1EEE9AC00](v0);
  swift_storeEnumTagMultiPayload();
  return sub_1C9531240();
}

uint64_t sub_1C9535B9C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  v11[3] = type metadata accessor for LocationManager();
  v11[4] = &protocol witness table for LocationManager;
  v11[0] = a3;
  v8 = *(a2 + 24);
  v9 = a3;
  v8(v11, a4, ObjectType, a2);
  return __swift_destroy_boxed_opaque_existential_1Tm(v11);
}

void LocationManager.locationManager(_:didFailWithError:)(__n128 a1, uint64_t a2, void *a3)
{
  v6 = sub_1C96A6664();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_35_2();
  v10 = *(v3 + OBJC_IVAR____TtC11WeatherCore15LocationManager_locationActivityQueue);
  *v4 = v10;
  (*(v8 + 104))(v4, *MEMORY[0x1E69E8020], v6);
  v11 = v10;
  LOBYTE(v10) = sub_1C96A66A4();
  v12 = OUTLINED_FUNCTION_2_14();
  v13(v12);
  if (v10)
  {
    if (qword_1EDB7FDC8 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  OUTLINED_FUNCTION_7_0(&qword_1EDB7FDC8);
LABEL_3:
  v14 = sub_1C96A6154();
  __swift_project_value_buffer(v14, qword_1EDB7FDD0);
  v15 = OUTLINED_FUNCTION_66();
  v16 = sub_1C96A6134();
  v17 = sub_1C96A76A4();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = OUTLINED_FUNCTION_8_4();
    v24 = v19;
    *v18 = 136380675;
    v20 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5380, &qword_1C96AA2F0);
    v21 = sub_1C96A70C4();
    v23 = sub_1C9484164(v21, v22, &v24);

    *(v18 + 4) = v23;
    _os_log_impl(&dword_1C945E000, v16, v17, "locationUpdate: locationManager didFailWithError: %{private}s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v19);
    OUTLINED_FUNCTION_26();
    OUTLINED_FUNCTION_26();
  }
}

Swift::Void __swiftcall LocationManager.locationManager(_:didUpdateLocations:)(CLLocationManager _, Swift::OpaquePointer didUpdateLocations)
{
  internal = _._internal;
  isa = _.super.isa;
  swift_getObjectType();
  if (qword_1EDB7FCE8 != -1)
  {
    swift_once();
  }

  sub_1C946F878(qword_1EDB7F4C8, v4, type metadata accessor for LocationManager, &protocol conformance descriptor for LocationManager);
  OUTLINED_FUNCTION_32_0();
  sub_1C96A4E44();
  v5 = -122.028336;
  v6 = 37.3193115;
  switch(v8)
  {
    case 1:
      goto LABEL_13;
    case 2:
      v5 = -121.88709;
      v6 = 37.3372131;
      goto LABEL_13;
    case 3:
      v5 = -122.038679;
      v6 = 37.371428;
      goto LABEL_13;
    case 4:
      v5 = -122.459246;
      v6 = 37.7588212;
      goto LABEL_13;
    case 5:
      v5 = -117.115;
      v6 = 32.905;
      goto LABEL_13;
    case 6:
      v5 = -122.040102;
      v6 = 37.2283792;
      goto LABEL_13;
    case 7:
      v5 = 0.128;
      v6 = 51.507;
      goto LABEL_13;
    case 8:
      v5 = 72.878;
      v6 = 19.076;
      goto LABEL_13;
    case 9:
      v5 = 72.878;
      v6 = 19.086;
LABEL_13:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5390, &qword_1C96AD420);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1C96ACFF0;
      *(inited + 32) = [objc_allocWithZone(MEMORY[0x1E6985C40]) initWithLatitude:v6 longitude:v5];
      sub_1C953330C(isa, inited);
      swift_setDeallocating();
      sub_1C953A0F0();
      break;
    default:
      sub_1C953330C(isa, internal);
      break;
  }
}

uint64_t sub_1C95361C4(uint64_t a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();
  v6 = swift_getObjectType();
  v12[3] = ObjectType;
  v12[4] = &protocol witness table for LocationManager;
  v12[0] = a3;
  sub_1C953AC04();
  v7 = swift_allocError();
  *v8 = 0;
  v9 = *(a2 + 48);
  v10 = a3;
  v9(v12, v7, v6, a2);

  return __swift_destroy_boxed_opaque_existential_1Tm(v12);
}

uint64_t sub_1C9536290(void *a1, void *a2)
{
  v4 = OBJC_IVAR____TtC11WeatherCore15LocationManager_locationManager;
  result = *(v2 + OBJC_IVAR____TtC11WeatherCore15LocationManager_locationManager);
  if (result)
  {
    [result distanceFilter];
    if (!a2 || v7 == *MEMORY[0x1E6985C70] || *(v2 + OBJC_IVAR____TtC11WeatherCore15LocationManager_hasReducedLocationUpdates) != 1)
    {
      return 1;
    }

    v8 = a2;
    result = [a1 distanceFromLocation_];
    v10 = *(v2 + v4);
    if (v10)
    {
      v11 = v9;
      v12 = v10;
      [v12 distanceFilter];
      v14 = v13;

      return v14 < v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C9536370(void *a1, char *a2, char a3)
{
  v23 = *&a2[OBJC_IVAR____TtC11WeatherCore15LocationManager_lock];
  sub_1C96A5134();
  sub_1C96A3D04();
  sub_1C96A5554();

  if (qword_1EDB7FDC8 != -1)
  {
    swift_once();
  }

  v6 = sub_1C96A6154();
  __swift_project_value_buffer(v6, qword_1EDB7FDD0);
  v7 = a1;
  v8 = sub_1C96A6134();
  v9 = sub_1C96A76A4();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v23 = v11;
    *v10 = 141558275;
    *(v10 + 4) = 1752392040;
    *(v10 + 12) = 2081;
    sub_1C946B5D0(0, &qword_1EDB7FDB0, 0x1E6985C40);
    v12 = v7;
    v13 = sub_1C96A70C4();
    v15 = sub_1C9484164(v13, v14, &v23);

    *(v10 + 14) = v15;
    _os_log_impl(&dword_1C945E000, v8, v9, "locationUpdate: completed successfully, now caching it. location=%{private,mask.hash}s)", v10, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    MEMORY[0x1CCA8E3D0](v11, -1, -1);
    MEMORY[0x1CCA8E3D0](v10, -1, -1);
  }

  v16 = *&a2[OBJC_IVAR____TtC11WeatherCore15LocationManager_locationCacheManager + 24];
  v17 = *&a2[OBJC_IVAR____TtC11WeatherCore15LocationManager_locationCacheManager + 32];
  __swift_project_boxed_opaque_existential_1(&a2[OBJC_IVAR____TtC11WeatherCore15LocationManager_locationCacheManager], v16);
  (*(v17 + 16))(v7, v16, v17);
  v18 = swift_allocObject();
  *(v18 + 16) = a2;
  *(v18 + 24) = v7;
  v19 = v7;
  v20 = a2;
  sub_1C9533DE0(sub_1C953AC60, v18);

  if (a3)
  {
    v22 = *&v20[OBJC_IVAR____TtC11WeatherCore15LocationManager_geocodeManager];
    if (v22)
    {
      sub_1C96A3D04();
      sub_1C95367BC(v19, v22, 0.0);
    }
  }

  return result;
}

uint64_t sub_1C9536638(uint64_t a1, void *a2)
{
  v3 = type metadata accessor for LocationManager.CurrentLocationStatus(0);
  MEMORY[0x1EEE9AC00](v3);
  *(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0)) = a2;
  type metadata accessor for LocationManager.CurrentLocationResolution(0);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v5 = a2;
  return sub_1C9531240();
}

uint64_t sub_1C95366EC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  v8 = (*(a2 + 8))(ObjectType, a2);
  v9 = sub_1C9641C98(1u, v8);

  if (v9)
  {
    v13[3] = type metadata accessor for LocationManager();
    v13[4] = &protocol witness table for LocationManager;
    v13[0] = a3;
    v11 = *(a2 + 32);
    v12 = a3;
    v11(v13, a4, ObjectType, a2);
    return __swift_destroy_boxed_opaque_existential_1Tm(v13);
  }

  return result;
}

uint64_t sub_1C95367BC(void *a1, uint64_t a2, double a3)
{
  v4 = v3;
  v85 = a2;
  v75 = a1;
  ObjectType = swift_getObjectType();
  v7 = sub_1C96A60A4();
  v80 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v78 = v8;
  v79 = v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v87 = v72 - v10;
  v11 = sub_1C96A65E4();
  v86 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v76 = v12;
  v77 = v72 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v72 - v14;
  v16 = sub_1C96A6664();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = (v72 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = *(v4 + OBJC_IVAR____TtC11WeatherCore15LocationManager_locationActivityQueue);
  *v20 = v21;
  (*(v17 + 104))(v20, *MEMORY[0x1E69E8020], v16, v18);
  v22 = v21;
  v23 = sub_1C96A66A4();
  (*(v17 + 8))(v20, v16);
  if (v23)
  {
    v72[1] = v22;
    v24 = sub_1C952FA6C();
    v83 = ObjectType;
    v22 = v11;
    if (v24)
    {
      sub_1C96A65D4();
    }

    else
    {
      sub_1C96A65A4();
    }

    sub_1C952FAB8(1);
    v25 = *(v4 + OBJC_IVAR____TtC11WeatherCore15LocationManager_logger);
    v26 = v87;
    sub_1C96A6084();
    v27 = sub_1C96A77F4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4C50, &qword_1C96ADB00);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_1C96AA1C0;
    v29 = sub_1C95379E4();
    v31 = v30;
    *(v28 + 56) = MEMORY[0x1E69E6158];
    *(v28 + 64) = sub_1C94CF210();
    *(v28 + 32) = v29;
    *(v28 + 40) = v31;
    sub_1C96A6064(v27, &dword_1C945E000, v25, "Weather:reverseGeocode:attempt", 30, 2, v26, "qos %{public}s", 14, 2, v28);

    sub_1C946B5D0(0, &qword_1EDB77D08, 0x1E69E19B8);
    v73 = sub_1C961B254(0xD00000000000001BLL, 0x80000001C96CE5B0);
    if (qword_1EDB7FDC8 == -1)
    {
      goto LABEL_6;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_6:
  v74 = v7;
  v32 = sub_1C96A6154();
  __swift_project_value_buffer(v32, qword_1EDB7FDD0);
  v33 = v75;
  v34 = sub_1C96A6134();
  v35 = sub_1C96A76A4();

  v36 = os_log_type_enabled(v34, v35);
  v84 = v4;
  v72[0] = v33;
  if (v36)
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v88 = v33;
    v89 = v38;
    *v37 = 141558275;
    *(v37 + 4) = 1752392040;
    *(v37 + 12) = 2081;
    sub_1C946B5D0(0, &qword_1EDB7FDB0, 0x1E6985C40);
    v39 = v33;
    v40 = sub_1C96A70C4();
    v42 = sub_1C9484164(v40, v41, &v89);

    *(v37 + 14) = v42;
    _os_log_impl(&dword_1C945E000, v34, v35, "About to reverse geocode a recently fetched location. location=%{private,mask.hash}s)", v37, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v38);
    MEMORY[0x1CCA8E3D0](v38, -1, -1);
    MEMORY[0x1CCA8E3D0](v37, -1, -1);
  }

  v43 = v86;
  v75 = *(v86 + 16);
  v44 = v77;
  v81 = v22;
  v82 = v15;
  v45 = v22;
  (v75)(v77, v15, v22);
  v46 = (*(v43 + 80) + 24) & ~*(v43 + 80);
  v76 += v46;
  v47 = (v76 + 7) & 0xFFFFFFFFFFFFFFF8;
  v48 = swift_allocObject();
  *(v48 + 16) = v85;
  v49 = *(v43 + 32);
  v49(v48 + v46, v44, v45);
  v50 = v72[0];
  *(v48 + v47) = v72[0];
  type metadata accessor for Location(0);
  v51 = v50;
  sub_1C96A3D04();
  v52 = v82;
  sub_1C96A5764();

  v53 = v81;
  (v75)(v44, v52, v81);
  v54 = swift_allocObject();
  *(v54 + 16) = v51;
  v49(v54 + v46, v44, v53);
  v55 = v51;
  v56 = sub_1C96A55A4();
  sub_1C96A5664();

  v57 = swift_allocObject();
  *(v57 + 16) = a3;
  v58 = v85;
  *(v57 + 24) = v55;
  *(v57 + 32) = v58;
  v59 = v55;
  sub_1C96A3D04();
  v60 = sub_1C96A55A4();
  sub_1C96A5684();

  v61 = v79;
  v62 = v80;
  v63 = v87;
  v64 = v74;
  (*(v80 + 16))(v79, v87, v74);
  v65 = (*(v62 + 80) + 16) & ~*(v62 + 80);
  v66 = (v78 + v65 + 7) & 0xFFFFFFFFFFFFFFF8;
  v67 = swift_allocObject();
  (*(v62 + 32))(v67 + v65, v61, v64);
  v68 = v73;
  *(v67 + v66) = v73;
  v69 = v68;
  v70 = sub_1C96A55A4();
  sub_1C96A56C4();

  (*(v62 + 8))(v63, v64);
  return (*(v86 + 8))(v82, v81);
}

uint64_t sub_1C953705C(double a1, double a2)
{
  v2 = MEMORY[0x1CCA8D200]();
  if ([objc_opt_self() isLocationShiftRequiredForCoordinate_])
  {
    if (qword_1EDB7FDC8 != -1)
    {
      swift_once();
    }

    v4 = sub_1C96A6154();
    __swift_project_value_buffer(v4, qword_1EDB7FDD0);
    v5 = sub_1C96A6134();
    v6 = sub_1C96A76A4();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_1C945E000, v5, v6, "Validating coordinate", v7, 2u);
      MEMORY[0x1CCA8E3D0](v7, -1, -1);
    }

    v8 = [objc_allocWithZone(MEMORY[0x1E69A1E80]) init];
    MEMORY[0x1EEE9AC00](v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5418, &qword_1C96ADAF8);
    swift_allocObject();
    v9 = sub_1C96A5714();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5418, &qword_1C96ADAF8);
    swift_allocObject();
    return sub_1C96A56A4();
  }

  return v9;
}

uint64_t sub_1C9537250(double *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C96A6564();
  v20 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1C96A65E4();
  v18 = *(v9 - 8);
  v19 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [objc_allocWithZone(MEMORY[0x1E6985C40]) initWithLatitude:*a1 longitude:a1[1]];
  v17[1] = *(a2 + OBJC_IVAR____TtC11WeatherCore15LocationManager_locationActivityQueue);
  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  *(v13 + 24) = v12;
  aBlock[4] = sub_1C953AB74;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C946FCF8;
  aBlock[3] = &block_descriptor_63;
  v14 = _Block_copy(aBlock);
  sub_1C96A3D04();
  v15 = v12;
  sub_1C96A6594();
  aBlock[9] = MEMORY[0x1E69E7CC0];
  sub_1C946F878(&qword_1EDB7CF40, 255, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5370, &qword_1C96AD9F0);
  sub_1C9469C60(&qword_1EDB7CE80, &unk_1EC3A5370, &qword_1C96AD9F0);
  sub_1C96A79E4();
  MEMORY[0x1CCA8D100](0, v11, v8, v14);
  _Block_release(v14);

  (*(v20 + 8))(v8, v6);
  (*(v18 + 8))(v11, v19);
}

uint64_t sub_1C9537564(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = sub_1C96A6564();
  v30 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1C96A65E4();
  v28 = *(v10 - 8);
  v29 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDB7FDC8 != -1)
  {
    swift_once();
  }

  v13 = sub_1C96A6154();
  __swift_project_value_buffer(v13, qword_1EDB7FDD0);
  v14 = a1;
  v15 = sub_1C96A6134();
  v16 = sub_1C96A7684();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v27 = a3;
    v19 = v18;
    *v17 = 141558275;
    *(v17 + 4) = 1752392040;
    *(v17 + 12) = 2113;
    v20 = a1;
    v21 = _swift_stdlib_bridgeErrorToNSError();
    *(v17 + 14) = v21;
    *v19 = v21;
    _os_log_impl(&dword_1C945E000, v15, v16, "Error while handling location update. error=%{private,mask.hash}@", v17, 0x16u);
    sub_1C9470AFC(v19, &qword_1EC3A5410, &qword_1C96ADAF0);
    a3 = v27;
    MEMORY[0x1CCA8E3D0](v19, -1, -1);
    MEMORY[0x1CCA8E3D0](v17, -1, -1);
  }

  v22 = swift_allocObject();
  *(v22 + 16) = a3;
  *(v22 + 24) = a4;
  aBlock[4] = sub_1C953B20C;
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C946FCF8;
  aBlock[3] = &block_descriptor_57;
  v23 = _Block_copy(aBlock);
  sub_1C96A3D04();
  v24 = a4;
  sub_1C96A6594();
  v31 = MEMORY[0x1E69E7CC0];
  sub_1C946F878(&qword_1EDB7CF40, 255, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5370, &qword_1C96AD9F0);
  sub_1C9469C60(&qword_1EDB7CE80, &unk_1EC3A5370, &qword_1C96AD9F0);
  sub_1C96A79E4();
  MEMORY[0x1CCA8D100](0, v12, v9, v23);
  _Block_release(v23);
  (*(v30 + 8))(v9, v7);
  (*(v28 + 8))(v12, v29);
}

uint64_t sub_1C9537980()
{
  OUTLINED_FUNCTION_40_2();
  swift_beginAccess();
  v2 = *(v1 + 16);
  sub_1C96A3D04();
  v2(v0);
}

uint64_t sub_1C95379E4()
{
  v1 = v0;
  v2 = sub_1C96A65E4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v18 - v8;
  (*(v3 + 16))(&v18 - v8, v1, v2, v7);
  sub_1C96A6584();
  sub_1C946F878(&unk_1EDB77DB8, 255, MEMORY[0x1E69E7FB0], MEMORY[0x1E69E7FB8]);
  v10 = sub_1C96A6F94();
  v11 = *(v3 + 8);
  v11(v5, v2);
  if (v10)
  {
    v11(v9, v2);
    return 0x756F72676B636162;
  }

  else
  {
    sub_1C96A65A4();
    v13 = sub_1C96A6F94();
    v11(v5, v2);
    if (v13)
    {
      v11(v9, v2);
      return 0x74696E4972657375;
    }

    else
    {
      sub_1C96A65D4();
      v14 = sub_1C96A6F94();
      v11(v5, v2);
      if (v14)
      {
        v11(v9, v2);
        return 0x7974696C697475;
      }

      else
      {
        sub_1C96A6594();
        v15 = sub_1C96A6F94();
        v11(v5, v2);
        if (v15)
        {
          v11(v9, v2);
          return 0x6669636570736E75;
        }

        else
        {
          sub_1C96A65C4();
          v16 = sub_1C96A6F94();
          v11(v5, v2);
          if (v16)
          {
            v11(v9, v2);
            return 0x746C7561666564;
          }

          else
          {
            sub_1C96A65B4();
            v17 = sub_1C96A6F94();
            v11(v5, v2);
            v11(v9, v2);
            if (v17)
            {
              return 0x65746E4972657375;
            }

            else
            {
              return 6369134;
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1C9537DA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21 = a1;
  v22 = a4;
  v20 = sub_1C96A60A4();
  v6 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C96A5444(v26);
  v9 = sub_1C96A7804();
  v10 = *(a1 + OBJC_IVAR____TtC11WeatherCore15LocationManager_logger);
  sub_1C96A6084();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4C50, &qword_1C96ADB00);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1C96AA1C0;
  v12 = sub_1C95379E4();
  v14 = v13;
  *(v11 + 56) = MEMORY[0x1E69E6158];
  *(v11 + 64) = sub_1C94CF210();
  *(v11 + 32) = v12;
  *(v11 + 40) = v14;
  v18 = 2;
  sub_1C96A6064(v9, &dword_1C945E000, v10, "Weather:reverseGeocode:attempt:1", 32, 2, v8, "qos %{public}s", 14, v18, v11);

  (*(v6 + 8))(v8, v20);
  v23 = v26;
  v24 = v22;
  v25 = a3;
  type metadata accessor for Location(0);
  sub_1C96A5784();
  sub_1C96A3D04();
  v15 = sub_1C96A55A4();
  type metadata accessor for LocationManager();
  v16 = sub_1C96A56C4();

  __swift_destroy_boxed_opaque_existential_1Tm(v26);
  return v16;
}

uint64_t sub_1C9538008(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v5);
  return (*(v6 + 16))(a2, a3, 0, v5, v6);
}

void sub_1C9538080(char *a1, char *a2, void *a3, void *a4)
{
  v101 = a4;
  v115 = a1;
  v6 = sub_1C96A4DF4();
  v113 = *(v6 - 8);
  v114 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v112 = &v98 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5430, &unk_1C96AAB30);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v103 = &v98 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v105 = &v98 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v116 = (&v98 - v13);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5F60, &qword_1C96AD6B0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v102 = &v98 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v111 = &v98 - v17;
  v117 = type metadata accessor for Location(0);
  v107 = *(v117 - 1);
  MEMORY[0x1EEE9AC00](v117);
  MEMORY[0x1EEE9AC00](v18);
  v110 = &v98 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v106 = &v98 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v104 = &v98 - v23;
  v108 = v24;
  MEMORY[0x1EEE9AC00](v25);
  v109 = &v98 - v26;
  v27 = sub_1C96A60A4();
  v28 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v98 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = LocationManager.currentCLLocation.getter();
  if (v31)
  {
    v32 = v31;
    sub_1C946B5D0(0, &qword_1EDB7CD30, 0x1E69E58C0);
    if (sub_1C96A78B4())
    {
      v98 = a3;
      v99 = v32;
      v33 = sub_1C96A7804();
      v100 = a2;
      v34 = *&a2[OBJC_IVAR____TtC11WeatherCore15LocationManager_logger];
      sub_1C96A6084();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4C50, &qword_1C96ADB00);
      v35 = swift_allocObject();
      *(v35 + 16) = xmmword_1C96AA1C0;
      v36 = sub_1C95379E4();
      v38 = v37;
      *(v35 + 56) = MEMORY[0x1E69E6158];
      *(v35 + 64) = sub_1C94CF210();
      *(v35 + 32) = v36;
      *(v35 + 40) = v38;
      sub_1C96A6064(v33, &dword_1C945E000, v34, "Weather:reverseGeocode:attempt:2", 32, 2, v30, "qos %{public}s", 14, 2, v35);

      (*(v28 + 8))(v30, v27);
      v39 = v115;
      memcpy(v120, v115, sizeof(v120));
      memcpy(__dst, v115, 0x48uLL);
      sub_1C95087DC(v120, v121);
      Location.Identifier.with(id:name:coordinate:)(1.81844032e-306, 0xE700000000000000, 0, 0, 0.0, 0.0, 1, v119);
      memcpy(v121, __dst, sizeof(v121));
      sub_1C953AEDC(v121);
      memcpy(__dst, v119, 0x48uLL);
      v40 = v114;
      __swift_storeEnumTagSinglePayload(v111, 1, 1, v114);
      v41 = sub_1C96A4A54();
      __swift_storeEnumTagSinglePayload(v116, 1, 1, v41);
      v101 = Location.clLocation.getter();
      v42 = v102;
      sub_1C948C8F0();
      if (__swift_getEnumTagSinglePayload(v42, 1, v40) == 1)
      {
        (*(v113 + 16))(v112, &v39[v117[5]], v40);
        v43 = __swift_getEnumTagSinglePayload(v42, 1, v40) == 1;
        v44 = v105;
        if (v43)
        {
          sub_1C95087DC(__dst, v118);
        }

        else
        {
          sub_1C95087DC(__dst, v118);
          sub_1C9470AFC(v42, &unk_1EC3A5F60, &qword_1C96AD6B0);
        }
      }

      else
      {
        (*(v113 + 32))(v112, v42, v40);
        sub_1C95087DC(__dst, v118);
        v44 = v105;
      }

      v64 = v103;
      sub_1C948C8F0();
      if (__swift_getEnumTagSinglePayload(v64, 1, v41) == 1)
      {
        sub_1C948C8F0();
        if (__swift_getEnumTagSinglePayload(v64, 1, v41) != 1)
        {
          sub_1C9470AFC(v64, &unk_1EC3A5430, &unk_1C96AAB30);
        }
      }

      else
      {
        (*(*(v41 - 8) + 32))(v44, v64, v41);
        __swift_storeEnumTagSinglePayload(v44, 0, 1, v41);
      }

      v65 = v117;
      v66 = &v39[v117[7]];
      v67 = *v66;
      v68 = v66[1];
      v69 = &v39[v117[8]];
      v70 = v69[1];
      v105 = *v69;
      v71 = v117[10];
      v72 = &v39[v117[9]];
      v73 = v72[1];
      v102 = *v72;
      v103 = v67;
      v74 = *&v39[v71 + 8];
      v115 = *&v39[v71];
      v75 = v117[11];
      v76 = v104;
      *&v104[v75] = 0;
      memcpy(v76, __dst, 0x48uLL);
      (*(v113 + 32))(&v76[v65[5]], v112, v114);
      sub_1C948E818(v44, &v76[v65[6]]);
      sub_1C96A53C4();
      sub_1C96A53C4();
      sub_1C96A53C4();
      sub_1C96A53C4();
      sub_1C953AEDC(__dst);
      v77 = &v76[v65[7]];
      *v77 = v103;
      *(v77 + 1) = v68;
      v78 = &v76[v65[8]];
      *v78 = v105;
      *(v78 + 1) = v70;
      v79 = &v76[v65[9]];
      *v79 = v102;
      *(v79 + 1) = v73;
      v80 = &v76[v65[10]];
      *v80 = v115;
      *(v80 + 1) = v74;
      v81 = v101;
      sub_1C9470AFC(v116, &unk_1EC3A5430, &unk_1C96AAB30);
      sub_1C9470AFC(v111, &unk_1EC3A5F60, &qword_1C96AD6B0);
      *&v76[v75] = v81;
      v82 = v109;
      sub_1C949A6D4();

      v83 = v100;
      v119[0] = *&v100[OBJC_IVAR____TtC11WeatherCore15LocationManager_lock];
      MEMORY[0x1EEE9AC00](v84);
      sub_1C96A5134();
      sub_1C96A3D04();
      sub_1C96A5554();

      v85 = *&v83[OBJC_IVAR____TtC11WeatherCore15LocationManager_locationCacheManager + 24];
      v86 = *&v83[OBJC_IVAR____TtC11WeatherCore15LocationManager_locationCacheManager + 32];
      __swift_project_boxed_opaque_existential_1(&v83[OBJC_IVAR____TtC11WeatherCore15LocationManager_locationCacheManager], v85);
      (*(v86 + 24))(v82, v85, v86);
      if (qword_1EDB7FDC8 != -1)
      {
        swift_once();
      }

      v87 = sub_1C96A6154();
      __swift_project_value_buffer(v87, qword_1EDB7FDD0);
      sub_1C953AE2C();
      v88 = sub_1C96A6134();
      v89 = sub_1C96A76A4();
      if (os_log_type_enabled(v88, v89))
      {
        v90 = swift_slowAlloc();
        v91 = swift_slowAlloc();
        v119[0] = v91;
        *v90 = 141558275;
        *(v90 + 4) = 1752392040;
        *(v90 + 12) = 2081;
        sub_1C946F878(&qword_1EDB7ADD0, 255, type metadata accessor for Location, &protocol conformance descriptor for Location);
        v92 = sub_1C96A7DB4();
        v94 = v93;
        sub_1C953AE88();
        v95 = sub_1C9484164(v92, v94, v119);
        v83 = v100;

        *(v90 + 14) = v95;
        _os_log_impl(&dword_1C945E000, v88, v89, "Location was updated with new most recent location=%{private,mask.hash}s", v90, 0x16u);
        __swift_destroy_boxed_opaque_existential_1Tm(v91);
        MEMORY[0x1CCA8E3D0](v91, -1, -1);
        MEMORY[0x1CCA8E3D0](v90, -1, -1);
      }

      else
      {

        sub_1C953AE88();
      }

      sub_1C953AE2C();
      v96 = swift_allocObject();
      *(v96 + 16) = v83;
      sub_1C949A6D4();
      v97 = v83;
      sub_1C9533DE0(sub_1C953AF3C, v96);

      goto LABEL_29;
    }

    if (qword_1EDB7FDC8 != -1)
    {
      swift_once();
    }

    v57 = sub_1C96A6154();
    __swift_project_value_buffer(v57, qword_1EDB7FDD0);
    v58 = v32;
    v59 = a3;
    v47 = sub_1C96A6134();
    v60 = sub_1C96A76A4();

    if (os_log_type_enabled(v47, v60))
    {
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      *v61 = 141558787;
      *(v61 + 4) = 1752392040;
      *(v61 + 22) = 2160;
      *(v61 + 12) = 2113;
      *(v61 + 14) = v58;
      *(v61 + 24) = 1752392040;
      *(v61 + 32) = 2113;
      *(v61 + 34) = v59;
      *v62 = v32;
      v62[1] = v59;
      v58 = v58;
      v63 = v59;
      _os_log_impl(&dword_1C945E000, v47, v60, "Got a new location; throwing away old revgeo result, newLocation=%{private,mask.hash}@, oldLocation=%{private,mask.hash}@", v61, 0x2Au);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5410, &qword_1C96ADAF0);
      swift_arrayDestroy();
      MEMORY[0x1CCA8E3D0](v62, -1, -1);
      MEMORY[0x1CCA8E3D0](v61, -1, -1);
    }

LABEL_16:
    return;
  }

  if (qword_1EDB7FDC8 != -1)
  {
    swift_once();
  }

  v45 = sub_1C96A6154();
  __swift_project_value_buffer(v45, qword_1EDB7FDD0);
  sub_1C953AE2C();
  v46 = a3;
  v47 = sub_1C96A6134();
  v48 = sub_1C96A76A4();

  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    v115 = swift_slowAlloc();
    v116 = swift_slowAlloc();
    __dst[0] = v116;
    *v49 = 141558787;
    *(v49 + 4) = 1752392040;
    *(v49 + 12) = 2081;
    sub_1C953AE2C();
    v50 = sub_1C96A70C4();
    v52 = v51;
    sub_1C953AE88();
    v53 = sub_1C9484164(v50, v52, __dst);

    *(v49 + 14) = v53;
    *(v49 + 22) = 2160;
    *(v49 + 24) = 1752392040;
    *(v49 + 32) = 2113;
    *(v49 + 34) = v46;
    v54 = v115;
    *v115 = v46;
    v55 = v46;
    _os_log_impl(&dword_1C945E000, v47, v48, "We used to have a location in memory and now we don't ... possibly because location authorization was denied; throwing away old revgeo result, oldRevGeoResult=%{private,mask.hash}s, oldLocation=%{private,mask.hash}@", v49, 0x2Au);
    sub_1C9470AFC(v54, &qword_1EC3A5410, &qword_1C96ADAF0);
    MEMORY[0x1CCA8E3D0](v54, -1, -1);
    v56 = v116;
    __swift_destroy_boxed_opaque_existential_1Tm(v116);
    MEMORY[0x1CCA8E3D0](v56, -1, -1);
    MEMORY[0x1CCA8E3D0](v49, -1, -1);
    goto LABEL_16;
  }

LABEL_29:
  sub_1C953AE88();
}

uint64_t sub_1C9538FF4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = type metadata accessor for LocationManager.CurrentLocationStatus(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5440, &qword_1C96ADB08) + 48);
  sub_1C953AE2C();
  *&v6[v7] = a3;
  type metadata accessor for LocationManager.CurrentLocationResolution(0);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v8 = a3;
  return sub_1C9531240();
}

uint64_t sub_1C95390EC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  v11[3] = type metadata accessor for LocationManager();
  v11[4] = &protocol witness table for LocationManager;
  v11[0] = a3;
  v8 = *(a2 + 40);
  v9 = a3;
  v8(v11, a4, ObjectType, a2);
  return __swift_destroy_boxed_opaque_existential_1Tm(v11);
}

void sub_1C9539188(void *a1, char *a2, void *a3, uint64_t a4, double a5)
{
  v66 = a2;
  v9 = sub_1C96A6564();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1C96A65E4();
  v71 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v70 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1C96A6604();
  v68 = *(v15 - 8);
  v69 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v67 = &v60 - v19;
  v20 = [objc_opt_self() mainBundle];
  v21 = sub_1C9493F34(v20);
  if (!v22)
  {
    goto LABEL_7;
  }

  if (v21 == 0xD000000000000012 && v22 == 0x80000001C96CE5D0)
  {
  }

  else
  {
    v24 = sub_1C96A7DE4();

    if ((v24 & 1) == 0)
    {
LABEL_7:
      v63 = v12;
      if (qword_1EDB7FDC8 != -1)
      {
        swift_once();
      }

      v64 = v13;
      v65 = v10;
      v25 = sub_1C96A6154();
      __swift_project_value_buffer(v25, qword_1EDB7FDD0);
      v26 = a3;
      v27 = a1;
      v28 = sub_1C96A6134();
      v29 = sub_1C96A7684();

      v30 = os_log_type_enabled(v28, v29);
      v62 = a4;
      if (v30)
      {
        v31 = swift_slowAlloc();
        v61 = v9;
        v32 = v31;
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v72 = a1;
        aBlock[0] = v34;
        *v32 = 134349827;
        *(v32 + 4) = a5;
        *(v32 + 12) = 2160;
        *(v32 + 14) = 1752392040;
        *(v32 + 22) = 2113;
        *(v32 + 24) = v26;
        *v33 = v26;
        *(v32 + 32) = 2082;
        v35 = v26;
        v36 = a1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5380, &qword_1C96AA2F0);
        v37 = sub_1C96A70A4();
        v39 = sub_1C9484164(v37, v38, aBlock);

        *(v32 + 34) = v39;
        _os_log_impl(&dword_1C945E000, v28, v29, "Failed to reverse-geocode location, retrying after delay=%{public}f, location=%{private,mask.hash}@, error=%{public}s", v32, 0x2Au);
        sub_1C9470AFC(v33, &qword_1EC3A5410, &qword_1C96ADAF0);
        MEMORY[0x1CCA8E3D0](v33, -1, -1);
        __swift_destroy_boxed_opaque_existential_1Tm(v34);
        MEMORY[0x1CCA8E3D0](v34, -1, -1);
        v40 = v32;
        v9 = v61;
        MEMORY[0x1CCA8E3D0](v40, -1, -1);
      }

      v41 = v66;
      v61 = *&v66[OBJC_IVAR____TtC11WeatherCore15LocationManager_locationActivityQueue];
      sub_1C96A65F4();
      v42 = v67;
      sub_1C96A6684();
      v43 = v69;
      v68 = *(v68 + 8);
      (v68)(v17, v69);
      v44 = swift_allocObject();
      *(v44 + 16) = v41;
      *(v44 + 24) = v26;
      *(v44 + 32) = v62;
      *(v44 + 40) = a5;
      aBlock[4] = sub_1C953AE1C;
      aBlock[5] = v44;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1C946FCF8;
      aBlock[3] = &block_descriptor_102;
      v45 = _Block_copy(aBlock);
      v46 = v26;
      v47 = v41;
      sub_1C96A3D04();
      v48 = v70;
      sub_1C96A6594();
      v72 = MEMORY[0x1E69E7CC0];
      sub_1C946F878(&qword_1EDB7CF40, 255, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5370, &qword_1C96AD9F0);
      sub_1C9469C60(&qword_1EDB7CE80, &unk_1EC3A5370, &qword_1C96AD9F0);
      v49 = v63;
      sub_1C96A79E4();
      MEMORY[0x1CCA8D0C0](v42, v48, v49, v45);
      _Block_release(v45);
      (*(v65 + 8))(v49, v9);
      (v71[1].isa)(v48, v64);
      (v68)(v42, v43);

      return;
    }
  }

  if (qword_1EDB7FDC8 != -1)
  {
    swift_once();
  }

  v50 = sub_1C96A6154();
  __swift_project_value_buffer(v50, qword_1EDB7FDD0);
  v51 = a1;
  v71 = sub_1C96A6134();
  v52 = sub_1C96A7684();

  if (os_log_type_enabled(v71, v52))
  {
    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v72 = a1;
    aBlock[0] = v54;
    *v53 = 136446210;
    v55 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5380, &qword_1C96AA2F0);
    v56 = sub_1C96A70A4();
    v58 = sub_1C9484164(v56, v57, aBlock);

    *(v53 + 4) = v58;
    _os_log_impl(&dword_1C945E000, v71, v52, "Failed to reverse-geocode location, do not retry for weatherd. error=%{public}s", v53, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v54);
    MEMORY[0x1CCA8E3D0](v54, -1, -1);
    MEMORY[0x1CCA8E3D0](v53, -1, -1);
  }

  else
  {
    v59 = v71;
  }
}

void sub_1C9539944(double a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = LocationManager.currentCLLocation.getter();
  if (!v7)
  {
    v7 = a3;
  }

  v8 = fmax(a1 + a1, 0.5);
  if (v8 > 5.0)
  {
    v8 = 5.0;
  }

  v9 = v7;
  sub_1C95367BC(v7, a4, v8);
}

uint64_t sub_1C95399CC(uint64_t a1, uint64_t a2)
{
  sub_1C96A77E4();

  return sub_1C96A6074();
}

void sub_1C9539A2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, double a6, double a7)
{
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_1C953AB9C;
  *(v15 + 24) = v14;
  v25 = sub_1C953ABD4;
  v26 = v15;
  v21 = MEMORY[0x1E69E9820];
  v22 = 1107296256;
  v23 = sub_1C9539C90;
  v24 = &block_descriptor_72;
  v16 = _Block_copy(&v21);
  sub_1C96A3D04();

  v25 = sub_1C9539CFC;
  v26 = 0;
  v21 = MEMORY[0x1E69E9820];
  v22 = 1107296256;
  v23 = sub_1C946FCF8;
  v24 = &block_descriptor_75;
  v17 = _Block_copy(&v21);
  v18 = swift_allocObject();
  *(v18 + 16) = a3;
  *(v18 + 24) = a4;
  v25 = sub_1C953ABFC;
  v26 = v18;
  v21 = MEMORY[0x1E69E9820];
  v22 = 1107296256;
  v23 = sub_1C9539FC4;
  v24 = &block_descriptor_81;
  v19 = _Block_copy(&v21);
  sub_1C96A3D04();

  sub_1C946B5D0(0, &qword_1EDB7CDB0, 0x1E69E9610);
  v20 = sub_1C96A7764();
  [a5 shiftCoordinate:v16 accuracy:v17 withCompletionHandler:v19 mustGoToNetworkCallback:v20 errorHandler:a6 callbackQueue:{a7, 0.0}];

  _Block_release(v19);
  _Block_release(v17);
  _Block_release(v16);
}

uint64_t sub_1C9539C90(uint64_t a1, double a2, double a3, double a4)
{
  v7 = *(a1 + 32);
  v8 = sub_1C96A3D04();
  v7(v8, a2, a3, a4);
}

void sub_1C9539CFC()
{
  if (qword_1EDB7FDC8 != -1)
  {
    swift_once();
  }

  v0 = sub_1C96A6154();
  __swift_project_value_buffer(v0, qword_1EDB7FDD0);
  oslog = sub_1C96A6134();
  v1 = sub_1C96A76A4();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_1C945E000, oslog, v1, "Validate coordinate via network", v2, 2u);
    MEMORY[0x1CCA8E3D0](v2, -1, -1);
  }
}

void sub_1C9539DE4(void *a1, void (*a2)(void *))
{
  if (qword_1EDB7FDC8 != -1)
  {
    swift_once();
  }

  v4 = sub_1C96A6154();
  __swift_project_value_buffer(v4, qword_1EDB7FDD0);
  v5 = a1;
  v6 = sub_1C96A6134();
  v7 = sub_1C96A76A4();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 141558275;
    *(v8 + 4) = 1752392040;
    *(v8 + 12) = 2113;
    if (a1)
    {
      v10 = a1;
      v11 = _swift_stdlib_bridgeErrorToNSError();
      v12 = v11;
    }

    else
    {
      v11 = 0;
      v12 = 0;
    }

    *(v8 + 14) = v11;
    *v9 = v12;
    _os_log_impl(&dword_1C945E000, v6, v7, "Error while validating coordinate. error=%{private,mask.hash}@", v8, 0x16u);
    sub_1C9470AFC(v9, &qword_1EC3A5410, &qword_1C96ADAF0);
    MEMORY[0x1CCA8E3D0](v9, -1, -1);
    MEMORY[0x1CCA8E3D0](v8, -1, -1);
  }

  v13 = a1;
  if (!a1)
  {
    sub_1C953AC04();
    v13 = swift_allocError();
    *v14 = 1;
  }

  v15 = a1;
  a2(v13);
}

void sub_1C9539FC4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  sub_1C96A3D04();
  v4 = a2;
  v3(a2);
}

id sub_1C953A038(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  if (a2)
  {
    v8 = sub_1C96A7004();
  }

  else
  {
    v8 = 0;
  }

  v9 = [v5 initWithEffectiveBundleIdentifier:v8 delegate:a3 onQueue:a4];

  swift_unknownObjectRelease();
  return v9;
}

uint64_t sub_1C953A0F0()
{
  swift_arrayDestroy();
  v0 = OUTLINED_FUNCTION_10_0();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1C953A130()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5400, &qword_1C96ADAE0);
  swift_arrayDestroy();
  v0 = OUTLINED_FUNCTION_10_0();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1C953A1A4(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_1C96A7BB4();
LABEL_9:
  result = sub_1C96A7AC4();
  *v2 = result;
  return result;
}

uint64_t sub_1C953A244(unint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = sub_1C946D04C();
  result = swift_unknownObjectRetain();
  v7 = 0;
  while (1)
  {
    if (v5 == v7)
    {
      swift_unknownObjectRelease();
      v7 = sub_1C946D04C();
LABEL_13:
      swift_unknownObjectRelease();
      return v7;
    }

    if ((v4 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1CCA8D440](v7, v4);
    }

    else
    {
      if (v7 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
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
        goto LABEL_59;
      }

      sub_1C96A3D04();
    }

    Strong = swift_unknownObjectWeakLoadStrong();

    if (Strong)
    {
      result = swift_unknownObjectRelease();
      if (Strong == a2)
      {
        break;
      }
    }

    v9 = __OFADD__(v7++, 1);
    if (v9)
    {
      goto LABEL_50;
    }
  }

  result = swift_unknownObjectRelease();
  v10 = v7 + 1;
  if (!__OFADD__(v7, 1))
  {
    while (1)
    {
      result = v4 >> 62 ? sub_1C96A7BB4() : *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v10 == result)
      {
        goto LABEL_13;
      }

      if ((v4 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1CCA8D440](v10, v4);
      }

      else
      {
        if ((v10 & 0x8000000000000000) != 0)
        {
          goto LABEL_51;
        }

        if (v10 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_52;
        }

        sub_1C96A3D04();
      }

      v11 = swift_unknownObjectWeakLoadStrong();

      if (!v11 || (result = swift_unknownObjectRelease(), v11 != a2))
      {
        if (v7 != v10)
        {
          if ((v4 & 0xC000000000000001) != 0)
          {
            v12 = MEMORY[0x1CCA8D440](v7, v4);
            v13 = MEMORY[0x1CCA8D440](v10, v4);
          }

          else
          {
            if ((v7 & 0x8000000000000000) != 0)
            {
              goto LABEL_56;
            }

            v14 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v7 >= v14)
            {
              goto LABEL_57;
            }

            if (v10 >= v14)
            {
              goto LABEL_58;
            }

            v12 = *(v4 + 32 + 8 * v7);
            v13 = *(v4 + 32 + 8 * v10);
            sub_1C96A3D04();
            sub_1C96A3D04();
          }

          if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v4 & 0x8000000000000000) != 0 || (v4 & 0x4000000000000000) != 0)
          {
            v4 = sub_1C964B858();
            v15 = (v4 >> 62) & 1;
          }

          else
          {
            LODWORD(v15) = 0;
          }

          v16 = v4 & 0xFFFFFFFFFFFFFF8;
          *((v4 & 0xFFFFFFFFFFFFFF8) + 8 * v7 + 0x20) = v13;

          if ((v4 & 0x8000000000000000) != 0 || v15)
          {
            result = sub_1C964B858();
            v4 = result;
            v16 = result & 0xFFFFFFFFFFFFFF8;
            if ((v10 & 0x8000000000000000) != 0)
            {
LABEL_48:
              __break(1u);
              goto LABEL_49;
            }
          }

          else if ((v10 & 0x8000000000000000) != 0)
          {
            goto LABEL_48;
          }

          if (v10 >= *(v16 + 16))
          {
            goto LABEL_55;
          }

          *(v16 + 8 * v10 + 32) = v12;

          *a1 = v4;
        }

        v9 = __OFADD__(v7++, 1);
        if (v9)
        {
          goto LABEL_54;
        }
      }

      v9 = __OFADD__(v10++, 1);
      if (v9)
      {
        goto LABEL_53;
      }
    }
  }

LABEL_59:
  __break(1u);
  return result;
}

void sub_1C953A518()
{
  OUTLINED_FUNCTION_103();
  v12 = v8 - v7;
  if (__OFSUB__(v8, v7))
  {
    __break(1u);
    goto LABEL_15;
  }

  v2 = v11;
  v0 = v9;
  v4 = v8;
  v13 = *v1;
  v1 = (*v1 & 0xFFFFFFFFFFFFFF8);
  v5 = v1 + 4;
  v3 = &v1[v7 + 4];
  v10(0);
  swift_arrayDestroy();
  v14 = __OFSUB__(v0, v12);
  v12 = v0 - v12;
  if (v14)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (!v12)
  {
    goto LABEL_12;
  }

  v6 = v13 >> 62;
  if (!(v13 >> 62))
  {
    v15 = v1[2];
    goto LABEL_6;
  }

LABEL_16:
  v15 = sub_1C96A7BB4();
LABEL_6:
  if (__OFSUB__(v15, v4))
  {
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v2(&v5[v4], v15 - v4, v3 + 8 * v0);
  if (v6)
  {
    v16 = sub_1C96A7BB4();
  }

  else
  {
    v16 = v1[2];
  }

  if (__OFADD__(v16, v12))
  {
    goto LABEL_18;
  }

  v1[2] = v16 + v12;
LABEL_12:
  if (v0 <= 0)
  {
    OUTLINED_FUNCTION_101();
    return;
  }

LABEL_19:
  __break(1u);
}

uint64_t sub_1C953A6CC(uint64_t a1)
{
  result = type metadata accessor for LocationManager.CurrentLocationResolution(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1C953A74C(uint64_t a1)
{
  sub_1C946B5D0(319, &qword_1EDB7FDB0, 0x1E6985C40);
  if (v1 <= 0x3F)
  {
    sub_1C953A7D0(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1C953A7D0(uint64_t a1)
{
  if (!qword_1EDB7D0B0)
  {
    type metadata accessor for Location(255);
    sub_1C946B5D0(255, &qword_1EDB7FDB0, 0x1E6985C40);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDB7D0B0);
    }
  }
}

void sub_1C953A87C(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  v5 = *v2;
  if (sub_1C9470260(*v2) < a2)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (__OFSUB__(a2, a1))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v6 = a1 - a2;
  if (__OFSUB__(0, a2 - a1))
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v7 = sub_1C9470260(v5);
  v8 = __OFADD__(v7, v6);
  v9 = v7 + v6;
  if (!v8)
  {
    sub_1C953A1A4(v9, 1);
    OUTLINED_FUNCTION_32_0();
    sub_1C953A518();
    return;
  }

LABEL_11:
  __break(1u);
}

void sub_1C953A928(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v4 = *(*v2 + 16);
  if (v4 < a2)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v6 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = a1 - a2;
  if (__OFSUB__(0, v6))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (__OFADD__(v4, v7))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_1C949DB5C(v4 - v6, 1, sub_1C94C594C);
  v8 = *v2;
  type metadata accessor for LocationOfInterest(0);
  OUTLINED_FUNCTION_10_2();
  v10 = v8 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
  v12 = *(v11 + 72);
  v13 = v10 + v12 * a1;
  swift_arrayDestroy();
  if (!v6)
  {
LABEL_10:
    *v2 = v8;
    return;
  }

  v14 = *(v8 + 16);
  if (__OFSUB__(v14, a2))
  {
    goto LABEL_16;
  }

  sub_1C9522AB8(v10 + v12 * a2, v14 - a2, v13);
  v15 = *(v8 + 16);
  v16 = __OFADD__(v15, v7);
  v17 = v15 - v6;
  if (!v16)
  {
    *(v8 + 16) = v17;
    goto LABEL_10;
  }

LABEL_17:
  __break(1u);
}

uint64_t objectdestroy_53Tm()
{

  v1 = OUTLINED_FUNCTION_10_0();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1C953AB9C(double a1, double a2)
{
  v3 = *(v2 + 16);
  *v5 = a1;
  *&v5[1] = a2;
  return v3(v5);
}

unint64_t sub_1C953AC04()
{
  result = qword_1EC3A5420;
  if (!qword_1EC3A5420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A5420);
  }

  return result;
}

uint64_t sub_1C953AC68(uint64_t a1)
{
  v3 = *(sub_1C96A65E4() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  return sub_1C9537DA4(a1, *(v1 + 16), v1 + v4, *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

void sub_1C953AD04()
{
  v0 = sub_1C96A65E4();
  OUTLINED_FUNCTION_7(v0);
  OUTLINED_FUNCTION_42_3();
  v1 = OUTLINED_FUNCTION_32_0();
  sub_1C9538080(v1, v2, v3, v4);
}

uint64_t sub_1C953AD84()
{
  OUTLINED_FUNCTION_28_4();
  v2 = *(sub_1C96A60A4() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return sub_1C95399CC(v0, v3);
}

uint64_t sub_1C953AE2C()
{
  OUTLINED_FUNCTION_40_2();
  v2(0);
  OUTLINED_FUNCTION_6();
  (*(v3 + 16))(v0, v1);
  return v0;
}

uint64_t sub_1C953AE88()
{
  v1 = OUTLINED_FUNCTION_28_4();
  v2(v1);
  OUTLINED_FUNCTION_6();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_1C953AF3C()
{
  v0 = type metadata accessor for Location(0);
  OUTLINED_FUNCTION_7(v0);
  OUTLINED_FUNCTION_42_3();
  v1 = OUTLINED_FUNCTION_38();
  return sub_1C95390EC(v1, v2, v3, v4);
}

uint64_t sub_1C953B008()
{
  v1 = type metadata accessor for Location(0);
  OUTLINED_FUNCTION_7(v1);
  return sub_1C95390EC(*(v0 + 16), *(v0 + 24), *(v0 + 32), v0 + ((*(v2 + 80) + 40) & ~*(v2 + 80)));
}

_BYTE *storeEnumTagSinglePayload for LocationManager.UpdateError(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C953B178()
{
  result = qword_1EC3A5460;
  if (!qword_1EC3A5460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A5460);
  }

  return result;
}

uint64_t sub_1C953B254(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_1C946306C(a1, v8);
    swift_isUniquelyReferenced_nonNull_native();
    v7 = *v3;
    sub_1C950B354();

    *v3 = v7;
  }

  else
  {
    sub_1C9470AFC(a1, &qword_1EC3A4A90, &qword_1C96B0AA0);
    sub_1C95FAB70(a2, a3, v8);

    return sub_1C9470AFC(v8, &qword_1EC3A4A90, &qword_1C96B0AA0);
  }

  return result;
}

uint64_t sub_1C953B328(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    sub_1C946306C(a1, v8);
    swift_isUniquelyReferenced_nonNull_native();
    v7 = *v2;
    sub_1C950B460();
    *v2 = v7;
    sub_1C96A7B74();
    OUTLINED_FUNCTION_6();
    return (*(v4 + 8))(a2);
  }

  else
  {
    sub_1C9470AFC(a1, &qword_1EC3A5470, &qword_1C96ADC20);
    sub_1C95FAC2C(v8);
    sub_1C96A7B74();
    OUTLINED_FUNCTION_6();
    (*(v6 + 8))(a2);
    return sub_1C9470AFC(v8, &qword_1EC3A5470, &qword_1C96ADC20);
  }
}

uint64_t sub_1C953B440(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5450, &qword_1C96AD580);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v21 - v9;
  v11 = type metadata accessor for Location(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (__swift_getEnumTagSinglePayload(a1, 1, v14) == 1)
  {
    sub_1C9470AFC(a1, &qword_1EC3A5450, &qword_1C96AD580);
    sub_1C95FAD30(a2, a3, v10);

    return sub_1C9470AFC(v10, &qword_1EC3A5450, &qword_1C96AD580);
  }

  else
  {
    sub_1C94898C4(a1, v13);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1C950BE64(v13, a2, a3, isUniquelyReferenced_nonNull_native, v17, v18, v19, v20, v21[0], *v4);

    *v4 = v21[1];
  }

  return result;
}

uint64_t StubGeocodeStore.queryLocation(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5450, &qword_1C96AD580);
  OUTLINED_FUNCTION_7(v7);
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v14 - v9;
  sub_1C96A50E4();
  swift_beginAccess();
  sub_1C94FA67C(a1, a2, *(v3 + 24), v10);
  v11 = type metadata accessor for Location(0);
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
  {
    sub_1C9470AFC(v10, &qword_1EC3A5450, &qword_1C96AD580);
    swift_endAccess();
    v12 = 1;
  }

  else
  {
    sub_1C94898C4(v10, a3);
    swift_endAccess();
    v12 = 0;
  }

  __swift_storeEnumTagSinglePayload(a3, v12, 1, v11);
  return sub_1C96A50F4();
}

uint64_t StubGeocodeStore.queryLocationAndTimeZoneIdentifier(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5450, &qword_1C96AD580);
  OUTLINED_FUNCTION_7(v7);
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for Location(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C96A50E4();
  swift_beginAccess();
  sub_1C94FA67C(a1, a2, *(v3 + 24), v10);
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
  {
    sub_1C9470AFC(v10, &qword_1EC3A5450, &qword_1C96AD580);
    swift_endAccess();
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4F40, &qword_1C96ABB88);
    v16 = a3;
    v17 = 1;
  }

  else
  {
    sub_1C94898C4(v10, v14);
    swift_endAccess();
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4F40, &qword_1C96ABB88);
    v19 = (a3 + *(v18 + 48));
    sub_1C9489760(v14, a3);
    v20 = sub_1C96A4D74();
    v22 = v21;
    sub_1C94DBDDC(v14);
    *v19 = v20;
    v19[1] = v22;
    v16 = a3;
    v17 = 0;
    v15 = v18;
  }

  __swift_storeEnumTagSinglePayload(v16, v17, 1, v15);
  return sub_1C96A50F4();
}

uint64_t StubGeocodeStore.saveLocation(_:for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5450, &qword_1C96AD580);
  OUTLINED_FUNCTION_7(v6);
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v12 - v8;
  sub_1C96A50E4();
  sub_1C9489760(a1, v9);
  v10 = type metadata accessor for Location(0);
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v10);
  swift_beginAccess();
  sub_1C96A53C4();
  sub_1C953B440(v9, a2, a3);
  swift_endAccess();
  return sub_1C96A50F4();
}

Swift::Void __swiftcall StubGeocodeStore.deleteLocation(for:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5450, &qword_1C96AD580);
  OUTLINED_FUNCTION_7(v3);
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v8 - v5;
  sub_1C96A50E4();
  v7 = type metadata accessor for Location(0);
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v7);
  swift_beginAccess();
  sub_1C96A53C4();
  sub_1C953B440(v6, countAndFlagsBits, object);
  swift_endAccess();
  sub_1C96A50F4();
}

uint64_t StubGeocodeStore.deleteAllLocations(satisfying:)(unint64_t a1, unint64_t a2)
{
  sub_1C96A50E4();
  swift_beginAccess();
  v8[2] = a1;
  v8[3] = a2;
  v5 = sub_1C96A53C4();
  v6 = sub_1C953BCC4(v5, sub_1C953BB80, v8);

  *(v2 + 24) = v6;

  return sub_1C96A50F4();
}

uint64_t StubGeocodeStore.deinit()
{

  return v0;
}

uint64_t StubGeocodeStore.__deallocating_deinit()
{
  StubGeocodeStore.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

unint64_t *sub_1C953BCC4(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, char *), unint64_t *a3)
{
  v6 = a1;
  v13[1] = *MEMORY[0x1E69E9840];
  v7 = *(a1 + 32);
  v8 = ((1 << v7) + 63) >> 6;
  if ((v7 & 0x3Fu) > 0xD)
  {
    sub_1C96A3D04();
    if (!swift_stdlib_isStackAllocationSafe())
    {
      v12 = swift_slowAlloc();
      a3 = sub_1C953C078(v12, v8, v6, a2);
      MEMORY[0x1CCA8E3D0](v12, -1, -1);
      return a3;
    }
  }

  MEMORY[0x1EEE9AC00](a1);
  v9 = (v13 - ((8 * v8 + 15) & 0x3FFFFFFFFFFFFFF0));
  sub_1C94C18E0(0, v8, v9);
  sub_1C953BE84(v9, v8, v6, a2);
  if (!v3)
  {
    return v10;
  }

  swift_willThrow();
  return a3;
}

void sub_1C953BE84(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, char *))
{
  v24 = a2;
  v28 = a4;
  v25 = a1;
  v5 = type metadata accessor for Location(0);
  v27 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = 0;
  v8 = 0;
  v29 = a3;
  v11 = *(a3 + 64);
  v10 = a3 + 64;
  v9 = v11;
  v12 = 1 << *(v10 - 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & v9;
  v15 = (v12 + 63) >> 6;
  while (v14)
  {
    v16 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
LABEL_11:
    v19 = v16 | (v8 << 6);
    v20 = (*(v29 + 48) + 16 * v19);
    v21 = *v20;
    v22 = v20[1];
    sub_1C9489760(*(v29 + 56) + *(v27 + 72) * v19, v7);
    sub_1C96A53C4();
    LOBYTE(v21) = v28(v21, v22, v7);
    sub_1C94DBDDC(v7);

    if (v21)
    {
      *(v25 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      if (__OFADD__(v26++, 1))
      {
        __break(1u);
LABEL_15:
        sub_1C96A3308(v25, v24, v26, v29);
        return;
      }
    }
  }

  v17 = v8;
  while (1)
  {
    v8 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v8 >= v15)
    {
      goto LABEL_15;
    }

    v18 = *(v10 + 8 * v8);
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v14 = (v18 - 1) & v18;
      goto LABEL_11;
    }
  }

  __break(1u);
}

unint64_t *sub_1C953C078(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, char *))
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

    sub_1C953BE84(v7, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

uint64_t sub_1C953C108(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1C953C12C, 0, 0);
}

uint64_t sub_1C953C12C()
{
  OUTLINED_FUNCTION_18();
  sub_1C96A73F4();
  *(v0 + 40) = sub_1C96A73E4();
  sub_1C96A7374();
  v1 = OUTLINED_FUNCTION_4_16();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_1C953C1B4()
{
  OUTLINED_FUNCTION_30();

  OUTLINED_FUNCTION_5_15(v0, &qword_1EC3A5478, &qword_1C96ADC38);
  OUTLINED_FUNCTION_3_10();

  return v1();
}

uint64_t sub_1C953C23C()
{
  OUTLINED_FUNCTION_30();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_17_1(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_0_23(v1);

  return sub_1C953C108(v3, v4, v5);
}

uint64_t sub_1C953C2CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1C953C2F0, 0, 0);
}

uint64_t sub_1C953C2F0()
{
  OUTLINED_FUNCTION_18();
  sub_1C96A73F4();
  *(v0 + 40) = sub_1C96A73E4();
  sub_1C96A7374();
  v1 = OUTLINED_FUNCTION_4_16();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_1C953C378()
{
  OUTLINED_FUNCTION_30();

  OUTLINED_FUNCTION_5_15(v0, &qword_1EC3A5488, &qword_1C96ADC58);
  OUTLINED_FUNCTION_3_10();

  return v1();
}

uint64_t sub_1C953C400(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1C953C424, 0, 0);
}

uint64_t sub_1C953C424()
{
  OUTLINED_FUNCTION_18();
  sub_1C96A73F4();
  *(v0 + 40) = sub_1C96A73E4();
  sub_1C96A7374();
  v1 = OUTLINED_FUNCTION_4_16();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_1C953C4AC()
{
  OUTLINED_FUNCTION_30();

  OUTLINED_FUNCTION_5_15(v0, &qword_1EC3A5490, &unk_1C96ADC70);
  OUTLINED_FUNCTION_3_10();

  return v1();
}

uint64_t sub_1C953C534()
{
  OUTLINED_FUNCTION_30();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_17_1(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_0_23(v1);

  return sub_1C953C2CC(v3, v4, v5);
}

uint64_t sub_1C953C5C4()
{
  OUTLINED_FUNCTION_30();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_17_1(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_0_23(v1);

  return sub_1C953C400(v3, v4, v5);
}

uint64_t sub_1C953C654()
{
  OUTLINED_FUNCTION_18();
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void *sub_1C953C744@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t (*a4)(void *, uint64_t)@<X3>, uint64_t a5@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_1C96A5274();
  if (v10)
  {
    return a4(v9, a5);
  }

  __break(1u);
  return result;
}

uint64_t SavedLocationsReconciler.__allocating_init(defaultCityManager:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = 0;
  return result;
}

uint64_t SavedLocationsReconciler.init(defaultCityManager:)(uint64_t a1)
{
  *(v1 + 16) = a1;
  *(v1 + 24) = 0;
  return v1;
}

id SavedLocationsReconciler.defaultLocations.getter()
{
  v1 = *(v0 + 16);
  if (*(v0 + 24))
  {

    return sub_1C96A53C4();
  }

  else
  {
    v3 = v1;
    v4 = WCDefaultCityManager.defaultLocations()();
    sub_1C953C890(v1, 0);
    return v4;
  }
}

void sub_1C953C890(void *a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

void *SavedLocationsReconciler.reconciledLocalLocations(_:with:)(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for LocationDataModel(0);
  v59 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v56 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v61 = &v54 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v60 = (&v54 - v9);
  if (qword_1EDB7D010 != -1)
  {
LABEL_29:
    OUTLINED_FUNCTION_0_24(&qword_1EDB7D010);
  }

  v10 = sub_1C96A6154();
  v11 = __swift_project_value_buffer(v10, qword_1EDB7D018);
  sub_1C96A53C4();
  sub_1C96A53C4();
  v12 = sub_1C96A6134();
  v13 = sub_1C96A76A4();

  v14 = os_log_type_enabled(v12, v13);
  v55 = v4;
  v57 = a1;
  v58 = v11;
  if (v14)
  {
    v15 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    *v15 = 141558787;
    *(v15 + 4) = 1752392040;
    *(v15 + 12) = 2081;
    v16 = MEMORY[0x1CCA8CC40](a1, v4);
    v18 = sub_1C9484164(v16, v17, &v62);

    *(v15 + 14) = v18;
    *(v15 + 22) = 2160;
    *(v15 + 24) = 1752392040;
    *(v15 + 32) = 2081;
    v19 = MEMORY[0x1CCA8CC40](a2, v4);
    v21 = sub_1C9484164(v19, v20, &v62);

    *(v15 + 34) = v21;
    _os_log_impl(&dword_1C945E000, v12, v13, "Starting a reconcile function - newLocalLocations: %{private,mask.hash}s, localLocations: %{private,mask.hash}s", v15, 0x2Au);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_26();
    OUTLINED_FUNCTION_26();
  }

  v4 = a2[2];
  v22 = v60;
  if (v4)
  {
    v23 = a2 + ((*(v59 + 80) + 32) & ~*(v59 + 80));
    a2 = MEMORY[0x1E69E7CC8];
    v24 = *(v59 + 72);
    while (1)
    {
      sub_1C95086AC(v23, v22);
      v25 = *v22;
      a1 = v22[1];
      sub_1C95086AC(v22, v61);
      swift_isUniquelyReferenced_nonNull_native();
      v62 = a2;
      v26 = sub_1C9476F90(v25, a1);
      v28 = a2[2];
      v29 = (v27 & 1) == 0;
      a2 = (v28 + v29);
      if (__OFADD__(v28, v29))
      {
        __break(1u);
LABEL_28:
        __break(1u);
        goto LABEL_29;
      }

      v30 = v26;
      v31 = v27;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5498, &qword_1C96ADC80);
      if (sub_1C96A7B84())
      {
        v32 = sub_1C9476F90(v25, a1);
        if ((v31 & 1) != (v33 & 1))
        {
          result = sub_1C96A7E44();
          __break(1u);
          return result;
        }

        v30 = v32;
      }

      a2 = v62;
      if (v31)
      {
        sub_1C953DCD0(v61, v62[7] + v30 * v24);
      }

      else
      {
        v62[(v30 >> 6) + 8] |= 1 << v30;
        v34 = (a2[6] + 16 * v30);
        *v34 = v25;
        v34[1] = a1;
        sub_1C9508710(v61, a2[7] + v30 * v24);
        v35 = a2[2];
        v36 = __OFADD__(v35, 1);
        v37 = v35 + 1;
        if (v36)
        {
          goto LABEL_28;
        }

        a2[2] = v37;
        sub_1C96A53C4();
      }

      v22 = v60;
      sub_1C9508838(v60);
      v23 += v24;
      if (!--v4)
      {
        goto LABEL_17;
      }
    }
  }

  a2 = MEMORY[0x1E69E7CC8];
LABEL_17:
  v38 = v57;
  v39 = *(v57 + 16);
  if (v39)
  {
    v62 = MEMORY[0x1E69E7CC0];
    sub_1C9522CB0();
    v40 = v62;
    v41 = (*(v59 + 80) + 32) & ~*(v59 + 80);
    v42 = (v38 + v41);
    v43 = *(v59 + 72);
    v44 = v56;
    do
    {
      sub_1C953CE58(v42, a2, v44);
      v62 = v40;
      v45 = v40[2];
      if (v45 >= v40[3] >> 1)
      {
        sub_1C9522CB0();
        v44 = v56;
        v40 = v62;
      }

      v40[2] = v45 + 1;
      sub_1C9508710(v44, v40 + v41 + v45 * v43);
      v42 = (v42 + v43);
      --v39;
    }

    while (v39);
  }

  else
  {

    v40 = MEMORY[0x1E69E7CC0];
  }

  sub_1C96A53C4();
  v46 = sub_1C96A6134();
  v47 = sub_1C96A76A4();

  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v62 = v49;
    *v48 = 141558275;
    *(v48 + 4) = 1752392040;
    *(v48 + 12) = 2081;
    v50 = MEMORY[0x1CCA8CC40](v40, v55);
    v52 = sub_1C9484164(v50, v51, &v62);

    *(v48 + 14) = v52;
    _os_log_impl(&dword_1C945E000, v46, v47, "Reconciled new local locations with old: %{private,mask.hash}s", v48, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v49);
    OUTLINED_FUNCTION_26();
    OUTLINED_FUNCTION_26();
  }

  return v40;
}

void *sub_1C953CE58@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v68 = a3;
  v66 = sub_1C96A4A54();
  v65 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v63 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_1C96A4DF4();
  v62 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v64 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5430, &unk_1C96AAB30);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v58 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5F60, &qword_1C96AD6B0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v58 - v17;
  v61 = type metadata accessor for LocationDataModel(0);
  v19 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v21 = &v58 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v58 - v23;
  if (!*(a2 + 16))
  {
    return sub_1C95086AC(a1, v68);
  }

  v25 = sub_1C9476F90(*a1, a1[1]);
  if ((v26 & 1) == 0)
  {
    return sub_1C95086AC(a1, v68);
  }

  sub_1C95086AC(*(a2 + 56) + *(v19 + 72) * v25, v21);
  sub_1C9508710(v21, v24);
  sub_1C953D518(v18, v12, a1, v24);
  sub_1C9508774(v18, v15, &unk_1EC3A5F60, &qword_1C96AD6B0);
  v27 = v67;
  if (__swift_getEnumTagSinglePayload(v15, 1, v67) == 1)
  {
    sub_1C94BE204(v12, &unk_1EC3A5430, &unk_1C96AAB30);
    sub_1C94BE204(v18, &unk_1EC3A5F60, &qword_1C96AD6B0);
    v28 = v15;
    v29 = &unk_1EC3A5F60;
    v30 = &qword_1C96AD6B0;
LABEL_8:
    sub_1C94BE204(v28, v29, v30);
    return sub_1C9508710(v24, v68);
  }

  v32 = v62;
  v33 = v64;
  (*(v62 + 32))(v64, v15, v27);
  sub_1C9508774(v12, v9, &unk_1EC3A5430, &unk_1C96AAB30);
  v34 = v66;
  if (__swift_getEnumTagSinglePayload(v9, 1, v66) == 1)
  {
    (*(v32 + 8))(v33, v27);
    sub_1C94BE204(v12, &unk_1EC3A5430, &unk_1C96AAB30);
    sub_1C94BE204(v18, &unk_1EC3A5F60, &qword_1C96AD6B0);
    v28 = v9;
    v29 = &unk_1EC3A5430;
    v30 = &unk_1C96AAB30;
    goto LABEL_8;
  }

  v58 = *(v65 + 32);
  v65 += 32;
  v58(v63, v9, v34);
  memcpy(__dst, v24, 0x48uLL);
  v35 = v61;
  v36 = v27;
  v37 = *(v61 + 20);
  v38 = v68;
  v39 = v64;
  (*(v32 + 16))(&v68[v37], v64, v36);
  __swift_storeEnumTagSinglePayload(&v38[v37], 0, 1, v36);
  sub_1C95087DC(__dst, v69);
  v60 = sub_1C96A4D74();
  v59 = v40;
  (*(v32 + 8))(v39, v36);
  sub_1C94BE204(v12, &unk_1EC3A5430, &unk_1C96AAB30);
  sub_1C94BE204(v18, &unk_1EC3A5F60, &qword_1C96AD6B0);
  v41 = v35[7];
  v42 = v66;
  v58(&v38[v41], v63, v66);
  __swift_storeEnumTagSinglePayload(&v38[v41], 0, 1, v42);
  v43 = v35[9];
  v44 = &v24[v35[8]];
  v45 = *(v44 + 1);
  v65 = *v44;
  v46 = *&v24[v43 + 8];
  v67 = *&v24[v43];
  v47 = &v24[v35[10]];
  v48 = *v47;
  v49 = *(v47 + 1);
  v50 = &v24[v35[11]];
  v51 = *(v50 + 1);
  v64 = *v50;
  sub_1C96A53C4();
  sub_1C96A53C4();
  sub_1C96A53C4();
  sub_1C96A53C4();
  sub_1C9508838(v24);
  __swift_storeEnumTagSinglePayload(&v38[v35[12]], 1, 1, v42);
  result = memcpy(v38, __dst, 0x48uLL);
  v52 = &v38[v35[6]];
  v53 = v59;
  *v52 = v60;
  v52[1] = v53;
  v54 = &v38[v35[8]];
  *v54 = v65;
  *(v54 + 1) = v45;
  v55 = &v38[v35[9]];
  *v55 = v67;
  *(v55 + 1) = v46;
  v56 = &v38[v35[10]];
  *v56 = v48;
  *(v56 + 1) = v49;
  v57 = &v38[v35[11]];
  *v57 = v64;
  v57[1] = v51;
  return result;
}

uint64_t sub_1C953D518(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v43 = a4;
  v48 = a1;
  v49 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5430, &unk_1C96AAB30);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v45 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v40 - v8;
  v10 = sub_1C96A4A54();
  v47 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v44 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v46 = &v40 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5F60, &qword_1C96AD6B0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v40 - v15;
  v17 = sub_1C96A4DF4();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for LocationDataModel(0);
  sub_1C9508774(a3 + *(v21 + 20), v16, &unk_1EC3A5F60, &qword_1C96AD6B0);
  if (__swift_getEnumTagSinglePayload(v16, 1, v17) == 1)
  {
    v22 = &unk_1EC3A5F60;
    v23 = &qword_1C96AD6B0;
    v24 = v16;
LABEL_5:
    sub_1C94BE204(v24, v22, v23);
    goto LABEL_6;
  }

  v25 = *(v18 + 32);
  v25(v20, v16, v17);
  sub_1C9508774(a3 + *(v21 + 28), v9, &unk_1EC3A5430, &unk_1C96AAB30);
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
  {
    (*(v18 + 8))(v20, v17);
    v22 = &unk_1EC3A5430;
    v23 = &unk_1C96AAB30;
    v24 = v9;
    goto LABEL_5;
  }

  v42 = v25;
  v29 = v46;
  v30 = v9;
  v31 = *(v47 + 32);
  v31(v46, v30, v10);
  v32 = v45;
  sub_1C9508774(v43 + *(v21 + 28), v45, &unk_1EC3A5430, &unk_1C96AAB30);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v32, 1, v10);
  v41 = v31;
  if (EnumTagSinglePayload == 1)
  {
    v34 = v44;
    sub_1C96A4954();
    if (__swift_getEnumTagSinglePayload(v32, 1, v10) != 1)
    {
      sub_1C94BE204(v32, &unk_1EC3A5430, &unk_1C96AAB30);
    }
  }

  else
  {
    v34 = v44;
    v31(v44, v32, v10);
  }

  sub_1C9508894();
  v35 = v29;
  v36 = sub_1C96A6F64();
  v37 = v34;
  v38 = *(v47 + 8);
  v38(v37, v10);
  if ((v36 & 1) == 0)
  {
    v39 = v48;
    v42(v48, v20, v17);
    __swift_storeEnumTagSinglePayload(v39, 0, 1, v17);
    v27 = v49;
    v41(v49, v35, v10);
    v26 = 0;
    return __swift_storeEnumTagSinglePayload(v27, v26, 1, v10);
  }

  v38(v35, v10);
  (*(v18 + 8))(v20, v17);
LABEL_6:
  v26 = 1;
  __swift_storeEnumTagSinglePayload(v48, 1, 1, v17);
  v27 = v49;
  return __swift_storeEnumTagSinglePayload(v27, v26, 1, v10);
}

uint64_t SavedLocationsReconciler.uniqueLocations(from:)(uint64_t a1)
{
  v15 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A60E0, &qword_1C96ADC88);
  sub_1C953DD34();
  sub_1C9508658();
  v2 = sub_1C96A7204();
  if (!sub_1C9554388(v2, a1))
  {
    if (qword_1EDB7D010 != -1)
    {
      OUTLINED_FUNCTION_0_24(&qword_1EDB7D010);
    }

    v3 = sub_1C96A6154();
    __swift_project_value_buffer(v3, qword_1EDB7D018);
    sub_1C96A53C4();
    sub_1C96A53C4();
    v4 = sub_1C96A6134();
    v5 = sub_1C96A76A4();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v6 = 141558787;
      *(v6 + 4) = 1752392040;
      *(v6 + 12) = 2081;
      v7 = type metadata accessor for LocationDataModel(0);
      v8 = MEMORY[0x1CCA8CC40](a1, v7);
      v10 = sub_1C9484164(v8, v9, &v15);

      *(v6 + 14) = v10;
      *(v6 + 22) = 2160;
      *(v6 + 24) = 1752392040;
      *(v6 + 32) = 2081;
      v11 = MEMORY[0x1CCA8CC40](v2, v7);
      v13 = sub_1C9484164(v11, v12, &v15);

      *(v6 + 34) = v13;
      _os_log_impl(&dword_1C945E000, v4, v5, "Just uniquified locations. Original locations=%{private,mask.hash}s. Unique locations=%{private,mask.hash}s", v6, 0x2Au);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_26();
      OUTLINED_FUNCTION_26();
    }
  }

  return v2;
}

uint64_t SavedLocationsReconciler.__deallocating_deinit()
{
  sub_1C953C890(*(v0 + 16), *(v0 + 24));

  return MEMORY[0x1EEE6BDC0](v0, 25, 7);
}

uint64_t sub_1C953DCD0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LocationDataModel(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C953DD34()
{
  result = qword_1EDB77D48;
  if (!qword_1EDB77D48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC3A60E0, &qword_1C96ADC88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB77D48);
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

uint64_t sub_1C953DE20(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 9))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C953DE60(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

void *FetchScheduleEntity.invalidate()@<X0>(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5430, &unk_1C96AAB30);
  OUTLINED_FUNCTION_7(v2);
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v11 - v4;
  result = sub_1C96A6354();
  v7 = v16;
  if (!v16)
  {
    __break(1u);
    goto LABEL_7;
  }

  v8 = v15;
  sub_1C96A6354();
  v9 = sub_1C96A4A54();
  result = __swift_getEnumTagSinglePayload(v5, 1, v9);
  if (result == 1)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  result = sub_1C96A6354();
  if (v14)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v10 = v13;
  result = sub_1C96A6354();
  if (v12)
  {
    return FetchScheduleEntity.init(id:date:gracePeriod:subscription:valid:)(v8, v7, v5, v11, v12, 0, a1, v10);
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t FetchScheduleEntity.init(id:date:gracePeriod:subscription:valid:)@<X0>(double a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, double a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t *a7@<X8>, double a8@<D0>)
{
  v111 = a6;
  v109 = a4;
  v110 = a5;
  v108 = a3;
  v105 = a1;
  v106 = a2;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5430, &unk_1C96AAB30);
  OUTLINED_FUNCTION_7(v10);
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v11);
  v107 = v98 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A54B0, &unk_1C96C8DA0);
  v14 = OUTLINED_FUNCTION_7(v13);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_24();
  v104 = v15;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_51_0();
  v103 = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A54B8, &unk_1C96ADDE0);
  v19 = OUTLINED_FUNCTION_7(v18);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_24();
  v101 = v20;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_51_0();
  v100 = v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D60, &unk_1C96AC540);
  v24 = OUTLINED_FUNCTION_7(v23);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_2();
  v27 = (v25 - v26);
  MEMORY[0x1EEE9AC00](v28);
  v30 = v98 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AC8, &unk_1C96AB090);
  v32 = OUTLINED_FUNCTION_7(v31);
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_2();
  v35 = v33 - v34;
  MEMORY[0x1EEE9AC00](v36);
  v38 = v98 - v37;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AD0, &unk_1C96AA6F0);
  v99 = v39;
  v98[0] = v38;
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v40, v41, v42, v39);
  v98[1] = v35;
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v43, v44, v45, v39);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AD8, &unk_1C96AB0A0);
  OUTLINED_FUNCTION_9_2();
  swift_allocObject();
  OUTLINED_FUNCTION_6_2();
  v102 = sub_1C96A6344();
  *a7 = v102;
  sub_1C96A3D04();
  _s11WeatherCore11SystemClockV4time10Foundation4DateVvg_0();
  v46 = *MEMORY[0x1E69D61F8];
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D68, &unk_1C96AC550);
  OUTLINED_FUNCTION_6();
  v49 = *(v48 + 104);
  v49(v30, v46, v47);
  OUTLINED_FUNCTION_48();
  __swift_storeEnumTagSinglePayload(v50, v51, v52, v47);
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v53, v54, v55, v47);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D70, &unk_1C96AB0B0);
  OUTLINED_FUNCTION_9_2();
  swift_allocObject();
  OUTLINED_FUNCTION_1_1();
  a7[1] = sub_1C96A6344();
  _s11WeatherCore11SystemClockV4time10Foundation4DateVvg_0();
  v49(v30, v46, v47);
  OUTLINED_FUNCTION_48();
  __swift_storeEnumTagSinglePayload(v56, v57, v58, v47);
  _s11WeatherCore11SystemClockV4time10Foundation4DateVvg_0();
  v49(v27, v46, v47);
  OUTLINED_FUNCTION_48();
  __swift_storeEnumTagSinglePayload(v59, v60, v61, v47);
  OUTLINED_FUNCTION_65();
  swift_allocObject();
  OUTLINED_FUNCTION_1_1();
  a7[2] = sub_1C96A6344();
  v62 = OUTLINED_FUNCTION_14_5();
  __swift_storeEnumTagSinglePayload(v62, v63, v64, v47);
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v65, v66, v67, v47);
  OUTLINED_FUNCTION_65();
  swift_allocObject();
  OUTLINED_FUNCTION_1_1();
  a7[3] = sub_1C96A6344();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A54C0, &unk_1C96B6CE0);
  OUTLINED_FUNCTION_0();
  __swift_storeEnumTagSinglePayload(v68, v69, v70, v71);
  OUTLINED_FUNCTION_0();
  __swift_storeEnumTagSinglePayload(v72, v73, v74, v75);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A54C8, &unk_1C96ADDF0);
  OUTLINED_FUNCTION_9_2();
  swift_allocObject();
  sub_1C96A3D04();
  OUTLINED_FUNCTION_1_0();
  a7[4] = sub_1C96A6344();
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v76, v77, v78, v99);
  OUTLINED_FUNCTION_0();
  __swift_storeEnumTagSinglePayload(v79, v80, v81, v82);
  swift_allocObject();
  sub_1C96A3D04();
  OUTLINED_FUNCTION_1_0();
  a7[5] = sub_1C96A6344();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A54D0, &unk_1C96C8DB0);
  OUTLINED_FUNCTION_0();
  __swift_storeEnumTagSinglePayload(v83, v84, v85, v86);
  OUTLINED_FUNCTION_0();
  __swift_storeEnumTagSinglePayload(v87, v88, v89, v90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A54D8, &qword_1C96ADE00);
  OUTLINED_FUNCTION_9_2();
  swift_allocObject();
  sub_1C96A3D04();
  OUTLINED_FUNCTION_1_0();
  a7[6] = sub_1C96A6344();
  v112 = v105;
  v113 = v106;
  sub_1C96A3D04();
  sub_1C96A6364();

  v91 = sub_1C96A4A54();
  v92 = *(v91 - 8);
  v93 = v108;
  (*(v92 + 16))(v107, v108, v91);
  OUTLINED_FUNCTION_48();
  __swift_storeEnumTagSinglePayload(v94, v95, v96, v91);
  sub_1C96A6364();

  v112 = a8;
  LOBYTE(v113) = 0;
  sub_1C96A6364();

  v112 = v109;
  v113 = v110;
  sub_1C96A6364();

  LOBYTE(v112) = v111;
  sub_1C96A6364();

  return (*(v92 + 8))(v93, v91);
}

uint64_t static FetchScheduleEntity.version.getter()
{
  swift_beginAccess();
  v0 = *a003;
  sub_1C96A53C4();
  return v0;
}

uint64_t static FetchScheduleEntity.version.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *a003 = a1;
  qword_1EC3A54A8 = a2;
}

uint64_t sub_1C953E798@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v2 = qword_1EC3A54A8;
  *a1 = *a003;
  a1[1] = v2;
  return sub_1C96A53C4();
}

uint64_t sub_1C953E7E8(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  swift_beginAccess();
  *a003 = v2;
  qword_1EC3A54A8 = v1;
  sub_1C96A53C4();
}

uint64_t FetchScheduleEntity.init()@<X0>(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A54B0, &unk_1C96C8DA0);
  v3 = OUTLINED_FUNCTION_7(v2);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_24();
  v96 = v4;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_51_0();
  v95 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A54B8, &unk_1C96ADDE0);
  v8 = OUTLINED_FUNCTION_7(v7);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_24();
  v94 = v9;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_51_0();
  v93 = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D60, &unk_1C96AC540);
  v13 = OUTLINED_FUNCTION_7(v12);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_2();
  v16 = (v14 - v15);
  MEMORY[0x1EEE9AC00](v17);
  v19 = v91 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AC8, &unk_1C96AB090);
  v21 = OUTLINED_FUNCTION_7(v20);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_2();
  v24 = v22 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v27 = v91 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AD0, &unk_1C96AA6F0);
  v92 = v28;
  v91[1] = v27;
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v29, v30, v31, v28);
  v91[2] = v24;
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v32, v33, v34, v28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AD8, &unk_1C96AB0A0);
  OUTLINED_FUNCTION_9_2();
  swift_allocObject();
  OUTLINED_FUNCTION_6_2();
  *a1 = sub_1C96A6344();
  _s11WeatherCore11SystemClockV4time10Foundation4DateVvg_0();
  v35 = *MEMORY[0x1E69D61F8];
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D68, &unk_1C96AC550);
  OUTLINED_FUNCTION_6();
  v38 = *(v37 + 104);
  v38(v19, v35, v36);
  OUTLINED_FUNCTION_48();
  __swift_storeEnumTagSinglePayload(v39, v40, v41, v36);
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v42, v43, v44, v36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D70, &unk_1C96AB0B0);
  OUTLINED_FUNCTION_9_2();
  swift_allocObject();
  v45 = OUTLINED_FUNCTION_1_1();
  a1[1] = OUTLINED_FUNCTION_25_9(v45, v46, v47);
  _s11WeatherCore11SystemClockV4time10Foundation4DateVvg_0();
  v38(v19, v35, v36);
  OUTLINED_FUNCTION_48();
  __swift_storeEnumTagSinglePayload(v48, v49, v50, v36);
  _s11WeatherCore11SystemClockV4time10Foundation4DateVvg_0();
  v38(v16, v35, v36);
  OUTLINED_FUNCTION_48();
  __swift_storeEnumTagSinglePayload(v51, v52, v53, v36);
  swift_allocObject();
  v54 = OUTLINED_FUNCTION_1_1();
  a1[2] = OUTLINED_FUNCTION_25_9(v54, v55, v56);
  v57 = OUTLINED_FUNCTION_14_5();
  __swift_storeEnumTagSinglePayload(v57, v58, v59, v36);
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v60, v61, v62, v36);
  swift_allocObject();
  v63 = OUTLINED_FUNCTION_1_1();
  a1[3] = OUTLINED_FUNCTION_25_9(v63, v64, v65);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A54C0, &unk_1C96B6CE0);
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v67, v68, v69, v66);
  v70 = OUTLINED_FUNCTION_14_5();
  __swift_storeEnumTagSinglePayload(v70, v71, v72, v66);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A54C8, &unk_1C96ADDF0);
  OUTLINED_FUNCTION_9_2();
  swift_allocObject();
  OUTLINED_FUNCTION_1_1();
  a1[4] = sub_1C96A6344();
  v73 = OUTLINED_FUNCTION_14_5();
  __swift_storeEnumTagSinglePayload(v73, v74, v75, v92);
  OUTLINED_FUNCTION_0();
  __swift_storeEnumTagSinglePayload(v76, v77, v78, v79);
  swift_allocObject();
  v80 = OUTLINED_FUNCTION_1_1();
  a1[5] = OUTLINED_FUNCTION_25_9(v80, v81, v82);
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A54D0, &unk_1C96C8DB0);
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v84, v85, v86, v83);
  v87 = OUTLINED_FUNCTION_14_5();
  __swift_storeEnumTagSinglePayload(v87, v88, v89, v83);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A54D8, &qword_1C96ADE00);
  OUTLINED_FUNCTION_9_2();
  swift_allocObject();
  OUTLINED_FUNCTION_1_1();
  result = sub_1C96A6344();
  a1[6] = result;
  return result;
}

uint64_t sub_1C953ED3C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1C96A7DE4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x64657461657263 && a2 == 0xE700000000000000;
    if (v6 || (sub_1C96A7DE4() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6465696669646F6DLL && a2 == 0xE800000000000000;
      if (v7 || (sub_1C96A7DE4() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 1702125924 && a2 == 0xE400000000000000;
        if (v8 || (sub_1C96A7DE4() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x7265506563617267 && a2 == 0xEB00000000646F69;
          if (v9 || (sub_1C96A7DE4() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x7069726373627573 && a2 == 0xEC0000006E6F6974;
            if (v10 || (sub_1C96A7DE4() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0x64696C6176 && a2 == 0xE500000000000000)
            {

              return 6;
            }

            else
            {
              v12 = sub_1C96A7DE4();

              if (v12)
              {
                return 6;
              }

              else
              {
                return 7;
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1C953EF68(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x64657461657263;
      break;
    case 2:
      result = 0x6465696669646F6DLL;
      break;
    case 3:
      result = 1702125924;
      break;
    case 4:
      result = 0x7265506563617267;
      break;
    case 5:
      result = 0x7069726373627573;
      break;
    case 6:
      result = 0x64696C6176;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C953F034@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C953ED3C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C953F05C(uint64_t a1)
{
  v2 = sub_1C953F420();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C953F098(uint64_t a1)
{
  v2 = sub_1C953F420();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FetchScheduleEntity.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A54E0, &qword_1C96ADE08);
  OUTLINED_FUNCTION_1();
  v5 = v4;
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v53 - v7;
  v10 = *v1;
  v9 = v1[1];
  v11 = v1[3];
  v60 = v1[2];
  v61 = v9;
  v12 = v1[5];
  v58 = v1[4];
  v59 = v11;
  v56 = v1[6];
  v57 = v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v13 = sub_1C953F420();
  sub_1C96A3D04();
  sub_1C96A7F54();
  v63 = v10;
  v62 = 0;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AD8, &unk_1C96AB0A0);
  OUTLINED_FUNCTION_4_0();
  v18 = sub_1C9469CB4(v15, v16, &unk_1C96AB0A0, v17);
  v19 = v3;
  OUTLINED_FUNCTION_88(&v63, &v62, v3, v14, v18);
  if (v13)
  {
  }

  else
  {
    v21 = v60;
    v54 = v14;
    v55 = v5;

    v63 = v61;
    v62 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D70, &unk_1C96AB0B0);
    OUTLINED_FUNCTION_4_0();
    sub_1C9469CB4(v22, v23, &unk_1C96AB0B0, v24);
    v25 = OUTLINED_FUNCTION_9_9();
    OUTLINED_FUNCTION_17_0(v25, v26, v27);
    v63 = v21;
    v62 = 2;
    v28 = OUTLINED_FUNCTION_9_9();
    OUTLINED_FUNCTION_17_0(v28, v29, v30);
    v63 = v59;
    v62 = 3;
    v31 = OUTLINED_FUNCTION_9_9();
    OUTLINED_FUNCTION_17_0(v31, v32, v33);
    v63 = v58;
    v62 = 4;
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A54C8, &unk_1C96ADDF0);
    OUTLINED_FUNCTION_4_0();
    sub_1C9469CB4(v35, v36, &unk_1C96ADDF0, v37);
    v38 = OUTLINED_FUNCTION_9_9();
    OUTLINED_FUNCTION_88(v38, v39, v40, v34, v41);
    v63 = v57;
    v62 = 5;
    v42 = OUTLINED_FUNCTION_9_9();
    OUTLINED_FUNCTION_88(v42, v43, v44, v54, v18);
    v5 = v55;
    v63 = v56;
    v62 = 6;
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A54D8, &qword_1C96ADE00);
    OUTLINED_FUNCTION_4_0();
    sub_1C9469CB4(v46, v47, &qword_1C96ADE00, v48);
    v49 = OUTLINED_FUNCTION_9_9();
    OUTLINED_FUNCTION_88(v49, v50, v51, v45, v52);
  }

  return (*(v5 + 8))(v8, v19);
}

unint64_t sub_1C953F420()
{
  result = qword_1EC3A54E8;
  if (!qword_1EC3A54E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A54E8);
  }

  return result;
}

uint64_t FetchScheduleEntity.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v121 = a1;
  v105 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5500, &qword_1C96ADE10);
  OUTLINED_FUNCTION_1();
  v106 = v3;
  v107 = v2;
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v4);
  v114 = &v105 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A54B0, &unk_1C96C8DA0);
  v7 = OUTLINED_FUNCTION_7(v6);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_24();
  v113 = v8;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_51_0();
  v112 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A54B8, &unk_1C96ADDE0);
  v12 = OUTLINED_FUNCTION_7(v11);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_24();
  v117 = v13;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_51_0();
  v116 = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D60, &unk_1C96AC540);
  v17 = OUTLINED_FUNCTION_7(v16);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_2();
  v20 = (v18 - v19);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v105 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AC8, &unk_1C96AB090);
  v25 = OUTLINED_FUNCTION_7(v24);
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_24();
  v27 = v26;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v105 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AD0, &unk_1C96AA6F0);
  v110 = v31;
  v108 = v30;
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v32, v33, v34, v31);
  v109 = v27;
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v35, v36, v37, v31);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AD8, &unk_1C96AB0A0);
  OUTLINED_FUNCTION_9_2();
  swift_allocObject();
  OUTLINED_FUNCTION_6_2();
  v120 = sub_1C96A6344();
  _s11WeatherCore11SystemClockV4time10Foundation4DateVvg_0();
  v39 = *MEMORY[0x1E69D61F8];
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D68, &unk_1C96AC550);
  OUTLINED_FUNCTION_6();
  v42 = *(v41 + 104);
  v42(v23, v39, v40);
  OUTLINED_FUNCTION_48();
  __swift_storeEnumTagSinglePayload(v43, v44, v45, v40);
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v46, v47, v48, v40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D70, &unk_1C96AB0B0);
  OUTLINED_FUNCTION_9_2();
  swift_allocObject();
  OUTLINED_FUNCTION_1_1();
  v119 = sub_1C96A6344();
  _s11WeatherCore11SystemClockV4time10Foundation4DateVvg_0();
  v42(v23, v39, v40);
  OUTLINED_FUNCTION_48();
  __swift_storeEnumTagSinglePayload(v49, v50, v51, v40);
  _s11WeatherCore11SystemClockV4time10Foundation4DateVvg_0();
  v42(v20, v39, v40);
  OUTLINED_FUNCTION_48();
  __swift_storeEnumTagSinglePayload(v52, v53, v54, v40);
  OUTLINED_FUNCTION_65();
  swift_allocObject();
  OUTLINED_FUNCTION_1_1();
  v118 = sub_1C96A6344();
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v55, v56, v57, v40);
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v58, v59, v60, v40);
  OUTLINED_FUNCTION_65();
  swift_allocObject();
  OUTLINED_FUNCTION_1_1();
  v111 = sub_1C96A6344();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A54C0, &unk_1C96B6CE0);
  OUTLINED_FUNCTION_0();
  __swift_storeEnumTagSinglePayload(v61, v62, v63, v64);
  OUTLINED_FUNCTION_0();
  __swift_storeEnumTagSinglePayload(v65, v66, v67, v68);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A54C8, &unk_1C96ADDF0);
  OUTLINED_FUNCTION_9_2();
  swift_allocObject();
  OUTLINED_FUNCTION_1_1();
  v116 = sub_1C96A6344();
  v70 = OUTLINED_FUNCTION_14_5();
  __swift_storeEnumTagSinglePayload(v70, v71, v72, v110);
  OUTLINED_FUNCTION_0();
  __swift_storeEnumTagSinglePayload(v73, v74, v75, v76);
  v77 = v38;
  swift_allocObject();
  OUTLINED_FUNCTION_1_1();
  v78 = v121;
  v117 = sub_1C96A6344();
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A54D0, &unk_1C96C8DB0);
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v80, v81, v82, v79);
  v83 = OUTLINED_FUNCTION_14_5();
  __swift_storeEnumTagSinglePayload(v83, v84, v85, v79);
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A54D8, &qword_1C96ADE00);
  OUTLINED_FUNCTION_9_2();
  swift_allocObject();
  OUTLINED_FUNCTION_1_1();
  v113 = sub_1C96A6344();
  __swift_project_boxed_opaque_existential_1(v78, v78[3]);
  sub_1C953F420();
  v87 = v115;
  v88 = v114;
  sub_1C96A7F44();
  if (!v87)
  {
    v122 = 0;
    v89 = OUTLINED_FUNCTION_5(&qword_1EC3A4B18, &qword_1EC3A4AD8, &unk_1C96AB0A0);
    OUTLINED_FUNCTION_16_3();
    OUTLINED_FUNCTION_21_9(v77, v90, v107, v77, v89);
    v115 = v77;

    v120 = v123;
    v122 = 1;
    OUTLINED_FUNCTION_5(&qword_1EC3A4E00, &qword_1EC3A4D70, &unk_1C96AB0B0);
    OUTLINED_FUNCTION_10_8();

    v119 = v123;
    v122 = 2;
    OUTLINED_FUNCTION_10_8();

    v118 = v123;
    v122 = 3;
    OUTLINED_FUNCTION_10_8();

    v92 = v123;
    v122 = 4;
    OUTLINED_FUNCTION_5(&qword_1EC3A5508, &qword_1EC3A54C8, &unk_1C96ADDF0);
    OUTLINED_FUNCTION_16_3();
    OUTLINED_FUNCTION_21_9(v69, v93, v107, v69, v94);
    v95 = v106;

    v96 = v123;
    v122 = 5;
    OUTLINED_FUNCTION_16_3();
    OUTLINED_FUNCTION_21_9(v115, v97, v107, v115, v89);

    v117 = v123;
    v122 = 6;
    OUTLINED_FUNCTION_5(&qword_1EC3A5510, &qword_1EC3A54D8, &qword_1C96ADE00);
    OUTLINED_FUNCTION_16_3();
    v98 = v107;
    OUTLINED_FUNCTION_21_9(v86, v99, v107, v86, v100);
    (*(v95 + 8))(v88, v98);
    v78 = v121;

    v101 = v123;
    v102 = v119;
    v103 = v105;
    *v105 = v120;
    v103[1] = v102;
    v104 = v117;
    v103[2] = v118;
    v103[3] = v92;
    v103[4] = v96;
    v103[5] = v104;
    v103[6] = v101;
    sub_1C96A3D04();
    sub_1C96A3D04();
    sub_1C96A3D04();
    sub_1C96A3D04();
    sub_1C96A3D04();
    sub_1C96A3D04();
    sub_1C96A3D04();
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v78);
}

unint64_t sub_1C953FD2C()
{
  result = qword_1EDB7C088;
  if (!qword_1EDB7C088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7C088);
  }

  return result;
}

unint64_t sub_1C953FD84()
{
  result = qword_1EDB7C0A0;
  if (!qword_1EDB7C0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7C0A0);
  }

  return result;
}

unint64_t sub_1C953FDDC()
{
  result = qword_1EDB7C078;
  if (!qword_1EDB7C078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7C078);
  }

  return result;
}

unint64_t sub_1C953FE30()
{
  result = qword_1EDB7C080;
  if (!qword_1EDB7C080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7C080);
  }

  return result;
}

unint64_t sub_1C953FE88()
{
  result = qword_1EDB7C098;
  if (!qword_1EDB7C098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7C098);
  }

  return result;
}

unint64_t sub_1C953FF08()
{
  result = qword_1EDB7C090;
  if (!qword_1EDB7C090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7C090);
  }

  return result;
}

uint64_t sub_1C953FF5C(uint64_t a1)
{
  v2 = sub_1C9540384();

  return MEMORY[0x1EEE438E0](a1, v2);
}

uint64_t sub_1C953FFA8(uint64_t a1)
{
  v2 = sub_1C9540384();

  return MEMORY[0x1EEE438F0](a1, v2);
}

uint64_t sub_1C953FFF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C9540384();

  return MEMORY[0x1EEE438E8](a1, a2, a3, v6);
}

uint64_t sub_1C954008C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C9540384();

  return MEMORY[0x1EEE43908](a1, a2, v4);
}

uint64_t sub_1C95400D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C9540384();

  return MEMORY[0x1EEE43900](a1, a2, a3, v6);
}

uint64_t sub_1C954012C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1C9540384();

  return MEMORY[0x1EEE438F8](a1, a2, a3, a4, v8);
}

_BYTE *storeEnumTagSinglePayload for FetchScheduleEntity.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C9540280()
{
  result = qword_1EC3A5518;
  if (!qword_1EC3A5518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A5518);
  }

  return result;
}

unint64_t sub_1C95402D8()
{
  result = qword_1EC3A5520;
  if (!qword_1EC3A5520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A5520);
  }

  return result;
}

unint64_t sub_1C9540330()
{
  result = qword_1EC3A5528;
  if (!qword_1EC3A5528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A5528);
  }

  return result;
}

unint64_t sub_1C9540384()
{
  result = qword_1EDB7C0A8[0];
  if (!qword_1EDB7C0A8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDB7C0A8);
  }

  return result;
}

uint64_t AutomationSavedLocationsData.locations.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t sub_1C9540434(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6E6F697461636F6CLL && a2 == 0xE900000000000073)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1C96A7DE4();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1C95404B4()
{
  sub_1C96A7EE4();
  MEMORY[0x1CCA8D880](0);
  return sub_1C96A7F24();
}

uint64_t sub_1C9540500@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C9540434(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1C9540548@<X0>(_BYTE *a1@<X8>)
{
  result = OUTLINED_FUNCTION_25_4();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1C9540574(uint64_t a1)
{
  v2 = sub_1C954078C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C95405B0(uint64_t a1)
{
  v2 = sub_1C954078C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AutomationSavedLocationsData.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5530, &unk_1C96AE140);
  OUTLINED_FUNCTION_1();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = v11 - v7;
  v9 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C954078C();
  sub_1C96A53C4();
  sub_1C96A7F54();
  v11[1] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5210, &qword_1C96AD570);
  sub_1C954098C(&qword_1EC3A5538, &qword_1EDB7ADD8, &protocol conformance descriptor for Location, MEMORY[0x1E69E6300]);
  sub_1C96A7D74();

  return (*(v5 + 8))(v8, v3);
}

unint64_t sub_1C954078C()
{
  result = qword_1EDB790B8[0];
  if (!qword_1EDB790B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDB790B8);
  }

  return result;
}

uint64_t AutomationSavedLocationsData.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5540, &qword_1C96AE150);
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = v12 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C954078C();
  sub_1C96A7F44();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5210, &qword_1C96AD570);
    sub_1C954098C(&qword_1EDB77D30, &qword_1EDB7D0B8, &protocol conformance descriptor for Location, MEMORY[0x1E69E6330]);
    sub_1C96A7CB4();
    (*(v7 + 8))(v10, v5);
    *a2 = v12[1];
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_1C954098C(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC3A5210, &qword_1C96AD570);
    sub_1C94892C0(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LocationEntityQuery(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 8))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for LocationEntityQuery(uint64_t result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for AutomationSavedLocationsData.CodingKeys(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_1C9540B80()
{
  result = qword_1EC3A5548;
  if (!qword_1EC3A5548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A5548);
  }

  return result;
}

unint64_t sub_1C9540BD8()
{
  result = qword_1EDB790A8;
  if (!qword_1EDB790A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB790A8);
  }

  return result;
}

unint64_t sub_1C9540C30()
{
  result = qword_1EDB790B0;
  if (!qword_1EDB790B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB790B0);
  }

  return result;
}

uint64_t static CurrentLocationGeocodedEntity.version.getter()
{
  swift_beginAccess();
  v0 = *a001_0;
  sub_1C96A53C4();
  return v0;
}

uint64_t static CurrentLocationGeocodedEntity.version.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *a001_0 = a1;
  qword_1EC3A5558 = a2;
}

uint64_t sub_1C9540DA8@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v2 = qword_1EC3A5558;
  *a1 = *a001_0;
  a1[1] = v2;
  return sub_1C96A53C4();
}

uint64_t sub_1C9540DF8(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  swift_beginAccess();
  *a001_0 = v2;
  qword_1EC3A5558 = v1;
  sub_1C96A53C4();
}

uint64_t CurrentLocationGeocodedEntity.init()@<X0>(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D60, &unk_1C96AC540);
  v3 = OUTLINED_FUNCTION_7(v2);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AC0, &unk_1C96AA6E0);
  v6 = OUTLINED_FUNCTION_7(v5);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AC8, &unk_1C96AB090);
  v9 = OUTLINED_FUNCTION_7(v8);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_10_1();
  MEMORY[0x1EEE9AC00](v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AD0, &unk_1C96AA6F0);
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v11);
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v15, v16, v17, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AD8, &unk_1C96AB0A0);
  OUTLINED_FUNCTION_9_2();
  swift_allocObject();
  OUTLINED_FUNCTION_7_3();
  *a1 = sub_1C96A6344();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AE0, &unk_1C96AA700);
  OUTLINED_FUNCTION_0();
  __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
  OUTLINED_FUNCTION_0();
  __swift_storeEnumTagSinglePayload(v22, v23, v24, v25);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AE8, &qword_1C96AE300);
  OUTLINED_FUNCTION_9_2();
  swift_allocObject();
  OUTLINED_FUNCTION_1_0();
  a1[1] = sub_1C96A6344();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D68, &unk_1C96AC550);
  OUTLINED_FUNCTION_0();
  __swift_storeEnumTagSinglePayload(v26, v27, v28, v29);
  OUTLINED_FUNCTION_0();
  __swift_storeEnumTagSinglePayload(v30, v31, v32, v33);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D70, &unk_1C96AB0B0);
  OUTLINED_FUNCTION_9_2();
  swift_allocObject();
  OUTLINED_FUNCTION_1_0();
  result = sub_1C96A6344();
  a1[2] = result;
  return result;
}

uint64_t sub_1C9541108@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v57 = a3;
  v58 = a4;
  v54 = a1;
  v55 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5430, &unk_1C96AAB30);
  OUTLINED_FUNCTION_7(v6);
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v53 - v8;
  v56 = type metadata accessor for Location(0);
  MEMORY[0x1EEE9AC00](v56);
  v53 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4B40, &qword_1C96AAA10);
  OUTLINED_FUNCTION_7(v11);
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v53 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D60, &unk_1C96AC540);
  v16 = OUTLINED_FUNCTION_7(v15);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AC0, &unk_1C96AA6E0);
  v19 = OUTLINED_FUNCTION_7(v18);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v20);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AC8, &unk_1C96AB090);
  v22 = OUTLINED_FUNCTION_7(v21);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_10_1();
  MEMORY[0x1EEE9AC00](v23);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AD0, &unk_1C96AA6F0);
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v25, v26, v27, v24);
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v28, v29, v30, v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AD8, &unk_1C96AB0A0);
  OUTLINED_FUNCTION_9_2();
  swift_allocObject();
  OUTLINED_FUNCTION_7_3();
  *a5 = sub_1C96A6344();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AE0, &unk_1C96AA700);
  OUTLINED_FUNCTION_0();
  __swift_storeEnumTagSinglePayload(v31, v32, v33, v34);
  OUTLINED_FUNCTION_0();
  __swift_storeEnumTagSinglePayload(v35, v36, v37, v38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AE8, &qword_1C96AE300);
  OUTLINED_FUNCTION_9_2();
  swift_allocObject();
  sub_1C96A3D04();
  OUTLINED_FUNCTION_1_0();
  a5[1] = sub_1C96A6344();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D68, &unk_1C96AC550);
  OUTLINED_FUNCTION_0();
  __swift_storeEnumTagSinglePayload(v39, v40, v41, v42);
  OUTLINED_FUNCTION_0();
  __swift_storeEnumTagSinglePayload(v43, v44, v45, v46);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D70, &unk_1C96AB0B0);
  OUTLINED_FUNCTION_9_2();
  swift_allocObject();
  sub_1C96A3D04();
  OUTLINED_FUNCTION_1_0();
  a5[2] = sub_1C96A6344();
  v59 = v54;
  v60 = v55;
  sub_1C96A3D04();
  sub_1C96A6364();

  v47 = v57;
  sub_1C9489760(v57, v53);
  sub_1C94892C0(&qword_1EDB7D0B8, &protocol conformance descriptor for Location);
  sub_1C94892C0(&qword_1EDB7ADD8, &protocol conformance descriptor for Location);
  sub_1C96A6284();
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4B48, &qword_1C96ABB80);
  __swift_storeEnumTagSinglePayload(v14, 0, 1, v48);
  sub_1C96A6364();

  v49 = sub_1C96A4A54();
  v50 = *(v49 - 8);
  v51 = v58;
  (*(v50 + 16))(v9, v58, v49);
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v49);
  sub_1C96A6364();

  (*(v50 + 8))(v51, v49);
  return sub_1C94DBDDC(v47);
}

uint64_t sub_1C9541610(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1C96A7DE4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6E6F697461636F6CLL && a2 == 0xE800000000000000;
    if (v6 || (sub_1C96A7DE4() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 1702125924 && a2 == 0xE400000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_1C96A7DE4();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1C9541718(char a1)
{
  if (!a1)
  {
    return 25705;
  }

  if (a1 == 1)
  {
    return 0x6E6F697461636F6CLL;
  }

  return 1702125924;
}

uint64_t sub_1C9541764@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C9541610(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C954178C(uint64_t a1)
{
  v2 = sub_1C9541A44();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C95417C8(uint64_t a1)
{
  v2 = sub_1C9541A44();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CurrentLocationGeocodedEntity.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5560, &qword_1C96AE308);
  OUTLINED_FUNCTION_1();
  v6 = v5;
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v23 - v8;
  v11 = *v1;
  v10 = v1[1];
  v24 = v1[2];
  v25 = v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C9541A44();
  sub_1C96A3D04();
  sub_1C96A7F54();
  v27 = v11;
  v26 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AD8, &unk_1C96AB0A0);
  OUTLINED_FUNCTION_4_0();
  sub_1C9469CB4(v12, v13, &unk_1C96AB0A0, v14);
  OUTLINED_FUNCTION_8_5();
  sub_1C96A7D74();

  if (!v2)
  {
    v15 = v24;
    v27 = v25;
    v26 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AE8, &qword_1C96AE300);
    OUTLINED_FUNCTION_4_0();
    sub_1C9469CB4(v16, v17, &qword_1C96AE300, v18);
    OUTLINED_FUNCTION_8_5();
    sub_1C96A7D74();
    v27 = v15;
    v26 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D70, &unk_1C96AB0B0);
    OUTLINED_FUNCTION_4_0();
    sub_1C9469CB4(v19, v20, &unk_1C96AB0B0, v21);
    OUTLINED_FUNCTION_8_5();
    sub_1C96A7D74();
  }

  return (*(v6 + 8))(v9, v4);
}

unint64_t sub_1C9541A44()
{
  result = qword_1EC3A5568;
  if (!qword_1EC3A5568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A5568);
  }

  return result;
}

uint64_t CurrentLocationGeocodedEntity.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v50 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5570, &qword_1C96AE310);
  OUTLINED_FUNCTION_1();
  v51 = v4;
  v52 = v3;
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v50 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D60, &unk_1C96AC540);
  v9 = OUTLINED_FUNCTION_7(v8);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AC0, &unk_1C96AA6E0);
  v12 = OUTLINED_FUNCTION_7(v11);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v13);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AC8, &unk_1C96AB090);
  v15 = OUTLINED_FUNCTION_7(v14);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_10_1();
  MEMORY[0x1EEE9AC00](v16);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AD0, &unk_1C96AA6F0);
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v18, v19, v20, v17);
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v21, v22, v23, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AD8, &unk_1C96AB0A0);
  OUTLINED_FUNCTION_9_2();
  swift_allocObject();
  OUTLINED_FUNCTION_7_3();
  v56 = sub_1C96A6344();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AE0, &unk_1C96AA700);
  OUTLINED_FUNCTION_0();
  __swift_storeEnumTagSinglePayload(v24, v25, v26, v27);
  OUTLINED_FUNCTION_0();
  __swift_storeEnumTagSinglePayload(v28, v29, v30, v31);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AE8, &qword_1C96AE300);
  OUTLINED_FUNCTION_9_2();
  swift_allocObject();
  OUTLINED_FUNCTION_1_0();
  v54 = sub_1C96A6344();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D68, &unk_1C96AC550);
  OUTLINED_FUNCTION_0();
  __swift_storeEnumTagSinglePayload(v32, v33, v34, v35);
  OUTLINED_FUNCTION_0();
  __swift_storeEnumTagSinglePayload(v36, v37, v38, v39);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D70, &unk_1C96AB0B0);
  OUTLINED_FUNCTION_9_2();
  swift_allocObject();
  OUTLINED_FUNCTION_1_0();
  sub_1C96A6344();
  v40 = a1[3];
  v55 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v40);
  sub_1C9541A44();
  v41 = v53;
  sub_1C96A7F44();
  if (!v41)
  {
    v42 = v51;
    v57 = 0;
    OUTLINED_FUNCTION_5(&qword_1EC3A4B18, &qword_1EC3A4AD8, &unk_1C96AB0A0);
    OUTLINED_FUNCTION_11_9();
    v43 = v7;
    sub_1C96A7CB4();

    v45 = v58;
    v57 = 1;
    OUTLINED_FUNCTION_5(&qword_1EC3A4B20, &qword_1EC3A4AE8, &qword_1C96AE300);
    OUTLINED_FUNCTION_11_9();
    sub_1C96A7CB4();

    v46 = v58;
    v57 = 2;
    OUTLINED_FUNCTION_5(&qword_1EC3A4E00, &qword_1EC3A4D70, &unk_1C96AB0B0);
    OUTLINED_FUNCTION_11_9();
    v47 = v52;
    sub_1C96A7CB4();
    (*(v42 + 8))(v43, v47);

    v48 = v58;
    v49 = v50;
    *v50 = v45;
    v49[1] = v46;
    v49[2] = v48;
    sub_1C96A3D04();
    sub_1C96A3D04();
    sub_1C96A3D04();
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v55);
}

unint64_t sub_1C9541FB0()
{
  result = qword_1EDB7B7B8;
  if (!qword_1EDB7B7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7B7B8);
  }

  return result;
}

unint64_t sub_1C9542008()
{
  result = qword_1EDB7B7D0;
  if (!qword_1EDB7B7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7B7D0);
  }

  return result;
}

unint64_t sub_1C9542060()
{
  result = qword_1EDB7B7A8;
  if (!qword_1EDB7B7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7B7A8);
  }

  return result;
}

unint64_t sub_1C95420B4()
{
  result = qword_1EDB7B7B0;
  if (!qword_1EDB7B7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7B7B0);
  }

  return result;
}

unint64_t sub_1C954210C()
{
  result = qword_1EDB7B7C8;
  if (!qword_1EDB7B7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7B7C8);
  }

  return result;
}

unint64_t sub_1C9542188()
{
  result = qword_1EDB7B7C0;
  if (!qword_1EDB7B7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7B7C0);
  }

  return result;
}

uint64_t sub_1C95421DC(uint64_t a1)
{
  v2 = sub_1C9542604();

  return MEMORY[0x1EEE438E0](a1, v2);
}

uint64_t sub_1C9542228(uint64_t a1)
{
  v2 = sub_1C9542604();

  return MEMORY[0x1EEE438F0](a1, v2);
}

uint64_t sub_1C9542274(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C9542604();

  return MEMORY[0x1EEE438E8](a1, a2, a3, v6);
}

uint64_t sub_1C954230C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C9542604();

  return MEMORY[0x1EEE43908](a1, a2, v4);
}

uint64_t sub_1C9542358(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C9542604();

  return MEMORY[0x1EEE43900](a1, a2, a3, v6);
}

uint64_t sub_1C95423AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1C9542604();

  return MEMORY[0x1EEE438F8](a1, a2, a3, a4, v8);
}

_BYTE *storeEnumTagSinglePayload for CurrentLocationGeocodedEntity.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C9542500()
{
  result = qword_1EC3A5578;
  if (!qword_1EC3A5578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A5578);
  }

  return result;
}

unint64_t sub_1C9542558()
{
  result = qword_1EC3A5580;
  if (!qword_1EC3A5580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A5580);
  }

  return result;
}

unint64_t sub_1C95425B0()
{
  result = qword_1EC3A5588;
  if (!qword_1EC3A5588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A5588);
  }

  return result;
}

unint64_t sub_1C9542604()
{
  result = qword_1EDB7B7D8[0];
  if (!qword_1EDB7B7D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDB7B7D8);
  }

  return result;
}

void __swiftcall WeatherMenuRefreshConfiguration.init(minimumIntervalForRefreshWithFetch:maximumRefreshJitter:refreshFromCacheInterval:minimumTimeSourceInterval:maximumTimeSourceOffsetJitter:)(WeatherCore::WeatherMenuRefreshConfiguration *__return_ptr retstr, Swift::Double_optional minimumIntervalForRefreshWithFetch, Swift::Double_optional maximumRefreshJitter, Swift::Double_optional refreshFromCacheInterval, Swift::Double_optional minimumTimeSourceInterval, Swift::Double_optional maximumTimeSourceOffsetJitter)
{
  v9 = *&minimumIntervalForRefreshWithFetch.is_nil;
  if (maximumRefreshJitter.is_nil)
  {
    v9 = 900.0;
  }

  v10 = *&refreshFromCacheInterval.is_nil;
  v11 = 300.0;
  if (minimumTimeSourceInterval.is_nil)
  {
    v10 = 300.0;
  }

  if ((v6 & 1) == 0)
  {
    v11 = *&maximumTimeSourceOffsetJitter.is_nil;
  }

  v12 = v7;
  if (v8)
  {
    v12 = 30.0;
  }

  retstr->minimumIntervalForRefreshWithFetch = v9;
  retstr->maximumRefreshJitter = v10;
  if (v15)
  {
    v13 = 60.0;
  }

  else
  {
    v13 = v14;
  }

  retstr->refreshFromCacheInterval = v11;
  retstr->minimumTimeSourceInterval = v12;
  retstr->maximumTimeSourceOffsetJitter = v13;
}

uint64_t WeatherMenuRefreshConfiguration.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5598, &qword_1C96AE628);
  OUTLINED_FUNCTION_1();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C948BDF8();
  sub_1C96A7F54();
  v15 = 0;
  OUTLINED_FUNCTION_1_20(&v15);
  if (!v1)
  {
    v14 = 1;
    OUTLINED_FUNCTION_1_20(&v14);
    v13 = 2;
    OUTLINED_FUNCTION_1_20(&v13);
    v12 = 3;
    OUTLINED_FUNCTION_1_20(&v12);
    v11 = 4;
    OUTLINED_FUNCTION_1_20(&v11);
  }

  return (*(v5 + 8))(v8, v3);
}

unint64_t sub_1C95428D0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1C94DFF8C(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_1C9542900@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1C948BE54(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1C954292C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1C94DFF8C(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1C9542954@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C95428A4();
  *a1 = result;
  return result;
}

uint64_t sub_1C954297C(uint64_t a1)
{
  v2 = sub_1C948BDF8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C95429B8(uint64_t a1)
{
  v2 = sub_1C948BDF8();

  return MEMORY[0x1EEE6BB78](a1, v2);
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

uint64_t sub_1C9542A24(uint64_t a1, int a2)
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

unint64_t sub_1C9542A58()
{
  result = qword_1EC3A55A0;
  if (!qword_1EC3A55A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A55A0);
  }

  return result;
}

void *sub_1C9542AB0()
{
  type metadata accessor for MapsExperiments();
  swift_allocObject();
  result = sub_1C9542C30();
  off_1EDB79EB0 = result;
  return result;
}

uint64_t static MapsExperiments.isPinnedMapEnabledOnIpad.getter(uint64_t a1)
{
  if (qword_1EDB79EA8 != -1)
  {
    a1 = OUTLINED_FUNCTION_0_26(&qword_1EDB79EA8);
  }

  MEMORY[0x1EEE9AC00](a1);
  OUTLINED_FUNCTION_1_21();
  sub_1C96A5134();
  sub_1C96A3D04();
  sub_1C96A5554();

  return v2;
}

uint64_t sub_1C9542BC8@<X0>(_BYTE *a1@<X8>)
{
  if (qword_1EDB79EA8 != -1)
  {
    result = swift_once();
  }

  *a1 = *(off_1EDB79EB0 + 16);
  return result;
}

uint64_t sub_1C9542C30()
{
  v1 = sub_1C96A5114();
  MEMORY[0x1EEE9AC00](v1 - 8);
  sub_1C96A5104();
  sub_1C96A5134();
  swift_allocObject();
  *(v0 + 24) = sub_1C96A5124();
  *(v0 + 16) = 1;
  return v0;
}