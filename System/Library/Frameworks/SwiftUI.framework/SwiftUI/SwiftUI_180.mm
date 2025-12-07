uint64_t LayoutScrollableTransform.description.getter()
{
  v1 = *v0;
  _StringGuts.grow(_:)(68);
  MEMORY[0x18D00C9B0](0xD000000000000036, 0x800000018CD5CF20);
  if (v1)
  {
    v2 = 1702195828;
  }

  else
  {
    v2 = 0x65736C6166;
  }

  if (v1)
  {
    v3 = 0xE400000000000000;
  }

  else
  {
    v3 = 0xE500000000000000;
  }

  MEMORY[0x18D00C9B0](v2, v3);

  MEMORY[0x18D00C9B0](0x6C6F722020202020, 0xEA00000000002065);
  type metadata accessor for AccessibilityScrollableContext?(0, &lazy cache variable for type metadata for AccessibilityLayoutRole?, MEMORY[0x1E6980020], MEMORY[0x1E69E6720]);
  v4 = String.init<A>(describing:)();
  MEMORY[0x18D00C9B0](v4);

  return 0;
}

double AccessibilityNode.enclosingScrollableContext.getter@<D0>(uint64_t a1@<X8>)
{
  AccessibilityNode.attachment.getter(v7);
  outlined init with copy of AccessibilityProperties(v7, v8);
  outlined destroy of AccessibilityAttachment(v7);
  lazy protocol witness table accessor for type AccessibilityProperties.ScrollableContextKey and conformance AccessibilityProperties.ScrollableContextKey();
  AccessibilityProperties.subscript.getter();
  outlined destroy of AccessibilityProperties(v8);
  if (v10[22] == 255)
  {
    outlined destroy of AccessibilityScrollableContext?(v9, &lazy cache variable for type metadata for AccessibilityScrollableContext?, MEMORY[0x1E6980998]);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v3 = Strong;
      AccessibilityNode.enclosingScrollableContext.getter(a1);
    }

    else
    {
      *&v4 = 0;
      *(a1 + 32) = 0u;
      *(a1 + 48) = 0u;
      *a1 = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 68) = 0;
      *(a1 + 64) = 0;
      *(a1 + 70) = -1;
    }
  }

  else
  {
    v5 = *v10;
    *(a1 + 32) = v9[2];
    *(a1 + 48) = v5;
    *(a1 + 63) = *&v10[15];
    v4 = v9[1];
    *a1 = v9[0];
    *(a1 + 16) = v4;
  }

  return *&v4;
}

void AccessibilityNode.enclosingHostingScrollView.getter()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    while (1)
    {
      v2 = OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_attachmentsStorage;
      swift_beginAccess();
      v3 = *&v1[v2];
      v4 = *(v3 + 16);
      v5 = v1;

      if (v4)
      {
        break;
      }

LABEL_8:

LABEL_11:
      v1 = swift_unknownObjectWeakLoadStrong();

      if (!v1)
      {
        return;
      }
    }

    v6 = v3 + 320 * v4 - 288;
    while (1)
    {
      if (v4 > *(v3 + 16))
      {
        __break(1u);
        return;
      }

      outlined init with copy of AccessibilityAttachment(v6, v8);
      v7 = AccessibilityAttachment.platformElement.getter();
      outlined destroy of AccessibilityAttachment(v8);
      if (v7)
      {
        break;
      }

      v6 -= 320;
      if (!--v4)
      {
        goto LABEL_8;
      }
    }

    type metadata accessor for HostingScrollView();
    if (!swift_dynamicCastClass())
    {

      goto LABEL_11;
    }
  }
}

uint64_t closure #1 in scroll #1 () in AccessibilityNode.scroll(toCollectionViewID:in:)@<X0>(void *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v5 = a2;
  v7 = HIDWORD(a2);
  v8 = a1[3];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  v11[0] = v5;
  v11[1] = v7;
  v12 = a3;
  result = (*(v9 + 80))(v11, 0, 0, 1, v8, v9);
  *a4 = result & 1;
  return result;
}

uint64_t assignWithCopy for AccessibilityScrollableModifier(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);

  *(a1 + 40) = *(a2 + 40);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 48) = v4;
  v5 = *(a1 + 96);
  v6 = *(a2 + 96);
  if (v5 == 1)
  {
    if (v6)
    {
      if (v6 == 1)
      {
        v7 = *(a2 + 72);
        v8 = *(a2 + 88);
        *(a1 + 104) = *(a2 + 104);
        *(a1 + 88) = v8;
        *(a1 + 72) = v7;
        goto LABEL_18;
      }

      *(a1 + 96) = v6;
      *(a1 + 104) = *(a2 + 104);
      (**(v6 - 8))(a1 + 72, a2 + 72);
    }

    else
    {
      v12 = *(a2 + 72);
      v13 = *(a2 + 88);
      *(a1 + 104) = *(a2 + 104);
      *(a1 + 88) = v13;
      *(a1 + 72) = v12;
    }

    *(a1 + 112) = *(a2 + 112);
  }

  else if (v6 == 1)
  {
    outlined destroy of AccessibilityValueStorage(a1 + 72);
    v9 = *(a2 + 104);
    v10 = *(a2 + 88);
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 88) = v10;
    *(a1 + 104) = v9;
  }

  else
  {
    if (v5)
    {
      v11 = (a1 + 72);
      if (v6)
      {
        __swift_assign_boxed_opaque_existential_1(v11, (a2 + 72));
      }

      else
      {
        outlined destroy of AnyAccessibilityValue(v11);
        v14 = *(a2 + 104);
        v15 = *(a2 + 88);
        *(a1 + 72) = *(a2 + 72);
        *(a1 + 88) = v15;
        *(a1 + 104) = v14;
      }
    }

    else if (v6)
    {
      *(a1 + 96) = v6;
      *(a1 + 104) = *(a2 + 104);
      (**(v6 - 8))(a1 + 72, a2 + 72);
    }

    else
    {
      v16 = *(a2 + 72);
      v17 = *(a2 + 88);
      *(a1 + 104) = *(a2 + 104);
      *(a1 + 88) = v17;
      *(a1 + 72) = v16;
    }

    *(a1 + 112) = *(a2 + 112);
  }

LABEL_18:
  v18 = *(a2 + 120);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 120) = v18;
  v19 = (a1 + 136);
  v20 = (a2 + 136);
  v21 = *(a2 + 248);
  if (*(a1 + 248) == 1)
  {
    if (v21 == 1)
    {
      v22 = *(a2 + 152);
      *v19 = *v20;
      *(a1 + 152) = v22;
      v23 = *(a2 + 168);
      v24 = *(a2 + 184);
      v25 = *(a2 + 216);
      *(a1 + 200) = *(a2 + 200);
      *(a1 + 216) = v25;
      *(a1 + 168) = v23;
      *(a1 + 184) = v24;
      v26 = *(a2 + 232);
      v27 = *(a2 + 248);
      v28 = *(a2 + 264);
      *(a1 + 280) = *(a2 + 280);
      *(a1 + 248) = v27;
      *(a1 + 264) = v28;
      *(a1 + 232) = v26;
    }

    else
    {
      v36 = *v20;
      *(a1 + 144) = *(a2 + 144);
      *v19 = v36;
      v37 = *(a2 + 152);
      *(a1 + 160) = *(a2 + 160);
      *(a1 + 152) = v37;
      *(a1 + 161) = *(a2 + 161);
      *(a1 + 162) = *(a2 + 162);
      *(a1 + 163) = *(a2 + 163);
      *(a1 + 164) = *(a2 + 164);
      *(a1 + 168) = *(a2 + 168);
      *(a1 + 176) = *(a2 + 176);
      *(a1 + 184) = *(a2 + 184);
      *(a1 + 192) = *(a2 + 192);
      *(a1 + 200) = *(a2 + 200);
      *(a1 + 208) = *(a2 + 208);
      *(a1 + 216) = *(a2 + 216);
      *(a1 + 217) = *(a2 + 217);
      *(a1 + 224) = *(a2 + 224);
      *(a1 + 232) = *(a2 + 232);
      *(a1 + 240) = *(a2 + 240);
      *(a1 + 248) = *(a2 + 248);
      v38 = *(a2 + 256);
      *(a1 + 272) = *(a2 + 272);
      *(a1 + 256) = v38;
      *(a1 + 280) = *(a2 + 280);
    }
  }

  else if (v21 == 1)
  {
    outlined destroy of AccessibilityTextLayoutProperties(a1 + 136);
    v29 = *(a2 + 152);
    *v19 = *v20;
    *(a1 + 152) = v29;
    v30 = *(a2 + 216);
    v32 = *(a2 + 168);
    v31 = *(a2 + 184);
    *(a1 + 200) = *(a2 + 200);
    *(a1 + 216) = v30;
    *(a1 + 168) = v32;
    *(a1 + 184) = v31;
    v34 = *(a2 + 248);
    v33 = *(a2 + 264);
    v35 = *(a2 + 232);
    *(a1 + 280) = *(a2 + 280);
    *(a1 + 248) = v34;
    *(a1 + 264) = v33;
    *(a1 + 232) = v35;
  }

  else
  {
    v39 = *v20;
    *(a1 + 144) = *(a2 + 144);
    *v19 = v39;
    v40 = *(a2 + 152);
    *(a1 + 160) = *(a2 + 160);
    *(a1 + 152) = v40;
    *(a1 + 161) = *(a2 + 161);
    *(a1 + 162) = *(a2 + 162);
    *(a1 + 163) = *(a2 + 163);
    *(a1 + 164) = *(a2 + 164);
    *(a1 + 168) = *(a2 + 168);
    *(a1 + 176) = *(a2 + 176);
    *(a1 + 184) = *(a2 + 184);
    *(a1 + 192) = *(a2 + 192);
    *(a1 + 200) = *(a2 + 200);
    *(a1 + 208) = *(a2 + 208);
    *(a1 + 216) = *(a2 + 216);
    *(a1 + 217) = *(a2 + 217);
    *(a1 + 224) = *(a2 + 224);
    *(a1 + 232) = *(a2 + 232);
    *(a1 + 240) = *(a2 + 240);
    *(a1 + 248) = *(a2 + 248);

    v41 = *(a2 + 256);
    *(a1 + 272) = *(a2 + 272);
    *(a1 + 256) = v41;
    *(a1 + 280) = *(a2 + 280);
  }

  *(a1 + 288) = *(a2 + 288);

  return a1;
}

uint64_t assignWithTake for AccessibilityScrollableModifier(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  v4 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v4;

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);

  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  v5 = *(a1 + 96);
  if (v5 == 1)
  {
    goto LABEL_4;
  }

  v6 = *(a2 + 96);
  if (v6 == 1)
  {
    outlined destroy of AccessibilityValueStorage(a1 + 72);
LABEL_4:
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 88) = *(a2 + 88);
    *(a1 + 104) = *(a2 + 104);
    goto LABEL_10;
  }

  if (v5)
  {
    v7 = (a1 + 72);
    if (v6)
    {
      __swift_destroy_boxed_opaque_existential_1(v7);
    }

    else
    {
      outlined destroy of AnyAccessibilityValue(v7);
    }
  }

  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  v8 = *(a2 + 112);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = v8;

LABEL_10:
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 128) = *(a2 + 128);
  v9 = (a1 + 136);
  v10 = (a2 + 136);
  if (*(a1 + 248) != 1)
  {
    v11 = *(a2 + 248);
    if (v11 != 1)
    {
      *v9 = *v10;
      *(a1 + 144) = *(a2 + 144);
      *(a1 + 152) = *(a2 + 152);
      *(a1 + 160) = *(a2 + 160);
      *(a1 + 161) = *(a2 + 161);
      *(a1 + 163) = *(a2 + 163);
      *(a1 + 164) = *(a2 + 164);
      *(a1 + 168) = *(a2 + 168);
      *(a1 + 184) = *(a2 + 184);
      *(a1 + 200) = *(a2 + 200);
      *(a1 + 216) = *(a2 + 216);
      *(a1 + 217) = *(a2 + 217);
      *(a1 + 224) = *(a2 + 224);
      *(a1 + 240) = *(a2 + 240);
      *(a1 + 248) = v11;

      *(a1 + 256) = *(a2 + 256);
      *(a1 + 272) = *(a2 + 272);
      *(a1 + 280) = *(a2 + 280);
      goto LABEL_15;
    }

    outlined destroy of AccessibilityTextLayoutProperties(a1 + 136);
  }

  v12 = *(a2 + 248);
  *(a1 + 232) = *(a2 + 232);
  *(a1 + 248) = v12;
  *(a1 + 264) = *(a2 + 264);
  *(a1 + 280) = *(a2 + 280);
  v13 = *(a2 + 184);
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 184) = v13;
  v14 = *(a2 + 216);
  *(a1 + 200) = *(a2 + 200);
  *(a1 + 216) = v14;
  v15 = *(a2 + 152);
  *v9 = *v10;
  *(a1 + 152) = v15;
LABEL_15:
  *(a1 + 288) = *(a2 + 288);

  return a1;
}

uint64_t getEnumTagSinglePayload for AccessibilityScrollableModifier(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 296))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 288);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for AccessibilityScrollableModifier(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 264) = 0u;
    *(result + 280) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 296) = 1;
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
      *(result + 288) = (a2 - 1);
      return result;
    }

    *(result + 296) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t assignWithTake for AccessibilityScrollableContextModifier(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    outlined destroy of AccessibilityScrollableContext(a1);
    v4 = *(a2 + 48);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 48) = v4;
    *(a1 + 63) = *(a2 + 63);
    v5 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v5;
  }

  if (*(a1 + 352))
  {
    if (*(a2 + 352))
    {
      v6 = *(a2 + 80);
      *(a1 + 72) = *(a2 + 72);
      *(a1 + 80) = v6;

      *(a1 + 88) = *(a2 + 88);
      *(a1 + 96) = *(a2 + 96);

      *(a1 + 104) = *(a2 + 104);
      *(a1 + 112) = *(a2 + 112);
      *(a1 + 128) = *(a2 + 128);
      v7 = *(a1 + 160);
      if (v7 != 1)
      {
        v8 = *(a2 + 160);
        if (v8 != 1)
        {
          if (v7)
          {
            v9 = (a1 + 136);
            if (v8)
            {
              __swift_destroy_boxed_opaque_existential_1(v9);
            }

            else
            {
              outlined destroy of AnyAccessibilityValue(v9);
            }
          }

          *(a1 + 136) = *(a2 + 136);
          *(a1 + 152) = *(a2 + 152);
          v10 = *(a2 + 176);
          *(a1 + 168) = *(a2 + 168);
          *(a1 + 176) = v10;

LABEL_16:
          *(a1 + 184) = *(a2 + 184);
          *(a1 + 192) = *(a2 + 192);
          v11 = (a1 + 200);
          v12 = (a2 + 200);
          if (*(a1 + 312) != 1)
          {
            v13 = *(a2 + 312);
            if (v13 != 1)
            {
              *v11 = *v12;
              *(a1 + 208) = *(a2 + 208);
              *(a1 + 216) = *(a2 + 216);
              *(a1 + 224) = *(a2 + 224);
              *(a1 + 225) = *(a2 + 225);
              *(a1 + 227) = *(a2 + 227);
              *(a1 + 228) = *(a2 + 228);
              *(a1 + 232) = *(a2 + 232);
              *(a1 + 248) = *(a2 + 248);
              v18 = *(a2 + 272);
              *(a1 + 264) = *(a2 + 264);
              *(a1 + 272) = v18;
              *(a1 + 280) = *(a2 + 280);
              *(a1 + 281) = *(a2 + 281);
              *(a1 + 288) = *(a2 + 288);
              *(a1 + 304) = *(a2 + 304);
              *(a1 + 312) = v13;

              *(a1 + 320) = *(a2 + 320);
              *(a1 + 336) = *(a2 + 336);
              *(a1 + 344) = *(a2 + 344);
              goto LABEL_21;
            }

            outlined destroy of AccessibilityTextLayoutProperties(a1 + 200);
          }

          v14 = *(a2 + 312);
          *(a1 + 296) = *(a2 + 296);
          *(a1 + 312) = v14;
          *(a1 + 328) = *(a2 + 328);
          *(a1 + 344) = *(a2 + 344);
          v15 = *(a2 + 248);
          *(a1 + 232) = *(a2 + 232);
          *(a1 + 248) = v15;
          v16 = *(a2 + 280);
          *(a1 + 264) = *(a2 + 264);
          *(a1 + 280) = v16;
          v17 = *(a2 + 216);
          *v11 = *v12;
          *(a1 + 216) = v17;
LABEL_21:
          *(a1 + 352) = *(a2 + 352);

          v19 = *(a1 + 360);
          *(a1 + 360) = *(a2 + 360);

          return a1;
        }

        outlined destroy of AccessibilityValueStorage(a1 + 136);
      }

      *(a1 + 136) = *(a2 + 136);
      *(a1 + 152) = *(a2 + 152);
      *(a1 + 168) = *(a2 + 168);
      goto LABEL_16;
    }

    outlined destroy of AccessibilityAttachment(a1 + 72);
  }

  memcpy((a1 + 72), (a2 + 72), 0x128uLL);
  return a1;
}

uint64_t getEnumTagSinglePayload for AccessibilityScrollableContextModifier(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 368))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 352);
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

uint64_t storeEnumTagSinglePayload for AccessibilityScrollableContextModifier(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 360) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 368) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 368) = 0;
    }

    if (a2)
    {
      *(result + 352) = a2;
    }
  }

  return result;
}

uint64_t outlined destroy of AccessibilityScrollableContext?(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  type metadata accessor for AccessibilityScrollableContext?(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t outlined init with copy of AccessibilityScrollableContext?(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  type metadata accessor for AccessibilityScrollableContext?(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t assignWithCopy for LayoutScrollableTransform(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  return a1;
}

uint64_t assignWithTake for LayoutScrollableTransform(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 24) = *(a2 + 24);

  return a1;
}

void type metadata accessor for AccessibilityScrollableContext?(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t DefaultGaugeStyle.makeBody(configuration:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 9);
  v6 = *(a1 + 10);
  KeyPath = swift_getKeyPath();
  result = swift_getKeyPath();
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 9) = v5;
  *(a2 + 10) = v6;
  *(a2 + 16) = KeyPath;
  *(a2 + 24) = 0;
  *(a2 + 32) = result;
  *(a2 + 40) = 0;
  return result;
}

uint64_t protocol witness for GaugeStyle.makeBody(configuration:) in conformance DefaultGaugeStyle@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 9);
  v6 = *(a1 + 10);
  KeyPath = swift_getKeyPath();
  result = swift_getKeyPath();
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 9) = v5;
  *(a2 + 10) = v6;
  *(a2 + 16) = KeyPath;
  *(a2 + 24) = 0;
  *(a2 + 32) = result;
  *(a2 + 40) = 0;
  return result;
}

uint64_t type metadata completion function for ContextMenuPreviewResponder(uint64_t a1)
{
  result = type metadata accessor for Optional();
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

uint64_t ContextMenuPreviewModifier.init(menuView:preview:hidePreview:previewAction:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  *a9 = 0;
  *(a9 + 8) = swift_getKeyPath();
  *(a9 + 16) = 0;
  v23[0] = a7;
  v23[1] = a8;
  v23[2] = a10;
  v23[3] = a11;
  v19 = type metadata accessor for ContextMenuPreviewModifier(0, v23);
  (*(*(a7 - 8) + 32))(a9 + v19[14], a1, a7);
  result = (*(*(a8 - 8) + 32))(a9 + v19[15], a2, a8);
  *(a9 + v19[16]) = a3;
  v21 = a9 + v19[17];
  *v21 = a4;
  *(v21 + 8) = a5;
  *(v21 + 16) = a6;
  return result;
}

uint64_t ContextMenuPreviewDestinationModifier.init(menuView:preview:destination:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  (*(*(a4 - 8) + 32))(a9, a1, a4);
  v20[0] = a4;
  v20[1] = a5;
  v20[2] = a6;
  v20[3] = a7;
  v20[4] = a8;
  v20[5] = a10;
  v18 = type metadata accessor for ContextMenuPreviewDestinationModifier(0, v20);
  (*(*(a5 - 8) + 32))(a9 + *(v18 + 68), a2, a5);
  return (*(*(a6 - 8) + 32))(a9 + *(v18 + 72), a3, a6);
}

uint64_t ContextMenuPreviewModifier.body(content:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v3 = v2;
  v92 = a2;
  swift_getWitnessTable(protocol conformance descriptor for ContextMenuPreviewModifier<A, B>);
  v5 = type metadata accessor for _ViewModifier_Content();
  v6 = *(a1 + 24);
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v98[0] = *(a1 + 16);
  v7 = v98[0];
  v98[1] = v6;
  v10 = v6;
  v74 = v6;
  v81 = v8;
  v98[2] = v8;
  v98[3] = v9;
  v79 = v9;
  v11 = type metadata accessor for ContextMenuPreviewModifierCore(255, v98);
  v77 = v5;
  v12 = type metadata accessor for ModifiedContent();
  v13 = type metadata accessor for ModifiedContent();
  type metadata accessor for StaticIf<_SemanticFeature<Semantics_v5>, PortalGroupRendererEffect, EmptyModifier>(255, &lazy cache variable for type metadata for StaticIf<_SemanticFeature<Semantics_v5>, PortalGroupRendererEffect, EmptyModifier>, type metadata accessor for _SemanticFeature<Semantics_v5>, &type metadata for PortalGroupRendererEffect);
  v82 = v13;
  v84 = type metadata accessor for ModifiedContent();
  v14 = type metadata accessor for StaticIf();
  v87 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v86 = &v73 - v15;
  type metadata accessor for StaticIf<_SemanticFeature<Semantics_v5>, PortalGroupRendererEffect, EmptyModifier>(255, &lazy cache variable for type metadata for StaticIf<InvertedViewInputPredicate<IsSharingPickerHost>, SharingPickerHostModifier, EmptyModifier>, type metadata accessor for InvertedViewInputPredicate<IsSharingPickerHost>, &type metadata for SharingPickerHostModifier);
  v89 = v14;
  v90 = type metadata accessor for ModifiedContent();
  v88 = *(v90 - 8);
  MEMORY[0x1EEE9AC00](v90);
  v83 = &v73 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v85 = &v73 - v18;
  v19 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v73 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v73 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = v11;
  v26 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v73 - v28;
  v91 = v12;
  v78 = *(v12 - 8);
  v31 = MEMORY[0x1EEE9AC00](v30);
  v76 = &v73 - v32;
  v34 = *(v33 + 16);
  v35 = &v3[*(a1 + 56)];
  v80 = v7;
  v34(v25, v35, v7, v31);
  v36 = v74;
  (*(v19 + 16))(v22, &v3[*(a1 + 60)]);
  if (*v3)
  {
    v37 = *(a1 + 68);
    v38 = v3[*(a1 + 64)];
    LODWORD(v98[0]) = *v3;
    v39 = *&v3[v37];
    v40 = *&v3[v37 + 8];
    v41 = v3[v37 + 16];
    v73 = v3;
    v42 = v22;
    v43 = v80;
    ContextMenuPreviewModifierCore.init(menuView:preview:hidePreview:id:previewAction:)(v25, v42, v38, v98, v39, v40, v41, v80, v29, v36, v81, v79);
    v44 = outlined copy of ContextMenuPreviewAction?(v39, v40, v41);
    v45 = v77;
    WitnessTable = swift_getWitnessTable(MEMORY[0x1E697FDF8], v77, v44);
    v47 = v76;
    v48 = v45;
    v49 = v75;
    MEMORY[0x18D00A570](v29, v48, v75, WitnessTable);
    v50 = (*(v26 + 8))(v29, v49);
    v77 = &v73;
    MEMORY[0x1EEE9AC00](v50);
    *(&v73 - 6) = v43;
    *(&v73 - 5) = v36;
    MEMORY[0x1EEE9AC00](v51);
    *(&v73 - 6) = v43;
    *(&v73 - 5) = v36;
    v52 = v47;
    v72 = v73;
    v53 = lazy protocol witness table accessor for type ProvidesContextMenuInteraction and conformance ProvidesContextMenuInteraction();
    v97[0] = WitnessTable;
    v97[1] = &protocol witness table for ContextMenuPreviewModifierCore<A, B>;
    v54 = MEMORY[0x1E697E858];
    v55 = v91;
    v56 = swift_getWitnessTable(MEMORY[0x1E697E858], v91, v97);
    v96[0] = v56;
    v96[1] = MEMORY[0x1E697FC98];
    v57 = swift_getWitnessTable(v54, v82, v96);
    v58 = lazy protocol witness table accessor for type StaticIf<_SemanticFeature<Semantics_v5>, PortalGroupRendererEffect, EmptyModifier> and conformance <> StaticIf<A, B, C>();
    v95[0] = v57;
    v95[1] = v58;
    v59 = swift_getWitnessTable(v54, v84, v95);
    v70 = v56;
    v71 = v59;
    v69 = v53;
    v60 = v86;
    StaticIf<>.init(_:then:else:)();
    v94[0] = v53;
    v94[1] = v56;
    v94[2] = v59;
    v61 = v89;
    v62 = swift_getWitnessTable(MEMORY[0x1E6981CE8], v89, v94);
    v63 = v83;
    View.sharingPickerHost()(v61, v62);
    (*(v87 + 8))(v60, v61);
    IsSharingPicker = lazy protocol witness table accessor for type StaticIf<InvertedViewInputPredicate<IsSharingPickerHost>, SharingPickerHostModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>();
    v93[0] = v62;
    v93[1] = IsSharingPicker;
    v65 = v90;
    swift_getWitnessTable(v54, v90, v93);
    v66 = v85;
    static ViewBuilder.buildExpression<A>(_:)();
    v67 = *(v88 + 8);
    v67(v63, v65);
    static ViewBuilder.buildExpression<A>(_:)();
    v67(v66, v65);
    return (*(v78 + 8))(v52, v55);
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t ContextMenuPreviewModifierCore.init(menuView:preview:hidePreview:id:previewAction:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, int *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v18 = *a4;
  (*(*(a8 - 8) + 32))(a9, a1, a8);
  v23[0] = a8;
  v23[1] = a10;
  v23[2] = a11;
  v23[3] = a12;
  v19 = type metadata accessor for ContextMenuPreviewModifierCore(0, v23);
  result = (*(*(a10 - 8) + 32))(a9 + v19[13], a2, a10);
  *(a9 + v19[14]) = a3;
  *(a9 + v19[15]) = v18;
  v21 = a9 + v19[16];
  *v21 = a5;
  *(v21 + 8) = a6;
  *(v21 + 16) = a7;
  return result;
}

uint64_t closure #1 in ContextMenuPreviewModifier.body(content:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v18 = a2;
  v19 = a3;
  v20 = a4;
  v21 = a5;
  v9 = type metadata accessor for ContextMenuPreviewModifier(255, &v18);
  swift_getWitnessTable(protocol conformance descriptor for ContextMenuPreviewModifier<A, B>, v9);
  v10 = type metadata accessor for _ViewModifier_Content();
  v18 = a2;
  v19 = a3;
  v20 = a4;
  v21 = a5;
  type metadata accessor for ContextMenuPreviewModifierCore(255, &v18);
  v11 = type metadata accessor for ModifiedContent();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = v17 - v14;
  v17[0] = swift_getWitnessTable(MEMORY[0x1E697FDF8], v10, v13);
  v17[1] = &protocol witness table for ContextMenuPreviewModifierCore<A, B>;
  swift_getWitnessTable(MEMORY[0x1E697E858], v11, v17);
  static ViewBuilder.buildExpression<A>(_:)();
  static ViewBuilder.buildExpression<A>(_:)();
  return (*(v12 + 8))(v15, v11);
}

uint64_t closure #2 in ContextMenuPreviewModifier.body(content:)@<X0>(uint64_t a1@<X0>, int *a2@<X1>, double a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v38 = a1;
  v39 = a7;
  v43 = a3;
  v44 = a4;
  v45 = a5;
  v46 = a6;
  v12 = type metadata accessor for ContextMenuPreviewModifier(255, &v43);
  swift_getWitnessTable(protocol conformance descriptor for ContextMenuPreviewModifier<A, B>, v12);
  v13 = type metadata accessor for _ViewModifier_Content();
  v43 = a3;
  v44 = a4;
  v45 = a5;
  v46 = a6;
  type metadata accessor for ContextMenuPreviewModifierCore(255, &v43);
  v35 = v13;
  v14 = type metadata accessor for ModifiedContent();
  v15 = type metadata accessor for ModifiedContent();
  v36 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v34 - v16;
  type metadata accessor for StaticIf<_SemanticFeature<Semantics_v5>, PortalGroupRendererEffect, EmptyModifier>(255, &lazy cache variable for type metadata for StaticIf<_SemanticFeature<Semantics_v5>, PortalGroupRendererEffect, EmptyModifier>, type metadata accessor for _SemanticFeature<Semantics_v5>, &type metadata for PortalGroupRendererEffect);
  v18 = type metadata accessor for ModifiedContent();
  v37 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v34 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v34 - v22;
  v24 = *a2;
  if (!*a2)
  {
    goto LABEL_7;
  }

  v25 = *(a2 + 1);
  v26 = *(a2 + 16);
  specialized Environment.wrappedValue.getter(v25, v26, &v43);
  if (v24 != LODWORD(v43) || (specialized Environment.wrappedValue.getter(v25, v26, &v43), v27 = 0.0, BYTE4(v43) == 1))
  {
    v27 = 1.0;
  }

  v43 = v27;
  v42[0] = swift_getWitnessTable(MEMORY[0x1E697FDF8], v35);
  v42[1] = &protocol witness table for ContextMenuPreviewModifierCore<A, B>;
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E697E858], v14, v42);
  MEMORY[0x18D00A570](&v43, v14, MEMORY[0x1E697FCA0], WitnessTable);
  if (*a2)
  {
    LODWORD(v43) = *a2;
    v41[0] = WitnessTable;
    v41[1] = MEMORY[0x1E697FC98];
    v29 = MEMORY[0x1E697E858];
    v30 = swift_getWitnessTable(MEMORY[0x1E697E858], v15, v41);
    View.portalGroup(kind:id:)(1, &v43, v15, v30);
    (*(v36 + 8))(v17, v15);
    v31 = lazy protocol witness table accessor for type StaticIf<_SemanticFeature<Semantics_v5>, PortalGroupRendererEffect, EmptyModifier> and conformance <> StaticIf<A, B, C>();
    v40[0] = v30;
    v40[1] = v31;
    swift_getWitnessTable(v29, v18, v40);
    static ViewBuilder.buildExpression<A>(_:)();
    v32 = *(v37 + 8);
    v32(v20, v18);
    static ViewBuilder.buildExpression<A>(_:)();
    return (v32)(v23, v18);
  }

  else
  {
LABEL_7:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance ContextMenuPreviewModifier<A, B>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ContextMenuPreviewModifier<A, B>, a5);

  return MEMORY[0x1EEDE0720](a1, a2, a3, a4, a5, WitnessTable);
}

