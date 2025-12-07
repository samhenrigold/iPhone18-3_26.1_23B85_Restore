uint64_t sub_1D518AB68@<X0>(uint64_t a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  v6 = sub_1D560D838();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EBF20, &unk_1D561F530);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v22 - v11;
  if (sub_1D560F0C8())
  {
LABEL_2:

    v13 = 71;
LABEL_3:
    *a3 = v13;
    return __swift_destroy_boxed_opaque_existential_1(a2);
  }

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_1D560EC98();
  sub_1D560D5C8();
  (*(v7 + 8))(v9, v6);
  v15 = sub_1D560D4C8();
  if (__swift_getEnumTagSinglePayload(v12, 1, v15) == 1)
  {
    sub_1D50AA0F4(v12);
  }

  else
  {
    v16 = sub_1D560D488();
    v18 = v17;
    (*(*(v15 - 8) + 8))(v12, v15);
    if (v16 == _s8MusicKit0A7LibraryC0aB8InternalE2idSSvg_0() && v18 == v19)
    {
    }

    else
    {
      v21 = sub_1D5616168();

      if ((v21 & 1) == 0)
      {
        goto LABEL_2;
      }
    }
  }

  switch(a1)
  {
    case 0:

      v13 = 72;
      goto LABEL_3;
    case 1:

      v13 = 0x80;
      goto LABEL_3;
    case 2:

      v13 = 1;
      goto LABEL_3;
    case 3:

      v13 = 0;
      goto LABEL_3;
    case 4:

      v13 = 64;
      goto LABEL_3;
    case 5:

      v13 = 65;
      goto LABEL_3;
    case 6:

      v13 = 66;
      goto LABEL_3;
    case 7:

      v13 = 67;
      goto LABEL_3;
    case 8:

      v13 = 68;
      goto LABEL_3;
    case 9:

      v13 = 69;
      goto LABEL_3;
    case 10:

      v13 = 70;
      goto LABEL_3;
    default:
      result = sub_1D5615E08();
      __break(1u);
      break;
  }

  return result;
}

uint64_t static MusicLibrary.AddStatus.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (!(v2 >> 6))
  {
    if (v3 < 0x40)
    {
      v4 = v3 ^ v2 ^ 1;
      return v4 & 1;
    }

LABEL_9:
    v4 = 0;
    return v4 & 1;
  }

  if (v2 >> 6 != 1)
  {
    if (v3 == 128)
    {
      v4 = 1;
      return v4 & 1;
    }

    goto LABEL_9;
  }

  if ((v3 & 0xC0) != 0x40)
  {
    goto LABEL_9;
  }

  v4 = ((v3 ^ v2) & 0x3F) == 0;
  return v4 & 1;
}

uint64_t MusicLibrary.AddStatus.UnaddableReason.hashValue.getter()
{
  v1 = *v0;
  sub_1D56162D8();
  MEMORY[0x1DA6EC0D0](v1);
  return sub_1D5616328();
}

uint64_t sub_1D518AFFC(uint64_t a1)
{
  sub_1D56162D8();
  MusicLibrary.AddStatus.UnaddableReason.hash(into:)();
  return sub_1D5616328();
}

uint64_t MusicLibrary.AddStatus.AddableCaveat.hashValue.getter()
{
  sub_1D56162D8();
  MEMORY[0x1DA6EC0D0](0);
  return sub_1D5616328();
}

uint64_t MusicLibrary.AddStatus.hash(into:)()
{
  v1 = *v0;
  if (!(v1 >> 6))
  {
    MEMORY[0x1DA6EC0D0](1);
    if (v1)
    {
      return sub_1D56162F8();
    }

    sub_1D56162F8();
    goto LABEL_7;
  }

  if (v1 >> 6 != 1)
  {
LABEL_7:
    v2 = 0;
    return MEMORY[0x1DA6EC0D0](v2);
  }

  MEMORY[0x1DA6EC0D0](2);
  v2 = v1 & 0x3F;
  return MEMORY[0x1DA6EC0D0](v2);
}

uint64_t MusicLibrary.AddStatus.hashValue.getter()
{
  v1 = *v0;
  sub_1D56162D8();
  if (v1 >> 6)
  {
    if (v1 >> 6 == 1)
    {
      MEMORY[0x1DA6EC0D0](2);
      v2 = v1 & 0x3F;
LABEL_8:
      MEMORY[0x1DA6EC0D0](v2);
      return sub_1D5616328();
    }

LABEL_7:
    v2 = 0;
    goto LABEL_8;
  }

  MEMORY[0x1DA6EC0D0](1);
  if ((v1 & 1) == 0)
  {
    sub_1D56162F8();
    goto LABEL_7;
  }

  sub_1D56162F8();
  return sub_1D5616328();
}

uint64_t sub_1D518B218(uint64_t a1)
{
  v2 = *v1;
  sub_1D56162D8();
  if (!(v2 >> 6))
  {
    MEMORY[0x1DA6EC0D0](1);
    if (v2)
    {
      sub_1D56162F8();
      return sub_1D5616328();
    }

    sub_1D56162F8();
LABEL_7:
    MEMORY[0x1DA6EC0D0](0);
    return sub_1D5616328();
  }

  if (v2 >> 6 != 1)
  {
    goto LABEL_7;
  }

  MEMORY[0x1DA6EC0D0](2);
  MusicLibrary.AddStatus.UnaddableReason.hash(into:)();
  return sub_1D5616328();
}

uint64_t MusicLibrary.AddStatus.description.getter()
{
  v1 = *v0;
  if (v1 >> 6)
  {
    if (v1 >> 6 == 1)
    {
      MEMORY[0x1DA6EAC70](0x62616464616E752ELL, 0xEB0000000028656CLL);
      sub_1D502EC78(v1 & 0x3F);
      MEMORY[0x1DA6EAC70](41, 0xE100000000000000);
      return 0;
    }

    else
    {
      return 0x64656464612ELL;
    }
  }

  else if (v1)
  {
    return 0x656C62616464612ELL;
  }

  else
  {
    return 0xD000000000000028;
  }
}

unint64_t MusicLibrary.AddStatus.UnaddableReason.description.getter()
{
  result = 0x4C6465726168732ELL;
  switch(*v0)
  {
    case 1:
      result = 0xD000000000000015;
      break;
    case 2:
      result = 0xD00000000000001ALL;
      break;
    case 3:
      result = 0xD00000000000001CLL;
      break;
    case 4:
      result = 0xD000000000000013;
      break;
    case 5:
      result = 0xD000000000000023;
      break;
    case 6:
      result = 0xD000000000000015;
      break;
    case 7:
      return result;
    case 8:
      result = 0x6E776F6E6B6E752ELL;
      break;
    default:
      result = 0xD00000000000001DLL;
      break;
  }

  return result;
}

uint64_t sub_1D518B508()
{
  result = sub_1D5615E08();
  __break(1u);
  return result;
}

unint64_t sub_1D518B6E8()
{
  result = qword_1EC7F1100;
  if (!qword_1EC7F1100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F1100);
  }

  return result;
}

unint64_t sub_1D518B770()
{
  result = qword_1EC7F1118;
  if (!qword_1EC7F1118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F1118);
  }

  return result;
}

unint64_t sub_1D518B7C8()
{
  result = qword_1EC7F1120;
  if (!qword_1EC7F1120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F1120);
  }

  return result;
}

uint64_t _s9AddStatusOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return v5 + 1;
  }

  if (a2 >= 0xE)
  {
    if (a2 + 242 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 242) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 243;
    return v5 + 1;
  }

LABEL_17:
  v5 = ((*a1 >> 2) & 0xC | (*a1 >> 6)) ^ 0xF;
  if (v5 >= 0xD)
  {
    v5 = -1;
  }

  return v5 + 1;
}

_BYTE *_s9AddStatusOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 242 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 242) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xD)
  {
    v6 = ((a2 - 14) >> 8) + 1;
    *result = a2 - 14;
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
          *result = 16 * (((-a2 >> 2) & 3) - 4 * a2);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1D518B98C(_BYTE *a1)
{
  v1 = *a1;
  if (v1 >= 0)
  {
    return *a1 >> 6;
  }

  else
  {
    return (v1 & 0xFu) + 2;
  }
}

_BYTE *sub_1D518B9B8(_BYTE *result, unsigned int a2)
{
  if (a2 < 2)
  {
    v2 = *result & 0xF | (a2 << 6);
  }

  else
  {
    v2 = (a2 + 14) & 0xF | 0x80;
  }

  *result = v2;
  return result;
}

_BYTE *_s9AddStatusO15UnaddableReasonOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

_BYTE *_s9AddStatusO13AddableCaveatOwst(_BYTE *result, int a2, int a3)
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

uint64_t sub_1D518BB70@<X0>(uint64_t a1@<X0>, char *a3@<X8>)
{
  MEMORY[0x1EEE9AC00](a1);
  (*(v5 + 16))(&v15[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 8]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC540, &unk_1D5633D30);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v22 = 0;
    v20 = 0u;
    v21 = 0u;
    result = sub_1D4E6C9CC(&v20, &qword_1EC7EC548, &qword_1D5621090);
LABEL_12:
    *a3 = 9;
    return result;
  }

  sub_1D4F69344(&v20, v23);
  __swift_project_boxed_opaque_existential_1(v23, v23[3]);
  sub_1D560DB68();
  if (!v16)
  {
    sub_1D4E6C9CC(v15, &qword_1EC7EEC40, &unk_1D561C070);
    v17 = 0u;
    v18 = 0u;
    v19 = 0;
    goto LABEL_11;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EEC50, &unk_1D5623460);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v19 = 0;
    v17 = 0u;
    v18 = 0u;
    goto LABEL_11;
  }

  if (!*(&v18 + 1))
  {
LABEL_11:
    sub_1D4E6C9CC(&v17, &qword_1EC7EC548, &qword_1D5621090);
    result = __swift_destroy_boxed_opaque_existential_1(v23);
    goto LABEL_12;
  }

  sub_1D4F69344(&v17, &v20);
  v6 = *(&v21 + 1);
  v7 = v22;
  v8 = __swift_project_boxed_opaque_existential_1(&v20, *(&v21 + 1));
  sub_1D4F67E14(v8, v6, v7);
  v9 = v17 >> 6;
  if (v9)
  {
    if (v9 == 1)
    {
      v10 = v17 & 0x3F;
    }

    else
    {
      v10 = 10;
    }
  }

  else
  {
    v12 = [objc_opt_self() sharedMonitor];
    v13 = [v12 isRemoteServerLikelyReachable];

    if (v13)
    {
      v10 = 12;
    }

    else
    {
      v10 = 11;
    }
  }

  *a3 = v10;
  __swift_destroy_boxed_opaque_existential_1(&v20);
  return __swift_destroy_boxed_opaque_existential_1(v23);
}

_BYTE *_s9AddActionVwst(_BYTE *result, int a2, int a3)
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

unsigned __int8 *_s9AddActionV17UnsupportedReasonOwet(unsigned __int8 *result, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
LABEL_18:
    v6 = *result;
    if (v6 >= 9)
    {
      v7 = v6 - 8;
    }

    else
    {
      v7 = 0;
    }

    if (v7 >= 4)
    {
      return (v7 - 3);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v2 = a2 + 11;
    if (a2 + 11 >= 0xFFFF00)
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

    switch(v4)
    {
      case 1:
        v5 = result[1];
        if (!result[1])
        {
          goto LABEL_18;
        }

        goto LABEL_16;
      case 2:
        v5 = *(result + 1);
        if (!*(result + 1))
        {
          goto LABEL_18;
        }

        goto LABEL_16;
      case 3:
        __break(1u);
        return result;
      case 4:
        v5 = *(result + 1);
        if (!v5)
        {
          goto LABEL_18;
        }

LABEL_16:
        result = ((*result | (v5 << 8)) - 11);
        break;
      default:
        goto LABEL_18;
    }
  }

  return result;
}

_BYTE *_s9AddActionV17UnsupportedReasonOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 11;
  if (a3 + 11 >= 0xFFFF00)
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

  if (a3 >= 0xF5)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (a2 > 0xF4)
  {
    v7 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
    switch(v6)
    {
      case 1:
        result[1] = v7;
        break;
      case 2:
        *(result + 1) = v7;
        break;
      case 3:
LABEL_25:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v7;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v6)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      case 2:
        *(result + 1) = 0;
        goto LABEL_19;
      case 3:
        goto LABEL_25;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      default:
LABEL_19:
        if (a2)
        {
LABEL_20:
          *result = a2 + 11;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1D518C050(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 9)
  {
    return v1 - 8;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_1D518C064(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 8;
  }

  return result;
}

uint64_t MusicCatalogInternalSearchResponse.Snippet.text.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_1D518C0D8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73636972796CLL && a2 == 0xE600000000000000;
  if (v4 || (sub_1D5616168() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F43686372616573 && a2 == 0xED0000747865746ELL)
  {

    return 1;
  }

  else
  {
    v7 = sub_1D5616168();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1D518C1A4(char a1)
{
  if (a1)
  {
    return 0x6F43686372616573;
  }

  else
  {
    return 0x73636972796CLL;
  }
}

uint64_t sub_1D518C204@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D518C0D8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D518C22C(uint64_t a1)
{
  v2 = sub_1D518C604();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D518C268(uint64_t a1)
{
  v2 = sub_1D518C604();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D518C2A4(uint64_t a1)
{
  v2 = sub_1D518C6AC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D518C2E0(uint64_t a1)
{
  v2 = sub_1D518C6AC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D518C31C(uint64_t a1)
{
  v2 = sub_1D518C658();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D518C358(uint64_t a1)
{
  v2 = sub_1D518C658();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void MusicCatalogInternalSearchResponse.Snippet.Kind.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_25_1();
  v25 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1128, &qword_1D563F070);
  OUTLINED_FUNCTION_4();
  v47 = v27;
  v48 = v26;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v28);
  v46 = &v44 - v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1130, &qword_1D563F078);
  OUTLINED_FUNCTION_4();
  v44 = v31;
  v45 = v30;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v44 - v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1138, &qword_1D563F080);
  OUTLINED_FUNCTION_4();
  v37 = v36;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v44 - v39;
  v41 = *v23;
  __swift_project_boxed_opaque_existential_1(v25, v25[3]);
  sub_1D518C604();
  sub_1D56163D8();
  v42 = (v37 + 8);
  if (v41)
  {
    sub_1D518C658();
    v43 = v46;
    sub_1D5616018();
    (*(v47 + 8))(v43, v48);
  }

  else
  {
    sub_1D518C6AC();
    sub_1D5616018();
    (*(v44 + 8))(v34, v45);
  }

  (*v42)(v40, v35);
  OUTLINED_FUNCTION_26();
}

unint64_t sub_1D518C604()
{
  result = qword_1EC7F1140;
  if (!qword_1EC7F1140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F1140);
  }

  return result;
}

unint64_t sub_1D518C658()
{
  result = qword_1EC7F1148;
  if (!qword_1EC7F1148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F1148);
  }

  return result;
}

unint64_t sub_1D518C6AC()
{
  result = qword_1EC7F1150;
  if (!qword_1EC7F1150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F1150);
  }

  return result;
}

uint64_t MusicCatalogInternalSearchResponse.Snippet.Kind.hashValue.getter()
{
  v1 = *v0;
  sub_1D56162D8();
  MEMORY[0x1DA6EC0D0](v1);
  return sub_1D5616328();
}

void MusicCatalogInternalSearchResponse.Snippet.Kind.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_25_1();
  a22 = v24;
  a23 = v25;
  v70 = v23;
  v27 = v26;
  v67 = v28;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1158, &qword_1D563F088);
  OUTLINED_FUNCTION_4();
  v66 = v29;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v30);
  v32 = v62 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1160, &qword_1D563F090);
  OUTLINED_FUNCTION_4();
  v65 = v34;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v35);
  v37 = v62 - v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1168, &unk_1D563F098);
  OUTLINED_FUNCTION_4();
  v68 = v39;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v40);
  v42 = v62 - v41;
  __swift_project_boxed_opaque_existential_1(v27, v27[3]);
  sub_1D518C604();
  v43 = v70;
  sub_1D5616398();
  if (v43)
  {
    goto LABEL_10;
  }

  v63 = v33;
  v64 = v37;
  v70 = v27;
  v44 = v69;
  sub_1D5615FE8();
  v45 = sub_1D4FE35F0();
  if (v47 == v48 >> 1)
  {
    v69 = v45;
LABEL_9:
    v58 = sub_1D5615C18();
    swift_allocError();
    v60 = v59;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA6C0, &qword_1D561C640);
    *v60 = &type metadata for MusicCatalogInternalSearchResponse.Snippet.Kind;
    sub_1D5615F28();
    sub_1D5615BF8();
    (*(*(v58 - 8) + 104))(v60, *MEMORY[0x1E69E6AF8], v58);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v68 + 8))(v42, v38);
    v27 = v70;
LABEL_10:
    __swift_destroy_boxed_opaque_existential_1(v27);
LABEL_11:
    OUTLINED_FUNCTION_26();
    return;
  }

  v62[1] = 0;
  if (v47 < (v48 >> 1))
  {
    v49 = *(v46 + v47);
    v50 = sub_1D4FE35EC();
    v52 = v51;
    v54 = v53;
    swift_unknownObjectRelease();
    if (v52 == v54 >> 1)
    {
      if (v49)
      {
        a13 = 1;
        sub_1D518C658();
        v55 = v32;
        OUTLINED_FUNCTION_3_0(&_s7SnippetV4KindO23SearchContextCodingKeysON, &a13);
        v56 = v67;
        v57 = v68;
        swift_unknownObjectRelease();
        (*(v66 + 8))(v55, v44);
      }

      else
      {
        a12 = 0;
        sub_1D518C6AC();
        v61 = v64;
        OUTLINED_FUNCTION_3_0(&_s7SnippetV4KindO16LyricsCodingKeysON, &a12);
        v56 = v67;
        v57 = v68;
        swift_unknownObjectRelease();
        (*(v65 + 8))(v61, v63);
      }

      (*(v57 + 8))(v42, v52);
      *v56 = v49;
      __swift_destroy_boxed_opaque_existential_1(v70);
      goto LABEL_11;
    }

    v69 = v50;
    goto LABEL_9;
  }

  __break(1u);
}

uint64_t static MusicCatalogInternalSearchResponse.Snippet.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  if (*a1 == *a2 && a1[1] == *(a2 + 8))
  {
    return v2 ^ v3 ^ 1u;
  }

  v5 = sub_1D5616168();
  result = 0;
  if (v5)
  {
    return v2 ^ v3 ^ 1u;
  }

  return result;
}

uint64_t sub_1D518CC70(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1954047348 && a2 == 0xE400000000000000;
  if (v3 || (sub_1D5616168() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1684957547 && a2 == 0xE400000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1D5616168();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1D518CD40(char a1)
{
  if (a1)
  {
    return 1684957547;
  }

  else
  {
    return 1954047348;
  }
}

uint64_t sub_1D518CD60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_1D56162D8();
  a4(v8, v6);
  return sub_1D5616328();
}

uint64_t sub_1D518CDB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D518CC70(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D518CDDC(uint64_t a1)
{
  v2 = sub_1D518D2AC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D518CE18(uint64_t a1)
{
  v2 = sub_1D518D2AC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void MusicCatalogInternalSearchResponse.Snippet.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, __int16 a11, char a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  OUTLINED_FUNCTION_25_1();
  v27 = v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1170, &qword_1D563F0A8);
  OUTLINED_FUNCTION_4();
  v34 = v29;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v33 - v31;
  __swift_project_boxed_opaque_existential_1(v27, v27[3]);
  sub_1D518D2AC();
  sub_1D56163D8();
  sub_1D5616088();
  if (!v25)
  {
    sub_1D518D300();
    sub_1D56160C8();
  }

  (*(v34 + 8))(v32, v28);
  OUTLINED_FUNCTION_26();
}

uint64_t MusicCatalogInternalSearchResponse.Snippet.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 16);
  sub_1D5614E28();
  return MEMORY[0x1DA6EC0D0](v2);
}

uint64_t MusicCatalogInternalSearchResponse.Snippet.hashValue.getter()
{
  v1 = *(v0 + 16);
  sub_1D56162D8();
  sub_1D5614E28();
  MEMORY[0x1DA6EC0D0](v1);
  return sub_1D5616328();
}

void MusicCatalogInternalSearchResponse.Snippet.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_25_1();
  v25 = v24;
  v27 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1188, &qword_1D563F0B0);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v28);
  __swift_project_boxed_opaque_existential_1(v25, v25[3]);
  sub_1D518D2AC();
  sub_1D5616398();
  if (v23)
  {
    __swift_destroy_boxed_opaque_existential_1(v25);
  }

  else
  {
    v29 = sub_1D5615F98();
    v31 = v30;
    sub_1D518D354();
    sub_1D5615FD8();
    v32 = OUTLINED_FUNCTION_2_98();
    v33(v32);
    *v27 = v29;
    *(v27 + 8) = v31;
    *(v27 + 16) = a12;

    __swift_destroy_boxed_opaque_existential_1(v25);
  }

  OUTLINED_FUNCTION_26();
}

uint64_t sub_1D518D25C(uint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v5[9] = *v1;
  v5[10] = v2;
  v6 = v3;
  sub_1D56162D8();
  MusicCatalogInternalSearchResponse.Snippet.hash(into:)(v5);
  return sub_1D5616328();
}

unint64_t sub_1D518D2AC()
{
  result = qword_1EC7F1178;
  if (!qword_1EC7F1178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F1178);
  }

  return result;
}

unint64_t sub_1D518D300()
{
  result = qword_1EC7F1180;
  if (!qword_1EC7F1180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F1180);
  }

  return result;
}

unint64_t sub_1D518D354()
{
  result = qword_1EC7F1190;
  if (!qword_1EC7F1190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F1190);
  }

  return result;
}

unint64_t sub_1D518D3AC()
{
  result = qword_1EC7F1198;
  if (!qword_1EC7F1198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F1198);
  }

  return result;
}

unint64_t sub_1D518D404()
{
  result = qword_1EC7F11A0;
  if (!qword_1EC7F11A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F11A0);
  }

  return result;
}

uint64_t sub_1D518D458(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 17))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
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

uint64_t sub_1D518D498(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *sub_1D518D508(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1D518D608()
{
  result = qword_1EC7F11A8;
  if (!qword_1EC7F11A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F11A8);
  }

  return result;
}

unint64_t sub_1D518D660()
{
  result = qword_1EC7F11B0;
  if (!qword_1EC7F11B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F11B0);
  }

  return result;
}

unint64_t sub_1D518D6B8()
{
  result = qword_1EC7F11B8;
  if (!qword_1EC7F11B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F11B8);
  }

  return result;
}

unint64_t sub_1D518D710()
{
  result = qword_1EC7F11C0;
  if (!qword_1EC7F11C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F11C0);
  }

  return result;
}

unint64_t sub_1D518D768()
{
  result = qword_1EC7F11C8;
  if (!qword_1EC7F11C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F11C8);
  }

  return result;
}

unint64_t sub_1D518D7C0()
{
  result = qword_1EC7F11D0;
  if (!qword_1EC7F11D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F11D0);
  }

  return result;
}

unint64_t sub_1D518D818()
{
  result = qword_1EC7F11D8;
  if (!qword_1EC7F11D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F11D8);
  }

  return result;
}

unint64_t sub_1D518D870()
{
  result = qword_1EC7F11E0;
  if (!qword_1EC7F11E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F11E0);
  }

  return result;
}

unint64_t sub_1D518D8C8()
{
  result = qword_1EC7F11E8;
  if (!qword_1EC7F11E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F11E8);
  }

  return result;
}

unint64_t sub_1D518D920()
{
  result = qword_1EC7F11F0;
  if (!qword_1EC7F11F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F11F0);
  }

  return result;
}

void MusicPersonalRecommendation.Item.recommendationReason.getter()
{
  OUTLINED_FUNCTION_47();
  sub_1D5614408();
  OUTLINED_FUNCTION_4();
  v35 = v2;
  v36 = v1;
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_26_11();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_23_42();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_22_40();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v7 = OUTLINED_FUNCTION_4_71(v6);
  v8(v7);
  v9 = OUTLINED_FUNCTION_12_55();
  v11 = v10(v9);
  if (v11 == *MEMORY[0x1E6975270])
  {
    v12 = OUTLINED_FUNCTION_3_94();
    v13(v12);
    v14 = OUTLINED_FUNCTION_7_72();
    v15(v14);
    _s8MusicKit5AlbumV0aB8InternalE20recommendationReasonSSSgvg_0();
    v16 = OUTLINED_FUNCTION_1_6();
    v17(v16);
LABEL_7:
    OUTLINED_FUNCTION_46();
    return;
  }

  if (v11 == *MEMORY[0x1E6975280])
  {
    v18 = OUTLINED_FUNCTION_3_94();
    v19(v18);
    v20 = OUTLINED_FUNCTION_6_68();
    v21(v20);
    _s8MusicKit8PlaylistV0aB8InternalE20recommendationReasonSSSgvg_0();
    v22 = OUTLINED_FUNCTION_16_53();
    v23(v22);
    goto LABEL_7;
  }

  if (v11 == *MEMORY[0x1E6975278])
  {
    v24 = OUTLINED_FUNCTION_3_94();
    v25(v24);
    v26 = OUTLINED_FUNCTION_11_67();
    v27(v26);
    _s8MusicKit7StationV0aB8InternalE20recommendationReasonSSSgvg_0();
    (*(v35 + 8))(v0, v36);
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_153();
  sub_1D5615B68();
  OUTLINED_FUNCTION_80_0();
  OUTLINED_FUNCTION_33_3();
  MEMORY[0x1DA6EAC70](0xD000000000000061);
  OUTLINED_FUNCTION_0_120();
  v30 = sub_1D518EED0(v28, v29, MEMORY[0x1E6975290]);
  OUTLINED_FUNCTION_21_41(v30);
  OUTLINED_FUNCTION_61_7();

  OUTLINED_FUNCTION_33_0();
  OUTLINED_FUNCTION_8_65();
  OUTLINED_FUNCTION_9_65("Fatal error", v31, v32, v33, v34, "MusicKitInternal/MusicPersonalRecommendationItem+Internal.swift");
  __break(1u);
}

void MusicPersonalRecommendation.Item.siriRepresentation.getter()
{
  OUTLINED_FUNCTION_47();
  v44 = v0;
  sub_1D5614408();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_5();
  v4 = v3 - v2;
  v5 = sub_1D5614898();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  v9 = v8 - v7;
  v10 = sub_1D5613AF8();
  OUTLINED_FUNCTION_4();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5();
  v16 = v15 - v14;
  sub_1D560E3F8();
  OUTLINED_FUNCTION_4();
  v18 = v17;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_5();
  v21 = OUTLINED_FUNCTION_13_52(v20);
  v22(v21);
  v23 = OUTLINED_FUNCTION_29_35();
  v25 = v24(v23);
  if (v25 == *MEMORY[0x1E6975270])
  {
    v26 = OUTLINED_FUNCTION_5_3();
    v27(v26);
    v28 = OUTLINED_FUNCTION_18_50();
    v29(v28);
    Album.siriRepresentation.getter();
    (*(v12 + 8))(v16, v10);
LABEL_7:
    OUTLINED_FUNCTION_46();
    return;
  }

  if (v25 == *MEMORY[0x1E6975280])
  {
    v30 = OUTLINED_FUNCTION_5_3();
    v31(v30);
    v32 = OUTLINED_FUNCTION_15_54();
    v33(v32);
    Playlist.siriRepresentation.getter();
    (*(v18 + 8))(v9, v5);
    goto LABEL_7;
  }

  if (v25 == *MEMORY[0x1E6975278])
  {
    v34 = OUTLINED_FUNCTION_5_3();
    v35(v34);
    v36 = OUTLINED_FUNCTION_14_53();
    v37(v36);
    Station.siriRepresentation.getter(v44);
    (*(v5 + 8))(v4, v18);
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_153();
  sub_1D5615B68();
  OUTLINED_FUNCTION_80_0();
  OUTLINED_FUNCTION_33_3();
  MEMORY[0x1DA6EAC70](0xD000000000000061);
  OUTLINED_FUNCTION_0_120();
  sub_1D518EED0(v38, v39, MEMORY[0x1E6975290]);
  sub_1D56160F8();
  OUTLINED_FUNCTION_61_7();

  OUTLINED_FUNCTION_33_0();
  OUTLINED_FUNCTION_8_65();
  OUTLINED_FUNCTION_9_65("Fatal error", v40, v41, v42, v43, "MusicKitInternal/MusicPersonalRecommendationItem+Internal.swift");
  __break(1u);
}

void MusicPersonalRecommendation.Item._editorialArtworks.getter()
{
  OUTLINED_FUNCTION_47();
  sub_1D5614408();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_26_11();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_23_42();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_22_40();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v5 = OUTLINED_FUNCTION_4_71(v4);
  v6(v5);
  v7 = OUTLINED_FUNCTION_12_55();
  v9 = v8(v7);
  if (v9 == *MEMORY[0x1E6975270])
  {
    v10 = OUTLINED_FUNCTION_3_94();
    v11(v10);
    v12 = OUTLINED_FUNCTION_7_72();
    v13(v12);
    sub_1D5613988();
    v14 = OUTLINED_FUNCTION_1_6();
    v15(v14);
LABEL_7:
    OUTLINED_FUNCTION_46();
    return;
  }

  if (v9 == *MEMORY[0x1E6975280])
  {
    v16 = OUTLINED_FUNCTION_3_94();
    v17(v16);
    v18 = OUTLINED_FUNCTION_6_68();
    v19(v18);
    sub_1D56145B8();
    v20 = OUTLINED_FUNCTION_16_53();
    v21(v20);
    goto LABEL_7;
  }

  if (v9 == *MEMORY[0x1E6975278])
  {
    v22 = OUTLINED_FUNCTION_3_94();
    v23(v22);
    v24 = OUTLINED_FUNCTION_11_67();
    v25(v24);
    sub_1D5614298();
    v26 = OUTLINED_FUNCTION_30_33();
    v27(v26);
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_153();
  sub_1D5615B68();
  OUTLINED_FUNCTION_80_0();
  OUTLINED_FUNCTION_33_3();
  MEMORY[0x1DA6EAC70](0xD00000000000005DLL);
  OUTLINED_FUNCTION_0_120();
  v30 = sub_1D518EED0(v28, v29, MEMORY[0x1E6975290]);
  OUTLINED_FUNCTION_21_41(v30);
  OUTLINED_FUNCTION_61_7();

  OUTLINED_FUNCTION_33_0();
  OUTLINED_FUNCTION_8_65();
  OUTLINED_FUNCTION_9_65("Fatal error", v31, v32, v33, v34, "MusicKitInternal/MusicPersonalRecommendationItem+Internal.swift");
  __break(1u);
}

void MusicPersonalRecommendation.Item._editorialVideoArtworks.getter()
{
  OUTLINED_FUNCTION_47();
  sub_1D5614408();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_26_11();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_23_42();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_22_40();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v5 = OUTLINED_FUNCTION_4_71(v4);
  v6(v5);
  v7 = OUTLINED_FUNCTION_12_55();
  v9 = v8(v7);
  if (v9 == *MEMORY[0x1E6975270])
  {
    v10 = OUTLINED_FUNCTION_3_94();
    v11(v10);
    v12 = OUTLINED_FUNCTION_7_72();
    v13(v12);
    sub_1D56139F8();
    v14 = OUTLINED_FUNCTION_1_6();
    v15(v14);
LABEL_7:
    OUTLINED_FUNCTION_46();
    return;
  }

  if (v9 == *MEMORY[0x1E6975280])
  {
    v16 = OUTLINED_FUNCTION_3_94();
    v17(v16);
    v18 = OUTLINED_FUNCTION_6_68();
    v19(v18);
    sub_1D5614658();
    v20 = OUTLINED_FUNCTION_16_53();
    v21(v20);
    goto LABEL_7;
  }

  if (v9 == *MEMORY[0x1E6975278])
  {
    v22 = OUTLINED_FUNCTION_3_94();
    v23(v22);
    v24 = OUTLINED_FUNCTION_11_67();
    v25(v24);
    sub_1D5614338();
    v26 = OUTLINED_FUNCTION_30_33();
    v27(v26);
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_153();
  sub_1D5615B68();
  OUTLINED_FUNCTION_80_0();
  OUTLINED_FUNCTION_33_3();
  MEMORY[0x1DA6EAC70](0xD000000000000062);
  OUTLINED_FUNCTION_0_120();
  v30 = sub_1D518EED0(v28, v29, MEMORY[0x1E6975290]);
  OUTLINED_FUNCTION_21_41(v30);
  OUTLINED_FUNCTION_61_7();

  OUTLINED_FUNCTION_33_0();
  OUTLINED_FUNCTION_8_65();
  OUTLINED_FUNCTION_9_65("Fatal error", v31, v32, v33, v34, "MusicKitInternal/MusicPersonalRecommendationItem+Internal.swift");
  __break(1u);
}

uint64_t sub_1D518EA5C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1210, &qword_1D563F640);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EABD0, &unk_1D561F430);
  sub_1D5610088();
  *(swift_allocObject() + 16) = xmmword_1D5620080;
  sub_1D560FFB8();
  sub_1D5610038();
  sub_1D5610008();
  swift_getKeyPath();
  sub_1D560CDE8();
  sub_1D560CDC8();
  sub_1D518EDC0();
  v0 = sub_1D560D138();

  qword_1EC7F11F8 = v0;
  return result;
}

uint64_t sub_1D518EC10()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1210, &qword_1D563F640);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EABD0, &unk_1D561F430);
  sub_1D5610088();
  *(swift_allocObject() + 16) = xmmword_1D5620080;
  sub_1D560FFB8();
  sub_1D5610038();
  sub_1D5610008();
  swift_getKeyPath();
  sub_1D560CDE8();
  sub_1D560CDC8();
  sub_1D4F8AFC4();
  v0 = sub_1D560D138();

  qword_1EC7F1200 = v0;
  return result;
}

