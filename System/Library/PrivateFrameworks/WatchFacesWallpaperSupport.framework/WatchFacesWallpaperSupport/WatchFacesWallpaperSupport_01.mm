void *sub_1D96C5CD8(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB3F250, &qword_1D96DCEF8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB3F258, &qword_1D96DCF00);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1D96C5E14()
{
  v0 = sub_1D96DA5D0();
  __swift_allocate_value_buffer(v0, qword_1ECB3F270);
  __swift_project_value_buffer(v0, qword_1ECB3F270);
  return sub_1D96DA5C0();
}

uint64_t static Logger.rotationAnimator.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ECB3EC48 != -1)
  {
    swift_once();
  }

  v2 = sub_1D96DA5D0();
  v3 = __swift_project_value_buffer(v2, qword_1ECB3F270);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

double sub_1D96C5F78(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return result;
}

void (*sub_1D96C5FD8(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_1D96C606C;
}

void sub_1D96C606C(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + 24) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t PosterRotationAnimator.__allocating_init()()
{
  v0 = swift_allocObject();
  PosterRotationAnimator.init()();
  return v0;
}

void *PosterRotationAnimator.init()()
{
  v1 = v0;
  *(v0 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
  *(v0 + 48) = 0;
  type metadata accessor for DisplayLink();
  v2 = swift_allocObject();
  *(v2 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + 32) = 0;
  v3 = [objc_opt_self() displayLinkWithTarget:v2 selector:sel__displayLinkFired];
  v4 = *(v2 + 32);
  *(v2 + 32) = v3;

  *(v1 + 56) = v2;
  type metadata accessor for RendererTokenManager();
  *(v1 + 64) = 0;
  *(v1 + 72) = 0;
  swift_allocObject();
  *(v1 + 80) = RendererTokenManager.init()();
  *(v1 + 88) = 0;
  v5 = *(v1 + 56);
  swift_beginAccess();
  *(v5 + 24) = &protocol witness table for PosterRotationAnimator;
  swift_unknownObjectWeakAssign();
  result = *(*(v1 + 56) + 32);
  if (result)
  {
    [result setPaused_];
    v7 = *(v1 + 56);
    v8 = objc_opt_self();

    v9 = [v8 currentRunLoop];
    result = *(v7 + 32);
    if (result)
    {
      [result addToRunLoop:v9 forMode:*MEMORY[0x1E695DA28]];

      return v1;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *PosterRotationAnimator.deinit()
{
  result = *(*(v0 + 56) + 32);
  if (result)
  {
    [result invalidate];

    RendererTokenManager.invalidateAllTokens()();

    sub_1D96C6D84(v0 + 16);

    return v0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t PosterRotationAnimator.__deallocating_deinit(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(*(v3 + 56) + 32);
  if (v4)
  {
    [v4 invalidate];

    RendererTokenManager.invalidateAllTokens()();

    sub_1D96C6D84(v3 + 16);

    v4 = v3;
    a2 = 89;
    a3 = 7;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x1EEE6BDC0](v4, a2, a3);
}

void *sub_1D96C6620(void *a1, void *a2)
{
  v4 = [objc_msgSend(a1 environment)];
  swift_unknownObjectRelease();

  return sub_1D96C6714(a2, v4, a1);
}

void *sub_1D96C66A0(void *a1, void *a2)
{
  v3 = [objc_msgSend(a1 environment)];
  swift_unknownObjectRelease();

  return sub_1D96C6714(a2, v3, 0);
}

void *sub_1D96C6714(void *a1, uint64_t a2, void *a3)
{
  v4 = v3;
  swift_beginAccess();
  v8 = *(v4 + 32);
  if (v8 == a2)
  {
    return (v8 != a2);
  }

  v9 = 0.0;
  if (a1)
  {
    v10 = [a1 animationSettings];
    if (v10)
    {
      v11 = v10;
      [v10 duration];
      v9 = v12;
      v13 = [v11 timingFunction];
      if (!v13)
      {
        v13 = [objc_opt_self() functionWithName_];
      }

      v14 = *(v4 + 72);
      *(v4 + 72) = v13;
    }
  }

  if (qword_1EDB95880 != -1)
  {
    swift_once();
  }

  v15 = sub_1D96DA5D0();
  __swift_project_value_buffer(v15, qword_1EDB95890);
  v16 = sub_1D96DA5B0();
  v17 = sub_1D96DA890();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v34[0] = v19;
    *v18 = 136315394;
    if (a2 <= 2)
    {
      if (a2 == 1)
      {
        v20 = 0xE800000000000000;
        v21 = 0x7469617274726F50;
        goto LABEL_21;
      }

      if (a2 == 2)
      {
        v20 = 0x80000001D96DE980;
        v21 = 0xD000000000000014;
LABEL_21:
        v22 = sub_1D96BB28C(v21, v20, v34);

        *(v18 + 4) = v22;
        *(v18 + 12) = 2048;
        *(v18 + 14) = v9;
        _os_log_impl(&dword_1D96B3000, v16, v17, "Poster requested rotation to %s with duration: %f", v18, 0x16u);
        __swift_destroy_boxed_opaque_existential_0Tm(v19);
        MEMORY[0x1DA736010](v19, -1, -1);
        MEMORY[0x1DA736010](v18, -1, -1);
        goto LABEL_22;
      }

LABEL_17:
      v21 = 0xD000000000000013;
      v20 = 0x80000001D96DE960;
      goto LABEL_21;
    }

    if (a2 == 3)
    {
      v20 = 0xEF74686769522065;
    }

    else
    {
      if (a2 != 4)
      {
        goto LABEL_17;
      }

      v20 = 0xEE007466654C2065;
    }

    v21 = 0x70616373646E614CLL;
    goto LABEL_21;
  }

LABEL_22:

  if (v9 <= 0.00001)
  {
    result = *(*(v4 + 56) + 32);
    if (result)
    {
      [result setPaused_];
      v28 = qword_1ECB3F288;
      v29 = off_1ECB3F290;

      v30._countAndFlagsBits = v28;
      v30._object = v29;
      RendererTokenManager.invalidateToken(for:)(v30);

      *(v4 + 32) = a2;
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v31 = *(v4 + 24);
        ObjectType = swift_getObjectType();
        (*(v31 + 16))(a2, ObjectType, v31);
        swift_unknownObjectRelease();
      }

      v33 = *(v4 + 72);
      *(v4 + 72) = 0;

      swift_beginAccess();
      *(v4 + 88) = 0;
      return (v8 != a2);
    }
  }

  else
  {
    v23 = v9;
    swift_beginAccess();
    *(v4 + 40) = v23;
    *(v4 + 48) = CACurrentMediaTime();
    result = *(*(v4 + 56) + 32);
    if (result)
    {
      [result setPaused_];
      *(v4 + 64) = a2;
      swift_beginAccess();
      *(v4 + 88) = 1;
      if (a3)
      {
        v25 = qword_1ECB3F288;
        v26 = off_1ECB3F290;
        v27 = a3;

        v35._countAndFlagsBits = v25;
        v35._object = v26;
        RendererTokenManager.requestExtension(from:for:)(v27, v35);
      }

      return (v8 != a2);
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void PosterRotationAnimator.displayLinkFired(displayLink:)(uint64_t a1)
{
  v2 = v1;
  v4 = CACurrentMediaTime() - *(v1 + 48);
  swift_beginAccess();
  if ((v4 / *(v1 + 40)) <= 1.0)
  {
    v6 = v4 / *(v1 + 40);
  }

  else
  {
    v6 = 1.0;
  }

  v7 = *(v1 + 72);
  if (v7)
  {
    *&v5 = v6;
    [v7 _solveForInput_];
    v6 = v8;
  }

  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v9 = *(v1 + 24);
    ObjectType = swift_getObjectType();
    swift_beginAccess();
    (*(v9 + 8))(*(v1 + 32), *(v1 + 64), ObjectType, v9, v6);
    swift_unknownObjectRelease();
  }

  if (*(v1 + 40) <= v4)
  {
    v11 = *(v1 + 64);
    swift_beginAccess();
    *(v2 + 32) = v11;
    *(v2 + 64) = 0;
    v12 = *(a1 + 32);
    if (v12)
    {
      [v12 setPaused_];
      swift_beginAccess();
      *(v2 + 88) = 0;
      v13 = qword_1ECB3F288;
      v14 = off_1ECB3F290;

      v15._countAndFlagsBits = v13;
      v15._object = v14;
      RendererTokenManager.invalidateToken(for:)(v15);

      if (swift_unknownObjectWeakLoadStrong())
      {
        v16 = *(v2 + 24);
        v17 = swift_getObjectType();
        (*(v16 + 16))(*(v2 + 32), v17, v16);
        swift_unknownObjectRelease();
      }
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_1D96C7048(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t showSensitiveUIAlert(for:)(void *a1)
{
  v2 = sub_1D96DA5E0();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D96DA610();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D96C7310();
  v10 = sub_1D96DA8D0();
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  aBlock[4] = sub_1D96C7520;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D96C7048;
  aBlock[3] = &block_descriptor_2;
  v12 = _Block_copy(aBlock);
  v13 = a1;

  sub_1D96DA5F0();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1D96C7540();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB3EFA0, &qword_1D96DC500);
  sub_1D96C7598();
  sub_1D96DA940();
  MEMORY[0x1DA7355F0](0, v9, v5, v12);
  _Block_release(v12);

  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_1D96C7310()
{
  result = qword_1EDB95BF0;
  if (!qword_1EDB95BF0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDB95BF0);
  }

  return result;
}

void sub_1D96C735C(void *a1)
{
  v2 = sub_1D96DA690();
  v3 = sub_1D96DA690();
  v4 = [objc_opt_self() alertControllerWithTitle:v2 message:v3 preferredStyle:1];

  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = v4;
  v7 = sub_1D96DA690();
  v10[4] = sub_1D96C75FC;
  v10[5] = v5;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1D96BFBE4;
  v10[3] = &block_descriptor_6_0;
  v8 = _Block_copy(v10);

  v9 = [objc_opt_self() actionWithTitle:v7 style:0 handler:v8];
  _Block_release(v8);

  [v6 addAction_];
  [a1 presentViewController:v6 animated:1 completion:0];
}

double block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

unint64_t sub_1D96C7540()
{
  result = qword_1ECB3EF98;
  if (!qword_1ECB3EF98)
  {
    sub_1D96DA5E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB3EF98);
  }

  return result;
}

unint64_t sub_1D96C7598()
{
  result = qword_1ECB3EFA8;
  if (!qword_1ECB3EFA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB3EFA0, &qword_1D96DC500);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB3EFA8);
  }

  return result;
}

uint64_t DisplayLink.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + 32) = 0;
  v1 = [objc_opt_self() displayLinkWithTarget:v0 selector:sel__displayLinkFired];
  v2 = *(v0 + 32);
  *(v0 + 32) = v1;

  return v0;
}

id DisplayLink.preferredFrameRateRange.setter()
{
  result = *(v0 + 32);
  if (result)
  {
    return [result setPreferredFrameRateRange_];
  }

  __break(1u);
  return result;
}

id DisplayLink.isPaused.setter(char a1)
{
  result = *(v1 + 32);
  if (result)
  {
    return [result setPaused_];
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall DisplayLink.invalidate()()
{
  v1 = *(v0 + 32);
  if (v1)
  {
    [v1 invalidate];
  }

  else
  {
    __break(1u);
  }
}

id sub_1D96C7708(uint64_t a1, uint64_t a2, SEL *a3)
{
  result = *(v3 + 32);
  if (result)
  {
    return [result *a3];
  }

  __break(1u);
  return result;
}

id DisplayLink.isPaused.getter()
{
  result = *(v0 + 32);
  if (result)
  {
    return [result isPaused];
  }

  __break(1u);
  return result;
}

double DisplayLink.delegate.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return result;
}

void (*DisplayLink.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_1D96C606C;
}

uint64_t DisplayLink.init()()
{
  *(v0 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + 32) = 0;
  v1 = [objc_opt_self() displayLinkWithTarget:v0 selector:sel__displayLinkFired];
  v2 = *(v0 + 32);
  *(v0 + 32) = v1;

  return v0;
}

SEL *sub_1D96C79B4(SEL *result)
{
  if (*(v1 + 32))
  {
    return [*(v1 + 32) *result];
  }

  __break(1u);
  return result;
}

id (*DisplayLink.isPaused.modify(uint64_t a1))(unsigned __int8 *a1, char a2)
{
  *a1 = v1;
  result = *(v1 + 32);
  if (result)
  {
    *(a1 + 8) = [result isPaused];
    return sub_1D96C7A34;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1D96C7A34(unsigned __int8 *a1, char a2)
{
  result = *(*a1 + 32);
  if (a2)
  {
    if (result)
    {
      return [result setPaused_];
    }

    __break(1u);
  }

  if (result)
  {
    return [result setPaused_];
  }

  __break(1u);
  return result;
}

id DisplayLink.preferredFramesPerSecond.getter()
{
  result = *(v0 + 32);
  if (result)
  {
    return [result preferredFramesPerSecond];
  }

  __break(1u);
  return result;
}

id DisplayLink.preferredFramesPerSecond.setter(uint64_t a1)
{
  result = *(v1 + 32);
  if (result)
  {
    return [result setPreferredFramesPerSecond_];
  }

  __break(1u);
  return result;
}

uint64_t (*DisplayLink.preferredFramesPerSecond.modify(void *a1))()
{
  a1[1] = v1;
  result = *(v1 + 32);
  if (result)
  {
    *a1 = [result preferredFramesPerSecond];
    return sub_1D96C7AF4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1D96C7AF4(void *a1, char a2)
{
  result = *(a1[1] + 32);
  if (a2)
  {
    if (result)
    {
      return [result setPreferredFramesPerSecond_];
    }

    __break(1u);
  }

  if (result)
  {
    return [result setPreferredFramesPerSecond_];
  }

  __break(1u);
  return result;
}

id DisplayLink.preferredFrameRateRange.getter()
{
  result = *(v0 + 32);
  if (result)
  {
    return [result preferredFrameRateRange];
  }

  __break(1u);
  return result;
}

uint64_t (*DisplayLink.preferredFrameRateRange.modify(uint64_t a1))()
{
  *a1 = v1;
  result = *(v1 + 32);
  if (result)
  {
    [result preferredFrameRateRange];
    *(a1 + 8) = v4;
    *(a1 + 12) = v5;
    *(a1 + 16) = v6;
    return sub_1D96C7BA8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1D96C7BA8(_DWORD *a1, char a2, double a3, double a4, double a5)
{
  result = *(*a1 + 32);
  if (a2)
  {
    if (result)
    {
LABEL_5:
      LODWORD(a4) = a1[3];
      LODWORD(a5) = a1[4];
      LODWORD(a3) = a1[2];
      return [result setPreferredFrameRateRange_];
    }

    __break(1u);
  }

  if (result)
  {
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t DisplayLink.deinit()
{
  sub_1D96C6D84(v0 + 16);

  return v0;
}

uint64_t DisplayLink.__deallocating_deinit()
{
  sub_1D96C6D84(v0 + 16);

  return MEMORY[0x1EEE6BDC0](v0, 40, 7);
}

double sub_1D96C7CA8@<D0>(void *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v18 = a2[1];
  v19 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 36);
  v7 = [a1 traitCollection];
  if (v7)
  {
    v8 = v7;
    v9 = [v7 userInterfaceStyle];

    v10 = v9 == 2;
  }

  else
  {
    v10 = 0;
  }

  v11 = [a1 deviceOrientation];
  swift_unknownObjectRelease();
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  __asm { FMOV            V0.2D, #1.0 }

  *(a3 + 24) = _Q0;
  *(a3 + 40) = v10;
  *(a3 + 41) = 0;
  *(a3 + 48) = v19;
  *(a3 + 64) = v18;
  *(a3 + 80) = v5;
  *(a3 + 84) = v6;
  *(a3 + 88) = v11;
  result = 0.0;
  *(a3 + 96) = 0u;
  *(a3 + 112) = 0u;
  *(a3 + 128) = 0;
  return result;
}

double sub_1D96C7D94@<D0>(void *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v23 = a2[1];
  v25 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 36);
  swift_getObjectType();
  v7 = [a1 traitCollection];
  if (v7)
  {
    v8 = v7;
    v9 = [v7 userInterfaceStyle];

    v10 = v9 == 2;
  }

  else
  {
    v10 = 0;
  }

  v11 = [a1 traitCollection];
  if (v11)
  {
    v12 = v11;
    v13 = [v11 _backlightLuminance];

    v14 = v13 == 1;
  }

  else
  {
    v14 = 0;
  }

  v15 = [a1 deviceOrientation];
  PRPosterRenderingEnvironment.unlockState.getter(v30);
  v16 = v30[0];
  v17 = v31;
  PRPosterRenderingEnvironment.wakeState.getter(v27);
  v18 = v27[0];
  v19 = v28;
  v20 = v29;
  v21 = [a1 isSnapshot];
  swift_unknownObjectRelease();
  *a3 = v16;
  *(a3 + 8) = v17;
  *(a3 + 16) = v18;
  *(a3 + 24) = v19;
  *(a3 + 32) = v20;
  *(a3 + 40) = v10;
  *(a3 + 41) = v14;
  *(a3 + 42) = v21;
  *(a3 + 48) = v26;
  *(a3 + 64) = v24;
  *(a3 + 80) = v5;
  *(a3 + 84) = v6;
  *(a3 + 88) = v15;
  result = 0.0;
  *(a3 + 96) = 0u;
  *(a3 + 112) = 0u;
  *(a3 + 128) = 0;
  return result;
}

uint64_t sub_1D96C7F28(uint64_t a1)
{
  if ((a1 - 70) > 0x2D)
  {
    goto LABEL_6;
  }

  if (((1 << (a1 - 70)) & 0xC03) != 0)
  {
    return 4;
  }

  if (a1 == 115)
  {
    return 8;
  }

LABEL_6:
  sub_1D96DA9A0();
  MEMORY[0x1DA735440](0xD000000000000018, 0x80000001D96DEBB0);
  type metadata accessor for MTLPixelFormat(0);
  sub_1D96DAA30();
  result = sub_1D96DAA40();
  __break(1u);
  return result;
}

uint64_t getEnumTagSinglePayload for WallpaperMetalCoordination(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for WallpaperMetalCoordination(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t sub_1D96C8100()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB3F2B8, &qword_1D96DD1D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D96DD050;
  *(inited + 32) = 0x73646E756F62;
  *(inited + 40) = 0xE600000000000000;
  *(inited + 48) = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
  *(inited + 56) = 0x6E6F697469736F70;
  *(inited + 64) = 0xE800000000000000;
  *(inited + 72) = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
  *(inited + 80) = 0x6F50726F68636E61;
  *(inited + 88) = 0xEB00000000746E69;
  *(inited + 96) = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
  *(inited + 104) = 0x73746E65746E6F63;
  *(inited + 112) = 0xE800000000000000;
  *(inited + 120) = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
  v1 = sub_1D96BD610(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB3F2C0, &qword_1D96DD1D8);
  result = swift_arrayDestroy();
  qword_1EDB969D0 = v1;
  return result;
}

uint64_t sub_1D96C8284()
{
  type metadata accessor for WallpaperMetalCoordination.Resources(0);
  swift_allocObject();
  result = sub_1D96C82C4();
  qword_1EDB969E8 = result;
  return result;
}

uint64_t sub_1D96C82C4()
{
  v1 = v0;
  v2 = sub_1D96DA8C0();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v24 = v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D96DA8B0();
  MEMORY[0x1EEE9AC00](v5);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D96DA610();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v9 = sub_1D96DA5D0();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MTLCreateSystemDefaultDevice();
  if (!v13)
  {
    goto LABEL_5;
  }

  v14 = v13;
  v15 = [v13 newCommandQueue];
  if (!v15)
  {
    swift_unknownObjectRelease();
LABEL_5:
    type metadata accessor for WallpaperMetalCoordination.Resources(0);
    swift_deallocPartialClassInstance();
    return 0;
  }

  *(v0 + OBJC_IVAR____TtCO26WatchFacesWallpaperSupport26WallpaperMetalCoordination9Resources_device) = v14;
  *(v0 + OBJC_IVAR____TtCO26WatchFacesWallpaperSupport26WallpaperMetalCoordination9Resources_commandQueue) = v15;
  v23 = v3;
  v21[1] = v7;
  v16 = v15;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v17 = sub_1D96DA690();
  v22 = v2;
  v18 = v17;
  [v16 setLabel_];

  sub_1D96DA5C0();
  (*(v10 + 32))(v0 + OBJC_IVAR____TtCO26WatchFacesWallpaperSupport26WallpaperMetalCoordination9Resources_log, v12, v9);
  sub_1D96C7310();
  sub_1D96DA600();
  v25 = MEMORY[0x1E69E7CC0];
  sub_1D96C8E6C(&unk_1EDB95C00, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB3F2C8, &unk_1D96DD1E0);
  sub_1D96C8EB4();
  sub_1D96DA940();
  (*(v23 + 104))(v24, *MEMORY[0x1E69E8090], v22);
  v19 = sub_1D96DA8F0();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  *(v1 + OBJC_IVAR____TtCO26WatchFacesWallpaperSupport26WallpaperMetalCoordination9Resources_snapshotQueue) = v19;
  return v1;
}

uint64_t sub_1D96C86C8()
{
  v1 = OBJC_IVAR____TtCO26WatchFacesWallpaperSupport26WallpaperMetalCoordination9Resources_log;
  v2 = sub_1D96DA5D0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

uint64_t type metadata accessor for WallpaperMetalCoordination.Resources(uint64_t a1)
{
  result = qword_1EDB95E98;
  if (!qword_1EDB95E98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D96C87E8(uint64_t a1)
{
  result = sub_1D96DA5D0();
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

uint64_t sub_1D96C8890()
{
  v1 = *(v0 + 32);
  if (!v1)
  {
    goto LABEL_10;
  }

  v2 = *(v0 + 40);
  if ((v2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  v3 = *(v1 + 16);
  if (v2 >= v3)
  {
LABEL_9:
    __break(1u);
LABEL_10:
    result = sub_1D96DAA40();
    __break(1u);
    return result;
  }

  v4 = v1 + 16 * v2;
  v6 = *(v4 + 32);
  v5 = *(v4 + 40);
  if (v2 + 1 == v3)
  {
    v7 = 0;
  }

  else
  {
    v7 = v2 + 1;
  }

  *(v0 + 40) = v7;
  swift_unknownObjectRetain();
  v8 = v5;
  return v6;
}

uint64_t sub_1D96C8958()
{

  return MEMORY[0x1EEE6BDC0](v0, 49, 7);
}

uint64_t getEnumTagSinglePayload for WallpaperMetalCoordination.Error(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for WallpaperMetalCoordination.Error(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1D96C8B20()
{
  result = qword_1ECB3F298;
  if (!qword_1ECB3F298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB3F298);
  }

  return result;
}

void *sub_1D96C8B74(uint64_t a1, uint64_t a2, void *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB3F2A0, &unk_1D96DD1B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D96DD050;
  v7 = *MEMORY[0x1E696CDE0];
  *(inited + 32) = *MEMORY[0x1E696CDE0];
  v8 = MEMORY[0x1E69E6530];
  *(inited + 40) = a1;
  v9 = *MEMORY[0x1E696CD90];
  *(inited + 64) = v8;
  *(inited + 72) = v9;
  *(inited + 80) = a2;
  v10 = *MEMORY[0x1E696CD78];
  *(inited + 104) = v8;
  *(inited + 112) = v10;
  *(inited + 120) = 1;
  v11 = *MEMORY[0x1E696CDA0];
  *(inited + 144) = v8;
  *(inited + 152) = v11;
  *(inited + 184) = MEMORY[0x1E69E7668];
  *(inited + 160) = 1093677112;
  v12 = v7;
  v13 = v9;
  v14 = v10;
  v15 = v11;
  sub_1D96BE020(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB3EF48, &qword_1D96DC4C8);
  swift_arrayDestroy();
  v16 = objc_allocWithZone(MEMORY[0x1E696CDE8]);
  type metadata accessor for IOSurfacePropertyKey(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB3F2B0, &unk_1D96DD1C0);
  sub_1D96C8E6C(&qword_1ECB3EFE0, type metadata accessor for IOSurfacePropertyKey, &unk_1D96DC6EC);
  v17 = sub_1D96DA620();

  v18 = [v16 initWithProperties_];

  if (v18)
  {
    v19 = objc_opt_self();
    v20 = v18;
    v21 = [v19 texture2DDescriptorWithPixelFormat:10 width:a1 height:a2 mipmapped:0];
    [v21 setUsage_];
    [v21 setStorageMode_];
    v22 = [a3 newTextureWithDescriptor:v21 iosurface:v20 plane:0];
    if (v22)
    {
      a3 = v22;
    }

    else
    {
      sub_1D96BAB7C();
      swift_allocError();
      *v24 = 4;
      swift_willThrow();
    }
  }

  else
  {
    sub_1D96BAB7C();
    swift_allocError();
    *v23 = 4;
    swift_willThrow();
  }

  return a3;
}

uint64_t sub_1D96C8E6C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1D96C8EB4()
{
  result = qword_1EDB95C50;
  if (!qword_1EDB95C50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB3F2C8, &unk_1D96DD1E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB95C50);
  }

  return result;
}

unint64_t AnimationCurveDescription.description.getter()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E55;
  v3 = 0xD00000000000001BLL;
  if (*v0 == 3)
  {
    v4 = 0xD00000000000001ALL;
  }

  else
  {
    v4 = 0x6E776F6E6B6E55;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (v1 == 1)
  {
    v2 = 0xD00000000000001ALL;
  }

  if (!v1)
  {
    v2 = 0xD00000000000001DLL;
  }

  if (v1 <= 1)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1D96C9000()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E55;
  v3 = 0xD00000000000001BLL;
  if (*v0 == 3)
  {
    v4 = 0xD00000000000001ALL;
  }

  else
  {
    v4 = 0x6E776F6E6B6E55;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (v1 == 1)
  {
    v2 = 0xD00000000000001ALL;
  }

  if (!v1)
  {
    v2 = 0xD00000000000001DLL;
  }

  if (v1 <= 1)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1D96C9130(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1D96DA5D0();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  return sub_1D96DA5C0();
}

id PRPosterRenderingEnvironment.unlockState.getter@<X0>(uint64_t a1@<X8>)
{
  [v1 unlockProgress];
  if (v3 < 0.0 || ([v1 unlockProgress], v4 > 1.0))
  {
    [v1 unlockProgress];
    v6 = v5 >= 0.0;
    result = [v1 unlockProgress];
    v9 = v8 < 0.0;
    v10 = 1.0;
    if (v9)
    {
      v10 = 0.0;
    }

    *a1 = v6;
    goto LABEL_6;
  }

  [v1 unlockProgress];
  v12 = v11;
  result = [v1 unlockProgress];
  v14 = v13;
  if (v12 != 0.0)
  {
    result = [v1 unlockProgress];
    if (v14 == 1.0)
    {
      *a1 = 1;
    }

    else
    {
      *a1 = 2;
    }

LABEL_6:
    *(a1 + 8) = v10;
    return result;
  }

  *a1 = 0;
  *(a1 + 8) = v13;
  return result;
}

id PRPosterRenderingEnvironment.wakeState.getter@<X0>(uint64_t a1@<X8>)
{
  [v1 backlightProgress];
  if (v3 >= 0.0)
  {
    [v1 backlightProgress];
    if (v4 <= 1.0)
    {
      [v1 backlightProgress];
      if (v11 == 0.0)
      {
        [v1 linearBacklightProgress];
        v13 = v12;
        result = [v1 backlightProgress];
        v15 = 1;
      }

      else
      {
        [v1 backlightProgress];
        v17 = v16;
        [v1 linearBacklightProgress];
        v13 = v18;
        result = [v1 backlightProgress];
        if (v17 == 1.0)
        {
          *a1 = 0;
          goto LABEL_12;
        }

        v15 = 2;
      }

      *a1 = v15;
LABEL_12:
      *(a1 + 8) = v13;
      *(a1 + 16) = v14;
      return result;
    }
  }

  [v1 backlightProgress];
  v6 = v5 < 0.0;
  [v1 backlightProgress];
  if (v7 >= 0.0)
  {
    v8 = 1.0;
  }

  else
  {
    v8 = 0.0;
  }

  result = [v1 linearBacklightProgress];
  *a1 = v6;
  *(a1 + 8) = v10;
  *(a1 + 16) = v8;
  return result;
}

id sub_1D96C93F4(SEL *a1)
{
  v2 = [objc_msgSend(v1 environment)];
  swift_unknownObjectRelease();
  return v2;
}

double PRRenderer.wakeState.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = [v1 environment];
  PRPosterRenderingEnvironment.wakeState.getter(a1);

  swift_unknownObjectRelease();
  return result;
}

double PRRenderer.unlockState.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = [v1 environment];
  PRPosterRenderingEnvironment.unlockState.getter(a1);

  swift_unknownObjectRelease();
  return result;
}

id PRRenderer.posterContents.getter()
{
  v1 = [objc_msgSend(v0 environment)];
  swift_unknownObjectRelease();
  return v1;
}

double PRRenderer.snapshotBounds.getter()
{
  v1 = [v0 backgroundView];
  [v1 bounds];
  v3 = v2;

  return v3;
}

uint64_t static String.localized(key:tableSuffix:comment:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = [objc_opt_self() mainBundle];
  if (a4 && sub_1D96DA710() >= 1)
  {
    MEMORY[0x1DA735440](a3, a4);
    sub_1D96DA7A0();
    sub_1D96DA720();
  }

  v9 = sub_1D96DA400();

  return v9;
}

uint64_t static String.localized(key:table:comment:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = [objc_opt_self() mainBundle];
  v7 = sub_1D96DA400();

  return v7;
}

uint64_t sub_1D96C97EC()
{
  v0 = sub_1D96DA500();
  __swift_allocate_value_buffer(v0, qword_1ECB3F2D0);
  v1 = __swift_project_value_buffer(v0, qword_1ECB3F2D0);
  return sub_1D96C9838(v1);
}

uint64_t sub_1D96C9838@<X0>(uint64_t a1@<X8>)
{
  v22 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB3F2E8, &qword_1D96DD260);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v21 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB3F2F0, &qword_1D96DD268);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v21 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB3F2F8, qword_1D96DD270);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v21 - v8;
  v10 = sub_1D96DA3E0();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1D96DA510();
  (*(*(v14 - 8) + 56))(v9, 1, 1, v14);
  v15 = sub_1D96DA560();
  v16 = *(*(v15 - 8) + 56);
  v16(v6, 1, 1, v15);
  sub_1D96DA3C0();
  sub_1D96DA390();
  sub_1D96DA3A0();
  sub_1D96DA360();
  sub_1D96DA380();
  sub_1D96DA3B0();
  sub_1D96DA550();
  v16(v6, 0, 1, v15);
  sub_1D96DA3D0();
  sub_1D96DA370();
  v17 = sub_1D96DA500();
  v18 = *(v17 - 8);
  v19 = *(v18 + 48);
  if (v19(v3, 1, v17) == 1)
  {
    sub_1D96DA4E0();
    (*(v11 + 8))(v13, v10);
    result = v19(v3, 1, v17);
    if (result != 1)
    {
      return sub_1D96C9E80(v3);
    }
  }

  else
  {
    (*(v11 + 8))(v13, v10);
    return (*(v18 + 32))(v22, v3, v17);
  }

  return result;
}

uint64_t static Date.idealizedDate.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ECB3EC58 != -1)
  {
    swift_once();
  }

  v2 = sub_1D96DA500();
  v3 = __swift_project_value_buffer(v2, qword_1ECB3F2D0);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static Date.idealizedDate.setter(uint64_t a1)
{
  if (qword_1ECB3EC58 != -1)
  {
    swift_once();
  }

  v2 = sub_1D96DA500();
  v3 = __swift_project_value_buffer(v2, qword_1ECB3F2D0);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static Date.idealizedDate.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_1ECB3EC58 != -1)
  {
    swift_once();
  }

  v1 = sub_1D96DA500();
  __swift_project_value_buffer(v1, qword_1ECB3F2D0);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_1D96C9E80(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB3F2E8, &qword_1D96DD260);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t static PosterDataLoader.from(look:)(void *a1)
{
  v2 = *(v1 + 80);
  v3 = [a1 identifier];
  v4 = sub_1D96DA6C0();
  v6 = v5;

  return (*(*(v1 + 88) + 32))(v4, v6, v2);
}

uint64_t static PosterDataLoader.from(renderer:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v62 = a2;
  v4 = *(v2 + 80);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v56 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v58 = (&v54 - v9);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v57 = &v54 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v55 = &v54 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v54 - v14;
  v17 = type metadata accessor for PosterDataLoadResult(0, v4, *(v2 + 88), v16);
  v18 = *(v17 - 8);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v54 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v54 - v22;
  v24 = [objc_msgSend(a1 environment)];
  swift_unknownObjectRelease();
  static PosterDataLoader.posterDataResult(from:)(v23);
  swift_unknownObjectRelease();
  v59 = v23;
  v60 = v18;
  (*(v18 + 16))(v21, v23, v17);
  v61 = v17;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v26 = *(v5 + 32);
  if (EnumCaseMultiPayload == 1)
  {
    v58 = *(v5 + 32);
    v26(v15, v21, v4);
    if (qword_1EDB958B0 != -1)
    {
      swift_once();
    }

    v27 = sub_1D96DA5D0();
    __swift_project_value_buffer(v27, qword_1EDB969B8);
    v28 = *(v5 + 16);
    v29 = v55;
    v28(v55, v15, v4);
    v30 = sub_1D96DA5B0();
    v31 = sub_1D96DA870();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v56 = v15;
      v33 = v32;
      v54 = swift_slowAlloc();
      v63 = v54;
      *v33 = 136315138;
      v28(v57, v29, v4);
      v34 = sub_1D96DA6E0();
      v36 = v35;
      (*(v5 + 8))(v29, v4);
      v37 = sub_1D96BB28C(v34, v36, &v63);

      *(v33 + 4) = v37;
      _os_log_impl(&dword_1D96B3000, v30, v31, "renderer posterData — fallbacking to: %s", v33, 0xCu);
      v38 = v54;
      __swift_destroy_boxed_opaque_existential_0Tm(v54);
      MEMORY[0x1DA736010](v38, -1, -1);
      v39 = v33;
      v15 = v56;
      MEMORY[0x1DA736010](v39, -1, -1);
    }

    else
    {

      (*(v5 + 8))(v29, v4);
    }

    (*(v60 + 8))(v59, v61);
    return v58(v62, v15, v4);
  }

  else
  {
    v40 = v58;
    v26(v58, v21, v4);
    if (qword_1EDB958B0 != -1)
    {
      swift_once();
    }

    v41 = sub_1D96DA5D0();
    __swift_project_value_buffer(v41, qword_1EDB969B8);
    v42 = *(v5 + 16);
    v43 = v56;
    v42(v56, v40, v4);
    v44 = sub_1D96DA5B0();
    v45 = sub_1D96DA870();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v55 = (v5 + 32);
      v47 = v46;
      v54 = swift_slowAlloc();
      v63 = v54;
      *v47 = 136315138;
      v42(v57, v43, v4);
      v48 = sub_1D96DA6E0();
      v50 = v49;
      (*(v5 + 8))(v43, v4);
      v51 = sub_1D96BB28C(v48, v50, &v63);

      *(v47 + 4) = v51;
      _os_log_impl(&dword_1D96B3000, v44, v45, "renderer posterData — successfully loaded: %s", v47, 0xCu);
      v52 = v54;
      __swift_destroy_boxed_opaque_existential_0Tm(v54);
      MEMORY[0x1DA736010](v52, -1, -1);
      MEMORY[0x1DA736010](v47, -1, -1);

      (*(v60 + 8))(v59, v61);
      v40 = v58;
    }

    else
    {

      (*(v5 + 8))(v43, v4);
      (*(v60 + 8))(v59, v61);
    }

    return (v26)(v62, v40, v4);
  }
}

uint64_t static PosterDataLoader.posterDataResult(from:)@<X0>(_BYTE *a2@<X8>)
{
  v40 = a2;
  v3 = *(v2 + 80);
  v4 = sub_1D96DA920();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v34[-v7];
  v9 = *(v3 - 8);
  v10 = MEMORY[0x1EEE9AC00](v6);
  v39 = &v34[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v34[-v13];
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v34[-v15];
  swift_getObjectType();
  v17 = *(v2 + 88);
  PRPosterContents.posterData<A>()(v3, *(v17 + 8), v8);
  if ((*(v9 + 48))(v8, 1, v3) == 1)
  {
    (*(v5 + 8))(v8, v4);
    if (qword_1EDB958B0 != -1)
    {
      swift_once();
    }

    v18 = sub_1D96DA5D0();
    __swift_project_value_buffer(v18, qword_1EDB969B8);
    v19 = sub_1D96DA5B0();
    v20 = sub_1D96DA870();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_1D96B3000, v19, v20, "posterDataResult(from posterContents — using fallback", v21, 2u);
      MEMORY[0x1DA736010](v21, -1, -1);
    }

    (*(v17 + 56))(v3, v17);
  }

  else
  {
    v37 = *(v9 + 32);
    v38 = v9 + 32;
    v37(v16, v8, v3);
    if (qword_1EDB958B0 != -1)
    {
      swift_once();
    }

    v23 = sub_1D96DA5D0();
    __swift_project_value_buffer(v23, qword_1EDB969B8);
    v24 = *(v9 + 16);
    v24(v14, v16, v3);
    v25 = sub_1D96DA5B0();
    v26 = sub_1D96DA870();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v41 = v36;
      *v27 = 136315138;
      v35 = v26;
      v24(v39, v14, v3);
      v28 = sub_1D96DA6E0();
      v30 = v29;
      (*(v9 + 8))(v14, v3);
      v31 = sub_1D96BB28C(v28, v30, &v41);

      *(v27 + 4) = v31;
      _os_log_impl(&dword_1D96B3000, v25, v35, "posterDataResult(from posterContents — successfully loaded: %s", v27, 0xCu);
      v32 = v36;
      __swift_destroy_boxed_opaque_existential_0Tm(v36);
      MEMORY[0x1DA736010](v32, -1, -1);
      MEMORY[0x1DA736010](v27, -1, -1);
    }

    else
    {

      (*(v9 + 8))(v14, v3);
    }

    v37(v40, v16, v3);
  }

  type metadata accessor for PosterDataLoadResult(0, v3, v17, v22);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1D96CAAB4@<X0>(void *a1@<X0>, SEL *a2@<X1>, uint64_t a3@<X8>)
{
  v68 = a2;
  v69 = a3;
  v5 = *(v3 + 80);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v64 = (&v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v61 - v10;
  v12 = MEMORY[0x1EEE9AC00](v9);
  v65 = &v61 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v63 = &v61 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v61 - v16;
  v19 = type metadata accessor for PosterDataLoadResult(0, v5, *(v3 + 88), v18);
  v20 = *(v19 - 8);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = &v61 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v61 - v24;
  v26 = [a1 *v68];
  static PosterDataLoader.posterDataResult(from:)(v25);
  swift_unknownObjectRelease();
  v66 = v25;
  v67 = v20;
  (*(v20 + 16))(v23, v25, v19);
  v68 = v19;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v28 = v6;
  v31 = *(v6 + 32);
  v29 = v6 + 32;
  v30 = v31;
  if (EnumCaseMultiPayload == 1)
  {
    v64 = v30;
    (v30)(v17, v23, v5);
    if (qword_1EDB958B0 != -1)
    {
      swift_once();
    }

    v32 = sub_1D96DA5D0();
    __swift_project_value_buffer(v32, qword_1EDB969B8);
    v33 = v28;
    v34 = *(v28 + 16);
    v35 = v63;
    v34(v63, v17, v5);
    v36 = sub_1D96DA5B0();
    v37 = sub_1D96DA870();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v62 = v29;
      v39 = v38;
      v61 = swift_slowAlloc();
      v70 = v61;
      *v39 = 136315138;
      v34(v65, v35, v5);
      v40 = sub_1D96DA6E0();
      v42 = v41;
      (*(v33 + 8))(v35, v5);
      v43 = sub_1D96BB28C(v40, v42, &v70);

      *(v39 + 4) = v43;
      _os_log_impl(&dword_1D96B3000, v36, v37, "renderer posterData — fallbacking to: %s", v39, 0xCu);
      v44 = v61;
      __swift_destroy_boxed_opaque_existential_0Tm(v61);
      MEMORY[0x1DA736010](v44, -1, -1);
      MEMORY[0x1DA736010](v39, -1, -1);
    }

    else
    {

      (*(v33 + 8))(v35, v5);
    }

    (*(v67 + 8))(v66, v68);
    return v64(v69, v17, v5);
  }

  else
  {
    (v30)(v11, v23, v5);
    v45 = v11;
    if (qword_1EDB958B0 != -1)
    {
      swift_once();
    }

    v46 = sub_1D96DA5D0();
    __swift_project_value_buffer(v46, qword_1EDB969B8);
    v47 = v28;
    v48 = *(v28 + 16);
    v49 = v64;
    v48(v64, v45, v5);
    v50 = sub_1D96DA5B0();
    v51 = sub_1D96DA870();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v62 = v29;
      v53 = v52;
      v61 = swift_slowAlloc();
      v70 = v61;
      *v53 = 136315138;
      v63 = v45;
      v48(v65, v49, v5);
      v54 = sub_1D96DA6E0();
      v56 = v55;
      (*(v47 + 8))(v49, v5);
      v57 = sub_1D96BB28C(v54, v56, &v70);

      *(v53 + 4) = v57;
      _os_log_impl(&dword_1D96B3000, v50, v51, "renderer posterData — successfully loaded: %s", v53, 0xCu);
      v58 = v61;
      __swift_destroy_boxed_opaque_existential_0Tm(v61);
      MEMORY[0x1DA736010](v58, -1, -1);
      MEMORY[0x1DA736010](v53, -1, -1);

      (*(v67 + 8))(v66, v68);
      v59 = v63;
    }

    else
    {

      (*(v47 + 8))(v49, v5);
      (*(v67 + 8))(v66, v68);
      v59 = v45;
    }

    return (v30)(v69, v59, v5);
  }
}

uint64_t static PosterDataLoader.from(editor:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>, uint64_t a3@<X3>)
{
  v4 = v3;
  v136 = a2;
  v141[1] = *MEMORY[0x1E69E9840];
  v6 = v4[10];
  v7 = type metadata accessor for PosterDataLoadResult(0, v6, v4[11], a3);
  v135 = *(v7 - 8);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v128 = &v123 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v134 = &v123 - v10;
  v11 = sub_1D96DA920();
  v126 = *(v11 - 8);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v123 - v13;
  v15 = *(v6 - 8);
  v16 = MEMORY[0x1EEE9AC00](v12);
  v18 = &v123 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v130 = &v123 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v124 = &v123 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v129 = &v123 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v131 = &v123 - v26;
  v27 = MEMORY[0x1EEE9AC00](v25);
  v127 = &v123 - v28;
  MEMORY[0x1EEE9AC00](v27);
  v138 = &v123 - v29;
  if (qword_1EDB958B0 != -1)
  {
    swift_once();
  }

  v30 = sub_1D96DA5D0();
  v31 = __swift_project_value_buffer(v30, qword_1EDB969B8);
  v32 = a1;
  v139 = v31;
  v33 = sub_1D96DA5B0();
  v34 = sub_1D96DA870();

  v35 = os_log_type_enabled(v33, v34);
  v137 = v6;
  v132 = v7;
  v133 = v4;
  v125 = v18;
  if (v35)
  {
    v36 = swift_slowAlloc();
    v123 = v11;
    v37 = v36;
    v38 = swift_slowAlloc();
    v141[0] = v38;
    *v37 = 136315138;
    v39 = [v32 currentLook];
    v40 = [v39 identifier];

    v41 = sub_1D96DA6C0();
    v42 = v15;
    v44 = v43;

    v45 = sub_1D96BB28C(v41, v44, v141);
    v15 = v42;

    *(v37 + 4) = v45;
    _os_log_impl(&dword_1D96B3000, v33, v34, "loading poster data, from editor with lookIdentifier: %s", v37, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v38);
    MEMORY[0x1DA736010](v38, -1, -1);
    v46 = v37;
    v11 = v123;
    v6 = v137;
    MEMORY[0x1DA736010](v46, -1, -1);
  }

  v47 = [v32 currentLook];
  static PosterDataLoader.from(look:)(v47);

  if ((*(v15 + 6))(v14, 1, v6) != 1)
  {
    v70 = v138;
    v135 = *(v15 + 4);
    (v135)(v138, v14, v6);
    v71 = v15;
    v72 = *(v15 + 2);
    v73 = v127;
    v72(v127, v70, v6);
    v74 = sub_1D96DA5B0();
    v75 = sub_1D96DA870();
    if (os_log_type_enabled(v74, v75))
    {
      v76 = swift_slowAlloc();
      v139 = swift_slowAlloc();
      v141[0] = v139;
      *v76 = 136315138;
      v72(v131, v73, v6);
      v77 = sub_1D96DA6E0();
      v79 = v78;
      v71[1](v73, v6);
      v80 = sub_1D96BB28C(v77, v79, v141);

      *(v76 + 4) = v80;
      _os_log_impl(&dword_1D96B3000, v74, v75, "currentLookKaleidoscopePosterData: %s", v76, 0xCu);
      v81 = v139;
      __swift_destroy_boxed_opaque_existential_0Tm(v139);
      MEMORY[0x1DA736010](v81, -1, -1);
      MEMORY[0x1DA736010](v76, -1, -1);
    }

    else
    {

      (*(v15 + 1))(v73, v6);
    }

    return (v135)(v136, v138, v6);
  }

  v138 = v15;
  (*(v126 + 8))(v14, v11);
  v48 = v32;
  v49 = sub_1D96DA5B0();
  v50 = sub_1D96DA870();

  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v141[0] = v52;
    *v51 = 136315138;
    v53 = [objc_msgSend(v48 environment)];
    swift_unknownObjectRelease();
    v140[0] = v53;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECB3F300, &qword_1D96DD288);
    v54 = sub_1D96DA6E0();
    v56 = sub_1D96BB28C(v54, v55, v141);

    *(v51 + 4) = v56;
    _os_log_impl(&dword_1D96B3000, v49, v50, "loading poster data from %s", v51, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v52);
    MEMORY[0x1DA736010](v52, -1, -1);
    MEMORY[0x1DA736010](v51, -1, -1);
  }

  v57 = [objc_msgSend(v48 environment)];
  swift_unknownObjectRelease();
  v141[0] = 0;
  v58 = [v57 loadUserInfoWithError_];
  swift_unknownObjectRelease();
  v59 = v141[0];
  if (v58)
  {
    sub_1D96DA630();
    v60 = v59;

    v61 = sub_1D96DA5B0();
    v62 = sub_1D96DA870();

    if (!os_log_type_enabled(v61, v62))
    {

      goto LABEL_19;
    }

    v63 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    v141[0] = v64;
    *v63 = 136315138;
    v65 = sub_1D96DA640();
    v67 = v66;

    v68 = sub_1D96BB28C(v65, v67, v141);

    *(v63 + 4) = v68;
    _os_log_impl(&dword_1D96B3000, v61, v62, "loaded userInfo: %s", v63, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v64);
    MEMORY[0x1DA736010](v64, -1, -1);
    v69 = v63;
    goto LABEL_17;
  }

  v83 = v141[0];
  v84 = sub_1D96DA410();

  swift_willThrow();
  v61 = sub_1D96DA5B0();
  v85 = sub_1D96DA870();
  if (os_log_type_enabled(v61, v85))
  {
    v86 = swift_slowAlloc();
    *v86 = 0;
    _os_log_impl(&dword_1D96B3000, v61, v85, "unable to load userInfo", v86, 2u);
    v69 = v86;
LABEL_17:
    MEMORY[0x1DA736010](v69, -1, -1);
  }

LABEL_19:

  v87 = [objc_msgSend(v48 environment)];
  swift_unknownObjectRelease();
  v88 = v134;
  static PosterDataLoader.posterDataResult(from:)(v134);
  swift_unknownObjectRelease();
  v89 = v128;
  v90 = v132;
  (*(v135 + 16))(v128, v88, v132);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v92 = *(v138 + 4);
  v93 = (v138 + 16);
  if (EnumCaseMultiPayload == 1)
  {
    v94 = v129;
    v95 = v137;
    v92(v129, v89, v137);
    v96 = *v93;
    v97 = v124;
    (*v93)(v124, v94, v95);
    v98 = sub_1D96DA5B0();
    v99 = sub_1D96DA870();
    if (os_log_type_enabled(v98, v99))
    {
      v100 = swift_slowAlloc();
      v139 = v92;
      v101 = v100;
      v133 = swift_slowAlloc();
      v141[0] = v133;
      *v101 = 136315138;
      v96(v131, v97, v95);
      v102 = sub_1D96DA6E0();
      v104 = v103;
      (*(v138 + 1))(v97, v95);
      v105 = sub_1D96BB28C(v102, v104, v141);

      *(v101 + 4) = v105;
      _os_log_impl(&dword_1D96B3000, v98, v99, "editor posterData — fallbacking to: %s", v101, 0xCu);
      v106 = v133;
      __swift_destroy_boxed_opaque_existential_0Tm(v133);
      MEMORY[0x1DA736010](v106, -1, -1);
      v107 = v101;
      v92 = v139;
      MEMORY[0x1DA736010](v107, -1, -1);
    }

    else
    {

      (*(v138 + 1))(v97, v95);
    }

    (*(v135 + 8))(v134, v90);
    v121 = v136;
    v122 = v129;
  }

  else
  {
    v108 = v130;
    v95 = v137;
    v92(v130, v89, v137);
    v109 = *v93;
    v110 = v125;
    (*v93)(v125, v108, v95);
    v111 = sub_1D96DA5B0();
    v112 = sub_1D96DA870();
    if (os_log_type_enabled(v111, v112))
    {
      v113 = swift_slowAlloc();
      v139 = v92;
      v114 = v113;
      v133 = swift_slowAlloc();
      v141[0] = v133;
      *v114 = 136315138;
      v109(v131, v110, v95);
      v115 = sub_1D96DA6E0();
      v117 = v116;
      (*(v138 + 1))(v110, v95);
      v118 = sub_1D96BB28C(v115, v117, v141);

      *(v114 + 4) = v118;
      _os_log_impl(&dword_1D96B3000, v111, v112, "editor posterData — successfully loaded: %s", v114, 0xCu);
      v119 = v133;
      __swift_destroy_boxed_opaque_existential_0Tm(v133);
      MEMORY[0x1DA736010](v119, -1, -1);
      v120 = v114;
      v92 = v139;
      MEMORY[0x1DA736010](v120, -1, -1);
    }

    else
    {

      (*(v138 + 1))(v110, v95);
    }

    (*(v135 + 8))(v134, v90);
    v121 = v136;
    v122 = v130;
  }

  return (v92)(v121, v122, v95);
}

uint64_t static PosterDataLoader.comparePosterData(from:to:)@<X0>(void *a1@<X0>, char *a2@<X1>, char *a3@<X8>)
{
  v49 = a3;
  v6 = *(v3 + 80);
  v7 = sub_1D96DA920();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v41 - v13;
  v15 = MEMORY[0x1EEE9AC00](v12);
  v51 = &v41 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v41 - v17;
  [objc_msgSend(a1 environment)];
  v19 = v18;
  swift_unknownObjectRelease();
  swift_getObjectType();
  v50 = v3;
  PRPosterContents.posterData<A>()(v6, *(*(v3 + 88) + 8), v18);
  swift_unknownObjectRelease();
  if (qword_1EDB958B0 != -1)
  {
    swift_once();
  }

  v20 = sub_1D96DA5D0();
  __swift_project_value_buffer(v20, qword_1EDB969B8);
  v21 = *(v8 + 16);
  v21(v51, v18, v7);
  v21(v14, a2, v7);
  v22 = sub_1D96DA5B0();
  v23 = sub_1D96DA870();
  v24 = os_log_type_enabled(v22, v23);
  v48 = v14;
  if (v24)
  {
    v25 = swift_slowAlloc();
    v47 = a2;
    v26 = v25;
    v45 = swift_slowAlloc();
    v52 = v45;
    *v26 = 136315394;
    v44 = v22;
    v27 = v51;
    v21(v11, v51, v7);
    v41 = sub_1D96DA6E0();
    v46 = v18;
    v29 = v28;
    v30 = *(v8 + 8);
    v43 = v23;
    v30(v27, v7);
    v31 = sub_1D96BB28C(v41, v29, &v52);

    v42 = v26;
    *(v26 + 4) = v31;
    *(v26 + 12) = 2080;
    v32 = v48;
    v21(v11, v48, v7);
    v33 = sub_1D96DA6E0();
    v35 = v34;
    v30(v32, v7);
    v36 = sub_1D96BB28C(v33, v35, &v52);
    v19 = v46;

    v37 = v42;
    *(v42 + 14) = v36;
    v38 = v44;
    _os_log_impl(&dword_1D96B3000, v44, v43, "updateResult from renderer data: %s compared to %s", v37, 0x16u);
    v39 = v45;
    swift_arrayDestroy();
    MEMORY[0x1DA736010](v39, -1, -1);
    a2 = v47;
    MEMORY[0x1DA736010](v37, -1, -1);
  }

  else
  {

    v30 = *(v8 + 8);
    v30(v48, v7);
    v30(v51, v7);
  }

  static PosterDataLoader.compare(newData:with:)(v19, a2, v49);
  return (v30)(v19, v7);
}

{
  v95 = a2;
  v92 = a3;
  v5 = *(v3 + 80);
  v6 = sub_1D96DA920();
  v91 = *(v6 - 8);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v93 = v80 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v90 = v80 - v10;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = v80 - v12;
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = v80 - v15;
  v17 = MEMORY[0x1EEE9AC00](v14);
  v89 = v80 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = v80 - v20;
  v22 = *(v5 - 8);
  v23 = MEMORY[0x1EEE9AC00](v19);
  v87 = v80 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v88 = (v80 - v26);
  MEMORY[0x1EEE9AC00](v25);
  v28 = v80 - v27;
  v29 = a1;
  v30 = [a1 currentLook];
  static PosterDataLoader.from(look:)(v30);

  v31 = (*(v22 + 48))(v21, 1, v5);
  v94 = v3;
  if (v31 == 1)
  {
    v32 = v91;
    v88 = *(v91 + 1);
    v89 = v91 + 8;
    v88(v21, v6);
    [objc_msgSend(v29 environment)];
    swift_unknownObjectRelease();
    swift_getObjectType();
    PRPosterContents.posterData<A>()(v5, *(*(v3 + 88) + 8), v13);
    swift_unknownObjectRelease();
    if (qword_1EDB958B0 != -1)
    {
      swift_once();
    }

    v33 = sub_1D96DA5D0();
    __swift_project_value_buffer(v33, qword_1EDB969B8);
    v34 = *(v32 + 2);
    v35 = v90;
    v34(v90, v13, v6);
    v36 = v93;
    v34(v93, v95, v6);
    v37 = sub_1D96DA5B0();
    v38 = sub_1D96DA870();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      LODWORD(v86) = v38;
      v40 = v39;
      v41 = swift_slowAlloc();
      v85 = v37;
      v87 = v41;
      v96 = v41;
      *v40 = 136315394;
      v91 = v13;
      v42 = v16;
      v34(v16, v35, v6);
      v43 = sub_1D96DA6E0();
      v44 = v35;
      v46 = v45;
      v47 = v88;
      v88(v44, v6);
      v48 = sub_1D96BB28C(v43, v46, &v96);

      *(v40 + 4) = v48;
      *(v40 + 12) = 2080;
      v34(v42, v36, v6);
      v13 = v91;
      v49 = sub_1D96DA6E0();
      v51 = v50;
      v47(v36, v6);
      v52 = sub_1D96BB28C(v49, v51, &v96);

      *(v40 + 14) = v52;
      v53 = v85;
      _os_log_impl(&dword_1D96B3000, v85, v86, "updateResult from editor source contents: %s compared to %s", v40, 0x16u);
      v54 = v87;
      swift_arrayDestroy();
      MEMORY[0x1DA736010](v54, -1, -1);
      MEMORY[0x1DA736010](v40, -1, -1);
    }

    else
    {

      v47 = v88;
      v88(v36, v6);
      v47(v35, v6);
    }

    static PosterDataLoader.compare(newData:with:)(v13, v95, v92);
    return (v47)(v13, v6);
  }

  else
  {
    v55 = v91;
    v86 = v16;
    v93 = v6;
    (*(v22 + 32))(v28, v21, v5);
    if (qword_1EDB958B0 != -1)
    {
      swift_once();
    }

    v56 = sub_1D96DA5D0();
    __swift_project_value_buffer(v56, qword_1EDB969B8);
    v57 = v88;
    v90 = *(v22 + 16);
    (v90)(v88, v28, v5);
    v58 = v55;
    v59 = *(v55 + 2);
    v60 = v89;
    v61 = v93;
    v83 = v59;
    v59(v89, v95, v93);
    v62 = sub_1D96DA5B0();
    v84 = sub_1D96DA870();
    v85 = v62;
    if (os_log_type_enabled(v62, v84))
    {
      v63 = v60;
      v64 = swift_slowAlloc();
      v81 = swift_slowAlloc();
      v96 = v81;
      *v64 = 136315394;
      (v90)(v87, v57, v5);
      v65 = sub_1D96DA6E0();
      v87 = v28;
      v66 = v65;
      v82 = v22 + 16;
      v68 = v67;
      v69 = *(v22 + 8);
      v80[1] = (v22 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v69(v57, v5);
      v70 = sub_1D96BB28C(v66, v68, &v96);

      *(v64 + 4) = v70;
      *(v64 + 12) = 2080;
      v71 = v86;
      v83(v86, v63, v93);
      v72 = sub_1D96DA6E0();
      v74 = v73;
      v91 = *(v58 + 1);
      (v91)(v63, v93);
      v75 = v69;
      v76 = sub_1D96BB28C(v72, v74, &v96);
      v28 = v87;

      *(v64 + 14) = v76;
      v77 = v85;
      _os_log_impl(&dword_1D96B3000, v85, v84, "updateResult from editor look identifier: %s compared to %s", v64, 0x16u);
      v78 = v81;
      swift_arrayDestroy();
      MEMORY[0x1DA736010](v78, -1, -1);
      v61 = v93;
      MEMORY[0x1DA736010](v64, -1, -1);
    }

    else
    {

      v91 = *(v58 + 1);
      (v91)(v60, v61);
      v75 = *(v22 + 8);
      v75(v57, v5);
      v71 = v86;
    }

    (v90)(v71, v28, v5);
    (*(v22 + 56))(v71, 0, 1, v5);
    static PosterDataLoader.compare(newData:with:)(v71, v95, v92);
    (v91)(v71, v61);
    return (v75)(v28, v5);
  }
}

uint64_t static PosterDataLoader.compare(newData:with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v68 = a3;
  v6 = *(v3 + 80);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](a1);
  v66 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v64 = &v63 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v65 = &v63 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v63 = &v63 - v14;
  v15 = sub_1D96DA920();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v17 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2 - 8);
  v19 = &v63 - v18;
  v20 = *(v17 + 56);
  v21 = *(v15 - 8);
  v22 = *(v21 + 16);
  v22(&v63 - v18, a1, v15);
  v23 = a2;
  v24 = v6;
  v22(&v19[v20], v23, v15);
  v25 = v7;
  v26 = v7[6];
  if (v26(v19, 1, v6) == 1)
  {
    if (qword_1EDB958B0 != -1)
    {
      swift_once();
    }

    v27 = sub_1D96DA5D0();
    __swift_project_value_buffer(v27, qword_1EDB969B8);
    v28 = sub_1D96DA5B0();
    v29 = sub_1D96DA870();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_1D96B3000, v28, v29, "compare — newData nil", v30, 2u);
      MEMORY[0x1DA736010](v30, -1, -1);
    }

    v31 = *(v67 + 88);
    (*(v31 + 56))(v24, v31);
    type metadata accessor for PosterDataComparisonResult(0, v24, v31, v32);
    swift_storeEnumTagMultiPayload();
    return (*(v21 + 8))(&v19[v20], v15);
  }

  else if (v26(&v19[v20], 1, v6) == 1)
  {
    v34 = v7[4];
    v35 = v63;
    v34(v63, v19, v6);
    if (qword_1EDB958B0 != -1)
    {
      swift_once();
    }

    v36 = sub_1D96DA5D0();
    __swift_project_value_buffer(v36, qword_1EDB969B8);
    v37 = sub_1D96DA5B0();
    v38 = sub_1D96DA870();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_1D96B3000, v37, v38, "compare — new data not nil; old data nil", v39, 2u);
      MEMORY[0x1DA736010](v39, -1, -1);
    }

    v34(v68, v35, v24);
    type metadata accessor for PosterDataComparisonResult(0, v24, *(v67 + 88), v40);
    return swift_storeEnumTagMultiPayload();
  }

  else
  {
    v41 = v20;
    v42 = v7[2];
    v43 = v65;
    v42(v65, v19, v6);
    v44 = v64;
    v42(v64, &v19[v41], v6);
    v45 = *(v67 + 88);
    if (sub_1D96DA680())
    {
      if (qword_1EDB958B0 != -1)
      {
        swift_once();
      }

      v46 = sub_1D96DA5D0();
      __swift_project_value_buffer(v46, qword_1EDB969B8);
      v47 = sub_1D96DA5B0();
      v48 = sub_1D96DA870();
      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        *v49 = 0;
        _os_log_impl(&dword_1D96B3000, v47, v48, "compare — new and old data are equal", v49, 2u);
        MEMORY[0x1DA736010](v49, -1, -1);
      }

      v50 = v25[1];
      v50(v44, v24);
      v50(v43, v24);
      type metadata accessor for PosterDataComparisonResult(0, v24, v45, v51);
      swift_storeEnumTagMultiPayload();
      v50(&v19[v41], v24);
      return (v50)(v19, v24);
    }

    else
    {
      v52 = v44;
      v53 = v7[1];
      v53(v52, v6);
      v53(v43, v6);
      v54 = v7[4];
      v54(v66, v19, v6);
      if (qword_1EDB958B0 != -1)
      {
        swift_once();
      }

      v55 = sub_1D96DA5D0();
      __swift_project_value_buffer(v55, qword_1EDB969B8);
      v56 = sub_1D96DA5B0();
      v57 = sub_1D96DA870();
      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        v67 = v45;
        v59 = v41;
        v60 = v58;
        *v58 = 0;
        _os_log_impl(&dword_1D96B3000, v56, v57, "compare — new data different than old data", v58, 2u);
        v61 = v60;
        v41 = v59;
        v45 = v67;
        MEMORY[0x1DA736010](v61, -1, -1);
      }

      v54(v68, v66, v24);
      type metadata accessor for PosterDataComparisonResult(0, v24, v45, v62);
      swift_storeEnumTagMultiPayload();
      return (v53)(&v19[v41], v24);
    }
  }
}

uint64_t PosterData.init(lookIdentifier:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v32 = a5;
  v31 = sub_1D96DA920();
  v9 = *(v31 - 8);
  v10 = MEMORY[0x1EEE9AC00](v31);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v29 - v14;
  v16 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v18 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);

  v30 = a1;
  v19 = sub_1D96CDA70(a1, a2);
  (*(a4 + 40))(v19);
  v20 = *(v16 + 48);
  if (v20(v15, 1, a3) != 1)
  {

LABEL_6:
    v26 = v32;
    v27 = *(v16 + 32);
    v27(v18, v15, a3);
    v27(v26, v18, a3);
    v25 = 0;
    return (*(v16 + 56))(v26, v25, 1, a3);
  }

  v21 = v9 + 8;
  v22 = *(v9 + 8);
  v23 = v15;
  v24 = v31;
  v29 = v21;
  v22(v23, v31);
  (*(a4 + 48))(v30, a2, a3, a4);
  if (v20(v12, 1, a3) != 1)
  {
    v15 = v12;
    goto LABEL_6;
  }

  v22(v12, v24);
  v25 = 1;
  v26 = v32;
  return (*(v16 + 56))(v26, v25, 1, a3);
}

uint64_t PosterData.init(data:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a5@<X8>)
{
  v9 = sub_1D96DA920();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v15 - v10;
  sub_1D96DA2B0();
  swift_allocObject();
  sub_1D96DA2A0();
  sub_1D96DA290();
  sub_1D96CDF80(a1, a2);

  v12 = *(a3 - 8);
  v13 = *(v12 + 56);
  v13(v11, 0, 1, a3);
  (*(v12 + 32))(a5, v11, a3);
  return (v13)(a5, 0, 1, a3);
}

uint64_t PosterData.init(string:)@<X0>(uint64_t a2@<X2>, uint64_t a3@<X8>)
{

  v5 = *(*(a2 - 8) + 56);

  return v5(a3, 1, 1, a2);
}

id PosterData.editingLook.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 80))();
  (*(a2 + 72))(a1, a2);
  v4 = objc_allocWithZone(MEMORY[0x1E69C5288]);
  v5 = sub_1D96DA690();

  v6 = sub_1D96DA690();

  v7 = [v4 initWithIdentifier:v5 displayName:v6];

  return v7;
}

