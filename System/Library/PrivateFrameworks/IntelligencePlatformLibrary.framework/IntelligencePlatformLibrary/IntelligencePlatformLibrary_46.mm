uint64_t sub_1937C1918(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2)
  {
    return 1;
  }

  v3 = a1;
  if (a1 == a2)
  {
    return 1;
  }

  for (i = 0; ; i += 40)
  {
    v5 = *(v3 + i + 48);
    v6 = *(v3 + i + 56);
    v7 = *(v3 + i + 64);
    v8 = *(v3 + i + 68);
    v10 = *(a2 + i + 48);
    v9 = *(a2 + i + 56);
    v11 = *(a2 + i + 64);
    v12 = *(a2 + i + 68);
    if (*(v3 + i + 41))
    {
      if ((*(a2 + i + 41) & 1) == 0)
      {
        return 0;
      }

      goto LABEL_11;
    }

    if (*(a2 + i + 41))
    {
      return 0;
    }

    v21 = v12;
    v14 = v8;
    v15 = MomentsEventData.ActionType.rawValue.getter(v13);
    v16 = v15 == MomentsEventData.ActionType.rawValue.getter(v15);
    v8 = v14;
    v3 = a1;
    v12 = v21;
    if (!v16)
    {
      break;
    }

LABEL_11:
    if (!v6)
    {

      if (v9)
      {
        goto LABEL_32;
      }

LABEL_24:

      if (v8)
      {
        goto LABEL_19;
      }

      goto LABEL_25;
    }

    if (!v9)
    {
      break;
    }

    v16 = v5 == v10 && v6 == v9;
    if (v16)
    {

      goto LABEL_24;
    }

    v17 = sub_19393CA30();

    if ((v17 & 1) == 0)
    {
      return 0;
    }

    if (v8)
    {
LABEL_19:
      if ((v12 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_29;
    }

LABEL_25:
    if (v7 == v11)
    {
      v18 = v12;
    }

    else
    {
      v18 = 1;
    }

    if (v18)
    {
      return 0;
    }

LABEL_29:
    if (!--v2)
    {
      return 1;
    }
  }

LABEL_32:

  return 0;
}

uint64_t sub_1937C1B14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 16);
  if (v4 != *(a2 + 16))
  {
    return 0;
  }

  if (v4 && a1 != a2)
  {
    v5 = (a1 + 41);
    v6 = (a2 + 41);
    do
    {
      if (*v5)
      {
        if ((*v6 & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        if (*v6)
        {
          return 0;
        }

        v7 = MomentsEventData.PRType.rawValue.getter(a1, a2, a3, a4);
        a1 = MomentsEventData.PRType.rawValue.getter(v7, v8, v9, v10);
        if (v7 != a1)
        {
          return 0;
        }
      }

      v5 += 16;
      v6 += 16;
      --v4;
    }

    while (v4);
  }

  return 1;
}

uint64_t sub_1937C1BEC(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 == *(a2 + 16))
  {
    if (!v4 || a1 == a2)
    {
      v9 = 1;
    }

    else
    {
      v13 = v2;
      v14 = v3;
      v5 = (a1 + 32);
      v6 = (a2 + 32);
      v7 = v4 - 1;
      do
      {
        v8 = v7;
        memcpy(__dst, v5, 0x41uLL);
        memcpy(v11, v6, 0x41uLL);
        v9 = static MomentsEventData.EventBundle.Resource.== infix(_:_:)(__dst, v11);
        if ((v9 & 1) == 0)
        {
          break;
        }

        v7 = v8 - 1;
        v6 += 72;
        v5 += 72;
      }

      while (v8);
    }
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

uint64_t sub_1937C1C9C(uint64_t result, uint64_t a2)
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

  v3 = 0;
  v4 = result + 32;
  v5 = a2 + 32;
  v32 = a2 + 32;
  v33 = result + 32;
  while (v3 != v2)
  {
    v6 = v4 + 32 * v3;
    v7 = *v6;
    v8 = (v5 + 32 * v3);
    v9 = *v8;
    v10 = *(*v6 + 16);
    if (v10 != *(*v8 + 16))
    {
      return 0;
    }

    v11 = *(v6 + 8);
    v12 = *(v6 + 16);
    v13 = *(v6 + 24);
    v14 = *(v8 + 8);
    v15 = v8[2];
    if (v10)
    {
      v16 = v7 == v9;
    }

    else
    {
      v16 = 1;
    }

    v17 = *(v8 + 24);
    if (!v16)
    {
      v34 = *(v8 + 8);
      v35 = v11;
      v36 = v13;
      v37 = *(v8 + 24);

      v21 = 0;
      while (v10)
      {
        v22 = *(v7 + v21 + 48);
        v23 = *(v7 + v21 + 56);
        v24 = *(v9 + v21 + 48);
        v25 = *(v9 + v21 + 56);
        if (*(v7 + v21 + 41))
        {
          if ((*(v9 + v21 + 41) & 1) == 0)
          {
            goto LABEL_42;
          }
        }

        else
        {
          if (*(v9 + v21 + 41))
          {
            goto LABEL_42;
          }

          v26 = MomentsEventData.PersonRelationshipTag.rawValue.getter(result, v18, v19, v20);
          result = MomentsEventData.PersonRelationshipTag.rawValue.getter(v26, v27, v28, v29);
          if (v26 != result)
          {
            goto LABEL_42;
          }
        }

        if (v23)
        {
          if (!v25)
          {
            goto LABEL_42;
          }
        }

        else
        {
          if (v22 == v24)
          {
            v30 = v25;
          }

          else
          {
            v30 = 1;
          }

          if (v30)
          {
LABEL_42:

            return 0;
          }
        }

        v21 += 32;
        if (!--v10)
        {

          v5 = v32;
          v4 = v33;
          v13 = v36;
          v17 = v37;
          v14 = v34;
          v11 = v35;
          goto LABEL_12;
        }
      }

      __break(1u);
      break;
    }

LABEL_12:
    if (v11 == 2)
    {
      if (v14 != 2)
      {
        return 0;
      }
    }

    else
    {
      result = 0;
      if (v14 == 2 || ((v14 ^ v11) & 1) != 0)
      {
        return result;
      }
    }

    if (v13)
    {
      if (!v17)
      {
        return 0;
      }
    }

    else
    {
      if (v12 == v15)
      {
        v31 = v17;
      }

      else
      {
        v31 = 1;
      }

      if (v31)
      {
        return 0;
      }
    }

    ++v3;
    result = 1;
    if (v3 == v2)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1937C1EBC(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 == *(a2 + 16))
  {
    if (!v4 || a1 == a2)
    {
      v9 = 1;
    }

    else
    {
      v13 = v2;
      v14 = v3;
      v5 = (a1 + 32);
      v6 = (a2 + 32);
      v7 = v4 - 1;
      do
      {
        v8 = v7;
        memcpy(__dst, v5, 0x69uLL);
        memcpy(v11, v6, 0x69uLL);
        v9 = static MomentsEventData.EventBundle.Place.== infix(_:_:)(__dst, v11);
        if ((v9 & 1) == 0)
        {
          break;
        }

        v7 = v8 - 1;
        v6 += 112;
        v5 += 112;
      }

      while (v8);
    }
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

uint64_t sub_1937C1F6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 16);
  if (v4 != *(a2 + 16))
  {
    return 0;
  }

  if (v4)
  {
    v6 = a1;
    if (a1 != a2)
    {
      v7 = 0;
      do
      {
        v8 = *(v6 + v7 + 48);
        v9 = *(v6 + v7 + 56);
        v10 = *(a2 + v7 + 48);
        v11 = *(a2 + v7 + 56);
        if (*(v6 + v7 + 41))
        {
          if ((*(a2 + v7 + 41) & 1) == 0)
          {
            return 0;
          }
        }

        else
        {
          if (*(a2 + v7 + 41))
          {
            return 0;
          }

          v12 = MomentsEventData.PersonRelationshipTag.rawValue.getter(a1, a2, a3, a4);
          a1 = MomentsEventData.PersonRelationshipTag.rawValue.getter(v12, v13, v14, v15);
          if (v12 != a1)
          {
            return 0;
          }
        }

        if (v9)
        {
          if (!v11)
          {
            return 0;
          }
        }

        else
        {
          if (v8 == v10)
          {
            v16 = v11;
          }

          else
          {
            v16 = 1;
          }

          if (v16)
          {
            return 0;
          }
        }

        v7 += 32;
        --v4;
      }

      while (v4);
    }
  }

  return 1;
}

uint64_t sub_1937C2084(uint64_t result, uint64_t a2, uint64_t (*a3)(void), uint64_t a4)
{
  v4 = *(result + 16);
  if (v4 != *(a2 + 16))
  {
    return 0;
  }

  if (!v4 || result == a2)
  {
    return 1;
  }

  v6 = result + 40;
  v7 = a2 + 40;
  while (v4)
  {
    v7 += 16;
    v8 = (a3)(result, a2, a3, a4);
    v9 = v8 == a3();
    result = v9;
    v9 = !v9 || v4-- == 1;
    v6 += 16;
    if (v9)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1937C214C(uint64_t result, uint64_t a2)
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
    v5 = *v3++;
    v6 = v5;
    v7 = *v4++;
    result = v6 == v7;
    if (v6 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1937C21A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 16);
  if (v4 != *(a2 + 16))
  {
    return 0;
  }

  if (v4 && a1 != a2)
  {
    v5 = (a1 + 41);
    v6 = (a2 + 41);
    do
    {
      if (*v5)
      {
        if ((*v6 & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        if (*v6)
        {
          return 0;
        }

        v7 = MomentsEventData.PhotoMomentInferenceType.rawValue.getter(a1, a2, a3, a4);
        a1 = MomentsEventData.PhotoMomentInferenceType.rawValue.getter(v7, v8, v9, v10);
        if (v7 != a1)
        {
          return 0;
        }
      }

      v5 += 16;
      v6 += 16;
      --v4;
    }

    while (v4);
  }

  return 1;
}

void MomentsEventData.Event.hash(into:)()
{
  OUTLINED_FUNCTION_117();
  OUTLINED_FUNCTION_3_4();
  v4 = sub_19393BE00();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5_1();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  v7 = OUTLINED_FUNCTION_47(v6);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_15_8();
  v84 = v8;
  OUTLINED_FUNCTION_47_3();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_49();
  v83 = v10;
  OUTLINED_FUNCTION_47_3();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_49();
  v82 = v12;
  OUTLINED_FUNCTION_47_3();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_173_1();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_160_11();
  if (*(v1 + 8))
  {
    OUTLINED_FUNCTION_103_0();
    sub_19393C640();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  v15 = type metadata accessor for MomentsEventData.Event(0);
  sub_193448804(v1 + v15[5], v2, &qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_13_25(v2);
  if (v16)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v17 = OUTLINED_FUNCTION_105_17();
    v18(v17, v2, v4);
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_0_104();
    v21 = sub_1937D05A4(v19, v20);
    OUTLINED_FUNCTION_27_21(v21);
    v22 = OUTLINED_FUNCTION_93_14();
    v23(v22);
  }

  sub_193448804(v1 + v15[6], v3, &qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_13_25(v3);
  if (v16)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v24 = OUTLINED_FUNCTION_105_17();
    v25(v24, v3, v4);
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_0_104();
    v28 = sub_1937D05A4(v26, v27);
    OUTLINED_FUNCTION_27_21(v28);
    v29 = OUTLINED_FUNCTION_93_14();
    v30(v29);
  }

  sub_193448804(v1 + v15[7], v82, &qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_13_25(v82);
  if (v16)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v31 = OUTLINED_FUNCTION_105_17();
    v32(v31, v82, v4);
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_0_104();
    v35 = sub_1937D05A4(v33, v34);
    OUTLINED_FUNCTION_27_21(v35);
    v36 = OUTLINED_FUNCTION_93_14();
    v37(v36);
  }

  sub_193448804(v1 + v15[8], v83, &qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_13_25(v83);
  if (v16)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v38 = OUTLINED_FUNCTION_105_17();
    v39(v38, v83, v4);
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_0_104();
    v42 = sub_1937D05A4(v40, v41);
    OUTLINED_FUNCTION_27_21(v42);
    v43 = OUTLINED_FUNCTION_93_14();
    v44(v43);
  }

  sub_193448804(v1 + v15[9], v84, &qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_13_25(v84);
  if (v16)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v45 = OUTLINED_FUNCTION_105_17();
    v46(v45, v84, v4);
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_0_104();
    v49 = sub_1937D05A4(v47, v48);
    OUTLINED_FUNCTION_27_21(v49);
    v50 = OUTLINED_FUNCTION_107_5();
    v51(v50);
  }

  OUTLINED_FUNCTION_100();
  if (v16)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_57_14();
    OUTLINED_FUNCTION_17_42();
    v52 = MomentsEventData.EventProviderType.rawValue.getter();
    MEMORY[0x193B18030](v52);
  }

  OUTLINED_FUNCTION_100();
  if (v16)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_57_14();
    OUTLINED_FUNCTION_17_42();
    v53 = MomentsEventData.EventCategoryType.rawValue.getter();
    MEMORY[0x193B18030](v53);
  }

  OUTLINED_FUNCTION_100();
  if (v16)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_57_14();
    OUTLINED_FUNCTION_17_42();
    v54 = MomentsEventData.PlaceInferenceUserSpecificPlaceType.rawValue.getter();
    MEMORY[0x193B18030](v54);
  }

  OUTLINED_FUNCTION_100();
  if (v16)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_57_14();
    OUTLINED_FUNCTION_17_42();
    v55 = MomentsEventData.GeoPOICategoryType.rawValue.getter();
    MEMORY[0x193B18030](v55);
  }

  OUTLINED_FUNCTION_100();
  if (v16)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_57_14();
    OUTLINED_FUNCTION_17_42();
    v56 = MomentsEventData.PlaceDiscoveryType.rawValue.getter();
    MEMORY[0x193B18030](v56);
  }

  OUTLINED_FUNCTION_100();
  if (v16)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_57_14();
    OUTLINED_FUNCTION_17_42();
    v57 = MomentsEventData.LocationModeType.rawValue.getter();
    MEMORY[0x193B18030](v57);
  }

  OUTLINED_FUNCTION_100();
  if (v16)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_57_14();
    OUTLINED_FUNCTION_17_42();
    v58 = MomentsEventData.WorkoutActivityType.rawValue.getter();
    MEMORY[0x193B18030](v58);
  }

  OUTLINED_FUNCTION_5_0();
  if (v4)
  {
    OUTLINED_FUNCTION_86_14();
    sub_19393CAD0();
    OUTLINED_FUNCTION_6_1();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  OUTLINED_FUNCTION_100();
  if (v16)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_57_14();
    OUTLINED_FUNCTION_17_42();
    v59 = MomentsEventData.GenreType.rawValue.getter();
    MEMORY[0x193B18030](v59);
  }

  OUTLINED_FUNCTION_100();
  if (v16)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_57_14();
    OUTLINED_FUNCTION_17_42();
    v60 = MomentsEventData.MediaType.rawValue.getter();
    MEMORY[0x193B18030](v60);
  }

  OUTLINED_FUNCTION_47_1();
  if (v16)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_87_15();
    sub_19393CAE0();
  }

  OUTLINED_FUNCTION_47_1();
  if (v16)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_87_15();
    sub_19393CAE0();
  }

  OUTLINED_FUNCTION_100();
  if (v16)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_57_14();
    OUTLINED_FUNCTION_17_42();
    v61 = MomentsEventData.SourceAppType.rawValue.getter();
    MEMORY[0x193B18030](v61);
  }

  OUTLINED_FUNCTION_5_0();
  if (v4)
  {
    OUTLINED_FUNCTION_86_14();
    sub_19393CAD0();
    OUTLINED_FUNCTION_6_1();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  OUTLINED_FUNCTION_47_1();
  if (v16)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_87_15();
    sub_19393CAE0();
  }

  OUTLINED_FUNCTION_10_43();
  if (v16)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_126_13();
    v62 = OUTLINED_FUNCTION_159_11();
    MEMORY[0x193B18060](v62);
  }

  OUTLINED_FUNCTION_47_1();
  if (v16)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_87_15();
    sub_19393CAE0();
  }

  OUTLINED_FUNCTION_10_43();
  if (v16)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_126_13();
    v63 = OUTLINED_FUNCTION_159_11();
    MEMORY[0x193B18060](v63);
  }

  OUTLINED_FUNCTION_47_1();
  if (v16)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_87_15();
    sub_19393CAE0();
  }

  OUTLINED_FUNCTION_47_1();
  if (v16)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_87_15();
    sub_19393CAE0();
  }

  OUTLINED_FUNCTION_47_1();
  if (v16)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_87_15();
    sub_19393CAE0();
  }

  sub_1934D11C8(v0, *(v1 + v15[31]));
  OUTLINED_FUNCTION_5_0();
  if (v4)
  {
    OUTLINED_FUNCTION_86_14();
    sub_19393CAD0();
    OUTLINED_FUNCTION_6_1();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  OUTLINED_FUNCTION_10_43();
  if (v16)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_126_13();
    v64 = OUTLINED_FUNCTION_159_11();
    MEMORY[0x193B18060](v64);
  }

  OUTLINED_FUNCTION_98_18();
  if (!v16)
  {
    OUTLINED_FUNCTION_103_0();
  }

  sub_19393CAD0();
  OUTLINED_FUNCTION_98_18();
  if (!v16)
  {
    OUTLINED_FUNCTION_103_0();
  }

  sub_19393CAD0();
  OUTLINED_FUNCTION_47_1();
  if (v16)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_87_15();
    sub_19393CAE0();
  }

  OUTLINED_FUNCTION_47_1();
  if (v16)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_87_15();
    sub_19393CAE0();
  }

  OUTLINED_FUNCTION_47_1();
  if (v16)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_87_15();
    sub_19393CAE0();
  }

  OUTLINED_FUNCTION_10_43();
  if (v16)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_126_13();
    v65 = OUTLINED_FUNCTION_159_11();
    MEMORY[0x193B18060](v65);
  }

  OUTLINED_FUNCTION_10_43();
  if (v16)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_126_13();
    v66 = OUTLINED_FUNCTION_159_11();
    MEMORY[0x193B18060](v66);
  }

  OUTLINED_FUNCTION_10_43();
  if (v16)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_126_13();
    v67 = OUTLINED_FUNCTION_159_11();
    MEMORY[0x193B18060](v67);
  }

  OUTLINED_FUNCTION_100();
  if (v16)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_57_14();
    OUTLINED_FUNCTION_17_42();
    v68 = MomentsEventData.PhotoMomentSourceType.rawValue.getter();
    MEMORY[0x193B18030](v68);
  }

  sub_1937D0EE8();
  sub_1934D11C8(v0, *(v1 + v15[44]));
  OUTLINED_FUNCTION_47_1();
  if (v16)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_87_15();
    sub_19393CAE0();
  }

  OUTLINED_FUNCTION_47_1();
  if (v16)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_87_15();
    sub_19393CAE0();
  }

  OUTLINED_FUNCTION_47_1();
  if (v16)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_87_15();
    sub_19393CAE0();
  }

  OUTLINED_FUNCTION_47_1();
  if (v16)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_87_15();
    sub_19393CAE0();
  }

  OUTLINED_FUNCTION_98_18();
  if (!v16)
  {
    OUTLINED_FUNCTION_103_0();
  }

  sub_19393CAD0();
  OUTLINED_FUNCTION_98_18();
  if (!v16)
  {
    OUTLINED_FUNCTION_103_0();
  }

  sub_19393CAD0();
  OUTLINED_FUNCTION_98_18();
  if (!v16)
  {
    OUTLINED_FUNCTION_103_0();
  }

  sub_19393CAD0();
  OUTLINED_FUNCTION_98_18();
  if (!v16)
  {
    OUTLINED_FUNCTION_103_0();
  }

  sub_19393CAD0();
  OUTLINED_FUNCTION_100();
  if (v16)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_57_14();
    OUTLINED_FUNCTION_17_42();
    v69 = MomentsEventData.SuggestedEventCategoryType.rawValue.getter();
    MEMORY[0x193B18030](v69);
  }

  OUTLINED_FUNCTION_47_1();
  if (v16)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_87_15();
    sub_19393CAE0();
  }

  OUTLINED_FUNCTION_47_1();
  if (v16)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_87_15();
    sub_19393CAE0();
  }

  OUTLINED_FUNCTION_100();
  if (v16)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_57_14();
    OUTLINED_FUNCTION_17_42();
    v70 = MomentsEventData.TripModeType.rawValue.getter();
    MEMORY[0x193B18030](v70);
  }

  OUTLINED_FUNCTION_47_1();
  if (v16)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_87_15();
    sub_19393CAE0();
  }

  OUTLINED_FUNCTION_47_1();
  if (v16)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_87_15();
    sub_19393CAE0();
  }

  OUTLINED_FUNCTION_47_1();
  if (v16)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_87_15();
    sub_19393CAE0();
  }

  OUTLINED_FUNCTION_98_18();
  if (!v16)
  {
    OUTLINED_FUNCTION_103_0();
  }

  sub_19393CAD0();
  v71 = v1 + v15[61];
  if (*(v71 + 10) == 1 || (v72 = *(v71 + 8), OUTLINED_FUNCTION_103_0(), (v72 & 0x100) != 0))
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v73 = OUTLINED_FUNCTION_103_0();
    v77 = MomentsEventData.PRType.rawValue.getter(v73, v74, v75, v76);
    MEMORY[0x193B18030](v77);
  }

  if (*(v1 + v15[62] + 4))
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_87_15();
    sub_19393CAE0();
  }

  OUTLINED_FUNCTION_100();
  if (v16)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_57_14();
    OUTLINED_FUNCTION_17_42();
    v78 = MomentsEventData.MapItemSourceType.rawValue.getter();
    MEMORY[0x193B18030](v78);
  }

  OUTLINED_FUNCTION_100();
  if (v16)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_57_14();
    OUTLINED_FUNCTION_17_42();
    v79 = MomentsEventData.VisitPlaceTypes.rawValue.getter();
    MEMORY[0x193B18030](v79);
  }

  OUTLINED_FUNCTION_100();
  if (v16)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v80 = OUTLINED_FUNCTION_103_0();
    v81 = MomentsEventData.PlaceInferenceGranularityType.rawValue.getter(v80);
    MEMORY[0x193B18030](v81);
  }

  OUTLINED_FUNCTION_116();
}

uint64_t MomentsEventData.EventBundle.bundleStartDate.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for MomentsEventData.EventBundle(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t sub_1937C2F80()
{
  v0 = OUTLINED_FUNCTION_61_22();
  v2 = v1(v0);
  v3 = OUTLINED_FUNCTION_101(*(v2 + 24));
  return sub_193448804(v3, v4, v5, v6);
}

uint64_t sub_1937C2FDC()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1(v0);
  v2 = OUTLINED_FUNCTION_100_0();
  return sub_19344542C(v2, v3, v4, v5);
}

uint64_t MomentsEventData.EventBundle.bundleEndDate.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for MomentsEventData.EventBundle(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t sub_1937C3078()
{
  v0 = OUTLINED_FUNCTION_61_22();
  v2 = v1(v0);
  v3 = OUTLINED_FUNCTION_101(*(v2 + 28));
  return sub_193448804(v3, v4, v5, v6);
}

uint64_t sub_1937C30D4()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1(v0);
  v2 = OUTLINED_FUNCTION_100_0();
  return sub_19344542C(v2, v3, v4, v5);
}

uint64_t MomentsEventData.EventBundle.bundleCreationDate.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for MomentsEventData.EventBundle(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t sub_1937C3170()
{
  v0 = OUTLINED_FUNCTION_61_22();
  v2 = v1(v0);
  v3 = OUTLINED_FUNCTION_101(*(v2 + 32));
  return sub_193448804(v3, v4, v5, v6);
}

uint64_t sub_1937C31CC()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1(v0);
  v2 = OUTLINED_FUNCTION_100_0();
  return sub_19344542C(v2, v3, v4, v5);
}

uint64_t MomentsEventData.EventBundle.bundleExpirationDate.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for MomentsEventData.EventBundle(v0);
  return OUTLINED_FUNCTION_1_4();
}

void sub_1937C3268()
{
  v0 = OUTLINED_FUNCTION_61_22();
  v2 = v1(v0);
  OUTLINED_FUNCTION_37_0(*(v2 + 36));
}

void sub_1937C32B0()
{
  v0 = OUTLINED_FUNCTION_85_8();
  v2 = v1(v0);
  OUTLINED_FUNCTION_84_6(*(v2 + 36));
}