double static ContextMenuPreviewModifierCore._makeView(modifier:inputs:body:)@<D0>(int *a1@<X0>, __int128 *a2@<X1>, void (*a3)(__int128 *__return_ptr, uint64_t, __int128 *)@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, void *a8@<X8>)
{
  v49 = a5;
  v92 = *MEMORY[0x1E69E9840];
  v13 = *a1;
  v14 = a2[3];
  v88 = a2[2];
  v89 = v14;
  v90 = a2[4];
  v91 = *(a2 + 20);
  v15 = a2[1];
  v86 = *a2;
  v87 = v15;
  v53 = *(a2 + 6);
  v54 = *(a2 + 14);
  v16 = PreferencesInputs.contains<A>(_:includeHostPreferences:)();
  *&v74 = v53;
  DWORD2(v74) = v54;
  v17 = PreferencesInputs.contains<A>(_:includeHostPreferences:)();
  if (v16 & 1) != 0 || (v17)
  {
    UniqueID.init()();
    v19 = v74;
    v82 = v88;
    v83 = v89;
    v84 = v90;
    v85 = v91;
    v80 = v86;
    v81 = v87;
    v47 = a7;
    v48 = a8;
    v46 = v74;
    if (v16)
    {
      v20 = HIDWORD(v89);
      v76 = v88;
      v77 = v89;
      v78 = v90;
      LODWORD(v79[0]) = v91;
      v74 = v86;
      v75 = v87;
      outlined init with copy of _ViewInputs(&v86, &v62);
      *&v74 = __PAIR64__(_ViewInputs.position.getter(), v20);
      a7 = v47;
      *(&v74 + 1) = v19;
      protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
      lazy protocol witness table accessor for type UIViewSnapshotResponder.Transform and conformance UIViewSnapshotResponder.Transform();
      Attribute.init<A>(body:value:flags:update:)();
      _ViewInputs.transform.setter();
    }

    else
    {
      outlined init with copy of _ViewInputs(&v86, &v74);
    }

    v68[2] = v82;
    v68[3] = v83;
    v68[4] = v84;
    v69 = v85;
    v68[0] = v80;
    v68[1] = v81;
    v76 = v82;
    v77 = v83;
    v78 = v84;
    LODWORD(v79[0]) = v85;
    v74 = v80;
    v75 = v81;
    v21 = outlined init with copy of _ViewInputs(v68, &v62);
    a3(&v52, v21, &v74);
    v70[2] = v76;
    v70[3] = v77;
    v70[4] = v78;
    v71 = v79[0];
    v70[0] = v74;
    v70[1] = v75;
    outlined destroy of _ViewInputs(v70);
    v72[2] = v82;
    v72[3] = v83;
    v72[4] = v84;
    v73 = v85;
    v72[0] = v80;
    v72[1] = v81;
    outlined destroy of _ViewInputs(v72);
    LODWORD(v56) = v13;
    *&v74 = a4;
    *(&v74 + 1) = v49;
    *&v75 = a6;
    *(&v75 + 1) = a7;
    type metadata accessor for ContextMenuPreviewModifierCore(255, &v74);
    type metadata accessor for _GraphValue();
    _GraphValue.value.getter();
    OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
    v76 = v88;
    v77 = v89;
    v78 = v90;
    LODWORD(v79[0]) = v91;
    v74 = v86;
    v75 = v87;
    v23 = PlatformItemListGenerator<>.init(content:inputs:inputsIncludeGeometry:)(OffsetAttribute2, &v74, 1, &v62);
    MEMORY[0x1EEE9AC00](v23);
    *&v74 = &type metadata for AllPlatformItemListFlags;
    *(&v74 + 1) = a4;
    *&v75 = &protocol witness table for AllPlatformItemListFlags;
    *(&v75 + 1) = a6;
    v24 = type metadata accessor for PlatformItemListGenerator(0, &v74);
    v43 = v24;
    WitnessTable = swift_getWitnessTable(protocol conformance descriptor for PlatformItemListGenerator<A, B>, v24);
    outlined init with copy of _ViewInputs(&v86, &v74);
    type metadata accessor for Path?(0, &lazy cache variable for type metadata for Attribute<PlatformItemList>, &type metadata for PlatformItemList, MEMORY[0x1E698D388]);
    _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v62, closure #1 in Attribute.init<A>(_:)partial apply, v42, v24, MEMORY[0x1E69E73E0], v25, MEMORY[0x1E69E7410], v26);
    v78 = v66;
    v79[0] = v67[0];
    *(v79 + 12) = *(v67 + 12);
    v74 = v62;
    v75 = v63;
    v76 = v64;
    v77 = v65;
    (*(*(v24 - 8) + 8))(&v74, v24);
    v27 = v52;
    if (v16)
    {
      v28 = v56;
      *&v62 = v52;
      DWORD2(v62) = DWORD2(v52);
      v29 = PreferencesOutputs.subscript.getter();
      if ((v29 & 0x100000000) == 0)
      {
        v30 = v29;
        v51 = v13;
        v45 = _GraphValue.value.getter();
        v62 = v52;

        v31 = _ViewOutputs.viewResponders()();

        v64 = v88;
        v65 = v89;
        v66 = v90;
        LODWORD(v67[0]) = v91;
        v62 = v86;
        v63 = v87;
        v32 = v49;
        v33 = v47;
        type metadata accessor for ContextMenuPreviewResponder(0, v49, v47, v34);
        v58 = v88;
        v59 = v89;
        v60 = v90;
        v61 = v91;
        v56 = v86;
        v57 = v87;
        v50 = v46;
        outlined init with copy of _ViewInputs(&v86, v55);
        outlined init with copy of _ViewInputs(&v86, v55);
        swift_allocObject();
        v35 = ContextMenuPreviewResponder.init(inputs:space:itemList:displayList:)(&v56, &v50, v28, v30);
        v36 = ContextMenuPreviewResponderFilter.init(modifier:children:inputs:responder:)(v31, &v62, v35, a4, a6, &v56);
        MEMORY[0x1EEE9AC00](v36);
        *&v62 = a4;
        *(&v62 + 1) = v32;
        *&v63 = a6;
        *(&v63 + 1) = v33;
        v37 = type metadata accessor for ContextMenuPreviewResponderFilter(0, &v62);
        v43 = v37;
        WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ContextMenuPreviewResponderFilter<A, B>, v37);
        _sSay7SwiftUI13ViewResponderCGMaTm_7(0, &lazy cache variable for type metadata for Attribute<[ViewResponder]>, type metadata accessor for [ViewResponder], MEMORY[0x1E698D388]);
        _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v56, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TA_9, v42, v37, MEMORY[0x1E69E73E0], v38, MEMORY[0x1E69E7410], v39);
        v62 = v56;
        v63 = v57;
        v64 = v58;
        *&v65 = v59;
        (*(*(v37 - 8) + 8))(&v62, v37);
        LOBYTE(v56) = 0;
        v40 = PreferencesOutputs.subscript.setter();
        *&v56 = v53;
        DWORD2(v56) = v54;
        MEMORY[0x1EEE9AC00](v40);
        v43 = &v86;
        outlined init with copy of PreferencesInputs(&v53, v55);
        PreferencesOutputs.makePreferenceWriter<A>(inputs:key:value:)();

        v27 = v52;
      }
    }

    v41 = v48;
    *v48 = v27;
    result = *(&v52 + 1);
    v41[1] = *(&v52 + 1);
  }

  else
  {
    v76 = v88;
    v77 = v89;
    v78 = v90;
    LODWORD(v79[0]) = v91;
    v74 = v86;
    v75 = v87;
    (a3)();
  }

  return result;
}

uint64_t ContextMenuPreviewResponderFilter.init(modifier:children:inputs:responder:)@<X0>(int a2@<W1>, __int128 *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v9 = *a4;
  v10 = a3[2];
  v11 = a3[4];
  v33 = a3[3];
  v34 = v11;
  v12 = a3[1];
  v30 = *a3;
  v35 = *(a3 + 20);
  v31 = v12;
  v32 = v10;
  v14 = *(v9 + class metadata base offset for ContextMenuPreviewResponder);
  v13 = *(v9 + class metadata base offset for ContextMenuPreviewResponder + 8);
  *&v24 = a5;
  *(&v24 + 1) = v14;
  *&v25 = a6;
  *(&v25 + 1) = v13;
  type metadata accessor for ContextMenuPreviewModifierCore(0, &v24);
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  v26 = v32;
  v27 = v33;
  v28 = v34;
  v29 = v35;
  v24 = v30;
  v25 = v31;
  v21 = _ViewInputs.animatedPosition()();
  v26 = v32;
  v27 = v33;
  v28 = v34;
  v15 = HIDWORD(v33);
  v29 = v35;
  v24 = v30;
  v25 = v31;
  swift_beginAccess();
  v16 = CachedEnvironment.animatedSize(for:)();
  swift_endAccess();
  v26 = v32;
  v27 = v33;
  v28 = v34;
  v29 = v35;
  v24 = v30;
  v25 = v31;
  v17 = _ViewInputs.containerPosition.getter();
  v26 = v32;
  v27 = v33;
  v28 = v34;
  v29 = v35;
  v24 = v30;
  v25 = v31;
  v18 = _ViewInputs.isEnabled.getter();
  outlined destroy of _ViewInputs(&v30);
  v19 = AGGraphCreateOffsetAttribute2();
  LODWORD(v14) = AGGraphCreateOffsetAttribute2();
  AGGraphCreateOffsetAttribute2();
  result = AGCreateWeakAttribute();
  *a7 = OffsetAttribute2;
  *(a7 + 4) = a2;
  *(a7 + 8) = v21;
  *(a7 + 12) = v15;
  *(a7 + 16) = v16;
  *(a7 + 20) = v17;
  *(a7 + 24) = v18;
  *(a7 + 28) = v19;
  *(a7 + 32) = v14;
  *(a7 + 36) = result;
  *(a7 + 48) = a4;
  return result;
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance ContextMenuPreviewModifierCore<A, B>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ContextMenuPreviewModifierCore<A, B>, a5);

  return MEMORY[0x1EEDE0720](a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t ContextMenuPreviewResponderFilter.updateValue()(uint64_t a1)
{
  v2 = v1;
  v51 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 24);
  v42 = type metadata accessor for Optional();
  v41 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v6 = &v38 - v5;
  type metadata accessor for CGPoint(0);
  v39 = v7;
  Value = AGGraphGetValue();
  v10 = v9;
  v11 = *Value;
  v12 = Value[1];
  v13 = *(v2 + 6);
  v14 = AGGraphGetValue();
  v15 = *v14;
  v16 = v14[1];
  if (((v10 | v17) & 1) != 0 || (v40 = *v14, v38 = v16, type metadata accessor for [ViewResponder](0), OutputValue = AGGraphGetOutputValue(), v16 = v38, v15 = v40, !OutputValue))
  {
    v47 = v15;
    v48 = v16;
    *(v13 + 224) = MEMORY[0x18D00B390]();
    *(v13 + 232) = v19;
    *(v13 + 240) = v11;
    *(v13 + 248) = v12;
  }

  v20 = v2[1];
  v47 = *v2;
  v48 = v20;
  v49 = v2[2];
  v50 = *(v2 + 6);
  v21 = v50;
  *(v13 + 304) = *AGGraphGetValue();
  v22 = *(v2 + 6);
  v23 = *(a1 - 8);
  v24 = *(v23 + 16);
  v24(v45, &v47, a1);
  *&v38 = v24;
  v24(v45, &v47, a1);
  *(v21 + 256) = AGCreateWeakAttribute();
  *(v22 + 264) = *AGGraphGetValue();
  v25 = *(v2 + 6);
  type metadata accessor for [ViewResponder](0);
  *&v40 = v26;
  AGGraphGetValue();
  if (v27)
  {

    MultiViewResponder.children.setter();
  }

  v28 = *(v23 + 8);
  v28(&v47, a1);
  v29 = AGGraphGetValue();
  v30 = v12 - v29[1];
  *(v25 + 280) = v11 - *v29;
  *(v25 + 288) = v30;
  if (*AGGraphGetValue() == 1)
  {
    v31 = *(v4 - 8);
    v32 = 1;
  }

  else
  {
    v33 = AGGraphGetValue();
    v31 = *(v4 - 8);
    (*(v31 + 16))(v6, v33, v4);
    v32 = 0;
  }

  (*(v31 + 56))(v6, v32, 1, v4);
  specialized ContextMenuPreviewResponder.preview.setter(v6);
  (*(v41 + 8))(v6, v42);
  v34 = v2[2];
  v45[1] = v2[1];
  v45[2] = v34;
  v45[0] = *v2;
  v46 = *(v2 + 6);
  AGWeakAttributeGetAttribute();
  *(v21 + 308) = AGCreateWeakAttribute();
  *(v21 + 316) = 0;
  v28(&v47, a1);
  result = AGGraphGetOutputValue();
  if (!result)
  {
    v36 = v46;
    type metadata accessor for Path?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Swift.AnyObject>, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_18CD69590;
    *(v37 + 32) = v36;
    v43 = v37;
    (v38)(v44, v45, a1);
    AGGraphSetOutputValue();
  }

  return result;
}

uint64_t static ContextMenuPreviewDestinationModifier._makeView(modifier:inputs:body:)(int *a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9)
{
  v13 = *a1;
  v14 = a2[3];
  v30 = a2[2];
  v31 = v14;
  v32 = a2[4];
  v33 = *(a2 + 20);
  v15 = a2[1];
  v28 = *a2;
  v29 = v15;
  v27 = v13;
  *&v21 = a5;
  *(&v21 + 1) = a6;
  *&v22 = a7;
  *(&v22 + 1) = a8;
  v23 = a9;
  type metadata accessor for ContextMenuPreviewDestinationModifier(255, &v21);
  type metadata accessor for _GraphValue();
  v16 = _GraphValue.value.getter();
  v24 = v31;
  v25 = v32;
  v26 = v33;
  v21 = v28;
  v22 = v29;
  v23 = v30;
  outlined init with copy of _ViewInputs(&v28, v20);
  ContextMenuPreviewDestinationModifier.Child.init(modifier:inputs:)(v16, &v21, v20);
  *&v21 = a5;
  *(&v21 + 1) = a6;
  *&v22 = a7;
  *(&v22 + 1) = a8;
  v23 = a9;
  v17 = type metadata accessor for ContextMenuPreviewDestinationModifier.Transform(0, &v21);
  *&v21 = a5;
  *(&v21 + 1) = a6;
  *&v22 = a7;
  *(&v22 + 1) = a8;
  v23 = a9;
  v18 = type metadata accessor for ContextMenuPreviewDestinationModifier.Child(0, &v21);
  swift_getWitnessTable(protocol conformance descriptor for ContextMenuPreviewDestinationModifier<A, B, C>.Child, v18);
  _GraphValue.init<A>(_:)();
  v24 = v31;
  v25 = v32;
  v26 = v33;
  v21 = v28;
  v22 = v29;
  v23 = v30;
  swift_getWitnessTable(protocol conformance descriptor for ContextMenuPreviewDestinationModifier<A, B, C>.Transform, v17);
  return static ViewModifier.makeDebuggableView(modifier:inputs:body:)();
}

__n128 ContextMenuPreviewDestinationModifier.Child.init(modifier:inputs:)@<Q0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a2 + 48);
  v11[2] = *(a2 + 32);
  v11[3] = v5;
  v11[4] = *(a2 + 64);
  v12 = *(a2 + 80);
  v6 = *(a2 + 16);
  v11[0] = *a2;
  v11[1] = v6;
  lazy protocol witness table accessor for type NavigationAuthority.DepthKey and conformance NavigationAuthority.DepthKey();
  PropertyList.subscript.getter();
  lazy protocol witness table accessor for type NavigationAuthority.StackKeyViewInputKey and conformance NavigationAuthority.StackKeyViewInputKey();
  PropertyList.subscript.getter();
  lazy protocol witness table accessor for type NavigationAuthority.ViewInputKey and conformance NavigationAuthority.ViewInputKey();
  PropertyList.subscript.getter();
  lazy protocol witness table accessor for type NavigationAuthority.SeedInputs and conformance NavigationAuthority.SeedInputs();
  PropertyList.subscript.getter();
  lazy protocol witness table accessor for type IsExtractingNavigationDestinations and conformance IsExtractingNavigationDestinations();
  v7.n128_u64[0] = v10;
  v7.n128_u64[1] = v10;
  v9 = v7;
  PropertyList.subscript.getter();
  outlined destroy of _ViewInputs(v11);
  *a3 = a1;
  *(a3 + 4) = v10;
  result = v9;
  *(a3 + 8) = v9;
  *(a3 + 24) = v10;
  *(a3 + 32) = v10;
  return result;
}

uint64_t ContextMenuPreviewDestinationModifier.Child.modifier.getter@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[2];
  v7[0] = a1[1];
  v7[1] = v3;
  v7[2] = a1[3];
  v4 = type metadata accessor for ContextMenuPreviewDestinationModifier(0, v7);
  Value = AGGraphGetValue();
  return (*(*(v4 - 8) + 16))(a2, Value, v4);
}

uint64_t ContextMenuPreviewDestinationModifier.Child.stackKey.getter()
{
  type metadata accessor for Path?(0, &lazy cache variable for type metadata for NavigationState.StackContent.Key?, &type metadata for NavigationState.StackContent.Key, MEMORY[0x1E69E6720]);
  result = AGGraphGetWeakValue();
  if (result)
  {
    return *result;
  }

  return result;
}

double ContextMenuPreviewDestinationModifier.Child.authority.getter@<D0>(uint64_t a1@<X8>)
{
  type metadata accessor for Path?(0, &lazy cache variable for type metadata for NavigationAuthority?, &type metadata for NavigationAuthority, MEMORY[0x1E69E6720]);
  WeakValue = AGGraphGetWeakValue();
  if (WeakValue)
  {

    outlined init with copy of NavigationAuthority?(WeakValue, a1);
  }

  else
  {
    result = 0.0;
    *a1 = xmmword_18CD874C0;
    *(a1 + 16) = 0;
  }

  return result;
}

uint64_t ContextMenuPreviewDestinationModifier.Child.value.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v4 = *(a1 + 16);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  v24 = *(a1 + 24);
  v25 = v4;
  *&v30 = v4;
  *(&v30 + 1) = v24;
  v31 = v5;
  v32 = v6;
  v33 = v7;
  v34 = v8;
  v9 = type metadata accessor for ContextMenuPreviewDestinationModifier(0, &v30);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v23 - v10;
  ContextMenuPreviewDestinationModifier.Child.modifier.getter(a1, &v23 - v10);
  v23 = *AGGraphGetValue();
  v12 = ContextMenuPreviewDestinationModifier.Child.stackKey.getter();
  v14 = v13;
  v16 = v15;
  ContextMenuPreviewDestinationModifier.Child.authority.getter(v29);
  outlined init with copy of NavigationAuthority??(v29, v27);
  if (v28 == 2)
  {
    outlined destroy of NavigationAuthority??(v29);
    v30 = xmmword_18CD633F0;
    v31 = 0;
  }

  else
  {
    outlined init with take of NavigationAuthority?(v27, &v30);
    outlined destroy of NavigationAuthority??(v29);
  }

  WeakValue = AGGraphGetWeakValue();
  if (WeakValue)
  {
    v18 = *WeakValue;
  }

  else
  {
    v18 = -1;
  }

  if (v14 == 7)
  {
    v19 = 0;
  }

  else
  {
    v19 = v12;
  }

  if (v14 == 7)
  {
    v20 = 6;
  }

  else
  {
    v20 = v14;
  }

  if (v14 == 7)
  {
    v21 = 0;
  }

  else
  {
    v21 = v16;
  }

  return ContextMenuPreviewDestinationModifier.Transform.init(modifier:depth:stackKey:navigationAuthority:navigationStateSeeds:isExtracting:)(v11, v23, v19, v20, v21, &v30, v18, *(v2 + 32), v26, v25, v24, v5, v6, v7, v8);
}

uint64_t ContextMenuPreviewDestinationModifier.Transform.init(modifier:depth:stackKey:navigationAuthority:navigationStateSeeds:isExtracting:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  *a9 = 0;
  *(a9 + 8) = 0;
  *(a9 + 16) = 0;
  v29 = a10;
  v30 = a11;
  v31 = a12;
  v32 = a13;
  v33 = a14;
  v34 = a15;
  v17 = type metadata accessor for ContextMenuPreviewDestinationModifier.Transform(0, &v29);
  v18 = v17[18];
  v29 = a10;
  v30 = a11;
  v31 = a12;
  v32 = a13;
  v33 = a14;
  v34 = a15;
  v19 = type metadata accessor for ContextMenuPreviewDestinationModifier(0, &v29);
  (*(*(v19 - 8) + 32))(a9 + v18, a1, v19);
  *(a9 + v17[19]) = a2;
  v20 = (a9 + v17[20]);
  *v20 = a3;
  v20[1] = a4;
  v20[2] = a5;
  result = outlined init with take of NavigationAuthority?(a6, a9 + v17[21]);
  *(a9 + v17[22]) = a7;
  *(a9 + v17[23]) = a8;
  return result;
}

uint64_t protocol witness for static Rule.initialValue.getter in conformance ContextMenuPreviewDestinationModifier<A, B, C>.Child@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[2];
  v6[0] = a1[1];
  v6[1] = v3;
  v6[2] = a1[3];
  v4 = type metadata accessor for ContextMenuPreviewDestinationModifier.Transform(0, v6);
  return (*(*(v4 - 8) + 56))(a2, 1, 1, v4);
}

uint64_t ContextMenuPreviewDestinationModifier.Transform.body(content:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v3 = v2;
  v61 = a2;
  v53 = *(a1 + 16);
  v51 = *(a1 + 40);
  v67 = v53;
  *v68 = v51;
  v5 = type metadata accessor for ContextMenuPreviewModifier(0, &v67);
  v50 = *(v5 - 8);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = &v45 - v7;
  swift_getWitnessTable(protocol conformance descriptor for ContextMenuPreviewDestinationModifier<A, B, C>.Transform, a1, v6);
  v9 = type metadata accessor for _ViewModifier_Content();
  v10 = type metadata accessor for ModifiedContent();
  v58 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v45 - v11;
  v13 = *(a1 + 32);
  v14 = *(a1 + 56);
  type metadata accessor for UpdateViewDestinationViewModifier(255, v13, v14, v15);
  type metadata accessor for UpdateViewDestinationRequestProcessor(255, v13, MEMORY[0x1E69E6370], MEMORY[0x1E69E6380]);
  v16 = type metadata accessor for ModifiedContent();
  v60 = v10;
  v55 = v16;
  v52 = type metadata accessor for ModifiedContent();
  v59 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v54 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v56 = &v45 - v19;
  ContextMenuPreviewDestinationModifier.Transform.contextMenuModifier.getter(a1, v8);
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E697FDF8], v9);
  v57 = v12;
  MEMORY[0x18D00A570](v8, v9, v5, WitnessTable);
  (*(v50 + 8))(v8, v5);
  v21 = *(v3 + 16);
  LOBYTE(v65) = *(v3 + 8);
  v66 = v21;
  type metadata accessor for Path?(0, &lazy cache variable for type metadata for State<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
  State.projectedValue.getter();
  v49 = *(&v67 + 1);
  v50 = v67;
  v48 = v68[0];
  v22 = *(a1 + 72);
  v67 = v53;
  *&v53 = v13;
  *v68 = v13;
  *&v68[8] = v51;
  *&v51 = v14;
  v69 = v14;
  v47 = *(type metadata accessor for ContextMenuPreviewDestinationModifier(0, &v67) + 72);
  v23 = (v3 + *(a1 + 80));
  v24 = *(v23 + 8);
  if (v24 == 6)
  {
    v25 = 0;
    v24 = 0;
    v26 = 0;
    v27 = 0x1FFFFFFFELL;
  }

  else
  {
    v27 = 0;
    v26 = v23[2];
    v25 = *v23;
  }

  v28 = v3 + v22;
  *&v67 = v25;
  *(&v67 + 1) = v24;
  *v68 = v26;
  *&v68[16] = v27;
  v69 = 0;
  v46 = *(v3 + *(a1 + 76));
  v29 = Namespace.wrappedValue.getter();
  v30 = v3 + *(a1 + 84);
  v31 = *(v3 + *(a1 + 92));
  v65 = 0;
  Transaction.disablesAnimations.setter();
  v32 = v65;
  v33 = swift_getWitnessTable(protocol conformance descriptor for ContextMenuPreviewModifier<A, B>, v5);
  v64[0] = WitnessTable;
  v64[1] = v33;
  v34 = MEMORY[0x1E697E858];
  v35 = v60;
  v36 = swift_getWitnessTable(MEMORY[0x1E697E858], v60, v64);
  v44 = v31;
  v37 = v54;
  v38 = v57;
  View.updateViewDestinations<A>(isPresented:destination:key:kind:id:shouldTargetSourceColumn:navigationAuthority:isExtractingDestinations:transaction:)(v50, v49, v48, v28 + v47, &v67, v46, 0, v29, v54, 0, v30, v44, v32, v35, v53, v36, v51);

  (*(v58 + 8))(v38, v35);
  v63[0] = &protocol witness table for UpdateViewDestinationViewModifier<A>;
  v63[1] = &protocol witness table for UpdateViewDestinationRequestProcessor<A, B>;
  v39 = swift_getWitnessTable(MEMORY[0x1E697E840], v55, v63);
  v62[0] = v36;
  v62[1] = v39;
  v40 = v52;
  swift_getWitnessTable(v34, v52, v62);
  v41 = v56;
  static ViewBuilder.buildExpression<A>(_:)();
  v42 = *(v59 + 8);
  v42(v37, v40);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v42)(v41, v40);
}

