uint64_t sub_1E3CEE370(char *__src, char *__dst, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src;
  v8 = (__dst - __src) / 8;
  v9 = (a3 - __dst) / 8;
  if (v8 < v9)
  {
    if (a4 != __src || &__src[8 * v8] <= a4)
    {
      memmove(a4, __src, 8 * v8);
    }

    v11 = &v4[8 * v8];
    while (1)
    {
      if (v4 >= v11 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_38;
      }

      type metadata accessor for MetricsRenderSession();
      sub_1E3CEE848();
      if ((sub_1E4205E04() & 1) == 0)
      {
        break;
      }

      v13 = v6;
      v14 = v7 == v6;
      v6 += 8;
      if (!v14)
      {
        goto LABEL_17;
      }

LABEL_18:
      v7 += 8;
    }

    v13 = v4;
    v14 = v7 == v4;
    v4 += 8;
    if (v14)
    {
      goto LABEL_18;
    }

LABEL_17:
    *v7 = *v13;
    goto LABEL_18;
  }

  if (a4 != __dst || &__dst[8 * v9] <= a4)
  {
    memmove(a4, __dst, 8 * v9);
  }

  v11 = &v4[8 * v9];
  v24 = v4;
LABEL_25:
  v16 = v6 - 8;
  v5 -= 8;
  while (v11 > v4 && v6 > v7)
  {
    v18 = v6;
    v6 = v16;
    type metadata accessor for MetricsRenderSession();
    sub_1E3CEE848();
    v19 = sub_1E4205E04();
    v20 = v5 + 8;
    if (v19)
    {
      v4 = v24;
      if (v20 != v18)
      {
        *v5 = *v6;
      }

      goto LABEL_25;
    }

    if (v11 != v20)
    {
      *v5 = *(v11 - 1);
    }

    v5 -= 8;
    v11 -= 8;
    v16 = v6;
    v4 = v24;
    v6 = v18;
  }

LABEL_38:
  v21 = (v11 - v4) / 8;
  if (v6 != v4 || v6 >= &v4[8 * v21])
  {
    memmove(v6, v4, 8 * v21);
  }

  return 1;
}

uint64_t sub_1E3CEE590(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v1 = result;
    if (result)
    {
      type metadata accessor for MetricsRenderSession();
      result = sub_1E4206314();
      *((result & 0xFFFFFFFFFFFFFF8) + 0x10) = v1;
    }

    else
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  return result;
}

void *sub_1E3CEE5EC(unint64_t a1)
{
  if (a1 >> 62)
  {
    v4 = sub_1E4207384();
    if (v4)
    {
      v5 = v4;
      v2 = sub_1E37FEA14(v4, 0);
      sub_1E3CEE680((v2 + 4), v5, a1);
      v7 = v6;

      if (v7 == v5)
      {
        return v2;
      }

      __break(1u);
    }

    return MEMORY[0x1E69E7CC0];
  }

  return (a1 & 0xFFFFFFFFFFFFFF8);
}

uint64_t sub_1E3CEE680(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_1E4207384();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_1E32AE9B0(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        type metadata accessor for MetricsRenderSession();
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_1E3CEE7E4();
        for (i = 0; i != v7; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF372A8, &qword_1E42CB230);
          v9 = sub_1E374111C(v12, i, a3);
          v11 = *v10;
          (v9)(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_1E3CEE7E4()
{
  result = qword_1ECF372B0;
  if (!qword_1ECF372B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF372A8, &qword_1E42CB230);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF372B0);
  }

  return result;
}

unint64_t sub_1E3CEE848()
{
  result = qword_1ECF372B8;
  if (!qword_1ECF372B8)
  {
    type metadata accessor for MetricsRenderSession();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF372B8);
  }

  return result;
}

double CGRect.center.getter(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  MidX = CGRectGetMidX(*&a1);
  v10.origin.x = a1;
  v10.origin.y = a2;
  v10.size.width = a3;
  v10.size.height = a4;
  CGRectGetMidY(v10);
  return MidX;
}

double CGRect.center.setter(double a1, double a2)
{
  v9.origin.x = *v2;
  v5 = v2[1];
  v6 = v2[2];
  v7 = v2[3];
  v9.origin.y = v5;
  v9.size.width = v6;
  v9.size.height = v7;
  v10.origin.x = a1 - CGRectGetWidth(v9) * 0.5;
  *v2 = v10.origin.x;
  v10.origin.y = v5;
  v10.size.width = v6;
  v10.size.height = v7;
  result = a2 - CGRectGetHeight(v10) * 0.5;
  v2[1] = result;
  return result;
}

void (*CGRect.center.modify(CGFloat **a1))(CGRect **a1)
{
  v3 = __swift_coroFrameAllocStub(0x50uLL);
  *a1 = v3;
  *(v3 + 6) = v1;
  v4 = *v1;
  v5 = v1[1];
  v3[7] = v5;
  v6 = v1[2];
  v13 = v6;
  v14 = *&v4;
  v3[8] = v6;
  v7 = v1[3];
  rect = v7;
  v3[9] = v7;
  *&v8 = v6;
  *(&v8 + 1) = v7;
  *v3 = v4;
  *(v3 + 1) = v8;
  *&v8 = *(&v4 + 1);
  MidX = CGRectGetMidX(*&v4);
  v15.size.width = v13;
  v15.origin.x = v14;
  v15.origin.y = v5;
  v15.size.height = rect;
  MidY = CGRectGetMidY(v15);
  v3[4] = MidX;
  v3[5] = MidY;
  return sub_1E3CEEA60;
}

void sub_1E3CEEA60(CGRect **a1)
{
  v1 = *a1;
  x = (*a1)[2].origin.x;
  y = (*a1)[2].origin.y;
  height = (*a1)[1].size.height;
  width = (*a1)[1].size.width;
  v6 = (*a1)[1].origin.x;
  v7 = (*a1)[1].origin.y;
  v9.origin.x = v6 - CGRectGetWidth(**a1) * 0.5;
  **&width = *&v9.origin.x;
  v9.origin.y = height;
  v9.size.width = x;
  v9.size.height = y;
  *(*&width + 8) = v7 - CGRectGetHeight(v9) * 0.5;

  free(v1);
}

double sub_1E3CEEB00(double a1, double a2, double a3, double a4, double a5)
{
  OUTLINED_FUNCTION_0_216(a1, a2, a3, a4, a5);
  VUIRectWithFlippedOriginRelativeToBoundingRectWithCondition();
  return result;
}

uint64_t sub_1E3CEEB58(uint64_t a1)
{
  OUTLINED_FUNCTION_18_25(a1);
  v1 = sub_1E3CEEB2C();
  OUTLINED_FUNCTION_4_17(v1, v2);
  return OUTLINED_FUNCTION_116();
}

uint64_t sub_1E3CEEBC4(void *a1, uint64_t (*a2)(void))
{
  v3 = (v2 + *a1);
  if ((v3[9] & 1) == 0)
  {
    return *v3;
  }

  v4 = *(v2 + OBJC_IVAR____TtC8VideosUI31LibFamilySharingBaseMediaEntity_attributeDict);
  if (!v4)
  {
    v11 = 0u;
    v12 = 0u;
    goto LABEL_8;
  }

  a2();

  v5 = OUTLINED_FUNCTION_57();
  sub_1E3277E60(v5, v6, v4, v7);

  if (!*(&v12 + 1))
  {
LABEL_8:
    sub_1E329505C(&v11);
    goto LABEL_9;
  }

  if (!swift_dynamicCast())
  {
LABEL_9:
    result = 0;
    v8 = 1;
    goto LABEL_10;
  }

  v8 = 0;
  result = v10;
LABEL_10:
  *v3 = result;
  v3[8] = v8;
  v3[9] = 0;
  return result;
}

uint64_t sub_1E3CEECBC(uint64_t a1)
{
  OUTLINED_FUNCTION_18_25(a1);
  v1 = sub_1E3CEEBA4();
  OUTLINED_FUNCTION_4_17(v1, v2);
  return OUTLINED_FUNCTION_116();
}

uint64_t sub_1E3CEED08()
{
  v1 = (v0 + OBJC_IVAR____TtC8VideosUI34LibFamilySharingEpisodeMediaEntity____lazy_storage___fractionalEpisodeNumber);
  if ((*(v0 + OBJC_IVAR____TtC8VideosUI34LibFamilySharingEpisodeMediaEntity____lazy_storage___fractionalEpisodeNumber + 9) & 1) == 0)
  {
    return *v1;
  }

  result = 0;
  *v1 = 0;
  v1[4] = 1;
  return result;
}

uint64_t sub_1E3CEED4C(uint64_t a1)
{
  OUTLINED_FUNCTION_18_25(a1);
  v1 = sub_1E3CEED08();
  OUTLINED_FUNCTION_4_17(v1, v2);
  return OUTLINED_FUNCTION_116();
}

uint64_t sub_1E3CEEDC4(uint64_t a1)
{
  OUTLINED_FUNCTION_18_25(a1);
  *v1 = sub_1E3CEED98();
  v1[1] = v2;
  return OUTLINED_FUNCTION_116();
}

uint64_t sub_1E3CEEE30(void *a1, uint64_t (*a2)(void))
{
  v3 = (v2 + *a1);
  v4 = *v3;
  v5 = v3[1];
  v6 = *v3;
  if (v5 == 1)
  {
    v8 = *(v2 + OBJC_IVAR____TtC8VideosUI31LibFamilySharingBaseMediaEntity_familySharingDict);
    v9 = sub_1E38ADF4C();
    v10 = *v9;
    v11 = v9[1];

    sub_1E3277E60(v10, v11, v8, &v68);

    if (v69)
    {
      v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
      OUTLINED_FUNCTION_3_162(v12, v13, v14, v15, v16, v17, v18, v19, v60);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_13;
      }

      v20 = a2();
      v21 = *v20;
      v22 = v20[1];

      sub_1E3277E60(v21, v22, v61, &v68);

      if (v69)
      {
        OUTLINED_FUNCTION_3_162(v23, v24, v25, v26, v27, v28, v29, v30, v61);
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_13;
        }

        sub_1E38ADE84();

        v31 = OUTLINED_FUNCTION_34();
        sub_1E3277E60(v31, v32, v62, v33);

        if (v69)
        {
          v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E9B0, qword_1E4298110);
          OUTLINED_FUNCTION_3_162(v34, v35, v36, v34, v37, v38, v39, v40, v62);
          if ((swift_dynamicCast() & 1) == 0)
          {
            goto LABEL_13;
          }

          if (!*(v63 + 16))
          {

            goto LABEL_13;
          }

          sub_1E38ADE90();

          OUTLINED_FUNCTION_6_141(v41, v42, v43, v44, v45, v46, v47, v48, v63, v66, v68);

          if (v69)
          {
            OUTLINED_FUNCTION_3_162(v49, v50, v51, MEMORY[0x1E69E6158], v52, v53, v54, v55, v64);
            if (swift_dynamicCast())
            {
              v6 = v65;
              v56 = v67;
LABEL_14:
              *v3 = v6;
              v3[1] = v56;

              v57 = OUTLINED_FUNCTION_57();
              sub_1E37E9E48(v57, v58);
              goto LABEL_15;
            }

LABEL_13:
            v6 = 0;
            v56 = 0;
            goto LABEL_14;
          }
        }
      }
    }

    sub_1E329505C(&v68);
    goto LABEL_13;
  }

LABEL_15:
  sub_1E37EA628(v4, v5);
  return v6;
}

uint64_t sub_1E3CEF080(uint64_t a1)
{
  OUTLINED_FUNCTION_18_25(a1);
  *v1 = sub_1E3CEEE10();
  v1[1] = v2;
  return OUTLINED_FUNCTION_116();
}

id sub_1E3CEF0CC@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC8VideosUI34LibFamilySharingEpisodeMediaEntity____lazy_storage___showImage;
  v4 = *(v1 + OBJC_IVAR____TtC8VideosUI34LibFamilySharingEpisodeMediaEntity____lazy_storage___showImage);
  v5 = *(v1 + OBJC_IVAR____TtC8VideosUI34LibFamilySharingEpisodeMediaEntity____lazy_storage___showImage + 8);
  v6 = *(v1 + OBJC_IVAR____TtC8VideosUI34LibFamilySharingEpisodeMediaEntity____lazy_storage___showImage + 16);
  v7 = *(v1 + OBJC_IVAR____TtC8VideosUI34LibFamilySharingEpisodeMediaEntity____lazy_storage___showImage + 24);
  v8 = v4;
  v9 = v5;
  v10 = *(v1 + OBJC_IVAR____TtC8VideosUI34LibFamilySharingEpisodeMediaEntity____lazy_storage___showImage + 32);
  v11 = v6;
  v12 = v7;
  v13 = *(v1 + OBJC_IVAR____TtC8VideosUI34LibFamilySharingEpisodeMediaEntity____lazy_storage___showImage + 32);
  if (v10 == 254)
  {
    v21 = *(v1 + OBJC_IVAR____TtC8VideosUI34LibFamilySharingEpisodeMediaEntity____lazy_storage___showImage + 24);
    v22 = *(v1 + OBJC_IVAR____TtC8VideosUI34LibFamilySharingEpisodeMediaEntity____lazy_storage___showImage + 16);
    v23 = *(v1 + OBJC_IVAR____TtC8VideosUI34LibFamilySharingEpisodeMediaEntity____lazy_storage___showImage + 8);
    v24 = *(v1 + OBJC_IVAR____TtC8VideosUI34LibFamilySharingEpisodeMediaEntity____lazy_storage___showImage);
    v8 = *(v1 + OBJC_IVAR____TtC8VideosUI31LibFamilySharingBaseMediaEntity_attributeDict);
    if (v8)
    {
      type metadata accessor for LibFamilySharingBaseMediaEntity(0);
      v14 = sub_1E38AE948(v8);
      if (v14)
      {
        sub_1E38AEAB0(v14, v25);
        v8 = v25[0];
        v9 = v25[1];
        v11 = v25[2];
        v12 = v25[3];
        v13 = v26;

LABEL_7:
        v19 = *(v3 + 8);
        v20 = *v3;
        v15 = *(v3 + 16);
        v18 = *(v3 + 24);
        *v3 = v8;
        *(v3 + 8) = v9;
        *(v3 + 16) = v11;
        *(v3 + 24) = v12;
        v16 = *(v3 + 32);
        *(v3 + 32) = v13;
        sub_1E37C5358(v8, v9, v11, v12, v13);
        sub_1E37C52A4(v20, v19, v15, v18, v16);
        v5 = v23;
        v4 = v24;
        v7 = v21;
        v6 = v22;
        goto LABEL_8;
      }

      v8 = 0;
    }

    v9 = 0;
    v11 = 0;
    v12 = 0;
    v13 = -1;
    goto LABEL_7;
  }

LABEL_8:
  result = sub_1E37C55C0(v4, v5, v6, v7, v10);
  *a1 = v8;
  *(a1 + 8) = v9;
  *(a1 + 16) = v11;
  *(a1 + 24) = v12;
  *(a1 + 32) = v13;
  return result;
}

void (*sub_1E3CEF228())(void ***a1, uint64_t a2)
{
  v0 = __swift_coroFrameAllocStub(0x30uLL);
  OUTLINED_FUNCTION_13_117(v0);
  sub_1E3CEF0CC(v1);
  return sub_1E3CEF280;
}

uint64_t sub_1E3CEF28C()
{
  OUTLINED_FUNCTION_12_107();
  if (v4)
  {
    if (*(v1 + OBJC_IVAR____TtC8VideosUI31LibFamilySharingBaseMediaEntity_attributeDict))
    {
      sub_1E38ADF58();

      OUTLINED_FUNCTION_6_141(v5, v6, v7, v8, v9, v10, v11, v12, v18, v20, v22);

      if (*(&v23 + 1))
      {
        if (swift_dynamicCast())
        {
          v13 = v19;
          v14 = v21;
LABEL_10:
          v15 = *v3;
          v16 = v3[1];
          *v3 = v13;
          v3[1] = v14;

          sub_1E37E9E48(v15, v16);
          goto LABEL_11;
        }

LABEL_9:
        v13 = 0;
        v14 = 0;
        goto LABEL_10;
      }
    }

    else
    {
      v22 = 0u;
      v23 = 0u;
    }

    sub_1E329505C(&v22);
    goto LABEL_9;
  }

LABEL_11:
  sub_1E37EA628(v0, v2);
  return OUTLINED_FUNCTION_34();
}

uint64_t sub_1E3CEF390(uint64_t a1)
{
  OUTLINED_FUNCTION_18_25(a1);
  *v1 = sub_1E3CEF28C();
  v1[1] = v2;
  return OUTLINED_FUNCTION_116();
}

double sub_1E3CEF3DC@<D0>(uint64_t a1@<X8>)
{
  sub_1E3CEF660(v4);
  result = *v4;
  v3 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v3;
  *(a1 + 32) = v5;
  return result;
}

void sub_1E3CEF42C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = v2 + *a2;
  v6 = *v4;
  v5 = *(v4 + 8);
  v7 = *(v4 + 16);
  v8 = *(v4 + 24);
  v9 = *(a1 + 16);
  *v4 = *a1;
  *(v4 + 16) = v9;
  v10 = *(v4 + 32);
  *(v4 + 32) = v3;
  sub_1E37C52A4(v6, v5, v7, v8, v10);
}

void (*sub_1E3CEF458())(void ***a1, uint64_t a2)
{
  v0 = __swift_coroFrameAllocStub(0x30uLL);
  OUTLINED_FUNCTION_13_117(v0);
  sub_1E3CEF660(v1);
  return sub_1E3CEF4B0;
}

void sub_1E3CEF4BC(void ***a1, char a2, void *a3)
{
  v5 = *a1;
  v6 = (*a1)[5];
  v7 = **a1;
  v8 = v5[1];
  v9 = v5[2];
  v10 = v5[3];
  v11 = *(v5 + 32);
  v12 = v6 + *a3;
  v13 = *(v12 + 16);
  v14 = *(v12 + 24);
  v15 = *(v12 + 32);
  *v12 = v7;
  *(v12 + 8) = v8;
  *(v12 + 16) = v9;
  *(v12 + 24) = v10;
  *(v12 + 32) = v11;
  if (a2)
  {
    sub_1E37C5358(v7, v8, v9, v10, v11);
    v16 = OUTLINED_FUNCTION_57();
    sub_1E37C52A4(v16, v17, v13, v14, v15);
    sub_1E37C52B8(*v5, v5[1], v5[2], v5[3], *(v5 + 32));
  }

  else
  {
    v18 = OUTLINED_FUNCTION_57();
    sub_1E37C52A4(v18, v19, v13, v14, v15);
  }

  free(v5);
}

uint64_t sub_1E3CEF58C(uint64_t a1)
{
  OUTLINED_FUNCTION_18_25(a1);
  *v1 = sub_1E3CEF824();
  v1[1] = v2;
  return OUTLINED_FUNCTION_116();
}

uint64_t sub_1E3CEF5D8(void *a1, char a2, void *a3)
{
  v3 = a1[1];
  v4 = (a1[2] + *a3);
  *v4 = *a1;
  v4[1] = v3;
  if (a2)
  {

    v5 = OUTLINED_FUNCTION_57();
    sub_1E37E9E48(v5, v6);
  }

  else
  {
    v8 = OUTLINED_FUNCTION_57();

    return sub_1E37E9E48(v8, v9);
  }
}

id sub_1E3CEF660@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC8VideosUI34LibFamilySharingEpisodeMediaEntity____lazy_storage____imageData;
  v4 = *(v1 + OBJC_IVAR____TtC8VideosUI34LibFamilySharingEpisodeMediaEntity____lazy_storage____imageData);
  v5 = *(v1 + OBJC_IVAR____TtC8VideosUI34LibFamilySharingEpisodeMediaEntity____lazy_storage____imageData + 8);
  v6 = *(v1 + OBJC_IVAR____TtC8VideosUI34LibFamilySharingEpisodeMediaEntity____lazy_storage____imageData + 16);
  v7 = *(v1 + OBJC_IVAR____TtC8VideosUI34LibFamilySharingEpisodeMediaEntity____lazy_storage____imageData + 24);
  v8 = v4;
  v9 = v5;
  v10 = *(v1 + OBJC_IVAR____TtC8VideosUI34LibFamilySharingEpisodeMediaEntity____lazy_storage____imageData + 32);
  v11 = v6;
  v12 = v7;
  v13 = *(v1 + OBJC_IVAR____TtC8VideosUI34LibFamilySharingEpisodeMediaEntity____lazy_storage____imageData + 32);
  if (v10 == 254)
  {
    v24 = *(v1 + OBJC_IVAR____TtC8VideosUI34LibFamilySharingEpisodeMediaEntity____lazy_storage____imageData + 24);
    v25 = *(v1 + OBJC_IVAR____TtC8VideosUI34LibFamilySharingEpisodeMediaEntity____lazy_storage____imageData + 16);
    v26 = *(v1 + OBJC_IVAR____TtC8VideosUI34LibFamilySharingEpisodeMediaEntity____lazy_storage____imageData + 8);
    v27 = *(v1 + OBJC_IVAR____TtC8VideosUI34LibFamilySharingEpisodeMediaEntity____lazy_storage____imageData);
    v14 = *(v1 + OBJC_IVAR____TtC8VideosUI31LibFamilySharingBaseMediaEntity_attributeDict);
    if (v14)
    {
      v15 = sub_1E38ADF28();
      v16 = *v15;
      v17 = v15[1];

      sub_1E3277E60(v16, v17, v14, &v29);

      if (*(&v30 + 1))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
        if (swift_dynamicCast())
        {
          type metadata accessor for LibFamilySharingBaseMediaEntity(0);
          sub_1E38AEAB0(v28[0], &v29);
          v9 = *(&v29 + 1);
          v8 = v29;
          v12 = *(&v30 + 1);
          v11 = v30;
          v13 = v31;

LABEL_9:
          *&v29 = v8;
          *(&v29 + 1) = v9;
          *&v30 = v11;
          *(&v30 + 1) = v12;
          v31 = v13;
          v18 = *v3;
          v19 = *(v3 + 24);
          v22 = *(v3 + 16);
          v23 = *(v3 + 8);
          *v3 = v8;
          *(v3 + 8) = v9;
          *(v3 + 16) = v11;
          *(v3 + 24) = v12;
          v20 = *(v3 + 32);
          *(v3 + 32) = v13;
          sub_1E37C5550(&v29, v28);
          sub_1E37C52A4(v18, v23, v22, v19, v20);
          v5 = v26;
          v4 = v27;
          v7 = v24;
          v6 = v25;
          LOBYTE(v10) = -2;
          goto LABEL_10;
        }

LABEL_8:
        v8 = 0;
        v9 = 0;
        v11 = 0;
        v12 = 0;
        v13 = -1;
        goto LABEL_9;
      }
    }

    else
    {
      v29 = 0u;
      v30 = 0u;
    }

    sub_1E329505C(&v29);
    goto LABEL_8;
  }

LABEL_10:
  result = sub_1E37C55C0(v4, v5, v6, v7, v10);
  *a1 = v8;
  *(a1 + 8) = v9;
  *(a1 + 16) = v11;
  *(a1 + 24) = v12;
  *(a1 + 32) = v13;
  return result;
}

uint64_t sub_1E3CEF824()
{
  OUTLINED_FUNCTION_12_107();
  if (v4)
  {
    if (*(v1 + OBJC_IVAR____TtC8VideosUI31LibFamilySharingBaseMediaEntity_attributeDict))
    {
      sub_1E38ADEC0();

      OUTLINED_FUNCTION_6_141(v5, v6, v7, v8, v9, v10, v11, v12, v36, v40, v44);

      if (*(&v45 + 1))
      {
        v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
        if (OUTLINED_FUNCTION_15_106(v13, v14, v15, v13, v16, v17, v18, v19, v37, v41, v44))
        {
          sub_1E38ADF7C();

          v20 = OUTLINED_FUNCTION_34();
          sub_1E3277E60(v20, v21, v38, v22);

          v30 = OUTLINED_FUNCTION_15_106(v23, v24, v25, MEMORY[0x1E69E6158], v26, v27, v28, v29, v38, v42, v44);
          if (v30)
          {
            v31 = v39;
          }

          else
          {
            v31 = 0;
          }

          if (v30)
          {
            v32 = v43;
          }

          else
          {
            v32 = 0;
          }

          goto LABEL_16;
        }

LABEL_15:
        v31 = 0;
        v32 = 0;
LABEL_16:
        v33 = *v3;
        v34 = v3[1];
        *v3 = v31;
        v3[1] = v32;

        sub_1E37E9E48(v33, v34);
        goto LABEL_17;
      }
    }

    else
    {
      v44 = 0u;
      v45 = 0u;
    }

    sub_1E329505C(&v44);
    goto LABEL_15;
  }

LABEL_17:
  sub_1E37EA628(v0, v2);
  return OUTLINED_FUNCTION_34();
}

uint64_t sub_1E3CEF9AC(uint64_t a1)
{
  v2 = v1 + OBJC_IVAR____TtC8VideosUI34LibFamilySharingEpisodeMediaEntity____lazy_storage___seasonNumber;
  *v2 = 0;
  *(v2 + 8) = 256;
  v3 = v1 + OBJC_IVAR____TtC8VideosUI34LibFamilySharingEpisodeMediaEntity____lazy_storage___episodeNumber;
  *v3 = 0;
  *(v3 + 8) = 256;
  v4 = v1 + OBJC_IVAR____TtC8VideosUI34LibFamilySharingEpisodeMediaEntity____lazy_storage___fractionalEpisodeNumber;
  *v4 = 0;
  *(v4 + 8) = 256;
  *(v1 + OBJC_IVAR____TtC8VideosUI34LibFamilySharingEpisodeMediaEntity____lazy_storage___showAdamID) = xmmword_1E4297170;
  *(v1 + OBJC_IVAR____TtC8VideosUI34LibFamilySharingEpisodeMediaEntity____lazy_storage___seasonAdamID) = xmmword_1E4297170;
  v5 = v1 + OBJC_IVAR____TtC8VideosUI34LibFamilySharingEpisodeMediaEntity____lazy_storage___showImage;
  *v5 = 0u;
  *(v5 + 16) = 0u;
  *(v5 + 32) = -2;
  *(v1 + OBJC_IVAR____TtC8VideosUI34LibFamilySharingEpisodeMediaEntity____lazy_storage___showTitle) = xmmword_1E4297170;
  v6 = v1 + OBJC_IVAR____TtC8VideosUI34LibFamilySharingEpisodeMediaEntity____lazy_storage____imageData;
  *v6 = 0u;
  *(v6 + 16) = 0u;
  *(v6 + 32) = -2;
  *(v1 + OBJC_IVAR____TtC8VideosUI34LibFamilySharingEpisodeMediaEntity____lazy_storage____contentDescription) = xmmword_1E4297170;
  return sub_1E40A4B20(a1);
}

uint64_t sub_1E3CEFA3C()
{
  v1 = OUTLINED_FUNCTION_9_115(OBJC_IVAR____TtC8VideosUI34LibFamilySharingEpisodeMediaEntity____lazy_storage___showAdamID);
  sub_1E37E9E48(v1, v2);
  v3 = OUTLINED_FUNCTION_9_115(OBJC_IVAR____TtC8VideosUI34LibFamilySharingEpisodeMediaEntity____lazy_storage___seasonAdamID);
  sub_1E37E9E48(v3, v4);
  OUTLINED_FUNCTION_7_156((v0 + OBJC_IVAR____TtC8VideosUI34LibFamilySharingEpisodeMediaEntity____lazy_storage___showImage));
  v5 = OUTLINED_FUNCTION_9_115(OBJC_IVAR____TtC8VideosUI34LibFamilySharingEpisodeMediaEntity____lazy_storage___showTitle);
  sub_1E37E9E48(v5, v6);
  OUTLINED_FUNCTION_7_156((v0 + OBJC_IVAR____TtC8VideosUI34LibFamilySharingEpisodeMediaEntity____lazy_storage____imageData));
  v7 = OUTLINED_FUNCTION_9_115(OBJC_IVAR____TtC8VideosUI34LibFamilySharingEpisodeMediaEntity____lazy_storage____contentDescription);

  return sub_1E37E9E48(v7, v8);
}

uint64_t sub_1E3CEFAB4()
{
  v0 = sub_1E40A4FF8();
  sub_1E37E9E48(*(v0 + OBJC_IVAR____TtC8VideosUI34LibFamilySharingEpisodeMediaEntity____lazy_storage___showAdamID), *(v0 + OBJC_IVAR____TtC8VideosUI34LibFamilySharingEpisodeMediaEntity____lazy_storage___showAdamID + 8));
  sub_1E37E9E48(*(v0 + OBJC_IVAR____TtC8VideosUI34LibFamilySharingEpisodeMediaEntity____lazy_storage___seasonAdamID), *(v0 + OBJC_IVAR____TtC8VideosUI34LibFamilySharingEpisodeMediaEntity____lazy_storage___seasonAdamID + 8));
  OUTLINED_FUNCTION_7_156((v0 + OBJC_IVAR____TtC8VideosUI34LibFamilySharingEpisodeMediaEntity____lazy_storage___showImage));
  sub_1E37E9E48(*(v0 + OBJC_IVAR____TtC8VideosUI34LibFamilySharingEpisodeMediaEntity____lazy_storage___showTitle), *(v0 + OBJC_IVAR____TtC8VideosUI34LibFamilySharingEpisodeMediaEntity____lazy_storage___showTitle + 8));
  OUTLINED_FUNCTION_7_156((v0 + OBJC_IVAR____TtC8VideosUI34LibFamilySharingEpisodeMediaEntity____lazy_storage____imageData));
  sub_1E37E9E48(*(v0 + OBJC_IVAR____TtC8VideosUI34LibFamilySharingEpisodeMediaEntity____lazy_storage____contentDescription), *(v0 + OBJC_IVAR____TtC8VideosUI34LibFamilySharingEpisodeMediaEntity____lazy_storage____contentDescription + 8));
  return v0;
}

