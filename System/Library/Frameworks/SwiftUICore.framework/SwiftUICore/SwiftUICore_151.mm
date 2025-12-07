_DWORD *assignWithTake for ValueActionDispatcher3(_DWORD *a1, int *a2, uint64_t a3)
{
  v5 = *a2;
  v4 = a2 + 7;
  *a1 = v5;
  v6 = ((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v6 = *(v4 & 0xFFFFFFFFFFFFFFFCLL);
  v7 = ((v6 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v8 = (((v4 & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v7 = *v8;
  v9 = *(a3 + 16);
  v10 = *(v9 - 8);
  v11 = *(v10 + 80);
  v12 = ((v7 + v11 + 4) & ~v11);
  v13 = ((v8 + v11 + 4) & ~v11);
  v14 = *(v10 + 48);
  v15 = v14(v12, 1, v9);
  v16 = v14(v13, 1, v9);
  if (v15)
  {
    if (!v16)
    {
      (*(v10 + 32))(v12, v13, v9);
      (*(v10 + 56))(v12, 0, 1, v9);
      goto LABEL_12;
    }

    v17 = *(v10 + 84);
    v18 = *(v10 + 64);
  }

  else
  {
    if (!v16)
    {
      (*(v10 + 40))(v12, v13, v9);
      goto LABEL_12;
    }

    (*(v10 + 8))(v12, v9);
    v17 = *(v10 + 84);
    v18 = *(v10 + 64);
  }

  if (v17)
  {
    v19 = v18;
  }

  else
  {
    v19 = v18 + 1;
  }

  memcpy(v12, v13, v19);
LABEL_12:
  if (*(v10 + 84))
  {
    v20 = *(v10 + 64);
  }

  else
  {
    v20 = *(v10 + 64) + 1;
  }

  v21 = ((v12 + v20 + 3) & 0xFFFFFFFFFFFFFFFCLL);
  v22 = ((v13 + v20 + 3) & 0xFFFFFFFFFFFFFFFCLL);
  *v21 = *v22;
  v23 = (v21 + 7) & 0xFFFFFFFFFFFFFFFCLL;
  v24 = (v22 + 7) & 0xFFFFFFFFFFFFFFFCLL;
  *v23 = *v24;
  *(v23 + 4) = *(v24 + 4);
  *(v23 + 8) = *(v24 + 8);
  *(v23 + 12) = *(v24 + 12);
  return a1;
}

uint64_t getEnumTagSinglePayload for ValueActionDispatcher3(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (v5)
  {
    v6 = v5 - 1;
  }

  else
  {
    v6 = 0;
  }

  if (v6 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v4 + 80);
  v9 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v9;
  }

  if (!a2)
  {
    return 0;
  }

  v10 = v9 + 3;
  if (v7 >= a2)
  {
    goto LABEL_32;
  }

  v11 = ((((v10 + ((v8 + 12) & ~v8)) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 13;
  v12 = (a2 - v7 + 255) >> 8;
  if (v11 <= 3)
  {
    v13 = v12 + 1;
  }

  else
  {
    v13 = 2;
  }

  if (v13 >= 0x10000)
  {
    v14 = 4;
  }

  else
  {
    v14 = 2;
  }

  if (v13 < 0x100)
  {
    v14 = 1;
  }

  if (v13 >= 2)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  if (v15 > 1)
  {
    if (v15 == 2)
    {
      v16 = *&a1[v11];
      if (*&a1[v11])
      {
        goto LABEL_25;
      }
    }

    else
    {
      v16 = *&a1[v11];
      if (v16)
      {
        goto LABEL_25;
      }
    }

    goto LABEL_32;
  }

  if (!v15 || (v16 = a1[v11]) == 0)
  {
LABEL_32:
    v19 = (((((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + v8 + 4) & ~v8;
    if (v6 >= 0xFE)
    {
      v20 = (*(v4 + 48))(v19);
      if (v20 >= 2)
      {
        return v20 - 1;
      }

      else
      {
        return 0;
      }
    }

    v22 = *(((((v10 + v19) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 12);
    if (v22 >= 2)
    {
      return ((v22 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    return 0;
  }

LABEL_25:
  v17 = (v16 - 1) << (8 * v11);
  if (v11 <= 3)
  {
    v18 = *a1;
  }

  else
  {
    v17 = 0;
    v18 = *a1;
  }

  return v7 + (v18 | v17) + 1;
}

void storeEnumTagSinglePayload for ValueActionDispatcher3(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(*(a4 + 16) - 8);
  v8 = *(v7 + 84);
  v9 = v8 - 1;
  if (!v8)
  {
    v9 = 0;
  }

  if (v9 <= 0xFE)
  {
    v10 = 254;
  }

  else
  {
    v10 = v9;
  }

  v11 = *(v7 + 80);
  v12 = *(*(*(a4 + 16) - 8) + 64);
  if (!v8)
  {
    ++v12;
  }

  v13 = ((((v12 + 3 + ((v11 + 12) & ~v11)) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 13;
  if (v10 < a3)
  {
    v14 = (a3 - v10 + 255) >> 8;
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
      v6 = v16;
    }

    else
    {
      v6 = 0;
    }
  }

  if (v10 >= a2)
  {
    if (v6 > 1)
    {
      if (v6 != 2)
      {
        *&a1[v13] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_38;
      }

      *&a1[v13] = 0;
    }

    else if (v6)
    {
      a1[v13] = 0;
      if (!a2)
      {
        return;
      }

LABEL_38:
      v19 = ((((((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + v11 + 4) & ~v11);
      if (v9 < 0xFE)
      {
        v23 = ((&v19[v12 + 3] & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL;
        if (a2 > 0xFE)
        {
          *(v23 + 12) = 0;
          *(v23 + 8) = 0;
          *v23 = a2 - 255;
        }

        else
        {
          *(v23 + 12) = a2 + 1;
        }
      }

      else if (v9 >= a2)
      {
        v24 = *(v7 + 56);
        v25 = a2 + 1;
        v26 = (((((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + v11 + 4) & ~v11;

        v24(v26, v25);
      }

      else
      {
        if (v12 <= 3)
        {
          v20 = ~(-1 << (8 * v12));
        }

        else
        {
          v20 = -1;
        }

        if (v12)
        {
          v21 = v20 & (~v9 + a2);
          if (v12 <= 3)
          {
            v22 = v12;
          }

          else
          {
            v22 = 4;
          }

          bzero(v19, v12);
          if (v22 > 2)
          {
            if (v22 == 3)
            {
              *v19 = v21;
              v19[2] = BYTE2(v21);
            }

            else
            {
              *v19 = v21;
            }
          }

          else if (v22 == 1)
          {
            *v19 = v21;
          }

          else
          {
            *v19 = v21;
          }
        }
      }

      return;
    }

    if (!a2)
    {
      return;
    }

    goto LABEL_38;
  }

  v17 = ~v10 + a2;
  bzero(a1, v13);
  if (v13 <= 3)
  {
    v18 = (v17 >> 8) + 1;
  }

  else
  {
    v18 = 1;
  }

  if (v13 <= 3)
  {
    *a1 = v17;
    if (v6 > 1)
    {
LABEL_26:
      if (v6 == 2)
      {
        *&a1[v13] = v18;
      }

      else
      {
        *&a1[v13] = v18;
      }

      return;
    }
  }

  else
  {
    *a1 = v17;
    if (v6 > 1)
    {
      goto LABEL_26;
    }
  }

  if (v6)
  {
    a1[v13] = v18;
  }
}

uint64_t partial apply for closure #2 in ValueActionDispatcher3.updateValue()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = type metadata accessor for _ValueActionModifier3(0, v5, *(v4 + 24), a4);
  v7 = *(v6 - 8);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  return (*(v4 + v8 + *(v6 + 36)))(v4 + ((v8 + *(v7 + 64) + *(*(v5 - 8) + 80)) & ~*(*(v5 - 8) + 80)));
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed A, @in_guaranteed Transaction) -> (@out ())(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 32);
  v6 = a3;
  return v4(a1, a2, &v6);
}

uint64_t AnimationState.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  specialized AnimationState.subscript.setter(a1, a2, a3, a4, a5);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(*(AssociatedTypeWitness - 8) + 8);

  return v7(a1, AssociatedTypeWitness);
}

void (*AnimationState.subscript.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))(uint64_t **a1, char a2)
{
  v11 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v12 = malloc(0x48uLL);
  }

  v13 = v12;
  *a1 = v12;
  v12[3] = a5;
  v12[4] = v5;
  v12[1] = a3;
  v12[2] = a4;
  *v12 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13[5] = AssociatedTypeWitness;
  v15 = *(AssociatedTypeWitness - 8);
  v13[6] = v15;
  v16 = *(v15 + 64);
  if (v11)
  {
    v13[7] = swift_coroFrameAlloc();
    v17 = swift_coroFrameAlloc();
  }

  else
  {
    v13[7] = malloc(*(v15 + 64));
    v17 = malloc(v16);
  }

  v13[8] = v17;
  AnimationState.subscript.getter(v17, v18, a4, a5);
  return AnimationState.subscript.modify;
}

void AnimationState.subscript.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[7];
  v4 = (*a1)[8];
  v5 = (*a1)[5];
  v6 = (*a1)[6];
  v7 = (*a1)[3];
  v9 = (*a1)[1];
  v8 = (*a1)[2];
  v10 = **a1;
  if (a2)
  {
    (*(v6 + 16))((*a1)[7], v4, v5);
    specialized AnimationState.subscript.setter(v3, v10, v9, v8, v7);
    v11 = *(v6 + 8);
    v11(v3, v5);
    v11(v4, v5);
  }

  else
  {
    specialized AnimationState.subscript.setter((*a1)[8], v10, v9, v8, v7);
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

Swift::Void __swiftcall Transaction.disableAnimations()()
{
  v1.value = *v0;

  v3 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011TransactionqS033_B2543BCA257433E04979186A1DC2B6BCLLVyAA09AnimationS033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt0g5(v2);
  if (!v3 || v3[9])
  {
    type metadata accessor for TypedElement<TransactionPropertyKey<AnimationKey>>(0);
    *(swift_allocObject() + 72) = 0;
    type metadata accessor for TransactionPropertyKey<AnimationKey>(0, v4, v5, v6);
    *v0 = PropertyList.Element.init(keyType:before:after:)(v7, 0, v1.value);
  }

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA018DisablesAnimationsF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(v0, 1);
}

double key path setter for Transaction.animation : Transaction(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA09AnimationF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a2, v3);

  return result;
}

void (*Transaction.animation.modify(uint64_t **a1))(uint64_t ***a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  v3[3] = v1;
  v5 = *v1;
  v4[4] = *v1;
  v6 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011TransactionqS033_B2543BCA257433E04979186A1DC2B6BCLLVyAA09AnimationS033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt0g5(v5);
  if (v6)
  {
  }

  *v4 = v6;
  return Transaction.animation.modify;
}

void Transaction.animation.modify(uint64_t ***a1, char a2)
{
  v3 = *a1;
  v4 = **a1;

  v5 = v3[3];
  if (a2)
  {

    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA09AnimationF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(v5, v4);
  }

  else
  {
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA09AnimationF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(v3[3], v4);
  }

  free(v3);
}

uint64_t (*Transaction._animationFrameInterval.modify(uint64_t **a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v3[4] = v1;
  v5 = *v1;
  v4[5] = *v1;
  v6 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA022AnimationFrameIntervalF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(v5);
  v4[6] = 0;
  *v4 = v6;
  *(v4 + 8) = v7 & 1;
  return Transaction._animationFrameInterval.modify;
}

uint64_t (*Transaction._animationReason.modify(uint64_t *a1))()
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
  *(v3 + 16) = v1;
  v5 = *v1;
  *(v4 + 24) = *v1;
  v6 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA015AnimationReasonF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(v5);
  *(v4 + 40) = v6;
  v4 += 40;
  *(v4 - 8) = 0;
  *(v4 + 4) = BYTE4(v6) & 1;
  return Transaction._animationReason.modify;
}

void (*Transaction.disablesAnimations.modify(uint64_t *a1))(uint64_t ***a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *v1;
  *(v4 + 24) = *v1;
  v6 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011TransactionqS033_B2543BCA257433E04979186A1DC2B6BCLLVyAA018DisablesAnimationsS033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt0g5(v5);
  if (v6)
  {
    v7 = *(v6 + 72);
  }

  else
  {
    v7 = 0;
  }

  *(v4 + 32) = v7;
  return Transaction.disablesAnimations.modify;
}

void Transaction.disablesAnimations.modify(uint64_t ***a1)
{
  v1 = *a1;
  v2 = *(*a1 + 32);

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA018DisablesAnimationsF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(v1[2], v2);

  free(v1);
}

double key path setter for Transaction.disablesAnimations : Transaction(unsigned __int8 *a1, void *a2, uint64_t a3, uint64_t a4, void (*a5)(void *, uint64_t, uint64_t *, __n128))
{
  v7 = *a1;

  (a5)(a2, v7, &v9);

  return result;
}

void (*Transaction.disablesContentTransitions.modify(uint64_t *a1))(uint64_t ***a1)
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
  *(v3 + 16) = v1;
  v5 = *v1;
  *(v4 + 24) = *v1;
  *(v4 + 40) = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA026DisablesContentTransitionsF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(v5) & 1;
  *(v4 + 32) = 0;
  return Transaction.disablesContentTransitions.modify;
}

void Transaction.disablesContentTransitions.modify(uint64_t ***a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40);

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA026DisablesContentTransitionsF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(v1[2], v2);

  free(v1);
}

void closure #1 in Transaction.animationIgnoringTransitionPhase.getter(uint64_t *a1, _BYTE *a2, void *a3)
{
  v3 = *a1;
  if (v3)
  {
    *a3 = v3;

    *a2 = 1;
  }
}

double key path setter for Transaction._animationFrameInterval : Transaction(uint64_t a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA022AnimationFrameIntervalF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a2, v3, v4);

  return result;
}

uint64_t (*Transaction.animationFrameInterval.modify(uint64_t **a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v3[4] = v1;
  v5 = *v1;
  v4[5] = *v1;
  v6 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA022AnimationFrameIntervalF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(v5);
  v4[6] = 0;
  *v4 = v6;
  *(v4 + 8) = v7 & 1;
  return Transaction.animationFrameInterval.modify;
}

void Transaction._animationFrameInterval.modify(uint64_t ***a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *(*a1 + 8);

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA022AnimationFrameIntervalF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(v1[4], v2, v3);

  free(v1);
}

double key path setter for Transaction._animationReason : Transaction(unsigned int *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *(a1 + 4);

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA015AnimationReasonF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a2, v3 | (v4 << 32));

  return result;
}

uint64_t (*Transaction.animationReason.modify(uint64_t *a1))()
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
  *(v3 + 16) = v1;
  v5 = *v1;
  *(v4 + 24) = *v1;
  v6 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA015AnimationReasonF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(v5);
  *(v4 + 40) = v6;
  v4 += 40;
  *(v4 - 8) = 0;
  *(v4 + 4) = BYTE4(v6) & 1;
  return Transaction.animationReason.modify;
}

void Transaction._animationReason.modify(uint64_t ***a1)
{
  v1 = *a1;
  v2 = *(*a1 + 10);
  v3 = *(*a1 + 44);

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA015AnimationReasonF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(v1[2], v2 | (v3 << 32));

  free(v1);
}

void type metadata accessor for TransactionPropertyKey<AnimationKey>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!lazy cache variable for type metadata for TransactionPropertyKey<AnimationKey>)
  {
    v4 = type metadata accessor for TransactionPropertyKey(0, &type metadata for AnimationKey, &protocol witness table for AnimationKey, a4);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for TransactionPropertyKey<AnimationKey>);
    }
  }
}

void *keypath_get_4Tm_0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA022AnimationFrameIntervalF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

unint64_t keypath_get_6Tm_0@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  result = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA015AnimationReasonF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(*a1);
  *a2 = result;
  *(a2 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t EventBindingBridge.__allocating_init(eventBindingManager:)(uint64_t a1)
{
  v1 = swift_allocObject();
  swift_weakInit();
  *(v1 + 24) = MEMORY[0x1E69E7CC8];
  swift_beginAccess();
  swift_weakAssign();

  return v1;
}

uint64_t EventBindingBridge.init(eventBindingManager:)(uint64_t a1)
{
  swift_weakInit();
  *(v1 + 24) = MEMORY[0x1E69E7CC8];
  swift_beginAccess();
  swift_weakAssign();

  return v1;
}

uint64_t EventBindingBridge.__allocating_init()()
{
  v0 = swift_allocObject();
  swift_weakInit();
  *(v0 + 24) = MEMORY[0x1E69E7CC8];
  return v0;
}

uint64_t EventBindingBridge.init()()
{
  swift_weakInit();
  *(v0 + 24) = MEMORY[0x1E69E7CC8];
  return v0;
}

uint64_t EventBindingBridge.send(_:source:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a1 + 64;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 64);

  swift_beginAccess();
  v8 = 0;
  v9 = (v5 + 63) >> 6;
  v10 = MEMORY[0x1E69E7CC8];
  v92 = v3;
  v90 = v4;
  if (!v7)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v12 = v8;
LABEL_16:
    v15 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v16 = v15 | (v12 << 6);
    v17 = (*(a1 + 48) + 16 * v16);
    v18 = *v17;
    v19 = v17[1];
    outlined init with copy of AnyTrackedValue(*(a1 + 56) + 40 * v16, v100);
    *&v101 = v18;
    *(&v101 + 1) = v19;
    outlined init with take of AnyTrackedValue(v100, &v102);
LABEL_17:
    v105 = v101;
    v106[0] = v102;
    v106[1] = v103;
    v107 = v104;
    v20 = v101;
    if (!v101)
    {
      break;
    }

    v21 = *(&v105 + 1);
    outlined init with take of AnyTrackedValue(v106, &v101);
    outlined init with copy of AnyTrackedValue(&v101, v100);
    outlined init with copy of AnyTrackedValue(v100, v96);
    type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for EventType, &protocol descriptor for EventType);
    type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for NonGestureEventType, &protocol descriptor for NonGestureEventType);
    if (swift_dynamicCast())
    {
      outlined init with take of AnyTrackedValue(v94, v99);
      outlined init with copy of AnyTrackedValue(v99, v96);
      v23 = v97;
      v22 = v98;
      __swift_project_boxed_opaque_existential_1(v96, v97);
      (*(*(v22 + 8) + 8))(v94, v23);
      v25 = v97;
      v24 = v98;
      __swift_project_boxed_opaque_existential_1(v96, v97);
      (*(*(v24 + 8) + 16))(v94, v25);
      v27 = v97;
      v26 = v98;
      __swift_project_boxed_opaque_existential_1(v96, v97);
      (*(*(v26 + 8) + 24))(v94, v27);
      __swift_destroy_boxed_opaque_existential_1(v99);
      __swift_destroy_boxed_opaque_existential_1(v100);

      __swift_destroy_boxed_opaque_existential_1(v96);

      outlined init with copy of AnyTrackedValue(&v101, v100);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v99[0] = v10;
      v29 = v21;
      v31 = specialized __RawDictionaryStorage.find<A>(_:)(v20, v21);
      v32 = v10[2];
      v33 = (v30 & 1) == 0;
      v34 = v32 + v33;
      if (__OFADD__(v32, v33))
      {
        goto LABEL_75;
      }

      v35 = v30;
      if (v10[3] >= v34)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          specialized _NativeDictionary.copy()();
        }
      }

      else
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v34, isUniquelyReferenced_nonNull_native);
        v36 = specialized __RawDictionaryStorage.find<A>(_:)(v20, v29);
        if ((v35 & 1) != (v37 & 1))
        {
          goto LABEL_82;
        }

        v31 = v36;
      }

      v3 = v92;
      v10 = v99[0];
      if (v35)
      {
        v11 = (*(v99[0] + 56) + 40 * v31);
        __swift_destroy_boxed_opaque_existential_1(v11);
        outlined init with take of AnyTrackedValue(v100, v11);
      }

      else
      {
        *(v99[0] + 8 * (v31 >> 6) + 64) |= 1 << v31;
        v57 = (v10[6] + 16 * v31);
        *v57 = v20;
        v57[1] = v29;
        outlined init with take of AnyTrackedValue(v100, v10[7] + 40 * v31);
        v58 = v10[2];
        v50 = __OFADD__(v58, 1);
        v59 = v58 + 1;
        if (v50)
        {
          goto LABEL_77;
        }

        v10[2] = v59;
      }

      __swift_destroy_boxed_opaque_existential_1(&v101);
      v4 = v90;
      if (!v7)
      {
        goto LABEL_8;
      }
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(v100);
      v95 = 0;
      memset(v94, 0, sizeof(v94));
      outlined destroy of NonGestureEventType?(v94);
      v38 = *(v3 + 24);
      v93 = v21;
      if (*(v38 + 16) && (v39 = specialized __RawDictionaryStorage.find<A>(_:)(v20, v21), (v40 & 1) != 0))
      {
        v41 = *(*(v38 + 56) + 16 * v39 + 8) ^ 1;
      }

      else
      {
        v42 = *(&v102 + 1);
        v43 = v103;
        __swift_project_boxed_opaque_existential_1(&v101, *(&v102 + 1));
        (*(v43 + 8))(v100, v42, v43);
        if (LOBYTE(v100[0]) == 1)
        {
          swift_beginAccess();
          v44 = swift_isUniquelyReferenced_nonNull_native();
          v99[0] = *(v3 + 24);
          v45 = v99[0];
          *(v3 + 24) = 0x8000000000000000;
          v46 = specialized __RawDictionaryStorage.find<A>(_:)(v20, v93);
          v48 = *(v45 + 16);
          v49 = (v47 & 1) == 0;
          v50 = __OFADD__(v48, v49);
          v51 = v48 + v49;
          if (v50)
          {
            goto LABEL_78;
          }

          v52 = v47;
          if (*(v45 + 24) >= v51)
          {
            if ((v44 & 1) == 0)
            {
              v85 = v46;
              specialized _NativeDictionary.copy()();
              v46 = v85;
            }

            v53 = v93;
            v55 = v99[0];
            if (v52)
            {
              goto LABEL_31;
            }
          }

          else
          {
            specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v51, v44);
            v53 = v93;
            v46 = specialized __RawDictionaryStorage.find<A>(_:)(v20, v93);
            if ((v52 & 1) != (v54 & 1))
            {
              goto LABEL_82;
            }

            v55 = v99[0];
            if (v52)
            {
LABEL_31:
              v56 = v55[7] + 16 * v46;
              *v56 = a2;
              *(v56 + 8) = 0;
LABEL_52:
              *(v3 + 24) = v55;
              swift_endAccess();
LABEL_53:
              outlined init with copy of AnyTrackedValue(&v101, v100);
              v71 = swift_isUniquelyReferenced_nonNull_native();
              v99[0] = v10;
              v72 = specialized __RawDictionaryStorage.find<A>(_:)(v20, v93);
              v74 = v10[2];
              v75 = (v73 & 1) == 0;
              v50 = __OFADD__(v74, v75);
              v76 = v74 + v75;
              if (v50)
              {
                goto LABEL_76;
              }

              v77 = v73;
              if (v10[3] >= v76)
              {
                if ((v71 & 1) == 0)
                {
                  v84 = v72;
                  specialized _NativeDictionary.copy()();
                  v72 = v84;
                }

                v3 = v92;
                v78 = v93;
                v10 = v99[0];
                if ((v77 & 1) == 0)
                {
                  goto LABEL_57;
                }
              }

              else
              {
                specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v76, v71);
                v78 = v93;
                v72 = specialized __RawDictionaryStorage.find<A>(_:)(v20, v93);
                if ((v77 & 1) != (v79 & 1))
                {
LABEL_82:
                  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
                  __break(1u);
                  return result;
                }

                v3 = v92;
                v10 = v99[0];
                if ((v77 & 1) == 0)
                {
LABEL_57:
                  v10[(v72 >> 6) + 8] |= 1 << v72;
                  v80 = (v10[6] + 16 * v72);
                  *v80 = v20;
                  v80[1] = v78;
                  outlined init with take of AnyTrackedValue(v100, v10[7] + 40 * v72);
                  v81 = v10[2];
                  v50 = __OFADD__(v81, 1);
                  v82 = v81 + 1;
                  if (v50)
                  {
                    goto LABEL_79;
                  }

                  v10[2] = v82;
                  goto LABEL_63;
                }
              }

              v83 = (v10[7] + 40 * v72);
              __swift_destroy_boxed_opaque_existential_1(v83);
              outlined init with take of AnyTrackedValue(v100, v83);
LABEL_63:
              v4 = v90;
              goto LABEL_64;
            }
          }

          v55[(v46 >> 6) + 8] |= 1 << v46;
          v67 = (v55[6] + 16 * v46);
          *v67 = v20;
          v67[1] = v53;
          v68 = v55[7] + 16 * v46;
          *v68 = a2;
          *(v68 + 8) = 0;
          v69 = v55[2];
          v50 = __OFADD__(v69, 1);
          v70 = v69 + 1;
          if (v50)
          {
            goto LABEL_80;
          }

          v55[2] = v70;
          goto LABEL_52;
        }

        v41 = 1;
      }

      v60 = *(&v102 + 1);
      v61 = v103;
      __swift_project_boxed_opaque_existential_1(&v101, *(&v102 + 1));
      (*(v61 + 8))(v100, v60, v61);
      if (LOBYTE(v100[0]) != 1)
      {
        swift_beginAccess();
        v62 = specialized __RawDictionaryStorage.find<A>(_:)(v20, v93);
        if (v63)
        {
          v64 = v62;
          v65 = swift_isUniquelyReferenced_nonNull_native();
          v66 = *(v92 + 24);
          v99[0] = v66;
          *(v92 + 24) = 0x8000000000000000;
          if (!v65)
          {
            specialized _NativeDictionary.copy()();
            v66 = v99[0];
          }

          specialized _NativeDictionary._delete(at:)(v64, v66);
          *(v92 + 24) = v66;
        }

        swift_endAccess();
      }

      if (v41)
      {
        goto LABEL_53;
      }

      v3 = v92;
LABEL_64:
      __swift_destroy_boxed_opaque_existential_1(&v101);
      if (!v7)
      {
LABEL_8:
        if (v9 <= v8 + 1)
        {
          v13 = v8 + 1;
        }

        else
        {
          v13 = v9;
        }

        v14 = v13 - 1;
        while (1)
        {
          v12 = v8 + 1;
          if (__OFADD__(v8, 1))
          {
            break;
          }

          if (v12 >= v9)
          {
            v7 = 0;
            v104 = 0;
            v102 = 0u;
            v103 = 0u;
            v8 = v14;
            v101 = 0u;
            goto LABEL_17;
          }

          v7 = *(v4 + 8 * v12);
          ++v8;
          if (v7)
          {
            v8 = v12;
            goto LABEL_16;
          }
        }

        __break(1u);
LABEL_75:
        __break(1u);
LABEL_76:
        __break(1u);
LABEL_77:
        __break(1u);
LABEL_78:
        __break(1u);
LABEL_79:
        __break(1u);
LABEL_80:
        __break(1u);
LABEL_81:
        swift_once();
        goto LABEL_69;
      }
    }
  }

  if (!v10[2] || (swift_beginAccess(), !swift_weakLoadStrong()))
  {

    return MEMORY[0x1E69E7CD0];
  }

  swift_weakInit();
  if (one-time initialization token for _lock != -1)
  {
    goto LABEL_81;
  }

LABEL_69:
  v86 = static Update._lock;
  _MovableLockLock(static Update._lock);
  specialized static Update.begin()();
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v87 = EventBindingManager.sendDownstream(_:)(v10);
  }

  else
  {
    v87 = MEMORY[0x1E69E7CD0];
  }

  static Update.end()();
  _MovableLockUnlock(v86);
  swift_weakDestroy();

  return v87;
}

void EventBindingBridge.reset(eventSource:resetForwardedEventDispatchers:)(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  swift_beginAccess();
  v6 = *(v3 + 24);
  v7 = 1 << *(v6 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v6 + 64);
  v10 = (v7 + 63) >> 6;

  v25 = 0;
  v11 = 0;
  while (v9)
  {
LABEL_11:
    while (1)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v14 = v13 | (v11 << 6);
      v15 = *(v6 + 56);
      if (*(v15 + 16 * v14) == a1)
      {
        break;
      }

      v25 |= *(v15 + 16 * v14 + 8) ^ 1;
      if (!v9)
      {
        goto LABEL_7;
      }
    }

    v16 = (*(v6 + 48) + 16 * v14);
    v18 = *v16;
    v17 = v16[1];
    swift_beginAccess();
    v19 = specialized __RawDictionaryStorage.find<A>(_:)(v18, v17);
    if (v20)
    {
      v21 = v19;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v23 = *(v4 + 24);
      *(v4 + 24) = 0x8000000000000000;
      if (!isUniquelyReferenced_nonNull_native)
      {
        specialized _NativeDictionary.copy()();
      }

      specialized _NativeDictionary._delete(at:)(v21, v23);
      *(v4 + 24) = v23;
    }

    swift_endAccess();
  }

  while (1)
  {
LABEL_7:
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
      return;
    }

    if (v12 >= v10)
    {
      break;
    }

    v9 = *(v6 + 64 + 8 * v12);
    ++v11;
    if (v9)
    {
      v11 = v12;
      goto LABEL_11;
    }
  }

  if ((v25 & 1) == 0)
  {
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      EventBindingManager.reset(resetForwardedEventDispatchers:)(a3 & 1);
    }
  }
}

void EventBindingBridge.resetEvents()()
{
  v1 = v0;
  swift_beginAccess();
  v2 = *(v0 + 24);
  v5 = *(v2 + 64);
  v4 = v2 + 64;
  v3 = v5;
  v6 = 1 << *(*(v0 + 24) + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & v3;
  v9 = (v6 + 63) >> 6;
  v34 = *(v0 + 24);

  v10 = 0;
  while (v8)
  {
LABEL_11:
    v13 = (v10 << 10) | (16 * __clz(__rbit64(v8)));
    v14 = (*(v34 + 48) + v13);
    v15 = *v14;
    v16 = v14[1];
    v35 = *(*(v34 + 56) + v13);
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *(v1 + 24);
    v19 = v1;
    *(v1 + 24) = 0x8000000000000000;
    v20 = specialized __RawDictionaryStorage.find<A>(_:)(v15, v16);
    v22 = v18[2];
    v23 = (v21 & 1) == 0;
    v24 = __OFADD__(v22, v23);
    v25 = v22 + v23;
    if (v24)
    {
      goto LABEL_23;
    }

    v26 = v21;
    if (v18[3] < v25)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v25, isUniquelyReferenced_nonNull_native);
      v20 = specialized __RawDictionaryStorage.find<A>(_:)(v15, v16);
      if ((v26 & 1) != (v27 & 1))
      {
        goto LABEL_25;
      }

LABEL_16:
      v28 = v18;
      if (v26)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_16;
    }

    v33 = v20;
    specialized _NativeDictionary.copy()();
    v20 = v33;
    v28 = v18;
    if (v26)
    {
LABEL_4:
      v11 = v28[7] + 16 * v20;
      *v11 = v35;
      *(v11 + 8) = 1;
      goto LABEL_5;
    }

LABEL_17:
    v28[(v20 >> 6) + 8] |= 1 << v20;
    v29 = (v28[6] + 16 * v20);
    *v29 = v15;
    v29[1] = v16;
    v30 = v28[7] + 16 * v20;
    *v30 = v35;
    *(v30 + 8) = 1;
    v31 = v28[2];
    v24 = __OFADD__(v31, 1);
    v32 = v31 + 1;
    if (v24)
    {
      goto LABEL_24;
    }

    v28[2] = v32;
LABEL_5:
    v8 &= v8 - 1;
    v1 = v19;
    *(v19 + 24) = v28;
    swift_endAccess();
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= v9)
    {

      return;
    }

    v8 = *(v4 + 8 * v12);
    ++v10;
    if (v8)
    {
      v10 = v12;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

uint64_t EventBindingBridge.deinit()
{
  swift_weakDestroy();

  return v0;
}

uint64_t EventBindingBridge.__deallocating_deinit()
{
  swift_weakDestroy();

  return swift_deallocClassInstance();
}

double EventBindingBridge.didBind(to:id:)(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v5 = *a2;
  v4 = a2[1];
  v12 = (*(*v2 + 160))();
  v6 = *(v12 + 16);
  if (v6)
  {
    v7 = (v12 + 40);
    do
    {
      v8 = *v7;
      ObjectType = swift_getObjectType();
      v14[1] = v4;
      v15 = v3;
      v14[0] = v5;
      v10 = *(v8 + 40);
      swift_unknownObjectRetain();
      v10(&v15, v14, v13, ObjectType, v8);
      swift_unknownObjectRelease();
      v7 += 2;
      --v6;
    }

    while (v6);
  }

  return result;
}

void specialized EventBindingBridge.didUpdate(phase:in:)(unsigned __int8 *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v10 = (*(*v1 + 160))();
  v4 = *(v10 + 16);
  if (v4)
  {
    v5 = (v10 + 40);
    do
    {
      v6 = *v5;
      ObjectType = swift_getObjectType();
      v11[0] = v2;
      v11[1] = v3;
      v8 = *(v6 + 24);
      swift_unknownObjectRetain();
      v8(v11, v1, ObjectType, v6);
      swift_unknownObjectRelease();
      v5 += 2;
      --v4;
    }

    while (v4);
  }

  if (v3 == 2 || (v3 == 3 ? (v9 = v2 == 0) : (v9 = 0), v9))
  {

    EventBindingBridge.resetEvents()();
  }
}

double specialized EventBindingBridge.didUpdate(gestureCategory:in:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = (*(*v1 + 160))();
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = (v3 + 40);
    do
    {
      v6 = *v5;
      ObjectType = swift_getObjectType();
      v10 = v2;
      v8 = *(v6 + 32);
      swift_unknownObjectRetain();
      v8(&v10, v1, ObjectType, v6);
      swift_unknownObjectRelease();
      v5 += 2;
      --v4;
    }

    while (v4);
  }

  return result;
}

void CUIDesignLibraryCacheKey.init(name:in:allowsBlendMode:)(uint64_t a1@<X0>, uint64_t *a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v7 = *a2;
  if (a2[1])
  {

    _s7SwiftUI12PropertyListV7TrackerC12derivedValue_3for0G0QzAC_xmtAA07DerivedC3KeyRzlFAA0i11EnvironmentcJ033_0CBA6217BE011883F496E97230B6CF8FLLVyAA021CUIDesignLibraryCacheJ0V5PropsVG_Tt1g5(v7, v13);
  }

  else
  {
    v12[0] = *a2;
    v12[1] = 0;

    static CUIDesignLibraryCacheKey.Props.value(in:)(v12, v13);
  }

  v8 = v13[0];
  v9 = v13[1];
  v10 = v13[2];
  v11 = v14;
  if (!(a3 & 1 | (v14 != 1)))
  {
    v11 = 2;
  }

  *a4 = a1;
  *(a4 + 8) = v8;
  *(a4 + 9) = v9;
  *(a4 + 10) = v10;
  *(a4 + 16) = v11;
}

float CUIDesignLibraryCacheKey.Entry.color.getter@<S0>(uint64_t a1@<X8>)
{
  result = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = result;
  return result;
}

__n128 CUIDesignLibraryCacheKey.Entry.color.setter(__n128 *a1)
{
  result = *a1;
  *v1 = *a1;
  v1[1].n128_u32[0] = a1[1].n128_u32[0];
  return result;
}

float CUIDesignLibraryCacheKey.Entry.init(color:blendMode:)@<S0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  result = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 16) = result;
  *(a3 + 20) = v3;
  return result;
}

uint64_t CUIDesignLibraryCacheKey.Entry.hash(into:)()
{
  v1 = *v0;
  v2 = *(v0 + 4);
  v3 = *(v0 + 8);
  v4 = *(v0 + 12);
  v5 = *(v0 + 16);
  v6 = *(v0 + 20);
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  Hasher._combine(_:)(LODWORD(v1));
  if (v2 == 0.0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = v2;
  }

  Hasher._combine(_:)(LODWORD(v7));
  if (v3 == 0.0)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = v3;
  }

  Hasher._combine(_:)(LODWORD(v8));
  if (v4 == 0.0)
  {
    v9 = 0.0;
  }

  else
  {
    v9 = v4;
  }

  Hasher._combine(_:)(LODWORD(v9));
  if (v5 == 0.0)
  {
    v10 = 0.0;
  }

  else
  {
    v10 = v5;
  }

  Hasher._combine(_:)(LODWORD(v10));
  return MEMORY[0x193AC11A0](v6);
}

Swift::Int CUIDesignLibraryCacheKey.Entry.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 4);
  v3 = *(v0 + 8);
  v4 = *(v0 + 12);
  v5 = *(v0 + 16);
  v6 = *(v0 + 20);
  Hasher.init(_seed:)();
  if (v1 == 0.0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = v1;
  }

  Hasher._combine(_:)(LODWORD(v7));
  if (v2 == 0.0)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = v2;
  }

  Hasher._combine(_:)(LODWORD(v8));
  if (v3 == 0.0)
  {
    v9 = 0.0;
  }

  else
  {
    v9 = v3;
  }

  Hasher._combine(_:)(LODWORD(v9));
  if (v4 == 0.0)
  {
    v10 = 0.0;
  }

  else
  {
    v10 = v4;
  }

  Hasher._combine(_:)(LODWORD(v10));
  if (v5 == 0.0)
  {
    v11 = 0.0;
  }

  else
  {
    v11 = v5;
  }

  Hasher._combine(_:)(LODWORD(v11));
  MEMORY[0x193AC11A0](v6);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CUIDesignLibraryCacheKey.Entry(uint64_t a1)
{
  Hasher.init(_seed:)();
  CUIDesignLibraryCacheKey.Entry.hash(into:)();
  return Hasher._finalize()();
}