uint64_t sub_1D96CDA70(uint64_t a1, unint64_t a2)
{
  v45 = *MEMORY[0x1E69E9840];
  v39[0] = a1;
  v39[1] = a2;
  *&v42 = a1;
  *(&v42 + 1) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB3F388, &qword_1D96DD370);
  if (swift_dynamicCast())
  {
    sub_1D96BE49C(__src, &v43);
    __swift_project_boxed_opaque_existential_1(&v43, v44);
    sub_1D96DA3F0();
    __src[0] = v42;
    __swift_destroy_boxed_opaque_existential_0Tm(&v43);
    goto LABEL_63;
  }

  v41 = 0;
  memset(__src, 0, sizeof(__src));
  sub_1D96CE664(__src);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_67;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
    *&__src[0] = a1;
    *(&__src[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    v4 = __src;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = sub_1D96DA9D0();
  }

  sub_1D96CE6CC(&v43, v4, v5);
  v6 = *(&v43 + 1);
  v7 = v43;
  if (*(&v43 + 1) >> 60 != 15)
  {
    __src[0] = v43;
    goto LABEL_63;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_12:
  *&__src[0] = sub_1D96CEE70(v8);
  *(&__src[0] + 1) = v9;
  MEMORY[0x1EEE9AC00](*&__src[0]);
  v34[2] = v39;
  v10 = sub_1D96CE794(sub_1D96CEF10, v34);
  v14 = v10;
  v15 = v11;
  v16 = v12;
  v17 = *(&__src[0] + 1) >> 62;
  if ((*(&__src[0] + 1) >> 62) > 1)
  {
    if (v17 == 2)
    {
      v19 = *(*&__src[0] + 16);
      v18 = *(*&__src[0] + 24);
      v20 = __OFSUB__(v18, v19);
      v21 = v18 - v19;
      if (v20)
      {
        goto LABEL_70;
      }

      if (v13 != v21)
      {
        goto LABEL_23;
      }
    }

    else if (v13)
    {
      v22 = 0;
      goto LABEL_60;
    }
  }

  else if (v17)
  {
    if (__OFSUB__(DWORD1(__src[0]), __src[0]))
    {
      goto LABEL_71;
    }

    if (v13 != DWORD1(__src[0]) - LODWORD(__src[0]))
    {
LABEL_23:
      if (v17 == 2)
      {
        v22 = *(*&__src[0] + 24);
      }

      else if (v17 == 1)
      {
        v22 = *&__src[0] >> 32;
      }

      else
      {
        v22 = BYTE14(__src[0]);
      }

LABEL_60:
      if (v22 >= v13)
      {
        sub_1D96DA470();
LABEL_62:

        goto LABEL_63;
      }

      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
    }
  }

  else if (v13 != BYTE14(__src[0]))
  {
    goto LABEL_23;
  }

  v36 = v7;
  if ((v11 & 0x2000000000000000) != 0)
  {
    v23 = HIBYTE(v11) & 0xF;
  }

  else
  {
    v23 = v10 & 0xFFFFFFFFFFFFLL;
  }

  *(&v42 + 7) = 0;
  *&v42 = 0;
  if (4 * v23 == v12 >> 14)
  {
    goto LABEL_57;
  }

  v35 = v6;
  LOBYTE(v24) = 0;
  v25 = (v10 >> 59) & 1;
  if ((v11 & 0x1000000000000000) == 0)
  {
    LOBYTE(v25) = 1;
  }

  v26 = 4 << v25;
  v37 = (v11 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v38 = v11 & 0xFFFFFFFFFFFFFFLL;
  do
  {
    v27 = v16 & 0xC;
    v28 = v16;
    if (v27 == v26)
    {
      v28 = sub_1D96CECEC(v16, v14, v15);
    }

    v29 = v28 >> 16;
    if (v28 >> 16 >= v23)
    {
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      v8 = sub_1D96DA740();
      v7 = 0;
      v6 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v15 & 0x1000000000000000) != 0)
    {
      v31 = sub_1D96DA770();
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else if ((v15 & 0x2000000000000000) != 0)
    {
      *&v43 = v14;
      *(&v43 + 1) = v38;
      v31 = *(&v43 + v29);
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v30 = v37;
      if ((v14 & 0x1000000000000000) == 0)
      {
        v30 = sub_1D96DA9D0();
      }

      v31 = *(v30 + v29);
      if (v27 != v26)
      {
LABEL_46:
        if ((v15 & 0x1000000000000000) == 0)
        {
          goto LABEL_47;
        }

        goto LABEL_50;
      }
    }

    v16 = sub_1D96CECEC(v16, v14, v15);
    if ((v15 & 0x1000000000000000) == 0)
    {
LABEL_47:
      v16 = (v16 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_52;
    }

LABEL_50:
    if (v23 <= v16 >> 16)
    {
      goto LABEL_66;
    }

    v16 = sub_1D96DA750();
LABEL_52:
    *(&v42 + v24) = v31;
    v24 = v24 + 1;
    if ((v24 >> 8))
    {
      goto LABEL_65;
    }

    if (v24 == 14)
    {
      *&v43 = v42;
      *(&v43 + 6) = *(&v42 + 6);
      sub_1D96DA480();
      LOBYTE(v24) = 0;
    }
  }

  while (4 * v23 != v16 >> 14);
  v6 = v35;
  if (v24)
  {
    *&v43 = v42;
    *(&v43 + 6) = *(&v42 + 6);
    sub_1D96DA480();
    sub_1D96CEFCC(v36, v6);
    goto LABEL_62;
  }

LABEL_57:

  sub_1D96CEFCC(v36, v6);
LABEL_63:
  v32 = __src[0];
  sub_1D96CEF78(*&__src[0], *(&__src[0] + 1));

  sub_1D96CDF80(v32, *(&v32 + 1));
  return v32;
}

uint64_t sub_1D96CDF80(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_1D96CE060(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 16) - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_23;
  }

  v4 = v3 + 1;
  v5 = 8 * (v3 + 1);
  if ((v3 + 1) <= 3)
  {
    v8 = ((a2 + ~(-1 << v5) - 253) >> v5) + 1;
    if (HIWORD(v8))
    {
      v6 = *(a1 + v4);
      if (!v6)
      {
        goto LABEL_23;
      }

      goto LABEL_12;
    }

    if (v8 > 0xFF)
    {
      v6 = *(a1 + v4);
      if (!*(a1 + v4))
      {
        goto LABEL_23;
      }

      goto LABEL_12;
    }

    if (v8 < 2)
    {
LABEL_23:
      v10 = *(a1 + v3);
      if (v10 >= 3)
      {
        return (v10 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v6 = *(a1 + v4);
  if (!*(a1 + v4))
  {
    goto LABEL_23;
  }

LABEL_12:
  v9 = (v6 - 1) << v5;
  if (v4 > 3)
  {
    v9 = 0;
  }

  if (v4)
  {
    if (v4 > 3)
    {
      LODWORD(v4) = 4;
    }

    if (v4 > 2)
    {
      if (v4 == 3)
      {
        LODWORD(v4) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v4) = *a1;
      }
    }

    else if (v4 == 1)
    {
      LODWORD(v4) = *a1;
    }

    else
    {
      LODWORD(v4) = *a1;
    }
  }

  return (v4 | v9) + 254;
}

void sub_1D96CE16C(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  v6 = v5 + 1;
  if (a3 < 0xFE)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 253) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFD)
  {
    v8 = a2 - 254;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_37;
      }

      goto LABEL_34;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_37:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_37;
          }
        }

LABEL_34:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_37;
    }

    goto LABEL_34;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_23:
      a1[v5] = -a2;
      return;
    }