uint64_t ContextMenuPreviewDestinationModifier.Transform.contextMenuModifier.getter@<X0>(int8x16_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = a1[1].i64[1];
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v26.i8[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = *(v9 + 16);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v26.i8[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = v2 + *(v14 + 72);
  (*(v16 + 16))(v13, v15, v10, v11);
  *&v17 = v10;
  *(&v17 + 1) = v5;
  v18 = a1[2];
  v26 = a1[3];
  v27 = v18;
  v30 = v17;
  v31 = v18;
  v32 = v26;
  v19 = type metadata accessor for ContextMenuPreviewDestinationModifier(0, &v30);
  (*(v6 + 16))(v8, v15 + *(v19 + 68), v5);
  if (ContextMenuPreviewDestinationModifier.Transform.isDisabled.getter(a1))
  {
    v20 = 0;
    v21 = 0;
    v22 = -2;
  }

  else
  {
    v23 = *(v2 + 16);
    v28 = *(v2 + 8);
    v29 = v23;
    type metadata accessor for Path?(0, &lazy cache variable for type metadata for State<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
    State.projectedValue.getter();
    v21 = *(&v30 + 1);
    v20 = v30;
    v22 = v31.i8[0] | 0x80;
  }

  v25 = vextq_s8(v27, v26, 8uLL);
  return ContextMenuPreviewModifier.init(menuView:preview:hidePreview:previewAction:)(v13, v8, 0, v20, v21, v22, v10, v5, a2, v25.i64[0], v25.i64[1]);
}

BOOL ContextMenuPreviewDestinationModifier.Transform.isDisabled.getter(uint64_t a1)
{
  outlined init with copy of NavigationAuthority?(v1 + *(a1 + 84), v5);
  v3 = v6;
  _s7SwiftUI4PathVSgWOhTm_0(v5, &lazy cache variable for type metadata for NavigationAuthority?, &type metadata for NavigationAuthority);
  return v3 == 1 || *(v1 + *(a1 + 80) + 8) == 6;
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance ContextMenuPreviewDestinationModifier<A, B, C>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ContextMenuPreviewDestinationModifier<A, B, C>, a5);

  return MEMORY[0x1EEDE0720](a1, a2, a3, a4, a5, WitnessTable);
}

void ContextMenuPreviewResponder.preview.didset(uint64_t a1)
{
  v2 = v1;
  v4 = (*v2 + class metadata base offset for ContextMenuPreviewResponder);
  v5 = *v4;
  v6 = type metadata accessor for Optional();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v19 - v8;
  v10 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v19 - v12;
  v14 = *&v2[v4[3]];
  if (v14)
  {
    v15 = v4[2];
    swift_beginAccess();
    (*(v7 + 16))(v9, &v2[v15], v6);
    v16 = *(v10 + 48);
    if (v16(v9, 1, v5) == 1)
    {
      (*(v7 + 8))(v9, v6);
    }

    else
    {
      (*(v10 + 32))(v13, v9, v5);
      if (v16(a1, 1, v5) != 1)
      {
        v17 = v14;
        specialized UIHostingController.rootView.setter(v13);
        MEMORY[0x1EEE9AC00](v18);
        *(&v19 - 2) = v17;
        static Update.ensure<A>(_:)();
      }

      (*(v10 + 8))(v13, v5);
    }
  }
}

void closure #1 in ContextMenuPreviewResponder.preview.didset(uint64_t *a1)
{
  v1 = *a1;
  v2 = *MEMORY[0x1E69E7D40];
  [a1 preferredContentSize];
  v4 = v3;
  v6 = v5;
  v7 = specialized UIHostingController.host.getter();
  v9 = type metadata accessor for _UIHostingView(0, *((v2 & v1) + 0x50), *((v2 & v1) + 0x58), v8);
  v10 = v7;
  swift_getWitnessTable(protocol conformance descriptor for _UIHostingView<A>, v9);
  v11 = ViewRendererHost.idealSize()();

  UIHostingController.idealSizeDidChange(from:to:)(__PAIR128__(v6, v4), v11);
}

id ContextMenuPreviewResponder.previewHost.getter()
{
  v1 = v0;
  v2 = *v0;
  v3 = v2 + class metadata base offset for ContextMenuPreviewResponder;
  v4 = *(v2 + class metadata base offset for ContextMenuPreviewResponder);
  v5 = type metadata accessor for Optional();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v30 - v7;
  v9 = *&v1[*(v3 + 24)];
  v10 = v9;
  if (v9)
  {
LABEL_9:
    v29 = v9;
    return v10;
  }

  v31 = *(v3 + 24);
  v11 = *(v3 + 16);
  swift_beginAccess();
  (*(v6 + 16))(v8, &v1[v11], v5);
  v12 = *(v4 - 8);
  result = (*(v12 + 48))(v8, 1, v4);
  if (result != 1)
  {
    type metadata accessor for UIHostingController(0, v4, *(v2 + class metadata base offset for ContextMenuPreviewResponder + 8), v14);
    v10 = specialized UIHostingController.__allocating_init(rootView:)(v8, v15, v16, v17);
    (*(v12 + 8))(v8, v4);
    UIViewSnapshotResponder.contentPath.getter(v39);
    if (v40 != 255)
    {
      v41 = v39[0];
      v42 = v39[1];
      v43 = v40;
      Path.roundedRect()();
      if (v38 == 2 || (v18 = v37, v19 = v36, v20 = v35, v21 = v34, v22 = v33, v23 = v32, v24 = v38 & 1, v38 &= 1u, (FixedRoundedRect.isUniform.getter() & 1) == 0))
      {
        _s7SwiftUI4PathVSgWOhTm_0(v39, &lazy cache variable for type metadata for Path?, MEMORY[0x1E6980F80]);
      }

      else
      {
        v25 = [specialized UIHostingController.host.getter() layer];
        v32 = v23;
        v33 = v22;
        v34 = v21;
        v35 = v20;
        v36 = v19;
        v37 = v18;
        v38 = v24;
        FixedRoundedRect.cornerSize.getter();
        [v25 setCornerRadius_];
        _s7SwiftUI4PathVSgWOhTm_0(v39, &lazy cache variable for type metadata for Path?, MEMORY[0x1E6980F80]);
      }
    }

    v32 = 3;
    v26 = UIHostingController.sizingOptions.setter(&v32);
    MEMORY[0x1EEE9AC00](v26);
    *(&v30 - 2) = v10;
    static Update.ensure<A>(_:)();
    v27 = *&v1[v31];
    *&v1[v31] = v10;
    v28 = v10;

    goto LABEL_9;
  }

  __break(1u);
  return result;
}

void closure #1 in ContextMenuPreviewResponder.previewHost.getter(uint64_t *a1)
{
  v1 = *a1;
  v2 = *MEMORY[0x1E69E7D40];
  v3 = specialized UIHostingController.host.getter();
  v5 = type metadata accessor for _UIHostingView(0, *((v2 & v1) + 0x50), *((v2 & v1) + 0x58), v4);
  v6 = v3;
  swift_getWitnessTable(protocol conformance descriptor for _UIHostingView<A>, v5);
  v7 = ViewRendererHost.idealSize()();

  UIHostingController.idealSizeDidChange(from:to:)(0, v7);
}

uint64_t (*ContextMenuPreviewResponder.previewProvider.getter())()
{
  v1 = (*v0 + class metadata base offset for ContextMenuPreviewResponder);
  v2 = *v1;
  v3 = type metadata accessor for Optional();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - v5;
  v7 = v1[2];
  swift_beginAccess();
  (*(v4 + 16))(v6, &v0[v7], v3);
  LODWORD(v2) = (*(*(v2 - 8) + 48))(v6, 1, v2);
  (*(v4 + 8))(v6, v3);
  result = 0;
  if (v2 != 1)
  {

    return partial apply for closure #1 in ContextMenuPreviewResponder.previewProvider.getter;
  }

  return result;
}

uint64_t ContextMenuPreviewResponder.init(inputs:space:itemList:displayList:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = *a2;
  (*(*(*(*v4 + class metadata base offset for ContextMenuPreviewResponder) - 8) + 56))(v4 + *(*v4 + class metadata base offset for ContextMenuPreviewResponder + 16), 1, 1);
  *(v4 + *(*v4 + class metadata base offset for ContextMenuPreviewResponder + 24)) = 0;
  *(v4 + 308) = 0;
  *(v4 + 316) = 1;
  *(v4 + 320) = 0;
  *(v4 + 296) = 0;
  *(v4 + 304) = 0;
  v6 = AGCreateWeakAttribute();
  *(v4 + 288) = 0;
  *(v4 + 296) = v6;
  *(v4 + 224) = 0u;
  *(v4 + 240) = 0u;
  *(v4 + 256) = 0;
  *(v4 + 264) = 1;
  *(v4 + 268) = 0;
  *(v4 + 280) = 0;
  *(v4 + 216) = v5;
  *(v4 + 268) = AGCreateWeakAttribute();
  return DefaultLayoutViewResponder.init(inputs:)();
}

void ContextMenuPreviewResponder.__ivar_destroyer()
{
  v1 = *(*v0 + class metadata base offset for ContextMenuPreviewResponder + 16);
  v2 = type metadata accessor for Optional();
  (*(*(v2 - 8) + 8))(&v0[v1], v2);
  v3 = *&v0[*(*v0 + class metadata base offset for ContextMenuPreviewResponder + 24)];
}

char *ContextMenuPreviewResponder.deinit()
{
  v0 = DefaultLayoutViewResponder.deinit();
  v1 = *(*v0 + class metadata base offset for ContextMenuPreviewResponder + 16);
  v2 = type metadata accessor for Optional();
  (*(*(v2 - 8) + 8))(&v0[v1], v2);

  return v0;
}

double ContextMenuPreviewResponder.__deallocating_deinit()
{
  ContextMenuPreviewResponder.deinit();

  swift_deallocClassInstance();
  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for ContextMenuPreviewAction(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  outlined copy of ContextMenuPreviewAction(*a2, v4, v5);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  return a1;
}

uint64_t assignWithCopy for ContextMenuPreviewAction(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  outlined copy of ContextMenuPreviewAction(*a2, v4, v5);
  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = v3;
  *(a1 + 8) = v4;
  v8 = *(a1 + 16);
  *(a1 + 16) = v5;
  outlined consume of ContextMenuPreviewAction(v6, v7, v8);
  return a1;
}

uint64_t assignWithTake for ContextMenuPreviewAction(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *a1;
  v5 = *(a1 + 8);
  *a1 = *a2;
  v6 = *(a1 + 16);
  *(a1 + 16) = v3;
  outlined consume of ContextMenuPreviewAction(v4, v5, v6);
  return a1;
}

uint64_t type metadata completion function for ContextMenuPreviewModifier(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for ContextMenuPreviewModifier(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = *(a3 + 24) - 8;
  v8 = *v7;
  v9 = *(*v7 + 80);
  v10 = *(v5 + 64) + v9;
  v11 = *(*v7 + 64);
  if ((v9 | v6) > 7 || ((*(*v7 + 80) | *(v5 + 80)) & 0x100000) != 0 || ((((((-18 - v6) | v6) - v10) | v9) - v11) | 7) > 0x18)
  {
    v14 = *a2;
    *a1 = *a2;
    v15 = v14 + (((v9 | v6) & 0xF8 ^ 0x1F8) & ((v9 | v6) + 16));
  }

  else
  {
    v30 = *(a3 + 24);
    *a1 = *a2;
    v16 = (a1 + 11) & 0xFFFFFFFFFFFFFFF8;
    v17 = (a2 + 11) & 0xFFFFFFFFFFFFFFF8;
    v18 = *v17;
    v19 = *(v17 + 8);
    v29 = v4;
    outlined copy of Environment<Bool>.Content();
    *v16 = v18;
    *(v16 + 8) = v19;
    (*(v5 + 16))((v16 + v6 + 9) & ~v6, (v17 + v6 + 9) & ~v6, v29);
    v20 = (((v16 + v6 + 9) & ~v6) + v10) & ~v9;
    v21 = (((v17 + v6 + 9) & ~v6) + v10) & ~v9;
    (*(v8 + 16))(v20, v21, v30);
    *(v20 + v11) = *(v21 + v11);
    v22 = (v20 + v11) & 0xFFFFFFFFFFFFFFF8;
    v23 = (v21 + v11) & 0xFFFFFFFFFFFFFFF8;
    v24 = *(v23 + 24);
    if ((v24 & 0x7E) != 0)
    {
      v25 = *(v23 + 8);
      *(v22 + 24) = *(v23 + 24);
      *(v22 + 8) = v25;
    }

    else
    {
      v26 = *(v23 + 8);
      v27 = *(v23 + 16);
      outlined copy of ContextMenuPreviewAction(v26, v27, *(v23 + 24));
      *(v22 + 8) = v26;
      *(v22 + 16) = v27;
      *(v22 + 24) = v24;
    }

    return a1;
  }

  return v15;
}

double destroy for ContextMenuPreviewModifier(uint64_t a1, uint64_t a2)
{
  v3 = (a1 + 11) & 0xFFFFFFFFFFFFFFF8;
  outlined consume of Environment<Bool>.Content(*v3, *(v3 + 8));
  v4 = *(*(a2 + 16) - 8);
  v5 = v4 + 8;
  v6 = (v3 + *(v4 + 80) + 9) & ~*(v4 + 80);
  (*(v4 + 8))(v6);
  v7 = *(v5 + 56);
  v8 = *(*(a2 + 24) - 8);
  v9 = v8 + 8;
  v10 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  (*(v8 + 8))(v10);
  v12 = (v10 + *(v9 + 56)) & 0xFFFFFFFFFFFFFFF8;
  v13 = *(v12 + 24);
  if ((v13 & 0x7E) == 0)
  {
    v14 = *(v12 + 8);
    v15 = *(v12 + 16);

    return outlined consume of ContextMenuPreviewAction(v14, v15, v13);
  }

  return result;
}

_DWORD *initializeWithCopy for ContextMenuPreviewModifier(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = (a1 + 11) & 0xFFFFFFFFFFFFFFF8;
  v6 = (a2 + 11) & 0xFFFFFFFFFFFFFFF8;
  v7 = *v6;
  v8 = *(v6 + 8);
  outlined copy of Environment<Bool>.Content();
  *v5 = v7;
  *(v5 + 8) = v8;
  v9 = *(*(a3 + 16) - 8);
  v10 = v9 + 16;
  v11 = *(v9 + 80);
  v12 = (v11 + 9 + v5) & ~v11;
  v13 = (v11 + 9 + v6) & ~v11;
  (*(v9 + 16))(v12, v13);
  v14 = *(*(a3 + 24) - 8);
  v15 = v14 + 16;
  v16 = *(v14 + 80);
  v17 = *(v10 + 48) + v16;
  v18 = (v17 + v12) & ~v16;
  v19 = (v17 + v13) & ~v16;
  (*(v14 + 16))(v18, v19);
  v20 = *(v15 + 48);
  v21 = v20 + v18;
  v22 = v20 + v19;
  *v21 = *v22;
  v23 = v21 & 0xFFFFFFFFFFFFFFF8;
  v24 = v22 & 0xFFFFFFFFFFFFFFF8;
  v25 = *(v24 + 24);
  if ((v25 & 0x7E) != 0)
  {
    v26 = *(v24 + 8);
    *(v23 + 24) = *(v24 + 24);
    *(v23 + 8) = v26;
  }

  else
  {
    v27 = *(v24 + 8);
    v28 = *(v24 + 16);
    outlined copy of ContextMenuPreviewAction(v27, v28, *(v24 + 24));
    *(v23 + 8) = v27;
    *(v23 + 16) = v28;
    *(v23 + 24) = v25;
  }

  return a1;
}

_DWORD *assignWithCopy for ContextMenuPreviewModifier(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = (a1 + 11) & 0xFFFFFFFFFFFFFFF8;
  v6 = (a2 + 11) & 0xFFFFFFFFFFFFFFF8;
  v7 = *v6;
  v8 = *(v6 + 8);
  outlined copy of Environment<Bool>.Content();
  v9 = *v5;
  v10 = *(v5 + 8);
  *v5 = v7;
  *(v5 + 8) = v8;
  outlined consume of Environment<Bool>.Content(v9, v10);
  v11 = *(*(a3 + 16) - 8);
  v12 = v11 + 24;
  v13 = *(v11 + 80);
  v14 = (v13 + 9 + v5) & ~v13;
  v15 = (v13 + 9 + v6) & ~v13;
  (*(v11 + 24))(v14, v15);
  v16 = *(*(a3 + 24) - 8);
  v17 = v16 + 24;
  v18 = *(v16 + 80);
  v19 = *(v12 + 40) + v18;
  v20 = (v19 + v14) & ~v18;
  v21 = (v19 + v15) & ~v18;
  (*(v16 + 24))(v20, v21);
  v22 = *(v17 + 40);
  v23 = v22 + v20;
  v24 = v22 + v21;
  *v23 = *v24;
  v25 = v23 & 0xFFFFFFFFFFFFFFF8;
  v26 = v24 & 0xFFFFFFFFFFFFFFF8;
  v27 = *((v24 & 0xFFFFFFFFFFFFFFF8) + 24);
  if ((*((v23 & 0xFFFFFFFFFFFFFFF8) + 24) & 0x7E) == 0)
  {
    if ((v27 & 0x7E) == 0)
    {
      v32 = *(v26 + 8);
      v33 = *(v26 + 16);
      outlined copy of ContextMenuPreviewAction(v32, v33, v27);
      v34 = *(v25 + 8);
      v35 = *(v25 + 16);
      *(v25 + 8) = v32;
      *(v25 + 16) = v33;
      v36 = *(v25 + 24);
      *(v25 + 24) = v27;
      outlined consume of ContextMenuPreviewAction(v34, v35, v36);
      return a1;
    }

    outlined consume of ContextMenuPreviewAction(*(v25 + 8), *(v25 + 16), *((v23 & 0xFFFFFFFFFFFFFFF8) + 24));
    goto LABEL_6;
  }

  if ((v27 & 0x7E) != 0)
  {
LABEL_6:
    v30 = *(v26 + 8);
    *(v25 + 24) = *(v26 + 24);
    *(v25 + 8) = v30;
    return a1;
  }

  v28 = *(v26 + 8);
  v29 = *(v26 + 16);
  outlined copy of ContextMenuPreviewAction(v28, v29, v27);
  *(v25 + 8) = v28;
  *(v25 + 16) = v29;
  *(v25 + 24) = v27;
  return a1;
}

_DWORD *initializeWithTake for ContextMenuPreviewModifier(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = (a1 + 11) & 0xFFFFFFFFFFFFFFF8;
  v6 = (a2 + 11) & 0xFFFFFFFFFFFFFFF8;
  v7 = *v6;
  *(v5 + 8) = *(v6 + 8);
  *v5 = v7;
  v8 = *(*(a3 + 16) - 8);
  v9 = v8 + 32;
  v10 = *(v8 + 80);
  v11 = (v10 + 9 + v5) & ~v10;
  v12 = (v10 + 9 + v6) & ~v10;
  (*(v8 + 32))(v11, v12);
  v13 = *(v9 + 32);
  v14 = *(*(a3 + 24) - 8);
  v15 = v14 + 32;
  v16 = *(v14 + 80);
  v17 = v13 + v16;
  v18 = (v17 + v11) & ~v16;
  v19 = (v17 + v12) & ~v16;
  (*(v14 + 32))(v18, v19);
  v20 = *(v15 + 32);
  v21 = v20 + v18;
  v22 = v20 + v19;
  *v21 = *v22;
  v21 &= 0xFFFFFFFFFFFFFFF8;
  v22 &= 0xFFFFFFFFFFFFFFF8;
  v23 = *(v22 + 24);
  *(v21 + 8) = *(v22 + 8);
  *(v21 + 24) = v23;
  return a1;
}

_DWORD *assignWithTake for ContextMenuPreviewModifier(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = (a1 + 11) & 0xFFFFFFFFFFFFFFF8;
  v6 = (a2 + 11) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v6 + 8);
  v8 = *v5;
  v9 = *(v5 + 8);
  *v5 = *v6;
  *(v5 + 8) = v7;
  outlined consume of Environment<Bool>.Content(v8, v9);
  v10 = *(*(a3 + 16) - 8);
  v11 = v10 + 40;
  v12 = *(v10 + 80);
  v13 = (v12 + 9 + v5) & ~v12;
  v14 = (v12 + 9 + v6) & ~v12;
  (*(v10 + 40))(v13, v14);
  v15 = *(v11 + 24);
  v16 = *(*(a3 + 24) - 8);
  v17 = v16 + 40;
  v18 = *(v16 + 80);
  v19 = v15 + v18;
  v20 = (v19 + v13) & ~v18;
  v21 = (v19 + v14) & ~v18;
  (*(v16 + 40))(v20, v21);
  v22 = *(v17 + 24);
  v23 = v22 + v20;
  v24 = v22 + v21;
  *v23 = *v24;
  v25 = v23 & 0xFFFFFFFFFFFFFFF8;
  v26 = v24 & 0xFFFFFFFFFFFFFFF8;
  v27 = *((v23 & 0xFFFFFFFFFFFFFFF8) + 24);
  if ((v27 & 0x7E) == 0)
  {
    v28 = *(v26 + 24);
    v29 = *(v25 + 8);
    v30 = *(v25 + 16);
    if ((v28 & 0x7E) == 0)
    {
      *(v25 + 8) = *(v26 + 8);
      *(v25 + 24) = v28;
      outlined consume of ContextMenuPreviewAction(v29, v30, v27);
      return a1;
    }

    outlined consume of ContextMenuPreviewAction(v29, v30, v27);
  }

  v31 = *(v26 + 8);
  *(v25 + 24) = *(v26 + 24);
  *(v25 + 8) = v31;
  return a1;
}

uint64_t getEnumTagSinglePayload for ContextMenuPreviewModifier(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v4 + 80);
  v10 = *(v4 + 64);
  v11 = *(v7 + 80);
  if (v5 <= v8)
  {
    v12 = *(v7 + 84);
  }

  else
  {
    v12 = *(v4 + 84);
  }

  if (v12 <= 0xFE)
  {
    v13 = 254;
  }

  else
  {
    v13 = v12;
  }

  if (!a2)
  {
    return 0;
  }

  if (v13 >= a2)
  {
    goto LABEL_31;
  }

  v14 = ((((v10 + v11 + ((v9 + 17) & ~v9)) & ~v11) + *(*(v6 - 8) + 64)) & 0xFFFFFFFFFFFFFFF8) + 25;
  v15 = (a2 - v13 + 255) >> 8;
  if (v14 <= 3)
  {
    v16 = v15 + 1;
  }

  else
  {
    v16 = 2;
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

  if (v18 > 1)
  {
    if (v18 == 2)
    {
      v19 = *&a1[v14];
      if (*&a1[v14])
      {
        goto LABEL_27;
      }
    }

    else
    {
      v19 = *&a1[v14];
      if (v19)
      {
        goto LABEL_27;
      }
    }

LABEL_31:
    v23 = (a1 + 11) & 0xFFFFFFFFFFFFFFF8;
    if (v12 > 0xFE)
    {
      v25 = (v23 + v9 + 9) & ~v9;
      if (v5 == v13)
      {
        return (*(v4 + 48))(v25);
      }

      else
      {
        return (*(v7 + 48))((v25 + v10 + v11) & ~v11, v8, v6);
      }
    }

    else
    {
      v24 = *(v23 + 8);
      if (v24 > 1)
      {
        return (v24 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  if (!v18)
  {
    goto LABEL_31;
  }

  v19 = a1[v14];
  if (!a1[v14])
  {
    goto LABEL_31;
  }

LABEL_27:
  v21 = (v19 - 1) << (8 * v14);
  if (v14 <= 3)
  {
    v22 = *a1;
  }

  else
  {
    v21 = 0;
    v22 = *a1;
  }

  return v13 + (v22 | v21) + 1;
}

void storeEnumTagSinglePayload for ContextMenuPreviewModifier(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = *(a4 + 24);
  v9 = *(v8 - 8);
  v10 = *(v6 + 80);
  v11 = *(v6 + 64);
  v12 = *(v9 + 80);
  if (v7 <= *(v9 + 84))
  {
    v13 = *(v9 + 84);
  }

  else
  {
    v13 = *(v6 + 84);
  }

  if (v13 <= 0xFE)
  {
    v14 = 254;
  }

  else
  {
    v14 = v13;
  }

  v15 = ((((v11 + v12 + ((v10 + 17) & ~v10)) & ~v12) + *(*(v8 - 8) + 64)) & 0xFFFFFFFFFFFFFFF8) + 25;
  if (v14 >= a3)
  {
    v19 = 0;
    if (v14 >= a2)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v16 = (a3 - v14 + 255) >> 8;
    if (v15 <= 3)
    {
      v17 = v16 + 1;
    }

    else
    {
      v17 = 2;
    }

    if (v17 >= 0x10000)
    {
      v18 = 4;
    }

    else
    {
      v18 = 2;
    }

    if (v17 < 0x100)
    {
      v18 = 1;
    }

    if (v17 >= 2)
    {
      v19 = v18;
    }

    else
    {
      v19 = 0;
    }

    if (v14 >= a2)
    {
LABEL_20:
      if (v19 > 1)
      {
        if (v19 != 2)
        {
          *&a1[v15] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_35;
        }

        *&a1[v15] = 0;
      }

      else if (v19)
      {
        a1[v15] = 0;
        if (!a2)
        {
          return;
        }

LABEL_35:
        v22 = (a1 + 11) & 0xFFFFFFFFFFFFFFF8;
        if (v13 > 0xFE)
        {
          v23 = (v22 + v10 + 9) & ~v10;
          if (v7 == v14)
          {
            v24 = *(v6 + 56);

            v24(v23);
          }

          else
          {
            v25 = *(v9 + 56);
            v26 = (v23 + v11 + v12) & ~v12;

            v25(v26);
          }
        }

        else if (a2 > 0xFE)
        {
          *(v22 + 8) = 0;
          *v22 = a2 - 255;
        }

        else
        {
          *(v22 + 8) = -a2;
        }

        return;
      }

      if (!a2)
      {
        return;
      }

      goto LABEL_35;
    }
  }

  v20 = ~v14 + a2;
  bzero(a1, v15);
  if (v15 <= 3)
  {
    v21 = (v20 >> 8) + 1;
  }

  else
  {
    v21 = 1;
  }

  if (v15 <= 3)
  {
    *a1 = v20;
    if (v19 > 1)
    {
LABEL_30:
      if (v19 == 2)
      {
        *&a1[v15] = v21;
      }

      else
      {
        *&a1[v15] = v21;
      }

      return;
    }
  }

  else
  {
    *a1 = v20;
    if (v19 > 1)
    {
      goto LABEL_30;
    }
  }

  if (v19)
  {
    a1[v15] = v21;
  }
}

void type metadata accessor for StaticIf<_SemanticFeature<Semantics_v5>, PortalGroupRendererEffect, EmptyModifier>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  if (!*a2)
  {
    a3(255);
    v5 = type metadata accessor for StaticIf();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t type metadata completion function for ContextMenuPreviewDestinationModifier.Transform(_OWORD *a1)
{
  v1 = MEMORY[0x1E69E5D08] + 64;
  v6 = MEMORY[0x1E69E5D08] + 64;
  v7 = &unk_18CE00D90;
  v2 = a1[2];
  v5[0] = a1[1];
  v5[1] = v2;
  v5[2] = a1[3];
  result = type metadata accessor for ContextMenuPreviewDestinationModifier(319, v5);
  if (v4 <= 0x3F)
  {
    v8 = *(result - 8) + 64;
    v9 = v1;
    v10 = &unk_18CE00DA8;
    v11 = &unk_18CE00DC0;
    v12 = &unk_18CE00DD8;
    v13 = &unk_18CE00C38;
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for ContextMenuPreviewDestinationModifier.Transform(uint64_t *a1, uint64_t *a2, void *a3)
{
  v3 = *(*(a3[4] - 8) + 80);
  v4 = *(*(a3[3] - 8) + 80);
  v5 = *(*(a3[2] - 8) + 80);
  v6 = *a2;
  *a1 = *a2;
  v7 = ((v4 | v3) | v5) & 0xF8 | 7u;
  v8 = (v7 + 16) & ~v7;

  return v6 + v8;
}

double destroy for ContextMenuPreviewDestinationModifier.Transform(uint64_t a1, void *a2)
{
  v3 = (a1 + 15) & 0xFFFFFFFFFFFFFFF8;

  v4 = a2[3];
  v5 = *(a2[2] - 8);
  v6 = v5 + 8;
  v7 = *(v4 - 8);
  v8 = a2[4];
  v9 = *(v8 - 8);
  v10 = (*(v7 + 80) | *(v9 + 80) | *(v5 + 80));
  v11 = *(v7 + 80);
  v12 = *(v9 + 80);
  v13 = (v3 + v10 + 16) & ~v10;
  (*(v5 + 8))(v13);
  v14 = *(v6 + 56) + v11;
  (*(v7 + 8))((v14 + v13) & ~v11, v4);
  v15 = *(v7 + 64) + v12;
  (*(v9 + 8))((v15 + ((v14 + v13) & ~v11)) & ~v12, v8);
  v17 = *(((((((v13 + ((v15 + (v14 & ~v11)) & ~v12) + *(v9 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 8);
  if (v17 >= 0xFFFFFFFF)
  {
    LODWORD(v17) = -1;
  }

  if (v17 - 1 < 0)
  {
    swift_weakDestroy();
  }

  return result;
}

void *initializeWithCopy for ContextMenuPreviewDestinationModifier.Transform(void *a1, uint64_t *a2, void *a3)
{
  v4 = *a2;
  v3 = a2 + 15;
  *a1 = v4;
  v5 = (a1 + 15) & 0xFFFFFFFFFFFFFFF8;
  *v5 = *(v3 & 0xFFFFFFFFFFFFFFF8);
  *(v5 + 8) = *((v3 & 0xFFFFFFFFFFFFFFF8) + 8);
  v6 = a3[2];
  v7 = *(v6 - 8);
  v8 = *(v7 + 16);
  v9 = v7 + 16;
  v10 = a3[4];
  v33 = a3[3];
  v11 = *(v33 - 8);
  v12 = *(v11 + 80);
  v13 = *(v10 - 8);
  v14 = *(v13 + 80);
  v15 = (*(v11 + 80) | *(v13 + 80) | *(v7 + 80));
  v16 = (v15 + 16 + v5) & ~v15;
  v17 = (v15 + 16 + (v3 & 0xFFFFFFFFFFFFFFF8)) & ~v15;

  v8(v16, v17, v6);
  v18 = *(v9 + 48) + v12;
  (*(v11 + 16))((v18 + v16) & ~v12, (v18 + v17) & ~v12, v33);
  v19 = *(v11 + 64) + v14;
  (*(v13 + 16))((v19 + ((v18 + v16) & ~v12)) & ~v14, (v19 + ((v18 + v17) & ~v12)) & ~v14, v10);
  v20 = *(v13 + 64) + ((v19 + (v18 & ~v12)) & ~v14) + 7;
  v21 = v20 + v16;
  v22 = ((v20 + v17) & 0xFFFFFFFFFFFFFFF8);
  v21 &= 0xFFFFFFFFFFFFFFF8;
  *v21 = *v22;
  v23 = (v21 + 15) & 0xFFFFFFFFFFFFFFF8;
  v24 = (v22 + 15) & 0xFFFFFFFFFFFFFFF8;
  v25 = *v24;
  *(v23 + 16) = *(v24 + 16);
  *v23 = v25;
  v26 = (v23 + 31) & 0xFFFFFFFFFFFFFFF8;
  v27 = (v24 + 31) & 0xFFFFFFFFFFFFFFF8;
  v28 = *(v27 + 8);
  if (v28 >= 0xFFFFFFFF)
  {
    LODWORD(v28) = -1;
  }

  if (v28 - 1 < 0)
  {
    swift_weakCopyInit();
    *(v26 + 8) = *(v27 + 8);
    *(v26 + 16) = *(v27 + 16);
  }

  else
  {
    v29 = *v27;
    *(v26 + 16) = *(v27 + 16);
    *v26 = v29;
  }

  v30 = (v26 + 27) & 0xFFFFFFFFFFFFFFF8;
  v31 = (v27 + 27) & 0xFFFFFFFFFFFFFFF8;
  *v30 = *v31;
  *(v30 + 8) = *(v31 + 8);
  return a1;
}

void *assignWithCopy for ContextMenuPreviewDestinationModifier.Transform(void *a1, void *a2, void *a3)
{
  *a1 = *a2;
  v4 = (a1 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = (a2 + 15) & 0xFFFFFFFFFFFFFFF8;
  *v4 = *v5;
  *(v4 + 8) = *(v5 + 8);

  v6 = a3[3];
  v7 = *(a3[2] - 8);
  v8 = v7 + 24;
  v9 = *(v6 - 8);
  v10 = *(v9 + 80);
  v34 = a3[4];
  v11 = *(v34 - 8);
  v12 = *(v11 + 80);
  v13 = (*(v9 + 80) | *(v11 + 80) | *(v7 + 80));
  v14 = (v13 + 16 + v4) & ~v13;
  v15 = (v13 + 16 + v5) & ~v13;
  (*(v7 + 24))(v14, v15);
  v16 = *(v8 + 40) + v10;
  (*(v9 + 24))((v16 + v14) & ~v10, (v16 + v15) & ~v10, v6);
  v17 = *(v9 + 64) + v12;
  (*(v11 + 24))((v17 + ((v16 + v14) & ~v10)) & ~v12, (v17 + ((v16 + v15) & ~v10)) & ~v12, v34);
  v18 = *(v11 + 64) + ((v17 + (v16 & ~v10)) & ~v12) + 7;
  v19 = ((v18 + v14) & 0xFFFFFFFFFFFFFFF8);
  v20 = ((v18 + v15) & 0xFFFFFFFFFFFFFFF8);
  *v19 = *v20;
  v21 = (v19 + 15) & 0xFFFFFFFFFFFFFFF8;
  v22 = (v20 + 15) & 0xFFFFFFFFFFFFFFF8;
  v23 = *v22;
  *(v21 + 16) = *(v22 + 16);
  *v21 = v23;
  v24 = (v21 + 31) & 0xFFFFFFFFFFFFFFF8;
  v25 = (v22 + 31) & 0xFFFFFFFFFFFFFFF8;
  v26 = *(v24 + 8);
  if (v26 >= 0xFFFFFFFF)
  {
    LODWORD(v26) = -1;
  }

  v27 = v26 - 1;
  v28 = *(v25 + 8);
  if (v28 >= 0xFFFFFFFF)
  {
    LODWORD(v28) = -1;
  }

  v29 = v28 - 1;
  if (v27 < 0)
  {
    if (v29 < 0)
    {
      swift_weakCopyAssign();
      *(v24 + 8) = *(v25 + 8);

      *(v24 + 16) = *(v25 + 16);

      goto LABEL_11;
    }

    swift_weakDestroy();

    goto LABEL_10;
  }

  if ((v29 & 0x80000000) == 0)
  {
LABEL_10:
    v30 = *v25;
    *(v24 + 16) = *(v25 + 16);
    *v24 = v30;
    goto LABEL_11;
  }

  swift_weakCopyInit();
  *(v24 + 8) = *(v25 + 8);
  *(v24 + 16) = *(v25 + 16);

LABEL_11:
  v31 = (v24 + 27) & 0xFFFFFFFFFFFFFFF8;
  v32 = (v25 + 27) & 0xFFFFFFFFFFFFFFF8;
  *v31 = *v32;
  *(v31 + 4) = *(v32 + 4);
  *(v31 + 8) = *(v32 + 8);
  return a1;
}

void *initializeWithTake for ContextMenuPreviewDestinationModifier.Transform(void *a1, void *a2, void *a3)
{
  *a1 = *a2;
  v3 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  v4 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v3 = *v4;
  v5 = *(a3[2] - 8);
  v6 = v5 + 32;
  v7 = a3[4];
  v30 = a3[3];
  v8 = *(v30 - 8);
  v9 = *(v8 + 80);
  v10 = *(v7 - 8);
  v11 = *(v10 + 80);
  v12 = (*(v8 + 80) | *(v10 + 80) | *(v5 + 80));
  v13 = (v3 + v12 + 16) & ~v12;
  v14 = (v4 + v12 + 16) & ~v12;
  (*(v5 + 32))(v13, v14, a3[2]);
  v15 = *(v6 + 32) + v9;
  (*(v8 + 32))((v15 + v13) & ~v9, (v15 + v14) & ~v9, v30);
  v16 = *(v8 + 64) + v11;
  (*(v10 + 32))((v16 + ((v15 + v13) & ~v9)) & ~v11, (v16 + ((v15 + v14) & ~v9)) & ~v11, v7);
  v17 = *(v10 + 64) + ((v16 + (v15 & ~v9)) & ~v11) + 7;
  v18 = ((v17 + v13) & 0xFFFFFFFFFFFFFFF8);
  v19 = ((v17 + v14) & 0xFFFFFFFFFFFFFFF8);
  *v18 = *v19;
  v20 = (v18 + 15) & 0xFFFFFFFFFFFFFFF8;
  v21 = (v19 + 15) & 0xFFFFFFFFFFFFFFF8;
  v22 = *v21;
  *(v20 + 16) = *(v21 + 16);
  *v20 = v22;
  v23 = (v20 + 31) & 0xFFFFFFFFFFFFFFF8;
  v24 = (v21 + 31) & 0xFFFFFFFFFFFFFFF8;
  v25 = *(v24 + 8);
  if (*(v24 + 8) >= 0xFFFFFFFFuLL)
  {
    v25 = -1;
  }

  if (v25 - 1 < 0)
  {
    v23 = swift_weakTakeInit();
    *(v23 + 8) = *(v24 + 8);
  }

  else
  {
    v26 = *v24;
    *(v23 + 16) = *(v24 + 16);
    *v23 = v26;
  }

  v27 = (v23 + 27) & 0xFFFFFFFFFFFFFFF8;
  v28 = (v24 + 27) & 0xFFFFFFFFFFFFFFF8;
  *v27 = *v28;
  *(v27 + 8) = *(v28 + 8);
  return a1;
}

void *assignWithTake for ContextMenuPreviewDestinationModifier.Transform(void *a1, void *a2, void *a3)
{
  *a1 = *a2;
  v4 = (a1 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = (a2 + 15) & 0xFFFFFFFFFFFFFFF8;
  *v4 = *v5;
  *(v4 + 8) = *(v5 + 8);

  v6 = a3[3];
  v7 = *(a3[2] - 8);
  v8 = v7 + 40;
  v9 = *(v6 - 8);
  v10 = *(v9 + 80);
  v34 = a3[4];
  v11 = *(v34 - 8);
  v12 = *(v11 + 80);
  v13 = (*(v9 + 80) | *(v11 + 80) | *(v7 + 80));
  v14 = (v13 + 16 + v4) & ~v13;
  v15 = (v13 + 16 + v5) & ~v13;
  (*(v7 + 40))(v14, v15);
  v16 = *(v8 + 24) + v10;
  (*(v9 + 40))((v16 + v14) & ~v10, (v16 + v15) & ~v10, v6);
  v17 = *(v9 + 64) + v12;
  (*(v11 + 40))((v17 + ((v16 + v14) & ~v10)) & ~v12, (v17 + ((v16 + v15) & ~v10)) & ~v12, v34);
  v18 = *(v11 + 64) + ((v17 + (v16 & ~v10)) & ~v12) + 7;
  v19 = ((v18 + v14) & 0xFFFFFFFFFFFFFFF8);
  v20 = ((v18 + v15) & 0xFFFFFFFFFFFFFFF8);
  *v19 = *v20;
  v21 = (v19 + 15) & 0xFFFFFFFFFFFFFFF8;
  v22 = (v20 + 15) & 0xFFFFFFFFFFFFFFF8;
  v23 = *v22;
  *(v21 + 16) = *(v22 + 16);
  *v21 = v23;
  v24 = (v21 + 31) & 0xFFFFFFFFFFFFFFF8;
  v25 = (v22 + 31) & 0xFFFFFFFFFFFFFFF8;
  v26 = *(v24 + 8);
  if (*(v24 + 8) >= 0xFFFFFFFFuLL)
  {
    v26 = -1;
  }

  v27 = v26 - 1;
  v28 = *(v25 + 8);
  if (v28 >= 0xFFFFFFFF)
  {
    LODWORD(v28) = -1;
  }

  v29 = v28 - 1;
  if (v27 < 0)
  {
    if (v29 < 0)
    {
      swift_weakTakeAssign();
      *(v24 + 8) = *(v25 + 8);

      *(v24 + 16) = *(v25 + 16);

      goto LABEL_11;
    }

    swift_weakDestroy();

    goto LABEL_10;
  }

  if ((v29 & 0x80000000) == 0)
  {
LABEL_10:
    v30 = *v25;
    *(v24 + 16) = *(v25 + 16);
    *v24 = v30;
    goto LABEL_11;
  }

  swift_weakTakeInit();
  *(v24 + 8) = *(v25 + 8);
LABEL_11:
  v31 = (v24 + 27) & 0xFFFFFFFFFFFFFFF8;
  v32 = (v25 + 27) & 0xFFFFFFFFFFFFFFF8;
  *v31 = *v32;
  *(v31 + 4) = *(v32 + 4);
  *(v31 + 8) = *(v32 + 8);
  return a1;
}

uint64_t getEnumTagSinglePayload for ContextMenuPreviewDestinationModifier.Transform(unsigned __int8 *a1, unsigned int a2, void *a3)
{
  v5 = *(a3[2] - 8);
  v6 = *(v5 + 84);
  v7 = a3[4];
  v8 = *(a3[3] - 8);
  v9 = *(v8 + 84);
  if (v9 <= v6)
  {
    v10 = *(v5 + 84);
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = *(v7 - 8);
  if (*(v11 + 84) <= v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = *(v11 + 84);
  }

  if (v12 <= 0x7FFFFFFE)
  {
    v13 = 2147483646;
  }

  else
  {
    v13 = v12;
  }

  if (!a2)
  {
    return 0;
  }

  v14 = *(v8 + 80);
  v15 = *(v11 + 80);
  v16 = (*(v8 + 80) | *(v5 + 80) | *(v11 + 80));
  v17 = *(*(a3[2] - 8) + 64) + v14;
  v18 = *(*(a3[3] - 8) + 64) + v15;
  if (v13 < a2)
  {
    v19 = ((((((((*(*(v7 - 8) + 64) + ((v18 + (v17 & ~v14)) & ~v15) + ((v16 + 24) & ~v16) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 27) & 0xFFFFFFFFFFFFFFF8) + 9;
    v20 = (a2 - v13 + 255) >> 8;
    if (v19 <= 3)
    {
      v21 = v20 + 1;
    }

    else
    {
      v21 = 2;
    }

    if (v21 >= 0x10000)
    {
      v22 = 4;
    }

    else
    {
      v22 = 2;
    }

    if (v21 < 0x100)
    {
      v22 = 1;
    }

    if (v21 >= 2)
    {
      v23 = v22;
    }

    else
    {
      v23 = 0;
    }

    if (v23 > 1)
    {
      if (v23 == 2)
      {
        v24 = *&a1[v19];
        if (!*&a1[v19])
        {
          goto LABEL_34;
        }
      }

      else
      {
        v24 = *&a1[v19];
        if (!v24)
        {
          goto LABEL_34;
        }
      }
    }

    else
    {
      if (!v23)
      {
        goto LABEL_34;
      }

      v24 = a1[v19];
      if (!a1[v19])
      {
        goto LABEL_34;
      }
    }

    v26 = (v24 - 1) << (8 * v19);
    if (v19 <= 3)
    {
      v27 = *a1;
    }

    else
    {
      v26 = 0;
      v27 = *a1;
    }

    v30 = v13 + (v27 | v26);
    return (v30 + 1);
  }

LABEL_34:
  v28 = (a1 + 15) & 0xFFFFFFFFFFFFFFF8;
  if (v12 <= 0x7FFFFFFE)
  {
    v29 = *(v28 + 8);
    if (v29 >= 0xFFFFFFFF)
    {
      LODWORD(v29) = -1;
    }

    v30 = v29 - 1;
    if (v30 < 0)
    {
      v30 = -1;
    }

    return (v30 + 1);
  }

  v31 = (v28 + v16 + 16) & ~v16;
  if (v6 == v12)
  {
    v32 = *(v5 + 48);

    return v32(v31);
  }

  else
  {
    v33 = (v17 + v31) & ~v14;
    if (v9 == v12)
    {
      v34 = *(v8 + 48);
      v35 = *(v8 + 84);
      v36 = a3[3];
    }

    else
    {
      v34 = *(v11 + 48);
      v33 = (v18 + v33) & ~v15;
      v35 = *(v11 + 84);
      v36 = a3[4];
    }

    return v34(v33, v35, v36);
  }
}

void storeEnumTagSinglePayload for ContextMenuPreviewDestinationModifier.Transform(char *a1, unsigned int a2, unsigned int a3, void *a4)
{
  v6 = *(a4[2] - 8);
  v7 = *(v6 + 84);
  v8 = a4[3];
  v9 = a4[4];
  v10 = *(v8 - 8);
  v11 = *(v10 + 84);
  if (v11 <= v7)
  {
    v12 = *(v6 + 84);
  }

  else
  {
    v12 = *(v10 + 84);
  }

  v13 = *(v9 - 8);
  v14 = *(v10 + 80);
  v15 = *(v13 + 80);
  if (*(v13 + 84) <= v12)
  {
    v16 = v12;
  }

  else
  {
    v16 = *(v13 + 84);
  }

  if (v16 <= 0x7FFFFFFE)
  {
    v17 = 2147483646;
  }

  else
  {
    v17 = v16;
  }

  v18 = (v14 | *(v6 + 80) | v15);
  v19 = *(*(a4[2] - 8) + 64) + *(v10 + 80);
  v20 = *(*(v8 - 8) + 64) + *(v13 + 80);
  v21 = ((v20 + (v19 & ~*(v10 + 80))) & ~*(v13 + 80)) + *(*(v9 - 8) + 64);
  v22 = ((((((((((v18 + 24) & ~v18) + v21 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 27) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v17 >= a3)
  {
    v25 = 0;
    if (v17 >= a2)
    {
      goto LABEL_22;
    }

LABEL_27:
    v26 = ~v17 + a2;
    bzero(a1, ((((((((((v18 + 24) & ~v18) + v21 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 27) & 0xFFFFFFFFFFFFFFF8) + 9);
    if (v22 <= 3)
    {
      v27 = (v26 >> 8) + 1;
    }

    else
    {
      v27 = 1;
    }

    if (v22 <= 3)
    {
      *a1 = v26;
      if (v25 > 1)
      {
LABEL_32:
        if (v25 == 2)
        {
          *&a1[v22] = v27;
        }

        else
        {
          *&a1[v22] = v27;
        }

        return;
      }
    }

    else
    {
      *a1 = v26;
      if (v25 > 1)
      {
        goto LABEL_32;
      }
    }

    if (v25)
    {
      a1[v22] = v27;
    }

    return;
  }

  v23 = (a3 - v17 + 255) >> 8;
  if (v22 <= 3)
  {
    v24 = v23 + 1;
  }

  else
  {
    v24 = 2;
  }

  if (v24 >= 0x10000)
  {
    v25 = 4;
  }

  else
  {
    v25 = 2;
  }

  if (v24 < 0x100)
  {
    v25 = 1;
  }

  if (v24 < 2)
  {
    v25 = 0;
  }

  if (v17 < a2)
  {
    goto LABEL_27;
  }

LABEL_22:
  if (v25 > 1)
  {
    if (v25 != 2)
    {
      *&a1[v22] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_37;
    }

    *&a1[v22] = 0;
LABEL_36:
    if (!a2)
    {
      return;
    }

    goto LABEL_37;
  }

  if (!v25)
  {
    goto LABEL_36;
  }

  a1[v22] = 0;
  if (!a2)
  {
    return;
  }

LABEL_37:
  v28 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  if (v16 <= 0x7FFFFFFE)
  {
    if (a2 > 0x7FFFFFFE)
    {
      *v28 = a2 - 0x7FFFFFFF;
      v28[1] = 0;
    }

    else
    {
      v28[1] = a2;
    }

    return;
  }

  v29 = (v28 + v18 + 16) & ~v18;
  if (v16 < a2)
  {
    if (v21 <= 3)
    {
      v30 = ~(-1 << (8 * v21));
    }

    else
    {
      v30 = -1;
    }

    if (v21)
    {
      v31 = v30 & (~v16 + a2);
      if (v21 <= 3)
      {
        v32 = v21;
      }

      else
      {
        v32 = 4;
      }

      bzero(((v28 + v18 + 16) & ~v18), v21);
      if (v32 > 2)
      {
        if (v32 == 3)
        {
          *v29 = v31;
          *(v29 + 2) = BYTE2(v31);
        }

        else
        {
          *v29 = v31;
        }
      }

      else if (v32 == 1)
      {
        *v29 = v31;
      }

      else
      {
        *v29 = v31;
      }
    }

    return;
  }

  if (v7 == v16)
  {
    v33 = *(v6 + 56);
    v34 = (v28 + v18 + 16) & ~v18;

LABEL_62:
    v33(v34);
    return;
  }

  v35 = (v19 + v29) & ~v14;
  if (v11 != v16)
  {
    v33 = *(v13 + 56);
    v34 = (v20 + v35) & ~v15;

    goto LABEL_62;
  }

  v36 = *(v10 + 56);

  v36(v35);
}

uint64_t type metadata completion function for ContextMenuPreviewModifierCore(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for ContextMenuPreviewModifierCore(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = v5 + v8;
  v10 = *(v7 + 64);
  v11 = ((((((v5 + v8) & ~v8) + v10) & 0xFFFFFFFFFFFFFFFCLL) + 15) & 0xFFFFFFFFFFFFFFF8) + 17;
  v12 = v8 | *(v4 + 80) & 0xF8;
  if (v12 > 7 || ((*(v4 + 80) | *(v7 + 80)) & 0x100000) != 0 || v11 > 0x18)
  {
    v15 = *a2;
    *v3 = *a2;
    v3 = (v15 + (((v12 | 7) + 16) & ~(v12 | 7)));
  }

  else
  {
    v16 = ~v8;
    (*(v4 + 16))(a1);
    v18 = (v3 + v9) & v16;
    v19 = (a2 + v9) & v16;
    (*(v7 + 16))(v18, v19, v6);
    *(v18 + v10) = *(v19 + v10);
    v20 = (v18 + v10) & 0xFFFFFFFFFFFFFFFCLL;
    v21 = (v19 + v10) & 0xFFFFFFFFFFFFFFFCLL;
    *(v20 + 4) = *(v21 + 4);
    v22 = (v20 + 15) & 0xFFFFFFFFFFFFFFF8;
    v23 = (v21 + 15) & 0xFFFFFFFFFFFFFFF8;
    v24 = *(v23 + 16);
    if ((v24 & 0x7E) != 0)
    {
      v25 = *v23;
      *(v22 + 16) = *(v23 + 16);
      *v22 = v25;
    }

    else
    {
      v26 = *v23;
      v27 = *(v23 + 8);
      outlined copy of ContextMenuPreviewAction(*v23, v27, *(v23 + 16));
      *v22 = v26;
      *(v22 + 8) = v27;
      *(v22 + 16) = v24;
    }
  }

  return v3;
}

double destroy for ContextMenuPreviewModifierCore(uint64_t a1, uint64_t a2)
{
  v4 = *(*(a2 + 16) - 8) + 8;
  (*v4)();
  v5 = *(v4 + 56) + a1;
  v6 = *(*(a2 + 24) - 8);
  v7 = v6 + 8;
  v8 = (v5 + *(v6 + 80)) & ~*(v6 + 80);
  (*(v6 + 8))(v8);
  v10 = (((v8 + *(v7 + 56)) & 0xFFFFFFFFFFFFFFFCLL) + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v10 + 16);
  if ((v11 & 0x7E) == 0)
  {
    v12 = *v10;
    v13 = *(v10 + 8);

    return outlined consume of ContextMenuPreviewAction(v12, v13, v11);
  }

  return result;
}

uint64_t initializeWithCopy for ContextMenuPreviewModifierCore(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 16;
  (*v6)();
  v7 = *(v6 + 48);
  v8 = *(*(a3 + 24) - 8);
  v9 = v8 + 16;
  v10 = *(v8 + 80);
  v11 = v7 + v10;
  v12 = (v11 + a1) & ~v10;
  v13 = (v11 + a2) & ~v10;
  (*(v8 + 16))(v12, v13);
  v14 = *(v9 + 48);
  v15 = v14 + v12;
  v16 = v14 + v13;
  *v15 = *v16;
  v15 &= 0xFFFFFFFFFFFFFFFCLL;
  v16 &= 0xFFFFFFFFFFFFFFFCLL;
  *(v15 + 4) = *(v16 + 4);
  v17 = (v15 + 15) & 0xFFFFFFFFFFFFFFF8;
  v18 = (v16 + 15) & 0xFFFFFFFFFFFFFFF8;
  v19 = *(v18 + 16);
  if ((v19 & 0x7E) != 0)
  {
    v20 = *v18;
    *(v17 + 16) = *(v18 + 16);
    *v17 = v20;
  }

  else
  {
    v21 = *v18;
    v22 = *(v18 + 8);
    outlined copy of ContextMenuPreviewAction(*v18, v22, *(v18 + 16));
    *v17 = v21;
    *(v17 + 8) = v22;
    *(v17 + 16) = v19;
  }

  return a1;
}

uint64_t assignWithCopy for ContextMenuPreviewModifierCore(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 24;
  (*v6)();
  v7 = *(v6 + 40);
  v8 = *(*(a3 + 24) - 8);
  v9 = v8 + 24;
  v10 = *(v8 + 80);
  v11 = v7 + v10;
  v12 = (v11 + a1) & ~v10;
  v13 = (v11 + a2) & ~v10;
  (*(v8 + 24))(v12, v13);
  v14 = *(v9 + 40);
  v15 = v14 + v12;
  v16 = v14 + v13;
  *v15 = *v16;
  v15 &= 0xFFFFFFFFFFFFFFFCLL;
  v16 &= 0xFFFFFFFFFFFFFFFCLL;
  *(v15 + 4) = *(v16 + 4);
  v17 = (v15 + 15) & 0xFFFFFFFFFFFFFFF8;
  v18 = (v16 + 15) & 0xFFFFFFFFFFFFFFF8;
  v19 = *(v18 + 16);
  if ((*(v17 + 16) & 0x7E) == 0)
  {
    if ((v19 & 0x7E) == 0)
    {
      v24 = *v18;
      v25 = *(v18 + 8);
      outlined copy of ContextMenuPreviewAction(v24, v25, v19);
      v26 = *v17;
      v27 = *(v17 + 8);
      *v17 = v24;
      *(v17 + 8) = v25;
      v28 = *(v17 + 16);
      *(v17 + 16) = v19;
      outlined consume of ContextMenuPreviewAction(v26, v27, v28);
      return a1;
    }

    outlined consume of ContextMenuPreviewAction(*v17, *(v17 + 8), *(v17 + 16));
    goto LABEL_6;
  }

  if ((v19 & 0x7E) != 0)
  {
LABEL_6:
    v22 = *v18;
    *(v17 + 16) = *(v18 + 16);
    *v17 = v22;
    return a1;
  }

  v20 = *v18;
  v21 = *(v18 + 8);
  outlined copy of ContextMenuPreviewAction(v20, v21, v19);
  *v17 = v20;
  *(v17 + 8) = v21;
  *(v17 + 16) = v19;
  return a1;
}

uint64_t initializeWithTake for ContextMenuPreviewModifierCore(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 32;
  (*v6)();
  v7 = *(v6 + 32);
  v8 = *(*(a3 + 24) - 8);
  v9 = v8 + 32;
  v10 = *(v8 + 80);
  v11 = v7 + v10;
  v12 = (v11 + a1) & ~v10;
  v13 = (v11 + a2) & ~v10;
  (*(v8 + 32))(v12, v13);
  v14 = *(v9 + 32);
  v15 = v14 + v12;
  v16 = v14 + v13;
  *v15 = *v16;
  v15 &= 0xFFFFFFFFFFFFFFFCLL;
  v16 &= 0xFFFFFFFFFFFFFFFCLL;
  *(v15 + 4) = *(v16 + 4);
  v17 = (v15 + 15) & 0xFFFFFFFFFFFFFFF8;
  v18 = (v16 + 15) & 0xFFFFFFFFFFFFFFF8;
  v19 = *(v18 + 16);
  *v17 = *v18;
  *(v17 + 16) = v19;
  return a1;
}

uint64_t assignWithTake for ContextMenuPreviewModifierCore(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 40;
  (*v6)();
  v7 = *(v6 + 24);
  v8 = *(*(a3 + 24) - 8);
  v9 = v8 + 40;
  v10 = *(v8 + 80);
  v11 = v7 + v10;
  v12 = (v11 + a1) & ~v10;
  v13 = (v11 + a2) & ~v10;
  (*(v8 + 40))(v12, v13);
  v14 = *(v9 + 24);
  v15 = v14 + v12;
  v16 = v14 + v13;
  *v15 = *v16;
  v15 &= 0xFFFFFFFFFFFFFFFCLL;
  v16 &= 0xFFFFFFFFFFFFFFFCLL;
  *(v15 + 4) = *(v16 + 4);
  v17 = (v15 + 15) & 0xFFFFFFFFFFFFFFF8;
  v18 = (v16 + 15) & 0xFFFFFFFFFFFFFFF8;
  v19 = *(v17 + 16);
  if ((v19 & 0x7E) == 0)
  {
    v20 = *(v18 + 16);
    v21 = *v17;
    v22 = *(v17 + 8);
    if ((v20 & 0x7E) == 0)
    {
      *v17 = *v18;
      *(v17 + 16) = v20;
      outlined consume of ContextMenuPreviewAction(v21, v22, v19);
      return a1;
    }

    outlined consume of ContextMenuPreviewAction(v21, v22, v19);
  }

  v23 = *v18;
  *(v17 + 16) = *(v18 + 16);
  *v17 = v23;
  return a1;
}

uint64_t getEnumTagSinglePayload for ContextMenuPreviewModifierCore(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 80);
  v10 = *(v7 + 64);
  if (v8 <= v5)
  {
    v11 = *(v4 + 84);
  }

  else
  {
    v11 = *(v7 + 84);
  }

  if (v11 <= 0xFE)
  {
    v11 = 254;
  }

  if (!a2)
  {
    return 0;
  }

  v12 = *(*(*(a3 + 16) - 8) + 64) + v9;
  if (v11 >= a2)
  {
    goto LABEL_29;
  }

  v13 = (((((v12 & ~v9) + v10) & 0xFFFFFFFFFFFFFFFCLL) + 15) & 0xFFFFFFFFFFFFFFF8) + 17;
  v14 = (a2 - v11 + 255) >> 8;
  if (v13 <= 3)
  {
    v15 = v14 + 1;
  }

  else
  {
    v15 = 2;
  }

  if (v15 >= 0x10000)
  {
    v16 = 4;
  }

  else
  {
    v16 = 2;
  }

  if (v15 < 0x100)
  {
    v16 = 1;
  }

  if (v15 >= 2)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  if (v17 > 1)
  {
    if (v17 == 2)
    {
      v18 = *&a1[v13];
      if (*&a1[v13])
      {
        goto LABEL_22;
      }
    }

    else
    {
      v18 = *&a1[v13];
      if (v18)
      {
        goto LABEL_22;
      }
    }

    goto LABEL_29;
  }

  if (!v17 || (v18 = a1[v13]) == 0)
  {
LABEL_29:
    if (v5 == v11)
    {
      return (*(v4 + 48))(a1);
    }

    v22 = &a1[v12] & ~v9;
    if (v8 == v11)
    {
      return (*(v7 + 48))(v22, v8, v6);
    }

    v23 = *(v22 + v10);
    if (v23 >= 2)
    {
      return ((v23 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    return 0;
  }

LABEL_22:
  v19 = (v18 - 1) << (8 * v13);
  if (v13 <= 3)
  {
    v20 = *a1;
  }

  else
  {
    v19 = 0;
    v20 = *a1;
  }

  return v11 + (v20 | v19) + 1;
}

void storeEnumTagSinglePayload for ContextMenuPreviewModifierCore(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = *(*(a4 + 24) - 8);
  v9 = *(v8 + 84);
  v10 = *(v6 + 64);
  v11 = *(v8 + 80);
  v12 = *(v8 + 64);
  if (v9 <= v7)
  {
    v13 = *(v6 + 84);
  }

  else
  {
    v13 = *(v8 + 84);
  }

  if (v13 <= 0xFE)
  {
    v13 = 254;
  }

  v14 = v10 + v11;
  v15 = ((((((v10 + v11) & ~v11) + v12) & 0xFFFFFFFFFFFFFFFCLL) + 15) & 0xFFFFFFFFFFFFFFF8) + 17;
  if (v13 >= a3)
  {
    v19 = 0;
    if (v13 >= a2)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v16 = (a3 - v13 + 255) >> 8;
    if (v15 <= 3)
    {
      v17 = v16 + 1;
    }

    else
    {
      v17 = 2;
    }

    if (v17 >= 0x10000)
    {
      v18 = 4;
    }

    else
    {
      v18 = 2;
    }

    if (v17 < 0x100)
    {
      v18 = 1;
    }

    if (v17 >= 2)
    {
      v19 = v18;
    }

    else
    {
      v19 = 0;
    }

    if (v13 >= a2)
    {
LABEL_19:
      if (v19 > 1)
      {
        if (v19 != 2)
        {
          *&a1[v15] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_34;
        }

        *&a1[v15] = 0;
      }

      else if (v19)
      {
        a1[v15] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_34;
      }

      if (!a2)
      {
        return;
      }

LABEL_34:
      if (v7 == v13)
      {
        v22 = *(v6 + 56);

        v22();
      }

      else
      {
        v23 = &a1[v14] & ~v11;
        if (v9 == v13)
        {
          v24 = *(v8 + 56);

          v24(v23);
        }

        else
        {
          *(v23 + v12) = a2 + 1;
        }
      }

      return;
    }
  }

  v20 = ~v13 + a2;
  bzero(a1, v15);
  if (v15 <= 3)
  {
    v21 = (v20 >> 8) + 1;
  }

  else
  {
    v21 = 1;
  }

  if (v15 <= 3)
  {
    *a1 = v20;
    if (v19 > 1)
    {
LABEL_29:
      if (v19 == 2)
      {
        *&a1[v15] = v21;
      }

      else
      {
        *&a1[v15] = v21;
      }

      return;
    }
  }

  else
  {
    *a1 = v20;
    if (v19 > 1)
    {
      goto LABEL_29;
    }
  }

  if (v19)
  {
    a1[v15] = v21;
  }
}

uint64_t _s7SwiftUI4PathVSgWOhTm_0(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  type metadata accessor for Path?(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t initializeWithCopy for ContextMenuPreviewResponderFilter(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v3;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 48) = *(a2 + 48);

  return a1;
}

uint64_t specialized ContextMenuPreviewResponder.preview.setter(uint64_t a1)
{
  v3 = *v1 + class metadata base offset for ContextMenuPreviewResponder;
  v4 = type metadata accessor for Optional();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10[-v6];
  v8 = *(v3 + 16);
  swift_beginAccess();
  (*(v5 + 16))(v7, &v1[v8], v4);
  swift_beginAccess();
  (*(v5 + 24))(&v1[v8], a1, v4);
  swift_endAccess();
  ContextMenuPreviewResponder.preview.didset(v7);
  return (*(v5 + 8))(v7, v4);
}

void type metadata accessor for Path?(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t destroy for SectionedIdentifierAccumulator()
{
}

uint64_t initializeWithCopy for SectionedIdentifierAccumulator(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v3;
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);

  return a1;
}

uint64_t assignWithCopy for SectionedIdentifierAccumulator(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);

  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  return a1;
}

uint64_t assignWithTake for SectionedIdentifierAccumulator(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);

  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);

  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  return a1;
}

uint64_t SectionedIdentifierAccumulator.visit(view:traits:)(char *a1, uint64_t *a2)
{
  v4 = v2;
  v6 = *a2;
  v32 = *a2;
  v7 = &v32;
  if (ViewTraitCollection.groupDepth.getter())
  {
    goto LABEL_17;
  }

  v32 = v6;
  if (ViewTraitCollection.isSectioned.getter())
  {
    *(v4 + 32) = 1;
    *(v4 + 48) = 0;
    v32 = v6;
    v8 = ViewTraitCollection.isEmptyView.getter();
    v3 = *(v4 + 56);
    v9 = *(v4 + 8);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v9 + 2) + 1, 1, v9);
    }

    v10 = v8 ^ 1;
    v11 = *(v9 + 2);
    v12 = *(v9 + 3);
    v13 = v11 + 1;
    if (v11 >= v12 >> 1)
    {
      v24 = v9;
      v25 = v10;
      v26 = v11;
      v27 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v11 + 1, 1, v24);
      v11 = v26;
      v10 = v25;
      v9 = v27;
    }

    *(v9 + 2) = v13;
    v14 = &v9[16 * v11];
    *(v14 + 4) = v3;
    v14[40] = 0;
    v14[41] = v10 & 1;
  }

  else
  {
    if (*(v4 + 48))
    {
      goto LABEL_15;
    }

    *(v4 + 48) = 1;
    v3 = *(v4 + 56);
    v9 = *(v4 + 8);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v9 + 2) + 1, 1, v9);
    }

    v15 = *(v9 + 2);
    v16 = *(v9 + 3);
    v17 = v15 + 1;
    if (v15 >= v16 >> 1)
    {
      v28 = v9;
      v29 = *(v9 + 2);
      v30 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v15 + 1, 1, v28);
      v15 = v29;
      v9 = v30;
    }

    *(v9 + 2) = v17;
    v18 = &v9[16 * v15];
    *(v18 + 4) = v3;
    *(v18 + 20) = 1;
  }

  *(v4 + 8) = v9;
LABEL_15:
  v32 = v6;
  v7 = &v32;
  ViewTraitCollection.value<A>(for:defaultValue:)();
  if (v31 == 1)
  {
    v7 = (v4 + 40);
    specialized Set._Variant.insert(_:)(&v32, *(*(v4 + 8) + 16) - 1);
  }

LABEL_17:
  if (*(v4 + 16))
  {
    v32 = v6;
    v7 = &v32;
    if (ViewTraitCollection.isSectionFooter.getter())
    {
      v7 = (v4 + 16);
      specialized Set._Variant.insert(_:)(&v32, *(*(v4 + 8) + 16) - 1);
    }
  }

  if (*v4 == 1)
  {
    v19 = *(a1 + 9);
    if (v19 < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (v19 <= 0x7FFFFFFF)
    {
      LODWORD(v3) = *(a1 + 15);
      v7 = *(a1 + 8);
      a1 = *(v4 + 24);

      if (swift_isUniquelyReferenced_nonNull_native())
      {
LABEL_24:
        v21 = *(a1 + 2);
        v20 = *(a1 + 3);
        if (v21 >= v20 >> 1)
        {
          a1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21 + 1, 1, a1);
        }

        *(a1 + 2) = v21 + 1;
        v22 = &a1[16 * v21];
        *(v22 + 8) = v19;
        *(v22 + 9) = v3;
        *(v22 + 5) = v7;
        *(v4 + 24) = a1;
        goto LABEL_27;
      }

LABEL_30:
      a1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 2) + 1, 1, a1);
      goto LABEL_24;
    }

    __break(1u);
    goto LABEL_30;
  }

LABEL_27:
  ++*(v4 + 56);
  return 1;
}

void View.supportedVolumeViewpoints(_:)()
{
  _diagnoseUnavailableCodeReached()();
  __break(1u);
}

{
  View.supportedVolumeViewpoints(_:)();
}

uint64_t Button<>.init(_:)@<X0>(_BYTE *a1@<X0>, _BYTE *a2@<X8>)
{
  *a2 = *a1;
  v4 = *(type metadata accessor for PrimitiveButtonStyleConfiguration(0) + 24);
  _s7SwiftUI6ButtonVyAA09PrimitiveC18StyleConfigurationV5LabelVGMaTm_7(0, &lazy cache variable for type metadata for Button<PrimitiveButtonStyleConfiguration.Label>, &type metadata for PrimitiveButtonStyleConfiguration.Label, &protocol witness table for PrimitiveButtonStyleConfiguration.Label, type metadata accessor for Button);
  outlined init with copy of ButtonAction(&a1[v4], &a2[*(v5 + 36)], type metadata accessor for ButtonAction);
  return _s7SwiftUI33PrimitiveButtonStyleConfigurationVWOhTm_4(a1, type metadata accessor for PrimitiveButtonStyleConfiguration);
}

Swift::Void __swiftcall ButtonAction.callAsFunction()()
{
  v1 = v0;
  v2 = type metadata accessor for LinkDestination();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v18[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = type metadata accessor for ButtonAction(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v18[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  outlined init with copy of ButtonAction(v1, v7, type metadata accessor for ButtonAction);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      outlined init with take of LinkDestination(v7, v4);
      type metadata accessor for MainActor();
      v9 = static Semantics.v7.getter();
      MEMORY[0x1EEE9AC00](v9);
      v16 = 812;
      v17 = MEMORY[0x1E69E7CA8] + 8;
      static MainActor.assumeIsolatedIfLinkedOnOrAfter<A>(_:context:_:file:line:)();
      _s7SwiftUI33PrimitiveButtonStyleConfigurationVWOhTm_4(v4, MEMORY[0x1E697E828]);
    }

    else
    {
      v14 = *(v7 + 1);
      v19 = *v7;
      v20 = v14;
      v21 = *(v7 + 2);
      type metadata accessor for MainActor();
      v15 = static Semantics.v7.getter();
      MEMORY[0x1EEE9AC00](v15);
      static MainActor.assumeIsolatedIfLinkedOnOrAfter<A>(_:context:_:file:line:)();
      v22 = v19;
      v23 = v20;
      _s7SwiftUI33PrimitiveButtonStyleConfigurationVWOhTm_4(&v22, type metadata accessor for Environment<AppIntentExecutor?>);
    }
  }

  else
  {
    v11 = *v7;
    v10 = *(v7 + 1);
    v12 = type metadata accessor for MainActor();
    v13.n128_f64[0] = MEMORY[0x1EEE9AC00](v12);
    v16 = v11;
    v17 = v10;
    specialized static MainActor.assumeIsolated<A>(_:file:line:)(partial apply for closure #1 in closure #2 in UICollectionViewListCoordinator.collectionView(_:willPerformPreviewActionForMenuWith:animator:), &v18[-32], "SwiftUI/Button.swift", 20, 2u, 808, v13);
  }
}

uint64_t Button.init(destination:label:)@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, _BYTE *a5@<X8>)
{
  *a5 = 4;
  v8 = type metadata accessor for Button(0, a3, a4, a3);
  outlined init with copy of ButtonAction(a1, &a5[*(v8 + 36)], MEMORY[0x1E697E828]);
  type metadata accessor for ButtonAction(0);
  v9 = swift_storeEnumTagMultiPayload();
  a2(v9);
  return _s7SwiftUI33PrimitiveButtonStyleConfigurationVWOhTm_4(a1, MEMORY[0x1E697E828]);
}

__n128 Button.init<>(_:action:)@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v8 = *a1;
  v9 = a1[1];
  v10 = *(a1 + 16);
  *a4 = 4;
  type metadata accessor for Button<Label<Text, Image>>(0);
  v12 = v11;
  v13 = &a4[*(v11 + 36)];
  *v13 = a2;
  v13[1] = a3;
  type metadata accessor for ButtonAction(0);
  v16 = *(a1 + 3);
  swift_storeEnumTagMultiPayload();
  v14 = &a4[*(v12 + 40)];
  *v14 = v8;
  *(v14 + 1) = v9;
  v14[16] = v10;
  result = v16;
  *(v14 + 24) = v16;
  return result;
}

uint64_t closure #1 in Button.body.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for ModifiedContent();
  v6 = type metadata accessor for StaticIf();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v18 - v11;
  type metadata accessor for Button(0, a2, a3, v13);
  v20 = 0;
  View.defaultButtonScrollEdgeEffectTag(style:)(&v20, a2, a3);
  v14 = lazy protocol witness table accessor for type ButtonScrollEdgeEffectTaggingFeature and conformance ButtonScrollEdgeEffectTaggingFeature();
  v19[0] = a3;
  v19[1] = &protocol witness table for ScrollEdgeEffectTagModifier;
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E697E858], v5, v19);
  v18[0] = v14;
  v18[1] = WitnessTable;
  v18[2] = a3;
  swift_getWitnessTable(MEMORY[0x1E6981CE8], v6, v18);
  static ViewBuilder.buildExpression<A>(_:)();
  v16 = *(v7 + 8);
  v16(v9, v6);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v16)(v12, v6);
}

uint64_t Button<>.init(_:action:)@<X0>(uint64_t a5@<X4>, uint64_t a6@<X5>, _BYTE *a7@<X8>)
{
  *a7 = 4;
  _s7SwiftUI6ButtonVyAA09PrimitiveC18StyleConfigurationV5LabelVGMaTm_7(0, &lazy cache variable for type metadata for Button<Text>, MEMORY[0x1E6981148], MEMORY[0x1E6981138], type metadata accessor for Button);
  v11 = v10;
  v12 = &a7[*(v10 + 36)];
  *v12 = a5;
  v12[1] = a6;
  type metadata accessor for ButtonAction(0);
  swift_storeEnumTagMultiPayload();
  v13 = &a7[*(v11 + 40)];
  result = Text.init(_:tableName:bundle:comment:)();
  *v13 = result;
  *(v13 + 1) = v15;
  v13[16] = v16 & 1;
  *(v13 + 3) = v17;
  return result;
}

uint64_t Button<>.init(_:image:action:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, _BYTE *a8@<X8>)
{
  v37 = a2;
  v38 = a5;
  v34 = a4;
  v35 = a1;
  LODWORD(v36) = a3;
  v11 = type metadata accessor for ImageResource();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v32 - v15;
  *a8 = 4;
  type metadata accessor for Button<Label<Text, Image>>(0);
  v18 = v17;
  v19 = &a8[*(v17 + 36)];
  *v19 = a6;
  v19[1] = a7;
  v32[1] = a7;
  type metadata accessor for ButtonAction(0);
  swift_storeEnumTagMultiPayload();
  v20 = &a8[*(v18 + 40)];
  v21 = *(v12 + 16);
  v21(v16, v38, v11);

  v22 = Text.init(_:tableName:bundle:comment:)();
  v36 = v23;
  v25 = v24;
  v39 = v26 & 1;
  v21(v33, v16, v11);
  v27 = Image.init(_:)();
  v28 = *(v12 + 8);
  v28(v16, v11);

  v29 = v39;
  v30 = v36;
  *v20 = v22;
  *(v20 + 1) = v30;
  v20[16] = v29;
  *(v20 + 3) = v25;
  *(v20 + 4) = v27;
  return (v28)(v38, v11);
}

uint64_t Button<>.init<A>(_:image:action:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _BYTE *a7@<X8>)
{
  *a7 = 4;
  type metadata accessor for Button<Label<Text, Image>>(0);
  v14 = v13;
  v15 = &a7[*(v13 + 36)];
  *v15 = a3;
  v15[1] = a4;
  type metadata accessor for ButtonAction(0);
  swift_storeEnumTagMultiPayload();
  closure #1 in Button<>.init<A>(_:image:action:)(a1, a2, a5, &a7[*(v14 + 40)]);
  v16 = type metadata accessor for ImageResource();
  (*(*(v16 - 8) + 8))(a2, v16);
  v17 = *(*(a5 - 8) + 8);

  return v17(a1, a5);
}

uint64_t Button<>.init(_:role:action:)@<X0>(_BYTE *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, _BYTE *a8@<X8>)
{
  *a8 = *a5;
  _s7SwiftUI6ButtonVyAA09PrimitiveC18StyleConfigurationV5LabelVGMaTm_7(0, &lazy cache variable for type metadata for Button<Text>, MEMORY[0x1E6981148], MEMORY[0x1E6981138], type metadata accessor for Button);
  v12 = v11;
  v13 = &a8[*(v11 + 36)];
  *v13 = a6;
  v13[1] = a7;
  type metadata accessor for ButtonAction(0);
  swift_storeEnumTagMultiPayload();
  v14 = &a8[*(v12 + 40)];
  result = Text.init(_:tableName:bundle:comment:)();
  *v14 = result;
  *(v14 + 1) = v16;
  v14[16] = v17 & 1;
  *(v14 + 3) = v18;
  return result;
}

uint64_t Button<>.init<A>(_:role:action:)@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _BYTE *a7@<X8>)
{
  *a7 = *a2;
  _s7SwiftUI6ButtonVyAA09PrimitiveC18StyleConfigurationV5LabelVGMaTm_7(0, &lazy cache variable for type metadata for Button<Text>, MEMORY[0x1E6981148], MEMORY[0x1E6981138], type metadata accessor for Button);
  v13 = v12;
  v14 = &a7[*(v12 + 36)];
  *v14 = a3;
  v14[1] = a4;
  type metadata accessor for ButtonAction(0);
  swift_storeEnumTagMultiPayload();
  closure #1 in Button<>.init<A>(_:action:)(a1, &a7[*(v13 + 40)]);
  v15 = *(*(a5 - 8) + 8);

  return v15(a1, a5);
}

uint64_t Button<>.init(_:image:role:action:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _BYTE *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _BYTE *a9@<X8>)
{
  v39 = a2;
  v40 = a5;
  v36 = a4;
  v37 = a1;
  LODWORD(v38) = a3;
  v13 = type metadata accessor for ImageResource();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v35 = v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v34 - v17;
  *a9 = *a6;
  type metadata accessor for Button<Label<Text, Image>>(0);
  v20 = v19;
  v21 = &a9[*(v19 + 36)];
  *v21 = a7;
  v21[1] = a8;
  v34[1] = a8;
  type metadata accessor for ButtonAction(0);
  swift_storeEnumTagMultiPayload();
  v22 = &a9[*(v20 + 40)];
  v23 = *(v14 + 16);
  v23(v18, v40, v13);

  v24 = Text.init(_:tableName:bundle:comment:)();
  v38 = v25;
  v27 = v26;
  v41 = v28 & 1;
  v23(v35, v18, v13);
  v29 = Image.init(_:)();
  v30 = *(v14 + 8);
  v30(v18, v13);

  v31 = v41;
  v32 = v38;
  *v22 = v24;
  *(v22 + 1) = v32;
  v22[16] = v31;
  *(v22 + 3) = v27;
  *(v22 + 4) = v29;
  return (v30)(v40, v13);
}

uint64_t Button<>.init<A>(_:image:role:action:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, _BYTE *a8@<X8>)
{
  *a8 = *a3;
  type metadata accessor for Button<Label<Text, Image>>(0);
  v15 = v14;
  v16 = &a8[*(v14 + 36)];
  *v16 = a4;
  v16[1] = a5;
  type metadata accessor for ButtonAction(0);
  swift_storeEnumTagMultiPayload();
  closure #1 in Button<>.init<A>(_:image:action:)(a1, a2, a6, &a8[*(v15 + 40)]);
  v17 = type metadata accessor for ImageResource();
  (*(*(v17 - 8) + 8))(a2, v17);
  v18 = *(*(a6 - 8) + 8);

  return v18(a1, a6);
}

double closure #1 in Button<>.init<A>(_:image:action:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a5@<X8>)
{
  v9 = type metadata accessor for ImageResource();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v16, a1, a3, v14);
  (*(v10 + 16))(v12, a2, v9);
  Label<>.init<A>(_:image:)(v16, v12, a3, &v21);
  v18 = v22;
  result = *&v21;
  v20 = v23;
  *a5 = v21;
  *(a5 + 16) = v18;
  *(a5 + 24) = v20;
  return result;
}

unint64_t lazy protocol witness table accessor for type DefaultButtonLabel and conformance DefaultButtonLabel()
{
  result = lazy protocol witness table cache variable for type DefaultButtonLabel and conformance DefaultButtonLabel;
  if (!lazy protocol witness table cache variable for type DefaultButtonLabel and conformance DefaultButtonLabel)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DefaultButtonLabel, &type metadata for DefaultButtonLabel, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type DefaultButtonLabel and conformance DefaultButtonLabel);
  }

  return result;
}

uint64_t Button<>.init(role:action:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v7 = *a1;
  *a4 = *a1;
  type metadata accessor for Button<DefaultButtonLabel>(0, &lazy cache variable for type metadata for Button<DefaultButtonLabel>, lazy protocol witness table accessor for type DefaultButtonLabel and conformance DefaultButtonLabel, &type metadata for DefaultButtonLabel, type metadata accessor for Button);
  v9 = v8;
  v10 = &a4[*(v8 + 36)];
  *v10 = a2;
  *(v10 + 1) = a3;
  type metadata accessor for ButtonAction(0);
  result = swift_storeEnumTagMultiPayload();
  a4[*(v9 + 40)] = v7;
  return result;
}

double Button.init(role:lnAction:perform:label:)@<D0>(char *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void (*a5)(uint64_t)@<X4>, uint64_t a6@<X6>, uint64_t a7@<X7>, _BYTE *a8@<X8>)
{
  v15 = *a1;
  KeyPath = swift_getKeyPath();
  *a8 = v15;
  v18 = &a8[*(type metadata accessor for Button(0, a6, a7, v17) + 36)];
  *v18 = KeyPath;
  *(v18 + 1) = 0;
  v18[16] = 0;
  *(v18 + 3) = a2;
  *(v18 + 4) = a3;
  *(v18 + 5) = a4;
  type metadata accessor for ButtonAction(0);
  swift_storeEnumTagMultiPayload();
  v19 = a2;

  a5(v20);

  return result;
}

uint64_t protocol witness for static ViewInputPredicate.evaluate(inputs:) in conformance IsDefaultButtonLabel(uint64_t *a1, uint64_t a2)
{
  lazy protocol witness table accessor for type IsDefaultButtonLabel and conformance IsDefaultButtonLabel();
  PropertyList.subscript.getter();
  return v3;
}

uint64_t DefaultButtonLabel.body.getter@<X0>(uint64_t a1@<X8>)
{
  v20 = *v1;
  v3 = v20;
  DefaultButtonLabel.contents.getter(v15);
  v4 = v15[0];
  v5 = v15[1];
  v6 = v16;
  v7 = v17;
  v8 = v18;
  v9 = v19;

  outlined copy of Text.Storage(v4, v5, v6);
  specialized Image.init(systemName:)(v8, v9);
  v11 = v10;
  if (v3 > 1)
  {
    if (v3 == 2)
    {
      v13 = 0;
    }

    else
    {
      v13 = 2;
    }

    goto LABEL_8;
  }

  if (v3)
  {
    v13 = 1;
LABEL_8:
    v12 = (v13 << 8) | 1;
    goto LABEL_9;
  }

  v12 = 2;
LABEL_9:
  outlined consume of Text.Storage(v4, v5, v6);

  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v11;
  *(a1 + 40) = 0;
  *(a1 + 48) = v12;
  return result;
}

uint64_t DefaultButtonLabel.contents.getter@<X0>(uint64_t a1@<X8>)
{
  if (*v1 > 1u)
  {
    if (*v1 == 2)
    {
      LocalizedStringKey.init(stringLiteral:)();
      v3 = 0xE90000000000006BLL;
      v4 = 0x72616D6B63656863;
      goto LABEL_9;
    }

    v3 = 0xE500000000000000;
    LocalizedStringKey.init(stringLiteral:)();
LABEL_8:
    v4 = 0x6B72616D78;
    goto LABEL_9;
  }

  if (*v1)
  {
    LocalizedStringKey.init(stringLiteral:)();
    v3 = 0xE500000000000000;
    goto LABEL_8;
  }

  LocalizedStringKey.init(stringLiteral:)();
  v3 = 0xE500000000000000;
  v4 = 0x6873617274;
LABEL_9:
  type metadata accessor for SwiftUIClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = [objc_opt_self() bundleForClass_];
  result = Text.init(_:tableName:bundle:comment:)();
  *a1 = result;
  *(a1 + 8) = v8;
  *(a1 + 16) = v9 & 1;
  *(a1 + 24) = v10;
  *(a1 + 32) = v4;
  *(a1 + 40) = v3;
  return result;
}

unint64_t initializeBufferWithCopyOfBuffer for Button(unint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = v8;
  v10 = v8 | 7;
  v11 = *(v7 + 64);
  v12 = v11 + ((v9 + 75) & ~v9);
  if ((v12 + 1) > 0x30)
  {
    v13 = v12 + 1;
  }

  else
  {
    v13 = 48;
  }

  v14 = *(a3 + 16);
  v15 = *(v14 - 8);
  v16 = *(v15 + 80);
  v17 = (*(v15 + 80) | v8) & 0x100000;
  if ((v10 | v16) == 7 && v17 == 0 && ((((-2 - v10) | v10) + ~v13 - v16) | v16) - *(v15 + 64) >= 0xFFFFFFFFFFFFFFE7)
  {
    *a1 = *a2;
    v21 = a1 & 0xFFFFFFFFFFFFFFF8;
    v22 = ((a1 & 0xFFFFFFFFFFFFFFF8) + 8);
    v23 = a2 & 0xFFFFFFFFFFFFFFF8;
    v24 = (v23 + 8);
    v25 = *(v23 + 8 + v13);
    v26 = v25 - 3;
    if (v25 < 3)
    {
      goto LABEL_28;
    }

    if (v13 <= 3)
    {
      v27 = v13;
    }

    else
    {
      v27 = 4;
    }

    if (v27 > 1)
    {
      if (v27 == 2)
      {
        v28 = *v24;
        if (v13 >= 4)
        {
          goto LABEL_25;
        }
      }

      else
      {
        if (v27 == 3)
        {
          v28 = *(v23 + 8) | (*(v23 + 10) << 16);
          if (v13 < 4)
          {
            goto LABEL_27;
          }

LABEL_25:
          v25 = v28 + 3;
          goto LABEL_28;
        }

        v28 = *v24;
        if (v13 >= 4)
        {
          goto LABEL_25;
        }
      }

LABEL_27:
      v25 = (v28 | (v26 << (8 * v13))) + 3;
LABEL_28:
      if (v25 == 2)
      {
        v39 = *v24;
        v40 = *(v24 + 1);
        v41 = *(v24 + 16);
        outlined copy of Environment<AppIntentExecutor?>.Content(*v24, v40, v41);
        *v22 = v39;
        *((a1 & 0xFFFFFFFFFFFFFFF8) + 16) = v40;
        *((a1 & 0xFFFFFFFFFFFFFFF8) + 24) = v41;
        v42 = *(v24 + 3);
        *((a1 & 0xFFFFFFFFFFFFFFF8) + 32) = v42;
        v43 = *(v24 + 5);
        *((a1 & 0xFFFFFFFFFFFFFFF8) + 40) = *(v24 + 4);
        *((a1 & 0xFFFFFFFFFFFFFFF8) + 48) = v43;
        *(v22 + v13) = 2;
        v44 = v42;
      }

      else
      {
        if (v25 == 1)
        {
          v49 = *(v23 + 16);
          v51 = *(v23 + 8);
          v47 = *(v23 + 24);
          v57 = v14;
          v29 = *(v23 + 32);
          v52 = *(v23 + 42);
          v30 = *(v23 + 40);
          v55 = v11;
          v56 = v6;
          v54 = v7;
          outlined copy of Environment<OpenURLAction>.Content(v51, v49, v47, v29, v30, v52);
          *(v21 + 8) = v51;
          *(v21 + 16) = v49;
          *(v21 + 24) = v47;
          *(v21 + 32) = v29;
          *(v21 + 40) = v30;
          *(v21 + 42) = v52;
          v31 = (v21 + 50) & 0xFFFFFFFFFFFFFFF8;
          v32 = (v23 + 50) & 0xFFFFFFFFFFFFFFF8;
          v33 = *(v32 + 8);
          v34 = *(v32 + 24);
          v48 = *(v32 + 16);
          v50 = *v32;
          v53 = *(v32 + 34);
          LOWORD(v51) = *(v32 + 32);
          v35 = outlined copy of Environment<OpenURLAction>.Content(*v32, v33, v48, v34, v51, v53);
          *v31 = v50;
          *(v31 + 8) = v33;
          *(v31 + 16) = v48;
          *(v31 + 24) = v34;
          v22 = ((a1 & 0xFFFFFFFFFFFFFFF8) + 8);
          v14 = v57;
          v36 = v32 + v9;
          *(v31 + 32) = v51;
          *(v31 + 34) = v53;
          v37 = (v31 + v9 + 35) & ~v9;
          v38 = (v36 + 35) & ~v9;
          (*(v54 + 16))(v37, v38, v56, v35);
          *(v37 + v55) = *(v38 + v55);
          *(v22 + v13) = 1;
LABEL_34:
          (*(v15 + 16))((v22 + v13 + v16 + 1) & ~v16, (v24 + v13 + v16 + 1) & ~v16, v14);
          return a1;
        }

        v45 = *(v23 + 16);
        *v22 = *v24;
        *((a1 & 0xFFFFFFFFFFFFFFF8) + 16) = v45;
        *(v22 + v13) = 0;
      }

      goto LABEL_34;
    }

    if (!v27)
    {
      goto LABEL_28;
    }

    v28 = *v24;
    if (v13 < 4)
    {
      goto LABEL_27;
    }

    goto LABEL_25;
  }

  v20 = *a2;
  *a1 = *a2;
  a1 = v20 + (((v10 | v16) + 16) & ~(v10 | v16));

  return a1;
}

_BYTE *assignWithTake for Button(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  *a1 = *a2;
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v8 = v7;
  v9 = *(v7 + 80);
  v10 = (v9 | 7) + 1;
  v11 = (&a1[v10] & ~(v9 | 7));
  v12 = (&a2[v10] & ~(v9 | 7));
  if (v11 == v12)
  {
    v13 = ((v9 + 75) & ~v9) + *(v7 + 64);
    if ((v13 + 1) > 0x30)
    {
      v14 = v13 + 1;
    }

    else
    {
      v14 = 48;
    }

    goto LABEL_47;
  }

  v15 = v6;
  v16 = ((v9 + 75) & ~v9) + *(v7 + 64);
  if ((v16 + 1) > 0x30)
  {
    v14 = v16 + 1;
  }

  else
  {
    v14 = 48;
  }

  v17 = v11[v14];
  v18 = v17 - 3;
  if (v17 >= 3)
  {
    if (v14 <= 3)
    {
      v19 = v14;
    }

    else
    {
      v19 = 4;
    }

    if (v19 <= 1)
    {
      if (!v19)
      {
        goto LABEL_22;
      }

      v20 = *v11;
    }

    else if (v19 == 2)
    {
      v20 = *v11;
    }

    else if (v19 == 3)
    {
      v20 = *v11 | (v11[2] << 16);
    }

    else
    {
      v20 = *v11;
    }

    v21 = (v20 | (v18 << (8 * v14))) + 3;
    v17 = v20 + 3;
    if (v14 < 4)
    {
      v17 = v21;
    }
  }

LABEL_22:
  v22 = ~v9;
  v43 = *(v7 + 64);
  if (v17 == 2)
  {
    outlined consume of Environment<AppIntentExecutor?>.Content(*v11, *(v11 + 1), v11[16]);
  }

  else if (v17 == 1)
  {
    outlined consume of Environment<OpenURLAction>.Content(*v11, *(v11 + 1), *(v11 + 2), *(v11 + 3), *(v11 + 16), v11[34]);
    v23 = (v11 + 42) & 0xFFFFFFFFFFFFFFF8;
    v24 = outlined consume of Environment<OpenURLAction>.Content(*v23, *(v23 + 8), *(v23 + 16), *(v23 + 24), *(v23 + 32), *(v23 + 34));
    (*(v8 + 8))((v9 + v23 + 35) & v22, v15, v24);
    goto LABEL_27;
  }

LABEL_27:
  v25 = v12[v14];
  v26 = v25 - 3;
  if (v25 >= 3)
  {
    if (v14 <= 3)
    {
      v27 = v14;
    }

    else
    {
      v27 = 4;
    }

    if (v27 > 1)
    {
      if (v27 == 2)
      {
        v28 = *v12;
      }

      else if (v27 == 3)
      {
        v28 = *v12 | (v12[2] << 16);
      }

      else
      {
        v28 = *v12;
      }

LABEL_39:
      v29 = (v28 | (v26 << (8 * v14))) + 3;
      v25 = v28 + 3;
      if (v14 < 4)
      {
        v25 = v29;
      }

      goto LABEL_41;
    }

    if (v27)
    {
      v28 = *v12;
      goto LABEL_39;
    }
  }

LABEL_41:
  if (v25 == 2)
  {
    v39 = *v12;
    v40 = *(v12 + 2);
    *(v11 + 1) = *(v12 + 1);
    *(v11 + 2) = v40;
    *v11 = v39;
    v38 = 2;
  }

  else
  {
    if (v25 != 1)
    {
      *v11 = *v12;
      v11[v14] = 0;
      goto LABEL_47;
    }

    v30 = *v12;
    v31 = *(v12 + 1);
    *(v11 + 31) = *(v12 + 31);
    *v11 = v30;
    *(v11 + 1) = v31;
    v32 = (v11 + 42) & 0xFFFFFFFFFFFFFFF8;
    v33 = (v12 + 42) & 0xFFFFFFFFFFFFFFF8;
    v34 = *v33;
    v35 = *(v33 + 16);
    *(v32 + 31) = *(v33 + 31);
    *v32 = v34;
    *(v32 + 16) = v35;
    v36 = (v9 + 35 + v32) & v22;
    v37 = (v9 + 35 + v33) & v22;
    (*(v8 + 32))(v36, v37, v15);
    *(v43 + v36) = *(v43 + v37);
    v38 = 1;
  }

  v11[v14] = v38;
LABEL_47:
  v41 = *(*(a3 + 16) - 8);
  (*(v41 + 40))(&v11[v14 + 1 + *(v41 + 80)] & ~*(v41 + 80), &v12[v14 + 1 + *(v41 + 80)] & ~*(v41 + 80));
  return a1;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Label<Text, Image>, ViewInputFlagModifier<IsDefaultButtonLabel>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, StaticIf<_SemanticFeature<Semantics_v5>, AllowsToolbarItemBridgingModifier, EmptyModifier>, EmptyModifier>, EmptyModifier>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Label<Text, Image>, ViewInputFlagModifier<IsDefaultButtonLabel>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, StaticIf<_SemanticFeature<Semantics_v5>, AllowsToolbarItemBridgingModifier, EmptyModifier>, EmptyModifier>, EmptyModifier>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Label<Text, Image>, ViewInputFlagModifier<IsDefaultButtonLabel>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, StaticIf<_SemanticFeature<Semantics_v5>, AllowsToolbarItemBridgingModifier, EmptyModifier>, EmptyModifier>, EmptyModifier>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<ModifiedContent<Label<Text, Image>, ViewInputFlagModifier<IsDefaultButtonLabel>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, StaticIf<_SemanticFeature<Semantics_v5>, AllowsToolbarItemBridgingModifier, EmptyModifier>, EmptyModifier>, EmptyModifier>>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ModifiedContent<Label<Text, Image>, ViewInputFlagModifier<IsDefaultButtonLabel>> and conformance <> ModifiedContent<A, B>();
    v5[1] = lazy protocol witness table accessor for type StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, StaticIf<_SemanticFeature<Semantics_v5>, AllowsToolbarItemBridgingModifier, EmptyModifier>, EmptyModifier>, EmptyModifier> and conformance <> StaticIf<A, B, C>(&lazy protocol witness table cache variable for type StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, StaticIf<_SemanticFeature<Semantics_v5>, AllowsToolbarItemBridgingModifier, EmptyModifier>, EmptyModifier>, EmptyModifier> and conformance <> StaticIf<A, B, C>, type metadata accessor for StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, StaticIf<_SemanticFeature<Semantics_v5>, AllowsToolbarItemBridgingModifier, EmptyModifier>, EmptyModifier>, EmptyModifier>, lazy protocol witness table accessor for type InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate> and conformance InvertedViewInputPredicate<A>, lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, StaticIf<_SemanticFeature<Semantics_v5>, AllowsToolbarItemBridgingModifier, EmptyModifier>, EmptyModifier> and conformance <> StaticIf<A, B, C>);
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Label<Text, Image>, ViewInputFlagModifier<IsDefaultButtonLabel>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, StaticIf<_SemanticFeature<Semantics_v5>, AllowsToolbarItemBridgingModifier, EmptyModifier>, EmptyModifier>, EmptyModifier>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for ModifiedContent<ModifiedContent<Label<Text, Image>, ViewInputFlagModifier<IsDefaultButtonLabel>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, StaticIf<_SemanticFeature<Semantics_v5>, AllowsToolbarItemBridgingModifier, EmptyModifier>, EmptyModifier>, EmptyModifier>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<Label<Text, Image>, ViewInputFlagModifier<IsDefaultButtonLabel>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, StaticIf<_SemanticFeature<Semantics_v5>, AllowsToolbarItemBridgingModifier, EmptyModifier>, EmptyModifier>, EmptyModifier>>)
  {
    type metadata accessor for ModifiedContent<Label<Text, Image>, ViewInputFlagModifier<IsDefaultButtonLabel>>(255);
    type metadata accessor for StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, StaticIf<_SemanticFeature<Semantics_v5>, AllowsToolbarItemBridgingModifier, EmptyModifier>, EmptyModifier>, EmptyModifier>(255);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<Label<Text, Image>, ViewInputFlagModifier<IsDefaultButtonLabel>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, StaticIf<_SemanticFeature<Semantics_v5>, AllowsToolbarItemBridgingModifier, EmptyModifier>, EmptyModifier>, EmptyModifier>>);
    }
  }
}

void type metadata accessor for ModifiedContent<Label<Text, Image>, ViewInputFlagModifier<IsDefaultButtonLabel>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<Label<Text, Image>, ViewInputFlagModifier<IsDefaultButtonLabel>>)
  {
    type metadata accessor for Label<Text, Image>();
    type metadata accessor for Button<DefaultButtonLabel>(255, &lazy cache variable for type metadata for ViewInputFlagModifier<IsDefaultButtonLabel>, lazy protocol witness table accessor for type IsDefaultButtonLabel and conformance IsDefaultButtonLabel, &type metadata for IsDefaultButtonLabel, MEMORY[0x1E697FD28]);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<Label<Text, Image>, ViewInputFlagModifier<IsDefaultButtonLabel>>);
    }
  }
}

void type metadata accessor for Button<DefaultButtonLabel>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Label<Text, Image>, ViewInputFlagModifier<IsDefaultButtonLabel>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Label<Text, Image>, ViewInputFlagModifier<IsDefaultButtonLabel>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Label<Text, Image>, ViewInputFlagModifier<IsDefaultButtonLabel>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<Label<Text, Image>, ViewInputFlagModifier<IsDefaultButtonLabel>>(255);
    v4 = v3;
    v5[0] = _s7SwiftUI5LabelVyAA4TextVAA5ImageVGACyxq_GAA4ViewAAWlTm_4(&lazy protocol witness table cache variable for type Label<Text, Image> and conformance Label<A, B>, type metadata accessor for Label<Text, Image>, protocol conformance descriptor for Label<A, B>);
    v5[1] = lazy protocol witness table accessor for type ViewInputFlagModifier<IsDefaultButtonLabel> and conformance ViewInputFlagModifier<A>();
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Label<Text, Image>, ViewInputFlagModifier<IsDefaultButtonLabel>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ViewInputFlagModifier<IsDefaultButtonLabel> and conformance ViewInputFlagModifier<A>()
{
  result = lazy protocol witness table cache variable for type ViewInputFlagModifier<IsDefaultButtonLabel> and conformance ViewInputFlagModifier<A>;
  if (!lazy protocol witness table cache variable for type ViewInputFlagModifier<IsDefaultButtonLabel> and conformance ViewInputFlagModifier<A>)
  {
    type metadata accessor for Button<DefaultButtonLabel>(255, &lazy cache variable for type metadata for ViewInputFlagModifier<IsDefaultButtonLabel>, lazy protocol witness table accessor for type IsDefaultButtonLabel and conformance IsDefaultButtonLabel, &type metadata for IsDefaultButtonLabel, MEMORY[0x1E697FD28]);
    result = swift_getWitnessTable(MEMORY[0x1E697FD30], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ViewInputFlagModifier<IsDefaultButtonLabel> and conformance ViewInputFlagModifier<A>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, StaticIf<_SemanticFeature<Semantics_v5>, AllowsToolbarItemBridgingModifier, EmptyModifier>, EmptyModifier>, EmptyModifier> and conformance <> StaticIf<A, B, C>(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    v8 = a2(255);
    v9[0] = a3();
    v9[1] = a4();
    v9[2] = MEMORY[0x1E697E100];
    result = swift_getWitnessTable(MEMORY[0x1E6981CE0], v8, v9);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t initializeBufferWithCopyOfBuffer for ButtonAction(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v24 = *a2;
    *a1 = *a2;
    a1 = v24 + ((v5 + 16) & ~v5);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2)
    {
      v25 = *a2;
      v26 = *(a2 + 8);
      v27 = *(a2 + 16);
      outlined copy of Environment<AppIntentExecutor?>.Content(*a2, v26, v27);
      *a1 = v25;
      *(a1 + 8) = v26;
      *(a1 + 16) = v27;
      v28 = *(a2 + 40);
      v29 = *(a2 + 24);
      *(a1 + 24) = v29;
      *(a1 + 40) = v28;
      v30 = v29;
    }

    else if (EnumCaseMultiPayload == 1)
    {
      v7 = *a2;
      v8 = *(a2 + 8);
      v9 = *(a2 + 16);
      v10 = *(a2 + 24);
      v11 = *(a2 + 34);
      v12 = *(a2 + 32);
      outlined copy of Environment<OpenURLAction>.Content(*a2, v8, v9, v10, v12, v11);
      *a1 = v7;
      *(a1 + 8) = v8;
      *(a1 + 16) = v9;
      *(a1 + 24) = v10;
      *(a1 + 32) = v12;
      *(a1 + 34) = v11;
      v13 = *(a2 + 40);
      v14 = *(a2 + 48);
      v15 = *(a2 + 56);
      v16 = *(a2 + 64);
      v17 = *(a2 + 74);
      v18 = *(a2 + 72);
      outlined copy of Environment<OpenURLAction>.Content(v13, v14, v15, v16, v18, v17);
      *(a1 + 40) = v13;
      *(a1 + 48) = v14;
      *(a1 + 56) = v15;
      *(a1 + 64) = v16;
      *(a1 + 72) = v18;
      *(a1 + 74) = v17;
      v19 = *(type metadata accessor for LinkDestination() + 24);
      v20 = a1 + v19;
      v21 = a2 + v19;
      v22 = type metadata accessor for URL();
      (*(*(v22 - 8) + 16))(v20, v21, v22);
      v23 = type metadata accessor for LinkDestination.Configuration();
      *(v20 + *(v23 + 20)) = *(v21 + *(v23 + 20));
    }

    else
    {
      v31 = *(a2 + 8);
      *a1 = *a2;
      *(a1 + 8) = v31;
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

uint64_t assignWithCopy for ButtonAction(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    _s7SwiftUI33PrimitiveButtonStyleConfigurationVWOhTm_4(a1, type metadata accessor for ButtonAction);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2)
    {
      v23 = *a2;
      v24 = *(a2 + 8);
      v25 = *(a2 + 16);
      outlined copy of Environment<AppIntentExecutor?>.Content(*a2, v24, v25);
      *a1 = v23;
      *(a1 + 8) = v24;
      *(a1 + 16) = v25;
      v26 = *(a2 + 24);
      *(a1 + 24) = v26;
      v27 = *(a2 + 32);
      v28 = *(a2 + 40);
      *(a1 + 32) = v27;
      *(a1 + 40) = v28;
      v29 = v26;
    }

    else if (EnumCaseMultiPayload == 1)
    {
      v6 = *a2;
      v7 = *(a2 + 8);
      v8 = *(a2 + 16);
      v9 = *(a2 + 24);
      v10 = *(a2 + 34);
      v11 = *(a2 + 32);
      outlined copy of Environment<OpenURLAction>.Content(*a2, v7, v8, v9, v11, v10);
      *a1 = v6;
      *(a1 + 8) = v7;
      *(a1 + 16) = v8;
      *(a1 + 24) = v9;
      *(a1 + 32) = v11;
      *(a1 + 34) = v10;
      v12 = *(a2 + 40);
      v13 = *(a2 + 48);
      v14 = *(a2 + 56);
      v15 = *(a2 + 64);
      v16 = *(a2 + 74);
      v17 = *(a2 + 72);
      outlined copy of Environment<OpenURLAction>.Content(v12, v13, v14, v15, v17, v16);
      *(a1 + 40) = v12;
      *(a1 + 48) = v13;
      *(a1 + 56) = v14;
      *(a1 + 64) = v15;
      *(a1 + 72) = v17;
      *(a1 + 74) = v16;
      v18 = *(type metadata accessor for LinkDestination() + 24);
      v19 = a1 + v18;
      v20 = a2 + v18;
      v21 = type metadata accessor for URL();
      (*(*(v21 - 8) + 16))(v19, v20, v21);
      v22 = type metadata accessor for LinkDestination.Configuration();
      *(v19 + *(v22 + 20)) = *(v20 + *(v22 + 20));
    }

    else
    {
      v30 = *(a2 + 8);
      *a1 = *a2;
      *(a1 + 8) = v30;
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

char *initializeWithTake for ButtonAction(char *a1, char *a2, uint64_t a3)
{
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = *(a2 + 1);
    *a1 = *a2;
    *(a1 + 1) = v6;
    *(a1 + 31) = *(a2 + 31);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 71) = *(a2 + 71);
    v7 = *(type metadata accessor for LinkDestination() + 24);
    v8 = &a1[v7];
    v9 = &a2[v7];
    v10 = type metadata accessor for URL();
    (*(*(v10 - 8) + 32))(v8, v9, v10);
    v11 = type metadata accessor for LinkDestination.Configuration();
    v8[*(v11 + 20)] = v9[*(v11 + 20)];
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  else
  {
    v13 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v13);
  }
}

char *assignWithTake for ButtonAction(char *a1, char *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  _s7SwiftUI33PrimitiveButtonStyleConfigurationVWOhTm_4(a1, type metadata accessor for ButtonAction);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = *(a2 + 1);
    *a1 = *a2;
    *(a1 + 1) = v6;
    *(a1 + 31) = *(a2 + 31);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 71) = *(a2 + 71);
    v7 = *(type metadata accessor for LinkDestination() + 24);
    v8 = &a1[v7];
    v9 = &a2[v7];
    v10 = type metadata accessor for URL();
    (*(*(v10 - 8) + 32))(v8, v9, v10);
    v11 = type metadata accessor for LinkDestination.Configuration();
    v8[*(v11 + 20)] = v9[*(v11 + 20)];
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v13 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v13);
}

uint64_t type metadata accessor for TestableSubgraph(uint64_t a1)
{
  result = type metadata singleton initialization cache for TestableSubgraph;
  if (!type metadata singleton initialization cache for TestableSubgraph)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t closure #1 in View.withChildrenForTest<A>(environment:options:body:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(__int128 *), uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *&v14[0] = a2;
  *(&v14[0] + 1) = a3;
  v16 = a4;

  specialized TestableViewContent.init(_:environment:options:)(a1, v14, &v16, a7, a9, &v15);
  type metadata accessor for TestableViewContent(0, a7, a9, v12);
  TestableViewContent.children.getter(v14);
  a5(v14);

  return outlined destroy of _VariadicView_Children(v14);
}

void *TestableViewContent.children.getter@<X0>(void *a1@<X8>)
{
  TestableViewContent.list.getter();
  v3 = *(*(v1 + 24) + 16);
  result = default argument 2 of _VariadicView_Children.init(_:contentSubgraph:transform:)();
  a1[5] = v3;
  a1[6] = v5;
  a1[7] = v6;
  return result;
}

uint64_t closure #1 in TestableViewContent.init(_:environment:options:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v7 = a4;
  v31 = *MEMORY[0x1E69E9840];
  v21 = a4;
  v12 = type metadata accessor for Attribute();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, partial apply for closure #1 in Attribute.init(value:), v20, v7, MEMORY[0x1E69E73E0], v12, MEMORY[0x1E69E7410], v13);
  LODWORD(a1) = v28[0];
  v14 = *(a2 + 16);
  swift_beginAccess();
  v15 = *(v14 + 88);
  v29[0] = *(v14 + 72);
  v29[1] = v15;
  v29[2] = *(v14 + 104);
  v16 = *(v14 + 88);
  v22 = *(v14 + 72);
  v23 = v16;
  v24 = *(v14 + 104);
  *&v30[0] = a3;
  outlined init with copy of _GraphInputs(v29, v28);
  _ViewListInputs.init(_:options:)();
  _GraphValue.init(_:)();
  static View.makeDebuggableViewList(view:inputs:)();
  v22 = 0uLL;
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  lazy protocol witness table accessor for type TransactionWrapper and conformance TransactionWrapper();
  LODWORD(a3) = Attribute.init<A>(body:value:flags:update:)();
  outlined init with copy of _ViewListInputs(v28, &v22);
  _ViewListCountInputs.init(_:)();
  v24 = v30[2];
  v25 = v30[3];
  v26 = v30[4];
  v22 = v30[0];
  v23 = v30[1];
  v17 = (*(a5 + 40))(&v22, v7, a5);
  LOBYTE(v14) = v18;
  *a6 = a1;
  LODWORD(v7) = _ViewListOutputs.makeAttribute(inputs:)();
  outlined destroy of _ViewListCountInputs(v30);
  outlined destroy of _ViewListOutputs(v27);
  result = outlined destroy of _ViewListInputs(v28);
  *(a6 + 4) = v7;
  *(a6 + 8) = a3;
  *(a6 + 12) = 0;
  *(a6 + 16) = v17;
  *(a6 + 24) = v14 & 1;
  return result;
}

uint64_t TestableViewContent.list.getter()
{
  type metadata accessor for ViewList();
  Value = AGGraphGetValue();
  outlined init with copy of _Benchmark(Value, v3);
  _ViewList_Subgraph.wrapping(_:)();
  return __swift_destroy_boxed_opaque_existential_1(v3);
}

uint64_t TransactionWrapper.updateValue()()
{
  v6[4] = *MEMORY[0x1E69E9840];
  v1 = *v0;
  if (!*v0)
  {
LABEL_5:
    __break(1u);
  }

  v2 = v0;
  v3 = v0[1];
  if (AGGraphGetCurrentAttribute() == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
    goto LABEL_5;
  }

  TransactionID.init<A>(context:)();
  v1(v6, &v5);
  AGGraphSetOutputValue();
  __swift_destroy_boxed_opaque_existential_1(v6);
  result = outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v1, v3);
  *v2 = 0;
  v2[1] = 0;
  return result;
}

void specialized TestableViewContent.init(_:environment:options:)(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v10 = *a3;
  v22 = *a2;
  type metadata accessor for EmptyViewRendererHost();
  swift_allocObject();
  v11 = EmptyViewRendererHost.init(environment:)();
  v12 = *(v11 + 16);
  swift_beginAccess();
  if (*(v12 + 16))
  {
    v13 = AGSubgraphCreate();
    type metadata accessor for TestableSubgraph(0);
    v14 = swift_allocObject();
    *(v14 + 32) = v11;
    *(v14 + 24) = 1;
    *(v14 + 16) = v13;
    swift_beginAccess();

    AGSubgraphAddChild();
    v15 = v13;
    AGGraphClearUpdate();
    v16 = AGSubgraphGetCurrent();
    AGSubgraphSetCurrent();
    closure #1 in TestableViewContent.init(_:environment:options:)(a1, v11, v10, a4, a5, &v22);
    AGSubgraphSetCurrent();

    AGGraphSetUpdate();
    v17 = DWORD2(v22);
    v18 = BYTE12(v22);
    v19 = v23;
    v20 = v24;
    v21 = v22;
    LOBYTE(v22) = BYTE12(v22);
    v25 = v24;
    *a6 = v21;
    *(a6 + 8) = v17;
    *(a6 + 12) = v18;
    *(a6 + 16) = v11;
    *(a6 + 24) = v14;
    *(a6 + 32) = v19;
    *(a6 + 40) = v20;
  }

  else
  {
    __break(1u);
  }
}

unint64_t lazy protocol witness table accessor for type TransactionWrapper and conformance TransactionWrapper()
{
  result = lazy protocol witness table cache variable for type TransactionWrapper and conformance TransactionWrapper;
  if (!lazy protocol witness table cache variable for type TransactionWrapper and conformance TransactionWrapper)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TransactionWrapper, &unk_1F0012FA8, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TransactionWrapper and conformance TransactionWrapper);
  }

  return result;
}

uint64_t initializeWithCopy for TestableViewContent(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  v3 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v3;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);

  return a1;
}

uint64_t assignWithCopy for TestableViewContent(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  v4 = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 8) = v4;
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);

  v5 = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 32) = v5;
  return a1;
}

uint64_t assignWithTake for TestableViewContent(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);

  *(a1 + 16) = *(a2 + 16);

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  return a1;
}

uint64_t getEnumTagSinglePayload for TestableViewContent(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for TestableViewContent(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t PushDestination.init(destination:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t static PushDestination._makeDestinations(content:inputs:resolved:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v30 = *MEMORY[0x1E69E9840];
  v11 = *(a2 + 48);
  v12 = *(a2 + 56);
  v26 = a4;
  v27 = a5;
  v28 = a6;
  v29 = a7;
  type metadata accessor for PushDestination(255, &v26);
  type metadata accessor for _GraphValue();
  _GraphValue.value.getter();
  closure #1 in static PushDestination._makeDestinations(content:inputs:resolved:)(1, a4, a5, a6, a7);
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  v26 = a4;
  v27 = a5;
  v28 = a6;
  v29 = a7;
  Destination = type metadata accessor for PushDestination.MakeDestination(0, &v26);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for PushDestination<A, B>.MakeDestination, Destination);
  type metadata accessor for Attribute<NavigationDestinationResolverBase>(0, &lazy cache variable for type metadata for Attribute<NavigationDestinationResolverBase>, type metadata accessor for NavigationDestinationResolverBase, MEMORY[0x1E698D388]);
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&OffsetAttribute2, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_TA_39, v23, Destination, MEMORY[0x1E69E73E0], v13, MEMORY[0x1E69E7410], v14);
  v15 = AGCreateWeakAttribute();
  v26 = v11;
  LODWORD(v27) = v12;
  v18 = a4;
  v19 = a5;
  v20 = a6;
  v21 = a7;
  v22 = v15;

  PreferencesOutputs.makePreferenceTransformer<A>(inputs:key:transform:)();
}

uint64_t closure #1 in static PushDestination._makeDestinations(content:inputs:resolved:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11[0] = a2;
  v11[1] = a3;
  v11[2] = a4;
  v11[3] = a5;
  v9[2] = type metadata accessor for PushDestination(0, v11);
  FunctionTypeMetadata1 = swift_getFunctionTypeMetadata1();
  v6 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, partial apply for closure #1 in static PointerOffset.of(_:), v9, FunctionTypeMetadata1, MEMORY[0x1E69E73E0], v6, MEMORY[0x1E69E7410], v7);
  return v11[0];
}

uint64_t implicit closure #1 in static PushDestination._makeDestinations(content:inputs:resolved:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12[4] = *MEMORY[0x1E69E9840];
  v8 = a1;
  v12[0] = a2;
  v12[1] = a3;
  v12[2] = a4;
  v12[3] = a5;
  v10 = type metadata accessor for PushDestination.PreferenceTransform(0, v12);
  WitnessTable = swift_getWitnessTable("\t(\bbī\a", v10);
  type metadata accessor for Attribute<NavigationDestinationResolverBase>(0, &lazy cache variable for type metadata for Attribute<(_:)>, type metadata accessor for (_:), MEMORY[0x1E698D388]);
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v8, closure #1 in Attribute.init<A>(_:)partial apply, v9, v10, MEMORY[0x1E69E73E0], v5, MEMORY[0x1E69E7410], v6);
  return LODWORD(v12[0]);
}

uint64_t PushDestination.MakeDestination.value.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for NavigationDestinationResolver(0, a2, a3, a5);
  swift_getFunctionTypeMetadata1();
  Value = AGGraphGetValue();
  v6 = NavigationDestinationResolver.__allocating_init(transform:)(*Value, Value[1]);

  return v6;
}

double PushDestination.PreferenceTransform.destination.getter(uint64_t a1)
{
  type metadata accessor for NavigationDestinationResolverBase();
  if (AGGraphGetWeakValue())
  {
  }

  return result;
}

uint64_t protocol witness for Rule.value.getter in conformance PushDestination<A, B>.MakeDestination@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = PushDestination.MakeDestination.value.getter(*v2, a1[2], a1[3], a1[4], a1[5]);
  *a2 = result;
  return result;
}

uint64_t (*PushDestination.PreferenceTransform.value.getter(uint64_t a1))()
{
  PushDestination.PreferenceTransform.destination.getter(a1);
  *(swift_allocObject() + 16) = v1;
  return partial apply for closure #1 in PushDestination.PreferenceTransform.value.getter;
}

void *closure #1 in PushDestination.PreferenceTransform.value.getter(void *result, uint64_t a2)
{
  if (a2)
  {
    v2 = result;

    MEMORY[0x18D00CC30](v3);
    if (*((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    return specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  return result;
}

uint64_t protocol witness for Rule.value.getter in conformance PushDestination<A, B>.PreferenceTransform@<X0>(uint64_t (**a1)(uint64_t a1)@<X8>)
{
  v3 = PushDestination.PreferenceTransform.value.getter(*v1);
  v5 = v4;
  result = swift_allocObject();
  *(result + 16) = v3;
  *(result + 24) = v5;
  *a1 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed IndexSet) -> ();
  a1[1] = result;
  return result;
}

void type metadata accessor for Attribute<NavigationDestinationResolverBase>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t specialized Sequence.contains(where:)(uint64_t (*a1)(void **, double), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *(v7 - 1);
      v9 = *v7;
      v14 = v8;
      v15 = v9;
      v10 = outlined copy of ResponderBasedHitTestTracing(v8, v9);
      v11 = a1(&v14, v10);
      outlined consume of ResponderBasedHitTestTracing(v8, v9);
      if (v3)
      {
        break;
      }

      v7 += 16;
      v12 = v6-- == 0;
    }

    while (((v11 | v12) & 1) == 0);
  }

  else
  {
    LOBYTE(v11) = 0;
  }

  return v11 & 1;
}

uint64_t specialized Sequence.contains(where:)(uint64_t (*a1)(void *, __n128), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = v6;
      v9 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v9;

      v10 = (a1)(v12);

      LOBYTE(v4) = (v3 != 0) | v10;
      if ((v3 != 0) | v10 & 1)
      {
        break;
      }

      v6 = v8 - 1;
      v7 += 2;
    }

    while (v8);
  }

  return v4 & 1;
}

{
  v17 = a1;
  v4 = *(a3 + 16);
  if (v4)
  {
    v5 = v4 - 1;
    v6 = (a3 + 56);
    do
    {
      v7 = *(v6 - 3);
      v8 = *(v6 - 2);
      v9 = *(v6 - 8);
      v10 = *v6;
      v14[0] = v7;
      v14[1] = v8;
      v15 = v9;
      v16 = v10;
      outlined copy of Text.Storage(v7, v8, v9);

      v11 = v17(v14);
      outlined consume of Text.Storage(v7, v8, v9);

      if (v3)
      {
        break;
      }

      v12 = v5-- == 0;
      v6 += 4;
    }

    while (((v11 | v12) & 1) == 0);
  }

  else
  {
    LOBYTE(v11) = 0;
  }

  return v11 & 1;
}

BOOL specialized Sequence.contains(where:)(uint64_t (*a1)(char *), uint64_t a2)
{
  v30 = a1;
  v31 = a2;
  type metadata accessor for (AnyToken?, Range<AttributedString.Index>)(0);
  v32 = v3;
  v29 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for _ContiguousArrayStorage<Range<Int>>(0, &lazy cache variable for type metadata for (AnyToken?, Range<AttributedString.Index>)?, type metadata accessor for (AnyToken?, Range<AttributedString.Index>), MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v27 - v7;
  v27[0] = MEMORY[0x1E6968768];
  _s7SwiftUI26AccessibilityActionStorageVyAA0c4VoidD0VGMaTm_1(0, &lazy cache variable for type metadata for AttributedString.Runs.AttributesSlice1<AttributeScopes.SwiftUIAttributes.AnyTokenAttribute>, lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.AnyTokenAttribute and conformance AttributeScopes.SwiftUIAttributes.AnyTokenAttribute, &type metadata for AttributeScopes.SwiftUIAttributes.AnyTokenAttribute, MEMORY[0x1E6968768]);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v27 - v12;
  v14 = MEMORY[0x1E6968758];
  _s7SwiftUI26AccessibilityActionStorageVyAA0c4VoidD0VGMaTm_1(0, &lazy cache variable for type metadata for AttributedString.Runs.AttributesSlice1<AttributeScopes.SwiftUIAttributes.AnyTokenAttribute>.Iterator, lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.AnyTokenAttribute and conformance AttributeScopes.SwiftUIAttributes.AnyTokenAttribute, &type metadata for AttributeScopes.SwiftUIAttributes.AnyTokenAttribute, MEMORY[0x1E6968758]);
  v16 = v15;
  v28 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = v27 - v18;
  v20 = (*(v11 + 16))(v13, v27[1], v10, v17);
  lazy protocol witness table accessor for type AttributedString.Runs.AttributesSlice1<AttributeScopes.SwiftUIAttributes.AnyTokenAttribute>.Iterator and conformance AttributedString.Runs.AttributesSlice1<A>.Iterator(&lazy protocol witness table cache variable for type AttributedString.Runs.AttributesSlice1<AttributeScopes.SwiftUIAttributes.AnyTokenAttribute> and conformance AttributedString.Runs.AttributesSlice1<A>, &lazy cache variable for type metadata for AttributedString.Runs.AttributesSlice1<AttributeScopes.SwiftUIAttributes.AnyTokenAttribute>, v27[0], MEMORY[0x1E6968778], v20);
  dispatch thunk of Sequence.makeIterator()();
  lazy protocol witness table accessor for type AttributedString.Runs.AttributesSlice1<AttributeScopes.SwiftUIAttributes.AnyTokenAttribute>.Iterator and conformance AttributedString.Runs.AttributesSlice1<A>.Iterator(&lazy protocol witness table cache variable for type AttributedString.Runs.AttributesSlice1<AttributeScopes.SwiftUIAttributes.AnyTokenAttribute>.Iterator and conformance AttributedString.Runs.AttributesSlice1<A>.Iterator, &lazy cache variable for type metadata for AttributedString.Runs.AttributesSlice1<AttributeScopes.SwiftUIAttributes.AnyTokenAttribute>.Iterator, v14, MEMORY[0x1E6968760], v21);
  v22 = (v29 + 48);
  do
  {
    dispatch thunk of IteratorProtocol.next()();
    v23 = (*v22)(v8, 1, v32);
    if (v23 == 1)
    {
      break;
    }

    outlined init with take of (AnyToken?, Range<AttributedString.Index>)(v8, v5);
    v24 = v30(v5);
    if (v2)
    {
      outlined destroy of (AnyToken?, Range<AttributedString.Index>)(v5, type metadata accessor for (AnyToken?, Range<AttributedString.Index>));
      break;
    }

    v25 = v24;
    outlined destroy of (AnyToken?, Range<AttributedString.Index>)(v5, type metadata accessor for (AnyToken?, Range<AttributedString.Index>));
  }

  while ((v25 & 1) == 0);
  (*(v28 + 8))(v19, v16);
  return v23 != 1;
}

uint64_t specialized Sequence.forEach(_:)(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = result + 56;
    do
    {
      v3 = *(v2 - 24);
      v4 = *(v2 - 16);
      v5 = *(v2 - 8);

      outlined copy of Text.Storage(v3, v4, v5);
      v6 = AccessibilityProperties.label.modify();
      if (*v7)
      {
        AccessibilityLabelStorage.removing(_:)();
      }

      v6(v8, 0);
      outlined consume of Text.Storage(v3, v4, v5);

      v2 += 32;
      --v1;
    }

    while (v1);
  }

  return result;
}

uint64_t AccessibilityChildBehavior.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AccessibilityChildBehaviorBox(0, v9, v10, v11);
  (*(v6 + 16))(v8, a1, a2);
  v12 = AccessibilityChildBehaviorBox.__allocating_init(_:)(v8);
  result = (*(v6 + 8))(a1, a2);
  *a3 = v12;
  return result;
}

uint64_t AccessibilityChildBehaviorBox.__allocating_init(_:)(uint64_t a1)
{
  v2 = swift_allocObject();
  (*(*(*(*v2 + 136) - 8) + 32))(v2 + *(*v2 + 152), a1);
  return v2;
}

Swift::Int AccessibilityChildBehavior.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  (*(*v1 + 112))(v3);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance AccessibilityChildBehavior()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  (*(*v1 + 112))(v3);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AccessibilityChildBehavior(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  (*(*v2 + 112))(v4);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type AccessibilityChildBehavior and conformance AccessibilityChildBehavior()
{
  result = lazy protocol witness table cache variable for type AccessibilityChildBehavior and conformance AccessibilityChildBehavior;
  if (!lazy protocol witness table cache variable for type AccessibilityChildBehavior and conformance AccessibilityChildBehavior)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AccessibilityChildBehavior, &type metadata for AccessibilityChildBehavior, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityChildBehavior and conformance AccessibilityChildBehavior);
  }

  return result;
}

uint64_t one-time initialization function for automatic(double a1)
{
  _s7SwiftUI26AccessibilityActionStorageVyAA0c4VoidD0VGMaTm_1(0, &lazy cache variable for type metadata for AccessibilityChildBehaviorBox<AccessibilityChildBehavior.Automatic>, lazy protocol witness table accessor for type AccessibilityChildBehavior.Automatic and conformance AccessibilityChildBehavior.Automatic, &type metadata for AccessibilityChildBehavior.Automatic, type metadata accessor for AccessibilityChildBehaviorBox);
  result = swift_allocObject();
  static AccessibilityChildBehavior.automatic = result;
  return result;
}

uint64_t one-time initialization function for automation(double a1)
{
  _s7SwiftUI26AccessibilityActionStorageVyAA0c4VoidD0VGMaTm_1(0, &lazy cache variable for type metadata for AccessibilityChildBehaviorBox<AccessibilityChildBehavior.Automation>, lazy protocol witness table accessor for type AccessibilityChildBehavior.Automation and conformance AccessibilityChildBehavior.Automation, &type metadata for AccessibilityChildBehavior.Automation, type metadata accessor for AccessibilityChildBehaviorBox);
  result = swift_allocObject();
  static AccessibilityChildBehavior.automation = result;
  return result;
}

uint64_t protocol witness for AccessibilityChildBehaviorProvider.initialAttachment(for:) in conformance AccessibilityChildBehavior.Ignore(void x0_0, void x1_0, void a3, uint64_t a1)
{
  AccessibilityProperties.init()();
  v4[14] = a1;
  v5 = 0;
  static AccessibilityAttachment.properties(_:)();
  return outlined destroy of AccessibilityProperties(v4);
}

uint64_t protocol witness for AccessibilityChildBehaviorProvider.initialAttachment(for:) in conformance AccessibilityChildBehavior.Contain(void x0_0, void x1_0, void a3, uint64_t a1)
{
  AccessibilityProperties.init()();
  v6 = a1;
  v7 = 0;
  outlined init with copy of AccessibilityProperties(v5, &v4);
  AccessibilityAttachment.init(properties:)();
  return outlined destroy of AccessibilityProperties(v5);
}

void *AccessibilityChildBehavior.Automatic.initialAttachment(for:)(unint64_t a1)
{
  if (a1 >> 62)
  {
    if (__CocoaSet.count.getter() == 1)
    {
      goto LABEL_4;
    }

    if (!__CocoaSet.count.getter())
    {
      v5 = 0x100000001;
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v3)
  {
    v5 = 0x100000001;
LABEL_11:
    AccessibilityProperties.init()();
    v6[14] = v5;
    v7 = 0;
    static AccessibilityAttachment.properties(_:)();
    return outlined destroy of AccessibilityProperties(v6);
  }

  if (v3 != 1)
  {
LABEL_10:
    v5 = 0x300000003;
    goto LABEL_11;
  }

LABEL_4:

  return AccessibilityAttachment.init()();
}

BOOL protocol witness for AccessibilityChildBehaviorProvider.willCreateNode(for:) in conformance AccessibilityChildBehavior.Automatic(unint64_t a1)
{
  if (a1 >> 62)
  {
    v1 = __CocoaSet.count.getter();
  }

  else
  {
    v1 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v1 != 1;
}

void protocol witness for AccessibilityChildBehaviorProvider.visibility(for:nodes:) in conformance AccessibilityChildBehavior.Ignore(unint64_t a1@<X1>, void *a2@<X8>)
{
  if (!(a1 >> 62))
  {
    if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_8:
    v5 = 0;
    goto LABEL_9;
  }

  v6 = a1;
  v7 = __CocoaSet.count.getter();
  a1 = v6;
  if (!v7)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x18D00E9C0](0);
    goto LABEL_6;
  }

  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v3 = *(a1 + 32);
LABEL_6:
    v4 = v3;
    AccessibilityNode.visibility.getter(&v8);

    v5 = v8;
LABEL_9:
    *a2 = v5;
    return;
  }

  __break(1u);
}

void specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(void ***a1, uint64_t a2, uint64_t *a3, uint64_t a4, unsigned __int8 a5, char a6, unsigned __int8 a7, void *a8)
{
  v143 = MEMORY[0x1E69E7CC0];
  v8 = a3[1];
  if (v8 >= 1)
  {
    v9 = 0;
    v10 = MEMORY[0x1E69E7CC0];
    v123 = a4;
    while (1)
    {
      v11 = v9;
      v12 = v9 + 1;
      if (v9 + 1 < v8)
      {
        v13 = *(*a3 + 8 * v12);
        v14 = 8 * v9;
        v15 = (*a3 + 8 * v9);
        v17 = *v15;
        v16 = v15 + 2;
        v142 = a5;
        v141 = a7;
        v18 = v13;
        v19 = v17;
        v20 = specialized static AccessibilityCore.sorted(lhs:rhs:with:explicitPriorityOnly:parentVisibility:cache:)(v18, v19, &v142, a6 & 1, &v141, a8);

        v130 = v11;
        v21 = v11 + 2;
        while (v8 != v21)
        {
          v23 = *(v16 - 1);
          v22 = *v16;
          v142 = a5;
          v141 = a7;
          v24 = v22;
          v25 = v23;
          v26 = specialized static AccessibilityCore.sorted(lhs:rhs:with:explicitPriorityOnly:parentVisibility:cache:)(v24, v25, &v142, a6 & 1, &v141, a8);

          ++v21;
          ++v16;
          if (v20 != v26)
          {
            v8 = v21 - 1;
            break;
          }
        }

        a4 = v123;
        v11 = v130;
        if (v20)
        {
          if (v8 < v130)
          {
            goto LABEL_142;
          }

          if (v130 < v8)
          {
            v27 = 8 * v8 - 8;
            v28 = v8;
            v29 = v130;
            do
            {
              if (v29 != --v28)
              {
                v30 = *a3;
                if (!*a3)
                {
                  goto LABEL_147;
                }

                v31 = *(v30 + v14);
                *(v30 + v14) = *(v30 + v27);
                *(v30 + v27) = v31;
              }

              ++v29;
              v27 -= 8;
              v14 += 8;
            }

            while (v29 < v28);
          }
        }

        v12 = v8;
      }

      v32 = a3[1];
      if (v12 < v32)
      {
        if (__OFSUB__(v12, v11))
        {
          goto LABEL_141;
        }

        if (v12 - v11 < a4)
        {
          if (__OFADD__(v11, a4))
          {
            goto LABEL_143;
          }

          if (v11 + a4 >= v32)
          {
            v33 = a3[1];
          }

          else
          {
            v33 = v11 + a4;
          }

          if (v33 < v11)
          {
            goto LABEL_144;
          }

          if (v12 != v33)
          {
            v34 = *a3;
            v35 = v11;
            v36 = *a3 + 8 * v12 - 8;
            v131 = v35;
            v133 = v10;
            v37 = v35 - v12;
            __src = v33;
            do
            {
              v38 = v12;
              v39 = *(v34 + 8 * v12);
              v40 = v37;
              v41 = v36;
              do
              {
                v42 = *v41;
                v142 = a5;
                v141 = a7;
                v43 = v39;
                v44 = v42;
                v45 = specialized static AccessibilityCore.sorted(lhs:rhs:with:explicitPriorityOnly:parentVisibility:cache:)(v43, v44, &v142, a6 & 1, &v141, a8);

                if (!v45)
                {
                  break;
                }

                if (!v34)
                {
                  goto LABEL_145;
                }

                v46 = *v41;
                v39 = *(v41 + 8);
                *v41 = v39;
                *(v41 + 8) = v46;
                v41 -= 8;
              }

              while (!__CFADD__(v40++, 1));
              v12 = v38 + 1;
              v36 += 8;
              --v37;
            }

            while ((v38 + 1) != __src);
            v12 = __src;
            v11 = v131;
            v10 = v133;
          }
        }
      }

      if (v12 < v11)
      {
        goto LABEL_140;
      }

      v124 = v12;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v10 + 2) + 1, 1, v10);
      }

      v49 = *(v10 + 2);
      v48 = *(v10 + 3);
      v50 = v49 + 1;
      if (v49 >= v48 >> 1)
      {
        v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v48 > 1), v49 + 1, 1, v10);
      }

      *(v10 + 2) = v50;
      v51 = &v10[16 * v49];
      *(v51 + 4) = v11;
      *(v51 + 5) = v124;
      v143 = v10;
      v52 = *a1;
      if (!*a1)
      {
        goto LABEL_148;
      }

      if (v49)
      {
        break;
      }

