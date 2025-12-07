uint64_t sub_1C0605ED0(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = *(*(v3 + 16) + 32);
  if (!*(v5 + 16))
  {
    goto LABEL_12;
  }

  v8 = sub_1C0516A8C(a1, a2);
  if ((v9 & 1) == 0)
  {
    goto LABEL_11;
  }

  v10 = *(*(v5 + 56) + 8 * v8);

  if (!(v10 >> 62))
  {
    if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

  result = sub_1C095DCDC();
  if (!result)
  {
LABEL_11:

LABEL_12:
    v12 = 0;
    goto LABEL_13;
  }

LABEL_5:
  if ((v10 & 0xC000000000000001) != 0)
  {
    v12 = MEMORY[0x1C68DDAD0](0, v10);
    goto LABEL_8;
  }

  if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v12 = *(v10 + 32);

LABEL_8:

LABEL_13:
    v13 = a3(v12);

    return v13;
  }

  __break(1u);
  return result;
}

void *sub_1C0605FE8(void *result)
{
  if (result)
  {
    result = sub_1C0518574();
    if (result)
    {
      v1 = result;
      v2 = result[4];
      v3 = type metadata accessor for UsoEntity_common_ReactionType();
      if (v3 == MEMORY[0x1E69E6158])
      {
        if (v2)
        {

          sub_1C0519574();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90);
      }

      else
      {
        if (v3 != MEMORY[0x1E69E7360])
        {

          v5 = sub_1C0605A38(v4, type metadata accessor for UsoEntity_common_ReactionType, sub_1C057F978);

          if (v5)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18F98, &qword_1C0981F88);
            result = swift_allocObject();
            result[2] = v1;
            result[3] = v5;
          }

          else
          {

            return 0;
          }

          return result;
        }

        if (v2)
        {
          Node.int64Value.getter();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE173E8, &unk_1C0970D70);
      }

      if (swift_dynamicCast())
      {
        v6 = v7;
      }

      else
      {
        v6 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18F98, &qword_1C0981F88);
      result = swift_allocObject();
      result[2] = v1;
      result[3] = v6;
    }
  }

  return result;
}

void *sub_1C06061B8(void *result)
{
  if (result)
  {
    result = sub_1C0518574();
    if (result)
    {
      v1 = result;
      v2 = result[4];
      v3 = type metadata accessor for UsoEntity_common_EventTrigger();
      if (v3 == MEMORY[0x1E69E6158])
      {
        if (v2)
        {

          sub_1C0519574();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90);
      }

      else
      {
        if (v3 != MEMORY[0x1E69E7360])
        {

          v5 = sub_1C0605A38(v4, type metadata accessor for UsoEntity_common_EventTrigger, sub_1C057F990);

          if (v5)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18FD0, &qword_1C0981FC0);
            result = swift_allocObject();
            result[2] = v1;
            result[3] = v5;
          }

          else
          {

            return 0;
          }

          return result;
        }

        if (v2)
        {
          Node.int64Value.getter();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE173E8, &unk_1C0970D70);
      }

      if (swift_dynamicCast())
      {
        v6 = v7;
      }

      else
      {
        v6 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18FD0, &qword_1C0981FC0);
      result = swift_allocObject();
      result[2] = v1;
      result[3] = v6;
    }
  }

  return result;
}

void *sub_1C0606388(void *result)
{
  if (result)
  {
    result = sub_1C0518574();
    if (result)
    {
      v1 = result;
      v2 = result[4];
      v3 = type metadata accessor for UsoEntity_common_Number();
      if (v3 == MEMORY[0x1E69E6158])
      {
        if (v2)
        {

          sub_1C0519574();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90);
      }

      else
      {
        if (v3 != MEMORY[0x1E69E7360])
        {

          v5 = sub_1C0605A38(v4, type metadata accessor for UsoEntity_common_Number, sub_1C057F9A8);

          if (v5)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18F40, &qword_1C0981F30);
            result = swift_allocObject();
            result[2] = v1;
            result[3] = v5;
          }

          else
          {

            return 0;
          }

          return result;
        }

        if (v2)
        {
          Node.int64Value.getter();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE173E8, &unk_1C0970D70);
      }

      if (swift_dynamicCast())
      {
        v6 = v7;
      }

      else
      {
        v6 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18F40, &qword_1C0981F30);
      result = swift_allocObject();
      result[2] = v1;
      result[3] = v6;
    }
  }

  return result;
}

void *sub_1C0606558(void *result)
{
  if (result)
  {
    result = sub_1C0518574();
    if (result)
    {
      v1 = result;
      v2 = result[4];
      v3 = type metadata accessor for UsoEntity_common_CarProfile();
      if (v3 == MEMORY[0x1E69E6158])
      {
        if (v2)
        {

          sub_1C0519574();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90);
      }

      else
      {
        if (v3 != MEMORY[0x1E69E7360])
        {

          v5 = sub_1C0605A38(v4, type metadata accessor for UsoEntity_common_CarProfile, sub_1C057F9C0);

          if (v5)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE189A0, &qword_1C0981990);
            result = swift_allocObject();
            result[2] = v1;
            result[3] = v5;
          }

          else
          {

            return 0;
          }

          return result;
        }

        if (v2)
        {
          Node.int64Value.getter();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE173E8, &unk_1C0970D70);
      }

      if (swift_dynamicCast())
      {
        v6 = v7;
      }

      else
      {
        v6 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE189A0, &qword_1C0981990);
      result = swift_allocObject();
      result[2] = v1;
      result[3] = v6;
    }
  }

  return result;
}

void *sub_1C0606728(void *result)
{
  if (result)
  {
    result = sub_1C0518574();
    if (result)
    {
      v1 = result;
      v2 = result[4];
      v3 = type metadata accessor for UsoEntity_common_Duration();
      if (v3 == MEMORY[0x1E69E6158])
      {
        if (v2)
        {

          sub_1C0519574();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90);
      }

      else
      {
        if (v3 != MEMORY[0x1E69E7360])
        {

          v5 = sub_1C0605A38(v4, type metadata accessor for UsoEntity_common_Duration, sub_1C057F9D8);

          if (v5)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18EB8, &qword_1C0981EA8);
            result = swift_allocObject();
            result[2] = v1;
            result[3] = v5;
          }

          else
          {

            return 0;
          }

          return result;
        }

        if (v2)
        {
          Node.int64Value.getter();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE173E8, &unk_1C0970D70);
      }

      if (swift_dynamicCast())
      {
        v6 = v7;
      }

      else
      {
        v6 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18EB8, &qword_1C0981EA8);
      result = swift_allocObject();
      result[2] = v1;
      result[3] = v6;
    }
  }

  return result;
}

void *sub_1C06068F8(void *result)
{
  if (result)
  {
    result = sub_1C0518574();
    if (result)
    {
      v1 = result;
      v2 = result[4];
      v3 = type metadata accessor for UsoEntity_common_MeasurementUnit();
      if (v3 == MEMORY[0x1E69E6158])
      {
        if (v2)
        {

          sub_1C0519574();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90);
      }

      else
      {
        if (v3 != MEMORY[0x1E69E7360])
        {

          v5 = sub_1C0605A38(v4, type metadata accessor for UsoEntity_common_MeasurementUnit, sub_1C057F9F0);

          if (v5)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18DC8, &qword_1C0981DB8);
            result = swift_allocObject();
            result[2] = v1;
            result[3] = v5;
          }

          else
          {

            return 0;
          }

          return result;
        }

        if (v2)
        {
          Node.int64Value.getter();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE173E8, &unk_1C0970D70);
      }

      if (swift_dynamicCast())
      {
        v6 = v7;
      }

      else
      {
        v6 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18DC8, &qword_1C0981DB8);
      result = swift_allocObject();
      result[2] = v1;
      result[3] = v6;
    }
  }

  return result;
}

void *sub_1C0606AC8(void *result)
{
  if (result)
  {
    result = sub_1C0518574();
    if (result)
    {
      v1 = result;
      v2 = result[4];
      v3 = type metadata accessor for UsoEntity_commonStock_StockChangeState();
      if (v3 == MEMORY[0x1E69E6158])
      {
        if (v2)
        {

          sub_1C0519574();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90);
      }

      else
      {
        if (v3 != MEMORY[0x1E69E7360])
        {

          v5 = sub_1C0605A38(v4, type metadata accessor for UsoEntity_commonStock_StockChangeState, sub_1C057FA08);

          if (v5)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18618, &qword_1C0981608);
            result = swift_allocObject();
            result[2] = v1;
            result[3] = v5;
          }

          else
          {

            return 0;
          }

          return result;
        }

        if (v2)
        {
          Node.int64Value.getter();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE173E8, &unk_1C0970D70);
      }

      if (swift_dynamicCast())
      {
        v6 = v7;
      }

      else
      {
        v6 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18618, &qword_1C0981608);
      result = swift_allocObject();
      result[2] = v1;
      result[3] = v6;
    }
  }

  return result;
}

void *sub_1C0606C98(void *result)
{
  if (result)
  {
    result = sub_1C0518574();
    if (result)
    {
      v1 = result;
      v2 = result[4];
      v3 = type metadata accessor for UsoEntity_common_DateTime();
      if (v3 == MEMORY[0x1E69E6158])
      {
        if (v2)
        {

          sub_1C0519574();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90);
      }

      else
      {
        if (v3 != MEMORY[0x1E69E7360])
        {

          v5 = sub_1C0605A38(v4, type metadata accessor for UsoEntity_common_DateTime, sub_1C057FA20);

          if (v5)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18FE8, &qword_1C0981FD8);
            result = swift_allocObject();
            result[2] = v1;
            result[3] = v5;
          }

          else
          {

            return 0;
          }

          return result;
        }

        if (v2)
        {
          Node.int64Value.getter();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE173E8, &unk_1C0970D70);
      }

      if (swift_dynamicCast())
      {
        v6 = v7;
      }

      else
      {
        v6 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18FE8, &qword_1C0981FD8);
      result = swift_allocObject();
      result[2] = v1;
      result[3] = v6;
    }
  }

  return result;
}

void *sub_1C0606E68(void *result)
{
  if (result)
  {
    result = sub_1C0518574();
    if (result)
    {
      v1 = result;
      v2 = result[4];
      v3 = type metadata accessor for UsoEntity_common_GeographicArea();
      if (v3 == MEMORY[0x1E69E6158])
      {
        if (v2)
        {

          sub_1C0519574();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90);
      }

      else
      {
        if (v3 != MEMORY[0x1E69E7360])
        {

          v5 = sub_1C0605A38(v4, type metadata accessor for UsoEntity_common_GeographicArea, sub_1C057FA38);

          if (v5)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18FF8, &qword_1C0981FE8);
            result = swift_allocObject();
            result[2] = v1;
            result[3] = v5;
          }

          else
          {

            return 0;
          }

          return result;
        }

        if (v2)
        {
          Node.int64Value.getter();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE173E8, &unk_1C0970D70);
      }

      if (swift_dynamicCast())
      {
        v6 = v7;
      }

      else
      {
        v6 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18FF8, &qword_1C0981FE8);
      result = swift_allocObject();
      result[2] = v1;
      result[3] = v6;
    }
  }

  return result;
}

void *sub_1C0607038(void *result)
{
  if (result)
  {
    result = sub_1C0518574();
    if (result)
    {
      v1 = result;
      v2 = result[4];
      v3 = type metadata accessor for UsoEntity_common_VoiceCommandPayload();
      if (v3 == MEMORY[0x1E69E6158])
      {
        if (v2)
        {

          sub_1C0519574();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90);
      }

      else
      {
        if (v3 != MEMORY[0x1E69E7360])
        {

          v5 = sub_1C0605A38(v4, type metadata accessor for UsoEntity_common_VoiceCommandPayload, sub_1C057FA50);

          if (v5)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE189E0, &qword_1C09819D0);
            result = swift_allocObject();
            result[2] = v1;
            result[3] = v5;
          }

          else
          {

            return 0;
          }

          return result;
        }

        if (v2)
        {
          Node.int64Value.getter();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE173E8, &unk_1C0970D70);
      }

      if (swift_dynamicCast())
      {
        v6 = v7;
      }

      else
      {
        v6 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE189E0, &qword_1C09819D0);
      result = swift_allocObject();
      result[2] = v1;
      result[3] = v6;
    }
  }

  return result;
}

void *sub_1C0607208(void *result)
{
  if (result)
  {
    result = sub_1C0518574();
    if (result)
    {
      v1 = result;
      v2 = result[4];
      v3 = type metadata accessor for UsoEntity_common_DateTimeRange();
      if (v3 == MEMORY[0x1E69E6158])
      {
        if (v2)
        {

          sub_1C0519574();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90);
      }

      else
      {
        if (v3 != MEMORY[0x1E69E7360])
        {

          v5 = sub_1C0605A38(v4, type metadata accessor for UsoEntity_common_DateTimeRange, sub_1C057FA68);

          if (v5)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE19008, &qword_1C0981FF8);
            result = swift_allocObject();
            result[2] = v1;
            result[3] = v5;
          }

          else
          {

            return 0;
          }

          return result;
        }

        if (v2)
        {
          Node.int64Value.getter();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE173E8, &unk_1C0970D70);
      }

      if (swift_dynamicCast())
      {
        v6 = v7;
      }

      else
      {
        v6 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE19008, &qword_1C0981FF8);
      result = swift_allocObject();
      result[2] = v1;
      result[3] = v6;
    }
  }

  return result;
}

void *sub_1C06073D8(void *result)
{
  if (result)
  {
    result = sub_1C0518574();
    if (result)
    {
      v1 = result;
      v2 = result[4];
      v3 = type metadata accessor for UsoEntity_common_Measurement();
      if (v3 == MEMORY[0x1E69E6158])
      {
        if (v2)
        {

          sub_1C0519574();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90);
      }

      else
      {
        if (v3 != MEMORY[0x1E69E7360])
        {

          v5 = sub_1C0605A38(v4, type metadata accessor for UsoEntity_common_Measurement, sub_1C057FA80);

          if (v5)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18F58, &qword_1C0981F48);
            result = swift_allocObject();
            result[2] = v1;
            result[3] = v5;
          }

          else
          {

            return 0;
          }

          return result;
        }

        if (v2)
        {
          Node.int64Value.getter();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE173E8, &unk_1C0970D70);
      }

      if (swift_dynamicCast())
      {
        v6 = v7;
      }

      else
      {
        v6 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18F58, &qword_1C0981F48);
      result = swift_allocObject();
      result[2] = v1;
      result[3] = v6;
    }
  }

  return result;
}

void *sub_1C06075A8(void *result)
{
  if (result)
  {
    result = sub_1C0518574();
    if (result)
    {
      v1 = result;
      v2 = result[4];
      v3 = type metadata accessor for UsoEntity_common_AdjustmentType();
      if (v3 == MEMORY[0x1E69E6158])
      {
        if (v2)
        {

          sub_1C0519574();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90);
      }

      else
      {
        if (v3 != MEMORY[0x1E69E7360])
        {

          v5 = sub_1C0605A38(v4, type metadata accessor for UsoEntity_common_AdjustmentType, sub_1C057FA98);

          if (v5)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18B90, &qword_1C0981B80);
            result = swift_allocObject();
            result[2] = v1;
            result[3] = v5;
          }

          else
          {

            return 0;
          }

          return result;
        }

        if (v2)
        {
          Node.int64Value.getter();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE173E8, &unk_1C0970D70);
      }

      if (swift_dynamicCast())
      {
        v6 = v7;
      }

      else
      {
        v6 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18B90, &qword_1C0981B80);
      result = swift_allocObject();
      result[2] = v1;
      result[3] = v6;
    }
  }

  return result;
}

void *sub_1C0607778(void *result)
{
  if (result)
  {
    result = sub_1C0518574();
    if (result)
    {
      v1 = result;
      v2 = result[4];
      v3 = type metadata accessor for UsoEntity_common_AdjustmentDirection();
      if (v3 == MEMORY[0x1E69E6158])
      {
        if (v2)
        {

          sub_1C0519574();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90);
      }

      else
      {
        if (v3 != MEMORY[0x1E69E7360])
        {

          v5 = sub_1C0605A38(v4, type metadata accessor for UsoEntity_common_AdjustmentDirection, sub_1C057FAB0);

          if (v5)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18BC8, &qword_1C0981BB8);
            result = swift_allocObject();
            result[2] = v1;
            result[3] = v5;
          }

          else
          {

            return 0;
          }

          return result;
        }

        if (v2)
        {
          Node.int64Value.getter();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE173E8, &unk_1C0970D70);
      }

      if (swift_dynamicCast())
      {
        v6 = v7;
      }

      else
      {
        v6 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18BC8, &qword_1C0981BB8);
      result = swift_allocObject();
      result[2] = v1;
      result[3] = v6;
    }
  }

  return result;
}

void *sub_1C0607948(void *result)
{
  if (result)
  {
    result = sub_1C0518574();
    if (result)
    {
      v1 = result;
      v2 = result[4];
      v3 = type metadata accessor for UsoEntity_common_SearchQualifier();
      if (v3 == MEMORY[0x1E69E6158])
      {
        if (v2)
        {

          sub_1C0519574();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90);
      }

      else
      {
        if (v3 != MEMORY[0x1E69E7360])
        {

          v5 = sub_1C0605A38(v4, type metadata accessor for UsoEntity_common_SearchQualifier, sub_1C057FB28);

          if (v5)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE19058, &qword_1C0982050);
            result = swift_allocObject();
            result[2] = v1;
            result[3] = v5;
          }

          else
          {

            return 0;
          }

          return result;
        }

        if (v2)
        {
          Node.int64Value.getter();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE173E8, &unk_1C0970D70);
      }

      if (swift_dynamicCast())
      {
        v6 = v7;
      }

      else
      {
        v6 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE19058, &qword_1C0982050);
      result = swift_allocObject();
      result[2] = v1;
      result[3] = v6;
    }
  }

  return result;
}

void *sub_1C0607B18(void *result)
{
  if (result)
  {
    result = sub_1C0518574();
    if (result)
    {
      v1 = result;
      v2 = result[4];
      v3 = type metadata accessor for UsoEntity_common_App();
      if (v3 == MEMORY[0x1E69E6158])
      {
        if (v2)
        {

          sub_1C0519574();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90);
      }

      else
      {
        if (v3 != MEMORY[0x1E69E7360])
        {

          v5 = sub_1C0605A38(v4, type metadata accessor for UsoEntity_common_App, sub_1C057FB40);

          if (v5)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE19050, &qword_1C0982048);
            result = swift_allocObject();
            result[2] = v1;
            result[3] = v5;
          }

          else
          {

            return 0;
          }

          return result;
        }

        if (v2)
        {
          Node.int64Value.getter();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE173E8, &unk_1C0970D70);
      }

      if (swift_dynamicCast())
      {
        v6 = v7;
      }

      else
      {
        v6 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE19050, &qword_1C0982048);
      result = swift_allocObject();
      result[2] = v1;
      result[3] = v6;
    }
  }

  return result;
}

