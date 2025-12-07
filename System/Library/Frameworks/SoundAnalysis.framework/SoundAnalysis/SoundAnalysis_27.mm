uint64_t sub_1C99DC400@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t *a5@<X8>, double a6@<D0>)
{
  type metadata accessor for XPCDataEncoder(a6);
  sub_1C97AA878();
  v12 = swift_allocObject();
  type metadata accessor for XPCProxyEncoder(v13);
  *(v12 + 16) = 0;
  *(v12 + 24) = 0;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = a1;
  v14[5] = a2;
  type metadata accessor for XPCEncoder(v15);
  inited = swift_initStackObject();
  *(inited + 16) = v12;
  *(inited + 24) = v14;
  v17 = *(a4 + 8);

  v17(inited, a3, a4);
  if (v6)
  {
  }

  v19 = sub_1C97AA7D8(v18);
  v21 = v20;
  v23 = v22;
  v25 = v24;

  v26 = sub_1C98CB550();
  v29 = v27;

  swift_setDeallocating();
  sub_1C9890968();
  sub_1C97AA878();
  result = swift_deallocClassInstance();
  *a5 = v26;
  a5[1] = v29;
  a5[2] = v19;
  a5[3] = v21;
  a5[4] = v23;
  a5[5] = v25;
  return result;
}

uint64_t sub_1C99DC5E4(uint64_t (*a1)(uint64_t), uint64_t (*a2)(uint64_t), void (*a3)(uint64_t))
{

  v7 = a1(v6);

  v9 = a2(v8);

  a3(v10);
  sub_1C97AA878();
  result = swift_allocObject();
  *(result + 16) = v7;
  *(result + 24) = v9;
  return result;
}

uint64_t sub_1C99DC674(void *a1, double a2)
{
  v3 = v2;
  type metadata accessor for XPCDataEncoder(a2);
  sub_1C97AA878();
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v5 + 24) = 0;
  v6 = *(v3 + 24);
  v7 = *(v6 + 24);
  v8 = *(v6 + 32);
  type metadata accessor for XPCProxyEncoder(v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v7;
  v10[5] = v8;
  type metadata accessor for XPCEncoder(v11);
  inited = swift_initStackObject();
  *(inited + 16) = v5;
  *(inited + 24) = v10;
  v13 = *(v3 + 16);
  sub_1C97AA878();
  v14 = swift_allocObject();
  *(v14 + 16) = sub_1C99DCA1C;
  *(v14 + 24) = v5;
  swift_beginAccess();

  sub_1C99DCA4C(sub_1C97E61E8);
  v15 = *(*(v13 + 16) + 16);
  sub_1C99DCAC0(v15, sub_1C97E61E8);
  v16 = *(v13 + 16);
  *(v16 + 16) = v15 + 1;
  v17 = v16 + 16 * v15;
  *(v17 + 32) = sub_1C99DCB24;
  *(v17 + 40) = v14;
  *(v13 + 16) = v16;
  swift_endAccess();

  v18 = *(v3 + 24);
  sub_1C97AA878();
  v19 = swift_allocObject();
  *(v19 + 16) = sub_1C99DCB08;
  *(v19 + 24) = v10;
  swift_beginAccess();

  sub_1C99DCA4C(sub_1C97E4EC0);
  v20 = *(*(v18 + 16) + 16);
  sub_1C99DCAC0(v20, sub_1C97E4EC0);
  v21 = *(v18 + 16);
  *(v21 + 16) = v20 + 1;
  v22 = v21 + 16 * v20;
  *(v22 + 32) = sub_1C99DCB3C;
  *(v22 + 40) = v19;
  *(v18 + 16) = v21;
  swift_endAccess();

  v23 = a1[3];
  v24 = a1[4];
  sub_1C97A5A8C(a1, v23);
  (*(v24 + 8))(inited, v23, v24);
  swift_setDeallocating();
  sub_1C9890968();
  sub_1C97AA878();
  return swift_deallocClassInstance();
}

uint64_t sub_1C99DC8F8()
{
  sub_1C9890968();
  sub_1C97AA878();

  return swift_deallocClassInstance();
}

uint64_t sub_1C99DC928(uint64_t a1)
{
  result = sub_1C97AA7D8(a1);
  if (v1)
  {
    return v3;
  }

  return result;
}

uint64_t sub_1C99DCA4C(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!result)
  {
    result = a1(result, *(v3 + 16) + 1, 1, v3);
    *v1 = result;
  }

  return result;
}

uint64_t sub_1C99DCAC0(uint64_t result, uint64_t (*a2)(BOOL))
{
  v3 = *(*v2 + 24);
  if (result + 1 > (v3 >> 1))
  {
    result = a2(v3 > 1);
    *v2 = result;
  }

  return result;
}

uint64_t sub_1C99DCB8C(uint64_t a1, _BYTE *a2)
{
  *a2 = 1;

  return swift_willThrow();
}

void sub_1C99DCBAC(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(v3 + 24);
  if (v5)
  {
    v9 = v5;
    v10 = [a1 frameLength];
    [*(v4 + 16) sampleRate];
    sub_1C99DCF94();
    if (!(v13 ^ v14 | v12))
    {
      __break(1u);
LABEL_8:
      __break(1u);
      goto LABEL_9;
    }

    if (v11 <= -2147483650.0)
    {
      goto LABEL_8;
    }

    if (v11 >= 2147483650.0)
    {
LABEL_9:
      __break(1u);
      swift_unexpectedError();
      __break(1u);
      return;
    }

    CMTimeMake(&v27.start, v10, v11);
    v15 = *(v4 + 32);
    v16 = *(v4 + 48);
    duration.epoch = v27.start.epoch;
    start.value = v15;
    *&start.timescale = *(v4 + 40);
    start.epoch = v16;
    duration.value = v27.start.value;
    *&duration.timescale = *&v27.start.timescale;
    CMTimeRangeMake(&v27, &start, &duration);
    type metadata accessor for SNAudioFileUtils(v17);
    v18 = *(v4 + 32);
    v19 = swift_allocObject();
    *(v19 + 16) = a2;
    *(v19 + 24) = a3;

    v20 = sub_1C99C9BDC(v9, &v27, v18, v10, 0, sub_1C99DCF68, v19);
    v22 = v21;
    v24 = v23;

    *(v4 + 32) = v20;
    *(v4 + 40) = v22;
    *(v4 + 48) = v24;
  }
}

void sub_1C99DCD68(uint64_t a1, void *a2)
{
  *(v2 + 2) = a2;
  v2[3] = 0.0;
  v5 = a2;
  [v5 sampleRate];
  sub_1C99DCF94();
  if (!(v8 ^ v9 | v7))
  {
    __break(1u);
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v6 <= -2147483650.0)
  {
    goto LABEL_8;
  }

  if (v6 >= 2147483650.0)
  {
LABEL_9:
    __break(1u);
    return;
  }

  CMTimeMake(&v17, 0, v6);
  epoch = v17.epoch;
  v11 = *&v17.timescale;
  v2[4] = *&v17.value;
  v2[5] = v11;
  *(v2 + 6) = epoch;
  type metadata accessor for SNAudioFileUtils(v11);
  v12 = sub_1C99C7DE8(a1, v5);
  if (v3)
  {

    sub_1C9A91558();
    sub_1C985DB38();
    (*(v13 + 8))(a1);
  }

  else
  {
    v14 = v12;
    sub_1C9A91558();
    sub_1C985DB38();
    (*(v15 + 8))(a1);

    v16 = *(v2 + 3);
    *(v2 + 3) = v14;
  }
}

uint64_t sub_1C99DCEC4()
{
  v1 = objc_autoreleasePoolPush();
  v2 = *(v0 + 24);
  *(v0 + 24) = 0;

  objc_autoreleasePoolPop(v1);
  return v0;
}

uint64_t sub_1C99DCF10()
{
  sub_1C99DCEC4();

  return swift_deallocClassInstance();
}