LABEL_3:
      v8 = a3[1];
      a4 = v123;
      v9 = v124;
      if (v124 >= v8)
      {
        goto LABEL_124;
      }
    }

    __srca = *a1;
    while (1)
    {
      v53 = v50 - 1;
      if (v50 >= 4)
      {
        break;
      }

      if (v50 == 3)
      {
        v54 = *(v10 + 4);
        v55 = *(v10 + 5);
        v64 = __OFSUB__(v55, v54);
        v56 = v55 - v54;
        v57 = v64;
LABEL_57:
        if (v57)
        {
          goto LABEL_131;
        }

        v70 = &v10[16 * v50];
        v72 = *v70;
        v71 = *(v70 + 1);
        v73 = __OFSUB__(v71, v72);
        v74 = v71 - v72;
        v75 = v73;
        if (v73)
        {
          goto LABEL_134;
        }

        v76 = &v10[16 * v53 + 32];
        v78 = *v76;
        v77 = *(v76 + 1);
        v64 = __OFSUB__(v77, v78);
        v79 = v77 - v78;
        if (v64)
        {
          goto LABEL_137;
        }

        if (__OFADD__(v74, v79))
        {
          goto LABEL_138;
        }

        if (v74 + v79 >= v56)
        {
          if (v56 < v79)
          {
            v53 = v50 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_71;
      }

      v80 = &v10[16 * v50];
      v82 = *v80;
      v81 = *(v80 + 1);
      v64 = __OFSUB__(v81, v82);
      v74 = v81 - v82;
      v75 = v64;
LABEL_71:
      if (v75)
      {
        goto LABEL_133;
      }

      v83 = &v10[16 * v53];
      v85 = *(v83 + 4);
      v84 = *(v83 + 5);
      v64 = __OFSUB__(v84, v85);
      v86 = v84 - v85;
      if (v64)
      {
        goto LABEL_136;
      }

      if (v86 < v74)
      {
        goto LABEL_3;
      }

LABEL_78:
      if (v53 - 1 >= v50)
      {
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
LABEL_148:
        __break(1u);
LABEL_149:
        __break(1u);
        return;
      }

      v91 = *a3;
      if (!*a3)
      {
        goto LABEL_146;
      }

      v132 = v53;
      v134 = v10;
      v127 = v53 - 1;
      v92 = *&v10[16 * v53 + 16];
      v93 = *&v10[16 * v53 + 32];
      v128 = *&v10[16 * v53 + 40];
      v129 = v92;
      v94 = 8 * v92;
      v95 = (v91 + 8 * v92);
      v96 = 8 * v93;
      v97 = (v91 + 8 * v93);
      v98 = (v91 + 8 * v128);
      v99 = 8 * v93 - 8 * v92;
      v100 = 8 * v128 - 8 * v93;
      if (v99 >= v100)
      {
        if (v97 != v52 || v98 <= v52)
        {
          memmove(v52, (v91 + 8 * v93), 8 * v128 - 8 * v93);
        }

        v101 = (v52 + v100);
        if (v100 < 1 || v96 <= v94)
        {
          v102 = __srca;
          v118 = v97;
        }

        else
        {
          do
          {
            __dst = v97;
            v110 = v97 - 1;
            --v98;
            v111 = v101;
            while (1)
            {
              v112 = v98 + 1;
              v113 = *--v111;
              v97 = v110;
              v114 = *v110;
              v142 = a5;
              v141 = a7;
              v115 = v113;
              v116 = v114;
              v117 = specialized static AccessibilityCore.sorted(lhs:rhs:with:explicitPriorityOnly:parentVisibility:cache:)(v115, v116, &v142, a6 & 1, &v141, a8);

              if (v117)
              {
                break;
              }

              if (v112 != v101)
              {
                *v98 = *v111;
              }

              --v98;
              v101 = v111;
              v110 = v97;
              if (v111 <= __srca)
              {
                v101 = v111;
                v102 = __srca;
                v118 = __dst;
                goto LABEL_115;
              }
            }

            v118 = v97;
            if (v112 != __dst)
            {
              *v98 = *v97;
            }

            v102 = __srca;
          }

          while (v101 > __srca && v95 < v97);
        }
      }

      else
      {
        if (v95 != v52 || v97 <= v52)
        {
          memmove(v52, (v91 + 8 * v92), 8 * v93 - 8 * v92);
        }

        v101 = (v52 + v99);
        if (v99 >= 1 && 8 * v128 > v96)
        {
          v102 = __srca;
          while (1)
          {
            v103 = *v97;
            v104 = *v102;
            v142 = a5;
            v141 = a7;
            v105 = v103;
            v106 = v104;
            v107 = specialized static AccessibilityCore.sorted(lhs:rhs:with:explicitPriorityOnly:parentVisibility:cache:)(v105, v106, &v142, a6 & 1, &v141, a8);

            if (!v107)
            {
              break;
            }

            v108 = v97;
            v109 = v95 == v97++;
            if (!v109)
            {
              goto LABEL_92;
            }

LABEL_93:
            ++v95;
            if (v102 >= v101 || v97 >= v98)
            {
              goto LABEL_112;
            }
          }

          v108 = v102;
          v109 = v95 == v102++;
          if (v109)
          {
            goto LABEL_93;
          }

LABEL_92:
          *v95 = *v108;
          goto LABEL_93;
        }

        v102 = __srca;
LABEL_112:
        v118 = v95;
      }

LABEL_115:
      if (v118 != v102 || v118 >= (v102 + ((v101 - v102 + (v101 - v102 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
      {
        memmove(v118, v102, 8 * (v101 - v102));
      }

      v119 = v134;
      v52 = __srca;
      if (v128 < v129)
      {
        goto LABEL_127;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v119 = specialized _ArrayBuffer._consumeAndCreateNew()(v134, v120);
      }

      if (v132 > *(v119 + 2))
      {
        goto LABEL_128;
      }

      v121 = &v119[16 * v127];
      *(v121 + 4) = v129;
      *(v121 + 5) = v128;
      v143 = v119;
      specialized Array.remove(at:)(v132);
      v10 = v143;
      v50 = v143[2];
      if (v50 <= 1)
      {
        goto LABEL_3;
      }
    }

    v58 = &v10[16 * v50 + 32];
    v59 = *(v58 - 64);
    v60 = *(v58 - 56);
    v64 = __OFSUB__(v60, v59);
    v61 = v60 - v59;
    if (v64)
    {
      goto LABEL_129;
    }

    v63 = *(v58 - 48);
    v62 = *(v58 - 40);
    v64 = __OFSUB__(v62, v63);
    v56 = v62 - v63;
    v57 = v64;
    if (v64)
    {
      goto LABEL_130;
    }

    v65 = &v10[16 * v50];
    v67 = *v65;
    v66 = *(v65 + 1);
    v64 = __OFSUB__(v66, v67);
    v68 = v66 - v67;
    if (v64)
    {
      goto LABEL_132;
    }

    v64 = __OFADD__(v56, v68);
    v69 = v56 + v68;
    if (v64)
    {
      goto LABEL_135;
    }

    if (v69 >= v61)
    {
      v87 = &v10[16 * v53 + 32];
      v89 = *v87;
      v88 = *(v87 + 1);
      v64 = __OFSUB__(v88, v89);
      v90 = v88 - v89;
      if (v64)
      {
        goto LABEL_139;
      }

      if (v56 < v90)
      {
        v53 = v50 - 2;
      }

      goto LABEL_78;
    }

    goto LABEL_57;
  }

LABEL_124:
  if (!*a1)
  {
    goto LABEL_149;
  }

  specialized UnsafeMutableBufferPointer._finalizeRuns(_:buffer:by:)(&v143, *a1, a3, a5, a6 & 1, a7, a8);
}

uint64_t specialized UnsafeMutableBufferPointer._finalizeRuns(_:buffer:by:)(void ***a1, void **a2, uint64_t *a3, unsigned __int8 a4, char a5, unsigned __int8 a6, void *a7)
{
  v7 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    goto LABEL_56;
  }

  while (1)
  {
    *a1 = v7;
    v10 = *(v7 + 2);
    if (v10 < 2)
    {
      return 1;
    }

    while (1)
    {
      v11 = *a3;
      if (!*a3)
      {
        __break(1u);
        return result;
      }

      v48 = v10;
      v49 = v7;
      v12 = *&v7[16 * v10];
      v47 = v10 - 1;
      v14 = &v7[16 * v10 + 16];
      v13 = *v14;
      v50 = *(v14 + 1);
      v51 = v12;
      v15 = 8 * v12;
      v16 = (v11 + 8 * v12);
      v17 = 8 * *v14;
      v7 = (v11 + v17);
      v18 = (v11 + 8 * v50);
      v19 = v17 - 8 * v12;
      v20 = 8 * v50 - v17;
      if (v19 >= v20)
      {
        v26 = a2;
        if (v7 != a2 || v18 <= a2)
        {
          memmove(a2, (v11 + 8 * v13), 8 * v50 - 8 * v13);
          v26 = a2;
        }

        v23 = v26 + v20;
        if (v20 < 1 || v17 <= v15)
        {
          v25 = v51;
        }

        else
        {
LABEL_34:
          v44 = v7;
          v35 = (v7 - 8);
          v18 -= 8;
          v36 = v23;
          do
          {
            v37 = v18 + 8;
            v38 = *--v36;
            v7 = v35;
            v39 = *v35;
            v60 = a4;
            v59 = a6;
            v40 = v38;
            v41 = v39;
            v42 = specialized static AccessibilityCore.sorted(lhs:rhs:with:explicitPriorityOnly:parentVisibility:cache:)(v40, v41, &v60, a5 & 1, &v59, a7);

            if (v42)
            {
              if (v37 != v44)
              {
                *v18 = *v7;
              }

              v26 = a2;
              if (v23 <= a2 || v16 >= v7)
              {
                v25 = v51;
                goto LABEL_45;
              }

              goto LABEL_34;
            }

            if (v37 != v23)
            {
              *v18 = *v36;
            }

            v18 -= 8;
            v23 = v36;
            v26 = a2;
            v35 = v7;
          }

          while (v36 > a2);
          v23 = v36;
          v25 = v51;
          v7 = v44;
        }
      }

      else
      {
        v21 = a2;
        if (v16 != a2 || v7 <= a2)
        {
          memmove(a2, (v11 + 8 * v12), 8 * v13 - 8 * v12);
          v21 = a2;
        }

        v23 = v21 + v19;
        v24 = v19 < 1 || 8 * v50 <= v17;
        v25 = v51;
        v26 = v21;
        if (!v24)
        {
          while (1)
          {
            v27 = *v7;
            v28 = *v26;
            v58 = a4;
            v57 = a6;
            v29 = v27;
            v30 = v28;
            LOBYTE(v28) = specialized static AccessibilityCore.sorted(lhs:rhs:with:explicitPriorityOnly:parentVisibility:cache:)(v29, v30, &v58, a5 & 1, &v57, a7);

            if ((v28 & 1) == 0)
            {
              break;
            }

            v31 = v7;
            v32 = v16 == v7;
            v7 += 8;
            if (!v32)
            {
              goto LABEL_19;
            }

LABEL_20:
            ++v16;
            if (v26 >= v23 || v7 >= v18)
            {
              goto LABEL_22;
            }
          }

          v31 = v26;
          v32 = v16 == v26++;
          if (v32)
          {
            goto LABEL_20;
          }

LABEL_19:
          *v16 = *v31;
          goto LABEL_20;
        }

LABEL_22:
        v7 = v16;
      }

LABEL_45:
      if (v7 != v26 || v7 >= v26 + ((v23 - v26 + ((v23 - v26) < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8))
      {
        memmove(v7, v26, 8 * ((v23 - v26) / 8));
      }

      if (v50 < v25)
      {
        break;
      }

      v7 = v49;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = specialized _ArrayBuffer._consumeAndCreateNew()(v49, v9);
      }

      if ((v48 - 2) >= *(v7 + 2))
      {
        goto LABEL_55;
      }

      v43 = &v7[16 * v48];
      *v43 = v25;
      *(v43 + 1) = v50;
      *a1 = v7;
      result = specialized Array.remove(at:)(v47);
      v7 = *a1;
      v10 = (*a1)[2];
      if (v10 <= 1)
      {
        return 1;
      }
    }

    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v7, v9);
    v7 = result;
  }
}

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4, double a5)
{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    type metadata accessor for _ContiguousArrayStorage<Range<Int>>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Range<Int>>, type metadata accessor for Range<Int>, MEMORY[0x1E69E6F90]);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size_1(v11);
    v13 = v12 - 32;
    if (v12 < 32)
    {
      v13 = v12 - 17;
    }

    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * (v13 >> 4);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v14 = v11 + 32;
  v15 = a4 + 32;
  if (v6)
  {
    if (v11 != a4 || v14 >= &v15[16 * v9])
    {
      memmove(v14, v15, 16 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, 16 * v9);
  }

  return v11;
}

void *specialized _ContiguousArrayBuffer._consumeAndCreateNew()(void *a1)
{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

unint64_t specialized Array._copyToContiguousArray()(unint64_t a1)
{
  return specialized Array._copyToContiguousArray()(a1, _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSo6UIViewC_Tt1g5, specialized Array._copyContents(initializing:));
}

{
  return specialized Array._copyToContiguousArray()(a1, _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSo6UIViewC_Tt1g5, specialized Array._copyContents(initializing:));
}

void type metadata accessor for _ContiguousArrayStorage<Range<Int>>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t lazy protocol witness table accessor for type AttributedString.Runs.AttributesSlice1<AttributeScopes.SwiftUIAttributes.AnyTokenAttribute>.Iterator and conformance AttributedString.Runs.AttributesSlice1<A>.Iterator(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t), const char *a4, double a5)
{
  result = *a1;
  if (!result)
  {
    _s7SwiftUI26AccessibilityActionStorageVyAA0c4VoidD0VGMaTm_1(255, a2, lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.AnyTokenAttribute and conformance AttributeScopes.SwiftUIAttributes.AnyTokenAttribute, &type metadata for AttributeScopes.SwiftUIAttributes.AnyTokenAttribute, a3);
    result = swift_getWitnessTable(a4, v8);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined init with take of (AnyToken?, Range<AttributedString.Index>)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for (AnyToken?, Range<AttributedString.Index>)(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double outlined copy of ResponderBasedHitTestTracing(id a1, char a2)
{
  switch(a2)
  {
    case 2:
      swift_unknownObjectRetain();
      break;
    case 1:

      break;
    case 0:
      v2 = a1;
      break;
  }

  return result;
}

double outlined consume of ResponderBasedHitTestTracing(id a1, char a2)
{
  switch(a2)
  {
    case 2:
      swift_unknownObjectRelease();
      break;
    case 1:

      break;
    case 0:

      break;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AccessibilityChildBehavior.Automation and conformance AccessibilityChildBehavior.Automation()
{
  result = lazy protocol witness table cache variable for type AccessibilityChildBehavior.Automation and conformance AccessibilityChildBehavior.Automation;
  if (!lazy protocol witness table cache variable for type AccessibilityChildBehavior.Automation and conformance AccessibilityChildBehavior.Automation)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AccessibilityChildBehavior.Automation, &type metadata for AccessibilityChildBehavior.Automation, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityChildBehavior.Automation and conformance AccessibilityChildBehavior.Automation);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityChildBehavior.Automation and conformance AccessibilityChildBehavior.Automation;
  if (!lazy protocol witness table cache variable for type AccessibilityChildBehavior.Automation and conformance AccessibilityChildBehavior.Automation)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AccessibilityChildBehavior.Automation, &type metadata for AccessibilityChildBehavior.Automation, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityChildBehavior.Automation and conformance AccessibilityChildBehavior.Automation);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityChildBehavior.Automation and conformance AccessibilityChildBehavior.Automation;
  if (!lazy protocol witness table cache variable for type AccessibilityChildBehavior.Automation and conformance AccessibilityChildBehavior.Automation)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AccessibilityChildBehavior.Automation, &type metadata for AccessibilityChildBehavior.Automation, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityChildBehavior.Automation and conformance AccessibilityChildBehavior.Automation);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AccessibilityChildBehavior.Combine.Options and conformance AccessibilityChildBehavior.Combine.Options()
{
  result = lazy protocol witness table cache variable for type AccessibilityChildBehavior.Combine.Options and conformance AccessibilityChildBehavior.Combine.Options;
  if (!lazy protocol witness table cache variable for type AccessibilityChildBehavior.Combine.Options and conformance AccessibilityChildBehavior.Combine.Options)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AccessibilityChildBehavior.Combine.Options, &type metadata for AccessibilityChildBehavior.Combine.Options, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityChildBehavior.Combine.Options and conformance AccessibilityChildBehavior.Combine.Options);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityChildBehavior.Combine.Options and conformance AccessibilityChildBehavior.Combine.Options;
  if (!lazy protocol witness table cache variable for type AccessibilityChildBehavior.Combine.Options and conformance AccessibilityChildBehavior.Combine.Options)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AccessibilityChildBehavior.Combine.Options, &type metadata for AccessibilityChildBehavior.Combine.Options, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityChildBehavior.Combine.Options and conformance AccessibilityChildBehavior.Combine.Options);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityChildBehavior.Combine.Options and conformance AccessibilityChildBehavior.Combine.Options;
  if (!lazy protocol witness table cache variable for type AccessibilityChildBehavior.Combine.Options and conformance AccessibilityChildBehavior.Combine.Options)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AccessibilityChildBehavior.Combine.Options, &type metadata for AccessibilityChildBehavior.Combine.Options, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityChildBehavior.Combine.Options and conformance AccessibilityChildBehavior.Combine.Options);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityChildBehavior.Combine.Options and conformance AccessibilityChildBehavior.Combine.Options;
  if (!lazy protocol witness table cache variable for type AccessibilityChildBehavior.Combine.Options and conformance AccessibilityChildBehavior.Combine.Options)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AccessibilityChildBehavior.Combine.Options, &type metadata for AccessibilityChildBehavior.Combine.Options, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityChildBehavior.Combine.Options and conformance AccessibilityChildBehavior.Combine.Options);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for AccessibilityChildBehavior.Automation(uint64_t a1)
{
  result = lazy protocol witness table accessor for type AccessibilityChildBehavior.Automation and conformance AccessibilityChildBehavior.Automation();
  *(a1 + 8) = result;
  return result;
}

BOOL specialized AccessibilityChildBehavior.Contain.willCreateNode(for:)(unint64_t a1)
{
  if (a1 >> 62)
  {
    v11 = a1;
    v12 = __CocoaSet.count.getter();
    a1 = v11;
    if (v12 != 1)
    {
      return 1;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10) != 1)
  {
    return 1;
  }

  v1 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = a1;
    v3 = MEMORY[0x18D00E9C0](0);
  }

  else
  {
    if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_20;
    }

    v2 = a1;
    v3 = *(a1 + 32);
  }

  v4 = v3;
  AccessibilityNode.visibility.getter(v13);

  if ((v13[0] & 2) != 0)
  {
    return 0;
  }

  if ((v13[0] & 0x41) == 1)
  {
    if (v1)
    {
      v5 = MEMORY[0x18D00E9C0](0, v2);
    }

    else
    {
      v5 = *(v2 + 32);
    }

    v7 = v5;
    v8 = OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_children;
    swift_beginAccess();
    v9 = *&v7[v8];

    if (!(v9 >> 62))
    {
      v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_14:

      return v10 == 0;
    }

LABEL_20:
    v10 = __CocoaSet.count.getter();
    goto LABEL_14;
  }

  return 1;
}

void _s7SwiftUI26AccessibilityActionStorageVyAA0c4VoidD0VGMaTm_1(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type AccessibilityChildBehavior.Automatic and conformance AccessibilityChildBehavior.Automatic()
{
  result = lazy protocol witness table cache variable for type AccessibilityChildBehavior.Automatic and conformance AccessibilityChildBehavior.Automatic;
  if (!lazy protocol witness table cache variable for type AccessibilityChildBehavior.Automatic and conformance AccessibilityChildBehavior.Automatic)
  {
    result = swift_getWitnessTable("Х\a", &type metadata for AccessibilityChildBehavior.Automatic, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityChildBehavior.Automatic and conformance AccessibilityChildBehavior.Automatic);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityChildBehavior.Automatic and conformance AccessibilityChildBehavior.Automatic;
  if (!lazy protocol witness table cache variable for type AccessibilityChildBehavior.Automatic and conformance AccessibilityChildBehavior.Automatic)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AccessibilityChildBehavior.Automatic, &type metadata for AccessibilityChildBehavior.Automatic, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityChildBehavior.Automatic and conformance AccessibilityChildBehavior.Automatic);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityChildBehavior.Automatic and conformance AccessibilityChildBehavior.Automatic;
  if (!lazy protocol witness table cache variable for type AccessibilityChildBehavior.Automatic and conformance AccessibilityChildBehavior.Automatic)
  {
    result = swift_getWitnessTable("Eq\tbȧ\a", &type metadata for AccessibilityChildBehavior.Automatic, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityChildBehavior.Automatic and conformance AccessibilityChildBehavior.Automatic);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for AccessibilityChildBehavior.Automatic(uint64_t a1)
{
  result = lazy protocol witness table accessor for type AccessibilityChildBehavior.Automatic and conformance AccessibilityChildBehavior.Automatic();
  *(a1 + 8) = result;
  return result;
}

double NSObject.platformAccessibilityFrame.getter()
{
  [v0 accessibilityFrame];
  x = v12.origin.x;
  if (CGRectIsEmpty(v12))
  {
    v2 = MEMORY[0x18D00C850](0x4774694B49555841, 0xEB0000000065756CLL);
    v3 = NSClassFromString(v2);

    if (!v3)
    {
      objc_opt_self();
      v5 = swift_dynamicCastObjCClass();
      if (v5)
      {
        v6 = v5;
        v7 = v0;
        [v6 frame];
        x = v8;
        v9 = [v6 window];
        if (v9)
        {
          v10 = v9;
          [v6 bounds];
          [v10 convertRect:v6 fromCoordinateSpace:?];
          x = v11;
        }

        else
        {
        }
      }
    }
  }

  return x;
}

unint64_t specialized Sequence.flatMap<A>(_:)(unint64_t a1, int a2)
{
  v2 = a1;
  if (a1 >> 62)
  {
    goto LABEL_49;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v4 = 0;
    v35 = v2 & 0xFFFFFFFFFFFFFF8;
    v36 = v2 & 0xC000000000000001;
    v34 = v2 + 32;
    v5 = MEMORY[0x1E69E7CC0];
    v31 = i;
    v32 = v2;
    while (1)
    {
      if (v36)
      {
        v6 = MEMORY[0x18D00E9C0](v4, v2);
      }

      else
      {
        if (v4 >= *(v35 + 16))
        {
          goto LABEL_44;
        }

        v6 = *(v34 + 8 * v4);
      }

      v7 = v6;
      v8 = __OFADD__(v4++, 1);
      if (v8)
      {
        break;
      }

      AccessibilityNode.visibility.getter(v38);
      if ((v38[0] & 0x10) != 0)
      {
        v9 = specialized static AccessibilityCore.queryChildren(element:options:)(v7, a2);
      }

      else
      {
        type metadata accessor for ViewTransform?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Swift.AnyObject>, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
        v9 = swift_allocObject();
        *(v9 + 16) = xmmword_18CD69590;
        *(v9 + 32) = v7;
      }

      v10 = v9 >> 62;
      if (v9 >> 62)
      {
        v11 = __CocoaSet.count.getter();
      }

      else
      {
        v11 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v12 = v5 >> 62;
      if (v5 >> 62)
      {
        v28 = __CocoaSet.count.getter();
        v14 = v28 + v11;
        if (__OFADD__(v28, v11))
        {
LABEL_42:
          __break(1u);
          break;
        }
      }

      else
      {
        v13 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v14 = v13 + v11;
        if (__OFADD__(v13, v11))
        {
          goto LABEL_42;
        }
      }

      if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
      {
        if (!v12)
        {
          goto LABEL_24;
        }

LABEL_23:
        __CocoaSet.count.getter();
        goto LABEL_24;
      }

      if (v12)
      {
        goto LABEL_23;
      }

      v15 = v5 & 0xFFFFFFFFFFFFFF8;
      if (v14 <= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v39 = v5;
        goto LABEL_25;
      }

LABEL_24:
      v39 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v15 = v39 & 0xFFFFFFFFFFFFFF8;
LABEL_25:
      v16 = *(v15 + 16);
      v17 = *(v15 + 24);
      if (v10)
      {
        v19 = v15;
        v20 = __CocoaSet.count.getter();
        v15 = v19;
        v18 = v20;
        if (v20)
        {
LABEL_29:
          if (((v17 >> 1) - v16) < v11)
          {
            goto LABEL_46;
          }

          v37 = v4;
          v21 = v15 + 8 * v16 + 32;
          v33 = v15;
          if (v10)
          {
            if (v18 < 1)
            {
              goto LABEL_48;
            }

            type metadata accessor for [AccessibilityNode](0);
            lazy protocol witness table accessor for type [AccessibilityNode] and conformance [A]();
            for (j = 0; j != v18; ++j)
            {
              v23 = specialized protocol witness for Collection.subscript.read in conformance [A](v38, j, v9);
              v25 = *v24;
              (v23)(v38, 0);
              *(v21 + 8 * j) = v25;
            }
          }

          else
          {
            type metadata accessor for AccessibilityNode();
            swift_arrayInitWithCopy();
          }

          v4 = v37;
          i = v31;
          v2 = v32;
          v5 = v39;
          if (v11 >= 1)
          {
            v26 = *(v33 + 16);
            v8 = __OFADD__(v26, v11);
            v27 = v26 + v11;
            if (v8)
            {
              goto LABEL_47;
            }

            *(v33 + 16) = v27;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v18 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v18)
        {
          goto LABEL_29;
        }
      }

      v5 = v39;
      if (v11 > 0)
      {
        goto LABEL_45;
      }

LABEL_5:
      if (v4 == i)
      {
        return v5;
      }
    }

    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    ;
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t specialized Array.reserveCapacity(_:)(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
LABEL_8:
    __CocoaSet.count.getter();
LABEL_9:
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v3 = result;
    goto LABEL_10;
  }

  if (a1 > *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_9;
  }

LABEL_10:
  *v1 = v3;
  return result;
}

double specialized MutableCollection<>.sort(by:)(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v6);
  specialized ContiguousArray._endMutation()();
  return result;
}

uint64_t PlatformItemList.Item.Accessibility.resolvedPlainTextLabel.getter()
{
  if (!v0[3])
  {
    return 0;
  }

  v1 = v0[37];
  v8 = v0[36];
  v9 = v1;
  v6 = 0;
  v7 = 0;

  MEMORY[0x18D005BE0](&v5, v2);
  v3 = static AccessibilityCore.textsResolvedToPlainText(_:in:options:idiom:separator:)();

  return v3;
}

void Array<A>.representedElements(options:)(char a1, unint64_t a2)
{
  if (!AXIsVoiceControlMakingRequest() || (a1 & 1) != 0)
  {
    if (a2 >> 62)
    {
      v7 = __CocoaSet.count.getter();
    }

    else
    {
      v7 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v7)
    {
      v35[0] = MEMORY[0x1E69E7CC0];
      specialized ContiguousArray.reserveCapacity(_:)();
      if (v7 < 0)
      {
        __break(1u);
LABEL_56:
        __break(1u);
        return;
      }

      if ((a2 & 0xC000000000000001) != 0)
      {
        v8 = 0;
        do
        {
          v9 = v8 + 1;
          MEMORY[0x18D00E9C0]();
          AccessibilityNode.representedElement.getter();
          swift_unknownObjectRelease();
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          v8 = v9;
        }

        while (v7 != v9);
      }

      else
      {
        v10 = (a2 + 32);
        do
        {
          v11 = *v10++;
          v12 = v11;
          AccessibilityNode.representedElement.getter();

          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          --v7;
        }

        while (v7);
      }
    }
  }

  else
  {
    v36 = MEMORY[0x1E69E7CC0];
    if (a2 >> 62)
    {
      v30 = __CocoaSet.count.getter();
      specialized Array.reserveCapacity(_:)(v30);
      v4 = __CocoaSet.count.getter();
      if (v4)
      {
LABEL_5:
        if (v4 >= 1)
        {
          v5 = 0;
          v6 = a2 + 32;
          while (1)
          {
            if ((a2 & 0xC000000000000001) != 0)
            {
              v14 = MEMORY[0x18D00E9C0](v5, a2);
            }

            else
            {
              v14 = *(v6 + 8 * v5);
            }

            v15 = v14;
            v16 = OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_children;
            swift_beginAccess();
            v17 = *&v15[v16];
            if (v17 >> 62)
            {
              v13 = __CocoaSet.count.getter();
              if (v13)
              {
                goto LABEL_19;
              }
            }

            else
            {
              v13 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v13)
              {
                goto LABEL_19;
              }
            }

            LOBYTE(v32) = 4;
            AccessibilityNode.impliedVisibility(consideringParent:with:)(v13, &v32, &v33);
            if (v33)
            {
LABEL_19:
              AccessibilityNode.representedElement.getter();
              MEMORY[0x18D00CC30]();
              if (*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
              }

              goto LABEL_21;
            }

            AccessibilityNode.linkRotor.getter();
            if (!v18)
            {
              goto LABEL_32;
            }

            v19 = v18;
            v20 = &v15[OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_environment];
            v21 = *&v15[OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_environment + 8];
            v33 = *&v15[OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_environment];
            v34 = v21;

            EnvironmentValues.redactionReasons.getter();

            if ((v32 & 2) != 0)
            {
              v22 = *(v20 + 1);
              v33 = *v20;
              v34 = v22;

              v23 = EnvironmentValues.sensitiveContent.getter();

              if (v23)
              {
                break;
              }
            }

            UIKitAccessibilityLinkRotorBridge.update()();
            v25 = OBJC_IVAR____TtC7SwiftUI33UIKitAccessibilityLinkRotorBridge_elements;
            swift_beginAccess();
            v24 = *&v19[v25];
            if (v24 >> 62)
            {
              type metadata accessor for NSObject & PlatformAccessibilityElementProtocol();

              v29 = _bridgeCocoaArray<A>(_:)();

              v24 = v29;
            }

            else
            {
              v26 = v24 & 0xFFFFFFFFFFFFFF8;
              swift_bridgeObjectRetain_n();
              dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
              type metadata accessor for NSObject & PlatformAccessibilityElementProtocol();
              if (swift_dynamicCastMetatype() || (v27 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10)) == 0)
              {
              }

              else
              {
                v31 = v6;
                v28 = v26 + 32;
                while (swift_dynamicCastObjCProtocolConditional())
                {
                  v28 += 8;
                  if (!--v27)
                  {

                    goto LABEL_44;
                  }
                }

                v24 = v26 | 1;
LABEL_44:
                v6 = v31;
              }
            }

            if (!(v24 >> 62))
            {
LABEL_33:
              if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_34;
              }

              goto LABEL_47;
            }

LABEL_46:
            if (__CocoaSet.count.getter())
            {
LABEL_34:
              specialized Array.append<A>(contentsOf:)(v24);
              goto LABEL_48;
            }

LABEL_47:

LABEL_48:
            AccessibilityNode.representedElement.getter();
            MEMORY[0x18D00CC30]();
            if (*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

LABEL_21:
            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            ++v5;

            if (v5 == v4)
            {
              return;
            }
          }

LABEL_32:
          v24 = MEMORY[0x1E69E7CC0];
          if (!(MEMORY[0x1E69E7CC0] >> 62))
          {
            goto LABEL_33;
          }

          goto LABEL_46;
        }

        goto LABEL_56;
      }
    }

    else
    {
      specialized Array.reserveCapacity(_:)(*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10));
      v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v4)
      {
        goto LABEL_5;
      }
    }
  }
}

Swift::Void __swiftcall AccessibilityCoreNotification.post()()
{
  v2 = v1;
  v3 = v0;
  (*(v1 + 16))(v14);
  v4 = (*(v2 + 8))(v3, v2);
  _sypSgWOcTm_3(v14, v12, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8);
  v5 = v13;
  if (v13)
  {
    v6 = __swift_project_boxed_opaque_existential_1(v12, v13);
    v7 = *(v5 - 8);
    v8 = MEMORY[0x1EEE9AC00](v6);
    v10 = v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v7 + 16))(v10, v8);
    v11 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v7 + 8))(v10, v5);
    __swift_destroy_boxed_opaque_existential_1(v12);
  }

  else
  {
    v11 = 0;
  }

  UIAccessibilityPostNotification(v4, v11);
  swift_unknownObjectRelease();
  outlined destroy of AccessibilityCore.Notification.Info(v14);
}