void *sub_1C0607CE8(void *result)
{
  if (result)
  {
    result = sub_1C0518574();
    if (result)
    {
      v1 = result;
      v2 = result[4];
      v3 = type metadata accessor for UsoEntity_common_ListPosition();
      if (v3 == MEMORY[0x1E69E6158])
      {
        if (v2)
        {

          sub_1C0519574();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90);
      }

      else
      {
        if (v3 != MEMORY[0x1E69E7360])
        {

          v5 = sub_1C0605A38(v4, type metadata accessor for UsoEntity_common_ListPosition, sub_1C057FB58);

          if (v5)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE19048, &qword_1C0982040);
            result = swift_allocObject();
            result[2] = v1;
            result[3] = v5;
          }

          else
          {

            return 0;
          }

          return result;
        }

        if (v2)
        {
          Node.int64Value.getter();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE173E8, &unk_1C0970D70);
      }

      if (swift_dynamicCast())
      {
        v6 = v7;
      }

      else
      {
        v6 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE19048, &qword_1C0982040);
      result = swift_allocObject();
      result[2] = v1;
      result[3] = v6;
    }
  }

  return result;
}

void *sub_1C0607EB8(void *result)
{
  if (result)
  {
    result = sub_1C0518574();
    if (result)
    {
      v1 = result;
      v2 = result[4];
      v3 = type metadata accessor for UsoEntity_common_ReferenceType();
      if (v3 == MEMORY[0x1E69E6158])
      {
        if (v2)
        {

          sub_1C0519574();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90);
      }

      else
      {
        if (v3 != MEMORY[0x1E69E7360])
        {

          v5 = sub_1C0605A38(v4, type metadata accessor for UsoEntity_common_ReferenceType, sub_1C057FB70);

          if (v5)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE19040, &qword_1C0982038);
            result = swift_allocObject();
            result[2] = v1;
            result[3] = v5;
          }

          else
          {

            return 0;
          }

          return result;
        }

        if (v2)
        {
          Node.int64Value.getter();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE173E8, &unk_1C0970D70);
      }

      if (swift_dynamicCast())
      {
        v6 = v7;
      }

      else
      {
        v6 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE19040, &qword_1C0982038);
      result = swift_allocObject();
      result[2] = v1;
      result[3] = v6;
    }
  }

  return result;
}

void *sub_1C0608088(void *result)
{
  if (result)
  {
    result = sub_1C0518574();
    if (result)
    {
      v1 = result;
      v2 = result[4];
      v3 = type metadata accessor for UsoEntity_common_Quantifier();
      if (v3 == MEMORY[0x1E69E6158])
      {
        if (v2)
        {

          sub_1C0519574();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90);
      }

      else
      {
        if (v3 != MEMORY[0x1E69E7360])
        {

          v5 = sub_1C0605A38(v4, type metadata accessor for UsoEntity_common_Quantifier, sub_1C057FB88);

          if (v5)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE19038, &qword_1C0982030);
            result = swift_allocObject();
            result[2] = v1;
            result[3] = v5;
          }

          else
          {

            return 0;
          }

          return result;
        }

        if (v2)
        {
          Node.int64Value.getter();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE173E8, &unk_1C0970D70);
      }

      if (swift_dynamicCast())
      {
        v6 = v7;
      }

      else
      {
        v6 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE19038, &qword_1C0982030);
      result = swift_allocObject();
      result[2] = v1;
      result[3] = v6;
    }
  }

  return result;
}

void *sub_1C0608258(void *result)
{
  if (result)
  {
    result = sub_1C0518574();
    if (result)
    {
      v1 = result;
      v2 = result[4];
      v3 = type metadata accessor for UsoEntity();
      if (v3 == MEMORY[0x1E69E6158])
      {
        if (v2)
        {

          sub_1C0519574();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90);
      }

      else
      {
        if (v3 != MEMORY[0x1E69E7360])
        {

          v5 = sub_1C0602CDC(v4);

          if (v5)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE19030, &qword_1C0982028);
            result = swift_allocObject();
            result[2] = v1;
            result[3] = v5;
          }

          else
          {

            return 0;
          }

          return result;
        }

        if (v2)
        {
          Node.int64Value.getter();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE173E8, &unk_1C0970D70);
      }

      if (swift_dynamicCast())
      {
        v6 = v7;
      }

      else
      {
        v6 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE19030, &qword_1C0982028);
      result = swift_allocObject();
      result[2] = v1;
      result[3] = v6;
    }
  }

  return result;
}

void *sub_1C0608404(void *result)
{
  if (result)
  {
    result = sub_1C0518574();
    if (result)
    {
      v1 = result;
      v2 = result[4];
      v3 = type metadata accessor for UsoEntity_common_SpatialPosition();
      if (v3 == MEMORY[0x1E69E6158])
      {
        if (v2)
        {

          sub_1C0519574();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90);
      }

      else
      {
        if (v3 != MEMORY[0x1E69E7360])
        {

          v5 = sub_1C0605A38(v4, type metadata accessor for UsoEntity_common_SpatialPosition, sub_1C057FBA0);

          if (v5)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE19028, &qword_1C0982020);
            result = swift_allocObject();
            result[2] = v1;
            result[3] = v5;
          }

          else
          {

            return 0;
          }

          return result;
        }

        if (v2)
        {
          Node.int64Value.getter();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE173E8, &unk_1C0970D70);
      }

      if (swift_dynamicCast())
      {
        v6 = v7;
      }

      else
      {
        v6 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE19028, &qword_1C0982020);
      result = swift_allocObject();
      result[2] = v1;
      result[3] = v6;
    }
  }

  return result;
}

void *sub_1C06085D4(void *result)
{
  if (result)
  {
    result = sub_1C0518574();
    if (result)
    {
      v1 = result;
      v2 = result[4];
      v3 = type metadata accessor for UsoEntity_common_SummaryMode();
      if (v3 == MEMORY[0x1E69E6158])
      {
        if (v2)
        {

          sub_1C0519574();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90);
      }

      else
      {
        if (v3 != MEMORY[0x1E69E7360])
        {

          v5 = sub_1C0605A38(v4, type metadata accessor for UsoEntity_common_SummaryMode, sub_1C057FBB8);

          if (v5)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE19020, &qword_1C0982018);
            result = swift_allocObject();
            result[2] = v1;
            result[3] = v5;
          }

          else
          {

            return 0;
          }

          return result;
        }

        if (v2)
        {
          Node.int64Value.getter();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE173E8, &unk_1C0970D70);
      }

      if (swift_dynamicCast())
      {
        v6 = v7;
      }

      else
      {
        v6 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE19020, &qword_1C0982018);
      result = swift_allocObject();
      result[2] = v1;
      result[3] = v6;
    }
  }

  return result;
}

void *sub_1C06087A4(void *result)
{
  if (result)
  {
    result = sub_1C0518574();
    if (result)
    {
      v1 = result;
      v2 = result[4];
      v3 = type metadata accessor for UsoEntity_common_WorkoutEquipment();
      if (v3 == MEMORY[0x1E69E6158])
      {
        if (v2)
        {

          sub_1C0519574();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90);
      }

      else
      {
        if (v3 != MEMORY[0x1E69E7360])
        {

          v5 = sub_1C0605A38(v4, type metadata accessor for UsoEntity_common_WorkoutEquipment, sub_1C057FBD0);

          if (v5)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE19018, &qword_1C0982010);
            result = swift_allocObject();
            result[2] = v1;
            result[3] = v5;
          }

          else
          {

            return 0;
          }

          return result;
        }

        if (v2)
        {
          Node.int64Value.getter();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE173E8, &unk_1C0970D70);
      }

      if (swift_dynamicCast())
      {
        v6 = v7;
      }

      else
      {
        v6 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE19018, &qword_1C0982010);
      result = swift_allocObject();
      result[2] = v1;
      result[3] = v6;
    }
  }

  return result;
}

void *sub_1C0608974(void *result)
{
  if (result)
  {
    result = sub_1C0518574();
    if (result)
    {
      v1 = result;
      v2 = result[4];
      v3 = type metadata accessor for UsoEntity_common_UserEntity();
      if (v3 == MEMORY[0x1E69E6158])
      {
        if (v2)
        {

          sub_1C0519574();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90);
      }

      else
      {
        if (v3 != MEMORY[0x1E69E7360])
        {

          v5 = sub_1C0605A38(v4, type metadata accessor for UsoEntity_common_UserEntity, sub_1C057FBE8);

          if (v5)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE19010, &unk_1C0982000);
            result = swift_allocObject();
            result[2] = v1;
            result[3] = v5;
          }

          else
          {

            return 0;
          }

          return result;
        }

        if (v2)
        {
          Node.int64Value.getter();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE173E8, &unk_1C0970D70);
      }

      if (swift_dynamicCast())
      {
        v6 = v7;
      }

      else
      {
        v6 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE19010, &unk_1C0982000);
      result = swift_allocObject();
      result[2] = v1;
      result[3] = v6;
    }
  }

  return result;
}

void *sub_1C0608B44(void *result)
{
  if (result)
  {
    result = sub_1C0518574();
    if (result)
    {
      v1 = result;
      v2 = result[4];
      v3 = type metadata accessor for UsoEntity_common_CommunicationTrigger();
      if (v3 == MEMORY[0x1E69E6158])
      {
        if (v2)
        {

          sub_1C0519574();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90);
      }

      else
      {
        if (v3 != MEMORY[0x1E69E7360])
        {

          v5 = sub_1C0605A38(v4, type metadata accessor for UsoEntity_common_CommunicationTrigger, sub_1C057FC00);

          if (v5)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE19000, &qword_1C0981FF0);
            result = swift_allocObject();
            result[2] = v1;
            result[3] = v5;
          }

          else
          {

            return 0;
          }

          return result;
        }

        if (v2)
        {
          Node.int64Value.getter();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE173E8, &unk_1C0970D70);
      }

      if (swift_dynamicCast())
      {
        v6 = v7;
      }

      else
      {
        v6 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE19000, &qword_1C0981FF0);
      result = swift_allocObject();
      result[2] = v1;
      result[3] = v6;
    }
  }

  return result;
}

void *sub_1C0608D14(void *result)
{
  if (result)
  {
    result = sub_1C0518574();
    if (result)
    {
      v1 = result;
      v2 = result[4];
      v3 = type metadata accessor for UsoEntity_common_Setting();
      if (v3 == MEMORY[0x1E69E6158])
      {
        if (v2)
        {

          sub_1C0519574();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90);
      }

      else
      {
        if (v3 != MEMORY[0x1E69E7360])
        {

          v5 = sub_1C0605A38(v4, type metadata accessor for UsoEntity_common_Setting, sub_1C057FC18);

          if (v5)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18FF0, &qword_1C0981FE0);
            result = swift_allocObject();
            result[2] = v1;
            result[3] = v5;
          }

          else
          {

            return 0;
          }

          return result;
        }

        if (v2)
        {
          Node.int64Value.getter();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE173E8, &unk_1C0970D70);
      }

      if (swift_dynamicCast())
      {
        v6 = v7;
      }

      else
      {
        v6 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18FF0, &qword_1C0981FE0);
      result = swift_allocObject();
      result[2] = v1;
      result[3] = v6;
    }
  }

  return result;
}

void *sub_1C0608EE4(void *result)
{
  if (result)
  {
    result = sub_1C0518574();
    if (result)
    {
      v1 = result;
      v2 = result[4];
      v3 = type metadata accessor for UsoEntity_common_PointOfInterest();
      if (v3 == MEMORY[0x1E69E6158])
      {
        if (v2)
        {

          sub_1C0519574();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90);
      }

      else
      {
        if (v3 != MEMORY[0x1E69E7360])
        {

          v5 = sub_1C0605A38(v4, type metadata accessor for UsoEntity_common_PointOfInterest, sub_1C057FC30);

          if (v5)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18FE0, &qword_1C0981FD0);
            result = swift_allocObject();
            result[2] = v1;
            result[3] = v5;
          }

          else
          {

            return 0;
          }

          return result;
        }

        if (v2)
        {
          Node.int64Value.getter();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE173E8, &unk_1C0970D70);
      }

      if (swift_dynamicCast())
      {
        v6 = v7;
      }

      else
      {
        v6 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18FE0, &qword_1C0981FD0);
      result = swift_allocObject();
      result[2] = v1;
      result[3] = v6;
    }
  }

  return result;
}

void *sub_1C06090B4(void *result)
{
  if (result)
  {
    result = sub_1C0518574();
    if (result)
    {
      v1 = result;
      v2 = result[4];
      v3 = type metadata accessor for UsoEntity_common_Journey();
      if (v3 == MEMORY[0x1E69E6158])
      {
        if (v2)
        {

          sub_1C0519574();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90);
      }

      else
      {
        if (v3 != MEMORY[0x1E69E7360])
        {

          v5 = sub_1C0605A38(v4, type metadata accessor for UsoEntity_common_Journey, sub_1C057FC48);

          if (v5)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18FD8, &qword_1C0981FC8);
            result = swift_allocObject();
            result[2] = v1;
            result[3] = v5;
          }

          else
          {

            return 0;
          }

          return result;
        }

        if (v2)
        {
          Node.int64Value.getter();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE173E8, &unk_1C0970D70);
      }

      if (swift_dynamicCast())
      {
        v6 = v7;
      }

      else
      {
        v6 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18FD8, &qword_1C0981FC8);
      result = swift_allocObject();
      result[2] = v1;
      result[3] = v6;
    }
  }

  return result;
}

void *sub_1C0609284(void *result)
{
  if (result)
  {
    result = sub_1C0518574();
    if (result)
    {
      v1 = result;
      v2 = result[4];
      v3 = type metadata accessor for UsoEntity_common_ContactAddress();
      if (v3 == MEMORY[0x1E69E6158])
      {
        if (v2)
        {

          sub_1C0519574();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90);
      }

      else
      {
        if (v3 != MEMORY[0x1E69E7360])
        {

          v5 = sub_1C0605A38(v4, type metadata accessor for UsoEntity_common_ContactAddress, sub_1C057FC60);

          if (v5)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18FC0, &qword_1C0981FB0);
            result = swift_allocObject();
            result[2] = v1;
            result[3] = v5;
          }

          else
          {

            return 0;
          }

          return result;
        }

        if (v2)
        {
          Node.int64Value.getter();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE173E8, &unk_1C0970D70);
      }

      if (swift_dynamicCast())
      {
        v6 = v7;
      }

      else
      {
        v6 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18FC0, &qword_1C0981FB0);
      result = swift_allocObject();
      result[2] = v1;
      result[3] = v6;
    }
  }

  return result;
}

void *sub_1C0609454(void *result)
{
  if (result)
  {
    result = sub_1C0518574();
    if (result)
    {
      v1 = result;
      v2 = result[4];
      v3 = type metadata accessor for UsoEntity_common_Person();
      if (v3 == MEMORY[0x1E69E6158])
      {
        if (v2)
        {

          sub_1C0519574();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90);
      }

      else
      {
        if (v3 != MEMORY[0x1E69E7360])
        {

          v5 = sub_1C0605A38(v4, type metadata accessor for UsoEntity_common_Person, sub_1C057FC78);

          if (v5)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18FB8, &qword_1C0981FA8);
            result = swift_allocObject();
            result[2] = v1;
            result[3] = v5;
          }

          else
          {

            return 0;
          }

          return result;
        }

        if (v2)
        {
          Node.int64Value.getter();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE173E8, &unk_1C0970D70);
      }

      if (swift_dynamicCast())
      {
        v6 = v7;
      }

      else
      {
        v6 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18FB8, &qword_1C0981FA8);
      result = swift_allocObject();
      result[2] = v1;
      result[3] = v6;
    }
  }

  return result;
}

void *sub_1C0609624(void *result)
{
  if (result)
  {
    result = sub_1C0518574();
    if (result)
    {
      v1 = result;
      v2 = result[4];
      v3 = type metadata accessor for UsoEntity_common_RecurringDateTime();
      if (v3 == MEMORY[0x1E69E6158])
      {
        if (v2)
        {

          sub_1C0519574();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90);
      }

      else
      {
        if (v3 != MEMORY[0x1E69E7360])
        {

          v5 = sub_1C0605A38(v4, type metadata accessor for UsoEntity_common_RecurringDateTime, sub_1C057FC90);

          if (v5)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18FB0, &qword_1C0981FA0);
            result = swift_allocObject();
            result[2] = v1;
            result[3] = v5;
          }

          else
          {

            return 0;
          }

          return result;
        }

        if (v2)
        {
          Node.int64Value.getter();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE173E8, &unk_1C0970D70);
      }

      if (swift_dynamicCast())
      {
        v6 = v7;
      }

      else
      {
        v6 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18FB0, &qword_1C0981FA0);
      result = swift_allocObject();
      result[2] = v1;
      result[3] = v6;
    }
  }

  return result;
}

void *sub_1C06097F4(void *result)
{
  if (result)
  {
    result = sub_1C0518574();
    if (result)
    {
      v1 = result;
      v2 = result[4];
      v3 = type metadata accessor for UsoEntity_commonTimer_TimerAttribute();
      if (v3 == MEMORY[0x1E69E6158])
      {
        if (v2)
        {

          sub_1C0519574();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90);
      }

      else
      {
        if (v3 != MEMORY[0x1E69E7360])
        {

          v5 = sub_1C0605A38(v4, type metadata accessor for UsoEntity_commonTimer_TimerAttribute, sub_1C057FCA8);

          if (v5)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18FA8, &qword_1C0981F98);
            result = swift_allocObject();
            result[2] = v1;
            result[3] = v5;
          }

          else
          {

            return 0;
          }

          return result;
        }

        if (v2)
        {
          Node.int64Value.getter();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE173E8, &unk_1C0970D70);
      }

      if (swift_dynamicCast())
      {
        v6 = v7;
      }

      else
      {
        v6 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18FA8, &qword_1C0981F98);
      result = swift_allocObject();
      result[2] = v1;
      result[3] = v6;
    }
  }

  return result;
}

void *sub_1C06099C4(void *result)
{
  if (result)
  {
    result = sub_1C0518574();
    if (result)
    {
      v1 = result;
      v2 = result[4];
      v3 = type metadata accessor for UsoEntity_common_VoiceTrigger();
      if (v3 == MEMORY[0x1E69E6158])
      {
        if (v2)
        {

          sub_1C0519574();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90);
      }

      else
      {
        if (v3 != MEMORY[0x1E69E7360])
        {

          v5 = sub_1C0605A38(v4, type metadata accessor for UsoEntity_common_VoiceTrigger, sub_1C057FCC0);

          if (v5)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18FA0, &qword_1C0981F90);
            result = swift_allocObject();
            result[2] = v1;
            result[3] = v5;
          }

          else
          {

            return 0;
          }

          return result;
        }

        if (v2)
        {
          Node.int64Value.getter();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE173E8, &unk_1C0970D70);
      }

      if (swift_dynamicCast())
      {
        v6 = v7;
      }

      else
      {
        v6 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18FA0, &qword_1C0981F90);
      result = swift_allocObject();
      result[2] = v1;
      result[3] = v6;
    }
  }

  return result;
}

