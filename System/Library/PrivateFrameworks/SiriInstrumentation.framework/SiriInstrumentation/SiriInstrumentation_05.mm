uint64_t sub_1A9C8B5AC(void *a1)
{
  v1 = [a1 orderedMessages];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_1A9C8B60C();
  v3 = sub_1AA651B34();

  return v3;
}

unint64_t sub_1A9C8B60C()
{
  result = qword_1ED92F580[0];
  if (!qword_1ED92F580[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, qword_1ED92F580);
  }

  return result;
}

void OUTLINED_FUNCTION_3_1()
{

  JUMPOUT(0x1AC590720);
}

id OUTLINED_FUNCTION_4_1()
{
  v3 = *(v1 + 2080);

  return [v0 v3];
}

id OUTLINED_FUNCTION_5_1()
{
  v3 = *(v0 + 8 * v1 + 32);

  return v3;
}

id OUTLINED_FUNCTION_6_1(void *a1)
{

  return [a1 (v1 + 2580)];
}

id OUTLINED_FUNCTION_7_1(void *a1)
{

  return [a1 (v1 + 865)];
}

id OUTLINED_FUNCTION_8_0()
{

  return [v0 (v1 + 427)];
}

id OUTLINED_FUNCTION_9_0()
{

  return [v0 (v1 + 1665)];
}

id OUTLINED_FUNCTION_10_0(void *a1)
{

  return [a1 (v1 + 125)];
}

id OUTLINED_FUNCTION_11_0(void *a1)
{

  return [a1 (v1 + 2316)];
}

void sub_1A9C8B75C(uint64_t a1)
{
  v2 = sub_1A9C8B650();
  for (i = 0; v2 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x1AC590720](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      v4 = *(a1 + 8 * i + 32);
    }

    v5 = v4;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_11:
      __break(1u);
      return;
    }

    v6 = [v4 siriEventTypeUnion];
    v7 = [v6 ttsClientEvent];

    v8 = [v7 requestReceivedTier1];
    [v8 deleteTextToSynthesize];
  }
}

void sub_1A9C8B878(uint64_t a1)
{
  v2 = sub_1A9C8B650();
  v3 = 0;
  v4 = a1 & 0xC000000000000001;
  v5 = a1 & 0xFFFFFFFFFFFFFF8;
  v20 = a1;
  v6 = a1 + 32;
  v22 = a1 & 0xC000000000000001;
  v23 = v2;
  v21 = a1 & 0xFFFFFFFFFFFFFF8;
  v24 = a1 + 32;
LABEL_2:
  while (v3 != v2)
  {
    if (v4)
    {
      v7 = MEMORY[0x1AC590720](v3, v20);
    }

    else
    {
      if (v3 >= *(v5 + 16))
      {
        goto LABEL_27;
      }

      v7 = *(v6 + 8 * v3);
    }

    v8 = v7;
    if (__OFADD__(v3++, 1))
    {
      goto LABEL_26;
    }

    v10 = [v7 siriEventTypeUnion];
    if (v10 && (v11 = v10, v12 = [v10 cnvClientEvent], v11, v12) && (v13 = objc_msgSend(v12, sel_actionCandidatesGeneratedTier1), v12, v13))
    {
      v14 = sub_1A9CAE468(v13);
      if (v14)
      {
        v15 = v14;
        v16 = sub_1A9C8B650();
        for (i = 0; ; ++i)
        {
          if (v16 == i)
          {

            v4 = v22;
            v2 = v23;
            v5 = v21;
            v6 = v24;
            goto LABEL_2;
          }

          if ((v15 & 0xC000000000000001) != 0)
          {
            v18 = MEMORY[0x1AC590720](i, v15);
          }

          else
          {
            if (i >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_25;
            }

            v18 = *(v15 + 8 * i + 32);
          }

          v19 = v18;
          if (__OFADD__(i, 1))
          {
            break;
          }

          [v18 deleteAppBundleId];
        }

        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
        return;
      }

      v6 = v24;
    }

    else
    {
    }
  }
}

void sub_1A9C8BA68(uint64_t a1)
{
  v2 = sub_1A9C8B650();
  for (i = 0; v2 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x1AC590720](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      v4 = *(a1 + 8 * i + 32);
    }

    v5 = v4;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_11:
      __break(1u);
      return;
    }

    v6 = [v4 siriEventTypeUnion];
    v7 = [v6 pommmesClientEvent];

    v8 = [v7 pegasusRequestContext];
    v9 = [v8 ended];

    v10 = [v9 serverDriven];
    [v10 deleteCatId];
  }
}

void sub_1A9C8BBC4(uint64_t a1)
{
  v2 = sub_1A9C8B650();
  for (i = 0; v2 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x1AC590720](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      v4 = *(a1 + 8 * i + 32);
    }

    v5 = v4;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_11:
      __break(1u);
      return;
    }

    v6 = [v4 siriEventTypeUnion];
    v7 = [v6 cdaClientEvent];

    v8 = [v7 userFeedbackCompleted];
    [v8 deleteExpectedWinnerSiriSpeechId];
  }
}

void sub_1A9C8BCE0(uint64_t a1)
{
  v2 = sub_1A9C8B650();
  v3 = 0;
  v4 = a1 & 0xC000000000000001;
  v5 = a1 & 0xFFFFFFFFFFFFFF8;
  v20 = a1;
  v6 = a1 + 32;
  v22 = a1 & 0xC000000000000001;
  v23 = v2;
  v21 = a1 & 0xFFFFFFFFFFFFFF8;
  v24 = a1 + 32;
LABEL_2:
  while (v3 != v2)
  {
    if (v4)
    {
      v7 = MEMORY[0x1AC590720](v3, v20);
    }

    else
    {
      if (v3 >= *(v5 + 16))
      {
        goto LABEL_27;
      }

      v7 = *(v6 + 8 * v3);
    }

    v8 = v7;
    if (__OFADD__(v3++, 1))
    {
      goto LABEL_26;
    }

    v10 = [v7 siriEventTypeUnion];
    if (v10 && (v11 = v10, v12 = [v10 cdaClientEvent], v11, v12) && (v13 = objc_msgSend(v12, sel_userFeedbackParticipantCollectionReported), v12, v13))
    {
      v14 = sub_1A9CAE468(v13);
      if (v14)
      {
        v15 = v14;
        v16 = sub_1A9C8B650();
        for (i = 0; ; ++i)
        {
          if (v16 == i)
          {

            v4 = v22;
            v2 = v23;
            v5 = v21;
            v6 = v24;
            goto LABEL_2;
          }

          if ((v15 & 0xC000000000000001) != 0)
          {
            v18 = MEMORY[0x1AC590720](i, v15);
          }

          else
          {
            if (i >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_25;
            }

            v18 = *(v15 + 8 * i + 32);
          }

          v19 = v18;
          if (__OFADD__(i, 1))
          {
            break;
          }

          [v18 deleteSiriSpeechId];
        }

        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
        return;
      }

      v6 = v24;
    }

    else
    {
    }
  }
}

void sub_1A9C8BED0(uint64_t a1)
{
  v2 = sub_1A9C8B650();
  v3 = 0;
  v4 = a1 & 0xC000000000000001;
  v5 = a1 & 0xFFFFFFFFFFFFFF8;
  v20 = a1;
  v6 = a1 + 32;
  v22 = a1 & 0xC000000000000001;
  v23 = v2;
  v21 = a1 & 0xFFFFFFFFFFFFFF8;
  v24 = a1 + 32;
LABEL_2:
  while (v3 != v2)
  {
    if (v4)
    {
      v7 = MEMORY[0x1AC590720](v3, v20);
    }

    else
    {
      if (v3 >= *(v5 + 16))
      {
        goto LABEL_27;
      }

      v7 = *(v6 + 8 * v3);
    }

    v8 = v7;
    if (__OFADD__(v3++, 1))
    {
      goto LABEL_26;
    }

    v10 = [v7 siriEventTypeUnion];
    if (v10 && (v11 = v10, v12 = [v10 cdaClientEvent], v11, v12) && (v13 = objc_msgSend(v12, sel_userFeedbackParticipantCollectionReported), v12, v13))
    {
      v14 = sub_1A9CAE468(v13);
      if (v14)
      {
        v15 = v14;
        v16 = sub_1A9C8B650();
        for (i = 0; ; ++i)
        {
          if (v16 == i)
          {

            v4 = v22;
            v2 = v23;
            v5 = v21;
            v6 = v24;
            goto LABEL_2;
          }

          if ((v15 & 0xC000000000000001) != 0)
          {
            v18 = MEMORY[0x1AC590720](i, v15);
          }

          else
          {
            if (i >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_25;
            }

            v18 = *(v15 + 8 * i + 32);
          }

          v19 = v18;
          if (__OFADD__(i, 1))
          {
            break;
          }

          [v18 deleteHalTargetSiriSpeechId];
        }

        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
        return;
      }

      v6 = v24;
    }

    else
    {
    }
  }
}

void sub_1A9C8C0C0(uint64_t a1)
{
  v2 = sub_1A9C8B650();
  for (i = 0; v2 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x1AC590720](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      v4 = *(a1 + 8 * i + 32);
    }

    v5 = v4;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_11:
      __break(1u);
      return;
    }

    v6 = [v4 siriEventTypeUnion];
    v7 = [v6 flowLinkClientEvent];

    v8 = [v7 linkActionTier1];
    [v8 deleteAppBundleId];
  }
}

void sub_1A9C8C1DC(uint64_t a1)
{
  v2 = sub_1A9C8B650();
  v3 = 0;
  v4 = a1 & 0xC000000000000001;
  v5 = a1 & 0xFFFFFFFFFFFFFF8;
  v19 = a1;
  v6 = a1 + 32;
  v21 = a1 & 0xC000000000000001;
  v22 = v2;
  v20 = a1 & 0xFFFFFFFFFFFFFF8;
  v23 = a1 + 32;
LABEL_2:
  while (v3 != v2)
  {
    if (v4)
    {
      v7 = MEMORY[0x1AC590720](v3, v19);
    }

    else
    {
      if (v3 >= *(v5 + 16))
      {
        goto LABEL_26;
      }

      v7 = *(v6 + 8 * v3);
    }

    v8 = v7;
    if (__OFADD__(v3++, 1))
    {
      goto LABEL_25;
    }

    v10 = [v7 expressionName];
    if (v10 && (v11 = v10, v12 = [v10 updateParameters], v11, v12))
    {
      v13 = sub_1A9CAE468(v12);
      if (v13)
      {
        v14 = v13;
        v15 = sub_1A9C8B650();
        for (i = 0; ; ++i)
        {
          if (v15 == i)
          {

            v4 = v21;
            v2 = v22;
            v5 = v20;
            v6 = v23;
            goto LABEL_2;
          }

          if ((v14 & 0xC000000000000001) != 0)
          {
            v17 = MEMORY[0x1AC590720](i, v14);
          }

          else
          {
            if (i >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_24;
            }

            v17 = *(v14 + 8 * i + 32);
          }

          v18 = v17;
          if (__OFADD__(i, 1))
          {
            break;
          }

          [v17 deleteParameterId];
        }

        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
        return;
      }

      v6 = v23;
    }

    else
    {
    }
  }
}

void sub_1A9C8C3A8(uint64_t a1)
{
  v2 = sub_1A9C8B650();
  for (i = 0; v2 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x1AC590720](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      v4 = *(a1 + 8 * i + 32);
    }

    v5 = v4;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_11:
      __break(1u);
      return;
    }

    v6 = [v4 expressionName];
    v7 = [v6 structuredSearch];

    v8 = [v7 returnType];
    v9 = [v8 typeIdentifier];

    v10 = [v9 custom];
    [v10 deleteBundleId];
  }
}

void sub_1A9C8C504(uint64_t a1)
{
  v2 = sub_1A9C8B650();
  for (i = 0; v2 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x1AC590720](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      v4 = *(a1 + 8 * i + 32);
    }

    v5 = v4;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_11:
      __break(1u);
      return;
    }

    v6 = [v4 expressionName];
    v7 = [v6 structuredSearch];

    v8 = [v7 returnType];
    v9 = [v8 collection];

    v10 = [v9 typeIdentifier];
    v11 = [v10 custom];

    [v11 deleteBundleId];
  }
}

void sub_1A9C8C680(uint64_t a1)
{
  v3 = sub_1A9C8B650();
  for (i = 0; v3 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x1AC590720](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_12;
      }

      v5 = *(a1 + 8 * i + 32);
    }

    v6 = v5;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_12:
      __break(1u);
      return;
    }

    v7 = v5;
    sub_1A9CAA9E4(&v7, &selRef_expressionName);

    if (v1)
    {
      return;
    }
  }
}

void sub_1A9C8C770(uint64_t a1)
{
  v3 = sub_1A9C8B650();
  for (i = 0; v3 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x1AC590720](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_12;
      }

      v5 = *(a1 + 8 * i + 32);
    }

    v6 = v5;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_12:
      __break(1u);
      return;
    }

    v7 = v5;
    sub_1A9CAA9E4(&v7, &selRef_expressionName);

    if (v1)
    {
      return;
    }
  }
}

void sub_1A9C8C860(uint64_t a1)
{
  v3 = sub_1A9C8B650();
  for (i = 0; v3 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x1AC590720](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_12;
      }

      v5 = *(a1 + 8 * i + 32);
    }

    v6 = v5;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_12:
      __break(1u);
      return;
    }

    v7 = v5;
    sub_1A9CAA9E4(&v7, &selRef_expressionName);

    if (v1)
    {
      return;
    }
  }
}

void sub_1A9C8C950(uint64_t a1)
{
  v2 = sub_1A9C8B650();
  for (i = 0; v2 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x1AC590720](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      v4 = *(a1 + 8 * i + 32);
    }

    v5 = v4;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_11:
      __break(1u);
      return;
    }

    v6 = [v4 context];
    [v6 deleteToolId];
  }
}

void sub_1A9C8CA2C(uint64_t a1)
{
  v2 = sub_1A9C8B650();
  for (i = 0; v2 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x1AC590720](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      v4 = *(a1 + 8 * i + 32);
    }

    v5 = v4;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_11:
      __break(1u);
      return;
    }

    v6 = [v4 candidate];
    v7 = [v6 value];

    v8 = [v7 value];
    v9 = [v8 primitive];

    v10 = [v9 app];
    [v10 deleteBundleId];
  }
}

void sub_1A9C8CB84(uint64_t a1)
{
  v2 = sub_1A9C8B650();
  for (i = 0; v2 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x1AC590720](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      v4 = *(a1 + 8 * i + 32);
    }

    v5 = v4;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_11:
      __break(1u);
      return;
    }

    v6 = [v4 candidate];
    v7 = [v6 value];

    v8 = [v7 value];
    v9 = [v8 enumeration];

    v10 = [v9 typeIdentifier];
    v11 = [v10 custom];

    [v11 deleteBundleId];
  }
}

void sub_1A9C8CCFC(uint64_t a1)
{
  v2 = sub_1A9C8B650();
  for (i = 0; v2 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x1AC590720](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      v4 = *(a1 + 8 * i + 32);
    }

    v5 = v4;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_11:
      __break(1u);
      return;
    }

    v6 = [v4 candidate];
    v7 = [v6 value];

    v8 = [v7 value];
    v9 = [v8 entity];

    v10 = [v9 typeIdentifier];
    v11 = [v10 custom];

    [v11 deleteBundleId];
  }
}

void sub_1A9C8CE74(uint64_t a1)
{
  v2 = sub_1A9C8B650();
  for (i = 0; v2 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x1AC590720](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      v4 = *(a1 + 8 * i + 32);
    }

    v5 = v4;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_11:
      __break(1u);
      return;
    }

    v6 = [v4 candidate];
    v7 = [v6 value];

    v8 = [v7 value];
    v9 = [v8 query];

    v10 = [v9 typeIdentifier];
    v11 = [v10 custom];

    [v11 deleteBundleId];
  }
}

void sub_1A9C8CFEC(uint64_t a1)
{
  v2 = sub_1A9C8B650();
  for (i = 0; v2 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x1AC590720](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      v4 = *(a1 + 8 * i + 32);
    }

    v5 = v4;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_11:
      __break(1u);
      return;
    }

    v6 = [v4 candidate];
    v7 = [v6 value];

    v8 = [v7 collection];
    v9 = [v8 typeIdentifier];

    v10 = [v9 custom];
    [v10 deleteBundleId];
  }
}

void sub_1A9C8D148(uint64_t a1)
{
  v2 = sub_1A9C8B650();
  v3 = 0;
  v4 = a1 & 0xC000000000000001;
  v5 = a1 & 0xFFFFFFFFFFFFFF8;
  v24 = a1;
  v6 = a1 + 32;
  v7 = &selRef_authenticationLevel;
  v27 = a1 & 0xC000000000000001;
  v28 = v2;
  v25 = a1 + 32;
  v26 = a1 & 0xFFFFFFFFFFFFFF8;
LABEL_2:
  while (v3 != v2)
  {
    if (v4)
    {
      v8 = MEMORY[0x1AC590720](v3, v24);
    }

    else
    {
      if (v3 >= *(v5 + 16))
      {
        goto LABEL_31;
      }

      v8 = *(v6 + 8 * v3);
    }

    v9 = v8;
    if (__OFADD__(v3++, 1))
    {
      goto LABEL_30;
    }

    v11 = [v8 v7[127]];
    if (v11)
    {
      v12 = v11;
      v29 = v9;
      v13 = [v11 value];

      if (v13 && (v14 = [v13 collection], v13, v14))
      {
        v15 = sub_1A9CAE468(v14);
        if (v15)
        {
          v16 = v15;
          v17 = sub_1A9C8B650();
          for (i = 0; ; ++i)
          {
            if (v17 == i)
            {

              v4 = v27;
              v2 = v28;
              v6 = v25;
              v5 = v26;
              v7 = &selRef_authenticationLevel;
              goto LABEL_2;
            }

            if ((v16 & 0xC000000000000001) != 0)
            {
              v19 = MEMORY[0x1AC590720](i, v16);
            }

            else
            {
              if (i >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_29;
              }

              v19 = *(v16 + 8 * i + 32);
            }

            v20 = v19;
            if (__OFADD__(i, 1))
            {
              break;
            }

            v21 = [v19 primitive];
            if (v21)
            {
              v22 = v21;
              v23 = [v21 app];

              if (v23)
              {
                [v23 deleteBundleId];
              }
            }
          }

          __break(1u);
LABEL_29:
          __break(1u);
LABEL_30:
          __break(1u);
LABEL_31:
          __break(1u);
          return;
        }

        v7 = &selRef_authenticationLevel;
      }

      else
      {
      }
    }

    else
    {
    }
  }
}

void sub_1A9C8D390(uint64_t a1)
{
  v2 = sub_1A9C8B650();
  v3 = 0;
  v4 = a1 & 0xC000000000000001;
  v5 = a1 & 0xFFFFFFFFFFFFFF8;
  v25 = a1;
  v6 = a1 + 32;
  v7 = &selRef_authenticationLevel;
  v28 = a1 & 0xC000000000000001;
  v29 = v2;
  v26 = a1 + 32;
  v27 = a1 & 0xFFFFFFFFFFFFFF8;
LABEL_2:
  while (v3 != v2)
  {
    if (v4)
    {
      v8 = MEMORY[0x1AC590720](v3, v25);
    }

    else
    {
      if (v3 >= *(v5 + 16))
      {
        goto LABEL_32;
      }

      v8 = *(v6 + 8 * v3);
    }

    v9 = v8;
    if (__OFADD__(v3++, 1))
    {
      goto LABEL_31;
    }

    v11 = [v8 v7[127]];
    if (v11)
    {
      v12 = v11;
      v30 = v9;
      v13 = [v11 value];

      if (v13 && (v14 = [v13 collection], v13, v14))
      {
        v15 = sub_1A9CAE468(v14);
        if (v15)
        {
          v16 = v15;
          v17 = sub_1A9C8B650();
          for (i = 0; ; ++i)
          {
            if (v17 == i)
            {

              v4 = v28;
              v2 = v29;
              v6 = v26;
              v5 = v27;
              v7 = &selRef_authenticationLevel;
              goto LABEL_2;
            }

            if ((v16 & 0xC000000000000001) != 0)
            {
              v19 = MEMORY[0x1AC590720](i, v16);
            }

            else
            {
              if (i >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_30;
              }

              v19 = *(v16 + 8 * i + 32);
            }

            v20 = v19;
            if (__OFADD__(i, 1))
            {
              break;
            }

            v21 = [v19 enumeration];
            if (v21)
            {
              v22 = v21;
              v23 = [v21 typeIdentifier];

              if (v23)
              {
                v24 = [v23 custom];

                if (v24)
                {
                  [v24 deleteBundleId];
                }
              }
            }
          }

          __break(1u);
LABEL_30:
          __break(1u);
LABEL_31:
          __break(1u);
LABEL_32:
          __break(1u);
          return;
        }

        v7 = &selRef_authenticationLevel;
      }

      else
      {
      }
    }

    else
    {
    }
  }
}

void sub_1A9C8D5FC(uint64_t a1)
{
  v2 = sub_1A9C8B650();
  v3 = 0;
  v4 = a1 & 0xC000000000000001;
  v5 = a1 & 0xFFFFFFFFFFFFFF8;
  v25 = a1;
  v6 = a1 + 32;
  v7 = &selRef_authenticationLevel;
  v28 = a1 & 0xC000000000000001;
  v29 = v2;
  v26 = a1 + 32;
  v27 = a1 & 0xFFFFFFFFFFFFFF8;
LABEL_2:
  while (v3 != v2)
  {
    if (v4)
    {
      v8 = MEMORY[0x1AC590720](v3, v25);
    }

    else
    {
      if (v3 >= *(v5 + 16))
      {
        goto LABEL_32;
      }

      v8 = *(v6 + 8 * v3);
    }

    v9 = v8;
    if (__OFADD__(v3++, 1))
    {
      goto LABEL_31;
    }

    v11 = [v8 v7[127]];
    if (v11)
    {
      v12 = v11;
      v30 = v9;
      v13 = [v11 value];

      if (v13 && (v14 = [v13 collection], v13, v14))
      {
        v15 = sub_1A9CAE468(v14);
        if (v15)
        {
          v16 = v15;
          v17 = sub_1A9C8B650();
          for (i = 0; ; ++i)
          {
            if (v17 == i)
            {

              v4 = v28;
              v2 = v29;
              v6 = v26;
              v5 = v27;
              v7 = &selRef_authenticationLevel;
              goto LABEL_2;
            }

            if ((v16 & 0xC000000000000001) != 0)
            {
              v19 = MEMORY[0x1AC590720](i, v16);
            }

            else
            {
              if (i >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_30;
              }

              v19 = *(v16 + 8 * i + 32);
            }

            v20 = v19;
            if (__OFADD__(i, 1))
            {
              break;
            }

            v21 = [v19 entity];
            if (v21)
            {
              v22 = v21;
              v23 = [v21 typeIdentifier];

              if (v23)
              {
                v24 = [v23 custom];

                if (v24)
                {
                  [v24 deleteBundleId];
                }
              }
            }
          }

          __break(1u);
LABEL_30:
          __break(1u);
LABEL_31:
          __break(1u);
LABEL_32:
          __break(1u);
          return;
        }

        v7 = &selRef_authenticationLevel;
      }

      else
      {
      }
    }

    else
    {
    }
  }
}