id PlatformAccessibilityElementProtocol<>.elementResolvingNode.getter()
{
  v1 = v0;
  type metadata accessor for AccessibilityNode();
  v2 = swift_dynamicCastClass();
  result = v1;
  v4 = result;
  if (v2)
  {
    AccessibilityNode.representedElement.getter();
    v6 = v5;

    return v6;
  }

  return result;
}

uint64_t ViewRendererHost.containsAccessibilityElement(_:)(void *a1)
{
  type metadata accessor for AccessibilityNode();
  v3 = swift_dynamicCastClass();
  if (v3)
  {
    v4 = v3;
    v5 = a1;
  }

  else
  {
    v4 = [a1 accessibilityNodeForPlatformElement];
    if (!v4)
    {
LABEL_6:
      ObjectType = swift_getObjectType();
      MEMORY[0x1EEE9AC00](ObjectType);
      PlatformAccessibilityElementProtocol<>.traverseAncestors(_:)(partial apply for closure #1 in ViewRendererHost.containsAccessibilityElement(_:));
      return 0;
    }
  }

  Strong = swift_unknownObjectWeakLoadStrong();

  if (!Strong)
  {
    goto LABEL_6;
  }

  swift_unknownObjectRelease();
  if (Strong != v1)
  {
    goto LABEL_6;
  }

  return 1;
}

void Array<A>.merge(with:options:)(unint64_t a1, char a2, unint64_t a3)
{
  if ((a2 & 2) == 0)
  {
    v22 = a1;

    specialized Array.append<A>(contentsOf:)(v5);
    return;
  }

  if (!(a3 >> 62))
  {
    if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

LABEL_32:

    v22 = specialized Array._copyToContiguousArray()(v19);
    specialized MutableCollection<>.sort(by:)(&v22);
    return;
  }

LABEL_31:
  v17 = a1;
  v18 = __CocoaSet.count.getter();
  a1 = v17;
  if (!v18)
  {
    goto LABEL_32;
  }

LABEL_5:
  if (!(a1 >> 62))
  {
    if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_7;
    }

LABEL_34:

    return;
  }

  v20 = a1;
  v21 = __CocoaSet.count.getter();
  a1 = v20;
  if (!v21)
  {
    goto LABEL_34;
  }

LABEL_7:
  if ((a3 & 0xC000000000000001) != 0)
  {
    v6 = a1;
    v7 = MEMORY[0x18D00E9C0](0, a3);
LABEL_10:
    v8 = v7;
    v22 = v6;

    v9 = v8;
    MEMORY[0x18D00CC30]();
    if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized MutableCollection<>.sort(by:)(&v22);
    v10 = v22;
    if (v22 >> 62)
    {
      a1 = __CocoaSet.count.getter();
      v11 = a1;
      if (a1)
      {
LABEL_14:
        v3 = 0;
        while (1)
        {
          if ((v10 & 0xC000000000000001) != 0)
          {
            v12 = MEMORY[0x18D00E9C0](v3, v10);
          }

          else
          {
            if (v3 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_30;
            }

            v12 = *(v10 + 8 * v3 + 32);
          }

          v13 = v12;

          v14 = v3 + 1;
          v15 = __OFADD__(v3, 1);
          if (v13 == v9)
          {
            break;
          }

          if (v15)
          {
            __break(1u);
LABEL_30:
            __break(1u);
            goto LABEL_31;
          }

          ++v3;
          if (v14 == v11)
          {
            goto LABEL_25;
          }
        }

        if (v15)
        {
          goto LABEL_39;
        }

        if (v14 >= v3)
        {

          specialized Array.replaceSubrange<A>(_:with:)(v3, v3 + 1, a3);

          return;
        }

        goto LABEL_40;
      }
    }

    else
    {
      v11 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v11)
      {
        goto LABEL_14;
      }
    }

LABEL_25:

    specialized Array.append<A>(contentsOf:)(v16);

    return;
  }

  if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v6 = a1;
    v7 = *(a3 + 32);
    goto LABEL_10;
  }

  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);

  __break(1u);
}