LABEL_22:
    if (!a2)
    {
      return;
    }

    goto LABEL_23;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_22;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_23;
  }
}

uint64_t sub_1D96CE330(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1D96CE394(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 16) - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_23;
  }

  v4 = v3 + 1;
  v5 = 8 * (v3 + 1);
  if ((v3 + 1) <= 3)
  {
    v8 = ((a2 + ~(-1 << v5) - 254) >> v5) + 1;
    if (HIWORD(v8))
    {
      v6 = *(a1 + v4);
      if (!v6)
      {
        goto LABEL_23;
      }

      goto LABEL_12;
    }

    if (v8 > 0xFF)
    {
      v6 = *(a1 + v4);
      if (!*(a1 + v4))
      {
        goto LABEL_23;
      }

      goto LABEL_12;
    }

    if (v8 < 2)
    {
LABEL_23:
      v10 = *(a1 + v3);
      if (v10 >= 2)
      {
        return (v10 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v6 = *(a1 + v4);
  if (!*(a1 + v4))
  {
    goto LABEL_23;
  }

LABEL_12:
  v9 = (v6 - 1) << v5;
  if (v4 > 3)
  {
    v9 = 0;
  }

  if (v4)
  {
    if (v4 > 3)
    {
      LODWORD(v4) = 4;
    }

    if (v4 > 2)
    {
      if (v4 == 3)
      {
        LODWORD(v4) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v4) = *a1;
      }
    }

    else if (v4 == 1)
    {
      LODWORD(v4) = *a1;
    }

    else
    {
      LODWORD(v4) = *a1;
    }
  }

  return (v4 | v9) + 255;
}

void sub_1D96CE4A0(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  v6 = v5 + 1;
  if (a3 < 0xFF)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 254) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFE)
  {
    v8 = a2 - 255;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_37;
      }

      goto LABEL_34;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_37:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_37;
          }
        }