void sub_1A9C8D868(uint64_t a1)
{
  v2 = sub_1A9C8B650();
  v3 = 0;
  v4 = a1 & 0xC000000000000001;
  v5 = a1 & 0xFFFFFFFFFFFFFF8;
  v25 = a1;
  v6 = a1 + 32;
  v7 = &selRef_authenticationLevel;
  v28 = a1 & 0xC000000000000001;
  v29 = v2;
  v26 = a1 + 32;
  v27 = a1 & 0xFFFFFFFFFFFFFF8;
LABEL_2:
  while (v3 != v2)
  {
    if (v4)
    {
      v8 = MEMORY[0x1AC590720](v3, v25);
    }

    else
    {
      if (v3 >= *(v5 + 16))
      {
        goto LABEL_32;
      }

      v8 = *(v6 + 8 * v3);
    }

    v9 = v8;
    if (__OFADD__(v3++, 1))
    {
      goto LABEL_31;
    }

    v11 = [v8 v7[127]];
    if (v11)
    {
      v12 = v11;
      v30 = v9;
      v13 = [v11 value];

      if (v13 && (v14 = [v13 collection], v13, v14))
      {
        v15 = sub_1A9CAE468(v14);
        if (v15)
        {
          v16 = v15;
          v17 = sub_1A9C8B650();
          for (i = 0; ; ++i)
          {
            if (v17 == i)
            {

              v4 = v28;
              v2 = v29;
              v6 = v26;
              v5 = v27;
              v7 = &selRef_authenticationLevel;
              goto LABEL_2;
            }

            if ((v16 & 0xC000000000000001) != 0)
            {
              v19 = MEMORY[0x1AC590720](i, v16);
            }

            else
            {
              if (i >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_30;
              }

              v19 = *(v16 + 8 * i + 32);
            }

            v20 = v19;
            if (__OFADD__(i, 1))
            {
              break;
            }

            v21 = [v19 query];
            if (v21)
            {
              v22 = v21;
              v23 = [v21 typeIdentifier];

              if (v23)
              {
                v24 = [v23 custom];

                if (v24)
                {
                  [v24 deleteBundleId];
                }
              }
            }
          }

          __break(1u);
LABEL_30:
          __break(1u);
LABEL_31:
          __break(1u);
LABEL_32:
          __break(1u);
          return;
        }

        v7 = &selRef_authenticationLevel;
      }

      else
      {
      }
    }

    else
    {
    }
  }
}

void sub_1A9C8DAD4(uint64_t a1)
{
  v5 = 0;
  v22 = a1 & 0xC000000000000001;
  v23 = sub_1A9C8B650();
  v19 = a1;
  v20 = a1 + 32;
  v21 = a1 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
LABEL_2:
    if (v5 == v23)
    {
      OUTLINED_FUNCTION_58();
      return;
    }

    if (v22)
    {
      v6 = MEMORY[0x1AC590720](v5, v19);
    }

    else
    {
      if (v5 >= *(v21 + 16))
      {
        goto LABEL_23;
      }

      v6 = *(v20 + 8 * v5);
    }

    v7 = v6;
    v8 = __OFADD__(v5++, 1);
    if (v8)
    {
      break;
    }

    v9 = sub_1A9CAE4E0(v6);
    if (v9)
    {
      v10 = v9;
      sub_1A9C8B650();
      OUTLINED_FUNCTION_85();
      while (1)
      {
        if (v7 == v1)
        {

          goto LABEL_2;
        }

        if (v3)
        {
          MEMORY[0x1AC590720](v1, v10);
        }

        else
        {
          if (v1 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_21;
          }

          v11 = *(v10 + 8 * v1 + 32);
        }

        OUTLINED_FUNCTION_122();
        if (v8)
        {
          break;
        }

        v12 = [v2 candidate];
        v13 = [v12 value];

        v14 = [v13 value];
        OUTLINED_FUNCTION_82();
        v16 = [v14 v15];

        v17 = [v16 typeIdentifier];
        v18 = [v17 custom];

        [v18 deleteBundleId];
        ++v1;
      }

      __break(1u);
LABEL_21:
      __break(1u);
      break;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
}

void sub_1A9C8DCF8(uint64_t a1, SEL *a2, uint64_t a3, SEL *a4)
{
  v6 = 0;
  v25 = a1 & 0xC000000000000001;
  v26 = sub_1A9C8B650();
  v22 = a1;
  v23 = a1 + 32;
  v24 = a1 & 0xFFFFFFFFFFFFFF8;
LABEL_2:
  while (v6 != v26)
  {
    if (v25)
    {
      v7 = MEMORY[0x1AC590720](v6, v22);
    }

    else
    {
      if (v6 >= *(v24 + 16))
      {
        goto LABEL_23;
      }

      v7 = *(v23 + 8 * v6);
    }

    v8 = v7;
    if (__OFADD__(v6++, 1))
    {
      goto LABEL_22;
    }

    v10 = sub_1A9CAE4E0(v7);
    if (v10)
    {
      v11 = v10;
      v27 = v6;
      v12 = sub_1A9C8B650();
      for (i = 0; ; ++i)
      {
        if (v12 == i)
        {

          v6 = v27;
          goto LABEL_2;
        }

        if ((v11 & 0xC000000000000001) != 0)
        {
          v14 = MEMORY[0x1AC590720](i, v11);
        }

        else
        {
          if (i >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_21;
          }

          v14 = *(v11 + 8 * i + 32);
        }

        v15 = v14;
        if (__OFADD__(i, 1))
        {
          break;
        }

        v16 = [v14 candidate];
        v17 = [v16 value];

        v18 = [v17 *a2];
        OUTLINED_FUNCTION_82();
        v20 = [v18 v19];

        v21 = [v20 *a4];
        [v21 deleteBundleId];
      }

      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
      return;
    }
  }
}

void sub_1A9C8DF20(uint64_t a1)
{
  v3 = sub_1A9C8B650();
  for (i = 0; v3 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x1AC590720](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_12;
      }

      v5 = *(a1 + 8 * i + 32);
    }

    v6 = v5;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_12:
      __break(1u);
      return;
    }

    v7 = v5;
    sub_1A9CA9CA8(&v7);

    if (v1)
    {
      return;
    }
  }
}

void sub_1A9C8DFE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_75();
  a19 = v24;
  a20 = v25;
  OUTLINED_FUNCTION_120();
  v27 = v26;
  v29 = v28();
  v30 = 0;
  while (1)
  {
    if (v29 == v30)
    {
LABEL_10:
      OUTLINED_FUNCTION_74();
      return;
    }

    if ((v27 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1AC590720](v30, v27);
    }

    else
    {
      if (v30 >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_12;
      }

      v31 = *(v27 + 8 * v30 + 32);
    }

    OUTLINED_FUNCTION_122();
    if (v32)
    {
      break;
    }

    a10 = v23;
    v20(&a10, v21);

    ++v30;
    if (v22)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
}

void sub_1A9C8E0A4(uint64_t a1)
{
  v2 = sub_1A9C8B650();
  for (i = 0; v2 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x1AC590720](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      v4 = *(a1 + 8 * i + 32);
    }

    v5 = v4;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_11:
      __break(1u);
      return;
    }

    v6 = [v4 payload];
    v7 = [v6 outcome];

    v8 = [v7 success];
    v9 = [v8 returnValue];

    v10 = [v9 value];
    v11 = [v10 primitive];

    v12 = [v11 app];
    [v12 deleteBundleId];
  }
}

void sub_1A9C8E240(uint64_t a1)
{
  v2 = sub_1A9C8B650();
  for (i = 0; v2 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x1AC590720](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      v4 = *(a1 + 8 * i + 32);
    }

    v5 = v4;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_11:
      __break(1u);
      return;
    }

    v6 = [v4 payload];
    v7 = [v6 outcome];

    v8 = [v7 success];
    v9 = [v8 returnValue];

    v10 = [v9 collection];
    v11 = [v10 typeIdentifier];

    v12 = [v11 custom];
    [v12 deleteBundleId];
  }
}

void sub_1A9C8E3DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void **, uint64_t, uint64_t))
{
  OUTLINED_FUNCTION_136();
  v21 = v9;
  v22 = v10;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17();
  OUTLINED_FUNCTION_54();
  while (1)
  {
    if (v6 == v7)
    {
LABEL_10:
      OUTLINED_FUNCTION_68();
      return;
    }

    if ((v16 & 0xC000000000000001) != 0)
    {
      OUTLINED_FUNCTION_109();
    }

    else
    {
      if (v7 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_12;
      }

      OUTLINED_FUNCTION_108();
    }

    OUTLINED_FUNCTION_59();
    if (v18)
    {
      break;
    }

    v20 = v8;
    a5(&v20, v14, v12);

    ++v7;
    if (v5)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
}

void sub_1A9C8E4A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_136();
  v18 = v9;
  v19 = v10;
  v12 = v11;
  v14 = v13;
  sub_1A9C8B650();
  OUTLINED_FUNCTION_54();
  while (1)
  {
    if (v6 == v7)
    {
LABEL_10:
      OUTLINED_FUNCTION_68();
      return;
    }

    if ((v14 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1AC590720](v7, v14);
    }

    else
    {
      if (v7 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_12;
      }

      v15 = *(v14 + 8 * v7 + 32);
    }

    OUTLINED_FUNCTION_59();
    if (v16)
    {
      break;
    }

    v17 = v8;
    sub_1A9CAA33C(&v17, v12);

    ++v7;
    if (v5)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
}

void sub_1A9C8E56C(uint64_t a1)
{
  v2 = sub_1A9C8B650();
  for (i = 0; v2 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x1AC590720](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      v4 = *(a1 + 8 * i + 32);
    }

    v5 = v4;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_11:
      __break(1u);
      return;
    }

    v6 = [v4 payload];
    v7 = [v6 outcome];

    v8 = [v7 success];
    v9 = [v8 followUpAction];

    v10 = [v9 action];
    v11 = [v10 linkAction];

    [v11 deleteBundleId];
  }
}

void sub_1A9C8E6E8(uint64_t a1)
{
  v2 = sub_1A9C8B650();
  for (i = 0; v2 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x1AC590720](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      v4 = *(a1 + 8 * i + 32);
    }

    v5 = v4;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_11:
      __break(1u);
      return;
    }

    v6 = [v4 payload];
    v7 = [v6 outcome];

    v8 = [v7 actionConfirmation];
    v9 = [v8 systemStyle];

    v10 = [v9 generativeAIEnablement];
    [v10 deleteBundleId];
  }
}

void sub_1A9C8E844(uint64_t a1)
{
  v2 = sub_1A9C8B650();
  for (i = 0; v2 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x1AC590720](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      v4 = *(a1 + 8 * i + 32);
    }

    v5 = v4;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_11:
      __break(1u);
      return;
    }

    v6 = [v4 payload];
    v7 = [v6 outcome];

    v8 = [v7 parameterConfirmation];
    v9 = [v8 item];

    v10 = [v9 value];
    v11 = [v10 primitive];

    v12 = [v11 app];
    [v12 deleteBundleId];
  }
}

void sub_1A9C8E9E0(uint64_t a1)
{
  v2 = sub_1A9C8B650();
  for (i = 0; v2 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x1AC590720](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      v4 = *(a1 + 8 * i + 32);
    }

    v5 = v4;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_11:
      __break(1u);
      return;
    }

    v6 = [v4 payload];
    v7 = [v6 outcome];

    v8 = [v7 parameterConfirmation];
    v9 = [v8 item];

    v10 = [v9 collection];
    v11 = [v10 typeIdentifier];

    v12 = [v11 custom];
    [v12 deleteBundleId];
  }
}

void sub_1A9C8EB7C(uint64_t a1)
{
  v2 = sub_1A9C8B650();
  v3 = 0;
  v4 = a1 & 0xC000000000000001;
  v5 = a1 & 0xFFFFFFFFFFFFFF8;
  v25 = a1;
  v6 = a1 + 32;
  v7 = &selRef_numberOfActionsBefore;
  v28 = a1 & 0xC000000000000001;
  v29 = v2;
  v26 = a1 + 32;
  v27 = a1 & 0xFFFFFFFFFFFFFF8;
LABEL_2:
  while (v3 != v2)
  {
    if (v4)
    {
      v8 = MEMORY[0x1AC590720](v3, v25);
    }

    else
    {
      if (v3 >= *(v5 + 16))
      {
        goto LABEL_32;
      }

      v8 = *(v6 + 8 * v3);
    }

    v9 = v8;
    if (__OFADD__(v3++, 1))
    {
      goto LABEL_31;
    }

    v11 = [v8 v7[172]];
    if (v11)
    {
      v12 = v11;
      v30 = v9;
      v13 = [v11 outcome];

      if (v13 && (v14 = [v13 parameterDisambiguation], v13, v14))
      {
        v15 = sub_1A9CAE468(v14);
        if (v15)
        {
          v16 = v15;
          v17 = sub_1A9C8B650();
          for (i = 0; ; ++i)
          {
            if (v17 == i)
            {

              v4 = v28;
              v2 = v29;
              v6 = v26;
              v5 = v27;
              v7 = &selRef_numberOfActionsBefore;
              goto LABEL_2;
            }

            if ((v16 & 0xC000000000000001) != 0)
            {
              v19 = MEMORY[0x1AC590720](i, v16);
            }

            else
            {
              if (i >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_30;
              }

              v19 = *(v16 + 8 * i + 32);
            }

            v20 = v19;
            if (__OFADD__(i, 1))
            {
              break;
            }

            v21 = [v19 value];
            if (v21)
            {
              v22 = v21;
              v23 = [v21 primitive];

              if (v23)
              {
                v24 = [v23 app];

                if (v24)
                {
                  [v24 deleteBundleId];
                }
              }
            }
          }

          __break(1u);
LABEL_30:
          __break(1u);
LABEL_31:
          __break(1u);
LABEL_32:
          __break(1u);
          return;
        }

        v7 = &selRef_numberOfActionsBefore;
      }

      else
      {
      }
    }

    else
    {
    }
  }
}

void sub_1A9C8EDE8(uint64_t a1)
{
  v2 = sub_1A9C8B650();
  v3 = 0;
  v4 = a1 & 0xC000000000000001;
  v5 = a1 & 0xFFFFFFFFFFFFFF8;
  v25 = a1;
  v6 = a1 + 32;
  v7 = &selRef_numberOfActionsBefore;
  v28 = a1 & 0xC000000000000001;
  v29 = v2;
  v26 = a1 + 32;
  v27 = a1 & 0xFFFFFFFFFFFFFF8;
LABEL_2:
  while (v3 != v2)
  {
    if (v4)
    {
      v8 = MEMORY[0x1AC590720](v3, v25);
    }

    else
    {
      if (v3 >= *(v5 + 16))
      {
        goto LABEL_32;
      }

      v8 = *(v6 + 8 * v3);
    }

    v9 = v8;
    if (__OFADD__(v3++, 1))
    {
      goto LABEL_31;
    }

    v11 = [v8 v7[172]];
    if (v11)
    {
      v12 = v11;
      v30 = v9;
      v13 = [v11 outcome];

      if (v13 && (v14 = [v13 parameterDisambiguation], v13, v14))
      {
        v15 = sub_1A9CAE468(v14);
        if (v15)
        {
          v16 = v15;
          v17 = sub_1A9C8B650();
          for (i = 0; ; ++i)
          {
            if (v17 == i)
            {

              v4 = v28;
              v2 = v29;
              v6 = v26;
              v5 = v27;
              v7 = &selRef_numberOfActionsBefore;
              goto LABEL_2;
            }

            if ((v16 & 0xC000000000000001) != 0)
            {
              v19 = MEMORY[0x1AC590720](i, v16);
            }

            else
            {
              if (i >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_30;
              }

              v19 = *(v16 + 8 * i + 32);
            }

            v20 = v19;
            if (__OFADD__(i, 1))
            {
              break;
            }

            v21 = [v19 collection];
            if (v21)
            {
              v22 = v21;
              v23 = [v21 typeIdentifier];

              if (v23)
              {
                v24 = [v23 custom];

                if (v24)
                {
                  [v24 deleteBundleId];
                }
              }
            }
          }

          __break(1u);
LABEL_30:
          __break(1u);
LABEL_31:
          __break(1u);
LABEL_32:
          __break(1u);
          return;
        }

        v7 = &selRef_numberOfActionsBefore;
      }

      else
      {
      }
    }

    else
    {
    }
  }
}

void sub_1A9C8F054(uint64_t a1)
{
  v2 = sub_1A9C8B650();
  for (i = 0; v2 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x1AC590720](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      v4 = *(a1 + 8 * i + 32);
    }

    v5 = v4;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_11:
      __break(1u);
      return;
    }

    v6 = [v4 payload];
    v7 = [v6 outcome];

    v8 = [v7 parameterNotAllowed];
    v9 = [v8 value];

    v10 = [v9 value];
    v11 = [v10 primitive];

    v12 = [v11 app];
    [v12 deleteBundleId];
  }
}

void sub_1A9C8F1EC(uint64_t a1)
{
  v2 = sub_1A9C8B650();
  for (i = 0; v2 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x1AC590720](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      v4 = *(a1 + 8 * i + 32);
    }

    v5 = v4;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_11:
      __break(1u);
      return;
    }

    v6 = [v4 payload];
    v7 = [v6 outcome];

    v8 = [v7 parameterNotAllowed];
    v9 = [v8 value];

    v10 = [v9 collection];
    v11 = [v10 typeIdentifier];

    v12 = [v11 custom];
    [v12 deleteBundleId];
  }
}

void sub_1A9C8F388(uint64_t a1)
{
  v2 = sub_1A9C8B650();
  for (i = 0; v2 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x1AC590720](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      v4 = *(a1 + 8 * i + 32);
    }

    v5 = v4;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_11:
      __break(1u);
      return;
    }

    v6 = [v4 payload];
    v7 = [v6 outcome];

    v8 = [v7 parameterCandidatesNotFounds];
    v9 = [v8 value];

    v10 = [v9 value];
    v11 = [v10 primitive];

    v12 = [v11 app];
    [v12 deleteBundleId];
  }
}

void sub_1A9C8F520(uint64_t a1, uint64_t a2, uint64_t a3, const char **a4, uint64_t a5)
{
  v34 = a4;
  OUTLINED_FUNCTION_136();
  v31 = v5;
  v32 = v9;
  v11 = v10;
  v13 = v12;
  sub_1A9C8B650();
  OUTLINED_FUNCTION_54();
  while (1)
  {
    if (v6 == v7)
    {
      OUTLINED_FUNCTION_68();
      return;
    }

    if ((v13 & 0xC000000000000001) != 0)
    {
      OUTLINED_FUNCTION_109();
    }

    else
    {
      if (v7 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      OUTLINED_FUNCTION_108();
    }

    OUTLINED_FUNCTION_59();
    if (v14)
    {
      break;
    }

    v15 = [v8 payload];
    v16 = [v15 outcome];

    v17 = [v16 *v11];
    v18 = [v17 *v32];

    v19 = [v18 value];
    v28 = OUTLINED_FUNCTION_105(v20, v21, v22, v23, v24, v25, v26, v27, v31, v32, v33, v34);

    v29 = [v28 typeIdentifier];
    v30 = [v29 custom];

    [v30 deleteBundleId];
    ++v7;
  }

  __break(1u);
LABEL_11:
  __break(1u);
}

void sub_1A9C8F6B0(uint64_t a1)
{
  v2 = sub_1A9C8B650();
  for (i = 0; v2 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x1AC590720](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      v4 = *(a1 + 8 * i + 32);
    }

    v5 = v4;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_11:
      __break(1u);
      return;
    }

    v6 = [v4 payload];
    v7 = [v6 outcome];

    v8 = [v7 parameterCandidatesNotFounds];
    v9 = [v8 value];

    v10 = [v9 collection];
    v11 = [v10 typeIdentifier];

    v12 = [v11 custom];
    [v12 deleteBundleId];
  }
}

void sub_1A9C8F84C(uint64_t a1)
{
  v2 = sub_1A9C8B650();
  for (i = 0; v2 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x1AC590720](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      v4 = *(a1 + 8 * i + 32);
    }

    v5 = v4;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_11:
      __break(1u);
      return;
    }

    v6 = [v4 payload];
    v7 = [v6 outcome];

    v8 = [v7 actionRequirement];
    v9 = [v8 systemRequirement];

    v10 = [v9 protectedAppApprovalRequired];
    [v10 deleteBundleId];
  }
}

void sub_1A9C8F9A8(uint64_t a1)
{
  v2 = sub_1A9C8B650();
  for (i = 0; v2 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x1AC590720](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      v4 = *(a1 + 8 * i + 32);
    }

    v5 = v4;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_11:
      __break(1u);
      return;
    }

    v6 = [v4 payload];
    v7 = [v6 outcome];

    v8 = [v7 toolDisambiguation];
    [v8 deleteAssistantSchemaKind];
  }
}

void sub_1A9C8FAC4(uint64_t a1)
{
  v2 = sub_1A9C8B650();
  v3 = 0;
  v4 = a1 & 0xC000000000000001;
  v5 = a1 & 0xFFFFFFFFFFFFFF8;
  v20 = a1;
  v6 = a1 + 32;
  v22 = a1 & 0xC000000000000001;
  v23 = v2;
  v21 = a1 & 0xFFFFFFFFFFFFFF8;
  v24 = a1 + 32;
LABEL_2:
  while (v3 != v2)
  {
    if (v4)
    {
      v7 = MEMORY[0x1AC590720](v3, v20);
    }

    else
    {
      if (v3 >= *(v5 + 16))
      {
        goto LABEL_27;
      }

      v7 = *(v6 + 8 * v3);
    }

    v8 = v7;
    if (__OFADD__(v3++, 1))
    {
      goto LABEL_26;
    }

    v10 = [v7 payload];
    if (v10 && (v11 = v10, v12 = [v10 outcome], v11, v12) && (v13 = objc_msgSend(v12, sel_toolDisambiguation), v12, v13))
    {
      v14 = sub_1A9CAE468(v13);
      if (v14)
      {
        v15 = v14;
        v16 = sub_1A9C8B650();
        for (i = 0; ; ++i)
        {
          if (v16 == i)
          {

            v4 = v22;
            v2 = v23;
            v5 = v21;
            v6 = v24;
            goto LABEL_2;
          }

          if ((v15 & 0xC000000000000001) != 0)
          {
            v18 = MEMORY[0x1AC590720](i, v15);
          }

          else
          {
            if (i >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_25;
            }

            v18 = *(v15 + 8 * i + 32);
          }

          v19 = v18;
          if (__OFADD__(i, 1))
          {
            break;
          }

          [v18 deleteToolId];
        }

        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
        return;
      }

      v6 = v24;
    }

    else
    {
    }
  }
}

void sub_1A9C8FCB4(uint64_t a1)
{
  v2 = sub_1A9C8B650();
  v3 = 0;
  v4 = a1 & 0xC000000000000001;
  v5 = a1 & 0xFFFFFFFFFFFFFF8;
  v25 = a1;
  v6 = a1 + 32;
  v7 = &selRef_numberOfActionsBefore;
  v28 = a1 & 0xC000000000000001;
  v29 = v2;
  v26 = a1 + 32;
  v27 = a1 & 0xFFFFFFFFFFFFFF8;
LABEL_2:
  while (v3 != v2)
  {
    if (v4)
    {
      v8 = MEMORY[0x1AC590720](v3, v25);
    }

    else
    {
      if (v3 >= *(v5 + 16))
      {
        goto LABEL_32;
      }

      v8 = *(v6 + 8 * v3);
    }

    v9 = v8;
    if (__OFADD__(v3++, 1))
    {
      goto LABEL_31;
    }

    v11 = [v8 v7[172]];
    if (v11)
    {
      v12 = v11;
      v30 = v9;
      v13 = [v11 outcome];

      if (v13 && (v14 = [v13 valueDisambiguation], v13, v14))
      {
        v15 = sub_1A9CAE468(v14);
        if (v15)
        {
          v16 = v15;
          v17 = sub_1A9C8B650();
          for (i = 0; ; ++i)
          {
            if (v17 == i)
            {

              v4 = v28;
              v2 = v29;
              v6 = v26;
              v5 = v27;
              v7 = &selRef_numberOfActionsBefore;
              goto LABEL_2;
            }

            if ((v16 & 0xC000000000000001) != 0)
            {
              v19 = MEMORY[0x1AC590720](i, v16);
            }

            else
            {
              if (i >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_30;
              }

              v19 = *(v16 + 8 * i + 32);
            }

            v20 = v19;
            if (__OFADD__(i, 1))
            {
              break;
            }

            v21 = [v19 value];
            if (v21)
            {
              v22 = v21;
              v23 = [v21 primitive];

              if (v23)
              {
                v24 = [v23 app];

                if (v24)
                {
                  [v24 deleteBundleId];
                }
              }
            }
          }

          __break(1u);
LABEL_30:
          __break(1u);
LABEL_31:
          __break(1u);
LABEL_32:
          __break(1u);
          return;
        }

        v7 = &selRef_numberOfActionsBefore;
      }

      else
      {
      }
    }

    else
    {
    }
  }
}

