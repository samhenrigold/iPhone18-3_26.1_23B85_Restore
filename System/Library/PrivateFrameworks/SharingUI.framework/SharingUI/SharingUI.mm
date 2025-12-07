Class initNFHardwareManager()
{
  if (NearFieldLibrary_sOnce != -1)
  {
    initNFHardwareManager_cold_1();
  }

  result = objc_getClass("NFHardwareManager");
  classNFHardwareManager = result;
  getNFHardwareManagerClass = NFHardwareManagerFunction;
  return result;
}

void *__NearFieldLibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/NearField.framework/NearField", 2);
  NearFieldLibrary_sLib = result;
  return result;
}

id SFUILinkMetadataSerializationForLocalLowFidelityUseOnly(void *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [MEMORY[0x1E695DF70] array];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v10 + 1) + 8 * i) dataRepresentationForLocalLowFidelityUseOnly];
        [v2 addObject:v8];
      }

      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  return v2;
}

void sub_1B9E4DD48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void SFUILinkMetadataSerializationForLocalUseOnly(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = dispatch_get_global_queue(25, 0);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __SFUILinkMetadataSerializationForLocalUseOnly_block_invoke;
  v8[3] = &unk_1E7EE39E8;
  v9 = v3;
  v10 = v4;
  v6 = v4;
  v7 = v3;
  dispatch_async(v5, v8);
}

void __SFUILinkMetadataSerializationForLocalUseOnly_block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DF70] array];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v9 + 1) + 8 * v7) dataRepresentationForLocalUseOnly];
        [v2 addObject:v8];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  (*(*(a1 + 40) + 16))();
}

uint64_t sub_1B9E4E458()
{
  v4 = sub_1B9ED8FAC();
  v2 = *(v4 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v5 = (v3 + *(v2 + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v4);
  __swift_destroy_boxed_opaque_existential_1((v0 + v5));
  return swift_deallocObject();
}

uint64_t sub_1B9E4E6C4()
{
  v2 = *(sub_1B9ED8FAC() - 8);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
  return swift_deallocObject();
}

uint64_t sub_1B9E4E980()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1B9E4EC20()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1B9E4EC80()
{

  MEMORY[0x1E69E5920](*(v0 + 40));
  return swift_deallocObject();
}

uint64_t sub_1B9E4ECD0()
{

  MEMORY[0x1E69E5920](*(v0 + 40));
  return swift_deallocObject();
}

uint64_t sub_1B9E4F528()
{
  v2 = *(sub_1B9ED842C() - 8);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
  return swift_deallocObject();
}

uint64_t sub_1B9E4F70C()
{
  v2 = *(sub_1B9ED842C() - 8);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
  return swift_deallocObject();
}

uint64_t sub_1B9E50618()
{
  swift_unknownObjectRelease();
  MEMORY[0x1E69E5920](*(v0 + 32));

  return swift_deallocObject();
}

uint64_t sub_1B9E50678(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v9 = sub_1B9ED88CC();
  if (a2 == *(*(v9 - 8) + 84))
  {
    return (*(*(v9 - 8) + 48))(a1, a2, v9);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v4 = -1;
    if (*(a1 + *(a3 + 20) + 8) < 0x100000000uLL)
    {
      v4 = *(a1 + *(a3 + 20) + 8);
    }

    return (v4 + 1);
  }

  else
  {
    __break(1u);
  }

  return v5;
}

uint64_t sub_1B9E50794(uint64_t a1, unsigned int a2, int a3, uint64_t a4)
{
  result = sub_1B9ED88CC();
  if (a3 == *(*(result - 8) + 84))
  {
    return (*(*(result - 8) + 56))(a1, a2, a2, result);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 8) = a2 - 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B9E50888()
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE6498, &qword_1B9EDFA30);
  v3 = *(v5 - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);

  v1 = MEMORY[0x1E69E5920](*(v0 + 32));
  (*(v3 + 8))(v0 + v4, v5, v1);
  return swift_deallocObject();
}

uint64_t sub_1B9E5098C()
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE6498, &qword_1B9EDFA30) - 8);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));

  return swift_deallocObject();
}

uint64_t sub_1B9E50DFC()
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE6498, &qword_1B9EDFA30) - 8);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
  return swift_deallocObject();
}

uint64_t sub_1B9E50ED4()
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE6498, &qword_1B9EDFA30) - 8);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
  return swift_deallocObject();
}

uint64_t sub_1B9E50FAC()
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE64B8, &unk_1B9EDFA40) - 8);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
  return swift_deallocObject();
}

uint64_t sub_1B9E512F4(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBE64E0, &unk_1B9EDFAA0);
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

void sub_1B9E51D4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B9E547E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B9E54C1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

float32x4_t *CMOQuaternion::operator*@<X0>(float *a1@<X0>, float *a2@<X1>, float32x4_t *a3@<X8>, double a4@<D0>)
{
  v4 = a1[2];
  *&a4 = a1[3];
  v5 = a2[1];
  v6 = a1[1];
  v7 = a2[2];
  v8 = a2[3];
  v9 = (((v4 * v5) + (*&a4 * *a2)) - (v6 * v7)) + (*a1 * v8);
  v10 = (((*&a4 * v5) - (v4 * *a2)) + (*a1 * v7)) + (v6 * v8);
  v11 = (((v6 * *a2) - (*a1 * v5)) + (*&a4 * v7)) + (v4 * v8);
  v12 = (-(v6 * v5) - (*a1 * *a2)) - (v4 * v7);
  a3->f32[0] = v9;
  a3->f32[1] = v10;
  *&a4 = v12 + (*&a4 * v8);
  a3->f32[2] = v11;
  a3->i32[3] = LODWORD(a4);
  return CMOQuaternion::normalize(a3, a4);
}

float32x4_t *CMOQuaternion::conj@<X0>(float32x2_t *this@<X0>, float32x4_t *a2@<X8>, double a3@<D0>)
{
  v3 = this[1].i32[1];
  *&a3 = -this[1].f32[0];
  *a2->f32 = vneg_f32(*this);
  a2->i32[2] = LODWORD(a3);
  a2->i32[3] = v3;
  return CMOQuaternion::normalize(a2, a3);
}

float CMOQuaternion::roll(CMOQuaternion *this)
{
  v1 = *(this + 1);
  v2 = (*this * *(this + 2)) - (*(this + 3) * v1);
  return -atan2f(v2 + v2, (((v1 * v1) + (*this * *this)) * -2.0) + 1.0);
}

float CMOQuaternion::yaw(CMOQuaternion *this)
{
  v1 = *(this + 2);
  v2 = (*this * *(this + 1)) - (*(this + 3) * v1);
  return -atan2f(v2 + v2, (((v1 * v1) + (*this * *this)) * -2.0) + 1.0);
}

float CMOQuaternion::rotateVectorInPlace(float *a1, float *a2)
{
  v3 = a1[2];
  v2 = a1[3];
  v4 = v2 + v2;
  v5 = *a1;
  v6 = a1[1];
  v7 = v6 + v6;
  v8 = v2 * (v2 + v2);
  v9 = ((v6 + v6) * v6) + -1.0;
  v10 = ((v3 + v3) * v3) + -1.0;
  v11 = (v5 + v5) * v6;
  v12 = (v5 + v5) * v3;
  v13 = v2 * (v5 + v5);
  v14 = v7 * v3;
  v15 = v2 * v7;
  v16 = v4 * v3;
  v17 = a2[1];
  v18 = a2[2];
  v19 = (((v11 + v16) * v17) + ((v8 + (((v5 + v5) * v5) + -1.0)) * *a2)) + ((v12 - v15) * v18);
  v20 = (((v8 + v9) * v17) + ((v11 - v16) * *a2)) + ((v13 + v14) * v18);
  result = (((v14 - v13) * v17) + ((v12 + v15) * *a2)) + ((v8 + v10) * v18);
  *a2 = v19;
  a2[1] = v20;
  a2[2] = result;
  return result;
}

float CMOQuaternion::rotateVector(float *a1, float a2, float a3, float a4)
{
  v5[0] = a2;
  v5[1] = a3;
  v5[2] = a4;
  CMOQuaternion::rotateVectorInPlace(a1, v5);
  return v5[0];
}

float CMOQuaternion::rotateFrameInPlace(float *a1, float *a2)
{
  v3 = a1[2];
  v2 = a1[3];
  v4 = v2 + v2;
  v5 = *a1;
  v6 = a1[1];
  v7 = v6 + v6;
  v8 = v2 * (v2 + v2);
  v9 = ((v6 + v6) * v6) + -1.0;
  v10 = ((v3 + v3) * v3) + -1.0;
  v11 = (v5 + v5) * v6;
  v12 = (v5 + v5) * v3;
  v13 = v2 * (v5 + v5);
  v14 = v7 * v3;
  v15 = v2 * v7;
  v16 = v4 * v3;
  v17 = a2[1];
  v18 = a2[2];
  v19 = (((v11 - v16) * v17) + ((v8 + (((v5 + v5) * v5) + -1.0)) * *a2)) + ((v12 + v15) * v18);
  v20 = (((v8 + v9) * v17) + ((v11 + v16) * *a2)) + ((v14 - v13) * v18);
  result = (((v13 + v14) * v17) + ((v12 - v15) * *a2)) + ((v8 + v10) * v18);
  *a2 = v19;
  a2[1] = v20;
  a2[2] = result;
  return result;
}

float CMOQuaternion::rotateFrame(float *a1, float a2, float a3, float a4)
{
  v5[0] = a2;
  v5[1] = a3;
  v5[2] = a4;
  CMOQuaternion::rotateFrameInPlace(a1, v5);
  return v5[0];
}

void CMOQuaternion::angleAxis(float *a1, float *a2)
{
  v4 = 0;
  v5 = 0.0;
  do
  {
    v5 = v5 + (a2[v4] * a2[v4]);
    ++v4;
  }

  while (v4 != 3);
  v6 = sqrtf(v5);
  v7 = 0.5;
  v8 = v6 * 0.5;
  if ((v6 * 0.5) > 0.0)
  {
    v7 = (sinf(v6 * 0.5) / v8) * 0.5;
  }

  *a1 = v7 * *a2;
  a1[1] = v7 * a2[1];
  a1[2] = v7 * a2[2];
  a1[3] = cosf(v8);
}

float CMOQuaternion::angleAxis(CMOQuaternion *this)
{
  v1 = 0;
  v2 = *this;
  v3 = *(this + 1);
  v4 = *(this + 2);
  v9[0] = *this;
  v9[1] = v3;
  v9[2] = v4;
  v5 = 0.0;
  do
  {
    v5 = v5 + (*&v9[v1] * *&v9[v1]);
    ++v1;
  }

  while (v1 != 3);
  v6 = sqrtf(v5);
  if (v6 >= 0.00000011921)
  {
    v7 = atan2f(v6, *(this + 3));
    return v2 * ((v7 + v7) / v6);
  }

  return v2;
}

BOOL CMOQuaternion::northAndGravity(float *a1, float *a2, uint64_t a3, float a4, float a5, float a6, float a7, float a8, float a9, double a10, double a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, float a18)
{
  v157 = __PAIR64__(LODWORD(a5), LODWORD(a4));
  v158 = a6;
  v155 = __PAIR64__(LODWORD(a8), LODWORD(a7));
  v156 = a9;
  v153 = a17;
  v154 = a18;
  if ((atomic_load_explicit(byte_1EBBE6B78, memory_order_acquire) & 1) == 0)
  {
    CMOQuaternion::northAndGravity();
  }

  v21 = 0;
  v22 = 0.0;
  do
  {
    v22 = v22 + (*(&v157 + v21) * *(&v157 + v21));
    v21 += 4;
  }

  while (v21 != 12);
  if (sqrtf(v22) == 0.0)
  {
    return 0;
  }

  v23 = 0;
  v24 = 0.0;
  do
  {
    v24 = v24 + (*(&v155 + v23) * *(&v155 + v23));
    v23 += 4;
  }

  while (v23 != 12);
  if (sqrtf(v24) == 0.0)
  {
    return 0;
  }

  v25 = 0;
  *&v138 = v157;
  *(&v138 + 2) = v158;
  v26 = 0.0;
  do
  {
    v26 = v26 + (*(&v138 + v25) * *(&v138 + v25));
    v25 += 4;
  }

  while (v25 != 12);
  v27 = 0;
  v28 = sqrtf(v26);
  v29 = *&v157 / v28;
  v30 = *(&v157 + 1) / v28;
  v31 = v158 / v28;
  *&v157 = *&v157 / v28;
  *(&v157 + 1) = *(&v157 + 1) / v28;
  v158 = v158 / v28;
  v32 = *(&v155 + 1);
  v33 = v156;
  *&v138 = v155;
  *(&v138 + 2) = v156;
  v34 = 0.0;
  do
  {
    v34 = v34 + (*(&v138 + v27) * *(&v138 + v27));
    v27 += 4;
  }

  while (v27 != 12);
  v35 = 0;
  v36 = sqrtf(v34);
  v39 = v156 / v36;
  *&v155 = *&v155 / v36;
  v37 = *&v155;
  *(&v155 + 1) = *(&v155 + 1) / v36;
  v38 = *(&v155 + 1);
  v156 = v156 / v36;
  v40 = (v30 * (v33 / v36)) - (v31 * (v32 / v36));
  v41 = (v31 * *&v155) - (v29 * (v33 / v36));
  v42 = (v29 * *(&v155 + 1)) - (v30 * *&v155);
  v150 = v40;
  v151 = v41;
  v152 = v42;
  v43 = 0.0;
  do
  {
    v43 = v43 + (*(&v150 + v35) * *(&v150 + v35));
    v35 += 4;
  }

  while (v35 != 12);
  v44 = sqrtf(v43);
  if (v44 < *&_MergedGlobals)
  {
    return 0;
  }

  v46 = 0;
  v47 = v40 / v44;
  v48 = v41 / v44;
  v150 = v40 / v44;
  v151 = v41 / v44;
  v49 = v42 / v44;
  v152 = v49;
  v50 = *(&v153 + 1);
  v51 = v154;
  *&v138 = v153;
  *(&v138 + 2) = v154;
  v52 = 0.0;
  do
  {
    v52 = v52 + (*(&v138 + v46) * *(&v138 + v46));
    v46 += 4;
  }

  while (v46 != 12);
  v53 = 0;
  v54 = sqrtf(v52);
  *&v153 = *&v153 / v54;
  v55 = *&v153;
  *(&v153 + 1) = *(&v153 + 1) / v54;
  v56 = *(&v153 + 1);
  v154 = v154 / v54;
  v57 = v154;
  v148 = 0;
  v149 = -1082130432;
  v58 = ((v51 / v54) * -0.0) - (v50 / v54);
  v59 = 0.0;
  *&v138 = v58;
  *(&v138 + 1) = *&v153 + (v154 * 0.0);
  *(&v138 + 2) = (*(&v153 + 1) * -0.0) + (*&v153 * 0.0);
  do
  {
    v59 = v59 + (*(&v138 + v53) * *(&v138 + v53));
    v53 += 4;
  }

  while (v53 != 12);
  v60 = 0;
  v113 = -*&v153;
  v61 = sqrtf(v59);
  v147[0] = v58 / v61;
  v147[1] = (*&v153 + (v154 * 0.0)) / v61;
  v147[2] = ((*(&v153 + 1) * -0.0) + (*&v153 * 0.0)) / v61;
  v62 = (*(&v155 + 1) * v49) - (v39 * v48);
  v116 = -*&v155;
  v63 = (v39 * v47) - (*&v155 * v49);
  v64 = (*&v155 * v48) - (*(&v155 + 1) * v47);
  *&v138 = __PAIR64__(LODWORD(v63), LODWORD(v62));
  *(&v138 + 2) = v64;
  v65 = 0.0;
  do
  {
    v65 = v65 + (*(&v138 + v60) * *(&v138 + v60));
    v60 += 4;
  }

  while (v60 != 12);
  v66 = 0;
  v112 = -v154;
  v67 = sqrtf(v65);
  v68 = v62 / v67;
  v69 = v63 / v67;
  v70 = v64 / v67;
  *&v157 = v62 / v67;
  *(&v157 + 1) = v69;
  v158 = v64 / v67;
  v144 = 0u;
  v145 = 0u;
  v146 = 0;
  v71 = &v144;
  do
  {
    v72 = 0;
    v73 = *(&v157 + v66);
    v74 = v71;
    do
    {
      *v74 = v73 * *(&v153 + v72);
      v74 += 3;
      v72 += 4;
    }

    while (v72 != 12);
    ++v66;
    v71 = (v71 + 4);
  }

  while (v66 != 3);
  v75 = 0;
  v143 = 0;
  v141 = 0u;
  v142 = 0u;
  v76 = &v141;
  do
  {
    v77 = 0;
    v78 = *(&v155 + v75);
    v79 = v76;
    do
    {
      *v79 = v78 * *(&v148 + v77);
      v79 += 3;
      v77 += 4;
    }

    while (v77 != 12);
    ++v75;
    v76 = (v76 + 4);
  }

  while (v75 != 3);
  v114 = v55;
  v80 = 0;
  v140 = 0;
  v138 = 0u;
  v139 = 0u;
  v81 = &v138;
  do
  {
    v82 = 0;
    v83 = *(&v150 + v80);
    v84 = v81;
    do
    {
      *v84 = v83 * v147[v82];
      v84 += 3;
      ++v82;
    }

    while (v82 != 3);
    ++v80;
    v81 = (v81 + 4);
  }

  while (v80 != 3);
  v85 = *a1;
  v86 = ((a1[1] * a1[1]) + (v85 * v85)) + ((v85 + v85) * a1[1]);
  v136[0] = v138;
  v136[1] = v139;
  v137 = v140;
  v134[0] = v144;
  v134[1] = v145;
  v135 = v146;
  v122 = 0;
  v123 = v70;
  v124 = -v69;
  v115 = v86;
  v87 = sqrtf(v86);
  v125 = -v70;
  v126 = 0;
  v127 = v68;
  v128 = v69;
  v129 = -v68;
  v130 = 0;
  operator*<float,3ul,3ul,3ul>(&v122, &v138, v131);
  LODWORD(v119) = 0;
  *(&v119 + 1) = v57;
  *(&v119 + 2) = -v56;
  *(&v119 + 3) = v112;
  LODWORD(v120) = 0;
  *(&v120 + 4) = __PAIR64__(LODWORD(v56), LODWORD(v114));
  *(&v120 + 3) = v113;
  v121 = 0;
  operator*<float,3ul,3ul,3ul>(v131, &v119, v132);
  for (i = 0; i != 36; i += 4)
  {
    *(v134 + i) = *(v134 + i) - *(v132 + i);
  }

  v89 = 0;
  v90 = 1.0 / v87;
  do
  {
    *(v134 + v89) = (v85 * (1.0 / v87)) * *(v134 + v89);
    v89 += 4;
  }

  while (v89 != 36);
  for (j = 0; j != 36; j += 4)
  {
    *(v136 + j) = *(v134 + j) + *(v136 + j);
  }

  v92 = a1[1];
  v117[0] = v141;
  v117[1] = v142;
  v118 = v143;
  v122 = 0;
  v123 = v39;
  v124 = -v38;
  v125 = -v39;
  v126 = 0;
  v127 = v37;
  v128 = v38;
  v129 = v116;
  v130 = 0;
  operator*<float,3ul,3ul,3ul>(&v122, &v138, v131);
  v119 = xmmword_1B9EDE900;
  v120 = xmmword_1B9EDE910;
  v121 = 0;
  operator*<float,3ul,3ul,3ul>(v131, &v119, v132);
  for (k = 0; k != 36; k += 4)
  {
    *(v117 + k) = *(v117 + k) - *(v132 + k);
  }

  for (m = 0; m != 36; m += 4)
  {
    *(v117 + m) = (v90 * v92) * *(v117 + m);
  }

  for (n = 0; n != 36; n += 4)
  {
    *(v136 + n) = *(v117 + n) + *(v136 + n);
  }

  CMOQuaternion::rotationMatrix(a2, v136);
  v96 = 0;
  v97 = *a1;
  do
  {
    *(&v144 + v96) = v97 * *(&v144 + v96);
    v96 += 4;
  }

  while (v96 != 36);
  v98 = 0;
  v99 = a1[1];
  do
  {
    *(&v141 + v98) = v99 * *(&v141 + v98);
    v98 += 4;
  }

  while (v98 != 36);
  for (ii = 0; ii != 36; ii += 4)
  {
    *(&v144 + ii) = *(&v141 + ii) + *(&v144 + ii);
  }

  v101 = 0;
  v132[0] = v144;
  v132[1] = v145;
  v133 = v146;
  v102 = 0.0;
  do
  {
    v102 = v102 + (*(v132 + v101) * *(v132 + v101));
    v101 += 4;
  }

  while (v101 != 36);
  v103 = sqrtf(v102);
  v104 = (v115 - (v103 * v103)) * 0.5;
  result = v104 != 0.0;
  if (v104 != 0.0)
  {
    v105 = 0;
    v106 = v90 * (1.0 / v104);
    v107 = v132;
    do
    {
      v108 = 0;
      v109 = v132;
      do
      {
        v110 = 0;
        v111 = 0.0;
        do
        {
          v111 = v111 + (*(v107 + v110) * *(v109 + v110));
          v110 += 12;
        }

        while (v110 != 36);
        *(a3 + 4 * (3 * v108++ + v105)) = v106 * v111;
        v109 = (v109 + 4);
      }

      while (v108 != 3);
      *(a3 + 16 * v105) = v90 + *(a3 + 16 * v105);
      ++v105;
      v107 = (v107 + 4);
    }

    while (v105 != 3);
  }

  return result;
}

uint64_t operator*<float,3ul,3ul,3ul>@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = 0;
  *(a3 + 32) = 0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  v4 = (result + 12);
  do
  {
    v5 = 0;
    v6 = *(result + 4 * v3);
    v7 = a2 + 4;
    do
    {
      v8 = 0;
      v9 = v6 * *(a2 + 12 * v5);
      v10 = v4;
      do
      {
        v11 = *v10;
        v10 += 3;
        v9 = v9 + (v11 * *(v7 + v8));
        v8 += 4;
      }

      while (v8 != 8);
      *(a3 + 4 * (3 * v5++ + v3)) = v9;
      v7 += 12;
    }

    while (v5 != 3);
    ++v3;
    ++v4;
  }

  while (v3 != 3);
  return result;
}

float CMOQuaternion::rotationMatrix(float *a1, float *a2)
{
  v2 = *a2;
  v3 = a2[4];
  v4 = a2[8];
  v5 = (*a2 + v3) + v4;
  if (v5 <= 0.0)
  {
    if (v2 > v3)
    {
      v8 = v2 == v4;
      v9 = v2 < v4;
    }

    else
    {
      v8 = 1;
      v9 = 0;
    }

    if (v9 || v8)
    {
      if (v3 <= v4)
      {
        v14 = ((-v2 - v3) + v4) + 1.0;
        v15 = 0.5 / sqrtf(v14);
        a1[2] = v14 * v15;
        a1[3] = v15 * (a2[3] - a2[1]);
        *a1 = v15 * (a2[2] + a2[6]);
        result = v15 * (a2[7] + a2[5]);
        a1[1] = result;
      }

      else
      {
        v10 = ((v3 - v2) - v4) + 1.0;
        v11 = 0.5 / sqrtf(v10);
        a1[1] = v10 * v11;
        *a1 = v11 * (a2[3] + a2[1]);
        a1[3] = v11 * (a2[2] - a2[6]);
        result = v11 * (a2[7] + a2[5]);
        a1[2] = result;
      }
    }

    else
    {
      v12 = ((v2 - v3) - v4) + 1.0;
      v13 = 0.5 / sqrtf(v12);
      *a1 = v12 * v13;
      a1[1] = v13 * (a2[3] + a2[1]);
      a1[2] = v13 * (a2[2] + a2[6]);
      result = v13 * (a2[7] - a2[5]);
      a1[3] = result;
    }
  }

  else
  {
    v6 = 0.5 / sqrtf(v5 + 1.0);
    a1[3] = (v5 + 1.0) * v6;
    a1[2] = v6 * (a2[3] - a2[1]);
    a1[1] = v6 * (a2[2] - a2[6]);
    result = v6 * (a2[7] - a2[5]);
    *a1 = result;
  }

  return result;
}

float CMOQuaternion::rotationMatrix@<S0>(CMOQuaternion *this@<X0>, float *a2@<X8>)
{
  v3 = *(this + 2);
  v2 = *(this + 3);
  v4 = v2 + v2;
  v5 = *this;
  v6 = *(this + 1);
  v7 = v6 + v6;
  v8 = v2 * (v2 + v2);
  v9 = ((v6 + v6) * v6) + -1.0;
  v10 = ((v3 + v3) * v3) + -1.0;
  v11 = (v5 + v5) * v6;
  v12 = (v5 + v5) * v3;
  v13 = v2 * (v5 + v5);
  v14 = v7 * v3;
  v15 = v2 * v7;
  v16 = v4 * v3;
  v17 = v12 + v15;
  result = v12 - v15;
  *a2 = v8 + (((*this + *this) * *this) + -1.0);
  a2[1] = v11 - v16;
  a2[2] = v17;
  a2[3] = v11 + v16;
  a2[4] = v8 + v9;
  a2[5] = v14 - v13;
  a2[6] = result;
  a2[7] = v13 + v14;
  a2[8] = v8 + v10;
  return result;
}

float CMOQuaternion::rotationMatrixTranspose@<S0>(CMOQuaternion *this@<X0>, float *a2@<X8>)
{
  v3 = *(this + 2);
  v2 = *(this + 3);
  v4 = v2 + v2;
  v5 = *this;
  v6 = *(this + 1);
  v7 = v6 + v6;
  v8 = v2 * (v2 + v2);
  v9 = ((v6 + v6) * v6) + -1.0;
  v10 = ((v3 + v3) * v3) + -1.0;
  v11 = (v5 + v5) * v6;
  v12 = (v5 + v5) * v3;
  v13 = v2 * (v5 + v5);
  v14 = v7 * v3;
  v15 = v2 * v7;
  v16 = v4 * v3;
  v17 = v12 - v15;
  result = v12 + v15;
  *a2 = v8 + (((*this + *this) * *this) + -1.0);
  a2[1] = v11 + v16;
  a2[2] = v17;
  a2[3] = v11 - v16;
  a2[4] = v8 + v9;
  a2[5] = v13 + v14;
  a2[6] = result;
  a2[7] = v14 - v13;
  a2[8] = v8 + v10;
  return result;
}

float32x4_t *CMOQuaternion::normalize(float32x4_t *this, double a2)
{
  *&a2 = sqrtf((((this->f32[1] * this->f32[1]) + (this->f32[0] * this->f32[0])) + (this->f32[2] * this->f32[2])) + (this->f32[3] * this->f32[3]));
  if (fabsf(*&a2 + -1.0) >= 0.00000011921)
  {
    if (*&a2 == 0.0)
    {
      v2 = xmmword_1B9EDE920;
    }

    else
    {
      v2 = vdivq_f32(*this, vdupq_lane_s32(*&a2, 0));
    }

    *this = v2;
  }

  return this;
}

BOOL CMOQuaternion::inverted(CMOQuaternion *this)
{
  v1 = *(this + 2);
  v2 = *(this + 3);
  v3 = *(this + 1);
  v4 = ((v2 * v3) - (*this * v1)) + ((v2 * v3) - (*this * v1));
  v5 = -(v2 * *this) - (v3 * v1);
  return ((((v3 * v3) + (*this * *this)) * 2.0) + -1.0) > sqrtf(((v5 + v5) * (v5 + v5)) + (v4 * v4));
}

void CMOQuaternion::headingReference(CMOQuaternion *this)
{
  if ((atomic_load_explicit(byte_1EBBE6B80, memory_order_acquire) & 1) == 0)
  {
    v19 = this;
    CMOQuaternion::headingReference();
    this = v19;
  }

  v1 = 0;
  v2 = *(this + 2);
  v3 = *(this + 3);
  v4 = *(this + 1);
  v5 = ((v3 * v4) - (*this * v2)) + ((v3 * v4) - (*this * v2));
  v6 = -(v3 * *this) - (v4 * v2);
  v7 = v6 + v6;
  v8 = (((v4 * v4) + (*this * *this)) * 2.0) + -1.0;
  v9 = sqrtf((v7 * v7) + (v5 * v5));
  v10 = 1.0;
  if (v8 <= v9)
  {
    v10 = -1.0;
  }

  v23 = 0;
  v24 = 1065353216;
  v11 = v8 * v10;
  v12 = (v8 * -0.0) + (v7 * v10);
  v13 = -(v5 * v10);
  v14 = 0.0;
  v15 = v13 + (v8 * 0.0);
  v16 = (v7 * -0.0) + (v5 * 0.0);
  *v22 = v12;
  *&v22[1] = v15;
  *&v22[2] = v16;
  do
  {
    v14 = v14 + (*&v22[v1] * *&v22[v1]);
    ++v1;
  }

  while (v1 != 3);
  v17 = sqrtf(v14);
  if (v17 > *&dword_1EBBE6B74)
  {
    v21[0] = 0;
    v21[1] = 0;
    v18 = -atan2f(v9, v11) / v17;
    v20[0] = v12 * v18;
    v20[1] = v15 * v18;
    v20[2] = v16 * v18;
    CMOQuaternion::angleAxis(v21, v20);
    CMOQuaternion::rotateFrameInPlace(v21, &v23);
  }
}