void *sub_1C0609B94(void *result)
{
  if (result)
  {
    result = sub_1C0518574();
    if (result)
    {
      v1 = result;
      v2 = result[4];
      v3 = type metadata accessor for UsoEntity_common_ReactionCategory();
      if (v3 == MEMORY[0x1E69E6158])
      {
        if (v2)
        {

          sub_1C0519574();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90);
      }

      else
      {
        if (v3 != MEMORY[0x1E69E7360])
        {

          v5 = sub_1C0605A38(v4, type metadata accessor for UsoEntity_common_ReactionCategory, sub_1C057FCD8);

          if (v5)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18F90, &qword_1C0981F80);
            result = swift_allocObject();
            result[2] = v1;
            result[3] = v5;
          }

          else
          {

            return 0;
          }

          return result;
        }

        if (v2)
        {
          Node.int64Value.getter();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE173E8, &unk_1C0970D70);
      }

      if (swift_dynamicCast())
      {
        v6 = v7;
      }

      else
      {
        v6 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18F90, &qword_1C0981F80);
      result = swift_allocObject();
      result[2] = v1;
      result[3] = v6;
    }
  }

  return result;
}

void *sub_1C0609D64(void *result)
{
  if (result)
  {
    result = sub_1C0518574();
    if (result)
    {
      v1 = result;
      v2 = result[4];
      v3 = type metadata accessor for UsoEntity_common_ReminderType();
      if (v3 == MEMORY[0x1E69E6158])
      {
        if (v2)
        {

          sub_1C0519574();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90);
      }

      else
      {
        if (v3 != MEMORY[0x1E69E7360])
        {

          v5 = sub_1C0605A38(v4, type metadata accessor for UsoEntity_common_ReminderType, sub_1C057FCF0);

          if (v5)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18F88, &qword_1C0981F78);
            result = swift_allocObject();
            result[2] = v1;
            result[3] = v5;
          }

          else
          {

            return 0;
          }

          return result;
        }

        if (v2)
        {
          Node.int64Value.getter();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE173E8, &unk_1C0970D70);
      }

      if (swift_dynamicCast())
      {
        v6 = v7;
      }

      else
      {
        v6 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18F88, &qword_1C0981F78);
      result = swift_allocObject();
      result[2] = v1;
      result[3] = v6;
    }
  }

  return result;
}

void *sub_1C0609F34(void *result)
{
  if (result)
  {
    result = sub_1C0518574();
    if (result)
    {
      v1 = result;
      v2 = result[4];
      v3 = type metadata accessor for UsoEntity_common_DailyBriefingItem();
      if (v3 == MEMORY[0x1E69E6158])
      {
        if (v2)
        {

          sub_1C0519574();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90);
      }

      else
      {
        if (v3 != MEMORY[0x1E69E7360])
        {

          v5 = sub_1C0605A38(v4, type metadata accessor for UsoEntity_common_DailyBriefingItem, sub_1C057FD08);

          if (v5)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18F80, &qword_1C0981F70);
            result = swift_allocObject();
            result[2] = v1;
            result[3] = v5;
          }

          else
          {

            return 0;
          }

          return result;
        }

        if (v2)
        {
          Node.int64Value.getter();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE173E8, &unk_1C0970D70);
      }

      if (swift_dynamicCast())
      {
        v6 = v7;
      }

      else
      {
        v6 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18F80, &qword_1C0981F70);
      result = swift_allocObject();
      result[2] = v1;
      result[3] = v6;
    }
  }

  return result;
}

void *sub_1C060A104(void *result)
{
  if (result)
  {
    result = sub_1C0518574();
    if (result)
    {
      v1 = result;
      v2 = result[4];
      v3 = type metadata accessor for UsoEntity_common_AppEntity();
      if (v3 == MEMORY[0x1E69E6158])
      {
        if (v2)
        {

          sub_1C0519574();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90);
      }

      else
      {
        if (v3 != MEMORY[0x1E69E7360])
        {

          v5 = sub_1C0605A38(v4, type metadata accessor for UsoEntity_common_AppEntity, sub_1C057FD20);

          if (v5)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18F78, &qword_1C0981F68);
            result = swift_allocObject();
            result[2] = v1;
            result[3] = v5;
          }

          else
          {

            return 0;
          }

          return result;
        }

        if (v2)
        {
          Node.int64Value.getter();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE173E8, &unk_1C0970D70);
      }

      if (swift_dynamicCast())
      {
        v6 = v7;
      }

      else
      {
        v6 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18F78, &qword_1C0981F68);
      result = swift_allocObject();
      result[2] = v1;
      result[3] = v6;
    }
  }

  return result;
}

void *sub_1C060A2D4(void *result)
{
  if (result)
  {
    result = sub_1C0518574();
    if (result)
    {
      v1 = result;
      v2 = result[4];
      v3 = type metadata accessor for UsoEntity_common_AppEntityType();
      if (v3 == MEMORY[0x1E69E6158])
      {
        if (v2)
        {

          sub_1C0519574();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90);
      }

      else
      {
        if (v3 != MEMORY[0x1E69E7360])
        {

          v5 = sub_1C0605A38(v4, type metadata accessor for UsoEntity_common_AppEntityType, sub_1C057FD38);

          if (v5)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18F68, &qword_1C0981F58);
            result = swift_allocObject();
            result[2] = v1;
            result[3] = v5;
          }

          else
          {

            return 0;
          }

          return result;
        }

        if (v2)
        {
          Node.int64Value.getter();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE173E8, &unk_1C0970D70);
      }

      if (swift_dynamicCast())
      {
        v6 = v7;
      }

      else
      {
        v6 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18F68, &qword_1C0981F58);
      result = swift_allocObject();
      result[2] = v1;
      result[3] = v6;
    }
  }

  return result;
}

void *sub_1C060A4A4(void *result)
{
  if (result)
  {
    result = sub_1C0518574();
    if (result)
    {
      v1 = result;
      v2 = result[4];
      v3 = type metadata accessor for UsoEntity_common_WorkoutGoal();
      if (v3 == MEMORY[0x1E69E6158])
      {
        if (v2)
        {

          sub_1C0519574();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90);
      }

      else
      {
        if (v3 != MEMORY[0x1E69E7360])
        {

          v5 = sub_1C0605A38(v4, type metadata accessor for UsoEntity_common_WorkoutGoal, sub_1C057FD50);

          if (v5)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18F60, &qword_1C0981F50);
            result = swift_allocObject();
            result[2] = v1;
            result[3] = v5;
          }

          else
          {

            return 0;
          }

          return result;
        }

        if (v2)
        {
          Node.int64Value.getter();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE173E8, &unk_1C0970D70);
      }

      if (swift_dynamicCast())
      {
        v6 = v7;
      }

      else
      {
        v6 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18F60, &qword_1C0981F50);
      result = swift_allocObject();
      result[2] = v1;
      result[3] = v6;
    }
  }

  return result;
}

void *sub_1C060A674(void *result)
{
  if (result)
  {
    result = sub_1C0518574();
    if (result)
    {
      v1 = result;
      v2 = result[4];
      v3 = type metadata accessor for UsoEntity_common_DurationComponent();
      if (v3 == MEMORY[0x1E69E6158])
      {
        if (v2)
        {

          sub_1C0519574();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90);
      }

      else
      {
        if (v3 != MEMORY[0x1E69E7360])
        {

          v5 = sub_1C0605A38(v4, type metadata accessor for UsoEntity_common_DurationComponent, sub_1C057FD68);

          if (v5)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18F50, &qword_1C0981F40);
            result = swift_allocObject();
            result[2] = v1;
            result[3] = v5;
          }

          else
          {

            return 0;
          }

          return result;
        }

        if (v2)
        {
          Node.int64Value.getter();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE173E8, &unk_1C0970D70);
      }

      if (swift_dynamicCast())
      {
        v6 = v7;
      }

      else
      {
        v6 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18F50, &qword_1C0981F40);
      result = swift_allocObject();
      result[2] = v1;
      result[3] = v6;
    }
  }

  return result;
}

void *sub_1C060A844(void *result)
{
  if (result)
  {
    result = sub_1C0518574();
    if (result)
    {
      v1 = result;
      v2 = result[4];
      v3 = type metadata accessor for UsoEntity_common_TimeUnit();
      if (v3 == MEMORY[0x1E69E6158])
      {
        if (v2)
        {

          sub_1C0519574();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90);
      }

      else
      {
        if (v3 != MEMORY[0x1E69E7360])
        {

          v5 = sub_1C0605A38(v4, type metadata accessor for UsoEntity_common_TimeUnit, sub_1C057FD80);

          if (v5)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18F48, &qword_1C0981F38);
            result = swift_allocObject();
            result[2] = v1;
            result[3] = v5;
          }

          else
          {

            return 0;
          }

          return result;
        }

        if (v2)
        {
          Node.int64Value.getter();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE173E8, &unk_1C0970D70);
      }

      if (swift_dynamicCast())
      {
        v6 = v7;
      }

      else
      {
        v6 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18F48, &qword_1C0981F38);
      result = swift_allocObject();
      result[2] = v1;
      result[3] = v6;
    }
  }

  return result;
}

void *sub_1C060AA14(void *result)
{
  if (result)
  {
    result = sub_1C0518574();
    if (result)
    {
      v1 = result;
      v2 = result[4];
      v3 = type metadata accessor for UsoEntity_common_PhoneCallMode();
      if (v3 == MEMORY[0x1E69E6158])
      {
        if (v2)
        {

          sub_1C0519574();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90);
      }

      else
      {
        if (v3 != MEMORY[0x1E69E7360])
        {

          v5 = sub_1C0605A38(v4, type metadata accessor for UsoEntity_common_PhoneCallMode, sub_1C057FD98);

          if (v5)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18F38, &qword_1C0981F28);
            result = swift_allocObject();
            result[2] = v1;
            result[3] = v5;
          }

          else
          {

            return 0;
          }

          return result;
        }

        if (v2)
        {
          Node.int64Value.getter();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE173E8, &unk_1C0970D70);
      }

      if (swift_dynamicCast())
      {
        v6 = v7;
      }

      else
      {
        v6 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18F38, &qword_1C0981F28);
      result = swift_allocObject();
      result[2] = v1;
      result[3] = v6;
    }
  }

  return result;
}

void *sub_1C060ABE4(void *result)
{
  if (result)
  {
    result = sub_1C0518574();
    if (result)
    {
      v1 = result;
      v2 = result[4];
      v3 = type metadata accessor for UsoEntity_appleContact_ContactAttribute();
      if (v3 == MEMORY[0x1E69E6158])
      {
        if (v2)
        {

          sub_1C0519574();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90);
      }

      else
      {
        if (v3 != MEMORY[0x1E69E7360])
        {

          v5 = sub_1C0605A38(v4, type metadata accessor for UsoEntity_appleContact_ContactAttribute, sub_1C057FDB0);

          if (v5)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18F30, &qword_1C0981F20);
            result = swift_allocObject();
            result[2] = v1;
            result[3] = v5;
          }

          else
          {

            return 0;
          }

          return result;
        }

        if (v2)
        {
          Node.int64Value.getter();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE173E8, &unk_1C0970D70);
      }

      if (swift_dynamicCast())
      {
        v6 = v7;
      }

      else
      {
        v6 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18F30, &qword_1C0981F20);
      result = swift_allocObject();
      result[2] = v1;
      result[3] = v6;
    }
  }

  return result;
}

void *sub_1C060ADB4(void *result)
{
  if (result)
  {
    result = sub_1C0518574();
    if (result)
    {
      v1 = result;
      v2 = result[4];
      v3 = type metadata accessor for UsoEntity_common_PersonProperty();
      if (v3 == MEMORY[0x1E69E6158])
      {
        if (v2)
        {

          sub_1C0519574();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90);
      }

      else
      {
        if (v3 != MEMORY[0x1E69E7360])
        {

          v5 = sub_1C0605A38(v4, type metadata accessor for UsoEntity_common_PersonProperty, sub_1C057FDC8);

          if (v5)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18F28, &qword_1C0981F18);
            result = swift_allocObject();
            result[2] = v1;
            result[3] = v5;
          }

          else
          {

            return 0;
          }

          return result;
        }

        if (v2)
        {
          Node.int64Value.getter();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE173E8, &unk_1C0970D70);
      }

      if (swift_dynamicCast())
      {
        v6 = v7;
      }

      else
      {
        v6 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18F28, &qword_1C0981F18);
      result = swift_allocObject();
      result[2] = v1;
      result[3] = v6;
    }
  }

  return result;
}

void *sub_1C060AF84(void *result)
{
  if (result)
  {
    result = sub_1C0518574();
    if (result)
    {
      v1 = result;
      v2 = result[4];
      v3 = type metadata accessor for UsoEntity_common_QRCodeType();
      if (v3 == MEMORY[0x1E69E6158])
      {
        if (v2)
        {

          sub_1C0519574();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90);
      }

      else
      {
        if (v3 != MEMORY[0x1E69E7360])
        {

          v5 = sub_1C0605A38(v4, type metadata accessor for UsoEntity_common_QRCodeType, sub_1C057FDE0);

          if (v5)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18F20, &qword_1C0981F10);
            result = swift_allocObject();
            result[2] = v1;
            result[3] = v5;
          }

          else
          {

            return 0;
          }

          return result;
        }

        if (v2)
        {
          Node.int64Value.getter();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE173E8, &unk_1C0970D70);
      }

      if (swift_dynamicCast())
      {
        v6 = v7;
      }

      else
      {
        v6 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18F20, &qword_1C0981F10);
      result = swift_allocObject();
      result[2] = v1;
      result[3] = v6;
    }
  }

  return result;
}

void *sub_1C060B154(void *result)
{
  if (result)
  {
    result = sub_1C0518574();
    if (result)
    {
      v1 = result;
      v2 = result[4];
      v3 = type metadata accessor for UsoEntity_common_OpinionJudgment();
      if (v3 == MEMORY[0x1E69E6158])
      {
        if (v2)
        {

          sub_1C0519574();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90);
      }

      else
      {
        if (v3 != MEMORY[0x1E69E7360])
        {

          v5 = sub_1C0605A38(v4, type metadata accessor for UsoEntity_common_OpinionJudgment, sub_1C057FDF8);

          if (v5)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18F18, &qword_1C0981F08);
            result = swift_allocObject();
            result[2] = v1;
            result[3] = v5;
          }

          else
          {

            return 0;
          }

          return result;
        }

        if (v2)
        {
          Node.int64Value.getter();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE173E8, &unk_1C0970D70);
      }

      if (swift_dynamicCast())
      {
        v6 = v7;
      }

      else
      {
        v6 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18F18, &qword_1C0981F08);
      result = swift_allocObject();
      result[2] = v1;
      result[3] = v6;
    }
  }

  return result;
}

void *sub_1C060B324(void *result)
{
  if (result)
  {
    result = sub_1C0518574();
    if (result)
    {
      v1 = result;
      v2 = result[4];
      v3 = type metadata accessor for UsoEntity_common_OpinionTopic();
      if (v3 == MEMORY[0x1E69E6158])
      {
        if (v2)
        {

          sub_1C0519574();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90);
      }

      else
      {
        if (v3 != MEMORY[0x1E69E7360])
        {

          v5 = sub_1C0605A38(v4, type metadata accessor for UsoEntity_common_OpinionTopic, sub_1C057FE10);

          if (v5)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18F10, &qword_1C0981F00);
            result = swift_allocObject();
            result[2] = v1;
            result[3] = v5;
          }

          else
          {

            return 0;
          }

          return result;
        }

        if (v2)
        {
          Node.int64Value.getter();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE173E8, &unk_1C0970D70);
      }

      if (swift_dynamicCast())
      {
        v6 = v7;
      }

      else
      {
        v6 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18F10, &qword_1C0981F00);
      result = swift_allocObject();
      result[2] = v1;
      result[3] = v6;
    }
  }

  return result;
}

void *sub_1C060B4F4(void *result)
{
  if (result)
  {
    result = sub_1C0518574();
    if (result)
    {
      v1 = result;
      v2 = result[4];
      v3 = type metadata accessor for UsoEntity_common_SiriOpinion();
      if (v3 == MEMORY[0x1E69E6158])
      {
        if (v2)
        {

          sub_1C0519574();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90);
      }

      else
      {
        if (v3 != MEMORY[0x1E69E7360])
        {

          v5 = sub_1C0605A38(v4, type metadata accessor for UsoEntity_common_SiriOpinion, sub_1C057FE28);

          if (v5)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18F08, &qword_1C0981EF8);
            result = swift_allocObject();
            result[2] = v1;
            result[3] = v5;
          }

          else
          {

            return 0;
          }

          return result;
        }

        if (v2)
        {
          Node.int64Value.getter();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE173E8, &unk_1C0970D70);
      }

      if (swift_dynamicCast())
      {
        v6 = v7;
      }

      else
      {
        v6 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18F08, &qword_1C0981EF8);
      result = swift_allocObject();
      result[2] = v1;
      result[3] = v6;
    }
  }

  return result;
}

void *sub_1C060B6C4(void *result)
{
  if (result)
  {
    result = sub_1C0518574();
    if (result)
    {
      v1 = result;
      v2 = result[4];
      v3 = type metadata accessor for UsoEntity_common_TemperatureComponent();
      if (v3 == MEMORY[0x1E69E6158])
      {
        if (v2)
        {

          sub_1C0519574();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90);
      }

      else
      {
        if (v3 != MEMORY[0x1E69E7360])
        {

          v5 = sub_1C0605A38(v4, type metadata accessor for UsoEntity_common_TemperatureComponent, sub_1C057FE40);

          if (v5)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18F00, &qword_1C0981EF0);
            result = swift_allocObject();
            result[2] = v1;
            result[3] = v5;
          }

          else
          {

            return 0;
          }

          return result;
        }

        if (v2)
        {
          Node.int64Value.getter();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE173E8, &unk_1C0970D70);
      }

      if (swift_dynamicCast())
      {
        v6 = v7;
      }

      else
      {
        v6 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18F00, &qword_1C0981EF0);
      result = swift_allocObject();
      result[2] = v1;
      result[3] = v6;
    }
  }

  return result;
}