uint64_t CUIDesignLibraryCacheKey.Props.hash(into:)()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = *(v0 + 1);
  MEMORY[0x193AC11A0](*v0);
  MEMORY[0x193AC11A0](v1);
  MEMORY[0x193AC11A0](v2);
  return MEMORY[0x193AC11A0](v3);
}

Swift::Int CUIDesignLibraryCacheKey.Props.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = *(v0 + 1);
  Hasher.init(_seed:)();
  MEMORY[0x193AC11A0](v1);
  MEMORY[0x193AC11A0](v2);
  MEMORY[0x193AC11A0](v3);
  MEMORY[0x193AC11A0](v4);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance CUIDesignLibraryCacheKey.Props()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = *(v0 + 1);
  Hasher.init(_seed:)();
  MEMORY[0x193AC11A0](v1);
  MEMORY[0x193AC11A0](v2);
  MEMORY[0x193AC11A0](v3);
  MEMORY[0x193AC11A0](v4);
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CUIDesignLibraryCacheKey.Props()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = *(v0 + 1);
  MEMORY[0x193AC11A0](*v0);
  MEMORY[0x193AC11A0](v1);
  MEMORY[0x193AC11A0](v2);
  return MEMORY[0x193AC11A0](v3);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CUIDesignLibraryCacheKey.Props(uint64_t a1)
{
  Hasher.init(_seed:)();
  v2 = v1[1];
  v3 = v1[2];
  v4 = *(v1 + 1);
  MEMORY[0x193AC11A0](*v1);
  MEMORY[0x193AC11A0](v2);
  MEMORY[0x193AC11A0](v3);
  MEMORY[0x193AC11A0](v4);
  return Hasher._finalize()();
}

void CUIDesignLibraryCacheKey.props.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 9);
  v3 = *(v1 + 10);
  v4 = *(v1 + 16);
  *a1 = *(v1 + 8);
  *(a1 + 1) = v2;
  *(a1 + 2) = v3;
  *(a1 + 8) = v4;
}

uint64_t CUIDesignLibraryCacheKey.props.setter(uint64_t result)
{
  v2 = *(result + 1);
  v3 = *(result + 2);
  v4 = *(result + 8);
  *(v1 + 8) = *result;
  *(v1 + 9) = v2;
  *(v1 + 10) = v3;
  *(v1 + 16) = v4;
  return result;
}

BOOL static CUIDesignLibraryCacheKey.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  result = 0;
  if (*(a1 + 8) == *(a2 + 8) && ((*(a1 + 9) ^ *(a2 + 9)) & 1) == 0 && ((*(a1 + 10) ^ *(a2 + 10)) & 1) == 0)
  {
    return *(a1 + 16) == *(a2 + 16);
  }

  return result;
}

uint64_t CUIDesignLibraryCacheKey.hash(into:)()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 9);
  v3 = *(v0 + 10);
  v4 = *(v0 + 16);
  MEMORY[0x193AC11A0](*v0);
  MEMORY[0x193AC11A0](v1);
  MEMORY[0x193AC11A0](v2);
  MEMORY[0x193AC11A0](v3);
  return MEMORY[0x193AC11A0](v4);
}