float CMOQuaternion::heading(CMOQuaternion *this)
{
  CMOQuaternion::headingReference(this);
  v6 = v2;
  v7 = v3;
  v8 = v4;
  CMOQuaternion::rotateFrameInPlace(this, &v6);
    ;
  }

    ;
  }

  return result;
}

float *CMMath::wrap(float *this, float *a2)
{
  v2 = *this;
  if (*this < 0.0)
  {
    do
    {
      v2 = v2 + 360.0;
    }

    while (v2 < 0.0);
    *this = v2;
  }

  if (v2 >= 360.0)
  {
    do
    {
      v2 = v2 + -360.0;
    }

    while (v2 >= 360.0);
    *this = v2;
  }

  return this;
}

Class initAMSMediaTask()
{
  if (AppleMediaServicesLibrary_sOnce != -1)
  {
    initAMSMediaTask_cold_1();
  }

  result = objc_getClass("AMSMediaTask");
  classAMSMediaTask = result;
  getAMSMediaTaskClass = AMSMediaTaskFunction;
  return result;
}

void *__AppleMediaServicesLibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/AppleMediaServices.framework/AppleMediaServices", 2);
  AppleMediaServicesLibrary_sLib = result;
  return result;
}

Class initAMSBagKeySet()
{
  if (AppleMediaServicesLibrary_sOnce != -1)
  {
    initAMSMediaTask_cold_1();
  }

  result = objc_getClass("AMSBagKeySet");
  classAMSBagKeySet = result;
  getAMSBagKeySetClass = AMSBagKeySetFunction;
  return result;
}

Class initAMSBag()
{
  if (AppleMediaServicesLibrary_sOnce != -1)
  {
    initAMSMediaTask_cold_1();
  }

  result = objc_getClass("AMSBag");
  classAMSBag = result;
  getAMSBagClass = AMSBagFunction;
  return result;
}

Class initACAccountStore()
{
  if (AccountsLibrary_sOnce != -1)
  {
    initACAccountStore_cold_1();
  }

  result = objc_getClass("ACAccountStore");
  classACAccountStore = result;
  getACAccountStoreClass = ACAccountStoreFunction;
  return result;
}

void *__AccountsLibrary_block_invoke()
{
  result = dlopen("/System/Library/Frameworks/Accounts.framework/Accounts", 2);
  AccountsLibrary_sLib = result;
  return result;
}

id initValACAccountTypeIdentifieriTunesStore(uint64_t a1)
{
  if (softLinkOnceACAccountTypeIdentifieriTunesStore != -1)
  {
    initValACAccountTypeIdentifieriTunesStore_cold_1();
  }

  v2 = constantValACAccountTypeIdentifieriTunesStore;

  return v2;
}

void __initValACAccountTypeIdentifieriTunesStore_block_invoke()
{
  if (AccountsLibrary_sOnce != -1)
  {
    initACAccountStore_cold_1();
  }

  v0 = dlsym(AccountsLibrary_sLib, "ACAccountTypeIdentifieriTunesStore");
  if (v0)
  {
    objc_storeStrong(&constantValACAccountTypeIdentifieriTunesStore, *v0);
  }

  getACAccountTypeIdentifieriTunesStore = ACAccountTypeIdentifieriTunesStoreFunction;
}

Class initAMSMediaArtwork()
{
  if (AppleMediaServicesLibrary_sOnce != -1)
  {
    initAMSMediaTask_cold_1();
  }

  result = objc_getClass("AMSMediaArtwork");
  classAMSMediaArtwork = result;
  getAMSMediaArtworkClass = AMSMediaArtworkFunction;
  return result;
}

uint64_t initValAMSMediaArtworkCropStyleBoundedBox()
{
  if (AppleMediaServicesLibrary_sOnce != -1)
  {
    initAMSMediaTask_cold_1();
  }

  v0 = dlsym(AppleMediaServicesLibrary_sLib, "AMSMediaArtworkCropStyleBoundedBox");
  if (v0)
  {
    result = *v0;
    constantValAMSMediaArtworkCropStyleBoundedBox = result;
  }

  else
  {
    result = constantValAMSMediaArtworkCropStyleBoundedBox;
  }

  getAMSMediaArtworkCropStyleBoundedBox = AMSMediaArtworkCropStyleBoundedBoxFunction;
  return result;
}

uint64_t initValAMSMediaArtworkFormatPNG()
{
  if (AppleMediaServicesLibrary_sOnce != -1)
  {
    initAMSMediaTask_cold_1();
  }

  v0 = dlsym(AppleMediaServicesLibrary_sLib, "AMSMediaArtworkFormatPNG");
  if (v0)
  {
    result = *v0;
    constantValAMSMediaArtworkFormatPNG = result;
  }

  else
  {
    result = constantValAMSMediaArtworkFormatPNG;
  }

  getAMSMediaArtworkFormatPNG = AMSMediaArtworkFormatPNGFunction;
  return result;
}

Class initISIcon()
{
  if (IconServicesLibrary_sOnce != -1)
  {
    initISIcon_cold_1();
  }

  result = objc_getClass("ISIcon");
  classISIcon = result;
  getISIconClass = ISIconFunction;
  return result;
}

void *__IconServicesLibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/IconServices.framework/IconServices", 2);
  IconServicesLibrary_sLib = result;
  return result;
}

Class initISImageDescriptor()
{
  if (IconServicesLibrary_sOnce != -1)
  {
    initISIcon_cold_1();
  }

  result = objc_getClass("ISImageDescriptor");
  classISImageDescriptor = result;
  getISImageDescriptorClass = ISImageDescriptorFunction;
  return result;
}

void sub_1B9E5A540(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

void sub_1B9E5A5C4(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = SFAirDropMagicHeadViewController;
  [(_Unwind_Exception *)&a9 dealloc:a3];
  _Unwind_Resume(a1);
}

void sub_1B9E5A770(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v15 + 32));

  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B9E5D12C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, id a9)
{
  objc_destroyWeak((v11 + 32));

  objc_destroyWeak((v12 - 40));
  _Unwind_Resume(a1);
}

Class ___ZL23getCMMotionManagerClassv_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v7[0] = 0;
  if (!CoreMotionLibraryCore(char **)::frameworkLibrary)
  {
    v7[1] = MEMORY[0x1E69E9820];
    v7[2] = 3221225472;
    v7[3] = ___ZL21CoreMotionLibraryCorePPc_block_invoke;
    v7[4] = &__block_descriptor_40_e5_v8__0l;
    v7[5] = v7;
    v8 = xmmword_1E7EE3C28;
    v9 = 0;
    CoreMotionLibraryCore(char **)::frameworkLibrary = _sl_dlopen();
  }

  if (!CoreMotionLibraryCore(char **)::frameworkLibrary)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *CoreMotionLibrary()"];
    [v3 handleFailureInFunction:v4 file:@"SFAirDropMagicHeadViewController.m" lineNumber:21 description:{@"%s", v7[0]}];

    goto LABEL_10;
  }

  if (v7[0])
  {
    free(v7[0]);
  }

  result = objc_getClass("CMMotionManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getCMMotionManagerClass()_block_invoke"];
    [v5 handleFailureInFunction:v6 file:@"SFAirDropMagicHeadViewController.m" lineNumber:22 description:{@"Unable to find class %s", "CMMotionManager"}];

LABEL_10:
    __break(1u);
  }

  getCMMotionManagerClass(void)::softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t ___ZL21CoreMotionLibraryCorePPc_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  CoreMotionLibraryCore(char **)::frameworkLibrary = result;
  return result;
}

id SFAdjustmentFiltersForAssetTypeAndURL(int a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_new();
  v5 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfURL:v3 error:0];

  if (v5)
  {
    if (a1 == 1 || a1 == 2)
    {
      CFDictionaryGetTypeID();
      v6 = CFDictionaryGetTypedValue();
    }

    else
    {
      v6 = 0;
    }

    v26 = 0;
    CFDictionaryGetDouble();
    v8 = v7;
    v9 = objc_alloc(MEMORY[0x1E6979378]);
    v10 = [v9 initWithType:*MEMORY[0x1E6979880]];
    v18 = v8;
    v19 = *(MEMORY[0x1E6979280] + 4);
    v20 = *(MEMORY[0x1E6979280] + 20);
    v21 = v8;
    v22 = *(MEMORY[0x1E6979280] + 28);
    v23 = *(MEMORY[0x1E6979280] + 44);
    v24 = v8;
    *v25 = *(MEMORY[0x1E6979280] + 52);
    *&v25[12] = *(MEMORY[0x1E6979280] + 64);
    v11 = [MEMORY[0x1E696B098] valueWithCAColorMatrix:&v18];
    [v10 setValue:v11 forKey:@"inputColorMatrix"];

    [v4 addObject:v10];
    CFDictionaryGetDouble();
    if (!v26)
    {
      v13 = v12;
      v14 = objc_alloc(MEMORY[0x1E6979378]);
      v15 = [v14 initWithType:*MEMORY[0x1E6979818]];
      v16 = [MEMORY[0x1E696AD98] numberWithDouble:v13];
      [v15 setValue:v16 forKey:@"inputAmount"];

      [v4 addObject:v15];
    }
  }

  return v4;
}

id SFPlaybackTimeRangesFromFeaturesTimeURL(void *a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = objc_opt_new();
  [MEMORY[0x1E695DEC8] arrayWithContentsOfURL:v1 error:0];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v3 = v21 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v19;
LABEL_3:
    v7 = 0;
    while (1)
    {
      if (*v19 != v6)
      {
        objc_enumerationMutation(v3);
      }

      v17 = 0;
      CFDictionaryGetDouble();
      if (v17)
      {
        break;
      }

      v9 = v8;
      CFDictionaryGetDouble();
      if (v17)
      {
        break;
      }

      v11 = v10;
      memset(&v16, 0, sizeof(v16));
      CMTimeMakeWithSeconds(&v14.start, v9, 1000);
      CMTimeMakeWithSeconds(&duration, v11, 1000);
      CMTimeRangeMake(&v16, &v14.start, &duration);
      v14 = v16;
      v12 = [MEMORY[0x1E696B098] valueWithCMTimeRange:&v14];
      [v2 addObject:v12];

      if (v5 == ++v7)
      {
        v5 = [v3 countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v5)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  return v2;
}

void sub_1B9E61134(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, id a33)
{
  objc_destroyWeak((v33 + 40));
  objc_destroyWeak((v33 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a33);
  _Unwind_Resume(a1);
}

void sub_1B9E6404C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B9E64A34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

Class initLPLinkMetadataObserver()
{
  if (LinkPresentationLibrary_sOnce != -1)
  {
    initLPLinkMetadataObserver_cold_1();
  }

  result = objc_getClass("LPLinkMetadataObserver");
  classLPLinkMetadataObserver = result;
  getLPLinkMetadataObserverClass = LPLinkMetadataObserverFunction;
  return result;
}

void *__LinkPresentationLibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/LinkPresentation.framework/LinkPresentation", 2);
  LinkPresentationLibrary_sLib = result;
  return result;
}

id OUTLINED_FUNCTION_1_0(id a1)
{

  return a1;
}

__CFString *SFOperationEventToString(uint64_t a1)
{
  if ((a1 - 1) > 0xE)
  {
    return @"?";
  }

  else
  {
    return off_1E7EE3E90[a1 - 1];
  }
}

void sub_1B9E67104(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 200), 8);
  _Block_object_dispose((v1 - 152), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

Class initUMUserManager()
{
  if (UserManagementLibrary_sOnce != -1)
  {
    initUMUserManager_cold_1();
  }

  result = objc_getClass("UMUserManager");
  classUMUserManager = result;
  getUMUserManagerClass = UMUserManagerFunction;
  return result;
}

void *__UserManagementLibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/UserManagement.framework/UserManagement", 2);
  UserManagementLibrary_sLib = result;
  return result;
}

void sub_1B9E678A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id location)
{
  objc_destroyWeak((v24 + 32));
  objc_destroyWeak((v26 + 32));
  objc_destroyWeak((v25 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B9E6CE00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1B9E71F94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B9E721F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B9E72434(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B9E72A90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getPLPhotoLibraryClass_block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!PhotoLibraryServicesLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __PhotoLibraryServicesLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E7EE4268;
    v5 = 0;
    PhotoLibraryServicesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!PhotoLibraryServicesLibraryCore_frameworkLibrary)
  {
    __getPLPhotoLibraryClass_block_invoke_cold_2(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("PLPhotoLibrary");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getPLPhotoLibraryClass_block_invoke_cold_1();
  }

  getPLPhotoLibraryClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __PhotoLibraryServicesLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  PhotoLibraryServicesLibraryCore_frameworkLibrary = result;
  return result;
}

uint64_t cnBackgroundStyleFromSFBackgroundStyle(uint64_t a1)
{
  if ((a1 - 2) >= 3)
  {
    return 0;
  }

  else
  {
    return a1 - 1;
  }
}

void sub_1B9E75F2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, ...)
{
  va_start(va, a34);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B9E7675C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0_2(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, va, 2u);
}

id getCachedPreferredItemSizesByString()
{
  v0 = __cachedPreferredItemSizesByString;
  if (!__cachedPreferredItemSizesByString)
  {
    v1 = objc_alloc_init(MEMORY[0x1E695DEE0]);
    v2 = __cachedPreferredItemSizesByString;
    __cachedPreferredItemSizesByString = v1;

    v0 = __cachedPreferredItemSizesByString;
  }

  return v0;
}

id createNameLabel(void *a1)
{
  v1 = MEMORY[0x1E69DCC10];
  v2 = a1;
  v3 = objc_alloc_init(v1);
  v4 = [MEMORY[0x1E69DC938] currentDevice];
  v5 = [v4 userInterfaceIdiom];

  if (v5 == 6)
  {
    [MEMORY[0x1E69DC888] systemWhiteColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] labelColor];
  }
  v6 = ;
  [v3 setTextColor:v6];

  v7 = [v3 _screen];
  v8 = _SFPersonLabelFont();
  [v3 setFont:v8];

  v9 = [MEMORY[0x1E69DC888] clearColor];
  [v3 setBackgroundColor:v9];

  v10 = UIContentSizeCategoryCompareToCategory(*MEMORY[0x1E69DDC58], v2);
  if (v10 == NSOrderedAscending)
  {
    v11 = 4;
  }

  else
  {
    v11 = 1;
  }

  [v3 setTextAlignment:v11];
  [v3 setNumberOfLines:2];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];

  return v3;
}

double getChickletSize()
{
  v0 = [MEMORY[0x1E69CD9E8] _activityImageForActionRepresentationImage:0];
  [v0 size];
  v2 = v1;

  return v2;
}

void sub_1B9E79AD0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 128));
  _Unwind_Resume(a1);
}

id _SFPersonLabelFont()
{
  v0 = [MEMORY[0x1E69DC938] currentDevice];
  v1 = [v0 userInterfaceIdiom];

  if (v1 == 6)
  {
    v2 = [MEMORY[0x1E69DB878] _preferredFontForTextStyle:*MEMORY[0x1E69DDD28] weight:*MEMORY[0x1E69DB970]];
  }

  else
  {
    v3 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:*MEMORY[0x1E69DDD10]];
    v2 = [MEMORY[0x1E69DB878] fontWithDescriptor:v3 size:0.0];
  }

  return v2;
}

uint64_t _SFPersonCollectionViewMaximumSizeCategory(void *a1)
{
  v1 = a1;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___SFPersonCollectionViewMaximumSizeCategory_block_invoke;
  block[3] = &unk_1E7EE3720;
  v8 = v1;
  v2 = _SFPersonCollectionViewMaximumSizeCategory_onceToken;
  v3 = v1;
  if (v2 != -1)
  {
    dispatch_once(&_SFPersonCollectionViewMaximumSizeCategory_onceToken, block);
  }

  v4 = _SFPersonCollectionViewMaximumSizeCategory_maxCategory;
  v5 = _SFPersonCollectionViewMaximumSizeCategory_maxCategory;

  return v4;
}

void OUTLINED_FUNCTION_3(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, v8, OS_LOG_TYPE_DEBUG, a4, va, 0xCu);
}

void sub_1B9E7DC78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B9E7E114(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id SFFontForTextStyleWithAdditionalSymbolicTraitsOfSize(void *a1, int a2, double a3)
{
  v5 = MEMORY[0x1E69DD1B8];
  v6 = *MEMORY[0x1E69DDC78];
  v7 = a1;
  v8 = [v5 traitCollectionWithPreferredContentSizeCategory:v6];
  v9 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:v7 compatibleWithTraitCollection:v8];

  v10 = [v9 fontDescriptorWithSymbolicTraits:{objc_msgSend(v9, "symbolicTraits") | a2}];

  v11 = [MEMORY[0x1E69DB878] fontWithDescriptor:v10 size:a3];

  return v11;
}

id SFVisualEffectViewWrapperForView(void *a1, void *a2)
{
  v23[4] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E69DD298];
  v4 = a2;
  v5 = a1;
  v6 = [[v3 alloc] initWithEffect:v4];

  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  v7 = [v6 contentView];
  [v7 addSubview:v5];

  v18 = MEMORY[0x1E696ACD8];
  v22 = [v6 leftAnchor];
  v21 = [v5 leftAnchor];
  v20 = [v22 constraintEqualToAnchor:v21];
  v23[0] = v20;
  v19 = [v6 topAnchor];
  v8 = [v5 topAnchor];
  v9 = [v19 constraintEqualToAnchor:v8];
  v23[1] = v9;
  v10 = [v6 rightAnchor];
  v11 = [v5 rightAnchor];
  v12 = [v10 constraintEqualToAnchor:v11];
  v23[2] = v12;
  v13 = [v6 bottomAnchor];
  v14 = [v5 bottomAnchor];

  v15 = [v13 constraintEqualToAnchor:v14];
  v23[3] = v15;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:4];
  [v18 activateConstraints:v16];

  return v6;
}

id SFImageStackFromImages(void *a1, CGFloat a2)
{
  v3 = a1;
  v4 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v4 scale];
  v6 = v5;

  v7 = [v3 count];
  v8 = v7;
  if (v7 >= 3)
  {
    v9 = 3;
  }

  else
  {
    v9 = v7;
  }

  v10 = a2 - (5 * v9);
  v11 = 2;
  if (v9 > 2)
  {
    v11 = v9;
  }

  v12 = [objc_alloc(getPUStackViewClass()) initWithFrame:{0.0, 15.0, v10, (5 * v11 - 10) + a2}];
  v13 = [v12 setStyle:0];
  v14 = objc_alloc_init(getPUPhotoDecorationClass(v13));
  v15 = [MEMORY[0x1E69DC888] whiteColor];
  [v14 setBorderColor:v15];

  [v14 setBorderWidth:1.0 / v6];
  v16 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:0.0];
  [v14 setForegroundColor:v16];

  [v12 setPhotoDecoration:v14];
  [v12 setStackSize:{v10 + 1.0 / v6 * -2.0, v10 + 1.0 / v6 * -2.0}];
  [v12 setStackPerspectiveOffset:{0.0, -10.0}];
  [v12 setStackPerspectiveInsets:{5.0, 5.0, 5.0, 5.0}];
  [v12 setNumberOfVisibleItems:v9];
  if (v8)
  {
    v17 = 0;
    do
    {
      v18 = [v3 objectAtIndexedSubscript:v17];
      [v12 setImage:v18 forItemAtIndex:v17];
      [v18 size];
      [v12 setImageSize:v17 forItemAtIndex:?];

      ++v17;
    }

    while (v9 != v17);
  }

  v23.width = a2 - (5 * v9);
  v23.height = a2;
  UIGraphicsBeginImageContextWithOptions(v23, 0, v6);
  v19 = [v12 layer];
  [v19 renderInContext:UIGraphicsGetCurrentContext()];

  v20 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v20;
}

id SFScaleAndRotateImage(void *a1, double a2)
{
  v3 = a1;
  v4 = [v3 imageOrientation];
  v5 = [v3 CGImage];
  Width = CGImageGetWidth(v5);
  Height = CGImageGetHeight(v5);
  v8 = Height;
  v9 = Width <= a2 && v8 <= a2;
  v10 = Height;
  v11 = Width;
  if (!v9)
  {
    v12 = Width / v8;
    v13 = 0;
    v14 = 0;
    if (Width / v8 <= 1.0)
    {
      v17 = Width;
      v18 = a2;
      v11 = v12 * CGRectGetHeight(*&v13);
      v10 = a2;
    }

    else
    {
      v15 = a2;
      v16 = Height;
      v11 = a2;
      v10 = CGRectGetWidth(*&v13) / v12;
    }
  }

  v43.origin.x = 0.0;
  v43.origin.y = 0.0;
  v43.size.width = v11;
  v43.size.height = v10;
  v19 = CGRectGetWidth(v43) / Width;
  v36 = *(MEMORY[0x1E695EFD0] + 16);
  v37 = *MEMORY[0x1E695EFD0];
  *&v40.a = *MEMORY[0x1E695EFD0];
  *&v40.c = v36;
  v35 = *(MEMORY[0x1E695EFD0] + 32);
  *&v40.tx = v35;
  v44.origin.x = 0.0;
  v44.origin.y = 0.0;
  v44.size.width = v11;
  v44.size.height = v10;
  v20 = CGRectGetHeight(v44);
  if (v4 > 3)
  {
    if (v4 <= 5)
    {
      if (v4 == 4)
      {
        CGAffineTransformMakeTranslation(&v40, Width, 0.0);
        v38 = v40;
        v21 = -1.0;
        v22 = 1.0;
      }

      else
      {
        CGAffineTransformMakeTranslation(&v40, 0.0, v8);
        v38 = v40;
        v21 = 1.0;
        v22 = -1.0;
      }

      CGAffineTransformScale(&transform, &v38, v21, v22);
      goto LABEL_24;
    }

    if (v4 != 6)
    {
      if (v4 == 7)
      {
        v46.origin.x = 0.0;
        v46.origin.y = 0.0;
        v46.size.width = v11;
        v46.size.height = v10;
        v10 = CGRectGetWidth(v46);
        CGAffineTransformMakeScale(&v40, -1.0, 1.0);
        goto LABEL_19;
      }

LABEL_21:
      *&v40.a = v37;
      *&v40.c = v36;
      v24 = v35;
LABEL_25:
      *&v40.tx = v24;
      goto LABEL_30;
    }

    v47.origin.x = 0.0;
    v47.origin.y = 0.0;
    v47.size.width = v11;
    v47.size.height = v10;
    v10 = CGRectGetWidth(v47);
    CGAffineTransformMakeTranslation(&v40, v8, Width);
    v38 = v40;
    CGAffineTransformScale(&transform, &v38, -1.0, 1.0);
    v25 = *&transform.tx;
    v40 = transform;
    *&v38.a = *&transform.a;
    *&v38.c = *&transform.c;
LABEL_28:
    *&v38.tx = v25;
    v23 = 4.71238898;
    goto LABEL_29;
  }

  if (v4 == 1)
  {
    CGAffineTransformMakeTranslation(&v40, Width, v8);
    v38 = v40;
    CGAffineTransformRotate(&transform, &v38, 3.14159265);
LABEL_24:
    *&v40.a = *&transform.a;
    *&v40.c = *&transform.c;
    v24 = *&transform.tx;
    goto LABEL_25;
  }

  if (v4 == 2)
  {
    v48.origin.x = 0.0;
    v48.origin.y = 0.0;
    v48.size.width = v11;
    v48.size.height = v10;
    v10 = CGRectGetWidth(v48);
    CGAffineTransformMakeTranslation(&v40, 0.0, Width);
    *&v38.a = *&v40.a;
    *&v38.c = *&v40.c;
    v25 = *&v40.tx;
    goto LABEL_28;
  }

  if (v4 != 3)
  {
    goto LABEL_21;
  }

  v45.origin.x = 0.0;
  v45.origin.y = 0.0;
  v45.size.width = v11;
  v45.size.height = v10;
  v10 = CGRectGetWidth(v45);
  CGAffineTransformMakeTranslation(&v40, v8, 0.0);
LABEL_19:
  v38 = v40;
  v23 = 1.57079633;
LABEL_29:
  CGAffineTransformRotate(&transform, &v38, v23);
  v40 = transform;
  v11 = v20;
LABEL_30:
  if (v19 == 1.0 && (transform = v40, CGAffineTransformIsIdentity(&transform)) || (v11 == *MEMORY[0x1E695F060] ? (v26 = v10 == *(MEMORY[0x1E695F060] + 8)) : (v26 = 0), v26))
  {
    v32 = v3;
  }

  else
  {
    v42.width = v11;
    v42.height = v10;
    UIGraphicsBeginImageContext(v42);
    CurrentContext = UIGraphicsGetCurrentContext();
    v28 = CurrentContext;
    if ((v4 & 0xFFFFFFFFFFFFFFFELL) == 2)
    {
      CGContextScaleCTM(CurrentContext, -v19, v19);
      v29 = 0.0;
      v30 = v28;
      v31 = -v8;
    }

    else
    {
      CGContextScaleCTM(CurrentContext, v19, -v19);
      v31 = 0.0;
      v30 = v28;
      v29 = -v8;
    }

    CGContextTranslateCTM(v30, v31, v29);
    transform = v40;
    CGContextConcatCTM(v28, &transform);
    v33 = UIGraphicsGetCurrentContext();
    v49.origin.x = 0.0;
    v49.origin.y = 0.0;
    v49.size.width = Width;
    v49.size.height = v8;
    CGContextDrawImage(v33, v49, v5);
    v32 = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
  }

  return v32;
}

double SFRoundToScreen(double a1)
{
  v2 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v2 scale];
  v4 = round(v3 * a1);
  v5 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v5 scale];
  v7 = v4 / v6;

  return v7;
}

id activityImageForCurrentTraitCollectionWithName(void *a1)
{
  v15[2] = *MEMORY[0x1E69E9840];
  v1 = MEMORY[0x1E69DCAB8];
  v2 = MEMORY[0x1E696AAE8];
  v3 = a1;
  v4 = [v2 bundleWithIdentifier:@"com.apple.Sharing"];
  v5 = MEMORY[0x1E69DD1B8];
  v6 = [MEMORY[0x1E69DCEB0] mainScreen];
  v7 = [v6 traitCollection];
  v15[0] = v7;
  v8 = MEMORY[0x1E69DD1B8];
  v9 = [MEMORY[0x1E69DC938] currentDevice];
  v10 = [v8 traitCollectionWithUserInterfaceIdiom:{objc_msgSend(v9, "userInterfaceIdiom")}];
  v15[1] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:2];
  v12 = [v5 traitCollectionWithTraitsFromCollections:v11];
  v13 = [v1 imageNamed:v3 inBundle:v4 compatibleWithTraitCollection:v12];

  return v13;
}

id SFDeviceImageFromDeviceModel(CGFloat a1, CGFloat a2)
{
  v4 = SFAirDropModelImageNameFromModelString();
  v5 = SFDeviceImageFromImageName(v4, a1, a2);

  return v5;
}

id SFDeviceImageFromImageName(void *a1, CGFloat a2, CGFloat a3)
{
  v5 = MEMORY[0x1E69DCAB8];
  v6 = MEMORY[0x1E696AAE8];
  v7 = a1;
  v8 = [v6 bundleForClass:objc_opt_class()];
  v9 = [v5 imageNamed:v7 inBundle:v8];

  [v9 size];
  [v9 scale];
  UIRectCenteredAboutPointScale();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v18 scale];
  v20 = v19;
  v29.width = a2;
  v29.height = a3;
  UIGraphicsBeginImageContextWithOptions(v29, 0, v20);

  CurrentContext = UIGraphicsGetCurrentContext();
  v27.b = 0.0;
  v27.c = 0.0;
  v27.a = 1.0;
  *&v27.d = xmmword_1B9EDEB60;
  v27.ty = a3;
  CGContextConcatCTM(CurrentContext, &v27);
  v22 = [MEMORY[0x1E69DC888] whiteColor];
  Components = CGColorGetComponents([v22 CGColor]);
  CGContextSetFillColor(CurrentContext, Components);

  v30.origin.x = 0.0;
  v30.origin.y = 0.0;
  v30.size.width = a2;
  v30.size.height = a3;
  CGContextFillEllipseInRect(CurrentContext, v30);
  v24 = [v9 CGImage];
  v31.origin.x = v11;
  v31.origin.y = v13;
  v31.size.width = v15;
  v31.size.height = v17;
  CGContextDrawImage(CurrentContext, v31, v24);
  v25 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v25;
}