uint64_t sub_1E3CEFB3C()
{
  v0 = sub_1E3CEFAB4();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

unint64_t sub_1E3CEFC68(uint64_t a1)
{
  result = sub_1E3CEFC90();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1E3CEFC90()
{
  result = qword_1ECF372C0;
  if (!qword_1ECF372C0)
  {
    type metadata accessor for LibFamilySharingEpisodeMediaEntity(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF372C0);
  }

  return result;
}

uint64_t type metadata accessor for LibFamilySharingEpisodeMediaEntity(uint64_t a1)
{
  result = qword_1ECF5F0E0;
  if (!qword_1ECF5F0E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

BOOL sub_1E3CEFDA0()
{
  v0 = sub_1E4207784();

  return v0 != 0;
}

uint64_t sub_1E3CEFDEC()
{
  sub_1E4207B44();
  sub_1E4206014();
  return sub_1E4207BA4();
}

uint64_t sub_1E3CEFE60(uint64_t a1)
{
  sub_1E4207B44();
  sub_1E4206014();
  return sub_1E4207BA4();
}

BOOL sub_1E3CEFEB0@<W0>(_BYTE *a1@<X8>)
{
  result = sub_1E3CEFDA0();
  *a1 = result;
  return result;
}

uint64_t sub_1E3CEFF34(char a1)
{
  result = swift_beginAccess();
  *(v1 + 128) = a1;
  return result;
}

uint64_t sub_1E3CEFFF8()
{
  type metadata accessor for TextLayout();
  *(v0 + 104) = sub_1E383BCC0();
  *(v0 + 112) = sub_1E383BCC0();
  type metadata accessor for ImageLayout();
  *(v0 + 120) = sub_1E3BD61D8();
  *(v0 + 128) = 0;
  *(v0 + 136) = sub_1E3BD61D8();
  *(v0 + 144) = sub_1E3BD61D8();
  v1 = sub_1E3C2F9A0();

  sub_1E3CF01A4();

  return v1;
}

uint64_t sub_1E3CF007C()
{
  OUTLINED_FUNCTION_8();
  (*(v0 + 1744))();
}

double sub_1E3CF00DC()
{

  return result;
}

uint64_t sub_1E3CF0124()
{
  v0 = sub_1E3C36C6C();

  return v0;
}

uint64_t sub_1E3CF0174()
{
  v0 = sub_1E3CF0124();

  return MEMORY[0x1EEE6BDC0](v0, 152, 7);
}

uint64_t sub_1E3CF01A4()
{
  v1 = v0;
  OUTLINED_FUNCTION_8();
  (*(v2 + 800))(5);
  OUTLINED_FUNCTION_36();
  (*(v3 + 336))(0x404B000000000000, 0);
  sub_1E39537A8();
  v121[0] = v4;
  v121[1] = v5;
  v121[2] = v6;
  v121[3] = v7;
  v122 = 0;
  (*(*v0 + 560))(v121);
  v119[0] = sub_1E3952C64();
  v119[1] = v8;
  v119[2] = v9;
  v119[3] = v10;
  v120 = 0;
  OUTLINED_FUNCTION_8();
  (*(v11 + 160))(v119);
  v12 = [objc_opt_self() isSUIEnabled];
  if (v12)
  {
    v13 = 10.0;
  }

  else
  {
    v13 = 13.0;
  }

  if (v12)
  {
    v14 = 16.0;
  }

  else
  {
    v14 = 15.0;
  }

  v15 = v0[14];
  OUTLINED_FUNCTION_8();
  (*(v16 + 1696))(17);
  OUTLINED_FUNCTION_36();
  (*(v17 + 2056))(1, 0);
  OUTLINED_FUNCTION_36();
  (*(v18 + 1792))(10);
  OUTLINED_FUNCTION_36();
  (*(v19 + 2032))(1);
  v20 = sub_1E3E5FD88();
  v21 = *v20;
  v22 = *(*v15 + 680);
  v23 = *v20;
  v22(v21);
  sub_1E3952C58();
  v101[0] = v24;
  v101[1] = v25;
  v101[2] = v26;
  v101[3] = v27;
  LOBYTE(v101[4]) = 0;
  v116 = 0u;
  v117 = 0u;
  v118 = 1;
  v113 = 0u;
  v114 = 0u;
  v115 = 1;
  v110 = 0u;
  v111 = 0u;
  v112 = 1;
  sub_1E3952C58();
  v105 = v28;
  v106 = v29;
  v107 = v30;
  v108 = v31;
  v109 = 0;
  *v102 = v14;
  v102[1] = 0;
  *&v102[2] = v13;
  v102[3] = 0x4020000000000000;
  v103 = 0;
  type metadata accessor for UIEdgeInsets();
  v33 = v32;
  sub_1E3C2FCB8(v101, &v116, &v113, &v110, &v105, v102, v32, __src);
  memcpy(v101, __src, 0xE9uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_36();
  (*(v34 + 1600))(v101, 0, v35 & 1, v33);
  v36 = v1[13];
  OUTLINED_FUNCTION_36();
  (*(v37 + 2056))(1, 0);
  v38 = sub_1E3E5FDEC();
  v39 = *v38;
  v40 = *(*v36 + 680);
  v41 = *v38;
  v40(v39);
  OUTLINED_FUNCTION_36();
  (*(v42 + 1696))(19);
  sub_1E3952C58();
  __src[0] = v43;
  __src[1] = v44;
  __src[2] = v45;
  __src[3] = v46;
  LOBYTE(__src[4]) = 0;
  OUTLINED_FUNCTION_8();
  (*(v47 + 160))(__src);
  v48 = v1[17];
  OUTLINED_FUNCTION_36();
  (*(v49 + 256))(0x4041000000000000, 0);
  OUTLINED_FUNCTION_36();
  (*(v50 + 440))(0x3FF0000000000000, 0);
  OUTLINED_FUNCTION_36();
  v52 = (*(v51 + 1808))(1);
  v52.n128_u64[0] = 4.0;
  v101[0] = j__OUTLINED_FUNCTION_7_78(v52);
  v101[1] = v53;
  v101[2] = v54;
  v101[3] = v55;
  LOBYTE(v101[4]) = 0;
  v56 = (*(*v48 + 560))(v101);
  v56.n128_u64[0] = 0.5;
  *&v116 = j__OUTLINED_FUNCTION_7_78(v56);
  *(&v116 + 1) = v57;
  *&v117 = v58;
  *(&v117 + 1) = v59;
  v118 = 0;
  (*(*v48 + 1856))(&v116);
  v60 = [objc_opt_self() whiteColor];
  v61 = [v60 colorWithAlphaComponent_];

  OUTLINED_FUNCTION_36();
  (*(v62 + 1832))(v61);
  v105 = v14;
  v106 = 0;
  v107 = v13;
  v108 = 0x4024000000000000;
  v109 = 0;
  OUTLINED_FUNCTION_8();
  (*(v63 + 160))(&v105);
  v64 = *v20;
  v65 = *(*v48 + 680);
  v66 = *v20;
  v65(v64);
  OUTLINED_FUNCTION_36();
  (*(v67 + 2072))(15);
  OUTLINED_FUNCTION_36();
  (*(v68 + 2168))(10);
  v69 = v1[18];
  OUTLINED_FUNCTION_36();
  v71 = (*(v70 + 1808))(1);
  v71.n128_u64[0] = 4.0;
  *&v113 = j__OUTLINED_FUNCTION_7_78(v71);
  *(&v113 + 1) = v72;
  *&v114 = v73;
  *(&v114 + 1) = v74;
  v115 = 0;
  (*(*v69 + 560))(&v113);
  OUTLINED_FUNCTION_8();
  (*(v75 + 160))(&v105);
  v76 = *v20;
  v77 = *(*v69 + 680);
  v78 = v76;
  v77(v76);
  OUTLINED_FUNCTION_36();
  (*(v79 + 2072))(15);
  OUTLINED_FUNCTION_36();
  (*(v80 + 2168))(10);
  v81 = v1[15];
  OUTLINED_FUNCTION_36();
  (*(v82 + 2072))(17);
  OUTLINED_FUNCTION_36();
  v84 = (*(v83 + 2168))(10);
  v84.n128_u64[0] = 4.0;
  *&v110 = j__OUTLINED_FUNCTION_7_78(v84);
  *(&v110 + 1) = v85;
  *&v111 = v86;
  *(&v111 + 1) = v87;
  v112 = 0;
  (*(*v81 + 560))(&v110);
  OUTLINED_FUNCTION_8();
  (*(v88 + 160))(&v105);
  v89 = *v38;
  v90 = *(*v81 + 680);
  v91 = *v38;
  v90(v89);
  type metadata accessor for RelationalLayout();
  sub_1E4177030();
  v92.n128_u64[0] = 2.0;
  j__OUTLINED_FUNCTION_7_78(v92);
  nullsub_1();
  sub_1E41776B0(26, v93, v94, v95, v96);
  OUTLINED_FUNCTION_36();
  v98 = *(v97 + 1424);

  v98(v99);

  sub_1E3C37CBC(v1[14], 23);
  sub_1E3C37CBC(v1[13], 26);
  sub_1E3C37CBC(v1[17], 39);
  sub_1E3C37CBC(v1[18], 39);
  return sub_1E3C37CBC(v1[15], 31);
}

unint64_t sub_1E3CF0C5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF372C8;
  if (!qword_1ECF372C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF372C8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ToastLayout.ToastLayoutType(_BYTE *result, int a2, int a3)
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

void sub_1E3CF0D84()
{
  OUTLINED_FUNCTION_31_1();
  v40 = v1;
  v42 = v2;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF372D0, &unk_1E42CB3E0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v39 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D568, &qword_1E42E11E0);
  OUTLINED_FUNCTION_17_2(v6);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_128();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF372D8, &unk_1E42CB3F0);
  OUTLINED_FUNCTION_0_10();
  v10 = v9;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v39 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D550, &qword_1E42E1060);
  OUTLINED_FUNCTION_17_2(v14);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v39 - v16;
  v18 = type metadata accessor for ViewModelLinkEntity(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_5();
  v22 = (v21 - v20);

  sub_1E3CF1174();
  if (__swift_getEnumTagSinglePayload(v17, 1, v18) == 1)
  {
    sub_1E325F6F0(v17, &qword_1ECF2D550, &qword_1E42E1060);
    v23 = OUTLINED_FUNCTION_32_0();
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(v23, v24);
    OUTLINED_FUNCTION_2();
    (*(v26 + 16))(v5, v40, v25);
    swift_storeEnumTagMultiPayload();
    v27 = OUTLINED_FUNCTION_12_108(&qword_1ECF372E8);
    v43 = v25;
    v44 = v27;
    OUTLINED_FUNCTION_11_112();
    OUTLINED_FUNCTION_45_45();
    sub_1E4201F44();
  }

  else
  {
    sub_1E3CF57F8(v17, v22, type metadata accessor for ViewModelLinkEntity);
    v28 = v22[1];
    v43 = *v22;
    v44 = v28;
    OUTLINED_FUNCTION_0_217();
    sub_1E3CF1538(v29, v30, &unk_1E42CB4A8);

    sub_1E41FDCB4();
    sub_1E41FDCC4();
    OUTLINED_FUNCTION_114();
    __swift_storeEnumTagSinglePayload(v31, v32, v33, v34);
    v35 = OUTLINED_FUNCTION_32_0();
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(v35, v36);
    v38 = OUTLINED_FUNCTION_12_108(&qword_1ECF372E8);
    MEMORY[0x1E690D600](v0, v37, v38);
    sub_1E325F6F0(v0, &qword_1ECF2D568, &qword_1E42E11E0);
    (*(v10 + 16))(v5, v13, v8);
    swift_storeEnumTagMultiPayload();
    v43 = v37;
    v44 = v38;
    OUTLINED_FUNCTION_11_112();
    OUTLINED_FUNCTION_45_45();
    sub_1E4201F44();
    (*(v10 + 8))(v13, v8);
    sub_1E3CF56F0();
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3CF1174()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v4 = type metadata accessor for ViewModelLinkEntity(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v8 = (v7 - v6);
  v10 = *(v9 + 28);
  *(v7 - v6 + v10) = 0;
  type metadata accessor for LibLockupViewModel(0);
  v11 = swift_dynamicCastClass();
  if (!v11)
  {
    v23 = (*(*v1 + 552))();
    if (v23)
    {
      v24 = v23;
      v39 = &unk_1F5D7C0A8;
      v40 = &off_1F5D7BC88;
      LOBYTE(v37) = 0;
      v25 = MEMORY[0x1E69E7CA0];
      v26 = OUTLINED_FUNCTION_47_39();
      sub_1E3F9F164(v26, v24, v25 + 8);

      __swift_destroy_boxed_opaque_existential_1(&v37);
      if (*(&v42 + 1))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
        if (swift_dynamicCast())
        {
          v27 = v37;
          v8[2] = sub_1E3CF3550(v37, 3);
          v8[3] = v28;
          v39 = &unk_1F5D7C0A8;
          v40 = &off_1F5D7BC88;
          LOBYTE(v37) = 7;
          v29 = OUTLINED_FUNCTION_47_39();
          sub_1E3F9F164(v29, v27, v25 + 8);

          if (*(&v42 + 1))
          {
            if (swift_dynamicCast())
            {
              v30 = v35;
              v31 = v36;
              __swift_destroy_boxed_opaque_existential_1(&v37);
LABEL_19:
              *v8 = v30;
              v8[1] = v31;
              sub_1E3CF1C5C();

              goto LABEL_3;
            }

            __swift_destroy_boxed_opaque_existential_1(&v37);
          }

          else
          {
            __swift_destroy_boxed_opaque_existential_1(&v37);
            sub_1E325F6F0(&v41, &unk_1ECF296E0, &unk_1E4298030);
          }

          v30 = 0;
          v31 = 0xE000000000000000;
          goto LABEL_19;
        }

LABEL_14:
        OUTLINED_FUNCTION_32_2();
        __swift_storeEnumTagSinglePayload(v32, v33, v34, v4);
        goto LABEL_15;
      }
    }

    else
    {

      v41 = 0u;
      v42 = 0u;
    }

    sub_1E325F6F0(&v41, &unk_1ECF296E0, &unk_1E4298030);
    goto LABEL_14;
  }

  *(v8 + v10) = 1;
  v12 = v11[37];
  v13 = v11[38];
  v14 = *(*v11 + 1208);

  v8[2] = v14(v15);
  v8[3] = v16;
  OUTLINED_FUNCTION_32_57();
  v37 = v17;
  v38 = v18;
  MEMORY[0x1E69109E0](v12, v13);

  v19 = v38;
  *v8 = v37;
  v8[1] = v19;

  sub_1E3CF1994();

LABEL_3:
  sub_1E3CF5854(v8, v3, type metadata accessor for ViewModelLinkEntity);
  OUTLINED_FUNCTION_114();
  __swift_storeEnumTagSinglePayload(v20, v21, v22, v4);
  sub_1E3CF56F0();
LABEL_15:
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3CF14B0()
{
  v0 = OUTLINED_FUNCTION_173();
  type metadata accessor for ViewModelLinkEntity(v0);
  OUTLINED_FUNCTION_0_217();
  sub_1E3CF1538(v1, v2, &unk_1E42CB4A8);

  return sub_1E41FDCB4();
}

uint64_t sub_1E3CF1538(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E3CF15A4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF372F8, &qword_1E42CB408);
  OUTLINED_FUNCTION_17_2(v1);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37300, &unk_1E42CB410);
  OUTLINED_FUNCTION_17_2(v3);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  v5 = sub_1E41FE294();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_35_3();
  v7 = sub_1E4205EC4();
  v8 = OUTLINED_FUNCTION_17_2(v7);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  sub_1E4205EB4();
  OUTLINED_FUNCTION_58_4();
  sub_1E4205EA4();
  if (!*(v0 + 24))
  {
    sub_1E3CF1788();
  }

  sub_1E4205E94();

  OUTLINED_FUNCTION_58_4();
  sub_1E4205EA4();
  sub_1E41FE284();
  OUTLINED_FUNCTION_32_2();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v5);
  sub_1E41FDCD4();
  OUTLINED_FUNCTION_32_2();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
  OUTLINED_FUNCTION_53();
  return sub_1E41FDCE4();
}

void sub_1E3CF1788()
{
  v0 = sub_1E41FDC74();
  OUTLINED_FUNCTION_0_10();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_4_6();
  v6 = v4 - v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v22 - v8;
  type metadata accessor for ViewModelLinkEntity(0);
  sub_1E41FDC94();
  (*(v2 + 16))(v6, v9, v0);
  v10 = OUTLINED_FUNCTION_11_6();
  v12 = v11(v10);
  if (v12 == *MEMORY[0x1E695A138])
  {
    v13 = 0xE800000000000000;
    v14 = 0x6569766F4D2E5654;
  }

  else if (v12 == *MEMORY[0x1E695A140] || v12 == *MEMORY[0x1E695A130])
  {
    v13 = 0xE900000000000077;
    v14 = 0x6F685356542E5654;
  }

  else
  {
    v16 = OUTLINED_FUNCTION_11_6();
    v17(v16);
    v13 = 0xE800000000000000;
    v14 = 0x6F656469562E5654;
  }

  v18 = [objc_opt_self() sharedInstance];
  if (v18)
  {
    v19 = v18;
    sub_1E3741090(v14, v13, v18);
    v21 = v20;

    if (v21)
    {
      (*(v2 + 8))(v9, v0);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1E3CF1994()
{
  OUTLINED_FUNCTION_31_1();
  OUTLINED_FUNCTION_156();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0, &unk_1E42A9420);
  OUTLINED_FUNCTION_17_2(v4);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  v7 = v32 - v6;
  v33 = sub_1E41FDC74();
  OUTLINED_FUNCTION_0_10();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  v34 = v12 - v11;
  v13 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_5();
  v19 = v18 - v17;
  v20 = sub_1E324FBDC();
  (*(v15 + 16))(v19, v20, v13);

  v21 = sub_1E41FFC94();
  v22 = sub_1E42067E4();

  if (os_log_type_enabled(v21, v22))
  {
    OUTLINED_FUNCTION_13_13();
    v23 = swift_slowAlloc();
    v32[2] = v3;
    v24 = v23;
    OUTLINED_FUNCTION_15_4();
    v25 = swift_slowAlloc();
    v32[1] = v7;
    v26 = v1;
    v27 = v25;
    v35 = v25;
    *v24 = 136315138;
    *(v24 + 4) = sub_1E3270FC8(v26, v0, &v35);
    _os_log_impl(&dword_1E323F000, v21, v22, "SiriLinks: Registering library media item for %s", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v27);
    OUTLINED_FUNCTION_7_17();
    MEMORY[0x1E69143B0]();
    OUTLINED_FUNCTION_7_17();
    MEMORY[0x1E69143B0]();
  }

  (*(v15 + 8))(v19, v13);
  (*(v9 + 104))(v34, *MEMORY[0x1E695A148], v33);
  sub_1E41FE414();
  OUTLINED_FUNCTION_32_2();
  __swift_storeEnumTagSinglePayload(v28, v29, v30, v31);

  sub_1E41FDC84();
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3CF1C5C()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0, &unk_1E42A9420);
  OUTLINED_FUNCTION_17_2(v5);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  v44 = &v42 - v7;
  v8 = sub_1E41FDC74();
  v9 = OUTLINED_FUNCTION_17_2(v8);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  v43 = v11 - v10;
  v12 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_128();
  v16 = (*(*v2 + 552))();
  v17 = MEMORY[0x1E69E7CA0];
  if (!v16)
  {
    v49 = 0u;
    v50 = 0u;
    goto LABEL_6;
  }

  v18 = v16;
  v47 = &unk_1F5D7C0A8;
  v48 = &off_1F5D7BC88;
  LOBYTE(v46[0]) = 0;
  v19 = OUTLINED_FUNCTION_47_39();
  sub_1E3F9F164(v19, v18, v17 + 8);

  __swift_destroy_boxed_opaque_existential_1(v46);
  if (!*(&v50 + 1))
  {
LABEL_6:
    sub_1E325F6F0(&v49, &unk_1ECF296E0, &unk_1E4298030);
    goto LABEL_7;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
  if (swift_dynamicCast())
  {
    v20 = v46[0];
    goto LABEL_8;
  }

LABEL_7:
  v20 = sub_1E4205CB4();
LABEL_8:
  v21 = sub_1E324FBDC();
  (*(v14 + 16))(v0, v21, v12);

  v22 = sub_1E41FFC94();
  v23 = sub_1E42067E4();

  if (os_log_type_enabled(v22, v23))
  {
    v42 = v4;
    OUTLINED_FUNCTION_13_13();
    v24 = swift_slowAlloc();
    OUTLINED_FUNCTION_15_4();
    v25 = swift_slowAlloc();
    v46[0] = v25;
    *v24 = 136315138;
    if (v2[3])
    {
      v26 = v2[2];
      v27 = v2[3];
    }

    else
    {
      v27 = 0xE200000000000000;
      v26 = 16718;
    }

    v28 = sub_1E3270FC8(v26, v27, v46);

    *(v24 + 4) = v28;
    _os_log_impl(&dword_1E323F000, v22, v23, "SiriLinks: Registering media item for %s", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v25);
    OUTLINED_FUNCTION_7_17();
    MEMORY[0x1E69143B0]();
    OUTLINED_FUNCTION_7_17();
    MEMORY[0x1E69143B0]();

    (*(v14 + 8))(v0, v12);
    v17 = MEMORY[0x1E69E7CA0];
  }

  else
  {

    (*(v14 + 8))(v0, v12);
  }

  sub_1E3CF3550(v20, 8);
  sub_1E3CF3550(v20, 3);
  v47 = &unk_1F5D7C0A8;
  v48 = &off_1F5D7BC88;
  LOBYTE(v46[0]) = 2;
  v29 = OUTLINED_FUNCTION_47_39();
  sub_1E3F9F164(v29, v20, v17 + 8);
  if (*(&v50 + 1))
  {
    swift_dynamicCast();
    __swift_destroy_boxed_opaque_existential_1(v46);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v46);
    sub_1E325F6F0(&v49, &unk_1ECF296E0, &unk_1E4298030);
  }

  v30 = OUTLINED_FUNCTION_11_6();
  sub_1E3CF253C(v30, v31, v32, v33, v34, v35, v36, v37, v42, v43, v44, v45);

  sub_1E3CF32D4(v20, v44);

  sub_1E41FE414();
  OUTLINED_FUNCTION_114();
  __swift_storeEnumTagSinglePayload(v38, v39, v40, v41);
  sub_1E41FDC84();
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3CF2110()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0, &unk_1E42A9420);
  v6 = OUTLINED_FUNCTION_17_2(v5);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_4_6();
  v9 = v7 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v42 - v11;
  sub_1E41FDC74();
  OUTLINED_FUNCTION_0_10();
  v49 = v14;
  v50 = v13;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_128();
  v48 = type metadata accessor for SiriMediaDomainInfo(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_5();
  v18 = (v17 - v16);
  v19 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v21 = v20;
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_5();
  v25 = v24 - v23;
  sub_1E324FBDC();
  v26 = OUTLINED_FUNCTION_57_24();
  v47 = v19;
  v27(v26);
  sub_1E3CF5854(v2, v18, type metadata accessor for SiriMediaDomainInfo);
  v28 = sub_1E41FFC94();
  v29 = sub_1E42067E4();
  if (os_log_type_enabled(v28, v29))
  {
    OUTLINED_FUNCTION_13_13();
    v30 = swift_slowAlloc();
    v44 = v0;
    v31 = v30;
    OUTLINED_FUNCTION_15_4();
    v32 = swift_slowAlloc();
    v46 = v4;
    v33 = v32;
    v51 = v32;
    *v31 = 136315138;
    v45 = v12;
    v43 = v9;
    v34 = *v18;
    v35 = v18[1];

    OUTLINED_FUNCTION_1_197();
    sub_1E3CF56F0();
    v36 = sub_1E3270FC8(v34, v35, &v51);
    v9 = v43;

    *(v31 + 4) = v36;
    v12 = v45;
    _os_log_impl(&dword_1E323F000, v28, v29, "SiriLinks: Retrieving media item for %s", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v33);
    OUTLINED_FUNCTION_7_17();
    MEMORY[0x1E69143B0]();
    v0 = v44;
    OUTLINED_FUNCTION_7_17();
    MEMORY[0x1E69143B0]();
  }

  else
  {

    OUTLINED_FUNCTION_1_197();
    sub_1E3CF56F0();
  }

  (*(v21 + 8))(v25, v47);
  v37 = v48;
  (*(v49 + 16))(v0, v2 + *(v48 + 20), v50);
  sub_1E38B2468(v2 + *(v37 + 24), v9);
  v38 = sub_1E41FE414();
  if (__swift_getEnumTagSinglePayload(v9, 1, v38) == 1)
  {

    OUTLINED_FUNCTION_58_4();
    sub_1E41FE344();
    if (__swift_getEnumTagSinglePayload(v9, 1, v38) != 1)
    {
      sub_1E325F6F0(v9, &unk_1ECF363C0, &unk_1E42A9420);
    }
  }

  else
  {
    (*(*(v38 - 8) + 32))(v12, v9, v38);
  }

  OUTLINED_FUNCTION_114();
  __swift_storeEnumTagSinglePayload(v39, v40, v41, v38);
  sub_1E41FDC84();
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3CF253C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_31_1();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v20 = v19;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_5();
  v24 = v23 - v22;
  v25 = *MEMORY[0x1E695A148];
  v26 = sub_1E41FDC74();
  (*(*(v26 - 8) + 104))(v17, v25, v26);
  if (!v13)
  {
LABEL_20:
    OUTLINED_FUNCTION_25_2();
    return;
  }

  sub_1E3C7EAD8(4);
  if (v27 == v15 && v28 == v13)
  {
  }

  else
  {
    v30 = OUTLINED_FUNCTION_18_83(v27);

    if ((v30 & 1) == 0)
    {
      sub_1E3C7EAD8(5);
      if (v31 == v15 && v32 == v13)
      {
      }

      else
      {
        v34 = OUTLINED_FUNCTION_18_83(v31);

        if ((v34 & 1) == 0)
        {
          sub_1E3C7EAD8(6);
          if (v35 == v15 && v36 == v13)
          {
          }

          else
          {
            v38 = OUTLINED_FUNCTION_18_83(v35);

            if ((v38 & 1) == 0)
            {
              sub_1E324FBDC();
              v39 = OUTLINED_FUNCTION_57_24();
              v40(v39);

              v41 = sub_1E41FFC94();
              v42 = sub_1E42067D4();

              if (os_log_type_enabled(v41, v42))
              {
                OUTLINED_FUNCTION_13_13();
                v43 = swift_slowAlloc();
                OUTLINED_FUNCTION_15_4();
                v44 = swift_slowAlloc();
                v55 = v44;
                *v43 = 136315138;
                *(v43 + 4) = sub_1E3270FC8(v15, v13, &v55);
                _os_log_impl(&dword_1E323F000, v41, v42, "SiriLinks: No associated IntentMediaItem.ItemType found for %s", v43, 0xCu);
                __swift_destroy_boxed_opaque_existential_1(v44);
                OUTLINED_FUNCTION_7_17();
                MEMORY[0x1E69143B0]();
                OUTLINED_FUNCTION_7_17();
                MEMORY[0x1E69143B0]();
              }

              (*(v20 + 8))(v24, v18);
              goto LABEL_20;
            }
          }
        }
      }
    }
  }

  v45 = OUTLINED_FUNCTION_29_65();
  v46(v45);
  OUTLINED_FUNCTION_25_2();

  v51(v47, v48, v49, v50, v51, v52, v53, v54, a9, a10, a11, a12);
}

uint64_t sub_1E3CF2858()
{
  OUTLINED_FUNCTION_24();
  v0[9] = v1;
  v0[10] = v2;
  v0[8] = v3;
  v4 = sub_1E41FFCB4();
  v0[11] = v4;
  OUTLINED_FUNCTION_8_0(v4);
  v0[12] = v5;
  v0[13] = OUTLINED_FUNCTION_86_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0, &unk_1E42A9420);
  OUTLINED_FUNCTION_17_2(v6);
  v0[14] = OUTLINED_FUNCTION_86_0();
  v7 = sub_1E41FDC74();
  v0[15] = v7;
  OUTLINED_FUNCTION_8_0(v7);
  v0[16] = v8;
  v0[17] = swift_task_alloc();
  v0[18] = swift_task_alloc();
  OUTLINED_FUNCTION_169();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1E3CF2990()
{
  OUTLINED_FUNCTION_134();
  v1 = v0[10];
  v2 = HIBYTE(v1) & 0xF;
  if ((v1 & 0x2000000000000000) == 0)
  {
    v2 = v0[9] & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    sub_1E3CF5774();

    OUTLINED_FUNCTION_32_0();
    v3 = sub_1E3A47920();
    v0[19] = v3;
    v4 = [objc_opt_self() wlkDefaultQueue];
    v0[20] = v4;
    [v4 addOperation_];
    v5 = swift_task_alloc();
    v0[21] = v5;
    *(v5 + 16) = v3;
    v6 = swift_task_alloc();
    v0[22] = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37310, &qword_1E42CB428);
    *v6 = v0;
    v6[1] = sub_1E3CF2C30;
    OUTLINED_FUNCTION_169();

    return MEMORY[0x1EEE6DE38](v7, v8, v9, 0xD000000000000016, v10, v11, v5, v12);
  }

  else
  {
    v14 = v0[12];
    v13 = v0[13];
    v15 = v0[11];
    v16 = sub_1E324FBDC();
    (*(v14 + 16))(v13, v16, v15);
    v17 = sub_1E41FFC94();
    v18 = sub_1E42067F4();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_1E323F000, v17, v18, "SiriLinkRoutingModifier: Error decoding library ID", v19, 2u);
      OUTLINED_FUNCTION_7_17();
      MEMORY[0x1E69143B0]();
    }

    v21 = v0[12];
    v20 = v0[13];
    v22 = v0[11];

    (*(v21 + 8))(v20, v22);
    type metadata accessor for SiriMediaDomainInfo(0);
    OUTLINED_FUNCTION_32_2();
    __swift_storeEnumTagSinglePayload(v23, v24, v25, v26);

    OUTLINED_FUNCTION_54();

    return v27();
  }
}

uint64_t sub_1E3CF2C30()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_7();
  *v5 = v4;
  *(v3 + 184) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_169();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1E3CF2D38()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 40);
  if (!v1)
  {
    v6 = *(v0 + 152);

LABEL_12:

LABEL_13:

    type metadata accessor for SiriMediaDomainInfo(0);
    OUTLINED_FUNCTION_32_2();
    goto LABEL_28;
  }

  if (!v2)
  {
    v7 = *(v0 + 152);

    goto LABEL_12;
  }

  if (!*(v0 + 56))
  {
    v12 = *(v0 + 152);

    goto LABEL_13;
  }

  v3 = *(v0 + 32);
  v30 = *(v0 + 16);
  v4 = v3 == 0x6569766F4DLL && v2 == 0xE500000000000000;
  if (v4 || (OUTLINED_FUNCTION_24_72(), (sub_1E42079A4() & 1) != 0))
  {
    v5 = MEMORY[0x1E695A138];
  }

  else
  {
    v13 = v3 == 0x65646F73697045 && v2 == 0xE700000000000000;
    if (v13 || (OUTLINED_FUNCTION_24_72(), (sub_1E42079A4() & 1) != 0) || (v3 == 2003789907 ? (v14 = v2 == 0xE400000000000000) : (v14 = 0), v14 || (OUTLINED_FUNCTION_24_72(), (sub_1E42079A4() & 1) != 0)))
    {
      v5 = MEMORY[0x1E695A130];
    }

    else
    {
      v5 = MEMORY[0x1E695A130];
      if (v3 != 0x6E6F73616553 || v2 != 0xE600000000000000)
      {
        OUTLINED_FUNCTION_24_72();
        v28 = sub_1E42079A4();

        v15 = MEMORY[0x1E695A148];
        if (v28)
        {
          v15 = v5;
        }

        goto LABEL_27;
      }
    }
  }

  v15 = v5;
LABEL_27:
  v16 = *(v0 + 160);
  v29 = *(v0 + 152);
  v17 = *(v0 + 136);
  v18 = *(v0 + 144);
  v20 = *(v0 + 120);
  v19 = *(v0 + 128);
  v21 = *(v0 + 112);
  v22 = *(v0 + 64);
  (*(v19 + 104))(v18, *v15, v20);
  (*(v19 + 16))(v17, v18, v20);
  sub_1E41FE404();

  (*(v19 + 8))(v18, v20);
  *v22 = v30;
  *(v22 + 1) = v1;
  v23 = type metadata accessor for SiriMediaDomainInfo(0);
  (*(v19 + 32))(&v22[v23[5]], v17, v20);
  sub_1E327D738(v21, &v22[v23[6]]);
  v24 = &v22[v23[7]];
  *v24 = 0;
  *(v24 + 1) = 0xE000000000000000;
  OUTLINED_FUNCTION_114();
  v11 = v23;