id @objc NSObject.accessibilityNodeForPlatformElement.getter(void *a1)
{
  v1 = a1;
  v2 = NSObject.accessibilityNodeForPlatformElement.getter();

  return v2;
}

uint64_t NSObject.accessibilityNodeForPlatformElement.getter()
{
  swift_beginAccess();
  v1 = objc_getAssociatedObject(v0, &accessibilityNodeForPlatformElementKey);
  swift_endAccess();
  if (v1 && (_bridgeAnyObjectToAny(_:)(), swift_unknownObjectRelease(), outlined init with take of Any(v4, v5), outlined init with take of Any(v5, v4), type metadata accessor for AccessibilityNode(), (swift_dynamicCast() & 1) != 0))
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

void @objc NSObject.accessibilityNodeForPlatformElement.setter(void *a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  v5 = a3;
  v6 = a1;
  objc_setAssociatedObject(v6, &accessibilityNodeForPlatformElementKey, v5, 0);
  swift_endAccess();
}

double destroy for PlatformItemList.Item.Accessibility(void *a1)
{

  v2 = a1[11];
  if (v2)
  {
    if (v2 == 1)
    {
      goto LABEL_5;
    }

    __swift_destroy_boxed_opaque_existential_1(a1 + 8);
  }

LABEL_5:
  if (a1[30] != 1)
  {
  }

  return result;
}

uint64_t initializeWithCopy for PlatformItemList.Item.Accessibility(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  v5 = *(a2 + 88);

  if (v5)
  {
    if (v5 == 1)
    {
      v6 = *(a2 + 80);
      *(a1 + 64) = *(a2 + 64);
      *(a1 + 80) = v6;
      *(a1 + 96) = *(a2 + 96);
      goto LABEL_7;
    }

    v8 = *(a2 + 96);
    *(a1 + 88) = v5;
    *(a1 + 96) = v8;
    (**(v5 - 8))(a1 + 64, a2 + 64, v5);
  }

  else
  {
    v7 = *(a2 + 80);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 80) = v7;
    *(a1 + 96) = *(a2 + 96);
  }

  *(a1 + 104) = *(a2 + 104);

LABEL_7:
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 120) = *(a2 + 120);
  v9 = *(a2 + 240);
  if (v9 == 1)
  {
    v10 = *(a2 + 240);
    *(a1 + 224) = *(a2 + 224);
    *(a1 + 240) = v10;
    *(a1 + 256) = *(a2 + 256);
    *(a1 + 272) = *(a2 + 272);
    v11 = *(a2 + 176);
    *(a1 + 160) = *(a2 + 160);
    *(a1 + 176) = v11;
    v12 = *(a2 + 208);
    *(a1 + 192) = *(a2 + 192);
    *(a1 + 208) = v12;
    v13 = *(a2 + 144);
    *(a1 + 128) = *(a2 + 128);
    *(a1 + 144) = v13;
  }

  else
  {
    *(a1 + 128) = *(a2 + 128);
    *(a1 + 136) = *(a2 + 136);
    *(a1 + 144) = *(a2 + 144);
    *(a1 + 152) = *(a2 + 152);
    *(a1 + 153) = *(a2 + 153);
    *(a1 + 155) = *(a2 + 155);
    *(a1 + 156) = *(a2 + 156);
    v14 = *(a2 + 176);
    *(a1 + 160) = *(a2 + 160);
    *(a1 + 176) = v14;
    *(a1 + 192) = *(a2 + 192);
    *(a1 + 208) = *(a2 + 208);
    *(a1 + 216) = *(a2 + 216);
    *(a1 + 232) = *(a2 + 232);
    *(a1 + 240) = v9;
    *(a1 + 248) = *(a2 + 248);
    *(a1 + 264) = *(a2 + 264);
    *(a1 + 272) = *(a2 + 272);
  }

  v15 = *(a2 + 288);
  *(a1 + 280) = *(a2 + 280);
  *(a1 + 288) = v15;
  *(a1 + 296) = *(a2 + 296);

  return a1;
}