LABEL_34:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_37;
    }

    goto LABEL_34;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_23:
      a1[v5] = -a2;
      return;
    }

LABEL_22:
    if (!a2)
    {
      return;
    }

    goto LABEL_23;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_22;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_23;
  }
}

uint64_t sub_1D96CE664(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB3F390, &qword_1D96DD378);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t *sub_1D96CE6CC@<X0>(uint64_t *__return_ptr a1@<X8>, _BYTE *__src@<X0>, unint64_t a3@<X1>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (__src && a3)
  {
    if (a3 <= 14)
    {
      result = sub_1D96CEDB8(__src, &__src[a3]);
      v6 = v9 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      sub_1D96DA350();
      swift_allocObject();
      v8 = sub_1D96DA300();
      if (a3 >= 0x7FFFFFFF)
      {
        sub_1D96DA460();
        result = swift_allocObject();
        result[2] = 0;
        result[3] = a3;
        v6 = v8 | 0x8000000000000000;
      }

      else
      {
        result = (a3 << 32);
        v6 = v8 | 0x4000000000000000;
      }
    }
  }

  *a1 = result;
  a1[1] = v6;
  return result;
}

char *sub_1D96CE794(void *(*a1)(uint64_t *__return_ptr, char *, char *), uint64_t a2)
{
  v4 = v2;
  v21[2] = *MEMORY[0x1E69E9840];
  v7 = *v2;
  v6 = v2[1];
  v8 = v6 >> 62;
  if ((v6 >> 62) <= 1)
  {
    if (!v8)
    {
      sub_1D96CDF80(v7, v6);
      v21[0] = v7;
      LOWORD(v21[1]) = v6;
      BYTE2(v21[1]) = BYTE2(v6);
      BYTE3(v21[1]) = BYTE3(v6);
      BYTE4(v21[1]) = BYTE4(v6);
      BYTE5(v21[1]) = BYTE5(v6);
      BYTE6(v21[1]) = BYTE6(v6);
      result = a1(&v19, v21, v21 + BYTE6(v6));
      if (!v3)
      {
        result = v19;
      }

      v10 = LODWORD(v21[1]) | ((WORD2(v21[1]) | (BYTE6(v21[1]) << 16)) << 32);
      *v4 = v21[0];
      v4[1] = v10;
      return result;
    }

    v13 = v6 & 0x3FFFFFFFFFFFFFFFLL;

    sub_1D96CDF80(v7, v6);
    *v4 = xmmword_1D96DD2C0;
    sub_1D96CDF80(0, 0xC000000000000000);
    v14 = v7 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v14 < v7)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (sub_1D96DA310() && __OFSUB__(v7, sub_1D96DA340()))
      {
LABEL_26:
        __break(1u);
      }

      sub_1D96DA350();
      swift_allocObject();
      v15 = sub_1D96DA2F0();

      v13 = v15;
    }

    if (v14 >= v7)
    {

      v17 = sub_1D96CEC38(v7, v7 >> 32, a1, v16);

      v12 = v13 | 0x4000000000000000;
      if (!v3)
      {
        *v4 = v7;
        v4[1] = v12;
        return v17;
      }

      *v4 = v7;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_25;
  }

  if (v8 == 2)
  {

    sub_1D96CDF80(v7, v6);
    v19 = v7;
    v20 = v6 & 0x3FFFFFFFFFFFFFFFLL;
    *v4 = xmmword_1D96DD2C0;
    sub_1D96CDF80(0, 0xC000000000000000);
    sub_1D96DA450();
    result = sub_1D96CEC38(*(v19 + 2), *(v19 + 3), a1, v11);
    v12 = v20 | 0x8000000000000000;
    if (!v3)
    {
      *v4 = v19;
      v4[1] = v12;
      return result;
    }

    *v4 = v19;
LABEL_21:
    v4[1] = v12;
    return result;
  }

  memset(v21, 0, 15);
  result = a1(&v19, v21, v21);
  if (!v3)
  {
    return v19;
  }

  return result;
}

_BYTE *sub_1D96CEB38@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_1D96CEDB8(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_1D96CEFE0(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_1D96CF05C(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

void *sub_1D96CEBCC(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    result = a1(&v6, a3, a4 - a3);
    if (!v4)
    {
      return v6;
    }
  }

  else
  {
    result = (a1)(&v6, 0, 0, 0, a4);
    if (!v4)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

char *sub_1D96CEC38(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *), __n128 a4)
{
  result = sub_1D96DA310();
  if (!result)
  {
    goto LABEL_12;
  }

  v9 = result;
  result = sub_1D96DA340();
  v10 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v11 = __OFSUB__(a2, a1);
  v12 = a2 - a1;
  if (v11)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v13 = sub_1D96DA330();
  if (v13 >= v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = v13;
  }

  result = a3(&v15, &v9[v10], &v9[v10 + v14]);
  if (!v4)
  {
    return v15;
  }

  return result;
}

unint64_t sub_1D96CECEC(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_1D96DA780();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x1DA735470](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_1D96CED68@<X0>(uint64_t result@<X0>, void *a4@<X8>)
{
  if (result)
  {
    result = sub_1D96DA9B0();
    if ((v5 & 1) == 0)
    {
      *a4 = 0;
      a4[1] = 0xE000000000000000;
      a4[2] = 15;
      a4[3] = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D96CEDB8(_BYTE *__src, _BYTE *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

uint64_t sub_1D96CEE70(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      if (result < 0)
      {
        __break(1u);
      }

      else
      {
        return 0;
      }
    }

    else
    {
      sub_1D96DA350();
      swift_allocObject();
      sub_1D96DA320();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_1D96DA460();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

void *sub_1D96CEF10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(v3 + 16);
  v7 = *v5;
  v6 = v5[1];
  v13[0] = v7;
  v13[1] = v6;
  v12[2] = v13;
  result = sub_1D96CEBCC(sub_1D96CF0E0, v12, a1, a2);
  *a3 = result;
  a3[1] = v9;
  a3[2] = v10;
  a3[3] = v11;
  return result;
}

double sub_1D96CEF78(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }

  return result;
}

uint64_t sub_1D96CEFCC(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1D96CDF80(result, a2);
  }

  return result;
}

uint64_t sub_1D96CEFE0(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_1D96DA350();
  swift_allocObject();
  result = sub_1D96DA300();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_1D96DA460();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_1D96CF05C(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_1D96DA350();
  swift_allocObject();
  result = sub_1D96DA300();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t PRPosterContents.posterData<A>()@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v48[4] = *MEMORY[0x1E69E9840];
  v7 = *(a1 - 8);
  v8 = MEMORY[0x1EEE9AC00](v3);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v46 - v12;
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v46 - v15;
  v48[0] = 0;
  v17 = [v14 loadUserInfoWithError_];
  v18 = v48[0];
  if (v17)
  {
    v19 = v17;
    v20 = sub_1D96DA630();
    v21 = v18;

    sub_1D96DA2B0();
    swift_allocObject();
    v22 = sub_1D96DA2A0();
    v48[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB3F398, &qword_1D96DD380);
    v48[0] = v20;
    sub_1D96CF850(a1, v48, v22, a1, a2);
    v47 = a3;

    __swift_destroy_boxed_opaque_existential_0Tm(v48);
    if (qword_1EDB958B0 != -1)
    {
      swift_once();
    }

    v35 = sub_1D96DA5D0();
    __swift_project_value_buffer(v35, qword_1EDB969B8);
    v36 = *(v7 + 16);
    v36(v13, v16, a1);
    v37 = sub_1D96DA5B0();
    v38 = sub_1D96DA890();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v48[0] = v46;
      *v39 = 136315138;
      v36(v10, v13, a1);
      v40 = sub_1D96DA6E0();
      v42 = v41;
      (*(v7 + 8))(v13, a1);
      v43 = sub_1D96BB28C(v40, v42, v48);

      *(v39 + 4) = v43;
      _os_log_impl(&dword_1D96B3000, v37, v38, "Decoded object from userInfo: %s", v39, 0xCu);
      v44 = v46;
      __swift_destroy_boxed_opaque_existential_0Tm(v46);
      MEMORY[0x1DA736010](v44, -1, -1);
      MEMORY[0x1DA736010](v39, -1, -1);
    }

    else
    {

      (*(v7 + 8))(v13, a1);
    }

    a3 = v47;
    (*(v7 + 32))(v47, v16, a1);
    v34 = 0;
  }

  else
  {
    v23 = v48[0];
    v24 = sub_1D96DA410();

    swift_willThrow();
    if (qword_1EDB958B0 != -1)
    {
      swift_once();
    }

    v25 = sub_1D96DA5D0();
    __swift_project_value_buffer(v25, qword_1EDB969B8);
    v26 = v24;
    v27 = sub_1D96DA5B0();
    v28 = sub_1D96DA880();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v48[0] = v30;
      *v29 = 136315138;
      swift_getErrorValue();
      v31 = sub_1D96DAB20();
      v33 = sub_1D96BB28C(v31, v32, v48);

      *(v29 + 4) = v33;
      _os_log_impl(&dword_1D96B3000, v27, v28, "Could not load userInfo from poster contents: %s", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v30);
      MEMORY[0x1DA736010](v30, -1, -1);
      MEMORY[0x1DA736010](v29, -1, -1);
    }

    else
    {
    }

    v34 = 1;
  }

  return (*(v7 + 56))(a3, v34, 1, a1);
}

uint64_t sub_1D96CF850(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v6 = objc_opt_self();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v14[0] = 0;
  v7 = [v6 dataWithJSONObject:sub_1D96DAAD0() options:0 error:v14];
  swift_unknownObjectRelease();
  v8 = v14[0];
  if (v7)
  {
    v9 = sub_1D96DA4A0();
    v11 = v10;

    sub_1D96DA290();
    return sub_1D96CDF80(v9, v11);
  }

  else
  {
    v13 = v8;
    sub_1D96DA410();

    return swift_willThrow();
  }
}

Swift::OpaquePointer_optional __swiftcall Encodable.userInfo()()
{
  v3 = v1;
  v4 = v0;
  sub_1D96DA2E0();
  swift_allocObject();
  v5 = sub_1D96DA2D0();
  sub_1D96CFA90(v2, v5, v4, v3);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB3F398, &qword_1D96DD380);
  if (swift_dynamicCast())
  {
    v7 = v8;
  }

  else
  {
    v7 = 0;
  }

  result.value._rawValue = v7;
  result.is_nil = v6;
  return result;
}

void sub_1D96CFA90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v5 = sub_1D96DA2C0();
  if (!v4)
  {
    v7 = v5;
    v8 = v6;
    v9 = objc_opt_self();
    v10 = sub_1D96DA490();
    v14[0] = 0;
    v11 = [v9 JSONObjectWithData:v10 options:4 error:v14];

    v12 = v14[0];
    if (v11)
    {
      sub_1D96DA930();
      sub_1D96CDF80(v7, v8);
      swift_unknownObjectRelease();
    }

    else
    {
      v13 = v12;
      sub_1D96DA410();

      swift_willThrow();
      sub_1D96CDF80(v7, v8);
    }
  }
}

uint64_t FloatingPoint.reverse.getter(uint64_t a1)
{
  v2 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  swift_getAssociatedConformanceWitness();
  sub_1D96DAAF0();
  sub_1D96DAAC0();
  sub_1D96DAA50();
  return (*(v2 + 8))(v4, a1);
}

uint64_t FloatingPoint.smoothstep.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v31 = a3;
  v26 = *(*(a2 + 16) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v30 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v9 = *(a1 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v26 - v14;
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v26 - v17;
  v19 = MEMORY[0x1EEE9AC00](v16);
  v28 = &v26 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v29 = &v26 - v21;
  v27 = v3;
  sub_1D96DA850();
  swift_getAssociatedConformanceWitness();
  sub_1D96DAAF0();
  sub_1D96DAAC0();
  sub_1D96DAAF0();
  sub_1D96DAAC0();
  sub_1D96DA850();
  v22 = *(v9 + 8);
  v22(v12, a1);
  v23 = v28;
  sub_1D96DAA50();
  v22(v15, a1);
  v22(v18, a1);
  v24 = v29;
  sub_1D96DA850();
  v22(v23, a1);
  return (v22)(v24, a1);
}

uint64_t FloatingPoint.toRadians.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v17[1] = a3;
  v17[2] = *(*(a2 + 16) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v6 = *(a1 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = v17 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v14 = v17 - v13;
  sub_1D96DA670();
  swift_getAssociatedConformanceWitness();
  sub_1D96DAAF0();
  sub_1D96DAAC0();
  sub_1D96DA660();
  v15 = *(v6 + 8);
  v15(v9, a1);
  v15(v12, a1);
  sub_1D96DA850();
  return (v15)(v14, a1);
}

uint64_t FloatingPoint.toDegrees.getter@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v17 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v6 = *(a1 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v17 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v17 - v13;
  swift_getAssociatedConformanceWitness();
  sub_1D96DAAF0();
  sub_1D96DAAC0();
  sub_1D96DA670();
  sub_1D96DA660();
  v15 = *(v6 + 8);
  v15(v9, a1);
  v15(v12, a1);
  sub_1D96DA850();
  return (v15)(v14, a1);
}

Swift::Double __swiftcall Double.truncate(to:)(Swift::Int to)
{
  v2 = v1;
  v3 = __exp10(to);
  return floor(v3 * v2) / v3;
}

Swift::Float __swiftcall Float.truncate(to:)(Swift::Int to)
{
  v2 = v1;
  v3 = __exp10f(to);
  return floorf(v3 * v2) / v3;
}

uint64_t sub_1D96D059C(uint64_t a1, uint64_t *a2)
{
  sub_1D96BE658(a1, v5, &qword_1ECB3EC68, &unk_1D96DC150);
  v3 = *a2;
  swift_beginAccess();
  sub_1D96D4F70(v5, v3 + 32, &qword_1ECB3EC68, &unk_1D96DC150);
  return swift_endAccess();
}

uint64_t WallpaperMetalCoordination.RenderingCoordinator.ContinuousRenderingToken.deinit()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB3F3A0, &qword_1D96DD3D8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v20 - v3;
  v6 = *(v0 + 32);
  v5 = *(v0 + 40);
  v7 = qword_1EDB960B0;

  if (v7 != -1)
  {
    swift_once();
  }

  v8 = sub_1D96DA5D0();
  __swift_project_value_buffer(v8, qword_1EDB960C0);

  v9 = sub_1D96DA5B0();
  v10 = sub_1D96DA870();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v21 = v12;
    *v11 = 136446210;
    *(v11 + 4) = sub_1D96BB28C(v6, v5, &v21);
    _os_log_impl(&dword_1D96B3000, v9, v10, "ContinuousRenderingToken “%{public}s” deinit", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v12);
    MEMORY[0x1DA736010](v12, -1, -1);
    MEMORY[0x1DA736010](v11, -1, -1);
  }

  if ((*(v1 + 24) & 1) != 0 || (Strong = swift_weakLoadStrong()) == 0)
  {
  }

  else
  {
    v14 = Strong;
    v15 = sub_1D96DA830();
    (*(*(v15 - 8) + 56))(v4, 1, 1, v15);
    sub_1D96DA810();

    v16 = sub_1D96DA800();
    v17 = swift_allocObject();
    v18 = MEMORY[0x1E69E85E0];
    v17[2] = v16;
    v17[3] = v18;
    v17[4] = v14;
    v17[5] = v6;
    v17[6] = v5;
    sub_1D96D09C8(0, 0, v4, &unk_1D96DD3E8, v17);
  }

  swift_weakDestroy();

  return v1;
}

uint64_t sub_1D96D08B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  sub_1D96DA810();
  v6[5] = sub_1D96DA800();
  v8 = sub_1D96DA7F0();

  return MEMORY[0x1EEE6DFA0](sub_1D96D0950, v8, v7);
}

uint64_t sub_1D96D0950()
{
  v1 = v0[4];
  v2 = v0[3];

  sub_1D96D4B68(v2, v1);
  v3 = v0[1];

  return v3();
}

uint64_t sub_1D96D09C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB3F3A0, &qword_1D96DD3D8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  sub_1D96BE658(a3, v25 - v10, &qword_1ECB3F3A0, &qword_1D96DD3D8);
  v12 = sub_1D96DA830();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1D96BE544(v11, &qword_1ECB3F3A0, &qword_1D96DD3D8);
  }

  else
  {
    sub_1D96DA820();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1D96DA7F0();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1D96DA6F0() + 32;
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

      sub_1D96BE544(a3, &qword_1ECB3F3A0, &qword_1D96DD3D8);

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

  sub_1D96BE544(a3, &qword_1ECB3F3A0, &qword_1D96DD3D8);
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

uint64_t WallpaperMetalCoordination.RenderingCoordinator.ContinuousRenderingToken.__deallocating_deinit()
{
  WallpaperMetalCoordination.RenderingCoordinator.ContinuousRenderingToken.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 48, 7);
}

uint64_t sub_1D96D0CFC()
{
  v0 = sub_1D96DA5D0();
  __swift_allocate_value_buffer(v0, qword_1EDB960C0);
  __swift_project_value_buffer(v0, qword_1EDB960C0);
  return sub_1D96DA5C0();
}

uint64_t sub_1D96D0D78(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1D96D0E40;

  return sub_1D96D08B4(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1D96D0E40()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t WallpaperMetalCoordination.RenderingCoordinator.__allocating_init(identifier:rendering:environment:lookIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v14 = swift_allocObject();
  WallpaperMetalCoordination.RenderingCoordinator.init(identifier:rendering:environment:lookIdentifier:)(a1, a2, a3, a4, a5, a6, a7);
  return v14;
}

uint64_t *WallpaperMetalCoordination.RenderingCoordinator.init(identifier:rendering:environment:lookIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v9 = v7;
  v89 = a7;
  v90 = a5;
  v87 = a6;
  v118 = a3;
  v88 = *v7;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB3F188, &qword_1D96DC850);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = v86 - v14;
  *(v7 + 2) = 0u;
  v16 = (v7 + 4);
  v9[8] = 0;
  *(v9 + 3) = 0u;
  v9[16] = 0;
  v9[17] = 0;
  sub_1D96D4F20(&v109);
  v17 = v116;
  *(v9 + 15) = v115;
  *(v9 + 16) = v17;
  *(v9 + 272) = v117;
  v18 = v112;
  *(v9 + 11) = v111;
  *(v9 + 12) = v18;
  v19 = v114;
  *(v9 + 13) = v113;
  *(v9 + 14) = v19;
  v20 = v110;
  *(v9 + 9) = v109;
  *(v9 + 10) = v20;
  v9[37] = 0;
  v9[38] = 0;
  v9[39] = MEMORY[0x1E69E7CD0];
  if (qword_1EDB95EA8 != -1)
  {
    swift_once();
  }

  v21 = qword_1EDB969E8;
  if (qword_1EDB969E8)
  {
    v86[2] = v8;
    v9[9] = a1;
    v9[10] = a2;
    v22 = v118;
    v9[2] = v118;
    v9[3] = a4;
    v23 = a4;
    v24 = *(v21 + OBJC_IVAR____TtCO26WatchFacesWallpaperSupport26WallpaperMetalCoordination9Resources_device);
    v9[11] = v24;
    v9[12] = *(v21 + OBJC_IVAR____TtCO26WatchFacesWallpaperSupport26WallpaperMetalCoordination9Resources_commandQueue);
    v25 = *(a4 + 8);
    v26 = v21;
    swift_unknownObjectRetain_n();
    swift_unknownObjectRetain();
    v86[1] = v26;

    v27 = v25(v22, v23);
    v28 = (*(v23 + 16))(v22, v23);
    v29 = objc_allocWithZone(type metadata accessor for WallpaperMetalView(0));
    v30 = sub_1D96BEB0C(v24, v27, v28);
    v9[13] = v30;
    v31 = qword_1EDB960B0;
    v32 = v30;
    if (v31 != -1)
    {
      swift_once();
    }

    v33 = sub_1D96DA5D0();
    v34 = __swift_project_value_buffer(v33, qword_1EDB960C0);
    v35 = *(v33 - 8);
    (*(v35 + 16))(v15, v34, v33);
    (*(v35 + 56))(v15, 0, 1, v33);
    v36 = OBJC_IVAR____TtC26WatchFacesWallpaperSupport18WallpaperMetalView_log;
    swift_beginAccess();
    sub_1D96D4F70(v15, &v32[v36], &unk_1ECB3F188, &qword_1D96DC850);
    swift_endAccess();

    *(v9[13] + OBJC_IVAR____TtC26WatchFacesWallpaperSupport18WallpaperMetalView_shouldDrawAutomatically) = 0;
    v37 = [objc_allocWithZone(MEMORY[0x1E6979398]) init];
    v9[14] = v37;
    v38 = qword_1EDB95BE0;
    v39 = v37;
    if (v38 != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB3F200, &qword_1D96DC160);
    v40 = sub_1D96DA620();
    v41 = &_swift_FORCE_LOAD___swiftMetal___WatchFacesWallpaperSupport;
    [v39 setActions_];

    [v9[14] setPosition_];
    [v9[14] setAnchorPoint_];
    v42 = v9[14];
    v43 = sub_1D96DA690();
    [v42 setName_];

    (*(v23 + 32))(v102);
    if (LOBYTE(v102[0]) == 2)
    {
      v44 = 0;
      v45 = v89;
      v46 = v87;
    }

    else
    {
      v44 = [objc_allocWithZone(MEMORY[0x1E6979398]) init];
      [v44 setAnchorPoint_];
      v52 = [v9[14] actions];
      if (v52)
      {
        v53 = v52;
        sub_1D96DA630();

        v54 = &_swift_FORCE_LOAD___swiftMetal___WatchFacesWallpaperSupport;
        v55 = sub_1D96DA620();
        v41 = &_swift_FORCE_LOAD___swiftMetal___WatchFacesWallpaperSupport;
      }

      else
      {
        v54 = &_swift_FORCE_LOAD___swiftMetal___WatchFacesWallpaperSupport;
        v55 = 0;
      }

      [v44 v41[83]];

      [v44 setHidden_];
      v56 = [objc_allocWithZone(MEMORY[0x1E6979398]) init];
      [v56 v54[82]];
      v57 = [v9[14] actions];
      if (v57)
      {
        v58 = v57;
        sub_1D96DA630();

        v59 = sub_1D96DA620();
      }

      else
      {
        v59 = 0;
      }

      v45 = v89;
      v46 = v87;
      [v56 setActions_];

      [v44 setMask_];
    }

    v9[15] = v44;
    v9[35] = v46;
    v9[36] = v45;

    v60 = v90;
    if ([v90 isSnapshot])
    {

      swift_unknownObjectRelease();

      v61 = *(v9 + 16);
      v106 = *(v9 + 15);
      v107 = v61;
      v108 = *(v9 + 272);
      v62 = *(v9 + 12);
      v102[2] = *(v9 + 11);
      v103 = v62;
      v63 = *(v9 + 14);
      v104 = *(v9 + 13);
      v105 = v63;
      v64 = *(v9 + 10);
      v102[0] = *(v9 + 9);
      v102[1] = v64;
      v65 = v114;
      *(v9 + 13) = v113;
      *(v9 + 14) = v65;
      v66 = v116;
      *(v9 + 15) = v115;
      *(v9 + 16) = v66;
      *(v9 + 272) = v117;
      v67 = v112;
      *(v9 + 11) = v111;
      *(v9 + 12) = v67;
      v68 = v110;
      v69 = v109;
    }

    else
    {
      *&v102[0] = v46;
      *(&v102[0] + 1) = v45;
      memset(&v102[1], 0, 21);
      sub_1D96C7D94(v60, v102, v91);

      v99 = v91[6];
      v100 = v91[7];
      v101 = v92;
      v95 = v91[2];
      v96 = v91[3];
      v97 = v91[4];
      v98 = v91[5];
      v93 = v91[0];
      v94 = v91[1];
      nullsub_2();
      v70 = *(v9 + 16);
      v106 = *(v9 + 15);
      v107 = v70;
      v108 = *(v9 + 272);
      v71 = *(v9 + 12);
      v102[2] = *(v9 + 11);
      v103 = v71;
      v72 = *(v9 + 14);
      v104 = *(v9 + 13);
      v105 = v72;
      v73 = *(v9 + 10);
      v102[0] = *(v9 + 9);
      v102[1] = v73;
      v74 = v98;
      *(v9 + 13) = v97;
      *(v9 + 14) = v74;
      v75 = v100;
      *(v9 + 15) = v99;
      *(v9 + 16) = v75;
      *(v9 + 272) = v101;
      v76 = v96;
      *(v9 + 11) = v95;
      *(v9 + 12) = v76;
      v69 = v93;
      v68 = v94;
    }

    *(v9 + 9) = v69;
    *(v9 + 10) = v68;
    sub_1D96BE544(v102, &qword_1ECB3F3A8, &unk_1D96DD3F8);
    v77 = v9[13];
    v78 = swift_allocObject();
    swift_weakInit();
    v79 = swift_allocObject();
    v80 = v88;
    *(v79 + 16) = v78;
    *(v79 + 24) = v80;
    v81 = &v77[OBJC_IVAR____TtC26WatchFacesWallpaperSupport18WallpaperMetalView_drawingHandler];
    v82 = *&v77[OBJC_IVAR____TtC26WatchFacesWallpaperSupport18WallpaperMetalView_drawingHandler];
    v83 = *&v77[OBJC_IVAR____TtC26WatchFacesWallpaperSupport18WallpaperMetalView_drawingHandler + 8];
    *v81 = sub_1D96D4F68;
    v81[1] = v79;
    v84 = v77;

    sub_1D96BEAFC(v82, v83);
  }

  else
  {

    sub_1D96BAB7C();
    swift_allocError();
    *v47 = 0;
    swift_willThrow();
    swift_unknownObjectRelease();
    sub_1D96BE544(v16, &qword_1ECB3EC68, &unk_1D96DC150);

    swift_unknownObjectRelease();
    v48 = *(v9 + 16);
    v106 = *(v9 + 15);
    v107 = v48;
    v108 = *(v9 + 272);
    v49 = *(v9 + 12);
    v102[2] = *(v9 + 11);
    v103 = v49;
    v50 = *(v9 + 14);
    v104 = *(v9 + 13);
    v105 = v50;
    v51 = *(v9 + 10);
    v102[0] = *(v9 + 9);
    v102[1] = v51;
    sub_1D96BE544(v102, &qword_1ECB3F3A8, &unk_1D96DD3F8);

    type metadata accessor for WallpaperMetalCoordination.RenderingCoordinator();
    swift_deallocPartialClassInstance();
  }

  return v9;
}

void sub_1D96D1928(void *a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = *(Strong + 224);
    v5 = *(Strong + 256);
    v27 = *(Strong + 240);
    v28 = v5;
    v6 = *(Strong + 160);
    v7 = *(Strong + 192);
    v23 = *(Strong + 176);
    v24 = v7;
    v8 = *(Strong + 192);
    v9 = *(Strong + 224);
    v25 = *(Strong + 208);
    v26 = v9;
    v10 = *(Strong + 160);
    v21 = *(Strong + 144);
    v22 = v10;
    v11 = *(Strong + 256);
    v36 = v27;
    v37 = v11;
    v32 = v23;
    v33 = v8;
    v34 = v25;
    v35 = v4;
    v29 = *(Strong + 272);
    v38 = *(Strong + 272);
    v30 = v21;
    v31 = v6;
    if (sub_1D96D4FD8(&v30) == 1)
    {
      if (qword_1EDB960B0 != -1)
      {
        swift_once();
      }

      v12 = sub_1D96DA5D0();
      __swift_project_value_buffer(v12, qword_1EDB960C0);
      v13 = sub_1D96DA5B0();
      v14 = sub_1D96DA880();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&dword_1D96B3000, v13, v14, "got a request to render, but have no non-snapshot state", v15, 2u);
        MEMORY[0x1DA736010](v15, -1, -1);
      }
    }

    else
    {
      v17[6] = v36;
      v17[7] = v37;
      v18 = v38;
      v17[2] = v32;
      v17[3] = v33;
      v17[4] = v34;
      v17[5] = v35;
      v17[0] = v30;
      v17[1] = v31;
      v19[6] = v27;
      v19[7] = v28;
      v20 = v29;
      v19[2] = v23;
      v19[3] = v24;
      v19[4] = v25;
      v19[5] = v26;
      v19[0] = v21;
      v19[1] = v22;
      sub_1D96BDAB0(v19, v16);
      sub_1D96D3B30(v17, 0, a1);

      sub_1D96BE544(&v21, &qword_1ECB3F3A8, &unk_1D96DD3F8);
    }
  }
}

