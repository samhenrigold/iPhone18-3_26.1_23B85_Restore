unint64_t SearchRequest.kind.setter(uint64_t a1, uint64_t a2)
{
  result = sub_1B09AFBA0(*(v2 + 8), *(v2 + 16));
  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t static SearchRequest.__derived_struct_equals(_:_:)(int a1, uint64_t a2, unint64_t a3, int a4, uint64_t a5, unint64_t a6)
{
  if (a1 != a4)
  {
    return 0;
  }

  if ((a3 & 4) != 0)
  {
    if ((a6 & 4) != 0)
    {
      sub_1B0CE4BA0(a2, a5);
      if (v10)
      {
        return 1;
      }
    }
  }

  else if ((a6 & 4) == 0)
  {
    sub_1B0CE5080(a2, a5);
    if (v8 & 1) != 0 && (static SearchRequest.Predicate.__derived_enum_equals(_:_:)(a3, a6))
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_1B0CE6498(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  if ((v4 & 4) != 0)
  {
    if ((v7 & 4) != 0)
    {
      sub_1B0CE4BA0(v3, v6);
      if (v10)
      {
        return 1;
      }
    }
  }

  else if ((v7 & 4) == 0)
  {
    sub_1B0CE5080(v3, v6);
    if (v8 & 1) != 0 && (static SearchRequest.Predicate.__derived_enum_equals(_:_:)(v4, v7))
    {
      return 1;
    }
  }

  return 0;
}

uint64_t SearchRequest.ID.hashValue.getter(uint64_t a1)
{
  sub_1B0E46C28();
  sub_1B0E46C88();
  return sub_1B0E46CB8();
}

uint64_t SearchRequest.Predicate.Color.hashValue.getter(unsigned __int8 a1)
{
  sub_1B0E46C28();
  MEMORY[0x1B2728D70](a1);
  return sub_1B0E46CB8();
}

uint64_t SearchRequest.Predicate.Day.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  MEMORY[0x1B2728D70](a2);
  MEMORY[0x1B2728D70](a3);
  return MEMORY[0x1B2728D70](a4);
}

uint64_t SearchRequest.Predicate.Day.hashValue.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B0E46C28();
  MEMORY[0x1B2728D70](a1);
  MEMORY[0x1B2728D70](a2);
  MEMORY[0x1B2728D70](a3);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0CE6800()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_1B0E46C28();
  MEMORY[0x1B2728D70](v1);
  MEMORY[0x1B2728D70](v2);
  MEMORY[0x1B2728D70](v3);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0CE686C()
{
  v1 = v0[1];
  v2 = v0[2];
  MEMORY[0x1B2728D70](*v0);
  MEMORY[0x1B2728D70](v1);
  return MEMORY[0x1B2728D70](v2);
}

uint64_t sub_1B0CE68B4(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  sub_1B0E46C28();
  MEMORY[0x1B2728D70](v2);
  MEMORY[0x1B2728D70](v3);
  MEMORY[0x1B2728D70](v4);
  return sub_1B0E46CB8();
}

unint64_t SearchRequest.Predicate.hash(into:)(uint64_t a1, unint64_t a2)
{
  while (1)
  {
    switch(a2 >> 60)
    {
      case 1uLL:
        v16 = a2 & 0xFFFFFFFFFFFFFFFLL;
        v7 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v8 = *(v16 + 24);
        v9 = *(v16 + 32);
        v10 = 2;
        goto LABEL_25;
      case 2uLL:
        v5 = 3;
        goto LABEL_21;
      case 3uLL:
        v5 = 4;
        goto LABEL_21;
      case 4uLL:
        v13 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        MEMORY[0x1B2728D70](7);
        v12 = v13;
        return MEMORY[0x1B2728D70](v12);
      case 5uLL:
        v5 = 8;
        goto LABEL_21;
      case 6uLL:
        MEMORY[0x1B2728D70](9);
        _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

        return _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
      case 7uLL:
        v15 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        MEMORY[0x1B2728D70](10);
        sub_1B09AE83C(v15);
        SearchRequest.Predicate.hash(into:)(a1, v15);

        return sub_1B09AEA14(v15);
      case 8uLL:
        a2 &= 0xFFFFFFFFFFFFFFFuLL;
        goto LABEL_2;
      case 9uLL:
        v6 = a2 & 0xFFFFFFFFFFFFFFFLL;
        v7 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v8 = *(v6 + 24);
        v9 = *(v6 + 32);
        v10 = 13;
LABEL_25:
        MEMORY[0x1B2728D70](v10);
        MEMORY[0x1B2728D70](v7);
        MEMORY[0x1B2728D70](v8);
        v12 = v9;
        return MEMORY[0x1B2728D70](v12);
      case 0xAuLL:
        v5 = 14;
        goto LABEL_21;
      case 0xBuLL:
        v5 = 15;
LABEL_21:
        MEMORY[0x1B2728D70](v5);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

      case 0xCuLL:
        v11 = __ROR8__(a2 + 0x4000000000000000, 3);
        if (v11 > 1)
        {
          if (v11 == 2)
          {
            v12 = 6;
          }

          else
          {
            v12 = 12;
          }
        }

        else if (v11)
        {
          v12 = 5;
        }

        else
        {
          v12 = 1;
        }

        return MEMORY[0x1B2728D70](v12);
      default:
LABEL_2:
        v4 = *(a2 + 16);
        a2 = *(a2 + 24);
        MEMORY[0x1B2728D70]();
        SearchRequest.Predicate.hash(into:)(a1, v4);
        break;
    }
  }
}

uint64_t SearchRequest.Predicate.hashValue.getter(unint64_t a1)
{
  sub_1B0E46C28();
  SearchRequest.Predicate.hash(into:)(v3, a1);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0CE6BAC()
{
  v1 = *v0;
  sub_1B0E46C28();
  SearchRequest.Predicate.hash(into:)(v3, v1);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0CE6BFC(uint64_t a1)
{
  v2 = *v1;
  sub_1B0E46C28();
  SearchRequest.Predicate.hash(into:)(v4, v2);
  return sub_1B0E46CB8();
}

void *static SearchRequest.Predicate.and(_:)(void *result)
{
  v1 = result[2];
  if (v1 == 1)
  {
    v3 = result[4];
    v5 = v3;
    goto LABEL_10;
  }

  if (v1)
  {
    v2 = &result[v1];
    v3 = v2[2];
    v4 = v2[3];
    result = swift_allocObject();
    v5 = result;
    result[2] = v3;
    result[3] = v4;
    if (v1 != 2)
    {
      v6 = v1 - 3;
      v7 = v2 + 1;
      v8 = result;
      while (v1 - 2 >= v6 + 1)
      {
        if (v6 >= v1)
        {
          goto LABEL_12;
        }

        v9 = *v7--;
        v5 = swift_allocObject();
        v5[2] = v9;
        v5[3] = v8;
        result = sub_1B09AE83C(v9);
        --v6;
        v8 = v5;
        if (v6 == -1)
        {
          goto LABEL_8;
        }
      }

      __break(1u);
LABEL_12:
      __break(1u);
      goto LABEL_13;
    }

LABEL_8:
    sub_1B09AE83C(v4);
LABEL_10:
    sub_1B09AE83C(v3);
    return v5;
  }

LABEL_13:
  __break(1u);
  return result;
}

unint64_t static SearchRequest.Predicate.or(_:)(unint64_t result)
{
  v1 = *(result + 16);
  if (v1 == 1)
  {
    v3 = *(result + 32);
    v5 = v3;
    goto LABEL_10;
  }

  if (v1)
  {
    v2 = (result + 8 * v1);
    v3 = v2[2];
    v4 = v2[3];
    result = swift_allocObject();
    *(result + 16) = v3;
    *(result + 24) = v4;
    v5 = result | 0x8000000000000000;
    if (v1 != 2)
    {
      v6 = v1 - 3;
      v7 = v2 + 1;
      while (v1 - 2 >= v6 + 1)
      {
        if (v6 >= v1)
        {
          goto LABEL_12;
        }

        v8 = *v7--;
        v9 = swift_allocObject();
        *(v9 + 16) = v8;
        *(v9 + 24) = v5;
        result = sub_1B09AE83C(v8);
        v5 = v9 | 0x8000000000000000;
        if (--v6 == -1)
        {
          goto LABEL_8;
        }
      }

      __break(1u);
LABEL_12:
      __break(1u);
      goto LABEL_13;
    }

LABEL_8:
    sub_1B09AE83C(v4);
LABEL_10:
    sub_1B09AE83C(v3);
    return v5;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t SearchRequest.Predicate.Color.description.getter(unsigned __int8 a1)
{
  v1 = 6579570;
  v2 = 0x656C70727570;
  if (a1 != 5)
  {
    v2 = 2036429415;
  }

  v3 = 0x6E65657267;
  if (a1 != 3)
  {
    v3 = 1702194274;
  }

  if (a1 <= 4u)
  {
    v2 = v3;
  }

  v4 = 0x65676E61726FLL;
  if (a1 != 1)
  {
    v4 = 0x776F6C6C6579;
  }

  if (a1)
  {
    v1 = v4;
  }

  if (a1 <= 2u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1B0CE6EFC()
{
  v1 = *v0;
  v2 = 6579570;
  v3 = 0x656C70727570;
  if (v1 != 5)
  {
    v3 = 2036429415;
  }

  v4 = 0x6E65657267;
  if (v1 != 3)
  {
    v4 = 1702194274;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x65676E61726FLL;
  if (v1 != 1)
  {
    v5 = 0x776F6C6C6579;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t SearchRequest.Predicate.Day.description.getter()
{
  v3 = sub_1B0E469C8();
  MEMORY[0x1B2726E80](45, 0xE100000000000000);
  v0 = sub_1B0E469C8();
  MEMORY[0x1B2726E80](v0);

  MEMORY[0x1B2726E80](45, 0xE100000000000000);
  v1 = sub_1B0E469C8();
  MEMORY[0x1B2726E80](v1);

  return v3;
}

uint64_t SearchRequest.Predicate.description.getter(unint64_t a1)
{
  switch(a1 >> 60)
  {
    case 1uLL:
      v24 = 0x2845524F464542;
      goto LABEL_37;
    case 2uLL:
      v7 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v8 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v25 = 1497648962;
      goto LABEL_40;
    case 3uLL:
      v7 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v8 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v9 = 2638659;
      goto LABEL_43;
    case 4uLL:
      v10 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v11 = 0xE600000000000000;
      v12 = 0x65676E61726FLL;
      v13 = 0xE600000000000000;
      v34 = 0x28524F4C4F43;
      v14 = 0x656C70727570;
      if (v10 != 5)
      {
        v14 = 2036429415;
        v13 = 0xE400000000000000;
      }

      v15 = 0xE500000000000000;
      v16 = 0x6E65657267;
      if (v10 != 3)
      {
        v16 = 1702194274;
        v15 = 0xE400000000000000;
      }

      if (*((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10) <= 4u)
      {
        v14 = v16;
        v13 = v15;
      }

      if (v10 != 1)
      {
        v12 = 0x776F6C6C6579;
        v11 = 0xE600000000000000;
      }

      if (!*((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10))
      {
        v12 = 6579570;
        v11 = 0xE300000000000000;
      }

      if (*((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10) <= 2u)
      {
        v17 = v12;
      }

      else
      {
        v17 = v14;
      }

      if (v10 <= 2)
      {
        v18 = v11;
      }

      else
      {
        v18 = v13;
      }

      v19 = v18;
      goto LABEL_38;
    case 5uLL:
      v7 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v8 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v25 = 1297044038;
LABEL_40:
      v9 = v25 & 0xFFFF0000FFFFFFFFLL | 0x2800000000;
      goto LABEL_43;
    case 6uLL:
      v28 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      v29 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
      v34 = 0x28524544414548;
      MEMORY[0x1B2726E80](*((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10), *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18));
      MEMORY[0x1B2726E80](61, 0xE100000000000000);
      MEMORY[0x1B2726E80](v28, v29);
      goto LABEL_45;
    case 7uLL:
      v26 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v34 = 542396238;
      sub_1B09AE83C(v26);
      v27 = SearchRequest.Predicate.description.getter(v26);
      MEMORY[0x1B2726E80](v27);

      sub_1B09AEA14(v26);
      return v34;
    case 8uLL:
      v31 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v30 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v32 = SearchRequest.Predicate.description.getter(v31);
      if (!(v31 >> 60))
      {
        MEMORY[0x1B2726E80](v32);

        MEMORY[0x1B2726E80](41, 0xE100000000000000);
        v32 = 40;
      }

      v34 = v32;
      MEMORY[0x1B2726E80](542265120, 0xE400000000000000);
      v4 = SearchRequest.Predicate.description.getter(v30);
      v6 = v33;
      if (v30 >> 60)
      {
        goto LABEL_6;
      }

      goto LABEL_5;
    case 9uLL:
      v24 = 0x2845434E4953;
LABEL_37:
      v34 = v24;
      v17 = SearchRequest.Predicate.Day.description.getter();
LABEL_38:
      MEMORY[0x1B2726E80](v17, v19);
      goto LABEL_44;
    case 0xAuLL:
      v7 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v8 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v9 = 0x285443454A425553;
      goto LABEL_43;
    case 0xBuLL:
      v7 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v8 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v9 = 2641748;
LABEL_43:
      v34 = v9;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      MEMORY[0x1B2726E80](v7, v8);
LABEL_44:

LABEL_45:
      MEMORY[0x1B2726E80](41, 0xE100000000000000);
      return v34;
    case 0xCuLL:
      v20 = __ROR8__(a1 + 0x4000000000000000, 3);
      v21 = 0x4445524557534E41;
      v22 = 0x44454747414C46;
      if (v20 != 2)
      {
        v22 = 1145128274;
      }

      if (v20)
      {
        v21 = 0x444554454C4544;
      }

      if (v20 <= 1)
      {
        return v21;
      }

      else
      {
        return v22;
      }

    default:
      v2 = *(a1 + 16);
      v1 = *(a1 + 24);
      v3 = SearchRequest.Predicate.description.getter(v2);
      if (v2 >> 60 == 8)
      {
        MEMORY[0x1B2726E80](v3);

        MEMORY[0x1B2726E80](41, 0xE100000000000000);
        v3 = 40;
      }

      v34 = v3;
      MEMORY[0x1B2726E80](0x20444E4120, 0xE500000000000000);
      v4 = SearchRequest.Predicate.description.getter(v1);
      v6 = v5;
      if (v1 >> 60 == 8)
      {
LABEL_5:
        MEMORY[0x1B2726E80]();

        MEMORY[0x1B2726E80](41, 0xE100000000000000);
        v4 = 40;
        v6 = 0xE100000000000000;
      }

LABEL_6:
      MEMORY[0x1B2726E80](v4, v6);

      return v34;
  }
}

BOOL SearchRequest.Predicate.requiresBody.getter(unint64_t a1)
{
  v1 = a1 >> 60;
  if ((a1 >> 60) > 2)
  {
    if (((1 << v1) & 0x1E78) != 0)
    {
      return 0;
    }

    if (v1 == 7)
    {
      v3 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      sub_1B09AE83C(v3);
LABEL_12:
      v6 = SearchRequest.Predicate.requiresBody.getter(v3);
      sub_1B09AEA14(v3);
      return v6;
    }

    a1 &= 0xFFFFFFFFFFFFFFFuLL;
LABEL_10:
    v4 = *(a1 + 16);
    v3 = *(a1 + 24);
    sub_1B09AE83C(v4);
    sub_1B09AE83C(v3);
    v5 = SearchRequest.Predicate.requiresBody.getter(v4);
    sub_1B09AEA14(v4);
    if (v5)
    {
      sub_1B09AEA14(v3);
      return 1;
    }

    goto LABEL_12;
  }

  if (!v1)
  {
    goto LABEL_10;
  }

  return v1 != 1;
}

uint64_t SearchRequest.RangesToExclude.ranges.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t SearchRequest.RangesToExclude.skipForMessageCount.setter(uint64_t result, char a2)
{
  *(v2 + 8) = result;
  *(v2 + 16) = a2 & 1;
  return result;
}

IMAP2Persistence::SearchRequest::RangesToExclude __swiftcall SearchRequest.RangesToExclude.init(ranges:skipForMessageCount:)(Swift::OpaquePointer ranges, Swift::Int_optional skipForMessageCount)
{
  skipForMessageCount.is_nil &= 1u;
  result.skipForMessageCount = skipForMessageCount;
  result.ranges = ranges;
  return result;
}

BOOL static SearchRequest.RangesToExclude.__derived_struct_equals(_:_:)(int32x2_t *a1, uint64_t a2, char a3, int32x2_t *a4, uint64_t a5, char a6)
{
  if ((sub_1B03D37DC(a1, a4) & 1) == 0)
  {
    return 0;
  }

  if ((a3 & 1) == 0)
  {
    return (a6 & 1) == 0 && a2 == a5;
  }

  return (a6 & 1) != 0;
}

unint64_t sub_1B0CE76F8()
{
  result = qword_1EB6DCC58;
  if (!qword_1EB6DCC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DCC58);
  }

  return result;
}

unint64_t sub_1B0CE7750()
{
  result = qword_1EB6E62E0;
  if (!qword_1EB6E62E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E62E0);
  }

  return result;
}

unint64_t sub_1B0CE77A8()
{
  result = qword_1EB6E62E8;
  if (!qword_1EB6E62E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E62E8);
  }

  return result;
}

unint64_t sub_1B0CE7800()
{
  result = qword_1EB6E62F0;
  if (!qword_1EB6E62F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E62F0);
  }

  return result;
}

uint64_t sub_1B0CE7854(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  if (sub_1B03D37DC(*a1, *a2))
  {
    if (v3)
    {
      if (v5)
      {
        return 1;
      }
    }

    else
    {
      if (v2 == v4)
      {
        v7 = v5;
      }

      else
      {
        v7 = 1;
      }

      if ((v7 & 1) == 0)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t get_enum_tag_for_layout_string_16IMAP2Persistence13SearchRequestV9PredicateO(void *a1)
{
  if (*a1 >> 62 == 3)
  {
    return (*a1 >> 3) + 12;
  }

  else
  {
    return *a1 >> 60;
  }
}

uint64_t sub_1B0CE78E4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 7 && *(a1 + 24))
  {
    return (*a1 + 7);
  }

  v3 = ((*(a1 + 16) >> 2) & 1 | (2 * (*(a1 + 16) & 3))) ^ 7;
  if (v3 >= 6)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1B0CE7934(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 6)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 7;
    if (a3 >= 7)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 7)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = 0;
      *(result + 16) = (-a2 >> 1) & 3 | (4 * (-a2 & 1));
    }
  }

  return result;
}

ValueMetadata *type metadata accessor for SearchRequest()
{
  return &type metadata for SearchRequest;
}

{
  return &type metadata for SearchRequest;
}

uint64_t sub_1B0CE79A0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 7 && *(a1 + 16))
  {
    return (*a1 + 7);
  }

  v3 = ((*(a1 + 8) >> 2) & 1 | (2 * (*(a1 + 8) & 3))) ^ 7;
  if (v3 >= 6)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1B0CE79F0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 6)
  {
    *result = a2 - 7;
    *(result + 8) = 0;
    if (a3 >= 7)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 7)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (-a2 >> 1) & 3 | (4 * (-a2 & 1));
    }
  }

  return result;
}

uint64_t sub_1B0CE7A80(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x74 && *(a1 + 8))
  {
    return (*a1 + 116);
  }

  v3 = ((*a1 >> 60) & 0x8F | (16 * (*a1 & 7))) ^ 0x7F;
  if (v3 >= 0x73)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1B0CE7AD0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x73)
  {
    *result = a2 - 116;
    if (a3 >= 0x74)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x74)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 4) & 7 | (8 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

void *sub_1B0CE7B20(void *result, uint64_t a2)
{
  if (a2 < 0xC)
  {
    *result = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 60);
  }

  else
  {
    *result = (8 * (a2 - 12)) | 0xC000000000000000;
  }

  return result;
}

uint64_t sub_1B0CE7B8C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B0CE7BF8(uint64_t a1, unsigned __int8 a2)
{
  sub_1B0E46C28();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

  return sub_1B0E46CB8();
}

uint64_t RemoteMailbox.SpecialUse.rawValue.getter(unsigned __int8 a1)
{
  v1 = 7105633;
  v2 = 1953391987;
  if (a1 != 5)
  {
    v2 = 0x6873617274;
  }

  v3 = 0x64656767616C66;
  if (a1 != 3)
  {
    v3 = 1802401130;
  }

  if (a1 <= 4u)
  {
    v2 = v3;
  }

  v4 = 0x65766968637261;
  if (a1 != 1)
  {
    v4 = 0x737466617264;
  }

  if (a1)
  {
    v1 = v4;
  }

  if (a1 <= 2u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1B0CE7DD8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s16IMAP2Persistence13RemoteMailboxV10SpecialUseO8rawValueAESgSS_tcfC_0(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1B0CE7E08(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 7105633;
  v5 = 0xE400000000000000;
  v6 = 1953391987;
  if (v2 != 5)
  {
    v6 = 0x6873617274;
    v5 = 0xE500000000000000;
  }

  v7 = 0xE700000000000000;
  v8 = 0x64656767616C66;
  if (v2 != 3)
  {
    v8 = 1802401130;
    v7 = 0xE400000000000000;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE700000000000000;
  v10 = 0x65766968637261;
  if (v2 != 1)
  {
    v10 = 0x737466617264;
    v9 = 0xE600000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 2);
  v11 = v2 == 2;
  v12 = v2 - 2 < 0;
  if (*v1 <= 2u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

uint64_t sub_1B0CE7ED4(uint64_t a1)
{
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
}

uint64_t _s16IMAP2Persistence13RemoteMailboxV10SpecialUseOyAESg12NIOIMAPCore20D4InfoV9AttributeVcfC_0(uint64_t a1, uint64_t a2)
{
  UseAttribute.all.unsafeMutableAddressor();
  v2 = sub_1B0E44B98();
  v4 = v3;
  if (v2 == sub_1B0E44B98() && v4 == v5)
  {

LABEL_8:

    return 0;
  }

  v7 = sub_1B0E46A78();

  if (v7)
  {
    goto LABEL_8;
  }

  UseAttribute.archive.unsafeMutableAddressor();
  v9 = sub_1B0E44B98();
  v11 = v10;
  if (v9 == sub_1B0E44B98() && v11 == v12)
  {

LABEL_13:

    return 1;
  }

  v13 = sub_1B0E46A78();

  if (v13)
  {
    goto LABEL_13;
  }

  UseAttribute.drafts.unsafeMutableAddressor();
  v14 = sub_1B0E44B98();
  v16 = v15;
  if (v14 == sub_1B0E44B98() && v16 == v17)
  {

LABEL_18:

    return 2;
  }

  v18 = sub_1B0E46A78();

  if (v18)
  {
    goto LABEL_18;
  }

  UseAttribute.flagged.unsafeMutableAddressor();
  v19 = sub_1B0E44B98();
  v21 = v20;
  if (v19 == sub_1B0E44B98() && v21 == v22)
  {

LABEL_23:

    return 3;
  }

  v23 = sub_1B0E46A78();

  if (v23)
  {
    goto LABEL_23;
  }

  UseAttribute.junk.unsafeMutableAddressor();
  v24 = sub_1B0E44B98();
  v26 = v25;
  if (v24 == sub_1B0E44B98() && v26 == v27)
  {

LABEL_28:

    return 4;
  }

  v28 = sub_1B0E46A78();

  if (v28)
  {
    goto LABEL_28;
  }

  UseAttribute.sent.unsafeMutableAddressor();
  v29 = sub_1B0E44B98();
  v31 = v30;
  if (v29 == sub_1B0E44B98() && v31 == v32)
  {

LABEL_33:

    return 5;
  }

  v33 = sub_1B0E46A78();

  if (v33)
  {
    goto LABEL_33;
  }

  UseAttribute.trash.unsafeMutableAddressor();
  v34 = sub_1B0E44B98();
  v36 = v35;
  if (v34 == sub_1B0E44B98() && v36 == v37)
  {

    return 6;
  }

  else
  {
    v38 = sub_1B0E46A78();

    if (v38)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

unint64_t _s16IMAP2Persistence13RemoteMailboxV10SpecialUseO8rawValueAESgSS_tcfC_0(uint64_t a1, uint64_t a2)
{
  v2 = sub_1B0E467E8();

  if (v2 >= 7)
  {
    return 7;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1B0CE8454()
{
  result = qword_1EB6E6330;
  if (!qword_1EB6E6330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6330);
  }

  return result;
}

unint64_t sub_1B0CE84AC()
{
  result = qword_1EB6E6338;
  if (!qword_1EB6E6338)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E6340, &qword_1B0EE5AA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6338);
  }

  return result;
}

uint64_t ConnectionStatus.Error.details.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for ConnectionStatus.Error(0) + 20);

  return sub_1B0CEA888(a1, v3);
}

uint64_t property wrapper backing initializer of ConnectionStatus.Error.backedOffUntil(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2990, &qword_1B0E9B060);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v7 - v3;
  sub_1B03B5C80(a1, &v7 - v3, &unk_1EB6E2990, &qword_1B0E9B060);
  v5 = OptionalMillisecondDate.init(wrappedValue:)(v4);
  sub_1B0398EFC(a1, &unk_1EB6E2990, &qword_1B0E9B060);
  return v5;
}

uint64_t ConnectionStatus.Error.backedOffUntil.getter@<X0>(uint64_t a1@<X8>)
{
  if (*(v1 + *(type metadata accessor for ConnectionStatus.Error(0) + 24) + 8))
  {
    v3 = 1;
  }

  else
  {
    sub_1B0E43018();
    v3 = 0;
  }

  v4 = sub_1B0E43108();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, v3, 1, v4);
}

uint64_t ConnectionStatus.Error.backedOffUntil.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2990, &qword_1B0E9B060);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - v3;
  sub_1B03B5C80(a1, &v6 - v3, &unk_1EB6E2990, &qword_1B0E9B060);
  type metadata accessor for ConnectionStatus.Error(0);
  OptionalMillisecondDate.wrappedValue.setter(v4);
  return sub_1B0398EFC(a1, &unk_1EB6E2990, &qword_1B0E9B060);
}

void (*ConnectionStatus.Error.backedOffUntil.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *a1 = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2990, &qword_1B0E9B060) - 8) + 64);
  if (MEMORY[0x1E69E7D08])
  {
    *(a1 + 8) = swift_coroFrameAlloc();
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    *(a1 + 8) = malloc(v3);
    v4 = malloc(v3);
  }

  v5 = v4;
  *(a1 + 16) = v4;
  v6 = *(type metadata accessor for ConnectionStatus.Error(0) + 24);
  *(a1 + 24) = v6;
  if (*(v1 + v6 + 8))
  {
    v7 = 1;
  }

  else
  {
    sub_1B0E43018();
    v7 = 0;
  }

  v8 = sub_1B0E43108();
  (*(*(v8 - 8) + 56))(v5, v7, 1, v8);
  return sub_1B0CE8994;
}