LABEL_28:
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);

  OUTLINED_FUNCTION_54();

  return v25();
}

uint64_t sub_1E3CF306C()
{
  OUTLINED_FUNCTION_134();
  v1 = *(v0 + 152);

  OUTLINED_FUNCTION_54();

  return v2();
}

void sub_1E3CF3110()
{
  OUTLINED_FUNCTION_156();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF373E0, &qword_1E42CBB58);
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_35_3();
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v5 + 16))(v2, v1, v3);
  v8 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  (*(v5 + 32))(v9 + v8, v2, v3);
  aBlock[4] = sub_1E3CF6404;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E329EEC4;
  aBlock[3] = &block_descriptor_95;
  v10 = _Block_copy(aBlock);

  [v0 setCompletionBlock_];
  _Block_release(v10);
}

uint64_t sub_1E3CF32D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0, &unk_1E42A9420);
  v5 = OUTLINED_FUNCTION_17_2(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_4_6();
  v8 = v6 - v7;
  MEMORY[0x1EEE9AC00](v9);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v23 - v11 + 8;
  v13 = sub_1E41FE414();
  OUTLINED_FUNCTION_32_2();
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v13);
  v23[3] = &unk_1F5D7C0A8;
  v23[4] = &off_1F5D7BC88;
  LOBYTE(v23[0]) = 1;
  sub_1E3F9F164(v23, a1, MEMORY[0x1E69E7CA0] + 8);
  if (v25)
  {
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_1(v23);
      sub_1E41FE404();

      sub_1E325F6F0(v12, &unk_1ECF363C0, &unk_1E42A9420);
      v17 = OUTLINED_FUNCTION_53();
      sub_1E327D738(v17, v18);
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(v23);
    }
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v23);
    sub_1E325F6F0(v24, &unk_1ECF296E0, &unk_1E4298030);
  }

  v19 = OUTLINED_FUNCTION_11_6();
  sub_1E38B2468(v19, v20);
  if (__swift_getEnumTagSinglePayload(v8, 1, v13) == 1)
  {
    OUTLINED_FUNCTION_58_4();
    sub_1E41FE344();
    sub_1E325F6F0(v12, &unk_1ECF363C0, &unk_1E42A9420);
    result = __swift_getEnumTagSinglePayload(v8, 1, v13);
    if (result != 1)
    {
      return sub_1E325F6F0(v8, &unk_1ECF363C0, &unk_1E42A9420);
    }
  }

  else
  {
    sub_1E325F6F0(v12, &unk_1ECF363C0, &unk_1E42A9420);
    return (*(*(v13 - 8) + 32))(a2, v8, v13);
  }

  return result;
}

uint64_t sub_1E3CF3550(uint64_t a1, char a2)
{
  v3[3] = &unk_1F5D7C0A8;
  v3[4] = &off_1F5D7BC88;
  LOBYTE(v3[0]) = a2;
  sub_1E3F9F164(v3, a1, MEMORY[0x1E69E7CA0] + 8);
  if (v5)
  {
    swift_dynamicCast();
    __swift_destroy_boxed_opaque_existential_1(v3);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v3);
    sub_1E325F6F0(v4, &unk_1ECF296E0, &unk_1E4298030);
  }

  return OUTLINED_FUNCTION_32_0();
}

uint64_t sub_1E3CF361C()
{
  OUTLINED_FUNCTION_27_2();
  v2 = v1;
  v4 = *(v3 + 24);
  sub_1E41FDCA4();
  OUTLINED_FUNCTION_2();
  (*(v5 + 16))(v2, v0 + v4);
  OUTLINED_FUNCTION_54();

  return v6();
}

uint64_t sub_1E3CF36B8(uint64_t a1)
{
  OUTLINED_FUNCTION_0_217();
  v4 = sub_1E3CF1538(v2, v3, &unk_1E42CB4A8);

  return MEMORY[0x1EEDB2C58](a1, v4);
}

uint64_t sub_1E3CF3728()
{
  OUTLINED_FUNCTION_134();
  OUTLINED_FUNCTION_52_35();
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_14_3(v4);
  *v5 = v6;
  v5[1] = sub_1E327C238;

  return MEMORY[0x1EEDB3F60](v3, v2, v1, v0);
}

uint64_t sub_1E3CF37D4(uint64_t a1)
{
  OUTLINED_FUNCTION_0_217();
  v4 = sub_1E3CF1538(v2, v3, &unk_1E42CB6F8);

  return MEMORY[0x1EEDB3F68](a1, v4);
}

uint64_t sub_1E3CF3840()
{
  OUTLINED_FUNCTION_24();
  v0[18] = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0, &unk_1E42A9420);
  OUTLINED_FUNCTION_17_2(v2);
  v0[19] = OUTLINED_FUNCTION_86_0();
  v3 = type metadata accessor for ViewModelLinkEntity(0);
  v0[20] = v3;
  OUTLINED_FUNCTION_8_0(v3);
  v0[21] = v4;
  v0[22] = OUTLINED_FUNCTION_86_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37318, &unk_1E42CB438);
  OUTLINED_FUNCTION_17_2(v5);
  v0[23] = OUTLINED_FUNCTION_86_0();
  v6 = type metadata accessor for SiriMediaDomainInfo(0);
  v0[24] = v6;
  OUTLINED_FUNCTION_17_2(v6);
  v0[25] = swift_task_alloc();
  v0[26] = swift_task_alloc();
  v7 = sub_1E41FFCB4();
  v0[27] = v7;
  OUTLINED_FUNCTION_8_0(v7);
  v0[28] = v8;
  v0[29] = swift_task_alloc();
  v0[30] = swift_task_alloc();
  v0[31] = swift_task_alloc();
  v0[32] = swift_task_alloc();
  v0[33] = swift_task_alloc();
  v0[34] = swift_task_alloc();
  OUTLINED_FUNCTION_169();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1E3CF3A08()
{
  v96 = v0;
  v1 = v0[34];
  v3 = v0[27];
  v2 = v0[28];
  v4 = sub_1E324FBDC();
  v0[35] = v4;
  v5 = *(v2 + 16);
  v0[36] = v5;
  v0[37] = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v3);

  v6 = sub_1E41FFC94();
  v7 = sub_1E42067D4();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[18];
    OUTLINED_FUNCTION_13_13();
    v9 = swift_slowAlloc();
    OUTLINED_FUNCTION_15_4();
    v10 = swift_slowAlloc();
    *v9 = 136315138;
    v11 = *(v8 + 16);
    v92 = v5;
    v95[0] = v10;
    v90 = v4;
    if (v11)
    {
    }

    v87 = v0[34];
    v17 = v0[27];
    v16 = v0[28];
    v18 = OUTLINED_FUNCTION_17_11();
    v21 = sub_1E3270FC8(v18, v19, v20);

    *(v9 + 4) = v21;
    OUTLINED_FUNCTION_41_45(&dword_1E323F000, v22, v7, "SiriLinks: requested entity for identifier: %s");
    __swift_destroy_boxed_opaque_existential_1(v10);
    OUTLINED_FUNCTION_7_17();
    MEMORY[0x1E69143B0]();
    OUTLINED_FUNCTION_7_17();
    MEMORY[0x1E69143B0]();

    v15 = *(v16 + 8);
    v15(v87, v17);
    v4 = v90;
    v5 = v92;
  }

  else
  {
    v12 = v0[34];
    v13 = v0[27];
    v14 = v0[28];

    v15 = *(v14 + 8);
    v15(v12, v13);
  }

  v0[38] = v15;
  v23 = v0[18];
  if (v23[2])
  {
    v25 = v23[4];
    v24 = v23[5];
  }

  else
  {
    v25 = 0;
    v24 = 0xE000000000000000;
  }

  v0[39] = v25;
  v0[40] = v24;
  OUTLINED_FUNCTION_24_72();
  if ((sub_1E3CF48AC(v26, v27, v28, v29) & 1) == 0)
  {
    v42 = HIBYTE(v24) & 0xF;
    if ((v24 & 0x2000000000000000) == 0)
    {
      v42 = v25 & 0xFFFFFFFFFFFFLL;
    }

    if (v42)
    {
      sub_1E3CF4A94(v25, v24);
      v43 = v0[27];
      v86 = v0[31];
      v89 = v15;
      v94 = v5;
      v51 = v0[25];
      v52 = v0[22];
      v81 = v0[24];
      v82 = v0[19];
      *(v52 + *(v0[20] + 28)) = 0;
      *v52 = v25;
      v52[1] = v24;
      v53 = v0[7];
      v84 = v0[6];
      v52[2] = v84;
      v52[3] = v53;

      sub_1E41FE404();
      v85 = v43;
      v55 = v0[8];
      v54 = v0[9];
      v91 = v4;
      v56 = v0[5];
      v79 = v0[4];
      v57 = v81;

      sub_1E3CF253C(v79, v56, v58, v59, v60, v61, v62, v63, v78, v79, v81, v82);

      sub_1E38B2468(v83, v51 + *(v57 + 24));
      v80 = v55;
      *v51 = v55;
      v51[1] = v54;
      v64 = v54;
      v65 = (v51 + *(v57 + 28));
      *v65 = v84;
      v65[1] = v53;

      sub_1E3CF2110();
      OUTLINED_FUNCTION_1_197();
      sub_1E3CF56F0();
      sub_1E325F6F0(v83, &unk_1ECF363C0, &unk_1E42A9420);
      v94(v86, v91, v85);
      sub_1E3CF57C0((v0 + 2), (v0 + 10));
      v66 = sub_1E41FFC94();
      v67 = sub_1E42067D4();
      sub_1E3CF5744((v0 + 2));
      v68 = os_log_type_enabled(v66, v67);
      v69 = v0[31];
      v70 = v0[27];
      if (v68)
      {
        OUTLINED_FUNCTION_13_13();
        v71 = swift_slowAlloc();
        OUTLINED_FUNCTION_15_4();
        v72 = swift_slowAlloc();
        v95[0] = v72;
        *v71 = 136315138;

        sub_1E3CF5744((v0 + 2));
        v73 = sub_1E3270FC8(v80, v64, v95);

        *(v71 + 4) = v73;
        OUTLINED_FUNCTION_42_52(&dword_1E323F000, v74, v67, "SiriLinks: Retrieved media item for %s");
        __swift_destroy_boxed_opaque_existential_1(v72);
        OUTLINED_FUNCTION_7_17();
        MEMORY[0x1E69143B0]();
        OUTLINED_FUNCTION_7_17();
        MEMORY[0x1E69143B0]();
      }

      else
      {
        sub_1E3CF5744((v0 + 2));
      }

      v89(v69, v70);
      v76 = v0[21];
      v75 = v0[22];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37320, &qword_1E42CB448);
      v77 = OUTLINED_FUNCTION_59_25();
      *(v77 + 16) = xmmword_1E4297BE0;
      v93 = v77;
      sub_1E3CF57F8(v75, v77 + v76, type metadata accessor for ViewModelLinkEntity);
LABEL_23:
      OUTLINED_FUNCTION_26_74();

      OUTLINED_FUNCTION_13_7();

      return v50(v93);
    }

LABEL_22:
    v93 = MEMORY[0x1E69E7CC0];
    goto LABEL_23;
  }

  sub_1E4206024();
  OUTLINED_FUNCTION_24_72();
  v30 = sub_1E4206054();

  v31 = sub_1E3CF49F0(v30, v25, v24);
  if ((v31 ^ v32) < 0x4000)
  {
    v33 = v0[32];
    v34 = v0[27];

    v5(v33, v4, v34);

    v35 = sub_1E41FFC94();
    v36 = sub_1E42067F4();

    if (os_log_type_enabled(v35, v36))
    {
      OUTLINED_FUNCTION_13_13();
      v88 = v15;
      v37 = swift_slowAlloc();
      OUTLINED_FUNCTION_15_4();
      v38 = swift_slowAlloc();
      v95[0] = v38;
      *v37 = 136315138;
      v39 = sub_1E3270FC8(v25, v24, v95);

      *(v37 + 4) = v39;
      OUTLINED_FUNCTION_42_52(&dword_1E323F000, v40, v36, "SiriLinkRoutingModifier:: Unable to obtain adamID for %s");
      __swift_destroy_boxed_opaque_existential_1(v38);
      OUTLINED_FUNCTION_7_17();
      MEMORY[0x1E69143B0]();
      OUTLINED_FUNCTION_7_17();
      MEMORY[0x1E69143B0]();

      v41 = OUTLINED_FUNCTION_34_54();
      v88(v41);
    }

    else
    {

      v49 = OUTLINED_FUNCTION_34_54();
      (v15)(v49);
    }

    goto LABEL_22;
  }

  v44 = MEMORY[0x1E6910920]();
  v46 = v45;

  v0[41] = v44;
  v0[42] = v46;
  v47 = swift_task_alloc();
  v0[43] = v47;
  *v47 = v0;
  v47[1] = sub_1E3CF4270;

  return sub_1E3CF2858();
}

uint64_t sub_1E3CF4270()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_7();
  *v5 = v4;
  *(v3 + 352) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_169();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1E3CF4384()
{
  v35 = v0;
  v1 = v0[23];
  v2 = v0[24];
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v1, 1, v2);
  v4 = v0[40];
  if (EnumTagSinglePayload == 1)
  {
    v5 = v0[36];
    v6 = v0[35];
    v7 = v0[33];
    v8 = v0[27];

    sub_1E325F6F0(v1, &qword_1ECF37318, &unk_1E42CB438);
    v5(v7, v6, v8);

    v9 = sub_1E41FFC94();
    v10 = sub_1E42067F4();

    v11 = os_log_type_enabled(v9, v10);
    v12 = v0[42];
    if (v11)
    {
      v13 = v0[41];
      v32 = v0[38];
      OUTLINED_FUNCTION_13_13();
      v14 = swift_slowAlloc();
      OUTLINED_FUNCTION_15_4();
      v15 = swift_slowAlloc();
      v34 = v15;
      *v14 = 136315138;
      v16 = sub_1E3270FC8(v13, v12, &v34);

      *(v14 + 4) = v16;
      OUTLINED_FUNCTION_42_52(&dword_1E323F000, v17, v10, "SiriLinks: library: unable to decode media item for adam id %s");
      __swift_destroy_boxed_opaque_existential_1(v15);
      OUTLINED_FUNCTION_7_17();
      MEMORY[0x1E69143B0]();
      OUTLINED_FUNCTION_7_17();
      MEMORY[0x1E69143B0]();

      v18 = OUTLINED_FUNCTION_34_54();
      v32(v18);
    }

    else
    {
      v27 = v0[38];
      v28 = v0[33];
      v29 = v0[27];

      v27(v28, v29);
    }

    v33 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v19 = v0[39];
    v21 = v0[25];
    v20 = v0[26];
    v22 = v0[20];

    sub_1E3CF57F8(v1, v20, type metadata accessor for SiriMediaDomainInfo);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37320, &qword_1E42CB448);
    v23 = OUTLINED_FUNCTION_59_25();
    *(v23 + 16) = xmmword_1E4297BE0;
    v33 = v23;
    v24 = (v23 + v1);
    sub_1E3CF5854(v20, v21, type metadata accessor for SiriMediaDomainInfo);
    *(v24 + *(v22 + 28)) = 0;
    *v24 = v19;
    v24[1] = v4;
    v25 = (v21 + *(v2 + 28));
    v26 = v25[1];
    v24[2] = *v25;
    v24[3] = v26;

    sub_1E3CF2110();
    sub_1E3CF56F0();
    sub_1E3CF56F0();
  }

  OUTLINED_FUNCTION_26_74();

  OUTLINED_FUNCTION_13_7();

  return v30(v33);
}

uint64_t sub_1E3CF46AC()
{
  v1 = *(v0 + 352);
  (*(v0 + 288))(*(v0 + 240), *(v0 + 280), *(v0 + 216));
  v2 = v1;
  v3 = sub_1E41FFC94();
  v4 = sub_1E42067F4();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 352);
  if (v5)
  {
    OUTLINED_FUNCTION_13_13();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    OUTLINED_FUNCTION_41_45(&dword_1E323F000, v11, v4, "SiriLinks: library:  unable to obtain media item for link entity [%@]");
    sub_1E325F6F0(v8, &unk_1ECF28E30, &qword_1E429E820);
    OUTLINED_FUNCTION_7_17();
    MEMORY[0x1E69143B0]();
    OUTLINED_FUNCTION_7_17();
    MEMORY[0x1E69143B0]();
  }

  else
  {
  }

  (*(v0 + 304))(*(v0 + 240), *(v0 + 216));

  OUTLINED_FUNCTION_13_7();
  v13 = MEMORY[0x1E69E7CC0];

  return v12(v13);
}

uint64_t sub_1E3CF48AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  do
  {
    while (1)
    {
      v4 = sub_1E42060A4();
      if (!v5)
      {

        sub_1E42060A4();
        v13 = v12;

        if (v13)
        {
          goto LABEL_15;
        }

        return 1;
      }

      v6 = v4;
      v7 = v5;
      v8 = sub_1E42060A4();
      if (!v9)
      {

        return 1;
      }

      if (v6 != v8 || v7 != v9)
      {
        break;
      }
    }

    v11 = sub_1E42079A4();
  }

  while ((v11 & 1) != 0);

LABEL_15:

  return 0;
}

unint64_t sub_1E3CF49F0(unint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v3 < result >> 14)
  {
    __break(1u);
  }

  else
  {
    v4 = sub_1E4206184();

    return v4;
  }

  return result;
}

void sub_1E3CF4A94(uint64_t a1, unint64_t a2)
{
  OUTLINED_FUNCTION_173();
  v7 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_35_3();
  v11 = sub_1E41FE444();
  if (v12 >> 60 == 15)
  {
    sub_1E3CF58B0(v11, v12, v13);
    swift_allocError();
    *v14 = 2;
    swift_willThrow();
  }

  else
  {
    v33 = v2;
    v34 = v9;
    sub_1E41FDE24();
    swift_allocObject();
    v15 = sub_1E41FDE14();
    sub_1E3CF5904(v15, v16, v17);
    sub_1E41FDE04();
    if (v3)
    {

      v18 = OUTLINED_FUNCTION_17_11();
      sub_1E38DCE1C(v18, v19);
    }

    else
    {
      v20 = sub_1E324FBDC();
      (*(v34 + 16))(v4, v20, v7);

      v21 = sub_1E41FFC94();
      v22 = sub_1E42067D4();

      v32 = v22;
      if (os_log_type_enabled(v21, v22))
      {
        OUTLINED_FUNCTION_13_13();
        v31 = v21;
        v23 = swift_slowAlloc();
        OUTLINED_FUNCTION_15_4();
        v24 = swift_slowAlloc();
        v39 = v24;
        *v23 = 136315138;
        *(v23 + 4) = sub_1E3270FC8(a1, a2, &v39);
        _os_log_impl(&dword_1E323F000, v31, v32, "SiriLinks: Retrieved media item for %s", v23, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v24);
        OUTLINED_FUNCTION_7_17();
        MEMORY[0x1E69143B0]();
        OUTLINED_FUNCTION_7_17();
        MEMORY[0x1E69143B0]();

        v25 = OUTLINED_FUNCTION_17_11();
        sub_1E38DCE1C(v25, v26);
      }

      else
      {

        v27 = OUTLINED_FUNCTION_17_11();
        sub_1E38DCE1C(v27, v28);
      }

      v29 = OUTLINED_FUNCTION_53();
      v30(v29);
      *v33 = v35;
      v33[1] = v36;
      v33[2] = v37;
      v33[3] = v38;
    }
  }
}

uint64_t sub_1E3CF4D6C()
{
  OUTLINED_FUNCTION_24();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E3CF6674;

  return sub_1E3CF3840();
}

uint64_t sub_1E3CF4DFC()
{
  OUTLINED_FUNCTION_27_2();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_14_3(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_38_41(v1);

  return MEMORY[0x1EEDB2EB0](v3);
}

uint64_t sub_1E3CF4E94()
{
  OUTLINED_FUNCTION_134();
  OUTLINED_FUNCTION_52_35();
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1E3CF4F44;

  return MEMORY[0x1EEDB2EC0](v4, v3, v1, v0);
}

uint64_t sub_1E3CF4F44()
{
  OUTLINED_FUNCTION_24();
  v3 = v2;
  OUTLINED_FUNCTION_39();
  v4 = *v1;
  OUTLINED_FUNCTION_7();
  *v5 = v4;

  OUTLINED_FUNCTION_13_7();
  if (!v0)
  {
    v6 = v3;
  }

  return v7(v6);
}

uint64_t sub_1E3CF5030()
{
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_156();
  v3 = swift_task_alloc();
  *(v2 + 16) = v3;
  v6 = sub_1E3CF5A74(v3, v4, v5);
  *v3 = v2;
  v3[1] = sub_1E327C238;

  return MEMORY[0x1EEDB2ED8](v1, v0, v6);
}

uint64_t sub_1E3CF50DC()
{
  OUTLINED_FUNCTION_27_2();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_14_3(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_38_41(v1);

  return MEMORY[0x1EEDB3B80](v3);
}

uint64_t sub_1E3CF517C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C725579616C70 && a2 == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_0_54(0x6C725579616C70, 0xE700000000000000) & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x657449616964656DLL && a2 == 0xED0000657079546DLL;
    if (v6 || (OUTLINED_FUNCTION_0_54(0x657449616964656DLL, 0xED0000657079546DLL) & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x657449616964656DLL && a2 == 0xEE00656C7469546DLL;
      if (v7 || (OUTLINED_FUNCTION_0_54(0x657449616964656DLL, 0xEE00656C7469546DLL) & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 25705 && a2 == 0xE200000000000000)
      {

        return 3;
      }

      else
      {
        v9 = OUTLINED_FUNCTION_0_54(25705, 0xE200000000000000);

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_1E3CF52AC(char a1)
{
  result = 0x6C725579616C70;
  switch(a1)
  {
    case 1:
    case 2:
      result = 0x657449616964656DLL;
      break;
    case 3:
      result = 25705;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1E3CF5334@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E3CF517C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E3CF5368(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1E3CF5958(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1E3CF53A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1E3CF5958(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1E3CF53E0@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37338, qword_1E42CB450);
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v28 - v9;
  v11 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E3CF5958(v11, v12, v13);
  sub_1E4207C04();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v37[0]) = 0;
  OUTLINED_FUNCTION_30_58();
  v14 = sub_1E4207834();
  v32 = v15;
  LOBYTE(v37[0]) = 1;
  OUTLINED_FUNCTION_30_58();
  v16 = sub_1E4207834();
  v31 = v17;
  v29 = v16;
  LOBYTE(v37[0]) = 2;
  OUTLINED_FUNCTION_30_58();
  v28 = sub_1E4207834();
  v30 = v18;
  v38 = 3;
  v19 = sub_1E4207834();
  v21 = v20;
  (*(v7 + 8))(v10, v5);
  v22 = v32;
  *&v33 = v14;
  *(&v33 + 1) = v32;
  v24 = v29;
  v23 = v30;
  *&v34 = v29;
  *(&v34 + 1) = v31;
  *&v35 = v28;
  *(&v35 + 1) = v30;
  *&v36 = v19;
  *(&v36 + 1) = v21;
  sub_1E3CF57C0(&v33, v37);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v37[0] = v14;
  v37[1] = v22;
  v37[2] = v24;
  v37[3] = v31;
  v37[4] = v28;
  v37[5] = v23;
  v37[6] = v19;
  v37[7] = v21;
  result = sub_1E3CF5744(v37);
  v26 = v34;
  *a2 = v33;
  a2[1] = v26;
  v27 = v36;
  a2[2] = v35;
  a2[3] = v27;
  return result;
}

double sub_1E3CF568C@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1E3CF53E0(a1, v7);
  if (!v2)
  {
    v5 = v7[1];
    *a2 = v7[0];
    a2[1] = v5;
    result = *&v8;
    v6 = v9;
    a2[2] = v8;
    a2[3] = v6;
  }

  return result;
}

uint64_t sub_1E3CF56F0()
{
  v1 = OUTLINED_FUNCTION_9_5();
  v2(v1);
  OUTLINED_FUNCTION_2();
  (*(v3 + 8))(v0);
  return v0;
}

unint64_t sub_1E3CF5774()
{
  result = qword_1ECF37308;
  if (!qword_1ECF37308)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECF37308);
  }

  return result;
}

uint64_t sub_1E3CF57F8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_2();
  v4 = OUTLINED_FUNCTION_32_0();
  v5(v4);
  return a2;
}

uint64_t sub_1E3CF5854(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_2();
  v4 = OUTLINED_FUNCTION_32_0();
  v5(v4);
  return a2;
}

unint64_t sub_1E3CF58B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF37328;
  if (!qword_1ECF37328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF37328);
  }

  return result;
}

unint64_t sub_1E3CF5904(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF37330;
  if (!qword_1ECF37330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF37330);
  }

  return result;
}

unint64_t sub_1E3CF5958(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF5F270[0];
  if (!qword_1ECF5F270[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECF5F270);
  }

  return result;
}

unint64_t sub_1E3CF5A74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF37358;
  if (!qword_1ECF37358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF37358);
  }

  return result;
}

unint64_t sub_1E3CF5C34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF373A0;
  if (!qword_1ECF373A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF373A0);
  }

  return result;
}

unint64_t sub_1E3CF5C8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF373A8;
  if (!qword_1ECF373A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF373A8);
  }

  return result;
}

unint64_t sub_1E3CF5D1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF373B0;
  if (!qword_1ECF373B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF373B0);
  }

  return result;
}

unint64_t sub_1E3CF5DAC()
{
  result = qword_1ECF373B8;
  if (!qword_1ECF373B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF373C0, qword_1E42CB7D0);
    sub_1E3CF1538(&qword_1ECF37378, type metadata accessor for ViewModelLinkEntity, &unk_1E42CB698);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF373B8);
  }

  return result;
}

unint64_t sub_1E3CF5E64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF373C8;
  if (!qword_1ECF373C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF373C8);
  }

  return result;
}

uint64_t sub_1E3CF5FA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(uint64_t), uint64_t a6)
{
  result = a4(319, a2, a3);
  if (v8 <= 0x3F)
  {
    result = a5(319);
    if (v9 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SiriLinkError(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1E3CF6128()
{
  result = qword_1ECF373D0;
  if (!qword_1ECF373D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF373D8, &qword_1E42CBA38);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF372E0, &qword_1E42CB400);
    sub_1E32752B0(&qword_1ECF372E8, &qword_1ECF372E0, &qword_1E42CB400, MEMORY[0x1E697FDF8]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF373D0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for LinkItem.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1E3CF6300(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF5FE10[0];
  if (!qword_1ECF5FE10[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECF5FE10);
  }

  return result;
}

unint64_t sub_1E3CF6358(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF5FF20;
  if (!qword_1ECF5FF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF5FF20);
  }

  return result;
}

unint64_t sub_1E3CF63B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF5FF28[0];
  if (!qword_1ECF5FF28[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECF5FF28);
  }

  return result;
}

void sub_1E3CF6404()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF373E0, &qword_1E42CBB58);
  OUTLINED_FUNCTION_17_2(v0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v4 = Strong, v5 = [Strong response], v4, v5))
  {
    v6 = [v5 type];
    v7 = sub_1E4205F14();
    v9 = v8;

    if (v7 == 0x6E6F73616553 && v9 == 0xE600000000000000)
    {

      v12 = &selRef_showID;
    }

    else
    {
      OUTLINED_FUNCTION_53();
      v11 = sub_1E42079A4();

      v12 = &selRef_canonicalID;
      if (v11)
      {
        v12 = &selRef_showID;
      }
    }

    v14 = [v5 *v12];
    sub_1E4205F14();

    v15 = [v5 type];
    sub_1E4205F14();

    v16 = [v5 url];
    sub_1E4205F14();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF373E0, &qword_1E42CBB58);
    sub_1E42063D4();
  }

  else
  {
    sub_1E3CF58B0(Strong, v2, v3);
    swift_allocError();
    *v13 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF373E0, &qword_1E42CBB58);
    sub_1E42063C4();
  }
}

double sub_1E3CF669C(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC8VideosUI18AccountMessageView_topInset;
  OUTLINED_FUNCTION_0_12(a1);
  return *(v1 + v2);
}

uint64_t sub_1E3CF66D0(double a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI18AccountMessageView_topInset;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1E3CF6770(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC8VideosUI18AccountMessageView_fakeRoundingContentBelow;
  OUTLINED_FUNCTION_0_12(a1);
  return *(v1 + v2);
}

uint64_t (*sub_1E3CF67B0(uint64_t a1))()
{
  *(a1 + 24) = v1;
  OUTLINED_FUNCTION_4();
  return sub_1E3CF7A50;
}

uint64_t sub_1E3CF6804(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC8VideosUI18AccountMessageView_showsSeparators;
  OUTLINED_FUNCTION_0_12(a1);
  return *(v1 + v2);
}

id sub_1E3CF6844(char a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  v2[v4] = a1;
  return [v2 vui_setNeedsLayout];
}

uint64_t (*sub_1E3CF68A0(uint64_t a1))()
{
  *(a1 + 24) = v1;
  OUTLINED_FUNCTION_4();
  return sub_1E3CF68F4;
}

id sub_1E3CF68F8(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 24);

    return [v5 vui_setNeedsLayout];
  }

  return result;
}

void *sub_1E3CF694C(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC8VideosUI18AccountMessageView_amsView;
  OUTLINED_FUNCTION_0_12(a1);
  v3 = *(v1 + v2);
  v4 = v3;
  return v3;
}

void sub_1E3CF6988(void *a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI18AccountMessageView_amsView;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = OBJC_IVAR____TtC8VideosUI18AccountMessageView_amsView;
  v6 = a1;
  swift_beginAccess();
  v7 = *(v1 + v5);
  if (!v7)
  {
    if (!v4)
    {
      goto LABEL_11;
    }

    [v4 removeFromSuperview];
    v10 = sub_1E3CF6E70();
    [v10 removeFromSuperview];

LABEL_7:
    v9 = [v4 setMaskView_];
    goto LABEL_8;
  }

  if (v7 == v4)
  {
    goto LABEL_11;
  }

  [v4 removeFromSuperview];
  v8 = sub_1E3CF6E70();
  [v8 removeFromSuperview];

  if (v4)
  {
    goto LABEL_7;
  }

LABEL_8:
  v11 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0xE0))(v9);
  if (v11)
  {
    v12 = v11;
    [v1 vui:v11 addSubview:0 oldView:?];
    v13 = sub_1E3CF6E70();
    [v12 vui:v13 addSubview:0 oldView:?];

    [v12 setMaskView_];
    [v12 setVuiClipsToBounds_];
    v14 = sub_1E3CF6D34();
    v15 = [v12 vuiBackgroundColor];
    [v14 setVuiBackgroundColor_];

    v16 = [v12 vuiBackgroundColor];
    [v1 setVuiBackgroundColor_];

    v17 = OUTLINED_FUNCTION_8_122();
    [v17 v18];
    v19 = sub_1E3CF6DA8();
    v20 = OUTLINED_FUNCTION_8_122();
    [v20 v21];

    v22 = OUTLINED_FUNCTION_8_122();
    [v22 v23];
    v24 = OUTLINED_FUNCTION_8_122();
    [v24 v25];
  }

  [v1 vui_setNeedsLayout];