Swift::Int CUIDesignLibraryCacheKey.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 9);
  v4 = *(v0 + 10);
  v5 = v0[2];
  Hasher.init(_seed:)();
  MEMORY[0x193AC11A0](v1);
  MEMORY[0x193AC11A0](v2);
  MEMORY[0x193AC11A0](v3);
  MEMORY[0x193AC11A0](v4);
  MEMORY[0x193AC11A0](v5);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance CUIDesignLibraryCacheKey()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 9);
  v4 = *(v0 + 10);
  v5 = v0[2];
  Hasher.init(_seed:)();
  MEMORY[0x193AC11A0](v1);
  MEMORY[0x193AC11A0](v2);
  MEMORY[0x193AC11A0](v3);
  MEMORY[0x193AC11A0](v4);
  MEMORY[0x193AC11A0](v5);
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CUIDesignLibraryCacheKey()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 9);
  v3 = *(v0 + 10);
  v4 = *(v0 + 16);
  MEMORY[0x193AC11A0](*v0);
  MEMORY[0x193AC11A0](v1);
  MEMORY[0x193AC11A0](v2);
  MEMORY[0x193AC11A0](v3);
  return MEMORY[0x193AC11A0](v4);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CUIDesignLibraryCacheKey(uint64_t a1)
{
  Hasher.init(_seed:)();
  v2 = *(v1 + 8);
  v3 = *(v1 + 9);
  v4 = *(v1 + 10);
  v5 = *(v1 + 16);
  MEMORY[0x193AC11A0](*v1);
  MEMORY[0x193AC11A0](v2);
  MEMORY[0x193AC11A0](v3);
  MEMORY[0x193AC11A0](v4);
  MEMORY[0x193AC11A0](v5);
  return Hasher._finalize()();
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance CUIDesignLibraryCacheKey(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v16 = v2;
  v17 = v3;
  v4 = *(a2 + 16);
  v5 = *(a2 + 10);
  v6 = *(a2 + 9);
  v7 = *(a2 + 8);
  v8 = *(a1 + 16);
  v9 = *(a1 + 10);
  v10 = *(a1 + 9);
  v14[0] = *(a1 + 8);
  v14[1] = v10;
  v14[2] = v9;
  v15 = v8;
  v12[0] = v7;
  v12[1] = v6;
  v12[2] = v5;
  v13 = v4;
  return specialized static CUIDesignLibraryCacheKey.Props.== infix(_:_:)(v14, v12);
}

void lazy protocol witness table accessor for type CUIDesignLibraryCacheKey.Entry and conformance CUIDesignLibraryCacheKey.Entry()
{
  if (!lazy protocol witness table cache variable for type CUIDesignLibraryCacheKey.Entry and conformance CUIDesignLibraryCacheKey.Entry)
  {
    swift_getWitnessTable(protocol conformance descriptor for CUIDesignLibraryCacheKey.Entry, &type metadata for CUIDesignLibraryCacheKey.Entry, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type CUIDesignLibraryCacheKey.Entry and conformance CUIDesignLibraryCacheKey.Entry);
  }
}

uint64_t getEnumTagSinglePayload for CUIDesignLibraryCacheKey(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 24))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for CUIDesignLibraryCacheKey(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CUIDesignLibraryCacheKey.Entry(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xEC && *(a1 + 21))
  {
    return (*a1 + 236);
  }

  v3 = *(a1 + 20);
  v4 = v3 >= 0x15;
  v5 = v3 - 21;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for CUIDesignLibraryCacheKey.Entry(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xEB)
  {
    *(result + 20) = 0;
    *(result + 16) = 0;
    *result = a2 - 236;
    *(result + 8) = 0;
    if (a3 >= 0xEC)
    {
      *(result + 21) = 1;
    }
  }

  else
  {
    if (a3 >= 0xEC)
    {
      *(result + 21) = 0;
    }

    if (a2)
    {
      *(result + 20) = a2 + 20;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CUIDesignLibraryCacheKey.Props(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[16])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

void _s7SwiftUI4ViewPAAE9bodyErrors5NeverOyFAA27_TextBaselineRelativeSpacerV_Ttg5()
{
  _StringGuts.grow(_:)(34);

  MEMORY[0x193ABEDD0](0xD00000000000001BLL, 0x800000018DD7F560);
  MEMORY[0x193ABEDD0](46, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void _s7SwiftUI4ViewPAAE9bodyErrors5NeverOyFAA17ConditionalSpacerV_Ttg5()
{
  _StringGuts.grow(_:)(34);

  MEMORY[0x193ABEDD0](0xD000000000000011, 0x800000018DD7F540);
  MEMORY[0x193ABEDD0](46, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void specialized View.bodyError()()
{
  _StringGuts.grow(_:)(34);

  MEMORY[0x193ABEDD0](0x73694C776569565FLL, 0xEE00776569565F74);
  MEMORY[0x193ABEDD0](46, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

{
  _StringGuts.grow(_:)(34);

  MEMORY[0x193ABEDD0](0xD000000000000012, 0x800000018DD7F480);
  MEMORY[0x193ABEDD0](46, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

{
  _StringGuts.grow(_:)(34);

  MEMORY[0x193ABEDD0](0xD000000000000016, 0x800000018DD7F4C0);
  MEMORY[0x193ABEDD0](46, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

{
  _StringGuts.grow(_:)(34);

  MEMORY[0x193ABEDD0](0xD000000000000017, 0x800000018DD7F460);
  MEMORY[0x193ABEDD0](46, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void _s7SwiftUI4ViewPAAE9bodyErrors5NeverOyFAA016DebugReplaceableC0V_Ttg5()
{
  _StringGuts.grow(_:)(34);

  MEMORY[0x193ABEDD0](0xD000000000000014, 0x800000018DD7F520);
  MEMORY[0x193ABEDD0](46, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void _s7SwiftUI4ViewPAAE9bodyErrors5NeverOyFAA09MountableC7OutputsV016DisplayListProxyC0V_Ttg5()
{
  _StringGuts.grow(_:)(34);

  MEMORY[0x193ABEDD0](0xD000000000000014, 0x800000018DD7F500);
  MEMORY[0x193ABEDD0](46, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void _s7SwiftUI4ViewPAAE9bodyErrors5NeverOyFAA017StyledTextContentC0V_Ttg5()
{
  _StringGuts.grow(_:)(34);

  MEMORY[0x193ABEDD0](0xD000000000000015, 0x800000018DD7F4E0);
  MEMORY[0x193ABEDD0](46, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void _s7SwiftUI4ViewPAAE9bodyErrors5NeverOyFAA26_BackdropEffectPlaceholderV_Ttg5()
{
  _StringGuts.grow(_:)(34);

  MEMORY[0x193ABEDD0](0xD00000000000001ALL, 0x800000018DD7F4A0);
  MEMORY[0x193ABEDD0](46, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void specialized View.bodyError()(uint64_t a1)
{
  _StringGuts.grow(_:)(34);

  MEMORY[0x193ABEDD0](a1, 0xE700000000000000);
  MEMORY[0x193ABEDD0](46, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

{
  _StringGuts.grow(_:)(34);

  v1 = _typeName(_:qualified:)();
  MEMORY[0x193ABEDD0](v1);

  MEMORY[0x193ABEDD0](46, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void _s7SwiftUI4ViewPAAE9bodyErrors5NeverOyFAA5ImageVAAE8ResolvedV_Ttg5Tm(uint64_t a1, uint64_t a2)
{
  _StringGuts.grow(_:)(34);

  MEMORY[0x193ABEDD0](a1, a2);
  MEMORY[0x193ABEDD0](46, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void protocol witness for View.body.getter in conformance <> StaticIf<A, B, C>(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 24);
  v4 = vextq_s8(*(a2 - 16), *(a2 - 16), 8uLL);
  v5 = v3;
  swift_getWitnessTable(protocol conformance descriptor for <> StaticIf<A, B, C>, a1, &v4);
  specialized PrimitiveView.body.getter(a1);
}

uint64_t specialized closure #1 in static View.makeImplicitRoot(view:inputs:)@<X0>(__int128 *a1@<X0>, uint64_t a3@<X8>)
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a1[3];
  v14 = a1[2];
  v15 = v4;
  v16 = a1[4];
  v17 = *(a1 + 20);
  v5 = a1[1];
  v12 = *a1;
  v13 = v5;
  _ViewInputs.implicitRootBodyInputs.getter(v11);
  ShouldRecordTree = AGSubgraphShouldRecordTree();
  v7 = ShouldRecordTree;
  if (ShouldRecordTree)
  {
    AGSubgraphBeginTreeElement();
  }

  AGGraphCreateOffsetAttribute2();
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  type metadata accessor for ForEach<Slice<SubviewsCollection>, Subview.ID, Subview>(0);
  lazy protocol witness table accessor for type SubviewsCollectionSlice.Child and conformance SubviewsCollectionSlice.Child();
  v8 = Attribute.init<A>(body:value:flags:update:)();
  if (v7)
  {
    v9 = v8;
    AGSubgraphBeginTreeElement();
    _s7SwiftUI7ForEachVA2A4ViewR0_rlE05_makeE4List4view6inputsAA01_eG7OutputsVAA11_GraphValueVyACyxq_q0_GG_AA01_eG6InputsVtFZs5SliceVyAA18SubviewsCollectionVG_AA7SubviewV2IDVAVTt2B5(v9, v11, a3);
    AGSubgraphEndTreeElement();
    AGSubgraphEndTreeElement();
  }

  else
  {
    _s7SwiftUI7ForEachVA2A4ViewR0_rlE05_makeE4List4view6inputsAA01_eG7OutputsVAA11_GraphValueVyACyxq_q0_GG_AA01_eG6InputsVtFZs5SliceVyAA18SubviewsCollectionVG_AA7SubviewV2IDVAVTt2B5(v8, v11, a3);
  }

  return outlined destroy of _ViewListInputs(v11);
}

uint64_t specialized closure #1 in static View.makeImplicitRoot(view:inputs:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2;
  v5 = a1[3];
  v12 = a1[2];
  v13 = v5;
  v14 = a1[4];
  v15 = *(a1 + 20);
  v6 = a1[1];
  v10 = *a1;
  v11 = v6;
  _ViewInputs.implicitRootBodyInputs.getter(v9);
  if (AGSubgraphShouldRecordTree())
  {
    AGSubgraphBeginTreeElement();
    v8 = v3;
    off_1EE4AC518(&v8, v9, a3);
    AGSubgraphEndTreeElement();
  }

  else
  {
    v8 = v3;
    off_1EE4AC518(&v8, v9, a3);
  }

  return outlined destroy of _ViewListInputs(v9);
}

uint64_t specialized closure #1 in static View.makeImplicitRoot(view:inputs:)@<X0>(__int128 *a1@<X0>, uint64_t x8_0@<X8>)
{
  v4 = a1[3];
  v10 = a1[2];
  v11 = v4;
  v12 = a1[4];
  v13 = *(a1 + 20);
  v5 = a1[1];
  v8 = *a1;
  v9 = v5;
  _ViewInputs.implicitRootBodyInputs.getter(v7);
  if (AGSubgraphShouldRecordTree())
  {
    AGSubgraphBeginTreeElement();
    static SubviewsCollection._makeViewList(view:inputs:)(v7, x8_0);
    AGSubgraphEndTreeElement();
  }

  else
  {
    static SubviewsCollection._makeViewList(view:inputs:)(v7, x8_0);
  }

  return outlined destroy of _ViewListInputs(v7);
}

double static ViewDescriptor.typeCache.getter()
{
  if (one-time initialization token for typeCache != -1)
  {
    swift_once();
  }

  swift_beginAccess();

  return result;
}

double static ViewDescriptor.typeCache.setter(void *a1)
{
  if (one-time initialization token for typeCache != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static ViewDescriptor.typeCache = a1;

  return result;
}

uint64_t (*static ViewDescriptor.typeCache.modify(uint64_t a1))(uint64_t a1)
{
  if (one-time initialization token for typeCache != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return DisplayList.GraphicsRenderer.platformViewMode.modify;
}

double key path getter for static ViewDescriptor.typeCache : ViewDescriptor.Type@<D0>(void *a1@<X8>)
{
  if (one-time initialization token for typeCache != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = static ViewDescriptor.typeCache;

  return result;
}

double key path setter for static ViewDescriptor.typeCache : ViewDescriptor.Type(void **a1)
{
  v1 = *a1;
  v2 = one-time initialization token for typeCache;

  if (v2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static ViewDescriptor.typeCache = v1;

  return result;
}

double static ViewDescriptor.insertConditionalType(key:value:)(uint64_t a1, unint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[2];
  if (one-time initialization token for conditionalCache != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  outlined copy of Material.Layer.SDFLayer.GroupLayer.Blend(v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = static ViewDescriptor.conditionalCache;
  static ViewDescriptor.conditionalCache = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v3, v4, v5, a1, isUniquelyReferenced_nonNull_native);
  static ViewDescriptor.conditionalCache = v8;
  swift_endAccess();
  return result;
}

double protocol witness for static TupleDescriptor.typeCache.getter in conformance ViewDescriptor()
{
  if (one-time initialization token for typeCache != -1)
  {
    swift_once();
  }

  swift_beginAccess();

  return result;
}

double protocol witness for static TupleDescriptor.typeCache.setter in conformance ViewDescriptor(void *a1)
{
  if (one-time initialization token for typeCache != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static ViewDescriptor.typeCache = a1;

  return result;
}

uint64_t (*protocol witness for static TupleDescriptor.typeCache.modify in conformance ViewDescriptor(uint64_t a1))(uint64_t a1)
{
  if (one-time initialization token for typeCache != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return protocol witness for static UserDefaultKeyedFeature.cachedValue.modify in conformance EnableScrollPrefetchFeature;
}

double protocol witness for static View._makeView(view:inputs:) in conformance _VariadicView_Children@<D0>(int *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X5>, uint64_t a5@<X8>)
{
  v7 = *a1;
  v8 = *(a2 + 48);
  v12[2] = *(a2 + 32);
  v12[3] = v8;
  v12[4] = *(a2 + 64);
  v13 = *(a2 + 80);
  v9 = *(a2 + 16);
  v12[0] = *a2;
  v12[1] = v9;
  v10 = swift_allocObject();
  *(v10 + 16) = v7;
  static _ViewOutputs.multiView(inputs:body:)(v12, a4, v10, a5);

  return result;
}

void protocol witness for View.body.getter in conformance <> _VariadicView.Tree<A, B>(uint64_t a1, uint64_t a2, const char *a3)
{
  v4 = vextq_s8(*(a2 - 16), *(a2 - 16), 8uLL);
  swift_getWitnessTable(a3, a1, &v4);
  specialized PrimitiveView.body.getter(a1);
}

void protocol witness for View.body.getter in conformance <A> Group<A>(uint64_t a1, uint64_t a2, const char *a3)
{
  v4 = *(a2 - 8);
  swift_getWitnessTable(a3, a1, &v4);
  specialized PrimitiveView.body.getter(a1);
}

uint64_t partial apply for specialized closure #1 in static View.makeImplicitRoot(view:inputs:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 48);
  v5[2] = *(a1 + 32);
  v5[3] = v2;
  v5[4] = *(a1 + 64);
  v6 = *(a1 + 80);
  v3 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v3;
  return specialized closure #1 in static View.makeImplicitRoot(view:inputs:)(v5, a2);
}

{
  v3 = *(v2 + 16);
  v4 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v7[3] = v4;
  v7[4] = *(a1 + 64);
  v8 = *(a1 + 80);
  v5 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v5;
  return specialized closure #1 in static View.makeImplicitRoot(view:inputs:)(v7, v3, a2);
}

uint64_t partial apply for specialized closure #1 in static View.makeImplicitRoot(view:inputs:)@<X0>(uint64_t a2@<X1>, uint64_t x8_0@<X8>)
{
  v3 = *(a2 + 48);
  v6[2] = *(a2 + 32);
  v6[3] = v3;
  v6[4] = *(a2 + 64);
  v7 = *(a2 + 80);
  v4 = *(a2 + 16);
  v6[0] = *a2;
  v6[1] = v4;
  return specialized closure #1 in static View.makeImplicitRoot(view:inputs:)(v6, x8_0);
}

uint64_t static AnimatablePair.zero.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v16 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  dispatch thunk of static AdditiveArithmetic.zero.getter();
  dispatch thunk of static AdditiveArithmetic.zero.getter();
  return AnimatablePair.init(_:_:)(v14, v11, a1, a2, a3, a4, a5);
}

uint64_t AnimatablePair.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(*(*(a3 + 16) - 8) + 16))(a1, v3);
  v6 = *(*(*(a3 + 24) - 8) + 16);
  v7 = v3 + *(a3 + 52);

  return v6(a2, v7);
}

uint64_t KeyedAnimatableArray.init(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t KeyedAnimatableArray.extract<A>(into:key:set:)(uint64_t *a1, void (*a2)(char *), uint64_t a3, void (*a4)(unint64_t, char *), uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v66 = a5;
  v65 = a4;
  v78 = a2;
  v79 = a3;
  v11 = *(*(a6 + 24) - 8);
  MEMORY[0x1EEE9AC00](a1);
  v63 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88[0] = *(v13 + 16);
  v14 = v88[0];
  v88[1] = v15;
  v64 = v15;
  v85 = *(v13 + 32);
  v89 = v85;
  v16 = type metadata accessor for KeyedAnimatableArray.Element(0, v88);
  v84 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v62 = &v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v81 = &v59 - v19;
  v67 = *(a7 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v77 = &v59 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v59 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v26);
  v29 = &v59 - v28;
  v30 = *v8;
  v31 = a1;
  v32 = MEMORY[0x193ABF270](*a1, a7, v27);
  v87 = v16;
  result = MEMORY[0x193ABF270](v30, v16);
  v80 = result;
  v76 = v32;
  if (v32 >= 1 && v80 >= 1)
  {
    v34 = 0;
    v35 = v11;
    v36 = 0;
    v73 = (v22 + 16);
    v74 = (v67 + 8);
    v72 = (v84 + 8);
    v71 = v85;
    *&v85 = v22 + 8;
    v61 = (v35 + 16);
    v60 = (v35 + 8);
    v86 = v30;
    v75 = v14;
    v70 = v31;
    v69 = v25;
    v68 = v29;
    v59 = a7;
    do
    {
      v37 = v77;
      v84 = v34;
      Array.subscript.getter();
      v78(v37);
      (*v74)(v37, a7);
      v38 = v81;
      v83 = v36;
      v39 = v87;
      Array.subscript.getter();
      v40 = a7;
      v41 = *v73;
      (*v73)(v25, v38, v14);
      v42 = *v72;
      (*v72)(v38, v39);
      LOBYTE(v39) = dispatch thunk of static Equatable.== infix(_:_:)();
      v82 = *v85;
      v82(v25, v14);
      if (v39)
      {
        v43 = v62;
        v44 = v83;
        v45 = v87;
        Array.subscript.getter();
        v46 = &v43[*(v45 + 52)];
        v47 = v63;
        v48 = v64;
        (*v61)(v63, v46, v64);
        v42(v43, v87);
        type metadata accessor for Array();
        v49 = v70;
        Array._makeMutableAndUnique()();
        v50 = *v49;
        v51 = v84;
        Array._checkSubscript_mutating(_:)(v84);
        isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType();
        v53 = v50 & 0xFFFFFFFFFFFFFF8;
        if ((isClassOrObjCExistentialType & 1) == 0)
        {
          v53 = v50;
        }

        v65(v53 + ((*(v67 + 80) + 32) & ~*(v67 + 80)) + *(v67 + 72) * v51, v47);
        (*v60)(v47, v48);
        result = (v82)(v68, v14);
        v34 = v51 + 1;
        a7 = v40;
        v25 = v69;
        v36 = v44 + 1;
      }

      else
      {
        v54 = v81;
        v36 = v83;
        v55 = v87;
        Array.subscript.getter();
        v25 = v69;
        v41(v69, v54, v14);
        v42(v54, v55);
        v56 = v68;
        v57 = dispatch thunk of static Comparable.< infix(_:_:)();
        v58 = v82;
        v82(v25, v14);
        result = v58(v56, v14);
        if ((v57 & 1) == 0)
        {
          ++v36;
        }

        v34 = v84;
        if (v57)
        {
          v34 = v84 + 1;
        }

        a7 = v59;
      }

      v14 = v75;
    }

    while (v34 < v76 && v36 < v80);
  }

  return result;
}

uint64_t Array<A>.animatableData.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v10[5] = a1;
  v10[2] = a2;
  v10[3] = a3;
  v5 = type metadata accessor for Array();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getWitnessTable(MEMORY[0x1E69E6340], v5);
  result = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #1 in Array<A>.animatableData.getter, v10, v5, AssociatedTypeWitness, MEMORY[0x1E69E73E0], v7, MEMORY[0x1E69E7410], v8);
  *a4 = result;
  return result;
}

void Array<A>.animatableData.setter(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v10 = &v18 - v9;
  v11 = MEMORY[0x193ABF270](*v3, v6, v8);

  v13 = MEMORY[0x193ABF270](v12, AssociatedTypeWitness);

  if (v13 >= v11)
  {
    v14 = v11;
  }

  else
  {
    v14 = v13;
  }

  if (v14 < 0)
  {
    __break(1u);
  }

  else
  {
    if (v14)
    {
      v15 = 0;
      v20 = a2;
      v21 = a3;
      v16 = *(a3 + 32);
      v18 = AssociatedTypeWitness;
      v19 = v16;
      do
      {
        v17 = v14;

        Array.subscript.getter();

        Array._makeMutableAndUnique()();
        Array._checkSubscript_mutating(_:)(v15);
        _swift_isClassOrObjCExistentialType();
        v19(v10, v6, v21);
        v14 = v17;
        ++v15;
      }

      while (v17 != v15);
    }
  }
}

uint64_t static AnimatablePair.-= infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t, uint64_t, uint64_t, void))
{
  a7(a1, a2, a3, *(a5 + 8));
  v16[0] = a3;
  v16[1] = a4;
  v16[2] = a5;
  v16[3] = a6;
  v14 = type metadata accessor for AnimatablePair(0, v16);
  return (a7)(a1 + *(v14 + 52), a2 + *(v14 + 52), a4, *(a6 + 8));
}

Swift::Void __swiftcall AnimatablePair.scale(by:)(Swift::Double by)
{
  v2 = v1;
  (*(*(v1 + 32) + 16))(*(v1 + 16));
  (*(*(v2 + 40) + 16))(*(v2 + 24), by);
}

void static KeyedAnimatableArray.-= infix(_:_:)(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = a1;
  v6 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v62 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v65 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v73 = &v49 - v14;
  v74 = v13;
  v68 = v13;
  v69 = v15;
  v66 = v16;
  v67 = v17;
  v75 = v16;
  v76 = v15;
  v77 = v17;
  v18 = type metadata accessor for KeyedAnimatableArray.Element(0, &v74);
  v63 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v64 = &v49 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = &v49 - v22;
  if ((a2[1] & 1) == 0)
  {
    v24 = *a2;
    if (v5[1])
    {

      *v5 = v24;
      *(v5 + 8) = 0;

      v74 = v68;
      v75 = v66;
      v76 = v69;
      v77 = v67;
      type metadata accessor for KeyedAnimatableArray(0, &v74);
      KeyedAnimatableArray.scale(by:)(-1.0);
    }

    else
    {
      v25 = MEMORY[0x193ABF270](*v5, v18, v21);
      v26 = MEMORY[0x193ABF270](v24, v18);
      v27 = 0;
      if (v25 >= 1 && v26 >= 1)
      {
        v27 = 0;
        v28 = 0;
        v61 = (v9 + 16);
        v59 = (v9 + 8);
        v51 = (v6 + 16);
        v50 = (v6 + 8);
        v52 = v26;
        v60 = v5;
        v56 = (v63 + 8);
        v58 = v23;
        v55 = v24;
        do
        {
          v57 = v25;
          while (1)
          {
            v72 = v27;
            v53 = *v5;
            Array.subscript.getter();
            v29 = *v61;
            v30 = v68;
            (*v61)(v73, v23, v68);
            v31 = *v56;
            (*v56)(v23, v18);
            v32 = v64;
            v71 = v28;
            Array.subscript.getter();
            v33 = v65;
            v54 = v29;
            v29(v65, v32, v30);
            v70 = v31;
            v31(v32, v18);
            v34 = v73;
            LOBYTE(v32) = dispatch thunk of static Equatable.== infix(_:_:)();
            v5 = v60;
            v35 = *v59;
            (*v59)(v33, v30);
            v35(v34, v30);
            if ((v32 & 1) == 0)
            {
              break;
            }

            v23 = v58;
            v36 = v71;
            Array.subscript.getter();
            v37 = v62;
            v38 = v66;
            (*v51)(v62, &v23[*(v18 + 52)], v66);
            v70(v23, v18);
            type metadata accessor for Array();
            Array._makeMutableAndUnique()();
            v39 = v72;
            Array._checkSubscript_mutating(_:)(v72);
            dispatch thunk of static AdditiveArithmetic.-= infix(_:_:)();
            (*v50)(v37, v38);
            v25 = v57;
            v27 = v39 + 1;
            if (v39 + 1 < v57)
            {
              v28 = v36 + 1;
              if (v36 + 1 < v52)
              {
                continue;
              }
            }

            goto LABEL_17;
          }

          v40 = v58;
          Array.subscript.getter();
          v41 = v68;
          v42 = v54;
          v54(v73, v40, v68);
          v43 = v70;
          v70(v40, v18);
          v44 = v64;
          Array.subscript.getter();
          v45 = v65;
          v42(v65, v44, v41);
          v43(v44, v18);
          v46 = v73;
          LOBYTE(v44) = dispatch thunk of static Comparable.< infix(_:_:)();
          v35(v45, v41);
          v35(v46, v41);
          if (v44)
          {
            v28 = v71;
            type metadata accessor for Array();
            v23 = v58;
            v47 = v72;
            v5 = v60;
            Array.remove(at:)();
            v70(v23, v18);
            v25 = v57 - 1;
            v27 = v47;
          }

          else
          {
            v27 = v72;
            v28 = v71 + 1;
            v5 = v60;
            v25 = v57;
            v23 = v58;
          }
        }

        while (v27 < v25 && v28 < v52);
      }

LABEL_17:
      if (v25 < v27)
      {
        __break(1u);
      }

      else
      {
        v74 = v27;
        v75 = v25;
        v48 = type metadata accessor for Array();
        swift_getWitnessTable(MEMORY[0x1E69E6348], v48);
        RangeReplaceableCollection.removeSubrange(_:)();
      }
    }
  }
}

Swift::Void __swiftcall KeyedAnimatableArray.scale(by:)(Swift::Double by)
{
  v4 = *v2;
  v5 = *(v1 + 40);
  v11 = *(v1 + 16);
  v9 = *(v1 + 24);
  v12 = v9;
  v13 = v5;
  v14 = v4;
  type metadata accessor for KeyedAnimatableArray.Element(255, &v11);
  v6 = type metadata accessor for Array();
  swift_getWitnessTable(MEMORY[0x1E69E6338], v6);
  RandomAccessCollection<>.indices.getter();
  v7 = v11;
  v8 = v12;
  if (v11 != v12)
  {
    if (v12 < v11)
    {
      __break(1u);
    }

    else if (v11 < v12)
    {
      v10 = *(v5 + 16);
      do
      {
        Array._makeMutableAndUnique()();
        Array._checkSubscript_mutating(_:)(v7);
        v10(v9, v5, by);
        ++v7;
      }

      while (v8 != v7);
      return;
    }

    __break(1u);
  }
}

void static KeyedAnimatableArray.+= infix(_:_:)(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = a1;
  v6 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v62 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v67 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v73 = &v49 - v14;
  v74 = v13;
  v68 = v13;
  v69 = v15;
  v63 = v16;
  v64 = v17;
  v75 = v16;
  v76 = v15;
  v77 = v17;
  v18 = type metadata accessor for KeyedAnimatableArray.Element(0, &v74);
  v65 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v66 = &v49 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = &v49 - v22;
  if ((a2[1] & 1) == 0)
  {
    v24 = *a2;
    if (v5[1])
    {

      *v5 = v24;
      *(v5 + 8) = 0;
    }

    else
    {
      v25 = MEMORY[0x193ABF270](*v5, v18, v21);
      v26 = MEMORY[0x193ABF270](v24, v18);
      v27 = 0;
      if (v25 >= 1 && v26 >= 1)
      {
        v27 = 0;
        v28 = 0;
        v61 = (v9 + 16);
        v59 = (v9 + 8);
        v51 = (v6 + 16);
        v50 = (v6 + 8);
        v52 = v26;
        v60 = v5;
        v56 = (v65 + 8);
        v58 = v23;
        v55 = v24;
        do
        {
          v57 = v25;
          while (1)
          {
            v72 = v27;
            v53 = *v5;
            Array.subscript.getter();
            v29 = *v61;
            v30 = v68;
            (*v61)(v73, v23, v68);
            v31 = *v56;
            (*v56)(v23, v18);
            v32 = v66;
            v71 = v28;
            Array.subscript.getter();
            v33 = v67;
            v54 = v29;
            v29(v67, v32, v30);
            v70 = v31;
            v31(v32, v18);
            v34 = v73;
            LOBYTE(v32) = dispatch thunk of static Equatable.== infix(_:_:)();
            v5 = v60;
            v35 = *v59;
            (*v59)(v33, v30);
            v35(v34, v30);
            if ((v32 & 1) == 0)
            {
              break;
            }

            v23 = v58;
            v36 = v71;
            Array.subscript.getter();
            v37 = v62;
            v38 = v63;
            (*v51)(v62, &v23[*(v18 + 52)], v63);
            v70(v23, v18);
            type metadata accessor for Array();
            Array._makeMutableAndUnique()();
            v39 = v72;
            Array._checkSubscript_mutating(_:)(v72);
            dispatch thunk of static AdditiveArithmetic.+= infix(_:_:)();
            (*v50)(v37, v38);
            v25 = v57;
            v27 = v39 + 1;
            if (v39 + 1 < v57)
            {
              v28 = v36 + 1;
              if (v36 + 1 < v52)
              {
                continue;
              }
            }

            goto LABEL_17;
          }

          v40 = v58;
          Array.subscript.getter();
          v41 = v68;
          v42 = v54;
          v54(v73, v40, v68);
          v43 = v70;
          v70(v40, v18);
          v44 = v66;
          Array.subscript.getter();
          v45 = v67;
          v42(v67, v44, v41);
          v43(v44, v18);
          v46 = v73;
          LOBYTE(v44) = dispatch thunk of static Comparable.< infix(_:_:)();
          v35(v45, v41);
          v35(v46, v41);
          if (v44)
          {
            v28 = v71;
            type metadata accessor for Array();
            v23 = v58;
            v47 = v72;
            v5 = v60;
            Array.remove(at:)();
            v70(v23, v18);
            v25 = v57 - 1;
            v27 = v47;
          }

          else
          {
            v27 = v72;
            v28 = v71 + 1;
            v5 = v60;
            v25 = v57;
            v23 = v58;
          }
        }

        while (v27 < v25 && v28 < v52);
      }

LABEL_17:
      if (v25 < v27)
      {
        __break(1u);
      }

      else
      {
        v74 = v27;
        v75 = v25;
        v48 = type metadata accessor for Array();
        swift_getWitnessTable(MEMORY[0x1E69E6348], v48);
        RangeReplaceableCollection.removeSubrange(_:)();
      }
    }
  }
}

uint64_t key path getter for AnimatablePair.subscript() : <A, B>AnimatablePair<A, B>AB@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v4 = *(a1 + a2 - 32);
  v5 = *(a1 + a2 - 8);
  v9 = *(a1 + a2 - 24);
  v6 = *(swift_getTupleTypeMetadata2() + 48);
  v10 = v4;
  v11 = v9;
  v12 = v5;
  v7 = type metadata accessor for AnimatablePair(0, &v10);
  return AnimatablePair.subscript.getter(a3, a3 + v6, v7);
}

uint64_t key path setter for AnimatablePair.subscript() : <A, B>AnimatablePair<A, B>AB(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 32);
  v6 = *(a3 + a4 - 8);
  v15 = *(a3 + a4 - 24);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v8 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v10 = &v15 - v9;
  (*(v11 + 16))(&v15 - v9, a1, TupleTypeMetadata2, v8);
  v12 = *(TupleTypeMetadata2 + 48);
  v16 = v5;
  v17 = v15;
  v18 = v6;
  v13 = type metadata accessor for AnimatablePair(0, &v16);
  return AnimatablePair.subscript.setter(v10, &v10[v12], v13);
}

uint64_t AnimatablePair.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = a2;
  v7 = *(a3 + 16);
  v6 = *(a3 + 24);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13.n128_f64[0] = MEMORY[0x1EEE9AC00](v12);
  v15 = &v20 - v14;
  v16 = *(v7 - 8);
  (*(v16 + 32))(&v20 - v14, a1, v7, v13);
  v17 = *(v6 - 8);
  (*(v17 + 32))(&v15[*(TupleTypeMetadata2 + 48)], v21, v6);
  (*(v9 + 32))(v11, v15, TupleTypeMetadata2);
  v18 = *(TupleTypeMetadata2 + 48);
  (*(v16 + 40))(v3, v11, v7);
  return (*(v17 + 40))(v3 + *(a3 + 52), &v11[v18], v6);
}

void (*AnimatablePair.subscript.modify(void *a1, uint64_t a2))(uint64_t *a1, char a2)
{
  v5 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x38uLL);
  }

  v7 = v6;
  *a1 = v6;
  *v6 = a2;
  v6[1] = v2;
  v9 = *(a2 + 16);
  v8 = *(a2 + 24);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v7[2] = TupleTypeMetadata2;
  v11 = *(TupleTypeMetadata2 - 8);
  v7[3] = v11;
  v12 = *(v11 + 64);
  if (v5)
  {
    v7[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v7[4] = malloc(*(v11 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v7[5] = v13;
  v15 = *(TupleTypeMetadata2 + 48);
  *(v7 + 12) = v15;
  (*(*(v9 - 8) + 16))();
  (*(*(v8 - 8) + 16))(v14 + v15, v2 + *(a2 + 52), v8);
  return AnimatablePair.subscript.modify;
}

void AnimatablePair.subscript.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v4 = *(*a1 + 32);
  v3 = *(*a1 + 40);
  if (a2)
  {
    v5 = *(v2 + 16);
    v6 = *(v2 + 24);
    v7 = *v2;
    (*(v6 + 16))(*(v2 + 32), *(v2 + 40), v5);
    AnimatablePair.subscript.setter(v4, v4 + *(v5 + 48), v7);
    (*(v6 + 8))(v3, v5);
  }

  else
  {
    AnimatablePair.subscript.setter(*(v2 + 40), v3 + *(v2 + 48), *v2);
  }

  free(v3);
  free(v4);

  free(v2);
}

uint64_t static AnimatablePair.- infix(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void (*a7)(uint64_t, uint64_t, uint64_t, void)@<X6>, uint64_t a8@<X8>)
{
  v25 = a8;
  MEMORY[0x1EEE9AC00](a1);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21(v18);
  v26[0] = a3;
  v26[1] = a4;
  v26[2] = a5;
  v26[3] = a6;
  v22 = type metadata accessor for AnimatablePair(0, v26);
  a7(a1 + *(v22 + 52), a2 + *(v22 + 52), a4, *(a6 + 8));
  return AnimatablePair.init(_:_:)(v20, v16, a3, a4, a5, a6, v25);
}

uint64_t protocol witness for static AdditiveArithmetic.zero.getter in conformance AnimatablePair<A, B>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v7 + 16);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v11 + 32);
  dispatch thunk of static AdditiveArithmetic.zero.getter();
  v13 = *(a1 + 40);
  dispatch thunk of static AdditiveArithmetic.zero.getter();
  return AnimatablePair.init(_:_:)(v10, v6, v8, v4, v12, v13, a2);
}

uint64_t static AnimatableArray.zero.getter@<X0>(uint64_t *a2@<X8>)
{
  result = static Array._allocateUninitialized(_:)();
  *a2 = result;
  return result;
}

uint64_t static AnimatableArray.+= infix(_:_:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(unint64_t, char *, uint64_t, void))
{
  v9 = *(a3 - 8);
  v10 = MEMORY[0x1EEE9AC00](a1);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v13;
  v17 = MEMORY[0x193ABF270](*v15, v16, v10);
  result = MEMORY[0x193ABF270](v14, a3);
  if (result >= v17)
  {
    v19 = v17;
  }

  else
  {
    v19 = result;
  }

  if (v19 < 0)
  {
    __break(1u);
  }

  else
  {
    v29 = a4;
    if (v19)
    {
      v20 = a5;
      v21 = 0;
      v28 = v9 + 8;
      do
      {
        v22 = v21 + 1;
        v23 = v19;
        Array.subscript.getter();
        type metadata accessor for Array();
        v24 = v20;
        Array._makeMutableAndUnique()();
        v25 = *a1;
        Array._checkSubscript_mutating(_:)(v21);
        isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType();
        v27 = v25 & 0xFFFFFFFFFFFFFF8;
        if ((isClassOrObjCExistentialType & 1) == 0)
        {
          v27 = v25;
        }

        v24(v27 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v21, v12, a3, *(v29 + 8));
        v20 = v24;
        result = (*(v9 + 8))(v12, a3);
        v19 = v23;
        ++v21;
      }

      while (v23 != v22);
    }
  }

  return result;
}

uint64_t static AnimatableArray.+ infix(_:_:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (*a5)(void *, uint64_t *, uint64_t, uint64_t, __n128)@<X4>, void *a6@<X8>)
{
  v10 = *a2;
  *a6 = *a1;
  v12 = v10;

  return (a5)(a6, &v12, a3, a4);
}

Swift::Void __swiftcall AnimatableArray.scale(by:)(Swift::Double by)
{
  v2 = v1;
  v4 = *(v1 + 16);
  v5 = type metadata accessor for Array();
  swift_getWitnessTable(MEMORY[0x1E69E6338], v5);
  RandomAccessCollection<>.indices.getter();
  v6 = v9;
  if (v9 != v10)
  {
    if (v10 < v9)
    {
      __break(1u);
    }

    else if (v9 < v10)
    {
      v7 = *(v2 + 24);
      v8 = *(v7 + 16);
      do
      {
        Array._makeMutableAndUnique()();
        Array._checkSubscript_mutating(_:)(v6);
        _swift_isClassOrObjCExistentialType();
        v8(v4, v7, by);
        ++v6;
      }

      while (v10 != v6);
      return;
    }

    __break(1u);
  }
}

double AnimatableArray.magnitudeSquared.getter(uint64_t a1)
{
  v1 = type metadata accessor for Array();

  swift_getWitnessTable(MEMORY[0x1E69E6328], v1);
  Sequence.reduce<A>(_:_:)();

  return v3;
}

uint64_t protocol witness for static AdditiveArithmetic.+ infix(_:_:) in conformance AnimatableArray<A>@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(void *, uint64_t *, uint64_t, uint64_t, __n128)@<X4>, void *a5@<X8>)
{
  v7 = *a2;
  *a5 = *a1;
  v11 = v7;
  v8 = *(a3 + 16);
  v9 = *(a3 + 24);

  return (a4)(a5, &v11, v8, v9);
}

void key path setter for Array<A>.animatableData : <A>[A](uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + a4 - 8);
  v6 = *a1;
  v5 = type metadata accessor for Array();

  Array<A>.animatableData.setter(&v6, v5, v4);
}

void (*Array<A>.animatableData.modify(uint64_t *a1, uint64_t a2, uint64_t a3))(uint64_t *a1, char a2)
{
  a1[2] = a3;
  a1[3] = v3;
  a1[1] = a2;
  Array<A>.animatableData.getter(*v3, *(a2 + 16), a3, a1);
  return Array<A>.animatableData.modify;
}

void Array<A>.animatableData.modify(uint64_t *a1, char a2)
{
  v2 = a1[2];
  v3 = a1[1];
  if (a2)
  {
    v4 = *a1;

    Array<A>.animatableData.setter(&v4, v3, v2);
  }

  else
  {
    v4 = *a1;
    Array<A>.animatableData.setter(&v4, v3, v2);
  }
}

uint64_t static KeyedAnimatableArray.Element.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (dispatch thunk of static Equatable.== infix(_:_:)())
  {
    v12[0] = a3;
    v12[1] = a4;
    v12[2] = a5;
    v12[3] = a6;
    type metadata accessor for KeyedAnimatableArray.Element(0, v12);
    v10 = dispatch thunk of static Equatable.== infix(_:_:)();
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

uint64_t static KeyedAnimatableArray.zero.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v7[0] = a1;
  v7[1] = a2;
  v7[2] = a3;
  v7[3] = a4;
  type metadata accessor for KeyedAnimatableArray.Element(0, v7);
  result = static Array._allocateUninitialized(_:)();
  *a5 = result;
  *(a5 + 8) = 1;
  return result;
}

uint64_t static KeyedAnimatableArray.+ infix(_:_:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t (*a7)(uint64_t, uint64_t *, uint64_t, uint64_t, uint64_t, uint64_t)@<X6>, uint64_t a8@<X8>)
{
  v14 = *(a1 + 8);
  v15 = *a2;
  v16 = *(a2 + 8);
  *a8 = *a1;
  *(a8 + 8) = v14;
  v18 = v15;
  v19 = v16;

  return a7(a8, &v18, a3, a4, a5, a6);
}

double KeyedAnimatableArray.magnitudeSquared.getter(void *a1)
{
  v2 = *v1;
  v9[5] = 0;
  v9[6] = v2;
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  v6 = a1[5];

  v9[0] = v3;
  v9[1] = v4;
  v9[2] = v5;
  v9[3] = v6;
  type metadata accessor for KeyedAnimatableArray.Element(255, v9);
  v7 = type metadata accessor for Array();
  swift_getWitnessTable(MEMORY[0x1E69E6328], v7);
  Sequence.reduce<A>(_:_:)();

  return *v9;
}

uint64_t static KeyedAnimatableArray.== infix(_:_:)(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a1 + 8);
  v7 = *(a2 + 8);
  v10[0] = a3;
  v10[1] = a4;
  v10[2] = a5;
  v10[3] = a6;
  v8 = type metadata accessor for KeyedAnimatableArray.Element(0, v10);
  swift_getWitnessTable(protocol conformance descriptor for KeyedAnimatableArray<A, B>.Element, v8);
  return static Array<A>.== infix(_:_:)() & ~(v6 ^ v7) & 1;
}

uint64_t protocol witness for static AdditiveArithmetic.+ infix(_:_:) in conformance KeyedAnimatableArray<A, B>@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X2>, uint64_t (*a4)(uint64_t, uint64_t *, uint64_t, uint64_t, uint64_t, uint64_t)@<X4>, uint64_t a5@<X8>)
{
  v7 = *(a1 + 8);
  v8 = *a2;
  v9 = *(a2 + 8);
  *a5 = *a1;
  *(a5 + 8) = v7;
  v15 = v8;
  v16 = v9;
  v10 = a3[2];
  v11 = a3[3];
  v12 = a3[4];
  v13 = a3[5];

  return a4(a5, &v15, v10, v11, v12, v13);
}

Swift::Void __swiftcall Array._checkSubscript_mutating(_:)(Swift::Int a1)
{
  v2 = v1;
  isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType();
  if (a1 < 0)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return;
  }

  v5 = v2 & 0xFFFFFFFFFFFFFF8;
  if ((isClassOrObjCExistentialType & 1) == 0)
  {
    v5 = v2;
  }

  if (*(v5 + 16) <= a1)
  {
    goto LABEL_7;
  }
}

double partial apply for closure #1 in AnimatableArray.magnitudeSquared.getter@<D0>(double *a1@<X0>, double *a2@<X8>)
{
  v4 = *a1;
  result = v4 + (*(*(v2 + 24) + 24))(*(v2 + 16), *(v2 + 24));
  *a2 = result;
  return result;
}

double partial apply for closure #1 in KeyedAnimatableArray.magnitudeSquared.getter@<D0>(double *a1@<X0>, double *a2@<X8>)
{
  v4 = *(v2 + 40);
  v5 = *a1;
  v8 = *(v2 + 16);
  v9 = *(v2 + 24);
  v7 = v9;
  v10 = v4;
  type metadata accessor for KeyedAnimatableArray.Element(0, &v8);
  result = v5 + (*(v4 + 24))(v7, v4);
  *a2 = result;
  return result;
}

__n128 _GestureInputs.init(_:viewSubgraph:events:time:resetSeed:inheritedPhase:gesturePreferenceKeys:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, int a4@<W3>, int a5@<W4>, int a6@<W5>, int a7@<W6>, uint64_t a8@<X8>)
{
  *(a8 + 116) = a6;
  *(a8 + 120) = 0;
  v8 = *(a1 + 48);
  *(a8 + 32) = *(a1 + 32);
  *(a8 + 48) = v8;
  *(a8 + 64) = *(a1 + 64);
  v9 = *(a1 + 80);
  result = *a1;
  v11 = *(a1 + 16);
  *a8 = *a1;
  *(a8 + 16) = v11;
  *(a8 + 80) = v9;
  *(a8 + 84) = a4;
  *(a8 + 112) = a5;
  v12 = MEMORY[0x1E69E7CC0];
  *(a8 + 88) = a2;
  *(a8 + 96) = v12;
  *(a8 + 104) = a7;
  *(a8 + 108) = a3;
  return result;
}

unint64_t _GestureOutputs.debugData.getter()
{
  LODWORD(v1) = *(v0 + 4);
  v2 = v1 == *MEMORY[0x1E698D3F8];
  if (v1 == *MEMORY[0x1E698D3F8])
  {
    v1 = 0;
  }

  else
  {
    v1 = v1;
  }

  return v1 | (v2 << 32);
}

uint64_t _GestureOutputs.init(phase:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *MEMORY[0x1E698D3F8];
  *(a2 + 8) = MEMORY[0x1E69E7CC0];
  *(a2 + 16) = 0;
  *a2 = result;
  *(a2 + 4) = v2;
  return result;
}

void _s7SwiftUI16PrimitiveGesturePAAE4bodys5NeverOvgAA03TapD0V_Ttg5()
{
  _StringGuts.grow(_:)(32);

  MEMORY[0x193ABEDD0](0x7574736547706154, 0xEA00000000006572);
  MEMORY[0x193ABEDD0](46, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void _s7SwiftUI16PrimitiveGesturePAAE4bodys5NeverOvgAA013DefaultLayoutD0V_Ttg5()
{
  _StringGuts.grow(_:)(32);

  MEMORY[0x193ABEDD0](0xD000000000000014, 0x800000018DD7F6E0);
  MEMORY[0x193ABEDD0](46, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void protocol witness for Gesture.body.getter in conformance <> StaticIf<A, B, C>(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 24);
  v4 = vextq_s8(*(a2 - 16), *(a2 - 16), 8uLL);
  v5 = v3;
  swift_getWitnessTable(protocol conformance descriptor for <> StaticIf<A, B, C>, a1, &v4);
  specialized PrimitiveGesture.body.getter(a1);
}

uint64_t _GestureInputs.animatedPosition()()
{
  v5 = *v0;
  v1 = *(v0 + 16);
  v7 = *(v0 + 24);
  v8 = *(v0 + 40);
  v9[0] = *(v0 + 56);
  *(v9 + 12) = *(v0 + 68);
  AGGraphClearUpdate();
  v2 = AGSubgraphGetCurrent();
  AGSubgraphSetCurrent();
  v6 = v1;
  swift_beginAccess();
  v3 = CachedEnvironment.animatedPosition(for:)(&v5);
  swift_endAccess();
  AGSubgraphSetCurrent();

  AGGraphSetUpdate();
  return v3;
}

uint64_t _GestureInputs.transform.getter()
{
  memset(v3, 0, sizeof(v3));
  specialized static GraphHost.currentHost.getter();
  specialized GraphHost.intern<A>(_:for:id:)(v3, &type metadata for ViewTransform, 0);

  AGGraphClearUpdate();
  v0 = AGSubgraphGetCurrent();
  AGSubgraphSetCurrent();
  IndirectAttribute2 = AGGraphCreateIndirectAttribute2();
  AGGraphSetIndirectAttribute();
  AGSubgraphSetCurrent();

  AGGraphSetUpdate();
  outlined destroy of ViewTransform(v3);
  return IndirectAttribute2;
}

uint64_t _GestureInputs.position.getter()
{
  specialized static GraphHost.currentHost.getter();
  type metadata accessor for CGPoint(0);
  specialized GraphHost.intern<A>(_:for:id:)(v0, 0, 0.0, 0.0);

  AGGraphClearUpdate();
  v1 = AGSubgraphGetCurrent();
  AGSubgraphSetCurrent();
  IndirectAttribute2 = AGGraphCreateIndirectAttribute2();
  AGGraphSetIndirectAttribute();
  AGSubgraphSetCurrent();

  AGGraphSetUpdate();
  return IndirectAttribute2;
}

uint64_t _GestureInputs.size.getter()
{
  specialized static GraphHost.currentHost.getter();
  specialized GraphHost.intern<A>(_:for:id:)(&type metadata for ViewSize, 0, 0.0, 0.0, 0.0, 0.0);

  AGGraphClearUpdate();
  v0 = AGSubgraphGetCurrent();
  AGSubgraphSetCurrent();
  IndirectAttribute2 = AGGraphCreateIndirectAttribute2();
  AGGraphSetIndirectAttribute();
  AGSubgraphSetCurrent();

  AGGraphSetUpdate();
  return IndirectAttribute2;
}

uint64_t _GestureOutputs.debugData.setter(uint64_t result)
{
  v2 = *MEMORY[0x1E698D3F8];
  if ((result & 0x100000000) == 0)
  {
    v2 = result;
  }

  *(v1 + 4) = v2;
  return result;
}

void _GestureOutputs.withPhase<A>(_:)(int a1@<W0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 4);
  v5 = *(v2 + 8);
  v6 = *(v2 + 16);
  *a2 = a1;
  *(a2 + 4) = v4;

  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
}

uint64_t _s7SwiftUI7GesturePAA4Body_5ValueQZAERtzrlE05_makeC07gesture6inputsAA01_C7OutputsVyAGGAA06_GraphE0VyxG_AA01_C6InputsVtFZAA08DistanceC0V_Tt2B5@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v32 = *MEMORY[0x1E69E9840];
  static DynamicPropertyCache.fields(of:)(&type metadata for DistanceGesture, &v25);
  v6 = v25;
  v7 = v26;
  v8 = DWORD1(v26);
  v9 = a2[5];
  v29 = a2[4];
  v30 = v9;
  v31[0] = a2[6];
  *(v31 + 12) = *(a2 + 108);
  v10 = a2[1];
  v25 = *a2;
  v26 = v10;
  v11 = a2[3];
  v27 = a2[2];
  v28 = v11;
  outlined init with copy of _GestureInputs(a2, &v18);
  LOBYTE(v18) = v7;
  specialized closure #1 in BodyAccessor.makeBody(container:inputs:fields:)(&v25, v6, *(&v6 + 1), v7 | (v8 << 32), a1, &v18);
  v12 = *(&v18 + 1);
  v13 = v19;
  v14 = BYTE8(v19);
  _s7SwiftUI15ModifierGestureV05_makeD07gesture6inputsAA01_D7OutputsVy5ValueQzGAA06_GraphI0VyACyxq_GG_AA01_D6InputsVtFZAA014StateContainerD0VyAA08DistanceD0V0L4TypeVAA12SpatialEventV12CoreGraphics7CGFloatVG_AA0Q8ListenerVyAYGTt2B5(a2, &v18);
  v15 = v18;
  v17 = v19;
  if (v14)
  {
    v22 = v29;
    v23 = v30;
    v24[0] = v31[0];
    *(v24 + 12) = *(v31 + 12);
    v18 = v25;
    v19 = v26;
    v20 = v27;
    v21 = v28;
    outlined destroy of _GestureInputs(&v18);
    result = outlined consume of DynamicPropertyCache.Fields.Layout(v6, *(&v6 + 1), v7);
  }

  else
  {
    LOBYTE(v18) = v7;
    specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(a1, v6, *(&v6 + 1), (v8 << 32) | v7, v12, v13);
    outlined consume of DynamicPropertyCache.Fields.Layout(v6, *(&v6 + 1), v7);
    v22 = v29;
    v23 = v30;
    v24[0] = v31[0];
    *(v24 + 12) = *(v31 + 12);
    v18 = v25;
    v19 = v26;
    v20 = v27;
    v21 = v28;
    result = outlined destroy of _GestureInputs(&v18);
  }

  *a3 = v15;
  *(a3 + 16) = v17;
  return result;
}

void _s7SwiftUI7GesturePAA4Body_5ValueQZAERtzrlE05_makeC07gesture6inputsAA01_C7OutputsVyAGGAA06_GraphE0VyxG_AA01_C6InputsVtFZs5NeverO_Tt2B5(uint64_t a1, uint64_t a2)
{
  static DynamicPropertyCache.fields(of:)(MEMORY[0x1E69E73E0], v3);
  v3[16] = 0;
  v3[17] = 0xE000000000000000;
  outlined init with copy of _GestureInputs(a2, v3);
  _StringGuts.grow(_:)(29);

  v3[0] = 0x726576654ELL;
  v3[1] = 0xE500000000000000;
  MEMORY[0x193ABEDD0](0xD00000000000001BLL, 0x800000018DD77760);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t static Gesture<>._makeGesture(gesture:inputs:)@<X0>(unsigned int *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v61 = *MEMORY[0x1E69E9840];
  v8 = *a1;
  v9 = a2[5];
  v58 = a2[4];
  v59 = v9;
  *v60 = a2[6];
  *&v60[12] = *(a2 + 108);
  v10 = a2[1];
  v54 = *a2;
  v55 = v10;
  v11 = a2[3];
  v56 = a2[2];
  v57 = v11;
  static DynamicPropertyCache.fields(of:)(a3, &v47);
  v12 = v47;
  v13 = v48;
  v14 = DWORD1(v48);
  v51 = v58;
  v52 = v59;
  v53[0] = *v60;
  *(v53 + 12) = *&v60[12];
  v47 = v54;
  v48 = v55;
  v49 = v56;
  v50 = v57;
  v31 = v14;
  v32 = v8;
  LODWORD(v36) = v8;
  v44 = v12;
  v34 = v13;
  LOBYTE(v45) = v13;
  v46 = v14;
  outlined init with copy of _GestureInputs(&v54, &v37);
  v16 = type metadata accessor for GestureBodyAccessor(0, a3, a4, v15);
  swift_getWitnessTable(protocol conformance descriptor for GestureBodyAccessor<A>, v16);
  BodyAccessor.makeBody(container:inputs:fields:)(&v35, &v37, &v36, &v47, &v44, v16, v17);
  v30 = v37;
  v33 = v38;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v41 = v58;
  v42 = v59;
  v43[0] = *v60;
  *(v43 + 12) = *&v60[12];
  v37 = v54;
  v38 = v55;
  v39 = v56;
  v40 = v57;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 32))(&v44, &v35, &v37, AssociatedTypeWitness, AssociatedConformanceWitness);
  if ((v60[24] & 8) != 0 && (!swift_conformsToProtocol2() || !AssociatedTypeWitness))
  {
    _gestureModifierProtocolDescriptor();
    if (swift_conformsToProtocol())
    {
      v20 = 2;
    }

    else
    {
      v20 = 1;
    }

    LOBYTE(v36) = v20;
    v41 = v58;
    v42 = v59;
    v43[0] = *v60;
    *(v43 + 12) = *&v60[12];
    v37 = v54;
    v38 = v55;
    v39 = v56;
    v40 = v57;
    v21 = swift_getAssociatedTypeWitness();
    v24 = type metadata accessor for _GestureOutputs(0, v21, v22, v23);
    v25 = DWORD1(v44) == *MEMORY[0x1E698D3F8];
    if (DWORD1(v44) == *MEMORY[0x1E698D3F8])
    {
      v26 = 0;
    }

    else
    {
      v26 = DWORD1(v44);
    }

    LOBYTE(v35) = 1;
    _GestureOutputs.reallyWrap<A>(_:kind:properties:inputs:data:)(AssociatedTypeWitness, &v36, 0x100000000, &v37, v26 | (v25 << 32), 0x100000000, v24);
  }

  v27 = v44;
  v28 = v45;
  if ((v33 & 1) == 0)
  {
    v36 = v30;
    v35 = v32;
    v44 = v12;
    LOBYTE(v45) = v34;
    v46 = v31;
    _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(&v35, &v44, a3);
  }

  v41 = v51;
  v42 = v52;
  v43[0] = v53[0];
  *(v43 + 12) = *(v53 + 12);
  v37 = v47;
  v38 = v48;
  v39 = v49;
  v40 = v50;
  outlined destroy of _GestureInputs(&v37);
  result = outlined consume of DynamicPropertyCache.Fields.Layout(v12, *(&v12 + 1), v34);
  *a5 = v27;
  *(a5 + 16) = v28;
  return result;
}

void _GestureInputs.makeDefaultOutputs<A>()(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v37 = *MEMORY[0x1E69E9840];
  v6 = *(v4 + 96);
  v7 = *(v4 + 104);
  v8 = *(v4 + 120);
  v9 = type metadata accessor for GesturePhase(0, a1, a2, a3);
  swift_getWitnessTable(protocol conformance descriptor for GesturePhase<A>, v9);
  v11 = v10;
  DefaultRule.init()(&v30);
  v28 = v30;
  v34 = v9;
  v13 = type metadata accessor for DefaultRule(0, v9, v11, v12);
  v35 = v13;
  swift_getWitnessTable(protocol conformance descriptor for DefaultRule<A>, v13);
  v36 = v14;
  v15 = type metadata accessor for Attribute();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v28, partial apply for closure #1 in Attribute.init<A>(_:), v33, v13, MEMORY[0x1E69E73E0], v15, MEMORY[0x1E69E7410], v16);
  v17 = v32;
  v18 = *MEMORY[0x1E698D3F8];
  if ((v8 & 8) != 0)
  {
    v30 = 0;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for DefaultRule<GestureDebug.Data>(0, v19, v20, v21);
    lazy protocol witness table accessor for type DefaultRule<GestureDebug.Data> and conformance DefaultRule<A>(v22, v23, v24, v25);
    v18 = Attribute.init<A>(body:value:flags:update:)();
  }

  v28 = v6;
  v29 = v7;

  PreferencesInputs.makeIndirectOutputs()(&v30);

  v26 = v30;
  v27 = v31;

  *a4 = v17;
  *(a4 + 4) = v18;
  *(a4 + 8) = v26;
  *(a4 + 16) = v27;
}

void _GestureInputs.mergeViewInputs(_:viewSubgraph:)(__int128 *a1, void *a2)
{
  v4 = a1[3];
  v19 = a1[2];
  v20 = v4;
  v21 = a1[4];
  v22 = *(a1 + 20);
  v5 = a1[1];
  v17 = *a1;
  v18 = v5;
  v6 = *(v2 + 48);
  v23[2] = *(v2 + 32);
  v23[3] = v6;
  v23[4] = *(v2 + 64);
  v24 = *(v2 + 80);
  v7 = *(v2 + 16);
  v23[0] = *v2;
  v23[1] = v7;
  outlined init with copy of _ViewInputs(&v17, v16);
  outlined destroy of _ViewInputs(v23);
  v8 = v18;
  v9 = v20;
  *(v2 + 32) = v19;
  *(v2 + 48) = v9;
  *(v2 + 64) = v21;
  *(v2 + 80) = v22;
  v10 = v18;
  *v2 = v17;
  *(v2 + 16) = v10;
  swift_beginAccess();
  v11 = v8[3];
  v16[1] = v8[2];
  v12 = v8[4];
  v13 = v8[5];
  v16[2] = v11;
  v16[3] = v12;
  v16[4] = v13;
  v16[0] = v8[1];
  _s7SwiftUI10MutableBoxCyAA17CachedEnvironmentVGMaTm_6(0, &lazy cache variable for type metadata for MutableBox<CachedEnvironment>, &type metadata for CachedEnvironment, type metadata accessor for MutableBox);
  v14 = swift_allocObject();
  memmove((v14 + 16), v8 + 1, 0x50uLL);
  outlined init with copy of CachedEnvironment(v16, v15);

  *(v2 + 16) = v14;
  objc_storeStrong((v2 + 88), a2);
}

double _GestureOutputs.overrideDefaultValues(_:)(unsigned int *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *a1;
  v5 = a1[1];
  v7 = *(a1 + 1);
  v8 = a1[4];
  v9 = *v4;
  v10 = v4[1];
  v11 = *(v4 + 1);
  v12 = v4[4];
  v13 = type metadata accessor for GesturePhase(0, *(a2 + 16), a3, a4);
  swift_getWitnessTable(protocol conformance descriptor for GesturePhase<A>, v13);
  LOBYTE(v23) = 0;
  v15 = Attribute.overrideDefaultValue<A>(_:type:)(v6, v13, v9, v13, v13, v14);
  if (v10 != *MEMORY[0x1E698D3F8] && v5 != *MEMORY[0x1E698D3F8])
  {
    MEMORY[0x1EEE9AC00](v15);
    type metadata accessor for DefaultRule<GestureDebug.Data>(0, v16, v17, v18);
    MEMORY[0x1EEE9AC00](v19);
    AGGraphMutateAttribute();
  }

  v23 = v11;
  v24 = v12;
  v21 = v7;
  v22 = v8;

  PreferencesOutputs.attachIndirectOutputs(to:)(&v21);

  return result;
}

uint64_t protocol witness for static Gesture._makeGesture(gesture:inputs:) in conformance DistanceGesture@<X0>(unsigned int *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a1;
  v4 = a2[5];
  v8[4] = a2[4];
  v8[5] = v4;
  v9[0] = a2[6];
  *(v9 + 12) = *(a2 + 108);
  v5 = a2[1];
  v8[0] = *a2;
  v8[1] = v5;
  v6 = a2[3];
  v8[2] = a2[2];
  v8[3] = v6;
  return _s7SwiftUI7GesturePAA4Body_5ValueQZAERtzrlE05_makeC07gesture6inputsAA01_C7OutputsVyAGGAA06_GraphE0VyxG_AA01_C6InputsVtFZAA08DistanceC0V_Tt2B5(v3, v8, a3);
}

uint64_t _GestureInputs.intern<A>(_:id:)(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v5 = *a2;
  specialized static GraphHost.currentHost.getter();
  v9 = v5;
  default argument 1 of GraphHost.intern<A>(_:for:id:)();
  v7 = GraphHost.intern<A>(_:for:id:)(a1, v6, &v9, a3);

  return v7;
}

void _GestureInputs.makeIndirectOutputs<A>()(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v7 = type metadata accessor for GesturePhase(0, a1, a2, a3);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v21 - v9;
  v11 = *(v4 + 96);
  v12 = *(v4 + 104);
  v13 = *(v4 + 120);
  static GesturePhase.defaultValue.getter(a1, v14, v15, v16);
  LOBYTE(v25[0]) = 0;
  _GestureInputs.intern<A>(_:id:)(v10, v25, v7);
  (*(v8 + 8))(v10, v7);
  IndirectAttribute2 = AGGraphCreateIndirectAttribute2();
  v18 = *MEMORY[0x1E698D3F8];
  if ((v13 & 8) != 0)
  {
    if (one-time initialization token for defaultValue != -1)
    {
      swift_once();
    }

    v25[6] = xmmword_1EAB1D4A8;
    v25[7] = xmmword_1EAB1D4B8;
    v25[8] = xmmword_1EAB1D4C8;
    v25[2] = xmmword_1EAB1D468;
    v25[3] = xmmword_1EAB1D478;
    v25[4] = xmmword_1EAB1D488;
    v25[5] = xmmword_1EAB1D498;
    v25[0] = static GestureDebug.Data.defaultValue;
    v25[1] = xmmword_1EAB1D458;
    specialized static GraphHost.currentHost.getter();
    specialized GraphHost.intern<A>(_:for:id:)(v25, &type metadata for GestureDebug.Data, 0);

    v18 = AGGraphCreateIndirectAttribute2();
  }

  v21[2] = v11;
  v22 = v12;

  PreferencesInputs.makeIndirectOutputs()(&v23);

  v19 = v23;
  v20 = v24;

  *a4 = IndirectAttribute2;
  *(a4 + 4) = v18;
  *(a4 + 8) = v19;
  *(a4 + 16) = v20;
}

double _GestureOutputs.setIndirectDependency(_:)(uint64_t a1)
{
  v2 = *(v1 + 4);
  v3 = *(v1 + 8);
  v4 = *MEMORY[0x1E698D3F8];
  AGGraphSetIndirectDependency();
  if (v2 != v4)
  {
    AGGraphSetIndirectDependency();
  }

  v6 = *(v3 + 16);
  if (v6)
  {

    v7 = 48;
    do
    {
      AGGraphSetIndirectDependency();
      v7 += 24;
      --v6;
    }

    while (v6);
  }

  return result;
}

Swift::Void __swiftcall _GestureInputs.copyCaches()()
{
  v1 = *(v0 + 16);
  swift_beginAccess();
  v2 = v1[3];
  v7[1] = v1[2];
  v3 = v1[4];
  v4 = v1[5];
  v7[2] = v2;
  v7[3] = v3;
  v7[4] = v4;
  v7[0] = v1[1];
  _s7SwiftUI10MutableBoxCyAA17CachedEnvironmentVGMaTm_6(0, &lazy cache variable for type metadata for MutableBox<CachedEnvironment>, &type metadata for CachedEnvironment, type metadata accessor for MutableBox);
  v5 = swift_allocObject();
  memmove((v5 + 16), v1 + 1, 0x50uLL);
  outlined init with copy of CachedEnvironment(v7, v6);

  *(v0 + 16) = v5;
}

double _GestureOutputs.attachIndirectOutputs(_:)(unsigned int *a1)
{
  v2 = a1[1];
  v3 = *(a1 + 1);
  v4 = a1[4];
  v5 = *(v1 + 4);
  v6 = *(v1 + 8);
  v7 = *(v1 + 16);
  AGGraphSetIndirectAttribute();
  if (v5 != *MEMORY[0x1E698D3F8] && v2 != *MEMORY[0x1E698D3F8])
  {
    AGGraphSetIndirectAttribute();
  }

  v11 = v6;
  v12 = v7;
  v9 = v3;
  v10 = v4;

  PreferencesOutputs.attachIndirectOutputs(to:)(&v9);

  return result;
}

Swift::Void __swiftcall _GestureOutputs.detachIndirectOutputs()()
{
  v1 = *(v0 + 4);
  v2 = *(v0 + 8);
  v3 = *MEMORY[0x1E698D3F8];
  AGGraphSetIndirectAttribute();
  if (v1 != v3)
  {
    AGGraphSetIndirectAttribute();
  }

  v4 = *(v2 + 16);
  if (v4)
  {
    v5 = v2 + 48;
    do
    {
      v5 += 24;
      AGGraphSetIndirectAttribute();
      --v4;
    }

    while (v4);
  }
}

uint64_t _GestureInputs.failedPhase.getter()
{
  specialized static GraphHost.currentHost.getter();
  _s7SwiftUI10MutableBoxCyAA17CachedEnvironmentVGMaTm_6(0, &lazy cache variable for type metadata for GesturePhase<()>, MEMORY[0x1E69E7CA8] + 8, type metadata accessor for GesturePhase);
  v1 = specialized GraphHost.intern<A>(_:for:id:)(768, v0, 4);

  return v1;
}

void protocol witness for Gesture.body.getter in conformance <A> A?(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  swift_getWitnessTable(protocol conformance descriptor for <A> A?, a1, &v3);
  specialized PrimitiveGesture.body.getter(a1);
}

uint64_t specialized closure #1 in Attribute.overrideDefaultValue<A>(_:type:)(uint64_t *a1, uint64_t a2)
{
  result = AGCreateWeakAttribute();
  *a1 = result;
  return result;
}

double static PubliclyPrimitiveGesture.makeGesture(gesture:inputs:)@<D0>(int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a5@<X8>)
{
  v7 = *a1;
  v8 = *(a2 + 80);
  v43 = *(a2 + 64);
  v44 = v8;
  v45 = *(a2 + 96);
  v46 = *(a2 + 112);
  v9 = *(a2 + 16);
  v39 = *a2;
  v40 = v9;
  v10 = *(a2 + 48);
  v41 = *(a2 + 32);
  v42 = v10;
  v11 = *(a2 + 120);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  KeyPath = swift_getKeyPath();
  v38 = v7;
  type metadata accessor for _GraphValue(0, a3, v14, v15);
  _GraphValue.subscript.getter(KeyPath, &v35);

  v30 = v43;
  v31 = v44;
  v32 = v45;
  v33 = v46;
  v26 = v39;
  v27 = v40;
  v28 = v41;
  v29 = v42;
  v34 = v11;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 32))(v36, &v35, &v26, AssociatedTypeWitness, AssociatedConformanceWitness);
  if ((v11 & 8) != 0 && (!swift_conformsToProtocol2() || !AssociatedTypeWitness))
  {
    _gestureModifierProtocolDescriptor();
    if (swift_conformsToProtocol())
    {
      v17 = 2;
    }

    else
    {
      v17 = 1;
    }

    LOBYTE(v35) = v17;
    v30 = v43;
    v31 = v44;
    v32 = v45;
    v33 = v46;
    v26 = v39;
    v27 = v40;
    v28 = v41;
    v29 = v42;
    v34 = v11;
    v18 = swift_getAssociatedTypeWitness();
    v21 = type metadata accessor for _GestureOutputs(0, v18, v19, v20);
    if (HIDWORD(v36[0]) == *MEMORY[0x1E698D3F8])
    {
      v22 = 0;
    }

    else
    {
      v22 = HIDWORD(v36[0]);
    }

    _GestureOutputs.reallyWrap<A>(_:kind:properties:inputs:data:)(AssociatedTypeWitness, &v35, 0x100000000, &v26, v22 | ((HIDWORD(v36[0]) == *MEMORY[0x1E698D3F8]) << 32), 0x100000000, v21);
  }

  v23 = v36[1];
  v24 = v37;
  result = *v36;
  *a5 = v36[0];
  *(a5 + 8) = v23;
  *(a5 + 16) = v24;
  return result;
}

void protocol witness for static Gesture._makeGesture(gesture:inputs:) in conformance Never(unsigned int *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a2[5];
  v6[4] = a2[4];
  v6[5] = v3;
  v7[0] = a2[6];
  *(v7 + 12) = *(a2 + 108);
  v4 = a2[1];
  v6[0] = *a2;
  v6[1] = v4;
  v5 = a2[3];
  v6[2] = a2[2];
  v6[3] = v5;
  _s7SwiftUI7GesturePAA4Body_5ValueQZAERtzrlE05_makeC07gesture6inputsAA01_C7OutputsVyAGGAA06_GraphE0VyxG_AA01_C6InputsVtFZs5NeverO_Tt2B5(v2, v6);
}

uint64_t GestureBodyAccessor.updateBody(of:changed:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v19[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = type metadata accessor for UncheckedSendable(0, v11, v11, v12);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v19[-v16];
  (*(v8 + 16))(v10, a1, a3, v15);
  UncheckedSendable.init(_:)(v10, a3, v17);
  if (a2)
  {
    closure #1 in GestureBodyAccessor.updateBody(of:changed:)(v17, a3, a4);
  }

  return (*(v14 + 8))(v17, v13);
}

uint64_t closure #1 in GestureBodyAccessor.updateBody(of:changed:)(char *a1, uint64_t a2, uint64_t a3)
{
  v89 = *MEMORY[0x1E69E9840];
  v6 = type metadata accessor for OSSignpostID();
  v7 = *(v6 - 8);
  v71 = v6;
  v72 = v7;
  MEMORY[0x1EEE9AC00](v6);
  v73 = v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v64 = v59 - v10;
  v63 = a3;
  v65 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v61 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v12 = v59 - v11;
  if (one-time initialization token for bodyInvoke != -1)
  {
    goto LABEL_37;
  }

  while (1)
  {
    v13 = static Signpost.bodyInvoke;
    v14 = word_1ED539040;
    v15 = HIBYTE(word_1ED539040);
    v16 = byte_1ED539042;
    v17 = static os_signpost_type_t.begin.getter();
    v83 = v13;
    v84 = v14;
    v85 = v15;
    v86 = v16;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {
      break;
    }

    v74 = *(&v13 + 1);
    LODWORD(v75) = v17;
    v59[1] = a1;
    v60 = v12;
    static OSSignpostID.exclusive.getter();
    type metadata accessor for _ContiguousArrayStorage<CVarArg>(0);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_18DDAB4C0;
    v19 = AGTypeID.description.getter();
    v21 = v20;
    v22 = MEMORY[0x1E69E6158];
    *(v18 + 56) = MEMORY[0x1E69E6158];
    lazy protocol witness table accessor for type String and conformance String();
    v24 = v23;
    *(v18 + 64) = v23;
    *(v18 + 32) = v19;
    *(v18 + 40) = v21;
    v25 = specialized static Tracing.libraryName(defining:)();
    *(v18 + 96) = v22;
    *(v18 + 104) = v24;
    *(v18 + 72) = v25;
    *(v18 + 80) = v26;
    v76 = v18;
    if (one-time initialization token for _signpostLog != -1)
    {
      swift_once();
    }

    if (v15)
    {
      v82 = v75;
      v80 = _signpostLog;
      v81 = &dword_18D018000;
      *&v83 = v13;
      *(&v83 + 1) = v74;
      v84 = v14;
      v78[0] = "%{public}@.body [in %{public}@]";
      v78[1] = 31;
      v79 = 2;
      v77 = v76;
      v27 = v64;
      specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v82, &v81, &v80, &v83, v64, v78, &v77);
      (*(v72 + 8))(v27, v71);
LABEL_34:

      v12 = v60;
      break;
    }

    if (v13 == 20)
    {
      v28 = 3;
    }

    else
    {
      v28 = 4;
    }

    v29 = bswap32(v13) | (4 * WORD1(v13));
    v30 = v75;
    v31 = v72 + 16;
    v66 = *(v72 + 16);
    v32 = v66(v73, v64, v71);
    v33 = 0;
    LOBYTE(v78[0]) = 1;
    v75 = v28;
    v72 = v31;
    v69 = 16 * v28;
    v70 = (v31 - 8);
    v68 = v76 + 32;
    v67 = *(&v13 + 1);
LABEL_11:
    v74 = v59;
    MEMORY[0x1EEE9AC00](v32);
    a1 = v59 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
    v35 = a1 + 8;
    v36 = v75;
    v37 = a1 + 8;
    do
    {
      *(v37 - 1) = 0;
      *v37 = 0;
      v37 += 16;
      --v36;
    }

    while (v36);
    v12 = (v68 + 40 * v33);
    v38 = v75;
    while (1)
    {
      v39 = *(v76 + 16);
      if (v33 == v39)
      {
        LOBYTE(v78[0]) = 0;
LABEL_19:
        v43 = v67;
        if (v67 == 20)
        {
          OSSignpostID.rawValue.getter();
        }

        kdebug_trace();
        if (a1[8] == 1)
        {
          kdebug_trace_string();
        }

        if (a1[24] == 1)
        {
          kdebug_trace_string();
        }

        if (a1[40] == 1)
        {
          kdebug_trace_string();
        }

        if (v43 != 20 && a1[56] == 1)
        {
          kdebug_trace_string();
        }

        if (one-time initialization token for continuation != -1)
        {
          swift_once();
        }

        v44 = v71;
        v45 = *v70;
        v46 = v73;
        (*v70)(v73, v71);
        v47 = __swift_project_value_buffer(v44, static OSSignpostID.continuation);
        v32 = v66(v46, v47, v44);
        if ((v78[0] & 1) == 0)
        {
          v48 = v71;
          v45(v73, v71);
          v45(v64, v48);
          goto LABEL_34;
        }

        goto LABEL_11;
      }

      if (v33 >= v39)
      {
        break;
      }

      ++v33;
      outlined init with copy of AnyTrackedValue(v12, &v83);
      v40 = v87;
      v41 = v88;
      __swift_project_boxed_opaque_existential_1(&v83, v87);
      *(v35 - 1) = CVarArg.kdebugValue(_:)(v29 | v30, v40, v41);
      *v35 = v42 & 1;
      v35 += 16;
      __swift_destroy_boxed_opaque_existential_1(&v83);
      v12 += 40;
      if (!--v38)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_37:
    swift_once();
  }

  AGGraphClearUpdate();
  v49 = v63;
  v50 = v12;
  v51 = v65;
  (*(v63 + 40))(v65, v63);
  AGGraphSetUpdate();
  v52 = $defer #1 <A>() in traceRuleBody<A>(_:body:)();
  MEMORY[0x1EEE9AC00](v52);
  v54 = type metadata accessor for GestureBodyAccessor(0, v51, v49, v53);
  v59[-2] = v54;
  swift_getWitnessTable(protocol conformance descriptor for GestureBodyAccessor<A>, v54);
  v59[-1] = v55;
  v56 = AssociatedTypeWitness;
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v50, partial apply for closure #2 in BodyAccessor.setBody(_:), &v59[-4], AssociatedTypeWitness, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v57);
  return (*(v61 + 8))(v50, v56);
}

uint64_t _GestureInputs.viewInputs.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  v4 = *(v1 + 64);
  v10 = *(v1 + 48);
  v3 = v10;
  v11 = v4;
  v12 = *(v1 + 80);
  v6 = *(v1 + 16);
  v9[0] = *v1;
  v5 = v9[0];
  v9[1] = v6;
  v9[2] = v2;
  *(a1 + 80) = v12;
  *(a1 + 32) = v2;
  *(a1 + 48) = v3;
  *(a1 + 64) = v4;
  *a1 = v5;
  *(a1 + 16) = v6;
  return outlined init with copy of _ViewInputs(v9, v8);
}

__n128 _GestureInputs.viewInputs.setter(uint64_t a1)
{
  v3 = *(v1 + 48);
  v8[2] = *(v1 + 32);
  v8[3] = v3;
  v8[4] = *(v1 + 64);
  v9 = *(v1 + 80);
  v4 = *(v1 + 16);
  v8[0] = *v1;
  v8[1] = v4;
  outlined destroy of _ViewInputs(v8);
  v5 = *(a1 + 48);
  *(v1 + 32) = *(a1 + 32);
  *(v1 + 48) = v5;
  *(v1 + 64) = *(a1 + 64);
  *(v1 + 80) = *(a1 + 80);
  result = *a1;
  v7 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v7;
  return result;
}

double _GestureInputs.preferences.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 104);
  *a1 = *(v1 + 96);
  *(a1 + 8) = v2;

  return result;
}

void _GestureInputs.preferences.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 2);

  *(v1 + 96) = v2;
  *(v1 + 104) = v3;
}

uint64_t _GestureInputs.mapEnvironment<A>(id:_:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *a1;
  v9 = v4[5];
  v15[4] = v4[4];
  v15[5] = v9;
  v16[0] = v4[6];
  *(v16 + 12) = *(v4 + 108);
  v10 = v4[1];
  v15[0] = *v4;
  v15[1] = v10;
  v11 = v4[3];
  v15[2] = v4[2];
  v15[3] = v11;
  AGGraphClearUpdate();
  v12 = AGSubgraphGetCurrent();
  AGSubgraphSetCurrent();
  closure #1 in _GestureInputs.mapEnvironment<A>(id:_:)(v15, v8, a2, a3, a4, &v14);
  AGSubgraphSetCurrent();

  AGGraphSetUpdate();
  return v14;
}

void *closure #1 in _GestureInputs.mapEnvironment<A>(id:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _DWORD *a6@<X8>)
{
  v10 = *(a1 + 48);
  v11 = *(a1 + 16);
  v24 = *(a1 + 32);
  v25 = v10;
  v12 = *(a1 + 48);
  v26 = *(a1 + 64);
  v13 = *(a1 + 16);
  v23[0] = *a1;
  v23[1] = v13;
  v19 = v24;
  v20 = v12;
  v21 = *(a1 + 64);
  v27 = *(a1 + 80);
  v22 = *(a1 + 80);
  v17 = v23[0];
  v18 = v11;
  v16 = a2;
  outlined init with copy of _ViewInputs(v23, v28);
  v14 = _ViewInputs.mapEnvironment<A>(id:_:)(&v16, a3, a4, a5);
  v28[2] = v19;
  v28[3] = v20;
  v28[4] = v21;
  v29 = v22;
  v28[0] = v17;
  v28[1] = v18;
  result = outlined destroy of _ViewInputs(v28);
  *a6 = v14;
  return result;
}

uint64_t _GestureInputs.environment.getter()
{
  EnvironmentValues.init()(v5);
  v1 = v5[0];
  v0 = v5[1];
  specialized static GraphHost.currentHost.getter();
  specialized GraphHost.intern<A>(_:for:id:)(v1, v0, &type metadata for EnvironmentValues, 0);

  AGGraphClearUpdate();
  v2 = AGSubgraphGetCurrent();
  AGSubgraphSetCurrent();
  IndirectAttribute2 = AGGraphCreateIndirectAttribute2();
  swift_beginAccess();
  AGGraphSetIndirectAttribute();
  AGSubgraphSetCurrent();

  AGGraphSetUpdate();

  return IndirectAttribute2;
}

double _GestureOutputs.preferences.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *(v1 + 8);
  *(a1 + 8) = v2;

  return result;
}

void _GestureOutputs.preferences.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 2);

  *(v1 + 8) = v2;
  *(v1 + 16) = v3;
}

unint64_t key path getter for _GestureOutputs.debugData : <A>_GestureOutputs<A>@<X0>(uint64_t a1@<X8>)
{
  result = _GestureOutputs.debugData.getter();
  *a1 = result;
  *(a1 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t (*_GestureOutputs.debugData.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v2 = *(v1 + 4);
  v3 = *MEMORY[0x1E698D3F8];
  *(a1 + 16) = *MEMORY[0x1E698D3F8];
  v4 = v2 == v3;
  if (v2 == v3)
  {
    v2 = 0;
  }

  *(a1 + 8) = v2;
  v5 = v4;
  *(a1 + 12) = v5;
  return _GestureOutputs.debugData.modify;
}

uint64_t _GestureOutputs.debugData.modify(uint64_t result)
{
  v1 = *(result + 8);
  if (*(result + 12))
  {
    v1 = *(result + 16);
  }

  *(*result + 4) = v1;
  return result;
}

unint64_t _GestureOutputs.subscript.getter(uint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = (v2 + 32);
  v4 = *(v2 + 16) + 1;
  while (--v4)
  {
    v5 = v3 + 3;
    v6 = *v3;
    v3 += 3;
    if (v6 == a1)
    {
      v7 = *(v5 - 2);
      return v7 | ((v4 == 0) << 32);
    }
  }

  v7 = 0;
  return v7 | ((v4 == 0) << 32);
}

unint64_t (*_GestureOutputs.subscript.modify(uint64_t a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  *(a1 + 8) = a3;
  *(a1 + 16) = v3;
  *a1 = a2;
  v4 = *(v3 + 8);
  v5 = (v4 + 32);
  v6 = *(v4 + 16) + 1;
  while (--v6)
  {
    v7 = v5 + 3;
    v8 = *v5;
    v5 += 3;
    if (v8 == a2)
    {
      v9 = *(v7 - 2);
      goto LABEL_6;
    }
  }

  v9 = 0;
LABEL_6:
  *(a1 + 24) = v9;
  *(a1 + 28) = v6 == 0;
  return _GestureOutputs.subscript.modify;
}

void (*_GestureOutputs.subscript.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))(ValueMetadata ***a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x28uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[2] = a5;
  v10[3] = v5;
  *v10 = a2;
  v10[1] = a4;
  v12 = PreferencesOutputs.subscript.getter(a2, a4, a5);
  *(v11 + 8) = v12;
  *(v11 + 36) = BYTE4(v12) & 1;
  return _GestureOutputs.subscript.modify;
}

void _GestureOutputs.subscript.modify(ValueMetadata ***a1)
{
  v1 = *a1;
  PreferencesOutputs.subscript.setter(*(*a1 + 8) | (*(*a1 + 36) << 32), **a1, (*a1)[1], (*a1)[2]);

  free(v1);
}

double _GestureOutputs.forEachPreference(_:)(void (*a1)(uint64_t, uint64_t, void, __n128), double result)
{
  v3 = *(v2 + 8);
  v4 = *(v3 + 16);
  if (v4)
  {

    v6 = (v3 + 48);
    do
    {
      v7 = *(v6 - 2);
      v8 = *(v6 - 1);
      v9 = *v6;
      v6 += 6;
      (a1)(v7, v8, v9);
      --v4;
    }

    while (v4);
  }

  return v10;
}

void *static GestureCategory.Key.reduce(value:nextValue:)(void *a1, void *(*a2)(uint64_t *__return_ptr))
{
  result = a2(&v4);
  *a1 |= v4;
  return result;
}

void *protocol witness for static PreferenceKey.reduce(value:nextValue:) in conformance GestureCategory.Key(void *a1, void *(*a2)(uint64_t *__return_ptr))
{
  result = a2(&v4);
  *a1 |= v4;
  return result;
}

uint64_t (*static GestureDescriptor.typeCache.modify(uint64_t a1))(uint64_t a1)
{
  if (one-time initialization token for typeCache != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return DisplayList.GraphicsRenderer.platformViewMode.modify;
}

uint64_t (*protocol witness for static TupleDescriptor.typeCache.modify in conformance GestureDescriptor(uint64_t a1))(uint64_t a1)
{
  if (one-time initialization token for typeCache != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return protocol witness for static UserDefaultKeyedFeature.cachedValue.modify in conformance EnableScrollPrefetchFeature;
}

double static GestureDescriptor.typeCache.getter(void *a1, void *a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  swift_beginAccess();

  return result;
}

double static GestureDescriptor.typeCache.setter(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  if (*a2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a3 = a1;

  return result;
}

uint64_t (*static GestureModifierDescriptor.typeCache.modify(uint64_t a1))(uint64_t a1)
{
  if (one-time initialization token for typeCache != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return protocol witness for static UserDefaultKeyedFeature.cachedValue.modify in conformance EnableScrollPrefetchFeature;
}

double key path getter for static GestureDescriptor.typeCache : GestureDescriptor.Type@<D0>(void *a1@<X3>, uint64_t *a2@<X4>, uint64_t *a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a4 = *a2;

  return result;
}

double key path setter for static GestureDescriptor.typeCache : GestureDescriptor.Type(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, void *a6, uint64_t a7)
{
  v8 = *a1;
  v9 = *a5;

  if (v9 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a6 = v8;

  return result;
}

double protocol witness for static TupleDescriptor.typeCache.getter in conformance GestureDescriptor(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  if (*a3 != -1)
  {
    swift_once();
  }

  swift_beginAccess();

  return result;
}

double protocol witness for static TupleDescriptor.typeCache.setter in conformance GestureDescriptor(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6)
{
  if (*a4 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a5 = a1;

  return result;
}

uint64_t (*protocol witness for static TupleDescriptor.typeCache.modify in conformance GestureModifierDescriptor(uint64_t a1))(uint64_t a1)
{
  if (one-time initialization token for typeCache != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return protocol witness for static UserDefaultKeyedFeature.cachedValue.modify in conformance EnableScrollPrefetchFeature;
}

void specialized PrimitiveGesture.body.getter(uint64_t a1)
{
  _StringGuts.grow(_:)(32);

  v1 = _typeName(_:qualified:)();
  MEMORY[0x193ABEDD0](v1);

  MEMORY[0x193ABEDD0](46, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void lazy protocol witness table accessor for type DefaultRule<GestureDebug.Data> and conformance DefaultRule<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!lazy protocol witness table cache variable for type DefaultRule<GestureDebug.Data> and conformance DefaultRule<A>)
  {
    type metadata accessor for DefaultRule<GestureDebug.Data>(255, a2, a3, a4);
    swift_getWitnessTable(protocol conformance descriptor for DefaultRule<A>, v6, v4, v5);
    atomic_store(v7, &lazy protocol witness table cache variable for type DefaultRule<GestureDebug.Data> and conformance DefaultRule<A>);
  }
}

uint64_t partial apply for specialized closure #1 in Attribute.overrideDefaultValue<A>(_:type:)(uint64_t *a1)
{
  result = AGCreateWeakAttribute();
  *a1 = result;
  return result;
}

void lazy protocol witness table accessor for type _GestureInputs.InheritedPhase and conformance _GestureInputs.InheritedPhase()
{
  if (!lazy protocol witness table cache variable for type _GestureInputs.InheritedPhase and conformance _GestureInputs.InheritedPhase)
  {
    swift_getWitnessTable(protocol conformance descriptor for _GestureInputs.InheritedPhase, &type metadata for _GestureInputs.InheritedPhase, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type _GestureInputs.InheritedPhase and conformance _GestureInputs.InheritedPhase);
  }
}

{
  if (!lazy protocol witness table cache variable for type _GestureInputs.InheritedPhase and conformance _GestureInputs.InheritedPhase)
  {
    swift_getWitnessTable(protocol conformance descriptor for _GestureInputs.InheritedPhase, &type metadata for _GestureInputs.InheritedPhase, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type _GestureInputs.InheritedPhase and conformance _GestureInputs.InheritedPhase);
  }
}

{
  if (!lazy protocol witness table cache variable for type _GestureInputs.InheritedPhase and conformance _GestureInputs.InheritedPhase)
  {
    swift_getWitnessTable(protocol conformance descriptor for _GestureInputs.InheritedPhase, &type metadata for _GestureInputs.InheritedPhase, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type _GestureInputs.InheritedPhase and conformance _GestureInputs.InheritedPhase);
  }
}

{
  if (!lazy protocol witness table cache variable for type _GestureInputs.InheritedPhase and conformance _GestureInputs.InheritedPhase)
  {
    swift_getWitnessTable(protocol conformance descriptor for _GestureInputs.InheritedPhase, &type metadata for _GestureInputs.InheritedPhase, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type _GestureInputs.InheritedPhase and conformance _GestureInputs.InheritedPhase);
  }
}

void lazy protocol witness table accessor for type _GestureInputs.Options and conformance _GestureInputs.Options()
{
  if (!lazy protocol witness table cache variable for type _GestureInputs.Options and conformance _GestureInputs.Options)
  {
    swift_getWitnessTable(protocol conformance descriptor for _GestureInputs.Options, &type metadata for _GestureInputs.Options, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type _GestureInputs.Options and conformance _GestureInputs.Options);
  }
}

{
  if (!lazy protocol witness table cache variable for type _GestureInputs.Options and conformance _GestureInputs.Options)
  {
    swift_getWitnessTable(protocol conformance descriptor for _GestureInputs.Options, &type metadata for _GestureInputs.Options, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type _GestureInputs.Options and conformance _GestureInputs.Options);
  }
}

{
  if (!lazy protocol witness table cache variable for type _GestureInputs.Options and conformance _GestureInputs.Options)
  {
    swift_getWitnessTable(protocol conformance descriptor for _GestureInputs.Options, &type metadata for _GestureInputs.Options, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type _GestureInputs.Options and conformance _GestureInputs.Options);
  }
}

{
  if (!lazy protocol witness table cache variable for type _GestureInputs.Options and conformance _GestureInputs.Options)
  {
    swift_getWitnessTable(protocol conformance descriptor for _GestureInputs.Options, &type metadata for _GestureInputs.Options, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type _GestureInputs.Options and conformance _GestureInputs.Options);
  }
}

void lazy protocol witness table accessor for type GestureCategory and conformance GestureCategory()
{
  if (!lazy protocol witness table cache variable for type GestureCategory and conformance GestureCategory)
  {
    swift_getWitnessTable(protocol conformance descriptor for GestureCategory, &type metadata for GestureCategory, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type GestureCategory and conformance GestureCategory);
  }
}

{
  if (!lazy protocol witness table cache variable for type GestureCategory and conformance GestureCategory)
  {
    swift_getWitnessTable(protocol conformance descriptor for GestureCategory, &type metadata for GestureCategory, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type GestureCategory and conformance GestureCategory);
  }
}

{
  if (!lazy protocol witness table cache variable for type GestureCategory and conformance GestureCategory)
  {
    swift_getWitnessTable(protocol conformance descriptor for GestureCategory, &type metadata for GestureCategory, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type GestureCategory and conformance GestureCategory);
  }
}

{
  if (!lazy protocol witness table cache variable for type GestureCategory and conformance GestureCategory)
  {
    swift_getWitnessTable(protocol conformance descriptor for GestureCategory, &type metadata for GestureCategory, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type GestureCategory and conformance GestureCategory);
  }
}

double destroy for _GestureInputs(uint64_t a1)
{

  return result;
}

uint64_t initializeWithCopy for _GestureInputs(uint64_t a1, uint64_t *a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 2);
  *(a1 + 16) = a2[2];
  *(a1 + 24) = *(a2 + 3);
  v3 = a2[6];
  *(a1 + 40) = a2[5];
  *(a1 + 48) = v3;
  *(a1 + 56) = *(a2 + 7);
  *(a1 + 72) = *(a2 + 9);
  v5 = a2[11];
  v4 = a2[12];
  *(a1 + 88) = v5;
  *(a1 + 96) = v4;
  *(a1 + 104) = *(a2 + 13);
  *(a1 + 120) = *(a2 + 30);

  v6 = v5;

  return a1;
}

uint64_t assignWithCopy for _GestureInputs(uint64_t a1, uint64_t *a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 2);
  *(a1 + 16) = a2[2];

  *(a1 + 24) = *(a2 + 6);
  *(a1 + 28) = *(a2 + 7);
  *(a1 + 32) = *(a2 + 8);
  *(a1 + 36) = *(a2 + 9);
  *(a1 + 40) = a2[5];

  *(a1 + 48) = a2[6];

  *(a1 + 56) = *(a2 + 14);
  *(a1 + 60) = *(a2 + 15);
  *(a1 + 64) = *(a2 + 16);
  *(a1 + 68) = *(a2 + 17);
  *(a1 + 72) = *(a2 + 18);
  *(a1 + 76) = *(a2 + 19);
  *(a1 + 80) = *(a2 + 20);
  *(a1 + 84) = *(a2 + 21);
  v4 = a2[11];
  v5 = *(a1 + 88);
  *(a1 + 88) = v4;
  v6 = v4;

  *(a1 + 96) = a2[12];

  *(a1 + 104) = *(a2 + 26);
  *(a1 + 108) = *(a2 + 27);
  *(a1 + 112) = *(a2 + 28);
  *(a1 + 116) = *(a2 + 29);
  *(a1 + 120) = *(a2 + 30);
  return a1;
}

uint64_t assignWithTake for _GestureInputs(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);

  *(a1 + 40) = *(a2 + 40);

  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);

  *(a1 + 88) = *(a2 + 88);

  *(a1 + 104) = *(a2 + 104);
  *(a1 + 120) = *(a2 + 120);
  return a1;
}

uint64_t getEnumTagSinglePayload for _GestureInputs(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 124))
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

uint64_t storeEnumTagSinglePayload for _GestureInputs(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 124) = 1;
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

    *(result + 124) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for _GestureOutputs(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  return a1;
}

uint64_t assignWithCopy for _GestureOutputs(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  return a1;
}

uint64_t assignWithTake for _GestureOutputs(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  return a1;
}

float Color.Resolved.init(_:)(void *a1)
{
  LODWORD(result) = specialized Color.Resolved.init(failableCGColor:)(a1);
  if (v2)
  {
    return 0.0;
  }

  return result;
}

unint64_t Color.ResolvedHDR.init(cgColor:)(void *a1)
{
  v1 = a1;
  v2 = specialized Color.Resolved.init(failableCGColor:)(v1);
  if (v3)
  {

    return 0;
  }

  else
  {
    v5 = v2;
    CGColorGetContentHeadroom();

    return v5;
  }
}

float CGColorRef.resolve(in:)()
{
  LODWORD(result) = specialized Color.Resolved.init(failableCGColor:)(v0);
  if (v2)
  {
    return 0.0;
  }

  return result;
}

void CGColorRef.resolveHDR(in:)(uint64_t a1@<X8>)
{
  v3 = specialized Color.Resolved.init(failableCGColor:)(v1);
  if (v5)
  {
    v6 = 0;
    LODWORD(v7) = 0;
    v8 = 0;
    LODWORD(v9) = 0;
    v10 = NAN;
  }

  else
  {
    v6 = v3;
    v8 = v4;
    v7 = HIDWORD(v3);
    v9 = HIDWORD(v4);
    CGColorGetContentHeadroom();
    if (v10 == 0.0)
    {
      v10 = NAN;
    }
  }

  *a1 = v6;
  *(a1 + 4) = v7;
  *(a1 + 8) = v8;
  *(a1 + 12) = v9;
  *(a1 + 16) = v10;
}

float protocol witness for ColorProvider.resolve(in:) in conformance CGColorRef()
{
  LODWORD(v1) = specialized Color.Resolved.init(failableCGColor:)(*v0);
  result = 0.0;
  if ((v3 & 1) == 0)
  {
    return v1;
  }

  return result;
}

id protocol witness for ColorProvider.staticColor.getter in conformance CGColorRef()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

CGGradientRef ResolvedGradient.cgGradient.getter()
{
  v1 = *v0;
  if (one-time initialization token for srgbExtended != -1)
  {
    swift_once();
  }

  v2 = static Color.Resolved.srgbExtended;
  v3 = *(v1 + 16);
  if (v3)
  {
    specialized ContiguousArray.reserveCapacity(_:)();
    if (one-time initialization token for cache != -1)
    {
      swift_once();
    }

    v8 = (v1 + 44);
    v9 = v3;
    do
    {
      v4.n128_u32[0] = *(v8 - 3);
      v5.n128_u32[0] = *(v8 - 2);
      v6.n128_u32[0] = *(v8 - 1);
      v7.n128_u32[0] = *v8;
      specialized ObjectCache.subscript.getter(v4, v5, v6, v7);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v8 += 12;
      --v9;
    }

    while (v9);
  }

  type metadata accessor for CGColorRef(0);
  v10.super.isa = Array._bridgeToObjectiveC()().super.isa;

  v11 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v18 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3, 0);
    v11 = v18;
    v12 = (v1 + 48);
    v13 = *(v18 + 16);
    do
    {
      v14 = *v12;
      v15 = *(v18 + 24);
      if (v13 >= v15 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v13 + 1, 1);
      }

      *(v18 + 16) = v13 + 1;
      *(v18 + 8 * v13 + 32) = v14;
      v12 += 6;
      ++v13;
      --v3;
    }

    while (v3);
  }

  v16 = CGGradientCreateWithColors(v2, v10.super.isa, (v11 + 32));

  return v16;
}

SwiftUI::RecessedMaterialBlurSetting __swiftcall RecessedMaterialBlurSetting.init(rawValue:)(Swift::Int rawValue)
{
  result.rawValue = _diagnoseUnavailableCodeReached()();
  __break(1u);
  return result;
}

Swift::Bool __swiftcall LayoutComputer.ignoresAutomaticPadding()()
{
  v1 = *v0;
  if (one-time initialization token for lockAssertionsAreEnabled != -1)
  {
    swift_once();
  }

  if (!lockAssertionsAreEnabled)
  {
    return (*(*v1 + 96))() & 1;
  }

  if (one-time initialization token for _lock != -1)
  {
    swift_once();
  }

  if (_MovableLockIsOwner(static Update._lock))
  {
    return (*(*v1 + 96))() & 1;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void specialized LayoutEngine.lengthThatFits(_:in:)(uint64_t a1, char a2, uint64_t a3, char a4)
{
  v9 = *(v4 + 24);
  v10 = one-time initialization token for lockAssertionsAreEnabled;

  if (v10 != -1)
  {
    swift_once();
  }

  if (!lockAssertionsAreEnabled)
  {
    goto LABEL_7;
  }

  if (one-time initialization token for _lock != -1)
  {
    swift_once();
  }

  if (!_MovableLockIsOwner(static Update._lock))
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
LABEL_7:
    v11 = a1;
    v12 = a2 & 1;
    v13 = a3;
    v14 = a4 & 1;
    (*(*v9 + 120))(&v11);
  }
}

double protocol witness for LayoutEngine.lengthThatFits(_:in:) in conformance ConcentricLayoutComputer.Engine(uint64_t *a1, char a2)
{
  v3 = *(a1 + 8);
  v4 = a1[2];
  v5 = *(a1 + 24);
  v8 = *a1;
  v9 = v3;
  v10 = v4;
  v11 = v5;
  ConcentricLayoutComputer.Engine.sizeThatFits(_:)(&v8);
  if (a2)
  {
    return v7;
  }

  return result;
}

SwiftUI::Spacing __swiftcall LayoutComputer.spacing()()
{
  v1 = *v0;
  if (one-time initialization token for lockAssertionsAreEnabled != -1)
  {
    swift_once();
  }

  if (!lockAssertionsAreEnabled)
  {
    return (*(*v1 + 112))();
  }

  if (one-time initialization token for _lock != -1)
  {
    swift_once();
  }

  if (_MovableLockIsOwner(static Update._lock))
  {
    return (*(*v1 + 112))();
  }

  result.minima._rawValue = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t LayoutComputer.lengthThatFits(_:in:)(uint64_t *a1, char a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = a1[2];
  v7 = *(a1 + 24);
  v8 = *v2;
  if (one-time initialization token for lockAssertionsAreEnabled != -1)
  {
    swift_once();
  }

  if (!lockAssertionsAreEnabled)
  {
    goto LABEL_7;
  }

  if (one-time initialization token for _lock != -1)
  {
    swift_once();
  }

  if (!_MovableLockIsOwner(static Update._lock))
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
LABEL_7:
    v10 = v4;
    v11 = v5;
    v12 = v6;
    v13 = v7;
    return (*(*v8 + 128))(&v10, a2 & 1);
  }

  return result;
}

Swift::Double __swiftcall LayoutComputer.layoutPriority()()
{
  v1 = *v0;
  if (one-time initialization token for lockAssertionsAreEnabled != -1)
  {
    swift_once();
  }

  if (!lockAssertionsAreEnabled)
  {
    goto LABEL_7;
  }

  if (one-time initialization token for _lock != -1)
  {
    swift_once();
  }

  if (!_MovableLockIsOwner(static Update._lock))
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
LABEL_7:
    (*(*v1 + 88))();
  }

  return result;
}

Swift::Bool __swiftcall LayoutComputer.requiresSpacingProjection()()
{
  v1 = *v0;
  if (one-time initialization token for lockAssertionsAreEnabled != -1)
  {
    swift_once();
  }

  if (!lockAssertionsAreEnabled)
  {
    return (*(*v1 + 104))() & 1;
  }

  if (one-time initialization token for _lock != -1)
  {
    swift_once();
  }

  if (_MovableLockIsOwner(static Update._lock))
  {
    return (*(*v1 + 104))() & 1;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t LayoutComputer.childPlacement(at:placementContext:)(__int128 *a1, __int128 *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *a2;
  v6 = *(a2 + 2);
  v7 = *(a2 + 6);
  v8 = *v2;
  if (one-time initialization token for lockAssertionsAreEnabled != -1)
  {
    v14 = a1[1];
    v16 = *a1;
    v12 = *a2;
    swift_once();
    v5 = v12;
    v4 = v14;
    v3 = v16;
  }

  if (!lockAssertionsAreEnabled)
  {
    goto LABEL_7;
  }

  v11 = v5;
  v13 = v4;
  v15 = v3;
  if (one-time initialization token for _lock != -1)
  {
    swift_once();
  }

  IsOwner = _MovableLockIsOwner(static Update._lock);
  v4 = v13;
  v3 = v15;
  v5 = v11;
  if (!IsOwner)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
LABEL_7:
    v20[0] = v3;
    v20[1] = v4;
    v17 = v5;
    v18 = v6;
    v19 = v7;
    return (*(*v8 + 160))(v20, &v17);
  }

  return result;
}

uint64_t LayoutComputer.childPlacement(at:)(__int128 *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *v1;
  if (one-time initialization token for lockAssertionsAreEnabled != -1)
  {
    v8 = a1[1];
    v10 = *a1;
    swift_once();
    v3 = v8;
    v2 = v10;
  }

  if (!lockAssertionsAreEnabled)
  {
    goto LABEL_7;
  }

  v7 = v3;
  v9 = v2;
  if (one-time initialization token for _lock != -1)
  {
    swift_once();
  }

  IsOwner = _MovableLockIsOwner(static Update._lock);
  v3 = v7;
  v2 = v9;
  if (!IsOwner)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
LABEL_7:
    v11[0] = v2;
    v11[1] = v3;
    return (*(*v4 + 152))(v11);
  }

  return result;
}

uint64_t LayoutComputer.childGeometries(at:origin:)(__int128 *a1, __n128 a2, __n128 a3)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *v3;
  if (one-time initialization token for lockAssertionsAreEnabled != -1)
  {
    v11 = a3.n128_u64[0];
    v12 = a2.n128_u64[0];
    v14 = a1[1];
    v16 = *a1;
    swift_once();
    v5 = v14;
    v4 = v16;
    a2.n128_u64[0] = v12;
    a3.n128_u64[0] = v11;
  }

  if (!lockAssertionsAreEnabled)
  {
    goto LABEL_7;
  }

  v13 = v5;
  v15 = v4;
  v7 = a2.n128_u64[0];
  v8 = a3.n128_u64[0];
  if (one-time initialization token for _lock != -1)
  {
    swift_once();
  }

  IsOwner = _MovableLockIsOwner(static Update._lock);
  a3.n128_u64[0] = v8;
  a2.n128_u64[0] = v7;
  v5 = v13;
  v4 = v15;
  if (!IsOwner)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
LABEL_7:
    v17[0] = v4;
    v17[1] = v5;
    return (*(*v6 + 136))(v17, a2, a3);
  }

  return result;
}

double LayoutComputer.DefaultEngine.sizeThatFits(_:)(uint64_t a1)
{
  result = *a1;
  if (*(a1 + 8))
  {
    return 10.0;
  }

  return result;
}

double protocol witness for LayoutEngine.lengthThatFits(_:in:) in conformance LayoutComputer.DefaultEngine(uint64_t a1, char a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  if (*(a1 + 8))
  {
    result = 10.0;
  }

  if (*(a1 + 24))
  {
    v3 = 10.0;
  }

  if (a2)
  {
    return v3;
  }

  return result;
}

double static LayoutComputer.defaultValue.getter@<D0>(_OWORD *a1@<X8>)
{
  if (one-time initialization token for defaultValue != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v2 = *(&static LayoutComputer.defaultValue + 1);
  *a1 = static LayoutComputer.defaultValue;
  *(a1 + 1) = v2;

  return result;
}

double protocol witness for static Defaultable.defaultValue.getter in conformance LayoutComputer@<D0>(_OWORD *a1@<X8>)
{
  if (one-time initialization token for defaultValue != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v2 = *(&static LayoutComputer.defaultValue + 1);
  *a1 = static LayoutComputer.defaultValue;
  *(a1 + 1) = v2;

  return result;
}

uint64_t LayoutEngineBox.ignoresAutomaticPadding()(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 176);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](a1);
  v7 = &v9 - v6;
  (*(v4 + 16))(&v9 - v6, v1 + *(v2 + 192), v3, v5);
  LOBYTE(v2) = (*(*(v2 + 184) + 16))(v3);
  (*(v4 + 8))(v7, v3);
  return v2 & 1;
}

char *TracingLayoutEngineBox.init(_:)(char *a1)
{
  v2 = v1;
  v49 = *MEMORY[0x1E69E9840];
  v4 = *v1;
  v5 = type metadata accessor for String.Encoding();
  v46 = *(v5 - 8);
  v47 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = v4[26];
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v41 - v14;
  v16 = &v2[v4[28]];
  *v16 = 0;
  v16[4] = 1;
  CurrentAttribute = AGGraphGetCurrentAttribute();
  v18 = CurrentAttribute == *MEMORY[0x1E698D3F8];
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    v19 = 0;
  }

  else
  {
    v19 = CurrentAttribute;
  }

  *v16 = v19;
  v16[4] = v18;
  v20 = *(v9 + 16);
  v20(v15, a1, v8);
  (*(*(*(*v2 + 176) - 8) + 32))(&v2[*(*v2 + 192)], v15);
  v20(v12, &v2[*(*v2 + 192)], v8);
  v21 = v4[27];
  v22 = *(v21 + 88);

  v23 = v22(v8, v21);
  v25 = v24;
  v26 = *(v9 + 8);
  v26(v12, v8);
  if (v25)
  {
    v44 = v23;
    v45 = a1;
    v27 = &v2[*(*v2 + 224)];
    v28 = *v27;
    v29 = v27[4];
    swift_beginAccess();
    v30 = static LayoutTrace.recorder;
    if (static LayoutTrace.recorder)
    {
      if (v29)
      {
        v31 = 0;
      }

      else
      {
        v31 = v28;
      }

      v42 = v31;
      swift_beginAccess();
      v32 = one-time initialization token for contentDescription;
      v43 = v30[2];

      if (v32 != -1)
      {
        swift_once();
      }

      v41 = static AGNamedTraceEventID.contentDescription;
      static String.Encoding.utf8.getter();
      v33 = String.data(using:allowLossyConversion:)();
      v35 = v34;

      (*(v46 + 8))(v7, v47);
      v48 = v42;
      if (v35 >> 60 == 15)
      {
        isa = 0;
      }

      else
      {
        isa = Data._bridgeToObjectiveC()().super.isa;
      }

      v38 = v45;
      v39 = v43;
      AGGraphAddNamedTraceEvent();

      outlined consume of Data?(v33, v35);

      v37 = v38;
    }

    else
    {

      v37 = v45;
    }

    v26(v37, v8);
  }

  else
  {
    v26(a1, v8);
  }

  return v2;
}

void TracingLayoutEngineBox.sizeThatFits(_:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = a1[2];
  v5 = *(a1 + 24);
  v6 = (v1 + *(*v1 + 224));
  v7 = *v6;
  v8 = *(v6 + 4);
  swift_beginAccess();
  if (static LayoutTrace.recorder)
  {
    v9 = v2;
    v10 = v3;
    v11 = v4;
    v12 = v5;

    LayoutTrace.Recorder.traceSizeThatFits(_:proposal:_:)(v7 | (v8 << 32), &v9, partial apply for closure #1 in TracingLayoutEngineBox.sizeThatFits(_:));
  }

  else
  {
    __break(1u);
  }
}

void TracingLayoutEngineBox.lengthThatFits(_:in:)(uint64_t *a1, char a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = a1[2];
  v6 = *(a1 + 24);
  v7 = (v2 + *(*v2 + 224));
  v8 = *v7;
  v9 = *(v7 + 4);
  v10 = a2 & 1;
  swift_beginAccess();
  if (static LayoutTrace.recorder)
  {
    v11 = v3;
    v12 = v4;
    v13 = v5;
    v14 = v6;

    LayoutTrace.Recorder.traceLengthThatFits(_:proposal:in:_:)(v8 | (v9 << 32), &v11, v10, partial apply for closure #1 in TracingLayoutEngineBox.lengthThatFits(_:in:));
  }

  else
  {
    __break(1u);
  }
}

uint64_t TracingLayoutEngineBox.childGeometries(at:origin:)(uint64_t *a1, double a2, double a3)
{
  v34[18] = *MEMORY[0x1E69E9840];
  v6 = *a1;
  v7 = a1[1];
  v8 = a1[2];
  v9 = a1[3];
  v10 = (v3 + *(*v3 + 224));
  v11 = *v10;
  v12 = *(v10 + 4);
  swift_beginAccess();
  v13 = static LayoutTrace.recorder;
  if (!static LayoutTrace.recorder)
  {
    __break(1u);
  }

  swift_beginAccess();
  if (*(v13 + 24) == 1)
  {
  }

  else
  {
    *(v13 + 24) = 1;
    swift_beginAccess();
    v14 = *(v13 + 2);
    v15 = one-time initialization token for update;

    v16 = v14;
    if (v15 != -1)
    {
      swift_once();
    }

    AGGraphAddNamedTraceEvent();

    LOBYTE(v34[0]) = 17;

    static Update.enqueueAction(reason:_:)(v34, partial apply for closure #1 in LayoutTrace.Recorder.activateFrameIfNeeded(), v13);
  }

  if (v12)
  {
    v17 = 0;
  }

  else
  {
    v17 = v11;
  }

  v34[0] = v6;
  v34[1] = v7;
  v34[2] = v8;
  v34[3] = v9;
  *&v34[4] = a2;
  *&v34[5] = a3;
  v18 = _s7SwiftUI15ProtobufEncoderV8encodingy10Foundation4DataVxKAA0C16EncodableMessageRzlFZAA20BeginChildGeometriesV_Tt0B5();
  v20 = v19;
  swift_beginAccess();
  v21 = one-time initialization token for childGeometries;
  v22 = *(v13 + 2);
  if (v21 != -1)
  {
    swift_once();
  }

  LODWORD(v33[0]) = v17;
  outlined copy of Data._Representation(v18, v20);
  isa = Data._bridgeToObjectiveC()().super.isa;
  AGGraphAddNamedTraceEvent();

  outlined consume of Data._Representation(v18, v20);
  v24 = *v3;
  v33[0] = v6;
  v33[1] = v7;
  v33[2] = v8;
  v33[3] = v9;
  v25 = (*(*(v24 + 184) + 56))(v33, *(v24 + 176), a2, a3);

  v33[0] = specialized EndChildGeometries.init(_:)(v26);
  MEMORY[0x1EEE9AC00](v33[0]);
  v27 = specialized static ProtobufEncoder.encoding(_:)(_s7SwiftUI15ProtobufEncoderV8encodingy10Foundation4DataVxKAA0C16EncodableMessageRzlFZyACzKXEfU_AA18EndChildGeometriesV_TG5TA_0);
  v29 = v28;

  v30 = *(v13 + 2);
  outlined copy of Data._Representation(v27, v29);
  v31 = Data._bridgeToObjectiveC()().super.isa;
  AGGraphAddNamedTraceEvent();

  outlined consume of Data._Representation(v27, v29);
  outlined consume of Data._Representation(v27, v29);
  outlined consume of Data._Representation(v18, v20);

  return v25;
}

void TracingLayoutEngineBox.explicitAlignment(_:at:)(unint64_t a1, double *a2)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = *(a2 + 2);
  v7 = *(a2 + 3);
  v8 = (v2 + *(*v2 + 224));
  v9 = *v8;
  v10 = *(v8 + 4);
  swift_beginAccess();
  if (static LayoutTrace.recorder)
  {
    v11.f64[0] = v4;
    v11.f64[1] = v5;
    v12 = v6;
    v13 = v7;

    LayoutTrace.Recorder.traceExplicitAlignment(_:alignment:at:body:)(v9 | (v10 << 32), a1, &v11, partial apply for closure #1 in TracingLayoutEngineBox.explicitAlignment(_:at:));
  }

  else
  {
    __break(1u);
  }
}

double protocol witness for LayoutEngine.lengthThatFits(_:in:) in conformance InsetLayoutComputer.Engine(uint64_t *a1, char a2)
{
  v3 = *(a1 + 8);
  v4 = a1[2];
  v5 = *(a1 + 24);
  v8 = *a1;
  v9 = v3;
  v10 = v4;
  v11 = v5;
  InsetLayoutComputer.Engine.sizeThatFits(_:)(&v8);
  if (a2)
  {
    return v7;
  }

  return result;
}

uint64_t partial apply for closure #1 in TracingLayoutEngineBox.explicitAlignment(_:at:)()
{
  v1 = *(v0 + 24);
  v2 = **(v0 + 16);
  v3 = *(v0 + 48);
  v5[0] = *(v0 + 32);
  v5[1] = v3;
  return (*(*(v2 + 184) + 64))(v1, v5, *(v2 + 176));
}

uint64_t partial apply for closure #1 in TracingLayoutEngineBox.lengthThatFits(_:in:)()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  v4 = *(v0 + 49);
  v5 = **(v0 + 16);
  v7 = *(v0 + 24);
  v8 = v1;
  v9 = v2;
  v10 = v3;
  return (*(*(v5 + 184) + 48))(&v7, v4, *(v5 + 176));
}

uint64_t partial apply for closure #1 in TracingLayoutEngineBox.sizeThatFits(_:)()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  v4 = **(v0 + 16);
  v6 = *(v0 + 24);
  v7 = v1;
  v8 = v2;
  v9 = v3;
  return (*(*(v4 + 184) + 40))(&v6, *(v4 + 176));
}

void lazy protocol witness table accessor for type AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>> and conformance AnimatablePair<A, B>(unint64_t *a1, uint64_t (*a2)(uint64_t))
{
  if (!*a1)
  {
    v3 = a2(255);
    swift_getWitnessTable(protocol conformance descriptor for AnimatablePair<A, B>, v3);
    atomic_store(v4, a1);
  }
}

uint64_t ScalePulseModifier.body(content:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v3 = v2;
  v83 = a2;
  swift_getWitnessTable(protocol conformance descriptor for ScalePulseModifier<A>);
  v7 = type metadata accessor for _ViewModifier_Content(255, a1, v5, v6);
  v9 = type metadata accessor for ModifiedContent(255, v7, &type metadata for ScalePulseEffect, v8);
  v72 = type metadata accessor for ModifiedContent(255, v9, &type metadata for ScalePulseEffect, v10);
  v73 = type metadata accessor for ModifiedContent(255, v72, &type metadata for ScalePulseEffect, v11);
  v74 = type metadata accessor for ModifiedContent(255, v73, &type metadata for ScalePulseEffect, v12);
  v14 = type metadata accessor for ModifiedContent(255, v74, &type metadata for _BlurEffect, v13);
  v15 = *(a1 + 24);
  v75 = *(a1 + 16);
  v76 = v15;
  v78 = v14;
  v80 = type metadata accessor for ScheduledAnimationModifier(255, v75, v15, v16);
  v77 = type metadata accessor for ModifiedContent(0, v14, v80, v17);
  v82 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77);
  v79 = &v70 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v81 = &v70 - v20;
  v21 = v3 + *(a1 + 52);
  v22 = *v21;
  v24 = *(v21 + 8);
  v23 = *(v21 + 16);
  v26 = *(v21 + 24);
  v25 = *(v21 + 32);
  v27 = *(v21 + 40);
  v28 = *(v21 + 48);
  if (v28)
  {
    v29 = one-time initialization token for sharedGraph;

    if (v29 != -1)
    {
      swift_once();
    }

    Counter = AGGraphGetCounter();
    v31 = *v28;
    if (!Counter)
    {
      (*(v31 + 120))(&v108);

      v24 = v109;
      v23 = v110;
      v26 = v111;
      v71 = v112;
      goto LABEL_8;
    }

    (*(v31 + 104))(1);
  }

  LOBYTE(v108) = v22;
  v109 = v24;
  v110 = v23;
  v111 = v26;
  v112 = v25;
  v113 = v27;
  v71 = v25;
LABEL_8:
  v32 = *(a1 + 44);
  v33 = v3 + *(a1 + 48);
  v35 = *(v33 + 16);
  v34 = *(v33 + 24);
  v36 = *(v33 + 8);
  v37 = sqrt(*v33);
  v38 = *(v3 + v32);
  v39 = *(v3 + v32 + 8);
  *&v107[0] = v24;
  *(&v107[0] + 1) = 0x3FF0000000000000;
  *&v107[1] = v38;
  *(&v107[1] + 1) = v39;
  *&v107[2] = v37;
  *(&v107[2] + 1) = 0x3FF0000000000000;
  v40 = sqrt(v36);
  v107[3] = v35;
  View.modifier<A>(_:)();
  v114 = v88;
  v115 = v89;
  v116 = v90;
  v117 = v91;
  v106[0] = &protocol witness table for _ViewModifier_Content<A>;
  v106[1] = &protocol witness table for ScalePulseEffect;
  swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v9, v106);
  v42 = v41;
  *&v107[0] = v26;
  *(&v107[0] + 1) = 0x3FF0000000000000;
  *&v107[1] = v38;
  *(&v107[1] + 1) = v39;
  *&v107[2] = v37;
  *(&v107[2] + 1) = 0x3FF0000000000000;
  v107[3] = v35;
  View.modifier<A>(_:)();
  v92 = v86[4];
  v93 = v86[5];
  v94 = v86[6];
  v95 = v86[7];
  v88 = v86[0];
  v89 = v86[1];
  v90 = v86[2];
  v91 = v86[3];
  v105[0] = v42;
  v105[1] = &protocol witness table for ScalePulseEffect;
  swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v72, v105);
  v44 = v43;
  *&v114 = 0x3FF0000000000000;
  *(&v114 + 1) = v23;
  *&v115 = v38;
  *(&v115 + 1) = v39;
  *&v116 = 0x3FF0000000000000;
  *(&v116 + 1) = v40;
  *&v117 = 0;
  *(&v117 + 1) = v34;
  View.modifier<A>(_:)();
  v96 = v107[8];
  v97 = v107[9];
  v98 = v107[10];
  v99 = v107[11];
  v92 = v107[4];
  v93 = v107[5];
  v94 = v107[6];
  v95 = v107[7];
  v88 = v107[0];
  v89 = v107[1];
  v90 = v107[2];
  v91 = v107[3];
  v104[0] = v44;
  v104[1] = &protocol witness table for ScalePulseEffect;
  swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v73, v104);
  v46 = v45;
  *&v114 = 0x3FF0000000000000;
  *(&v114 + 1) = v71;
  *&v115 = v38;
  *(&v115 + 1) = v39;
  *&v116 = 0x3FF0000000000000;
  *(&v116 + 1) = v40;
  *&v117 = 0;
  *(&v117 + 1) = v34;
  View.modifier<A>(_:)();
  v100 = v86[12];
  v101 = v86[13];
  v102 = v86[14];
  v103 = v86[15];
  v96 = v86[8];
  v97 = v86[9];
  v98 = v86[10];
  v99 = v86[11];
  v92 = v86[4];
  v93 = v86[5];
  v94 = v86[6];
  v95 = v86[7];
  v88 = v86[0];
  v89 = v86[1];
  v90 = v86[2];
  v91 = v86[3];
  ScalePulseModifier.blurRadius.getter(a1);
  v87[0] = v46;
  v87[1] = &protocol witness table for ScalePulseEffect;
  swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v74, v87);
  v48 = v47;
  View.blur(radius:opaque:)();
  memcpy(v86, v107, 0x109uLL);
  v49 = *(a1 + 36);
  v50 = v3;
  v51 = v3;
  v53 = v75;
  v52 = v76;
  v55 = implicit closure #1 in ScalePulseModifier.body(content:)(v50, v75, v76, v54);
  v57 = v56;
  v85[0] = v48;
  v85[1] = &protocol witness table for _BlurEffect;
  v58 = v78;
  swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v78, v85);
  v60 = v59;
  v61 = v51;
  v62 = v51 + v49;
  v63 = v79;
  View.scheduledAnimation<A>(value:resetValue:delay:animation:)(v61, v62, v55, v57, v58, v53, v60, v52, v79, 0.0);

  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ScheduledAnimationModifier<A>, v80);
  v84[0] = v60;
  v84[1] = v65;
  v66 = v77;
  swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v77, v84, WitnessTable);
  v67 = v81;
  static ViewBuilder.buildExpression<A>(_:)();
  v68 = *(v82 + 8);
  v68(v63, v66);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v68)(v67, v66);
}