double SFMathClampedMap(double a1, double a2, double a3, double a4, double a5)
{
  result = a4 + (a5 - a4) * ((a1 - a2) / (a3 - a2));
  if (result >= a5)
  {
    result = a5;
  }

  if (result < a4)
  {
    return a4;
  }

  return result;
}

double SFMathClamp(double result, double a2, double a3)
{
  if (result >= a3)
  {
    result = a3;
  }

  if (result < a2)
  {
    return a2;
  }

  return result;
}

double SFMathClampedProgress(double a1, double a2, double a3)
{
  result = fmin((a1 - a2) / (a3 - a2) + 0.0, 1.0);
  if (result < 0.0)
  {
    return 0.0;
  }

  return result;
}

double SFMathAddToValueWithRubberbanding(double a1, double a2, double a3, double a4, double a5, double a6)
{
  v6 = -a5;
  if (a1 >= a3)
  {
    v7 = a6;
  }

  else
  {
    v7 = v6;
  }

  if (a3 >= a1)
  {
    v8 = a3;
  }

  else
  {
    v8 = a1;
  }

  if (v8 > a4)
  {
    v8 = a4;
  }

  if (v7 != 0.0)
  {
    v8 = v8 + (-1.0 / ((a1 - v8) / v7 + -1.0) + -1.0) / 0.55 * v7;
  }

  v9 = v8 + a2;
  if (v9 >= a3)
  {
    v10 = a6;
  }

  else
  {
    v10 = v6;
  }

  if (v9 <= a3)
  {
    result = a3;
  }

  else
  {
    result = v9;
  }

  if (result > a4)
  {
    result = a4;
  }

  if (v10 != 0.0)
  {
    return result + (1.0 - 1.0 / ((v9 - result) / v10 * 0.55 + 1.0)) * v10;
  }

  return result;
}

double SFMathUnrubberband(double result, double a2, double a3, double a4, double a5)
{
  v5 = result;
  if (result >= a2)
  {
    v6 = a5;
  }

  else
  {
    v6 = -a4;
  }

  if (a2 >= result)
  {
    result = a2;
  }

  if (result > a3)
  {
    result = a3;
  }

  if (v6 != 0.0)
  {
    return result + (-1.0 / ((v5 - result) / v6 + -1.0) + -1.0) / 0.55 * v6;
  }

  return result;
}

double SFMathRubberband(double result, double a2, double a3, double a4, double a5)
{
  v5 = result;
  if (result >= a2)
  {
    v6 = a5;
  }

  else
  {
    v6 = -a4;
  }

  if (a2 >= result)
  {
    result = a2;
  }

  if (result > a3)
  {
    result = a3;
  }

  if (v6 != 0.0)
  {
    return result + (1.0 - 1.0 / ((v5 - result) / v6 * 0.55 + 1.0)) * v6;
  }

  return result;
}

double SFSpringConvertMassStiffnessDampingToDampingRatioResponse(double *a1, double *a2, double result, double a4, double a5)
{
  if (a1)
  {
    v5 = sqrt(result * a4);
    *a1 = a5 / (v5 + v5);
  }

  if (a2)
  {
    result = 6.28318531 / sqrt(a4 / result);
    *a2 = result;
  }

  return result;
}

double SFSpringConvertDampingRatioResponseToStiffnessDamping(double *a1, double *a2, double result, double a4)
{
  v4 = 6.28318531 / a4 * (6.28318531 / a4);
  if (a1)
  {
    *a1 = v4;
  }

  if (a2)
  {
    v5 = sqrt(v4);
    result = (v5 + v5) * result;
    *a2 = result;
  }

  return result;
}

double SFSpringConvertStiffnessDampingToDampingRatioResponse(double *a1, double *a2, double a3, double a4)
{
  result = sqrt(a3);
  if (a1)
  {
    *a1 = a4 / (result + result);
  }

  if (a2)
  {
    result = 6.28318531 / result;
    *a2 = result;
  }

  return result;
}

double SFSpringConvertMassStiffnessDampingToStiffnessDamping(double *a1, double *a2, double result, double a4, double a5)
{
  v5 = sqrt(a4 / result);
  v6 = 6.28318531 / (6.28318531 / v5) * (6.28318531 / (6.28318531 / v5));
  if (a1)
  {
    *a1 = v6;
  }

  if (a2)
  {
    v7 = sqrt(result * a4);
    v8 = sqrt(v6);
    result = a5 / (v7 + v7) * (v8 + v8);
    *a2 = result;
  }

  return result;
}

double SFScreenScale()
{
  v0 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v0 scale];
  v2 = v1;

  return v2;
}

CGImageSource *SFCreateThumbnailImage(void *a1, double a2, double a3, double a4)
{
  v20[1] = *MEMORY[0x1E69E9840];
  v19 = *MEMORY[0x1E696E0A8];
  v20[0] = MEMORY[0x1E695E110];
  v7 = MEMORY[0x1E695DF20];
  v8 = a1;
  v9 = [v7 dictionaryWithObjects:v20 forKeys:&v19 count:1];
  v10 = CGImageSourceCreateWithURL(v8, v9);

  if (v10)
  {
    if (a2 >= a3)
    {
      v11 = a2;
    }

    else
    {
      v11 = a3;
    }

    v12 = *MEMORY[0x1E696E0B8];
    v17[0] = *MEMORY[0x1E696DFE8];
    v17[1] = v12;
    v18[0] = MEMORY[0x1E695E118];
    v18[1] = MEMORY[0x1E695E118];
    v18[2] = MEMORY[0x1E695E118];
    v13 = *MEMORY[0x1E696E100];
    v17[2] = *MEMORY[0x1E696E000];
    v17[3] = v13;
    v14 = [MEMORY[0x1E696AD98] numberWithDouble:v11 * a4];
    v18[3] = v14;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:4];

    v10 = [MEMORY[0x1E69DCAB8] imageWithCGImage:{CGImageSourceCreateThumbnailAtIndex(v10, 0, v15)}];
  }

  return v10;
}

void SFGenerateWebPreviewImage(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (v3)
  {
    if (![v3 isFileURL])
    {
      v7 = objc_alloc_init(getLPMetadataProviderClass());
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __SFGenerateWebPreviewImage_block_invoke;
      v8[3] = &unk_1E7EE44A0;
      v9 = v3;
      v10 = v4;
      [v7 startFetchingMetadataForURL:v9 completionHandler:v8];

      goto LABEL_10;
    }

    v5 = sharing_ui_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v6 = "Unable to generate web preview for fileURL";
LABEL_7:
      _os_log_impl(&dword_1B9E4B000, v5, OS_LOG_TYPE_DEFAULT, v6, buf, 2u);
    }
  }

  else
  {
    v5 = sharing_ui_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v6 = "Unable to generate web preview for nil URL";
      goto LABEL_7;
    }
  }

  (*(v4 + 2))(v4, 0);
LABEL_10:
}

void __SFGenerateWebPreviewImage_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    v8 = sharing_ui_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 32);
      *buf = 138412546;
      v14 = v9;
      v15 = 2112;
      v16 = v7;
      _os_log_impl(&dword_1B9E4B000, v8, OS_LOG_TYPE_DEFAULT, "Unable to fetch metadata for URL %@: %@", buf, 0x16u);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __SFGenerateWebPreviewImage_block_invoke_14;
    v10[3] = &unk_1E7EE4478;
    v11 = v5;
    v12 = *(a1 + 40);
    [v11 _loadAsynchronousFieldsWithUpdateHandler:v10];
  }
}

void __SFGenerateWebPreviewImage_block_invoke_14(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = [*(a1 + 32) image];
    v4 = [v3 platformImage];
    v5 = v4;
    if (v4)
    {
      v7 = v4;
    }

    else
    {
      v6 = [*(a1 + 32) icon];
      v7 = [v6 platformImage];
    }

    (*(*(a1 + 40) + 16))();
  }
}

Class initPUStackView()
{
  if (PhotosUIPrivateLibrary_sOnce != -1)
  {
    initPUStackView_cold_1();
  }

  result = objc_getClass("PUStackView");
  classPUStackView = result;
  getPUStackViewClass = PUStackViewFunction;
  return result;
}

void *__PhotosUIPrivateLibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/PhotosUIPrivate.framework/PhotosUIPrivate", 2);
  PhotosUIPrivateLibrary_sLib = result;
  return result;
}

Class initPUPhotoDecoration()
{
  if (PhotosUIPrivateLibrary_sOnce != -1)
  {
    initPUStackView_cold_1();
  }

  result = objc_getClass("PUPhotoDecoration");
  classPUPhotoDecoration = result;
  getPUPhotoDecorationClass = PUPhotoDecorationFunction;
  return result;
}

Class initLPMetadataProvider()
{
  if (LinkPresentationLibrary_sOnce_0 != -1)
  {
    initLPMetadataProvider_cold_1();
  }

  result = objc_getClass("LPMetadataProvider");
  classLPMetadataProvider = result;
  getLPMetadataProviderClass = LPMetadataProviderFunction;
  return result;
}

void *__LinkPresentationLibrary_block_invoke_0()
{
  result = dlopen("/System/Library/PrivateFrameworks/LinkPresentation.framework/LinkPresentation", 2);
  LinkPresentationLibrary_sLib_0 = result;
  return result;
}

void sub_1B9E800D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

double avatarImageScale()
{
  v0 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v0 scale];
  v2 = v1;

  return v2;
}

void sub_1B9E82800(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void OUTLINED_FUNCTION_0_4(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, va, 0xCu);
}

Class initMTMaterialView()
{
  if (MaterialKitLibrary_sOnce != -1)
  {
    initMTMaterialView_cold_1();
  }

  result = objc_getClass("MTMaterialView");
  classMTMaterialView = result;
  getMTMaterialViewClass = MTMaterialViewFunction;
  return result;
}

void *__MaterialKitLibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/MaterialKit.framework/MaterialKit", 2);
  MaterialKitLibrary_sLib = result;
  return result;
}

uint64_t IntentsLibraryCore(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v1 = IntentsLibraryCore_frameworkLibrary;
  v6 = IntentsLibraryCore_frameworkLibrary;
  if (!IntentsLibraryCore_frameworkLibrary)
  {
    v7 = xmmword_1E7EE4640;
    v8 = *off_1E7EE4650;
    v9 = 0;
    v4[3] = _sl_dlopen();
    IntentsLibraryCore_frameworkLibrary = v4[3];
    v1 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v1;
}

void sub_1B9E89640(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __IntentsLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  *(*(*(a1 + 32) + 8) + 24) = result;
  IntentsLibraryCore_frameworkLibrary = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t IntentsLibrary()
{
  v3 = 0;
  v0 = IntentsLibraryCore(&v3);
  if (!v0)
  {
    IntentsLibrary_cold_1(&v3);
  }

  v1 = v0;
  if (v3)
  {
    free(v3);
  }

  return v1;
}

id getINImageClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getINImageClass_softClass;
  v7 = getINImageClass_softClass;
  if (!getINImageClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getINImageClass_block_invoke;
    v3[3] = &unk_1E7EE4248;
    v3[4] = &v4;
    __getINImageClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1B9E8980C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getINImageClass_block_invoke(uint64_t a1)
{
  IntentsLibrary();
  result = objc_getClass("INImage");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getINImageClass_block_invoke_cold_1();
  }

  getINImageClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id getINImageServiceConnectionClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getINImageServiceConnectionClass_softClass;
  v7 = getINImageServiceConnectionClass_softClass;
  if (!getINImageServiceConnectionClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getINImageServiceConnectionClass_block_invoke;
    v3[3] = &unk_1E7EE4248;
    v3[4] = &v4;
    __getINImageServiceConnectionClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1B9E89944(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getINImageServiceConnectionClass_block_invoke(uint64_t a1)
{
  IntentsLibrary();
  result = objc_getClass("INImageServiceConnection");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getINImageServiceConnectionClass_block_invoke_cold_1();
  }

  getINImageServiceConnectionClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t getINImageDefaultScaledSizeSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getINImageDefaultScaledSizeSymbolLoc_ptr;
  v6 = getINImageDefaultScaledSizeSymbolLoc_ptr;
  if (!getINImageDefaultScaledSizeSymbolLoc_ptr)
  {
    v1 = IntentsLibrary();
    v4[3] = dlsym(v1, "INImageDefaultScaledSize");
    getINImageDefaultScaledSizeSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1B9E89A88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getINImageDefaultScaledSizeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = IntentsLibrary();
  result = dlsym(v2, "INImageDefaultScaledSize");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getINImageDefaultScaledSizeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

double getINImageDefaultScaledSize()
{
  INImageDefaultScaledSizeSymbolLoc = getINImageDefaultScaledSizeSymbolLoc();
  if (!INImageDefaultScaledSizeSymbolLoc)
  {
    getINImageDefaultScaledSize_cold_1();
  }

  return *INImageDefaultScaledSizeSymbolLoc;
}

uint64_t ContactsUILibraryCore(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v1 = ContactsUILibraryCore_frameworkLibrary;
  v6 = ContactsUILibraryCore_frameworkLibrary;
  if (!ContactsUILibraryCore_frameworkLibrary)
  {
    v7 = xmmword_1E7EE4690;
    v8 = *off_1E7EE46A0;
    v9 = 0;
    v4[3] = _sl_dlopen();
    ContactsUILibraryCore_frameworkLibrary = v4[3];
    v1 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v1;
}

void sub_1B9E89C28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __ContactsUILibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  *(*(*(a1 + 32) + 8) + 24) = result;
  ContactsUILibraryCore_frameworkLibrary = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t ContactsUILibrary()
{
  v3 = 0;
  v0 = ContactsUILibraryCore(&v3);
  if (!v0)
  {
    ContactsUILibrary_cold_1(&v3);
  }

  v1 = v0;
  if (v3)
  {
    free(v3);
  }

  return v1;
}

id getCNAvatarImageRendererClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getCNAvatarImageRendererClass_softClass;
  v7 = getCNAvatarImageRendererClass_softClass;
  if (!getCNAvatarImageRendererClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getCNAvatarImageRendererClass_block_invoke;
    v3[3] = &unk_1E7EE4248;
    v3[4] = &v4;
    __getCNAvatarImageRendererClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1B9E89DF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getCNAvatarImageRendererClass_block_invoke(uint64_t a1)
{
  ContactsUILibrary();
  result = objc_getClass("CNAvatarImageRenderer");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getCNAvatarImageRendererClass_block_invoke_cold_1();
  }

  getCNAvatarImageRendererClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id getCNAvatarImageRenderingScopeClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getCNAvatarImageRenderingScopeClass_softClass;
  v7 = getCNAvatarImageRenderingScopeClass_softClass;
  if (!getCNAvatarImageRenderingScopeClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getCNAvatarImageRenderingScopeClass_block_invoke;
    v3[3] = &unk_1E7EE4248;
    v3[4] = &v4;
    __getCNAvatarImageRenderingScopeClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1B9E89F2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getCNAvatarImageRenderingScopeClass_block_invoke(uint64_t a1)
{
  ContactsUILibrary();
  result = objc_getClass("CNAvatarImageRenderingScope");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getCNAvatarImageRenderingScopeClass_block_invoke_cold_1();
  }

  getCNAvatarImageRenderingScopeClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id getCNAvatarImageRendererSettingsClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getCNAvatarImageRendererSettingsClass_softClass;
  v7 = getCNAvatarImageRendererSettingsClass_softClass;
  if (!getCNAvatarImageRendererSettingsClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getCNAvatarImageRendererSettingsClass_block_invoke;
    v3[3] = &unk_1E7EE4248;
    v3[4] = &v4;
    __getCNAvatarImageRendererSettingsClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1B9E8A064(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getCNAvatarImageRendererSettingsClass_block_invoke(uint64_t a1)
{
  ContactsUILibrary();
  result = objc_getClass("CNAvatarImageRendererSettings");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getCNAvatarImageRendererSettingsClass_block_invoke_cold_1();
  }

  getCNAvatarImageRendererSettingsClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_1B9E8A1A8(uint64_t a1, uint64_t a2)
{
  v12 = a1;
  v14 = 0;
  v13 = 0;
  v11 = *(a2 + 16);
  v15 = v11;
  v9 = *(v11 - 8);
  v10 = v11 - 8;
  v6 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](a1, a1, v11);
  v7 = &v6 - v6;
  v14 = v4;
  v13 = v2;
  (*(v9 + 16))(v3);
  (*(v9 + 40))(v8, v7, v11);
  return (*(v9 + 8))(v12, v11);
}

uint64_t sub_1B9E8A300(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = (v3 + *(a3 + 28));
  *v4 = result;
  v4[1] = a2;
  return result;
}

void sub_1B9E8A360(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v22 = a5;
  v25 = a1;
  v20 = a2;
  v21 = a3;
  v27 = a4;
  v32 = 0;
  v31 = 0;
  v29 = 0;
  v30 = 0;
  v33 = a4;
  v23 = *(a4 - 8);
  v24 = a4 - 8;
  v18 = (*(v23 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](a1, a4, a3);
  v19 = &v18 - v18;
  v28 = type metadata accessor for TimelineEntry(0, v5, v6, v7);
  v8 = MEMORY[0x1EEE9AC00](v19, v25, v27);
  v26 = &v18 - v9;
  v32 = &v18 - v9;
  v31 = v10;
  v29 = v20;
  v30 = v21;
  (*(v23 + 16))(v8);
  (*(v23 + 32))(v26, v19, v27);
  v11 = v21;
  v12 = v22;
  v13 = v27;
  v14 = v28;
  v15 = v26;
  v16 = (v26 + *(v28 + 28));
  *v16 = v20;
  v16[1] = v11;
  v17 = sub_1B9E8A578(v15, v12, v13, v14);
  (*(v23 + 8))(v25, v27, v17);
  sub_1B9E8A5F4(v26, v27);
}

__n128 sub_1B9E8A578(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  (*(*(a3 - 8) + 16))();
  result = *(a1 + *(a4 + 28));
  *(a2 + *(a4 + 28)) = result;
  return result;
}

uint64_t SFShockwaveEffectState.isLogicallyComplete.getter()
{
  v12 = 0;
  v9 = sub_1B9ED890C();
  v7 = *(v9 - 8);
  v8 = v9 - 8;
  v6 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v0 = MEMORY[0x1EEE9AC00](v9, v5, v9);
  v10 = &v3 - v6;
  v12 = v1;
  (*(v7 + 16))(v0);
  v11 = (*(v7 + 88))(v10, v9);
  if (v11 == *MEMORY[0x1E69CDD10] || v11 == *MEMORY[0x1E69CDD08] || v11 == *MEMORY[0x1E69CDCF8] || v11 == *MEMORY[0x1E69CDD18])
  {
    v4 = 1;
  }

  else
  {
    (*(v7 + 8))(v10, v9);
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t SFShockwaveEffectState.isRemoved.getter()
{
  v10 = 0;
  v8 = sub_1B9ED890C();
  v6 = *(v8 - 8);
  v7 = v8 - 8;
  v5 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v0 = MEMORY[0x1EEE9AC00](v8, v4, v8);
  v9 = &v3 - v5;
  v10 = v1;
  (*(v6 + 16))(v0);
  if ((*(v6 + 88))(v9, v8) == *MEMORY[0x1E69CDD18])
  {
    HIDWORD(v3) = 1;
  }

  else
  {
    (*(v6 + 8))(v9, v8);
    HIDWORD(v3) = 0;
  }

  return BYTE4(v3) & 1;
}

uint64_t SFShockwaveEffectState.assetState.getter()
{
  v23 = 0;
  v20 = sub_1B9ED890C();
  v18 = *(v20 - 8);
  v19 = v20 - 8;
  v15 = *(v18 + 64);
  v14 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v20, v13, v20);
  v16 = v7 - v14;
  v17 = v14;
  v2 = MEMORY[0x1EEE9AC00](v7 - v14, v0, v1);
  v21 = v7 - v17;
  v23 = v3;
  (*(v18 + 16))(v2);
  v22 = (*(v18 + 88))(v21, v20);
  if (v22 == *MEMORY[0x1E69CDD00] || v22 == *MEMORY[0x1E69CDD10] || v22 == *MEMORY[0x1E69CDD20] || v22 == *MEMORY[0x1E69CDD08] || v22 == *MEMORY[0x1E69CDCF8] || v22 == *MEMORY[0x1E69CDD18])
  {
    v11 = sub_1B9ED8B1C();
    v12 = v4;
  }

  else
  {
    (*(v18 + 104))(v16, *MEMORY[0x1E69CDCF8], v20);
    v9 = SFShockwaveEffectState.assetState.getter();
    v10 = v5;
    v8 = *(v18 + 8);
    v7[1] = v18 + 8;
    v8(v16, v20);
    v8(v21, v20);
    v11 = v9;
    v12 = v10;
  }

  return v11;
}

uint64_t sub_1B9E8ACC0()
{
  v35 = &v40;
  v40 = 0;
  v30 = sub_1B9ED890C();
  v12 = *(v30 - 8);
  v13 = v30 - 8;
  v11 = (*(v12 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v30, v0, v1);
  v31 = &v11 - v11;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE5F90, &qword_1B9EDF3B0);
  v33 = sub_1B9ED914C();
  v29 = v2;
  v3 = *MEMORY[0x1E69CDD00];
  v27 = *(v12 + 104);
  v26 = v12 + 104;
  v27(v31, v3, v30);
  v14 = &v39;
  v39 = 1000;
  v20 = sub_1B9E98CD4();
  v19 = MEMORY[0x1E69E6530];
  v15 = sub_1B9ED922C();
  sub_1B9E8A360(v31, v15, v4, v30, v29);
  v25 = *(*(v34 - 8) + 72);
  v16 = v25;
  v27(v31, *MEMORY[0x1E69CDD20], v30);
  v38 = 480;
  v17 = sub_1B9ED922C();
  sub_1B9E8A360(v31, v17, v5, v30, v29 + v16);
  v18 = 2;
  v21 = 2 * v25;
  v27(v31, *MEMORY[0x1E69CDD08], v30);
  v37 = v18;
  v22 = sub_1B9ED925C();
  sub_1B9E8A360(v31, v22, v6, v30, v29 + v21);
  v23 = 3 * v25;
  v27(v31, *MEMORY[0x1E69CDCF8], v30);
  v24 = sub_1B9ED924C();
  sub_1B9E8A360(v31, v24, v7, v30, v29 + v23);
  v28 = 4 * v25;
  v27(v31, *MEMORY[0x1E69CDD18], v30);
  v32 = sub_1B9E8A33C();
  sub_1B9E8A360(v31, v32, v8, v30, v29 + v28);
  sub_1B9E8B398();
  v36 = v9;

  v40 = v36;
  sub_1B9E9895C(v35);
  return v36;
}

uint64_t sub_1B9E8B038()
{
  v35 = &v40;
  v40 = 0;
  v30 = sub_1B9ED890C();
  v12 = *(v30 - 8);
  v13 = v30 - 8;
  v11 = (*(v12 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v30, v0, v1);
  v31 = &v11 - v11;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE5F90, &qword_1B9EDF3B0);
  v33 = sub_1B9ED914C();
  v29 = v2;
  v3 = *MEMORY[0x1E69CDD00];
  v27 = *(v12 + 104);
  v26 = v12 + 104;
  v27(v31, v3, v30);
  v14 = &v39;
  v39 = 50;
  v20 = sub_1B9E98CD4();
  v19 = MEMORY[0x1E69E6530];
  v15 = sub_1B9ED922C();
  sub_1B9E8A360(v31, v15, v4, v30, v29);
  v25 = *(*(v34 - 8) + 72);
  v16 = v25;
  v27(v31, *MEMORY[0x1E69CDD20], v30);
  v38 = 480;
  v17 = sub_1B9ED922C();
  sub_1B9E8A360(v31, v17, v5, v30, v29 + v16);
  v18 = 2;
  v21 = 2 * v25;
  v27(v31, *MEMORY[0x1E69CDD08], v30);
  v37 = v18;
  v22 = sub_1B9ED925C();
  sub_1B9E8A360(v31, v22, v6, v30, v29 + v21);
  v23 = 3 * v25;
  v27(v31, *MEMORY[0x1E69CDCF8], v30);
  v24 = sub_1B9ED924C();
  sub_1B9E8A360(v31, v24, v7, v30, v29 + v23);
  v28 = 4 * v25;
  v27(v31, *MEMORY[0x1E69CDD18], v30);
  v32 = sub_1B9E8A33C();
  sub_1B9E8A360(v31, v32, v8, v30, v29 + v28);
  sub_1B9E8B398();
  v36 = v9;

  v40 = v36;
  sub_1B9E9895C(v35);
  return v36;
}

uint64_t sub_1B9E8B420@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = a2;
  v10 = a1;
  v12 = 0;
  v11 = sub_1B9ED890C();
  v8 = *(v11 - 8);
  v9 = v11 - 8;
  v5 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v11, v10, v11);
  v7 = &v5 - v5;
  v12 = v3;
  (*(v8 + 16))(v2);
  sub_1B9E93528(v7, v11, v6);
  return (*(v8 + 8))(v10, v11);
}

uint64_t sub_1B9E8B51C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v11 = a2;
  v6 = a1;
  v13 = sub_1B9ED890C();
  v9 = *(v13 - 8);
  v10 = v13 - 8;
  v7 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v6, v2, v3);
  v12 = &v6 - v7;
  v8 = *v4;

  v15 = v8;
  v14 = v8;
  sub_1B9E8B6F0();
  (*(v9 + 32))(v11, v12, v13);
}

uint64_t sub_1B9E8B610(uint64_t a1, uint64_t *a2)
{
  v5 = a1;
  v8 = a2;
  v2 = sub_1B9ED890C();
  v7 = *(v2 - 8);
  v6 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](v2, v5, v2);
  v9 = &v5 - v6;
  (*(v7 + 16))(v3);
  v10 = *v8;

  v12 = v10;
  v11 = v10;
  sub_1B9E8B784(v9);
}

uint64_t sub_1B9E8B6F0()
{

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1B9ED872C();
}

uint64_t sub_1B9E8B784(uint64_t a1)
{
  v10 = a1;
  v13 = 0;
  v12 = 0;
  v11 = sub_1B9ED890C();
  v8 = *(v11 - 8);
  v9 = v11 - 8;
  v6[0] = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v6[2], v1, v2);
  v7 = v6 - v6[0];
  v13 = v3;
  v12 = v4;

  v6[3] = swift_getKeyPath();
  v6[4] = swift_getKeyPath();
  (*(v8 + 16))(v7, v10, v11);
  sub_1B9ED873C();
  return (*(v8 + 8))(v10, v11);
}

void (*sub_1B9E8B8D8(void *a1))(uint64_t *a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL, 48215);
  *a1 = v3;
  v3[4] = v2;

  v3[5] = swift_getKeyPath();
  v3[6] = swift_getKeyPath();
  v3[7] = sub_1B9ED871C();
  return sub_1B9E8B9B8;
}

void sub_1B9E8B9B8(uint64_t *a1, char a2)
{
  v2 = *a1;
  v2[7](v2, 0);

  free(v2);
}

uint64_t sub_1B9E8BA94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v11 = a2;
  v6 = a1;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE5D58, &qword_1B9EDEC00);
  v9 = *(v13 - 8);
  v10 = v13 - 8;
  v7 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v6, v2, v3);
  v12 = &v6 - v7;
  v8 = *v4;

  v15 = v8;
  v14 = v8;
  sub_1B9E8BC80();
  (*(v9 + 32))(v11, v12, v13);
}

uint64_t sub_1B9E8BB94(uint64_t a1, uint64_t *a2)
{
  v5 = a1;
  v8 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE5D58, &qword_1B9EDEC00);
  v7 = *(v2 - 8);
  v6 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](v2, v5, v2);
  v9 = &v5 - v6;
  (*(v7 + 16))(v3);
  v10 = *v8;

  v12 = v10;
  v11 = v10;
  sub_1B9E8BCFC(v9);
}

uint64_t sub_1B9E8BC80()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE5D50, &qword_1B9EDEBF8);
  sub_1B9ED86FC();
  return swift_endAccess();
}