void sub_1D96D1CB8(void *a1, void *a2)
{
  v3 = v2;
  swift_beginAccess();
  sub_1D96BE658(v2 + 32, &v104, &qword_1ECB3EC68, &unk_1D96DC150);
  v5 = *(&v105 + 1);
  sub_1D96BE544(&v104, &qword_1ECB3EC68, &unk_1D96DC150);
  if (!v5)
  {
    goto LABEL_6;
  }

  if (qword_1EDB960B0 != -1)
  {
    goto LABEL_57;
  }

  while (1)
  {
    v6 = sub_1D96DA5D0();
    __swift_project_value_buffer(v6, qword_1EDB960C0);
    v7 = sub_1D96DA5B0();
    v8 = sub_1D96DA880();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_1D96B3000, v7, v8, "renderer should be nil at this point — attaching multiple times?", v9, 2u);
      MEMORY[0x1DA736010](v9, -1, -1);
    }

LABEL_6:
    [a1 bounds];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v18 = [a1 window];
    if (!v18 || (v19 = v18, v20 = [v18 screen], v19, !v20))
    {
      v20 = [objc_opt_self() mainScreen];
    }

    [v20 nativeScale];
    v22 = v21;

    v114.origin.x = v11;
    v114.origin.y = v13;
    v114.size.width = v15;
    v114.size.height = v17;
    v23 = ceil(v22 * CGRectGetWidth(v114));
    if ((*&v23 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
      goto LABEL_56;
    }

    if (v23 <= -9.22337204e18)
    {
      goto LABEL_52;
    }

    if (v23 >= 9.22337204e18)
    {
      goto LABEL_53;
    }

    v115.origin.x = v11;
    v115.origin.y = v13;
    v115.size.width = v15;
    v115.size.height = v17;
    v24 = ceil(v22 * CGRectGetHeight(v115));
    if ((*&v24 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_54;
    }

    if (v24 <= -9.22337204e18)
    {
      goto LABEL_55;
    }

    if (v24 < 9.22337204e18)
    {
      break;
    }

LABEL_56:
    __break(1u);
LABEL_57:
    swift_once();
  }

  v102 = v24;
  v103 = v23;
  v25 = *(v3 + 104);
  v26 = v23;
  v27 = v24;
  v28 = [v25 layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setDrawableSize_];

  [v25 setBounds_];
  v29 = *(v3 + 112);
  [v29 setBounds_];
  [a1 addSubview_];
  v30 = [a1 layer];
  [v30 addSublayer_];

  v32 = *(v3 + 16);
  v31 = *(v3 + 24);
  (*(v31 + 32))(&v104, v32, v31);
  v33 = v104;
  v99 = v25;
  if (v104 == 2)
  {
    *(v3 + 128) = 0;
    goto LABEL_36;
  }

  v34 = [objc_opt_self() clearColor];
  [a2 setBackgroundColor_];

  v35 = *(v3 + 88);
  swift_unknownObjectRetain();
  v98 = [v25 layer];
  type metadata accessor for WallpaperMetalCoordination.FloatingLayerManager();
  v36 = swift_allocObject();
  *(v36 + 16) = [objc_allocWithZone(MEMORY[0x1E6979408]) init];
  *(v36 + 24) = [objc_allocWithZone(MEMORY[0x1E6979398]) init];
  *(v36 + 40) = 0;
  *(v36 + 48) = v33 & 1;
  if (v33)
  {
    v37 = 0;
    goto LABEL_19;
  }

  v96 = v3;
  v97 = v31;
  v38 = v32;
  v39 = [objc_opt_self() texture2DDescriptorWithPixelFormat:10 width:v103 height:v102 mipmapped:0];
  [v39 setUsage_];
  v40 = v39;
  [v39 setStorageMode_];
  *&v104 = MEMORY[0x1E69E7CC0];
  sub_1D96C5B88(0, 3, 0);
  v37 = v104;
  v41 = v113;
  v42 = sub_1D96C8B74(v103, v102, v35);
  v44 = v35;
  v113 = v41;
  if (v41)
  {
    goto LABEL_26;
  }

  v45 = v42;
  v46 = v43;
  v48 = *(v37 + 16);
  v47 = *(v37 + 24);
  v49 = v48 + 1;
  if (v48 >= v47 >> 1)
  {
    sub_1D96C5B88((v47 > 1), v48 + 1, 1);
    v49 = v48 + 1;
    v37 = v104;
  }

  *(v37 + 16) = v49;
  v50 = v37 + 16 * v48;
  *(v50 + 32) = v45;
  *(v50 + 40) = v46;
  v51 = sub_1D96C8B74(v103, v102, v44);
  v113 = 0;
  *&v104 = v37;
  v54 = *(v37 + 16);
  v53 = *(v37 + 24);
  if (v54 >= v53 >> 1)
  {
    v94 = v51;
    v92 = v52;
    sub_1D96C5B88((v53 > 1), v54 + 1, 1);
    v52 = v92;
    v51 = v94;
    v37 = v104;
  }

  *(v37 + 16) = v54 + 1;
  v55 = v37 + 16 * v54;
  *(v55 + 32) = v51;
  *(v55 + 40) = v52;
  v56 = v113;
  v57 = sub_1D96C8B74(v103, v102, v44);
  v113 = v56;
  if (v56)
  {
LABEL_26:

    swift_unknownObjectRelease();
    swift_deallocPartialClassInstance();
    if (qword_1EDB960B0 != -1)
    {
      swift_once();
    }

    v59 = sub_1D96DA5D0();
    __swift_project_value_buffer(v59, qword_1EDB960C0);
    v60 = v113;
    v61 = v113;
    v62 = sub_1D96DA5B0();
    v63 = sub_1D96DA880();

    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      *v64 = 138543362;
      v66 = v113;
      v67 = v113;
      v68 = _swift_stdlib_bridgeErrorToNSError();
      *(v64 + 4) = v68;
      *v65 = v68;
      _os_log_impl(&dword_1D96B3000, v62, v63, "couldn’t set up floating layer: %{public}@", v64, 0xCu);
      sub_1D96BE544(v65, &unk_1ECB3EF10, &qword_1D96DC4A0);
      MEMORY[0x1DA736010](v65, -1, -1);
      MEMORY[0x1DA736010](v64, -1, -1);
    }

    else
    {
    }

    v36 = 0;
    v113 = 0;
    v32 = v38;
    v3 = v96;
    v31 = v97;
  }

  else
  {
    *&v104 = v37;
    v90 = *(v37 + 16);
    v89 = *(v37 + 24);
    if (v90 >= v89 >> 1)
    {
      v95 = v57;
      v93 = v58;
      sub_1D96C5B88((v89 > 1), v90 + 1, 1);
      v58 = v93;
      v57 = v95;
      v37 = v104;
    }

    *(v37 + 16) = v90 + 1;
    v91 = v37 + 16 * v90;
    *(v91 + 32) = v57;
    *(v91 + 40) = v58;

    v32 = v38;
    v3 = v96;
    v31 = v97;
LABEL_19:
    *(v36 + 32) = v37;
    [*(v36 + 16) setSourceLayer_];
    [*(v36 + 16) setPosition_];
    [*(v36 + 16) setBounds_];
    [*(v36 + 16) setAnchorPoint_];
    [*(v36 + 24) setPosition_];
    [*(v36 + 24) setBounds_];
    [*(v36 + 16) setMask_];
    swift_unknownObjectRelease();
  }

  *(v3 + 128) = v36;

  if (v36)
  {
    v69 = [a2 layer];
    [v69 addSublayer_];
  }

  v70 = *(v3 + 120);
  if (v70)
  {
    v71 = v70;
    [v71 setBounds_];
    v72 = [v71 mask];
    [v72 setBounds_];

    v73 = [a2 &selRef_newArgumentEncoderWithBufferBinding_];
    [v73 addSublayer_];
  }

LABEL_36:

  if (((*(v31 + 24))(v32, v31) & 1) == 0)
  {
    v76 = v31;
    v101 = v32;
    v75 = 0;
    goto LABEL_40;
  }

  v74 = [*(v3 + 96) commandBuffer];
  if (v74)
  {
    v75 = v74;
    v76 = v31;
    v101 = v32;
    v77 = sub_1D96DA690();
    [v75 setLabel_];

    swift_unknownObjectRetain();
LABEL_40:
    v78 = v3;
    v79 = *(v3 + 88);
    v80 = *(v78 + 72);
    v81 = *(v78 + 80);
    v82 = *(v76 + 40);
    *(&v105 + 1) = v101;
    *&v106 = v76;
    __swift_allocate_boxed_opaque_existential_1(&v104);
    swift_unknownObjectRetain();

    v83 = v113;
    v82(v79, v80, v81, v103, v102, v75, v101, v76);
    if (v83)
    {
      swift_unknownObjectRelease();
      __swift_deallocate_boxed_opaque_existential_1(&v104);
    }

    else
    {
      swift_beginAccess();
      sub_1D96D4F70(&v104, v78 + 32, &qword_1ECB3EC68, &unk_1D96DC150);
      swift_endAccess();
      if (v75)
      {
        [v75 commit];
      }

      v84 = *(v78 + 256);
      v110 = *(v78 + 240);
      v111 = v84;
      v112 = *(v78 + 272);
      v85 = *(v78 + 192);
      v106 = *(v78 + 176);
      v107 = v85;
      v86 = *(v78 + 224);
      v108 = *(v78 + 208);
      v109 = v86;
      v87 = *(v78 + 160);
      v104 = *(v78 + 144);
      v105 = v87;
      if (sub_1D96D4FD8(&v104) != 1)
      {
        v99[OBJC_IVAR____TtC26WatchFacesWallpaperSupport18WallpaperMetalView_shouldDrawAutomatically] = 1;
        [v99 setNeedsDisplay];
      }

      swift_unknownObjectRelease();
    }
  }

  else
  {
    sub_1D96BAB7C();
    swift_allocError();
    *v88 = 1;
    swift_willThrow();
  }
}