uint64_t assignWithCopy for PlatformItemList.Item.Accessibility(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  v4 = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = v4;
  v5 = *(a1 + 88);
  v6 = *(a2 + 88);
  if (v5 == 1)
  {
    if (v6)
    {
      if (v6 == 1)
      {
        v7 = *(a2 + 64);
        v8 = *(a2 + 96);
        *(a1 + 80) = *(a2 + 80);
        *(a1 + 96) = v8;
        *(a1 + 64) = v7;
        goto LABEL_18;
      }

      *(a1 + 88) = v6;
      *(a1 + 96) = *(a2 + 96);
      (**(v6 - 8))(a1 + 64, a2 + 64);
    }

    else
    {
      v12 = *(a2 + 64);
      v13 = *(a2 + 80);
      *(a1 + 96) = *(a2 + 96);
      *(a1 + 64) = v12;
      *(a1 + 80) = v13;
    }

    *(a1 + 104) = *(a2 + 104);
  }

  else if (v6 == 1)
  {
    outlined destroy of AccessibilityValueStorage(a1 + 64);
    v10 = *(a2 + 80);
    v9 = *(a2 + 96);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 80) = v10;
    *(a1 + 96) = v9;
  }

  else
  {
    if (v5)
    {
      v11 = (a1 + 64);
      if (v6)
      {
        __swift_assign_boxed_opaque_existential_1(v11, (a2 + 64));
      }

      else
      {
        outlined destroy of AnyAccessibilityValue(v11);
        v14 = *(a2 + 96);
        v15 = *(a2 + 80);
        *(a1 + 64) = *(a2 + 64);
        *(a1 + 80) = v15;
        *(a1 + 96) = v14;
      }
    }

    else if (v6)
    {
      *(a1 + 88) = v6;
      *(a1 + 96) = *(a2 + 96);
      (**(v6 - 8))(a1 + 64, a2 + 64);
    }

    else
    {
      v16 = *(a2 + 64);
      v17 = *(a2 + 80);
      *(a1 + 96) = *(a2 + 96);
      *(a1 + 64) = v16;
      *(a1 + 80) = v17;
    }

    *(a1 + 104) = *(a2 + 104);
  }

LABEL_18:
  v18 = *(a2 + 112);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 112) = v18;
  v19 = *(a2 + 240);
  if (*(a1 + 240) == 1)
  {
    if (v19 == 1)
    {
      v20 = *(a2 + 144);
      *(a1 + 128) = *(a2 + 128);
      *(a1 + 144) = v20;
      v21 = *(a2 + 160);
      v22 = *(a2 + 176);
      v23 = *(a2 + 208);
      *(a1 + 192) = *(a2 + 192);
      *(a1 + 208) = v23;
      *(a1 + 160) = v21;
      *(a1 + 176) = v22;
      v24 = *(a2 + 224);
      v25 = *(a2 + 240);
      v26 = *(a2 + 256);
      *(a1 + 272) = *(a2 + 272);
      *(a1 + 240) = v25;
      *(a1 + 256) = v26;
      *(a1 + 224) = v24;
    }

    else
    {
      v34 = *(a2 + 128);
      *(a1 + 136) = *(a2 + 136);
      *(a1 + 128) = v34;
      v35 = *(a2 + 144);
      *(a1 + 152) = *(a2 + 152);
      *(a1 + 144) = v35;
      *(a1 + 153) = *(a2 + 153);
      *(a1 + 154) = *(a2 + 154);
      *(a1 + 155) = *(a2 + 155);
      *(a1 + 156) = *(a2 + 156);
      *(a1 + 160) = *(a2 + 160);
      *(a1 + 168) = *(a2 + 168);
      *(a1 + 176) = *(a2 + 176);
      *(a1 + 184) = *(a2 + 184);
      *(a1 + 192) = *(a2 + 192);
      *(a1 + 200) = *(a2 + 200);
      *(a1 + 208) = *(a2 + 208);
      *(a1 + 209) = *(a2 + 209);
      *(a1 + 216) = *(a2 + 216);
      *(a1 + 224) = *(a2 + 224);
      *(a1 + 232) = *(a2 + 232);
      *(a1 + 240) = *(a2 + 240);
      v36 = *(a2 + 248);
      *(a1 + 264) = *(a2 + 264);
      *(a1 + 248) = v36;
      *(a1 + 272) = *(a2 + 272);
    }
  }

  else if (v19 == 1)
  {
    outlined destroy of AccessibilityTextLayoutProperties(a1 + 128);
    v27 = *(a2 + 144);
    *(a1 + 128) = *(a2 + 128);
    *(a1 + 144) = v27;
    v28 = *(a2 + 208);
    v30 = *(a2 + 160);
    v29 = *(a2 + 176);
    *(a1 + 192) = *(a2 + 192);
    *(a1 + 208) = v28;
    *(a1 + 160) = v30;
    *(a1 + 176) = v29;
    v32 = *(a2 + 240);
    v31 = *(a2 + 256);
    v33 = *(a2 + 224);
    *(a1 + 272) = *(a2 + 272);
    *(a1 + 240) = v32;
    *(a1 + 256) = v31;
    *(a1 + 224) = v33;
  }

  else
  {
    v37 = *(a2 + 128);
    *(a1 + 136) = *(a2 + 136);
    *(a1 + 128) = v37;
    v38 = *(a2 + 144);
    *(a1 + 152) = *(a2 + 152);
    *(a1 + 144) = v38;
    *(a1 + 153) = *(a2 + 153);
    *(a1 + 154) = *(a2 + 154);
    *(a1 + 155) = *(a2 + 155);
    *(a1 + 156) = *(a2 + 156);
    *(a1 + 160) = *(a2 + 160);
    *(a1 + 168) = *(a2 + 168);
    *(a1 + 176) = *(a2 + 176);
    *(a1 + 184) = *(a2 + 184);
    *(a1 + 192) = *(a2 + 192);
    *(a1 + 200) = *(a2 + 200);
    *(a1 + 208) = *(a2 + 208);
    *(a1 + 209) = *(a2 + 209);
    *(a1 + 216) = *(a2 + 216);
    *(a1 + 224) = *(a2 + 224);
    *(a1 + 232) = *(a2 + 232);
    *(a1 + 240) = *(a2 + 240);

    v39 = *(a2 + 248);
    *(a1 + 264) = *(a2 + 264);
    *(a1 + 248) = v39;
    *(a1 + 272) = *(a2 + 272);
  }

  *(a1 + 280) = *(a2 + 280);

  *(a1 + 288) = *(a2 + 288);

  *(a1 + 296) = *(a2 + 296);

  return a1;
}

uint64_t assignWithTake for PlatformItemList.Item.Accessibility(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  v5 = *(a1 + 88);
  if (v5 == 1)
  {
    goto LABEL_4;
  }

  v6 = *(a2 + 88);
  if (v6 == 1)
  {
    outlined destroy of AccessibilityValueStorage(a1 + 64);
LABEL_4:
    v7 = *(a2 + 80);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 80) = v7;
    *(a1 + 96) = *(a2 + 96);
    goto LABEL_10;
  }

  if (v5)
  {
    v8 = (a1 + 64);
    if (v6)
    {
      __swift_destroy_boxed_opaque_existential_1(v8);
    }

    else
    {
      outlined destroy of AnyAccessibilityValue(v8);
    }
  }

  v9 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v9;
  v10 = *(a2 + 104);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = v10;

LABEL_10:
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 120) = *(a2 + 120);
  if (*(a1 + 240) != 1)
  {
    v11 = *(a2 + 240);
    if (v11 != 1)
    {
      *(a1 + 128) = *(a2 + 128);
      *(a1 + 136) = *(a2 + 136);
      *(a1 + 144) = *(a2 + 144);
      *(a1 + 152) = *(a2 + 152);
      *(a1 + 153) = *(a2 + 153);
      *(a1 + 155) = *(a2 + 155);
      *(a1 + 156) = *(a2 + 156);
      v16 = *(a2 + 176);
      *(a1 + 160) = *(a2 + 160);
      *(a1 + 176) = v16;
      *(a1 + 192) = *(a2 + 192);
      *(a1 + 208) = *(a2 + 208);
      *(a1 + 209) = *(a2 + 209);
      *(a1 + 216) = *(a2 + 216);
      *(a1 + 232) = *(a2 + 232);
      *(a1 + 240) = v11;

      *(a1 + 248) = *(a2 + 248);
      *(a1 + 264) = *(a2 + 264);
      *(a1 + 272) = *(a2 + 272);
      goto LABEL_15;
    }

    outlined destroy of AccessibilityTextLayoutProperties(a1 + 128);
  }

  v12 = *(a2 + 240);
  *(a1 + 224) = *(a2 + 224);
  *(a1 + 240) = v12;
  *(a1 + 256) = *(a2 + 256);
  *(a1 + 272) = *(a2 + 272);
  v13 = *(a2 + 176);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 176) = v13;
  v14 = *(a2 + 208);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 208) = v14;
  v15 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v15;
LABEL_15:
  *(a1 + 280) = *(a2 + 280);

  *(a1 + 288) = *(a2 + 288);

  *(a1 + 296) = *(a2 + 296);

  return a1;
}

uint64_t storeEnumTagSinglePayload for PlatformItemList.Item.Accessibility(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 296) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 304) = 1;
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
      *(result + 280) = (a2 - 1);
      return result;
    }

    *(result + 304) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(void ***a1, uint64_t a2, uint64_t *a3, uint64_t a4, double a5)
{
  v6 = v5;
  v7 = a3[1];
  if (v7 >= 1)
  {
    v8 = 0;
    v9 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v10 = v8++;
      if (v8 < v7)
      {
        v97 = v6;
        v11 = *(*a3 + 8 * v8);
        v12 = 8 * v10;
        v13 = (*a3 + 8 * v10);
        v15 = *v13;
        v14 = v13 + 2;
        swift_getObjectType();
        v16 = v11;
        v17 = v15;
        v103 = PlatformAccessibilityElementProtocol<>.compareGeometry(to:)(v17);

        v99 = v10;
        v18 = v10 + 2;
        while (v7 != v18)
        {
          v19 = v7;
          v21 = *(v14 - 1);
          v20 = *v14;
          swift_getObjectType();
          v22 = v20;
          v23 = v21;
          v24 = PlatformAccessibilityElementProtocol<>.compareGeometry(to:)(v23);

          v7 = v19;
          ++v18;
          ++v14;
          if ((v103 == -1) == (v24 != -1))
          {
            v7 = v18 - 1;
            break;
          }
        }

        if (v103 == -1)
        {
          v10 = v99;
          if (v7 < v99)
          {
            __break(1u);
LABEL_122:
            __break(1u);
LABEL_123:
            __break(1u);
LABEL_124:
            __break(1u);
LABEL_125:
            __break(1u);
LABEL_126:
            __break(1u);
LABEL_127:
            __break(1u);
            return;
          }

          if (v99 < v7)
          {
            v25 = 8 * v7 - 8;
            v26 = v7;
            v27 = v99;
            do
            {
              if (v27 != --v26)
              {
                v29 = *a3;
                if (!*a3)
                {
                  goto LABEL_125;
                }

                v28 = *(v29 + v12);
                *(v29 + v12) = *(v29 + v25);
                *(v29 + v25) = v28;
              }

              ++v27;
              v25 -= 8;
              v12 += 8;
            }

            while (v27 < v26);
          }

          v8 = v7;
          v6 = v97;
        }

        else
        {
          v8 = v7;
          v6 = v97;
          v10 = v99;
        }
      }

      v30 = a3[1];
      if (v8 < v30)
      {
        if (__OFSUB__(v8, v10))
        {
          goto LABEL_117;
        }

        if (v8 - v10 < a4)
        {
          v31 = v10 + a4;
          if (__OFADD__(v10, a4))
          {
            goto LABEL_118;
          }

          if (v31 >= v30)
          {
            v31 = a3[1];
          }

          if (v31 < v10)
          {
LABEL_119:
            __break(1u);
            goto LABEL_120;
          }

          if (v8 != v31)
          {
            v98 = v6;
            v100 = v10;
            v32 = *a3;
            v33 = *a3 + 8 * v8 - 8;
            v34 = v10 - v8;
            v102 = v31;
            do
            {
              v104 = v8;
              v35 = *(v32 + 8 * v8);
              v36 = v34;
              v37 = v33;
              do
              {
                v38 = *v37;
                swift_getObjectType();
                v39 = v35;
                v40 = v38;
                v41 = PlatformAccessibilityElementProtocol<>.compareGeometry(to:)(v40);

                if (v41 != -1)
                {
                  break;
                }

                if (!v32)
                {
                  goto LABEL_122;
                }

                v42 = *v37;
                v35 = *(v37 + 8);
                *v37 = v35;
                *(v37 + 8) = v42;
                v37 -= 8;
              }

              while (!__CFADD__(v36++, 1));
              v8 = v104 + 1;
              v33 += 8;
              --v34;
            }

            while ((v104 + 1) != v102);
            v8 = v102;
            v6 = v98;
            v10 = v100;
          }
        }
      }

      if (v8 < v10)
      {
        goto LABEL_116;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v9 + 2) + 1, 1, v9);
      }

      v45 = *(v9 + 2);
      v44 = *(v9 + 3);
      v46 = v45 + 1;
      if (v45 >= v44 >> 1)
      {
        v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v44 > 1), v45 + 1, 1, v9);
      }

      *(v9 + 2) = v46;
      v47 = &v9[16 * v45];
      *(v47 + 4) = v10;
      *(v47 + 5) = v8;
      v48 = *a1;
      if (!*a1)
      {
        goto LABEL_126;
      }

      if (v45)
      {
        while (1)
        {
          v49 = v46 - 1;
          if (v46 >= 4)
          {
            break;
          }

          if (v46 == 3)
          {
            v50 = *(v9 + 4);
            v51 = *(v9 + 5);
            v60 = __OFSUB__(v51, v50);
            v52 = v51 - v50;
            v53 = v60;
LABEL_57:
            if (v53)
            {
              goto LABEL_105;
            }

            v66 = &v9[16 * v46];
            v68 = *v66;
            v67 = *(v66 + 1);
            v69 = __OFSUB__(v67, v68);
            v70 = v67 - v68;
            v71 = v69;
            if (v69)
            {
              goto LABEL_108;
            }

            v72 = &v9[16 * v49 + 32];
            v74 = *v72;
            v73 = *(v72 + 1);
            v60 = __OFSUB__(v73, v74);
            v75 = v73 - v74;
            if (v60)
            {
              goto LABEL_111;
            }

            if (__OFADD__(v70, v75))
            {
              goto LABEL_112;
            }

            if (v70 + v75 >= v52)
            {
              if (v52 < v75)
              {
                v49 = v46 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          v76 = &v9[16 * v46];
          v78 = *v76;
          v77 = *(v76 + 1);
          v60 = __OFSUB__(v77, v78);
          v70 = v77 - v78;
          v71 = v60;
LABEL_71:
          if (v71)
          {
            goto LABEL_107;
          }

          v79 = &v9[16 * v49];
          v81 = *(v79 + 4);
          v80 = *(v79 + 5);
          v60 = __OFSUB__(v80, v81);
          v82 = v80 - v81;
          if (v60)
          {
            goto LABEL_110;
          }

          if (v82 < v70)
          {
            goto LABEL_3;
          }

LABEL_78:
          v87 = v49 - 1;
          if (v49 - 1 >= v46)
          {
            __break(1u);
LABEL_101:
            __break(1u);
LABEL_102:
            __break(1u);
LABEL_103:
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
LABEL_116:
            __break(1u);
LABEL_117:
            __break(1u);
LABEL_118:
            __break(1u);
            goto LABEL_119;
          }

          if (!*a3)
          {
            goto LABEL_123;
          }

          v88 = *&v9[16 * v87 + 32];
          v89 = *&v9[16 * v49 + 40];
          specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 8 * v88), (*a3 + 8 * *&v9[16 * v49 + 32]), (*a3 + 8 * v89), v48);
          if (v6)
          {
            goto LABEL_98;
          }

          if (v89 < v88)
          {
            goto LABEL_101;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v9 = specialized _ArrayBuffer._consumeAndCreateNew()(v9, a5);
          }

          if (v87 >= *(v9 + 2))
          {
            goto LABEL_102;
          }

          v90 = &v9[16 * v87];
          *(v90 + 4) = v88;
          *(v90 + 5) = v89;
          specialized Array.remove(at:)(v49);
          v46 = *(v9 + 2);
          if (v46 <= 1)
          {
            goto LABEL_3;
          }
        }

        v54 = &v9[16 * v46 + 32];
        v55 = *(v54 - 64);
        v56 = *(v54 - 56);
        v60 = __OFSUB__(v56, v55);
        v57 = v56 - v55;
        if (v60)
        {
          goto LABEL_103;
        }

        v59 = *(v54 - 48);
        v58 = *(v54 - 40);
        v60 = __OFSUB__(v58, v59);
        v52 = v58 - v59;
        v53 = v60;
        if (v60)
        {
          goto LABEL_104;
        }

        v61 = &v9[16 * v46];
        v63 = *v61;
        v62 = *(v61 + 1);
        v60 = __OFSUB__(v62, v63);
        v64 = v62 - v63;
        if (v60)
        {
          goto LABEL_106;
        }

        v60 = __OFADD__(v52, v64);
        v65 = v52 + v64;
        if (v60)
        {
          goto LABEL_109;
        }

        if (v65 >= v57)
        {
          v83 = &v9[16 * v49 + 32];
          v85 = *v83;
          v84 = *(v83 + 1);
          v60 = __OFSUB__(v84, v85);
          v86 = v84 - v85;
          if (v60)
          {
            goto LABEL_113;
          }

          if (v52 < v86)
          {
            v49 = v46 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_57;
      }

LABEL_3:
      v7 = a3[1];
      if (v8 >= v7)
      {
        goto LABEL_88;
      }
    }
  }

  v9 = MEMORY[0x1E69E7CC0];
LABEL_88:
  v8 = *a1;
  if (!*a1)
  {
    goto LABEL_127;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_120:
    v9 = specialized _ArrayBuffer._consumeAndCreateNew()(v9, a5);
  }

  v91 = v6;
  v92 = *(v9 + 2);
  if (v92 >= 2)
  {
    while (*a3)
    {
      v6 = v92 - 1;
      v93 = *&v9[16 * v92];
      v94 = *&v9[16 * v92 + 24];
      specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 8 * v93), (*a3 + 8 * *&v9[16 * v92 + 16]), (*a3 + 8 * v94), v8);
      if (v91)
      {
        goto LABEL_98;
      }

      if (v94 < v93)
      {
        goto LABEL_114;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = specialized _ArrayBuffer._consumeAndCreateNew()(v9, a5);
      }

      if (v92 - 2 >= *(v9 + 2))
      {
        goto LABEL_115;
      }

      v95 = &v9[16 * v92];
      *v95 = v93;
      *(v95 + 1) = v94;
      specialized Array.remove(at:)(v6);
      v92 = *(v9 + 2);
      if (v92 <= 1)
      {
        goto LABEL_98;
      }
    }

    goto LABEL_124;
  }

LABEL_98:
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(void **__src, void **a2, void **a3, void **a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = a2 - __src;
  v8 = a2 - __src + 7;
  if (a2 - __src >= 0)
  {
    v8 = a2 - __src;
  }

  v9 = v8 >> 3;
  v10 = a3 - a2;
  v11 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v11 = a3 - a2;
  }

  v12 = v11 >> 3;
  if (v9 < v11 >> 3)
  {
    v13 = a2;
    if (a4 != __src || &__src[v9] <= a4)
    {
      memmove(a4, __src, 8 * v9);
    }

    v14 = &v4[v9];
    if (v7 < 8)
    {
LABEL_10:
      v15 = v6;
      goto LABEL_36;
    }

    while (1)
    {
      if (v13 >= v5)
      {
        goto LABEL_10;
      }

      v18 = *v13;
      v19 = *v4;
      swift_getObjectType();
      v20 = v18;
      v21 = v19;
      v22 = PlatformAccessibilityElementProtocol<>.compareGeometry(to:)(v21);

      if (v22 != -1)
      {
        break;
      }

      v16 = v13;
      v17 = v6 == v13++;
      if (!v17)
      {
        goto LABEL_12;
      }

LABEL_13:
      ++v6;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v4;
    v17 = v6 == v4++;
    if (v17)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v6 = *v16;
    goto LABEL_13;
  }

  if (a4 != a2 || &a2[v12] <= a4)
  {
    v23 = a2;
    memmove(a4, a2, 8 * v12);
    a2 = v23;
  }

  v15 = a2;
  v14 = &v4[v12];
  if (v10 >= 8 && a2 > v6)
  {
    v36 = v4;
LABEL_25:
    v35 = v15;
    v24 = v15 - 1;
    --v5;
    v25 = v14;
    do
    {
      v26 = v5 + 1;
      v27 = *--v25;
      v28 = v24;
      v29 = *v24;
      swift_getObjectType();
      v30 = v27;
      v31 = v29;
      v32 = PlatformAccessibilityElementProtocol<>.compareGeometry(to:)(v31);

      if (v32 == -1)
      {
        v33 = v28;
        if (v26 != v35)
        {
          *v5 = *v28;
        }

        v4 = v36;
        if (v14 <= v36 || (v15 = v33, v33 <= v6))
        {
          v15 = v33;
          goto LABEL_36;
        }

        goto LABEL_25;
      }

      if (v26 != v14)
      {
        *v5 = *v25;
      }

      --v5;
      v14 = v25;
      v24 = v28;
    }

    while (v25 > v36);
    v14 = v25;
    v15 = v35;
    v4 = v36;
  }

LABEL_36:
  if (v15 != v4 || v15 >= (v4 + ((v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v15, v4, 8 * (v14 - v4));
  }

  return 1;
}

{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = a2 - __src;
  v8 = a2 - __src + 15;
  if (a2 - __src >= 0)
  {
    v8 = a2 - __src;
  }

  v9 = v8 >> 4;
  v10 = a3 - a2;
  v11 = a3 - a2 + 15;
  if (a3 - a2 >= 0)
  {
    v11 = a3 - a2;
  }

  v12 = v11 >> 4;
  if (v9 >= v11 >> 4)
  {
    if (a4 != a2 || &a2[2 * v12] <= a4)
    {
      v24 = a2;
      memmove(a4, a2, 16 * v12);
      a2 = v24;
    }

    v23 = a2;
    v14 = &v4[2 * v12];
    if (v10 >= 16 && a2 > v6)
    {
      v38 = v4;
LABEL_26:
      __dst = v23;
      v25 = v23 - 2;
      v5 -= 2;
      v26 = v14;
      do
      {
        v27 = v5 + 2;
        v28 = *(v26 - 2);
        v26 -= 2;
        v29 = v25;
        v30 = *v25;
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        [v28 frame];
        v32 = v31;
        [v30 frame];
        v34 = v33;
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        if (v32 < v34)
        {
          v35 = v29;
          if (v27 != __dst)
          {
            *v5 = *v29;
          }

          v4 = v38;
          if (v14 <= v38 || (v23 = v35, v35 <= v6))
          {
            v23 = v35;
            goto LABEL_37;
          }

          goto LABEL_26;
        }

        if (v27 != v14)
        {
          *v5 = *v26;
        }

        v5 -= 2;
        v14 = v26;
        v25 = v29;
      }

      while (v26 > v38);
      v14 = v26;
      v23 = __dst;
      v4 = v38;
    }
  }

  else
  {
    v13 = a2;
    if (a4 != __src || &__src[2 * v9] <= a4)
    {
      memmove(a4, __src, 16 * v9);
    }

    v14 = &v4[2 * v9];
    if (v7 >= 16 && v13 < v5)
    {
      while (1)
      {
        v15 = *v13;
        v16 = *v4;
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        [v15 frame];
        v18 = v17;
        [v16 frame];
        v20 = v19;
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        if (v18 >= v20)
        {
          break;
        }

        v21 = v13;
        v22 = v6 == v13;
        v13 += 2;
        if (!v22)
        {
          goto LABEL_16;
        }

LABEL_17:
        v6 += 2;
        if (v4 >= v14 || v13 >= v5)
        {
          goto LABEL_19;
        }
      }

      v21 = v4;
      v22 = v6 == v4;
      v4 += 2;
      if (v22)
      {
        goto LABEL_17;
      }

LABEL_16:
      *v6 = *v21;
      goto LABEL_17;
    }

LABEL_19:
    v23 = v6;
  }

LABEL_37:
  if (v23 != v4 || v23 >= (v4 + ((v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0)))
  {
    memmove(v23, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}