uint64_t MomentsEventData.EventBundle.bundleInterfaceType.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for MomentsEventData.EventBundle(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t MomentsEventData.EventBundle.bundleSourceHealthExists.setter()
{
  v2 = OUTLINED_FUNCTION_3_4();
  result = type metadata accessor for MomentsEventData.EventBundle(v2);
  *(v1 + *(result + 40)) = v0;
  return result;
}

uint64_t MomentsEventData.EventBundle.bundleSourceHealthExists.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for MomentsEventData.EventBundle(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t MomentsEventData.EventBundle.bundleSourcePhotoExists.setter()
{
  v2 = OUTLINED_FUNCTION_3_4();
  result = type metadata accessor for MomentsEventData.EventBundle(v2);
  *(v1 + *(result + 44)) = v0;
  return result;
}

uint64_t MomentsEventData.EventBundle.bundleSourcePhotoExists.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for MomentsEventData.EventBundle(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t MomentsEventData.EventBundle.bundleSourceProactiveExists.setter()
{
  v2 = OUTLINED_FUNCTION_3_4();
  result = type metadata accessor for MomentsEventData.EventBundle(v2);
  *(v1 + *(result + 48)) = v0;
  return result;
}

uint64_t MomentsEventData.EventBundle.bundleSourceProactiveExists.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for MomentsEventData.EventBundle(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t MomentsEventData.EventBundle.bundleSourceRoutineExists.setter()
{
  v2 = OUTLINED_FUNCTION_3_4();
  result = type metadata accessor for MomentsEventData.EventBundle(v2);
  *(v1 + *(result + 52)) = v0;
  return result;
}

uint64_t MomentsEventData.EventBundle.bundleSourceRoutineExists.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for MomentsEventData.EventBundle(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t sub_1937C3580()
{
  v0 = OUTLINED_FUNCTION_136_11();
  v1(v0);
  OUTLINED_FUNCTION_4_4();
  return OUTLINED_FUNCTION_13_0();
}

uint64_t sub_1937C35CC()
{
  v3 = OUTLINED_FUNCTION_48_1();
  v4(v3);
  result = OUTLINED_FUNCTION_201();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t MomentsEventData.EventBundle.bundlePromptLanguageFormat.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for MomentsEventData.EventBundle(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t sub_1937C3660()
{
  v0 = OUTLINED_FUNCTION_136_11();
  v1(v0);
  OUTLINED_FUNCTION_4_4();
  return OUTLINED_FUNCTION_13_0();
}

uint64_t sub_1937C36AC()
{
  v3 = OUTLINED_FUNCTION_48_1();
  v4(v3);
  result = OUTLINED_FUNCTION_201();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t MomentsEventData.EventBundle.bundlePromptToneID.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for MomentsEventData.EventBundle(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t MomentsEventData.EventBundle.bundlePromptParametersAvailability.setter()
{
  v2 = OUTLINED_FUNCTION_3_4();
  result = type metadata accessor for MomentsEventData.EventBundle(v2);
  *(v1 + *(result + 64)) = v0;
  return result;
}

uint64_t MomentsEventData.EventBundle.bundlePromptParametersAvailability.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for MomentsEventData.EventBundle(v0);
  return OUTLINED_FUNCTION_1_4();
}

void MomentsEventData.EventBundle.bundlePlaceType.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for MomentsEventData.EventBundle(v0);
  OUTLINED_FUNCTION_37_0(*(v1 + 68));
}

void MomentsEventData.EventBundle.bundlePlaceType.setter()
{
  v0 = OUTLINED_FUNCTION_85_8();
  v1 = type metadata accessor for MomentsEventData.EventBundle(v0);
  OUTLINED_FUNCTION_84_6(*(v1 + 68));
}

uint64_t MomentsEventData.EventBundle.bundlePlaceType.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for MomentsEventData.EventBundle(v0);
  return OUTLINED_FUNCTION_1_4();
}

void sub_1937C3870()
{
  v0 = OUTLINED_FUNCTION_61_22();
  v2 = v1(v0);
  OUTLINED_FUNCTION_37_0(*(v2 + 72));
}

void sub_1937C38B8()
{
  v0 = OUTLINED_FUNCTION_85_8();
  v2 = v1(v0);
  OUTLINED_FUNCTION_84_6(*(v2 + 72));
}

uint64_t MomentsEventData.EventBundle.bundlePlaceUserType.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for MomentsEventData.EventBundle(v0);
  return OUTLINED_FUNCTION_1_4();
}

void sub_1937C3948()
{
  v0 = OUTLINED_FUNCTION_61_22();
  v2 = v1(v0);
  OUTLINED_FUNCTION_37_0(*(v2 + 76));
}

void sub_1937C3990()
{
  v0 = OUTLINED_FUNCTION_85_8();
  v2 = v1(v0);
  OUTLINED_FUNCTION_84_6(*(v2 + 76));
}

uint64_t MomentsEventData.EventBundle.bundleBaseEventCateory.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for MomentsEventData.EventBundle(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t MomentsEventData.EventBundle.bundleEventIDs.getter()
{
  type metadata accessor for MomentsEventData.EventBundle(0);
}

uint64_t MomentsEventData.EventBundle.bundleEventIDs.setter()
{
  v2 = OUTLINED_FUNCTION_3_4();
  v3 = *(type metadata accessor for MomentsEventData.EventBundle(v2) + 80);

  *(v1 + v3) = v0;
  return result;
}

uint64_t MomentsEventData.EventBundle.bundleEventIDs.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for MomentsEventData.EventBundle(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t MomentsEventData.EventBundle.bundleActionType.getter()
{
  v2 = OUTLINED_FUNCTION_8_4();
  v3 = v1 + *(type metadata accessor for MomentsEventData.EventBundle(v2) + 84);
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(v3 + 36);
  LODWORD(v3) = *(v3 + 32);
  *v0 = v4;
  *(v0 + 8) = v5;
  *(v0 + 16) = v6;
  *(v0 + 24) = v7;
  *(v0 + 36) = v8;
  *(v0 + 32) = v3;

  return sub_19376F35C(v4, v5, v6, v7);
}

__n128 MomentsEventData.EventBundle.bundleActionType.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 36);
  v5 = v1 + *(type metadata accessor for MomentsEventData.EventBundle(0) + 84);
  sub_19345FF00(*v5, *(v5 + 8), *(v5 + 16), *(v5 + 24));
  result = *a1;
  v7 = *(a1 + 16);
  *v5 = *a1;
  *(v5 + 16) = v7;
  *(v5 + 36) = v4;
  *(v5 + 32) = v3;
  return result;
}

uint64_t MomentsEventData.EventBundle.bundleActionType.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for MomentsEventData.EventBundle(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t MomentsEventData.EventBundle.backgroundActions.getter()
{
  type metadata accessor for MomentsEventData.EventBundle(0);
}

uint64_t MomentsEventData.EventBundle.backgroundActions.setter()
{
  v2 = OUTLINED_FUNCTION_3_4();
  v3 = *(type metadata accessor for MomentsEventData.EventBundle(v2) + 88);

  *(v1 + v3) = v0;
  return result;
}

uint64_t MomentsEventData.EventBundle.backgroundActions.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for MomentsEventData.EventBundle(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t MomentsEventData.EventBundle.bundleIsFamilyIncluded.setter()
{
  v2 = OUTLINED_FUNCTION_3_4();
  result = type metadata accessor for MomentsEventData.EventBundle(v2);
  *(v1 + *(result + 92)) = v0;
  return result;
}

uint64_t MomentsEventData.EventBundle.bundleIsFamilyIncluded.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for MomentsEventData.EventBundle(v0);
  return OUTLINED_FUNCTION_1_4();
}

void MomentsEventData.EventBundle.bundleTimeTag.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for MomentsEventData.EventBundle(v0);
  OUTLINED_FUNCTION_37_0(*(v1 + 96));
}

void MomentsEventData.EventBundle.bundleTimeTag.setter()
{
  v0 = OUTLINED_FUNCTION_85_8();
  v1 = type metadata accessor for MomentsEventData.EventBundle(v0);
  OUTLINED_FUNCTION_84_6(*(v1 + 96));
}

uint64_t MomentsEventData.EventBundle.bundleTimeTag.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for MomentsEventData.EventBundle(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t MomentsEventData.EventBundle.isBundleResourceTypeUnknown.setter()
{
  v2 = OUTLINED_FUNCTION_3_4();
  result = type metadata accessor for MomentsEventData.EventBundle(v2);
  *(v1 + *(result + 100)) = v0;
  return result;
}

uint64_t MomentsEventData.EventBundle.isBundleResourceTypeUnknown.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for MomentsEventData.EventBundle(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t MomentsEventData.EventBundle.isBundleResourceTypeValueIncluded.setter()
{
  v2 = OUTLINED_FUNCTION_3_4();
  result = type metadata accessor for MomentsEventData.EventBundle(v2);
  *(v1 + *(result + 104)) = v0;
  return result;
}

uint64_t MomentsEventData.EventBundle.isBundleResourceTypeValueIncluded.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for MomentsEventData.EventBundle(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t MomentsEventData.EventBundle.isBundleResourceTypePhotoAssetsIncluded.setter()
{
  v2 = OUTLINED_FUNCTION_3_4();
  result = type metadata accessor for MomentsEventData.EventBundle(v2);
  *(v1 + *(result + 108)) = v0;
  return result;
}

uint64_t MomentsEventData.EventBundle.isBundleResourceTypePhotoAssetsIncluded.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for MomentsEventData.EventBundle(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t MomentsEventData.EventBundle.isBundleResourceTypeMediaIncluded.setter()
{
  v2 = OUTLINED_FUNCTION_3_4();
  result = type metadata accessor for MomentsEventData.EventBundle(v2);
  *(v1 + *(result + 112)) = v0;
  return result;
}

uint64_t MomentsEventData.EventBundle.isBundleResourceTypeMediaIncluded.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for MomentsEventData.EventBundle(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t MomentsEventData.EventBundle.isBundleResourceTypeWebLinkIncluded.setter()
{
  v2 = OUTLINED_FUNCTION_3_4();
  result = type metadata accessor for MomentsEventData.EventBundle(v2);
  *(v1 + *(result + 116)) = v0;
  return result;
}

uint64_t MomentsEventData.EventBundle.isBundleResourceTypeWebLinkIncluded.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for MomentsEventData.EventBundle(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t MomentsEventData.EventBundle.isBundleResourceTypeInterenceTagIncluded.setter()
{
  v2 = OUTLINED_FUNCTION_3_4();
  result = type metadata accessor for MomentsEventData.EventBundle(v2);
  *(v1 + *(result + 120)) = v0;
  return result;
}

uint64_t MomentsEventData.EventBundle.isBundleResourceTypeInterenceTagIncluded.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for MomentsEventData.EventBundle(v0);
  return OUTLINED_FUNCTION_1_4();
}

void MomentsEventData.EventBundle.bundlEngagement.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for MomentsEventData.EventBundle(v0);
  OUTLINED_FUNCTION_37_0(*(v1 + 124));
}

void MomentsEventData.EventBundle.bundlEngagement.setter()
{
  v0 = OUTLINED_FUNCTION_85_8();
  v1 = type metadata accessor for MomentsEventData.EventBundle(v0);
  OUTLINED_FUNCTION_84_6(*(v1 + 124));
}

uint64_t MomentsEventData.EventBundle.bundlEngagement.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for MomentsEventData.EventBundle(v0);
  return OUTLINED_FUNCTION_1_4();
}

void MomentsEventData.EventBundle.bundleVersion.setter()
{
  v0 = OUTLINED_FUNCTION_48_1();
  v1 = type metadata accessor for MomentsEventData.EventBundle(v0);
  OUTLINED_FUNCTION_29_0(*(v1 + 128));
}

uint64_t MomentsEventData.EventBundle.bundleVersion.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for MomentsEventData.EventBundle(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t sub_1937C425C()
{
  v0 = OUTLINED_FUNCTION_136_11();
  v2 = v1(v0);
  return OUTLINED_FUNCTION_10_4(*(v2 + 132));
}

void sub_1937C429C()
{
  v0 = OUTLINED_FUNCTION_48_1();
  v2 = v1(v0);
  OUTLINED_FUNCTION_29_0(*(v2 + 132));
}

uint64_t MomentsEventData.EventBundle.rankingVersion.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for MomentsEventData.EventBundle(v0);
  return OUTLINED_FUNCTION_1_4();
}

void MomentsEventData.EventBundle.suggestionType.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for MomentsEventData.EventBundle(v0);
  OUTLINED_FUNCTION_37_0(*(v1 + 136));
}

void MomentsEventData.EventBundle.suggestionType.setter()
{
  v0 = OUTLINED_FUNCTION_85_8();
  v1 = type metadata accessor for MomentsEventData.EventBundle(v0);
  OUTLINED_FUNCTION_84_6(*(v1 + 136));
}

uint64_t MomentsEventData.EventBundle.suggestionType.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for MomentsEventData.EventBundle(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t MomentsEventData.EventBundle.suggestionTimestamp.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for MomentsEventData.EventBundle(v0);
  v2 = OUTLINED_FUNCTION_101(*(v1 + 140));
  return sub_193448804(v2, v3, v4, v5);
}

uint64_t MomentsEventData.EventBundle.suggestionTimestamp.setter()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for MomentsEventData.EventBundle(v0);
  v1 = OUTLINED_FUNCTION_100_0();
  return sub_19344542C(v1, v2, v3, v4);
}

uint64_t MomentsEventData.EventBundle.suggestionTimestamp.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for MomentsEventData.EventBundle(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t MomentsEventData.EventBundle.suggestionClientIdentifier.getter()
{
  type metadata accessor for MomentsEventData.EventBundle(0);
  OUTLINED_FUNCTION_4_4();
  return OUTLINED_FUNCTION_13_0();
}

uint64_t MomentsEventData.EventBundle.suggestionClientIdentifier.setter()
{
  v3 = OUTLINED_FUNCTION_48_1();
  type metadata accessor for MomentsEventData.EventBundle(v3);
  result = OUTLINED_FUNCTION_201();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t MomentsEventData.EventBundle.suggestionClientIdentifier.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for MomentsEventData.EventBundle(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t MomentsEventData.EventBundle.suggestionViewContainerName.getter()
{
  type metadata accessor for MomentsEventData.EventBundle(0);
  OUTLINED_FUNCTION_4_4();
  return OUTLINED_FUNCTION_13_0();
}

uint64_t MomentsEventData.EventBundle.suggestionViewContainerName.setter()
{
  v3 = OUTLINED_FUNCTION_48_1();
  type metadata accessor for MomentsEventData.EventBundle(v3);
  result = OUTLINED_FUNCTION_201();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t MomentsEventData.EventBundle.suggestionViewContainerName.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for MomentsEventData.EventBundle(v0);
  return OUTLINED_FUNCTION_1_4();
}

unint64_t sub_1937C45DC()
{
  v0 = OUTLINED_FUNCTION_136_11();
  v2 = v1(v0);
  return OUTLINED_FUNCTION_197(*(v2 + 152));
}

void sub_1937C4624()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v2 = v1(v0);
  OUTLINED_FUNCTION_263(*(v2 + 152));
}

uint64_t MomentsEventData.EventBundle.suggestionViewVisibleTime.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for MomentsEventData.EventBundle(v0);
  return OUTLINED_FUNCTION_1_4();
}

void MomentsEventData.EventBundle.appEntryEventType.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for MomentsEventData.EventBundle(v0);
  OUTLINED_FUNCTION_37_0(*(v1 + 156));
}

void MomentsEventData.EventBundle.appEntryEventType.setter()
{
  v0 = OUTLINED_FUNCTION_85_8();
  v1 = type metadata accessor for MomentsEventData.EventBundle(v0);
  OUTLINED_FUNCTION_84_6(*(v1 + 156));
}

uint64_t MomentsEventData.EventBundle.appEntryEventType.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for MomentsEventData.EventBundle(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t MomentsEventData.EventBundle.appEntryEventClientIdentifier.getter()
{
  type metadata accessor for MomentsEventData.EventBundle(0);
  OUTLINED_FUNCTION_4_4();
  return OUTLINED_FUNCTION_13_0();
}

uint64_t MomentsEventData.EventBundle.appEntryEventClientIdentifier.setter()
{
  v3 = OUTLINED_FUNCTION_48_1();
  type metadata accessor for MomentsEventData.EventBundle(v3);
  result = OUTLINED_FUNCTION_201();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t MomentsEventData.EventBundle.appEntryEventClientIdentifier.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for MomentsEventData.EventBundle(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t MomentsEventData.EventBundle.appEntryEventTimestamp.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for MomentsEventData.EventBundle(v0);
  v2 = OUTLINED_FUNCTION_101(*(v1 + 164));
  return sub_193448804(v2, v3, v4, v5);
}

uint64_t MomentsEventData.EventBundle.appEntryEventTimestamp.setter()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for MomentsEventData.EventBundle(v0);
  v1 = OUTLINED_FUNCTION_100_0();
  return sub_19344542C(v1, v2, v3, v4);
}

uint64_t MomentsEventData.EventBundle.appEntryEventTimestamp.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for MomentsEventData.EventBundle(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t MomentsEventData.EventBundle.appEntryEventStartTime.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for MomentsEventData.EventBundle(v0);
  v2 = OUTLINED_FUNCTION_101(*(v1 + 168));
  return sub_193448804(v2, v3, v4, v5);
}

uint64_t MomentsEventData.EventBundle.appEntryEventStartTime.setter()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for MomentsEventData.EventBundle(v0);
  v1 = OUTLINED_FUNCTION_100_0();
  return sub_19344542C(v1, v2, v3, v4);
}

uint64_t MomentsEventData.EventBundle.appEntryEventStartTime.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for MomentsEventData.EventBundle(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t MomentsEventData.EventBundle.appEntryEventEndTime.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for MomentsEventData.EventBundle(v0);
  v2 = OUTLINED_FUNCTION_101(*(v1 + 172));
  return sub_193448804(v2, v3, v4, v5);
}

uint64_t MomentsEventData.EventBundle.appEntryEventEndTime.setter()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for MomentsEventData.EventBundle(v0);
  v1 = OUTLINED_FUNCTION_100_0();
  return sub_19344542C(v1, v2, v3, v4);
}

uint64_t MomentsEventData.EventBundle.appEntryEventEndTime.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for MomentsEventData.EventBundle(v0);
  return OUTLINED_FUNCTION_1_4();
}

void MomentsEventData.EventBundle.appEntryEventTotalCharacters.setter()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = type metadata accessor for MomentsEventData.EventBundle(v0);
  OUTLINED_FUNCTION_263(*(v1 + 176));
}

uint64_t MomentsEventData.EventBundle.appEntryEventTotalCharacters.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for MomentsEventData.EventBundle(v0);
  return OUTLINED_FUNCTION_1_4();
}

unint64_t sub_1937C4ACC()
{
  v0 = OUTLINED_FUNCTION_136_11();
  v2 = v1(v0);
  return OUTLINED_FUNCTION_197(*(v2 + 180));
}

void sub_1937C4B14()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v2 = v1(v0);
  OUTLINED_FUNCTION_263(*(v2 + 180));
}

uint64_t MomentsEventData.EventBundle.appEntryEventAddedCharacters.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for MomentsEventData.EventBundle(v0);
  return OUTLINED_FUNCTION_1_4();
}

void MomentsEventData.EventBundle.clientActivityEventType.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for MomentsEventData.EventBundle(v0);
  OUTLINED_FUNCTION_37_0(*(v1 + 184));
}

void MomentsEventData.EventBundle.clientActivityEventType.setter()
{
  v0 = OUTLINED_FUNCTION_85_8();
  v1 = type metadata accessor for MomentsEventData.EventBundle(v0);
  OUTLINED_FUNCTION_84_6(*(v1 + 184));
}

uint64_t MomentsEventData.EventBundle.clientActivityEventType.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for MomentsEventData.EventBundle(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t MomentsEventData.EventBundle.clientActivityEventClientIdentifier.getter()
{
  type metadata accessor for MomentsEventData.EventBundle(0);
  OUTLINED_FUNCTION_4_4();
  return OUTLINED_FUNCTION_13_0();
}

uint64_t MomentsEventData.EventBundle.clientActivityEventClientIdentifier.setter()
{
  v3 = OUTLINED_FUNCTION_48_1();
  type metadata accessor for MomentsEventData.EventBundle(v3);
  result = OUTLINED_FUNCTION_201();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t MomentsEventData.EventBundle.clientActivityEventClientIdentifier.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for MomentsEventData.EventBundle(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t MomentsEventData.EventBundle.clientActivityEventTimestamp.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for MomentsEventData.EventBundle(v0);
  v2 = OUTLINED_FUNCTION_101(*(v1 + 192));
  return sub_193448804(v2, v3, v4, v5);
}

uint64_t MomentsEventData.EventBundle.clientActivityEventTimestamp.setter()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for MomentsEventData.EventBundle(v0);
  v1 = OUTLINED_FUNCTION_100_0();
  return sub_19344542C(v1, v2, v3, v4);
}

uint64_t MomentsEventData.EventBundle.clientActivityEventTimestamp.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for MomentsEventData.EventBundle(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t MomentsEventData.EventBundle.suggestionIdentifier.getter()
{
  type metadata accessor for MomentsEventData.EventBundle(0);
  OUTLINED_FUNCTION_4_4();
  return OUTLINED_FUNCTION_13_0();
}

uint64_t MomentsEventData.EventBundle.suggestionIdentifier.setter()
{
  v3 = OUTLINED_FUNCTION_48_1();
  type metadata accessor for MomentsEventData.EventBundle(v3);
  result = OUTLINED_FUNCTION_201();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t MomentsEventData.EventBundle.suggestionIdentifier.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for MomentsEventData.EventBundle(v0);
  return OUTLINED_FUNCTION_1_4();
}

void MomentsEventData.EventBundle.photoSourceType.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for MomentsEventData.EventBundle(v0);
  OUTLINED_FUNCTION_37_0(*(v1 + 200));
}

void MomentsEventData.EventBundle.photoSourceType.setter()
{
  v0 = OUTLINED_FUNCTION_85_8();
  v1 = type metadata accessor for MomentsEventData.EventBundle(v0);
  OUTLINED_FUNCTION_84_6(*(v1 + 200));
}

uint64_t MomentsEventData.EventBundle.photoSourceType.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for MomentsEventData.EventBundle(v0);
  return OUTLINED_FUNCTION_1_4();
}

void MomentsEventData.EventBundle.photoLibraryType.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for MomentsEventData.EventBundle(v0);
  OUTLINED_FUNCTION_37_0(*(v1 + 204));
}

void MomentsEventData.EventBundle.photoLibraryType.setter()
{
  v0 = OUTLINED_FUNCTION_85_8();
  v1 = type metadata accessor for MomentsEventData.EventBundle(v0);
  OUTLINED_FUNCTION_84_6(*(v1 + 204));
}

uint64_t MomentsEventData.EventBundle.photoLibraryType.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for MomentsEventData.EventBundle(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t MomentsEventData.EventBundle.bundleSourcePostAnalyticsExists.setter()
{
  v2 = OUTLINED_FUNCTION_3_4();
  result = type metadata accessor for MomentsEventData.EventBundle(v2);
  *(v1 + *(result + 208)) = v0;
  return result;
}

uint64_t MomentsEventData.EventBundle.bundleSourcePostAnalyticsExists.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for MomentsEventData.EventBundle(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t MomentsEventData.EventBundle.bundleSourcePDExists.setter()
{
  v2 = OUTLINED_FUNCTION_3_4();
  result = type metadata accessor for MomentsEventData.EventBundle(v2);
  *(v1 + *(result + 212)) = v0;
  return result;
}

uint64_t MomentsEventData.EventBundle.bundleSourcePDExists.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for MomentsEventData.EventBundle(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t MomentsEventData.EventBundle.bundleSourceMotionExists.setter()
{
  v2 = OUTLINED_FUNCTION_3_4();
  result = type metadata accessor for MomentsEventData.EventBundle(v2);
  *(v1 + *(result + 216)) = v0;
  return result;
}

uint64_t MomentsEventData.EventBundle.bundleSourceMotionExists.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for MomentsEventData.EventBundle(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t MomentsEventData.EventBundle.bundleSourceBooksExists.setter()
{
  v2 = OUTLINED_FUNCTION_3_4();
  result = type metadata accessor for MomentsEventData.EventBundle(v2);
  *(v1 + *(result + 220)) = v0;
  return result;
}

uint64_t MomentsEventData.EventBundle.bundleSourceBooksExists.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for MomentsEventData.EventBundle(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t MomentsEventData.EventBundle.bundleSourceScreenTimeExists.setter()
{
  v2 = OUTLINED_FUNCTION_3_4();
  result = type metadata accessor for MomentsEventData.EventBundle(v2);
  *(v1 + *(result + 224)) = v0;
  return result;
}

uint64_t MomentsEventData.EventBundle.bundleSourceScreenTimeExists.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for MomentsEventData.EventBundle(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t MomentsEventData.EventBundle.gaPRArray.getter()
{
  type metadata accessor for MomentsEventData.EventBundle(0);
}

uint64_t MomentsEventData.EventBundle.gaPRArray.setter()
{
  v2 = OUTLINED_FUNCTION_3_4();
  v3 = *(type metadata accessor for MomentsEventData.EventBundle(v2) + 228);

  *(v1 + v3) = v0;
  return result;
}

uint64_t MomentsEventData.EventBundle.gaPRArray.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for MomentsEventData.EventBundle(v0);
  return OUTLINED_FUNCTION_1_4();
}

unint64_t sub_1937C530C()
{
  v0 = OUTLINED_FUNCTION_136_11();
  v2 = v1(v0);
  return OUTLINED_FUNCTION_197(*(v2 + 232));
}

void sub_1937C5354()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v2 = v1(v0);
  OUTLINED_FUNCTION_263(*(v2 + 232));
}

uint64_t MomentsEventData.EventBundle.bundlePCount.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for MomentsEventData.EventBundle(v0);
  return OUTLINED_FUNCTION_1_4();
}

void MomentsEventData.EventBundle.ranking.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for MomentsEventData.EventBundle(v0);
  OUTLINED_FUNCTION_37_0(*(v1 + 236));
}

void MomentsEventData.EventBundle.ranking.setter()
{
  v0 = OUTLINED_FUNCTION_85_8();
  v1 = type metadata accessor for MomentsEventData.EventBundle(v0);
  OUTLINED_FUNCTION_84_6(*(v1 + 236));
}

uint64_t MomentsEventData.EventBundle.ranking.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for MomentsEventData.EventBundle(v0);
  return OUTLINED_FUNCTION_1_4();
}

void MomentsEventData.EventBundle.labelConfidenceScore.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for MomentsEventData.EventBundle(v0);
  OUTLINED_FUNCTION_37_0(*(v1 + 240));
}

void MomentsEventData.EventBundle.labelConfidenceScore.setter()
{
  v0 = OUTLINED_FUNCTION_85_8();
  v1 = type metadata accessor for MomentsEventData.EventBundle(v0);
  OUTLINED_FUNCTION_84_6(*(v1 + 240));
}

uint64_t MomentsEventData.EventBundle.labelConfidenceScore.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for MomentsEventData.EventBundle(v0);
  return OUTLINED_FUNCTION_1_4();
}

void MomentsEventData.EventBundle.timeCorrelationScore.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for MomentsEventData.EventBundle(v0);
  OUTLINED_FUNCTION_37_0(*(v1 + 244));
}

void MomentsEventData.EventBundle.timeCorrelationScore.setter()
{
  v0 = OUTLINED_FUNCTION_85_8();
  v1 = type metadata accessor for MomentsEventData.EventBundle(v0);
  OUTLINED_FUNCTION_84_6(*(v1 + 244));
}

uint64_t MomentsEventData.EventBundle.timeCorrelationScore.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for MomentsEventData.EventBundle(v0);
  return OUTLINED_FUNCTION_1_4();
}

void MomentsEventData.EventBundle.callDuration.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for MomentsEventData.EventBundle(v0);
  OUTLINED_FUNCTION_37_0(*(v1 + 248));
}

void MomentsEventData.EventBundle.callDuration.setter()
{
  v0 = OUTLINED_FUNCTION_85_8();
  v1 = type metadata accessor for MomentsEventData.EventBundle(v0);
  OUTLINED_FUNCTION_84_6(*(v1 + 248));
}

uint64_t MomentsEventData.EventBundle.callDuration.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for MomentsEventData.EventBundle(v0);
  return OUTLINED_FUNCTION_1_4();
}

void sub_1937C565C()
{
  v0 = OUTLINED_FUNCTION_61_22();
  v2 = v1(v0);
  OUTLINED_FUNCTION_37_0(*(v2 + 252));
}

void sub_1937C56A4()
{
  v0 = OUTLINED_FUNCTION_85_8();
  v2 = v1(v0);
  OUTLINED_FUNCTION_84_6(*(v2 + 252));
}

uint64_t MomentsEventData.EventBundle.interactionCount.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for MomentsEventData.EventBundle(v0);
  return OUTLINED_FUNCTION_1_4();
}

void sub_1937C5734()
{
  v0 = OUTLINED_FUNCTION_61_22();
  v2 = v1(v0);
  OUTLINED_FUNCTION_37_0(*(v2 + 256));
}

void sub_1937C577C()
{
  v0 = OUTLINED_FUNCTION_85_8();
  v2 = v1(v0);
  OUTLINED_FUNCTION_84_6(*(v2 + 256));
}

uint64_t MomentsEventData.EventBundle.interactionType.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for MomentsEventData.EventBundle(v0);
  return OUTLINED_FUNCTION_1_4();
}

void sub_1937C580C()
{
  v0 = OUTLINED_FUNCTION_61_22();
  v2 = v1(v0);
  OUTLINED_FUNCTION_37_0(*(v2 + 260));
}

void sub_1937C5854()
{
  v0 = OUTLINED_FUNCTION_85_8();
  v2 = v1(v0);
  OUTLINED_FUNCTION_84_6(*(v2 + 260));
}

uint64_t MomentsEventData.EventBundle.callPlace.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for MomentsEventData.EventBundle(v0);
  return OUTLINED_FUNCTION_1_4();
}

void MomentsEventData.EventBundle.distanceFromHome.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for MomentsEventData.EventBundle(v0);
  OUTLINED_FUNCTION_37_0(*(v1 + 264));
}

void MomentsEventData.EventBundle.distanceFromHome.setter()
{
  v0 = OUTLINED_FUNCTION_85_8();
  v1 = type metadata accessor for MomentsEventData.EventBundle(v0);
  OUTLINED_FUNCTION_84_6(*(v1 + 264));
}

uint64_t MomentsEventData.EventBundle.distanceFromHome.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for MomentsEventData.EventBundle(v0);
  return OUTLINED_FUNCTION_1_4();
}

void MomentsEventData.EventBundle.homeAvailability.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for MomentsEventData.EventBundle(v0);
  OUTLINED_FUNCTION_37_0(*(v1 + 268));
}

void MomentsEventData.EventBundle.homeAvailability.setter()
{
  v0 = OUTLINED_FUNCTION_85_8();
  v1 = type metadata accessor for MomentsEventData.EventBundle(v0);
  OUTLINED_FUNCTION_84_6(*(v1 + 268));
}

uint64_t MomentsEventData.EventBundle.homeAvailability.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for MomentsEventData.EventBundle(v0);
  return OUTLINED_FUNCTION_1_4();
}

void MomentsEventData.EventBundle.workAvailability.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for MomentsEventData.EventBundle(v0);
  OUTLINED_FUNCTION_37_0(*(v1 + 272));
}

void MomentsEventData.EventBundle.workAvailability.setter()
{
  v0 = OUTLINED_FUNCTION_85_8();
  v1 = type metadata accessor for MomentsEventData.EventBundle(v0);
  OUTLINED_FUNCTION_84_6(*(v1 + 272));
}

uint64_t MomentsEventData.EventBundle.workAvailability.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for MomentsEventData.EventBundle(v0);
  return OUTLINED_FUNCTION_1_4();
}

void MomentsEventData.EventBundle.bundleVisitMapItemSource.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for MomentsEventData.EventBundle(v0);
  OUTLINED_FUNCTION_37_0(*(v1 + 276));
}

void MomentsEventData.EventBundle.bundleVisitMapItemSource.setter()
{
  v0 = OUTLINED_FUNCTION_85_8();
  v1 = type metadata accessor for MomentsEventData.EventBundle(v0);
  OUTLINED_FUNCTION_84_6(*(v1 + 276));
}

uint64_t MomentsEventData.EventBundle.bundleVisitMapItemSource.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for MomentsEventData.EventBundle(v0);
  return OUTLINED_FUNCTION_1_4();
}

void MomentsEventData.EventBundle.bundleVisitPlaceType.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for MomentsEventData.EventBundle(v0);
  OUTLINED_FUNCTION_37_0(*(v1 + 280));
}

void MomentsEventData.EventBundle.bundleVisitPlaceType.setter()
{
  v0 = OUTLINED_FUNCTION_85_8();
  v1 = type metadata accessor for MomentsEventData.EventBundle(v0);
  OUTLINED_FUNCTION_84_6(*(v1 + 280));
}

uint64_t MomentsEventData.EventBundle.bundleVisitPlaceType.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for MomentsEventData.EventBundle(v0);
  return OUTLINED_FUNCTION_1_4();
}

void MomentsEventData.EventBundle.bundleVisitPlaceLabelGranularity.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for MomentsEventData.EventBundle(v0);
  OUTLINED_FUNCTION_37_0(*(v1 + 284));
}

void MomentsEventData.EventBundle.bundleVisitPlaceLabelGranularity.setter()
{
  v0 = OUTLINED_FUNCTION_85_8();
  v1 = type metadata accessor for MomentsEventData.EventBundle(v0);
  OUTLINED_FUNCTION_84_6(*(v1 + 284));
}

uint64_t MomentsEventData.EventBundle.bundleVisitPlaceLabelGranularity.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for MomentsEventData.EventBundle(v0);
  return OUTLINED_FUNCTION_1_4();
}

void MomentsEventData.EventBundle.bundleIncludesAnomalousEvent.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for MomentsEventData.EventBundle(v0);
  OUTLINED_FUNCTION_37_0(*(v1 + 288));
}

void MomentsEventData.EventBundle.bundleIncludesAnomalousEvent.setter()
{
  v0 = OUTLINED_FUNCTION_85_8();
  v1 = type metadata accessor for MomentsEventData.EventBundle(v0);
  OUTLINED_FUNCTION_84_6(*(v1 + 288));
}