unint64_t sub_1D518EDC0()
{
  result = qword_1EC7F1218;
  if (!qword_1EC7F1218)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7F1220, &qword_1D563F698);
    sub_1D518EE7C();
    sub_1D518EED0(&qword_1EDD52DE8, MEMORY[0x1E6976F68], MEMORY[0x1E6976F88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F1218);
  }

  return result;
}

unint64_t sub_1D518EE7C()
{
  result = qword_1EC7F1228;
  if (!qword_1EC7F1228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F1228);
  }

  return result;
}

uint64_t sub_1D518EED0(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

uint64_t OUTLINED_FUNCTION_23_42()
{

  return sub_1D5613AF8();
}

_BYTE *storeEnumTagSinglePayload for MusicDaemon(_BYTE *result, int a2, int a3)
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

uint64_t type metadata accessor for StorePlatformGenreAttribute(uint64_t a1)
{
  result = qword_1EC7F1230;
  if (!qword_1EC7F1230)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D518F070(uint64_t a1)
{
  sub_1D4E518A0(319, &qword_1EDD53A08, MEMORY[0x1E6975528]);
  if (v1 <= 0x3F)
  {
    sub_1D4E518A0(319, &qword_1EDD5F070, MEMORY[0x1E69E6158]);
    if (v2 <= 0x3F)
    {
      sub_1D500A1D4(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

BOOL sub_1D518F174(void *a1, void *a2)
{
  v4 = sub_1D560C0A8();
  OUTLINED_FUNCTION_4();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v32 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9FB0, &qword_1D562C590);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v32 - v16;
  v18 = a1[1];
  v19 = a2[1];
  if (v18)
  {
    if (!v19)
    {
      return 0;
    }

    v20 = *a1 == *a2 && v18 == v19;
    if (!v20 && (sub_1D5616168() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v19)
  {
    return 0;
  }

  v21 = a1[3];
  v22 = a2[3];
  if (v21)
  {
    if (!v22)
    {
      return 0;
    }

    v23 = a1[2] == a2[2] && v21 == v22;
    if (!v23 && (sub_1D5616168() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v22)
  {
    return 0;
  }

  v24 = *(type metadata accessor for StorePlatformGenreAttribute(0) + 24);
  v25 = *(v14 + 48);
  sub_1D50D019C(a1 + v24, v17);
  sub_1D50D019C(a2 + v24, &v17[v25]);
  OUTLINED_FUNCTION_10(v17);
  if (v20)
  {
    OUTLINED_FUNCTION_10(&v17[v25]);
    if (v20)
    {
      sub_1D4E50004(v17, &unk_1EC7E9CA8, &unk_1D561D1D0);
      return 1;
    }

    goto LABEL_27;
  }

  sub_1D50D019C(v17, v13);
  OUTLINED_FUNCTION_10(&v17[v25]);
  if (v26)
  {
    (*(v6 + 8))(v13, v4);
LABEL_27:
    sub_1D4E50004(v17, &qword_1EC7E9FB0, &qword_1D562C590);
    return 0;
  }

  (*(v6 + 32))(v10, &v17[v25], v4);
  OUTLINED_FUNCTION_0_121();
  sub_1D518FF14(v28, v29, MEMORY[0x1E6968FC8]);
  v30 = sub_1D5614D18();
  v31 = *(v6 + 8);
  v31(v10, v4);
  v31(v13, v4);
  sub_1D4E50004(v17, &unk_1EC7E9CA8, &unk_1D561D1D0);
  return (v30 & 1) != 0;
}

uint64_t sub_1D518F474(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x644965726E6567 && a2 == 0xE700000000000000;
  if (v4 || (sub_1D5616168() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1701667182 && a2 == 0xE400000000000000;
    if (v6 || (sub_1D5616168() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 7107189 && a2 == 0xE300000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_1D5616168();

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

uint64_t sub_1D518F584(char a1)
{
  if (!a1)
  {
    return 0x644965726E6567;
  }

  if (a1 == 1)
  {
    return 1701667182;
  }

  return 7107189;
}

uint64_t sub_1D518F5CC(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1258, &qword_1D563F798);
  OUTLINED_FUNCTION_4();
  v7 = v6;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v14[-v9];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D518FE00();
  sub_1D56163D8();
  v15 = *v3;
  v14[15] = 0;
  sub_1D4F89BA0();
  sub_1D5616068();
  if (!v2)
  {
    LOBYTE(v15) = 1;
    sub_1D5616028();
    type metadata accessor for StorePlatformGenreAttribute(0);
    LOBYTE(v15) = 2;
    sub_1D560C0A8();
    OUTLINED_FUNCTION_0_121();
    sub_1D518FF14(v11, v12, MEMORY[0x1E6968FB8]);
    sub_1D5616068();
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_1D518F7A4(uint64_t a1)
{
  v2 = sub_1D560C0A8();
  OUTLINED_FUNCTION_4();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v16 - v10;
  if (*(v1 + 8))
  {
    sub_1D56162F8();
    sub_1D5614E28();
  }

  else
  {
    sub_1D56162F8();
  }

  if (*(v1 + 24))
  {
    sub_1D56162F8();
    sub_1D5614E28();
  }

  else
  {
    sub_1D56162F8();
  }

  v12 = type metadata accessor for StorePlatformGenreAttribute(0);
  sub_1D50D019C(v1 + *(v12 + 24), v11);
  if (__swift_getEnumTagSinglePayload(v11, 1, v2) == 1)
  {
    return sub_1D56162F8();
  }

  (*(v4 + 32))(v8, v11, v2);
  sub_1D56162F8();
  OUTLINED_FUNCTION_0_121();
  sub_1D518FF14(v14, v15, MEMORY[0x1E6968FC0]);
  sub_1D5614CB8();
  return (*(v4 + 8))(v8, v2);
}

uint64_t sub_1D518F9A4()
{
  sub_1D56162D8();
  sub_1D518F7A4(v1);
  return sub_1D5616328();
}

uint64_t sub_1D518F9E4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v4);
  v6 = v22 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1248, &qword_1D563F790);
  OUTLINED_FUNCTION_4();
  v25 = v8;
  v26 = v7;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v9);
  v10 = type metadata accessor for StorePlatformGenreAttribute(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  v14 = (v13 - v12);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D518FE00();
  sub_1D5616398();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v23 = v10;
  v29 = 0;
  sub_1D4F89C9C();
  sub_1D5615F78();
  v15 = v28;
  *v14 = v27;
  v14[1] = v15;
  v22[1] = v15;
  LOBYTE(v27) = 1;
  v14[2] = sub_1D5615F38();
  v14[3] = v16;
  sub_1D560C0A8();
  LOBYTE(v27) = 2;
  OUTLINED_FUNCTION_0_121();
  sub_1D518FF14(v17, v18, MEMORY[0x1E6968FD0]);
  sub_1D5615F78();
  v19 = OUTLINED_FUNCTION_3_95();
  v20(v19);
  sub_1D4F5A3D0(v6, v14 + *(v23 + 24));
  sub_1D518FE54(v14, v24);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1D518FEB8(v14);
}

uint64_t sub_1D518FCE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D518F474(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D518FD10(uint64_t a1)
{
  v2 = sub_1D518FE00();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D518FD4C(uint64_t a1)
{
  v2 = sub_1D518FE00();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D518FDC4(uint64_t a1)
{
  sub_1D56162D8();
  sub_1D518F7A4(v2);
  return sub_1D5616328();
}

unint64_t sub_1D518FE00()
{
  result = qword_1EC7F1250;
  if (!qword_1EC7F1250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F1250);
  }

  return result;
}

uint64_t sub_1D518FE54(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StorePlatformGenreAttribute(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D518FEB8(uint64_t a1)
{
  v2 = type metadata accessor for StorePlatformGenreAttribute(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D518FF14(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

_BYTE *storeEnumTagSinglePayload for StorePlatformGenreAttribute.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1D519003C()
{
  result = qword_1EC7F1260;
  if (!qword_1EC7F1260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F1260);
  }

  return result;
}

unint64_t sub_1D5190094()
{
  result = qword_1EC7F1268;
  if (!qword_1EC7F1268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F1268);
  }

  return result;
}

unint64_t sub_1D51900EC()
{
  result = qword_1EC7F1270;
  if (!qword_1EC7F1270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F1270);
  }

  return result;
}

uint64_t sub_1D5190140()
{
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_23_0();
  *v3 = v2;
  v4 = *v0;
  *v3 = *v0;

  v5 = swift_task_alloc();
  *(v2 + 64) = v5;
  *v5 = v4;
  v5[1] = sub_1D5190290;
  v6 = *(v1 + 40);

  return sub_1D5191F74(v6);
}

uint64_t sub_1D5190290()
{
  OUTLINED_FUNCTION_60();
  v1 = *v0;
  OUTLINED_FUNCTION_23_0();
  *v2 = v1;

  return MEMORY[0x1EEE6DFA0](sub_1D5190380, 0, 0);
}

uint64_t sub_1D5190380()
{
  v1 = v0[5];
  v2 = v0[3];
  v3 = v0[4];

  (*(v3 + 8))(v1, v2);

  OUTLINED_FUNCTION_55();

  return v4();
}

uint64_t sub_1D5190408()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F2AD0, &unk_1D5640100);
  sub_1D5610A98();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F12E0, &qword_1D564ABD0);
  sub_1D4E62A60(&unk_1EDD5D880, &qword_1EC7F12E0, &qword_1D564ABD0, MEMORY[0x1E695BF80]);
  sub_1D560C8A8();
}

uint64_t InternalMusicPlayer.State.playbackStatus.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5State_playbackStatus;
  result = OUTLINED_FUNCTION_59(v1 + OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5State_playbackStatus, v5);
  *a1 = *(v1 + v3);
  return result;
}

unint64_t InternalMusicPlayer.State.playbackRate.getter()
{
  v1 = (v0 + OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5State_playbackRate);
  OUTLINED_FUNCTION_59(v0 + OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5State_playbackRate, v3);
  return *v1 | (*(v1 + 4) << 32);
}

uint64_t InternalMusicPlayer.State.canPlay.getter(uint64_t a1)
{
  v2 = OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5State_canPlay;
  OUTLINED_FUNCTION_5_74(a1);
  return *(v1 + v2);
}

uint64_t InternalMusicPlayer.State.canPause.getter(uint64_t a1)
{
  v2 = OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5State_canPause;
  OUTLINED_FUNCTION_5_74(a1);
  return *(v1 + v2);
}

uint64_t InternalMusicPlayer.State.canStop.getter(uint64_t a1)
{
  v2 = OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5State_canStop;
  OUTLINED_FUNCTION_5_74(a1);
  return *(v1 + v2);
}

uint64_t InternalMusicPlayer.State.canSkipToNextEntry.getter(uint64_t a1)
{
  v2 = OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5State_canSkipToNextEntry;
  OUTLINED_FUNCTION_5_74(a1);
  return *(v1 + v2);
}

uint64_t InternalMusicPlayer.State.canSkipToPreviousEntry.getter(uint64_t a1)
{
  v2 = OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5State_canSkipToPreviousEntry;
  OUTLINED_FUNCTION_5_74(a1);
  return *(v1 + v2);
}

uint64_t InternalMusicPlayer.State.canBeginSeekingForward.getter(uint64_t a1)
{
  v2 = OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5State_canBeginSeekingForward;
  OUTLINED_FUNCTION_5_74(a1);
  return *(v1 + v2);
}

uint64_t InternalMusicPlayer.State.canBeginSeekingBackward.getter(uint64_t a1)
{
  v2 = OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5State_canBeginSeekingBackward;
  OUTLINED_FUNCTION_5_74(a1);
  return *(v1 + v2);
}

uint64_t InternalMusicPlayer.State.canJumpByTimeInterval.getter(uint64_t a1)
{
  v2 = OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5State_canJumpByTimeInterval;
  OUTLINED_FUNCTION_5_74(a1);
  return *(v1 + v2);
}

uint64_t InternalMusicPlayer.State.canChangePlaybackTime.getter(uint64_t a1)
{
  v2 = OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5State_canChangePlaybackTime;
  OUTLINED_FUNCTION_5_74(a1);
  return *(v1 + v2);
}

uint64_t InternalMusicPlayer.State.canInsertAfterCurrentEntry.getter(uint64_t a1)
{
  v2 = OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5State_canInsertAfterCurrentEntry;
  OUTLINED_FUNCTION_5_74(a1);
  return *(v1 + v2);
}

uint64_t InternalMusicPlayer.State.canInsertAtTail.getter(uint64_t a1)
{
  v2 = OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5State_canInsertAtTail;
  OUTLINED_FUNCTION_5_74(a1);
  return *(v1 + v2);
}

uint64_t InternalMusicPlayer.State.canInsertAtEndOfUpNext.getter(uint64_t a1)
{
  v2 = OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5State_canInsertAtEndOfUpNext;
  OUTLINED_FUNCTION_5_74(a1);
  return *(v1 + v2);
}

uint64_t InternalMusicPlayer.State.canClearUpNext.getter(uint64_t a1)
{
  v2 = OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5State_canClearUpNext;
  OUTLINED_FUNCTION_5_74(a1);
  return *(v1 + v2);
}

uint64_t InternalMusicPlayer.State.canInsertAfterLastContainer.getter(uint64_t a1)
{
  v2 = OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5State_canInsertAfterLastContainer;
  OUTLINED_FUNCTION_5_74(a1);
  return *(v1 + v2);
}

uint64_t sub_1D519087C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *a1;
  OUTLINED_FUNCTION_59(v4 + *a1, v10);
  return sub_1D4F39AB0(v4 + v8, a4, a2, a3);
}

void sub_1D51908E0(uint64_t a1)
{
  OUTLINED_FUNCTION_42_22();
  v5 = v4;
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EBF30, &qword_1D561C8C0);
  OUTLINED_FUNCTION_22(v8);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_48(v10);
  v113 = sub_1D560E728();
  OUTLINED_FUNCTION_4();
  v111 = v11;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_48(v14 - v13);
  sub_1D560D838();
  OUTLINED_FUNCTION_4();
  v115 = v16;
  v116 = v15;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v17);
  v19 = v107 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F1280, &qword_1D5636138);
  v21 = OUTLINED_FUNCTION_22(v20);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v22);
  v24 = v107 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1278, &qword_1D563F8B8);
  OUTLINED_FUNCTION_22(v25);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_9();
  if (v5)
  {
    v27 = [v5 musicKit_playerResponse_tracklist];
    v28 = [v5 musicKit_playerResponse_state];
  }

  else
  {
    v27 = 0;
    v28 = 0;
  }

  v114 = v19;
  sub_1D4E682AC(v28, v126);
  v29 = LOBYTE(v126[0]);
  if (v27)
  {
    v30 = OUTLINED_FUNCTION_36_28();
    v125 = v30 == 0;
    if (v30)
    {
      v1 = v30;
      [v30 musicKit_playerResponseItem_rate];
      v32 = v31;
      swift_unknownObjectRelease();
    }

    else
    {
      v32 = 0;
    }

    v33 = OUTLINED_FUNCTION_36_28();
    if (v33)
    {
      v3 = v33;
      v34 = [v33 musicKit_playerResponseItem_nowPlayingAudioFormat];
      OUTLINED_FUNCTION_35_33();
    }

    else
    {
      v1 = 0;
    }
  }

  else
  {
    v1 = 0;
    v32 = 0;
    v125 = 1;
  }

  sub_1D4E68420(v1, v2);
  if (v5)
  {
    v35 = [v5 musicKit_playerResponse_playCommandRequest];
    swift_unknownObjectRelease();
    v36 = [v5 musicKit_playerResponse_pauseCommandRequest];
    swift_unknownObjectRelease();
    v37 = [v5 musicKit_playerResponse_stopCommandRequest];
    swift_unknownObjectRelease();
  }

  if (v27)
  {
    v118 = v29;
    v38 = [v27 musicKit_responseTracklist_changeItemCommand];
    if (v38 && (v1 = v38, v39 = [v38 musicKit_changeItemCommand_nextItemCommandRequest], OUTLINED_FUNCTION_27_37(), v3))
    {
      swift_unknownObjectRelease();
      HIDWORD(v124) = 1;
    }

    else
    {
      HIDWORD(v124) = 0;
    }

    v40 = [v27 musicKit_responseTracklist_changeItemCommand];
    v119 = v2;
    if (v40 && (v1 = v40, v41 = [v40 musicKit_changeItemCommand_previousItemCommandRequest], OUTLINED_FUNCTION_27_37(), v3))
    {
      swift_unknownObjectRelease();
      LODWORD(v124) = 1;
    }

    else
    {
      LODWORD(v124) = 0;
    }

    v42 = OUTLINED_FUNCTION_36_28();
    if (v42 && (v43 = OUTLINED_FUNCTION_44_21(v42), OUTLINED_FUNCTION_35_33(), v1) && (v44 = [v1 musicKit:1 seekCommand:? beginSeekCommandRequestWithDirection:?], OUTLINED_FUNCTION_27_37(), v3))
    {
      swift_unknownObjectRelease();
      HIDWORD(v123) = 1;
    }

    else
    {
      HIDWORD(v123) = 0;
    }

    v45 = OUTLINED_FUNCTION_36_28();
    if (v45 && (v46 = OUTLINED_FUNCTION_44_21(v45), OUTLINED_FUNCTION_35_33(), v1) && (v47 = [v1 musicKit:-1 seekCommand:? beginSeekCommandRequestWithDirection:?], OUTLINED_FUNCTION_27_37(), v3))
    {
      swift_unknownObjectRelease();
      LODWORD(v123) = 1;
    }

    else
    {
      LODWORD(v123) = 0;
    }

    v48 = OUTLINED_FUNCTION_36_28();
    if (v48 && (v49 = OUTLINED_FUNCTION_44_21(v48), OUTLINED_FUNCTION_35_33(), v1) && (v50 = [v1 musicKit:10.0 seekCommand:? jumpCommandRequestByInterval:?], OUTLINED_FUNCTION_27_37(), v3))
    {
      swift_unknownObjectRelease();
      HIDWORD(v122) = 1;
    }

    else
    {
      HIDWORD(v122) = 0;
    }

    v51 = OUTLINED_FUNCTION_36_28();
    if (v51 && (v52 = OUTLINED_FUNCTION_44_21(v51), OUTLINED_FUNCTION_35_33(), v1))
    {
      v53 = [v1 musicKit:10.0 seekCommand:? changePositionCommandRequestToElapsedInterval:?];
      OUTLINED_FUNCTION_27_37();
      if (v3)
      {
        swift_unknownObjectRelease();
        LODWORD(v122) = 1;
      }

      else
      {
        LODWORD(v122) = 0;
      }
    }

    else
    {
      LODWORD(v122) = 0;
    }

    v54 = OUTLINED_FUNCTION_39_26();
    if (v54 && (v1 = v54, v55 = [objc_opt_self() emptyPlaybackIntent], v56 = OUTLINED_FUNCTION_47_26(v55, sel_musicKit_insertItemsCommand_insertAfterPlayingItemCommandRequestWithPlaybackIntent_), OUTLINED_FUNCTION_27_37(), v55, v3))
    {
      swift_unknownObjectRelease();
      HIDWORD(v121) = 1;
    }

    else
    {
      HIDWORD(v121) = 0;
    }

    v57 = OUTLINED_FUNCTION_39_26();
    if (v57 && (v1 = v57, v58 = [objc_opt_self() emptyPlaybackIntent], v59 = OUTLINED_FUNCTION_47_26(v58, sel_musicKit_insertItemsCommand_insertAtEndOfTracklistCommandRequestWithPlaybackIntent_), OUTLINED_FUNCTION_27_37(), v58, v3))
    {
      swift_unknownObjectRelease();
      LODWORD(v121) = 1;
    }

    else
    {
      LODWORD(v121) = 0;
    }

    v60 = OUTLINED_FUNCTION_39_26();
    if (v60 && (v1 = v60, v61 = [objc_opt_self() emptyPlaybackIntent], v62 = OUTLINED_FUNCTION_47_26(v61, sel_musicKit_insertItemsCommand_insertAtEndOfUpNextCommandRequestWithPlaybackIntent_), OUTLINED_FUNCTION_27_37(), v61, v3))
    {
      swift_unknownObjectRelease();
      HIDWORD(v120) = 1;
    }

    else
    {
      HIDWORD(v120) = 0;
    }

    v63 = [v27 musicKit_responseTracklist_resetCommand];
    if (v63 && (v1 = v63, v64 = [v63 musicKit_resetTracklistCommand_clearUpNextItemsCommandRequest], OUTLINED_FUNCTION_27_37(), v3))
    {
      swift_unknownObjectRelease();
      LODWORD(v120) = 1;
    }

    else
    {
      LODWORD(v120) = 0;
    }

    v65 = OUTLINED_FUNCTION_39_26();
    if (v65)
    {
      v66 = [v65 musicKit_insertItemCommand_insertAfterLastSection];
      OUTLINED_FUNCTION_35_33();
      if (v1)
      {
        v67 = [objc_opt_self() emptyPlaybackIntent];
        v68 = OUTLINED_FUNCTION_47_26(v67, sel_musicKit_insertWithPlaybackIntent_);
        OUTLINED_FUNCTION_27_37();

        swift_unknownObjectRelease();
        v1 = 1;
      }
    }

    else
    {
      v1 = 0;
    }

    v2 = v119;
    v29 = v118;
  }

  else
  {
    v1 = 0;
    v124 = 0;
    v123 = 0;
    v122 = 0;
    v121 = 0;
    v120 = 0;
  }

  v69 = type metadata accessor for InternalMusicPlayer.Queue.Entry.Container(0);
  OUTLINED_FUNCTION_146_0(v24, v70, v71, v69);
  if (v27)
  {
    v117 = v1;
    v72 = OUTLINED_FUNCTION_39_26();
    if (!v72 || (v73 = [v72 musicKit_insertItemCommand_insertAfterLastSection], OUTLINED_FUNCTION_35_33(), !v1))
    {
      swift_unknownObjectRelease();
LABEL_80:
      LOBYTE(v1) = v117;
      goto LABEL_81;
    }

    v118 = v29;
    v119 = v2;
    v107[2] = v24;
    v74 = [v1 musicKit_sectionMetadataObject];
    OUTLINED_FUNCTION_34_32();
    sub_1D56159A8();
    swift_unknownObjectRelease();
    sub_1D4E519A8(v126, &v128);
    __swift_project_boxed_opaque_existential_1(&v128, v129);
    v5 = sub_1D5616158();
    if (qword_1EDD53CA0 != -1)
    {
      OUTLINED_FUNCTION_13_53(&qword_1EDD53CA0);
    }

    v75 = sub_1D560D9A8();
    __swift_project_value_buffer(v75, qword_1EDD53CA8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0170, &unk_1D5634640);
    v76 = sub_1D560DB08();
    OUTLINED_FUNCTION_4();
    v78 = v77;
    v80 = *(v79 + 72);
    v81 = (*(v77 + 80) + 32) & ~*(v77 + 80);
    v82 = swift_allocObject();
    *(v82 + 16) = xmmword_1D5621D90;
    v83 = v82 + v81;
    v2 = *(v78 + 104);
    v2(v83, *MEMORY[0x1E6975050], v76);
    v2(v83 + v80, *MEMORY[0x1E6975030], v76);
    v24 = v110;
    sub_1D560E718();
    v84 = sub_1D560D9E8();
    v85 = v112;
    OUTLINED_FUNCTION_146_0(v112, v86, v87, v84);
    v88 = v114;
    v107[1] = v5;
    sub_1D560F7D8();
    sub_1D4E50004(v85, &unk_1EC7EBF30, &qword_1D561C8C0);
    (*(v111 + 8))(v24, v113);
    v89 = sub_1D560D708();
    v91 = v90;
    if (v89 == sub_1D560EED8() && v91 == v92)
    {

      OUTLINED_FUNCTION_33_34();
    }

    else
    {
      v94 = sub_1D5616168();

      OUTLINED_FUNCTION_33_34();
      if ((v94 & 1) == 0)
      {
        v95 = v88;
        v97 = v115;
        v96 = v116;
        v98 = v108;
        (*(v115 + 16))(v108, v95, v116);
        v127 = 0;
        memset(v126, 0, sizeof(v126));
        v99 = v109;
        InternalMusicPlayer.Queue.Entry.Container.init(identifierSet:legacyModelObject:existingItem:requestedRelationshipProperties:)(v98, v126, MEMORY[0x1E69E7CC0], v109);
        swift_unknownObjectRelease();
        (*(v97 + 8))(v95, v96);
        sub_1D4E50004(v24, &unk_1EC7F1280, &qword_1D5636138);
        __swift_destroy_boxed_opaque_existential_1(&v128);
        sub_1D4F39A1C(v99, v24, &unk_1EC7F1280, &qword_1D5636138);
LABEL_79:
        LOBYTE(v29) = v118;
        goto LABEL_80;
      }
    }

    (*(v115 + 8))(v88, v116);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(&v128);
    goto LABEL_79;
  }

LABEL_81:
  *v7 = v29;
  v100 = v5 != 0;
  *(v7 + 4) = v32;
  *(v7 + 8) = v125;
  v101 = _s5StateC10PropertiesVMa(0);
  sub_1D4F39A1C(v2, v7 + v101[6], &qword_1EC7F1278, &qword_1D563F8B8);
  *(v7 + v101[7]) = v100;
  *(v7 + v101[8]) = v100;
  *(v7 + v101[9]) = v100;
  v102 = v124;
  *(v7 + v101[10]) = BYTE4(v124);
  *(v7 + v101[11]) = v102;
  v103 = v123;
  *(v7 + v101[12]) = BYTE4(v123);
  *(v7 + v101[13]) = v103;
  v104 = v122;
  *(v7 + v101[14]) = BYTE4(v122);
  *(v7 + v101[15]) = v104;
  v105 = v121;
  *(v7 + v101[16]) = BYTE4(v121);
  *(v7 + v101[17]) = v105;
  v106 = v120;
  *(v7 + v101[18]) = BYTE4(v120);
  *(v7 + v101[19]) = v106;
  *(v7 + v101[20]) = v1;
  sub_1D4F39A1C(v24, v7 + v101[21], &unk_1EC7F1280, &qword_1D5636138);
  OUTLINED_FUNCTION_41_27();
}

void sub_1D5191564(uint64_t a1)
{
  OUTLINED_FUNCTION_42_22();
  v4 = v1;
  v6 = v5;
  v79 = type metadata accessor for InternalMusicPlayer.Queue.Entry.Container(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v76 = v9 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F1280, &qword_1D5636138);
  OUTLINED_FUNCTION_22(v10);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_13_3();
  v78 = v12;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0178, &qword_1D5636228);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_13_3();
  v80 = v14;
  v15 = sub_1D560F8D8();
  OUTLINED_FUNCTION_4();
  v82 = v16;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_5();
  v81 = v19 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1278, &qword_1D563F8B8);
  OUTLINED_FUNCTION_22(v20);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_9();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F12D0, &qword_1D563FB20);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_19_0();
  v24 = *v6;
  v25 = OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5State_playbackStatus;
  OUTLINED_FUNCTION_21_42(v4 + OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5State_playbackStatus, &v116);
  v83 = v25;
  v26 = *(v4 + v25);
  v27 = &unk_1EDD76000;
  v28 = &unk_1EDD76000;
  if (v24 != v26)
  {
    goto LABEL_46;
  }

  v29 = v6[1];
  v30 = *(v6 + 8);
  v31 = v4 + OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5State_playbackRate;
  OUTLINED_FUNCTION_59(v4 + OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5State_playbackRate, &v100);
  v32 = *(v31 + 4);
  if (v30)
  {
    v27 = &unk_1EDD76000;
    if (!*(v31 + 4))
    {
      goto LABEL_46;
    }
  }

  else
  {
    if (v29 != *v31)
    {
      v32 = 1;
    }

    v27 = &unk_1EDD76000;
    if (v32)
    {
      goto LABEL_46;
    }
  }

  v75 = _s5StateC10PropertiesVMa(0);
  v33 = *(v75 + 24);
  v34 = OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5State_audioVariant;
  OUTLINED_FUNCTION_59(v4 + OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5State_audioVariant, &v99);
  v35 = v6 + v33;
  v36 = *(v22 + 48);
  sub_1D4F39AB0(v35, v2, &qword_1EC7F1278, &qword_1D563F8B8);
  sub_1D4F39AB0(v4 + v34, v2 + v36, &qword_1EC7F1278, &qword_1D563F8B8);
  OUTLINED_FUNCTION_10(v2);
  if (v38)
  {
    OUTLINED_FUNCTION_10(v2 + v36);
    v28 = &unk_1EDD76000;
    v27 = &unk_1EDD76000;
    if (v38)
    {
      sub_1D4E50004(v2, &qword_1EC7F1278, &qword_1D563F8B8);
      v37 = v75;
      goto LABEL_19;
    }

LABEL_16:
    v39 = &unk_1EC7F12D0;
    v40 = &qword_1D563FB20;
    v41 = v2;
LABEL_17:
    sub_1D4E50004(v41, v39, v40);
LABEL_46:
    sub_1D5190408();
    *(v4 + v83) = *v6;
    v46 = *(v6 + 1);
    v47 = *(v6 + 8);
    v48 = v4 + OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5State_playbackRate;
    OUTLINED_FUNCTION_21_42(v4 + OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5State_playbackRate, &v115);
    *v48 = v46;
    *(v48 + 4) = v47;
    v49 = _s5StateC10PropertiesVMa(0);
    v50 = v49[6];
    v51 = OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5State_audioVariant;
    swift_beginAccess();
    sub_1D5000C8C(v6 + v50, v4 + v51, &qword_1EC7F1278, &qword_1D563F8B8);
    swift_endAccess();
    LOBYTE(v50) = *(v6 + v49[7]);
    v52 = OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5State_canPlay;
    OUTLINED_FUNCTION_21_42(v4 + OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5State_canPlay, &v114);
    *(v4 + v52) = v50;
    LOBYTE(v50) = *(v6 + v49[8]);
    v53 = OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5State_canPause;
    OUTLINED_FUNCTION_21_42(v4 + OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5State_canPause, &v113);
    *(v4 + v53) = v50;
    LOBYTE(v50) = *(v6 + v49[9]);
    v54 = OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5State_canStop;
    OUTLINED_FUNCTION_21_42(v4 + OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5State_canStop, &v112);
    *(v4 + v54) = v50;
    LOBYTE(v50) = *(v6 + v49[10]);
    v55 = OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5State_canSkipToNextEntry;
    OUTLINED_FUNCTION_21_42(v4 + OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5State_canSkipToNextEntry, &v111);
    *(v4 + v55) = v50;
    LOBYTE(v50) = *(v6 + v49[11]);
    v56 = OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5State_canSkipToPreviousEntry;
    OUTLINED_FUNCTION_21_42(v4 + OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5State_canSkipToPreviousEntry, &v110);
    *(v4 + v56) = v50;
    LOBYTE(v50) = *(v6 + v49[12]);
    v57 = OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5State_canBeginSeekingForward;
    OUTLINED_FUNCTION_21_42(v4 + OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5State_canBeginSeekingForward, &v109);
    *(v4 + v57) = v50;
    LOBYTE(v50) = *(v6 + v49[13]);
    v58 = OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5State_canBeginSeekingBackward;
    OUTLINED_FUNCTION_21_42(v4 + OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5State_canBeginSeekingBackward, &v108);
    *(v4 + v58) = v50;
    LOBYTE(v50) = *(v6 + v49[14]);
    v59 = OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5State_canJumpByTimeInterval;
    OUTLINED_FUNCTION_21_42(v4 + OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5State_canJumpByTimeInterval, &v107);
    *(v4 + v59) = v50;
    LOBYTE(v50) = *(v6 + v49[15]);
    v60 = OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5State_canChangePlaybackTime;
    OUTLINED_FUNCTION_21_42(v4 + OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5State_canChangePlaybackTime, &v106);
    *(v4 + v60) = v50;
    LOBYTE(v50) = *(v6 + v49[16]);
    v61 = OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5State_canInsertAfterCurrentEntry;
    OUTLINED_FUNCTION_21_42(v4 + OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5State_canInsertAfterCurrentEntry, &v105);
    *(v4 + v61) = v50;
    LOBYTE(v50) = *(v6 + v49[17]);
    v62 = OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5State_canInsertAtTail;
    OUTLINED_FUNCTION_21_42(v4 + OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5State_canInsertAtTail, &v104);
    *(v4 + v62) = v50;
    LOBYTE(v50) = *(v6 + v49[18]);
    v63 = OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5State_canInsertAtEndOfUpNext;
    OUTLINED_FUNCTION_21_42(v4 + OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5State_canInsertAtEndOfUpNext, &v103);
    *(v4 + v63) = v50;
    LOBYTE(v50) = *(v6 + v49[19]);
    v64 = OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5State_canClearUpNext;
    OUTLINED_FUNCTION_21_42(v4 + OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5State_canClearUpNext, &v102);
    *(v4 + v64) = v50;
    LOBYTE(v50) = *(v6 + v49[20]);
    v65 = v27[404];
    OUTLINED_FUNCTION_21_42(v4 + v65, &v101);
    *(v4 + v65) = v50;
    v66 = v49[21];
    v67 = v28[407];
    swift_beginAccess();
    sub_1D5000C8C(v6 + v66, v4 + v67, &unk_1EC7F1280, &qword_1D5636138);
    swift_endAccess();
    goto LABEL_47;
  }

  sub_1D4F39AB0(v2, v3, &qword_1EC7F1278, &qword_1D563F8B8);
  OUTLINED_FUNCTION_10(v2 + v36);
  if (v38)
  {
    (*(v82 + 8))(v3, v15);
    v28 = &unk_1EDD76000;
    v27 = &unk_1EDD76000;
    goto LABEL_16;
  }

  (*(v82 + 32))(v81, v2 + v36, v15);
  OUTLINED_FUNCTION_3_96();
  sub_1D4E644DC(v42, v43, MEMORY[0x1E6975908]);
  v44 = sub_1D5614D18();
  v45 = *(v82 + 8);
  v45(v81, v15);
  v45(v3, v15);
  sub_1D4E50004(v2, &qword_1EC7F1278, &qword_1D563F8B8);
  v28 = &unk_1EDD76000;
  v27 = &unk_1EDD76000;
  v37 = v75;
  if ((v44 & 1) == 0)
  {
    goto LABEL_46;
  }

LABEL_19:
  OUTLINED_FUNCTION_59(v4 + OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5State_canPlay, &v98);
  OUTLINED_FUNCTION_9_66();
  if (!v38)
  {
    goto LABEL_46;
  }

  OUTLINED_FUNCTION_59(v4 + OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5State_canPause, &v97);
  OUTLINED_FUNCTION_9_66();
  if (!v38)
  {
    goto LABEL_46;
  }

  OUTLINED_FUNCTION_59(v4 + OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5State_canStop, &v96);
  OUTLINED_FUNCTION_9_66();
  if (!v38)
  {
    goto LABEL_46;
  }

  OUTLINED_FUNCTION_59(v4 + OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5State_canSkipToNextEntry, &v95);
  OUTLINED_FUNCTION_9_66();
  if (!v38)
  {
    goto LABEL_46;
  }

  OUTLINED_FUNCTION_59(v4 + OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5State_canSkipToPreviousEntry, &v94);
  OUTLINED_FUNCTION_9_66();
  if (!v38)
  {
    goto LABEL_46;
  }

  OUTLINED_FUNCTION_59(v4 + OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5State_canBeginSeekingForward, &v93);
  OUTLINED_FUNCTION_9_66();
  if (!v38)
  {
    goto LABEL_46;
  }

  OUTLINED_FUNCTION_59(v4 + OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5State_canBeginSeekingBackward, &v92);
  OUTLINED_FUNCTION_9_66();
  if (!v38)
  {
    goto LABEL_46;
  }

  OUTLINED_FUNCTION_59(v4 + OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5State_canJumpByTimeInterval, &v91);
  OUTLINED_FUNCTION_9_66();
  if (!v38)
  {
    goto LABEL_46;
  }

  OUTLINED_FUNCTION_59(v4 + OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5State_canChangePlaybackTime, &v90);
  OUTLINED_FUNCTION_9_66();
  if (!v38)
  {
    goto LABEL_46;
  }

  OUTLINED_FUNCTION_59(v4 + OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5State_canInsertAfterCurrentEntry, &v89);
  OUTLINED_FUNCTION_9_66();
  if (!v38)
  {
    goto LABEL_46;
  }

  OUTLINED_FUNCTION_59(v4 + OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5State_canInsertAtTail, &v88);
  OUTLINED_FUNCTION_9_66();
  if (!v38)
  {
    goto LABEL_46;
  }

  OUTLINED_FUNCTION_59(v4 + OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5State_canInsertAtEndOfUpNext, &v87);
  OUTLINED_FUNCTION_9_66();
  if (!v38)
  {
    goto LABEL_46;
  }

  OUTLINED_FUNCTION_59(v4 + OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5State_canClearUpNext, &v86);
  OUTLINED_FUNCTION_9_66();
  if (!v38)
  {
    goto LABEL_46;
  }

  OUTLINED_FUNCTION_59(v4 + v27[404], &v85);
  OUTLINED_FUNCTION_9_66();
  if (!v38)
  {
    goto LABEL_46;
  }

  v68 = *(v37 + 84);
  v69 = v28[407];
  OUTLINED_FUNCTION_59(v4 + v69, &v84);
  v70 = *(v77 + 48);
  sub_1D4F39AB0(v6 + v68, v80, &unk_1EC7F1280, &qword_1D5636138);
  sub_1D4F39AB0(v4 + v69, v80 + v70, &unk_1EC7F1280, &qword_1D5636138);
  OUTLINED_FUNCTION_57(v80, 1, v79);
  if (v38)
  {
    OUTLINED_FUNCTION_57(v80 + v70, 1, v79);
    if (v38)
    {
      sub_1D4E50004(v80, &unk_1EC7F1280, &qword_1D5636138);
      goto LABEL_47;
    }

    goto LABEL_56;
  }

  sub_1D4F39AB0(v80, v78, &unk_1EC7F1280, &qword_1D5636138);
  OUTLINED_FUNCTION_57(v80 + v70, 1, v79);
  if (v71)
  {
    OUTLINED_FUNCTION_4_72();
    sub_1D51932C4(v78, v72);
LABEL_56:
    v39 = &qword_1EC7F0178;
    v40 = &qword_1D5636228;
    v41 = v80;
    goto LABEL_17;
  }

  sub_1D5193260(v80 + v70, v76);
  static InternalMusicPlayer.Queue.Entry.Container.== infix(_:_:)();
  v74 = v73;
  sub_1D51932C4(v76, type metadata accessor for InternalMusicPlayer.Queue.Entry.Container);
  sub_1D51932C4(v78, type metadata accessor for InternalMusicPlayer.Queue.Entry.Container);
  sub_1D4E50004(v80, &unk_1EC7F1280, &qword_1D5636138);
  if ((v74 & 1) == 0)
  {
    goto LABEL_46;
  }

LABEL_47:
  OUTLINED_FUNCTION_41_27();
}

uint64_t sub_1D5191F74(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v2[5] = *v1;
  _s5StateC10PropertiesVMa(0);
  v2[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D519202C, 0, 0);
}

uint64_t sub_1D519202C()
{
  OUTLINED_FUNCTION_60();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F68E0, &unk_1D564A6A0);
  sub_1D5612858();
  sub_1D51908E0(*(v0 + 16));
  swift_unknownObjectRelease();
  sub_1D56153C8();
  *(v0 + 56) = sub_1D56153B8();
  v2 = sub_1D5615338();

  return MEMORY[0x1EEE6DFA0](sub_1D51920F8, v2, v1);
}

uint64_t sub_1D51920F8()
{
  OUTLINED_FUNCTION_60();
  v1 = *(v0 + 48);

  sub_1D5191564(v1);

  return MEMORY[0x1EEE6DFA0](sub_1D5192168, 0, 0);
}

uint64_t sub_1D5192168()
{
  OUTLINED_FUNCTION_60();
  sub_1D51932C4(*(v0 + 48), _s5StateC10PropertiesVMa);

  OUTLINED_FUNCTION_55();

  return v1();
}

BOOL sub_1D51921E0(float *a1, float *a2)
{
  v5 = type metadata accessor for InternalMusicPlayer.Queue.Entry.Container(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  v9 = v8 - v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F1280, &qword_1D5636138);
  OUTLINED_FUNCTION_22(v10);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_13_3();
  v62 = v12;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0178, &qword_1D5636228);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_19_0();
  v14 = sub_1D560F8D8();
  OUTLINED_FUNCTION_4();
  v63 = v15;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_5();
  v19 = v18 - v17;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1278, &qword_1D563F8B8);
  OUTLINED_FUNCTION_22(v20);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v56 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F12D0, &qword_1D563FB20);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v56 - v26;
  if (*a1 != *a2)
  {
    return 0;
  }

  v28 = *(a2 + 8);
  if (a1[2])
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else
  {
    if (a1[1] != a2[1])
    {
      v28 = 1;
    }

    if (v28)
    {
      return 0;
    }
  }

  v58 = v5;
  v59 = v2;
  v57 = v9;
  v60 = _s5StateC10PropertiesVMa(0);
  v29 = *(v60 + 24);
  v30 = *(v24 + 48);
  sub_1D4F39AB0(a1 + v29, v27, &qword_1EC7F1278, &qword_1D563F8B8);
  sub_1D4F39AB0(a2 + v29, &v27[v30], &qword_1EC7F1278, &qword_1D563F8B8);
  OUTLINED_FUNCTION_10(v27);
  if (v31)
  {
    OUTLINED_FUNCTION_10(&v27[v30]);
    if (v31)
    {
      sub_1D4E50004(v27, &qword_1EC7F1278, &qword_1D563F8B8);
      goto LABEL_19;
    }

LABEL_16:
    v34 = &unk_1EC7F12D0;
    v35 = &qword_1D563FB20;
    v36 = v27;
LABEL_17:
    sub_1D4E50004(v36, v34, v35);
    return 0;
  }

  sub_1D4F39AB0(v27, v23, &qword_1EC7F1278, &qword_1D563F8B8);
  OUTLINED_FUNCTION_10(&v27[v30]);
  if (v31)
  {
    v32 = OUTLINED_FUNCTION_71();
    v33(v32);
    goto LABEL_16;
  }

  v37 = v63;
  (*(v63 + 32))(v19, &v27[v30], v14);
  OUTLINED_FUNCTION_3_96();
  sub_1D4E644DC(v38, v39, MEMORY[0x1E6975908]);
  v40 = sub_1D5614D18();
  v41 = *(v37 + 8);
  v41(v19, v14);
  v42 = OUTLINED_FUNCTION_71();
  (v41)(v42);
  sub_1D4E50004(v27, &qword_1EC7F1278, &qword_1D563F8B8);
  if ((v40 & 1) == 0)
  {
    return 0;
  }