void sub_1A9C8FF20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_127();
  v15 = v14;
  OUTLINED_FUNCTION_71();
  sub_1A9C8B650();
  OUTLINED_FUNCTION_83();
  v16 = &selRef_numberOfActionsBefore;
  v40 = v17;
  v41 = v15;
  v38 = v13;
  v39 = v11;
  v37 = v9;
  while (1)
  {
LABEL_2:
    if (v12 == v10)
    {
      OUTLINED_FUNCTION_58();
      return;
    }

    if (v11)
    {
      v18 = MEMORY[0x1AC590720](v12, a9);
    }

    else
    {
      if (v12 >= *(v13 + 16))
      {
        goto LABEL_27;
      }

      v18 = *(v9 + 8 * v12);
    }

    v19 = v18;
    if (__OFADD__(v12++, 1))
    {
      break;
    }

    v21 = [v18 v16[172]];
    if (v21)
    {
      v22 = v21;
      v42 = v19;
      v23 = [v21 outcome];

      if (v23)
      {
        v24 = [v23 *v15];

        if (v24)
        {
          v25 = sub_1A9CAE468(v24);
          if (v25)
          {
            v26 = v25;
            sub_1A9C8B650();
            OUTLINED_FUNCTION_60();
            while (1)
            {
              if (v13 == v16)
              {

                v10 = v40;
                v15 = v41;
                v13 = v38;
                v11 = v39;
                v9 = v37;
                v16 = &selRef_numberOfActionsBefore;
                goto LABEL_2;
              }

              if (v15)
              {
                v36 = OUTLINED_FUNCTION_95();
                v28 = MEMORY[0x1AC590720](v36);
              }

              else
              {
                if (v16 >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_25;
                }

                OUTLINED_FUNCTION_94();
                v28 = v27;
              }

              v29 = v28;
              if (__OFADD__(v16, 1))
              {
                break;
              }

              v30 = [v28 value];
              OUTLINED_FUNCTION_82();
              v33 = [v31 v32];

              v34 = [v33 typeIdentifier];
              v35 = [v34 custom];

              [v35 deleteBundleId];
              v16 = (v16 + 1);
            }

            __break(1u);
LABEL_25:
            __break(1u);
            break;
          }
        }
      }
    }

    else
    {
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
}

void sub_1A9C90154(uint64_t a1)
{
  v2 = sub_1A9C8B650();
  v3 = 0;
  v4 = a1 & 0xC000000000000001;
  v5 = a1 & 0xFFFFFFFFFFFFFF8;
  v25 = a1;
  v6 = a1 + 32;
  v7 = &selRef_numberOfActionsBefore;
  v28 = a1 & 0xC000000000000001;
  v29 = v2;
  v26 = a1 + 32;
  v27 = a1 & 0xFFFFFFFFFFFFFF8;
LABEL_2:
  while (v3 != v2)
  {
    if (v4)
    {
      v8 = MEMORY[0x1AC590720](v3, v25);
    }

    else
    {
      if (v3 >= *(v5 + 16))
      {
        goto LABEL_32;
      }

      v8 = *(v6 + 8 * v3);
    }

    v9 = v8;
    if (__OFADD__(v3++, 1))
    {
      goto LABEL_31;
    }

    v11 = [v8 v7[172]];
    if (v11)
    {
      v12 = v11;
      v30 = v9;
      v13 = [v11 outcome];

      if (v13 && (v14 = [v13 valueDisambiguation], v13, v14))
      {
        v15 = sub_1A9CAE468(v14);
        if (v15)
        {
          v16 = v15;
          v17 = sub_1A9C8B650();
          for (i = 0; ; ++i)
          {
            if (v17 == i)
            {

              v4 = v28;
              v2 = v29;
              v6 = v26;
              v5 = v27;
              v7 = &selRef_numberOfActionsBefore;
              goto LABEL_2;
            }

            if ((v16 & 0xC000000000000001) != 0)
            {
              v19 = MEMORY[0x1AC590720](i, v16);
            }

            else
            {
              if (i >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_30;
              }

              v19 = *(v16 + 8 * i + 32);
            }

            v20 = v19;
            if (__OFADD__(i, 1))
            {
              break;
            }

            v21 = [v19 collection];
            if (v21)
            {
              v22 = v21;
              v23 = [v21 typeIdentifier];

              if (v23)
              {
                v24 = [v23 custom];

                if (v24)
                {
                  [v24 deleteBundleId];
                }
              }
            }
          }

          __break(1u);
LABEL_30:
          __break(1u);
LABEL_31:
          __break(1u);
LABEL_32:
          __break(1u);
          return;
        }

        v7 = &selRef_numberOfActionsBefore;
      }

      else
      {
      }
    }

    else
    {
    }
  }
}

void sub_1A9C903C0(uint64_t a1)
{
  v2 = sub_1A9C8B650();
  for (i = 0; v2 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x1AC590720](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      v4 = *(a1 + 8 * i + 32);
    }

    v5 = v4;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_11:
      __break(1u);
      return;
    }

    v6 = [v4 value];
    v7 = [v6 value];

    v8 = [v7 enumeration];
    v9 = [v8 typeIdentifier];

    v10 = [v9 custom];
    [v10 deleteBundleId];
  }
}

void sub_1A9C90518(uint64_t a1)
{
  v2 = sub_1A9C8B650();
  for (i = 0; v2 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x1AC590720](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      v4 = *(a1 + 8 * i + 32);
    }

    v5 = v4;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_11:
      __break(1u);
      return;
    }

    v6 = [v4 value];
    v7 = [v6 value];

    v8 = [v7 entity];
    v9 = [v8 typeIdentifier];

    v10 = [v9 custom];
    [v10 deleteBundleId];
  }
}

void sub_1A9C90670(uint64_t a1)
{
  v2 = sub_1A9C8B650();
  for (i = 0; v2 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x1AC590720](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      v4 = *(a1 + 8 * i + 32);
    }

    v5 = v4;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_11:
      __break(1u);
      return;
    }

    v6 = [v4 value];
    v7 = [v6 value];

    v8 = [v7 query];
    v9 = [v8 typeIdentifier];

    v10 = [v9 custom];
    [v10 deleteBundleId];
  }
}

void sub_1A9C907C8(uint64_t a1)
{
  v2 = sub_1A9C8B650();
  v3 = 0;
  v4 = a1 & 0xC000000000000001;
  v5 = a1 & 0xFFFFFFFFFFFFFF8;
  v23 = a1;
  v6 = a1 + 32;
  v7 = &selRef_unsupportedLanguageDetected;
  v26 = a1 & 0xC000000000000001;
  v27 = v2;
  v24 = a1 + 32;
  v25 = a1 & 0xFFFFFFFFFFFFFF8;
LABEL_2:
  while (v3 != v2)
  {
    if (v4)
    {
      v8 = MEMORY[0x1AC590720](v3, v23);
    }

    else
    {
      if (v3 >= *(v5 + 16))
      {
        goto LABEL_29;
      }

      v8 = *(v6 + 8 * v3);
    }

    v9 = v8;
    if (__OFADD__(v3++, 1))
    {
      goto LABEL_28;
    }

    v11 = [v8 v7[143]];
    if (v11)
    {
      v12 = v11;
      v13 = [v11 collection];

      if (v13)
      {
        v28 = v9;
        v14 = sub_1A9CAE468(v13);
        if (v14)
        {
          v15 = v14;
          v16 = sub_1A9C8B650();
          for (i = 0; ; ++i)
          {
            if (v16 == i)
            {

              v4 = v26;
              v2 = v27;
              v6 = v24;
              v5 = v25;
              v7 = &selRef_unsupportedLanguageDetected;
              goto LABEL_2;
            }

            if ((v15 & 0xC000000000000001) != 0)
            {
              v18 = MEMORY[0x1AC590720](i, v15);
            }

            else
            {
              if (i >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_27;
              }

              v18 = *(v15 + 8 * i + 32);
            }

            v19 = v18;
            if (__OFADD__(i, 1))
            {
              break;
            }

            v20 = [v18 primitive];
            if (v20)
            {
              v21 = v20;
              v22 = [v20 app];

              if (v22)
              {
                [v22 deleteBundleId];
              }
            }
          }

          __break(1u);
LABEL_27:
          __break(1u);
LABEL_28:
          __break(1u);
LABEL_29:
          __break(1u);
          return;
        }
      }
    }
  }
}

void sub_1A9C909DC(uint64_t a1)
{
  v2 = sub_1A9C8B650();
  v3 = 0;
  v4 = a1 & 0xC000000000000001;
  v5 = a1 & 0xFFFFFFFFFFFFFF8;
  v24 = a1;
  v6 = a1 + 32;
  v7 = &selRef_unsupportedLanguageDetected;
  v27 = a1 & 0xC000000000000001;
  v28 = v2;
  v25 = a1 + 32;
  v26 = a1 & 0xFFFFFFFFFFFFFF8;
LABEL_2:
  while (v3 != v2)
  {
    if (v4)
    {
      v8 = MEMORY[0x1AC590720](v3, v24);
    }

    else
    {
      if (v3 >= *(v5 + 16))
      {
        goto LABEL_30;
      }

      v8 = *(v6 + 8 * v3);
    }

    v9 = v8;
    if (__OFADD__(v3++, 1))
    {
      goto LABEL_29;
    }

    v11 = [v8 v7[143]];
    if (v11)
    {
      v12 = v11;
      v13 = [v11 collection];

      if (v13)
      {
        v29 = v9;
        v14 = sub_1A9CAE468(v13);
        if (v14)
        {
          v15 = v14;
          v16 = sub_1A9C8B650();
          for (i = 0; ; ++i)
          {
            if (v16 == i)
            {

              v4 = v27;
              v2 = v28;
              v6 = v25;
              v5 = v26;
              v7 = &selRef_unsupportedLanguageDetected;
              goto LABEL_2;
            }

            if ((v15 & 0xC000000000000001) != 0)
            {
              v18 = MEMORY[0x1AC590720](i, v15);
            }

            else
            {
              if (i >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_28;
              }

              v18 = *(v15 + 8 * i + 32);
            }

            v19 = v18;
            if (__OFADD__(i, 1))
            {
              break;
            }

            v20 = [v18 enumeration];
            if (v20)
            {
              v21 = v20;
              v22 = [v20 typeIdentifier];

              if (v22)
              {
                v23 = [v22 custom];

                if (v23)
                {
                  [v23 deleteBundleId];
                }
              }
            }
          }

          __break(1u);
LABEL_28:
          __break(1u);
LABEL_29:
          __break(1u);
LABEL_30:
          __break(1u);
          return;
        }
      }
    }
  }
}

void sub_1A9C90C14(uint64_t a1)
{
  v2 = sub_1A9C8B650();
  v3 = 0;
  v4 = a1 & 0xC000000000000001;
  v5 = a1 & 0xFFFFFFFFFFFFFF8;
  v24 = a1;
  v6 = a1 + 32;
  v7 = &selRef_unsupportedLanguageDetected;
  v27 = a1 & 0xC000000000000001;
  v28 = v2;
  v25 = a1 + 32;
  v26 = a1 & 0xFFFFFFFFFFFFFF8;
LABEL_2:
  while (v3 != v2)
  {
    if (v4)
    {
      v8 = MEMORY[0x1AC590720](v3, v24);
    }

    else
    {
      if (v3 >= *(v5 + 16))
      {
        goto LABEL_30;
      }

      v8 = *(v6 + 8 * v3);
    }

    v9 = v8;
    if (__OFADD__(v3++, 1))
    {
      goto LABEL_29;
    }

    v11 = [v8 v7[143]];
    if (v11)
    {
      v12 = v11;
      v13 = [v11 collection];

      if (v13)
      {
        v29 = v9;
        v14 = sub_1A9CAE468(v13);
        if (v14)
        {
          v15 = v14;
          v16 = sub_1A9C8B650();
          for (i = 0; ; ++i)
          {
            if (v16 == i)
            {

              v4 = v27;
              v2 = v28;
              v6 = v25;
              v5 = v26;
              v7 = &selRef_unsupportedLanguageDetected;
              goto LABEL_2;
            }

            if ((v15 & 0xC000000000000001) != 0)
            {
              v18 = MEMORY[0x1AC590720](i, v15);
            }

            else
            {
              if (i >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_28;
              }

              v18 = *(v15 + 8 * i + 32);
            }

            v19 = v18;
            if (__OFADD__(i, 1))
            {
              break;
            }

            v20 = [v18 entity];
            if (v20)
            {
              v21 = v20;
              v22 = [v20 typeIdentifier];

              if (v22)
              {
                v23 = [v22 custom];

                if (v23)
                {
                  [v23 deleteBundleId];
                }
              }
            }
          }

          __break(1u);
LABEL_28:
          __break(1u);
LABEL_29:
          __break(1u);
LABEL_30:
          __break(1u);
          return;
        }
      }
    }
  }
}

void sub_1A9C90E4C(uint64_t a1)
{
  v2 = sub_1A9C8B650();
  v3 = 0;
  v4 = a1 & 0xC000000000000001;
  v5 = a1 & 0xFFFFFFFFFFFFFF8;
  v24 = a1;
  v6 = a1 + 32;
  v7 = &selRef_unsupportedLanguageDetected;
  v27 = a1 & 0xC000000000000001;
  v28 = v2;
  v25 = a1 + 32;
  v26 = a1 & 0xFFFFFFFFFFFFFF8;
LABEL_2:
  while (v3 != v2)
  {
    if (v4)
    {
      v8 = MEMORY[0x1AC590720](v3, v24);
    }

    else
    {
      if (v3 >= *(v5 + 16))
      {
        goto LABEL_30;
      }

      v8 = *(v6 + 8 * v3);
    }

    v9 = v8;
    if (__OFADD__(v3++, 1))
    {
      goto LABEL_29;
    }

    v11 = [v8 v7[143]];
    if (v11)
    {
      v12 = v11;
      v13 = [v11 collection];

      if (v13)
      {
        v29 = v9;
        v14 = sub_1A9CAE468(v13);
        if (v14)
        {
          v15 = v14;
          v16 = sub_1A9C8B650();
          for (i = 0; ; ++i)
          {
            if (v16 == i)
            {

              v4 = v27;
              v2 = v28;
              v6 = v25;
              v5 = v26;
              v7 = &selRef_unsupportedLanguageDetected;
              goto LABEL_2;
            }

            if ((v15 & 0xC000000000000001) != 0)
            {
              v18 = MEMORY[0x1AC590720](i, v15);
            }

            else
            {
              if (i >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_28;
              }

              v18 = *(v15 + 8 * i + 32);
            }

            v19 = v18;
            if (__OFADD__(i, 1))
            {
              break;
            }

            v20 = [v18 query];
            if (v20)
            {
              v21 = v20;
              v22 = [v20 typeIdentifier];

              if (v22)
              {
                v23 = [v22 custom];

                if (v23)
                {
                  [v23 deleteBundleId];
                }
              }
            }
          }

          __break(1u);
LABEL_28:
          __break(1u);
LABEL_29:
          __break(1u);
LABEL_30:
          __break(1u);
          return;
        }
      }
    }
  }
}

void sub_1A9C91084(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char **a5)
{
  v32 = a5;
  OUTLINED_FUNCTION_136();
  v29 = v5;
  v30 = v9;
  v11 = v10;
  v13 = v12;
  v14();
  OUTLINED_FUNCTION_54();
  while (1)
  {
    if (v6 == v7)
    {
      OUTLINED_FUNCTION_68();
      return;
    }

    if ((v13 & 0xC000000000000001) != 0)
    {
      OUTLINED_FUNCTION_109();
    }

    else
    {
      OUTLINED_FUNCTION_123();
      if (v15)
      {
        goto LABEL_11;
      }

      OUTLINED_FUNCTION_108();
    }

    OUTLINED_FUNCTION_59();
    if (v16)
    {
      break;
    }

    v17 = [v8 value];
    v18 = [v17 *v11];

    v19 = [v18 *v30];
    v28 = OUTLINED_FUNCTION_105(v20, v21, v22, v23, v24, v25, v26, v27, v29, v30, v31, v32);

    [v28 deleteBundleId];
    ++v7;
  }

  __break(1u);
LABEL_11:
  __break(1u);
}

void sub_1A9C91194(uint64_t a1)
{
  sub_1A9C8B650();
  OUTLINED_FUNCTION_57();
  v19 = a1;
  OUTLINED_FUNCTION_117();
LABEL_2:
  while (v3 != v1)
  {
    if (v2)
    {
      v8 = MEMORY[0x1AC590720](v3, v19);
    }

    else
    {
      if (v3 >= *(v4 + 16))
      {
        goto LABEL_27;
      }

      v8 = *(a1 + 8 * v3);
    }

    v9 = v8;
    if (__OFADD__(v3++, 1))
    {
      goto LABEL_26;
    }

    v11 = [v8 v5[239]];
    if (v11)
    {
      v12 = sub_1A9CAE468(v11);
      if (v12)
      {
        v13 = v12;
        v24 = v9;
        sub_1A9C8B650();
        OUTLINED_FUNCTION_126();
        while (1)
        {
          if (a1 == v1)
          {

            v2 = v22;
            v1 = v23;
            a1 = v20;
            v4 = v21;
            v5 = &selRef_clearMetrics;
            goto LABEL_2;
          }

          if (v6)
          {
            v14 = MEMORY[0x1AC590720](v1, v13);
          }

          else
          {
            if (v1 >= *(v2 + 16))
            {
              goto LABEL_25;
            }

            v14 = *(v13 + 8 * v1 + 32);
          }

          v15 = v14;
          if (__OFADD__(v1, 1))
          {
            break;
          }

          v16 = [v14 primitive];
          if (v16)
          {
            v17 = v16;
            v18 = [v16 app];

            if (v18)
            {
              [v18 deleteBundleId];
            }
          }

          ++v1;
        }

        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
        return;
      }
    }
  }
}

void sub_1A9C91350(uint64_t a1, SEL *a2)
{
  sub_1A9C8B650();
  OUTLINED_FUNCTION_61();
  OUTLINED_FUNCTION_78();
  v22 = a1;
  v8 = (a1 + 32);
  v9 = &selRef_clearMetrics;
  v25 = v4;
  v26 = v10;
  v23 = (a1 + 32);
  v24 = v5;
  while (1)
  {
LABEL_2:
    if (v3 == v2)
    {
      OUTLINED_FUNCTION_58();
      return;
    }

    if (v4)
    {
      v11 = MEMORY[0x1AC590720](v3, v22);
    }

    else
    {
      if (v3 >= *(v5 + 16))
      {
        goto LABEL_28;
      }

      v11 = v8[v3];
    }

    v12 = v11;
    v13 = __OFADD__(v3++, 1);
    if (v13)
    {
      break;
    }

    v14 = [v11 v9[239]];
    if (v14)
    {
      v15 = sub_1A9CAE468(v14);
      if (v15)
      {
        v16 = v15;
        v27 = v3;
        sub_1A9C8B650();
        OUTLINED_FUNCTION_85();
        while (1)
        {
          if (v2 == v5)
          {

            v4 = v25;
            v2 = v26;
            v3 = v27;
            v8 = v23;
            v5 = v24;
            v9 = &selRef_clearMetrics;
            goto LABEL_2;
          }

          if (v12)
          {
            MEMORY[0x1AC590720](v5, v16);
          }

          else
          {
            if (v5 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_26;
            }

            v17 = *(v16 + 8 * v5 + 32);
          }

          OUTLINED_FUNCTION_122();
          if (v13)
          {
            break;
          }

          v18 = [v8 *a2];
          if (v18)
          {
            v19 = v18;
            v20 = [v18 typeIdentifier];

            if (v20)
            {
              v21 = [v20 custom];

              if (v21)
              {
                [v21 deleteBundleId];
              }
            }
          }

          ++v5;
        }

        __break(1u);
LABEL_26:
        __break(1u);
        break;
      }
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
}

void sub_1A9C9153C(uint64_t a1)
{
  v2 = sub_1A9C8B650();
  for (i = 0; v2 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x1AC590720](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      v4 = *(a1 + 8 * i + 32);
    }

    v5 = v4;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_11:
      __break(1u);
      return;
    }

    v6 = [v4 outcome];
    v7 = [v6 success];

    v8 = [v7 returnValue];
    v9 = [v8 value];

    v10 = [v9 primitive];
    v11 = [v10 app];

    [v11 deleteBundleId];
  }
}

void sub_1A9C916B8(uint64_t a1)
{
  v2 = sub_1A9C8B650();
  for (i = 0; v2 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x1AC590720](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      v4 = *(a1 + 8 * i + 32);
    }

    v5 = v4;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_11:
      __break(1u);
      return;
    }

    v6 = [v4 outcome];
    v7 = [v6 success];

    v8 = [v7 returnValue];
    v9 = [v8 value];

    v10 = [v9 enumeration];
    v11 = [v10 typeIdentifier];

    v12 = [v11 custom];
    [v12 deleteBundleId];
  }
}

void sub_1A9C91854(uint64_t a1)
{
  v2 = sub_1A9C8B650();
  for (i = 0; v2 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x1AC590720](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      v4 = *(a1 + 8 * i + 32);
    }

    v5 = v4;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_11:
      __break(1u);
      return;
    }

    v6 = [v4 outcome];
    v7 = [v6 success];

    v8 = [v7 returnValue];
    v9 = [v8 value];

    v10 = [v9 entity];
    v11 = [v10 typeIdentifier];

    v12 = [v11 custom];
    [v12 deleteBundleId];
  }
}

void sub_1A9C919F0(uint64_t a1)
{
  v2 = sub_1A9C8B650();
  for (i = 0; v2 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x1AC590720](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      v4 = *(a1 + 8 * i + 32);
    }

    v5 = v4;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_11:
      __break(1u);
      return;
    }

    v6 = [v4 outcome];
    v7 = [v6 success];

    v8 = [v7 returnValue];
    v9 = [v8 value];

    v10 = [v9 query];
    v11 = [v10 typeIdentifier];

    v12 = [v11 custom];
    [v12 deleteBundleId];
  }
}

void sub_1A9C91B8C(uint64_t a1)
{
  v2 = sub_1A9C8B650();
  for (i = 0; v2 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x1AC590720](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      v4 = *(a1 + 8 * i + 32);
    }

    v5 = v4;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_11:
      __break(1u);
      return;
    }

    v6 = [v4 outcome];
    v7 = [v6 success];

    v8 = [v7 returnValue];
    v9 = [v8 collection];

    v10 = [v9 typeIdentifier];
    v11 = [v10 custom];

    [v11 deleteBundleId];
  }
}

void sub_1A9C91D08(uint64_t a1)
{
  v3 = sub_1A9C8B650();
  for (i = 0; v3 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x1AC590720](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_12;
      }

      v5 = *(a1 + 8 * i + 32);
    }

    v6 = v5;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_12:
      __break(1u);
      return;
    }

    v7 = v5;
    sub_1A9CAA9E4(&v7, &selRef_outcome);

    if (v1)
    {
      return;
    }
  }
}

void sub_1A9C91DF8(uint64_t a1)
{
  v3 = sub_1A9C8B650();
  for (i = 0; v3 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x1AC590720](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_12;
      }

      v5 = *(a1 + 8 * i + 32);
    }

    v6 = v5;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_12:
      __break(1u);
      return;
    }

    v7 = v5;
    sub_1A9CAA9E4(&v7, &selRef_outcome);

    if (v1)
    {
      return;
    }
  }
}