void sub_1B0CE8994(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2)
  {
    sub_1B03B5C80(*(a1 + 16), v2, &unk_1EB6E2990, &qword_1B0E9B060);
    OptionalMillisecondDate.wrappedValue.setter(v2);
    sub_1B0398EFC(v3, &unk_1EB6E2990, &qword_1B0E9B060);
  }

  else
  {
    OptionalMillisecondDate.wrappedValue.setter(*(a1 + 16));
  }

  free(v3);

  free(v2);
}

uint64_t ConnectionStatus.Error.init(kind:details:backedOffUntil:)@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v25 = a2;
  v24 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2990, &qword_1B0E9B060);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v23[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v23[-v10];
  v12 = type metadata accessor for ConnectionStatus.Error(0);
  v13 = *(v12 + 20);
  v14 = type metadata accessor for ConnectionStatus.Error.Details(0);
  (*(*(v14 - 8) + 56))(&a4[v13], 1, 1, v14);
  v15 = &a4[*(v12 + 24)];
  v16 = sub_1B0E43108();
  (*(*(v16 - 8) + 56))(v11, 1, 1, v16);
  sub_1B03B5C80(v11, v8, &unk_1EB6E2990, &qword_1B0E9B060);
  v17 = OptionalMillisecondDate.init(wrappedValue:)(v8);
  v19 = v18;
  sub_1B0398EFC(v11, &unk_1EB6E2990, &qword_1B0E9B060);
  *v15 = v17;
  v15[8] = v19 & 1;
  *a4 = v24;
  v20 = &a4[v13];
  v21 = v25;
  sub_1B0CEA8F8(v25, v20);
  sub_1B03B5C80(a3, v11, &unk_1EB6E2990, &qword_1B0E9B060);
  sub_1B03B5C80(v11, v8, &unk_1EB6E2990, &qword_1B0E9B060);
  OptionalMillisecondDate.wrappedValue.setter(v8);
  sub_1B0398EFC(a3, &unk_1EB6E2990, &qword_1B0E9B060);
  sub_1B0398EFC(v21, &qword_1EB6E39C0, &qword_1B0EA35E0);
  return sub_1B0398EFC(v11, &unk_1EB6E2990, &qword_1B0E9B060);
}

uint64_t ConnectionStatus.Error.Kind.hashValue.getter(unsigned __int8 a1)
{
  sub_1B0E46C28();
  MEMORY[0x1B2728D70](a1);
  return sub_1B0E46CB8();
}

uint64_t ConnectionStatus.Error.debugDescription.getter()
{
  v1 = v0;
  v2 = type metadata accessor for ConnectionStatus.Error.Details(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v63 = &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v62 = &v60 - v6;
  v7 = sub_1B0E43108();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v61 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v60 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6348, &qword_1B0EE5B00);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v60 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2990, &qword_1B0E9B060);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v60 - v17;
  v19 = type metadata accessor for ConnectionStatus.Error(0);
  if (v1[*(v19 + 24) + 8])
  {
    (*(v8 + 56))(v18, 1, 1, v7);
  }

  else
  {
    sub_1B0E43018();
    (*(v8 + 56))(v18, 0, 1, v7);
  }

  v20 = *(v13 + 48);
  sub_1B03B5C80(&v1[*(v19 + 20)], v15, &qword_1EB6E39C0, &qword_1B0EA35E0);
  sub_1B06BC984(v18, &v15[v20]);
  v21 = (*(v3 + 48))(v15, 1, v2);
  v22 = (*(v8 + 48))(&v15[v20], 1, v7);
  if (v21 != 1)
  {
    if (v22 != 1)
    {
      v27 = v63;
      sub_1B0CEB134(v15, v63, type metadata accessor for ConnectionStatus.Error.Details);
      v45 = &v15[v20];
      v46 = v61;
      (*(v8 + 32))(v61, v45, v7);
      v64 = 0;
      v65 = 0xE000000000000000;
      sub_1B0E46298();
      v47 = 0x80000001B0F2C750;
      v48 = 0xD000000000000014;
      v49 = *v1;
      v50 = 0xE700000000000000;
      v51 = 0x6B726F7774656ELL;
      if (v49 != 4)
      {
        v51 = 0x7245726573726170;
        v50 = 0xEB00000000726F72;
      }

      if (v49 != 3)
      {
        v48 = v51;
        v47 = v50;
      }

      v52 = 0xD000000000000011;
      v53 = 0x80000001B0F2F160;
      v54 = 0xD000000000000011;
      v55 = 0x80000001B0F2F140;
      if (v49 == 1)
      {
        v54 = 0x7245726576726573;
        v55 = 0xEB00000000726F72;
      }

      if (*v1)
      {
        v52 = v54;
        v53 = v55;
      }

      if (*v1 <= 2u)
      {
        v56 = v52;
      }

      else
      {
        v56 = v48;
      }

      if (*v1 <= 2u)
      {
        v57 = v53;
      }

      else
      {
        v57 = v47;
      }

      MEMORY[0x1B2726E80](v56, v57);

      MEMORY[0x1B2726E80](0x6C69617465647B20, 0xEB00000000203A73);
      sub_1B0E46508();
      MEMORY[0x1B2726E80](0x64656B636162202CLL, 0xED0000203A66664FLL);
      sub_1B0911708();
      v58 = sub_1B0E469C8();
      MEMORY[0x1B2726E80](v58);

      MEMORY[0x1B2726E80](125, 0xE100000000000000);
      v44 = v64;
      (*(v8 + 8))(v46, v7);
      goto LABEL_61;
    }

    v27 = v62;
    sub_1B0CEB134(v15, v62, type metadata accessor for ConnectionStatus.Error.Details);
    v64 = 0;
    v65 = 0xE000000000000000;
    sub_1B0E46298();
    v28 = *v1;
    if (v28 > 2)
    {
      v29 = 0xEB00000000726F72;
      if (v28 == 3)
      {
        v29 = 0x80000001B0F2C750;
        v30 = 0xD000000000000014;
      }

      else if (v28 == 4)
      {
        v29 = 0xE700000000000000;
        v30 = 0x6B726F7774656ELL;
      }

      else
      {
        v30 = 0x7245726573726170;
      }

      goto LABEL_60;
    }

    v29 = 0xEB00000000726F72;
    if (*v1)
    {
      v30 = 0x7245726576726573;
      if (v28 == 1)
      {
LABEL_60:
        MEMORY[0x1B2726E80](v30, v29);

        MEMORY[0x1B2726E80](0x6C69617465647B20, 0xEB00000000203A73);
        sub_1B0E46508();
        MEMORY[0x1B2726E80](125, 0xE100000000000000);
        v44 = v64;
LABEL_61:
        sub_1B0CEAD60(v27, type metadata accessor for ConnectionStatus.Error.Details);
        return v44;
      }

      v30 = 0xD000000000000011;
      v31 = "serverUnavailable";
    }

    else
    {
      v30 = 0xD000000000000011;
      v31 = "serverUnreachable";
    }

    v29 = (v31 - 32) | 0x8000000000000000;
    goto LABEL_60;
  }

  if (v22 == 1)
  {
    v64 = 0;
    v65 = 0xE000000000000000;
    v23 = *v1;
    if (v23 > 2)
    {
      v24 = 0xEB00000000726F72;
      if (v23 == 3)
      {
        v24 = 0x80000001B0F2C750;
        v25 = 0xD000000000000014;
      }

      else if (v23 == 4)
      {
        v24 = 0xE700000000000000;
        v25 = 0x6B726F7774656ELL;
      }

      else
      {
        v25 = 0x7245726573726170;
      }

      goto LABEL_58;
    }

    v24 = 0xEB00000000726F72;
    if (*v1)
    {
      v25 = 0x7245726576726573;
      if (v23 == 1)
      {
LABEL_58:
        MEMORY[0x1B2726E80](v25, v24);

        return v64;
      }

      v25 = 0xD000000000000011;
      v26 = "serverUnavailable";
    }

    else
    {
      v25 = 0xD000000000000011;
      v26 = "serverUnreachable";
    }

    v24 = (v26 - 32) | 0x8000000000000000;
    goto LABEL_58;
  }

  (*(v8 + 32))(v12, &v15[v20], v7);
  v64 = 0;
  v65 = 0xE000000000000000;
  sub_1B0E46298();
  v32 = 0x80000001B0F2C750;
  v33 = 0xD000000000000014;
  v34 = *v1;
  v35 = 0xE700000000000000;
  v36 = 0x6B726F7774656ELL;
  if (v34 != 4)
  {
    v36 = 0x7245726573726170;
    v35 = 0xEB00000000726F72;
  }

  if (v34 != 3)
  {
    v33 = v36;
    v32 = v35;
  }

  v37 = 0xD000000000000011;
  v38 = 0x80000001B0F2F160;
  v39 = 0xD000000000000011;
  v40 = 0x80000001B0F2F140;
  if (v34 == 1)
  {
    v39 = 0x7245726576726573;
    v40 = 0xEB00000000726F72;
  }

  if (*v1)
  {
    v37 = v39;
    v38 = v40;
  }

  if (*v1 <= 2u)
  {
    v41 = v37;
  }

  else
  {
    v41 = v33;
  }

  if (*v1 <= 2u)
  {
    v42 = v38;
  }

  else
  {
    v42 = v32;
  }

  MEMORY[0x1B2726E80](v41, v42);

  MEMORY[0x1B2726E80](0x64656B6361627B20, 0xED0000203A66664FLL);
  sub_1B0911708();
  v43 = sub_1B0E469C8();
  MEMORY[0x1B2726E80](v43);

  MEMORY[0x1B2726E80](125, 0xE100000000000000);
  v44 = v64;
  (*(v8 + 8))(v12, v7);
  return v44;
}

unint64_t ConnectionStatus.Error.Kind.description.getter(unsigned __int8 a1)
{
  v1 = 0x7245726576726573;
  v2 = 0xD000000000000014;
  v3 = 0x6B726F7774656ELL;
  if (a1 != 4)
  {
    v3 = 0x7245726573726170;
  }

  if (a1 != 3)
  {
    v2 = v3;
  }

  if (a1 != 1)
  {
    v1 = 0xD000000000000011;
  }

  if (!a1)
  {
    v1 = 0xD000000000000011;
  }

  if (a1 <= 2u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t ConnectionStatus.Error.Details.debugDescription.getter()
{
  v1 = v0;
  v2 = sub_1B0E441D8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v26[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for ConnectionStatus.Error.Details(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v26[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1B03C7450(v1, v8, type metadata accessor for ConnectionStatus.Error.Details);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    v13 = *v8;
    v14 = v8[1];
    v28 = 0;
    v29 = 0xE000000000000000;
    if (EnumCaseMultiPayload == 2)
    {
      sub_1B0E46298();

      v15 = 0x80000001B0F2F1A0;
      v16 = 0xD000000000000015;
    }

    else
    {
      sub_1B0E46298();

      v15 = 0x80000001B0F2F180;
      v16 = 0xD000000000000012;
    }

    v28 = v16;
    v29 = v15;
    MEMORY[0x1B2726E80](v13, v14);
    goto LABEL_10;
  }

  if (EnumCaseMultiPayload)
  {
    v17 = *v8;
    v18 = v8[1];
    v19 = v8[2];
    v20 = v8[3];
    v28 = 0;
    v29 = 0xE000000000000000;
    sub_1B0E46298();

    v28 = 0xD00000000000001DLL;
    v29 = 0x80000001B0F2F1C0;
    MEMORY[0x1B2726E80](v17, v18);

    MEMORY[0x1B2726E80](0x3A74786574202C27, 0xEA00000000002720);
    MEMORY[0x1B2726E80](v19, v20);
LABEL_10:

    v12 = 10535;
    goto LABEL_11;
  }

  v10 = (*(v3 + 88))(v8, v2);
  if (v10 == *MEMORY[0x1E6977D68])
  {
    (*(v3 + 96))(v8, v2);
    v11 = *v8;
    v28 = 0;
    v29 = 0xE000000000000000;
    sub_1B0E46298();
    MEMORY[0x1B2726E80](0xD000000000000014, 0x80000001B0F2F220);
    v27 = v11;
    sub_1B0E46508();
    v12 = 10537;
LABEL_11:
    MEMORY[0x1B2726E80](v12, 0xE200000000000000);
    return v28;
  }

  if (v10 == *MEMORY[0x1E6977D58])
  {
    (*(v3 + 96))(v8, v2);
    v22 = *v8;
    v28 = 0;
    v29 = 0xE000000000000000;
    sub_1B0E46298();

    v23 = "networkError(.dns(";
LABEL_16:
    v28 = 0xD000000000000012;
    v29 = (v23 - 32) | 0x8000000000000000;
    v27 = v22;
    v24 = sub_1B0E469C8();
    MEMORY[0x1B2726E80](v24);

    v12 = 10537;
    goto LABEL_11;
  }

  if (v10 == *MEMORY[0x1E6977D60])
  {
    (*(v3 + 96))(v8, v2);
    v22 = *v8;
    v28 = 0;
    v29 = 0xE000000000000000;
    sub_1B0E46298();

    v23 = "networkError(.tls(";
    goto LABEL_16;
  }

  (*(v3 + 32))(v5, v8, v2);
  v28 = 0;
  v29 = 0xE000000000000000;
  sub_1B0E46298();
  MEMORY[0x1B2726E80](0x456B726F7774656ELL, 0xED000028726F7272);
  sub_1B0E46508();
  MEMORY[0x1B2726E80](41, 0xE100000000000000);
  v25 = v28;
  (*(v3 + 8))(v5, v2);
  return v25;
}

uint64_t ConnectionStatus.Error.shouldPresentToUserForIMAP.getter()
{
  v1 = sub_1B0E441D8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = (&v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v21 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E39C0, &qword_1B0EA35E0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v21 - v12;
  v14 = type metadata accessor for ConnectionStatus.Error(0);
  sub_1B03B5C80(v0 + *(v14 + 20), v13, &qword_1EB6E39C0, &qword_1B0EA35E0);
  v15 = type metadata accessor for ConnectionStatus.Error.Details(0);
  v16 = 1;
  if ((*(*(v15 - 8) + 48))(v13, 1, v15) != 1)
  {
    sub_1B03B5C80(v13, v10, &qword_1EB6E39C0, &qword_1B0EA35E0);
    if (swift_getEnumCaseMultiPayload())
    {
      sub_1B0CEAD60(v10, type metadata accessor for ConnectionStatus.Error.Details);
    }

    else
    {
      (*(v2 + 32))(v7, v10, v1);
      if ((*(v2 + 88))(v7, v1) == *MEMORY[0x1E6977D68])
      {
        (*(v2 + 16))(v4, v7, v1);
        (*(v2 + 96))(v4, v1);
        v17 = *v4 - 52;
        v18 = v17 > 0x2C;
        v19 = 0xFFFFFFFFEF8uLL >> v17;
        if (v18)
        {
          v16 = 1;
        }

        else
        {
          v16 = v19;
        }
      }

      (*(v2 + 8))(v7, v1);
    }
  }

  sub_1B0398EFC(v13, &qword_1EB6E39C0, &qword_1B0EA35E0);
  return v16 & 1;
}

uint64_t NWError.shouldPresentToUserForIMAP.getter()
{
  v1 = v0;
  v2 = sub_1B0E441D8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v16 - v8;
  v10 = *(v3 + 16);
  v10(&v16 - v8, v1, v2, v7);
  if ((*(v3 + 88))(v9, v2) == *MEMORY[0x1E6977D68])
  {
    (v10)(v5, v9, v2);
    (*(v3 + 96))(v5, v2);
    v11 = *v5 - 52;
    v12 = v11 > 0x2C;
    v13 = 0xFFFFFFFFEF8uLL >> v11;
    if (v12)
    {
      v14 = 1;
    }

    else
    {
      v14 = v13;
    }
  }

  else
  {
    v14 = 1;
  }

  (*(v3 + 8))(v9, v2);
  return v14 & 1;
}

uint64_t _s16IMAP2Persistence16ConnectionStatusO5ErrorV7DetailsO21__derived_enum_equalsySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B0E441D8();
  v46 = *(v4 - 8);
  v47 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v45 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ConnectionStatus.Error.Details(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (&v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v44 - v10);
  MEMORY[0x1EEE9AC00](v12);
  v14 = (&v44 - v13);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v44 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6370, &unk_1B0EE5CE0);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v44 - v19;
  v22 = (&v44 + *(v21 + 56) - v19);
  sub_1B03C7450(a1, &v44 - v19, type metadata accessor for ConnectionStatus.Error.Details);
  sub_1B03C7450(a2, v22, type metadata accessor for ConnectionStatus.Error.Details);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_1B03C7450(v20, v11, type metadata accessor for ConnectionStatus.Error.Details);
      v25 = *v11;
      v24 = v11[1];
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        goto LABEL_22;
      }
    }

    else
    {
      sub_1B03C7450(v20, v8, type metadata accessor for ConnectionStatus.Error.Details);
      v25 = *v8;
      v24 = v8[1];
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        goto LABEL_22;
      }
    }

    if (v25 != *v22 || v24 != v22[1])
    {
LABEL_31:
      v42 = sub_1B0E46A78();

      if ((v42 & 1) == 0)
      {
        goto LABEL_32;
      }

LABEL_34:
      sub_1B0CEAD60(v20, type metadata accessor for ConnectionStatus.Error.Details);
      v35 = 1;
      return v35 & 1;
    }

LABEL_33:

    goto LABEL_34;
  }

  if (!EnumCaseMultiPayload)
  {
    sub_1B03C7450(v20, v17, type metadata accessor for ConnectionStatus.Error.Details);
    if (!swift_getEnumCaseMultiPayload())
    {
      v37 = v45;
      v36 = v46;
      v38 = v22;
      v39 = v47;
      (*(v46 + 32))(v45, v38, v47);
      v35 = MEMORY[0x1B27262E0](v17, v37);
      v40 = *(v36 + 8);
      v40(v37, v39);
      v40(v17, v39);
      sub_1B0CEAD60(v20, type metadata accessor for ConnectionStatus.Error.Details);
      return v35 & 1;
    }

    (*(v46 + 8))(v17, v47);
    goto LABEL_23;
  }

  sub_1B03C7450(v20, v14, type metadata accessor for ConnectionStatus.Error.Details);
  v27 = *v14;
  v26 = v14[1];
  v29 = v14[2];
  v28 = v14[3];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v31 = v22[2];
    v30 = v22[3];
    if (v27 == *v22 && v26 == v22[1])
    {
    }

    else
    {
      v33 = sub_1B0E46A78();

      if ((v33 & 1) == 0)
      {

LABEL_32:
        sub_1B0CEAD60(v20, type metadata accessor for ConnectionStatus.Error.Details);
        goto LABEL_24;
      }
    }

    if (v29 != v31 || v28 != v30)
    {
      goto LABEL_31;
    }

    goto LABEL_33;
  }

LABEL_22:

LABEL_23:
  sub_1B0398EFC(v20, &qword_1EB6E6370, &unk_1B0EE5CE0);
LABEL_24:
  v35 = 0;
  return v35 & 1;
}

BOOL _s16IMAP2Persistence16ConnectionStatusO5ErrorV23__derived_struct_equalsySbAE_AEtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = type metadata accessor for ConnectionStatus.Error.Details(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E39C0, &qword_1B0EA35E0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v27 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6308, &unk_1B0EE59D0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v27 - v12;
  if (*a1 != *a2)
  {
    return 0;
  }

  v14 = type metadata accessor for ConnectionStatus.Error(0);
  v15 = a1;
  v16 = a2;
  v27 = v14;
  v28 = v15;
  v17 = *(v14 + 20);
  v18 = *(v11 + 48);
  sub_1B03B5C80(&v15[v17], v13, &qword_1EB6E39C0, &qword_1B0EA35E0);
  sub_1B03B5C80(&v16[v17], &v13[v18], &qword_1EB6E39C0, &qword_1B0EA35E0);
  v19 = *(v5 + 48);
  if (v19(v13, 1, v4) == 1)
  {
    if (v19(&v13[v18], 1, v4) == 1)
    {
      sub_1B0398EFC(v13, &qword_1EB6E39C0, &qword_1B0EA35E0);
      goto LABEL_10;
    }

LABEL_7:
    sub_1B0398EFC(v13, &qword_1EB6E6308, &unk_1B0EE59D0);
    return 0;
  }

  sub_1B03B5C80(v13, v10, &qword_1EB6E39C0, &qword_1B0EA35E0);
  if (v19(&v13[v18], 1, v4) == 1)
  {
    sub_1B0CEAD60(v10, type metadata accessor for ConnectionStatus.Error.Details);
    goto LABEL_7;
  }

  sub_1B0CEB134(&v13[v18], v7, type metadata accessor for ConnectionStatus.Error.Details);
  v21 = _s16IMAP2Persistence16ConnectionStatusO5ErrorV7DetailsO21__derived_enum_equalsySbAG_AGtFZ_0(v10, v7);
  sub_1B0CEAD60(v7, type metadata accessor for ConnectionStatus.Error.Details);
  sub_1B0CEAD60(v10, type metadata accessor for ConnectionStatus.Error.Details);
  sub_1B0398EFC(v13, &qword_1EB6E39C0, &qword_1B0EA35E0);
  if ((v21 & 1) == 0)
  {
    return 0;
  }

LABEL_10:
  v22 = *(v27 + 24);
  v23 = &v28[v22];
  v24 = v28[v22 + 8];
  v25 = &v16[v22];
  v26 = v16[v22 + 8];
  if ((v24 & 1) == 0)
  {
    if (*v23 != *v25)
    {
      v26 = 1;
    }

    return (v26 & 1) == 0;
  }

  return (v26 & 1) != 0;
}

uint64_t sub_1B0CEA888(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E39C0, &qword_1B0EA35E0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B0CEA8F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E39C0, &qword_1B0EA35E0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

BOOL _s16IMAP2Persistence16ConnectionStatusO21__derived_enum_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConnectionStatus.Error(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ConnectionStatus(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v27 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v27 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6368, &qword_1B0EE5CD8);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v27 - v17;
  v20 = &v27 + *(v19 + 56) - v17;
  sub_1B03C7450(a1, &v27 - v17, type metadata accessor for ConnectionStatus);
  sub_1B03C7450(a2, v20, type metadata accessor for ConnectionStatus);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_1B03C7450(v18, v12, type metadata accessor for ConnectionStatus);
      v22 = *v12;
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v23 = *(v12 + 2);
LABEL_15:
        if ((v23 | (v23 << 32)) == (*(v20 + 2) | (*(v20 + 2) << 32)))
        {
          v25 = sub_1B04520BC(v22, *v20);

          if (v25)
          {
LABEL_17:
            sub_1B0CEAD60(v18, type metadata accessor for ConnectionStatus);
            return 1;
          }
        }

        else
        {
        }

        sub_1B0CEAD60(v18, type metadata accessor for ConnectionStatus);
        return 0;
      }
    }

    else
    {
      sub_1B03C7450(v18, v15, type metadata accessor for ConnectionStatus);
      v22 = *v15;
      if (!swift_getEnumCaseMultiPayload())
      {
        v23 = *(v15 + 2);
        goto LABEL_15;
      }
    }

LABEL_20:
    sub_1B0398EFC(v18, &qword_1EB6E6368, &qword_1B0EE5CD8);
    return 0;
  }

  if (EnumCaseMultiPayload != 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        goto LABEL_20;
      }
    }

    else if (swift_getEnumCaseMultiPayload() != 4)
    {
      goto LABEL_20;
    }

    goto LABEL_17;
  }

  sub_1B03C7450(v18, v9, type metadata accessor for ConnectionStatus);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    sub_1B0CEAD60(v9, type metadata accessor for ConnectionStatus.Error);
    goto LABEL_20;
  }

  sub_1B0CEB134(v20, v6, type metadata accessor for ConnectionStatus.Error);
  v24 = _s16IMAP2Persistence16ConnectionStatusO5ErrorV23__derived_struct_equalsySbAE_AEtFZ_0(v9, v6);
  sub_1B0CEAD60(v6, type metadata accessor for ConnectionStatus.Error);
  sub_1B0CEAD60(v9, type metadata accessor for ConnectionStatus.Error);
  sub_1B0CEAD60(v18, type metadata accessor for ConnectionStatus);
  return v24;
}

uint64_t sub_1B0CEAD60(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1B0CEADC4()
{
  result = qword_1EB6E6350;
  if (!qword_1EB6E6350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6350);
  }

  return result;
}

unint64_t sub_1B0CEAE1C()
{
  result = qword_1EB6E6358;
  if (!qword_1EB6E6358)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E6360, &qword_1B0EE5B70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6358);
  }

  return result;
}