void *sub_1C060B894(void *result)
{
  if (result)
  {
    result = sub_1C0518574();
    if (result)
    {
      v1 = result;
      v2 = result[4];
      v3 = type metadata accessor for UsoEntity_common_TemperatureUnit();
      if (v3 == MEMORY[0x1E69E6158])
      {
        if (v2)
        {

          sub_1C0519574();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90);
      }

      else
      {
        if (v3 != MEMORY[0x1E69E7360])
        {

          v5 = sub_1C0605A38(v4, type metadata accessor for UsoEntity_common_TemperatureUnit, sub_1C057FE58);

          if (v5)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18EF8, &qword_1C0981EE8);
            result = swift_allocObject();
            result[2] = v1;
            result[3] = v5;
          }

          else
          {

            return 0;
          }

          return result;
        }

        if (v2)
        {
          Node.int64Value.getter();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE173E8, &unk_1C0970D70);
      }

      if (swift_dynamicCast())
      {
        v6 = v7;
      }

      else
      {
        v6 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18EF8, &qword_1C0981EE8);
      result = swift_allocObject();
      result[2] = v1;
      result[3] = v6;
    }
  }

  return result;
}

void *sub_1C060BA64(void *result)
{
  if (result)
  {
    result = sub_1C0518574();
    if (result)
    {
      v1 = result;
      v2 = result[4];
      v3 = type metadata accessor for UsoEntity_common_SearchObject();
      if (v3 == MEMORY[0x1E69E6158])
      {
        if (v2)
        {

          sub_1C0519574();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90);
      }

      else
      {
        if (v3 != MEMORY[0x1E69E7360])
        {

          v5 = sub_1C0605A38(v4, type metadata accessor for UsoEntity_common_SearchObject, sub_1C057FE70);

          if (v5)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18EF0, &qword_1C0981EE0);
            result = swift_allocObject();
            result[2] = v1;
            result[3] = v5;
          }

          else
          {

            return 0;
          }

          return result;
        }

        if (v2)
        {
          Node.int64Value.getter();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE173E8, &unk_1C0970D70);
      }

      if (swift_dynamicCast())
      {
        v6 = v7;
      }

      else
      {
        v6 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18EF0, &qword_1C0981EE0);
      result = swift_allocObject();
      result[2] = v1;
      result[3] = v6;
    }
  }

  return result;
}

void *sub_1C060BC34(void *result)
{
  if (result)
  {
    result = sub_1C0518574();
    if (result)
    {
      v1 = result;
      v2 = result[4];
      v3 = type metadata accessor for UsoEntity_common_SearchObjectType();
      if (v3 == MEMORY[0x1E69E6158])
      {
        if (v2)
        {

          sub_1C0519574();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90);
      }

      else
      {
        if (v3 != MEMORY[0x1E69E7360])
        {

          v5 = sub_1C0605A38(v4, type metadata accessor for UsoEntity_common_SearchObjectType, sub_1C057FE88);

          if (v5)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18EE8, &qword_1C0981ED8);
            result = swift_allocObject();
            result[2] = v1;
            result[3] = v5;
          }

          else
          {

            return 0;
          }

          return result;
        }

        if (v2)
        {
          Node.int64Value.getter();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE173E8, &unk_1C0970D70);
      }

      if (swift_dynamicCast())
      {
        v6 = v7;
      }

      else
      {
        v6 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18EE8, &qword_1C0981ED8);
      result = swift_allocObject();
      result[2] = v1;
      result[3] = v6;
    }
  }

  return result;
}

void *sub_1C060BE04(void *result)
{
  if (result)
  {
    result = sub_1C0518574();
    if (result)
    {
      v1 = result;
      v2 = result[4];
      v3 = type metadata accessor for UsoEntity_common_Agent();
      if (v3 == MEMORY[0x1E69E6158])
      {
        if (v2)
        {

          sub_1C0519574();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90);
      }

      else
      {
        if (v3 != MEMORY[0x1E69E7360])
        {

          v5 = sub_1C0605A38(v4, type metadata accessor for UsoEntity_common_Agent, sub_1C057FEA0);

          if (v5)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18EE0, &qword_1C0981ED0);
            result = swift_allocObject();
            result[2] = v1;
            result[3] = v5;
          }

          else
          {

            return 0;
          }

          return result;
        }

        if (v2)
        {
          Node.int64Value.getter();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE173E8, &unk_1C0970D70);
      }

      if (swift_dynamicCast())
      {
        v6 = v7;
      }

      else
      {
        v6 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18EE0, &qword_1C0981ED0);
      result = swift_allocObject();
      result[2] = v1;
      result[3] = v6;
    }
  }

  return result;
}

void *sub_1C060BFD4(void *result)
{
  if (result)
  {
    result = sub_1C0518574();
    if (result)
    {
      v1 = result;
      v2 = result[4];
      v3 = type metadata accessor for UsoEntity_common_Voicemail();
      if (v3 == MEMORY[0x1E69E6158])
      {
        if (v2)
        {

          sub_1C0519574();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90);
      }

      else
      {
        if (v3 != MEMORY[0x1E69E7360])
        {

          v5 = sub_1C0605A38(v4, type metadata accessor for UsoEntity_common_Voicemail, sub_1C057FEB8);

          if (v5)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18ED0, &qword_1C0981EC0);
            result = swift_allocObject();
            result[2] = v1;
            result[3] = v5;
          }

          else
          {

            return 0;
          }

          return result;
        }

        if (v2)
        {
          Node.int64Value.getter();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE173E8, &unk_1C0970D70);
      }

      if (swift_dynamicCast())
      {
        v6 = v7;
      }

      else
      {
        v6 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18ED0, &qword_1C0981EC0);
      result = swift_allocObject();
      result[2] = v1;
      result[3] = v6;
    }
  }

  return result;
}

void *sub_1C060C1A4(void *result)
{
  if (result)
  {
    result = sub_1C0518574();
    if (result)
    {
      v1 = result;
      v2 = result[4];
      v3 = type metadata accessor for UsoEntity_common_DateTimeRangeQualifier();
      if (v3 == MEMORY[0x1E69E6158])
      {
        if (v2)
        {

          sub_1C0519574();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90);
      }

      else
      {
        if (v3 != MEMORY[0x1E69E7360])
        {

          v5 = sub_1C0605A38(v4, type metadata accessor for UsoEntity_common_DateTimeRangeQualifier, sub_1C057FED0);

          if (v5)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18EC0, &qword_1C0981EB0);
            result = swift_allocObject();
            result[2] = v1;
            result[3] = v5;
          }

          else
          {

            return 0;
          }

          return result;
        }

        if (v2)
        {
          Node.int64Value.getter();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE173E8, &unk_1C0970D70);
      }

      if (swift_dynamicCast())
      {
        v6 = v7;
      }

      else
      {
        v6 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18EC0, &qword_1C0981EB0);
      result = swift_allocObject();
      result[2] = v1;
      result[3] = v6;
    }
  }

  return result;
}

void *sub_1C060C374(void *result)
{
  if (result)
  {
    result = sub_1C0518574();
    if (result)
    {
      v1 = result;
      v2 = result[4];
      v3 = type metadata accessor for UsoEntity_common_RecurringDateTimeRange();
      if (v3 == MEMORY[0x1E69E6158])
      {
        if (v2)
        {

          sub_1C0519574();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90);
      }

      else
      {
        if (v3 != MEMORY[0x1E69E7360])
        {

          v5 = sub_1C0605A38(v4, type metadata accessor for UsoEntity_common_RecurringDateTimeRange, sub_1C057FEE8);

          if (v5)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18EB0, &qword_1C0981EA0);
            result = swift_allocObject();
            result[2] = v1;
            result[3] = v5;
          }

          else
          {

            return 0;
          }

          return result;
        }

        if (v2)
        {
          Node.int64Value.getter();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE173E8, &unk_1C0970D70);
      }

      if (swift_dynamicCast())
      {
        v6 = v7;
      }

      else
      {
        v6 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18EB0, &qword_1C0981EA0);
      result = swift_allocObject();
      result[2] = v1;
      result[3] = v6;
    }
  }

  return result;
}

void *sub_1C060C544(void *result)
{
  if (result)
  {
    result = sub_1C0518574();
    if (result)
    {
      v1 = result;
      v2 = result[4];
      v3 = type metadata accessor for UsoEntity_common_Workout();
      if (v3 == MEMORY[0x1E69E6158])
      {
        if (v2)
        {

          sub_1C0519574();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90);
      }

      else
      {
        if (v3 != MEMORY[0x1E69E7360])
        {

          v5 = sub_1C0605A38(v4, type metadata accessor for UsoEntity_common_Workout, sub_1C057FF00);

          if (v5)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18EA8, &qword_1C0981E98);
            result = swift_allocObject();
            result[2] = v1;
            result[3] = v5;
          }

          else
          {

            return 0;
          }

          return result;
        }

        if (v2)
        {
          Node.int64Value.getter();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE173E8, &unk_1C0970D70);
      }

      if (swift_dynamicCast())
      {
        v6 = v7;
      }

      else
      {
        v6 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18EA8, &qword_1C0981E98);
      result = swift_allocObject();
      result[2] = v1;
      result[3] = v6;
    }
  }

  return result;
}

void *sub_1C060C714(void *result)
{
  if (result)
  {
    result = sub_1C0518574();
    if (result)
    {
      v1 = result;
      v2 = result[4];
      v3 = type metadata accessor for UsoEntity_common_HealthLog();
      if (v3 == MEMORY[0x1E69E6158])
      {
        if (v2)
        {

          sub_1C0519574();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90);
      }

      else
      {
        if (v3 != MEMORY[0x1E69E7360])
        {

          v5 = sub_1C0605A38(v4, type metadata accessor for UsoEntity_common_HealthLog, sub_1C057FF18);

          if (v5)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18EA0, &qword_1C0981E90);
            result = swift_allocObject();
            result[2] = v1;
            result[3] = v5;
          }

          else
          {

            return 0;
          }

          return result;
        }

        if (v2)
        {
          Node.int64Value.getter();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE173E8, &unk_1C0970D70);
      }

      if (swift_dynamicCast())
      {
        v6 = v7;
      }

      else
      {
        v6 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18EA0, &qword_1C0981E90);
      result = swift_allocObject();
      result[2] = v1;
      result[3] = v6;
    }
  }

  return result;
}

void *sub_1C060C8E4(void *result)
{
  if (result)
  {
    result = sub_1C0518574();
    if (result)
    {
      v1 = result;
      v2 = result[4];
      v3 = type metadata accessor for UsoEntity_common_WorkoutClass();
      if (v3 == MEMORY[0x1E69E6158])
      {
        if (v2)
        {

          sub_1C0519574();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90);
      }

      else
      {
        if (v3 != MEMORY[0x1E69E7360])
        {

          v5 = sub_1C0605A38(v4, type metadata accessor for UsoEntity_common_WorkoutClass, sub_1C057FF30);

          if (v5)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18E98, &qword_1C0981E88);
            result = swift_allocObject();
            result[2] = v1;
            result[3] = v5;
          }

          else
          {

            return 0;
          }

          return result;
        }

        if (v2)
        {
          Node.int64Value.getter();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE173E8, &unk_1C0970D70);
      }

      if (swift_dynamicCast())
      {
        v6 = v7;
      }

      else
      {
        v6 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18E98, &qword_1C0981E88);
      result = swift_allocObject();
      result[2] = v1;
      result[3] = v6;
    }
  }

  return result;
}

void *sub_1C060CAB4(void *result)
{
  if (result)
  {
    result = sub_1C0518574();
    if (result)
    {
      v1 = result;
      v2 = result[4];
      v3 = type metadata accessor for UsoEntity_commonStock_StockAttribute();
      if (v3 == MEMORY[0x1E69E6158])
      {
        if (v2)
        {

          sub_1C0519574();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90);
      }

      else
      {
        if (v3 != MEMORY[0x1E69E7360])
        {

          v5 = sub_1C0605A38(v4, type metadata accessor for UsoEntity_commonStock_StockAttribute, sub_1C057FF48);

          if (v5)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18E90, &qword_1C0981E80);
            result = swift_allocObject();
            result[2] = v1;
            result[3] = v5;
          }

          else
          {

            return 0;
          }

          return result;
        }

        if (v2)
        {
          Node.int64Value.getter();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE173E8, &unk_1C0970D70);
      }

      if (swift_dynamicCast())
      {
        v6 = v7;
      }

      else
      {
        v6 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18E90, &qword_1C0981E80);
      result = swift_allocObject();
      result[2] = v1;
      result[3] = v6;
    }
  }

  return result;
}

void *sub_1C060CC84(void *result)
{
  if (result)
  {
    result = sub_1C0518574();
    if (result)
    {
      v1 = result;
      v2 = result[4];
      v3 = type metadata accessor for UsoEntity_common_Religion();
      if (v3 == MEMORY[0x1E69E6158])
      {
        if (v2)
        {

          sub_1C0519574();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90);
      }

      else
      {
        if (v3 != MEMORY[0x1E69E7360])
        {

          v5 = sub_1C0605A38(v4, type metadata accessor for UsoEntity_common_Religion, sub_1C057FF60);

          if (v5)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18E70, &qword_1C0981E60);
            result = swift_allocObject();
            result[2] = v1;
            result[3] = v5;
          }

          else
          {

            return 0;
          }

          return result;
        }

        if (v2)
        {
          Node.int64Value.getter();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE173E8, &unk_1C0970D70);
      }

      if (swift_dynamicCast())
      {
        v6 = v7;
      }

      else
      {
        v6 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18E70, &qword_1C0981E60);
      result = swift_allocObject();
      result[2] = v1;
      result[3] = v6;
    }
  }

  return result;
}

void *sub_1C060CE54(void *result)
{
  if (result)
  {
    result = sub_1C0518574();
    if (result)
    {
      v1 = result;
      v2 = result[4];
      v3 = type metadata accessor for UsoEntity_common_Age();
      if (v3 == MEMORY[0x1E69E6158])
      {
        if (v2)
        {

          sub_1C0519574();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90);
      }

      else
      {
        if (v3 != MEMORY[0x1E69E7360])
        {

          v5 = sub_1C0605A38(v4, type metadata accessor for UsoEntity_common_Age, sub_1C057FF78);

          if (v5)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18E60, &qword_1C0981E50);
            result = swift_allocObject();
            result[2] = v1;
            result[3] = v5;
          }

          else
          {

            return 0;
          }

          return result;
        }

        if (v2)
        {
          Node.int64Value.getter();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE173E8, &unk_1C0970D70);
      }

      if (swift_dynamicCast())
      {
        v6 = v7;
      }

      else
      {
        v6 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18E60, &qword_1C0981E50);
      result = swift_allocObject();
      result[2] = v1;
      result[3] = v6;
    }
  }

  return result;
}

void *sub_1C060D024(void *result)
{
  if (result)
  {
    result = sub_1C0518574();
    if (result)
    {
      v1 = result;
      v2 = result[4];
      v3 = type metadata accessor for UsoEntity_common_SiriContent();
      if (v3 == MEMORY[0x1E69E6158])
      {
        if (v2)
        {

          sub_1C0519574();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90);
      }

      else
      {
        if (v3 != MEMORY[0x1E69E7360])
        {

          v5 = sub_1C0605A38(v4, type metadata accessor for UsoEntity_common_SiriContent, sub_1C057FF90);

          if (v5)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18E58, &qword_1C0981E48);
            result = swift_allocObject();
            result[2] = v1;
            result[3] = v5;
          }

          else
          {

            return 0;
          }

          return result;
        }

        if (v2)
        {
          Node.int64Value.getter();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE173E8, &unk_1C0970D70);
      }

      if (swift_dynamicCast())
      {
        v6 = v7;
      }

      else
      {
        v6 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18E58, &qword_1C0981E48);
      result = swift_allocObject();
      result[2] = v1;
      result[3] = v6;
    }
  }

  return result;
}

void *sub_1C060D1F4(void *result)
{
  if (result)
  {
    result = sub_1C0518574();
    if (result)
    {
      v1 = result;
      v2 = result[4];
      v3 = type metadata accessor for UsoEntity_common_SiriContentType();
      if (v3 == MEMORY[0x1E69E6158])
      {
        if (v2)
        {

          sub_1C0519574();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90);
      }

      else
      {
        if (v3 != MEMORY[0x1E69E7360])
        {

          v5 = sub_1C0605A38(v4, type metadata accessor for UsoEntity_common_SiriContentType, sub_1C057FFA8);

          if (v5)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18E50, &qword_1C0981E40);
            result = swift_allocObject();
            result[2] = v1;
            result[3] = v5;
          }

          else
          {

            return 0;
          }

          return result;
        }

        if (v2)
        {
          Node.int64Value.getter();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE173E8, &unk_1C0970D70);
      }

      if (swift_dynamicCast())
      {
        v6 = v7;
      }

      else
      {
        v6 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18E50, &qword_1C0981E40);
      result = swift_allocObject();
      result[2] = v1;
      result[3] = v6;
    }
  }

  return result;
}

void *sub_1C060D3C4(void *result)
{
  if (result)
  {
    result = sub_1C0518574();
    if (result)
    {
      v1 = result;
      v2 = result[4];
      v3 = type metadata accessor for UsoEntity_common_MonthOfYear();
      if (v3 == MEMORY[0x1E69E6158])
      {
        if (v2)
        {

          sub_1C0519574();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90);
      }

      else
      {
        if (v3 != MEMORY[0x1E69E7360])
        {

          v5 = sub_1C0605A38(v4, type metadata accessor for UsoEntity_common_MonthOfYear, sub_1C057FFC0);

          if (v5)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18E48, &qword_1C0981E38);
            result = swift_allocObject();
            result[2] = v1;
            result[3] = v5;
          }

          else
          {

            return 0;
          }

          return result;
        }

        if (v2)
        {
          Node.int64Value.getter();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE173E8, &unk_1C0970D70);
      }

      if (swift_dynamicCast())
      {
        v6 = v7;
      }

      else
      {
        v6 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18E48, &qword_1C0981E38);
      result = swift_allocObject();
      result[2] = v1;
      result[3] = v6;
    }
  }

  return result;
}

void *sub_1C060D594(void *result)
{
  if (result)
  {
    result = sub_1C0518574();
    if (result)
    {
      v1 = result;
      v2 = result[4];
      v3 = type metadata accessor for UsoEntity_common_Integer();
      if (v3 == MEMORY[0x1E69E6158])
      {
        if (v2)
        {

          sub_1C0519574();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90);
      }

      else
      {
        if (v3 != MEMORY[0x1E69E7360])
        {

          v5 = sub_1C0605A38(v4, type metadata accessor for UsoEntity_common_Integer, sub_1C057FAE0);

          if (v5)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18E40, &qword_1C0981E30);
            result = swift_allocObject();
            result[2] = v1;
            result[3] = v5;
          }

          else
          {

            return 0;
          }

          return result;
        }

        if (v2)
        {
          Node.int64Value.getter();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE173E8, &unk_1C0970D70);
      }

      if (swift_dynamicCast())
      {
        v6 = v7;
      }

      else
      {
        v6 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18E40, &qword_1C0981E30);
      result = swift_allocObject();
      result[2] = v1;
      result[3] = v6;
    }
  }

  return result;
}