double ScalePulseModifier.blurRadius.getter(uint64_t a1)
{
  v2 = v1;
  v4 = v1 + *(a1 + 52);
  v5 = *(v4 + 40);
  v6 = *(v4 + 48);
  if (v6)
  {
    v7 = one-time initialization token for sharedGraph;

    if (v7 != -1)
    {
      swift_once();
    }

    Counter = AGGraphGetCounter();
    v9 = *v6;
    if (Counter)
    {
      (*(v9 + 104))(1);
    }

    else
    {
      (*(v9 + 120))(v11);

      v5 = *&v11[5];
    }
  }

  return v5 * *(v2 + *(a1 + 48) + 120);
}

void *implicit closure #1 in ScalePulseModifier.body(content:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for ScalePulseModifier(0, a2, a3, a4);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v15 - v10;
  (*(v8 + 16))(&v15 - v10, a1, v7, v9);
  v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  (*(v8 + 32))(v13 + v12, v11, v7);
  return &async function pointer to partial apply for implicit closure #2 in implicit closure #1 in ScalePulseModifier.body(content:);
}

uint64_t implicit closure #2 in implicit closure #1 in ScalePulseModifier.body(content:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  v8 = type metadata accessor for ScalePulseModifier(0, a2, a3, v7);
  *v6 = v3;
  v6[1] = partial apply for specialized closure #1 in closure #1 in ScheduledAnimationModifier.body(content:);

  return ScalePulseModifier.animate()(v8);
}