uint64_t sub_1B0CEAE80(uint64_t a1)
{
  result = type metadata accessor for ConnectionStatus.Error(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1B0CEAEEC(uint64_t a1)
{
  sub_1B0CEAF70(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1B0CEAF70(uint64_t a1)
{
  if (!qword_1EB6DCAE0)
  {
    type metadata accessor for ConnectionStatus.Error.Details(255);
    v1 = sub_1B0E45D88();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB6DCAE0);
    }
  }
}

void sub_1B0CEAFD8(uint64_t a1)
{
  sub_1B0E441D8();
  if (v1 <= 0x3F)
  {
    sub_1B0CEB074();
    if (v2 <= 0x3F)
    {
      sub_1B0CEB0D4();
      if (v3 <= 0x3F)
      {
        sub_1B0CEB104();
        if (v4 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

void sub_1B0CEB074()
{
  if (!qword_1EB6DB6D8)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB6DB6D8);
    }
  }
}

uint64_t sub_1B0CEB0D4()
{
  result = qword_1EB6DB6C0;
  if (!qword_1EB6DB6C0)
  {
    result = MEMORY[0x1E69E6158];
    atomic_store(MEMORY[0x1E69E6158], &qword_1EB6DB6C0);
  }

  return result;
}

uint64_t sub_1B0CEB104()
{
  result = qword_1EB6DB6D0;
  if (!qword_1EB6DB6D0)
  {
    result = MEMORY[0x1E69E6158];
    atomic_store(MEMORY[0x1E69E6158], &qword_1EB6DB6D0);
  }

  return result;
}

uint64_t sub_1B0CEB134(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t SyncRequest.mailboxes.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t SyncRequest.hash(into:)(__int128 *a1, char a2, uint64_t a3, char a4)
{
  v6 = a2 - 2;
  if ((a2 - 2) >= 3u)
  {
    MEMORY[0x1B2728D70](3);
    v6 = a2 & 1;
  }

  MEMORY[0x1B2728D70](v6);
  sub_1B0E46C68();
  if (a3)
  {
    sub_1B0CCEACC(a1, a3);
  }

  return sub_1B0E46C68();
}

uint64_t SyncRequest.hashValue.getter(char a1, uint64_t a2, char a3)
{
  sub_1B0E46C28();
  SyncRequest.hash(into:)(v7, a1, a2, a3);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0CEB380()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *v0;
  sub_1B0E46C28();
  SyncRequest.hash(into:)(v5, v3, v1, v2);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0CEB3F0(uint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *v1;
  sub_1B0E46C28();
  SyncRequest.hash(into:)(v6, v4, v2, v3);
  return sub_1B0E46CB8();
}

uint64_t SyncRequest.ID.hashValue.getter(uint64_t a1)
{
  sub_1B0E46C28();
  sub_1B0E46C88();
  return sub_1B0E46CB8();
}

uint64_t SyncRequest.Kind.BackFillPurpose.hashValue.getter(char a1)
{
  sub_1B0E46C28();
  MEMORY[0x1B2728D70](a1 & 1);
  return sub_1B0E46CB8();
}

uint64_t SyncRequest.Kind.hash(into:)(uint64_t a1, char a2)
{
  v2 = a2 - 2;
  if ((a2 - 2) >= 3u)
  {
    MEMORY[0x1B2728D70](3);
    v2 = a2 & 1;
  }

  return MEMORY[0x1B2728D70](v2);
}

uint64_t SyncRequest.Kind.hashValue.getter(char a1)
{
  sub_1B0E46C28();
  v2 = a1 - 2;
  if ((a1 - 2) >= 3u)
  {
    MEMORY[0x1B2728D70](3);
    v2 = a1 & 1;
  }

  MEMORY[0x1B2728D70](v2);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0CEB66C()
{
  v1 = *v0;
  sub_1B0E46C28();
  v2 = v1 - 2;
  if ((v1 - 2) >= 3)
  {
    MEMORY[0x1B2728D70](3);
    v2 = v1 & 1;
  }

  MEMORY[0x1B2728D70](v2);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0CEB6D0()
{
  v1 = *v0;
  v2 = v1 - 2;
  if ((v1 - 2) >= 3)
  {
    MEMORY[0x1B2728D70](3);
    v2 = v1 & 1;
  }

  return MEMORY[0x1B2728D70](v2);
}

uint64_t sub_1B0CEB718(uint64_t a1)
{
  v2 = *v1;
  sub_1B0E46C28();
  v3 = v2 - 2;
  if ((v2 - 2) >= 3)
  {
    MEMORY[0x1B2728D70](3);
    v3 = v2 & 1;
  }

  MEMORY[0x1B2728D70](v3);
  return sub_1B0E46CB8();
}

BOOL sub_1B0CEB788(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  switch(v2)
  {
    case 2:
      return v3 == 2;
    case 3:
      return v3 == 3;
    case 4:
      return v3 == 4;
  }

  if ((v3 - 2) < 3)
  {
    return 0;
  }

  return ((v3 ^ v2) & 1) == 0;
}

uint64_t SyncRequest.Kind.description.getter(char a1)
{
  switch(a1)
  {
    case 2:
      return 0x6369646F69726570;
    case 3:
      return 1752397168;
    case 4:
      return 0x74696E4972657375;
  }

  BYTE8(v3) = 0;
  sub_1B0E46298();
  MEMORY[0x1B2726E80](0xD00000000000001FLL, 0x80000001B0F2F240);
  *&v3 = a1 & 1;
  sub_1B0E46508();
  MEMORY[0x1B2726E80](41, 0xE100000000000000);
  return *(&v3 + 1);
}

void Set<>.makeNonEmpty()(uint64_t a1)
{
  if (*(a1 + 16))
  {
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  }

  else
  {
    sub_1B0CEBA30(&unk_1F2726B60);
  }
}

void Set<>.formNonEmpty()()
{
  v1 = *v0;
  if (!*(*v0 + 16))
  {
    v2 = sub_1B0CEBA30(&unk_1F2726B88);

    v1 = v2;
  }

  *v0 = v1;
}

uint64_t _s16IMAP2Persistence11SyncRequestV23__derived_struct_equalsySbAC_ACtFZ_0(unsigned __int8 a1, uint64_t a2, int a3, unsigned __int8 a4, uint64_t a5, int a6)
{
  switch(a1)
  {
    case 2u:
      if (a4 != 2)
      {
        return 0;
      }

      break;
    case 3u:
      if (a4 != 3)
      {
        return 0;
      }

      break;
    case 4u:
      if (a4 != 4)
      {
        return 0;
      }

      break;
    default:
      if (a4 - 2 < 3 || ((a4 ^ a1) & 1) != 0)
      {
        return 0;
      }

      break;
  }

  if (a2)
  {
    if (!a5)
    {
      return 0;
    }

    v6 = a6;
    v7 = a3;
    v8 = sub_1B03DDD84(a2, a5);
    a3 = v7;
    a6 = v6;
    if ((v8 & 1) == 0)
    {
      return 0;
    }

    return (a3 ^ a6 ^ 1) & 1;
  }

  if (!a5)
  {
    return (a3 ^ a6 ^ 1) & 1;
  }

  return 0;
}

uint64_t sub_1B0CEBA30(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4320, &unk_1B0EE5FB0);
    v3 = sub_1B0E46228();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (1)
    {
      v10 = *(v6 + 4 * v4);
      sub_1B0E46C28();
      sub_1B0E46C88();
      result = sub_1B0E46CB8();
      v12 = ~(-1 << *(v3 + 32));
      v13 = result & v12;
      v14 = (result & v12) >> 6;
      v15 = *(v5 + 8 * v14);
      v16 = 1 << (result & v12);
      v17 = *(v3 + 48);
      if ((v16 & v15) != 0)
      {
        while (*(v17 + 4 * v13) != v10)
        {
          v13 = (v13 + 1) & v12;
          v14 = v13 >> 6;
          v15 = *(v5 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v14) = v16 | v15;
        *(v17 + 4 * v13) = v10;
        v7 = *(v3 + 16);
        v8 = __OFADD__(v7, 1);
        v9 = v7 + 1;
        if (v8)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v9;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

unint64_t sub_1B0CEBB70()
{
  result = qword_1EB6E6378;
  if (!qword_1EB6E6378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6378);
  }

  return result;
}

unint64_t sub_1B0CEBBC4()
{
  result = qword_1EB6DCCA8;
  if (!qword_1EB6DCCA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DCCA8);
  }

  return result;
}

unint64_t sub_1B0CEBC1C()
{
  result = qword_1EB6E6380;
  if (!qword_1EB6E6380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6380);
  }

  return result;
}

unint64_t sub_1B0CEBC74()
{
  result = qword_1EB6DCCA0;
  if (!qword_1EB6DCCA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DCCA0);
  }

  return result;
}

unint64_t sub_1B0CEBCCC()
{
  result = qword_1EB6E6388;
  if (!qword_1EB6E6388)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E4BA8, &qword_1B0EC9118);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6388);
  }

  return result;
}

uint64_t sub_1B0CEBD30(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 17))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_1B0CEBD8C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SyncRequest.Kind(unsigned __int8 *a1, unsigned int a2)
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

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_20;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_20;
      }
    }

    return (*a1 | (v5 << 8)) - 4;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 4;
    }
  }

LABEL_20:
  v7 = *a1;
  if (v7 >= 2)
  {
    v8 = v7 - 1;
  }

  else
  {
    v8 = 0;
  }

  if (v8 >= 4)
  {
    return v8 - 3;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SyncRequest.Kind(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1B0CEC050(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

BOOL static WindowOfInterestSize.__derived_enum_equals(_:_:)(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if (a2)
  {
    return (a4 & 1) != 0;
  }

  if (a4)
  {
    return 0;
  }

  return a1 == a3;
}

uint64_t WindowOfInterestSize.hash(into:)(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    v3 = 0;
  }

  else
  {
    v3 = a2;
    MEMORY[0x1B2728D70](1);
  }

  return MEMORY[0x1B2728D70](v3, a2);
}

uint64_t WindowOfInterestSize.hashValue.getter(uint64_t a1, char a2)
{
  sub_1B0E46C28();
  v4 = 0;
  if ((a2 & 1) == 0)
  {
    MEMORY[0x1B2728D70](1);
    v4 = a1;
  }

  MEMORY[0x1B2728D70](v4);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0CEC198()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_1B0E46C28();
  v3 = 0;
  if ((v2 & 1) == 0)
  {
    MEMORY[0x1B2728D70](1);
    v3 = v1;
  }

  MEMORY[0x1B2728D70](v3);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0CEC1F8()
{
  if (v0[1])
  {
    v1 = 0;
  }

  else
  {
    v1 = *v0;
    MEMORY[0x1B2728D70](1);
  }

  return MEMORY[0x1B2728D70](v1);
}

uint64_t sub_1B0CEC240(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  sub_1B0E46C28();
  if (v3)
  {
    v2 = 0;
  }

  else
  {
    MEMORY[0x1B2728D70](1);
  }

  MEMORY[0x1B2728D70](v2);
  return sub_1B0E46CB8();
}

uint64_t WindowOfInterestSize.lowestSequenceNumber(messageCount:)(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
    return 1;
  }

  v3 = result - a2;
  if (__OFSUB__(result, a2))
  {
    __break(1u);
    goto LABEL_9;
  }

  v4 = __OFADD__(v3, 1);
  v5 = v3 + 1;
  if (v4)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  if ((v5 - 0x100000000) < 0xFFFFFFFF00000001)
  {
    return 1;
  }

  else
  {
    return v5;
  }
}

uint64_t WindowOfInterestSize.limit(serverNextUID:windowOfInterest:)(uint64_t a1, unint64_t a2, unsigned __int8 a3, uint64_t a4, unsigned __int8 a5)
{
  if (BYTE4(a1) & 1 | (a3 | a5) & 1)
  {
    return 0;
  }

  v6 = ~HIDWORD(a2) + a1;
  result = a4 - v6;
  if (__OFSUB__(a4, v6))
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1B0CEC31C()
{
  result = qword_1EB6E6390;
  if (!qword_1EB6E6390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6390);
  }

  return result;
}

uint64_t sub_1B0CEC380(char a1, char a2)
{
  if (a1)
  {
    v2 = 6581810;
  }

  else
  {
    v2 = 7631665;
  }

  if (a2)
  {
    v3 = 6581810;
  }

  else
  {
    v3 = 7631665;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_1B0E46A78();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_1B0CEC3F0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 3u)
  {
    v11 = 0xE800000000000000;
    v12 = 0xE800000000000000;
    v13 = 0x64656B72616D6E75;
    if (a1 != 2)
    {
      v13 = 0x74736978456E6F6ELL;
      v12 = 0xEB00000000746E65;
    }

    v14 = 0x64656B72616DLL;
    if (a1)
    {
      v11 = 0xE600000000000000;
    }

    else
    {
      v14 = 0x7463656C65536F6ELL;
    }

    if (a1 <= 1u)
    {
      v9 = v14;
    }

    else
    {
      v9 = v13;
    }

    if (v2 <= 1)
    {
      v10 = v11;
    }

    else
    {
      v10 = v12;
    }
  }

  else
  {
    v3 = 0xE600000000000000;
    v4 = 0x65746F6D6572;
    v5 = 0x646C696843736168;
    v6 = 0xEB000000006E6572;
    if (a1 != 7)
    {
      v5 = 0x6968436F4E736168;
      v6 = 0xED00006E6572646CLL;
    }

    if (a1 != 6)
    {
      v4 = v5;
      v3 = v6;
    }

    v7 = 0x697265666E496F6ELL;
    v8 = 0xEB0000000073726FLL;
    if (a1 != 4)
    {
      v7 = 0x6269726373627573;
      v8 = 0xEA00000000006465;
    }

    if (a1 <= 5u)
    {
      v9 = v7;
    }

    else
    {
      v9 = v4;
    }

    if (v2 <= 5)
    {
      v10 = v8;
    }

    else
    {
      v10 = v3;
    }
  }

  if (a2 <= 3u)
  {
    if (a2 <= 1u)
    {
      if (a2)
      {
        v17 = 0xE600000000000000;
        if (v9 != 0x64656B72616DLL)
        {
          goto LABEL_51;
        }
      }

      else
      {
        v17 = 0xE800000000000000;
        if (v9 != 0x7463656C65536F6ELL)
        {
          goto LABEL_51;
        }
      }

      goto LABEL_49;
    }

    if (a2 == 2)
    {
      v17 = 0xE800000000000000;
      if (v9 != 0x64656B72616D6E75)
      {
        goto LABEL_51;
      }

      goto LABEL_49;
    }

    v15 = 0x74736978456E6F6ELL;
    v16 = 7630437;
    goto LABEL_44;
  }

  if (a2 <= 5u)
  {
    if (a2 != 4)
    {
      v17 = 0xEA00000000006465;
      if (v9 != 0x6269726373627573)
      {
LABEL_51:
        v18 = sub_1B0E46A78();
        goto LABEL_52;
      }

      goto LABEL_49;
    }

    v15 = 0x697265666E496F6ELL;
    v16 = 7565935;
LABEL_44:
    v17 = v16 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
    if (v9 != v15)
    {
      goto LABEL_51;
    }

    goto LABEL_49;
  }

  if (a2 != 6)
  {
    if (a2 != 7)
    {
      v17 = 0xED00006E6572646CLL;
      if (v9 != 0x6968436F4E736168)
      {
        goto LABEL_51;
      }

      goto LABEL_49;
    }

    v15 = 0x646C696843736168;
    v16 = 7234930;
    goto LABEL_44;
  }

  v17 = 0xE600000000000000;
  if (v9 != 0x65746F6D6572)
  {
    goto LABEL_51;
  }

LABEL_49:
  if (v10 != v17)
  {
    goto LABEL_51;
  }

  v18 = 1;
LABEL_52:

  return v18 & 1;
}

uint64_t sub_1B0CEC6D8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE300000000000000;
  v4 = 0xE400000000000000;
  v5 = 1953391987;
  if (a1 != 5)
  {
    v5 = 0x6873617274;
    v4 = 0xE500000000000000;
  }

  v6 = 0xE700000000000000;
  v7 = 0x64656767616C66;
  if (a1 != 3)
  {
    v7 = 1802401130;
    v6 = 0xE400000000000000;
  }

  if (a1 <= 4u)
  {
    v5 = v7;
    v4 = v6;
  }

  v8 = 0xE700000000000000;
  v9 = 0x65766968637261;
  if (a1 != 1)
  {
    v9 = 0x737466617264;
    v8 = 0xE600000000000000;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v9 = 7105633;
  }

  if (a1 <= 2u)
  {
    v10 = v9;
  }

  else
  {
    v10 = v5;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v4;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v12 = 0xE700000000000000;
        if (v10 != 0x65766968637261)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v12 = 0xE600000000000000;
        if (v10 != 0x737466617264)
        {
          goto LABEL_39;
        }
      }
    }

    else
    {
      v12 = 0xE300000000000000;
      if (v10 != 7105633)
      {
        goto LABEL_39;
      }
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v12 = 0xE400000000000000;
      if (v10 != 1953391987)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = 0xE500000000000000;
      if (v10 != 0x6873617274)
      {
LABEL_39:
        v13 = sub_1B0E46A78();
        goto LABEL_40;
      }
    }
  }

  else if (a2 == 3)
  {
    v12 = 0xE700000000000000;
    if (v10 != 0x64656767616C66)
    {
      goto LABEL_39;
    }
  }

  else
  {
    v12 = 0xE400000000000000;
    if (v10 != 1802401130)
    {
      goto LABEL_39;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_39;
  }

  v13 = 1;
LABEL_40:

  return v13 & 1;
}

uint64_t WindowOfInterestSizes.MailboxType.hashValue.getter(unsigned __int8 a1)
{
  sub_1B0E46C28();
  MEMORY[0x1B2728D70](a1);
  return sub_1B0E46CB8();
}

uint64_t WindowOfInterestSizes.defaultValue.setter(uint64_t result, char a2)
{
  *(v2 + 8) = result;
  *(v2 + 16) = a2 & 1;
  return result;
}