uint64_t sub_1D96D28B8(void *a1, void *a2)
{
  v4 = v2;
  v6 = a1;
  v7 = [a1 contents];
  v8 = sub_1D96DA690();
  v9 = [v7 objectForUserInfoKey_];

  swift_unknownObjectRelease();
  if (v9)
  {
    sub_1D96DA930();
    swift_unknownObjectRelease();
  }

  else
  {
    v166 = 0u;
    v167 = 0u;
  }

  v173[0] = v166;
  v173[1] = v167;
  v146 = v3;
  v147 = v6;
  if (*(&v167 + 1))
  {
    if (swift_dynamicCast())
    {
      v10 = v153;
      if (v153 == *(v4 + 280) || (sub_1D96DAAE0() & 1) != 0)
      {
      }

      else
      {
        if (qword_1EDB960B0 != -1)
        {
          swift_once();
        }

        v110 = sub_1D96DA5D0();
        __swift_project_value_buffer(v110, qword_1EDB960C0);

        v111 = sub_1D96DA5B0();
        v112 = sub_1D96DA870();

        if (os_log_type_enabled(v111, v112))
        {
          v113 = swift_slowAlloc();
          v114 = v111;
          v115 = swift_slowAlloc();
          *&v173[0] = v115;
          *v113 = 136446210;
          *(v113 + 4) = sub_1D96BB28C(v10, *(&v10 + 1), v173);
          _os_log_impl(&dword_1D96B3000, v114, v112, "renderer got an update with a new look identifier %{public}s", v113, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v115);
          MEMORY[0x1DA736010](v115, -1, -1);
          MEMORY[0x1DA736010](v113, -1, -1);
        }

        else
        {
        }

        v6 = v147;
        *(v4 + 280) = v10;
      }
    }
  }

  else
  {
    sub_1D96BE544(v173, &unk_1ECB3F3B0, &qword_1D96DD408);
  }

  v11 = *(v4 + 288);
  *&v173[0] = *(v4 + 280);
  *(&v173[0] + 1) = v11;
  memset(&v173[1], 0, 21);
  swift_unknownObjectRetain();

  sub_1D96C7D94(v6, v173, &v180);
  if (!a2)
  {
LABEL_15:
    v40 = *(v4 + 256);
    *&v171[16] = *(v4 + 240);
    *&v171[32] = v40;
    v41 = *(v4 + 160);
    v42 = *(v4 + 192);
    v168 = *(v4 + 176);
    v169 = v42;
    v43 = *(v4 + 224);
    v44 = *(v4 + 192);
    v170 = *(v4 + 208);
    *v171 = v43;
    v45 = *(v4 + 160);
    v166 = *(v4 + 144);
    v167 = v45;
    v46 = *(v4 + 192);
    v162 = *(v4 + 176);
    v163 = v46;
    v164 = *(v4 + 208);
    v47 = *(v4 + 160);
    v160 = *(v4 + 144);
    v161 = v47;
    v173[0] = v160;
    v173[1] = v41;
    v174 = v44;
    v175 = v170;
    v172 = *(v4 + 272);
    v165 = *(v4 + 224);
    v48 = *(&v43 + 1);
    v49 = *&v171[16];
    v50 = *&v171[24];
    v51 = *&v171[32];
    v52 = *&v171[40];
    v53 = v172;
    v54 = *(v4 + 224);
    v173[2] = v168;
    *&v176 = v54;
    *(&v176 + 1) = *(&v43 + 1);
    v177 = *&v171[16];
    v178 = *&v171[32];
    v179 = v172;
    if (sub_1D96D4FD8(v173) == 1)
    {
      v155 = v162;
      v156 = v163;
      v157 = v164;
      v153 = v160;
      v154 = v161;
      *v158 = v165;
      *&v158[8] = v48;
      *&v158[16] = *&v171[16];
      *&v158[24] = *&v171[24];
      *&v158[32] = *&v171[32];
      *&v158[40] = *&v171[40];
      v159 = v172;
      sub_1D96BE658(&v166, v152, &qword_1ECB3F3A8, &unk_1D96DD3F8);
      sub_1D96BE544(&v153, &qword_1ECB3F3A8, &unk_1D96DD3F8);
    }

    else
    {
      v155 = v162;
      v156 = v163;
      v157 = v164;
      v153 = v160;
      v154 = v161;
      *v158 = v165;
      *&v158[8] = v48;
      *&v158[16] = *&v171[16];
      *&v158[24] = *&v171[24];
      *&v158[32] = *&v171[32];
      *&v158[40] = *&v171[40];
      v159 = v172;
      sub_1D96BE658(&v166, v152, &qword_1ECB3F3A8, &unk_1D96DD3F8);
      v137 = v50;
      sub_1D96BDB84(v48, v49, v50, *&v51, *&v52, v53 & 1);
      sub_1D96BE544(&v153, &qword_1ECB3F3A8, &unk_1D96DD3F8);
      if (v53)
      {
        v55 = v146;
        if (CFAbsoluteTimeGetCurrent() <= v51 + v52)
        {
          v145 = v49;
          v151 = v48;
          v60 = 0;
          v142 = 1;
          v59 = v137;
          goto LABEL_28;
        }

        sub_1D96BDB78(v48, v49, v137, *&v51, *&v52, 1);
LABEL_27:
        v151 = 0;
        v145 = 0;
        v59 = 0;
        v51 = 0.0;
        v52 = 0.0;
        v142 = -1;
        v60 = 1;
        goto LABEL_28;
      }
    }

    v55 = v146;
    goto LABEL_27;
  }

  v12 = a2;
  [v12 duration];
  if (v13 <= 0.0)
  {

    goto LABEL_15;
  }

  v144 = v12;
  v14 = *(v4 + 224);
  v15 = *(v4 + 256);
  *&v171[16] = *(v4 + 240);
  *&v171[32] = v15;
  v16 = *(v4 + 160);
  v17 = *(v4 + 192);
  v168 = *(v4 + 176);
  v169 = v17;
  v18 = *(v4 + 192);
  v19 = *(v4 + 224);
  v170 = *(v4 + 208);
  *v171 = v19;
  v20 = *(v4 + 160);
  v166 = *(v4 + 144);
  v167 = v20;
  v21 = *(v4 + 256);
  v177 = *&v171[16];
  v178 = v21;
  v173[2] = v168;
  v174 = v18;
  v175 = v170;
  v176 = v14;
  v172 = *(v4 + 272);
  v179 = *(v4 + 272);
  v173[0] = v166;
  v173[1] = v16;
  if (sub_1D96D4FD8(v173) == 1)
  {
    *&v158[16] = v186;
    *&v158[32] = v187;
    v157 = v184;
    *v158 = v185;
    v159 = v188;
    v155 = v182;
    v156 = v183;
    v153 = v180;
    v154 = v181;
    v150 = *&v158[24];
    v141 = *&v158[8];
    v136 = *(&v187 + 1);
    v132 = v188;
    v130 = v183;
    v131 = v184;
    v133 = v185;
    v22 = BYTE4(v185);
    v23 = BYTE10(v182);
    v24 = BYTE9(v182);
    v25 = BYTE8(v182);
    v26 = v181;
    v27 = *(&v181 + 1);
    v28 = v182;
    v29 = v180;
    v30 = *(&v180 + 1);
    sub_1D96BDAB0(&v153, v152);
    v31 = v23;
    v32 = v136;
    v33 = v26;
    v34 = v132;
    v36 = v130;
    v35 = v131;
    v37 = v133;
    v38 = v141;
    v39 = v150;
  }

  else
  {
    v29 = v166;
    v30 = *(&v166 + 1);
    v33 = v167;
    v27 = *(&v167 + 1);
    v28 = v168;
    v36 = v169;
    v35 = v170;
    v37 = *v171;
    v39 = *&v171[24];
    v38 = *&v171[8];
    v32 = *&v171[40];
    v34 = v172;
    v22 = v171[4];
    v31 = BYTE10(v168);
    v24 = BYTE9(v168);
    v25 = BYTE8(v168);
  }

  LOBYTE(v153) = v29;
  *(&v153 + 1) = v30;
  LOBYTE(v154) = v33;
  *(&v154 + 1) = v27;
  *&v155 = v28;
  BYTE8(v155) = v25 & 1;
  BYTE9(v155) = v24 & 1;
  BYTE10(v155) = v31 & 1;
  v156 = v36;
  v157 = v35;
  *v158 = v37;
  v158[4] = v22 & 1;
  *&v158[8] = v38;
  *&v158[24] = v39;
  *&v158[40] = v32;
  v159 = v34 & 1;
  v57 = *(&v38 + 1);
  v56 = v38;
  v58 = v39;
  sub_1D96BDB84(v38, *(&v38 + 1), v39, *(&v39 + 1), v32, v34 & 1);
  sub_1D96BE658(&v166, v152, &qword_1ECB3F3A8, &unk_1D96DD3F8);
  sub_1D96BDB0C(&v153);
  if (v34)
  {
    sub_1D96BDB78(v56, v57, v58, *(&v58 + 1), v32, 1);
    v55 = v146;
  }

  else
  {
    v55 = v146;
    v57 = v56;
  }

  if ([v147 deviceOrientation] == v57)
  {

    goto LABEL_27;
  }

  v151 = v57;
  if (qword_1EDB960B0 != -1)
  {
    swift_once();
  }

  v103 = sub_1D96DA5D0();
  __swift_project_value_buffer(v103, qword_1EDB960C0);
  swift_unknownObjectRetain();
  v104 = sub_1D96DA5B0();
  v105 = sub_1D96DA870();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v104, v105))
  {
    v106 = swift_slowAlloc();
    v107 = swift_slowAlloc();
    v152[0] = v107;
    *v106 = 136315394;
    v143 = v107;
    if (v151 > 2)
    {
      if (v151 != 3)
      {
        if (v151 == 4)
        {
          v109 = 0x70616373646E614CLL;
          v108 = 0xEE007466654C2065;
          goto LABEL_74;
        }

        goto LABEL_71;
      }

      v109 = 0x70616373646E614CLL;
      v108 = 0xEF74686769522065;
    }

    else
    {
      if (v151 != 1)
      {
        if (v151 == 2)
        {
          v108 = 0x80000001D96DE980;
          v109 = 0xD000000000000014;
          goto LABEL_74;
        }

LABEL_71:
        v109 = 0xD000000000000013;
        v108 = 0x80000001D96DE960;
        goto LABEL_74;
      }

      v108 = 0xE800000000000000;
      v109 = 0x7469617274726F50;
    }

LABEL_74:
    v117 = sub_1D96BB28C(v109, v108, v152);

    *(v106 + 4) = v117;
    *(v106 + 12) = 2080;
    v118 = [v147 deviceOrientation];
    if (v118 > 2)
    {
      if (v118 == 3)
      {
        v120 = 0x70616373646E614CLL;
        v119 = 0xEF74686769522065;
        goto LABEL_84;
      }

      if (v118 == 4)
      {
        v120 = 0x70616373646E614CLL;
        v119 = 0xEE007466654C2065;
        goto LABEL_84;
      }
    }

    else
    {
      if (v118 == 1)
      {
        v119 = 0xE800000000000000;
        v120 = 0x7469617274726F50;
        goto LABEL_84;
      }

      if (v118 == 2)
      {
        v119 = 0x80000001D96DE980;
        v120 = 0xD000000000000014;
LABEL_84:
        v121 = sub_1D96BB28C(v120, v119, v152);

        *(v106 + 14) = v121;
        _os_log_impl(&dword_1D96B3000, v104, v105, "🔄 renderer starting orientation transition %s → %s", v106, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1DA736010](v143, -1, -1);
        MEMORY[0x1DA736010](v106, -1, -1);

        v116 = v144;
        v55 = v146;
        goto LABEL_85;
      }
    }

    v120 = 0xD000000000000013;
    v119 = 0x80000001D96DE960;
    goto LABEL_84;
  }

  v116 = v144;
LABEL_85:
  v145 = [v147 deviceOrientation];
  v59 = [v116 timingFunction];
  if (!v59)
  {
    v59 = [objc_opt_self() functionWithName_];
  }

  Current = CFAbsoluteTimeGetCurrent();
  [v116 delay];
  v124 = Current + v123;
  [v116 duration];
  v125 = v124;
  v52 = v126;
  [v116 delay];
  v128 = v127;
  [v116 duration];
  sub_1D96BF0F8(v128 + v129);
  v51 = v125;

  v60 = 0;
  v142 = 1;
LABEL_28:
  v61 = [v147 isSnapshot];
  v62 = *(v4 + 104);
  v63 = OBJC_IVAR____TtC26WatchFacesWallpaperSupport18WallpaperMetalView_shouldDrawAutomatically;
  if (!v61)
  {
    v149 = *(v4 + 104);
    if ((v62[OBJC_IVAR____TtC26WatchFacesWallpaperSupport18WallpaperMetalView_shouldDrawAutomatically] & 1) == 0)
    {
      v134 = v52;
      v139 = v51;
      if (qword_1EDB960B0 != -1)
      {
        swift_once();
      }

      v81 = sub_1D96DA5D0();
      __swift_project_value_buffer(v81, qword_1EDB960C0);
      v82 = sub_1D96DA5B0();
      v83 = sub_1D96DA870();
      if (os_log_type_enabled(v82, v83))
      {
        v84 = v59;
        v85 = swift_slowAlloc();
        *v85 = 0;
        _os_log_impl(&dword_1D96B3000, v82, v83, "▶️ reenabling automatic drawing", v85, 2u);
        v86 = v85;
        v59 = v84;
        MEMORY[0x1DA736010](v86, -1, -1);
      }

      v52 = v134;
      v51 = v139;
      v62 = v149;
    }

    v62[v63] = 1;
    if ((v60 & 1) == 0)
    {
      v87 = *(&v185 + 1);
      v135 = *(&v186 + 1);
      v140 = v186;
      v88 = v187;
      v89 = v188;
      sub_1D96BDB84(v151, v145, v59, *&v51, *&v52, 1);
      sub_1D96BDB78(v87, v140, v135, v88, *(&v88 + 1), v89);
      *(&v185 + 1) = v151;
      *&v186 = v145;
      *(&v186 + 1) = v59;
      *&v187 = v51;
      *(&v187 + 1) = v52;
      v188 = 1;
    }

    *&v158[16] = v186;
    *&v158[32] = v187;
    v155 = v182;
    v156 = v183;
    v157 = v184;
    *v158 = v185;
    v153 = v180;
    v154 = v181;
    *&v171[16] = v186;
    *&v171[32] = v187;
    v168 = v182;
    v169 = v183;
    v170 = v184;
    *v171 = v185;
    v159 = v188;
    v172 = v188;
    v166 = v180;
    v167 = v181;
    nullsub_2();
    v90 = *(v4 + 256);
    v177 = *(v4 + 240);
    v178 = v90;
    v179 = *(v4 + 272);
    v91 = *(v4 + 192);
    v173[2] = *(v4 + 176);
    v174 = v91;
    v92 = *(v4 + 224);
    v175 = *(v4 + 208);
    v176 = v92;
    v93 = *(v4 + 160);
    v173[0] = *(v4 + 144);
    v173[1] = v93;
    v94 = *v171;
    *(v4 + 208) = v170;
    *(v4 + 224) = v94;
    v95 = *&v171[32];
    *(v4 + 240) = *&v171[16];
    *(v4 + 256) = v95;
    *(v4 + 272) = v172;
    v96 = v169;
    *(v4 + 176) = v168;
    *(v4 + 192) = v96;
    v97 = v167;
    *(v4 + 144) = v166;
    *(v4 + 160) = v97;
    sub_1D96BDAB0(&v153, v152);
    sub_1D96BE544(v173, &qword_1ECB3F3A8, &unk_1D96DD3F8);
    [v149 setNeedsDisplay];
    v98 = v151;
    v99 = v145;
    v100 = v59;
    v101 = *&v51;
    goto LABEL_50;
  }

  v138 = *&v51;
  v64 = v151;
  if (v62[OBJC_IVAR____TtC26WatchFacesWallpaperSupport18WallpaperMetalView_shouldDrawAutomatically])
  {
    v148 = *(v4 + 104);
    v65 = v52;
    if (qword_1EDB960B0 != -1)
    {
      swift_once();
    }

    v66 = sub_1D96DA5D0();
    __swift_project_value_buffer(v66, qword_1EDB960C0);
    v67 = sub_1D96DA5B0();
    v68 = sub_1D96DA870();
    if (os_log_type_enabled(v67, v68))
    {
      v69 = v59;
      v70 = swift_slowAlloc();
      *v70 = 0;
      _os_log_impl(&dword_1D96B3000, v67, v68, "⏸️ disabling automatic drawing", v70, 2u);
      v71 = v70;
      v59 = v69;
      MEMORY[0x1DA736010](v71, -1, -1);
    }

    v52 = v65;
    v62 = v148;
    v64 = v151;
  }

  v62[v63] = 0;
  v177 = v186;
  v178 = v187;
  v179 = v188;
  v173[2] = v182;
  v174 = v183;
  v175 = v184;
  v176 = v185;
  v173[0] = v180;
  v173[1] = v181;
  sub_1D96BDAB0(v173, &v166);
  sub_1D96D3B30(&v180, 1, 0);
  if (!v55)
  {
    *&v171[16] = v186;
    *&v171[32] = v187;
    v172 = v188;
    v168 = v182;
    v169 = v183;
    v170 = v184;
    *v171 = v185;
    v166 = v180;
    v167 = v181;
    sub_1D96BDB0C(&v166);
    v98 = v64;
    v99 = v145;
    v100 = v59;
    v101 = v138;
LABEL_50:
    sub_1D96BDB60(v98, v99, v100, v101, *&v52, v142);
    goto LABEL_51;
  }

  *&v171[16] = v186;
  *&v171[32] = v187;
  v172 = v188;
  v168 = v182;
  v169 = v183;
  v170 = v184;
  *v171 = v185;
  v166 = v180;
  v167 = v181;
  sub_1D96BDB0C(&v166);
  if (qword_1EDB960B0 != -1)
  {
    swift_once();
  }

  v72 = sub_1D96DA5D0();
  __swift_project_value_buffer(v72, qword_1EDB960C0);
  v73 = v55;
  v74 = sub_1D96DA5B0();
  v75 = sub_1D96DA880();

  if (os_log_type_enabled(v74, v75))
  {
    v76 = *&v52;
    v77 = swift_slowAlloc();
    v78 = swift_slowAlloc();
    *v77 = 138412290;
    v79 = v55;
    v80 = _swift_stdlib_bridgeErrorToNSError();
    *(v77 + 4) = v80;
    *v78 = v80;
    _os_log_impl(&dword_1D96B3000, v74, v75, "failed to render for snapshot: %@", v77, 0xCu);
    sub_1D96BE544(v78, &unk_1ECB3EF10, &qword_1D96DC4A0);
    MEMORY[0x1DA736010](v78, -1, -1);
    MEMORY[0x1DA736010](v77, -1, -1);
    sub_1D96BDB60(v64, v145, v59, v138, v76, v142);
  }

  else
  {
    sub_1D96BDB60(v64, v145, v59, v138, *&v52, v142);
  }

LABEL_51:
  v177 = v186;
  v178 = v187;
  v179 = v188;
  v173[2] = v182;
  v174 = v183;
  v175 = v184;
  v176 = v185;
  v173[0] = v180;
  v173[1] = v181;
  return sub_1D96BDB0C(v173);
}

uint64_t sub_1D96D3A50(uint64_t a1, unint64_t a2)
{
  type metadata accessor for WallpaperMetalCoordination.RenderingCoordinator.ContinuousRenderingToken();
  swift_allocObject();

  v6 = sub_1D96D5FD0(v5, a1, a2);

  swift_beginAccess();

  sub_1D96D5CDC(&v8, a1, a2);
  swift_endAccess();

  *(*(v2 + 104) + OBJC_IVAR____TtC26WatchFacesWallpaperSupport18WallpaperMetalView_wantsIndefiniteContinuousRendering) = 1;
  sub_1D96BFC4C();
  return v6;
}

void sub_1D96D3B30(uint64_t a1, char a2, void *a3)
{
  v5 = v3;
  v8 = *(a1 + 112);
  v144 = *(a1 + 96);
  v145 = v8;
  v146 = *(a1 + 128);
  v9 = *(a1 + 48);
  v140 = *(a1 + 32);
  v141 = v9;
  v10 = *(a1 + 80);
  v142 = *(a1 + 64);
  v143 = v10;
  v11 = *(a1 + 16);
  v138 = *a1;
  v139 = v11;
  swift_beginAccess();
  sub_1D96BE658(v3 + 32, &v126, &qword_1ECB3EC68, &unk_1D96DC150);
  if (*(&v127 + 1))
  {
    sub_1D96BE49C(&v126, v135);
    if (qword_1EDB960B0 != -1)
    {
      swift_once();
    }

    v12 = sub_1D96DA5D0();
    __swift_project_value_buffer(v12, qword_1EDB960C0);
    sub_1D96BDAB0(&v138, &v126);
    v13 = sub_1D96DA5B0();
    v14 = sub_1D96DA870();
    sub_1D96BDB0C(&v138);
    v15 = os_log_type_enabled(v13, v14);
    v123 = v3;
    v147 = v4;
    if (v15)
    {
      v16 = swift_slowAlloc();
      v120 = swift_slowAlloc();
      v124 = v120;
      *v16 = 136447234;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB3F3D8, &qword_1D96DD530);
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_1D96DD3C0;
      v18 = *(&v138 + 1);
      *(v17 + 56) = MEMORY[0x1E69E7DE0];
      v19 = a3;
      v20 = sub_1D96D6314();
      *(v17 + 64) = v20;
      *(v17 + 32) = v18;
      v21 = sub_1D96DA6D0();
      v23 = sub_1D96BB28C(v21, v22, &v124);

      *(v16 + 4) = v23;
      *(v16 + 12) = 2080;
      if (BYTE8(v140))
      {
        v24 = 5457241;
      }

      else
      {
        v24 = 20302;
      }

      if (BYTE8(v140))
      {
        v25 = 0xE300000000000000;
      }

      else
      {
        v25 = 0xE200000000000000;
      }

      v26 = sub_1D96BB28C(v24, v25, &v124);

      *(v16 + 14) = v26;
      *(v16 + 22) = 2082;
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_1D96DD3C0;
      v28 = *(&v139 + 1);
      *(v27 + 56) = MEMORY[0x1E69E7DE0];
      *(v27 + 64) = v20;
      *(v27 + 32) = v28;
      v29 = sub_1D96DA6D0();
      v31 = sub_1D96BB28C(v29, v30, &v124);

      *(v16 + 24) = v31;
      a3 = v19;
      *(v16 + 32) = 2080;
      v5 = v3;
      v32 = swift_allocObject();
      *(v32 + 16) = xmmword_1D96DD3C0;
      v132 = v144;
      v133 = v145;
      v134 = v146;
      v128 = v140;
      v129 = v141;
      v130 = v142;
      v131 = v143;
      v126 = v138;
      v127 = v139;
      v33 = WallpaperMetalCoordination.WallpaperState.rotationLandscapeAmount.getter();
      v34 = MEMORY[0x1E69E64A8];
      *(v32 + 56) = MEMORY[0x1E69E6448];
      *(v32 + 64) = v34;
      *(v32 + 32) = v33;
      v35 = sub_1D96DA6D0();
      v37 = sub_1D96BB28C(v35, v36, &v124);

      *(v16 + 34) = v37;
      *(v16 + 42) = 2082;
      if (a2)
      {
        v38 = 5457241;
      }

      else
      {
        v38 = 20302;
      }

      if (a2)
      {
        v39 = 0xE300000000000000;
      }

      else
      {
        v39 = 0xE200000000000000;
      }

      v40 = sub_1D96BB28C(v38, v39, &v124);

      *(v16 + 44) = v40;
      _os_log_impl(&dword_1D96B3000, v13, v14, "rendering state [unlock %{public}s, dark %s, dim %{public}s, land %s], is snapshot %{public}s", v16, 0x34u);
      swift_arrayDestroy();
      MEMORY[0x1DA736010](v120, -1, -1);
      MEMORY[0x1DA736010](v16, -1, -1);
    }

    if ((a2 & 1) == 0)
    {
      if (!a3)
      {
        v85 = sub_1D96DA5B0();
        v86 = sub_1D96DA880();
        if (os_log_type_enabled(v85, v86))
        {
          v87 = swift_slowAlloc();
          *v87 = 0;
          _os_log_impl(&dword_1D96B3000, v85, v86, "no drawable available", v87, 2u);
          MEMORY[0x1DA736010](v87, -1, -1);
        }

        goto LABEL_87;
      }

      v41 = [swift_unknownObjectRetain() texture];
LABEL_30:
      v49 = [*(v5 + 96) commandBuffer];
      if (!v49)
      {
        sub_1D96BAB7C();
        swift_allocError();
        *v54 = 2;
        swift_willThrow();
        swift_unknownObjectRelease();
LABEL_64:
        swift_unknownObjectRelease();
        goto LABEL_87;
      }

      v50 = *(v5 + 128);
      v121 = v49;
      v122 = a3;
      v119 = v41;
      if (v50)
      {
        if ((*(v50 + 48) & 1) == 0)
        {
          v53 = sub_1D96C8890();
          v118 = v88;
          v89 = 0;
LABEL_62:
          v96 = v136;
          v97 = v137;
          __swift_project_boxed_opaque_existential_1(v135, v136);
          v132 = v144;
          v133 = v145;
          v134 = v146;
          v128 = v140;
          v129 = v141;
          v130 = v142;
          v131 = v143;
          v126 = v138;
          v127 = v139;
          v124 = v53;
          v125 = v89;
          v98 = *(v97 + 48);
          sub_1D96D6274(v53, v89);
          v99 = v147;
          v98(&v126, v119, &v124, v121, v96, v97);
          if (!v99)
          {
            [v121 commit];
            v147 = 0;
            if (a2)
            {
              [v121 waitUntilCompleted];
              v101 = *(v123 + 112);
              v102 = *(v123 + 136);
              if (v102)
              {
                v103 = [v102 iosurface];
                v104 = v118;
                if (v103)
                {
                  *&v126 = v103;
                  type metadata accessor for IOSurfaceRef(0);
                  v105 = sub_1D96DAAD0();
                }

                else
                {
                  v105 = 0;
                }
              }

              else
              {
                v105 = 0;
                v104 = v118;
              }

              [v101 setContents_];
              swift_unknownObjectRelease();
              [v101 setHidden_];
              v113 = *(v123 + 120);
              if (v113)
              {
                v114 = v113;
                if ([v101 contents])
                {
                  sub_1D96DA930();
                  swift_unknownObjectRelease();
                  __swift_project_boxed_opaque_existential_1(&v126, *(&v127 + 1));
                  v115 = sub_1D96DAAD0();
                  __swift_destroy_boxed_opaque_existential_0Tm(&v126);
                }

                else
                {
                  v115 = 0;
                }

                [v114 setContents_];
                swift_unknownObjectRelease();
                [v114 setHidden_];
                v116 = [v114 mask];
                [v116 setContents_];
                swift_unknownObjectRelease();
                swift_unknownObjectRelease();
                sub_1D96D6298(v53, v89);

                swift_unknownObjectRelease();
              }

              else
              {
                swift_unknownObjectRelease();

                sub_1D96D6298(v53, v89);
                swift_unknownObjectRelease();
                swift_unknownObjectRelease();
              }
            }

            else
            {
              [v121 waitUntilScheduled];
              if (v122)
              {
                [v122 present];
              }

              if (v118)
              {
                v106 = *(v123 + 128);
                if (v106)
                {
                  [*(v106 + 24) setContents_];
                }
              }

              if (*(v123 + 136))
              {
                v107 = sub_1D96DA5B0();
                v108 = sub_1D96DA870();
                if (os_log_type_enabled(v107, v108))
                {
                  v109 = swift_slowAlloc();
                  *v109 = 0;
                  _os_log_impl(&dword_1D96B3000, v107, v108, "discarding snapshot resources", v109, 2u);
                  MEMORY[0x1DA736010](v109, -1, -1);
                }
              }

              *(v123 + 136) = 0;
              swift_unknownObjectRelease();
              v110 = *(v123 + 112);
              [v110 setContents_];
              [v110 setHidden_];
              v111 = *(v123 + 120);
              [v111 setContents_];
              v112 = [v111 mask];
              [v112 setContents_];

              [v111 setHidden_];
              swift_unknownObjectRelease();

              swift_unknownObjectRelease();
              sub_1D96D6298(v53, v89);
              swift_unknownObjectRelease();
            }

            goto LABEL_87;
          }

          [v121 commit];
          sub_1D96BAB7C();
          swift_allocError();
          *v100 = 2;
          swift_willThrow();
          swift_unknownObjectRelease();

          swift_unknownObjectRelease();
          sub_1D96D6298(v53, v89);

          goto LABEL_64;
        }

        if ((a2 & 1) == 0)
        {
          v53 = *(v50 + 24);
          v91 = v53;
          goto LABEL_55;
        }

        v51 = *(v5 + 120);
        if (v51)
        {

          v52 = [v51 mask];
          if (v52)
          {
            v53 = v52;

LABEL_55:
            v118 = 0;
            v89 = 1;
            goto LABEL_62;
          }
        }

        else
        {
        }

        v93 = sub_1D96DA5B0();
        v94 = sub_1D96DA880();
        if (os_log_type_enabled(v93, v94))
        {
          v95 = swift_slowAlloc();
          *v95 = 0;
          _os_log_impl(&dword_1D96B3000, v93, v94, "🚨 couldn’t find mask layer when creating snapshot! time occlusion may be wrong", v95, 2u);
          MEMORY[0x1DA736010](v95, -1, -1);
        }
      }

      v118 = 0;
      v53 = 0;
      v89 = -1;
      goto LABEL_62;
    }

    v41 = *(v5 + 136);
    if (v41)
    {
      swift_unknownObjectRetain();
      v42 = sub_1D96DA5B0();
      v43 = sub_1D96DA870();
      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        *v44 = 0;
        _os_log_impl(&dword_1D96B3000, v42, v43, "reusing existing snapshot texture", v44, 2u);
        MEMORY[0x1DA736010](v44, -1, -1);
      }

      a3 = 0;
      goto LABEL_30;
    }

    v117 = a2;
    v55 = sub_1D96DA5B0();
    v56 = sub_1D96DA870();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      *v57 = 0;
      _os_log_impl(&dword_1D96B3000, v55, v56, "making new snapshot texture", v57, 2u);
      MEMORY[0x1DA736010](v57, -1, -1);
    }

    v58 = *(v5 + 104);
    v59 = [v58 layer];
    objc_opt_self();
    [swift_dynamicCastObjCClassUnconditional() drawableSize];
    v61 = v60;
    v62 = v60;

    if ((*&v62 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v61 > -9.22337204e18)
    {
      if (v61 < 9.22337204e18)
      {
        v63 = [v58 layer];
        objc_opt_self();
        [swift_dynamicCastObjCClassUnconditional() drawableSize];
        v65 = v64;
        v66 = v64;

        if ((*&v66 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
        {
          if (v65 > -9.22337204e18)
          {
            if (v65 < 9.22337204e18)
            {
              v67 = *(v5 + 88);
              v68 = (*(*(v5 + 24) + 8))();
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB3F3D0, &unk_1D96DD520);
              inited = swift_initStackObject();
              *(inited + 16) = xmmword_1D96DD050;
              v70 = *MEMORY[0x1E696D130];
              *(inited + 32) = *MEMORY[0x1E696D130];
              v71 = MEMORY[0x1E69E6530];
              *(inited + 40) = v61;
              v72 = *MEMORY[0x1E696CF58];
              *(inited + 64) = v71;
              *(inited + 72) = v72;
              *(inited + 80) = v65;
              v73 = *MEMORY[0x1E696CE50];
              *(inited + 104) = v71;
              *(inited + 112) = v73;
              *(inited + 120) = 4;
              v74 = *MEMORY[0x1E696CFC0];
              *(inited + 144) = v71;
              *(inited + 152) = v74;
              *(inited + 184) = MEMORY[0x1E69E7668];
              *(inited + 160) = 1111970369;
              v75 = v70;
              v76 = v72;
              v77 = v73;
              v78 = v74;
              sub_1D96BE148(inited);
              swift_setDeallocating();
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB3EF30, &qword_1D96DC4B8);
              swift_arrayDestroy();
              type metadata accessor for CFString(0);
              sub_1D96D62BC();
              v79 = sub_1D96DA620();

              v80 = IOSurfaceCreate(v79);

              if (v80)
              {
                v81 = objc_opt_self();
                v82 = v80;
                v83 = [v81 texture2DDescriptorWithPixelFormat:v68 width:v61 height:v65 mipmapped:0];
                [v83 setUsage_];
                v84 = [v67 newTextureWithDescriptor:v83 iosurface:v82 plane:0];
                if (v84)
                {
                  v41 = v84;

                  v5 = v123;
                  *(v123 + 136) = v41;
                  swift_unknownObjectRetain();
                  swift_unknownObjectRelease();
                  a3 = 0;
                  a2 = v117;
                  goto LABEL_30;
                }

                sub_1D96BAB7C();
                swift_allocError();
                *v92 = 3;
                swift_willThrow();
              }

              else
              {
                sub_1D96BAB7C();
                swift_allocError();
                *v90 = 3;
                swift_willThrow();
              }

LABEL_87:
              __swift_destroy_boxed_opaque_existential_0Tm(v135);
              return;
            }

            goto LABEL_93;
          }

LABEL_92:
          __break(1u);
LABEL_93:
          __break(1u);
          return;
        }

LABEL_91:
        __break(1u);
        goto LABEL_92;
      }

LABEL_90:
      __break(1u);
      goto LABEL_91;
    }

    __break(1u);
    goto LABEL_90;
  }

  sub_1D96BE544(&v126, &qword_1ECB3EC68, &unk_1D96DC150);
  if (qword_1EDB960B0 != -1)
  {
    swift_once();
  }

  v45 = sub_1D96DA5D0();
  __swift_project_value_buffer(v45, qword_1EDB960C0);
  v46 = sub_1D96DA5B0();
  v47 = sub_1D96DA880();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    *v48 = 0;
    _os_log_impl(&dword_1D96B3000, v46, v47, "got a rendering environment update before our renderer is set up", v48, 2u);
    MEMORY[0x1DA736010](v48, -1, -1);
  }
}