uint64_t MomentsEventData.EventBundle.bundleIncludesAnomalousEvent.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for MomentsEventData.EventBundle(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t MomentsEventData.EventBundle.isFiltered.setter()
{
  v2 = OUTLINED_FUNCTION_3_4();
  result = type metadata accessor for MomentsEventData.EventBundle(v2);
  *(v1 + *(result + 292)) = v0;
  return result;
}

uint64_t MomentsEventData.EventBundle.isFiltered.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for MomentsEventData.EventBundle(v0);
  return OUTLINED_FUNCTION_1_4();
}

void MomentsEventData.EventBundle.bundleSuperType.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for MomentsEventData.EventBundle(v0);
  OUTLINED_FUNCTION_37_0(*(v1 + 296));
}

void MomentsEventData.EventBundle.bundleSuperType.setter()
{
  v0 = OUTLINED_FUNCTION_85_8();
  v1 = type metadata accessor for MomentsEventData.EventBundle(v0);
  OUTLINED_FUNCTION_84_6(*(v1 + 296));
}

uint64_t MomentsEventData.EventBundle.bundleSuperType.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for MomentsEventData.EventBundle(v0);
  return OUTLINED_FUNCTION_1_4();
}

void MomentsEventData.EventBundle.bundleSubType.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for MomentsEventData.EventBundle(v0);
  OUTLINED_FUNCTION_37_0(*(v1 + 300));
}

void MomentsEventData.EventBundle.bundleSubType.setter()
{
  v0 = OUTLINED_FUNCTION_85_8();
  v1 = type metadata accessor for MomentsEventData.EventBundle(v0);
  OUTLINED_FUNCTION_84_6(*(v1 + 300));
}

uint64_t MomentsEventData.EventBundle.bundleSubType.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for MomentsEventData.EventBundle(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t MomentsEventData.EventBundle.isAggregatedAndSuppressed.setter()
{
  v2 = OUTLINED_FUNCTION_3_4();
  result = type metadata accessor for MomentsEventData.EventBundle(v2);
  *(v1 + *(result + 304)) = v0;
  return result;
}

uint64_t MomentsEventData.EventBundle.isAggregatedAndSuppressed.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for MomentsEventData.EventBundle(v0);
  return OUTLINED_FUNCTION_1_4();
}

void MomentsEventData.EventBundle.summarizationGranularity.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for MomentsEventData.EventBundle(v0);
  OUTLINED_FUNCTION_37_0(*(v1 + 308));
}

void MomentsEventData.EventBundle.summarizationGranularity.setter()
{
  v0 = OUTLINED_FUNCTION_85_8();
  v1 = type metadata accessor for MomentsEventData.EventBundle(v0);
  OUTLINED_FUNCTION_84_6(*(v1 + 308));
}

uint64_t MomentsEventData.EventBundle.summarizationGranularity.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for MomentsEventData.EventBundle(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t MomentsEventData.EventBundle.includedInSummaryBundleOnly.setter()
{
  v2 = OUTLINED_FUNCTION_3_4();
  result = type metadata accessor for MomentsEventData.EventBundle(v2);
  *(v1 + *(result + 312)) = v0;
  return result;
}

uint64_t MomentsEventData.EventBundle.includedInSummaryBundleOnly.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for MomentsEventData.EventBundle(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t MomentsEventData.EventBundle.subBundleIDs.getter()
{
  type metadata accessor for MomentsEventData.EventBundle(0);
}

uint64_t MomentsEventData.EventBundle.subBundleIDs.setter()
{
  v2 = OUTLINED_FUNCTION_3_4();
  v3 = *(type metadata accessor for MomentsEventData.EventBundle(v2) + 316);

  *(v1 + v3) = v0;
  return result;
}

uint64_t MomentsEventData.EventBundle.subBundleIDs.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for MomentsEventData.EventBundle(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t MomentsEventData.EventBundle.subSuggestionIDs.getter()
{
  type metadata accessor for MomentsEventData.EventBundle(0);
}

uint64_t MomentsEventData.EventBundle.subSuggestionIDs.setter()
{
  v2 = OUTLINED_FUNCTION_3_4();
  v3 = *(type metadata accessor for MomentsEventData.EventBundle(v2) + 320);

  *(v1 + v3) = v0;
  return result;
}

uint64_t MomentsEventData.EventBundle.subSuggestionIDs.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for MomentsEventData.EventBundle(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t MomentsEventData.EventBundle.firstCreationDate.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for MomentsEventData.EventBundle(v0);
  v2 = OUTLINED_FUNCTION_101(*(v1 + 324));
  return sub_193448804(v2, v3, v4, v5);
}

uint64_t MomentsEventData.EventBundle.firstCreationDate.setter()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for MomentsEventData.EventBundle(v0);
  v1 = OUTLINED_FUNCTION_100_0();
  return sub_19344542C(v1, v2, v3, v4);
}

uint64_t MomentsEventData.EventBundle.firstCreationDate.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for MomentsEventData.EventBundle(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t MomentsEventData.EventBundle.resources.getter()
{
  type metadata accessor for MomentsEventData.EventBundle(0);
}

uint64_t MomentsEventData.EventBundle.resources.setter()
{
  v2 = OUTLINED_FUNCTION_3_4();
  v3 = *(type metadata accessor for MomentsEventData.EventBundle(v2) + 328);

  *(v1 + v3) = v0;
  return result;
}

uint64_t MomentsEventData.EventBundle.resources.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for MomentsEventData.EventBundle(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t MomentsEventData.EventBundle.persons.getter()
{
  type metadata accessor for MomentsEventData.EventBundle(0);
}

uint64_t MomentsEventData.EventBundle.persons.setter()
{
  v2 = OUTLINED_FUNCTION_3_4();
  v3 = *(type metadata accessor for MomentsEventData.EventBundle(v2) + 332);

  *(v1 + v3) = v0;
  return result;
}

uint64_t MomentsEventData.EventBundle.persons.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for MomentsEventData.EventBundle(v0);
  return OUTLINED_FUNCTION_1_4();
}

void *MomentsEventData.EventBundle.mainPlace.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  type metadata accessor for MomentsEventData.EventBundle(v0);
  v1 = OUTLINED_FUNCTION_100_0();

  return memcpy(v1, v2, 0x6AuLL);
}

void *MomentsEventData.EventBundle.mainPlace.setter()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = type metadata accessor for MomentsEventData.EventBundle(v0);
  v2 = OUTLINED_FUNCTION_101(*(v1 + 336));

  return memcpy(v2, v3, 0x6AuLL);
}

uint64_t MomentsEventData.EventBundle.mainPlace.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for MomentsEventData.EventBundle(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t MomentsEventData.EventBundle.otherPlaces.getter()
{
  type metadata accessor for MomentsEventData.EventBundle(0);
}

uint64_t MomentsEventData.EventBundle.otherPlaces.setter()
{
  v2 = OUTLINED_FUNCTION_3_4();
  v3 = *(type metadata accessor for MomentsEventData.EventBundle(v2) + 340);

  *(v1 + v3) = v0;
  return result;
}

uint64_t MomentsEventData.EventBundle.otherPlaces.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for MomentsEventData.EventBundle(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t MomentsEventData.EventBundle.photoTraits.getter()
{
  type metadata accessor for MomentsEventData.EventBundle(0);
}

uint64_t MomentsEventData.EventBundle.photoTraits.setter()
{
  v2 = OUTLINED_FUNCTION_3_4();
  v3 = *(type metadata accessor for MomentsEventData.EventBundle(v2) + 344);

  *(v1 + v3) = v0;
  return result;
}

uint64_t MomentsEventData.EventBundle.photoTraits.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for MomentsEventData.EventBundle(v0);
  return OUTLINED_FUNCTION_1_4();
}

__n128 MomentsEventData.EventBundle.clusterMetadata.getter()
{
  v2 = OUTLINED_FUNCTION_8_4();
  v3 = (v1 + *(type metadata accessor for MomentsEventData.EventBundle(v2) + 348));
  v4 = v3[1].n128_u8[0];
  result = *v3;
  *v0 = *v3;
  v0[1].n128_u8[0] = v4;
  return result;
}

uint64_t MomentsEventData.EventBundle.clusterMetadata.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  result = type metadata accessor for MomentsEventData.EventBundle(0);
  v6 = v1 + *(result + 348);
  *v6 = v2;
  *(v6 + 8) = v3;
  *(v6 + 16) = v4;
  return result;
}

uint64_t MomentsEventData.EventBundle.clusterMetadata.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for MomentsEventData.EventBundle(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t MomentsEventData.EventBundle.outlierMetadata.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for MomentsEventData.EventBundle(v0);
  v2 = OUTLINED_FUNCTION_101(*(v1 + 352));
  return sub_193448804(v2, v3, v4, v5);
}

uint64_t MomentsEventData.EventBundle.outlierMetadata.setter()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for MomentsEventData.EventBundle(v0);
  v1 = OUTLINED_FUNCTION_100_0();
  return sub_19344542C(v1, v2, v3, v4);
}

uint64_t MomentsEventData.EventBundle.outlierMetadata.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for MomentsEventData.EventBundle(v0);
  return OUTLINED_FUNCTION_1_4();
}

void MomentsEventData.EventBundle.bundleGoodnessScore.setter()
{
  v0 = OUTLINED_FUNCTION_48_1();
  v1 = type metadata accessor for MomentsEventData.EventBundle(v0);
  OUTLINED_FUNCTION_29_0(*(v1 + 356));
}

uint64_t MomentsEventData.EventBundle.bundleGoodnessScore.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for MomentsEventData.EventBundle(v0);
  return OUTLINED_FUNCTION_1_4();
}

void MomentsEventData.EventBundle.distinctnessScore.setter()
{
  v0 = OUTLINED_FUNCTION_48_1();
  v1 = type metadata accessor for MomentsEventData.EventBundle(v0);
  OUTLINED_FUNCTION_29_0(*(v1 + 360));
}

uint64_t MomentsEventData.EventBundle.distinctnessScore.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for MomentsEventData.EventBundle(v0);
  return OUTLINED_FUNCTION_1_4();
}

void MomentsEventData.EventBundle.richnessScore.setter()
{
  v0 = OUTLINED_FUNCTION_48_1();
  v1 = type metadata accessor for MomentsEventData.EventBundle(v0);
  OUTLINED_FUNCTION_29_0(*(v1 + 364));
}

uint64_t MomentsEventData.EventBundle.richnessScore.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for MomentsEventData.EventBundle(v0);
  return OUTLINED_FUNCTION_1_4();
}

void MomentsEventData.EventBundle.engagementScore.setter()
{
  v0 = OUTLINED_FUNCTION_48_1();
  v1 = type metadata accessor for MomentsEventData.EventBundle(v0);
  OUTLINED_FUNCTION_29_0(*(v1 + 368));
}

uint64_t MomentsEventData.EventBundle.engagementScore.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for MomentsEventData.EventBundle(v0);
  return OUTLINED_FUNCTION_1_4();
}

void MomentsEventData.EventBundle.heuristicsScore.setter()
{
  v0 = OUTLINED_FUNCTION_48_1();
  v1 = type metadata accessor for MomentsEventData.EventBundle(v0);
  OUTLINED_FUNCTION_29_0(*(v1 + 372));
}

uint64_t MomentsEventData.EventBundle.heuristicsScore.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for MomentsEventData.EventBundle(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t MomentsEventData.EventBundle.metadataForRank.getter()
{
  v2 = OUTLINED_FUNCTION_8_4();
  v3 = *(type metadata accessor for MomentsEventData.EventBundle(v2) + 376);
  memcpy(__dst, (v1 + v3), 0xDAuLL);
  memcpy(v0, (v1 + v3), 0xDAuLL);
  return sub_193448804(__dst, &v5, &qword_1EAE42F60, &qword_193997C98);
}

void *MomentsEventData.EventBundle.metadataForRank.setter()
{
  v2 = OUTLINED_FUNCTION_3_4();
  v3 = *(type metadata accessor for MomentsEventData.EventBundle(v2) + 376);
  memcpy(v5, (v1 + v3), 0xDAuLL);
  sub_19344E6DC(v5, &qword_1EAE42F60, &qword_193997C98);
  return memcpy((v1 + v3), v0, 0xDAuLL);
}

uint64_t MomentsEventData.EventBundle.metadataForRank.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for MomentsEventData.EventBundle(v0);
  return OUTLINED_FUNCTION_1_4();
}