uint64_t static WindowOfInterestSizes.__derived_struct_equals(_:_:)(unint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (sub_1B0CE526C(a1, a4))
  {
    if (a3)
    {
      if (a6)
      {
        return 1;
      }
    }

    else if ((a6 & 1) == 0 && a2 == a5)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t WindowOfInterestSizes.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  sub_1B0CECE08(a1, a2);
  if (a4)
  {
    a3 = 0;
  }

  else
  {
    MEMORY[0x1B2728D70](1);
  }

  return MEMORY[0x1B2728D70](a3);
}

uint64_t WindowOfInterestSizes.hashValue.getter(uint64_t a1, uint64_t a2, char a3)
{
  sub_1B0E46C28();
  sub_1B0CECE08(v8, a1);
  v6 = 0;
  if ((a3 & 1) == 0)
  {
    MEMORY[0x1B2728D70](1);
    v6 = a2;
  }

  MEMORY[0x1B2728D70](v6);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0CECAD0()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_1B0E46C28();
  sub_1B0CECE08(v6, v1);
  v4 = 0;
  if ((v3 & 1) == 0)
  {
    MEMORY[0x1B2728D70](1);
    v4 = v2;
  }

  MEMORY[0x1B2728D70](v4);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0CECB44(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  sub_1B0CECE08(a1, v2);
  if (v4)
  {
    v3 = 0;
  }

  else
  {
    MEMORY[0x1B2728D70](1);
  }

  return MEMORY[0x1B2728D70](v3);
}

uint64_t sub_1B0CECB9C(uint64_t a1)
{
  v3 = *v1;
  v2 = *(v1 + 8);
  v4 = *(v1 + 16);
  sub_1B0E46C28();
  sub_1B0CECE08(v6, v3);
  if (v4)
  {
    v2 = 0;
  }

  else
  {
    MEMORY[0x1B2728D70](1);
  }

  MEMORY[0x1B2728D70](v2);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0CECC10(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  if ((sub_1B0CE526C(*a1, *a2) & 1) == 0)
  {
    return 0;
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
      v7 = v5;
    }

    else
    {
      v7 = 1;
    }

    if (v7)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t WindowOfInterestSizes.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  if (!*a1)
  {
    return a3;
  }

  v6 = *(a1 + 16);
  v7 = *(a1 + 8);
  v8 = MailboxName.inbox.unsafeMutableAddressor();
  if (v7 | (v7 << 32)) == (*(v8 + 2) | (*(v8 + 2) << 32)) && (sub_1B04520BC(v4, *v8))
  {
    v9 = 1;
    if (!*(a2 + 16))
    {
      return a3;
    }

    goto LABEL_19;
  }

  if (v6 <= 3)
  {
    if (v6 <= 1 && v6)
    {

      goto LABEL_18;
    }

LABEL_14:
    v10 = sub_1B0E46A78();

    if ((v10 & 1) == 0)
    {
      goto LABEL_15;
    }

LABEL_18:
    v9 = 2;
    if (!*(a2 + 16))
    {
      return a3;
    }

    goto LABEL_19;
  }

  if (v6 <= 5 || v6 == 6)
  {
    goto LABEL_14;
  }

LABEL_15:
  v9 = 0;
  if (!*(a2 + 16))
  {
    return a3;
  }

LABEL_19:
  v11 = sub_1B0CBF490(v9);
  if (v12)
  {
    return *(*(a2 + 56) + 16 * v11);
  }

  return a3;
}

uint64_t sub_1B0CECE08(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  v4 = 0;
  v5 = a2 + 64;
  v6 = 1 << *(a2 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a2 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
LABEL_11:
    v12 = __clz(__rbit64(v8)) | (v4 << 6);
    v13 = *(*(a2 + 48) + v12);
    v14 = *(a2 + 56) + 16 * v12;
    v15 = *v14;
    v16 = *(v14 + 8);
    MEMORY[0x1B2728D70](v13);
    if (v16)
    {
      v15 = 0;
    }

    else
    {
      MEMORY[0x1B2728D70](1);
    }

    v8 &= v8 - 1;
    MEMORY[0x1B2728D70](v15);
    result = sub_1B0E46CB8();
    v3 ^= result;
  }

  while (1)
  {
    v11 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v11 >= v9)
    {
      return MEMORY[0x1B2728D70](v3);
    }

    v8 = *(v5 + 8 * v11);
    ++v4;
    if (v8)
    {
      v4 = v11;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1B0CECF40()
{
  result = qword_1EB6E6398;
  if (!qword_1EB6E6398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6398);
  }

  return result;
}

unint64_t sub_1B0CECF98()
{
  result = qword_1EB6E63A0;
  if (!qword_1EB6E63A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E63A0);
  }

  return result;
}

void ClientCommand.hash(into:)(__int128 *a1)
{
  v2 = v1;
  v113 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v112 = &v110 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v110 - v6;
  v8 = type metadata accessor for SearchReturnOption(0);
  v111 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v110 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v110 - v12;
  v14 = sub_1B0E43108();
  v110 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v110 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2990, &qword_1B0E9B060);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v110 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v110 - v21;
  v23 = type metadata accessor for ClientCommand(0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v110 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B0CF2250(v2, v25, type metadata accessor for ClientCommand);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      MEMORY[0x1B2728D70](4);
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

      return;
    case 2u:
      v59 = *v25;
      v60 = v113;
      MEMORY[0x1B2728D70](5);
      sub_1B0CEFE18(v60, v59);
      goto LABEL_30;
    case 3u:
      v70 = *(v25 + 2);
      v71 = *(v25 + 2);
      v72 = v113;
      MEMORY[0x1B2728D70](6);
      MEMORY[0x1B2728D70](v70 | (v70 << 32));

      sub_1B0CEFEC8(v72, v71);
      goto LABEL_30;
    case 4u:
      v49 = *(v25 + 2);
      v50 = 7;
      goto LABEL_40;
    case 5u:
      v49 = *(v25 + 2);
      v50 = 8;
      goto LABEL_40;
    case 6u:
      v49 = *(v25 + 2);
      v50 = 9;
LABEL_40:
      MEMORY[0x1B2728D70](v50);
      MEMORY[0x1B2728D70](v49 | (v49 << 32));
      goto LABEL_30;
    case 7u:
      v73 = *(v25 + 2);
      v74 = *(v25 + 6);
      MEMORY[0x1B2728D70](10);
      MEMORY[0x1B2728D70](v73 | (v73 << 32));

      MEMORY[0x1B2728D70](v74 | (v74 << 32));
      goto LABEL_30;
    case 8u:
      v93 = *v25;
      v94 = *(v25 + 2);
      v95 = *(v25 + 2);
      v96 = *(v25 + 6);
      v97 = *(v25 + 4);
      v98 = v113;
      MEMORY[0x1B2728D70](11);
      sub_1B0E46C68();
      if (v93)
      {
        MEMORY[0x1B2728D70](v94 | (v94 << 32));
      }

      sub_1B0E46C68();
      if (v95)
      {
        MEMORY[0x1B2728D70](v96 | (v96 << 32));
      }

      MEMORY[0x1B2728D70](*(v97 + 16));
      v105 = *(v97 + 16);
      if (v105)
      {
        v106 = 32;
        do
        {
          v107 = *(v97 + v106);
          v108 = *(v97 + v106 + 16);
          v109 = *(v97 + v106 + 48);
          *&v116[16] = *(v97 + v106 + 32);
          v117 = v109;
          v115 = v107;
          *v116 = v108;
          sub_1B0CF22B8(&v115, v114);
          ReturnOption.hash(into:)(v98);
          sub_1B0CF2314(&v115);
          v106 += 64;
          --v105;
        }

        while (v105);
      }

      goto LABEL_30;
    case 9u:
      v56 = *(v25 + 2);
      v57 = *(v25 + 2);
      v58 = v113;
      MEMORY[0x1B2728D70](12);
      MEMORY[0x1B2728D70](v56 | (v56 << 32));

      sub_1B0CEFC84(v58, v57);
      goto LABEL_30;
    case 0xAu:
      v85 = *(v25 + 2);
      v86 = *(v25 + 2);
      v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4BC0, &unk_1B0ED8640);
      v88 = *(v87 + 64);
      v89 = &v25[*(v87 + 80)];
      v90 = *v89;
      v111 = v89[1];
      v112 = v90;
      sub_1B03C60A4(&v25[v88], v22, &unk_1EB6E2990, &qword_1B0E9B060);
      v91 = v113;
      MEMORY[0x1B2728D70](13);
      MEMORY[0x1B2728D70](v85 | (v85 << 32));

      sub_1B0B0ADF0(v91, v86);

      sub_1B03B5C80(v22, v19, &unk_1EB6E2990, &qword_1B0E9B060);
      v92 = v110;
      if ((*(v110 + 48))(v19, 1, v14) == 1)
      {
        sub_1B0E46C68();
      }

      else
      {
        (*(v92 + 32))(v16, v19, v14);
        sub_1B0E46C68();
        sub_1B0CF2A4C(&qword_1EB6E63B8, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
        sub_1B0E447C8();
        (*(v92 + 8))(v16, v14);
      }

      v104 = v111;
      v103 = v112;
      sub_1B0E42F48();
      sub_1B0391D50(v103, v104);
      sub_1B0398EFC(v22, &unk_1EB6E2990, &qword_1B0E9B060);
      return;
    case 0xBu:
      v47 = *v25;
      v48 = 18;
      goto LABEL_38;
    case 0xCu:
      v42 = *v25;
      v51 = *(v25 + 1);
      v52 = v113;
      MEMORY[0x1B2728D70](19);
      SearchKey.hash(into:)(v52, v42);
      MEMORY[0x1B2728D70](*(v51 + 16));
      v53 = *(v51 + 16);
      if (v53)
      {
        v54 = v51 + ((*(v111 + 80) + 32) & ~*(v111 + 80));
        v55 = *(v111 + 72);
        do
        {
          sub_1B0CF2250(v54, v13, type metadata accessor for SearchReturnOption);
          SearchReturnOption.hash(into:)(v52);
          sub_1B0CF2368(v13, type metadata accessor for SearchReturnOption);
          v54 += v55;
          --v53;
        }

        while (v53);
      }

      goto LABEL_18;
    case 0xDu:
      v47 = *v25;
      v48 = 20;
LABEL_38:
      v84 = v113;
      MEMORY[0x1B2728D70](v48);
      SearchKey.hash(into:)(v84, v47);
      sub_1B0B239C8(v47);
      return;
    case 0xEu:
      v42 = *v25;
      v41 = *(v25 + 1);
      v43 = v113;
      MEMORY[0x1B2728D70](21);
      SearchKey.hash(into:)(v43, v42);
      MEMORY[0x1B2728D70](*(v41 + 16));
      v44 = *(v41 + 16);
      if (v44)
      {
        v45 = v41 + ((*(v111 + 80) + 32) & ~*(v111 + 80));
        v46 = *(v111 + 72);
        do
        {
          sub_1B0CF2250(v45, v10, type metadata accessor for SearchReturnOption);
          SearchReturnOption.hash(into:)(v43);
          sub_1B0CF2368(v10, type metadata accessor for SearchReturnOption);
          v45 += v46;
          --v44;
        }

        while (v44);
      }

LABEL_18:
      sub_1B0B239C8(v42);
LABEL_30:

      return;
    case 0xFu:
      v61 = &v25[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3FE0, &unk_1B0EC26C0) + 48)];
      v62 = *v61;
      v63 = *(v61 + 1);
      v64 = v61[16];
      sub_1B03C60A4(v25, v7, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      v65 = v113;
      MEMORY[0x1B2728D70](22);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
      sub_1B0B0D328();
      sub_1B0E447C8();
      MEMORY[0x1B2728D70](*(v62 + 16));
      v66 = *(v62 + 16);
      if (v66)
      {
        v67 = (v62 + 32);
        do
        {
          v68 = *v67;
          v69 = v67[1];
          *&v116[13] = *(v67 + 29);
          v115 = v68;
          *v116 = v69;
          sub_1B0CF21A0(&v115, v114);
          FetchAttribute.hash(into:)(v65);
          sub_1B0CF21FC(&v115);
          v67 = (v67 + 40);
          --v66;
        }

        while (v66);
      }

      sub_1B0E46C68();
      if (!v64)
      {
        MEMORY[0x1B2728DB0](v63);
      }

      sub_1B0398EFC(v7, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      return;
    case 0x10u:
      v33 = &v25[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4A00, &qword_1B0ECD770) + 48)];
      v34 = *v33;
      v35 = v33[1];
      v36 = *(v33 + 1);
      v37 = v112;
      sub_1B03C60A4(v25, v112, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      v38 = v113;
      MEMORY[0x1B2728D70](23);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
      sub_1B0B0D328();
      sub_1B0E447C8();
      if (v35)
      {
        v39 = 256;
      }

      else
      {
        v39 = 0;
      }

      StoreFlags.hash(into:)(v38, v39 | v34, v36);

      v40 = v37;
      goto LABEL_44;
    case 0x11u:
      v75 = *&v25[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E49F8, &qword_1B0EC7000) + 48) + 8];
      v76 = v112;
      sub_1B03C60A4(v25, v112, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      v77 = 24;
      goto LABEL_43;
    case 0x12u:
      v75 = *&v25[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E49F8, &qword_1B0EC7000) + 48) + 8];
      v76 = v112;
      sub_1B03C60A4(v25, v112, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      v77 = 25;
LABEL_43:
      MEMORY[0x1B2728D70](v77);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
      sub_1B0B0D328();
      sub_1B0E447C8();
      MEMORY[0x1B2728D70](v75 | (v75 << 32));

      v40 = v76;
LABEL_44:
      sub_1B0398EFC(v40, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      return;
    case 0x13u:
      v100 = *v25;
      v99 = *(v25 + 1);
      v101 = *(v25 + 2);
      v102 = v25[24];
      MEMORY[0x1B2728D70](26);
      MEMORY[0x1B2728D70](v100);
      if (v102 == 1)
      {
        goto LABEL_51;
      }

      sub_1B0E46C68();
      MEMORY[0x1B2728D70](v99);
      v32 = v101;
LABEL_56:
      MEMORY[0x1B2728D70](v32);
      break;
    case 0x14u:
      v78 = *(v25 + 1);
      v79 = *(v25 + 2);
      v80 = v113;
      MEMORY[0x1B2728D70](27);
      sub_1B0CF00E0(v80, v78, v79);

      goto LABEL_34;
    case 0x15u:
      v81 = *(v25 + 1);
      v115 = *v25;
      *v116 = v81;
      v82 = *(v25 + 3);
      *&v116[16] = *(v25 + 2);
      v117 = v82;
      v83 = v113;
      MEMORY[0x1B2728D70](28);
      PushRegistrationInfo.hash(into:)(v83);
      sub_1B0A1C37C();
      return;
    case 0x16u:
      v32 = 0;
      goto LABEL_56;
    case 0x17u:
      v32 = 1;
      goto LABEL_56;
    case 0x18u:
      v32 = 2;
      goto LABEL_56;
    case 0x19u:
      v32 = 14;
      goto LABEL_56;
    case 0x1Au:
      v32 = 15;
      goto LABEL_56;
    case 0x1Bu:
      v32 = 16;
      goto LABEL_56;
    case 0x1Cu:
      v32 = 17;
      goto LABEL_56;
    case 0x1Du:
      v32 = 29;
      goto LABEL_56;
    default:
      v26 = *(v25 + 2);
      v27 = *(v25 + 3);
      v28 = v25[38];
      v29 = *(v25 + 18);
      v30 = *(v25 + 8);
      v31 = v113;
      MEMORY[0x1B2728D70](3);
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

      if (v26)
      {
        sub_1B0E46C68();
        InitialResponse.hash(into:)(v31, v26, v27, (v30 | ((v29 | (v28 << 16)) << 32)) & 0xFFFFFFFFFFFFFFLL);
LABEL_34:
      }

      else
      {
LABEL_51:
        sub_1B0E46C68();
      }

      break;
  }
}

uint64_t ClientCommand.hashValue.getter()
{
  sub_1B0E46C28();
  ClientCommand.hash(into:)(v1);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0CEDCE4()
{
  sub_1B0E46C28();
  ClientCommand.hash(into:)(v1);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0CEDD28(uint64_t a1)
{
  sub_1B0E46C28();
  ClientCommand.hash(into:)(v2);
  return sub_1B0E46CB8();
}

uint64_t ClientCommand.FetchData.items.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t ClientCommand.FetchData.changedSince.setter(uint64_t result, char a2)
{
  *(v2 + 8) = result;
  *(v2 + 16) = a2 & 1;
  return result;
}

uint64_t ClientCommand.FetchData.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = *(a2 + 16);
  MEMORY[0x1B2728D70](v8);
  if (v8)
  {
    v9 = (a2 + 32);
    do
    {
      v10 = v9[1];
      v13 = *v9;
      v14[0] = v10;
      *(v14 + 13) = *(v9 + 29);
      sub_1B0CF21A0(&v13, v12);
      FetchAttribute.hash(into:)(a1);
      sub_1B0CF21FC(&v13);
      v9 = (v9 + 40);
      --v8;
    }

    while (v8);
  }

  if (a4)
  {
    return sub_1B0E46C68();
  }

  sub_1B0E46C68();
  return MEMORY[0x1B2728DB0](a3);
}

uint64_t ClientCommand.FetchData.hashValue.getter(uint64_t a1, uint64_t a2, char a3)
{
  sub_1B0E46C28();
  ClientCommand.FetchData.hash(into:)(v7, a1, a2, a3 & 1);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0CEDF28()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_1B0E46C28();
  ClientCommand.FetchData.hash(into:)(v5, v1, v2, v3);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0CEDF90(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  sub_1B0E46C28();
  ClientCommand.FetchData.hash(into:)(v6, v2, v3, v4);
  return sub_1B0E46CB8();
}

double static ClientCommand.uidFetch(messages:items:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3FE0, &unk_1B0EC26C0) + 48);
  sub_1B03B5C80(a1, a3, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  *v6 = a2;
  *(v6 + 8) = 0;
  *(v6 + 16) = 1;
  type metadata accessor for ClientCommand(0);
  swift_storeEnumTagMultiPayload();

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return result;
}

uint64_t ClientCommand.SelectOption.hashValue.getter()
{
  sub_1B0E46C28();
  MEMORY[0x1B2728D70](0);
  return sub_1B0E46CB8();
}

uint64_t ClientCommand.kind.getter()
{
  v1 = type metadata accessor for ClientCommand(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B0CF2250(v0, v3, type metadata accessor for ClientCommand);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = 0;
  switch(EnumCaseMultiPayload)
  {
    case 1:
      sub_1B0CF2368(v3, type metadata accessor for ClientCommand);
      result = 4;
      break;
    case 2:
      sub_1B0CF2368(v3, type metadata accessor for ClientCommand);
      result = 5;
      break;
    case 3:
      sub_1B0CF2368(v3, type metadata accessor for ClientCommand);
      result = 6;
      break;
    case 4:
      sub_1B0CF2368(v3, type metadata accessor for ClientCommand);
      result = 7;
      break;
    case 5:
      sub_1B0CF2368(v3, type metadata accessor for ClientCommand);
      result = 8;
      break;
    case 6:
      sub_1B0CF2368(v3, type metadata accessor for ClientCommand);
      result = 9;
      break;
    case 7:
      sub_1B0CF2368(v3, type metadata accessor for ClientCommand);
      result = 10;
      break;
    case 8:
      sub_1B0CF2368(v3, type metadata accessor for ClientCommand);
      result = 11;
      break;
    case 9:
      sub_1B0CF2368(v3, type metadata accessor for ClientCommand);
      result = 12;
      break;
    case 10:

      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4BC0, &unk_1B0ED8640);
      v7 = *(v6 + 64);
      sub_1B0391D50(*&v3[*(v6 + 80)], *&v3[*(v6 + 80) + 8]);
      sub_1B0398EFC(&v3[v7], &unk_1EB6E2990, &qword_1B0E9B060);
      result = 13;
      break;
    case 11:
      sub_1B0CF2368(v3, type metadata accessor for ClientCommand);
      result = 18;
      break;
    case 12:
      sub_1B0CF2368(v3, type metadata accessor for ClientCommand);
      result = 19;
      break;
    case 13:
      sub_1B0CF2368(v3, type metadata accessor for ClientCommand);
      result = 20;
      break;
    case 14:
      sub_1B0CF2368(v3, type metadata accessor for ClientCommand);
      result = 21;
      break;
    case 15:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3FE0, &unk_1B0EC26C0);

      sub_1B0398EFC(v3, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      result = 22;
      break;
    case 16:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4A00, &qword_1B0ECD770);

      sub_1B0398EFC(v3, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      result = 24;
      break;
    case 17:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E49F8, &qword_1B0EC7000);

      sub_1B0398EFC(v3, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      result = 25;
      break;
    case 18:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E49F8, &qword_1B0EC7000);

      sub_1B0398EFC(v3, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      result = 23;
      break;
    case 19:
      result = 29;
      break;
    case 20:
      sub_1B0CF2368(v3, type metadata accessor for ClientCommand);
      result = 26;
      break;
    case 21:
      sub_1B0CF2368(v3, type metadata accessor for ClientCommand);
      result = 27;
      break;
    case 22:
      return result;
    case 23:
      result = 1;
      break;
    case 24:
      result = 2;
      break;
    case 25:
      result = 14;
      break;
    case 26:
      result = 15;
      break;
    case 27:
      result = 16;
      break;
    case 28:
      result = 17;
      break;
    case 29:
      result = 28;
      break;
    default:
      sub_1B0CF2368(v3, type metadata accessor for ClientCommand);
      result = 3;
      break;
  }

  return result;
}

uint64_t ClientCommand.Kind.hashValue.getter(unsigned __int8 a1)
{
  sub_1B0E46C28();
  MEMORY[0x1B2728D70](a1);
  return sub_1B0E46CB8();
}

unint64_t ClientCommand.logIdentifier.getter()
{
  v1 = type metadata accessor for ClientCommand(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B0CF2250(v0, v3, type metadata accessor for ClientCommand);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = 0x494C494241504143;
  switch(EnumCaseMultiPayload)
  {
    case 1:
      sub_1B0CF2368(v3, type metadata accessor for ClientCommand);
      result = 0x4E49474F4CLL;
      break;
    case 2:
      sub_1B0CF2368(v3, type metadata accessor for ClientCommand);
      result = 0x454C42414E45;
      break;
    case 3:
      sub_1B0CF2368(v3, type metadata accessor for ClientCommand);
      result = 0x5443454C4553;
      break;
    case 4:
      sub_1B0CF2368(v3, type metadata accessor for ClientCommand);
      result = 0x454E494D415845;
      break;
    case 5:
      sub_1B0CF2368(v3, type metadata accessor for ClientCommand);
      result = 0x455441455243;
      break;
    case 6:
      sub_1B0CF2368(v3, type metadata accessor for ClientCommand);
      result = 0x4554454C4544;
      break;
    case 7:
      sub_1B0CF2368(v3, type metadata accessor for ClientCommand);
      result = 0x454D414E4552;
      break;
    case 8:
      sub_1B0CF2368(v3, type metadata accessor for ClientCommand);
      result = 1414744396;
      break;
    case 9:
      sub_1B0CF2368(v3, type metadata accessor for ClientCommand);
      result = 0x535554415453;
      break;
    case 10:

      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4BC0, &unk_1B0ED8640);
      v7 = *(v6 + 64);
      sub_1B0391D50(*&v3[*(v6 + 80)], *&v3[*(v6 + 80) + 8]);
      sub_1B0398EFC(&v3[v7], &unk_1EB6E2990, &qword_1B0E9B060);
      result = 0x444E45505041;
      break;
    case 11:
      sub_1B0CF2368(v3, type metadata accessor for ClientCommand);
      result = 0x5241455320444955;
      break;
    case 12:
      sub_1B0CF2368(v3, type metadata accessor for ClientCommand);
      result = 0xD000000000000015;
      break;
    case 13:
      sub_1B0CF2368(v3, type metadata accessor for ClientCommand);
      result = 0x484352414553;
      break;
    case 14:
    case 21:
      sub_1B0CF2368(v3, type metadata accessor for ClientCommand);
      result = 0xD000000000000011;
      break;
    case 15:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3FE0, &unk_1B0EC26C0);

      sub_1B0398EFC(v3, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      result = 0x4354454620444955;
      break;
    case 16:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4A00, &qword_1B0ECD770);

      sub_1B0398EFC(v3, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      result = 0x524F545320444955;
      break;
    case 17:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E49F8, &qword_1B0EC7000);

      sub_1B0398EFC(v3, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      result = 0x59504F4320444955;
      break;
    case 18:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E49F8, &qword_1B0EC7000);

      sub_1B0398EFC(v3, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      result = 0x45564F4D20444955;
      break;
    case 19:
      result = 0x4843544142444955;
      break;
    case 20:
      sub_1B0CF2368(v3, type metadata accessor for ClientCommand);
      result = 17481;
      break;
    case 22:
      return result;
    case 23:
      result = 1347374926;
      break;
    case 24:
      result = 0x534C545452415453;
      break;
    case 25:
      result = 0x43415053454D414ELL;
      break;
    case 26:
      result = 0x4B43454843;
      break;
    case 27:
      result = 0x45534F4C43;
      break;
    case 28:
      result = 0x45474E55505845;
      break;
    case 29:
      result = 0x53534552504D4F43;
      break;
    default:
      sub_1B0CF2368(v3, type metadata accessor for ClientCommand);
      result = 0x49544E4548545541;
      break;
  }

  return result;
}

uint64_t LoggableCommand.tag.setter(uint64_t result)
{
  *v1 = result;
  *(v1 + 4) = HIDWORD(result);
  return result;
}

uint64_t LoggableCommand.command.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for LoggableCommand(0) + 20);

  return sub_1B0CF23E8(a1, v3);
}

uint64_t LoggableCommand.init(tag:command:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = a1;
  *(a3 + 4) = HIDWORD(a1);
  v4 = a3 + *(type metadata accessor for LoggableCommand(0) + 20);

  return sub_1B0A90A00(a2, v4);
}

Swift::String __swiftcall LoggableCommand.makeDescriptionWithoutPII()()
{
  v1 = sub_1B0E443C8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v46 = v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v40 - v5;
  v7 = type metadata accessor for ClientCommand.Encoded(0);
  v8 = v7 - 8;
  MEMORY[0x1EEE9AC00](v7);
  v10 = (v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = v0 + *(type metadata accessor for LoggableCommand(0) + 20);
  v12 = *(v0 + 4);
  v47[16] = *v0;
  v48 = v12;
  v49 = v11;
  sub_1B0CFA5E8(sub_1B0CF244C, v47, 0x10000u, v10);
  if (*(*(v10 + *(v8 + 28)) + 16))
  {
    v45 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E63C0, &qword_1B0EE61E8);
    v13 = (*(v2 + 80) + 32) & ~*(v2 + 80);
    v44 = *(v2 + 72);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1B0EC1E70;
    v15 = *(v2 + 16);
    v42 = v1;
    v15(v14 + v13, v10, v1);
    v50 = v14;
    v16 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0CEF458(v16, sub_1B0D05474, MEMORY[0x1E69E7FD0]);
    v17 = v50;
    v18 = *(v50 + 16);
    if (v18)
    {
      v43 = v2 + 16;
      v41 = v10;
      v50 = MEMORY[0x1E69E7CC0];
      sub_1B041D32C(0, v18, 0);
      v19 = v50;
      v40[1] = v17;
      v20 = v17 + v13;
      v21 = (v2 + 8);
      v22 = v42;
      do
      {
        v23 = v45;
        v15(v45, v20, v22);
        v24 = v46;
        v25 = v15(v46, v23, v22);
        v26 = sub_1B0CF2460(v24, v25);
        v28 = v27;
        (*v21)(v23, v22);
        v50 = v19;
        v30 = *(v19 + 16);
        v29 = *(v19 + 24);
        if (v30 >= v29 >> 1)
        {
          sub_1B041D32C((v29 > 1), v30 + 1, 1);
          v22 = v42;
          v19 = v50;
        }

        *(v19 + 16) = v30 + 1;
        v31 = v19 + 16 * v30;
        *(v31 + 32) = v26;
        *(v31 + 40) = v28;
        v20 += v44;
        --v18;
      }

      while (v18);

      v10 = v41;
    }

    else
    {

      v19 = MEMORY[0x1E69E7CC0];
    }

    v50 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2A70, &qword_1B0E9B5F0);
    sub_1B03B11C4();
    v33 = sub_1B0E448E8();
    v35 = v36;
  }

  else
  {
    v32 = (*(v2 + 16))(v6, v10, v1);
    v33 = sub_1B0CF2460(v6, v32);
    v35 = v34;
  }

  sub_1B0CF2368(v10, type metadata accessor for ClientCommand.Encoded);
  v37 = v33;
  v38 = v35;
  result._object = v38;
  result._countAndFlagsBits = v37;
  return result;
}

double variable initialization expression of MessageData.bodyStructure@<D0>(uint64_t a1@<X8>)
{
  sub_1B0ACEC5C(v8);
  v2 = v16;
  *(a1 + 128) = v15;
  *(a1 + 144) = v2;
  *(a1 + 160) = v17;
  *(a1 + 176) = v18;
  v3 = v12;
  *(a1 + 64) = v11;
  *(a1 + 80) = v3;
  v4 = v14;
  *(a1 + 96) = v13;
  *(a1 + 112) = v4;
  v5 = v8[1];
  *a1 = v8[0];
  *(a1 + 16) = v5;
  result = *&v9;
  v7 = v10;
  *(a1 + 32) = v9;
  *(a1 + 48) = v7;
  return result;
}

double variable initialization expression of MessageData.envelope@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 112) = 0;
  result = 0.0;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

uint64_t variable initialization expression of MessageData.BodySection.data@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for MessageData.BodyData(0);
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t variable initialization expression of ServerResponseTranscoder.outputBuffer(double a1)
{
  sub_1B0E435B8();
}