uint64_t ScalePulseModifier.animate()(uint64_t a1)
{
  v2[19] = a1;
  v2[20] = v1;
  v3 = type metadata accessor for ContinuousClock();
  v2[21] = v3;
  v2[22] = *(v3 - 8);
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  type metadata accessor for MainActor();
  v2[25] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[26] = v5;
  v2[27] = v4;

  return MEMORY[0x1EEE6DFA0](ScalePulseModifier.animate(), v5, v4);
}

uint64_t ScalePulseModifier.animate()()
{
  v37 = v0;
  v1 = (*(v0 + 160) + *(*(v0 + 152) + 52));
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 24);
  v5 = *(v1 + 5);
  v6 = *(v1 + 6);
  if (v6)
  {
    v33 = *(v1 + 24);
    v34 = *(v1 + 8);
    v7 = one-time initialization token for sharedGraph;

    if (v7 != -1)
    {
      swift_once();
    }

    Counter = AGGraphGetCounter();
    v9 = *v6;
    if (Counter)
    {
      (*(v9 + 104))(1);

      v4 = v33;
      v3 = v34;
    }

    else
    {
      (*(v9 + 120))();

      v2 = *(v0 + 16);
      v3 = *(v0 + 24);
      v4 = *(v0 + 40);
      v5 = *(v0 + 56);
    }
  }

  *(v0 + 64) = v2 ^ 1;
  *(v0 + 72) = v3;
  *(v0 + 88) = v4;
  *(v0 + 104) = v5;
  if (v6)
  {
    (*(*v6 + 128))(v0 + 64, 0);
  }

  v11 = *(v0 + 152);
  v10 = *(v0 + 160);
  v12 = *(v11 + 48);
  *(v0 + 304) = v12;
  v13 = v10 + v12;
  v14 = *(v10 + v12 + 48);
  v35 = *(v10 + v12 + 32);
  v36 = v14;
  v15 = specialized static Animation.spring(_:blendDuration:)(&v35, 0.0);
  v16 = swift_task_alloc();
  v17 = *(v11 + 16);
  *(v0 + 224) = v17;
  v16[2] = v17;
  v18 = *(v11 + 24);
  *(v0 + 232) = v18;
  v16[3] = v18;
  v16[4] = v10;
  *&v35 = 0;

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA09AnimationF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(&v35, v15);

  specialized closure #1 in withTransaction<A>(_:_:)(v19, partial apply for closure #1 in ScalePulseModifier.animate());
  v21 = *(v0 + 152);
  v20 = *(v0 + 160);

  v22 = *(v20 + *(v21 + 40));
  *(v0 + 308) = v22;
  if (v22)
  {
    v23 = *(v0 + 160);
    v24 = *(v13 + 144);
    v35 = *(v13 + 128);
    v36 = v24;
    v25 = specialized static Animation.spring(_:blendDuration:)(&v35, 0.0);
    v26 = swift_task_alloc();
    v26[2] = v17;
    v26[3] = v18;
    v26[4] = v23;
    *&v35 = 0;

    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA09AnimationF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(&v35, v25);

    specialized closure #1 in withTransaction<A>(_:_:)(v27, partial apply for closure #2 in ScalePulseModifier.animate());
  }

  *(v0 + 240) = *(v13 + 80);
  v28 = static Duration.seconds(_:)();
  v30 = v29;
  static Clock<>.continuous.getter();
  v31 = swift_task_alloc();
  *(v0 + 248) = v31;
  *v31 = v0;
  v31[1] = ScalePulseModifier.animate();

  return specialized Clock.sleep(for:tolerance:)(v28, v30, 0, 0, 1);
}