LABEL_19:
  OUTLINED_FUNCTION_2_99();
  if (!v31)
  {
    return 0;
  }

  OUTLINED_FUNCTION_2_99();
  if (!v31)
  {
    return 0;
  }

  OUTLINED_FUNCTION_2_99();
  if (!v31)
  {
    return 0;
  }

  OUTLINED_FUNCTION_2_99();
  if (!v31)
  {
    return 0;
  }

  OUTLINED_FUNCTION_2_99();
  if (!v31)
  {
    return 0;
  }

  OUTLINED_FUNCTION_2_99();
  if (!v31)
  {
    return 0;
  }

  OUTLINED_FUNCTION_2_99();
  if (!v31)
  {
    return 0;
  }

  OUTLINED_FUNCTION_2_99();
  if (!v31)
  {
    return 0;
  }

  OUTLINED_FUNCTION_2_99();
  if (!v31)
  {
    return 0;
  }

  OUTLINED_FUNCTION_2_99();
  if (!v31)
  {
    return 0;
  }

  OUTLINED_FUNCTION_2_99();
  if (!v31)
  {
    return 0;
  }

  OUTLINED_FUNCTION_2_99();
  if (!v31)
  {
    return 0;
  }

  OUTLINED_FUNCTION_2_99();
  if (!v31)
  {
    return 0;
  }

  OUTLINED_FUNCTION_2_99();
  if (!v31)
  {
    return 0;
  }

  v44 = *(v60 + 84);
  v45 = *(v61 + 48);
  v46 = v59;
  sub_1D4F39AB0(a1 + v44, v59, &unk_1EC7F1280, &qword_1D5636138);
  sub_1D4F39AB0(a2 + v44, v46 + v45, &unk_1EC7F1280, &qword_1D5636138);
  OUTLINED_FUNCTION_57(v46, 1, v58);
  if (v31)
  {
    OUTLINED_FUNCTION_57(v59 + v45, 1, v58);
    if (v31)
    {
      sub_1D4E50004(v59, &unk_1EC7F1280, &qword_1D5636138);
      return 1;
    }

    goto LABEL_55;
  }

  v47 = v59;
  sub_1D4F39AB0(v59, v62, &unk_1EC7F1280, &qword_1D5636138);
  OUTLINED_FUNCTION_57(v47 + v45, 1, v58);
  if (v48)
  {
    OUTLINED_FUNCTION_4_72();
    sub_1D51932C4(v62, v49);
LABEL_55:
    v34 = &qword_1EC7F0178;
    v35 = &qword_1D5636228;
    v36 = v59;
    goto LABEL_17;
  }

  v50 = v59;
  v51 = v59 + v45;
  v52 = v57;
  sub_1D5193260(v51, v57);
  v53 = v62;
  static InternalMusicPlayer.Queue.Entry.Container.== infix(_:_:)();
  v55 = v54;
  sub_1D51932C4(v52, type metadata accessor for InternalMusicPlayer.Queue.Entry.Container);
  sub_1D51932C4(v53, type metadata accessor for InternalMusicPlayer.Queue.Entry.Container);
  sub_1D4E50004(v50, &unk_1EC7F1280, &qword_1D5636138);
  return (v55 & 1) != 0;
}

uint64_t sub_1D51927B0(uint64_t a1)
{
  v27 = type metadata accessor for InternalMusicPlayer.Queue.Entry.Container(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v6 = v5 - v4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F1280, &qword_1D5636138);
  OUTLINED_FUNCTION_22(v7);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_9();
  v9 = sub_1D560F8D8();
  OUTLINED_FUNCTION_4();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5();
  v15 = v14 - v13;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1278, &qword_1D563F8B8);
  OUTLINED_FUNCTION_22(v16);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v26 - v18;
  MEMORY[0x1DA6EC0D0](*v1);
  if (v1[8] == 1)
  {
    sub_1D56162F8();
  }

  else
  {
    sub_1D56162F8();
    sub_1D5616308();
  }

  v20 = _s5StateC10PropertiesVMa(0);
  sub_1D4F39AB0(&v1[*(v20 + 24)], v19, &qword_1EC7F1278, &qword_1D563F8B8);
  OUTLINED_FUNCTION_57(v19, 1, v9);
  if (v21)
  {
    sub_1D56162F8();
  }

  else
  {
    (*(v11 + 32))(v15, v19, v9);
    sub_1D56162F8();
    OUTLINED_FUNCTION_3_96();
    sub_1D4E644DC(v22, v23, MEMORY[0x1E6975900]);
    sub_1D5614CB8();
    (*(v11 + 8))(v15, v9);
  }

  sub_1D56162F8();
  sub_1D56162F8();
  sub_1D56162F8();
  sub_1D56162F8();
  sub_1D56162F8();
  sub_1D56162F8();
  sub_1D56162F8();
  sub_1D56162F8();
  sub_1D56162F8();
  sub_1D56162F8();
  sub_1D56162F8();
  sub_1D56162F8();
  sub_1D56162F8();
  sub_1D56162F8();
  sub_1D4F39AB0(&v1[*(v20 + 84)], v2, &unk_1EC7F1280, &qword_1D5636138);
  OUTLINED_FUNCTION_57(v2, 1, v27);
  if (v21)
  {
    return sub_1D56162F8();
  }

  sub_1D5193260(v2, v6);
  sub_1D56162F8();
  InternalMusicPlayer.Queue.Entry.Container.hash(into:)();
  OUTLINED_FUNCTION_4_72();
  return sub_1D51932C4(v6, v24);
}

uint64_t sub_1D5192B4C()
{
  sub_1D56162D8();
  sub_1D51927B0(v1);
  return sub_1D5616328();
}

uint64_t sub_1D5192B98(uint64_t a1)
{
  sub_1D56162D8();
  sub_1D51927B0(v2);
  return sub_1D5616328();
}

uint64_t InternalMusicPlayer.State.deinit()
{
  v1 = OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5State_activeMonitoringPublisher;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F2AD0, &unk_1D5640100);
  OUTLINED_FUNCTION_14();
  (*(v2 + 8))(v0 + v1);

  sub_1D4E50004(v0 + OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5State_audioVariant, &qword_1EC7F1278, &qword_1D563F8B8);
  sub_1D4E50004(v0 + OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5State_lastContainer, &unk_1EC7F1280, &qword_1D5636138);
  return v0;
}

uint64_t InternalMusicPlayer.State.__deallocating_deinit()
{
  InternalMusicPlayer.State.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1D5192CE0@<X0>(uint64_t *a1@<X8>)
{
  result = InternalMusicPlayer.State.objectWillChange.getter();
  *a1 = result;
  return result;
}

unint64_t sub_1D5192D08@<X0>(unint64_t result@<X0>, char a2@<W1>, _BYTE *a3@<X8>)
{
  if (a2)
  {
    result = 3;
LABEL_4:
    *a3 = result;
    return result;
  }

  if (result < 3)
  {
    goto LABEL_4;
  }

  OUTLINED_FUNCTION_12_56();
  sub_1D5615B68();

  OUTLINED_FUNCTION_40_28();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F12C0, &qword_1D563FB18);
  v3 = sub_1D5614DB8();
  MEMORY[0x1DA6EAC70](v3);

  OUTLINED_FUNCTION_4_1();
  result = OUTLINED_FUNCTION_12_3("Fatal error", v4, v5, v6, v7, "MusicKitInternal/InternalMusicPlayerState.swift");
  __break(1u);
  return result;
}

unint64_t sub_1D5192E08@<X0>(unint64_t result@<X0>, char a2@<W1>, _BYTE *a3@<X8>)
{
  if (a2)
  {
    result = 3;
LABEL_4:
    *a3 = result;
    return result;
  }

  if (result < 3)
  {
    goto LABEL_4;
  }

  OUTLINED_FUNCTION_12_56();
  sub_1D5615B68();

  OUTLINED_FUNCTION_40_28();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F12B8, &qword_1D563FB10);
  v3 = sub_1D5614DB8();
  MEMORY[0x1DA6EAC70](v3);

  OUTLINED_FUNCTION_4_1();
  result = OUTLINED_FUNCTION_12_3("Fatal error", v4, v5, v6, v7, "MusicKitInternal/InternalMusicPlayerState.swift");
  __break(1u);
  return result;
}

uint64_t _s16MusicKitInternal0cA6PlayerC10RepeatModeO9hashValueSivg_0()
{
  v1 = *v0;
  sub_1D56162D8();
  MEMORY[0x1DA6EC0D0](v1);
  return sub_1D5616328();
}

unint64_t sub_1D5192F54()
{
  result = qword_1EC7F1298;
  if (!qword_1EC7F1298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F1298);
  }

  return result;
}

unint64_t sub_1D5192FAC()
{
  result = qword_1EC7F12A0;
  if (!qword_1EC7F12A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F12A0);
  }

  return result;
}

unint64_t sub_1D5193004()
{
  result = qword_1EC7F12A8;
  if (!qword_1EC7F12A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F12A8);
  }

  return result;
}

_BYTE *_s14PlaybackStatusOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1D5193164(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1D5193260(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InternalMusicPlayer.Queue.Entry.Container(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D51932C4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_14();
  (*(v3 + 8))(a1);
  return a1;
}

void sub_1D5193344(uint64_t a1)
{
  sub_1D5193460();
  if (v1 <= 0x3F)
  {
    sub_1D4E64574(319, &qword_1EDD5D2F8, MEMORY[0x1E69758F8]);
    if (v2 <= 0x3F)
    {
      sub_1D4E64574(319, &qword_1EDD5E380, type metadata accessor for InternalMusicPlayer.Queue.Entry.Container);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1D5193460()
{
  if (!qword_1EDD52728)
  {
    v0 = sub_1D56158D8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDD52728);
    }
  }
}

uint64_t OUTLINED_FUNCTION_23_43()
{

  return swift_beginAccess();
}

id OUTLINED_FUNCTION_25_42@<X0>(char a1@<W8>)
{
  *(v2 + v1) = a1;

  return [v3 (v4 + 2961)];
}

uint64_t OUTLINED_FUNCTION_28_38()
{

  return swift_unknownObjectRelease();
}

uint64_t OUTLINED_FUNCTION_34_32()
{

  return swift_unknownObjectRelease();
}

id OUTLINED_FUNCTION_46_18(void *a1)
{

  return [a1 (v1 + 2069)];
}

id OUTLINED_FUNCTION_47_26(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

uint64_t UploadedAudio.init(identifierSet:legacyModelObject:existingItem:requestedRelationshipProperties:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v191 = a3;
  v192 = a1;
  v183 = a4;
  v5 = sub_1D5613598();
  OUTLINED_FUNCTION_4();
  v202 = v6;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v8);
  v189 = sub_1D5612B88();
  OUTLINED_FUNCTION_4();
  v206 = v9;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1318, &qword_1D563FBC0);
  OUTLINED_FUNCTION_22(v12);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_48(v14);
  v15 = sub_1D5610088();
  OUTLINED_FUNCTION_4();
  v203 = v16;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v18);
  v188 = sub_1D560D838();
  OUTLINED_FUNCTION_4();
  v187 = v19;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v21);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1320, &qword_1D563FBC8);
  OUTLINED_FUNCTION_22(v22);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_13_3();
  v204 = v24;
  v185 = type metadata accessor for UploadedAudioPropertyProvider(0);
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_59_0();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v26);
  v205 = &v177[-v27];
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA358, &unk_1D561DF50);
  v29 = OUTLINED_FUNCTION_22(v28);
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_59_0();
  v32 = v30 - v31;
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v177[-v34];
  v180 = sub_1D5612478();
  OUTLINED_FUNCTION_4();
  v179 = v36;
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v177[-((v38 + 15) & 0xFFFFFFFFFFFFFFF0)];

  v190 = a2;
  sub_1D560F7E8();
  OUTLINED_FUNCTION_15_55();
  v42 = sub_1D5196010(v40, v41, MEMORY[0x1E6976B08]);
  v182 = v5;
  v43 = v15;
  v201 = v42;
  v200 = sub_1D5614C68();

  sub_1D560FF28();
  __swift_storeEnumTagSinglePayload(v35, 0, 1, v15);
  sub_1D560FF28();
  __swift_storeEnumTagSinglePayload(v32, 0, 1, v15);
  v186 = v39;
  v44 = v192;
  sub_1D560D4D8();
  sub_1D4E7661C(v32, &qword_1EC7EA358, &unk_1D561DF50);
  sub_1D4E7661C(v35, &qword_1EC7EA358, &unk_1D561DF50);
  sub_1D4EC76A8(v191, v207);
  if (!v208)
  {
    sub_1D4E7661C(v207, &qword_1EC7EEC40, &unk_1D561C070);
    v209 = 0u;
    v210 = 0u;
    v211 = 0;
LABEL_8:
    v45 = v185;
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EEC50, &unk_1D5623460);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3A8, &unk_1D561C1E0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v211 = 0;
    v209 = 0u;
    v210 = 0u;
    goto LABEL_8;
  }

  v45 = v185;
  if (!*(&v210 + 1))
  {
LABEL_9:
    sub_1D4E7661C(&v209, &qword_1EC7EA368, &unk_1D5629620);
    v48 = v188;
    goto LABEL_10;
  }

  sub_1D4E48324(&v209, &v212);
  __swift_project_boxed_opaque_existential_1(&v212, v213);
  sub_1D5612B18();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9F88, &unk_1D561B980);
  v46 = v204;
  v47 = swift_dynamicCast();
  v48 = v188;
  if (v47)
  {
    OUTLINED_FUNCTION_17_53(v46);
    v49 = v197;
    sub_1D5195F1C(v46, v197);
    v50 = v205;
    sub_1D5195E5C(v49, v205);
    v51 = v198;
    sub_1D560D718();
    (*(v187 + 40))(&v50[v45[29]], v51, v48);
    v52 = v199;
    sub_1D5612468();
    (*(v203 + 40))(&v50[v45[30]], v52, v43);
    v53 = sub_1D5612458();
    v55 = v54;
    sub_1D5195EC0(v49);
    v56 = &v50[v45[31]];

    *v56 = v53;
    v56[1] = v55;
    __swift_destroy_boxed_opaque_existential_1(&v212);
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v173, v174, v175, v45);
  sub_1D4E7661C(v46, &qword_1EC7F1320, &qword_1D563FBC8);
  __swift_destroy_boxed_opaque_existential_1(&v212);