void *sub_1C060D764(void *result)
{
  if (result)
  {
    result = sub_1C0518574();
    if (result)
    {
      v1 = result;
      v2 = result[4];
      v3 = type metadata accessor for UsoEntity_common_PhoneNumber();
      if (v3 == MEMORY[0x1E69E6158])
      {
        if (v2)
        {

          sub_1C0519574();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90);
      }

      else
      {
        if (v3 != MEMORY[0x1E69E7360])
        {

          v5 = sub_1C0605A38(v4, type metadata accessor for UsoEntity_common_PhoneNumber, sub_1C057FFD8);

          if (v5)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18E38, &qword_1C0981E28);
            result = swift_allocObject();
            result[2] = v1;
            result[3] = v5;
          }

          else
          {

            return 0;
          }

          return result;
        }

        if (v2)
        {
          Node.int64Value.getter();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE173E8, &unk_1C0970D70);
      }

      if (swift_dynamicCast())
      {
        v6 = v7;
      }

      else
      {
        v6 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18E38, &qword_1C0981E28);
      result = swift_allocObject();
      result[2] = v1;
      result[3] = v6;
    }
  }

  return result;
}

void *sub_1C060D934(void *result)
{
  if (result)
  {
    result = sub_1C0518574();
    if (result)
    {
      v1 = result;
      v2 = result[4];
      v3 = type metadata accessor for UsoEntity_common_Clock();
      if (v3 == MEMORY[0x1E69E6158])
      {
        if (v2)
        {

          sub_1C0519574();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90);
      }

      else
      {
        if (v3 != MEMORY[0x1E69E7360])
        {

          v5 = sub_1C0605A38(v4, type metadata accessor for UsoEntity_common_Clock, sub_1C057FFF0);

          if (v5)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18E30, &qword_1C0981E20);
            result = swift_allocObject();
            result[2] = v1;
            result[3] = v5;
          }

          else
          {

            return 0;
          }

          return result;
        }

        if (v2)
        {
          Node.int64Value.getter();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE173E8, &unk_1C0970D70);
      }

      if (swift_dynamicCast())
      {
        v6 = v7;
      }

      else
      {
        v6 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18E30, &qword_1C0981E20);
      result = swift_allocObject();
      result[2] = v1;
      result[3] = v6;
    }
  }

  return result;
}

void *sub_1C060DB04(void *result)
{
  if (result)
  {
    result = sub_1C0518574();
    if (result)
    {
      v1 = result;
      v2 = result[4];
      v3 = type metadata accessor for UsoEntity_appleMessage_MessageAttribute();
      if (v3 == MEMORY[0x1E69E6158])
      {
        if (v2)
        {

          sub_1C0519574();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90);
      }

      else
      {
        if (v3 != MEMORY[0x1E69E7360])
        {

          v5 = sub_1C0605A38(v4, type metadata accessor for UsoEntity_appleMessage_MessageAttribute, sub_1C0580008);

          if (v5)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18E28, &qword_1C0981E18);
            result = swift_allocObject();
            result[2] = v1;
            result[3] = v5;
          }

          else
          {

            return 0;
          }

          return result;
        }

        if (v2)
        {
          Node.int64Value.getter();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE173E8, &unk_1C0970D70);
      }

      if (swift_dynamicCast())
      {
        v6 = v7;
      }

      else
      {
        v6 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18E28, &qword_1C0981E18);
      result = swift_allocObject();
      result[2] = v1;
      result[3] = v6;
    }
  }

  return result;
}

void *sub_1C060DCD4(void *result)
{
  if (result)
  {
    result = sub_1C0518574();
    if (result)
    {
      v1 = result;
      v2 = result[4];
      v3 = type metadata accessor for UsoEntity_common_NoteFolder();
      if (v3 == MEMORY[0x1E69E6158])
      {
        if (v2)
        {

          sub_1C0519574();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90);
      }

      else
      {
        if (v3 != MEMORY[0x1E69E7360])
        {

          v5 = sub_1C0605A38(v4, type metadata accessor for UsoEntity_common_NoteFolder, sub_1C0580020);

          if (v5)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18E20, &qword_1C0981E10);
            result = swift_allocObject();
            result[2] = v1;
            result[3] = v5;
          }

          else
          {

            return 0;
          }

          return result;
        }

        if (v2)
        {
          Node.int64Value.getter();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE173E8, &unk_1C0970D70);
      }

      if (swift_dynamicCast())
      {
        v6 = v7;
      }

      else
      {
        v6 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18E20, &qword_1C0981E10);
      result = swift_allocObject();
      result[2] = v1;
      result[3] = v6;
    }
  }

  return result;
}

void *sub_1C060DEA4(void *result)
{
  if (result)
  {
    result = sub_1C0518574();
    if (result)
    {
      v1 = result;
      v2 = result[4];
      v3 = type metadata accessor for UsoEntity_commonAlarm_AlarmAttribute();
      if (v3 == MEMORY[0x1E69E6158])
      {
        if (v2)
        {

          sub_1C0519574();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90);
      }

      else
      {
        if (v3 != MEMORY[0x1E69E7360])
        {

          v5 = sub_1C0605A38(v4, type metadata accessor for UsoEntity_commonAlarm_AlarmAttribute, sub_1C0580038);

          if (v5)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18E10, &qword_1C0981E00);
            result = swift_allocObject();
            result[2] = v1;
            result[3] = v5;
          }

          else
          {

            return 0;
          }

          return result;
        }

        if (v2)
        {
          Node.int64Value.getter();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE173E8, &unk_1C0970D70);
      }

      if (swift_dynamicCast())
      {
        v6 = v7;
      }

      else
      {
        v6 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18E10, &qword_1C0981E00);
      result = swift_allocObject();
      result[2] = v1;
      result[3] = v6;
    }
  }

  return result;
}

void *sub_1C060E074(void *result)
{
  if (result)
  {
    result = sub_1C0518574();
    if (result)
    {
      v1 = result;
      v2 = result[4];
      v3 = type metadata accessor for UsoEntity_common_SortDirection();
      if (v3 == MEMORY[0x1E69E6158])
      {
        if (v2)
        {

          sub_1C0519574();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90);
      }

      else
      {
        if (v3 != MEMORY[0x1E69E7360])
        {

          v5 = sub_1C0605A38(v4, type metadata accessor for UsoEntity_common_SortDirection, sub_1C0580050);

          if (v5)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18E08, &qword_1C0981DF8);
            result = swift_allocObject();
            result[2] = v1;
            result[3] = v5;
          }

          else
          {

            return 0;
          }

          return result;
        }

        if (v2)
        {
          Node.int64Value.getter();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE173E8, &unk_1C0970D70);
      }

      if (swift_dynamicCast())
      {
        v6 = v7;
      }

      else
      {
        v6 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18E08, &qword_1C0981DF8);
      result = swift_allocObject();
      result[2] = v1;
      result[3] = v6;
    }
  }

  return result;
}

void *sub_1C060E244(void *result)
{
  if (result)
  {
    result = sub_1C0518574();
    if (result)
    {
      v1 = result;
      v2 = result[4];
      v3 = type metadata accessor for UsoEntity_common_SortOrder();
      if (v3 == MEMORY[0x1E69E6158])
      {
        if (v2)
        {

          sub_1C0519574();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90);
      }

      else
      {
        if (v3 != MEMORY[0x1E69E7360])
        {

          v5 = sub_1C0605A38(v4, type metadata accessor for UsoEntity_common_SortOrder, sub_1C0580068);

          if (v5)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18E00, &qword_1C0981DF0);
            result = swift_allocObject();
            result[2] = v1;
            result[3] = v5;
          }

          else
          {

            return 0;
          }

          return result;
        }

        if (v2)
        {
          Node.int64Value.getter();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE173E8, &unk_1C0970D70);
      }

      if (swift_dynamicCast())
      {
        v6 = v7;
      }

      else
      {
        v6 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18E00, &qword_1C0981DF0);
      result = swift_allocObject();
      result[2] = v1;
      result[3] = v6;
    }
  }

  return result;
}

void *sub_1C060E414(void *result)
{
  if (result)
  {
    result = sub_1C0518574();
    if (result)
    {
      v1 = result;
      v2 = result[4];
      v3 = type metadata accessor for UsoEntity_common_SortValue();
      if (v3 == MEMORY[0x1E69E6158])
      {
        if (v2)
        {

          sub_1C0519574();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90);
      }

      else
      {
        if (v3 != MEMORY[0x1E69E7360])
        {

          v5 = sub_1C0605A38(v4, type metadata accessor for UsoEntity_common_SortValue, sub_1C0580080);

          if (v5)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18DF8, &qword_1C0981DE8);
            result = swift_allocObject();
            result[2] = v1;
            result[3] = v5;
          }

          else
          {

            return 0;
          }

          return result;
        }

        if (v2)
        {
          Node.int64Value.getter();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE173E8, &unk_1C0970D70);
      }

      if (swift_dynamicCast())
      {
        v6 = v7;
      }

      else
      {
        v6 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18DF8, &qword_1C0981DE8);
      result = swift_allocObject();
      result[2] = v1;
      result[3] = v6;
    }
  }

  return result;
}

void *sub_1C060E5E4(void *result)
{
  if (result)
  {
    result = sub_1C0518574();
    if (result)
    {
      v1 = result;
      v2 = result[4];
      v3 = type metadata accessor for UsoEntity_commonContact_ContactAttribute();
      if (v3 == MEMORY[0x1E69E6158])
      {
        if (v2)
        {

          sub_1C0519574();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90);
      }

      else
      {
        if (v3 != MEMORY[0x1E69E7360])
        {

          v5 = sub_1C0605A38(v4, type metadata accessor for UsoEntity_commonContact_ContactAttribute, sub_1C0580098);

          if (v5)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18DF0, &qword_1C0981DE0);
            result = swift_allocObject();
            result[2] = v1;
            result[3] = v5;
          }

          else
          {

            return 0;
          }

          return result;
        }

        if (v2)
        {
          Node.int64Value.getter();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE173E8, &unk_1C0970D70);
      }

      if (swift_dynamicCast())
      {
        v6 = v7;
      }

      else
      {
        v6 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18DF0, &qword_1C0981DE0);
      result = swift_allocObject();
      result[2] = v1;
      result[3] = v6;
    }
  }

  return result;
}

void *sub_1C060E7B4(void *result)
{
  if (result)
  {
    result = sub_1C0518574();
    if (result)
    {
      v1 = result;
      v2 = result[4];
      v3 = type metadata accessor for UsoEntity_common_UserEntityType();
      if (v3 == MEMORY[0x1E69E6158])
      {
        if (v2)
        {

          sub_1C0519574();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90);
      }

      else
      {
        if (v3 != MEMORY[0x1E69E7360])
        {

          v5 = sub_1C0605A38(v4, type metadata accessor for UsoEntity_common_UserEntityType, sub_1C05800B0);

          if (v5)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18DE8, &qword_1C0981DD8);
            result = swift_allocObject();
            result[2] = v1;
            result[3] = v5;
          }

          else
          {

            return 0;
          }

          return result;
        }

        if (v2)
        {
          Node.int64Value.getter();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE173E8, &unk_1C0970D70);
      }

      if (swift_dynamicCast())
      {
        v6 = v7;
      }

      else
      {
        v6 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18DE8, &qword_1C0981DD8);
      result = swift_allocObject();
      result[2] = v1;
      result[3] = v6;
    }
  }

  return result;
}

void *sub_1C060E984(void *result)
{
  if (result)
  {
    result = sub_1C0518574();
    if (result)
    {
      v1 = result;
      v2 = result[4];
      v3 = type metadata accessor for UsoEntity_common_Color();
      if (v3 == MEMORY[0x1E69E6158])
      {
        if (v2)
        {

          sub_1C0519574();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90);
      }

      else
      {
        if (v3 != MEMORY[0x1E69E7360])
        {

          v5 = sub_1C0605A38(v4, type metadata accessor for UsoEntity_common_Color, sub_1C05800C8);

          if (v5)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18DE0, &qword_1C0981DD0);
            result = swift_allocObject();
            result[2] = v1;
            result[3] = v5;
          }

          else
          {

            return 0;
          }

          return result;
        }

        if (v2)
        {
          Node.int64Value.getter();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE173E8, &unk_1C0970D70);
      }

      if (swift_dynamicCast())
      {
        v6 = v7;
      }

      else
      {
        v6 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18DE0, &qword_1C0981DD0);
      result = swift_allocObject();
      result[2] = v1;
      result[3] = v6;
    }
  }

  return result;
}

void *sub_1C060EB54(void *result)
{
  if (result)
  {
    result = sub_1C0518574();
    if (result)
    {
      v1 = result;
      v2 = result[4];
      v3 = type metadata accessor for UsoEntity_common_DeviceProperty();
      if (v3 == MEMORY[0x1E69E6158])
      {
        if (v2)
        {

          sub_1C0519574();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90);
      }

      else
      {
        if (v3 != MEMORY[0x1E69E7360])
        {

          v5 = sub_1C0605A38(v4, type metadata accessor for UsoEntity_common_DeviceProperty, sub_1C05800E0);

          if (v5)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18DD8, &qword_1C0981DC8);
            result = swift_allocObject();
            result[2] = v1;
            result[3] = v5;
          }

          else
          {

            return 0;
          }

          return result;
        }

        if (v2)
        {
          Node.int64Value.getter();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE173E8, &unk_1C0970D70);
      }

      if (swift_dynamicCast())
      {
        v6 = v7;
      }

      else
      {
        v6 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18DD8, &qword_1C0981DC8);
      result = swift_allocObject();
      result[2] = v1;
      result[3] = v6;
    }
  }

  return result;
}

void *sub_1C060ED24(void *result)
{
  if (result)
  {
    result = sub_1C0518574();
    if (result)
    {
      v1 = result;
      v2 = result[4];
      v3 = type metadata accessor for UsoEntity_common_Size();
      if (v3 == MEMORY[0x1E69E6158])
      {
        if (v2)
        {

          sub_1C0519574();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90);
      }

      else
      {
        if (v3 != MEMORY[0x1E69E7360])
        {

          v5 = sub_1C0605A38(v4, type metadata accessor for UsoEntity_common_Size, sub_1C05800F8);

          if (v5)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18DD0, &qword_1C0981DC0);
            result = swift_allocObject();
            result[2] = v1;
            result[3] = v5;
          }

          else
          {

            return 0;
          }

          return result;
        }

        if (v2)
        {
          Node.int64Value.getter();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE173E8, &unk_1C0970D70);
      }

      if (swift_dynamicCast())
      {
        v6 = v7;
      }

      else
      {
        v6 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18DD0, &qword_1C0981DC0);
      result = swift_allocObject();
      result[2] = v1;
      result[3] = v6;
    }
  }

  return result;
}

void *sub_1C060EEF4(void *result)
{
  if (result)
  {
    result = sub_1C0518574();
    if (result)
    {
      v1 = result;
      v2 = result[4];
      v3 = type metadata accessor for UsoEntity_common_MeasurementUnitType();
      if (v3 == MEMORY[0x1E69E6158])
      {
        if (v2)
        {

          sub_1C0519574();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90);
      }

      else
      {
        if (v3 != MEMORY[0x1E69E7360])
        {

          v5 = sub_1C0605A38(v4, type metadata accessor for UsoEntity_common_MeasurementUnitType, sub_1C0580110);

          if (v5)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18DC0, &qword_1C0981DB0);
            result = swift_allocObject();
            result[2] = v1;
            result[3] = v5;
          }

          else
          {

            return 0;
          }

          return result;
        }

        if (v2)
        {
          Node.int64Value.getter();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE173E8, &unk_1C0970D70);
      }

      if (swift_dynamicCast())
      {
        v6 = v7;
      }

      else
      {
        v6 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18DC0, &qword_1C0981DB0);
      result = swift_allocObject();
      result[2] = v1;
      result[3] = v6;
    }
  }

  return result;
}

void *sub_1C060F0C4(void *result)
{
  if (result)
  {
    result = sub_1C0518574();
    if (result)
    {
      v1 = result;
      v2 = result[4];
      v3 = type metadata accessor for UsoEntity_common_ReminderList();
      if (v3 == MEMORY[0x1E69E6158])
      {
        if (v2)
        {

          sub_1C0519574();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90);
      }

      else
      {
        if (v3 != MEMORY[0x1E69E7360])
        {

          v5 = sub_1C0605A38(v4, type metadata accessor for UsoEntity_common_ReminderList, sub_1C0580128);

          if (v5)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18DA0, &qword_1C0981D90);
            result = swift_allocObject();
            result[2] = v1;
            result[3] = v5;
          }

          else
          {

            return 0;
          }

          return result;
        }

        if (v2)
        {
          Node.int64Value.getter();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE173E8, &unk_1C0970D70);
      }

      if (swift_dynamicCast())
      {
        v6 = v7;
      }

      else
      {
        v6 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18DA0, &qword_1C0981D90);
      result = swift_allocObject();
      result[2] = v1;
      result[3] = v6;
    }
  }

  return result;
}

void *sub_1C060F294(void *result)
{
  if (result)
  {
    result = sub_1C0518574();
    if (result)
    {
      v1 = result;
      v2 = result[4];
      v3 = type metadata accessor for UsoEntity_common_ReminderListType();
      if (v3 == MEMORY[0x1E69E6158])
      {
        if (v2)
        {

          sub_1C0519574();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90);
      }

      else
      {
        if (v3 != MEMORY[0x1E69E7360])
        {

          v5 = sub_1C0605A38(v4, type metadata accessor for UsoEntity_common_ReminderListType, sub_1C0580140);

          if (v5)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18D98, &qword_1C0981D88);
            result = swift_allocObject();
            result[2] = v1;
            result[3] = v5;
          }

          else
          {

            return 0;
          }

          return result;
        }

        if (v2)
        {
          Node.int64Value.getter();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE173E8, &unk_1C0970D70);
      }

      if (swift_dynamicCast())
      {
        v6 = v7;
      }

      else
      {
        v6 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18D98, &qword_1C0981D88);
      result = swift_allocObject();
      result[2] = v1;
      result[3] = v6;
    }
  }

  return result;
}

void *sub_1C060F464(void *result)
{
  if (result)
  {
    result = sub_1C0518574();
    if (result)
    {
      v1 = result;
      v2 = result[4];
      v3 = type metadata accessor for UsoEntity_commonStock_StockType();
      if (v3 == MEMORY[0x1E69E6158])
      {
        if (v2)
        {

          sub_1C0519574();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90);
      }

      else
      {
        if (v3 != MEMORY[0x1E69E7360])
        {

          v5 = sub_1C0605A38(v4, type metadata accessor for UsoEntity_commonStock_StockType, sub_1C0580158);

          if (v5)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18D90, &qword_1C0981D80);
            result = swift_allocObject();
            result[2] = v1;
            result[3] = v5;
          }

          else
          {

            return 0;
          }

          return result;
        }

        if (v2)
        {
          Node.int64Value.getter();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE173E8, &unk_1C0970D70);
      }

      if (swift_dynamicCast())
      {
        v6 = v7;
      }

      else
      {
        v6 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18D90, &qword_1C0981D80);
      result = swift_allocObject();
      result[2] = v1;
      result[3] = v6;
    }
  }

  return result;
}