{
  v16 = v0;
  v1 = *(v0 + 256);
  *(v0 + 280) = *(v0 + 264);
  v2 = *(v0 + 160);
  v3 = v2 + *(v0 + 304);
  v4 = *(v3 + 56);
  v15 = *(v3 + 72);
  v13 = *(v0 + 224);
  v14 = v4;
  v5 = specialized static Animation.spring(_:blendDuration:)(&v14, 0.0);
  v6 = swift_task_alloc();
  *(v6 + 16) = v13;
  *(v6 + 32) = v2;
  *&v14 = 0;

  result = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA09AnimationF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(&v14, v5);
  if (!v1)
  {

    specialized closure #1 in withTransaction<A>(_:_:)(v8, partial apply for closure #3 in ScalePulseModifier.animate());

    v9 = static Duration.seconds(_:)();
    v11 = v10;
    static Clock<>.continuous.getter();
    v12 = swift_task_alloc();
    *(v0 + 288) = v12;
    *v12 = v0;
    v12[1] = ScalePulseModifier.animate();

    return specialized Clock.sleep(for:tolerance:)(v9, v11, 0, 0, 1);
  }

  return result;
}

{
  v15 = v0;
  *(v0 + 280) = *(v0 + 272);
  v1 = *(v0 + 160);
  v2 = v1 + *(v0 + 304);
  v3 = *(v2 + 56);
  v14 = *(v2 + 72);
  v12 = *(v0 + 224);
  v13 = v3;
  v4 = specialized static Animation.spring(_:blendDuration:)(&v13, 0.0);
  v5 = swift_task_alloc();
  *(v5 + 16) = v12;
  *(v5 + 32) = v1;
  *&v13 = 0;

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA09AnimationF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(&v13, v4);

  specialized closure #1 in withTransaction<A>(_:_:)(v6, partial apply for closure #3 in ScalePulseModifier.animate());

  v7 = static Duration.seconds(_:)();
  v9 = v8;
  static Clock<>.continuous.getter();
  v10 = swift_task_alloc();
  *(v0 + 288) = v10;
  *v10 = v0;
  v10[1] = ScalePulseModifier.animate();

  return specialized Clock.sleep(for:tolerance:)(v7, v9, 0, 0, 1);
}

{
  v21 = v0;
  v1 = *(v0 + 296);
  v2 = *(v0 + 160);
  v3 = v2 + *(v0 + 304);
  v17 = *(v0 + 224);

  v4 = *(v3 + 104);
  v19 = *(v3 + 88);
  v20 = v4;
  v5 = specialized static Animation.spring(_:blendDuration:)(&v19, 0.0);
  v6 = swift_task_alloc();
  *(v6 + 16) = v17;
  *(v6 + 32) = v2;
  *&v19 = 0;

  result = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA09AnimationF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(&v19, v5);
  if (!v1)
  {

    specialized closure #1 in withTransaction<A>(_:_:)(v8, partial apply for closure #4 in ScalePulseModifier.animate());
    v9 = *(v0 + 308);

    if (v9)
    {
      v10 = *(v0 + 160);
      v11 = v10 + *(v0 + 304);
      v12 = *(v11 + 128);
      v20 = *(v11 + 144);
      v18 = *(v0 + 224);
      v19 = v12;
      v13 = specialized static Animation.spring(_:blendDuration:)(&v19, 0.0);
      v14 = swift_task_alloc();
      *(v14 + 16) = v18;
      *(v14 + 32) = v10;
      *&v19 = 0;

      _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA09AnimationF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(&v19, v13);

      specialized closure #1 in withTransaction<A>(_:_:)(v15, partial apply for closure #5 in ScalePulseModifier.animate());
    }

    v16 = *(v0 + 8);

    return v16();
  }

  return result;
}

{
  v20 = v0;
  v1 = *(v0 + 160);
  v2 = v1 + *(v0 + 304);
  v16 = *(v0 + 224);

  v3 = *(v2 + 104);
  v18 = *(v2 + 88);
  v19 = v3;
  v4 = specialized static Animation.spring(_:blendDuration:)(&v18, 0.0);
  v5 = swift_task_alloc();
  *(v5 + 16) = v16;
  *(v5 + 32) = v1;
  *&v18 = 0;

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA09AnimationF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(&v18, v4);

  specialized closure #1 in withTransaction<A>(_:_:)(v6, partial apply for closure #4 in ScalePulseModifier.animate());
  v7 = *(v0 + 308);

  if (v7)
  {
    v8 = *(v0 + 160);
    v9 = v8 + *(v0 + 304);
    v10 = *(v9 + 128);
    v19 = *(v9 + 144);
    v17 = *(v0 + 224);
    v18 = v10;
    v11 = specialized static Animation.spring(_:blendDuration:)(&v18, 0.0);
    v12 = swift_task_alloc();
    *(v12 + 16) = v17;
    *(v12 + 32) = v8;
    *&v18 = 0;

    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA09AnimationF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(&v18, v11);

    specialized closure #1 in withTransaction<A>(_:_:)(v13, partial apply for closure #5 in ScalePulseModifier.animate());
  }

  v14 = *(v0 + 8);

  return v14();
}

uint64_t ScalePulseModifier.animate()(__n128 a1)
{
  v3 = *v2;
  v3[32] = v1;

  v4 = v3[24];
  v5 = v3[22];
  v6 = v3[21];
  if (v1)
  {

    v7 = *(v5 + 8);
    v3[34] = v7;
    v7(v4, v6);
    v8 = v3[26];
    v9 = v3[27];
    v10 = ScalePulseModifier.animate();
  }

  else
  {
    v11 = *(v5 + 8);
    v3[33] = v11;
    v11(v4, v6);
    v8 = v3[26];
    v9 = v3[27];
    v10 = ScalePulseModifier.animate();
  }

  return MEMORY[0x1EEE6DFA0](v10, v8, v9);
}

{
  v3 = *v2;
  v3[37] = v1;

  v4 = v3[35];
  v5 = v3[23];
  v6 = v3[21];
  if (v1)
  {

    v4(v5, v6);
    v7 = v3[26];
    v8 = v3[27];
    v9 = ScalePulseModifier.animate();
  }

  else
  {
    v4(v5, v6);
    v7 = v3[26];
    v8 = v3[27];
    v9 = ScalePulseModifier.animate();
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v8);
}

void closure #1 in ScalePulseModifier.animate()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1 + *(type metadata accessor for ScalePulseModifier(0, a2, a3, a4) + 52);
  v5 = *v4;
  v6 = *(v4 + 8);
  v7 = *(v4 + 32);
  v38 = v7;
  v39 = *(v4 + 16);
  v8 = *(v4 + 48);
  v37 = v6;
  if (v8)
  {
    v9 = one-time initialization token for sharedGraph;

    if (v9 != -1)
    {
      swift_once();
    }

    Counter = AGGraphGetCounter();
    v11 = *v8;
    if (Counter)
    {
      (*(v11 + 104))(1);

      if (v5)
      {
LABEL_6:
        v12 = one-time initialization token for sharedGraph;

        if (v12 != -1)
        {
          swift_once();
        }

        v13 = AGGraphGetCounter();
        v14 = *v8;
        if (v13)
        {
          (*(v14 + 104))(1);

          v15 = v5;
          v17 = v38;
          v16 = v39;
        }

        else
        {
          (*(v14 + 120))(&v40);

          v15 = v40;
          v16 = *&v41[8];
          v17 = v42;
        }

        goto LABEL_19;
      }
    }

    else
    {
      (*(v11 + 120))(&v40);

      if (v40)
      {
        goto LABEL_6;
      }
    }

    v18 = one-time initialization token for sharedGraph;

    if (v18 != -1)
    {
      swift_once();
    }

    v19 = AGGraphGetCounter();
    v20 = *v8;
    if (v19)
    {
      (*(v20 + 104))(1);

      v22 = v38;
      v21 = v39;
      v6 = v37;
      v23 = v5;
    }

    else
    {
      (*(v20 + 120))(&v40);

      v23 = v40;
      v21 = *&v41[8];
      v6 = *v41;
      v22 = v42;
    }
  }

  else
  {
    if (*v4)
    {
      v15 = 1;
      v16 = v39;
      v17 = v7;
LABEL_19:
      LOBYTE(v40) = v15;
      *v41 = 0x3FF0000000000000;
      *&v41[8] = v16;
      v42 = v17;
      if (!v8)
      {
        return;
      }

      (*(*v8 + 128))(&v40, 0);
      v24 = one-time initialization token for sharedGraph;

      if (v24 != -1)
      {
        swift_once();
      }

      v25 = AGGraphGetCounter();
      v26 = *v8;
      if (v25)
      {
        (*(v26 + 104))(1);

        v27 = v38;
        v28 = *(&v39 + 1);
        v29 = *(&v38 + 1);
        v30 = v37;
      }

      else
      {
        (*(v26 + 120))(&v40);

        v5 = v40;
        v30 = *v41;
        v28 = *&v41[16];
        v29 = *(&v42 + 1);
        v27 = v42;
      }

      LOBYTE(v40) = v5;
      *v41 = v30;
      *&v41[8] = 0x3FF0000000000000;
      *&v41[16] = v28;
      *&v42 = v27;
      *(&v42 + 1) = v29;
      goto LABEL_34;
    }

    v23 = 0;
    v21 = v39;
    v22 = v7;
  }

  LOBYTE(v40) = v23;
  *v41 = v6;
  *&v41[8] = v21;
  *&v41[16] = 0x3FF0000000000000;
  v42 = v22;
  if (!v8)
  {
    return;
  }

  (*(*v8 + 128))(&v40, 0);
  v31 = one-time initialization token for sharedGraph;

  if (v31 != -1)
  {
    swift_once();
  }

  v32 = AGGraphGetCounter();
  v33 = *v8;
  if (v32)
  {
    (*(v33 + 104))(1);

    v34 = *(&v39 + 1);
    v35 = *(&v38 + 1);
    v36 = vdupq_lane_s64(v39, 0);
    v36.i64[0] = v37;
  }

  else
  {
    (*(v33 + 120))(&v40);

    v5 = v40;
    v36 = *v41;
    v34 = *&v41[16];
    v35 = *(&v42 + 1);
  }

  LOBYTE(v40) = v5;
  *v41 = v36;
  *&v41[16] = v34;
  *&v42 = 0x3FF0000000000000;
  *(&v42 + 1) = v35;
LABEL_34:
  (*(*v8 + 128))(&v40, 0);
}

void closure #3 in ScalePulseModifier.animate()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1 + *(type metadata accessor for ScalePulseModifier(0, a2, a3, a4) + 52);
  v5 = *v4;
  v6 = *(v4 + 8);
  v7 = *(v4 + 24);
  v8 = *(v4 + 40);
  v9 = *(v4 + 48);
  if (!v9)
  {
    if (*v4)
    {
      v5 = 1;
      goto LABEL_19;
    }

    v5 = 0;
LABEL_22:
    LOBYTE(v21) = v5;
    v22 = v6;
    v23 = v7;
    v24 = v8;
    if (!v9)
    {
      return;
    }

    goto LABEL_23;
  }

  v19 = *(v4 + 8);
  v20 = *(v4 + 24);
  v10 = one-time initialization token for sharedGraph;

  if (v10 != -1)
  {
    swift_once();
  }

  Counter = AGGraphGetCounter();
  v12 = *v9;
  if (!Counter)
  {
    (*(v12 + 120))(&v21);

    if (v21)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

  (*(v12 + 104))(1);

  if ((v5 & 1) == 0)
  {
LABEL_13:
    v16 = one-time initialization token for sharedGraph;

    if (v16 != -1)
    {
      swift_once();
    }

    v17 = AGGraphGetCounter();
    v18 = *v9;
    if (v17)
    {
      (*(v18 + 104))(1);

      *&v6 = v19;
      v7 = v20;
    }

    else
    {
      (*(v18 + 120))(&v21);

      v5 = v21;
      *&v6 = v22;
      v7 = v23;
      v8 = v24;
    }

    goto LABEL_22;
  }

LABEL_6:
  v13 = one-time initialization token for sharedGraph;

  if (v13 != -1)
  {
    swift_once();
  }

  v14 = AGGraphGetCounter();
  v15 = *v9;
  if (v14)
  {
    (*(v15 + 104))(1);

    v6 = v19;
    *&v7 = v20;
  }

  else
  {
    (*(v15 + 120))(&v21);

    v5 = v21;
    v6 = v22;
    *&v7 = v23;
    v8 = v24;
  }

LABEL_19:
  LOBYTE(v21) = v5;
  v22 = v6;
  v23 = v7;
  v24 = v8;
  if (v9)
  {
LABEL_23:
    (*(*v9 + 128))(&v21, 0);
  }
}

