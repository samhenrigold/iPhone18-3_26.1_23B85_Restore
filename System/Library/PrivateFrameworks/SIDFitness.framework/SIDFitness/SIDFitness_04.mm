uint64_t SIDWorkoutPlanScheduleResponse.init(schedule:metrics:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = *a1;
  v4 = a3 + *(type metadata accessor for SIDWorkoutPlanScheduleResponse(0) + 20);

  return sub_2629E6584(a2, v4);
}

uint64_t sub_2629E64D0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF3CD10, &qword_262A2D5B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for SIDWorkoutPlanScheduleResponse(uint64_t a1)
{
  result = qword_27FF3CB18;
  if (!qword_27FF3CB18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2629E6584(uint64_t a1, uint64_t a2)
{
  PlanScaffold = type metadata accessor for SIDMetricCreatePlanScaffold(0);
  (*(*(PlanScaffold - 8) + 32))(a2, a1, PlanScaffold);
  return a2;
}

uint64_t sub_2629E65FC(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    PlanScaffold = type metadata accessor for SIDMetricCreatePlanScaffold(0);
    v9 = *(*(PlanScaffold - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, PlanScaffold);
  }
}

void *sub_2629E66BC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    PlanScaffold = type metadata accessor for SIDMetricCreatePlanScaffold(0);
    v8 = *(*(PlanScaffold - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, PlanScaffold);
  }

  return result;
}

uint64_t sub_2629E6760(uint64_t a1)
{
  result = type metadata accessor for SIDMetricCreatePlanScaffold(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2629E6838(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    v4 = (a2 + 32);
    do
    {
      if (*v4 << 16 == *v3 << 16)
      {
        swift_bridgeObjectRelease_n();
      }

      else
      {
        v5 = sub_262A2A878();
        swift_bridgeObjectRelease_n();
        if ((v5 & 1) == 0)
        {
          return 0;
        }
      }

      ++v3;
      ++v4;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_2629E6908(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    v4 = (a2 + 32);
    while (2)
    {
      v6 = 0xEA00000000003436;
      v7 = 0x3936313931323531;
      switch(*v3)
      {
        case 1:
          v6 = 0xEA00000000003432;
          goto LABEL_34;
        case 2:
          v6 = 0xEA00000000003834;
          goto LABEL_40;
        case 3:
          v6 = 0xEA00000000003536;
          v7 = 0x3337313931323531;
          break;
        case 4:
          v6 = 0xEA00000000003630;
          v7 = 0x3536313931323531;
          break;
        case 5:
          v6 = 0xEA00000000003137;
          goto LABEL_43;
        case 6:
          v6 = 0xEA00000000003536;
          v7 = 0x3131303236323531;
          break;
        case 7:
          v6 = 0xEA00000000003137;
          v7 = 0x3337313931323531;
          break;
        case 8:
          v6 = 0xEA00000000003537;
          v7 = 0x3337313931323531;
          break;
        case 9:
          v6 = 0xEA00000000003231;
          v7 = 0x3535313931323531;
          break;
        case 0xA:
          v6 = 0xEA00000000003830;
          v7 = 0x3136393933373531;
          break;
        case 0xB:
          v6 = 0xEA00000000003936;
          goto LABEL_40;
        case 0xC:
          v7 = 0x3835313931323531;
          goto LABEL_26;
        case 0xD:
          v6 = 0xEA00000000003631;
          v7 = 0x3936313931323531;
          break;
        case 0xE:
          v6 = 0xEA00000000003234;
          v7 = 0x3035343739323631;
          break;
        case 0xF:
          v7 = 0x3236313931323531;
          goto LABEL_26;
        case 0x10:
          v6 = 0xEA00000000003330;
          v7 = 0x3534333231373531;
          break;
        case 0x11:
          v6 = 0xEA00000000003634;
          v7 = 0x3036313931323531;
          break;
        case 0x12:
          v6 = 0xEA00000000003138;
          v7 = 0x3936313931323531;
          break;
        case 0x13:
          v6 = 0xEA00000000003533;
          goto LABEL_36;
        case 0x14:
          v6 = 0xEA00000000003335;
          goto LABEL_38;
        case 0x15:
          v7 = 0x3331393535343631;
LABEL_26:
          v6 = 0xEA00000000003832;
          break;
        case 0x16:
          v6 = 0xEA00000000003831;
LABEL_34:
          v7 = 0x3236313931323531;
          break;
        case 0x17:
          v6 = 0xEA00000000003336;
LABEL_38:
          v7 = 0x3439303330373531;
          break;
        case 0x18:
          v6 = 0xEA00000000003437;
          v7 = 0x3531393535343631;
          break;
        case 0x19:
          v6 = 0xEA00000000003934;
          v7 = 0x3337313931323531;
          break;
        case 0x1A:
          v6 = 0xEA00000000003537;
LABEL_43:
          v8 = 0x303236323531;
          goto LABEL_44;
        case 0x1B:
          v6 = 0xEA00000000003630;
          v8 = 0x393535343631;
LABEL_44:
          v7 = v8 & 0xFFFFFFFFFFFFLL | 0x3331000000000000;
          break;
        case 0x1C:
          v6 = 0xEA00000000003636;
LABEL_40:
          v7 = 0x3637313931323531;
          break;
        case 0x1D:
          v6 = 0xEA00000000003539;
          v7 = 0x3436393933373531;
          break;
        case 0x1E:
          v6 = 0xEA00000000003534;
LABEL_36:
          v7 = 0x3835313931323531;
          break;
        default:
          break;
      }

      v9 = 0x3936313931323531;
      v10 = 0xEA00000000003436;
      switch(*v4)
      {
        case 1:
          v10 = 0xEA00000000003432;
          goto LABEL_85;
        case 2:
          v10 = 0xEA00000000003834;
          goto LABEL_94;
        case 3:
          v10 = 0xEA00000000003536;
          goto LABEL_81;
        case 4:
          v10 = 0xEA00000000003630;
          if (v7 != 0x3536313931323531)
          {
            goto LABEL_5;
          }

          goto LABEL_98;
        case 5:
          v10 = 0xEA00000000003137;
          goto LABEL_101;
        case 6:
          v10 = 0xEA00000000003536;
          if (v7 != 0x3131303236323531)
          {
            goto LABEL_5;
          }

          goto LABEL_98;
        case 7:
          v10 = 0xEA00000000003137;
          goto LABEL_81;
        case 8:
          v10 = 0xEA00000000003537;
          goto LABEL_81;
        case 9:
          v10 = 0xEA00000000003231;
          if (v7 != 0x3535313931323531)
          {
            goto LABEL_5;
          }

          goto LABEL_98;
        case 0xA:
          v10 = 0xEA00000000003830;
          if (v7 != 0x3136393933373531)
          {
            goto LABEL_5;
          }

          goto LABEL_98;
        case 0xB:
          v10 = 0xEA00000000003936;
          goto LABEL_94;
        case 0xC:
          v12 = 0x3835313931323531;
          goto LABEL_70;
        case 0xD:
          v10 = 0xEA00000000003631;
          goto LABEL_76;
        case 0xE:
          v10 = 0xEA00000000003234;
          if (v7 != 0x3035343739323631)
          {
            goto LABEL_5;
          }

          goto LABEL_98;
        case 0xF:
          v12 = 0x3236313931323531;
          goto LABEL_70;
        case 0x10:
          v10 = 0xEA00000000003330;
          if (v7 != 0x3534333231373531)
          {
            goto LABEL_5;
          }

          goto LABEL_98;
        case 0x11:
          v10 = 0xEA00000000003634;
          if (v7 != 0x3036313931323531)
          {
            goto LABEL_5;
          }

          goto LABEL_98;
        case 0x12:
          v10 = 0xEA00000000003138;
LABEL_76:
          if (v7 != 0x3936313931323531)
          {
            goto LABEL_5;
          }

          goto LABEL_98;
        case 0x13:
          v10 = 0xEA00000000003533;
          goto LABEL_88;
        case 0x14:
          v10 = 0xEA00000000003335;
          goto LABEL_91;
        case 0x15:
          v12 = 0x3331393535343631;
LABEL_70:
          v10 = 0xEA00000000003832;
          if (v7 != v12)
          {
            goto LABEL_5;
          }

          goto LABEL_98;
        case 0x16:
          v10 = 0xEA00000000003831;
LABEL_85:
          if (v7 != 0x3236313931323531)
          {
            goto LABEL_5;
          }

          goto LABEL_98;
        case 0x17:
          v10 = 0xEA00000000003336;
LABEL_91:
          if (v7 != 0x3439303330373531)
          {
            goto LABEL_5;
          }

          goto LABEL_98;
        case 0x18:
          v10 = 0xEA00000000003437;
          if (v7 != 0x3531393535343631)
          {
            goto LABEL_5;
          }

          goto LABEL_98;
        case 0x19:
          v10 = 0xEA00000000003934;
LABEL_81:
          if (v7 != 0x3337313931323531)
          {
            goto LABEL_5;
          }

          goto LABEL_98;
        case 0x1A:
          v10 = 0xEA00000000003537;
LABEL_101:
          v11 = 0x303236323531;
          goto LABEL_102;
        case 0x1B:
          v10 = 0xEA00000000003630;
          v11 = 0x393535343631;
LABEL_102:
          if (v7 != (v11 & 0xFFFFFFFFFFFFLL | 0x3331000000000000))
          {
            goto LABEL_5;
          }

          goto LABEL_98;
        case 0x1C:
          v10 = 0xEA00000000003636;
LABEL_94:
          if (v7 != 0x3637313931323531)
          {
            goto LABEL_5;
          }

          goto LABEL_98;
        case 0x1D:
          v10 = 0xEA00000000003539;
          v9 = 0x3436393933373531;
          goto LABEL_97;
        case 0x1E:
          v10 = 0xEA00000000003534;
LABEL_88:
          if (v7 != 0x3835313931323531)
          {
            goto LABEL_5;
          }

          goto LABEL_98;
        default:
LABEL_97:
          if (v7 != v9)
          {
            goto LABEL_5;
          }

LABEL_98:
          if (v6 == v10)
          {
          }

          else
          {
LABEL_5:
            v5 = sub_262A2A878();

            if ((v5 & 1) == 0)
            {
              return 0;
            }
          }

          ++v3;
          ++v4;
          if (--v2)
          {
            continue;
          }

          return 1;
      }
    }
  }

  return 1;
}

uint64_t sub_2629E7004(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = a1 + 33;
    for (i = a2 + 33; *(v3 - 1) == *(i - 1) && (sub_262A2A178() & 1) != 0; i += 2)
    {
      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_2629E7090(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    v4 = (a2 + 32);
    do
    {
      if (*v3 == 1)
      {
        v6 = 12337;
      }

      else
      {
        v6 = 12593;
      }

      if (*v3)
      {
        v7 = v6;
      }

      else
      {
        v7 = 57;
      }

      if (*v3)
      {
        v8 = 0xE200000000000000;
      }

      else
      {
        v8 = 0xE100000000000000;
      }

      if (*v4 == 1)
      {
        v9 = 12337;
      }

      else
      {
        v9 = 12593;
      }

      if (*v4)
      {
        v10 = v9;
      }

      else
      {
        v10 = 57;
      }

      if (*v4)
      {
        v11 = 0xE200000000000000;
      }

      else
      {
        v11 = 0xE100000000000000;
      }

      if (v7 == v10 && v8 == v11)
      {
      }

      else
      {
        v5 = sub_262A2A878();

        if ((v5 & 1) == 0)
        {
          return 0;
        }
      }

      ++v3;
      ++v4;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_2629E71B4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    v4 = (a2 + 32);
    do
    {
      v6 = *v3;
      if (v6 > 3)
      {
        v9 = 0xEA00000000003735;
        if (v6 == 6)
        {
          v10 = 0x3032383934393431;
        }

        else
        {
          v10 = 0x3930393836383531;
        }

        if (v6 != 6)
        {
          v9 = 0xEA00000000003638;
        }

        v11 = 0xEA00000000003836;
        if (v6 != 4)
        {
          v11 = 0xEA00000000003736;
        }

        if (*v3 <= 5u)
        {
          v7 = 0x3932343038373431;
        }

        else
        {
          v7 = v10;
        }

        if (*v3 <= 5u)
        {
          v8 = v11;
        }

        else
        {
          v8 = v9;
        }
      }

      else if (*v3 > 1u)
      {
        if (v6 == 2)
        {
          v8 = 0xEA00000000003636;
          v7 = 0x3932343038373431;
        }

        else
        {
          v7 = 0x3932343038373431;
          v8 = 0xEA00000000003037;
        }
      }

      else
      {
        if (*v3)
        {
          v7 = 0x3932343038373431;
        }

        else
        {
          v7 = 0x3931333738353531;
        }

        if (*v3)
        {
          v8 = 0xEA00000000003936;
        }

        else
        {
          v8 = 0xEA00000000003739;
        }
      }

      v12 = *v4;
      if (v12 > 3)
      {
        if (*v4 <= 5u)
        {
          if (v12 == 4)
          {
            v13 = 0xEA00000000003836;
          }

          else
          {
            v13 = 0xEA00000000003736;
          }

LABEL_45:
          if (v7 != 0x3932343038373431)
          {
            goto LABEL_5;
          }

          goto LABEL_46;
        }

        if (v12 == 6)
        {
          v13 = 0xEA00000000003735;
          if (v7 != 0x3032383934393431)
          {
            goto LABEL_5;
          }
        }

        else
        {
          v13 = 0xEA00000000003638;
          if (v7 != 0x3930393836383531)
          {
LABEL_5:
            v5 = sub_262A2A878();

            if ((v5 & 1) == 0)
            {
              return 0;
            }

            goto LABEL_6;
          }
        }
      }

      else
      {
        if (*v4 <= 1u)
        {
          if (!*v4)
          {
            v13 = 0xEA00000000003739;
            if (v7 != 0x3931333738353531)
            {
              goto LABEL_5;
            }

            goto LABEL_46;
          }

          v13 = 0xEA00000000003936;
          goto LABEL_45;
        }

        if (v12 == 2)
        {
          v13 = 0xEA00000000003636;
          goto LABEL_45;
        }

        v13 = 0xEA00000000003037;
        if (v7 != 0x3932343038373431)
        {
          goto LABEL_5;
        }
      }

LABEL_46:
      if (v8 != v13)
      {
        goto LABEL_5;
      }

LABEL_6:
      ++v3;
      ++v4;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_2629E7408(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    v4 = (a2 + 32);
    do
    {
      v6 = *v3;
      if (v6 > 4)
      {
        if (v6 == 8)
        {
          v9 = 12337;
        }

        else
        {
          v9 = 12593;
        }

        v10 = 0xE200000000000000;
        if (v6 == 7)
        {
          v9 = 57;
          v10 = 0xE100000000000000;
        }

        v11 = 55;
        if (v6 != 5)
        {
          v11 = 56;
        }

        if (*v3 <= 6u)
        {
          v8 = v11;
        }

        else
        {
          v8 = v9;
        }

        if (*v3 <= 6u)
        {
          v7 = 0xE100000000000000;
        }

        else
        {
          v7 = v10;
        }
      }

      else if (*v3 <= 1u)
      {
        if (*v3)
        {
          v8 = 51;
        }

        else
        {
          v8 = 50;
        }

        v7 = 0xE100000000000000;
      }

      else
      {
        v7 = 0xE100000000000000;
        if (v6 == 2)
        {
          v8 = 52;
        }

        else if (v6 == 3)
        {
          v8 = 53;
        }

        else
        {
          v8 = 54;
        }
      }

      v12 = *v4;
      if (v12 > 4)
      {
        if (*v4 <= 6u)
        {
          v13 = 0xE100000000000000;
          if (v12 == 5)
          {
            if (v8 != 55)
            {
              goto LABEL_5;
            }
          }

          else if (v8 != 56)
          {
            goto LABEL_5;
          }
        }

        else if (v12 == 7)
        {
          v13 = 0xE100000000000000;
          if (v8 != 57)
          {
            goto LABEL_5;
          }
        }

        else
        {
          v13 = 0xE200000000000000;
          if (v12 == 8)
          {
            if (v8 != 12337)
            {
              goto LABEL_5;
            }
          }

          else if (v8 != 12593)
          {
            goto LABEL_5;
          }
        }
      }

      else
      {
        v13 = 0xE100000000000000;
        if (*v4 <= 1u)
        {
          if (*v4)
          {
            if (v8 != 51)
            {
              goto LABEL_5;
            }
          }

          else if (v8 != 50)
          {
            goto LABEL_5;
          }
        }

        else if (v12 == 2)
        {
          if (v8 != 52)
          {
            goto LABEL_5;
          }
        }

        else if (v12 == 3)
        {
          if (v8 != 53)
          {
            goto LABEL_5;
          }
        }

        else if (v8 != 54)
        {
          goto LABEL_5;
        }
      }

      if (v7 != v13)
      {
LABEL_5:
        v5 = sub_262A2A878();

        if ((v5 & 1) == 0)
        {
          return 0;
        }

        goto LABEL_6;
      }

LABEL_6:
      ++v3;
      ++v4;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_2629E766C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    v4 = (a2 + 32);
    do
    {
      if (*v3)
      {
        v5 = 52;
      }

      else
      {
        v5 = 53;
      }

      if (*v4)
      {
        v6 = 52;
      }

      else
      {
        v6 = 53;
      }

      if (v5 == v6)
      {
        swift_bridgeObjectRelease_n();
      }

      else
      {
        v7 = sub_262A2A878();
        swift_bridgeObjectRelease_n();
        if ((v7 & 1) == 0)
        {
          return 0;
        }
      }

      ++v3;
      ++v4;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_2629E7738(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a2 + 64);
    for (i = (a1 + 64); ; i += 5)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;
      v8 = *(v3 - 2);
      v9 = *(v3 - 1);
      v10 = *v3;
      v11 = *(i - 4) == *(v3 - 4) && *(i - 3) == *(v3 - 3);
      if (!v11 && (sub_262A2A878() & 1) == 0)
      {
        break;
      }

      if (v5 == v8 && v6 == v9)
      {
        if (v7 != v10)
        {
          return 0;
        }
      }

      else
      {
        v13 = sub_262A2A878();
        result = 0;
        if ((v13 & 1) == 0 || v7 != v10)
        {
          return result;
        }
      }

      v3 += 5;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_2629E7834(uint64_t result, uint64_t a2)
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

uint64_t sub_2629E7890(uint64_t a1, uint64_t a2)
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
      if (!v5 && (sub_262A2A878() & 1) == 0)
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

uint64_t sub_2629E7920(uint64_t result, uint64_t a2)
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

uint64_t sub_2629E797C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SIDWorkoutPlanProgressWorkout(0);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = (&v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v5);
  v10 = (&v27 - v9);
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (!v11 || a1 == a2)
    {
      v25 = 1;
    }

    else
    {
      v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v13 = a1 + v12;
      v14 = a2 + v12;
      v15 = *(v8 + 72);
      while (2)
      {
        sub_2629C1CD8(v13, v10);
        sub_2629C1CD8(v14, v7);
        v16 = *v10 == *v7 && v10[1] == v7[1];
        if (v16 || (sub_262A2A878()) && (sub_262A29FB8() & 1) != 0 && *(v10 + v4[6]) == *(v7 + v4[6]))
        {
          v17 = v4[7];
          v18 = *(v10 + v17);
          v19 = *(v7 + v17);
          v20 = 0xEA00000000003638;
          v21 = 0x3932343038373431;
          switch(v18)
          {
            case 1:
              v20 = 0xEA00000000003937;
              goto LABEL_26;
            case 2:
              v20 = 0xEA00000000003438;
              goto LABEL_26;
            case 3:
              v20 = 0xEA00000000003238;
              goto LABEL_26;
            case 4:
              v20 = 0xEA00000000003633;
              v21 = 0x3532363037343631;
              break;
            case 5:
              v20 = 0xEA00000000003839;
              goto LABEL_22;
            case 6:
              v20 = 0xEA00000000003738;
              goto LABEL_26;
            case 7:
              v20 = 0xEA00000000003739;
              goto LABEL_22;
            case 8:
              v21 = 0x3932343038373431;
              v20 = 0xEA00000000003038;
              break;
            case 9:
              v20 = 0xEA00000000003639;
LABEL_22:
              v21 = 0x3332373831363531;
              break;
            case 10:
              v20 = 0xEA00000000003338;
              goto LABEL_26;
            case 11:
              v20 = 0xEA00000000003138;
              goto LABEL_26;
            case 12:
              v20 = 0xEA00000000003635;
              v21 = 0x3032383934393431;
              break;
            case 13:
              v20 = 0xEA00000000003538;
LABEL_26:
              v21 = 0x3932343038373431;
              break;
            default:
              break;
          }

          v22 = 0xEA00000000003638;
          switch(v19)
          {
            case 1:
              v22 = 0xEA00000000003937;
              goto LABEL_44;
            case 2:
              v22 = 0xEA00000000003438;
              goto LABEL_44;
            case 3:
              v22 = 0xEA00000000003238;
              goto LABEL_44;
            case 4:
              v22 = 0xEA00000000003633;
              if (v21 != 0x3532363037343631)
              {
                goto LABEL_49;
              }

              goto LABEL_45;
            case 5:
              v22 = 0xEA00000000003839;
              goto LABEL_39;
            case 6:
              v22 = 0xEA00000000003738;
              goto LABEL_44;
            case 7:
              v22 = 0xEA00000000003739;
              goto LABEL_39;
            case 8:
              v22 = 0xEA00000000003038;
              if (v21 != 0x3932343038373431)
              {
                goto LABEL_49;
              }

              goto LABEL_45;
            case 9:
              v22 = 0xEA00000000003639;
LABEL_39:
              if (v21 != 0x3332373831363531)
              {
                goto LABEL_49;
              }

              goto LABEL_45;
            case 10:
              v22 = 0xEA00000000003338;
              goto LABEL_44;
            case 11:
              v22 = 0xEA00000000003138;
              goto LABEL_44;
            case 12:
              v22 = 0xEA00000000003635;
              if (v21 != 0x3032383934393431)
              {
                goto LABEL_49;
              }

              goto LABEL_45;
            case 13:
              v22 = 0xEA00000000003538;
              goto LABEL_44;
            default:
LABEL_44:
              if (v21 != 0x3932343038373431)
              {
                goto LABEL_49;
              }

LABEL_45:
              if (v20 == v22)
              {
              }

              else
              {
LABEL_49:
                v23 = sub_262A2A878();

                if ((v23 & 1) == 0)
                {
                  goto LABEL_55;
                }
              }

              v24 = *(v10 + v4[8]) ^ *(v7 + v4[8]);
              sub_2629C1D3C(v7);
              sub_2629C1D3C(v10);
              if ((v24 & 1) == 0)
              {
                v14 += v15;
                v13 += v15;
                if (--v11)
                {
                  continue;
                }
              }

              v25 = v24 ^ 1;
              break;
          }
        }

        else
        {
LABEL_55:
          sub_2629C1D3C(v7);
          sub_2629C1D3C(v10);
          v25 = 0;
        }

        break;
      }
    }
  }

  else
  {
    v25 = 0;
  }

  return v25 & 1;
}

uint64_t sub_2629E7DF4(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && result != a2)
  {
    v3 = 0;
    v4 = result + 32;
    v5 = a2 + 32;
    v33 = a2 + 32;
    v34 = result + 32;
    while (1)
    {
      if (v3 == v2)
      {
        goto LABEL_53;
      }

      v6 = (v4 + 48 * v3);
      result = *v6;
      v7 = v6[1];
      v8 = v6[2];
      v9 = v6[3];
      v11 = v6[4];
      v10 = v6[5];
      v12 = (v5 + 48 * v3);
      v13 = v12[2];
      v14 = v12[3];
      v16 = v12[4];
      v15 = v12[5];
      if (result != *v12 || v7 != v12[1])
      {
        result = sub_262A2A878();
        if ((result & 1) == 0)
        {
          return 0;
        }
      }

      v18 = *(v8 + 16);
      if (v18 != *(v13 + 16))
      {
        return 0;
      }

      if (v18)
      {
        v19 = v8 == v13;
      }

      else
      {
        v19 = 1;
      }

      if (!v19)
      {
        v20 = (v8 + 32);
        v21 = (v13 + 32);
        while (v18)
        {
          if (*v20 != *v21)
          {
            return 0;
          }

          ++v20;
          ++v21;
          if (!--v18)
          {
            goto LABEL_20;
          }
        }

        __break(1u);
        __break(1u);
        __break(1u);
LABEL_53:
        __break(1u);
        return result;
      }

LABEL_20:
      v22 = *(v9 + 16);
      if (v22 != *(v14 + 16))
      {
        return 0;
      }

      if (v22 && v9 != v14)
      {
        break;
      }

LABEL_31:
      v26 = *(v11 + 16);
      if (v26 != *(v16 + 16))
      {
        return 0;
      }

      if (v26 && v11 != v16)
      {
        v27 = (v11 + 40);
        v28 = (v16 + 40);
        do
        {
          v29 = *(v27 - 1) == *(v28 - 1) && *v27 == *v28;
          if (!v29 && (sub_262A2A878() & 1) == 0)
          {
            return 0;
          }

          v27 += 2;
          v28 += 2;
        }

        while (--v26);
      }

      v30 = *(v10 + 16);
      if (v30 != *(v15 + 16))
      {
        return 0;
      }

      if (v30 && v10 != v15)
      {
        v31 = (v10 + 32);
        v32 = (v15 + 32);
        while (*v31 == *v32)
        {
          ++v31;
          ++v32;
          if (!--v30)
          {
            goto LABEL_48;
          }
        }

        return 0;
      }

LABEL_48:
      ++v3;
      result = 1;
      v5 = v33;
      v4 = v34;
      if (v3 == v2)
      {
        return result;
      }
    }

    v23 = (v9 + 40);
    v24 = (v14 + 40);
    while (1)
    {
      v25 = *(v23 - 1) == *(v24 - 1) && *v23 == *v24;
      if (!v25 && (sub_262A2A878() & 1) == 0)
      {
        return 0;
      }

      v23 += 2;
      v24 += 2;
      if (!--v22)
      {
        goto LABEL_31;
      }
    }
  }

  return 1;
}

uint64_t sub_2629E8034(uint64_t result, uint64_t a2)
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
    v8 = qword_262A305E8[v5];
    v9 = qword_262A305E8[v7];
    result = v8 == v9;
    if (v8 != v9 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2629E80A0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 56);
    for (i = (a2 + 56); ; i += 4)
    {
      v5 = *(v3 - 1);
      v6 = *v3;
      v7 = *(i - 1);
      v8 = *i;
      v9 = *(v3 - 3) == *(i - 3) && *(v3 - 2) == *(i - 2);
      if (!v9 && (sub_262A2A878() & 1) == 0)
      {
        break;
      }

      v10 = v5 == v7 && v6 == v8;
      if (!v10 && (sub_262A2A878() & 1) == 0)
      {
        break;
      }

      v3 += 4;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_2629E8170(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = 0;
  v4 = a1 + 32;
  v5 = a2 + 32;
  while (2)
  {
    v6 = 80 * v3;
    v7 = (v4 + 80 * v3);
    v8 = v7[1];
    ++v3;
    v26 = *v7;
    v27 = v8;
    v9 = v7[3];
    v28 = v7[2];
    v29 = v9;
    v10 = v7[4];
    v11 = (v5 + v6);
    v12 = v11[3];
    v33 = v11[2];
    v34 = v12;
    v35 = v11[4];
    v13 = *v11;
    v32 = v11[1];
    v30 = v10;
    v31 = v13;
    v14 = 0xEA00000000003638;
    v15 = 0x3932343038373431;
    switch(v26)
    {
      case 1:
        v14 = 0xEA00000000003937;
        goto LABEL_19;
      case 2:
        v14 = 0xEA00000000003438;
        goto LABEL_19;
      case 3:
        v14 = 0xEA00000000003238;
        goto LABEL_19;
      case 4:
        v14 = 0xEA00000000003633;
        v15 = 0x3532363037343631;
        break;
      case 5:
        v14 = 0xEA00000000003839;
        goto LABEL_15;
      case 6:
        v14 = 0xEA00000000003738;
        goto LABEL_19;
      case 7:
        v14 = 0xEA00000000003739;
        goto LABEL_15;
      case 8:
        v15 = 0x3932343038373431;
        v14 = 0xEA00000000003038;
        break;
      case 9:
        v14 = 0xEA00000000003639;
LABEL_15:
        v15 = 0x3332373831363531;
        break;
      case 10:
        v14 = 0xEA00000000003338;
        goto LABEL_19;
      case 11:
        v14 = 0xEA00000000003138;
        goto LABEL_19;
      case 12:
        v14 = 0xEA00000000003635;
        v15 = 0x3032383934393431;
        break;
      case 13:
        v14 = 0xEA00000000003538;
LABEL_19:
        v15 = 0x3932343038373431;
        break;
      default:
        break;
    }

    v16 = 0xEA00000000003638;
    switch(v31)
    {
      case 1:
        v16 = 0xEA00000000003937;
        goto LABEL_37;
      case 2:
        v16 = 0xEA00000000003438;
        goto LABEL_37;
      case 3:
        v16 = 0xEA00000000003238;
        goto LABEL_37;
      case 4:
        v16 = 0xEA00000000003633;
        if (v15 != 0x3532363037343631)
        {
          goto LABEL_42;
        }

        goto LABEL_38;
      case 5:
        v16 = 0xEA00000000003839;
        goto LABEL_32;
      case 6:
        v16 = 0xEA00000000003738;
        goto LABEL_37;
      case 7:
        v16 = 0xEA00000000003739;
        goto LABEL_32;
      case 8:
        v16 = 0xEA00000000003038;
        if (v15 != 0x3932343038373431)
        {
          goto LABEL_42;
        }

        goto LABEL_38;
      case 9:
        v16 = 0xEA00000000003639;
LABEL_32:
        if (v15 != 0x3332373831363531)
        {
          goto LABEL_42;
        }

        goto LABEL_38;
      case 10:
        v16 = 0xEA00000000003338;
        goto LABEL_37;
      case 11:
        v16 = 0xEA00000000003138;
        goto LABEL_37;
      case 12:
        v16 = 0xEA00000000003635;
        if (v15 != 0x3032383934393431)
        {
          goto LABEL_42;
        }

        goto LABEL_38;
      case 13:
        v16 = 0xEA00000000003538;
        goto LABEL_37;
      default:
LABEL_37:
        if (v15 != 0x3932343038373431)
        {
          goto LABEL_42;
        }

LABEL_38:
        if (v14 == v16)
        {
          sub_2629E8F60(&v26, v25);
          sub_2629E8F60(&v31, v25);
        }

        else
        {
LABEL_42:
          v17 = sub_262A2A878();
          sub_2629E8F60(&v26, v25);
          sub_2629E8F60(&v31, v25);

          if ((v17 & 1) == 0)
          {
            goto LABEL_64;
          }
        }

        v18 = *(*(&v26 + 1) + 16);
        if (v18 != *(*(&v31 + 1) + 16))
        {
          goto LABEL_64;
        }

        if (!v18 || *(&v26 + 1) == *(&v31 + 1))
        {
LABEL_49:
          if ((sub_2629E6838(v27, v32) & 1) == 0)
          {
            goto LABEL_64;
          }

          if ((sub_2629E6908(*(&v27 + 1), *(&v32 + 1)) & 1) == 0)
          {
            goto LABEL_64;
          }

          if ((sub_2629E7408(v28, v33) & 1) == 0)
          {
            goto LABEL_64;
          }

          if ((sub_2629E7090(*(&v28 + 1), *(&v33 + 1)) & 1) == 0)
          {
            goto LABEL_64;
          }

          if ((sub_2629E71B4(v29, v34) & 1) == 0)
          {
            goto LABEL_64;
          }

          if ((sub_2629E766C(*(&v29 + 1), *(&v34 + 1)) & 1) == 0)
          {
            goto LABEL_64;
          }

          v21 = *(v30 + 16);
          if (v21 != *(v35 + 16))
          {
            goto LABEL_64;
          }

          if (v21 && v30 != v35)
          {
            v22 = (v30 + 32);
            v23 = (v35 + 32);
            while (*v22 == *v23)
            {
              ++v22;
              ++v23;
              if (!--v21)
              {
                goto LABEL_61;
              }
            }

            goto LABEL_64;
          }

LABEL_61:
          sub_2629E8FBC(&v31);
          sub_2629E8FBC(&v26);
          if (*(&v30 + 1) != *(&v35 + 1))
          {
            return 0;
          }

          if (v3 == v2)
          {
            return 1;
          }

          continue;
        }

        v19 = (*(&v26 + 1) + 32);
        v20 = (*(&v31 + 1) + 32);
        while (qword_262A305E8[*v19] == qword_262A305E8[*v20])
        {
          ++v19;
          ++v20;
          if (!--v18)
          {
            goto LABEL_49;
          }
        }

LABEL_64:
        sub_2629E8FBC(&v31);
        sub_2629E8FBC(&v26);
        return 0;
    }
  }
}

uint64_t SIDMetrics.recommendationIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_262A2A018();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t type metadata accessor for SIDMetrics(uint64_t a1)
{
  result = qword_27FF3CB30;
  if (!qword_27FF3CB30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double SIDMetrics.treatments.getter()
{
  type metadata accessor for SIDMetrics(0);

  return result;
}

uint64_t SIDMetrics.init(cohortIdentifier:recommendationIdentifier:treatments:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for SIDMetrics(0);
  *(a4 + *(v8 + 20)) = a1;
  v9 = sub_262A2A018();
  result = (*(*(v9 - 8) + 32))(a4, a2, v9);
  *(a4 + *(v8 + 24)) = a3;
  return result;
}

uint64_t static SIDMetrics.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_262A29FF8() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for SIDMetrics(0);
  if (*(a1 + *(v4 + 20)) != *(a2 + *(v4 + 20)))
  {
    return 0;
  }

  v5 = *(v4 + 24);
  v6 = *(a1 + v5);
  v7 = *(a2 + v5);

  return sub_2629E7738(v6, v7);
}

uint64_t SIDMetrics.hash(into:)(uint64_t a1)
{
  sub_262A2A018();
  sub_2629E8CA0(&qword_27FF3C3D8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_262A2A388();
  v3 = type metadata accessor for SIDMetrics(0);
  MEMORY[0x26672F240](*(v1 + *(v3 + 20)));
  v4 = *(v1 + *(v3 + 24));

  return sub_2629BF80C(a1, v4);
}

uint64_t SIDMetrics.hashValue.getter()
{
  sub_262A2A998();
  sub_262A2A018();
  sub_2629E8CA0(&qword_27FF3C3D8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_262A2A388();
  v1 = type metadata accessor for SIDMetrics(0);
  MEMORY[0x26672F240](*(v0 + *(v1 + 20)));
  sub_2629BF80C(v3, *(v0 + *(v1 + 24)));
  return sub_262A2A9D8();
}

uint64_t sub_2629E89BC(uint64_t a1)
{
  sub_262A2A998();
  sub_262A2A018();
  sub_2629E8CA0(&qword_27FF3C3D8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_262A2A388();
  MEMORY[0x26672F240](*(v1 + *(a1 + 20)));
  sub_2629BF80C(v4, *(v1 + *(a1 + 24)));
  return sub_262A2A9D8();
}

uint64_t sub_2629E8A74(uint64_t a1, uint64_t a2)
{
  sub_262A2A018();
  sub_2629E8CA0(&qword_27FF3C3D8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_262A2A388();
  MEMORY[0x26672F240](*(v2 + *(a2 + 20)));
  v5 = *(v2 + *(a2 + 24));

  return sub_2629BF80C(a1, v5);
}

uint64_t sub_2629E8B28(uint64_t a1, uint64_t a2)
{
  sub_262A2A998();
  sub_262A2A018();
  sub_2629E8CA0(&qword_27FF3C3D8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_262A2A388();
  MEMORY[0x26672F240](*(v2 + *(a2 + 20)));
  sub_2629BF80C(v5, *(v2 + *(a2 + 24)));
  return sub_262A2A9D8();
}

uint64_t sub_2629E8BDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_262A29FF8() & 1) == 0 || *(a1 + *(a3 + 20)) != *(a2 + *(a3 + 20)))
  {
    return 0;
  }

  v6 = *(a3 + 24);
  v7 = *(a1 + v6);
  v8 = *(a2 + v6);

  return sub_2629E7738(v7, v8);
}

uint64_t sub_2629E8CA0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2629E8CFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_262A2A018();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_2629E8DCC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_262A2A018();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

void sub_2629E8E84(uint64_t a1)
{
  sub_262A2A018();
  if (v1 <= 0x3F)
  {
    sub_2629E8F10();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2629E8F10()
{
  if (!qword_27FF3C378)
  {
    v0 = sub_262A2A558();
    if (!v1)
    {
      atomic_store(v0, &qword_27FF3C378);
    }
  }
}

uint64_t static SIDTreatment.from(treatment:)@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_262A2A248();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_262A2A2A8();
  v8 = v7;
  v9 = sub_262A2A298();
  v11 = v10;
  sub_262A2A2B8();
  v12 = sub_262A2A238();
  result = (*(v3 + 8))(v5, v2);
  *a1 = v6;
  a1[1] = v8;
  a1[2] = v9;
  a1[3] = v11;
  a1[4] = v12;
  return result;
}

uint64_t SIDTreatment.areaId.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t SIDTreatment.treatmentId.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

void __swiftcall SIDTreatment.init(areaId:treatmentId:bucket:)(SIDFitness::SIDTreatment *__return_ptr retstr, Swift::String areaId, Swift::String treatmentId, Swift::Int bucket)
{
  retstr->areaId = areaId;
  retstr->treatmentId = treatmentId;
  retstr->bucket = bucket;
}

uint64_t sub_2629E9198()
{
  v1 = 0x6E656D7461657274;
  if (*v0 != 1)
  {
    v1 = 0x74656B637562;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x644961657261;
  }
}

uint64_t sub_2629E91F4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2629E9CA8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2629E921C(uint64_t a1)
{
  v2 = sub_2629E97B0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2629E9258(uint64_t a1)
{
  v2 = sub_2629E97B0();

  return MEMORY[0x2821FE720](a1, v2);
}

BOOL static SIDTreatment.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a2[2];
  v6 = a2[3];
  v7 = a2[4];
  v8 = *a1 == *a2 && a1[1] == a2[1];
  if (v8 || (sub_262A2A878()) && (v2 == v5 ? (v9 = v3 == v6) : (v9 = 0), v9 || (sub_262A2A878()))
  {
    return v4 == v7;
  }

  else
  {
    return 0;
  }
}

uint64_t SIDTreatment.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 32);
  sub_262A2A448();
  sub_262A2A448();
  return MEMORY[0x26672F240](v2);
}

uint64_t SIDTreatment.hashValue.getter()
{
  v1 = *(v0 + 32);
  sub_262A2A998();
  sub_262A2A448();
  sub_262A2A448();
  MEMORY[0x26672F240](v1);
  return sub_262A2A9D8();
}

uint64_t sub_2629E9404()
{
  v1 = *(v0 + 32);
  sub_262A2A998();
  sub_262A2A448();
  sub_262A2A448();
  MEMORY[0x26672F240](v1);
  return sub_262A2A9D8();
}

uint64_t sub_2629E9484(uint64_t a1)
{
  v2 = *(v1 + 32);
  sub_262A2A448();
  sub_262A2A448();
  return MEMORY[0x26672F240](v2);
}

uint64_t sub_2629E94D8(uint64_t a1)
{
  v2 = *(v1 + 32);
  sub_262A2A998();
  sub_262A2A448();
  sub_262A2A448();
  MEMORY[0x26672F240](v2);
  return sub_262A2A9D8();
}

BOOL sub_2629E9554(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a2[2];
  v6 = a2[3];
  v7 = a2[4];
  v8 = *a1 == *a2 && a1[1] == a2[1];
  if (v8 || (sub_262A2A878()) && (v2 == v5 ? (v9 = v3 == v6) : (v9 = 0), v9 || (sub_262A2A878()))
  {
    return v4 == v7;
  }

  else
  {
    return 0;
  }
}

uint64_t SIDTreatment.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3CB40, &qword_262A30610);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v10 - v5;
  v7 = v1[2];
  v10[1] = v1[3];
  v10[2] = v7;
  v10[0] = v1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2629E97B0();
  sub_262A2AA28();
  v13 = 0;
  v8 = v10[3];
  sub_262A2A828();
  if (v8)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v12 = 1;
  sub_262A2A828();
  v11 = 2;
  sub_262A2A838();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_2629E97B0()
{
  result = qword_27FF3CB48;
  if (!qword_27FF3CB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF3CB48);
  }

  return result;
}

uint64_t SIDTreatment.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3CB50, &qword_262A30618);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2629E97B0();
  sub_262A2AA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v22 = 0;
  v9 = sub_262A2A7C8();
  v11 = v10;
  v19 = v9;
  v21 = 1;
  v17 = sub_262A2A7C8();
  v18 = v12;
  v20 = 2;
  v13 = sub_262A2A7D8();
  (*(v6 + 8))(v8, v5);
  v14 = v18;
  *a2 = v19;
  a2[1] = v11;
  a2[2] = v17;
  a2[3] = v14;
  a2[4] = v13;

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

unint64_t sub_2629E9A6C()
{
  result = qword_27FF3CB58;
  if (!qword_27FF3CB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF3CB58);
  }

  return result;
}

uint64_t sub_2629E9AF0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_2629E9B38(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2629E9BA4()
{
  result = qword_27FF3CB60;
  if (!qword_27FF3CB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF3CB60);
  }

  return result;
}

unint64_t sub_2629E9BFC()
{
  result = qword_27FF3CB68;
  if (!qword_27FF3CB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF3CB68);
  }

  return result;
}

unint64_t sub_2629E9C54()
{
  result = qword_27FF3CB70;
  if (!qword_27FF3CB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF3CB70);
  }

  return result;
}

uint64_t sub_2629E9CA8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x644961657261 && a2 == 0xE600000000000000;
  if (v4 || (sub_262A2A878() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E656D7461657274 && a2 == 0xEB00000000644974 || (sub_262A2A878() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x74656B637562 && a2 == 0xE600000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_262A2A878();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

unint64_t sub_2629E9DC8@<X0>(Swift::Int *a1@<X0>, SIDFitness::SIDWeekday_optional *a2@<X8>)
{
  result = _s10SIDFitness10SIDWeekdayO8rawValueACSgSi_tcfC_0(*a1);
  a2->value = result;
  return result;
}

unint64_t _s10SIDFitness10SIDWeekdayO8rawValueACSgSi_tcfC_0(unint64_t result)
{
  if (result >= 7)
  {
    return 7;
  }

  return result;
}

unint64_t sub_2629E9EB8()
{
  result = qword_27FF3CB78;
  if (!qword_27FF3CB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF3CB78);
  }

  return result;
}

unint64_t sub_2629E9F1C()
{
  result = qword_27FF3CB80;
  if (!qword_27FF3CB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF3CB80);
  }

  return result;
}

unint64_t sub_2629E9F70(uint64_t a1, uint64_t a2)
{
  v35 = a2;
  v36 = a1;
  v37 = sub_262A2A108();
  v2 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v4 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_262A2A168();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3C998, &qword_262A2F8E8);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v32 - v10;
  v12 = sub_262A2A058();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_262A2A128();
  v33 = *(v16 - 8);
  v34 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 104))(v15, *MEMORY[0x277CC9830], v12);
  sub_262A2A068();
  v19 = v12;
  v20 = v5;
  (*(v13 + 8))(v15, v19);
  sub_262A2A088();
  sub_262A2A038();
  v21 = sub_262A2A048();
  (*(*(v21 - 8) + 56))(v11, 0, 1, v21);
  v22 = v35;
  sub_262A2A0D8();
  sub_262A2A148();
  sub_262A2A0F8();
  (*(v6 + 16))(v8, v22, v5);
  v23 = v36;
  sub_262A2A0F8();
  v24 = v37;
  (*(v2 + 104))(v4, *MEMORY[0x277CC99B8], v37);
  v25 = sub_262A2A118();
  (*(v2 + 8))(v4, v24);
  result = sub_262A2A078();
  v27 = v25 - result;
  if (__OFSUB__(v25, result))
  {
    __break(1u);
    goto LABEL_6;
  }

  v28 = __OFADD__(v27, 7);
  v29 = v27 + 7;
  if (v28)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  result = _s10SIDFitness10SIDWeekdayO8rawValueACSgSi_tcfC_0(v29 % 7);
  if (result != 7)
  {
    v30 = result;
    (*(v6 + 8))(v22, v20);
    v31 = sub_262A29FD8();
    (*(*(v31 - 8) + 8))(v23, v31);
    (*(v33 + 8))(v18, v34);
    return v30;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_2629EA3E0()
{
  v1 = *v0;
  v2 = v0[1];
  sub_262A2A998();
  MEMORY[0x26672F240](v1);
  MEMORY[0x26672F240](v2);
  return sub_262A2A9D8();
}

uint64_t sub_2629EA43C()
{
  v1 = v0[1];
  MEMORY[0x26672F240](*v0);
  return MEMORY[0x26672F240](v1);
}

uint64_t sub_2629EA478(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  sub_262A2A998();
  MEMORY[0x26672F240](v2);
  MEMORY[0x26672F240](v3);
  return sub_262A2A9D8();
}

uint64_t getEnumTagSinglePayload for WeekIdentifier(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for WeekIdentifier(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 16) = v3;
  return result;
}

unint64_t sub_2629EA544()
{
  result = qword_27FF3CB88;
  if (!qword_27FF3CB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF3CB88);
  }

  return result;
}

uint64_t sub_2629EA5E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_262A2A2F8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_262A2A018();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_2629EA6E4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_262A2A2F8();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_262A2A018();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t type metadata accessor for PersistentLogger(uint64_t a1)
{
  result = qword_27FF3CB90;
  if (!qword_27FF3CB90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2629EA82C(uint64_t a1)
{
  result = sub_262A2A2F8();
  if (v2 <= 0x3F)
  {
    result = sub_262A2A018();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_2629EA8F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v7 = type metadata accessor for PersistentLogger(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2629B17C0(v3, v9);

  v10 = sub_262A2A2D8();
  v11 = a3();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 136446210;
    v19 = 91;
    v20 = 0xE100000000000000;
    v21 = v13;
    sub_262A2A018();
    sub_2629B1880();
    v14 = sub_262A2A868();
    MEMORY[0x26672ECF0](v14);

    MEMORY[0x26672ECF0](8285, 0xE200000000000000);
    MEMORY[0x26672ECF0](a1, a2);
    v15 = v19;
    v16 = v20;
    sub_2629B1824(v9);
    v17 = sub_262A1D0CC(v15, v16, &v21);

    *(v12 + 4) = v17;
    _os_log_impl(&dword_2629A3000, v10, v11, "%{public}s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    MEMORY[0x26672F820](v13, -1, -1);
    MEMORY[0x26672F820](v12, -1, -1);
  }

  else
  {

    sub_2629B1824(v9);
  }
}

uint64_t sub_2629EAB04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PersistentLogger(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = type metadata accessor for PlanGenerationContext(0);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_2629EAC3C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for PersistentLogger(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  else
  {
    v11 = type metadata accessor for PlanGenerationContext(0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t type metadata accessor for HeuristicsProcessor(uint64_t a1)
{
  result = qword_27FF3CBA0;
  if (!qword_27FF3CBA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2629EADAC(uint64_t a1)
{
  type metadata accessor for PersistentLogger(319);
  if (v1 <= 0x3F)
  {
    sub_2629B1BAC(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for PlanGenerationContext(319);
      if (v3 <= 0x3F)
      {
        type metadata accessor for Dependencies();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_2629EAE60(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v26 = MEMORY[0x277D84F90];
  v25 = *(a1 + 16);
  sub_2629CD840(0, v1, 0);
  v2 = v26;
  v4 = a1 + 64;
  result = sub_262A2A648();
  v6 = v25;
  v7 = 0;
  while ((result & 0x8000000000000000) == 0 && result < 1 << *(a1 + 32))
  {
    v9 = result >> 6;
    v10 = 1 << result;
    if ((*(v4 + 8 * (result >> 6)) & (1 << result)) == 0)
    {
      goto LABEL_21;
    }

    v11 = *(*(a1 + 48) + result);
    v12 = *(a1 + 36);
    v14 = *(v26 + 16);
    v13 = *(v26 + 24);
    if (v14 >= v13 >> 1)
    {
      v23 = *(a1 + 36);
      v24 = result;
      sub_2629CD840((v13 > 1), v14 + 1, 1);
      v6 = v25;
      v12 = v23;
      result = v24;
    }

    v15 = qword_262A30AA0[v11];
    *(v26 + 16) = v14 + 1;
    *(v26 + 8 * v14 + 32) = v15;
    v8 = 1 << *(a1 + 32);
    if (result >= v8)
    {
      goto LABEL_22;
    }

    v16 = *(v4 + 8 * v9);
    if ((v16 & v10) == 0)
    {
      goto LABEL_23;
    }

    if (v12 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v17 = v16 & (-2 << (result & 0x3F));
    if (v17)
    {
      v8 = __clz(__rbit64(v17)) | result & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v18 = v9 << 6;
      v19 = v9 + 1;
      v20 = (a1 + 72 + 8 * v9);
      while (v19 < (v8 + 63) >> 6)
      {
        v22 = *v20++;
        v21 = v22;
        v18 += 64;
        ++v19;
        if (v22)
        {
          sub_2629D40E8(result, v12, 0);
          v6 = v25;
          v8 = __clz(__rbit64(v21)) + v18;
          goto LABEL_4;
        }
      }

      sub_2629D40E8(result, v12, 0);
      v6 = v25;
    }

LABEL_4:
    ++v7;
    result = v8;
    if (v7 == v6)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_2629EB0A0(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t *, void *, __n128), uint64_t a3, uint64_t a4)
{
  v15 = a1;
  v5 = v4;
  v8 = a1;
  v9 = *(a4 + 16);

  if (v9)
  {
    for (i = (a4 + 40); ; i += 2)
    {
      v11 = *i;
      v14[0] = *(i - 1);
      v14[1] = v11;

      (a2)(&v13, &v15, v14);
      if (v5)
      {
        break;
      }

      v8 = v13;
      v15 = v13;
      if (!--v9)
      {
        return v8;
      }
    }
  }

  return v8;
}

double sub_2629EB170(void (*a1)(double *__return_ptr, double *), double a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  if (v6)
  {
    v9 = *(type metadata accessor for PreprocessedUserHistoryWithMetadata(0) - 8);
    v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v11 = *(v9 + 72);
    (a1)(&v15, &v16, a4 + v10);
    if (!v4)
    {
      for (i = a4 + v11 + v10; ; i = v13)
      {
        a2 = v15;
        v16 = v15;
        if (!--v6)
        {
          break;
        }

        v13 = i + v11;
        a1(&v15, &v16);
      }
    }
  }

  return a2;
}

BOOL sub_2629EB278(char a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = (a2 + 32);
  while (2)
  {
    v6 = v3;
    if (v3-- == 0)
    {
      return v6 != 0;
    }

    v8 = 0xEA00000000003638;
    v9 = 0x3932343038373431;
    switch(*v4)
    {
      case 1:
        v8 = 0xEA00000000003937;
        goto LABEL_18;
      case 2:
        v8 = 0xEA00000000003438;
        goto LABEL_18;
      case 3:
        v8 = 0xEA00000000003238;
        goto LABEL_18;
      case 4:
        v8 = 0xEA00000000003633;
        v9 = 0x3532363037343631;
        break;
      case 5:
        v8 = 0xEA00000000003839;
        v9 = 0x3332373831363531;
        break;
      case 6:
        v8 = 0xEA00000000003738;
        goto LABEL_18;
      case 7:
        v8 = 0xEA00000000003739;
        v9 = 0x3332373831363531;
        break;
      case 8:
        v9 = 0x3932343038373431;
        v8 = 0xEA00000000003038;
        break;
      case 9:
        v8 = 0xEA00000000003639;
        v9 = 0x3332373831363531;
        break;
      case 0xA:
        v8 = 0xEA00000000003338;
        goto LABEL_18;
      case 0xB:
        v8 = 0xEA00000000003138;
        goto LABEL_18;
      case 0xC:
        v8 = 0xEA00000000003635;
        v9 = 0x3032383934393431;
        break;
      case 0xD:
        v8 = 0xEA00000000003538;
LABEL_18:
        v9 = 0x3932343038373431;
        break;
      default:
        break;
    }

    v10 = 0xEA00000000003638;
    switch(a1)
    {
      case 1:
        v10 = 0xEA00000000003937;
        goto LABEL_36;
      case 2:
        v10 = 0xEA00000000003438;
        goto LABEL_36;
      case 3:
        v10 = 0xEA00000000003238;
        goto LABEL_36;
      case 4:
        v10 = 0xEA00000000003633;
        if (v9 != 0x3532363037343631)
        {
          goto LABEL_2;
        }

        goto LABEL_37;
      case 5:
        v10 = 0xEA00000000003839;
        goto LABEL_31;
      case 6:
        v10 = 0xEA00000000003738;
        goto LABEL_36;
      case 7:
        v10 = 0xEA00000000003739;
        goto LABEL_31;
      case 8:
        v10 = 0xEA00000000003038;
        if (v9 != 0x3932343038373431)
        {
          goto LABEL_2;
        }

        goto LABEL_37;
      case 9:
        v10 = 0xEA00000000003639;
LABEL_31:
        if (v9 != 0x3332373831363531)
        {
          goto LABEL_2;
        }

        goto LABEL_37;
      case 10:
        v10 = 0xEA00000000003338;
        goto LABEL_36;
      case 11:
        v10 = 0xEA00000000003138;
        goto LABEL_36;
      case 12:
        v10 = 0xEA00000000003635;
        if (v9 != 0x3032383934393431)
        {
          goto LABEL_2;
        }

        goto LABEL_37;
      case 13:
        v10 = 0xEA00000000003538;
        goto LABEL_36;
      default:
LABEL_36:
        if (v9 != 0x3932343038373431)
        {
          goto LABEL_2;
        }

LABEL_37:
        if (v8 != v10)
        {
LABEL_2:
          v5 = sub_262A2A878();

          ++v4;
          if (v5)
          {
            return v6 != 0;
          }

          continue;
        }

        return v6 != 0;
    }
  }
}

void sub_2629EB568(uint64_t a1@<X0>, int64x2_t *a2@<X8>)
{
  v4 = v2;
  sub_262A2A6F8();

  v36[0] = 0xD00000000000001FLL;
  v36[1] = 0x8000000262A32FC0;
  v7 = sub_262A2A5A8();
  MEMORY[0x26672ECF0](v7);

  sub_2629EA8C8(0xD00000000000001FLL, 0x8000000262A32FC0);

  v8 = *(a1 + 16);
  v9 = type metadata accessor for HeuristicsProcessor(0);
  v10 = v9;
  if (v8)
  {
    v11 = v4 + *(v9 + 24);
    v12 = type metadata accessor for PlanGenerationContext(0);
    if (*(*(v11 + v12[25]) + 16) && *(*(v11 + v12[24]) + 16) && *(*(v11 + v12[23]) + 16))
    {
      v32 = v4;
      v33 = &unk_287533E10;
      v34 = &unk_287533DE8;
      v13 = MEMORY[0x28223BE20](v12);
      sub_2629EBED8(sub_2629FDCF8, &v31, a1);
      v15 = v14;
      v16 = *(v11 + *(v13 + 116));
      v17 = sub_262A272BC(&unk_287533DE8);
      *a2 = vdupq_n_s64(0x1EuLL);
      a2[1].i64[0] = v15;
      a2[1].i64[1] = 30;
      a2[2].i64[0] = v16;
      a2[2].i64[1] = v17;
      return;
    }

    v18 = *(v4 + *(v10 + 20));
    sub_2629B3A24();
    v19 = swift_allocError();
    *v20 = 7;
    LOBYTE(v36[0]) = 3;
    v21 = *(v18 + 16);
    v32 = v18;
    v33 = 0;
    v34 = MEMORY[0x28223BE20](v19);
    v35 = v36;
    MEMORY[0x28223BE20](v34);

    os_unfair_lock_lock(v21 + 4);
    sub_2629B3C0C(v22);
    if (!v3)
    {
      os_unfair_lock_unlock(v21 + 4);

      MEMORY[0x26672F6A0](v19);
      v23 = "User onboarded modalities are: ";
      v24 = 0xD000000000000036;
      v25 = 7;
LABEL_10:
      sub_2629EA8B0(v24, v23 | 0x8000000000000000);
      swift_allocError();
      *v30 = v25;
      swift_willThrow();
      return;
    }
  }

  else
  {
    v26 = *(v4 + *(v9 + 20));
    sub_2629B3A24();
    v27 = swift_allocError();
    *v28 = 5;
    LOBYTE(v36[0]) = 3;
    v21 = *(v26 + 16);
    v32 = v26;
    v33 = 0;
    v34 = MEMORY[0x28223BE20](v27);
    v35 = v36;
    MEMORY[0x28223BE20](v34);

    os_unfair_lock_lock(v21 + 4);
    sub_2629B3C0C(v29);
    if (!v3)
    {
      os_unfair_lock_unlock(v21 + 4);

      MEMORY[0x26672F6A0](v27);
      v23 = "y duration information";
      v24 = 0xD000000000000029;
      v25 = 5;
      goto LABEL_10;
    }
  }

  os_unfair_lock_unlock(v21 + 4);
  __break(1u);
}

void sub_2629EB944(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v11 = *a1;
  v10 = a1[1];

  v12 = _s10SIDFitness18SIDWorkoutModalityO8rawValueACSgSS_tcfC_0(v11, v10);
  if (v12 != 14 && (v13 = v12, v14 = a2 + *(type metadata accessor for HeuristicsProcessor(0) + 24), v15 = *(v14 + *(type metadata accessor for PlanGenerationContext(0) + 100)), *(v15 + 16)) && (v17 = sub_2629CB1E4(v13, v16), (v18 & 1) != 0))
  {
    v19 = *(*(v15 + 56) + 8 * v17);
    if (v13 > 0xBu || ((1 << v13) & 0x902) == 0)
    {
      v21 = a4;
    }

    else
    {
      v21 = a3;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3BF18, &unk_262A2B3C0);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_262A2B290;
    *(v22 + 32) = v19;
    *a5 = v11;
    a5[1] = v10;
    v23 = MEMORY[0x277D84F90];
    a5[2] = v22;
    a5[3] = v23;
    a5[4] = v23;
    a5[5] = v21;
  }

  else
  {
    v24 = *(a2 + *(type metadata accessor for HeuristicsProcessor(0) + 20));
    sub_2629B3A24();
    v25 = swift_allocError();
    *v26 = 6;
    v27 = *(v24 + 16);
    v29 = MEMORY[0x28223BE20](v25);
    MEMORY[0x28223BE20](v29);

    os_unfair_lock_lock(v27 + 4);
    sub_2629B3C0C(v28);
    os_unfair_lock_unlock(v27 + 4);
    if (v5)
    {
      __break(1u);
    }

    else
    {

      MEMORY[0x26672F6A0](v25);
      sub_262A2A6F8();
      MEMORY[0x26672ECF0](0xD000000000000023, 0x8000000262A33050);
      MEMORY[0x26672ECF0](v11, v10);
      MEMORY[0x26672ECF0](0xD000000000000014, 0x8000000262A33080);
      sub_2629EA8B0(0, 0xE000000000000000);

      *(a5 + 1) = 0u;
      *(a5 + 2) = 0u;
      *a5 = 0u;
    }
  }
}

void *sub_2629EBBF4(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3CBE8, &unk_262A30A90);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v23 - v7;
  v9 = type metadata accessor for PreprocessedUserHistoryWithMetadata(0);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v29 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v27 = &v23 - v13;
  v14 = *(a3 + 16);
  if (!v14)
  {
    return MEMORY[0x277D84F90];
  }

  v15 = *(type metadata accessor for SIDArchivedSession(0) - 8);
  v24 = v10;
  v16 = (v10 + 48);
  v17 = a3 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
  v28 = *(v15 + 72);
  v18 = MEMORY[0x277D84F90];
  v25 = v9;
  v26 = a1;
  while (1)
  {
    a1(v17);
    if (v3)
    {
      break;
    }

    if ((*v16)(v8, 1, v9) == 1)
    {
      sub_2629ADF2C(v8, &qword_27FF3CBE8, &unk_262A30A90);
    }

    else
    {
      v19 = v27;
      sub_2629FF04C(v8, v27);
      sub_2629FF04C(v19, v29);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v18 = sub_2629A8FBC(0, v18[2] + 1, 1, v18);
      }

      v21 = v18[2];
      v20 = v18[3];
      if (v21 >= v20 >> 1)
      {
        v18 = sub_2629A8FBC((v20 > 1), v21 + 1, 1, v18);
      }

      v18[2] = v21 + 1;
      sub_2629FF04C(v29, v18 + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v21);
      v9 = v25;
      a1 = v26;
    }

    v17 += v28;
    if (!--v14)
    {
      return v18;
    }
  }

  return v18;
}

void sub_2629EBED8(void (*a1)(uint64_t *__return_ptr, void *, __n128), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = a3;
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;

  v11 = 0;
  v34 = MEMORY[0x277D84F90];
  v22 = v5;
  if (v9)
  {
LABEL_10:
    while (1)
    {
      v13 = (*(v5 + 48) + ((v11 << 10) | (16 * __clz(__rbit64(v9)))));
      v14 = v13[1];
      v33[0] = *v13;
      v33[1] = v14;

      (a1)(&v27, v33);
      if (v4)
      {
        break;
      }

      v9 &= v9 - 1;

      v16 = v27;
      v15 = v28;
      if (v28)
      {
        v17 = v29;
        v23 = v30;
        v24 = v31;
        v25 = v32;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v34 = sub_2629A9020(0, *(v34 + 2) + 1, 1, v34);
        }

        v19 = *(v34 + 2);
        v18 = *(v34 + 3);
        if (v19 >= v18 >> 1)
        {
          v34 = sub_2629A9020((v18 > 1), v19 + 1, 1, v34);
        }

        v20 = v34;
        *(v34 + 2) = v19 + 1;
        v21 = &v20[48 * v19];
        *(v21 + 4) = v16;
        *(v21 + 5) = v15;
        *(v21 + 6) = v17;
        *(v21 + 7) = v23;
        v4 = 0;
        *(v21 + 8) = v24;
        *(v21 + 9) = v25;
        v5 = v22;
        if (!v9)
        {
          goto LABEL_6;
        }
      }

      else
      {
        sub_2629FDD18(v27, 0, v29, v30, v31, v32);
        if (!v9)
        {
          goto LABEL_6;
        }
      }
    }
  }

  else
  {
LABEL_6:
    while (1)
    {
      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v12 >= v10)
      {

        return;
      }

      v9 = *(v6 + 8 * v12);
      ++v11;
      if (v9)
      {
        v11 = v12;
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

uint64_t sub_2629EC0E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 168) = a3;
  *(v4 + 176) = v3;
  *(v4 + 160) = a2;
  *(v4 + 184) = *a1;
  *(v4 + 200) = *(a1 + 16);
  *(v4 + 208) = *(a1 + 24);
  *(v4 + 224) = *(a1 + 40);
  return MEMORY[0x2822009F8](sub_2629EC12C, 0, 0);
}

uint64_t sub_2629EC12C()
{
  v2 = *(v0 + 216);
  v1 = *(v0 + 224);
  v4 = *(v0 + 200);
  v3 = *(v0 + 208);
  v5 = *(v0 + 184);
  v6 = *(v0 + 192);
  v7 = *(v0 + 176);
  *(v0 + 337) = _s10SIDFitness23SIDWorkoutDailyDurationO8rawValueACSgSi_tcfC_0(v5);
  sub_262A2A6F8();

  v8 = SIDWorkoutPlanScaffold.description.getter();
  MEMORY[0x26672ECF0](v8);

  sub_2629EA8C8(0xD00000000000002ELL, 0x8000000262A32F60);

  v9 = *(v7 + *(type metadata accessor for HeuristicsProcessor(0) + 20));
  *(v0 + 232) = v9;
  *(v0 + 16) = v5;
  *(v0 + 24) = v6;
  *(v0 + 32) = v4;
  *(v0 + 40) = v3;
  *(v0 + 48) = v2;
  *(v0 + 56) = v1;
  v10 = swift_task_alloc();
  *(v0 + 240) = v10;
  *v10 = v0;
  v10[1] = sub_2629EC2B4;
  v11 = *(v0 + 160);
  v12 = *(v0 + 168);

  return sub_262A295F0(v9, v0 + 16, v11, v12);
}

uint64_t sub_2629EC2B4(char a1)
{
  v4 = *v2;
  *(*v2 + 248) = v1;

  if (v1)
  {
    v5 = sub_2629ECD60;
  }

  else
  {
    *(v4 + 338) = a1 & 1;
    v5 = sub_2629EC3E0;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2629EC3E0()
{
  v72 = v1;
  v2 = *(v1 + 337);
  if (v2 == 6)
  {
    v2 = 2;
  }

  v3 = MEMORY[0x277D84F90];
  if (*(v1 + 338) != 1)
  {
    if (v2 <= 2)
    {
      if (!v2)
      {
        *&v69[0] = MEMORY[0x277D84F90];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_2629CD8C0(0, *(v3 + 16) + 1, 1);
          v3 = *&v69[0];
        }

        v9 = *(v3 + 16);
        v8 = *(v3 + 24);
        v0 = v9 + 1;
        if (v9 < v8 >> 1)
        {
          goto LABEL_21;
        }

        goto LABEL_95;
      }

      if (v2 == 1)
      {
        goto LABEL_22;
      }

      goto LABEL_27;
    }

    if (v2 == 3)
    {
      goto LABEL_32;
    }

    if (v2 == 4)
    {
      goto LABEL_37;
    }

    goto LABEL_42;
  }

  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v6 = 0;
      v7 = 0;
      v4 = 1;
      v5 = 1;
    }

    else if (v2 == 4)
    {
      v7 = 0;
      v4 = 1;
      v5 = 1;
      v6 = 1;
    }

    else
    {
      v4 = 1;
      v5 = 1;
      v6 = 1;
      v7 = 1;
    }
  }

  else
  {
    if (!v2)
    {
      goto LABEL_76;
    }

    if (v2 == 1)
    {
      v4 = 0;
      v5 = 0;
      v6 = 0;
      v7 = 0;
    }

    else
    {
      v5 = 0;
      v6 = 0;
      v7 = 0;
      v4 = 1;
    }
  }

  *&v69[0] = MEMORY[0x277D84F90];
  sub_2629CD8C0(0, 1, 1);
  v3 = *&v69[0];
  v33 = *(*&v69[0] + 16);
  v32 = *(*&v69[0] + 24);
  v0 = v33 + 1;
  if (v33 >= v32 >> 1)
  {
    sub_2629CD8C0((v32 > 1), v33 + 1, 1);
    v3 = *&v69[0];
  }

  *(v3 + 16) = v0;
  *(v3 + v33 + 32) = 0;
  if (v4)
  {
    *&v69[0] = v3;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_2629CD8C0(0, *(v3 + 16) + 1, 1);
      v3 = *&v69[0];
    }

    v35 = *(v3 + 16);
    v34 = *(v3 + 24);
    v0 = v35 + 1;
    if (v35 >= v34 >> 1)
    {
      sub_2629CD8C0((v34 > 1), v35 + 1, 1);
      v3 = *&v69[0];
    }

    *(v3 + 16) = v0;
    *(v3 + v35 + 32) = 1;
    if ((v5 & 1) == 0)
    {
LABEL_57:
      if (v6)
      {
        goto LABEL_58;
      }

LABEL_70:
      if (!v7)
      {
        goto LABEL_76;
      }

      goto LABEL_71;
    }
  }

  else if (!v5)
  {
    goto LABEL_57;
  }

  *&v69[0] = v3;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_2629CD8C0(0, *(v3 + 16) + 1, 1);
    v3 = *&v69[0];
  }

  v39 = *(v3 + 16);
  v38 = *(v3 + 24);
  v0 = v39 + 1;
  if (v39 >= v38 >> 1)
  {
    sub_2629CD8C0((v38 > 1), v39 + 1, 1);
    v3 = *&v69[0];
  }

  *(v3 + 16) = v0;
  *(v3 + v39 + 32) = 2;
  if ((v6 & 1) == 0)
  {
    goto LABEL_70;
  }

LABEL_58:
  *&v69[0] = v3;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_2629CD8C0(0, *(v3 + 16) + 1, 1);
    v3 = *&v69[0];
  }

  v37 = *(v3 + 16);
  v36 = *(v3 + 24);
  v0 = v37 + 1;
  if (v37 >= v36 >> 1)
  {
    sub_2629CD8C0((v36 > 1), v37 + 1, 1);
    v3 = *&v69[0];
  }

  *(v3 + 16) = v0;
  *(v3 + v37 + 32) = 3;
  if (v7)
  {
LABEL_71:
    *&v69[0] = v3;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_2629CD8C0(0, *(v3 + 16) + 1, 1);
      v3 = *&v69[0];
    }

    v41 = *(v3 + 16);
    v40 = *(v3 + 24);
    v0 = v41 + 1;
    if (v41 >= v40 >> 1)
    {
      sub_2629CD8C0((v40 > 1), v41 + 1, 1);
      v3 = *&v69[0];
    }

    *(v3 + 16) = v0;
    *(v3 + v41 + 32) = 4;
  }

LABEL_76:
  v9 = *(v1 + 248);
  *&v69[0] = v3;

  sub_2629F6724(v69);
  if (v9)
  {
LABEL_77:
    MEMORY[0x26672F6A0](v9);
  }

  v43 = *&v69[0];
  *(v1 + 256) = *&v69[0];
  v44 = *(v43 + 16);
  if (*(v1 + 337) == 6)
  {
    v45 = 2;
  }

  else
  {
    v45 = *(v1 + 337);
  }

  *(v1 + 264) = v44;
  *(v1 + 272) = 0;
  *(v1 + 339) = v45;
  if (v44)
  {
    v8 = *(v43 + 16);
    if (!v8)
    {
      while (1)
      {
        __break(1u);
LABEL_95:
        sub_2629CD8C0((v8 > 1), v0, 1);
        v3 = *&v69[0];
LABEL_21:
        *(v3 + 16) = v0;
        *(v3 + v9 + 32) = 1;
LABEL_22:
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v69[0] = v3;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_2629CD8C0(0, *(v3 + 16) + 1, 1);
          v3 = *&v69[0];
        }

        v12 = *(v3 + 16);
        v11 = *(v3 + 24);
        if (v12 >= v11 >> 1)
        {
          sub_2629CD8C0((v11 > 1), v12 + 1, 1);
          v3 = *&v69[0];
        }

        *(v3 + 16) = v12 + 1;
        *(v3 + v12 + 32) = 2;
LABEL_27:
        v13 = swift_isUniquelyReferenced_nonNull_native();
        *&v69[0] = v3;
        if ((v13 & 1) == 0)
        {
          sub_2629CD8C0(0, *(v3 + 16) + 1, 1);
          v3 = *&v69[0];
        }

        v15 = *(v3 + 16);
        v14 = *(v3 + 24);
        if (v15 >= v14 >> 1)
        {
          sub_2629CD8C0((v14 > 1), v15 + 1, 1);
          v3 = *&v69[0];
        }

        *(v3 + 16) = v15 + 1;
        *(v3 + v15 + 32) = 3;
LABEL_32:
        v16 = swift_isUniquelyReferenced_nonNull_native();
        *&v69[0] = v3;
        if ((v16 & 1) == 0)
        {
          sub_2629CD8C0(0, *(v3 + 16) + 1, 1);
          v3 = *&v69[0];
        }

        v18 = *(v3 + 16);
        v17 = *(v3 + 24);
        if (v18 >= v17 >> 1)
        {
          sub_2629CD8C0((v17 > 1), v18 + 1, 1);
          v3 = *&v69[0];
        }

        *(v3 + 16) = v18 + 1;
        *(v3 + v18 + 32) = 4;
LABEL_37:
        v19 = swift_isUniquelyReferenced_nonNull_native();
        *&v69[0] = v3;
        if ((v19 & 1) == 0)
        {
          sub_2629CD8C0(0, *(v3 + 16) + 1, 1);
          v3 = *&v69[0];
        }

        v21 = *(v3 + 16);
        v20 = *(v3 + 24);
        v0 = v21 + 1;
        if (v21 >= v20 >> 1)
        {
          sub_2629CD8C0((v20 > 1), v21 + 1, 1);
          v3 = *&v69[0];
        }

        *(v3 + 16) = v0;
        *(v3 + v21 + 32) = 5;
LABEL_42:
        v9 = *(v1 + 248);
        *&v69[0] = v3;

        sub_2629F68C0(v69);
        if (v9)
        {
          goto LABEL_77;
        }

        v22 = *&v69[0];
        *(v1 + 296) = *&v69[0];
        v23 = *(v22 + 16);
        *(v1 + 304) = v23;
        *(v1 + 312) = 0;
        if (!v23)
        {
          v54 = *(v1 + 232);

          sub_2629B3A24();
          v55 = swift_allocError();
          *v56 = 4;
          *(v1 + 336) = 7;
          v57 = *(v54 + 16);
          v58 = swift_task_alloc();
          v58[2] = v54;
          v58[3] = 0;
          v58[4] = v55;
          v58[5] = v1 + 336;
          v59 = swift_task_alloc();
          *(v59 + 16) = sub_2629B3A78;
          *(v59 + 24) = v58;

          os_unfair_lock_lock(v57 + 4);
          sub_2629B3A9C(v60);
          os_unfair_lock_unlock(v57 + 4);

          v62 = *(v1 + 216);
          v61 = *(v1 + 224);
          v67 = *(v1 + 184);
          v68 = *(v1 + 200);

          MEMORY[0x26672F6A0](v55);
          *&v69[0] = 0;
          *(&v69[0] + 1) = 0xE000000000000000;
          sub_262A2A6F8();

          v69[0] = v67;
          v69[1] = v68;
          v70 = v62;
          v71 = v61;
          v63 = SIDWorkoutPlanScaffold.description.getter();
          MEMORY[0x26672ECF0](v63);

          sub_2629EA8B0(0xD00000000000002BLL, 0x8000000262A32F90);

          swift_allocError();
          *v64 = 4;
          swift_willThrow();
          v65 = *(v1 + 8);

          return v65();
        }

        v8 = *(v22 + 16);
        if (v8)
        {
          v24 = *(v22 + 32);
          *(v1 + 342) = v24;
          v25 = qword_262A30AE8[v24];
          v26 = *(v1 + 216);
          v27 = *(v1 + 224);
          v28 = *(v1 + 200);
          *(v1 + 88) = v25;
          *(v1 + 96) = v26;
          *(v1 + 64) = v25;
          v29 = v1 + 64;
          *(v1 + 72) = v25;
          *(v1 + 80) = v28;
          *(v1 + 104) = v27;

          v30 = swift_task_alloc();
          *(v1 + 320) = v30;
          *v30 = v1;
          v31 = sub_2629ED0AC;
          goto LABEL_84;
        }

        __break(1u);
      }
    }

    v46 = *(v43 + 32);
    *(v1 + 340) = v46;
    v47 = qword_262A30AE8[v46];
    v48 = *(v1 + 216);
    v49 = *(v1 + 224);
    v50 = *(v1 + 200);
    *(v1 + 136) = v47;
    *(v1 + 144) = v48;
    *(v1 + 112) = v47;
    v29 = v1 + 112;
    *(v1 + 120) = v47;
    *(v1 + 128) = v50;
    *(v1 + 152) = v49;

    v30 = swift_task_alloc();
    *(v1 + 280) = v30;
    *v30 = v1;
    v31 = sub_2629ECD78;
LABEL_84:
    v30[1] = v31;
    v51 = *(v1 + 232);
    v52 = *(v1 + 160);
    v53 = *(v1 + 168);

    return sub_262A295F0(v51, v29, v52, v53);
  }

  else
  {

    v66 = *(v1 + 8);

    return v66(v45);
  }
}

uint64_t sub_2629ECD78(char a1)
{
  v4 = *v2;
  *(*v2 + 288) = v1;

  if (v1)
  {

    v5 = sub_2629ED03C;
  }

  else
  {

    *(v4 + 341) = a1 & 1;
    v5 = sub_2629ECEC0;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

void sub_2629ECEC0()
{
  if (*(v0 + 341))
  {
    v1 = *(v0 + 340);
    v2 = *(v0 + 264);
    v3 = *(v0 + 272) + 1;
    *(v0 + 272) = v3;
    *(v0 + 339) = v1;
    if (v3 != v2)
    {
      v4 = *(v0 + 256);
      if (v3 >= *(v4 + 16))
      {
        __break(1u);
      }

      else
      {
        v5 = *(v4 + v3 + 32);
        *(v0 + 340) = v5;
        v6 = qword_262A30AE8[v5];
        v7 = *(v0 + 216);
        v8 = *(v0 + 224);
        v9 = *(v0 + 200);
        *(v0 + 136) = v6;
        *(v0 + 144) = v7;
        *(v0 + 112) = v6;
        *(v0 + 120) = v6;
        *(v0 + 128) = v9;
        *(v0 + 152) = v8;

        v10 = swift_task_alloc();
        *(v0 + 280) = v10;
        *v10 = v0;
        v10[1] = sub_2629ECD78;
        v11 = *(v0 + 232);
        v12 = *(v0 + 160);
        v13 = *(v0 + 168);

        sub_262A295F0(v11, v0 + 112, v12, v13);
      }

      return;
    }
  }

  else
  {
    v1 = *(v0 + 339);
  }

  v14 = *(v0 + 8);

  v14(v1);
}

uint64_t sub_2629ED03C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2629ED0AC(char a1)
{
  v4 = *v2;
  *(*v2 + 328) = v1;

  if (v1)
  {

    v5 = sub_2629ED55C;
  }

  else
  {

    *(v4 + 343) = a1 & 1;
    v5 = sub_2629ED1F4;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2629ED1F4()
{
  if (*(v0 + 343))
  {
    v1 = *(v0 + 342);

    v2 = *(v0 + 8);

    return v2(v1);
  }

  else
  {
    v4 = *(v0 + 328);
    v5 = *(v0 + 304);
    v6 = *(v0 + 312) + 1;
    *(v0 + 312) = v6;
    result = *(v0 + 296);
    if (v6 == v5)
    {
      v7 = *(v0 + 232);

      sub_2629B3A24();
      v8 = swift_allocError();
      *v9 = 4;
      *(v0 + 336) = 7;
      v10 = *(v7 + 16);
      v11 = swift_task_alloc();
      v11[2] = v7;
      v11[3] = 0;
      v11[4] = v8;
      v11[5] = v0 + 336;
      v12 = swift_task_alloc();
      *(v12 + 16) = sub_2629B3A78;
      *(v12 + 24) = v11;

      os_unfair_lock_lock(v10 + 4);
      sub_2629B3A9C(v13);
      os_unfair_lock_unlock(v10 + 4);

      if (!v4)
      {

        MEMORY[0x26672F6A0](v8);
        sub_262A2A6F8();

        v23 = SIDWorkoutPlanScaffold.description.getter();
        MEMORY[0x26672ECF0](v23);

        sub_2629EA8B0(0xD00000000000002BLL, 0x8000000262A32F90);

        swift_allocError();
        *v24 = 4;
        swift_willThrow();
        v25 = *(v0 + 8);

        return v25();
      }
    }

    else if (v6 >= *(result + 16))
    {
      __break(1u);
    }

    else
    {
      v14 = *(result + v6 + 32);
      *(v0 + 342) = v14;
      v15 = qword_262A30AE8[v14];
      v16 = *(v0 + 216);
      v17 = *(v0 + 224);
      v18 = *(v0 + 200);
      *(v0 + 88) = v15;
      *(v0 + 96) = v16;
      *(v0 + 64) = v15;
      *(v0 + 72) = v15;
      *(v0 + 80) = v18;
      *(v0 + 104) = v17;

      v19 = swift_task_alloc();
      *(v0 + 320) = v19;
      *v19 = v0;
      v19[1] = sub_2629ED0AC;
      v20 = *(v0 + 232);
      v21 = *(v0 + 160);
      v22 = *(v0 + 168);

      return sub_262A295F0(v20, v0 + 64, v21, v22);
    }
  }

  return result;
}

uint64_t sub_2629ED55C()
{

  v1 = *(v0 + 8);

  return v1();
}

unint64_t *sub_2629ED5CC(uint64_t a1)
{
  v3 = type metadata accessor for PersistentLogger(0);
  MEMORY[0x28223BE20](v3 - 8);
  v45 = v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = 0;
  v48 = 0xE000000000000000;
  sub_262A2A6F8();
  MEMORY[0x26672ECF0](0xD00000000000001FLL, 0x8000000262A33340);
  v46 = *(a1 + 16);
  v5 = sub_262A2A868();
  MEMORY[0x26672ECF0](v5);

  MEMORY[0x26672ECF0](0xD000000000000030, 0x8000000262A33360);
  sub_2629EA8C8(v47, v48);

  v6 = v1 + *(type metadata accessor for HeuristicsProcessor(0) + 24);
  v7 = type metadata accessor for PlanGenerationContext(0);
  v8 = *(v6 + v7[12]);
  v9 = sub_2629EDEB4(v8, v1, a1);
  if (v9[2])
  {
    v47 = 0;
    v48 = 0xE000000000000000;
    sub_262A2A6F8();
    v10 = "fying modalities";
    v11 = 0xD000000000000018;
LABEL_5:
    MEMORY[0x26672ECF0](v11, v10 | 0x8000000000000000);
    v46 = v8;
    v12 = sub_262A2A868();
    MEMORY[0x26672ECF0](v12);

    MEMORY[0x26672ECF0](0x2D20297379616420, 0xEF20646E756F6620);
    v46 = v9[2];
    v13 = sub_262A2A868();
    MEMORY[0x26672ECF0](v13);

    MEMORY[0x26672ECF0](0xD000000000000016, 0x8000000262A333C0);
    sub_2629EA8C8(v47, v48);

    goto LABEL_6;
  }

  v8 = *(v6 + v7[8]);
  v9 = sub_2629EDEB4(v8, v1, a1);
  if (v9[2])
  {
    v47 = 0;
    v48 = 0xE000000000000000;
    sub_262A2A6F8();
    v10 = " modalities selected: ";
    v11 = 0xD000000000000019;
    goto LABEL_5;
  }

  v47 = 0;
  v48 = 0xE000000000000000;
  sub_262A2A6F8();

  v47 = 0xD000000000000021;
  v48 = 0x8000000262A33460;
  v46 = *(v6 + v7[9]);
  v41 = v46;
  v42 = sub_262A2A868();
  MEMORY[0x26672ECF0](v42);

  MEMORY[0x26672ECF0](0x297379616420, 0xE600000000000000);
  sub_2629EA8C8(v47, v48);

  v9 = sub_2629EDEB4(v41, v1, a1);
LABEL_6:
  v47 = 0;
  v48 = 0xE000000000000000;
  sub_262A2A6F8();

  v47 = 0xD00000000000001BLL;
  v48 = 0x8000000262A333E0;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3CBD8, &unk_262A30A70);
  sub_2629C24D0();
  v14 = sub_262A2A358();
  MEMORY[0x26672ECF0](v14);

  sub_2629EA8C8(v47, v48);

  MEMORY[0x28223BE20](v15);
  v43[-2] = v1;
  v44 = v9;
  v47 = sub_2629FE088(v9, sub_2629FF158);

  sub_2629F6A10(&v47);

  v16 = *(v6 + v7[14]);
  if ((v16 & 0x8000000000000000) != 0)
  {
    __break(1u);
    MEMORY[0x26672F6A0](0);

    __break(1u);
    JUMPOUT(0x2629EDE7CLL);
  }

  v43[1] = 0;
  v17 = v47;
  if (*(v47 + 16) >= v16)
  {
    v18 = v16;
  }

  else
  {
    v18 = *(v47 + 16);
  }

  if (v16 && v18)
  {
    v47 = MEMORY[0x277D84F90];
    sub_2629CD8A0(0, v18, 0);
    v19 = 32;
    v20 = v47;
    do
    {
      v21 = *(v17 + v19);
      v47 = v20;
      v23 = *(v20 + 2);
      v22 = *(v20 + 3);
      if (v23 >= v22 >> 1)
      {
        sub_2629CD8A0((v22 > 1), v23 + 1, 1);
        v20 = v47;
      }

      *(v20 + 2) = v23 + 1;
      v20[v23 + 32] = v21;
      v19 += 16;
      --v18;
    }

    while (v18);
    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
    v20 = MEMORY[0x277D84F90];
  }

  v47 = 0;
  v48 = 0xE000000000000000;
  sub_262A2A6F8();

  v47 = 0xD00000000000001FLL;
  v48 = 0x8000000262A33400;
  v24 = MEMORY[0x26672EDD0](v20, &type metadata for SIDWorkoutModality);
  MEMORY[0x26672ECF0](v24);

  sub_2629EA8C8(v47, v48);

  sub_2629FEF84(v1, v45, type metadata accessor for PersistentLogger);
  v47 = 0;
  v48 = 0xE000000000000000;
  sub_262A2A6F8();

  v47 = 544239444;
  v48 = 0xE400000000000000;
  v46 = v16;
  v25 = sub_262A2A868();
  MEMORY[0x26672ECF0](v25);

  MEMORY[0x26672ECF0](0xD000000000000016, 0x8000000262A33420);
  v26 = *(v20 + 2);
  v27 = MEMORY[0x277D84F90];
  if (v26)
  {
    v46 = MEMORY[0x277D84F90];
    sub_2629CD800(0, v26, 0);
    v28 = (v20 + 32);
    v27 = v46;
    do
    {
      v29 = *v28++;
      v30 = 0xEA00000000003638;
      v31 = 0x3932343038373431;
      switch(v29)
      {
        case 1:
          v30 = 0xEA00000000003937;
          goto LABEL_33;
        case 2:
          v30 = 0xEA00000000003438;
          goto LABEL_33;
        case 3:
          v30 = 0xEA00000000003238;
          goto LABEL_33;
        case 4:
          v30 = 0xEA00000000003633;
          v31 = 0x3532363037343631;
          break;
        case 5:
          v30 = 0xEA00000000003839;
          v31 = 0x3332373831363531;
          break;
        case 6:
          v30 = 0xEA00000000003738;
          goto LABEL_33;
        case 7:
          v30 = 0xEA00000000003739;
          v31 = 0x3332373831363531;
          break;
        case 8:
          v31 = 0x3932343038373431;
          v30 = 0xEA00000000003038;
          break;
        case 9:
          v30 = 0xEA00000000003639;
          v31 = 0x3332373831363531;
          break;
        case 10:
          v30 = 0xEA00000000003338;
          goto LABEL_33;
        case 11:
          v30 = 0xEA00000000003138;
          goto LABEL_33;
        case 12:
          v30 = 0xEA00000000003635;
          v31 = 0x3032383934393431;
          break;
        case 13:
          v30 = 0xEA00000000003538;
LABEL_33:
          v31 = 0x3932343038373431;
          break;
        default:
          break;
      }

      v46 = v27;
      v33 = *(v27 + 2);
      v32 = *(v27 + 3);
      if (v33 >= v32 >> 1)
      {
        sub_2629CD800((v32 > 1), v33 + 1, 1);
        v27 = v46;
      }

      *(v27 + 2) = v33 + 1;
      v34 = v27 + 16 * v33;
      *(v34 + 32) = v31;
      *(v34 + 40) = v30;
      --v26;
    }

    while (v26);
  }

  v35 = MEMORY[0x26672EDD0](v27, MEMORY[0x277D837D0]);
  v37 = v36;

  MEMORY[0x26672ECF0](v35, v37);

  v38 = v45;
  sub_2629EA8C8(v47, v48);

  sub_2629FEFEC(v38, type metadata accessor for PersistentLogger);

  v39 = sub_2629FE458(v44, v20);

  swift_bridgeObjectRelease_n();
  return v39;
}

unint64_t *sub_2629EDEB4(void (*a1)(char *, uint64_t), uint64_t a2, uint64_t a3)
{
  v5 = sub_2629DBFF0(a2, a1, a3);
  sub_262A2A6F8();

  v11[6] = 0x20646E756F46;
  v11[7] = 0xE600000000000000;
  v6 = sub_262A2A868();
  MEMORY[0x26672ECF0](v6);

  MEMORY[0x26672ECF0](0xD00000000000001ALL, 0x8000000262A33490);
  v11[5] = a1;
  v7 = sub_262A2A868();
  MEMORY[0x26672ECF0](v7);

  MEMORY[0x26672ECF0](0x6F6C207379616420, 0xEE006B6361626B6FLL);
  sub_2629EA8C8(0x20646E756F46, 0xE600000000000000);

  v8 = sub_2629FDD88(v5);

  v11[2] = a2;
  v9 = sub_2629FCB50(sub_2629FF1D8, v11, v8);

  return v9;
}

double sub_2629EE048@<D0>(double *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, double *a4@<X8>)
{
  v8 = sub_262A29FD8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  v13 = a3 + *(type metadata accessor for HeuristicsProcessor(0) + 24);
  v14 = *(v13 + *(type metadata accessor for PlanGenerationContext(0) + 104));
  sub_262A29FC8();
  sub_2629DC8A8(a2, v11, v14);
  v16 = v15;
  (*(v9 + 8))(v11, v8);
  result = v12 + v16;
  *a4 = v12 + v16;
  return result;
}

uint64_t sub_2629EE178(uint64_t *a1, unsigned __int8 *a2, uint64_t a3)
{
  v138 = a3;
  v151 = *MEMORY[0x277D85DE8];
  v7 = type metadata accessor for PersistentLogger(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v132 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for PreprocessedUserHistoryWithMetadata(0);
  v11 = MEMORY[0x28223BE20](v10);
  v140 = &v132 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v11);
  v16 = &v132 - v15;
  v17 = *(a2 + 1);
  v18 = *(v17 + 16);
  if (!v18)
  {
    return result;
  }

  v134 = a1;
  v135 = v3;
  v132 = result;
  v133 = v9;
  v137 = *a2;
  isUniquelyReferenced_nonNull_native = *(result + 56);
  v20 = *(v14 + 80);
  v136 = v17;
  v21 = v17 + ((v20 + 32) & ~v20);
  v143 = *(v14 + 72);
  v22 = MEMORY[0x277D84F90];
  v23 = v21;
  v142 = v18;
  do
  {
    v24 = type metadata accessor for PreprocessedUserHistoryWithMetadata;
    sub_2629FEF84(v23, v16, type metadata accessor for PreprocessedUserHistoryWithMetadata);
    v25 = v16[isUniquelyReferenced_nonNull_native];
    sub_2629FEFEC(v16, type metadata accessor for PreprocessedUserHistoryWithMetadata);
    if (v25 != 7)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v22 = sub_2629A96D4(0, *(v22 + 16) + 1, 1, v22);
      }

      v4 = *(v22 + 16);
      v26 = *(v22 + 24);
      v24 = v4 + 1;
      if (v4 >= v26 >> 1)
      {
        v22 = sub_2629A96D4((v26 > 1), v4 + 1, 1, v22);
      }

      *(v22 + 16) = v24;
      *(v22 + v4 + 32) = v25;
    }

    v23 += v143;
    --v18;
  }

  while (v18);
  v27 = sub_2629AD5F4(MEMORY[0x277D84F90]);
  v141 = *(v22 + 16);
  if (v141)
  {
    v4 = 0;
    v139 = v22 + 32;
    while (1)
    {
      if (v4 >= *(v22 + 16))
      {
        goto LABEL_122;
      }

      v28 = *(v139 + v4);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v146 = v27;
      v24 = sub_2629CB444(v28);
      v30 = *(v27 + 2);
      v31 = (v29 & 1) == 0;
      v32 = v30 + v31;
      if (__OFADD__(v30, v31))
      {
        goto LABEL_123;
      }

      LOBYTE(v18) = v29;
      if (*(v27 + 3) < v32)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        if ((v29 & 1) == 0)
        {
          goto LABEL_20;
        }
      }

      else
      {
        sub_2629CEDEC();
        v27 = v146;
        if ((v18 & 1) == 0)
        {
          goto LABEL_20;
        }
      }

LABEL_22:
      v38 = *(v27 + 7);
      v39 = *(v38 + 8 * v24);
      v36 = __OFADD__(v39, 1);
      v40 = v39 + 1;
      if (v36)
      {
        goto LABEL_124;
      }

      ++v4;
      *(v38 + 8 * v24) = v40;
      if (v141 == v4)
      {
        goto LABEL_27;
      }
    }

    sub_2629D18E0(v32, isUniquelyReferenced_nonNull_native);
    v27 = v146;
    v33 = sub_2629CB444(v28);
    if ((v18 & 1) != (v34 & 1))
    {
      sub_262A2A938();
      __break(1u);
      goto LABEL_136;
    }

    v24 = v33;
    if (v18)
    {
      goto LABEL_22;
    }

LABEL_20:
    *&v27[8 * (v24 >> 6) + 64] |= 1 << v24;
    *(*(v27 + 6) + v24) = v28;
    *(*(v27 + 7) + 8 * v24) = 0;
    v35 = *(v27 + 2);
    v36 = __OFADD__(v35, 1);
    v37 = v35 + 1;
    if (v36)
    {
      goto LABEL_127;
    }

    *(v27 + 2) = v37;
    goto LABEL_22;
  }

LABEL_27:

  isUniquelyReferenced_nonNull_native = *(v136 + 16);
  v41 = 1 << v27[32];
  v42 = -1;
  if (v41 < 64)
  {
    v42 = ~(-1 << v41);
  }

  v43 = v42 & *(v27 + 8);
  if (v43)
  {
    v44 = 0;
    v45 = __clz(__rbit64(v43));
    v46 = (v43 - 1) & v43;
    v47 = (v41 + 63) >> 6;
  }

  else
  {
    v48 = 0;
    v49 = 0;
    v47 = (v41 + 63) >> 6;
    do
    {
      if (v47 - 1 == v49)
      {
        goto LABEL_48;
      }

      v44 = v49 + 1;
      v50 = *&v27[8 * v49 + 72];
      v48 -= 64;
      ++v49;
    }

    while (!v50);
    v46 = (v50 - 1) & v50;
    v45 = __clz(__rbit64(v50)) - v48;
  }

  v51 = *(v27 + 6);
  v52 = *(v27 + 7);
  v53 = *(v51 + v45);
  v54 = *(v52 + 8 * v45);
  v55 = v54;
  if (!v46)
  {
    goto LABEL_37;
  }

  while (2)
  {
    v56 = v44;
LABEL_41:
    v57 = __clz(__rbit64(v46));
    v46 &= v46 - 1;
    v58 = v57 | (v56 << 6);
    v59 = *(v51 + v58);
    v60 = *(v52 + 8 * v58);
    if (v55 < v60)
    {
      v53 = v59;
      v54 = v60;
    }

    if (v55 <= v60)
    {
      v55 = v60;
    }

    if (v46)
    {
      continue;
    }

    break;
  }

  while (1)
  {
LABEL_37:
    v56 = v44 + 1;
    if (__OFADD__(v44, 1))
    {
      __break(1u);
LABEL_122:
      __break(1u);
LABEL_123:
      __break(1u);
LABEL_124:
      __break(1u);
      goto LABEL_125;
    }

    if (v56 >= v47)
    {
      break;
    }

    v46 = *&v27[8 * v56 + 64];
    ++v44;
    if (v46)
    {
      v44 = v56;
      goto LABEL_41;
    }
  }

  v61 = v54 / isUniquelyReferenced_nonNull_native;
  v62 = v138 + *(type metadata accessor for HeuristicsProcessor(0) + 24);
  if (*(v62 + *(type metadata accessor for PlanGenerationContext(0) + 88)) <= v61)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3BF18, &unk_262A2B3C0);
    v72 = swift_allocObject();
    *(v72 + 16) = xmmword_262A2B290;
    v73 = qword_262A30AA0[v53];
    *(v72 + 32) = v73;
    v74 = v134;
    v75 = swift_isUniquelyReferenced_nonNull_native();
    v146 = *v74;
    v76 = v72;
    LOBYTE(v72) = v137;
    sub_262A1186C(v76, v137, v75);
    *v74 = v146;
    v146 = 0;
    v147 = 0xE000000000000000;
    sub_262A2A6F8();

    v146 = 0x7974696C61646F4DLL;
    v147 = 0xE900000000000020;
    v77 = SIDWorkoutModality.rawValue.getter(v72);
    MEMORY[0x26672ECF0](v77);

    MEMORY[0x26672ECF0](0xD000000000000024, 0x8000000262A33110);
    v145 = v73;
    v78 = sub_262A2A868();
    MEMORY[0x26672ECF0](v78);

    sub_2629EA8C8(v146, v147);
  }

LABEL_48:
  v141 = isUniquelyReferenced_nonNull_native;
  v18 = *(v132 + 56);
  v63 = MEMORY[0x277D84F90];
  isUniquelyReferenced_nonNull_native = MEMORY[0x277D84F90];
  do
  {
    v65 = v140;
    sub_2629FEF84(v21, v140, type metadata accessor for PreprocessedUserHistoryWithMetadata);
    v66 = *(v65 + v18);
    sub_2629FEFEC(v65, type metadata accessor for PreprocessedUserHistoryWithMetadata);
    if (v66 != 7)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = sub_2629A9140(0, *(isUniquelyReferenced_nonNull_native + 16) + 1, 1, isUniquelyReferenced_nonNull_native);
      }

      v68 = *(isUniquelyReferenced_nonNull_native + 16);
      v67 = *(isUniquelyReferenced_nonNull_native + 24);
      if (v68 >= v67 >> 1)
      {
        isUniquelyReferenced_nonNull_native = sub_2629A9140((v67 > 1), v68 + 1, 1, isUniquelyReferenced_nonNull_native);
      }

      v64 = qword_262A30AA0[v66];
      *(isUniquelyReferenced_nonNull_native + 16) = v68 + 1;
      *(isUniquelyReferenced_nonNull_native + 8 * v68 + 32) = v64;
    }

    v21 += v143;
    --v142;
  }

  while (v142);
  v69 = *(isUniquelyReferenced_nonNull_native + 16);
  if (v69)
  {
    v24 = 0;
    v70 = (isUniquelyReferenced_nonNull_native + 32);
    v4 = v137;
    v22 = v135;
    do
    {
      v71 = *v70++;
      v36 = __OFADD__(v24, v71);
      v24 += v71;
      if (v36)
      {
        goto LABEL_126;
      }

      --v69;
    }

    while (v69);
  }

  else
  {
    v24 = 0;
    v4 = v137;
    v22 = v135;
  }

  if (!v141)
  {
    goto LABEL_128;
  }

  v21 = v24 / v141;
  if (v24 / v141 >= 5)
  {
    v146 = v63;
    sub_2629CD9C0(0, 1, 1);
    v63 = v146;
    v81 = *(v146 + 16);
    v80 = *(v146 + 24);
    v79 = v81 + 1;
    if (v81 < v80 >> 1)
    {
      goto LABEL_68;
    }

    goto LABEL_132;
  }

  v79 = *(v63 + 2);
  if (v79)
  {
    goto LABEL_89;
  }

  LOBYTE(v18) = 0;
  while (2)
  {

    v96 = sub_2629EAE60(v27);
    v143 = v22;

    isUniquelyReferenced_nonNull_native = sub_262A27390(v96);

    v98 = MEMORY[0x28223BE20](v97);
    v24 = (&v132 - 4);
    *(&v132 - 16) = v18;
    v99 = *(isUniquelyReferenced_nonNull_native + 32);
    v22 = ((1 << v99) + 63) >> 6;
    v27 = v133;
    if ((v99 & 0x3Fu) > 0xD)
    {
      goto LABEL_129;
    }

    while (1)
    {
      v28 = &v132;
      MEMORY[0x28223BE20](v98);
      v24 = &v132 - ((v100 + 15) & 0x3FFFFFFFFFFFFFF0);
      bzero(v24, v100);
      v101 = 0;
      v102 = 0;
      v103 = 1 << *(isUniquelyReferenced_nonNull_native + 32);
      v104 = -1;
      if (v103 < 64)
      {
        v104 = ~(-1 << v103);
      }

      v105 = v104 & *(isUniquelyReferenced_nonNull_native + 56);
      while (v105)
      {
        v106 = __clz(__rbit64(v105));
        v105 &= v105 - 1;
        v107 = v106 | (v102 << 6);
LABEL_105:
        if (*(*(isUniquelyReferenced_nonNull_native + 48) + 8 * v107) < qword_262A30B18[v18])
        {
          *(v24 + ((v107 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v107;
          v36 = __OFADD__(v101++, 1);
          if (v36)
          {
            __break(1u);
LABEL_109:
            v22 = sub_262A26988(v24, v22, v101, isUniquelyReferenced_nonNull_native);
            goto LABEL_110;
          }
        }
      }

      v108 = v102;
      while (1)
      {
        v102 = v108 + 1;
        if (__OFADD__(v108, 1))
        {
          break;
        }

        if (v102 >= ((v103 + 63) >> 6))
        {
          goto LABEL_109;
        }

        v109 = *(isUniquelyReferenced_nonNull_native + 56 + 8 * v102);
        ++v108;
        if (v109)
        {
          v105 = (v109 - 1) & v109;
          v107 = __clz(__rbit64(v109)) | (v102 << 6);
          goto LABEL_105;
        }
      }

LABEL_125:
      __break(1u);
LABEL_126:
      __break(1u);
LABEL_127:
      __break(1u);
LABEL_128:
      __break(1u);
LABEL_129:

      if (!swift_stdlib_isStackAllocationSafe())
      {
        break;
      }
    }

    v28 = swift_slowAlloc();
    v130 = v143;
    v131 = sub_2629FCEF4(v28, v22, isUniquelyReferenced_nonNull_native, sub_2629FEF64, v24, sub_262A126C8);
    v143 = v130;
    if (v130)
    {
      goto LABEL_137;
    }

    v22 = v131;

    MEMORY[0x26672F820](v28, -1, -1);
LABEL_110:
    v142 = v21;
    v79 = *(v22 + 16);
    if (v79)
    {
      v81 = sub_2629A9C68(*(v22 + 16), 0);
      v110 = sub_262A13890(&v146, v81 + 4, v79, v22);
      v111 = v146;
      v28 = v147;
      v27 = v148;
      v4 = v149;
      v21 = v150;

      sub_2629ADE08(v111);
      if (v110 == v79)
      {
        v27 = v133;
        v4 = v137;
        goto LABEL_114;
      }

      __break(1u);
LABEL_132:
      sub_2629CD9C0((v80 > 1), v79, 1);
      v63 = v146;
LABEL_68:
      *(v63 + 2) = v79;
      *(v81 + v63 + 32) = 0;
      if (v21 >= 0xA)
      {
        v82 = swift_isUniquelyReferenced_nonNull_native();
        v146 = v63;
        if ((v82 & 1) == 0)
        {
          sub_2629CD9C0(0, *(v63 + 2) + 1, 1);
          v63 = v146;
        }

        v84 = *(v63 + 2);
        v83 = *(v63 + 3);
        v79 = v84 + 1;
        if (v84 >= v83 >> 1)
        {
          sub_2629CD9C0((v83 > 1), v84 + 1, 1);
          v63 = v146;
        }

        *(v63 + 2) = v79;
        v63[v84 + 32] = 1;
        if (v21 >= 0x14)
        {
          v85 = swift_isUniquelyReferenced_nonNull_native();
          v146 = v63;
          if ((v85 & 1) == 0)
          {
            sub_2629CD9C0(0, *(v63 + 2) + 1, 1);
            v63 = v146;
          }

          v87 = *(v63 + 2);
          v86 = *(v63 + 3);
          v79 = v87 + 1;
          if (v87 >= v86 >> 1)
          {
            sub_2629CD9C0((v86 > 1), v87 + 1, 1);
            v63 = v146;
          }

          *(v63 + 2) = v79;
          v63[v87 + 32] = 2;
          if (v21 >= 0x1E)
          {
            v88 = swift_isUniquelyReferenced_nonNull_native();
            v146 = v63;
            if ((v88 & 1) == 0)
            {
              sub_2629CD9C0(0, *(v63 + 2) + 1, 1);
              v63 = v146;
            }

            v90 = *(v63 + 2);
            v89 = *(v63 + 3);
            v79 = v90 + 1;
            if (v90 >= v89 >> 1)
            {
              sub_2629CD9C0((v89 > 1), v90 + 1, 1);
              v63 = v146;
            }

            *(v63 + 2) = v79;
            v63[v90 + 32] = 3;
            if (v21 >= 0x2D)
            {
              v91 = swift_isUniquelyReferenced_nonNull_native();
              v146 = v63;
              if ((v91 & 1) == 0)
              {
                sub_2629CD9C0(0, *(v63 + 2) + 1, 1);
                v63 = v146;
              }

              v93 = *(v63 + 2);
              v92 = *(v63 + 3);
              v79 = v93 + 1;
              if (v93 >= v92 >> 1)
              {
                sub_2629CD9C0((v92 > 1), v93 + 1, 1);
                v63 = v146;
              }

              *(v63 + 2) = v79;
              v63[v93 + 32] = 4;
            }
          }
        }
      }

LABEL_89:
      LOBYTE(v18) = v63[32];
      v94 = v79 - 1;
      if (v79 != 1)
      {
        v95 = 33;
        do
        {
          if (qword_262A30B18[v18] < qword_262A30B18[v63[v95]])
          {
            LOBYTE(v18) = v63[v95];
          }

          ++v95;
          --v94;
        }

        while (v94);
      }

      continue;
    }

    break;
  }

  v81 = MEMORY[0x277D84F90];
LABEL_114:
  v112 = v143;
  v146 = v81;
  sub_2629A9EB4(&v146);
  v21 = v112;
  if (!v112)
  {

    v113 = v146;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3BF18, &unk_262A2B3C0);
    v114 = swift_allocObject();
    *(v114 + 16) = xmmword_262A2B290;
    v115 = qword_262A30B18[v18];
    *(v114 + 32) = v115;
    v145 = v114;
    sub_262A040F0(v113);
    v116 = v145;
    v117 = v134;
    v118 = swift_isUniquelyReferenced_nonNull_native();
    v146 = *v117;
    sub_262A1186C(v116, v4, v118);
    v119 = v146;
    *v117 = v146;
    sub_2629FEF84(v138, v27, type metadata accessor for PersistentLogger);
    v146 = 0;
    v147 = 0xE000000000000000;
    sub_262A2A6F8();
    MEMORY[0x26672ECF0](0x7974696C61646F4DLL, 0xE900000000000020);
    v120 = SIDWorkoutModality.rawValue.getter(v4);
    MEMORY[0x26672ECF0](v120);

    MEMORY[0x26672ECF0](0xD000000000000028, 0x8000000262A330A0);
    if (*(v119 + 16) && (v122 = sub_2629CB1E4(v4, v121), (v123 & 1) != 0))
    {
      v124 = *(*(v119 + 56) + 8 * v122);
    }

    else
    {
      v124 = MEMORY[0x277D84F90];
    }

    v125 = MEMORY[0x26672EDD0](v124, MEMORY[0x277D83B88]);
    v127 = v126;

    MEMORY[0x26672ECF0](v125, v127);

    MEMORY[0x26672ECF0](0xD000000000000014, 0x8000000262A330D0);
    v144 = v115;
    v128 = sub_262A2A868();
    MEMORY[0x26672ECF0](v128);

    MEMORY[0x26672ECF0](0xD000000000000014, 0x8000000262A330F0);
    v144 = v142;
    v129 = sub_262A2A868();
    MEMORY[0x26672ECF0](v129);

    sub_2629EA8C8(v146, v147);

    return sub_2629FEFEC(v27, type metadata accessor for PersistentLogger);
  }

LABEL_136:
  MEMORY[0x26672F6A0](v21);

  __break(1u);
LABEL_137:

  result = MEMORY[0x26672F820](v28, -1, -1);
  __break(1u);
  return result;
}

char *sub_2629EF140(uint64_t a1, uint64_t a2)
{
  v15 = sub_2629ACAA8(MEMORY[0x277D84F90]);
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;

  for (i = 0; v6; i = v9)
  {
    v9 = i;
LABEL_8:
    v10 = __clz(__rbit64(v6)) | (v9 << 6);
    v11 = *(*(a1 + 56) + 8 * v10);
    v13[0] = *(*(a1 + 48) + v10);
    v14 = v11;

    sub_2629EF288(&v15, v13, a2);
    v6 &= v6 - 1;
  }

  while (1)
  {
    v9 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v9 >= v7)
    {

      return v15;
    }

    v6 = *(a1 + 64 + 8 * v9);
    ++i;
    if (v6)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
  MEMORY[0x26672F6A0](0);

  __break(1u);
  return result;
}

uint64_t sub_2629EF288(char **a1, unsigned __int8 *a2, uint64_t a3)
{
  v133 = a3;
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3BFF0, &qword_262A30C20);
  v136 = *(v144 - 8);
  v6 = MEMORY[0x28223BE20](v144);
  v8 = (&v129 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = MEMORY[0x28223BE20](v6);
  v143 = &v129 - v10;
  if (!*(*(a2 + 1) + 16))
  {
    return result;
  }

  v132 = a1;
  v131 = *a2;

  v12 = sub_2629FEA84(v11);
  v130 = v3;

  v13 = MEMORY[0x277D84F90];
  v142 = sub_2629ACBA8(MEMORY[0x277D84F90]);
  v141 = sub_2629ACBA8(v13);
  v14 = 0;
  v15 = v12 + 8;
  v16 = 1 << *(v12 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & v12[8];
  v19 = (v16 + 63) >> 6;
  v137 = v19;
  v134 = v12 + 8;
  v135 = v12;
LABEL_5:
  v20 = v14;
  if (!v18)
  {
    goto LABEL_7;
  }

  do
  {
    v14 = v20;
LABEL_10:
    v138 = v18;
    v21 = __clz(__rbit64(v18)) | (v14 << 6);
    v22 = *(v12[6] + v21);
    v23 = *(*(v12[7] + 8 * v21) + 16);
    v140 = *(v12[7] + 8 * v21);

    v24 = v142;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v145 = v24;
    v139 = v22;
    v13 = sub_2629D41BC(v22);
    v27 = *(v24 + 16);
    v28 = (v26 & 1) == 0;
    v29 = v27 + v28;
    if (__OFADD__(v27, v28))
    {
LABEL_106:
      __break(1u);
LABEL_107:
      __break(1u);
LABEL_108:
      __break(1u);
      goto LABEL_109;
    }

    v30 = v26;
    if (*(v24 + 24) >= v29)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v33 = v145;
        if (v26)
        {
          goto LABEL_17;
        }
      }

      else
      {
        sub_2629CEB04();
        v33 = v145;
        if (v30)
        {
          goto LABEL_17;
        }
      }
    }

    else
    {
      sub_2629D10F4(v29, isUniquelyReferenced_nonNull_native);
      v31 = sub_2629D41BC(v139);
      if ((v30 & 1) != (v32 & 1))
      {
        goto LABEL_111;
      }

      v13 = v31;
      v33 = v145;
      if (v30)
      {
LABEL_17:
        *(*(v33 + 7) + 8 * v13) = v23;
        v142 = v33;
        if (!v23)
        {
          goto LABEL_27;
        }

        goto LABEL_18;
      }
    }

    *&v33[8 * (v13 >> 6) + 64] |= 1 << v13;
    *(*(v33 + 6) + v13) = v139;
    *(*(v33 + 7) + 8 * v13) = v23;
    v41 = *(v33 + 2);
    v42 = __OFADD__(v41, 1);
    v43 = v41 + 1;
    if (v42)
    {
      goto LABEL_108;
    }

    *(v33 + 2) = v43;
    v142 = v33;
    if (!v23)
    {
LABEL_27:

      v34 = MEMORY[0x277D84F90];
      goto LABEL_28;
    }

LABEL_18:
    v145 = MEMORY[0x277D84F90];
    sub_2629CD840(0, v23 & ~(v23 >> 63), 0);
    if (v23 < 1)
    {
      goto LABEL_107;
    }

    v34 = v145;
    v35 = v140 + ((*(v136 + 80) + 32) & ~*(v136 + 80));
    v36 = *(v136 + 72);
    do
    {
      v37 = v143;
      sub_2629FEE84(v35, v143);
      sub_2629FEEF4(v37, v8);
      v38 = *v8;
      sub_2629FEFEC(v8 + *(v144 + 48), type metadata accessor for PreprocessedUserHistoryWithMetadata);
      v145 = v34;
      v40 = *(v34 + 2);
      v39 = *(v34 + 3);
      v13 = v40 + 1;
      if (v40 >= v39 >> 1)
      {
        sub_2629CD840((v39 > 1), v40 + 1, 1);
        v34 = v145;
      }

      *(v34 + 2) = v13;
      *&v34[8 * v40 + 32] = v38;
      v35 += v36;
      --v23;
    }

    while (v23);

    v15 = v134;
    v12 = v135;
LABEL_28:
    v18 = (v138 - 1) & v138;
    v44 = *(v34 + 2);
    if (v44)
    {
      v45 = *(v34 + 4);
      v46 = v44 - 1;
      if (v44 == 1)
      {
        goto LABEL_41;
      }

      if (v44 > 4)
      {
        v47 = v46 & 0xFFFFFFFFFFFFFFFCLL | 1;
        v48 = vdupq_n_s64(v45);
        v49 = (v34 + 56);
        v50 = v46 & 0xFFFFFFFFFFFFFFFCLL;
        v51 = v48;
        do
        {
          v48 = vbslq_s8(vcgtq_s64(v48, v49[-1]), v49[-1], v48);
          v51 = vbslq_s8(vcgtq_s64(v51, *v49), *v49, v51);
          v49 += 2;
          v50 -= 4;
        }

        while (v50);
        v52 = vbslq_s8(vcgtq_s64(v51, v48), v48, v51);
        v53 = vextq_s8(v52, v52, 8uLL).u64[0];
        v45 = vbsl_s8(vcgtd_s64(v53, v52.i64[0]), *v52.i8, v53);
        if (v46 == (v46 & 0xFFFFFFFFFFFFFFFCLL))
        {
          goto LABEL_41;
        }
      }

      else
      {
        v47 = 1;
      }

      v54 = v44 - v47;
      v55 = &v34[8 * v47 + 32];
      do
      {
        v57 = *v55;
        v55 += 8;
        v56 = v57;
        if (v57 < v45)
        {
          v45 = v56;
        }

        --v54;
      }

      while (v54);
LABEL_41:

      v58 = v141;
      v59 = swift_isUniquelyReferenced_nonNull_native();
      v145 = v58;
      v60 = sub_2629D41BC(v139);
      v62 = *(v58 + 2);
      v63 = (v61 & 1) == 0;
      v42 = __OFADD__(v62, v63);
      v64 = v62 + v63;
      if (!v42)
      {
        v13 = v61;
        if (*(v58 + 3) >= v64)
        {
          if ((v59 & 1) == 0)
          {
            v69 = v60;
            sub_2629CEB04();
            v60 = v69;
          }
        }

        else
        {
          sub_2629D10F4(v64, v59);
          v60 = sub_2629D41BC(v139);
          if ((v13 & 1) != (v65 & 1))
          {
LABEL_111:
            sub_262A2A938();
            __break(1u);
LABEL_112:
            MEMORY[0x26672F6A0](v13);

            __break(1u);
            return result;
          }
        }

        v66 = v145;
        v141 = v145;
        if (v13)
        {
          *(*(v145 + 7) + 8 * v60) = v45;
          v19 = v137;
          goto LABEL_5;
        }

        *&v145[8 * (v60 >> 6) + 64] |= 1 << v60;
        *(*(v66 + 6) + v60) = v139;
        *(*(v66 + 7) + 8 * v60) = v45;
        v67 = *(v66 + 2);
        v42 = __OFADD__(v67, 1);
        v68 = v67 + 1;
        if (!v42)
        {
          *(v66 + 2) = v68;
          v19 = v137;
          goto LABEL_5;
        }

LABEL_110:
        __break(1u);
        goto LABEL_111;
      }

LABEL_109:
      __break(1u);
      goto LABEL_110;
    }

    v20 = v14;
    v19 = v137;
  }

  while (v18);
  while (1)
  {
LABEL_7:
    v14 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      __break(1u);
      goto LABEL_103;
    }

    if (v14 >= v19)
    {
      break;
    }

    v18 = v15[v14];
    ++v20;
    if (v18)
    {
      goto LABEL_10;
    }
  }

  v70 = *(v133 + 16);
  v71 = MEMORY[0x277D84F90];
  if (v70)
  {
    v72 = 0;
    v73 = v133 + 32;
    v74 = MEMORY[0x277D84F90];
    v75 = v142;
LABEL_53:
    v76 = v72;
    while (v76 < v70)
    {
      v72 = v76 + 1;
      if (__OFADD__(v76, 1))
      {
        goto LABEL_104;
      }

      if (*(v75 + 16))
      {
        v13 = *(v73 + v76);
        v77 = sub_2629D41BC(v13);
        v75 = v142;
        if (v78)
        {
          if (*(v141 + 2))
          {
            v79 = *(*(v142 + 56) + 8 * v77);
            v80 = sub_2629D41BC(v13);
            v75 = v142;
            if (v81)
            {
              v82 = *(*(v141 + 7) + 8 * v80);
              v83 = swift_isUniquelyReferenced_nonNull_native();
              v144 = v82;
              if ((v83 & 1) == 0)
              {
                v74 = sub_2629A96E8(0, *(v74 + 2) + 1, 1, v74);
              }

              v85 = *(v74 + 2);
              v84 = *(v74 + 3);
              v75 = v142;
              if (v85 >= v84 >> 1)
              {
                v88 = sub_2629A96E8((v84 > 1), v85 + 1, 1, v74);
                v75 = v142;
                v74 = v88;
              }

              *(v74 + 2) = v85 + 1;
              v86 = &v74[24 * v85];
              v86[32] = v13;
              v87 = v144;
              *(v86 + 5) = v79;
              *(v86 + 6) = v87;
              v71 = MEMORY[0x277D84F90];
              if (v72 != v70)
              {
                goto LABEL_53;
              }

              goto LABEL_68;
            }
          }
        }
      }

      ++v76;
      if (v72 == v70)
      {
        goto LABEL_68;
      }
    }

LABEL_103:
    __break(1u);
LABEL_104:
    __break(1u);
LABEL_105:
    __break(1u);
    goto LABEL_106;
  }

  v74 = MEMORY[0x277D84F90];
LABEL_68:
  if (!*(v74 + 2))
  {

    v97 = v142 + 64;
    v98 = 1 << *(v142 + 32);
    v99 = -1;
    if (v98 < 64)
    {
      v99 = ~(-1 << v98);
    }

    v100 = v99 & *(v142 + 64);
    v101 = (v98 + 63) >> 6;

    v103 = 0;
    v104 = MEMORY[0x277D84F90];
    v105 = MEMORY[0x277D84F90];
    while (v100)
    {
      v106 = v100;
LABEL_85:
      v100 = (v106 - 1) & v106;
      if (*(v141 + 2))
      {
        v108 = __clz(__rbit64(v106)) | (v103 << 6);
        v109 = *(*(v102 + 56) + 8 * v108);
        v13 = *(*(v102 + 48) + v108);
        v110 = sub_2629D41BC(v13);
        v102 = v142;
        if (v111)
        {
          v112 = *(*(v141 + 7) + 8 * v110);
          v113 = swift_isUniquelyReferenced_nonNull_native();
          v144 = v112;
          if ((v113 & 1) == 0)
          {
            v105 = sub_2629A96E8(0, *(v105 + 2) + 1, 1, v105);
          }

          v115 = *(v105 + 2);
          v114 = *(v105 + 3);
          v116 = v115 + 1;
          v102 = v142;
          if (v115 >= v114 >> 1)
          {
            v143 = v115 + 1;
            v119 = sub_2629A96E8((v114 > 1), v115 + 1, 1, v105);
            v102 = v142;
            v116 = v143;
            v105 = v119;
          }

          *(v105 + 2) = v116;
          v117 = &v105[24 * v115];
          v117[32] = v13;
          v118 = v144;
          *(v117 + 5) = v109;
          *(v117 + 6) = v118;
        }
      }
    }

    while (1)
    {
      v107 = v103 + 1;
      if (__OFADD__(v103, 1))
      {
        goto LABEL_105;
      }

      if (v107 >= v101)
      {

        v145 = v105;

        v120 = v130;
        sub_2629F6C08(&v145);
        v13 = v120;
        if (v120)
        {
          goto LABEL_112;
        }

        v121 = v145;
        v122 = *(v145 + 2);
        if (v122)
        {
          v145 = v104;
          sub_2629CD960(0, v122, 0);
          v92 = v145;
          v123 = *(v145 + 2);
          v124 = 32;
          do
          {
            v125 = v121[v124];
            v145 = v92;
            v126 = *(v92 + 3);
            if (v123 >= v126 >> 1)
            {
              sub_2629CD960((v126 > 1), v123 + 1, 1);
              v92 = v145;
            }

            *(v92 + 2) = v123 + 1;
            v92[v123 + 32] = v125;
            v124 += 24;
            ++v123;
            --v122;
          }

          while (v122);
          goto LABEL_98;
        }

        goto LABEL_99;
      }

      v106 = *(v97 + 8 * v107);
      ++v103;
      if (v106)
      {
        v103 = v107;
        goto LABEL_85;
      }
    }
  }

  v145 = v74;

  v89 = v130;
  sub_2629F6C08(&v145);
  v13 = v89;
  if (v89)
  {
    goto LABEL_112;
  }

  v90 = v145;
  v91 = *(v145 + 2);
  if (v91)
  {
    v145 = v71;
    sub_2629CD960(0, v91, 0);
    v92 = v145;
    v93 = *(v145 + 2);
    v94 = 32;
    do
    {
      v95 = v90[v94];
      v145 = v92;
      v96 = *(v92 + 3);
      if (v93 >= v96 >> 1)
      {
        sub_2629CD960((v96 > 1), v93 + 1, 1);
        v92 = v145;
      }

      *(v92 + 2) = v93 + 1;
      v92[v93 + 32] = v95;
      v94 += 24;
      ++v93;
      --v91;
    }

    while (v91);
LABEL_98:
  }

  else
  {
LABEL_99:

    v92 = MEMORY[0x277D84F90];
  }

  v127 = v132;
  v128 = swift_isUniquelyReferenced_nonNull_native();
  v145 = *v127;
  sub_262A11F5C(v92, v131, v128);

  *v127 = v145;
  return result;
}

unint64_t sub_2629EFCB8(uint64_t *a1, unsigned __int8 *a2, __n128 a3, double a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = a3.n128_f64[0];
  v29 = *(a2 + 1);
  v27 = *a2;
  if (*(a6 + 16) && (sub_2629CB1E4(*a2, a3), (v9 & 1) != 0))
  {
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v11 = *(v10 + 16);
  v32 = v10;
  v12 = (v10 + 32);
  v31 = MEMORY[0x277D84F90];
  v13 = (v10 + 32);
  while (v11)
  {
    v15 = *v13;
    if (v15 <= 2 && v15 != 1 && v15 != 2)
    {

LABEL_14:
      v16 = a7 + *(type metadata accessor for HeuristicsProcessor(0) + 24);
      v17 = type metadata accessor for PlanGenerationContext(0);
      v31 = sub_2629EFFF8(v29, *(v16 + *(v17 + 84)), v8);
      break;
    }

    v14 = sub_262A2A878();

    ++v13;
    --v11;
    if (v14)
    {
      goto LABEL_14;
    }
  }

  v18 = *(v32 + 16);
  while (1)
  {
    if (!v18)
    {

      v21 = MEMORY[0x277D84F90];
      goto LABEL_25;
    }

    v20 = *v12;
    if (v20 <= 2 && *v12 && v20 != 2)
    {
      break;
    }

    v19 = sub_262A2A878();

    ++v12;
    --v18;
    if (v19)
    {
      goto LABEL_24;
    }
  }

LABEL_24:

  v22 = a7 + *(type metadata accessor for HeuristicsProcessor(0) + 24);
  v23 = type metadata accessor for PlanGenerationContext(0);
  v21 = sub_2629F03B4(v29, *(v22 + *(v23 + 72)), a4);
LABEL_25:
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v33 = *a1;
  result = sub_262A12124(v21, v31, v27, isUniquelyReferenced_nonNull_native, v25);
  *a1 = v33;
  return result;
}

char *sub_2629EFFF8(uint64_t a1, uint64_t a2, double a3)
{
  v47 = a2;
  v5 = type metadata accessor for PreprocessedUserHistoryWithMetadata(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2629AD6FC(MEMORY[0x277D84F90]);
  v10 = *(a1 + 16);
  if (v10)
  {
    v11 = 0;
    v12 = *(v5 + 88);
    v13 = a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v14 = *(v6 + 72);
    v15 = v10;
    while (1)
    {
      sub_2629FEF84(v13, v8, type metadata accessor for PreprocessedUserHistoryWithMetadata);
      v16 = v8[v12];
      sub_2629FEFEC(v8, type metadata accessor for PreprocessedUserHistoryWithMetadata);
      if (v16 == 31)
      {
        goto LABEL_3;
      }

      sub_2629ADF1C(v11, 0);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v48 = v9;
      v18 = sub_2629CB4BC(v16);
      v20 = *(v9 + 16);
      v21 = (v19 & 1) == 0;
      v22 = __OFADD__(v20, v21);
      v23 = v20 + v21;
      if (v22)
      {
        goto LABEL_35;
      }

      v24 = v19;
      if (*(v9 + 24) < v23)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_10;
      }

      v31 = v18;
      sub_2629CEF60();
      v18 = v31;
      v9 = v48;
      if ((v24 & 1) == 0)
      {
LABEL_11:
        *(v9 + 8 * (v18 >> 6) + 64) |= 1 << v18;
        *(*(v9 + 48) + v18) = v16;
        *(*(v9 + 56) + 8 * v18) = 0;
        v26 = *(v9 + 16);
        v22 = __OFADD__(v26, 1);
        v27 = v26 + 1;
        if (v22)
        {
          goto LABEL_37;
        }

        *(v9 + 16) = v27;
      }

LABEL_13:
      v28 = *(v9 + 56);
      v29 = *(v28 + 8 * v18);
      v22 = __OFADD__(v29, 1);
      v30 = v29 + 1;
      if (v22)
      {
        goto LABEL_36;
      }

      *(v28 + 8 * v18) = v30;
      v11 = sub_2629FF238;
LABEL_3:
      v13 += v14;
      if (!--v15)
      {
        goto LABEL_18;
      }
    }

    sub_2629D21B8(v23, isUniquelyReferenced_nonNull_native);
    v18 = sub_2629CB4BC(v16);
    if ((v24 & 1) != (v25 & 1))
    {
      goto LABEL_38;
    }

LABEL_10:
    v9 = v48;
    if ((v24 & 1) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

  v11 = 0;
LABEL_18:
  v32 = 0;
  v33 = 1 << *(v9 + 32);
  v34 = -1;
  if (v33 < 64)
  {
    v34 = ~(-1 << v33);
  }

  v35 = v34 & *(v9 + 64);
  v36 = (v33 + 63) >> 6;
  v37 = MEMORY[0x277D84F90];
  while (v35)
  {
LABEL_26:
    v39 = __clz(__rbit64(v35));
    v35 &= v35 - 1;
    v40 = v39 | (v32 << 6);
    v41 = *(*(v9 + 56) + 8 * v40);
    if (v41 >= v47 && v41 / v10 * 100.0 >= a3)
    {
      v46 = *(*(v9 + 48) + v40);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v37 = sub_2629A9A10(0, *(v37 + 2) + 1, 1, v37);
      }

      v43 = *(v37 + 2);
      v42 = *(v37 + 3);
      if (v43 >= v42 >> 1)
      {
        v37 = sub_2629A9A10((v42 > 1), v43 + 1, 1, v37);
      }

      *(v37 + 2) = v43 + 1;
      v37[v43 + 32] = v46;
    }
  }

  while (1)
  {
    v38 = v32 + 1;
    if (__OFADD__(v32, 1))
    {
      break;
    }

    if (v38 >= v36)
    {

      sub_2629ADF1C(v11, 0);
      return v37;
    }

    v35 = *(v9 + 64 + 8 * v38);
    ++v32;
    if (v35)
    {
      v32 = v38;
      goto LABEL_26;
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  result = sub_262A2A938();
  __break(1u);
  return result;
}

char *sub_2629F03B4(uint64_t a1, uint64_t a2, double a3)
{
  v47 = a2;
  v5 = type metadata accessor for PreprocessedUserHistoryWithMetadata(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2629AD724(MEMORY[0x277D84F90]);
  v10 = *(a1 + 16);
  if (v10)
  {
    v11 = 0;
    v12 = *(v5 + 72);
    v13 = a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v14 = *(v6 + 72);
    v15 = v10;
    while (1)
    {
      sub_2629FEF84(v13, v8, type metadata accessor for PreprocessedUserHistoryWithMetadata);
      v16 = v8[v12];
      sub_2629FEFEC(v8, type metadata accessor for PreprocessedUserHistoryWithMetadata);
      if (v16 == 9)
      {
        goto LABEL_3;
      }

      sub_2629ADF1C(v11, 0);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v48 = v9;
      v18 = sub_2629CB548(v16);
      v20 = *(v9 + 16);
      v21 = (v19 & 1) == 0;
      v22 = __OFADD__(v20, v21);
      v23 = v20 + v21;
      if (v22)
      {
        goto LABEL_35;
      }

      v24 = v19;
      if (*(v9 + 24) < v23)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_10;
      }

      v31 = v18;
      sub_2629CEF74();
      v18 = v31;
      v9 = v48;
      if ((v24 & 1) == 0)
      {
LABEL_11:
        *(v9 + 8 * (v18 >> 6) + 64) |= 1 << v18;
        *(*(v9 + 48) + v18) = v16;
        *(*(v9 + 56) + 8 * v18) = 0;
        v26 = *(v9 + 16);
        v22 = __OFADD__(v26, 1);
        v27 = v26 + 1;
        if (v22)
        {
          goto LABEL_37;
        }

        *(v9 + 16) = v27;
      }

LABEL_13:
      v28 = *(v9 + 56);
      v29 = *(v28 + 8 * v18);
      v22 = __OFADD__(v29, 1);
      v30 = v29 + 1;
      if (v22)
      {
        goto LABEL_36;
      }

      *(v28 + 8 * v18) = v30;
      v11 = sub_2629FF238;
LABEL_3:
      v13 += v14;
      if (!--v15)
      {
        goto LABEL_18;
      }
    }

    sub_2629D2454(v23, isUniquelyReferenced_nonNull_native);
    v18 = sub_2629CB548(v16);
    if ((v24 & 1) != (v25 & 1))
    {
      goto LABEL_38;
    }

LABEL_10:
    v9 = v48;
    if ((v24 & 1) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

  v11 = 0;
LABEL_18:
  v32 = 0;
  v33 = 1 << *(v9 + 32);
  v34 = -1;
  if (v33 < 64)
  {
    v34 = ~(-1 << v33);
  }

  v35 = v34 & *(v9 + 64);
  v36 = (v33 + 63) >> 6;
  v37 = MEMORY[0x277D84F90];
  while (v35)
  {
LABEL_26:
    v39 = __clz(__rbit64(v35));
    v35 &= v35 - 1;
    v40 = v39 | (v32 << 6);
    v41 = *(*(v9 + 56) + 8 * v40);
    if (v41 >= v47 && v41 / v10 * 100.0 >= a3)
    {
      v46 = *(*(v9 + 48) + v40);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v37 = sub_2629A9A24(0, *(v37 + 2) + 1, 1, v37);
      }

      v43 = *(v37 + 2);
      v42 = *(v37 + 3);
      if (v43 >= v42 >> 1)
      {
        v37 = sub_2629A9A24((v42 > 1), v43 + 1, 1, v37);
      }

      *(v37 + 2) = v43 + 1;
      v37[v43 + 32] = v46;
    }
  }

  while (1)
  {
    v38 = v32 + 1;
    if (__OFADD__(v32, 1))
    {
      break;
    }

    if (v38 >= v36)
    {

      sub_2629ADF1C(v11, 0);
      return v37;
    }

    v35 = *(v9 + 64 + 8 * v38);
    ++v32;
    if (v35)
    {
      v32 = v38;
      goto LABEL_26;
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  result = sub_262A2A938();
  __break(1u);
  return result;
}

unint64_t sub_2629F0770(uint64_t *a1, unsigned __int8 *a2, __n128 a3, double a4, double a5, double a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v12 = a3.n128_f64[0];
  v50 = *(a2 + 1);
  v45 = *a2;
  if (*(a8 + 16) && (sub_2629CB1E4(*a2, a3), (v14 & 1) != 0))
  {
  }

  else
  {
    v15 = MEMORY[0x277D84F90];
  }

  v16 = *(v15 + 16);
  v51 = v15;
  v17 = (v15 + 32);
  v49 = MEMORY[0x277D84F90];
  v18 = (v15 + 32);
  while (v16)
  {
    if (*v18 == 2)
    {

LABEL_10:
      v20 = a9 + *(type metadata accessor for HeuristicsProcessor(0) + 24);
      v21 = type metadata accessor for PlanGenerationContext(0);
      v49 = sub_2629F0D40(v50, *(v20 + *(v21 + 64)), v12);
      break;
    }

    v19 = sub_262A2A878();

    ++v18;
    --v16;
    if (v19)
    {
      goto LABEL_10;
    }
  }

  v22 = *(v51 + 16);
  v48 = MEMORY[0x277D84F90];
  v23 = v17;
  while (1)
  {
    if (!v22)
    {
      v26 = a9;
      goto LABEL_22;
    }

    v25 = *v23;
    if (v25 > 2 && v25 != 4 && v25 != 5)
    {
      break;
    }

    v24 = sub_262A2A878();

    ++v23;
    --v22;
    if (v24)
    {
      goto LABEL_21;
    }
  }

LABEL_21:
  v27 = a9 + *(type metadata accessor for HeuristicsProcessor(0) + 24);
  v28 = type metadata accessor for PlanGenerationContext(0);
  v26 = a9;
  v48 = sub_2629F1110(v50, *(v27 + *(v28 + 68)), a4);
LABEL_22:
  v29 = *(v51 + 16);
  v47 = MEMORY[0x277D84F90];
  v30 = v17;
  while (1)
  {
    if (!v29)
    {
      v33 = v26;
      goto LABEL_31;
    }

    v32 = *v30;
    if (v32 >= 4 && v32 != 5)
    {
      break;
    }

    v31 = sub_262A2A878();

    ++v30;
    --v29;
    if (v31)
    {
      goto LABEL_30;
    }
  }

LABEL_30:
  v33 = v26;
  v34 = v26 + *(type metadata accessor for HeuristicsProcessor(0) + 24);
  v35 = type metadata accessor for PlanGenerationContext(0);
  v47 = sub_2629F14E0(v50, *(v34 + *(v35 + 80)), a5);
LABEL_31:
  v36 = *(v51 + 16);
  while (1)
  {
    if (!v36)
    {

      v39 = MEMORY[0x277D84F90];
      goto LABEL_39;
    }

    v38 = *v17;
    if (v38 > 4)
    {
      break;
    }

    v37 = sub_262A2A878();

    ++v17;
    --v36;
    if (v37)
    {
      goto LABEL_38;
    }
  }

LABEL_38:

  v40 = v33 + *(type metadata accessor for HeuristicsProcessor(0) + 24);
  v41 = type metadata accessor for PlanGenerationContext(0);
  v39 = sub_2629F18B0(v50, *(v40 + *(v41 + 76)), a6);
LABEL_39:
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v52 = *a1;
  result = sub_262A1228C(v49, v48, v47, v39, v45, isUniquelyReferenced_nonNull_native, v43);
  *a1 = v52;
  return result;
}

char *sub_2629F0D40(uint64_t a1, uint64_t a2, double a3)
{
  v47 = a2;
  v5 = type metadata accessor for PreprocessedUserHistoryWithMetadata(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2629AD74C(MEMORY[0x277D84F90]);
  v10 = *(a1 + 16);
  if (v10)
  {
    v11 = 0;
    v12 = a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v13 = *(v6 + 72);
    v14 = v10;
    while (1)
    {
      sub_2629FEF84(v12, v8, type metadata accessor for PreprocessedUserHistoryWithMetadata);
      v15 = *&v8[*(v5 + 36)];
      if (*(v15 + 16) != 1)
      {
        goto LABEL_3;
      }

      v16 = *(v15 + 32);
      sub_2629ADF1C(v11, 0);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v48 = v9;
      v18 = sub_2629CB574(v16);
      v20 = *(v9 + 16);
      v21 = (v19 & 1) == 0;
      v22 = __OFADD__(v20, v21);
      v23 = v20 + v21;
      if (v22)
      {
        goto LABEL_35;
      }

      v24 = v19;
      if (*(v9 + 24) < v23)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_10;
      }

      v31 = v18;
      sub_2629CF104();
      v18 = v31;
      v9 = v48;
      if ((v24 & 1) == 0)
      {
LABEL_11:
        *(v9 + 8 * (v18 >> 6) + 64) |= 1 << v18;
        *(*(v9 + 48) + v18) = v16;
        *(*(v9 + 56) + 8 * v18) = 0;
        v26 = *(v9 + 16);
        v22 = __OFADD__(v26, 1);
        v27 = v26 + 1;
        if (v22)
        {
          goto LABEL_37;
        }

        *(v9 + 16) = v27;
      }

LABEL_13:
      v28 = *(v9 + 56);
      v29 = *(v28 + 8 * v18);
      v22 = __OFADD__(v29, 1);
      v30 = v29 + 1;
      if (v22)
      {
        goto LABEL_36;
      }

      *(v28 + 8 * v18) = v30;
      v11 = sub_2629FF238;
LABEL_3:
      sub_2629FEFEC(v8, type metadata accessor for PreprocessedUserHistoryWithMetadata);
      v12 += v13;
      if (!--v14)
      {
        goto LABEL_18;
      }
    }

    sub_2629D2A98(v23, isUniquelyReferenced_nonNull_native);
    v18 = sub_2629CB574(v16);
    if ((v24 & 1) != (v25 & 1))
    {
      goto LABEL_38;
    }

LABEL_10:
    v9 = v48;
    if ((v24 & 1) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

  v11 = 0;
LABEL_18:
  v32 = 0;
  v33 = 1 << *(v9 + 32);
  v34 = -1;
  if (v33 < 64)
  {
    v34 = ~(-1 << v33);
  }

  v35 = v34 & *(v9 + 64);
  v36 = (v33 + 63) >> 6;
  v37 = MEMORY[0x277D84F90];
  while (v35)
  {
LABEL_26:
    v39 = __clz(__rbit64(v35));
    v35 &= v35 - 1;
    v40 = v39 | (v32 << 6);
    v41 = *(*(v9 + 56) + 8 * v40);
    if (v41 >= v47 && v41 / v10 * 100.0 >= a3)
    {
      v46 = *(*(v9 + 48) + v40);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v37 = sub_2629A9A38(0, *(v37 + 2) + 1, 1, v37);
      }

      v43 = *(v37 + 2);
      v42 = *(v37 + 3);
      if (v43 >= v42 >> 1)
      {
        v37 = sub_2629A9A38((v42 > 1), v43 + 1, 1, v37);
      }

      *(v37 + 2) = v43 + 1;
      v37[v43 + 32] = v46;
    }
  }

  while (1)
  {
    v38 = v32 + 1;
    if (__OFADD__(v32, 1))
    {
      break;
    }

    if (v38 >= v36)
    {

      sub_2629ADF1C(v11, 0);
      return v37;
    }

    v35 = *(v9 + 64 + 8 * v38);
    ++v32;
    if (v35)
    {
      v32 = v38;
      goto LABEL_26;
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  result = sub_262A2A938();
  __break(1u);
  return result;
}

char *sub_2629F1110(uint64_t a1, uint64_t a2, double a3)
{
  v47 = a2;
  v5 = type metadata accessor for PreprocessedUserHistoryWithMetadata(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2629AD774(MEMORY[0x277D84F90]);
  v10 = *(a1 + 16);
  if (v10)
  {
    v11 = 0;
    v12 = a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v13 = *(v6 + 72);
    v14 = v10;
    while (1)
    {
      sub_2629FEF84(v12, v8, type metadata accessor for PreprocessedUserHistoryWithMetadata);
      v15 = *&v8[*(v5 + 44)];
      if (*(v15 + 16) != 1)
      {
        goto LABEL_3;
      }

      v16 = *(v15 + 32);
      sub_2629ADF1C(v11, 0);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v48 = v9;
      v18 = sub_2629CB618(v16);
      v20 = *(v9 + 16);
      v21 = (v19 & 1) == 0;
      v22 = __OFADD__(v20, v21);
      v23 = v20 + v21;
      if (v22)
      {
        goto LABEL_35;
      }

      v24 = v19;
      if (*(v9 + 24) < v23)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_10;
      }

      v31 = v18;
      sub_2629CF118();
      v18 = v31;
      v9 = v48;
      if ((v24 & 1) == 0)
      {
LABEL_11:
        *(v9 + 8 * (v18 >> 6) + 64) |= 1 << v18;
        *(*(v9 + 48) + v18) = v16;
        *(*(v9 + 56) + 8 * v18) = 0;
        v26 = *(v9 + 16);
        v22 = __OFADD__(v26, 1);
        v27 = v26 + 1;
        if (v22)
        {
          goto LABEL_37;
        }

        *(v9 + 16) = v27;
      }

LABEL_13:
      v28 = *(v9 + 56);
      v29 = *(v28 + 8 * v18);
      v22 = __OFADD__(v29, 1);
      v30 = v29 + 1;
      if (v22)
      {
        goto LABEL_36;
      }

      *(v28 + 8 * v18) = v30;
      v11 = sub_2629FF238;
LABEL_3:
      sub_2629FEFEC(v8, type metadata accessor for PreprocessedUserHistoryWithMetadata);
      v12 += v13;
      if (!--v14)
      {
        goto LABEL_18;
      }
    }

    sub_2629D2D44(v23, isUniquelyReferenced_nonNull_native);
    v18 = sub_2629CB618(v16);
    if ((v24 & 1) != (v25 & 1))
    {
      goto LABEL_38;
    }

LABEL_10:
    v9 = v48;
    if ((v24 & 1) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

  v11 = 0;
LABEL_18:
  v32 = 0;
  v33 = 1 << *(v9 + 32);
  v34 = -1;
  if (v33 < 64)
  {
    v34 = ~(-1 << v33);
  }

  v35 = v34 & *(v9 + 64);
  v36 = (v33 + 63) >> 6;
  v37 = MEMORY[0x277D84F90];
  while (v35)
  {
LABEL_26:
    v39 = __clz(__rbit64(v35));
    v35 &= v35 - 1;
    v40 = v39 | (v32 << 6);
    v41 = *(*(v9 + 56) + 8 * v40);
    if (v41 >= v47 && v41 / v10 * 100.0 >= a3)
    {
      v46 = *(*(v9 + 48) + v40);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v37 = sub_2629A9A4C(0, *(v37 + 2) + 1, 1, v37);
      }

      v43 = *(v37 + 2);
      v42 = *(v37 + 3);
      if (v43 >= v42 >> 1)
      {
        v37 = sub_2629A9A4C((v42 > 1), v43 + 1, 1, v37);
      }

      *(v37 + 2) = v43 + 1;
      v37[v43 + 32] = v46;
    }
  }

  while (1)
  {
    v38 = v32 + 1;
    if (__OFADD__(v32, 1))
    {
      break;
    }

    if (v38 >= v36)
    {

      sub_2629ADF1C(v11, 0);
      return v37;
    }

    v35 = *(v9 + 64 + 8 * v38);
    ++v32;
    if (v35)
    {
      v32 = v38;
      goto LABEL_26;
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  result = sub_262A2A938();
  __break(1u);
  return result;
}

char *sub_2629F14E0(uint64_t a1, uint64_t a2, double a3)
{
  v47 = a2;
  v5 = type metadata accessor for PreprocessedUserHistoryWithMetadata(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2629AD79C(MEMORY[0x277D84F90]);
  v10 = *(a1 + 16);
  if (v10)
  {
    v11 = 0;
    v12 = a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v13 = *(v6 + 72);
    v14 = v10;
    while (1)
    {
      sub_2629FEF84(v12, v8, type metadata accessor for PreprocessedUserHistoryWithMetadata);
      v15 = *&v8[*(v5 + 80)];
      if (*(v15 + 16) != 1)
      {
        goto LABEL_3;
      }

      v16 = *(v15 + 32);
      sub_2629ADF1C(v11, 0);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v48 = v9;
      v18 = sub_2629CB65C(v16);
      v20 = *(v9 + 16);
      v21 = (v19 & 1) == 0;
      v22 = __OFADD__(v20, v21);
      v23 = v20 + v21;
      if (v22)
      {
        goto LABEL_35;
      }

      v24 = v19;
      if (*(v9 + 24) < v23)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_10;
      }

      v31 = v18;
      sub_2629CF12C();
      v18 = v31;
      v9 = v48;
      if ((v24 & 1) == 0)
      {
LABEL_11:
        *(v9 + 8 * (v18 >> 6) + 64) |= 1 << v18;
        *(*(v9 + 48) + v18) = v16;
        *(*(v9 + 56) + 8 * v18) = 0;
        v26 = *(v9 + 16);
        v22 = __OFADD__(v26, 1);
        v27 = v26 + 1;
        if (v22)
        {
          goto LABEL_37;
        }

        *(v9 + 16) = v27;
      }

LABEL_13:
      v28 = *(v9 + 56);
      v29 = *(v28 + 8 * v18);
      v22 = __OFADD__(v29, 1);
      v30 = v29 + 1;
      if (v22)
      {
        goto LABEL_36;
      }

      *(v28 + 8 * v18) = v30;
      v11 = sub_2629FF238;
LABEL_3:
      sub_2629FEFEC(v8, type metadata accessor for PreprocessedUserHistoryWithMetadata);
      v12 += v13;
      if (!--v14)
      {
        goto LABEL_18;
      }
    }

    sub_2629D30A4(v23, isUniquelyReferenced_nonNull_native);
    v18 = sub_2629CB65C(v16);
    if ((v24 & 1) != (v25 & 1))
    {
      goto LABEL_38;
    }

LABEL_10:
    v9 = v48;
    if ((v24 & 1) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

  v11 = 0;
LABEL_18:
  v32 = 0;
  v33 = 1 << *(v9 + 32);
  v34 = -1;
  if (v33 < 64)
  {
    v34 = ~(-1 << v33);
  }

  v35 = v34 & *(v9 + 64);
  v36 = (v33 + 63) >> 6;
  v37 = MEMORY[0x277D84F90];
  while (v35)
  {
LABEL_26:
    v39 = __clz(__rbit64(v35));
    v35 &= v35 - 1;
    v40 = v39 | (v32 << 6);
    v41 = *(*(v9 + 56) + 8 * v40);
    if (v41 >= v47 && v41 / v10 * 100.0 >= a3)
    {
      v46 = *(*(v9 + 48) + v40);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v37 = sub_2629A9A60(0, *(v37 + 2) + 1, 1, v37);
      }

      v43 = *(v37 + 2);
      v42 = *(v37 + 3);
      if (v43 >= v42 >> 1)
      {
        v37 = sub_2629A9A60((v42 > 1), v43 + 1, 1, v37);
      }

      *(v37 + 2) = v43 + 1;
      v37[v43 + 32] = v46;
    }
  }

  while (1)
  {
    v38 = v32 + 1;
    if (__OFADD__(v32, 1))
    {
      break;
    }

    if (v38 >= v36)
    {

      sub_2629ADF1C(v11, 0);
      return v37;
    }

    v35 = *(v9 + 64 + 8 * v38);
    ++v32;
    if (v35)
    {
      v32 = v38;
      goto LABEL_26;
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  result = sub_262A2A938();
  __break(1u);
  return result;
}

char *sub_2629F18B0(uint64_t a1, uint64_t a2, double a3)
{
  v47 = a2;
  v5 = type metadata accessor for PreprocessedUserHistoryWithMetadata(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2629AD8B0(MEMORY[0x277D84F90]);
  v10 = *(a1 + 16);
  if (v10)
  {
    v11 = 0;
    v12 = a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v13 = *(v6 + 72);
    v14 = v10;
    while (1)
    {
      sub_2629FEF84(v12, v8, type metadata accessor for PreprocessedUserHistoryWithMetadata);
      v15 = *&v8[*(v5 + 76)];
      if (*(v15 + 16) != 1)
      {
        goto LABEL_3;
      }

      v16 = *(v15 + 32);
      sub_2629ADF1C(v11, 0);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v48 = v9;
      v18 = sub_2629CB708(v16);
      v20 = *(v9 + 16);
      v21 = (v19 & 1) == 0;
      v22 = __OFADD__(v20, v21);
      v23 = v20 + v21;
      if (v22)
      {
        goto LABEL_35;
      }

      v24 = v19;
      if (*(v9 + 24) < v23)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_10;
      }

      v31 = v18;
      sub_2629CF27C();
      v18 = v31;
      v9 = v48;
      if ((v24 & 1) == 0)
      {
LABEL_11:
        *(v9 + 8 * (v18 >> 6) + 64) |= 1 << v18;
        *(*(v9 + 48) + v18) = v16;
        *(*(v9 + 56) + 8 * v18) = 0;
        v26 = *(v9 + 16);
        v22 = __OFADD__(v26, 1);
        v27 = v26 + 1;
        if (v22)
        {
          goto LABEL_37;
        }

        *(v9 + 16) = v27;
      }

LABEL_13:
      v28 = *(v9 + 56);
      v29 = *(v28 + 8 * v18);
      v22 = __OFADD__(v29, 1);
      v30 = v29 + 1;
      if (v22)
      {
        goto LABEL_36;
      }

      *(v28 + 8 * v18) = v30;
      v11 = sub_2629FF238;
LABEL_3:
      sub_2629FEFEC(v8, type metadata accessor for PreprocessedUserHistoryWithMetadata);
      v12 += v13;
      if (!--v14)
      {
        goto LABEL_18;
      }
    }

    sub_2629D33C8(v23, isUniquelyReferenced_nonNull_native);
    v18 = sub_2629CB708(v16);
    if ((v24 & 1) != (v25 & 1))
    {
      goto LABEL_38;
    }

LABEL_10:
    v9 = v48;
    if ((v24 & 1) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

  v11 = 0;
LABEL_18:
  v32 = 0;
  v33 = 1 << *(v9 + 32);
  v34 = -1;
  if (v33 < 64)
  {
    v34 = ~(-1 << v33);
  }

  v35 = v34 & *(v9 + 64);
  v36 = (v33 + 63) >> 6;
  v37 = MEMORY[0x277D84F90];
  while (v35)
  {
LABEL_26:
    v39 = __clz(__rbit64(v35));
    v35 &= v35 - 1;
    v40 = v39 | (v32 << 6);
    v41 = *(*(v9 + 56) + 8 * v40);
    if (v41 >= v47 && v41 / v10 * 100.0 >= a3)
    {
      v46 = *(*(v9 + 48) + v40);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v37 = sub_2629A9B60(0, *(v37 + 2) + 1, 1, v37);
      }

      v43 = *(v37 + 2);
      v42 = *(v37 + 3);
      if (v43 >= v42 >> 1)
      {
        v37 = sub_2629A9B60((v42 > 1), v43 + 1, 1, v37);
      }

      *(v37 + 2) = v43 + 1;
      v37[v43 + 32] = v46;
    }
  }

  while (1)
  {
    v38 = v32 + 1;
    if (__OFADD__(v32, 1))
    {
      break;
    }

    if (v38 >= v36)
    {

      sub_2629ADF1C(v11, 0);
      return v37;
    }

    v35 = *(v9 + 64 + 8 * v38);
    ++v32;
    if (v35)
    {
      v32 = v38;
      goto LABEL_26;
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  result = sub_262A2A938();
  __break(1u);
  return result;
}

void *sub_2629F1C80(uint64_t a1)
{
  v67 = sub_262A29F38();
  v2 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v4 = &v55 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_262A2A168();
  MEMORY[0x28223BE20](v5 - 8);
  v71 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3C998, &qword_262A2F8E8);
  MEMORY[0x28223BE20](v7 - 8);
  v70 = &v55 - v8;
  v69 = sub_262A2A058();
  v9 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v68 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_262A2A128();
  v11 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v13 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for PreprocessedUserHistoryWithMetadata(0);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v74 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_2629AC6D4(MEMORY[0x277D84F90]);
  v18 = *(a1 + 16);
  if (!v18)
  {
    return v17;
  }

  v65 = v14;
  v19 = a1 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
  v64 = *MEMORY[0x277CC9830];
  v62 = (v9 + 8);
  v63 = (v9 + 104);
  v61 = *MEMORY[0x277CC9940];
  v60 = *MEMORY[0x277CC9960];
  v57 = (v11 + 8);
  v58 = (v2 + 8);
  v56 = *(v15 + 72);
  v59 = xmmword_262A2EA00;
  v20 = v74;
  while (1)
  {
    v73 = v18;
    sub_2629FEF84(v19, v20, type metadata accessor for PreprocessedUserHistoryWithMetadata);
    v23 = v68;
    v22 = v69;
    (*v63)(v68, v64, v69);
    sub_262A2A068();
    (*v62)(v23, v22);
    sub_262A2A088();
    v24 = v70;
    sub_262A2A038();
    v25 = sub_262A2A048();
    (*(*(v25 - 8) + 56))(v24, 0, 1, v25);
    sub_262A2A0D8();
    sub_262A2A148();
    sub_262A2A0F8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3C9A0, &unk_262A2F8F0);
    v26 = sub_262A2A108();
    v27 = *(v26 - 8);
    v28 = *(v27 + 72);
    v29 = (*(v27 + 80) + 32) & ~*(v27 + 80);
    v30 = swift_allocObject();
    *(v30 + 16) = v59;
    v31 = v30 + v29;
    v32 = *(v27 + 104);
    v32(v31, v61, v26);
    v32(v31 + v28, v60, v26);
    v33 = v74;
    sub_262A15860(v30);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v34 = v65;
    v35 = v13;
    sub_262A2A0A8();

    v36 = sub_262A29EB8();
    if (v37)
    {
      break;
    }

    v38 = v36;
    v39 = sub_262A29ED8();
    if (v40)
    {
      goto LABEL_23;
    }

    v41 = v39;
    v72 = *(v33 + *(v34 + 28));
    if (!v17[2] || (sub_2629CB2B8(v39, v38), (v42 & 1) == 0))
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v77 = v17;
      sub_262A118B4(MEMORY[0x277D84FA0], v41, v38, isUniquelyReferenced_nonNull_native);
      v17 = v77;
    }

    v44 = swift_isUniquelyReferenced_nonNull_native();
    v76 = v17;
    v46 = sub_2629CB2B8(v41, v38);
    v47 = v17[2];
    v48 = (v45 & 1) == 0;
    v49 = v47 + v48;
    if (__OFADD__(v47, v48))
    {
      __break(1u);
LABEL_23:
      __break(1u);
      break;
    }

    v50 = v45;
    if (v17[3] >= v49)
    {
      v13 = v35;
      if (v44)
      {
        if ((v45 & 1) == 0)
        {
          goto LABEL_20;
        }
      }

      else
      {
        sub_2629CE2C8();
        if ((v50 & 1) == 0)
        {
          goto LABEL_20;
        }
      }
    }

    else
    {
      sub_2629D0170(v49, v44);
      v51 = sub_2629CB2B8(v41, v38);
      if ((v50 & 1) != (v52 & 1))
      {
        goto LABEL_25;
      }

      v46 = v51;
      v13 = v35;
      if ((v50 & 1) == 0)
      {
LABEL_20:
        __break(1u);
        return v17;
      }
    }

    v53 = v76;
    v75 = *(v76[7] + 8 * v46);
    sub_262A22ED4(&v77, v72);
    if (v75)
    {
      *(*(v53 + 56) + 8 * v46) = v75;
    }

    else
    {
      sub_262A10B68(v46, v53);
    }

    v21 = *v58;

    v21(v4, v67);
    (*v57)(v13, v66);
    v20 = v74;
    sub_2629FEFEC(v74, type metadata accessor for PreprocessedUserHistoryWithMetadata);

    v17 = v76;
    v19 += v56;
    v18 = v73 - 1;
    if (v73 == 1)
    {
      return v17;
    }
  }

  __break(1u);
LABEL_25:
  result = sub_262A2A938();
  __break(1u);
  return result;
}

uint64_t sub_2629F23E4(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v4 = sub_2629A9CEC(*(a1 + 16), 0);
    v5 = sub_262A13690(&v17, v4 + 2, v2, a1);
    v6 = v17;

    sub_2629ADE08(v6);
    if (v5 == v2)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v4 = v3;
LABEL_5:
  v17 = v4;
  sub_2629F6B6C(&v17, sub_262A1F348, &type metadata for WeekIdentifier, sub_2629F9F70, sub_2629F787C);
  v7 = v17;
  v8 = v17[2];
  if (v8)
  {
    v17 = v3;
    sub_2629CD840(0, v8, 0);
    v9 = v17;
    v10 = (v7 + 40);
    while (*(a1 + 16))
    {
      v11 = sub_2629CB2B8(*(v10 - 1), *v10);
      if ((v12 & 1) == 0)
      {
        goto LABEL_16;
      }

      v13 = *(*(*(a1 + 56) + 8 * v11) + 16);
      v17 = v9;
      v15 = *(v9 + 16);
      v14 = *(v9 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_2629CD840((v14 > 1), v15 + 1, 1);
        v9 = v17;
      }

      *(v9 + 16) = v15 + 1;
      *(v9 + 8 * v15 + 32) = v13;
      v10 += 2;
      if (!--v8)
      {

        return v9;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
    MEMORY[0x26672F6A0](v7);

    __break(1u);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return result;
}

char *sub_2629F25D4(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3C9A8, &qword_262A30A50);
  MEMORY[0x28223BE20](v5 - 8);
  v302 = &v275 - v6;
  v7 = sub_262A2A108();
  v295 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v301 = &v275 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3CBB8, &qword_262A30A58);
  MEMORY[0x28223BE20](v9 - 8);
  v300 = &v275 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3CBC0, &unk_262A30A60);
  MEMORY[0x28223BE20](v11 - 8);
  v299 = &v275 - v12;
  v304 = sub_262A29F38();
  v287 = *(v304 - 8);
  v13 = MEMORY[0x28223BE20](v304);
  v285 = &v275 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v306 = &v275 - v15;
  v298 = sub_262A2A168();
  v292 = *(v298 - 8);
  MEMORY[0x28223BE20](v298);
  v294 = &v275 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3C998, &qword_262A2F8E8);
  MEMORY[0x28223BE20](v17 - 8);
  v293 = (&v275 - v18);
  v291 = sub_262A2A058();
  v290 = *(v291 - 8);
  MEMORY[0x28223BE20](v291);
  v289 = &v275 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v303 = sub_262A2A128();
  v284 = *(v303 - 8);
  MEMORY[0x28223BE20](v303);
  v21 = &v275 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v305 = sub_262A29FD8();
  v283 = *(v305 - 8);
  v22 = MEMORY[0x28223BE20](v305);
  v297 = &v275 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v25 = &v275 - v24;
  v26 = 0xE000000000000000;
  v316 = 0;
  v318 = 0;
  v319 = 0xE000000000000000;
  sub_262A2A6F8();
  MEMORY[0x26672ECF0](0xD00000000000003ALL, 0x8000000262A33220);
  v313 = a1;
  v321 = *(a1 + 16);
  v27 = sub_262A2A868();
  MEMORY[0x26672ECF0](v27);

  MEMORY[0x26672ECF0](0x6F20736B65657720, 0xEE00617461642066);
  sub_2629EA8C8(v318, v319);

  v28 = *(a2 + 16);
  v308 = v2;
  if (!v28)
  {
    v37 = 0.0;
    v34 = v313;
LABEL_15:
    v309 = v21;
    v310 = v25;
    v40 = v37;
    if (v37 <= 1)
    {
      v40 = 1;
    }

    if (v40 >= 7)
    {
      v41 = 7;
    }

    else
    {
      v41 = v40;
    }

    v318 = 0;
    v319 = 0xE000000000000000;
    sub_262A2A6F8();
    MEMORY[0x26672ECF0](0xD000000000000016, 0x8000000262A33260);
    sub_262A2A598();
    MEMORY[0x26672ECF0](0x756465686373202CLL, 0xED000020676E696CLL);
    v282 = v41;
    v321 = v41;
    v42 = sub_262A2A868();
    MEMORY[0x26672ECF0](v42);

    MEMORY[0x26672ECF0](0x6570207379616420, 0xEE006B6565772072);
    sub_2629EA8C8(v318, v319);

    v29 = sub_2629AC7F0(MEMORY[0x277D84F90]);
    v26 = v34 + 64;
    v43 = 1 << *(v34 + 32);
    v44 = -1;
    if (v43 < 64)
    {
      v44 = ~(-1 << v43);
    }

    v45 = v44 & *(v34 + 64);
    v46 = (v43 + 63) >> 6;

    v47 = 0;
    v48 = 0;
    v296 = v7;
    v311 = (v34 + 64);
    v307 = v46;
    while (1)
    {
      v315 = v29;
      v312 = v47;
      if (!v45)
      {
        while (1)
        {
          v49 = v48 + 1;
          if (__OFADD__(v48, 1))
          {
            goto LABEL_239;
          }

          if (v49 >= v46)
          {
            break;
          }

          v45 = *(v26 + 8 * v49);
          ++v48;
          if (v45)
          {
            goto LABEL_28;
          }
        }

        v83 = v29;
        v85 = *(v29 + 64);
        v29 += 64;
        v84 = v85;
        v86 = 1 << *(v29 - 32);
        v87 = -1;
        if (v86 < 64)
        {
          v87 = ~(-1 << v86);
        }

        v88 = v87 & v84;
        if (v88)
        {
          v89 = 0;
          v90 = __clz(__rbit64(v88));
          v91 = (v88 - 1) & v88;
          v26 = (v86 + 63) >> 6;
        }

        else
        {
          v92 = 0;
          v26 = (v86 + 63) >> 6;
          v93 = v83 + 72;
          do
          {
            if (v26 - 1 == v88)
            {
              goto LABEL_97;
            }

            v89 = v88 + 1;
            v94 = *(v93 + 8 * v88);
            v92 -= 64;
            ++v88;
          }

          while (!v94);
          v91 = (v94 - 1) & v94;
          v90 = __clz(__rbit64(v94)) - v92;
        }

        v95 = *(v315 + 48) + 16 * v90;
        v96 = *v95;
        v34 = *(v95 + 8);
        v97 = *(*(v315 + 56) + 8 * v90);

        if (!v91)
        {
          goto LABEL_66;
        }

        do
        {
LABEL_64:
          while (1)
          {
            v98 = __clz(__rbit64(v91));
            v91 &= v91 - 1;
            v99 = v98 | (v89 << 6);
            v100 = *(*(v315 + 56) + 8 * v99);
            if (v97 < v100)
            {
              break;
            }

            if (!v91)
            {
              goto LABEL_66;
            }
          }

          v102 = *(v315 + 48) + 16 * v99;
          v96 = *v102;
          v103 = *(v102 + 8);

          v34 = v103;
          v97 = v100;
        }

        while (v91);
        while (1)
        {
LABEL_66:
          v101 = v89 + 1;
          if (__OFADD__(v89, 1))
          {
            goto LABEL_240;
          }

          if (v101 >= v26)
          {
            break;
          }

          v91 = *(v29 + 8 * v101);
          ++v89;
          if (v91)
          {
            v89 = v101;
            goto LABEL_64;
          }
        }

        v104 = v97 / *(v313 + 16);
        v105 = v308 + *(type metadata accessor for HeuristicsProcessor(0) + 24);
        if (*(v105 + *(type metadata accessor for PlanGenerationContext(0) + 112)) > v104)
        {

          v34 = v313;
LABEL_97:
          sub_2629EA8C8(0xD00000000000003CLL, 0x8000000262A33280);
          v29 = sub_2629AC8EC(MEMORY[0x277D84F90]);
          v321 = v29;
          v126 = 1 << *(v34 + 32);
          if (v126 < 64)
          {
            v127 = ~(-1 << v126);
          }

          else
          {
            v127 = -1;
          }

          v128 = v127 & *(v34 + 64);
          v26 = (v126 + 63) >> 6;

          v129 = 0;
          v130 = 0;
          v131 = v311;
          v307 = v26;
          while (2)
          {
            if (v128)
            {
              v132 = v130;
LABEL_107:
              v133 = __clz(__rbit64(v128));
              v128 &= v128 - 1;
              v134 = *(*(v34 + 56) + ((v132 << 9) | (8 * v133)));
              v34 = (v134 + 7);
              v135 = 1 << *(v134 + 32);
              if (v135 < 64)
              {
                v136 = ~(-1 << v135);
              }

              else
              {
                v136 = -1;
              }

              v137 = v136 & v134[7];
              v138 = (v135 + 63) >> 6;
              v314 = v134;

              v139 = 0;
              v140 = v129;
              if (!v137)
              {
                while (1)
                {
LABEL_112:
                  v26 = v139 + 1;
                  if (__OFADD__(v139, 1))
                  {
                    goto LABEL_238;
                  }

                  if (v26 >= v138)
                  {
                    break;
                  }

                  v137 = *(v34 + 8 * v26);
                  ++v139;
                  if (v137)
                  {
                    goto LABEL_115;
                  }
                }

                v129 = v140;

                v130 = v132;
                v34 = v313;
                v131 = v311;
                v26 = v307;
                continue;
              }

              while (2)
              {
                v26 = v139;
LABEL_115:
                v141 = *(*(v314 + 6) + ((v26 << 9) | (8 * __clz(__rbit64(v137)))));
                sub_2629ADF1C(v140, 0);
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v318 = v29;
                v143 = sub_2629CB210(v141);
                v145 = *(v29 + 16);
                v146 = (v144 & 1) == 0;
                v36 = __OFADD__(v145, v146);
                v147 = v145 + v146;
                if (v36)
                {
                  goto LABEL_245;
                }

                v148 = v144;
                if (*(v29 + 24) >= v147)
                {
                  if (isUniquelyReferenced_nonNull_native)
                  {
                    goto LABEL_120;
                  }

                  v155 = v143;
                  sub_2629CE574();
                  v143 = v155;
                  v29 = v318;
                  if ((v148 & 1) == 0)
                  {
LABEL_121:
                    *(v29 + 8 * (v143 >> 6) + 64) |= 1 << v143;
                    *(*(v29 + 48) + 8 * v143) = v141;
                    *(*(v29 + 56) + 8 * v143) = 0;
                    v150 = *(v29 + 16);
                    v36 = __OFADD__(v150, 1);
                    v151 = v150 + 1;
                    if (v36)
                    {
                      goto LABEL_249;
                    }

                    *(v29 + 16) = v151;
                  }
                }

                else
                {
                  sub_2629D0674(v147, isUniquelyReferenced_nonNull_native);
                  v143 = sub_2629CB210(v141);
                  if ((v148 & 1) != (v149 & 1))
                  {
                    goto LABEL_266;
                  }

LABEL_120:
                  v29 = v318;
                  if ((v148 & 1) == 0)
                  {
                    goto LABEL_121;
                  }
                }

                v152 = *(v29 + 56);
                v153 = *(v152 + 8 * v143);
                v36 = __OFADD__(v153, 1);
                v154 = v153 + 1;
                if (v36)
                {
                  goto LABEL_246;
                }

                v137 &= v137 - 1;
                *(v152 + 8 * v143) = v154;
                v140 = sub_2629FF238;
                v139 = v26;
                if (!v137)
                {
                  goto LABEL_112;
                }

                continue;
              }
            }

            break;
          }

          while (1)
          {
            v132 = v130 + 1;
            if (__OFADD__(v130, 1))
            {
              goto LABEL_241;
            }

            if (v132 >= v26)
            {
              break;
            }

            v128 = v131[v132];
            ++v130;
            if (v128)
            {
              goto LABEL_107;
            }
          }

          v278 = v129;
          v277 = v29;
          v321 = v29;

          v318 = sub_2629F6D44(v34, sub_2629A9CEC, sub_262A13690);
          v156 = v316;
          sub_2629F6B6C(&v318, sub_262A1F348, &type metadata for WeekIdentifier, sub_2629FA544, sub_2629F7908);
          v157 = &v307;
          v276 = v156;
          if (v156)
          {
            goto LABEL_271;
          }

          v158 = v318;
          v159 = sub_2629AC8EC(MEMORY[0x277D84F90]);
          v160 = *(v158 + 2);
          v161 = v309;
          v26 = v310;
          v314 = v158;
          if (v160)
          {
            v162 = 0;
            v163 = v158 + 32;
            v316 = v160;
            v311 = (v158 + 32);
            while (1)
            {
              if (v162 >= *(v158 + 2))
              {
                goto LABEL_247;
              }

              if (*(v34 + 16))
              {
                v29 = v34;
                v164 = sub_2629CB2B8(*&v163[16 * v162], *&v163[16 * v162 + 8]);
                if (v165)
                {
                  break;
                }
              }

LABEL_132:
              if (++v162 == v160)
              {
                goto LABEL_157;
              }
            }

            v166 = *(*(v34 + 56) + 8 * v164);
            v26 = v166 + 56;
            v167 = 1 << *(v166 + 32);
            if (v167 < 64)
            {
              v168 = ~(-1 << v167);
            }

            else
            {
              v168 = -1;
            }

            v169 = v168 & *(v166 + 56);
            v170 = (v167 + 63) >> 6;

            v171 = 0;
            do
            {
LABEL_140:
              if (!v169)
              {
                while (1)
                {
                  v172 = v171 + 1;
                  if (__OFADD__(v171, 1))
                  {
                    break;
                  }

                  if (v172 >= v170)
                  {

                    v161 = v309;
                    v26 = v310;
                    v158 = v314;
                    v160 = v316;
                    v163 = v311;
                    goto LABEL_132;
                  }

                  v169 = *(v26 + 8 * v172);
                  ++v171;
                  if (v169)
                  {
                    v171 = v172;
                    goto LABEL_145;
                  }
                }

                __break(1u);
LABEL_238:
                __break(1u);
LABEL_239:
                __break(1u);
LABEL_240:
                __break(1u);
LABEL_241:
                __break(1u);
LABEL_242:
                __break(1u);
LABEL_243:
                __break(1u);
LABEL_244:
                __break(1u);
LABEL_245:
                __break(1u);
LABEL_246:
                __break(1u);
LABEL_247:
                __break(1u);
LABEL_248:
                __break(1u);
LABEL_249:
                __break(1u);
LABEL_250:
                __break(1u);
LABEL_251:
                __break(1u);
LABEL_252:
                __break(1u);
LABEL_253:
                __break(1u);
LABEL_254:
                __break(1u);
LABEL_255:
                __break(1u);
LABEL_256:
                __break(1u);
                goto LABEL_257;
              }

LABEL_145:
              v173 = __clz(__rbit64(v169));
              v169 &= v169 - 1;
              v174 = *(*(v166 + 48) + ((v171 << 9) | (8 * v173)));
              if (!*(v159 + 2))
              {
                break;
              }

              v29 = v159;
              sub_2629CB210(v174);
            }

            while ((v175 & 1) != 0);
            v29 = v159;
            v176 = swift_isUniquelyReferenced_nonNull_native();
            v318 = v29;
            v177 = sub_2629CB210(v174);
            v179 = *(v29 + 16);
            v180 = (v178 & 1) == 0;
            v36 = __OFADD__(v179, v180);
            v181 = v179 + v180;
            if (v36)
            {
              goto LABEL_260;
            }

            v182 = v178;
            if (*(v29 + 24) < v181)
            {
              sub_2629D0674(v181, v176);
              v29 = v318;
              v177 = sub_2629CB210(v174);
              if ((v182 & 1) != (v183 & 1))
              {
                goto LABEL_266;
              }

              goto LABEL_152;
            }

            if (v176)
            {
LABEL_152:
              v159 = v318;
              if (v182)
              {
                goto LABEL_153;
              }
            }

            else
            {
              v29 = &v318;
              v184 = v177;
              sub_2629CE574();
              v177 = v184;
              v159 = v318;
              if (v182)
              {
LABEL_153:
                *(*(v159 + 7) + 8 * v177) = v162;
                v34 = v313;
                goto LABEL_140;
              }
            }

            *&v159[8 * (v177 >> 6) + 64] |= 1 << v177;
            *(*(v159 + 6) + 8 * v177) = v174;
            *(*(v159 + 7) + 8 * v177) = v162;
            v185 = *(v159 + 2);
            v36 = __OFADD__(v185, 1);
            v186 = v185 + 1;
            if (v36)
            {
              __break(1u);
LABEL_266:
              sub_262A2A938();
              __break(1u);
LABEL_267:
              swift_bridgeObjectRetain_n();
              MEMORY[0x26672F6A0](v316);
              __break(1u);
LABEL_268:
              v274 = v316;
              goto LABEL_269;
            }

            *(v159 + 2) = v186;
            v34 = v313;
            goto LABEL_140;
          }

LABEL_157:
          v316 = v159;
          v317 = sub_2629AC9C8(MEMORY[0x277D84F90]);
          sub_262A29FC8();
          v187 = v290;
          v188 = v289;
          v189 = v291;
          (*(v290 + 104))(v289, *MEMORY[0x277CC9830], v291);
          sub_262A2A068();
          v190 = v188;
          v191 = v316;
          (*(v187 + 8))(v190, v189);
          sub_262A2A088();
          v192 = v293;
          sub_262A2A038();
          v193 = sub_262A2A048();
          v26 = 1;
          (*(*(v193 - 8) + 56))(v192, 0, 1, v193);
          sub_262A2A0D8();
          sub_262A2A148();
          v29 = v161;
          sub_262A2A0F8();
          v194 = v191 + 64;
          v195 = 1 << v191[32];
          v196 = -1;
          if (v195 < 64)
          {
            v196 = ~(-1 << v195);
          }

          v197 = v196 & *(v191 + 8);
          v198 = (v195 + 63) >> 6;
          v294 = v158 + 32;
          v293 = (v284 + 56);
          v292 += 7;
          LODWORD(v291) = *MEMORY[0x277CC99B8];
          v199 = (v295 + 104);
          v290 = v295 + 8;
          v289 = (v283 + 6);
          v281 = (v283 + 4);
          v280 = *MEMORY[0x277CC9968];
          v311 = (v287 + 1);
          ++v283;

          v34 = 0;
          v279 = xmmword_262A2B290;
          v287 = v199;
          v286 = v191 + 64;
          v288 = v198;
          if (!v197)
          {
LABEL_163:
            while (1)
            {
              v200 = v34 + 1;
              if (__OFADD__(v34, 1))
              {
                goto LABEL_242;
              }

              if (v200 >= v198)
              {

                v318 = sub_2629F6D44(v243, sub_2629A9C68, sub_262A13790);
                v244 = v276;
                sub_2629F66A0(&v318, &v321, &v317);
                if (v244)
                {
                  v274 = v244;
                  goto LABEL_269;
                }

                v26 = v318;
                v318 = 0;
                v319 = 0xE000000000000000;
                sub_262A2A6F8();

                v318 = 0xD000000000000015;
                v319 = 0x8000000262A332C0;
                v245 = MEMORY[0x26672EDD0](v26, MEMORY[0x277D83B88]);
                MEMORY[0x26672ECF0](v245);

                sub_2629EA8C8(v318, v319);

                if (*(v26 + 16) >= v282)
                {
                  v29 = v282;
                }

                else
                {
                  v29 = *(v26 + 16);
                }

                v34 = v26 + 32;
                sub_262A2A908();
                swift_retain_n();
                v246 = swift_dynamicCastClass();
                if (!v246)
                {
                  swift_unknownObjectRelease();
                  v246 = MEMORY[0x277D84F90];
                }

                v247 = *(v246 + 16);

                if (v247 != v29)
                {
                  goto LABEL_264;
                }

                v248 = swift_dynamicCastClass();
                swift_unknownObjectRelease();
                if (!v248)
                {
                  v248 = MEMORY[0x277D84F90];
                  goto LABEL_212;
                }

                v249 = *(v248 + 16);
                if (!v249)
                {
                  goto LABEL_213;
                }

                goto LABEL_203;
              }

              v197 = *&v194[8 * v200];
              ++v34;
              if (v197)
              {
                v34 = v200;
                goto LABEL_167;
              }
            }
          }

          while (1)
          {
LABEL_167:
            v201 = (v34 << 9) | (8 * __clz(__rbit64(v197)));
            v202 = *(*(v191 + 7) + v201);
            if ((v202 & 0x8000000000000000) != 0)
            {
              goto LABEL_254;
            }

            if (v202 >= *(v158 + 2))
            {
              goto LABEL_255;
            }

            v197 &= v197 - 1;
            v313 = *(*(v191 + 6) + v201);
            (*v293)(v299, 1, 1, v303);
            (*v292)(v300, 1, 1, v298);
            sub_262A29F28();
            sub_262A29F08();
            sub_262A29EC8();
            v203 = *v199;
            v204 = v301;
            v205 = v296;
            v203(v301, v291, v296);
            sub_262A2A118();
            v307 = *v290;
            v307(v204, v205);
            sub_262A29F18();
            v206 = v302;
            sub_262A2A0B8();
            v207 = v206;
            v208 = v206;
            v209 = v305;
            if ((*v289)(v208, 1, v305) == 1)
            {
              break;
            }

            (*v281)(v297, v207, v209);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3C9A0, &unk_262A2F8F0);
            v218 = (*(v295 + 80) + 32) & ~*(v295 + 80);
            v219 = swift_allocObject();
            *(v219 + 16) = v279;
            v203((v219 + v218), v280, v205);
            sub_262A15860(v219);
            swift_setDeallocating();
            v307((v219 + v218), v205);
            swift_deallocClassInstance();
            v220 = v285;
            sub_262A2A098();

            v26 = sub_262A29EF8();
            v222 = v221;
            v223 = *v311;
            (*v311)(v220, v304);
            v224 = v308 + *(type metadata accessor for HeuristicsProcessor(0) + 24);
            v225 = *(v224 + *(type metadata accessor for PlanGenerationContext(0) + 136));
            v29 = v317;
            v226 = swift_isUniquelyReferenced_nonNull_native();
            v318 = v29;
            v227 = v313;
            v229 = sub_2629CB210(v313);
            v230 = *(v29 + 16);
            v231 = (v228 & 1) == 0;
            v232 = v230 + v231;
            if (__OFADD__(v230, v231))
            {
              goto LABEL_259;
            }

            v233 = v228;
            if (*(v29 + 24) >= v232)
            {
              if ((v226 & 1) == 0)
              {
                v29 = &v318;
                sub_2629CE428();
              }
            }

            else
            {
              sub_2629D0410(v232, v226);
              v29 = v318;
              v234 = sub_2629CB210(v227);
              if ((v233 & 1) != (v235 & 1))
              {
                goto LABEL_266;
              }

              v229 = v234;
            }

            v191 = v316;
            if (v222)
            {
              v236 = 0.0;
            }

            else
            {
              v236 = (v26 / 30);
            }

            v237 = pow(v225, v236);
            v238 = v318;
            if (v233)
            {
              *(*(v318 + 7) + 8 * v229) = v237;
              (*v283)(v297, v305);
              v223(v306, v304);
            }

            else
            {
              *&v318[8 * (v229 >> 6) + 64] |= 1 << v229;
              *(*(v238 + 6) + 8 * v229) = v227;
              *(*(v238 + 7) + 8 * v229) = v237;
              (*v283)(v297, v305);
              v223(v306, v304);
              v239 = *(v238 + 2);
              v36 = __OFADD__(v239, 1);
              v240 = v239 + 1;
              if (v36)
              {
                goto LABEL_262;
              }

              *(v238 + 2) = v240;
            }

            v317 = v238;
            v158 = v314;
            v194 = v286;
            v198 = v288;
            v199 = v287;
            if (!v197)
            {
              goto LABEL_163;
            }
          }

          sub_2629ADF2C(v207, &qword_27FF3C9A8, &qword_262A30A50);
          v29 = v317;
          v26 = swift_isUniquelyReferenced_nonNull_native();
          v318 = v29;
          v210 = v313;
          v211 = sub_2629CB210(v313);
          v213 = *(v29 + 16);
          v214 = (v212 & 1) == 0;
          v36 = __OFADD__(v213, v214);
          v215 = v213 + v214;
          if (v36)
          {
            goto LABEL_258;
          }

          v216 = v212;
          if (*(v29 + 24) >= v215)
          {
            v191 = v316;
            v158 = v314;
            v198 = v288;
            v199 = v287;
            if (v26)
            {
              goto LABEL_179;
            }

            v26 = v211;
            sub_2629CE428();
            v211 = v26;
            v29 = v318;
            if ((v216 & 1) == 0)
            {
              goto LABEL_190;
            }

LABEL_180:
            *(*(v29 + 56) + 8 * v211) = 0;
            (*v311)(v306, v304);
          }

          else
          {
            sub_2629D0410(v215, v26);
            v211 = sub_2629CB210(v210);
            v191 = v316;
            v158 = v314;
            v198 = v288;
            v199 = v287;
            if ((v216 & 1) != (v217 & 1))
            {
              goto LABEL_266;
            }

LABEL_179:
            v29 = v318;
            if (v216)
            {
              goto LABEL_180;
            }

LABEL_190:
            *(v29 + 8 * (v211 >> 6) + 64) |= 1 << v211;
            *(*(v29 + 48) + 8 * v211) = v210;
            *(*(v29 + 56) + 8 * v211) = 0;
            (*v311)(v306, v304);
            v241 = *(v29 + 16);
            v36 = __OFADD__(v241, 1);
            v242 = v241 + 1;
            if (v36)
            {
              goto LABEL_263;
            }

            *(v29 + 16) = v242;
          }

          v317 = v29;
          v194 = v286;
          if (!v197)
          {
            goto LABEL_163;
          }

          goto LABEL_167;
        }

        v318 = v96;
        v319 = v34;
        v106 = sub_2629FF0B0();
        v107 = MEMORY[0x26672EED0](45, 0xE100000000000000, 0x7FFFFFFFFFFFFFFFLL, 1, MEMORY[0x277D837D0], v106);

        v108 = *(v107 + 16);
        if (!v108)
        {
          v29 = MEMORY[0x277D84F90];
          goto LABEL_225;
        }

        v109 = 0;
        v29 = MEMORY[0x277D84F90];
LABEL_76:
        v110 = (v107 + 56 + 32 * v109);
        v111 = v109;
        while (1)
        {
          if (v111 >= *(v107 + 16))
          {
            goto LABEL_248;
          }

          v112 = *(v110 - 3);
          v113 = *(v110 - 2);
          if ((v113 ^ v112) >> 14)
          {
            v114 = *(v110 - 1);
            v34 = *v110;
            if ((*v110 & 0x1000000000000000) != 0)
            {
              v120 = *(v110 - 2);
              v121 = *(v110 - 3);
              v314 = *(v110 - 1);

              v119 = sub_2629FD2EC(v121, v120, v314, v34, 10);
              v26 = v122;

              if ((v26 & 1) == 0)
              {
                goto LABEL_91;
              }
            }

            else
            {
              if ((v34 & 0x2000000000000000) != 0)
              {
                v318 = *(v110 - 1);
                v319 = v34 & 0xFFFFFFFFFFFFFFLL;
                v115 = &v318;
              }

              else if ((v114 & 0x1000000000000000) != 0)
              {
                v115 = ((v34 & 0xFFFFFFFFFFFFFFFLL) + 32);
              }

              else
              {
                v314 = *(v110 - 3);
                v123 = v113;
                v124 = v114;
                v115 = sub_262A2A728();
                v114 = v124;
                v112 = v314;
                v113 = v123;
              }

              v116 = v316;
              v117 = sub_2629FE618(v115, v112, v113, v114, v34, 10);
              v316 = v116;
              if (v116)
              {
                goto LABEL_267;
              }

              v119 = v117;
              LOBYTE(v321) = v118 & 1;

              v26 = v321;

              if ((v26 & 1) == 0)
              {
LABEL_91:
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v29 = sub_2629A9140(0, *(v29 + 16) + 1, 1, v29);
                }

                v26 = *(v29 + 16);
                v125 = *(v29 + 24);
                if (v26 >= v125 >> 1)
                {
                  v29 = sub_2629A9140((v125 > 1), v26 + 1, 1, v29);
                }

                v109 = v111 + 1;
                *(v29 + 16) = v26 + 1;
                *(v29 + 8 * v26 + 32) = v119;
                if (v108 - 1 == v111)
                {
LABEL_225:

                  v263 = *(v29 + 16);
                  if (v263)
                  {
                    v264 = (v29 + 32);
                    v251 = MEMORY[0x277D84F90];
                    do
                    {
                      v266 = *v264++;
                      v265 = v266;
                      if (v266 <= 6)
                      {
                        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                        {
                          v251 = sub_2629A9350(0, *(v251 + 2) + 1, 1, v251);
                        }

                        v268 = *(v251 + 2);
                        v267 = *(v251 + 3);
                        if (v268 >= v267 >> 1)
                        {
                          v251 = sub_2629A9350((v267 > 1), v268 + 1, 1, v251);
                        }

                        *(v251 + 2) = v268 + 1;
                        v251[v268 + 32] = v265;
                      }

                      --v263;
                    }

                    while (v263);
                  }

                  else
                  {
                    v251 = MEMORY[0x277D84F90];
                  }

                  v318 = 0;
                  v319 = 0xE000000000000000;
                  swift_bridgeObjectRetain_n();
                  sub_262A2A6F8();
                  MEMORY[0x26672ECF0](0xD000000000000031, 0x8000000262A33300);
                  v269 = MEMORY[0x26672EDD0](v251, &type metadata for SIDWeekday);
                  v271 = v270;

                  MEMORY[0x26672ECF0](v269, v271);

                  sub_2629EA8C8(v318, v319);

                  sub_2629ADF1C(v312, 0);
                  return v251;
                }

                goto LABEL_76;
              }
            }
          }

          ++v111;
          v110 += 4;
          if (v108 == v111)
          {
            goto LABEL_225;
          }
        }
      }

      v49 = v48;
LABEL_28:
      v50 = *(*(v34 + 56) + ((v49 << 9) | (8 * __clz(__rbit64(v45)))));
      v29 = *(v50 + 16);
      if (v29)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3BF18, &unk_262A2B3C0);
        v34 = swift_allocObject();
        v51 = _swift_stdlib_malloc_size(v34);
        v52 = v51 - 32;
        if (v51 < 32)
        {
          v52 = v51 - 25;
        }

        *(v34 + 16) = v29;
        *(v34 + 24) = 2 * (v52 >> 3);
        v314 = sub_262A13890(&v318, (v34 + 32), v29, v50);
        v53 = v318;
        v26 = v320;
        swift_bridgeObjectRetain_n();
        sub_2629ADE08(v53);
        if (v314 != v29)
        {
          goto LABEL_252;
        }
      }

      else
      {

        v34 = MEMORY[0x277D84F90];
      }

      v318 = v34;
      v54 = v316;
      sub_2629A9EB4(&v318);
      v316 = v54;
      if (v54)
      {
        goto LABEL_268;
      }

      v55 = v318;
      v56 = *(v318 + 2);
      if (v56)
      {
        v318 = MEMORY[0x277D84F90];
        sub_2629CD800(0, v56, 0);
        v57 = v318;
        v58 = 32;
        do
        {
          v321 = *&v55[v58];
          v59 = sub_262A2A868();
          v318 = v57;
          v62 = *(v57 + 2);
          v61 = *(v57 + 3);
          if (v62 >= v61 >> 1)
          {
            v64 = v59;
            v65 = v60;
            sub_2629CD800((v61 > 1), v62 + 1, 1);
            v60 = v65;
            v59 = v64;
            v57 = v318;
          }

          *(v57 + 2) = v62 + 1;
          v63 = &v57[16 * v62];
          *(v63 + 4) = v59;
          *(v63 + 5) = v60;
          v58 += 8;
          --v56;
        }

        while (v56);
      }

      else
      {

        v57 = MEMORY[0x277D84F90];
      }

      v318 = v57;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF3C0C0, &unk_262A2BA70);
      sub_2629ADBD8();
      v66 = sub_262A2A398();
      v68 = v67;

      sub_2629ADF1C(v312, 0);
      v29 = v315;
      v69 = swift_isUniquelyReferenced_nonNull_native();
      v318 = v29;
      v34 = sub_2629CB0BC(v66, v68);
      v71 = *(v29 + 16);
      v72 = (v70 & 1) == 0;
      v73 = v71 + v72;
      v26 = v311;
      if (__OFADD__(v71, v72))
      {
        goto LABEL_250;
      }

      v74 = v70;
      if (*(v29 + 24) >= v73)
      {
        if (v69)
        {
          v29 = v318;
          if (v70)
          {
            goto LABEL_49;
          }
        }

        else
        {
          sub_2629CE6C0();
          v29 = v318;
          if (v74)
          {
            goto LABEL_49;
          }
        }
      }

      else
      {
        sub_2629D08D8(v73, v69);
        v75 = sub_2629CB0BC(v66, v68);
        if ((v74 & 1) != (v76 & 1))
        {
          while (1)
          {
            sub_262A2A938();
            __break(1u);
LABEL_271:
            v274 = *(v157 - 32);
LABEL_269:
            MEMORY[0x26672F6A0](v274);

            __break(1u);
          }
        }

        v34 = v75;
        v29 = v318;
        if (v74)
        {
LABEL_49:

          goto LABEL_53;
        }
      }

      *(v29 + 8 * (v34 >> 6) + 64) |= 1 << v34;
      v77 = (*(v29 + 48) + 16 * v34);
      *v77 = v66;
      v77[1] = v68;
      *(*(v29 + 56) + 8 * v34) = 0;
      v78 = *(v29 + 16);
      v36 = __OFADD__(v78, 1);
      v79 = v78 + 1;
      if (v36)
      {
        goto LABEL_253;
      }

      *(v29 + 16) = v79;
LABEL_53:
      v80 = *(v29 + 56);
      v81 = *(v80 + 8 * v34);
      v36 = __OFADD__(v81, 1);
      v82 = v81 + 1;
      v46 = v307;
      if (v36)
      {
        goto LABEL_251;
      }

      v45 &= v45 - 1;
      *(v80 + 8 * v34) = v82;
      v47 = sub_2629FF238;
      v48 = v49;
      v34 = v313;
    }
  }

  v29 = v2 + *(type metadata accessor for HeuristicsProcessor(0) + 24);
  v30 = type metadata accessor for PlanGenerationContext(0);
  v31 = a2 + 32;
  v32 = 0;
  if (*(v29 + *(v30 + 132)))
  {
    v33 = 0;
    v34 = v313;
    do
    {
      v35 = *(v31 + 8 * v32);
      v36 = __OFADD__(v33, v35);
      v33 += v35;
      if (v36)
      {
        goto LABEL_243;
      }

      ++v32;
    }

    while (v28 != v32);
    v37 = floor(v33 / v28);
  }

  else
  {
    v38 = 0;
    v34 = v313;
    do
    {
      v39 = *(v31 + 8 * v32);
      v36 = __OFADD__(v38, v39);
      v38 += v39;
      if (v36)
      {
        goto LABEL_244;
      }

      ++v32;
    }

    while (v28 != v32);
    v37 = round(v38 / v28);
  }

  if ((*&v37 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    if (v37 <= -9.22337204e18)
    {
      goto LABEL_256;
    }

    if (v37 < 9.22337204e18)
    {
      goto LABEL_15;
    }

LABEL_257:
    __break(1u);
LABEL_258:
    __break(1u);
LABEL_259:
    __break(1u);
LABEL_260:
    __break(1u);
  }

  __break(1u);
LABEL_262:
  __break(1u);
LABEL_263:
  __break(1u);
LABEL_264:
  swift_unknownObjectRelease();
  sub_2629F6C74(v26, v34, 0, (2 * v29) | 1);
  v248 = v273;
LABEL_212:
  swift_unknownObjectRelease();
  v249 = *(v248 + 16);
  if (v249)
  {
LABEL_203:
    v250 = (v248 + 32);
    v251 = MEMORY[0x277D84F90];
    do
    {
      v253 = *v250++;
      v252 = v253;
      if (v253 <= 6)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v251 = sub_2629A9350(0, *(v251 + 2) + 1, 1, v251);
        }

        v255 = *(v251 + 2);
        v254 = *(v251 + 3);
        if (v255 >= v254 >> 1)
        {
          v251 = sub_2629A9350((v254 > 1), v255 + 1, 1, v251);
        }

        *(v251 + 2) = v255 + 1;
        v251[v255 + 32] = v252;
      }

      --v249;
    }

    while (v249);
  }

  else
  {
LABEL_213:
    v251 = MEMORY[0x277D84F90];
  }

  v318 = 0;
  v319 = 0xE000000000000000;
  sub_262A2A6F8();

  v318 = 0xD000000000000017;
  v319 = 0x8000000262A332E0;
  v256 = MEMORY[0x26672EDD0](v251, &type metadata for SIDWeekday);
  MEMORY[0x26672ECF0](v256);

  sub_2629EA8C8(v318, v319);

  v257 = *(v26 + 16);
  if (v257)
  {
    v258 = MEMORY[0x277D84F90];
    do
    {
      v260 = *v34;
      v34 += 8;
      v259 = v260;
      if (v260 <= 6)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v258 = sub_2629A9350(0, *(v258 + 2) + 1, 1, v258);
        }

        v262 = *(v258 + 2);
        v261 = *(v258 + 3);
        if (v262 >= v261 >> 1)
        {
          v258 = sub_2629A9350((v261 > 1), v262 + 1, 1, v258);
        }

        *(v258 + 2) = v262 + 1;
        v258[v262 + 32] = v259;
      }

      --v257;
    }

    while (v257);
  }

  (*(v284 + 8))(v309, v303);
  (*v283)(v310, v305);

  sub_2629ADF1C(v312, 0);
  sub_2629ADF1C(v278, 0);
  return v251;
}

BOOL sub_2629F491C(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a3;
  if (!*(*a3 + 16))
  {
    goto LABEL_9;
  }

  v8 = sub_2629CB210(*a1);
  if (v9)
  {
    v10 = *(*(v7 + 56) + 8 * v8);
    v11 = sub_2629CB210(v6);
    if ((v12 & 1) == 0)
    {
      if (v10)
      {
        return v10 > 0;
      }

LABEL_9:
      v16 = *a4;
      if (*(*a4 + 16))
      {
        v17 = sub_2629CB210(v5);
        if (v18)
        {
          v19 = *(*(v16 + 56) + 8 * v17);
          v20 = sub_2629CB210(v6);
          if ((v21 & 1) == 0)
          {
            if (v19 != 0.0)
            {
              v22 = 0.0;
              return v22 < v19;
            }

            return v5 < v6;
          }

          goto LABEL_16;
        }

        v20 = sub_2629CB210(v6);
        if (v23)
        {
          v19 = 0.0;
LABEL_16:
          v22 = *(*(v16 + 56) + 8 * v20);
          if (v19 != v22)
          {
            return v22 < v19;
          }
        }
      }

      return v5 < v6;
    }
  }

  else
  {
    v11 = sub_2629CB210(v6);
    if ((v14 & 1) == 0)
    {
      goto LABEL_9;
    }

    v10 = 0;
  }

  v15 = *(*(v7 + 56) + 8 * v11);
  if (v10 == v15)
  {
    goto LABEL_9;
  }

  return v15 < v10;
}

uint64_t sub_2629F4A34(uint64_t a1, uint64_t a2)
{
  v54 = a2;
  v56 = type metadata accessor for PreprocessedUserHistoryWithMetadata(0);
  v4 = *(v56 - 8);
  v5 = MEMORY[0x28223BE20](v56);
  v7 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v53 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v53 - v11;
  v59 = 0;
  v60 = 0xE000000000000000;
  sub_262A2A6F8();
  MEMORY[0x26672ECF0](0xD000000000000035, 0x8000000262A33140);
  v58 = *(a1 + 16);
  v13 = v58;
  v14 = sub_262A2A868();
  MEMORY[0x26672ECF0](v14);

  MEMORY[0x26672ECF0](0x74756F6B726F7720, 0xE900000000000073);
  v55 = v2;
  sub_2629EA8C8(v59, v60);

  v53 = v4;
  if (v13)
  {
    v15 = *(v4 + 80);
    v16 = *(v4 + 72);
    v57 = (v15 + 32) & ~v15;
    v17 = a1 + v57;
    v18 = MEMORY[0x277D84F90];
    v19 = v56;
    do
    {
      sub_2629FEF84(v17, v12, type metadata accessor for PreprocessedUserHistoryWithMetadata);
      if (v12[*(v19 + 56)] == 7)
      {
        sub_2629FEFEC(v12, type metadata accessor for PreprocessedUserHistoryWithMetadata);
      }

      else
      {
        sub_2629FF04C(v12, v7);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v59 = v18;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_2629CD8E0(0, *(v18 + 16) + 1, 1);
          v19 = v56;
          v18 = v59;
        }

        v22 = *(v18 + 16);
        v21 = *(v18 + 24);
        if (v22 >= v21 >> 1)
        {
          sub_2629CD8E0((v21 > 1), v22 + 1, 1);
          v19 = v56;
          v18 = v59;
        }

        *(v18 + 16) = v22 + 1;
        sub_2629FF04C(v7, v18 + v57 + v22 * v16);
      }

      v17 += v16;
      --v13;
    }

    while (v13);
  }

  else
  {
    v18 = MEMORY[0x277D84F90];
  }

  v59 = 0;
  v60 = 0xE000000000000000;
  sub_262A2A6F8();

  v59 = 0x20646E756F46;
  v60 = 0xE600000000000000;
  v58 = *(v18 + 16);
  v23 = sub_262A2A868();
  MEMORY[0x26672ECF0](v23);

  MEMORY[0x26672ECF0](0xD000000000000022, 0x8000000262A33180);
  sub_2629EA8C8(v59, v60);

  v24 = *(v18 + 16);
  if (v24)
  {
    v25 = *(v56 + 56);
    v26 = v18 + ((*(v53 + 80) + 32) & ~*(v53 + 80));
    v27 = *(v53 + 72);
    v28 = MEMORY[0x277D84F90];
    do
    {
      sub_2629FEF84(v26, v10, type metadata accessor for PreprocessedUserHistoryWithMetadata);
      v30 = v10[v25];
      sub_2629FEFEC(v10, type metadata accessor for PreprocessedUserHistoryWithMetadata);
      if (v30 != 7)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v28 = sub_2629A9140(0, *(v28 + 2) + 1, 1, v28);
        }

        v32 = *(v28 + 2);
        v31 = *(v28 + 3);
        if (v32 >= v31 >> 1)
        {
          v28 = sub_2629A9140((v31 > 1), v32 + 1, 1, v28);
        }

        v29 = qword_262A30AA0[v30];
        *(v28 + 2) = v32 + 1;
        *&v28[8 * v32 + 32] = v29;
      }

      v26 += v27;
      --v24;
    }

    while (v24);
  }

  else
  {

    v28 = MEMORY[0x277D84F90];
  }

  result = sub_262A04550(v28);
  if (v34)
  {
    v35 = 0;
  }

  else
  {
    v35 = result;
  }

  v36 = *(v28 + 2);
  if (v36)
  {
    v37 = 0;
    v38 = (v28 + 32);
    while (1)
    {
      v39 = *v38++;
      v40 = __OFADD__(v37, v39);
      v37 += v39;
      if (v40)
      {
        break;
      }

      if (!--v36)
      {
        goto LABEL_32;
      }
    }

    __break(1u);
    goto LABEL_52;
  }

  v37 = 0;
LABEL_32:

  v41 = *(v54 + 16);
  if (v41)
  {
    v42 = 0;
    v43 = (v54 + 32);
    while (1)
    {
      v44 = *v43++;
      v40 = __OFADD__(v42, v44);
      v42 += v44;
      if (v40)
      {
        break;
      }

      if (!--v41)
      {
        if (v42 <= 0)
        {
          v45 = 0;
        }

        else
        {
          v45 = v37 / v42;
        }

        goto LABEL_40;
      }
    }

LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v42 = 0;
  v45 = 0;
LABEL_40:
  v59 = 0;
  v60 = 0xE000000000000000;
  sub_262A2A6F8();
  MEMORY[0x26672ECF0](0xD000000000000019, 0x8000000262A331B0);
  v58 = v35;
  v46 = sub_262A2A868();
  MEMORY[0x26672ECF0](v46);

  MEMORY[0x26672ECF0](0x657661202C6E696DLL, 0xEE00203A65676172);
  v58 = v45;
  v47 = sub_262A2A868();
  MEMORY[0x26672ECF0](v47);

  MEMORY[0x26672ECF0](0xD000000000000017, 0x8000000262A331D0);
  v58 = v42;
  v48 = sub_262A2A868();
  MEMORY[0x26672ECF0](v48);

  sub_2629EA8C8(v59, v60);

  if (v45 <= v35)
  {
    v49 = v35;
  }

  else
  {
    v49 = v45;
  }

  v50 = v49 % 10;
  if (!(v49 % 10))
  {
    goto LABEL_50;
  }

  if (v50 < 6)
  {
    if (!(v49 % 5))
    {
      goto LABEL_50;
    }

    v50 = 5 - v49 % 5;
    v40 = __OFADD__(v49, v50);
    v49 += v50;
    if (!v40)
    {
      goto LABEL_50;
    }

    __break(1u);
  }

  v51 = 10 - v50;
  v40 = __OFADD__(v49, v51);
  v49 += v51;
  if (!v40)
  {
LABEL_50:
    v59 = 0;
    v60 = 0xE000000000000000;
    sub_262A2A6F8();

    v59 = 0xD000000000000027;
    v60 = 0x8000000262A331F0;
    v58 = v49;
    v52 = sub_262A2A868();
    MEMORY[0x26672ECF0](v52);

    sub_2629EA8C8(v59, v60);

    return v49;
  }

LABEL_53:
  __break(1u);
  return result;
}

uint64_t sub_2629F514C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v7 = MEMORY[0x277D84F90];
  v8 = sub_2629AC1F0(MEMORY[0x277D84F90]);
  v91 = v4;
  sub_262A1CF90(v8, sub_2629FEE44, v90, a1);
  v78 = v9;
  v76 = sub_2629EF140(a1, a2);
  v10 = v4 + *(type metadata accessor for HeuristicsProcessor(0) + 24);
  v11 = type metadata accessor for PlanGenerationContext(0);
  v12 = *(v10 + *(v11 + 128)) * 100.0;
  v67 = v11;
  v68 = v10;
  v13 = *(v10 + *(v11 + 108)) * 100.0;
  v14 = sub_2629AC1C8(&unk_287533A20);
  v15 = sub_2629AC5B8(&unk_287533CE0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3C2D8, &unk_262A30A30);
  swift_arrayDestroy();
  v16 = sub_2629ACBD0(v7);
  v85 = v14;
  v86 = v15;
  v87 = v4;
  v88 = v12;
  v89 = v13;
  sub_262A1CF90(v16, sub_2629FEE60, v84, a1);
  v18 = v17;

  v19 = a1 + 64;
  v20 = 1 << *(a1 + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v79 = v21 & *(a1 + 64);
  v22 = (v20 + 63) >> 6;
  v77 = a1;

  v24 = 0;
  v83 = v7;
  v74 = a1 + 64;
  v75 = v18;
  v73 = v22;
  v25 = v78;
  v26 = v79;
  if (v79)
  {
LABEL_8:
    while (2)
    {
      v28 = *(*(v77 + 48) + (__clz(__rbit64(v26)) | (v24 << 6)));
      if (!*(v18 + 16))
      {
        v33 = v7;
        v41 = v7;
        goto LABEL_71;
      }

      v29 = sub_2629CB1E4(v28, v23);
      if (v30)
      {
        v71 = v28;
        v31 = *(*(v18 + 56) + 16 * v29 + 8);
        v32 = *(v31 + 16);
        if (v32)
        {
          v80 = v26;
          v92 = v7;

          sub_2629CD800(0, v32, 0);
          v33 = v92;
          v34 = 32;
          do
          {
            v35 = 0xEA00000000003436;
            v36 = 0x3936313931323531;
            switch(*(v31 + v34))
            {
              case 1:
                v35 = 0xEA00000000003432;
                goto LABEL_41;
              case 2:
                v35 = 0xEA00000000003834;
                goto LABEL_47;
              case 3:
                v35 = 0xEA00000000003536;
                goto LABEL_38;
              case 4:
                v35 = 0xEA00000000003630;
                v36 = 0x3536313931323531;
                break;
              case 5:
                v35 = 0xEA00000000003137;
                goto LABEL_50;
              case 6:
                v35 = 0xEA00000000003536;
                v36 = 0x3131303236323531;
                break;
              case 7:
                v35 = 0xEA00000000003137;
                goto LABEL_38;
              case 8:
                v35 = 0xEA00000000003537;
                goto LABEL_38;
              case 9:
                v35 = 0xEA00000000003231;
                v36 = 0x3535313931323531;
                break;
              case 0xA:
                v35 = 0xEA00000000003830;
                v36 = 0x3136393933373531;
                break;
              case 0xB:
                v35 = 0xEA00000000003936;
                goto LABEL_47;
              case 0xC:
                v36 = 0x3835313931323531;
                goto LABEL_31;
              case 0xD:
                v35 = 0xEA00000000003631;
                goto LABEL_35;
              case 0xE:
                v35 = 0xEA00000000003234;
                v36 = 0x3035343739323631;
                break;
              case 0xF:
                v36 = 0x3236313931323531;
                goto LABEL_31;
              case 0x10:
                v35 = 0xEA00000000003330;
                v36 = 0x3534333231373531;
                break;
              case 0x11:
                v35 = 0xEA00000000003634;
                v36 = 0x3036313931323531;
                break;
              case 0x12:
                v35 = 0xEA00000000003138;
LABEL_35:
                v36 = 0x3936313931323531;
                break;
              case 0x13:
                v35 = 0xEA00000000003533;
                goto LABEL_43;
              case 0x14:
                v35 = 0xEA00000000003335;
                goto LABEL_45;
              case 0x15:
                v36 = 0x3331393535343631;
LABEL_31:
                v35 = 0xEA00000000003832;
                break;
              case 0x16:
                v35 = 0xEA00000000003831;
LABEL_41:
                v36 = 0x3236313931323531;
                break;
              case 0x17:
                v35 = 0xEA00000000003336;
LABEL_45:
                v36 = 0x3439303330373531;
                break;
              case 0x18:
                v35 = 0xEA00000000003437;
                v36 = 0x3531393535343631;
                break;
              case 0x19:
                v35 = 0xEA00000000003934;
LABEL_38:
                v36 = 0x3337313931323531;
                break;
              case 0x1A:
                v35 = 0xEA00000000003537;
LABEL_50:
                v37 = 0x303236323531;
                goto LABEL_51;
              case 0x1B:
                v35 = 0xEA00000000003630;
                v37 = 0x393535343631;
LABEL_51:
                v36 = v37 & 0xFFFFFFFFFFFFLL | 0x3331000000000000;
                break;
              case 0x1C:
                v35 = 0xEA00000000003636;
LABEL_47:
                v36 = 0x3637313931323531;
                break;
              case 0x1D:
                v35 = 0xEA00000000003539;
                v36 = 0x3436393933373531;
                break;
              case 0x1E:
                v35 = 0xEA00000000003534;
LABEL_43:
                v36 = 0x3835313931323531;
                break;
              default:
                break;
            }

            v92 = v33;
            v39 = *(v33 + 16);
            v38 = *(v33 + 24);
            if (v39 >= v38 >> 1)
            {
              sub_2629CD800((v38 > 1), v39 + 1, 1);
              v33 = v92;
            }

            *(v33 + 16) = v39 + 1;
            v40 = v33 + 16 * v39;
            *(v40 + 32) = v36;
            *(v40 + 40) = v35;
            ++v34;
            --v32;
          }

          while (v32);

          v7 = MEMORY[0x277D84F90];
          v25 = v78;
          v26 = v80;
          v18 = v75;
        }

        else
        {
          v33 = v7;
          v25 = v78;
        }

        v28 = v71;
        if (!*(v18 + 16))
        {
          break;
        }
      }

      else
      {
        v33 = v7;
        if (!*(v18 + 16))
        {
          break;
        }
      }

      v42 = sub_2629CB1E4(v28, v23);
      if (v43)
      {
        v72 = v28;
        v44 = *(*(v18 + 56) + 16 * v42);
        v45 = *(v44 + 16);
        if (v45)
        {
          v81 = v26;
          v92 = v7;

          sub_2629CD800(0, v45, 0);
          v41 = v92;
          v46 = 32;
          do
          {
            v47 = *(v44 + v46);
            v92 = v41;
            v49 = *(v41 + 16);
            v48 = *(v41 + 24);
            if (v49 >= v48 >> 1)
            {
              sub_2629CD800((v48 > 1), v49 + 1, 1);
              v41 = v92;
            }

            *(v41 + 16) = v49 + 1;
            v50 = v41 + 16 * v49;
            *(v50 + 32) = 3748149 - (v47 << 16);
            *(v50 + 40) = 0xE300000000000000;
            ++v46;
            --v45;
          }

          while (v45);

          v7 = MEMORY[0x277D84F90];
          v25 = v78;
          v26 = v81;
        }

        else
        {
          v41 = v7;
          v25 = v78;
        }

        v28 = v72;
LABEL_71:
        v82 = (v26 - 1) & v26;
        v51 = 0xEA00000000003638;
        v52 = 0x3932343038373431;
        switch(v28)
        {
          case 1:
            v51 = 0xEA00000000003937;
            if (*(v25 + 16))
            {
              goto LABEL_95;
            }

            goto LABEL_88;
          case 2:
            v51 = 0xEA00000000003438;
            if (!*(v25 + 16))
            {
              goto LABEL_88;
            }

            goto LABEL_95;
          case 3:
            v51 = 0xEA00000000003238;
            if (!*(v25 + 16))
            {
              goto LABEL_88;
            }

            goto LABEL_95;
          case 4:
            v51 = 0xEA00000000003633;
            v52 = 0x3532363037343631;
            if (!*(v25 + 16))
            {
              goto LABEL_88;
            }

            goto LABEL_95;
          case 5:
            v51 = 0xEA00000000003839;
            goto LABEL_87;
          case 6:
            v51 = 0xEA00000000003738;
            if (!*(v25 + 16))
            {
              goto LABEL_88;
            }

            goto LABEL_95;
          case 7:
            v51 = 0xEA00000000003739;
            goto LABEL_87;
          case 8:
            v51 = 0xEA00000000003038;
            if (!*(v25 + 16))
            {
              goto LABEL_88;
            }

            goto LABEL_95;
          case 9:
            v51 = 0xEA00000000003639;
LABEL_87:
            v52 = 0x3332373831363531;
            if (!*(v25 + 16))
            {
              goto LABEL_88;
            }

            goto LABEL_95;
          case 10:
            v51 = 0xEA00000000003338;
            goto LABEL_94;
          case 11:
            v51 = 0xEA00000000003138;
            if (!*(v25 + 16))
            {
              goto LABEL_88;
            }

            goto LABEL_95;
          case 12:
            v51 = 0xEA00000000003635;
            v52 = 0x3032383934393431;
            if (!*(v25 + 16))
            {
              goto LABEL_88;
            }

            goto LABEL_95;
          case 13:
            v51 = 0xEA00000000003538;
            if (!*(v25 + 16))
            {
              goto LABEL_88;
            }

            goto LABEL_95;
          default:
LABEL_94:
            if (*(v25 + 16))
            {
LABEL_95:
              v53 = v28;
              v54 = sub_2629CB1E4(v28, v23);
              if (v55)
              {
                v56 = *(*(v25 + 56) + 8 * v54);

                goto LABEL_98;
              }
            }

            else
            {
LABEL_88:
              v53 = v28;
            }

            v56 = v7;
LABEL_98:
            if (*(v76 + 2) && (v57 = sub_2629CB1E4(v53, v23), (v58 & 1) != 0))
            {
              v59 = *(*(v76 + 7) + 8 * v57);
            }

            else
            {
              v59 = v7;
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v83 = sub_2629A9020(0, *(v83 + 2) + 1, 1, v83);
            }

            v61 = *(v83 + 2);
            v60 = *(v83 + 3);
            if (v61 >= v60 >> 1)
            {
              v83 = sub_2629A9020((v60 > 1), v61 + 1, 1, v83);
            }

            *(v83 + 2) = v61 + 1;
            v62 = &v83[48 * v61];
            *(v62 + 4) = v52;
            *(v62 + 5) = v51;
            *(v62 + 6) = v56;
            *(v62 + 7) = v41;
            *(v62 + 8) = v33;
            *(v62 + 9) = v59;
            v7 = MEMORY[0x277D84F90];
            v19 = v74;
            v18 = v75;
            v22 = v73;
            v25 = v78;
            v26 = v82;
            if (!v82)
            {
              goto LABEL_4;
            }

            continue;
        }
      }

      break;
    }

    v41 = v7;
    goto LABEL_71;
  }

  while (1)
  {
LABEL_4:
    v27 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      __break(1u);
      JUMPOUT(0x2629F5A40);
    }

    if (v27 >= v22)
    {
      break;
    }

    v26 = *(v19 + 8 * v27);
    ++v24;
    if (v26)
    {
      v24 = v27;
      goto LABEL_8;
    }
  }

  v63 = *(v68 + *(v67 + 116));

  v65 = sub_262A272BC(v64);

  *a4 = a3;
  a4[1] = a3;
  a4[2] = v83;
  a4[3] = a3;
  a4[4] = v63;
  a4[5] = v65;
  return result;
}