uint64_t sub_1B0CEF458(uint64_t result, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v4 = *(result + 16);
  v5 = *v3;
  v6 = *(*v3 + 16);
  if (__OFADD__(v6, v4))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v9 = result;
  if (swift_isUniquelyReferenced_nonNull_native() && v6 + v4 <= *(v5 + 24) >> 1)
  {
    if (*(v9 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  v5 = a2();
  if (!*(v9 + 16))
  {
LABEL_10:

    if (!v4)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  v10 = (*(v5 + 24) >> 1) - *(v5 + 16);
  result = a3(0);
  if (v10 < v4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  swift_arrayInitWithCopy();

  if (!v4)
  {
LABEL_11:
    *v3 = v5;
    return result;
  }

  v11 = *(v5 + 16);
  v12 = __OFADD__(v11, v4);
  v13 = v11 + v4;
  if (!v12)
  {
    *(v5 + 16) = v13;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

char *sub_1B0CEF59C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B0CEF6A8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1B0CEF5BC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B0CEF7AC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1B0CEF5DC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B0CEF99C(a1, a2, a3, *v3, &qword_1EB6E6430, &qword_1B0EE6438, type metadata accessor for SelectParameter);
  *v3 = result;
  return result;
}

void *sub_1B0CEF620(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B0CEF99C(a1, a2, a3, *v3, &qword_1EB6E6420, &unk_1B0EE7320, type metadata accessor for CommandStreamPart);
  *v3 = result;
  return result;
}

void *sub_1B0CEF664(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B0CEF99C(a1, a2, a3, *v3, &qword_1EB6E6428, &qword_1B0EE6430, type metadata accessor for ParameterValue);
  *v3 = result;
  return result;
}

char *sub_1B0CEF6A8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6448, &unk_1B0EF9F70);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

void *sub_1B0CEF7AC(void *result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6438, &qword_1B0EFA5F0);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6440, &unk_1B0EF3530) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size_0(v13);
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
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6440, &unk_1B0EF3530) - 8);
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

void *sub_1B0CEF99C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size_0(v17);
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

char *sub_1B0CEFB78(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E42F8, &unk_1B0EC4E40);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1B0CEFC84(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x1B2728D70](v3);
  if (v3)
  {
    v5 = a2 + 32;
    do
    {
      ++v5;
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1B0CEFE18(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x1B2728D70](v3);
  if (v3)
  {
    v5 = (a2 + 56);
    do
    {
      v6 = *(v5 - 1);
      v7 = *v5;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
      sub_1B0E46C68();
      if (v7 != 1)
      {
        MEMORY[0x1B2728DB0](v6 >> 14);
      }

      v5 += 32;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1B0CEFEC8(__int128 *a1, uint64_t a2)
{
  result = sub_1B0E46CB8();
  v4 = 0;
  v5 = 0;
  v8 = *(a2 + 56);
  v7 = a2 + 56;
  v6 = v8;
  v9 = 1 << *(v7 - 24);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & v6;
  v12 = (v9 + 63) >> 6;
  while (v11)
  {
LABEL_4:
    v11 &= v11 - 1;
    sub_1B0E46C28();
    MEMORY[0x1B2728D70](0);
    result = sub_1B0E46CB8();
    v4 ^= result;
  }

  while (1)
  {
    v13 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v13 >= v12)
    {
      return MEMORY[0x1B2728D70](v4);
    }

    v11 = *(v7 + 8 * v13);
    ++v5;
    if (v11)
    {
      v5 = v13;
      goto LABEL_4;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0CEFFCC(uint64_t result, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  v6 = *(result + 16);
  if (v6 != *(a4 + 16))
  {
    return 0;
  }

  if (v6)
  {
    v11 = result == a4;
  }

  else
  {
    v11 = 1;
  }

  if (!v11)
  {
    v12 = (result + 32);
    v13 = (a4 + 32);
    while (1)
    {
      v14 = v12[1];
      v18 = *v12;
      v19[0] = v14;
      *(v19 + 13) = *(v12 + 29);
      if (!v6)
      {
        break;
      }

      v15 = v13[1];
      v20 = *v13;
      v21[0] = v15;
      *(v21 + 13) = *(v13 + 29);
      sub_1B0CF21A0(&v18, v17);
      sub_1B0CF21A0(&v20, v17);
      v16 = static FetchAttribute.__derived_enum_equals(_:_:)(&v18, &v20);
      sub_1B0CF21FC(&v20);
      result = sub_1B0CF21FC(&v18);
      if ((v16 & 1) == 0)
      {
        return 0;
      }

      v13 = (v13 + 40);
      v12 = (v12 + 40);
      if (!--v6)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
    goto LABEL_19;
  }

LABEL_10:
  if (a3)
  {
    return (a6 & 1) != 0;
  }

  if (a6)
  {
    return 0;
  }

  if (((a5 | a2) & 0x8000000000000000) == 0)
  {
    return a5 == a2;
  }

LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_1B0CF00E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  MEMORY[0x1B2728D70](v5);

  if (v5)
  {
    v7 = 0;
    v8 = (a3 + 40);
    v9 = a2 + 40;
    while (v7 < *(a2 + 16))
    {
      v10 = *v8;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
      sub_1B0E46C68();
      if (v10)
      {
        _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
      }

      ++v7;

      v8 += 2;
      v9 += 16;
      if (v5 == v7)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_8:
  }

  return result;
}

uint64_t _s13IMAP2Protocol13ClientCommandO21__derived_enum_equalsySbAC_ACtFZ_0(unint64_t a1, char *a2)
{
  v297 = a1;
  v298 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v278 = &v268 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v277 = &v268 - v5;
  MEMORY[0x1EEE9AC00](v6);
  v276 = &v268 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v275 = &v268 - v9;
  v274 = sub_1B0E43108();
  v272 = *(v274 - 8);
  MEMORY[0x1EEE9AC00](v274);
  v269 = &v268 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v271 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1720, &qword_1B0E99908);
  MEMORY[0x1EEE9AC00](v271);
  v273 = &v268 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2990, &qword_1B0E9B060);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v270 = &v268 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v279 = &v268 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v295 = &v268 - v17;
  v296 = type metadata accessor for ClientCommand(0);
  MEMORY[0x1EEE9AC00](v296);
  v290 = (&v268 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v19);
  v288 = &v268 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v289 = &v268 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v294 = &v268 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v293 = &v268 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v292 = &v268 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v291 = &v268 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v286 = (&v268 - v32);
  MEMORY[0x1EEE9AC00](v33);
  v285 = (&v268 - v34);
  MEMORY[0x1EEE9AC00](v35);
  v284 = (&v268 - v36);
  MEMORY[0x1EEE9AC00](v37);
  v283 = (&v268 - v38);
  MEMORY[0x1EEE9AC00](v39);
  v287 = &v268 - v40;
  MEMORY[0x1EEE9AC00](v41);
  v282 = &v268 - v42;
  MEMORY[0x1EEE9AC00](v43);
  v45 = &v268 - v44;
  MEMORY[0x1EEE9AC00](v46);
  v281 = &v268 - v47;
  MEMORY[0x1EEE9AC00](v48);
  v280 = &v268 - v49;
  MEMORY[0x1EEE9AC00](v50);
  v52 = &v268 - v51;
  MEMORY[0x1EEE9AC00](v53);
  v55 = &v268 - v54;
  MEMORY[0x1EEE9AC00](v56);
  v58 = &v268 - v57;
  MEMORY[0x1EEE9AC00](v59);
  v61 = (&v268 - v60);
  MEMORY[0x1EEE9AC00](v62);
  v64 = (&v268 - v63);
  MEMORY[0x1EEE9AC00](v65);
  v67 = &v268 - v66;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6450, &qword_1B0EE6440);
  MEMORY[0x1EEE9AC00](v68 - 8);
  v70 = &v268 - v69;
  v72 = &v268 + *(v71 + 56) - v69;
  sub_1B0CF2250(v297, &v268 - v69, type metadata accessor for ClientCommand);
  v73 = v298;
  v298 = v72;
  sub_1B0CF2250(v73, v72, type metadata accessor for ClientCommand);
  v299 = v70;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v82 = v299;
      sub_1B0CF2250(v299, v64, type metadata accessor for ClientCommand);
      v154 = *v64;
      v153 = v64[1];
      v156 = v64[2];
      v155 = v64[3];
      v157 = v298;
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        goto LABEL_124;
      }

      v158 = *v157;
      v159 = *(v157 + 1);
      v161 = *(v157 + 2);
      v160 = *(v157 + 3);
      if (v154 == v158 && v153 == v159)
      {
      }

      else
      {
        v253 = sub_1B0E46A78();

        if ((v253 & 1) == 0)
        {
          goto LABEL_147;
        }
      }

      if (v156 == v161 && v155 == v160)
      {

        goto LABEL_167;
      }

      v189 = sub_1B0E46A78();

      goto LABEL_81;
    case 2u:
      v82 = v299;
      sub_1B0CF2250(v299, v61, type metadata accessor for ClientCommand);
      v121 = *v61;
      v122 = v298;
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        goto LABEL_125;
      }

      v118 = sub_1B044DA4C(v121, *v122);
      goto LABEL_34;
    case 3u:
      v82 = v299;
      sub_1B0CF2250(v299, v58, type metadata accessor for ClientCommand);
      v136 = *v58;
      v137 = *(v58 + 2);
      v138 = v298;
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        goto LABEL_122;
      }

      v139 = *v138;
      v140 = *(v138 + 2);
      v141 = *(v138 + 2);
      if ((*(v58 + 2) | (*(v58 + 2) << 32)) != (v140 | (v140 << 32)))
      {
        goto LABEL_140;
      }

      v142 = sub_1B04520BC(v136, v139);

      if ((v142 & 1) == 0)
      {
        goto LABEL_147;
      }

      v118 = sub_1B0429CE0(v137, v141);
      goto LABEL_34;
    case 4u:
      v82 = v299;
      sub_1B0CF2250(v299, v55, type metadata accessor for ClientCommand);
      v105 = *v55;
      v106 = v298;
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        goto LABEL_125;
      }

      v107 = *(v55 + 2);
      goto LABEL_78;
    case 5u:
      v82 = v299;
      sub_1B0CF2250(v299, v52, type metadata accessor for ClientCommand);
      v105 = *v52;
      v106 = v298;
      if (swift_getEnumCaseMultiPayload() != 5)
      {
        goto LABEL_125;
      }

      v107 = *(v52 + 2);
      goto LABEL_78;
    case 6u:
      v82 = v299;
      v188 = v280;
      sub_1B0CF2250(v299, v280, type metadata accessor for ClientCommand);
      v105 = *v188;
      v106 = v298;
      if (swift_getEnumCaseMultiPayload() != 6)
      {
        goto LABEL_125;
      }

      v107 = *(v188 + 8);
LABEL_78:
      v148 = *v106;
      v151 = v107 | (v107 << 32);
      v152 = *(v106 + 2) | (*(v106 + 2) << 32);
      goto LABEL_79;
    case 7u:
      v82 = v299;
      v143 = v281;
      sub_1B0CF2250(v299, v281, type metadata accessor for ClientCommand);
      v144 = *v143;
      v105 = *(v143 + 16);
      v145 = *(v143 + 24);
      v146 = v298;
      if (swift_getEnumCaseMultiPayload() != 7)
      {
LABEL_124:

        goto LABEL_125;
      }

      v147 = *(v143 + 8);
      v148 = *(v146 + 2);
      if ((v147 | (v147 << 32)) != (*(v146 + 2) | (*(v146 + 2) << 32)))
      {

        goto LABEL_147;
      }

      v149 = *(v146 + 6);
      v150 = sub_1B04520BC(v144, *v146);

      if ((v150 & 1) == 0)
      {
        goto LABEL_147;
      }

      v151 = v145 | (v145 << 32);
      v152 = v149 | (v149 << 32);
LABEL_79:
      if (v151 != v152)
      {
        goto LABEL_147;
      }

      v189 = sub_1B04520BC(v105, v148);

LABEL_81:

      if (v189)
      {
        goto LABEL_167;
      }

      goto LABEL_148;
    case 8u:
      v82 = v299;
      sub_1B0CF2250(v299, v45, type metadata accessor for ClientCommand);
      v222 = *v45;
      v223 = *(v45 + 2);
      v224 = *(v45 + 2);
      v225 = *(v45 + 6);
      v226 = *(v45 + 4);
      v227 = v298;
      if (swift_getEnumCaseMultiPayload() != 8)
      {

        goto LABEL_125;
      }

      v228 = *v227;
      v229 = *(v227 + 2);
      v230 = *(v227 + 6);
      v231 = *(v227 + 4);
      if (v222)
      {
        if (v228)
        {
          if ((v223 | (v223 << 32)) == (*(v298 + 2) | (*(v298 + 2) << 32)))
          {
            v232 = sub_1B04520BC(v222, *v227);

            if (v232)
            {
LABEL_169:
              if (!v224)
              {
                v221 = v299;
                if (v229)
                {

                  goto LABEL_190;
                }

                goto LABEL_193;
              }

              if (v229)
              {
                if ((v225 | (v225 << 32)) == (v230 | (v230 << 32)))
                {
                  v260 = sub_1B04520BC(v224, v229);

                  v221 = v299;
                  if ((v260 & 1) == 0)
                  {

LABEL_190:

                    goto LABEL_200;
                  }

LABEL_193:
                  v96 = sub_1B0CFDC08(v226, v231);

LABEL_203:
                  sub_1B0CF2368(v221, type metadata accessor for ClientCommand);
                  return v96 & 1;
                }

                _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

                swift_bridgeObjectRelease_n();
              }

              else
              {
              }

              v221 = v299;
LABEL_200:
              v254 = v221;
LABEL_181:
              sub_1B0CF2368(v254, type metadata accessor for ClientCommand);
              goto LABEL_182;
            }
          }

          else
          {
            _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

            swift_bridgeObjectRelease_n();
          }
        }

        else
        {
        }

        goto LABEL_180;
      }

      if (v228)
      {

        goto LABEL_180;
      }

      goto LABEL_169;
    case 9u:
      v82 = v299;
      v109 = v282;
      sub_1B0CF2250(v299, v282, type metadata accessor for ClientCommand);
      v110 = *v109;
      v111 = *(v109 + 16);
      v112 = v298;
      if (swift_getEnumCaseMultiPayload() != 9)
      {
LABEL_122:

LABEL_125:

LABEL_126:
        sub_1B0398EFC(v82, &qword_1EB6E6450, &qword_1B0EE6440);
LABEL_182:
        v96 = 0;
        return v96 & 1;
      }

      v113 = *(v109 + 8);
      v114 = *v112;
      v115 = *(v112 + 2);
      v116 = *(v112 + 2);
      if ((v113 | (v113 << 32)) != (v115 | (v115 << 32)))
      {
LABEL_140:

        goto LABEL_147;
      }

      v117 = sub_1B04520BC(v110, v114);

      if ((v117 & 1) == 0)
      {
LABEL_147:

        goto LABEL_148;
      }

      v118 = sub_1B0CFDCE8(v111, v116);
LABEL_34:
      v96 = v118;

LABEL_35:

LABEL_74:
      sub_1B0CF2368(v82, type metadata accessor for ClientCommand);
      return v96 & 1;
    case 0xAu:
      v82 = v299;
      v195 = v287;
      sub_1B0CF2250(v299, v287, type metadata accessor for ClientCommand);
      v196 = *v195;
      v197 = *(v195 + 16);
      v198 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4BC0, &unk_1B0ED8640);
      v199 = *(v198 + 64);
      v200 = *(v198 + 80);
      v202 = *(v195 + v200);
      v201 = *(v195 + v200 + 8);
      v203 = v298;
      if (swift_getEnumCaseMultiPayload() != 10)
      {

        sub_1B0391D50(v202, v201);
        sub_1B0398EFC(v195 + v199, &unk_1EB6E2990, &qword_1B0E9B060);
        goto LABEL_126;
      }

      v293 = v197;
      v296 = v202;
      v297 = v201;
      v204 = *(v195 + 8);
      v294 = *v203;
      v205 = *(v203 + 2);
      v206 = *(v203 + 2);
      v208 = *&v203[v200];
      v207 = *&v203[v200 + 8];
      sub_1B03C60A4(v195 + v199, v295, &unk_1EB6E2990, &qword_1B0E9B060);
      v209 = &v203[v199];
      v210 = v279;
      sub_1B03C60A4(v209, v279, &unk_1EB6E2990, &qword_1B0E9B060);
      if ((v204 | (v204 << 32)) == (v205 | (v205 << 32)))
      {
        v211 = v208;
        v212 = v207;
        v213 = sub_1B04520BC(v196, v294);

        if (v213)
        {
          v214 = sub_1B0AFE1EC(v293, v206);

          if (v214)
          {
            v215 = *(v271 + 48);
            v216 = v273;
            sub_1B03B5C80(v295, v273, &unk_1EB6E2990, &qword_1B0E9B060);
            sub_1B03B5C80(v210, v216 + v215, &unk_1EB6E2990, &qword_1B0E9B060);
            v217 = v272;
            v218 = *(v272 + 48);
            v219 = v274;
            v220 = v218(v216, 1, v274);
            v221 = v299;
            if (v220 == 1)
            {
              if (v218(v216 + v215, 1, v219) == 1)
              {
                sub_1B0398EFC(v216, &unk_1EB6E2990, &qword_1B0E9B060);
LABEL_202:
                v267 = v296;
                v266 = v297;
                v96 = sub_1B0AB8858(v296, v297, v211, v212);
                sub_1B0391D50(v211, v212);
                sub_1B0391D50(v267, v266);
                sub_1B0398EFC(v210, &unk_1EB6E2990, &qword_1B0E9B060);
                sub_1B0398EFC(v295, &unk_1EB6E2990, &qword_1B0E9B060);
                goto LABEL_203;
              }

              sub_1B0391D50(v211, v212);
              sub_1B0391D50(v296, v297);
            }

            else
            {
              v261 = v270;
              sub_1B03B5C80(v216, v270, &unk_1EB6E2990, &qword_1B0E9B060);
              if (v218(v216 + v215, 1, v219) != 1)
              {
                v262 = v216 + v215;
                v263 = v269;
                (*(v217 + 32))(v269, v262, v219);
                sub_1B0CF2A4C(&qword_1EB6DECF8, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
                v264 = sub_1B0E44A28();
                v265 = *(v217 + 8);
                v265(v263, v219);
                v265(v261, v219);
                sub_1B0398EFC(v216, &unk_1EB6E2990, &qword_1B0E9B060);
                v221 = v299;
                if (v264)
                {
                  goto LABEL_202;
                }

                sub_1B0391D50(v211, v212);
                sub_1B0391D50(v296, v297);
LABEL_199:
                sub_1B0398EFC(v210, &unk_1EB6E2990, &qword_1B0E9B060);
                sub_1B0398EFC(v295, &unk_1EB6E2990, &qword_1B0E9B060);
                goto LABEL_200;
              }

              sub_1B0391D50(v211, v212);
              sub_1B0391D50(v296, v297);
              (*(v217 + 8))(v261, v219);
              v221 = v299;
            }

            sub_1B0398EFC(v216, &qword_1EB6E1720, &qword_1B0E99908);
            goto LABEL_199;
          }
        }

        else
        {
        }

        sub_1B0391D50(v208, v207);
        sub_1B0391D50(v296, v297);
      }

      else
      {

        sub_1B0391D50(v208, v207);
        sub_1B0391D50(v296, v297);
      }

      v250 = &unk_1EB6E2990;
      v251 = &qword_1B0E9B060;
      sub_1B0398EFC(v210, &unk_1EB6E2990, &qword_1B0E9B060);
      v252 = v295;
      goto LABEL_163;
    case 0xBu:
      v82 = v299;
      v103 = v283;
      sub_1B0CF2250(v299, v283, type metadata accessor for ClientCommand);
      v98 = *v103;
      v104 = v298;
      if (swift_getEnumCaseMultiPayload() != 11)
      {
        goto LABEL_75;
      }

      goto LABEL_73;
    case 0xCu:
      v82 = v299;
      v108 = v284;
      sub_1B0CF2250(v299, v284, type metadata accessor for ClientCommand);
      v98 = *v108;
      v99 = v108[1];
      v100 = v298;
      if (swift_getEnumCaseMultiPayload() != 12)
      {
        goto LABEL_23;
      }

      goto LABEL_16;
    case 0xDu:
      v82 = v299;
      v186 = v285;
      sub_1B0CF2250(v299, v285, type metadata accessor for ClientCommand);
      v98 = *v186;
      v104 = v298;
      if (swift_getEnumCaseMultiPayload() != 13)
      {
        goto LABEL_75;
      }

LABEL_73:
      v187 = *v104;
      v96 = static SearchKey.__derived_enum_equals(_:_:)(v98, *v104);
      sub_1B0B239C8(v187);
      sub_1B0B239C8(v98);
      goto LABEL_74;
    case 0xEu:
      v82 = v299;
      v97 = v286;
      sub_1B0CF2250(v299, v286, type metadata accessor for ClientCommand);
      v98 = *v97;
      v99 = v97[1];
      v100 = v298;
      if (swift_getEnumCaseMultiPayload() != 14)
      {
LABEL_23:

LABEL_75:
        sub_1B0B239C8(v98);
        goto LABEL_126;
      }

LABEL_16:
      v102 = *v100;
      v101 = v100[1];
      if (static SearchKey.__derived_enum_equals(_:_:)(v98, *v100))
      {
        v96 = sub_1B0CFE01C(v99, v101);
        sub_1B0B239C8(v102);
        sub_1B0B239C8(v98);

        goto LABEL_35;
      }

      sub_1B0B239C8(v102);
      sub_1B0B239C8(v98);
      goto LABEL_148;
    case 0xFu:
      v82 = v299;
      v84 = v291;
      sub_1B0CF2250(v299, v291, type metadata accessor for ClientCommand);
      v123 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3FE0, &unk_1B0EC26C0) + 48);
      v125 = *(v84 + v123);
      v124 = *(v84 + v123 + 8);
      v126 = *(v84 + v123 + 16);
      v127 = v298;
      if (swift_getEnumCaseMultiPayload() != 15)
      {
        goto LABEL_121;
      }

      v128 = &v127[v123];
      v129 = *&v127[v123];
      v130 = *(v128 + 1);
      v131 = v128[16];
      v132 = v127;
      v133 = v275;
      sub_1B03C60A4(v132, v275, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      sub_1B03D06F8();
      if ((sub_1B0E46E08() & 1) == 0)
      {

        v249 = v133;
        v250 = &unk_1EB6E1AF0;
        v251 = &unk_1B0E9AF40;
        sub_1B0398EFC(v84, &unk_1EB6E1AF0, &unk_1B0E9AF40);
        v252 = v249;
LABEL_163:
        sub_1B0398EFC(v252, v250, v251);
        goto LABEL_180;
      }

      sub_1B0398EFC(v84, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      v134 = sub_1B0CFD500(v125, v129);
      sub_1B0398EFC(v133, &unk_1EB6E1AF0, &unk_1B0E9AF40);

      if ((v134 & 1) == 0)
      {
        goto LABEL_180;
      }

      if (v126)
      {
        if ((v131 & 1) == 0)
        {
          goto LABEL_180;
        }
      }

      else
      {
        if (v131)
        {
          goto LABEL_180;
        }

        if ((v130 | v124) < 0)
        {
          __break(1u);
          return result;
        }

        if (v130 != v124)
        {
          goto LABEL_180;
        }
      }

      goto LABEL_187;
    case 0x10u:
      v82 = v299;
      v84 = v292;
      sub_1B0CF2250(v299, v292, type metadata accessor for ClientCommand);
      v85 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4A00, &qword_1B0ECD770) + 48);
      v86 = *(v84 + v85);
      v87 = *(v84 + v85 + 1);
      v88 = *(v84 + v85 + 8);
      v89 = v298;
      if (swift_getEnumCaseMultiPayload() != 16)
      {
LABEL_121:

        sub_1B0398EFC(v84, &unk_1EB6E1AF0, &unk_1B0E9AF40);
        goto LABEL_126;
      }

      v90 = *(v89 + v85);
      v91 = *(v89 + v85 + 1);
      v92 = *(v89 + v85 + 8);
      v93 = v276;
      sub_1B03C60A4(v89, v276, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      sub_1B03D06F8();
      if ((sub_1B0E46E08() & 1) == 0)
      {

        sub_1B0398EFC(v84, &unk_1EB6E1AF0, &unk_1B0E9AF40);
        v243 = v93;
        goto LABEL_137;
      }

      sub_1B0398EFC(v84, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      if (v87)
      {
        v94 = 256;
      }

      else
      {
        v94 = 0;
      }

      if (v91)
      {
        v95 = 256;
      }

      else
      {
        v95 = 0;
      }

      v96 = static StoreFlags.__derived_struct_equals(_:_:)(v94 | v86, v88, v95 | v90, v92);

      sub_1B0398EFC(v93, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      goto LABEL_74;
    case 0x11u:
      v82 = v299;
      v162 = v293;
      sub_1B0CF2250(v299, v293, type metadata accessor for ClientCommand);
      v163 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E49F8, &qword_1B0EC7000) + 48);
      v164 = *(v162 + v163);
      v165 = *(v162 + v163 + 8);
      v166 = v298;
      if (swift_getEnumCaseMultiPayload() != 17)
      {
        goto LABEL_89;
      }

      v167 = &v166[v163];
      v168 = *&v166[v163];
      v169 = *(v167 + 2);
      v170 = v166;
      v171 = &v304 + 8;
      goto LABEL_85;
    case 0x12u:
      v82 = v299;
      v162 = v294;
      sub_1B0CF2250(v299, v294, type metadata accessor for ClientCommand);
      v190 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E49F8, &qword_1B0EC7000) + 48);
      v164 = *(v162 + v190);
      v165 = *(v162 + v190 + 8);
      v191 = v298;
      if (swift_getEnumCaseMultiPayload() != 18)
      {
LABEL_89:

        sub_1B0398EFC(v162, &unk_1EB6E1AF0, &unk_1B0E9AF40);
        goto LABEL_126;
      }

      v192 = &v191[v190];
      v168 = *&v191[v190];
      v169 = *(v192 + 2);
      v170 = v191;
      v171 = &v305;
LABEL_85:
      v193 = *(v171 - 32);
      sub_1B03C60A4(v170, v193, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      sub_1B03D06F8();
      if ((sub_1B0E46E08() & 1) == 0)
      {

        sub_1B0398EFC(v162, &unk_1EB6E1AF0, &unk_1B0E9AF40);
        v243 = v193;
LABEL_137:
        sub_1B0398EFC(v243, &unk_1EB6E1AF0, &unk_1B0E9AF40);
        goto LABEL_148;
      }

      sub_1B0398EFC(v162, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      if ((v165 | (v165 << 32)) != (v169 | (v169 << 32)))
      {

        sub_1B0398EFC(v193, &unk_1EB6E1AF0, &unk_1B0E9AF40);
        goto LABEL_148;
      }

      v194 = sub_1B04520BC(v164, v168);

      sub_1B0398EFC(v193, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      if ((v194 & 1) == 0)
      {
        goto LABEL_148;
      }

      goto LABEL_167;
    case 0x13u:
      v82 = v299;
      v234 = v289;
      sub_1B0CF2250(v299, v289, type metadata accessor for ClientCommand);
      v236 = *(v234 + 8);
      v235 = *(v234 + 16);
      v237 = *(v234 + 24);
      v238 = v298;
      if (swift_getEnumCaseMultiPayload() != 19)
      {
        goto LABEL_126;
      }

      if (*v234 != *v238)
      {
        goto LABEL_148;
      }

      if (v237)
      {
        if (!v238[24])
        {
          goto LABEL_148;
        }
      }

      else if ((v238[24] & 1) != 0 || v236 != *(v238 + 1) || v235 != *(v238 + 2))
      {
        goto LABEL_148;
      }

      goto LABEL_167;
    case 0x14u:
      v82 = v299;
      v172 = v288;
      sub_1B0CF2250(v299, v288, type metadata accessor for ClientCommand);
      v173 = *(v172 + 8);
      v174 = *(v172 + 16);
      v175 = v298;
      if (swift_getEnumCaseMultiPayload() != 20)
      {

        goto LABEL_126;
      }

      v176 = *(v175 + 1);
      v177 = *(v175 + 2);
      if ((sub_1B045202C(v173, v176) & 1) == 0)
      {

        goto LABEL_148;
      }

      v178 = sub_1B0C2DAB0(v174, v177);

      if ((v178 & 1) == 0)
      {
        goto LABEL_148;
      }

      goto LABEL_167;
    case 0x15u:
      v82 = v299;
      v179 = v290;
      sub_1B0CF2250(v299, v290, type metadata accessor for ClientCommand);
      v180 = v179[1];
      v304 = *v179;
      v305 = v180;
      v181 = v179[3];
      v306 = v179[2];
      v307 = v181;
      v182 = v298;
      if (swift_getEnumCaseMultiPayload() != 21)
      {
        sub_1B0A1C37C();
        goto LABEL_126;
      }

      v183 = *(v182 + 1);
      v300 = *v182;
      v301 = v183;
      v184 = *(v182 + 3);
      v302 = *(v182 + 2);
      v303 = v184;
      if (v304 == v300 && (__PAIR128__(v305, *(&v304 + 1)) == __PAIR128__(v301, *(&v300 + 1)) || (sub_1B0E46A78() & 1) != 0) && (__PAIR128__(v306, *(&v305 + 1)) == __PAIR128__(v302, *(&v301 + 1)) || (sub_1B0E46A78() & 1) != 0) && (__PAIR128__(v307, *(&v306 + 1)) == __PAIR128__(v303, *(&v302 + 1)) || (sub_1B0E46A78() & 1) != 0))
      {
        v185 = _s12NIOIMAPCore29MailboxesV23__derived_struct_equalsySbAC_ACtFZ_0(*(&v307 + 1), *(&v303 + 1));
        sub_1B0A1C37C();
        sub_1B0A1C37C();
        if (v185)
        {
LABEL_167:
          v259 = v82;
LABEL_168:
          sub_1B0CF2368(v259, type metadata accessor for ClientCommand);
          v96 = 1;
          return v96 & 1;
        }
      }

      else
      {
        sub_1B0A1C37C();
        sub_1B0A1C37C();
      }

LABEL_148:
      v254 = v82;
      goto LABEL_181;
    case 0x16u:
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v82 = v299;
      if (EnumCaseMultiPayload == 22)
      {
        goto LABEL_167;
      }

      goto LABEL_126;
    case 0x17u:
      v239 = swift_getEnumCaseMultiPayload();
      v82 = v299;
      if (v239 == 23)
      {
        goto LABEL_167;
      }

      goto LABEL_126;
    case 0x18u:
      v120 = swift_getEnumCaseMultiPayload();
      v82 = v299;
      if (v120 == 24)
      {
        goto LABEL_167;
      }

      goto LABEL_126;
    case 0x19u:
      v119 = swift_getEnumCaseMultiPayload();
      v82 = v299;
      if (v119 == 25)
      {
        goto LABEL_167;
      }

      goto LABEL_126;
    case 0x1Au:
      v242 = swift_getEnumCaseMultiPayload();
      v82 = v299;
      if (v242 == 26)
      {
        goto LABEL_167;
      }

      goto LABEL_126;
    case 0x1Bu:
      v83 = swift_getEnumCaseMultiPayload();
      v82 = v299;
      if (v83 == 27)
      {
        goto LABEL_167;
      }

      goto LABEL_126;
    case 0x1Cu:
      v240 = swift_getEnumCaseMultiPayload();
      v82 = v299;
      if (v240 == 28)
      {
        goto LABEL_167;
      }

      goto LABEL_126;
    case 0x1Du:
      v241 = swift_getEnumCaseMultiPayload();
      v82 = v299;
      if (v241 == 29)
      {
        goto LABEL_167;
      }

      goto LABEL_126;
    default:
      sub_1B0CF2250(v299, v67, type metadata accessor for ClientCommand);
      v75 = *v67;
      v74 = *(v67 + 1);
      v77 = *(v67 + 2);
      v76 = *(v67 + 3);
      v78 = v67[38];
      v79 = *(v67 + 18);
      v80 = *(v67 + 8);
      v81 = v298;
      if (swift_getEnumCaseMultiPayload())
      {

        v82 = v299;
        goto LABEL_126;
      }

      v297 = v76;
      v244 = *v81;
      v245 = *(v81 + 1);
      v246 = *(v81 + 2);
      v296 = *(v81 + 3);
      LODWORD(v295) = v81[38];
      v247 = *(v81 + 18);
      v248 = *(v81 + 8);
      if (v75 == v244 && v74 == v245)
      {
      }

      else
      {
        v255 = sub_1B0E46A78();

        if ((v255 & 1) == 0)
        {
          goto LABEL_179;
        }
      }

      if (v77)
      {
        if (v246)
        {
          v256 = v248 | ((v247 | (v295 << 16)) << 32);

          v258 = sub_1B0C2DB54(v257, v297, (v80 | ((v79 | (v78 << 16)) << 32)) & 0xFFFFFFFFFFFFFFLL, v246, v296, v256 & 0xFFFFFFFFFFFFFFLL);

          if (v258)
          {
            goto LABEL_187;
          }

LABEL_180:
          v254 = v299;
          goto LABEL_181;
        }
      }

      else if (!v246)
      {
LABEL_187:
        v259 = v299;
        goto LABEL_168;
      }

LABEL_179:

      goto LABEL_180;
  }
}

uint64_t sub_1B0CF2250(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B0CF2368(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B0CF23E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ClientCommand(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B0CF2460(uint64_t a1, double a2)
{
  v3 = sub_1B0E441F8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B0E44308();
  v20 = 0;
  v21 = 0xE000000000000000;
  v7 = _s13IMAP2Protocol11MessageDataV04BodyD0V5countSivg_0();
  MEMORY[0x1B2726D20](v7);
  v8 = 0;
  v9 = 0;
  v15[2] = xmmword_1B0EE0600;
  v15[1] = xmmword_1B0EE0610;
  v15[0] = xmmword_1B0EE0620;
  while (1)
  {
    v18 = v8;
    v19 = v9;
    if (!v9)
    {
      break;
    }

    if ((v8 & 0x80) != 0)
    {
      goto LABEL_6;
    }

    sub_1B0CB1F34();
    v12 = sub_1B0C14AB0();
    sub_1B0CB1F88(0);
    (v12)(&v16, 0);
LABEL_23:
    v8 = v18;
    v9 = v19;
    v16 = v20;
    v17 = v21;
    sub_1B0E44C58();
    v20 = v16;
    v21 = v17;
  }

  sub_1B0CF2A4C(&qword_1EB6DB990, MEMORY[0x1E69E7F18], MEMORY[0x1E69E7F20]);
  sub_1B0E45E38();
  if ((v16 & 0x100) != 0)
  {
    goto LABEL_35;
  }

  if ((v16 & 0x80) == 0)
  {
    goto LABEL_23;
  }

  v8 = v8 & 0xFFFFFF00 | v16;
  v9 = 8;
LABEL_6:
  sub_1B0CF2A4C(&qword_1EB6DB990, MEMORY[0x1E69E7F18], MEMORY[0x1E69E7F20]);
  sub_1B0E45E38();
  if ((v16 & 0x100) != 0)
  {
    v10 = v9;
LABEL_8:
    if (!v10)
    {
      goto LABEL_35;
    }
  }

  else
  {
    v8 = (v16 << v9) | ((-255 << v9) - 1) & v8;
    v10 = v9 + 8;
    if ((v9 + 8) <= 0x1Fu)
    {
      sub_1B0E45E38();
      if ((v16 & 0x100) != 0)
      {
        goto LABEL_8;
      }

      v8 = (v16 << v10) | ((-255 << v10) - 1) & v8;
      v10 = v9 + 16;
      if ((v9 + 16) <= 0x1Fu)
      {
        sub_1B0E45E38();
        if ((v16 & 0x100) != 0)
        {
          goto LABEL_8;
        }

        v8 = (v16 << v10) | ((-255 << v10) - 1) & v8;
        v10 = v9 + 24;
        if ((v9 + 24) <= 0x1Fu)
        {
          sub_1B0E45E38();
          if ((v16 & 0x100) != 0)
          {
            goto LABEL_8;
          }

          v8 = (v16 << v10) | ((-255 << v10) - 1) & v8;
          v10 = v9 + 32;
          if (v9 >= 0xE0u)
          {
            sub_1B0E45E38();
            if ((v16 & 0x100) != 0)
            {
              goto LABEL_8;
            }

            v8 = (v16 << v9) | ((-255 << v9) - 1) & v8;
            v10 = v9 + 40;
          }
        }
      }
    }
  }

  if ((v8 & 0xC0E0) == 0x80C0)
  {
    if ((v8 & 0x1E) == 0)
    {
      goto LABEL_34;
    }

    v11 = 16;
    goto LABEL_22;
  }

  if ((v8 & 0xC0C0F0) == 0x8080E0)
  {
    if ((v8 & 0x200F) == 0 || (v8 & 0x200F) == 0x200D)
    {
      goto LABEL_34;
    }

    v11 = 24;
    goto LABEL_22;
  }

  if ((v8 & 0xC0C0C0F8) == 0x808080F0 && (v8 & 0x3007) != 0 && __rev16(v8 & 0x3007) <= 0x400)
  {
    v11 = 32;
LABEL_22:
    v18 = v8 >> v11;
    v19 = v10 - v11;
    goto LABEL_23;
  }

LABEL_34:
  sub_1B0E46D58();
  MEMORY[0x1B2726E80](0xD000000000000012, 0x80000001B0F2F370);
LABEL_35:
  v13 = sub_1B0E443C8();
  (*(*(v13 - 8) + 8))(a1, v13);
  (*(v4 + 8))(v6, v3);
  return v20;
}

uint64_t sub_1B0CF2A4C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1B0CF2A98()
{
  result = qword_1EB6E63D0;
  if (!qword_1EB6E63D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E63D0);
  }

  return result;
}

unint64_t sub_1B0CF2AF0()
{
  result = qword_1EB6DD168;
  if (!qword_1EB6DD168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DD168);
  }

  return result;
}

unint64_t sub_1B0CF2B48()
{
  result = qword_1EB6E63D8;
  if (!qword_1EB6E63D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E63D8);
  }

  return result;
}

void sub_1B0CF2B9C(uint64_t a1)
{
  if (!qword_1EB6DE328)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E63E0, &qword_1B0EE63B0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB6DE328);
    }
  }
}