void closure #4 in ScalePulseModifier.animate()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1 + *(type metadata accessor for ScalePulseModifier(0, a2, a3, a4) + 52);
  v5 = *v4;
  v6 = *(v4 + 8);
  v7 = *(v4 + 24);
  v8 = *(v4 + 32);
  v9 = *(v4 + 48);
  if (!v9)
  {
    if (*v4)
    {
      v5 = 1;
      goto LABEL_19;
    }

    v5 = 0;
    v19 = *(v4 + 16);
LABEL_22:
    LOBYTE(v22) = v5;
    *&v23 = 0;
    *(&v23 + 1) = v19;
    v24 = v7;
    v25 = v8;
    if (!v9)
    {
      return;
    }

    goto LABEL_23;
  }

  v20 = *(v4 + 8);
  v21 = *(v4 + 32);
  v10 = one-time initialization token for sharedGraph;

  if (v10 != -1)
  {
    swift_once();
  }

  Counter = AGGraphGetCounter();
  v12 = *v9;
  if (!Counter)
  {
    (*(v12 + 120))(&v22);

    if (v22)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

  (*(v12 + 104))(1);

  if ((v5 & 1) == 0)
  {
LABEL_13:
    v16 = one-time initialization token for sharedGraph;

    if (v16 != -1)
    {
      swift_once();
    }

    v17 = AGGraphGetCounter();
    v18 = *v9;
    if (v17)
    {
      (*(v18 + 104))(1);

      v8 = v21;
      v19 = *(&v20 + 1);
    }

    else
    {
      (*(v18 + 120))(&v22);

      v5 = v22;
      v19 = *(&v23 + 1);
      v7 = v24;
      v8 = v25;
    }

    goto LABEL_22;
  }

LABEL_6:
  v13 = one-time initialization token for sharedGraph;

  if (v13 != -1)
  {
    swift_once();
  }

  v14 = AGGraphGetCounter();
  v15 = *v9;
  if (v14)
  {
    (*(v15 + 104))(1);

    v6 = v20;
    v8 = v21;
  }

  else
  {
    (*(v15 + 120))(&v22);

    v5 = v22;
    v6 = v23;
    v8 = v25;
  }

LABEL_19:
  LOBYTE(v22) = v5;
  v23 = v6;
  v24 = 0;
  v25 = v8;
  if (v9)
  {
LABEL_23:
    (*(*v9 + 128))(&v22, 0);
  }
}

uint64_t closure #2 in ScalePulseModifier.animate()(uint64_t a1, uint64_t a2, uint64_t a3, double a4, uint64_t a5)
{
  result = type metadata accessor for ScalePulseModifier(0, a2, a3, a5);
  v8 = (a1 + *(result + 52));
  v9 = *(v8 + 6);
  if (v9)
  {
    v10 = *v8;
    v16 = *(v8 + 8);
    v17 = *(v8 + 24);
    v11 = one-time initialization token for sharedGraph;

    if (v11 != -1)
    {
      swift_once();
    }

    Counter = AGGraphGetCounter();
    v13 = *v9;
    if (Counter)
    {
      (*(v13 + 104))(1);

      v15 = v16;
      v14 = v17;
    }

    else
    {
      (*(v13 + 120))(&v18);

      v10 = v18;
      v14 = v20;
      v15 = v19;
    }

    LOBYTE(v18) = v10;
    v20 = v14;
    v19 = v15;
    v21 = a4;
    return (*(*v9 + 128))(&v18, 0);
  }

  return result;
}

void ScalePulseEffect.effectValue(size:)(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  v5 = v3[4];
  v6 = v3[5];
  if (a2 > 0.0)
  {
    v7 = sqrt((v3[6] + a2) / a2);
    if (v7 < 0.0)
    {
      __break(1u);
      goto LABEL_17;
    }

    if (v7 >= v5)
    {
      v7 = v3[4];
    }

    if (v5 >= 0.0)
    {
      v5 = v7;
    }

    else
    {
      v5 = 0.0;
    }
  }

  if (a3 <= 0.0)
  {
    v9 = v3[5];
LABEL_15:
    _ScaleEffect.effectValue(size:)(v12, a2, a3, 1.0 / v5 + *v3 * (v5 - 1.0 / v5), 1.0 / v9 + v3[1] * (v9 - 1.0 / v9), v3[2], v3[3]);
    v10 = v12[3];
    *(a1 + 32) = v12[2];
    *(a1 + 48) = v10;
    *(a1 + 64) = v13;
    v11 = v12[1];
    *a1 = v12[0];
    *(a1 + 16) = v11;
    return;
  }

  v8 = sqrt((v3[7] + a3) / a3);
  if (v8 >= 0.0)
  {
    v9 = 0.0;
    if (v6 >= 0.0)
    {
      if (v8 >= v6)
      {
        v9 = v3[5];
      }

      else
      {
        v9 = v8;
      }
    }

    goto LABEL_15;
  }

LABEL_17:
  __break(1u);
}

__n128 protocol witness for GeometryEffect.effectValue(size:) in conformance ScalePulseEffect@<Q0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  v5 = v3[1];
  v11 = *v3;
  v12 = v5;
  v6 = v3[3];
  v13 = v3[2];
  v14 = v6;
  ScalePulseEffect.effectValue(size:)(v9, a2, a3);
  v7 = v9[3];
  *(a1 + 32) = v9[2];
  *(a1 + 48) = v7;
  *(a1 + 64) = v10;
  result = v9[1];
  *a1 = v9[0];
  *(a1 + 16) = result;
  return result;
}

__n128 protocol witness for Animatable.animatableData.getter in conformance ScalePulseEffect@<Q0>(_OWORD *a1@<X8>)
{
  result = *v1;
  v3 = vmulq_f64(*(v1 + 16), vdupq_n_s64(0x4060000000000000uLL));
  *a1 = *v1;
  a1[1] = v3;
  return result;
}

__n128 protocol witness for Animatable.animatableData.setter in conformance ScalePulseEffect(uint64_t a1)
{
  result = *a1;
  v3 = vmulq_f64(*(a1 + 16), vdupq_n_s64(0x3F80000000000000uLL));
  *v1 = *a1;
  v1[1] = v3;
  return result;
}

__n128 (*protocol witness for Animatable.animatableData.modify in conformance ScalePulseEffect(float64x2_t **a1))(void **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = v1;
  v4 = vmulq_f64(*(v1 + 16), vdupq_n_s64(0x4060000000000000uLL));
  *v3 = *v1;
  *(v3 + 16) = v4;
  return protocol witness for Animatable.animatableData.modify in conformance ScalePulseEffect;
}

__n128 protocol witness for Animatable.animatableData.modify in conformance ScalePulseEffect(void **a1)
{
  v1 = *a1;
  v2 = *(v1 + 4);
  v3 = vmulq_f64(*(v1 + 1), vdupq_n_s64(0x3F80000000000000uLL));
  *v2 = *v1;
  v2[1] = v3;
  free(v1);
  return result;
}

void specialized getter of ePoint #1 in static ScalePulseEffect.shouldFinishEarly(in:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8))
  {
    EnvironmentValues.pixelLength.getter();
    v4 = v3;
    swift_beginAccess();
    *a1 = v4;
    *(a1 + 8) = 0;
  }
}

void instantiation function for generic protocol witness table for ScalePulseEffect(uint64_t a1)
{
  lazy protocol witness table accessor for type ScalePulseEffect and conformance ScalePulseEffect();
  *(a1 + 8) = v2;
  lazy protocol witness table accessor for type ScalePulseEffect and conformance ScalePulseEffect();
  *(a1 + 16) = v3;
}

{
  lazy protocol witness table accessor for type ScalePulseEffect and conformance ScalePulseEffect();
  *(a1 + 8) = v2;
}

BOOL specialized static ScalePulseEffect.shouldFinishEarly(in:)(__int128 *a1)
{
  v1 = a1[1];
  v9 = *a1;
  v10 = v1;
  v2 = a1[3];
  v11 = a1[2];
  v12 = v2;
  v13 = a1[4];
  v3 = v10;
  v4 = v2;
  v7 = 0.0;
  v8 = 1;
  if (fabs(*&v9 * *&v9 + *&v11 * *&v11) >= 0.0001)
  {
    return 0;
  }

  if (fabs(*(&v9 + 1) * *(&v9 + 1) + *(&v11 + 1) * *(&v11 + 1)) >= 0.0001)
  {
    return 0;
  }

  specialized getter of ePoint #1 in static ScalePulseEffect.shouldFinishEarly(in:)(&v7, &v9);
  return fabs(*&v3 * *&v3 + *&v4 * *&v4) < v5 * v5 && fabs(*(&v3 + 1) * *(&v3 + 1) + *(&v4 + 1) * *(&v4 + 1)) < v7 * v7;
}

uint64_t partial apply for implicit closure #2 in implicit closure #1 in ScalePulseModifier.body(content:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);
  v8 = *(type metadata accessor for ScalePulseModifier(0, v6, v7, a4) - 8);
  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = partial apply for specialized closure #1 in closure #1 in ScheduledAnimationModifier.body(content:);

  return implicit closure #2 in implicit closure #1 in ScalePulseModifier.body(content:)(v4 + v9, v6, v7);
}

uint64_t getEnumTagSinglePayload for ScalePulseState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[48])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for ScalePulseState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t type metadata completion function for ScalePulseModifier(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for ScalePulseModifier(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = *(v5 + 80);
  v8 = v6 + v7;
  if (v7 > 7 || (*(v5 + 80) & 0x100000) != 0 || ((((((((v6 + v7) & ~v7) + v6) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 159) & 0xFFFFFFFFFFFFFFF8) + 56 > 0x18)
  {
    v11 = *a2;
    *v3 = *a2;
    v3 = (v11 + ((v7 & 0xF8 ^ 0x1F8) & (v7 + 16)));
  }

  else
  {
    v12 = ~v7;
    v13 = *(v5 + 16);
    v13(a1, a2, v4);
    v15 = (v3 + v8) & v12;
    v16 = (a2 + v8) & v12;
    v13(v15, v16, v4);
    *(v15 + v6) = *(v16 + v6);
    v17 = (v15 + v6) & 0xFFFFFFFFFFFFFFF8;
    v18 = (v16 + v6) & 0xFFFFFFFFFFFFFFF8;
    *(v17 + 8) = *(v18 + 8);
    v19 = (v17 + 31) & 0xFFFFFFFFFFFFFFF8;
    v20 = (v18 + 31) & 0xFFFFFFFFFFFFFFF8;
    v21 = *(v20 + 16);
    *v19 = *v20;
    *(v19 + 16) = v21;
    v22 = *(v20 + 80);
    v24 = *(v20 + 32);
    v23 = *(v20 + 48);
    *(v19 + 64) = *(v20 + 64);
    *(v19 + 80) = v22;
    *(v19 + 32) = v24;
    *(v19 + 48) = v23;
    v26 = *(v20 + 112);
    v25 = *(v20 + 128);
    v27 = *(v20 + 96);
    *(v19 + 144) = *(v20 + 144);
    *(v19 + 112) = v26;
    *(v19 + 128) = v25;
    *(v19 + 96) = v27;
    v28 = (v19 + 159) & 0xFFFFFFFFFFFFFFF8;
    v29 = (v20 + 159) & 0xFFFFFFFFFFFFFFF8;
    v31 = *(v29 + 16);
    v30 = *(v29 + 32);
    *v28 = *v29;
    *(v28 + 16) = v31;
    *(v28 + 32) = v30;
    *(v28 + 48) = *(v29 + 48);
  }

  return v3;
}

double destroy for ScalePulseModifier(unint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  v5 = *(v4 + 8);
  v5(a1, v3);
  v5((*(v4 + 64) + a1 + *(v4 + 80)) & ~*(v4 + 80), v3);

  return result;
}

uint64_t initializeWithCopy for ScalePulseModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 16);
  v7(a1, a2, v5);
  v8 = *(v6 + 64);
  v9 = *(v6 + 80);
  v10 = (v8 + v9 + a1) & ~v9;
  v11 = (v8 + v9 + a2) & ~v9;
  v7(v10, v11, v5);
  *(v10 + v8) = *(v11 + v8);
  v12 = (v10 + v8) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v11 + v8) & 0xFFFFFFFFFFFFFFF8;
  *(v12 + 8) = *(v13 + 8);
  v14 = (v12 + 31) & 0xFFFFFFFFFFFFFFF8;
  v15 = (v13 + 31) & 0xFFFFFFFFFFFFFFF8;
  v16 = *(v15 + 16);
  *v14 = *v15;
  *(v14 + 16) = v16;
  v17 = *(v15 + 80);
  v19 = *(v15 + 32);
  v18 = *(v15 + 48);
  *(v14 + 64) = *(v15 + 64);
  *(v14 + 80) = v17;
  *(v14 + 32) = v19;
  *(v14 + 48) = v18;
  v21 = *(v15 + 112);
  v20 = *(v15 + 128);
  v22 = *(v15 + 96);
  *(v14 + 144) = *(v15 + 144);
  *(v14 + 112) = v21;
  *(v14 + 128) = v20;
  *(v14 + 96) = v22;
  v23 = (v14 + 159) & 0xFFFFFFFFFFFFFFF8;
  v24 = (v15 + 159) & 0xFFFFFFFFFFFFFFF8;
  v26 = *(v24 + 16);
  v25 = *(v24 + 32);
  *v23 = *v24;
  *(v23 + 16) = v26;
  *(v23 + 32) = v25;
  *(v23 + 48) = *(v24 + 48);

  return a1;
}

uint64_t assignWithCopy for ScalePulseModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 24);
  v7(a1, a2, v5);
  v8 = *(v6 + 64);
  v9 = *(v6 + 80);
  v10 = (v8 + v9 + a1) & ~v9;
  v11 = (v8 + v9 + a2) & ~v9;
  v7(v10, v11, v5);
  *(v10 + v8) = *(v11 + v8);
  v12 = (v10 + v8) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v11 + v8) & 0xFFFFFFFFFFFFFFF8;
  *(v12 + 8) = *(v13 + 8);
  *(v12 + 16) = *(v13 + 16);
  v14 = ((v12 + 31) & 0xFFFFFFFFFFFFFFF8);
  v15 = ((v13 + 31) & 0xFFFFFFFFFFFFFFF8);
  *v14 = *v15;
  v14[1] = v15[1];
  v14[2] = v15[2];
  v14[3] = v15[3];
  v14[4] = v15[4];
  v14[5] = v15[5];
  v14[6] = v15[6];
  v14[7] = v15[7];
  v14[8] = v15[8];
  v14[9] = v15[9];
  v14[10] = v15[10];
  v14[11] = v15[11];
  v14[12] = v15[12];
  v14[13] = v15[13];
  v14[14] = v15[14];
  v14[15] = v15[15];
  v14[16] = v15[16];
  v14[17] = v15[17];
  v14[18] = v15[18];
  v16 = (v14 + 159) & 0xFFFFFFFFFFFFFFF8;
  v17 = (v15 + 159) & 0xFFFFFFFFFFFFFFF8;
  *v16 = *v17;
  *(v16 + 8) = *(v17 + 8);
  *(v16 + 16) = *(v17 + 16);
  *(v16 + 24) = *(v17 + 24);
  *(v16 + 32) = *(v17 + 32);
  *(v16 + 40) = *(v17 + 40);
  *(v16 + 48) = *(v17 + 48);

  return a1;
}

uint64_t initializeWithTake for ScalePulseModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 32);
  v7(a1, a2, v5);
  v8 = *(v6 + 64);
  v9 = *(v6 + 80);
  v10 = (v8 + v9 + a1) & ~v9;
  v11 = (v8 + v9 + a2) & ~v9;
  v7(v10, v11, v5);
  *(v10 + v8) = *(v11 + v8);
  v12 = (v10 + v8) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v11 + v8) & 0xFFFFFFFFFFFFFFF8;
  *(v12 + 8) = *(v13 + 8);
  v14 = (v12 + 31) & 0xFFFFFFFFFFFFFFF8;
  v15 = (v13 + 31) & 0xFFFFFFFFFFFFFFF8;
  v16 = *(v15 + 16);
  *v14 = *v15;
  *(v14 + 16) = v16;
  v17 = *(v15 + 80);
  v19 = *(v15 + 32);
  v18 = *(v15 + 48);
  *(v14 + 64) = *(v15 + 64);
  *(v14 + 80) = v17;
  *(v14 + 32) = v19;
  *(v14 + 48) = v18;
  v21 = *(v15 + 112);
  v20 = *(v15 + 128);
  v22 = *(v15 + 96);
  *(v14 + 144) = *(v15 + 144);
  *(v14 + 112) = v21;
  *(v14 + 128) = v20;
  *(v14 + 96) = v22;
  v23 = (v14 + 159) & 0xFFFFFFFFFFFFFFF8;
  v24 = (v15 + 159) & 0xFFFFFFFFFFFFFFF8;
  v26 = *(v24 + 16);
  v25 = *(v24 + 32);
  v27 = *v24;
  *(v23 + 48) = *(v24 + 48);
  *(v23 + 16) = v26;
  *(v23 + 32) = v25;
  *v23 = v27;
  return a1;
}

uint64_t assignWithTake for ScalePulseModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 40);
  v7(a1, a2, v5);
  v8 = *(v6 + 64);
  v9 = *(v6 + 80);
  v10 = (v8 + v9 + a1) & ~v9;
  v11 = (v8 + v9 + a2) & ~v9;
  v7(v10, v11, v5);
  *(v10 + v8) = *(v11 + v8);
  v12 = (v10 + v8) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v11 + v8) & 0xFFFFFFFFFFFFFFF8;
  *(v12 + 8) = *(v13 + 8);
  *(v12 + 16) = *(v13 + 16);
  v14 = ((v12 + 31) & 0xFFFFFFFFFFFFFFF8);
  v15 = ((v13 + 31) & 0xFFFFFFFFFFFFFFF8);
  *v14 = *v15;
  v14[1] = v15[1];
  v14[2] = v15[2];
  v14[3] = v15[3];
  v14[4] = v15[4];
  v14[5] = v15[5];
  v14[6] = v15[6];
  v14[7] = v15[7];
  v14[8] = v15[8];
  v14[9] = v15[9];
  v14[10] = v15[10];
  v14[11] = v15[11];
  v14[12] = v15[12];
  v14[13] = v15[13];
  v14[14] = v15[14];
  v14[15] = v15[15];
  v14[16] = v15[16];
  v14[17] = v15[17];
  v14[18] = v15[18];
  v16 = (v14 + 159) & 0xFFFFFFFFFFFFFFF8;
  v17 = (v15 + 159) & 0xFFFFFFFFFFFFFFF8;
  *v16 = *v17;
  *(v16 + 8) = *(v17 + 8);
  *(v16 + 16) = *(v17 + 16);
  *(v16 + 24) = *(v17 + 24);
  *(v16 + 32) = *(v17 + 32);
  *(v16 + 40) = *(v17 + 40);
  *(v16 + 48) = *(v17 + 48);

  return a1;
}