void sub_1A9C91EE8(uint64_t a1)
{
  v3 = sub_1A9C8B650();
  for (i = 0; v3 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x1AC590720](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_12;
      }

      v5 = *(a1 + 8 * i + 32);
    }

    v6 = v5;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_12:
      __break(1u);
      return;
    }

    v7 = v5;
    sub_1A9CAA9E4(&v7, &selRef_outcome);

    if (v1)
    {
      return;
    }
  }
}

void sub_1A9C91FD8(uint64_t a1)
{
  v2 = sub_1A9C8B650();
  for (i = 0; v2 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x1AC590720](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      v4 = *(a1 + 8 * i + 32);
    }

    v5 = v4;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_11:
      __break(1u);
      return;
    }

    v6 = [v4 outcome];
    v7 = [v6 success];

    v8 = [v7 followUpAction];
    v9 = [v8 action];

    v10 = [v9 linkAction];
    [v10 deleteBundleId];
  }
}

void sub_1A9C92134(uint64_t a1, uint64_t a2, uint64_t a3, const char **a4, uint64_t a5)
{
  v32 = a4;
  OUTLINED_FUNCTION_136();
  v29 = v5;
  v30 = v9;
  v11 = v10;
  v13 = v12;
  sub_1A9C8B650();
  OUTLINED_FUNCTION_54();
  while (1)
  {
    if (v6 == v7)
    {
      OUTLINED_FUNCTION_68();
      return;
    }

    if ((v13 & 0xC000000000000001) != 0)
    {
      OUTLINED_FUNCTION_109();
    }

    else
    {
      if (v7 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      OUTLINED_FUNCTION_108();
    }

    OUTLINED_FUNCTION_59();
    if (v14)
    {
      break;
    }

    v15 = [v8 outcome];
    v16 = [v15 *v11];

    v17 = OUTLINED_FUNCTION_98();
    v19 = [v17 v18];

    v28 = OUTLINED_FUNCTION_105(v20, v21, v22, v23, v24, v25, v26, v27, v29, v30, v31, v32);
    [v28 deleteBundleId];

    ++v7;
  }

  __break(1u);
LABEL_11:
  __break(1u);
}

void sub_1A9C92240(uint64_t a1)
{
  v2 = sub_1A9C8B650();
  for (i = 0; v2 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x1AC590720](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      v4 = *(a1 + 8 * i + 32);
    }

    v5 = v4;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_11:
      __break(1u);
      return;
    }

    v6 = [v4 outcome];
    v7 = [v6 parameterConfirmation];

    v8 = [v7 item];
    v9 = [v8 value];

    v10 = [v9 primitive];
    v11 = [v10 app];

    [v11 deleteBundleId];
  }
}

void sub_1A9C923BC(uint64_t a1)
{
  v2 = sub_1A9C8B650();
  for (i = 0; v2 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x1AC590720](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      v4 = *(a1 + 8 * i + 32);
    }

    v5 = v4;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_11:
      __break(1u);
      return;
    }

    v6 = [v4 outcome];
    v7 = [v6 parameterConfirmation];

    v8 = [v7 item];
    v9 = [v8 value];

    v10 = [v9 enumeration];
    v11 = [v10 typeIdentifier];

    v12 = [v11 custom];
    [v12 deleteBundleId];
  }
}

void sub_1A9C92558(uint64_t a1)
{
  v2 = sub_1A9C8B650();
  for (i = 0; v2 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x1AC590720](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      v4 = *(a1 + 8 * i + 32);
    }

    v5 = v4;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_11:
      __break(1u);
      return;
    }

    v6 = [v4 outcome];
    v7 = [v6 parameterConfirmation];

    v8 = [v7 item];
    v9 = [v8 value];

    v10 = [v9 entity];
    v11 = [v10 typeIdentifier];

    v12 = [v11 custom];
    [v12 deleteBundleId];
  }
}

void sub_1A9C926F4(uint64_t a1)
{
  v2 = sub_1A9C8B650();
  for (i = 0; v2 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x1AC590720](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      v4 = *(a1 + 8 * i + 32);
    }

    v5 = v4;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_11:
      __break(1u);
      return;
    }

    v6 = [v4 outcome];
    v7 = [v6 parameterConfirmation];

    v8 = [v7 item];
    v9 = [v8 value];

    v10 = [v9 query];
    v11 = [v10 typeIdentifier];

    v12 = [v11 custom];
    [v12 deleteBundleId];
  }
}

void sub_1A9C92890(uint64_t a1)
{
  v2 = sub_1A9C8B650();
  for (i = 0; v2 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x1AC590720](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      v4 = *(a1 + 8 * i + 32);
    }

    v5 = v4;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_11:
      __break(1u);
      return;
    }

    v6 = [v4 outcome];
    v7 = [v6 parameterConfirmation];

    v8 = [v7 item];
    v9 = [v8 collection];

    v10 = [v9 typeIdentifier];
    v11 = [v10 custom];

    [v11 deleteBundleId];
  }
}

void sub_1A9C92A0C(uint64_t a1)
{
  v3 = sub_1A9C8B650();
  for (i = 0; v3 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x1AC590720](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_12;
      }

      v5 = *(a1 + 8 * i + 32);
    }

    v6 = v5;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_12:
      __break(1u);
      return;
    }

    v7 = v5;
    sub_1A9CAA9E4(&v7, &selRef_outcome);

    if (v1)
    {
      return;
    }
  }
}

void sub_1A9C92AFC(uint64_t a1)
{
  v3 = sub_1A9C8B650();
  for (i = 0; v3 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x1AC590720](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_12;
      }

      v5 = *(a1 + 8 * i + 32);
    }

    v6 = v5;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_12:
      __break(1u);
      return;
    }

    v7 = v5;
    sub_1A9CAA9E4(&v7, &selRef_outcome);

    if (v1)
    {
      return;
    }
  }
}

void sub_1A9C92BEC(uint64_t a1)
{
  v3 = sub_1A9C8B650();
  for (i = 0; v3 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x1AC590720](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_12;
      }

      v5 = *(a1 + 8 * i + 32);
    }

    v6 = v5;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_12:
      __break(1u);
      return;
    }

    v7 = v5;
    sub_1A9CAA9E4(&v7, &selRef_outcome);

    if (v1)
    {
      return;
    }
  }
}

void sub_1A9C92CDC(uint64_t a1)
{
  v2 = sub_1A9C8B650();
  v3 = 0;
  v4 = a1 & 0xC000000000000001;
  v5 = a1 & 0xFFFFFFFFFFFFFF8;
  v24 = a1;
  v6 = a1 + 32;
  v7 = &selRef_numberOfActionsBefore;
  v27 = a1 & 0xC000000000000001;
  v28 = v2;
  v25 = a1 + 32;
  v26 = a1 & 0xFFFFFFFFFFFFFF8;
LABEL_2:
  while (v3 != v2)
  {
    if (v4)
    {
      v8 = MEMORY[0x1AC590720](v3, v24);
    }

    else
    {
      if (v3 >= *(v5 + 16))
      {
        goto LABEL_30;
      }

      v8 = *(v6 + 8 * v3);
    }

    v9 = v8;
    if (__OFADD__(v3++, 1))
    {
      goto LABEL_29;
    }

    v11 = [v8 v7[113]];
    if (v11)
    {
      v12 = v11;
      v13 = [v11 parameterDisambiguation];

      if (v13)
      {
        v29 = v9;
        v14 = sub_1A9CAE468(v13);
        if (v14)
        {
          v15 = v14;
          v16 = sub_1A9C8B650();
          for (i = 0; ; ++i)
          {
            if (v16 == i)
            {

              v4 = v27;
              v2 = v28;
              v6 = v25;
              v5 = v26;
              v7 = &selRef_numberOfActionsBefore;
              goto LABEL_2;
            }

            if ((v15 & 0xC000000000000001) != 0)
            {
              v18 = MEMORY[0x1AC590720](i, v15);
            }

            else
            {
              if (i >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_28;
              }

              v18 = *(v15 + 8 * i + 32);
            }

            v19 = v18;
            if (__OFADD__(i, 1))
            {
              break;
            }

            v20 = [v18 value];
            if (v20)
            {
              v21 = v20;
              v22 = [v20 primitive];

              if (v22)
              {
                v23 = [v22 app];

                if (v23)
                {
                  [v23 deleteBundleId];
                }
              }
            }
          }

          __break(1u);
LABEL_28:
          __break(1u);
LABEL_29:
          __break(1u);
LABEL_30:
          __break(1u);
          return;
        }
      }
    }
  }
}

void sub_1A9C92F14(uint64_t a1)
{
  v2 = sub_1A9C8B650();
  v3 = 0;
  v4 = a1 & 0xC000000000000001;
  v5 = a1 & 0xFFFFFFFFFFFFFF8;
  v24 = a1;
  v6 = a1 + 32;
  v7 = &selRef_numberOfActionsBefore;
  v27 = a1 & 0xC000000000000001;
  v28 = v2;
  v25 = a1 + 32;
  v26 = a1 & 0xFFFFFFFFFFFFFF8;
LABEL_2:
  while (v3 != v2)
  {
    if (v4)
    {
      v8 = MEMORY[0x1AC590720](v3, v24);
    }

    else
    {
      if (v3 >= *(v5 + 16))
      {
        goto LABEL_30;
      }

      v8 = *(v6 + 8 * v3);
    }

    v9 = v8;
    if (__OFADD__(v3++, 1))
    {
      goto LABEL_29;
    }

    v11 = [v8 v7[113]];
    if (v11)
    {
      v12 = v11;
      v13 = [v11 parameterDisambiguation];

      if (v13)
      {
        v29 = v9;
        v14 = sub_1A9CAE468(v13);
        if (v14)
        {
          v15 = v14;
          v16 = sub_1A9C8B650();
          for (i = 0; ; ++i)
          {
            if (v16 == i)
            {

              v4 = v27;
              v2 = v28;
              v6 = v25;
              v5 = v26;
              v7 = &selRef_numberOfActionsBefore;
              goto LABEL_2;
            }

            if ((v15 & 0xC000000000000001) != 0)
            {
              v18 = MEMORY[0x1AC590720](i, v15);
            }

            else
            {
              if (i >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_28;
              }

              v18 = *(v15 + 8 * i + 32);
            }

            v19 = v18;
            if (__OFADD__(i, 1))
            {
              break;
            }

            v20 = [v18 collection];
            if (v20)
            {
              v21 = v20;
              v22 = [v20 typeIdentifier];

              if (v22)
              {
                v23 = [v22 custom];

                if (v23)
                {
                  [v23 deleteBundleId];
                }
              }
            }
          }

          __break(1u);
LABEL_28:
          __break(1u);
LABEL_29:
          __break(1u);
LABEL_30:
          __break(1u);
          return;
        }
      }
    }
  }
}

void sub_1A9C9314C(uint64_t a1)
{
  v2 = sub_1A9C8B650();
  for (i = 0; v2 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x1AC590720](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      v4 = *(a1 + 8 * i + 32);
    }

    v5 = v4;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_11:
      __break(1u);
      return;
    }

    v6 = [v4 outcome];
    v7 = [v6 parameterNotAllowed];

    v8 = [v7 value];
    v9 = [v8 value];

    v10 = [v9 primitive];
    v11 = [v10 app];

    [v11 deleteBundleId];
  }
}

void sub_1A9C932C4(uint64_t a1)
{
  v2 = sub_1A9C8B650();
  for (i = 0; v2 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x1AC590720](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      v4 = *(a1 + 8 * i + 32);
    }

    v5 = v4;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_11:
      __break(1u);
      return;
    }

    v6 = [v4 outcome];
    v7 = [v6 parameterNotAllowed];

    v8 = [v7 value];
    v9 = [v8 value];

    v10 = [v9 enumeration];
    v11 = [v10 typeIdentifier];

    v12 = [v11 custom];
    [v12 deleteBundleId];
  }
}

void sub_1A9C9345C(uint64_t a1)
{
  v2 = sub_1A9C8B650();
  for (i = 0; v2 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x1AC590720](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      v4 = *(a1 + 8 * i + 32);
    }

    v5 = v4;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_11:
      __break(1u);
      return;
    }

    v6 = [v4 outcome];
    v7 = [v6 parameterNotAllowed];

    v8 = [v7 value];
    v9 = [v8 value];

    v10 = [v9 entity];
    v11 = [v10 typeIdentifier];

    v12 = [v11 custom];
    [v12 deleteBundleId];
  }
}

void sub_1A9C935F4(uint64_t a1)
{
  v2 = sub_1A9C8B650();
  for (i = 0; v2 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x1AC590720](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      v4 = *(a1 + 8 * i + 32);
    }

    v5 = v4;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_11:
      __break(1u);
      return;
    }

    v6 = [v4 outcome];
    v7 = [v6 parameterNotAllowed];

    v8 = [v7 value];
    v9 = [v8 value];

    v10 = [v9 query];
    v11 = [v10 typeIdentifier];

    v12 = [v11 custom];
    [v12 deleteBundleId];
  }
}

void sub_1A9C9378C(uint64_t a1)
{
  v2 = sub_1A9C8B650();
  for (i = 0; v2 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x1AC590720](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      v4 = *(a1 + 8 * i + 32);
    }

    v5 = v4;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_11:
      __break(1u);
      return;
    }

    v6 = [v4 outcome];
    v7 = [v6 parameterNotAllowed];

    v8 = [v7 value];
    v9 = [v8 collection];

    v10 = [v9 typeIdentifier];
    v11 = [v10 custom];

    [v11 deleteBundleId];
  }
}

void sub_1A9C93908(uint64_t a1)
{
  v3 = sub_1A9C8B650();
  for (i = 0; v3 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x1AC590720](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_12;
      }

      v5 = *(a1 + 8 * i + 32);
    }

    v6 = v5;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_12:
      __break(1u);
      return;
    }

    v7 = v5;
    sub_1A9CAA9E4(&v7, &selRef_outcome);

    if (v1)
    {
      return;
    }
  }
}

void sub_1A9C939F8(uint64_t a1)
{
  v3 = sub_1A9C8B650();
  for (i = 0; v3 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x1AC590720](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_12;
      }

      v5 = *(a1 + 8 * i + 32);
    }

    v6 = v5;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_12:
      __break(1u);
      return;
    }

    v7 = v5;
    sub_1A9CAA9E4(&v7, &selRef_outcome);

    if (v1)
    {
      return;
    }
  }
}

void sub_1A9C93AE8(uint64_t a1)
{
  v3 = sub_1A9C8B650();
  for (i = 0; v3 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x1AC590720](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_12;
      }

      v5 = *(a1 + 8 * i + 32);
    }

    v6 = v5;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_12:
      __break(1u);
      return;
    }

    v7 = v5;
    sub_1A9CAA9E4(&v7, &selRef_outcome);

    if (v1)
    {
      return;
    }
  }
}

void sub_1A9C93BD8(uint64_t a1)
{
  v2 = sub_1A9C8B650();
  for (i = 0; v2 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x1AC590720](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      v4 = *(a1 + 8 * i + 32);
    }

    v5 = v4;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_11:
      __break(1u);
      return;
    }

    v6 = [v4 outcome];
    v7 = [v6 parameterCandidatesNotFounds];

    v8 = [v7 value];
    v9 = [v8 value];

    v10 = [v9 primitive];
    v11 = [v10 app];

    [v11 deleteBundleId];
  }
}

void sub_1A9C93D50(uint64_t a1)
{
  v2 = sub_1A9C8B650();
  for (i = 0; v2 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x1AC590720](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      v4 = *(a1 + 8 * i + 32);
    }

    v5 = v4;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_11:
      __break(1u);
      return;
    }

    v6 = [v4 outcome];
    v7 = [v6 parameterCandidatesNotFounds];

    v8 = [v7 value];
    v9 = [v8 value];

    v10 = [v9 enumeration];
    v11 = [v10 typeIdentifier];

    v12 = [v11 custom];
    [v12 deleteBundleId];
  }
}

void sub_1A9C93EE8(uint64_t a1)
{
  v2 = sub_1A9C8B650();
  for (i = 0; v2 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x1AC590720](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      v4 = *(a1 + 8 * i + 32);
    }

    v5 = v4;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_11:
      __break(1u);
      return;
    }

    v6 = [v4 outcome];
    v7 = [v6 parameterCandidatesNotFounds];

    v8 = [v7 value];
    v9 = [v8 value];

    v10 = [v9 entity];
    v11 = [v10 typeIdentifier];

    v12 = [v11 custom];
    [v12 deleteBundleId];
  }
}

void sub_1A9C94080(uint64_t a1)
{
  v2 = sub_1A9C8B650();
  for (i = 0; v2 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x1AC590720](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      v4 = *(a1 + 8 * i + 32);
    }

    v5 = v4;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_11:
      __break(1u);
      return;
    }

    v6 = [v4 outcome];
    v7 = [v6 parameterCandidatesNotFounds];

    v8 = [v7 value];
    v9 = [v8 value];

    v10 = [v9 query];
    v11 = [v10 typeIdentifier];

    v12 = [v11 custom];
    [v12 deleteBundleId];
  }
}

void sub_1A9C94218(uint64_t a1)
{
  v2 = sub_1A9C8B650();
  for (i = 0; v2 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x1AC590720](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      v4 = *(a1 + 8 * i + 32);
    }

    v5 = v4;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_11:
      __break(1u);
      return;
    }

    v6 = [v4 outcome];
    v7 = [v6 parameterCandidatesNotFounds];

    v8 = [v7 value];
    v9 = [v8 collection];

    v10 = [v9 typeIdentifier];
    v11 = [v10 custom];

    [v11 deleteBundleId];
  }
}

void sub_1A9C94394(uint64_t a1, uint64_t (*a2)(void), SEL *a3, SEL *a4, SEL *a5)
{
  a2();
  OUTLINED_FUNCTION_54();
  v11 = a1 & 0xC000000000000001;
  v12 = a1 & 0xFFFFFFFFFFFFFF8;
  v31 = a1;
  v37 = a1 & 0xFFFFFFFFFFFFFF8;
  v38 = a1 + 32;
  v35 = a4;
  v36 = a5;
  v33 = v13;
  v34 = a3;
  v32 = a1 & 0xC000000000000001;
LABEL_2:
  while (v6 != v5)
  {
    if (v11)
    {
      v14 = MEMORY[0x1AC590720](v6, v31);
    }

    else
    {
      if (v6 >= *(v12 + 16))
      {
        goto LABEL_32;
      }

      v14 = *(v38 + 8 * v6);
    }

    v15 = v14;
    if (__OFADD__(v6++, 1))
    {
      goto LABEL_31;
    }

    v17 = [v14 *a3];
    if (v17)
    {
      v18 = v17;
      v39 = v15;
      v19 = [v17 *a4];

      if (v19 && (v20 = [v19 *a5], v19, v20) && (v21 = objc_msgSend(v20, sel_collection), v20, v21))
      {
        v22 = sub_1A9CAE468(v21);
        if (v22)
        {
          v23 = v22;
          v24 = sub_1A9C8B650();
          for (i = 0; ; ++i)
          {
            if (v24 == i)
            {

              a4 = v35;
              a5 = v36;
              v5 = v33;
              a3 = v34;
              v11 = v32;
              v12 = v37;
              goto LABEL_2;
            }

            if ((v23 & 0xC000000000000001) != 0)
            {
              v26 = MEMORY[0x1AC590720](i, v23);
            }

            else
            {
              if (i >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_30;
              }

              v26 = *(v23 + 8 * i + 32);
            }

            v27 = v26;
            if (__OFADD__(i, 1))
            {
              break;
            }

            v28 = [v26 primitive];
            if (v28)
            {
              v29 = v28;
              v30 = [v28 app];

              if (v30)
              {
                [v30 deleteBundleId];
              }
            }
          }

          __break(1u);
LABEL_30:
          __break(1u);
LABEL_31:
          __break(1u);
LABEL_32:
          __break(1u);
          return;
        }

        v12 = v37;
      }

      else
      {
      }
    }

    else
    {
    }
  }
}

void sub_1A9C94610(uint64_t a1)
{
  v3 = sub_1A9C8B650();
  for (i = 0; v3 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x1AC590720](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_12;
      }

      v5 = *(a1 + 8 * i + 32);
    }

    v6 = v5;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_12:
      __break(1u);
      return;
    }

    v7 = v5;
    sub_1A9CAA9E4(&v7, &selRef_outcome);

    if (v1)
    {
      return;
    }
  }
}

void sub_1A9C94700(uint64_t a1)
{
  v3 = sub_1A9C8B650();
  for (i = 0; v3 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x1AC590720](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_12;
      }

      v5 = *(a1 + 8 * i + 32);
    }

    v6 = v5;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_12:
      __break(1u);
      return;
    }

    v7 = v5;
    sub_1A9CAA9E4(&v7, &selRef_outcome);

    if (v1)
    {
      return;
    }
  }
}

void sub_1A9C947F0(uint64_t a1)
{
  v3 = sub_1A9C8B650();
  for (i = 0; v3 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x1AC590720](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_12;
      }

      v5 = *(a1 + 8 * i + 32);
    }

    v6 = v5;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_12:
      __break(1u);
      return;
    }

    v7 = v5;
    sub_1A9CAA9E4(&v7, &selRef_outcome);

    if (v1)
    {
      return;
    }
  }
}

void sub_1A9C948E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  OUTLINED_FUNCTION_136();
  v18 = v8;
  v10 = v9;
  v12 = v11;
  v13();
  OUTLINED_FUNCTION_54();
  while (1)
  {
    if (v5 == v6)
    {
      OUTLINED_FUNCTION_68();
      return;
    }

    if ((v12 & 0xC000000000000001) != 0)
    {
      OUTLINED_FUNCTION_109();
    }

    else
    {
      OUTLINED_FUNCTION_123();
      if (v14)
      {
        goto LABEL_11;
      }

      OUTLINED_FUNCTION_108();
    }

    OUTLINED_FUNCTION_59();
    if (v15)
    {
      break;
    }

    v16 = [v7 *v10];
    v17 = [v16 *v18];

    [v17 *a5];
    ++v6;
  }

  __break(1u);
LABEL_11:
  __break(1u);
}

void sub_1A9C949BC(uint64_t a1)
{
  v2 = sub_1A9C8B650();
  v3 = 0;
  v4 = a1 & 0xC000000000000001;
  v5 = a1 & 0xFFFFFFFFFFFFFF8;
  v19 = a1;
  v6 = a1 + 32;
  v21 = a1 & 0xC000000000000001;
  v22 = v2;
  v20 = a1 & 0xFFFFFFFFFFFFFF8;
  v23 = a1 + 32;
LABEL_2:
  while (v3 != v2)
  {
    if (v4)
    {
      v7 = MEMORY[0x1AC590720](v3, v19);
    }

    else
    {
      if (v3 >= *(v5 + 16))
      {
        goto LABEL_26;
      }

      v7 = *(v6 + 8 * v3);
    }

    v8 = v7;
    if (__OFADD__(v3++, 1))
    {
      goto LABEL_25;
    }

    v10 = [v7 outcome];
    if (v10 && (v11 = v10, v12 = [v10 toolDisambiguation], v11, v12))
    {
      v13 = sub_1A9CAE468(v12);
      if (v13)
      {
        v14 = v13;
        v15 = sub_1A9C8B650();
        for (i = 0; ; ++i)
        {
          if (v15 == i)
          {

            v4 = v21;
            v2 = v22;
            v5 = v20;
            v6 = v23;
            goto LABEL_2;
          }

          if ((v14 & 0xC000000000000001) != 0)
          {
            v17 = MEMORY[0x1AC590720](i, v14);
          }

          else
          {
            if (i >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_24;
            }

            v17 = *(v14 + 8 * i + 32);
          }

          v18 = v17;
          if (__OFADD__(i, 1))
          {
            break;
          }

          [v17 deleteToolId];
        }

        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
        return;
      }

      v6 = v23;
    }

    else
    {
    }
  }
}