LABEL_11:
}

void (*sub_1E3CF6C04(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = v1;
  v4 = OBJC_IVAR____TtC8VideosUI18AccountMessageView_amsView;
  swift_beginAccess();
  v5 = *(v1 + v4);
  v3[3] = v5;
  v6 = v5;
  return sub_1E3CF6C8C;
}

void sub_1E3CF6C8C(uint64_t a1, char a2)
{
  v2 = *a1;
  v4 = (*a1 + 24);
  v3 = *v4;
  if (a2)
  {
    v5 = v3;
    sub_1E3CF6988(v3);
  }

  else
  {
    sub_1E3CF6988(*(*a1 + 24));
  }

  free(v2);
}

id sub_1E3CF6CF8()
{
  result = [objc_opt_self() blackColor];
  qword_1ECF5FFB8 = result;
  return result;
}

id sub_1E3CF6D34()
{
  v1 = OBJC_IVAR____TtC8VideosUI18AccountMessageView____lazy_storage___backgroundExtensionView;
  v2 = *(v0 + OBJC_IVAR____TtC8VideosUI18AccountMessageView____lazy_storage___backgroundExtensionView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8VideosUI18AccountMessageView____lazy_storage___backgroundExtensionView);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1E3CF6DA8()
{
  v1 = OBJC_IVAR____TtC8VideosUI18AccountMessageView____lazy_storage___shadowView;
  v2 = *(v0 + OBJC_IVAR____TtC8VideosUI18AccountMessageView____lazy_storage___shadowView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8VideosUI18AccountMessageView____lazy_storage___shadowView);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
    v5 = [v4 vuiLayer];
    if (v5)
    {
      v6 = v5;
      [v5 setMaskedCorners_];
    }

    v7 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];

    v8 = *(v0 + v1);
    *(v0 + v1) = v7;
    v3 = v7;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

id sub_1E3CF6E70()
{
  v1 = OBJC_IVAR____TtC8VideosUI18AccountMessageView____lazy_storage___amsMaskingView;
  v2 = *(v0 + OBJC_IVAR____TtC8VideosUI18AccountMessageView____lazy_storage___amsMaskingView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8VideosUI18AccountMessageView____lazy_storage___amsMaskingView);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
    v5 = [objc_opt_self() blackColor];
    [v4 setVuiBackgroundColor_];

    v6 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

char *sub_1E3CF6F24()
{
  *&v0[OBJC_IVAR____TtC8VideosUI18AccountMessageView_topInset] = 0;
  v0[OBJC_IVAR____TtC8VideosUI18AccountMessageView_fakeRoundingContentBelow] = 1;
  v0[OBJC_IVAR____TtC8VideosUI18AccountMessageView_showsSeparators] = 0;
  *&v0[OBJC_IVAR____TtC8VideosUI18AccountMessageView_amsView] = 0;
  OUTLINED_FUNCTION_3_163();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *&v0[v1] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v3 = OBJC_IVAR____TtC8VideosUI18AccountMessageView_bottomSeparatorView;
  *&v0[v3] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v23.receiver = v0;
  v23.super_class = type metadata accessor for AccountMessageView();
  v4 = objc_msgSendSuper2(&v23, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v5 = sub_1E3CF6D34();
  v6 = OUTLINED_FUNCTION_7_157();
  [v6 v7];

  v8 = sub_1E3CF6DA8();
  v9 = OUTLINED_FUNCTION_7_157();
  [v9 v10];

  v11 = OUTLINED_FUNCTION_7_157();
  [v11 v12];
  v13 = OUTLINED_FUNCTION_7_157();
  [v13 v14];
  v15 = [*&v4[OBJC_IVAR____TtC8VideosUI18AccountMessageView____lazy_storage___shadowView] layer];
  [v15 setCornerRadius_];

  v16 = OUTLINED_FUNCTION_12_109();
  if (_MergedGlobals_7 != -1)
  {
    swift_once();
  }

  v17 = [qword_1ECF5FFB8 CGColor];
  [v16 setShadowColor_];

  v18 = OUTLINED_FUNCTION_12_109();
  [v18 setShadowRadius_];

  v19 = OUTLINED_FUNCTION_12_109();
  LODWORD(v20) = 0.25;
  [v19 setShadowOpacity_];

  v21 = OUTLINED_FUNCTION_12_109();
  [v21 setShadowPathIsBounds_];

  return v4;
}

void sub_1E3CF71D0()
{
  *(v0 + OBJC_IVAR____TtC8VideosUI18AccountMessageView_topInset) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI18AccountMessageView_fakeRoundingContentBelow) = 1;
  *(v0 + OBJC_IVAR____TtC8VideosUI18AccountMessageView_showsSeparators) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI18AccountMessageView_amsView) = 0;
  OUTLINED_FUNCTION_3_163();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *(v0 + v1) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v3 = OBJC_IVAR____TtC8VideosUI18AccountMessageView_bottomSeparatorView;
  *(v0 + v3) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  sub_1E42076B4();
  __break(1u);
}

double sub_1E3CF72C8(char a1, double a2, double a3)
{
  v4 = v3;
  v80.receiver = v3;
  v80.super_class = type metadata accessor for AccountMessageView();
  v8 = objc_msgSendSuper2(&v80, sel_vui_layoutSubviews_computationOnly_, a1 & 1, a2, a3);
  v9 = MEMORY[0x1E69E7D40];
  v10 = (*((*MEMORY[0x1E69E7D40] & *v3) + 0xE0))(v8);
  if (!v10)
  {
    return 0.0;
  }

  v11 = v10;
  sub_1E3A286D4();
  sub_1E41DA724();
  [v11 sizeThatFits_];
  v13 = v12;
  if ([objc_opt_self() isPad])
  {
    sub_1E3A51598();
  }

  OUTLINED_FUNCTION_16_1();
  v15 = *(v14 + 152);
  v16 = v15();
  OUTLINED_FUNCTION_33_2();
  Height = CGRectGetHeight(v81);
  v18 = v15();
  OUTLINED_FUNCTION_33_2();
  MaxY = CGRectGetMaxY(v82);
  OUTLINED_FUNCTION_33_2();
  v20 = CGRectGetMaxY(v83);
  v21 = *&v3[OBJC_IVAR____TtC8VideosUI18AccountMessageView_topSeparatorView];
  v79 = (*((*v9 & *v21) + 0x70))();
  [v3 safeAreaInsets];
  v76 = sub_1E3952BE0(v22, v23, v24, v25);
  [v3 safeAreaInsets];
  v77 = v26;
  [v3 safeAreaInsets];
  v78 = v27;
  if ((a1 & 1) == 0)
  {
    [v11 setFrame_];
    v28 = sub_1E3CF6E70();
    [v28 setFrame_];

    v29 = sub_1E3CF6D34();
    OUTLINED_FUNCTION_16_1();
    v31 = *(v30 + 176);
    v32 = v31();
    if (v32)
    {
      v33 = MaxY;
    }

    else
    {
      v33 = 0.0;
    }

    if (v32)
    {
      v34 = a2;
    }

    else
    {
      v34 = 0.0;
    }

    if (v32)
    {
      v35 = 20.0;
    }

    else
    {
      v35 = 0.0;
    }

    [v29 setFrame_];

    v36 = sub_1E3CF6DA8();
    v37 = v31();
    if (v37)
    {
      v38 = v20;
    }

    else
    {
      v38 = 0.0;
    }

    if (v37)
    {
      v39 = a2;
    }

    else
    {
      v39 = 0.0;
    }

    if (v37)
    {
      v40 = 20.0;
    }

    else
    {
      v40 = 0.0;
    }

    [v36 setFrame_];

    if (v31())
    {
      v41 = [*&v4[OBJC_IVAR____TtC8VideosUI18AccountMessageView____lazy_storage___backgroundExtensionView] layer];
      OUTLINED_FUNCTION_33_2();
      OUTLINED_FUNCTION_10_10();
      objc_opt_self();
      v42 = OUTLINED_FUNCTION_16();
      v45 = [v43 v44];
      v46 = OUTLINED_FUNCTION_16();
      v49 = [v47 v48];
      [v49 appendPath_];
      v50 = [objc_allocWithZone(MEMORY[0x1E69794A0]) init];
      v51 = *MEMORY[0x1E69797F8];
      [v50 setFillRule_];
      v52 = [v49 CGPath];
      [v50 setPath_];

      [v41 setMask_];
      v53 = [*&v4[OBJC_IVAR____TtC8VideosUI18AccountMessageView____lazy_storage___shadowView] layer];
      [v4 bounds];
      OUTLINED_FUNCTION_10_10();
      v54 = objc_opt_self();
      v55 = OUTLINED_FUNCTION_16();
      v58 = [v56 v57];
      v84.origin.x = OUTLINED_FUNCTION_16();
      Width = CGRectGetWidth(v84);
      v85.origin.x = OUTLINED_FUNCTION_16();
      v60 = [v54 bezierPathWithRect_];
      [v60 appendPath_];
      v61 = [objc_allocWithZone(MEMORY[0x1E69794A0]) init];
      [v61 setFillRule_];
      v62 = [v60 CGPath];
      [v61 setPath_];

      [v53 setMask_];
    }

    OUTLINED_FUNCTION_16_1();
    if ((*(v63 + 200))())
    {
      OUTLINED_FUNCTION_33_2();
      OUTLINED_FUNCTION_7_23();
      v64 = [v4 vuiIsRTL];
      v65.n128_u64[0] = 0;
      v66.n128_u64[0] = v77;
      v67.n128_f64[0] = a2 - v76;
      v68.n128_f64[0] = v79;
      OUTLINED_FUNCTION_11_113(v64, v66, v65, v67, v68);
      [v21 setFrame_];
      v69 = *&v4[OBJC_IVAR____TtC8VideosUI18AccountMessageView_bottomSeparatorView];
      OUTLINED_FUNCTION_33_2();
      OUTLINED_FUNCTION_7_23();
      v70 = [v4 vuiIsRTL];
      v71.n128_u64[0] = v78;
      v72.n128_f64[0] = v13 - v79;
      v73.n128_f64[0] = a2 - v76;
      v74.n128_f64[0] = v79;
      OUTLINED_FUNCTION_11_113(v70, v71, v72, v73, v74);
      [v69 setFrame_];
    }
  }

  return a2;
}

id sub_1E3CF799C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AccountMessageView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1E3CF7A74()
{
  OUTLINED_FUNCTION_8();
  if ((*(v0 + 392))())
  {
    type metadata accessor for EpisodeLockupLayout();
    OUTLINED_FUNCTION_19_3();
    result = swift_dynamicCastClass();
    if (result)
    {
      return result;
    }
  }

  type metadata accessor for EpisodeLockupLayout();
  return sub_1E3C62E3C();
}

uint64_t sub_1E3CF7AF0()
{
  if (!sub_1E39C408C())
  {
    return 0;
  }

  type metadata accessor for ImageViewModel();
  OUTLINED_FUNCTION_19_3();
  v0 = swift_dynamicCastClass();
  if (v0)
  {
    v6 = 0;
    v5 = MEMORY[0x1E69E6370];
    v4[0] = 1;
    OUTLINED_FUNCTION_8();
    v2 = *(v1 + 784);

    v2(&v6, v4, &unk_1F5D5E7B8, &off_1F5D5CC78);

    sub_1E325F69C(v4, &unk_1ECF296E0);
  }

  else
  {
  }

  return v0;
}

uint64_t sub_1E3CF7BE0()
{
  if (*(v0 + 192))
  {
    type metadata accessor for ViewModel();
    sub_1E3CFE54C(&qword_1EE23BA60, type metadata accessor for ViewModel, &protocol conformance descriptor for ViewModel);

    OUTLINED_FUNCTION_18_5();
    v1 = sub_1E4205E84();
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

void sub_1E3CF7C94()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v4 = v3;
  OUTLINED_FUNCTION_173();
  v5 = sub_1E4201274();
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  v11 = v10 - v9;
  type metadata accessor for AppEnvironment(0);
  sub_1E3CFE54C(&qword_1EE283350, type metadata accessor for AppEnvironment, &unk_1E42BD340);
  v0[27] = sub_1E4201754();
  v0[28] = v12;
  v13 = type metadata accessor for EpisodeLockup(0);
  v14 = *(v13 + 32);
  *(v0 + v14) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18, &qword_1E42982F0);
  swift_storeEnumTagMultiPayload();
  v15 = (v0 + *(v13 + 36));
  type metadata accessor for Router(0);
  OUTLINED_FUNCTION_38_42();
  sub_1E3CFE54C(v16, v17, &unk_1E42EB398);
  *v15 = sub_1E4201754();
  v15[1] = v18;
  *v0 = v4;
  memcpy(v0 + 1, v2, 0xC3uLL);
  type metadata accessor for ContextMenuModel(0);

  sub_1E375C1CC(v2, v23);
  v19 = sub_1E3E6CDBC();
  v21 = *v19;
  v20 = v19[1];
  v23[0] = v21;
  v23[1] = v20;

  sub_1E4207414();
  (*(v7 + 104))(v11, *MEMORY[0x1E697E660], v5);
  v22 = sub_1E4188148(v4, v11);
  sub_1E37E6F2C(v2);
  v0[26] = v22;
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3CF7EC0()
{
  OUTLINED_FUNCTION_31_1();
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37408, &qword_1E42CBBB8);
  OUTLINED_FUNCTION_0_10();
  v80 = v0;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_44();
  v81 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37410, &qword_1E42CBBC0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_44();
  v83 = v4;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37418, &qword_1E42CBBC8);
  OUTLINED_FUNCTION_0_10();
  v76 = v5;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_44();
  v77 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37420, &qword_1E42CBBD0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_44();
  v78 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37428, &qword_1E42CBBD8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_26_2();
  v11 = sub_1E42012F4();
  OUTLINED_FUNCTION_0_10();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_5();
  v17 = (v16 - v15);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37430, &qword_1E42CBBE0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_44();
  v82 = v20;
  sub_1E3CF7A74();
  OUTLINED_FUNCTION_2_1();
  v22 = (*(v21 + 2144))();

  if (v22)
  {
    type metadata accessor for EpisodeLockup(0);
    sub_1E3746E10(v17);
    v23 = sub_1E3B02A04();
    (*(v13 + 8))(v17, v11);
    if (v23)
    {
      sub_1E3CF86E8();
      OUTLINED_FUNCTION_19_1();
      sub_1E3743538(v24, v25, v26, v27);
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_34_55();
      OUTLINED_FUNCTION_21_1();
      sub_1E3CF9730(v28, v29, v30, v31);
      v18 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF37468, &qword_1E42CBBF8);
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF37470, &qword_1E42CBC00);
      OUTLINED_FUNCTION_11_114();
      sub_1E3CF9730(v32, &qword_1ECF37470, &qword_1E42CBC00, v33);
      OUTLINED_FUNCTION_3_8();
      OUTLINED_FUNCTION_17_12(v34, v35);
      OUTLINED_FUNCTION_5_15();
      OUTLINED_FUNCTION_17_12(v36, v37);
      OUTLINED_FUNCTION_63_22();
      sub_1E4201F44();
      OUTLINED_FUNCTION_21_1();
      sub_1E325F69C(v38, v39);
    }

    else
    {
      sub_1E3CF89F0();
      (*(v76 + 16))(v78, v77, v79);
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_34_55();
      sub_1E3CF9730(v53, v54, v55, v56);
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF37468, &qword_1E42CBBF8);
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF37470, &qword_1E42CBC00);
      OUTLINED_FUNCTION_11_114();
      sub_1E3CF9730(v57, &qword_1ECF37470, &qword_1E42CBC00, v58);
      OUTLINED_FUNCTION_3_8();
      OUTLINED_FUNCTION_17_12(v59, v60);
      OUTLINED_FUNCTION_5_15();
      OUTLINED_FUNCTION_17_12(v61, v62);
      OUTLINED_FUNCTION_63_22();
      sub_1E4201F44();
      (*(v76 + 8))(v77, v79);
    }

    sub_1E3743538(v18, v83, &qword_1ECF37430, &qword_1E42CBBE0);
    swift_storeEnumTagMultiPayload();
    sub_1E3CF950C();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF374A0, &qword_1E42CBC18);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF374A8, &qword_1E42CBC20);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF374B0, &qword_1E42CBC28);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF374B8, &qword_1E42CBC30);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF374C0, &qword_1E42CBC38);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF374C8, &qword_1E42CBC40);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF374D0, &qword_1E42CBC48);
    OUTLINED_FUNCTION_15_108();
    sub_1E374AD40(v63, &qword_1ECF374D0, &qword_1E42CBC48, v64);
    OUTLINED_FUNCTION_2_2();
    OUTLINED_FUNCTION_17_12(v65, v66);
    OUTLINED_FUNCTION_10_6();
    OUTLINED_FUNCTION_17_12(v67, v68);
    OUTLINED_FUNCTION_3_8();
    OUTLINED_FUNCTION_17_12(v69, v70);
    OUTLINED_FUNCTION_5_15();
    OUTLINED_FUNCTION_17_12(v71, v72);
    OUTLINED_FUNCTION_15_10();
    OUTLINED_FUNCTION_17_12(v73, v74);
    v75 = sub_1E3CF9868();
    OUTLINED_FUNCTION_33_51(v75);
    sub_1E4201F44();
    sub_1E325F69C(v82, &qword_1ECF37430);
  }

  else
  {
    sub_1E3CF8EA4(v81);
    (*(v80 + 16))(v83, v81, v84);
    swift_storeEnumTagMultiPayload();
    sub_1E3CF950C();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF374A0, &qword_1E42CBC18);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF374A8, &qword_1E42CBC20);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF374B0, &qword_1E42CBC28);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF374B8, &qword_1E42CBC30);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF374C0, &qword_1E42CBC38);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF374C8, &qword_1E42CBC40);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF374D0, &qword_1E42CBC48);
    OUTLINED_FUNCTION_15_108();
    sub_1E374AD40(v40, &qword_1ECF374D0, &qword_1E42CBC48, v41);
    OUTLINED_FUNCTION_2_2();
    OUTLINED_FUNCTION_17_12(v42, v43);
    OUTLINED_FUNCTION_10_6();
    OUTLINED_FUNCTION_17_12(v44, v45);
    OUTLINED_FUNCTION_3_8();
    OUTLINED_FUNCTION_17_12(v46, v47);
    OUTLINED_FUNCTION_5_15();
    OUTLINED_FUNCTION_17_12(v48, v49);
    OUTLINED_FUNCTION_15_10();
    OUTLINED_FUNCTION_17_12(v50, v51);
    v52 = sub_1E3CF9868();
    OUTLINED_FUNCTION_33_51(v52);
    sub_1E4201F44();
    (*(v80 + 8))(v81, v84);
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3CF86E8()
{
  OUTLINED_FUNCTION_21_5();
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37460, &qword_1E42CBBF0);
  OUTLINED_FUNCTION_17_2(v5);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_26_2();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37450, &qword_1E42CBBE8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_19_2();
  sub_1E3CF7A74();
  OUTLINED_FUNCTION_2_1();
  (*(v9 + 1152))();

  sub_1E3CF7A74();
  OUTLINED_FUNCTION_30();
  (*(v10 + 176))(v26);

  *v2 = sub_1E4201D54();
  *(v2 + 8) = 0;
  *(v2 + 16) = 0;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37520, &qword_1E42CBD48);
  sub_1E3CFC920(v0, v2 + *(v11 + 44));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BA8, &unk_1E42980C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E4299720;
  v13 = sub_1E4202744();
  *(inited + 32) = v13;
  v14 = sub_1E4202754();
  *(inited + 33) = v14;
  v15 = sub_1E4202774();
  sub_1E4202774();
  if (sub_1E4202774() != v13)
  {
    v15 = sub_1E4202774();
  }

  sub_1E4202774();
  if (sub_1E4202774() != v14)
  {
    v15 = sub_1E4202774();
  }

  OUTLINED_FUNCTION_13_3(v16, v17, v18, v19);
  sub_1E4200A54();
  OUTLINED_FUNCTION_3();
  v20 = OUTLINED_FUNCTION_74();
  sub_1E3741EA0(v20, v21, v22, v23);
  v24 = (v1 + *(v7 + 36));
  *v24 = v15;
  OUTLINED_FUNCTION_11_4(v24);
  sub_1E4203DA4();
  OUTLINED_FUNCTION_51_3();
  sub_1E42015C4();
  sub_1E3741EA0(v1, v4, &qword_1ECF37450, &qword_1E42CBBE8);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37428, &qword_1E42CBBD8);
  memcpy((v4 + *(v25 + 36)), v27, 0x70uLL);
  OUTLINED_FUNCTION_20_0();
}

void sub_1E3CF89F0()
{
  OUTLINED_FUNCTION_9_4();
  v45 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37498, &qword_1E42CBC10);
  OUTLINED_FUNCTION_17_2(v2);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v3);
  v5 = v43 - v4;
  v43[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37488, &qword_1E42CBC08);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  v8 = v43 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37470, &qword_1E42CBC00);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  v12 = v43 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37468, &qword_1E42CBBF8);
  OUTLINED_FUNCTION_0_10();
  v44 = v14;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v16);
  sub_1E3CF7A74();
  OUTLINED_FUNCTION_2_1();
  v18 = (*(v17 + 1152))();
  v20 = v19;

  *v5 = sub_1E4201B84();
  *(v5 + 1) = v18;
  v5[16] = v20 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37568, &qword_1E42CBD98);
  sub_1E3CFB600();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BA8, &unk_1E42980C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E4299720;
  v22 = sub_1E4202744();
  *(inited + 32) = v22;
  *(inited + 33) = sub_1E4202754();
  v23 = sub_1E4202774();
  sub_1E4202774();
  if (sub_1E4202774() != v22)
  {
    v23 = sub_1E4202774();
  }

  sub_1E4202774();
  sub_1E4202774();
  OUTLINED_FUNCTION_29();
  if (!v24)
  {
    v23 = sub_1E4202774();
  }

  sub_1E3CF7A74();
  OUTLINED_FUNCTION_30();
  (*(v25 + 176))(v48);

  v29.n128_u64[0] = 0;
  if ((v49 & 1) == 0)
  {
    OUTLINED_FUNCTION_13_3(v29, v26, v27, v28);
  }

  sub_1E4200A54();
  OUTLINED_FUNCTION_3();
  sub_1E3741EA0(v5, v8, &qword_1ECF37498, &qword_1E42CBC10);
  OUTLINED_FUNCTION_141();
  v31 = &v8[v30];
  *v31 = v23;
  OUTLINED_FUNCTION_11_4(v31);
  sub_1E4203DB4();
  OUTLINED_FUNCTION_51_3();
  sub_1E42015C4();
  sub_1E3741EA0(v8, v12, &qword_1ECF37488, &qword_1E42CBC08);
  memcpy(&v12[*(v9 + 36)], v50, 0x70uLL);
  v32 = *(v0 + 208);
  OUTLINED_FUNCTION_11_114();
  v35 = sub_1E3CF9730(v33, &qword_1ECF37470, &qword_1E42CBC00, v34);
  v36 = v43[2];
  sub_1E4187EA8(v32, v9, v35);
  sub_1E325F69C(v12, &qword_1ECF37470);
  v37 = sub_1E3CF7A74();
  v46 = v9;
  v47 = v35;
  OUTLINED_FUNCTION_3_8();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_78_0();
  v39 = j__OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_78_0();
  v40 = j__OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_78_0();
  v41 = j__OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_78_0();
  v42 = OUTLINED_FUNCTION_51_1();
  sub_1E383F6D4(v37, v39 & 1, v40 & 1, v41 & 1, v42 & 1, v13, OpaqueTypeConformance2);

  (*(v44 + 8))(v36, v13);
  OUTLINED_FUNCTION_10_3();
}

void sub_1E3CF8EA4(uint64_t a1@<X8>)
{
  v3 = v1;
  v96 = a1;
  sub_1E4202494();
  OUTLINED_FUNCTION_0_10();
  v94 = v5;
  v95 = v4;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  v93 = v7 - v6;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF374D0, &qword_1E42CBC48);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_19_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF374C8, &qword_1E42CBC40);
  OUTLINED_FUNCTION_0_10();
  v81 = v9;
  v82 = v10;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v75 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF374C0, &qword_1E42CBC38);
  OUTLINED_FUNCTION_0_10();
  v83 = v14;
  v84 = v15;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_44();
  v76 = v17;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF374B8, &qword_1E42CBC30);
  OUTLINED_FUNCTION_0_10();
  v88 = v18;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_44();
  v78 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF374B0, &qword_1E42CBC28);
  OUTLINED_FUNCTION_0_10();
  v89 = v21;
  v90 = v22;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_44();
  v80 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF374A0, &qword_1E42CBC18);
  OUTLINED_FUNCTION_0_10();
  v91 = v25;
  v92 = v26;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_44();
  v87 = v28;
  v29 = *v1;
  memcpy(v102, v3 + 1, 0xC3uLL);
  v98 = v3;

  sub_1E375C1CC(v102, v101);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF374A8, &qword_1E42CBC20);
  v85 = v30;
  v86 = sub_1E3CF9868();
  sub_1E390F194(v29, v102, 1, sub_1E3CFE394, v30, v86, v2);
  sub_1E3CF7A74();
  OUTLINED_FUNCTION_15_108();
  v33 = sub_1E374AD40(v31, &qword_1ECF374D0, &qword_1E42CBC48, v32);
  v34 = OUTLINED_FUNCTION_24_73();
  v35 = v77;
  sub_1E38838AC(v34, v36, v37, v77, v33, v38);

  sub_1E325F69C(v2, &qword_1ECF374D0);
  sub_1E3CF7A74();
  OUTLINED_FUNCTION_2_1();
  (*(v39 + 552))(v101);

  OUTLINED_FUNCTION_32_1();
  if (v42)
  {
    v43 = v40;
  }

  else
  {
    v43 = v41;
  }

  v99 = v35;
  v100 = v33;
  OUTLINED_FUNCTION_2_2();
  v46 = OUTLINED_FUNCTION_65_20(v44, v45);
  v47 = v76;
  v48 = v81;
  sub_1E391F8C0(v81, v46, v43);
  (*(v82 + 8))(v13, v48);
  v49 = v3[26];
  v99 = v48;
  v100 = v46;
  OUTLINED_FUNCTION_10_6();
  v52 = OUTLINED_FUNCTION_65_20(v50, v51);
  v53 = v78;
  v54 = v83;
  sub_1E4187EA8(v49, v83, v52);
  v55 = v47;
  v56 = v54;
  (*(v84 + 8))(v55, v54);
  v57 = v3;
  v58 = sub_1E3CF7A74();
  v99 = v56;
  v100 = v52;
  OUTLINED_FUNCTION_3_8();
  v61 = OUTLINED_FUNCTION_65_20(v59, v60);
  v62 = v79;
  OUTLINED_FUNCTION_74();
  LOBYTE(v49) = j__OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_74();
  LOBYTE(v56) = j__OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_74();
  v63 = j__OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_74();
  v64 = OUTLINED_FUNCTION_51_1();
  v65 = v80;
  sub_1E383F6D4(v58, v49 & 1, v56 & 1, v63 & 1, v64 & 1, v62, v61);

  (*(v88 + 8))(v53, v62);
  v66 = v93;
  sub_1E4202474();
  v99 = v62;
  v100 = v61;
  OUTLINED_FUNCTION_5_15();
  v69 = OUTLINED_FUNCTION_65_20(v67, v68);
  v70 = v87;
  v71 = v89;
  sub_1E4203224();
  (*(v94 + 8))(v66, v95);
  (*(v90 + 8))(v65, v71);
  v97 = v57;
  v99 = v71;
  v100 = v69;
  OUTLINED_FUNCTION_15_10();
  OUTLINED_FUNCTION_65_20(v72, v73);
  v74 = v91;
  sub_1E42030F4();
  (*(v92 + 8))(v70, v74);
  OUTLINED_FUNCTION_54_0();
}

unint64_t sub_1E3CF950C()
{
  result = qword_1ECF37438;
  if (!qword_1ECF37438)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF37430, &qword_1E42CBBE0);
    sub_1E3CF9730(&qword_1ECF37440, &qword_1ECF37428, &qword_1E42CBBD8, sub_1E3CF9678);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF37468, &qword_1E42CBBF8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF37470, &qword_1E42CBC00);
    sub_1E3CF9730(&qword_1ECF37478, &qword_1ECF37470, &qword_1E42CBC00, sub_1E3CF97B0);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF37438);
  }

  return result;
}

unint64_t sub_1E3CF9678()
{
  result = qword_1ECF37448;
  if (!qword_1ECF37448)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF37450, &qword_1E42CBBE8);
    sub_1E374AD40(&qword_1ECF37458, &qword_1ECF37460, &qword_1E42CBBF0, MEMORY[0x1E6981870]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF37448);
  }

  return result;
}

uint64_t sub_1E3CF9730(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    v7 = OUTLINED_FUNCTION_40_2(0, a2);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v7, v8);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E3CF97B0()
{
  result = qword_1ECF37480;
  if (!qword_1ECF37480)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF37488, &qword_1E42CBC08);
    sub_1E374AD40(&qword_1ECF37490, &qword_1ECF37498, &qword_1E42CBC10, MEMORY[0x1E69817F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF37480);
  }

  return result;
}

unint64_t sub_1E3CF9868()
{
  result = qword_1ECF374E0;
  if (!qword_1ECF374E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF374A8, &qword_1E42CBC20);
    sub_1E374AD40(&qword_1ECF374E8, &qword_1ECF374F0, &qword_1E42CBC50, MEMORY[0x1E6981870]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF374E0);
  }

  return result;
}

void sub_1E3CF9964(uint64_t a1)
{
  type metadata accessor for ViewModel();
  if (v1 <= 0x3F)
  {
    type metadata accessor for ContextMenuModel(319);
    if (v2 <= 0x3F)
    {
      sub_1E381EC50(319);
      if (v3 <= 0x3F)
      {
        OUTLINED_FUNCTION_37_50();
        sub_1E3CF9E08(319, v4, v5, MEMORY[0x1E697DCC0]);
        if (v6 <= 0x3F)
        {
          sub_1E389B5AC(319);
          if (v7 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

unint64_t sub_1E3CF9A58()
{
  result = qword_1ECF374F8;
  if (!qword_1ECF374F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF37500, &qword_1E42CBCB8);
    sub_1E3CF950C();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF374A0, &qword_1E42CBC18);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF374A8, &qword_1E42CBC20);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF374B0, &qword_1E42CBC28);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF374B8, &qword_1E42CBC30);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF374C0, &qword_1E42CBC38);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF374C8, &qword_1E42CBC40);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF374D0, &qword_1E42CBC48);
    sub_1E374AD40(&qword_1ECF374D8, &qword_1ECF374D0, &qword_1E42CBC48, &unk_1E42AA808);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1E3CF9868();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF374F8);
  }

  return result;
}