uint64_t sub_1B9E8BCFC(uint64_t a1)
{
  v8 = a1;
  v12 = 0;
  v11 = 0;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE5D58, &qword_1B9EDEC00);
  v6 = *(v9 - 8);
  v7 = v9 - 8;
  v5[0] = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v9, v8, v9);
  v5[1] = v5 - v5[0];
  v12 = v3;
  v11 = v1;
  (*(v6 + 16))(v2);
  v5[2] = &v10;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE5D50, &qword_1B9EDEBF8);
  sub_1B9ED870C();
  swift_endAccess();
  return (*(v6 + 8))(v8, v9);
}

uint64_t (*sub_1B9E8BE50(void *a1))()
{
  v6 = __swift_coroFrameAllocStub(0x28uLL, 59836);
  *a1 = v6;
  *v6 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE5D58, &qword_1B9EDEC00);
  v6[1] = v2;
  v4 = *(v2 - 8);
  v6[2] = v4;
  v5 = *(v4 + 64);
  v6[3] = __swift_coroFrameAllocStub(v5, 59836);
  v6[4] = __swift_coroFrameAllocStub(v5, 59836);
  sub_1B9E8BC80();
  return sub_1B9E8BF74;
}

void sub_1B9E8BF74(void **a1, char a2)
{
  v8 = *a1;
  if (a2)
  {
    v4 = v8[4];
    v5 = v8[3];
    v3 = v8[1];
    v2 = v8[2];
    (*(v2 + 16))();
    sub_1B9E8BCFC(v5);
    (*(v2 + 8))(v4, v3);
    free(v4);
    free(v5);
  }

  else
  {
    v6 = v8[4];
    v7 = v8[3];
    sub_1B9E8BCFC(v6);
    free(v6);
    free(v7);
  }

  free(v8);
}

uint64_t sub_1B9E8C070@<X0>(uint64_t a1@<X8>)
{
  v4 = v1 + OBJC_IVAR____TtC9SharingUI29ShockwaveAnimationCoordinator__state;
  swift_beginAccess();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE5D50, &qword_1B9EDEBF8);
  (*(*(v2 - 8) + 16))(a1, v4);
  return swift_endAccess();
}

uint64_t sub_1B9E8C110(uint64_t a1)
{
  v12 = a1;
  v16 = 0;
  v15 = 0;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE5D50, &qword_1B9EDEBF8);
  v10 = *(v13 - 8);
  v11 = v13 - 8;
  v6 = (*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v13, v12, v13);
  v8 = &v5 - v6;
  v16 = v3;
  v15 = v1;
  (*(v10 + 16))(v2);
  v7 = v1 + OBJC_IVAR____TtC9SharingUI29ShockwaveAnimationCoordinator__state;
  v9 = &v14;
  swift_beginAccess();
  (*(v10 + 40))(v7, v8, v13);
  swift_endAccess();
  return (*(v10 + 8))(v12, v13);
}

uint64_t sub_1B9E8C270()
{
  v2 = (v0 + OBJC_IVAR____TtC9SharingUI29ShockwaveAnimationCoordinator_animationTask);
  swift_beginAccess();
  v3 = *v2;

  swift_endAccess();
  return v3;
}

uint64_t sub_1B9E8C2D8(uint64_t a1)
{

  v3 = (v1 + OBJC_IVAR____TtC9SharingUI29ShockwaveAnimationCoordinator_animationTask);
  swift_beginAccess();
  *v3 = a1;

  swift_endAccess();
}

uint64_t ShockwaveAnimationCoordinator.init()()
{
  v15 = 0;
  v8 = 0;
  v1 = sub_1B9ED890C();
  v9 = *(v1 - 8);
  v7 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](v1, v2, v1);
  v4 = v9;
  v11 = &v6 - v7;
  v15 = v0;
  *(v0 + OBJC_IVAR____TtC9SharingUI29ShockwaveAnimationCoordinator_animationTask) = 0;
  (*(v4 + 104))(v3);
  v10 = v0 + OBJC_IVAR____TtC9SharingUI29ShockwaveAnimationCoordinator__state;
  v12 = &v14;
  swift_beginAccess();
  sub_1B9E8B420(v11, v10);
  swift_endAccess();
  return v13;
}

uint64_t sub_1B9E8C54C(uint64_t a1, uint64_t a2)
{
  v21 = a1;
  v20 = a2;
  v26 = MEMORY[0x1E69E85E0];
  v37 = &unk_1B9EDEC18;
  v42 = 0;
  v41 = 0;
  v40 = 0;
  v35 = 0;
  v31 = sub_1B9ED8FAC();
  v27 = *(v31 - 8);
  v28 = v31 - 8;
  v22 = v27;
  v23 = *(v27 + 64);
  v18 = (v23 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v31, v3, v4);
  v30 = &v18 - v18;
  v19 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE5D68, &qword_1B9EDEC08) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v35, v20, v5);
  v36 = &v18 - v19;
  v42 = v6;
  v41 = v7;
  v40 = v2;
  v8 = sub_1B9ED8CDC();
  (*(*(v8 - 8) + 56))(v36, 1);
  v24 = 7;
  v34 = swift_allocObject();

  swift_weakInit();

  (*(v27 + 16))(v30, v20, v31);
  v33 = v39;
  sub_1B9E93684(v21, v39);
  sub_1B9ED8CBC();
  v25 = sub_1B9ED8CAC();
  v29 = (*(v22 + 80) + 40) & ~*(v22 + 80);
  v32 = (v29 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = swift_allocObject();
  v10 = v26;
  v11 = v27;
  v12 = v29;
  v13 = v30;
  v14 = v31;
  v15 = v34;
  v38 = v9;
  v9[2] = v25;
  v9[3] = v10;
  v9[4] = v15;
  (*(v11 + 32))(v9 + v12, v13, v14);
  sub_1B9E93790(v33, v38 + v32);

  v16 = sub_1B9E8E6AC(v35, v35, v36, v37, v38, MEMORY[0x1E69E7CA8] + 8);
  return sub_1B9E8C2D8(v16);
}

uint64_t sub_1B9E8C888(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[19] = a6;
  v6[18] = a5;
  v6[17] = a4;
  v6[10] = v6;
  v6[11] = 0;
  v6[12] = 0;
  v6[13] = 0;
  v6[14] = 0;
  v6[8] = 0;
  v6[9] = 0;
  v7 = sub_1B9ED8FBC();
  v6[20] = v7;
  v6[21] = *(v7 - 8);
  v6[22] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE5F90, &qword_1B9EDF3B0);
  v6[23] = v8;
  v6[24] = *(v8 - 8);
  v6[25] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE5F60, &qword_1B9EDF390);
  v6[26] = swift_task_alloc();
  v9 = sub_1B9ED890C();
  v6[27] = v9;
  v6[28] = *(v9 - 8);
  v6[29] = swift_task_alloc();
  v6[30] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE5F98, &qword_1B9EDF3B8);
  v6[31] = swift_task_alloc();
  v6[32] = swift_task_alloc();
  v10 = sub_1B9ED8FAC();
  v6[33] = v10;
  v6[34] = *(v10 - 8);
  v6[35] = swift_task_alloc();
  v6[36] = swift_task_alloc();
  v6[37] = swift_task_alloc();
  v6[38] = swift_task_alloc();
  v6[11] = a4 + 16;
  v6[12] = a5;
  v6[13] = a6;
  sub_1B9ED8CBC();
  v6[39] = sub_1B9ED8CAC();
  v6[40] = sub_1B9ED8C6C();
  v6[41] = v11;

  return MEMORY[0x1EEE6DFA0](sub_1B9E8CC44);
}

uint64_t sub_1B9E8CC44()
{
  *(v0 + 80) = v0;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 336) = Strong;
  swift_endAccess();
  if (Strong)
  {
    v1 = *(v54 + 304);
    v2 = *(v54 + 272);
    v3 = *(v54 + 264);
    v51 = *(v54 + 152);
    v4 = *(v54 + 144);
    *(v54 + 112) = Strong;
    v5 = v2 + 16;
    v6 = *(v2 + 16);
    *(v54 + 344) = v6;
    *(v54 + 352) = v5 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v6(v1, v4, v3);
    v53 = v51[3];
    v52 = v51[4];
    __swift_project_boxed_opaque_existential_1(v51, v53);
    *(v54 + 120) = (*(v52 + 8))(v53);
    *(v54 + 360) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE5FA0, &qword_1B9EDF3C0);
    sub_1B9E988D4();
    sub_1B9ED8D9C();
    while (1)
    {
      v48 = *(v54 + 256);
      v49 = *(v54 + 184);
      v47 = *(v54 + 192);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE5FB0, &qword_1B9EDF3C8);
      sub_1B9ED8FDC();
      v50 = *(v47 + 48);
      if (v50(v48, 1, v49) == 1)
      {
        v45 = *(v54 + 248);
        v46 = *(v54 + 184);
        v42 = *(v54 + 152);
        sub_1B9E9895C((v54 + 64));
        v44 = v42[3];
        v43 = v42[4];
        __swift_project_boxed_opaque_existential_1(v42, v44);
        *(v54 + 128) = (*(v43 + 8))(v44);
        sub_1B9E98988();
        sub_1B9ED8A4C();

        if (v50(v45, 1, v46) == 1)
        {
          v27 = *(v54 + 216);
          v28 = *(v54 + 208);
          v26 = *(v54 + 224);
          sub_1B9E98A10(*(v54 + 248));
          (*(v26 + 56))(v28, 1, 1, v27);
        }

        else
        {
          v22 = *(v54 + 248);
          v24 = *(v54 + 216);
          v25 = *(v54 + 208);
          v23 = *(v54 + 224);
          (*(v23 + 16))();
          sub_1B9E98B68(v22);
          (*(v23 + 56))(v25, 0, 1, v24);
        }

        v13 = (*(v54 + 224) + 48);
        v21 = *v13;
        if ((*v13)(*(v54 + 208), 1, *(v54 + 216)) == 1)
        {
          v20 = *(v54 + 216);
          v19 = *(v54 + 208);
          (*(*(v54 + 224) + 104))(*(v54 + 240), *MEMORY[0x1E69CDD18]);
          if (v21(v19, 1, v20) != 1)
          {
            sub_1B9E98AC0(*(v54 + 208));
          }
        }

        else
        {
          (*(*(v54 + 224) + 32))(*(v54 + 240), *(v54 + 208), *(v54 + 216));
        }

        v17 = *(v54 + 304);
        v18 = *(v54 + 264);
        v16 = *(v54 + 272);
        sub_1B9E8B784(*(v54 + 240));
        (*(v16 + 8))(v17, v18);

        goto LABEL_18;
      }

      sub_1B9E98BC4(*(v54 + 256), *(v54 + 200));
      sub_1B9ED8CFC();
      v36 = *(v54 + 344);
      v35 = *(v54 + 304);
      v39 = *(v54 + 296);
      v38 = *(v54 + 288);
      v7 = *(v54 + 264);
      v37 = *(v54 + 272);
      v8 = (*(v54 + 200) + *(*(v54 + 184) + 28));
      sub_1B9E8E588(v35, *v8, v8[1]);
      v36(v39, v35, v7);
      sub_1B9ED8F7C();
      sub_1B9E98C54();
      v41 = sub_1B9ED8A5C();
      v40 = *(v37 + 8);
      *(v54 + 368) = v40;
      *(v54 + 376) = (v37 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v40(v38, v7);
      v40(v39, v7);
      if (v41)
      {
        break;
      }

      sub_1B9E98B68(*(v54 + 200));
    }

    v33 = *(v54 + 344);
    v31 = *(v54 + 304);
    v30 = *(v54 + 280);
    v32 = *(v54 + 264);
    v29 = *(v54 + 232);
    (*(*(v54 + 224) + 16))();
    sub_1B9E8B784(v29);
    v33(v30, v31, v32);
    *(v54 + 40) = 0;
    *(v54 + 48) = 0;
    *(v54 + 56) = 1;
    v34 = sub_1B9E98518();
    sub_1B9E8E688();
    v9 = swift_task_alloc();
    *(v54 + 384) = v9;
    *v9 = *(v54 + 80);
    v9[1] = sub_1B9E8D798;
    v10 = *(v54 + 280);
    v11 = *(v54 + 176);
    v12 = *(v54 + 160);

    return MEMORY[0x1EEE6DA68](v10, v54 + 40, v11, v12, v34);
  }

  else
  {
LABEL_18:

    v14 = *(*(v54 + 80) + 8);

    return v14();
  }
}

uint64_t sub_1B9E8D798()
{
  v7 = *v1;
  v7[10] = *v1;
  v7[49] = v0;

  if (v0)
  {
    v2 = sub_1B9E8E384;
  }

  else
  {
    v6 = v7[46];
    v4 = v7[35];
    v5 = v7[33];
    (*(v7[21] + 8))(v7[22], v7[20]);
    v6(v4, v5);
    v2 = sub_1B9E8D968;
  }

  return MEMORY[0x1EEE6DFA0](v2);
}

uint64_t sub_1B9E8D968()
{
  v1 = v0[25];
  v0[10] = v0;
  sub_1B9E98B68(v1);
  for (i = v0[49]; ; i = 0)
  {
    v28 = *(v49 + 256);
    v29 = *(v49 + 184);
    v27 = *(v49 + 192);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE5FB0, &qword_1B9EDF3C8);
    sub_1B9ED8FDC();
    v48 = *(v27 + 48);
    if (v48(v28, 1, v29) == 1)
    {
      v46 = *(v49 + 248);
      v47 = *(v49 + 184);
      v43 = *(v49 + 152);
      sub_1B9E9895C((v49 + 64));
      v45 = v43[3];
      v44 = v43[4];
      __swift_project_boxed_opaque_existential_1(v43, v45);
      *(v49 + 128) = (*(v44 + 8))(v45);
      sub_1B9E98988();
      sub_1B9ED8A4C();

      if (v48(v46, 1, v47) == 1)
      {
        v25 = *(v49 + 216);
        v26 = *(v49 + 208);
        v24 = *(v49 + 224);
        sub_1B9E98A10(*(v49 + 248));
        (*(v24 + 56))(v26, 1, 1, v25);
      }

      else
      {
        v20 = *(v49 + 248);
        v22 = *(v49 + 216);
        v23 = *(v49 + 208);
        v21 = *(v49 + 224);
        (*(v21 + 16))();
        sub_1B9E98B68(v20);
        (*(v21 + 56))(v23, 0, 1, v22);
      }

      v8 = (*(v49 + 224) + 48);
      v19 = *v8;
      if ((*v8)(*(v49 + 208), 1, *(v49 + 216)) == 1)
      {
        v18 = *(v49 + 216);
        v17 = *(v49 + 208);
        (*(*(v49 + 224) + 104))(*(v49 + 240), *MEMORY[0x1E69CDD18]);
        if (v19(v17, 1, v18) != 1)
        {
          sub_1B9E98AC0(*(v49 + 208));
        }
      }

      else
      {
        (*(*(v49 + 224) + 32))(*(v49 + 240), *(v49 + 208), *(v49 + 216));
      }

      v15 = *(v49 + 304);
      v16 = *(v49 + 264);
      v14 = *(v49 + 272);
      sub_1B9E8B784(*(v49 + 240));
      (*(v14 + 8))(v15, v16);

      v9 = *(*(v49 + 80) + 8);

      return v9();
    }

    sub_1B9E98BC4(*(v49 + 256), *(v49 + 200));
    sub_1B9ED8CFC();
    if (i)
    {
      v13 = *(v49 + 304);
      v12 = *(v49 + 264);
      v11 = *(v49 + 272);
      sub_1B9E98B68(*(v49 + 200));
      sub_1B9E9895C((v49 + 64));
      (*(v11 + 8))(v13, v12);

      v9 = *(*(v49 + 80) + 8);

      return v9();
    }

    v37 = *(v49 + 344);
    v36 = *(v49 + 304);
    v40 = *(v49 + 296);
    v39 = *(v49 + 288);
    v2 = *(v49 + 264);
    v38 = *(v49 + 272);
    v3 = (*(v49 + 200) + *(*(v49 + 184) + 28));
    sub_1B9E8E588(v36, *v3, v3[1]);
    v37(v40, v36, v2);
    sub_1B9ED8F7C();
    sub_1B9E98C54();
    v42 = sub_1B9ED8A5C();
    v41 = *(v38 + 8);
    *(v49 + 368) = v41;
    *(v49 + 376) = (v38 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v41(v39, v2);
    v41(v40, v2);
    if (v42)
    {
      break;
    }

    sub_1B9E98B68(*(v49 + 200));
  }

  v34 = *(v49 + 344);
  v32 = *(v49 + 304);
  v31 = *(v49 + 280);
  v33 = *(v49 + 264);
  v30 = *(v49 + 232);
  (*(*(v49 + 224) + 16))();
  sub_1B9E8B784(v30);
  v34(v31, v32, v33);
  *(v49 + 40) = 0;
  *(v49 + 48) = 0;
  *(v49 + 56) = 1;
  v35 = sub_1B9E98518();
  sub_1B9E8E688();
  v4 = swift_task_alloc();
  *(v49 + 384) = v4;
  *v4 = *(v49 + 80);
  v4[1] = sub_1B9E8D798;
  v5 = *(v49 + 280);
  v6 = *(v49 + 176);
  v7 = *(v49 + 160);

  return MEMORY[0x1EEE6DA68](v5, v49 + 40, v6, v7, v35);
}

uint64_t sub_1B9E8E384()
{
  v9 = v0[46];
  v10 = v0[38];
  v6 = v0[35];
  v8 = v0[33];
  v7 = v0[25];
  v1 = v0[22];
  v2 = v0[21];
  v3 = v0[20];
  v0[10] = v0;
  (*(v2 + 8))(v1, v3);
  v9(v6, v8);
  sub_1B9E98B68(v7);
  sub_1B9E9895C(v0 + 8);
  v9(v10, v8);

  v4 = *(v0[10] + 8);

  return v4();
}

uint64_t sub_1B9E8E588(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a1;
  v8 = a2;
  v7 = a3;
  v12 = sub_1B9ED8FAC();
  v9 = *(v12 - 8);
  v10 = v12 - 8;
  v5 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](v12, v6, v12);
  v11 = &v5 - v5;
  (*(v9 + 32))(&v5 - v5, v3);
  sub_1B9ED8F8C();
  return (*(v9 + 8))(v11, v12);
}

uint64_t sub_1B9E8E6AC(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v41 = a1;
  v42 = a2;
  v49 = a3;
  v50 = a4;
  v51 = a5;
  v43 = a6;
  v44 = "Fatal error";
  v45 = "Unexpectedly found nil while unwrapping an Optional value";
  v46 = "_Concurrency/arm64e-apple-ios.private.swiftinterface";
  v47 = 0;
  v60 = a6;
  v48 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE5D68, &qword_1B9EDEC08) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v51, v6, v7);
  v52 = &v11 - v48;

  v58 = v50;
  v59 = v51;
  sub_1B9E987AC(v49, v52);
  v53 = sub_1B9ED8CDC();
  v54 = *(v53 - 8);
  v55 = v53 - 8;
  if ((*(v54 + 48))(v52, 1) == 1)
  {
    sub_1B9E96C60(v52);
    v40 = 0;
  }

  else
  {
    v39 = sub_1B9ED8CCC();
    (*(v54 + 8))(v52, v53);
    v40 = v39;
  }

  v36 = v40 | 0x1C00;
  v38 = *(v51 + 16);
  v37 = *(v51 + 24);
  swift_unknownObjectRetain();

  if (v38)
  {
    v34 = v38;
    v35 = v37;
    v28 = v37;
    v29 = v38;
    swift_getObjectType();
    v30 = sub_1B9ED8C6C();
    v31 = v8;
    swift_unknownObjectRelease();
    v32 = v30;
    v33 = v31;
  }

  else
  {
    v32 = 0;
    v33 = 0;
  }

  v26 = v33;
  v27 = v32;

  if (v42)
  {
    v24 = v41;
    v25 = v42;
    v9 = v47;
    v21 = v42;
    v22 = sub_1B9ED8AFC();

    sub_1B9E947E8(v22 + 32, &v56);
    if (v9)
    {
      __break(1u);
    }

    v20 = v56;

    v23 = v20;
  }

  else
  {
    v23 = 0;
  }

  v19 = v23;
  if (v23)
  {
    v14 = v19;
    v13 = v19;
    sub_1B9E96C60(v49);

    v15 = v13;
  }

  else
  {

    sub_1B9E96C60(v49);
    v16 = v58;
    v17 = v59;

    v18 = 0;
    if (v27 != 0 || v26 != 0)
    {
      v57[0] = 0;
      v57[1] = 0;
      v57[2] = v27;
      v57[3] = v26;
      v18 = v57;
    }

    v15 = swift_task_create();
  }

  v12 = v15;

  return v12;
}

uint64_t sub_1B9E8EC14@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B9E8ACA8();
  a1[3] = &unk_1F37E6820;
  a1[4] = &off_1F37E69A0;
  *a1 = result;
  return result;
}

void sub_1B9E8EC68(uint64_t a1, const void *a2, unsigned int a3)
{
  v166 = a1;
  v165 = a2;
  v164 = a3;
  v135 = sub_1B9E93C4C;
  v136 = sub_1B9E96AFC;
  v137 = sub_1B9E96AF4;
  v138 = sub_1B9E96AF4;
  v139 = sub_1B9E96B08;
  v140 = sub_1B9E96B14;
  v141 = sub_1B9E93C4C;
  v142 = sub_1B9E96AFC;
  v143 = sub_1B9E96B88;
  v144 = sub_1B9E96AFC;
  v145 = sub_1B9E96AF4;
  v146 = sub_1B9E96AF4;
  v147 = sub_1B9E96B08;
  v148 = sub_1B9E96AF4;
  v149 = sub_1B9E96AF4;
  v150 = sub_1B9E96B08;
  v196 = 0;
  v195 = 0;
  v194 = 0;
  v193 = 0;
  v192 = 0;
  v151 = 0;
  v159 = 0;
  v152 = sub_1B9ED85DC();
  v153 = *(v152 - 8);
  v154 = v152 - 8;
  v155 = (*(v153 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v152, v4, v5);
  v156 = v67 - v155;
  v157 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v67 - v155, v7, v8);
  v158 = v67 - v157;
  v160 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBE5D70, &unk_1B9EDEC20) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v159, v9, v10);
  v161 = v67 - v160;
  v162 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12, v67 - v160, v13);
  v163 = v67 - v162;
  v167 = sub_1B9ED8FAC();
  v169 = *(v167 - 8);
  v168 = v167 - 8;
  v170 = v169;
  v171 = *(v169 + 64);
  v172 = (v171 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v166, v165, v164);
  v173 = v67 - v172;
  v174 = (v14 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v15, v16, v17);
  v175 = v67 - v174;
  v176 = (v18 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v19, v20, v21);
  v177 = v67 - v176;
  v196 = v67 - v176;
  v195 = v22;
  v194 = v23;
  v193 = v24 & 1;
  v192 = v3;
  if (v24)
  {
    v178 = sub_1B9E8C270();
    if (v178)
    {
      v133 = &v178;
      v134 = v178;

      sub_1B9E93A50(v133);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE5D88, &unk_1B9EDEC38);
      sub_1B9ED8CEC();
    }

    else
    {
      sub_1B9E93A50(&v178);
    }

    sub_1B9E8C2D8(0);
  }

  v191 = sub_1B9E8C270();
  v132 = v191 == 0;
  v131 = v132;
  sub_1B9E93A50(&v191);
  if (v131)
  {
    sub_1B9E93A7C(v165, v163);
    v129 = *(v169 + 48);
    v130 = v169 + 48;
    if (v129(v163, 1, v167) == 1)
    {
      v52 = v156;
      sub_1B9E93BA4(v163);
      v53 = sub_1B9EA025C();
      (*(v153 + 16))(v52, v53, v152);
      v76 = v190;
      sub_1B9E93684(v166, v190);
      v79 = 7;
      v80 = swift_allocObject();
      sub_1B9E93790(v76, (v80 + 16));
      v88 = sub_1B9ED85BC();
      v89 = sub_1B9ED8DCC();
      v77 = 17;
      v82 = swift_allocObject();
      *(v82 + 16) = 32;
      v83 = swift_allocObject();
      *(v83 + 16) = 8;
      v78 = 32;
      v54 = swift_allocObject();
      v55 = v80;
      v81 = v54;
      *(v54 + 16) = v135;
      *(v54 + 24) = v55;
      v56 = swift_allocObject();
      v57 = v81;
      v85 = v56;
      *(v56 + 16) = v136;
      *(v56 + 24) = v57;
      v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBE6160, &qword_1B9EDF3E0);
      v84 = sub_1B9ED914C();
      v86 = v58;

      v59 = v82;
      v60 = v86;
      *v86 = v137;
      v60[1] = v59;

      v61 = v83;
      v62 = v86;
      v86[2] = v138;
      v62[3] = v61;

      v63 = v85;
      v64 = v86;
      v86[4] = v139;
      v64[5] = v63;
      sub_1B9E8B398();

      if (os_log_type_enabled(v88, v89))
      {
        v65 = v151;
        v69 = sub_1B9ED8E8C();
        v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE5D80, &qword_1B9EDEC30);
        v70 = sub_1B9E945DC(0, v68, v68);
        v71 = sub_1B9E945DC(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
        v72 = &v189;
        v189 = v69;
        v73 = &v188;
        v188 = v70;
        v74 = &v187;
        v187 = v71;
        sub_1B9E94630(2, &v189);
        sub_1B9E94630(1, v72);
        v185 = v137;
        v186 = v82;
        sub_1B9E94644(&v185, v72, v73, v74);
        v75 = v65;
        if (v65)
        {

          __break(1u);
        }

        else
        {
          v185 = v138;
          v186 = v83;
          sub_1B9E94644(&v185, &v189, &v188, &v187);
          v67[1] = 0;
          v185 = v139;
          v186 = v85;
          sub_1B9E94644(&v185, &v189, &v188, &v187);
          _os_log_impl(&dword_1B9E4B000, v88, v89, "Starting %s for nearby sharing interaction without a time to coordinate from", v69, 0xCu);
          sub_1B9E94690(v70, 0, v68);
          sub_1B9E94690(v71, 1, MEMORY[0x1E69E7CA0] + 8);
          sub_1B9ED8E6C();
        }
      }

      else
      {
      }

      v66 = MEMORY[0x1E69E5920](v88);
      (*(v153 + 8))(v156, v152, v66);
    }

    else
    {
      v25 = v158;
      v104 = v170;
      v107 = *(v169 + 32);
      v106 = v169 + 32;
      v107(v177, v163, v167);
      v26 = sub_1B9EA025C();
      (*(v153 + 16))(v25, v26, v152);
      v103 = v184;
      sub_1B9E93684(v166, v184);
      v115 = 7;
      v109 = swift_allocObject();
      sub_1B9E93790(v103, (v109 + 16));
      (*(v169 + 16))(v175, v177, v167);
      v105 = (*(v104 + 80) + 16) & ~*(v104 + 80);
      v108 = swift_allocObject();
      v107((v108 + v105), v175, v167);

      v114 = 32;
      v27 = swift_allocObject();
      v28 = v108;
      v116 = v27;
      *(v27 + 16) = v140;
      *(v27 + 24) = v28;

      v127 = sub_1B9ED85BC();
      v128 = sub_1B9ED8DDC();
      v112 = 17;
      v118 = swift_allocObject();
      v111 = 32;
      *(v118 + 16) = 32;
      v119 = swift_allocObject();
      v113 = 8;
      *(v119 + 16) = 8;
      v29 = swift_allocObject();
      v30 = v109;
      v110 = v29;
      *(v29 + 16) = v141;
      *(v29 + 24) = v30;
      v31 = swift_allocObject();
      v32 = v110;
      v120 = v31;
      *(v31 + 16) = v142;
      *(v31 + 24) = v32;
      v121 = swift_allocObject();
      *(v121 + 16) = v111;
      v122 = swift_allocObject();
      *(v122 + 16) = v113;
      v33 = swift_allocObject();
      v34 = v116;
      v117 = v33;
      *(v33 + 16) = v143;
      *(v33 + 24) = v34;
      v35 = swift_allocObject();
      v36 = v117;
      v124 = v35;
      *(v35 + 16) = v144;
      *(v35 + 24) = v36;
      v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBE6160, &qword_1B9EDF3E0);
      v123 = sub_1B9ED914C();
      v125 = v37;

      v38 = v118;
      v39 = v125;
      *v125 = v145;
      v39[1] = v38;

      v40 = v119;
      v41 = v125;
      v125[2] = v146;
      v41[3] = v40;

      v42 = v120;
      v43 = v125;
      v125[4] = v147;
      v43[5] = v42;

      v44 = v121;
      v45 = v125;
      v125[6] = v148;
      v45[7] = v44;

      v46 = v122;
      v47 = v125;
      v125[8] = v149;
      v47[9] = v46;

      v48 = v124;
      v49 = v125;
      v125[10] = v150;
      v49[11] = v48;
      sub_1B9E8B398();

      if (os_log_type_enabled(v127, v128))
      {
        v50 = v151;
        v95 = sub_1B9ED8E8C();
        v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE5D80, &qword_1B9EDEC30);
        v96 = sub_1B9E945DC(0, v94, v94);
        v97 = sub_1B9E945DC(2, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
        v99 = &v183;
        v183 = v95;
        v100 = &v182;
        v182 = v96;
        v101 = &v181;
        v181 = v97;
        v98 = 2;
        sub_1B9E94630(2, &v183);
        sub_1B9E94630(v98, v99);
        v179 = v145;
        v180 = v118;
        sub_1B9E94644(&v179, v99, v100, v101);
        v102 = v50;
        if (v50)
        {

          __break(1u);
        }

        else
        {
          v179 = v146;
          v180 = v119;
          sub_1B9E94644(&v179, &v183, &v182, &v181);
          v93 = 0;
          v179 = v147;
          v180 = v120;
          sub_1B9E94644(&v179, &v183, &v182, &v181);
          v92 = 0;
          v179 = v148;
          v180 = v121;
          sub_1B9E94644(&v179, &v183, &v182, &v181);
          v91 = 0;
          v179 = v149;
          v180 = v122;
          sub_1B9E94644(&v179, &v183, &v182, &v181);
          v90 = 0;
          v179 = v150;
          v180 = v124;
          sub_1B9E94644(&v179, &v183, &v182, &v181);
          _os_log_impl(&dword_1B9E4B000, v127, v128, "Starting coordinated %s for nearby sharing interaction %s after connecting", v95, 0x16u);
          sub_1B9E94690(v96, 0, v94);
          sub_1B9E94690(v97, 2, MEMORY[0x1E69E7CA0] + 8);
          sub_1B9ED8E6C();
        }
      }

      else
      {
      }

      v51 = MEMORY[0x1E69E5920](v127);
      (*(v153 + 8))(v158, v152, v51);
      (*(v169 + 8))(v177, v167);
    }

    sub_1B9E93A7C(v165, v161);
    if (v129(v161, 1, v167) == 1)
    {
      sub_1B9ED8F7C();
      if (v129(v161, 1, v167) != 1)
      {
        sub_1B9E93BA4(v161);
      }
    }

    else
    {
      (*(v169 + 32))(v173, v161, v167);
    }

    sub_1B9E8C54C(v166, v173);
    (*(v169 + 8))(v173, v167);
  }
}