LABEL_10:
  sub_1D56140F8();
  v57 = v205;
  v58 = OUTLINED_FUNCTION_5_75();
  __swift_storeEnumTagSinglePayload(v58, v59, v60, v61);
  type metadata accessor for AssetFlavors(0);
  v62 = OUTLINED_FUNCTION_5_75();
  __swift_storeEnumTagSinglePayload(v62, v63, v64, v65);
  sub_1D560F928();
  v66 = OUTLINED_FUNCTION_5_75();
  __swift_storeEnumTagSinglePayload(v66, v67, v68, v69);
  sub_1D56106B8();
  v70 = OUTLINED_FUNCTION_5_75();
  __swift_storeEnumTagSinglePayload(v70, v71, v72, v73);
  v74 = sub_1D5610978();
  v75 = OUTLINED_FUNCTION_5_75();
  __swift_storeEnumTagSinglePayload(v75, v76, v77, v74);
  v78 = sub_1D560C328();
  v79 = OUTLINED_FUNCTION_8_66();
  __swift_storeEnumTagSinglePayload(v79, v80, v81, v78);
  sub_1D56128E8();
  v82 = OUTLINED_FUNCTION_8_66();
  __swift_storeEnumTagSinglePayload(v82, v83, v84, v85);
  sub_1D5610CB8();
  v86 = OUTLINED_FUNCTION_8_66();
  __swift_storeEnumTagSinglePayload(v86, v87, v88, v89);
  sub_1D5613198();
  v90 = OUTLINED_FUNCTION_8_66();
  __swift_storeEnumTagSinglePayload(v90, v91, v92, v93);
  sub_1D56134E8();
  v94 = OUTLINED_FUNCTION_8_66();
  __swift_storeEnumTagSinglePayload(v94, v95, v96, v97);
  sub_1D5614A78();
  v98 = OUTLINED_FUNCTION_8_66();
  __swift_storeEnumTagSinglePayload(v98, v99, v100, v101);
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v102, v103, v104, v74);
  sub_1D56109F8();
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v105, v106, v107, v108);
  sub_1D560C0A8();
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v109, v110, v111, v112);
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v113, v114, v115, v78);
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v116, v117, v118, v78);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA448, &unk_1D561D110);
  v119 = OUTLINED_FUNCTION_5_75();
  __swift_storeEnumTagSinglePayload(v119, v120, v121, v122);
  type metadata accessor for CuratorRelationshipProvider(0);
  v123 = OUTLINED_FUNCTION_5_75();
  __swift_storeEnumTagSinglePayload(v123, v124, v125, v126);
  (*(v187 + 16))(&v57[v45[29]], v44, v48);
  sub_1D5612468();
  v127 = sub_1D5612458();
  v204 = v128;
  sub_1D5614A88();
  v203 = OUTLINED_FUNCTION_16_54();
  v199 = OUTLINED_FUNCTION_16_54();
  v129 = OUTLINED_FUNCTION_16_54();
  v130 = OUTLINED_FUNCTION_16_54();
  *v57 = 0;
  *(v57 + 1) = 0;
  v131 = &v57[v45[9]];
  *v131 = 0;
  v131[8] = 1;
  *&v57[v45[10]] = 0;
  *&v57[v45[12]] = 0;
  v132 = &v57[v45[23]];
  *v132 = 0;
  *(v132 + 1) = 0;
  v133 = &v57[v45[25]];
  *v133 = 0;
  *(v133 + 1) = 0;
  if (qword_1EC7E9010 != -1)
  {
    swift_once();
  }

  v134 = qword_1EC87C278;
  if (qword_1EC87C278 >> 62)
  {
    sub_1D560CDE8();

    v176 = sub_1D5615E18();

    v134 = v176;
  }

  else
  {

    sub_1D56161D8();
    sub_1D560CDE8();
  }

  v135 = v204;
  v136 = v205;
  *&v205[v45[28]] = v134;
  v137 = &v136[v45[31]];
  *v137 = v127;
  v137[1] = v135;
  *&v136[v45[32]] = v203;
  *&v136[v45[33]] = v199;
  *&v136[v45[34]] = v129;
  *&v136[v45[35]] = v130;
LABEL_15:
  swift_getKeyPath();
  v138 = *MEMORY[0x1E6976AF0];
  v203 = *(v202 + 104);
  v197 = v202 + 104;
  v139 = v194;
  v140 = v182;
  (v203)(v194, v138, v182);
  OUTLINED_FUNCTION_17_53(v139);
  v141 = *MEMORY[0x1E6976668];
  v142 = v206;
  v143 = *(v206 + 104);
  v195 = v206 + 104;
  v199 = v143;
  v144 = v181;
  v196 = v141;
  v145 = v189;
  (v143)(v181, v141, v189);
  v204 = sub_1D5196010(&qword_1EC7EF3E0, type metadata accessor for UploadedAudioPropertyProvider, &unk_1D5640718);
  OUTLINED_FUNCTION_34_33();
  sub_1D5610D98();

  v146 = *(v142 + 8);
  v206 = v142 + 8;
  v147 = OUTLINED_FUNCTION_135_0();
  v146(v147);
  v198 = v146;
  sub_1D4E7661C(v139, &qword_1EC7F1318, &qword_1D563FBC0);
  swift_getKeyPath();
  v148 = v193;
  OUTLINED_FUNCTION_40_29();
  (v203)();
  (v199)(v144, v141, v145);
  OUTLINED_FUNCTION_34_33();
  sub_1D5610D78();

  v149 = OUTLINED_FUNCTION_135_0();
  v146(v149);
  v150 = *(v202 + 8);
  v202 += 8;
  v184 = v150;
  v150(v148, v140);
  swift_getKeyPath();
  (v203)(v139, *MEMORY[0x1E6976AF8], v140);
  OUTLINED_FUNCTION_17_53(v139);
  v178 = *MEMORY[0x1E6976670];
  v151 = v199;
  v199(v144);
  OUTLINED_FUNCTION_34_33();
  OUTLINED_FUNCTION_32_34();
  sub_1D5610D88();

  v152 = v198;
  (v198)(v144, v145);
  sub_1D4E7661C(v139, &qword_1EC7F1318, &qword_1D563FBC0);
  swift_getKeyPath();
  v153 = v203;
  (v203)(v193, *MEMORY[0x1E6976AA8], v140);
  v154 = OUTLINED_FUNCTION_19_47();
  v151(v154);
  sub_1D5610D78();

  v155 = v189;
  v152(v144, v189);
  OUTLINED_FUNCTION_38_26();
  v156();
  swift_getKeyPath();
  v157 = v194;
  OUTLINED_FUNCTION_40_29();
  v153();
  OUTLINED_FUNCTION_17_53(v157);
  v158 = OUTLINED_FUNCTION_19_47();
  v199(v158);
  OUTLINED_FUNCTION_34_33();
  OUTLINED_FUNCTION_32_34();
  sub_1D5610D88();

  OUTLINED_FUNCTION_137();
  v159();
  sub_1D4E7661C(v157, &qword_1EC7F1318, &qword_1D563FBC0);
  swift_getKeyPath();
  (v203)(v157, *MEMORY[0x1E6976AC0], v140);
  OUTLINED_FUNCTION_17_53(v157);
  v160 = OUTLINED_FUNCTION_19_47();
  v161 = v199;
  v199(v160);
  OUTLINED_FUNCTION_32_34();
  sub_1D5610D88();

  OUTLINED_FUNCTION_135_0();
  OUTLINED_FUNCTION_137();
  v162();
  sub_1D4E7661C(v157, &qword_1EC7F1318, &qword_1D563FBC0);
  swift_getKeyPath();
  OUTLINED_FUNCTION_40_29();
  (v203)();
  v163 = OUTLINED_FUNCTION_19_47();
  v161(v163);
  OUTLINED_FUNCTION_34_33();
  sub_1D5610D78();

  OUTLINED_FUNCTION_135_0();
  OUTLINED_FUNCTION_137();
  v164();
  OUTLINED_FUNCTION_38_26();
  v165();
  swift_getKeyPath();
  v166 = v194;
  OUTLINED_FUNCTION_40_29();
  (v203)();
  OUTLINED_FUNCTION_17_53(v166);
  (v199)(v144, v178, v155);
  v168 = v204;
  v167 = v205;
  sub_1D5610D68();

  OUTLINED_FUNCTION_135_0();
  OUTLINED_FUNCTION_137();
  v169();
  sub_1D4E7661C(v166, &qword_1EC7F1318, &qword_1D563FBC0);
  swift_getKeyPath();
  v170 = v192;
  sub_1D5610DA8();

  v213 = v185;
  v214 = v168;
  v171 = __swift_allocate_boxed_opaque_existential_0(&v212);
  sub_1D5195E5C(v167, v171);
  UploadedAudio.init(propertyProvider:)(&v212, v183);
  swift_unknownObjectRelease();
  sub_1D4E7661C(v191, &qword_1EC7EEC40, &unk_1D561C070);
  (*(v187 + 8))(v170, v188);
  (*(v179 + 8))(v186, v180);
  return sub_1D5195EC0(v167);
}

uint64_t sub_1D5194870()
{
  v0 = sub_1D5613158();
  __swift_allocate_value_buffer(v0, qword_1EC7F1300);
  v1 = __swift_project_value_buffer(v0, qword_1EC7F1300);
  v2 = *MEMORY[0x1E69767F0];
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t static UploadedAudio.underlyingLegacyModelObjectType.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC7E9008 != -1)
  {
    swift_once();
  }

  v2 = sub_1D5613158();
  __swift_project_value_buffer(v2, qword_1EC7F1300);
  OUTLINED_FUNCTION_24_0();
  v4 = *(v3 + 16);

  return v4(a1);
}

uint64_t UploadedAudio.convertToLegacyModelStorageDictionary(for:)()
{
  v1 = v0;
  v153 = sub_1D5614A78();
  OUTLINED_FUNCTION_4();
  v146 = v2;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF5D8, &unk_1D5632160);
  OUTLINED_FUNCTION_22(v5);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC528, &unk_1D5621070);
  OUTLINED_FUNCTION_22(v8);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC530, &unk_1D5632150);
  OUTLINED_FUNCTION_22(v11);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_48(v13);
  v149 = sub_1D5610CB8();
  OUTLINED_FUNCTION_4();
  v145 = v14;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v16);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF5D0, &unk_1D5632140);
  OUTLINED_FUNCTION_22(v17);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_48(v19);
  v154 = sub_1D560F928();
  OUTLINED_FUNCTION_4();
  v144 = v20;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v22);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDB98, L"X\b\a");
  OUTLINED_FUNCTION_22(v23);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v24);
  v26 = v143 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  OUTLINED_FUNCTION_22(v27);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v28);
  v30 = v143 - v29;
  v31 = sub_1D5613598();
  OUTLINED_FUNCTION_4();
  v33 = v32;
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_59_0();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_135();
  v160 = v36;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_135();
  v159 = v38;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_135();
  v158 = v40;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_135();
  v157 = v43;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v46);
  v48 = v143 - v47;
  OUTLINED_FUNCTION_15_55();
  v156 = sub_1D5196010(v49, v50, MEMORY[0x1E6976B18]);
  v51 = sub_1D5614BD8();
  v52 = *MEMORY[0x1E6976AF0];
  v163 = v33;
  v53 = *(v33 + 104);
  v161 = v33 + 104;
  v166 = v53;
  v53(v48, v52, v31);
  if (qword_1EC7E8E40 != -1)
  {
    swift_once();
  }

  v54 = sub_1D56140F8();
  v55 = sub_1D5196010(&qword_1EDD57500, type metadata accessor for UploadedAudio, &protocol conformance descriptor for UploadedAudio);
  v164 = sub_1D5196010(&qword_1EC7EC498, type metadata accessor for UploadedAudio, &protocol conformance descriptor for UploadedAudio);
  v165 = v55;
  sub_1D560EC28();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v30, 1, v54);
  v162 = v1;
  if (EnumTagSinglePayload == 1)
  {
    sub_1D4E7661C(v30, &qword_1EC7E9CA0, &unk_1D561A0C0);
    OUTLINED_FUNCTION_11_35();
  }

  else
  {
    sub_1D5613F38();
    OUTLINED_FUNCTION_24_0();
    (*(v57 + 8))(v30, v54);
    if (v170)
    {
      OUTLINED_FUNCTION_9_67();
      OUTLINED_FUNCTION_0_122();
      sub_1D4F14934();
      v51 = v167;
      v58 = *(v163 + 8);
      v58(v48, v31);
      goto LABEL_11;
    }
  }

  sub_1D4E7661C(&v169, &qword_1EC7E9F98, &qword_1D561C420);
  sub_1D4F0E600();
  if (v60)
  {
    v61 = v59;
    swift_isUniquelyReferenced_nonNull_native();
    v167 = v51;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB488, &qword_1D561E260);
    sub_1D5615D78();
    v51 = v167;
    v58 = *(v163 + 8);
    v58((*(v167 + 48) + *(v163 + 72) * v61), v31);
    sub_1D4E519A8((*(v51 + 56) + 32 * v61), v168);
    sub_1D5615D98();
  }

  else
  {
    memset(v168, 0, sizeof(v168));
    v58 = *(v163 + 8);
  }

  v58(v48, v31);
  sub_1D4E7661C(v168, &qword_1EC7E9F98, &qword_1D561C420);
LABEL_11:
  v62 = v147;
  v166(v147, *MEMORY[0x1E6976A88], v31);
  if (qword_1EC7E8E50 != -1)
  {
    swift_once();
  }

  sub_1D560EC28();
  v63 = v154;
  if (__swift_getEnumTagSinglePayload(v26, 1, v154) == 1)
  {
    sub_1D4E7661C(v26, &qword_1EC7EDB98, L"X\b\a");
    sub_1D4F0E600();
    if (v65)
    {
      v66 = v64;
      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_6_69();
      v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB488, &qword_1D561E260);
      OUTLINED_FUNCTION_7_73(v67);
      OUTLINED_FUNCTION_20_4();
      v58((v68 + v69 * v66), v31);
      sub_1D4E519A8((*(v51 + 56) + 32 * v66), &v169);
      sub_1D5615D98();
    }

    else
    {
      OUTLINED_FUNCTION_11_35();
    }

    v75 = v148;
    OUTLINED_FUNCTION_27_38();
    v58(v62, v31);
    sub_1D4E7661C(&v169, &qword_1EC7E9F98, &qword_1D561C420);
  }

  else
  {
    v70 = v62;
    v71 = v144;
    (*(v144 + 16))(v143[1], v26, v63);
    sub_1D515CC4C();
    v72 = v63;
    v74 = v73;
    (*(v71 + 8))(v26, v72);
    v170 = sub_1D4F688F0();
    *&v169 = v74;
    OUTLINED_FUNCTION_9_67();
    OUTLINED_FUNCTION_0_122();
    sub_1D4F14934();
    v51 = v167;
    OUTLINED_FUNCTION_27_38();
    v75 = v148;
    v58(v70, v31);
  }

  OUTLINED_FUNCTION_37_24();
  v76();
  if (qword_1EC7E8E60 != -1)
  {
    swift_once();
  }

  v77 = MEMORY[0x1E69E63B0];
  OUTLINED_FUNCTION_28_39();
  sub_1D560EC28();
  if (BYTE8(v169))
  {
    sub_1D4F0E600();
    if (v78)
    {
      OUTLINED_FUNCTION_35_4();
      OUTLINED_FUNCTION_6_69();
      v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB488, &qword_1D561E260);
      OUTLINED_FUNCTION_7_73(v79);
      OUTLINED_FUNCTION_20_4();
      v58((v80 + v81 * v77), v31);
      OUTLINED_FUNCTION_21_43();
      OUTLINED_FUNCTION_4_73();
    }

    else
    {
      OUTLINED_FUNCTION_11_35();
    }

    v84 = v149;
    OUTLINED_FUNCTION_27_38();
    v85 = OUTLINED_FUNCTION_39_4();
    (v58)(v85);
    sub_1D4E7661C(&v169, &qword_1EC7E9F98, &qword_1D561C420);
  }

  else
  {
    sub_1D5615578();
    v170 = v77;
    *&v169 = v82;
    OUTLINED_FUNCTION_9_67();
    OUTLINED_FUNCTION_0_122();
    sub_1D4F14934();
    v51 = v167;
    OUTLINED_FUNCTION_27_38();
    v83 = OUTLINED_FUNCTION_39_4();
    (v58)(v83);
    v84 = v149;
  }

  OUTLINED_FUNCTION_37_24();
  v86();
  if (qword_1EC7E8E88 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_28_39();
  v87 = v162;
  sub_1D560EC28();
  if (OUTLINED_FUNCTION_42_1(v75) == 1)
  {
    sub_1D4E7661C(v75, &qword_1EC7EF5D0, &unk_1D5632140);
    sub_1D4F0E600();
    if (v88)
    {
      OUTLINED_FUNCTION_35_4();
      OUTLINED_FUNCTION_6_69();
      v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB488, &qword_1D561E260);
      OUTLINED_FUNCTION_7_73(v89);
      OUTLINED_FUNCTION_20_4();
      v58((v90 + v91 * v84), v31);
      OUTLINED_FUNCTION_21_43();
      OUTLINED_FUNCTION_4_73();
    }

    else
    {
      OUTLINED_FUNCTION_11_35();
    }

    OUTLINED_FUNCTION_27_38();
    v58(v157, v31);
    sub_1D4E7661C(&v169, &qword_1EC7E9F98, &qword_1D561C420);
  }

  else
  {
    v92 = v75;
    v93 = v145;
    v94 = OUTLINED_FUNCTION_41_5();
    v95(v94);
    sub_1D515D168(v87);
    v97 = v96;
    (*(v93 + 8))(v92, v84);
    v170 = sub_1D4F688F0();
    *&v169 = v97;
    OUTLINED_FUNCTION_9_67();
    OUTLINED_FUNCTION_0_122();
    v98 = v157;
    sub_1D4F14934();
    v51 = v167;
    OUTLINED_FUNCTION_27_38();
    v58(v98, v31);
  }

  v99 = v166;
  v166(v150, *MEMORY[0x1E6976AB0], v31);
  v170 = MEMORY[0x1E69E6370];
  LOBYTE(v169) = 1;
  OUTLINED_FUNCTION_9_67();
  OUTLINED_FUNCTION_0_122();
  sub_1D4F14934();
  v100 = OUTLINED_FUNCTION_30_34();
  (v58)(v100);
  v99(v158, *MEMORY[0x1E6976AB8], v31);
  if (qword_1EC7E8E90 != -1)
  {
    swift_once();
  }

  v101 = sub_1D5613198();
  v102 = v151;
  OUTLINED_FUNCTION_28_39();
  sub_1D560EC28();
  v103 = OUTLINED_FUNCTION_42_1(v102);
  v104 = MEMORY[0x1E69E6530];
  v157 = v58;
  if (v103 == 1)
  {
    sub_1D4E7661C(v102, &qword_1EC7EC530, &unk_1D5632150);
    sub_1D4F0E600();
    if (v105)
    {
      OUTLINED_FUNCTION_35_4();
      OUTLINED_FUNCTION_6_69();
      v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB488, &qword_1D561E260);
      OUTLINED_FUNCTION_7_73(v106);
      v107 = OUTLINED_FUNCTION_3_97();
      (v58)(v107);
      OUTLINED_FUNCTION_21_43();
      OUTLINED_FUNCTION_4_73();
    }

    else
    {
      v108.n128_f64[0] = OUTLINED_FUNCTION_11_35();
    }

    (v58)(v158, v31, v108);
    sub_1D4E7661C(&v169, &qword_1EC7E9F98, &qword_1D561C420);
  }

  else
  {
    v109 = v102;
    v110 = sub_1D5613188();
    OUTLINED_FUNCTION_24_0();
    (*(v111 + 8))(v109, v101);
    v170 = v104;
    *&v169 = v110;
    OUTLINED_FUNCTION_9_67();
    OUTLINED_FUNCTION_0_122();
    sub_1D4F14934();
    v112 = OUTLINED_FUNCTION_30_34();
    (v58)(v112);
  }

  v166(v159, *MEMORY[0x1E6976AC0], v31);
  if (qword_1EC7E8E98 != -1)
  {
    swift_once();
  }

  v113 = sub_1D56134E8();
  v114 = v152;
  OUTLINED_FUNCTION_28_39();
  sub_1D560EC28();
  if (OUTLINED_FUNCTION_42_1(v114) == 1)
  {
    sub_1D4E7661C(v114, &qword_1EC7EC528, &unk_1D5621070);
    sub_1D4F0E600();
    if (v115)
    {
      OUTLINED_FUNCTION_35_4();
      OUTLINED_FUNCTION_6_69();
      v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB488, &qword_1D561E260);
      OUTLINED_FUNCTION_7_73(v116);
      v117 = OUTLINED_FUNCTION_3_97();
      v118 = v157;
      (v157)(v117);
      OUTLINED_FUNCTION_21_43();
      OUTLINED_FUNCTION_4_73();
      OUTLINED_FUNCTION_11_68();
    }

    else
    {
      OUTLINED_FUNCTION_11_35();
      OUTLINED_FUNCTION_11_68();
      v118 = v157;
    }

    v118(v159, v31);
    sub_1D4E7661C(&v169, &qword_1EC7E9F98, &qword_1D561C420);
  }

  else
  {
    v119 = sub_1D5613468();
    OUTLINED_FUNCTION_24_0();
    (*(v120 + 8))(v114, v113);
    v170 = v104;
    *&v169 = v119;
    OUTLINED_FUNCTION_9_67();
    OUTLINED_FUNCTION_0_122();
    v113 = v159;
    sub_1D4F14934();
    v121 = OUTLINED_FUNCTION_30_34();
    (v157)(v121);
    OUTLINED_FUNCTION_11_68();
  }

  OUTLINED_FUNCTION_37_24();
  v122();
  if (qword_1EC7E8EA0 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_28_39();
  sub_1D560EC28();
  v123 = v155;
  if (OUTLINED_FUNCTION_42_1(v155) == 1)
  {
    sub_1D4E7661C(v123, &qword_1EC7EF5D8, &unk_1D5632160);
    sub_1D4F0E600();
    if (v124)
    {
      OUTLINED_FUNCTION_35_4();
      OUTLINED_FUNCTION_6_69();
      v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB488, &qword_1D561E260);
      OUTLINED_FUNCTION_7_73(v125);
      v126 = OUTLINED_FUNCTION_3_97();
      v127 = v157;
      (v157)(v126);
      OUTLINED_FUNCTION_21_43();
      OUTLINED_FUNCTION_4_73();
    }

    else
    {
      OUTLINED_FUNCTION_11_35();
      v127 = v157;
    }

    v127(v160, v31);
    sub_1D4E7661C(&v169, &qword_1EC7E9F98, &qword_1D561C420);
  }

  else
  {
    v128 = v146;
    v129 = v160;
    v130 = v123;
    v131 = OUTLINED_FUNCTION_41_5();
    v132(v131);
    sub_1D515CC2C();
    v134 = v133;
    (*(v128 + 8))(v130, v113);
    v170 = sub_1D4F688F0();
    *&v169 = v134;
    OUTLINED_FUNCTION_9_67();
    OUTLINED_FUNCTION_0_122();
    sub_1D4F14934();
    v51 = v167;
    v127 = v157;
    (v157)(v129, v31);
  }

  OUTLINED_FUNCTION_37_24();
  v135();
  if (qword_1EC7E8EC8 != -1)
  {
    swift_once();
  }

  v136 = MEMORY[0x1E69E6158];
  OUTLINED_FUNCTION_28_39();
  sub_1D560EC28();
  if (*(&v169 + 1))
  {
    v170 = v136;
    OUTLINED_FUNCTION_9_67();
    OUTLINED_FUNCTION_0_122();
    sub_1D4F14934();
    v51 = v167;
    v137 = OUTLINED_FUNCTION_39_4();
    (v127)(v137);
  }

  else
  {
    sub_1D4F0E600();
    if (v138)
    {
      OUTLINED_FUNCTION_35_4();
      OUTLINED_FUNCTION_6_69();
      v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB488, &qword_1D561E260);
      OUTLINED_FUNCTION_7_73(v139);
      v140 = OUTLINED_FUNCTION_3_97();
      (v127)(v140);
      OUTLINED_FUNCTION_21_43();
      OUTLINED_FUNCTION_4_73();
    }

    else
    {
      OUTLINED_FUNCTION_11_35();
    }

    v141 = OUTLINED_FUNCTION_39_4();
    (v127)(v141);
    sub_1D4E7661C(&v169, &qword_1EC7E9F98, &qword_1D561C420);
  }

  return v51;
}

uint64_t UploadedAudio.underlyingLegacyModelObjectType.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E69767F0];
  sub_1D5613158();
  OUTLINED_FUNCTION_24_0();
  v5 = *(v4 + 104);

  return v5(a1, v2, v3);
}

uint64_t sub_1D5195D20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1D5196010(&qword_1EC7F1330, type metadata accessor for UploadedAudio, &protocol conformance descriptor for UploadedAudio);

  return MEMORY[0x1EEDD15B0](a1, a2, a3, v8, a4);
}

uint64_t sub_1D5195DD4(uint64_t a1, uint64_t a2)
{
  sub_1D5196010(&qword_1EC7EA718, type metadata accessor for UploadedAudio, &protocol conformance descriptor for UploadedAudio);

  return sub_1D56132F8();
}

uint64_t sub_1D5195E5C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UploadedAudioPropertyProvider(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D5195EC0(uint64_t a1)
{
  v2 = type metadata accessor for UploadedAudioPropertyProvider(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D5195F1C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UploadedAudioPropertyProvider(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D5196010(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

void sub_1D519607C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47();
  v23 = v20;
  v172 = v25;
  v173 = v24;
  v177 = v26;
  v27 = type metadata accessor for UploadedVideo(0);
  v28 = OUTLINED_FUNCTION_22(v27);
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_13();
  v169 = v29;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_13_2();
  v171 = v31;
  v32 = OUTLINED_FUNCTION_70_0();
  v33 = type metadata accessor for UploadedAudio(v32);
  v34 = OUTLINED_FUNCTION_22(v33);
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_13();
  v167 = v35;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_13_2();
  v170 = v37;
  v38 = OUTLINED_FUNCTION_70_0();
  v39 = type metadata accessor for TVEpisode(v38);
  v40 = OUTLINED_FUNCTION_22(v39);
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_13();
  v164 = v41;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_13_2();
  v168 = v43;
  OUTLINED_FUNCTION_70_0();
  sub_1D5613838();
  OUTLINED_FUNCTION_4();
  v165 = v45;
  v166 = v44;
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_13_2();
  v163 = v47;
  OUTLINED_FUNCTION_70_0();
  v162 = sub_1D5614898();
  OUTLINED_FUNCTION_4();
  v161 = v48;
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_13_2();
  v160 = v51;
  OUTLINED_FUNCTION_70_0();
  v159 = sub_1D560EEA8();
  OUTLINED_FUNCTION_4();
  v158 = v52;
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_13_2();
  v157 = v55;
  v56 = OUTLINED_FUNCTION_70_0();
  v57 = type metadata accessor for MusicMovie(v56);
  v58 = OUTLINED_FUNCTION_22(v57);
  MEMORY[0x1EEE9AC00](v58);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v59);
  OUTLINED_FUNCTION_13_2();
  v156 = v60;
  OUTLINED_FUNCTION_70_0();
  v155 = sub_1D5613AF8();
  OUTLINED_FUNCTION_4();
  v154[3] = v61;
  MEMORY[0x1EEE9AC00](v62);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v63);
  OUTLINED_FUNCTION_13_2();
  v154[1] = v64;
  v65 = OUTLINED_FUNCTION_70_0();
  v176 = type metadata accessor for GenericMusicItem(v65);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v66);
  OUTLINED_FUNCTION_5();
  v174 = v68 - v67;
  v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1360, &unk_1D563FE88);
  OUTLINED_FUNCTION_4();
  v70 = v69;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v71);
  OUTLINED_FUNCTION_31();
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1350, &qword_1D563FE38);
  OUTLINED_FUNCTION_4();
  v74 = v73;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v75);
  OUTLINED_FUNCTION_16_0();
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1340, &qword_1D563FDE8);
  OUTLINED_FUNCTION_4();
  v78 = v77;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v79);
  v81 = v154 - v80;
  v82 = OBJC_IVAR____TtCE16MusicKitInternalC8MusicKit11MusicPlayer16GenericItemState__playabilityStatus;
  v178 = 11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1390, &qword_1D563FEF8);
  sub_1D560C8B8();
  v83 = v76;
  v84 = v177;
  (*(v78 + 32))(v23 + v82, v81, v83);
  v85 = OBJC_IVAR____TtCE16MusicKitInternalC8MusicKit11MusicPlayer16GenericItemState__previewCapabilityStatus;
  v178 = 6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F13A0, &qword_1D563FF00);
  sub_1D560C8B8();
  v86 = v23 + v85;
  v87 = v174;
  (*(v74 + 32))(v86, v21, v72);
  v88 = OBJC_IVAR____TtCE16MusicKitInternalC8MusicKit11MusicPlayer16GenericItemState__isPlaying;
  v178 = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F13B0, &qword_1D563FF08);
  sub_1D560C8B8();
  v90 = *(v70 + 32);
  v89 = v70 + 32;
  v90(v23 + v88, v22, v175);
  *(v23 + OBJC_IVAR____TtCE16MusicKitInternalC8MusicKit11MusicPlayer16GenericItemState_itemStateDidChangeObserver) = 0;
  v91 = (v23 + OBJC_IVAR____TtCE16MusicKitInternalC8MusicKit11MusicPlayer16GenericItemState_itemState);
  *v91 = 0u;
  v91[1] = 0u;
  OUTLINED_FUNCTION_24_42();
  sub_1D51A1FBC(v84, v87);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
    case 2u:
    case 3u:
    case 4u:
    case 5u:
    case 6u:
    case 0xAu:
    case 0xBu:
    case 0xCu:
    case 0xDu:
    case 0xFu:
    case 0x11u:
    case 0x12u:
    case 0x15u:

      sub_1D4E50004(v173, &qword_1EC7EEC40, &unk_1D561C070);
      v92 = type metadata accessor for GenericMusicItem;
      sub_1D51A34D0(v84, type metadata accessor for GenericMusicItem);
      v93 = v87;
      goto LABEL_13;
    case 7u:
      v136 = OUTLINED_FUNCTION_127_0();
      v121 = v156;
      sub_1D51A1F64(v136, v156);
      v92 = type metadata accessor for MusicMovie;
      sub_1D51A1FBC(v121, v154[2]);
      OUTLINED_FUNCTION_103_10();
      v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1400, &qword_1D563FF90);
      OUTLINED_FUNCTION_2_19(v137);
      OUTLINED_FUNCTION_99_10();
      v138 = OUTLINED_FUNCTION_78_12();
      sub_1D51A2014(v138, v139, v140);
      OUTLINED_FUNCTION_139_6();
      sub_1D5197420(v141);
      goto LABEL_12;
    case 8u:
      OUTLINED_FUNCTION_117_5();
      v102 = OUTLINED_FUNCTION_106_6();
      v94 = v159;
      v103(v102);
      OUTLINED_FUNCTION_142_4();
      v104 = OUTLINED_FUNCTION_40_30();
      v105(v104);
      OUTLINED_FUNCTION_104_10();
      v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F13F8, &qword_1D563FF88);
      OUTLINED_FUNCTION_2_19(v106);
      OUTLINED_FUNCTION_101_4();
      v107 = OUTLINED_FUNCTION_79_7();
      sub_1D51A09C0(v107, v108, v109);
      OUTLINED_FUNCTION_144_2();
      sub_1D51975B8(v110);
      goto LABEL_8;
    case 9u:
      OUTLINED_FUNCTION_117_5();
      v111 = OUTLINED_FUNCTION_106_6();
      v94 = v162;
      v112(v111);
      OUTLINED_FUNCTION_142_4();
      v113 = OUTLINED_FUNCTION_40_30();
      v114(v113);
      OUTLINED_FUNCTION_104_10();
      v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F13F0, &qword_1D563FF80);
      OUTLINED_FUNCTION_2_19(v115);
      OUTLINED_FUNCTION_101_4();
      v116 = OUTLINED_FUNCTION_79_7();
      sub_1D519F420(v116, v117, v118);
      OUTLINED_FUNCTION_144_2();
      sub_1D5197750(v119);
      goto LABEL_8;
    case 0xEu:
      v89 = v165;
      v94 = v166;
      v23 = v163;
      (*(v165 + 32))(v163, v87, v166);
      OUTLINED_FUNCTION_142_4();
      v95 = OUTLINED_FUNCTION_40_30();
      v96(v95);
      OUTLINED_FUNCTION_104_10();
      v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F13E8, &qword_1D563FF78);
      OUTLINED_FUNCTION_2_19(v97);
      OUTLINED_FUNCTION_101_4();
      v98 = OUTLINED_FUNCTION_79_7();
      sub_1D519DE80(v98, v99, v100);
      OUTLINED_FUNCTION_144_2();
      sub_1D51978E8(v101);
      goto LABEL_8;
    case 0x10u:
      v142 = OUTLINED_FUNCTION_127_0();
      v121 = v168;
      sub_1D51A1F64(v142, v168);
      v92 = type metadata accessor for TVEpisode;
      sub_1D51A1FBC(v121, v164);
      OUTLINED_FUNCTION_103_10();
      v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F13E0, &qword_1D563FF70);
      OUTLINED_FUNCTION_2_19(v143);
      OUTLINED_FUNCTION_99_10();
      v144 = OUTLINED_FUNCTION_78_12();
      sub_1D519C9C4(v144, v145, v146);
      OUTLINED_FUNCTION_139_6();
      sub_1D5197A80(v147);
      goto LABEL_12;
    case 0x13u:
      v148 = OUTLINED_FUNCTION_127_0();
      v121 = v170;
      sub_1D51A1F64(v148, v170);
      v92 = type metadata accessor for UploadedAudio;
      sub_1D51A1FBC(v121, v167);
      OUTLINED_FUNCTION_103_10();
      v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F13D8, &qword_1D563FF68);
      OUTLINED_FUNCTION_2_19(v149);
      OUTLINED_FUNCTION_99_10();
      v150 = OUTLINED_FUNCTION_78_12();
      sub_1D519B478(v150, v151, v152);
      OUTLINED_FUNCTION_139_6();
      sub_1D5197C18(v153);
      goto LABEL_12;
    case 0x14u:
      v120 = OUTLINED_FUNCTION_127_0();
      v121 = v171;
      sub_1D51A1F64(v120, v171);
      v92 = type metadata accessor for UploadedVideo;
      sub_1D51A1FBC(v121, v169);
      OUTLINED_FUNCTION_103_10();
      v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F13D0, &qword_1D563FF60);
      OUTLINED_FUNCTION_2_19(v122);
      OUTLINED_FUNCTION_99_10();
      v123 = OUTLINED_FUNCTION_78_12();
      sub_1D5199F2C(v123, v124, v125);
      OUTLINED_FUNCTION_139_6();
      sub_1D5197DB0(v126);