void sub_1E3CF9D04(uint64_t a1)
{
  type metadata accessor for ViewModel();
  if (v1 <= 0x3F)
  {
    sub_1E3CF9E08(319, &qword_1ECF37508, type metadata accessor for EpisodeLockupLayout, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      OUTLINED_FUNCTION_37_50();
      sub_1E3CF9E08(319, v3, v4, MEMORY[0x1E697DCC0]);
      if (v5 <= 0x3F)
      {
        sub_1E3AB40E8();
        if (v6 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1E3CF9E08(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1E3CF9E84(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF374F0, &qword_1E42CBC50);
  OUTLINED_FUNCTION_17_2(v3);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_19_2();
  *v1 = sub_1E4201D54();
  *(v1 + 8) = 0;
  *(v1 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37590, &qword_1E42CBDC0);
  sub_1E3CF9FC8();
  sub_1E3CF7A74();
  OUTLINED_FUNCTION_30();
  (*(v5 + 176))(&v12);

  if (v13)
  {
    OUTLINED_FUNCTION_5_8();
  }

  else
  {
    OUTLINED_FUNCTION_13_3(v6, v7, v8, v9);
  }

  OUTLINED_FUNCTION_3();
  v10 = sub_1E4202734();
  sub_1E3741EA0(v1, a1, &qword_1ECF374F0, &qword_1E42CBC50);
  v11 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF374A8, &qword_1E42CBC20) + 36));
  *v11 = v10;
  OUTLINED_FUNCTION_11_4(v11);
}

void sub_1E3CF9FC8()
{
  OUTLINED_FUNCTION_21_5();
  v2 = v1;
  v79 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37598, &qword_1E42CBDC8);
  OUTLINED_FUNCTION_17_2(v4);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v6);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF375A0, &qword_1E42CBDD0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v8);
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF375A8, &qword_1E42CBDD8);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_2_5();
  v78 = v10;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_17_3(v13);
  v14 = sub_1E42012F4();
  OUTLINED_FUNCTION_0_10();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_5();
  v20 = (v19 - v18);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF375B0, &qword_1E42CBDE0);
  OUTLINED_FUNCTION_17_2(v21);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v67[-v23];
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF375B8, &qword_1E42CBDE8);
  v26 = v25 - 8;
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v67[-v28];
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_226();
  *v24 = sub_1E4201D54();
  *(v24 + 1) = 0;
  v24[16] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF375C0, &unk_1E42CBDF0);
  sub_1E3CFA64C();
  if (sub_1E3CF7BE0())
  {
    v31 = 0.0;
  }

  else
  {
    v31 = 1.0;
  }

  sub_1E3741EA0(v24, v29, &qword_1ECF375B0, &qword_1E42CBDE0);
  *&v29[*(v26 + 44)] = v31;
  v70 = v0;
  sub_1E3741EA0(v29, v0, &qword_1ECF375B8, &qword_1E42CBDE8);
  type metadata accessor for EpisodeLockup(0);
  sub_1E3746E10(v20);
  v68 = sub_1E3B02B0C();
  v32 = *(v16 + 8);
  v71 = v14;
  v72 = v16 + 8;
  v32(v20, v14);
  v81 = v2;
  v80 = v2;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29600, &unk_1E429B740);
  v34 = type metadata accessor for DownloadStatusAndContextMenuButtonView(0);
  v35 = sub_1E3BFC99C();
  v36 = sub_1E3CFE4F4();
  sub_1E3DE5EA0(sub_1E3CFE3B8, sub_1E3CFE428, v33, v34, v35, v36, v69);
  sub_1E4202744();
  v37 = OUTLINED_FUNCTION_41_4();
  sub_1E4202774();
  sub_1E4202774();
  OUTLINED_FUNCTION_29();
  if (!v38)
  {
    v37 = sub_1E4202774();
  }

  sub_1E3CF7A74();
  OUTLINED_FUNCTION_30();
  v40 = (*(v39 + 2024))();

  (*(*v40 + 152))(&v82, v41);

  sub_1E4200A54();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_73_14();
  sub_1E3741EA0(v42, v43, v44, v45);
  OUTLINED_FUNCTION_141();
  v47 = (v40 + v46);
  *v47 = v37;
  OUTLINED_FUNCTION_11_4(v47);
  if (sub_1E3CF7BE0())
  {
    v48 = 0.0;
  }

  else
  {
    v48 = 1.0;
  }

  v49 = v73;
  sub_1E3741EA0(v40, v73, &qword_1ECF375A0, &qword_1E42CBDD0);
  OUTLINED_FUNCTION_141();
  *(v49 + v50) = v48;
  v51 = v76;
  sub_1E3741EA0(v49, v76, &qword_1ECF375A8, &qword_1E42CBDD8);
  sub_1E3746E10(v20);
  v77 = sub_1E3B02B0C();
  v32(v20, v71);
  v52 = v70;
  OUTLINED_FUNCTION_21_1();
  sub_1E3743538(v53, v54, v55, &qword_1E42CBDE8);
  v56 = v78;
  sub_1E3743538(v51, v78, &qword_1ECF375A8, &qword_1E42CBDD8);
  v57 = v79;
  OUTLINED_FUNCTION_38_2();
  sub_1E3743538(v58, v59, v60, v61);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF375C8, &qword_1E42CBE00);
  v63 = v57 + v62[12];
  *v63 = 0;
  *(v63 + 8) = 0;
  *(v63 + 9) = v68 & 1;
  sub_1E3743538(v56, v57 + v62[16], &qword_1ECF375A8, &qword_1E42CBDD8);
  v64 = v57 + v62[20];
  *v64 = 0;
  *(v64 + 8) = 0;
  *(v64 + 9) = (v77 & 1) == 0;
  sub_1E325F69C(v51, &qword_1ECF375A8);
  sub_1E325F69C(v52, &qword_1ECF375B8);
  sub_1E325F69C(v56, &qword_1ECF375A8);
  v65 = OUTLINED_FUNCTION_32_0();
  sub_1E325F69C(v65, v66);
  OUTLINED_FUNCTION_20_0();
}

void sub_1E3CFA64C()
{
  OUTLINED_FUNCTION_9_4();
  v3 = v2;
  v160 = v4;
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF375D0, &qword_1E42CBE08);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_4_6();
  v8 = v6 - v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_25_3();
  v169 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CB8, &unk_1E429B6E0);
  OUTLINED_FUNCTION_0_10();
  v13 = v12;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_19_2();
  v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37528, &unk_1E42CBD50);
  OUTLINED_FUNCTION_0_10();
  v166 = v15;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v153[-v19];
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37530, &qword_1E42D5340);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_29_1();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_17_3(v27);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37538, &qword_1E42CBD60);
  v29 = OUTLINED_FUNCTION_17_2(v28);
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_18_6();
  v168 = v32;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v153[-v34];
  v158 = v3;
  v36 = sub_1E3AE9144();
  v165 = v35;
  v163 = v13;
  v161 = v8;
  v162 = v11;
  if (v36)
  {
    sub_1E3C27528(v36, v37);
    OUTLINED_FUNCTION_18();
    sub_1E3F23370();
    OUTLINED_FUNCTION_0_21(v38);
    OUTLINED_FUNCTION_156_2();
    sub_1E38838AC(v39, v40, v41, v11, v42, v43);
    (*(v13 + 8))(v0, v11);
    sub_1E4202744();
    v44 = OUTLINED_FUNCTION_41_4();
    sub_1E4202774();
    sub_1E4202774();
    OUTLINED_FUNCTION_29();
    if (!v47)
    {
      v45 = sub_1E4202774();
      v44 = v45;
    }

    v48 = sub_1E3C27528(v45, v46);
    v49 = v159;
    if (v48)
    {
      OUTLINED_FUNCTION_30();
      (*(v50 + 152))(&v170);

      OUTLINED_FUNCTION_32_1();
    }

    sub_1E4200A54();
    OUTLINED_FUNCTION_3();

    OUTLINED_FUNCTION_66_23();
    v51(v1, v20, v167);
    v52 = (v1 + *(v49 + 36));
    *v52 = v44;
    OUTLINED_FUNCTION_11_4(v52);
    OUTLINED_FUNCTION_21_1();
    sub_1E3741EA0(v53, v54, v55, &qword_1E42D5340);
    OUTLINED_FUNCTION_72_21();
    OUTLINED_FUNCTION_38_2();
    sub_1E3741EA0(v56, v57, v58, v59);
  }

  else
  {
    v49 = v159;
  }

  v60 = v157;
  OUTLINED_FUNCTION_62_25();
  __swift_storeEnumTagSinglePayload(v61, v62, v63, v64);
  v65 = v158;
  v66 = sub_1E3AE9144();
  v68 = v156;
  if (v66)
  {
    sub_1E3C27528(v66, v67);
    OUTLINED_FUNCTION_18();
    sub_1E3F23370();
    OUTLINED_FUNCTION_0_21(v69);
    OUTLINED_FUNCTION_156_2();
    OUTLINED_FUNCTION_79_17(v70, v71, v72, v73, v74);
    (*(v163 + 8))(v0, v1);
    sub_1E4202744();
    v75 = OUTLINED_FUNCTION_41_4();
    sub_1E4202774();
    sub_1E4202774();
    OUTLINED_FUNCTION_29();
    if (!v47)
    {
      v76 = sub_1E4202774();
      v75 = v76;
    }

    if (sub_1E3C27528(v76, v77))
    {
      OUTLINED_FUNCTION_30();
      (*(v78 + 152))(&v171);

      OUTLINED_FUNCTION_32_1();
    }

    sub_1E4200A54();
    OUTLINED_FUNCTION_3();

    OUTLINED_FUNCTION_66_23();
    v79 = v154;
    v80(v154, v68, v167);
    v81 = (v79 + *(v49 + 36));
    *v81 = v75;
    OUTLINED_FUNCTION_11_4(v81);
    OUTLINED_FUNCTION_19_1();
    sub_1E3741EA0(v82, v83, v84, v85);
    OUTLINED_FUNCTION_19_1();
    sub_1E3741EA0(v86, v87, v88, v89);
  }

  OUTLINED_FUNCTION_62_25();
  __swift_storeEnumTagSinglePayload(v90, v91, v92, v93);
  v94 = v169;
  sub_1E3CFAFF8();
  v95 = sub_1E4203D44();
  v97 = v96;
  v98 = v94 + *(v60 + 36);
  v99 = sub_1E3AE9144();
  if (v99)
  {
    sub_1E3C27528(v99, v100);
    OUTLINED_FUNCTION_18();
    sub_1E3F23370();
    OUTLINED_FUNCTION_0_21(v101);
    OUTLINED_FUNCTION_156_2();
    OUTLINED_FUNCTION_79_17(v102, v103, v104, v105, v106);
    (*(v163 + 8))(v0, v94);
    sub_1E4202744();
    v107 = OUTLINED_FUNCTION_41_4();
    sub_1E4202774();
    sub_1E4202774();
    OUTLINED_FUNCTION_29();
    if (!v47)
    {
      v108 = sub_1E4202774();
      v107 = v108;
    }

    if (sub_1E3C27528(v108, v109))
    {
      OUTLINED_FUNCTION_30();
      (*(v110 + 152))(&v172);

      OUTLINED_FUNCTION_32_1();
    }

    v111 = v161;
    sub_1E4200A54();
    OUTLINED_FUNCTION_3();

    v65 = v155;
    (*(v166 + 32))(v155, v164, v167);
    v112 = (v65 + *(v49 + 36));
    *v112 = v107;
    OUTLINED_FUNCTION_11_4(v112);
    OUTLINED_FUNCTION_72_21();
    OUTLINED_FUNCTION_18_5();
    sub_1E3741EA0(v113, v114, v115, v116);
    OUTLINED_FUNCTION_18_5();
    sub_1E3741EA0(v117, v118, v119, v120);
  }

  else
  {
    v111 = v161;
  }

  OUTLINED_FUNCTION_62_25();
  __swift_storeEnumTagSinglePayload(v121, v122, v123, v124);
  v125 = (v98 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF375D8, &qword_1E42CBE10) + 36));
  *v125 = v95;
  v125[1] = v97;
  OUTLINED_FUNCTION_19_1();
  sub_1E3743538(v126, v127, v128, v129);
  OUTLINED_FUNCTION_19_1();
  sub_1E3743538(v130, v131, v132, v133);
  v134 = v169;
  v135 = v111;
  sub_1E3743538(v169, v111, &qword_1ECF375D0, &qword_1E42CBE08);
  OUTLINED_FUNCTION_72_21();
  OUTLINED_FUNCTION_19_1();
  sub_1E3743538(v136, v137, v138, v139);
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF375E0, &qword_1E42CBE18);
  OUTLINED_FUNCTION_19_1();
  sub_1E3743538(v141, v142, v143, v144);
  sub_1E3743538(v135, v65 + *(v140 + 64), &qword_1ECF375D0, &qword_1E42CBE08);
  OUTLINED_FUNCTION_50_3(v134);
  OUTLINED_FUNCTION_21_1();
  sub_1E325F69C(v145, v146);
  OUTLINED_FUNCTION_21_1();
  sub_1E325F69C(v147, v148);
  OUTLINED_FUNCTION_50_3(v135);
  OUTLINED_FUNCTION_21_1();
  sub_1E325F69C(v149, v150);
  OUTLINED_FUNCTION_21_1();
  sub_1E325F69C(v151, v152);
  OUTLINED_FUNCTION_10_3();
}

void sub_1E3CFAFF8()
{
  OUTLINED_FUNCTION_9_4();
  v2 = v0;
  v52 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CB8, &unk_1E429B6E0);
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v50 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF375E8, &qword_1E42CBE20);
  OUTLINED_FUNCTION_17_2(v10);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_44();
  v50 = v12;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF375F0, &unk_1E42CBE28);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_29_1();
  MEMORY[0x1EEE9AC00](v14);
  v15 = sub_1E42012F4();
  OUTLINED_FUNCTION_0_10();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_5();
  v21 = (v20 - v19);
  type metadata accessor for EpisodeLockup(0);
  sub_1E3746E10(v21);
  v22 = sub_1E3B02B0C();
  (*(v17 + 8))(v21, v15);
  if ((v22 & 1) == 0)
  {
    if (*(v2 + 192))
    {
      v23 = sub_1E39C408C();
      if (v23)
      {
        if (*v23 == _TtC8VideosUI13TextViewModel)
        {
          goto LABEL_7;
        }
      }
    }
  }

  v23 = sub_1E3AE9144();
  if (!v23)
  {
    v40 = 1;
    v38 = v51;
    v37 = v52;
    goto LABEL_13;
  }

LABEL_7:
  sub_1E3C27528(v23, v24);
  OUTLINED_FUNCTION_18();
  sub_1E3F23370();
  OUTLINED_FUNCTION_0_21(v25);
  v26 = v50;
  OUTLINED_FUNCTION_156_2();
  sub_1E38838AC(v27, v28, v29, v4, v30, v31);
  (*(v6 + 8))(v9, v4);
  sub_1E4202744();
  v32 = OUTLINED_FUNCTION_41_4();
  sub_1E4202774();
  sub_1E4202774();
  OUTLINED_FUNCTION_29();
  if (!v35)
  {
    v33 = sub_1E4202774();
    v32 = v33;
  }

  v36 = sub_1E3C27528(v33, v34);
  v38 = v51;
  v37 = v52;
  if (v36)
  {
    OUTLINED_FUNCTION_30();
    (*(v39 + 152))(&v53);

    OUTLINED_FUNCTION_32_1();
  }

  sub_1E4200A54();
  OUTLINED_FUNCTION_3();

  sub_1E3741EA0(v26, v1, &qword_1ECF375E8, &qword_1E42CBE20);
  v41 = (v1 + *(v38 + 36));
  *v41 = v32;
  OUTLINED_FUNCTION_11_4(v41);
  OUTLINED_FUNCTION_19_1();
  sub_1E3741EA0(v42, v43, v44, v45);
  OUTLINED_FUNCTION_19_1();
  sub_1E3741EA0(v46, v47, v48, v49);
  v40 = 0;
LABEL_13:
  __swift_storeEnumTagSinglePayload(v37, v40, 1, v38);
  OUTLINED_FUNCTION_10_3();
}

double sub_1E3CFB3C8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(*a1 + 8);
  *a2 = **a1;
  *(a2 + 8) = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37588, &qword_1E42CBDB8);
  sub_1E3743538(*(a1 + 8), a2 + v5[12], &qword_1ECF37538, &qword_1E42CBD60);
  sub_1E3743538(*(a1 + 16), a2 + v5[16], &qword_1ECF37538, &qword_1E42CBD60);
  sub_1E3743538(*(a1 + 24), a2 + v5[20], &qword_1ECF37540, &qword_1E42CBD68);
  v6 = a2 + v5[24];
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = *v7;
  LOBYTE(v7) = *(v7 + 8);
  *v6 = v9;
  *(v6 + 8) = v7;
  result = *v8;
  *(a2 + v5[28]) = *v8;
  return result;
}

uint64_t sub_1E3CFB4B0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1E3743538(*a1, a2, &qword_1ECF37548, &qword_1E42CBD70);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37558, &qword_1E42CBD80);
  sub_1E3743538(a1[1], a2 + v4[12], &qword_1ECF37540, &qword_1E42CBD68);
  sub_1E3743538(a1[2], a2 + v4[16], &qword_1ECF37540, &qword_1E42CBD68);
  sub_1E3743538(a1[3], a2 + v4[20], &qword_1ECF37540, &qword_1E42CBD68);
  v5 = v4[24];
  v6 = a1[4];
  memcpy(__dst, v6, 0x81uLL);
  memmove((a2 + v5), v6, 0x81uLL);
  v7 = a2 + v4[28];
  v8 = a1[5];
  v9 = a1[6];
  v10 = *v8;
  LOBYTE(v8) = *(v8 + 8);
  *v7 = v10;
  *(v7 + 8) = v8;
  v11 = a2 + v4[32];
  LOBYTE(v8) = *(v9 + 8);
  LOBYTE(v10) = *(v9 + 48);
  v12 = *(v9 + 16);
  v13 = *(v9 + 32);
  *v11 = *v9;
  *(v11 + 8) = v8;
  *(v11 + 16) = v12;
  *(v11 + 32) = v13;
  *(v11 + 48) = v10;
  return sub_1E3743538(__dst, &v15, &qword_1ECF37550, &qword_1E42CBD78);
}

void sub_1E3CFB600()
{
  OUTLINED_FUNCTION_31_1();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37570, &qword_1E42CBDA0);
  v5 = OUTLINED_FUNCTION_17_2(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_29_1();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v17[-v7];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37548, &qword_1E42CBD70);
  v10 = OUTLINED_FUNCTION_17_2(v9);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_4_6();
  v13 = v11 - v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_226();
  sub_1E3CFB870(v0);
  *v8 = sub_1E4201D54();
  *(v8 + 1) = 0;
  v8[16] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37578, &qword_1E42CBDA8);
  sub_1E3CFBE94();
  sub_1E3AEABF4(v17);
  sub_1E3743538(v0, v13, &qword_1ECF37548, &qword_1E42CBD70);
  sub_1E3743538(v8, v1, &qword_1ECF37570, &qword_1E42CBDA0);
  sub_1E3743538(v13, v3, &qword_1ECF37548, &qword_1E42CBD70);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37580, &qword_1E42CBDB0);
  sub_1E3743538(v1, v3 + *(v15 + 48), &qword_1ECF37570, &qword_1E42CBDA0);
  v16 = *(v15 + 64);
  memcpy(v18, v17, 0x51uLL);
  memcpy((v3 + v16), v17, 0x51uLL);
  sub_1E3743538(v18, v19, &qword_1ECF32A38, &unk_1E42BC620);
  sub_1E325F69C(v8, &qword_1ECF37570);
  sub_1E325F69C(v0, &qword_1ECF37548);
  memcpy(v19, v17, 0x51uLL);
  sub_1E325F69C(v19, &qword_1ECF32A38);
  sub_1E325F69C(v1, &qword_1ECF37570);
  sub_1E325F69C(v13, &qword_1ECF37548);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3CFB870(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D3E8, &qword_1E42DC9B0);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_26_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FEC0, &unk_1E42C8F40);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_9_12();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37560, &unk_1E42CBD88);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v6);
  v7 = sub_1E3CF7AF0();
  if (v7)
  {
    v8 = v7;
    v42 = a1;
    sub_1E3CF7A74();
    OUTLINED_FUNCTION_30();
    v10 = (*(v9 + 2144))();

    if ((v10 & 1) == 0 || (v11 = sub_1E3CF7AF0()) == 0)
    {
      sub_1E3EB9BB4(&v48);
      v46 = v48;
      v12 = v50;
      v47 = v49;
      v16 = v51;
      v17 = v52;
      v18 = v53;
      v44 = v54;
      v45[0] = *v55;
      *(v45 + 14) = *&v55[14];
      v19 = v56;
      v20 = v57;
LABEL_19:
      v48 = v46;
      v54 = v44;
      v49 = v47;
      v50 = v12;
      v51 = v16;
      v52 = v17;
      v53 = v18;
      *v55 = v45[0];
      *&v55[14] = *(v45 + 14);
      v56 = v19;
      v57 = v20;
      LOBYTE(v46) = 0;
      (*(*v8 + 776))(&v44, &v46, &unk_1F5D5D408, &off_1F5D5C818);
      if (*(&v45[0] + 1))
      {
        swift_dynamicCast();
        OUTLINED_FUNCTION_49_42();
        if (v30)
        {
          v31 = v46;
        }

        else
        {
          v31 = 0;
        }
      }

      else
      {
        sub_1E325F69C(&v44, &unk_1ECF296E0);
        v31 = 0;
        OUTLINED_FUNCTION_49_42();
      }

      v32 = OUTLINED_FUNCTION_18();
      sub_1E37E8BE8(v8, &v48, 0, v32 & 1, 0, 0, v1);
      OUTLINED_FUNCTION_141();
      *(v1 + v33) = 256;
      sub_1E3CFD640();
      if (v31)
      {
        sub_1E4200BA4();
      }

      else
      {
        sub_1E4200BB4();
      }

      sub_1E3BCECB4();
      sub_1E374AD40(&qword_1EE289DB0, &qword_1ECF2D3E8, &qword_1E42DC9B0, MEMORY[0x1E697E238]);
      sub_1E42034B4();
      sub_1E375C31C(&v48);

      v34 = OUTLINED_FUNCTION_74();
      v35(v34);
      sub_1E325F69C(v1, &qword_1ECF2FEC0);
      v51(v42, v43, v18);
      OUTLINED_FUNCTION_62_25();
      __swift_storeEnumTagSinglePayload(v36, v37, v38, v39);
      OUTLINED_FUNCTION_54_0();
      return;
    }

    v12 = (*(*v11 + 392))();
    if (v12)
    {
      OUTLINED_FUNCTION_8();
      v41 = COERCE_DOUBLE((*(v13 + 432))());
      v15 = v14;

      if ((v15 & 1) == 0)
      {
        v26 = sub_1E3C6DC88();
        if (v41 <= 1.0)
        {
          v12 = *v26;
        }

        else
        {
          v12 = 0;
        }

        if (v41 <= 1.0)
        {
          v16 = 0;
        }

        else
        {
          v16 = *v26;
        }

        goto LABEL_18;
      }

      v12 = 0;
    }

    v16 = 0;
LABEL_18:
    v27 = j__OUTLINED_FUNCTION_51_1();
    v28 = j__OUTLINED_FUNCTION_18();
    v29 = j__OUTLINED_FUNCTION_18();
    v40 = v28 & 1;
    v18 = 1;
    sub_1E3EB9C0C(v12, v16, 0, 0, 0, 1, v27 & 1, 2, &v48, 0, 1, 0, 1, 0, 2, v40, v29 & 1);
    v20 = v57;
    v46 = v48;
    v47 = v49;
    v44 = v54;
    v45[0] = *v55;
    *(v45 + 14) = *&v55[14];

    v17 = 0;
    v19 = 1;
    goto LABEL_19;
  }

  OUTLINED_FUNCTION_62_25();
  OUTLINED_FUNCTION_54_0();

  __swift_storeEnumTagSinglePayload(v21, v22, v23, v24);
}

void sub_1E3CFBE94()
{
  OUTLINED_FUNCTION_9_4();
  v2 = v1;
  v4 = v3;
  v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37540, &qword_1E42CBD68);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_4_6();
  v8 = v6 - v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_17_3(v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CB8, &unk_1E429B6E0);
  OUTLINED_FUNCTION_0_10();
  v14 = v13;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_9_12();
  v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37528, &unk_1E42CBD50);
  OUTLINED_FUNCTION_0_10();
  v169 = v16;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v19);
  v21 = v156 - v20;
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37530, &qword_1E42D5340);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v26);
  v28 = v156 - v27;
  MEMORY[0x1EEE9AC00](v29);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37538, &qword_1E42CBD60);
  v31 = OUTLINED_FUNCTION_17_2(v30);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_17_3(v36);
  v161 = v2;
  v37 = sub_1E3AE9144();
  v168 = v12;
  v165 = v4;
  v167 = v14;
  if (v37)
  {
    v156[0] = v8;
    sub_1E3C27528(v37, v38);
    v39 = OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_46_42(v39);
    OUTLINED_FUNCTION_0_21(v40);
    OUTLINED_FUNCTION_156_2();
    sub_1E38838AC(v41, v42, v43, v12, v44, v45);
    v46 = OUTLINED_FUNCTION_171_0();
    v47(v46);
    sub_1E4202744();
    v48 = OUTLINED_FUNCTION_41_4();
    sub_1E4202774();
    sub_1E4202774();
    OUTLINED_FUNCTION_29();
    if (!v51)
    {
      v49 = sub_1E4202774();
      v48 = v49;
    }

    v52 = sub_1E3C27528(v49, v50);
    v53 = v160;
    if (v52)
    {
      OUTLINED_FUNCTION_30();
      (*(v54 + 152))(&v179);

      OUTLINED_FUNCTION_32_1();
    }

    sub_1E4200A54();
    OUTLINED_FUNCTION_3();

    OUTLINED_FUNCTION_66_23();
    v56(v28, v21, v170);
    v57 = &v28[*(v53 + 36)];
    *v57 = v48;
    OUTLINED_FUNCTION_11_4(v57);
    OUTLINED_FUNCTION_18_5();
    sub_1E3741EA0(v58, v59, v60, v61);
    OUTLINED_FUNCTION_73_14();
    OUTLINED_FUNCTION_18_5();
    sub_1E3741EA0(v62, v63, v64, v65);
    v55 = 0;
    v8 = v156[0];
  }

  else
  {
    v55 = 1;
    v21 = v171;
    v53 = v160;
  }

  v66 = 1;
  __swift_storeEnumTagSinglePayload(v21, v55, 1, v53);
  v67 = sub_1E3AE9144();
  if (v67)
  {
    sub_1E3C27528(v67, v68);
    v69 = OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_46_42(v69);
    OUTLINED_FUNCTION_0_21(v70);
    v71 = OUTLINED_FUNCTION_24_73();
    OUTLINED_FUNCTION_76_16(v71, v72, v73, v74, v75);
    v76 = OUTLINED_FUNCTION_171_0();
    v77(v76);
    sub_1E4202744();
    v78 = OUTLINED_FUNCTION_41_4();
    sub_1E4202774();
    sub_1E4202774();
    OUTLINED_FUNCTION_29();
    v81 = v172;
    if (!v51)
    {
      v79 = sub_1E4202774();
      v78 = v79;
    }

    if (sub_1E3C27528(v79, v80))
    {
      OUTLINED_FUNCTION_30();
      (*(v82 + 152))(&v180);

      OUTLINED_FUNCTION_32_1();
    }

    sub_1E4200A54();
    OUTLINED_FUNCTION_3();

    OUTLINED_FUNCTION_66_23();
    v83 = v157;
    v84(v157, v166, v170);
    v85 = (v83 + *(v53 + 36));
    *v85 = v78;
    OUTLINED_FUNCTION_11_4(v85);
    OUTLINED_FUNCTION_73_14();
    OUTLINED_FUNCTION_18_5();
    sub_1E3741EA0(v86, v87, v88, v89);
    OUTLINED_FUNCTION_18_5();
    sub_1E3741EA0(v90, v91, v92, v93);
    v66 = 0;
  }

  else
  {
    v81 = v172;
  }

  v94 = 1;
  __swift_storeEnumTagSinglePayload(v81, v66, 1, v53);
  v95 = sub_1E3AE9144();
  if (v95)
  {
    sub_1E3C27528(v95, v96);
    v97 = OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_46_42(v97);
    OUTLINED_FUNCTION_0_21(v98);
    v99 = v159;
    v100 = OUTLINED_FUNCTION_24_73();
    OUTLINED_FUNCTION_76_16(v100, v101, v102, v103, v104);
    v105 = OUTLINED_FUNCTION_171_0();
    v106(v105);
    sub_1E4202744();
    v107 = OUTLINED_FUNCTION_41_4();
    sub_1E4202774();
    sub_1E4202774();
    OUTLINED_FUNCTION_29();
    if (!v51)
    {
      v108 = sub_1E4202774();
      v107 = v108;
    }

    if (sub_1E3C27528(v108, v109))
    {
      OUTLINED_FUNCTION_30();
      (*(v110 + 152))(&v181);

      OUTLINED_FUNCTION_32_1();
    }

    sub_1E4200A54();
    OUTLINED_FUNCTION_3();

    v112 = v158;
    (*(v169 + 32))(v158, v99, v170);
    v113 = (v112 + *(v53 + 36));
    *v113 = v107;
    OUTLINED_FUNCTION_11_4(v113);
    OUTLINED_FUNCTION_18_5();
    sub_1E3741EA0(v114, v115, v116, v117);
    v111 = v162;
    OUTLINED_FUNCTION_18_5();
    sub_1E3741EA0(v118, v119, v120, v121);
    v94 = 0;
  }

  else
  {
    v111 = v162;
  }

  __swift_storeEnumTagSinglePayload(v111, v94, 1, v53);
  sub_1E3CF7A74();
  OUTLINED_FUNCTION_2_1();
  v123 = (*(v122 + 1856))();

  (*(*v123 + 152))(&v182, v124);

  if (v183)
  {
    OUTLINED_FUNCTION_5_8();
  }

  else
  {
    OUTLINED_FUNCTION_13_3(v125, v126, v127, v128);
  }

  OUTLINED_FUNCTION_3();
  v129 = sub_1E4202734();
  OUTLINED_FUNCTION_73_14();
  OUTLINED_FUNCTION_19_1();
  sub_1E3741EA0(v130, v131, v132, v133);
  OUTLINED_FUNCTION_141();
  v135 = (v94 + v134);
  *v135 = v129;
  OUTLINED_FUNCTION_11_4(v135);
  OUTLINED_FUNCTION_73_14();
  sub_1E3741EA0(v136, v137, &qword_1ECF37540, &qword_1E42CBD68);
  v138 = sub_1E3FFE5B8(0, 1);
  v176 = 0;
  v177 = 0;
  v178[0] = &v176;
  v139 = v163;
  OUTLINED_FUNCTION_19_1();
  sub_1E3743538(v140, v141, v142, v143);
  v178[1] = v139;
  OUTLINED_FUNCTION_72_21();
  OUTLINED_FUNCTION_19_1();
  sub_1E3743538(v144, v145, v146, v147);
  v178[2] = v0;
  sub_1E3743538(v94, v8, &qword_1ECF37540, &qword_1E42CBD68);
  v174 = 0;
  v175 = 0;
  v178[3] = v8;
  v178[4] = &v174;
  v173 = v138;
  v178[5] = &v173;
  sub_1E3CFB3C8(v178, v165);
  sub_1E325F69C(v94, &qword_1ECF37540);
  OUTLINED_FUNCTION_21_1();
  sub_1E325F69C(v148, v149);
  OUTLINED_FUNCTION_21_1();
  sub_1E325F69C(v150, v151);
  sub_1E325F69C(v8, &qword_1ECF37540);
  OUTLINED_FUNCTION_21_1();
  sub_1E325F69C(v152, v153);
  OUTLINED_FUNCTION_21_1();
  sub_1E325F69C(v154, v155);
  OUTLINED_FUNCTION_10_3();
}