void MomentsEventData.EventBundle.init()()
{
  OUTLINED_FUNCTION_117();
  v1 = OUTLINED_FUNCTION_8_4();
  v2 = type metadata accessor for MomentsEventData.EventBundle(v1);
  v3 = sub_19393BE00();
  OUTLINED_FUNCTION_45();
  __swift_storeEnumTagSinglePayload(v4, v5, v6, v3);
  OUTLINED_FUNCTION_66_24(v2[6]);
  OUTLINED_FUNCTION_66_24(v2[7]);
  OUTLINED_FUNCTION_66_24(v2[8]);
  v84 = v0 + v2[9];
  *v84 = 0;
  *(v84 + 8) = 256;
  v89 = v2[11];
  v88 = v2[13];
  v82 = (v0 + v2[14]);
  v85 = (v0 + v2[15]);
  v87 = v2[16];
  v81 = v0 + v2[17];
  OUTLINED_FUNCTION_80_18(v81);
  v73 = v0 + v2[18];
  OUTLINED_FUNCTION_80_18(v73);
  v70 = v0 + v2[19];
  OUTLINED_FUNCTION_80_18(v70);
  v7 = v0 + v2[21];
  *v7 = 0;
  *(v7 + 1) = 0;
  *(v7 + 2) = 0;
  *(v7 + 3) = 1;
  *(v7 + 8) = 0;
  v7[36] = 0;
  v112 = v2[23];
  v105 = v0 + v2[24];
  OUTLINED_FUNCTION_80_18(v105);
  v110 = v2[26];
  v109 = v2[28];
  v108 = v2[30];
  v101 = v0 + v2[31];
  OUTLINED_FUNCTION_80_18(v101);
  v97 = v0 + v2[32];
  v100 = v0 + v2[33];
  v95 = v0 + v2[34];
  OUTLINED_FUNCTION_80_18(v95);
  v93 = v2[35];
  OUTLINED_FUNCTION_66_24(v93);
  v102 = (v0 + v2[36]);
  v104 = (v0 + v2[37]);
  v99 = v0 + v2[38];
  v96 = v0 + v2[39];
  OUTLINED_FUNCTION_80_18(v96);
  v94 = v2[41];
  v91 = (v0 + v2[40]);
  OUTLINED_FUNCTION_45();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v3);
  v106 = v2[42];
  OUTLINED_FUNCTION_66_24(v106);
  v114 = v2[43];
  OUTLINED_FUNCTION_66_24(v114);
  v126 = v0 + v2[44];
  v128 = v0 + v2[45];
  v119 = v0 + v2[46];
  OUTLINED_FUNCTION_80_18(v119);
  v117 = v2[48];
  v115 = (v0 + v2[47]);
  OUTLINED_FUNCTION_45();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v3);
  v127 = (v0 + v2[49]);
  v120 = v0 + v2[50];
  OUTLINED_FUNCTION_80_18(v120);
  v116 = v0 + v2[51];
  OUTLINED_FUNCTION_80_18(v116);
  v125 = v2[52];
  v124 = v2[53];
  v123 = v2[54];
  v122 = v2[55];
  v121 = v2[56];
  v118 = v0 + v2[58];
  v113 = v0 + v2[59];
  OUTLINED_FUNCTION_80_18(v113);
  v111 = v0 + v2[60];
  OUTLINED_FUNCTION_80_18(v111);
  v107 = v0 + v2[61];
  OUTLINED_FUNCTION_80_18(v107);
  v103 = v0 + v2[62];
  OUTLINED_FUNCTION_80_18(v103);
  v98 = v0 + v2[63];
  OUTLINED_FUNCTION_80_18(v98);
  v92 = v0 + v2[64];
  OUTLINED_FUNCTION_80_18(v92);
  v90 = v0 + v2[65];
  OUTLINED_FUNCTION_80_18(v90);
  v86 = v0 + v2[66];
  OUTLINED_FUNCTION_80_18(v86);
  v83 = v0 + v2[67];
  OUTLINED_FUNCTION_80_18(v83);
  v80 = v0 + v2[68];
  OUTLINED_FUNCTION_80_18(v80);
  v72 = v0 + v2[69];
  OUTLINED_FUNCTION_80_18(v72);
  v69 = v0 + v2[70];
  OUTLINED_FUNCTION_80_18(v69);
  v67 = v0 + v2[71];
  OUTLINED_FUNCTION_80_18(v67);
  v64 = v0 + v2[72];
  OUTLINED_FUNCTION_80_18(v64);
  v68 = v2[73];
  v61 = v0 + v2[74];
  OUTLINED_FUNCTION_80_18(v61);
  v59 = v0 + v2[75];
  OUTLINED_FUNCTION_80_18(v59);
  v58 = v0 + v2[77];
  OUTLINED_FUNCTION_80_18(v58);
  v60 = v2[78];
  v62 = v14;
  v63 = v2[81];
  OUTLINED_FUNCTION_66_24(v63);
  v15 = v0 + v2[84];
  *v15 = 0u;
  *(v15 + 1) = 0u;
  *(v15 + 2) = 0u;
  *(v15 + 3) = 0u;
  *(v15 + 4) = 0u;
  *(v15 + 5) = 0u;
  *(v15 + 89) = 0u;
  v15[105] = 1;
  v71 = v0 + v2[87];
  *v71 = xmmword_19396F4D0;
  v71[16] = 0;
  v65 = v2[88];
  v79 = type metadata accessor for MomentsEventData.EventBundle.OutlierMetadata(0);
  OUTLINED_FUNCTION_45();
  __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
  v77 = v0 + v2[89];
  v76 = v0 + v2[90];
  v75 = v0 + v2[91];
  v74 = v0 + v2[92];
  v78 = v0 + v2[93];
  v20 = v2[94];
  v66 = v20;
  sub_1937D0F98(__src);
  memcpy(v0 + v20, __src, 0xDAuLL);
  *v0 = 0;
  v0[1] = 0;
  OUTLINED_FUNCTION_152_11();
  OUTLINED_FUNCTION_45();
  __swift_storeEnumTagSinglePayload(v21, v22, v23, v3);
  OUTLINED_FUNCTION_152_11();
  OUTLINED_FUNCTION_45();
  __swift_storeEnumTagSinglePayload(v24, v25, v26, v3);
  OUTLINED_FUNCTION_152_11();
  OUTLINED_FUNCTION_45();
  __swift_storeEnumTagSinglePayload(v27, v28, v29, v3);
  OUTLINED_FUNCTION_152_11();
  OUTLINED_FUNCTION_45();
  __swift_storeEnumTagSinglePayload(v30, v31, v32, v3);
  OUTLINED_FUNCTION_80_18(v84);
  OUTLINED_FUNCTION_163_10(v89);
  OUTLINED_FUNCTION_163_10(v88);
  *v82 = 0;
  v82[1] = 0;
  *v85 = 0;
  v85[1] = 0;
  *(v0 + v87) = 2;
  OUTLINED_FUNCTION_80_18(v81);
  OUTLINED_FUNCTION_80_18(v73);
  OUTLINED_FUNCTION_80_18(v70);
  v33 = MEMORY[0x1E69E7CC0];
  *(v0 + v2[20]) = MEMORY[0x1E69E7CC0];
  v34 = v33;
  sub_19345FF00(*v7, *(v7 + 1), *(v7 + 2), *(v7 + 3));
  *v7 = 0;
  *(v7 + 1) = 0;
  *(v7 + 2) = 0;
  *(v7 + 3) = 1;
  v7[36] = 0;
  *(v7 + 8) = 0;
  *(v0 + v2[22]) = v34;
  *(v0 + v112) = 2;
  OUTLINED_FUNCTION_80_18(v105);
  OUTLINED_FUNCTION_163_10(v110);
  OUTLINED_FUNCTION_163_10(v109);
  OUTLINED_FUNCTION_163_10(v108);
  OUTLINED_FUNCTION_80_18(v101);
  *v97 = 0;
  v97[8] = 1;
  *v100 = 0;
  v100[8] = 1;
  OUTLINED_FUNCTION_80_18(v95);
  sub_19344E6DC(v0 + v93, &qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_45();
  __swift_storeEnumTagSinglePayload(v35, v36, v37, v3);
  *v102 = 0;
  v102[1] = 0;
  *v104 = 0;
  v104[1] = 0;
  *v99 = 0;
  v99[4] = 1;
  OUTLINED_FUNCTION_80_18(v96);
  *v91 = 0;
  v91[1] = 0;
  sub_19344E6DC(v0 + v94, &qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_45();
  __swift_storeEnumTagSinglePayload(v38, v39, v40, v3);
  sub_19344E6DC(v0 + v106, &qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_45();
  __swift_storeEnumTagSinglePayload(v41, v42, v43, v3);
  sub_19344E6DC(v0 + v114, &qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_45();
  __swift_storeEnumTagSinglePayload(v44, v45, v46, v3);
  *v126 = 0;
  v126[4] = 1;
  *v128 = 0;
  v128[4] = 1;
  OUTLINED_FUNCTION_80_18(v119);
  *v115 = 0;
  v115[1] = 0;
  sub_19344E6DC(v0 + v117, &qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_45();
  __swift_storeEnumTagSinglePayload(v47, v48, v49, v3);
  *v127 = 0;
  v127[1] = 0;
  OUTLINED_FUNCTION_80_18(v120);
  OUTLINED_FUNCTION_80_18(v116);
  *(v0 + v125) = 2;
  *(v0 + v124) = 2;
  *(v0 + v123) = 2;
  *(v0 + v122) = 2;
  *(v0 + v121) = 2;
  *(v0 + v2[57]) = MEMORY[0x1E69E7CC0];
  *v118 = 0;
  v118[4] = 1;
  OUTLINED_FUNCTION_80_18(v113);
  OUTLINED_FUNCTION_80_18(v111);
  OUTLINED_FUNCTION_80_18(v107);
  OUTLINED_FUNCTION_80_18(v103);
  OUTLINED_FUNCTION_80_18(v98);
  OUTLINED_FUNCTION_80_18(v92);
  OUTLINED_FUNCTION_80_18(v90);
  OUTLINED_FUNCTION_80_18(v86);
  OUTLINED_FUNCTION_80_18(v83);
  OUTLINED_FUNCTION_80_18(v80);
  OUTLINED_FUNCTION_80_18(v72);
  OUTLINED_FUNCTION_80_18(v69);
  OUTLINED_FUNCTION_80_18(v67);
  OUTLINED_FUNCTION_80_18(v64);
  *(v0 + v68) = 2;
  OUTLINED_FUNCTION_80_18(v61);
  OUTLINED_FUNCTION_80_18(v59);
  *(v0 + v62) = 2;
  *(v58 + 8) = 256;
  *v58 = 0;
  *(v0 + v60) = 2;
  *(v0 + v2[79]) = v50;
  *(v0 + v2[80]) = v50;
  v51 = v50;
  sub_19344E6DC(v0 + v63, &qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_45();
  __swift_storeEnumTagSinglePayload(v52, v53, v54, v3);
  *(v0 + v2[82]) = v51;
  *(v0 + v2[83]) = v51;
  *(v15 + 89) = 0u;
  *(v15 + 4) = 0u;
  *(v15 + 5) = 0u;
  *(v15 + 2) = 0u;
  *(v15 + 3) = 0u;
  *v15 = 0u;
  *(v15 + 1) = 0u;
  v15[105] = 1;
  *(v0 + v2[85]) = v51;
  *(v0 + v2[86]) = v51;
  *v71 = xmmword_19396F4D0;
  v71[16] = 0;
  sub_19344E6DC(v0 + v65, &qword_1EAE42B00, &qword_193997C90);
  OUTLINED_FUNCTION_45();
  __swift_storeEnumTagSinglePayload(v55, v56, v57, v79);
  *v77 = 0;
  v77[8] = 1;
  *v76 = 0;
  v76[8] = 1;
  *v75 = 0;
  v75[8] = 1;
  *v74 = 0;
  v74[8] = 1;
  *v78 = 0;
  v78[8] = 1;
  memcpy(__dst, v0 + v66, 0xDAuLL);
  sub_19344E6DC(__dst, &qword_1EAE42F60, &qword_193997C98);
  memcpy(v0 + v66, __src, 0xDAuLL);
  OUTLINED_FUNCTION_116();
}

uint64_t sub_1937C7520@<X0>(uint64_t *a1@<X8>)
{
  result = MomentsEventData.EventBundle.BundleSuperType.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1937C7548@<X0>(uint64_t *a1@<X8>)
{
  result = static MomentsEventData.EventBundle.BundleSuperType.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1937C7638@<X0>(uint64_t *a1@<X8>)
{
  result = MomentsEventData.EventBundle.BundleSubType.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1937C7660@<X0>(uint64_t *a1@<X8>)
{
  result = static MomentsEventData.EventBundle.BundleSubType.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1937C7750@<X0>(uint64_t *a1@<X8>)
{
  result = MomentsEventData.EventBundle.SummarizationGranularity.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1937C7778@<X0>(uint64_t *a1@<X8>)
{
  result = static MomentsEventData.EventBundle.SummarizationGranularity.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t MomentsEventData.EventBundle.Resource.photoFaceCount.setter(uint64_t result)
{
  *(v1 + 28) = result;
  *(v1 + 32) = BYTE4(result) & 1;
  return result;
}

uint64_t MomentsEventData.EventBundle.Resource.photoCurationScore.setter(uint64_t result, char a2)
{
  *(v2 + 40) = result;
  *(v2 + 48) = a2 & 1;
  return result;
}

uint64_t MomentsEventData.EventBundle.Resource.photoOverallAestheticScore.setter(uint64_t result, char a2)
{
  *(v2 + 56) = result;
  *(v2 + 64) = a2 & 1;
  return result;
}

void MomentsEventData.EventBundle.Resource.init()(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 256;
  *(a1 + 16) = 0;
  *(a1 + 24) = 256;
  *(a1 + 28) = 0;
  *(a1 + 32) = 1;
  *(a1 + 40) = 0;
  *(a1 + 48) = 1;
  *(a1 + 56) = 0;
  *(a1 + 64) = 1;
}

uint64_t sub_1937C79C0@<X0>(uint64_t *a1@<X8>)
{
  result = MomentsEventData.EventBundle.Resource.Type.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1937C79E8@<X0>(uint64_t *a1@<X8>)
{
  result = static MomentsEventData.EventBundle.Resource.Type.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1937C7AD8@<X0>(uint64_t *a1@<X8>)
{
  result = MomentsEventData.EventBundle.Resource.PhotoAssetMediaType.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1937C7B00@<X0>(uint64_t *a1@<X8>)
{
  result = static MomentsEventData.EventBundle.Resource.PhotoAssetMediaType.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t static MomentsEventData.EventBundle.Resource.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 25);
  v3 = *(a1 + 28);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8 = *(a1 + 64);
  v9 = *(a2 + 25);
  v10 = *(a2 + 28);
  v11 = *(a2 + 32);
  v12 = *(a2 + 40);
  v13 = *(a2 + 48);
  v14 = *(a2 + 56);
  v15 = *(a2 + 64);
  if (*(a1 + 9))
  {
    if ((*(a2 + 9) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*(a2 + 9))
    {
      return 0;
    }

    v36 = *(a1 + 64);
    v37 = *(a2 + 64);
    v34 = *(a1 + 28);
    v35 = *(a1 + 48);
    v33 = *(a2 + 48);
    v16 = *(a1 + 32);
    v17 = *(a2 + 32);
    v18 = *(a2 + 28);
    v32 = MomentsEventData.EventBundle.Resource.Type.rawValue.getter();
    v19 = MomentsEventData.EventBundle.Resource.Type.rawValue.getter();
    v10 = v18;
    v11 = v17;
    v4 = v16;
    v13 = v33;
    v3 = v34;
    v6 = v35;
    v8 = v36;
    v15 = v37;
    if (v32 != v19)
    {
      return 0;
    }
  }

  if (v2)
  {
    if ((v9 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v9)
    {
      return 0;
    }

    v20 = v8;
    v21 = v6;
    v22 = v13;
    v23 = v4;
    v24 = v11;
    v25 = v10;
    v26 = MomentsEventData.EventBundle.Resource.PhotoAssetMediaType.rawValue.getter();
    v27 = MomentsEventData.EventBundle.Resource.PhotoAssetMediaType.rawValue.getter();
    v10 = v25;
    v11 = v24;
    v4 = v23;
    v13 = v22;
    v6 = v21;
    v8 = v20;
    if (v26 != v27)
    {
      return 0;
    }
  }

  if (v4)
  {
    if (!v11)
    {
      return 0;
    }
  }

  else
  {
    if (v3 == v10)
    {
      v28 = v11;
    }

    else
    {
      v28 = 1;
    }

    if (v28)
    {
      return 0;
    }
  }

  if (v6)
  {
    if (!v13)
    {
      return 0;
    }
  }

  else
  {
    if (v5 == v12)
    {
      v29 = v13;
    }

    else
    {
      v29 = 1;
    }

    if (v29)
    {
      return 0;
    }
  }

  if (v8)
  {
    if ((v15 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v7 == v14)
    {
      v31 = v15;
    }

    else
    {
      v31 = 1;
    }

    if (v31)
    {
      return 0;
    }
  }

  return 1;
}

void MomentsEventData.EventBundle.Resource.hash(into:)()
{
  OUTLINED_FUNCTION_108_0();
  OUTLINED_FUNCTION_148_2();
  v1 = *(v0 + 25);
  v2 = *(v0 + 32);
  v3 = *(v0 + 48);
  v4 = *(v0 + 56);
  v5 = *(v0 + 64);
  if (v6 == 1)
  {
    OUTLINED_FUNCTION_104_0();
    if (!v1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v16 = *(v0 + 32);
    v11 = *(v0 + 56);
    v12 = *(v0 + 48);
    v13 = *(v0 + 64);
    v14 = OUTLINED_FUNCTION_103_0();
    v5 = v13;
    v3 = v12;
    v4 = v11;
    v2 = v16;
    v15 = MomentsEventData.EventBundle.Resource.Type.rawValue.getter(v14);
    MEMORY[0x193B18030](v15);
    if (!v1)
    {
LABEL_3:
      v7 = OUTLINED_FUNCTION_103_0();
      v8 = MomentsEventData.EventBundle.Resource.PhotoAssetMediaType.rawValue.getter(v7);
      MEMORY[0x193B18030](v8);
      if (!v2)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  OUTLINED_FUNCTION_104_0();
  if (!v2)
  {
LABEL_4:
    OUTLINED_FUNCTION_103_0();
    sub_19393CAE0();
    if (!v3)
    {
      goto LABEL_5;
    }

LABEL_13:
    OUTLINED_FUNCTION_104_0();
    if (!v5)
    {
      goto LABEL_6;
    }

LABEL_14:
    OUTLINED_FUNCTION_104_0();
    goto LABEL_15;
  }

LABEL_12:
  OUTLINED_FUNCTION_104_0();
  if (v3)
  {
    goto LABEL_13;
  }

LABEL_5:
  OUTLINED_FUNCTION_103_0();
  v9 = OUTLINED_FUNCTION_138_10();
  MEMORY[0x193B18060](v9);
  if (v5)
  {
    goto LABEL_14;
  }

LABEL_6:
  OUTLINED_FUNCTION_103_0();
  if ((v4 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0;
  }

  MEMORY[0x193B18060](v10);
LABEL_15:
  OUTLINED_FUNCTION_107();
}

uint64_t MomentsEventData.EventBundle.Resource.hashValue.getter()
{
  OUTLINED_FUNCTION_119();
  MomentsEventData.EventBundle.Resource.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_1937C7F5C()
{
  sub_19393CAB0();
  MomentsEventData.EventBundle.Resource.hash(into:)();
  return sub_19393CB00();
}

uint64_t MomentsEventData.EventBundle.Person.personRelationships.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

void __swiftcall MomentsEventData.EventBundle.Person.init()(IntelligencePlatformLibrary::MomentsEventData::EventBundle::Person *__return_ptr retstr)
{
  retstr->personRelationships._rawValue = MEMORY[0x1E69E7CC0];
  retstr->isMEPerson.value = 2;
  OUTLINED_FUNCTION_157_12(retstr);
}

uint64_t MomentsEventData.EventBundle.Person.PersonRelationship.score.setter(uint64_t result, char a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2 & 1;
  return result;
}

void MomentsEventData.EventBundle.Person.PersonRelationship.init()(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 256;
  OUTLINED_FUNCTION_157_12(a1);
}

uint64_t static MomentsEventData.EventBundle.Person.PersonRelationship.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  if (*(a1 + 9))
  {
    if ((*(a2 + 9) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*(a2 + 9))
    {
      return 0;
    }

    OUTLINED_FUNCTION_9_16();
    v10 = MomentsEventData.PersonRelationshipTag.rawValue.getter(v6, v7, v8, v9);
    if (v10 != MomentsEventData.PersonRelationshipTag.rawValue.getter(v10, v11, v12, v13))
    {
      return 0;
    }
  }

  if (v3)
  {
    if ((v5 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v2 == v4)
    {
      v15 = v5;
    }

    else
    {
      v15 = 1;
    }

    if (v15)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t MomentsEventData.EventBundle.Person.PersonRelationship.hash(into:)()
{
  OUTLINED_FUNCTION_148_2();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  if (v3 != 1)
  {
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_179_0();
    v10 = MomentsEventData.PersonRelationshipTag.rawValue.getter(v6, v7, v8, v9);
    MEMORY[0x193B18030](v10);
    if (!v2)
    {
      goto LABEL_3;
    }

    return OUTLINED_FUNCTION_104_0();
  }

  OUTLINED_FUNCTION_104_0();
  if (v2)
  {
    return OUTLINED_FUNCTION_104_0();
  }

LABEL_3:
  OUTLINED_FUNCTION_103_0();
  if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v4 = v1;
  }

  else
  {
    v4 = 0;
  }

  return MEMORY[0x193B18060](v4);
}

uint64_t MomentsEventData.EventBundle.Person.PersonRelationship.hashValue.getter()
{
  OUTLINED_FUNCTION_114_15();
  v0 = sub_19393CAB0();
  OUTLINED_FUNCTION_134_0(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
  MomentsEventData.EventBundle.Person.PersonRelationship.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_1937C8224()
{
  OUTLINED_FUNCTION_114_15();
  v0 = sub_19393CAB0();
  OUTLINED_FUNCTION_134_0(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
  MomentsEventData.EventBundle.Person.PersonRelationship.hash(into:)();
  return sub_19393CB00();
}

uint64_t static MomentsEventData.EventBundle.Person.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  if ((sub_1937C1F6C(*a1, *a2, a3, a4) & 1) == 0)
  {
    return 0;
  }

  if (v4 == 2)
  {
    if (v7 != 2)
    {
      return 0;
    }

LABEL_7:
    if (v6)
    {
      if ((v9 & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if (v5 == v8)
      {
        v11 = v9;
      }

      else
      {
        v11 = 1;
      }

      if (v11)
      {
        return 0;
      }
    }

    return 1;
  }

  result = 0;
  if (v7 != 2 && ((v7 ^ v4) & 1) == 0)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t MomentsEventData.EventBundle.Person.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  sub_1937D0A24(a1, *v1);
  if (v2 != 2)
  {
    sub_19393CAD0();
  }

  sub_19393CAD0();
  if (v4)
  {
    return sub_19393CAD0();
  }

  sub_19393CAD0();
  if ((v3 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0;
  }

  return MEMORY[0x193B18060](v6);
}

uint64_t MomentsEventData.EventBundle.Person.hashValue.getter()
{
  OUTLINED_FUNCTION_123_16();
  v0 = sub_19393CAB0();
  v8 = OUTLINED_FUNCTION_134_0(v0, v1, v2, v3, v4, v5, v6, v7, v10, v11);
  MomentsEventData.EventBundle.Person.hash(into:)(v8);
  return sub_19393CB00();
}

uint64_t sub_1937C83D4()
{
  OUTLINED_FUNCTION_123_16();
  v0 = sub_19393CAB0();
  v8 = OUTLINED_FUNCTION_134_0(v0, v1, v2, v3, v4, v5, v6, v7, v10, v11);
  MomentsEventData.EventBundle.Person.hash(into:)(v8);
  return sub_19393CB00();
}

uint64_t MomentsEventData.EventBundle.Place.geoPOICategoryType.setter(uint64_t result)
{
  v2 = *(result + 8);
  v3 = *(result + 9);
  *(v1 + 32) = *result;
  *(v1 + 40) = v2;
  *(v1 + 41) = v3;
  return result;
}

uint64_t MomentsEventData.EventBundle.Place.placeNameConfidence.setter(uint64_t result, char a2)
{
  *(v2 + 48) = result;
  *(v2 + 56) = a2 & 1;
  return result;
}

uint64_t MomentsEventData.EventBundle.Place.familiarityIndexLOI.setter(uint64_t result, char a2)
{
  *(v2 + 64) = result;
  *(v2 + 72) = a2 & 1;
  return result;
}

uint64_t MomentsEventData.EventBundle.Place.distanceToHomeInMiles.setter(uint64_t result, char a2)
{
  *(v2 + 80) = result;
  *(v2 + 88) = a2 & 1;
  return result;
}

uint64_t MomentsEventData.EventBundle.Place.poiCategoryConfidence.setter(uint64_t result, char a2)
{
  *(v2 + 96) = result;
  *(v2 + 104) = a2 & 1;
  return result;
}

void MomentsEventData.EventBundle.Place.init()(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 256;
  *(a1 + 16) = 0;
  *(a1 + 24) = 256;
  *(a1 + 32) = 0;
  *(a1 + 40) = 256;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  *(a1 + 64) = 0;
  *(a1 + 72) = 1;
  *(a1 + 80) = 0;
  *(a1 + 88) = 1;
  *(a1 + 96) = 0;
  *(a1 + 104) = 1;
}

uint64_t static MomentsEventData.EventBundle.Place.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 25);
  v3 = *(a1 + 41);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = *(a1 + 64);
  v7 = *(a1 + 72);
  v8 = *(a1 + 80);
  v9 = *(a1 + 88);
  v10 = *(a1 + 96);
  v11 = *(a1 + 104);
  v12 = *(a2 + 25);
  v13 = *(a2 + 41);
  v14 = *(a2 + 48);
  v15 = *(a2 + 56);
  v16 = *(a2 + 64);
  v17 = *(a2 + 72);
  v18 = *(a2 + 80);
  v19 = *(a2 + 88);
  v20 = *(a2 + 96);
  v21 = *(a2 + 104);
  if (*(a1 + 9))
  {
    if ((*(a2 + 9) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*(a2 + 9))
    {
      return 0;
    }

    v40 = *(a1 + 72);
    v41 = *(a1 + 88);
    v47 = *(a2 + 104);
    v49 = *(a1 + 104);
    v43 = *(a1 + 56);
    v45 = *(a2 + 88);
    v38 = *(a2 + 72);
    v39 = *(a2 + 56);
    v22 = *(a1 + 41);
    v23 = *(a2 + 41);
    v24 = *(a1 + 25);
    v37 = MomentsEventData.PlaceInferencePlaceType.rawValue.getter();
    a1 = MomentsEventData.PlaceInferencePlaceType.rawValue.getter();
    v2 = v24;
    v13 = v23;
    v3 = v22;
    v5 = v43;
    v19 = v45;
    v17 = v38;
    v15 = v39;
    v21 = v47;
    v11 = v49;
    v7 = v40;
    v9 = v41;
    if (v37 != a1)
    {
      return 0;
    }
  }

  if (v2)
  {
    if ((v12 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v12)
    {
      return 0;
    }

    v48 = v21;
    v50 = v11;
    v44 = v5;
    v46 = v19;
    v25 = v13;
    v42 = MomentsEventData.PlaceInferenceUserSpecificPlaceType.rawValue.getter();
    a1 = MomentsEventData.PlaceInferenceUserSpecificPlaceType.rawValue.getter();
    v13 = v25;
    v5 = v44;
    v19 = v46;
    v21 = v48;
    v11 = v50;
    if (v42 != a1)
    {
      return 0;
    }
  }

  if (v3)
  {
    if ((v13 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v13)
    {
      return 0;
    }

    v26 = v11;
    v27 = v21;
    v28 = v19;
    v29 = v5;
    v30 = MomentsEventData.GeoPOICategoryType.rawValue.getter(a1);
    v31 = MomentsEventData.GeoPOICategoryType.rawValue.getter(v30);
    v5 = v29;
    v19 = v28;
    v21 = v27;
    v11 = v26;
    if (v30 != v31)
    {
      return 0;
    }
  }

  if (v5)
  {
    if (!v15)
    {
      return 0;
    }
  }

  else
  {
    if (v4 == v14)
    {
      v32 = v15;
    }

    else
    {
      v32 = 1;
    }

    if (v32)
    {
      return 0;
    }
  }

  if (v7)
  {
    if (!v17)
    {
      return 0;
    }
  }

  else
  {
    if (v6 == v16)
    {
      v33 = v17;
    }

    else
    {
      v33 = 1;
    }

    if (v33)
    {
      return 0;
    }
  }

  if (v9)
  {
    if (!v19)
    {
      return 0;
    }
  }

  else
  {
    if (v8 == v18)
    {
      v34 = v19;
    }

    else
    {
      v34 = 1;
    }

    if (v34)
    {
      return 0;
    }
  }

  if (v11)
  {
    if ((v21 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v10 == v20)
    {
      v36 = v21;
    }

    else
    {
      v36 = 1;
    }

    if (v36)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t MomentsEventData.EventBundle.Place.hash(into:)()
{
  OUTLINED_FUNCTION_148_2();
  v25 = *(v0 + 25);
  v26 = *(v0 + 41);
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);
  v4 = *(v0 + 72);
  v5 = *(v0 + 80);
  v6 = *(v0 + 88);
  v7 = *(v0 + 96);
  v8 = *(v0 + 104);
  if (v9 == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v24 = *(v0 + 48);
    v23 = *(v0 + 72);
    v10 = *(v0 + 64);
    v11 = *(v0 + 88);
    v12 = *(v0 + 80);
    v13 = *(v0 + 96);
    OUTLINED_FUNCTION_103_0();
    v7 = v13;
    v5 = v12;
    v6 = v11;
    v3 = v10;
    v4 = v23;
    v1 = v24;
    v14 = MomentsEventData.PlaceInferencePlaceType.rawValue.getter();
    MEMORY[0x193B18030](v14);
  }

  if (v25)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_103_0();
    v15 = MomentsEventData.PlaceInferenceUserSpecificPlaceType.rawValue.getter();
    MEMORY[0x193B18030](v15);
  }

  if (v26)
  {
    OUTLINED_FUNCTION_104_0();
    if (!v2)
    {
      goto LABEL_9;
    }

LABEL_26:
    OUTLINED_FUNCTION_104_0();
    if (!v4)
    {
      goto LABEL_13;
    }

LABEL_27:
    OUTLINED_FUNCTION_104_0();
    if (!v6)
    {
      goto LABEL_17;
    }

    goto LABEL_28;
  }

  v21 = OUTLINED_FUNCTION_103_0();
  v22 = MomentsEventData.GeoPOICategoryType.rawValue.getter(v21);
  MEMORY[0x193B18030](v22);
  if (v2)
  {
    goto LABEL_26;
  }

LABEL_9:
  OUTLINED_FUNCTION_103_0();
  if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v16 = v1;
  }

  else
  {
    v16 = 0;
  }

  MEMORY[0x193B18060](v16);
  if (v4)
  {
    goto LABEL_27;
  }

LABEL_13:
  OUTLINED_FUNCTION_103_0();
  if ((v3 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v17 = v3;
  }

  else
  {
    v17 = 0;
  }

  MEMORY[0x193B18060](v17);
  if (!v6)
  {
LABEL_17:
    OUTLINED_FUNCTION_103_0();
    if ((v5 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v18 = v5;
    }

    else
    {
      v18 = 0;
    }

    MEMORY[0x193B18060](v18);
    if (!v8)
    {
      goto LABEL_21;
    }

    return OUTLINED_FUNCTION_104_0();
  }

LABEL_28:
  OUTLINED_FUNCTION_104_0();
  if (v8)
  {
    return OUTLINED_FUNCTION_104_0();
  }

LABEL_21:
  OUTLINED_FUNCTION_103_0();
  if ((v7 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v19 = v7;
  }

  else
  {
    v19 = 0;
  }

  return MEMORY[0x193B18060](v19);
}

uint64_t MomentsEventData.EventBundle.Place.hashValue.getter()
{
  OUTLINED_FUNCTION_119();
  MomentsEventData.EventBundle.Place.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_1937C8B00()
{
  sub_19393CAB0();
  MomentsEventData.EventBundle.Place.hash(into:)();
  return sub_19393CB00();
}

IntelligencePlatformLibrary::MomentsEventData::EventBundle::ClusterMetadata __swiftcall MomentsEventData.EventBundle.ClusterMetadata.init()()
{
  *v0 = 0x202020202020202;
  *(v0 + 8) = 0x202020202020202;
  *(v0 + 16) = 2;
  return result;
}

void MomentsEventData.EventBundle.ClusterMetadata.hash(into:)()
{
  OUTLINED_FUNCTION_108_0();
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[4];
  v4 = v0[5];
  v9 = v0[3];
  v10 = v0[6];
  v5 = v0[7];
  v6 = v0[9];
  v7 = v0[10];
  v8 = v0[11];
  v11 = v0[12];
  v12 = v0[8];
  v13 = v0[13];
  v14 = v0[14];
  v15 = v0[15];
  v16 = v0[16];
  if (*v0 != 2)
  {
    sub_19393CAD0();
  }

  sub_19393CAD0();
  if (v1 != 2)
  {
    sub_19393CAD0();
  }

  sub_19393CAD0();
  if (v2 != 2)
  {
    sub_19393CAD0();
  }

  sub_19393CAD0();
  if (v9 != 2)
  {
    sub_19393CAD0();
  }

  sub_19393CAD0();
  if (v3 != 2)
  {
    sub_19393CAD0();
  }

  sub_19393CAD0();
  if (v4 != 2)
  {
    sub_19393CAD0();
  }

  sub_19393CAD0();
  if (v10 != 2)
  {
    sub_19393CAD0();
  }

  sub_19393CAD0();
  if (v5 != 2)
  {
    sub_19393CAD0();
  }

  sub_19393CAD0();
  if (v12 != 2)
  {
    sub_19393CAD0();
  }

  sub_19393CAD0();
  if (v6 != 2)
  {
    sub_19393CAD0();
  }

  sub_19393CAD0();
  if (v7 != 2)
  {
    sub_19393CAD0();
  }

  sub_19393CAD0();
  if (v8 != 2)
  {
    sub_19393CAD0();
  }

  sub_19393CAD0();
  if (v11 != 2)
  {
    sub_19393CAD0();
  }

  sub_19393CAD0();
  if (v13 != 2)
  {
    sub_19393CAD0();
  }

  sub_19393CAD0();
  if (v14 != 2)
  {
    sub_19393CAD0();
  }

  sub_19393CAD0();
  if (v15 != 2)
  {
    sub_19393CAD0();
  }

  sub_19393CAD0();
  if (v16 != 2)
  {
    sub_19393CAD0();
  }

  sub_19393CAD0();
  OUTLINED_FUNCTION_107();
}

uint64_t MomentsEventData.EventBundle.ClusterMetadata.hashValue.getter()
{
  OUTLINED_FUNCTION_119();
  MomentsEventData.EventBundle.ClusterMetadata.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_1937C9534()
{
  sub_19393CAB0();
  MomentsEventData.EventBundle.ClusterMetadata.hash(into:)();
  return sub_19393CB00();
}

uint64_t MomentsEventData.EventBundle.OutlierMetadata.outlierScore.setter(uint64_t result, char a2)
{
  *(v2 + 8) = result;
  *(v2 + 16) = a2 & 1;
  return result;
}

uint64_t MomentsEventData.EventBundle.OutlierMetadata.updatedDate.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for MomentsEventData.EventBundle.OutlierMetadata(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t MomentsEventData.EventBundle.OutlierMetadata.init()()
{
  v1 = OUTLINED_FUNCTION_8_4();
  v2 = *(type metadata accessor for MomentsEventData.EventBundle.OutlierMetadata(v1) + 24);
  v3 = sub_19393BE00();
  OUTLINED_FUNCTION_45();
  __swift_storeEnumTagSinglePayload(v4, v5, v6, v3);
  *v0 = 2;
  *(v0 + 8) = 0;
  *(v0 + 16) = 1;
  sub_19344E6DC(v0 + v2, &qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_45();

  return __swift_storeEnumTagSinglePayload(v7, v8, v9, v3);
}

void static MomentsEventData.EventBundle.OutlierMetadata.== infix(_:_:)()
{
  OUTLINED_FUNCTION_117();
  v1 = v0;
  v3 = v2;
  v4 = sub_19393BE00();
  OUTLINED_FUNCTION_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5_1();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_47(v11);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v33 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B968, &qword_193972430);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v33 - v17;
  if (*v3 == 2)
  {
    if (*v1 != 2)
    {
      goto LABEL_21;
    }
  }

  else
  {
    OUTLINED_FUNCTION_84_17();
    if (v24 || ((v19 ^ v20) & 1) != 0)
    {
      goto LABEL_21;
    }
  }

  v21 = *(v1 + 16);
  if (*(v3 + 16))
  {
    if (!*(v1 + 16))
    {
      goto LABEL_21;
    }
  }

  else
  {
    if (*(v3 + 8) != *(v1 + 8))
    {
      v21 = 1;
    }

    if (v21)
    {
      goto LABEL_21;
    }
  }

  v34 = v6;
  v22 = *(type metadata accessor for MomentsEventData.EventBundle.OutlierMetadata(0) + 24);
  v23 = *(v15 + 48);
  sub_193448804(v3 + v22, v18, &qword_1EAE3A9E8, &qword_19394F800);
  sub_193448804(v1 + v22, &v18[v23], &qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_31(v18);
  if (!v24)
  {
    sub_193448804(v18, v14, &qword_1EAE3A9E8, &qword_19394F800);
    OUTLINED_FUNCTION_31(&v18[v23]);
    if (!v24)
    {
      v27 = v34;
      (*(v34 + 32))(v10, &v18[v23], v4);
      OUTLINED_FUNCTION_0_104();
      sub_1937D05A4(v28, v29);
      sub_19393C550();
      v30 = *(v27 + 8);
      v31 = OUTLINED_FUNCTION_13_0();
      v30(v31);
      v32 = OUTLINED_FUNCTION_165_10();
      v30(v32);
      sub_19344E6DC(v18, &qword_1EAE3A9E8, &qword_19394F800);
      goto LABEL_21;
    }

    v25 = OUTLINED_FUNCTION_165_10();
    v26(v25);
LABEL_20:
    sub_19344E6DC(v18, &qword_1EAE3B968, &qword_193972430);
    goto LABEL_21;
  }

  OUTLINED_FUNCTION_31(&v18[v23]);
  if (!v24)
  {
    goto LABEL_20;
  }

  sub_19344E6DC(v18, &qword_1EAE3A9E8, &qword_19394F800);
LABEL_21:
  OUTLINED_FUNCTION_116();
}

uint64_t MomentsEventData.EventBundle.OutlierMetadata.hash(into:)()
{
  v1 = sub_19393BE00();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5_1();
  v7 = v6 - v5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_47(v8);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v19 - v10;
  if (*v0 != 2)
  {
    sub_19393CAD0();
  }

  sub_19393CAD0();
  if (*(v0 + 16) == 1)
  {
    sub_19393CAD0();
  }

  else
  {
    v12 = *(v0 + 8);
    sub_19393CAD0();
    if ((v12 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    MEMORY[0x193B18060](v13);
  }

  v14 = type metadata accessor for MomentsEventData.EventBundle.OutlierMetadata(0);
  sub_193448804(v0 + *(v14 + 24), v11, &qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_6_3(v11, 1, v1);
  if (v15)
  {
    return sub_19393CAD0();
  }

  (*(v3 + 32))(v7, v11, v1);
  sub_19393CAD0();
  OUTLINED_FUNCTION_0_104();
  sub_1937D05A4(v16, v17);
  sub_19393C540();
  return (*(v3 + 8))(v7, v1);
}

uint64_t MomentsEventData.EventBundle.MetadataForRank.dailyAggregateCallDuration.setter(uint64_t result)
{
  *v1 = result;
  *(v1 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t MomentsEventData.EventBundle.MetadataForRank.callDuration.setter(uint64_t result)
{
  *(v1 + 8) = result;
  *(v1 + 12) = BYTE4(result) & 1;
  return result;
}

uint64_t MomentsEventData.EventBundle.MetadataForRank.burstyInteractionCount.setter(uint64_t result)
{
  *(v1 + 16) = result;
  *(v1 + 20) = BYTE4(result) & 1;
  return result;
}

uint64_t MomentsEventData.EventBundle.MetadataForRank.burstyOutgoingInteractionCount.setter(uint64_t result)
{
  *(v1 + 24) = result;
  *(v1 + 28) = BYTE4(result) & 1;
  return result;
}

uint64_t MomentsEventData.EventBundle.MetadataForRank.peopleCountWeightedSum.setter(uint64_t result)
{
  *(v1 + 36) = result;
  *(v1 + 40) = BYTE4(result) & 1;
  return result;
}

uint64_t MomentsEventData.EventBundle.MetadataForRank.peopleCountWeightedAverage.setter(uint64_t result)
{
  *(v1 + 44) = result;
  *(v1 + 48) = BYTE4(result) & 1;
  return result;
}

uint64_t MomentsEventData.EventBundle.MetadataForRank.peopleCountMax.setter(uint64_t result)
{
  *(v1 + 52) = result;
  *(v1 + 56) = BYTE4(result) & 1;
  return result;
}

uint64_t MomentsEventData.EventBundle.MetadataForRank.peopleDensityWeightedSum.setter(uint64_t result)
{
  *(v1 + 60) = result;
  *(v1 + 64) = BYTE4(result) & 1;
  return result;
}

uint64_t MomentsEventData.EventBundle.MetadataForRank.peopleDensityWeightedAverage.setter(uint64_t result)
{
  *(v1 + 68) = result;
  *(v1 + 72) = BYTE4(result) & 1;
  return result;
}

uint64_t MomentsEventData.EventBundle.MetadataForRank.peopleDensityMax.setter(uint64_t result)
{
  *(v1 + 76) = result;
  *(v1 + 80) = BYTE4(result) & 1;
  return result;
}

uint64_t MomentsEventData.EventBundle.MetadataForRank.peopleDensityWeightedConfidenceSum.setter(uint64_t result)
{
  *(v1 + 84) = result;
  *(v1 + 88) = BYTE4(result) & 1;
  return result;
}

uint64_t MomentsEventData.EventBundle.MetadataForRank.peopleDensityWeightedConfidenceAverage.setter(uint64_t result)
{
  *(v1 + 92) = result;
  *(v1 + 96) = BYTE4(result) & 1;
  return result;
}

uint64_t MomentsEventData.EventBundle.MetadataForRank.mediaTotalPlayTime.setter(uint64_t result)
{
  *(v1 + 100) = result;
  *(v1 + 104) = BYTE4(result) & 1;
  return result;
}

uint64_t MomentsEventData.EventBundle.MetadataForRank.mediaLength.setter(uint64_t result)
{
  *(v1 + 108) = result;
  *(v1 + 112) = BYTE4(result) & 1;
  return result;
}

uint64_t MomentsEventData.EventBundle.MetadataForRank.timeAtHomeDuration.setter(uint64_t result)
{
  *(v1 + 116) = result;
  *(v1 + 120) = BYTE4(result) & 1;
  return result;
}

uint64_t MomentsEventData.EventBundle.MetadataForRank.photosAtHomeCurationScore.setter(uint64_t result)
{
  *(v1 + 124) = result;
  *(v1 + 128) = BYTE4(result) & 1;
  return result;
}

uint64_t MomentsEventData.EventBundle.MetadataForRank.workoutDuration.setter(uint64_t result)
{
  *(v1 + 132) = result;
  *(v1 + 136) = BYTE4(result) & 1;
  return result;
}

uint64_t MomentsEventData.EventBundle.MetadataForRank.motionActivityWalkSpan.setter(uint64_t result)
{
  *(v1 + 140) = result;
  *(v1 + 144) = BYTE4(result) & 1;
  return result;
}

uint64_t MomentsEventData.EventBundle.MetadataForRank.visitDuration.setter(uint64_t result)
{
  *(v1 + 148) = result;
  *(v1 + 152) = BYTE4(result) & 1;
  return result;
}

uint64_t MomentsEventData.EventBundle.MetadataForRank.poiCategoryInterestingness.setter(uint64_t result)
{
  *(v1 + 156) = result;
  *(v1 + 160) = BYTE4(result) & 1;
  return result;
}

uint64_t MomentsEventData.EventBundle.MetadataForRank.familiarityIndex.setter(uint64_t result)
{
  *(v1 + 164) = result;
  *(v1 + 168) = BYTE4(result) & 1;
  return result;
}

uint64_t MomentsEventData.EventBundle.MetadataForRank.stateOfMindDomains.setter(uint64_t a1)
{

  *(v1 + 176) = a1;
  return result;
}

uint64_t MomentsEventData.EventBundle.MetadataForRank.stateOfMindLabels.setter(uint64_t a1)
{

  *(v1 + 184) = a1;
  return result;
}

uint64_t MomentsEventData.EventBundle.MetadataForRank.stateOfMindReflectiveIntervals.setter(uint64_t a1)
{

  *(v1 + 192) = a1;
  return result;
}

uint64_t MomentsEventData.EventBundle.MetadataForRank.stateOfMindValenceClassifications.setter(uint64_t a1)
{

  *(v1 + 200) = a1;
  return result;
}

uint64_t MomentsEventData.EventBundle.MetadataForRank.stateOfMindValenceValues.setter(uint64_t a1)
{

  *(v1 + 208) = a1;
  return result;
}

void MomentsEventData.EventBundle.MetadataForRank.init()(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 4) = 1;
  *(a1 + 8) = 0;
  *(a1 + 12) = 1;
  *(a1 + 16) = 0;
  *(a1 + 20) = 1;
  *(a1 + 24) = 0;
  *(a1 + 28) = 1;
  *(a1 + 29) = 33686018;
  *(a1 + 33) = 514;
  *(a1 + 36) = 0;
  *(a1 + 40) = 1;
  *(a1 + 44) = 0;
  *(a1 + 48) = 1;
  *(a1 + 52) = 0;
  *(a1 + 56) = 1;
  *(a1 + 60) = 0;
  *(a1 + 64) = 1;
  *(a1 + 68) = 0;
  *(a1 + 72) = 1;
  *(a1 + 76) = 0;
  *(a1 + 80) = 1;
  *(a1 + 84) = 0;
  *(a1 + 88) = 1;
  *(a1 + 92) = 0;
  *(a1 + 96) = 1;
  *(a1 + 100) = 0;
  *(a1 + 104) = 1;
  *(a1 + 108) = 0;
  *(a1 + 112) = 513;
  *(a1 + 116) = 0;
  *(a1 + 120) = 1;
  *(a1 + 124) = 0;
  *(a1 + 128) = 1;
  *(a1 + 132) = 0;
  *(a1 + 136) = 1;
  *(a1 + 140) = 0;
  *(a1 + 144) = 1;
  *(a1 + 148) = 0;
  *(a1 + 152) = 1;
  *(a1 + 156) = 0;
  *(a1 + 160) = 1;
  *(a1 + 164) = 0;
  *(a1 + 168) = 1;
  v1 = MEMORY[0x1E69E7CC0];
  *(a1 + 176) = MEMORY[0x1E69E7CC0];
  *(a1 + 184) = v1;
  *(a1 + 192) = v1;
  *(a1 + 200) = v1;
  *(a1 + 208) = v1;
  *(a1 + 216) = 514;
}

uint64_t static MomentsEventData.EventBundle.MetadataForRank.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 4);
  v5 = *(a1 + 8);
  v6 = *(a1 + 12);
  v7 = *(a1 + 16);
  v8 = *(a1 + 20);
  v9 = *(a1 + 24);
  v10 = *(a1 + 28);
  v11 = *(a1 + 29);
  v12 = *(a1 + 30);
  v118 = *(a1 + 31);
  v117 = *(a1 + 32);
  v115 = *(a1 + 33);
  v13 = *(a1 + 36);
  v112 = *(a1 + 40);
  v114 = *(a1 + 34);
  v14 = *(a1 + 44);
  v111 = *(a1 + 48);
  v15 = *(a1 + 52);
  v110 = *(a1 + 56);
  v16 = *(a1 + 60);
  v109 = *(a1 + 64);
  v17 = *(a1 + 68);
  v107 = *(a1 + 72);
  v18 = *(a1 + 76);
  v106 = *(a1 + 80);
  v19 = *(a1 + 84);
  v105 = *(a1 + 88);
  v20 = *(a1 + 92);
  v104 = *(a1 + 96);
  v21 = *(a1 + 100);
  v103 = *(a1 + 104);
  v22 = *(a1 + 108);
  v102 = *(a1 + 112);
  v101 = *(a1 + 113);
  v23 = *(a1 + 116);
  v99 = *(a1 + 120);
  v96 = *(a1 + 124);
  v98 = *(a1 + 128);
  v83 = *(a1 + 132);
  v97 = *(a1 + 136);
  v85 = *(a1 + 140);
  v84 = *(a1 + 144);
  v87 = *(a1 + 148);
  v86 = *(a1 + 152);
  v88 = *(a1 + 160);
  v89 = *(a1 + 156);
  v90 = *(a1 + 164);
  v24 = *(a2 + 8);
  v25 = *(a2 + 36);
  v26 = *(a2 + 44);
  v27 = *(a2 + 52);
  v28 = *(a2 + 60);
  v29 = *(a2 + 68);
  v30 = *(a2 + 76);
  v31 = *(a2 + 84);
  v32 = *(a2 + 92);
  v33 = *(a2 + 100);
  v34 = *(a2 + 108);
  v35 = *(a2 + 116);
  v36 = *(a2 + 124);
  v37 = *(a2 + 132);
  v81 = *(a1 + 168);
  v82 = *(a1 + 176);
  v92 = *(a1 + 184);
  v93 = *(a1 + 192);
  v94 = *(a1 + 200);
  v95 = *(a1 + 208);
  v108 = *(a1 + 216);
  v91 = *(a1 + 217);
  v38 = *(a2 + 4);
  v39 = *(a2 + 12);
  v40 = *(a2 + 16);
  v41 = *(a2 + 20);
  v42 = *(a2 + 24);
  v43 = *(a2 + 28);
  v44 = *(a2 + 29);
  v45 = *(a2 + 30);
  v46 = *(a2 + 31);
  v47 = *(a2 + 32);
  v48 = *(a2 + 33);
  v49 = *(a2 + 34);
  v100 = *(a2 + 113);
  v50 = *(a2 + 184);
  v51 = *(a2 + 192);
  v52 = *(a2 + 208);
  v53 = *(a2 + 216);
  if (v4)
  {
    if (!v38)
    {
      return 0;
    }
  }

  else
  {
    if (*a1 == *a2)
    {
      v54 = v38;
    }

    else
    {
      v54 = 1;
    }

    if (v54)
    {
      return 0;
    }
  }

  if (v6)
  {
    if (!v39)
    {
      return 0;
    }
  }

  else
  {
    if (v5 == v24)
    {
      v55 = v39;
    }

    else
    {
      v55 = 1;
    }

    if (v55)
    {
      return 0;
    }
  }

  if (v8)
  {
    if (!v41)
    {
      return 0;
    }
  }

  else
  {
    if (v7 == v40)
    {
      v56 = v41;
    }

    else
    {
      v56 = 1;
    }

    if (v56)
    {
      return 0;
    }
  }

  if (v10)
  {
    if (!v43)
    {
      return 0;
    }
  }

  else
  {
    if (v9 == v42)
    {
      v57 = v43;
    }

    else
    {
      v57 = 1;
    }

    if (v57)
    {
      return 0;
    }
  }

  if (v11 == 2)
  {
    if (v44 != 2)
    {
      return 0;
    }
  }

  else
  {
    v58 = 0;
    if (v44 == 2 || ((v44 ^ v11) & 1) != 0)
    {
      return v58;
    }
  }

  if (v12 == 2)
  {
    if (v45 != 2)
    {
      return 0;
    }
  }

  else
  {
    v58 = 0;
    if (v45 == 2 || ((v45 ^ v12) & 1) != 0)
    {
      return v58;
    }
  }

  if (v118 == 2)
  {
    if (v46 != 2)
    {
      return 0;
    }
  }

  else
  {
    v58 = 0;
    if (v46 == 2 || ((v46 ^ v118) & 1) != 0)
    {
      return v58;
    }
  }

  if (v117 == 2)
  {
    if (v47 != 2)
    {
      return 0;
    }
  }

  else
  {
    v58 = 0;
    if (v47 == 2 || ((v47 ^ v117) & 1) != 0)
    {
      return v58;
    }
  }

  if (v115 == 2)
  {
    if (v48 != 2)
    {
      return 0;
    }
  }

  else
  {
    v58 = 0;
    if (v48 == 2 || ((v48 ^ v115) & 1) != 0)
    {
      return v58;
    }
  }

  if (v114 == 2)
  {
    if (v49 != 2)
    {
      return 0;
    }
  }

  else
  {
    v58 = 0;
    if (v49 == 2 || ((v49 ^ v114) & 1) != 0)
    {
      return v58;
    }
  }

  if (v112)
  {
    if (!*(a2 + 40))
    {
      return 0;
    }
  }

  else
  {
    if (v13 == v25)
    {
      v59 = *(a2 + 40);
    }

    else
    {
      v59 = 1;
    }

    if (v59)
    {
      return 0;
    }
  }

  if (v111)
  {
    v58 = *(a2 + 48);
    if (!*(a2 + 48))
    {
      return v58;
    }
  }

  else
  {
    v60 = *(a2 + 48);
    if (v14 != v26)
    {
      v60 = 1;
    }

    if (v60)
    {
      return 0;
    }
  }

  if (v110)
  {
    v58 = *(a2 + 56);
    if (!*(a2 + 56))
    {
      return v58;
    }
  }

  else
  {
    v61 = *(a2 + 56);
    if (v15 != v27)
    {
      v61 = 1;
    }

    if (v61)
    {
      return 0;
    }
  }

  v113 = *(a2 + 217);
  v116 = *(a2 + 200);
  if (v109)
  {
    v58 = *(a2 + 64);
    if (!*(a2 + 64))
    {
      return v58;
    }
  }

  else
  {
    v62 = *(a2 + 64);
    if (v16 != v28)
    {
      v62 = 1;
    }

    if (v62)
    {
      return 0;
    }
  }

  if (v107)
  {
    v58 = *(a2 + 72);
    if (!*(a2 + 72))
    {
      return v58;
    }
  }

  else
  {
    v63 = *(a2 + 72);
    if (v17 != v29)
    {
      v63 = 1;
    }

    if (v63)
    {
      return 0;
    }
  }

  if (v106)
  {
    v58 = *(a2 + 80);
    if (!*(a2 + 80))
    {
      return v58;
    }
  }

  else
  {
    v64 = *(a2 + 80);
    if (v18 != v30)
    {
      v64 = 1;
    }

    if (v64)
    {
      return 0;
    }
  }

  if (v105)
  {
    v58 = *(a2 + 88);
    if (!*(a2 + 88))
    {
      return v58;
    }
  }

  else
  {
    v65 = *(a2 + 88);
    if (v19 != v31)
    {
      v65 = 1;
    }

    if (v65)
    {
      return 0;
    }
  }

  if (v104)
  {
    v58 = *(a2 + 96);
    if (!*(a2 + 96))
    {
      return v58;
    }
  }

  else
  {
    v66 = *(a2 + 96);
    if (v20 != v32)
    {
      v66 = 1;
    }

    if (v66)
    {
      return 0;
    }
  }

  if (v103)
  {
    v58 = *(a2 + 104);
    if (!*(a2 + 104))
    {
      return v58;
    }
  }

  else
  {
    v67 = *(a2 + 104);
    if (v21 != v33)
    {
      v67 = 1;
    }

    if (v67)
    {
      return 0;
    }
  }

  if (v102)
  {
    v58 = *(a2 + 112);
    if (!*(a2 + 112))
    {
      return v58;
    }
  }

  else
  {
    v68 = *(a2 + 112);
    if (v22 != v34)
    {
      v68 = 1;
    }

    if (v68)
    {
      return 0;
    }
  }

  if (v101 == 2)
  {
    if (v100 != 2)
    {
      return 0;
    }
  }

  else
  {
    v58 = 0;
    if (v100 == 2 || ((v100 ^ v101) & 1) != 0)
    {
      return v58;
    }
  }

  if (v99)
  {
    v58 = *(a2 + 120);
    if (!*(a2 + 120))
    {
      return v58;
    }
  }

  else
  {
    v69 = *(a2 + 120);
    if (v23 != v35)
    {
      v69 = 1;
    }

    if (v69)
    {
      return 0;
    }
  }

  if (v98)
  {
    v58 = *(a2 + 128);
    if (!*(a2 + 128))
    {
      return v58;
    }
  }

  else
  {
    v70 = *(a2 + 128);
    if (v96 != v36)
    {
      v70 = 1;
    }

    if (v70)
    {
      return 0;
    }
  }

  if (v97)
  {
    v58 = *(a2 + 136);
    if (!*(a2 + 136))
    {
      return v58;
    }
  }

  else
  {
    v71 = *(a2 + 136);
    if (v83 != v37)
    {
      v71 = 1;
    }

    if (v71)
    {
      return 0;
    }
  }

  if (v84)
  {
    v58 = *(a2 + 144);
    if (!*(a2 + 144))
    {
      return v58;
    }
  }

  else
  {
    v72 = *(a2 + 144);
    if (v85 != *(a2 + 140))
    {
      v72 = 1;
    }

    if (v72)
    {
      return 0;
    }
  }

  if (v86)
  {
    v58 = *(a2 + 152);
    if (!*(a2 + 152))
    {
      return v58;
    }
  }

  else
  {
    v73 = *(a2 + 152);
    if (v87 != *(a2 + 148))
    {
      v73 = 1;
    }

    if (v73)
    {
      return 0;
    }
  }

  if (v88)
  {
    v58 = *(a2 + 160);
    if (!*(a2 + 160))
    {
      return v58;
    }
  }

  else
  {
    v74 = *(a2 + 160);
    if (v89 != *(a2 + 156))
    {
      v74 = 1;
    }

    if (v74)
    {
      return 0;
    }
  }

  if (v81)
  {
    v58 = *(a2 + 168);
    if (!*(a2 + 168))
    {
      return v58;
    }
  }

  else
  {
    v75 = *(a2 + 168);
    if (v90 != *(a2 + 164))
    {
      v75 = 1;
    }

    if (v75)
    {
      return 0;
    }
  }

  if ((sub_1937C2084(v82, *(a2 + 176), MomentsEventData.StateOfMindDomain.rawValue.getter, v47) & 1) == 0 || (sub_1937C2084(v92, v50, MomentsEventData.StateOfMindLabel.rawValue.getter, v76) & 1) == 0 || (sub_1937C2084(v93, v51, MomentsEventData.StateOfMindReflectiveInterval.rawValue.getter, v77) & 1) == 0 || (sub_1937C2084(v94, v116, MomentsEventData.StateOfMindValenceClassification.rawValue.getter, v78) & 1) == 0 || (sub_1937C214C(v95, v52) & 1) == 0)
  {
    return 0;
  }

  if (v108 == 2)
  {
    v79 = v91;
    if (v53 != 2)
    {
      return 0;
    }
  }

  else
  {
    v58 = 0;
    if (v53 == 2)
    {
      return v58;
    }

    v79 = v91;
    if ((v53 ^ v108))
    {
      return v58;
    }
  }

  if (v79 == 2)
  {
    if (v113 != 2)
    {
      return 0;
    }
  }

  else if (v113 == 2 || ((v113 ^ v91) & 1) != 0)
  {
    return 0;
  }

  return 1;
}

uint64_t MomentsEventData.EventBundle.MetadataForRank.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v32 = *(v2 + 12);
  v16 = *(v2 + 8);
  v33 = *(v2 + 20);
  v34 = *(v2 + 28);
  v4 = *(v2 + 29);
  v35 = *(v2 + 30);
  v5 = *(v2 + 31);
  v36 = *(v2 + 32);
  v6 = *(v2 + 33);
  v17 = *(v2 + 36);
  v37 = *(v2 + 34);
  v38 = *(v2 + 40);
  v39 = *(v2 + 48);
  v18 = *(v2 + 44);
  v19 = *(v2 + 52);
  v20 = *(v2 + 60);
  v40 = *(v2 + 56);
  v41 = *(v2 + 64);
  v42 = *(v2 + 72);
  v21 = *(v2 + 68);
  v22 = *(v2 + 76);
  v43 = *(v2 + 80);
  v23 = *(v2 + 84);
  v44 = *(v2 + 88);
  v24 = *(v2 + 92);
  v45 = *(v2 + 96);
  v25 = *(v2 + 100);
  v46 = *(v2 + 104);
  v47 = *(v2 + 112);
  v49 = *(v2 + 113);
  v26 = *(v2 + 116);
  v50 = *(v2 + 120);
  v27 = *(v2 + 124);
  v51 = *(v2 + 128);
  v28 = *(v2 + 132);
  v52 = *(v2 + 136);
  v29 = *(v2 + 140);
  v53 = *(v2 + 144);
  v30 = *(v2 + 148);
  v54 = *(v2 + 152);
  v31 = *(v2 + 156);
  v55 = *(v2 + 160);
  v7 = *(v2 + 168);
  v48 = *(v2 + 208);
  v8 = *(v2 + 216);
  v9 = *(v2 + 217);
  if (*(v2 + 4) == 1)
  {
    sub_19393CAD0();
  }

  else
  {
    v15 = *(v2 + 168);
    v10 = *(v2 + 29);
    v11 = *(v2 + 31);
    v12 = *(v2 + 33);
    v13 = *(v2 + 216);
    sub_19393CAD0();
    v8 = v13;
    v6 = v12;
    v5 = v11;
    v4 = v10;
    v7 = v15;
    sub_19393CAE0();
  }

  sub_19393CAD0();
  if (!v32)
  {
    OUTLINED_FUNCTION_100_2(v16);
    sub_19393CAE0();
  }

  sub_19393CAD0();
  if (!v33)
  {
    sub_19393CAE0();
  }

  sub_19393CAD0();
  if (!v34)
  {
    sub_19393CAE0();
  }

  if (v4 != 2)
  {
    sub_19393CAD0();
  }

  sub_19393CAD0();
  if (v35 != 2)
  {
    sub_19393CAD0();
  }

  sub_19393CAD0();
  if (v5 != 2)
  {
    sub_19393CAD0();
  }

  sub_19393CAD0();
  if (v36 != 2)
  {
    sub_19393CAD0();
  }

  sub_19393CAD0();
  if (v6 != 2)
  {
    sub_19393CAD0();
  }

  sub_19393CAD0();
  if (v37 != 2)
  {
    sub_19393CAD0();
  }

  sub_19393CAD0();
  sub_19393CAD0();
  if (!v38)
  {
    OUTLINED_FUNCTION_100_2(v17);
    sub_19393CAE0();
  }

  sub_19393CAD0();
  if (!v39)
  {
    OUTLINED_FUNCTION_100_2(v18);
    sub_19393CAE0();
  }

  sub_19393CAD0();
  if (!v40)
  {
    OUTLINED_FUNCTION_100_2(v19);
    sub_19393CAE0();
  }

  sub_19393CAD0();
  if (!v41)
  {
    OUTLINED_FUNCTION_100_2(v20);
    sub_19393CAE0();
  }

  sub_19393CAD0();
  if (!v42)
  {
    OUTLINED_FUNCTION_100_2(v21);
    sub_19393CAE0();
  }

  sub_19393CAD0();
  if (!v43)
  {
    OUTLINED_FUNCTION_100_2(v22);
    sub_19393CAE0();
  }

  sub_19393CAD0();
  if (!v44)
  {
    OUTLINED_FUNCTION_100_2(v23);
    sub_19393CAE0();
  }

  sub_19393CAD0();
  if (!v45)
  {
    OUTLINED_FUNCTION_100_2(v24);
    sub_19393CAE0();
  }

  sub_19393CAD0();
  if (!v46)
  {
    OUTLINED_FUNCTION_100_2(v25);
    sub_19393CAE0();
  }

  sub_19393CAD0();
  if (!v47)
  {
    sub_19393CAE0();
  }

  if (v49 != 2)
  {
    sub_19393CAD0();
  }

  sub_19393CAD0();
  sub_19393CAD0();
  if (!v50)
  {
    OUTLINED_FUNCTION_100_2(v26);
    sub_19393CAE0();
  }

  sub_19393CAD0();
  if (!v51)
  {
    OUTLINED_FUNCTION_100_2(v27);
    sub_19393CAE0();
  }

  sub_19393CAD0();
  if (!v52)
  {
    OUTLINED_FUNCTION_100_2(v28);
    sub_19393CAE0();
  }

  sub_19393CAD0();
  if (!v53)
  {
    OUTLINED_FUNCTION_100_2(v29);
    sub_19393CAE0();
  }

  sub_19393CAD0();
  if (!v54)
  {
    OUTLINED_FUNCTION_100_2(v30);
    sub_19393CAE0();
  }

  if (v55)
  {
    sub_19393CAD0();
    if (!v7)
    {
LABEL_56:
      sub_19393CAD0();
      sub_19393CAE0();
      goto LABEL_59;
    }
  }

  else
  {
    sub_19393CAD0();
    OUTLINED_FUNCTION_100_2(v31);
    sub_19393CAE0();
    if (!v7)
    {
      goto LABEL_56;
    }
  }

  sub_19393CAD0();
LABEL_59:
  OUTLINED_FUNCTION_141();
  sub_1937D0E7C();
  OUTLINED_FUNCTION_141();
  sub_1937D0E7C();
  OUTLINED_FUNCTION_141();
  sub_1937D0E7C();
  OUTLINED_FUNCTION_141();
  sub_1937D0E7C();
  sub_1937D0E14(a1, v48);
  if (v8 != 2)
  {
    sub_19393CAD0();
  }

  sub_19393CAD0();
  if (v9 != 2)
  {
    sub_19393CAD0();
  }

  return sub_19393CAD0();
}

uint64_t MomentsEventData.EventBundle.MetadataForRank.hashValue.getter()
{
  OUTLINED_FUNCTION_119();
  MomentsEventData.EventBundle.MetadataForRank.hash(into:)(v1);
  return sub_19393CB00();
}

uint64_t sub_1937CB4B0()
{
  sub_19393CAB0();
  MomentsEventData.EventBundle.MetadataForRank.hash(into:)(v1);
  return sub_19393CB00();
}

void static MomentsEventData.EventBundle.== infix(_:_:)()
{
  OUTLINED_FUNCTION_117();
  v2 = v1;
  v4 = v3;
  v615 = type metadata accessor for MomentsEventData.EventBundle.OutlierMetadata(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5_1();
  v8 = v7 - v6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE42B00, &qword_193997C90);
  OUTLINED_FUNCTION_47(v9);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v10);
  v614 = &v594[-v11];
  v613 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE42F68, &qword_193997CA0);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v594[-v13];
  sub_19393BE00();
  OUTLINED_FUNCTION_0();
  v620 = v16;
  v621 = v15;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_5_1();
  v619 = v18 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  v20 = OUTLINED_FUNCTION_47(v19);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_15_8();
  v612 = v21;
  OUTLINED_FUNCTION_47_3();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_49();
  v611 = v23;
  OUTLINED_FUNCTION_47_3();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_49();
  v610 = v25;
  OUTLINED_FUNCTION_47_3();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_49();
  v609 = v27;
  OUTLINED_FUNCTION_47_3();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_49();
  v608 = v29;
  OUTLINED_FUNCTION_47_3();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_49();
  v607 = v31;
  OUTLINED_FUNCTION_47_3();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_49();
  v616 = v33;
  OUTLINED_FUNCTION_47_3();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_49();
  v617 = v35;
  OUTLINED_FUNCTION_47_3();
  v37 = MEMORY[0x1EEE9AC00](v36);
  v39 = &v594[-v38];
  MEMORY[0x1EEE9AC00](v37);
  v41 = &v594[-v40];
  v622 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B968, &qword_193972430);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_156_9();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_182_8();
  v45 = MEMORY[0x1EEE9AC00](v44);
  MEMORY[0x1EEE9AC00](v45);
  v47 = MEMORY[0x1EEE9AC00](&v594[-v46]);
  v48 = MEMORY[0x1EEE9AC00](v47);
  v49 = MEMORY[0x1EEE9AC00](v48);
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_183_5();
  v51 = MEMORY[0x1EEE9AC00](v50);
  v53 = &v594[-v52];
  v54 = MEMORY[0x1EEE9AC00](v51);
  v59 = &v594[-v58];
  v60 = v4[1];
  v61 = v2[1];
  if (v60)
  {
    if (!v61)
    {
      goto LABEL_51;
    }

    OUTLINED_FUNCTION_176_5(v54, v60, v55, v61, v56, v57);
    v64 = *v4 == *v2 && v62 == v63;
    if (!v64 && (sub_19393CA30() & 1) == 0)
    {
      goto LABEL_51;
    }
  }

  else
  {
    OUTLINED_FUNCTION_176_5(v54, 0, v55, v61, v56, v57);
    if (v65)
    {
      goto LABEL_51;
    }
  }

  v596 = v14;
  v597 = v8;
  v66 = type metadata accessor for MomentsEventData.EventBundle(0);
  v618 = v2;
  v598 = v4;
  v599 = v66;
  v67 = *(v66 + 20);
  v68 = *(v622 + 48);
  sub_193448804(v4 + v67, v59, &qword_1EAE3A9E8, &qword_19394F800);
  sub_193448804(v618 + v67, &v59[v68], &qword_1EAE3A9E8, &qword_19394F800);
  v69 = v621;
  OUTLINED_FUNCTION_6_3(v59, 1, v621);
  if (v64)
  {
    OUTLINED_FUNCTION_31(&v59[v68]);
    if (v64)
    {
      sub_19344E6DC(v59, &qword_1EAE3A9E8, &qword_19394F800);
      goto LABEL_20;
    }

LABEL_18:
    v72 = &qword_1EAE3B968;
    v73 = &qword_193972430;
    v74 = v59;
    goto LABEL_50;
  }

  sub_193448804(v59, v41, &qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_31(&v59[v68]);
  if (v70)
  {
    OUTLINED_FUNCTION_119_12();
    v71(v41, v69);
    goto LABEL_18;
  }

  v76 = v619;
  v75 = v620;
  OUTLINED_FUNCTION_28_30();
  v77(v76, &v59[v68], v69);
  OUTLINED_FUNCTION_0_104();
  sub_1937D05A4(v78, v79);
  v595 = sub_19393C550();
  v80 = *(v75 + 8);
  v80(v76, v69);
  v80(v41, v69);
  sub_19344E6DC(v59, &qword_1EAE3A9E8, &qword_19394F800);
  if ((v595 & 1) == 0)
  {
    goto LABEL_51;
  }

LABEL_20:
  v81 = v598;
  v82 = v599[6];
  v83 = *(v622 + 48);
  sub_193448804(v598 + v82, v53, &qword_1EAE3A9E8, &qword_19394F800);
  sub_193448804(v618 + v82, &v53[v83], &qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_31(v53);
  if (v64)
  {
    OUTLINED_FUNCTION_31(&v53[v83]);
    if (v64)
    {
      sub_19344E6DC(v53, &qword_1EAE3A9E8, &qword_19394F800);
      v84 = v69;
      goto LABEL_30;
    }

LABEL_28:
    v72 = &qword_1EAE3B968;
    v73 = &qword_193972430;
    v74 = v53;
    goto LABEL_50;
  }

  sub_193448804(v53, v39, &qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_31(&v53[v83]);
  if (v85)
  {
    OUTLINED_FUNCTION_119_12();
    v86 = OUTLINED_FUNCTION_165_10();
    v87(v86);
    goto LABEL_28;
  }

  v89 = v619;
  v88 = v620;
  OUTLINED_FUNCTION_28_30();
  v90(v89, &v53[v83], v69);
  OUTLINED_FUNCTION_0_104();
  sub_1937D05A4(v91, v92);
  v84 = v69;
  v93 = sub_19393C550();
  v94 = *(v88 + 8);
  v94(v89, v84);
  v94(v39, v84);
  sub_19344E6DC(v53, &qword_1EAE3A9E8, &qword_19394F800);
  if ((v93 & 1) == 0)
  {
    goto LABEL_51;
  }

LABEL_30:
  v95 = v599[7];
  v96 = *(v622 + 48);
  v97 = &qword_19394F800;
  sub_193448804(v81 + v95, v0, &qword_1EAE3A9E8, &qword_19394F800);
  v98 = v618;
  sub_193448804(v618 + v95, v0 + v96, &qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_6_3(v0, 1, v84);
  v99 = v84;
  if (v64)
  {
    OUTLINED_FUNCTION_6_3(v0 + v96, 1, v84);
    if (v64)
    {
      sub_19344E6DC(v0, &qword_1EAE3A9E8, &qword_19394F800);
      goto LABEL_40;
    }

LABEL_38:
    v72 = &qword_1EAE3B968;
    v73 = &qword_193972430;
    v74 = v0;
    goto LABEL_50;
  }

  sub_193448804(v0, v617, &qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_6_3(v0 + v96, 1, v84);
  if (v100)
  {
    OUTLINED_FUNCTION_119_12();
    v101 = OUTLINED_FUNCTION_121_0();
    v102(v101);
    goto LABEL_38;
  }

  v104 = v619;
  v103 = v620;
  (*(v620 + 32))(v619, v0 + v96, v84);
  OUTLINED_FUNCTION_0_104();
  sub_1937D05A4(v105, v106);
  v107 = sub_19393C550();
  v108 = *(v103 + 8);
  v97 = (v103 + 8);
  v108(v104, v84);
  v109 = OUTLINED_FUNCTION_121_0();
  (v108)(v109);
  sub_19344E6DC(v0, &qword_1EAE3A9E8, &qword_19394F800);
  if ((v107 & 1) == 0)
  {
    goto LABEL_51;
  }

LABEL_40:
  v110 = v599[8];
  OUTLINED_FUNCTION_144_10();
  v111 = v606;
  OUTLINED_FUNCTION_27_7(v81 + v110, v606);
  OUTLINED_FUNCTION_27_7(v98 + v110, v97 + v111);
  OUTLINED_FUNCTION_6_3(v111, 1, v99);
  if (v64)
  {
    OUTLINED_FUNCTION_13_25(v97 + v111);
    if (!v64)
    {
      goto LABEL_49;
    }

    sub_19344E6DC(v111, &qword_1EAE3A9E8, &qword_19394F800);
  }

  else
  {
    sub_193448804(v111, v616, &qword_1EAE3A9E8, &qword_19394F800);
    OUTLINED_FUNCTION_13_25(v97 + v111);
    if (v112)
    {
      OUTLINED_FUNCTION_119_12();
      v113 = OUTLINED_FUNCTION_166();
      goto LABEL_48;
    }

    (*(v620 + 32))(v619, v97 + v111, v99);
    OUTLINED_FUNCTION_0_104();
    v117 = sub_1937D05A4(v115, v116);
    OUTLINED_FUNCTION_95_17(v117, v118, v119, v117);
    v120 = OUTLINED_FUNCTION_59_21();
    (v97)(v120);
    v121 = OUTLINED_FUNCTION_166();
    (v97)(v121);
    sub_19344E6DC(v111, &qword_1EAE3A9E8, &qword_19394F800);
    if ((&qword_1EAE3A9E8 & 1) == 0)
    {
      goto LABEL_51;
    }
  }

  v122 = v599[9];
  if (*(v81 + v122 + 9))
  {
    if ((*(v98 + v122 + 9) & 1) == 0)
    {
      goto LABEL_51;
    }
  }

  else
  {
    if (*(v98 + v122 + 9))
    {
      goto LABEL_51;
    }

    v123 = OUTLINED_FUNCTION_9_72();
    if (!OUTLINED_FUNCTION_77_18(v123, v124, v125))
    {
      goto LABEL_51;
    }
  }

  v126 = v599[10];
  v127 = *(v81 + v126);
  v128 = *(v98 + v126);
  if (v127 == 2)
  {
    if (v128 != 2)
    {
      goto LABEL_51;
    }
  }

  else
  {
    OUTLINED_FUNCTION_84_17();
    if (v64 || ((v129 ^ v130) & 1) != 0)
    {
      goto LABEL_51;
    }
  }

  OUTLINED_FUNCTION_16_42();
  if (v64)
  {
    if (v131 != 2)
    {
      goto LABEL_51;
    }
  }

  else
  {
    OUTLINED_FUNCTION_84_17();
    if (v132 || ((v133 ^ v134) & 1) != 0)
    {
      goto LABEL_51;
    }
  }

  OUTLINED_FUNCTION_16_42();
  if (v64)
  {
    if (v135 != 2)
    {
      goto LABEL_51;
    }
  }

  else
  {
    OUTLINED_FUNCTION_84_17();
    if (v136 || ((v137 ^ v138) & 1) != 0)
    {
      goto LABEL_51;
    }
  }

  OUTLINED_FUNCTION_16_42();
  if (v64)
  {
    if (v139 != 2)
    {
      goto LABEL_51;
    }
  }

  else
  {
    OUTLINED_FUNCTION_84_17();
    if (v140 || ((v141 ^ v142) & 1) != 0)
    {
      goto LABEL_51;
    }
  }

  v143 = v598;
  v144 = v599[14];
  v145 = v618;
  v146 = *(v618 + v144 + 8);
  if (*(v598 + v144 + 8))
  {
    if (!v146)
    {
      goto LABEL_51;
    }

    OUTLINED_FUNCTION_5(v598 + v144);
    v149 = v64 && v147 == v148;
    if (!v149 && (sub_19393CA30() & 1) == 0)
    {
      goto LABEL_51;
    }
  }

  else if (v146)
  {
    goto LABEL_51;
  }

  v150 = v599[15];
  v151 = *(v145 + v150 + 8);
  if (*(v143 + v150 + 8))
  {
    if (!v151)
    {
      goto LABEL_51;
    }

    OUTLINED_FUNCTION_5(v143 + v150);
    v154 = v64 && v152 == v153;
    if (!v154 && (sub_19393CA30() & 1) == 0)
    {
      goto LABEL_51;
    }
  }

  else if (v151)
  {
    goto LABEL_51;
  }

  OUTLINED_FUNCTION_16_42();
  if (v64)
  {
    if (v155 != 2)
    {
      goto LABEL_51;
    }
  }

  else
  {
    OUTLINED_FUNCTION_84_17();
    if (v156 || ((v157 ^ v158) & 1) != 0)
    {
      goto LABEL_51;
    }
  }

  OUTLINED_FUNCTION_6_64();
  if (v160)
  {
    if ((v159 & 1) == 0)
    {
      goto LABEL_51;
    }
  }

  else
  {
    if (v159)
    {
      goto LABEL_51;
    }

    v161 = OUTLINED_FUNCTION_9_72();
    if (!OUTLINED_FUNCTION_77_18(v161, v162, v163))
    {
      goto LABEL_51;
    }
  }

  OUTLINED_FUNCTION_6_64();
  if (v165)
  {
    if ((v164 & 1) == 0)
    {
      goto LABEL_51;
    }
  }

  else
  {
    if (v164)
    {
      goto LABEL_51;
    }

    OUTLINED_FUNCTION_9_72();
    OUTLINED_FUNCTION_50_21();
    if (!OUTLINED_FUNCTION_140_13(v166, v167, v168, v169))
    {
      goto LABEL_51;
    }
  }

  OUTLINED_FUNCTION_6_64();
  if (v171)
  {
    if ((v170 & 1) == 0)
    {
      goto LABEL_51;
    }
  }

  else
  {
    if (v170)
    {
      goto LABEL_51;
    }

    OUTLINED_FUNCTION_9_72();
    OUTLINED_FUNCTION_51_22();
    if (!OUTLINED_FUNCTION_140_13(v172, v173, v174, v175))
    {
      goto LABEL_51;
    }
  }

  v176 = OUTLINED_FUNCTION_65_23(v599[20]);
  if ((sub_19344FC94(v176, v177) & 1) == 0)
  {
    goto LABEL_51;
  }

  v178 = v599[21];
  v180 = *(v598 + v178);
  v179 = *(v598 + v178 + 8);
  v181 = *(v598 + v178 + 16);
  v182 = *(v598 + v178 + 24);
  v183 = (*(v598 + v178 + 32) | (*(v598 + v178 + 36) << 32));
  v184 = v618 + v178;
  v185 = *v184;
  v186 = *(v184 + 1);
  v187 = *(v184 + 3);
  v617 = *(v184 + 2);
  v188 = *(v184 + 8) | (v184[36] << 32);
  if (v182 == 1)
  {
    v189 = OUTLINED_FUNCTION_107_5();
    sub_19376F35C(v189, v190, v181, 1);
    if (v187 == 1)
    {
      v191 = OUTLINED_FUNCTION_128_13();
      sub_19376F35C(v191, v192, v193, 1);
      v194 = OUTLINED_FUNCTION_107_5();
      sub_19345FF00(v194, v195, v181, 1);
      goto LABEL_129;
    }

    v207 = OUTLINED_FUNCTION_128_13();
    sub_19376F35C(v207, v208, v209, v187);
LABEL_127:
    v210 = OUTLINED_FUNCTION_35_35();
    sub_19345FF00(v210, v211, v212, v213);
    v214 = OUTLINED_FUNCTION_128_13();
    sub_19345FF00(v214, v215, v216, v187);
    goto LABEL_51;
  }

  v628[0] = v180;
  v628[1] = v179;
  v628[2] = v181;
  v628[3] = v182;
  LODWORD(v628[4]) = v183;
  BYTE4(v628[4]) = BYTE4(v183);
  if (v187 == 1)
  {
    v196 = OUTLINED_FUNCTION_35_35();
    sub_19376F35C(v196, v197, v198, v199);
    v200 = OUTLINED_FUNCTION_128_13();
    sub_19376F35C(v200, v201, v202, 1);
    v203 = OUTLINED_FUNCTION_35_35();
    sub_19376F35C(v203, v204, v205, v206);

    goto LABEL_127;
  }

  v616 = v185;
  *&v626[0] = v185;
  WORD4(v626[0]) = v186 & 0x1FF;
  v217 = v617;
  *&v626[1] = v617;
  *(&v626[1] + 1) = v187;
  LODWORD(v626[2]) = v188;
  BYTE4(v626[2]) = BYTE4(v188) & 1;
  v218 = OUTLINED_FUNCTION_35_35();
  sub_19376F35C(v218, v219, v220, v221);
  sub_19376F35C(v616, v186, v217, v187);
  v222 = OUTLINED_FUNCTION_35_35();
  sub_19376F35C(v222, v223, v224, v225);
  LOBYTE(v217) = static MomentsEventData.Action.== infix(_:_:)(v628, v626);

  v226 = OUTLINED_FUNCTION_35_35();
  sub_19345FF00(v226, v227, v228, v229);
  if ((v217 & 1) == 0)
  {
    goto LABEL_51;
  }

LABEL_129:
  v230 = OUTLINED_FUNCTION_65_23(v599[22]);
  if ((sub_1937C1918(v230, v231) & 1) == 0)
  {
    goto LABEL_51;
  }

  OUTLINED_FUNCTION_16_42();
  if (v64)
  {
    if (v232 != 2)
    {
      goto LABEL_51;
    }
  }

  else
  {
    OUTLINED_FUNCTION_84_17();
    if (v233 || ((v234 ^ v235) & 1) != 0)
    {
      goto LABEL_51;
    }
  }

  OUTLINED_FUNCTION_6_64();
  if (v237)
  {
    if ((v236 & 1) == 0)
    {
      goto LABEL_51;
    }
  }

  else
  {
    if (v236)
    {
      goto LABEL_51;
    }

    v238 = OUTLINED_FUNCTION_9_72();
    if (!OUTLINED_FUNCTION_77_18(v238, v239, v240))
    {
      goto LABEL_51;
    }
  }

  OUTLINED_FUNCTION_16_42();
  if (v64)
  {
    if (v241 != 2)
    {
      goto LABEL_51;
    }
  }

  else
  {
    OUTLINED_FUNCTION_84_17();
    if (v242 || ((v243 ^ v244) & 1) != 0)
    {
      goto LABEL_51;
    }
  }

  OUTLINED_FUNCTION_16_42();
  if (v64)
  {
    if (v245 != 2)
    {
      goto LABEL_51;
    }
  }

  else
  {
    OUTLINED_FUNCTION_84_17();
    if (v246 || ((v247 ^ v248) & 1) != 0)
    {
      goto LABEL_51;
    }
  }

  OUTLINED_FUNCTION_16_42();
  if (v64)
  {
    if (v249 != 2)
    {
      goto LABEL_51;
    }
  }

  else
  {
    OUTLINED_FUNCTION_84_17();
    if (v250 || ((v251 ^ v252) & 1) != 0)
    {
      goto LABEL_51;
    }
  }

  OUTLINED_FUNCTION_16_42();
  if (v64)
  {
    if (v253 != 2)
    {
      goto LABEL_51;
    }
  }

  else
  {
    OUTLINED_FUNCTION_84_17();
    if (v254 || ((v255 ^ v256) & 1) != 0)
    {
      goto LABEL_51;
    }
  }

  OUTLINED_FUNCTION_16_42();
  if (v64)
  {
    if (v257 != 2)
    {
      goto LABEL_51;
    }
  }

  else
  {
    OUTLINED_FUNCTION_84_17();
    if (v258 || ((v259 ^ v260) & 1) != 0)
    {
      goto LABEL_51;
    }
  }

  OUTLINED_FUNCTION_16_42();
  if (v64)
  {
    if (v261 != 2)
    {
      goto LABEL_51;
    }
  }

  else
  {
    OUTLINED_FUNCTION_84_17();
    if (v262 || ((v263 ^ v264) & 1) != 0)
    {
      goto LABEL_51;
    }
  }

  OUTLINED_FUNCTION_6_64();
  if (v266)
  {
    if ((v265 & 1) == 0)
    {
      goto LABEL_51;
    }
  }

  else
  {
    if (v265)
    {
      goto LABEL_51;
    }

    v267 = OUTLINED_FUNCTION_9_72();
    if (!OUTLINED_FUNCTION_77_18(v267, v268, v269))
    {
      goto LABEL_51;
    }
  }

  OUTLINED_FUNCTION_28_33();
  if (v271)
  {
    if (!v270)
    {
      goto LABEL_51;
    }
  }

  else
  {
    OUTLINED_FUNCTION_21_47();
    if (v272)
    {
      goto LABEL_51;
    }
  }

  OUTLINED_FUNCTION_28_33();
  if (v274)
  {
    if (!v273)
    {
      goto LABEL_51;
    }
  }

  else
  {
    OUTLINED_FUNCTION_21_47();
    if (v275)
    {
      goto LABEL_51;
    }
  }

  OUTLINED_FUNCTION_6_64();
  if (v277)
  {
    if ((v276 & 1) == 0)
    {
      goto LABEL_51;
    }
  }

  else
  {
    if (v276)
    {
      goto LABEL_51;
    }

    v278 = OUTLINED_FUNCTION_9_72();
    if (!OUTLINED_FUNCTION_77_18(v278, v279, v280))
    {
      goto LABEL_51;
    }
  }

  v281 = v600;
  OUTLINED_FUNCTION_144_10();
  v282 = OUTLINED_FUNCTION_147_11();
  OUTLINED_FUNCTION_118_15(v282);
  OUTLINED_FUNCTION_63_17();
  v111 = v281;
  OUTLINED_FUNCTION_25_38(v281);
  if (v64)
  {
    OUTLINED_FUNCTION_22_39();
    if (!v64)
    {
      goto LABEL_49;
    }

    sub_19344E6DC(v281, &qword_1EAE3A9E8, &qword_19394F800);
  }

  else
  {
    sub_193448804(v281, v607, &qword_1EAE3A9E8, &qword_19394F800);
    OUTLINED_FUNCTION_22_39();
    if (v283)
    {
      OUTLINED_FUNCTION_119_12();
      v113 = v607;
      goto LABEL_48;
    }

    v284 = OUTLINED_FUNCTION_27_31();
    v285(v284);
    OUTLINED_FUNCTION_0_104();
    v288 = sub_1937D05A4(v286, v287);
    OUTLINED_FUNCTION_95_17(v288, v289, v290, v288);
    v291 = OUTLINED_FUNCTION_59_21();
    v183(v291);
    v292 = OUTLINED_FUNCTION_166();
    v183(v292);
    sub_19344E6DC(v281, &qword_1EAE3A9E8, &qword_19394F800);
    if ((&qword_1EAE3A9E8 & 1) == 0)
    {
      goto LABEL_51;
    }
  }

  OUTLINED_FUNCTION_46_25();
  if (v295)
  {
    if (!v293)
    {
      goto LABEL_51;
    }

    OUTLINED_FUNCTION_5(v294);
    v298 = v64 && v296 == v297;
    if (!v298 && (sub_19393CA30() & 1) == 0)
    {
      goto LABEL_51;
    }
  }

  else if (v293)
  {
    goto LABEL_51;
  }

  OUTLINED_FUNCTION_46_25();
  if (v301)
  {
    if (!v299)
    {
      goto LABEL_51;
    }

    OUTLINED_FUNCTION_5(v300);
    v304 = v64 && v302 == v303;
    if (!v304 && (sub_19393CA30() & 1) == 0)
    {
      goto LABEL_51;
    }
  }

  else if (v299)
  {
    goto LABEL_51;
  }

  OUTLINED_FUNCTION_68_22();
  if (v308)
  {
    if (!v305)
    {
      goto LABEL_51;
    }

    goto LABEL_228;
  }

  if (*v306 != *v307)
  {
    LOBYTE(v305) = 1;
  }

  if ((v305 & 1) == 0)
  {
LABEL_228:
    OUTLINED_FUNCTION_6_64();
    if (v310)
    {
      if ((v309 & 1) == 0)
      {
        goto LABEL_51;
      }
    }

    else
    {
      if (v309)
      {
        goto LABEL_51;
      }

      v311 = OUTLINED_FUNCTION_9_72();
      if (!OUTLINED_FUNCTION_77_18(v311, v312, v313))
      {
        goto LABEL_51;
      }
    }

    OUTLINED_FUNCTION_46_25();
    if (v316)
    {
      if (!v314)
      {
        goto LABEL_51;
      }

      OUTLINED_FUNCTION_5(v315);
      v319 = v64 && v317 == v318;
      if (!v319 && (sub_19393CA30() & 1) == 0)
      {
        goto LABEL_51;
      }
    }

    else if (v314)
    {
      goto LABEL_51;
    }

    OUTLINED_FUNCTION_144_10();
    v320 = OUTLINED_FUNCTION_147_11();
    v321 = v601;
    OUTLINED_FUNCTION_118_15(v320);
    OUTLINED_FUNCTION_63_17();
    v111 = v321;
    OUTLINED_FUNCTION_25_38(v321);
    if (v64)
    {
      OUTLINED_FUNCTION_22_39();
      if (!v64)
      {
        goto LABEL_49;
      }

      sub_19344E6DC(v321, &qword_1EAE3A9E8, &qword_19394F800);
    }

    else
    {
      sub_193448804(v321, v608, &qword_1EAE3A9E8, &qword_19394F800);
      OUTLINED_FUNCTION_22_39();
      if (v322)
      {
        OUTLINED_FUNCTION_119_12();
        v113 = v608;
        goto LABEL_48;
      }

      v323 = OUTLINED_FUNCTION_27_31();
      v324(v323);
      OUTLINED_FUNCTION_0_104();
      v327 = sub_1937D05A4(v325, v326);
      OUTLINED_FUNCTION_95_17(v327, v328, v329, v327);
      v330 = OUTLINED_FUNCTION_59_21();
      v183(v330);
      v331 = OUTLINED_FUNCTION_166();
      v183(v331);
      sub_19344E6DC(v321, &qword_1EAE3A9E8, &qword_19394F800);
      if ((&qword_1EAE3A9E8 & 1) == 0)
      {
        goto LABEL_51;
      }
    }

    OUTLINED_FUNCTION_144_10();
    v332 = OUTLINED_FUNCTION_147_11();
    v333 = v602;
    OUTLINED_FUNCTION_118_15(v332);
    OUTLINED_FUNCTION_63_17();
    v111 = v333;
    OUTLINED_FUNCTION_25_38(v333);
    if (v64)
    {
      OUTLINED_FUNCTION_22_39();
      if (!v64)
      {
        goto LABEL_49;
      }

      sub_19344E6DC(v333, &qword_1EAE3A9E8, &qword_19394F800);
    }

    else
    {
      sub_193448804(v333, v609, &qword_1EAE3A9E8, &qword_19394F800);
      OUTLINED_FUNCTION_22_39();
      if (v334)
      {
        OUTLINED_FUNCTION_119_12();
        v113 = v609;
        goto LABEL_48;
      }

      v335 = OUTLINED_FUNCTION_27_31();
      v336(v335);
      OUTLINED_FUNCTION_0_104();
      v339 = sub_1937D05A4(v337, v338);
      OUTLINED_FUNCTION_95_17(v339, v340, v341, v339);
      v342 = OUTLINED_FUNCTION_59_21();
      v183(v342);
      v343 = OUTLINED_FUNCTION_166();
      v183(v343);
      sub_19344E6DC(v333, &qword_1EAE3A9E8, &qword_19394F800);
      if ((&qword_1EAE3A9E8 & 1) == 0)
      {
        goto LABEL_51;
      }
    }

    OUTLINED_FUNCTION_144_10();
    v344 = OUTLINED_FUNCTION_147_11();
    v345 = v603;
    OUTLINED_FUNCTION_118_15(v344);
    OUTLINED_FUNCTION_63_17();
    v111 = v345;
    OUTLINED_FUNCTION_25_38(v345);
    if (v64)
    {
      OUTLINED_FUNCTION_22_39();
      if (!v64)
      {
        goto LABEL_49;
      }

      sub_19344E6DC(v345, &qword_1EAE3A9E8, &qword_19394F800);
    }

    else
    {
      sub_193448804(v345, v610, &qword_1EAE3A9E8, &qword_19394F800);
      OUTLINED_FUNCTION_22_39();
      if (v346)
      {
        OUTLINED_FUNCTION_119_12();
        v113 = v610;
        goto LABEL_48;
      }

      v347 = OUTLINED_FUNCTION_27_31();
      v348(v347);
      OUTLINED_FUNCTION_0_104();
      v351 = sub_1937D05A4(v349, v350);
      OUTLINED_FUNCTION_95_17(v351, v352, v353, v351);
      v354 = OUTLINED_FUNCTION_59_21();
      v183(v354);
      v355 = OUTLINED_FUNCTION_166();
      v183(v355);
      sub_19344E6DC(v345, &qword_1EAE3A9E8, &qword_19394F800);
      if ((&qword_1EAE3A9E8 & 1) == 0)
      {
        goto LABEL_51;
      }
    }

    OUTLINED_FUNCTION_68_22();
    if (v357)
    {
      if (!v356)
      {
        goto LABEL_51;
      }
    }

    else
    {
      OUTLINED_FUNCTION_258();
      if (v358)
      {
        goto LABEL_51;
      }
    }

    OUTLINED_FUNCTION_68_22();
    if (v360)
    {
      if (!v359)
      {
        goto LABEL_51;
      }
    }

    else
    {
      OUTLINED_FUNCTION_258();
      if (v361)
      {
        goto LABEL_51;
      }
    }

    OUTLINED_FUNCTION_6_64();
    if (v363)
    {
      if ((v362 & 1) == 0)
      {
        goto LABEL_51;
      }
    }

    else
    {
      if (v362)
      {
        goto LABEL_51;
      }

      v364 = OUTLINED_FUNCTION_9_72();
      if (!OUTLINED_FUNCTION_77_18(v364, v365, v366))
      {
        goto LABEL_51;
      }
    }

    OUTLINED_FUNCTION_46_25();
    if (v369)
    {
      if (!v367)
      {
        goto LABEL_51;
      }

      OUTLINED_FUNCTION_5(v368);
      v372 = v64 && v370 == v371;
      if (!v372 && (sub_19393CA30() & 1) == 0)
      {
        goto LABEL_51;
      }
    }

    else if (v367)
    {
      goto LABEL_51;
    }

    OUTLINED_FUNCTION_144_10();
    v373 = OUTLINED_FUNCTION_147_11();
    v374 = v604;
    OUTLINED_FUNCTION_118_15(v373);
    OUTLINED_FUNCTION_63_17();
    v111 = v374;
    OUTLINED_FUNCTION_25_38(v374);
    if (v64)
    {
      OUTLINED_FUNCTION_22_39();
      if (!v64)
      {
        goto LABEL_49;
      }

      sub_19344E6DC(v374, &qword_1EAE3A9E8, &qword_19394F800);
    }

    else
    {
      sub_193448804(v374, v611, &qword_1EAE3A9E8, &qword_19394F800);
      OUTLINED_FUNCTION_22_39();
      if (v375)
      {
        OUTLINED_FUNCTION_119_12();
        v113 = v611;
        goto LABEL_48;
      }

      v376 = OUTLINED_FUNCTION_27_31();
      v377(v376);
      OUTLINED_FUNCTION_0_104();
      v380 = sub_1937D05A4(v378, v379);
      OUTLINED_FUNCTION_95_17(v380, v381, v382, v380);
      v383 = OUTLINED_FUNCTION_59_21();
      v183(v383);
      v384 = OUTLINED_FUNCTION_166();
      v183(v384);
      sub_19344E6DC(v374, &qword_1EAE3A9E8, &qword_19394F800);
      if ((&qword_1EAE3A9E8 & 1) == 0)
      {
        goto LABEL_51;
      }
    }

    OUTLINED_FUNCTION_46_25();
    if (v387)
    {
      if (!v385)
      {
        goto LABEL_51;
      }

      OUTLINED_FUNCTION_5(v386);
      v390 = v64 && v388 == v389;
      if (!v390 && (sub_19393CA30() & 1) == 0)
      {
        goto LABEL_51;
      }
    }

    else if (v385)
    {
      goto LABEL_51;
    }

    OUTLINED_FUNCTION_6_64();
    if (v392)
    {
      if ((v391 & 1) == 0)
      {
        goto LABEL_51;
      }
    }

    else
    {
      if (v391)
      {
        goto LABEL_51;
      }

      v393 = OUTLINED_FUNCTION_9_72();
      if (!OUTLINED_FUNCTION_77_18(v393, v394, v395))
      {
        goto LABEL_51;
      }
    }

    OUTLINED_FUNCTION_6_64();
    if (v397)
    {
      if ((v396 & 1) == 0)
      {
        goto LABEL_51;
      }
    }

    else
    {
      if (v396)
      {
        goto LABEL_51;
      }

      v398 = OUTLINED_FUNCTION_9_72();
      if (!OUTLINED_FUNCTION_77_18(v398, v399, v400))
      {
        goto LABEL_51;
      }
    }

    OUTLINED_FUNCTION_16_42();
    if (v64)
    {
      if (v401 != 2)
      {
        goto LABEL_51;
      }
    }

    else
    {
      OUTLINED_FUNCTION_84_17();
      if (v402 || ((v403 ^ v404) & 1) != 0)
      {
        goto LABEL_51;
      }
    }

    OUTLINED_FUNCTION_16_42();
    if (v64)
    {
      if (v405 != 2)
      {
        goto LABEL_51;
      }
    }

    else
    {
      OUTLINED_FUNCTION_84_17();
      if (v406 || ((v407 ^ v408) & 1) != 0)
      {
        goto LABEL_51;
      }
    }

    OUTLINED_FUNCTION_16_42();
    if (v64)
    {
      if (v409 != 2)
      {
        goto LABEL_51;
      }
    }

    else
    {
      OUTLINED_FUNCTION_84_17();
      if (v410 || ((v411 ^ v412) & 1) != 0)
      {
        goto LABEL_51;
      }
    }

    OUTLINED_FUNCTION_16_42();
    if (v64)
    {
      if (v413 != 2)
      {
        goto LABEL_51;
      }
    }

    else
    {
      OUTLINED_FUNCTION_84_17();
      if (v414 || ((v415 ^ v416) & 1) != 0)
      {
        goto LABEL_51;
      }
    }

    OUTLINED_FUNCTION_16_42();
    if (v64)
    {
      if (v417 != 2)
      {
        goto LABEL_51;
      }
    }

    else
    {
      OUTLINED_FUNCTION_84_17();
      if (v418 || ((v419 ^ v420) & 1) != 0)
      {
        goto LABEL_51;
      }
    }

    v421 = OUTLINED_FUNCTION_65_23(v599[57]);
    if ((sub_1937C1B14(v421, v422, v423, v424) & 1) == 0)
    {
      goto LABEL_51;
    }

    OUTLINED_FUNCTION_68_22();
    if (v426)
    {
      if (!v425)
      {
        goto LABEL_51;
      }
    }

    else
    {
      OUTLINED_FUNCTION_258();
      if (v427)
      {
        goto LABEL_51;
      }
    }

    OUTLINED_FUNCTION_6_64();
    if (v429)
    {
      if ((v428 & 1) == 0)
      {
        goto LABEL_51;
      }
    }

    else
    {
      if (v428)
      {
        goto LABEL_51;
      }

      v430 = OUTLINED_FUNCTION_9_72();
      if (!OUTLINED_FUNCTION_77_18(v430, v431, v432))
      {
        goto LABEL_51;
      }
    }

    OUTLINED_FUNCTION_6_64();
    if (v434)
    {
      if ((v433 & 1) == 0)
      {
        goto LABEL_51;
      }
    }

    else
    {
      if (v433)
      {
        goto LABEL_51;
      }

      v435 = OUTLINED_FUNCTION_9_72();
      if (!OUTLINED_FUNCTION_77_18(v435, v436, v437))
      {
        goto LABEL_51;
      }
    }

    OUTLINED_FUNCTION_6_64();
    if (v439)
    {
      if ((v438 & 1) == 0)
      {
        goto LABEL_51;
      }
    }

    else
    {
      if (v438)
      {
        goto LABEL_51;
      }

      v440 = OUTLINED_FUNCTION_9_72();
      if (!OUTLINED_FUNCTION_77_18(v440, v441, v442))
      {
        goto LABEL_51;
      }
    }

    OUTLINED_FUNCTION_6_64();
    if (v444)
    {
      if ((v443 & 1) == 0)
      {
        goto LABEL_51;
      }
    }

    else
    {
      if (v443)
      {
        goto LABEL_51;
      }

      v445 = OUTLINED_FUNCTION_9_72();
      if (!OUTLINED_FUNCTION_77_18(v445, v446, v447))
      {
        goto LABEL_51;
      }
    }

    OUTLINED_FUNCTION_6_64();
    if (v449)
    {
      if ((v448 & 1) == 0)
      {
        goto LABEL_51;
      }
    }

    else
    {
      if (v448)
      {
        goto LABEL_51;
      }

      v450 = OUTLINED_FUNCTION_9_72();
      if (!OUTLINED_FUNCTION_77_18(v450, v451, v452))
      {
        goto LABEL_51;
      }
    }

    OUTLINED_FUNCTION_6_64();
    if (v454)
    {
      if ((v453 & 1) == 0)
      {
        goto LABEL_51;
      }
    }

    else
    {
      if (v453)
      {
        goto LABEL_51;
      }

      v455 = OUTLINED_FUNCTION_9_72();
      if (!OUTLINED_FUNCTION_77_18(v455, v456, v457))
      {
        goto LABEL_51;
      }
    }

    OUTLINED_FUNCTION_6_64();
    if (v459)
    {
      if ((v458 & 1) == 0)
      {
        goto LABEL_51;
      }
    }

    else
    {
      if (v458)
      {
        goto LABEL_51;
      }

      v460 = OUTLINED_FUNCTION_9_72();
      if (!OUTLINED_FUNCTION_77_18(v460, v461, v462))
      {
        goto LABEL_51;
      }
    }

    OUTLINED_FUNCTION_6_64();
    if (v464)
    {
      if ((v463 & 1) == 0)
      {
        goto LABEL_51;
      }
    }

    else
    {
      if (v463)
      {
        goto LABEL_51;
      }

      v465 = OUTLINED_FUNCTION_9_72();
      if (!OUTLINED_FUNCTION_77_18(v465, v466, v467))
      {
        goto LABEL_51;
      }
    }

    OUTLINED_FUNCTION_6_64();
    if (v469)
    {
      if ((v468 & 1) == 0)
      {
        goto LABEL_51;
      }
    }

    else
    {
      if (v468)
      {
        goto LABEL_51;
      }

      OUTLINED_FUNCTION_9_72();
      OUTLINED_FUNCTION_53_26();
      if (!OUTLINED_FUNCTION_140_13(v470, v471, v472, v473))
      {
        goto LABEL_51;
      }
    }

    OUTLINED_FUNCTION_6_64();
    if (v475)
    {
      if ((v474 & 1) == 0)
      {
        goto LABEL_51;
      }
    }

    else
    {
      if (v474)
      {
        goto LABEL_51;
      }

      OUTLINED_FUNCTION_9_72();
      OUTLINED_FUNCTION_53_26();
      if (!OUTLINED_FUNCTION_140_13(v476, v477, v478, v479))
      {
        goto LABEL_51;
      }
    }

    OUTLINED_FUNCTION_6_64();
    if (v481)
    {
      if ((v480 & 1) == 0)
      {
        goto LABEL_51;
      }
    }

    else
    {
      if (v480)
      {
        goto LABEL_51;
      }

      OUTLINED_FUNCTION_9_72();
      OUTLINED_FUNCTION_56_20();
      if (!OUTLINED_FUNCTION_140_13(v482, v483, v484, v485))
      {
        goto LABEL_51;
      }
    }

    OUTLINED_FUNCTION_6_64();
    if (v487)
    {
      if ((v486 & 1) == 0)
      {
        goto LABEL_51;
      }
    }

    else
    {
      if (v486)
      {
        goto LABEL_51;
      }

      OUTLINED_FUNCTION_9_72();
      OUTLINED_FUNCTION_55_17();
      if (!OUTLINED_FUNCTION_140_13(v488, v489, v490, v491))
      {
        goto LABEL_51;
      }
    }

    OUTLINED_FUNCTION_6_64();
    if (v493)
    {
      if ((v492 & 1) == 0)
      {
        goto LABEL_51;
      }
    }

    else
    {
      if (v492)
      {
        goto LABEL_51;
      }

      OUTLINED_FUNCTION_9_72();
      OUTLINED_FUNCTION_54_20();
      if (!OUTLINED_FUNCTION_140_13(v494, v495, v496, v497))
      {
        goto LABEL_51;
      }
    }

    OUTLINED_FUNCTION_6_64();
    if (v499)
    {
      if ((v498 & 1) == 0)
      {
        goto LABEL_51;
      }
    }

    else
    {
      if (v498)
      {
        goto LABEL_51;
      }

      v500 = OUTLINED_FUNCTION_9_72();
      if (!OUTLINED_FUNCTION_77_18(v500, v501, v502))
      {
        goto LABEL_51;
      }
    }

    OUTLINED_FUNCTION_16_42();
    if (v64)
    {
      if (v503 != 2)
      {
        goto LABEL_51;
      }
    }

    else
    {
      OUTLINED_FUNCTION_84_17();
      if (v504 || ((v505 ^ v506) & 1) != 0)
      {
        goto LABEL_51;
      }
    }

    OUTLINED_FUNCTION_6_64();
    if (v508)
    {
      if ((v507 & 1) == 0)
      {
        goto LABEL_51;
      }
    }

    else
    {
      if (v507)
      {
        goto LABEL_51;
      }

      v509 = OUTLINED_FUNCTION_9_72();
      if (!OUTLINED_FUNCTION_77_18(v509, v510, v511))
      {
        goto LABEL_51;
      }
    }

    OUTLINED_FUNCTION_6_64();
    if (v513)
    {
      if ((v512 & 1) == 0)
      {
        goto LABEL_51;
      }
    }

    else
    {
      if (v512)
      {
        goto LABEL_51;
      }

      v514 = OUTLINED_FUNCTION_9_72();
      if (!OUTLINED_FUNCTION_77_18(v514, v515, v516))
      {
        goto LABEL_51;
      }
    }

    OUTLINED_FUNCTION_16_42();
    if (v64)
    {
      if (v517 != 2)
      {
        goto LABEL_51;
      }
    }

    else
    {
      OUTLINED_FUNCTION_84_17();
      if (v518 || ((v519 ^ v520) & 1) != 0)
      {
        goto LABEL_51;
      }
    }

    OUTLINED_FUNCTION_6_64();
    if (v522)
    {
      if ((v521 & 1) == 0)
      {
        goto LABEL_51;
      }
    }

    else
    {
      if (v521)
      {
        goto LABEL_51;
      }

      v523 = OUTLINED_FUNCTION_9_72();
      if (!OUTLINED_FUNCTION_77_18(v523, v524, v525))
      {
        goto LABEL_51;
      }
    }

    OUTLINED_FUNCTION_16_42();
    if (v64)
    {
      if (v526 != 2)
      {
        goto LABEL_51;
      }
    }

    else
    {
      OUTLINED_FUNCTION_84_17();
      if (v527 || ((v528 ^ v529) & 1) != 0)
      {
        goto LABEL_51;
      }
    }

    v530 = OUTLINED_FUNCTION_65_23(v599[79]);
    if ((sub_19344FC94(v530, v531) & 1) == 0)
    {
      goto LABEL_51;
    }

    v532 = OUTLINED_FUNCTION_65_23(v599[80]);
    if ((sub_19344FC94(v532, v533) & 1) == 0)
    {
      goto LABEL_51;
    }

    OUTLINED_FUNCTION_144_10();
    v534 = OUTLINED_FUNCTION_147_11();
    v535 = v605;
    OUTLINED_FUNCTION_118_15(v534);
    OUTLINED_FUNCTION_63_17();
    v111 = v535;
    OUTLINED_FUNCTION_25_38(v535);
    if (v64)
    {
      OUTLINED_FUNCTION_22_39();
      if (v64)
      {
        sub_19344E6DC(v535, &qword_1EAE3A9E8, &qword_19394F800);
LABEL_468:
        v548 = OUTLINED_FUNCTION_65_23(v599[82]);
        if ((sub_1937C1BEC(v548, v549) & 1) == 0)
        {
          goto LABEL_51;
        }

        v550 = OUTLINED_FUNCTION_65_23(v599[83]);
        if ((sub_1937C1C9C(v550, v551) & 1) == 0)
        {
          goto LABEL_51;
        }

        v552 = v599[84];
        v553 = *(v598 + v552 + 105);
        v554 = v618 + v552;
        v555 = *(v618 + v552 + 105);
        if (v553)
        {
          if ((*(v618 + v552 + 105) & 1) == 0)
          {
            goto LABEL_51;
          }
        }

        else
        {
          memcpy(v628, v598 + v552, 0x69uLL);
          BYTE1(v628[13]) = v553;
          if (v555)
          {
            goto LABEL_51;
          }

          memcpy(v626, v554, 0x69uLL);
          if ((static MomentsEventData.EventBundle.Place.== infix(_:_:)(v628, v626) & 1) == 0)
          {
            goto LABEL_51;
          }
        }

        v556 = OUTLINED_FUNCTION_65_23(v599[85]);
        if ((sub_1937C1EBC(v556, v557) & 1) == 0)
        {
          goto LABEL_51;
        }

        v558 = OUTLINED_FUNCTION_65_23(v599[86]);
        if ((sub_19344FC94(v558, v559) & 1) == 0)
        {
          goto LABEL_51;
        }

        v560 = v599[87];
        v561 = v598 + v560;
        v562 = *v561;
        v563 = v618 + v560;
        v564 = *v563;
        if (*v561 == 3)
        {
          if (v564 != 3)
          {
            goto LABEL_51;
          }
        }

        else
        {
          v565 = v563[16];
          v566 = v561[16];
          v567 = *(v561 + 1);
          v628[0] = v562;
          v628[1] = v567;
          LOBYTE(v628[2]) = v566;
          if (v564 == 3)
          {
            goto LABEL_51;
          }

          v626[0] = v564;
          LOBYTE(v626[1]) = v565;
          static MomentsEventData.EventBundle.ClusterMetadata.== infix(_:_:)();
          if ((v568 & 1) == 0)
          {
            goto LABEL_51;
          }
        }

        v569 = *(v613 + 48);
        v570 = OUTLINED_FUNCTION_147_11();
        v571 = v596;
        OUTLINED_FUNCTION_118_15(v570);
        OUTLINED_FUNCTION_63_17();
        OUTLINED_FUNCTION_6_3(v571, 1, v615);
        if (v64)
        {
          OUTLINED_FUNCTION_6_3(v596 + v569, 1, v615);
          if (v64)
          {
            sub_19344E6DC(v596, &qword_1EAE42B00, &qword_193997C90);
LABEL_492:
            OUTLINED_FUNCTION_28_33();
            if (v578)
            {
              if (!v577)
              {
                goto LABEL_51;
              }
            }

            else
            {
              OUTLINED_FUNCTION_21_47();
              if (v579)
              {
                goto LABEL_51;
              }
            }

            OUTLINED_FUNCTION_28_33();
            if (v581)
            {
              if (!v580)
              {
                goto LABEL_51;
              }
            }

            else
            {
              OUTLINED_FUNCTION_21_47();
              if (v582)
              {
                goto LABEL_51;
              }
            }

            OUTLINED_FUNCTION_28_33();
            if (v584)
            {
              if (!v583)
              {
                goto LABEL_51;
              }
            }

            else
            {
              OUTLINED_FUNCTION_21_47();
              if (v585)
              {
                goto LABEL_51;
              }
            }

            OUTLINED_FUNCTION_28_33();
            if (v587)
            {
              if (!v586)
              {
                goto LABEL_51;
              }
            }

            else
            {
              OUTLINED_FUNCTION_21_47();
              if (v588)
              {
                goto LABEL_51;
              }
            }

            OUTLINED_FUNCTION_28_33();
            if (v590)
            {
              if (!v589)
              {
                goto LABEL_51;
              }
            }

            else
            {
              OUTLINED_FUNCTION_21_47();
              if (v591)
              {
                goto LABEL_51;
              }
            }

            v592 = v598;
            v593 = v599[94];
            memcpy(v629, v598 + v593, 0xDAuLL);
            OUTLINED_FUNCTION_191_5(v630);
            memcpy(v628, v592 + v593, 0xDAuLL);
            OUTLINED_FUNCTION_191_5(&v628[28]);
            memcpy(v631, v592 + v593, 0xDAuLL);
            if (sub_1936EC8BC(v631) == 1)
            {
              memcpy(v626, &v628[28], 0xDAuLL);
              if (sub_1936EC8BC(v626) == 1)
              {
                OUTLINED_FUNCTION_173_9(v627);
                OUTLINED_FUNCTION_142_13(v629);
                OUTLINED_FUNCTION_142_13(v630);
                sub_19344E6DC(v627, &qword_1EAE42F60, &qword_193997C98);
                goto LABEL_51;
              }

              OUTLINED_FUNCTION_27_7(v629, v627);
              OUTLINED_FUNCTION_27_7(v630, v627);
            }

            else
            {
              OUTLINED_FUNCTION_173_9(v627);
              memcpy(v626, &v628[28], 0xDAuLL);
              if (sub_1936EC8BC(v626) != 1)
              {
                OUTLINED_FUNCTION_142_13(v629);
                OUTLINED_FUNCTION_142_13(v630);
                OUTLINED_FUNCTION_142_13(v627);
                static MomentsEventData.EventBundle.MetadataForRank.== infix(_:_:)(v628, &v628[28]);
                memcpy(v623, &v628[28], 0xDAuLL);
                sub_1937D0FA0(v623);
                OUTLINED_FUNCTION_173_9(v624);
                sub_1937D0FA0(v624);
                OUTLINED_FUNCTION_173_9(v625);
                sub_19344E6DC(v625, &qword_1EAE42F60, &qword_193997C98);
                goto LABEL_51;
              }

              OUTLINED_FUNCTION_173_9(v625);
              OUTLINED_FUNCTION_27_7(v629, v624);
              OUTLINED_FUNCTION_27_7(v630, v624);
              OUTLINED_FUNCTION_27_7(v627, v624);
              sub_1937D0FA0(v625);
            }

            memcpy(v626, v628, 0x1BAuLL);
            v72 = &unk_1EAE42F70;
            v73 = &unk_193997CA8;
            v74 = v626;
            goto LABEL_50;
          }
        }

        else
        {
          v572 = v596;
          sub_193448804(v596, v614, &qword_1EAE42B00, &qword_193997C90);
          OUTLINED_FUNCTION_6_3(v572 + v569, 1, v615);
          if (!v573)
          {
            v574 = v596;
            sub_1937D1024(v596 + v569, v597, type metadata accessor for MomentsEventData.EventBundle.OutlierMetadata);
            OUTLINED_FUNCTION_5_7();
            static MomentsEventData.EventBundle.OutlierMetadata.== infix(_:_:)();
            v576 = v575;
            OUTLINED_FUNCTION_165_10();
            sub_1937D0FD0();
            OUTLINED_FUNCTION_26_29();
            sub_1937D0FD0();
            sub_19344E6DC(v574, &qword_1EAE42B00, &qword_193997C90);
            if ((v576 & 1) == 0)
            {
              goto LABEL_51;
            }

            goto LABEL_492;
          }

          sub_1937D0FD0();
        }

        v72 = &qword_1EAE42F68;
        v73 = &qword_193997CA0;
        v74 = v596;
LABEL_50:
        sub_19344E6DC(v74, v72, v73);
        goto LABEL_51;
      }

LABEL_49:
      v72 = &qword_1EAE3B968;
      v73 = &qword_193972430;
      v74 = v111;
      goto LABEL_50;
    }

    sub_193448804(v535, v612, &qword_1EAE3A9E8, &qword_19394F800);
    OUTLINED_FUNCTION_22_39();
    if (!v536)
    {
      v538 = v619;
      v537 = v620;
      OUTLINED_FUNCTION_28_30();
      v539 = v183 + v111;
      v540 = v621;
      v541(v538, v539, v621);
      OUTLINED_FUNCTION_0_104();
      sub_1937D05A4(v542, v543);
      v544 = v612;
      v545 = sub_19393C550();
      v546 = *(v537 + 8);
      v547 = OUTLINED_FUNCTION_5_7();
      v546(v547);
      (v546)(v544, v540);
      sub_19344E6DC(v111, &qword_1EAE3A9E8, &qword_19394F800);
      if ((v545 & 1) == 0)
      {
        goto LABEL_51;
      }

      goto LABEL_468;
    }

    OUTLINED_FUNCTION_119_12();
    v113 = v612;
LABEL_48:
    v114(v113);
    goto LABEL_49;
  }

LABEL_51:
  OUTLINED_FUNCTION_116();
}

void MomentsEventData.EventBundle.hash(into:)()
{
  OUTLINED_FUNCTION_117();
  v4 = v3;
  sub_19393BE00();
  OUTLINED_FUNCTION_0();
  v159 = v5;
  v160 = v6;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5_1();
  v9 = v8 - v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  v11 = OUTLINED_FUNCTION_47(v10);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_15_8();
  v158 = v12;
  OUTLINED_FUNCTION_47_3();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_49();
  v157 = v14;
  OUTLINED_FUNCTION_47_3();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_49();
  v156 = v16;
  OUTLINED_FUNCTION_47_3();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_49();
  v155 = v18;
  OUTLINED_FUNCTION_47_3();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_49();
  v154 = v20;
  OUTLINED_FUNCTION_47_3();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_49();
  v153 = v22;
  OUTLINED_FUNCTION_47_3();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_49();
  v152 = v24;
  OUTLINED_FUNCTION_47_3();
  v26 = MEMORY[0x1EEE9AC00](v25);
  v28 = &v150 - v27;
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_173_1();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_160_11();
  if (*(v0 + 8))
  {
    OUTLINED_FUNCTION_94();
    sub_19393C640();
  }

  else
  {
    OUTLINED_FUNCTION_95_8();
  }

  v30 = type metadata accessor for MomentsEventData.EventBundle(0);
  sub_193448804(v0 + v30[5], v1, &qword_1EAE3A9E8, &qword_19394F800);
  v31 = v159;
  OUTLINED_FUNCTION_6_3(v1, 1, v159);
  if (v32)
  {
    OUTLINED_FUNCTION_95_8();
  }

  else
  {
    v151 = v28;
    (*(v160 + 32))(v9, v1, v31);
    OUTLINED_FUNCTION_94();
    OUTLINED_FUNCTION_0_104();
    sub_1937D05A4(v33, v34);
    OUTLINED_FUNCTION_60_23();
    sub_19393C540();
    v28 = v151;
    v35 = OUTLINED_FUNCTION_121_0();
    v36(v35);
  }

  sub_193448804(v0 + v30[6], v2, &qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_6_3(v2, 1, v31);
  if (v32)
  {
    OUTLINED_FUNCTION_95_8();
  }

  else
  {
    v1 = v160;
    (*(v160 + 32))(v9, v2, v31);
    OUTLINED_FUNCTION_94();
    OUTLINED_FUNCTION_0_104();
    sub_1937D05A4(v37, v38);
    OUTLINED_FUNCTION_60_23();
    sub_19393C540();
    v39 = OUTLINED_FUNCTION_121_0();
    v40(v39);
  }

  sub_193448804(v0 + v30[7], v28, &qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_6_3(v28, 1, v31);
  if (v32)
  {
    OUTLINED_FUNCTION_95_8();
    v42 = v160;
  }

  else
  {
    v41 = v28;
    v42 = v160;
    (*(v160 + 32))(v9, v41, v31);
    OUTLINED_FUNCTION_94();
    OUTLINED_FUNCTION_0_104();
    sub_1937D05A4(v43, v44);
    OUTLINED_FUNCTION_60_23();
    sub_19393C540();
    v45 = OUTLINED_FUNCTION_41_25();
    v46(v45);
  }

  sub_193448804(v0 + v30[8], v152, &qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_58_21();
  if (v32)
  {
    OUTLINED_FUNCTION_95_8();
  }

  else
  {
    v47 = OUTLINED_FUNCTION_26_34();
    v48(v47);
    OUTLINED_FUNCTION_94();
    OUTLINED_FUNCTION_0_104();
    sub_1937D05A4(v49, v50);
    OUTLINED_FUNCTION_60_23();
    sub_19393C540();
    v51 = OUTLINED_FUNCTION_41_25();
    v52(v51);
  }

  OUTLINED_FUNCTION_32_34();
  if (v32)
  {
    OUTLINED_FUNCTION_95_8();
  }

  else
  {
    OUTLINED_FUNCTION_43_22();
    OUTLINED_FUNCTION_13_57();
    v53 = MomentsEventData.BundleInterfaceType.rawValue.getter();
    MEMORY[0x193B18030](v53);
  }

  OUTLINED_FUNCTION_97_12();
  if (!v32)
  {
    OUTLINED_FUNCTION_94();
  }

  sub_19393CAD0();
  OUTLINED_FUNCTION_97_12();
  if (!v32)
  {
    OUTLINED_FUNCTION_94();
  }

  sub_19393CAD0();
  OUTLINED_FUNCTION_97_12();
  if (!v32)
  {
    OUTLINED_FUNCTION_94();
  }

  sub_19393CAD0();
  OUTLINED_FUNCTION_97_12();
  if (!v32)
  {
    OUTLINED_FUNCTION_94();
  }

  sub_19393CAD0();
  OUTLINED_FUNCTION_146_11();
  if (v1)
  {
    OUTLINED_FUNCTION_86_14();
    sub_19393CAD0();
    OUTLINED_FUNCTION_117_17();
  }

  else
  {
    OUTLINED_FUNCTION_95_8();
  }

  OUTLINED_FUNCTION_146_11();
  if (v1)
  {
    OUTLINED_FUNCTION_86_14();
    sub_19393CAD0();
    OUTLINED_FUNCTION_117_17();
  }

  else
  {
    OUTLINED_FUNCTION_95_8();
  }

  OUTLINED_FUNCTION_97_12();
  if (!v32)
  {
    OUTLINED_FUNCTION_94();
  }

  sub_19393CAD0();
  OUTLINED_FUNCTION_32_34();
  if (v32)
  {
    OUTLINED_FUNCTION_95_8();
  }

  else
  {
    OUTLINED_FUNCTION_43_22();
    OUTLINED_FUNCTION_13_57();
    v54 = MomentsEventData.PlaceInferencePlaceType.rawValue.getter();
    MEMORY[0x193B18030](v54);
  }

  OUTLINED_FUNCTION_32_34();
  if (v32)
  {
    OUTLINED_FUNCTION_95_8();
  }

  else
  {
    OUTLINED_FUNCTION_43_22();
    OUTLINED_FUNCTION_13_57();
    v55 = MomentsEventData.PlaceInferenceUserSpecificPlaceType.rawValue.getter();
    MEMORY[0x193B18030](v55);
  }

  OUTLINED_FUNCTION_32_34();
  if (v32)
  {
    OUTLINED_FUNCTION_95_8();
  }

  else
  {
    OUTLINED_FUNCTION_43_22();
    OUTLINED_FUNCTION_13_57();
    v56 = MomentsEventData.EventCategoryType.rawValue.getter();
    MEMORY[0x193B18030](v56);
  }

  v57 = OUTLINED_FUNCTION_139_12();
  sub_1934D11C8(v57, v58);
  v59 = v0 + v30[21];
  v60 = *(v59 + 24);
  if (v60 == 1)
  {
    OUTLINED_FUNCTION_95_8();
  }

  else
  {
    v61 = *(v59 + 36);
    v62 = *(v59 + 32);
    v64 = *(v59 + 8);
    v63 = *(v59 + 16);
    v164[0] = *v59;
    LOWORD(v164[1]) = v64 & 0x1FF;
    v164[2] = v63;
    v164[3] = v60;
    LODWORD(v164[4]) = v62;
    BYTE4(v164[4]) = v61 & 1;
    OUTLINED_FUNCTION_94();

    MomentsEventData.Action.hash(into:)();
  }

  v65 = OUTLINED_FUNCTION_139_12();
  sub_1937D0CD8(v65, v66);
  OUTLINED_FUNCTION_97_12();
  if (!v32)
  {
    OUTLINED_FUNCTION_94();
  }

  sub_19393CAD0();
  OUTLINED_FUNCTION_32_34();
  if (v32)
  {
    OUTLINED_FUNCTION_95_8();
  }

  else
  {
    OUTLINED_FUNCTION_43_22();
    OUTLINED_FUNCTION_13_57();
    v67 = MomentsEventData.TimeTagType.rawValue.getter();
    MEMORY[0x193B18030](v67);
  }

  OUTLINED_FUNCTION_97_12();
  if (!v32)
  {
    OUTLINED_FUNCTION_94();
  }

  sub_19393CAD0();
  OUTLINED_FUNCTION_97_12();
  if (!v32)
  {
    OUTLINED_FUNCTION_94();
  }

  sub_19393CAD0();
  OUTLINED_FUNCTION_97_12();
  if (!v32)
  {
    OUTLINED_FUNCTION_94();
  }

  sub_19393CAD0();
  OUTLINED_FUNCTION_97_12();
  if (!v32)
  {
    OUTLINED_FUNCTION_94();
  }

  sub_19393CAD0();
  OUTLINED_FUNCTION_97_12();
  if (!v32)
  {
    OUTLINED_FUNCTION_94();
  }

  sub_19393CAD0();
  OUTLINED_FUNCTION_97_12();
  if (!v32)
  {
    OUTLINED_FUNCTION_94();
  }

  sub_19393CAD0();
  OUTLINED_FUNCTION_32_34();
  if (v32)
  {
    OUTLINED_FUNCTION_95_8();
  }

  else
  {
    OUTLINED_FUNCTION_43_22();
    OUTLINED_FUNCTION_13_57();
    v68 = MomentsEventData.BundleEngagementType.rawValue.getter();
    MEMORY[0x193B18030](v68);
  }

  OUTLINED_FUNCTION_79_17();
  if (v32)
  {
    OUTLINED_FUNCTION_95_8();
  }

  else
  {
    OUTLINED_FUNCTION_86_14();
    sub_19393CAD0();
    v69 = OUTLINED_FUNCTION_138_10();
    MEMORY[0x193B18060](v69);
  }

  OUTLINED_FUNCTION_79_17();
  if (v32)
  {
    OUTLINED_FUNCTION_95_8();
  }

  else
  {
    OUTLINED_FUNCTION_86_14();
    sub_19393CAD0();
    v70 = OUTLINED_FUNCTION_138_10();
    MEMORY[0x193B18060](v70);
  }

  OUTLINED_FUNCTION_32_34();
  if (v32)
  {
    OUTLINED_FUNCTION_95_8();
  }

  else
  {
    OUTLINED_FUNCTION_43_22();
    OUTLINED_FUNCTION_13_57();
    v71 = MomentsEventData.SuggestionType.rawValue.getter();
    MEMORY[0x193B18030](v71);
  }

  sub_193448804(v0 + v30[35], v153, &qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_58_21();
  if (v32)
  {
    OUTLINED_FUNCTION_95_8();
  }

  else
  {
    v72 = OUTLINED_FUNCTION_26_34();
    v73(v72);
    OUTLINED_FUNCTION_94();
    OUTLINED_FUNCTION_0_104();
    sub_1937D05A4(v74, v75);
    OUTLINED_FUNCTION_60_23();
    sub_19393C540();
    v76 = OUTLINED_FUNCTION_41_25();
    v77(v76);
  }

  OUTLINED_FUNCTION_146_11();
  if (v60)
  {
    OUTLINED_FUNCTION_86_14();
    sub_19393CAD0();
    OUTLINED_FUNCTION_117_17();
  }

  else
  {
    OUTLINED_FUNCTION_95_8();
  }

  OUTLINED_FUNCTION_146_11();
  if (v60)
  {
    OUTLINED_FUNCTION_86_14();
    sub_19393CAD0();
    OUTLINED_FUNCTION_117_17();
  }

  else
  {
    OUTLINED_FUNCTION_95_8();
  }

  OUTLINED_FUNCTION_91_16();
  if (v32)
  {
    OUTLINED_FUNCTION_95_8();
  }

  else
  {
    OUTLINED_FUNCTION_94();
    sub_19393CAE0();
  }

  OUTLINED_FUNCTION_32_34();
  if (v32)
  {
    OUTLINED_FUNCTION_95_8();
  }

  else
  {
    OUTLINED_FUNCTION_43_22();
    OUTLINED_FUNCTION_13_57();
    v78 = MomentsEventData.AppEntryEventType.rawValue.getter();
    MEMORY[0x193B18030](v78);
  }

  OUTLINED_FUNCTION_146_11();
  if (v60)
  {
    OUTLINED_FUNCTION_86_14();
    sub_19393CAD0();
    OUTLINED_FUNCTION_117_17();
  }

  else
  {
    OUTLINED_FUNCTION_95_8();
  }

  sub_193448804(v0 + v30[41], v154, &qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_58_21();
  if (v32)
  {
    OUTLINED_FUNCTION_95_8();
  }

  else
  {
    v79 = OUTLINED_FUNCTION_26_34();
    v80(v79);
    OUTLINED_FUNCTION_94();
    OUTLINED_FUNCTION_0_104();
    sub_1937D05A4(v81, v82);
    OUTLINED_FUNCTION_60_23();
    sub_19393C540();
    v83 = OUTLINED_FUNCTION_41_25();
    v84(v83);
  }

  sub_193448804(v0 + v30[42], v155, &qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_58_21();
  if (v32)
  {
    OUTLINED_FUNCTION_95_8();
  }

  else
  {
    v85 = OUTLINED_FUNCTION_26_34();
    v86(v85);
    OUTLINED_FUNCTION_94();
    OUTLINED_FUNCTION_0_104();
    sub_1937D05A4(v87, v88);
    OUTLINED_FUNCTION_60_23();
    sub_19393C540();
    v89 = OUTLINED_FUNCTION_41_25();
    v90(v89);
  }

  sub_193448804(v0 + v30[43], v156, &qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_58_21();
  if (v32)
  {
    OUTLINED_FUNCTION_95_8();
  }

  else
  {
    v91 = OUTLINED_FUNCTION_26_34();
    v92(v91);
    OUTLINED_FUNCTION_94();
    OUTLINED_FUNCTION_0_104();
    sub_1937D05A4(v93, v94);
    OUTLINED_FUNCTION_60_23();
    sub_19393C540();
    v95 = OUTLINED_FUNCTION_41_25();
    v96(v95);
  }

  OUTLINED_FUNCTION_91_16();
  if (v32)
  {
    OUTLINED_FUNCTION_95_8();
  }

  else
  {
    OUTLINED_FUNCTION_94();
    sub_19393CAE0();
  }

  OUTLINED_FUNCTION_91_16();
  if (v32)
  {
    OUTLINED_FUNCTION_95_8();
  }

  else
  {
    OUTLINED_FUNCTION_94();
    sub_19393CAE0();
  }

  OUTLINED_FUNCTION_32_34();
  if (v32)
  {
    OUTLINED_FUNCTION_95_8();
  }

  else
  {
    OUTLINED_FUNCTION_43_22();
    OUTLINED_FUNCTION_13_57();
    v97 = MomentsEventData.ClientActivityEventType.rawValue.getter();
    MEMORY[0x193B18030](v97);
  }

  OUTLINED_FUNCTION_146_11();
  if (v60)
  {
    OUTLINED_FUNCTION_86_14();
    sub_19393CAD0();
    OUTLINED_FUNCTION_117_17();
  }

  else
  {
    OUTLINED_FUNCTION_95_8();
  }

  sub_193448804(v0 + v30[48], v157, &qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_58_21();
  if (v32)
  {
    OUTLINED_FUNCTION_95_8();
  }

  else
  {
    v98 = OUTLINED_FUNCTION_26_34();
    v99(v98);
    OUTLINED_FUNCTION_94();
    OUTLINED_FUNCTION_0_104();
    sub_1937D05A4(v100, v101);
    OUTLINED_FUNCTION_60_23();
    sub_19393C540();
    v102 = OUTLINED_FUNCTION_41_25();
    v103(v102);
  }

  OUTLINED_FUNCTION_146_11();
  if (v60)
  {
    OUTLINED_FUNCTION_86_14();
    sub_19393CAD0();
    OUTLINED_FUNCTION_117_17();
  }

  else
  {
    OUTLINED_FUNCTION_95_8();
  }

  OUTLINED_FUNCTION_32_34();
  if (v32)
  {
    OUTLINED_FUNCTION_95_8();
  }

  else
  {
    OUTLINED_FUNCTION_43_22();
    OUTLINED_FUNCTION_13_57();
    v104 = MomentsEventData.PhotoSourceType.rawValue.getter();
    MEMORY[0x193B18030](v104);
  }

  OUTLINED_FUNCTION_32_34();
  if (v32)
  {
    OUTLINED_FUNCTION_95_8();
  }

  else
  {
    OUTLINED_FUNCTION_43_22();
    OUTLINED_FUNCTION_13_57();
    v105 = MomentsEventData.PhotoLibraryType.rawValue.getter();
    MEMORY[0x193B18030](v105);
  }

  OUTLINED_FUNCTION_97_12();
  if (!v32)
  {
    OUTLINED_FUNCTION_94();
  }

  sub_19393CAD0();
  OUTLINED_FUNCTION_97_12();
  if (!v32)
  {
    OUTLINED_FUNCTION_94();
  }

  sub_19393CAD0();
  OUTLINED_FUNCTION_97_12();
  if (!v32)
  {
    OUTLINED_FUNCTION_94();
  }

  sub_19393CAD0();
  OUTLINED_FUNCTION_97_12();
  if (!v32)
  {
    OUTLINED_FUNCTION_94();
  }

  sub_19393CAD0();
  OUTLINED_FUNCTION_97_12();
  if (!v32)
  {
    OUTLINED_FUNCTION_94();
  }

  sub_19393CAD0();
  sub_1937D0EE8();
  OUTLINED_FUNCTION_91_16();
  if (v32)
  {
    OUTLINED_FUNCTION_95_8();
  }

  else
  {
    OUTLINED_FUNCTION_94();
    sub_19393CAE0();
  }

  OUTLINED_FUNCTION_32_34();
  if (v32)
  {
    OUTLINED_FUNCTION_95_8();
  }

  else
  {
    OUTLINED_FUNCTION_43_22();
    OUTLINED_FUNCTION_13_57();
    v106 = MomentsEventData.RankingType.rawValue.getter();
    MEMORY[0x193B18030](v106);
  }

  OUTLINED_FUNCTION_32_34();
  if (v32)
  {
    OUTLINED_FUNCTION_95_8();
  }

  else
  {
    OUTLINED_FUNCTION_43_22();
    OUTLINED_FUNCTION_13_57();
    v107 = MomentsEventData.LabelConfidenceScoreType.rawValue.getter();
    MEMORY[0x193B18030](v107);
  }

  OUTLINED_FUNCTION_32_34();
  if (v32)
  {
    OUTLINED_FUNCTION_95_8();
  }

  else
  {
    OUTLINED_FUNCTION_43_22();
    OUTLINED_FUNCTION_13_57();
    v108 = MomentsEventData.TimeCorrelationScoreType.rawValue.getter();
    MEMORY[0x193B18030](v108);
  }

  OUTLINED_FUNCTION_32_34();
  if (v32)
  {
    OUTLINED_FUNCTION_95_8();
  }

  else
  {
    OUTLINED_FUNCTION_43_22();
    OUTLINED_FUNCTION_13_57();
    v109 = MomentsEventData.CallDurationTypes.rawValue.getter();
    MEMORY[0x193B18030](v109);
  }

  OUTLINED_FUNCTION_32_34();
  if (v32)
  {
    OUTLINED_FUNCTION_95_8();
  }

  else
  {
    OUTLINED_FUNCTION_43_22();
    OUTLINED_FUNCTION_13_57();
    v110 = MomentsEventData.InteractionCountTypes.rawValue.getter();
    MEMORY[0x193B18030](v110);
  }

  OUTLINED_FUNCTION_32_34();
  if (v32)
  {
    OUTLINED_FUNCTION_95_8();
  }

  else
  {
    OUTLINED_FUNCTION_43_22();
    OUTLINED_FUNCTION_13_57();
    v111 = MomentsEventData.BundleInteractionTypes.rawValue.getter();
    MEMORY[0x193B18030](v111);
  }

  OUTLINED_FUNCTION_32_34();
  if (v32)
  {
    OUTLINED_FUNCTION_95_8();
  }

  else
  {
    OUTLINED_FUNCTION_43_22();
    OUTLINED_FUNCTION_13_57();
    v112 = MomentsEventData.CallPlaceType.rawValue.getter();
    MEMORY[0x193B18030](v112);
  }

  OUTLINED_FUNCTION_32_34();
  if (v32)
  {
    OUTLINED_FUNCTION_95_8();
  }

  else
  {
    OUTLINED_FUNCTION_43_22();
    OUTLINED_FUNCTION_13_57();
    v113 = MomentsEventData.DistanceFromHomeType.rawValue.getter();
    MEMORY[0x193B18030](v113);
  }

  OUTLINED_FUNCTION_32_34();
  if (v32)
  {
    OUTLINED_FUNCTION_95_8();
  }

  else
  {
    OUTLINED_FUNCTION_43_22();
    OUTLINED_FUNCTION_13_57();
    v114 = MomentsEventData.AvailabilityType.rawValue.getter();
    MEMORY[0x193B18030](v114);
  }

  OUTLINED_FUNCTION_32_34();
  if (v32)
  {
    OUTLINED_FUNCTION_95_8();
  }

  else
  {
    OUTLINED_FUNCTION_43_22();
    OUTLINED_FUNCTION_13_57();
    v115 = MomentsEventData.AvailabilityType.rawValue.getter();
    MEMORY[0x193B18030](v115);
  }

  OUTLINED_FUNCTION_32_34();
  if (v32)
  {
    OUTLINED_FUNCTION_95_8();
  }

  else
  {
    OUTLINED_FUNCTION_43_22();
    OUTLINED_FUNCTION_13_57();
    v116 = MomentsEventData.MapItemSourceType.rawValue.getter();
    MEMORY[0x193B18030](v116);
  }

  OUTLINED_FUNCTION_32_34();
  if (v32)
  {
    OUTLINED_FUNCTION_95_8();
  }

  else
  {
    OUTLINED_FUNCTION_43_22();
    OUTLINED_FUNCTION_13_57();
    v117 = MomentsEventData.VisitPlaceTypes.rawValue.getter();
    MEMORY[0x193B18030](v117);
  }

  OUTLINED_FUNCTION_32_34();
  if (v32)
  {
    OUTLINED_FUNCTION_95_8();
  }

  else
  {
    OUTLINED_FUNCTION_43_22();
    OUTLINED_FUNCTION_13_57();
    v119 = MomentsEventData.PlaceInferenceGranularityType.rawValue.getter(v118);
    MEMORY[0x193B18030](v119);
  }

  OUTLINED_FUNCTION_32_34();
  if (v32)
  {
    OUTLINED_FUNCTION_95_8();
  }

  else
  {
    OUTLINED_FUNCTION_43_22();
    OUTLINED_FUNCTION_13_57();
    v120 = MomentsEventData.AnomalousType.rawValue.getter();
    MEMORY[0x193B18030](v120);
  }

  OUTLINED_FUNCTION_97_12();
  if (!v32)
  {
    OUTLINED_FUNCTION_94();
  }

  sub_19393CAD0();
  OUTLINED_FUNCTION_32_34();
  if (v32)
  {
    OUTLINED_FUNCTION_95_8();
  }

  else
  {
    OUTLINED_FUNCTION_43_22();
    OUTLINED_FUNCTION_13_57();
    v121 = MomentsEventData.EventBundle.BundleSuperType.rawValue.getter();
    MEMORY[0x193B18030](v121);
  }

  OUTLINED_FUNCTION_32_34();
  if (v32)
  {
    OUTLINED_FUNCTION_95_8();
  }

  else
  {
    OUTLINED_FUNCTION_43_22();
    OUTLINED_FUNCTION_13_57();
    v122 = MomentsEventData.EventBundle.BundleSubType.rawValue.getter();
    MEMORY[0x193B18030](v122);
  }

  OUTLINED_FUNCTION_97_12();
  if (!v32)
  {
    OUTLINED_FUNCTION_94();
  }

  sub_19393CAD0();
  OUTLINED_FUNCTION_32_34();
  if (v32)
  {
    OUTLINED_FUNCTION_95_8();
  }

  else
  {
    OUTLINED_FUNCTION_43_22();
    OUTLINED_FUNCTION_13_57();
    v123 = MomentsEventData.EventBundle.SummarizationGranularity.rawValue.getter();
    MEMORY[0x193B18030](v123);
  }

  OUTLINED_FUNCTION_97_12();
  if (!v32)
  {
    OUTLINED_FUNCTION_94();
  }

  sub_19393CAD0();
  v124 = OUTLINED_FUNCTION_139_12();
  sub_1934D11C8(v124, v125);
  v126 = OUTLINED_FUNCTION_139_12();
  sub_1934D11C8(v126, v127);
  sub_193448804(v0 + v30[81], v158, &qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_58_21();
  if (v32)
  {
    OUTLINED_FUNCTION_95_8();
  }

  else
  {
    v128 = OUTLINED_FUNCTION_26_34();
    v129(v128);
    OUTLINED_FUNCTION_94();
    OUTLINED_FUNCTION_0_104();
    sub_1937D05A4(v130, v131);
    OUTLINED_FUNCTION_60_23();
    sub_19393C540();
    (*(v42 + 8))(v9, v31);
  }

  v132 = OUTLINED_FUNCTION_139_12();
  sub_1937D0B0C(v132, v133);
  v134 = OUTLINED_FUNCTION_139_12();
  sub_1937D0868(v134, v135);
  v136 = (v0 + v30[84]);
  if (v136[105])
  {
    OUTLINED_FUNCTION_95_8();
  }

  else
  {
    memcpy(v164, v136, 0x69uLL);
    OUTLINED_FUNCTION_94();
    MomentsEventData.EventBundle.Place.hash(into:)();
  }

  v137 = OUTLINED_FUNCTION_139_12();
  sub_1937D05EC(v137, v138);
  v139 = OUTLINED_FUNCTION_139_12();
  sub_1934D11C8(v139, v140);
  v141 = (v0 + v30[87]);
  v142 = *v141;
  if (*v141 == 3)
  {
    OUTLINED_FUNCTION_95_8();
  }

  else
  {
    v143 = *(v141 + 16);
    v144 = v141[1];
    v164[0] = v142;
    v164[1] = v144;
    LOBYTE(v164[2]) = v143;
    OUTLINED_FUNCTION_94();
    MomentsEventData.EventBundle.ClusterMetadata.hash(into:)();
  }

  sub_1937D022C(v4);
  OUTLINED_FUNCTION_79_17();
  if (v32)
  {
    OUTLINED_FUNCTION_95_8();
  }

  else
  {
    OUTLINED_FUNCTION_86_14();
    sub_19393CAD0();
    v145 = OUTLINED_FUNCTION_138_10();
    MEMORY[0x193B18060](v145);
  }

  OUTLINED_FUNCTION_79_17();
  if (v32)
  {
    OUTLINED_FUNCTION_95_8();
  }

  else
  {
    OUTLINED_FUNCTION_86_14();
    sub_19393CAD0();
    v146 = OUTLINED_FUNCTION_138_10();
    MEMORY[0x193B18060](v146);
  }

  OUTLINED_FUNCTION_79_17();
  if (v32)
  {
    OUTLINED_FUNCTION_95_8();
  }

  else
  {
    OUTLINED_FUNCTION_86_14();
    sub_19393CAD0();
    v147 = OUTLINED_FUNCTION_138_10();
    MEMORY[0x193B18060](v147);
  }

  OUTLINED_FUNCTION_79_17();
  if (v32)
  {
    OUTLINED_FUNCTION_95_8();
  }

  else
  {
    OUTLINED_FUNCTION_86_14();
    sub_19393CAD0();
    v148 = OUTLINED_FUNCTION_138_10();
    MEMORY[0x193B18060](v148);
  }

  OUTLINED_FUNCTION_79_17();
  if (v32)
  {
    OUTLINED_FUNCTION_95_8();
  }

  else
  {
    OUTLINED_FUNCTION_86_14();
    sub_19393CAD0();
    v149 = OUTLINED_FUNCTION_138_10();
    MEMORY[0x193B18060](v149);
  }

  OUTLINED_FUNCTION_191_5(v163);
  OUTLINED_FUNCTION_191_5(v164);
  if (sub_1936EC8BC(v164) == 1)
  {
    OUTLINED_FUNCTION_95_8();
  }

  else
  {
    OUTLINED_FUNCTION_94();
    memcpy(v161, v163, 0xDAuLL);
    sub_19378E230(v161, v162);
    MomentsEventData.EventBundle.MetadataForRank.hash(into:)(v4);
    memcpy(v162, v163, 0xDAuLL);
    sub_1937D0FA0(v162);
  }

  OUTLINED_FUNCTION_116();
}

void static MomentsEventData.== infix(_:_:)()
{
  OUTLINED_FUNCTION_117();
  v1 = v0;
  v3 = v2;
  v185 = sub_19393BE00();
  OUTLINED_FUNCTION_0();
  v182 = v4;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5_1();
  v179 = v7 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  v9 = OUTLINED_FUNCTION_47(v8);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_15_8();
  v178 = v10;
  OUTLINED_FUNCTION_47_3();
  MEMORY[0x1EEE9AC00](v11);
  v181 = &v178 - v12;
  v184 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B968, &qword_193972430);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_15_8();
  v180 = v14;
  OUTLINED_FUNCTION_47_3();
  MEMORY[0x1EEE9AC00](v15);
  v183 = &v178 - v16;
  v189 = type metadata accessor for MomentsEventData.EventBundle(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_5_1();
  v186 = v19 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE42AE8, &qword_193995D00);
  OUTLINED_FUNCTION_47(v20);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v21);
  v187 = &v178 - v22;
  v188 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE42F78, &qword_193997CB0);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v178 - v24;
  v26 = type metadata accessor for MomentsEventData.Event(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_5_1();
  v30 = v29 - v28;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE42AF0, &unk_193997C80);
  OUTLINED_FUNCTION_47(v31);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v178 - v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE42F80, &qword_193997CB8);
  OUTLINED_FUNCTION_47(v35);
  OUTLINED_FUNCTION_3_0();
  v37 = MEMORY[0x1EEE9AC00](v36);
  v39 = &v178 - v38;
  v40 = *(v37 + 56);
  v190 = v3;
  sub_193448804(v3, &v178 - v38, &qword_1EAE42AF0, &unk_193997C80);
  v191 = v1;
  sub_193448804(v1, &v39[v40], &qword_1EAE42AF0, &unk_193997C80);
  OUTLINED_FUNCTION_6_3(v39, 1, v26);
  if (v41)
  {
    OUTLINED_FUNCTION_6_3(&v39[v40], 1, v26);
    if (v41)
    {
      sub_19344E6DC(v39, &qword_1EAE42AF0, &unk_193997C80);
      goto LABEL_11;
    }

LABEL_9:
    v42 = &qword_1EAE42F80;
    v43 = &qword_193997CB8;
    v44 = v39;
LABEL_21:
    sub_19344E6DC(v44, v42, v43);
    goto LABEL_22;
  }

  sub_193448804(v39, v34, &qword_1EAE42AF0, &unk_193997C80);
  OUTLINED_FUNCTION_6_3(&v39[v40], 1, v26);
  if (v41)
  {
    sub_1937D0FD0();
    goto LABEL_9;
  }

  sub_1937D1024(&v39[v40], v30, type metadata accessor for MomentsEventData.Event);
  static MomentsEventData.Event.== infix(_:_:)();
  v46 = v45;
  OUTLINED_FUNCTION_5_7();
  sub_1937D0FD0();
  OUTLINED_FUNCTION_246();
  sub_1937D0FD0();
  sub_19344E6DC(v39, &qword_1EAE42AF0, &unk_193997C80);
  if ((v46 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_11:
  v47 = type metadata accessor for MomentsEventData(0);
  v48 = v47[5];
  v49 = *(v188 + 48);
  v50 = v190;
  sub_193448804(v190 + v48, v25, &qword_1EAE42AE8, &qword_193995D00);
  v51 = v191;
  sub_193448804(v191 + v48, &v25[v49], &qword_1EAE42AE8, &qword_193995D00);
  OUTLINED_FUNCTION_6_3(v25, 1, v189);
  if (v41)
  {
    OUTLINED_FUNCTION_31(&v25[v49]);
    if (v41)
    {
      sub_19344E6DC(v25, &qword_1EAE42AE8, &qword_193995D00);
      goto LABEL_24;
    }

LABEL_19:
    v42 = &qword_1EAE42F78;
    v43 = &qword_193997CB0;
LABEL_20:
    v44 = v25;
    goto LABEL_21;
  }

  sub_193448804(v25, v187, &qword_1EAE42AE8, &qword_193995D00);
  OUTLINED_FUNCTION_31(&v25[v49]);
  if (v52)
  {
    sub_1937D0FD0();
    goto LABEL_19;
  }

  sub_1937D1024(&v25[v49], v186, type metadata accessor for MomentsEventData.EventBundle);
  static MomentsEventData.EventBundle.== infix(_:_:)();
  v54 = v53;
  sub_1937D0FD0();
  sub_1937D0FD0();
  sub_19344E6DC(v25, &qword_1EAE42AE8, &qword_193995D00);
  if ((v54 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_24:
  v55 = v47[6];
  v56 = *(v50 + v55);
  v57 = *(v51 + v55);
  if (v56 == 2)
  {
    if (v57 != 2)
    {
      goto LABEL_22;
    }
  }

  else
  {
    OUTLINED_FUNCTION_84_17();
    if (v41 || ((v58 ^ v59) & 1) != 0)
    {
      goto LABEL_22;
    }
  }

  v60 = v47[7];
  v61 = *(v50 + v60);
  v62 = *(v51 + v60);
  if (v61 == 2)
  {
    if (v62 != 2)
    {
      goto LABEL_22;
    }
  }

  else
  {
    OUTLINED_FUNCTION_84_17();
    if (v41 || ((v63 ^ v64) & 1) != 0)
    {
      goto LABEL_22;
    }
  }

  v65 = v47[8];
  v66 = *(v50 + v65 + 4);
  v67 = *(v51 + v65 + 4);
  if (v66)
  {
    if (!v67)
    {
      goto LABEL_22;
    }
  }

  else
  {
    OUTLINED_FUNCTION_258();
    if (v68)
    {
      goto LABEL_22;
    }
  }

  OUTLINED_FUNCTION_175_8();
  if (v70)
  {
    if ((v69 & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  else
  {
    if (v69)
    {
      goto LABEL_22;
    }

    v71 = OUTLINED_FUNCTION_9_72();
    if (!OUTLINED_FUNCTION_77_18(v71, v72, v73))
    {
      goto LABEL_22;
    }
  }

  OUTLINED_FUNCTION_175_8();
  if (v75)
  {
    if ((v74 & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  else
  {
    if (v74)
    {
      goto LABEL_22;
    }

    v76 = OUTLINED_FUNCTION_9_72();
    if (!OUTLINED_FUNCTION_77_18(v76, v77, v78))
    {
      goto LABEL_22;
    }
  }

  v79 = v47[11];
  v80 = v183;
  v81 = *(v184 + 48);
  sub_193448804(v50 + v79, v183, &qword_1EAE3A9E8, &qword_19394F800);
  v25 = v80;
  sub_193448804(v51 + v79, v80 + v81, &qword_1EAE3A9E8, &qword_19394F800);
  v82 = v185;
  OUTLINED_FUNCTION_6_3(v80, 1, v185);
  if (v41)
  {
    OUTLINED_FUNCTION_6_3(v80 + v81, 1, v82);
    if (v41)
    {
      sub_19344E6DC(v80, &qword_1EAE3A9E8, &qword_19394F800);
      goto LABEL_58;
    }

    goto LABEL_56;
  }

  sub_193448804(v80, v181, &qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_6_3(v80 + v81, 1, v82);
  if (v83)
  {
    v84 = OUTLINED_FUNCTION_246();
    v85(v84);
LABEL_56:
    v42 = &qword_1EAE3B968;
    v43 = &qword_193972430;
    goto LABEL_20;
  }

  v86 = v182;
  OUTLINED_FUNCTION_28_30();
  v87(v179, &v25[v81], v82);
  OUTLINED_FUNCTION_0_104();
  sub_1937D05A4(v88, v89);
  LODWORD(v189) = sub_19393C550();
  v90 = *(v86 + 8);
  v91 = OUTLINED_FUNCTION_5_7();
  v90(v91);
  v92 = OUTLINED_FUNCTION_246();
  v90(v92);
  sub_19344E6DC(v25, &qword_1EAE3A9E8, &qword_19394F800);
  if ((v189 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_58:
  v93 = v47[12];
  v94 = *(v184 + 48);
  v95 = v180;
  sub_193448804(v50 + v93, v180, &qword_1EAE3A9E8, &qword_19394F800);
  v96 = v51 + v93;
  v97 = v185;
  sub_193448804(v96, v95 + v94, &qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_6_3(v95, 1, v97);
  if (v41)
  {
    OUTLINED_FUNCTION_6_3(v95 + v94, 1, v97);
    if (v41)
    {
      sub_19344E6DC(v95, &qword_1EAE3A9E8, &qword_19394F800);
      goto LABEL_68;
    }

    goto LABEL_66;
  }

  sub_193448804(v95, v178, &qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_6_3(v95 + v94, 1, v97);
  if (v98)
  {
    v99 = OUTLINED_FUNCTION_246();
    v100(v99);
LABEL_66:
    v42 = &qword_1EAE3B968;
    v43 = &qword_193972430;
    v44 = v95;
    goto LABEL_21;
  }

  v101 = v182;
  OUTLINED_FUNCTION_28_30();
  v102 = v95 + v94;
  v103 = v179;
  v104(v179, v102, v97);
  OUTLINED_FUNCTION_0_104();
  sub_1937D05A4(v105, v106);
  v107 = sub_19393C550();
  v108 = *(v101 + 8);
  v108(v103, v97);
  v109 = OUTLINED_FUNCTION_246();
  (v108)(v109);
  sub_19344E6DC(v95, &qword_1EAE3A9E8, &qword_19394F800);
  if ((v107 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_68:
  OUTLINED_FUNCTION_174_6();
  if (v112)
  {
    if (!v110)
    {
      goto LABEL_22;
    }

    OUTLINED_FUNCTION_5(v111);
    v115 = v41 && v113 == v114;
    if (!v115 && (sub_19393CA30() & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  else if (v110)
  {
    goto LABEL_22;
  }

  OUTLINED_FUNCTION_174_6();
  if (v118)
  {
    if (!v116)
    {
      goto LABEL_22;
    }

    OUTLINED_FUNCTION_5(v117);
    v121 = v41 && v119 == v120;
    if (!v121 && (sub_19393CA30() & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  else if (v116)
  {
    goto LABEL_22;
  }

  OUTLINED_FUNCTION_67_14();
  if (v124)
  {
    if (!v122)
    {
      goto LABEL_22;
    }

    OUTLINED_FUNCTION_5(v123);
    v127 = v41 && v125 == v126;
    if (!v127 && (sub_19393CA30() & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  else if (v122)
  {
    goto LABEL_22;
  }

  OUTLINED_FUNCTION_67_14();
  if (v130)
  {
    if (!v128)
    {
      goto LABEL_22;
    }

    OUTLINED_FUNCTION_5(v129);
    v133 = v41 && v131 == v132;
    if (!v133 && (sub_19393CA30() & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  else if (v128)
  {
    goto LABEL_22;
  }

  OUTLINED_FUNCTION_67_14();
  if (v136)
  {
    if (!v134)
    {
      goto LABEL_22;
    }

    OUTLINED_FUNCTION_5(v135);
    v139 = v41 && v137 == v138;
    if (!v139 && (sub_19393CA30() & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  else if (v134)
  {
    goto LABEL_22;
  }

  OUTLINED_FUNCTION_67_14();
  if (v142)
  {
    if (!v140)
    {
      goto LABEL_22;
    }

    OUTLINED_FUNCTION_5(v141);
    v145 = v41 && v143 == v144;
    if (!v145 && (sub_19393CA30() & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  else if (v140)
  {
    goto LABEL_22;
  }

  OUTLINED_FUNCTION_164_9();
  if (v147)
  {
    if (!v146)
    {
      goto LABEL_22;
    }
  }

  else
  {
    OUTLINED_FUNCTION_258();
    if (v148)
    {
      goto LABEL_22;
    }
  }

  OUTLINED_FUNCTION_164_9();
  if (v150)
  {
    if (!v149)
    {
      goto LABEL_22;
    }
  }

  else
  {
    OUTLINED_FUNCTION_258();
    if (v151)
    {
      goto LABEL_22;
    }
  }

  v152 = v47[21];
  if (*(v190 + v152 + 9))
  {
    if ((*(v191 + v152 + 9) & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  else
  {
    if (*(v191 + v152 + 9))
    {
      goto LABEL_22;
    }

    v153 = OUTLINED_FUNCTION_9_72();
    if (!OUTLINED_FUNCTION_77_18(v153, v154, v155))
    {
      goto LABEL_22;
    }
  }

  OUTLINED_FUNCTION_47_29();
  if (v41)
  {
    OUTLINED_FUNCTION_113_14();
    if (!v41)
    {
      goto LABEL_22;
    }
  }

  else
  {
    OUTLINED_FUNCTION_84_17();
    if (v156)
    {
      goto LABEL_22;
    }

    OUTLINED_FUNCTION_112_15();
    if (v157)
    {
      goto LABEL_22;
    }
  }

  OUTLINED_FUNCTION_47_29();
  if (v41)
  {
    OUTLINED_FUNCTION_113_14();
    if (!v41)
    {
      goto LABEL_22;
    }
  }

  else
  {
    OUTLINED_FUNCTION_84_17();
    if (v158)
    {
      goto LABEL_22;
    }

    OUTLINED_FUNCTION_112_15();
    if (v159)
    {
      goto LABEL_22;
    }
  }

  OUTLINED_FUNCTION_47_29();
  if (v41)
  {
    OUTLINED_FUNCTION_113_14();
    if (!v41)
    {
      goto LABEL_22;
    }
  }

  else
  {
    OUTLINED_FUNCTION_84_17();
    if (v160)
    {
      goto LABEL_22;
    }

    OUTLINED_FUNCTION_112_15();
    if (v161)
    {
      goto LABEL_22;
    }
  }

  OUTLINED_FUNCTION_47_29();
  if (v41)
  {
    OUTLINED_FUNCTION_113_14();
    if (!v41)
    {
      goto LABEL_22;
    }
  }

  else
  {
    OUTLINED_FUNCTION_84_17();
    if (v162)
    {
      goto LABEL_22;
    }

    OUTLINED_FUNCTION_112_15();
    if (v163)
    {
      goto LABEL_22;
    }
  }

  OUTLINED_FUNCTION_47_29();
  if (v41)
  {
    OUTLINED_FUNCTION_113_14();
    if (!v41)
    {
      goto LABEL_22;
    }
  }

  else
  {
    OUTLINED_FUNCTION_84_17();
    if (v164)
    {
      goto LABEL_22;
    }

    OUTLINED_FUNCTION_112_15();
    if (v165)
    {
      goto LABEL_22;
    }
  }

  OUTLINED_FUNCTION_47_29();
  if (v41)
  {
    OUTLINED_FUNCTION_113_14();
    if (!v41)
    {
      goto LABEL_22;
    }
  }

  else
  {
    OUTLINED_FUNCTION_84_17();
    if (v166)
    {
      goto LABEL_22;
    }

    OUTLINED_FUNCTION_112_15();
    if (v167)
    {
      goto LABEL_22;
    }
  }

  OUTLINED_FUNCTION_47_29();
  if (v41)
  {
    OUTLINED_FUNCTION_113_14();
    if (!v41)
    {
      goto LABEL_22;
    }
  }

  else
  {
    OUTLINED_FUNCTION_84_17();
    if (v168)
    {
      goto LABEL_22;
    }

    OUTLINED_FUNCTION_112_15();
    if (v169)
    {
      goto LABEL_22;
    }
  }

  OUTLINED_FUNCTION_47_29();
  if (v41)
  {
    OUTLINED_FUNCTION_113_14();
    if (!v41)
    {
      goto LABEL_22;
    }
  }

  else
  {
    OUTLINED_FUNCTION_84_17();
    if (v170)
    {
      goto LABEL_22;
    }

    OUTLINED_FUNCTION_112_15();
    if (v171)
    {
      goto LABEL_22;
    }
  }

  OUTLINED_FUNCTION_47_29();
  if (v41)
  {
    OUTLINED_FUNCTION_113_14();
    if (!v41)
    {
      goto LABEL_22;
    }
  }

  else
  {
    OUTLINED_FUNCTION_84_17();
    if (v172)
    {
      goto LABEL_22;
    }

    OUTLINED_FUNCTION_112_15();
    if (v173)
    {
      goto LABEL_22;
    }
  }

  OUTLINED_FUNCTION_47_29();
  if (v41)
  {
    OUTLINED_FUNCTION_113_14();
    if (!v41)
    {
      goto LABEL_22;
    }
  }

  else
  {
    OUTLINED_FUNCTION_84_17();
    if (v174)
    {
      goto LABEL_22;
    }

    OUTLINED_FUNCTION_112_15();
    if (v175)
    {
      goto LABEL_22;
    }
  }

  OUTLINED_FUNCTION_47_29();
  if (v41)
  {
    OUTLINED_FUNCTION_113_14();
    if (!v41)
    {
      goto LABEL_22;
    }

    goto LABEL_212;
  }

  OUTLINED_FUNCTION_84_17();
  if (!v176)
  {
    OUTLINED_FUNCTION_112_15();
    if ((v177 & 1) == 0)
    {
LABEL_212:
      OUTLINED_FUNCTION_47_29();
    }
  }

LABEL_22:
  OUTLINED_FUNCTION_116();
}