void sub_1A9C94B88(uint64_t a1)
{
  v2 = sub_1A9C8B650();
  v3 = 0;
  v4 = a1 & 0xC000000000000001;
  v5 = a1 & 0xFFFFFFFFFFFFFF8;
  v24 = a1;
  v6 = a1 + 32;
  v7 = &selRef_numberOfActionsBefore;
  v27 = a1 & 0xC000000000000001;
  v28 = v2;
  v25 = a1 + 32;
  v26 = a1 & 0xFFFFFFFFFFFFFF8;
LABEL_2:
  while (v3 != v2)
  {
    if (v4)
    {
      v8 = MEMORY[0x1AC590720](v3, v24);
    }

    else
    {
      if (v3 >= *(v5 + 16))
      {
        goto LABEL_30;
      }

      v8 = *(v6 + 8 * v3);
    }

    v9 = v8;
    if (__OFADD__(v3++, 1))
    {
      goto LABEL_29;
    }

    v11 = [v8 v7[113]];
    if (v11)
    {
      v12 = v11;
      v13 = [v11 valueDisambiguation];

      if (v13)
      {
        v29 = v9;
        v14 = sub_1A9CAE468(v13);
        if (v14)
        {
          v15 = v14;
          v16 = sub_1A9C8B650();
          for (i = 0; ; ++i)
          {
            if (v16 == i)
            {

              v4 = v27;
              v2 = v28;
              v6 = v25;
              v5 = v26;
              v7 = &selRef_numberOfActionsBefore;
              goto LABEL_2;
            }

            if ((v15 & 0xC000000000000001) != 0)
            {
              v18 = MEMORY[0x1AC590720](i, v15);
            }

            else
            {
              if (i >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_28;
              }

              v18 = *(v15 + 8 * i + 32);
            }

            v19 = v18;
            if (__OFADD__(i, 1))
            {
              break;
            }

            v20 = [v18 value];
            if (v20)
            {
              v21 = v20;
              v22 = [v20 primitive];

              if (v22)
              {
                v23 = [v22 app];

                if (v23)
                {
                  [v23 deleteBundleId];
                }
              }
            }
          }

          __break(1u);
LABEL_28:
          __break(1u);
LABEL_29:
          __break(1u);
LABEL_30:
          __break(1u);
          return;
        }
      }
    }
  }
}

void sub_1A9C94DC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_127();
  v15 = v14;
  OUTLINED_FUNCTION_71();
  sub_1A9C8B650();
  OUTLINED_FUNCTION_83();
  v38 = v16;
  v39 = v15;
  v36 = v13;
  v37 = v11;
  v35 = v9;
  while (1)
  {
LABEL_2:
    if (v12 == v10)
    {
      OUTLINED_FUNCTION_58();
      return;
    }

    if (v11)
    {
      v17 = MEMORY[0x1AC590720](v12, a9);
    }

    else
    {
      if (v12 >= *(v13 + 16))
      {
        goto LABEL_26;
      }

      v17 = *(v9 + 8 * v12);
    }

    v18 = v17;
    if (__OFADD__(v12++, 1))
    {
      break;
    }

    v20 = [v17 outcome];
    if (v20)
    {
      v21 = v20;
      v40 = v18;
      v22 = [v20 *v15];

      if (v22)
      {
        v23 = sub_1A9CAE468(v22);
        if (v23)
        {
          v24 = v23;
          v25 = sub_1A9C8B650();
          for (i = 0; ; ++i)
          {
            if (v25 == i)
            {

              v10 = v38;
              v15 = v39;
              v13 = v36;
              v11 = v37;
              v9 = v35;
              goto LABEL_2;
            }

            if ((v24 & 0xC000000000000001) != 0)
            {
              v27 = MEMORY[0x1AC590720](i, v24);
            }

            else
            {
              if (i >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_24;
              }

              v27 = *(v24 + 8 * i + 32);
            }

            v28 = v27;
            if (__OFADD__(i, 1))
            {
              break;
            }

            v29 = [v27 value];
            OUTLINED_FUNCTION_82();
            v32 = [v30 v31];

            v33 = [v32 typeIdentifier];
            v34 = [v33 custom];

            [v34 deleteBundleId];
          }

          __break(1u);
LABEL_24:
          __break(1u);
          break;
        }
      }
    }

    else
    {
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
}

void sub_1A9C94FDC(uint64_t a1)
{
  v2 = sub_1A9C8B650();
  v3 = 0;
  v4 = a1 & 0xC000000000000001;
  v5 = a1 & 0xFFFFFFFFFFFFFF8;
  v24 = a1;
  v6 = a1 + 32;
  v7 = &selRef_numberOfActionsBefore;
  v27 = a1 & 0xC000000000000001;
  v28 = v2;
  v25 = a1 + 32;
  v26 = a1 & 0xFFFFFFFFFFFFFF8;
LABEL_2:
  while (v3 != v2)
  {
    if (v4)
    {
      v8 = MEMORY[0x1AC590720](v3, v24);
    }

    else
    {
      if (v3 >= *(v5 + 16))
      {
        goto LABEL_30;
      }

      v8 = *(v6 + 8 * v3);
    }

    v9 = v8;
    if (__OFADD__(v3++, 1))
    {
      goto LABEL_29;
    }

    v11 = [v8 v7[113]];
    if (v11)
    {
      v12 = v11;
      v13 = [v11 valueDisambiguation];

      if (v13)
      {
        v29 = v9;
        v14 = sub_1A9CAE468(v13);
        if (v14)
        {
          v15 = v14;
          v16 = sub_1A9C8B650();
          for (i = 0; ; ++i)
          {
            if (v16 == i)
            {

              v4 = v27;
              v2 = v28;
              v6 = v25;
              v5 = v26;
              v7 = &selRef_numberOfActionsBefore;
              goto LABEL_2;
            }

            if ((v15 & 0xC000000000000001) != 0)
            {
              v18 = MEMORY[0x1AC590720](i, v15);
            }

            else
            {
              if (i >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_28;
              }

              v18 = *(v15 + 8 * i + 32);
            }

            v19 = v18;
            if (__OFADD__(i, 1))
            {
              break;
            }

            v20 = [v18 collection];
            if (v20)
            {
              v21 = v20;
              v22 = [v20 typeIdentifier];

              if (v22)
              {
                v23 = [v22 custom];

                if (v23)
                {
                  [v23 deleteBundleId];
                }
              }
            }
          }

          __break(1u);
LABEL_28:
          __break(1u);
LABEL_29:
          __break(1u);
LABEL_30:
          __break(1u);
          return;
        }
      }
    }
  }
}

void sub_1A9C95214(uint64_t a1, uint64_t (*a2)(void))
{
  a2();
  OUTLINED_FUNCTION_61();
  OUTLINED_FUNCTION_114();
  while (v2 != v3)
  {
    if (v5)
    {
      OUTLINED_FUNCTION_88();
    }

    else
    {
      if (v3 >= *(v6 + 16))
      {
        goto LABEL_11;
      }

      OUTLINED_FUNCTION_87();
    }

    OUTLINED_FUNCTION_65();
    if (v7)
    {
      __break(1u);
LABEL_11:
      __break(1u);
      return;
    }

    [v4 deleteToolId];

    ++v3;
  }
}

uint64_t sub_1A9C952F4(uint64_t a1)
{
  v2 = *(a1 + 16);
  type metadata accessor for SISchemaDeviceSensitivityState(0);
  v4 = v3;
  v5 = sub_1A9CAE5B8();
  v6 = MEMORY[0x1AC590530](v2, v4, v5);
  v12 = v6;
  v7 = *(a1 + 16);
  if (v7)
  {
    v8 = 32;
    do
    {
      sub_1A9CAE240(v11, *(a1 + v8));
      v8 += 4;
      --v7;
    }

    while (v7);

    return v12;
  }

  else
  {
    v9 = v6;
  }

  return v9;
}

uint64_t sub_1A9C9544C(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB400858, &qword_1AA737788);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AA736DD0;
  OUTLINED_FUNCTION_27();
  *(v5 + 32) = 0xD00000000000001ALL;
  *(v5 + 40) = v6;
  sub_1A9C952F4(a1);
  OUTLINED_FUNCTION_27();
  *(inited + 48) = v7;
  *(inited + 56) = 0xD000000000000016;
  *(inited + 64) = v8;
  *(inited + 72) = sub_1A9C952F4(a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB400850, &qword_1AA737780);
  return sub_1AA6519B4();
}

uint64_t sub_1A9C95534(uint64_t a1, uint64_t a2, void *a3)
{
  if ((sub_1A9CAE168(a2, a1) & 1) == 0 && (sub_1A9CAE168(a3, a1) & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_110([v3 eventMetadata]);

  return 1;
}

uint64_t static ASRSchemaASRClientEvent.sensitiveTagPaths.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB400840, &qword_1AA737770);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AA736DE0;
  *(inited + 32) = &unk_1F1DD2798;
  *(inited + 40) = sub_1A9C952F4(&unk_1F1DD27C0);
  *(inited + 48) = &unk_1F1DD27E8;
  *(inited + 56) = sub_1A9C952F4(&unk_1F1DD2810);
  *(inited + 64) = &unk_1F1DD2838;
  *(inited + 72) = sub_1A9C952F4(&unk_1F1DD2860);
  *(inited + 80) = &unk_1F1DD2888;
  *(inited + 88) = sub_1A9C952F4(&unk_1F1DD28B0);
  *(inited + 96) = &unk_1F1DD28D8;
  *(inited + 104) = sub_1A9C952F4(&unk_1F1DD2908);
  *(inited + 112) = &unk_1F1DD2930;
  *(inited + 120) = sub_1A9C952F4(&unk_1F1DD2968);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB400848, &qword_1AA737778);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB400850, &qword_1AA737780);
  sub_1A9CAE1C4();
  OUTLINED_FUNCTION_12_1();
  return sub_1AA6519B4();
}

uint64_t static ASRSchemaASRClientEvent.sensitiveKvcPaths.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB400858, &qword_1AA737788);
  inited = swift_initStackObject();
  v1 = OUTLINED_FUNCTION_21_0(inited, xmmword_1AA736DE0);
  OUTLINED_FUNCTION_51(v1, v2);
  sub_1A9C952F4(&unk_1F1DDF1D0);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_50(v3, v4);
  sub_1A9C952F4(&unk_1F1DDF1F8);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_49(v5, v6);
  sub_1A9C952F4(&unk_1F1DDF220);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_76(v7, v8);
  sub_1A9C952F4(&unk_1F1DDF248);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_91(v9, v10);
  sub_1A9C952F4(&unk_1F1DDF270);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_90(v11, v12);
  inited[10].n128_u64[1] = sub_1A9C952F4(&unk_1F1DDF298);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB400850, &qword_1AA737780);
  return sub_1AA6519B4();
}

Swift::Bool __swiftcall ASRSchemaASRClientEvent.deleteSensitiveField(tagPath:)(Swift::OpaquePointer tagPath)
{
  OUTLINED_FUNCTION_21();
  v7 = v6;
  if (sub_1A9CAE168(&unk_1F1DDC2D0, v6))
  {
    v8 = [v1 packageGenerated];
LABEL_9:
    v9 = v8;
    [v9 deleteLoggableSharedUserId];

    goto LABEL_10;
  }

  if (sub_1A9CAE168(&unk_1F1DDC2F8, v7))
  {
    v8 = [v1 intermediateUtteranceInfoTier1];
    goto LABEL_9;
  }

  if (sub_1A9CAE168(&unk_1F1DDC320, v7))
  {
    v8 = [v1 finalAudioPacketContainingSpeechReceived];
    goto LABEL_9;
  }

  if (sub_1A9CAE168(&unk_1F1DDC348, v7))
  {
    v8 = [v1 finalAudioPacketContainingSpeechReadyUpstream];
    goto LABEL_9;
  }

  if (sub_1A9CAE168(&unk_1F1DDC370, v7))
  {
    v11 = [v1 contextualEntityRetrievalContext];
    if (!v11)
    {
      goto LABEL_10;
    }

    v12 = v11;
    v13 = [v11 startedOrChanged];

    if (!v13 || !sub_1A9CAE468(v13))
    {
      goto LABEL_10;
    }

    sub_1A9C8B650();
    OUTLINED_FUNCTION_10_1();
    while (v13 != v2)
    {
      if (v4)
      {
        v16 = OUTLINED_FUNCTION_38();
        MEMORY[0x1AC590720](v16);
      }

      else
      {
        OUTLINED_FUNCTION_44();
        if (v14)
        {
          goto LABEL_40;
        }

        OUTLINED_FUNCTION_67();
      }

      OUTLINED_FUNCTION_37();
      if (v15)
      {
        __break(1u);
LABEL_40:
        __break(1u);
        goto LABEL_41;
      }

      [v3 deleteBundleId];

      ++v2;
    }
  }

  else
  {
    if ((sub_1A9CAE168(&unk_1F1DDC3A0, v7) & 1) == 0)
    {
      goto LABEL_10;
    }

    v17 = [v1 contextualEntityRetrievalContext];
    if (!v17)
    {
      goto LABEL_10;
    }

    v18 = v17;
    v19 = [v17 ended];

    if (!v19 || !sub_1A9CAE468(v19))
    {
      goto LABEL_10;
    }

    sub_1A9C8B650();
    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_78();
    while (v19 != v2)
    {
      if (v5)
      {
        v22 = OUTLINED_FUNCTION_38();
        MEMORY[0x1AC590720](v22);
      }

      else
      {
        OUTLINED_FUNCTION_116();
        if (v14)
        {
          goto LABEL_42;
        }

        OUTLINED_FUNCTION_67();
      }

      OUTLINED_FUNCTION_37();
      if (v15)
      {
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
        return result;
      }

      v20 = [v3 entityType];
      if (v20)
      {
        v21 = v20;
        [v20 deleteBundleId];
      }

      ++v2;
    }
  }

LABEL_10:
  OUTLINED_FUNCTION_20();
  return result;
}

uint64_t static CDASchemaCDAClientEvent.sensitiveTagPaths.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB400840, &qword_1AA737770);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AA736DF0;
  *(inited + 32) = &unk_1F1DD2990;
  *(inited + 40) = sub_1A9C952F4(&unk_1F1DD29B8);
  *(inited + 48) = &unk_1F1DD29E0;
  *(inited + 56) = sub_1A9C952F4(&unk_1F1DD2A10);
  *(inited + 64) = &unk_1F1DD2A38;
  *(inited + 72) = sub_1A9C952F4(&unk_1F1DD2A68);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB400848, &qword_1AA737778);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB400850, &qword_1AA737780);
  sub_1A9CAE1C4();
  OUTLINED_FUNCTION_12_1();
  return sub_1AA6519B4();
}

uint64_t static CDASchemaCDAClientEvent.sensitiveKvcPaths.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB400858, &qword_1AA737788);
  inited = swift_initStackObject();
  v1 = OUTLINED_FUNCTION_21_0(inited, xmmword_1AA736DF0);
  OUTLINED_FUNCTION_51(v1, v2);
  sub_1A9C952F4(&unk_1F1DDF2C0);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_50(v3, v4);
  sub_1A9C952F4(&unk_1F1DDF2E8);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_49(v5, v6);
  inited[6].n128_u64[0] = sub_1A9C952F4(&unk_1F1DDF310);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB400850, &qword_1AA737780);
  return sub_1AA6519B4();
}

Swift::Bool __swiftcall CDASchemaCDAClientEvent.deleteSensitiveField(tagPath:)(Swift::OpaquePointer tagPath)
{
  OUTLINED_FUNCTION_137();
  v6 = v5;
  if (sub_1A9CAE168(&unk_1F1DDC3D8, v5))
  {
    v7 = [v1 userFeedbackCompleted];
    [v7 deleteExpectedWinnerSiriSpeechId];
  }

  else
  {
    if (sub_1A9CAE168(&unk_1F1DDC400, v6))
    {
      v8 = [v1 userFeedbackParticipantCollectionReported];
      if (!v8 || !sub_1A9CAE468(v8))
      {
        goto LABEL_26;
      }

      sub_1A9C8B650();
      OUTLINED_FUNCTION_10_1();
      while (v1 != v2)
      {
        if (v4)
        {
          v12 = OUTLINED_FUNCTION_38();
          MEMORY[0x1AC590720](v12);
        }

        else
        {
          OUTLINED_FUNCTION_44();
          if (v10)
          {
            goto LABEL_29;
          }

          OUTLINED_FUNCTION_67();
        }

        OUTLINED_FUNCTION_37();
        if (v11)
        {
          __break(1u);
LABEL_29:
          __break(1u);
          goto LABEL_30;
        }

        [v3 deleteSiriSpeechId];

        ++v2;
      }
    }

    else
    {
      if ((sub_1A9CAE168(&unk_1F1DDC430, v6) & 1) == 0)
      {
        goto LABEL_26;
      }

      v13 = [v1 userFeedbackParticipantCollectionReported];
      if (!v13 || !sub_1A9CAE468(v13))
      {
        goto LABEL_26;
      }

      sub_1A9C8B650();
      OUTLINED_FUNCTION_10_1();
      while (v1 != v2)
      {
        if (v4)
        {
          v14 = OUTLINED_FUNCTION_38();
          MEMORY[0x1AC590720](v14);
        }

        else
        {
          OUTLINED_FUNCTION_44();
          if (v10)
          {
            goto LABEL_31;
          }

          OUTLINED_FUNCTION_67();
        }

        OUTLINED_FUNCTION_37();
        if (v11)
        {
LABEL_30:
          __break(1u);
LABEL_31:
          __break(1u);
          return result;
        }

        [v3 deleteHalTargetSiriSpeechId];

        ++v2;
      }
    }
  }

LABEL_26:
  OUTLINED_FUNCTION_135();
  return result;
}

uint64_t static CNVSchemaCNVClientEvent.sensitiveKvcPaths.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB400858, &qword_1AA737788);
  inited = swift_initStackObject();
  v1 = OUTLINED_FUNCTION_21_0(inited, xmmword_1AA736E00);
  OUTLINED_FUNCTION_55(v1, v2);
  inited[3].n128_u64[0] = sub_1A9C952F4(&unk_1F1DDF338);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB400850, &qword_1AA737780);
  return sub_1AA6519B4();
}

Swift::Bool __swiftcall CNVSchemaCNVClientEvent.deleteSensitiveField(tagPath:)(Swift::OpaquePointer tagPath)
{
  OUTLINED_FUNCTION_137();
  if ((OUTLINED_FUNCTION_84(&unk_1F1DDC460, v6) & 1) != 0 && (v7 = [v1 actionCandidatesGeneratedTier1]) != 0 && (v8 = sub_1A9CAE468(v7)) != 0)
  {
    v9 = v8;
    sub_1A9C8B650();
    OUTLINED_FUNCTION_113();
    while (1)
    {
      if (v2 == v3)
      {

        goto LABEL_13;
      }

      if (v5)
      {
        v14 = OUTLINED_FUNCTION_124();
        MEMORY[0x1AC590720](v14);
      }

      else
      {
        OUTLINED_FUNCTION_115();
        if (v11)
        {
          goto LABEL_15;
        }

        v12 = *(v9 + 8 * v3 + 32);
      }

      OUTLINED_FUNCTION_1_3();
      if (v13)
      {
        break;
      }

      [v4 deleteAppBundleId];

      ++v3;
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }

  else
  {
LABEL_13:
    OUTLINED_FUNCTION_135();
  }

  return result;
}

uint64_t static SISchemaClientEvent.sensitiveTagPaths.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB400840, &qword_1AA737770);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AA736E10;
  *(inited + 32) = &unk_1F1DD1E50;
  *(inited + 40) = sub_1A9C952F4(&unk_1F1DD1E78);
  *(inited + 48) = &unk_1F1DD1EA0;
  *(inited + 56) = sub_1A9C952F4(&unk_1F1DD1EC8);
  *(inited + 64) = &unk_1F1DD1EF0;
  *(inited + 72) = sub_1A9C952F4(&unk_1F1DD1F18);
  *(inited + 80) = &unk_1F1DD1F40;
  *(inited + 88) = sub_1A9C952F4(&unk_1F1DD1F70);
  *(inited + 96) = &unk_1F1DD1F98;
  *(inited + 104) = sub_1A9C952F4(&unk_1F1DD1FC0);
  *(inited + 112) = &unk_1F1DD1FE8;
  *(inited + 120) = sub_1A9C952F4(&unk_1F1DD2010);
  *(inited + 128) = &unk_1F1DD2038;
  *(inited + 136) = sub_1A9C952F4(&unk_1F1DD2060);
  *(inited + 144) = &unk_1F1DD2088;
  *(inited + 152) = sub_1A9C952F4(&unk_1F1DD20B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB400848, &qword_1AA737778);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB400850, &qword_1AA737780);
  sub_1A9CAE1C4();
  OUTLINED_FUNCTION_12_1();
  return sub_1AA6519B4();
}

uint64_t static SISchemaClientEvent.sensitiveKvcPaths.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB400858, &qword_1AA737788);
  inited = swift_initStackObject();
  v1 = OUTLINED_FUNCTION_21_0(inited, xmmword_1AA736E10);
  OUTLINED_FUNCTION_51(v1, v2);
  sub_1A9C952F4(&unk_1F1DDF360);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_50(v3, v4);
  sub_1A9C952F4(&unk_1F1DDF388);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_49(v5, v6);
  sub_1A9C952F4(&unk_1F1DDF3B0);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_76(v7, v8);
  sub_1A9C952F4(&unk_1F1DDF3D8);
  OUTLINED_FUNCTION_27();
  inited[7].n128_u64[1] = v9;
  inited[8].n128_u64[0] = 26;
  inited[8].n128_u64[1] = v10;
  sub_1A9C952F4(&unk_1F1DDF400);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_90(v11, v12);
  sub_1A9C952F4(&unk_1F1DDF428);
  OUTLINED_FUNCTION_27();
  inited[10].n128_u64[1] = v13;
  inited[11].n128_u64[0] = 30;
  inited[11].n128_u64[1] = v14;
  inited[12].n128_u64[0] = sub_1A9C952F4(&unk_1F1DDF450);
  strcpy(&inited[12].n128_i8[8], "uufrSelected");
  inited[13].n128_u8[5] = 0;
  inited[13].n128_u16[3] = -5120;
  inited[13].n128_u64[1] = sub_1A9C952F4(&unk_1F1DDF478);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB400850, &qword_1AA737780);
  return sub_1AA6519B4();
}

Swift::Bool __swiftcall SISchemaClientEvent.deleteSensitiveField(tagPath:)(Swift::OpaquePointer tagPath)
{
  if (sub_1A9CAE168(&unk_1F1DDBDE8, tagPath._rawValue))
  {
    v3 = [v1 eventMetadata];
LABEL_5:
    v4 = v3;
    [v4 deleteSiriDeviceID];
LABEL_6:

    return 1;
  }

  if (sub_1A9CAE168(&unk_1F1DDBE10, tagPath._rawValue))
  {
    v3 = [v1 deviceFixedContext];
    goto LABEL_5;
  }

  if (sub_1A9CAE168(&unk_1F1DDBE38, tagPath._rawValue))
  {
    v4 = [v1 deviceFixedContext];
    [v4 deleteSpeechID];
    goto LABEL_6;
  }

  if (sub_1A9CAE168(&unk_1F1DDBE60, tagPath._rawValue))
  {
    v6 = [v1 invocation];
    v7 = [v6 typeToSiriContext];

    [v7 deleteBackgroundAppBundleId];
    return 1;
  }

  if (sub_1A9CAE168(&unk_1F1DDBE90, tagPath._rawValue))
  {
    v8 = [v1 uufrShown];
LABEL_16:
    v4 = v8;
    [v4 deleteDialogIdentifier];
    goto LABEL_6;
  }

  if (sub_1A9CAE168(&unk_1F1DDBEB8, tagPath._rawValue))
  {
    v8 = [v1 uufrSaid];
    goto LABEL_16;
  }

  if (sub_1A9CAE168(&unk_1F1DDBEE0, tagPath._rawValue))
  {
    v4 = [v1 ueiUUFRReady];
    [v4 deleteDialogIdentifiers];
    goto LABEL_6;
  }

  if (sub_1A9CAE168(&unk_1F1DDBF08, tagPath._rawValue))
  {
    [v1 deleteUufrSelected];
    return 1;
  }

  return 0;
}