uint64_t sub_1E3CFC920@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v191 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CB8, &unk_1E429B6E0);
  OUTLINED_FUNCTION_0_10();
  v194 = v6;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v174 - v8;
  v199 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37528, &unk_1E42CBD50);
  OUTLINED_FUNCTION_0_10();
  v196 = v10;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_2_5();
  v186 = v12;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_18_6();
  v192 = v14;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_226();
  v184 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37530, &qword_1E42D5340);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_2_5();
  v181 = v17;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_18_6();
  v180 = v19;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_18_6();
  v179 = v21;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_18_6();
  v178 = v23;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v174 - v25;
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_25_3();
  v177 = v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37538, &qword_1E42CBD60);
  v30 = OUTLINED_FUNCTION_17_2(v29);
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_2_5();
  v187 = v31;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_18_6();
  v183 = v33;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v174 - v35;
  v195 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37540, &qword_1E42CBD68);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_2_5();
  v190 = v38;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_18_6();
  v189 = v40;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_18_6();
  v188 = v42;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_18_6();
  v185 = v44;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_18_6();
  v201 = v46;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_18_6();
  v182 = v48;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_18_6();
  v200 = v50;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v51);
  v53 = &v174 - v52;
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_25_3();
  v198 = v55;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37548, &qword_1E42CBD70);
  v57 = OUTLINED_FUNCTION_17_2(v56);
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_2_5();
  v202 = v58;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v59);
  OUTLINED_FUNCTION_25_3();
  v197 = v60;
  sub_1E3CFB870(v60);
  v61 = sub_1E3AE9144();
  v193 = v9;
  if (v61)
  {
    v176 = a1;
    sub_1E3C27528(v61, v62);
    OUTLINED_FUNCTION_18();
    sub_1E3F23370();
    OUTLINED_FUNCTION_0_21(v63);
    v175 = v3;
    OUTLINED_FUNCTION_156_2();
    sub_1E38838AC(v64, v65, v66, v5, v67, v68);
    v69 = v5;
    (*(v194 + 8))(v9, v5);
    sub_1E4202744();
    v70 = OUTLINED_FUNCTION_41_4();
    sub_1E4202774();
    sub_1E4202774();
    OUTLINED_FUNCTION_29();
    if (!v73)
    {
      v71 = sub_1E4202774();
      v70 = v71;
    }

    if (sub_1E3C27528(v71, v72))
    {
      OUTLINED_FUNCTION_30();
      (*(v74 + 152))(v217);

      OUTLINED_FUNCTION_32_1();
    }

    v77 = v175;
    sub_1E4200A54();
    OUTLINED_FUNCTION_9_10();

    (*(v196 + 32))(v26, v77, v199);
    v76 = v184;
    v78 = &v26[*(v184 + 36)];
    *v78 = v70;
    OUTLINED_FUNCTION_15_3(v78);
    v79 = v26;
    v80 = v177;
    sub_1E3741EA0(v79, v177, &qword_1ECF37530, &qword_1E42D5340);
    sub_1E3741EA0(v80, v36, &qword_1ECF37530, &qword_1E42D5340);
    v75 = 0;
  }

  else
  {
    v69 = v5;
    v75 = 1;
    v76 = v184;
  }

  __swift_storeEnumTagSinglePayload(v36, v75, 1, v76);
  v81 = sub_1E4202744();
  v82 = sub_1E4202774();
  sub_1E4202774();
  v83 = sub_1E4202774();
  v85 = v194;
  v84 = v195;
  if (v83 != v81)
  {
    v82 = sub_1E4202774();
  }

  sub_1E4200A54();
  OUTLINED_FUNCTION_9_10();
  sub_1E3741EA0(v36, v53, &qword_1ECF37538, &qword_1E42CBD60);
  v86 = &v53[*(v84 + 36)];
  *v86 = v82;
  OUTLINED_FUNCTION_15_3(v86);
  sub_1E3741EA0(v53, v198, &qword_1ECF37540, &qword_1E42CBD68);
  v87 = sub_1E3AE9144();
  if (v87)
  {
    v89 = v87;
    sub_1E3C27528(v87, v88);
    v90 = OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_64_21(v90);
    OUTLINED_FUNCTION_0_21(v91);
    v92 = OUTLINED_FUNCTION_24_73();
    sub_1E38838AC(v92, v93, v94, v69, v95, v96);
    (*(v85 + 8))(v89, v69);
    sub_1E4202744();
    v97 = OUTLINED_FUNCTION_41_4();
    sub_1E4202774();
    sub_1E4202774();
    OUTLINED_FUNCTION_29();
    v100 = v186;
    if (!v73)
    {
      v98 = sub_1E4202774();
      v97 = v98;
    }

    if (sub_1E3C27528(v98, v99))
    {
      OUTLINED_FUNCTION_30();
      (*(v101 + 152))(v218);

      OUTLINED_FUNCTION_32_1();
    }

    sub_1E4200A54();
    OUTLINED_FUNCTION_9_10();

    v104 = v179;
    (*(v196 + 32))(v179, v192, v199);
    v105 = (v104 + *(v76 + 36));
    *v105 = v97;
    OUTLINED_FUNCTION_15_3(v105);
    OUTLINED_FUNCTION_38_2();
    sub_1E3741EA0(v106, v107, v108, v109);
    v103 = v183;
    OUTLINED_FUNCTION_38_2();
    sub_1E3741EA0(v110, v111, v112, v113);
    v102 = 0;
    v84 = v195;
  }

  else
  {
    v102 = 1;
    v100 = v186;
    v103 = v183;
  }

  __swift_storeEnumTagSinglePayload(v103, v102, 1, v76);
  v114 = sub_1E4202744();
  v115 = sub_1E4202774();
  sub_1E4202774();
  if (sub_1E4202774() != v114)
  {
    v115 = sub_1E4202774();
  }

  sub_1E4200A54();
  OUTLINED_FUNCTION_9_10();
  v116 = v182;
  sub_1E3741EA0(v103, v182, &qword_1ECF37538, &qword_1E42CBD60);
  v117 = (v116 + *(v84 + 36));
  *v117 = v115;
  OUTLINED_FUNCTION_15_3(v117);
  sub_1E3741EA0(v116, v200, &qword_1ECF37540, &qword_1E42CBD68);
  v118 = sub_1E3AE9144();
  if (v118)
  {
    v120 = v118;
    sub_1E3C27528(v118, v119);
    v121 = OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_64_21(v121);
    OUTLINED_FUNCTION_0_21(v122);
    v123 = OUTLINED_FUNCTION_24_73();
    sub_1E38838AC(v123, v124, v125, v69, v126, v127);
    (*(v85 + 8))(v120, v69);
    sub_1E4202744();
    v128 = OUTLINED_FUNCTION_41_4();
    sub_1E4202774();
    sub_1E4202774();
    OUTLINED_FUNCTION_29();
    if (!v73)
    {
      v129 = sub_1E4202774();
      v128 = v129;
    }

    if (sub_1E3C27528(v129, v130))
    {
      OUTLINED_FUNCTION_30();
      (*(v131 + 152))(v219);

      OUTLINED_FUNCTION_32_1();
    }

    sub_1E4200A54();
    OUTLINED_FUNCTION_9_10();

    v134 = v181;
    (*(v196 + 32))(v181, v100, v199);
    v135 = (v134 + *(v76 + 36));
    *v135 = v128;
    OUTLINED_FUNCTION_15_3(v135);
    OUTLINED_FUNCTION_18_5();
    sub_1E3741EA0(v136, v137, v138, v139);
    v133 = v187;
    OUTLINED_FUNCTION_18_5();
    sub_1E3741EA0(v140, v141, v142, v143);
    v132 = 0;
  }

  else
  {
    v132 = 1;
    v133 = v187;
  }

  __swift_storeEnumTagSinglePayload(v133, v132, 1, v76);
  v144 = sub_1E4202744();
  v145 = sub_1E4202774();
  sub_1E4202774();
  if (sub_1E4202774() != v144)
  {
    v145 = sub_1E4202774();
  }

  sub_1E4200A54();
  OUTLINED_FUNCTION_9_10();
  v146 = v185;
  sub_1E3741EA0(v133, v185, &qword_1ECF37538, &qword_1E42CBD60);
  v147 = (v146 + *(v84 + 36));
  *v147 = v145;
  OUTLINED_FUNCTION_15_3(v147);
  sub_1E3741EA0(v146, v201, &qword_1ECF37540, &qword_1E42CBD68);
  sub_1E3AEABF4(v216);
  LOBYTE(v146) = sub_1E4202744();
  LODWORD(v199) = sub_1E4202774();
  sub_1E4202774();
  if (sub_1E4202774() != v146)
  {
    LODWORD(v199) = sub_1E4202774();
  }

  sub_1E4200A54();
  v196 = v148;
  v150 = v149;
  v152 = v151;
  v154 = v153;
  memcpy(v215, v216, 0x51uLL);
  v215[88] = 0;
  v155 = sub_1E3FFE5B8(0, 1);
  v156 = sub_1E4202744();
  v157 = sub_1E4202774();
  sub_1E4202774();
  if (sub_1E4202774() != v156)
  {
    v157 = sub_1E4202774();
  }

  sub_1E4200A54();
  v159 = v158;
  v161 = v160;
  v163 = v162;
  v165 = v164;
  v166 = v202;
  sub_1E3743538(v197, v202, &qword_1ECF37548, &qword_1E42CBD70);
  v213[0] = v166;
  v167 = v198;
  v168 = v188;
  sub_1E3743538(v198, v188, &qword_1ECF37540, &qword_1E42CBD68);
  v213[1] = v168;
  v169 = v200;
  v170 = v189;
  sub_1E3743538(v200, v189, &qword_1ECF37540, &qword_1E42CBD68);
  v213[2] = v170;
  v171 = v201;
  v172 = v190;
  sub_1E3743538(v201, v190, &qword_1ECF37540, &qword_1E42CBD68);
  v213[3] = v172;
  memcpy(v212, v215, 0x58uLL);
  LOBYTE(v212[11]) = v199;
  v212[12] = v196;
  v212[13] = v150;
  v212[14] = v152;
  v212[15] = v154;
  LOBYTE(v212[16]) = 0;
  v210 = 0;
  v211 = 0;
  v213[4] = v212;
  v213[5] = &v210;
  v203 = v155;
  v204 = v157;
  v205 = v159;
  v206 = v161;
  v207 = v163;
  v208 = v165;
  v209 = 0;
  v213[6] = &v203;
  sub_1E3CFB4B0(v213, v191);
  OUTLINED_FUNCTION_50_3(v171);
  OUTLINED_FUNCTION_50_3(v169);
  OUTLINED_FUNCTION_50_3(v167);
  sub_1E325F69C(v197, &qword_1ECF37548);
  memcpy(v214, v212, 0x81uLL);
  sub_1E325F69C(v214, &qword_1ECF37550);
  OUTLINED_FUNCTION_50_3(v172);
  OUTLINED_FUNCTION_50_3(v170);
  OUTLINED_FUNCTION_50_3(v168);
  return sub_1E325F69C(v202, &qword_1ECF37548);
}

uint64_t sub_1E3CFD640()
{
  v1 = v0;
  v2 = OUTLINED_FUNCTION_173();
  v3 = type metadata accessor for EpisodeLockup(v2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = sub_1E4200AF4();
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  v12 = v11 - v10;
  sub_1E4200AE4();
  sub_1E3CFE0A8(v1, &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v14 = swift_allocObject();
  sub_1E3CFE10C(&v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13);
  v15 = swift_allocObject();
  *(v15 + 16) = sub_1E3CFE170;
  *(v15 + 24) = v14;
  sub_1E4203B64();

  return (*(v8 + 8))(v12, v6);
}

void *sub_1E3CFD810@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_1E4201B84();
  v12 = 0;
  sub_1E3CFD8E0();
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v14, __src, 0x161uLL);
  OUTLINED_FUNCTION_38_2();
  sub_1E3743538(v4, v5, v6, v7);
  sub_1E325F69C(v14, &unk_1ECF37510);
  memcpy(&v11[7], __dst, 0x161uLL);
  v8 = v12;
  *a2 = v3;
  *(a2 + 8) = 0;
  *(a2 + 16) = v8;
  return memcpy((a2 + 17), v11, 0x168uLL);
}

void sub_1E3CFD8E0()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v3 = sub_1E42012F4();
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9_12();
  type metadata accessor for DownloadStatusAndContextMenuButtonView(0);
  sub_1E3746E10(v0);
  v7 = sub_1E3B02B0C();
  v8 = *(v5 + 8);
  v8(v0, v3);
  if (v7)
  {
    sub_1E3CFE078(v28);
  }

  else
  {
    sub_1E3CFDB74();
    nullsub_1();
    OUTLINED_FUNCTION_80_12(v28);
  }

  sub_1E3CFDDB0();
  sub_1E3746E10(v0);
  v9 = sub_1E3B02B0C();
  v8(v0, v3);
  if (v9)
  {
    sub_1E3CFDB74();
    nullsub_1();
    memcpy(v27, v25, 0x81uLL);
  }

  else
  {
    sub_1E3CFE078(v27);
  }

  memcpy(v19, v28, sizeof(v19));
  OUTLINED_FUNCTION_80_12(v23);
  memcpy(v20, v28, sizeof(v20));
  memcpy(v18, v28, 0x81uLL);
  memcpy(v21, v26, 0x51uLL);
  memcpy(&v18[136], v26, 0x51uLL);
  OUTLINED_FUNCTION_80_12(&v22);
  OUTLINED_FUNCTION_80_12(&v18[224]);
  memcpy(v2, v18, 0x161uLL);
  OUTLINED_FUNCTION_18_5();
  sub_1E3743538(v10, v11, v12, v13);
  sub_1E3743538(v21, v25, &qword_1ECF32A38, &unk_1E42BC620);
  OUTLINED_FUNCTION_18_5();
  sub_1E3743538(v14, v15, v16, v17);
  sub_1E325F69C(v23, &unk_1ECF37518);
  memcpy(v24, v26, 0x51uLL);
  sub_1E325F69C(v24, &qword_1ECF32A38);
  memcpy(v25, v19, 0x81uLL);
  sub_1E325F69C(v25, &unk_1ECF37518);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3CFDB74()
{
  OUTLINED_FUNCTION_9_4();
  v6 = v5;
  v7 = sub_1E39C408C();
  if (!v7)
  {
    goto LABEL_9;
  }

  v8 = v7;
  if (*v7 != _TtC8VideosUI31DownloadStateIndicatorViewModel)
  {

LABEL_9:
    sub_1E3CE3B40(v23);
    goto LABEL_10;
  }

  v9 = v0 + *(type metadata accessor for DownloadStatusAndContextMenuButtonView(0) + 28);
  v10 = *(v9 + 8);
  LOBYTE(__dst[0]) = *v9;
  __dst[1] = v10;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF294E0, &qword_1E429C8B0);
  sub_1E4203914();
  sub_1E3F66914(v8, 0, v23[0], v23[1], v23[2], __src);
  OUTLINED_FUNCTION_52_36();
  sub_1E42038F4();
  OUTLINED_FUNCTION_52_36();
  sub_1E42038F4();
  sub_1E4203DA4();
  sub_1E4200D94();
  OUTLINED_FUNCTION_52_36();
  sub_1E42038F4();
  if (LOBYTE(__dst[0]) == 1 && *(v0 + 8) && (OUTLINED_FUNCTION_8(), (*(v11 + 1976))(), OUTLINED_FUNCTION_30(), (*(v12 + 152))(v21), v1 = v21[0], v2 = v21[1], v3 = v21[2], v4 = v21[3], , (v22 & 1) == 0))
  {
    OUTLINED_FUNCTION_13_3(v13, v14, v15, v16);
  }

  else
  {
    OUTLINED_FUNCTION_5_8();
  }

  OUTLINED_FUNCTION_3();
  v17 = sub_1E4202734();

  v20 = 0;
  memcpy(__dst, __src, 0x58uLL);
  LOBYTE(__dst[11]) = v17;
  __dst[12] = v1;
  __dst[13] = v2;
  __dst[14] = v3;
  __dst[15] = v4;
  LOBYTE(__dst[16]) = 0;
  nullsub_1();
  memcpy(v23, __dst, 0x81uLL);
LABEL_10:
  memcpy(v6, v23, 0x81uLL);
  OUTLINED_FUNCTION_10_3();
}

void sub_1E3CFDDB0()
{
  OUTLINED_FUNCTION_9_4();
  OUTLINED_FUNCTION_173();
  sub_1E42012F4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9_12();
  v6 = *v1;
  if (sub_1E39C408C())
  {

    v8 = v1[1];
    if (v8 && ((*(*v8 + 2000))(v7), OUTLINED_FUNCTION_30(), (*(v9 + 152))(&v41), , (v42 & 1) == 0))
    {
      v14 = OUTLINED_FUNCTION_13_3(v10, v11, v12, v13);
    }

    else
    {
      v14 = OUTLINED_FUNCTION_5_8();
    }

    v24 = v14;
    v25 = v15;
    v26 = v16;
    type metadata accessor for DownloadStatusAndContextMenuButtonView(0);
    sub_1E3746E10(v2);
    v40 = sub_1E3B02B0C();
    v27 = *(v4 + 8);
    v28 = OUTLINED_FUNCTION_171_0();
    v27(v28);
    sub_1E3746E10(v2);
    v39 = sub_1E3B02B0C();
    v29 = OUTLINED_FUNCTION_171_0();
    v27(v29);
    sub_1E3746E10(v2);
    v30 = sub_1E3B02B0C();
    v31 = OUTLINED_FUNCTION_171_0();
    v27(v31);
    v19 = v26;
    if (v8)
    {
      v32 = *(*v8 + 2000);

      v34 = v32(v33);
    }

    else
    {

      v34 = 0;
    }

    sub_1E397F070(v6, v34, v43);
    v38 = v43[0];
    v37 = v43[1];
    v35 = v44;
    if (v40)
    {
      v17 = v24;
    }

    else
    {
      v17 = 0.0;
    }

    if (v39)
    {
      v18 = 0;
    }

    else
    {
      v18 = v25;
    }

    if ((v30 & 1) == 0)
    {
      v19 = 0;
    }

    v36 = sub_1E4202734();
    v23 = v37;
    v22 = v38;
    v21 = v35;
    v20 = v36;
  }

  else
  {
    v17 = 0.0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0uLL;
    v23 = 0uLL;
  }

  *v0 = v22;
  *(v0 + 16) = v23;
  *(v0 + 32) = v21;
  *(v0 + 40) = v20;
  *(v0 + 48) = v17;
  *(v0 + 56) = v18;
  *(v0 + 64) = 0;
  *(v0 + 72) = v19;
  *(v0 + 80) = 0;
  OUTLINED_FUNCTION_10_3();
}

double sub_1E3CFE078(uint64_t a1)
{
  *a1 = 1;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 113) = 0u;
  return result;
}

uint64_t sub_1E3CFE0A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EpisodeLockup(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E3CFE10C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EpisodeLockup(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1E3CFE170()
{
  v1 = type metadata accessor for EpisodeLockup(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  if (sub_1E39C408C())
  {
    type metadata accessor for ImageViewModel();
    OUTLINED_FUNCTION_19_3();
    v3 = swift_dynamicCastClass();
    if (v3)
    {
      v4 = v3;
      v11 = 0;
      *(&v13 + 1) = MEMORY[0x1E69E6370];
      LOBYTE(v12) = 1;
      v5 = *(*v3 + 784);

      v5(&v11, &v12, &unk_1F5D5E7B8, &off_1F5D5CC78);

      sub_1E325F69C(&v12, &unk_1ECF296E0);
      v6 = *(v2 + *(v1 + 36));
      if (v6)
      {
        v12 = 0u;
        v13 = 0u;
        v14 = 1;
        v7 = *((*MEMORY[0x1E69E7D40] & *v6) + 0x1D0);
        v8 = v6;
        v7(2, v4, 0, &v12);
      }

      else
      {
        type metadata accessor for Router(0);
        OUTLINED_FUNCTION_38_42();
        sub_1E3CFE54C(v9, v10, &unk_1E42EB398);
        OUTLINED_FUNCTION_21_1();
        sub_1E4201744();
        __break(1u);
      }
    }

    else
    {
    }
  }
}

uint64_t sub_1E3CFE3B8@<X0>(void *a1@<X8>)
{
  v2 = sub_1E39C408C();
  if (v2)
  {
    sub_1E413D6F4(v2, a1);
    v3 = 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = type metadata accessor for PlaybackStatus(0);

  return __swift_storeEnumTagSinglePayload(a1, v3, 1, v4);
}

uint64_t sub_1E3CFE428@<X0>(void *a1@<X8>)
{
  v3 = **(v1 + 16);

  v4 = sub_1E3CF7A74();
  KeyPath = swift_getKeyPath();
  v6 = type metadata accessor for DownloadStatusAndContextMenuButtonView(0);
  *(a1 + *(v6 + 24)) = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18, &qword_1E42982F0);
  swift_storeEnumTagMultiPayload();
  *a1 = v3;
  a1[1] = v4;
  v7 = a1 + *(v6 + 28);
  result = sub_1E42038E4();
  *v7 = v9;
  *(v7 + 1) = v10;
  return result;
}

unint64_t sub_1E3CFE4F4()
{
  result = qword_1ECF60060;
  if (!qword_1ECF60060)
  {
    type metadata accessor for DownloadStatusAndContextMenuButtonView(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF60060);
  }

  return result;
}

uint64_t sub_1E3CFE54C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t OUTLINED_FUNCTION_79_17@<X0>(uint64_t a1@<X0>, unsigned __int8 a2@<W1>, char a3@<W2>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v7 = *(v5 - 304);

  return sub_1E38838AC(a1, a2, a3, v7, a4, a5);
}

void *OUTLINED_FUNCTION_80_12(void *a1)
{

  return memcpy(a1, (v1 + 1312), 0x81uLL);
}

uint64_t sub_1E3CFE5D8()
{
  OUTLINED_FUNCTION_23();
  result = sub_1E4205ED4();
  static NSNotificationName.VUISportsFavoritesLocalStorageDidChange = result;
  return result;
}

uint64_t *NSNotificationName.VUISportsFavoritesLocalStorageDidChange.unsafeMutableAddressor()
{
  if (qword_1ECF60070[0] != -1)
  {
    OUTLINED_FUNCTION_18_84(qword_1ECF60070);
  }

  return &static NSNotificationName.VUISportsFavoritesLocalStorageDidChange;
}

uint64_t sub_1E3CFE670()
{
  OUTLINED_FUNCTION_23();
  result = sub_1E4205ED4();
  static NSNotificationName.VUISportsFavoritesFavoritesRequestDidFinish = result;
  return result;
}

uint64_t *NSNotificationName.VUISportsFavoritesFavoritesRequestDidFinish.unsafeMutableAddressor()
{
  if (_MergedGlobals_230 != -1)
  {
    OUTLINED_FUNCTION_17_99(&_MergedGlobals_230);
  }

  return &static NSNotificationName.VUISportsFavoritesFavoritesRequestDidFinish;
}

uint64_t sub_1E3CFE708()
{
  OUTLINED_FUNCTION_23();
  result = sub_1E4205ED4();
  static NSNotificationName.VUIAuthenticationManagerAccountStoreDidChange = result;
  return result;
}

uint64_t *NSNotificationName.VUIAuthenticationManagerAccountStoreDidChange.unsafeMutableAddressor()
{
  if (qword_1EE28C438 != -1)
  {
    OUTLINED_FUNCTION_15_109(&qword_1EE28C438);
  }

  return &static NSNotificationName.VUIAuthenticationManagerAccountStoreDidChange;
}

uint64_t sub_1E3CFE7A0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF326C0, &qword_1E429D160);
  sub_1E32752B0(&unk_1EE28A130, &unk_1ECF326C0, &qword_1E429D160, MEMORY[0x1E695BF88]);
  return sub_1E42006B4();
}

void sub_1E3CFE834()
{
  type metadata accessor for SportsFavoritesManager(0);
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  *(v0 + 24) = MEMORY[0x1E69E7CD0];
  *(v0 + 32) = 2;
  v1 = OBJC_IVAR____TtC8VideosUI22SportsFavoritesManager_pendingContinuation;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DA40, &qword_1E42C71D0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtC8VideosUI22SportsFavoritesManager_isRemovalConfirmationInProgress;
  *(v0 + OBJC_IVAR____TtC8VideosUI22SportsFavoritesManager_teamFavoritesLock) = 0;
  *(v0 + v3) = 0;
  v4 = OBJC_IVAR____TtC8VideosUI22SportsFavoritesManager_teamFavoriteIdsSubject;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF326C0, &qword_1E429D160);
  swift_allocObject();
  *(v0 + v4) = sub_1E4200544();
  sub_1E3CFEA94(1);
  v5 = objc_opt_self();
  v6 = [v5 defaultCenter];
  [v6 addObserver:v0 selector:sel_handleSportsFavoriteSyncNotification_ name:*MEMORY[0x1E69E1730] object:0];

  v7 = [v5 defaultCenter];
  v8 = _MergedGlobals_230;

  if (v8 != -1)
  {
    OUTLINED_FUNCTION_17_99(&_MergedGlobals_230);
  }

  [v7 addObserver:v0 selector:sel_handleFavoriteRequestDidFinish_ name:static NSNotificationName.VUISportsFavoritesFavoritesRequestDidFinish object:0];

  v9 = [v5 defaultCenter];
  v10 = qword_1EE28C438;

  if (v10 != -1)
  {
    OUTLINED_FUNCTION_15_109(&qword_1EE28C438);
  }

  [v9 addObserver:v0 selector:sel_handleAccountDidChange_ name:static NSNotificationName.VUIAuthenticationManagerAccountStoreDidChange object:0];

  qword_1EE2AACB0 = v0;
}

uint64_t *sub_1E3CFEA54()
{
  if (qword_1EE299E48 != -1)
  {
    OUTLINED_FUNCTION_4_170(&qword_1EE299E48);
  }

  return &qword_1EE2AACB0;
}

void sub_1E3CFEA94(char a1)
{
  v2 = objc_opt_self();
  OUTLINED_FUNCTION_4_0();
  v3 = swift_allocObject();
  swift_weakInit();
  v5[4] = sub_1E3D034E8;
  v5[5] = v3;
  OUTLINED_FUNCTION_3_4();
  v5[1] = 1107296256;
  v5[2] = sub_1E3CFF370;
  v5[3] = &block_descriptor_96;
  v4 = _Block_copy(v5);

  [v2 getFavoriteTeamsIgnoringCache:a1 & 1 completion:v4];
  _Block_release(v4);
}

void sub_1E3CFEB68()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v4 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v77 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v77 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DA40, &qword_1E42C71D0);
  OUTLINED_FUNCTION_0_10();
  v82 = v14;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v15);
  v81 = &v77 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37608, &qword_1E42CBE48);
  v18 = OUTLINED_FUNCTION_17_2(v17);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v77 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v84 = &v77 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v77 - v24;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v27 = Strong;
    v83 = v6;
    if (v1)
    {
      *(Strong + 32) = 1;
      v28 = OBJC_IVAR____TtC8VideosUI22SportsFavoritesManager_pendingContinuation;
      OUTLINED_FUNCTION_25();
      swift_beginAccess();
      sub_1E37E93E8(v27 + v28, v25, &qword_1ECF37608, &qword_1E42CBE48);
      if (__swift_getEnumTagSinglePayload(v25, 1, v13))
      {
        v29 = v1;
        sub_1E325F6F0(v25, &qword_1ECF37608, &qword_1E42CBE48);
      }

      else
      {
        v45 = OUTLINED_FUNCTION_53_34();
        v46(v45, v25, v13);
        v47 = v1;
        sub_1E325F6F0(v25, &qword_1ECF37608, &qword_1E42CBE48);
        v87[0] = v1;
        v48 = v1;
        sub_1E42063C4();
        v49 = OUTLINED_FUNCTION_63_0();
        v50(v49);
      }

      v51 = v84;
      v52 = OUTLINED_FUNCTION_19_90();
      __swift_storeEnumTagSinglePayload(v52, v53, v54, v13);
      OUTLINED_FUNCTION_11_3(v27 + v28, v87);
      sub_1E3D00130(v51, v27 + v28);
      swift_endAccess();
      v55 = sub_1E324FBDC();
      v56 = v83;
      (*(v83 + 16))(v12, v55, v4);
      v57 = v1;
      v58 = sub_1E41FFC94();
      v59 = sub_1E42067E4();

      if (os_log_type_enabled(v58, v59))
      {
        v60 = OUTLINED_FUNCTION_6_21();
        v61 = swift_slowAlloc();
        v80 = v4;
        v62 = v61;
        v87[0] = v61;
        *v60 = 136315138;
        swift_getErrorValue();
        v63 = sub_1E4207AB4();
        v65 = sub_1E3270FC8(v63, v64, v87);

        *(v60 + 4) = v65;
        _os_log_impl(&dword_1E323F000, v58, v59, "SportsFavoritesLocalStorage::error fetching favorites:%s", v60, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v62);
        OUTLINED_FUNCTION_6_0();
        OUTLINED_FUNCTION_6_0();

        (*(v56 + 8))(v12, v80);
      }

      else
      {

        (*(v56 + 8))(v12, v4);
      }
    }

    else
    {
      v30 = OBJC_IVAR____TtC8VideosUI22SportsFavoritesManager_teamFavoritesLock;
      OUTLINED_FUNCTION_11_3(Strong + OBJC_IVAR____TtC8VideosUI22SportsFavoritesManager_teamFavoritesLock, v88);
      os_unfair_lock_lock((v27 + v30));
      swift_endAccess();
      if (v3)
      {
        v31 = v3;
      }

      else
      {
        v31 = MEMORY[0x1E69E7CC0];
      }

      v32 = sub_1E32772D8(v31);
      OUTLINED_FUNCTION_3_0(v27 + 24, v88);
      v33 = *(v27 + 24);

      v34 = sub_1E3868C04(v32, v33);

      v35 = 1;
      if (v34)
      {
        v35 = *(v27 + 32);
      }

      v79 = v35;
      *(v27 + 24) = v32;

      *(v27 + 32) = 0;
      OUTLINED_FUNCTION_3_0(v27 + 16, v87);
      *(v27 + 16) = 1;
      OUTLINED_FUNCTION_11_3(v27 + v30, v86);
      os_unfair_lock_unlock((v27 + v30));
      swift_endAccess();
      v36 = sub_1E324FBDC();
      v37 = v83;
      (*(v83 + 16))(v9, v36, v4);

      v38 = sub_1E41FFC94();
      v39 = sub_1E42067E4();

      if (os_log_type_enabled(v38, v39))
      {
        v40 = OUTLINED_FUNCTION_6_21();
        v78 = swift_slowAlloc();
        v86[0] = v78;
        *v40 = 136315138;
        v41 = sub_1E4206634();
        v80 = v4;
        v43 = v42;

        v44 = sub_1E3270FC8(v41, v43, v86);

        *(v40 + 4) = v44;
        _os_log_impl(&dword_1E323F000, v38, v39, "SportsFavoritesLocalStorage:: favorites changed:%s", v40, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v78);
        OUTLINED_FUNCTION_6_0();
        OUTLINED_FUNCTION_6_0();

        (*(v83 + 8))(v9, v80);
      }

      else
      {

        (*(v37 + 8))(v9, v4);
      }

      if (v79)
      {
        OUTLINED_FUNCTION_58_28();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF326C0, &qword_1E429D160);
        OUTLINED_FUNCTION_0_218();
        sub_1E32752B0(v66, &unk_1ECF326C0, &qword_1E429D160, v67);
        sub_1E4200624();

        sub_1E3CFFB28();
      }

      v68 = OBJC_IVAR____TtC8VideosUI22SportsFavoritesManager_pendingContinuation;
      OUTLINED_FUNCTION_25();
      swift_beginAccess();
      sub_1E37E93E8(v27 + v68, v20, &qword_1ECF37608, &qword_1E42CBE48);
      if (__swift_getEnumTagSinglePayload(v20, 1, v13))
      {
        sub_1E325F6F0(v20, &qword_1ECF37608, &qword_1E42CBE48);
      }

      else
      {
        v69 = OUTLINED_FUNCTION_53_34();
        v70(v69, v20, v13);
        sub_1E325F6F0(v20, &qword_1ECF37608, &qword_1E42CBE48);
        sub_1E42063D4();
        v71 = OUTLINED_FUNCTION_63_0();
        v72(v71);
      }

      v73 = v84;
      v74 = OUTLINED_FUNCTION_19_90();
      __swift_storeEnumTagSinglePayload(v74, v75, v76, v13);
      OUTLINED_FUNCTION_11_3(v27 + v68, &v85);
      sub_1E3D00130(v73, v27 + v68);
      swift_endAccess();
    }
  }

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3CFF370(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = sub_1E42062B4();
  }

  else
  {
    v5 = 0;
  }

  v6 = a3;
  v4(v5, a3);
}