void *sub_1C99DCFA8()
{
  sub_1C9813910();
  v2 = v1;
  result = sub_1C9A6C178(v3, 0);
  if (result)
  {
    v5 = result;
    v6 = sub_1C9A65F04(result, 0);

    sub_1C9A69F34(v0);
    *v2 = v0;
    v2[1] = v6;
    return v0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1C99DD048()
{
  sub_1C9813910();
  v1 = sub_1C9A92478();
  v2 = sub_1C9A6AEE4(v0, v1);

  return v2;
}

id sub_1C99DD0BC()
{
  sub_1C9813910();
  v1 = sub_1C9A92478();
  v2 = sub_1C9A6AEE4(v0, v1);

  return v2;
}

__n128 sub_1C99DD140(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  type metadata accessor for SNAudioLevelMeasurer(a4);
  sub_1C9A1498C(a2, a3);
  if (!v4)
  {
    sub_1C97A2CEC(&qword_1EC3D07B8, &qword_1C9AC7058);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1C9A9EDD0;
    *(v8 + 32) = v9;
    result = v11;
    *(v8 + 48) = v10;
    *(v8 + 64) = v11;
    *(v8 + 80) = v12;
  }

  return result;
}

uint64_t sub_1C99DD1EC()
{
  sub_1C9813910();
  sub_1C97A2CEC(&unk_1EC3C6E20, &qword_1C9A9FF60);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1C9A9DF30;
  *(v1 + 32) = v0;
  v2 = v0;
  return v1;
}

_BYTE *storeEnumTagSinglePayload for DSPGraphError(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C99DD334()
{
  result = qword_1EC3D07C0[0];
  if (!qword_1EC3D07C0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC3D07C0);
  }

  return result;
}

uint64_t sub_1C99DD388(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C99DD434(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  sub_1C99DD48C(a1, a2, a3);
  return v6;
}

uint64_t *sub_1C99DD48C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  *(v3 + 2) = 0u;
  v3[6] = 0;
  *(v3 + 1) = 0u;
  v13 = 0;
  memset(v12, 0, sizeof(v12));
  swift_beginAccess();
  sub_1C9830DE8(v12, (v3 + 2));
  swift_endAccess();
  sub_1C9831528();
  (*(*(*(v7 + 96) - 8) + 32))(v3 + *(v8 + 128), a1);
  sub_1C9831528();
  v10 = (v3 + *(v9 + 136));
  *v10 = a2;
  v10[1] = a3;
  return v3;
}

uint64_t sub_1C99DD584(uint64_t a1)
{
  v2 = *v1;
  sub_1C97D9AF8(a1, v4);
  swift_beginAccess();
  sub_1C9830DE8(v4, (v1 + 2));
  swift_endAccess();
  sub_1C9831528();
  v4[3] = v2;
  v4[4] = swift_getWitnessTable();
  v4[0] = v1;

  sub_1C9A91D18();
  return sub_1C97A592C(v4);
}

uint64_t sub_1C99DD6F4(uint64_t a1)
{
  v3 = *v1;
  swift_getAssociatedConformanceWitness();
  v4 = sub_1C9A91D48();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - v6;
  (*(v1 + *(v3 + 136)))(a1);
  sub_1C9A91D08();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1C99DD884(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = sub_1C99DE064(a1, a2, a3, a4, a5);
  if (*(v5 + 40))
  {
    sub_1C97D9AF8(v5 + 16, v7);
    sub_1C97A5A8C(v7, v7[3]);
    sub_1C9A91DB8();
    return sub_1C97A592C(v7);
  }

  return result;
}

uint64_t sub_1C99DD8F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = sub_1C99DE064(a1, a2, a3, a4, a5);
  if (*(v5 + 40))
  {
    sub_1C97D9AF8(v5 + 16, v7);
    sub_1C97A5A8C(v7, v7[3]);
    sub_1C9A91D38();
    return sub_1C97A592C(v7);
  }

  return result;
}

char *sub_1C99DD95C()
{
  v1 = *v0;
  sub_1C9831018((v0 + 16));
  sub_1C9831528();
  (*(*(*(v1 + 96) - 8) + 8))(&v0[*(v2 + 128)]);
  sub_1C9831528();

  return v0;
}

uint64_t sub_1C99DD9F4()
{
  sub_1C99DD95C();

  return swift_deallocClassInstance();
}

unint64_t sub_1C99DDB34(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = sub_1C983DB24();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C99DDBBC(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(*(v4 - 8) + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
LABEL_26:
    if (v5 < 0x7FFFFFFF)
    {
      v16 = *((result + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }

    else
    {
      return sub_1C97ABF20(result, v5, v4);
    }
  }

  else
  {
    v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
    v9 = a2 - v7;
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

    switch(v13)
    {
      case 1:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

LABEL_22:
        v15 = v14 - 1;
        if (v10)
        {
          v15 = 0;
          LODWORD(v10) = *result;
        }

        result = v7 + (v10 | v15) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_1C99DDCF8(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(*(v6 - 8) + 64);
  v10 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v11 = a3 - v8 + 1;
  }

  else
  {
    v11 = 2;
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

  if (v8 < a3)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (a2 <= v8)
  {
    switch(v14)
    {
      case 1:
        a1[v10] = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        break;
      case 2:
        *&a1[v10] = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        break;
      case 3:
LABEL_44:
        __break(1u);
        break;
      case 4:
        *&a1[v10] = 0;
        goto LABEL_32;
      default:
LABEL_32:
        if (a2)
        {
LABEL_33:
          if (v7 < 0x7FFFFFFF)
          {
            v17 = (&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8);
            if ((a2 & 0x80000000) != 0)
            {
              v18 = a2 & 0x7FFFFFFF;
              v17[1] = 0;
            }

            else
            {
              v18 = (a2 - 1);
            }

            *v17 = v18;
          }

          else
          {

            sub_1C97ACC50(a1, a2, v7, v6);
          }
        }

        break;
    }
  }

  else
  {
    if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v15 = a2 - v8;
    }

    else
    {
      v15 = 1;
    }

    if (((v9 + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v16 = ~v8 + a2;
      bzero(a1, ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 16);
      *a1 = v16;
    }

    switch(v14)
    {
      case 1:
        a1[v10] = v15;
        break;
      case 2:
        *&a1[v10] = v15;
        break;
      case 3:
        goto LABEL_44;
      case 4:
        *&a1[v10] = v15;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1C99DDEE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v11 + 32);
  v19 = *(v11 + 16);
  v20 = v19;
  v21 = v13;
  v22 = v12;
  v23 = v14;
  type metadata accessor for MapCompletion.Instance(0, &v20);
  (*(v8 + 16))(v10, a1, a3);
  v15 = (v4 + *(a2 + 52));
  v16 = *v15;
  v17 = v15[1];

  *&v20 = sub_1C99DD434(v10, v16, v17);
  swift_getWitnessTable();
  sub_1C9A91F08();
}

uint64_t sub_1C99DE064(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{

  return swift_beginAccess();
}

uint64_t sub_1C99DE084(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C99DE15C@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E69E75D8];
  v3 = sub_1C9A93D48();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_1C99DE1D0()
{
  sub_1C9A93CC8();
  sub_1C979AF70(v2, *v0);
  return sub_1C9A93D18();
}

uint64_t sub_1C99DE210(uint64_t a1, int *a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v11 + 24);
  v16[0] = *(v11 + 16);
  v16[1] = v13;
  v16[2] = v12;
  v16[3] = v14;
  type metadata accessor for CollectByCountWithStride.Inner(0, v16);
  (*(v8 + 16))(v10, a1, a3);
  v16[0] = sub_1C99DE370(v10, *(v4 + a2[9]), *(v4 + a2[10]), *(v4 + a2[11]));
  swift_getWitnessTable();
  sub_1C9A920B8();
}

void sub_1C99DE3F8()
{
  v1 = *v0;
  v2 = sub_1C9A93D48();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1C97A2CEC(qword_1EC3D09C8, &qword_1C9AC7580);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v21 - v6;
  os_unfair_lock_lock(*(*(v0 + *(v1 + 184)) + 16));
  v22 = v0;
  sub_1C97A2CEC(&qword_1EC3C69E8, &unk_1C9A9D4A0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1C9AA95C0;
  *(v8 + 32) = 0x657274736E776F64;
  *(v8 + 40) = 0xEA00000000006D61;
  v9 = *(*v0 + 112);
  v10 = *(v1 + 88);
  *(v8 + 72) = v10;
  v11 = sub_1C981CDF0((v8 + 48));
  (*(*(v10 - 8) + 16))(v11, v0 + v9, v10);
  *(v8 + 80) = 0xD000000000000014;
  *(v8 + 88) = 0x80000001C9ADE090;
  v12 = *(*v0 + 160);
  swift_beginAccess();
  *(v8 + 120) = sub_1C97A2CEC(&qword_1EC3C8A18, qword_1C9AA4D50);
  v13 = swift_allocObject();
  *(v8 + 96) = v13;
  sub_1C9830FA8(v0 + v12, v13 + 16);
  *(v8 + 128) = 0x726566667562;
  *(v8 + 136) = 0xE600000000000000;
  v14 = *(*v0 + 152);
  swift_beginAccess();
  v15 = *(v0 + v14);
  swift_getAssociatedTypeWitness();
  v16 = sub_1C9A928B8();
  *(v8 + 144) = v15;
  *(v8 + 168) = v16;
  *(v8 + 176) = 0x746E756F63;
  *(v8 + 184) = 0xE500000000000000;
  v17 = *v0;
  v18 = MEMORY[0x1E69E6530];
  *(v8 + 192) = *(v0 + *(*v0 + 120));
  *(v8 + 216) = v18;
  *(v8 + 224) = 0x656469727473;
  *(v8 + 232) = 0xE600000000000000;
  v19 = *(v0 + *(v17 + 128));
  *(v8 + 264) = v18;
  *(v8 + 240) = v19;
  v20 = sub_1C9A93D38();
  sub_1C97ACC50(v7, 1, 1, v20);
  sub_1C99DE15C(v4);

  sub_1C9A93D78();
  sub_1C99DE7B4(v0);
}

void sub_1C99DE7D4(uint64_t a1@<X8>)
{
  *(a1 + 24) = MEMORY[0x1E69E6158];
  strcpy(a1, "CollectByCount");
  *(a1 + 15) = -18;
}

uint64_t *sub_1C99DE808(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v9 = *v4;
  *(v4 + *(*v4 + 144)) = 0;
  v10 = *(*v4 + 152);
  swift_getAssociatedTypeWitness();
  *(v4 + v10) = sub_1C9A92828();
  v11 = v4 + *(*v4 + 160);
  *(v11 + 32) = 0;
  *v11 = 0u;
  *(v11 + 16) = 0u;
  *(v4 + *(*v4 + 168)) = 0;
  *(v4 + *(*v4 + 176)) = 0;
  v12 = *(*v4 + 184);
  type metadata accessor for SafeLock(0.0);
  v13 = swift_allocObject();
  v14 = swift_slowAlloc();
  *v14 = 0;
  *(v4 + v12) = v13;
  *(v13 + 16) = v14;
  (*(*(*(v9 + 88) - 8) + 32))(v4 + *(*v4 + 112), a1);
  *(v4 + *(*v4 + 120)) = a2;
  *(v4 + *(*v4 + 128)) = a3;
  *(v4 + *(*v4 + 136)) = a4 & 1;
  return v4;
}

void sub_1C99DEA0C(uint64_t a1)
{
  sub_1C9A91D88();
  if ((sub_1C9A91D68() & 1) == 0)
  {
    if (a1 < 0)
    {
      __break(1u);
    }

    else if (a1)
    {
      goto LABEL_4;
    }

    __break(1u);
    goto LABEL_17;
  }

LABEL_4:
  v3 = *(v1 + *(*v1 + 184));
  os_unfair_lock_lock(*(v3 + 16));
  v4 = *(*v1 + 160);
  swift_beginAccess();
  sub_1C9830FA8(v1 + v4, &v7);
  if (!v8)
  {
    sub_1C9831018(&v7);
    os_unfair_lock_unlock(*(v3 + 16));
    return;
  }

  sub_1C979B054(&v7, v9);
  sub_1C9A91D88();
  if ((sub_1C9A91D68() & 1) == 0)
  {
    v5 = *v1;
    v6 = *(*v1 + 144);
    if (*(v1 + v6) == 1)
    {
      v5 = *(v5 + 128);
      if ((*(v1 + v5) & 0x8000000000000000) == 0)
      {
LABEL_12:
        *(v1 + v6) = 1;
        os_unfair_lock_unlock(*(v3 + 16));
        sub_1C97A5A8C(v9, v10);
        goto LABEL_13;
      }

      __break(1u);
    }

    if ((*(v1 + *(v5 + 120)) & 0x8000000000000000) == 0)
    {
      goto LABEL_12;
    }

LABEL_17:
    __break(1u);
    return;
  }

  os_unfair_lock_unlock(*(v3 + 16));
  sub_1C97A5A8C(v9, v10);
  sub_1C9A91D88();
LABEL_13:
  sub_1C9A91DB8();
  sub_1C97A592C(v9);
}

void sub_1C99DEBC4()
{
  v1 = *(v0 + *(*v0 + 184));
  os_unfair_lock_lock(*(v1 + 16));
  v2 = *(*v0 + 160);
  swift_beginAccess();
  sub_1C9830FA8(v0 + v2, &v5);
  if (*(&v6 + 1))
  {
    sub_1C979B054(&v5, v8);
    swift_getAssociatedTypeWitness();
    v3 = sub_1C9A92828();
    v4 = *(*v0 + 152);
    swift_beginAccess();
    *(v0 + v4) = v3;

    v7 = 0;
    v5 = 0u;
    v6 = 0u;
    swift_beginAccess();
    sub_1C9830DE8(&v5, v0 + v2);
    swift_endAccess();
    *(v0 + *(*v0 + 168)) = 1;
    os_unfair_lock_unlock(*(v1 + 16));
    sub_1C97A5A8C(v8, v8[3]);
    sub_1C9A91D38();
    sub_1C97A592C(v8);
  }

  else
  {
    sub_1C9831018(&v5);
    os_unfair_lock_unlock(*(v1 + 16));
  }
}

uint64_t sub_1C99DED84(void *a1)
{
  v3 = *v1;
  v4 = *(v1 + *(*v1 + 184));
  os_unfair_lock_lock(*(v4 + 16));
  if ((*(v1 + *(*v1 + 168)) & 1) != 0 || (v5 = *(*v1 + 160), swift_beginAccess(), sub_1C9830FA8(v1 + v5, v8), v6 = v9, sub_1C9831018(v8), v6))
  {
    os_unfair_lock_unlock(*(v4 + 16));
    sub_1C97A5A8C(a1, a1[3]);
    return sub_1C9A91D38();
  }

  else
  {
    sub_1C97D9AF8(a1, v8);
    swift_beginAccess();
    sub_1C9830DE8(v8, v1 + v5);
    swift_endAccess();
    os_unfair_lock_unlock(*(v4 + 16));
    v9 = v3;
    WitnessTable = swift_getWitnessTable();
    v8[0] = v1;

    sub_1C9A91D18();
    return sub_1C97A592C(v8);
  }
}

uint64_t sub_1C99DEF54(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = v16 - v7;
  v9 = *(v2 + *(v4 + 184));
  os_unfair_lock_lock(*(v9 + 16));
  v10 = *(*v2 + 160);
  swift_beginAccess();
  sub_1C9830FA8(v2 + v10, v16);
  v11 = v16[3];
  sub_1C9831018(v16);
  if (v11 && ((*(v6 + 16))(v8, a1, AssociatedTypeWitness), v12 = *(*v2 + 152), swift_beginAccess(), sub_1C9A928B8(), sub_1C9A92888(), swift_endAccess(), , v13 = sub_1C9A92878(), , v13 == *(v2 + *(*v2 + 120))))
  {
    v14 = *(v2 + v12);

    sub_1C9A92878();
    swift_beginAccess();
    swift_getWitnessTable();
    sub_1C9A92DC8();
    swift_endAccess();
    os_unfair_lock_unlock(*(v9 + 16));
    v16[0] = v14;
    sub_1C9A91D28();

    return sub_1C9A91D58();
  }

  else
  {
    os_unfair_lock_unlock(*(v9 + 16));
    return sub_1C9A91D78();
  }
}

uint64_t sub_1C99DF280(uint64_t a1)
{
  v2 = v1;
  v27 = a1;
  v29 = *v1;
  v3 = v29;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v26 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v28 = &v25 - v5;
  swift_getAssociatedConformanceWitness();
  v6 = sub_1C9A91D48();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v25 - v11;
  v13 = *(v1 + *(v3 + 184));
  os_unfair_lock_lock(*(v13 + 16));
  v32 = 0;
  memset(v31, 0, sizeof(v31));
  v14 = *(*v1 + 160);
  swift_beginAccess();
  sub_1C9830DE8(v31, v1 + v14);
  swift_endAccess();
  *(v1 + *(*v1 + 168)) = 1;
  v7[2](v12, v27, v6);
  if (sub_1C97ABF20(v12, 1, AssociatedTypeWitness) != 1)
  {
    v18 = v26;
    (*(v26 + 32))(v28, v12, AssociatedTypeWitness);
    swift_getAssociatedTypeWitness();
    v19 = sub_1C9A92828();
    v20 = *(*v2 + 152);
    swift_beginAccess();
    *(v2 + v20) = v19;

    os_unfair_lock_unlock(*(v13 + 16));
    v21 = v28;
    (*(v18 + 16))(v10, v28, AssociatedTypeWitness);
    sub_1C97ACC50(v10, 0, 1, AssociatedTypeWitness);
    sub_1C9A91D08();
    (v7[1])(v10, v6);
    return (*(v18 + 8))(v21, AssociatedTypeWitness);
  }

  v15 = v13;
  v27 = v6;
  v28 = v7;
  v16 = *(*v1 + 152);
  swift_beginAccess();
  v30 = *(v1 + v16);
  swift_getAssociatedTypeWitness();
  sub_1C9A928B8();
  swift_getWitnessTable();
  if (sub_1C9A92D08())
  {
    goto LABEL_7;
  }

  if (*(v1 + *(*v1 + 136)) != 1)
  {
    *(v1 + v16) = sub_1C9A92828();

LABEL_7:
    os_unfair_lock_unlock(*(v13 + 16));
    goto LABEL_8;
  }

  v17 = *(v1 + v16);

  *(v1 + v16) = sub_1C9A92828();

  os_unfair_lock_unlock(*(v15 + 16));
  v30 = v17;
  sub_1C9A91D28();

LABEL_8:
  v23 = v27;
  v24 = v28;
  sub_1C97ACC50(v10, 1, 1, AssociatedTypeWitness);
  sub_1C9A91D08();
  return (*(v24 + 1))(v10, v23);
}

uint64_t sub_1C99DF800()
{
  (*(*(*(*v0 + 88) - 8) + 8))(v0 + *(*v0 + 112));

  sub_1C9831018(v0 + *(*v0 + 160));

  return v0;
}

uint64_t sub_1C99DF8C4()
{
  sub_1C99DF800();

  return swift_deallocClassInstance();
}

uint64_t sub_1C99DF930(uint64_t a1)
{
  v2 = swift_checkMetadataState();
  v4 = v2;
  if (v5 <= 0x3F)
  {
    v4 = type metadata accessor for CollectByCountWithStride.CompletionStrategy(319, v2, *(a1 + 24), v3);
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v4;
}

uint64_t sub_1C99DF9DC(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(*(v4 - 8) + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
LABEL_26:
    if (v5 < 0xFE)
    {
      v16 = *(((((result + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8);
      if (v16 >= 2)
      {
        return v16 - 1;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return sub_1C97ABF20(result, v5, v4);
    }
  }

  else
  {
    v8 = ((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 9;
    v9 = (a2 - v7 + 255) >> 8;
    if (v8 <= 3)
    {
      v10 = v9 + 1;
    }

    else
    {
      v10 = 2;
    }

    if (v10 >= 0x10000)
    {
      v11 = 4;
    }

    else
    {
      v11 = 2;
    }

    if (v10 < 0x100)
    {
      v11 = 1;
    }

    if (v10 >= 2)
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    switch(v12)
    {
      case 1:
        v13 = *(result + v8);
        if (!*(result + v8))
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v13 = *(result + v8);
        if (!*(result + v8))
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v13 = *(result + v8);
        if (!v13)
        {
          goto LABEL_26;
        }

LABEL_22:
        v14 = (v13 - 1) << (8 * v8);
        if (v8 <= 3)
        {
          v15 = *result;
        }

        else
        {
          v14 = 0;
          v15 = *result;
        }

        result = v7 + (v15 | v14) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_1C99DFB38(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0xFE)
  {
    v8 = 254;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(*(v6 - 8) + 64);
  v10 = ((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v8 >= a3)
  {
    v14 = 0;
  }

  else
  {
    v11 = (a3 - v8 + 255) >> 8;
    if (v10 <= 3)
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
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }
  }

  if (v8 >= a2)
  {
    switch(v14)
    {
      case 1:
        a1[v10] = 0;
        if (a2)
        {
          goto LABEL_31;
        }

        break;
      case 2:
        *&a1[v10] = 0;
        if (a2)
        {
          goto LABEL_31;
        }

        break;
      case 3:
LABEL_40:
        __break(1u);
        break;
      case 4:
        *&a1[v10] = 0;
        goto LABEL_30;
      default:
LABEL_30:
        if (a2)
        {
LABEL_31:
          if (v7 < 0xFE)
          {
            *((((&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8) = a2 + 1;
          }

          else
          {

            sub_1C97ACC50(a1, a2, v7, v6);
          }
        }

        break;
    }
  }

  else
  {
    v15 = ~v8 + a2;
    bzero(a1, ((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 9);
    if (v10 <= 3)
    {
      v16 = (v15 >> 8) + 1;
    }

    else
    {
      v16 = 1;
    }

    if (v10 > 3)
    {
      *a1 = v15;
    }

    else
    {
      *a1 = v15;
    }

    switch(v14)
    {
      case 1:
        a1[v10] = v16;
        break;
      case 2:
        *&a1[v10] = v16;
        break;
      case 3:
        goto LABEL_40;
      case 4:
        *&a1[v10] = v16;
        break;
      default:
        return;
    }
  }
}

_BYTE *sub_1C99DFD54(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C99DFFA8(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = sub_1C983DB24();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C99E0040(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(*(v4 - 8) + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
LABEL_26:
    if (v5 < 0x7FFFFFFF)
    {
      v16 = *((result + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }

    else
    {
      return sub_1C97ABF20(result, v5, v4);
    }
  }

  else
  {
    v8 = ((((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
    v9 = a2 - v7;
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

    switch(v13)
    {
      case 1:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

LABEL_22:
        v15 = v14 - 1;
        if (v10)
        {
          v15 = 0;
          LODWORD(v10) = *result;
        }

        result = v7 + (v10 | v15) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_1C99E018C(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(*(v6 - 8) + 64);
  v10 = ((((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v8 >= a3)
  {
    v14 = 0;
  }

  else
  {
    v11 = a3 - v8;
    if (((((((v9 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF8)
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
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }
  }

  if (a2 <= v8)
  {
    switch(v14)
    {
      case 1:
        a1[v10] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 2:
        *&a1[v10] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 3:
LABEL_43:
        __break(1u);
        break;
      case 4:
        *&a1[v10] = 0;
        goto LABEL_31;
      default:
LABEL_31:
        if (a2)
        {
LABEL_32:
          if (v7 < 0x7FFFFFFF)
          {
            v17 = (&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8);
            if ((a2 & 0x80000000) != 0)
            {
              v18 = a2 & 0x7FFFFFFF;
              v17[1] = 0;
            }

            else
            {
              v18 = (a2 - 1);
            }

            *v17 = v18;
          }

          else
          {

            sub_1C97ACC50(a1, a2, v7, v6);
          }
        }

        break;
    }
  }

  else
  {
    if (((((((v9 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v15 = a2 - v8;
    }

    else
    {
      v15 = 1;
    }

    if (((((((v9 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v16 = ~v8 + a2;
      bzero(a1, ((((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8);
      *a1 = v16;
    }

    switch(v14)
    {
      case 1:
        a1[v10] = v15;
        break;
      case 2:
        *&a1[v10] = v15;
        break;
      case 3:
        goto LABEL_43;
      case 4:
        *&a1[v10] = v15;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1C99E038C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t x8_0@<X8>, uint64_t a9, uint64_t a10)
{
  v26 = a8;
  v27 = a4;
  v28 = a7;
  sub_1C97AE9DC();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v25 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v20, v11, v22);
  *(&v24 + 1) = a9;
  *&v24 = v26;
  sub_1C99E04BC(v20, a1, a2, a3, v27, a5, a6, v28, x8_0, v24, a10);
}

int *sub_1C99E04BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, uint64_t a11)
{
  (*(*(a7 - 8) + 32))(a9, a1, a7);
  v22[0] = a7;
  v22[1] = a8;
  v23 = a10;
  v24 = a11;
  result = _s15StatefulFlatMapVMa(0, v22);
  v20 = (a9 + result[15]);
  *v20 = a3;
  v20[1] = a4;
  v21 = (a9 + result[16]);
  *v21 = a5;
  v21[1] = a6;
  *(a9 + result[17]) = a2;
  return result;
}

uint64_t sub_1C99E059C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v76 = a1;
  v74 = a4;
  v79 = a3;
  sub_1C97AE9DC();
  v71 = v4;
  v72 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v63 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = v8[3];
  v10 = v8[5];
  v11 = v8;
  v69 = v8[2];
  v12 = v10;
  v13 = sub_1C9A91C58();
  sub_1C97AE9DC();
  v75 = v14;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v15);
  v73 = &v59 - v16;
  v78 = v11[6];
  v68 = v9;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v70 = v12;
  v18 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_1C9A93D88();
  v20 = sub_1C9A91C58();
  v21 = sub_1C9A91E98();
  WitnessTable = swift_getWitnessTable();
  sub_1C99E18B0();
  v23 = swift_getWitnessTable();
  v80 = v20;
  v81 = v21;
  v82 = WitnessTable;
  v83 = v23;
  v24 = sub_1C9A91C68();
  sub_1C99E1898();
  v25 = swift_getWitnessTable();
  v80 = v24;
  v81 = v18;
  v82 = v25;
  v83 = AssociatedConformanceWitness;
  v26 = sub_1C9A91C18();
  sub_1C99E1868();
  v27 = swift_getWitnessTable();
  v65 = v13;
  v67 = swift_getWitnessTable();
  v80 = v26;
  v81 = v13;
  v82 = v27;
  v83 = v67;
  v28 = sub_1C9A91CC8();
  sub_1C99E1850();
  v29 = swift_getWitnessTable();
  v80 = v28;
  v81 = AssociatedTypeWitness;
  v82 = v18;
  v83 = v29;
  v64 = type metadata accessor for ExpandResult(0, &v80);
  sub_1C97AE9DC();
  v66 = v30;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v31);
  v62 = &v59 - v32;
  v33 = v11;
  v61 = v11[4];
  v34 = v61;
  v60 = swift_allocBox();
  v35 = v77;
  (*(v77 + *(v11 + 16)))();
  v36 = v71;
  v37 = v63;
  (*(v71 + 16))(v63, v35, v11);
  v38 = v36;
  v39 = (*(v36 + 80) + 72) & ~*(v36 + 80);
  v40 = (v72 + v39 + 7) & 0xFFFFFFFFFFFFFFF8;
  v41 = swift_allocObject();
  v43 = v68;
  v42 = v69;
  *(v41 + 2) = v69;
  *(v41 + 3) = v43;
  v44 = v78;
  v45 = v79;
  *(v41 + 4) = v34;
  *(v41 + 5) = v45;
  v46 = v70;
  *(v41 + 6) = v70;
  *(v41 + 7) = v44;
  v47 = v74;
  *(v41 + 8) = v74;
  (*(v38 + 32))(&v41[v39], v37, v33);
  *&v41[v40] = v60;

  v48 = v73;
  v49 = v77;
  sub_1C9A91F68();

  v50 = *(v49 + *(v33 + 17));
  v51 = swift_allocObject();
  v51[2] = v42;
  v51[3] = v43;
  v52 = v78;
  v53 = v79;
  v51[4] = v61;
  v51[5] = v53;
  v51[6] = v46;
  v51[7] = v52;
  v51[8] = v47;
  v54 = v62;
  v55 = v50;
  v56 = v65;
  sub_1C9911534(v55, sub_1C99E15D4, v51, v65, v43, v67, v52, v62);

  (*(v75 + 8))(v48, v56);
  sub_1C99E1880();
  v57 = v64;
  swift_getWitnessTable();
  sub_1C9A920B8();
  (*(v66 + 8))(v54, v57);
}

uint64_t sub_1C99E0AE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v15 = swift_projectBox();
  v18[0] = a4;
  v18[1] = a5;
  v18[2] = a6;
  v18[3] = a8;
  v18[4] = a9;
  v16 = *(a2 + *(_s15StatefulFlatMapVMa(0, v18) + 60));
  swift_beginAccess();
  v16(a1, v15);
  return swift_endAccess();
}

uint64_t sub_1C99E0BBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v80 = a3;
  v81 = a4;
  v79 = a1;
  v74 = a2;
  v6 = a2 - 8;
  v69 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v67 = v7;
  v65 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v6 + 32);
  v9 = *(v6 + 48);
  v70 = *(v6 + 24);
  v72 = v9;
  v10 = sub_1C9A91CB8();
  sub_1C97AE9DC();
  v76 = v11;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v12);
  v73 = &v61 - v13;
  v14 = sub_1C97AA4F0(&unk_1EC3CA040, &qword_1C9A9C750);
  v15 = *(v6 + 56);
  v82 = v8;
  v83 = v14;
  v16 = MEMORY[0x1E69E7288];
  v84 = v15;
  v85 = MEMORY[0x1E69E7288];
  sub_1C99E18C8();
  v17 = sub_1C9A91CD8();
  v78 = v15;
  v71 = v8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1C9A93D88();
  WitnessTable = swift_getWitnessTable();
  v68 = v17;
  v66 = WitnessTable;
  v20 = sub_1C9A91C58();
  v21 = sub_1C9A91E98();
  v22 = swift_getWitnessTable();
  sub_1C99E18B0();
  v23 = swift_getWitnessTable();
  v82 = v20;
  v83 = v21;
  v84 = v22;
  v85 = v23;
  sub_1C99E18C8();
  v24 = sub_1C9A91C68();
  sub_1C99E1898();
  v25 = swift_getWitnessTable();
  v82 = v24;
  v83 = v14;
  v84 = v25;
  v85 = v16;
  sub_1C99E18C8();
  v26 = sub_1C9A91C18();
  sub_1C99E1868();
  v27 = swift_getWitnessTable();
  v28 = swift_getWitnessTable();
  v82 = v26;
  v83 = v10;
  v75 = v10;
  v84 = v27;
  v85 = v28;
  sub_1C99E18C8();
  v29 = sub_1C9A91CC8();
  sub_1C99E1850();
  v30 = swift_getWitnessTable();
  v82 = v29;
  v83 = AssociatedTypeWitness;
  v84 = v14;
  v85 = v30;
  v31 = type metadata accessor for ExpandResult(0, &v82);
  sub_1C97AE9DC();
  v33 = v32;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v61 - v35;
  v77 = *(v6 + 40);
  v37 = swift_allocBox();
  (*(v5 + *(v6 + 72)))();
  v64 = v28;
  v38 = v69;
  v39 = *(v69 + 16);
  v62 = v36;
  v40 = v65;
  v61 = v5;
  v41 = v74;
  v39(v65, v5, v74);
  v42 = (*(v38 + 80) + 72) & ~*(v38 + 80);
  v43 = (v67 + v42 + 7) & 0xFFFFFFFFFFFFFFF8;
  v44 = swift_allocObject();
  v45 = v70;
  v67 = v33;
  v46 = v71;
  *(v44 + 2) = v70;
  *(v44 + 3) = v46;
  v47 = v80;
  *(v44 + 4) = v77;
  *(v44 + 5) = v47;
  v63 = v31;
  v48 = v72;
  v49 = v78;
  *(v44 + 6) = v72;
  *(v44 + 7) = v49;
  *(v44 + 8) = v81;
  (*(v38 + 32))(&v44[v42], v40, v41);
  *&v44[v43] = v37;

  v50 = v73;
  v51 = v61;
  sub_1C9A92048();

  v52 = *(v51 + *(v41 + 68));
  v53 = swift_allocObject();
  v53[2] = v45;
  v53[3] = v46;
  v54 = v78;
  v56 = v80;
  v55 = v81;
  v53[4] = v77;
  v53[5] = v56;
  v53[6] = v48;
  v53[7] = v54;
  v53[8] = v55;
  v57 = v62;
  v58 = v75;
  sub_1C9911534(v52, sub_1C99E1818, v53, v75, v68, v64, v66, v62);

  (*(v76 + 8))(v50, v58);
  sub_1C99E1880();
  v59 = v63;
  swift_getWitnessTable();
  sub_1C9A920B8();
  (*(v67 + 8))(v57, v59);
}

uint64_t sub_1C99E1198(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v15 = swift_projectBox();
  v18[0] = a4;
  v18[1] = a5;
  v18[2] = a6;
  v18[3] = a8;
  v18[4] = a9;
  v16 = *(a2 + *(_s18StatefulTryFlatMapVMa(0, v18) + 60));
  swift_beginAccess();
  v16(a1, v15);
  return swift_endAccess();
}

uint64_t sub_1C99E1268(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = swift_allocObject();
  v15[2] = a2;
  v15[3] = a3;
  v15[4] = a4;
  v15[5] = a5;
  v15[6] = a6;
  v15[7] = a7;
  v15[8] = a8;
  sub_1C97A2CEC(&unk_1EC3CA040, &qword_1C9A9C750);
  sub_1C9A920A8();
}

uint64_t sub_1C99E1350@<X0>(uint64_t a1@<X0>, uint64_t *a4@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v9 = &v14 - v8;
  (*(v7 + 16))(&v14 - v8, a1, AssociatedTypeWitness);
  swift_getAssociatedConformanceWitness();
  v10 = sub_1C9A93AE8();
  if (v10)
  {
    v11 = v10;
    result = (*(v7 + 8))(v9, AssociatedTypeWitness);
  }

  else
  {
    v11 = swift_allocError();
    result = (*(v7 + 32))(v13, v9, AssociatedTypeWitness);
  }

  *a4 = v11;
  return result;
}

uint64_t sub_1C99E14E8(uint64_t a1)
{
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v12[0] = v1[2];
  v3 = v12[0];
  v12[1] = v4;
  v12[2] = v5;
  v12[3] = v7;
  v12[4] = v8;
  _s15StatefulFlatMapVMa(0, v12);
  sub_1C99C741C();
  return sub_1C99E0AE4(a1, v1 + v9, v10, v3, v4, v5, v6, v7, v8);
}

uint64_t sub_1C99E1608(uint64_t (*a1)(void, __int128 *))
{
  v2 = *(v1 + 32);
  v6 = *(v1 + 16);
  v5 = v6;
  v7 = v2;
  v8 = *(v1 + 48);
  v3 = *(a1(0, &v6) - 8);
  (*(*(v5 - 8) + 8))(v1 + ((*(v3 + 80) + 72) & ~*(v3 + 80)));

  return swift_deallocObject();
}

uint64_t sub_1C99E1734(uint64_t a1)
{
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v7 = v1[6];
  v6 = v1[7];
  v12[0] = v1[2];
  v2 = v12[0];
  v12[1] = v3;
  v12[2] = v4;
  v12[3] = v7;
  v12[4] = v6;
  _s18StatefulTryFlatMapVMa(0, v12);
  sub_1C99C741C();
  return sub_1C99E1198(a1, v1 + v8, v9, v2, v3, v4, v5, v7, v6);
}

unint64_t sub_1C99E18D4(uint64_t a1)
{
  result = sub_1C98CB4F8();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1C99E18FC(uint64_t a1)
{
  result = sub_1C98DD970();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1C99E1924(uint64_t a1)
{
  result = sub_1C9901E70(&unk_1EC3CBB50, MEMORY[0x1E69695B0]);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1C99E1968(uint64_t a1)
{
  result = sub_1C9901E70(&qword_1EC3CDFB0, MEMORY[0x1E69695D0]);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1C99E19AC(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C99E19FC(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C99E1A4C(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C99E1A9C(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C99E1B44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1C99E1BAC()
{
  sub_1C97AA884();
  v0[3] = v1;
  v0[4] = v2;
  v0[2] = v3;
  v4 = sub_1C9A93258();
  v0[5] = v4;
  v0[6] = *(v4 - 8);
  v0[7] = swift_task_alloc();
  v5 = swift_task_alloc();
  v0[8] = v5;
  *v5 = v0;
  v5[1] = sub_1C99E1CA0;

  return sub_1C988FC80();
}

uint64_t sub_1C99E1CA0(uint64_t a1)
{
  sub_1C97AA890();
  v5 = v4;
  v6 = *v2;
  sub_1C97AA83C();
  *v7 = v6;
  *(v5 + 72) = a1;

  if (v1)
  {

    v8 = *(v6 + 8);

    return v8();
  }

  else
  {
    v10 = swift_task_alloc();
    *(v5 + 80) = v10;
    *v10 = v6;
    v10[1] = sub_1C99E1E30;

    return sub_1C9A22B84();
  }
}

uint64_t sub_1C99E1E30(char a1)
{
  sub_1C97AA890();
  v5 = v4;
  v6 = *v2;
  sub_1C97AA83C();
  *v7 = v6;
  *(v5 + 88) = v1;

  if (v1)
  {
    v8 = sub_1C99E2208;
  }

  else
  {
    *(v5 + 112) = a1 & 1;
    v8 = sub_1C99E1F50;
  }

  return MEMORY[0x1EEE6DFA0](v8, 0, 0);
}

uint64_t sub_1C99E1F50()
{
  sub_1C97AA884();
  if (*(v0 + 112) == 1)
  {
    v1 = swift_task_alloc();
    *(v0 + 96) = v1;
    *v1 = v0;
    v1[1] = sub_1C99E2050;

    return sub_1C988FFB8();
  }

  else
  {
    v3 = *(v0 + 16);
    v4 = *(v0 + 24);

    sub_1C97ACC50(v3, 1, 1, v4);

    sub_1C97DA91C();

    return v5();
  }
}

uint64_t sub_1C99E2050()
{
  sub_1C97AA884();
  sub_1C97AA890();
  v2 = *v1;
  sub_1C97AA83C();
  *v3 = v2;
  *(v4 + 104) = v0;

  if (v0)
  {
    v5 = sub_1C99E226C;
  }

  else
  {
    v5 = sub_1C99E2154;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1C99E2154()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  v5 = v0[2];
  v4 = v0[3];

  sub_1C97ACC50(v1, 0, 1, v4);
  (*(v2 + 32))(v5, v1, v3);

  sub_1C97DA91C();

  return v6();
}

uint64_t sub_1C99E2208()
{
  sub_1C97AA884();

  sub_1C97DA91C();

  return v0();
}

uint64_t sub_1C99E226C()
{
  sub_1C97AA884();

  sub_1C97DA91C();

  return v0();
}

uint64_t sub_1C99E22D0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C97D9C3C;

  return sub_1C99E1BAC();
}

uint64_t sub_1C99E2388(uint64_t a1, uint64_t a2, _UNKNOWN **a3)
{
  v24 = a3;
  v6 = *(a2 + 16);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](a1);
  v10 = &v21[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v14 = &v21[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C99DC5A4();
  (*(v12 + 16))(v14, v3, a2);
  if (sub_1C97ABF20(v14, 1, v6) == 1)
  {
    v22 = MEMORY[0x1E69E6370];
    v23 = &off_1F494A970;
    LOBYTE(v21[0]) = 0;
    sub_1C99DC674(v21, v15);
  }

  else
  {
    v16 = (*(v7 + 32))(v10, v14, v6);
    v22 = MEMORY[0x1E69E6370];
    v23 = &off_1F494A970;
    LOBYTE(v21[0]) = 1;
    sub_1C99DC674(v21, v16);
    if (!v4)
    {
      sub_1C97A592C(v21);
      v22 = v6;
      v23 = v24;
      v17 = sub_1C981CDF0(v21);
      v18 = (*(v7 + 16))(v17, v10, v6);
      sub_1C99DC674(v21, v18);
    }

    (*(v7 + 8))(v10, v6);
  }

  return sub_1C97A592C(v21);
}

uint64_t sub_1C99E2600(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = v3;
  sub_1C97BD360(a2, v9);
  if (swift_dynamicCast())
  {
    v5 = a3(a1);
  }

  else
  {
    sub_1C97E78C8();
    swift_allocError();
    *v7 = 6;
    swift_willThrow();
  }

  return v5;
}

uint64_t sub_1C99E26D8(uint64_t result, uint64_t a2)
{
  if (*(result + 16) <= a2)
  {
    sub_1C97E78C8();
    swift_allocError();
    *v2 = 5;
    return swift_willThrow();
  }

  else if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    return *(result + 16 * a2 + 32);
  }

  return result;
}

id sub_1C99E274C(uint64_t a1, uint64_t a2)
{
  if (sub_1C97BDEE0() <= a2)
  {
    sub_1C97E78C8();
    swift_allocError();
    *v5 = 5;
    return swift_willThrow();
  }

  else
  {
    sub_1C97C4F68();
    if ((a1 & 0xC000000000000001) != 0)
    {
      return MEMORY[0x1CCA912B0](a2, a1);
    }

    else
    {
      return *(a1 + 8 * a2 + 32);
    }
  }
}

void sub_1C99E27F4(void *a1)
{
  v3 = sub_1C98967EC(a1, *(v1 + OBJC_IVAR____SNLogMelSpectrogramCustomModel_inputFeatureName), *(v1 + OBJC_IVAR____SNLogMelSpectrogramCustomModel_inputFeatureName + 8));
  if (!v2)
  {
    v4 = v3;
    v5 = [v3 multiArrayValue];
    if (!v5)
    {
      sub_1C97A8E8C();
      swift_allocError();
      *v32 = 0;
      swift_willThrow();

      return;
    }

    v6 = v5;

    v7 = [v6 shape];
    sub_1C97BD318(v8, 0, &qword_1EC3C54B0, 0x1E696AD98);
    v9 = sub_1C9A92798();

    sub_1C97C4F68();
    if ((v9 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x1CCA912B0](0, v9);
    }

    else
    {
      v10 = *(v9 + 32);
    }

    v11 = v10;

    v58 = [v11 integerValue];

    v12 = [v6 shape];
    v13 = sub_1C9A92798();

    v14 = [v6 shape];
    sub_1C9A92798();

    v15 = sub_1C97BDEE0();

    if (__OFSUB__(v15, 1))
    {
      __break(1u);
    }

    else
    {
      sub_1C97C4F68();
      if ((v13 & 0xC000000000000001) == 0)
      {
        v16 = *(v13 + 8 * (v15 - 1) + 32);
        goto LABEL_8;
      }
    }

    v16 = MEMORY[0x1CCA912B0](v15 - 1, v13);
LABEL_8:
    v17 = v16;

    v18 = [v17 integerValue];

    if ((v18 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (!HIDWORD(v18))
    {
      v62 = v6;
      v19 = v1 + OBJC_IVAR____SNLogMelSpectrogramCustomModel_logMelExtractionParameters;
      v20 = *(v1 + OBJC_IVAR____SNLogMelSpectrogramCustomModel_logMelExtractionParameters);
      v21 = *(v1 + OBJC_IVAR____SNLogMelSpectrogramCustomModel_logMelExtractionParameters + 4);
      *&v61[8] = *(v1 + OBJC_IVAR____SNLogMelSpectrogramCustomModel_logMelExtractionParameters + 8);
      *&v61[24] = *(v1 + OBJC_IVAR____SNLogMelSpectrogramCustomModel_logMelExtractionParameters + 24);
      *&v61[36] = *(v1 + OBJC_IVAR____SNLogMelSpectrogramCustomModel_logMelExtractionParameters + 36);
      *v61 = v20;
      *&v61[4] = v21;
      v56 = v18;
      v22 = sub_1C9A6864C(v18, v61);
      v23 = v22;
      v24 = v21 * v22;
      if ((v21 * v22) >> 64 == v24 >> 63)
      {
        sub_1C97A2CEC(&qword_1EC3C7C70, &qword_1C9A9D640);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1C9A9FB90;
        *(inited + 32) = v58;
        *(inited + 40) = 1;
        *(inited + 48) = v21;
        *(inited + 56) = v23;
        v26 = swift_initStackObject();
        *(v26 + 16) = xmmword_1C9A9FB90;
        *(v26 + 32) = v24;
        *(v26 + 40) = v24;
        *(v26 + 48) = 1;
        *(v26 + 56) = v21;
        sub_1C998FD90(v26, inited);
        if ((v27 - 0x2000000000000000) >> 62 == 3)
        {
          v28 = v27;
          v29 = swift_slowAlloc();
          v30 = swift_allocObject();
          v30[2] = v29;
          v30[3] = v29 + 4 * v28;
          v31 = sub_1C998FFA8(v29, inited, 65568, v26, sub_1C9951110, v30);

          swift_setDeallocating();
          swift_setDeallocating();
          v33 = [v62 strides];
          v34 = sub_1C9A92798();

          v35 = sub_1C99E274C(v34, 0);

          sub_1C999C264();
          LODWORD(v34) = [v35 intValue];

          v36 = [v31 strides];
          v37 = sub_1C9A92798();

          v38 = sub_1C99E274C(v37, 0);

          v39 = v34;
          sub_1C999C264();
          v57 = [v38 intValue];

          v40 = v62;
          v41 = [v62 dataPointer];
          [v40 count];
          v42 = [v31 dataPointer];
          [v31 count];
          if ((v58 & 0x8000000000000000) != 0)
          {
LABEL_31:
            __break(1u);
            return;
          }

          if (!v58)
          {
LABEL_21:
            sub_1C97A2CEC(&qword_1EC3C6C28, &qword_1C9A9D5F0);
            v49 = swift_initStackObject();
            *(v49 + 16) = xmmword_1C9A9EDD0;
            v50 = *(v1 + OBJC_IVAR____SNLogMelSpectrogramCustomModel_outputFeatureName);
            v51 = *(v1 + OBJC_IVAR____SNLogMelSpectrogramCustomModel_outputFeatureName + 8);
            *(v49 + 32) = v50;
            *(v49 + 40) = v51;
            v52 = objc_opt_self();

            *(v49 + 48) = [v52 featureValueWithMultiArray_];
            sub_1C97BD318(v53, 0, &qword_1EC3C54F8, 0x1E695FE60);
            sub_1C9A92348();
            v54 = sub_1C9878610();

            v55 = objc_allocWithZone(MEMORY[0x1E695FE48]);
            sub_1C98B6EC8(v54);

            return;
          }

          v43 = v39;
          v44 = 0;
          v45 = v43;
          v46 = *(v19 + 16);
          *v61 = *v19;
          *&v61[16] = v46;
          *&v61[32] = *(v19 + 32);
          *&v61[48] = *(v19 + 48);
          while (1)
          {
            v47 = v45 * v44;
            if ((v45 * v44) >> 64 != (v45 * v44) >> 63)
            {
              break;
            }

            v48 = v57 * v44;
            if ((v57 * v44) >> 64 != v48 >> 63)
            {
              goto LABEL_30;
            }

            ++v44;
            v59[0] = *v61;
            v59[1] = *&v61[16];
            v59[2] = *&v61[32];
            v60 = *&v61[48];
            sub_1C9A692A0(v42 + 4 * v48, v41 + 4 * v47, v56, v59);
            if (v58 == v44)
            {
              goto LABEL_21;
            }
          }

LABEL_29:
          __break(1u);
LABEL_30:
          __break(1u);
          goto LABEL_31;
        }

LABEL_28:
        __break(1u);
        goto LABEL_29;
      }

LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    __break(1u);
    goto LABEL_27;
  }
}

uint64_t sub_1C99E2EE8()
{
  type metadata accessor for SNLogMelType(0);
  result = sub_1C9A92348();
  qword_1EC3D3460 = result;
  return result;
}

uint64_t sub_1C99E2F2C()
{
  type metadata accessor for SNLogMelSpectrumNormalizationStrategy(0);
  result = sub_1C9A92348();
  qword_1EC3D3468 = result;
  return result;
}

uint64_t sub_1C99E2F70()
{
  sub_1C97A2CEC(&qword_1EC3D0A68, &qword_1C9AC7B50);
  result = sub_1C9A92348();
  qword_1EC3D3470 = result;
  return result;
}

void sub_1C99E2FC0(uint64_t a1, uint64_t a2)
{
  sub_1C99E3F04(a1, a2);
  if (!v3)
  {
    sub_1C99E3EF8();
    sub_1C999C604();
    [v4 doubleValue];
    v6 = v5;

    v7 = v6;
    *v2 = v7;
  }
}

void sub_1C99E3034(uint64_t a1, uint64_t a2)
{
  sub_1C99E3F04(a1, a2);
  if (!v3)
  {
    sub_1C99E3EF8();
    sub_1C999C360();
    v5 = [v4 unsignedIntValue];

    *(v2 + 4) = v5;
  }
}

void sub_1C99E309C(uint64_t a1, uint64_t a2)
{
  sub_1C99E3F04(a1, a2);
  if (!v3)
  {
    sub_1C99E3EF8();
    sub_1C999C604();
    [v4 doubleValue];
    v6 = v5;

    v7 = v6;
    *(v2 + 8) = v7;
  }
}

void sub_1C99E3110(uint64_t a1, uint64_t a2)
{
  sub_1C99E3F04(a1, a2);
  if (!v3)
  {
    sub_1C99E3EF8();
    sub_1C999C604();
    [v4 doubleValue];
    v6 = v5;

    v7 = v6;
    *(v2 + 12) = v7;
  }
}

uint64_t sub_1C99E3184(uint64_t a1, uint64_t a2)
{
  if (qword_1EC3C5E10 != -1)
  {
    swift_once();
  }

  result = sub_1C99E2600(qword_1EC3D3460, a2, sub_1C9A066A8);
  if (!v2)
  {
    *(a1 + 16) = result;
  }

  return result;
}

uint64_t sub_1C99E3214(uint64_t a1, uint64_t a2)
{
  if (qword_1EC3C5E18 != -1)
  {
    swift_once();
  }

  result = sub_1C99E2600(qword_1EC3D3468, a2, sub_1C9A066A8);
  if (!v2)
  {
    *(a1 + 48) = result;
  }

  return result;
}

void sub_1C99E32A4(uint64_t a1, uint64_t a2)
{
  sub_1C99E3F04(a1, a2);
  if (!v3)
  {
    sub_1C99E3EF8();
    sub_1C999C360();
    v5 = [v4 unsignedIntValue];

    *(v2 + 28) = v5;
  }
}

void sub_1C99E330C(uint64_t a1, uint64_t a2)
{
  sub_1C99E3F04(a1, a2);
  if (!v3)
  {
    sub_1C99E3EF8();
    sub_1C999C360();
    v5 = [v4 unsignedIntValue];

    *(v2 + 32) = v5;
  }
}

void sub_1C99E3374(uint64_t a1, uint64_t a2)
{
  sub_1C99E3F04(a1, a2);
  if (!v3)
  {
    sub_1C99E3EF8();
    sub_1C999C360();
    v5 = [v4 unsignedIntValue];

    *(v2 + 36) = v5;
  }
}

void sub_1C99E33DC(uint64_t a1, uint64_t a2)
{
  sub_1C99E3F04(a1, a2);
  if (!v3)
  {
    sub_1C99E3EF8();
    sub_1C999C360();
    v5 = [v4 unsignedIntValue];

    *(v2 + 40) = v5;
  }
}

void sub_1C99E3444(uint64_t a1, uint64_t a2)
{
  sub_1C99E3F04(a1, a2);
  if (!v3)
  {
    sub_1C99E3EF8();
    sub_1C999C264();
    v5 = [v4 intValue];

    *(v2 + 44) = v5;
  }
}

uint64_t sub_1C99E34AC@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a1[1];
  v34 = *a1;
  v35 = v4;
  v36 = a1[2];
  v37 = *(a1 + 12);
  v5 = a2 + 64;
  v6 = 1 << *(a2 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a2 + 64);
  v9 = (v6 + 63) >> 6;

  v11 = 0;
  if (v8)
  {
    while (1)
    {
      v12 = v11;
LABEL_9:
      v13 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      v14 = v13 | (v12 << 6);
      v15 = (*(a2 + 48) + 16 * v14);
      v17 = *v15;
      v16 = v15[1];
      sub_1C97BD360(*(a2 + 56) + 32 * v14, v28);
      *&v29 = v17;
      *(&v29 + 1) = v16;
      sub_1C97A2D34(v28, &v30);

LABEL_10:
      v32 = v29;
      v33[0] = v30;
      v33[1] = v31;
      v18 = *(&v29 + 1);
      if (!*(&v29 + 1))
      {
        break;
      }

      v19 = v32;
      sub_1C97A2D34(v33, &v29);
      if (qword_1EC3C5E20 != -1)
      {
        swift_once();
      }

      v20 = qword_1EC3D3470;
      if (*(qword_1EC3D3470 + 16))
      {
        v21 = sub_1C9A32230(v19, v18);
        v23 = v22;

        if (v23)
        {
          v24 = *(*(v20 + 56) + 16 * v21);

          v25 = v38;
          v24(&v34, &v29);

          v38 = v25;
          if (v25)
          {

            return sub_1C97A592C(&v29);
          }
        }
      }

      else
      {
      }

      result = sub_1C97A592C(&v29);
      if (!v8)
      {
        goto LABEL_5;
      }
    }

    v26 = v35;
    *a3 = v34;
    *(a3 + 16) = v26;
    *(a3 + 32) = v36;
    *(a3 + 48) = v37;
  }

  else
  {
LABEL_5:
    while (1)
    {
      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v12 >= v9)
      {
        v8 = 0;
        v30 = 0u;
        v31 = 0u;
        v29 = 0u;
        goto LABEL_10;
      }

      v8 = *(v5 + 8 * v12);
      ++v11;
      if (v8)
      {
        v11 = v12;
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1C99E36FC(uint64_t a1, double a2)
{
  if (*(a1 + 40) > 0xFDu)
  {
    goto LABEL_15;
  }

  if (*(a1 + 40) || *(a1 + 24) != 1)
  {
    goto LABEL_15;
  }

  v4 = *(a1 + 32);
  if (*(v4 + 16) != 3)
  {
    goto LABEL_15;
  }

  result = sub_1C99E26D8(v4, 1);
  if (v2)
  {
    return result;
  }

  if (result == v6)
  {
    __break(1u);
    goto LABEL_18;
  }

  if (__OFSUB__(v6, 1))
  {
LABEL_18:
    __break(1u);
    return result;
  }

  if (result != 1 || v6 != 2)
  {
LABEL_15:
    type metadata accessor for SNError(a2);
    sub_1C98573F8();
    sub_1C9820900(v9, v8 + 51, v10);
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1C99E37B4(uint64_t a1, uint64_t a2, double a3)
{
  if (*(a1 + 40) > 0xFDu)
  {
    goto LABEL_15;
  }

  if (*(a1 + 40) || *(a1 + 24) != 1)
  {
    goto LABEL_15;
  }

  v5 = *(a1 + 32);
  if (*(v5 + 16) != 4)
  {
    goto LABEL_15;
  }

  result = sub_1C99E26D8(*(a1 + 32), 1);
  if (v3)
  {
    return result;
  }

  if (result == v8)
  {
    __break(1u);
    goto LABEL_26;
  }

  if (__OFSUB__(v8, 1))
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (result != 1 || v8 != 2)
  {
    goto LABEL_15;
  }

  result = sub_1C99E26D8(v5, 2);
  if (result == v13)
  {
    goto LABEL_27;
  }

  if (__OFSUB__(v13, 1))
  {
LABEL_28:
    __break(1u);
    return result;
  }

  if (result != a2 || v13 - 1 != a2)
  {
LABEL_15:
    type metadata accessor for SNError(a3);
    sub_1C98573F8();
    sub_1C9820900(v11, v10 + 141, v12);
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1C99E38BC(void *a1, uint64_t a2)
{
  v5 = sub_1C989687C(a1);
  if (!v3)
  {
    v7 = v6;
    sub_1C985B8B0(v5, v11);
    sub_1C985B8B0(v7, v13);

    sub_1C99E36FC(v11, v9);
    sub_1C99E37B4(v13, *(a2 + 4), v10);
    v2 = v11[0];
    v17 = *&v13[3];
    v18 = v14;
    sub_1C98973C4(&v17);
    v15 = *&v11[3];
    v16 = v12;
    sub_1C98973C4(&v15);
  }

  return v2;
}

char *sub_1C99E3AB8(char *a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  *&v10 = 0x40467A0000;
  *(&v10 + 1) = 0x45F8700042480000;
  v11 = 0x38D1B71700000001;
  v12 = 1;
  v13 = xmmword_1C9ABD5F0;
  v14 = 0x100000000;
  sub_1C99E34AC(&v10, a2, v9);
  if (v2)
  {

    v6 = swift_getObjectType();
    sub_1C99E3F1C(v6);
  }

  else
  {

    objc_allocWithZone(ObjectType);
    a1 = sub_1C99E3C88(a1, v9);
    v8 = swift_getObjectType();
    sub_1C99E3F1C(v8);
  }

  return a1;
}

char *sub_1C99E3C88(void *a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v7 = &v2[OBJC_IVAR____SNLogMelSpectrogramCustomModel_logMelExtractionParameters];
  v8 = *(a2 + 16);
  *v7 = *a2;
  *(v7 + 1) = v8;
  *(v7 + 2) = *(a2 + 32);
  *(v7 + 12) = *(a2 + 48);
  v9 = sub_1C99E38BC(a1, a2);
  if (v3)
  {

    swift_deallocPartialClassInstance();
  }

  else
  {
    v13 = &v2[OBJC_IVAR____SNLogMelSpectrogramCustomModel_inputFeatureName];
    *v13 = v9;
    v13[1] = v10;
    v14 = &v2[OBJC_IVAR____SNLogMelSpectrogramCustomModel_outputFeatureName];
    *v14 = v11;
    *(v14 + 1) = v12;
    v16.receiver = v2;
    v16.super_class = ObjectType;
    v2 = objc_msgSendSuper2(&v16, sel_init);
  }

  return v2;
}

uint64_t sub_1C99E3F04(uint64_t a1, uint64_t a2)
{

  return sub_1C98059FC(a2);
}

uint64_t sub_1C99E3F1C(uint64_t a1)
{

  return swift_deallocPartialClassInstance();
}

void *sub_1C99E3F3C(__int128 *a1)
{
  v3 = sub_1C97A2CEC(&qword_1EC3D0A78, &unk_1C9AC7B58);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v21 - v5;
  v8 = objc_allocWithZone(type metadata accessor for SNCreateFeaturePrintRequest(v7));
  v9 = sub_1C997DE68(6, 7);
  if (!v1)
  {
    v10 = v9;
    v11 = sub_1C997E598(a1);
    sub_1C97F07FC();
    v12 = swift_allocObject();
    *(v12 + 16) = 0;
    v21 = (v12 + 16);
    sub_1C97F07FC();
    v13 = swift_allocObject();
    *(v13 + 16) = 0;
    v22 = (v13 + 16);
    v23[0] = v11;
    v24 = v11;
    sub_1C97A2CEC(&unk_1EC3D0A80, &qword_1C9AB34D8);
    sub_1C97AE67C(&unk_1EC3C4A80, &unk_1EC3D0A80, &qword_1C9AB34D8, MEMORY[0x1E695BED8]);
    sub_1C9A91FD8();
    sub_1C97AE67C(qword_1EC3D0A90, &qword_1EC3D0A78, &unk_1C9AC7B58, MEMORY[0x1E695BDB8]);

    sub_1C9A91FB8();

    (*(v4 + 8))(v6, v3);
    v14 = v22;
    swift_beginAccess();
    v8 = *v14;
    if (!v8)
    {
      v16 = v21;
      swift_beginAccess();
      v8 = *v16;
      if (v8)
      {
        v17 = v8[2];
        if (v17 == 512)
        {

          return v8;
        }

        sub_1C99E4628();
        swift_allocError();
        *v18 = v17;
        *(v18 + 8) = 0;
        v19 = 1;
      }

      else
      {
        sub_1C99E4628();
        swift_allocError();
        *v18 = xmmword_1C9A9C440;
        v19 = 3;
      }

      *(v18 + 16) = v19;
      swift_willThrow();

      return v8;
    }

    swift_willThrow();
    v15 = v8;
  }

  return v8;
}

void sub_1C99E42EC(void **a1, uint64_t a2)
{
  v2 = *a1;
  if (*a1)
  {
    swift_beginAccess();
    v4 = *(a2 + 16);
    *(a2 + 16) = v2;
    v5 = v2;
  }
}

void *sub_1C99E4350(uint64_t *a1, uint64_t a2, double a3)
{
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    v5 = result;
    swift_unknownObjectRetain();
    v6 = [v5 featureVector];
    v7 = sub_1C9990AE8();

    swift_unknownObjectRelease();
    swift_beginAccess();
    *(a2 + 16) = v7;
  }

  return result;
}

id sub_1C99E43FC(double a1)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v10[0] = 0;
  v1 = [objc_opt_self() createForRevision:11 error:v10];
  v2 = v10[0];
  if (v1)
  {
    v3 = v1;
    v4 = objc_allocWithZone(MEMORY[0x1E6999160]);
    v5 = v2;
    v2 = [v4 initWithConfiguration_];
    v10[0] = 0;
    if ([v2 loadResources_])
    {
      v6 = v10[0];
    }

    else
    {
      v8 = v10[0];
      sub_1C9A913C8();

      swift_willThrow();
    }
  }

  else
  {
    v7 = v10[0];
    sub_1C9A913C8();

    swift_willThrow();
  }

  return v2;
}

unint64_t sub_1C99E4540(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1C9A92478();
  [a3 runOnInputText:v4 error:0];

  v5 = [a3 inferenceOutputs];
  v6 = [v5 CSUTextEmbedding];

  v7 = sub_1C9990AE8();
  v8 = *(v7 + 16);
  if (v8 != 512)
  {

    sub_1C99E4628();
    swift_allocError();
    *v9 = v8;
    *(v9 + 8) = 0;
    *(v9 + 16) = 2;
    swift_willThrow();
  }

  return v7;
}

unint64_t sub_1C99E4628()
{
  result = qword_1EC3D0A70;
  if (!qword_1EC3D0A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D0A70);
  }

  return result;
}

double sub_1C99E46D0()
{
  v0 = swift_allocObject();
  result = 0.0;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  return result;
}

uint64_t sub_1C99E4700(uint64_t a1, uint64_t a2)
{
  v3 = swift_allocObject();
  sub_1C99E4960(a1);
  return v3;
}

uint64_t sub_1C99E4750(void *a1)
{
  sub_1C97D9AF8(a1, v4);
  swift_beginAccess();
  sub_1C9830DE8(v4, v1 + 16);
  swift_endAccess();
  sub_1C97A5A8C(a1, a1[3]);
  sub_1C9A91D88();
  return sub_1C9A91DB8();
}

uint64_t sub_1C99E47D4()
{
  v3 = 0;
  memset(v2, 0, sizeof(v2));
  swift_beginAccess();
  sub_1C9830DE8(v2, v0 + 16);
  return swift_endAccess();
}

uint64_t sub_1C99E4824()
{
  sub_1C9831018(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_1C99E4874(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

char *sub_1C99E4960(uint64_t a1)
{
  v2 = *v1;
  *(v1 + 2) = a1;
  (*(*(*(v2 + 96) - 8) + 32))(&v1[*(v2 + 136)]);
  return v1;
}

char *sub_1C99E49D4()
{
  v1 = *v0;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v3 = sub_1C9A91D48();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8 - v5;
  sub_1C97ACC50(&v8 - v5, 1, 1, AssociatedTypeWitness);

  sub_1C9A91DF8();

  (*(v4 + 8))(v6, v3);

  (*(*(*(v1 + 96) - 8) + 8))(v0 + *(*v0 + 136));
  return v0;
}

uint64_t sub_1C99E4BA4()
{
  sub_1C99E49D4();

  return swift_deallocClassInstance();
}

uint64_t sub_1C99E4C78()
{
  sub_1C99E4E10();
  sub_1C9A91E08();
  return sub_1C9A91D28();
}

uint64_t sub_1C99E4CEC()
{
  sub_1C99E4E10();
  sub_1C9A91DF8();
  return sub_1C9A91D08();
}

uint64_t sub_1C99E4E24(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C99E4EC4()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 96));
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1C99E4F3C()
{
  sub_1C99E4EC4();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1C99E4FB8()
{
  v0 = sub_1C981DF74();
  sub_1C97A8F30(v0, v1, v2, v3);
  v4 = sub_1C981DF74();

  return v5(v4);
}

uint64_t sub_1C99E5034(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  sub_1C97A83D4(a6);
  sub_1C97A8BD4(a2, a3, a4, a5);
}

uint64_t sub_1C99E50A8()
{
  sub_1C97AA884();
  v2 = v1;
  *(v0 + 16) = v3;
  v4 = swift_task_alloc();
  *(v0 + 24) = v4;
  *v4 = v0;
  sub_1C97DA950(v4);

  return sub_1C99E4F98(v2);
}

uint64_t sub_1C99E5158()
{
  sub_1C97AA884();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  sub_1C97DA950(v1);

  return sub_1C988FB68();
}

uint64_t sub_1C99E51E0(uint64_t a1)
{
  sub_1C97AA890();
  v5 = v4;
  sub_1C97DA70C();
  *v6 = v5;
  v7 = *v2;
  sub_1C97AA83C();
  *v8 = v7;
  *(v5 + 24) = a1;

  if (v1)
  {
    v9 = *(v7 + 8);

    return v9();
  }

  else
  {
    v11 = swift_task_alloc();
    *(v5 + 32) = v11;
    *v11 = v7;
    sub_1C97DA950(v11);

    return sub_1C98A4958();
  }
}

uint64_t sub_1C99E535C(char a1)
{
  sub_1C97AA890();
  v5 = v4;
  sub_1C97DA70C();
  *v6 = v5;
  v7 = *v2;
  sub_1C97AA83C();
  *v8 = v7;
  *(v5 + 40) = v1;

  if (v1)
  {
    v9 = sub_1C99E5728;
  }

  else
  {
    *(v5 + 104) = a1 & 1;
    v9 = sub_1C99E5474;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

uint64_t sub_1C99E5474()
{
  if (*(v0 + 104) == 1)
  {
    *(v0 + 48) = *(*(v0 + 24) + 24);

    v1 = swift_task_alloc();
    *(v0 + 56) = v1;
    *v1 = v0;
    sub_1C97DA950(v1);

    return sub_1C98A99CC();
  }

  else
  {

    v3 = *(v0 + 8);

    return v3(1, 0, 0, 0);
  }
}

uint64_t sub_1C99E5584(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1C97AA890();
  v11 = v10;
  sub_1C97DA70C();
  *v12 = v11;
  v13 = *v5;
  sub_1C97AA83C();
  *v14 = v13;
  v11[8] = v4;

  if (v4)
  {
    v15 = sub_1C99E5788;
  }

  else
  {

    v11[9] = a4;
    v11[10] = a3;
    v11[11] = a2;
    v11[12] = a1;
    v15 = sub_1C99E56C0;
  }

  return MEMORY[0x1EEE6DFA0](v15, 0, 0);
}

uint64_t sub_1C99E56C0()
{
  sub_1C97AA884();

  v2 = v0[11];
  v1 = v0[12];
  v4 = v0[9];
  v3 = v0[10];
  v5 = v0[1];

  return v5(v1, v2, v3, v4);
}

uint64_t sub_1C99E5728()
{
  sub_1C97AA884();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1C99E5788()
{
  sub_1C97AA884();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1C99E57F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1C99DC144();
  v13[3] = MEMORY[0x1E69E6370];
  v13[4] = &off_1F494A940;
  LOBYTE(v13[0]) = a2 != 1;

  sub_1C98CB0DC(v13, v10);
  if (v5)
  {

    return sub_1C97A592C(v13);
  }

  else
  {

    sub_1C97A592C(v13);
    if (a2 == 1)
    {
      v12 = 0;
    }

    else
    {
      v12 = a2;
    }

    if (a2 == 1)
    {
      a3 = 0;
      a4 = 0;
      a5 = 0;
    }

    sub_1C97A8BD4(v12, a3, a4, a5);
  }
}

uint64_t sub_1C99E592C()
{
  sub_1C97AA884();
  *(v0 + 16) = v1;
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  sub_1C97DA950(v2);

  return sub_1C99E5158();
}

uint64_t sub_1C99E59BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1C97AA890();
  v11 = v10;
  sub_1C97DA70C();
  *v12 = v11;
  v13 = *v5;
  sub_1C97AA83C();
  *v14 = v13;

  if (!v4)
  {
    v15 = *(v11 + 16);
    *v15 = a1;
    v15[1] = a2;
    v15[2] = a3;
    v15[3] = a4;
  }

  v16 = *(v13 + 8);

  return v16();
}

uint64_t sub_1C99E5AD8(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1C99E5AFC(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFD && *(a1 + 32))
    {
      v2 = *a1 + 2147483645;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v4 = v3 - 1;
      if (v4 < 0)
      {
        v5 = -1;
      }

      else
      {
        v5 = v4;
      }

      v6 = v5 - 1;
      if (v4 < 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v6;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C99E5B5C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 2147483646;
    *(result + 8) = 0;
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1C99E5BBC(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 32))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C99E5C10(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1C99E5C88(uint64_t a1, uint64_t a2)
{
  v3 = swift_allocObject();
  sub_1C99E5CD8(a1);
  return v3;
}

uint64_t sub_1C99E5CD8(uint64_t a1)
{
  sub_1C991B418();
  sub_1C97AEB3C();
  (*(v3 + 32))(v1 + v4);
  sub_1C9831528();
  *(v1 + *(v5 + 120)) = a1;
  return v1;
}

uint64_t sub_1C99E5DB8()
{
  sub_1C9831528();
  sub_1C99E5E78(v0, v1, &v5, &v6);
  v2 = v6;
  sub_1C9831528();
  v6 = v2;
  v7 = 0;
  v3 = sub_1C9A91D28();
  sub_1C99E6114(v2);
  return v3;
}

void sub_1C99E5E78(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  v7 = *(a1 + *(*a1 + 120));
  v8 = a2;
  sub_1C99CC5E4(v7, v8);
  if (v4)
  {
    *a3 = v4;
  }

  else
  {
    *a4 = v8;
    v9 = v8;
  }
}

uint64_t sub_1C99E5F9C()
{
  sub_1C991B418();
  sub_1C97AEB3C();
  (*(v1 + 8))(v0 + v2);
  sub_1C9831528();

  return v0;
}

uint64_t sub_1C99E6018()
{
  sub_1C99E5F9C();

  return swift_deallocClassInstance();
}

uint64_t sub_1C99E6138(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1C97AE9DC();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  sub_1C97AEAD8();
  v14 = v13 - v12;
  v16 = *(v4 + *(v15 + 40));
  v22 = v4 + *(v15 + 36);
  v23 = v16;
  sub_1C97A2CEC(&qword_1EC3C83F8, &unk_1C9AA33B0);
  swift_allocObject();
  v17 = sub_1C99C9E78(sub_1C99E6C3C, v21);
  v18 = *(a2 + 16);
  v19 = *(a2 + 24);
  v24[0] = v18;
  v24[1] = a3;
  v24[2] = v19;
  v24[3] = a4;
  type metadata accessor for WriteToFile.Impl.Inner(0, v24);
  (*(v10 + 16))(v14, a1, a3);
  v24[0] = sub_1C99E5C88(v17, v14);
  swift_getWitnessTable();
  sub_1C9A91F08();
}

uint64_t sub_1C99E631C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  sub_1C97AEB3C();
  (*(v10 + 32))(a5);
  v12 = type metadata accessor for WriteToFile.Impl(0, a3, a4, v11);
  v13 = *(v12 + 36);
  sub_1C9A91558();
  sub_1C97AEB3C();
  result = (*(v14 + 32))(a5 + v13, a1);
  *(a5 + *(v12 + 40)) = a2;
  return result;
}

uint64_t sub_1C99E63F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v47 = a3;
  v48 = a4;
  v46 = a1;
  sub_1C9A91558();
  sub_1C97AE9DC();
  v44 = v8;
  v45 = v7;
  MEMORY[0x1EEE9AC00](v7);
  sub_1C97AEAD8();
  v43 = v10 - v9;
  v11 = *(a2 + 16);
  v41 = a2;
  sub_1C97AE9DC();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  sub_1C97AEAD8();
  v17 = v16 - v15;
  v42 = *(a2 + 24);
  v19 = type metadata accessor for WriteToFile.Impl(0, v11, v42, v18);
  sub_1C97AEB3C();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v37 - v21;
  v24 = sub_1C97BD318(v23, 255, &qword_1EC3CBA40, 0x1E6958440);
  v40 = v24;
  v25 = sub_1C97AA4F0(&unk_1EC3CA040, &qword_1C9A9C750);
  v39 = v25;
  WitnessTable = swift_getWitnessTable();
  v49[0] = v19;
  v49[1] = v24;
  v49[2] = v25;
  v49[3] = WitnessTable;
  v26 = type metadata accessor for ExpandResult(0, v49);
  sub_1C97AE9DC();
  v28 = v27;
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v37 - v30;
  (*(v13 + 16))(v17, v5, v11);
  v32 = v41;
  v33 = v43;
  (*(v44 + 16))(v43, v5 + *(v41 + 36), v45);
  v34 = *(v5 + *(v32 + 40));
  sub_1C99E631C(v33, v34, v11, v42, v22);
  sub_1C997529C(v22, v19, v31);
  v35 = v34;
  sub_1C99752D4(v46, v26, v47);
  return (*(v28 + 8))(v31, v26);
}

uint64_t sub_1C99E671C(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = sub_1C9A91558();
    if (v4 <= 0x3F)
    {
      result = sub_1C97BD318(v3, 319, &qword_1EC3C56D0, 0x1E6958418);
      if (v5 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

void sub_1C99E67CC(int *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(*(v5 - 8) + 84);
  sub_1C9A91558();
  sub_1C99E6C64();
  sub_1C99E6C64();
  if (a2)
  {
    v13 = v7;
    v14 = v11 + v9;
    if (v10 >= a2)
    {
LABEL_21:
      if (v6 == v10)
      {
        v19 = a1;
        v8 = v6;
        v13 = v5;
      }

      else
      {
        v19 = ((a1 + v14) & ~v9);
        if (v8 != v10)
        {
          return;
        }
      }

      sub_1C97ABF20(v19, v8, v13);
    }

    else
    {
      v15 = ((*(v12 + 64) + 7 + (v14 & ~v9)) & 0xFFFFFFFFFFFFFFF8) + 8;
      if ((v15 & 0xFFFFFFF8) != 0)
      {
        v16 = 2;
      }

      else
      {
        v16 = a2 - v10 + 1;
      }

      if (v16 >= 0x10000)
      {
        v17 = 4;
      }

      else
      {
        v17 = 2;
      }

      if (v16 < 0x100)
      {
        v17 = 1;
      }

      if (v16 >= 2)
      {
        v18 = v17;
      }

      else
      {
        v18 = 0;
      }

      switch(v18)
      {
        case 1:
          if (!*(a1 + v15))
          {
            goto LABEL_21;
          }

          break;
        case 2:
          if (!*(a1 + v15))
          {
            goto LABEL_21;
          }

          break;
        case 3:
          __break(1u);
          break;
        case 4:
          if (!*(a1 + v15))
          {
            goto LABEL_21;
          }

          break;
        default:
          goto LABEL_21;
      }
    }
  }
}

void sub_1C99E69DC(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(*(v7 - 8) + 84);
  sub_1C9A91558();
  sub_1C99E6C64();
  sub_1C99E6C64();
  v15 = *(v14 + 64) + 7;
  v17 = ((v15 + v16) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (((v15 + v16) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v18 = a3 - v12 + 1;
  }

  else
  {
    v18 = 2;
  }

  if (v18 >= 0x10000)
  {
    v19 = 4;
  }

  else
  {
    v19 = 2;
  }

  if (v18 < 0x100)
  {
    v19 = 1;
  }

  if (v18 >= 2)
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  if (v12 < a3)
  {
    v21 = v20;
  }

  else
  {
    v21 = 0;
  }

  if (a2 <= v12)
  {
    v24 = ~v13;
    v25 = v9;
    switch(v21)
    {
      case 1:
        *(a1 + v17) = 0;
        if (a2)
        {
          goto LABEL_30;
        }

        return;
      case 2:
        *(a1 + v17) = 0;
        if (a2)
        {
          goto LABEL_30;
        }

        return;
      case 3:
LABEL_44:
        __break(1u);
        return;
      case 4:
        *(a1 + v17) = 0;
        goto LABEL_29;
      default:
LABEL_29:
        if (!a2)
        {
          return;
        }

LABEL_30:
        if (v8 == v12)
        {
          v26 = a1;
          v27 = a2;
          v10 = v8;
          v25 = v7;
        }

        else
        {
          v26 = ((a1 + v11) & v24);
          if (v10 != v12)
          {
            v28 = ((v26 + v15) & 0xFFFFFFFFFFFFFFF8);
            if ((a2 & 0x80000000) != 0)
            {
              v29 = a2 & 0x7FFFFFFF;
            }

            else
            {
              v29 = (a2 - 1);
            }

            *v28 = v29;
            return;
          }

          v27 = a2;
        }

        sub_1C97ACC50(v26, v27, v10, v25);
        break;
    }
  }

  else
  {
    if (v17)
    {
      v22 = 1;
    }

    else
    {
      v22 = a2 - v12;
    }

    if (v17)
    {
      v23 = ~v12 + a2;
      bzero(a1, v17);
      *a1 = v23;
    }

    switch(v21)
    {
      case 1:
        *(a1 + v17) = v22;
        break;
      case 2:
        *(a1 + v17) = v22;
        break;
      case 3:
        goto LABEL_44;
      case 4:
        *(a1 + v17) = v22;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1C99E6C70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1C99E6CC4(uint64_t a1, uint64_t a2)
{
  v8[9] = a1;
  sub_1C9A93CC8();
  v5 = type metadata accessor for HashableCodableNSObject(0, a2, v3, v4);
  WitnessTable = swift_getWitnessTable();
  sub_1C99A8300(v8, v5, WitnessTable);
  return sub_1C9A93D18();
}

uint64_t sub_1C99E6D54(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1C99A8300(a1, a2, WitnessTable);
}

uint64_t sub_1C99E6DB4(uint64_t a1, uint64_t a2)
{
  sub_1C9A93CC8();
  WitnessTable = swift_getWitnessTable();
  sub_1C99A8300(v5, a2, WitnessTable);
  return sub_1C9A93D18();
}

id sub_1C99E6E18@<X0>(void **a1@<X8>)
{
  v2 = *v1;
  *a1 = *v1;
  return v2;
}

id sub_1C99E6EE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1C99A824C(a1, a2, a3, WitnessTable);
}

uint64_t sub_1C99E6F6C(void *a1, uint64_t a2)
{
  a1[1] = swift_getWitnessTable();
  a1[2] = swift_getWitnessTable();
  result = swift_getWitnessTable();
  a1[3] = result;
  return result;
}

uint64_t sub_1C99E6FEC(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1C99E707C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a6 - 8);
  v12 = MEMORY[0x1EEE9AC00](a1);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1C99EBF7C(v12, v15, v16, v17, v18, v19, v20, v14);
  if (v8)
  {
    return (*(v11 + 32))(a8, v14, a6);
  }

  return result;
}

void *sub_1C99E7190(void (*a1)(void *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[3] = a4;
  v6 = *(a3 + 16);
  v7 = sub_1C9A93358();
  sub_1C99ED1E0();
  sub_1C9A933B8();
  sub_1C9A93348();
  v10[0] = *(v4 + 8) + *(*(v6 - 8) + 72) * *(v4 + 16);
  v8 = v10[0];
  v10[1] = v7;
  a1(v10);
  sub_1C97A2CEC(&unk_1EC3CA040, &qword_1C9A9C750);
  return sub_1C99EC42C(v10, v8, v7);
}

uint64_t sub_1C99E72B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v18 = a7;
  v19 = a8;
  v20 = a1;
  v21 = a2;
  v15 = sub_1C97A2CEC(&unk_1EC3CA040, &qword_1C9A9C750);
  return sub_1C99E820C(a9, v17, a3, a4, a5, a6, a7, a8, v15, MEMORY[0x1E69E7288], &v22);
}

uint64_t sub_1C99E7380@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = result + 1;
  if (__OFADD__(result, 1))
  {
    __break(1u);
  }

  else
  {
    v4 = result;
    v7 = *(v2 + 5);
    v6 = *(v2 + 6);
    v8 = *(v2 + 2);
    v10 = *v2;
    sub_1C97AEB3C();
    result = (*(v9 + 16))(v11, v2);
    *a2 = v10;
    *(a2 + 16) = v8;
    *(a2 + 24) = v4;
    *(a2 + 32) = v3;
    *(a2 + 40) = v7;
    *(a2 + 48) = v6;
  }

  return result;
}

uint64_t sub_1C99E7424(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v3 * v2;
  if ((v3 * v2) >> 64 != (v3 * v2) >> 63)
  {
    __break(1u);
    goto LABEL_9;
  }

  v5 = v1[5];
  v6 = __OFADD__(v4, v5);
  v7 = v4 + v5;
  if (v6)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v8 = v1[4];
  v9 = v8 - 1;
  if (__OFSUB__(v8, 1))
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v10 = v9 * v2;
  if ((v9 * v2) >> 64 != (v9 * v2) >> 63)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v11 = v1[6];
  if (__OFADD__(v10, v11))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v10 + v11 >= v7)
  {
    return MEMORY[0x1EEE69548](v7);
  }

LABEL_13:
  __break(1u);
  return MEMORY[0x1EEE69548](a1);
}

__n128 sub_1C99E749C@<Q0>(uint64_t a1@<X8>)
{
  sub_1C97AEB3C();
  (*(v3 + 16))(v6, v1);
  v4 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v4;
  result = *(v1 + 32);
  *(a1 + 32) = result;
  *(a1 + 48) = *(v1 + 48);
  return result;
}

uint64_t (*sub_1C99E750C(void *a1, uint64_t *a2, uint64_t a3))()
{
  v7 = sub_1C97A2C48(0x80uLL);
  *a1 = v7;
  v8 = *a2;
  *(v7 + 6) = *(v3 + 48);
  v9 = *(v3 + 32);
  *(v7 + 1) = *(v3 + 16);
  *(v7 + 2) = v9;
  *v7 = *v3;
  *(v7 + 15) = sub_1C99E75B0(v7 + 7, v8, a3);
  v11 = *v10;
  *(v7 + 11) = v12;
  *(v7 + 12) = v13;
  *(v7 + 104) = v11;
  return sub_1C99E75AC;
}

uint64_t (*sub_1C99E75B0(void *a1, uint64_t a2, uint64_t a3))()
{
  v4 = sub_1C99E8DF8(a2);
  a1[1] = v5;
  a1[2] = v4;
  *a1 = v6;
  return sub_1C99ECBCC;
}

uint64_t sub_1C99E7610(uint64_t a1)
{
  swift_getWitnessTable();

  return sub_1C9A92BD8();
}

uint64_t sub_1C99E7694(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE698E0](a1, WitnessTable);
}

uint64_t sub_1C99E76E8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE69900](a1, WitnessTable);
}

double sub_1C99E773C@<D0>(uint64_t a2@<X8>)
{
  *a2 = sub_1C9A92828();
  result = 0.0;
  *(a2 + 8) = 0u;
  *(a2 + 24) = 0u;
  *(a2 + 40) = 0u;
  return result;
}

uint64_t sub_1C99E777C()
{
  sub_1C97A2CEC(&qword_1EC3C68F0, &qword_1C9AB28D0);
  v0 = swift_allocObject();
  v1 = MEMORY[0x1E69E6158];
  *(v0 + 16) = xmmword_1C9A9EDD0;
  *(v0 + 56) = v1;
  *(v0 + 32) = 7303014;
  *(v0 + 40) = 0xE300000000000000;
  sub_1C9A93CA8();
}

uint64_t sub_1C99E780C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1C99ECFA8();
  sub_1C99ED138();
  MEMORY[0x1EEE9AC00](v8);
  (*(v10 + 16))(&v27[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v11 = *(v6 + 16);
  v12 = sub_1C99ED1E0();
  v16 = type metadata accessor for DeinterleavedSignalBuffer.NoncontiguousFrames(v12, v13, v14, v15);
  result = swift_dynamicCast();
  if (result)
  {
    v31 = *&v27[8];
    v32 = v28;
    v33 = v29;
    v34 = v30;
    v18 = v4[5];
    v19 = v4[6];
    v20 = __OFSUB__(v19, v18);
    v21 = v19 - v18;
    if (v20)
    {
      __break(1u);
    }

    else
    {
      v22 = v34 - *(&v33 + 1);
      if (!__OFSUB__(v34, *(&v33 + 1)))
      {
        v23 = v21 + v22;
        if (!__OFADD__(v21, v22))
        {
          v24 = v33 - *(&v32 + 1);
          if (!__OFSUB__(v33, *(&v32 + 1)))
          {
            result = v23 * v24;
            if ((v23 * v24) >> 64 == (v23 * v24) >> 63)
            {
              MEMORY[0x1EEE9AC00](result);
              *&v27[-48] = v11;
              *&v27[-40] = v5;
              *&v27[-32] = a4;
              *&v27[-24] = v4;
              *&v27[-16] = v23;
              *&v27[-8] = &v31;
              v25 = sub_1C9A92848();
              sub_1C97AEB3C();
              result = (*(v26 + 8))(&v31, v16);
              if (((v23 | v24) & 0x8000000000000000) == 0)
              {

                *v4 = v25;
                v4[1] = v24;
                v4[2] = v23;
                v4[3] = 0;
                v4[4] = v24;
                v4[5] = 0;
                v4[6] = v23;
                return result;
              }

LABEL_15:
              __break(1u);
              return result;
            }

LABEL_14:
            __break(1u);
            goto LABEL_15;
          }

LABEL_13:
          __break(1u);
          goto LABEL_14;
        }

LABEL_12:
        __break(1u);
        goto LABEL_13;
      }
    }

    __break(1u);
    goto LABEL_12;
  }

  return result;
}

uint64_t sub_1C99E7A08(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = *a3;
  v23 = a6;
  v24 = a7;
  v25 = a8;
  v26 = a3;
  v27 = a1;
  v28 = a4;
  v29 = a2;

  sub_1C99E707C(sub_1C99EC780, v22, v16, a6, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7410], v17);

  v18 = *a5;
  v21[2] = a6;
  v21[3] = a7;
  v21[4] = a8;
  v21[5] = a5;
  v21[6] = a1;
  v21[7] = a3;
  v21[8] = a4;
  v21[9] = a2;
  return sub_1C99E707C(sub_1C99EC7B8, v21, v18, a6, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7410], v19);
}

char *sub_1C99E7B28(char *result, uint64_t a2, void *a3, void *a4, uint64_t a5, void *a6, uint64_t a7)
{
  v9 = 0;
  v10 = a3[3];
  v11 = a3[4];
  v26 = v10 - v11;
  while (v26 + v9)
  {
    if (v11 < v10)
    {
      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
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

    v12 = v10 + v9;
    if (v10 + v9 >= v11)
    {
      goto LABEL_16;
    }

    if (__OFADD__(v9, 1))
    {
      goto LABEL_17;
    }

    result = sub_1C9A92448();
    if (!result)
    {
      goto LABEL_23;
    }

    v13 = a3[2];
    v14 = v13 * v12;
    if ((v13 * v12) >> 64 != (v13 * v12) >> 63)
    {
      goto LABEL_18;
    }

    v15 = result;
    v16 = *(*(a7 - 8) + 72);
    v17 = a3[5];
    result = sub_1C9A93288();
    if (!result)
    {
      goto LABEL_24;
    }

    if ((a5 * v9) >> 64 != (a5 * v9) >> 63)
    {
      goto LABEL_19;
    }

    v18 = a7;
    v19 = v10;
    v20 = a3[5];
    v21 = a3[6];
    v22 = v21 - v20;
    if (__OFSUB__(v21, v20))
    {
      goto LABEL_20;
    }

    if ((v16 * v22) >> 64 != (v16 * v22) >> 63)
    {
      goto LABEL_21;
    }

    result = memmove(&result[v16 * a5 * v9], &v15[v16 * v14 + v17 * v16], v16 * v22);
    if (__OFADD__(*a6, v22))
    {
      goto LABEL_22;
    }

    *a6 += v22;
    ++v9;
    v10 = v19;
    a7 = v18;
    v11 = v23;
  }

  return result;
}

char *sub_1C99E7CB0(char *result, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8)
{
  v10 = 0;
  v11 = a3[3];
  v29 = a3[2];
  v13 = a3[4];
  v12 = a3[5];
  v14 = a3[6];
  v15 = v14 - v12;
  v16 = __OFSUB__(v14, v12);
  v26 = v16;
  while (v11 - v13 + v10)
  {
    if (v13 < v11)
    {
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
      return result;
    }

    v17 = v11 + v10;
    if (v11 + v10 >= v13)
    {
      goto LABEL_20;
    }

    if (__OFADD__(v10, 1))
    {
      goto LABEL_21;
    }

    result = sub_1C9A92448();
    if (!result)
    {
      goto LABEL_28;
    }

    v18 = v29 * v17;
    if ((v29 * v17) >> 64 != (v29 * v17) >> 63)
    {
      goto LABEL_22;
    }

    v19 = result;
    v20 = *(*(a8 - 8) + 72);
    result = sub_1C9A93288();
    if (!result)
    {
      goto LABEL_29;
    }

    v21 = *(a5 + 40);
    v22 = *(a5 + 48);
    v23 = __OFSUB__(v22, v21);
    v24 = v22 - v21;
    if (v23)
    {
      goto LABEL_23;
    }

    if ((a6 * v10) >> 64 != (a6 * v10) >> 63)
    {
      goto LABEL_24;
    }

    if (v26)
    {
      goto LABEL_25;
    }

    if ((v20 * v15) >> 64 != (v20 * v15) >> 63)
    {
      goto LABEL_26;
    }

    result = memmove(&result[v24 * v20 + v20 * a6 * v10], &v19[v20 * v18 + v20 * v25], v20 * v15);
    if (__OFADD__(*a7, v15))
    {
      goto LABEL_27;
    }

    *a7 += v15;
    ++v10;
  }

  return result;
}

uint64_t sub_1C99E7E4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C99E777C();
  v5 = *(*(a3 - 8) + 8);

  return v5(a2, a3);
}

uint64_t sub_1C99E7EB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1C99E780C(a1, a4, a2, a3);
  v6 = *(*(a2 - 8) + 8);

  return v6(a1, a2);
}

uint64_t (*sub_1C99E7F3C(void *a1, uint64_t *a2, uint64_t a3))()
{
  v7 = sub_1C97A2C48(0x98uLL);
  *a1 = v7;
  v8 = *a2;
  *(v7 + 6) = *(v3 + 48);
  v9 = *(v3 + 32);
  *(v7 + 1) = *(v3 + 16);
  *(v7 + 2) = v9;
  *v7 = *v3;
  *(v7 + 18) = sub_1C99E7FF0(v7 + 14, v8, a3);
  v11 = *(v10 + 8);
  v12 = *(v10 + 24);
  v13 = *(v10 + 40);
  *(v7 + 7) = *v10;
  v7 += 56;
  *(v7 + 8) = v11;
  *(v7 + 24) = v12;
  *(v7 + 40) = v13;
  return sub_1C99ECD0C;
}

void (*sub_1C99E7FF0(void *a1, uint64_t a2, uint64_t a3))(uint64_t a1, uint64_t a2)
{
  v6 = sub_1C97A2C48(0x40uLL);
  *a1 = v6;
  v6[7] = a3;
  sub_1C99E9650(a2, v6);
  return sub_1C99E806C;
}

double sub_1C99E8084(uint64_t a1, uint64_t a2)
{
  v2 = sub_1C99ED098();
  v5 = v3(v17, v4, v2);
  *&result = sub_1C99ED030(v5, v6, v7, v8, v9, v10, v11, v12, v13, v16, *v17, *&v17[2], v14, v17[4]).n128_u64[0];
  return result;
}

uint64_t sub_1C99E80E8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE698E0](a1, WitnessTable);
}

uint64_t sub_1C99E813C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE69900](a1, WitnessTable);
}

uint64_t sub_1C99E8194()
{
  sub_1C9A933B8();
  swift_getWitnessTable();
  sub_1C9A92BD8();
  return v1;
}

uint64_t sub_1C99E820C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v12 = *(a9 - 8);
  v13 = MEMORY[0x1EEE9AC00](a1);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1C99EC478(v13, v16, v17, v18, v19, v20, v21, v22, a9, v23, v15);
  if (v11)
  {
    return (*(v12 + 32))(a11, v15, a9);
  }

  return result;
}

uint64_t sub_1C99E82DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v18 = a7;
  v19 = a8;
  v20 = a1;
  v21 = a2;
  v15 = sub_1C97A2CEC(&unk_1EC3CA040, &qword_1C9A9C750);
  result = sub_1C99E820C(sub_1C99ECCE0, v17, a3, a4, a5, a6, a7, a8, v15, MEMORY[0x1E69E7288], &v22);
  if (!v8)
  {
    return sub_1C99ED240();
  }

  return result;
}

uint64_t sub_1C99E83BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  sub_1C99ED138();
  MEMORY[0x1EEE9AC00](v9);
  (*(v11 + 16))(&v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = swift_dynamicCast();
  if (result)
  {
    v13 = v27;
    v14 = v28;
    v24 = a4;
    *&v25 = v29;
    v15 = *(a2 + 16);
    if (sub_1C99ED150())
    {
      v16 = sub_1C99ED150();
      v17 = v25;
      v18 = sub_1C9A93358();
      v19 = __OFADD__(v16, v18);
      result = v16 + v18;
      if (v19)
      {
        __break(1u);
      }

      else
      {
        MEMORY[0x1EEE9AC00](result);
        *(&v23 - 8) = v15;
        *(&v23 - 7) = a3;
        *(&v23 - 6) = v24;
        *(&v23 - 5) = v5;
        *(&v23 - 2) = v13;
        *(&v23 - 2) = v14;
        *(&v23 - 1) = v17;
        v26 = sub_1C9A92848();
        sub_1C99ED1E0();
        sub_1C9A928B8();
        swift_getWitnessTable();
        sub_1C9A92428();

        swift_unknownObjectRelease();
        v20 = v28;
        v21 = v29;
        v25 = v27;
        result = swift_unknownObjectRelease();
        *v5 = v25;
        *(v5 + 16) = v20;
        *(v5 + 24) = v21;
      }
    }

    else
    {
      result = swift_unknownObjectRelease();
      *v4 = v13;
      v22 = v25;
      *(v4 + 16) = v14;
      *(v4 + 24) = v22;
    }
  }

  return result;
}

uint64_t sub_1C99E85F4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v34 = a7;
  v13 = *a3;
  v14 = a3[1];
  v15 = a3[2];
  v16 = a3[3];
  v29 = a8;
  v30 = a9;
  v31 = a10;
  v32 = a1;
  v33 = a2;
  swift_unknownObjectRetain();
  sub_1C99E820C(sub_1C99EC630, v28, v13, v14, v15, v16, a8, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7410], v18);
  swift_unknownObjectRelease();
  v23 = a8;
  v24 = a9;
  v25 = a10;
  v26 = a1;
  v27 = a2;
  return sub_1C99E72B4(sub_1C99EC658, v22, a4, a5, a6, v34, a8, MEMORY[0x1E69E7CA8] + 8, sub_1C99EC460);
}

char *sub_1C99E8728(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  result = sub_1C9A92448();
  v9 = result;
  if (result)
  {
    v10 = *(*(a5 - 8) + 72);
    if ((v10 * a2) >> 64 != (v10 * a2) >> 63)
    {
      goto LABEL_11;
    }

    v11 = &result[v10 * a2];
  }

  else
  {
    v11 = 0;
  }

  result = sub_1C9A93288();
  if (v9)
  {
    if (result)
    {
      result = memmove(&result[*(*(a5 - 8) + 72) * *a4], v9, v11 - v9);
    }
  }

  if (!__OFADD__(*a4, a2))
  {
    *a4 += a2;
    return result;
  }

  __break(1u);
LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_1C99E8828(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *v4 = result;
  v4[1] = a2;
  v4[2] = a3;
  v4[3] = a4;
  return result;
}

uint64_t sub_1C99E886C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1C99E83BC(a1, a4, a2, a3);
  v6 = *(*(a2 - 8) + 8);

  return v6(a1, a2);
}

uint64_t sub_1C99E88E8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE69AE8](a1, WitnessTable, a2);
}

uint64_t sub_1C99E8954(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE69AF0](a1, a2, WitnessTable, a3);
}

void (*sub_1C99E8A24(void *a1, uint64_t *a2, uint64_t a3))(void *)
{
  v7 = sub_1C97A2C48(0x28uLL);
  *a1 = v7;
  v7[4] = sub_1C99E8AA0(v7, *a2, *v3, v3[1], v3[2], v3[3], *(a3 + 16));
  return sub_1C99ECD14;
}

void (*sub_1C99E8AA0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7))(void *)
{
  v7 = *(a7 - 8);
  *a1 = a7;
  a1[1] = v7;
  a1[2] = sub_1C97A2C48(*(v7 + 64));
  sub_1C9A93408();
  return sub_1C99ECD08;
}

uint64_t sub_1C99E8BF8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE698E0](a1, WitnessTable);
}

uint64_t sub_1C99E8C4C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE69900](a1, WitnessTable);
}

unint64_t sub_1C99E8D04(uint64_t a1)
{
  result = sub_1C97BE38C(a1);
  if (!result)
  {
    sub_1C97AA4F0(&qword_1EC3CAB28, &qword_1C9AAC8B0);
    sub_1C9922F84();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_1C99E8DF8(uint64_t result)
{
  v2 = v1[2];
  v3 = v2 * result;
  if ((v2 * result) >> 64 != (v2 * result) >> 63)
  {
    __break(1u);
    goto LABEL_7;
  }

  v4 = v1[5];
  result = v3 + v4;
  if (__OFADD__(v3, v4))
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v5 = v1[6];
  v6 = __OFADD__(v3, v5);
  v7 = v3 + v5;
  if (v6)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v7 >= result)
  {
    return sub_1C99ECFB4(result);
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t (*sub_1C99E8E40(void *a1, uint64_t *a2, uint64_t a3))()
{
  v7 = sub_1C97A2C48(0x80uLL);
  *a1 = v7;
  v8 = *a2;
  *(v7 + 6) = *(v3 + 48);
  v9 = *(v3 + 32);
  *(v7 + 1) = *(v3 + 16);
  *(v7 + 2) = v9;
  *v7 = *v3;
  *(v7 + 15) = sub_1C99E75B0(v7 + 7, v8, a3);
  v11 = *v10;
  *(v7 + 11) = v12;
  *(v7 + 12) = v13;
  *(v7 + 104) = v11;
  return sub_1C99ECD04;
}

void sub_1C99E8EE0(uint64_t a1)
{
  v1 = *a1;
  (*(*a1 + 120))();

  free(v1);
}

uint64_t sub_1C99E8F28(uint64_t a1)
{
  swift_getWitnessTable();

  return sub_1C9A92BD8();
}

uint64_t sub_1C99E8F94(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE698E0](a1, WitnessTable);
}

uint64_t sub_1C99E8FE8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE69900](a1, WitnessTable);
}

uint64_t sub_1C99E903C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v2 * v1;
  if ((v2 * v1) >> 64 != (v2 * v1) >> 63)
  {
    __break(1u);
    goto LABEL_5;
  }

  v4 = v0[5];
  result = v3 + v4;
  if (__OFADD__(v3, v4))
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t sub_1C99E9068()
{
  v1 = v0[2];
  v2 = v0[4];
  v3 = v2 * v1;
  if ((v2 * v1) >> 64 != (v2 * v1) >> 63)
  {
    __break(1u);
    goto LABEL_5;
  }

  v4 = v0[5];
  result = v3 + v4;
  if (__OFADD__(v3, v4))
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t sub_1C99E9098(uint64_t result)
{
  v2 = v1[2];
  if (!v2)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (result == 0x8000000000000000 && v2 == -1)
  {
    goto LABEL_15;
  }

  v4 = result / v2;
  if (result % v2 != v1[5])
  {
    goto LABEL_12;
  }

  v5 = v4 - 1;
  if (__OFSUB__(v4, 1))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = v5 * v2;
  if ((v5 * v2) >> 64 != (v5 * v2) >> 63)
  {
LABEL_18:
    __break(1u);
    return result;
  }

  v7 = v1[6];
  result = v6 + v7;
  if (!__OFADD__(v6, v7))
  {
    return result;
  }

  __break(1u);
LABEL_12:
  if (__OFSUB__(result--, 1))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  return result;
}

uint64_t sub_1C99E910C(uint64_t result)
{
  v2 = v1[2];
  if (!v2)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (result == 0x8000000000000000 && v2 == -1)
  {
    goto LABEL_17;
  }

  v4 = v1[6];
  v5 = __OFSUB__(v4, 1);
  v6 = v4 - 1;
  if (v5)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v7 = result / v2;
  if (result % v2 != v6)
  {
    goto LABEL_13;
  }

  v5 = __OFADD__(v7, 1);
  v8 = v7 + 1;
  if (v5)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v9 = v8 * v2;
  if ((v8 * v2) >> 64 != (v8 * v2) >> 63)
  {
LABEL_20:
    __break(1u);
    return result;
  }

  v10 = v1[5];
  result = v9 + v10;
  if (!__OFADD__(v9, v10))
  {
    return result;
  }

  __break(1u);
LABEL_13:
  v5 = __OFADD__(result++, 1);
  if (v5)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1C99E921C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1C99E9098(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1C99E9248(uint64_t *a1)
{
  result = sub_1C99E9098(*a1);
  *a1 = result;
  return result;
}

uint64_t sub_1C99E9290@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C99E903C();
  *a1 = result;
  return result;
}

uint64_t sub_1C99E92B8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C99E9068();
  *a1 = result;
  return result;
}

uint64_t (*sub_1C99E92E0(void *a1, uint64_t *a2, uint64_t a3))()
{
  v7 = sub_1C97A2C48(0x60uLL);
  *a1 = v7;
  v8 = *a2;
  v7[6] = *(v3 + 48);
  v9 = *(v3 + 32);
  *(v7 + 1) = *(v3 + 16);
  *(v7 + 2) = v9;
  *v7 = *v3;
  v7[11] = sub_1C99E9370(v7 + 7, v8, a3);
  return sub_1C99ECD18;
}

void (*sub_1C99E9370(void *a1, uint64_t a2, uint64_t a3))(void *)
{
  v5 = *(a3 + 16);
  *a1 = v5;
  v6 = *(v5 - 8);
  a1[1] = v6;
  a1[2] = sub_1C97A2C48(*(v6 + 64));
  sub_1C99EA994(a2, a3);
  return sub_1C99ECD08;
}

uint64_t sub_1C99E942C(uint64_t a1)
{
  swift_getWitnessTable();

  return sub_1C9A92BD8();
}

uint64_t sub_1C99E949C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1C99E910C(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1C99E94C8(uint64_t *a1)
{
  result = sub_1C99E910C(*a1);
  *a1 = result;
  return result;
}

uint64_t sub_1C99E950C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE698E0](a1, WitnessTable);
}

uint64_t sub_1C99E9560(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE69900](a1, WitnessTable);
}

double sub_1C99E95D0@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v17 = *(v3 + 3);
  v6 = (*(*(a1 - 8) + 16))(v18);
  *a2 = v5;
  *&result = sub_1C99ED1B8(v6, v7, v8, v9, v10, v11, v12, v13, v14, v17, v15).n128_u64[0];
  return result;
}

void sub_1C99E9650(uint64_t result@<X0>, void *a2@<X8>)
{
  if (__OFADD__(result, 1))
  {
    __break(1u);
  }

  else
  {
    v4 = *v2;
    v5 = sub_1C99ED108();
    v7 = v6(v5);
    *a2 = v4;
    sub_1C99ED1B8(v7, v8, v9, v10, v11, v12, v13, v14, v15, v17, v16);
  }
}

__n128 sub_1C99E96D4@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *v3;
  v8 = sub_1C99ED108();
  v9(v8);
  *a3 = v7;
  result = v12;
  *(a3 + 24) = v11;
  *(a3 + 8) = v12;
  *(a3 + 40) = a1;
  *(a3 + 48) = a2;
  return result;
}

uint64_t sub_1C99E9770(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE69AE8](a1, WitnessTable, a2);
}

uint64_t sub_1C99E97DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE69AF0](a1, a2, WitnessTable, a3);
}

uint64_t (*sub_1C99E9860(void *a1, uint64_t *a2, uint64_t a3))()
{
  v7 = sub_1C97A2C48(0x98uLL);
  *a1 = v7;
  v8 = *a2;
  *(v7 + 6) = *(v3 + 48);
  v9 = *(v3 + 32);
  *(v7 + 1) = *(v3 + 16);
  *(v7 + 2) = v9;
  *v7 = *v3;
  *(v7 + 18) = sub_1C99E9914(v7 + 14, v8, a3);
  v11 = *(v10 + 8);
  v12 = *(v10 + 24);
  v13 = *(v10 + 40);
  *(v7 + 7) = *v10;
  v7 += 56;
  *(v7 + 8) = v11;
  *(v7 + 24) = v12;
  *(v7 + 40) = v13;
  return sub_1C99ECD0C;
}

uint64_t (*sub_1C99E9914(void *a1, uint64_t a2, uint64_t a3))(uint64_t, uint64_t)
{
  v6 = sub_1C97A2C48(0x40uLL);
  *a1 = v6;
  v6[7] = a3;
  sub_1C99E9650(a2, v6);
  return sub_1C99ECD10;
}

uint64_t sub_1C99E9990(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE698E0](a1, WitnessTable);
}

uint64_t sub_1C99E99E4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE69900](a1, WitnessTable);
}

uint64_t sub_1C99E9AD0(uint64_t result)
{
  if (*(v1 + 40) >= result || *(v1 + 48) < result)
  {
    __break(1u);
  }

  else
  {
    --result;
  }

  return result;
}

uint64_t sub_1C99E9AEC(uint64_t result)
{
  v3 = *(v1 + 40);
  v2 = *(v1 + 48);
  if (v2 < v3)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v3 > result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v2 > result)
  {
    return ++result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1C99E9B1C(uint64_t result)
{
  v2 = v1[1];
  v3 = v2 * result;
  if ((v2 * result) >> 64 != (v2 * result) >> 63)
  {
    __break(1u);
    goto LABEL_8;
  }

  v4 = v1[3];
  result = v3 + v4;
  if (__OFADD__(v3, v4))
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v5 = v1[4];
  v6 = __OFSUB__(v5, v4);
  v7 = v5 - v4;
  if (v6)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v6 = __OFADD__(result, v7);
  v8 = result + v7;
  if (v6)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v8 >= result)
  {
    return sub_1C99ECFB4(result);
  }

LABEL_11:
  __break(1u);
  return result;
}

void (*sub_1C99E9B70(void *a1, uint64_t *a2, uint64_t a3))(uint64_t a1)
{
  v6 = sub_1C97A2C48(0x80uLL);
  *a1 = v6;
  v7 = *a2;
  *(v6 + 6) = *(v3 + 48);
  v8 = *(v3 + 32);
  *(v6 + 1) = *(v3 + 16);
  *(v6 + 2) = v8;
  *v6 = *v3;
  *(v6 + 15) = sub_1C99E9C58(v6 + 7, v7);
  v10 = *v9;
  *(v6 + 11) = v11;
  *(v6 + 12) = v12;
  *(v6 + 104) = v10;
  return sub_1C99E9C10;
}

void sub_1C99E9C10(uint64_t a1)
{
  v1 = *a1;
  (*(*a1 + 120))();

  free(v1);
}

uint64_t (*sub_1C99E9C58(void *a1, uint64_t a2))()
{
  v3 = sub_1C99E9B1C(a2);
  a1[1] = v4;
  a1[2] = v3;
  *a1 = v5;
  return sub_1C99E9CB8;
}

uint64_t sub_1C99E9CD8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE698E0](a1, WitnessTable);
}

uint64_t sub_1C99E9D2C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE69900](a1, WitnessTable);
}

uint64_t sub_1C99E9D98(uint64_t result)
{
  if (*(v1 + 24) >= result || *(v1 + 32) < result)
  {
    __break(1u);
  }

  else
  {
    --result;
  }

  return result;
}

uint64_t sub_1C99E9DB4(uint64_t result)
{
  v3 = *(v1 + 24);
  v2 = *(v1 + 32);
  if (v2 < v3)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v3 > result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v2 > result)
  {
    return ++result;
  }

LABEL_7:
  __break(1u);
  return result;
}

__n128 sub_1C99E9DE4@<Q0>(unint64_t a1@<X0>, unint64_t a2@<X1>, __n128 *a3@<X8>)
{
  v12 = *v3;
  v7 = v3[1].n128_u64[0];
  v8 = v3[2].n128_u64[1];
  v9 = v3[3].n128_u64[0];
  sub_1C97AEB3C();
  (*(v10 + 16))(v13, v3);
  result = v12;
  *a3 = v12;
  a3[1].n128_u64[0] = v7;
  a3[1].n128_u64[1] = a1;
  a3[2].n128_u64[0] = a2;
  a3[2].n128_u64[1] = v8;
  a3[3].n128_u64[0] = v9;
  return result;
}

uint64_t (*sub_1C99E9E7C(void *a1, uint64_t *a2, uint64_t a3))()
{
  v7 = sub_1C97A2C48(0x98uLL);
  *a1 = v7;
  v8 = *a2;
  *(v7 + 6) = *(v3 + 48);
  v9 = *(v3 + 32);
  *(v7 + 1) = *(v3 + 16);
  *(v7 + 2) = v9;
  *v7 = *v3;
  *(v7 + 18) = sub_1C99E9F7C(v7 + 14, v8, a3);
  v11 = *(v10 + 8);
  v12 = *(v10 + 24);
  v13 = *(v10 + 40);
  *(v7 + 7) = *v10;
  v7 += 56;
  *(v7 + 8) = v11;
  *(v7 + 24) = v12;
  *(v7 + 40) = v13;
  return sub_1C99E9F30;
}

void sub_1C99E9F34(uint64_t a1)
{
  v1 = *a1;
  (*(*a1 + 144))();

  free(v1);
}

void (*sub_1C99E9F7C(void *a1, uint64_t a2, uint64_t a3))(uint64_t a1, uint64_t a2)
{
  v6 = sub_1C97A2C48(0x40uLL);
  *a1 = v6;
  v6[7] = a3;
  sub_1C99E7380(a2, v6);
  return sub_1C99E9FF8;
}

void sub_1C99EA010(uint64_t a1, uint64_t a2, void (*a3)(void, void))
{
  v3 = *a1;
  a3(0, *(*(*a1 + 56) + 16));
  sub_1C97AEB3C();
  (*(v4 + 8))(v3);

  free(v3);
}

uint64_t sub_1C99EA084@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C99E9D80();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C99EA0C4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE698E0](a1, WitnessTable);
}

uint64_t sub_1C99EA118(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE69900](a1, WitnessTable);
}

uint64_t sub_1C99EA16C()
{
  sub_1C99ED120();
  v0 = sub_1C9A93328();
  sub_1C99ED1CC();
  result = sub_1C9A93388();
  if (result >= v0)
  {
    return v0;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C99EA1D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = sub_1C99ECFEC(a1, a2, a3, a4, a5, a6, a7, a8);
  if (!v8)
  {
    return sub_1C99ED240();
  }

  return result;
}

uint64_t sub_1C99EA280()
{
  v1 = sub_1C99ED0D0();
  result = v2(v1);
  *v0 = result;
  return result;
}

uint64_t (*sub_1C99EA2AC(void *a1, uint64_t *a2, uint64_t a3))()
{
  v7 = sub_1C97A2C48(0x28uLL);
  *a1 = v7;
  v7[4] = sub_1C99EA328(v7, *a2, *v3, v3[1], v3[2], v3[3], *(a3 + 16));
  return sub_1C9851220;
}

uint64_t (*sub_1C99EA328(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7))()
{
  v7 = *(a7 - 8);
  *a1 = a7;
  a1[1] = v7;
  a1[2] = sub_1C97A2C48(*(v7 + 64));
  sub_1C9A93408();
  return sub_1C98512E8;
}

uint64_t sub_1C99EA420@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void, void, void, void, void, void, void)@<X3>, uint64_t *a4@<X8>)
{
  result = a3(*a1, a1[1], *v4, v4[1], v4[2], v4[3], *(a2 + 16));
  *a4 = result;
  a4[1] = v7;
  a4[2] = v8;
  a4[3] = v9;
  return result;
}

uint64_t sub_1C99EA484()
{
  v1 = sub_1C99ED0D0();
  result = v2(v1);
  *v0 = result;
  v0[1] = v4;
  return result;
}

uint64_t sub_1C99EA4C8(uint64_t a1)
{
  v3 = sub_1C97A7CA0(a1);
  result = v5(v3, *v2, v2[1], v2[2], v2[3], *(v4 + 16));
  *v1 = result;
  return result;
}

uint64_t sub_1C99EA520(uint64_t a1)
{
  v3 = sub_1C97BE38C(a1);
  result = v5(v3, *v2, v2[1], v2[2], v2[3], *(v4 + 16));
  *v1 = result;
  return result;
}

uint64_t sub_1C99EA578@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t)@<X2>, void *a3@<X8>)
{
  v6 = *v3;
  v7 = v3[1];
  v9 = v3[2];
  v8 = v3[3];
  *a3 = v6;
  a3[1] = v7;
  a3[2] = v9;
  a3[3] = v8;
  v10 = *(a1 + 16);
  v11 = swift_unknownObjectRetain();
  v12 = a2(v11, v7, v9, v8, v10);
  result = swift_unknownObjectRelease();
  a3[4] = v12;
  return result;
}

uint64_t sub_1C99EA5F8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE698E0](a1, WitnessTable);
}

uint64_t sub_1C99EA64C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE69900](a1, WitnessTable);
}

uint64_t sub_1C99EA700()
{
  v1 = v0[1];
  v2 = v0[3];
  v3 = v0[4];
  sub_1C97CB094();
  result = sub_1C9A927A8();
  if (!v1)
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

  if (v1 == -1 && result == 0x8000000000000000)
  {
    goto LABEL_34;
  }

  v6 = result % v1 - v2;
  if (__OFSUB__(result % v1, v2))
  {
    goto LABEL_27;
  }

  sub_1C97CB094();
  result = sub_1C9A92878();
  if (v1 == -1 && result == 0x8000000000000000)
  {
    goto LABEL_35;
  }

  v8 = result % v1 - v2;
  if (__OFSUB__(result % v1, v2))
  {
    goto LABEL_28;
  }

  sub_1C97CB094();
  result = sub_1C9A927A8();
  if (v1 == -1 && result == 0x8000000000000000)
  {
    goto LABEL_36;
  }

  v10 = result;
  sub_1C97CB094();
  result = sub_1C9A92878();
  if (v1 == -1 && result == 0x8000000000000000)
  {
    goto LABEL_37;
  }

  v12 = result / v1 - v10 / v1;
  if (__OFSUB__(result / v1, v10 / v1))
  {
    goto LABEL_29;
  }

  v13 = v3 - v2;
  if (__OFSUB__(v3, v2))
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v14 = v12 * v13;
  if ((v12 * v13) >> 64 != (v12 * v13) >> 63)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v15 = v14 - v6;
  if (__OFSUB__(v14, v6))
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  result = v15 + v8;
  if (__OFADD__(v15, v8))
  {
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
  }

  return result;
}

uint64_t sub_1C99EA834()
{
  v1 = v0[1];
  v2 = v0[5];
  v3 = v2 * v1;
  if ((v2 * v1) >> 64 != (v2 * v1) >> 63)
  {
    __break(1u);
    goto LABEL_5;
  }

  v4 = v0[3];
  result = v3 + v4;
  if (__OFADD__(v3, v4))
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t sub_1C99EA864()
{
  v1 = v0[1];
  v2 = v0[6];
  v3 = v2 * v1;
  if ((v2 * v1) >> 64 != (v2 * v1) >> 63)
  {
    __break(1u);
    goto LABEL_5;
  }

  v4 = v0[3];
  result = v3 + v4;
  if (__OFADD__(v3, v4))
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t sub_1C99EA894(uint64_t result)
{
  v2 = v1[1];
  if (!v2)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (result == 0x8000000000000000 && v2 == -1)
  {
    goto LABEL_16;
  }

  v4 = result / v2;
  if (result % v2 != v1[3])
  {
    goto LABEL_13;
  }

  v5 = v4 - 1;
  if (__OFSUB__(v4, 1))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v6 = v5 * v2;
  if ((v5 * v2) >> 64 != (v5 * v2) >> 63)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v7 = v1[4];
  v8 = __OFSUB__(v7, 1);
  v9 = v7 - 1;
  if (v8)
  {
LABEL_20:
    __break(1u);
    return result;
  }

  result = v6 + v9;
  if (!__OFADD__(v6, v9))
  {
    return result;
  }

  __break(1u);
LABEL_13:
  v8 = __OFSUB__(result--, 1);
  if (v8)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  return result;
}

uint64_t sub_1C99EA914(uint64_t result)
{
  v2 = v1[1];
  if (!v2)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (result == 0x8000000000000000 && v2 == -1)
  {
    goto LABEL_17;
  }

  v4 = result / v2;
  if (__OFADD__(result % v2, 1))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (result % v2 + 1 != v1[4])
  {
    goto LABEL_13;
  }

  v5 = v4 + 1;
  if (__OFADD__(v4, 1))
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v6 = v5 * v2;
  if ((v5 * v2) >> 64 != (v5 * v2) >> 63)
  {
LABEL_20:
    __break(1u);
    return result;
  }

  v7 = v1[3];
  result = v6 + v7;
  if (!__OFADD__(v6, v7))
  {
    return result;
  }

  __break(1u);
LABEL_13:
  if (__OFADD__(result++, 1))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1C99EA9A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1C99ECFA8();
  v10 = sub_1C9A928D8() & (v7 == a5);
  if (v6 == a6)
  {
    return v10;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C99EA9F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1C9A928C8();
  MEMORY[0x1CCA91980](a3);
  return MEMORY[0x1CCA91980](a4);
}

uint64_t sub_1C99EAA48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1C99ECFA8();
  sub_1C97BE32C(v6);
  sub_1C99ED1CC();
  sub_1C99EA9F8(v7, v8, v9, v10, v11, a5);
  return sub_1C9A93D18();
}

uint64_t sub_1C99EAAA8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1C99EA894(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1C99EAAD4(uint64_t *a1)
{
  result = sub_1C99EA894(*a1);
  *a1 = result;
  return result;
}

uint64_t sub_1C99EAB00@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C99EA834();
  *a1 = result;
  return result;
}

uint64_t sub_1C99EAB28@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C99EA864();
  *a1 = result;
  return result;
}

uint64_t (*sub_1C99EAB50(void *a1, uint64_t *a2, uint64_t a3))()
{
  v7 = sub_1C97A2C48(0x60uLL);
  *a1 = v7;
  v8 = *a2;
  v7[6] = *(v3 + 48);
  v9 = *(v3 + 32);
  *(v7 + 1) = *(v3 + 16);
  *(v7 + 2) = v9;
  *v7 = *v3;
  v7[11] = sub_1C99EAC2C(v7 + 7, v8, a3);
  return sub_1C99EABE0;
}

void sub_1C99EABE4(uint64_t a1)
{
  v1 = *a1;
  (*(*a1 + 88))();

  free(v1);
}

void (*sub_1C99EAC2C(void *a1, uint64_t a2, uint64_t a3))(void *)
{
  v5 = *(a3 + 16);
  *a1 = v5;
  v6 = *(v5 - 8);
  a1[1] = v6;
  a1[2] = sub_1C97A2C48(*(v6 + 64));
  sub_1C99EA994(a2, a3);
  return sub_1C99ECD08;
}

uint64_t sub_1C99EACE8(uint64_t a1)
{
  swift_getWitnessTable();

  return sub_1C9A92BD8();
}

uint64_t sub_1C99EAD58@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1C99EA914(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1C99EAD84(uint64_t *a1)
{
  result = sub_1C99EA914(*a1);
  *a1 = result;
  return result;
}

uint64_t sub_1C99EADC8@<X0>(uint64_t (*a1)(void)@<X2>, uint64_t a2@<X8>)
{
  *a2 = *v2;
  *(a2 + 8) = *(v2 + 8);
  *(a2 + 24) = *(v2 + 24);
  *(a2 + 40) = *(v2 + 40);
  result = a1();
  *(a2 + 56) = result;
  return result;
}

uint64_t sub_1C99EAE14(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE698E0](a1, WitnessTable);
}

uint64_t sub_1C99EAE68(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE69900](a1, WitnessTable);
}

uint64_t sub_1C99EAF14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 - 8);
  sub_1C9A93CC8();
  sub_1C99EA9F8(v7, *v3, v3[1], v3[2], *(a2 + 16), v5);
  return sub_1C9A93D18();
}

BOOL sub_1C99EAF70()
{
  v2 = sub_1C99ED0EC();
  v6 = type metadata accessor for DeinterleavedSignalBuffer.ContiguousFrames(v2, v3, v4, v5);
  sub_1C99E7424(v6);
  sub_1C99ED1EC();
  v7 = sub_1C99ED070();
  sub_1C99E7424(v7);
  sub_1C99ED1A4();
  v40 = v1;
  v8 = sub_1C99ED174();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if ((v8 & 1) == 0)
  {
    return 0;
  }

  sub_1C99ED198();
  v10 = sub_1C99E749C(v9);
  sub_1C99ED0B4(v11, v12, v13, v14, v15, v16, v17, v18, v10, v0, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, *v57, *&v57[2], v19, v57[4]);
  sub_1C99ECF60();
  WitnessTable = swift_getWitnessTable();
  v21 = sub_1C99ED220(WitnessTable);
  sub_1C97AEB3C();
  v23 = *(v22 + 8);
  v23(v57, v6);
  sub_1C99ED070();
  sub_1C99E749C(v24);
  sub_1C99ED010();
  v25 = sub_1C99ED200(v59);
  v23(v58, v6);
  if (v21 != v25)
  {
    return 0;
  }

  v26 = sub_1C99ED198();
  sub_1C99E95D0(v26, v27);
  sub_1C99ED07C();
  v28 = sub_1C9855110();
  v32 = type metadata accessor for DeinterleavedSignalBuffer.ContiguousChannels(v28, v29, v30, v31);
  sub_1C99ECF48();
  swift_getWitnessTable();
  v33 = sub_1C99ED260();
  sub_1C97AEB3C();
  v35 = *(v34 + 8);
  v35(v60, v32);
  v36 = sub_1C99ED070();
  sub_1C99E95D0(v36, v37);
  sub_1C99ED050();
  v38 = sub_1C99ED260();
  v35(v61, v32);
  return v33 == v38;
}

BOOL sub_1C99EB148(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v6 = type metadata accessor for DeinterleavedSignalBuffer.ContiguousChannels(0, a3, a3, a4);
  sub_1C99E7424(v6);
  sub_1C99ED1EC();
  sub_1C99E7424(v6);
  sub_1C99ED1A4();
  v31 = v4;
  LOBYTE(v4) = sub_1C99ED174();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v7.n128_f64[0] = sub_1C99E95D0(v6, v48);
  sub_1C99ED0B4(v8, v9, v10, v11, v12, v13, v14, v15, v7, a3, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, *v48, *&v48[2], v16, v48[4]);
  v17 = sub_1C99ED1E0();
  v21 = type metadata accessor for DeinterleavedSignalBuffer.ContiguousFrames(v17, v18, v19, v20);
  sub_1C99ECF60();
  swift_getWitnessTable();
  v22 = sub_1C9A92CC8();
  sub_1C97AEB3C();
  v24 = *(v23 + 8);
  v24(v48, v21);
  sub_1C99E95D0(v6, v49);
  sub_1C99ED010();
  v51 = v49[6];
  v25 = sub_1C9A92CC8();
  v24(v49, v21);
  if (v22 != v25)
  {
    return 0;
  }

  sub_1C99E749C(v50);
  sub_1C99ED07C();
  sub_1C99ECF48();
  swift_getWitnessTable();
  v26 = sub_1C9A92CC8();
  sub_1C97AEB3C();
  v28 = *(v27 + 8);
  v28(v50, v6);
  sub_1C99E749C(v52);
  sub_1C99ED050();
  v29 = sub_1C9A92CC8();
  v28(v52, v6);
  return v26 == v29;
}

uint64_t sub_1C99EB36C()
{
  sub_1C99ECFA8();
  sub_1C99E7424(v1);
  sub_1C9A933C8();
  swift_unknownObjectRelease();
  v2 = v0[3];
  v3 = v0[4];
  result = v3 - v2;
  if (__OFSUB__(v3, v2))
  {
    __break(1u);
  }

  else
  {
    v6 = v0[5];
    v5 = v0[6];
    MEMORY[0x1CCA91980](result);
    result = v5 - v6;
    if (!__OFSUB__(v5, v6))
    {
      return MEMORY[0x1CCA91980](result);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C99EB410(uint64_t a1)
{
  sub_1C97BE32C(a1);
  sub_1C99EB36C();
  return sub_1C9A93D18();
}

uint64_t sub_1C99EB460()
{
  sub_1C9A93CC8();
  sub_1C99EB36C();
  return sub_1C9A93D18();
}

uint64_t sub_1C99EB4B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1C99ED120();
  sub_1C97BE32C(v6);
  sub_1C9A933C8();
  return sub_1C9A93D18();
}

uint64_t sub_1C99EB59C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 - 8);
  sub_1C9A93CC8();
  sub_1C99EB4B4(v7, *v3, v3[1], v3[2], v3[3], *(a2 + 16), v5);
  return sub_1C9A93D18();
}

BOOL sub_1C99EB5F8()
{
  v2 = sub_1C99ED0EC();
  v6 = type metadata accessor for DeinterleavedSignalBuffer.NoncontiguousFrames(v2, v3, v4, v5);
  sub_1C99E95D0(v6, v40);
  v7 = sub_1C99ED070();
  sub_1C99E95D0(v7, v8);
  v9 = sub_1C99EB834(v40, v41, v0, v1);
  v10 = sub_1C9855110();
  v14 = type metadata accessor for DeinterleavedSignalBuffer.NoncontiguousSamples(v10, v11, v12, v13);
  sub_1C97AEB3C();
  v16 = *(v15 + 8);
  v16(v41, v14);
  v16(v40, v14);
  if ((v9 & 1) == 0)
  {
    return 0;
  }

  v17 = sub_1C99ED198();
  sub_1C99E95D0(v17, v18);
  v47[0] = v42[0];
  v47[1] = v42[1];
  v47[2] = v42[2];
  v48 = v43;
  sub_1C99ECF78();
  WitnessTable = swift_getWitnessTable();
  v20 = sub_1C99ED220(WitnessTable);
  sub_1C97AEB3C();
  v22 = *(v21 + 8);
  v22(v42, v6);
  v23 = sub_1C99ED070();
  sub_1C99E95D0(v23, v24);
  sub_1C99ED010();
  v25 = sub_1C99ED200(v45);
  v22(v44, v6);
  if (v20 != v25)
  {
    return 0;
  }

  v26 = sub_1C99ED198();
  sub_1C99E95D0(v26, v27);
  v28 = sub_1C9855110();
  v32 = type metadata accessor for DeinterleavedSignalBuffer.NoncontiguousChannels(v28, v29, v30, v31);
  sub_1C99ECF90();
  swift_getWitnessTable();
  v33 = sub_1C99ED260();
  sub_1C97AEB3C();
  v35 = *(v34 + 8);
  v35(&v46, v32);
  v36 = sub_1C99ED070();
  sub_1C99E95D0(v36, v37);
  v38 = sub_1C99ED260();
  v35(v47, v32);
  return v33 == v38;
}

uint64_t sub_1C99EB834(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for DeinterleavedSignalBuffer.NoncontiguousSamples(0, a3, a3, a4);
  sub_1C99ECFC4();
  return sub_1C9A926C8() & 1;
}

uint64_t sub_1C99EB8E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(_OWORD *, _OWORD *, void, uint64_t))
{
  v5 = *(a4 - 8);
  v6 = *(a1 + 16);
  v9[0] = *a1;
  v9[1] = v6;
  v9[2] = *(a1 + 32);
  v10 = *(a1 + 48);
  v7 = *(a2 + 16);
  v11[0] = *a2;
  v11[1] = v7;
  v11[2] = *(a2 + 32);
  v12 = *(a2 + 48);
  return a5(v9, v11, *(a3 + 16), v5) & 1;
}

uint64_t sub_1C99EB94C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C99E95D0(a2, v20);
  v4 = sub_1C9855110();
  v8 = type metadata accessor for DeinterleavedSignalBuffer.NoncontiguousSamples(v4, v5, v6, v7);
  sub_1C99EBBD4();
  sub_1C97AEB3C();
  (*(v9 + 8))(v20, v8);
  sub_1C99E95D0(a2, v21);
  v23[0] = v21[0];
  v23[1] = v21[1];
  v23[2] = v21[2];
  v24 = v22;
  sub_1C99ECF78();
  swift_getWitnessTable();
  v10 = sub_1C9A92CC8();
  sub_1C97AEB3C();
  (*(v11 + 8))(v21, a2);
  MEMORY[0x1CCA91980](v10);
  sub_1C99E95D0(a2, v23);
  v12 = sub_1C9855110();
  v16 = type metadata accessor for DeinterleavedSignalBuffer.NoncontiguousChannels(v12, v13, v14, v15);
  sub_1C99ECF90();
  swift_getWitnessTable();
  v17 = sub_1C9A92CC8();
  sub_1C97AEB3C();
  (*(v18 + 8))(v23, v16);
  return MEMORY[0x1CCA91980](v17);
}

uint64_t sub_1C99EBBD4()
{
  sub_1C981E34C();
  sub_1C99ED098();
  sub_1C97AEB3C();
  (*(v2 + 16))(v4, v0, v1);
  sub_1C99ECFC4();
  sub_1C9A928E8();
  sub_1C9A928C8();
}

uint64_t sub_1C99EBC74()
{
  sub_1C981E34C();
  sub_1C97BE32C(v3);
  v0(v5, v2, v1);
  return sub_1C9A93D18();
}

uint64_t sub_1C99EBD80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t, uint64_t))
{
  v7 = *(a3 - 8);
  sub_1C9A93CC8();
  v8 = v4[1];
  v11 = *v4;
  v12 = v8;
  v13 = v4[2];
  v14 = *(v4 + 6);
  a4(v10, a2, v7);
  return sub_1C9A93D18();
}

uint64_t sub_1C99EBF7C(uint64_t (*a1)(unint64_t, uint64_t, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v27 = a8;
  v28 = a2;
  v29 = a1;
  v13 = *(a6 - 8);
  v14 = MEMORY[0x1EEE9AC00](a1);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v26 - v17;
  if ((_swift_isClassOrObjCExistentialType() & 1) != 0 && (a3 < 0 || (a3 & 0x4000000000000000) != 0))
  {
    v25 = v30;
    result = sub_1C99EC1D8(v29, v28, a3, a4, a5, a6, a7, v18);
    v16 = v18;
    if (v25)
    {
      return (*(v13 + 32))(v27, v16, a6);
    }
  }

  else
  {
    if (_swift_isClassOrObjCExistentialType())
    {
      v19 = ((*(*(a4 - 8) + 80) + 32) & ~*(*(a4 - 8) + 80)) + (a3 & 0xFFFFFFFFFFFFFF8);
    }

    else
    {
      v19 = a3 + ((*(*(a4 - 8) + 80) + 32) & ~*(*(a4 - 8) + 80));
    }

    if ((_swift_isClassOrObjCExistentialType() & 1) != 0 && (a3 < 0 || (a3 & 0x4000000000000000) != 0))
    {
      sub_1C9A935E8();
      v22 = sub_1C9A934C8();
      swift_unknownObjectRelease();
    }

    else
    {
      isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType();
      v21 = a3 & 0xFFFFFFFFFFFFFF8;
      if ((isClassOrObjCExistentialType & 1) == 0)
      {
        v21 = a3;
      }

      v22 = *(v21 + 16);
    }

    v23 = v30;
    result = v29(v19, v22, v16);
    if (v23)
    {
      return (*(v13 + 32))(v27, v16, a6);
    }
  }

  return result;
}

uint64_t sub_1C99EC1D8(uint64_t (*a1)(unint64_t, uint64_t, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v22 = a8;
  v11 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1C99EC330(v14, v15);
  v17 = (*(*(a4 - 8) + 80) + 32) & ~*(*(a4 - 8) + 80);
  v18 = v16[2];

  v19 = v23;
  result = a1(v16 + v17, v18, v13);
  if (v19)
  {
    return (*(v11 + 32))(v22, v13, a6);
  }

  return result;
}

void *sub_1C99EC330(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    v2 = a1;
  }

  else
  {
    v2 = (a1 & 0xFFFFFFFFFFFFFF8);
  }

  AssociatedObject = objc_getAssociatedObject(v2, MEMORY[0x1E69E7CC0]);
  if (AssociatedObject)
  {
    v4 = AssociatedObject;
  }

  else
  {
    objc_sync_enter(v2);
    v5 = objc_getAssociatedObject(v2, MEMORY[0x1E69E7CC0]);
    if (v5)
    {
      v4 = v5;
      swift_retain_n();
    }

    else
    {
      sub_1C9A93628();
      swift_getWitnessTable();
      v4 = sub_1C9A93B98();

      objc_setAssociatedObject(v2, MEMORY[0x1E69E7CC0], v4, 1);
    }

    objc_sync_exit(v2);
  }

  return v4;
}

void *sub_1C99EC42C(void *result, uint64_t a2, uint64_t a3)
{
  if (*result)
  {
    if (*result == a2)
    {
      if (result[1] == a3)
      {
        return sub_1C9A933B8();
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C99EC478(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v12 = *(a9 - 8);
  result = MEMORY[0x1EEE9AC00](a1);
  v20 = &v21 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (__OFSUB__(v16 >> 1, v15))
  {
    __break(1u);
  }

  else
  {
    result = v18(v14 + *(*(v17 - 8) + 72) * v15, (v16 >> 1) - v15, &v21 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
    if (v11)
    {
      return (*(v12 + 32))(a11, v20, a9);
    }
  }

  return result;
}

uint64_t sub_1C99EC67C(uint64_t a1, uint64_t a2, void *a3)
{
  result = (*(v3 + 32))(a1, a2);
  if (v4)
  {
    *a3 = v4;
  }

  return result;
}

uint64_t sub_1C99EC6B4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return sub_1C97BE3EC(-1);
  }

  if (a2 < 0 && *(a1 + 32))
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

  return sub_1C97BE3EC(v2);
}

void *sub_1C99EC6F0(void *result, int a2, int a3)
{
  if (a2 < 0)
  {
    result[2] = 0;
    result[3] = 0;
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

      return sub_1C99ED024(result, a2);
    }

    *(result + 32) = 0;
    if (a2)
    {
      return sub_1C99ED024(result, a2);
    }
  }

  return result;
}

uint64_t sub_1C99EC80C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return sub_1C97BE3EC(-1);
  }

  if (a2 < 0 && *(a1 + 24))
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

  return sub_1C97BE3EC(v2);
}

void *sub_1C99EC848(void *result, int a2, int a3)
{
  if (a2 < 0)
  {
    result[1] = 0;
    result[2] = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

      return sub_1C99ED024(result, a2);
    }

    *(result + 24) = 0;
    if (a2)
    {
      return sub_1C99ED024(result, a2);
    }
  }

  return result;
}

uint64_t sub_1C99ECB34(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return sub_1C97BE3EC(-1);
  }

  if (a2 < 0 && *(a1 + 56))
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

  return sub_1C97BE3EC(v2);
}

void *sub_1C99ECB70(void *result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 5) = 0u;
    *(result + 3) = 0u;
    *(result + 1) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

      return sub_1C99ED024(result, a2);
    }

    *(result + 56) = 0;
    if (a2)
    {
      return sub_1C99ED024(result, a2);
    }
  }

  return result;
}

uint64_t sub_1C99ECFC4()
{

  return swift_getWitnessTable();
}

uint64_t sub_1C99ECFEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{

  return sub_1C99E72B4(a1, a2, a3, a4, a5, a6, a7, a8, sub_1C99ECCE0);
}

__n128 sub_1C99ED010()
{
  v2 = *(v0 + 16);
  *(v1 - 224) = *v0;
  *(v1 - 208) = v2;
  result = *(v0 + 32);
  *(v1 - 192) = result;
  return result;
}

__n128 sub_1C99ED030(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a12, uint64_t a9, __int128 a10, __int128 a11, __n128 a13, uint64_t a14)
{
  *v14 = a10;
  *(v14 + 16) = a11;
  result = a13;
  *(v14 + 32) = a13;
  *(v14 + 48) = a14;
  return result;
}

__n128 sub_1C99ED0B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a29, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, __int128 a27, __int128 a28, __n128 a30, uint64_t a31)
{
  *(v31 - 160) = a27;
  *(v31 - 144) = a28;
  result = a30;
  *(v31 - 128) = a30;
  *(v31 - 112) = a31;
  return result;
}

uint64_t sub_1C99ED150()
{

  return sub_1C9A93358();
}

uint64_t sub_1C99ED174()
{

  return MEMORY[0x1EEE6A080](v1, v2, v3, v4, v0);
}

__n128 sub_1C99ED1B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a10, __int128 a9, __n128 a11)
{
  result = a11;
  *(v11 + 24) = a9;
  *(v11 + 8) = a11;
  *(v11 + 40) = v12;
  *(v11 + 48) = v13;
  return result;
}

uint64_t sub_1C99ED200@<X0>(uint64_t a1@<X8>)
{
  *(v1 - 176) = a1;

  return sub_1C9A92CC8();
}

uint64_t sub_1C99ED220(uint64_t a1)
{

  return sub_1C9A92CC8();
}

uint64_t sub_1C99ED240()
{

  return sub_1C97ACC50(v1, 0, 1, v0);
}

uint64_t sub_1C99ED260()
{

  return sub_1C9A92CC8();
}

uint64_t sub_1C99ED278()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C9901D7C;

  return sub_1C981DFBC();
}

uint64_t sub_1C99ED324(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = result + 48;
    do
    {
      v2 += 24;

      sub_1C9A91DF8();

      --v1;
    }

    while (v1);
  }

  return result;
}

uint64_t sub_1C99ED3B0(uint64_t a1, uint64_t a2)
{
  sub_1C98EE70C();
  sub_1C97C8930(v4);
  v11[3] = swift_getObjectType();
  v11[0] = v2;
  swift_unknownObjectRetain();
  sub_1C97ED038(v11);
  v6 = v5;
  if (sub_1C98782EC(v5, a2))
  {
    v11[0] = 0;
    sub_1C9A91DF8();
  }

  v7 = sub_1C9A323E4();
  if (v8)
  {
    v9 = v7;
    swift_isUniquelyReferenced_nonNull_native();
    v11[0] = a2;
    sub_1C97A2CEC(&qword_1EC3C7B18, &qword_1C9A9FF68);
    sub_1C9A93748();
    a2 = v11[0];

    sub_1C99F1974(&qword_1EC3C5688, sub_1C97C8930, MEMORY[0x1E69E81B8]);
    sub_1C9A93768();
  }

  else
  {
  }

  return a2;
}

uint64_t sub_1C99ED554(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2)
  {
    v3 = result + 48;
    do
    {
      v3 += 24;

      sub_1C9A91E08();

      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t sub_1C99ED5E4@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v77 = a4;
  v90 = a5;
  v94[4] = *MEMORY[0x1E69E9840];
  v63 = type metadata accessor for SNUltronUtils.UltronReportTemplate(0);
  v87 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v88 = v8;
  v89 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1C97A2CEC(&qword_1EC3D13B8, &qword_1C9ACA0E8);
  v82 = *(v9 - 8);
  v83 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v81 = &v59 - v10;
  v11 = sub_1C97A2CEC(&qword_1EC3D13C0, &qword_1C9ACA0F0);
  v85 = *(v11 - 8);
  v86 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v84 = &v59 - v12;
  v73 = sub_1C97A2CEC(&qword_1EC3D13C8, &qword_1C9ACA0F8);
  MEMORY[0x1EEE9AC00](v73);
  v70 = &v59 - v13;
  v75 = sub_1C97A2CEC(&qword_1EC3D13D0, &qword_1C9ACA100);
  v74 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75);
  v71 = &v59 - v14;
  v15 = sub_1C97A2CEC(&qword_1EC3D13D8, &unk_1C9ACA108);
  v79 = *(v15 - 8);
  v80 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v78 = &v59 - v16;
  v68 = sub_1C97A2CEC(&unk_1EC3C9910, &unk_1C9AA3410);
  v67 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v18 = (&v59 - v17);
  v66 = sub_1C9A91C28();
  v65 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v64 = &v59 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1C97A2CEC(&qword_1EC3D13E0, &qword_1C9ACA118);
  v62 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v59 - v21;
  v92 = sub_1C97A2CEC(&qword_1EC3D13E8, &qword_1C9ACA120);
  v76 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92);
  v93 = &v59 - v23;
  v91 = sub_1C9A91558();
  v72 = *(v91 - 8);
  MEMORY[0x1EEE9AC00](v91);
  v25 = &v59 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94[2] = a2;
  v94[3] = a1;
  v26 = [objc_opt_self() defaultManager];
  v27 = a3;
  sub_1C9A91518();
  v28 = sub_1C9A92478();

  v94[0] = 0;
  v29 = [v26 createDirectoryAtPath:v28 withIntermediateDirectories:1 attributes:0 error:v94];

  if (v29)
  {
    v30 = *(v63 + 20);
    v31 = *(v27 + *(v63 + 24));
    v32 = v94[0];
    v61 = v27;
    v94[0] = sub_1C99EEE98(v27 + v30, v31);
    v94[1] = v33;
    MEMORY[0x1CCA90230](46, 0xE100000000000000);
    MEMORY[0x1CCA90230](7758199, 0xE300000000000000);
    v69 = v25;
    sub_1C9A914A8();

    sub_1C97A2CEC(&qword_1EC3D13A8, &qword_1C9ACA0E0);
    v60 = MEMORY[0x1E695BF88];
    sub_1C97AE67C(&qword_1EC3D13F0, &qword_1EC3D13A8, &qword_1C9ACA0E0, MEMORY[0x1E695BF88]);
    sub_1C9A92068();
    v63 = MEMORY[0x1E695BE38];
    sub_1C97AE67C(&qword_1EC3D13F8, &qword_1EC3D13E0, &qword_1C9ACA118, MEMORY[0x1E695BE38]);
    sub_1C9A92008();
    sub_1C97A2CEC(&qword_1EC3D1400, &qword_1C9ACA128);
    swift_allocObject();
    v34 = sub_1C98E3778();
    (*(v62 + 8))(v22, v20);
    v94[0] = v34;
    v35 = v65;
    v36 = v64;
    v37 = v66;
    (*(v65 + 104))(v64, *MEMORY[0x1E695BD20], v66);
    *v18 = sub_1C99F04CC;
    v18[1] = 0;
    v38 = v67;
    v39 = v68;
    (*(v67 + 104))(v18, *MEMORY[0x1E695BD48], v68);
    sub_1C97AE67C(&qword_1EC3D1408, &qword_1EC3D1400, &qword_1C9ACA128, &unk_1C9AB4B80);
    sub_1C9A92018();
    (*(v38 + 8))(v18, v39);
    (*(v35 + 8))(v36, v37);

    sub_1C97A2CEC(&qword_1EC3C8488, &qword_1C9AA3448);
    sub_1C97AE67C(&qword_1EC3D1410, &qword_1EC3C8488, &qword_1C9AA3448, v60);
    sub_1C97AE67C(&qword_1EC3D1418, &qword_1EC3D13E8, &qword_1C9ACA120, MEMORY[0x1E695BDD8]);
    v40 = v70;
    sub_1C9A92038();
    v41 = v73;
    v42 = v72;
    (*(v72 + 16))(v40 + *(v73 + 36), v69, v91);
    v43 = v77;
    *(v40 + *(v41 + 40)) = v77;
    sub_1C97AE67C(&qword_1EC3D1420, &qword_1EC3D13C8, &qword_1C9ACA0F8, &unk_1C9AC8080);
    v44 = v43;
    v45 = v71;
    sub_1C9A92028();
    sub_1C99F1594(v40);
    sub_1C97AE67C(&qword_1EC3D1428, &qword_1EC3D13D0, &qword_1C9ACA100, MEMORY[0x1E695BDE0]);
    v46 = v78;
    v47 = v75;
    sub_1C9A92068();
    (*(v74 + 8))(v45, v47);
    sub_1C97AE67C(&qword_1EC3D1430, &qword_1EC3D13D8, &unk_1C9ACA108, v63);
    v49 = v80;
    v48 = v81;
    v50 = v92;
    sub_1C9A91F78();
    sub_1C97A2CEC(&qword_1EC3D1438, &qword_1C9ACA130);
    sub_1C97AE67C(&qword_1EC3D1440, &qword_1EC3D13B8, &qword_1C9ACA0E8, MEMORY[0x1E695BD68]);
    v51 = v83;
    v52 = v84;
    sub_1C9A91F68();
    (*(v82 + 8))(v48, v51);
    v53 = v89;
    sub_1C99F1A68(v61, v89);
    v54 = (*(v87 + 80) + 16) & ~*(v87 + 80);
    v55 = swift_allocObject();
    sub_1C99F15FC(v53, v55 + v54);
    v56 = v86;
    sub_1C9A91C38();

    (*(v85 + 8))(v52, v56);
    (*(v79 + 8))(v46, v49);
    (*(v76 + 8))(v93, v50);
    return (*(v42 + 8))(v69, v91);
  }

  else
  {
    v58 = v94[0];
    sub_1C9A913C8();

    return swift_willThrow();
  }
}

uint64_t sub_1C99EE308(uint64_t a1, uint64_t a2)
{
  if ((sub_1C9A914E8() & 1) == 0)
  {
    return 0;
  }

  sub_1C99F20B4();
  v5 = *(a1 + v4);
  v6 = *(a1 + v4 + 8);
  v7 = (a2 + v4);
  if (v5 == *v7 && v6 == v7[1])
  {
    return 1;
  }

  return sub_1C9A93B18();
}

uint64_t sub_1C99EE380(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000014 && 0x80000001C9ADE240 == a2;
  if (v3 || (sub_1C9A93B18() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x726556646C697562 && a2 == 0xEC0000006E6F6973)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C9A93B18();

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

uint64_t sub_1C99EE454(char a1)
{
  if (a1)
  {
    return 0x726556646C697562;
  }

  else
  {
    return 0xD000000000000014;
  }
}

uint64_t sub_1C99EE498(void *a1)
{
  sub_1C97A2CEC(&qword_1EC3D14B0, &qword_1C9ACA360);
  sub_1C97AE9C8();
  MEMORY[0x1EEE9AC00](v3);
  sub_1C97A5A8C(a1, a1[3]);
  sub_1C99F1A14();
  sub_1C9A93DD8();
  sub_1C9A91558();
  sub_1C99F1DAC();
  sub_1C99F1974(v4, v5, MEMORY[0x1E6968FB8]);
  sub_1C9A93A18();
  if (!v1)
  {
    type metadata accessor for SNUltronUtils.UltronReportingPlan(0);
    sub_1C9A939C8();
  }

  v6 = sub_1C97AEB30();
  return v7(v6);
}

uint64_t sub_1C99EE634(uint64_t a1)
{
  sub_1C9A91558();
  sub_1C99F1DAC();
  sub_1C99F1974(v1, v2, MEMORY[0x1E6968FC0]);
  sub_1C9A92398();
  sub_1C99F20B4();

  return sub_1C9A92528();
}

uint64_t sub_1C99EE6BC()
{
  sub_1C9A93CC8();
  sub_1C9A91558();
  sub_1C99F1DAC();
  sub_1C99F1974(v0, v1, MEMORY[0x1E6968FC0]);
  sub_1C9A92398();
  sub_1C99F20B4();
  sub_1C9A92528();
  return sub_1C9A93D18();
}

uint64_t sub_1C99EE748@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C9A91558();
  sub_1C97AE9C8();
  v25 = v5;
  v26 = v4;
  MEMORY[0x1EEE9AC00](v4);
  sub_1C97AEAD8();
  v8 = v7 - v6;
  sub_1C97A2CEC(&qword_1EC3D14A0, &qword_1C9ACA358);
  sub_1C97AE9C8();
  MEMORY[0x1EEE9AC00](v9);
  v10 = type metadata accessor for SNUltronUtils.UltronReportingPlan(0);
  sub_1C97DA940();
  MEMORY[0x1EEE9AC00](v11);
  sub_1C97AEAD8();
  v14 = v13 - v12;
  sub_1C97A5A8C(a1, a1[3]);
  sub_1C99F1A14();
  sub_1C9A93DB8();
  if (v2)
  {
    return sub_1C97A592C(a1);
  }

  sub_1C99F1DAC();
  sub_1C99F1974(v15, v16, MEMORY[0x1E6968FD0]);
  sub_1C9A938F8();
  (*(v25 + 32))(v14, v8, v26);
  v17 = sub_1C9A938A8();
  v19 = v18;
  v20 = sub_1C99F1FF4();
  v21(v20);
  v22 = (v14 + *(v10 + 20));
  *v22 = v17;
  v22[1] = v19;
  sub_1C99F1A68(v14, a2);
  sub_1C97A592C(a1);
  return sub_1C99F1AC4(v14, type metadata accessor for SNUltronUtils.UltronReportingPlan);
}

uint64_t sub_1C99EEA44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C99EE380(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C99EEA6C(uint64_t a1)
{
  v2 = sub_1C99F1A14();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C99EEAA8(uint64_t a1)
{
  v2 = sub_1C99F1A14();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C99EEB1C(uint64_t a1, uint64_t a2)
{
  sub_1C9A93CC8();
  sub_1C9A91558();
  sub_1C99F1974(&qword_1EC3C6BA0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
  sub_1C9A92398();
  sub_1C9A92528();
  return sub_1C9A93D18();
}

void *sub_1C99EEBC4(uint64_t a1, int32_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 16);
  v5 = MEMORY[0x1E69E7CC0];
  if (!v4)
  {
    return v5;
  }

  v25 = MEMORY[0x1E69E7CC0];
  result = sub_1C97B8358(0, v4, 0);
  v10 = __OFSUB__(0, a1);
  v11 = -a1;
  if (!v10)
  {
    v5 = v25;
    v12 = (a4 + 32);
    do
    {
      v13 = *v12;
      [v13 copy];
      sub_1C9A93318();
      swift_unknownObjectRelease();
      sub_1C97A2CEC(&qword_1EC3C6900, &unk_1C9A9FF70);
      swift_dynamicCast();
      v21 = *&rhs.value;
      ObjectType = swift_getObjectType();
      (*(*(*(&v21 + 1) + 8) + 8))(v26);
      CMTimeMake(&lhs, v11, a2);
      value = lhs.value;
      epoch = lhs.epoch;
      v17 = *&lhs.timescale;
      lhs = v26[0];
      rhs.value = value;
      *&rhs.timescale = v17;
      rhs.epoch = epoch;
      CMTimeAdd(&v22, &lhs, &rhs);
      lhs = v22;
      rhs = v26[1];
      CMTimeRangeMake(&v27, &lhs, &rhs);
      (*(*(&v21 + 1) + 16))(&v27, ObjectType, *(&v21 + 1));

      v25 = v5;
      v19 = *(v5 + 16);
      v18 = *(v5 + 24);
      if (v19 >= v18 >> 1)
      {
        v20 = sub_1C97CE0F4(v18);
        sub_1C97B8358(v20, v19 + 1, 1);
        v5 = v25;
      }

      *(v5 + 16) = v19 + 1;
      *(v5 + 16 * v19 + 32) = v21;
      v12 += 2;
      --v4;
    }

    while (v4);
    return v5;
  }

  __break(1u);
  return result;
}

void *sub_1C99EEDF8(void *a1)
{
  if (!a1[2])
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = a1[4];
  v3 = a1[5];
  ObjectType = swift_getObjectType();
  v5 = *(v3 + 8);
  v6 = *(v5 + 8);
  v7 = v2;
  v6(&v11, ObjectType, v5);
  v9 = sub_1C99EEBC4(v11, v12, v8, a1);

  return v9;
}

uint64_t sub_1C99EEE98(uint64_t a1, uint64_t a2)
{
  v3 = sub_1C991B554();
  v4 = sub_1C9A91678();
  v5 = [v3 stringFromDate_];

  v6 = sub_1C9A924A8();
  v8 = v7;

  MEMORY[0x1CCA90230](95, 0xE100000000000000);
  MEMORY[0x1CCA90230](v6, v8);

  return a2;
}

void sub_1C99EF1B4(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_1C9A934C8();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v2)
  {
    v11 = MEMORY[0x1E69E7CC0];
    sub_1C97B8378(0, v2 & ~(v2 >> 63), 0);
    if (v2 < 0)
    {
      __break(1u);
    }

    else
    {
      v3 = 0;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v4 = sub_1C97AEB30();
          v5 = MEMORY[0x1CCA912B0](v4);
        }

        else
        {
          v5 = *(a1 + 8 * v3 + 32);
        }

        v6 = v5;
        SNDetectionResult.timeRange.getter(v12);

        v8 = *(v11 + 16);
        v7 = *(v11 + 24);
        if (v8 >= v7 >> 1)
        {
          v10 = sub_1C97CE0F4(v7);
          sub_1C97B8378(v10, v8 + 1, 1);
        }

        ++v3;
        v9 = v12[0];
        *(v11 + 16) = v8 + 1;
        *(v11 + 8 * v8 + 32) = v9;
      }

      while (v2 != v3);
    }
  }
}

void sub_1C99EF2D4(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v8[0] = 0;
  v6 = [objc_opt_self() copyRecentFramesOfAudioRingBufferToAVAudioBufferFrom:a5 frameCount:a6 ringBufferStartSampleTime:v8];
  if (v6)
  {
    v7 = v6;
    sub_1C9A91E08();
  }
}

void sub_1C99EF378(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4 >> 62)
  {
    v5 = sub_1C9A934C8();
    if (!v5)
    {
      return;
    }
  }

  else
  {
    v5 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      return;
    }
  }

  if (v5 < 1)
  {
    __break(1u);
  }

  else
  {
    for (i = 0; i != v5; ++i)
    {
      if ((a4 & 0xC000000000000001) != 0)
      {
        v7 = sub_1C97AEB30();
        v8 = MEMORY[0x1CCA912B0](v7);
      }

      else
      {
        v8 = *(a4 + 8 * i + 32);
      }

      v9 = v8;
      sub_1C9A91E08();
    }
  }
}

void sub_1C99EF434(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, CMTimeValue a6, uint64_t a7, CMTimeEpoch a8)
{
  sub_1C982061C(a4, v81);
  if (!v8)
  {
    sub_1C99F2064(v16, v17, v18, v19, v20, v21, v22, v23, v62, v65, v68, v70, a4, v74, v77.value, *&v77.timescale, v77.epoch, rhs.value, *&rhs.timescale, rhs.epoch, range.start.value, *&range.start.timescale, range.start.epoch, range.duration.value, *&range.duration.timescale, range.duration.epoch, v80, *&v81[0], *(&v81[0] + 1), *&v81[1], *(&v81[1] + 1), v81[2]);
    CMTimeRangeGetEnd(&rhs, &range);
    epoch = rhs.epoch;
    rhs.epoch = a8;
    range.start.value = rhs.value;
    *&range.start.timescale = *&rhs.timescale;
    range.start.epoch = epoch;
    rhs.value = a6;
    *&rhs.timescale = a7;
    v25 = CMTimeSubtract(&v77, &range.start, &rhs);
    sub_1C99F2064(v25, v26, v27, v28, v29, v30, v31, v32, v63, v66, v69, v71, v72, v75, v77.value, *&v77.timescale, v77.epoch, v77.value, *&v77.timescale, v77.epoch, range.start.value, *&range.start.timescale, range.start.epoch, range.duration.value, *&range.duration.timescale, range.duration.epoch, v80, *&v81[0], *(&v81[0] + 1), *&v81[1], *(&v81[1] + 1), v81[2]);
    CMTimeClampToRange(&v77, &rhs, &range);
    value = v77.value;
    v34 = *&v77.timescale;
    v76 = v77.epoch;
    v35 = sub_1C97BDEE0();
    v36 = MEMORY[0x1E69E7CC0];
    v83 = a2;
    if (v35)
    {
      v37 = v35;
      v64 = v34;
      v67 = value;
      range.start.value = MEMORY[0x1E69E7CC0];
      p_range = &range;
      sub_1C97B7E68(0, v35 & ~(v35 >> 63), 0);
      if (v37 < 0)
      {
        __break(1u);
        goto LABEL_23;
      }

      v39 = 0;
      v36 = range.start.value;
      do
      {
        if ((a5 & 0xC000000000000001) != 0)
        {
          v40 = MEMORY[0x1CCA912B0](v39, a5);
        }

        else
        {
          v40 = *(a5 + 8 * v39 + 32);
        }

        v41 = v40;
        range.start.value = v36;
        v43 = *(v36 + 16);
        v42 = *(v36 + 24);
        if (v43 >= v42 >> 1)
        {
          v45 = sub_1C97CE0F4(v42);
          sub_1C97B7E68(v45, v43 + 1, 1);
          v36 = range.start.value;
        }

        ++v39;
        *(v36 + 16) = v43 + 1;
        v44 = v36 + 16 * v43;
        *(v44 + 32) = v41;
        *(v44 + 40) = &off_1F4949DA0;
      }

      while (v37 != v39);
      a2 = v83;
      v34 = v64;
      value = v67;
    }

    sub_1C98202E4(v36, value, v34, v76);
    v47 = v46;

    v48 = *(v47 + 16);
    if (v48)
    {
      v49 = a1;
      range.start.value = MEMORY[0x1E69E7CC0];
      sub_1C9A93698();
      type metadata accessor for SNDetectionResult(v50);
      v51 = 32;
      do
      {
        v52 = *(v47 + v51);
        swift_dynamicCastClassUnconditional();
        v53 = v52;
        sub_1C9A93678();
        sub_1C9A936A8();
        sub_1C9A936B8();
        sub_1C9A93688();
        v51 += 16;
        --v48;
      }

      while (v48);

      p_range = range.start.value;
      a1 = v49;
      a2 = v83;
    }

    else
    {

      p_range = MEMORY[0x1E69E7CC0];
    }

    sub_1C99EF378(v54, a2, v55, p_range);
    if (sub_1C97BDEE0())
    {
      sub_1C97C4F68();
      if ((p_range & 0xC000000000000001) == 0)
      {
        v56 = *(p_range + 32);
LABEL_20:
        v57 = v56;

        SNDetectionResult.timeRange.getter(v82);

        sub_1C98207D8(v82[0], v82[1], v82[2], v73);
        sub_1C99EF2D4(v61, a1, v59, v60, v73, v58);
        return;
      }

LABEL_23:
      v56 = MEMORY[0x1CCA912B0](0, p_range);
      goto LABEL_20;
    }
  }
}

void sub_1C99EF784(uint64_t a1, void *a2)
{
  v4 = sub_1C98EE70C();
  v5 = type metadata accessor for SNUltronUtils.UltronReportTemplate(v4);
  sub_1C97DA940();
  MEMORY[0x1EEE9AC00](v6);
  sub_1C97AEAD8();
  v9 = v8 - v7;
  v10 = MobileGestalt_get_current_device();
  if (v10)
  {
    v11 = v10;
    v12 = MobileGestalt_copy_buildVersion_obj();

    if (v12)
    {
      v13 = sub_1C9A924A8();
      v15 = v14;

      sub_1C99B5DCC();
      sub_1C9A91468();

      v16 = (v9 + *(type metadata accessor for SNUltronUtils.UltronReportingPlan(0) + 20));
      *v16 = v13;
      v16[1] = v15;
      type metadata accessor for SNUtils(v17);
      v18 = sub_1C9A18330(v2);
      v20 = v19;
      sub_1C9A916D8();
      v21 = (v9 + *(v5 + 24));
      *v21 = v18;
      v21[1] = v20;
      sub_1C99EF8EC(v9, a2);
      sub_1C99F1F18();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void *sub_1C99EF8EC(uint64_t a1, void *a2)
{
  sub_1C97A2CEC(&qword_1EC3D13A0, &unk_1C9ACA0D0);
  sub_1C97AE9C8();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v13 - v6;
  sub_1C97A2CEC(&qword_1EC3C8488, &qword_1C9AA3448);
  swift_allocObject();
  v8 = sub_1C9A91E28();
  sub_1C97A2CEC(&qword_1EC3D13A8, &qword_1C9ACA0E0);
  swift_allocObject();
  v9 = sub_1C9A91E28();
  sub_1C99ED5E4(v8, v9, a1, a2, v7);
  if (v2)
  {
  }

  else
  {
    sub_1C97AE67C(&qword_1EC3D13B0, &qword_1EC3D13A0, &unk_1C9ACA0D0, MEMORY[0x1E695BE28]);
    sub_1C9A91FB8();
    v10 = sub_1C97AEB30();
    v11(v10);
  }

  return v8;
}

uint64_t sub_1C99EFAD4(uint64_t a1, uint64_t a2)
{
  v137 = *MEMORY[0x1E69E9840];
  sub_1C9A91558();
  sub_1C97AE9C8();
  v115 = v6;
  v116 = v5;
  v7 = MEMORY[0x1EEE9AC00](v5);
  v123 = &v110 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v110 = &v110 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v110 - v11;
  sub_1C97E984C(a2, v13, v14, v15, v16, v17, v18, v19, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124);
  v21 = sub_1C97E9628(v20);

  v22 = sub_1C99EEDF8(v21);

  v23 = sub_1C97E9734(v22);

  v24 = sub_1C97E996C(v23);

  v25 = type metadata accessor for SNUltronUtils.UltronReportTemplate(0);
  v26 = (a1 + *(v25 + 24));
  v27 = *v26;
  v28 = v26[1];
  v119 = *(v25 + 20);
  v120 = v27;
  v122 = v28;
  v29 = sub_1C99EEE98(a1 + v119, v27);
  sub_1C99F2094(v29, v30);
  MEMORY[0x1CCA90230](7758199, 0xE300000000000000);
  v121 = a1;
  sub_1C9A914A8();

  type metadata accessor for SNAudioFileUtils(v31);
  v113 = sub_1C99C7598(v12);
  if (sub_1C99B5ED8())
  {
    sub_1C97BDEE0();
  }

  v32 = (v121 + *(type metadata accessor for SNUltronUtils.UltronReportingPlan(0) + 20));
  v34 = *v32;
  v33 = v32[1];
  *&v111 = v34;
  v112 = v33;
  v35 = sub_1C99EEE98(v121 + v119, v120);
  sub_1C99F2094(v35, v36);
  MEMORY[0x1CCA90230](7633012, 0xE300000000000000);
  sub_1C9A914A8();

  v37 = sub_1C99EEF64(v24);
  *(&v111 + 1) = v2;
  sub_1C97A2CEC(&qword_1EC3D1448, &unk_1C9ACA138);
  v38 = sub_1C9A937E8();
  v39 = v38;
  v40 = *(v37 + 64);
  v118 = v37 + 64;
  v41 = 1 << *(v37 + 32);
  v42 = -1;
  if (v41 < 64)
  {
    v42 = ~(-1 << v41);
  }

  v43 = v42 & v40;
  v117 = (v41 + 63) >> 6;
  v126 = v38 + 64;
  v125 = xmmword_1C9A9EE60;
  v114 = v12;
  v44 = 0;
  v127 = v37;
  v124 = v38;
  if ((v42 & v40) != 0)
  {
    goto LABEL_6;
  }

LABEL_7:
  v46 = v44;
  while (1)
  {
    v44 = v46 + 1;
    if (__OFADD__(v46, 1))
    {
      __break(1u);
      goto LABEL_41;
    }

    if (v44 >= v117)
    {
      break;
    }

    ++v46;
    if (*(v118 + 8 * v44))
    {
      sub_1C99F1DD8();
      while (2)
      {
        v47 = v45 | (v44 << 6);
        v48 = (*(v37 + 48) + 16 * v47);
        v49 = *v48;
        v50 = *(*(v37 + 56) + 8 * v47);
        v131 = v48[1];

        sub_1C99EF1B4(v51);
        v130 = v52;
        if (v50 >> 62)
        {
          v53 = sub_1C9A934C8();
        }

        else
        {
          v53 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v129 = v43;
        v132 = v49;
        v133 = v47;
        if (!v53)
        {
          v56 = MEMORY[0x1E69E7CC0];
          v64 = MEMORY[0x1E69E7CC0];
          v37 = v127;
          goto LABEL_32;
        }

        v136 = MEMORY[0x1E69E7CC0];
        v134 = v53 & ~(v53 >> 63);
        sub_1C97B7EE8(0, v134, 0);
        v135 = v53;
        if ((v53 & 0x8000000000000000) == 0)
        {
          v128 = v44;
          v54 = 0;
          v55 = v135;
          v56 = v136;
          v57 = v50 & 0xC000000000000001;
          do
          {
            if (v57)
            {
              v58 = MEMORY[0x1CCA912B0](v54, v50);
            }

            else
            {
              v58 = *(v50 + 8 * v54 + 32);
            }

            v59 = *&v58[OBJC_IVAR___SNDetectionResult_impl + 48];

            v136 = v56;
            v61 = *(v56 + 16);
            v60 = *(v56 + 24);
            if (v61 >= v60 >> 1)
            {
              v62 = sub_1C97CE0F4(v60);
              sub_1C97B7EE8(v62, v61 + 1, 1);
              v56 = v136;
            }

            v54 = (v54 + 1);
            *(v56 + 16) = v61 + 1;
            *(v56 + 8 * v61 + 32) = v59;
          }

          while (v55 != v54);
          v136 = MEMORY[0x1E69E7CC0];
          sub_1C97B83BC(0, v134, 0);
          v63 = 0;
          v64 = v136;
          v134 = v50;
          do
          {
            if (v57)
            {
              v65 = MEMORY[0x1CCA912B0](v63, v50);
            }

            else
            {
              v65 = *(v50 + 8 * v63 + 32);
            }

            v66 = v65[OBJC_IVAR___SNDetectionResult_impl + 72];

            v136 = v64;
            v68 = *(v64 + 16);
            v67 = *(v64 + 24);
            if (v68 >= v67 >> 1)
            {
              v69 = sub_1C97CE0F4(v67);
              sub_1C97B83BC(v69, v68 + 1, 1);
              v64 = v136;
            }

            v63 = (v63 + 1);
            *(v64 + 16) = v68 + 1;
            *(v64 + v68 + 32) = v66;
            v50 = v134;
          }

          while (v135 != v63);
          v37 = v127;
          v44 = v128;
          v39 = v124;
LABEL_32:
          sub_1C97A2CEC(&qword_1EC3C69E8, &unk_1C9A9D4A0);
          inited = swift_initStackObject();
          *(inited + 16) = v125;
          *(inited + 32) = 0x6D617473656D6974;
          *(inited + 40) = 0xE900000000000070;
          v71 = sub_1C97A2CEC(&qword_1EC3D1450, &unk_1C9ACA148);
          *(inited + 48) = v130;
          *(inited + 72) = v71;
          *(inited + 80) = 0x6E656469666E6F63;
          *(inited + 88) = 0xEA00000000006563;
          v72 = sub_1C97A2CEC(&qword_1EC3C8290, &qword_1C9AA2920);
          *(inited + 96) = v56;
          *(inited + 120) = v72;
          *(inited + 128) = 0x6465746365746564;
          *(inited + 136) = 0xE800000000000000;
          *(inited + 168) = sub_1C97A2CEC(&qword_1EC3D1458, &qword_1C9ACA158);
          *(inited + 144) = v64;
          v73 = sub_1C9A92348();

          v74 = v133;
          *(v126 + ((v133 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v133;
          v75 = (v39[6] + 16 * v74);
          v76 = v131;
          *v75 = v132;
          v75[1] = v76;
          *(v39[7] + 8 * v74) = v73;
          v77 = v39[2];
          v78 = __OFADD__(v77, 1);
          v79 = v77 + 1;
          if (!v78)
          {
            v39[2] = v79;
            v43 = v129;
            if (!v129)
            {
              goto LABEL_7;
            }

LABEL_6:
            sub_1C99F1DEC();
            continue;
          }

LABEL_41:
          __break(1u);
        }

        break;
      }

      __break(1u);
    }
  }

  v135 = sub_1C9879164();

  v80 = sub_1C991B6FC();
  v81 = v121;
  v82 = v119;
  v83 = sub_1C9A91678();
  v84 = [v80 stringFromDate_];

  v134 = sub_1C9A924A8();
  v86 = v85;

  v87 = v81 + v82;
  v88 = v120;
  v89 = v122;
  v90 = sub_1C99EEE98(v87, v120);
  v92 = v91;
  sub_1C97A2CEC(&qword_1EC3C69E8, &unk_1C9A9D4A0);
  v93 = swift_initStackObject();
  *(v93 + 16) = xmmword_1C9AA0140;
  strcpy((v93 + 32), "buildVersion");
  *(v93 + 45) = 0;
  *(v93 + 46) = -5120;
  v94 = v112;
  *(v93 + 48) = v111;
  *(v93 + 56) = v94;
  v95 = MEMORY[0x1E69E6158];
  *(v93 + 72) = MEMORY[0x1E69E6158];
  *(v93 + 80) = 0x79546E657473696CLL;
  *(v93 + 88) = 0xEA00000000006570;
  *(v93 + 96) = v88;
  *(v93 + 104) = v89;
  *(v93 + 120) = v95;
  *(v93 + 128) = 0x656D614E656C6966;
  *(v93 + 136) = 0xE800000000000000;
  *(v93 + 144) = v90;
  *(v93 + 152) = v92;
  *(v93 + 168) = v95;
  *(v93 + 176) = 0x7274536F69647561;
  *(v93 + 184) = 0xEF65746144676E69;
  *(v93 + 192) = v134;
  *(v93 + 200) = v86;
  *(v93 + 216) = v95;
  *(v93 + 224) = 0xD000000000000010;
  *(v93 + 232) = 0x80000001C9ADE220;
  v96 = sub_1C97A2CEC(&qword_1EC3C6330, qword_1C9A9BBC0);
  *(v93 + 240) = v135;
  *(v93 + 264) = v96;
  strcpy((v93 + 272), "userFeedback");
  v97 = MEMORY[0x1E69E6530];
  *(v93 + 285) = 0;
  *(v93 + 286) = -5120;
  *(v93 + 288) = -1;
  *(v93 + 312) = v97;
  *(v93 + 320) = 0x664F7265626D756ELL;
  *(v93 + 360) = MEMORY[0x1E69E7360];
  *(v93 + 328) = 0xEF73656C706D6153;
  *(v93 + 336) = v113;

  sub_1C9A92348();
  type metadata accessor for SNFileUtils(v98);
  v99 = sub_1C9A922F8();

  v100 = v123;
  v101 = *(&v111 + 1);
  sub_1C9A458A0(v123, v99, 1, 1, 0, v102);

  if (v101)
  {
    v103 = v116;
    v104 = v100;
    v105 = v114;
    v108 = *(v115 + 8);
    v108(v104, v116);
  }

  else
  {
    v106 = v115;
    v103 = v116;
    v107 = v110;
    (*(v115 + 32))(v110, v100, v116);
    sub_1C9A459C0(v107);
    v105 = v114;
    sub_1C9A459C0(v114);
    v108 = *(v106 + 8);
    v108(v107, v103);
  }

  return (v108)(v105, v103);
}

uint64_t sub_1C99F04CC@<X0>(uint64_t *a1@<X8>)
{
  sub_1C99F16CC();
  result = swift_allocError();
  *a1 = result;
  return result;
}

void sub_1C99F0518(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) <= a1)
  {
    v6 = a1;
  }

  else
  {
    v6 = *(*v2 + 24);
  }

  sub_1C97A2CEC(&qword_1EC3CD390, &qword_1C9AB68A8);
  v39 = a2;
  v7 = sub_1C99F20D0(v5, v6);
  if (!v5[2])
  {
LABEL_32:

LABEL_33:
    *v3 = v7;
    return;
  }

  v37 = v3;
  v38 = v5;
  v8 = 0;
  v9 = v5;
  sub_1C99F1D00();
  v12 = v11 & v10;
  v14 = (v13 + 63) >> 6;
  v15 = v7 + 64;
  v16 = 56;
  if ((v11 & v10) == 0)
  {
LABEL_7:
    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v14)
      {
        break;
      }

      ++v18;
      if (v9[v8])
      {
        sub_1C984ACD8();
        v12 = v20 & v19;
        goto LABEL_12;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_33;
    }

    sub_1C99F1E38();
    v3 = v37;
    if (v35 != v36)
    {
      sub_1C99F1E48(v34);
    }

    else
    {
      sub_1C99F1E6C(v34);
    }

    v5[2] = 0;
    goto LABEL_32;
  }

  while (1)
  {
    v17 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v21 = v17 | (v8 << 6);
    v44 = *(v5[6] + v21);
    v22 = v5[7] + v21 * v16;
    v43 = *v22;
    v42 = *(v22 + 8);
    v23 = *(v22 + 24);
    v24 = *(v22 + 32);
    v40 = *(v22 + 40);
    v41 = *(v22 + 16);
    v25 = *(v22 + 48);
    if ((v39 & 1) == 0)
    {
    }

    sub_1C9A93CC8();
    MEMORY[0x1CCA91980](v44);
    sub_1C9A93D18();
    sub_1C99F1D78();
    sub_1C99F1F00();
    if (v26)
    {
      break;
    }

    sub_1C987B428();
LABEL_24:
    sub_1C99F1DC4();
    *(v15 + v30) |= v31;
    *(*(v7 + 48) + v32) = v44;
    v33 = *(v7 + 56) + 56 * v32;
    *v33 = v43;
    *(v33 + 8) = v42;
    *(v33 + 16) = v41;
    *(v33 + 24) = v23;
    *(v33 + 32) = v24;
    *(v33 + 40) = v40;
    *(v33 + 48) = v25;
    sub_1C99F1E28();
    v5 = v38;
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  sub_1C987B414();
  while (1)
  {
    sub_1C99F1F0C();
    if (v26)
    {
      if (v28)
      {
        break;
      }
    }

    if (v27 == v29)
    {
      v27 = 0;
    }

    if (*(v15 + 8 * v27) != -1)
    {
      sub_1C987B400();
      goto LABEL_24;
    }
  }

LABEL_35:
  __break(1u);
}

void sub_1C99F0778()
{
  sub_1C99F1D90();
  sub_1C97A2CEC(&qword_1EC3CA090, &unk_1C9ACA190);
  sub_1C99F1EAC();
  sub_1C99F1FC0();
  if (!v4)
  {
LABEL_28:

    *v0 = v2;
    return;
  }

  v5 = 0;
  sub_1C99F1D00();
  sub_1C99F1E00();
  if (!v3)
  {
LABEL_4:
    v6 = v5;
    while (1)
    {
      v5 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v0)
      {
        break;
      }

      sub_1C99F1FE8();
      if (v7)
      {
        sub_1C99F1DD8();
        goto LABEL_9;
      }
    }

    if (v25)
    {
      sub_1C99F1E14();
      if (v23 != v24)
      {
        sub_1C99F1E48(v22);
      }

      else
      {
        sub_1C99F1E6C(v22);
      }

      *(v1 + 16) = 0;
    }

    goto LABEL_28;
  }

  while (1)
  {
    sub_1C99F1DEC();
LABEL_9:
    sub_1C99F1E58();
    v10 = (v9 + 32 * v8);
    if (v25)
    {
      v11 = sub_1C97A2D34(v10, v26);
    }

    else
    {
      sub_1C97BD360(v10, v26);
    }

    v14 = sub_1C99F207C(v11, v12, v13);
    sub_1C99F1FCC(v14, v15, v16);
    sub_1C9A93D18();
    sub_1C99F1D54();
    if (v17)
    {
      break;
    }

    sub_1C987B428();
LABEL_20:
    sub_1C99F1D24(v18);
    sub_1C97A2D34(v26, (v21 + 32 * v20));
    sub_1C99F1E28();
    if (!v3)
    {
      goto LABEL_4;
    }
  }

  sub_1C987B414();
  while (1)
  {
    sub_1C99F1F0C();
    if (v17)
    {
      if (v19)
      {
        break;
      }
    }

    sub_1C99F1ED4();
    if (!v17)
    {
      sub_1C987B400();
      goto LABEL_20;
    }
  }

LABEL_30:
  __break(1u);
}

void sub_1C99F08F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  sub_1C99F1F98();
  sub_1C99F1EE4();
  sub_1C97A2CEC(&qword_1EC3CD238, &unk_1C9ACA180);
  v35 = sub_1C99F2014();
  v58 = v33;
  v37 = sub_1C99F20D0(v35, v36);
  if (!*(v34 + 16))
  {
LABEL_27:

    *v32 = v37;
    sub_1C99F1F7C();
    return;
  }

  v57 = v34;
  v38 = 0;
  v39 = v34;
  sub_1C99F1D00();
  sub_1C99F1F68();
  if (!v33)
  {
LABEL_4:
    v40 = v38;
    while (1)
    {
      v38 = v40 + 1;
      if (__OFADD__(v40, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v38 >= v32)
      {
        break;
      }

      ++v40;
      if (*(v39 + 8 * v38))
      {
        sub_1C984ACD8();
        v33 = v42 & v41;
        goto LABEL_9;
      }
    }

    if (v58)
    {
      sub_1C99F1E38();
      if (v55 != v56)
      {
        sub_1C99F1E48(v54);
      }

      else
      {
        sub_1C99F1E6C(v54);
      }

      *(v34 + 16) = 0;
    }

    goto LABEL_27;
  }

  while (1)
  {
    sub_1C99F1F54();
LABEL_9:
    sub_1C99F1F40();
    v48 = *(v47 + 8 * v46);
    if ((v58 & 1) == 0)
    {
    }

    sub_1C99F207C(v43, v44, v45);
    sub_1C9A92528();
    sub_1C9A93D18();
    sub_1C99F1D78();
    sub_1C99F1F00();
    if (v49)
    {
      break;
    }

    sub_1C987B428();
LABEL_19:
    sub_1C99F1DC4();
    sub_1C99F1E8C(v51);
    *(v53 + 8 * v52) = v48;
    sub_1C99F1E28();
    v34 = v57;
    if (!v33)
    {
      goto LABEL_4;
    }
  }

  sub_1C987B414();
  while (1)
  {
    sub_1C99F1F0C();
    if (v49)
    {
      if (v50)
      {
        break;
      }
    }

    sub_1C99F2004();
    if (!v49)
    {
      sub_1C987B400();
      goto LABEL_19;
    }
  }

LABEL_29:
  __break(1u);
}

void sub_1C99F0A80()
{
  sub_1C99F1D90();
  sub_1C97A2CEC(&qword_1EC3CD228, &qword_1C9AB6798);
  sub_1C99F2024();
  sub_1C99F1FC0();
  if (!v4)
  {
LABEL_27:

    *v0 = v2;
    return;
  }

  v5 = 0;
  sub_1C99F1D00();
  sub_1C99F1E00();
  if (!v3)
  {
LABEL_4:
    v6 = v5;
    while (1)
    {
      v5 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v5 >= v0)
      {
        break;
      }

      sub_1C99F1FE8();
      if (v7)
      {
        sub_1C99F1DD8();
        goto LABEL_9;
      }
    }

    if (v18)
    {
      sub_1C99F1E14();
      if (v16 != v17)
      {
        sub_1C99F1E48(v15);
      }

      else
      {
        sub_1C99F1E6C(v15);
      }

      *(v1 + 16) = 0;
    }

    goto LABEL_27;
  }

  while (1)
  {
    sub_1C99F1DEC();
LABEL_9:
    sub_1C99F1E58();
    v19 = *(v9 + 16 * v8);
    if ((v18 & 1) == 0)
    {

      sub_1C97CE3DC(v19, *(&v19 + 1));
    }

    sub_1C9A93CC8();
    sub_1C9A92528();
    sub_1C9A93D18();
    sub_1C99F1D54();
    if (v10)
    {
      break;
    }

    sub_1C987B428();
LABEL_19:
    sub_1C99F1D24(v11);
    *(v14 + 16 * v13) = v19;
    sub_1C99F1E28();
    if (!v3)
    {
      goto LABEL_4;
    }
  }

  sub_1C987B414();
  while (1)
  {
    sub_1C99F1F0C();
    if (v10)
    {
      if (v12)
      {
        break;
      }
    }

    sub_1C99F1ED4();
    if (!v10)
    {
      sub_1C987B400();
      goto LABEL_19;
    }
  }

LABEL_29:
  __break(1u);
}

void sub_1C99F0C10(uint64_t a1)
{
  sub_1C99F1EE4();
  sub_1C97A2CEC(&unk_1EC3CD368, &unk_1C9AB6880);
  v4 = sub_1C99F2014();
  v26 = v2;
  v6 = sub_1C99F20D0(v4, v5);
  if (!*(v3 + 16))
  {
LABEL_27:

    *v1 = v6;
    return;
  }

  v25 = v3;
  v7 = 0;
  v8 = v3;
  sub_1C99F1D00();
  sub_1C99F1F68();
  if (!v2)
  {
LABEL_4:
    v9 = v7;
    while (1)
    {
      v7 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v7 >= v1)
      {
        break;
      }

      ++v9;
      if (*(v8 + 8 * v7))
      {
        sub_1C984ACD8();
        v2 = v11 & v10;
        goto LABEL_9;
      }
    }

    if (v26)
    {
      sub_1C99F1E38();
      if (v23 != v24)
      {
        sub_1C99F1E48(v22);
      }

      else
      {
        sub_1C99F1E6C(v22);
      }

      *(v3 + 16) = 0;
    }

    goto LABEL_27;
  }

  while (1)
  {
    sub_1C99F1F54();
LABEL_9:
    sub_1C99F1F40();
    v14 = (v13 + 16 * v12);
    v15 = v14[1];
    v27 = *v14;
    if ((v26 & 1) == 0)
    {
    }

    sub_1C9A93CC8();
    sub_1C9A92528();
    sub_1C9A93D18();
    sub_1C99F1D78();
    sub_1C99F1F00();
    if (v16)
    {
      break;
    }

    sub_1C987B428();
LABEL_19:
    sub_1C99F1DC4();
    sub_1C99F1E8C(v18);
    v21 = (v20 + 16 * v19);
    *v21 = v27;
    v21[1] = v15;
    sub_1C99F1E28();
    v3 = v25;
    if (!v2)
    {
      goto LABEL_4;
    }
  }

  sub_1C987B414();
  while (1)
  {
    sub_1C99F1F0C();
    if (v16)
    {
      if (v17)
      {
        break;
      }
    }

    sub_1C99F2004();
    if (!v16)
    {
      sub_1C987B400();
      goto LABEL_19;
    }
  }

LABEL_29:
  __break(1u);
}

void sub_1C99F0DC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11)
{
  sub_1C99F1F98();
  sub_1C99F1D90();
  sub_1C97A2CEC(&qword_1EC3CD250, &qword_1C9AB67C0);
  sub_1C99F2024();
  sub_1C99F1FC0();
  if (!v16)
  {
LABEL_27:

    *v11 = v13;
    sub_1C99F1F7C();
    return;
  }

  v17 = 0;
  sub_1C99F1D00();
  sub_1C99F1E00();
  if (!v14)
  {
LABEL_4:
    v22 = v17;
    while (1)
    {
      v17 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v17 >= v11)
      {
        break;
      }

      sub_1C99F1FE8();
      if (v23)
      {
        sub_1C99F1DD8();
        goto LABEL_9;
      }
    }

    if (a11)
    {
      sub_1C99F1E14();
      if (v35 != v36)
      {
        sub_1C99F1E48(v34);
      }

      else
      {
        sub_1C99F1E6C(v34);
      }

      v12[2] = 0;
    }

    goto LABEL_27;
  }

  while (1)
  {
    sub_1C99F1DEC();
LABEL_9:
    v24 = v21 | (v17 << 6);
    v25 = *(v12[6] + v24);
    v26 = (v12[7] + 16 * v24);
    v27 = v26[1];
    v37 = *v26;
    if ((a11 & 1) == 0)
    {
    }

    sub_1C99F207C(v18, v19, v20);
    MEMORY[0x1CCA91980](v25);
    sub_1C9A93D18();
    sub_1C99F1D54();
    if (v28)
    {
      break;
    }

    sub_1C987B428();
LABEL_19:
    sub_1C99F1DC4();
    *(v15 + v30) |= v31;
    *(*(v13 + 48) + v32) = v25;
    v33 = (*(v13 + 56) + 16 * v32);
    *v33 = v37;
    v33[1] = v27;
    sub_1C99F1E28();
    if (!v14)
    {
      goto LABEL_4;
    }
  }

  sub_1C987B414();
  while (1)
  {
    sub_1C99F1F0C();
    if (v28)
    {
      if (v29)
      {
        break;
      }
    }

    sub_1C99F1ED4();
    if (!v28)
    {
      sub_1C987B400();
      goto LABEL_19;
    }
  }

LABEL_29:
  __break(1u);
}

void sub_1C99F0F4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, char a12)
{
  sub_1C99F1F98();
  sub_1C99F1D90();
  sub_1C97A2CEC(&qword_1EC3CD358, &qword_1C9AB6870);
  sub_1C99F1EAC();
  sub_1C99F1FC0();
  if (!v16)
  {
LABEL_27:

    *v12 = v14;
    sub_1C99F1F7C();
    return;
  }

  v37 = v13;
  v17 = 0;
  sub_1C99F1D00();
  sub_1C99F1E00();
  if (!v15)
  {
LABEL_4:
    v18 = v17;
    while (1)
    {
      v17 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v17 >= v12)
      {
        break;
      }

      sub_1C99F1FE8();
      if (v19)
      {
        sub_1C99F1DD8();
        goto LABEL_9;
      }
    }

    if (a12)
    {
      sub_1C99F1E14();
      if (v35 != v36)
      {
        sub_1C99F1E48(v34);
      }

      else
      {
        sub_1C99F1E6C(v34);
      }

      *(v13 + 16) = 0;
    }

    goto LABEL_27;
  }

  while (1)
  {
    sub_1C99F1DEC();
LABEL_9:
    sub_1C99F1E58();
    v25 = *(v24 + 8 * v23);
    if ((a12 & 1) == 0)
    {

      v20 = v25;
    }

    v26 = sub_1C99F207C(v20, v21, v22);
    sub_1C99F1FCC(v26, v27, v28);
    sub_1C9A93D18();
    sub_1C99F1D54();
    if (v29)
    {
      break;
    }

    sub_1C987B428();
LABEL_19:
    sub_1C99F1D24(v30);
    *(v33 + 8 * v32) = v25;
    sub_1C99F1E28();
    v13 = v37;
    if (!v15)
    {
      goto LABEL_4;
    }
  }

  sub_1C987B414();
  while (1)
  {
    sub_1C99F1F0C();
    if (v29)
    {
      if (v31)
      {
        break;
      }
    }

    sub_1C99F1ED4();
    if (!v29)
    {
      sub_1C987B400();
      goto LABEL_19;
    }
  }

LABEL_29:
  __break(1u);
}

void sub_1C99F10A0(uint64_t a1)
{
  sub_1C99F1D90();
  sub_1C97A2CEC(&qword_1EC3C8F40, &unk_1C9ACA170);
  sub_1C99F1EAC();
  sub_1C99F1FC0();
  if (!v5)
  {
LABEL_27:

    *v1 = v3;
    return;
  }

  v6 = 0;
  sub_1C99F1D00();
  sub_1C99F1E00();
  if (!v4)
  {
LABEL_4:
    v7 = v6;
    while (1)
    {
      v6 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= v1)
      {
        break;
      }

      sub_1C99F1FE8();
      if (v8)
      {
        sub_1C99F1DD8();
        goto LABEL_9;
      }
    }

    if (v26)
    {
      sub_1C99F1E14();
      if (v24 != v25)
      {
        sub_1C99F1E48(v23);
      }

      else
      {
        sub_1C99F1E6C(v23);
      }

      *(v2 + 16) = 0;
    }

    goto LABEL_27;
  }

  while (1)
  {
    sub_1C99F1DEC();
LABEL_9:
    sub_1C99F1E58();
    v14 = *(v13 + 8 * v12);
    if ((v26 & 1) == 0)
    {
    }

    v15 = sub_1C99F207C(v9, v10, v11);
    sub_1C99F1FCC(v15, v16, v17);
    sub_1C9A93D18();
    sub_1C99F1D54();
    if (v18)
    {
      break;
    }

    sub_1C987B428();
LABEL_19:
    sub_1C99F1D24(v19);
    *(v22 + 8 * v21) = v14;
    sub_1C99F1E28();
    if (!v4)
    {
      goto LABEL_4;
    }
  }

  sub_1C987B414();
  while (1)
  {
    sub_1C99F1F0C();
    if (v18)
    {
      if (v20)
      {
        break;
      }
    }

    sub_1C99F1ED4();
    if (!v18)
    {
      sub_1C987B400();
      goto LABEL_19;
    }
  }

LABEL_29:
  __break(1u);
}