LABEL_12:

      sub_1D4E50004(v81, &qword_1EC7EEC40, &unk_1D561C070);
      OUTLINED_FUNCTION_71_13();
      v93 = v121;
LABEL_13:
      sub_1D51A34D0(v93, v92);
      break;
    default:
      OUTLINED_FUNCTION_117_5();
      v127 = OUTLINED_FUNCTION_106_6();
      v94 = v155;
      v128(v127);
      OUTLINED_FUNCTION_142_4();
      v129 = OUTLINED_FUNCTION_40_30();
      v130(v129);
      OUTLINED_FUNCTION_104_10();
      v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1408, &unk_1D563FF98);
      OUTLINED_FUNCTION_2_19(v131);
      OUTLINED_FUNCTION_101_4();
      v132 = OUTLINED_FUNCTION_79_7();
      sub_1D51A3528(v132, v133, v134);
      OUTLINED_FUNCTION_144_2();
      sub_1D5197288(v135);
LABEL_8:

      sub_1D4E50004(v21, &qword_1EC7EEC40, &unk_1D561C070);
      OUTLINED_FUNCTION_71_13();
      (*(v89 + 8))(v23, v94);
      break;
  }

  OUTLINED_FUNCTION_46();
}

void *sub_1D5196B70@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D5196BE4();
  *a1 = v3;
  return result;
}

uint64_t sub_1D5196C28()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F13C8, &unk_1D563FF50);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v0);
  v2 = OUTLINED_FUNCTION_1_3(v1, v8);
  v3(v2);
  OUTLINED_FUNCTION_21_17();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1340, &qword_1D563FDE8);
  OUTLINED_FUNCTION_47_3(v4);
  swift_endAccess();
  v5 = OUTLINED_FUNCTION_128();
  return v6(v5);
}

void *sub_1D5196D14@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D5196D88();
  *a1 = v3;
  return result;
}

uint64_t sub_1D5196DB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  swift_getKeyPath();

  OUTLINED_FUNCTION_6_58();
  return sub_1D560C908();
}

uint64_t sub_1D5196E18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(uint64_t))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_31();
  v10 = OUTLINED_FUNCTION_61();
  v11(v10);
  return a7(v7);
}

uint64_t sub_1D5196EEC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F13C0, &qword_1D563FF48);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v0);
  v2 = OUTLINED_FUNCTION_1_3(v1, v8);
  v3(v2);
  OUTLINED_FUNCTION_21_17();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1350, &qword_1D563FE38);
  OUTLINED_FUNCTION_47_3(v4);
  swift_endAccess();
  v5 = OUTLINED_FUNCTION_128();
  return v6(v5);
}

uint64_t sub_1D5196FD8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D519702C();
  *a1 = result;
  return result;
}

uint64_t sub_1D519702C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D560C8F8();

  return v1;
}

uint64_t sub_1D51970A0()
{
  swift_getKeyPath();
  swift_getKeyPath();

  OUTLINED_FUNCTION_6_58();
  return sub_1D560C908();
}

uint64_t sub_1D5197128(void *a1)
{
  swift_beginAccess();
  v1 = OUTLINED_FUNCTION_98();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  sub_1D560C8C8();
  return swift_endAccess();
}

uint64_t sub_1D519719C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F13B8, &qword_1D563FF40);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v0);
  v2 = OUTLINED_FUNCTION_1_3(v1, v8);
  v3(v2);
  OUTLINED_FUNCTION_21_17();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1360, &unk_1D563FE88);
  OUTLINED_FUNCTION_47_3(v4);
  swift_endAccess();
  v5 = OUTLINED_FUNCTION_128();
  return v6(v5);
}

uint64_t sub_1D5197288(uint64_t a1)
{
  v2 = v1;
  v10[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1408, &unk_1D563FF98);
  v10[0] = a1;
  v4 = OBJC_IVAR____TtCE16MusicKitInternalC8MusicKit11MusicPlayer16GenericItemState_itemState;
  swift_beginAccess();

  sub_1D51A4AC8(v10, v2 + v4);
  swift_endAccess();
  sub_1D51ADFE8(&qword_1EC7F1410, &qword_1EC7F1408, &unk_1D563FF98);
  v10[0] = sub_1D560C838();
  v5 = swift_allocObject();
  swift_weakInit();
  v6 = swift_allocObject();
  swift_weakInit();
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  *(v7 + 24) = v6;
  sub_1D560C898();
  v8 = sub_1D560C948();

  *(v2 + OBJC_IVAR____TtCE16MusicKitInternalC8MusicKit11MusicPlayer16GenericItemState_itemStateDidChangeObserver) = v8;
}

uint64_t sub_1D5197420(uint64_t a1)
{
  v2 = v1;
  v10[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1400, &qword_1D563FF90);
  v10[0] = a1;
  v4 = OBJC_IVAR____TtCE16MusicKitInternalC8MusicKit11MusicPlayer16GenericItemState_itemState;
  swift_beginAccess();

  sub_1D51A4AC8(v10, v2 + v4);
  swift_endAccess();
  sub_1D51ADFE8(&qword_1EC7F1430, &qword_1EC7F1400, &qword_1D563FF90);
  v10[0] = sub_1D560C838();
  v5 = swift_allocObject();
  swift_weakInit();
  v6 = swift_allocObject();
  swift_weakInit();
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  *(v7 + 24) = v6;
  sub_1D560C898();
  v8 = sub_1D560C948();

  *(v2 + OBJC_IVAR____TtCE16MusicKitInternalC8MusicKit11MusicPlayer16GenericItemState_itemStateDidChangeObserver) = v8;
}

uint64_t sub_1D51975B8(uint64_t a1)
{
  v2 = v1;
  v10[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F13F8, &qword_1D563FF88);
  v10[0] = a1;
  v4 = OBJC_IVAR____TtCE16MusicKitInternalC8MusicKit11MusicPlayer16GenericItemState_itemState;
  swift_beginAccess();

  sub_1D51A4AC8(v10, v2 + v4);
  swift_endAccess();
  sub_1D51ADFE8(&qword_1EC7F1440, &qword_1EC7F13F8, &qword_1D563FF88);
  v10[0] = sub_1D560C838();
  v5 = swift_allocObject();
  swift_weakInit();
  v6 = swift_allocObject();
  swift_weakInit();
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  *(v7 + 24) = v6;
  sub_1D560C898();
  v8 = sub_1D560C948();

  *(v2 + OBJC_IVAR____TtCE16MusicKitInternalC8MusicKit11MusicPlayer16GenericItemState_itemStateDidChangeObserver) = v8;
}

uint64_t sub_1D5197750(uint64_t a1)
{
  v2 = v1;
  v10[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F13F0, &qword_1D563FF80);
  v10[0] = a1;
  v4 = OBJC_IVAR____TtCE16MusicKitInternalC8MusicKit11MusicPlayer16GenericItemState_itemState;
  swift_beginAccess();

  sub_1D51A4AC8(v10, v2 + v4);
  swift_endAccess();
  sub_1D51ADFE8(&qword_1EC7F1450, &qword_1EC7F13F0, &qword_1D563FF80);
  v10[0] = sub_1D560C838();
  v5 = swift_allocObject();
  swift_weakInit();
  v6 = swift_allocObject();
  swift_weakInit();
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  *(v7 + 24) = v6;
  sub_1D560C898();
  v8 = sub_1D560C948();

  *(v2 + OBJC_IVAR____TtCE16MusicKitInternalC8MusicKit11MusicPlayer16GenericItemState_itemStateDidChangeObserver) = v8;
}

uint64_t sub_1D51978E8(uint64_t a1)
{
  v2 = v1;
  v10[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F13E8, &qword_1D563FF78);
  v10[0] = a1;
  v4 = OBJC_IVAR____TtCE16MusicKitInternalC8MusicKit11MusicPlayer16GenericItemState_itemState;
  swift_beginAccess();

  sub_1D51A4AC8(v10, v2 + v4);
  swift_endAccess();
  sub_1D51ADFE8(&qword_1EC7F1458, &qword_1EC7F13E8, &qword_1D563FF78);
  v10[0] = sub_1D560C838();
  v5 = swift_allocObject();
  swift_weakInit();
  v6 = swift_allocObject();
  swift_weakInit();
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  *(v7 + 24) = v6;
  sub_1D560C898();
  v8 = sub_1D560C948();

  *(v2 + OBJC_IVAR____TtCE16MusicKitInternalC8MusicKit11MusicPlayer16GenericItemState_itemStateDidChangeObserver) = v8;
}

uint64_t sub_1D5197A80(uint64_t a1)
{
  v2 = v1;
  v10[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F13E0, &qword_1D563FF70);
  v10[0] = a1;
  v4 = OBJC_IVAR____TtCE16MusicKitInternalC8MusicKit11MusicPlayer16GenericItemState_itemState;
  swift_beginAccess();

  sub_1D51A4AC8(v10, v2 + v4);
  swift_endAccess();
  sub_1D51ADFE8(&qword_1EC7F1460, &qword_1EC7F13E0, &qword_1D563FF70);
  v10[0] = sub_1D560C838();
  v5 = swift_allocObject();
  swift_weakInit();
  v6 = swift_allocObject();
  swift_weakInit();
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  *(v7 + 24) = v6;
  sub_1D560C898();
  v8 = sub_1D560C948();

  *(v2 + OBJC_IVAR____TtCE16MusicKitInternalC8MusicKit11MusicPlayer16GenericItemState_itemStateDidChangeObserver) = v8;
}

uint64_t sub_1D5197C18(uint64_t a1)
{
  v2 = v1;
  v10[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F13D8, &qword_1D563FF68);
  v10[0] = a1;
  v4 = OBJC_IVAR____TtCE16MusicKitInternalC8MusicKit11MusicPlayer16GenericItemState_itemState;
  swift_beginAccess();

  sub_1D51A4AC8(v10, v2 + v4);
  swift_endAccess();
  sub_1D51ADFE8(&qword_1EC7F1470, &qword_1EC7F13D8, &qword_1D563FF68);
  v10[0] = sub_1D560C838();
  v5 = swift_allocObject();
  swift_weakInit();
  v6 = swift_allocObject();
  swift_weakInit();
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  *(v7 + 24) = v6;
  sub_1D560C898();
  v8 = sub_1D560C948();

  *(v2 + OBJC_IVAR____TtCE16MusicKitInternalC8MusicKit11MusicPlayer16GenericItemState_itemStateDidChangeObserver) = v8;
}

uint64_t sub_1D5197DB0(uint64_t a1)
{
  v2 = v1;
  v10[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F13D0, &qword_1D563FF60);
  v10[0] = a1;
  v4 = OBJC_IVAR____TtCE16MusicKitInternalC8MusicKit11MusicPlayer16GenericItemState_itemState;
  swift_beginAccess();

  sub_1D51A4AC8(v10, v2 + v4);
  swift_endAccess();
  sub_1D51ADFE8(&qword_1EC7F1488, &qword_1EC7F13D0, &qword_1D563FF60);
  v10[0] = sub_1D560C838();
  v5 = swift_allocObject();
  swift_weakInit();
  v6 = swift_allocObject();
  swift_weakInit();
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  *(v7 + 24) = v6;
  sub_1D560C898();
  v8 = sub_1D560C948();

  *(v2 + OBJC_IVAR____TtCE16MusicKitInternalC8MusicKit11MusicPlayer16GenericItemState_itemStateDidChangeObserver) = v8;
}

void sub_1D5197F48()
{
  OUTLINED_FUNCTION_47();
  v27 = v0;
  v25 = v1;
  v3 = v2;
  v5 = v4;
  sub_1D560C988();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  v28 = sub_1D560C9B8();
  OUTLINED_FUNCTION_4();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  v12 = v11 - v10;
  sub_1D4ECC7A8(0, &qword_1EDD5F060, 0x1E69E9610);
  v26 = sub_1D5615738();
  OUTLINED_FUNCTION_40_13();
  v13 = swift_allocObject();
  OUTLINED_FUNCTION_59(v5 + 16, &v31);
  swift_weakLoadStrong();
  swift_weakInit();

  OUTLINED_FUNCTION_40_13();
  v14 = swift_allocObject();
  OUTLINED_FUNCTION_59(v3 + 16, &v30);
  swift_weakLoadStrong();
  swift_weakInit();

  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  *(v15 + 24) = v13;
  v29[4] = v25;
  v29[5] = v15;
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 1107296256;
  OUTLINED_FUNCTION_62_21();
  v29[2] = v16;
  v29[3] = v27;
  v17 = _Block_copy(v29);

  sub_1D560C9A8();
  v29[0] = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_61_20();
  sub_1D51AE1F4(v18, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0108, &unk_1D563C2C0);
  v20 = OUTLINED_FUNCTION_67_19(&qword_1EDD5D060);
  OUTLINED_FUNCTION_135_7(v29, v21, v20);
  v22 = OUTLINED_FUNCTION_146_3();
  MEMORY[0x1DA6EB530](v22);
  _Block_release(v17);

  v23 = OUTLINED_FUNCTION_134_0();
  v24(v23);
  (*(v8 + 8))(v12, v28);
  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D5198218(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  OUTLINED_FUNCTION_59(a1 + 16, v8);
  result = swift_weakLoadStrong();
  if (result)
  {
    OUTLINED_FUNCTION_59(a2 + 16, &v7);
    if (swift_weakLoadStrong())
    {
      v6 = OUTLINED_FUNCTION_0_6();
      a3(v6);
    }
  }

  return result;
}

void sub_1D51982A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_64_4();
  a21 = v23;
  a22 = v24;
  OUTLINED_FUNCTION_118_7();
  v26 = v25;
  OUTLINED_FUNCTION_59(v27 + 16, &a12);
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v29 = Strong;
    OUTLINED_FUNCTION_59(v26 + 16, &a9);
    if (swift_weakLoadStrong())
    {
      sub_1D5198820(v29, v22);
    }
  }

  OUTLINED_FUNCTION_63_5();
}

uint64_t sub_1D5198334(uint64_t a1)
{
  type metadata accessor for UploadedVideo(0);
  sub_1D51AE1F4(&qword_1EC7F1490, type metadata accessor for UploadedVideo);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D560C8F8();

  v2 = v3;
  sub_1D5196BF8(&v2);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D560C8F8();

  v2 = v3;
  sub_1D5196D9C(&v2);
  sub_1D51A7330();
  return sub_1D51970A0();
}

uint64_t sub_1D51984D8(uint64_t a1)
{
  type metadata accessor for UploadedAudio(0);
  sub_1D51AE1F4(&qword_1EC7F1478, type metadata accessor for UploadedAudio);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D560C8F8();

  v2 = v3;
  sub_1D5196BF8(&v2);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D560C8F8();

  v2 = v3;
  sub_1D5196D9C(&v2);
  sub_1D51A7330();
  return sub_1D51970A0();
}

uint64_t sub_1D519867C(uint64_t a1)
{
  type metadata accessor for TVEpisode(0);
  sub_1D51AE1F4(&qword_1EC7F1468, type metadata accessor for TVEpisode);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D560C8F8();

  v2 = v3;
  sub_1D5196BF8(&v2);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D560C8F8();

  v2 = v3;
  sub_1D5196D9C(&v2);
  sub_1D51A7330();
  return sub_1D51970A0();
}

uint64_t sub_1D5198820(uint64_t a1, void (*a2)(void))
{
  a2(0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D560C8F8();

  v2 = OUTLINED_FUNCTION_140_6();
  sub_1D5196BF8(v2);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D560C8F8();

  v3 = OUTLINED_FUNCTION_140_6();
  sub_1D5196D9C(v3);
  v4 = OUTLINED_FUNCTION_61();
  sub_1D51A73E8(v4);
  return sub_1D51970A0();
}

uint64_t sub_1D519894C(uint64_t a1)
{
  sub_1D560EEA8();
  sub_1D51AE1F4(&qword_1EC7F1448, MEMORY[0x1E69754E8]);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D560C8F8();

  v2 = v3;
  sub_1D5196BF8(&v2);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D560C8F8();

  v2 = v3;
  sub_1D5196D9C(&v2);
  sub_1D51A7330();
  return sub_1D51970A0();
}

uint64_t sub_1D5198AF0(uint64_t a1)
{
  type metadata accessor for MusicMovie(0);
  sub_1D51AE1F4(&qword_1EC7F1438, type metadata accessor for MusicMovie);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D560C8F8();

  v2 = v3;
  sub_1D5196BF8(&v2);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D560C8F8();

  v2 = v3;
  sub_1D5196D9C(&v2);
  sub_1D51A7330();
  return sub_1D51970A0();
}

uint64_t MusicPlayer.GenericItemState.deinit()
{
  v1 = OBJC_IVAR____TtCE16MusicKitInternalC8MusicKit11MusicPlayer16GenericItemState__playabilityStatus;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1340, &qword_1D563FDE8);
  OUTLINED_FUNCTION_14();
  (*(v2 + 8))(v0 + v1);
  v3 = OBJC_IVAR____TtCE16MusicKitInternalC8MusicKit11MusicPlayer16GenericItemState__previewCapabilityStatus;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1350, &qword_1D563FE38);
  OUTLINED_FUNCTION_14();
  (*(v4 + 8))(v0 + v3);
  v5 = OBJC_IVAR____TtCE16MusicKitInternalC8MusicKit11MusicPlayer16GenericItemState__isPlaying;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1360, &unk_1D563FE88);
  OUTLINED_FUNCTION_14();
  (*(v6 + 8))(v0 + v5);

  sub_1D4E50004(v0 + OBJC_IVAR____TtCE16MusicKitInternalC8MusicKit11MusicPlayer16GenericItemState_itemState, &qword_1EC7E9F98, &qword_1D561C420);
  return v0;
}

uint64_t MusicPlayer.GenericItemState.__deallocating_deinit()
{
  MusicPlayer.GenericItemState.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1D5198E08@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for MusicPlayer.GenericItemState(0);
  result = sub_1D560C838();
  *a2 = result;
  return result;
}

uint64_t MusicPlayer.state(for:)()
{
  v1 = OUTLINED_FUNCTION_147();
  v2 = type metadata accessor for GenericMusicItem(v1);
  v3 = OUTLINED_FUNCTION_22(v2);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_18_51();
  v4 = OUTLINED_FUNCTION_127_0();
  sub_1D51A1FBC(v4, v0);
  v17 = 0;
  v15 = 0u;
  v16 = 0u;
  if (qword_1EDD5E6F8 != -1)
  {
    OUTLINED_FUNCTION_72_16(&qword_1EDD5E6F8);
  }

  v5 = type metadata accessor for MusicPlayer.GenericItemState(0);
  v6 = OUTLINED_FUNCTION_2_19(v5);

  OUTLINED_FUNCTION_134_5(v7, &v15, v8, v9, v10, v11, v12, v13, v15, *(&v15 + 1), v16, *(&v16 + 1), v17, v18, v19, v20, v21, v22, vars0, vars8);
  return v6;
}