void sub_1E3CFF428()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v2 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  sub_1E41FDF14();
  if (!*(&v37 + 1))
  {
    goto LABEL_14;
  }

  if ((OUTLINED_FUNCTION_26_75(&v34, v9, v10, MEMORY[0x1E69E6158]) & 1) == 0)
  {
    goto LABEL_15;
  }

  v11 = v34;
  if (!sub_1E41FDF24())
  {

    goto LABEL_15;
  }

  v12 = sub_1E4205C44();

  *&v34 = sub_1E4205F14();
  *(&v34 + 1) = v13;
  v14 = [v12 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v14)
  {
    sub_1E4207264();
    swift_unknownObjectRelease();
  }

  else
  {
    v34 = 0u;
    v35 = 0u;
  }

  v36 = v34;
  v37 = v35;
  if (!*(&v35 + 1))
  {

LABEL_14:
    sub_1E325F6F0(&v36, &unk_1ECF296E0, &unk_1E4298030);
    goto LABEL_15;
  }

  v15 = sub_1E3280A90(0, &qword_1EE23ADD0, 0x1E696AD98);
  if ((OUTLINED_FUNCTION_26_75(&v33, v16, v17, v15) & 1) == 0)
  {

LABEL_23:

    goto LABEL_15;
  }

  v18 = v33;
  v19 = [v12 vui:@"Error" errorForKey:?];
  if (!v19)
  {
    v29 = [v18 integerValue];
    v33 = MEMORY[0x1E69E7CD0];
    *&v34 = MEMORY[0x1E69E7CD0];
    if (v29)
    {
      sub_1E3277398(&v36, v11, *(&v11 + 1));

      v30 = MEMORY[0x1E69E7CD0];
      v31 = v33;
    }

    else
    {
      sub_1E3277398(&v36, v11, *(&v11 + 1));

      v31 = MEMORY[0x1E69E7CD0];
      v30 = v34;
    }

    (*(*v1 + 400))(v30, v31);

    goto LABEL_23;
  }

  v20 = v19;

  v21 = sub_1E324FBDC();
  (*(v4 + 16))(v8, v21, v2);
  v22 = v20;
  v23 = sub_1E41FFC94();
  v24 = sub_1E42067D4();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = OUTLINED_FUNCTION_6_21();
    v32 = v18;
    v26 = swift_slowAlloc();
    *v25 = 138412290;
    v27 = v22;
    v28 = _swift_stdlib_bridgeErrorToNSError();
    *(v25 + 4) = v28;
    *v26 = v28;
    _os_log_impl(&dword_1E323F000, v23, v24, "SportsFavoritesLocalStorage:: not updating favorite ids due to error %@", v25, 0xCu);
    sub_1E325F6F0(v26, &unk_1ECF28E30, &qword_1E429E820);
    v22 = v32;
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();
  }

  else
  {
    v27 = v23;
    v23 = v18;
  }

  (*(v4 + 8))(v8, v2);
LABEL_15:
  OUTLINED_FUNCTION_25_2();
}

double sub_1E3CFF900()
{
  if ([objc_opt_self() userHasActiveAccount])
  {

    sub_1E3CFEA94(1);
  }

  else
  {
    v2 = OBJC_IVAR____TtC8VideosUI22SportsFavoritesManager_teamFavoritesLock;
    OUTLINED_FUNCTION_11_3(v0 + OBJC_IVAR____TtC8VideosUI22SportsFavoritesManager_teamFavoritesLock, v12);
    os_unfair_lock_lock((v0 + v2));
    swift_endAccess();
    OUTLINED_FUNCTION_3_0(v0 + 16, v12);
    *(v0 + 16) = 0;
    OUTLINED_FUNCTION_3_0(v0 + 24, v11);
    *(v0 + 24) = MEMORY[0x1E69E7CD0];

    OUTLINED_FUNCTION_11_3(v0 + v2, v10);
    os_unfair_lock_unlock((v0 + v2));
    swift_endAccess();

    v3 = OUTLINED_FUNCTION_27_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
    OUTLINED_FUNCTION_0_218();
    OUTLINED_FUNCTION_77();
    v9 = sub_1E32752B0(v5, v6, v7, v8);
    OUTLINED_FUNCTION_59_26(v9);
  }

  return result;
}

uint64_t sub_1E3CFFA48(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v5 = sub_1E41FDF34();
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  v11 = v10 - v9;
  sub_1E41FDEE4();

  a4(v12);

  return (*(v7 + 8))(v11, v5);
}

void sub_1E3CFFB28()
{
  v1 = [objc_opt_self() defaultCenter];
  v2 = v1;
  if (qword_1ECF60070[0] != -1)
  {
    OUTLINED_FUNCTION_18_84(qword_1ECF60070);
    v1 = v2;
  }

  [v1 postNotificationName:static NSNotificationName.VUISportsFavoritesLocalStorageDidChange object:v0];
}

uint64_t sub_1E3CFFBB8()
{
  OUTLINED_FUNCTION_24();
  v1[9] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DA40, &qword_1E42C71D0);
  v1[10] = v2;
  OUTLINED_FUNCTION_8_0(v2);
  v1[11] = v3;
  v1[12] = OUTLINED_FUNCTION_86_0();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37608, &qword_1E42CBE48);
  OUTLINED_FUNCTION_17_2(v4);
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  OUTLINED_FUNCTION_169();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1E3CFFCAC()
{
  v1 = v0[14];
  v3 = v0[9];
  v2 = v0[10];
  v4 = OBJC_IVAR____TtC8VideosUI22SportsFavoritesManager_pendingContinuation;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  sub_1E37E93E8(v3 + v4, v1, &qword_1ECF37608, &qword_1E42CBE48);
  if (__swift_getEnumTagSinglePayload(v1, 1, v2))
  {
    sub_1E325F6F0(v0[14], &qword_1ECF37608, &qword_1E42CBE48);
  }

  else
  {
    v5 = v0[14];
    (*(v0[11] + 16))(v0[12], v5, v0[10]);
    v6 = sub_1E325F6F0(v5, &qword_1ECF37608, &qword_1E42CBE48);
    sub_1E3D002C4(v6, v7, v8);
    v9 = swift_allocError();
    *v10 = 2;
    v0[8] = v9;
    sub_1E42063C4();
    v11 = OUTLINED_FUNCTION_27_0();
    v12(v11);
  }

  v13 = v0[13];
  v14 = v0[9];
  v15 = OUTLINED_FUNCTION_19_90();
  __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
  OUTLINED_FUNCTION_11_3(v3 + v4, (v0 + 5));
  sub_1E3D00130(v13, v3 + v4);
  swift_endAccess();
  if (*(v14 + 32) == 2)
  {
    OUTLINED_FUNCTION_4_0();
    v19 = swift_allocObject();
    v0[15] = v19;
    swift_weakInit();
    v20 = swift_task_alloc();
    v0[16] = v20;
    *v20 = v0;
    v20[1] = sub_1E3CFFF40;
    OUTLINED_FUNCTION_169();

    return MEMORY[0x1EEE6DE38](v21, v22, v23, 0xD000000000000016, v24, v25, v19, v26);
  }

  else
  {

    OUTLINED_FUNCTION_15_12();

    return v27();
  }
}

uint64_t sub_1E3CFFF40()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  v3 = v2;
  OUTLINED_FUNCTION_31();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_7();
  *v6 = v5;
  *(v3 + 136) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_169();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1E3D00044()
{
  OUTLINED_FUNCTION_24();

  OUTLINED_FUNCTION_15_12();

  return v0();
}

uint64_t sub_1E3D000B0()
{
  OUTLINED_FUNCTION_27_2();

  OUTLINED_FUNCTION_54();

  return v0();
}

uint64_t sub_1E3D00130(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37608, &qword_1E42CBE48);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

double sub_1E3D001A0(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37608, &qword_1E42CBE48);
  OUTLINED_FUNCTION_17_2(v2);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v13[-v4];
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DA40, &qword_1E42C71D0);
    OUTLINED_FUNCTION_2();
    v10 = OUTLINED_FUNCTION_27_0();
    v11(v10);
    __swift_storeEnumTagSinglePayload(v5, 0, 1, v9);
    v12 = OBJC_IVAR____TtC8VideosUI22SportsFavoritesManager_pendingContinuation;
    OUTLINED_FUNCTION_11_3(v8 + OBJC_IVAR____TtC8VideosUI22SportsFavoritesManager_pendingContinuation, v13);
    sub_1E3D00130(v5, v8 + v12);
    swift_endAccess();
  }

  return result;
}

unint64_t sub_1E3D002C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF37610;
  if (!qword_1ECF37610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF37610);
  }

  return result;
}

void sub_1E3D00318()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_42_1();
  sub_1E324FBDC();
  OUTLINED_FUNCTION_51_4();
  v5(v0);
  v6 = sub_1E41FFC94();
  v7 = sub_1E42067E4();
  if (os_log_type_enabled(v6, v7))
  {
    *OUTLINED_FUNCTION_125_0() = 0;
    OUTLINED_FUNCTION_108_1(&dword_1E323F000, v8, v9, "SportsFavoritesLocalStorage::setTeamFavorites");
    OUTLINED_FUNCTION_6_0();
  }

  v10 = OUTLINED_FUNCTION_63_0();
  v11(v10);
  v12 = OBJC_IVAR____TtC8VideosUI22SportsFavoritesManager_teamFavoritesLock;
  OUTLINED_FUNCTION_11_3(v1 + OBJC_IVAR____TtC8VideosUI22SportsFavoritesManager_teamFavoritesLock, v30);
  v28 = v12;
  os_unfair_lock_lock((v1 + v12));
  swift_endAccess();
  OUTLINED_FUNCTION_3_0(v1 + 24, &v31);
  *(v1 + 24) = MEMORY[0x1E69E7CD0];

  v13 = sub_1E32AE9B0(v3);
  for (i = 0; ; ++i)
  {
    if (v13 == i)
    {
      *(v1 + 32) = 0;
      OUTLINED_FUNCTION_11_3(v1 + v28, v30);
      os_unfair_lock_unlock((v1 + v28));
      swift_endAccess();
      OUTLINED_FUNCTION_58_28();
      v21 = OUTLINED_FUNCTION_27_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(v21, v22);
      OUTLINED_FUNCTION_0_218();
      OUTLINED_FUNCTION_77();
      v27 = sub_1E32752B0(v23, v24, v25, v26);
      OUTLINED_FUNCTION_59_26(v27);

      OUTLINED_FUNCTION_25_2();
      return;
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1E6911E60](i, v3);
    }

    else
    {
      if (i >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_18;
      }
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    v15 = sub_1E39C2CD0();
    if (v16)
    {
      v17 = v15;
      v18 = v16;
      v30[3] = &unk_1F5D5D528;
      v30[4] = &off_1F5D5C858;
      LOBYTE(v30[0]) = 0;
      v19 = j__OUTLINED_FUNCTION_18();
      v20 = sub_1E39C29F0(v30, v19 & 1);
      __swift_destroy_boxed_opaque_existential_1(v30);
      if (v20)
      {
        OUTLINED_FUNCTION_11_3(v1 + 24, v30);
        sub_1E3277398(&v29, v17, v18);
        swift_endAccess();

        continue;
      }
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
}

uint64_t sub_1E3D005F8(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  if (a2)
  {
    v5 = OBJC_IVAR____TtC8VideosUI22SportsFavoritesManager_teamFavoritesLock;
    OUTLINED_FUNCTION_11_3(v2 + OBJC_IVAR____TtC8VideosUI22SportsFavoritesManager_teamFavoritesLock, v9);
    os_unfair_lock_lock((v2 + v5));
    swift_endAccess();
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    v6 = *(v2 + 24);

    LOBYTE(v3) = sub_1E3862230(a1, v3, v6);

    OUTLINED_FUNCTION_11_3(v2 + v5, &v8);
    os_unfair_lock_unlock((v2 + v5));
    swift_endAccess();
  }

  return v3 & 1;
}

uint64_t sub_1E3D006B4()
{
  v1 = v0;
  v2 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_42_1();
  v6 = sub_1E324FBDC();
  (*(v4 + 16))(v0, v6, v2);
  v7 = sub_1E41FFC94();
  v8 = sub_1E42067E4();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = OUTLINED_FUNCTION_125_0();
    *v9 = 0;
    _os_log_impl(&dword_1E323F000, v7, v8, "SportsFavoritesLocalStorage::returnTeamFavorites", v9, 2u);
    OUTLINED_FUNCTION_6_0();
  }

  (*(v4 + 8))(v0, v2);
  v10 = OBJC_IVAR____TtC8VideosUI22SportsFavoritesManager_teamFavoritesLock;
  OUTLINED_FUNCTION_11_3(v0 + OBJC_IVAR____TtC8VideosUI22SportsFavoritesManager_teamFavoritesLock, v13);
  os_unfair_lock_lock((v0 + v10));
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v11 = *(v0 + 24);

  os_unfair_lock_unlock((v1 + v10));
  swift_endAccess();
  return v11;
}

double sub_1E3D00838(uint64_t a1)
{
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_42_1();
  sub_1E324FBDC();
  OUTLINED_FUNCTION_51_4();
  v4(v1);
  v5 = sub_1E41FFC94();
  v6 = sub_1E42067E4();
  if (os_log_type_enabled(v5, v6))
  {
    *OUTLINED_FUNCTION_125_0() = 0;
    OUTLINED_FUNCTION_108_1(&dword_1E323F000, v7, v8, "SportsFavoritesLocalStorage::setTeamFavorites_ids");
    OUTLINED_FUNCTION_6_0();
  }

  v9 = OUTLINED_FUNCTION_63_0();
  v10(v9);
  v11 = OBJC_IVAR____TtC8VideosUI22SportsFavoritesManager_teamFavoritesLock;
  OUTLINED_FUNCTION_11_3(v1 + OBJC_IVAR____TtC8VideosUI22SportsFavoritesManager_teamFavoritesLock, v21);
  os_unfair_lock_lock((v1 + v11));
  swift_endAccess();
  OUTLINED_FUNCTION_3_0(v1 + 24, v21);
  *(v1 + 24) = a1;

  *(v1 + 32) = 1;
  OUTLINED_FUNCTION_11_3(v1 + v11, v20);
  os_unfair_lock_unlock((v1 + v11));
  swift_endAccess();
  OUTLINED_FUNCTION_58_28();
  v12 = OUTLINED_FUNCTION_27_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v12, v13);
  OUTLINED_FUNCTION_0_218();
  OUTLINED_FUNCTION_77();
  v18 = sub_1E32752B0(v14, v15, v16, v17);
  OUTLINED_FUNCTION_59_26(v18);

  return result;
}

void sub_1E3D00A0C()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_42_1();
  v10 = sub_1E324FBDC();
  (*(v8 + 16))(v0, v10, v6);
  v11 = sub_1E41FFC94();
  v12 = sub_1E42067E4();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = OUTLINED_FUNCTION_125_0();
    *v13 = 0;
    _os_log_impl(&dword_1E323F000, v11, v12, "SportsFavoritesLocalStorage::handleFavoritesChange", v13, 2u);
    OUTLINED_FUNCTION_6_0();
  }

  (*(v8 + 8))(v0, v6);
  v14 = OBJC_IVAR____TtC8VideosUI22SportsFavoritesManager_teamFavoritesLock;
  OUTLINED_FUNCTION_11_3(v1 + OBJC_IVAR____TtC8VideosUI22SportsFavoritesManager_teamFavoritesLock, v45);
  os_unfair_lock_lock((v1 + v14));
  swift_endAccess();
  OUTLINED_FUNCTION_4_4();
  v17 = v16 & v15;
  v19 = (v18 + 63) >> 6;

  v20 = 0;
  if (v17)
  {
    while (1)
    {
      v21 = v20;
LABEL_9:
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
      v23 = (*(v5 + 48) + ((v21 << 10) | (16 * v22)));
      v24 = *v23;
      v25 = v23[1];
      OUTLINED_FUNCTION_11_3(v1 + 24, v45);

      sub_1E3277398(&v44, v24, v25);
      swift_endAccess();

      if (!v17)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v21 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      __break(1u);
      goto LABEL_21;
    }

    if (v21 >= v19)
    {
      break;
    }

    v17 = *(v5 + 56 + 8 * v21);
    ++v20;
    if (v17)
    {
      v20 = v21;
      goto LABEL_9;
    }
  }

  OUTLINED_FUNCTION_4_4();
  v28 = v27 & v26;
  v30 = (v29 + 63) >> 6;

  v31 = 0;
  if (!v28)
  {
    goto LABEL_13;
  }

  do
  {
    v32 = v31;
LABEL_17:
    v33 = __clz(__rbit64(v28));
    v28 &= v28 - 1;
    v34 = (*(v3 + 48) + ((v32 << 10) | (16 * v33)));
    v35 = *v34;
    v36 = v34[1];
    OUTLINED_FUNCTION_11_3(v1 + 24, v45);

    sub_1E397B708(v35, v36);
    swift_endAccess();
  }

  while (v28);
LABEL_13:
  while (1)
  {
    v32 = v31 + 1;
    if (__OFADD__(v31, 1))
    {
      break;
    }

    if (v32 >= v30)
    {

      *(v1 + 32) = 1;
      OUTLINED_FUNCTION_11_3(v1 + v14, v45);
      os_unfair_lock_unlock((v1 + v14));
      swift_endAccess();
      OUTLINED_FUNCTION_58_28();
      v37 = OUTLINED_FUNCTION_27_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(v37, v38);
      OUTLINED_FUNCTION_0_218();
      OUTLINED_FUNCTION_77();
      v43 = sub_1E32752B0(v39, v40, v41, v42);
      OUTLINED_FUNCTION_59_26(v43);

      OUTLINED_FUNCTION_25_2();
      return;
    }

    v28 = *(v3 + 56 + 8 * v32);
    ++v31;
    if (v28)
    {
      v31 = v32;
      goto LABEL_17;
    }
  }

LABEL_21:
  __break(1u);
}

uint64_t sub_1E3D00D6C()
{

  sub_1E325F6F0(v0 + OBJC_IVAR____TtC8VideosUI22SportsFavoritesManager_pendingContinuation, &qword_1ECF37608, &qword_1E42CBE48);

  return v0;
}

uint64_t sub_1E3D00DC4()
{
  sub_1E3D00D6C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

double sub_1E3D00E1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_27_10();
  v11 = swift_allocObject();
  v11[2] = a4;
  v11[3] = a5;
  v11[4] = a1;
  v11[5] = a2;
  v11[6] = a3;
  v11[7] = v5;
  OUTLINED_FUNCTION_157();
  swift_bridgeObjectRetain_n();
  swift_retain_n();

  v12 = objc_opt_self();

  if (([v12 userHasActiveAccount] & 1) != 0 || (objc_msgSend(v12, sel_allowsAccountModification) & 1) == 0)
  {
    sub_1E3D00FF8();
  }

  else
  {
    OUTLINED_FUNCTION_2_4();
    v13 = swift_allocObject();
    *(v13 + 16) = sub_1E3D034F0;
    *(v13 + 24) = v11;
    v16[4] = sub_1E3D034FC;
    v16[5] = v13;
    OUTLINED_FUNCTION_3_4();
    v16[1] = 1107296256;
    v16[2] = sub_1E326FFE4;
    v16[3] = &block_descriptor_43_0;
    v14 = _Block_copy(v16);

    [v12 requestAuthenticationAlwaysPrompt:1 withCompletionHandler:v14];
    _Block_release(v14);
  }

  OUTLINED_FUNCTION_157();
  swift_bridgeObjectRelease_n();

  return result;
}

void sub_1E3D00FF8()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5();
  v16 = v15 - v14;
  if (v9)
  {
    (v7)(v9);
    goto LABEL_16;
  }

  if ((*(*v3 + 552))())
  {
    v38 = &type metadata for ViewModelKeys.Sports;
    v39 = &off_1F5D7BC68;
    LOBYTE(v37[0]) = 3;
    OUTLINED_FUNCTION_57_25();
    if (v41)
    {
      if ((OUTLINED_FUNCTION_26_75(&v35, v17, v18, MEMORY[0x1E69E6158]) & 1) == 0)
      {
LABEL_12:

        __swift_destroy_boxed_opaque_existential_1(v37);
        goto LABEL_13;
      }

      v33 = v35;
      v34 = v36;
      __swift_destroy_boxed_opaque_existential_1(v37);
      v38 = &type metadata for ViewModelKeys.Sports;
      v39 = &off_1F5D7BC68;
      LOBYTE(v37[0]) = 4;
      OUTLINED_FUNCTION_57_25();

      if (v41)
      {
        if (OUTLINED_FUNCTION_26_75(&v35, v19, v20, MEMORY[0x1E69E6158]))
        {
          v21 = v35;
          v22 = v36;
          __swift_destroy_boxed_opaque_existential_1(v37);
          OUTLINED_FUNCTION_67_6();
          v23 = swift_allocObject();
          v23[2] = v33;
          v23[3] = v34;
          v23[4] = v1;
          v23[5] = v21;
          v23[6] = v22;
          v23[7] = v7;
          v23[8] = v5;

          sub_1E3D0180C(v23);

          goto LABEL_16;
        }

        goto LABEL_12;
      }
    }

    __swift_destroy_boxed_opaque_existential_1(v37);
    sub_1E325F6F0(&v40, &unk_1ECF296E0, &unk_1E4298030);
  }

LABEL_13:
  sub_1E324FBDC();
  OUTLINED_FUNCTION_51_4();
  v24(v16);
  v25 = sub_1E41FFC94();
  v26 = sub_1E42067E4();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = OUTLINED_FUNCTION_125_0();
    *v27 = 0;
    _os_log_impl(&dword_1E323F000, v25, v26, "SportsFavoritesLocalStorage::performTeamFavoritesOperation:: missing data, unable to perform", v27, 2u);
    OUTLINED_FUNCTION_6_0();
  }

  v28 = (*(v12 + 8))(v16, v10);
  sub_1E3D002C4(v28, v29, v30);
  v31 = swift_allocError();
  *v32 = 0;
  v7();

LABEL_16:
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3D012EC()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  sub_1E4203FC4();
  OUTLINED_FUNCTION_0_10();
  v51 = v19;
  v52 = v18;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_5();
  v50 = v21 - v20;
  sub_1E4203FF4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_5();
  v29 = v28 - v27;
  if (v9)
  {
    v48 = v26;
    v49 = v23;
    OUTLINED_FUNCTION_67_6();
    v30 = swift_allocObject();
    v30[2] = v1;
    v30[3] = v17;
    v30[4] = v15;
    v30[5] = v5;
    v30[6] = v3;
    v30[7] = v13;
    v30[8] = v11;
    if (*(v1 + OBJC_IVAR____TtC8VideosUI22SportsFavoritesManager_isRemovalConfirmationInProgress) == 1)
    {
      swift_retain_n();
      swift_bridgeObjectRetain_n();
      swift_retain_n();
      OUTLINED_FUNCTION_157();
      swift_bridgeObjectRetain_n();
      (v5)(0);
    }

    else
    {
      *(v1 + OBJC_IVAR____TtC8VideosUI22SportsFavoritesManager_isRemovalConfirmationInProgress) = 1;
      OUTLINED_FUNCTION_4_0();
      v34 = swift_allocObject();
      swift_weakInit();
      v35 = swift_allocObject();
      v35[2] = v34;
      v35[3] = sub_1E3D036B0;
      v35[4] = v30;
      sub_1E3280A90(0, &qword_1EE23B1D0, 0x1E69E9610);
      swift_retain_n();
      swift_bridgeObjectRetain_n();
      swift_retain_n();
      OUTLINED_FUNCTION_157();
      swift_bridgeObjectRetain_n();

      v47 = sub_1E4206A04();
      v36 = swift_allocObject();
      v36[2] = sub_1E3D037CC;
      v36[3] = v35;
      v36[4] = v13;
      v36[5] = v11;
      v36[6] = v1;
      OUTLINED_FUNCTION_2_12(v36);
      OUTLINED_FUNCTION_2_62(COERCE_DOUBLE(1107296256));
      *&v54 = v37;
      *(&v54 + 1) = &block_descriptor_68_0;
      v46 = _Block_copy(&v53);

      sub_1E4203FE4();
      *&v53 = MEMORY[0x1E69E7CC0];
      OUTLINED_FUNCTION_11_115();
      sub_1E3D03CE8(v38, v39, MEMORY[0x1E69E7F70]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A730, &qword_1E429B000);
      OUTLINED_FUNCTION_47();
      sub_1E32752B0(v40, v41, &qword_1E429B000, v42);
      sub_1E42072E4();
      MEMORY[0x1E6911380](0, v29, v50, v46);
      _Block_release(v46);

      (*(v51 + 8))(v50, v52);
      (*(v48 + 8))(v29, v49);
    }

    OUTLINED_FUNCTION_25_2();
  }

  else if (v7)
  {
    *&v53 = v17;
    *(&v53 + 1) = v15;
    *&v54 = v13;
    *(&v54 + 1) = v11;
    v55 = 0;
    v31 = swift_allocObject();
    v32 = v54;
    *(v31 + 16) = v53;
    *(v31 + 32) = v32;
    *(v31 + 48) = v55;
    *(v31 + 56) = v1;
    *(v31 + 64) = v17;
    *(v31 + 72) = v15;
    *(v31 + 80) = v5;
    *(v31 + 88) = v3;
    swift_bridgeObjectRetain_n();

    sub_1E3D0259C(&v53);
    OUTLINED_FUNCTION_25_2();
  }

  else
  {
    sub_1E3D002C4(v23, v24, v25);
    swift_allocError();
    *v43 = 1;
    v5();
    OUTLINED_FUNCTION_25_2();
  }
}

double sub_1E3D0180C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C400, &qword_1E429ABE0);
  OUTLINED_FUNCTION_17_2(v3);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_42_1();
  sub_1E4206474();
  v5 = OUTLINED_FUNCTION_19_90();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  OUTLINED_FUNCTION_10_9();
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = sub_1E3D03508;
  v9[5] = a1;

  sub_1E37748D8(0, 0, v1, &unk_1E42CC020, v9);

  return result;
}