void *sub_1C060F634(void *result)
{
  if (result)
  {
    result = sub_1C0518574();
    if (result)
    {
      v1 = result;
      v2 = result[4];
      v3 = type metadata accessor for UsoEntity_common_Stock();
      if (v3 == MEMORY[0x1E69E6158])
      {
        if (v2)
        {

          sub_1C0519574();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90);
      }

      else
      {
        if (v3 != MEMORY[0x1E69E7360])
        {

          v5 = sub_1C0605A38(v4, type metadata accessor for UsoEntity_common_Stock, sub_1C0580170);

          if (v5)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18D88, &qword_1C0981D78);
            result = swift_allocObject();
            result[2] = v1;
            result[3] = v5;
          }

          else
          {

            return 0;
          }

          return result;
        }

        if (v2)
        {
          Node.int64Value.getter();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE173E8, &unk_1C0970D70);
      }

      if (swift_dynamicCast())
      {
        v6 = v7;
      }

      else
      {
        v6 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18D88, &qword_1C0981D78);
      result = swift_allocObject();
      result[2] = v1;
      result[3] = v6;
    }
  }

  return result;
}

void *sub_1C060F804(void *result)
{
  if (result)
  {
    result = sub_1C0518574();
    if (result)
    {
      v1 = result;
      v2 = result[4];
      v3 = type metadata accessor for UsoEntity_common_AppSection();
      if (v3 == MEMORY[0x1E69E6158])
      {
        if (v2)
        {

          sub_1C0519574();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90);
      }

      else
      {
        if (v3 != MEMORY[0x1E69E7360])
        {

          v5 = sub_1C0605A38(v4, type metadata accessor for UsoEntity_common_AppSection, sub_1C0580188);

          if (v5)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18D78, &qword_1C0981D68);
            result = swift_allocObject();
            result[2] = v1;
            result[3] = v5;
          }

          else
          {

            return 0;
          }

          return result;
        }

        if (v2)
        {
          Node.int64Value.getter();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE173E8, &unk_1C0970D70);
      }

      if (swift_dynamicCast())
      {
        v6 = v7;
      }

      else
      {
        v6 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18D78, &qword_1C0981D68);
      result = swift_allocObject();
      result[2] = v1;
      result[3] = v6;
    }
  }

  return result;
}

void *sub_1C060F9D4(void *result)
{
  if (result)
  {
    result = sub_1C0518574();
    if (result)
    {
      v1 = result;
      v2 = result[4];
      v3 = type metadata accessor for UsoEntity_common_PhoneCall();
      if (v3 == MEMORY[0x1E69E6158])
      {
        if (v2)
        {

          sub_1C0519574();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90);
      }

      else
      {
        if (v3 != MEMORY[0x1E69E7360])
        {

          v5 = sub_1C0605A38(v4, type metadata accessor for UsoEntity_common_PhoneCall, sub_1C05801A0);

          if (v5)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18D70, &qword_1C0981D60);
            result = swift_allocObject();
            result[2] = v1;
            result[3] = v5;
          }

          else
          {

            return 0;
          }

          return result;
        }

        if (v2)
        {
          Node.int64Value.getter();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE173E8, &unk_1C0970D70);
      }

      if (swift_dynamicCast())
      {
        v6 = v7;
      }

      else
      {
        v6 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18D70, &qword_1C0981D60);
      result = swift_allocObject();
      result[2] = v1;
      result[3] = v6;
    }
  }

  return result;
}

void *sub_1C060FBA4(void *result)
{
  if (result)
  {
    result = sub_1C0518574();
    if (result)
    {
      v1 = result;
      v2 = result[4];
      v3 = type metadata accessor for UsoEntity_common_Language();
      if (v3 == MEMORY[0x1E69E6158])
      {
        if (v2)
        {

          sub_1C0519574();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90);
      }

      else
      {
        if (v3 != MEMORY[0x1E69E7360])
        {

          v5 = sub_1C0605A38(v4, type metadata accessor for UsoEntity_common_Language, sub_1C05801B8);

          if (v5)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18D68, &qword_1C0981D58);
            result = swift_allocObject();
            result[2] = v1;
            result[3] = v5;
          }

          else
          {

            return 0;
          }

          return result;
        }

        if (v2)
        {
          Node.int64Value.getter();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE173E8, &unk_1C0970D70);
      }

      if (swift_dynamicCast())
      {
        v6 = v7;
      }

      else
      {
        v6 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18D68, &qword_1C0981D58);
      result = swift_allocObject();
      result[2] = v1;
      result[3] = v6;
    }
  }

  return result;
}

void *sub_1C060FD74(void *result)
{
  if (result)
  {
    result = sub_1C0518574();
    if (result)
    {
      v1 = result;
      v2 = result[4];
      v3 = type metadata accessor for UsoEntity_common_Locale();
      if (v3 == MEMORY[0x1E69E6158])
      {
        if (v2)
        {

          sub_1C0519574();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90);
      }

      else
      {
        if (v3 != MEMORY[0x1E69E7360])
        {

          v5 = sub_1C0605A38(v4, type metadata accessor for UsoEntity_common_Locale, sub_1C05801D0);

          if (v5)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18D60, &qword_1C0981D50);
            result = swift_allocObject();
            result[2] = v1;
            result[3] = v5;
          }

          else
          {

            return 0;
          }

          return result;
        }

        if (v2)
        {
          Node.int64Value.getter();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE173E8, &unk_1C0970D70);
      }

      if (swift_dynamicCast())
      {
        v6 = v7;
      }

      else
      {
        v6 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18D60, &qword_1C0981D50);
      result = swift_allocObject();
      result[2] = v1;
      result[3] = v6;
    }
  }

  return result;
}

void *sub_1C060FF44(void *result)
{
  if (result)
  {
    result = sub_1C0518574();
    if (result)
    {
      v1 = result;
      v2 = result[4];
      v3 = type metadata accessor for UsoEntity_common_LocalisedString();
      if (v3 == MEMORY[0x1E69E6158])
      {
        if (v2)
        {

          sub_1C0519574();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90);
      }

      else
      {
        if (v3 != MEMORY[0x1E69E7360])
        {

          v5 = sub_1C0605A38(v4, type metadata accessor for UsoEntity_common_LocalisedString, sub_1C05801E8);

          if (v5)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18D58, &qword_1C0981D48);
            result = swift_allocObject();
            result[2] = v1;
            result[3] = v5;
          }

          else
          {

            return 0;
          }

          return result;
        }

        if (v2)
        {
          Node.int64Value.getter();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE173E8, &unk_1C0970D70);
      }

      if (swift_dynamicCast())
      {
        v6 = v7;
      }

      else
      {
        v6 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18D58, &qword_1C0981D48);
      result = swift_allocObject();
      result[2] = v1;
      result[3] = v6;
    }
  }

  return result;
}

void *sub_1C0610114(void *result)
{
  if (result)
  {
    result = sub_1C0518574();
    if (result)
    {
      v1 = result;
      v2 = result[4];
      v3 = type metadata accessor for UsoEntity_common_ProductCategory();
      if (v3 == MEMORY[0x1E69E6158])
      {
        if (v2)
        {

          sub_1C0519574();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90);
      }

      else
      {
        if (v3 != MEMORY[0x1E69E7360])
        {

          v5 = sub_1C0605A38(v4, type metadata accessor for UsoEntity_common_ProductCategory, sub_1C0580200);

          if (v5)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18D50, &qword_1C0981D40);
            result = swift_allocObject();
            result[2] = v1;
            result[3] = v5;
          }

          else
          {

            return 0;
          }

          return result;
        }

        if (v2)
        {
          Node.int64Value.getter();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE173E8, &unk_1C0970D70);
      }

      if (swift_dynamicCast())
      {
        v6 = v7;
      }

      else
      {
        v6 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18D50, &qword_1C0981D40);
      result = swift_allocObject();
      result[2] = v1;
      result[3] = v6;
    }
  }

  return result;
}

void *sub_1C06102E4(void *result)
{
  if (result)
  {
    result = sub_1C0518574();
    if (result)
    {
      v1 = result;
      v2 = result[4];
      v3 = type metadata accessor for UsoEntity_common_NumberSign();
      if (v3 == MEMORY[0x1E69E6158])
      {
        if (v2)
        {

          sub_1C0519574();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90);
      }

      else
      {
        if (v3 != MEMORY[0x1E69E7360])
        {

          v5 = sub_1C0605A38(v4, type metadata accessor for UsoEntity_common_NumberSign, sub_1C0580218);

          if (v5)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18D48, &qword_1C0981D38);
            result = swift_allocObject();
            result[2] = v1;
            result[3] = v5;
          }

          else
          {

            return 0;
          }

          return result;
        }

        if (v2)
        {
          Node.int64Value.getter();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE173E8, &unk_1C0970D70);
      }

      if (swift_dynamicCast())
      {
        v6 = v7;
      }

      else
      {
        v6 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18D48, &qword_1C0981D38);
      result = swift_allocObject();
      result[2] = v1;
      result[3] = v6;
    }
  }

  return result;
}

void *sub_1C06104B4(void *result)
{
  if (result)
  {
    result = sub_1C0518574();
    if (result)
    {
      v1 = result;
      v2 = result[4];
      v3 = type metadata accessor for UsoEntity_common_Utilities();
      if (v3 == MEMORY[0x1E69E6158])
      {
        if (v2)
        {

          sub_1C0519574();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90);
      }

      else
      {
        if (v3 != MEMORY[0x1E69E7360])
        {

          v5 = sub_1C0605A38(v4, type metadata accessor for UsoEntity_common_Utilities, sub_1C0580230);

          if (v5)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18D40, &qword_1C0981D30);
            result = swift_allocObject();
            result[2] = v1;
            result[3] = v5;
          }

          else
          {

            return 0;
          }

          return result;
        }

        if (v2)
        {
          Node.int64Value.getter();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE173E8, &unk_1C0970D70);
      }

      if (swift_dynamicCast())
      {
        v6 = v7;
      }

      else
      {
        v6 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18D40, &qword_1C0981D30);
      result = swift_allocObject();
      result[2] = v1;
      result[3] = v6;
    }
  }

  return result;
}

void *sub_1C0610684(void *result)
{
  if (result)
  {
    result = sub_1C0518574();
    if (result)
    {
      v1 = result;
      v2 = result[4];
      v3 = type metadata accessor for UsoEntity_common_PersonName();
      if (v3 == MEMORY[0x1E69E6158])
      {
        if (v2)
        {

          sub_1C0519574();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90);
      }

      else
      {
        if (v3 != MEMORY[0x1E69E7360])
        {

          v5 = sub_1C0605A38(v4, type metadata accessor for UsoEntity_common_PersonName, sub_1C0580248);

          if (v5)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18D30, &qword_1C0981D20);
            result = swift_allocObject();
            result[2] = v1;
            result[3] = v5;
          }

          else
          {

            return 0;
          }

          return result;
        }

        if (v2)
        {
          Node.int64Value.getter();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE173E8, &unk_1C0970D70);
      }

      if (swift_dynamicCast())
      {
        v6 = v7;
      }

      else
      {
        v6 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18D30, &qword_1C0981D20);
      result = swift_allocObject();
      result[2] = v1;
      result[3] = v6;
    }
  }

  return result;
}

void *sub_1C0610854(void *result)
{
  if (result)
  {
    result = sub_1C0518574();
    if (result)
    {
      v1 = result;
      v2 = result[4];
      v3 = type metadata accessor for UsoEntity_commonNotification_NotificationAttribute();
      if (v3 == MEMORY[0x1E69E6158])
      {
        if (v2)
        {

          sub_1C0519574();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90);
      }

      else
      {
        if (v3 != MEMORY[0x1E69E7360])
        {

          v5 = sub_1C0605A38(v4, type metadata accessor for UsoEntity_commonNotification_NotificationAttribute, sub_1C0580260);

          if (v5)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18D28, &qword_1C0981D18);
            result = swift_allocObject();
            result[2] = v1;
            result[3] = v5;
          }

          else
          {

            return 0;
          }

          return result;
        }

        if (v2)
        {
          Node.int64Value.getter();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE173E8, &unk_1C0970D70);
      }

      if (swift_dynamicCast())
      {
        v6 = v7;
      }

      else
      {
        v6 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18D28, &qword_1C0981D18);
      result = swift_allocObject();
      result[2] = v1;
      result[3] = v6;
    }
  }

  return result;
}

void *sub_1C0610A24(void *result)
{
  if (result)
  {
    result = sub_1C0518574();
    if (result)
    {
      v1 = result;
      v2 = result[4];
      v3 = type metadata accessor for UsoEntity_commonPhoneCall_PhoneCallAttribute();
      if (v3 == MEMORY[0x1E69E6158])
      {
        if (v2)
        {

          sub_1C0519574();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90);
      }

      else
      {
        if (v3 != MEMORY[0x1E69E7360])
        {

          v5 = sub_1C0605A38(v4, type metadata accessor for UsoEntity_commonPhoneCall_PhoneCallAttribute, sub_1C0580278);

          if (v5)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18D20, &qword_1C0981D10);
            result = swift_allocObject();
            result[2] = v1;
            result[3] = v5;
          }

          else
          {

            return 0;
          }

          return result;
        }

        if (v2)
        {
          Node.int64Value.getter();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE173E8, &unk_1C0970D70);
      }

      if (swift_dynamicCast())
      {
        v6 = v7;
      }

      else
      {
        v6 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18D20, &qword_1C0981D10);
      result = swift_allocObject();
      result[2] = v1;
      result[3] = v6;
    }
  }

  return result;
}

void *sub_1C0610BF4(void *result)
{
  if (result)
  {
    result = sub_1C0518574();
    if (result)
    {
      v1 = result;
      v2 = result[4];
      v3 = type metadata accessor for UsoEntity_common_ActivationValue();
      if (v3 == MEMORY[0x1E69E6158])
      {
        if (v2)
        {

          sub_1C0519574();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90);
      }

      else
      {
        if (v3 != MEMORY[0x1E69E7360])
        {

          v5 = sub_1C0605A38(v4, type metadata accessor for UsoEntity_common_ActivationValue, sub_1C0580290);

          if (v5)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18D18, &qword_1C0981D08);
            result = swift_allocObject();
            result[2] = v1;
            result[3] = v5;
          }

          else
          {

            return 0;
          }

          return result;
        }

        if (v2)
        {
          Node.int64Value.getter();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE173E8, &unk_1C0970D70);
      }

      if (swift_dynamicCast())
      {
        v6 = v7;
      }

      else
      {
        v6 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18D18, &qword_1C0981D08);
      result = swift_allocObject();
      result[2] = v1;
      result[3] = v6;
    }
  }

  return result;
}

void *sub_1C0610DC4(void *result)
{
  if (result)
  {
    result = sub_1C0518574();
    if (result)
    {
      v1 = result;
      v2 = result[4];
      v3 = type metadata accessor for UsoEntity_common_SettingValueType();
      if (v3 == MEMORY[0x1E69E6158])
      {
        if (v2)
        {

          sub_1C0519574();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90);
      }

      else
      {
        if (v3 != MEMORY[0x1E69E7360])
        {

          v5 = sub_1C0605A38(v4, type metadata accessor for UsoEntity_common_SettingValueType, sub_1C05802A8);

          if (v5)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18D10, &qword_1C0981D00);
            result = swift_allocObject();
            result[2] = v1;
            result[3] = v5;
          }

          else
          {

            return 0;
          }

          return result;
        }

        if (v2)
        {
          Node.int64Value.getter();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE173E8, &unk_1C0970D70);
      }

      if (swift_dynamicCast())
      {
        v6 = v7;
      }

      else
      {
        v6 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18D10, &qword_1C0981D00);
      result = swift_allocObject();
      result[2] = v1;
      result[3] = v6;
    }
  }

  return result;
}

void *sub_1C0610F94(void *result)
{
  if (result)
  {
    result = sub_1C0518574();
    if (result)
    {
      v1 = result;
      v2 = result[4];
      v3 = type metadata accessor for UsoEntity_common_SettingValue();
      if (v3 == MEMORY[0x1E69E6158])
      {
        if (v2)
        {

          sub_1C0519574();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90);
      }

      else
      {
        if (v3 != MEMORY[0x1E69E7360])
        {

          v5 = sub_1C0605A38(v4, type metadata accessor for UsoEntity_common_SettingValue, sub_1C05802C0);

          if (v5)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18D08, &qword_1C0981CF8);
            result = swift_allocObject();
            result[2] = v1;
            result[3] = v5;
          }

          else
          {

            return 0;
          }

          return result;
        }

        if (v2)
        {
          Node.int64Value.getter();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE173E8, &unk_1C0970D70);
      }

      if (swift_dynamicCast())
      {
        v6 = v7;
      }

      else
      {
        v6 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18D08, &qword_1C0981CF8);
      result = swift_allocObject();
      result[2] = v1;
      result[3] = v6;
    }
  }

  return result;
}

void *sub_1C0611164(void *result)
{
  if (result)
  {
    result = sub_1C0518574();
    if (result)
    {
      v1 = result;
      v2 = result[4];
      v3 = type metadata accessor for UsoEntity_common_PersonContact();
      if (v3 == MEMORY[0x1E69E6158])
      {
        if (v2)
        {

          sub_1C0519574();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90);
      }

      else
      {
        if (v3 != MEMORY[0x1E69E7360])
        {

          v5 = sub_1C0605A38(v4, type metadata accessor for UsoEntity_common_PersonContact, sub_1C05802D8);

          if (v5)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18D00, &qword_1C0981CF0);
            result = swift_allocObject();
            result[2] = v1;
            result[3] = v5;
          }

          else
          {

            return 0;
          }

          return result;
        }

        if (v2)
        {
          Node.int64Value.getter();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE173E8, &unk_1C0970D70);
      }

      if (swift_dynamicCast())
      {
        v6 = v7;
      }

      else
      {
        v6 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18D00, &qword_1C0981CF0);
      result = swift_allocObject();
      result[2] = v1;
      result[3] = v6;
    }
  }

  return result;
}

void *sub_1C0611334(void *result)
{
  if (result)
  {
    result = sub_1C0518574();
    if (result)
    {
      v1 = result;
      v2 = result[4];
      v3 = type metadata accessor for UsoEntity_common_PersonRole();
      if (v3 == MEMORY[0x1E69E6158])
      {
        if (v2)
        {

          sub_1C0519574();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90);
      }

      else
      {
        if (v3 != MEMORY[0x1E69E7360])
        {

          v5 = sub_1C0605A38(v4, type metadata accessor for UsoEntity_common_PersonRole, sub_1C05802F0);

          if (v5)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18CF8, &qword_1C0981CE8);
            result = swift_allocObject();
            result[2] = v1;
            result[3] = v5;
          }

          else
          {

            return 0;
          }

          return result;
        }

        if (v2)
        {
          Node.int64Value.getter();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE173E8, &unk_1C0970D70);
      }

      if (swift_dynamicCast())
      {
        v6 = v7;
      }

      else
      {
        v6 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18CF8, &qword_1C0981CE8);
      result = swift_allocObject();
      result[2] = v1;
      result[3] = v6;
    }
  }

  return result;
}