void sub_1D96D4B68(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(*(v2 + 312) + 16);
  swift_beginAccess();
  sub_1D96D5100(a1, a2);
  swift_endAccess();

  if (v5)
  {
    if (!*(*(v2 + 312) + 16))
    {
      *(*(v2 + 104) + OBJC_IVAR____TtC26WatchFacesWallpaperSupport18WallpaperMetalView_wantsIndefiniteContinuousRendering) = 0;
      sub_1D96BFC4C();
    }
  }
}

uint64_t WallpaperMetalCoordination.RenderingCoordinator.deinit()
{
  sub_1D96BE544(v0 + 32, &qword_1ECB3EC68, &unk_1D96DC150);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  v1 = *(v0 + 256);
  v6[6] = *(v0 + 240);
  v6[7] = v1;
  v7 = *(v0 + 272);
  v2 = *(v0 + 192);
  v6[2] = *(v0 + 176);
  v6[3] = v2;
  v3 = *(v0 + 224);
  v6[4] = *(v0 + 208);
  v6[5] = v3;
  v4 = *(v0 + 160);
  v6[0] = *(v0 + 144);
  v6[1] = v4;
  sub_1D96BE544(v6, &qword_1ECB3F3A8, &unk_1D96DD3F8);

  return v0;
}

uint64_t WallpaperMetalCoordination.RenderingCoordinator.__deallocating_deinit()
{
  WallpaperMetalCoordination.RenderingCoordinator.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 320, 7);
}

uint64_t sub_1D96D4D30(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1D96D4E28;

  return v6(a1);
}

uint64_t sub_1D96D4E28()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

double sub_1D96D4F20(uint64_t a1)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0;
  *(a1 + 40) = 2;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0;
  return result;
}

uint64_t sub_1D96D4F70(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_1D96D4FD8(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = v1 >= 2;
  v3 = (v1 + 2147483646) & 0x7FFFFFFF;
  if (v2)
  {
    return (v3 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D96D4FF4(uint64_t a1)
{
  v3 = *v1;
  sub_1D96DAB70();
  MEMORY[0x1DA735890](a1);
  v4 = sub_1D96DAB90();
  v5 = -1 << *(v3 + 32);
  v6 = v4 & ~v5;
  if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  while (*(*(v3 + 48) + 8 * v6) != a1)
  {
    v6 = (v6 + 1) & v7;
    if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v1;
  v12 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1D96D523C();
    v10 = v12;
  }

  v11 = *(*(v10 + 48) + 8 * v6);
  sub_1D96D5970(v6);
  result = v11;
  *v1 = v12;
  return result;
}

uint64_t sub_1D96D5100(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_1D96DAB70();
  sub_1D96DA700();
  v6 = sub_1D96DAB90();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(v5 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_1D96DAAE0() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v2;
  v16 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1D96D537C();
    v14 = v16;
  }

  v12 = *(*(v14 + 48) + 16 * v8);
  sub_1D96D5B18(v8);
  *v2 = v16;
  return v12;
}

void *sub_1D96D523C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB3EF08, &qword_1D96DC498);
  v2 = *v0;
  v3 = sub_1D96DA960();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void sub_1D96D537C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB3F3C0, &unk_1D96DD510);
  v2 = *v0;
  v3 = sub_1D96DA960();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

uint64_t sub_1D96D54D8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB3F3C0, &unk_1D96DD510);
  result = sub_1D96DA970();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_1D96DAB70();

      sub_1D96DA700();
      result = sub_1D96DAB90();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_1D96D5710(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB3F3C0, &unk_1D96DD510);
  result = sub_1D96DA970();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_1D96DAB70();
      sub_1D96DA700();
      result = sub_1D96DAB90();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_1D96D5970(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_1D96DA950();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(*(v3 + 48) + 8 * v6);
        sub_1D96DAB70();
        MEMORY[0x1DA735890](v10);
        v11 = sub_1D96DAB90() & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + 8 * v2);
          v14 = (v12 + 8 * v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_1D96D5B18(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_1D96DA950();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_1D96DAB70();

        sub_1D96DA700();
        v10 = sub_1D96DAB90();

        v11 = v10 & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + 16 * v2);
          v14 = (v12 + 16 * v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_1D96D5CDC(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_1D96DAB70();
  sub_1D96DA700();
  v8 = sub_1D96DAB90();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_1D96DAAE0() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_1D96D5E2C(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

void sub_1D96D5E2C(uint64_t a1, uint64_t a2, unint64_t a3, char a4)
{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_1D96D5710(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      sub_1D96D537C();
      goto LABEL_16;
    }

    sub_1D96D54D8(v8 + 1);
  }

  v10 = *v4;
  sub_1D96DAB70();
  sub_1D96DA700();
  v11 = sub_1D96DAB90();
  v12 = -1 << *(v10 + 32);
  a3 = v11 & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      v15 = *v14 == a1 && v14[1] == a2;
      if (v15 || (sub_1D96DAAE0() & 1) != 0)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = a1;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return;
  }

  __break(1u);
LABEL_19:
  sub_1D96DAB00();
  __break(1u);
}

uint64_t sub_1D96D5FD0(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  swift_weakInit();
  if (qword_1EDB960B0 != -1)
  {
    swift_once();
  }

  v7 = sub_1D96DA5D0();
  __swift_project_value_buffer(v7, qword_1EDB960C0);

  v8 = sub_1D96DA5B0();
  v9 = sub_1D96DA870();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v13 = v11;
    *v10 = 136446210;
    *(v10 + 4) = sub_1D96BB28C(a2, a3, &v13);
    _os_log_impl(&dword_1D96B3000, v8, v9, "ContinuousRenderingToken “%{public}s“ init", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v11);
    MEMORY[0x1DA736010](v11, -1, -1);
    MEMORY[0x1DA736010](v10, -1, -1);
  }

  *(v4 + 32) = a2;
  *(v4 + 40) = a3;
  swift_weakAssign();
  *(v4 + 24) = 0;
  return v4;
}

id sub_1D96D6274(id result, char a2)
{
  if (a2 != -1)
  {
    return sub_1D96D628C(result, a2 & 1);
  }

  return result;
}

id sub_1D96D628C(id a1, char a2)
{
  if (a2)
  {
    return a1;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

double sub_1D96D6298(void *result, char a2)
{
  if (a2 != -1)
  {
    return sub_1D96D62B0(result, a2 & 1);
  }

  return v2;
}

double sub_1D96D62B0(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
    swift_unknownObjectRelease();
  }

  return result;
}

unint64_t sub_1D96D62BC()
{
  result = qword_1EDB95C40;
  if (!qword_1EDB95C40)
  {
    type metadata accessor for CFString(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB95C40);
  }

  return result;
}

unint64_t sub_1D96D6314()
{
  result = qword_1ECB3F3E0;
  if (!qword_1ECB3F3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB3F3E0);
  }

  return result;
}

uint64_t sub_1D96D6368(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D96D64D8;

  return sub_1D96D4D30(a1, v4);
}

uint64_t sub_1D96D6420(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D96D0E40;

  return sub_1D96D4D30(a1, v4);
}

uint64_t UnlockState.ScreenState.hashValue.getter()
{
  v1 = *v0;
  sub_1D96DAB70();
  MEMORY[0x1DA735890](v1);
  return sub_1D96DAB90();
}

uint64_t UnlockState.isTransitioning.getter()
{
  v1 = *(v0 + 8);
  v2 = v1 > 0.01;
  if (v1 >= 0.99)
  {
    v2 = 0;
  }

  return (*v0 == 2) & v2;
}

uint64_t UnlockState.description.getter()
{
  v1 = *v0;
  sub_1D96DA9A0();

  strcpy(v8, "screenState:");
  BYTE5(v8[1]) = 0;
  HIWORD(v8[1]) = -5120;
  v2 = 0xE800000000000000;
  v3 = 0x64656B636F6C6E75;
  if (v1 != 1)
  {
    v3 = 0x697469736E617274;
    v2 = 0xED0000676E696E6FLL;
  }

  if (v1)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0x64656B636F6CLL;
  }

  if (v1)
  {
    v5 = v2;
  }

  else
  {
    v5 = 0xE600000000000000;
  }

  MEMORY[0x1DA735440](v4, v5);

  MEMORY[0x1DA735440](0x6572676F7270202CLL, 0xEB000000003A7373);
  v6 = sub_1D96DA840();
  MEMORY[0x1DA735440](v6);

  return v8[0];
}

uint64_t UnlockState.ScreenState.description.getter()
{
  v1 = 0x64656B636F6C6E75;
  if (*v0 != 1)
  {
    v1 = 0x697469736E617274;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x64656B636F6CLL;
  }
}

uint64_t sub_1D96D67C0()
{
  v1 = 0x64656B636F6C6E75;
  if (*v0 != 1)
  {
    v1 = 0x697469736E617274;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x64656B636F6CLL;
  }
}

unint64_t sub_1D96D6828()
{
  result = qword_1ECB3F3F0;
  if (!qword_1ECB3F3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB3F3F0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for UnlockState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && a1[16])
  {
    return (*a1 + 254);
  }

  v3 = *a1;
  v4 = v3 >= 3;
  v5 = v3 - 3;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for UnlockState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for UnlockState.ScreenState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for UnlockState.ScreenState(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t TransitionDirection.hashValue.getter()
{
  v1 = *v0;
  sub_1D96DAB70();
  MEMORY[0x1DA735890](v1);
  return sub_1D96DAB90();
}

uint64_t StateTransition.init(previous:current:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v11 = *(*(a3 - 8) + 32);
  v11(a3 - 8, a4, a1);
  v9 = a4 + *(type metadata accessor for StateTransition(0, a3, v7, v8) + 28);

  return v11(v9, a2, a3);
}

void StateTransition<A>.transitionDirection.getter(char *a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 32);
  v4 = 2 * (v2 >= v3);
  if (v3 < v2)
  {
    v4 = 1;
  }

  *a1 = v4;
}

unint64_t sub_1D96D6C68()
{
  result = qword_1ECB3F3F8;
  if (!qword_1ECB3F3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB3F3F8);
  }

  return result;
}

uint64_t sub_1D96D6CD4(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1D96D6D44(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v6 = *(*(*(a3 + 16) - 8) + 64);
  v8 = ((v6 + *(v4 + 80)) & ~*(v4 + 80)) + v6;
  v9 = 8 * v8;
  if (v8 <= 3)
  {
    v11 = ((v7 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v8);
      if (!v10)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 > 0xFF)
    {
      v10 = *(a1 + v8);
      if (!*(a1 + v8))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v10 = *(a1 + v8);
  if (!*(a1 + v8))
  {
    goto LABEL_22;
  }

LABEL_11:
  v12 = (v10 - 1) << v9;
  if (v8 > 3)
  {
    v12 = 0;
  }

  if (v8)
  {
    if (v8 > 3)
    {
      LODWORD(v8) = 4;
    }

    if (v8 > 2)
    {
      if (v8 == 3)
      {
        LODWORD(v8) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v8) = *a1;
      }
    }

    else if (v8 == 1)
    {
      LODWORD(v8) = *a1;
    }

    else
    {
      LODWORD(v8) = *a1;
    }
  }

  return v5 + (v8 | v12) + 1;
}

char *sub_1D96D6E94(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = ((*(v5 + 64) + *(v5 + 80)) & ~*(v5 + 80)) + *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

uint64_t WatchFacesWallpaperSupportFeatureFlags.isEnabled.getter()
{
  v1 = *v0;
  v4[3] = &type metadata for WatchFacesWallpaperSupportFeatureFlags;
  v4[4] = sub_1D96D7104();
  LOBYTE(v4[0]) = v1;
  v2 = sub_1D96DA570();
  __swift_destroy_boxed_opaque_existential_0Tm(v4);
  return v2 & 1;
}

unint64_t sub_1D96D7104()
{
  result = qword_1EDB95B98;
  if (!qword_1EDB95B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB95B98);
  }

  return result;
}

uint64_t WatchFacesWallpaperSupportFeatureFlags.hashValue.getter()
{
  v1 = *v0;
  sub_1D96DAB70();
  MEMORY[0x1DA735890](v1);
  return sub_1D96DAB90();
}

const char *WatchFacesWallpaperSupportFeatureFlags.feature.getter()
{
  v1 = "catskill_poster";
  if (*v0 != 1)
  {
    v1 = "rhizome";
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return "extragalactic_poster";
  }
}

const char *sub_1D96D7250()
{
  v1 = "catskill_poster";
  if (*v0 != 1)
  {
    v1 = "rhizome";
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return "extragalactic_poster";
  }
}

uint64_t PrivateFeatureFlags.isEnabled.getter()
{
  v1 = *v0;
  v4[3] = &type metadata for PrivateFeatureFlags;
  v4[4] = sub_1D96D72F0();
  LOBYTE(v4[0]) = v1;
  v2 = sub_1D96DA570();
  __swift_destroy_boxed_opaque_existential_0Tm(v4);
  return v2 & 1;
}

unint64_t sub_1D96D72F0()
{
  result = qword_1ECB3F400;
  if (!qword_1ECB3F400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB3F400);
  }

  return result;
}

uint64_t PrivateFeatureFlags.hashValue.getter()
{
  v1 = *v0;
  sub_1D96DAB70();
  MEMORY[0x1DA735890](v1);
  return sub_1D96DAB90();
}

const char *PrivateFeatureFlags.feature.getter()
{
  if (*v0)
  {
    return "rhizome_design_tweaks";
  }

  else
  {
    return "catskill_design_tweaks";
  }
}

unint64_t sub_1D96D7414()
{
  result = qword_1ECB3F408;
  if (!qword_1ECB3F408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB3F408);
  }

  return result;
}

unint64_t sub_1D96D746C()
{
  result = qword_1ECB3F410;
  if (!qword_1ECB3F410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB3F410);
  }

  return result;
}

const char *sub_1D96D74D4()
{
  if (*v0)
  {
    return "rhizome_design_tweaks";
  }

  else
  {
    return "catskill_design_tweaks";
  }
}

__n128 static WakeState.on.getter@<Q0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  __asm { FMOV            V0.2D, #1.0 }

  *(a1 + 8) = result;
  return result;
}

uint64_t WakeState.ScreenState.hashValue.getter()
{
  v1 = *v0;
  sub_1D96DAB70();
  MEMORY[0x1DA735890](v1);
  return sub_1D96DAB90();
}

void static WakeState.off.getter(uint64_t a1@<X8>)
{
  *a1 = 1;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
}

uint64_t WakeState.ScreenState.description.getter()
{
  v1 = 6710895;
  if (*v0 != 1)
  {
    v1 = 0x697469736E617274;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 28271;
  }
}

uint64_t sub_1D96D76D0()
{
  v1 = 6710895;
  if (*v0 != 1)
  {
    v1 = 0x697469736E617274;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 28271;
  }
}

uint64_t WakeState.description.getter()
{
  v1 = *v0;
  sub_1D96DA9A0();
  MEMORY[0x1DA735440](0x74536E6565726373, 0xEC0000003A657461);
  v2 = 0xE300000000000000;
  v3 = 6710895;
  if (v1 != 1)
  {
    v3 = 0x697469736E617274;
    v2 = 0xED0000676E696E6FLL;
  }

  if (v1)
  {
    v4 = v3;
  }

  else
  {
    v4 = 28271;
  }

  if (v1)
  {
    v5 = v2;
  }

  else
  {
    v5 = 0xE200000000000000;
  }

  MEMORY[0x1DA735440](v4, v5);

  MEMORY[0x1DA735440](0xD000000000000011, 0x80000001D96DF7B0);
  v6 = sub_1D96DA840();
  MEMORY[0x1DA735440](v6);

  MEMORY[0x1DA735440](0xD000000000000014, 0x80000001D96DF7D0);
  v7 = sub_1D96DA840();
  MEMORY[0x1DA735440](v7);

  return 0;
}

unint64_t sub_1D96D7884()
{
  result = qword_1ECB3F418;
  if (!qword_1ECB3F418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB3F418);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WakeState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && a1[24])
  {
    return (*a1 + 254);
  }

  v3 = *a1;
  v4 = v3 >= 3;
  v5 = v3 - 3;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for WakeState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

uint64_t SnapshotManager.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = [objc_opt_self() defaultManager];
  *(v0 + 24) = sub_1D96BE270(MEMORY[0x1E69E7CC0]);
  return v0;
}

uint64_t SnapshotManager.init()()
{
  *(v0 + 16) = [objc_opt_self() defaultManager];
  *(v0 + 24) = sub_1D96BE270(MEMORY[0x1E69E7CC0]);
  return v0;
}

uint64_t sub_1D96D7A70@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_1D96DA440();
  v19 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v20[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v11 = a1[1];
  v12 = a1[2];
  v13 = [*(v3 + 16) URLsForDirectory:13 inDomains:1];
  v14 = sub_1D96DA7C0();

  if (*(v14 + 16))
  {
    (*(v19 + 16))(v9, v14 + ((*(v19 + 80) + 32) & ~*(v19 + 80)), v7);

    v15 = a2[3];
    v16 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v15);
    v20[0] = v10;
    v20[1] = v11;
    v20[2] = v12;
    (*(v16 + 16))(v20, v15, v16);
    sub_1D96DA420();

    (*(v19 + 8))(v9, v7);
    return (*(v19 + 56))(a3, 0, 1, v7);
  }

  else
  {

    v18 = *(v19 + 56);

    return v18(a3, 1, 1, v7);
  }
}