void sub_1B0CF2C14(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (!*a2)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_1B0CF2C64(uint64_t a1)
{
  if (!qword_1EB6DE968)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E63F0, &unk_1B0EE7CA0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E63F8, &qword_1B0EE63C0);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EB6DE968);
    }
  }
}

void sub_1B0CF2CF4(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_1B0CF2D58(uint64_t a1)
{
  if (!qword_1EB6DE048)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E6410, &qword_1B0EE63D0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB6DE048);
    }
  }
}

void sub_1B0CF2DD0(uint64_t a1)
{
  if (!qword_1EB6DACD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E6418, &qword_1B0EE63D8);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB6DACD8);
    }
  }
}

uint64_t getEnumTagSinglePayload for ClientCommand.Kind(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE3)
  {
    goto LABEL_17;
  }

  if (a2 + 29 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 29) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 29;
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

      return (*a1 | (v4 << 8)) - 29;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 29;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1E;
  v8 = v6 - 30;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ClientCommand.Kind(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 29 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 29) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE3)
  {
    v4 = 0;
  }

  if (a2 > 0xE2)
  {
    v5 = ((a2 - 227) >> 8) + 1;
    *result = a2 + 29;
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
    *result = a2 + 29;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1B0CF2FE0(uint64_t a1)
{
  result = type metadata accessor for ClientCommand(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t ClientCommand.encode(tag:options:)@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t (*a3)(__int128 *)@<X8>)
{
  v4[16] = a1;
  v5 = HIDWORD(a1);
  return sub_1B0CFA5E8(sub_1B0CF244C, v4, a2 & 0x101FF, a3);
}

uint64_t ClientCommand.Encoded.command.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B0E443C8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t ClientCommand.Encoded.command.setter(uint64_t a1)
{
  v3 = sub_1B0E443C8();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

double ClientCommand.Encoded.continuations.getter()
{
  type metadata accessor for ClientCommand.Encoded(0);

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return result;
}

uint64_t ClientCommand.Encoded.continuations.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ClientCommand.Encoded(0) + 20);

  *(v1 + v3) = a1;
  return result;
}

uint64_t ClientCommand.Encoded.init(command:continuations:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1B0E443C8();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  result = type metadata accessor for ClientCommand.Encoded(0);
  *(a3 + *(result + 20)) = a2;
  return result;
}

uint64_t ClientCommand.EncodingOptions.Literal.hashValue.getter(unsigned __int8 a1)
{
  sub_1B0E46C28();
  MEMORY[0x1B2728D70](a1);
  return sub_1B0E46CB8();
}

uint64_t ClientCommand.EncodingOptions.debugDescription.getter(__int16 a1)
{
  if (a1)
  {
    v1 = 0x2B6C61726574694CLL;
    if ((a1 & 0x100) != 0)
    {
      v1 = 0xD000000000000010;
    }

    v2 = 0x2D6C61726574694CLL;
    if ((a1 & 0x100) != 0)
    {
      v2 = 0xD000000000000010;
    }

    if (a1 == 1)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }

  else if ((a1 & 0x100) != 0)
  {
    return 0x7972616E6942;
  }

  else
  {
    return 0x647261646E617453;
  }
}

uint64_t sub_1B0CF3590()
{
  if (v0[1])
  {
    v1 = 256;
  }

  else
  {
    v1 = 0;
  }

  return ClientCommand.EncodingOptions.debugDescription.getter(v1 | *v0);
}

uint64_t CommandEncodingOptions.init(_:)(__int16 a1)
{
  v1 = 0x100000001;
  if ((a1 & 0x100) == 0)
  {
    v1 = 1;
  }

  return v1 | qword_1B0EE6630[a1] | qword_1B0EE6648[a1] | qword_1B0EE6660[a1];
}

uint64_t ClientCommand.EncodingOptions.init(_:)(uint64_t a1)
{
  v2 = Capability.literalPlus.unsafeMutableAddressor();
  v3 = *(v2 + 1);
  v4 = *(v2 + 2);
  v5 = *(v2 + 24);
  v24 = *v2;
  v25 = v3;
  v26 = v4;
  v27 = v5;
  v23 = &v24;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v6 = sub_1B0C32414(sub_1B0BD6614, v22, a1);

  if (v6)
  {
    v7 = 1;
  }

  else
  {
    v8 = Capability.literalMinus.unsafeMutableAddressor();
    v9 = *(v8 + 1);
    v10 = *(v8 + 2);
    v11 = *(v8 + 24);
    v24 = *v8;
    v25 = v9;
    v26 = v10;
    v27 = v11;
    MEMORY[0x1EEE9AC00](v8);
    v21 = &v24;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v12 = sub_1B0C32414(sub_1B0C10BD0, v20, a1);

    if (v12)
    {
      v7 = 2;
    }

    else
    {
      v7 = 0;
    }
  }

  v13 = Capability.binary.unsafeMutableAddressor();
  v14 = *(v13 + 1);
  v15 = *(v13 + 2);
  v16 = *(v13 + 24);
  v24 = *v13;
  v25 = v14;
  v26 = v15;
  v27 = v16;
  MEMORY[0x1EEE9AC00](v13);
  v21 = &v24;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v17 = sub_1B0C32414(sub_1B0C10BD0, v20, a1);

  if (v17)
  {
    v18 = 256;
  }

  else
  {
    v18 = 0;
  }

  return v18 | v7;
}

uint64_t type metadata accessor for ClientCommand.Encoded(uint64_t a1)
{
  result = qword_1EB6DD158;
  if (!qword_1EB6DD158)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1B0CF3818()
{
  result = qword_1EB6E6458;
  if (!qword_1EB6E6458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6458);
  }

  return result;
}

unint64_t sub_1B0CF3870()
{
  result = qword_1EB6E6460;
  if (!qword_1EB6E6460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6460);
  }

  return result;
}

unint64_t sub_1B0CF38C8()
{
  result = qword_1EB6E6468;
  if (!qword_1EB6E6468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6468);
  }

  return result;
}

void sub_1B0CF3944(uint64_t a1)
{
  sub_1B0E443C8();
  if (v1 <= 0x3F)
  {
    sub_1B0CF39C8(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B0CF39C8(uint64_t a1)
{
  if (!qword_1EB6DB0B8)
  {
    sub_1B0E443C8();
    v1 = sub_1B0E45358();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB6DB0B8);
    }
  }
}

uint64_t __swift_memcpy3_1(uint64_t result, __int16 *a2)
{
  v2 = *a2;
  *(result + 2) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t _s15EncodingOptionsVwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF)
  {
    if ((a2 + 33554177) >> 24)
    {
      v2 = a1[3];
      if (a1[3])
      {
        return (*a1 | (a1[2] << 16) | (v2 << 24)) - 16776961;
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (a1[2] << 16) | (v2 << 24)) - 16776961;
      }
    }
  }

  v4 = a1[1];
  v5 = v4 >= 2;
  v6 = v4 - 2;
  if (!v5)
  {
    v6 = -1;
  }

  return (v6 + 1);
}

uint64_t _s15EncodingOptionsVwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 33554177) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (a3 <= 0xFE)
  {
    v3 = 0;
  }

  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 2) = (a2 - 255) >> 16;
    if (v3)
    {
      v4 = ((a2 - 255) >> 24) + 1;
      if (v3 == 2)
      {
        *(result + 3) = v4;
      }

      else
      {
        *(result + 3) = v4;
      }
    }
  }

  else
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    if (v3 == 2)
    {
      *(result + 3) = 0;
LABEL_10:
      if (!a2)
      {
        return result;
      }

LABEL_16:
      *(result + 1) = a2 + 1;
      return result;
    }

    *(result + 3) = 0;
    if (a2)
    {
      goto LABEL_16;
    }
  }

  return result;
}

unint64_t sub_1B0CF3BD8()
{
  result = qword_1EB6DD180;
  if (!qword_1EB6DD180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DD180);
  }

  return result;
}

uint64_t EncodedString.rawValue.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t sub_1B0CF3CC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x65756C6156776172 && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1B0E46A78();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1B0CF3D48(uint64_t a1)
{
  sub_1B0CF3F40();

  return sub_1B0E46F28();
}

uint64_t sub_1B0CF3D84(uint64_t a1)
{
  sub_1B0CF3F40();

  return sub_1B0E46F38();
}

uint64_t EncodedString.encode(to:)(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6470, &qword_1B0EE67C0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v9 - v6;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1B0CF3F40();
  sub_1B0E46D48();
  v9[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E21D0, &unk_1B0EA2E70);
  sub_1B0CF4AC8(&qword_1EB6DAE00, MEMORY[0x1E69E7510], MEMORY[0x1E69E6300]);
  sub_1B0E46958();
  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_1B0CF3F40()
{
  result = qword_1EB6E6478;
  if (!qword_1EB6E6478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6478);
  }

  return result;
}

uint64_t EncodedString.hash(into:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x1B2728D70](v3);
  if (v3)
  {
    v5 = a2 + 32;
    do
    {
      ++v5;
      result = sub_1B0E46C68();
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t EncodedString.hashValue.getter(uint64_t a1)
{
  sub_1B0E46C28();
  v2 = *(a1 + 16);
  MEMORY[0x1B2728D70](v2);
  if (v2)
  {
    v3 = a1 + 32;
    do
    {
      ++v3;
      sub_1B0E46C68();
      --v2;
    }

    while (v2);
  }

  return sub_1B0E46CB8();
}

uint64_t sub_1B0CF4074()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  result = MEMORY[0x1B2728D70](v2);
  if (v2)
  {
    v4 = v1 + 32;
    do
    {
      ++v4;
      result = sub_1B0E46C68();
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t sub_1B0CF40C8(uint64_t a1)
{
  v2 = *v1;
  sub_1B0E46C28();
  v3 = *(v2 + 16);
  MEMORY[0x1B2728D70](v3);
  if (v3)
  {
    v4 = v2 + 32;
    do
    {
      ++v4;
      sub_1B0E46C68();
      --v3;
    }

    while (v3);
  }

  return sub_1B0E46CB8();
}

void *sub_1B0CF4134@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1B0CF47A4(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

double (*String.init(_:)(uint64_t a1))(void)
{
  v21 = 0;
  v22 = 0xE000000000000000;
  result = MEMORY[0x1B2726D20](*(a1 + 16));
  v3 = 0;
  v4 = 0;
  v5 = 0;
  v6 = a1 + 32;
  while (1)
  {
    v19 = v3;
    v20 = v4;
    if (v4)
    {
      if ((v3 & 0x80) == 0)
      {
        sub_1B0CB1F34();
        result = sub_1B0C14AB0();
        v13 = *(v12 + 4);
        if (!v13)
        {
          goto LABEL_53;
        }

        *v12 >>= 8;
        *(v12 + 4) = v13 - 8;
        (result)(&v17, 0);
        goto LABEL_38;
      }

      v7 = *(a1 + 16);
      v10 = v5 >= v7;
      if (v5 == v7)
      {
LABEL_7:
        v11 = v4;
LABEL_8:
        if (!v11)
        {
LABEL_49:

          return v21;
        }

        goto LABEL_34;
      }

      goto LABEL_14;
    }

    v7 = *(a1 + 16);
    if (v5 == v7)
    {
      goto LABEL_49;
    }

    if (v5 >= v7)
    {
      break;
    }

    v8 = *(v6 + v5);
    v9 = *(v6 + v5++);
    if ((v8 & 0x80000000) == 0)
    {
      goto LABEL_38;
    }

    v3 = v3 & 0xFFFFFF00 | v9;
    v4 = 8;
    v10 = v5 >= v7;
    if (v5 == v7)
    {
      goto LABEL_7;
    }

LABEL_14:
    if (v10)
    {
      goto LABEL_51;
    }

    v14 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      goto LABEL_52;
    }

    v3 = (*(v6 + v5) << v4) | ((-255 << v4) - 1) & v3;
    v11 = v4 + 8;
    if ((v4 + 8) <= 0x1Fu)
    {
      if (v14 == v7)
      {
        goto LABEL_8;
      }

      if (v14 >= v7)
      {
        goto LABEL_51;
      }

      v15 = v5 + 2;
      if (__OFADD__(v14, 1))
      {
        goto LABEL_52;
      }

      v3 = (*(v6 + v14) << v11) | ((-255 << v11) - 1) & v3;
      v11 = v4 + 16;
      if ((v4 + 16) > 0x1Fu)
      {
        goto LABEL_47;
      }

      if (v15 == v7)
      {
        goto LABEL_8;
      }

      if (v15 >= v7)
      {
        goto LABEL_51;
      }

      v14 = v5 + 3;
      if (__OFADD__(v15, 1))
      {
        goto LABEL_52;
      }

      v3 = (*(v6 + v15) << v11) | ((-255 << v11) - 1) & v3;
      v11 = v4 + 24;
      if ((v4 + 24) <= 0x1Fu)
      {
        if (v14 == v7)
        {
          goto LABEL_8;
        }

        if (v14 >= v7)
        {
          goto LABEL_51;
        }

        v15 = v5 + 4;
        if (__OFADD__(v14, 1))
        {
          goto LABEL_52;
        }

        v3 = (*(v6 + v14) << v11) | ((-255 << v11) - 1) & v3;
        v11 = v4 + 32;
        if (v4 >= 0xE0u)
        {
          if (v15 != v7)
          {
            if (v15 >= v7)
            {
              goto LABEL_51;
            }

            v7 = v5 + 5;
            if (__OFADD__(v15, 1))
            {
              goto LABEL_52;
            }

            v3 = (*(v6 + v15) << v4) | ((-255 << v4) - 1) & v3;
            v11 = v4 + 40;
            goto LABEL_34;
          }

          goto LABEL_8;
        }

LABEL_47:
        v7 = v15;
        goto LABEL_34;
      }
    }

    v7 = v14;
LABEL_34:
    if ((v3 & 0xC0E0) == 0x80C0)
    {
      if ((v3 & 0x1E) == 0)
      {
        goto LABEL_48;
      }

      v16 = 16;
    }

    else if ((v3 & 0xC0C0F0) == 0x8080E0)
    {
      if ((v3 & 0x200F) == 0 || (v3 & 0x200F) == 0x200D)
      {
        goto LABEL_48;
      }

      v16 = 24;
    }

    else
    {
      if ((v3 & 0xC0C0C0F8) != 0x808080F0 || (v3 & 0x3007) == 0 || __rev16(v3 & 0x3007) > 0x400)
      {
LABEL_48:
        sub_1B0E46D58();

        return 0;
      }

      v16 = 32;
    }

    v19 = v3 >> v16;
    v20 = v11 - v16;
    v5 = v7;
LABEL_38:
    v3 = v19;
    v4 = v20;
    v17 = v21;
    v18 = v22;
    result = sub_1B0E44C58();
    v21 = v17;
    v22 = v18;
  }

  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
  return result;
}

size_t EncodedString.init(_:)(uint64_t a1)
{
  result = _s13IMAP2Protocol11MessageDataV04BodyD0V5countSivg_0();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    if (result)
    {
      v4 = sub_1B0E45278();
      *(v4 + 16) = v3;
      bzero((v4 + 32), v3);
    }

    else
    {
      v4 = MEMORY[0x1E69E7CC0];
    }

    sub_1B0E443A8();
    v5 = sub_1B0E443C8();
    (*(*(v5 - 8) + 8))(a1, v5);
    return v4;
  }

  return result;
}

uint64_t _s13IMAP2Protocol13EncodedStringV1loiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v3 = *(a1 + 16);
  v4 = *(a2 + 16);
  v5 = a1 + 32;
  v6 = (a2 + 32);
  result = 1;
  while (1)
  {
    if (v2 == v3)
    {
      v8 = 0;
      v9 = v3;
      if (!v4)
      {
        return 0;
      }

      goto LABEL_8;
    }

    if (v2 >= v3)
    {
      break;
    }

    v9 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      goto LABEL_14;
    }

    v8 = *(v5 + v2);
    if (!v4)
    {
      return 0;
    }

LABEL_8:
    if (v2 == v3)
    {
      return result;
    }

    v10 = *v6;
    if (v8 < v10)
    {
      return result;
    }

    ++v6;
    --v4;
    v2 = v9;
    if (v10 < v8)
    {
      return 0;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

void *sub_1B0CF47A4(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E64A0, &qword_1B0EE6A18);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v9 - v5;
  v7 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1B0CF3F40();
  sub_1B0E46D18();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E21D0, &unk_1B0EA2E70);
    sub_1B0CF4AC8(&qword_1EB6E64A8, MEMORY[0x1E69E7528], MEMORY[0x1E69E6330]);
    sub_1B0E46868();
    (*(v4 + 8))(v6, v3);
    v7 = v9[1];
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  return v7;
}

unint64_t sub_1B0CF494C()
{
  result = qword_1EB6E6480;
  if (!qword_1EB6E6480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6480);
  }

  return result;
}

unint64_t sub_1B0CF49C4()
{
  result = qword_1EB6E6488;
  if (!qword_1EB6E6488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6488);
  }

  return result;
}