uint64_t sub_1B9E90458(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  swift_getDynamicType();
  return sub_1B9ED926C();
}

uint64_t sub_1B9E9049C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v16 = a2;
  v10 = a1;
  v14 = sub_1B9ED8FAC();
  v11 = *(v14 - 8);
  v12 = v14 - 8;
  v9 = (*(v11 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v14, v2, v3);
  v13 = &v8 - v9;
  sub_1B9ED8F7C();
  v15 = sub_1B9E90584();
  v17 = v4;
  (*(v11 + 8))(v13, v14);
  result = v15;
  v6 = v16;
  v7 = v17;
  *v16 = v15;
  v6[1] = v7;
  return result;
}

uint64_t sub_1B9E905A8(uint64_t a1, uint64_t a2)
{
  v3[12] = v2;
  v3[11] = a2;
  v3[10] = a1;
  v3[4] = v3;
  v3[2] = 0;
  v3[3] = 0;
  v3[5] = 0;
  v4 = sub_1B9ED85DC();
  v3[13] = v4;
  v3[14] = *(v4 - 8);
  v3[15] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE5D68, &qword_1B9EDEC08);
  v3[16] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBE5D90, &qword_1B9EDEC48);
  v3[17] = v5;
  v3[18] = *(v5 - 8);
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  v6 = sub_1B9ED890C();
  v3[21] = v6;
  v3[22] = *(v6 - 8);
  v3[23] = swift_task_alloc();
  v3[2] = a1;
  v3[3] = a2;
  v3[5] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1B9E90808);
}

uint64_t sub_1B9E90808()
{
  v15 = v0[23];
  v13 = v0[22];
  v14 = v0[21];
  v0[4] = v0;
  sub_1B9E8B6F0();
  v16 = SFShockwaveEffectState.isRemoved.getter();
  (*(v13 + 8))(v15, v14);
  if (v16)
  {

    v9 = *(v12[4] + 8);

    return v9();
  }

  else
  {
    v11 = v12[16];
    v1 = sub_1B9ED8CDC();
    (*(*(v1 - 8) + 56))(v11, 1);

    v2 = swift_task_alloc();
    v12[24] = v2;
    *v2 = v12[4];
    v2[1] = sub_1B9E90A6C;
    v3 = v12[20];
    v4 = v12[16];
    v5 = v12[12];
    v6 = v12[11];
    v7 = v12[10];
    v8 = MEMORY[0x1E69E7CA8] + 8;

    return MEMORY[0x1EEE38098](v3, v7, v6, v4, &unk_1B9EDEC58, v5, v8);
  }
}

uint64_t sub_1B9E90A6C()
{
  v5 = *v1;
  v5[4] = *v1;
  v5[25] = v0;

  if (v0)
  {
    v2 = sub_1B9E910D8;
  }

  else
  {
    v4 = v5[16];

    sub_1B9E96C60(v4);
    v2 = sub_1B9E90BF8;
  }

  return MEMORY[0x1EEE6DFA0](v2);
}

uint64_t sub_1B9E90BF8()
{
  v23 = v0[19];
  v21 = v0[18];
  v22 = v0[17];
  v0[4] = v0;
  (*(v21 + 16))();
  if ((*(v21 + 88))(v23, v22) == *MEMORY[0x1E69CDCF0])
  {
    v1 = *(v20 + 120);
    v16 = *(v20 + 104);
    v15 = *(v20 + 112);
    (*(*(v20 + 144) + 8))(*(v20 + 152), *(v20 + 136));
    v2 = sub_1B9EA025C();
    (*(v15 + 16))(v1, v2, v16);
    v18 = sub_1B9ED85BC();
    v17 = sub_1B9ED8DCC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBE6160, &qword_1B9EDF3E0);
    v19 = sub_1B9ED914C();
    if (os_log_type_enabled(v18, v17))
    {
      v3 = *(v20 + 200);
      buf = sub_1B9ED8E8C();
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE5D80, &qword_1B9EDEC30);
      v12 = sub_1B9E945DC(0, v10, v10);
      v13 = sub_1B9E945DC(0, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      *(v20 + 48) = buf;
      *(v20 + 56) = v12;
      *(v20 + 64) = v13;
      sub_1B9E94630(0, (v20 + 48));
      sub_1B9E94630(0, (v20 + 48));
      *(v20 + 72) = v19;
      v14 = swift_task_alloc();
      v14[2] = v20 + 48;
      v14[3] = v20 + 56;
      v14[4] = v20 + 64;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBE6320, &qword_1B9EDEC60);
      sub_1B9E96D38();
      sub_1B9ED8BDC();
      if (v3)
      {
      }

      _os_log_impl(&dword_1B9E4B000, v18, v17, "Timed out waiting for shockwave animation to complete", buf, 2u);
      sub_1B9E94690(v12, 0, v10);
      sub_1B9E94690(v13, 0, MEMORY[0x1E69E7CA0] + 8);
      sub_1B9ED8E6C();
    }

    else
    {
    }

    v8 = *(v20 + 120);
    v9 = *(v20 + 104);
    v7 = *(v20 + 112);
    v5 = MEMORY[0x1E69E5920](v18);
    (*(v7 + 8))(v8, v9, v5);
  }

  else
  {
    (*(*(v20 + 144) + 8))(*(v20 + 152), *(v20 + 136));
  }

  (*(*(v20 + 144) + 8))(*(v20 + 160), *(v20 + 136));

  v6 = *(*(v20 + 32) + 8);

  return v6();
}

uint64_t sub_1B9E910EC(uint64_t a1, uint64_t a2)
{
  v2[4] = a2;
  v2[2] = v2;
  v2[3] = 0;
  v3 = sub_1B9ED890C();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE5F60, &qword_1B9EDF390);
  v2[8] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE5F68, &qword_1B9EDF398);
  v2[9] = v4;
  v2[10] = *(v4 - 8);
  v2[11] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE5D58, &qword_1B9EDEC00);
  v2[12] = v5;
  v2[13] = *(v5 - 8);
  v2[14] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE5F70, &qword_1B9EDF3A0);
  v2[15] = v6;
  v2[16] = *(v6 - 8);
  v2[17] = swift_task_alloc();
  v2[3] = a2;

  return MEMORY[0x1EEE6DFA0](sub_1B9E9137C);
}

uint64_t sub_1B9E9137C()
{
  v8 = v0[14];
  v7 = v0[13];
  v9 = v0[12];
  v11 = v0[11];
  v10 = v0[10];
  v12 = v0[9];
  v0[2] = v0;
  sub_1B9E8BC80();
  v1 = sub_1B9E98598();
  MEMORY[0x1BFAE98F0](v9, v1);
  (*(v7 + 8))(v8, v9);
  sub_1B9ED86CC();
  (*(v10 + 8))(v11, v12);
  v2 = swift_task_alloc();
  v13[18] = v2;
  v3 = sub_1B9E98620();
  *v2 = v13[2];
  v2[1] = sub_1B9E914F8;
  v4 = v13[15];
  v5 = v13[8];

  return (MEMORY[0x1EEE6D8E0])(v5, 0, 0, v4, v3);
}

uint64_t sub_1B9E914F8()
{
  *(*v1 + 16) = *v1;

  if (v0)
  {
    v2 = sub_1B9E91908;
  }

  else
  {
    v2 = sub_1B9E91658;
  }

  return MEMORY[0x1EEE6DFA0](v2);
}

uint64_t sub_1B9E91658()
{
  v1 = v0[8];
  v2 = v0[6];
  v3 = v0[5];
  v0[2] = v0;
  if ((*(v2 + 48))(v1, 1, v3) == 1)
  {
    (*(v13[16] + 8))(v13[17], v13[15]);
LABEL_8:

    v8 = *(v13[2] + 8);

    return v8();
  }

  (*(v13[6] + 32))(v13[7], v13[8], v13[5]);
  if (SFShockwaveEffectState.isRemoved.getter())
  {
    v11 = v13[17];
    v12 = v13[15];
    v10 = v13[16];
    (*(v13[6] + 8))(v13[7], v13[5]);
    (*(v10 + 8))(v11, v12);
    goto LABEL_8;
  }

  (*(v13[6] + 8))(v13[7], v13[5]);
  v4 = swift_task_alloc();
  v13[18] = v4;
  v5 = sub_1B9E98620();
  *v4 = v13[2];
  v4[1] = sub_1B9E914F8;
  v6 = v13[15];
  v7 = v13[8];

  return (MEMORY[0x1EEE6D8E0])(v7, 0, 0, v6, v5);
}

uint64_t sub_1B9E91918()
{
  v18 = MEMORY[0x1E69E85E0];
  v19 = &unk_1B9EDEC70;
  v23 = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE5D68, &qword_1B9EDEC08);
  v20 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1, v2, v3);
  v21 = v11 - v20;
  v23 = v0;
  v22 = sub_1B9E8C270();
  if (v22)
  {
    v16 = &v22;
    v17 = v22;

    sub_1B9E93A50(v16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE5D88, &unk_1B9EDEC38);
    sub_1B9ED8CEC();
  }

  else
  {
    sub_1B9E93A50(&v22);
  }

  v14 = 0;
  v4 = sub_1B9ED8CDC();
  (*(*(v4 - 8) + 56))(v21, 1);
  v11[2] = 7;
  v13 = swift_allocObject();
  v11[1] = v13 + 16;

  swift_weakInit();

  sub_1B9ED8CBC();
  v12 = sub_1B9ED8CAC();
  v5 = swift_allocObject();
  v6 = v18;
  v7 = v5;
  v8 = v13;
  v15 = v7;
  v7[2] = v12;
  v7[3] = v6;
  v7[4] = v8;

  v9 = sub_1B9E8E6AC(v14, v14, v21, v19, v15, MEMORY[0x1E69E7CA8] + 8);
  return sub_1B9E8C2D8(v9);
}

uint64_t sub_1B9E91B60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[13] = a4;
  v4[10] = v4;
  v4[11] = 0;
  v4[12] = 0;
  v5 = sub_1B9ED8FBC();
  v4[14] = v5;
  v4[15] = *(v5 - 8);
  v4[16] = swift_task_alloc();
  v6 = sub_1B9ED890C();
  v4[17] = v6;
  v4[18] = *(v6 - 8);
  v4[19] = swift_task_alloc();
  v4[11] = a4 + 16;
  sub_1B9ED8CBC();
  v4[20] = sub_1B9ED8CAC();
  v4[21] = sub_1B9ED8C6C();
  v4[22] = v7;

  return MEMORY[0x1EEE6DFA0](sub_1B9E91D0C);
}

uint64_t sub_1B9E91D0C()
{
  *(v0 + 80) = v0;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 184) = Strong;
  swift_endAccess();
  if (Strong)
  {
    v10 = *(v12 + 152);
    v1 = *(v12 + 144);
    *(v12 + 96) = Strong;
    v2 = v1 + 104;
    v3 = *(v1 + 104);
    *(v12 + 192) = v3;
    *(v12 + 200) = v2 & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
    v3();
    sub_1B9E8B784(v10);
    *(v12 + 64) = sub_1B9ED924C();
    *(v12 + 72) = v4;
    *(v12 + 40) = 0;
    *(v12 + 48) = 0;
    *(v12 + 56) = 1;
    v11 = sub_1B9E98518();
    sub_1B9E8E688();
    v5 = swift_task_alloc();
    *(v12 + 208) = v5;
    *v5 = *(v12 + 80);
    v5[1] = sub_1B9E91F98;
    v6 = *(v12 + 128);
    v7 = *(v12 + 112);

    return sub_1B9E92324(v12 + 64, v12 + 40, v6, v7, v11);
  }

  else
  {

    v9 = *(*(v12 + 80) + 8);

    return v9();
  }
}

uint64_t sub_1B9E91F98()
{
  v4 = *v1;
  v4[10] = *v1;
  v4[27] = v0;

  if (v0)
  {
    v2 = sub_1B9E92230;
  }

  else
  {
    (*(v4[15] + 8))(v4[16], v4[14]);
    v2 = sub_1B9E92138;
  }

  return MEMORY[0x1EEE6DFA0](v2);
}

uint64_t sub_1B9E92138()
{
  v1 = v0[24];
  v4 = v0[19];
  v0[10] = v0;
  v1();
  sub_1B9E8B784(v4);

  v2 = *(v0[10] + 8);

  return v2();
}

uint64_t sub_1B9E92230()
{
  v1 = *(v0 + 120);
  *(v0 + 80) = v0;
  (*(v1 + 8))();

  v2 = *(*(v0 + 80) + 8);

  return v2();
}

uint64_t sub_1B9E92324(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = v5;
  *(v5 + 16) = v5;
  v6 = swift_task_alloc();
  *(v8 + 24) = v6;
  *v6 = *(v8 + 16);
  v6[1] = sub_1B9E92410;

  return sub_1B9E94958(a1, a2, a4, a5);
}

uint64_t sub_1B9E92410()
{
  v2 = *v1;
  *(v2 + 16) = *v1;
  v5 = v2 + 16;

  if (v0)
  {
    v3 = *(*v5 + 8);
  }

  else
  {
    v3 = *(*v5 + 8);
  }

  return v3();
}

uint64_t sub_1B9E9259C(uint64_t a1)
{
  v11 = a1;
  v20 = 0;
  v19 = 0;
  v7 = 0;
  v10 = sub_1B9ED897C();
  v13 = *(v10 - 8);
  v9 = v10 - 8;
  v8 = (*(v13 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0, v2, v3);
  v14 = &v7 - v8;
  v18 = sub_1B9ED87AC();
  v15 = *(v18 - 8);
  v16 = v18 - 8;
  v12 = (*(v15 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](v14, v11, v10);
  v17 = &v7 - v12;
  v20 = v5;
  v19 = v1;
  (*(v13 + 16))(v4);
  sub_1B9ED87BC();
  sub_1B9E92718(v17);
  return (*(v15 + 8))(v17, v18);
}

uint64_t sub_1B9E92718(uint64_t a1)
{
  v51 = a1;
  v65 = 0;
  v64 = 0;
  v66 = 0;
  v45 = 0;
  v33 = sub_1B9ED876C();
  v34 = *(v33 - 8);
  v35 = v33 - 8;
  v36 = (*(v34 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0, v2, v3);
  v37 = &v24 - v36;
  v38 = sub_1B9ED895C();
  v39 = *(v38 - 8);
  v40 = v38 - 8;
  v41 = (*(v39 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v38, v4, v5);
  v42 = &v24 - v41;
  v66 = &v24 - v41;
  v43 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBE5D70, &unk_1B9EDEC20) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v45, v6, v7);
  v44 = &v24 - v43;
  v46 = sub_1B9ED896C();
  v47 = *(v46 - 8);
  v48 = v46 - 8;
  v49 = (*(v47 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v45, v8, v9);
  v50 = &v24 - v49;
  v55 = sub_1B9ED890C();
  v53 = *(v55 - 8);
  v54 = v55 - 8;
  v52 = (*(v53 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v51, v10, v11);
  v56 = &v24 - v52;
  v65 = v12;
  v64 = v1;
  sub_1B9E8B6F0();
  v57 = SFShockwaveEffectState.isLogicallyComplete.getter();
  (*(v53 + 8))(v56, v55);
  result = v57;
  if ((v57 & 1) == 0)
  {
    sub_1B9ED879C();
    v32 = (*(v47 + 88))(v50, v46);
    if (v32 == *MEMORY[0x1E69CDD70])
    {
      (*(v47 + 96))(v50, v46);
      (*(v53 + 104))(v56, *MEMORY[0x1E69CDD00], v55);
      sub_1B9E8B784(v56);
      v14 = sub_1B9ED893C();
      return (*(*(v14 - 8) + 8))(v50);
    }

    else if (v32 == *MEMORY[0x1E69CDD80])
    {
      (*(v47 + 96))(v50, v46);
      (*(v39 + 32))(v42, v50, v38);
      v66 = v42;
      sub_1B9ED878C();
      v30 = (*(v34 + 88))(v37, v33);
      if (v30 == *MEMORY[0x1E69CDB50])
      {
        v61[0] = sub_1B9ED894C();
        v61[1] = v16;
        v29 = v16 != 0;
        v28 = v29;
        sub_1B9E96F0C(v61);
        if (v28)
        {
          v17 = sub_1B9E8B020();
          v27 = v59;
          v59[3] = &unk_1F37E6848;
          v59[4] = &off_1F37E69B0;
          v59[0] = v17;
          sub_1B9ED877C();
          sub_1B9E8EC68(v27, v44, 1u);
          sub_1B9E93BA4(v44);
          __swift_destroy_boxed_opaque_existential_1(v27);
        }

        else
        {
          sub_1B9ED877C();
          v26 = &v60;
          sub_1B9E8EC14(&v60);
          v18 = sub_1B9E8EC5C();
          sub_1B9E8EC68(v26, v44, v18 & 1);
          __swift_destroy_boxed_opaque_existential_1(v26);
          sub_1B9E93BA4(v44);
        }
      }

      else if (v30 == *MEMORY[0x1E69CDB58])
      {
        v19 = sub_1B9E8B020();
        v25 = v62;
        v62[3] = &unk_1F37E6848;
        v62[4] = &off_1F37E69B0;
        v62[0] = v19;
        sub_1B9ED8F7C();
        v20 = sub_1B9ED8FAC();
        (*(*(v20 - 8) + 56))(v44, 0, 1);
        v21 = sub_1B9E8EC5C();
        sub_1B9E8EC68(v25, v44, v21 & 1);
        sub_1B9E93BA4(v44);
        __swift_destroy_boxed_opaque_existential_1(v25);
      }

      else
      {
        sub_1B9ED877C();
        v24 = &v63;
        sub_1B9E8EC14(&v63);
        v22 = sub_1B9E8EC5C();
        sub_1B9E8EC68(v24, v44, v22 & 1);
        __swift_destroy_boxed_opaque_existential_1(v24);
        sub_1B9E93BA4(v44);
        (*(v34 + 8))(v37, v33);
      }

      return (*(v39 + 8))(v42, v38);
    }

    else if (v32 == *MEMORY[0x1E69CDD78])
    {
      (*(v47 + 96))(v50, v46);
      sub_1B9E91918();
      v23 = sub_1B9ED892C();
      return (*(*(v23 - 8) + 8))(v50);
    }

    else if (v32 == *MEMORY[0x1E69CDD68])
    {
      sub_1B9ED877C();
      v31 = &v58;
      sub_1B9E8EC14(&v58);
      v15 = sub_1B9E8EC5C();
      sub_1B9E8EC68(v31, v44, v15 & 1);
      __swift_destroy_boxed_opaque_existential_1(v31);
      return sub_1B9E93BA4(v44);
    }

    else
    {
      (*(v53 + 104))(v56, *MEMORY[0x1E69CDD18], v55);
      sub_1B9E8B784(v56);
      return (*(v47 + 8))(v50, v46);
    }
  }

  return result;
}

uint64_t sub_1B9E931D4()
{
  v18 = 0;
  v14 = sub_1B9ED890C();
  v10 = *(v14 - 8);
  v11 = v14 - 8;
  v8 = (*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v14, v1, v2);
  v12 = &v7 - v8;
  v9 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v7 - v8, v4, v5);
  v13 = &v7 - v9;
  v18 = v0;
  sub_1B9E8B6F0();
  (*(v10 + 104))(v12, *MEMORY[0x1E69CDD00], v14);
  v17 = sub_1B9ED88FC();
  v16 = *(v10 + 8);
  v15 = v10 + 8;
  v16(v12, v14);
  v16(v13, v14);
  result = v17;
  if (v17)
  {
    return sub_1B9E91918();
  }

  return result;
}

uint64_t ShockwaveAnimationCoordinator.deinit()
{
  v3 = OBJC_IVAR____TtC9SharingUI29ShockwaveAnimationCoordinator__state;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE5D50, &qword_1B9EDEBF8);
  (*(*(v1 - 8) + 8))(v0 + v3);
  sub_1B9E93A50((v0 + OBJC_IVAR____TtC9SharingUI29ShockwaveAnimationCoordinator_animationTask));
  return v4;
}

uint64_t sub_1B9E93454@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for ShockwaveAnimationCoordinator(0);
  result = sub_1B9ED86DC();
  *a2 = result;
  return result;
}

uint64_t static ShockwaveAnimationCoordinator.== infix(_:_:)(uint64_t a1, uint64_t a2)
{

  sub_1B9ED8A7C();

  sub_1B9ED8A7C();
  return sub_1B9ED8A6C() & 1;
}

uint64_t sub_1B9E93528@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5[1] = a3;
  v8 = a1;
  v9 = a2;
  v10 = a2;
  v6 = *(a2 - 8);
  v7 = a2 - 8;
  v5[0] = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](a1, a1, a2);
  v5[2] = v5 - v5[0];
  (*(v6 + 16))(v3);
  sub_1B9ED86EC();
  return (*(v6 + 8))(v8, v9);
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  v5 = *a1;
  if (!*a1)
  {
    TypeByMangledNameInContext2 = swift_getTypeByMangledNameInContext2();
    *a1 = TypeByMangledNameInContext2;
    return TypeByMangledNameInContext2;
  }

  return v5;
}

uint64_t sub_1B9E93684(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  *(a2 + 24) = v2;
  *(a2 + 32) = *(a1 + 32);
  (**(v2 - 8))(a2);
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(void *a1)
{
  v2 = a1[3];
  if ((*(*(v2 - 8) + 80) & 0x20000) != 0)
  {
  }

  else
  {
    return (*(*(v2 - 8) + 8))(a1);
  }
}

uint64_t sub_1B9E937CC(uint64_t a1)
{
  v6 = v2;
  *(v2 + 16) = v2;
  v5 = *(sub_1B9ED8FAC() - 8);
  v10 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v11 = (v10 + *(v5 + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v3 = swift_task_alloc();
  *(v6 + 24) = v3;
  *v3 = *(v6 + 16);
  v3[1] = sub_1B9E93928;

  return sub_1B9E8C888(a1, v7, v8, v9, v1 + v10, v1 + v11);
}

uint64_t sub_1B9E93928()
{
  v3 = *v0;
  *(v3 + 16) = *v0;

  v1 = *(*(v3 + 16) + 8);

  return v1();
}

void *sub_1B9E93A7C(const void *a1, void *a2)
{
  v6 = sub_1B9ED8FAC();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBE5D70, &unk_1B9EDEC20);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t sub_1B9E93BA4(uint64_t a1)
{
  v3 = sub_1B9ED8FAC();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

uint64_t sub_1B9E93D24(uint64_t a1)
{
  sub_1B9E9814C();
  sub_1B9E982CC();
  return sub_1B9ED90CC();
}

uint64_t sub_1B9E93D60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B9E9814C();
  sub_1B9E982CC();
  return sub_1B9ED909C();
}

uint64_t sub_1B9E93DAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B9E9814C();
  sub_1B9E982CC();
  return sub_1B9ED90AC() & 1;
}

uint64_t sub_1B9E93DFC(uint64_t a1, uint64_t a2)
{
  sub_1B9E9814C();
  sub_1B9E982CC();
  return sub_1B9ED90BC();
}

uint64_t sub_1B9E93E48(uint64_t a1)
{
  sub_1B9E981CC();
  sub_1B9E982CC();
  return sub_1B9ED90CC();
}

uint64_t sub_1B9E93E84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B9E981CC();
  sub_1B9E982CC();
  return sub_1B9ED909C();
}

uint64_t sub_1B9E93ED0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B9E981CC();
  sub_1B9E982CC();
  return sub_1B9ED90AC() & 1;
}

uint64_t sub_1B9E93F20(uint64_t a1, uint64_t a2)
{
  sub_1B9E981CC();
  sub_1B9E982CC();
  return sub_1B9ED90BC();
}

uint64_t sub_1B9E93F6C(uint64_t a1)
{
  sub_1B9E9824C();
  sub_1B9E982CC();
  return sub_1B9ED90CC();
}

uint64_t sub_1B9E93FA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B9E9824C();
  sub_1B9E982CC();
  return sub_1B9ED909C();
}

uint64_t sub_1B9E93FF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B9E9824C();
  sub_1B9E982CC();
  return sub_1B9ED90AC() & 1;
}

uint64_t sub_1B9E94044(uint64_t a1, uint64_t a2)
{
  sub_1B9E9824C();
  sub_1B9E982CC();
  return sub_1B9ED90BC();
}

void sub_1B9E94160(uint64_t a2@<X8>)
{
  sub_1B9E9419C();
  *a2 = v2;
  *(a2 + 8) = v3 & 1;
}

uint64_t sub_1B9E942A4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1B9E942DC(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1B9E942DC(uint64_t a1, uint64_t a2)
{

  v3 = sub_1B9ED8A9C();
  MEMORY[0x1E69E5928](v3);

  MEMORY[0x1E69E5920](v3);
  return v3;
}

uint64_t sub_1B9E94348@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B9E9437C(*v1);
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1B9E9437C(uint64_t a1)
{
  MEMORY[0x1E69E5928](a1);
  v3 = sub_1B9ED8AAC();
  MEMORY[0x1E69E5920](a1);
  return v3;
}

uint64_t sub_1B9E943DC(uint64_t a1)
{
  sub_1B9E98444();
  sub_1B9E9814C();
  return sub_1B9ED907C();
}

uint64_t sub_1B9E94428(uint64_t a1)
{
  sub_1B9E983C4();
  sub_1B9E981CC();
  return sub_1B9ED907C();
}

uint64_t sub_1B9E94474(uint64_t a1)
{
  sub_1B9E98344();
  sub_1B9E9824C();
  return sub_1B9ED907C();
}

uint64_t sub_1B9E945DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    return sub_1B9ED8E8C();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B9E94630(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_1B9E94690(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    sub_1B9ED8E7C();
    return sub_1B9ED8E6C();
  }

  return result;
}

uint64_t sub_1B9E946F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = a3;
  v8[1] = a4;
  v9 = *(a3 - 8);
  v10 = a3 - 8;
  v8[0] = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](a1, a2, a3);
  v11 = v8 - v8[0];
  v5(v4);
  v13 = sub_1B9ED90DC();
  v14 = v6;
  (*(v9 + 8))(v11, v12);
  return v13;
}