void sub_1E3D018EC()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v4 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  if (v3)
  {
    v11 = v3;
    v12 = sub_1E324FBDC();
    (*(v6 + 16))(v10, v12, v4);
    v13 = v3;
    v14 = sub_1E41FFC94();
    v15 = sub_1E42067F4();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = OUTLINED_FUNCTION_6_21();
      v21 = swift_slowAlloc();
      v22 = v21;
      *v16 = 136315138;
      swift_getErrorValue();
      v17 = sub_1E4207AB4();
      v19 = sub_1E3270FC8(v17, v18, &v22);

      *(v16 + 4) = v19;
      _os_log_impl(&dword_1E323F000, v14, v15, "SportsFavoritesLocalStorage: failed to authenticate user with error=%s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v21);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();
    }

    (*(v6 + 8))(v10, v4);
    v20 = v3;
    v1(v3);
  }

  else
  {
    v1(0);
  }

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3D01AF4()
{
  OUTLINED_FUNCTION_24();
  v0[2] = v1;
  v0[3] = v2;
  v3 = sub_1E41FF154();
  v0[4] = v3;
  OUTLINED_FUNCTION_8_0(v3);
  v0[5] = v4;
  v0[6] = OUTLINED_FUNCTION_86_0();
  v5 = sub_1E41FF024();
  v0[7] = v5;
  OUTLINED_FUNCTION_8_0(v5);
  v0[8] = v6;
  v0[9] = OUTLINED_FUNCTION_86_0();
  v7 = sub_1E41FF044();
  v0[10] = v7;
  OUTLINED_FUNCTION_8_0(v7);
  v0[11] = v8;
  v0[12] = swift_task_alloc();
  v0[13] = swift_task_alloc();
  OUTLINED_FUNCTION_169();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1E3D01C48()
{
  OUTLINED_FUNCTION_24();
  sub_1E41FF0C4();
  v1 = swift_task_alloc();
  *(v0 + 112) = v1;
  *v1 = v0;
  v1[1] = sub_1E3D01CE8;
  v2 = *(v0 + 72);

  return MEMORY[0x1EEE43730](v2);
}

uint64_t sub_1E3D01CE8()
{
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_31();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_7();
  *v5 = v4;
  *(v6 + 120) = v0;

  v7 = OUTLINED_FUNCTION_27_0();
  v8(v7);
  OUTLINED_FUNCTION_169();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1E3D01E3C(__n128 a1)
{
  v2 = v1[12];
  v3 = v1[10];
  v4 = v1[11];
  v5 = v1[8];
  v6 = v1[9];
  v7 = v1[7];
  v13 = v1[2];
  sub_1E41FF014();
  (*(v5 + 8))(v6, v7);
  (*(v4 + 104))(v2, *MEMORY[0x1E69D5858], v3);
  v8 = sub_1E3988234();
  v9 = *(v4 + 8);
  v9(v2, v3);
  v13(v8 & 1, 0);
  v10 = OUTLINED_FUNCTION_146();
  (v9)(v10);

  OUTLINED_FUNCTION_15_12();

  return v11();
}

uint64_t sub_1E3D01F84()
{
  OUTLINED_FUNCTION_27_2();

  OUTLINED_FUNCTION_54();

  return v0();
}

void sub_1E3D02008(uint64_t a1, char a2, uint64_t a3)
{
  v15 = MEMORY[0x1E69E7CC8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37620, &qword_1E42CC048);
  sub_1E4148DE0(sub_1E3D041DC);
  v13 = a1;
  v14 = a2 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37628, &qword_1E42CC050);
  sub_1E4148DE0(sub_1E3D04298);
  *&v11 = sub_1E4205F14();
  *(&v11 + 1) = v5;
  sub_1E4207414();
  v12 = MEMORY[0x1E69E6370];
  LOBYTE(v11) = 0;
  sub_1E329504C(&v11, v10);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1E377DF14(v10, &v13, isUniquelyReferenced_nonNull_native);
  sub_1E375D84C(&v13);
  v7 = [objc_opt_self() defaultCenter];
  v8 = sub_1E4205ED4();
  v9 = sub_1E4205C44();
  [v7 postNotificationName:@"VUIFavoritesRequestDidFinishNotification" object:v8 userInfo:v9];
}

uint64_t sub_1E3D021F4(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    sub_1E329504C(a1, v7);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *v2;
    sub_1E377DF14(v7, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v6;
    return sub_1E375D84C(a2);
  }

  else
  {
    sub_1E325F6F0(a1, &unk_1ECF296E0, &unk_1E4298030);
    sub_1E3D03D30(a2, v7);
    sub_1E375D84C(a2);
    return sub_1E325F6F0(v7, &unk_1ECF296E0, &unk_1E4298030);
  }
}

void sub_1E3D022BC()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v35 = v6;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v36 = sub_1E4203FC4();
  OUTLINED_FUNCTION_0_10();
  v40 = v15;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_5();
  v19 = v18 - v17;
  sub_1E4203FF4();
  OUTLINED_FUNCTION_0_10();
  v38 = v21;
  v39 = v20;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_5();
  v24 = v23 - v22;
  sub_1E3280A90(0, &qword_1EE23B1D0, 0x1E69E9610);
  v37 = sub_1E4206A04();
  v25 = swift_allocObject();
  v26 = *(v10 + 16);
  *(v25 + 16) = *v10;
  *(v25 + 32) = v26;
  *(v25 + 48) = *(v10 + 32);
  *(v25 + 56) = v14;
  v27 = v12 & 1;
  *(v25 + 64) = v12 & 1;
  *(v25 + 72) = v8;
  *(v25 + 80) = v35;
  *(v25 + 88) = v5;
  *(v25 + 96) = v3;
  *(v25 + 104) = v1;
  OUTLINED_FUNCTION_2_12(v25);
  OUTLINED_FUNCTION_2_62(COERCE_DOUBLE(1107296256));
  v42[2] = v28;
  v42[3] = &block_descriptor_102_0;
  v29 = _Block_copy(v42);
  sub_1E3D04198(v10, &v41);
  sub_1E3D041D0(v14, v27);

  sub_1E4203FE4();
  v42[0] = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_11_115();
  sub_1E3D03CE8(v30, v31, MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A730, &qword_1E429B000);
  OUTLINED_FUNCTION_47();
  sub_1E32752B0(v32, v33, &qword_1E429B000, v34);
  sub_1E42072E4();
  MEMORY[0x1E6911380](0, v24, v19, v29);
  _Block_release(v29);

  (*(v40 + 8))(v19, v36);
  (*(v38 + 8))(v24, v39);
  OUTLINED_FUNCTION_25_2();
}

double sub_1E3D0259C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C400, &qword_1E429ABE0);
  OUTLINED_FUNCTION_17_2(v2);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v14 - v4;
  v6 = *(a1 + 32);
  sub_1E4206474();
  v7 = OUTLINED_FUNCTION_28_10();
  __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  OUTLINED_FUNCTION_27_10();
  v11 = swift_allocObject();
  OUTLINED_FUNCTION_50_36(v11);
  if (v6)
  {

    v12 = &unk_1E42CC030;
  }

  else
  {

    v12 = &unk_1E42CC040;
  }

  sub_1E37748D8(0, 0, v5, v12, v6);

  return result;
}

uint64_t sub_1E3D026C0()
{
  OUTLINED_FUNCTION_24();
  v0[4] = v1;
  v0[5] = v2;
  v0[2] = v3;
  v0[3] = v4;
  v5 = sub_1E41FF104();
  v0[6] = v5;
  OUTLINED_FUNCTION_8_0(v5);
  v0[7] = v6;
  v0[8] = OUTLINED_FUNCTION_86_0();
  v7 = sub_1E41FF154();
  v0[9] = v7;
  OUTLINED_FUNCTION_8_0(v7);
  v0[10] = v8;
  v0[11] = OUTLINED_FUNCTION_86_0();
  v9 = sub_1E41FF144();
  v0[12] = v9;
  OUTLINED_FUNCTION_8_0(v9);
  v0[13] = v10;
  v0[14] = OUTLINED_FUNCTION_86_0();
  OUTLINED_FUNCTION_169();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1E3D02804(uint64_t a1)
{
  sub_1E41FF0C4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F6E8, &qword_1E42AEDE0);
  v3 = sub_1E41FF114();
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  v6 = OUTLINED_FUNCTION_32_58();
  *(v1 + 120) = v6;
  *(v6 + 16) = xmmword_1E4297BE0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F320, &unk_1E429A280);
  OUTLINED_FUNCTION_10_9();
  v7 = swift_allocObject();
  v17 = OUTLINED_FUNCTION_45_46(v7, v8, v9, v10, v11, v12, v13, v14, v15, v16);
  (*(v5 + 104))(v6 + v2, *MEMORY[0x1E69D58D8], v3, v17);

  v18 = swift_task_alloc();
  *(v1 + 128) = v18;
  *v18 = v1;
  v19 = OUTLINED_FUNCTION_37_51(v18);

  return MEMORY[0x1EEE43750](v19, v20);
}

uint64_t sub_1E3D02980()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_31();
  *v3 = v2;
  v5 = v4[11];
  v6 = v4[10];
  v7 = v4[9];
  v8 = *v1;
  OUTLINED_FUNCTION_7();
  *v9 = v8;
  *(v10 + 136) = v0;

  (*(v6 + 8))(v5, v7);

  OUTLINED_FUNCTION_169();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1E3D02B00()
{
  OUTLINED_FUNCTION_24();
  v0[4] = v1;
  v0[5] = v2;
  v0[2] = v3;
  v0[3] = v4;
  v5 = sub_1E41FF104();
  v0[6] = v5;
  OUTLINED_FUNCTION_8_0(v5);
  v0[7] = v6;
  v0[8] = OUTLINED_FUNCTION_86_0();
  v7 = sub_1E41FF154();
  v0[9] = v7;
  OUTLINED_FUNCTION_8_0(v7);
  v0[10] = v8;
  v0[11] = OUTLINED_FUNCTION_86_0();
  v9 = sub_1E41FF144();
  v0[12] = v9;
  OUTLINED_FUNCTION_8_0(v9);
  v0[13] = v10;
  v0[14] = OUTLINED_FUNCTION_86_0();
  OUTLINED_FUNCTION_169();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1E3D02C44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_1E41FF0C4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F6E8, &qword_1E42AEDE0);
  v14 = sub_1E41FF114();
  OUTLINED_FUNCTION_0_10();
  v16 = v15;
  v17 = OUTLINED_FUNCTION_32_58();
  *(v12 + 120) = v17;
  *(v17 + 16) = xmmword_1E4297BE0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F320, &unk_1E429A280);
  OUTLINED_FUNCTION_10_9();
  v18 = swift_allocObject();
  v28 = OUTLINED_FUNCTION_45_46(v18, v19, v20, v21, v22, v23, v24, v25, v26, v27);
  (*(v16 + 104))(v17 + v13, *MEMORY[0x1E69D58D8], v14, v28);

  v29 = swift_task_alloc();
  *(v12 + 128) = v29;
  *v29 = v12;
  v30 = OUTLINED_FUNCTION_37_51(v29);

  return MEMORY[0x1EEE43768](v30, v31, v32, v33, v34, v35, v36, v37, a9, a10, a11, a12);
}

uint64_t sub_1E3D02DC0()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_31();
  *v3 = v2;
  v5 = v4[11];
  v6 = v4[10];
  v7 = v4[9];
  v8 = *v1;
  OUTLINED_FUNCTION_7();
  *v9 = v8;
  *(v10 + 136) = v0;

  (*(v6 + 8))(v5, v7);

  OUTLINED_FUNCTION_169();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

void sub_1E3D02F40()
{
  v1 = *(v0 + 56);
  v2 = sub_1E41FF134();
  v3 = v2 + 56;
  v4 = -1;
  v5 = -1 << *(v2 + 32);
  if (-v5 < 64)
  {
    v4 = ~(-1 << -v5);
  }

  v6 = v4 & *(v2 + 56);
  v7 = (63 - v5) >> 6;
  v24 = v1;
  v26 = v2;

  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
      return;
    }

    if (v10 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v10);
    ++v8;
    if (v6)
    {
      v8 = v10;
      do
      {
LABEL_8:
        (*(v24 + 16))(v25[8], *(v26 + 48) + *(v24 + 72) * (__clz(__rbit64(v6)) | (v8 << 6)), v25[6]);
        v11 = sub_1E41FF0D4();
        v13 = v12;
        v14 = OUTLINED_FUNCTION_146();
        v15(v14);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_1E3740F88(0, *(v9 + 2) + 1, 1, v9);
        }

        v17 = *(v9 + 2);
        v16 = *(v9 + 3);
        if (v17 >= v16 >> 1)
        {
          v9 = sub_1E3740F88((v16 > 1), v17 + 1, 1, v9);
        }

        v6 &= v6 - 1;
        *(v9 + 2) = v17 + 1;
        v18 = &v9[16 * v17];
        *(v18 + 4) = v11;
        *(v18 + 5) = v13;
      }

      while (v6);
    }
  }

  v20 = v25[13];
  v19 = v25[14];
  v21 = v25[12];
  v22 = v25[4];

  sub_1E32772D8(v9);
  v22();

  (*(v20 + 8))(v19, v21);

  OUTLINED_FUNCTION_15_12();

  v23();
}

uint64_t sub_1E3D0319C()
{
  OUTLINED_FUNCTION_24();

  OUTLINED_FUNCTION_54();

  return v0();
}

unint64_t sub_1E3D03214(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF37618;
  if (!qword_1ECF37618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF37618);
  }

  return result;
}

uint64_t type metadata accessor for SportsFavoritesManager(uint64_t a1)
{
  result = qword_1EE299E30;
  if (!qword_1EE299E30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E3D032BC(uint64_t a1)
{
  sub_1E3D0338C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1E3D0338C(uint64_t a1)
{
  if (!qword_1EE23B428)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3DA40, &qword_1E42C71D0);
    v1 = sub_1E4207104();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE23B428);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for SportsFavoritesManager.OperationError(_BYTE *result, unsigned int a2, unsigned int a3)
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

void sub_1E3D03508()
{
  OUTLINED_FUNCTION_31_1();
  if (v2)
  {
    (*(v0 + 56))(v1);
  }

  else
  {
    if (qword_1EE299E48 != -1)
    {
      OUTLINED_FUNCTION_4_170(&qword_1EE299E48);
    }

    v3 = OUTLINED_FUNCTION_146();
    v4(v3);
    OUTLINED_FUNCTION_146();
    sub_1E3D012EC();
  }

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3D035DC()
{
  OUTLINED_FUNCTION_24();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E3286A7C;

  return sub_1E3D01AF4();
}

uint64_t sub_1E3D03670()
{
}

void sub_1E3D036B0(char a1)
{
  v3 = v1[5];
  v2 = v1[6];
  if (a1)
  {
    v4 = v1[2];
    v5 = v1[3];
    v6 = v1[4];
    v7 = v1[7];
    v8 = v1[8];
    *&v11 = v5;
    *(&v11 + 1) = v6;
    *&v12 = v7;
    *(&v12 + 1) = v8;
    v13 = 1;
    v9 = swift_allocObject();
    v10 = v12;
    *(v9 + 16) = v11;
    *(v9 + 32) = v10;
    *(v9 + 48) = v13;
    *(v9 + 56) = v4;
    *(v9 + 64) = v5;
    *(v9 + 72) = v6;
    *(v9 + 80) = v3;
    *(v9 + 88) = v2;
    swift_bridgeObjectRetain_n();

    sub_1E3D0259C(&v11);
  }

  else
  {
    v3(0);
  }
}

uint64_t sub_1E3D037CC(char a1)
{
  v3 = *(v1 + 24);
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    *(Strong + OBJC_IVAR____TtC8VideosUI22SportsFavoritesManager_isRemovalConfirmationInProgress) = 0;
  }

  return v3(a1 & 1);
}

void sub_1E3D0383C()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  if ([objc_opt_self() isSUIEnabled])
  {
    v5 = 1;
LABEL_10:
    v2(v5);
    return;
  }

  v6 = [objc_opt_self() sharedInstance];
  if (!v6)
  {
LABEL_9:
    v5 = 0;
    goto LABEL_10;
  }

  v7 = v6;
  v8 = [objc_opt_self() topPresentedViewController];
  if (!v8)
  {

    goto LABEL_9;
  }

  v9 = v8;
  OUTLINED_FUNCTION_23();
  sub_1E3741090(0xD000000000000015, v10, v7);
  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30870, &unk_1E429CE30);
    OUTLINED_FUNCTION_67_6();
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1E4297BE0;
    *(v12 + 56) = MEMORY[0x1E69E6158];
    *(v12 + 64) = sub_1E3283528(v12, v13, v14);
    *(v12 + 32) = v3;
    *(v12 + 40) = v4;

    sub_1E4205F44();

    sub_1E3280A90(0, &qword_1ECF297E8, off_1E87281D0);
    OUTLINED_FUNCTION_25();
    v19 = sub_1E379796C(v15, v16, v17, v18, 1);
    sub_1E3741090(0x4C45434E4143, 0xE600000000000000, v7);
    v33 = v9;
    if (v20)
    {
      v21 = sub_1E4205ED4();
    }

    else
    {
      v21 = 0;
    }

    v22 = objc_opt_self();
    OUTLINED_FUNCTION_2_4();
    v23 = swift_allocObject();
    *(v23 + 16) = v2;
    *(v23 + 24) = v1;
    v38 = sub_1E3D03E18;
    v39 = v23;
    aBlock = MEMORY[0x1E69E9820];
    v35 = 1107296256;
    v36 = sub_1E377674C;
    v37 = &block_descriptor_74_0;
    v24 = _Block_copy(&aBlock);

    v32 = [v22 vui:v21 actionWithTitle:1 style:v24 handler:?];
    _Block_release(v24);

    sub_1E3741090(0xD00000000000001CLL, 0x80000001E427DAB0, v7);
    if (v25)
    {
      v26 = sub_1E4205ED4();
    }

    else
    {
      v26 = 0;
    }

    OUTLINED_FUNCTION_2_4();
    v27 = swift_allocObject();
    *(v27 + 16) = v2;
    *(v27 + 24) = v1;
    v38 = sub_1E3D03E44;
    v39 = v27;
    aBlock = MEMORY[0x1E69E9820];
    v35 = 1107296256;
    v36 = sub_1E377674C;
    v37 = &block_descriptor_80;
    v28 = _Block_copy(&aBlock);

    v29 = [v22 vui:v26 actionWithTitle:2 style:v28 handler:?];
    _Block_release(v28);

    OUTLINED_FUNCTION_4_0();
    v30 = swift_allocObject();
    swift_weakInit();
    v38 = sub_1E3D03E70;
    v39 = v30;
    aBlock = MEMORY[0x1E69E9820];
    v35 = 1107296256;
    v36 = sub_1E378AEA4;
    v37 = &block_descriptor_84_0;
    v31 = _Block_copy(&aBlock);

    [v19 vui:v31 setDismissalHandler:?];
    _Block_release(v31);
    [v19 vui:v32 addAction:?];
    [v19 vui:v29 addAction:?];
    [v19 vui:v33 presentAlertFromPresentingController:1 animated:0 completion:?];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1E3D03CE8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_1E3D03D30@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = sub_1E375D924(a1);
  if (v5)
  {
    v6 = v4;
    swift_isUniquelyReferenced_nonNull_native();
    v8 = *v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2CCF0, &qword_1E42A7D40);
    sub_1E4207644();
    sub_1E375D84C(*(v8 + 48) + 40 * v6);
    sub_1E329504C((*(v8 + 56) + 32 * v6), a2);
    sub_1E4207664();
    *v2 = v8;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

double sub_1E3D03E70()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    *(Strong + OBJC_IVAR____TtC8VideosUI22SportsFavoritesManager_isRemovalConfirmationInProgress) = 0;
  }

  return result;
}

uint64_t sub_1E3D03EB8()
{
  OUTLINED_FUNCTION_27_2();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  OUTLINED_FUNCTION_28_57(v1);

  return sub_1E3D02B00();
}

uint64_t objectdestroy_86Tm_0()
{
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_27_10();

  return swift_deallocObject();
}

uint64_t sub_1E3D03F90()
{
  OUTLINED_FUNCTION_27_2();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  OUTLINED_FUNCTION_28_57(v1);

  return sub_1E3D026C0();
}

void sub_1E3D04024()
{
  OUTLINED_FUNCTION_31_1();
  v1 = *(v0 + 56);
  v2 = *(v0 + 96);
  if (*(v0 + 64))
  {
    v3 = v1;
    sub_1E3D02008(0, 1, v1);
    v2(v1);
    OUTLINED_FUNCTION_25_2();

    sub_1E3798224(v4, v5);
  }

  else
  {
    v7 = *(v0 + 48);
    v8 = *(**(v0 + 72) + 392);

    v8(v9);
    v10 = [objc_opt_self() sharedInstance];
    v11 = v1[2];
    sub_1E3798224(v1, 0);
    if (v7)
    {
      [v10 register:v11 newTeamsAdded:0 teamsRemoved:1];

      v12 = 1;
    }

    else
    {
      [v10 register:v11 newTeamsAdded:1 teamsRemoved:0];

      v12 = 0;
    }

    sub_1E3D02008(v12, 0, 0);
    v2(0);
    OUTLINED_FUNCTION_25_2();
  }
}

double sub_1E3D041D0(id a1, char a2)
{
  if (a2)
  {
    v2 = a1;
  }

  else
  {
  }

  return result;
}

uint64_t sub_1E3D041DC(uint64_t *a1)
{
  v5[0] = sub_1E4205F14();
  v5[1] = v1;
  sub_1E4207414();
  swift_getErrorValue();
  v5[3] = v4;
  __swift_allocate_boxed_opaque_existential_1(v5);
  OUTLINED_FUNCTION_77();
  v2();
  return sub_1E3D021F4(v5, v6);
}

uint64_t sub_1E3D04298(uint64_t *a1)
{
  v1 = *a1;
  sub_1E4205F14();
  v5[1] = v2;
  sub_1E4207414();
  v3 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInteger_];
  v5[3] = sub_1E3280A90(0, &qword_1EE23ADD0, 0x1E696AD98);
  v5[0] = v3;
  return sub_1E3D021F4(v5, v6);
}

uint64_t objectdestroy_54Tm()
{
  sub_1E3D03670();

  return swift_deallocObject();
}

uint64_t OUTLINED_FUNCTION_32_58()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_57_25()
{

  return sub_1E3F9F164((v2 - 152), v0, v1 + 8);
}

uint64_t OUTLINED_FUNCTION_58_28()
{
}

uint64_t type metadata accessor for EditorialLockup(uint64_t a1)
{
  result = qword_1EE2A42E0;
  if (!qword_1EE2A42E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E3D044C0(uint64_t a1@<X0>, const void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1E4201274();
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  v12 = v11 - v10;
  v13 = *(type metadata accessor for EditorialLockup(0) + 36);
  *(a3 + v13) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18, &qword_1E42982F0);
  v14 = swift_storeEnumTagMultiPayload();
  sub_1E3929B88(v14, v15, v16);
  sub_1E4200CD4();
  *a3 = a1;
  memcpy((a3 + 8), a2, 0xC3uLL);
  v17 = *(*a1 + 392);

  if (!v17(v18))
  {
    goto LABEL_4;
  }

  type metadata accessor for EditorialLockupLayout();
  OUTLINED_FUNCTION_20_2();
  v19 = swift_dynamicCastClass();
  if (!v19)
  {

LABEL_4:
    type metadata accessor for EditorialLockupLayout();
    v19 = sub_1E3C5C364();
  }

  *(a3 + 216) = v19;
  type metadata accessor for ContextMenuModel(0);

  sub_1E3E6CDBC();

  sub_1E4207414();
  (*(v8 + 104))(v12, *MEMORY[0x1E697E660], v6);
  v20 = sub_1E4188148(a1, v12);
  *(a3 + 208) = v20;
  v22 = (*(*a1 + 488))(v20, v21);

  if (v22 && (v24 = sub_1E373E010(67, v22, v23), , v24))
  {

    v25 = 1;
  }

  else
  {
    v25 = 0;
  }

  *(a3 + 224) = v25;
}

void sub_1E3D0475C()
{
  OUTLINED_FUNCTION_31_1();
  sub_1E4202494();
  OUTLINED_FUNCTION_0_10();
  v23 = v5;
  v24 = v4;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37638, &qword_1E42CC0D8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_20_1();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37640, &qword_1E42CC0E0);
  OUTLINED_FUNCTION_0_10();
  v22 = v11;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_49_2();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37648, &qword_1E42CC0E8);
  OUTLINED_FUNCTION_0_10();
  v25 = v14;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_8_4();
  sub_1E3D04A3C();
  sub_1E4202474();
  sub_1E3D04D00();
  sub_1E4203224();
  (*(v23 + 8))(v8, v24);
  sub_1E325F6F0(v2, &qword_1ECF37638, &qword_1E42CC0D8);
  v16 = *(v0 + 208);
  OUTLINED_FUNCTION_15_10();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1E4187EA8(v16, v10, OpaqueTypeConformance2);
  (*(v22 + 8))(v3, v10);
  v18 = *(v0 + 216);
  OUTLINED_FUNCTION_3_8();
  v19 = swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_78_0();
  v20 = j__OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_78_0();
  LOBYTE(OpaqueTypeConformance2) = j__OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_78_0();
  v21 = OUTLINED_FUNCTION_51_1();
  sub_1E383F6D4(v18, v20 & 1, OpaqueTypeConformance2 & 1, 0, v21 & 1, v13, v19);
  (*(v25 + 8))(v1, v13);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3D04A3C()
{
  OUTLINED_FUNCTION_31_1();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF376A8, &qword_1E42CC180);
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_20_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF376B0, &qword_1E42CC188);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_26_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37670, &qword_1E42CC0F8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_14_5();
  OUTLINED_FUNCTION_36();
  if ((*(v9 + 1920))())
  {
    sub_1E3D04F88();
    sub_1E3743538(v2, v0, &qword_1ECF37670, &qword_1E42CC0F8);
    swift_storeEnumTagMultiPayload();
    sub_1E3D04E88();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF37698, &qword_1E42CC110);
    OUTLINED_FUNCTION_15_108();
    sub_1E328FCF4(v10, &qword_1ECF37698, &qword_1E42CC110);
    OUTLINED_FUNCTION_21_76();
    OUTLINED_FUNCTION_15_45();
    sub_1E4201F44();
    sub_1E325F6F0(v2, &qword_1ECF37670, &qword_1E42CC0F8);
  }

  else
  {
    sub_1E3D052F4();
    (*(v5 + 16))(v0, v1, v3);
    swift_storeEnumTagMultiPayload();
    sub_1E3D04E88();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF37698, &qword_1E42CC110);
    OUTLINED_FUNCTION_15_108();
    sub_1E328FCF4(v11, &qword_1ECF37698, &qword_1E42CC110);
    OUTLINED_FUNCTION_21_76();
    OUTLINED_FUNCTION_75();
    OUTLINED_FUNCTION_19_1();
    sub_1E4201F44();
    (*(v5 + 8))(v1, v3);
  }

  OUTLINED_FUNCTION_25_2();
}

unint64_t sub_1E3D04D00()
{
  result = qword_1ECF37650;
  if (!qword_1ECF37650)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF37638, &qword_1E42CC0D8);
    sub_1E3D04D84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF37650);
  }

  return result;
}

unint64_t sub_1E3D04D84()
{
  result = qword_1ECF37658;
  if (!qword_1ECF37658)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF37660, &qword_1E42CC0F0);
    sub_1E3D04E88();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF37698, &qword_1E42CC110);
    sub_1E328FCF4(&qword_1ECF376A0, &qword_1ECF37698, &qword_1E42CC110);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF37658);
  }

  return result;
}

unint64_t sub_1E3D04E88()
{
  result = qword_1ECF37668;
  if (!qword_1ECF37668)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF37670, &qword_1E42CC0F8);
    sub_1E328FCF4(&qword_1ECF37678, &qword_1ECF37680, &qword_1E42CC100);
    sub_1E328FCF4(&qword_1ECF37688, &qword_1ECF37690, &qword_1E42CC108);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF37668);
  }

  return result;
}

void sub_1E3D04F88()
{
  OUTLINED_FUNCTION_93();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37690, &qword_1E42CC108);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_20_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF376B8, &qword_1E42CC190);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_26_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37680, &qword_1E42CC100);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_14_5();
  v5 = sub_1E42012F4();
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  v11 = (v10 - v9);
  OUTLINED_FUNCTION_8();
  (*(v12 + 176))(&v34);
  type metadata accessor for EditorialLockup(0);
  sub_1E3746E10(v11);
  v13 = sub_1E3B02B0C();
  (*(v7 + 8))(v11, v5);
  if (v13)
  {
    *v1 = sub_1E4201D54();
    *(v1 + 8) = 0;
    *(v1 + 16) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF376C8, &qword_1E42CC1A0);
    sub_1E3D06CB8();
    OUTLINED_FUNCTION_19_1();
    sub_1E3743538(v14, v15, v16, v17);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_21_1();
    sub_1E328FCF4(v18, v19, v20);
    OUTLINED_FUNCTION_9_0();
  }

  else
  {
    *v0 = sub_1E4201B84();
    *(v0 + 8) = 0;
    *(v0 + 16) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF376C0, &qword_1E42CC198);
    sub_1E3D07954();
    OUTLINED_FUNCTION_19_1();
    sub_1E3743538(v24, v25, v26, v27);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_1();
    sub_1E328FCF4(v28, v29, v30);
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_21_1();
  }

  sub_1E328FCF4(v21, v22, v23);
  OUTLINED_FUNCTION_75();
  sub_1E4201F44();
  OUTLINED_FUNCTION_21_1();
  sub_1E325F6F0(v31, v32, v33);
  OUTLINED_FUNCTION_54_0();
}

void sub_1E3D052F4()
{
  OUTLINED_FUNCTION_93();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37698, &qword_1E42CC110);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_31_2();
  v4 = *v0;
  memcpy(v13, v0 + 1, 0xC3uLL);

  sub_1E375C1CC(v13, v11);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF377B8, &qword_1E42CC278);
  v6 = sub_1E3D084F0();
  sub_1E390F194(v4, v13, 1, sub_1E3D084CC, v5, v6, v1);
  OUTLINED_FUNCTION_36();
  (*(v7 + 552))(v11);
  if (v12)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = *v11;
  }

  OUTLINED_FUNCTION_15_108();
  v10 = sub_1E328FCF4(v9, &qword_1ECF37698, &qword_1E42CC110);
  sub_1E391F8C0(v2, v10, v8);
  sub_1E325F6F0(v1, &qword_1ECF37698, &qword_1E42CC110);
  OUTLINED_FUNCTION_54_0();
}

void sub_1E3D054B0(uint64_t a1)
{
  type metadata accessor for ViewModel();
  if (v1 <= 0x3F)
  {
    type metadata accessor for ContextMenuModel(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for EditorialLockupLayout();
      if (v3 <= 0x3F)
      {
        sub_1E38D5D68(319);
        if (v4 <= 0x3F)
        {
          sub_1E3BFC284(319, v4, v5);
          if (v6 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1E3D0558C()
{
  OUTLINED_FUNCTION_21_5();
  v33 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37800, &qword_1E42CC298);
  OUTLINED_FUNCTION_17_2(v6);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_14_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF377F0, &qword_1E42CC290);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_31_2();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF377E0, &qword_1E42CC288);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_8_4();
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF377D0, &qword_1E42CC280);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_26_2();
  *v4 = sub_1E4201D54();
  *(v4 + 8) = 0;
  *(v4 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37808, &qword_1E42CC2A0);
  sub_1E3D0592C();
  sub_1E4202764();
  OUTLINED_FUNCTION_8();
  v13 = *(v12 + 176);
  v13(v34);
  if ((v35 & 1) == 0)
  {
    v16.n128_u64[0] = v34[2];
    v17.n128_u64[0] = v34[3];
    v14.n128_u64[0] = v34[0];
    v15.n128_u64[0] = v34[1];
    j_nullsub_1(v14, v15, v16, v17);
  }

  sub_1E4200A54();
  OUTLINED_FUNCTION_9_10();
  sub_1E3741EA0(v4, v3, &qword_1ECF37800, &qword_1E42CC298);
  OUTLINED_FUNCTION_33_52();
  v18 = sub_1E4202784();
  v13(v36);
  if ((v37 & 1) == 0)
  {
    v21.n128_u64[0] = v36[2];
    v22.n128_u64[0] = v36[3];
    v19.n128_u64[0] = v36[0];
    v20.n128_u64[0] = v36[1];
    j_nullsub_1(v19, v20, v21, v22);
  }

  sub_1E4200A54();
  OUTLINED_FUNCTION_3();
  sub_1E3741EA0(v3, v2, &qword_1ECF377F0, &qword_1E42CC290);
  v23 = (v2 + *(v9 + 36));
  *v23 = v18;
  OUTLINED_FUNCTION_11_4(v23);
  v24 = sub_1E4202754();
  v13(v38);
  if ((v39 & 1) == 0)
  {
    v27.n128_u64[0] = v38[2];
    v28.n128_u64[0] = v38[3];
    v25.n128_u64[0] = v38[0];
    v26.n128_u64[0] = v38[1];
    j_nullsub_1(v25, v26, v27, v28);
  }

  sub_1E4200A54();
  OUTLINED_FUNCTION_3();
  sub_1E3741EA0(v2, v1, &qword_1ECF377E0, &qword_1E42CC288);
  v29 = (v1 + *(v32 + 36));
  *v29 = v24;
  OUTLINED_FUNCTION_11_4(v29);
  if (!*(v0 + 192) || (type metadata accessor for ViewModel(), sub_1E3D08830(&qword_1EE23BA60, type metadata accessor for ViewModel), , OUTLINED_FUNCTION_18_5(), v30 = sub_1E4205E84(), , v31 = 0.0, (v30 & 1) == 0))
  {
    v31 = 1.0;
  }

  sub_1E3741EA0(v1, v33, &qword_1ECF377D0, &qword_1E42CC280);
  *(v33 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF377B8, &qword_1E42CC278) + 36)) = v31;
  OUTLINED_FUNCTION_20_0();
}