unint64_t sub_1B0CF4A1C()
{
  result = qword_1EB6E6490;
  if (!qword_1EB6E6490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6490);
  }

  return result;
}

unint64_t sub_1B0CF4A74()
{
  result = qword_1EB6E6498;
  if (!qword_1EB6E6498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6498);
  }

  return result;
}

uint64_t sub_1B0CF4AC8(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E21D0, &unk_1B0EA2E70);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

char *sub_1B0CF4B94(uint64_t a1)
{
  result = EngineTracingID.invalid.unsafeMutableAddressor();
  static ConnectionLoggerID.invalid = *result;
  dword_1EB7383B4 = -1;
  return result;
}

char *ConnectionLoggerID.invalid.unsafeMutableAddressor()
{
  if (qword_1EB6E63A8 != -1)
  {
    swift_once();
  }

  return &static ConnectionLoggerID.invalid;
}

unint64_t static ConnectionLoggerID.invalid.getter()
{
  if (qword_1EB6E63A8 != -1)
  {
    swift_once();
  }

  return static ConnectionLoggerID.invalid | (dword_1EB7383B4 << 32);
}

uint64_t MessageData.sequenceNumber.setter(uint64_t result)
{
  *v1 = result;
  *(v1 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t MessageData.uid.setter(uint64_t result)
{
  *(v1 + 8) = result;
  *(v1 + 12) = BYTE4(result) & 1;
  return result;
}

uint64_t MessageData.bodySections.setter(uint64_t a1)
{

  *(v1 + 200) = a1;
  return result;
}

uint64_t MessageData.flags.setter(uint64_t a1)
{

  *(v1 + 512) = a1;
  return result;
}

uint64_t MessageData.gmailLabels.setter(uint64_t a1)
{

  *(v1 + 520) = a1;
  return result;
}

uint64_t MessageData.internalDate.setter(uint64_t result, char a2)
{
  *(v2 + 528) = result;
  *(v2 + 536) = a2 & 1;
  return result;
}

uint64_t MessageData.messageSize.setter(uint64_t result)
{
  *(v1 + 540) = result;
  *(v1 + 544) = BYTE4(result) & 1;
  return result;
}

uint64_t MessageData.modificationSequence.setter(uint64_t result, char a2)
{
  *(v2 + 552) = result;
  *(v2 + 560) = a2 & 1;
  return result;
}

uint64_t MessageData.preview.getter()
{
  v1 = *(v0 + 568);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v1;
}

uint64_t MessageData.preview.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 568) = a1;
  *(v2 + 576) = a2;
  return result;
}

uint64_t MessageData.emailID.getter()
{
  v1 = *(v0 + 584);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v1;
}

uint64_t MessageData.emailID.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 584) = a1;
  *(v2 + 592) = a2;
  return result;
}

uint64_t MessageData.threadID.getter()
{
  v1 = *(v0 + 600);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v1;
}

uint64_t MessageData.threadID.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 600) = a1;
  *(v2 + 608) = a2;
  return result;
}

uint64_t MessageData.BodySection.section.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0ACE964(v2, v3);
  return v1;
}

uint64_t MessageData.BodySection.section.setter(uint64_t a1, uint64_t a2, char a3)
{

  result = sub_1B0ACE978(*(v3 + 8), *(v3 + 16));
  *v3 = a1;
  *(v3 + 8) = a2;
  *(v3 + 16) = a3;
  return result;
}

uint64_t MessageData.BodySection.origin.setter(uint64_t result)
{
  *(v1 + 20) = result;
  *(v1 + 24) = BYTE4(result) & 1;
  return result;
}

uint64_t type metadata accessor for MessageData.BodySection(uint64_t a1)
{
  result = qword_1EB6DD190;
  if (!qword_1EB6DD190)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t MessageData.BodySection.init(section:origin:data:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = *(type metadata accessor for MessageData.BodySection(0) + 24);
  v13 = type metadata accessor for MessageData.BodyData(0);
  (*(*(v13 - 8) + 56))(a6 + v12, 1, 1, v13);
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 20) = a4;
  *(a6 + 24) = BYTE4(a4) & 1;
  return sub_1B0C8C870(a5, a6 + v12, &qword_1EB6E4178, &unk_1B0EE7570);
}

void *MessageData.init(sequenceNumber:uid:body:bodySections:bodyStructure:envelope:flags:gmailLabels:internalDate:messageSize:modificationSequence:preview:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, char a11, int a12, int a13, char a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18)
{
  sub_1B0ACEC5C(&v30);
  *&__src[144] = v38;
  *&__src[160] = v39;
  *&__src[176] = v40;
  *&__src[80] = v34;
  *&__src[96] = v35;
  *&__src[112] = v36;
  *&__src[128] = v37;
  *&__src[16] = v30;
  *&__src[32] = v31;
  *&__src[48] = v32;
  *&__src[64] = v33;
  *&__src[336] = v38;
  *&__src[352] = v39;
  *&__src[368] = v40;
  *&__src[272] = v34;
  *&__src[288] = v35;
  *&__src[304] = v36;
  *&__src[320] = v37;
  *&__src[208] = v30;
  *&__src[224] = v31;
  __src[192] = v41;
  __src[384] = v41;
  *&__src[240] = v32;
  *&__src[256] = v33;
  memset(&__src[392], 0, 120);
  memset(&__src[584], 0, 32);
  *__src = a1;
  __src[4] = BYTE4(a1) & 1;
  *&__src[8] = a2;
  __src[12] = BYTE4(a2) & 1;
  sub_1B0C8C870(a3, &__src[16], &qword_1EB6E4148, &qword_1B0EE17F0);
  *&__src[200] = a4;
  sub_1B0C8C870(a5, &__src[208], &qword_1EB6E4148, &qword_1B0EE17F0);
  sub_1B0C8C870(a6, &__src[392], &qword_1EB6E64B0, &unk_1B0EE81A0);
  *&__src[512] = a7;
  *&__src[520] = a8;
  *&__src[528] = a10;
  __src[536] = a11 & 1;
  *&__src[540] = a13;
  __src[544] = a14 & 1;
  *&__src[552] = a15;
  __src[560] = a16 & 1;
  *&__src[568] = a17;
  *&__src[576] = a18;
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v43, __src, 0x268uLL);
  sub_1B0CF6930(__dst, v28);
  sub_1B0AA4C0C(v43);
  return memcpy(a9, __dst, 0x268uLL);
}

uint64_t sub_1B0CF5798(void *__src, const void *a2)
{
  memcpy(v4, __src, sizeof(v4));
  memcpy(__dst, a2, sizeof(__dst));
  return _s13IMAP2Protocol11MessageDataV23__derived_struct_equalsySbAC_ACtFZ_0(v4) & 1;
}

uint64_t sub_1B0CF57F0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1C58, &qword_1B0E9B050);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v15 - v1;
  v3 = sub_1B0E431B8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1B0E43228();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_allocate_value_buffer(v11, qword_1EB6DE5F0);
  v12 = __swift_project_value_buffer(v7, qword_1EB6DE5F0);
  (*(v4 + 104))(v6, *MEMORY[0x1E6969868], v3);
  sub_1B0E431C8();
  (*(v4 + 8))(v6, v3);
  sub_1B0E43318();
  v13 = sub_1B0E43358();
  result = (*(*(v13 - 8) + 48))(v2, 1, v13);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_1B0E43208();
    return (*(v8 + 32))(v12, v10, v7);
  }

  return result;
}

uint64_t ServerMessageDate.date.getter@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1C58, &qword_1B0E9B050);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v29 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1C60, &qword_1B0E9B058);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v29 - v10;
  v12 = sub_1B0E42B78();
  v33 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1B0E43228();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2990, &qword_1B0E9B060);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v29 - v20;
  if (qword_1EB6DE5E8 != -1)
  {
    swift_once();
  }

  v22 = __swift_project_value_buffer(v15, qword_1EB6DE5F0);
  (*(v16 + 16))(v18, v22, v15);
  v23 = *(v16 + 56);
  v32 = v11;
  v23(v11, 1, 1, v15);
  ServerMessageDate.components.getter(a1, &v34);
  result = 60 * v35;
  if ((v35 * 60) >> 64 != (60 * v35) >> 63)
  {
    __break(1u);
    goto LABEL_8;
  }

  v30 = v12;
  sub_1B0E43338();
  v25 = sub_1B0E43358();
  v26 = *(v25 - 8);
  result = (*(v26 + 48))(v5, 1, v25);
  if (result == 1)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  (*(v26 + 32))(v8, v5, v25);
  (*(v26 + 56))(v8, 0, 1, v25);
  sub_1B0E42B58();
  sub_1B0E431E8();
  (*(v33 + 8))(v14, v30);
  (*(v16 + 8))(v18, v15);
  v27 = sub_1B0E43108();
  v28 = *(v27 - 8);
  result = (*(v28 + 48))(v21, 1, v27);
  if (result != 1)
  {
    return (*(v28 + 32))(v31, v21, v27);
  }

LABEL_9:
  __break(1u);
  return result;
}

void ServerMessageDate.init(_:)(char *a1)
{
  v51 = a1;
  v48 = sub_1B0E43108();
  v50 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v47 = &v40 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1C58, &qword_1B0E9B050);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v49 = &v40 - v3;
  v46 = sub_1B0E42B78();
  v45 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v5 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EB6DE5E8 != -1)
  {
    swift_once();
  }

  v6 = sub_1B0E43228();
  __swift_project_value_buffer(v6, qword_1EB6DE5F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5FA8, &qword_1B0EDF688);
  v7 = sub_1B0E43218();
  v8 = *(v7 - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1B0EC42E0;
  v12 = v11 + v10;
  v13 = *(v8 + 104);
  v13(v12, *MEMORY[0x1E6969A68], v7);
  v13(v12 + v9, *MEMORY[0x1E6969A78], v7);
  v13(v12 + 2 * v9, *MEMORY[0x1E6969A48], v7);
  v13(v12 + 3 * v9, *MEMORY[0x1E6969A58], v7);
  v13(v12 + 4 * v9, *MEMORY[0x1E6969A88], v7);
  v13(v12 + 5 * v9, *MEMORY[0x1E6969A98], v7);
  v13(v12 + 6 * v9, *MEMORY[0x1E6969AC0], v7);
  sub_1B0C926C8(v11);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_1B0E431D8();

  v14 = sub_1B0E42B08();
  if (v15)
  {
    __break(1u);
    goto LABEL_13;
  }

  v16 = v14;
  v17 = sub_1B0E42B18();
  if (v18)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v19 = v17;
  v20 = sub_1B0E42AE8();
  v21 = v49;
  v22 = v50;
  if (v23)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v24 = v20;
  v25 = sub_1B0E42AF8();
  if (v26)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v27 = v25;
  v28 = sub_1B0E42B28();
  if (v29)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v30 = v28;
  v31 = sub_1B0E42B38();
  if (v32)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v41 = v31;
  v42 = v30;
  v43 = v27;
  v44 = v24;
  sub_1B0E42B68();
  v33 = sub_1B0E43358();
  v34 = *(v33 - 8);
  if ((*(v34 + 48))(v21, 1, v33) == 1)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v35 = v47;
  sub_1B0E430F8();
  v36 = sub_1B0E43328();
  v37 = *(v22 + 8);
  v38 = v35;
  v39 = v48;
  v37(v38, v48);
  (*(v34 + 8))(v21, v33);
  ServerMessageDate.Components.init(year:month:day:hour:minute:second:timeZoneMinutes:)(&v52, v16, v19, v44, v43, v42, v41, v36 / 60);
  if (!v52.is_nil)
  {
    v53[0] = *&v52.value.year;
    v53[1] = *&v52.value.day;
    v53[2] = *&v52.value.minute;
    zoneMinutes = v52.value.zoneMinutes;
    v37(v51, v39);
    (*(v45 + 8))(v5, v46);
    ServerMessageDate.init(_:)(v53);
    return;
  }

LABEL_19:
  __break(1u);
}

BOOL _s13IMAP2Protocol11MessageDataV11BodySectionV23__derived_struct_equalsySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MessageData.BodyData(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4178, &unk_1B0EE7570);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v25 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E64C0, &qword_1B0EE71D0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v25 - v12;
  if ((static SectionSpecifier.__derived_struct_equals(_:_:)(*a1, *(a1 + 8), *(a1 + 16), *a2, *(a2 + 8), *(a2 + 16)) & 1) == 0)
  {
    return 0;
  }

  v14 = *(a2 + 24);
  if (*(a1 + 24))
  {
    if (!*(a2 + 24))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 20) != *(a2 + 20))
    {
      v14 = 1;
    }

    if (v14)
    {
      return 0;
    }
  }

  v25[0] = v7;
  v15 = *(type metadata accessor for MessageData.BodySection(0) + 24);
  v16 = *(v11 + 48);
  sub_1B03B5C80(a1 + v15, v13, &qword_1EB6E4178, &unk_1B0EE7570);
  sub_1B03B5C80(a2 + v15, &v13[v16], &qword_1EB6E4178, &unk_1B0EE7570);
  v17 = *(v5 + 48);
  if (v17(v13, 1, v4) == 1)
  {
    if (v17(&v13[v16], 1, v4) == 1)
    {
      goto LABEL_10;
    }

    goto LABEL_14;
  }

  sub_1B03B5C80(v13, v10, &qword_1EB6E4178, &unk_1B0EE7570);
  if (v17(&v13[v16], 1, v4) == 1)
  {
    sub_1B0CF8364(v10);
LABEL_14:
    v19 = &qword_1EB6E64C0;
    v20 = &qword_1B0EE71D0;
    goto LABEL_15;
  }

  v21 = v25[0];
  sub_1B0CF83C0(&v13[v16], v25[0]);
  v22 = _s13IMAP2Protocol11MessageDataV04BodyD0V5countSivg_0();
  if (v22 == _s13IMAP2Protocol11MessageDataV04BodyD0V5countSivg_0())
  {
    sub_1B0E443C8();
    sub_1B0CF8424(&qword_1EB6DB980, MEMORY[0x1E69E7FD0], MEMORY[0x1E69E7FF0]);
    sub_1B0E45668();
    v23 = sub_1B0E456C8();
    if (v26 != v25[2])
    {
      MEMORY[0x1EEE9AC00](v23);
      v25[-2] = v21;
      v25[-1] = v10;
      sub_1B0E44328();
      v24 = v26;
      sub_1B0CF8364(v21);
      sub_1B0CF8364(v10);
      sub_1B0398EFC(v13, &qword_1EB6E4178, &unk_1B0EE7570);
      return (v24 & 1) != 0;
    }

    sub_1B0CF8364(v21);
    sub_1B0CF8364(v10);
LABEL_10:
    sub_1B0398EFC(v13, &qword_1EB6E4178, &unk_1B0EE7570);
    return 1;
  }

  sub_1B0CF8364(v21);
  sub_1B0CF8364(v10);
  v19 = &qword_1EB6E4178;
  v20 = &unk_1B0EE7570;
LABEL_15:
  sub_1B0398EFC(v13, v19, v20);
  return 0;
}

uint64_t _s13IMAP2Protocol11MessageDataV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  v4 = *(v2 + 4);
  if (*(v1 + 4))
  {
    if (!*(v2 + 4))
    {
      return 0;
    }
  }

  else
  {
    if (*v2 != *v1)
    {
      v4 = 1;
    }

    if (v4)
    {
      return 0;
    }
  }

  v5 = *(v2 + 12);
  if (*(v1 + 12))
  {
    if (!*(v2 + 12))
    {
      return 0;
    }
  }

  else
  {
    if (*(v2 + 8) != *(v1 + 8))
    {
      v5 = 1;
    }

    if (v5)
    {
      return 0;
    }
  }

  v6 = *(v1 + 160);
  v7 = *(v1 + 128);
  v375 = *(v1 + 144);
  v376 = v6;
  v8 = *(v1 + 160);
  v377 = *(v1 + 176);
  v9 = *(v1 + 96);
  v10 = *(v1 + 64);
  v371 = *(v1 + 80);
  v372 = v9;
  v11 = *(v1 + 96);
  v12 = *(v1 + 128);
  v373 = *(v1 + 112);
  v374 = v12;
  v13 = *(v1 + 32);
  v368[0] = *(v1 + 16);
  v368[1] = v13;
  v14 = *(v1 + 64);
  v15 = *(v1 + 16);
  v16 = *(v1 + 32);
  v369 = *(v1 + 48);
  v370 = v14;
  v17 = *(v2 + 160);
  v18 = *(v2 + 128);
  v364 = *(v2 + 144);
  v365 = v17;
  v19 = *(v2 + 160);
  v366 = *(v2 + 176);
  v20 = *(v2 + 96);
  v21 = *(v2 + 64);
  v360 = *(v2 + 80);
  v361 = v20;
  v22 = *(v2 + 96);
  v23 = *(v2 + 128);
  v362 = *(v2 + 112);
  v363 = v23;
  v24 = *(v2 + 32);
  v357[0] = *(v2 + 16);
  v357[1] = v24;
  v25 = *(v2 + 64);
  v27 = *(v2 + 16);
  v26 = *(v2 + 32);
  v358 = *(v2 + 48);
  v359 = v25;
  v28 = *(v1 + 160);
  __src[8] = *(v1 + 144);
  __src[9] = v28;
  __src[10] = *(v1 + 176);
  v29 = *(v1 + 96);
  __src[4] = *(v1 + 80);
  __src[5] = v29;
  v30 = *(v1 + 128);
  __src[6] = *(v1 + 112);
  __src[7] = v30;
  v31 = *(v1 + 32);
  __src[0] = *(v1 + 16);
  __src[1] = v31;
  v32 = *(v1 + 64);
  __src[2] = *(v1 + 48);
  __src[3] = v32;
  v33 = *(v2 + 176);
  *(&__src[20] + 8) = v19;
  *(&__src[21] + 8) = v33;
  *(&__src[16] + 8) = v22;
  *(&__src[17] + 8) = v362;
  *(&__src[18] + 8) = v18;
  *(&__src[19] + 8) = v364;
  *(&__src[15] + 8) = v360;
  *(&__src[11] + 8) = v27;
  *(&__src[12] + 8) = v26;
  *(&__src[13] + 8) = v358;
  *(&__src[14] + 8) = v21;
  v331[8] = v375;
  v331[9] = v8;
  v331[10] = *(v1 + 176);
  v331[4] = v371;
  v331[5] = v11;
  v331[6] = v373;
  v331[7] = v7;
  v331[0] = v15;
  v331[1] = v16;
  v378 = *(v1 + 192);
  v367 = *(v2 + 192);
  LOBYTE(__src[11]) = *(v1 + 192);
  BYTE8(__src[22]) = *(v2 + 192);
  v34 = v1;
  v332 = *(v1 + 192);
  v331[2] = v369;
  v331[3] = v10;
  if (sub_1B07AB810(v331) == 1)
  {
    v35 = *(v3 + 160);
    __dst[8] = *(v3 + 144);
    __dst[9] = v35;
    __dst[10] = *(v3 + 176);
    LOBYTE(__dst[11]) = *(v3 + 192);
    v36 = *(v3 + 96);
    __dst[4] = *(v3 + 80);
    __dst[5] = v36;
    v37 = *(v3 + 128);
    __dst[6] = *(v3 + 112);
    __dst[7] = v37;
    v38 = *(v3 + 32);
    __dst[0] = *(v3 + 16);
    __dst[1] = v38;
    v39 = *(v3 + 64);
    __dst[2] = *(v3 + 48);
    __dst[3] = v39;
    if (sub_1B07AB810(__dst) == 1)
    {
      sub_1B03B5C80(v368, v304, &qword_1EB6E4148, &qword_1B0EE17F0);
      v40 = v304;
LABEL_16:
      sub_1B03B5C80(v357, v40, &qword_1EB6E4148, &qword_1B0EE17F0);
      goto LABEL_17;
    }

    goto LABEL_27;
  }

  v101 = *(v3 + 160);
  __dst[8] = *(v3 + 144);
  __dst[9] = v101;
  __dst[10] = *(v3 + 176);
  LOBYTE(__dst[11]) = *(v3 + 192);
  v102 = *(v3 + 96);
  __dst[4] = *(v3 + 80);
  __dst[5] = v102;
  v103 = *(v3 + 128);
  __dst[6] = *(v3 + 112);
  __dst[7] = v103;
  v104 = *(v3 + 32);
  __dst[0] = *(v3 + 16);
  __dst[1] = v104;
  v105 = *(v3 + 64);
  __dst[2] = *(v3 + 48);
  __dst[3] = v105;
  if (sub_1B07AB810(__dst) == 1)
  {
LABEL_27:
    memcpy(__dst, __src, 0x169uLL);
    sub_1B03B5C80(v368, v304, &qword_1EB6E4148, &qword_1B0EE17F0);
    sub_1B03B5C80(v357, v304, &qword_1EB6E4148, &qword_1B0EE17F0);
    v106 = &unk_1EB6E60D8;
    v107 = &unk_1B0EE17F8;
    v108 = __dst;
LABEL_28:
    sub_1B0398EFC(v108, v106, v107);
    return 0;
  }

  v109 = *(v3 + 160);
  v353 = *(v3 + 144);
  v354 = v109;
  v355 = *(v3 + 176);
  v356 = *(v3 + 192);
  v110 = *(v3 + 96);
  v349 = *(v3 + 80);
  v350 = v110;
  v111 = *(v3 + 128);
  v351 = *(v3 + 112);
  v352 = v111;
  v112 = *(v3 + 32);
  v345 = *(v3 + 16);
  v346 = v112;
  v113 = *(v3 + 64);
  v347 = *(v3 + 48);
  v348 = v113;
  v114 = *(v34 + 160);
  v304[8] = *(v34 + 144);
  v304[9] = v114;
  v304[10] = *(v34 + 176);
  LOBYTE(v304[11]) = *(v34 + 192);
  v115 = *(v34 + 96);
  v304[4] = *(v34 + 80);
  v304[5] = v115;
  v116 = *(v34 + 128);
  v304[6] = *(v34 + 112);
  v304[7] = v116;
  v117 = *(v34 + 32);
  v304[0] = *(v34 + 16);
  v304[1] = v117;
  v118 = *(v34 + 64);
  v304[2] = *(v34 + 48);
  v304[3] = v118;
  if (sub_1B075FACC(v304) == 1)
  {
    v119 = *(v3 + 160);
    v341 = *(v3 + 144);
    v342 = v119;
    v343 = *(v3 + 176);
    v344 = *(v3 + 192);
    v120 = *(v3 + 96);
    v337 = *(v3 + 80);
    v338 = v120;
    v121 = *(v3 + 128);
    v339 = *(v3 + 112);
    v340 = v121;
    v122 = *(v3 + 32);
    v333 = *(v3 + 16);
    v334 = v122;
    v123 = *(v3 + 64);
    v335 = *(v3 + 48);
    v336 = v123;
    if (sub_1B075FACC(&v333) == 1)
    {
      sub_1B03B5C80(v368, &v317, &qword_1EB6E4148, &qword_1B0EE17F0);
      v40 = &v317;
      goto LABEL_16;
    }

    sub_1B03B5C80(v368, &v317, &qword_1EB6E4148, &qword_1B0EE17F0);
    sub_1B03B5C80(v357, &v317, &qword_1EB6E4148, &qword_1B0EE17F0);
    sub_1B0398EFC(&v345, &qword_1EB6E4148, &qword_1B0EE17F0);
    goto LABEL_38;
  }

  v124 = *(v3 + 160);
  v341 = *(v3 + 144);
  v342 = v124;
  v343 = *(v3 + 176);
  v344 = *(v3 + 192);
  v125 = *(v3 + 96);
  v337 = *(v3 + 80);
  v338 = v125;
  v126 = *(v3 + 128);
  v339 = *(v3 + 112);
  v340 = v126;
  v127 = *(v3 + 32);
  v333 = *(v3 + 16);
  v334 = v127;
  v128 = *(v3 + 64);
  v335 = *(v3 + 48);
  v336 = v128;
  if (sub_1B075FACC(&v333) == 1)
  {
    sub_1B03B5C80(v368, &v317, &qword_1EB6E4148, &qword_1B0EE17F0);
    sub_1B03B5C80(v357, &v317, &qword_1EB6E4148, &qword_1B0EE17F0);
LABEL_38:
    v134 = *(v34 + 160);
    v341 = *(v34 + 144);
    v342 = v134;
    v343 = *(v34 + 176);
    v344 = *(v34 + 192);
    v135 = *(v34 + 96);
    v337 = *(v34 + 80);
    v338 = v135;
    v136 = *(v34 + 128);
    v339 = *(v34 + 112);
    v340 = v136;
    v137 = *(v34 + 32);
    v333 = *(v34 + 16);
    v334 = v137;
    v138 = *(v34 + 64);
    v335 = *(v34 + 48);
    v336 = v138;
    v106 = &qword_1EB6E4148;
    v107 = &qword_1B0EE17F0;
    v108 = &v333;
    goto LABEL_28;
  }

  v325 = v304[8];
  v326 = v304[9];
  v327 = v304[10];
  v328 = v304[11];
  v321 = v304[4];
  v322 = v304[5];
  v323 = v304[6];
  v324 = v304[7];
  v317 = v304[0];
  v318 = v304[1];
  v319 = v304[2];
  v320 = v304[3];
  if (sub_1B0717014(&v317) == 1)
  {
    __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
    v140 = v139[5];
    v405 = v139[4];
    v406 = v140;
    v407 = v139[6];
    *&v408 = *(v139 + 14);
    v141 = v139[1];
    v401 = *v139;
    v402 = v141;
    v142 = v139[3];
    v403 = v139[2];
    v404 = v142;
    v313 = v341;
    v314 = v342;
    v315 = v343;
    v316 = v344;
    v309 = v337;
    v310 = v338;
    v311 = v339;
    v312 = v340;
    v305 = v333;
    v306 = v334;
    v307 = v335;
    v308 = v336;
    if (sub_1B0717014(&v305) == 1)
    {
      __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
      v144 = v143[5];
      v416 = v143[4];
      v417 = v144;
      v418 = v143[6];
      *&v419 = *(v143 + 14);
      v145 = v143[1];
      v412 = *v143;
      v413 = v145;
      v146 = v143[3];
      v414 = v143[2];
      v415 = v146;
      sub_1B03B5C80(v368, &v292, &qword_1EB6E4148, &qword_1B0EE17F0);
      sub_1B03B5C80(v357, &v292, &qword_1EB6E4148, &qword_1B0EE17F0);
      v147 = static BodyStructure.Multipart.__derived_struct_equals(_:_:)(&v401, &v412);
      goto LABEL_54;
    }

LABEL_52:
    __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
    sub_1B03B5C80(v368, &v292, &qword_1EB6E4148, &qword_1B0EE17F0);
    sub_1B03B5C80(v357, &v292, &qword_1EB6E4148, &qword_1B0EE17F0);
    sub_1B0398EFC(&v345, &qword_1EB6E4148, &qword_1B0EE17F0);
LABEL_55:
    v313 = __src[8];
    v314 = __src[9];
    v315 = __src[10];
    v316 = __src[11];
    v309 = __src[4];
    v310 = __src[5];
    v311 = __src[6];
    v312 = __src[7];
    v305 = __src[0];
    v306 = __src[1];
    v307 = __src[2];
    v308 = __src[3];
    v106 = &qword_1EB6E4148;
    v107 = &qword_1B0EE17F0;
    v108 = &v305;
    goto LABEL_28;
  }

  __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
  v164 = v163[9];
  v409 = v163[8];
  v410 = v164;
  v411 = v163[10];
  v165 = v163[5];
  v405 = v163[4];
  v406 = v165;
  v166 = v163[6];
  v408 = v163[7];
  v407 = v166;
  v167 = v163[1];
  v401 = *v163;
  v402 = v167;
  v168 = v163[2];
  v404 = v163[3];
  v403 = v168;
  v316 = v344;
  v315 = v343;
  v314 = v342;
  v313 = v341;
  v312 = v340;
  v311 = v339;
  v310 = v338;
  v309 = v337;
  v308 = v336;
  v307 = v335;
  v306 = v334;
  v305 = v333;
  if (sub_1B0717014(&v305) == 1)
  {
    goto LABEL_52;
  }

  __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
  v183 = v182[9];
  v420 = v182[8];
  v421 = v183;
  v422 = v182[10];
  v184 = v182[5];
  v416 = v182[4];
  v417 = v184;
  v185 = v182[7];
  v418 = v182[6];
  v419 = v185;
  v186 = v182[1];
  v412 = *v182;
  v413 = v186;
  v187 = v182[3];
  v414 = v182[2];
  v415 = v187;
  sub_1B03B5C80(v368, &v292, &qword_1EB6E4148, &qword_1B0EE17F0);
  sub_1B03B5C80(v357, &v292, &qword_1EB6E4148, &qword_1B0EE17F0);
  v147 = static BodyStructure.Singlepart.__derived_struct_equals(_:_:)(&v401, &v412);