uint64_t MusicPlayer.state(for:container:)(uint64_t a1)
{
  v3 = type metadata accessor for GenericMusicItem(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_18_51();
  sub_1D51A1FBC(a1, v1);
  v21 = v3;
  OUTLINED_FUNCTION_60_13();
  v22 = sub_1D51AE1F4(v5, v6);
  __swift_allocate_boxed_opaque_existential_0(v20);
  v7 = OUTLINED_FUNCTION_143_5();
  sub_1D51A1FBC(v7, v8);
  if (qword_1EDD5E6F8 != -1)
  {
    OUTLINED_FUNCTION_72_16(&qword_1EDD5E6F8);
  }

  v9 = type metadata accessor for MusicPlayer.GenericItemState(0);
  v10 = OUTLINED_FUNCTION_2_19(v9);

  OUTLINED_FUNCTION_134_5(v11, v20, v12, v13, v14, v15, v16, v17, v19, v20[0], v20[1], v20[2], v21, v22, v23, v24, v25, v26, v27, v28);
  return v10;
}

uint64_t InternalMusicPlayer.state(for:)()
{
  v1 = type metadata accessor for GenericMusicItem(0);
  v2 = OUTLINED_FUNCTION_22(v1);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5();
  v5 = v4 - v3;
  OUTLINED_FUNCTION_24_42();
  v6 = OUTLINED_FUNCTION_128();
  sub_1D51A1FBC(v6, v7);
  v8 = type metadata accessor for MusicPlayer.GenericItemState(0);
  v9 = OUTLINED_FUNCTION_2_19(v8);

  sub_1D519607C(v5, &v16, v0, v10, v11, v12, v13, v14, 0, 0, 0, 0, 0, v17, v18, v19, v20, v21, vars0, vars8);
  return v9;
}

uint64_t InternalMusicPlayer.state(for:container:)(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for GenericMusicItem(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_18_51();
  sub_1D51A1FBC(a1, v2);
  v22 = v5;
  OUTLINED_FUNCTION_60_13();
  v23 = sub_1D51AE1F4(v7, v8);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v21);
  sub_1D51A1FBC(a2, boxed_opaque_existential_0);
  v10 = type metadata accessor for MusicPlayer.GenericItemState(0);
  v11 = OUTLINED_FUNCTION_2_19(v10);

  OUTLINED_FUNCTION_134_5(v12, v21, v13, v14, v15, v16, v17, v18, v20, v21[0], v21[1], v21[2], v22, v23, v24, v25, v26, v27, v28, v29);
  return v11;
}

uint64_t type metadata accessor for MusicPlayer.GenericItemState(uint64_t a1)
{
  result = qword_1EC7F1378;
  if (!qword_1EC7F1378)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D5199208(uint64_t a1)
{
  sub_1D5199458(319, &qword_1EC7F1388, &qword_1EC7F1390, &qword_1D563FEF8);
  if (v1 <= 0x3F)
  {
    sub_1D5199458(319, &qword_1EC7F1398, &qword_1EC7F13A0, &qword_1D563FF00);
    if (v2 <= 0x3F)
    {
      sub_1D5199458(319, &qword_1EC7F13A8, &qword_1EC7F13B0, &qword_1D563FF08);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1D5199458(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    OUTLINED_FUNCTION_143_5();
    v5 = sub_1D560C928();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1D51994A8()
{
  OUTLINED_FUNCTION_47();
  v105 = v0;
  v108 = v4;
  v109 = v5;
  v7 = v6;
  v9 = v8;
  v10 = sub_1D560D258();
  OUTLINED_FUNCTION_4();
  v107 = v11;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_2_2();
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v100 - v16;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_145();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_163_1();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_77();
  v20 = v7[3];
  v21 = OUTLINED_FUNCTION_134_0();
  __swift_project_boxed_opaque_existential_1(v21, v22);
  OUTLINED_FUNCTION_82();
  if (sub_1D5612EF8())
  {
    v114[0] = 1;
    if (qword_1EDD544A0 != -1)
    {
      OUTLINED_FUNCTION_1_100(&qword_1EDD544A0);
    }

    v106 = v10;
    v23 = sub_1D560C758();
    v101 = __swift_project_value_buffer(v23, qword_1EDD76AD8);
    v24 = sub_1D560C738();
    v25 = sub_1D56156E8();
    v26 = os_log_type_enabled(v24, v25);
    v100 = v3;
    v102 = v9;
    if (v26)
    {
      OUTLINED_FUNCTION_142();
      v27 = OUTLINED_FUNCTION_52_19();
      v113[0] = v27;
      *v20 = 136446210;
      sub_1D51AA4E4(v27, v28, v29, v30, v31, v32, v33, v34, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110[0], v110[1], v110[2], v110[3]);
      v37 = sub_1D4E6835C(v35, v36, v113);

      *(v20 + 4) = v37;
      _os_log_impl(&dword_1D4E3F000, v24, v25, "%{public}s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v27);
      OUTLINED_FUNCTION_122();
      OUTLINED_FUNCTION_46_6();
    }

    v38 = OUTLINED_FUNCTION_134_0();
    __swift_project_boxed_opaque_existential_1(v38, v39);
    OUTLINED_FUNCTION_82();
    sub_1D5612F18();
    v40 = *(v107 + 88);
    v41 = v40(v2, v106);
    v42 = v41;
    v43 = *MEMORY[0x1E6974E38];
    v44 = MEMORY[0x1E6974E48];
    if (v41 == *MEMORY[0x1E6974E38])
    {
      v45 = v109;
      if (sub_1D51AA67C(v7, v108 & 0xFF010101))
      {
        LOBYTE(v46) = 2;
LABEL_65:
        v114[0] = v46;
        OUTLINED_FUNCTION_129_3();
        goto LABEL_80;
      }

      v47 = OUTLINED_FUNCTION_120_5();
      if (sub_1D51AA6C4(v47, v48))
      {
LABEL_14:
        LOBYTE(v46) = 3;
        goto LABEL_65;
      }

      if (v45)
      {
        v54 = [v45 capabilities] & 1;
      }

      else
      {
        LOBYTE(v54) = 0;
      }

      v66 = OUTLINED_FUNCTION_134_0();
      __swift_project_boxed_opaque_existential_1(v66, v67);
      OUTLINED_FUNCTION_45_0();
      sub_1D5612F18();
      v68 = v106;
      if (v40(v17, v106) == v42)
      {
        OUTLINED_FUNCTION_2_100();
        if (sub_1D5612FC8())
        {
          v17 = v108;
          if (!((v108 >> 16) & 1 | v54 & 1))
          {
            goto LABEL_64;
          }

          goto LABEL_52;
        }

        v17 = v108;
        v104 = (v108 >> 16) & 1;
        OUTLINED_FUNCTION_2_100();
        if (!(v104 & 1 | ((sub_1D5612F78() & 1) == 0) | v54 & 1))
        {
LABEL_64:
          LOBYTE(v46) = 5;
          goto LABEL_65;
        }
      }

      else
      {
        (*(v107 + 8))(v17, v68);
        v17 = v108;
        if ((v108 & 0x10000) == 0)
        {
          goto LABEL_64;
        }
      }

LABEL_52:
      v69 = v109;
      if (sub_1D51AA76C(v7, v17 & 0x101))
      {
        goto LABEL_14;
      }

      if (v69)
      {
        v70 = ([v69 capabilities] & 1) == 0;
      }

      else
      {
        v70 = 1;
      }

      v73 = OUTLINED_FUNCTION_134_0();
      __swift_project_boxed_opaque_existential_1(v73, v74);
      v17 = v103;
      OUTLINED_FUNCTION_45_0();
      sub_1D5612F18();
      v75 = v40(v17, v106);
      if (v75 == v42)
      {
        OUTLINED_FUNCTION_2_100();
        sub_1D5612F58();
        OUTLINED_FUNCTION_129_3();
        if ((v76 & 1) != 0 || (OUTLINED_FUNCTION_2_100(), (sub_1D5612F98() & v70 & 1) == 0))
        {
LABEL_76:
          sub_1D51AA978(v7, v113);
          v46 = LOBYTE(v113[0]);
          if (LOBYTE(v113[0]) == 11)
          {
            v77 = OUTLINED_FUNCTION_81_15();
            sub_1D51AAA94(v77, v78);
            v46 = LOBYTE(v113[0]);
          }

          goto LABEL_78;
        }

        goto LABEL_73;
      }

      v17 = v102;
      if (v75 == *v44)
      {
        if (!v70)
        {
          goto LABEL_76;
        }

        goto LABEL_73;
      }

      if (v75 == *MEMORY[0x1E6974E40])
      {
        goto LABEL_76;
      }

      while (1)
      {
LABEL_85:
        OUTLINED_FUNCTION_149_2();
        OUTLINED_FUNCTION_75_12();
        v93 = OUTLINED_FUNCTION_134_0();
        __swift_project_boxed_opaque_existential_1(v93, v94);
        OUTLINED_FUNCTION_45_0();
        sub_1D5612F18();
        OUTLINED_FUNCTION_124_5();
        v95 = OUTLINED_FUNCTION_73_10();
        v96(v95);
        OUTLINED_FUNCTION_133_3();
        v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F67C0, &unk_1D5664FC0);
        OUTLINED_FUNCTION_137_5(v97);
        MEMORY[0x1DA6EAC70](46, 0xE100000000000000);
        OUTLINED_FUNCTION_148_6("Fatal error", v98, v99, v113[0], v113[1], "MusicKitInternal/MusicPlayerItemState.swift");
        __break(1u);
      }
    }

    if (v41 != *MEMORY[0x1E6974E48])
    {
      if (v41 != *MEMORY[0x1E6974E40])
      {
        goto LABEL_85;
      }

      OUTLINED_FUNCTION_81_15();
      sub_1D51AAB58(v49);
      v46 = LOBYTE(v113[0]);
      v17 = v102;
      if (LOBYTE(v113[0]) != 11)
      {
LABEL_78:
        v114[0] = v46;
LABEL_79:
        if (v46 != 10)
        {
LABEL_80:
          sub_1D4E628D4(v7, v113);
          sub_1D4E628D4(v7, v112);
          v79 = v101;
          v80 = sub_1D560C738();
          v81 = sub_1D56156E8();
          if (os_log_type_enabled(v80, v81))
          {
            v82 = swift_slowAlloc();
            v111 = swift_slowAlloc();
            *v82 = 136446722;
            LOBYTE(v110[0]) = v46;
            v83 = sub_1D5614DB8();
            sub_1D4E6835C(v83, v84, &v111);
            OUTLINED_FUNCTION_82();

            *(v82 + 4) = v79;
            *(v82 + 12) = 2082;
            sub_1D4E628D4(v113, v110);
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F67C0, &unk_1D5664FC0);
            sub_1D5614DB8();
            __swift_destroy_boxed_opaque_existential_1(v113);
            v85 = OUTLINED_FUNCTION_71();
            v88 = sub_1D4E6835C(v85, v86, v87);

            *(v82 + 14) = v88;
            *(v82 + 22) = 2082;
            __swift_project_boxed_opaque_existential_1(v112, v112[3]);
            OUTLINED_FUNCTION_82();
            sub_1D5612F18();
            sub_1D5614DB8();
            __swift_destroy_boxed_opaque_existential_1(v112);
            v89 = OUTLINED_FUNCTION_71();
            v92 = sub_1D4E6835C(v89, v90, v91);

            *(v82 + 24) = v92;
            _os_log_impl(&dword_1D4E3F000, v80, v81, "Playability status is %{public}s for item: %{public}s for playableItemKind %{public}s.", v82, 0x20u);
            swift_arrayDestroy();
            OUTLINED_FUNCTION_122();
            OUTLINED_FUNCTION_122();
          }

          else
          {

            __swift_destroy_boxed_opaque_existential_1(v113);
            __swift_destroy_boxed_opaque_existential_1(v112);
          }
        }

LABEL_83:
        OUTLINED_FUNCTION_59(v114, v113);
        *v17 = v114[0];
        goto LABEL_84;
      }

      v50 = OUTLINED_FUNCTION_81_4();
      if (sub_1D51AA67C(v50, v51))
      {
        goto LABEL_58;
      }

      v52 = OUTLINED_FUNCTION_81_4();
      goto LABEL_60;
    }

    if (v109)
    {
      v17 = [v109 capabilities] & 1;
    }

    else
    {
      v17 = 0;
    }

    v55 = OUTLINED_FUNCTION_134_0();
    __swift_project_boxed_opaque_existential_1(v55, v56);
    OUTLINED_FUNCTION_82();
    sub_1D5612F18();
    if (v40(v1, v106) == v43)
    {
      OUTLINED_FUNCTION_2_100();
      if (sub_1D5612FC8())
      {
        if ((v108 >> 16) & 1 | v17 & 1)
        {
          goto LABEL_30;
        }
      }

      else
      {
        v59 = (v108 >> 16) & 1;
        OUTLINED_FUNCTION_2_100();
        if (v59 & 1 | ((sub_1D5612F78() & 1) == 0) | v17 & 1)
        {
          goto LABEL_30;
        }
      }
    }

    else
    {
      v57 = OUTLINED_FUNCTION_98();
      v58(v57);
      if ((v108 & 0x10000) != 0)
      {
        goto LABEL_30;
      }
    }

    OUTLINED_FUNCTION_2_100();
    if ((sub_1D5612FB8() & 1) == 0)
    {
      OUTLINED_FUNCTION_2_100();
      if (sub_1D5612F48())
      {
        v114[0] = 10;
        OUTLINED_FUNCTION_129_3();
        goto LABEL_83;
      }

      goto LABEL_64;
    }

LABEL_30:
    OUTLINED_FUNCTION_2_100();
    if ((sub_1D5612FB8() & 1) == 0)
    {
      OUTLINED_FUNCTION_81_15();
      sub_1D51AAB58(v60);
      v46 = LOBYTE(v113[0]);
      if (LOBYTE(v113[0]) != 11)
      {
        v114[0] = v113[0];
        OUTLINED_FUNCTION_129_3();
        goto LABEL_79;
      }
    }

    if (v109)
    {
      v61 = ([v109 capabilities] & 1) == 0;
    }

    else
    {
      v61 = 1;
    }

    v62 = OUTLINED_FUNCTION_134_0();
    __swift_project_boxed_opaque_existential_1(v62, v63);
    v17 = v104;
    OUTLINED_FUNCTION_45_0();
    sub_1D5612F18();
    v64 = v40(v17, v106);
    if (v64 == v43)
    {
      OUTLINED_FUNCTION_2_100();
      sub_1D5612F58();
      OUTLINED_FUNCTION_129_3();
      if (v65)
      {
        goto LABEL_57;
      }

      OUTLINED_FUNCTION_2_100();
      if ((sub_1D5612F98() & v61 & 1) == 0)
      {
        goto LABEL_57;
      }
    }

    else
    {
      v17 = v102;
      if (v64 != v42)
      {
        if (v64 != *MEMORY[0x1E6974E40])
        {
          goto LABEL_85;
        }

        goto LABEL_57;
      }

      if (!v61)
      {
LABEL_57:
        v71 = OUTLINED_FUNCTION_120_5();
        if (sub_1D51AA67C(v71, v72))
        {
LABEL_58:
          LOBYTE(v46) = 2;
          goto LABEL_74;
        }

        v52 = OUTLINED_FUNCTION_120_5();
LABEL_60:
        if ((sub_1D51AA6C4(v52, v53) & 1) == 0)
        {
          v114[0] = 10;
          goto LABEL_83;
        }

        LOBYTE(v46) = 3;
LABEL_74:
        v114[0] = v46;
        goto LABEL_80;
      }
    }

    OUTLINED_FUNCTION_2_100();
    if ((sub_1D5612FB8() & 1) == 0)
    {
      OUTLINED_FUNCTION_2_100();
      if ((sub_1D5612F48() & 1) == 0)
      {
LABEL_73:
        LOBYTE(v46) = 7;
        goto LABEL_74;
      }
    }

    goto LABEL_57;
  }

  *v9 = 9;
LABEL_84:
  OUTLINED_FUNCTION_46();
}

void *sub_1D5199F2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v149 = a3;
  v150 = a2;
  v151 = a1;
  v148 = *v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB710, &qword_1D561F440);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v142 = &v129 - v6;
  v145 = sub_1D560DB08();
  v147 = *(v145 - 8);
  v7 = MEMORY[0x1EEE9AC00](v145);
  v131 = &v129 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v135 = &v129 - v9;
  v134 = sub_1D560D838();
  v133 = *(v134 - 8);
  MEMORY[0x1EEE9AC00](v134);
  v132 = &v129 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = sub_1D560E728();
  v138 = *(v144 - 8);
  MEMORY[0x1EEE9AC00](v144);
  v146 = &v129 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for UploadedVideo(0);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v130 = &v129 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v141 = &v129 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v136 = &v129 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v143 = &v129 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v140 = &v129 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v139 = &v129 - v24;
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v129 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1418, &unk_1D5667650);
  v28 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v129 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1420, &qword_1D56400B0);
  v32 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v34 = &v129 - v33;
  v35 = qword_1EDD5D728;
  LOBYTE(v154[0]) = 4;
  sub_1D560C8B8();
  v36 = v4 + v35;
  v37 = v12;
  (*(v32 + 32))(v36, v34, v31);
  v38 = qword_1EDD5D738;
  LOBYTE(v154[0]) = 0;
  sub_1D560C8B8();
  (*(v28 + 32))(v4 + v38, v30, v27);
  *(v4 + *(*v4 + 144)) = 0;
  *(v4 + *(*v4 + 152)) = 0;
  sub_1D51A1FBC(v151, v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1480, &qword_1D5640260);
  v39 = swift_dynamicCast();
  v40 = &qword_1EDD54000;
  v137 = v12;
  if (v39)
  {
    __swift_destroy_boxed_opaque_existential_1(v154);
    sub_1D51AE1F4(&qword_1EDD57488, type metadata accessor for UploadedVideo);
    v41 = v132;
    sub_1D560EC98();
    sub_1D560D588();
    (*(v133 + 8))(v41, v134);
    v42 = *(v147 + 104);
    v43 = v135;
    v42(v135, *MEMORY[0x1E6975040], v145);
    sub_1D51AE1F4(&qword_1EDD5D748, MEMORY[0x1E6975358]);
    v44 = sub_1D5614FC8();
    if (v44 == 2)
    {
      MEMORY[0x1EEE9AC00](v44);
      *(&v129 - 2) = v43;
      v45 = v43;
      sub_1D4F257A8();
      v47 = v46;
      v48 = v137;
    }

    else
    {
      v47 = v44;
      v48 = v37;
      v45 = v43;
    }

    v49 = *(v147 + 8);
    v50 = v145;
    v147 += 8;
    v49(v45, v145);
    v37 = v48;
    if (v47)
    {
      goto LABEL_9;
    }

    v51 = v131;
    v42(v131, *MEMORY[0x1E6975030], v50);
    v52 = sub_1D5614FC8();
    if (v52 == 2)
    {
      MEMORY[0x1EEE9AC00](v52);
      *(&v129 - 2) = v51;
      sub_1D4F257A8();
    }

    v53 = v52;
    v49(v51, v145);
    if (v53)
    {
LABEL_9:
      (*(v138 + 8))(v146, v144);
      v40 = &qword_1EDD54000;
    }

    else
    {
      v40 = &qword_1EDD54000;
      if (qword_1EDD544A0 != -1)
      {
        swift_once();
      }

      v54 = sub_1D560C758();
      __swift_project_value_buffer(v54, qword_1EDD76AD8);
      v55 = v130;
      sub_1D51A1FBC(v151, v130);
      v56 = sub_1D560C738();
      v57 = sub_1D56156C8();
      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        v154[0] = v59;
        *v58 = 136446210;
        sub_1D51A1FBC(v55, v143);
        v60 = sub_1D5614DB8();
        v62 = v61;
        sub_1D51A34D0(v55, type metadata accessor for UploadedVideo);
        v63 = sub_1D4E6835C(v60, v62, v154);

        *(v58 + 4) = v63;
        v40 = &qword_1EDD54000;
        _os_log_impl(&dword_1D4E3F000, v56, v57, "The correct playability status cannot be guaranteed as the input item %{public}s has not been mapped.", v58, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v59);
        v64 = v59;
        v37 = v137;
        MEMORY[0x1DA6ED200](v64, -1, -1);
        MEMORY[0x1DA6ED200](v58, -1, -1);
      }

      else
      {

        sub_1D51A34D0(v55, type metadata accessor for UploadedVideo);
      }

      (*(v138 + 8))(v146, v144);
    }
  }

  v154[3] = v37;
  v154[4] = sub_1D51AE1F4(&qword_1EC7EB6E8, type metadata accessor for UploadedVideo);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v154);
  v66 = v151;
  sub_1D51A1FBC(v151, boxed_opaque_existential_0);
  sub_1D51A1FBC(v66, v4 + *(*v4 + 120));
  sub_1D4EC76A8(v150, v4 + *(*v4 + 128));
  *(v4 + *(*v4 + 136)) = InternalMusicPlayer.queue(for:)(&unk_1F50A3B50);
  if (qword_1EDD55F58 != -1)
  {
    swift_once();
  }

  v67 = qword_1EDD55F60;
  swift_getKeyPath();
  swift_getKeyPath();
  v146 = v67;
  sub_1D560C8F8();

  v145 = LOBYTE(v153[0]);
  LODWORD(v138) = BYTE1(v153[0]);
  LODWORD(v144) = BYTE2(v153[0]);
  v68 = BYTE3(v153[0]);
  v69 = BYTE4(v153[0]);
  v147 = v153[1];
  if (v40[148] != -1)
  {
    swift_once();
  }

  v70 = sub_1D560C758();
  v71 = __swift_project_value_buffer(v70, qword_1EDD76AD8);
  v72 = v151;
  v73 = v139;
  sub_1D51A1FBC(v151, v139);
  v74 = v72;
  v75 = v140;
  sub_1D51A1FBC(v74, v140);
  sub_1D4E628D4(v154, v153);
  v76 = sub_1D560C738();
  v77 = sub_1D56156E8();
  if (os_log_type_enabled(v76, v77))
  {
    v78 = swift_slowAlloc();
    v134 = v68;
    v79 = v73;
    v80 = v78;
    v132 = swift_slowAlloc();
    v152 = v132;
    *v80 = 136446722;
    v81 = sub_1D5616458();
    v135 = v71;
    v83 = v82;
    v133 = v69;
    sub_1D51A34D0(v79, type metadata accessor for UploadedVideo);
    v84 = sub_1D4E6835C(v81, v83, &v152);

    *(v80 + 4) = v84;
    *(v80 + 12) = 2082;
    sub_1D51A1FBC(v75, v143);
    v85 = sub_1D5614DB8();
    v87 = v86;
    sub_1D51A34D0(v75, type metadata accessor for UploadedVideo);
    v88 = sub_1D4E6835C(v85, v87, &v152);

    *(v80 + 14) = v88;
    *(v80 + 22) = 2082;
    v68 = v134;
    __swift_project_boxed_opaque_existential_1(v153, v153[3]);
    v69 = v133;
    sub_1D51AD5D8();
    v90 = v89;
    v92 = v91;
    __swift_destroy_boxed_opaque_existential_1(v153);
    v93 = sub_1D4E6835C(v90, v92, &v152);

    *(v80 + 24) = v93;
    _os_log_impl(&dword_1D4E3F000, v76, v77, "Initial playability information for %{public}s with ID %{public}s: %{public}s", v80, 0x20u);
    v94 = v132;
    swift_arrayDestroy();
    MEMORY[0x1DA6ED200](v94, -1, -1);
    MEMORY[0x1DA6ED200](v80, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1(v153);
    sub_1D51A34D0(v75, type metadata accessor for UploadedVideo);
    sub_1D51A34D0(v73, type metadata accessor for UploadedVideo);
  }

  v95 = v141;
  v96 = 256;
  if (!v138)
  {
    v96 = 0;
  }

  v97 = v96 | v145;
  v98 = 0x10000;
  if (!v144)
  {
    v98 = 0;
  }

  v99 = v97 | v98 | (v68 << 24) | (v69 << 32);
  sub_1D51994A8();
  v100 = v153[0];
  if (LOBYTE(v153[0]) != 10)
  {
    v95 = v136;
    sub_1D51A1FBC(v151, v136);
    v101 = sub_1D560C738();
    v111 = sub_1D56156E8();
    if (os_log_type_enabled(v101, v111))
    {
      v112 = swift_slowAlloc();
      v145 = v99;
      v104 = v112;
      v105 = swift_slowAlloc();
      v153[0] = v105;
      *v104 = 136446466;
      sub_1D51A1FBC(v95, v143);
      v113 = sub_1D5614DB8();
      v114 = v100;
      v116 = v115;
      sub_1D51A34D0(v95, type metadata accessor for UploadedVideo);
      v117 = sub_1D4E6835C(v113, v116, v153);
      v100 = v114;

      *(v104 + 4) = v117;
      *(v104 + 12) = 2082;
      LOBYTE(v152) = v114;
      v118 = sub_1D5614DB8();
      v120 = sub_1D4E6835C(v118, v119, v153);

      *(v104 + 14) = v120;
      _os_log_impl(&dword_1D4E3F000, v101, v111, "Initial item state for item, %{public}s, returned unplayable with reason %{public}s", v104, 0x16u);
      swift_arrayDestroy();
      goto LABEL_32;
    }

LABEL_33:

    sub_1D51A34D0(v95, type metadata accessor for UploadedVideo);
    goto LABEL_34;
  }

  sub_1D51A1FBC(v151, v95);
  v101 = sub_1D560C738();
  v102 = sub_1D56156E8();
  if (!os_log_type_enabled(v101, v102))
  {
    goto LABEL_33;
  }

  v103 = swift_slowAlloc();
  v145 = v99;
  v104 = v103;
  v105 = swift_slowAlloc();
  v153[0] = v105;
  *v104 = 136446210;
  sub_1D51A1FBC(v95, v143);
  v106 = sub_1D5614DB8();
  v107 = v100;
  v109 = v108;
  sub_1D51A34D0(v95, type metadata accessor for UploadedVideo);
  v110 = sub_1D4E6835C(v106, v109, v153);
  v100 = v107;

  *(v104 + 4) = v110;
  _os_log_impl(&dword_1D4E3F000, v101, v102, "Initial item state for item, %{public}s, returned playable.", v104, 0xCu);
  __swift_destroy_boxed_opaque_existential_1(v105);
LABEL_32:
  MEMORY[0x1DA6ED200](v105, -1, -1);
  MEMORY[0x1DA6ED200](v104, -1, -1);

LABEL_34:
  swift_beginAccess();
  LOBYTE(v152) = v100;
  sub_1D560C8B8();
  swift_endAccess();
  v121 = v147;
  sub_1D51A4F48();
  sub_1D51A5414(v153[0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F2AD0, &unk_1D5640100);
  sub_1D51ADFE8(&qword_1EDD5D2E0, &unk_1EC7F2AD0, &unk_1D5640100);
  v153[0] = sub_1D560C938();
  swift_allocObject();
  swift_weakInit();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1290, &qword_1D563F8C0);
  sub_1D51ADFE8(&unk_1EDD5D890, &qword_1EC7F1290, &qword_1D563F8C0);
  v122 = sub_1D560C948();

  *(v4 + *(*v4 + 152)) = v122;

  type metadata accessor for UserStateViewModel(0);
  sub_1D51AE1F4(&qword_1EDD55F50, type metadata accessor for UserStateViewModel);
  v153[0] = sub_1D560C838();
  swift_allocObject();
  swift_weakInit();
  sub_1D560C898();
  v123 = sub_1D560C948();

  *(v4 + *(*v4 + 144)) = v123;

  v124 = sub_1D5615458();
  v125 = v142;
  __swift_storeEnumTagSinglePayload(v142, 1, 1, v124);
  v126 = swift_allocObject();
  swift_weakInit();

  v127 = swift_allocObject();
  v127[2] = 0;
  v127[3] = 0;
  v127[4] = v126;
  sub_1D51ECB60(0, 0, v125, &unk_1D56402A8, v127);

  sub_1D4E50004(v150, &qword_1EC7EEC40, &unk_1D561C070);
  sub_1D51A34D0(v151, type metadata accessor for UploadedVideo);
  __swift_destroy_boxed_opaque_existential_1(v154);
  return v4;
}

void *sub_1D519B478(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v149 = a3;
  v150 = a2;
  v151 = a1;
  v148 = *v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB710, &qword_1D561F440);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v142 = &v129 - v6;
  v145 = sub_1D560DB08();
  v147 = *(v145 - 8);
  v7 = MEMORY[0x1EEE9AC00](v145);
  v131 = &v129 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v135 = &v129 - v9;
  v134 = sub_1D560D838();
  v133 = *(v134 - 8);
  MEMORY[0x1EEE9AC00](v134);
  v132 = &v129 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = sub_1D560E728();
  v138 = *(v144 - 8);
  MEMORY[0x1EEE9AC00](v144);
  v146 = &v129 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for UploadedAudio(0);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v130 = &v129 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v141 = &v129 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v136 = &v129 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v143 = &v129 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v140 = &v129 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v139 = &v129 - v24;
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v129 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1418, &unk_1D5667650);
  v28 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v129 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1420, &qword_1D56400B0);
  v32 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v34 = &v129 - v33;
  v35 = qword_1EDD5D728;
  LOBYTE(v154[0]) = 4;
  sub_1D560C8B8();
  v36 = v4 + v35;
  v37 = v12;
  (*(v32 + 32))(v36, v34, v31);
  v38 = qword_1EDD5D738;
  LOBYTE(v154[0]) = 0;
  sub_1D560C8B8();
  (*(v28 + 32))(v4 + v38, v30, v27);
  *(v4 + *(*v4 + 144)) = 0;
  *(v4 + *(*v4 + 152)) = 0;
  sub_1D51A1FBC(v151, v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1480, &qword_1D5640260);
  v39 = swift_dynamicCast();
  v40 = &qword_1EDD54000;
  v137 = v12;
  if (v39)
  {
    __swift_destroy_boxed_opaque_existential_1(v154);
    sub_1D51AE1F4(&qword_1EDD57500, type metadata accessor for UploadedAudio);
    v41 = v132;
    sub_1D560EC98();
    sub_1D560D588();
    (*(v133 + 8))(v41, v134);
    v42 = *(v147 + 104);
    v43 = v135;
    v42(v135, *MEMORY[0x1E6975040], v145);
    sub_1D51AE1F4(&qword_1EDD5D748, MEMORY[0x1E6975358]);
    v44 = sub_1D5614FC8();
    if (v44 == 2)
    {
      MEMORY[0x1EEE9AC00](v44);
      *(&v129 - 2) = v43;
      v45 = v43;
      sub_1D4F257A8();
      v47 = v46;
      v48 = v137;
    }

    else
    {
      v47 = v44;
      v48 = v37;
      v45 = v43;
    }

    v49 = *(v147 + 8);
    v50 = v145;
    v147 += 8;
    v49(v45, v145);
    v37 = v48;
    if (v47)
    {
      goto LABEL_9;
    }

    v51 = v131;
    v42(v131, *MEMORY[0x1E6975030], v50);
    v52 = sub_1D5614FC8();
    if (v52 == 2)
    {
      MEMORY[0x1EEE9AC00](v52);
      *(&v129 - 2) = v51;
      sub_1D4F257A8();
    }

    v53 = v52;
    v49(v51, v145);
    if (v53)
    {
LABEL_9:
      (*(v138 + 8))(v146, v144);
      v40 = &qword_1EDD54000;
    }

    else
    {
      v40 = &qword_1EDD54000;
      if (qword_1EDD544A0 != -1)
      {
        swift_once();
      }

      v54 = sub_1D560C758();
      __swift_project_value_buffer(v54, qword_1EDD76AD8);
      v55 = v130;
      sub_1D51A1FBC(v151, v130);
      v56 = sub_1D560C738();
      v57 = sub_1D56156C8();
      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        v154[0] = v59;
        *v58 = 136446210;
        sub_1D51A1FBC(v55, v143);
        v60 = sub_1D5614DB8();
        v62 = v61;
        sub_1D51A34D0(v55, type metadata accessor for UploadedAudio);
        v63 = sub_1D4E6835C(v60, v62, v154);

        *(v58 + 4) = v63;
        v40 = &qword_1EDD54000;
        _os_log_impl(&dword_1D4E3F000, v56, v57, "The correct playability status cannot be guaranteed as the input item %{public}s has not been mapped.", v58, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v59);
        v64 = v59;
        v37 = v137;
        MEMORY[0x1DA6ED200](v64, -1, -1);
        MEMORY[0x1DA6ED200](v58, -1, -1);
      }

      else
      {

        sub_1D51A34D0(v55, type metadata accessor for UploadedAudio);
      }

      (*(v138 + 8))(v146, v144);
    }
  }

  v154[3] = v37;
  v154[4] = sub_1D51AE1F4(&qword_1EC7EB6F0, type metadata accessor for UploadedAudio);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v154);
  v66 = v151;
  sub_1D51A1FBC(v151, boxed_opaque_existential_0);
  sub_1D51A1FBC(v66, v4 + *(*v4 + 120));
  sub_1D4EC76A8(v150, v4 + *(*v4 + 128));
  *(v4 + *(*v4 + 136)) = InternalMusicPlayer.queue(for:)(&unk_1F50A3B28);
  if (qword_1EDD55F58 != -1)
  {
    swift_once();
  }

  v67 = qword_1EDD55F60;
  swift_getKeyPath();
  swift_getKeyPath();
  v146 = v67;
  sub_1D560C8F8();

  v145 = LOBYTE(v153[0]);
  LODWORD(v138) = BYTE1(v153[0]);
  LODWORD(v144) = BYTE2(v153[0]);
  v68 = BYTE3(v153[0]);
  v69 = BYTE4(v153[0]);
  v147 = v153[1];
  if (v40[148] != -1)
  {
    swift_once();
  }

  v70 = sub_1D560C758();
  v71 = __swift_project_value_buffer(v70, qword_1EDD76AD8);
  v72 = v151;
  v73 = v139;
  sub_1D51A1FBC(v151, v139);
  v74 = v72;
  v75 = v140;
  sub_1D51A1FBC(v74, v140);
  sub_1D4E628D4(v154, v153);
  v76 = sub_1D560C738();
  v77 = sub_1D56156E8();
  if (os_log_type_enabled(v76, v77))
  {
    v78 = swift_slowAlloc();
    v134 = v68;
    v79 = v73;
    v80 = v78;
    v132 = swift_slowAlloc();
    v152 = v132;
    *v80 = 136446722;
    v81 = sub_1D5616458();
    v135 = v71;
    v83 = v82;
    v133 = v69;
    sub_1D51A34D0(v79, type metadata accessor for UploadedAudio);
    v84 = sub_1D4E6835C(v81, v83, &v152);

    *(v80 + 4) = v84;
    *(v80 + 12) = 2082;
    sub_1D51A1FBC(v75, v143);
    v85 = sub_1D5614DB8();
    v87 = v86;
    sub_1D51A34D0(v75, type metadata accessor for UploadedAudio);
    v88 = sub_1D4E6835C(v85, v87, &v152);

    *(v80 + 14) = v88;
    *(v80 + 22) = 2082;
    v68 = v134;
    __swift_project_boxed_opaque_existential_1(v153, v153[3]);
    v69 = v133;
    sub_1D51AD5D8();
    v90 = v89;
    v92 = v91;
    __swift_destroy_boxed_opaque_existential_1(v153);
    v93 = sub_1D4E6835C(v90, v92, &v152);

    *(v80 + 24) = v93;
    _os_log_impl(&dword_1D4E3F000, v76, v77, "Initial playability information for %{public}s with ID %{public}s: %{public}s", v80, 0x20u);
    v94 = v132;
    swift_arrayDestroy();
    MEMORY[0x1DA6ED200](v94, -1, -1);
    MEMORY[0x1DA6ED200](v80, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1(v153);
    sub_1D51A34D0(v75, type metadata accessor for UploadedAudio);
    sub_1D51A34D0(v73, type metadata accessor for UploadedAudio);
  }

  v95 = v141;
  v96 = 256;
  if (!v138)
  {
    v96 = 0;
  }

  v97 = v96 | v145;
  v98 = 0x10000;
  if (!v144)
  {
    v98 = 0;
  }

  v99 = v97 | v98 | (v68 << 24) | (v69 << 32);
  sub_1D51994A8();
  v100 = v153[0];
  if (LOBYTE(v153[0]) != 10)
  {
    v95 = v136;
    sub_1D51A1FBC(v151, v136);
    v101 = sub_1D560C738();
    v111 = sub_1D56156E8();
    if (os_log_type_enabled(v101, v111))
    {
      v112 = swift_slowAlloc();
      v145 = v99;
      v104 = v112;
      v105 = swift_slowAlloc();
      v153[0] = v105;
      *v104 = 136446466;
      sub_1D51A1FBC(v95, v143);
      v113 = sub_1D5614DB8();
      v114 = v100;
      v116 = v115;
      sub_1D51A34D0(v95, type metadata accessor for UploadedAudio);
      v117 = sub_1D4E6835C(v113, v116, v153);
      v100 = v114;

      *(v104 + 4) = v117;
      *(v104 + 12) = 2082;
      LOBYTE(v152) = v114;
      v118 = sub_1D5614DB8();
      v120 = sub_1D4E6835C(v118, v119, v153);

      *(v104 + 14) = v120;
      _os_log_impl(&dword_1D4E3F000, v101, v111, "Initial item state for item, %{public}s, returned unplayable with reason %{public}s", v104, 0x16u);
      swift_arrayDestroy();
      goto LABEL_32;
    }

LABEL_33:

    sub_1D51A34D0(v95, type metadata accessor for UploadedAudio);
    goto LABEL_34;
  }

  sub_1D51A1FBC(v151, v95);
  v101 = sub_1D560C738();
  v102 = sub_1D56156E8();
  if (!os_log_type_enabled(v101, v102))
  {
    goto LABEL_33;
  }

  v103 = swift_slowAlloc();
  v145 = v99;
  v104 = v103;
  v105 = swift_slowAlloc();
  v153[0] = v105;
  *v104 = 136446210;
  sub_1D51A1FBC(v95, v143);
  v106 = sub_1D5614DB8();
  v107 = v100;
  v109 = v108;
  sub_1D51A34D0(v95, type metadata accessor for UploadedAudio);
  v110 = sub_1D4E6835C(v106, v109, v153);
  v100 = v107;

  *(v104 + 4) = v110;
  _os_log_impl(&dword_1D4E3F000, v101, v102, "Initial item state for item, %{public}s, returned playable.", v104, 0xCu);
  __swift_destroy_boxed_opaque_existential_1(v105);
LABEL_32:
  MEMORY[0x1DA6ED200](v105, -1, -1);
  MEMORY[0x1DA6ED200](v104, -1, -1);

LABEL_34:
  swift_beginAccess();
  LOBYTE(v152) = v100;
  sub_1D560C8B8();
  swift_endAccess();
  v121 = v147;
  sub_1D51A4F48();
  sub_1D51A54E4(v153[0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F2AD0, &unk_1D5640100);
  sub_1D51ADFE8(&qword_1EDD5D2E0, &unk_1EC7F2AD0, &unk_1D5640100);
  v153[0] = sub_1D560C938();
  swift_allocObject();
  swift_weakInit();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1290, &qword_1D563F8C0);
  sub_1D51ADFE8(&unk_1EDD5D890, &qword_1EC7F1290, &qword_1D563F8C0);
  v122 = sub_1D560C948();

  *(v4 + *(*v4 + 152)) = v122;

  type metadata accessor for UserStateViewModel(0);
  sub_1D51AE1F4(&qword_1EDD55F50, type metadata accessor for UserStateViewModel);
  v153[0] = sub_1D560C838();
  swift_allocObject();
  swift_weakInit();
  sub_1D560C898();
  v123 = sub_1D560C948();

  *(v4 + *(*v4 + 144)) = v123;

  v124 = sub_1D5615458();
  v125 = v142;
  __swift_storeEnumTagSinglePayload(v142, 1, 1, v124);
  v126 = swift_allocObject();
  swift_weakInit();

  v127 = swift_allocObject();
  v127[2] = 0;
  v127[3] = 0;
  v127[4] = v126;
  sub_1D51ECB60(0, 0, v125, &unk_1D5640270, v127);

  sub_1D4E50004(v150, &qword_1EC7EEC40, &unk_1D561C070);
  sub_1D51A34D0(v151, type metadata accessor for UploadedAudio);
  __swift_destroy_boxed_opaque_existential_1(v154);
  return v4;
}