id sub_1D96D7CA0(void *a1, void *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  *&v5 = *a1;
  *(&v5 + 1) = v2;
  v6 = v3;
  if (v2 < 0)
  {
    return sub_1D96D845C(&v5, a2);
  }

  else
  {
    return sub_1D96D7CEC(&v5, a2);
  }
}

id sub_1D96D7CEC(uint64_t *a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB3F420, &unk_1D96DDA98);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v67 - v5;
  v7 = sub_1D96DA440();
  v71 = *(v7 - 8);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v69 = &v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v67 - v10;
  v13 = *a1;
  v12 = a1[1];
  v14 = a1[2];
  v15 = a2[3];
  v16 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v15);
  v74 = v13;
  v75 = v12;
  v76 = v14;
  v17 = (*(v16 + 8))(&v74, v15, v16);
  v67 = v13;
  v68 = v12;
  v74 = v13;
  v75 = v12;
  v18 = v14;
  v76 = v14;
  sub_1D96D7A70(&v74, a2, v6);
  v19 = v71;
  if ((*(v71 + 48))(v6, 1, v7) == 1)
  {
    sub_1D96BE544(v6, &qword_1ECB3F420, &unk_1D96DDA98);
    if (qword_1EDB95870 != -1)
    {
      swift_once();
    }

    v20 = sub_1D96DA5D0();
    __swift_project_value_buffer(v20, qword_1EDB969A0);
    sub_1D96D9314(a2, &v74);
    v21 = sub_1D96DA5B0();
    v22 = sub_1D96DA870();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v73 = v24;
      *v23 = 136315138;
      v25 = v17;
      v27 = v77;
      v26 = v78;
      __swift_project_boxed_opaque_existential_1(&v74, v77);
      v72[0] = v67;
      v72[1] = v68;
      v72[2] = v18;
      v28 = (*(v26 + 16))(v72, v27, v26);
      v30 = v29;
      __swift_destroy_boxed_opaque_existential_0Tm(&v74);
      v31 = sub_1D96BB28C(v28, v30, &v73);

      *(v23 + 4) = v31;
      _os_log_impl(&dword_1D96B3000, v21, v22, "_cachedOnDiskSnapshot: Could not generate URL for snapshotFilename: %s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v24);
      MEMORY[0x1DA736010](v24, -1, -1);
      MEMORY[0x1DA736010](v23, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_0Tm(&v74);
    }

    return 0;
  }

  (*(v19 + 32))(v11, v6, v7);
  if (qword_1EDB95870 != -1)
  {
    swift_once();
  }

  v70 = v17;
  v32 = sub_1D96DA5D0();
  v33 = __swift_project_value_buffer(v32, qword_1EDB969A0);
  v34 = v69;
  (*(v19 + 16))(v69, v11, v7);
  v35 = sub_1D96DA5B0();
  v36 = sub_1D96DA870();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v68 = v33;
    v38 = v37;
    v39 = swift_slowAlloc();
    v74 = v39;
    *v38 = 136315138;
    sub_1D96D9378();
    v40 = sub_1D96DAAB0();
    v41 = v34;
    v43 = v42;
    v44 = v19;
    v45 = v11;
    v46 = *(v44 + 8);
    v46(v41, v7);
    v47 = sub_1D96BB28C(v40, v43, &v74);

    *(v38 + 4) = v47;
    v48 = v36;
    v49 = v46;
    v11 = v45;
    _os_log_impl(&dword_1D96B3000, v35, v48, "_cachedOnDiskSnapshot: Looking for snapshot at URL: %s", v38, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v39);
    MEMORY[0x1DA736010](v39, -1, -1);
    MEMORY[0x1DA736010](v38, -1, -1);
  }

  else
  {

    v49 = *(v19 + 8);
    v49(v34, v7);
  }

  sub_1D96DA430();
  v50 = objc_allocWithZone(MEMORY[0x1E69DCAB8]);
  v51 = sub_1D96DA690();

  v52 = [v50 initWithContentsOfFile_];

  v53 = v70;
  v54 = sub_1D96DA5B0();
  v55 = sub_1D96DA870();

  v56 = os_log_type_enabled(v54, v55);
  if (!v52)
  {
    if (v56)
    {
      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      *v63 = 138543362;
      *(v63 + 4) = v53;
      *v64 = v53;
      v65 = v53;
      _os_log_impl(&dword_1D96B3000, v54, v55, "_cachedOnDiskSnapshot: No snapshot found on disk for key=%{public}@", v63, 0xCu);
      sub_1D96BE544(v64, &unk_1ECB3EF10, &qword_1D96DC4A0);
      MEMORY[0x1DA736010](v64, -1, -1);
      MEMORY[0x1DA736010](v63, -1, -1);
    }

    else
    {
      v65 = v54;
      v54 = v53;
    }

    v49(v11, v7);
    return 0;
  }

  if (v56)
  {
    v57 = swift_slowAlloc();
    v58 = v11;
    v59 = v49;
    v60 = swift_slowAlloc();
    *v57 = 138543362;
    *(v57 + 4) = v53;
    *v60 = v53;
    v61 = v53;
    _os_log_impl(&dword_1D96B3000, v54, v55, "_cachedOnDiskSnapshot: Found cached snapshot on disk for key=%{public}@", v57, 0xCu);
    sub_1D96BE544(v60, &unk_1ECB3EF10, &qword_1D96DC4A0);
    v62 = v60;
    v49 = v59;
    v11 = v58;
    MEMORY[0x1DA736010](v62, -1, -1);
    MEMORY[0x1DA736010](v57, -1, -1);
  }

  else
  {
    v61 = v54;
    v54 = v53;
  }

  v49(v11, v7);
  return v52;
}

void *sub_1D96D845C(__int128 *a1, void *a2)
{
  v23 = *a1;
  v3 = *(a1 + 2);
  v4 = a2[3];
  v5 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v4);
  v24 = v23;
  v25 = v3;
  v6 = (*(v5 + 8))(&v24, v4, v5);
  swift_beginAccess();
  v7 = *(v2 + 24);
  if (!*(v7 + 16))
  {
    goto LABEL_8;
  }

  v8 = sub_1D96BBA60(v6);
  if ((v9 & 1) == 0)
  {

LABEL_8:
    if (qword_1EDB95870 != -1)
    {
      swift_once();
    }

    v19 = sub_1D96DA5D0();
    __swift_project_value_buffer(v19, qword_1EDB969A0);
    v13 = v6;
    v14 = sub_1D96DA5B0();
    v20 = sub_1D96DA870();

    if (os_log_type_enabled(v14, v20))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 138543362;
      *(v16 + 4) = v13;
      *v17 = v13;
      v21 = v13;
      _os_log_impl(&dword_1D96B3000, v14, v20, "_cachedInMemorySnapshot: No snapshot found in memory for key=%{public}@", v16, 0xCu);
      v10 = 0;
      goto LABEL_12;
    }

    v10 = 0;
LABEL_14:
    v6 = v14;
    goto LABEL_15;
  }

  v10 = *(*(v7 + 56) + 8 * v8);
  v11 = v10;

  if (qword_1EDB95870 != -1)
  {
    swift_once();
  }

  v12 = sub_1D96DA5D0();
  __swift_project_value_buffer(v12, qword_1EDB969A0);
  v13 = v6;
  v14 = sub_1D96DA5B0();
  v15 = sub_1D96DA870();

  if (!os_log_type_enabled(v14, v15))
  {
    goto LABEL_14;
  }

  v16 = swift_slowAlloc();
  v17 = swift_slowAlloc();
  *v16 = 138543362;
  *(v16 + 4) = v13;
  *v17 = v13;
  v18 = v13;
  _os_log_impl(&dword_1D96B3000, v14, v15, "_cachedInMemorySnapshot: Found cached snapshot in memory for key=%{public}@", v16, 0xCu);
LABEL_12:
  sub_1D96BE544(v17, &unk_1ECB3EF10, &qword_1D96DC4A0);
  MEMORY[0x1DA736010](v17, -1, -1);
  MEMORY[0x1DA736010](v16, -1, -1);
  v13 = v14;
LABEL_15:

  return v10;
}

uint64_t sub_1D96D8738(UIImage *a1, uint64_t *a2, void *a3)
{
  v5 = *a2;
  v4 = a2[1];
  v6 = a2[2];
  if (v4 < 0)
  {
    v8 = a3[3];
    v9 = a3[4];
    __swift_project_boxed_opaque_existential_1(a3, v8);
    v15 = v5;
    v16 = v4;
    v17 = v6;
    v11 = (*(v9 + 8))(&v15, v8, v9);
    swift_beginAccess();
    v12 = a1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *(v3 + 24);
    *(v3 + 24) = 0x8000000000000000;
    sub_1D96BCF10(a1, v11, isUniquelyReferenced_nonNull_native);

    *(v3 + 24) = v14;
    return swift_endAccess();
  }

  else
  {
    v15 = *a2;
    v16 = v4;
    v17 = v6;
    return sub_1D96D8838(a1, &v15, a3);
  }
}

uint64_t sub_1D96D8838(UIImage *a1, uint64_t *a2, void *a3)
{
  v60 = a1;
  v5 = sub_1D96DA440();
  v62 = *(v5 - 8);
  v63 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v61 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB3F420, &unk_1D96DDA98);
  v7 = MEMORY[0x1EEE9AC00](v59);
  v9 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v58 = &v57 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v57 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v57 - v15;
  v17 = *a2;
  v18 = a2[1];
  v19 = a2[2];
  v20 = a3[3];
  v21 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v20);
  v65 = v17;
  v66 = v18;
  v67 = v19;
  v22 = (*(v21 + 8))(&v65, v20, v21);
  v65 = v17;
  v66 = v18;
  v67 = v19;
  v64 = v16;
  sub_1D96D7A70(&v65, a3, v16);
  if (qword_1EDB95870 != -1)
  {
    swift_once();
  }

  v23 = sub_1D96DA5D0();
  __swift_project_value_buffer(v23, qword_1EDB969A0);
  sub_1D96D92A4(v64, v14);
  v24 = sub_1D96DA5B0();
  v25 = sub_1D96DA870();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = v22;
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v65 = v28;
    *v27 = 136315138;
    if ((*(v62 + 48))(v14, 1, v63) == 1)
    {
      v29 = 0xEE004C5255746F68;
      v30 = 0x7370616E53206F4ELL;
    }

    else
    {
      sub_1D96D92A4(v14, v58);
      v30 = sub_1D96DA6E0();
      v29 = v33;
    }

    sub_1D96BE544(v14, &qword_1ECB3F420, &unk_1D96DDA98);
    v34 = sub_1D96BB28C(v30, v29, &v65);

    *(v27 + 4) = v34;
    _os_log_impl(&dword_1D96B3000, v24, v25, "_saveSnapshotToDisk: snapshotURL: %s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v28);
    MEMORY[0x1DA736010](v28, -1, -1);
    MEMORY[0x1DA736010](v27, -1, -1);

    v32 = v62;
    v31 = v63;
    v22 = v26;
  }

  else
  {

    sub_1D96BE544(v14, &qword_1ECB3F420, &unk_1D96DDA98);
    v32 = v62;
    v31 = v63;
  }

  sub_1D96D92A4(v64, v9);
  v35 = (*(v32 + 48))(v9, 1, v31);
  v36 = v61;
  if (v35 == 1)
  {
    sub_1D96BE544(v9, &qword_1ECB3F420, &unk_1D96DDA98);
  }

  else
  {
    (*(v32 + 32))(v61, v9, v31);
    v37 = UIImagePNGRepresentation(v60);
    if (v37)
    {
      v38 = v37;
      v39 = sub_1D96DA4A0();
      v41 = v40;

      sub_1D96DA4B0();
      v48 = v22;
      v49 = sub_1D96DA5B0();
      v50 = sub_1D96DA860();

      if (os_log_type_enabled(v49, v50))
      {
        v52 = swift_slowAlloc();
        v53 = v36;
        v54 = swift_slowAlloc();
        *v52 = 138543362;
        *(v52 + 4) = v48;
        *v54 = v48;
        v55 = v48;
        _os_log_impl(&dword_1D96B3000, v49, v50, "Saved snapshot view for key=%{public}@ to disk", v52, 0xCu);
        sub_1D96BE544(v54, &unk_1ECB3EF10, &qword_1D96DC4A0);
        MEMORY[0x1DA736010](v54, -1, -1);
        MEMORY[0x1DA736010](v52, -1, -1);
        sub_1D96CDF80(v39, v41);

        (*(v32 + 8))(v53, v31);
      }

      else
      {
        sub_1D96CDF80(v39, v41);

        (*(v32 + 8))(v36, v31);
      }

      return sub_1D96BE544(v64, &qword_1ECB3F420, &unk_1D96DDA98);
    }

    (*(v32 + 8))(v36, v31);
  }

  v42 = v22;
  v43 = sub_1D96DA5B0();
  v44 = sub_1D96DA880();

  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    *v45 = 138543362;
    *(v45 + 4) = v42;
    *v46 = v42;
    v47 = v42;
    _os_log_impl(&dword_1D96B3000, v43, v44, "Failed to create PNG data when saving snapshot to disk for key=%{public}@", v45, 0xCu);
    sub_1D96BE544(v46, &unk_1ECB3EF10, &qword_1D96DC4A0);
    MEMORY[0x1DA736010](v46, -1, -1);
    MEMORY[0x1DA736010](v45, -1, -1);
  }

  else
  {
    v47 = v43;
    v43 = v42;
  }

  return sub_1D96BE544(v64, &qword_1ECB3F420, &unk_1D96DDA98);
}

uint64_t sub_1D96D9070()
{
  swift_beginAccess();
  *(v0 + 24) = MEMORY[0x1E69E7CC8];
}

uint64_t SnapshotManager.__deallocating_deinit()
{

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

id sub_1D96D9140(void *a1, void *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  *&v5 = *a1;
  *(&v5 + 1) = v2;
  v6 = v3;
  if (v2 < 0)
  {
    return sub_1D96D845C(&v5, a2);
  }

  else
  {
    return sub_1D96D7CEC(&v5, a2);
  }
}

uint64_t sub_1D96D92A4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB3F420, &unk_1D96DDA98);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D96D9314(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_1D96D9378()
{
  result = qword_1ECB3F430;
  if (!qword_1ECB3F430)
  {
    sub_1D96DA440();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB3F430);
  }

  return result;
}

void SnapshotType.init(renderer:)(void *a1@<X0>, void *a2@<X8>)
{
  v4 = [objc_msgSend(a1 environment)];
  swift_unknownObjectRelease();
  if (v4)
  {
    v5 = [objc_msgSend(a1 environment)];
    swift_unknownObjectRelease();
    v6 = [objc_msgSend(a1 environment)];
    swift_unknownObjectRelease();
    if (v5)
    {

      a2[1] = 0;
      a2[2] = 0;
      *a2 = v6;
    }

    else
    {
      v7 = [a1 environment];
      swift_getObjectType();
      PRPosterRenderingEnvironment.unlockState.getter(v10);

      swift_unknownObjectRelease();
      v8 = v11;
      v9 = v10[0] | 0x8000000000000000;
      *a2 = v6;
      a2[1] = v9;
      a2[2] = v8;
    }
  }

  else
  {

    *a2 = xmmword_1D96DDAB0;
    a2[2] = 0;
  }
}

uint64_t SnapshotType.description.getter()
{
  v1 = 0x7469617274726F50;
  v2 = *v0;
  v3 = v0[1];
  if (v3 < 0)
  {
    v7 = 0x7265686374697773;
    if (v2 > 2)
    {
      if (v2 != 3)
      {
        if (v2 == 4)
        {
          v1 = 0x70616373646E614CLL;
          v5 = 0xEE007466654C2065;
          goto LABEL_21;
        }

        goto LABEL_18;
      }

      v1 = 0x70616373646E614CLL;
      v5 = 0xEF74686769522065;
    }

    else
    {
      if (v2 != 1)
      {
        if (v2 == 2)
        {
          v5 = 0x80000001D96DE980;
          v1 = 0xD000000000000014;
          goto LABEL_21;
        }

LABEL_18:
        v1 = 0xD000000000000013;
        v5 = 0x80000001D96DE960;
        goto LABEL_21;
      }

      v5 = 0xE800000000000000;
    }

LABEL_21:
    MEMORY[0x1DA735440](v1, v5);

    MEMORY[0x1DA735440](45, 0xE100000000000000);
    if (v3)
    {
      if (v3 == 1)
      {
        v1 = 0x64656B636F6C6E75;
      }

      else
      {
        v1 = 0x697469736E617274;
      }

      if (v3 == 1)
      {
        v4 = 0xE800000000000000;
      }

      else
      {
        v4 = 0xED0000676E696E6FLL;
      }
    }

    else
    {
      v4 = 0xE600000000000000;
      v1 = 0x64656B636F6CLL;
    }

    goto LABEL_29;
  }

  v4 = 0xE800000000000000;
  v7 = 0x2D77656976657270;
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v1 = 0x70616373646E614CLL;
      v4 = 0xEF74686769522065;
      goto LABEL_29;
    }

    if (v2 == 4)
    {
      v1 = 0x70616373646E614CLL;
      v4 = 0xEE007466654C2065;
      goto LABEL_29;
    }

    goto LABEL_16;
  }

  if (v2 != 1)
  {
    if (v2 == 2)
    {
      v4 = 0x80000001D96DE980;
      v1 = 0xD000000000000014;
      goto LABEL_29;
    }

LABEL_16:
    v1 = 0xD000000000000013;
    v4 = 0x80000001D96DE960;
  }

LABEL_29:
  MEMORY[0x1DA735440](v1, v4);

  return v7;
}

void PRRenderer.snapshotType.getter(void *a1@<X8>)
{
  v3 = v1;

  SnapshotType.init(renderer:)(v3, a1);
}

BOOL _s26WatchFacesWallpaperSupport12SnapshotTypeO2eeoiySbAC_ACtFZ_0(double *a1, double *a2)
{
  v3 = *a1;
  v2 = *(a1 + 1);
  v5 = *a2;
  v4 = *(a2 + 1);
  if ((v2 & 0x8000000000000000) == 0)
  {
    return v4 >= 0 && v3 == v5;
  }

  v8 = 0;
  if (v4 < 0 && v3 == v5)
  {
    return a1[2] == a2[2] && v4 == v2;
  }

  return v8;
}

uint64_t getEnumTagSinglePayload for SnapshotType(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8) >> 2;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for SnapshotType(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
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

LABEL_8:
      *result = 0;
      *(result + 8) = 4 * -a2;
      *(result + 16) = 0;
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t WallpaperMetalRenderingFloatingLayerStyle.hashValue.getter()
{
  v1 = *v0;
  sub_1D96DAB70();
  MEMORY[0x1DA735890](v1);
  return sub_1D96DAB90();
}

unint64_t sub_1D96D9978()
{
  result = qword_1ECB3F440;
  if (!qword_1ECB3F440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB3F440);
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_1D96D99FC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1D96D9A44(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

id sub_1D96D9B44()
{
  v1 = *v0;
  v2 = objc_allocWithZone(MEMORY[0x1E69793D0]);
  switch(v1)
  {
    case 1:
      LODWORD(v3) = 1054615798;
      v11 = 1058139013;
      goto LABEL_20;
    case 2:
      LODWORD(v4) = 1054951342;
      v8 = 1065017672;
      goto LABEL_8;
    case 3:
      LODWORD(v4) = 1052266988;
      v7 = 1059313418;
      goto LABEL_10;
    case 4:
      LODWORD(v4) = 1060320051;
      v7 = 1050253722;
      goto LABEL_10;
    case 5:
      LODWORD(v5) = 1044549468;
      LODWORD(v4) = 1060991140;
      v3 = 0.0;
      LODWORD(v6) = 1060991140;
      break;
    case 6:
      LODWORD(v4) = 1062165545;
      LODWORD(v5) = 1038174126;
      v10 = 1062501089;
      goto LABEL_17;
    case 7:
      LODWORD(v3) = 1061830001;
      LODWORD(v6) = 1036831949;
      v4 = 0.0;
      LODWORD(v5) = 0.75;
      break;
    case 8:
      LODWORD(v3) = 1063675494;
      v11 = 1035489772;
LABEL_20:
      LODWORD(v5) = v11;
      v4 = 0.0;
      LODWORD(v6) = 1.0;
      break;
    case 9:
      LODWORD(v4) = 1064849900;
      LODWORD(v5) = 1065185444;
      v10 = 1017370378;
      goto LABEL_17;
    case 10:
      LODWORD(v3) = 1059816735;
      LODWORD(v5) = 1065185444;
      LODWORD(v6) = 1058139013;
      v4 = 0.0;
      break;
    case 11:
      LODWORD(v4) = 1059816735;
      v8 = 1058139013;
LABEL_8:
      LODWORD(v5) = v8;
      v10 = 1065185444;
LABEL_17:
      LODWORD(v6) = v10;
      v3 = 0.0;
      break;
    case 12:
      LODWORD(v3) = 1064011039;
      LODWORD(v4) = 1041865114;
      LODWORD(v5) = 1034147594;
      v9 = 1062333317;
      goto LABEL_15;
    case 13:
      LODWORD(v3) = 1041865114;
      LODWORD(v4) = 1064011039;
      LODWORD(v5) = 1062333317;
      v9 = 1034147594;
LABEL_15:
      LODWORD(v6) = v9;
      break;
    default:
      LODWORD(v4) = 1054615798;
      v7 = 1058139013;
LABEL_10:
      LODWORD(v6) = v7;
      v3 = 0.0;
      LODWORD(v5) = 1.0;
      break;
  }

  return [v2 initWithControlPoints__:v3 :{v4, v5, v6}];
}

uint64_t TimingFunction.hashValue.getter()
{
  v1 = *v0;
  sub_1D96DAB70();
  MEMORY[0x1DA735890](v1);
  return sub_1D96DAB90();
}

float FloatingPoint<>.retimed(_:)(float a1)
{
  v2 = sub_1D96D9B44();
  *&v3 = a1;
  [v2 _solveForInput_];
  v5 = v4;

  return v5;
}

double FloatingPoint<>.retimed(_:)(double a1)
{
  v2 = sub_1D96D9B44();
  *&v3 = a1;
  [v2 _solveForInput_];
  LODWORD(a1) = v4;

  return *&a1;
}

unint64_t sub_1D96D9EE8()
{
  result = qword_1ECB3F448;
  if (!qword_1ECB3F448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB3F448);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TimingFunction(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF3)
  {
    goto LABEL_17;
  }

  if (a2 + 13 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 13) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 13;
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

      return (*a1 | (v4 << 8)) - 13;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 13;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v8 = v6 - 14;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TimingFunction(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF3)
  {
    v4 = 0;
  }

  if (a2 > 0xF2)
  {
    v5 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
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
    *result = a2 + 13;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t Keyframe.Name.hashValue.getter()
{
  v1 = *v0;
  sub_1D96DAB70();
  MEMORY[0x1DA735890](v1);
  return sub_1D96DAB90();
}

unint64_t Keyframe.Progress.description.getter()
{
  sub_1D96DA9A0();

  v0 = sub_1D96DA840();
  MEMORY[0x1DA735440](v0);

  MEMORY[0x1DA735440](0xD000000000000012, 0x80000001D96DF870);
  v1 = sub_1D96DA840();
  MEMORY[0x1DA735440](v1);

  MEMORY[0x1DA735440](41, 0xE100000000000000);
  return 0xD000000000000018;
}

unint64_t sub_1D96DA208()
{
  result = qword_1EDB958D8;
  if (!qword_1EDB958D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB958D8);
  }

  return result;
}