uint64_t static DIMSchemaDIMClientEvent.sensitiveKvcPaths.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB400858, &qword_1AA737788);
  inited = swift_initStackObject();
  v1 = OUTLINED_FUNCTION_21_0(inited, xmmword_1AA736E00);
  OUTLINED_FUNCTION_55(v1, v2);
  inited[3].n128_u64[0] = sub_1A9C952F4(&unk_1F1DDF4A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB400850, &qword_1AA737780);
  return sub_1AA6519B4();
}

Swift::Bool __swiftcall DIMSchemaDIMClientEvent.deleteSensitiveField(tagPath:)(Swift::OpaquePointer tagPath)
{
  if (OUTLINED_FUNCTION_84(&unk_1F1DDC490, tagPath._rawValue))
  {
    [v2 deleteSiriAccountInformation];
  }

  return v1 & 1;
}

uint64_t static DUSchemaDUEvent.sensitiveKvcPaths.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB400858, &qword_1AA737788);
  inited = swift_initStackObject();
  v1 = OUTLINED_FUNCTION_21_0(inited, xmmword_1AA736DD0);
  OUTLINED_FUNCTION_51(v1, v2);
  sub_1A9C952F4(&unk_1F1DDF4C8);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_50(v3, v4);
  inited[4].n128_u64[1] = sub_1A9C952F4(&unk_1F1DDF4F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB400850, &qword_1AA737780);
  return sub_1AA6519B4();
}

Swift::Bool __swiftcall DUSchemaDUEvent.deleteSensitiveField(tagPath:)(Swift::OpaquePointer tagPath)
{
  if ((sub_1A9CAE168(&unk_1F1DDBD00, tagPath._rawValue) & 1) == 0 && (sub_1A9CAE168(&unk_1F1DDBD28, tagPath._rawValue) & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_110([v1 speechAudioRecord]);

  return 1;
}

uint64_t static SISchemaDailyDeviceStatus.sensitiveTagPaths.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB400840, &qword_1AA737770);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AA736DF0;
  *(inited + 32) = &unk_1F1DDAAB8;
  *(inited + 40) = sub_1A9C952F4(&unk_1F1DDAAE0);
  *(inited + 48) = &unk_1F1DDAB08;
  *(inited + 56) = sub_1A9C952F4(&unk_1F1DDAB30);
  *(inited + 64) = &unk_1F1DDAB58;
  *(inited + 72) = sub_1A9C952F4(&unk_1F1DDAB80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB400848, &qword_1AA737778);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB400850, &qword_1AA737780);
  sub_1A9CAE1C4();
  OUTLINED_FUNCTION_12_1();
  return sub_1AA6519B4();
}

uint64_t static SISchemaDailyDeviceStatus.sensitiveKvcPaths.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB400858, &qword_1AA737788);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AA736DF0;
  strcpy((inited + 32), "siriDeviceID");
  *(inited + 45) = 0;
  *(inited + 46) = -5120;
  *(inited + 48) = sub_1A9C952F4(&unk_1F1DDF518);
  strcpy((inited + 56), "siriSpeechID");
  *(inited + 69) = 0;
  *(inited + 70) = -5120;
  *(inited + 72) = sub_1A9C952F4(&unk_1F1DDF540);
  strcpy((inited + 80), "sharedUserId");
  *(inited + 93) = 0;
  *(inited + 94) = -5120;
  *(inited + 96) = sub_1A9C952F4(&unk_1F1DDF568);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB400850, &qword_1AA737780);
  return sub_1AA6519B4();
}

Swift::Bool __swiftcall SISchemaDailyDeviceStatus.deleteSensitiveField(tagPath:)(Swift::OpaquePointer tagPath)
{
  if ((sub_1A9CAE168(&unk_1F1DDC680, tagPath._rawValue) & 1) == 0 && (sub_1A9CAE168(&unk_1F1DDC6A8, tagPath._rawValue) & 1) == 0 && (sub_1A9CAE168(&unk_1F1DDC6D0, tagPath._rawValue) & 1) == 0)
  {
    return 0;
  }

  v2 = OUTLINED_FUNCTION_98();
  [v2 v3];
  return 1;
}

uint64_t static ExecutorSiriSchemaExecutorClientEvent.sensitiveKvcPaths.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB400858, &qword_1AA737788);
  inited = swift_initStackObject();
  v1 = OUTLINED_FUNCTION_21_0(inited, xmmword_1AA736DD0);
  OUTLINED_FUNCTION_51(v1, v2);
  sub_1A9C952F4(&unk_1F1DDF590);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_50(v3, v4);
  inited[4].n128_u64[1] = sub_1A9C952F4(&unk_1F1DDF5B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB400850, &qword_1AA737780);
  return sub_1AA6519B4();
}

Swift::Bool __swiftcall ExecutorSiriSchemaExecutorClientEvent.deleteSensitiveField(tagPath:)(Swift::OpaquePointer tagPath)
{
  if (sub_1A9CAE168(&unk_1F1DDBCA0, tagPath._rawValue))
  {
    v3 = &selRef_deleteFollowUpActionBundleId;
    v4 = &selRef_success;
LABEL_5:
    v5 = [v1 executorRequestContext];
    v6 = [v5 ended];

    v7 = [v6 *v4];
    [v7 *v3];

    return 1;
  }

  if (sub_1A9CAE168(&unk_1F1DDBCD0, tagPath._rawValue))
  {
    v3 = &selRef_deleteAssistantSchemaKind;
    v4 = &selRef_toolDisambiguation;
    goto LABEL_5;
  }

  return 0;
}

uint64_t static FLOWSchemaFLOWClientEvent.sensitiveTagPaths.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB400840, &qword_1AA737770);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AA736DF0;
  *(inited + 32) = &unk_1F1DDA858;
  *(inited + 40) = sub_1A9C952F4(&unk_1F1DDA888);
  *(inited + 48) = &unk_1F1DDA8B0;
  *(inited + 56) = sub_1A9C952F4(&unk_1F1DDA8D8);
  *(inited + 64) = &unk_1F1DDA900;
  *(inited + 72) = sub_1A9C952F4(&unk_1F1DDA930);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB400848, &qword_1AA737778);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB400850, &qword_1AA737780);
  sub_1A9CAE1C4();
  OUTLINED_FUNCTION_12_1();
  return sub_1AA6519B4();
}

uint64_t static FLOWSchemaFLOWClientEvent.sensitiveKvcPaths.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB400858, &qword_1AA737788);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AA736DF0;
  OUTLINED_FUNCTION_27();
  *(v1 + 32) = 0xD000000000000046;
  *(v1 + 40) = v2;
  v3 = sub_1A9C952F4(&unk_1F1DDF5E0);
  OUTLINED_FUNCTION_26(v3, "smsAttachmentMetadataTier1.foregroundAppBundleId");
  sub_1A9C952F4(&unk_1F1DDF608);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_49(v4, v5);
  *(inited + 96) = sub_1A9C952F4(&unk_1F1DDF630);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB400850, &qword_1AA737780);
  return sub_1AA6519B4();
}

Swift::Bool __swiftcall FLOWSchemaFLOWClientEvent.deleteSensitiveField(tagPath:)(Swift::OpaquePointer tagPath)
{
  OUTLINED_FUNCTION_21();
  v6 = v5;
  if ((sub_1A9CAE168(&unk_1F1DDC538, v5) & 1) == 0)
  {
    if (sub_1A9CAE168(&unk_1F1DDC568, v6))
    {
      v14 = [v1 smsAttachmentMetadataTier1];
      [v14 deleteForegroundAppBundleId];
    }

    else
    {
      if ((sub_1A9CAE168(&unk_1F1DDC590, v6) & 1) == 0)
      {
        goto LABEL_20;
      }

      v15 = [v1 flowDomainExecutionContext];
      v16 = [v15 startedOrChanged];

      v14 = [v16 domainExecutionMetadata];
      [v14 deleteDomainExecutionAppIntentBundleID];
    }

LABEL_20:
    OUTLINED_FUNCTION_20();
    return result;
  }

  v7 = [v1 flowStep];
  if (!v7 || !sub_1A9CAE468(v7))
  {
    goto LABEL_20;
  }

  sub_1A9C8B650();
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_78();
  while (1)
  {
    if (v1 == v2)
    {

      goto LABEL_20;
    }

    if (v4)
    {
      v13 = OUTLINED_FUNCTION_38();
      MEMORY[0x1AC590720](v13);
    }

    else
    {
      OUTLINED_FUNCTION_116();
      if (v9)
      {
        goto LABEL_23;
      }

      OUTLINED_FUNCTION_67();
    }

    OUTLINED_FUNCTION_37();
    if (v10)
    {
      break;
    }

    v11 = [v3 informationPluginContext];
    if (v11)
    {
      v12 = v11;
      [v11 deleteExecutedPegasusDomain];
    }

    ++v2;
  }

  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

uint64_t static FLOWLINKSchemaFLOWLINKClientEvent.sensitiveKvcPaths.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB400858, &qword_1AA737788);
  inited = swift_initStackObject();
  v1 = OUTLINED_FUNCTION_21_0(inited, xmmword_1AA736E00);
  OUTLINED_FUNCTION_55(v1, v2);
  inited[3].n128_u64[0] = sub_1A9C952F4(&unk_1F1DDF658);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB400850, &qword_1AA737780);
  return sub_1AA6519B4();
}

uint64_t static FLOWSchemaFLOWServerEvent.sensitiveKvcPaths.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB400858, &qword_1AA737788);
  inited = swift_initStackObject();
  v1 = OUTLINED_FUNCTION_21_0(inited, xmmword_1AA736E00);
  OUTLINED_FUNCTION_55(v1, v2);
  inited[3].n128_u64[0] = sub_1A9C952F4(&unk_1F1DDF680);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB400850, &qword_1AA737780);
  return sub_1AA6519B4();
}

Swift::Bool __swiftcall FLOWSchemaFLOWServerEvent.deleteSensitiveField(tagPath:)(Swift::OpaquePointer tagPath)
{
  OUTLINED_FUNCTION_21();
  if ((OUTLINED_FUNCTION_84(&unk_1F1DDC5C0, v5) & 1) != 0 && (v6 = [v1 flowStep]) != 0 && (v7 = sub_1A9CAE468(v6)) != 0)
  {
    v8 = v7;
    v9 = sub_1A9C8B650();
    v10 = 0;
    OUTLINED_FUNCTION_114();
    while (1)
    {
      if (v9 == v10)
      {

        goto LABEL_15;
      }

      if (v3)
      {
        v16 = OUTLINED_FUNCTION_124();
        MEMORY[0x1AC590720](v16);
      }

      else
      {
        if (v10 >= *(v4 + 16))
        {
          goto LABEL_17;
        }

        v12 = *(v8 + 8 * v10 + 32);
      }

      OUTLINED_FUNCTION_1_3();
      if (v13)
      {
        break;
      }

      v14 = [v2 informationPluginContext];
      if (v14)
      {
        v15 = v14;
        [v14 deleteExecutedPegasusDomain];
      }

      ++v10;
    }

    __break(1u);
LABEL_17:
    __break(1u);
  }

  else
  {
LABEL_15:
    OUTLINED_FUNCTION_20();
  }

  return result;
}

uint64_t static GRPSchemaGroupedMessagesClientEvent.sensitiveTagPaths.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB400840, &qword_1AA737770);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AA736E20;
  *(inited + 32) = &unk_1F1DDAF48;
  *(inited + 40) = sub_1A9C952F4(&unk_1F1DDAF80);
  *(inited + 48) = &unk_1F1DDAFA8;
  *(inited + 56) = sub_1A9C952F4(&unk_1F1DDAFE0);
  *(inited + 64) = &unk_1F1DDB008;
  *(inited + 72) = sub_1A9C952F4(&unk_1F1DDB040);
  *(inited + 80) = &unk_1F1DDB068;
  *(inited + 88) = sub_1A9C952F4(&unk_1F1DDB0A0);
  *(inited + 96) = &unk_1F1DDB0C8;
  *(inited + 104) = sub_1A9C952F4(&unk_1F1DDB100);
  *(inited + 112) = &unk_1F1DDB128;
  *(inited + 120) = sub_1A9C952F4(&unk_1F1DDB160);
  *(inited + 128) = &unk_1F1DDB188;
  *(inited + 136) = sub_1A9C952F4(&unk_1F1DDB1C0);
  *(inited + 144) = &unk_1F1DDB1E8;
  *(inited + 152) = sub_1A9C952F4(&unk_1F1DDB218);
  *(inited + 160) = &unk_1F1DDB240;
  *(inited + 168) = sub_1A9C952F4(&unk_1F1DDB280);
  *(inited + 176) = &unk_1F1DDB2A8;
  *(inited + 184) = sub_1A9C952F4(&unk_1F1DDB2E0);
  *(inited + 192) = &unk_1F1DDB308;
  *(inited + 200) = sub_1A9C952F4(&unk_1F1DDB348);
  *(inited + 208) = &unk_1F1DDB370;
  *(inited + 216) = sub_1A9C952F4(&unk_1F1DDB3A0);
  *(inited + 224) = &unk_1F1DDB3C8;
  *(inited + 232) = sub_1A9C952F4(&unk_1F1DDB400);
  *(inited + 240) = &unk_1F1DDB428;
  *(inited + 248) = sub_1A9C952F4(&unk_1F1DDB468);
  *(inited + 256) = &unk_1F1DDB490;
  *(inited + 264) = sub_1A9C952F4(&unk_1F1DDB4C8);
  *(inited + 272) = &unk_1F1DDB4F0;
  *(inited + 280) = sub_1A9C952F4(&unk_1F1DDB530);
  *(inited + 288) = &unk_1F1DDB558;
  *(inited + 296) = sub_1A9C952F4(&unk_1F1DDB590);
  *(inited + 304) = &unk_1F1DDB5B8;
  *(inited + 312) = sub_1A9C952F4(&unk_1F1DDB5F0);
  *(inited + 320) = &unk_1F1DDB618;
  *(inited + 328) = sub_1A9C952F4(&unk_1F1DDB650);
  *(inited + 336) = &unk_1F1DDB678;
  *(inited + 344) = sub_1A9C952F4(&unk_1F1DDB6B0);
  *(inited + 352) = &unk_1F1DDB6D8;
  *(inited + 360) = sub_1A9C952F4(&unk_1F1DDB718);
  *(inited + 368) = &unk_1F1DDB740;
  *(inited + 376) = sub_1A9C952F4(&unk_1F1DDB780);
  *(inited + 384) = &unk_1F1DDB7A8;
  *(inited + 392) = sub_1A9C952F4(&unk_1F1DDB7E0);
  *(inited + 400) = &unk_1F1DDB808;
  *(inited + 408) = sub_1A9C952F4(&unk_1F1DDB840);
  *(inited + 416) = &unk_1F1DDB868;
  *(inited + 424) = sub_1A9C952F4(&unk_1F1DDB8A0);
  *(inited + 432) = &unk_1F1DDB8C8;
  *(inited + 440) = sub_1A9C952F4(&unk_1F1DDB900);
  *(inited + 448) = &unk_1F1DDB928;
  *(inited + 456) = sub_1A9C952F4(&unk_1F1DDB968);
  *(inited + 464) = &unk_1F1DDB990;
  *(inited + 472) = sub_1A9C952F4(&unk_1F1DDB9C8);
  *(inited + 480) = &unk_1F1DDB9F0;
  *(inited + 488) = sub_1A9C952F4(&unk_1F1DDBA28);
  *(inited + 496) = &unk_1F1DDBA50;
  *(inited + 504) = sub_1A9C952F4(&unk_1F1DDBA88);
  *(inited + 512) = &unk_1F1DDBAB0;
  *(inited + 520) = sub_1A9C952F4(&unk_1F1DDBAE8);
  *(inited + 528) = &unk_1F1DDBB10;
  *(inited + 536) = sub_1A9C952F4(&unk_1F1DDBB40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB400848, &qword_1AA737778);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB400850, &qword_1AA737780);
  sub_1A9CAE1C4();
  OUTLINED_FUNCTION_12_1();
  return sub_1AA6519B4();
}

uint64_t static GRPSchemaGroupedMessagesClientEvent.sensitiveKvcPaths.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB400858, &qword_1AA737788);
  inited = swift_initStackObject();
  v1 = OUTLINED_FUNCTION_21_0(inited, xmmword_1AA736E20);
  OUTLINED_FUNCTION_51(v1, v2);
  sub_1A9C952F4(&unk_1F1DDF6A8);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_50(v3, v4);
  sub_1A9C952F4(&unk_1F1DDF6D0);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_49(v5, v6);
  sub_1A9C952F4(&unk_1F1DDF6F8);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_76(v7, v8);
  sub_1A9C952F4(&unk_1F1DDF720);
  OUTLINED_FUNCTION_27();
  inited[7].n128_u64[1] = v9;
  inited[8].n128_u64[0] = 76;
  inited[8].n128_u64[1] = v10;
  sub_1A9C952F4(&unk_1F1DDF748);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_90(v11, v12);
  sub_1A9C952F4(&unk_1F1DDF770);
  OUTLINED_FUNCTION_27();
  inited[10].n128_u64[1] = v13;
  inited[11].n128_u64[0] = 80;
  inited[11].n128_u64[1] = v14;
  sub_1A9C952F4(&unk_1F1DDF798);
  OUTLINED_FUNCTION_27();
  inited[12].n128_u64[0] = v15;
  inited[12].n128_u64[1] = 62;
  inited[13].n128_u64[0] = v16;
  sub_1A9C952F4(&unk_1F1DDF7C0);
  OUTLINED_FUNCTION_27();
  inited[13].n128_u64[1] = v17;
  inited[14].n128_u64[0] = 121;
  inited[14].n128_u64[1] = v18;
  sub_1A9C952F4(&unk_1F1DDF7E8);
  OUTLINED_FUNCTION_27();
  inited[15].n128_u64[0] = v19;
  inited[15].n128_u64[1] = 99;
  inited[16].n128_u64[0] = v20;
  sub_1A9C952F4(&unk_1F1DDF810);
  OUTLINED_FUNCTION_27();
  inited[16].n128_u64[1] = v21;
  inited[17].n128_u64[0] = 151;
  inited[17].n128_u64[1] = v22;
  sub_1A9C952F4(&unk_1F1DDF838);
  OUTLINED_FUNCTION_27();
  inited[18].n128_u64[0] = v23;
  inited[18].n128_u64[1] = 72;
  inited[19].n128_u64[0] = v24;
  sub_1A9C952F4(&unk_1F1DDF860);
  OUTLINED_FUNCTION_27();
  inited[19].n128_u64[1] = v25;
  inited[20].n128_u64[0] = 105;
  inited[20].n128_u64[1] = v26;
  sub_1A9C952F4(&unk_1F1DDF888);
  OUTLINED_FUNCTION_27();
  inited[21].n128_u64[0] = v27;
  inited[21].n128_u64[1] = 105;
  inited[22].n128_u64[0] = v28;
  sub_1A9C952F4(&unk_1F1DDF8B0);
  OUTLINED_FUNCTION_27();
  inited[22].n128_u64[1] = v29;
  inited[23].n128_u64[0] = 94;
  inited[23].n128_u64[1] = v30;
  sub_1A9C952F4(&unk_1F1DDF8D8);
  OUTLINED_FUNCTION_27();
  inited[24].n128_u64[0] = v31;
  inited[24].n128_u64[1] = 108;
  inited[25].n128_u64[0] = v32;
  sub_1A9C952F4(&unk_1F1DDF900);
  OUTLINED_FUNCTION_27();
  inited[25].n128_u64[1] = v33;
  inited[26].n128_u64[0] = 87;
  inited[26].n128_u64[1] = v34;
  sub_1A9C952F4(&unk_1F1DDF928);
  OUTLINED_FUNCTION_27();
  inited[27].n128_u64[0] = v35;
  inited[27].n128_u64[1] = 101;
  inited[28].n128_u64[0] = v36;
  sub_1A9C952F4(&unk_1F1DDF950);
  OUTLINED_FUNCTION_27();
  inited[28].n128_u64[1] = v37;
  inited[29].n128_u64[0] = 111;
  inited[29].n128_u64[1] = v38;
  sub_1A9C952F4(&unk_1F1DDF978);
  OUTLINED_FUNCTION_27();
  inited[30].n128_u64[0] = v39;
  inited[30].n128_u64[1] = 116;
  inited[31].n128_u64[0] = v40;
  sub_1A9C952F4(&unk_1F1DDF9A0);
  OUTLINED_FUNCTION_27();
  inited[31].n128_u64[1] = v41;
  inited[32].n128_u64[0] = 128;
  inited[32].n128_u64[1] = v42;
  inited[33].n128_u64[0] = sub_1A9C952F4(&unk_1F1DDF9C8);
  OUTLINED_FUNCTION_27();
  inited[33].n128_u64[1] = 130;
  inited[34].n128_u64[0] = v43;
  inited[34].n128_u64[1] = sub_1A9C952F4(&unk_1F1DDF9F0);
  OUTLINED_FUNCTION_27();
  inited[35].n128_u64[0] = 126;
  inited[35].n128_u64[1] = v44;
  inited[36].n128_u64[0] = sub_1A9C952F4(&unk_1F1DDFA18);
  OUTLINED_FUNCTION_27();
  inited[36].n128_u64[1] = 91;
  inited[37].n128_u64[0] = v45;
  inited[37].n128_u64[1] = sub_1A9C952F4(&unk_1F1DDFA40);
  OUTLINED_FUNCTION_27();
  inited[38].n128_u64[0] = 87;
  inited[38].n128_u64[1] = v46;
  inited[39].n128_u64[0] = sub_1A9C952F4(&unk_1F1DDFA68);
  OUTLINED_FUNCTION_27();
  inited[39].n128_u64[1] = 107;
  inited[40].n128_u64[0] = v47;
  inited[40].n128_u64[1] = sub_1A9C952F4(&unk_1F1DDFA90);
  OUTLINED_FUNCTION_27();
  inited[41].n128_u64[0] = 101;
  inited[41].n128_u64[1] = v48;
  inited[42].n128_u64[0] = sub_1A9C952F4(&unk_1F1DDFAB8);
  OUTLINED_FUNCTION_27();
  inited[42].n128_u64[1] = 98;
  inited[43].n128_u64[0] = v49;
  inited[43].n128_u64[1] = sub_1A9C952F4(&unk_1F1DDFAE0);
  OUTLINED_FUNCTION_27();
  inited[44].n128_u64[0] = 129;
  inited[44].n128_u64[1] = v50;
  inited[45].n128_u64[0] = sub_1A9C952F4(&unk_1F1DDFB08);
  OUTLINED_FUNCTION_27();
  inited[45].n128_u64[1] = 138;
  inited[46].n128_u64[0] = v51;
  inited[46].n128_u64[1] = sub_1A9C952F4(&unk_1F1DDFB30);
  OUTLINED_FUNCTION_27();
  inited[47].n128_u64[0] = 82;
  inited[47].n128_u64[1] = v52;
  inited[48].n128_u64[0] = sub_1A9C952F4(&unk_1F1DDFB58);
  OUTLINED_FUNCTION_27();
  inited[48].n128_u64[1] = 74;
  inited[49].n128_u64[0] = v53;
  inited[49].n128_u64[1] = sub_1A9C952F4(&unk_1F1DDFB80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB400850, &qword_1AA737780);
  return sub_1AA6519B4();
}