void *sub_1C0611504(void *result)
{
  if (result)
  {
    result = sub_1C0518574();
    if (result)
    {
      v1 = result;
      v2 = result[4];
      v3 = type metadata accessor for UsoEntity_common_SportsItem();
      if (v3 == MEMORY[0x1E69E6158])
      {
        if (v2)
        {

          sub_1C0519574();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90);
      }

      else
      {
        if (v3 != MEMORY[0x1E69E7360])
        {

          v5 = sub_1C0605A38(v4, type metadata accessor for UsoEntity_common_SportsItem, sub_1C0580308);

          if (v5)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18CE8, &qword_1C0981CD8);
            result = swift_allocObject();
            result[2] = v1;
            result[3] = v5;
          }

          else
          {

            return 0;
          }

          return result;
        }

        if (v2)
        {
          Node.int64Value.getter();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE173E8, &unk_1C0970D70);
      }

      if (swift_dynamicCast())
      {
        v6 = v7;
      }

      else
      {
        v6 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18CE8, &qword_1C0981CD8);
      result = swift_allocObject();
      result[2] = v1;
      result[3] = v6;
    }
  }

  return result;
}

void *sub_1C06116D4(void *result)
{
  if (result)
  {
    result = sub_1C0518574();
    if (result)
    {
      v1 = result;
      v2 = result[4];
      v3 = type metadata accessor for UsoEntity_common_SportsItemType();
      if (v3 == MEMORY[0x1E69E6158])
      {
        if (v2)
        {

          sub_1C0519574();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90);
      }

      else
      {
        if (v3 != MEMORY[0x1E69E7360])
        {

          v5 = sub_1C0605A38(v4, type metadata accessor for UsoEntity_common_SportsItemType, sub_1C0580320);

          if (v5)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18CE0, &qword_1C0981CD0);
            result = swift_allocObject();
            result[2] = v1;
            result[3] = v5;
          }

          else
          {

            return 0;
          }

          return result;
        }

        if (v2)
        {
          Node.int64Value.getter();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE173E8, &unk_1C0970D70);
      }

      if (swift_dynamicCast())
      {
        v6 = v7;
      }

      else
      {
        v6 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18CE0, &qword_1C0981CD0);
      result = swift_allocObject();
      result[2] = v1;
      result[3] = v6;
    }
  }

  return result;
}

void *sub_1C06118A4(void *result)
{
  if (result)
  {
    result = sub_1C0518574();
    if (result)
    {
      v1 = result;
      v2 = result[4];
      v3 = type metadata accessor for UsoEntity_common_JourneyType();
      if (v3 == MEMORY[0x1E69E6158])
      {
        if (v2)
        {

          sub_1C0519574();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90);
      }

      else
      {
        if (v3 != MEMORY[0x1E69E7360])
        {

          v5 = sub_1C0605A38(v4, type metadata accessor for UsoEntity_common_JourneyType, sub_1C0580338);

          if (v5)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18CD8, &qword_1C0981CC8);
            result = swift_allocObject();
            result[2] = v1;
            result[3] = v5;
          }

          else
          {

            return 0;
          }

          return result;
        }

        if (v2)
        {
          Node.int64Value.getter();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE173E8, &unk_1C0970D70);
      }

      if (swift_dynamicCast())
      {
        v6 = v7;
      }

      else
      {
        v6 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18CD8, &qword_1C0981CC8);
      result = swift_allocObject();
      result[2] = v1;
      result[3] = v6;
    }
  }

  return result;
}

void *sub_1C0611A74(void *result)
{
  if (result)
  {
    result = sub_1C0518574();
    if (result)
    {
      v1 = result;
      v2 = result[4];
      v3 = type metadata accessor for UsoEntity_common_Timer();
      if (v3 == MEMORY[0x1E69E6158])
      {
        if (v2)
        {

          sub_1C0519574();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90);
      }

      else
      {
        if (v3 != MEMORY[0x1E69E7360])
        {

          v5 = sub_1C0605A38(v4, type metadata accessor for UsoEntity_common_Timer, sub_1C0580350);

          if (v5)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18CD0, &qword_1C0981CC0);
            result = swift_allocObject();
            result[2] = v1;
            result[3] = v5;
          }

          else
          {

            return 0;
          }

          return result;
        }

        if (v2)
        {
          Node.int64Value.getter();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE173E8, &unk_1C0970D70);
      }

      if (swift_dynamicCast())
      {
        v6 = v7;
      }

      else
      {
        v6 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18CD0, &qword_1C0981CC0);
      result = swift_allocObject();
      result[2] = v1;
      result[3] = v6;
    }
  }

  return result;
}

void *sub_1C0611C44(void *result)
{
  if (result)
  {
    result = sub_1C0518574();
    if (result)
    {
      v1 = result;
      v2 = result[4];
      v3 = type metadata accessor for UsoEntity_common_WorkoutInstructor();
      if (v3 == MEMORY[0x1E69E6158])
      {
        if (v2)
        {

          sub_1C0519574();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90);
      }

      else
      {
        if (v3 != MEMORY[0x1E69E7360])
        {

          v5 = sub_1C0605A38(v4, type metadata accessor for UsoEntity_common_WorkoutInstructor, sub_1C0580368);

          if (v5)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18CC0, &qword_1C0981CB0);
            result = swift_allocObject();
            result[2] = v1;
            result[3] = v5;
          }

          else
          {

            return 0;
          }

          return result;
        }

        if (v2)
        {
          Node.int64Value.getter();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE173E8, &unk_1C0970D70);
      }

      if (swift_dynamicCast())
      {
        v6 = v7;
      }

      else
      {
        v6 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18CC0, &qword_1C0981CB0);
      result = swift_allocObject();
      result[2] = v1;
      result[3] = v6;
    }
  }

  return result;
}

void *sub_1C0611E14(void *result)
{
  if (result)
  {
    result = sub_1C0518574();
    if (result)
    {
      v1 = result;
      v2 = result[4];
      v3 = type metadata accessor for UsoEntity_common_Similarity();
      if (v3 == MEMORY[0x1E69E6158])
      {
        if (v2)
        {

          sub_1C0519574();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90);
      }

      else
      {
        if (v3 != MEMORY[0x1E69E7360])
        {

          v5 = sub_1C0605A38(v4, type metadata accessor for UsoEntity_common_Similarity, sub_1C0580380);

          if (v5)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18CB0, &qword_1C0981CA0);
            result = swift_allocObject();
            result[2] = v1;
            result[3] = v5;
          }

          else
          {

            return 0;
          }

          return result;
        }

        if (v2)
        {
          Node.int64Value.getter();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE173E8, &unk_1C0970D70);
      }

      if (swift_dynamicCast())
      {
        v6 = v7;
      }

      else
      {
        v6 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18CB0, &qword_1C0981CA0);
      result = swift_allocObject();
      result[2] = v1;
      result[3] = v6;
    }
  }

  return result;
}

void *sub_1C0611FE4(void *result)
{
  if (result)
  {
    result = sub_1C0518574();
    if (result)
    {
      v1 = result;
      v2 = result[4];
      v3 = type metadata accessor for UsoEntity_common_Reaction();
      if (v3 == MEMORY[0x1E69E6158])
      {
        if (v2)
        {

          sub_1C0519574();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90);
      }

      else
      {
        if (v3 != MEMORY[0x1E69E7360])
        {

          v5 = sub_1C0605A38(v4, type metadata accessor for UsoEntity_common_Reaction, sub_1C0580398);

          if (v5)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18CA8, &qword_1C0981C98);
            result = swift_allocObject();
            result[2] = v1;
            result[3] = v5;
          }

          else
          {

            return 0;
          }

          return result;
        }

        if (v2)
        {
          Node.int64Value.getter();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE173E8, &unk_1C0970D70);
      }

      if (swift_dynamicCast())
      {
        v6 = v7;
      }

      else
      {
        v6 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18CA8, &qword_1C0981C98);
      result = swift_allocObject();
      result[2] = v1;
      result[3] = v6;
    }
  }

  return result;
}

void *sub_1C06121B4(void *result)
{
  if (result)
  {
    result = sub_1C0518574();
    if (result)
    {
      v1 = result;
      v2 = result[4];
      v3 = type metadata accessor for UsoEntity_common_Message();
      if (v3 == MEMORY[0x1E69E6158])
      {
        if (v2)
        {

          sub_1C0519574();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90);
      }

      else
      {
        if (v3 != MEMORY[0x1E69E7360])
        {

          v5 = sub_1C0605A38(v4, type metadata accessor for UsoEntity_common_Message, sub_1C05803B0);

          if (v5)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18CA0, &qword_1C0981C90);
            result = swift_allocObject();
            result[2] = v1;
            result[3] = v5;
          }

          else
          {

            return 0;
          }

          return result;
        }

        if (v2)
        {
          Node.int64Value.getter();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE173E8, &unk_1C0970D70);
      }

      if (swift_dynamicCast())
      {
        v6 = v7;
      }

      else
      {
        v6 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18CA0, &qword_1C0981C90);
      result = swift_allocObject();
      result[2] = v1;
      result[3] = v6;
    }
  }

  return result;
}

void *sub_1C0612384(void *result)
{
  if (result)
  {
    result = sub_1C0518574();
    if (result)
    {
      v1 = result;
      v2 = result[4];
      v3 = type metadata accessor for UsoEntity_common_CrisisSupport();
      if (v3 == MEMORY[0x1E69E6158])
      {
        if (v2)
        {

          sub_1C0519574();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90);
      }

      else
      {
        if (v3 != MEMORY[0x1E69E7360])
        {

          v5 = sub_1C0605A38(v4, type metadata accessor for UsoEntity_common_CrisisSupport, sub_1C05803C8);

          if (v5)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18C98, &qword_1C0981C88);
            result = swift_allocObject();
            result[2] = v1;
            result[3] = v5;
          }

          else
          {

            return 0;
          }

          return result;
        }

        if (v2)
        {
          Node.int64Value.getter();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE173E8, &unk_1C0970D70);
      }

      if (swift_dynamicCast())
      {
        v6 = v7;
      }

      else
      {
        v6 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18C98, &qword_1C0981C88);
      result = swift_allocObject();
      result[2] = v1;
      result[3] = v6;
    }
  }

  return result;
}

void *sub_1C0612554(void *result)
{
  if (result)
  {
    result = sub_1C0518574();
    if (result)
    {
      v1 = result;
      v2 = result[4];
      v3 = type metadata accessor for UsoEntity_appleWriting_WritingAttribute();
      if (v3 == MEMORY[0x1E69E6158])
      {
        if (v2)
        {

          sub_1C0519574();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90);
      }

      else
      {
        if (v3 != MEMORY[0x1E69E7360])
        {

          v5 = sub_1C0605A38(v4, type metadata accessor for UsoEntity_appleWriting_WritingAttribute, sub_1C05803E0);

          if (v5)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18C88, &qword_1C0981C78);
            result = swift_allocObject();
            result[2] = v1;
            result[3] = v5;
          }

          else
          {

            return 0;
          }

          return result;
        }

        if (v2)
        {
          Node.int64Value.getter();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE173E8, &unk_1C0970D70);
      }

      if (swift_dynamicCast())
      {
        v6 = v7;
      }

      else
      {
        v6 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18C88, &qword_1C0981C78);
      result = swift_allocObject();
      result[2] = v1;
      result[3] = v6;
    }
  }

  return result;
}

void *sub_1C0612724(void *result)
{
  if (result)
  {
    result = sub_1C0518574();
    if (result)
    {
      v1 = result;
      v2 = result[4];
      v3 = type metadata accessor for UsoEntity_common_PointOfInterestType();
      if (v3 == MEMORY[0x1E69E6158])
      {
        if (v2)
        {

          sub_1C0519574();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90);
      }

      else
      {
        if (v3 != MEMORY[0x1E69E7360])
        {

          v5 = sub_1C0605A38(v4, type metadata accessor for UsoEntity_common_PointOfInterestType, sub_1C05803F8);

          if (v5)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18C80, &qword_1C0981C70);
            result = swift_allocObject();
            result[2] = v1;
            result[3] = v5;
          }

          else
          {

            return 0;
          }

          return result;
        }

        if (v2)
        {
          Node.int64Value.getter();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE173E8, &unk_1C0970D70);
      }

      if (swift_dynamicCast())
      {
        v6 = v7;
      }

      else
      {
        v6 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18C80, &qword_1C0981C70);
      result = swift_allocObject();
      result[2] = v1;
      result[3] = v6;
    }
  }

  return result;
}

void *sub_1C06128F4(void *result)
{
  if (result)
  {
    result = sub_1C0518574();
    if (result)
    {
      v1 = result;
      v2 = result[4];
      v3 = type metadata accessor for UsoEntity_common_TimeZone();
      if (v3 == MEMORY[0x1E69E6158])
      {
        if (v2)
        {

          sub_1C0519574();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90);
      }

      else
      {
        if (v3 != MEMORY[0x1E69E7360])
        {

          v5 = sub_1C0605A38(v4, type metadata accessor for UsoEntity_common_TimeZone, sub_1C0580410);

          if (v5)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18C78, &qword_1C0981C68);
            result = swift_allocObject();
            result[2] = v1;
            result[3] = v5;
          }

          else
          {

            return 0;
          }

          return result;
        }

        if (v2)
        {
          Node.int64Value.getter();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE173E8, &unk_1C0970D70);
      }

      if (swift_dynamicCast())
      {
        v6 = v7;
      }

      else
      {
        v6 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18C78, &qword_1C0981C68);
      result = swift_allocObject();
      result[2] = v1;
      result[3] = v6;
    }
  }

  return result;
}

void *sub_1C0612AC4(void *result)
{
  if (result)
  {
    result = sub_1C0518574();
    if (result)
    {
      v1 = result;
      v2 = result[4];
      v3 = type metadata accessor for UsoEntity_common_PersonRelationship();
      if (v3 == MEMORY[0x1E69E6158])
      {
        if (v2)
        {

          sub_1C0519574();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90);
      }

      else
      {
        if (v3 != MEMORY[0x1E69E7360])
        {

          v5 = sub_1C0605A38(v4, type metadata accessor for UsoEntity_common_PersonRelationship, sub_1C0580428);

          if (v5)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18C70, &qword_1C0981C60);
            result = swift_allocObject();
            result[2] = v1;
            result[3] = v5;
          }

          else
          {

            return 0;
          }

          return result;
        }

        if (v2)
        {
          Node.int64Value.getter();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE173E8, &unk_1C0970D70);
      }

      if (swift_dynamicCast())
      {
        v6 = v7;
      }

      else
      {
        v6 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18C70, &qword_1C0981C60);
      result = swift_allocObject();
      result[2] = v1;
      result[3] = v6;
    }
  }

  return result;
}

void *sub_1C0612C94(void *result)
{
  if (result)
  {
    result = sub_1C0518574();
    if (result)
    {
      v1 = result;
      v2 = result[4];
      v3 = type metadata accessor for UsoEntity_common_EmailState();
      if (v3 == MEMORY[0x1E69E6158])
      {
        if (v2)
        {

          sub_1C0519574();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90);
      }

      else
      {
        if (v3 != MEMORY[0x1E69E7360])
        {

          v5 = sub_1C0605A38(v4, type metadata accessor for UsoEntity_common_EmailState, sub_1C0580440);

          if (v5)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18C68, &qword_1C0981C58);
            result = swift_allocObject();
            result[2] = v1;
            result[3] = v5;
          }

          else
          {

            return 0;
          }

          return result;
        }

        if (v2)
        {
          Node.int64Value.getter();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE173E8, &unk_1C0970D70);
      }

      if (swift_dynamicCast())
      {
        v6 = v7;
      }

      else
      {
        v6 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18C68, &qword_1C0981C58);
      result = swift_allocObject();
      result[2] = v1;
      result[3] = v6;
    }
  }

  return result;
}

void *sub_1C0612E64(void *result)
{
  if (result)
  {
    result = sub_1C0518574();
    if (result)
    {
      v1 = result;
      v2 = result[4];
      v3 = type metadata accessor for UsoEntity_common_ResponseStatus();
      if (v3 == MEMORY[0x1E69E6158])
      {
        if (v2)
        {

          sub_1C0519574();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90);
      }

      else
      {
        if (v3 != MEMORY[0x1E69E7360])
        {

          v5 = sub_1C0605A38(v4, type metadata accessor for UsoEntity_common_ResponseStatus, sub_1C0580458);

          if (v5)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18C60, &qword_1C0981C50);
            result = swift_allocObject();
            result[2] = v1;
            result[3] = v5;
          }

          else
          {

            return 0;
          }

          return result;
        }

        if (v2)
        {
          Node.int64Value.getter();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE173E8, &unk_1C0970D70);
      }

      if (swift_dynamicCast())
      {
        v6 = v7;
      }

      else
      {
        v6 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18C60, &qword_1C0981C50);
      result = swift_allocObject();
      result[2] = v1;
      result[3] = v6;
    }
  }

  return result;
}

void *sub_1C0613034(void *result)
{
  if (result)
  {
    result = sub_1C0518574();
    if (result)
    {
      v1 = result;
      v2 = result[4];
      v3 = type metadata accessor for UsoEntity_common_EmailFolder();
      if (v3 == MEMORY[0x1E69E6158])
      {
        if (v2)
        {

          sub_1C0519574();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90);
      }

      else
      {
        if (v3 != MEMORY[0x1E69E7360])
        {

          v5 = sub_1C0605A38(v4, type metadata accessor for UsoEntity_common_EmailFolder, sub_1C0580470);

          if (v5)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18C50, &qword_1C0981C40);
            result = swift_allocObject();
            result[2] = v1;
            result[3] = v5;
          }

          else
          {

            return 0;
          }

          return result;
        }

        if (v2)
        {
          Node.int64Value.getter();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE173E8, &unk_1C0970D70);
      }

      if (swift_dynamicCast())
      {
        v6 = v7;
      }

      else
      {
        v6 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18C50, &qword_1C0981C40);
      result = swift_allocObject();
      result[2] = v1;
      result[3] = v6;
    }
  }

  return result;
}