uint64_t sub_1B9E947E8@<X0>(uint64_t a1@<X0>, uint64_t *a7@<X8>)
{
  if (!a1)
  {
    sub_1B9ED8FFC();
    __break(1u);
  }

  result = swift_task_create();
  *a7 = result;
  return result;
}

uint64_t sub_1B9E94958(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[7] = v4;
  v5[6] = a4;
  v5[5] = a3;
  v5[4] = a2;
  v5[3] = a1;
  v5[2] = v5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5[8] = AssociatedTypeWitness;
  v5[9] = *(AssociatedTypeWitness - 8);
  v5[10] = swift_task_alloc();
  v5[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B9E94A84);
}

uint64_t sub_1B9E94A84()
{
  v9 = v0[10];
  v8 = v0[9];
  v10 = v0[8];
  v0[2] = v0;
  sub_1B9ED91AC();
  swift_getAssociatedConformanceWitness();
  sub_1B9ED8FCC();
  v1 = *(v8 + 8);
  v0[12] = v1;
  v0[13] = (v8 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v1(v9, v10);
  v2 = swift_task_alloc();
  v11[14] = v2;
  *v2 = v11[2];
  v2[1] = sub_1B9E94BEC;
  v3 = v11[11];
  v4 = v11[6];
  v5 = v11[5];
  v6 = v11[4];

  return MEMORY[0x1EEE6DE58](v3, v6, v5, v4);
}

uint64_t sub_1B9E94BEC()
{
  v4 = *v1;
  *(v4 + 16) = *v1;
  *(v4 + 120) = v0;

  if (v0)
  {
    (*(v4 + 96))(*(v4 + 88), *(v4 + 64));

    return MEMORY[0x1EEE6DFA0](sub_1B9E94DBC);
  }

  else
  {
    (*(v4 + 96))();

    v2 = *(*(v4 + 16) + 8);

    return v2();
  }
}

uint64_t sub_1B9E94DBC()
{
  *(v0 + 16) = v0;

  v1 = *(*(v0 + 16) + 8);

  return v1();
}

void *sub_1B9E94E8C(void *a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v4 = (a4)(a1, a2);
  sub_1B9E94F28(v4, v5, a3);
  v8 = *a1;

  sub_1B9ED8EBC();
  result = a1;
  *a1 = v8 + 8;
  return result;
}

uint64_t sub_1B9E94F28(uint64_t a1, uint64_t a2, uint64_t *a3)
{

  v14 = sub_1B9E950CC(&v17, 0, 0, 1, a1, a2);
  v15 = v3;
  v16 = v4;
  v11 = v17;
  swift_unknownObjectRetain();
  if (v14)
  {
    swift_unknownObjectRelease();

    v12[3] = swift_getObjectType();
    swift_unknownObjectRetain();
    v12[0] = v14;
    v6 = *a3;
    if (*a3)
    {
      sub_1B9E98714(v12, v6);
      swift_unknownObjectRelease();
      *a3 = v6 + 32;
    }

    else
    {
      swift_unknownObjectRelease();
    }

    __swift_destroy_boxed_opaque_existential_1(v12);
  }

  else
  {
    v13[3] = MEMORY[0x1E69E6A18];
    v13[0] = a1;
    v13[1] = a2;
    v7 = *a3;
    if (*a3)
    {
      sub_1B9E98714(v13, v7);
      swift_unknownObjectRelease();
      *a3 = v7 + 32;
    }

    else
    {
      swift_unknownObjectRelease();
    }

    __swift_destroy_boxed_opaque_existential_1(v13);
  }

  return v11;
}

void *sub_1B9E950CC(void *result, char *a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v19 = result;
  v25 = a6;
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (a2)
      {
        if (!a3)
        {
          __break(1u);
        }

        v18 = a3 - a2;
      }

      else
      {
        v18 = 0;
      }

      v17 = (a6 & 0xF00000000000000uLL) >> 56;
      if (v17 < v18)
      {
        if (a2)
        {
          v16 = a2;
        }

        else
        {
          sub_1B9ED8FFC();
          __break(1u);
        }

        v22[0] = a5;
        v22[1] = a6 & (-bswap64(0xFFuLL) - 1);
        sub_1B9E95484(v22, v17, v16);
        sub_1B9ED8ECC();
        *v19 = v16;
        v12 = 0;
        v13 = v17;
        v14 = 1;
        v15 = 0;
        goto LABEL_28;
      }
    }

    goto LABEL_14;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
LABEL_14:
    v6 = sub_1B9E95600(a5, a6);
    *v19 = v7;
    v12 = v6;
    v13 = v8;
    v14 = 0;
    v15 = 1;
LABEL_28:
    v22[2] = v12;
    v22[3] = v13;
    v23 = v14 & 1;
    v24 = v15 & 1;
    return v12;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    if ((a6 & 0xFFFFFFFFFFFFFFFLL) != 0xFFFFFFFFFFFFFFE0)
    {
      v11 = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
      goto LABEL_23;
    }

    __break(1u);
  }

  result = sub_1B9ED8F1C();
  if (result)
  {
    v10 = result;
  }

  else
  {
    result = sub_1B9ED8FFC();
    __break(1u);
  }

  v11 = v10;
LABEL_23:
  *v19 = v11;
  if (a6 < 0)
  {
    v9 = 0;
LABEL_27:
    v12 = v9;
    v13 = a5 & 0xFFFFFFFFFFFFLL;
    v14 = 0;
    v15 = 0;
    goto LABEL_28;
  }

  if ((a6 & 0xFFFFFFFFFFFFFFFLL) != 0)
  {
    swift_unknownObjectRetain();
    v9 = a6 & 0xFFFFFFFFFFFFFFFLL;
    goto LABEL_27;
  }

  __break(1u);
  return result;
}

char *sub_1B9E95484(char *result, int64_t a2, char *a3)
{
  if (a2 < 0)
  {
LABEL_7:
    result = sub_1B9ED904C();
    __break(1u);
    goto LABEL_8;
  }

  if ((a2 * 1) >> 64 == a2 >> 63)
  {
    if (result >= &a3[a2] || a3 >= &result[a2])
    {
      memcpy(a3, result, a2);
      return a3;
    }

    sub_1B9ED904C();
    __break(1u);
    goto LABEL_7;
  }

LABEL_8:
  __break(1u);
  return result;
}

void *sub_1B9E95600(uint64_t a1, uint64_t a2)
{
  v7 = sub_1B9E956BC(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE5F88, &qword_1B9EDF3A8);
  inited = swift_initStackObject();
  sub_1B9E95ECC(inited, 1);
  *v3 = 0;
  sub_1B9E95F18();
  sub_1B9E95F4C(v4);

  v8 = sub_1B9E962F4(v7);

  result = v8;
  if (!__OFSUB__(v8, 1))
  {
    return v7;
  }

  __break(1u);
  return result;
}

void *sub_1B9E956BC(uint64_t a1, uint64_t a2)
{
  v17[2] = a2;
  if ((a2 & 0x1000000000000000) != 0)
  {
    v13 = sub_1B9ED8B4C();
  }

  else
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v12 = (a2 & 0xF00000000000000uLL) >> 56;
    }

    else
    {
      v12 = a1 & 0xFFFFFFFFFFFFLL;
    }

    v13 = v12;
  }

  if (!v13)
  {
    return sub_1B9E96814();
  }

  v10 = sub_1B9E9630C(v13, 0);

  v11 = (v10 + 4);

  if (v13 < 0)
  {
LABEL_30:
    sub_1B9ED904C();
    __break(1u);
    return sub_1B9E96814();
  }

  v16[12] = a2;
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v16[0] = a1;
      v16[1] = a2 & (-bswap64(0xFFuLL) - 1);
      if (v13 >= ((a2 & 0xF00000000000000uLL) >> 56))
      {
        sub_1B9E96450(v16, (a2 & 0xF00000000000000uLL) >> 56, v11);
        v8 = (a2 & 0xF00000000000000uLL) >> 56;
        goto LABEL_26;
      }

      goto LABEL_29;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      if ((a2 & 0xFFFFFFFFFFFFFFFLL) != 0xFFFFFFFFFFFFFFE0)
      {
        v6 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
        v7 = a1 & 0xFFFFFFFFFFFFLL;
        goto LABEL_22;
      }

      __break(1u);
    }

    v6 = sub_1B9ED8F1C();
    v7 = v3;
LABEL_22:
    if (v13 >= v7)
    {
      if (!v6)
      {
        __break(1u);
      }

      sub_1B9E96450(v6, v7, v11);
      v8 = v7;
      goto LABEL_26;
    }

    goto LABEL_29;
  }

  v9 = sub_1B9ED8F0C();
  if (v2)
  {
LABEL_29:
    sub_1B9ED8FFC();
    __break(1u);
    goto LABEL_30;
  }

  v8 = v9;
LABEL_26:
  v16[11] = 0xE000000000000000;

  v17[0] = 0;
  v17[1] = 0xE000000000000000;
  v16[10] = 0xE000000000000000;
  if (v8 != v13)
  {
    sub_1B9ED8FFC();
    __break(1u);
  }

  sub_1B9E96F0C(v17);
  return v10;
}

uint64_t sub_1B9E95ECC(uint64_t a1, uint64_t a2)
{

  *(a1 + 16) = a2;
  *(a1 + 24) = 2 * a2;

  return a1;
}

void sub_1B9E95F4C(uint64_t a1)
{
  v18 = sub_1B9E962F4(a1);
  v2 = sub_1B9E962F4(*v1);
  v19 = v2 + v18;
  if (__OFADD__(v2, v18))
  {
    goto LABEL_31;
  }

  v14 = *v17;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v17 = v14;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0 || v19 > *(*v17 + 24) >> 1)
  {
    if (*(*v17 + 16) < v19)
    {
      v13 = v19;
    }

    else
    {
      v13 = *(*v17 + 16);
    }

    v12 = *v17;

    *v17 = sub_1B9E96844(isUniquelyReferenced_nonNull_native, v13, 1, v12);
  }

  v4 = *(*v17 + 16);
  v10 = (*v17 + 32 + v4);
  v5 = *(*v17 + 24) >> 1;
  v11 = v5 - v4;
  if (__OFSUB__(v5, v4))
  {
    goto LABEL_32;
  }

  if (v11 < 0)
  {
LABEL_30:
    sub_1B9ED904C();
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!sub_1B9E969B0(a1))
  {
LABEL_21:

    if (v18 <= 0)
    {
      goto LABEL_28;
    }

    sub_1B9ED8FFC();
    __break(1u);
    goto LABEL_30;
  }

  if (v11 < v18)
  {
    sub_1B9ED8FFC();
    __break(1u);
    goto LABEL_21;
  }

  sub_1B9E96450((a1 + 32), v18, v10);

  swift_unknownObjectRelease();
  if (v18 <= 0)
  {
    goto LABEL_28;
  }

  v7 = *(*v17 + 16);
  v9 = v7 + v18;
  if (!__OFADD__(v7, v18))
  {
    *(*v17 + 16) = v9;
LABEL_28:
    sub_1B9E947DC();
    return;
  }

LABEL_33:
  __break(1u);
}

void *sub_1B9E9630C(uint64_t a1, uint64_t a2)
{
  if (a2 < a1)
  {
    v7 = a1;
  }

  else
  {
    v7 = a2;
  }

  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE5F88, &qword_1B9EDF3A8);
    v6 = swift_allocObject();

    if (_swift_stdlib_has_malloc_size())
    {
      v4 = _swift_stdlib_malloc_size(v6) - 32;
      v6[2] = a1;
      v6[3] = 2 * v4;
    }

    else
    {
      v6[2] = a1;
      v6[3] = 2 * v7;
    }

    return v6;
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];

    return v3;
  }
}

void *sub_1B9E96450(char *a1, size_t a2, char *a3)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    if (a1 >= &a3[a2] || a3 >= &a1[a2])
    {
      return memcpy(a3, a1, a2);
    }

    sub_1B9ED904C();
    __break(1u);
  }

  result = sub_1B9ED904C();
  __break(1u);
  return result;
}

unint64_t sub_1B9E965A0(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = a1;
  if ((a3 & 0x1000000000000000) != 0 && (a2 & 0x800000000000000) == 0)
  {
    v10 = a1 >> 16;
    if ((a3 & 0x1000000000000000) != 0)
    {
      v9 = MEMORY[0x1BFAE9D00](15, v10, a2, a3);
LABEL_11:
      if (v11 >> 14)
      {
        v7 = ((v9 >> 16) + (v11 >> 14)) << 16;
      }

      else
      {
        v7 = v9 & 0xFFFFFFFFFFFFFFFCLL | v11 & 3;
      }

      return v7 | 8;
    }

    if ((v10 & 0x8000000000000000) == 0)
    {
      v8 = (a3 & 0x2000000000000000) != 0 ? (a3 & 0xF00000000000000uLL) >> 56 : a2 & 0xFFFFFFFFFFFFLL;
      if (v8 >= v10)
      {
        v9 = (v10 << 16) | 4;
        goto LABEL_11;
      }
    }

    sub_1B9ED8FFC();
    __break(1u);
  }

  v5 = sub_1B9ED8B8C();
  if (v11 >> 14)
  {
    v4 = ((v5 >> 16) + (v11 >> 14)) << 16;
  }

  else
  {
    v4 = v5 & 0xFFFFFFFFFFFFFFFCLL | v11 & 3;
  }

  return v4 | 4;
}

uint64_t sub_1B9E96814()
{
  v1 = MEMORY[0x1E69E7CC0];

  return v1;
}

char *sub_1B9E96844(char *result, uint64_t a2, char a3, uint64_t a4)
{
  v7 = result;
  v9 = *(a4 + 24) >> 1;
  if (a3)
  {
    if (v9 < a2)
    {
      if ((v9 * 2) >> 64 != (2 * v9) >> 63)
      {
        __break(1u);
        return result;
      }

      if (2 * v9 < a2)
      {
        v6 = a2;
      }

      else
      {
        v6 = 2 * v9;
      }
    }

    else
    {
      v6 = *(a4 + 24) >> 1;
    }
  }

  else
  {
    v6 = a2;
  }

  v4 = *(a4 + 16);
  v5 = sub_1B9E9630C(v4, v6);
  if (v7)
  {
    sub_1B9E969B8((a4 + 32), v4, v5 + 32);

    *(a4 + 16) = 0;
  }

  else
  {

    sub_1B9E96450((a4 + 32), v4, v5 + 32);
    swift_unknownObjectRelease();
  }

  return v5;
}

char *sub_1B9E969B8(char *result, size_t a2, char *a3)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    result = sub_1B9ED904C();
    __break(1u);
  }

  else if (a3 < result || a3 >= &result[a2] || a3 != result)
  {
    return memmove(a3, result, a2);
  }

  return result;
}

_BYTE **sub_1B9E96AE0(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_1B9E96B14@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1B9ED8FAC();
  v3 = v1 + ((*(*(v2 - 8) + 80) + 16) & ~*(*(v2 - 8) + 80));

  return sub_1B9E9049C(v3, a1);
}

uint64_t sub_1B9E96BA4(uint64_t a1)
{
  v4 = v1;
  *(v1 + 16) = v1;
  v2 = swift_task_alloc();
  *(v4 + 24) = v2;
  *v2 = *(v4 + 16);
  v2[1] = sub_1B9E93928;

  return sub_1B9E910EC(a1, v5);
}

uint64_t sub_1B9E96C60(uint64_t a1)
{
  v3 = sub_1B9ED8CDC();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

unint64_t sub_1B9E96D38()
{
  v2 = qword_1EBBE5DA0;
  if (!qword_1EBBE5DA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBBE6320, &qword_1B9EDEC60);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBE5DA0);
    return WitnessTable;
  }

  return v2;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  v5 = *a1;
  if (!*a1)
  {
    TypeByMangledNameInContextInMetadataState2 = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = TypeByMangledNameInContextInMetadataState2;
    return TypeByMangledNameInContextInMetadataState2;
  }

  return v5;
}

uint64_t sub_1B9E96E34(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_1B9E93928;

  return sub_1B9E91B60(a1, v6, v7, v8);
}