uint64_t getEnumTagSinglePayload for ScalePulseModifier(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = *(v4 + 80);
  v9 = v6 + v8;
  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v10 = (((((((v9 & ~v8) + v6) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 159) & 0xFFFFFFFFFFFFFFF8) + 56;
  v11 = a2 - v7;
  v12 = v10 & 0xFFFFFFF8;
  if ((v10 & 0xFFFFFFF8) != 0)
  {
    v13 = 2;
  }

  else
  {
    v13 = v11 + 1;
  }

  if (v13 >= 0x10000)
  {
    v14 = 4;
  }

  else
  {
    v14 = 2;
  }

  if (v13 < 0x100)
  {
    v14 = 1;
  }

  if (v13 >= 2)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  if (v15 > 1)
  {
    if (v15 == 2)
    {
      v16 = *(a1 + v10);
      if (!v16)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v16 = *(a1 + v10);
      if (!v16)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v15 || (v16 = *(a1 + v10)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFE)
    {
      return (*(v4 + 48))(a1);
    }

    v19 = *(((((((((a1 + v9) & ~v8) + v6) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 159) & 0xFFFFFFFFFFFFFFF8) + 48);
    if (v19 >= 0xFFFFFFFF)
    {
      LODWORD(v19) = -1;
    }

    v20 = v19 - 1;
    if (v20 < 0)
    {
      v20 = -1;
    }

    return (v20 + 1);
  }

  v18 = v16 - 1;
  if (v12)
  {
    v18 = 0;
    LODWORD(v12) = *a1;
  }

  return v7 + (v12 | v18) + 1;
}

double storeEnumTagSinglePayload for ScalePulseModifier(unsigned int *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = *(v5 + 80);
  v10 = ((((((((v8 + v9) & ~v9) + v8) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 159) & 0xFFFFFFFFFFFFFFF8) + 56;
  if (v7 >= a3)
  {
    v14 = 0;
    v15 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v11 = a3 - v7;
    if (((((((((v8 + v9) & ~v9) + v8) & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) + 159) & 0xFFFFFFF8) == 0xFFFFFFC8)
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

    v15 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *(a1 + v10) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *(a1 + v10) = 0;
      }

      else if (v14)
      {
        *(a1 + v10) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if (v6 < 0x7FFFFFFE)
      {
        v21 = (((((((a1 + v8 + v9) & ~v9) + v8) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 159) & 0xFFFFFFFFFFFFFFF8;
        if (a2 > 0x7FFFFFFE)
        {
          result = 0.0;
          *(v21 + 40) = 0u;
          *(v21 + 24) = 0u;
          *(v21 + 8) = 0u;
          *v21 = a2 - 0x7FFFFFFF;
        }

        else
        {
          *(v21 + 48) = a2;
        }
      }

      else
      {
        v20 = *(v5 + 56);

        v20();
      }

      return result;
    }
  }

  if (((((((((v8 + v9) & ~v9) + v8) & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) + 159) & 0xFFFFFFF8) == 0xFFFFFFC8)
  {
    v16 = v15;
  }

  else
  {
    v16 = 1;
  }

  if (((((((((v8 + v9) & ~v9) + v8) & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) + 159) & 0xFFFFFFF8) != 0xFFFFFFC8)
  {
    v17 = ~v7 + a2;
    v18 = a1;
    bzero(a1, ((((((((v8 + v9) & ~v9) + v8) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 159) & 0xFFFFFFFFFFFFFFF8) + 56);
    a1 = v18;
    *v18 = v17;
  }

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      *(a1 + v10) = v16;
    }

    else
    {
      *(a1 + v10) = v16;
    }
  }

  else if (v14)
  {
    *(a1 + v10) = v16;
  }

  return result;
}

uint64_t static DynamicView.makeDynamicView(metadata:view:inputs:)@<X0>(uint64_t a1@<X0>, unsigned int *a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v39 = a1;
  v41 = a6;
  v58 = *MEMORY[0x1E69E9840];
  v37 = a4;
  v38 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v12 = &v35 - v11;
  v14 = type metadata accessor for DynamicViewContainer(0, a4, a5, v13);
  v40 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v35 - v15;
  v17 = a3[3];
  v18 = a3[1];
  v54 = a3[2];
  v55 = v17;
  v19 = a3[3];
  v56 = a3[4];
  v20 = a3[1];
  v52 = *a3;
  v53 = v20;
  v48 = v54;
  v49 = v19;
  v50 = a3[4];
  LODWORD(a2) = *a2;
  v57 = *(a3 + 20);
  v51 = *(a3 + 20);
  v46 = v52;
  v47 = v18;
  _ViewInputs.makeIndirectOutputs()(&v42);
  v21 = v42;
  v22 = v43;
  v23 = v44;
  (*(v10 + 16))(v12, v39, AssociatedTypeWitness);
  v48 = v54;
  v49 = v55;
  v50 = v56;
  v51 = v57;
  v46 = v52;
  v47 = v53;
  v42 = v21;
  v43 = v22;
  v44 = v23;
  v24 = a2;
  v26 = v37;
  v25 = v38;
  DynamicViewContainer.init(metadata:view:inputs:outputs:)(v12, v24, &v46, &v42, v37, v38, v16);
  v45[2] = type metadata accessor for DynamicViewContainer.Value(0, v26, v25, v27);
  v45[3] = v14;
  swift_getWitnessTable(protocol conformance descriptor for DynamicViewContainer<A>, v14);
  v45[4] = v28;
  outlined init with copy of _ViewInputs(&v52, &v46);
  v29 = type metadata accessor for Attribute();

  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v16, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TA_0, v45, v14, MEMORY[0x1E69E73E0], v29, MEMORY[0x1E69E7410], v30);
  (*(v40 + 8))(v16, v14);
  result = AGGraphSetFlags();
  v32 = *(v21 + 16);
  if (v32)
  {
    v33 = v21 + 48;
    do
    {
      v33 += 24;
      result = AGGraphSetIndirectDependency();
      --v32;
    }

    while (v32);
  }

  if (v23 != *MEMORY[0x1E698D3F8])
  {
    result = AGGraphSetIndirectDependency();
  }

  v34 = v41;
  *v41 = v21;
  *(v34 + 2) = v22;
  *(v34 + 3) = v23;
  return result;
}

uint64_t static DynamicView<>.makeID()@<X0>(uint64_t *a1@<X8>)
{
  result = AGMakeUniqueID();
  *a1 = result;
  return result;
}

id DynamicViewContainer.init(metadata:view:inputs:outputs:)@<X0>(uint64_t a1@<X0>, int a2@<W1>, __int128 *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v23 = a3[2];
  v24 = a3[3];
  v25 = a3[4];
  v26 = *(a3 + 20);
  v21 = *a3;
  v22 = a3[1];
  v13 = *a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = a4[1];
  (*(*(AssociatedTypeWitness - 8) + 32))(a7, a1, AssociatedTypeWitness);
  v17 = type metadata accessor for DynamicViewContainer(0, a5, a6, v16);
  *(a7 + v17[9]) = a2;
  v18 = a7 + v17[10];
  *(v18 + 32) = v23;
  *(v18 + 48) = v24;
  *(v18 + 64) = v25;
  *(v18 + 80) = v26;
  *v18 = v21;
  *(v18 + 16) = v22;
  v19 = (a7 + v17[11]);
  *v19 = v13;
  v19[1] = v15;
  result = AGSubgraphGetCurrent();
  if (result)
  {
    *(a7 + v17[12]) = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t DynamicViewContainer.Value.matches(type:id:)(uint64_t a1)
{
  if (*v1 == a1)
  {
    MEMORY[0x1EEE9AC00](a1);
    v4 = *(v3 + 24);
    v7[2] = *(v3 + 16);
    v7[3] = v4;
    v7[4] = v1;
    swift_getAssociatedTypeWitness();
    type metadata accessor for Optional();
    _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #1 in implicit closure #1 in DynamicViewContainer.Value.matches(type:id:), v7, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6370], v5, &v8);
    v2 = (v8 == 2) | v8;
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

uint64_t closure #1 in implicit closure #1 in DynamicViewContainer.Value.matches(type:id:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X8>)
{
  v53 = a5;
  v54 = a2;
  v52 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v44 = &v43 - v9;
  v10 = type metadata accessor for Optional();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v48 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v13 = &v43 - v12;
  v14 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v47 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v43 - v19;
  (*(v8 + 16))(&v43 - v19, v52, AssociatedTypeWitness, v18);
  (*(v8 + 56))(v20, 0, 1, AssociatedTypeWitness);
  v45 = a4;
  v46 = a3;
  v22 = *(type metadata accessor for DynamicViewContainer.Value(0, a3, a4, v21) + 36);
  v49 = TupleTypeMetadata2;
  v23 = *(TupleTypeMetadata2 + 48);
  v51 = v14;
  v24 = *(v14 + 16);
  v24(v13, v20, v10);
  v52 = v23;
  v25 = (v54 + v22);
  v54 = v10;
  v26 = v10;
  v27 = v13;
  v24(&v13[v23], v25, v26);
  v50 = v8;
  v28 = *(v8 + 48);
  if (v28(v13, 1, AssociatedTypeWitness) != 1)
  {
    v32 = v51;
    v33 = v47;
    v24(v47, v27, v54);
    v34 = v52;
    if (v28(&v27[v52], 1, AssociatedTypeWitness) != 1)
    {
      v35 = v50;
      v36 = v44;
      (*(v50 + 32))(v44, &v27[v34], AssociatedTypeWitness);
      swift_getAssociatedConformanceWitness();
      v37 = v33;
      v38 = AssociatedTypeWitness;
      v31 = dispatch thunk of static Equatable.== infix(_:_:)();
      v39 = *(v35 + 8);
      v39(v36, v38);
      v40 = *(v32 + 8);
      v41 = v20;
      v42 = v54;
      v40(v41, v54);
      v39(v37, v38);
      result = (v40)(v27, v42);
      goto LABEL_8;
    }

    (*(v32 + 8))(v20, v54);
    (*(v50 + 8))(v33, AssociatedTypeWitness);
    goto LABEL_6;
  }

  v29 = *(v51 + 8);
  v29(v20, v54);
  if (v28(&v13[v52], 1, AssociatedTypeWitness) != 1)
  {
LABEL_6:
    result = (*(v48 + 8))(v27, v49);
    v31 = 0;
    goto LABEL_8;
  }

  result = (v29)(v13, v54);
  v31 = 1;
LABEL_8:
  *v53 = v31 & 1;
  return result;
}

uint64_t DynamicViewContainer.Value.init(type:id:subgraph:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  *a6 = a1;
  v9 = type metadata accessor for DynamicViewContainer.Value(0, a4, a5, a4);
  v10 = *(v9 + 36);
  swift_getAssociatedTypeWitness();
  v11 = type metadata accessor for Optional();
  result = (*(*(v11 - 8) + 32))(&a6[v10], a2, v11);
  *&a6[*(v9 + 40)] = a3;
  return result;
}

uint64_t DynamicViewContainer.updateValue()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v77 = *MEMORY[0x1E69E9840];
  v8 = *(a1 + 16);
  v7 = *(a1 + 24);
  v9 = type metadata accessor for DynamicViewContainer.Value(0, v8, v7, a4);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v68 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v67 = &v61 - v13;
  v14 = type metadata accessor for Optional();
  v74 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v65 = &v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v61 - v17;
  v19 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v61 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness();
  v23 = type metadata accessor for Optional();
  v69 = *(v23 - 8);
  v70 = v23;
  MEMORY[0x1EEE9AC00](v23);
  v72 = a1;
  v25 = &v61 - v24;
  Value = AGGraphGetValue();
  (*(v19 + 16))(v22, Value, v8);
  v27 = *(v7 + 56);
  v71 = v5;
  v28 = v5;
  v29 = v9;
  v30 = v27(v25, v28, v8, v7);
  (*(v19 + 8))(v22, v8);
  OutputValue = AGGraphGetOutputValue();
  if (OutputValue)
  {
    (*(v10 + 16))(v18, OutputValue, v29);
    v32 = 0;
  }

  else
  {
    v32 = 1;
  }

  v73 = v10;
  v33 = (*(v10 + 56))(v18, v32, 1, v29);
  MEMORY[0x1EEE9AC00](v33);
  *(&v61 - 4) = v8;
  *(&v61 - 3) = v7;
  v66 = v30;
  *(&v61 - 2) = v30;
  *(&v61 - 1) = v25;
  v34 = v25;
  v75 = v18;
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #1 in DynamicViewContainer.updateValue(), (&v61 - 6), MEMORY[0x1E69E73E0], MEMORY[0x1E69E6370], v35, &v76);
  if (v76 == 2)
  {
    v36 = v74;
  }

  else
  {
    v36 = v74;
    if (v76)
    {
      (*(v74 + 8))(v75, v14);
      return (*(v69 + 8))(v34, v70);
    }
  }

  v64 = v7;
  v37 = v65;
  (*(v36 + 16))(v65, v75, v14);
  v38 = v14;
  v39 = v73;
  v40 = (*(v73 + 48))(v37, 1, v29);
  v62 = v38;
  v63 = 0;
  v61 = v29;
  if (v40 == 1)
  {
    (*(v36 + 8))(v37, v38);
  }

  else
  {
    v41 = v29;
    (*(v39 + 32))(v67, v37, v29);
    v42 = (v71 + *(v72 + 44));
    v43 = v42[3];
    v44 = *(*v42 + 16);
    if (v44)
    {
      v45 = *MEMORY[0x1E698D3F8];
      v46 = *v42 + 48;

      do
      {
        v46 += 24;
        AGGraphSetIndirectAttribute();
        --v44;
      }

      while (v44);
    }

    else
    {

      v45 = *MEMORY[0x1E698D3F8];
    }

    v47 = v41;
    if (v43 != v45)
    {
      AGGraphSetIndirectAttribute();
    }

    v48 = v67;
    AGSubgraphRef.willInvalidate(isInserted:)(1);
    AGSubgraphInvalidate();
    v39 = v73;
    (*(v73 + 8))(v48, v47);
    v36 = v74;
  }

  v49 = v71;
  v50 = v72;
  v51 = AGSubgraphGetGraph();
  v52 = AGSubgraphCreate();

  AGSubgraphAddChild();
  AGGraphClearUpdate();
  v53 = AGSubgraphGetCurrent();
  AGSubgraphSetCurrent();
  v54 = v68;
  closure #2 in DynamicViewContainer.updateValue()(v49, v66, v34, v52, v8, v64, v68);
  AGSubgraphSetCurrent();

  v55 = AGGraphSetUpdate();
  v56 = MEMORY[0x1EEE9AC00](v55);
  *(&v61 - 2) = v50;
  swift_getWitnessTable(protocol conformance descriptor for DynamicViewContainer<A>, v50, v56);
  *(&v61 - 1) = v57;
  v58 = v61;
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v54, partial apply for closure #1 in StatefulRule.value.setter, (&v61 - 4), v61, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v59);

  (*(v39 + 8))(v54, v58);
  (*(v36 + 8))(v75, v62);
  return (*(v69 + 8))(v34, v70);
}

id closure #2 in DynamicViewContainer.updateValue()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  v72 = a4;
  v68 = a3;
  v69 = a7;
  v70 = a2;
  swift_getAssociatedTypeWitness();
  v10 = type metadata accessor for Optional();
  v66 = *(v10 - 8);
  v67 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v65 = &v57 - v11;
  v12 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v59 = *(AssociatedTypeWitness - 8);
  v13 = v59;
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v60 = &v57 - v14;
  v62 = v12;
  v64 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = v17;
  v20 = type metadata accessor for DynamicViewContainer(0, v18, a6, v19);
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v57 - v22;
  v25 = a1 + *(v24 + 40);
  v26 = *(v25 + 48);
  v81[2] = *(v25 + 32);
  v81[3] = v26;
  v81[4] = *(v25 + 64);
  v82 = *(v25 + 80);
  v27 = *(v25 + 16);
  v81[0] = *v25;
  v81[1] = v27;
  v28 = v27;
  v80 = v81[0];
  v29 = *(v25 + 24);
  v30 = *(v25 + 40);
  v31 = *(v25 + 56);
  *(v79 + 12) = *(v25 + 68);
  v78 = v30;
  v79[0] = v31;
  v77 = v29;
  swift_beginAccess();
  v32 = v28[3];
  v83[1] = v28[2];
  v83[2] = v32;
  v33 = v28[5];
  v83[3] = v28[4];
  v83[4] = v33;
  v83[0] = v28[1];
  type metadata accessor for MutableBox<CachedEnvironment>(0, v34, v35, v36);
  v37 = swift_allocObject();
  memmove((v37 + 16), v28 + 1, 0x50uLL);
  outlined init with copy of _ViewInputs(v81, v86);
  outlined init with copy of CachedEnvironment(v83, v86);

  (*(v21 + 16))(v23, a1, v20);
  v38 = *(v20 + 16);
  Value = AGGraphGetValue();
  (*(*(v38 - 8) + 16))(v17, Value, v38);
  (*(v21 + 8))(v23, v20);
  v40 = *(v13 + 16);
  v41 = v60;
  v42 = AssociatedTypeWitness;
  v40(v60, a1, AssociatedTypeWitness);
  v43 = *(v20 + 36);
  v63 = v37;
  *&v85[0] = v37;
  *(v85 + 8) = v77;
  *(&v85[3] + 4) = *(v79 + 12);
  *(&v85[2] + 8) = v79[0];
  *(&v85[1] + 8) = v78;
  *&v74[16] = v85[1];
  *&v74[32] = v85[2];
  v44 = *(a1 + v43);
  *&v74[48] = v85[3];
  v84 = v80;
  *&v74[64] = DWORD2(v79[1]);
  v73 = v80;
  *v74 = v85[0];
  v45 = *(a6 + 64);
  outlined init with copy of _ViewInputs(&v84, v86);
  v46 = v41;
  v47 = v41;
  v48 = v44;
  v49 = v58;
  v50 = v62;
  v71 = a6;
  v45(&v75, v47, v48, &v73, v62, a6);
  v86[2] = *&v74[16];
  v86[3] = *&v74[32];
  v86[4] = *&v74[48];
  v87 = *&v74[64];
  v86[0] = v73;
  v86[1] = *v74;
  outlined destroy of _ViewInputs(v86);
  (*(v59 + 8))(v46, v42);
  (*(v64 + 8))(v49, v50);
  v51 = v76;
  v52 = a1 + *(v20 + 44);
  v53 = *(v52 + 8);
  LODWORD(v20) = *(v52 + 12);
  *&v73 = *v52;
  DWORD2(v73) = v53;
  swift_bridgeObjectRetain_n();

  PreferencesOutputs.attachIndirectOutputs(to:)(&v75);

  if (v20 != *MEMORY[0x1E698D3F8] && v51 != *MEMORY[0x1E698D3F8])
  {
    AGGraphSetIndirectAttribute();
  }

  v73 = v80;
  *v74 = v63;
  *&v74[8] = v77;
  *&v74[24] = v78;
  *&v74[40] = v79[0];
  *&v74[52] = *(v79 + 12);
  outlined destroy of _ViewInputs(&v73);

  v54 = v65;
  (*(v66 + 16))(v65, v68, v67);
  DynamicViewContainer.Value.init(type:id:subgraph:)(v70, v54, v72, v50, v71, v69);
  v55 = v72;

  return v55;
}

uint64_t protocol witness for static StatefulRule.initialValue.getter in conformance DynamicViewContainer<A>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v4 = type metadata accessor for DynamicViewContainer.Value(0, *(a1 + 16), *(a1 + 24), a2);
  v5 = *(*(v4 - 8) + 56);

  return v5(a3, 1, 1, v4);
}

double DynamicViewList.Item.__ivar_destroyer()
{
  v1 = *(*v0 + 136);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(v0 + v1, AssociatedTypeWitness);

  return result;
}

uint64_t DynamicViewList.WrappedList.print(into:)(void *a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = &v28 - v7;
  v9 = a1[2];
  if (v9)
  {
    MEMORY[0x193ABEDD0](10, 0xE100000000000000, v6);
    MEMORY[0x193ABEDD0](a1[3], a1[4]);
    MEMORY[0x193ABEDD0](40, 0xE100000000000000);
    result = MEMORY[0x193ABEDD0](0x2D63696D616E7964, 0xEC00000077656976);
    if (__OFADD__(v9, 1))
    {
      __break(1u);
      goto LABEL_13;
    }

    a1[2] = v9 + 1;
    v11 = 8224;
    v12 = 0xE200000000000000;
  }

  else
  {
    MEMORY[0x193ABEDD0](40, 0xE100000000000000, v6);
    v11 = 0x2D63696D616E7964;
    v12 = 0xEC00000077656976;
  }

  MEMORY[0x193ABEDD0](v11, v12);
  v28 = 0;
  v29 = 0xE000000000000000;
  MEMORY[0x193ABEDD0](0x2064693A23, 0xE500000000000000);
  v13 = v2[5];
  (*(v5 + 16))(v8, &v13[*(*v13 + 136)], AssociatedTypeWitness);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  (*(v5 + 8))(v8, AssociatedTypeWitness);
  v14 = v28;
  v15 = v29;
  MEMORY[0x193ABEDD0](32, 0xE100000000000000);
  MEMORY[0x193ABEDD0](v14, v15);

  v28 = 0x2072656E776F3A23;
  v29 = 0xE800000000000000;
  v16 = AGAttribute.description.getter();
  MEMORY[0x193ABEDD0](v16);

  v17 = v28;
  v18 = v29;
  MEMORY[0x193ABEDD0](32, 0xE100000000000000);
  MEMORY[0x193ABEDD0](v17, v18);

  v28 = 0x20727474613A23;
  v29 = 0xE700000000000000;
  type metadata accessor for ViewList();
  v19 = AGAttribute.description.getter();
  MEMORY[0x193ABEDD0](v19);

  v20 = v28;
  v21 = v29;
  MEMORY[0x193ABEDD0](32, 0xE100000000000000);
  MEMORY[0x193ABEDD0](v20, v21);

  if (!*(v13 + 6) || (AGSubgraphIsValid() & 1) == 0)
  {
    MEMORY[0x193ABEDD0](32, 0xE100000000000000);
    MEMORY[0x193ABEDD0](0x64696C61766E69, 0xE700000000000000);
  }

  v22 = v2[3];
  v23 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v22);
  result = (*(v23 + 88))(a1, v22, v23);
  v25 = a1[2];
  if (!v25)
  {
    return MEMORY[0x193ABEDD0](41, 0xE100000000000000);
  }

  v26 = __OFSUB__(v25, 1);
  v27 = v25 - 1;
  if (!v26)
  {
    a1[2] = v27;
    specialized RangeReplaceableCollection<>.removeLast(_:)(2uLL, v24);
    return MEMORY[0x193ABEDD0](41, 0xE100000000000000);
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance DynamicViewList<A>.WrappedList(uint64_t a1)
{
  swift_getWitnessTable(protocol conformance descriptor for DynamicViewList<A>.WrappedList, a1);

  return ViewList.debugDescription.getter(a1, v2);
}

uint64_t static DynamicViewList.WrappedIDs.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 == a4)
  {
    return (*(*a1 + 104))(a3) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t protocol witness for BidirectionalCollection.index(before:) in conformance DynamicViewList<A>.WrappedIDs(uint64_t a1, uint64_t a2)
{
  swift_getWitnessTable(protocol conformance descriptor for DynamicViewList<A>.WrappedIDs);

  return RandomAccessCollection<>.index(before:)();
}

void (*protocol witness for Collection.subscript.read in conformance DynamicViewList<A>.WrappedIDs(uint64_t *a1, uint64_t *a2))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x28uLL);
  }

  *a1 = v5;
  *(v5 + 32) = DynamicViewList.WrappedIDs.subscript.read(v5, *a2, *v2);
  return protocol witness for Collection.subscript.read in conformance ArrayWith2Inline<A>;
}

uint64_t (*DynamicViewList.WrappedIDs.subscript.read(uint64_t a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  (*(*a3 + 96))(a2);
  DynamicViewList.Item.bindID(_:)();
  return destroy for HostPreferencesCombiner;
}

void *protocol witness for Collection.indices.getter in conformance DynamicViewList<A>.WrappedIDs(uint64_t a1)
{
  swift_getWitnessTable(protocol conformance descriptor for DynamicViewList<A>.WrappedIDs, a1);

  return RandomAccessCollection<>.indices.getter();
}

uint64_t protocol witness for Collection.index(after:) in conformance DynamicViewList<A>.WrappedIDs(uint64_t a1, uint64_t a2)
{
  swift_getWitnessTable(protocol conformance descriptor for DynamicViewList<A>.WrappedIDs);

  return RandomAccessCollection<>.index(after:)();
}

uint64_t protocol witness for BidirectionalCollection.formIndex(before:) in conformance DynamicViewList<A>.WrappedIDs(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t *, uint64_t, uint64_t, void, double))
{
  v9 = *a1;
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for DynamicViewList<A>.WrappedIDs, a2, a3);
  return a4(&v9, a2, v7, MEMORY[0x1E69E6570], WitnessTable);
}

uint64_t protocol witness for Sequence.underestimatedCount.getter in conformance DynamicViewList<A>.WrappedIDs(uint64_t a1)
{
  v3.n128_f64[0] = swift_getWitnessTable(protocol conformance descriptor for DynamicViewList<A>.WrappedIDs, a1);

  return MEMORY[0x1EEE698E0](a1, v2, v3);
}

uint64_t protocol witness for Sequence._copyToContiguousArray() in conformance DynamicViewList<A>.WrappedIDs(uint64_t a1)
{
  swift_getWitnessTable(protocol conformance descriptor for DynamicViewList<A>.WrappedIDs, a1);

  return Collection._copyToContiguousArray()();
}

double DynamicViewList.Transform.wrapSubgraph(into:)(void *a1, uint64_t a2)
{

  MEMORY[0x193ABF170](v3);
  if (*((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for DynamicViewList(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(*(swift_getAssociatedTypeWitness() - 8) + 80);
  *a1 = *a2;
  return  + (((v5 & 0xF8) + 23) & ~(v5 & 0xF8) & 0x1F8);
}

uint64_t assignWithCopy for DynamicViewList(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8) + 24;
  (*v6)(a1, a2, AssociatedTypeWitness);
  v7 = *(v6 + 40) + 3;
  v8 = ((v7 + a1) & 0xFFFFFFFFFFFFFFFCLL);
  v9 = (v7 + a2) & 0xFFFFFFFFFFFFFFFCLL;
  v10 = v9 + 11;
  v11 = *v9;
  v9 += 147;
  *v8 = v11;
  v12 = (v8 + 11) & 0xFFFFFFFFFFFFFFF8;
  v13 = v10 & 0xFFFFFFFFFFFFFFF8;
  *v12 = *(v10 & 0xFFFFFFFFFFFFFFF8);

  *(v12 + 8) = *(v13 + 8);
  *(v12 + 16) = *(v13 + 16);

  *(v12 + 24) = *(v13 + 24);
  *(v12 + 28) = *(v13 + 28);
  *(v12 + 32) = *(v13 + 32);
  *(v12 + 36) = *(v13 + 36);
  *(v12 + 40) = *(v13 + 40);

  *(v12 + 48) = *(v13 + 48);
  *(v12 + 56) = *(v13 + 56);
  *(v12 + 64) = *(v13 + 64);
  *(v12 + 72) = *(v13 + 72);

  *(v12 + 80) = *(v13 + 80);
  *(v12 + 88) = *(v13 + 88);
  swift_weakCopyAssign();
  v14 = *(v13 + 112);
  *(v12 + 128) = *(v13 + 128);
  *(v12 + 112) = v14;
  v15 = (v8 + 147) & 0xFFFFFFFFFFFFFFF8;
  v17 = (v9 & 0xFFFFFFFFFFFFFFF8) + 15;
  v16 = *(v9 & 0xFFFFFFFFFFFFFFF8);
  v18 = *v15;
  *v15 = v16;
  v15 += 15;
  v19 = v16;

  v17 &= 0xFFFFFFFFFFFFFFF8;
  *(v15 & 0xFFFFFFFFFFFFFFF8) = *v17;

  *(((v15 & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) = *((v17 + 15) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

uint64_t initializeWithTake for DynamicViewList(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8) + 32;
  (*v6)(a1, a2, AssociatedTypeWitness);
  v7 = *(v6 + 32) + 3;
  v8 = v7 + a1;
  v9 = (v7 + a2) & 0xFFFFFFFFFFFFFFFCLL;
  v10 = v9 + 11;
  v11 = *v9;
  v9 += 147;
  *(v8 & 0xFFFFFFFFFFFFFFFCLL) = v11;
  v12 = (v8 & 0xFFFFFFFFFFFFFFFCLL) + 147;
  v13 = ((v8 & 0xFFFFFFFFFFFFFFFCLL) + 11) & 0xFFFFFFFFFFFFFFF8;
  v14 = v10 & 0xFFFFFFFFFFFFFFF8;
  v15 = *((v10 & 0xFFFFFFFFFFFFFFF8) + 32);
  v16 = *(v10 & 0xFFFFFFFFFFFFFFF8);
  *(v13 + 16) = *((v10 & 0xFFFFFFFFFFFFFFF8) + 16);
  *(v13 + 32) = v15;
  *v13 = v16;
  *(v13 + 48) = *((v10 & 0xFFFFFFFFFFFFFFF8) + 48);
  *(v13 + 56) = *((v10 & 0xFFFFFFFFFFFFFFF8) + 56);
  *(v13 + 64) = *((v10 & 0xFFFFFFFFFFFFFFF8) + 64);
  LOBYTE(v10) = *((v10 & 0xFFFFFFFFFFFFFFF8) + 80);
  *(v13 + 72) = *(v14 + 72);
  *(v13 + 80) = v10;
  *(v13 + 88) = *(v14 + 88);
  swift_weakTakeInit();
  v17 = *(v14 + 112);
  *(v13 + 128) = *(v14 + 128);
  *(v13 + 112) = v17;
  *(v12 & 0xFFFFFFFFFFFFFFF8) = *(v9 & 0xFFFFFFFFFFFFFFF8);
  v18 = (((v12 & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
  v19 = (((v9 & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
  *v18 = *v19;
  *((v18 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v19 + 15) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t assignWithTake for DynamicViewList(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8) + 40;
  (*v6)(a1, a2, AssociatedTypeWitness);
  v7 = *(v6 + 24) + 3;
  v8 = ((v7 + a1) & 0xFFFFFFFFFFFFFFFCLL);
  v9 = ((v7 + a2) & 0xFFFFFFFFFFFFFFFCLL);
  *v8 = *v9;
  v10 = (v8 + 11) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v9 + 11) & 0xFFFFFFFFFFFFFFF8;
  *v10 = *v11;

  *(v10 + 8) = *(v11 + 8);
  *(v10 + 16) = *(v11 + 16);

  *(v10 + 24) = *(v11 + 24);
  *(v10 + 28) = *(v11 + 28);
  *(v10 + 32) = *(v11 + 32);
  *(v10 + 36) = *(v11 + 36);
  *(v10 + 40) = *(v11 + 40);

  *(v10 + 48) = *(v11 + 48);
  *(v10 + 56) = *(v11 + 56);
  *(v10 + 64) = *(v11 + 64);
  *(v10 + 72) = *(v11 + 72);

  *(v10 + 80) = *(v11 + 80);
  *(v10 + 88) = *(v11 + 88);
  swift_weakTakeAssign();
  v12 = *(v11 + 112);
  *(v10 + 128) = *(v11 + 128);
  *(v10 + 112) = v12;
  v13 = ((v8 + 147) & 0xFFFFFFFFFFFFFFF8);
  v14 = ((v9 + 147) & 0xFFFFFFFFFFFFFFF8);
  v15 = *v13;
  *v13 = *v14;

  v16 = ((v13 + 15) & 0xFFFFFFFFFFFFFFF8);
  v17 = ((v14 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v16 = *v17;

  *((v16 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v17 + 15) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

uint64_t getEnumTagSinglePayload for DynamicViewList(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(*(AssociatedTypeWitness - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  if (v8 >= a2)
  {
    goto LABEL_28;
  }

  v10 = ((((((((v9 + 3) & 0xFFFFFFFFFFFFFFFCLL) + 147) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  v11 = v10 & 0xFFFFFFF8;
  if ((v10 & 0xFFFFFFF8) != 0)
  {
    v12 = 2;
  }

  else
  {
    v12 = a2 - v8 + 1;
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

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      v15 = *(a1 + v10);
      if (!v15)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v15 = *(a1 + v10);
      if (!v15)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v14 || (v15 = *(a1 + v10)) == 0)
  {
LABEL_28:
    if (v7 < 0x7FFFFFFF)
    {
      v19 = *(((((a1 + v9 + 3) & 0xFFFFFFFFFFFFFFFCLL) + 11) & 0xFFFFFFFFFFFFFFF8) + 16);
      if (v19 >= 0xFFFFFFFF)
      {
        LODWORD(v19) = -1;
      }

      return (v19 + 1);
    }

    else
    {
      v18 = *(v6 + 48);

      return v18(a1);
    }
  }

  v17 = v15 - 1;
  if (v11)
  {
    v17 = 0;
    LODWORD(v11) = *a1;
  }

  return v8 + (v11 | v17) + 1;
}

double storeEnumTagSinglePayload for DynamicViewList(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v9 = *(v7 + 84);
  v10 = *(v7 + 64);
  if (v9 <= 0x7FFFFFFF)
  {
    v11 = 0x7FFFFFFF;
  }

  else
  {
    v11 = *(v7 + 84);
  }

  v12 = ((((((((v10 + 3) & 0xFFFFFFFFFFFFFFFCLL) + 147) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v11 >= a3)
  {
    v15 = 0;
    v16 = a2 - v11;
    if (a2 <= v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
    if (((((((((v10 + 3) & 0xFFFFFFFC) + 147) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v13 = a3 - v11 + 1;
    }

    else
    {
      v13 = 2;
    }

    if (v13 >= 0x10000)
    {
      v14 = 4;
    }

    else
    {
      v14 = 2;
    }

    if (v13 < 0x100)
    {
      v14 = 1;
    }

    if (v13 >= 2)
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    v16 = a2 - v11;
    if (a2 <= v11)
    {
LABEL_17:
      if (v15 > 1)
      {
        if (v15 != 2)
        {
          *(a1 + v12) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *(a1 + v12) = 0;
      }

      else if (v15)
      {
        *(a1 + v12) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if (v9 < 0x7FFFFFFF)
      {
        v20 = (((a1 + v10 + 3) & 0xFFFFFFFFFFFFFFFCLL) + 11) & 0xFFFFFFFFFFFFFFF8;
        if ((a2 & 0x80000000) != 0)
        {
          *(v20 + 120) = 0;
          result = 0.0;
          *(v20 + 104) = 0u;
          *(v20 + 88) = 0u;
          *(v20 + 72) = 0u;
          *(v20 + 56) = 0u;
          *(v20 + 40) = 0u;
          *(v20 + 24) = 0u;
          *(v20 + 8) = 0u;
          *(v20 + 128) = 0;
          *v20 = a2 & 0x7FFFFFFF;
        }

        else
        {
          *(v20 + 16) = (a2 - 1);
        }
      }

      else
      {
        v19 = *(v7 + 56);

        v19(a1, a2);
      }

      return result;
    }
  }

  if (((((((((v10 + 3) & 0xFFFFFFFC) + 147) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v17 = v16;
  }

  else
  {
    v17 = 1;
  }

  if (((((((((v10 + 3) & 0xFFFFFFFC) + 147) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v18 = ~v11 + a2;
    bzero(a1, v12);
    *a1 = v18;
  }

  if (v15 > 1)
  {
    if (v15 == 2)
    {
      *(a1 + v12) = v17;
    }

    else
    {
      *(a1 + v12) = v17;
    }
  }

  else if (v15)
  {
    *(a1 + v12) = v17;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for DynamicViewContainer.Value(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 80);
  v8 = v7;
  if (*(v6 + 84))
  {
    v9 = *(v6 + 64);
  }

  else
  {
    v9 = *(v6 + 64) + 1;
  }

  v10 = v9 + 7;
  v11 = v7 & 0x100000;
  v12 = *a2;
  *a1 = *a2;
  if (v8 > 7 || v11 != 0 || ((v9 + 7 + ((v8 + 8) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 8 > 0x18)
  {
    a1 = (v12 + ((v8 & 0xF8 ^ 0x1F8) & (v8 + 16)));
  }

  else
  {
    v15 = ~v8;
    v16 = a1 + v8;
    v17 = a2 + v8;
    v18 = ((v16 + 8) & v15);
    v19 = ((v17 + 8) & v15);
    if ((*(v6 + 48))(v19, 1, AssociatedTypeWitness))
    {
      memcpy(v18, v19, v9);
    }

    else
    {
      (*(v6 + 16))(v18, v19, AssociatedTypeWitness);
      (*(v6 + 56))(v18, 0, 1, AssociatedTypeWitness);
    }

    v20 = *((v19 + v10) & 0xFFFFFFFFFFFFFFF8);
    *((v18 + v10) & 0xFFFFFFFFFFFFFFF8) = v20;
    v21 = v20;
  }

  return a1;
}

void *initializeWithTake for DynamicViewContainer.Value(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 80);
  v8 = ((a1 + v7 + 8) & ~v7);
  v9 = ((a2 + v7 + 8) & ~v7);
  if ((*(v6 + 48))(v9, 1, AssociatedTypeWitness))
  {
    v10 = *(v6 + 84);
    v11 = *(v6 + 64);
    if (v10)
    {
      v12 = v11;
    }

    else
    {
      v12 = v11 + 1;
    }

    memcpy(v8, v9, v12);
  }

  else
  {
    (*(v6 + 32))(v8, v9, AssociatedTypeWitness);
    v14 = *(v6 + 56);
    v13 = v6 + 56;
    v14(v8, 0, 1, AssociatedTypeWitness);
    v10 = *(v13 + 28);
    v11 = *(v13 + 8);
  }

  if (v10)
  {
    v15 = v11;
  }

  else
  {
    v15 = v11 + 1;
  }

  *((v8 + v15 + 7) & 0xFFFFFFFFFFFFFFF8) = *((v9 + v15 + 7) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

void *assignWithTake for DynamicViewContainer.Value(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 80);
  v8 = ((a1 + v7 + 8) & ~v7);
  v9 = ((a2 + v7 + 8) & ~v7);
  v10 = *(v6 + 48);
  v11 = v10(v8, 1, AssociatedTypeWitness);
  v12 = v10(v9, 1, AssociatedTypeWitness);
  if (v11)
  {
    if (!v12)
    {
      (*(v6 + 32))(v8, v9, AssociatedTypeWitness);
      (*(v6 + 56))(v8, 0, 1, AssociatedTypeWitness);
      goto LABEL_12;
    }

    v13 = *(v6 + 84);
    v14 = *(v6 + 64);
  }

  else
  {
    if (!v12)
    {
      (*(v6 + 40))(v8, v9, AssociatedTypeWitness);
      goto LABEL_12;
    }

    (*(v6 + 8))(v8, AssociatedTypeWitness);
    v13 = *(v6 + 84);
    v14 = *(v6 + 64);
  }

  if (v13)
  {
    v15 = v14;
  }

  else
  {
    v15 = v14 + 1;
  }

  memcpy(v8, v9, v15);
LABEL_12:
  if (*(v6 + 84))
  {
    v16 = *(v6 + 64);
  }

  else
  {
    v16 = *(v6 + 64) + 1;
  }

  v17 = ((v8 + v16 + 7) & 0xFFFFFFFFFFFFFFF8);
  v18 = *v17;
  *v17 = *((v9 + v16 + 7) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

uint64_t getEnumTagSinglePayload for DynamicViewContainer.Value(unint64_t *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(swift_getAssociatedTypeWitness() - 8);
  v6 = v5;
  v7 = *(v5 + 84);
  if (v7)
  {
    v8 = v7 - 1;
  }

  else
  {
    v8 = 0;
  }

  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = v8;
  }

  v10 = *(v5 + 80);
  v11 = *(v5 + 64);
  v12 = 7;
  if (!v7)
  {
    v12 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  if (v9 >= a2)
  {
    goto LABEL_33;
  }

  v13 = ((v12 + v11 + ((v10 + 8) & ~v10)) & 0xFFFFFFFFFFFFFFF8) + 8;
  v14 = v13 & 0xFFFFFFF8;
  if ((v13 & 0xFFFFFFF8) != 0)
  {
    v15 = 2;
  }

  else
  {
    v15 = a2 - v9 + 1;
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
      v18 = *(a1 + v13);
      if (!v18)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v18 = *(a1 + v13);
      if (!v18)
      {
        goto LABEL_33;
      }
    }
  }

  else if (!v17 || (v18 = *(a1 + v13)) == 0)
  {
LABEL_33:
    if ((v8 & 0x80000000) != 0)
    {
      v22 = (*(v6 + 48))((a1 + v10 + 8) & ~v10);
      if (v22 >= 2)
      {
        return v22 - 1;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v21 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v21) = -1;
      }

      return (v21 + 1);
    }
  }

  v20 = v18 - 1;
  if (v14)
  {
    v20 = 0;
    LODWORD(v14) = *a1;
  }

  return v9 + (v14 | v20) + 1;
}