void *sub_1D519C9C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v137 = a3;
  v138 = a2;
  v139 = a1;
  v133 = 0;
  v136 = *v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB710, &qword_1D561F440);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v130 = &v120 - v6;
  v140 = type metadata accessor for TVEpisode(0);
  v7 = MEMORY[0x1EEE9AC00](v140);
  v120 = &v120 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v129 = &v120 - v10;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v121 = &v120 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v132 = &v120 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v128 = &v120 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v127 = &v120 - v17;
  v134 = sub_1D560DB08();
  v125 = *(v134 - 8);
  v18 = MEMORY[0x1EEE9AC00](v134);
  v122 = &v120 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v124 = &v120 - v20;
  v135 = sub_1D560D838();
  v123 = *(v135 - 8);
  MEMORY[0x1EEE9AC00](v135);
  v22 = &v120 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1D560E728();
  v126 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v131 = &v120 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1418, &unk_1D5667650);
  v26 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v120 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1420, &qword_1D56400B0);
  v30 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v120 - v31;
  v33 = qword_1EDD5D728;
  LOBYTE(v143[0]) = 4;
  sub_1D560C8B8();
  v34 = v4 + v33;
  v35 = v134;
  (*(v30 + 32))(v34, v32, v29);
  v36 = qword_1EDD5D738;
  LOBYTE(v143[0]) = 0;
  sub_1D560C8B8();
  v37 = v4 + v36;
  v38 = v131;
  (*(v26 + 32))(v37, v28, v25);
  *(v4 + *(*v4 + 144)) = 0;
  *(v4 + *(*v4 + 152)) = 0;
  sub_1D51AE1F4(&qword_1EDD54508, type metadata accessor for TVEpisode);
  sub_1D560EC98();
  sub_1D560D588();
  v39 = v22;
  v40 = v124;
  (*(v123 + 8))(v39, v135);
  v41 = v125;
  v42 = *(v125 + 104);
  v42(v40, *MEMORY[0x1E6975040], v35);
  sub_1D51AE1F4(&qword_1EDD5D748, MEMORY[0x1E6975358]);
  v135 = v23;
  v43 = sub_1D5614FC8();
  if (v43 == 2)
  {
    MEMORY[0x1EEE9AC00](v43);
    *(&v120 - 2) = v40;
    v44 = v4;
    v45 = v38;
    v46 = v133;
    sub_1D4F257A8();
    v48 = v47;
    v133 = v46;
    v38 = v45;
    v4 = v44;
    v35 = v134;
  }

  else
  {
    v48 = v43;
  }

  v49 = *(v41 + 8);
  v49(v40, v35);
  v50 = v139;
  if ((v48 & 1) == 0)
  {
    v51 = v122;
    v42(v122, *MEMORY[0x1E6975030], v35);
    v52 = v51;
    v53 = sub_1D5614FC8();
    if (v53 == 2)
    {
      MEMORY[0x1EEE9AC00](v53);
      *(&v120 - 2) = v51;
      sub_1D4F257A8();
      v52 = v122;
    }

    v54 = v53;
    v49(v52, v35);
    if ((v54 & 1) == 0)
    {
      if (qword_1EDD544A0 != -1)
      {
        swift_once();
      }

      v55 = sub_1D560C758();
      __swift_project_value_buffer(v55, qword_1EDD76AD8);
      v56 = v120;
      sub_1D51A1FBC(v50, v120);
      v57 = sub_1D560C738();
      v58 = sub_1D56156C8();
      if (os_log_type_enabled(v57, v58))
      {
        v59 = swift_slowAlloc();
        v60 = swift_slowAlloc();
        v143[0] = v60;
        *v59 = 136446210;
        sub_1D51A1FBC(v56, v132);
        v61 = sub_1D5614DB8();
        v63 = v62;
        sub_1D51A34D0(v56, type metadata accessor for TVEpisode);
        v64 = sub_1D4E6835C(v61, v63, v143);

        *(v59 + 4) = v64;
        _os_log_impl(&dword_1D4E3F000, v57, v58, "The correct playability status cannot be guaranteed as the input item %{public}s has not been mapped.", v59, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v60);
        MEMORY[0x1DA6ED200](v60, -1, -1);
        MEMORY[0x1DA6ED200](v59, -1, -1);

        (*(v126 + 8))(v131, v135);
        goto LABEL_14;
      }

      sub_1D51A34D0(v56, type metadata accessor for TVEpisode);
    }
  }

  (*(v126 + 8))(v38, v135);
LABEL_14:
  v65 = v127;
  v143[3] = v140;
  v143[4] = sub_1D51AE1F4(&qword_1EC7EB6F8, type metadata accessor for TVEpisode);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v143);
  sub_1D51A1FBC(v50, boxed_opaque_existential_0);
  sub_1D51A1FBC(v50, v4 + *(*v4 + 120));
  sub_1D4EC76A8(v138, v4 + *(*v4 + 128));
  *(v4 + *(*v4 + 136)) = InternalMusicPlayer.queue(for:)(&unk_1F50A3B00);
  if (qword_1EDD55F58 != -1)
  {
    swift_once();
  }

  v67 = qword_1EDD55F60;
  swift_getKeyPath();
  swift_getKeyPath();
  v134 = v67;
  sub_1D560C8F8();

  v68 = LOBYTE(v142[0]);
  LODWORD(v131) = BYTE1(v142[0]);
  LODWORD(v133) = BYTE2(v142[0]);
  v135 = v142[1];
  if (qword_1EDD544A0 != -1)
  {
    swift_once();
  }

  v69 = sub_1D560C758();
  v70 = __swift_project_value_buffer(v69, qword_1EDD76AD8);
  sub_1D51A1FBC(v50, v65);
  v71 = v128;
  sub_1D51A1FBC(v50, v128);
  sub_1D4E628D4(v143, v142);
  v72 = sub_1D560C738();
  LODWORD(v127) = sub_1D56156E8();
  if (os_log_type_enabled(v72, v127))
  {
    v73 = swift_slowAlloc();
    v126 = v70;
    v74 = v73;
    v124 = swift_slowAlloc();
    v141 = v124;
    *v74 = 136446722;
    v125 = v68;
    v75 = sub_1D5616458();
    v76 = v65;
    v77 = v75;
    v79 = v78;
    sub_1D51A34D0(v76, type metadata accessor for TVEpisode);
    v80 = sub_1D4E6835C(v77, v79, &v141);

    *(v74 + 4) = v80;
    *(v74 + 12) = 2082;
    sub_1D51A1FBC(v71, v132);
    v81 = sub_1D5614DB8();
    v83 = v82;
    sub_1D51A34D0(v71, type metadata accessor for TVEpisode);
    v84 = sub_1D4E6835C(v81, v83, &v141);

    *(v74 + 14) = v84;
    *(v74 + 22) = 2082;
    __swift_project_boxed_opaque_existential_1(v142, v142[3]);
    sub_1D51AD5D8();
    v86 = v85;
    v88 = v87;
    __swift_destroy_boxed_opaque_existential_1(v142);
    v89 = sub_1D4E6835C(v86, v88, &v141);
    v50 = v139;

    *(v74 + 24) = v89;
    _os_log_impl(&dword_1D4E3F000, v72, v127, "Initial playability information for %{public}s with ID %{public}s: %{public}s", v74, 0x20u);
    v90 = v124;
    swift_arrayDestroy();
    MEMORY[0x1DA6ED200](v90, -1, -1);
    MEMORY[0x1DA6ED200](v74, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1(v142);
    sub_1D51A34D0(v71, type metadata accessor for TVEpisode);
    sub_1D51A34D0(v65, type metadata accessor for TVEpisode);
  }

  v91 = v129;
  sub_1D51994A8();
  v92 = v142[0];
  if (LOBYTE(v142[0]) != 10)
  {
    v91 = v121;
    sub_1D51A1FBC(v50, v121);
    v93 = sub_1D560C738();
    v103 = sub_1D56156E8();
    if (os_log_type_enabled(v93, v103))
    {
      v95 = swift_slowAlloc();
      v96 = swift_slowAlloc();
      v142[0] = v96;
      *v95 = 136446466;
      sub_1D51A1FBC(v91, v132);
      v104 = sub_1D5614DB8();
      v105 = v91;
      v107 = v106;
      sub_1D51A34D0(v105, type metadata accessor for TVEpisode);
      v108 = sub_1D4E6835C(v104, v107, v142);

      *(v95 + 4) = v108;
      *(v95 + 12) = 2082;
      LOBYTE(v141) = v92;
      v109 = sub_1D5614DB8();
      v111 = sub_1D4E6835C(v109, v110, v142);

      *(v95 + 14) = v111;
      v50 = v139;
      _os_log_impl(&dword_1D4E3F000, v93, v103, "Initial item state for item, %{public}s, returned unplayable with reason %{public}s", v95, 0x16u);
      swift_arrayDestroy();
      goto LABEL_26;
    }

LABEL_27:

    sub_1D51A34D0(v91, type metadata accessor for TVEpisode);
    goto LABEL_28;
  }

  sub_1D51A1FBC(v50, v91);
  v93 = sub_1D560C738();
  v94 = sub_1D56156E8();
  if (!os_log_type_enabled(v93, v94))
  {
    goto LABEL_27;
  }

  v95 = swift_slowAlloc();
  v96 = swift_slowAlloc();
  v142[0] = v96;
  *v95 = 136446210;
  sub_1D51A1FBC(v91, v132);
  v97 = sub_1D5614DB8();
  v98 = v91;
  v100 = v99;
  sub_1D51A34D0(v98, type metadata accessor for TVEpisode);
  v101 = v97;
  v50 = v139;
  v102 = sub_1D4E6835C(v101, v100, v142);

  *(v95 + 4) = v102;
  _os_log_impl(&dword_1D4E3F000, v93, v94, "Initial item state for item, %{public}s, returned playable.", v95, 0xCu);
  __swift_destroy_boxed_opaque_existential_1(v96);
LABEL_26:
  MEMORY[0x1DA6ED200](v96, -1, -1);
  MEMORY[0x1DA6ED200](v95, -1, -1);

LABEL_28:
  swift_beginAccess();
  LOBYTE(v141) = v92;
  sub_1D560C8B8();
  swift_endAccess();
  v112 = v135;
  sub_1D51A4F48();
  sub_1D51A55B4(v142[0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F2AD0, &unk_1D5640100);
  sub_1D51ADFE8(&qword_1EDD5D2E0, &unk_1EC7F2AD0, &unk_1D5640100);
  v142[0] = sub_1D560C938();
  swift_allocObject();
  swift_weakInit();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1290, &qword_1D563F8C0);
  sub_1D51ADFE8(&unk_1EDD5D890, &qword_1EC7F1290, &qword_1D563F8C0);
  v113 = sub_1D560C948();

  *(v4 + *(*v4 + 152)) = v113;

  type metadata accessor for UserStateViewModel(0);
  sub_1D51AE1F4(&qword_1EDD55F50, type metadata accessor for UserStateViewModel);
  v142[0] = sub_1D560C838();
  swift_allocObject();
  swift_weakInit();
  sub_1D560C898();
  v114 = sub_1D560C948();

  *(v4 + *(*v4 + 144)) = v114;

  v115 = sub_1D5615458();
  v116 = v130;
  __swift_storeEnumTagSinglePayload(v130, 1, 1, v115);
  v117 = swift_allocObject();
  swift_weakInit();

  v118 = swift_allocObject();
  v118[2] = 0;
  v118[3] = 0;
  v118[4] = v117;
  sub_1D51ECB60(0, 0, v116, &unk_1D5640230, v118);

  sub_1D4E50004(v138, &qword_1EC7EEC40, &unk_1D561C070);
  sub_1D51A34D0(v50, type metadata accessor for TVEpisode);
  __swift_destroy_boxed_opaque_existential_1(v143);
  return v4;
}

NSObject *sub_1D519DE80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v156 = a3;
  v157 = a2;
  v160 = a1;
  v147 = 0;
  isa = v3->isa;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB710, &qword_1D561F440);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v152 = &v139 - v5;
  v161 = sub_1D5613838();
  v159 = *(v161 - 8);
  v6 = MEMORY[0x1EEE9AC00](v161);
  v139 = &v139 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v151 = &v139 - v9;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v150 = &v139 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v153 = &v139 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v154 = &v139 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v148 = &v139 - v16;
  v144 = sub_1D560DB08();
  v145 = *(v144 - 8);
  v17 = MEMORY[0x1EEE9AC00](v144);
  v140 = &v139 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v141 = &v139 - v19;
  v143 = sub_1D560D838();
  v142 = *(v143 - 8);
  MEMORY[0x1EEE9AC00](v143);
  v21 = &v139 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v158 = sub_1D560E728();
  v149 = *(v158 - 8);
  MEMORY[0x1EEE9AC00](v158);
  v23 = &v139 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1418, &unk_1D5667650);
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v139 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1420, &qword_1D56400B0);
  v29 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v31 = &v139 - v30;
  v32 = qword_1EDD5D728;
  LOBYTE(v164[0]) = 4;
  sub_1D560C8B8();
  (*(v29 + 32))(v3 + v32, v31, v28);
  v33 = qword_1EDD5D738;
  LOBYTE(v164[0]) = 0;
  sub_1D560C8B8();
  v34 = v141;
  (*(v25 + 32))(v3 + v33, v27, v24);
  *(&v3->isa + *(v3->isa + 18)) = 0;
  v35 = *(v3->isa + 19);
  v146 = v3;
  *(&v3->isa + v35) = 0;
  sub_1D560EC98();
  sub_1D560D588();
  v36 = v21;
  v37 = v144;
  v38 = v23;
  (*(v142 + 8))(v36, v143);
  v39 = v145;
  v40 = *(v145 + 104);
  v40(v34, *MEMORY[0x1E6975040], v37);
  sub_1D51AE1F4(&qword_1EDD5D748, MEMORY[0x1E6975358]);
  v41 = sub_1D5614FC8();
  if (v41 == 2)
  {
    MEMORY[0x1EEE9AC00](v41);
    *(&v139 - 2) = v34;
    sub_1D4F257A8();
  }

  v42 = v41;
  v43 = *(v39 + 8);
  v43(v34, v37);
  if (v42)
  {
    goto LABEL_7;
  }

  v44 = v140;
  v40(v140, *MEMORY[0x1E6975030], v37);
  v45 = v44;
  v46 = sub_1D5614FC8();
  if (v46 == 2)
  {
    MEMORY[0x1EEE9AC00](v46);
    *(&v139 - 2) = v44;
    sub_1D4F257A8();
  }

  v47 = v46;
  v43(v45, v37);
  if (v47)
  {
LABEL_7:
    (*(v149 + 8))(v38, v158);
    v48 = v161;
    v49 = v159;
    v50 = v146;
  }

  else
  {
    v147 = v38;
    if (qword_1EDD544A0 != -1)
    {
      swift_once();
    }

    v51 = sub_1D560C758();
    __swift_project_value_buffer(v51, qword_1EDD76AD8);
    v52 = v159;
    v53 = *(v159 + 16);
    v54 = v139;
    v48 = v161;
    v53(v139, v160, v161);
    v55 = sub_1D560C738();
    v56 = sub_1D56156C8();
    v57 = os_log_type_enabled(v55, v56);
    v50 = v146;
    if (v57)
    {
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v164[0] = v59;
      *v58 = 136446210;
      v53(v153, v54, v161);
      v60 = sub_1D5614DB8();
      v62 = v61;
      (*(v52 + 8))(v54, v161);
      v63 = sub_1D4E6835C(v60, v62, v164);

      *(v58 + 4) = v63;
      _os_log_impl(&dword_1D4E3F000, v55, v56, "The correct playability status cannot be guaranteed as the input item %{public}s has not been mapped.", v58, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v59);
      MEMORY[0x1DA6ED200](v59, -1, -1);
      v64 = v58;
      v48 = v161;
      MEMORY[0x1DA6ED200](v64, -1, -1);
    }

    else
    {

      (*(v52 + 8))(v54, v48);
    }

    (*(v149 + 8))(v147, v158);
    v49 = v52;
  }

  v164[3] = v48;
  v164[4] = MEMORY[0x1E6976BD0];
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v164);
  v66 = *(v49 + 16);
  v67 = v160;
  (v66)(boxed_opaque_existential_0, v160, v48);
  (v66)(v50 + *(v50->isa + 15), v67, v48);
  sub_1D4EC76A8(v157, v50 + *(v50->isa + 16));
  *(&v50->isa + *(v50->isa + 17)) = InternalMusicPlayer.queue(for:)(&unk_1F50A3AD8);
  if (qword_1EDD55F58 != -1)
  {
    swift_once();
  }

  v68 = qword_1EDD55F60;
  swift_getKeyPath();
  swift_getKeyPath();
  v149 = v68;
  sub_1D560C8F8();

  v143 = LOBYTE(v163[0]);
  LODWORD(v141) = BYTE1(v163[0]);
  LODWORD(v142) = BYTE2(v163[0]);
  v145 = BYTE3(v163[0]);
  v144 = BYTE4(v163[0]);
  v158 = v163[1];
  if (qword_1EDD544A0 != -1)
  {
    swift_once();
  }

  v69 = sub_1D560C758();
  __swift_project_value_buffer(v69, qword_1EDD76AD8);
  v70 = v148;
  v71 = v160;
  (v66)(v148, v160, v48);
  v72 = v154;
  (v66)(v154, v71, v48);
  sub_1D4E628D4(v164, v163);
  v73 = sub_1D560C738();
  v74 = sub_1D56156E8();
  v146 = v73;
  v75 = os_log_type_enabled(v73, v74);
  v147 = v66;
  if (v75)
  {
    v76 = v70;
    v77 = v49;
    v78 = swift_slowAlloc();
    v140 = swift_slowAlloc();
    v162 = v140;
    *v78 = 136446722;
    v79 = sub_1D5616458();
    LODWORD(v139) = v74;
    v80 = v79;
    v81 = v66;
    v83 = v82;
    v84 = *(v77 + 8);
    v84(v76, v161);
    v85 = sub_1D4E6835C(v80, v83, &v162);

    *(v78 + 4) = v85;
    *(v78 + 12) = 2082;
    v86 = v154;
    (v81)(v153, v154, v161);
    v87 = sub_1D5614DB8();
    v89 = v88;
    v154 = v84;
    v84(v86, v161);
    v48 = v161;
    v90 = sub_1D4E6835C(v87, v89, &v162);

    *(v78 + 14) = v90;
    *(v78 + 22) = 2082;
    __swift_project_boxed_opaque_existential_1(v163, v163[3]);
    sub_1D51ACC3C();
    v92 = v91;
    v94 = v93;
    __swift_destroy_boxed_opaque_existential_1(v163);
    v95 = sub_1D4E6835C(v92, v94, &v162);

    *(v78 + 24) = v95;
    v96 = v146;
    _os_log_impl(&dword_1D4E3F000, v146, v139, "Initial playability information for %{public}s with ID %{public}s: %{public}s", v78, 0x20u);
    v97 = v140;
    swift_arrayDestroy();
    MEMORY[0x1DA6ED200](v97, -1, -1);
    MEMORY[0x1DA6ED200](v78, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1(v163);
    v98 = *(v49 + 8);
    v98(v72, v48);
    v154 = v98;
    v98(v70, v48);
  }

  v99 = v151;
  v100 = 256;
  if (!v141)
  {
    v100 = 0;
  }

  v101 = v100 | v143;
  v102 = 0x10000;
  if (!v142)
  {
    v102 = 0;
  }

  v103 = (v101 | v102 | (v145 << 24) | (v144 << 32));
  sub_1D51994A8();
  LODWORD(v104) = LOBYTE(v163[0]);
  v105 = v150;
  if (LOBYTE(v163[0]) == 10)
  {
    LODWORD(v151) = 10;
    v106 = v147;
    (v147)(v99, v160, v48);
    v107 = sub_1D560C738();
    v108 = sub_1D56156E8();
    if (os_log_type_enabled(v107, v108))
    {
      v109 = swift_slowAlloc();
      v148 = v103;
      v110 = v109;
      v111 = swift_slowAlloc();
      v163[0] = v111;
      *v110 = 136446210;
      (v106)(v153, v99, v48);
      v112 = sub_1D5614DB8();
      v114 = v113;
      (v154)(v99, v48);
      v115 = sub_1D4E6835C(v112, v114, v163);

      *(v110 + 4) = v115;
      _os_log_impl(&dword_1D4E3F000, v107, v108, "Initial item state for item, %{public}s, returned playable.", v110, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v111);
      MEMORY[0x1DA6ED200](v111, -1, -1);
      MEMORY[0x1DA6ED200](v110, -1, -1);
    }

    else
    {

      (v154)(v99, v48);
    }

    LOBYTE(v104) = v151;
  }

  else
  {
    v116 = v147;
    (v147)(v150, v160, v48);
    v117 = sub_1D560C738();
    v118 = sub_1D56156E8();
    if (os_log_type_enabled(v117, v118))
    {
      v119 = swift_slowAlloc();
      LODWORD(v151) = v104;
      v104 = v48;
      v120 = v119;
      v121 = swift_slowAlloc();
      v148 = v103;
      v122 = v121;
      v163[0] = v121;
      *v120 = 136446466;
      (v116)(v153, v105, v104);
      v123 = sub_1D5614DB8();
      v125 = v124;
      v126 = v104;
      LOBYTE(v104) = v151;
      (v154)(v105, v126);
      v127 = sub_1D4E6835C(v123, v125, v163);

      *(v120 + 4) = v127;
      *(v120 + 12) = 2082;
      LOBYTE(v162) = v104;
      v128 = sub_1D5614DB8();
      v130 = sub_1D4E6835C(v128, v129, v163);

      *(v120 + 14) = v130;
      _os_log_impl(&dword_1D4E3F000, v117, v118, "Initial item state for item, %{public}s, returned unplayable with reason %{public}s", v120, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1DA6ED200](v122, -1, -1);
      MEMORY[0x1DA6ED200](v120, -1, -1);
    }

    else
    {

      (v154)(v105, v48);
    }
  }

  swift_beginAccess();
  LOBYTE(v162) = v104;
  sub_1D560C8B8();
  swift_endAccess();
  v131 = v158;
  sub_1D51A4F48();
  sub_1D51A5824();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F2AD0, &unk_1D5640100);
  sub_1D51ADFE8(&qword_1EDD5D2E0, &unk_1EC7F2AD0, &unk_1D5640100);
  v163[0] = sub_1D560C938();
  swift_allocObject();
  swift_weakInit();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1290, &qword_1D563F8C0);
  sub_1D51ADFE8(&unk_1EDD5D890, &qword_1EC7F1290, &qword_1D563F8C0);
  v132 = sub_1D560C948();

  *(&v50->isa + *(v50->isa + 19)) = v132;

  type metadata accessor for UserStateViewModel(0);
  sub_1D51AE1F4(&qword_1EDD55F50, type metadata accessor for UserStateViewModel);
  v163[0] = sub_1D560C838();
  swift_allocObject();
  swift_weakInit();
  sub_1D560C898();
  v133 = sub_1D560C948();

  *(&v50->isa + *(v50->isa + 18)) = v133;

  v134 = sub_1D5615458();
  v135 = v152;
  __swift_storeEnumTagSinglePayload(v152, 1, 1, v134);
  v136 = swift_allocObject();
  swift_weakInit();

  v137 = swift_allocObject();
  v137[2] = 0;
  v137[3] = 0;
  v137[4] = v136;
  sub_1D51ECB60(0, 0, v135, &unk_1D56401F8, v137);

  sub_1D4E50004(v157, &qword_1EC7EEC40, &unk_1D561C070);
  (*(v159 + 8))(v160, v161);
  __swift_destroy_boxed_opaque_existential_1(v164);
  return v50;
}