void *sub_1C0613204(void *result)
{
  if (result)
  {
    result = sub_1C0518574();
    if (result)
    {
      v1 = result;
      v2 = result[4];
      v3 = type metadata accessor for UsoEntity_common_Email();
      if (v3 == MEMORY[0x1E69E6158])
      {
        if (v2)
        {

          sub_1C0519574();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90);
      }

      else
      {
        if (v3 != MEMORY[0x1E69E7360])
        {

          v5 = sub_1C0605A38(v4, type metadata accessor for UsoEntity_common_Email, sub_1C0580488);

          if (v5)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18C48, &qword_1C0981C38);
            result = swift_allocObject();
            result[2] = v1;
            result[3] = v5;
          }

          else
          {

            return 0;
          }

          return result;
        }

        if (v2)
        {
          Node.int64Value.getter();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE173E8, &unk_1C0970D70);
      }

      if (swift_dynamicCast())
      {
        v6 = v7;
      }

      else
      {
        v6 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18C48, &qword_1C0981C38);
      result = swift_allocObject();
      result[2] = v1;
      result[3] = v6;
    }
  }

  return result;
}

void *sub_1C06133D4(void *result)
{
  if (result)
  {
    result = sub_1C0518574();
    if (result)
    {
      v1 = result;
      v2 = result[4];
      v3 = type metadata accessor for UsoEntity_common_DeviceCategory();
      if (v3 == MEMORY[0x1E69E6158])
      {
        if (v2)
        {

          sub_1C0519574();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90);
      }

      else
      {
        if (v3 != MEMORY[0x1E69E7360])
        {

          v5 = sub_1C0605A38(v4, type metadata accessor for UsoEntity_common_DeviceCategory, sub_1C05804A0);

          if (v5)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18C30, &qword_1C0981C20);
            result = swift_allocObject();
            result[2] = v1;
            result[3] = v5;
          }

          else
          {

            return 0;
          }

          return result;
        }

        if (v2)
        {
          Node.int64Value.getter();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE173E8, &unk_1C0970D70);
      }

      if (swift_dynamicCast())
      {
        v6 = v7;
      }

      else
      {
        v6 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18C30, &qword_1C0981C20);
      result = swift_allocObject();
      result[2] = v1;
      result[3] = v6;
    }
  }

  return result;
}

void *sub_1C06135A4(void *result)
{
  if (result)
  {
    result = sub_1C0518574();
    if (result)
    {
      v1 = result;
      v2 = result[4];
      v3 = type metadata accessor for UsoEntity_common_OffsetDirection();
      if (v3 == MEMORY[0x1E69E6158])
      {
        if (v2)
        {

          sub_1C0519574();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90);
      }

      else
      {
        if (v3 != MEMORY[0x1E69E7360])
        {

          v5 = sub_1C0605A38(v4, type metadata accessor for UsoEntity_common_OffsetDirection, sub_1C05804B8);

          if (v5)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18C28, &qword_1C0981C18);
            result = swift_allocObject();
            result[2] = v1;
            result[3] = v5;
          }

          else
          {

            return 0;
          }

          return result;
        }

        if (v2)
        {
          Node.int64Value.getter();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE173E8, &unk_1C0970D70);
      }

      if (swift_dynamicCast())
      {
        v6 = v7;
      }

      else
      {
        v6 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18C28, &qword_1C0981C18);
      result = swift_allocObject();
      result[2] = v1;
      result[3] = v6;
    }
  }

  return result;
}

void *sub_1C0613774(void *result)
{
  if (result)
  {
    result = sub_1C0518574();
    if (result)
    {
      v1 = result;
      v2 = result[4];
      v3 = type metadata accessor for UsoEntity_common_Date();
      if (v3 == MEMORY[0x1E69E6158])
      {
        if (v2)
        {

          sub_1C0519574();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90);
      }

      else
      {
        if (v3 != MEMORY[0x1E69E7360])
        {

          v5 = sub_1C0605A38(v4, type metadata accessor for UsoEntity_common_Date, sub_1C05804D0);

          if (v5)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18C20, &qword_1C0981C10);
            result = swift_allocObject();
            result[2] = v1;
            result[3] = v5;
          }

          else
          {

            return 0;
          }

          return result;
        }

        if (v2)
        {
          Node.int64Value.getter();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE173E8, &unk_1C0970D70);
      }

      if (swift_dynamicCast())
      {
        v6 = v7;
      }

      else
      {
        v6 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18C20, &qword_1C0981C10);
      result = swift_allocObject();
      result[2] = v1;
      result[3] = v6;
    }
  }

  return result;
}

void *sub_1C0613944(void *result)
{
  if (result)
  {
    result = sub_1C0518574();
    if (result)
    {
      v1 = result;
      v2 = result[4];
      v3 = type metadata accessor for UsoEntity_common_Time();
      if (v3 == MEMORY[0x1E69E6158])
      {
        if (v2)
        {

          sub_1C0519574();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90);
      }

      else
      {
        if (v3 != MEMORY[0x1E69E7360])
        {

          v5 = sub_1C0605A38(v4, type metadata accessor for UsoEntity_common_Time, sub_1C05804E8);

          if (v5)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18C18, &qword_1C0981C08);
            result = swift_allocObject();
            result[2] = v1;
            result[3] = v5;
          }

          else
          {

            return 0;
          }

          return result;
        }

        if (v2)
        {
          Node.int64Value.getter();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE173E8, &unk_1C0970D70);
      }

      if (swift_dynamicCast())
      {
        v6 = v7;
      }

      else
      {
        v6 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18C18, &qword_1C0981C08);
      result = swift_allocObject();
      result[2] = v1;
      result[3] = v6;
    }
  }

  return result;
}

void *sub_1C0613B14(void *result)
{
  if (result)
  {
    result = sub_1C0518574();
    if (result)
    {
      v1 = result;
      v2 = result[4];
      v3 = type metadata accessor for UsoEntity_apple_PhotoMemory();
      if (v3 == MEMORY[0x1E69E6158])
      {
        if (v2)
        {

          sub_1C0519574();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90);
      }

      else
      {
        if (v3 != MEMORY[0x1E69E7360])
        {

          v5 = sub_1C0605A38(v4, type metadata accessor for UsoEntity_apple_PhotoMemory, sub_1C0580500);

          if (v5)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18C10, &qword_1C0981C00);
            result = swift_allocObject();
            result[2] = v1;
            result[3] = v5;
          }

          else
          {

            return 0;
          }

          return result;
        }

        if (v2)
        {
          Node.int64Value.getter();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE173E8, &unk_1C0970D70);
      }

      if (swift_dynamicCast())
      {
        v6 = v7;
      }

      else
      {
        v6 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18C10, &qword_1C0981C00);
      result = swift_allocObject();
      result[2] = v1;
      result[3] = v6;
    }
  }

  return result;
}

void *sub_1C0613CE4(void *result)
{
  if (result)
  {
    result = sub_1C0518574();
    if (result)
    {
      v1 = result;
      v2 = result[4];
      v3 = type metadata accessor for UsoEntity_common_SiriPossession();
      if (v3 == MEMORY[0x1E69E6158])
      {
        if (v2)
        {

          sub_1C0519574();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90);
      }

      else
      {
        if (v3 != MEMORY[0x1E69E7360])
        {

          v5 = sub_1C0605A38(v4, type metadata accessor for UsoEntity_common_SiriPossession, sub_1C0580518);

          if (v5)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18C08, &qword_1C0981BF8);
            result = swift_allocObject();
            result[2] = v1;
            result[3] = v5;
          }

          else
          {

            return 0;
          }

          return result;
        }

        if (v2)
        {
          Node.int64Value.getter();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE173E8, &unk_1C0970D70);
      }

      if (swift_dynamicCast())
      {
        v6 = v7;
      }

      else
      {
        v6 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18C08, &qword_1C0981BF8);
      result = swift_allocObject();
      result[2] = v1;
      result[3] = v6;
    }
  }

  return result;
}

void *sub_1C0613EB4(void *result)
{
  if (result)
  {
    result = sub_1C0518574();
    if (result)
    {
      v1 = result;
      v2 = result[4];
      v3 = type metadata accessor for UsoEntity_common_PersonSocialAction();
      if (v3 == MEMORY[0x1E69E6158])
      {
        if (v2)
        {

          sub_1C0519574();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90);
      }

      else
      {
        if (v3 != MEMORY[0x1E69E7360])
        {

          v5 = sub_1C0605A38(v4, type metadata accessor for UsoEntity_common_PersonSocialAction, sub_1C0580530);

          if (v5)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18C00, &qword_1C0981BF0);
            result = swift_allocObject();
            result[2] = v1;
            result[3] = v5;
          }

          else
          {

            return 0;
          }

          return result;
        }

        if (v2)
        {
          Node.int64Value.getter();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE173E8, &unk_1C0970D70);
      }

      if (swift_dynamicCast())
      {
        v6 = v7;
      }

      else
      {
        v6 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18C00, &qword_1C0981BF0);
      result = swift_allocObject();
      result[2] = v1;
      result[3] = v6;
    }
  }

  return result;
}

void *sub_1C0614084(void *result)
{
  if (result)
  {
    result = sub_1C0518574();
    if (result)
    {
      v1 = result;
      v2 = result[4];
      v3 = type metadata accessor for UsoEntity_common_Politeness();
      if (v3 == MEMORY[0x1E69E6158])
      {
        if (v2)
        {

          sub_1C0519574();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90);
      }

      else
      {
        if (v3 != MEMORY[0x1E69E7360])
        {

          v5 = sub_1C0605A38(v4, type metadata accessor for UsoEntity_common_Politeness, sub_1C0580548);

          if (v5)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18BF8, &qword_1C0981BE8);
            result = swift_allocObject();
            result[2] = v1;
            result[3] = v5;
          }

          else
          {

            return 0;
          }

          return result;
        }

        if (v2)
        {
          Node.int64Value.getter();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE173E8, &unk_1C0970D70);
      }

      if (swift_dynamicCast())
      {
        v6 = v7;
      }

      else
      {
        v6 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18BF8, &qword_1C0981BE8);
      result = swift_allocObject();
      result[2] = v1;
      result[3] = v6;
    }
  }

  return result;
}

void *sub_1C0614254(void *result)
{
  if (result)
  {
    result = sub_1C0518574();
    if (result)
    {
      v1 = result;
      v2 = result[4];
      v3 = type metadata accessor for UsoEntity_common_Photo();
      if (v3 == MEMORY[0x1E69E6158])
      {
        if (v2)
        {

          sub_1C0519574();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90);
      }

      else
      {
        if (v3 != MEMORY[0x1E69E7360])
        {

          v5 = sub_1C0605A38(v4, type metadata accessor for UsoEntity_common_Photo, sub_1C0580560);

          if (v5)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18BF0, &qword_1C0981BE0);
            result = swift_allocObject();
            result[2] = v1;
            result[3] = v5;
          }

          else
          {

            return 0;
          }

          return result;
        }

        if (v2)
        {
          Node.int64Value.getter();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE173E8, &unk_1C0970D70);
      }

      if (swift_dynamicCast())
      {
        v6 = v7;
      }

      else
      {
        v6 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18BF0, &qword_1C0981BE0);
      result = swift_allocObject();
      result[2] = v1;
      result[3] = v6;
    }
  }

  return result;
}

void *sub_1C0614424(void *result)
{
  if (result)
  {
    result = sub_1C0518574();
    if (result)
    {
      v1 = result;
      v2 = result[4];
      v3 = type metadata accessor for UsoEntity_common_AppSubSection();
      if (v3 == MEMORY[0x1E69E6158])
      {
        if (v2)
        {

          sub_1C0519574();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90);
      }

      else
      {
        if (v3 != MEMORY[0x1E69E7360])
        {

          v5 = sub_1C0605A38(v4, type metadata accessor for UsoEntity_common_AppSubSection, sub_1C0580578);

          if (v5)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18BE8, &qword_1C0981BD8);
            result = swift_allocObject();
            result[2] = v1;
            result[3] = v5;
          }

          else
          {

            return 0;
          }

          return result;
        }

        if (v2)
        {
          Node.int64Value.getter();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE173E8, &unk_1C0970D70);
      }

      if (swift_dynamicCast())
      {
        v6 = v7;
      }

      else
      {
        v6 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18BE8, &qword_1C0981BD8);
      result = swift_allocObject();
      result[2] = v1;
      result[3] = v6;
    }
  }

  return result;
}

void *sub_1C06145F4(void *result)
{
  if (result)
  {
    result = sub_1C0518574();
    if (result)
    {
      v1 = result;
      v2 = result[4];
      v3 = type metadata accessor for UsoEntity_common_SizeDirection();
      if (v3 == MEMORY[0x1E69E6158])
      {
        if (v2)
        {

          sub_1C0519574();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90);
      }

      else
      {
        if (v3 != MEMORY[0x1E69E7360])
        {

          v5 = sub_1C0605A38(v4, type metadata accessor for UsoEntity_common_SizeDirection, sub_1C0580590);

          if (v5)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18BE0, &qword_1C0981BD0);
            result = swift_allocObject();
            result[2] = v1;
            result[3] = v5;
          }

          else
          {

            return 0;
          }

          return result;
        }

        if (v2)
        {
          Node.int64Value.getter();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE173E8, &unk_1C0970D70);
      }

      if (swift_dynamicCast())
      {
        v6 = v7;
      }

      else
      {
        v6 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18BE0, &qword_1C0981BD0);
      result = swift_allocObject();
      result[2] = v1;
      result[3] = v6;
    }
  }

  return result;
}

void *sub_1C06147C4(void *result)
{
  if (result)
  {
    result = sub_1C0518574();
    if (result)
    {
      v1 = result;
      v2 = result[4];
      v3 = type metadata accessor for UsoEntity_commonMessage_MessageAttribute();
      if (v3 == MEMORY[0x1E69E6158])
      {
        if (v2)
        {

          sub_1C0519574();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90);
      }

      else
      {
        if (v3 != MEMORY[0x1E69E7360])
        {

          v5 = sub_1C0605A38(v4, type metadata accessor for UsoEntity_commonMessage_MessageAttribute, sub_1C05805A8);

          if (v5)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18BD8, &qword_1C0981BC8);
            result = swift_allocObject();
            result[2] = v1;
            result[3] = v5;
          }

          else
          {

            return 0;
          }

          return result;
        }

        if (v2)
        {
          Node.int64Value.getter();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE173E8, &unk_1C0970D70);
      }

      if (swift_dynamicCast())
      {
        v6 = v7;
      }

      else
      {
        v6 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18BD8, &qword_1C0981BC8);
      result = swift_allocObject();
      result[2] = v1;
      result[3] = v6;
    }
  }

  return result;
}

void *sub_1C0614994(void *result)
{
  if (result)
  {
    result = sub_1C0518574();
    if (result)
    {
      v1 = result;
      v2 = result[4];
      v3 = type metadata accessor for UsoEntity_common_Salutation();
      if (v3 == MEMORY[0x1E69E6158])
      {
        if (v2)
        {

          sub_1C0519574();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90);
      }

      else
      {
        if (v3 != MEMORY[0x1E69E7360])
        {

          v5 = sub_1C0605A38(v4, type metadata accessor for UsoEntity_common_Salutation, sub_1C05805C0);

          if (v5)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18BD0, &qword_1C0981BC0);
            result = swift_allocObject();
            result[2] = v1;
            result[3] = v5;
          }

          else
          {

            return 0;
          }

          return result;
        }

        if (v2)
        {
          Node.int64Value.getter();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE173E8, &unk_1C0970D70);
      }

      if (swift_dynamicCast())
      {
        v6 = v7;
      }

      else
      {
        v6 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18BD0, &qword_1C0981BC0);
      result = swift_allocObject();
      result[2] = v1;
      result[3] = v6;
    }
  }

  return result;
}

void *sub_1C0614B64(void *result)
{
  if (result)
  {
    result = sub_1C0518574();
    if (result)
    {
      v1 = result;
      v2 = result[4];
      v3 = type metadata accessor for UsoEntity_common_Organization();
      if (v3 == MEMORY[0x1E69E6158])
      {
        if (v2)
        {

          sub_1C0519574();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90);
      }

      else
      {
        if (v3 != MEMORY[0x1E69E7360])
        {

          v5 = sub_1C0605A38(v4, type metadata accessor for UsoEntity_common_Organization, sub_1C05805D8);

          if (v5)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18BC0, &qword_1C0981BB0);
            result = swift_allocObject();
            result[2] = v1;
            result[3] = v5;
          }

          else
          {

            return 0;
          }

          return result;
        }

        if (v2)
        {
          Node.int64Value.getter();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE173E8, &unk_1C0970D70);
      }

      if (swift_dynamicCast())
      {
        v6 = v7;
      }

      else
      {
        v6 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18BC0, &qword_1C0981BB0);
      result = swift_allocObject();
      result[2] = v1;
      result[3] = v6;
    }
  }

  return result;
}

void *sub_1C0614D34(void *result)
{
  if (result)
  {
    result = sub_1C0518574();
    if (result)
    {
      v1 = result;
      v2 = result[4];
      v3 = type metadata accessor for UsoEntity_commonArithmetic_ArithmeticAttribute();
      if (v3 == MEMORY[0x1E69E6158])
      {
        if (v2)
        {

          sub_1C0519574();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90);
      }

      else
      {
        if (v3 != MEMORY[0x1E69E7360])
        {

          v5 = sub_1C0605A38(v4, type metadata accessor for UsoEntity_commonArithmetic_ArithmeticAttribute, sub_1C05805F0);

          if (v5)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18BB8, &qword_1C0981BA8);
            result = swift_allocObject();
            result[2] = v1;
            result[3] = v5;
          }

          else
          {

            return 0;
          }

          return result;
        }

        if (v2)
        {
          Node.int64Value.getter();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE173E8, &unk_1C0970D70);
      }

      if (swift_dynamicCast())
      {
        v6 = v7;
      }

      else
      {
        v6 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18BB8, &qword_1C0981BA8);
      result = swift_allocObject();
      result[2] = v1;
      result[3] = v6;
    }
  }

  return result;
}

void *sub_1C0614F04(void *result)
{
  if (result)
  {
    result = sub_1C0518574();
    if (result)
    {
      v1 = result;
      v2 = result[4];
      v3 = type metadata accessor for UsoEntity_common_MultipliedNumber();
      if (v3 == MEMORY[0x1E69E6158])
      {
        if (v2)
        {

          sub_1C0519574();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90);
      }

      else
      {
        if (v3 != MEMORY[0x1E69E7360])
        {

          v5 = sub_1C0605A38(v4, type metadata accessor for UsoEntity_common_MultipliedNumber, sub_1C057FB10);

          if (v5)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18BB0, &qword_1C0981BA0);
            result = swift_allocObject();
            result[2] = v1;
            result[3] = v5;
          }

          else
          {

            return 0;
          }

          return result;
        }

        if (v2)
        {
          Node.int64Value.getter();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE173E8, &unk_1C0970D70);
      }

      if (swift_dynamicCast())
      {
        v6 = v7;
      }

      else
      {
        v6 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18BB0, &qword_1C0981BA0);
      result = swift_allocObject();
      result[2] = v1;
      result[3] = v6;
    }
  }

  return result;
}