LABEL_54:
  v188 = v147;
  sub_1B0398EFC(&v345, &qword_1EB6E4148, &qword_1B0EE17F0);
  if ((v188 & 1) == 0)
  {
    goto LABEL_55;
  }

LABEL_17:
  v325 = __src[8];
  v326 = __src[9];
  v327 = __src[10];
  v328 = __src[11];
  v321 = __src[4];
  v322 = __src[5];
  v323 = __src[6];
  v324 = __src[7];
  v317 = __src[0];
  v318 = __src[1];
  v319 = __src[2];
  v320 = __src[3];
  sub_1B0398EFC(&v317, &qword_1EB6E4148, &qword_1B0EE17F0);
  if ((sub_1B0CFD5E0(*(v34 + 200), *(v3 + 200)) & 1) == 0)
  {
    return 0;
  }

  v41 = *(v34 + 352);
  v42 = *(v34 + 320);
  v353 = *(v34 + 336);
  v354 = v41;
  v43 = *(v34 + 352);
  v355 = *(v34 + 368);
  v44 = *(v34 + 288);
  v45 = *(v34 + 256);
  v349 = *(v34 + 272);
  v350 = v44;
  v46 = *(v34 + 288);
  v47 = *(v34 + 320);
  v351 = *(v34 + 304);
  v352 = v47;
  v48 = *(v34 + 224);
  v345 = *(v34 + 208);
  v346 = v48;
  v49 = *(v34 + 256);
  v50 = *(v34 + 208);
  v51 = *(v34 + 224);
  v347 = *(v34 + 240);
  v348 = v49;
  v52 = *(v3 + 352);
  v53 = *(v3 + 320);
  v341 = *(v3 + 336);
  v342 = v52;
  v54 = *(v3 + 352);
  v343 = *(v3 + 368);
  v55 = *(v3 + 288);
  v56 = *(v3 + 256);
  v337 = *(v3 + 272);
  v338 = v55;
  v57 = *(v3 + 288);
  v58 = *(v3 + 320);
  v339 = *(v3 + 304);
  v340 = v58;
  v59 = *(v3 + 224);
  v333 = *(v3 + 208);
  v334 = v59;
  v60 = *(v3 + 256);
  v62 = *(v3 + 208);
  v61 = *(v3 + 224);
  v335 = *(v3 + 240);
  v336 = v60;
  v63 = *(v34 + 352);
  __dst[8] = *(v34 + 336);
  __dst[9] = v63;
  __dst[10] = *(v34 + 368);
  v64 = *(v34 + 288);
  __dst[4] = *(v34 + 272);
  __dst[5] = v64;
  v65 = *(v34 + 320);
  __dst[6] = *(v34 + 304);
  __dst[7] = v65;
  v66 = *(v34 + 224);
  __dst[0] = *(v34 + 208);
  __dst[1] = v66;
  v67 = *(v34 + 256);
  __dst[2] = *(v34 + 240);
  __dst[3] = v67;
  v68 = *(v3 + 368);
  *(&__dst[20] + 8) = v54;
  *(&__dst[21] + 8) = v68;
  *(&__dst[16] + 8) = v57;
  *(&__dst[17] + 8) = v339;
  *(&__dst[18] + 8) = v53;
  *(&__dst[19] + 8) = v341;
  *(&__dst[15] + 8) = v337;
  *(&__dst[11] + 8) = v62;
  *(&__dst[12] + 8) = v61;
  *(&__dst[13] + 8) = v335;
  *(&__dst[14] + 8) = v56;
  v313 = v353;
  v314 = v43;
  v315 = *(v34 + 368);
  v309 = v349;
  v310 = v46;
  v311 = v351;
  v312 = v42;
  v305 = v50;
  v306 = v51;
  v356 = *(v34 + 384);
  v344 = *(v3 + 384);
  LOBYTE(__dst[11]) = *(v34 + 384);
  BYTE8(__dst[22]) = *(v3 + 384);
  v316 = *(v34 + 384);
  v307 = v347;
  v308 = v45;
  if (sub_1B07AB810(&v305) == 1)
  {
    v69 = *(v3 + 352);
    v304[8] = *(v3 + 336);
    v304[9] = v69;
    v304[10] = *(v3 + 368);
    LOBYTE(v304[11]) = *(v3 + 384);
    v70 = *(v3 + 288);
    v304[4] = *(v3 + 272);
    v304[5] = v70;
    v71 = *(v3 + 320);
    v304[6] = *(v3 + 304);
    v304[7] = v71;
    v72 = *(v3 + 224);
    v304[0] = *(v3 + 208);
    v304[1] = v72;
    v73 = *(v3 + 256);
    v304[2] = *(v3 + 240);
    v304[3] = v73;
    if (sub_1B07AB810(v304) == 1)
    {
      sub_1B03B5C80(&v345, &v292, &qword_1EB6E4148, &qword_1B0EE17F0);
      v74 = &v292;
LABEL_21:
      sub_1B03B5C80(&v333, v74, &qword_1EB6E4148, &qword_1B0EE17F0);
      goto LABEL_22;
    }

LABEL_36:
    memcpy(v304, __dst, 0x169uLL);
    sub_1B03B5C80(&v345, &v292, &qword_1EB6E4148, &qword_1B0EE17F0);
    sub_1B03B5C80(&v333, &v292, &qword_1EB6E4148, &qword_1B0EE17F0);
    v106 = &unk_1EB6E60D8;
    v107 = &unk_1B0EE17F8;
LABEL_51:
    v108 = v304;
    goto LABEL_28;
  }

  v129 = *(v3 + 352);
  v304[8] = *(v3 + 336);
  v304[9] = v129;
  v304[10] = *(v3 + 368);
  LOBYTE(v304[11]) = *(v3 + 384);
  v130 = *(v3 + 288);
  v304[4] = *(v3 + 272);
  v304[5] = v130;
  v131 = *(v3 + 320);
  v304[6] = *(v3 + 304);
  v304[7] = v131;
  v132 = *(v3 + 224);
  v304[0] = *(v3 + 208);
  v304[1] = v132;
  v133 = *(v3 + 256);
  v304[2] = *(v3 + 240);
  v304[3] = v133;
  if (sub_1B07AB810(v304) == 1)
  {
    goto LABEL_36;
  }

  v148 = *(v3 + 352);
  v288 = *(v3 + 336);
  v289 = v148;
  v290 = *(v3 + 368);
  v291 = *(v3 + 384);
  v149 = *(v3 + 288);
  v284 = *(v3 + 272);
  v285 = v149;
  v150 = *(v3 + 320);
  v286 = *(v3 + 304);
  v287 = v150;
  v151 = *(v3 + 224);
  v280 = *(v3 + 208);
  v281 = v151;
  v152 = *(v3 + 256);
  v282 = *(v3 + 240);
  v283 = v152;
  v153 = *(v34 + 352);
  v300 = *(v34 + 336);
  v301 = v153;
  v302 = *(v34 + 368);
  v303 = *(v34 + 384);
  v154 = *(v34 + 272);
  v297 = *(v34 + 288);
  v155 = *(v34 + 320);
  v298 = *(v34 + 304);
  v299 = v155;
  v156 = *(v34 + 224);
  v292 = *(v34 + 208);
  v293 = v156;
  v157 = *(v34 + 256);
  v294 = *(v34 + 240);
  v295 = v157;
  v296 = v154;
  if (sub_1B075FACC(&v292) == 1)
  {
    v158 = *(v3 + 352);
    v276 = *(v3 + 336);
    v277 = v158;
    v278 = *(v3 + 368);
    v279 = *(v3 + 384);
    v159 = *(v3 + 288);
    v272 = *(v3 + 272);
    v273 = v159;
    v160 = *(v3 + 320);
    v274 = *(v3 + 304);
    v275 = v160;
    v161 = *(v3 + 224);
    v268 = *(v3 + 208);
    v269 = v161;
    v162 = *(v3 + 256);
    v270 = *(v3 + 240);
    v271 = v162;
    if (sub_1B075FACC(&v268) == 1)
    {
      sub_1B03B5C80(&v345, &v256, &qword_1EB6E4148, &qword_1B0EE17F0);
      v74 = &v256;
      goto LABEL_21;
    }

    sub_1B03B5C80(&v345, &v256, &qword_1EB6E4148, &qword_1B0EE17F0);
    sub_1B03B5C80(&v333, &v256, &qword_1EB6E4148, &qword_1B0EE17F0);
    sub_1B0398EFC(&v280, &qword_1EB6E4148, &qword_1B0EE17F0);
LABEL_57:
    v189 = *(v34 + 352);
    v276 = *(v34 + 336);
    v277 = v189;
    v278 = *(v34 + 368);
    v279 = *(v34 + 384);
    v190 = *(v34 + 288);
    v272 = *(v34 + 272);
    v273 = v190;
    v191 = *(v34 + 320);
    v274 = *(v34 + 304);
    v275 = v191;
    v192 = *(v34 + 224);
    v268 = *(v34 + 208);
    v269 = v192;
    v193 = *(v34 + 256);
    v270 = *(v34 + 240);
    v271 = v193;
    v106 = &qword_1EB6E4148;
    v107 = &qword_1B0EE17F0;
    v108 = &v268;
    goto LABEL_28;
  }

  v169 = *(v3 + 352);
  v276 = *(v3 + 336);
  v277 = v169;
  v278 = *(v3 + 368);
  v279 = *(v3 + 384);
  v170 = *(v3 + 288);
  v272 = *(v3 + 272);
  v273 = v170;
  v171 = *(v3 + 320);
  v274 = *(v3 + 304);
  v275 = v171;
  v172 = *(v3 + 224);
  v268 = *(v3 + 208);
  v269 = v172;
  v173 = *(v3 + 256);
  v270 = *(v3 + 240);
  v271 = v173;
  if (sub_1B075FACC(&v268) == 1)
  {
    sub_1B03B5C80(&v345, &v256, &qword_1EB6E4148, &qword_1B0EE17F0);
    sub_1B03B5C80(&v333, &v256, &qword_1EB6E4148, &qword_1B0EE17F0);
    goto LABEL_57;
  }

  v264 = v300;
  v265 = v301;
  v266 = v302;
  v267 = v303;
  v260 = v296;
  v261 = v297;
  v262 = v298;
  v263 = v299;
  v256 = v292;
  v257 = v293;
  v258 = v294;
  v259 = v295;
  if (sub_1B0717014(&v256) == 1)
  {
    __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
    v195 = v194[5];
    v383 = v194[4];
    v384 = v195;
    v385 = v194[6];
    *&v386 = *(v194 + 14);
    v196 = v194[1];
    v379 = *v194;
    v380 = v196;
    v197 = v194[3];
    v381 = v194[2];
    v382 = v197;
    v252 = v276;
    v253 = v277;
    v254 = v278;
    v255 = v279;
    v248 = v272;
    v249 = v273;
    v250 = v274;
    v251 = v275;
    v244 = v268;
    v245 = v269;
    v246 = v270;
    v247 = v271;
    if (sub_1B0717014(&v244) == 1)
    {
      __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
      v199 = v198[5];
      v394 = v198[4];
      v395 = v199;
      v396 = v198[6];
      *&v397 = *(v198 + 14);
      v200 = v198[1];
      v390 = *v198;
      v391 = v200;
      v201 = v198[3];
      v392 = v198[2];
      v393 = v201;
      sub_1B03B5C80(&v345, v237, &qword_1EB6E4148, &qword_1B0EE17F0);
      sub_1B03B5C80(&v333, v237, &qword_1EB6E4148, &qword_1B0EE17F0);
      v202 = static BodyStructure.Multipart.__derived_struct_equals(_:_:)(&v379, &v390);
      goto LABEL_74;
    }

LABEL_72:
    __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
    sub_1B03B5C80(&v345, v237, &qword_1EB6E4148, &qword_1B0EE17F0);
    sub_1B03B5C80(&v333, v237, &qword_1EB6E4148, &qword_1B0EE17F0);
    sub_1B0398EFC(&v280, &qword_1EB6E4148, &qword_1B0EE17F0);
LABEL_75:
    v252 = __dst[8];
    v253 = __dst[9];
    v254 = __dst[10];
    v255 = __dst[11];
    v248 = __dst[4];
    v249 = __dst[5];
    v250 = __dst[6];
    v251 = __dst[7];
    v244 = __dst[0];
    v245 = __dst[1];
    v246 = __dst[2];
    v247 = __dst[3];
    v106 = &qword_1EB6E4148;
    v107 = &qword_1B0EE17F0;
    v108 = &v244;
    goto LABEL_28;
  }

  __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
  v214 = v213[9];
  v387 = v213[8];
  v388 = v214;
  v389 = v213[10];
  v215 = v213[5];
  v383 = v213[4];
  v384 = v215;
  v216 = v213[6];
  v386 = v213[7];
  v385 = v216;
  v217 = v213[1];
  v379 = *v213;
  v380 = v217;
  v218 = v213[2];
  v382 = v213[3];
  v381 = v218;
  v255 = v279;
  v253 = v277;
  v254 = v278;
  v251 = v275;
  v252 = v276;
  v249 = v273;
  v250 = v274;
  v247 = v271;
  v248 = v272;
  v245 = v269;
  v246 = v270;
  v244 = v268;
  if (sub_1B0717014(&v244) == 1)
  {
    goto LABEL_72;
  }

  __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
  v220 = v219[9];
  v398 = v219[8];
  v399 = v220;
  v400 = v219[10];
  v221 = v219[5];
  v394 = v219[4];
  v395 = v221;
  v222 = v219[6];
  v397 = v219[7];
  v396 = v222;
  v223 = v219[1];
  v390 = *v219;
  v391 = v223;
  v224 = v219[2];
  v393 = v219[3];
  v392 = v224;
  sub_1B03B5C80(&v345, v237, &qword_1EB6E4148, &qword_1B0EE17F0);
  sub_1B03B5C80(&v333, v237, &qword_1EB6E4148, &qword_1B0EE17F0);
  v202 = static BodyStructure.Singlepart.__derived_struct_equals(_:_:)(&v379, &v390);
LABEL_74:
  v225 = v202;
  sub_1B0398EFC(&v280, &qword_1EB6E4148, &qword_1B0EE17F0);
  if ((v225 & 1) == 0)
  {
    goto LABEL_75;
  }

LABEL_22:
  v300 = __dst[8];
  v301 = __dst[9];
  v302 = __dst[10];
  v303 = __dst[11];
  v297 = __dst[5];
  v298 = __dst[6];
  v299 = __dst[7];
  v292 = __dst[0];
  v293 = __dst[1];
  v294 = __dst[2];
  v295 = __dst[3];
  v296 = __dst[4];
  sub_1B0398EFC(&v292, &qword_1EB6E4148, &qword_1B0EE17F0);
  v75 = (v34 + 392);
  v76 = *(v34 + 472);
  v272 = *(v34 + 456);
  v273 = v76;
  v274 = *(v34 + 488);
  *&v275 = *(v34 + 504);
  v77 = *(v34 + 408);
  v268 = *(v34 + 392);
  v269 = v77;
  v78 = *(v34 + 440);
  v270 = *(v34 + 424);
  v271 = v78;
  v79 = (v3 + 392);
  v80 = *(v3 + 440);
  v258 = *(v3 + 424);
  v259 = v80;
  v81 = *(v3 + 408);
  v256 = *(v3 + 392);
  v257 = v81;
  *&v263 = *(v3 + 504);
  v82 = *(v3 + 488);
  v261 = *(v3 + 472);
  v262 = v82;
  v260 = *(v3 + 456);
  v83 = *(&v270 + 1);
  v84 = (v34 + 440);
  v85 = (v3 + 440);
  if (!*(&v270 + 1))
  {
    if (!*(&v258 + 1))
    {
      v203 = *(v34 + 408);
      v304[0] = *v75;
      v304[1] = v203;
      v304[2] = *(v34 + 424);
      v204 = *(v34 + 488);
      v304[5] = *(v34 + 472);
      v304[6] = v204;
      *&v304[7] = *(v34 + 504);
      v205 = *v84;
      v304[4] = *(v34 + 456);
      v304[3] = v205;
      sub_1B03B5C80(&v268, &v280, &qword_1EB6E64B0, &unk_1B0EE81A0);
      sub_1B03B5C80(&v256, &v280, &qword_1EB6E64B0, &unk_1B0EE81A0);
      result = sub_1B0398EFC(v304, &qword_1EB6E64B0, &unk_1B0EE81A0);
      goto LABEL_62;
    }

    goto LABEL_50;
  }

  if (!*(&v258 + 1))
  {
LABEL_50:
    v174 = *(v34 + 408);
    v304[0] = *v75;
    v304[1] = v174;
    v175 = *(v34 + 488);
    v304[5] = *(v34 + 472);
    v304[6] = v175;
    v176 = *v84;
    v304[4] = *(v34 + 456);
    v304[3] = v176;
    v177 = *v79;
    *(&v304[8] + 8) = *(v3 + 408);
    *(&v304[7] + 8) = v177;
    v178 = *(v3 + 456);
    *(&v304[10] + 8) = *v85;
    v179 = *(v3 + 472);
    *(&v304[13] + 8) = *(v3 + 488);
    *&v304[2] = *(v34 + 424);
    *(&v304[2] + 1) = *(&v270 + 1);
    v180 = *(v3 + 424);
    *&v304[7] = *(v34 + 504);
    *(&v304[9] + 1) = v180;
    v181 = *(v3 + 504);
    *&v304[10] = *(&v258 + 1);
    *(&v304[14] + 1) = v181;
    *(&v304[12] + 8) = v179;
    *(&v304[11] + 8) = v178;
    sub_1B03B5C80(&v268, &v280, &qword_1EB6E64B0, &unk_1B0EE81A0);
    sub_1B03B5C80(&v256, &v280, &qword_1EB6E64B0, &unk_1B0EE81A0);
    v106 = &unk_1EB6E64B8;
    v107 = &unk_1B0EE71C8;
    goto LABEL_51;
  }

  v86 = *(v3 + 424);
  v87 = *(v3 + 408);
  v237[0] = *v79;
  v237[1] = v87;
  *&v238 = v86;
  *(&v238 + 1) = *(&v258 + 1);
  v88 = *(v3 + 488);
  v241 = *(v3 + 472);
  v242 = v88;
  v243 = *(v3 + 504);
  v89 = *(v3 + 456);
  v239 = *v85;
  v240 = v89;
  v304[0] = v237[0];
  v304[1] = v87;
  *&v304[7] = v243;
  v304[6] = v88;
  v304[5] = v241;
  v304[4] = v89;
  v304[3] = v239;
  v304[2] = v238;
  v90 = *(v34 + 408);
  v280 = *v75;
  v281 = v90;
  v91 = *(v34 + 424);
  v92 = *v84;
  v93 = *(v34 + 456);
  v94 = *(v34 + 472);
  v95 = *(v34 + 488);
  *&v287 = *(v34 + 504);
  v285 = v94;
  v286 = v95;
  v283 = v92;
  v284 = v93;
  *&v282 = v91;
  *(&v282 + 1) = *(&v270 + 1);
  sub_1B03B5C80(&v268, &v244, &qword_1EB6E64B0, &unk_1B0EE81A0);
  sub_1B03B5C80(&v256, &v244, &qword_1EB6E64B0, &unk_1B0EE81A0);
  v96 = static Envelope.__derived_struct_equals(_:_:)(&v280, v304);
  sub_1B0398EFC(v237, &qword_1EB6E64B0, &unk_1B0EE81A0);
  v97 = *(v34 + 408);
  v244 = *v75;
  v245 = v97;
  *&v246 = *(v34 + 424);
  *(&v246 + 1) = v83;
  v98 = *(v34 + 488);
  v249 = *(v34 + 472);
  v250 = v98;
  *&v251 = *(v34 + 504);
  v99 = *(v34 + 456);
  v247 = *v84;
  v248 = v99;
  result = sub_1B0398EFC(&v244, &qword_1EB6E64B0, &unk_1B0EE81A0);
  if ((v96 & 1) == 0)
  {
    return 0;
  }

LABEL_62:
  v206 = *(v34 + 512);
  v207 = *(v3 + 512);
  if (v206)
  {
    if (!v207)
    {
      return 0;
    }

    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v208 = sub_1B0AFE1EC(v206, v207);

    v209 = v34;
    if ((v208 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v209 = v34;
    if (v207)
    {
      return 0;
    }
  }

  v210 = *(v209 + 520);
  v211 = *(v3 + 520);
  if (v210)
  {
    if (!v211)
    {
      return 0;
    }

    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v212 = sub_1B0AFDF14(v210, v211);

    v209 = v34;
    if ((v212 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v211)
  {
    return 0;
  }

  v226 = *(v3 + 536);
  if (*(v209 + 536))
  {
    if (!*(v3 + 536))
    {
      return 0;
    }
  }

  else
  {
    if (*(v209 + 528) != *(v3 + 528))
    {
      v226 = 1;
    }

    if (v226)
    {
      return 0;
    }
  }

  v227 = *(v3 + 544);
  if (*(v209 + 544))
  {
    if (!*(v3 + 544))
    {
      return 0;
    }
  }

  else
  {
    if (*(v209 + 540) != *(v3 + 540))
    {
      v227 = 1;
    }

    if (v227)
    {
      return 0;
    }
  }

  if (*(v209 + 560))
  {
    if ((*(v3 + 560) & 1) == 0)
    {
      return 0;
    }

    goto LABEL_96;
  }

  if (*(v3 + 560))
  {
    return 0;
  }

  v228 = *(v209 + 552);
  v229 = *(v3 + 552);
  if (((v229 | v228) & 0x8000000000000000) == 0)
  {
    v230 = v229 == v228;
    v209 = v34;
    if (!v230)
    {
      return 0;
    }

LABEL_96:
    v231 = *(v209 + 576);
    v232 = *(v3 + 576);
    if (v231)
    {
      if (!v232 || (*(v34 + 568) != *(v3 + 568) || v231 != v232) && (sub_1B0E46A78() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v232)
    {
      return 0;
    }

    v233 = *(v34 + 592);
    v234 = *(v3 + 592);
    if (v233)
    {
      if (!v234 || (static EmailID.__derived_struct_equals(_:_:)(*(v34 + 584), v233, *(v3 + 584), v234) & 1) == 0)
      {
        return 0;
      }
    }

    else if (v234)
    {
      return 0;
    }

    v235 = *(v34 + 608);
    v236 = *(v3 + 608);
    if (v235)
    {
      return v236 && (static ThreadID.__derived_struct_equals(_:_:)(*(v34 + 600), v235, *(v3 + 600), v236) & 1) != 0;
    }

    return !v236;
  }

  __break(1u);
  return result;
}