NSObject *sub_1D519F420(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v156 = a3;
  v157 = a2;
  v160 = a1;
  v147 = 0;
  isa = v3->isa;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB710, &qword_1D561F440);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v152 = &v139 - v5;
  v161 = sub_1D5614898();
  v159 = *(v161 - 8);
  v6 = MEMORY[0x1EEE9AC00](v161);
  v139 = &v139 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v151 = &v139 - v9;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v150 = &v139 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v153 = &v139 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v154 = &v139 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v148 = &v139 - v16;
  v144 = sub_1D560DB08();
  v145 = *(v144 - 8);
  v17 = MEMORY[0x1EEE9AC00](v144);
  v140 = &v139 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v141 = &v139 - v19;
  v143 = sub_1D560D838();
  v142 = *(v143 - 8);
  MEMORY[0x1EEE9AC00](v143);
  v21 = &v139 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v158 = sub_1D560E728();
  v149 = *(v158 - 8);
  MEMORY[0x1EEE9AC00](v158);
  v23 = &v139 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1418, &unk_1D5667650);
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v139 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1420, &qword_1D56400B0);
  v29 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v31 = &v139 - v30;
  v32 = qword_1EDD5D728;
  LOBYTE(v164[0]) = 4;
  sub_1D560C8B8();
  (*(v29 + 32))(v3 + v32, v31, v28);
  v33 = qword_1EDD5D738;
  LOBYTE(v164[0]) = 0;
  sub_1D560C8B8();
  v34 = v141;
  (*(v25 + 32))(v3 + v33, v27, v24);
  *(&v3->isa + *(v3->isa + 18)) = 0;
  v35 = *(v3->isa + 19);
  v146 = v3;
  *(&v3->isa + v35) = 0;
  sub_1D560EC98();
  sub_1D560D588();
  v36 = v21;
  v37 = v144;
  v38 = v23;
  (*(v142 + 8))(v36, v143);
  v39 = v145;
  v40 = *(v145 + 104);
  v40(v34, *MEMORY[0x1E6975040], v37);
  sub_1D51AE1F4(&qword_1EDD5D748, MEMORY[0x1E6975358]);
  v41 = sub_1D5614FC8();
  if (v41 == 2)
  {
    MEMORY[0x1EEE9AC00](v41);
    *(&v139 - 2) = v34;
    sub_1D4F257A8();
  }

  v42 = v41;
  v43 = *(v39 + 8);
  v43(v34, v37);
  if (v42)
  {
    goto LABEL_7;
  }

  v44 = v140;
  v40(v140, *MEMORY[0x1E6975030], v37);
  v45 = v44;
  v46 = sub_1D5614FC8();
  if (v46 == 2)
  {
    MEMORY[0x1EEE9AC00](v46);
    *(&v139 - 2) = v44;
    sub_1D4F257A8();
  }

  v47 = v46;
  v43(v45, v37);
  if (v47)
  {
LABEL_7:
    (*(v149 + 8))(v38, v158);
    v48 = v161;
    v49 = v159;
    v50 = v146;
  }

  else
  {
    v147 = v38;
    if (qword_1EDD544A0 != -1)
    {
      swift_once();
    }

    v51 = sub_1D560C758();
    __swift_project_value_buffer(v51, qword_1EDD76AD8);
    v52 = v159;
    v53 = *(v159 + 16);
    v54 = v139;
    v48 = v161;
    v53(v139, v160, v161);
    v55 = sub_1D560C738();
    v56 = sub_1D56156C8();
    v57 = os_log_type_enabled(v55, v56);
    v50 = v146;
    if (v57)
    {
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v164[0] = v59;
      *v58 = 136446210;
      v53(v153, v54, v161);
      v60 = sub_1D5614DB8();
      v62 = v61;
      (*(v52 + 8))(v54, v161);
      v63 = sub_1D4E6835C(v60, v62, v164);

      *(v58 + 4) = v63;
      _os_log_impl(&dword_1D4E3F000, v55, v56, "The correct playability status cannot be guaranteed as the input item %{public}s has not been mapped.", v58, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v59);
      MEMORY[0x1DA6ED200](v59, -1, -1);
      v64 = v58;
      v48 = v161;
      MEMORY[0x1DA6ED200](v64, -1, -1);
    }

    else
    {

      (*(v52 + 8))(v54, v48);
    }

    (*(v149 + 8))(v147, v158);
    v49 = v52;
  }

  v164[3] = v48;
  v164[4] = MEMORY[0x1E69773C8];
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v164);
  v66 = *(v49 + 16);
  v67 = v160;
  (v66)(boxed_opaque_existential_0, v160, v48);
  (v66)(v50 + *(v50->isa + 15), v67, v48);
  sub_1D4EC76A8(v157, v50 + *(v50->isa + 16));
  *(&v50->isa + *(v50->isa + 17)) = InternalMusicPlayer.queue(for:)(&unk_1F50A3AB0);
  if (qword_1EDD55F58 != -1)
  {
    swift_once();
  }

  v68 = qword_1EDD55F60;
  swift_getKeyPath();
  swift_getKeyPath();
  v149 = v68;
  sub_1D560C8F8();

  v143 = LOBYTE(v163[0]);
  LODWORD(v141) = BYTE1(v163[0]);
  LODWORD(v142) = BYTE2(v163[0]);
  v145 = BYTE3(v163[0]);
  v144 = BYTE4(v163[0]);
  v158 = v163[1];
  if (qword_1EDD544A0 != -1)
  {
    swift_once();
  }

  v69 = sub_1D560C758();
  __swift_project_value_buffer(v69, qword_1EDD76AD8);
  v70 = v148;
  v71 = v160;
  (v66)(v148, v160, v48);
  v72 = v154;
  (v66)(v154, v71, v48);
  sub_1D4E628D4(v164, v163);
  v73 = sub_1D560C738();
  v74 = sub_1D56156E8();
  v146 = v73;
  v75 = os_log_type_enabled(v73, v74);
  v147 = v66;
  if (v75)
  {
    v76 = v70;
    v77 = v49;
    v78 = swift_slowAlloc();
    v140 = swift_slowAlloc();
    v162 = v140;
    *v78 = 136446722;
    v79 = sub_1D5616458();
    LODWORD(v139) = v74;
    v80 = v79;
    v81 = v66;
    v83 = v82;
    v84 = *(v77 + 8);
    v84(v76, v161);
    v85 = sub_1D4E6835C(v80, v83, &v162);

    *(v78 + 4) = v85;
    *(v78 + 12) = 2082;
    v86 = v154;
    (v81)(v153, v154, v161);
    v87 = sub_1D5614DB8();
    v89 = v88;
    v154 = v84;
    v84(v86, v161);
    v48 = v161;
    v90 = sub_1D4E6835C(v87, v89, &v162);

    *(v78 + 14) = v90;
    *(v78 + 22) = 2082;
    __swift_project_boxed_opaque_existential_1(v163, v163[3]);
    sub_1D51ACC3C();
    v92 = v91;
    v94 = v93;
    __swift_destroy_boxed_opaque_existential_1(v163);
    v95 = sub_1D4E6835C(v92, v94, &v162);

    *(v78 + 24) = v95;
    v96 = v146;
    _os_log_impl(&dword_1D4E3F000, v146, v139, "Initial playability information for %{public}s with ID %{public}s: %{public}s", v78, 0x20u);
    v97 = v140;
    swift_arrayDestroy();
    MEMORY[0x1DA6ED200](v97, -1, -1);
    MEMORY[0x1DA6ED200](v78, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1(v163);
    v98 = *(v49 + 8);
    v98(v72, v48);
    v154 = v98;
    v98(v70, v48);
  }

  v99 = v151;
  v100 = 256;
  if (!v141)
  {
    v100 = 0;
  }

  v101 = v100 | v143;
  v102 = 0x10000;
  if (!v142)
  {
    v102 = 0;
  }

  v103 = (v101 | v102 | (v145 << 24) | (v144 << 32));
  sub_1D51994A8();
  LODWORD(v104) = LOBYTE(v163[0]);
  v105 = v150;
  if (LOBYTE(v163[0]) == 10)
  {
    LODWORD(v151) = 10;
    v106 = v147;
    (v147)(v99, v160, v48);
    v107 = sub_1D560C738();
    v108 = sub_1D56156E8();
    if (os_log_type_enabled(v107, v108))
    {
      v109 = swift_slowAlloc();
      v148 = v103;
      v110 = v109;
      v111 = swift_slowAlloc();
      v163[0] = v111;
      *v110 = 136446210;
      (v106)(v153, v99, v48);
      v112 = sub_1D5614DB8();
      v114 = v113;
      (v154)(v99, v48);
      v115 = sub_1D4E6835C(v112, v114, v163);

      *(v110 + 4) = v115;
      _os_log_impl(&dword_1D4E3F000, v107, v108, "Initial item state for item, %{public}s, returned playable.", v110, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v111);
      MEMORY[0x1DA6ED200](v111, -1, -1);
      MEMORY[0x1DA6ED200](v110, -1, -1);
    }

    else
    {

      (v154)(v99, v48);
    }

    LOBYTE(v104) = v151;
  }

  else
  {
    v116 = v147;
    (v147)(v150, v160, v48);
    v117 = sub_1D560C738();
    v118 = sub_1D56156E8();
    if (os_log_type_enabled(v117, v118))
    {
      v119 = swift_slowAlloc();
      LODWORD(v151) = v104;
      v104 = v48;
      v120 = v119;
      v121 = swift_slowAlloc();
      v148 = v103;
      v122 = v121;
      v163[0] = v121;
      *v120 = 136446466;
      (v116)(v153, v105, v104);
      v123 = sub_1D5614DB8();
      v125 = v124;
      v126 = v104;
      LOBYTE(v104) = v151;
      (v154)(v105, v126);
      v127 = sub_1D4E6835C(v123, v125, v163);

      *(v120 + 4) = v127;
      *(v120 + 12) = 2082;
      LOBYTE(v162) = v104;
      v128 = sub_1D5614DB8();
      v130 = sub_1D4E6835C(v128, v129, v163);

      *(v120 + 14) = v130;
      _os_log_impl(&dword_1D4E3F000, v117, v118, "Initial item state for item, %{public}s, returned unplayable with reason %{public}s", v120, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1DA6ED200](v122, -1, -1);
      MEMORY[0x1DA6ED200](v120, -1, -1);
    }

    else
    {

      (v154)(v105, v48);
    }
  }

  swift_beginAccess();
  LOBYTE(v162) = v104;
  sub_1D560C8B8();
  swift_endAccess();
  v131 = v158;
  sub_1D51A4F48();
  sub_1D51A5824();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F2AD0, &unk_1D5640100);
  sub_1D51ADFE8(&qword_1EDD5D2E0, &unk_1EC7F2AD0, &unk_1D5640100);
  v163[0] = sub_1D560C938();
  swift_allocObject();
  swift_weakInit();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1290, &qword_1D563F8C0);
  sub_1D51ADFE8(&unk_1EDD5D890, &qword_1EC7F1290, &qword_1D563F8C0);
  v132 = sub_1D560C948();

  *(&v50->isa + *(v50->isa + 19)) = v132;

  type metadata accessor for UserStateViewModel(0);
  sub_1D51AE1F4(&qword_1EDD55F50, type metadata accessor for UserStateViewModel);
  v163[0] = sub_1D560C838();
  swift_allocObject();
  swift_weakInit();
  sub_1D560C898();
  v133 = sub_1D560C948();

  *(&v50->isa + *(v50->isa + 18)) = v133;

  v134 = sub_1D5615458();
  v135 = v152;
  __swift_storeEnumTagSinglePayload(v152, 1, 1, v134);
  v136 = swift_allocObject();
  swift_weakInit();

  v137 = swift_allocObject();
  v137[2] = 0;
  v137[3] = 0;
  v137[4] = v136;
  sub_1D51ECB60(0, 0, v135, &unk_1D56401C0, v137);

  sub_1D4E50004(v157, &qword_1EC7EEC40, &unk_1D561C070);
  (*(v159 + 8))(v160, v161);
  __swift_destroy_boxed_opaque_existential_1(v164);
  return v50;
}

uint64_t sub_1D51A09C0(char *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v155 = a3;
  v156 = a2;
  v162 = a1;
  v147 = 0;
  v154 = *v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB710, &qword_1D561F440);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v152 = &v139 - v6;
  v163 = sub_1D560EEA8();
  v161 = *(v163 - 8);
  v7 = MEMORY[0x1EEE9AC00](v163);
  v141 = &v139 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v151 = (&v139 - v10);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v142 = &v139 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v153 = &v139 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v150 = &v139 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v149 = &v139 - v17;
  v18 = sub_1D560DB08();
  v158 = *(v18 - 8);
  v159 = v18;
  v19 = MEMORY[0x1EEE9AC00](v18);
  v143 = &v139 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v145 = &v139 - v21;
  v157 = sub_1D560D838();
  isa = v157[-1].isa;
  MEMORY[0x1EEE9AC00](v157);
  v23 = &v139 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v160 = sub_1D560E728();
  v148 = *(v160 - 8);
  MEMORY[0x1EEE9AC00](v160);
  v25 = (&v139 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1418, &unk_1D5667650);
  v26 = *(v146 - 8);
  MEMORY[0x1EEE9AC00](v146);
  v28 = &v139 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1420, &qword_1D56400B0);
  v30 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v139 - v31;
  v33 = qword_1EDD5D728;
  LOBYTE(v166[0]) = 4;
  sub_1D560C8B8();
  (*(v30 + 32))(v3 + v33, v32, v29);
  v34 = qword_1EDD5D738;
  LOBYTE(v166[0]) = 0;
  sub_1D560C8B8();
  v35 = v3 + v34;
  v36 = v162;
  (*(v26 + 32))(v35, v28, v146);
  *(v4 + *(*v4 + 144)) = 0;
  v37 = *(*v4 + 152);
  v146 = v4;
  *(v4 + v37) = 0;
  v38 = v36;
  sub_1D560EC98();
  sub_1D560D588();
  (*(isa + 1))(v23, v157);
  v39 = v158;
  v40 = *(v158 + 104);
  v41 = v145;
  v40(v145, *MEMORY[0x1E6975040], v159);
  sub_1D51AE1F4(&qword_1EDD5D748, MEMORY[0x1E6975358]);
  v42 = v41;
  v157 = v25;
  v43 = sub_1D5614FC8();
  if (v43 == 2)
  {
    MEMORY[0x1EEE9AC00](v43);
    *(&v139 - 2) = v41;
    sub_1D4F257A8();
  }

  v44 = v43;
  v45 = v39 + 8;
  v46 = *(v39 + 8);
  v47 = v159;
  v158 = v45;
  v46(v42, v159);
  if (v44)
  {
    goto LABEL_7;
  }

  v48 = v143;
  v40(v143, *MEMORY[0x1E6975030], v47);
  v49 = v48;
  v50 = sub_1D5614FC8();
  if (v50 == 2)
  {
    MEMORY[0x1EEE9AC00](v50);
    *(&v139 - 2) = v48;
    sub_1D4F257A8();
  }

  v51 = v50;
  v46(v49, v159);
  if (v51)
  {
LABEL_7:
    (*(v148 + 8))(v157, v160);
    v52 = v163;
    v53 = v161;
    v54 = v38;
    v55 = v146;
  }

  else
  {
    if (qword_1EDD544A0 != -1)
    {
      swift_once();
    }

    v56 = sub_1D560C758();
    __swift_project_value_buffer(v56, qword_1EDD76AD8);
    v57 = v161;
    v58 = *(v161 + 16);
    v59 = v141;
    v52 = v163;
    v58(v141, v162, v163);
    v60 = sub_1D560C738();
    v61 = sub_1D56156C8();
    v62 = os_log_type_enabled(v60, v61);
    v55 = v146;
    if (v62)
    {
      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v166[0] = v64;
      *v63 = 136446210;
      v58(v153, v59, v163);
      v65 = sub_1D5614DB8();
      v67 = v66;
      (*(v57 + 8))(v59, v163);
      v68 = sub_1D4E6835C(v65, v67, v166);

      *(v63 + 4) = v68;
      _os_log_impl(&dword_1D4E3F000, v60, v61, "The correct playability status cannot be guaranteed as the input item %{public}s has not been mapped.", v63, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v64);
      MEMORY[0x1DA6ED200](v64, -1, -1);
      v69 = v63;
      v52 = v163;
      MEMORY[0x1DA6ED200](v69, -1, -1);
    }

    else
    {

      (*(v57 + 8))(v59, v52);
    }

    (*(v148 + 8))(v157, v160);
    v54 = v162;
    v53 = v57;
  }

  v166[3] = v52;
  v166[4] = MEMORY[0x1E69754D0];
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v166);
  v71 = *(v53 + 16);
  v71(boxed_opaque_existential_0, v54, v52);
  v71((v55 + *(*v55 + 120)), v54, v52);
  sub_1D4EC76A8(v156, v55 + *(*v55 + 128));
  *(v55 + *(*v55 + 136)) = InternalMusicPlayer.queue(for:)(&unk_1F50A3A88);
  if (qword_1EDD55F58 != -1)
  {
    swift_once();
  }

  v72 = qword_1EDD55F60;
  swift_getKeyPath();
  swift_getKeyPath();
  v159 = v72;
  sub_1D560C8F8();

  v145 = LOBYTE(v165[0]);
  LODWORD(v143) = BYTE1(v165[0]);
  LODWORD(isa) = BYTE2(v165[0]);
  v147 = BYTE3(v165[0]);
  v146 = BYTE4(v165[0]);
  v160 = v165[1];
  if (qword_1EDD544A0 != -1)
  {
    swift_once();
  }

  v73 = sub_1D560C758();
  v74 = __swift_project_value_buffer(v73, qword_1EDD76AD8);
  v75 = v149;
  v71(v149, v54, v52);
  v76 = v150;
  v71(v150, v54, v52);
  sub_1D4E628D4(v166, v165);
  v148 = v74;
  v77 = sub_1D560C738();
  LODWORD(v141) = sub_1D56156E8();
  v157 = v77;
  v78 = os_log_type_enabled(v77, v141);
  v158 = v71;
  if (v78)
  {
    v79 = v71;
    v80 = v75;
    v81 = v53;
    v82 = swift_slowAlloc();
    v140 = swift_slowAlloc();
    v164 = v140;
    *v82 = 136446722;
    v83 = sub_1D5616458();
    v85 = v84;
    v86 = *(v81 + 8);
    v86(v80, v163);
    v87 = sub_1D4E6835C(v83, v85, &v164);

    *(v82 + 4) = v87;
    *(v82 + 12) = 2082;
    v79(v153, v76, v163);
    v88 = sub_1D5614DB8();
    v90 = v89;
    v150 = v86;
    v86(v76, v163);
    v52 = v163;
    v91 = sub_1D4E6835C(v88, v90, &v164);

    *(v82 + 14) = v91;
    *(v82 + 22) = 2082;
    __swift_project_boxed_opaque_existential_1(v165, v165[3]);
    sub_1D51ACC3C();
    v93 = v92;
    v95 = v94;
    __swift_destroy_boxed_opaque_existential_1(v165);
    v96 = sub_1D4E6835C(v93, v95, &v164);

    *(v82 + 24) = v96;
    v54 = v162;
    v97 = v157;
    _os_log_impl(&dword_1D4E3F000, v157, v141, "Initial playability information for %{public}s with ID %{public}s: %{public}s", v82, 0x20u);
    v98 = v140;
    swift_arrayDestroy();
    MEMORY[0x1DA6ED200](v98, -1, -1);
    MEMORY[0x1DA6ED200](v82, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1(v165);
    v99 = *(v53 + 8);
    v99(v76, v52);
    v150 = v99;
    v99(v75, v52);
  }

  v100 = v151;
  v101 = 256;
  if (!v143)
  {
    v101 = 0;
  }

  v102 = v101 | v145;
  v103 = 0x10000;
  if (!isa)
  {
    v103 = 0;
  }

  v104 = (v102 | v103 | (v147 << 24) | (v146 << 32));
  sub_1D51994A8();
  LODWORD(v105) = LOBYTE(v165[0]);
  if (LOBYTE(v165[0]) == 10)
  {
    LODWORD(v157) = 10;
    v106 = v158;
    (v158)(v100, v54, v52);
    v107 = sub_1D560C738();
    v108 = sub_1D56156E8();
    if (os_log_type_enabled(v107, v108))
    {
      v109 = swift_slowAlloc();
      v151 = swift_slowAlloc();
      v165[0] = v151;
      *v109 = 136446210;
      v110 = v100;
      v106(v153, v100, v52);
      v111 = sub_1D5614DB8();
      v113 = v112;
      v158 = (v161 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      (v150)(v110, v52);
      v114 = sub_1D4E6835C(v111, v113, v165);

      *(v109 + 4) = v114;
      _os_log_impl(&dword_1D4E3F000, v107, v108, "Initial item state for item, %{public}s, returned playable.", v109, 0xCu);
      v115 = v151;
      __swift_destroy_boxed_opaque_existential_1(v151);
      MEMORY[0x1DA6ED200](v115, -1, -1);
      MEMORY[0x1DA6ED200](v109, -1, -1);
    }

    else
    {

      v158 = (v161 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      (v150)(v100, v52);
    }

    LOBYTE(v105) = v157;
  }

  else
  {
    v151 = v104;
    v116 = v142;
    v117 = v158;
    (v158)(v142, v54, v52);
    v118 = sub_1D560C738();
    v119 = sub_1D56156E8();
    if (os_log_type_enabled(v118, v119))
    {
      v120 = swift_slowAlloc();
      LODWORD(v157) = v105;
      v105 = v52;
      v121 = v120;
      v122 = swift_slowAlloc();
      v165[0] = v122;
      *v121 = 136446466;
      v117(v153, v116, v105);
      v123 = sub_1D5614DB8();
      v125 = v124;
      v158 = (v161 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v126 = v105;
      LOBYTE(v105) = v157;
      (v150)(v116, v126);
      v127 = sub_1D4E6835C(v123, v125, v165);

      *(v121 + 4) = v127;
      *(v121 + 12) = 2082;
      LOBYTE(v164) = v105;
      v128 = sub_1D5614DB8();
      v130 = sub_1D4E6835C(v128, v129, v165);

      *(v121 + 14) = v130;
      _os_log_impl(&dword_1D4E3F000, v118, v119, "Initial item state for item, %{public}s, returned unplayable with reason %{public}s", v121, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1DA6ED200](v122, -1, -1);
      MEMORY[0x1DA6ED200](v121, -1, -1);
    }

    else
    {

      v158 = (v161 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      (v150)(v116, v52);
    }
  }

  swift_beginAccess();
  LOBYTE(v164) = v105;
  sub_1D560C8B8();
  swift_endAccess();
  v131 = v160;
  sub_1D51A4F48();
  sub_1D51A5684(v165[0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F2AD0, &unk_1D5640100);
  sub_1D51ADFE8(&qword_1EDD5D2E0, &unk_1EC7F2AD0, &unk_1D5640100);
  v165[0] = sub_1D560C938();
  swift_allocObject();
  swift_weakInit();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1290, &qword_1D563F8C0);
  sub_1D51ADFE8(&unk_1EDD5D890, &qword_1EC7F1290, &qword_1D563F8C0);
  v132 = sub_1D560C948();

  *(v55 + *(*v55 + 152)) = v132;

  type metadata accessor for UserStateViewModel(0);
  sub_1D51AE1F4(&qword_1EDD55F50, type metadata accessor for UserStateViewModel);
  v165[0] = sub_1D560C838();
  swift_allocObject();
  swift_weakInit();
  sub_1D560C898();
  v133 = sub_1D560C948();

  *(v55 + *(*v55 + 144)) = v133;

  v134 = sub_1D5615458();
  v135 = v152;
  __swift_storeEnumTagSinglePayload(v152, 1, 1, v134);
  v136 = swift_allocObject();
  swift_weakInit();

  v137 = swift_allocObject();
  v137[2] = 0;
  v137[3] = 0;
  v137[4] = v136;
  sub_1D51ECB60(0, 0, v135, &unk_1D5640188, v137);

  sub_1D4E50004(v156, &qword_1EC7EEC40, &unk_1D561C070);
  (*(v161 + 8))(v162, v163);
  __swift_destroy_boxed_opaque_existential_1(v166);
  return v55;
}

uint64_t sub_1D51A1F64(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_147();
  v4(v3);
  OUTLINED_FUNCTION_14();
  v5 = OUTLINED_FUNCTION_71();
  v6(v5);
  return a2;
}

uint64_t sub_1D51A1FBC(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_147();
  v4(v3);
  OUTLINED_FUNCTION_14();
  v5 = OUTLINED_FUNCTION_71();
  v6(v5);
  return a2;
}

void *sub_1D51A2014(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v137 = a3;
  v138 = a2;
  v139 = a1;
  v133 = 0;
  v136 = *v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB710, &qword_1D561F440);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v130 = &v120 - v6;
  v140 = type metadata accessor for MusicMovie(0);
  v7 = MEMORY[0x1EEE9AC00](v140);
  v120 = &v120 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v129 = &v120 - v10;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v121 = &v120 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v132 = &v120 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v128 = &v120 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v127 = &v120 - v17;
  v134 = sub_1D560DB08();
  v125 = *(v134 - 8);
  v18 = MEMORY[0x1EEE9AC00](v134);
  v122 = &v120 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v124 = &v120 - v20;
  v135 = sub_1D560D838();
  v123 = *(v135 - 8);
  MEMORY[0x1EEE9AC00](v135);
  v22 = &v120 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1D560E728();
  v126 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v131 = &v120 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1418, &unk_1D5667650);
  v26 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v120 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1420, &qword_1D56400B0);
  v30 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v120 - v31;
  v33 = qword_1EDD5D728;
  LOBYTE(v143[0]) = 4;
  sub_1D560C8B8();
  v34 = v4 + v33;
  v35 = v134;
  (*(v30 + 32))(v34, v32, v29);
  v36 = qword_1EDD5D738;
  LOBYTE(v143[0]) = 0;
  sub_1D560C8B8();
  v37 = v4 + v36;
  v38 = v131;
  (*(v26 + 32))(v37, v28, v25);
  *(v4 + *(*v4 + 144)) = 0;
  *(v4 + *(*v4 + 152)) = 0;
  sub_1D51AE1F4(&qword_1EDD59308, type metadata accessor for MusicMovie);
  sub_1D560EC98();
  sub_1D560D588();
  v39 = v22;
  v40 = v124;
  (*(v123 + 8))(v39, v135);
  v41 = v125;
  v42 = *(v125 + 104);
  v42(v40, *MEMORY[0x1E6975040], v35);
  sub_1D51AE1F4(&qword_1EDD5D748, MEMORY[0x1E6975358]);
  v135 = v23;
  v43 = sub_1D5614FC8();
  if (v43 == 2)
  {
    MEMORY[0x1EEE9AC00](v43);
    *(&v120 - 2) = v40;
    v44 = v4;
    v45 = v38;
    v46 = v133;
    sub_1D4F257A8();
    v48 = v47;
    v133 = v46;
    v38 = v45;
    v4 = v44;
    v35 = v134;
  }

  else
  {
    v48 = v43;
  }

  v49 = *(v41 + 8);
  v49(v40, v35);
  v50 = v139;
  if ((v48 & 1) == 0)
  {
    v51 = v122;
    v42(v122, *MEMORY[0x1E6975030], v35);
    v52 = v51;
    v53 = sub_1D5614FC8();
    if (v53 == 2)
    {
      MEMORY[0x1EEE9AC00](v53);
      *(&v120 - 2) = v51;
      sub_1D4F257A8();
      v52 = v122;
    }

    v54 = v53;
    v49(v52, v35);
    if ((v54 & 1) == 0)
    {
      if (qword_1EDD544A0 != -1)
      {
        swift_once();
      }

      v55 = sub_1D560C758();
      __swift_project_value_buffer(v55, qword_1EDD76AD8);
      v56 = v120;
      sub_1D51A1FBC(v50, v120);
      v57 = sub_1D560C738();
      v58 = sub_1D56156C8();
      if (os_log_type_enabled(v57, v58))
      {
        v59 = swift_slowAlloc();
        v60 = swift_slowAlloc();
        v143[0] = v60;
        *v59 = 136446210;
        sub_1D51A1FBC(v56, v132);
        v61 = sub_1D5614DB8();
        v63 = v62;
        sub_1D51A34D0(v56, type metadata accessor for MusicMovie);
        v64 = sub_1D4E6835C(v61, v63, v143);

        *(v59 + 4) = v64;
        _os_log_impl(&dword_1D4E3F000, v57, v58, "The correct playability status cannot be guaranteed as the input item %{public}s has not been mapped.", v59, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v60);
        MEMORY[0x1DA6ED200](v60, -1, -1);
        MEMORY[0x1DA6ED200](v59, -1, -1);

        (*(v126 + 8))(v131, v135);
        goto LABEL_14;
      }

      sub_1D51A34D0(v56, type metadata accessor for MusicMovie);
    }
  }

  (*(v126 + 8))(v38, v135);
LABEL_14:
  v65 = v127;
  v143[3] = v140;
  v143[4] = sub_1D51AE1F4(&unk_1EC7EB700, type metadata accessor for MusicMovie);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v143);
  sub_1D51A1FBC(v50, boxed_opaque_existential_0);
  sub_1D51A1FBC(v50, v4 + *(*v4 + 120));
  sub_1D4EC76A8(v138, v4 + *(*v4 + 128));
  *(v4 + *(*v4 + 136)) = InternalMusicPlayer.queue(for:)(&unk_1F50A3A60);
  if (qword_1EDD55F58 != -1)
  {
    swift_once();
  }

  v67 = qword_1EDD55F60;
  swift_getKeyPath();
  swift_getKeyPath();
  v134 = v67;
  sub_1D560C8F8();

  v68 = LOBYTE(v142[0]);
  LODWORD(v131) = BYTE1(v142[0]);
  LODWORD(v133) = BYTE2(v142[0]);
  v135 = v142[1];
  if (qword_1EDD544A0 != -1)
  {
    swift_once();
  }

  v69 = sub_1D560C758();
  v70 = __swift_project_value_buffer(v69, qword_1EDD76AD8);
  sub_1D51A1FBC(v50, v65);
  v71 = v128;
  sub_1D51A1FBC(v50, v128);
  sub_1D4E628D4(v143, v142);
  v72 = sub_1D560C738();
  LODWORD(v127) = sub_1D56156E8();
  if (os_log_type_enabled(v72, v127))
  {
    v73 = swift_slowAlloc();
    v126 = v70;
    v74 = v73;
    v124 = swift_slowAlloc();
    v141 = v124;
    *v74 = 136446722;
    v125 = v68;
    v75 = sub_1D5616458();
    v76 = v65;
    v77 = v75;
    v79 = v78;
    sub_1D51A34D0(v76, type metadata accessor for MusicMovie);
    v80 = sub_1D4E6835C(v77, v79, &v141);

    *(v74 + 4) = v80;
    *(v74 + 12) = 2082;
    sub_1D51A1FBC(v71, v132);
    v81 = sub_1D5614DB8();
    v83 = v82;
    sub_1D51A34D0(v71, type metadata accessor for MusicMovie);
    v84 = sub_1D4E6835C(v81, v83, &v141);

    *(v74 + 14) = v84;
    *(v74 + 22) = 2082;
    __swift_project_boxed_opaque_existential_1(v142, v142[3]);
    sub_1D51AD5D8();
    v86 = v85;
    v88 = v87;
    __swift_destroy_boxed_opaque_existential_1(v142);
    v89 = sub_1D4E6835C(v86, v88, &v141);
    v50 = v139;

    *(v74 + 24) = v89;
    _os_log_impl(&dword_1D4E3F000, v72, v127, "Initial playability information for %{public}s with ID %{public}s: %{public}s", v74, 0x20u);
    v90 = v124;
    swift_arrayDestroy();
    MEMORY[0x1DA6ED200](v90, -1, -1);
    MEMORY[0x1DA6ED200](v74, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1(v142);
    sub_1D51A34D0(v71, type metadata accessor for MusicMovie);
    sub_1D51A34D0(v65, type metadata accessor for MusicMovie);
  }

  v91 = v129;
  sub_1D51994A8();
  v92 = v142[0];
  if (LOBYTE(v142[0]) != 10)
  {
    v91 = v121;
    sub_1D51A1FBC(v50, v121);
    v93 = sub_1D560C738();
    v103 = sub_1D56156E8();
    if (os_log_type_enabled(v93, v103))
    {
      v95 = swift_slowAlloc();
      v96 = swift_slowAlloc();
      v142[0] = v96;
      *v95 = 136446466;
      sub_1D51A1FBC(v91, v132);
      v104 = sub_1D5614DB8();
      v105 = v91;
      v107 = v106;
      sub_1D51A34D0(v105, type metadata accessor for MusicMovie);
      v108 = sub_1D4E6835C(v104, v107, v142);

      *(v95 + 4) = v108;
      *(v95 + 12) = 2082;
      LOBYTE(v141) = v92;
      v109 = sub_1D5614DB8();
      v111 = sub_1D4E6835C(v109, v110, v142);

      *(v95 + 14) = v111;
      v50 = v139;
      _os_log_impl(&dword_1D4E3F000, v93, v103, "Initial item state for item, %{public}s, returned unplayable with reason %{public}s", v95, 0x16u);
      swift_arrayDestroy();
      goto LABEL_26;
    }

LABEL_27:

    sub_1D51A34D0(v91, type metadata accessor for MusicMovie);
    goto LABEL_28;
  }

  sub_1D51A1FBC(v50, v91);
  v93 = sub_1D560C738();
  v94 = sub_1D56156E8();
  if (!os_log_type_enabled(v93, v94))
  {
    goto LABEL_27;
  }

  v95 = swift_slowAlloc();
  v96 = swift_slowAlloc();
  v142[0] = v96;
  *v95 = 136446210;
  sub_1D51A1FBC(v91, v132);
  v97 = sub_1D5614DB8();
  v98 = v91;
  v100 = v99;
  sub_1D51A34D0(v98, type metadata accessor for MusicMovie);
  v101 = v97;
  v50 = v139;
  v102 = sub_1D4E6835C(v101, v100, v142);

  *(v95 + 4) = v102;
  _os_log_impl(&dword_1D4E3F000, v93, v94, "Initial item state for item, %{public}s, returned playable.", v95, 0xCu);
  __swift_destroy_boxed_opaque_existential_1(v96);
LABEL_26:
  MEMORY[0x1DA6ED200](v96, -1, -1);
  MEMORY[0x1DA6ED200](v95, -1, -1);

LABEL_28:
  swift_beginAccess();
  LOBYTE(v141) = v92;
  sub_1D560C8B8();
  swift_endAccess();
  v112 = v135;
  sub_1D51A4F48();
  sub_1D51A5754(v142[0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F2AD0, &unk_1D5640100);
  sub_1D51ADFE8(&qword_1EDD5D2E0, &unk_1EC7F2AD0, &unk_1D5640100);
  v142[0] = sub_1D560C938();
  swift_allocObject();
  swift_weakInit();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1290, &qword_1D563F8C0);
  sub_1D51ADFE8(&unk_1EDD5D890, &qword_1EC7F1290, &qword_1D563F8C0);
  v113 = sub_1D560C948();

  *(v4 + *(*v4 + 152)) = v113;

  type metadata accessor for UserStateViewModel(0);
  sub_1D51AE1F4(&qword_1EDD55F50, type metadata accessor for UserStateViewModel);
  v142[0] = sub_1D560C838();
  swift_allocObject();
  swift_weakInit();
  sub_1D560C898();
  v114 = sub_1D560C948();

  *(v4 + *(*v4 + 144)) = v114;

  v115 = sub_1D5615458();
  v116 = v130;
  __swift_storeEnumTagSinglePayload(v130, 1, 1, v115);
  v117 = swift_allocObject();
  swift_weakInit();

  v118 = swift_allocObject();
  v118[2] = 0;
  v118[3] = 0;
  v118[4] = v117;
  sub_1D51ECB60(0, 0, v116, &unk_1D5640150, v118);

  sub_1D4E50004(v138, &qword_1EC7EEC40, &unk_1D561C070);
  sub_1D51A34D0(v50, type metadata accessor for MusicMovie);
  __swift_destroy_boxed_opaque_existential_1(v143);
  return v4;
}

uint64_t sub_1D51A34D0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_14();
  (*(v3 + 8))(a1);
  return a1;
}