uint64_t type metadata accessor for ShockwaveAnimationCoordinator(uint64_t a1)
{
  v2 = qword_1EBBE5E90;
  if (!qword_1EBBE5E90)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

uint64_t sub_1B9E96FE8(uint64_t a1)
{
  v3 = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return v3;
}

unint64_t sub_1B9E97158(uint64_t a1)
{
  updated = sub_1B9E974FC(319);
  if (v1 <= 0x3F)
  {
    updated = swift_updateClassMetadata2();
    if (!updated)
    {
      return 0;
    }
  }

  return updated;
}

uint64_t dispatch thunk of ShockwaveAnimationCoordinator.waitUntilAnimationCompletes(timeout:)(uint64_t a1, uint64_t a2)
{
  v6 = v3;
  *(v3 + 16) = v3;
  v8 = (*(*v2 + 192) + **(*v2 + 192));
  v4 = swift_task_alloc();
  *(v6 + 24) = v4;
  *v4 = *(v6 + 16);
  v4[1] = sub_1B9E93928;

  return v8(a1, a2);
}

uint64_t dispatch thunk of ShockwaveAnimationCoordinator.update(using:)()
{
  return (*(*v0 + 208))();
}

{
  return (*(*v0 + 216))();
}

unint64_t sub_1B9E974FC(uint64_t a1)
{
  v5 = qword_1EBBE5EA0;
  if (!qword_1EBBE5EA0)
  {
    sub_1B9ED890C();
    v4 = sub_1B9ED874C();
    v5 = v4;
    if (!v1)
    {
      v2 = v4;
      atomic_store(v4, &qword_1EBBE5EA0);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for UIInterfaceOrientationMask(uint64_t a1)
{
  v5 = qword_1EBBE5EA8;
  if (!qword_1EBBE5EA8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_1EBBE5EA8);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for SFUIUserInterfaceLayoutDirection(uint64_t a1)
{
  v5 = qword_1EBBE5EB0;
  if (!qword_1EBBE5EB0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_1EBBE5EB0);
      return v2;
    }
  }

  return v5;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1B9E976D8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (*(a1 + 16))
    {
      v3 = *a1;
    }

    else
    {
      v3 = -1;
    }
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t sub_1B9E977E4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    if (a3)
    {
      *(result + 16) = 1;
    }
  }

  else if (a3)
  {
    *(result + 16) = 0;
  }

  return result;
}

unint64_t type metadata accessor for CGSize(uint64_t a1)
{
  v5 = qword_1EBBE5EB8;
  if (!qword_1EBBE5EB8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_1EBBE5EB8);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for DocumentType(uint64_t a1)
{
  v5 = qword_1EBBE5EC0;
  if (!qword_1EBBE5EC0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_1EBBE5EC0);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for DocumentAttributeKey(uint64_t a1)
{
  v5 = qword_1EBBE5EC8;
  if (!qword_1EBBE5EC8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_1EBBE5EC8);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for URLResourceKey(uint64_t a1)
{
  v5 = qword_1EBBE5ED0;
  if (!qword_1EBBE5ED0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_1EBBE5ED0);
      return v2;
    }
  }

  return v5;
}

unint64_t sub_1B9E97C0C()
{
  v2 = qword_1EBBE5ED8;
  if (!qword_1EBBE5ED8)
  {
    type metadata accessor for URLResourceKey(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBE5ED8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B9E97CA4()
{
  v2 = qword_1EBBE5EE0;
  if (!qword_1EBBE5EE0)
  {
    type metadata accessor for URLResourceKey(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBE5EE0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B9E97D3C()
{
  v2 = qword_1EBBE5EE8;
  if (!qword_1EBBE5EE8)
  {
    type metadata accessor for DocumentAttributeKey(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBE5EE8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B9E97DD4()
{
  v2 = qword_1EBBE5EF0;
  if (!qword_1EBBE5EF0)
  {
    type metadata accessor for DocumentAttributeKey(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBE5EF0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B9E97E6C()
{
  v2 = qword_1EBBE5EF8;
  if (!qword_1EBBE5EF8)
  {
    type metadata accessor for DocumentType(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBE5EF8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B9E97F04()
{
  v2 = qword_1EBBE5F00;
  if (!qword_1EBBE5F00)
  {
    type metadata accessor for DocumentType(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBE5F00);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B9E97F9C()
{
  v2 = qword_1EBBE5F08;
  if (!qword_1EBBE5F08)
  {
    type metadata accessor for DocumentType(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBE5F08);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B9E98034()
{
  v2 = qword_1EBBE5F10;
  if (!qword_1EBBE5F10)
  {
    type metadata accessor for DocumentAttributeKey(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBE5F10);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B9E980CC()
{
  v2 = qword_1EBBE5F18;
  if (!qword_1EBBE5F18)
  {
    type metadata accessor for URLResourceKey(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBE5F18);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B9E9814C()
{
  v2 = qword_1EBBE5F20;
  if (!qword_1EBBE5F20)
  {
    type metadata accessor for URLResourceKey(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBE5F20);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B9E981CC()
{
  v2 = qword_1EBBE5F28;
  if (!qword_1EBBE5F28)
  {
    type metadata accessor for DocumentAttributeKey(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBE5F28);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B9E9824C()
{
  v2 = qword_1EBBE5F30;
  if (!qword_1EBBE5F30)
  {
    type metadata accessor for DocumentType(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBE5F30);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B9E982CC()
{
  v2 = qword_1EBBE5F38;
  if (!qword_1EBBE5F38)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBE5F38);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B9E98344()
{
  v2 = qword_1EBBE5F40;
  if (!qword_1EBBE5F40)
  {
    type metadata accessor for DocumentType(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBE5F40);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B9E983C4()
{
  v2 = qword_1EBBE5F48;
  if (!qword_1EBBE5F48)
  {
    type metadata accessor for DocumentAttributeKey(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBE5F48);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B9E98444()
{
  v2 = qword_1EBBE5F50;
  if (!qword_1EBBE5F50)
  {
    type metadata accessor for URLResourceKey(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBE5F50);
    return WitnessTable;
  }

  return v2;
}

void *__swift_coroFrameAllocStub(size_t a1, uint64_t a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    return swift_coroFrameAlloc();
  }

  else
  {
    return malloc(a1);
  }
}

unint64_t sub_1B9E98518()
{
  v2 = qword_1EBBE5F58;
  if (!qword_1EBBE5F58)
  {
    sub_1B9ED8FBC();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBE5F58);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B9E98598()
{
  v2 = qword_1EBBE5F78;
  if (!qword_1EBBE5F78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBE5D58, &qword_1B9EDEC00);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBE5F78);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B9E98620()
{
  v2 = qword_1EBBE5F80;
  if (!qword_1EBBE5F80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBE5F70, &qword_1B9EDF3A0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBE5F80);
    return WitnessTable;
  }

  return v2;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  v2 = *(*(a2 - 8) + 80);
  if ((v2 & 0x20000) != 0)
  {
    return (*result + ((v2 + 16) & ~v2));
  }

  return result;
}

uint64_t sub_1B9E98714(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  *(a2 + 24) = v2;
  (**(v2 - 8))(a2);
  return a2;
}

void *sub_1B9E987AC(const void *a1, void *a2)
{
  v6 = sub_1B9ED8CDC();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE5D68, &qword_1B9EDEC08);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

unint64_t sub_1B9E988D4()
{
  v2 = qword_1EBBE5FA8;
  if (!qword_1EBBE5FA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBE5FA0, &qword_1B9EDF3C0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBE5FA8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B9E98988()
{
  v2 = qword_1EBBE5FB8;
  if (!qword_1EBBE5FB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBE5FA0, &qword_1B9EDF3C0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBE5FB8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B9E98A10(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE5F90, &qword_1B9EDF3B0);
  if (!(*(*(v1 - 8) + 48))(a1, 1))
  {
    v2 = sub_1B9ED890C();
    (*(*(v2 - 8) + 8))(a1);
  }

  return a1;
}

uint64_t sub_1B9E98AC0(uint64_t a1)
{
  v3 = sub_1B9ED890C();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

uint64_t sub_1B9E98B68(uint64_t a1)
{
  v1 = sub_1B9ED890C();
  (*(*(v1 - 8) + 8))(a1);
  return a1;
}

__n128 sub_1B9E98BC4(uint64_t a1, uint64_t a2)
{
  v2 = sub_1B9ED890C();
  (*(*(v2 - 8) + 32))(a2, a1);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE5F90, &qword_1B9EDF3B0);
  result = *(a1 + *(v3 + 28));
  *(a2 + *(v3 + 28)) = result;
  return result;
}

unint64_t sub_1B9E98C54()
{
  v2 = qword_1EBBE5FC0;
  if (!qword_1EBBE5FC0)
  {
    sub_1B9ED8FAC();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBE5FC0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B9E98CD4()
{
  v2 = qword_1EBBE5FC8;
  if (!qword_1EBBE5FC8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBE5FC8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B9E98F18()
{
  v2 = qword_1EBBE6158;
  if (!qword_1EBBE6158)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBE6158);
    return WitnessTable;
  }

  return v2;
}

uint64_t SFRemoteAlertPresentationRequest.id.getter()
{
  v2 = *v0;

  return v2;
}

uint64_t SFRemoteAlertPresentationRequest.id.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

uint64_t SFRemoteAlertPresentationRequest.viewControllerToPresent.getter()
{
  v2 = *(v0 + 24);
  MEMORY[0x1E69E5928](v2);
  return v2;
}

double SFRemoteAlertPresentationRequest.viewControllerToPresent.setter(uint64_t a1)
{
  MEMORY[0x1E69E5928](a1);
  v2 = *(v1 + 24);
  *(v1 + 24) = a1;
  MEMORY[0x1E69E5920](v2);
  *&result = MEMORY[0x1E69E5920](a1).n128_u64[0];
  return result;
}

uint64_t sub_1B9E9941C()
{
  v9 = sub_1B9ED847C();
  v6 = *(v9 - 8);
  v7 = v9 - 8;
  v5 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v9, v0, v1);
  v8 = &v4 - v5;
  sub_1B9ED846C();
  v10 = sub_1B9ED845C();
  v11 = v2;
  (*(v6 + 8))(v8, v9);
  return v10;
}

uint64_t sub_1B9E994F4@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, char a6@<W5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>)
{
  v9 = *a3;
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = v9;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 33) = a6;
  *(a9 + 40) = a7;
  *(a9 + 48) = a8;
  return result;
}

uint64_t sub_1B9E9951C@<X0>(uint64_t *a1@<X8>)
{
  result = SFRemoteAlertPresentationRequest.id.getter();
  *a1 = result;
  a1[1] = v2;
  return result;
}

void *sub_1B9E9954C@<X0>(void *a1@<X8>)
{
  v5 = 0;
  swift_beginAccess();
  memcpy(__dst, (v1 + 16), 0x31uLL);
  sub_1B9E995D4(__dst, v4);
  swift_endAccess();
  return memcpy(a1, __dst, 0x31uLL);
}

uint64_t sub_1B9E995D4(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  v3 = *(a1 + 8);

  *(a2 + 8) = v3;
  *(a2 + 16) = *(a1 + 16);
  v4 = *(a1 + 24);
  MEMORY[0x1E69E5928](v4);
  result = a2;
  *(a2 + 24) = v4;
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 33) = *(a1 + 33);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 48) = *(a1 + 48);
  return result;
}

uint64_t sub_1B9E99668(void *__src)
{
  memcpy(__dst, __src, 0x31uLL);
  v6 = __src;
  v5 = v1;
  sub_1B9E995D4(__dst, v4);
  swift_beginAccess();
  memcpy(v8, (v1 + 16), 0x31uLL);
  memcpy((v1 + 16), __dst, 0x31uLL);
  sub_1B9E99728(v8);
  swift_endAccess();
  return sub_1B9E99728(__dst);
}

uint64_t sub_1B9E99728(uint64_t a1)
{

  MEMORY[0x1E69E5920](*(a1 + 24));
  return a1;
}

uint64_t sub_1B9E997CC()
{
  swift_beginAccess();
  v2 = *(v0 + 72);
  MEMORY[0x1E69E5928](v2);
  swift_endAccess();
  return v2;
}

double sub_1B9E99830(uint64_t a1)
{
  MEMORY[0x1E69E5928](a1);
  swift_beginAccess();
  v2 = *(v1 + 72);
  *(v1 + 72) = a1;
  MEMORY[0x1E69E5920](v2);
  swift_endAccess();
  *&result = MEMORY[0x1E69E5920](a1).n128_u64[0];
  return result;
}

uint64_t sub_1B9E99924@<X0>(uint64_t (**a2)()@<X8>)
{

  v8 = sub_1B9E99B94();
  v9 = v2;
  if (v8)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v8;
    *(v3 + 24) = v9;
    v5 = sub_1B9EA01EC;
    v6 = v3;
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  *a2 = v5;
  a2[1] = v6;
}

uint64_t sub_1B9E99A50(uint64_t *a1, void *a2)
{
  sub_1B9EA0168(a1, v8);
  v6 = v8[0];
  v7 = v8[1];
  if (v8[0])
  {
    v2 = swift_allocObject();
    *(v2 + 16) = v6;
    *(v2 + 24) = v7;
    v4 = sub_1B9EA01E0;
    v5 = v2;
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  sub_1B9E99C30(v4, v5);
}

uint64_t sub_1B9E99B94()
{
  swift_beginAccess();
  v2 = *(v0 + 80);
  sub_1B9E99BFC(v2, *(v0 + 88));
  swift_endAccess();
  return v2;
}

uint64_t sub_1B9E99BFC(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1B9E99C30(uint64_t a1, uint64_t a2)
{
  sub_1B9E99BFC(a1, a2);
  swift_beginAccess();
  v3 = *(v2 + 80);
  v4 = *(v2 + 88);
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  sub_1B9E99CC0(v3, v4);
  swift_endAccess();
  return sub_1B9E99CC0(a1, a2);
}

uint64_t sub_1B9E99CC0(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1B9E99D58@<X0>(uint64_t (**a2)()@<X8>)
{

  v8 = sub_1B9E99F78();
  v9 = v2;
  if (v8)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v8;
    *(v3 + 24) = v9;
    v5 = sub_1B9EA01EC;
    v6 = v3;
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  *a2 = v5;
  a2[1] = v6;
}

uint64_t sub_1B9E99E5C(uint64_t *a1, void *a2)
{
  sub_1B9EA0168(a1, v8);
  v6 = v8[0];
  v7 = v8[1];
  if (v8[0])
  {
    v2 = swift_allocObject();
    *(v2 + 16) = v6;
    *(v2 + 24) = v7;
    v4 = sub_1B9EA01E0;
    v5 = v2;
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  sub_1B9E99FE0(v4, v5);
}

uint64_t sub_1B9E99F78()
{
  swift_beginAccess();
  v2 = *(v0 + 96);
  sub_1B9E99BFC(v2, *(v0 + 104));
  swift_endAccess();
  return v2;
}

uint64_t sub_1B9E99FE0(uint64_t a1, uint64_t a2)
{
  sub_1B9E99BFC(a1, a2);
  swift_beginAccess();
  v3 = *(v2 + 96);
  v4 = *(v2 + 104);
  *(v2 + 96) = a1;
  *(v2 + 104) = a2;
  sub_1B9E99CC0(v3, v4);
  swift_endAccess();
  return sub_1B9E99CC0(a1, a2);
}

uint64_t sub_1B9E9A0D4(unsigned int a1)
{
  v12 = a1 & 1;
  v11 = v1;
  swift_beginAccess();
  v9 = *(v1 + 112);
  swift_endAccess();
  result = a1;
  if ((a1 & 1) != (v9 & 1))
  {
    swift_beginAccess();
    v6 = *(v7 + 112);
    result = swift_endAccess();
    if (v6)
    {
      v10[0] = sub_1B9E99F78();
      v10[1] = v3;
      if (v10[0])
      {
        v5 = v10[0];

        v4 = sub_1B9E9A22C(v10);
        v5(v4);
      }

      else
      {
        sub_1B9E9A22C(v10);
      }

      return sub_1B9E99FE0(0, 0);
    }
  }

  return result;
}

void *sub_1B9E9A22C(void *a1)
{
  if (*a1)
  {
  }

  return a1;
}

uint64_t sub_1B9E9A26C()
{
  swift_beginAccess();
  v2 = *(v0 + 112);
  swift_endAccess();
  return v2 & 1;
}

uint64_t sub_1B9E9A2C8(char a1)
{
  swift_beginAccess();
  v4 = *(v1 + 112);
  swift_endAccess();
  swift_beginAccess();
  *(v1 + 112) = a1;
  swift_endAccess();
  return sub_1B9E9A0D4(v4 & 1);
}

void (*sub_1B9E9A36C(void *a1))(uint64_t a1)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL, 26801);
  *a1 = v3;
  v3[3] = v1;
  swift_beginAccess();
  v4 = *(v1 + 112);
  swift_endAccess();
  *(v3 + 32) = v4;
  return sub_1B9E9A418;
}

void sub_1B9E9A418(uint64_t a1)
{
  v1 = *a1;
  sub_1B9E9A2C8(*(*a1 + 32) & 1);
  free(v1);
}

uint64_t sub_1B9E9A484()
{
  swift_beginAccess();
  v2 = *(v0 + 113);
  swift_endAccess();
  return v2 & 1;
}

uint64_t sub_1B9E9A4E0(char a1)
{
  swift_beginAccess();
  *(v1 + 113) = a1;
  return swift_endAccess();
}

uint64_t sub_1B9E9A600(const void *a1, uint64_t a2)
{
  memcpy(__dst, a1, 0x31uLL);
  v10 = a1;
  v9 = a2;
  v8 = v2;
  *(v2 + 80) = 0;
  *(v2 + 88) = 0;
  *(v2 + 96) = 0;
  *(v2 + 104) = 0;
  *(v2 + 112) = 0;
  *(v2 + 113) = 0;
  sub_1B9E995D4(__dst, v7);
  memcpy((v2 + 16), __dst, 0x31uLL);
  MEMORY[0x1E69E5928](a2);
  *(v2 + 72) = a2;
  MEMORY[0x1E69E5920](a2);
  sub_1B9E99728(__dst);
  return v6;
}

double sub_1B9E9A6D4(unsigned int a1, uint64_t a2, uint64_t a3)
{
  v97 = a1;
  v96 = a2;
  v95 = a3;
  v110 = sub_1B9E9B724;
  v113 = sub_1B9E96AFC;
  v115 = sub_1B9E96AF4;
  v117 = sub_1B9E96AF4;
  v120 = sub_1B9E96B08;
  v88 = sub_1B9E9B724;
  v89 = sub_1B9E96AFC;
  v90 = sub_1B9E96AF4;
  v91 = sub_1B9E96AF4;
  v92 = sub_1B9E96B08;
  v93 = sub_1B9E9F210;
  v150 = 0;
  v148 = 0;
  v149 = 0;
  v147 = 0;
  v144 = 0;
  v94 = 0;
  v105 = sub_1B9ED85DC();
  v103 = *(v105 - 8);
  v104 = v105 - 8;
  v99 = v103[8];
  v98 = (v99 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v97, v96, v95);
  v100 = &v47 - v98;
  v101 = v98;
  MEMORY[0x1EEE9AC00](v3, v4, v5);
  v6 = &v47 - v101;
  v102 = &v47 - v101;
  v150 = v7 & 1;
  v148 = v8;
  v149 = v9;
  v147 = v10;
  v11 = sub_1B9EA02C8();
  v106 = v103[2];
  v107 = v103 + 2;
  v106(v6, v11, v105);

  v12 = sub_1B9ED85BC();
  v13 = v108;
  v124 = v12;
  v125 = sub_1B9ED8DDC();
  v109 = 17;
  v112 = 7;
  v116 = swift_allocObject();
  *(v116 + 16) = 32;
  v118 = swift_allocObject();
  *(v118 + 16) = 8;
  v111 = 32;
  v14 = swift_allocObject();
  v114 = v14;
  *(v14 + 16) = v110;
  *(v14 + 24) = v13;
  v15 = swift_allocObject();
  v16 = v114;
  v121 = v15;
  *(v15 + 16) = v113;
  *(v15 + 24) = v16;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBE6160, &qword_1B9EDF3E0);
  v119 = sub_1B9ED914C();
  v122 = v17;

  v18 = v116;
  v19 = v122;
  *v122 = v115;
  v19[1] = v18;

  v20 = v118;
  v21 = v122;
  v122[2] = v117;
  v21[3] = v20;

  v22 = v121;
  v23 = v122;
  v122[4] = v120;
  v23[5] = v22;
  sub_1B9E8B398();

  if (os_log_type_enabled(v124, v125))
  {
    v24 = v94;
    v81 = sub_1B9ED8E8C();
    v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE5D80, &qword_1B9EDEC30);
    v82 = sub_1B9E945DC(0, v80, v80);
    v83 = sub_1B9E945DC(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v84 = &v130;
    v130 = v81;
    v85 = &v129;
    v129 = v82;
    v86 = &v128;
    v128 = v83;
    sub_1B9E94630(2, &v130);
    sub_1B9E94630(1, v84);
    v126 = v115;
    v127 = v116;
    sub_1B9E94644(&v126, v84, v85, v86);
    v87 = v24;
    if (v24)
    {

      __break(1u);
    }

    else
    {
      v126 = v117;
      v127 = v118;
      sub_1B9E94644(&v126, &v130, &v129, &v128);
      v78 = 0;
      v126 = v120;
      v127 = v121;
      sub_1B9E94644(&v126, &v130, &v129, &v128);
      v77 = 0;
      _os_log_impl(&dword_1B9E4B000, v124, v125, "Received request to dismiss remote alert with ID: %s", v81, 0xCu);
      sub_1B9E94690(v82, 0, v80);
      sub_1B9E94690(v83, 1, MEMORY[0x1E69E7CA0] + 8);
      sub_1B9ED8E6C();

      v79 = v77;
    }
  }

  else
  {
    v25 = v94;

    v79 = v25;
  }

  v72 = v79;
  v26 = MEMORY[0x1E69E5920](v124);
  v73 = v103[1];
  v74 = v103 + 1;
  v73(v102, v105, v26);
  v75 = v145;
  sub_1B9E9954C(v145);
  v76 = v146;
  MEMORY[0x1E69E5928](v146);
  sub_1B9E99728(v75);
  v144 = v76;
  v143 = [v76 presentingViewController];
  v71 = v143 != 0;
  v70 = v71;
  sub_1B9E9F1DC(&v143);
  if (v70)
  {
    if ((sub_1B9E9A484() & 1) == 0)
    {
      sub_1B9E9A4E0(1);
      sub_1B9E99BFC(v96, v95);

      v27 = swift_allocObject();
      v28 = v95;
      v29 = v108;
      v30 = v93;
      v27[2] = v96;
      v27[3] = v28;
      v27[4] = v29;
      v136 = v30;
      v137 = v27;
      aBlock = MEMORY[0x1E69E9820];
      v132 = 1107296256;
      v133 = 0;
      v134 = sub_1B9E9B7E4;
      v135 = &block_descriptor;
      v69 = _Block_copy(&aBlock);

      [v76 dismissViewControllerAnimated:v97 & 1 completion:v69];
      _Block_release(v69);
    }

    *&result = MEMORY[0x1E69E5920](v76).n128_u64[0];
  }

  else
  {
    v32 = v100;
    v33 = sub_1B9EA02C8();
    v106(v32, v33, v105);

    v67 = sub_1B9ED85BC();
    v68 = sub_1B9ED8DDC();
    v58 = 17;
    v60 = 7;
    v62 = swift_allocObject();
    *(v62 + 16) = 32;
    v63 = swift_allocObject();
    *(v63 + 16) = 8;
    v59 = 32;
    v34 = swift_allocObject();
    v35 = v108;
    v61 = v34;
    *(v34 + 16) = v88;
    *(v34 + 24) = v35;
    v36 = swift_allocObject();
    v37 = v61;
    v65 = v36;
    *(v36 + 16) = v89;
    *(v36 + 24) = v37;
    v64 = sub_1B9ED914C();
    v66 = v38;

    v39 = v62;
    v40 = v66;
    *v66 = v90;
    v40[1] = v39;

    v41 = v63;
    v42 = v66;
    v66[2] = v91;
    v42[3] = v41;

    v43 = v65;
    v44 = v66;
    v66[4] = v92;
    v44[5] = v43;
    sub_1B9E8B398();

    if (os_log_type_enabled(v67, v68))
    {
      v45 = v72;
      v51 = sub_1B9ED8E8C();
      v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE5D80, &qword_1B9EDEC30);
      v52 = sub_1B9E945DC(0, v50, v50);
      v53 = sub_1B9E945DC(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v54 = &v142;
      v142 = v51;
      v55 = &v141;
      v141 = v52;
      v56 = &v140;
      v140 = v53;
      sub_1B9E94630(2, &v142);
      sub_1B9E94630(1, v54);
      v138 = v90;
      v139 = v62;
      sub_1B9E94644(&v138, v54, v55, v56);
      v57 = v45;
      if (v45)
      {

        __break(1u);
      }

      else
      {
        v138 = v91;
        v139 = v63;
        sub_1B9E94644(&v138, &v142, &v141, &v140);
        v49 = 0;
        v138 = v92;
        v139 = v65;
        sub_1B9E94644(&v138, &v142, &v141, &v140);
        _os_log_impl(&dword_1B9E4B000, v67, v68, "Invalidating handle for remote alert which is not yet presented with ID: %s", v51, 0xCu);
        sub_1B9E94690(v52, 0, v50);
        sub_1B9E94690(v53, 1, MEMORY[0x1E69E7CA0] + 8);
        sub_1B9ED8E6C();
      }
    }

    else
    {
    }

    v46 = MEMORY[0x1E69E5920](v67);
    v73(v100, v105, v46);
    v48 = sub_1B9E997CC();
    [v48 invalidate];
    MEMORY[0x1E69E5920](v48);
    *&result = MEMORY[0x1E69E5920](v76).n128_u64[0];
  }

  return result;
}

uint64_t sub_1B9E9B6B4()
{
  sub_1B9E9954C(v2);
  memcpy(__dst, v2, 0x31uLL);
  v1 = __dst[0];

  sub_1B9E99728(__dst);
  return v1;
}

double sub_1B9E9B72C(void (*a1)(void), uint64_t a2)
{
  sub_1B9E99BFC(a1, a2);
  if (a1)
  {
    a1();
  }

  v3 = sub_1B9E997CC();
  [v3 invalidate];
  *&result = MEMORY[0x1E69E5920](v3).n128_u64[0];
  return result;
}

uint64_t sub_1B9E9B7E4(uint64_t a1)
{
  v3 = *(a1 + 32);

  v3(v1);
}

uint64_t SFRemoteAlertPresentationHandle.deinit()
{
  sub_1B9E99728((v0 + 2));
  MEMORY[0x1E69E5920](v0[9]);
  sub_1B9E9A22C(v0 + 10);
  sub_1B9E9A22C(v0 + 12);
  return v2;
}

uint64_t sub_1B9E9B8CC()
{
  v0 = sub_1B9E9B924();
  MEMORY[0x1E69E5928](*v0);
  return swift_dynamicCastClassUnconditional();
}

uint64_t *sub_1B9E9B924()
{
  if (qword_1EBBE5CF0 != -1)
  {
    swift_once();
  }

  return &qword_1EBBE6150;
}

uint64_t sub_1B9E9B984()
{
  v2 = (v0 + OBJC_IVAR____TtC9SharingUI32SFRemoteAlertPresentationManager_remoteAlertPresentationHandlesByID);
  swift_beginAccess();
  v3 = *v2;

  swift_endAccess();
  return v3;
}

uint64_t sub_1B9E9B9EC(uint64_t a1)
{

  v3 = (v1 + OBJC_IVAR____TtC9SharingUI32SFRemoteAlertPresentationManager_remoteAlertPresentationHandlesByID);
  swift_beginAccess();
  *v3 = a1;

  swift_endAccess();
}

uint64_t sub_1B9E9BADC(uint64_t a1)
{
  v129 = a1;
  v126 = 0;
  v196 = 0;
  v127 = 0;
  v189 = 0;
  v188 = 0;
  v187 = 0;
  v183 = 0;
  v179 = 0;
  v177 = 0;
  v138 = sub_1B9ED85DC();
  v130 = v138;
  v131 = *(v138 - 8);
  v137 = v131;
  v132 = v131;
  v133 = *(v131 + 64);
  MEMORY[0x1EEE9AC00](v129, v138, v1);
  v135 = (v133 + 15) & 0xFFFFFFFFFFFFFFF0;
  v134 = &v56 - v135;
  MEMORY[0x1EEE9AC00](v2, &v56 - v135, v3);
  v4 = &v56 - v135;
  v136 = &v56 - v135;
  v6 = *v5;
  v7 = v5[1];
  v8 = v5[2];
  v200 = *(v5 + 48);
  v199 = v8;
  v198 = v7;
  v197 = v6;
  v196 = v9;
  v10 = sub_1B9EA02C8();
  v139 = *(v137 + 16);
  v140 = (v137 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v139(v4, v10, v138);
  v141 = &v197;
  sub_1B9E995D4(&v197, v195);
  v142 = 65;
  v156 = 7;
  v11 = swift_allocObject();
  v12 = v141;
  v148 = v11;
  v13 = v197;
  v14 = v198;
  v15 = v199;
  *(v11 + 64) = v200;
  *(v11 + 48) = v15;
  *(v11 + 32) = v14;
  *(v11 + 16) = v13;
  sub_1B9E995D4(v12, v194);
  v16 = swift_allocObject();
  v157 = v16;
  v17 = v197;
  v18 = v198;
  v19 = v199;
  *(v16 + 64) = v200;
  *(v16 + 48) = v19;
  *(v16 + 32) = v18;
  *(v16 + 16) = v17;
  v171 = sub_1B9ED85BC();
  v143 = v171;
  v170 = sub_1B9ED8DDC();
  v144 = v170;
  v151 = 17;
  v161 = swift_allocObject();
  v145 = v161;
  v146 = 32;
  *(v161 + 16) = 32;
  v20 = swift_allocObject();
  v21 = v146;
  v162 = v20;
  v147 = v20;
  v153 = 8;
  *(v20 + 16) = 8;
  v155 = v21;
  v22 = swift_allocObject();
  v23 = v148;
  v149 = v22;
  *(v22 + 16) = sub_1B9E9F284;
  *(v22 + 24) = v23;
  v24 = swift_allocObject();
  v25 = v149;
  v163 = v24;
  v150 = v24;
  *(v24 + 16) = sub_1B9E96AFC;
  *(v24 + 24) = v25;
  v164 = swift_allocObject();
  v152 = v164;
  *(v164 + 16) = 64;
  v165 = swift_allocObject();
  v154 = v165;
  *(v165 + 16) = v153;
  v26 = swift_allocObject();
  v27 = v157;
  v158 = v26;
  *(v26 + 16) = sub_1B9E9F28C;
  *(v26 + 24) = v27;
  v28 = swift_allocObject();
  v29 = v158;
  v168 = v28;
  v159 = v28;
  *(v28 + 16) = sub_1B9E9F2BC;
  *(v28 + 24) = v29;
  v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBE6160, &qword_1B9EDF3E0);
  v160 = v169;
  v166 = sub_1B9ED914C();
  v167 = v30;

  v31 = v161;
  v32 = v167;
  *v167 = sub_1B9E96AF4;
  v32[1] = v31;

  v33 = v162;
  v34 = v167;
  v167[2] = sub_1B9E96AF4;
  v34[3] = v33;

  v35 = v163;
  v36 = v167;
  v167[4] = sub_1B9E96B08;
  v36[5] = v35;

  v37 = v164;
  v38 = v167;
  v167[6] = sub_1B9E96AF4;
  v38[7] = v37;

  v39 = v165;
  v40 = v167;
  v167[8] = sub_1B9E96AF4;
  v40[9] = v39;

  v41 = v167;
  v42 = v168;
  v167[10] = sub_1B9E9F44C;
  v41[11] = v42;
  sub_1B9E8B398();

  if (os_log_type_enabled(v171, v170))
  {
    v43 = v127;
    v119 = sub_1B9ED8E8C();
    v115 = v119;
    v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE5D80, &qword_1B9EDEC30);
    v117 = 1;
    v120 = sub_1B9E945DC(1, v116, v116);
    v118 = v120;
    v121 = sub_1B9E945DC(v117, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v176 = v119;
    v175 = v120;
    v174 = v121;
    v122 = 2;
    v123 = &v176;
    sub_1B9E94630(2, &v176);
    sub_1B9E94630(v122, v123);
    v172 = sub_1B9E96AF4;
    v173 = v145;
    sub_1B9E94644(&v172, v123, &v175, &v174);
    v124 = v43;
    v125 = v43;
    if (v43)
    {
      v113 = 0;

      __break(1u);
    }

    else
    {
      v172 = sub_1B9E96AF4;
      v173 = v147;
      sub_1B9E94644(&v172, &v176, &v175, &v174);
      v111 = 0;
      v112 = 0;
      v172 = sub_1B9E96B08;
      v173 = v150;
      sub_1B9E94644(&v172, &v176, &v175, &v174);
      v109 = 0;
      v110 = 0;
      v172 = sub_1B9E96AF4;
      v173 = v152;
      sub_1B9E94644(&v172, &v176, &v175, &v174);
      v107 = 0;
      v108 = 0;
      v172 = sub_1B9E96AF4;
      v173 = v154;
      sub_1B9E94644(&v172, &v176, &v175, &v174);
      v105 = 0;
      v106 = 0;
      v172 = sub_1B9E9F44C;
      v173 = v159;
      sub_1B9E94644(&v172, &v176, &v175, &v174);
      v103 = 0;
      v104 = 0;
      _os_log_impl(&dword_1B9E4B000, v143, v144, "Asked to present remote alert using request: %s view controller to present: %@", v115, 0x16u);
      v102 = 1;
      sub_1B9E94690(v118, 1, v116);
      sub_1B9E94690(v121, v102, MEMORY[0x1E69E7CA0] + 8);
      sub_1B9ED8E6C();

      v114 = v103;
    }
  }

  else
  {
    v44 = v127;

    v114 = v44;
  }

  v98 = v114;

  v99 = *(v132 + 8);
  v100 = (v132 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v99(v136, v130);
  v101 = [objc_opt_self() identityOfCurrentProcess];
  if (v101)
  {
    v97 = v101;
    v84 = v101;
    v189 = v101;
    v94 = 0;
    sub_1B9E9F458();
    v45 = v84;
    v85 = v197;

    v87 = sub_1B9E9CA04(v84, v85, *(&v85 + 1));
    v86 = v87;
    v188 = v87;
    v89 = [objc_opt_self() newHandleWithDefinition:v87 configurationContext:v94];
    v88 = v89;
    v187 = v89;
    type metadata accessor for SFRemoteAlertPresentationHandle();
    sub_1B9E995D4(&v197, &v186);
    v185 = v200;
    v184[2] = v199;
    v184[1] = v198;
    v184[0] = v197;
    v46 = v89;
    v91 = sub_1B9E9A5AC(v184, v89);
    v90 = v91;
    v183 = v91;
    v202 = v197;
    sub_1B9E9F4E4(&v202, &v182);

    v181 = v91;
    v180[2] = v202;
    v92 = v180;
    v93 = sub_1B9E9BA70();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE6180, &qword_1B9EDF3E8);
    sub_1B9ED8A2C();
    (v93)(v92, 0);
    sub_1B9E9F524();
    v95 = sub_1B9E9CA54();
    v179 = v95;
    v201 = *(&v199 + 1);
    [v95 setInitialSupportedInterfaceOrientations_];
    v47 = v128;
    v178 = &unk_1F38267A0;
    v96 = swift_dynamicCastObjCProtocolConditional();
    if (v96)
    {
      v83 = v96;
    }

    else
    {

      v83 = 0;
    }

    v82 = v83;
    if (v83)
    {
      v81 = v82;
      v80 = v82;
      v177 = v82;
      [v88 registerObserver_];
      swift_unknownObjectRelease();
    }

    v48 = v95;
    [v88 activateWithContext_];

    v77 = v90;
    v78 = v77;
    v79 = v98;
  }

  else
  {
    v49 = v134;
    v50 = sub_1B9EA02C8();
    v139(v49, v50, v130);
    v75 = sub_1B9ED85BC();
    v72 = v75;
    v74 = sub_1B9ED8DCC();
    v73 = v74;
    v76 = sub_1B9ED914C();
    if (os_log_type_enabled(v75, v74))
    {
      v51 = v98;
      v63 = sub_1B9ED8E8C();
      v59 = v63;
      v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE5D80, &qword_1B9EDEC30);
      v61 = 0;
      v64 = sub_1B9E945DC(0, v60, v60);
      v62 = v64;
      v65 = sub_1B9E945DC(v61, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v193 = v63;
      v192 = v64;
      v191 = v65;
      v66 = 0;
      v67 = &v193;
      sub_1B9E94630(0, &v193);
      sub_1B9E94630(v66, v67);
      v190 = v76;
      v68 = &v56;
      MEMORY[0x1EEE9AC00](&v56, v52, v53);
      v69 = &v56 - 6;
      *(&v56 - 4) = v54;
      *(&v56 - 3) = &v192;
      *(&v56 - 2) = &v191;
      v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBE6320, &qword_1B9EDEC60);
      sub_1B9E96D38();
      sub_1B9ED8BDC();
      v71 = v51;
      if (v51)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_1B9E4B000, v72, v73, "Failed to get process identity of the current process, dropping request to present view controller", v59, 2u);
        v57 = 0;
        sub_1B9E94690(v62, 0, v60);
        sub_1B9E94690(v65, v57, MEMORY[0x1E69E7CA0] + 8);
        sub_1B9ED8E6C();

        v58 = v71;
      }
    }

    else
    {

      v58 = v98;
    }

    v56 = v58;

    v99(v134, v130);
    v78 = 0;
    v79 = v56;
  }

  return v78;
}

uint64_t sub_1B9E9C998(uint64_t *a1)
{
  v2 = *a1;

  return v2;
}

uint64_t sub_1B9E9C9D0(uint64_t a1)
{
  v2 = *(a1 + 24);
  MEMORY[0x1E69E5928](v2);
  return v2;
}

uint64_t sub_1B9E9CA84(uint64_t a1, char a2, char a3, uint64_t a4, char a5, char *a6)
{
  v21 = 0;
  v20 = 0;
  v26 = a1;
  v25 = a2 & 1;
  v24 = a3 & 1;
  v23 = a4;
  v22 = a5 & 1;
  v7 = *a6;
  v21 = *a6 & 1;
  v20 = v6;
  v18 = v7;
  MEMORY[0x1E69E5928](a1);
  v8 = sub_1B9E9941C();
  sub_1B9E994F4(v8, v9, &v18, a1, a2 & 1, a3 & 1, a4, a5 & 1, v19);
  memcpy(__dst, v19, 0x31uLL);
  memcpy(v17, __dst, 0x31uLL);
  v16 = sub_1B9E9BADC(v17);
  sub_1B9E99728(__dst);
  return v16;
}

uint64_t sub_1B9E9CBBC(uint64_t a1, char a2, char a3, uint64_t a4, char a5, char *a6, uint64_t a7, uint64_t a8)
{
  v18 = 0;
  v16 = 0;
  v17 = 0;
  v15 = 0;
  v23 = a1;
  v22 = a2 & 1;
  v21 = a3 & 1;
  v20 = a4;
  v19 = a5 & 1;
  v9 = *a6;
  v18 = *a6 & 1;
  v16 = a7;
  v17 = a8;
  v15 = v8;
  v14 = v9;
  v13 = sub_1B9E9CA84(a1, a2 & 1, a3 & 1, a4, a5 & 1, &v14);

  if (v13)
  {
    sub_1B9E99BFC(a7, a8);
    sub_1B9E99FE0(a7, a8);
  }
}

uint64_t sub_1B9E9CCD8(uint64_t a1, uint64_t a2)
{
  v9 = a1;
  v10 = a2;
  v8 = v2;

  sub_1B9E9B984();
  v7[0] = a1;
  v7[1] = a2;
  type metadata accessor for SFRemoteAlertPresentationHandle();
  sub_1B9ED8A1C();
  sub_1B9E96F0C(v7);
  v6 = v7[2];

  return v6;
}

uint64_t sub_1B9E9CD94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v20 = a1;
  v21 = a2;
  v19 = v3;

  sub_1B9E9B984();
  v17[0] = a1;
  v17[1] = a2;
  type metadata accessor for SFRemoteAlertPresentationHandle();
  sub_1B9ED8A1C();
  sub_1B9E96F0C(v17);
  if (v18)
  {

    sub_1B9E93A50(&v18);
    sub_1B9E9954C(v14);
    memcpy(__dst, v14, sizeof(__dst));

    memcpy(v16, __dst, 0x31uLL);
    v4 = v16[1];
    v5 = v16[2];
    v6 = v16[3];
    v7 = v16[4];
    v8 = v16[5];
    v9 = v16[6];
    *a3 = v16[0];
    *(a3 + 8) = v4;
    *(a3 + 16) = v5;
    *(a3 + 24) = v6;
    *(a3 + 32) = v7;
    *(a3 + 40) = v8;
    *(a3 + 48) = v9;
  }

  else
  {
    sub_1B9E93A50(&v18);

    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    *(a3 + 24) = 0;
    *(a3 + 32) = 0;
    *(a3 + 40) = 0;
    *(a3 + 48) = 0;
  }

  return result;
}

id SFRemoteAlertPresentationManager.init()()
{
  v4 = 0;
  v1 = OBJC_IVAR____TtC9SharingUI32SFRemoteAlertPresentationManager_remoteAlertPresentationHandlesByID;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE61F0, &qword_1B9EDF3F0);
  sub_1B9ED914C();
  type metadata accessor for SFRemoteAlertPresentationHandle();
  *v1 = sub_1B9ED89FC();
  v3.receiver = v4;
  v3.super_class = type metadata accessor for SFRemoteAlertPresentationManager();
  v2 = objc_msgSendSuper2(&v3, sel_init);
  MEMORY[0x1E69E5928](v2);
  v4 = v2;
  MEMORY[0x1E69E5920](v2);
  return v2;
}

id SFRemoteAlertPresentationManager.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SFRemoteAlertPresentationManager();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1B9E9D0F0(uint64_t a1)
{
  v6 = a1;
  v5 = v1;
  sub_1B9E9B984();
  type metadata accessor for SFRemoteAlertPresentationHandle();
  v4[0] = sub_1B9ED8A0C();
  MEMORY[0x1E69E5928](a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE61F8, &qword_1B9EDF3F8);
  sub_1B9E9F5DC();
  sub_1B9ED8BBC();
  MEMORY[0x1E69E5920](a1);
  sub_1B9E9895C(v4);

  return v4[1];
}

uint64_t sub_1B9E9D218(uint64_t a1, uint64_t a2)
{
  sub_1B9EA01F8();
  v3 = sub_1B9E997CC();
  v4 = sub_1B9ED8E4C();
  MEMORY[0x1E69E5920](v3);
  return v4 & 1;
}

double SFRemoteAlertPresentationManager.remoteAlertHandleDidActivate(_:)(uint64_t a1)
{
  v65 = a1;
  v54 = sub_1B9E9B724;
  v55 = sub_1B9E96AFC;
  v56 = sub_1B9E96AF4;
  v57 = sub_1B9E96AF4;
  v58 = sub_1B9E96B08;
  v77 = 0;
  v76 = 0;
  v75 = 0;
  v74 = 0;
  v72 = 0;
  v73 = 0;
  v59 = 0;
  v60 = sub_1B9ED85DC();
  v61 = *(v60 - 8);
  v62 = v60 - 8;
  v63 = (*(v61 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v65, v2, v3);
  v64 = v23 - v63;
  v77 = v4;
  v76 = v1;
  swift_unknownObjectRetain();
  objc_opt_self();
  v66 = swift_dynamicCastObjCClass();
  if (v66)
  {
    v53 = v66;
  }

  else
  {
    swift_unknownObjectRelease();
    v53 = 0;
  }

  v52 = v53;
  if (v53)
  {
    v51 = v52;
    v49 = v52;
    v75 = v52;
    v50 = sub_1B9E9D0F0(v52);
    if (v50)
    {
      v48 = v50;
      v6 = v64;
      v36 = v50;
      v74 = v50;
      v7 = sub_1B9EA02C8();
      (*(v61 + 16))(v6, v7, v60);

      v46 = sub_1B9ED85BC();
      v47 = sub_1B9ED8DDC();
      v35 = 17;
      v38 = 7;
      v40 = swift_allocObject();
      *(v40 + 16) = 32;
      v41 = swift_allocObject();
      *(v41 + 16) = 8;
      v37 = 32;
      v8 = swift_allocObject();
      v9 = v36;
      v39 = v8;
      *(v8 + 16) = v54;
      *(v8 + 24) = v9;
      v10 = swift_allocObject();
      v11 = v39;
      v43 = v10;
      *(v10 + 16) = v55;
      *(v10 + 24) = v11;
      v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBE6160, &qword_1B9EDF3E0);
      v42 = sub_1B9ED914C();
      v44 = v12;

      v13 = v40;
      v14 = v44;
      *v44 = v56;
      v14[1] = v13;

      v15 = v41;
      v16 = v44;
      v44[2] = v57;
      v16[3] = v15;

      v17 = v43;
      v18 = v44;
      v44[4] = v58;
      v18[5] = v17;
      sub_1B9E8B398();

      if (os_log_type_enabled(v46, v47))
      {
        v19 = v59;
        v28 = sub_1B9ED8E8C();
        v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE5D80, &qword_1B9EDEC30);
        v29 = sub_1B9E945DC(0, v27, v27);
        v30 = sub_1B9E945DC(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
        v31 = &v71;
        v71 = v28;
        v32 = &v70;
        v70 = v29;
        v33 = &v69;
        v69 = v30;
        sub_1B9E94630(2, &v71);
        sub_1B9E94630(1, v31);
        v67 = v56;
        v68 = v40;
        sub_1B9E94644(&v67, v31, v32, v33);
        v34 = v19;
        if (v19)
        {

          __break(1u);
        }

        else
        {
          v67 = v57;
          v68 = v41;
          sub_1B9E94644(&v67, &v71, &v70, &v69);
          v26 = 0;
          v67 = v58;
          v68 = v43;
          sub_1B9E94644(&v67, &v71, &v70, &v69);
          _os_log_impl(&dword_1B9E4B000, v46, v47, "SFRemoteAlertPresentationManager did activate alert for request: %s", v28, 0xCu);
          sub_1B9E94690(v29, 0, v27);
          sub_1B9E94690(v30, 1, MEMORY[0x1E69E7CA0] + 8);
          sub_1B9ED8E6C();
        }
      }

      else
      {
      }

      v20 = MEMORY[0x1E69E5920](v46);
      (*(v61 + 8))(v64, v60, v20);
      v24 = sub_1B9E99B94();
      v25 = v21;
      if (v24)
      {
        v23[2] = v24;
        v23[3] = v25;
        v23[1] = v25;
        v23[0] = v24;
        v72 = v24;
        v73 = v25;

        (v23[0])(v22);
      }

      *&result = MEMORY[0x1E69E5920](v49).n128_u64[0];
    }

    else
    {
      *&result = MEMORY[0x1E69E5920](v49).n128_u64[0];
    }
  }

  return result;
}

double SFRemoteAlertPresentationManager.remoteAlertHandleDidDeactivate(_:)(uint64_t a1)
{
  v60 = a1;
  v49 = sub_1B9E9B724;
  v50 = sub_1B9E96AFC;
  v51 = sub_1B9E96AF4;
  v52 = sub_1B9E96AF4;
  v53 = sub_1B9E96B08;
  v70 = 0;
  v69 = 0;
  v68 = 0;
  v67 = 0;
  v54 = 0;
  v55 = sub_1B9ED85DC();
  v56 = *(v55 - 8);
  v57 = v55 - 8;
  v58 = (*(v56 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v60, v2, v3);
  v59 = &v21 - v58;
  v70 = v4;
  v69 = v1;
  swift_unknownObjectRetain();
  objc_opt_self();
  v61 = swift_dynamicCastObjCClass();
  if (v61)
  {
    v48 = v61;
  }

  else
  {
    swift_unknownObjectRelease();
    v48 = 0;
  }

  v47 = v48;
  if (v48)
  {
    v46 = v47;
    v44 = v47;
    v68 = v47;
    v45 = sub_1B9E9D0F0(v47);
    if (v45)
    {
      v43 = v45;
      v6 = v59;
      v31 = v45;
      v67 = v45;
      v7 = sub_1B9EA02C8();
      (*(v56 + 16))(v6, v7, v55);

      v41 = sub_1B9ED85BC();
      v42 = sub_1B9ED8DDC();
      v30 = 17;
      v33 = 7;
      v35 = swift_allocObject();
      *(v35 + 16) = 32;
      v36 = swift_allocObject();
      *(v36 + 16) = 8;
      v32 = 32;
      v8 = swift_allocObject();
      v9 = v31;
      v34 = v8;
      *(v8 + 16) = v49;
      *(v8 + 24) = v9;
      v10 = swift_allocObject();
      v11 = v34;
      v38 = v10;
      *(v10 + 16) = v50;
      *(v10 + 24) = v11;
      v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBE6160, &qword_1B9EDF3E0);
      v37 = sub_1B9ED914C();
      v39 = v12;

      v13 = v35;
      v14 = v39;
      *v39 = v51;
      v14[1] = v13;

      v15 = v36;
      v16 = v39;
      v39[2] = v52;
      v16[3] = v15;

      v17 = v38;
      v18 = v39;
      v39[4] = v53;
      v18[5] = v17;
      sub_1B9E8B398();

      if (os_log_type_enabled(v41, v42))
      {
        v19 = v54;
        v23 = sub_1B9ED8E8C();
        v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE5D80, &qword_1B9EDEC30);
        v24 = sub_1B9E945DC(0, v22, v22);
        v25 = sub_1B9E945DC(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
        v26 = &v66;
        v66 = v23;
        v27 = &v65;
        v65 = v24;
        v28 = &v64;
        v64 = v25;
        sub_1B9E94630(2, &v66);
        sub_1B9E94630(1, v26);
        v62 = v51;
        v63 = v35;
        sub_1B9E94644(&v62, v26, v27, v28);
        v29 = v19;
        if (v19)
        {

          __break(1u);
        }

        else
        {
          v62 = v52;
          v63 = v36;
          sub_1B9E94644(&v62, &v66, &v65, &v64);
          v21 = 0;
          v62 = v53;
          v63 = v38;
          sub_1B9E94644(&v62, &v66, &v65, &v64);
          _os_log_impl(&dword_1B9E4B000, v41, v42, "SFRemoteAlertPresentationManager did deactivate for request: %s", v23, 0xCu);
          sub_1B9E94690(v24, 0, v22);
          sub_1B9E94690(v25, 1, MEMORY[0x1E69E7CA0] + 8);
          sub_1B9ED8E6C();
        }
      }

      else
      {
      }

      v20 = MEMORY[0x1E69E5920](v41);
      (*(v56 + 8))(v59, v55, v20);
      [v44 invalidate];

      *&result = MEMORY[0x1E69E5920](v44).n128_u64[0];
    }

    else
    {
      *&result = MEMORY[0x1E69E5920](v44).n128_u64[0];
    }
  }

  return result;
}

double SFRemoteAlertPresentationManager.remoteAlertHandle(_:didInvalidateWithError:)(uint64_t a1, void *a2)
{
  v100 = a1;
  v94 = a2;
  v83 = sub_1B9E9B724;
  v84 = sub_1B9E96AFC;
  v85 = sub_1B9E9F664;
  v86 = sub_1B9E9F66C;
  v87 = sub_1B9E96AF4;
  v88 = sub_1B9E96AF4;
  v89 = sub_1B9E96B08;
  v90 = sub_1B9E96AF4;
  v91 = sub_1B9E96AF4;
  v92 = sub_1B9E9F44C;
  v116 = 0;
  v115 = 0;
  v114 = 0;
  v113 = 0;
  v112 = 0;
  v93 = 0;
  v95 = sub_1B9ED85DC();
  v96 = *(v95 - 8);
  v97 = v95 - 8;
  v98 = (*(v96 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v100, v94, v3);
  v99 = &v33 - v98;
  v116 = v4;
  v115 = v5;
  v114 = v2;
  swift_unknownObjectRetain();
  objc_opt_self();
  v101 = swift_dynamicCastObjCClass();
  if (v101)
  {
    v82 = v101;
  }

  else
  {
    swift_unknownObjectRelease();
    v82 = 0;
  }

  v81 = v82;
  if (v82)
  {
    v80 = v81;
    v78 = v81;
    v113 = v81;
    v79 = sub_1B9E9D0F0(v81);
    if (v79)
    {
      v77 = v79;
      v7 = v99;
      v58 = v79;
      v112 = v79;
      v8 = sub_1B9EA02C8();
      (*(v96 + 16))(v7, v8, v95);

      v9 = v94;
      v63 = 7;
      v64 = swift_allocObject();
      *(v64 + 16) = v94;
      sub_1B9E9EF40();

      v75 = sub_1B9ED85BC();
      v76 = sub_1B9ED8DDC();
      v60 = 17;
      v66 = swift_allocObject();
      *(v66 + 16) = 32;
      v67 = swift_allocObject();
      v61 = 8;
      *(v67 + 16) = 8;
      v62 = 32;
      v10 = swift_allocObject();
      v11 = v58;
      v59 = v10;
      *(v10 + 16) = v83;
      *(v10 + 24) = v11;
      v12 = swift_allocObject();
      v13 = v59;
      v68 = v12;
      *(v12 + 16) = v84;
      *(v12 + 24) = v13;
      v69 = swift_allocObject();
      *(v69 + 16) = 64;
      v70 = swift_allocObject();
      *(v70 + 16) = v61;
      v14 = swift_allocObject();
      v15 = v64;
      v65 = v14;
      *(v14 + 16) = v85;
      *(v14 + 24) = v15;
      v16 = swift_allocObject();
      v17 = v65;
      v72 = v16;
      *(v16 + 16) = v86;
      *(v16 + 24) = v17;
      v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBE6160, &qword_1B9EDF3E0);
      v71 = sub_1B9ED914C();
      v73 = v18;

      v19 = v66;
      v20 = v73;
      *v73 = v87;
      v20[1] = v19;

      v21 = v67;
      v22 = v73;
      v73[2] = v88;
      v22[3] = v21;

      v23 = v68;
      v24 = v73;
      v73[4] = v89;
      v24[5] = v23;

      v25 = v69;
      v26 = v73;
      v73[6] = v90;
      v26[7] = v25;

      v27 = v70;
      v28 = v73;
      v73[8] = v91;
      v28[9] = v27;

      v29 = v72;
      v30 = v73;
      v73[10] = v92;
      v30[11] = v29;
      sub_1B9E8B398();

      if (os_log_type_enabled(v75, v76))
      {
        v31 = v93;
        v50 = sub_1B9ED8E8C();
        v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE5D80, &qword_1B9EDEC30);
        v49 = 1;
        v51 = sub_1B9E945DC(1, v48, v48);
        v52 = sub_1B9E945DC(v49, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
        v54 = &v106;
        v106 = v50;
        v55 = &v105;
        v105 = v51;
        v56 = &v104;
        v104 = v52;
        v53 = 2;
        sub_1B9E94630(2, &v106);
        sub_1B9E94630(v53, v54);
        v102 = v87;
        v103 = v66;
        sub_1B9E94644(&v102, v54, v55, v56);
        v57 = v31;
        if (v31)
        {

          __break(1u);
        }

        else
        {
          v102 = v88;
          v103 = v67;
          sub_1B9E94644(&v102, &v106, &v105, &v104);
          v47 = 0;
          v102 = v89;
          v103 = v68;
          sub_1B9E94644(&v102, &v106, &v105, &v104);
          v46 = 0;
          v102 = v90;
          v103 = v69;
          sub_1B9E94644(&v102, &v106, &v105, &v104);
          v45 = 0;
          v102 = v91;
          v103 = v70;
          sub_1B9E94644(&v102, &v106, &v105, &v104);
          v44 = 0;
          v102 = v92;
          v103 = v72;
          sub_1B9E94644(&v102, &v106, &v105, &v104);
          _os_log_impl(&dword_1B9E4B000, v75, v76, "SFRemoteAlertPresentationManager did invalidate for request: %s with error: %@", v50, 0x16u);
          v43 = 1;
          sub_1B9E94690(v51, 1, v48);
          sub_1B9E94690(v52, v43, MEMORY[0x1E69E7CA0] + 8);
          sub_1B9ED8E6C();
        }
      }

      else
      {
      }

      v32 = MEMORY[0x1E69E5920](v75);
      (*(v96 + 8))(v99, v95, v32);
      v34 = v110;
      sub_1B9E9954C(v110);
      v41 = __dst;
      memcpy(__dst, v34, 0x31uLL);
      v35 = __dst[0];
      v36 = __dst[1];

      v38 = &v109;
      v109 = 0;
      v37 = v108;
      v108[0] = v35;
      v108[1] = v36;
      v39 = &v107;
      v40 = sub_1B9E9BA70();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE6180, &qword_1B9EDF3E8);
      sub_1B9ED8A2C();
      v42 = 1;
      v40();
      sub_1B9E99728(v41);
      sub_1B9E9A2C8(v42 & 1);

      *&result = MEMORY[0x1E69E5920](v78).n128_u64[0];
    }

    else
    {
      *&result = MEMORY[0x1E69E5920](v78).n128_u64[0];
    }
  }

  return result;
}

id sub_1B9E9EF6C()
{
  type metadata accessor for SFRemoteAlertPresentationManager();
  result = SFRemoteAlertPresentationManager.__allocating_init()();
  qword_1EBBE6150 = result;
  return result;
}

uint64_t sub_1B9E9EFA0()
{
  v0 = sub_1B9E9B924();
  v2 = *v0;
  MEMORY[0x1E69E5928](*v0);
  return v2;
}

id sub_1B9E9EFD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v5 = sub_1B9ED8A9C();

    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v4 = [v8 initWithSceneProvidingProcess:a1 configurationIdentifier:?];
  MEMORY[0x1E69E5920](v6);
  MEMORY[0x1E69E5920](a1);
  return v4;
}

uint64_t sub_1B9E9F0C4(uint64_t (*a1)(void))
{
  v3 = a1();
  if (v3)
  {
    v1 = v3;
    v4 = v3;
    sub_1B9E9F17C(&v4, &v5);
  }

  else
  {

    return 0;
  }

  return v5;
}

uint64_t sub_1B9E9F17C@<X0>(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  v5 = _swift_stdlib_bridgeErrorToNSError();
  MEMORY[0x1E69E5928](v5);
  *a2 = v5;
  return swift_unknownObjectRelease();
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

void sub_1B9E9F2C8(uint64_t *a1, uint64_t **a2, uint64_t a3, uint64_t (*a4)(uint64_t *, uint64_t **, uint64_t))
{
  v8 = a4(a1, a2, a3);
  v7 = *a1;
  MEMORY[0x1E69E5928](v8);
  sub_1B9ED8EBC();
  if (v8)
  {
    MEMORY[0x1E69E5920](v8);
  }

  *a1 = v7 + 8;
  v4 = *a2;
  if (*a2)
  {
    MEMORY[0x1E69E5928](v8);
    *v4 = v8;
    MEMORY[0x1E69E5920](v8);
    *a2 = v4 + 1;
  }

  else
  {
    MEMORY[0x1E69E5920](v8);
  }
}

unint64_t sub_1B9E9F458()
{
  v2 = qword_1EBBE6178;
  if (!qword_1EBBE6178)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EBBE6178);
    return ObjCClassMetadata;
  }

  return v2;
}

void *sub_1B9E9F4E4(void *a1, void *a2)
{
  *a2 = *a1;
  v4 = a1[1];

  result = a2;
  a2[1] = v4;
  return result;
}

unint64_t sub_1B9E9F524()
{
  v2 = qword_1EBBE6188;
  if (!qword_1EBBE6188)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EBBE6188);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1B9E9F5DC()
{
  v2 = qword_1EBBE6200;
  if (!qword_1EBBE6200)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBE61F8, &qword_1B9EDF3F8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBE6200);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B9E9F690()
{
  v2 = qword_1EBBE6208;
  if (!qword_1EBBE6208)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBE6208);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B9E9F748(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 49))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (!HIDWORD(*(a1 + 8)))
      {
        v3 = *(a1 + 8);
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1B9E9F860(uint64_t result, int a2, int a3)
{
  v3 = (result + 49);
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 32) = 0;
    *(result + 24) = 0;
    *(result + 16) = 0;
    *(result + 8) = 0;
    *result = a2 + 0x80000000;
    *(result + 48) = 0;
    if (a3 < 0)
    {
      *v3 = 1;
    }
  }

  else
  {
    if (a3 < 0)
    {
      *v3 = 0;
    }

    if (a2)
    {
      *(result + 8) = (a2 - 1);
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SFRemoteAlertPresentationRequest.PresentationType(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xFE)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 1) >> 8) + 1;
    v8 = 1;
    if (v7 >= 0x100)
    {
      if (v7 >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v8 = v2;
    }

    if (v8 == 1)
    {
      v6 = a1[1];
    }

    else
    {
      v6 = v8 == 2 ? *(a1 + 1) : *(a1 + 1);
    }

    if (v6)
    {
      v5 = (*a1 | ((v6 - 1) << 8)) + 254;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 2;
      if (v3 < 0)
      {
        v3 = -1;
      }

      v5 = v3;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for SFRemoteAlertPresentationRequest.PresentationType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xFE)
  {
    v5 = ((a3 + 1) >> 8) + 1;
    v6 = 1;
    if (v5 >= 0x100)
    {
      if (v5 >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v6 = v3;
    }

    v7 = v6;
  }

  if (a2 > 0xFE)
  {
    v4 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = v4;
      }

      else if (v7 == 2)
      {
        *(result + 1) = v4;
      }

      else
      {
        *(result + 1) = v4;
      }
    }
  }

  else
  {
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = 0;
      }

      else if (v7 == 2)
      {
        *(result + 1) = 0;
      }

      else
      {
        *(result + 1) = 0;
      }
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void *sub_1B9EA0168(uint64_t *a1, void *a2)
{
  if (*a1)
  {
    v3 = *a1;
    v4 = a1[1];

    *a2 = v3;
    a2[1] = v4;
  }

  else
  {
    *a2 = *a1;
  }

  return a2;
}

unint64_t sub_1B9EA01F8()
{
  v2 = qword_1EBBE6218;
  if (!qword_1EBBE6218)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EBBE6218);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_1B9EA025C()
{
  if (qword_1EBBE5D00 != -1)
  {
    swift_once();
  }

  v0 = sub_1B9ED85DC();
  return __swift_project_value_buffer(v0, qword_1EBBE7AB8);
}

uint64_t sub_1B9EA02C8()
{
  if (qword_1EBBE5CF8 != -1)
  {
    swift_once();
  }

  v0 = sub_1B9ED85DC();
  return __swift_project_value_buffer(v0, qword_1EBBE7AA0);
}

uint64_t sub_1B9EA0334()
{
  v1 = sub_1B9ED85DC();
  __swift_allocate_value_buffer(v1, qword_1EBBE7AA0);
  __swift_project_value_buffer(v1, qword_1EBBE7AA0);
  sub_1B9ED8B1C();
  sub_1B9ED8B1C();
  return sub_1B9ED85CC();
}

uint64_t sub_1B9EA03D8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B9EA02C8();
  v1 = sub_1B9ED85DC();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1B9EA043C()
{
  v1 = sub_1B9ED85DC();
  __swift_allocate_value_buffer(v1, qword_1EBBE7AB8);
  __swift_project_value_buffer(v1, qword_1EBBE7AB8);
  sub_1B9ED8B1C();
  sub_1B9ED8B1C();
  return sub_1B9ED85CC();
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    return *a2;
  }

  return v3;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v5 = a2;
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v2 = swift_slowAlloc();
    *a2 = v2;
    return v2;
  }

  return v5;
}

uint64_t sub_1B9EA05D4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B9EA025C();
  v1 = sub_1B9ED85DC();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

id SFUIShareSheetPopoverBackgroundView.init(frame:)(double a1, double a2, double a3, double a4)
{
  v38 = a1;
  v39 = a2;
  v40 = a3;
  v41 = a4;
  v68 = 0;
  v66 = 0u;
  v67 = 0u;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE6220, "~|");
  v33 = (*(*(v5 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v5, v6, v7);
  v58 = &v32 - v33;
  v34 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v32 - v33, v9, v10);
  v59 = &v32 - v34;
  v35 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v32 - v34, v12, v13);
  v60 = &v32 - v35;
  v36 = (v14 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v32 - v35, v15, v16);
  v61 = &v32 - v36;
  v52 = 0;
  v37 = (*(*(sub_1B9ED862C() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v52, v17, v18);
  v62 = &v32 - v37;
  v19 = sub_1B9ED869C();
  v42 = (*(*(v19 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v22 = MEMORY[0x1EEE9AC00](v19, v20, v21);
  v44 = &v32 - v42;
  *&v66 = v22;
  *(&v66 + 1) = v23;
  *&v67 = v24;
  *(&v67 + 1) = v25;
  v68 = v4;
  v65.receiver = v4;
  v65.super_class = SFUIShareSheetPopoverBackgroundView;
  *&v64[5] = v22;
  *&v64[6] = v23;
  *&v64[7] = v24;
  *&v64[8] = v25;
  v26 = objc_msgSendSuper2(&v65, sel_initWithFrame_, v22, v23, v24, v25);
  v63 = v26;
  MEMORY[0x1E69E5928](v26);
  v68 = v26;
  MEMORY[0x1E69E5928](v26);
  sub_1B9EA0CC4();
  v43 = sub_1B9EA0CDC();
  v27 = sub_1B9ED86AC();
  v45 = v64;
  v64[3] = v27;
  v64[4] = MEMORY[0x1E69DC388];
  __swift_allocate_boxed_opaque_existential_1(v64);
  sub_1B9ED86BC();
  sub_1B9ED8E2C();
  v28 = v63;
  MEMORY[0x1E69E5920](v63);
  MEMORY[0x1E69E5928](v28);
  v49 = 0x1FADAE000uLL;
  v48 = [v28 0x1FADAE878];
  MEMORY[0x1E69E5920](v28);
  v46 = [objc_opt_self() clearColor];
  v47 = [v46 CGColor];
  *&v29 = MEMORY[0x1E69E5920](v46).n128_u64[0];
  [v48 setShadowColor_];
  MEMORY[0x1E69E5920](v47);
  MEMORY[0x1E69E5920](v48);
  MEMORY[0x1E69E5928](v28);
  v50 = [v28 (v49 + 2168)];
  MEMORY[0x1E69E5920](v28);
  [v50 setShadowOpacity_];
  MEMORY[0x1E69E5920](v50);
  MEMORY[0x1E69E5928](v28);
  v51 = 0x4043000000000000;
  sub_1B9ED85FC();
  v55 = sub_1B9ED860C();
  v30 = *(v55 - 8);
  v57 = *(v30 + 56);
  v56 = v30 + 56;
  v53 = 0;
  v54 = 1;
  v57(v61);
  sub_1B9ED85FC();
  (v57)(v60, v53, v54, v55);
  sub_1B9ED85EC();
  (v57)(v59, v53, v54, v55);
  sub_1B9ED85EC();
  (v57)(v58, v53, v54, v55);
  sub_1B9ED861C();
  sub_1B9EA0D64(v58);
  sub_1B9EA0D64(v59);
  sub_1B9EA0D64(v60);
  sub_1B9EA0D64(v61);
  sub_1B9ED8E3C();
  MEMORY[0x1E69E5920](v63);
  MEMORY[0x1E69E5920](v68);
  return v63;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  v3 = result;
  if ((*(*(result[3] - 8) + 80) & 0x20000) != 0)
  {
    v1 = swift_allocBox();
    result = v2;
    *v3 = v1;
  }

  return result;
}

uint64_t sub_1B9EA0D64(uint64_t a1)
{
  v3 = sub_1B9ED860C();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

void SFUIShareSheetPopoverBackgroundView.init(coder:)()
{
  sub_1B9ED8B1C();
  sub_1B9ED900C();
  __break(1u);
}

double static SFUIShareSheetPopoverBackgroundView.effectiveBottomRadius(view:)(void *a1)
{
  v8 = [a1 window];
  if (v8)
  {
    v4 = [v8 traitCollection];
    [v4 displayCornerRadius];
    v5 = v1;
    MEMORY[0x1E69E5920](v4);
    v6 = v5;
    v7 = 0;
  }

  else
  {
    v6 = 0.0;
    v7 = 1;
  }

  if (v7)
  {
    return 38.0;
  }

  else
  {
    return v6;
  }
}

unint64_t type metadata accessor for SFUIShareSheetPopoverBackgroundView()
{
  v2 = qword_1EBBE6228;
  if (!qword_1EBBE6228)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EBBE6228);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_1B9EA1508()
{
  v2 = *(v0 + 16);

  return v2;
}

uint64_t sub_1B9EA1540()
{
  v2 = *(v0 + 32);

  return v2;
}

uint64_t sub_1B9EA1578()
{
  v2 = *(v0 + 48);

  return v2;
}

uint64_t sub_1B9EA1624(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  v6[2] = a1;
  v6[3] = a2;

  v6[4] = a3;
  v6[5] = a4;

  v6[6] = a5;
  v6[7] = a6;

  return v14;
}

uint64_t sub_1B9EA1704()
{
  type metadata accessor for TTRReportComponent();
  v7 = sub_1B9ED8B1C();
  v8 = v0;
  v5 = sub_1B9ED8B1C();
  v6 = v1;
  v2 = sub_1B9ED8B1C();
  return sub_1B9EA15B0(v7, v8, v5, v6, v2, v3);
}