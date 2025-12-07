uint64_t sub_22C9CBD88()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22C9CBDC0()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22C9CBDFC()
{
  swift_unknownObjectRelease();
  sub_22C9D7260();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_22C9CBE34()
{
  _Block_release(*(v0 + 16));
  sub_22C9D7260();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_22C9CBE68()
{

  v0 = sub_22C9D71E4();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_22C9CBF18()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_22C9CBF60()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22C9CBF98@<X0>(uint64_t *a1@<X8>)
{
  result = sub_22C9DE324();
  *a1 = result;
  return result;
}

uint64_t sub_22C9CBFC8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_22C9DE3B4();
  *a1 = result;
  return result;
}

uint64_t sub_22C9CBFF8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_22C9DE444();
  *a1 = result;
  return result;
}

uint64_t sub_22C9CC29C()
{

  sub_22C9D7260();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_22C9CC2E8()
{

  sub_22C9FB100();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_22C9CC344()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

unint64_t sub_22C9CC3AC(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_22C9CC3D0()
{

  sub_22C9FB03C();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_22C9CC414()
{
  sub_22C9D7260();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_22C9CC464()
{

  sub_22C9FB100();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_22C9CC4A8()
{

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_22C9CC78C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_22C9CC7CC()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22C9CC804()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_22C9CC854()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22C9CC8AC()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22C9CC8E4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_22C9CC934()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22C9CC980()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22C9CC9D4()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22C9CCA14()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22C9CCA78()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_22C9CCAC0()
{
  swift_unknownObjectRelease();
  sub_22C9D04CC((v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_22C9CCB08()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22C9CCECC()
{
  v1 = *(v0 + OBJC_IVAR___MSFeedback_sessionIdentifier);

  return v1;
}

uint64_t sub_22C9CCF88(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR___MSFeedback_sessionIdentifier);
  *v3 = a1;
  v3[1] = a2;
  return sub_22C9D06B4();
}

id MSFeedback.init(action:requestInterval:options:suggestions:numberOfVisibleSuggestions:sessionIdentifier:)(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7)
{
  type metadata accessor for MSSuggestion(0);
  v12 = sub_22CA20EB0();

  if (a6)
  {
    v13 = sub_22CA20E10();
  }

  else
  {
    v13 = 0;
  }

  v14 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithAction:a1 requestInterval:a2 options:v12 suggestions:a4 numberOfVisibleSuggestions:v13 sessionIdentifier:a7];

  return v14;
}

id MSFeedback.init(action:requestInterval:options:suggestions:numberOfVisibleSuggestions:sessionIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, double a7)
{
  v8 = (v7 + OBJC_IVAR___MSFeedback_sessionIdentifier);
  *v8 = 0;
  v8[1] = 0;
  *(v7 + OBJC_IVAR___MSFeedback_action) = a1;
  *(v7 + OBJC_IVAR___MSFeedback_requestInterval) = a7;
  *(v7 + OBJC_IVAR___MSFeedback_options) = a2;
  *(v7 + OBJC_IVAR___MSFeedback_suggestions) = a3;
  *(v7 + OBJC_IVAR___MSFeedback_numberOfVisibleSuggestions) = a4;
  *v8 = a5;
  v8[1] = a6;
  v10.super_class = MSFeedback;
  return objc_msgSendSuper2(&v10, sel_init);
}

uint64_t sub_22C9CD1FC()
{
  v1 = [v0 action];
  v2 = [v1 suggestion];

  if (!v2)
  {
    return 0x7FFFFFFFLL;
  }

  v3 = [v0 suggestions];
  type metadata accessor for MSSuggestion(0);
  v4 = sub_22CA20EC0();

  sub_22C9CD2E4(v2, v4);
  v6 = v5;
  v8 = v7;

  if (v8)
  {
    return 0x7FFFFFFFLL;
  }

  if (v6 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (v6 <= 0x7FFFFFFF)
  {
    return v6;
  }

  __break(1u);
  return result;
}

void sub_22C9CD2E4(uint64_t a1, uint64_t a2)
{
  v3 = sub_22C9E6DA0();
  v4 = 0;
  while (v3 != v4)
  {
    if ((a2 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x2318BAD10](v4, a2);
    }

    else
    {
      if (v4 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_14:
        __break(1u);
        return;
      }

      v5 = *(a2 + 8 * v4 + 32);
    }

    v6 = v5;
    type metadata accessor for MSSuggestion(0);
    v7 = sub_22CA210D0();

    if (v7)
    {
      return;
    }

    if (__OFADD__(v4++, 1))
    {
      goto LABEL_14;
    }
  }
}

uint64_t MSFeedback.copy(with:)@<X0>(uint64_t *a1@<X8>)
{
  v3 = [v1 action];
  [v1 requestInterval];
  v5 = v4;
  v6 = [v1 options];
  v7 = [v1 suggestions];
  type metadata accessor for MSSuggestion(0);
  v8 = sub_22CA20EC0();

  v9 = [v1 numberOfVisibleSuggestions];
  v10 = sub_22C9D0204(v1);
  v12 = v11;
  v13 = objc_allocWithZone(MSFeedback);
  v14 = sub_22C9CFE70(v3, v6, v8, v9, v10, v12, v5);
  result = type metadata accessor for MSFeedback(v14);
  a1[3] = result;
  *a1 = v14;
  return result;
}

Swift::Void __swiftcall MSFeedback.encode(with:)(NSCoder with)
{
  v3 = [v1 action];
  v4 = sub_22C9D0788();
  sub_22C9D06F4();

  [v1 requestInterval];
  v6 = v5;
  v7 = sub_22C9D06C4();
  [(objc_class *)with.super.isa encodeDouble:v7 forKey:v6];

  v8 = [v1 options];
  v9 = sub_22C9D0764();
  sub_22C9D06F4();

  v10 = [v1 suggestions];
  if (!v10)
  {
    type metadata accessor for MSSuggestion(0);
    sub_22CA20EC0();
    v10 = sub_22CA20EB0();
  }

  v11 = sub_22C9D0714();
  sub_22C9D06F4();

  v12 = [v1 numberOfVisibleSuggestions];
  v13 = sub_22CA20E10();
  [(objc_class *)with.super.isa encodeInt32:v12 forKey:v13];

  v14 = [v1 options];
  v15 = sub_22C9D07A8();
  [(objc_class *)with.super.isa encodeObject:v14 forKey:v15];
}

id MSFeedback.init(coder:)(void *a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithCoder_];

  return v2;
}

{
  v3 = &v1[OBJC_IVAR___MSFeedback_sessionIdentifier];
  *v3 = 0;
  *(v3 + 1) = 0;
  v4 = sub_22C9D06C4();
  v5 = sub_22C9D0758();
  v7 = [v5 v6];

  if (v7)
  {
    sub_22CA21130();
    v8 = swift_unknownObjectRelease();
  }

  else
  {
    sub_22C9D074C();
  }

  *&v23 = sub_22C9D0698(v8, v9, v10, v11, v12, v13, v14, v15, v115, v120, v125.receiver, v125.super_class, v126, v127, *&v128[0], *(&v128[0] + 1), v128[1]).n128_u64[0];
  if (v24)
  {
    if ((sub_22C9D0678(v16, v17, v18, MEMORY[0x277D839F8], v19, v20, v21, v22, v23) & 1) == 0)
    {
      goto LABEL_15;
    }

    v25 = v126;
    v26 = sub_22C9D0764();
    v27 = sub_22C9D0758();
    v29 = [v27 v28];

    if (v29)
    {
      sub_22CA21130();
      v30 = swift_unknownObjectRelease();
    }

    else
    {
      sub_22C9D074C();
    }

    sub_22C9D0698(v30, v31, v32, v33, v34, v35, v36, v37, v116, v121, v125.receiver, v125.super_class, v126, v127, *&v128[0], *(&v128[0] + 1), v128[1]);
    if (v38)
    {
      v39 = type metadata accessor for MSSuggesterRequestOptions();
      if (sub_22C9D0678(v39, v40, v41, v39, v42, v43, v44, v45))
      {
        v46 = v126;
        v47 = sub_22C9D0714();
        v48 = sub_22C9D0758();
        v50 = [v48 v49];

        if (v50)
        {
          sub_22CA21130();
          v51 = swift_unknownObjectRelease();
        }

        else
        {
          sub_22C9D074C();
        }

        sub_22C9D0698(v51, v52, v53, v54, v55, v56, v57, v58, v117, v122, v125.receiver, v125.super_class, v126, v127, *&v128[0], *(&v128[0] + 1), v128[1]);
        if (v62)
        {
          v63 = sub_22C9D02E4(&unk_27D9E47C0, &qword_22CA23E90);
          if ((sub_22C9D0678(v63, v64, v65, v63, v66, v67, v68, v69) & 1) == 0)
          {

LABEL_41:
            goto LABEL_16;
          }

          v70 = v126;
          v71 = sub_22C9D07A8();
          v72 = sub_22C9D0758();
          v74 = [v72 v73];

          if (v74)
          {
            sub_22CA21130();
            v75 = swift_unknownObjectRelease();
          }

          else
          {
            sub_22C9D074C();
          }

          *&v90 = sub_22C9D0698(v75, v76, v77, v78, v79, v80, v81, v82, v118, v123, v125.receiver, v125.super_class, v126, v127, *&v128[0], *(&v128[0] + 1), v128[1]).n128_u64[0];
          if (v91)
          {
            if ((sub_22C9D0678(v83, v84, v85, MEMORY[0x277D837D0], v86, v87, v88, v89, v90) & 1) == 0)
            {

LABEL_40:

              goto LABEL_41;
            }

            v92 = v127;
            v93 = sub_22C9D0788();
            v94 = sub_22C9D0758();
            v96 = [v94 v95];

            if (v96)
            {
              sub_22CA21130();
              v97 = swift_unknownObjectRelease();
            }

            else
            {
              sub_22C9D074C();
            }

            sub_22C9D0698(v97, v98, v99, v100, v101, v102, v103, v104, v119, v126, v125.receiver, v125.super_class, v126, v127, *&v128[0], *(&v128[0] + 1), v128[1]);
            if (v105)
            {
              v106 = type metadata accessor for MSFeedbackAction();
              if (sub_22C9D0678(v106, v107, v108, v106, v109, v110, v111, v112))
              {
                v113 = sub_22CA20E10();
                v114 = [a1 decodeInt32ForKey_];

                *&v1[OBJC_IVAR___MSFeedback_action] = v126;
                *&v1[OBJC_IVAR___MSFeedback_options] = v46;
                *&v1[OBJC_IVAR___MSFeedback_suggestions] = v70;
                *&v1[OBJC_IVAR___MSFeedback_numberOfVisibleSuggestions] = v114;
                *v3 = v124;
                *(v3 + 1) = v92;

                *&v1[OBJC_IVAR___MSFeedback_requestInterval] = v25;
                v125.receiver = v1;
                v125.super_class = MSFeedback;
                v60 = objc_msgSendSuper2(&v125, sel_init);

                return v60;
              }

              goto LABEL_40;
            }
          }

          else
          {
          }
        }

        else
        {
        }

        goto LABEL_14;
      }

LABEL_15:

      goto LABEL_16;
    }
  }

LABEL_14:
  sub_22C9D027C(v129);
LABEL_16:

  type metadata accessor for MSFeedback(v59);
  swift_deallocPartialClassInstance();
  return 0;
}

BOOL MSFeedback.isEqual(_:)(uint64_t a1)
{
  v2 = v1;
  v3 = sub_22C9D032C(a1, v28);
  if (v29)
  {
    type metadata accessor for MSFeedback(v3);
    if (swift_dynamicCast())
    {
      [v1 requestInterval];
      v5 = v4;
      [v27 requestInterval];
      if (v5 != v6)
      {
LABEL_20:

        return 0;
      }

      v7 = sub_22C9D0204(v1);
      v9 = v8;
      v10 = sub_22C9D0204(v27);
      if (v9)
      {
        if (v11)
        {
          if (v7 == v10 && v9 == v11)
          {
          }

          else
          {
            v13 = sub_22CA21360();

            if ((v13 & 1) == 0)
            {
              goto LABEL_20;
            }
          }

LABEL_16:
          sub_22C9D0434(0, &qword_28143A098, 0x277D82BB8);
          v14 = [v1 action];
          v15 = [v27 action];
          v16 = sub_22CA210D0();

          if (v16)
          {
            v17 = [v1 options];
            v18 = [v27 options];
            v19 = sub_22CA210D0();

            if (v19)
            {
              v20 = [v2 suggestions];
              type metadata accessor for MSSuggestion(0);
              v21 = sub_22CA20EC0();

              v22 = [v27 suggestions];
              v23 = sub_22CA20EC0();

              LOBYTE(v22) = sub_22C9CDEB8(v21, v23, type metadata accessor for MSSuggestion);

              if (v22)
              {
                v24 = [v2 numberOfVisibleSuggestions];
                v25 = [v27 numberOfVisibleSuggestions];

                return v24 == v25;
              }
            }
          }

          goto LABEL_20;
        }
      }

      else if (!v11)
      {
        goto LABEL_16;
      }
    }
  }

  else
  {
    sub_22C9D027C(v28);
  }

  return 0;
}

uint64_t sub_22C9CDEB8(unint64_t a1, unint64_t a2, uint64_t (*a3)(void))
{
  v6 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_36;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_22CA21290())
  {
    if (a2 >> 62)
    {
      result = sub_22CA21290();
    }

    else
    {
      result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (i != result)
    {
      v21 = 0;
      return v21 & 1;
    }

    if (!i)
    {
      goto LABEL_31;
    }

    v9 = a1 & 0xFFFFFFFFFFFFFF8;
    v10 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
    if ((a1 & 0x8000000000000000) != 0)
    {
      v9 = a1;
    }

    if (v6)
    {
      v10 = v9;
    }

    v11 = a2 & 0xFFFFFFFFFFFFFF8;
    v12 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    v22 = a2 & 0xFFFFFFFFFFFFFF8;
    if ((a2 & 0x8000000000000000) != 0)
    {
      v11 = a2;
    }

    if (a2 >> 62)
    {
      v12 = v11;
    }

    if (v10 == v12)
    {
LABEL_31:
      v21 = 1;
      return v21 & 1;
    }

    if (i < 0)
    {
      break;
    }

    a3 = a3(0);
    v13 = a2 & 0xC000000000000001;
    v14 = 4;
    v15 = a2;
    while (1)
    {
      v16 = v14 - 4;
      v6 = v14 - 3;
      if (__OFADD__(v14 - 4, 1))
      {
        break;
      }

      if ((a1 & 0xC000000000000001) != 0)
      {
        v17 = MEMORY[0x2318BAD10](v14 - 4, a1);
      }

      else
      {
        if (v16 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_34;
        }

        v17 = *(a1 + 8 * v14);
      }

      v18 = v17;
      if (v13)
      {
        v19 = MEMORY[0x2318BAD10](v14 - 4, a2);
      }

      else
      {
        if (v16 >= *(v22 + 16))
        {
          goto LABEL_35;
        }

        v19 = *(a2 + 8 * v14);
      }

      v20 = v19;
      v21 = sub_22CA210D0();

      if (v21)
      {
        ++v14;
        a2 = v15;
        if (v6 != i)
        {
          continue;
        }
      }

      return v21 & 1;
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    ;
  }

  __break(1u);
  return result;
}

uint64_t sub_22C9CE080(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_22CA21360() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t MSFeedback.hash.getter()
{
  v1 = sub_22C9D0204(v0);
  if (!v2)
  {
    return 0;
  }

  v3 = MEMORY[0x2318BA9E0](v1);

  return v3;
}

Swift::Void __swiftcall MSFeedback.donate()()
{
  [v0 donateToBiome];

  [v0 uploadAnalytics];
}

void sub_22C9CE288(void *a1)
{
  v2 = sub_22CA20E10();
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  v6[4] = sub_22C9D0518;
  v6[5] = v3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 1107296256;
  v6[2] = sub_22C9CED3C;
  v6[3] = &unk_283FCD100;
  v4 = _Block_copy(v6);
  v5 = a1;

  [v5 sendEventForAnalyticsLazyWithEventName:v2 payloadBuilder:v4];
  _Block_release(v4);
}

id sub_22C9CE39C(void *a1)
{
  v58 = 0x6C7070612E6D6F63;
  v2 = sub_22CA20A20();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [a1 action];
  v7 = [v6 type];

  if (v7 && (v8 = [a1 action], v9 = objc_msgSend(v8, sel_type), v8, v9 != 1))
  {
    v18 = [a1 action];
    [v18 type];

    v14 = 0.0;
  }

  else
  {
    v10 = [a1 action];
    [v10 type];

    v11 = [a1 action];
    v12 = [v11 suggestion];

    if (v12)
    {
      [v12 intentDate];
      v13 = OBJC_IVAR___MSSuggestion_suggestionsLatency;
      swift_beginAccess();
      v14 = *&v12[v13];
      sub_22C9D03C4([v12 intent]);

      v15 = [v12 bundleID];
      v58 = sub_22CA20E20();
      v17 = v16;

      goto LABEL_8;
    }

    v14 = 0.0;
  }

  v17 = 0xEE0044494F4E2E65;
LABEL_8:
  sub_22CA20A10();
  sub_22CA20A00();

  (*(v3 + 8))(v5, v2);
  sub_22C9D0204(a1);

  v19 = [a1 options];
  v20 = [v19 allowedBundleIdentifiers];

  v21 = sub_22CA20EC0();
  v22 = *(v21 + 16);

  if (v22)
  {
    v23 = [a1 options];
    v24 = [v23 allowedBundleIdentifiers];

    v25 = sub_22CA20EC0();
    v59[0] = v25;
    sub_22C9D02E4(&qword_27D9E4980, &qword_22CA25770);
    sub_22C9D0520();
    sub_22CA20DF0();
  }

  v26 = [a1 options];
  v27 = [v26 seedSuggestions];

  type metadata accessor for MSSuggestion(0);
  sub_22CA20EC0();

  sub_22C9E6DA0();

  if (v14 == 0.0)
  {
    v28 = [a1 suggestions];
    v29 = sub_22CA20EC0();

    if (sub_22C9E6DA0())
    {
      sub_22C9FAEA0(0, (v29 & 0xC000000000000001) == 0, v29);
      if ((v29 & 0xC000000000000001) != 0)
      {
        v30 = MEMORY[0x2318BAD10](0, v29);
      }

      else
      {
        v30 = *(v29 + 32);
      }

      v31 = v30;

      v32 = OBJC_IVAR___MSSuggestion_suggestionsLatency;
      swift_beginAccess();
      v14 = *&v31[v32];
    }

    else
    {

      v14 = 0.0;
    }
  }

  if (HKImproveHealthAndActivityAnalyticsAllowed())
  {
    type metadata accessor for MSWorkoutItem(0);
    v33 = [a1 options];
    v34 = [v33 workoutType];

    sub_22C9EA5A8(v34);
  }

  else
  {
    v35 = [a1 options];
    [v35 workoutType];
  }

  v36 = [a1 action];
  v37 = [v36 &off_27872AC80 + 5];

  if (v37)
  {
    if ([v37 suggestionSource])
    {
      v38 = [v37 suggestionSource] == 0;

      v39 = 2 * v38;
    }

    else
    {

      v39 = 1;
    }

    v57 = v39;
  }

  else
  {
    v57 = 0;
  }

  sub_22C9D02E4(&qword_27D9E4978, &unk_22CA22CE0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22CA22BD0;
  *(inited + 32) = 0x5F6E6F6973736573;
  *(inited + 40) = 0xEF79636E6574616CLL;
  *(inited + 48) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  *(inited + 56) = 0xD000000000000011;
  *(inited + 64) = 0x800000022CA260F0;
  v41 = [a1 suggestions];
  sub_22CA20EC0();

  v42 = sub_22C9E6DA0();

  *(inited + 72) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  *(inited + 80) = 0xD00000000000001ALL;
  *(inited + 88) = 0x800000022CA26110;
  v43 = [a1 numberOfVisibleSuggestions];
  *(inited + 96) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInt_];
  *(inited + 104) = 0x695F656C646E7562;
  *(inited + 112) = 0xE900000000000064;
  v44 = [a1 options];
  result = [v44 bundleId];
  if (result)
  {
    v46 = result;

    *(inited + 120) = v46;
    *(inited + 128) = 0x6F705F7972746E65;
    *(inited + 136) = 0xEB00000000746E69;
    v47 = [a1 options];
    LODWORD(v46) = [v47 suggestionType];

    if (v46)
    {
      v48 = 0;
    }

    else
    {
      v48 = 3;
    }

    *(inited + 144) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
    *(inited + 152) = 0x79745F746E657665;
    *(inited + 160) = 0xEA00000000006570;
    *(inited + 168) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
    strcpy((inited + 176), "media_subtype");
    *(inited + 190) = -4864;
    if (v58 == 0xD000000000000012 && 0x800000022CA25AB0 == v17)
    {

      v51 = 4;
    }

    else
    {
      v50 = sub_22CA21360();

      if (v50)
      {
        v51 = 4;
      }

      else
      {
        v51 = 1;
      }
    }

    *(inited + 192) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
    *(inited + 200) = 0x6F697463656C6573;
    *(inited + 208) = 0xEF7865646E695F6ELL;
    v52 = [a1 indexOfEngagedSuggestion];
    *(inited + 216) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInt_];
    *(inited + 224) = 0xD000000000000010;
    *(inited + 232) = 0x800000022CA26130;
    v53 = objc_allocWithZone(MEMORY[0x277CCABB0]);
    *(inited + 240) = [v53 initWithInteger_];
    strcpy((inited + 248), "workout_type");
    *(inited + 261) = 0;
    *(inited + 262) = -5120;
    v54 = [a1 options];
    v55 = [v54 workoutType];

    *(inited + 264) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInt_];
    sub_22C9D0434(0, &qword_28143A098, 0x277D82BB8);
    return sub_22CA20DD0();
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_22C9CED3C(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  if (v3)
  {
    sub_22C9D0434(0, &qword_28143A098, 0x277D82BB8);
    v4 = sub_22CA20DA0();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void sub_22C9CEE38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = MEMORY[0x2318BB0B0]();
  sub_22C9CEEB0(a1, a2, a3, a4);

  objc_autoreleasePoolPop(v8);
}

void sub_22C9CEEB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_22CA20E10();
  v17[4] = a3;
  v17[5] = a4;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 1107296256;
  v17[2] = sub_22C9CED3C;
  v17[3] = &unk_283FCD0B0;
  v7 = _Block_copy(v17);

  v8 = AnalyticsSendEventLazy();
  _Block_release(v7);

  if (qword_28143A320 != -1)
  {
    swift_once();
  }

  v9 = sub_22CA20B10();
  sub_22C9D0494(v9, &unk_28143A4E0);
  v10 = sub_22CA20AF0();
  v11 = sub_22CA21000();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v17[0] = v13;
    *v12 = 136315138;
    if (v8)
    {
      v14 = 0x6673736563637553;
    }

    else
    {
      v14 = 0x742064656C696146;
    }

    if (v8)
    {
      v15 = 0xEC000000796C6C75;
    }

    else
    {
      v15 = 0xE90000000000006FLL;
    }

    v16 = sub_22C9D60B0(v14, v15, v17);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_22C9CA000, v10, v11, "%s sent data to CoreAnalytics", v12, 0xCu);
    sub_22C9D04CC(v13);
    MEMORY[0x2318BB680](v13, -1, -1);
    MEMORY[0x2318BB680](v12, -1, -1);
  }
}

uint64_t sub_22C9CF184(uint64_t a1)
{
  v1 = (*(a1 + 16))();
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_22C9D0434(0, &qword_28143A098, 0x277D82BB8);
  v3 = sub_22CA20DB0();

  return v3;
}

void sub_22C9CF204(void (*a1)(uint64_t))
{
  v3 = MEMORY[0x2318BB0B0]();
  a1(v1);

  objc_autoreleasePoolPop(v3);
}

void sub_22C9CF260(void *a1)
{
  v1 = a1;
  v2 = 0x27872A000uLL;
  v3 = [a1 action];
  v4 = [v3 suggestion];

  v5 = 0x27872A000;
  v6 = 0x27872A000uLL;
  v150 = v1;
  if (v4)
  {
    v7 = [v4 bundleID];
    v8 = sub_22CA20E20();
    v140 = v9;
    v141 = v8;

    v10 = [v4 intent];
    v11 = [v10 mediaContainer];

    if (v11)
    {
      [v4 intentDate];
      v152 = sub_22CA20F80();
      v12 = [v4 bundleID];
      v13 = sub_22CA20E20();
      v15 = v14;

      v16 = sub_22C9D6670(v11);
      v18 = v17;
      v19 = [v150 mediaTypeFor_];
      v20 = [v150 suggestionSourceFor_];
      v21 = objc_allocWithZone(MEMORY[0x277CF1340]);
      v22 = v15;
      v1 = v150;
      v23 = v18;
      v2 = 0x27872A000;
      v24 = sub_22C9CFF50(v152, v13, v22, v16, v23, v19, v20);

      v5 = 0x27872A000uLL;
      v6 = 0x27872A000;
    }

    else
    {
      v25 = OBJC_IVAR___MSSuggestion_mediaAppIntent;
      swift_beginAccess();
      v26 = *&v4[v25];
      if (v26)
      {
        v27 = v26;
        [v4 intentDate];
        v153 = sub_22CA20F80();
        v28 = [v4 bundleID];
        v29 = sub_22CA20E20();
        v31 = v30;

        v32 = *&v27[OBJC_IVAR____TtC14MediaSuggester20MSPlayMediaAppIntent_identifier];
        v33 = *&v27[OBJC_IVAR____TtC14MediaSuggester20MSPlayMediaAppIntent_identifier + 8];

        sub_22CA1E76C(v34, v35, v36, v37, v38, v39, v40, v41, v130, v131, v132, v133, v134, v135, v136, v138, v140, v141, v142, v143, v145, v147, v150, v153, v159, v160, v161, v162);
        if ((v42 & 0x100000000) != 0)
        {
          v43 = 0;
        }

        else
        {
          v43 = v42;
        }

        v44 = [v150 mediaTypeFor_];
        v45 = [v150 suggestionSourceFor_];
        v46 = objc_allocWithZone(MEMORY[0x277CF1340]);
        v47 = v31;
        v1 = v150;
        v48 = v32;
        v2 = 0x27872A000;
        v24 = sub_22C9CFF50(v154, v29, v47, v48, v33, v44, v45);
      }

      else
      {
        [v4 intentDate];
        v49 = sub_22CA20F80();
        v50 = [v4 bundleID];
        v51 = sub_22CA20E20();
        v53 = v52;

        v54 = [v1 suggestionSourceFor_];
        v55 = objc_allocWithZone(MEMORY[0x277CF1340]);
        v24 = sub_22C9CFF50(v49, v51, v53, 0x44492D4F4ELL, 0xE500000000000000, 1, v54);
      }

      v5 = 0x27872A000uLL;
    }
  }

  else
  {
    v24 = 0;
    v140 = 0x800000022CA26090;
    v141 = 0xD000000000000014;
  }

  v56 = [v1 *(v2 + 3440)];
  HIDWORD(v137) = [v56 *(v5 + 3552)];

  v57 = [v1 options];
  LODWORD(v137) = [v57 workoutType];

  v58 = MEMORY[0x277D84F90];
  v163 = MEMORY[0x277D84F90];
  v59 = [v1 suggestions];
  type metadata accessor for MSSuggestion(0);
  v60 = sub_22CA20EC0();

  v148 = v60;
  v61 = sub_22C9E6DA0();
  v139 = v24;
  if (v61)
  {
    v62 = v61;
    if (v61 >= 1)
    {
      v63 = 0;
      v144 = v61;
      v146 = v60 & 0xC000000000000001;
      while (1)
      {
        if (v146)
        {
          v64 = MEMORY[0x2318BAD10](v63, v148);
        }

        else
        {
          v64 = *(v148 + 8 * v63 + 32);
        }

        v65 = v64;
        v66 = [v64 *(v6 + 3568)];
        v67 = [v66 mediaContainer];

        if (v67)
        {
          [v65 intentDate];
          v155 = sub_22CA20F80();
          v68 = [v65 bundleID];
          v69 = sub_22CA20E20();
          v71 = v70;

          v72 = sub_22C9D6670(v67);
          v74 = v73;
          v75 = [v150 mediaTypeFor_];
          v76 = [v150 suggestionSourceFor_];
          objc_allocWithZone(MEMORY[0x277CF1340]);
          v77 = v155;
          v78 = v69;
          v79 = v71;
          v80 = v72;
          v81 = v74;
          v62 = v144;
          v82 = v75;
          v83 = v76;
        }

        else
        {
          v84 = OBJC_IVAR___MSSuggestion_mediaAppIntent;
          swift_beginAccess();
          v85 = *&v65[v84];
          if (!v85)
          {
            [v65 intentDate];
            v106 = sub_22CA20F80();
            v107 = [v65 bundleID];
            v108 = sub_22CA20E20();
            v110 = v109;

            v111 = [v150 suggestionSourceFor_];
            v112 = objc_allocWithZone(MEMORY[0x277CF1340]);
            v104 = sub_22C9CFF50(v106, v108, v110, 0x44492D4F4ELL, 0xE500000000000000, 1, v111);
            goto LABEL_26;
          }

          v67 = v85;
          [v65 intentDate];
          v156 = sub_22CA20F80();
          v86 = [v65 bundleID];
          v87 = sub_22CA20E20();
          v89 = v88;

          v90 = *&v67[OBJC_IVAR____TtC14MediaSuggester20MSPlayMediaAppIntent_identifier];
          v91 = *&v67[OBJC_IVAR____TtC14MediaSuggester20MSPlayMediaAppIntent_identifier + 8];

          sub_22CA1E76C(v92, v93, v94, v95, v96, v97, v98, v99, v130, v131, v132, v133, v134, v135, v137, v139, v140, v141, v142, v144, v146, v148, v150, v156, v159, v160, v161, v162);
          if ((v100 & 0x100000000) != 0)
          {
            v101 = 0;
          }

          else
          {
            v101 = v100;
          }

          v102 = [v150 mediaTypeFor_];
          v103 = [v150 suggestionSourceFor_];
          objc_allocWithZone(MEMORY[0x277CF1340]);
          v77 = v157;
          v78 = v87;
          v79 = v89;
          v80 = v90;
          v81 = v91;
          v62 = v144;
          v82 = v102;
          v83 = v103;
        }

        v104 = sub_22C9CFF50(v77, v78, v79, v80, v81, v82, v83);

LABEL_26:
        v105 = v104;
        MEMORY[0x2318BA9F0]();
        if (*((v163 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v163 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_22CA20EE0();
        }

        ++v63;
        sub_22CA20F00();

        v6 = 0x27872A000;
        if (v62 == v63)
        {
          v58 = v163;
          v1 = v150;
          goto LABEL_31;
        }
      }
    }

    __break(1u);
  }

  else
  {
LABEL_31:

    v113 = sub_22C9D0204(v1);
    v149 = v114;
    v151 = v113;
    [v1 numberOfVisibleSuggestions];
    v115 = v1;
    v116 = sub_22CA21420();
    [v115 indexOfEngagedSuggestion];
    v117 = sub_22CA21420();
    v158 = v139;
    v118 = [v115 options];
    [v118 requestDate];

    v119 = sub_22CA20F80();
    v120 = sub_22CA21420();
    sub_22C9D0434(0, &qword_27D9E4968, 0x277CCABB0);
    v121 = sub_22CA210B0();
    v122 = [v115 options];
    v123 = [v122 allowedBundleIdentifiers];

    v124 = sub_22CA20EC0();
    v125 = objc_allocWithZone(MEMORY[0x277CF1338]);
    v126 = sub_22C9D0020(v151, v149, v116, v117, v139, HIDWORD(v137), v119, v141, v140, v120, v121, v124, v58);
    v127 = [BiomeLibrary() MediaSuggester];
    swift_unknownObjectRelease();
    v128 = [v127 SuggestionFeedback];
    swift_unknownObjectRelease();
    v129 = [v128 source];
    [v129 sendEvent_];
  }
}

uint64_t sub_22C9CFCA8(uint64_t a1)
{
  if ((a1 - 6) > 9)
  {
    return 1;
  }

  else
  {
    return dword_22CA22D44[a1 - 6];
  }
}

uint64_t sub_22C9CFCF4(int a1)
{
  if ((a1 - 6) > 9)
  {
    return 1;
  }

  else
  {
    return dword_22CA22D44[a1 - 6];
  }
}

uint64_t sub_22C9CFD40(unsigned int a1)
{
  if (a1 > 2)
  {
    return 0;
  }

  else
  {
    return dword_22CA22D6C[a1];
  }
}

id MSFeedback.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

id sub_22C9CFE70(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7)
{
  v8 = v7;
  type metadata accessor for MSSuggestion(0);
  v14 = sub_22CA20EB0();

  if (a6)
  {
    v15 = sub_22CA20E10();
  }

  else
  {
    v15 = 0;
  }

  v16 = [v8 initWithAction:a1 requestInterval:a2 options:v14 suggestions:a4 numberOfVisibleSuggestions:v15 sessionIdentifier:a7];

  return v16;
}

id sub_22C9CFF50(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  if (!a3)
  {
    v13 = 0;
    if (a5)
    {
      goto LABEL_3;
    }

LABEL_5:
    v14 = 0;
    goto LABEL_6;
  }

  v13 = sub_22CA20E10();

  if (!a5)
  {
    goto LABEL_5;
  }

LABEL_3:
  v14 = sub_22CA20E10();

LABEL_6:
  v15 = [v8 initWithEventTimestamp:a1 bundleID:v13 intentIdentifier:v14 subtype:a6 engagementType:a7];

  return v15;
}

id sub_22C9D0020(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, unsigned int a6, void *a7, uint64_t a8, uint64_t a9, void *a10, void *a11, uint64_t a12, uint64_t a13)
{
  if (a2)
  {
    v15 = sub_22CA20E10();
  }

  else
  {
    v15 = 0;
  }

  if (a9)
  {
    v16 = sub_22CA20E10();
  }

  else
  {
    v16 = 0;
  }

  v20 = sub_22CA20EB0();

  sub_22C9D0434(0, &qword_27D9E4970, 0x277CF1340);
  v17 = sub_22CA20EB0();

  v18 = [v21 initWithSessionIdentifier:v15 numberOfVisibleSuggestions:a3 indexSelected:a4 intent:a5 engagementType:a6 suggestionsRequestDate:a7 targetBundleID:v16 workoutType:a10 isNowPlaying:a11 allowedBundleIDs:v20 suggestionsIntent:v17];

  return v18;
}

uint64_t sub_22C9D0190@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_22C9DAE74(*a1);
  *a2 = result;
  *(a2 + 4) = BYTE4(result) & 1;
  return result;
}

void sub_22C9D01C4()
{
  sub_22C9D0740();
  nullsub_1();
  *v0 = v1;
}

uint64_t sub_22C9D0204(void *a1)
{
  v1 = [a1 sessionIdentifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_22CA20E20();

  return v3;
}

uint64_t sub_22C9D027C(uint64_t a1)
{
  v2 = sub_22C9D02E4(&unk_27D9E4D60, &unk_22CA22BE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22C9D02E4(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_22C9D032C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C9D02E4(&unk_27D9E4D60, &unk_22CA22BE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22C9D03C4(void *a1)
{
  v2 = [a1 identifier];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_22CA20E20();

  return v3;
}

uint64_t sub_22C9D0434(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_22C9D047C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_22C9D0494(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_22C9D04CC(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

unint64_t sub_22C9D0520()
{
  result = qword_27D9E4988;
  if (!qword_27D9E4988)
  {
    sub_22C9D0584(&qword_27D9E4980, &qword_22CA25770);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9E4988);
  }

  return result;
}

uint64_t sub_22C9D0584(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

void *sub_22C9D05CC(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

void sub_22C9D0624(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_22C9D0678(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{

  return swift_dynamicCast();
}

uint64_t sub_22C9D06C4()
{

  return sub_22CA20E10();
}

id sub_22C9D06F4()
{

  return [v0 (v3 + 3842)];
}

uint64_t sub_22C9D0714()
{

  return sub_22CA20E10();
}

uint64_t sub_22C9D0764()
{

  return sub_22CA20E10();
}

uint64_t sub_22C9D0788()
{

  return sub_22CA20E10();
}

uint64_t sub_22C9D07A8()
{

  return sub_22CA20E10();
}

uint64_t sub_22C9D0824()
{
  v1 = *(v0 + OBJC_IVAR___MSIntentWrapper_bundleID);

  return v1;
}

id sub_22C9D0860(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v3[OBJC_IVAR___MSIntentWrapper_intent] = a1;
  v5 = &v3[OBJC_IVAR___MSIntentWrapper_bundleID];
  *v5 = a2;
  *(v5 + 1) = a3;
  sub_22C9D7260();
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  v7 = &v3[OBJC_IVAR___MSIntentWrapper_executionBlock];
  *v7 = &unk_22CA22E80;
  *(v7 + 1) = v6;
  v9.receiver = v3;
  v9.super_class = MSIntentWrapper;
  swift_unknownObjectRetain();
  return objc_msgSendSuper2(&v9, sel_init);
}

uint64_t sub_22C9D0920()
{
  sub_22C9D7018();
  *(v0 + 16) = v0;
  sub_22C9D72A0();
  v1 = sub_22C9D02E4(&qword_27D9E4BD8, &qword_22CA22E88);
  sub_22C9D6E84(v1);
  *(v0 + 88) = 1107296256;
  sub_22C9D6E6C();
  sub_22C9D7384(v2, sel_executeWithCompletion_);

  return MEMORY[0x282200938](v0 + 16);
}

uint64_t sub_22C9D09F4()
{
  sub_22C9D6F3C();
  sub_22C9D70B4();
  sub_22C9D6F94();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 152) = *(v3 + 48);
  sub_22C9D70D8();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_22C9D0AF0(uint64_t a1, void *a2)
{
  v3 = sub_22C9D05CC((a1 + 32), *(a1 + 56));
  if (a2)
  {
    v4 = a2;

    return sub_22CA11158();
  }

  else
  {
    v6 = *v3;

    return j__swift_continuation_throwingResume(v6);
  }
}

uint64_t sub_22C9D0BC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x2822009F8](sub_22C9D0BE4, 0, 0);
}

uint64_t sub_22C9D0BE4()
{
  sub_22C9D6F3C();
  v3 = (*(*(v0 + 16) + OBJC_IVAR___MSIntentWrapper_executionBlock) + **(*(v0 + 16) + OBJC_IVAR___MSIntentWrapper_executionBlock));
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_22C9D0CD8;

  return v3();
}

uint64_t sub_22C9D0CD8()
{
  sub_22C9D6F3C();
  sub_22C9D70B4();
  sub_22C9D6F94();
  *v3 = v2;
  v4 = *v1;
  sub_22C9D6EA4();
  *v5 = v4;
  *(v6 + 48) = v0;

  sub_22C9D70D8();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_22C9D0DD0()
{
  sub_22C9D6F3C();
  (*(v0 + 24))(0);
  sub_22C9D7050();

  return v1();
}

uint64_t sub_22C9D0E30()
{
  sub_22C9D7018();
  v1 = *(v0 + 48);
  v2 = *(v0 + 24);
  v3 = v1;
  v2(v1);

  sub_22C9D7050();

  return v4();
}

uint64_t sub_22C9D0EB4()
{
  sub_22C9D731C();
  v0 = swift_task_alloc();
  v1 = sub_22C9D705C(v0);
  *v1 = v2;
  v1[1] = sub_22C9D0F54;
  sub_22C9D708C();
  sub_22C9D7330();

  return sub_22C9D0BC0(v3, v4, v5, v6, v7, v8);
}

uint64_t sub_22C9D0F54()
{
  sub_22C9D6F3C();
  sub_22C9D70B4();
  v1 = *v0;
  sub_22C9D6EA4();
  *v2 = v1;

  sub_22C9D7050();

  return v3();
}

uint64_t sub_22C9D1034(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_22C9D02E4(&unk_27D9E4A00, &qword_22CA22D90);
  sub_22C9D71B4(v9);
  sub_22C9D7024();
  MEMORY[0x28223BE20](v10);
  v12 = v25 - v11;
  sub_22C9D6BDC(a3, v25 - v11, &unk_27D9E4A00, &qword_22CA22D90);
  v13 = sub_22CA20F70();
  v14 = sub_22C9D68B0(v12, 1, v13);

  if (v14 == 1)
  {
    sub_22C9D6C44(v12, &unk_27D9E4A00, &qword_22CA22D90);
  }

  else
  {
    sub_22CA20F60();
    (*(*(v13 - 8) + 8))(v12, v13);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_22CA20F10();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_22CA20E50() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_22C9D6C44(a3, &unk_27D9E4A00, &qword_22CA22D90);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_22C9D6C44(a3, &unk_27D9E4A00, &qword_22CA22D90);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

void sub_22C9D1344(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = sub_22CA20920();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

uint64_t MSIntentWrapper.copy(with:)@<X0>(uint64_t *a1@<X8>)
{
  v5 = [v1 intent];
  v6 = [v1 bundleID];
  sub_22CA20E20();
  sub_22C9D72F8();

  v7 = objc_allocWithZone(MSIntentWrapper);
  v8 = sub_22C9D7254();
  v9 = sub_22C9D5CCC(v8, v2, v3);
  result = type metadata accessor for MSIntentWrapper(v9);
  a1[3] = result;
  *a1 = v9;
  return result;
}

Swift::Void __swiftcall MSIntentWrapper.encode(with:)(NSCoder with)
{
  v3 = [v1 intent];
  v4 = sub_22C9D7030();
  sub_22C9D7204(v4);
  swift_unknownObjectRelease();

  v5 = [v1 bundleID];
  v6 = sub_22C9D6F18();
  sub_22C9D72BC(v6, v7, v8, v9, v10, v11, v12, v13, v14, v15);
}

id MSIntentWrapper.init(coder:)(void *a1)
{
  v3 = sub_22C9D7030();
  v4 = [a1 decodeObjectForKey_];

  if (v4)
  {
    sub_22CA21130();
    v5 = swift_unknownObjectRelease();
  }

  else
  {
    sub_22C9D7310();
  }

  sub_22C9D706C(v5, v6, v7, v8, v9, v10, v11, v12, v47.receiver, v47.super_class, v48, v49, *&v50[0], *(&v50[0] + 1), v50[1]);
  if (!v13)
  {
    goto LABEL_13;
  }

  v14 = sub_22C9D02E4(&qword_27D9E4A10, &qword_22CA22DB8);
  sub_22C9D7304(v14, v15, v16, v14, v17, v18, v19, v20, v47.receiver, v47.super_class, v48);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_15:

    goto LABEL_16;
  }

  v21 = v48;
  v22 = sub_22C9D6F18();
  v23 = [a1 decodeObjectForKey_];

  if (v23)
  {
    sub_22CA21130();
    v24 = swift_unknownObjectRelease();
  }

  else
  {
    sub_22C9D7310();
  }

  sub_22C9D706C(v24, v25, v26, v27, v28, v29, v30, v31, v47.receiver, v47.super_class, v48, v49, *&v50[0], *(&v50[0] + 1), v50[1]);
  if (!v39)
  {
    swift_unknownObjectRelease();
LABEL_13:

    v45 = sub_22C9D6C44(v51, &unk_27D9E4D60, &unk_22CA22BE0);
LABEL_16:
    type metadata accessor for MSIntentWrapper(v45);
    swift_deallocPartialClassInstance();
    return 0;
  }

  sub_22C9D7304(v32, v33, v34, MEMORY[0x277D837D0], v35, v36, v37, v38, v47.receiver, v47.super_class, v48);
  if ((swift_dynamicCast() & 1) == 0)
  {
    swift_unknownObjectRelease();
    goto LABEL_15;
  }

  *&v1[OBJC_IVAR___MSIntentWrapper_intent] = v21;
  v40 = v49;
  v41 = &v1[OBJC_IVAR___MSIntentWrapper_bundleID];
  *v41 = v48;
  *(v41 + 1) = v40;
  sub_22C9D7260();
  v42 = swift_allocObject();
  *(v42 + 16) = v21;
  v43 = &v1[OBJC_IVAR___MSIntentWrapper_executionBlock];
  *v43 = &unk_22CA22DC8;
  *(v43 + 1) = v42;
  v47.receiver = v1;
  v47.super_class = MSIntentWrapper;
  swift_unknownObjectRetain();
  v44 = objc_msgSendSuper2(&v47, sel_init);

  return v44;
}

uint64_t sub_22C9D17B4()
{
  sub_22C9D7018();
  *(v0 + 16) = v0;
  sub_22C9D72A0();
  v1 = sub_22C9D02E4(&qword_27D9E4BD8, &qword_22CA22E88);
  sub_22C9D6E84(v1);
  *(v0 + 88) = 1107296256;
  sub_22C9D6E6C();
  sub_22C9D7384(v2, sel_executeWithCompletion_);

  return MEMORY[0x282200938](v0 + 16);
}

uint64_t sub_22C9D1888()
{
  sub_22C9D6F3C();
  sub_22C9D70B4();
  sub_22C9D6F94();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 152) = *(v3 + 48);
  sub_22C9D70D8();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_22C9D19A8()
{
  sub_22C9D7018();
  swift_willThrow();
  sub_22C9D7050();

  return v0();
}

id sub_22C9D1BA8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  a3();
  v3 = sub_22CA20E10();

  return v3;
}

uint64_t sub_22C9D1BF8()
{
  v1 = *(v0 + OBJC_IVAR___MSUnifiedMediaIntent_bundleID);

  return v1;
}

uint64_t sub_22C9D1CA4(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR___MSUnifiedMediaIntent_bundleID);
  *v3 = a1;
  v3[1] = a2;
}

id MSUnifiedMediaIntent.init(intent:bundleID:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_22C9D7248();
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_22C9D709C();
  v5 = sub_22CA20E10();

  v6 = [v4 initWithIntent:v3 bundleID:v5];
  swift_unknownObjectRelease();

  return v6;
}

{
  v7 = objc_allocWithZone(MSIntentWrapper);
  swift_unknownObjectRetain();

  *&v3[OBJC_IVAR___MSUnifiedMediaIntent_currentIntent] = sub_22C9D5CCC(a1, a2, a3);
  v8 = &v3[OBJC_IVAR___MSUnifiedMediaIntent_bundleID];
  *v8 = a2;
  *(v8 + 1) = a3;
  v11.receiver = v3;
  v11.super_class = MSUnifiedMediaIntent;
  v9 = objc_msgSendSuper2(&v11, sel_init);
  swift_unknownObjectRelease();
  return v9;
}

uint64_t sub_22C9D1E10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  sub_22CA20E20();
  sub_22C9D72F8();
  v8 = swift_unknownObjectRetain();
  return a5(v8, v5, v6);
}

uint64_t sub_22C9D1E90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_22C9D02E4(&unk_27D9E4A00, &qword_22CA22D90);
  sub_22C9D71B4(v8);
  sub_22C9D7024();
  MEMORY[0x28223BE20](v9);
  v11 = &v16 - v10;
  v12 = sub_22CA20F70();
  sub_22C9D0B98(v11, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = v4;
  v13[5] = a1;
  v13[6] = a2;
  v14 = v4;

  sub_22C9D1034(0, 0, v11, a4, v13);
}

uint64_t sub_22C9D1F78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[19] = a5;
  v6[20] = a6;
  v6[18] = a4;
  return MEMORY[0x2822009F8](sub_22C9D1F9C, 0, 0);
}

uint64_t sub_22C9D1F9C()
{
  sub_22C9D7018();
  *(v0 + 168) = [*(v0 + 144) currentIntent];
  *(v0 + 16) = v0;
  sub_22C9D72A0();
  v1 = sub_22C9D02E4(&qword_27D9E4BD8, &qword_22CA22E88);
  sub_22C9D6E84(v1);
  *(v0 + 88) = 1107296256;
  sub_22C9D6E6C();
  sub_22C9D7384(v2, sel_executeWithCompletion_);

  return MEMORY[0x282200938](v0 + 16);
}

uint64_t sub_22C9D208C()
{
  sub_22C9D6F3C();
  sub_22C9D70B4();
  sub_22C9D6F94();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 176) = *(v3 + 48);
  sub_22C9D70D8();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_22C9D2188()
{
  sub_22C9D6F3C();
  v1 = *(v0 + 152);

  v1(0);
  sub_22C9D7050();

  return v2();
}

uint64_t sub_22C9D21F0(uint64_t a1)
{
  v3 = v1[21];
  swift_willThrow();

  if (qword_27D9E4730 != -1)
  {
    sub_22C9D6EB4(&qword_27D9E4730);
  }

  v4 = v1[22];
  v5 = sub_22CA20B10();
  sub_22C9D0494(v5, &unk_27D9E8080);
  v6 = sub_22C9D7254();
  v7 = sub_22CA20AF0();
  v8 = sub_22CA21000();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v1[22];
    sub_22C9D7164();
    v10 = sub_22C9D7284();
    *v2 = 138412290;
    v11 = v9;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v2 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_22C9CA000, v7, v8, "Error executing intent: %@", v2, 0xCu);
    sub_22C9D6C44(v10, &unk_27D9E5090, &qword_22CA22E00);
    sub_22C9D6FFC();
    sub_22C9D6FC4();
  }

  v13 = v1[22];
  v14 = v1[19];

  v15 = v13;
  v14(v13);

  sub_22C9D7050();

  return v16();
}

uint64_t sub_22C9D23AC(void *a1, int a2, void *aBlock, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t))
{
  v8 = _Block_copy(aBlock);
  sub_22C9D7260();
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v10 = a1;
  v11 = sub_22C9D7248();
  a6(v11, v9);
}

uint64_t MSUnifiedMediaIntent.copy(with:)@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = [v1 currentIntent];
  v5 = [v2 bundleID];
  sub_22CA20E20();
  sub_22C9D72F8();

  v6 = objc_allocWithZone(MSUnifiedMediaIntent);
  v7 = sub_22CA20E10();

  v8 = [v6 initWithIntent:v4 bundleID:v7];

  result = type metadata accessor for MSUnifiedMediaIntent(v9);
  a1[3] = result;
  *a1 = v8;
  return result;
}

uint64_t sub_22C9D2520(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void *__return_ptr))
{
  v5 = a1;
  a4(v8);

  sub_22C9D05CC(v8, v8[3]);
  v6 = sub_22CA21350();
  sub_22C9D04CC(v8);
  return v6;
}

Swift::Void __swiftcall MSUnifiedMediaIntent.encode(with:)(NSCoder with)
{
  v3 = [v1 currentIntent];
  v4 = sub_22C9D7030();
  sub_22C9D7204(v4);

  v5 = [v1 bundleID];
  if (!v5)
  {
    sub_22CA20E20();
    sub_22CA20E10();
    sub_22C9D7254();
  }

  v6 = sub_22C9D6F18();
  sub_22C9D72BC(v6, v7, v8, v9, v10, v11, v12, v13, v14, v15);
}

id _sSo15MSIntentWrapperC14MediaSuggesterE5coderABSgSo7NSCoderC_tcfC_0(void *a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithCoder_];

  return v2;
}

id MSUnifiedMediaIntent.init(coder:)(void *a1)
{
  v3 = sub_22C9D7030();
  v4 = [a1 decodeObjectForKey_];

  if (v4)
  {
    sub_22CA21130();
    v5 = swift_unknownObjectRelease();
  }

  else
  {
    sub_22C9D7310();
  }

  sub_22C9D706C(v5, v6, v7, v8, v9, v10, v11, v12, v46.receiver, v46.super_class, v47, v48, *&v49[0], *(&v49[0] + 1), v49[1]);
  if (!v14)
  {

LABEL_15:
    v33 = sub_22C9D6C44(v50, &unk_27D9E4D60, &unk_22CA22BE0);
    goto LABEL_16;
  }

  v15 = type metadata accessor for MSIntentWrapper(v13);
  sub_22C9D7304(v15, v16, v17, v15, v18, v19, v20, v21, v46.receiver, v46.super_class, v47);
  if ((swift_dynamicCast() & 1) == 0)
  {

LABEL_16:
    type metadata accessor for MSUnifiedMediaIntent(v33);
    swift_deallocPartialClassInstance();
    return 0;
  }

  v22 = v47;
  v23 = sub_22C9D6F18();
  v24 = [a1 decodeObjectForKey_];

  if (v24)
  {
    sub_22CA21130();
    v25 = swift_unknownObjectRelease();
  }

  else
  {
    sub_22C9D7310();
  }

  sub_22C9D706C(v25, v26, v27, v28, v29, v30, v31, v32, v46.receiver, v46.super_class, v47, v48, *&v49[0], *(&v49[0] + 1), v49[1]);
  if (!v41)
  {

    goto LABEL_15;
  }

  sub_22C9D7304(v34, v35, v36, MEMORY[0x277D837D0], v37, v38, v39, v40, v46.receiver, v46.super_class, v47);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_16;
  }

  *&v1[OBJC_IVAR___MSUnifiedMediaIntent_currentIntent] = v22;
  v42 = v48;
  v43 = &v1[OBJC_IVAR___MSUnifiedMediaIntent_bundleID];
  *v43 = v47;
  *(v43 + 1) = v42;
  v46.receiver = v1;
  v46.super_class = MSUnifiedMediaIntent;
  v44 = objc_msgSendSuper2(&v46, sel_init);

  return v44;
}

uint64_t MSUnifiedMediaIntent.description.getter()
{
  v3 = v0;
  sub_22CA211A0();

  swift_getObjectType();
  v4 = sub_22CA214B0();
  MEMORY[0x2318BA9C0](v4);

  MEMORY[0x2318BA9C0](0x746E65746E49203ALL, 0xE90000000000003DLL);
  v5 = [v0 currentIntent];
  v6 = [v5 description];
  sub_22CA20E20();
  sub_22C9D72F8();

  MEMORY[0x2318BA9C0](v1, v2);

  MEMORY[0x2318BA9C0](0x656C646E7542202CLL, 0xEC000000203A4449);
  v7 = [v3 bundleID];
  v8 = sub_22CA20E20();
  v10 = v9;

  MEMORY[0x2318BA9C0](v8, v10);

  MEMORY[0x2318BA9C0](62, 0xE100000000000000);
  return 60;
}

id _sSo15MSIntentWrapperC14MediaSuggesterEABycfC_0()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t INIntent.execute()()
{
  *(v1 + 320) = v0;
  sub_22C9D70D8();
  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_22C9D2BCC()
{
  v35 = v0;
  if (qword_27D9E4730 != -1)
  {
    sub_22C9D6EB4(&qword_27D9E4730);
  }

  v1 = v0[40];
  v2 = sub_22CA20B10();
  v0[41] = sub_22C9D0494(v2, &unk_27D9E8080);
  v3 = v1;
  v4 = sub_22CA20AF0();
  v5 = sub_22CA20FF0();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[40];
    sub_22C9D7164();
    v34[0] = sub_22C9D7198();
    *v3 = 136315138;
    v7 = sub_22C9D6670(v6);
    if (v8)
    {
      v9 = v8;
    }

    else
    {
      v7 = 0x44492D4F4ELL;
      v9 = 0xE500000000000000;
    }

    v10 = sub_22C9D60B0(v7, v9, v34);

    *(v3 + 1) = v10;
    _os_log_impl(&dword_22C9CA000, v4, v5, "Executing INPlayMediaIntent (id: %s)", v3, 0xCu);
    sub_22C9D6F60();
    sub_22C9D6FC4();
  }

  v11 = v0[40];
  objc_opt_self();
  v12 = swift_dynamicCastObjCClass();
  v0[42] = v12;
  v13 = v11;
  if (v12)
  {
    [v12 _setAirPlayRouteIds_];
    v14 = [objc_allocWithZone(MEMORY[0x277D21520]) initWithIntent_];
    v0[43] = v14;
    [v14 setRequiresTCC_];
    v0[30] = sub_22C9D3B94;
    v0[31] = 0;
    v15 = MEMORY[0x277D85DD0];
    v0[26] = MEMORY[0x277D85DD0];
    v0[27] = 1107296256;
    v0[28] = sub_22C9D3D2C;
    v0[29] = &unk_283FCD1C0;
    v16 = _Block_copy(v0 + 26);
    [v14 setInterruptionHandler_];
    _Block_release(v16);
    v0[2] = v0;
    v0[7] = v0 + 37;
    v0[3] = sub_22C9D2FD8;
    v17 = swift_continuation_init();
    v0[33] = sub_22C9D02E4(&qword_27D9E4A48, &qword_22CA22DF0);
    v0[26] = v15;
    v0[27] = 1107296256;
    v0[28] = sub_22C9D3D94;
    v0[29] = &unk_283FCD1E8;
    v0[30] = v17;
    [v14 resumeWithCompletionHandler_];

    return MEMORY[0x282200938](v0 + 2);
  }

  else
  {
    v18 = v0[40];
    v19 = sub_22CA20AF0();
    v20 = sub_22CA21000();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = v0[40];
      v22 = sub_22C9D7164();
      v23 = sub_22C9D71CC();
      v34[0] = v23;
      *v22 = 136315138;
      v24 = sub_22C9D6670(v21);
      if (v25)
      {
        v26 = v25;
      }

      else
      {
        v24 = 0x44492D4F4ELL;
        v26 = 0xE500000000000000;
      }

      v27 = sub_22C9D60B0(v24, v26, v34);

      *(v22 + 4) = v27;
      sub_22C9D7144(&dword_22C9CA000, v28, v29, "Failure to execute intent with id: %s");
      sub_22C9D04CC(v23);
      sub_22C9D6FFC();
      sub_22C9D70C0();
    }

    v30 = sub_22C9D661C();
    sub_22C9D726C(&type metadata for MSSuggestionError, v30);
    sub_22C9D7344(v31, 4);
    sub_22C9D7050();

    return v32();
  }
}

uint64_t sub_22C9D2FD8()
{
  sub_22C9D6F3C();
  sub_22C9D70B4();
  sub_22C9D6F94();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 352) = *(v3 + 48);
  sub_22C9D70D8();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_22C9D30D4()
{
  sub_22C9D7018();
  v0[45] = v0[37];
  v0[10] = v0;
  v0[15] = v0 + 37;
  v0[11] = sub_22C9D31EC;
  v1 = swift_continuation_init();
  v2 = sub_22C9D02E4(&unk_27D9E4A50, &qword_22CA22DF8);
  v0[46] = v2;
  v0[33] = v2;
  v0[26] = MEMORY[0x277D85DD0];
  v0[27] = 1107296256;
  v0[28] = sub_22C9D3E28;
  v0[29] = &unk_283FCD210;
  v0[30] = v1;
  sub_22C9D7384(v2, sel_confirmIntentWithCompletionHandler_);

  return MEMORY[0x282200938](v0 + 10);
}

uint64_t sub_22C9D31EC()
{
  sub_22C9D6F3C();
  v1 = *v0;
  sub_22C9D6EA4();
  *v2 = v1;
  sub_22C9D70D8();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_22C9D32BC()
{
  v61 = v0;
  v1 = *(v0 + 296);
  v2 = *(v0 + 304);
  *(v0 + 376) = v1;
  if (v2)
  {
    v3 = *(v0 + 320);
    v4 = v2;
    v5 = sub_22CA20AF0();
    sub_22CA21000();

    if (sub_22C9D72E0())
    {
      v6 = *(v0 + 336);
      sub_22C9D7164();
      v7 = sub_22C9D7198();
      v60[0] = v7;
      *v3 = 136315138;
      v8 = sub_22C9D6670(v6);
      if (v9)
      {
        v10 = v9;
      }

      else
      {
        v8 = 0x6E776F6E6B6E55;
        v10 = 0xE700000000000000;
      }

      v11 = sub_22C9D60B0(v8, v10, v60);

      *(v3 + 1) = v11;
      sub_22C9D6FA4(&dword_22C9CA000, v12, v13, "INIntent: Intent execute error for %s");
      sub_22C9D04CC(v7);
      sub_22C9D70C0();
      sub_22C9D6FC4();
    }

    v14 = [v4 errorCode];
    v15 = sub_22C9D661C();
    v16 = sub_22C9D726C(&type metadata for MSSuggestionError, v15);
    *v17 = v14;
    *(v17 + 8) = 0;
    swift_willThrow();

LABEL_21:
    swift_unknownObjectRelease();

    goto LABEL_22;
  }

  if (!v1 || (objc_opt_self(), (v18 = swift_dynamicCastObjCClass()) == 0))
  {
    v26 = *(v0 + 320);
    v27 = sub_22CA20AF0();
    sub_22CA21000();

    if (sub_22C9D72E0())
    {
      v28 = *(v0 + 336);
      sub_22C9D7164();
      sub_22C9D7198();
      sub_22C9D71C0();
      *v26 = 136315138;
      v29 = sub_22C9D6670(v28);
      if (v30)
      {
        v31 = v30;
      }

      else
      {
        v29 = 0x6E776F6E6B6E55;
        v31 = 0xE700000000000000;
      }

      v32 = sub_22C9D60B0(v29, v31, v60);

      *(v26 + 1) = v32;
      sub_22C9D6FA4(&dword_22C9CA000, v33, v34, "INIntent: Intent execute-response error for %s");
      sub_22C9D6F60();
      sub_22C9D6FC4();
    }

    v35 = sub_22C9D661C();
    v16 = sub_22C9D726C(&type metadata for MSSuggestionError, v35);
    sub_22C9D7344(v36, 1);
    goto LABEL_21;
  }

  v19 = v18;
  v20 = v1;
  if ([v19 code] != 1 && objc_msgSend(v19, sel_code) != 4)
  {
    v48 = *(v0 + 320);
    v49 = sub_22CA20AF0();
    sub_22CA21000();

    if (sub_22C9D72E0())
    {
      v50 = *(v0 + 336);
      sub_22C9D7164();
      sub_22C9D7198();
      sub_22C9D71C0();
      *v48 = 136315138;
      v51 = sub_22C9D6670(v50);
      if (v52)
      {
        v53 = v52;
      }

      else
      {
        v51 = 0x6E776F6E6B6E55;
        v53 = 0xE700000000000000;
      }

      v54 = sub_22C9D60B0(v51, v53, v60);

      *(v48 + 1) = v54;
      sub_22C9D6FA4(&dword_22C9CA000, v55, v56, "INIntent: Intent execute-not ready error %s");
      sub_22C9D6F60();
      sub_22C9D6FC4();
    }

    v57 = sub_22C9D661C();
    v16 = sub_22C9D726C(&type metadata for MSSuggestionError, v57);
    *v58 = 2;
    *(v58 + 8) = 2;
    swift_willThrow();

    swift_unknownObjectRelease();
LABEL_22:
    [*(v0 + 344) reset];
    v37 = v16;
    v38 = sub_22CA20AF0();
    v39 = sub_22CA21000();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = sub_22C9D7164();
      sub_22C9D71CC();
      sub_22C9D71C0();
      *v40 = 136315138;
      swift_getErrorValue();
      v41 = sub_22CA213D0();
      v43 = sub_22C9D60B0(v41, v42, v60);

      *(v40 + 4) = v43;
      _os_log_impl(&dword_22C9CA000, v38, v39, "INIntent execution failed with error: %s", v40, 0xCu);
      sub_22C9D6F60();
      sub_22C9D6FFC();
    }

    v44 = *(v0 + 344);
    v45 = *(v0 + 320);
    swift_willThrow();

    sub_22C9D7050();
    sub_22C9D722C();

    __asm { BRAA            X1, X16 }
  }

  v21 = *(v0 + 360);
  v22 = *(v0 + 368);
  *(v0 + 144) = v0;
  *(v0 + 184) = v0 + 296;
  *(v0 + 152) = sub_22C9D3804;
  v23 = swift_continuation_init();
  *(v0 + 264) = v22;
  *(v0 + 208) = MEMORY[0x277D85DD0];
  *(v0 + 216) = 1107296256;
  *(v0 + 224) = sub_22C9D3E28;
  *(v0 + 232) = &unk_283FCD238;
  *(v0 + 240) = v23;
  [v21 handleIntentWithCompletionHandler_];
  sub_22C9D722C();

  return MEMORY[0x282200938](v24);
}

uint64_t sub_22C9D3804()
{
  sub_22C9D6F3C();
  v1 = *v0;
  sub_22C9D6EA4();
  *v2 = v1;
  sub_22C9D70D8();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_22C9D38D4()
{
  v2 = *(v0 + 296);
  v1 = *(v0 + 304);

  v3 = v2;
  v4 = sub_22CA20AF0();
  v5 = sub_22CA21010();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = sub_22C9D7164();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    *(v6 + 4) = v3;
    *v7 = v2;
    v8 = v3;
    _os_log_impl(&dword_22C9CA000, v4, v5, "INIntent execution succeeded with response: %@", v6, 0xCu);
    sub_22C9D6C44(v7, &unk_27D9E5090, &qword_22CA22E00);
    sub_22C9D6FE0();
    sub_22C9D6FFC();

    swift_unknownObjectRelease();
    v4 = *(v0 + 344);
  }

  else
  {
    swift_unknownObjectRelease();

    v8 = *(v0 + 344);
  }

  v9 = *(v0 + 376);

  sub_22C9D7050();

  return v10();
}

uint64_t sub_22C9D3A3C(uint64_t a1)
{
  v15 = v1;
  swift_willThrow();
  v2 = *(v1 + 352);
  [*(v1 + 344) reset];
  v3 = v2;
  v4 = sub_22CA20AF0();
  v5 = sub_22CA21000();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = sub_22C9D7164();
    sub_22C9D71CC();
    sub_22C9D71C0();
    *v6 = 136315138;
    swift_getErrorValue();
    v7 = sub_22CA213D0();
    v9 = sub_22C9D60B0(v7, v8, v14);

    *(v6 + 4) = v9;
    _os_log_impl(&dword_22C9CA000, v4, v5, "INIntent execution failed with error: %s", v6, 0xCu);
    sub_22C9D6F60();
    sub_22C9D6FFC();
  }

  v10 = *(v1 + 344);
  v11 = *(v1 + 320);
  swift_willThrow();

  sub_22C9D7050();

  return v12();
}

void sub_22C9D3B94(void *a1)
{
  if (qword_27D9E4730 != -1)
  {
    swift_once();
  }

  v2 = sub_22CA20B10();
  sub_22C9D0494(v2, &unk_27D9E8080);
  v3 = a1;
  oslog = sub_22CA20AF0();
  v4 = sub_22CA21000();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136315138;
    swift_getErrorValue();
    v7 = sub_22CA213D0();
    v9 = sub_22C9D60B0(v7, v8, &v11);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_22C9CA000, oslog, v4, "Extension connection interrupted: %s", v5, 0xCu);
    sub_22C9D04CC(v6);
    MEMORY[0x2318BB680](v6, -1, -1);
    MEMORY[0x2318BB680](v5, -1, -1);
  }

  else
  {
  }
}

void sub_22C9D3D2C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t *sub_22C9D3D94(uint64_t a1, uint64_t a2, void *a3)
{
  result = sub_22C9D05CC((a1 + 32), *(a1 + 56));
  v6 = *result;
  if (a3)
  {
    v7 = a3;

    return sub_22CA11158();
  }

  else if (a2)
  {
    swift_unknownObjectRetain();

    return sub_22CA0EBB8(v6, a2);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22C9D3E28(uint64_t a1, void *a2, void *a3)
{
  v5 = *sub_22C9D05CC((a1 + 32), *(a1 + 56));
  v6 = a2;
  v7 = a3;

  return sub_22C9D3E88(v5, a2, a3);
}

uint64_t sub_22C9D3E88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(a1 + 64) + 40);
  *v3 = a2;
  v3[1] = a3;
  return MEMORY[0x282200948]();
}

uint64_t sub_22C9D3EC8(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_22C9D3F70;

  return INIntent.execute()();
}

uint64_t sub_22C9D3F70(uint64_t a1)
{
  v3 = v1;
  v4 = *v2;
  v5 = *v2;
  sub_22C9D6EA4();
  *v6 = v5;
  v7 = *(v4 + 16);
  v8 = *v2;
  *v6 = *v2;

  v9 = *(v4 + 24);
  if (v3)
  {
    v10 = sub_22CA20920();

    (*(v9 + 16))(v9, v10);
  }

  else
  {
    (*(v9 + 16))(v9, 0);
  }

  _Block_release(*(v5 + 24));
  v11 = *(v8 + 8);

  return v11();
}

uint64_t LNAction.execute()()
{
  sub_22C9D6F3C();
  *(v1 + 64) = v0;
  sub_22C9D70D8();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_22C9D4174()
{
  v86 = v0;
  v85[1] = *MEMORY[0x277D85DE8];
  if (qword_27D9E4730 != -1)
  {
    sub_22C9D6EB4(&qword_27D9E4730);
  }

  v1 = v0[8];
  v2 = sub_22CA20B10();
  v0[9] = sub_22C9D0494(v2, &unk_27D9E8080);
  v3 = v1;
  v4 = sub_22CA20AF0();
  v5 = sub_22CA21010();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[8];
    v7 = sub_22C9D7164();
    v8 = sub_22C9D71CC();
    v85[0] = v8;
    *v7 = 136315138;
    v9 = [v6 identifier];
    v10 = sub_22CA20E20();
    v12 = v11;

    v13 = sub_22C9D60B0(v10, v12, v85);

    *(v7 + 4) = v13;
    sub_22C9D7144(&dword_22C9CA000, v14, v15, "Executing App Intent: (id: %s");
    sub_22C9D04CC(v8);
    sub_22C9D6FFC();
    sub_22C9D70C0();
  }

  v16 = v0[8];
  sub_22C9D4DF8();
  if ((v18 & 0x2000000000000000) != 0)
  {
    v19 = HIBYTE(v18) & 0xF;
  }

  else
  {
    v19 = v17 & 0xFFFFFFFFFFFFLL;
  }

  v20 = v16;
  v21 = sub_22CA20AF0();
  v22 = v0[8];
  if (!v19)
  {
    v59 = sub_22CA21000();

    if (!os_log_type_enabled(v21, v59))
    {

      goto LABEL_29;
    }

    v60 = v0[8];
    v61 = swift_slowAlloc();
    swift_slowAlloc();
    sub_22C9D71C0();
    *v61 = 136315394;
    v62 = [v60 identifier];
    v63 = sub_22CA20E20();
    v65 = v64;

    v66 = sub_22C9D60B0(v63, v65, v85);

    *(v61 + 4) = v66;
    *(v61 + 12) = 2080;
    v67 = sub_22C9D709C();
    v70 = sub_22C9D60B0(v67, v68, v69);

    *(v61 + 14) = v70;
    sub_22C9D7364(&dword_22C9CA000, v71, v72, "Could not executing App Intent: %s. Invalid bundleID: %s");
    swift_arrayDestroy();
    sub_22C9D6FE0();
    sub_22C9D6FC4();
    goto LABEL_27;
  }

  v23 = sub_22CA21010();

  if (os_log_type_enabled(v21, v23))
  {
    v24 = v0[8];
    v25 = swift_slowAlloc();
    swift_slowAlloc();
    sub_22C9D71C0();
    *v25 = 136315394;
    v26 = [v24 identifier];
    v27 = sub_22CA20E20();
    v29 = v28;

    v30 = sub_22C9D60B0(v27, v29, v85);

    *(v25 + 4) = v30;
    *(v25 + 12) = 2080;
    v31 = sub_22C9D709C();
    *(v25 + 14) = sub_22C9D60B0(v31, v32, v33);
    sub_22C9D7364(&dword_22C9CA000, v34, v35, "Executing App Intent: %s using bundleID: %s");
    swift_arrayDestroy();
    sub_22C9D6FE0();
    sub_22C9D6FC4();
  }

  v36 = v0[8];
  v37 = [objc_allocWithZone(MEMORY[0x277D23C38]) init];
  sub_22C9D709C();
  v38 = sub_22CA20E10();

  v39 = [v36 identifier];
  if (!v39)
  {
    sub_22CA20E20();
    v39 = sub_22CA20E10();
  }

  v0[6] = 0;
  v40 = [v37 actionForBundleIdentifier:v38 andActionIdentifier:v39 error:v0 + 6];
  v0[10] = v40;

  v41 = v0[6];
  if (!v40)
  {
    v73 = v41;
    v74 = sub_22CA20930();

    swift_willThrow();
LABEL_25:
    v76 = v74;
    v21 = sub_22CA20AF0();
    sub_22CA21000();

    if (!sub_22C9D72E0())
    {

LABEL_29:
      sub_22C9D7050();
      sub_22C9D722C();

      __asm { BRAA            X1, X16 }
    }

    sub_22C9D7164();
    v77 = sub_22C9D7284();
    *v37 = 138412290;
    v78 = v74;
    v79 = _swift_stdlib_bridgeErrorToNSError();
    *(v37 + 1) = v79;
    *v77 = v79;
    sub_22C9D6FA4(&dword_22C9CA000, v80, v81, "Error encountered while executing app intent: %@");
    sub_22C9D6C44(v77, &unk_27D9E5090, &qword_22CA22E00);
    sub_22C9D6FFC();
    sub_22C9D6FC4();

LABEL_27:
    goto LABEL_29;
  }

  v42 = objc_allocWithZone(MEMORY[0x277D23BC8]);
  v43 = v41;
  v44 = [v42 init];
  v0[11] = v44;
  v37 = [objc_opt_self() policyWithActionMetadata:v40 signals:v44];
  v0[12] = v37;
  v0[7] = 0;
  v45 = [v37 connectionWithError_];
  v0[13] = v45;
  v46 = v0[7];
  if (!v45)
  {
    v75 = v46;
    v74 = sub_22CA20930();

    swift_willThrow();
    goto LABEL_25;
  }

  v47 = v45;
  v48 = v0[8];
  v49 = v46;
  v50 = [v48 parameters];
  if (!v50)
  {
    v50 = sub_22C9D0434(0, &qword_28143A0C0, 0x277D238D8);
    sub_22CA20EC0();
    sub_22CA20EB0();
    sub_22C9D7254();
  }

  v51 = [v37 actionWithParameters_];
  v0[14] = v51;

  v52 = [objc_allocWithZone(type metadata accessor for MSMediaIntentExecutor(0)) init];
  v0[15] = v52;
  v53 = [objc_allocWithZone(MEMORY[0x277D23AF8]) init];
  v54 = [v47 executorForAction:v51 options:v53 delegate:v52];
  v0[16] = v54;

  v55 = swift_task_alloc();
  v0[17] = v55;
  *(v55 + 16) = v52;
  *(v55 + 24) = v54;
  v56 = swift_task_alloc();
  v0[18] = v56;
  sub_22C9D02E4(&unk_27D9E4D60, &unk_22CA22BE0);
  *v56 = v0;
  v56[1] = sub_22C9D493C;
  sub_22C9D70D8();
  sub_22C9D722C();

  return MEMORY[0x2822008A0](v57);
}

uint64_t sub_22C9D493C()
{
  sub_22C9D7018();
  v2 = *v1;
  sub_22C9D6EA4();
  *v3 = v2;
  *(v2 + 152) = v0;

  if (!v0)
  {
    sub_22C9D6C44(v2 + 16, &unk_27D9E4D60, &unk_22CA22BE0);
  }

  sub_22C9D70D8();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_22C9D4A98()
{
  v30 = v0;
  v29[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 64);
  v2 = sub_22CA20AF0();
  v3 = sub_22CA21010();

  v4 = os_log_type_enabled(v2, v3);
  v6 = *(v0 + 120);
  v5 = *(v0 + 128);
  v7 = *(v0 + 104);
  v8 = *(v0 + 112);
  v10 = *(v0 + 88);
  v9 = *(v0 + 96);
  v11 = *(v0 + 80);
  if (v4)
  {
    v27 = *(v0 + 104);
    v12 = *(v0 + 64);
    v28 = *(v0 + 80);
    v13 = sub_22C9D7164();
    v26 = v9;
    v14 = sub_22C9D71CC();
    v29[0] = v14;
    *v13 = 136315138;
    v15 = [v12 identifier];
    v24 = v5;
    v25 = v8;
    v16 = sub_22CA20E20();
    v18 = v17;

    v19 = sub_22C9D60B0(v16, v18, v29);

    *(v13 + 4) = v19;
    sub_22C9D7144(&dword_22C9CA000, v20, v21, "Executed App Intent: (id: %s");
    sub_22C9D04CC(v14);
    sub_22C9D6FC4();
    sub_22C9D70C0();
  }

  else
  {
  }

  sub_22C9D7050();

  return v22();
}

uint64_t sub_22C9D4C78()
{
  v1 = *(v0 + 128);
  v3 = *(v0 + 112);
  v2 = *(v0 + 120);
  v5 = *(v0 + 96);
  v4 = *(v0 + 104);
  v6 = *(v0 + 80);

  v7 = *(v0 + 152);
  v8 = v7;
  v9 = sub_22CA20AF0();
  sub_22CA21000();

  if (sub_22C9D72E0())
  {
    sub_22C9D7164();
    v10 = sub_22C9D7284();
    *v3 = 138412290;
    v11 = v7;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 1) = v12;
    *v10 = v12;
    sub_22C9D6FA4(&dword_22C9CA000, v13, v14, "Error encountered while executing app intent: %@");
    sub_22C9D6C44(v10, &unk_27D9E5090, &qword_22CA22E00);
    sub_22C9D6FFC();
    sub_22C9D6FC4();
  }

  else
  {
  }

  sub_22C9D7050();

  return v15();
}

void sub_22C9D4DF8()
{
  v1 = [v0 parameters];
  sub_22C9D0434(0, &qword_28143A0C0, 0x277D238D8);
  v2 = sub_22CA20EC0();

  v3 = sub_22C9E6DA0();
  if (!v3)
  {
LABEL_23:

    return;
  }

  v4 = v3;
  v5 = 0;
  while (1)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x2318BAD10](v5, v2);
    }

    else
    {
      if (v5 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_26;
      }

      v6 = *(v2 + 8 * v5 + 32);
    }

    v7 = v6;
    v8 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    v9 = [v6 identifier];
    v10 = sub_22CA20E20();
    v12 = v11;

    if (v10 == 0x65646F73697065 && v12 == 0xE700000000000000)
    {
      goto LABEL_19;
    }

    v14 = sub_22CA21360();

    if ((v14 & 1) == 0)
    {
      v15 = [v7 identifier];
      v16 = sub_22CA20E20();
      v18 = v17;

      if (v16 != 0x746E456F69647561 || v18 != 0xEB00000000797469)
      {
        v20 = sub_22CA21360();

        if ((v20 & 1) == 0)
        {
          goto LABEL_22;
        }

        goto LABEL_20;
      }

LABEL_19:
    }

LABEL_20:
    v21 = [v7 value];
    if (v21)
    {
      v22 = v21;
      v23 = [v21 valueType];

      if (v23)
      {

        v24 = [v23 description];
        sub_22CA20E20();

        sub_22C9D6B84();
        sub_22CA21120();

        return;
      }
    }

LABEL_22:

    ++v5;
    if (v8 == v4)
    {
      goto LABEL_23;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
}

id sub_22C9D5114(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_22C9D02E4(&qword_27D9E4BC0, &qword_22CA22E50);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v12 - v7;
  v9 = sub_22C9D02E4(&qword_27D9E4BB8, &qword_22CA22E48);
  (*(*(v9 - 8) + 16))(v8, a1, v9);
  sub_22C9D0B98(v8, 0, 1, v9);
  v10 = OBJC_IVAR____TtC14MediaSuggester21MSMediaIntentExecutor_continuation;
  swift_beginAccess();
  sub_22C9D6B14(v8, a2 + v10);
  swift_endAccess();
  return [a3 perform];
}

uint64_t sub_22C9D5260(void *a1, int a2, void *aBlock, uint64_t a4, uint64_t a5)
{
  v7 = _Block_copy(aBlock);
  sub_22C9D71E4();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = a1;
  v9 = a1;

  return sub_22CA0EBDC(a5, v8);
}

uint64_t sub_22C9D52C8(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_22C9D6E58;

  return LNAction.execute()();
}

uint64_t sub_22C9D5380()
{
  sub_22C9D02E4(&qword_27D9E4BB8, &qword_22CA22E48);
  sub_22C9D6ED4();
  sub_22C9D7024();
  MEMORY[0x28223BE20](v1);
  sub_22C9D707C();
  v2 = sub_22C9D02E4(&qword_27D9E4BC0, &qword_22CA22E50);
  sub_22C9D71B4(v2);
  sub_22C9D7024();
  MEMORY[0x28223BE20](v3);
  sub_22C9D71F4();
  sub_22C9D7104();
  sub_22C9D7124();
  if (sub_22C9D70E4())
  {
    return sub_22C9D6C44(v0, &qword_27D9E4BC0, &qword_22CA22E50);
  }

  v5 = sub_22C9D6F48();
  v6(v5);
  sub_22C9D6C44(v0, &qword_27D9E4BC0, &qword_22CA22E50);
  v7 = sub_22C9D68D8();
  v8 = sub_22C9D726C(&type metadata for MSMediaIntentExecutor.MSActionExecutorError, v7);
  sub_22C9D6EEC(v8, v9, 34);
  v10 = sub_22C9D709C();
  return v11(v10);
}

uint64_t sub_22C9D5570()
{
  sub_22C9D02E4(&qword_27D9E4BB8, &qword_22CA22E48);
  sub_22C9D6ED4();
  sub_22C9D7024();
  MEMORY[0x28223BE20](v1);
  sub_22C9D707C();
  v2 = sub_22C9D02E4(&qword_27D9E4BC0, &qword_22CA22E50);
  sub_22C9D71B4(v2);
  sub_22C9D7024();
  MEMORY[0x28223BE20](v3);
  sub_22C9D71F4();
  sub_22C9D7104();
  sub_22C9D7124();
  if (sub_22C9D70E4())
  {
    return sub_22C9D6C44(v0, &qword_27D9E4BC0, &qword_22CA22E50);
  }

  v5 = sub_22C9D6F48();
  v6(v5);
  sub_22C9D6C44(v0, &qword_27D9E4BC0, &qword_22CA22E50);
  v7 = sub_22C9D68D8();
  v8 = sub_22C9D726C(&type metadata for MSMediaIntentExecutor.MSActionExecutorError, v7);
  sub_22C9D6EEC(v8, v9, 36);
  v10 = sub_22C9D709C();
  return v11(v10);
}

uint64_t sub_22C9D5760()
{
  sub_22C9D02E4(&qword_27D9E4BB8, &qword_22CA22E48);
  sub_22C9D6ED4();
  sub_22C9D7024();
  MEMORY[0x28223BE20](v1);
  sub_22C9D707C();
  v2 = sub_22C9D02E4(&qword_27D9E4BC0, &qword_22CA22E50);
  sub_22C9D71B4(v2);
  sub_22C9D7024();
  MEMORY[0x28223BE20](v3);
  sub_22C9D71F4();
  sub_22C9D7104();
  sub_22C9D7124();
  if (sub_22C9D70E4())
  {
    return sub_22C9D6C44(v0, &qword_27D9E4BC0, &qword_22CA22E50);
  }

  v5 = sub_22C9D6F48();
  v6(v5);
  sub_22C9D6C44(v0, &qword_27D9E4BC0, &qword_22CA22E50);
  v7 = sub_22C9D68D8();
  v8 = sub_22C9D726C(&type metadata for MSMediaIntentExecutor.MSActionExecutorError, v7);
  sub_22C9D6EEC(v8, v9, 27);
  v10 = sub_22C9D709C();
  return v11(v10);
}

uint64_t sub_22C9D5950(uint64_t a1, void *a2)
{
  sub_22C9D02E4(&qword_27D9E4BB8, &qword_22CA22E48);
  sub_22C9D6ED4();
  v7 = v6;
  sub_22C9D7024();
  MEMORY[0x28223BE20](v8);
  sub_22C9D707C();
  v9 = sub_22C9D02E4(&qword_27D9E4BC0, &qword_22CA22E50);
  sub_22C9D71B4(v9);
  sub_22C9D7024();
  MEMORY[0x28223BE20](v10);
  v12 = v20 - v11;
  v13 = OBJC_IVAR____TtC14MediaSuggester21MSMediaIntentExecutor_continuation;
  swift_beginAccess();
  sub_22C9D6BDC(v3 + v13, v12, &qword_27D9E4BC0, &qword_22CA22E50);
  if (sub_22C9D68B0(v12, 1, v2))
  {
    return sub_22C9D6C44(v12, &qword_27D9E4BC0, &qword_22CA22E50);
  }

  (*(v7 + 16))(v4, v12, v2);
  sub_22C9D6C44(v12, &qword_27D9E4BC0, &qword_22CA22E50);
  if (a2)
  {
    v15 = sub_22C9D0434(0, &qword_27D9E4BC8, 0x277D23CA8);
    v16 = a2;
  }

  else
  {
    v16 = 0;
    v15 = 0;
    v20[2] = 0;
    v20[3] = 0;
  }

  v20[1] = v16;
  v20[4] = v15;
  v17 = a2;
  sub_22CA20F30();
  v18 = sub_22C9D709C();
  return v19(v18);
}

id sub_22C9D5BCC()
{
  v1 = OBJC_IVAR____TtC14MediaSuggester21MSMediaIntentExecutor_continuation;
  v2 = sub_22C9D02E4(&qword_27D9E4BB8, &qword_22CA22E48);
  sub_22C9D0B98(v0 + v1, 1, 1, v2);
  v4.receiver = v0;
  v4.super_class = type metadata accessor for MSMediaIntentExecutor(0);
  return objc_msgSendSuper2(&v4, sel_init);
}

id sub_22C9D5C60()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MSMediaIntentExecutor(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_22C9D5CCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_22CA20E10();

  v6 = [v3 initWithIntent:a1 bundleID:v5];
  swift_unknownObjectRelease();

  return v6;
}

uint64_t sub_22C9D5D50()
{
  sub_22C9D6F3C();
  v0 = swift_task_alloc();
  v1 = sub_22C9D70A8(v0);
  *v1 = v2;
  v1[1] = sub_22C9D0F54;
  v3 = sub_22C9D7248();

  return sub_22C9D1794(v3);
}

uint64_t sub_22C9D5DD8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_22C9D5E20()
{
  sub_22C9D731C();
  v0 = swift_task_alloc();
  v1 = sub_22C9D705C(v0);
  *v1 = v2;
  v1[1] = sub_22C9D6E54;
  sub_22C9D708C();
  sub_22C9D7330();

  return sub_22C9D1F78(v3, v4, v5, v6, v7, v8);
}

uint64_t sub_22C9D5ED4(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_22C9D5FCC;

  return v6(a1);
}

uint64_t sub_22C9D5FCC()
{
  sub_22C9D6F3C();
  sub_22C9D70B4();
  v1 = *v0;
  sub_22C9D6EA4();
  *v2 = v1;

  sub_22C9D7050();

  return v3();
}

uint64_t sub_22C9D60B0(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  sub_22C9D70D8();
  v9 = sub_22C9D6170(v6, v7, v8, 1, a1, a2);
  v10 = v14[0];
  if (v9)
  {
    v11 = v9;

    ObjectType = swift_getObjectType();
    v14[0] = v11;
  }

  else
  {
    ObjectType = MEMORY[0x277D840A0];
    v14[0] = a1;
    v14[1] = a2;
  }

  v12 = *a3;
  if (*a3)
  {
    sub_22C9D66FC(v14, *a3);
    *a3 = v12 + 32;
  }

  sub_22C9D04CC(v14);
  return v10;
}

unint64_t sub_22C9D6170(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_22C9D6270(a5, a6);
    *a1 = v9;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    result = sub_22CA211E0();
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_22C9D6270(uint64_t a1, unint64_t a2)
{
  v3 = sub_22C9D62BC(a1, a2);
  sub_22C9D63D4(&unk_283FCC7D0);
  return v3;
}

uint64_t sub_22C9D62BC(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_22CA20E80())
  {
    result = sub_22C9D64B8(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_22CA21190();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = (result + 32);
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = sub_22CA211E0();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = (v7 + 32);
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_22C9D63D4(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v7 = v4 + v2;
    }

    else
    {
      v7 = v4;
    }

    result = sub_22C9D6528(result, v7, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_22C9D64B8(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  sub_22C9D02E4(&qword_27D9E4BE8, &qword_22CA22E90);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_22C9D6528(char *result, int64_t a2, char a3, char *a4)
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
    sub_22C9D02E4(&qword_27D9E4BE8, &qword_22CA22E90);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

unint64_t sub_22C9D661C()
{
  result = qword_27D9E4A40;
  if (!qword_27D9E4A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9E4A40);
  }

  return result;
}

uint64_t sub_22C9D6670(void *a1)
{
  v1 = [a1 identifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_22CA20E20();

  return v3;
}

uint64_t sub_22C9D66D4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_22C9D66FC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t type metadata accessor for MSMediaIntentExecutor(uint64_t a1)
{
  result = qword_27D9E4BA0;
  if (!qword_27D9E4BA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_22C9D67BC(uint64_t a1)
{
  sub_22C9D684C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_22C9D684C(uint64_t a1)
{
  if (!qword_27D9E4BB0)
  {
    sub_22C9D0584(&qword_27D9E4BB8, &qword_22CA22E48);
    v1 = sub_22CA21110();
    if (!v2)
    {
      atomic_store(v1, &qword_27D9E4BB0);
    }
  }
}

unint64_t sub_22C9D68D8()
{
  result = qword_27D9E4BD0;
  if (!qword_27D9E4BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9E4BD0);
  }

  return result;
}

uint64_t sub_22C9D692C()
{
  sub_22C9D7018();
  v0 = swift_task_alloc();
  v1 = sub_22C9D70A8(v0);
  *v1 = v2;
  v3 = sub_22C9D717C(v1);

  return v4(v3);
}

uint64_t sub_22C9D69BC()
{
  _Block_release(*(v0 + 16));

  v1 = sub_22C9D71E4();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_22C9D69F4()
{
  sub_22C9D7018();
  v0 = swift_task_alloc();
  v1 = sub_22C9D70A8(v0);
  *v1 = v2;
  v3 = sub_22C9D717C(v1);

  return v4(v3);
}

uint64_t sub_22C9D6A8C()
{
  sub_22C9D6F3C();
  v0 = swift_task_alloc();
  v1 = sub_22C9D70A8(v0);
  *v1 = v2;
  v1[1] = sub_22C9D6E54;
  v3 = sub_22C9D7248();

  return sub_22C9D0900(v3);
}

uint64_t sub_22C9D6B14(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C9D02E4(&qword_27D9E4BC0, &qword_22CA22E50);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_22C9D6B84()
{
  result = qword_27D9E4BE0;
  if (!qword_27D9E4BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9E4BE0);
  }

  return result;
}

uint64_t sub_22C9D6BDC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_22C9D02E4(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_22C9D6C44(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_22C9D02E4(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_22C9D6CA4()
{
  sub_22C9D7018();
  v0 = swift_task_alloc();
  v1 = sub_22C9D705C(v0);
  *v1 = v2;
  v1[1] = sub_22C9D6E54;
  v3 = sub_22C9D708C();

  return v4(v3);
}

uint64_t sub_22C9D6D48(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

__n128 sub_22C9D6D64(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_22C9D6D78(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 17))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 2)
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

uint64_t sub_22C9D6DB8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_22C9D6E00(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

void sub_22C9D6E6C()
{
  v1[12] = sub_22C9D0AF0;
  v1[13] = v0;
  v1[14] = v2;
}

uint64_t sub_22C9D6E84(uint64_t result)
{
  *(v1 + 136) = result;
  *(v1 + 80) = MEMORY[0x277D85DD0];
  return result;
}

uint64_t sub_22C9D6EB4(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_22C9D6EEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a2 = a3 & 0xFFFFFFFFFFFFLL | 0xD000000000000000;
  *(a2 + 8) = v5;
  *(a2 + 16) = v4;
  *(v6 - 96) = a1;

  return MEMORY[0x282200290](v6 - 96, v3);
}

uint64_t sub_22C9D6F18()
{

  return sub_22CA20E10();
}

void sub_22C9D6F60()
{
  sub_22C9D04CC(v0);

  JUMPOUT(0x2318BB680);
}

void sub_22C9D6FA4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

void sub_22C9D6FC4()
{

  JUMPOUT(0x2318BB680);
}

void sub_22C9D6FE0()
{

  JUMPOUT(0x2318BB680);
}

void sub_22C9D6FFC()
{

  JUMPOUT(0x2318BB680);
}

uint64_t sub_22C9D7030()
{

  return sub_22CA20E10();
}

void sub_22C9D70C0()
{

  JUMPOUT(0x2318BB680);
}

uint64_t sub_22C9D70E4()
{

  return sub_22C9D68B0(v1, 1, v0);
}

uint64_t sub_22C9D7104()
{

  return swift_beginAccess();
}

uint64_t sub_22C9D7124()
{

  return sub_22C9D6BDC(v0 + v4, v1, v2, v3);
}

void sub_22C9D7144(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 0xCu);
}

uint64_t sub_22C9D7164()
{

  return swift_slowAlloc();
}

uint64_t sub_22C9D7198()
{

  return swift_slowAlloc();
}

uint64_t sub_22C9D71CC()
{

  return swift_slowAlloc();
}

id sub_22C9D7204(uint64_t a1)
{

  return [v1 encodeObject:v2 forKey:a1];
}

uint64_t sub_22C9D726C(uint64_t a1, uint64_t a2)
{

  return swift_allocError();
}

uint64_t sub_22C9D7284()
{

  return swift_slowAlloc();
}

uint64_t sub_22C9D72A0()
{
  *(v1 + 24) = v0;

  return swift_continuation_init();
}

id sub_22C9D72BC(uint64_t a1, int a2, int a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{

  return [v10 (v12 + 3842)];
}

BOOL sub_22C9D72E0()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t sub_22C9D7344@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a2 = a3;
  *(a2 + 8) = 2;

  return swift_willThrow();
}

void sub_22C9D7364(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x16u);
}

id sub_22C9D7384(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

void *sub_22C9D739C()
{
  v2 = v0;
  v0[2] = 0;
  sub_22CA20CF0();
  swift_allocObject();
  v0[3] = sub_22CA20CE0();
  type metadata accessor for MSSuggestionPlaybackRewardFeatureStore();
  swift_allocObject();
  v0[9] = sub_22CA01FF0();
  sub_22C9D02E4(&qword_27D9E4C68, &qword_22CA23280);
  v3 = swift_allocObject();
  sub_22C9D86B0(v3, xmmword_22CA22F80);
  v4 = type metadata accessor for MSPlayMediaIntentWorkoutCandidatePipeline();
  sub_22C9D86D4(v4);

  v6 = sub_22C9E0854(v5);
  v3[3].n128_u64[1] = v1;
  v3[4].n128_u64[0] = sub_22C9D8658(&qword_27D9E4C70, 255, type metadata accessor for MSPlayMediaIntentWorkoutCandidatePipeline, &unk_22CA234E8);
  v3[2].n128_u64[0] = v6;
  v7 = type metadata accessor for MSAppIntentAudioPlaybackCandidatePipeline();
  sub_22C9D86D4(v7);

  v9 = sub_22CA14214(v8);
  v3[6].n128_u64[0] = v1;
  v3[6].n128_u64[1] = sub_22C9D8658(&qword_27D9E4C78, 255, type metadata accessor for MSAppIntentAudioPlaybackCandidatePipeline, &unk_22CA24F48);
  v3[4].n128_u64[1] = v9;
  v10 = type metadata accessor for MSSiriKitPlayMediaIntentCandidatePipeline();
  sub_22C9D86D4(v10);

  v12 = sub_22CA187F4(v11);
  v3[8].n128_u64[1] = v1;
  v3[9].n128_u64[0] = sub_22C9D8658(&qword_27D9E4C80, 255, type metadata accessor for MSSiriKitPlayMediaIntentCandidatePipeline, &unk_22CA25548);
  v3[7].n128_u64[0] = v12;
  v2[6] = v3;
  v13 = sub_22C9D02E4(&qword_27D9E4C88, &qword_22CA23288);
  v14 = sub_22C9D86BC(v13);
  sub_22C9D86B0(v14, xmmword_22CA22F90);
  v15 = type metadata accessor for MSSuggestionRewardScorerPipeline();
  swift_allocObject();
  v16 = sub_22CA0E6E8();
  v14[3].n128_u64[1] = v15;
  v14[4].n128_u64[0] = sub_22C9D8658(&qword_27D9E4C90, 255, type metadata accessor for MSSuggestionRewardScorerPipeline, &unk_22CA249F8);
  v14[2].n128_u64[0] = v16;
  v2[8] = v14;
  v17 = sub_22C9D02E4(&qword_27D9E4C98, &qword_22CA23290);
  v18 = sub_22C9D86BC(v17);
  sub_22C9D86B0(v18, xmmword_22CA22F90);
  v19 = type metadata accessor for MSSuggestionRewardRankingPipeline();
  swift_allocObject();
  v20 = sub_22CA114C8();
  v18[3].n128_u64[1] = v19;
  v18[4].n128_u64[0] = sub_22C9D8658(&qword_27D9E4CA0, 255, type metadata accessor for MSSuggestionRewardRankingPipeline, &unk_22CA24C98);
  v18[2].n128_u64[0] = v20;
  v2[7] = v18;
  sub_22CA211A0();
  MEMORY[0x2318BA9C0](0x696669746E656469, 0xEC000000203A7265);
  sub_22C9D8658(&qword_27D9E50C0, 255, MEMORY[0x277CE9B50], MEMORY[0x277CE9B08]);

  v21 = sub_22CA21340();
  MEMORY[0x2318BA9C0](v21);

  MEMORY[0x2318BA9C0](0xD000000000000017, 0x800000022CA265E0);
  v22 = v2[6];

  v23 = sub_22C9D02E4(&qword_27D9E4CA8, &qword_22CA23298);
  v24 = MEMORY[0x2318BAA20](v22, v23);
  v26 = v25;

  MEMORY[0x2318BA9C0](v24, v26);

  MEMORY[0x2318BA9C0](0xD000000000000015, 0x800000022CA26600);
  v27 = v2[7];

  v28 = sub_22C9D02E4(&unk_27D9E4CB0, &qword_22CA232A0);
  v29 = MEMORY[0x2318BAA20](v27, v28);
  v31 = v30;

  MEMORY[0x2318BA9C0](v29, v31);

  v2[4] = 0;
  v2[5] = 0xE000000000000000;
  v32 = [objc_opt_self() standardUserDefaults];
  v33 = sub_22CA20E10();
  LOBYTE(v31) = [v32 BOOLForKey_];

  *(v2 + 80) = v31;
  if (qword_28143A320 != -1)
  {
    swift_once();
  }

  v34 = sub_22CA20B10();
  sub_22C9D0494(v34, &unk_28143A4E0);

  v35 = sub_22CA20AF0();
  v36 = sub_22CA21010();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    *v37 = 67109120;
    *(v37 + 4) = *(v2 + 80);

    _os_log_impl(&dword_22C9CA000, v35, v36, "checkpointingEnabled is set to %{BOOL}d", v37, 8u);
    MEMORY[0x2318BB680](v37, -1, -1);
  }

  else
  {
  }

  return v2;
}

uint64_t sub_22C9D7A0C()
{
  v0 = sub_22C9D02E4(&qword_27D9E4C58, &qword_22CA23278);
  v1 = sub_22C9D86BC(v0);
  sub_22C9D86B0(v1, xmmword_22CA22F90);
  v2 = type metadata accessor for MSSuggestionContextFeatureProvider();
  swift_allocObject();
  sub_22C9EE934();
  v1[3].n128_u64[1] = v2;
  v3 = sub_22C9D8658(&qword_27D9E4C60, 255, type metadata accessor for MSSuggestionContextFeatureProvider, &unk_22CA23E00);
  return sub_22C9D86A0(v3);
}

uint64_t sub_22C9D7AC0()
{
  v0 = sub_22C9D02E4(&qword_27D9E4C48, qword_22CA23238);
  v1 = sub_22C9D86BC(v0);
  *(v1 + 16) = xmmword_22CA22F90;
  v2 = type metadata accessor for MSBatchCandidateFeatureProvider();
  swift_allocObject();

  sub_22CA16A80(v3);
  *(v1 + 56) = v2;
  v4 = sub_22C9D8658(&qword_27D9E4C50, 255, type metadata accessor for MSBatchCandidateFeatureProvider, &unk_22CA252B8);
  return sub_22C9D86A0(v4);
}

uint64_t sub_22C9D7B80()
{
  v0 = sub_22C9D02E4(&qword_27D9E4C18, &qword_22CA231C8);
  v1 = sub_22C9D86BC(v0);
  sub_22C9D86B0(v1, xmmword_22CA22F90);
  v2 = type metadata accessor for MSDropDuplicateSuggestions();
  swift_allocObject();
  sub_22C9ECBB8();
  v1[3].n128_u64[1] = v2;
  v3 = sub_22C9D8658(&qword_27D9E4C40, 255, type metadata accessor for MSDropDuplicateSuggestions, &unk_22CA23C60);
  return sub_22C9D86A0(v3);
}

uint64_t sub_22C9D7C2C(void *a1)
{
  v2 = sub_22C9D02E4(&qword_27D9E4C18, &qword_22CA231C8);
  v3 = sub_22C9D86BC(v2);
  *(v3 + 16) = xmmword_22CA22F90;
  [a1 maxSuggestions];
  v4 = sub_22C9D02E4(&qword_27D9E4C20, &unk_22CA231D0);
  swift_allocObject();
  v5 = sub_22CA20CC0();
  *(v3 + 56) = v4;
  *(v3 + 64) = sub_22C9D85A0();
  *(v3 + 32) = v5;
  return v3;
}

uint64_t sub_22C9D7CFC()
{
  type metadata accessor for MSSuggesterUtils();
  sub_22C9D02E4(&qword_27D9E50A0, &unk_22CA24AC0);
  sub_22CA20B90();
  v0 = [v4 suggestionSource];

  sub_22CA16288(v0);
  sub_22C9D02E4(&qword_27D9E4C30, qword_22CA231F0);
  *(swift_allocObject() + 16) = xmmword_22CA22FA0;
  sub_22CA20B90();
  v1 = [v3 bundleID];

  sub_22CA20E20();
  sub_22CA21150();
  sub_22C9D8604();
  sub_22CA21150();
  return sub_22CA20BB0();
}

uint64_t sub_22C9D8020(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR___MSSuggesterRequestOptions_requestID);

  return v1;
}

void *sub_22C9D8078()
{

  return v0;
}

uint64_t sub_22C9D80C8()
{
  sub_22C9D8078();

  return MEMORY[0x2821FE8D8](v0, 81, 7);
}

uint64_t sub_22C9D8234(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = type metadata accessor for MSSuggestionsWorkoutRecommendationPipeline();
  v7 = sub_22C9D8658(&qword_27D9E4C10, v6, type metadata accessor for MSSuggestionsWorkoutRecommendationPipeline, &unk_22CA23110);
  *v4 = v2;
  v4[1] = sub_22C9D8320;

  return MEMORY[0x28213B5F0](a2, v5, v7);
}

uint64_t sub_22C9D8320(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v6 = *(v5 + 8);

  return v6();
}

uint64_t sub_22C9D844C()
{
  v1 = *(*v0 + 32);

  return v1;
}

unint64_t sub_22C9D85A0()
{
  result = qword_27D9E4C28;
  if (!qword_27D9E4C28)
  {
    sub_22C9D0584(&qword_27D9E4C20, &unk_22CA231D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9E4C28);
  }

  return result;
}

unint64_t sub_22C9D8604()
{
  result = qword_27D9E4C38;
  if (!qword_27D9E4C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9E4C38);
  }

  return result;
}

uint64_t sub_22C9D8658(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_22C9D86A0(uint64_t a1)
{
  *(v1 + 64) = a1;
  *(v1 + 32) = v2;
  return v1;
}

uint64_t sub_22C9D86BC(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t sub_22C9D86D4(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t sub_22C9D87A0()
{
  v1 = *(v0 + OBJC_IVAR___MSSuggesterRequestOptions_bundleId);

  return v1;
}

uint64_t sub_22C9D884C(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR___MSSuggesterRequestOptions_bundleId);
  *v3 = a1;
  v3[1] = a2;
  return sub_22C9D06B4();
}

id MSSuggesterRequestOptions.init(maxSuggestions:bundleId:workoutType:seedSuggestions:allowedBundleIdentifiers:)()
{
  sub_22C9DAFC8();
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_22CA20E10();

  type metadata accessor for MSSuggestion(0);
  v4 = sub_22CA20EB0();

  v5 = sub_22CA20EB0();

  v6 = [v2 initWithMaxSuggestions:v1 bundleId:v3 workoutType:v0 seedSuggestions:v4 allowedBundleIdentifiers:v5];

  return v6;
}

void MSSuggesterRequestOptions.init(maxSuggestions:bundleId:workoutType:seedSuggestions:allowedBundleIdentifiers:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_22C9DAEF8();
  a21 = v23;
  a22 = v24;
  v26 = v25;
  v28 = v27;
  v29 = sub_22CA209F0();
  sub_22C9DAE90();
  v31 = v30;
  MEMORY[0x28223BE20](v32);
  v34 = &a9 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_22CA20E10();

  type metadata accessor for MSSuggestion(0);
  v36 = sub_22CA20EB0();

  v37 = sub_22CA20EB0();

  sub_22CA209E0();
  sub_22CA20990();
  v39 = v38;
  (*(v31 + 8))(v34, v29);
  LODWORD(v40) = 2;
  [v22 initWithMaxSuggestions:v28 bundleId:v35 workoutType:v26 seedSuggestions:v36 allowedBundleIdentifiers:v37 requestDate:1 suggestionType:v39 suggestionSourceType:v40];

  sub_22C9DAF14();
}

id MSSuggesterRequestOptions.init(maxSuggestions:bundleId:workoutType:seedSuggestions:allowedBundleIdentifiers:requestDate:suggestionType:)()
{
  sub_22C9DAED4();
  v1 = v0;
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_22CA20E10();

  type metadata accessor for MSSuggestion(0);
  v4 = sub_22CA20EB0();

  v5 = sub_22CA20EB0();

  v6 = sub_22C9DB018(v2, sel_initWithMaxSuggestions_bundleId_workoutType_seedSuggestions_allowedBundleIdentifiers_requestDate_suggestionType_, v1, v3);

  return v6;
}

{
  sub_22C9DAED4();
  v2 = v1;
  v3 = sub_22CA20E10();

  type metadata accessor for MSSuggestion(0);
  v4 = sub_22CA20EB0();

  v5 = sub_22CA20EB0();

  v6 = sub_22C9DB018(v0, sel_initWithMaxSuggestions_bundleId_workoutType_seedSuggestions_allowedBundleIdentifiers_requestDate_suggestionType_suggestionSourceType_, v2, v3);

  return v6;
}

id MSSuggesterRequestOptions.init(maxSuggestions:bundleId:workoutType:seedSuggestions:allowedBundleIdentifiers:requestDate:suggestionType:suggestionSourceType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, double a9)
{
  v14 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v15 = sub_22CA20E10();

  type metadata accessor for MSSuggestion(0);
  v16 = sub_22CA20EB0();

  v17 = sub_22CA20EB0();

  LODWORD(v20) = a8;
  v18 = [v14 initWithMaxSuggestions:a1 bundleId:v15 workoutType:a4 seedSuggestions:v16 allowedBundleIdentifiers:v17 requestDate:a7 suggestionType:a9 suggestionSourceType:v20];

  return v18;
}

void MSSuggesterRequestOptions.init(maxSuggestions:bundleId:workoutType:seedSuggestions:allowedBundleIdentifiers:requestDate:suggestionType:suggestionSourceType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_22C9DAEF8();
  v33 = v8;
  v34 = v9;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v24 = sub_22CA20A20();
  sub_22C9DAE90();
  v26 = v25;
  MEMORY[0x28223BE20](v27);
  sub_22C9DAE78();
  *&v7[OBJC_IVAR___MSSuggesterRequestOptions_maxSuggestions] = v23;
  v28 = &v7[OBJC_IVAR___MSSuggesterRequestOptions_bundleId];
  *v28 = v21;
  *(v28 + 1) = v19;
  *&v7[OBJC_IVAR___MSSuggesterRequestOptions_workoutType] = v17;
  *&v7[OBJC_IVAR___MSSuggesterRequestOptions_seedSuggestions] = v15;
  *&v7[OBJC_IVAR___MSSuggesterRequestOptions_allowedBundleIdentifiers] = v13;
  *&v7[OBJC_IVAR___MSSuggesterRequestOptions_requestDate] = v11;
  *&v7[OBJC_IVAR___MSSuggesterRequestOptions_suggestionType] = v33;
  *&v7[OBJC_IVAR___MSSuggesterRequestOptions_suggestionSourceType] = v34;
  sub_22CA20A10();
  v29 = sub_22CA20A00();
  v31 = v30;
  (*(v26 + 8))(v7, v24);
  v32 = &v7[OBJC_IVAR___MSSuggesterRequestOptions_requestID];
  *v32 = v29;
  v32[1] = v31;
  v35.receiver = v7;
  v35.super_class = MSSuggesterRequestOptions;
  objc_msgSendSuper2(&v35, sel_init);
  sub_22C9DAF14();
}

void static MSSuggesterRequestOptions.nowPlayingSuggesterOptions(withMaxSuggestions:bundleId:seedSuggestions:allowedBundleIdentifiers:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_22C9DAEF8();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18 = sub_22CA209F0();
  sub_22C9DAE90();
  v20 = v19;
  MEMORY[0x28223BE20](v21);
  sub_22C9DAE78();

  sub_22CA209E0();
  sub_22CA20990();
  v23 = v22;
  (*(v20 + 8))(v7, v18);
  objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_22C9DAD2C(v17, v15, v13, 84, v11, v9, 1, 2, v23);
  sub_22C9DAF14();
}

void static MSSuggesterRequestOptions.nowPlayingSuggesterOptions(withMaxSuggestions:bundleId:seedSuggestions:allowedBundleIdentifiers:suggestionSourceType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_22C9DAEF8();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  sub_22CA209F0();
  sub_22C9DAE90();
  MEMORY[0x28223BE20](v13);
  sub_22C9DAE78();

  sub_22CA209E0();
  sub_22CA20990();
  v14 = sub_22C9DB0E8();
  v15(v14);
  v16 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v17 = sub_22C9DB0A8();
  sub_22C9DAD2C(v17, v18, v19, 84, v12, v10, 1, v8, v6);
  sub_22C9DAF14();
}

void static MSSuggesterRequestOptions.workoutSuggesterOptions(withMaxSuggestions:bundleId:workoutType:seedSuggestions:allowedBundleIdentifiers:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_22C9DAEF8();
  sub_22C9DAFC8();
  sub_22CA209F0();
  sub_22C9DAE90();
  MEMORY[0x28223BE20](v10);
  sub_22C9DAE78();

  sub_22CA209E0();
  sub_22CA20990();
  v11 = sub_22C9DB0E8();
  v12(v11);
  v13 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v14 = sub_22C9DB0A8();
  sub_22C9DAD2C(v14, v15, v16, v8, v7, v6, 0, 2, v9);
  sub_22C9DAF14();
}

void static MSSuggesterRequestOptions.workoutSuggesterOptions(withMaxSuggestions:bundleId:workoutType:seedSuggestions:allowedBundleIdentifiers:suggestionSourceType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_22C9DAEF8();
  v23 = v12;
  sub_22C9DAED4();
  v14 = v13;
  v16 = v15;
  v17 = sub_22CA209F0();
  sub_22C9DAE90();
  v19 = v18;
  MEMORY[0x28223BE20](v20);
  sub_22C9DAE78();

  sub_22CA209E0();
  sub_22CA20990();
  v22 = v21;
  (*(v19 + 8))(v7, v17);
  objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_22C9DAD2C(v16, v14, v11, v10, v9, v8, 0, v23, v22);
  sub_22C9DAF14();
}

uint64_t static MSSuggesterRequestOptions.defaultRequest()()
{
  v1 = sub_22CA209F0();
  sub_22C9DAE90();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  sub_22C9DAE78();
  sub_22CA209E0();
  sub_22CA20990();
  v6 = v5;
  (*(v3 + 8))(v0, v1);
  v7 = objc_allocWithZone(MSSuggesterRequestOptions);
  sub_22C9DAD2C(12, 0, 0xE000000000000000, 3000, MEMORY[0x277D84F90], MEMORY[0x277D84F90], 1, 2, v6);
  return swift_dynamicCastUnknownClassUnconditional();
}

uint64_t MSSuggesterRequestOptions.description.getter()
{
  v1 = v0;
  *&v28[8] = 0;
  sub_22CA211A0();
  MEMORY[0x2318BA9C0](60, 0xE100000000000000);
  swift_getObjectType();
  v2 = sub_22CA214B0();
  MEMORY[0x2318BA9C0](v2);

  sub_22C9DAFF4();
  MEMORY[0x2318BA9C0](0xD000000000000011);
  *v28 = [v0 maxSuggestions];
  v3 = sub_22CA21340();
  MEMORY[0x2318BA9C0](v3);

  MEMORY[0x2318BA9C0](0x656C646E7562202CLL, 0xEB000000003D6449);
  v4 = [v0 bundleId];
  v5 = sub_22CA20E20();
  v7 = v6;

  MEMORY[0x2318BA9C0](v5, v7);

  MEMORY[0x2318BA9C0](0x756F6B726F77202CLL, 0xEE003D6570795474);
  type metadata accessor for MSWorkoutItem(0);
  sub_22C9EA5A8([v1 workoutType]);
  MEMORY[0x2318BA9C0]();

  sub_22C9DAFF4();
  MEMORY[0x2318BA9C0]();
  v8 = [v1 allowedBundleIdentifiers];
  v9 = MEMORY[0x277D837D0];
  v10 = sub_22CA20EC0();

  v11 = MEMORY[0x2318BAA20](v10, v9);
  v13 = v12;

  MEMORY[0x2318BA9C0](v11, v13);

  sub_22C9DAFF4();
  MEMORY[0x2318BA9C0]();
  v14 = [v1 seedSuggestions];
  v15 = type metadata accessor for MSSuggestion(0);
  v16 = sub_22CA20EC0();

  v17 = MEMORY[0x2318BAA20](v16, v15);
  v19 = v18;

  MEMORY[0x2318BA9C0](v17, v19);

  MEMORY[0x2318BA9C0](0x736575716572202CLL, 0xEE003D6574614474);
  [v1 requestDate];
  sub_22CA20FA0();
  sub_22C9DAFF4();
  MEMORY[0x2318BA9C0](0xD000000000000011);
  v20 = [v1 suggestionType];
  if (v20 == 2)
  {
    goto LABEL_5;
  }

  if (v20 == 1)
  {
    v17 = 0xEA0000000000676ELL;
    v21 = 0x6979616C50776F4ELL;
    goto LABEL_7;
  }

  if (v20)
  {
LABEL_5:
    v21 = sub_22C9DB000();
  }

  else
  {
    v17 = 0xE700000000000000;
    v21 = 0x74756F6B726F57;
  }

LABEL_7:
  MEMORY[0x2318BA9C0](v21, v17);

  sub_22C9DAFF4();
  MEMORY[0x2318BA9C0]();
  v22 = [v1 suggestionSourceType];
  if (v22 == 2)
  {
    goto LABEL_11;
  }

  if (v22 == 1)
  {
    v17 = 0xEF616964654D2064;
    v23 = 0x6574736567677553;
    goto LABEL_13;
  }

  if (v22)
  {
LABEL_11:
    v23 = sub_22C9DB000();
  }

  else
  {
    v17 = 0xEE00616964654D20;
    v23 = 0x64656D75736E6F43;
  }

LABEL_13:
  MEMORY[0x2318BA9C0](v23, v17);

  MEMORY[0x2318BA9C0](0x7473657571657220, 0xEB000000003D4449);
  v24 = &v1[OBJC_IVAR___MSSuggesterRequestOptions_requestID];
  v25 = *&v1[OBJC_IVAR___MSSuggesterRequestOptions_requestID];
  v26 = *(v24 + 1);

  MEMORY[0x2318BA9C0](v25, v26);

  MEMORY[0x2318BA9C0](62, 0xE100000000000000);
  return *&v28[4];
}

void MSSuggesterRequestOptions.copy(with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_22C9DAEF8();
  v8 = v7;
  v10 = v9;
  v11 = [v7 maxSuggestions];
  v12 = [v8 bundleId];
  v13 = sub_22CA20E20();
  v15 = v14;

  v16 = [v8 workoutType];
  v17 = [v8 seedSuggestions];
  type metadata accessor for MSSuggestion(0);
  v18 = sub_22CA20EC0();

  v19 = [v8 allowedBundleIdentifiers];
  v20 = sub_22CA20EC0();

  [v8 requestDate];
  v22 = v21;
  v23 = [v8 suggestionType];
  LODWORD(v8) = [v8 suggestionSourceType];
  v24 = objc_allocWithZone(MSSuggesterRequestOptions);
  v25 = sub_22C9DAD2C(v11, v13, v15, v16, v18, v20, v23, v8, v22);
  v10[3] = type metadata accessor for MSSuggesterRequestOptions();
  *v10 = v25;
  sub_22C9DAF14();
}

Swift::Void __swiftcall MSSuggesterRequestOptions.encode(with:)(NSCoder with)
{
  v4 = [v1 bundleId];
  if (!v4)
  {
    sub_22CA20E20();
    v4 = sub_22CA20E10();
  }

  v5 = sub_22C9DB084();
  [(objc_class *)with.super.isa encodeObject:v4 forKey:v5];

  v6 = [v1 seedSuggestions];
  if (!v6)
  {
    type metadata accessor for MSSuggestion(0);
    v2 = sub_22CA20EC0();
    v6 = sub_22CA20EB0();
  }

  v7 = sub_22C9DAF98();
  sub_22C9DB060(v7);

  [v1 maxSuggestions];
  v8 = sub_22C9DAF68();
  sub_22C9DB0FC();

  [v1 workoutType];
  sub_22C9DB0C8();
  v9 = sub_22CA20E10();
  sub_22C9DB0FC();

  v10 = [v1 allowedBundleIdentifiers];
  if (!v10)
  {
    v9 = sub_22CA20EC0();
    v10 = sub_22CA20EB0();
  }

  v11 = sub_22CA20E10();
  sub_22C9DB060(v11);

  [v1 requestDate];
  v13 = v12;
  sub_22C9DAEC4();
  v14 = sub_22CA20E10();
  [(objc_class *)with.super.isa encodeDouble:v14 forKey:v13];

  [v1 suggestionType];
  v15 = sub_22C9DAF38();
  sub_22C9DB03C(v15);

  [v1 suggestionSourceType];
  v16 = sub_22C9DB11C();
  sub_22C9DB03C(v16);

  v17 = sub_22CA20E10();

  sub_22C9DAEC4();
  v18 = sub_22CA20E10();
  [(objc_class *)with.super.isa encodeObject:v17 forKey:v18];
}

id MSSuggesterRequestOptions.init(coder:)(void *a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithCoder_];

  return v2;
}

{
  v3 = sub_22C9DB084();
  v4 = sub_22C9D0758();
  v6 = [v4 v5];

  if (v6)
  {
    sub_22CA21130();
    v7 = swift_unknownObjectRelease();
  }

  else
  {
    sub_22C9DB0DC();
  }

  *&v22 = sub_22C9DAEE8(v7, v8, v9, v10, v11, v12, v13, v14, v112, v120, v127, v132, v137.receiver, v137.super_class, v138, v139, *&v140[0], *(&v140[0] + 1), v140[1]).n128_u64[0];
  if (!v23)
  {

LABEL_24:
    sub_22C9D027C(v141);
    goto LABEL_25;
  }

  if (sub_22C9DAEA4(v15, v16, v17, MEMORY[0x277D837D0], v18, v19, v20, v21, v113, v121, v22))
  {
    v25 = v138;
    v24 = v139;
    v26 = sub_22C9DAF98();
    v27 = sub_22C9D0758();
    v29 = [v27 v28];

    if (v29)
    {
      sub_22CA21130();
      v30 = swift_unknownObjectRelease();
    }

    else
    {
      sub_22C9DB0DC();
    }

    sub_22C9DAEE8(v30, v31, v32, v33, v34, v35, v36, v37, v114, v122, v128, v133, v137.receiver, v137.super_class, v138, v139, *&v140[0], *(&v140[0] + 1), v140[1]);
    if (v38)
    {
      v39 = sub_22C9D02E4(&unk_27D9E47C0, &qword_22CA23E90);
      if ((sub_22C9DAEA4(v39, v40, v41, v39, v42, v43, v44, v45, v115, v123) & 1) == 0)
      {

LABEL_28:

        goto LABEL_25;
      }

      v46 = v138;
      v47 = sub_22CA20E10();
      v48 = sub_22C9D0758();
      v50 = [v48 v49];

      if (v50)
      {
        sub_22CA21130();
        v51 = swift_unknownObjectRelease();
      }

      else
      {
        sub_22C9DB0DC();
      }

      sub_22C9DAEE8(v51, v52, v53, v54, v55, v56, v57, v58, v116, v124, v129, v134, v137.receiver, v137.super_class, v138, v139, *&v140[0], *(&v140[0] + 1), v140[1]);
      if (v59)
      {
        v60 = sub_22C9D02E4(&qword_27D9E4980, &qword_22CA25770);
        if (sub_22C9DAEA4(v60, v61, v62, v60, v63, v64, v65, v66, v117, v125))
        {
          v130 = v25;
          v135 = v24;
          sub_22C9DAEC4();
          v67 = sub_22CA20E10();
          [a1 decodeDoubleForKey_];
          v69 = v68;

          v70 = sub_22C9DAF68();
          v71 = sub_22C9DB0BC();
          HIDWORD(v118) = [v71 v72];

          sub_22C9DB0C8();
          v73 = sub_22CA20E10();
          v74 = sub_22C9DB0BC();
          v76 = [v74 v75];

          v77 = sub_22C9DAF38();
          v78 = sub_22C9DB0BC();
          v80 = [v78 v79];

          v81 = sub_22C9DB11C();
          v82 = sub_22C9DB0BC();
          v84 = [v82 v83];

          sub_22C9DAEC4();
          v85 = sub_22CA20E10();
          v86 = sub_22C9D0758();
          v88 = [v86 v87];

          if (v88)
          {
            sub_22CA21130();
            v89 = swift_unknownObjectRelease();
          }

          else
          {
            sub_22C9DB0DC();
          }

          *&v106 = sub_22C9DAEE8(v89, v90, v91, v92, v93, v94, v95, v96, v118, v138, v130, v135, v137.receiver, v137.super_class, v138, v139, *&v140[0], *(&v140[0] + 1), v140[1]).n128_u64[0];
          if (v107)
          {
            if (sub_22C9DAEA4(v99, v100, v101, MEMORY[0x277D837D0], v102, v103, v104, v105, v119, v126, v106))
            {
              v108 = v138;
              v109 = v139;
LABEL_35:
              *&v1[OBJC_IVAR___MSSuggesterRequestOptions_maxSuggestions] = HIDWORD(v119);
              *&v1[OBJC_IVAR___MSSuggesterRequestOptions_workoutType] = v76;
              v110 = &v1[OBJC_IVAR___MSSuggesterRequestOptions_bundleId];
              *v110 = v131;
              *(v110 + 1) = v136;
              *&v1[OBJC_IVAR___MSSuggesterRequestOptions_seedSuggestions] = v46;
              *&v1[OBJC_IVAR___MSSuggesterRequestOptions_allowedBundleIdentifiers] = v126;
              *&v1[OBJC_IVAR___MSSuggesterRequestOptions_requestDate] = v69;
              *&v1[OBJC_IVAR___MSSuggesterRequestOptions_suggestionType] = v80;
              *&v1[OBJC_IVAR___MSSuggesterRequestOptions_suggestionSourceType] = v84;
              v111 = &v1[OBJC_IVAR___MSSuggesterRequestOptions_requestID];
              *v111 = v108;
              v111[1] = v109;
              v137.receiver = v1;
              v137.super_class = MSSuggesterRequestOptions;
              v97 = objc_msgSendSuper2(&v137, sel_init);

              return v97;
            }
          }

          else
          {
            sub_22C9D027C(v141);
          }

          v108 = 0;
          v109 = 0xE000000000000000;
          goto LABEL_35;
        }

        goto LABEL_28;
      }
    }

    else
    {
    }

    goto LABEL_24;
  }

LABEL_25:
  type metadata accessor for MSSuggesterRequestOptions();
  swift_deallocPartialClassInstance();
  return 0;
}

id MSSuggesterRequestOptions.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

id sub_22C9DAD2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, double a9)
{
  v15 = sub_22CA20E10();

  type metadata accessor for MSSuggestion(0);
  v16 = sub_22CA20EB0();

  v17 = sub_22CA20EB0();

  LODWORD(v20) = a8;
  v18 = [v9 initWithMaxSuggestions:a1 bundleId:v15 workoutType:a4 seedSuggestions:v16 allowedBundleIdentifiers:v17 requestDate:a7 suggestionType:a9 suggestionSourceType:v20];

  return v18;
}

unint64_t type metadata accessor for MSSuggesterRequestOptions()
{
  result = qword_27D9E4D10;
  if (!qword_27D9E4D10)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D9E4D10);
  }

  return result;
}

uint64_t sub_22C9DAEA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{

  return swift_dynamicCast();
}

uint64_t sub_22C9DAF38()
{

  return sub_22CA20E10();
}

uint64_t sub_22C9DAF68()
{

  return sub_22CA20E10();
}

uint64_t sub_22C9DAF98()
{

  return sub_22CA20E10();
}

id sub_22C9DB018(id a1, SEL a2, uint64_t a3, uint64_t a4)
{

  return [a1 a2];
}

id sub_22C9DB03C(uint64_t a1)
{

  return [v1 (v3 + 2296)];
}

id sub_22C9DB060(uint64_t a1)
{

  return [v1 (v3 + 3842)];
}

uint64_t sub_22C9DB084()
{

  return sub_22CA20E10();
}

id sub_22C9DB0FC()
{

  return [v0 (v3 + 2296)];
}

uint64_t sub_22C9DB11C()
{

  return sub_22CA20E10();
}

uint64_t sub_22C9DB188()
{
  v1 = *(v0 + OBJC_IVAR___MSSuggestion_bundleID);

  return v1;
}

uint64_t sub_22C9DB234(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR___MSSuggestion_bundleID);
  *v3 = a1;
  v3[1] = a2;
}

void *MSSuggestion.mediaAppIntent.getter(uint64_t a1)
{
  v2 = OBJC_IVAR___MSSuggestion_mediaAppIntent;
  sub_22C9DE14C(a1);
  v3 = *(v1 + v2);
  v4 = v3;
  return v3;
}

void MSSuggestion.mediaAppIntent.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___MSSuggestion_mediaAppIntent;
  sub_22C9DE248(v1 + OBJC_IVAR___MSSuggestion_mediaAppIntent, v5);
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

double MSSuggestion.suggestionsLatency.getter(uint64_t a1)
{
  v2 = OBJC_IVAR___MSSuggestion_suggestionsLatency;
  sub_22C9DE14C(a1);
  return *(v1 + v2);
}

uint64_t MSSuggestion.suggestionsLatency.setter(double a1)
{
  v3 = OBJC_IVAR___MSSuggestion_suggestionsLatency;
  result = sub_22C9DE248(v1 + OBJC_IVAR___MSSuggestion_suggestionsLatency, v5);
  *(v1 + v3) = a1;
  return result;
}

id MSSuggestion.init(intent:bundleID:suggestionSource:)(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v9 = OBJC_IVAR___MSSuggestion_mediaAppIntent;
  *&v4[OBJC_IVAR___MSSuggestion_mediaAppIntent] = 0;
  *&v4[OBJC_IVAR___MSSuggestion_intent] = a1;
  v10 = objc_allocWithZone(MSUnifiedMediaIntent);
  v11 = a1;

  v12 = sub_22CA20E10();

  v13 = [v10 initWithIntent:v11 bundleID:v12];

  *&v4[OBJC_IVAR___MSSuggestion_unifiedIntent] = v13;
  *&v4[OBJC_IVAR___MSSuggestion_intentDate] = CFAbsoluteTimeGetCurrent();
  v14 = &v4[OBJC_IVAR___MSSuggestion_bundleID];
  *v14 = a2;
  *(v14 + 1) = a3;
  *&v4[OBJC_IVAR___MSSuggestion_suggestionSource] = a4;
  sub_22C9DE248(&v4[v9], v19);
  v15 = *&v4[v9];
  *&v4[v9] = 0;

  *&v4[OBJC_IVAR___MSSuggestion_suggestionsLatency] = 0;
  v18.receiver = v4;
  v18.super_class = MSSuggestion;
  v16 = objc_msgSendSuper2(&v18, sel_init);

  return v16;
}

id sub_22C9DB700(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v8 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v9 = sub_22CA20E10();

  v10 = [v8 *a5];

  return v10;
}

id MSSuggestion.init(unifiedIntent:bundleID:suggestionSource:)(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  *&v4[OBJC_IVAR___MSSuggestion_mediaAppIntent] = 0;
  *&v4[OBJC_IVAR___MSSuggestion_unifiedIntent] = a1;
  v9 = objc_allocWithZone(MEMORY[0x277CD3EC0]);
  v10 = a1;
  v11 = [v9 init];
  *&v4[OBJC_IVAR___MSSuggestion_intent] = v11;
  *&v4[OBJC_IVAR___MSSuggestion_intentDate] = CFAbsoluteTimeGetCurrent();
  v12 = &v4[OBJC_IVAR___MSSuggestion_bundleID];
  *v12 = a2;
  *(v12 + 1) = a3;
  *&v4[OBJC_IVAR___MSSuggestion_suggestionSource] = a4;
  *&v4[OBJC_IVAR___MSSuggestion_suggestionsLatency] = 0;
  v15.receiver = v4;
  v15.super_class = MSSuggestion;
  v13 = objc_msgSendSuper2(&v15, sel_init);

  return v13;
}

uint64_t sub_22C9DB89C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void *, uint64_t, uint64_t, uint64_t))
{
  sub_22CA20E20();
  sub_22C9DE26C();
  return a6(a3, v6, v7, a5);
}

uint64_t sub_22C9DBA10(uint64_t result)
{
  if ((result - 1) < 0x14)
  {
    return result;
  }

  else
  {
    return 0;
  }
}

uint64_t MSSuggestion.identifier.getter()
{
  v1 = [v0 intent];
  v2 = [v1 mediaContainer];

  if (v2)
  {
    v3 = sub_22C9DDE50(v2, &selRef_identifier);
    if (v4)
    {
      return v3;
    }
  }

  v6 = OBJC_IVAR___MSSuggestion_mediaAppIntent;
  sub_22C9DE14C(v3);
  v7 = *&v0[v6];
  if (!v7)
  {
    return 0;
  }

  v8 = (v7 + OBJC_IVAR____TtC14MediaSuggester20MSPlayMediaAppIntent_identifier);
  if (!v8[1])
  {
    return 0;
  }

  v5 = *v8;

  return v5;
}

id sub_22C9DBB64(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  a3();
  v6 = v5;

  if (v6)
  {
    v7 = sub_22CA20E10();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t sub_22C9DBC04(SEL *a1, uint64_t (*a2)(void))
{
  v5 = [v2 intent];
  v6 = [v5 mediaContainer];

  if (v6)
  {
    v7 = sub_22C9DDE50(v6, a1);
    if (v8)
    {
      return v7;
    }
  }

  v10 = OBJC_IVAR___MSSuggestion_mediaAppIntent;
  sub_22C9DE1DC(&v2[OBJC_IVAR___MSSuggestion_mediaAppIntent], v16);
  v11 = *&v2[v10];
  if (!v11)
  {
    return 0;
  }

  v12 = v11;
  v9 = a2();
  v14 = v13;

  if (!v14)
  {
    return 0;
  }

  return v9;
}

uint64_t MSSuggestion.editorialTags.getter(uint64_t a1)
{
  v2 = OBJC_IVAR___MSSuggestion_mediaAppIntent;
  sub_22C9DE14C(a1);
  v3 = *(v1 + v2);
  if (v3 && *(v3 + OBJC_IVAR____TtC14MediaSuggester20MSPlayMediaAppIntent_editorialTags))
  {
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }
}

uint64_t MSSuggestion.description.getter()
{
  v2 = v0;
  v3 = sub_22CA209F0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35[0] = 0;
  v35[1] = 0xE000000000000000;
  sub_22CA211A0();
  MEMORY[0x2318BA9C0](60, 0xE100000000000000);
  swift_getObjectType();
  v7 = sub_22CA214B0();
  v9 = v8;
  MEMORY[0x2318BA9C0](v7);

  MEMORY[0x2318BA9C0](0x656372756F73203ALL, 0xE90000000000003DLL);
  v10 = [v0 bundleID];
  sub_22CA20E20();
  sub_22C9DE26C();

  MEMORY[0x2318BA9C0](v9, v1);

  MEMORY[0x2318BA9C0](0x223D6469202CLL, 0xE600000000000000);
  v11 = sub_22C9DDEC8(v2, &selRef_identifier);
  if (v12)
  {
    v13 = v12;
  }

  else
  {
    v11 = 0;
    v13 = 0xE000000000000000;
  }

  MEMORY[0x2318BA9C0](v11, v13);

  MEMORY[0x2318BA9C0](0x656C746974202C22, 0xEA0000000000223DLL);
  v14 = sub_22C9DDEC8(v2, &selRef_title);
  if (v15)
  {
    v16 = v15;
  }

  else
  {
    v14 = 0;
    v16 = 0xE000000000000000;
  }

  MEMORY[0x2318BA9C0](v14, v16);

  MEMORY[0x2318BA9C0](0x7369747261202C22, 0xEB00000000223D74);
  v17 = sub_22C9DDEC8(v2, &selRef_artist);
  if (v18)
  {
    v19 = v18;
  }

  else
  {
    v17 = 0;
    v19 = 0xE000000000000000;
  }

  MEMORY[0x2318BA9C0](v17, v19);

  sub_22C9DE260();
  MEMORY[0x2318BA9C0](0xD000000000000015);
  v20 = [v2 suggestionSourceDescription];
  sub_22CA20E20();
  sub_22C9DE26C();

  MEMORY[0x2318BA9C0](v19, v1);

  MEMORY[0x2318BA9C0](0x746E65746E692022, 0xEF3D747241736148);
  v21 = [v2 hasArtwork];
  v22 = v21 == 0;
  if (v21)
  {
    v23 = 1702195828;
  }

  else
  {
    v23 = 0x65736C6166;
  }

  if (v22)
  {
    v24 = 0xE500000000000000;
  }

  else
  {
    v24 = 0xE400000000000000;
  }

  MEMORY[0x2318BA9C0](v23, v24);

  MEMORY[0x2318BA9C0](0x746E65746E69202CLL, 0xED00003D65746144);
  [v2 intentDate];
  sub_22CA20980();
  sub_22C9DDF28();
  v25 = sub_22CA21340();
  MEMORY[0x2318BA9C0](v25);

  (*(v4 + 8))(v6, v3);
  MEMORY[0x2318BA9C0](0x6E65746E6F63202CLL, 0xEF203A6570795474);
  v26 = [v2 contentTypeDescription];
  v27 = sub_22CA20E20();
  v29 = v28;

  MEMORY[0x2318BA9C0](v27, v29);

  MEMORY[0x2318BA9C0](0x22203A7367617420, 0xE800000000000000);
  v30 = [v2 editorialTags];
  sub_22CA20FC0();

  v31 = sub_22CA20FD0();
  v33 = v32;

  MEMORY[0x2318BA9C0](v31, v33);

  MEMORY[0x2318BA9C0](15906, 0xE200000000000000);
  return v35[0];
}

uint64_t sub_22C9DC324()
{
  v1 = [v0 suggestionSource];
  v2 = 0x6E776F6E6B6E55;
  if (!v1)
  {
    v2 = 0x64656D75736E6F43;
  }

  if (v1 == 1)
  {
    return 0x6574736567677553;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_22C9DC3CC()
{
  switch([v0 contentType])
  {
    case 1u:
      return 1735290707;
    case 2u:
      return 0x6D75626C41;
    case 3u:
      return 0x747369747241;
    case 4u:
      v3 = 1919837511;
      return v3 & 0xFFFF0000FFFFFFFFLL | 0x6500000000;
    case 5u:
      return 0x7473696C79616C50;
    case 6u:
    case 0xFu:
      return 0x5374736163646F50;
    case 7u:
      return 0x4574736163646F50;
    case 8u:
      return 0x5074736163646F50;
    case 9u:
      return 0x746174536369734DLL;
    case 0xAu:
      return 0x6F6F426F69647541;
    case 0xBu:
      v3 = 1769369421;
      return v3 & 0xFFFF0000FFFFFFFFLL | 0x6500000000;
    case 0xCu:
      return 0x776F68535654;
    case 0xDu:
      return 0x7045776F68535654;
    case 0xEu:
      return 0x646956636973754DLL;
    case 0x10u:
      return 0x6174536F69646152;
    case 0x11u:
      v2 = 0x6F6974617453;
      return v2 & 0xFFFFFFFFFFFFLL | 0x6E000000000000;
    case 0x12u:
      return 0x636973754DLL;
    case 0x13u:
      return 0xD000000000000017;
    case 0x14u:
      return 1937204558;
    default:
      v2 = 0x776F6E6B6E55;
      return v2 & 0xFFFFFFFFFFFFLL | 0x6E000000000000;
  }
}

id sub_22C9DC63C(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = sub_22CA20E10();

  return v5;
}

uint64_t MSSuggestion.copy(with:)@<X0>(void *a1@<X8>)
{
  v4 = v1;
  v6 = [v1 unifiedIntent];
  v7 = [v4 bundleID];
  sub_22CA20E20();
  sub_22C9DE26C();

  v8 = [v4 suggestionSource];
  v9 = objc_allocWithZone(MSSuggestion);
  v10 = sub_22C9DDDC8(v6, v2, v3, v8);
  [v4 intentDate];
  [v10 setIntentDate_];
  v11 = OBJC_IVAR___MSSuggestion_mediaAppIntent;
  sub_22C9DE1DC(&v4[OBJC_IVAR___MSSuggestion_mediaAppIntent], v20);
  v12 = *&v4[v11];
  v13 = OBJC_IVAR___MSSuggestion_mediaAppIntent;
  sub_22C9DE248(&v10[OBJC_IVAR___MSSuggestion_mediaAppIntent], &v19);
  v14 = *&v10[v13];
  *&v10[v13] = v12;
  v15 = v12;

  v16 = [v4 intent];
  [v10 setIntent_];

  result = type metadata accessor for MSSuggestion(v17);
  a1[3] = result;
  *a1 = v10;
  return result;
}

Swift::Void __swiftcall MSSuggestion.encode(with:)(NSCoder with)
{
  v3 = [v1 bundleID];
  if (!v3)
  {
    sub_22CA20E20();
    v3 = sub_22CA20E10();
  }

  v4 = sub_22C9D6F18();
  sub_22C9D06F4();

  v5 = [v1 intent];
  sub_22C9DE16C();
  v6 = sub_22CA20E10();
  sub_22C9D06F4();

  v7 = [v1 unifiedIntent];
  v8 = sub_22C9DE1AC();
  sub_22C9D06F4();

  [v1 intentDate];
  v10 = v9;
  sub_22C9DE16C();
  v11 = sub_22CA20E10();
  [(objc_class *)with.super.isa encodeDouble:v11 forKey:v10];

  v12 = [v1 suggestionSource];
  sub_22C9DE260();
  v13 = sub_22CA20E10();
  [(objc_class *)with.super.isa encodeInt32:v12 forKey:v13];

  v14 = OBJC_IVAR___MSSuggestion_mediaAppIntent;
  sub_22C9DE1DC(&v1[OBJC_IVAR___MSSuggestion_mediaAppIntent], v21);
  v15 = *&v1[v14];
  v16 = sub_22C9DE17C();
  sub_22C9D06F4();

  v17 = OBJC_IVAR___MSSuggestion_suggestionsLatency;
  sub_22C9DE1DC(&v1[OBJC_IVAR___MSSuggestion_suggestionsLatency], &v20);
  v18 = *&v1[v17];
  v19 = sub_22C9DE224();
  [(objc_class *)with.super.isa encodeDouble:v19 forKey:v18];
}

id MSSuggestion.init(coder:)(void *a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithCoder_];

  return v2;
}

{
  v3 = OBJC_IVAR___MSSuggestion_mediaAppIntent;
  *&v1[OBJC_IVAR___MSSuggestion_mediaAppIntent] = 0;
  v4 = sub_22C9D6F18();
  v5 = [a1 decodeObjectForKey_];

  if (v5)
  {
    sub_22CA21130();
    v6 = swift_unknownObjectRelease();
  }

  else
  {
    sub_22C9D074C();
  }

  *&v21 = sub_22C9D0698(v6, v7, v8, v9, v10, v11, v12, v13, v102, v106, v111.receiver, v111.super_class, v112, v113, v114, v115, v116).n128_u64[0];
  if (!v22)
  {

LABEL_24:
    sub_22C9D027C(v117);
    goto LABEL_25;
  }

  if ((sub_22C9D0678(v14, v15, v16, MEMORY[0x277D837D0], v17, v18, v19, v20, v21) & 1) == 0)
  {

LABEL_25:
    type metadata accessor for MSSuggestion(v83);
    swift_deallocPartialClassInstance();
    return 0;
  }

  v24 = v112;
  v23 = v113;
  sub_22C9DE16C();
  v25 = sub_22CA20E10();
  v26 = sub_22C9DE278();
  v28 = [v26 v27];

  if (v28)
  {
    sub_22CA21130();
    v29 = swift_unknownObjectRelease();
  }

  else
  {
    sub_22C9D074C();
  }

  sub_22C9D0698(v29, v30, v31, v32, v33, v34, v35, v36, v103, v107, v111.receiver, v111.super_class, v112, v113, v114, v115, v116);
  if (!v37)
  {

LABEL_23:

    goto LABEL_24;
  }

  v38 = sub_22C9D0434(0, &qword_28143A310, 0x277CD3EC0);
  if ((sub_22C9D0678(v38, v39, v40, v38, v41, v42, v43, v44) & 1) == 0)
  {

LABEL_28:

    goto LABEL_25;
  }

  v45 = v112;
  v46 = sub_22C9DE1AC();
  v47 = sub_22C9DE278();
  v49 = [v47 v48];

  if (v49)
  {
    sub_22CA21130();
    v50 = swift_unknownObjectRelease();
  }

  else
  {
    sub_22C9D074C();
  }

  sub_22C9D0698(v50, v51, v52, v53, v54, v55, v56, v57, v104, v108, v111.receiver, v111.super_class, v112, v113, v114, v115, v116);
  if (!v58)
  {

    goto LABEL_23;
  }

  v59 = type metadata accessor for MSUnifiedMediaIntent(0);
  if ((sub_22C9D0678(v59, v60, v61, v59, v62, v63, v64, v65) & 1) == 0)
  {

    goto LABEL_28;
  }

  v109 = v45;
  sub_22C9DE16C();
  v66 = sub_22CA20E10();
  [a1 decodeDoubleForKey_];
  v68 = v67;

  sub_22C9DE260();
  v69 = sub_22CA20E10();
  v70 = sub_22C9DE278();
  v72 = [v70 v71];

  v73 = sub_22C9DE17C();
  v74 = [a1 decodeObjectForKey_];

  if (v74)
  {
    sub_22CA21130();
    v75 = swift_unknownObjectRelease();
  }

  else
  {
    sub_22C9D074C();
  }

  sub_22C9D0698(v75, v76, v77, v78, v79, v80, v81, v82, v112, v109, v111.receiver, v111.super_class, v112, v113, v114, v115, v116);
  if (v86)
  {
    v87 = type metadata accessor for MSPlayMediaAppIntent();
    if (sub_22C9D0678(v87, v88, v89, v87, v90, v91, v92, v93))
    {
      v94 = v112;
    }

    else
    {
      v94 = 0;
    }
  }

  else
  {
    sub_22C9D027C(v117);
    v94 = 0;
  }

  v95 = sub_22C9DE224();
  v96 = sub_22C9DE278();
  [v96 v97];
  v99 = v98;

  *&v1[OBJC_IVAR___MSSuggestion_intentDate] = v68;
  *&v1[OBJC_IVAR___MSSuggestion_intent] = v110;
  *&v1[OBJC_IVAR___MSSuggestion_unifiedIntent] = v105;
  v100 = &v1[OBJC_IVAR___MSSuggestion_bundleID];
  *v100 = v24;
  v100[1] = v23;
  *&v1[OBJC_IVAR___MSSuggestion_suggestionSource] = v72;
  sub_22C9DE248(&v1[v3], v117);
  v101 = *&v1[v3];
  *&v1[v3] = v94;

  *&v1[OBJC_IVAR___MSSuggestion_suggestionsLatency] = v99;
  v111.receiver = v1;
  v111.super_class = MSSuggestion;
  v84 = objc_msgSendSuper2(&v111, sel_init);

  return v84;
}

uint64_t MSSuggestion.isEqual(_:)(uint64_t a1)
{
  v2 = sub_22C9D032C(a1, v22);
  if (!v23)
  {
    sub_22C9D027C(v22);
    goto LABEL_12;
  }

  type metadata accessor for MSSuggestion(v2);
  if (swift_dynamicCast())
  {
    v3 = sub_22C9DDEC8(v1, &selRef_identifier);
    v5 = v4;
    v6 = sub_22C9DDEC8(v21, &selRef_identifier);
    if (v5)
    {
      if (v7)
      {
        if (v3 == v6 && v5 == v7)
        {
        }

        else
        {
          v9 = sub_22CA21360();

          if ((v9 & 1) == 0)
          {
LABEL_18:
            sub_22C9DDEC8(v1, &selRef_title);
            if (v13)
            {

              v14 = sub_22C9DDEC8(v1, &selRef_title);
              v16 = v15;
              v17 = sub_22C9DDEC8(v21, &selRef_title);
              v19 = v18;
              if (v16)
              {
                if (v18)
                {
                  if (v14 != v17 || v16 != v18)
                  {
                    v10 = sub_22CA21360();

                    return v10 & 1;
                  }

                  goto LABEL_32;
                }
              }

              else
              {

                if (!v19)
                {
LABEL_33:
                  v10 = 1;
                  return v10 & 1;
                }
              }
            }

            else
            {
            }

            goto LABEL_12;
          }
        }

LABEL_17:
        v12 = [v1 suggestionSource];
        if (v12 == [v21 suggestionSource])
        {
LABEL_32:

          goto LABEL_33;
        }

        goto LABEL_18;
      }
    }

    else if (!v7)
    {
      goto LABEL_17;
    }

    goto LABEL_18;
  }

LABEL_12:
  v10 = 0;
  return v10 & 1;
}

uint64_t MSSuggestion.hash.getter()
{
  v1 = sub_22C9DDEC8(v0, &selRef_title);
  if (!v2)
  {
    return 0;
  }

  v3 = MEMORY[0x2318BA9E0](v1);

  return v3;
}

uint64_t sub_22C9DD224()
{
  sub_22C9D7018();
  v1 = [*(v0 + 40) unifiedIntent];
  v2 = [v1 currentIntent];

  *(v0 + 48) = [v2 intent];
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    type metadata accessor for MSPlayMediaIntent();
    swift_unknownObjectRetain();
    v3 = swift_task_alloc();
    *(v0 + 56) = v3;
    *v3 = v0;
    v3[1] = sub_22C9DD430;

    return sub_22CA1BD4C();
  }

  else
  {
    v5 = *(v0 + 40);
    v6 = OBJC_IVAR___MSSuggestion_mediaAppIntent;
    sub_22C9DE1DC(v5 + OBJC_IVAR___MSSuggestion_mediaAppIntent, v0 + 16);
    v7 = *(v5 + v6);
    *(v0 + 80) = v7;
    if (v7)
    {
      v7;
      v8 = swift_task_alloc();
      *(v0 + 88) = v8;
      *v8 = v0;
      v8[1] = sub_22C9DD5A0;

      return sub_22CA1E234();
    }

    else
    {
      swift_unknownObjectRelease();
      v9 = *(v0 + 8);

      return v9(0);
    }
  }
}

uint64_t sub_22C9DD430()
{
  sub_22C9D7018();
  sub_22C9DE214();
  v4 = v3;
  sub_22C9DE204();
  *v5 = v4;
  v6 = *v2;
  sub_22C9D6EA4();
  *v7 = v6;
  *(v4 + 64) = v0;

  if (!v0)
  {
    swift_unknownObjectRelease();
    *(v4 + 72) = v1;
  }

  sub_22C9DE1F4();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_22C9DD53C()
{
  sub_22C9D6F3C();
  swift_unknownObjectRelease();
  v1 = *(v0 + 72);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_22C9DD5A0()
{
  sub_22C9D7018();
  sub_22C9DE214();
  v4 = v3;
  sub_22C9DE204();
  *v5 = v4;
  v6 = *v2;
  sub_22C9D6EA4();
  *v7 = v6;
  *(v4 + 96) = v0;

  if (!v0)
  {
    *(v4 + 104) = v1;
  }

  sub_22C9DE1F4();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_22C9DD6A4()
{
  sub_22C9D6F3C();
  v1 = v0[10];
  swift_unknownObjectRelease();

  v2 = v0[13];
  v3 = v0[1];

  return v3(v2);
}

uint64_t sub_22C9DD710()
{
  sub_22C9D6F3C();
  swift_unknownObjectRelease_n();
  sub_22C9D7050();

  return v0();
}

uint64_t sub_22C9DD770()
{
  sub_22C9D6F3C();
  v1 = *(v0 + 80);
  swift_unknownObjectRelease();

  sub_22C9D7050();

  return v2();
}

uint64_t MSSuggestion.artwork(completion:)(uint64_t a1, uint64_t a2)
{
  v5 = sub_22C9D02E4(&unk_27D9E4A00, &qword_22CA22D90);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v12 - v6;
  v8 = sub_22CA20F70();
  sub_22C9D0B98(v7, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v2;
  v9[5] = a1;
  v9[6] = a2;
  v10 = v2;

  sub_22C9D1034(0, 0, v7, &unk_22CA232B8, v9);
}

uint64_t sub_22C9DD8D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a5;
  v6[6] = a6;
  v7 = swift_task_alloc();
  v6[7] = v7;
  *v7 = v6;
  v7[1] = sub_22C9DD964;

  return MSSuggestion.albumArtwork()();
}

uint64_t sub_22C9DD964()
{
  sub_22C9D7018();
  sub_22C9DE214();
  v4 = v3;
  sub_22C9DE204();
  *v5 = v4;
  v6 = *v2;
  sub_22C9D6EA4();
  *v7 = v6;
  *(v4 + 64) = v0;

  if (!v0)
  {
    *(v4 + 72) = v1;
  }

  sub_22C9DE1F4();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_22C9DDA68()
{
  sub_22C9D6F3C();
  v1 = *(v0 + 72);
  (*(v0 + 40))(v1, 0);

  sub_22C9D7050();

  return v2();
}

uint64_t sub_22C9DDAD4()
{
  v1 = v0[8];
  v2 = v0[5];
  sub_22C9D02E4(&unk_27D9E5320, &qword_22CA231E0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_22CA22F90;
  sub_22CA211A0();
  v0[2] = 0;
  v0[3] = 0xE000000000000000;
  sub_22C9DE260();
  MEMORY[0x2318BA9C0](0xD000000000000013);
  v0[4] = v1;
  sub_22C9D02E4(&unk_27D9E4D70, &qword_22CA231E8);
  sub_22CA21240();
  v4 = v0[2];
  v5 = v0[3];
  *(v3 + 56) = MEMORY[0x277D837D0];
  *(v3 + 32) = v4;
  *(v3 + 40) = v5;
  sub_22CA21430();

  v6 = v1;
  v2(0, v1);

  sub_22C9D7050();

  return v7();
}

id MSSuggestion.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

id sub_22C9DDDC8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_22CA20E10();

  v8 = [v4 initWithUnifiedIntent:a1 bundleID:v7 suggestionSource:a4];

  return v8;
}

uint64_t sub_22C9DDE50(void *a1, SEL *a2)
{
  v3 = [a1 *a2];

  if (!v3)
  {
    return 0;
  }

  v4 = sub_22CA20E20();

  return v4;
}

uint64_t sub_22C9DDEC8(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_22CA20E20();

  return v4;
}

unint64_t sub_22C9DDF28()
{
  result = qword_27D9E4DB0;
  if (!qword_27D9E4DB0)
  {
    sub_22CA209F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9E4DB0);
  }

  return result;
}

uint64_t sub_22C9DDF94(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_22C9DE05C;

  return sub_22C9DD8D0(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_22C9DE05C()
{
  sub_22C9D6F3C();
  v1 = *v0;
  sub_22C9D6EA4();
  *v2 = v1;

  sub_22C9D7050();

  return v3();
}

uint64_t sub_22C9DE14C(uint64_t a1, ...)
{

  return swift_beginAccess();
}

uint64_t sub_22C9DE17C()
{

  return sub_22CA20E10();
}

uint64_t sub_22C9DE1AC()
{

  return sub_22CA20E10();
}

uint64_t sub_22C9DE1DC(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

uint64_t sub_22C9DE224()
{

  return sub_22CA20E10();
}

uint64_t sub_22C9DE248(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

uint64_t sub_22C9DE284()
{

  return swift_beginAccess();
}

unint64_t sub_22C9DE2A4(uint64_t a1, uint64_t a2)
{
  v2 = sub_22CA21380();

  if (v2 >= 0x26)
  {
    return 38;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_22C9DE498(uint64_t a1, void *a2)
{
  v5 = sub_22C9E065C(a1, a2);
  sub_22C9DE248(v5, v6);
  *(v3 + v4) = v2;
}

uint64_t sub_22C9DE588(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  sub_22CA209F0();
  sub_22C9DAE90();
  MEMORY[0x28223BE20](v7);
  sub_22C9E05D0();
  v10 = v9 - v8;
  (*(v11 + 16))(v9 - v8, a1);
  return a5(v10);
}

uint64_t sub_22C9DE654@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  sub_22C9DE1DC(v2 + *a1, v7);
  sub_22CA209F0();
  sub_22C9E054C();
  return (*(v5 + 16))(a2, v2 + v4);
}

uint64_t sub_22C9DE6D4(uint64_t a1, void *a2)
{
  sub_22C9E065C(a1, a2);
  swift_beginAccess();
  sub_22CA209F0();
  sub_22C9E054C();
  (*(v5 + 40))(v3 + v4, v2);
  return swift_endAccess();
}

id MSMediaContainer.init(nowPlayingEvents:playMediaIntents:playMediaAppIntents:startDate:endDate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = OBJC_IVAR____TtC14MediaSuggester16MSMediaContainer_nowPlayingEvents;
  *&v5[OBJC_IVAR____TtC14MediaSuggester16MSMediaContainer_nowPlayingEvents] = 0;
  v12 = OBJC_IVAR____TtC14MediaSuggester16MSMediaContainer_playMediaIntents;
  *&v5[OBJC_IVAR____TtC14MediaSuggester16MSMediaContainer_playMediaIntents] = 0;
  v13 = OBJC_IVAR____TtC14MediaSuggester16MSMediaContainer_playMediaAppIntents;
  *&v5[OBJC_IVAR____TtC14MediaSuggester16MSMediaContainer_playMediaAppIntents] = 0;
  sub_22C9DE248(&v5[v11], v24);
  *&v5[v11] = a1;
  sub_22C9DE248(&v5[v12], v23);
  *&v5[v12] = a2;
  sub_22C9DE248(&v5[v13], v22);
  *&v5[v13] = a3;

  v14 = OBJC_IVAR____TtC14MediaSuggester16MSMediaContainer_startDate;
  v15 = sub_22CA209F0();
  v16 = *(v15 - 8);
  v17 = *(v16 + 16);
  v17(&v5[v14], a4, v15);
  v17(&v5[OBJC_IVAR____TtC14MediaSuggester16MSMediaContainer_endDate], a5, v15);
  v21.receiver = v5;
  v21.super_class = type metadata accessor for MSMediaContainer(0);
  v18 = objc_msgSendSuper2(&v21, sel_init);
  v19 = *(v16 + 8);
  v19(a5, v15);
  v19(a4, v15);
  return v18;
}

uint64_t type metadata accessor for MSMediaContainer(uint64_t a1)
{
  result = qword_27D9E4DC0;
  if (!qword_27D9E4DC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_22C9DE9C8()
{
  sub_22C9E0670();
  v24 = v1;
  v2 = sub_22CA209F0();
  sub_22C9DAE90();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  sub_22C9E05C0();
  v8 = v6 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v24 - v10;
  v12 = OBJC_IVAR____TtC14MediaSuggester16MSMediaContainer_nowPlayingEvents;
  sub_22C9DE1DC(v0 + OBJC_IVAR____TtC14MediaSuggester16MSMediaContainer_nowPlayingEvents, &v28);
  v13 = *(v0 + v12);
  v14 = OBJC_IVAR____TtC14MediaSuggester16MSMediaContainer_playMediaIntents;
  sub_22C9E0568(v0 + OBJC_IVAR____TtC14MediaSuggester16MSMediaContainer_playMediaIntents);
  v15 = *(v0 + v14);
  v16 = OBJC_IVAR____TtC14MediaSuggester16MSMediaContainer_playMediaAppIntents;
  sub_22C9DE1DC(v0 + OBJC_IVAR____TtC14MediaSuggester16MSMediaContainer_playMediaAppIntents, &v27);
  v17 = *(v0 + v16);
  v18 = OBJC_IVAR____TtC14MediaSuggester16MSMediaContainer_startDate;
  sub_22C9DE1DC(v0 + OBJC_IVAR____TtC14MediaSuggester16MSMediaContainer_startDate, &v26);
  v19 = *(v4 + 16);
  v19(v11, v0 + v18, v2);
  v20 = OBJC_IVAR____TtC14MediaSuggester16MSMediaContainer_endDate;
  sub_22C9DE1DC(v0 + OBJC_IVAR____TtC14MediaSuggester16MSMediaContainer_endDate, &v25);
  v19(v8, v0 + v20, v2);
  v21 = type metadata accessor for MSMediaContainer(0);
  objc_allocWithZone(v21);

  v22 = MSMediaContainer.init(nowPlayingEvents:playMediaIntents:playMediaAppIntents:startDate:endDate:)(v13, v15, v17, v11, v8);
  v23 = v24;
  v24[3] = v21;
  *v23 = v22;
  sub_22C9E0688();
}

void sub_22C9DEBE4(uint64_t a1)
{
  sub_22C9E0670();
  v3 = v2;
  v4 = sub_22CA209F0();
  sub_22C9DAE90();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  sub_22C9E05D0();
  v23 = v9 - v8;
  v10 = OBJC_IVAR____TtC14MediaSuggester16MSMediaContainer_nowPlayingEvents;
  sub_22C9DE1DC(v1 + OBJC_IVAR____TtC14MediaSuggester16MSMediaContainer_nowPlayingEvents, &v26);
  if (*(v1 + v10))
  {

    sub_22CA20EB0();
    sub_22C9E0614();
  }

  v11 = sub_22C9E050C();
  sub_22C9E04EC();
  swift_unknownObjectRelease();

  v12 = OBJC_IVAR____TtC14MediaSuggester16MSMediaContainer_playMediaIntents;
  sub_22C9E0568(v1 + OBJC_IVAR____TtC14MediaSuggester16MSMediaContainer_playMediaIntents);
  if (*(v1 + v12))
  {
    type metadata accessor for MSPlayMediaIntent();
    sub_22C9E0614();

    sub_22CA20EB0();
    sub_22C9E0614();
  }

  v13 = sub_22C9E050C();
  sub_22C9E04EC();
  swift_unknownObjectRelease();

  if (*(v1 + v12))
  {
    type metadata accessor for MSPlayMediaIntent();
    sub_22C9E0614();

    sub_22CA20EB0();
    sub_22C9E0614();
  }

  v14 = sub_22CA20E10();
  sub_22C9E04EC();
  swift_unknownObjectRelease();

  v15 = OBJC_IVAR____TtC14MediaSuggester16MSMediaContainer_startDate;
  sub_22C9DE1DC(v1 + OBJC_IVAR____TtC14MediaSuggester16MSMediaContainer_startDate, &v25);
  v22 = *(v6 + 16);
  v22(v23, v1 + v15, v4);
  v16 = sub_22CA209A0();
  v17 = *(v6 + 8);
  v17(v23, v4);
  v18 = sub_22C9E05E0();
  sub_22C9E04EC();

  v19 = OBJC_IVAR____TtC14MediaSuggester16MSMediaContainer_endDate;
  sub_22C9DE1DC(v1 + OBJC_IVAR____TtC14MediaSuggester16MSMediaContainer_endDate, &v24);
  v22(v23, v1 + v19, v4);
  v20 = sub_22CA209A0();
  v17(v23, v4);
  v21 = sub_22C9E062C();
  [v3 encodeObject:v20 forKey:v21];

  sub_22C9E0688();
}

void MSMediaContainer.init(coder:)(uint64_t a1)
{
  sub_22C9E0670();
  v3 = v2;
  v4 = sub_22C9D02E4(&unk_27D9E4F00, &unk_22CA232D0);
  MEMORY[0x28223BE20](v4 - 8);
  sub_22C9E05C0();
  v69 = (v5 - v6);
  MEMORY[0x28223BE20](v7);
  v9 = &v63 - v8;
  v10 = sub_22CA209F0();
  sub_22C9DAE90();
  v70 = v11;
  MEMORY[0x28223BE20](v12);
  sub_22C9E05C0();
  v15 = (v13 - v14);
  MEMORY[0x28223BE20](v16);
  v71 = &v63 - v17;
  v18 = OBJC_IVAR____TtC14MediaSuggester16MSMediaContainer_nowPlayingEvents;
  *&v1[OBJC_IVAR____TtC14MediaSuggester16MSMediaContainer_nowPlayingEvents] = 0;
  v19 = OBJC_IVAR____TtC14MediaSuggester16MSMediaContainer_playMediaIntents;
  *&v1[OBJC_IVAR____TtC14MediaSuggester16MSMediaContainer_playMediaIntents] = 0;
  v20 = OBJC_IVAR____TtC14MediaSuggester16MSMediaContainer_playMediaAppIntents;
  *&v1[OBJC_IVAR____TtC14MediaSuggester16MSMediaContainer_playMediaAppIntents] = 0;
  v21 = sub_22C9E050C();
  v22 = sub_22C9E06B8(v21, sel_decodeObjectForKey_);

  if (v22)
  {
    sub_22CA21130();
    swift_unknownObjectRelease();
  }

  else
  {
    sub_22C9E0608();
  }

  sub_22C9E04DC();
  if (!v23)
  {

    goto LABEL_24;
  }

  v24 = sub_22C9D02E4(&qword_27D9E4D98, &qword_22CA232E0);
  if (sub_22C9E0584(v24, v25, v26, v24))
  {
    v67 = v10;
    v68 = v73;
    v27 = sub_22C9E050C();
    v28 = [v3 decodeObjectForKey_];

    if (v28)
    {
      sub_22CA21130();
      swift_unknownObjectRelease();
    }

    else
    {
      sub_22C9E0608();
    }

    sub_22C9E04DC();
    if (v29)
    {
      v30 = sub_22C9D02E4(&qword_27D9E4DA0, &qword_22CA232E8);
      if ((sub_22C9E0584(v30, v31, v32, v30) & 1) == 0)
      {

        goto LABEL_29;
      }

      v66 = v73;
      v33 = sub_22CA20E10();
      v34 = sub_22C9E06B8(v33, sel_decodeObjectForKey_);

      if (v34)
      {
        sub_22CA21130();
        swift_unknownObjectRelease();
      }

      else
      {
        sub_22C9E0608();
      }

      sub_22C9E04DC();
      if (v35)
      {
        v36 = sub_22C9D02E4(&qword_27D9E4DA8, &qword_22CA232F0);
        if (sub_22C9E0584(v36, v37, v38, v36))
        {
          v65 = v73;
          v39 = sub_22C9E05E0();
          v40 = sub_22C9E06B8(v39, sel_decodeObjectForKey_);

          if (v40)
          {
            sub_22CA21130();
            swift_unknownObjectRelease();
          }

          else
          {
            sub_22C9E0608();
          }

          v44 = v67;
          sub_22C9E04DC();
          if (v45)
          {
            v46 = swift_dynamicCast();
            sub_22C9D0B98(v9, v46 ^ 1u, 1, v44);
            v47 = sub_22C9E0650();
            if (sub_22C9D68B0(v47, v48, v44) == 1)
            {
            }

            else
            {
              v64 = *(v70 + 32);
              v64(v71, v9, v44);
              v51 = sub_22C9E062C();
              v52 = sub_22C9E06B8(v51, sel_decodeObjectForKey_);

              if (v52)
              {
                sub_22CA21130();
                swift_unknownObjectRelease();
              }

              else
              {
                sub_22C9E0608();
              }

              v9 = v69;
              sub_22C9E04DC();
              if (v53)
              {
                v54 = v67;
                v55 = swift_dynamicCast();
                sub_22C9D0B98(v9, v55 ^ 1u, 1, v54);
                v56 = sub_22C9E0650();
                if (sub_22C9D68B0(v56, v57, v54) != 1)
                {
                  v60 = v9;
                  v61 = v64;
                  v64(v15, v60, v54);
                  sub_22C9DE248(&v1[v18], v75);
                  *&v1[v18] = v68;

                  sub_22C9DE248(&v1[v19], &v74);
                  *&v1[v19] = v66;

                  sub_22C9DE248(&v1[v20], &v73);
                  *&v1[v20] = v65;

                  v61(&v1[OBJC_IVAR____TtC14MediaSuggester16MSMediaContainer_startDate], v71, v54);
                  v61(&v1[OBJC_IVAR____TtC14MediaSuggester16MSMediaContainer_endDate], v15, v54);
                  v62 = type metadata accessor for MSMediaContainer(0);
                  v72.receiver = v1;
                  v72.super_class = v62;
                  objc_msgSendSuper2(&v72, sel_init);

                  goto LABEL_27;
                }
              }

              else
              {

                sub_22C9DF60C(v75, &unk_27D9E4D60, &unk_22CA22BE0);
                v58 = sub_22C9E0650();
                v54 = v67;
                sub_22C9D0B98(v58, v59, 1, v67);
              }

              (*(v70 + 8))(v71, v54);
            }
          }

          else
          {

            sub_22C9DF60C(v75, &unk_27D9E4D60, &unk_22CA22BE0);
            v49 = sub_22C9E0650();
            sub_22C9D0B98(v49, v50, 1, v44);
          }

          v41 = &unk_27D9E4F00;
          v42 = &unk_22CA232D0;
          v43 = v9;
          goto LABEL_25;
        }

LABEL_29:

        goto LABEL_26;
      }
    }

    else
    {
    }

LABEL_24:
    v41 = &unk_27D9E4D60;
    v42 = &unk_22CA22BE0;
    v43 = v75;
LABEL_25:
    sub_22C9DF60C(v43, v41, v42);
    goto LABEL_26;
  }

LABEL_26:

  type metadata accessor for MSMediaContainer(0);
  swift_deallocPartialClassInstance();
LABEL_27:
  sub_22C9E0688();
}

uint64_t sub_22C9DF60C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  sub_22C9D02E4(a2, a3);
  sub_22C9E054C();
  (*(v4 + 8))(a1);
  return a1;
}

void sub_22C9DF6F4()
{
  sub_22C9E0670();
  v1 = v0;
  sub_22CA209F0();
  sub_22C9DAE90();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  sub_22C9E05D0();
  v5 = OBJC_IVAR____TtC14MediaSuggester16MSMediaContainer_nowPlayingEvents;
  sub_22C9DE1DC(v1 + OBJC_IVAR____TtC14MediaSuggester16MSMediaContainer_nowPlayingEvents, &v81);
  v6 = *(v1 + v5);
  if (!v6)
  {
    v24 = OBJC_IVAR____TtC14MediaSuggester16MSMediaContainer_playMediaIntents;
    sub_22C9E0568(v1 + OBJC_IVAR____TtC14MediaSuggester16MSMediaContainer_playMediaIntents);
    v25 = *(v1 + v24);
    if (v25)
    {
      v77 = 0;
      v78 = 0xE000000000000000;

      sub_22CA211A0();
      v72[0] = 0;
      v72[1] = 0xE000000000000000;
      MEMORY[0x2318BA9C0](0xD000000000000023, 0x800000022CA26CB0);
      v26 = type metadata accessor for MSPlayMediaIntent();
      v27 = MEMORY[0x2318BAA20](v25, v26);
      v29 = v28;

      MEMORY[0x2318BA9C0](v27, v29);

      sub_22C9E049C();
      sub_22C9E052C();
      v30 = *(v3 + 16);
      v31 = sub_22C9E04CC();
      v30(v31);
      sub_22C9DDF28();
      sub_22C9E055C();
      v32 = sub_22CA21340();
      MEMORY[0x2318BA9C0](v32);

      v33 = *(v3 + 8);
      v34 = sub_22C9D709C();
      v33(v34);
      sub_22C9E05A4();
      sub_22C9DE1DC(v1 + OBJC_IVAR____TtC14MediaSuggester16MSMediaContainer_endDate, &v73);
      v35 = sub_22C9E04CC();
      v30(v35);
      sub_22C9E055C();
      v36 = sub_22CA21340();
      MEMORY[0x2318BA9C0](v36);

      v37 = sub_22C9D709C();
      v33(v37);
      sub_22C9E06A0();
      goto LABEL_14;
    }

    v55 = OBJC_IVAR____TtC14MediaSuggester16MSMediaContainer_playMediaAppIntents;
    sub_22C9E052C();
    v56 = *(v1 + v55);
    v73 = 0;
    v74 = 0xE000000000000000;
    if (v56)
    {

      sub_22CA211A0();
      v75 = 0;
      v76 = 0xE000000000000000;
      MEMORY[0x2318BA9C0](0xD000000000000026, 0x800000022CA26C80);
      v57 = type metadata accessor for MSPlayMediaAppIntent();
      v58 = MEMORY[0x2318BAA20](v56, v57);
      v60 = v59;

      MEMORY[0x2318BA9C0](v58, v60);

      sub_22C9E049C();
    }

    else
    {
      sub_22CA211A0();

      v75 = 0xD00000000000001CLL;
      v76 = 0x800000022CA26C60;
    }

    sub_22C9DE1DC(v1 + OBJC_IVAR____TtC14MediaSuggester16MSMediaContainer_startDate, &v73);
    v64 = *(v3 + 16);
    v65 = sub_22C9E04CC();
    v64(v65);
    sub_22C9DDF28();
    sub_22C9E055C();
    v66 = sub_22CA21340();
    MEMORY[0x2318BA9C0](v66);

    v67 = *(v3 + 8);
    v68 = sub_22C9D709C();
    v67(v68);
    sub_22C9E05A4();
    sub_22C9DE1DC(v1 + OBJC_IVAR____TtC14MediaSuggester16MSMediaContainer_endDate, v72);
    v69 = sub_22C9E04CC();
    v64(v69);
    sub_22C9E055C();
    v70 = sub_22CA21340();
    MEMORY[0x2318BA9C0](v70);

    v71 = sub_22C9D709C();
    v67(v71);
LABEL_13:
    sub_22C9E06A0();
    goto LABEL_14;
  }

  v7 = OBJC_IVAR____TtC14MediaSuggester16MSMediaContainer_playMediaIntents;
  sub_22C9DE1DC(v1 + OBJC_IVAR____TtC14MediaSuggester16MSMediaContainer_playMediaIntents, v72);
  v8 = *(v1 + v7);
  if (!v8)
  {
    v38 = OBJC_IVAR____TtC14MediaSuggester16MSMediaContainer_playMediaAppIntents;
    sub_22C9E0568(v1 + OBJC_IVAR____TtC14MediaSuggester16MSMediaContainer_playMediaAppIntents);
    v39 = *(v1 + v38);
    if (!v39)
    {
      v77 = 0;
      v78 = 0xE000000000000000;

      sub_22CA211A0();

      v77 = 0xD000000000000023;
      v78 = 0x800000022CA26CE0;
      v61 = MEMORY[0x2318BAA20](v6, &type metadata for MSMediaItem);
      v63 = v62;

      MEMORY[0x2318BA9C0](v61, v63);

      sub_22C9E06A0();
      goto LABEL_14;
    }

    v77 = 0;
    v78 = 0xE000000000000000;

    sub_22CA211A0();
    v75 = v77;
    v76 = v78;
    MEMORY[0x2318BA9C0](0xD000000000000023, 0x800000022CA26CE0);
    v40 = MEMORY[0x2318BAA20](v6, &type metadata for MSMediaItem);
    v42 = v41;

    MEMORY[0x2318BA9C0](v40, v42);

    MEMORY[0x2318BA9C0](0xD000000000000017, 0x800000022CA26D10);
    v43 = type metadata accessor for MSPlayMediaAppIntent();
    v44 = MEMORY[0x2318BAA20](v39, v43);
    v46 = v45;

    MEMORY[0x2318BA9C0](v44, v46);

    sub_22C9E049C();
    sub_22C9E052C();
    v47 = *(v3 + 16);
    v48 = sub_22C9E04CC();
    v47(v48);
    sub_22C9DDF28();
    sub_22C9E055C();
    v49 = sub_22CA21340();
    MEMORY[0x2318BA9C0](v49);

    v50 = *(v3 + 8);
    v51 = sub_22C9D709C();
    v50(v51);
    sub_22C9E05A4();
    sub_22C9DE1DC(v1 + OBJC_IVAR____TtC14MediaSuggester16MSMediaContainer_endDate, &v73);
    v52 = sub_22C9E04CC();
    v47(v52);
    sub_22C9E055C();
    v53 = sub_22CA21340();
    MEMORY[0x2318BA9C0](v53);

    v54 = sub_22C9D709C();
    v50(v54);
    goto LABEL_13;
  }

  v79 = 0;
  v80 = 0xE000000000000000;

  sub_22CA211A0();
  v73 = v79;
  v74 = v80;
  MEMORY[0x2318BA9C0](0xD000000000000023, 0x800000022CA26CE0);
  v9 = MEMORY[0x2318BAA20](v6, &type metadata for MSMediaItem);
  v11 = v10;

  MEMORY[0x2318BA9C0](v9, v11);

  MEMORY[0x2318BA9C0](0xD000000000000014, 0x800000022CA26D30);
  v12 = type metadata accessor for MSPlayMediaIntent();
  v13 = MEMORY[0x2318BAA20](v8, v12);
  v15 = v14;

  MEMORY[0x2318BA9C0](v13, v15);

  sub_22C9E049C();
  sub_22C9E0568(v1 + OBJC_IVAR____TtC14MediaSuggester16MSMediaContainer_startDate);
  v16 = *(v3 + 16);
  v17 = sub_22C9E04CC();
  v16(v17);
  sub_22C9DDF28();
  sub_22C9E055C();
  v18 = sub_22CA21340();
  MEMORY[0x2318BA9C0](v18);

  v19 = *(v3 + 8);
  v20 = sub_22C9D709C();
  v19(v20);
  sub_22C9E05A4();
  sub_22C9E052C();
  v21 = sub_22C9E04CC();
  v16(v21);
  sub_22C9E055C();
  v22 = sub_22CA21340();
  MEMORY[0x2318BA9C0](v22);

  v23 = sub_22C9D709C();
  v19(v23);
  sub_22C9E06A0();
LABEL_14:
  sub_22C9E0688();
}

id MSMediaContainer.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MSMediaContainer.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MSMediaContainer(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_22C9E002C(uint64_t a1)
{
  result = sub_22CA209F0();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_22C9E049C()
{

  JUMPOUT(0x2318BA9C0);
}

__n128 sub_22C9E04DC()
{
  result = *(v0 - 144);
  *(v0 - 128) = *(v0 - 160);
  *(v0 - 112) = result;
  return result;
}

id sub_22C9E04EC()
{

  return [v0 (v3 + 3842)];
}

uint64_t sub_22C9E050C()
{

  return sub_22CA20E10();
}

uint64_t sub_22C9E052C()
{

  return swift_beginAccess();
}

uint64_t sub_22C9E0568(uint64_t a1)
{

  return swift_beginAccess();
}

uint64_t sub_22C9E0584(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_dynamicCast();
}

void sub_22C9E05A4()
{

  JUMPOUT(0x2318BA9C0);
}

uint64_t sub_22C9E05E0()
{

  return sub_22CA20E10();
}

double sub_22C9E0608()
{
  result = 0.0;
  *(v0 - 160) = 0u;
  *(v0 - 144) = 0u;
  return result;
}

uint64_t sub_22C9E062C()
{

  return sub_22CA20E10();
}

void sub_22C9E06A0()
{

  JUMPOUT(0x2318BA9C0);
}

id sub_22C9E06B8(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t sub_22C9E0714()
{
  sub_22CA20BD0();
  swift_allocObject();
  *(v0 + 16) = sub_22CA20BC0();
  return v0;
}

uint64_t sub_22C9E07C0()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

void *sub_22C9E081C@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  result = sub_22C9E06D0(*a1);
  if (!v2)
  {
    v5 = MEMORY[0x277D84FA0];
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

void *sub_22C9E0854(uint64_t a1)
{
  v2 = v1;
  sub_22CA20C80();
  *(v1 + 56) = 0u;
  *(v1 + 72) = 0u;
  *(v1 + 88) = 0;
  swift_allocObject();
  *(v1 + 96) = sub_22CA20C70();
  type metadata accessor for MSPlayMediaIntentWorkoutCandidateSourceRequestTransformer();
  v3 = swift_allocObject();
  sub_22C9E0714();
  v2[5] = v3;
  sub_22C9D02E4(&qword_27D9E4E08, &qword_22CA234E0);
  swift_allocObject();
  v2[6] = sub_22CA20B70();
  type metadata accessor for MSPlayMediaIntentWorkoutCandidateSource();
  swift_allocObject();

  v2[4] = sub_22C9E2544(v4);
  sub_22CA211A0();
  MEMORY[0x2318BA9C0](0x696669746E656469, 0xEC000000203A7265);
  sub_22C9E1100(&qword_27D9E4E20, 255, MEMORY[0x277CE9B38], MEMORY[0x277CE9B08]);

  v5 = sub_22CA21340();
  MEMORY[0x2318BA9C0](v5);

  MEMORY[0x2318BA9C0](0xD000000000000017, 0x800000022CA26F20);
  sub_22CA21240();
  MEMORY[0x2318BA9C0](0xD000000000000016, 0x800000022CA26F40);
  sub_22CA21240();
  MEMORY[0x2318BA9C0](0xD000000000000014, 0x800000022CA26F60);
  sub_22CA21240();

  v2[2] = 0;
  v2[3] = 0xE000000000000000;
  return v2;
}

uint64_t *sub_22C9E0B70()
{

  sub_22C9E10BC(v0[7], v0[8], v0[9], v0[10]);

  return v0;
}

uint64_t sub_22C9E0BC4()
{
  sub_22C9E0B70();

  return MEMORY[0x2821FE8D8](v0, 104, 7);
}

uint64_t sub_22C9E0C4C()
{
  v1 = *(*v0 + 56);
  sub_22C9E1078(v1, *(*v0 + 64), *(*v0 + 72), *(*v0 + 80));
  return v1;
}

uint64_t sub_22C9E0CAC(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = type metadata accessor for MSPlayMediaIntentWorkoutCandidatePipeline();
  v7 = sub_22C9E1100(&qword_27D9E4C70, v6, type metadata accessor for MSPlayMediaIntentWorkoutCandidatePipeline, &unk_22CA234E8);
  *v4 = v2;
  v4[1] = sub_22C9D8320;

  return MEMORY[0x28213B5A0](a2, v5, v7);
}

uint64_t sub_22C9E0D98()
{
  v1 = *(*v0 + 16);

  return v1;
}

unint64_t sub_22C9E0F84()
{
  result = qword_27D9E4E00;
  if (!qword_27D9E4E00)
  {
    sub_22C9D0584(&qword_27D9E4E08, &qword_22CA234E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9E4E00);
  }

  return result;
}

void sub_22C9E1078(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }
}

void sub_22C9E10BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }
}

uint64_t sub_22C9E1100(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_22C9E1150(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[26] = a3;
  v4[27] = v3;
  v4[24] = a1;
  v4[25] = a2;
  v5 = sub_22CA209F0();
  v4[28] = v5;
  v4[29] = *(v5 - 8);
  v4[30] = swift_task_alloc();
  v4[31] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22C9E1220, 0, 0);
}

uint64_t sub_22C9E1220()
{
  v39 = v0;
  if (qword_28143A320 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 200);
  v2 = sub_22CA20B10();
  *(v0 + 256) = sub_22C9D0494(v2, &unk_28143A4E0);
  v3 = v1;

  v4 = sub_22CA20AF0();
  v5 = sub_22CA21010();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 216);
    v7 = *(v0 + 200);
    v8 = swift_slowAlloc();
    v38 = sub_22C9E29F4();
    *v8 = 136315394;
    v9 = v7 + OBJC_IVAR___MSSuggesterRequestOptions_requestID;
    v10 = *(v7 + OBJC_IVAR___MSSuggesterRequestOptions_requestID);
    v11 = *(v9 + 8);

    v12 = sub_22C9D60B0(v10, v11, &v38);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2080;
    *(v0 + 184) = *(v6 + 16);
    sub_22CA20C20();
    sub_22C9E29C8();
    sub_22C9E2934(v13, 255, v14, MEMORY[0x277CE9B08]);
    v15 = sub_22CA21340();
    v17 = sub_22C9D60B0(v15, v16, &v38);

    *(v8 + 14) = v17;
    _os_log_impl(&dword_22C9CA000, v4, v5, "<requestID: %s> %s: Get suggestions (with features)", v8, 0x16u);
    swift_arrayDestroy();
    sub_22C9D70C0();
    sub_22C9D70C0();
  }

  v18 = *(v0 + 200);
  *(v0 + 120) = MEMORY[0x277D84FA0];
  if ([v18 suggestionType])
  {
    v19 = *(v0 + 200);

    v20 = sub_22CA20AF0();
    v21 = sub_22CA21010();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = *(v0 + 200);
      v23 = swift_slowAlloc();
      v38 = sub_22C9E29F4();
      *v23 = 136315394;
      v24 = v22 + OBJC_IVAR___MSSuggesterRequestOptions_requestID;
      v25 = *(v22 + OBJC_IVAR___MSSuggesterRequestOptions_requestID);
      v26 = *(v24 + 8);

      sub_22C9D60B0(v25, v26, &v38);

      sub_22C9E29E0();
      *(v0 + 128) = v27;
      sub_22CA20C20();
      sub_22C9E29C8();
      sub_22C9E2934(v28, 255, v29, MEMORY[0x277CE9B08]);
      v30 = sub_22CA21340();
      v32 = sub_22C9D60B0(v30, v31, &v38);

      *(v23 + 14) = v32;
      _os_log_impl(&dword_22C9CA000, v20, v21, "<requestID: %s> %s: Returning no suggestions - suggestionType is not workout", v23, 0x16u);
      swift_arrayDestroy();
      sub_22C9D70C0();
      sub_22C9D70C0();
    }

    sub_22C9E28F0();
    sub_22CA169F0(MEMORY[0x277D84F90]);
    type metadata accessor for MSSuggestion(0);
    sub_22CA20CB0();

    v33 = *(v0 + 8);

    return v33();
  }

  else
  {
    v35 = *(v0 + 200);
    *(v0 + 264) = [objc_allocWithZone(type metadata accessor for MSWorkoutMediaItem()) init];
    sub_22CA209E0();
    sub_22CA209B0();
    v36 = [v35 allowedBundleIdentifiers];
    *(v0 + 272) = sub_22CA20EC0();

    v37 = swift_task_alloc();
    *(v0 + 280) = v37;
    *v37 = v0;
    v37[1] = sub_22C9E1748;

    return sub_22C9ED2E0();
  }
}

uint64_t sub_22C9E1748(uint64_t a1)
{
  *(*v1 + 288) = a1;

  return MEMORY[0x2822009F8](sub_22C9E1868, 0, 0);
}

void sub_22C9E1868()
{
  v135 = v0;
  v114 = v0 + 18;
  v1 = v0[36];
  v132 = MEMORY[0x277D84F90];
  v2 = v1 & 0xC000000000000001;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v3 = sub_22CA21280();
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v128 = v3 | 0x8000000000000000;
    v1 = v0[36];
  }

  else
  {
    v7 = -1 << *(v1 + 32);
    v5 = ~v7;
    v4 = v1 + 64;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = v9 & *(v1 + 64);
    v128 = v0[36];
  }

  v123 = v1;
  v127 = (v5 + 64) >> 6;

  v10 = 0;
  v11 = MEMORY[0x277D84F90];
  v12 = MEMORY[0x277D84F90];
  v131 = v0;
LABEL_8:
  v13 = v127;
  v14 = v128;
  while ((v14 & 0x8000000000000000) != 0)
  {
    v18 = sub_22CA212C0();
    if (!v18 || (v0[22] = v18, type metadata accessor for MSWorkoutItem(0), swift_dynamicCast(), v17 = v0[21], v130 = v6, !v17))
    {
LABEL_57:

      sub_22C9E297C(v128);
      v133 = v11;
      v78 = sub_22C9E6DA0();
      v79 = v12 & 0xFFFFFFFFFFFFFF8;

      v80 = 0;
      v81 = MEMORY[0x277D837D0];
      while (v78 != v80)
      {
        if (v80 >= *(v79 + 16))
        {
          goto LABEL_70;
        }

        sub_22C9D02E4(&qword_27D9E4E48, &unk_22CA243F0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_22CA22F90;
        *(inited + 32) = 0xD000000000000013;
        *(inited + 40) = 0x800000022CA25DF0;
        *(inited + 72) = v81;
        strcpy((inited + 48), "consumedMedia");
        *(inited + 62) = -4864;
        v83 = sub_22CA20DD0();
        v84 = objc_allocWithZone(MEMORY[0x277CBFED0]);
        sub_22CA17474(v83);
        MEMORY[0x2318BA9F0]();
        if (*((v133 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v133 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_22CA20EE0();
        }

        sub_22CA20F00();
        v11 = v133;
        ++v80;
        v0 = v131;
      }

      v85 = v0[25];

      swift_bridgeObjectRetain_n();
      v86 = v85;

      v87 = sub_22CA20AF0();
      v88 = sub_22CA21010();

      if (os_log_type_enabled(v87, v88))
      {
        v89 = v0[25];
        v90 = swift_slowAlloc();
        v134[0] = sub_22C9E29F4();
        *v90 = 136315650;
        v91 = v89 + OBJC_IVAR___MSSuggesterRequestOptions_requestID;
        v92 = *(v89 + OBJC_IVAR___MSSuggesterRequestOptions_requestID);
        v93 = *(v91 + 8);

        sub_22C9D60B0(v92, v93, v134);

        sub_22C9E29E0();
        v0[17] = v94;
        sub_22CA20C20();
        sub_22C9E29C8();
        sub_22C9E2934(v95, 255, v96, MEMORY[0x277CE9B08]);
        v97 = sub_22CA21340();
        v99 = sub_22C9D60B0(v97, v98, v134);

        *(v90 + 14) = v99;
        *(v90 + 22) = 2048;
        v100 = sub_22C9E6DA0();

        *(v90 + 24) = v100;

        _os_log_impl(&dword_22C9CA000, v87, v88, "<requestID: %s> %s: Returning %ld suggestions with features", v90, 0x20u);
        swift_arrayDestroy();
        sub_22C9D70C0();
        sub_22C9D70C0();
      }

      else
      {
        swift_bridgeObjectRelease_n();
      }

      v101 = v0[33];
      v103 = v0[30];
      v102 = v0[31];
      v104 = v0[28];
      v105 = v0[29];
      sub_22C9E28F0();
      sub_22CA169F0(v11);
      type metadata accessor for MSSuggestion(0);
      sub_22CA20CB0();

      v106 = *(v105 + 8);
      v106(v103, v104);
      v106(v102, v104);

      v107 = v0[1];

      v107();
      return;
    }

LABEL_18:
    if (v2)
    {
      v129 = v17;
      v19 = v17;
      v20 = sub_22CA212A0();

      if (!v20)
      {
        goto LABEL_28;
      }

      v0[20] = v20;
      type metadata accessor for MSMediaContainer(0);
      swift_dynamicCast();
      v19 = v0[19];
      if (v19)
      {
LABEL_21:
        v21 = OBJC_IVAR____TtC14MediaSuggester16MSMediaContainer_playMediaIntents;
        swift_beginAccess();
        v22 = *&v19[v21];
        if (!v22)
        {

          goto LABEL_28;
        }

        v25 = v0[25];
        v121 = sub_22C9E6DA0();
        v112 = OBJC_IVAR____TtC14MediaSuggester13MSWorkoutItem_workoutType;
        v108 = v22;
        v109 = (v25 + OBJC_IVAR___MSSuggesterRequestOptions_requestID);
        v119 = v22 & 0xFFFFFFFFFFFFFF8;
        v120 = v22 & 0xC000000000000001;
        v115 = v22 + 32;

        v26 = 0;
        v117 = v4;
        v118 = v2;
        v116 = v19;
        while (1)
        {
LABEL_30:
          if (v26 == v121)
          {

            v6 = v130;
            goto LABEL_8;
          }

          if (v120)
          {
            v27 = MEMORY[0x2318BAD10](v26, v108);
          }

          else
          {
            if (v26 >= *(v119 + 16))
            {
              goto LABEL_72;
            }

            v27 = *(v115 + 8 * v26);
          }

          v28 = __OFADD__(v26, 1);
          v29 = v26 + 1;
          if (v28)
          {
            goto LABEL_71;
          }

          v125 = v29;
          v126 = v12;
          v30 = OBJC_IVAR____TtC14MediaSuggester17MSPlayMediaIntent_intent;
          v31 = *&v27[OBJC_IVAR____TtC14MediaSuggester17MSPlayMediaIntent_intent];
          v32 = &v27[OBJC_IVAR____TtC14MediaSuggester17MSPlayMediaIntent_bundleID];
          v33 = v27;
          v34 = objc_allocWithZone(MSUnifiedMediaIntent);
          v35 = v31;

          v36 = sub_22CA20E10();

          v37 = [v34 initWithIntent:v35 bundleID:v36];

          v38 = *v32;
          v39 = v32[1];
          v40 = *&v33[OBJC_IVAR____TtC14MediaSuggester17MSPlayMediaIntent_suggestionSource];
          v41 = objc_allocWithZone(MSSuggestion);
          v42 = v37;

          v124 = v42;
          v43 = sub_22C9DDDC8(v42, v38, v39, v40);
          [v43 setIntentDate_];
          [v43 setIntent_];
          v44 = sub_22C9DDEBC(v43);
          if (!v45)
          {
            break;
          }

          v46 = v44;
          v47 = v45;
          v122 = v33;
          v48 = v131[15];
          v19 = v116;
          if (*(v48 + 16))
          {
            sub_22CA21440();
            sub_22CA20E60();
            v49 = sub_22CA21490();
            v50 = ~(-1 << *(v48 + 32));
            while (1)
            {
              v51 = v49 & v50;
              if (((*(v48 + 56 + (((v49 & v50) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v49 & v50)) & 1) == 0)
              {
                break;
              }

              v52 = (*(v48 + 48) + 16 * v51);
              if (*v52 != v46 || v47 != v52[1])
              {
                v54 = sub_22CA21360();
                v49 = v51 + 1;
                if ((v54 & 1) == 0)
                {
                  continue;
                }
              }

              v55 = v43;
              v0 = v131;
              v12 = v126;
              v11 = MEMORY[0x277D84F90];
              v4 = v117;
              v2 = v118;
              v56 = v122;
              goto LABEL_51;
            }
          }

          v57 = v131[25];

          sub_22CA15904(v134, v46, v47);

          v58 = v129;
          v59 = v57;

          v113 = v58;

          v60 = v43;
          v61 = sub_22CA20AF0();
          v62 = sub_22CA20FF0();

          if (os_log_type_enabled(v61, v62))
          {
            v111 = v62;
            v63 = swift_slowAlloc();
            v134[0] = sub_22C9E29F4();
            *v63 = 136315906;
            log = v61;
            v65 = *v109;
            v64 = v109[1];

            v66 = sub_22C9D60B0(v65, v64, v134);

            *(v63 + 4) = v66;
            *(v63 + 12) = 2080;
            v67 = sub_22C9D60B0(v46, v47, v134);

            *(v63 + 14) = v67;
            *(v63 + 22) = 2048;
            v68 = v60;
            [v60 intentDate];
            *(v63 + 24) = v69;
            *(v63 + 32) = 1024;
            v70 = v112;
            LODWORD(v67) = *&v129[v112];

            *(v63 + 34) = v67;
            _os_log_impl(&dword_22C9CA000, log, v111, "<requestID: %s> Playback event for  suggestion %s date: %f acitvityType: %d", v63, 0x26u);
            swift_arrayDestroy();
            sub_22C9D70C0();
            sub_22C9D70C0();

            v71 = v126;
            v72 = v129;
            v4 = v117;
          }

          else
          {

            v71 = v126;
            v72 = v129;
            v4 = v117;
            v70 = v112;
            v68 = v60;
          }

          [v68 intentDate];
          sub_22CA00C9C(v68, *&v72[v70], v73);

          *v114 = v68;
          v74 = swift_task_alloc();
          *(v74 + 16) = v114;
          sub_22C9F9D1C(sub_22C9E29A8, v74, v71);
          v76 = v75;

          v0 = v131;
          v56 = v68;
          v11 = MEMORY[0x277D84F90];
          if (v76)
          {
            v12 = v71;
            v55 = v122;
            v2 = v118;
            goto LABEL_51;
          }

          MEMORY[0x2318BA9F0](v77);
          v2 = v118;
          if (*((v132 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v132 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_22CA20EE0();
          }

          sub_22CA20F00();
          v12 = v132;

          v26 = v125;
        }

        v55 = v33;
        v56 = v43;
        v0 = v131;
        v12 = v126;
        v11 = MEMORY[0x277D84F90];
        v4 = v117;
        v2 = v118;
        v19 = v116;
LABEL_51:

        v26 = v125;
        goto LABEL_30;
      }

LABEL_26:
      v19 = v129;
      goto LABEL_28;
    }

    if (*(v123 + 16))
    {
      v19 = v17;
      v23 = sub_22C9FC020(v17);
      if ((v24 & 1) == 0)
      {
        goto LABEL_28;
      }

      v129 = v19;
      v19 = *(*(v123 + 56) + 8 * v23);
      if (v19)
      {
        goto LABEL_21;
      }

      goto LABEL_26;
    }

    v19 = v17;
LABEL_28:

    v13 = v127;
    v14 = v128;
    v6 = v130;
  }

  v15 = v10;
  v16 = v6;
  if (v6)
  {
LABEL_14:
    v130 = (v16 - 1) & v16;
    v17 = *(*(v14 + 48) + ((v10 << 9) | (8 * __clz(__rbit64(v16)))));
    if (!v17)
    {
      goto LABEL_57;
    }

    goto LABEL_18;
  }

  while (1)
  {
    v10 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v10 >= v13)
    {
      goto LABEL_57;
    }

    v16 = *(v4 + 8 * v10);
    ++v15;
    if (v16)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
}

uint64_t sub_22C9E2544(uint64_t a1)
{
  sub_22CA20C20();
  swift_allocObject();
  *(v1 + 16) = sub_22CA20C10();
  *(v1 + 24) = a1;
  return v1;
}

uint64_t sub_22C9E25F4()
{

  return v0;
}

uint64_t sub_22C9E261C()
{
  sub_22C9E25F4();

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_22C9E2674(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_22C9E2724;

  return sub_22C9E1150(a1, v4, v5);
}

uint64_t sub_22C9E2724()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_22C9E28F0()
{
  result = qword_27D9E4E38;
  if (!qword_27D9E4E38)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D9E4E38);
  }

  return result;
}

uint64_t sub_22C9E2934(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_22C9E29F4()
{

  return swift_slowAlloc();
}

unint64_t MSMediaType.description.getter()
{
  result = 1735290739;
  switch(*v0)
  {
    case 1:
      result = 0x74736163646F70;
      break;
    case 2:
      result = 0x6F6F626F69647561;
      break;
    case 3:
      result = 0xD000000000000010;
      break;
    case 4:
      result = 0x6E776F6E6B6E75;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t MSMediaType.hashValue.getter()
{
  v1 = *v0;
  sub_22CA21440();
  MEMORY[0x2318BAFA0](v1);
  return sub_22CA21490();
}

uint64_t sub_22C9E2B38(uint64_t a1)
{
  v2 = *v1;
  sub_22CA21440();
  MEMORY[0x2318BAFA0](v2);
  return sub_22CA21490();
}

uint64_t MSMediaItem.link.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return result;
}

uint64_t sub_22C9E2CF4@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_22C9E3C50();
  v24 = v24 && a14 == v23;
  if (!v24 && (sub_22C9E3C14(v20, v21, v22, v23) & 1) == 0)
  {
    sub_22C9E3BB8();
    v29 = a13 == v28 + 25 && v27 == a14;
    if (!v29 && (sub_22C9E3C14(v25, v26, v28 + 25, v27) & 1) == 0)
    {

      goto LABEL_24;
    }
  }

  sub_22C9E3C40();

  swift_bridgeObjectRetain_n();

  sub_22C9E3B84();
  if (!v30 || (sub_22C9E3BA4(), , , sub_22C9E3B84(), !v31))
  {

    goto LABEL_24;
  }

  if (a6)
  {
    v32 = a5 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v32 = 0;
  }

  if (a6)
  {
    v33 = a6;
  }

  else
  {
    v33 = 0xE000000000000000;
  }

  v34 = HIBYTE(v33) & 0xF;
  if ((v33 & 0x2000000000000000) == 0)
  {
    v34 = v32;
  }

  if (!v34)
  {
LABEL_24:
    sub_22C9E3BB8();
    v41 = a13 == v40 + 2 && v39 == a14;
    if (v41 || (sub_22C9E3C14(v37, v38, v40 + 2, v39) & 1) != 0)
    {
      sub_22C9E3C40();

      sub_22C9E3B84();
      if (v42)
      {
        sub_22C9E3BA4();

        sub_22C9E3B84();
        if (v43)
        {

          v36 = 1;
          goto LABEL_59;
        }
      }
    }

    sub_22C9E3BB8();
    v46 = a13 == v45 && v44 == a14;
    if (v46 || (sub_22CA21360()) && (sub_22C9E3C40(), , , sub_22C9E3B84(), v47))
    {
      sub_22C9E3BA4();

      sub_22C9E3B84();
      if (v48)
      {

        v36 = 2;
        goto LABEL_59;
      }
    }

    else
    {
    }

    sub_22C9E3C50();
    if (v24 && a14 == v52)
    {
    }

    else
    {
      v54 = sub_22C9E3C14(v49, v50, v51, v52);

      if ((v54 & 1) == 0)
      {

        goto LABEL_58;
      }
    }

    if (a2)
    {
      v55 = a1 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      v55 = 0;
    }

    if (a2)
    {
      v56 = a2;
    }

    else
    {
      v56 = 0xE000000000000000;
    }

    v57 = HIBYTE(v56) & 0xF;
    if ((v56 & 0x2000000000000000) == 0)
    {
      v57 = v55;
    }

    if (v57)
    {
      v36 = 3;
      goto LABEL_59;
    }

LABEL_58:
    v36 = 4;
    goto LABEL_59;
  }

  v36 = 0;
LABEL_59:
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a11;
  *(a9 + 72) = a12;
  *(a9 + 80) = a13;
  *(a9 + 88) = a14;
  *(a9 + 96) = v36;
  *(a9 + 104) = a10;
  return result;
}

void MSMediaItem.description.getter()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  switch(*(v0 + 96))
  {
    case 1:
      goto LABEL_15;
    case 2:
      sub_22C9E3B94();
      sub_22CA211A0();

      strcpy(v11, "[audiobook (");
      BYTE5(v11[1]) = 0;
      HIWORD(v11[1]) = -5120;
      sub_22C9E3BCC();
      sub_22C9E3BE8();
      if (!v5)
      {
        __break(1u);
LABEL_21:
        __break(1u);
LABEL_22:
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

      MEMORY[0x2318BA9C0](v4, v5);
      sub_22C9E3C80();
      if (!v3)
      {
        goto LABEL_23;
      }

      v9 = sub_22C9E3C30();
      MEMORY[0x2318BA9C0](v9);
      MEMORY[0x2318BA9C0](0x7470616863202C22, 0xED000022203A7265);
      if (!v1)
      {
        __break(1u);
LABEL_13:
        sub_22C9E3B94();
        sub_22CA211A0();

        v11[0] = 0xD000000000000010;
        v11[1] = 0x800000022CA27020;
        sub_22C9E3BCC();
        sub_22C9E3BE8();
        if (!v1)
        {
          __break(1u);
LABEL_15:
          sub_22C9E3B94();
          sub_22CA211A0();

          strcpy(v11, "[podcast (");
          BYTE3(v11[1]) = 0;
          HIDWORD(v11[1]) = -369098752;
          sub_22C9E3BCC();
          MEMORY[0x2318BA9C0](2236509, 0xE300000000000000);
          if (v3)
          {
            v10 = sub_22C9E3C30();
            MEMORY[0x2318BA9C0](v10);
            MEMORY[0x2318BA9C0](0x6F73697065202C22, 0xED000022203A6564);
            if (v1)
            {
              goto LABEL_17;
            }

LABEL_25:
            __break(1u);
            return;
          }

          goto LABEL_22;
        }
      }

LABEL_17:
      v6 = v2;
      v7 = v1;
LABEL_18:
      MEMORY[0x2318BA9C0](v6, v7);
LABEL_19:
      MEMORY[0x2318BA9C0](34, 0xE100000000000000);
      return;
    case 3:
      goto LABEL_13;
    case 4:
      sub_22C9E3B94();
      sub_22CA211A0();

      strcpy(v11, "[unknown (");
      BYTE3(v11[1]) = 0;
      HIDWORD(v11[1]) = -369098752;
      sub_22C9E3BCC();
      MEMORY[0x2318BA9C0](0x656C746974205D29, 0xEB0000000022203ALL);
      if (v1)
      {
        v8 = v1;
      }

      else
      {
        v2 = 0x6E776F6E6B6E755BLL;
        v8 = 0xEF5D656C74697420;
      }

      MEMORY[0x2318BA9C0](v2, v8);

      goto LABEL_19;
    default:
      sub_22C9E3B94();
      sub_22CA211A0();

      strcpy(v11, "[song (");
      v11[1] = 0xE700000000000000;
      sub_22C9E3BCC();
      sub_22C9E3BE8();
      if (!v1)
      {
        goto LABEL_21;
      }

      MEMORY[0x2318BA9C0](v2, v1);
      sub_22C9E3C80();
      if (!v3)
      {
        goto LABEL_24;
      }

      v6 = sub_22C9E3C30();
      goto LABEL_18;
  }
}

BOOL static MSMediaItem.== infix(_:_:)(double *a1, uint64_t a2)
{
  v3 = *(a1 + 1);
  v4 = *(a1 + 2);
  v6 = *(a1 + 3);
  v5 = *(a1 + 4);
  v7 = *(a1 + 5);
  v8 = *(a1 + 6);
  v10 = *(a1 + 7);
  v9 = *(a1 + 8);
  v12 = *(a1 + 9);
  v11 = *(a1 + 10);
  v13 = *(a1 + 11);
  v14 = *(a1 + 96);
  v15 = a1[13];
  v16 = *(a2 + 8);
  v17 = *(a2 + 16);
  v19 = *(a2 + 24);
  v18 = *(a2 + 32);
  v21 = *(a2 + 40);
  v20 = *(a2 + 48);
  v23 = *(a2 + 56);
  v22 = *(a2 + 64);
  v24 = *(a2 + 72);
  v25 = *(a2 + 80);
  v26 = *(a2 + 88);
  v27 = *(a2 + 96);
  v28 = *(a2 + 104);
  if (v3)
  {
    if (!v16)
    {
      return 0;
    }

    if (*a1 != *a2 || v3 != v16)
    {
      v83 = *(a2 + 48);
      v86 = *(a1 + 10);
      v76 = *(a1 + 96);
      v78 = *(a1 + 5);
      v80 = *(a2 + 80);
      v89 = *(a2 + 96);
      v30 = *(a1 + 11);
      v68 = *(a2 + 16);
      v69 = *(a1 + 2);
      v31 = *(a2 + 88);
      v70 = *(a2 + 64);
      v71 = *(a1 + 9);
      v32 = *(a1 + 8);
      v33 = *(a2 + 72);
      v34 = *(a1 + 6);
      v35 = *(a1 + 7);
      v72 = *(a2 + 32);
      v74 = *(a2 + 40);
      v36 = *(a2 + 56);
      v37 = *(a1 + 4);
      v38 = sub_22CA21360();
      v5 = v37;
      v20 = v83;
      v11 = v86;
      v23 = v36;
      v18 = v72;
      v21 = v74;
      v10 = v35;
      v8 = v34;
      v4 = v69;
      v22 = v70;
      v24 = v33;
      v9 = v32;
      v12 = v71;
      v26 = v31;
      v17 = v68;
      v13 = v30;
      v27 = v89;
      v7 = v78;
      v25 = v80;
      v14 = v76;
      if ((v38 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v16)
  {
    return 0;
  }

  if (v6)
  {
    if (!v19)
    {
      return 0;
    }

    if (v4 != v17 || v6 != v19)
    {
      v84 = v20;
      v87 = v11;
      v77 = v14;
      v79 = v7;
      v81 = v25;
      v90 = v27;
      v40 = v13;
      v41 = v26;
      v42 = v9;
      v43 = v24;
      v44 = v22;
      v45 = v8;
      v46 = v10;
      v73 = v18;
      v75 = v21;
      v47 = v23;
      v48 = v5;
      v49 = sub_22CA21360();
      v5 = v48;
      v20 = v84;
      v11 = v87;
      v23 = v47;
      v18 = v73;
      v21 = v75;
      v10 = v46;
      v8 = v45;
      v22 = v44;
      v24 = v43;
      v9 = v42;
      v26 = v41;
      v13 = v40;
      v27 = v90;
      v7 = v79;
      v25 = v81;
      v14 = v77;
      if ((v49 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v19)
  {
    return 0;
  }

  if (v7)
  {
    if (!v21)
    {
      return 0;
    }

    if (v5 != v18 || v7 != v21)
    {
      v85 = v20;
      v88 = v11;
      v51 = v14;
      v91 = v27;
      v52 = v13;
      v53 = v26;
      v54 = v9;
      v55 = v24;
      v56 = v22;
      v57 = v8;
      v82 = v10;
      v58 = v23;
      v59 = sub_22CA21360();
      v10 = v82;
      v20 = v85;
      v23 = v58;
      v8 = v57;
      v22 = v56;
      v24 = v55;
      v9 = v54;
      v26 = v53;
      v13 = v52;
      v27 = v91;
      v14 = v51;
      v11 = v88;
      if ((v59 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v21)
  {
    return 0;
  }

  if (v10)
  {
    if (!v23)
    {
      return 0;
    }

    if (v8 != v20 || v10 != v23)
    {
      sub_22C9E3C68();
      sub_22CA21360();
      sub_22C9E3CA4();
      if ((v61 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v23)
  {
    return 0;
  }

  if (v12)
  {
    if (!v24)
    {
      return 0;
    }

    if (v9 != v22 || v12 != v24)
    {
      sub_22C9E3C68();
      sub_22CA21360();
      sub_22C9E3CA4();
      if ((v63 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v24)
  {
    return 0;
  }

  if (v11 == v25 && v13 == v26)
  {
    if (v14 == v27)
    {
      return v15 == v28;
    }

    return 0;
  }

  v65 = v14;
  v66 = sub_22CA21360();
  result = 0;
  if ((v66 & 1) != 0 && v65 == v27)
  {
    return v15 == v28;
  }

  return result;
}

uint64_t MSMediaItem.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 40);
  v4 = *(v1 + 56);
  v5 = *(v1 + 72);
  v9 = *(v1 + 96);
  v6 = *(v1 + 104);
  if (*(v1 + 8))
  {
    sub_22CA21460();
    sub_22CA20E60();
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_22CA21460();
    if (v2)
    {
LABEL_3:
      sub_22CA21460();
      sub_22CA20E60();
      if (v3)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  sub_22CA21460();
  if (v3)
  {
LABEL_4:
    sub_22CA21460();
    sub_22CA20E60();
    if (v4)
    {
      goto LABEL_5;
    }

LABEL_10:
    sub_22CA21460();
    if (v5)
    {
      goto LABEL_6;
    }

    goto LABEL_11;
  }

LABEL_9:
  sub_22CA21460();
  if (!v4)
  {
    goto LABEL_10;
  }

LABEL_5:
  sub_22CA21460();
  sub_22CA20E60();
  if (v5)
  {
LABEL_6:
    sub_22CA21460();
    sub_22CA20E60();
    goto LABEL_12;
  }

LABEL_11:
  sub_22CA21460();
LABEL_12:
  sub_22CA20E60();
  MEMORY[0x2318BAFA0](v9);
  v7 = 0.0;
  if (v6 != 0.0)
  {
    v7 = v6;
  }

  return MEMORY[0x2318BAFC0](*&v7);
}

uint64_t MSMediaItem.hashValue.getter()
{
  sub_22CA21440();
  MSMediaItem.hash(into:)(v1);
  return sub_22CA21490();
}

uint64_t sub_22C9E385C(uint64_t a1)
{
  sub_22CA21440();
  MSMediaItem.hash(into:)(v2);
  return sub_22CA21490();
}

unint64_t sub_22C9E389C()
{
  result = qword_27D9E4E50;
  if (!qword_27D9E4E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9E4E50);
  }

  return result;
}

unint64_t sub_22C9E38F4()
{
  result = qword_27D9E4E58;
  if (!qword_27D9E4E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9E4E58);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MSMediaType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFC)
  {
    if (a2 + 4 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 4) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 5;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v5 = v6 - 5;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for MSMediaType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_22C9E3AD8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 112))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 88);
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

uint64_t sub_22C9E3B18(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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
      *(result + 88) = (a2 - 1);
      return result;
    }

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_22C9E3BCC()
{

  JUMPOUT(0x2318BA9C0);
}

void sub_22C9E3BE8()
{

  JUMPOUT(0x2318BA9C0);
}

uint64_t sub_22C9E3C14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_22CA21360();
}

void sub_22C9E3C80()
{

  JUMPOUT(0x2318BA9C0);
}

uint64_t sub_22C9E3CB8(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_22CA21290();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

uint64_t sub_22C9E3CDC()
{
  ObjectType = swift_getObjectType();
  sub_22C9E6EC8();
  if (v18)
  {
    sub_22C9D05CC(v17, v18);
    sub_22C9E6E18();
    MEMORY[0x28223BE20](v3);
    v5 = sub_22C9E6DF0(v4, v14);
    v6(v5);
    sub_22CA21350();
    v7 = sub_22C9E6E94();
    v8(v7);
    sub_22C9D04CC(v17);
  }

  else
  {
    v1 = 0;
  }

  v16.receiver = v0;
  v16.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v16, sel_isEqual_, v1);
  swift_unknownObjectRelease();
  if (!v9)
  {
    goto LABEL_11;
  }

  sub_22C9E6EC8();
  if (!v18)
  {
    sub_22C9D027C(v17);
    goto LABEL_11;
  }

  if ((sub_22C9E6E70() & 1) == 0)
  {
LABEL_11:
    v12 = 0;
    return v12 & 1;
  }

  v10 = *&v0[OBJC_IVAR____TtC14MediaSuggester22MSMediaAppIntentsCache_appIntents];
  v11 = *&v15[OBJC_IVAR____TtC14MediaSuggester22MSMediaAppIntentsCache_appIntents];

  LOBYTE(v10) = sub_22C9CDEA0(v10, v11);

  if ((v10 & 1) == 0)
  {

    goto LABEL_11;
  }

  v12 = sub_22CA209C0();

  return v12 & 1;
}

id sub_22C9E3F3C(uint64_t a1, void *a2, void *a3)
{
  ObjectType = swift_getObjectType();
  v8 = sub_22CA209F0();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v3[*a2] = a1;
  sub_22CA209E0();
  (*(v9 + 32))(&v3[*a3], v11, v8);
  v13.receiver = v3;
  v13.super_class = ObjectType;
  return objc_msgSendSuper2(&v13, sel_init);
}

uint64_t sub_22C9E404C()
{
  ObjectType = swift_getObjectType();
  sub_22C9E6EC8();
  if (v16)
  {
    sub_22C9D05CC(v15, v16);
    sub_22C9E6E18();
    MEMORY[0x28223BE20](v3);
    v5 = sub_22C9E6DF0(v4, v12);
    v6(v5);
    sub_22CA21350();
    v7 = sub_22C9E6E94();
    v8(v7);
    sub_22C9D04CC(v15);
  }

  else
  {
    v1 = 0;
  }

  v14.receiver = v0;
  v14.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v14, sel_isEqual_, v1);
  swift_unknownObjectRelease();
  if (!v9)
  {
    goto LABEL_11;
  }

  sub_22C9E6EC8();
  if (!v16)
  {
    sub_22C9D027C(v15);
    goto LABEL_11;
  }

  if ((sub_22C9E6E70() & 1) == 0)
  {
LABEL_11:
    v10 = 0;
    return v10 & 1;
  }

  if ((sub_22C9CE080(*&v0[OBJC_IVAR____TtC14MediaSuggester20MSMediaBundleIDCache_bundleIDs], *&v13[OBJC_IVAR____TtC14MediaSuggester20MSMediaBundleIDCache_bundleIDs]) & 1) == 0)
  {

    goto LABEL_11;
  }

  v10 = sub_22CA209C0();

  return v10 & 1;
}

uint64_t sub_22C9E41EC(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_OWORD *))
{
  if (a3)
  {
    v6 = a1;
    swift_unknownObjectRetain();
    sub_22CA21130();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    v7 = a1;
  }

  v8 = a4(v10);

  sub_22C9D027C(v10);
  return v8 & 1;
}

uint64_t sub_22C9E42C4(void *a1, uint64_t (*a2)(void *, void))
{
  sub_22CA214A0();
  a2(v6, *(v2 + *a1));
  return sub_22CA21480();
}

uint64_t sub_22C9E4374(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{

  v6 = *a4;
  v7 = sub_22CA209F0();
  v8 = *(*(v7 - 8) + 8);

  return v8(a1 + v6, v7);
}

id sub_22C9E43EC()
{
  result = [objc_allocWithZone(type metadata accessor for MSMediaAppIntentsCacheManager()) init];
  qword_28143A0D8 = result;
  return result;
}

id static MSMediaAppIntentsCacheManager.shared.getter()
{
  if (qword_28143A0D0 != -1)
  {
    swift_once();
  }

  v1 = qword_28143A0D8;

  return v1;
}

id sub_22C9E4478()
{
  result = [objc_allocWithZone(MEMORY[0x277CBEA78]) init];
  qword_28143A420 = result;
  return result;
}

id sub_22C9E44AC()
{
  result = [objc_allocWithZone(MEMORY[0x277CBEA78]) init];
  qword_28143A418 = result;
  return result;
}

id sub_22C9E44E0()
{
  ObjectType = swift_getObjectType();
  if (qword_28143A0E8 != -1)
  {
    swift_once();
  }

  v2 = qword_28143A420;
  [qword_28143A420 setTotalCostLimit_];
  [v2 setEvictsObjectsWhenApplicationEntersBackground_];
  if (qword_28143A0E0 != -1)
  {
    swift_once();
  }

  v3 = qword_28143A418;
  [qword_28143A418 setTotalCostLimit_];
  [v3 setEvictsObjectsWhenApplicationEntersBackground_];
  v5.receiver = v0;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t sub_22C9E4610(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return sub_22C9E6DB4(sub_22C9E4628);
}

uint64_t sub_22C9E4628()
{
  sub_22C9D6F3C();
  sub_22CA20F50();
  v1 = sub_22C9E6E40();
  *(v0 + 40) = v1;
  sub_22C9E6E58(v1, MEMORY[0x277D85700]);
  sub_22C9E6E34();
  v2 = sub_22C9E6DC0();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

void sub_22C9E469C()
{
  sub_22C9D7018();

  v1 = sub_22C9E6EA8();
  sub_22C9E4738(v1, v2, v3);
  if (v0)
  {
  }

  else
  {
    sub_22C9E6EBC();

    v4();
  }
}

void sub_22C9E4738(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v61 = a2;
  v6 = sub_22CA20AB0();
  v59 = *(v6 - 8);
  v60 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22CA20900();
  v57 = *(v9 - 8);
  v58 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22CA209F0();
  v64 = *(v12 - 8);
  v13 = MEMORY[0x28223BE20](v12);
  v62 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v63 = &v51 - v15;
  if (qword_28143A0E8 != -1)
  {
    swift_once();
  }

  v16 = qword_28143A420;
  v17 = sub_22CA20E10();
  v18 = [v16 objectForKey_];

  if (v18)
  {
    v52 = a1;
    v55 = a3;
    v56 = v3;
    sub_22CA209E0();
    v19 = *(v64 + 16);
    v53 = v18;
    v54 = v12;
    v19(v62, &v18[OBJC_IVAR____TtC14MediaSuggester22MSMediaAppIntentsCache_cachedDate], v12);
    sub_22CA20A80();
    sub_22C9D02E4(&qword_27D9E4E70, &qword_22CA243E0);
    v20 = sub_22CA20A90();
    v21 = *(v20 - 8);
    v22 = (*(v21 + 80) + 32) & ~*(v21 + 80);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_22CA22F90;
    (*(v21 + 104))(v23 + v22, *MEMORY[0x277CC9968], v20);
    sub_22CA02080(v23);
    sub_22CA20A70();

    (*(v59 + 8))(v8, v60);
    v24 = sub_22CA208E0();
    LOBYTE(v23) = v25;
    (*(v57 + 8))(v11, v58);
    if ((v23 & 1) == 0 && v24 >= 1)
    {
      [v16 removeAllObjects];
      v26 = v61;
      if (qword_28143A1A8 != -1)
      {
        swift_once();
      }

      v27 = sub_22CA20B10();
      sub_22C9D0494(v27, qword_28143A438);

      v28 = sub_22CA20AF0();
      v29 = sub_22CA21010();

      v30 = os_log_type_enabled(v28, v29);
      v31 = v54;
      a3 = v55;
      v32 = v53;
      if (!v30)
      {
        goto LABEL_21;
      }

      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v65 = v34;
      *v33 = 136315138;
      *(v33 + 4) = sub_22C9D60B0(v52, v26, &v65);
      v35 = "MSMediaAppIntentsCache (%s): Discarded cache (stale data).";
LABEL_20:
      _os_log_impl(&dword_22C9CA000, v28, v29, v35, v33, 0xCu);
      sub_22C9D04CC(v34);
      MEMORY[0x2318BB680](v34, -1, -1);
      MEMORY[0x2318BB680](v33, -1, -1);
LABEL_21:

      v49 = *(v64 + 8);
      v49(v62, v31);
      v49(v63, v31);
      v36 = MEMORY[0x277D84F90];
      goto LABEL_24;
    }

    v37 = OBJC_IVAR____TtC14MediaSuggester22MSMediaAppIntentsCache_appIntents;
    v32 = v53;
    v38 = sub_22C9E3CB8(*&v53[OBJC_IVAR____TtC14MediaSuggester22MSMediaAppIntentsCache_appIntents]);
    v39 = v61;
    if (!v38)
    {
      v31 = v54;
      if (qword_28143A1A8 != -1)
      {
        swift_once();
      }

      v47 = sub_22CA20B10();
      sub_22C9D0494(v47, qword_28143A438);

      v28 = sub_22CA20AF0();
      v29 = sub_22CA21000();

      v48 = os_log_type_enabled(v28, v29);
      a3 = v55;
      if (!v48)
      {
        goto LABEL_21;
      }

      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v65 = v34;
      *v33 = 136315138;
      *(v33 + 4) = sub_22C9D60B0(v52, v39, &v65);
      v35 = "MSMediaAppIntentsCache (%s): No data found";
      goto LABEL_20;
    }

    v40 = v54;
    if (qword_28143A1A8 != -1)
    {
      swift_once();
    }

    v41 = sub_22CA20B10();
    sub_22C9D0494(v41, qword_28143A438);

    v42 = v32;
    v43 = sub_22CA20AF0();
    v44 = sub_22CA21010();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v65 = v46;
      *v45 = 136315394;
      *(v45 + 4) = sub_22C9D60B0(v52, v39, &v65);
      *(v45 + 12) = 2048;
      *(v45 + 14) = sub_22C9E3CB8(*&v32[v37]);

      _os_log_impl(&dword_22C9CA000, v43, v44, "MSMediaAppIntentsCache (%s): Loaded %ld app intents", v45, 0x16u);
      sub_22C9D04CC(v46);
      MEMORY[0x2318BB680](v46, -1, -1);
      MEMORY[0x2318BB680](v45, -1, -1);
    }

    else
    {
    }

    v50 = *(v64 + 8);
    v50(v62, v40);
    v50(v63, v40);
    v36 = *&v32[v37];

    a3 = v55;
  }

  else
  {
    v36 = MEMORY[0x277D84F90];
  }

LABEL_24:
  *a3 = v36;
}