Swift::Bool __swiftcall GRPSchemaGroupedMessagesClientEvent.deleteSensitiveField(tagPath:)(Swift::OpaquePointer tagPath)
{
  OUTLINED_FUNCTION_21();
  v9 = v8;
  if (sub_1A9CAE168(&unk_1F1DDC8E0, v8))
  {
    v10 = sub_1A9C8B5AC(v1);
    if (v10)
    {
      v9 = v10;
      sub_1A9C8B650();
      OUTLINED_FUNCTION_13_0();
      while (v1 != v2)
      {
        if (v7)
        {
          v14 = OUTLINED_FUNCTION_38();
          MEMORY[0x1AC590720](v14);
        }

        else
        {
          OUTLINED_FUNCTION_47();
          if (v11)
          {
            goto LABEL_109;
          }

          OUTLINED_FUNCTION_67();
        }

        OUTLINED_FUNCTION_37();
        if (v12)
        {
          __break(1u);
LABEL_109:
          __break(1u);
          goto LABEL_110;
        }

        v13 = [v3 siriEventTypeUnion];
        if (v13)
        {
          v4 = OUTLINED_FUNCTION_104(v13);

          if (v4)
          {
            v5 = [v4 eventMetadata];

            if (v5)
            {
              [v5 deleteSiriDeviceID];
            }
          }
        }

        ++v2;
      }

      goto LABEL_381;
    }
  }

  else if (sub_1A9CAE168(&unk_1F1DDC918, v9))
  {
    v15 = sub_1A9C8B5AC(v1);
    if (v15)
    {
      v9 = v15;
      sub_1A9C8B650();
      OUTLINED_FUNCTION_13_0();
      v6 = 0x1FC243000;
      while (v1 != v2)
      {
        if (v7)
        {
          v17 = OUTLINED_FUNCTION_38();
          MEMORY[0x1AC590720](v17);
        }

        else
        {
          OUTLINED_FUNCTION_47();
          if (v11)
          {
            goto LABEL_136;
          }

          OUTLINED_FUNCTION_67();
        }

        OUTLINED_FUNCTION_37();
        if (v12)
        {
          __break(1u);
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        v16 = [v3 siriEventTypeUnion];
        if (v16)
        {
          v4 = OUTLINED_FUNCTION_104(v16);

          if (v4)
          {
            v5 = [v4 deviceFixedContext];

            if (v5)
            {
              [v5 deleteSiriDeviceID];
            }
          }
        }

        ++v2;
      }

      goto LABEL_381;
    }
  }

  else if (sub_1A9CAE168(&unk_1F1DDC950, v9))
  {
    if (sub_1A9C8B5AC(v1))
    {
      sub_1A9C8B650();
      OUTLINED_FUNCTION_13_0();
      while (v1 != v2)
      {
        if (v7)
        {
          v20 = OUTLINED_FUNCTION_38();
          MEMORY[0x1AC590720](v20);
        }

        else
        {
          OUTLINED_FUNCTION_47();
          if (v11)
          {
            goto LABEL_152;
          }

          OUTLINED_FUNCTION_67();
        }

        OUTLINED_FUNCTION_37();
        if (v12)
        {
          __break(1u);
LABEL_152:
          __break(1u);
          goto LABEL_381;
        }

        v18 = [v3 siriEventTypeUnion];
        if (v18)
        {
          v19 = OUTLINED_FUNCTION_104(v18);

          if (v19)
          {
            v5 = [v19 deviceFixedContext];

            if (v5)
            {
              [v5 deleteSpeechID];
            }
          }
        }

        ++v2;
      }

      goto LABEL_381;
    }
  }

  else if (sub_1A9CAE168(&unk_1F1DDC988, v9))
  {
    v21 = sub_1A9C8B5AC(v1);
    if (v21)
    {
      v9 = v21;
      sub_1A9C8B650();
      OUTLINED_FUNCTION_13_0();
      v6 = &selRef_dataSourceIndex;
      while (v1 != v2)
      {
        if (v7)
        {
          v24 = OUTLINED_FUNCTION_38();
          MEMORY[0x1AC590720](v24);
        }

        else
        {
          OUTLINED_FUNCTION_47();
          if (v11)
          {
            goto LABEL_165;
          }

          OUTLINED_FUNCTION_67();
        }

        OUTLINED_FUNCTION_37();
        if (v12)
        {
          __break(1u);
LABEL_165:
          __break(1u);
          goto LABEL_166;
        }

        v22 = [v3 siriEventTypeUnion];
        v23 = [v22 ueiClientEvent];

        v4 = [v23 invocation];
        v5 = [v4 typeToSiriContext];

        [v5 deleteBackgroundAppBundleId];
        ++v2;
      }

      goto LABEL_381;
    }
  }

  else if (sub_1A9CAE168(&unk_1F1DDC9C0, v9))
  {
    v25 = sub_1A9C8B5AC(v1);
    if (v25)
    {
      v9 = v25;
      sub_1A9C8B650();
      OUTLINED_FUNCTION_13_0();
      v6 = 0x1FC243000;
      while (v1 != v2)
      {
        if (v7)
        {
          v27 = OUTLINED_FUNCTION_38();
          MEMORY[0x1AC590720](v27);
        }

        else
        {
          OUTLINED_FUNCTION_47();
          if (v11)
          {
            goto LABEL_180;
          }

          OUTLINED_FUNCTION_67();
        }

        OUTLINED_FUNCTION_37();
        if (v12)
        {
          __break(1u);
LABEL_180:
          __break(1u);
          goto LABEL_181;
        }

        v26 = [v3 siriEventTypeUnion];
        if (v26)
        {
          v4 = OUTLINED_FUNCTION_104(v26);

          if (v4)
          {
            v5 = [v4 uufrShown];

            if (v5)
            {
              [v5 deleteDialogIdentifier];
            }
          }
        }

        ++v2;
      }

      goto LABEL_381;
    }
  }

  else if (sub_1A9CAE168(&unk_1F1DDC9F8, v9))
  {
    v28 = sub_1A9C8B5AC(v1);
    if (v28)
    {
      v9 = v28;
      sub_1A9C8B650();
      OUTLINED_FUNCTION_13_0();
      v6 = 0x1FC243000;
      while (v1 != v2)
      {
        if (v7)
        {
          v30 = OUTLINED_FUNCTION_38();
          MEMORY[0x1AC590720](v30);
        }

        else
        {
          OUTLINED_FUNCTION_47();
          if (v11)
          {
            goto LABEL_192;
          }

          OUTLINED_FUNCTION_67();
        }

        OUTLINED_FUNCTION_37();
        if (v12)
        {
          __break(1u);
LABEL_192:
          __break(1u);
          goto LABEL_193;
        }

        v29 = [v3 siriEventTypeUnion];
        if (v29)
        {
          v4 = OUTLINED_FUNCTION_104(v29);

          if (v4)
          {
            v5 = [v4 uufrSaid];

            if (v5)
            {
              [v5 deleteDialogIdentifier];
            }
          }
        }

        ++v2;
      }

      goto LABEL_381;
    }
  }

  else if (sub_1A9CAE168(&unk_1F1DDCA30, v9))
  {
    v31 = sub_1A9C8B5AC(v1);
    if (v31)
    {
      v9 = v31;
      sub_1A9C8B650();
      OUTLINED_FUNCTION_13_0();
      v6 = 0x1FC243000;
      while (v1 != v2)
      {
        if (v7)
        {
          v33 = OUTLINED_FUNCTION_38();
          MEMORY[0x1AC590720](v33);
        }

        else
        {
          OUTLINED_FUNCTION_47();
          if (v11)
          {
            goto LABEL_206;
          }

          OUTLINED_FUNCTION_67();
        }

        OUTLINED_FUNCTION_37();
        if (v12)
        {
LABEL_205:
          __break(1u);
LABEL_206:
          __break(1u);
          goto LABEL_207;
        }

        v32 = [v3 siriEventTypeUnion];
        if (v32)
        {
          v4 = OUTLINED_FUNCTION_104(v32);

          if (v4)
          {
            v5 = [v4 ueiUUFRReady];

            if (v5)
            {
              [v5 deleteDialogIdentifiers];
            }
          }
        }

        ++v2;
      }

      goto LABEL_381;
    }
  }

  else
  {
    if ((sub_1A9CAE168(&unk_1F1DDCA68, v9) & 1) == 0)
    {
LABEL_110:
      v6 = &selRef_domainContexts;
      if (sub_1A9CAE168(&unk_1F1DDCA98, v9))
      {
        v37 = sub_1A9C8B5AC(v1);
        if (!v37)
        {
          goto LABEL_382;
        }

        v38 = v37;
        sub_1A9C8B650();
        OUTLINED_FUNCTION_36();
        v39 = v38 & 0xC000000000000001;
        v40 = v38 & 0xFFFFFFFFFFFFFF8;
        *&v191 = v38;
        v195 = (v38 + 32);
        v9 = &selRef_generatedSuggestion;
        *&v194 = v41;
        *&v193 = v39;
        *&v192 = v40;
LABEL_113:
        while (v2 != v1)
        {
          if (v39)
          {
            v42 = MEMORY[0x1AC590720](v2, v191);
          }

          else
          {
            if (v2 >= *(v40 + 16))
            {
              goto LABEL_230;
            }

            v42 = v195[v2];
          }

          v5 = v42;
          v12 = __OFADD__(v2++, 1);
          if (v12)
          {
            __break(1u);
LABEL_230:
            __break(1u);
            goto LABEL_231;
          }

          v43 = [v42 siriEventTypeUnion];
          if (v43)
          {
            v7 = v43;
            v44 = [v43 *(v6 + 3256)];

            if (v44)
            {
              v4 = [v44 flowStep];

              if (v4)
              {
                v45 = sub_1A9CAE468(v4);
                if (v45)
                {
                  v7 = v45;
                  v46 = sub_1A9C8B650();
                  v47 = 0;
                  v6 = v7 & 0xC000000000000001;
                  v1 = (v7 & 0xFFFFFFFFFFFFFF8);
                  while (1)
                  {
                    if (v46 == v47)
                    {

                      v6 = 0x1E78F8000;
                      v1 = v194;
                      v39 = v193;
                      v40 = v192;
                      goto LABEL_113;
                    }

                    if (v6)
                    {
                      v51 = OUTLINED_FUNCTION_95();
                      MEMORY[0x1AC590720](v51);
                    }

                    else
                    {
                      if (v47 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
                      {
                        goto LABEL_204;
                      }

                      OUTLINED_FUNCTION_94();
                      v49 = v48;
                    }

                    OUTLINED_FUNCTION_125();
                    if (v12)
                    {
                      break;
                    }

                    v50 = [v44 informationPluginContext];
                    if (v50)
                    {
                      v4 = v50;
                      [v50 deleteExecutedPegasusDomain];
                    }

                    ++v47;
                  }

                  __break(1u);
LABEL_204:
                  __break(1u);
                  goto LABEL_205;
                }
              }
            }
          }
        }
      }

      else
      {
LABEL_137:
        if (sub_1A9CAE168(&unk_1F1DDCAD8, v9))
        {
          v52 = sub_1A9C8B5AC(v1);
          if (!v52)
          {
            goto LABEL_382;
          }

          v9 = v52;
          sub_1A9C8B650();
          OUTLINED_FUNCTION_36();
          v7 = v9 & 0xC000000000000001;
          v6 = v9 & 0xFFFFFFFFFFFFFF8;
          while (v1 != v2)
          {
            if (v7)
            {
              v54 = OUTLINED_FUNCTION_38();
              MEMORY[0x1AC590720](v54);
            }

            else
            {
              OUTLINED_FUNCTION_116();
              if (v11)
              {
                goto LABEL_246;
              }

              OUTLINED_FUNCTION_67();
            }

            OUTLINED_FUNCTION_37();
            if (v12)
            {
              __break(1u);
LABEL_246:
              __break(1u);
              goto LABEL_247;
            }

            v53 = [v3 siriEventTypeUnion];
            if (v53)
            {
              v5 = v53;
              v4 = [v53 flowClientEvent];

              if (v4)
              {
                v5 = [v4 smsAttachmentMetadataTier1];

                if (v5)
                {
                  [v5 deleteForegroundAppBundleId];
                }
              }
            }

            ++v2;
          }
        }

        else if (sub_1A9CAE168(&unk_1F1DDCB10, v9))
        {
          v55 = sub_1A9C8B5AC(v1);
          if (!v55)
          {
            goto LABEL_382;
          }

          v9 = v55;
          sub_1A9C8B650();
          OUTLINED_FUNCTION_13_0();
          while (v1 != v2)
          {
            if (v7)
            {
              v59 = OUTLINED_FUNCTION_38();
              MEMORY[0x1AC590720](v59);
            }

            else
            {
              OUTLINED_FUNCTION_47();
              if (v11)
              {
                goto LABEL_262;
              }

              OUTLINED_FUNCTION_67();
            }

            OUTLINED_FUNCTION_37();
            if (v12)
            {
              __break(1u);
LABEL_262:
              __break(1u);
              goto LABEL_263;
            }

            v56 = [v3 siriEventTypeUnion];
            v57 = [v56 *(v6 + 3256)];

            v58 = [v57 flowDomainExecutionContext];
            v5 = [v58 startedOrChanged];

            v4 = [v5 domainExecutionMetadata];
            [v4 deleteDomainExecutionAppIntentBundleID];

            ++v2;
          }
        }

        else
        {
LABEL_166:
          if (sub_1A9CAE168(&unk_1F1DDCB50, v9))
          {
            v60 = sub_1A9C8B5AC(v1);
            if (!v60)
            {
              goto LABEL_382;
            }

            v9 = v60;
            sub_1A9C8B650();
            OUTLINED_FUNCTION_36();
            OUTLINED_FUNCTION_79();
            while (v1 != v2)
            {
              if (v6)
              {
                v63 = OUTLINED_FUNCTION_38();
                MEMORY[0x1AC590720](v63);
              }

              else
              {
                OUTLINED_FUNCTION_92();
                if (v11)
                {
                  goto LABEL_278;
                }

                OUTLINED_FUNCTION_67();
              }

              OUTLINED_FUNCTION_37();
              if (v12)
              {
                __break(1u);
LABEL_278:
                __break(1u);
                goto LABEL_279;
              }

              v61 = [v3 siriEventTypeUnion];
              if (v61)
              {
                v4 = v61;
                v62 = [v61 dimClientEvent];

                if (v62)
                {
                  [v62 deleteSiriAccountInformation];
                }
              }

              ++v2;
            }
          }

          else
          {
LABEL_181:
            if (sub_1A9CAE168(&unk_1F1DDCB80, v9))
            {
              v64 = sub_1A9C8B5AC(v1);
              if (!v64)
              {
                goto LABEL_382;
              }

              v9 = v64;
              sub_1A9C8B650();
              OUTLINED_FUNCTION_13_0();
              v6 = &selRef_setUserPresenceSourceCaptured_;
              while (v1 != v2)
              {
                if (v7)
                {
                  v67 = OUTLINED_FUNCTION_38();
                  MEMORY[0x1AC590720](v67);
                }

                else
                {
                  OUTLINED_FUNCTION_47();
                  if (v11)
                  {
                    goto LABEL_294;
                  }

                  OUTLINED_FUNCTION_67();
                }

                OUTLINED_FUNCTION_37();
                if (v12)
                {
                  __break(1u);
LABEL_294:
                  __break(1u);
                  goto LABEL_295;
                }

                v65 = [v3 siriEventTypeUnion];
                v66 = [v65 nlxClientEvent];

                v4 = [v66 cdmRequestContext];
                v5 = [v4 startedOrChanged];

                [v5 deleteLoggableSharedUserId];
                ++v2;
              }
            }

            else
            {
LABEL_193:
              v195 = v1;
              v2 = 0;
              v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB400860, &qword_1AA737790);
              inited = swift_initStackObject();
              v193 = xmmword_1AA736E30;
              v194 = xmmword_1AA736E40;
              *(inited + 16) = xmmword_1AA736E30;
              *(inited + 32) = xmmword_1AA736E40;
              *(inited + 48) = 0x300000002;
              *(inited + 56) = 1;
              OUTLINED_FUNCTION_23(inited);
              if (v4)
              {
                v69 = sub_1A9C8B5AC(v195);
                if (!v69)
                {
                  goto LABEL_382;
                }

                v9 = v69;
                sub_1A9C8B650();
                OUTLINED_FUNCTION_118();
                OUTLINED_FUNCTION_79();
                v4 = &selRef_userScores;
                while (v1 != inited)
                {
                  if (v6)
                  {
                    OUTLINED_FUNCTION_3_1();
                  }

                  else
                  {
                    if (inited >= *(v7 + 16))
                    {
                      goto LABEL_306;
                    }

                    v70 = OUTLINED_FUNCTION_5_1();
                  }

                  v5 = v70;
                  if (__OFADD__(inited, 1))
                  {
                    __break(1u);
LABEL_306:
                    __break(1u);
                    goto LABEL_307;
                  }

                  v196[0] = v70;
                  sub_1A9C997CC(v196);

                  ++inited;
                }
              }

              else
              {
LABEL_207:
                v71 = swift_initStackObject();
                v192 = xmmword_1AA736DE0;
                *(v71 + 16) = xmmword_1AA736DE0;
                *(v71 + 32) = v194;
                *(v71 + 48) = 0x800000002;
                OUTLINED_FUNCTION_23(v71);
                if (v4)
                {
                  v72 = sub_1A9C8B5AC(v195);
                  if (!v72)
                  {
                    goto LABEL_382;
                  }

                  v9 = v72;
                  sub_1A9C8B650();
                  OUTLINED_FUNCTION_13_0();
                  v6 = &selRef_domainContexts;
                  while (v1 != v2)
                  {
                    if (v7)
                    {
                      v75 = OUTLINED_FUNCTION_38();
                      MEMORY[0x1AC590720](v75);
                    }

                    else
                    {
                      OUTLINED_FUNCTION_47();
                      if (v11)
                      {
                        goto LABEL_318;
                      }

                      OUTLINED_FUNCTION_67();
                    }

                    OUTLINED_FUNCTION_37();
                    if (v12)
                    {
                      __break(1u);
LABEL_318:
                      __break(1u);
                      goto LABEL_319;
                    }

                    v73 = [v71 siriEventTypeUnion];
                    v74 = [v73 orchClientEvent];

                    v4 = [v74 muxBridgeContext];
                    v5 = [v4 ended];

                    [v5 deleteSelectedSharedUserId];
                    ++v2;
                  }
                }

                else
                {
LABEL_219:
                  v76 = swift_initStackObject();
                  *(v76 + 16) = v193;
                  *(v76 + 32) = v194;
                  *(v76 + 48) = 0xC00000002;
                  *(v76 + 56) = 1;
                  OUTLINED_FUNCTION_23(v76);
                  if (v4)
                  {
                    v77 = sub_1A9C8B5AC(v195);
                    if (!v77)
                    {
                      goto LABEL_382;
                    }

                    v9 = v77;
                    sub_1A9C8B650();
                    OUTLINED_FUNCTION_118();
                    OUTLINED_FUNCTION_79();
                    v4 = &selRef_voiceIdScores;
                    while (v1 != v76)
                    {
                      if (v6)
                      {
                        OUTLINED_FUNCTION_3_1();
                      }

                      else
                      {
                        if (v76 >= *(v7 + 16))
                        {
                          goto LABEL_330;
                        }

                        v78 = OUTLINED_FUNCTION_5_1();
                      }

                      v5 = v78;
                      if (__OFADD__(v76, 1))
                      {
                        __break(1u);
LABEL_330:
                        __break(1u);
                        goto LABEL_331;
                      }

                      v196[0] = v78;
                      sub_1A9C997CC(v196);

                      ++v76;
                    }
                  }

                  else
                  {
LABEL_231:
                    v79 = swift_initStackObject();
                    v194 = xmmword_1AA736E50;
                    *(v79 + 16) = xmmword_1AA736E50;
                    *(v79 + 32) = xmmword_1AA736E60;
                    v5 = 4;
                    *(v79 + 48) = 4;
                    OUTLINED_FUNCTION_23(v79);
                    if (v4)
                    {
                      v80 = sub_1A9C8B5AC(v195);
                      if (!v80)
                      {
                        goto LABEL_382;
                      }

                      v9 = v80;
                      sub_1A9C8B650();
                      OUTLINED_FUNCTION_13_0();
                      while (v1 != v2)
                      {
                        if (v7)
                        {
                          v82 = OUTLINED_FUNCTION_38();
                          MEMORY[0x1AC590720](v82);
                        }

                        else
                        {
                          OUTLINED_FUNCTION_47();
                          if (v11)
                          {
                            goto LABEL_342;
                          }

                          OUTLINED_FUNCTION_67();
                        }

                        OUTLINED_FUNCTION_37();
                        if (v12)
                        {
                          __break(1u);
LABEL_342:
                          __break(1u);
                          goto LABEL_343;
                        }

                        v81 = [v79 siriEventTypeUnion];
                        if (v81)
                        {
                          v4 = OUTLINED_FUNCTION_132(v81);

                          if (v4)
                          {
                            v5 = [v4 packageGenerated];

                            if (v5)
                            {
                              [v5 deleteLoggableSharedUserId];
                            }
                          }
                        }

                        ++v2;
                      }
                    }

                    else
                    {
LABEL_247:
                      v83 = swift_initStackObject();
                      v91 = OUTLINED_FUNCTION_63(v83, xmmword_1AA736E70, v84, v85, v86, v87, v88, v89, v90, v191, *(&v191 + 1), v192, *(&v192 + 1), v193, *(&v193 + 1), v194);
                      *(v91 + 48) = v5;
                      OUTLINED_FUNCTION_23(v91);
                      if (v4)
                      {
                        v92 = sub_1A9C8B5AC(v195);
                        if (!v92)
                        {
                          goto LABEL_382;
                        }

                        v9 = v92;
                        sub_1A9C8B650();
                        OUTLINED_FUNCTION_13_0();
                        while (v1 != v2)
                        {
                          if (v7)
                          {
                            v94 = OUTLINED_FUNCTION_38();
                            MEMORY[0x1AC590720](v94);
                          }

                          else
                          {
                            OUTLINED_FUNCTION_47();
                            if (v11)
                            {
                              goto LABEL_347;
                            }

                            OUTLINED_FUNCTION_67();
                          }

                          OUTLINED_FUNCTION_37();
                          if (v12)
                          {
                            __break(1u);
LABEL_347:
                            __break(1u);
                            goto LABEL_348;
                          }

                          v93 = [v83 siriEventTypeUnion];
                          if (v93)
                          {
                            v4 = OUTLINED_FUNCTION_132(v93);

                            if (v4)
                            {
                              v5 = [v4 intermediateUtteranceInfoTier1];

                              if (v5)
                              {
                                [v5 deleteLoggableSharedUserId];
                              }
                            }
                          }

                          ++v2;
                        }
                      }

                      else
                      {
LABEL_263:
                        v95 = swift_initStackObject();
                        v103 = OUTLINED_FUNCTION_63(v95, xmmword_1AA736E80, v96, v97, v98, v99, v100, v101, v102, v191, *(&v191 + 1), v192, *(&v192 + 1), v193, *(&v193 + 1), v194);
                        *(v103 + 48) = 2;
                        OUTLINED_FUNCTION_23(v103);
                        if (v4)
                        {
                          v104 = sub_1A9C8B5AC(v195);
                          if (!v104)
                          {
                            goto LABEL_382;
                          }

                          v9 = v104;
                          sub_1A9C8B650();
                          OUTLINED_FUNCTION_13_0();
                          while (v1 != v2)
                          {
                            if (v7)
                            {
                              v106 = OUTLINED_FUNCTION_38();
                              MEMORY[0x1AC590720](v106);
                            }

                            else
                            {
                              OUTLINED_FUNCTION_47();
                              if (v11)
                              {
                                goto LABEL_352;
                              }

                              OUTLINED_FUNCTION_67();
                            }

                            OUTLINED_FUNCTION_37();
                            if (v12)
                            {
                              __break(1u);
LABEL_352:
                              __break(1u);
                              goto LABEL_353;
                            }

                            v105 = [v95 siriEventTypeUnion];
                            if (v105)
                            {
                              v4 = OUTLINED_FUNCTION_132(v105);

                              if (v4)
                              {
                                v5 = [v4 finalAudioPacketContainingSpeechReceived];

                                if (v5)
                                {
                                  [v5 deleteLoggableSharedUserId];
                                }
                              }
                            }

                            ++v2;
                          }
                        }

                        else
                        {
LABEL_279:
                          v107 = swift_initStackObject();
                          v115 = OUTLINED_FUNCTION_63(v107, xmmword_1AA736E90, v108, v109, v110, v111, v112, v113, v114, v191, *(&v191 + 1), v192, *(&v192 + 1), v193, *(&v193 + 1), v194);
                          v5 = 1;
                          *(v115 + 48) = 1;
                          OUTLINED_FUNCTION_23(v115);
                          if (v4)
                          {
                            v116 = sub_1A9C8B5AC(v195);
                            if (!v116)
                            {
                              goto LABEL_382;
                            }

                            v9 = v116;
                            sub_1A9C8B650();
                            OUTLINED_FUNCTION_13_0();
                            while (v1 != v2)
                            {
                              if (v7)
                              {
                                v118 = OUTLINED_FUNCTION_38();
                                MEMORY[0x1AC590720](v118);
                              }

                              else
                              {
                                OUTLINED_FUNCTION_47();
                                if (v11)
                                {
                                  goto LABEL_357;
                                }

                                OUTLINED_FUNCTION_67();
                              }

                              OUTLINED_FUNCTION_37();
                              if (v12)
                              {
                                __break(1u);
LABEL_357:
                                __break(1u);
                                goto LABEL_358;
                              }

                              v117 = [v107 siriEventTypeUnion];
                              if (v117)
                              {
                                v4 = OUTLINED_FUNCTION_132(v117);

                                if (v4)
                                {
                                  v5 = [v4 finalAudioPacketContainingSpeechReadyUpstream];

                                  if (v5)
                                  {
                                    [v5 deleteLoggableSharedUserId];
                                  }
                                }
                              }

                              ++v2;
                            }
                          }

                          else
                          {
LABEL_295:
                            v119 = swift_initStackObject();
                            *(v119 + 16) = v193;
                            *(v119 + 32) = xmmword_1AA736EA0;
                            v191 = xmmword_1AA736EA0;
                            *(v119 + 48) = 0x800000001;
                            *(v119 + 56) = v5;
                            OUTLINED_FUNCTION_23(v119);
                            if (v4)
                            {
                              v120 = sub_1A9C8B5AC(v195);
                              if (!v120)
                              {
                                goto LABEL_382;
                              }

                              v9 = v120;
                              sub_1A9C8B650();
                              OUTLINED_FUNCTION_118();
                              OUTLINED_FUNCTION_78();
                              while (v1 != v119)
                              {
                                if (v5)
                                {
                                  OUTLINED_FUNCTION_3_1();
                                }

                                else
                                {
                                  OUTLINED_FUNCTION_115();
                                  if (v11)
                                  {
                                    goto LABEL_362;
                                  }

                                  OUTLINED_FUNCTION_5_1();
                                }

                                OUTLINED_FUNCTION_1_3();
                                if (v12)
                                {
                                  __break(1u);
LABEL_362:
                                  __break(1u);
                                  goto LABEL_363;
                                }

                                v196[0] = v4;
                                sub_1A9C99914(v196);

                                ++v119;
                              }
                            }

                            else
                            {
LABEL_307:
                              v121 = swift_initStackObject();
                              *(v121 + 16) = xmmword_1AA736E10;
                              *(v121 + 32) = v191;
                              OUTLINED_FUNCTION_22(v121, xmmword_1AA736EB0);
                              if (v4)
                              {
                                v122 = sub_1A9C8B5AC(v195);
                                if (!v122)
                                {
                                  goto LABEL_382;
                                }

                                v9 = v122;
                                sub_1A9C8B650();
                                OUTLINED_FUNCTION_118();
                                OUTLINED_FUNCTION_78();
                                while (v1 != v121)
                                {
                                  if (v5)
                                  {
                                    OUTLINED_FUNCTION_3_1();
                                  }

                                  else
                                  {
                                    OUTLINED_FUNCTION_115();
                                    if (v11)
                                    {
                                      __break(1u);
LABEL_367:
                                      __break(1u);
                                      goto LABEL_368;
                                    }

                                    OUTLINED_FUNCTION_5_1();
                                  }

                                  OUTLINED_FUNCTION_1_3();
                                  if (v12)
                                  {
                                    goto LABEL_367;
                                  }

                                  v196[0] = v4;
                                  sub_1A9C99A80(v196);

                                  ++v121;
                                }
                              }

                              else
                              {
LABEL_319:
                                v123 = swift_initStackObject();
                                v131 = OUTLINED_FUNCTION_63(v123, xmmword_1AA736EC0, v124, v125, v126, v127, v128, v129, v130, v191, *(&v191 + 1), v192, *(&v192 + 1), v193, *(&v193 + 1), v194);
                                *(v131 + 48) = 2;
                                OUTLINED_FUNCTION_23(v131);
                                if (v4)
                                {
                                  v132 = sub_1A9C8B5AC(v195);
                                  if (!v132)
                                  {
                                    goto LABEL_382;
                                  }

                                  v9 = v132;
                                  sub_1A9C8B650();
                                  OUTLINED_FUNCTION_36();
                                  OUTLINED_FUNCTION_79();
                                  while (v1 != v2)
                                  {
                                    if (v6)
                                    {
                                      v135 = OUTLINED_FUNCTION_38();
                                      MEMORY[0x1AC590720](v135);
                                    }

                                    else
                                    {
                                      OUTLINED_FUNCTION_92();
                                      if (v11)
                                      {
                                        __break(1u);
LABEL_372:
                                        __break(1u);
                                        goto LABEL_373;
                                      }

                                      OUTLINED_FUNCTION_67();
                                    }

                                    OUTLINED_FUNCTION_37();
                                    if (v12)
                                    {
                                      goto LABEL_372;
                                    }

                                    v133 = [v123 siriEventTypeUnion];
                                    v134 = [v133 mhClientEvent];

                                    v4 = [v134 assistantDaemonAudioRecordingInterruptionStartedTier1];
                                    [v4 deleteActiveSessionDisplayIds];

                                    ++v2;
                                  }
                                }

                                else
                                {
LABEL_331:
                                  v136 = swift_initStackObject();
                                  v144 = OUTLINED_FUNCTION_63(v136, xmmword_1AA736ED0, v137, v138, v139, v140, v141, v142, v143, v191, *(&v191 + 1), v192, *(&v192 + 1), v193, *(&v193 + 1), v194);
                                  *(v144 + 48) = v5;
                                  OUTLINED_FUNCTION_23(v144);
                                  if (v4)
                                  {
                                    v145 = sub_1A9C8B5AC(v195);
                                    if (!v145)
                                    {
                                      goto LABEL_382;
                                    }

                                    v9 = v145;
                                    sub_1A9C8B650();
                                    OUTLINED_FUNCTION_36();
                                    OUTLINED_FUNCTION_79();
                                    while (v1 != v2)
                                    {
                                      if (v6)
                                      {
                                        v149 = OUTLINED_FUNCTION_38();
                                        MEMORY[0x1AC590720](v149);
                                      }

                                      else
                                      {
                                        OUTLINED_FUNCTION_92();
                                        if (v11)
                                        {
                                          __break(1u);
LABEL_377:
                                          __break(1u);
                                          goto LABEL_378;
                                        }

                                        OUTLINED_FUNCTION_67();
                                      }

                                      OUTLINED_FUNCTION_37();
                                      if (v12)
                                      {
                                        goto LABEL_377;
                                      }

                                      v146 = [v136 siriEventTypeUnion];
                                      v147 = [v146 mhClientEvent];

                                      v148 = [v147 applicationPlaybackAttempted];
                                      [v148 deleteAppBundleName];

                                      ++v2;
                                    }
                                  }

                                  else
                                  {
LABEL_343:
                                    v150 = swift_initStackObject();
                                    v158 = OUTLINED_FUNCTION_63(v150, xmmword_1AA736EE0, v151, v152, v153, v154, v155, v156, v157, v191, *(&v191 + 1), v192, *(&v192 + 1), v193, *(&v193 + 1), v194);
                                    *(v158 + 48) = v5;
                                    OUTLINED_FUNCTION_23(v158);
                                    if (v4)
                                    {
                                      v159 = sub_1A9C8B5AC(v195);
                                      if (!v159)
                                      {
                                        goto LABEL_382;
                                      }

                                      sub_1A9C8B75C(v159);
                                    }

                                    else
                                    {
LABEL_348:
                                      v160 = swift_initStackObject();
                                      *(v160 + 16) = v192;
                                      *(v160 + 32) = xmmword_1AA736EF0;
                                      *(v160 + 48) = 0x200000001;
                                      OUTLINED_FUNCTION_23(v160);
                                      if (v4)
                                      {
                                        v161 = sub_1A9C8B5AC(v195);
                                        if (!v161)
                                        {
                                          goto LABEL_382;
                                        }

                                        sub_1A9C8B878(v161);
                                      }

                                      else
                                      {
LABEL_353:
                                        v162 = swift_initStackObject();
                                        *(v162 + 16) = v193;
                                        *(v162 + 32) = xmmword_1AA736F00;
                                        *(v162 + 48) = 0x400000003;
                                        *(v162 + 56) = 1;
                                        OUTLINED_FUNCTION_23(v162);
                                        if (v4)
                                        {
                                          v163 = sub_1A9C8B5AC(v195);
                                          if (!v163)
                                          {
                                            goto LABEL_382;
                                          }

                                          sub_1A9C8BA68(v163);
                                        }

                                        else
                                        {
LABEL_358:
                                          v164 = swift_initStackObject();
                                          v172 = OUTLINED_FUNCTION_63(v164, xmmword_1AA736F10, v165, v166, v167, v168, v169, v170, v171, v191, *(&v191 + 1), v192, *(&v192 + 1), v193, *(&v193 + 1), v194);
                                          *(v172 + 48) = 4;
                                          OUTLINED_FUNCTION_23(v172);
                                          if (v4)
                                          {
                                            v173 = sub_1A9C8B5AC(v195);
                                            if (!v173)
                                            {
                                              goto LABEL_382;
                                            }

                                            sub_1A9C8BBC4(v173);
                                          }

                                          else
                                          {
LABEL_363:
                                            v174 = swift_initStackObject();
                                            *(v174 + 16) = v192;
                                            *(v174 + 32) = xmmword_1AA736F20;
                                            v193 = xmmword_1AA736F20;
                                            *(v174 + 48) = 0x100000002;
                                            OUTLINED_FUNCTION_23(v174);
                                            if (v4)
                                            {
                                              v175 = sub_1A9C8B5AC(v195);
                                              if (!v175)
                                              {
                                                goto LABEL_382;
                                              }

                                              sub_1A9C8BCE0(v175);
                                            }

                                            else
                                            {
LABEL_368:
                                              v176 = swift_initStackObject();
                                              *(v176 + 16) = v192;
                                              *(v176 + 32) = v193;
                                              *(v176 + 48) = 0x400000002;
                                              OUTLINED_FUNCTION_23(v176);
                                              if (v4)
                                              {
                                                v177 = sub_1A9C8B5AC(v195);
                                                if (!v177)
                                                {
                                                  goto LABEL_382;
                                                }

                                                sub_1A9C8BED0(v177);
                                              }

                                              else
                                              {
LABEL_373:
                                                v178 = swift_allocObject();
                                                v186 = OUTLINED_FUNCTION_63(v178, xmmword_1AA736F30, v179, v180, v181, v182, v183, v184, v185, v191, *(&v191 + 1), v192, *(&v192 + 1), v193, *(&v193 + 1), v194);
                                                *(v186 + 48) = 2;
                                                OUTLINED_FUNCTION_23(v186);
                                                if (v4)
                                                {
                                                  v187 = sub_1A9C8B5AC(v195);
                                                  if (!v187)
                                                  {
                                                    goto LABEL_382;
                                                  }

                                                  sub_1A9C8C0C0(v187);
                                                }

                                                else
                                                {
LABEL_378:
                                                  v188 = swift_initStackObject();
                                                  *(v188 + 16) = xmmword_1AA736F40;
                                                  *(v188 + 32) = xmmword_1AA736F50;
                                                  OUTLINED_FUNCTION_84(v188, v9);

                                                  if ((v9 & 1) == 0)
                                                  {
                                                    goto LABEL_382;
                                                  }

                                                  v189 = sub_1A9C8B5AC(v195);
                                                  if (!v189)
                                                  {
                                                    goto LABEL_382;
                                                  }

                                                  sub_1A9C948E0(v189, sub_1A9C8B650, &selRef_siriEventTypeUnion, &selRef_rfgClientEvent, &selRef_deleteVisualResponseShownTier1);
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }

LABEL_381:

      goto LABEL_382;
    }

    v34 = sub_1A9C8B5AC(v1);
    if (v34)
    {
      v9 = v34;
      sub_1A9C8B650();
      OUTLINED_FUNCTION_36();
      OUTLINED_FUNCTION_79();
      while (v1 != v2)
      {
        if (v6)
        {
          v36 = OUTLINED_FUNCTION_38();
          MEMORY[0x1AC590720](v36);
        }

        else
        {
          OUTLINED_FUNCTION_92();
          if (v11)
          {
            goto LABEL_218;
          }

          OUTLINED_FUNCTION_67();
        }

        OUTLINED_FUNCTION_37();
        if (v12)
        {
          __break(1u);
LABEL_218:
          __break(1u);
          goto LABEL_219;
        }

        v35 = [v3 siriEventTypeUnion];
        if (v35)
        {
          v4 = v35;
          v5 = [v35 ueiClientEvent];

          if (v5)
          {
            [v5 deleteUufrSelected];
          }
        }

        ++v2;
      }

      goto LABEL_381;
    }
  }

LABEL_382:
  OUTLINED_FUNCTION_20();
  return result;
}

void sub_1A9C997CC(uint64_t a1)
{
  v4 = [OUTLINED_FUNCTION_93(a1) siriEventTypeUnion];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 orchClientEvent];

    if (v6)
    {
      v7 = [v6 muxBridgeContext];

      if (v7)
      {
        v8 = [v7 ended];

        if (v8)
        {
          v9 = OUTLINED_FUNCTION_124();
          if (sub_1A9CAE468(v9))
          {
            sub_1A9C8B650();
            OUTLINED_FUNCTION_61();
            OUTLINED_FUNCTION_114();
            while (1)
            {
              if (v8 == v7)
              {

                return;
              }

              if (v2)
              {
                OUTLINED_FUNCTION_88();
              }

              else
              {
                if (v7 >= *(v3 + 16))
                {
                  goto LABEL_17;
                }

                OUTLINED_FUNCTION_87();
              }

              OUTLINED_FUNCTION_65();
              if (v10)
              {
                break;
              }

              [v1 deleteLoggableSharedUserId];

              ++v7;
            }

            __break(1u);
LABEL_17:
            __break(1u);
          }
        }
      }
    }
  }
}

void sub_1A9C99914(id *a1)
{
  v1 = [*a1 siriEventTypeUnion];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 asrClientEvent];

    if (v3)
    {
      v4 = [v3 contextualEntityRetrievalContext];

      if (v4)
      {
        v5 = [v4 startedOrChanged];

        if (v5)
        {
          v6 = sub_1A9CAE468(v5);
          if (v6)
          {
            v7 = v6;
            v8 = sub_1A9C8B650();
            for (i = 0; ; ++i)
            {
              if (v8 == i)
              {

                return;
              }

              if ((v7 & 0xC000000000000001) != 0)
              {
                v10 = MEMORY[0x1AC590720](i, v7);
              }

              else
              {
                if (i >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_17;
                }

                v10 = *(v7 + 8 * i + 32);
              }

              v11 = v10;
              if (__OFADD__(i, 1))
              {
                break;
              }

              [v10 deleteBundleId];
            }

            __break(1u);
LABEL_17:
            __break(1u);
          }
        }
      }
    }
  }
}

void sub_1A9C99A80(id *a1)
{
  v1 = [*a1 siriEventTypeUnion];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 asrClientEvent];

    if (v3)
    {
      v4 = [v3 contextualEntityRetrievalContext];

      if (v4)
      {
        v5 = [v4 ended];

        if (v5)
        {
          v6 = sub_1A9CAE468(v5);
          if (v6)
          {
            v7 = v6;
            v8 = sub_1A9C8B650();
            for (i = 0; ; ++i)
            {
              if (v8 == i)
              {

                return;
              }

              if ((v7 & 0xC000000000000001) != 0)
              {
                v10 = MEMORY[0x1AC590720](i, v7);
              }

              else
              {
                if (i >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_19;
                }

                v10 = *(v7 + 8 * i + 32);
              }

              v11 = v10;
              if (__OFADD__(i, 1))
              {
                break;
              }

              v12 = [v10 entityType];
              if (v12)
              {
                v13 = v12;
                [v12 deleteBundleId];
              }
            }

            __break(1u);
LABEL_19:
            __break(1u);
          }
        }
      }
    }
  }
}

uint64_t static IDENTITYSchemaIDENTITYClientEvent.sensitiveTagPaths.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB400840, &qword_1AA737770);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AA736E50;
  *(inited + 32) = &unk_1F1DDAD90;
  *(inited + 40) = sub_1A9C952F4(&unk_1F1DDADC0);
  *(inited + 48) = &unk_1F1DDADE8;
  *(inited + 56) = sub_1A9C952F4(&unk_1F1DDAE18);
  *(inited + 64) = &unk_1F1DDAE40;
  *(inited + 72) = sub_1A9C952F4(&unk_1F1DDAE70);
  *(inited + 80) = &unk_1F1DDAE98;
  *(inited + 88) = sub_1A9C952F4(&unk_1F1DDAEC8);
  *(inited + 96) = &unk_1F1DDAEF0;
  *(inited + 104) = sub_1A9C952F4(&unk_1F1DDAF20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB400848, &qword_1AA737778);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB400850, &qword_1AA737780);
  sub_1A9CAE1C4();
  OUTLINED_FUNCTION_12_1();
  return sub_1AA6519B4();
}

uint64_t static IDENTITYSchemaIDENTITYClientEvent.sensitiveKvcPaths.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB400858, &qword_1AA737788);
  inited = swift_initStackObject();
  v1 = OUTLINED_FUNCTION_21_0(inited, xmmword_1AA736E50);
  OUTLINED_FUNCTION_51(v1, v2);
  sub_1A9C952F4(&unk_1F1DDFBA8);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_50(v3, v4);
  sub_1A9C952F4(&unk_1F1DDFBD0);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_49(v5, v6);
  sub_1A9C952F4(&unk_1F1DDFBF8);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_76(v7, v8);
  sub_1A9C952F4(&unk_1F1DDFC20);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_91(v9, v10);
  inited[9].n128_u64[0] = sub_1A9C952F4(&unk_1F1DDFC48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB400850, &qword_1AA737780);
  return sub_1AA6519B4();
}

Swift::Bool __swiftcall IDENTITYSchemaIDENTITYClientEvent.deleteSensitiveField(tagPath:)(Swift::OpaquePointer tagPath)
{
  OUTLINED_FUNCTION_137();
  v6 = v5;
  if (sub_1A9CAE168(&unk_1F1DDC7F0, v5))
  {
    v7 = [v1 scoreCardsGenerated];
    if (!v7)
    {
      goto LABEL_62;
    }

    v8 = v7;
    v9 = [v7 voiceScoreCard];

    if (!v9 || !sub_1A9CAE468(v9))
    {
      goto LABEL_62;
    }

    sub_1A9C8B650();
    OUTLINED_FUNCTION_10_1();
    while (v9 != v2)
    {
      if (v4)
      {
        v13 = OUTLINED_FUNCTION_38();
        MEMORY[0x1AC590720](v13);
      }

      else
      {
        OUTLINED_FUNCTION_44();
        if (v11)
        {
          goto LABEL_65;
        }

        OUTLINED_FUNCTION_67();
      }

      OUTLINED_FUNCTION_37();
      if (v12)
      {
        __break(1u);
LABEL_65:
        __break(1u);
        goto LABEL_66;
      }

      OUTLINED_FUNCTION_101();

      ++v2;
    }
  }

  else if (sub_1A9CAE168(&unk_1F1DDC820, v6))
  {
    v14 = [v1 scoreCardsGenerated];
    if (!v14)
    {
      goto LABEL_62;
    }

    v15 = v14;
    v16 = [v14 identityScoreCard];

    if (!v16 || !sub_1A9CAE468(v16))
    {
      goto LABEL_62;
    }

    sub_1A9C8B650();
    OUTLINED_FUNCTION_10_1();
    while (v16 != v2)
    {
      if (v4)
      {
        v17 = OUTLINED_FUNCTION_38();
        MEMORY[0x1AC590720](v17);
      }

      else
      {
        OUTLINED_FUNCTION_44();
        if (v11)
        {
          goto LABEL_67;
        }

        OUTLINED_FUNCTION_67();
      }

      OUTLINED_FUNCTION_37();
      if (v12)
      {
LABEL_66:
        __break(1u);
LABEL_67:
        __break(1u);
        goto LABEL_68;
      }

      OUTLINED_FUNCTION_101();

      ++v2;
    }
  }

  else if (sub_1A9CAE168(&unk_1F1DDC850, v6))
  {
    v18 = [v1 firstVoiceIdSubmitted];
    if (!v18)
    {
      goto LABEL_62;
    }

    v19 = v18;
    v20 = [v18 voiceScoreCard];

    if (!v20 || !sub_1A9CAE468(v20))
    {
      goto LABEL_62;
    }

    sub_1A9C8B650();
    OUTLINED_FUNCTION_10_1();
    while (v20 != v2)
    {
      if (v4)
      {
        v21 = OUTLINED_FUNCTION_38();
        MEMORY[0x1AC590720](v21);
      }

      else
      {
        OUTLINED_FUNCTION_44();
        if (v11)
        {
          goto LABEL_69;
        }

        OUTLINED_FUNCTION_67();
      }

      OUTLINED_FUNCTION_37();
      if (v12)
      {
LABEL_68:
        __break(1u);
LABEL_69:
        __break(1u);
        goto LABEL_70;
      }

      OUTLINED_FUNCTION_101();

      ++v2;
    }
  }

  else if (sub_1A9CAE168(&unk_1F1DDC880, v6))
  {
    v22 = [v1 firstIdentityReceived];
    if (!v22)
    {
      goto LABEL_62;
    }

    v23 = v22;
    v24 = [v22 identityScoreCard];

    if (!v24 || !sub_1A9CAE468(v24))
    {
      goto LABEL_62;
    }

    sub_1A9C8B650();
    OUTLINED_FUNCTION_10_1();
    while (v24 != v2)
    {
      if (v4)
      {
        v25 = OUTLINED_FUNCTION_38();
        MEMORY[0x1AC590720](v25);
      }

      else
      {
        OUTLINED_FUNCTION_44();
        if (v11)
        {
          goto LABEL_71;
        }

        OUTLINED_FUNCTION_67();
      }

      OUTLINED_FUNCTION_37();
      if (v12)
      {
LABEL_70:
        __break(1u);
LABEL_71:
        __break(1u);
        goto LABEL_72;
      }

      OUTLINED_FUNCTION_101();

      ++v2;
    }
  }

  else
  {
    if ((sub_1A9CAE168(&unk_1F1DDC8B0, v6) & 1) == 0)
    {
      goto LABEL_62;
    }

    v26 = [v1 resultCandidateReceived];
    if (!v26)
    {
      goto LABEL_62;
    }

    v27 = v26;
    v28 = [v26 identityScoreCard];

    if (!v28 || !sub_1A9CAE468(v28))
    {
      goto LABEL_62;
    }

    sub_1A9C8B650();
    OUTLINED_FUNCTION_10_1();
    while (v28 != v2)
    {
      if (v4)
      {
        v29 = OUTLINED_FUNCTION_38();
        MEMORY[0x1AC590720](v29);
      }

      else
      {
        OUTLINED_FUNCTION_44();
        if (v11)
        {
          goto LABEL_73;
        }

        OUTLINED_FUNCTION_67();
      }

      OUTLINED_FUNCTION_37();
      if (v12)
      {
LABEL_72:
        __break(1u);
LABEL_73:
        __break(1u);
        return result;
      }

      OUTLINED_FUNCTION_101();

      ++v2;
    }
  }

LABEL_62:
  OUTLINED_FUNCTION_135();
  return result;
}