uint64_t specialized MLTrainingSession.transition(to:)(int a1, uint64_t *a2)
{
  v3 = v2;
  v4 = *(v2 + direct field offset for MLTrainingSession.delegate + 24);
  v5 = *(v2 + direct field offset for MLTrainingSession.delegate + 32);
  v11 = __swift_project_boxed_opaque_existential_0Tm((v3 + direct field offset for MLTrainingSession.delegate), *(v3 + direct field offset for MLTrainingSession.delegate + 24));
  v6 = *(*v3 + 112) + v3;
  swift_beginAccess(v6, v10, 1, 0);
  v7 = __swift_instantiateConcreteTypeFromMangledName(a2);
  v13 = *(*(v7 + 28) + v6);
  v12 = a1;
  v14[0] = a1;
  result = (*(v5 + 80))(&v13, v14, v4, v5);
  v9 = *(v7 + 28);
  if (result)
  {
    *(v6 + v9) = v12;
    result = *(v7 + 32);
    *(v6 + result) = 0;
  }

  else
  {
    *(v6 + v9) = 4;
  }

  return result;
}

uint64_t specialized MLTrainingSession.extractFeatures(job:)(uint64_t a1)
{
  v2[8] = v1;
  v2[7] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for URL?);
  v2[9] = swift_task_alloc((*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for MLTrainingSessionParameters(0);
  v2[10] = v4;
  v2[11] = swift_task_alloc((*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for URL(0);
  v2[12] = v5;
  v6 = *(v5 - 8);
  v2[13] = v6;
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2[14] = swift_task_alloc(v7);
  v2[15] = swift_task_alloc(v7);
  v8 = type metadata accessor for MLCheckpoint(0);
  v2[16] = v8;
  v9 = *(v8 - 8);
  v2[17] = v9;
  v10 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2[18] = swift_task_alloc(v10);
  v2[19] = swift_task_alloc(v10);
  v11 = (*(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLCheckpoint?) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2[20] = swift_task_alloc(v11);
  v2[21] = swift_task_alloc(v11);
  return swift_task_switch(specialized MLTrainingSession.extractFeatures(job:), 0, 0);
}

{
  v2[8] = v1;
  v2[7] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for URL?);
  v2[9] = swift_task_alloc((*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for MLTrainingSessionParameters(0);
  v2[10] = v4;
  v2[11] = swift_task_alloc((*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for URL(0);
  v2[12] = v5;
  v6 = *(v5 - 8);
  v2[13] = v6;
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2[14] = swift_task_alloc(v7);
  v2[15] = swift_task_alloc(v7);
  v8 = type metadata accessor for MLCheckpoint(0);
  v2[16] = v8;
  v9 = *(v8 - 8);
  v2[17] = v9;
  v10 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2[18] = swift_task_alloc(v10);
  v2[19] = swift_task_alloc(v10);
  v11 = (*(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLCheckpoint?) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2[20] = swift_task_alloc(v11);
  v2[21] = swift_task_alloc(v11);
  return swift_task_switch(specialized MLTrainingSession.extractFeatures(job:), 0, 0);
}

{
  v2[8] = v1;
  v2[7] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for URL?);
  v2[9] = swift_task_alloc((*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for MLTrainingSessionParameters(0);
  v2[10] = v4;
  v2[11] = swift_task_alloc((*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for URL(0);
  v2[12] = v5;
  v6 = *(v5 - 8);
  v2[13] = v6;
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2[14] = swift_task_alloc(v7);
  v2[15] = swift_task_alloc(v7);
  v8 = type metadata accessor for MLCheckpoint(0);
  v2[16] = v8;
  v9 = *(v8 - 8);
  v2[17] = v9;
  v10 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2[18] = swift_task_alloc(v10);
  v2[19] = swift_task_alloc(v10);
  v11 = (*(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLCheckpoint?) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2[20] = swift_task_alloc(v11);
  v2[21] = swift_task_alloc(v11);
  return swift_task_switch(specialized MLTrainingSession.extractFeatures(job:), 0, 0);
}

{
  v2[8] = v1;
  v2[7] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for URL?);
  v2[9] = swift_task_alloc((*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for MLTrainingSessionParameters(0);
  v2[10] = v4;
  v2[11] = swift_task_alloc((*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for URL(0);
  v2[12] = v5;
  v6 = *(v5 - 8);
  v2[13] = v6;
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2[14] = swift_task_alloc(v7);
  v2[15] = swift_task_alloc(v7);
  v8 = type metadata accessor for MLCheckpoint(0);
  v2[16] = v8;
  v9 = *(v8 - 8);
  v2[17] = v9;
  v10 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2[18] = swift_task_alloc(v10);
  v2[19] = swift_task_alloc(v10);
  v11 = (*(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLCheckpoint?) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2[20] = swift_task_alloc(v11);
  v2[21] = swift_task_alloc(v11);
  return swift_task_switch(specialized MLTrainingSession.extractFeatures(job:), 0, 0);
}

{
  v2[8] = v1;
  v2[7] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for URL?);
  v2[9] = swift_task_alloc((*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for MLTrainingSessionParameters(0);
  v2[10] = v4;
  v2[11] = swift_task_alloc((*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for URL(0);
  v2[12] = v5;
  v6 = *(v5 - 8);
  v2[13] = v6;
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2[14] = swift_task_alloc(v7);
  v2[15] = swift_task_alloc(v7);
  v8 = type metadata accessor for MLCheckpoint(0);
  v2[16] = v8;
  v9 = *(v8 - 8);
  v2[17] = v9;
  v10 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2[18] = swift_task_alloc(v10);
  v2[19] = swift_task_alloc(v10);
  v11 = (*(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLCheckpoint?) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2[20] = swift_task_alloc(v11);
  v2[21] = swift_task_alloc(v11);
  return swift_task_switch(specialized MLTrainingSession.extractFeatures(job:), 0, 0);
}

{
  v2[8] = v1;
  v2[7] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for URL?);
  v2[9] = swift_task_alloc((*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for MLTrainingSessionParameters(0);
  v2[10] = v4;
  v2[11] = swift_task_alloc((*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for URL(0);
  v2[12] = v5;
  v6 = *(v5 - 8);
  v2[13] = v6;
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2[14] = swift_task_alloc(v7);
  v2[15] = swift_task_alloc(v7);
  v8 = type metadata accessor for MLCheckpoint(0);
  v2[16] = v8;
  v9 = *(v8 - 8);
  v2[17] = v9;
  v10 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2[18] = swift_task_alloc(v10);
  v2[19] = swift_task_alloc(v10);
  v11 = (*(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLCheckpoint?) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2[20] = swift_task_alloc(v11);
  v2[21] = swift_task_alloc(v11);
  return swift_task_switch(specialized MLTrainingSession.extractFeatures(job:), 0, 0);
}

{
  v2[8] = v1;
  v2[7] = a1;
  v3 = type metadata accessor for MLCheckpoint(0);
  v2[9] = v3;
  v4 = *(v3 - 8);
  v2[10] = v4;
  v5 = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2[11] = swift_task_alloc(v5);
  v2[12] = swift_task_alloc(v5);
  v6 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for URL?);
  v2[13] = swift_task_alloc((*(*(v6 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for MLTrainingSessionParameters(0);
  v2[14] = v7;
  v2[15] = swift_task_alloc((*(*(v7 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for URL(0);
  v2[16] = v8;
  v9 = *(v8 - 8);
  v2[17] = v9;
  v10 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2[18] = swift_task_alloc(v10);
  v2[19] = swift_task_alloc(v10);
  v11 = (*(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLCheckpoint?) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2[20] = swift_task_alloc(v11);
  v2[21] = swift_task_alloc(v11);
  return swift_task_switch(specialized MLTrainingSession.extractFeatures(job:), 0, 0);
}

{
  v2[8] = v1;
  v2[7] = a1;
  v3 = type metadata accessor for MLCheckpoint(0);
  v2[9] = v3;
  v4 = *(v3 - 8);
  v2[10] = v4;
  v5 = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2[11] = swift_task_alloc(v5);
  v2[12] = swift_task_alloc(v5);
  v6 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for URL?);
  v2[13] = swift_task_alloc((*(*(v6 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for MLTrainingSessionParameters(0);
  v2[14] = v7;
  v2[15] = swift_task_alloc((*(*(v7 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for URL(0);
  v2[16] = v8;
  v9 = *(v8 - 8);
  v2[17] = v9;
  v10 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2[18] = swift_task_alloc(v10);
  v2[19] = swift_task_alloc(v10);
  v11 = (*(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLCheckpoint?) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2[20] = swift_task_alloc(v11);
  v2[21] = swift_task_alloc(v11);
  return swift_task_switch(specialized MLTrainingSession.extractFeatures(job:), 0, 0);
}

{
  v2[8] = v1;
  v2[7] = a1;
  v3 = type metadata accessor for MLCheckpoint(0);
  v2[9] = v3;
  v4 = *(v3 - 8);
  v2[10] = v4;
  v5 = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2[11] = swift_task_alloc(v5);
  v2[12] = swift_task_alloc(v5);
  v6 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for URL?);
  v2[13] = swift_task_alloc((*(*(v6 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for MLTrainingSessionParameters(0);
  v2[14] = v7;
  v2[15] = swift_task_alloc((*(*(v7 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for URL(0);
  v2[16] = v8;
  v9 = *(v8 - 8);
  v2[17] = v9;
  v10 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2[18] = swift_task_alloc(v10);
  v2[19] = swift_task_alloc(v10);
  v11 = (*(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLCheckpoint?) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2[20] = swift_task_alloc(v11);
  v2[21] = swift_task_alloc(v11);
  return swift_task_switch(specialized MLTrainingSession.extractFeatures(job:), 0, 0);
}

{
  v2[8] = v1;
  v2[7] = a1;
  v3 = type metadata accessor for MLCheckpoint(0);
  v2[9] = v3;
  v4 = *(v3 - 8);
  v2[10] = v4;
  v5 = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2[11] = swift_task_alloc(v5);
  v2[12] = swift_task_alloc(v5);
  v6 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for URL?);
  v2[13] = swift_task_alloc((*(*(v6 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for MLTrainingSessionParameters(0);
  v2[14] = v7;
  v2[15] = swift_task_alloc((*(*(v7 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for URL(0);
  v2[16] = v8;
  v9 = *(v8 - 8);
  v2[17] = v9;
  v10 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2[18] = swift_task_alloc(v10);
  v2[19] = swift_task_alloc(v10);
  v11 = (*(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLCheckpoint?) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2[20] = swift_task_alloc(v11);
  v2[21] = swift_task_alloc(v11);
  return swift_task_switch(specialized MLTrainingSession.extractFeatures(job:), 0, 0);
}

{
  v2[8] = v1;
  v2[7] = a1;
  v3 = type metadata accessor for MLCheckpoint(0);
  v2[9] = v3;
  v4 = *(v3 - 8);
  v2[10] = v4;
  v5 = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2[11] = swift_task_alloc(v5);
  v2[12] = swift_task_alloc(v5);
  v6 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for URL?);
  v2[13] = swift_task_alloc((*(*(v6 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for MLTrainingSessionParameters(0);
  v2[14] = v7;
  v2[15] = swift_task_alloc((*(*(v7 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for URL(0);
  v2[16] = v8;
  v9 = *(v8 - 8);
  v2[17] = v9;
  v10 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2[18] = swift_task_alloc(v10);
  v2[19] = swift_task_alloc(v10);
  v11 = (*(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLCheckpoint?) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2[20] = swift_task_alloc(v11);
  v2[21] = swift_task_alloc(v11);
  return swift_task_switch(specialized MLTrainingSession.extractFeatures(job:), 0, 0);
}

{
  v2[8] = v1;
  v2[7] = a1;
  v3 = type metadata accessor for MLCheckpoint(0);
  v2[9] = v3;
  v4 = *(v3 - 8);
  v2[10] = v4;
  v5 = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2[11] = swift_task_alloc(v5);
  v2[12] = swift_task_alloc(v5);
  v6 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for URL?);
  v2[13] = swift_task_alloc((*(*(v6 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for MLTrainingSessionParameters(0);
  v2[14] = v7;
  v2[15] = swift_task_alloc((*(*(v7 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for URL(0);
  v2[16] = v8;
  v9 = *(v8 - 8);
  v2[17] = v9;
  v10 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2[18] = swift_task_alloc(v10);
  v2[19] = swift_task_alloc(v10);
  v11 = (*(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLCheckpoint?) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2[20] = swift_task_alloc(v11);
  v2[21] = swift_task_alloc(v11);
  return swift_task_switch(specialized MLTrainingSession.extractFeatures(job:), 0, 0);
}

{
  v2[8] = v1;
  v2[7] = a1;
  v3 = type metadata accessor for MLCheckpoint(0);
  v2[9] = v3;
  v4 = *(v3 - 8);
  v2[10] = v4;
  v5 = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2[11] = swift_task_alloc(v5);
  v2[12] = swift_task_alloc(v5);
  v6 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for URL?);
  v2[13] = swift_task_alloc((*(*(v6 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for MLTrainingSessionParameters(0);
  v2[14] = v7;
  v2[15] = swift_task_alloc((*(*(v7 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for URL(0);
  v2[16] = v8;
  v9 = *(v8 - 8);
  v2[17] = v9;
  v10 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2[18] = swift_task_alloc(v10);
  v2[19] = swift_task_alloc(v10);
  v11 = (*(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLCheckpoint?) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2[20] = swift_task_alloc(v11);
  v2[21] = swift_task_alloc(v11);
  return swift_task_switch(specialized MLTrainingSession.extractFeatures(job:), 0, 0);
}

{
  v2[8] = v1;
  v2[7] = a1;
  v3 = type metadata accessor for MLCheckpoint(0);
  v2[9] = v3;
  v4 = *(v3 - 8);
  v2[10] = v4;
  v5 = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2[11] = swift_task_alloc(v5);
  v2[12] = swift_task_alloc(v5);
  v6 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for URL?);
  v2[13] = swift_task_alloc((*(*(v6 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for MLTrainingSessionParameters(0);
  v2[14] = v7;
  v2[15] = swift_task_alloc((*(*(v7 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for URL(0);
  v2[16] = v8;
  v9 = *(v8 - 8);
  v2[17] = v9;
  v10 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2[18] = swift_task_alloc(v10);
  v2[19] = swift_task_alloc(v10);
  v11 = (*(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLCheckpoint?) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2[20] = swift_task_alloc(v11);
  v2[21] = swift_task_alloc(v11);
  return swift_task_switch(specialized MLTrainingSession.extractFeatures(job:), 0, 0);
}

{
  v2[8] = v1;
  v2[7] = a1;
  v3 = type metadata accessor for MLCheckpoint(0);
  v2[9] = v3;
  v4 = *(v3 - 8);
  v2[10] = v4;
  v5 = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2[11] = swift_task_alloc(v5);
  v2[12] = swift_task_alloc(v5);
  v6 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for URL?);
  v2[13] = swift_task_alloc((*(*(v6 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for MLTrainingSessionParameters(0);
  v2[14] = v7;
  v2[15] = swift_task_alloc((*(*(v7 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for URL(0);
  v2[16] = v8;
  v9 = *(v8 - 8);
  v2[17] = v9;
  v10 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2[18] = swift_task_alloc(v10);
  v2[19] = swift_task_alloc(v10);
  v11 = (*(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLCheckpoint?) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2[20] = swift_task_alloc(v11);
  v2[21] = swift_task_alloc(v11);
  return swift_task_switch(specialized MLTrainingSession.extractFeatures(job:), 0, 0);
}

{
  v2[8] = v1;
  v2[7] = a1;
  v3 = type metadata accessor for MLCheckpoint(0);
  v2[9] = v3;
  v4 = *(v3 - 8);
  v2[10] = v4;
  v5 = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2[11] = swift_task_alloc(v5);
  v2[12] = swift_task_alloc(v5);
  v6 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for URL?);
  v2[13] = swift_task_alloc((*(*(v6 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for MLTrainingSessionParameters(0);
  v2[14] = v7;
  v2[15] = swift_task_alloc((*(*(v7 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for URL(0);
  v2[16] = v8;
  v9 = *(v8 - 8);
  v2[17] = v9;
  v10 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2[18] = swift_task_alloc(v10);
  v2[19] = swift_task_alloc(v10);
  v11 = (*(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLCheckpoint?) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2[20] = swift_task_alloc(v11);
  v2[21] = swift_task_alloc(v11);
  return swift_task_switch(specialized MLTrainingSession.extractFeatures(job:), 0, 0);
}

{
  v2[8] = v1;
  v2[7] = a1;
  v3 = type metadata accessor for MLCheckpoint(0);
  v2[9] = v3;
  v4 = *(v3 - 8);
  v2[10] = v4;
  v5 = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2[11] = swift_task_alloc(v5);
  v2[12] = swift_task_alloc(v5);
  v6 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for URL?);
  v2[13] = swift_task_alloc((*(*(v6 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for MLTrainingSessionParameters(0);
  v2[14] = v7;
  v2[15] = swift_task_alloc((*(*(v7 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for URL(0);
  v2[16] = v8;
  v9 = *(v8 - 8);
  v2[17] = v9;
  v10 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2[18] = swift_task_alloc(v10);
  v2[19] = swift_task_alloc(v10);
  v11 = (*(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLCheckpoint?) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2[20] = swift_task_alloc(v11);
  v2[21] = swift_task_alloc(v11);
  return swift_task_switch(specialized MLTrainingSession.extractFeatures(job:), 0, 0);
}

uint64_t specialized MLTrainingSession.extractFeatures(job:)()
{
  v55 = v0 | 0x1000000000000000;
  v54 = v1;
  v2 = v1[8];
  v3 = *(*v2 + 112);
  v1[22] = v3;
  v4 = v3 + v2;
  swift_beginAccess(v4, (v1 + 2), 1, 0);
  v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLActivityClassifier>.Metadata);
  v1[23] = v5;
  v47 = v5;
  v46 = v4;
  v6 = *(*(v5 + 44) + v4);
  v1[5] = v6;
  v7 = *(v6 + 16);
  v49 = v1;
  if (v7)
  {
    v53 = v1[16];
    v52 = v1[17];
    v51 = (v6 + ((*(v52 + 80) + 32) & ~*(v52 + 80)));

    v48 = v6;
    while (1)
    {
      if (v7 > *(v6 + 16))
      {
        BUG();
      }

      --v7;
      v8 = v1[19];
      outlined init with copy of MLTrainingSessionParameters(v51 + v7 * *(v52 + 72), v8, type metadata accessor for MLCheckpoint);
      switch(*(v8 + *(v53 + 5)))
      {
        case 0:
          v9 = 0xEB0000000064657ALL;
          v10 = 0x696C616974696E69;
          goto LABEL_9;
        case 1:
          v45 = v1[19];
          110;
          outlined destroy of MLActivityClassifier.ModelParameters(v45, type metadata accessor for MLCheckpoint);
          LODWORD(v53) = 0;
          goto LABEL_14;
        case 2:
          v9 = 0xE800000000000000;
          v10 = 0x676E696E69617274;
          goto LABEL_9;
        case 3:
          v9 = 0xEA0000000000676ELL;
          v10 = 0x697461756C617665;
          goto LABEL_9;
        case 4:
          v9 = &loc_308EF - 0x14FFFFFFFF9B9A86;
          v10 = 0x636E657265666E69;
LABEL_9:
          v11 = v1[19];
          v12 = _stringCompareWithSmolCheck(_:_:expecting:)(v10, v9, 0x6974636172747865, 0xEA0000000000676ELL, 0);
          v9;
          v13 = outlined destroy of MLActivityClassifier.ModelParameters(v11, type metadata accessor for MLCheckpoint);
          if (v12)
          {
            LODWORD(v53) = 0;
            v14 = v48;
            goto LABEL_16;
          }

          v1 = v49;
          v6 = v48;
          if (!v7)
          {
            goto LABEL_13;
          }

          break;
      }
    }
  }

LABEL_13:
  LOBYTE(v13) = 1;
  LODWORD(v53) = v13;
  v7 = 0;
LABEL_14:
  v14 = v6;
LABEL_16:
  v51 = v49 + 6;
  v52 = v49[16];
  v15 = v49[21];
  v16 = swift_task_alloc(32);
  *(v16 + 16) = v49 + 5;
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lFxq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lyxs5NeverOqd_0_Isgnrzr_xSgAb2ERsd__Ri_d_0_r_0_lIetMgnrzo_Tpq5Si_8CreateML12MLCheckpointVTg5(closure #1 in BidirectionalCollection.last(where:)specialized partial apply, v16, v7, v53, v51);
  v14;
  v16;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v52);
  v18 = v49[21];
  if (EnumTagSinglePayload == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v18, &demangling cache variable for type metadata for MLCheckpoint?);
    v51 = 0;
  }

  else
  {
    v51 = *(v18 + *(v49[16] + 24));
    outlined destroy of MLActivityClassifier.ModelParameters(v18, type metadata accessor for MLCheckpoint);
  }

  v53 = v49[7];
  v19 = v49[8];
  v20 = direct field offset for MLTrainingSession.delegate;
  v49[24] = direct field offset for MLTrainingSession.delegate;
  v21 = *(v19 + v20 + 24);
  v52 = *(v19 + v20 + 32);
  __swift_project_boxed_opaque_existential_0Tm((v19 + v20), v21);
  v50 = *(v46 + *(v47 + 28));
  v22 = (*(v52 + 32))(&v50, v21);
  LOBYTE(v21) = v23;
  v49[25] = v22;
  *(v49 + 256) = v23;
  v52 = *(v46 + *(v47 + 32));
  v24 = *(v46 + *(v47 + 28));
  v25 = lazy protocol witness table accessor for type MLProgress.Metric and conformance MLProgress.Metric();
  v49[26] = v25;
  v26 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for MLProgress.Metric, &type metadata for Any + 8, v25);
  v27 = v22;
  v28 = v53;
  specialized MLJob.reportProgress(completedUnitCount:phase:phaseUnitCount:metrics:)(v52, v24, v27, v21 & 1, v26, specialized MLJob.currentPhase.setter);
  v26;
  if ([*(v28 + direct field offset for MLJob.progress) isCancelled])
  {
    v29 = v49[21];
    v30 = v49[20];
    v31 = v49[19];
    v32 = v49[18];
    v33 = v49[15];
    v51 = v49[14];
    v53 = v49[9];
    v52 = v49[11];
    v29;
    v30;
    v31;
    v32;
    v33;
    v51;
    v52;
    v53;
    return (v49[1])();
  }

  else
  {
    v49[27] = direct field offset for MLTrainingSession.parameters;
    v49[28] = v51;
    v35 = v49[8];
    v36 = v49[23];
    v37 = (v35 + v49[24]);
    v38 = v35 + v49[22];
    v39 = v37[3];
    v40 = v37[4];
    v53 = __swift_project_boxed_opaque_existential_0Tm(v37, v39);
    v41 = *(*(v36 + 32) + v38);
    v42 = *(v40 + 48);
    v43 = (v42 + *v42);
    v44 = swift_task_alloc(v42[1]);
    v49[29] = v44;
    *v44 = v49;
    v44[1] = specialized MLTrainingSession.extractFeatures(job:);
    return v43(v41, v39, v40);
  }
}

{
  v74 = v0 | 0x1000000000000000;
  v73 = v1;
  v2 = *(v1 + 184);
  v3 = *(v1 + 176) + *(v1 + 64);
  v4 = *(v2 + 8);
  v5 = *(v4 + v3);
  v6 = __OFADD__(*(v1 + 240), v5);
  v7 = *(v1 + 240) + v5;
  if (v6)
  {
    BUG();
  }

  v72 = *(v1 + 224);
  v8 = *(v1 + 208);
  v9 = *(v1 + 256);
  v70 = *(v1 + 56);
  v68 = *(v1 + 200);
  *(v3 + v4) = v7;
  LODWORD(v71) = *(v3 + *(v2 + 7));
  v69 = v2;
  v10 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for MLProgress.Metric, &type metadata for Any + 8, v8);
  specialized MLJob.reportProgress(completedUnitCount:phase:phaseUnitCount:metrics:)(v7, v71, v68, v9 & 1, v10, specialized MLJob.currentPhase.setter);
  v10;
  v11 = *(v3 + *(v69 + 8));
  if (__OFSUB__(v11, v72))
  {
    BUG();
  }

  v12 = (v1 + 224);
  v13 = *(v1 + 216) + *(v1 + 64);
  if (v11 - v72 < *(*(*(v1 + 80) + 24) + v13) && (*(v1 + 257) & (*(v1 + 240) > 0)) == 0)
  {
    goto LABEL_7;
  }

  v72 = v11;
  v14 = *(v1 + 96);
  v15 = *(v1 + 72);
  v16 = *(v1 + 88);
  outlined init with copy of MLTrainingSessionParameters(v13, v16, type metadata accessor for MLTrainingSessionParameters);
  outlined init with take of URL?(v16, v15);
  if (__swift_getEnumTagSinglePayload(v15, 1, v14) == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(*(v1 + 72), &demangling cache variable for type metadata for URL?);
LABEL_7:
    v17 = *(v1 + 248);
    goto LABEL_8;
  }

  v29 = *(v1 + 184);
  v30 = *(v1 + 176) + *(v1 + 64);
  (*(*(v1 + 104) + 32))(*(v1 + 120), *(v1 + 72), *(v1 + 96));
  v31 = *(*(v29 + 28) + v30);
  v32 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<CVarArg>);
  v33 = swift_allocObject(v32, 112, 7);
  v33[2] = 2;
  v33[3] = 4;
  switch(v31)
  {
    case 0:
      v71 = 0x696C616974696E69;
      v66 = 0xEB0000000064657ALL;
      goto LABEL_22;
    case 1:
      v46 = 0x6974636172747865;
      goto LABEL_21;
    case 2:
      v66 = 0xE800000000000000;
      v45 = 0x676E696E69617274;
      goto LABEL_18;
    case 3:
      v46 = 0x697461756C617665;
LABEL_21:
      v71 = v46;
      v66 = 0xEA0000000000676ELL;
      goto LABEL_22;
    case 4:
      v66 = 0xEB00000000676E69;
      v45 = 0x636E657265666E69;
LABEL_18:
      v71 = v45;
LABEL_22:
      v69 = *(v1 + 248);
      v70 = *(v1 + 160);
      v68 = *(v1 + 64);
      v47 = *(v1 + 112);
      v33[7] = &type metadata for String;
      v33[8] = lazy protocol witness table accessor for type String and conformance String();
      v33[4] = v71;
      v33[5] = v66;
      v33[12] = &type metadata for Int;
      v33[13] = &protocol witness table for Int;
      v33[9] = v72;
      v48 = String.init(format:_:)(0xD000000000000012, ("ng a features checkpoint." + 0x8000000000000000), v33);
      v50 = v49;
      URL.appendingPathComponent(_:)(v48, v49);
      v50;
      specialized MLTrainingSession.saveFeatureExtractionCheckpoint(to:)(v47, &demangling cache variable for type metadata for MLTrainingSession<MLActivityClassifier>.Metadata, specialized MLTrainingSession.save());
      if (v69)
      {
        v72 = v69;
        v51 = *(v1 + 120);
        v52 = *(v1 + 96);
        v53 = *(*(v1 + 104) + 8);
        v53(*(v1 + 112), v52);
        v53(v51, v52);
        goto LABEL_24;
      }

      v59 = *(v1 + 160);
      if (__swift_getEnumTagSinglePayload(v59, 1, *(v1 + 128)) == 1)
      {
        v60 = *(v1 + 120);
        v61 = *(v1 + 96);
        v62 = *(*(v1 + 104) + 8);
        v62(*(v1 + 112), v61);
        v62(v60, v61);
        outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v59, &demangling cache variable for type metadata for MLCheckpoint?);
        v17 = 0;
        v12 = (v1 + 224);
      }

      else
      {
        v72 = *(v1 + 184);
        v63 = *(v1 + 144);
        v69 = *(v1 + 120);
        v70 = *(v1 + 112);
        v71 = *(v1 + 104);
        v68 = *(v1 + 96);
        v64 = *(v1 + 176) + *(v1 + 64);
        outlined init with take of MLClassifierMetrics(v59, v63, type metadata accessor for MLCheckpoint);
        PassthroughSubject.send(_:)(v63);
        outlined destroy of MLActivityClassifier.ModelParameters(v63, type metadata accessor for MLCheckpoint);
        v65 = *(v71 + 8);
        v65(v70, v68);
        v65(v69, v68);
        v12 = (v64 + *(v72 + 8));
        v17 = 0;
      }

      break;
  }

LABEL_8:
  if (*(v1 + 257) == 1)
  {
    v18 = (*(v1 + 192) + *(v1 + 64));
    v72 = v17;
    specialized MLTrainingSession.transition(to:)(2, &demangling cache variable for type metadata for MLTrainingSession<MLActivityClassifier>.Metadata);
    v19 = v18[3];
    v20 = v18[4];
    v67 = 2;
    __swift_project_boxed_opaque_existential_0Tm(v18, v19);
    v21 = v72;
    (*(v20 + 40))(&v67, v19, v20);
    if (v21)
    {
      v72 = v21;
LABEL_24:
      v54 = *(v1 + 168);
      v55 = *(v1 + 160);
      v56 = *(v1 + 152);
      v57 = *(v1 + 144);
      v58 = *(v1 + 120);
      v68 = *(v1 + 112);
      v69 = *(v1 + 72);
      v70 = *(v1 + 88);
      v54;
      v55;
      v56;
      v57;
      v58;
      v68;
      v70;
      v69;
      v28 = *(v1 + 8);
      return v28();
    }
  }

  else
  {
    v22 = *v12;
    if (![*(*(v1 + 56) + direct field offset for MLJob.progress) isCancelled])
    {
      *(v1 + 224) = v22;
      v34 = *(v1 + 64);
      v35 = *(v1 + 184);
      v36 = (v34 + *(v1 + 192));
      v37 = v34 + *(v1 + 176);
      v38 = v36[3];
      v39 = v36[4];
      v72 = __swift_project_boxed_opaque_existential_0Tm(v36, v38);
      v40 = *(*(v35 + 32) + v37);
      v41 = *(v39 + 48);
      v42 = (v41 + *v41);
      v43 = swift_task_alloc(v41[1]);
      *(v1 + 232) = v43;
      *v43 = v1;
      v43[1] = specialized MLTrainingSession.extractFeatures(job:);
      return v42(v40, v38, v39);
    }
  }

  v23 = *(v1 + 168);
  v24 = *(v1 + 160);
  v25 = *(v1 + 152);
  v26 = *(v1 + 144);
  v27 = *(v1 + 120);
  v70 = *(v1 + 112);
  v72 = *(v1 + 72);
  v69 = *(v1 + 88);
  v23;
  v24;
  v25;
  v26;
  v27;
  v70;
  v69;
  v72;
  v28 = *(v1 + 8);
  return v28();
}

{
  v55 = v0 | 0x1000000000000000;
  v54 = v1;
  v2 = v1[8];
  v3 = *(*v2 + 112);
  v1[22] = v3;
  v4 = v3 + v2;
  swift_beginAccess(v4, (v1 + 2), 1, 0);
  v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLHandPoseClassifier>.Metadata);
  v1[23] = v5;
  v47 = v5;
  v46 = v4;
  v6 = *(*(v5 + 44) + v4);
  v1[5] = v6;
  v7 = *(v6 + 16);
  v49 = v1;
  if (v7)
  {
    v53 = v1[16];
    v52 = v1[17];
    v51 = (v6 + ((*(v52 + 80) + 32) & ~*(v52 + 80)));

    v48 = v6;
    while (1)
    {
      if (v7 > *(v6 + 16))
      {
        BUG();
      }

      --v7;
      v8 = v1[19];
      outlined init with copy of MLTrainingSessionParameters(v51 + v7 * *(v52 + 72), v8, type metadata accessor for MLCheckpoint);
      switch(*(v8 + *(v53 + 5)))
      {
        case 0:
          v9 = 0xEB0000000064657ALL;
          v10 = 0x696C616974696E69;
          goto LABEL_9;
        case 1:
          v45 = v1[19];
          110;
          outlined destroy of MLActivityClassifier.ModelParameters(v45, type metadata accessor for MLCheckpoint);
          LODWORD(v53) = 0;
          goto LABEL_14;
        case 2:
          v9 = 0xE800000000000000;
          v10 = 0x676E696E69617274;
          goto LABEL_9;
        case 3:
          v9 = 0xEA0000000000676ELL;
          v10 = 0x697461756C617665;
          goto LABEL_9;
        case 4:
          v9 = &loc_308EF - 0x14FFFFFFFF9B9A86;
          v10 = 0x636E657265666E69;
LABEL_9:
          v11 = v1[19];
          v12 = _stringCompareWithSmolCheck(_:_:expecting:)(v10, v9, 0x6974636172747865, 0xEA0000000000676ELL, 0);
          v9;
          v13 = outlined destroy of MLActivityClassifier.ModelParameters(v11, type metadata accessor for MLCheckpoint);
          if (v12)
          {
            LODWORD(v53) = 0;
            v14 = v48;
            goto LABEL_16;
          }

          v1 = v49;
          v6 = v48;
          if (!v7)
          {
            goto LABEL_13;
          }

          break;
      }
    }
  }

LABEL_13:
  LOBYTE(v13) = 1;
  LODWORD(v53) = v13;
  v7 = 0;
LABEL_14:
  v14 = v6;
LABEL_16:
  v51 = v49 + 6;
  v52 = v49[16];
  v15 = v49[21];
  v16 = swift_task_alloc(32);
  *(v16 + 16) = v49 + 5;
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lFxq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lyxs5NeverOqd_0_Isgnrzr_xSgAb2ERsd__Ri_d_0_r_0_lIetMgnrzo_Tpq5Si_8CreateML12MLCheckpointVTg5(closure #1 in BidirectionalCollection.last(where:)specialized partial apply, v16, v7, v53, v51);
  v14;
  v16;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v52);
  v18 = v49[21];
  if (EnumTagSinglePayload == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v18, &demangling cache variable for type metadata for MLCheckpoint?);
    v51 = 0;
  }

  else
  {
    v51 = *(v18 + *(v49[16] + 24));
    outlined destroy of MLActivityClassifier.ModelParameters(v18, type metadata accessor for MLCheckpoint);
  }

  v53 = v49[7];
  v19 = v49[8];
  v20 = direct field offset for MLTrainingSession.delegate;
  v49[24] = direct field offset for MLTrainingSession.delegate;
  v21 = *(v19 + v20 + 24);
  v52 = *(v19 + v20 + 32);
  __swift_project_boxed_opaque_existential_0Tm((v19 + v20), v21);
  v50 = *(v46 + *(v47 + 28));
  v22 = (*(v52 + 32))(&v50, v21);
  LOBYTE(v21) = v23;
  v49[25] = v22;
  *(v49 + 256) = v23;
  v52 = *(v46 + *(v47 + 32));
  v24 = *(v46 + *(v47 + 28));
  v25 = lazy protocol witness table accessor for type MLProgress.Metric and conformance MLProgress.Metric();
  v49[26] = v25;
  v26 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for MLProgress.Metric, &type metadata for Any + 8, v25);
  v27 = v22;
  v28 = v53;
  specialized MLJob.reportProgress(completedUnitCount:phase:phaseUnitCount:metrics:)(v52, v24, v27, v21 & 1, v26, specialized MLJob.currentPhase.setter);
  v26;
  if ([*(v28 + direct field offset for MLJob.progress) isCancelled])
  {
    v29 = v49[21];
    v30 = v49[20];
    v31 = v49[19];
    v32 = v49[18];
    v33 = v49[15];
    v51 = v49[14];
    v53 = v49[9];
    v52 = v49[11];
    v29;
    v30;
    v31;
    v32;
    v33;
    v51;
    v52;
    v53;
    return (v49[1])();
  }

  else
  {
    v49[27] = direct field offset for MLTrainingSession.parameters;
    v49[28] = v51;
    v35 = v49[8];
    v36 = v49[23];
    v37 = (v35 + v49[24]);
    v38 = v35 + v49[22];
    v39 = v37[3];
    v40 = v37[4];
    v53 = __swift_project_boxed_opaque_existential_0Tm(v37, v39);
    v41 = *(*(v36 + 32) + v38);
    v42 = *(v40 + 48);
    v43 = (v42 + *v42);
    v44 = swift_task_alloc(v42[1]);
    v49[29] = v44;
    *v44 = v49;
    v44[1] = specialized MLTrainingSession.extractFeatures(job:);
    return v43(v41, v39, v40);
  }
}

{
  v74 = v0 | 0x1000000000000000;
  v73 = v1;
  v2 = *(v1 + 184);
  v3 = *(v1 + 176) + *(v1 + 64);
  v4 = *(v2 + 8);
  v5 = *(v4 + v3);
  v6 = __OFADD__(*(v1 + 240), v5);
  v7 = *(v1 + 240) + v5;
  if (v6)
  {
    BUG();
  }

  v72 = *(v1 + 224);
  v8 = *(v1 + 208);
  v9 = *(v1 + 256);
  v70 = *(v1 + 56);
  v68 = *(v1 + 200);
  *(v3 + v4) = v7;
  LODWORD(v71) = *(v3 + *(v2 + 7));
  v69 = v2;
  v10 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for MLProgress.Metric, &type metadata for Any + 8, v8);
  specialized MLJob.reportProgress(completedUnitCount:phase:phaseUnitCount:metrics:)(v7, v71, v68, v9 & 1, v10, specialized MLJob.currentPhase.setter);
  v10;
  v11 = *(v3 + *(v69 + 8));
  if (__OFSUB__(v11, v72))
  {
    BUG();
  }

  v12 = (v1 + 224);
  v13 = *(v1 + 216) + *(v1 + 64);
  if (v11 - v72 < *(*(*(v1 + 80) + 24) + v13) && (*(v1 + 257) & (*(v1 + 240) > 0)) == 0)
  {
    goto LABEL_7;
  }

  v72 = v11;
  v14 = *(v1 + 96);
  v15 = *(v1 + 72);
  v16 = *(v1 + 88);
  outlined init with copy of MLTrainingSessionParameters(v13, v16, type metadata accessor for MLTrainingSessionParameters);
  outlined init with take of URL?(v16, v15);
  if (__swift_getEnumTagSinglePayload(v15, 1, v14) == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(*(v1 + 72), &demangling cache variable for type metadata for URL?);
LABEL_7:
    v17 = *(v1 + 248);
    goto LABEL_8;
  }

  v29 = *(v1 + 184);
  v30 = *(v1 + 176) + *(v1 + 64);
  (*(*(v1 + 104) + 32))(*(v1 + 120), *(v1 + 72), *(v1 + 96));
  v31 = *(*(v29 + 28) + v30);
  v32 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<CVarArg>);
  v33 = swift_allocObject(v32, 112, 7);
  v33[2] = 2;
  v33[3] = 4;
  switch(v31)
  {
    case 0:
      v71 = 0x696C616974696E69;
      v66 = 0xEB0000000064657ALL;
      goto LABEL_22;
    case 1:
      v46 = 0x6974636172747865;
      goto LABEL_21;
    case 2:
      v66 = 0xE800000000000000;
      v45 = 0x676E696E69617274;
      goto LABEL_18;
    case 3:
      v46 = 0x697461756C617665;
LABEL_21:
      v71 = v46;
      v66 = 0xEA0000000000676ELL;
      goto LABEL_22;
    case 4:
      v66 = 0xEB00000000676E69;
      v45 = 0x636E657265666E69;
LABEL_18:
      v71 = v45;
LABEL_22:
      v69 = *(v1 + 248);
      v70 = *(v1 + 160);
      v68 = *(v1 + 64);
      v47 = *(v1 + 112);
      v33[7] = &type metadata for String;
      v33[8] = lazy protocol witness table accessor for type String and conformance String();
      v33[4] = v71;
      v33[5] = v66;
      v33[12] = &type metadata for Int;
      v33[13] = &protocol witness table for Int;
      v33[9] = v72;
      v48 = String.init(format:_:)(0xD000000000000012, ("ng a features checkpoint." + 0x8000000000000000), v33);
      v50 = v49;
      URL.appendingPathComponent(_:)(v48, v49);
      v50;
      specialized MLTrainingSession.saveFeatureExtractionCheckpoint(to:)(v47, &demangling cache variable for type metadata for MLTrainingSession<MLHandPoseClassifier>.Metadata, specialized MLTrainingSession.save());
      if (v69)
      {
        v72 = v69;
        v51 = *(v1 + 120);
        v52 = *(v1 + 96);
        v53 = *(*(v1 + 104) + 8);
        v53(*(v1 + 112), v52);
        v53(v51, v52);
        goto LABEL_24;
      }

      v59 = *(v1 + 160);
      if (__swift_getEnumTagSinglePayload(v59, 1, *(v1 + 128)) == 1)
      {
        v60 = *(v1 + 120);
        v61 = *(v1 + 96);
        v62 = *(*(v1 + 104) + 8);
        v62(*(v1 + 112), v61);
        v62(v60, v61);
        outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v59, &demangling cache variable for type metadata for MLCheckpoint?);
        v17 = 0;
        v12 = (v1 + 224);
      }

      else
      {
        v72 = *(v1 + 184);
        v63 = *(v1 + 144);
        v69 = *(v1 + 120);
        v70 = *(v1 + 112);
        v71 = *(v1 + 104);
        v68 = *(v1 + 96);
        v64 = *(v1 + 176) + *(v1 + 64);
        outlined init with take of MLClassifierMetrics(v59, v63, type metadata accessor for MLCheckpoint);
        PassthroughSubject.send(_:)(v63);
        outlined destroy of MLActivityClassifier.ModelParameters(v63, type metadata accessor for MLCheckpoint);
        v65 = *(v71 + 8);
        v65(v70, v68);
        v65(v69, v68);
        v12 = (v64 + *(v72 + 8));
        v17 = 0;
      }

      break;
  }

LABEL_8:
  if (*(v1 + 257) == 1)
  {
    v18 = (*(v1 + 192) + *(v1 + 64));
    v72 = v17;
    specialized MLTrainingSession.transition(to:)(2, &demangling cache variable for type metadata for MLTrainingSession<MLHandPoseClassifier>.Metadata);
    v19 = v18[3];
    v20 = v18[4];
    v67 = 2;
    __swift_project_boxed_opaque_existential_0Tm(v18, v19);
    v21 = v72;
    (*(v20 + 40))(&v67, v19, v20);
    if (v21)
    {
      v72 = v21;
LABEL_24:
      v54 = *(v1 + 168);
      v55 = *(v1 + 160);
      v56 = *(v1 + 152);
      v57 = *(v1 + 144);
      v58 = *(v1 + 120);
      v68 = *(v1 + 112);
      v69 = *(v1 + 72);
      v70 = *(v1 + 88);
      v54;
      v55;
      v56;
      v57;
      v58;
      v68;
      v70;
      v69;
      v28 = *(v1 + 8);
      return v28();
    }
  }

  else
  {
    v22 = *v12;
    if (![*(*(v1 + 56) + direct field offset for MLJob.progress) isCancelled])
    {
      *(v1 + 224) = v22;
      v34 = *(v1 + 64);
      v35 = *(v1 + 184);
      v36 = (v34 + *(v1 + 192));
      v37 = v34 + *(v1 + 176);
      v38 = v36[3];
      v39 = v36[4];
      v72 = __swift_project_boxed_opaque_existential_0Tm(v36, v38);
      v40 = *(*(v35 + 32) + v37);
      v41 = *(v39 + 48);
      v42 = (v41 + *v41);
      v43 = swift_task_alloc(v41[1]);
      *(v1 + 232) = v43;
      *v43 = v1;
      v43[1] = specialized MLTrainingSession.extractFeatures(job:);
      return v42(v40, v38, v39);
    }
  }

  v23 = *(v1 + 168);
  v24 = *(v1 + 160);
  v25 = *(v1 + 152);
  v26 = *(v1 + 144);
  v27 = *(v1 + 120);
  v70 = *(v1 + 112);
  v72 = *(v1 + 72);
  v69 = *(v1 + 88);
  v23;
  v24;
  v25;
  v26;
  v27;
  v70;
  v69;
  v72;
  v28 = *(v1 + 8);
  return v28();
}

{
  v55 = v0 | 0x1000000000000000;
  v54 = v1;
  v2 = v1[8];
  v3 = *(*v2 + 112);
  v1[22] = v3;
  v4 = v3 + v2;
  swift_beginAccess(v4, (v1 + 2), 1, 0);
  v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLRandomForestRegressor>.Metadata);
  v1[23] = v5;
  v47 = v5;
  v46 = v4;
  v6 = *(*(v5 + 44) + v4);
  v1[5] = v6;
  v7 = *(v6 + 16);
  v49 = v1;
  if (v7)
  {
    v53 = v1[16];
    v52 = v1[17];
    v51 = (v6 + ((*(v52 + 80) + 32) & ~*(v52 + 80)));

    v48 = v6;
    while (1)
    {
      if (v7 > *(v6 + 16))
      {
        BUG();
      }

      --v7;
      v8 = v1[19];
      outlined init with copy of MLTrainingSessionParameters(v51 + v7 * *(v52 + 72), v8, type metadata accessor for MLCheckpoint);
      switch(*(v8 + *(v53 + 5)))
      {
        case 0:
          v9 = 0xEB0000000064657ALL;
          v10 = 0x696C616974696E69;
          goto LABEL_9;
        case 1:
          v45 = v1[19];
          110;
          outlined destroy of MLActivityClassifier.ModelParameters(v45, type metadata accessor for MLCheckpoint);
          LODWORD(v53) = 0;
          goto LABEL_14;
        case 2:
          v9 = 0xE800000000000000;
          v10 = 0x676E696E69617274;
          goto LABEL_9;
        case 3:
          v9 = 0xEA0000000000676ELL;
          v10 = 0x697461756C617665;
          goto LABEL_9;
        case 4:
          v9 = &loc_308EF - 0x14FFFFFFFF9B9A86;
          v10 = 0x636E657265666E69;
LABEL_9:
          v11 = v1[19];
          v12 = _stringCompareWithSmolCheck(_:_:expecting:)(v10, v9, 0x6974636172747865, 0xEA0000000000676ELL, 0);
          v9;
          v13 = outlined destroy of MLActivityClassifier.ModelParameters(v11, type metadata accessor for MLCheckpoint);
          if (v12)
          {
            LODWORD(v53) = 0;
            v14 = v48;
            goto LABEL_16;
          }

          v1 = v49;
          v6 = v48;
          if (!v7)
          {
            goto LABEL_13;
          }

          break;
      }
    }
  }

LABEL_13:
  LOBYTE(v13) = 1;
  LODWORD(v53) = v13;
  v7 = 0;
LABEL_14:
  v14 = v6;
LABEL_16:
  v51 = v49 + 6;
  v52 = v49[16];
  v15 = v49[21];
  v16 = swift_task_alloc(32);
  *(v16 + 16) = v49 + 5;
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lFxq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lyxs5NeverOqd_0_Isgnrzr_xSgAb2ERsd__Ri_d_0_r_0_lIetMgnrzo_Tpq5Si_8CreateML12MLCheckpointVTg5(closure #1 in BidirectionalCollection.last(where:)specialized partial apply, v16, v7, v53, v51);
  v14;
  v16;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v52);
  v18 = v49[21];
  if (EnumTagSinglePayload == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v18, &demangling cache variable for type metadata for MLCheckpoint?);
    v51 = 0;
  }

  else
  {
    v51 = *(v18 + *(v49[16] + 24));
    outlined destroy of MLActivityClassifier.ModelParameters(v18, type metadata accessor for MLCheckpoint);
  }

  v53 = v49[7];
  v19 = v49[8];
  v20 = direct field offset for MLTrainingSession.delegate;
  v49[24] = direct field offset for MLTrainingSession.delegate;
  v21 = *(v19 + v20 + 24);
  v52 = *(v19 + v20 + 32);
  __swift_project_boxed_opaque_existential_0Tm((v19 + v20), v21);
  v50 = *(v46 + *(v47 + 28));
  v22 = (*(v52 + 32))(&v50, v21);
  LOBYTE(v21) = v23;
  v49[25] = v22;
  *(v49 + 256) = v23;
  v52 = *(v46 + *(v47 + 32));
  v24 = *(v46 + *(v47 + 28));
  v25 = lazy protocol witness table accessor for type MLProgress.Metric and conformance MLProgress.Metric();
  v49[26] = v25;
  v26 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for MLProgress.Metric, &type metadata for Any + 8, v25);
  v27 = v22;
  v28 = v53;
  specialized MLJob.reportProgress(completedUnitCount:phase:phaseUnitCount:metrics:)(v52, v24, v27, v21 & 1, v26, specialized MLJob.currentPhase.setter);
  v26;
  if ([*(v28 + direct field offset for MLJob.progress) isCancelled])
  {
    v29 = v49[21];
    v30 = v49[20];
    v31 = v49[19];
    v32 = v49[18];
    v33 = v49[15];
    v51 = v49[14];
    v53 = v49[9];
    v52 = v49[11];
    v29;
    v30;
    v31;
    v32;
    v33;
    v51;
    v52;
    v53;
    return (v49[1])();
  }

  else
  {
    v49[27] = direct field offset for MLTrainingSession.parameters;
    v49[28] = v51;
    v35 = v49[8];
    v36 = v49[23];
    v37 = (v35 + v49[24]);
    v38 = v35 + v49[22];
    v39 = v37[3];
    v40 = v37[4];
    v53 = __swift_project_boxed_opaque_existential_0Tm(v37, v39);
    v41 = *(*(v36 + 32) + v38);
    v42 = *(v40 + 48);
    v43 = (v42 + *v42);
    v44 = swift_task_alloc(v42[1]);
    v49[29] = v44;
    *v44 = v49;
    v44[1] = specialized MLTrainingSession.extractFeatures(job:);
    return v43(v41, v39, v40);
  }
}

{
  v74 = v0 | 0x1000000000000000;
  v73 = v1;
  v2 = *(v1 + 184);
  v3 = *(v1 + 176) + *(v1 + 64);
  v4 = *(v2 + 8);
  v5 = *(v4 + v3);
  v6 = __OFADD__(*(v1 + 240), v5);
  v7 = *(v1 + 240) + v5;
  if (v6)
  {
    BUG();
  }

  v72 = *(v1 + 224);
  v8 = *(v1 + 208);
  v9 = *(v1 + 256);
  v70 = *(v1 + 56);
  v68 = *(v1 + 200);
  *(v3 + v4) = v7;
  LODWORD(v71) = *(v3 + *(v2 + 7));
  v69 = v2;
  v10 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for MLProgress.Metric, &type metadata for Any + 8, v8);
  specialized MLJob.reportProgress(completedUnitCount:phase:phaseUnitCount:metrics:)(v7, v71, v68, v9 & 1, v10, specialized MLJob.currentPhase.setter);
  v10;
  v11 = *(v3 + *(v69 + 8));
  if (__OFSUB__(v11, v72))
  {
    BUG();
  }

  v12 = (v1 + 224);
  v13 = *(v1 + 216) + *(v1 + 64);
  if (v11 - v72 < *(*(*(v1 + 80) + 24) + v13) && (*(v1 + 257) & (*(v1 + 240) > 0)) == 0)
  {
    goto LABEL_7;
  }

  v72 = v11;
  v14 = *(v1 + 96);
  v15 = *(v1 + 72);
  v16 = *(v1 + 88);
  outlined init with copy of MLTrainingSessionParameters(v13, v16, type metadata accessor for MLTrainingSessionParameters);
  outlined init with take of URL?(v16, v15);
  if (__swift_getEnumTagSinglePayload(v15, 1, v14) == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(*(v1 + 72), &demangling cache variable for type metadata for URL?);
LABEL_7:
    v17 = *(v1 + 248);
    goto LABEL_8;
  }

  v29 = *(v1 + 184);
  v30 = *(v1 + 176) + *(v1 + 64);
  (*(*(v1 + 104) + 32))(*(v1 + 120), *(v1 + 72), *(v1 + 96));
  v31 = *(*(v29 + 28) + v30);
  v32 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<CVarArg>);
  v33 = swift_allocObject(v32, 112, 7);
  v33[2] = 2;
  v33[3] = 4;
  switch(v31)
  {
    case 0:
      v71 = 0x696C616974696E69;
      v66 = 0xEB0000000064657ALL;
      goto LABEL_22;
    case 1:
      v46 = 0x6974636172747865;
      goto LABEL_21;
    case 2:
      v66 = 0xE800000000000000;
      v45 = 0x676E696E69617274;
      goto LABEL_18;
    case 3:
      v46 = 0x697461756C617665;
LABEL_21:
      v71 = v46;
      v66 = 0xEA0000000000676ELL;
      goto LABEL_22;
    case 4:
      v66 = 0xEB00000000676E69;
      v45 = 0x636E657265666E69;
LABEL_18:
      v71 = v45;
LABEL_22:
      v69 = *(v1 + 248);
      v70 = *(v1 + 160);
      v68 = *(v1 + 64);
      v47 = *(v1 + 112);
      v33[7] = &type metadata for String;
      v33[8] = lazy protocol witness table accessor for type String and conformance String();
      v33[4] = v71;
      v33[5] = v66;
      v33[12] = &type metadata for Int;
      v33[13] = &protocol witness table for Int;
      v33[9] = v72;
      v48 = String.init(format:_:)(0xD000000000000012, ("ng a features checkpoint." + 0x8000000000000000), v33);
      v50 = v49;
      URL.appendingPathComponent(_:)(v48, v49);
      v50;
      specialized MLTrainingSession.saveFeatureExtractionCheckpoint(to:)(v47, &demangling cache variable for type metadata for MLTrainingSession<MLRandomForestRegressor>.Metadata, specialized MLTrainingSession.save());
      if (v69)
      {
        v72 = v69;
        v51 = *(v1 + 120);
        v52 = *(v1 + 96);
        v53 = *(*(v1 + 104) + 8);
        v53(*(v1 + 112), v52);
        v53(v51, v52);
        goto LABEL_24;
      }

      v59 = *(v1 + 160);
      if (__swift_getEnumTagSinglePayload(v59, 1, *(v1 + 128)) == 1)
      {
        v60 = *(v1 + 120);
        v61 = *(v1 + 96);
        v62 = *(*(v1 + 104) + 8);
        v62(*(v1 + 112), v61);
        v62(v60, v61);
        outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v59, &demangling cache variable for type metadata for MLCheckpoint?);
        v17 = 0;
        v12 = (v1 + 224);
      }

      else
      {
        v72 = *(v1 + 184);
        v63 = *(v1 + 144);
        v69 = *(v1 + 120);
        v70 = *(v1 + 112);
        v71 = *(v1 + 104);
        v68 = *(v1 + 96);
        v64 = *(v1 + 176) + *(v1 + 64);
        outlined init with take of MLClassifierMetrics(v59, v63, type metadata accessor for MLCheckpoint);
        PassthroughSubject.send(_:)(v63);
        outlined destroy of MLActivityClassifier.ModelParameters(v63, type metadata accessor for MLCheckpoint);
        v65 = *(v71 + 8);
        v65(v70, v68);
        v65(v69, v68);
        v12 = (v64 + *(v72 + 8));
        v17 = 0;
      }

      break;
  }

LABEL_8:
  if (*(v1 + 257) == 1)
  {
    v18 = (*(v1 + 192) + *(v1 + 64));
    v72 = v17;
    specialized MLTrainingSession.transition(to:)(2, &demangling cache variable for type metadata for MLTrainingSession<MLRandomForestRegressor>.Metadata);
    v19 = v18[3];
    v20 = v18[4];
    v67 = 2;
    __swift_project_boxed_opaque_existential_0Tm(v18, v19);
    v21 = v72;
    (*(v20 + 40))(&v67, v19, v20);
    if (v21)
    {
      v72 = v21;
LABEL_24:
      v54 = *(v1 + 168);
      v55 = *(v1 + 160);
      v56 = *(v1 + 152);
      v57 = *(v1 + 144);
      v58 = *(v1 + 120);
      v68 = *(v1 + 112);
      v69 = *(v1 + 72);
      v70 = *(v1 + 88);
      v54;
      v55;
      v56;
      v57;
      v58;
      v68;
      v70;
      v69;
      v28 = *(v1 + 8);
      return v28();
    }
  }

  else
  {
    v22 = *v12;
    if (![*(*(v1 + 56) + direct field offset for MLJob.progress) isCancelled])
    {
      *(v1 + 224) = v22;
      v34 = *(v1 + 64);
      v35 = *(v1 + 184);
      v36 = (v34 + *(v1 + 192));
      v37 = v34 + *(v1 + 176);
      v38 = v36[3];
      v39 = v36[4];
      v72 = __swift_project_boxed_opaque_existential_0Tm(v36, v38);
      v40 = *(*(v35 + 32) + v37);
      v41 = *(v39 + 48);
      v42 = (v41 + *v41);
      v43 = swift_task_alloc(v41[1]);
      *(v1 + 232) = v43;
      *v43 = v1;
      v43[1] = specialized MLTrainingSession.extractFeatures(job:);
      return v42(v40, v38, v39);
    }
  }

  v23 = *(v1 + 168);
  v24 = *(v1 + 160);
  v25 = *(v1 + 152);
  v26 = *(v1 + 144);
  v27 = *(v1 + 120);
  v70 = *(v1 + 112);
  v72 = *(v1 + 72);
  v69 = *(v1 + 88);
  v23;
  v24;
  v25;
  v26;
  v27;
  v70;
  v69;
  v72;
  v28 = *(v1 + 8);
  return v28();
}

{
  v55 = v0 | 0x1000000000000000;
  v54 = v1;
  v2 = v1[8];
  v3 = *(*v2 + 112);
  v1[22] = v3;
  v4 = v3 + v2;
  swift_beginAccess(v4, (v1 + 2), 1, 0);
  v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLStyleTransfer>.Metadata);
  v1[23] = v5;
  v47 = v5;
  v46 = v4;
  v6 = *(*(v5 + 44) + v4);
  v1[5] = v6;
  v7 = *(v6 + 16);
  v49 = v1;
  if (v7)
  {
    v53 = v1[16];
    v52 = v1[17];
    v51 = (v6 + ((*(v52 + 80) + 32) & ~*(v52 + 80)));

    v48 = v6;
    while (1)
    {
      if (v7 > *(v6 + 16))
      {
        BUG();
      }

      --v7;
      v8 = v1[19];
      outlined init with copy of MLTrainingSessionParameters(v51 + v7 * *(v52 + 72), v8, type metadata accessor for MLCheckpoint);
      switch(*(v8 + *(v53 + 5)))
      {
        case 0:
          v9 = 0xEB0000000064657ALL;
          v10 = 0x696C616974696E69;
          goto LABEL_9;
        case 1:
          v45 = v1[19];
          110;
          outlined destroy of MLActivityClassifier.ModelParameters(v45, type metadata accessor for MLCheckpoint);
          LODWORD(v53) = 0;
          goto LABEL_14;
        case 2:
          v9 = 0xE800000000000000;
          v10 = 0x676E696E69617274;
          goto LABEL_9;
        case 3:
          v9 = 0xEA0000000000676ELL;
          v10 = 0x697461756C617665;
          goto LABEL_9;
        case 4:
          v9 = &loc_308EF - 0x14FFFFFFFF9B9A86;
          v10 = 0x636E657265666E69;
LABEL_9:
          v11 = v1[19];
          v12 = _stringCompareWithSmolCheck(_:_:expecting:)(v10, v9, 0x6974636172747865, 0xEA0000000000676ELL, 0);
          v9;
          v13 = outlined destroy of MLActivityClassifier.ModelParameters(v11, type metadata accessor for MLCheckpoint);
          if (v12)
          {
            LODWORD(v53) = 0;
            v14 = v48;
            goto LABEL_16;
          }

          v1 = v49;
          v6 = v48;
          if (!v7)
          {
            goto LABEL_13;
          }

          break;
      }
    }
  }

LABEL_13:
  LOBYTE(v13) = 1;
  LODWORD(v53) = v13;
  v7 = 0;
LABEL_14:
  v14 = v6;
LABEL_16:
  v51 = v49 + 6;
  v52 = v49[16];
  v15 = v49[21];
  v16 = swift_task_alloc(32);
  *(v16 + 16) = v49 + 5;
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lFxq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lyxs5NeverOqd_0_Isgnrzr_xSgAb2ERsd__Ri_d_0_r_0_lIetMgnrzo_Tpq5Si_8CreateML12MLCheckpointVTg5(closure #1 in BidirectionalCollection.last(where:)specialized partial apply, v16, v7, v53, v51);
  v14;
  v16;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v52);
  v18 = v49[21];
  if (EnumTagSinglePayload == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v18, &demangling cache variable for type metadata for MLCheckpoint?);
    v51 = 0;
  }

  else
  {
    v51 = *(v18 + *(v49[16] + 24));
    outlined destroy of MLActivityClassifier.ModelParameters(v18, type metadata accessor for MLCheckpoint);
  }

  v53 = v49[7];
  v19 = v49[8];
  v20 = direct field offset for MLTrainingSession.delegate;
  v49[24] = direct field offset for MLTrainingSession.delegate;
  v21 = *(v19 + v20 + 24);
  v52 = *(v19 + v20 + 32);
  __swift_project_boxed_opaque_existential_0Tm((v19 + v20), v21);
  v50 = *(v46 + *(v47 + 28));
  v22 = (*(v52 + 32))(&v50, v21);
  LOBYTE(v21) = v23;
  v49[25] = v22;
  *(v49 + 256) = v23;
  v52 = *(v46 + *(v47 + 32));
  v24 = *(v46 + *(v47 + 28));
  v25 = lazy protocol witness table accessor for type MLProgress.Metric and conformance MLProgress.Metric();
  v49[26] = v25;
  v26 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for MLProgress.Metric, &type metadata for Any + 8, v25);
  v27 = v22;
  v28 = v53;
  specialized MLJob.reportProgress(completedUnitCount:phase:phaseUnitCount:metrics:)(v52, v24, v27, v21 & 1, v26, specialized MLJob.currentPhase.setter);
  v26;
  if ([*(v28 + direct field offset for MLJob.progress) isCancelled])
  {
    v29 = v49[21];
    v30 = v49[20];
    v31 = v49[19];
    v32 = v49[18];
    v33 = v49[15];
    v51 = v49[14];
    v53 = v49[9];
    v52 = v49[11];
    v29;
    v30;
    v31;
    v32;
    v33;
    v51;
    v52;
    v53;
    return (v49[1])();
  }

  else
  {
    v49[27] = direct field offset for MLTrainingSession.parameters;
    v49[28] = v51;
    v35 = v49[8];
    v36 = v49[23];
    v37 = (v35 + v49[24]);
    v38 = v35 + v49[22];
    v39 = v37[3];
    v40 = v37[4];
    v53 = __swift_project_boxed_opaque_existential_0Tm(v37, v39);
    v41 = *(*(v36 + 32) + v38);
    v42 = *(v40 + 48);
    v43 = (v42 + *v42);
    v44 = swift_task_alloc(v42[1]);
    v49[29] = v44;
    *v44 = v49;
    v44[1] = specialized MLTrainingSession.extractFeatures(job:);
    return v43(v41, v39, v40);
  }
}

{
  v74 = v0 | 0x1000000000000000;
  v73 = v1;
  v2 = *(v1 + 184);
  v3 = *(v1 + 176) + *(v1 + 64);
  v4 = *(v2 + 8);
  v5 = *(v4 + v3);
  v6 = __OFADD__(*(v1 + 240), v5);
  v7 = *(v1 + 240) + v5;
  if (v6)
  {
    BUG();
  }

  v72 = *(v1 + 224);
  v8 = *(v1 + 208);
  v9 = *(v1 + 256);
  v70 = *(v1 + 56);
  v68 = *(v1 + 200);
  *(v3 + v4) = v7;
  LODWORD(v71) = *(v3 + *(v2 + 7));
  v69 = v2;
  v10 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for MLProgress.Metric, &type metadata for Any + 8, v8);
  specialized MLJob.reportProgress(completedUnitCount:phase:phaseUnitCount:metrics:)(v7, v71, v68, v9 & 1, v10, specialized MLJob.currentPhase.setter);
  v10;
  v11 = *(v3 + *(v69 + 8));
  if (__OFSUB__(v11, v72))
  {
    BUG();
  }

  v12 = (v1 + 224);
  v13 = *(v1 + 216) + *(v1 + 64);
  if (v11 - v72 < *(*(*(v1 + 80) + 24) + v13) && (*(v1 + 257) & (*(v1 + 240) > 0)) == 0)
  {
    goto LABEL_7;
  }

  v72 = v11;
  v14 = *(v1 + 96);
  v15 = *(v1 + 72);
  v16 = *(v1 + 88);
  outlined init with copy of MLTrainingSessionParameters(v13, v16, type metadata accessor for MLTrainingSessionParameters);
  outlined init with take of URL?(v16, v15);
  if (__swift_getEnumTagSinglePayload(v15, 1, v14) == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(*(v1 + 72), &demangling cache variable for type metadata for URL?);
LABEL_7:
    v17 = *(v1 + 248);
    goto LABEL_8;
  }

  v29 = *(v1 + 184);
  v30 = *(v1 + 176) + *(v1 + 64);
  (*(*(v1 + 104) + 32))(*(v1 + 120), *(v1 + 72), *(v1 + 96));
  v31 = *(*(v29 + 28) + v30);
  v32 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<CVarArg>);
  v33 = swift_allocObject(v32, 112, 7);
  v33[2] = 2;
  v33[3] = 4;
  switch(v31)
  {
    case 0:
      v71 = 0x696C616974696E69;
      v66 = 0xEB0000000064657ALL;
      goto LABEL_22;
    case 1:
      v46 = 0x6974636172747865;
      goto LABEL_21;
    case 2:
      v66 = 0xE800000000000000;
      v45 = 0x676E696E69617274;
      goto LABEL_18;
    case 3:
      v46 = 0x697461756C617665;
LABEL_21:
      v71 = v46;
      v66 = 0xEA0000000000676ELL;
      goto LABEL_22;
    case 4:
      v66 = 0xEB00000000676E69;
      v45 = 0x636E657265666E69;
LABEL_18:
      v71 = v45;
LABEL_22:
      v69 = *(v1 + 248);
      v70 = *(v1 + 160);
      v68 = *(v1 + 64);
      v47 = *(v1 + 112);
      v33[7] = &type metadata for String;
      v33[8] = lazy protocol witness table accessor for type String and conformance String();
      v33[4] = v71;
      v33[5] = v66;
      v33[12] = &type metadata for Int;
      v33[13] = &protocol witness table for Int;
      v33[9] = v72;
      v48 = String.init(format:_:)(0xD000000000000012, ("ng a features checkpoint." + 0x8000000000000000), v33);
      v50 = v49;
      URL.appendingPathComponent(_:)(v48, v49);
      v50;
      specialized MLTrainingSession.saveFeatureExtractionCheckpoint(to:)(v47, &demangling cache variable for type metadata for MLTrainingSession<MLStyleTransfer>.Metadata, specialized MLTrainingSession.save());
      if (v69)
      {
        v72 = v69;
        v51 = *(v1 + 120);
        v52 = *(v1 + 96);
        v53 = *(*(v1 + 104) + 8);
        v53(*(v1 + 112), v52);
        v53(v51, v52);
        goto LABEL_24;
      }

      v59 = *(v1 + 160);
      if (__swift_getEnumTagSinglePayload(v59, 1, *(v1 + 128)) == 1)
      {
        v60 = *(v1 + 120);
        v61 = *(v1 + 96);
        v62 = *(*(v1 + 104) + 8);
        v62(*(v1 + 112), v61);
        v62(v60, v61);
        outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v59, &demangling cache variable for type metadata for MLCheckpoint?);
        v17 = 0;
        v12 = (v1 + 224);
      }

      else
      {
        v72 = *(v1 + 184);
        v63 = *(v1 + 144);
        v69 = *(v1 + 120);
        v70 = *(v1 + 112);
        v71 = *(v1 + 104);
        v68 = *(v1 + 96);
        v64 = *(v1 + 176) + *(v1 + 64);
        outlined init with take of MLClassifierMetrics(v59, v63, type metadata accessor for MLCheckpoint);
        PassthroughSubject.send(_:)(v63);
        outlined destroy of MLActivityClassifier.ModelParameters(v63, type metadata accessor for MLCheckpoint);
        v65 = *(v71 + 8);
        v65(v70, v68);
        v65(v69, v68);
        v12 = (v64 + *(v72 + 8));
        v17 = 0;
      }

      break;
  }

LABEL_8:
  if (*(v1 + 257) == 1)
  {
    v18 = (*(v1 + 192) + *(v1 + 64));
    v72 = v17;
    specialized MLTrainingSession.transition(to:)(2, &demangling cache variable for type metadata for MLTrainingSession<MLStyleTransfer>.Metadata);
    v19 = v18[3];
    v20 = v18[4];
    v67 = 2;
    __swift_project_boxed_opaque_existential_0Tm(v18, v19);
    v21 = v72;
    (*(v20 + 40))(&v67, v19, v20);
    if (v21)
    {
      v72 = v21;
LABEL_24:
      v54 = *(v1 + 168);
      v55 = *(v1 + 160);
      v56 = *(v1 + 152);
      v57 = *(v1 + 144);
      v58 = *(v1 + 120);
      v68 = *(v1 + 112);
      v69 = *(v1 + 72);
      v70 = *(v1 + 88);
      v54;
      v55;
      v56;
      v57;
      v58;
      v68;
      v70;
      v69;
      v28 = *(v1 + 8);
      return v28();
    }
  }

  else
  {
    v22 = *v12;
    if (![*(*(v1 + 56) + direct field offset for MLJob.progress) isCancelled])
    {
      *(v1 + 224) = v22;
      v34 = *(v1 + 64);
      v35 = *(v1 + 184);
      v36 = (v34 + *(v1 + 192));
      v37 = v34 + *(v1 + 176);
      v38 = v36[3];
      v39 = v36[4];
      v72 = __swift_project_boxed_opaque_existential_0Tm(v36, v38);
      v40 = *(*(v35 + 32) + v37);
      v41 = *(v39 + 48);
      v42 = (v41 + *v41);
      v43 = swift_task_alloc(v41[1]);
      *(v1 + 232) = v43;
      *v43 = v1;
      v43[1] = specialized MLTrainingSession.extractFeatures(job:);
      return v42(v40, v38, v39);
    }
  }

  v23 = *(v1 + 168);
  v24 = *(v1 + 160);
  v25 = *(v1 + 152);
  v26 = *(v1 + 144);
  v27 = *(v1 + 120);
  v70 = *(v1 + 112);
  v72 = *(v1 + 72);
  v69 = *(v1 + 88);
  v23;
  v24;
  v25;
  v26;
  v27;
  v70;
  v69;
  v72;
  v28 = *(v1 + 8);
  return v28();
}

{
  v55 = v0 | 0x1000000000000000;
  v54 = v1;
  v2 = v1[8];
  v3 = *(*v2 + 112);
  v1[22] = v3;
  v4 = v3 + v2;
  swift_beginAccess(v4, (v1 + 2), 1, 0);
  v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLLogisticRegressionClassifier>.Metadata);
  v1[23] = v5;
  v47 = v5;
  v46 = v4;
  v6 = *(*(v5 + 44) + v4);
  v1[5] = v6;
  v7 = *(v6 + 16);
  v49 = v1;
  if (v7)
  {
    v53 = v1[16];
    v52 = v1[17];
    v51 = (v6 + ((*(v52 + 80) + 32) & ~*(v52 + 80)));

    v48 = v6;
    while (1)
    {
      if (v7 > *(v6 + 16))
      {
        BUG();
      }

      --v7;
      v8 = v1[19];
      outlined init with copy of MLTrainingSessionParameters(v51 + v7 * *(v52 + 72), v8, type metadata accessor for MLCheckpoint);
      switch(*(v8 + *(v53 + 5)))
      {
        case 0:
          v9 = 0xEB0000000064657ALL;
          v10 = 0x696C616974696E69;
          goto LABEL_9;
        case 1:
          v45 = v1[19];
          110;
          outlined destroy of MLActivityClassifier.ModelParameters(v45, type metadata accessor for MLCheckpoint);
          LODWORD(v53) = 0;
          goto LABEL_14;
        case 2:
          v9 = 0xE800000000000000;
          v10 = 0x676E696E69617274;
          goto LABEL_9;
        case 3:
          v9 = 0xEA0000000000676ELL;
          v10 = 0x697461756C617665;
          goto LABEL_9;
        case 4:
          v9 = &loc_308EF - 0x14FFFFFFFF9B9A86;
          v10 = 0x636E657265666E69;
LABEL_9:
          v11 = v1[19];
          v12 = _stringCompareWithSmolCheck(_:_:expecting:)(v10, v9, 0x6974636172747865, 0xEA0000000000676ELL, 0);
          v9;
          v13 = outlined destroy of MLActivityClassifier.ModelParameters(v11, type metadata accessor for MLCheckpoint);
          if (v12)
          {
            LODWORD(v53) = 0;
            v14 = v48;
            goto LABEL_16;
          }

          v1 = v49;
          v6 = v48;
          if (!v7)
          {
            goto LABEL_13;
          }

          break;
      }
    }
  }

LABEL_13:
  LOBYTE(v13) = 1;
  LODWORD(v53) = v13;
  v7 = 0;
LABEL_14:
  v14 = v6;
LABEL_16:
  v51 = v49 + 6;
  v52 = v49[16];
  v15 = v49[21];
  v16 = swift_task_alloc(32);
  *(v16 + 16) = v49 + 5;
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lFxq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lyxs5NeverOqd_0_Isgnrzr_xSgAb2ERsd__Ri_d_0_r_0_lIetMgnrzo_Tpq5Si_8CreateML12MLCheckpointVTg5(closure #1 in BidirectionalCollection.last(where:)specialized partial apply, v16, v7, v53, v51);
  v14;
  v16;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v52);
  v18 = v49[21];
  if (EnumTagSinglePayload == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v18, &demangling cache variable for type metadata for MLCheckpoint?);
    v51 = 0;
  }

  else
  {
    v51 = *(v18 + *(v49[16] + 24));
    outlined destroy of MLActivityClassifier.ModelParameters(v18, type metadata accessor for MLCheckpoint);
  }

  v53 = v49[7];
  v19 = v49[8];
  v20 = direct field offset for MLTrainingSession.delegate;
  v49[24] = direct field offset for MLTrainingSession.delegate;
  v21 = *(v19 + v20 + 24);
  v52 = *(v19 + v20 + 32);
  __swift_project_boxed_opaque_existential_0Tm((v19 + v20), v21);
  v50 = *(v46 + *(v47 + 28));
  v22 = (*(v52 + 32))(&v50, v21);
  LOBYTE(v21) = v23;
  v49[25] = v22;
  *(v49 + 256) = v23;
  v52 = *(v46 + *(v47 + 32));
  v24 = *(v46 + *(v47 + 28));
  v25 = lazy protocol witness table accessor for type MLProgress.Metric and conformance MLProgress.Metric();
  v49[26] = v25;
  v26 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for MLProgress.Metric, &type metadata for Any + 8, v25);
  v27 = v22;
  v28 = v53;
  specialized MLJob.reportProgress(completedUnitCount:phase:phaseUnitCount:metrics:)(v52, v24, v27, v21 & 1, v26, specialized MLJob.currentPhase.setter);
  v26;
  if ([*(v28 + direct field offset for MLJob.progress) isCancelled])
  {
    v29 = v49[21];
    v30 = v49[20];
    v31 = v49[19];
    v32 = v49[18];
    v33 = v49[15];
    v51 = v49[14];
    v53 = v49[9];
    v52 = v49[11];
    v29;
    v30;
    v31;
    v32;
    v33;
    v51;
    v52;
    v53;
    return (v49[1])();
  }

  else
  {
    v49[27] = direct field offset for MLTrainingSession.parameters;
    v49[28] = v51;
    v35 = v49[8];
    v36 = v49[23];
    v37 = (v35 + v49[24]);
    v38 = v35 + v49[22];
    v39 = v37[3];
    v40 = v37[4];
    v53 = __swift_project_boxed_opaque_existential_0Tm(v37, v39);
    v41 = *(*(v36 + 32) + v38);
    v42 = *(v40 + 48);
    v43 = (v42 + *v42);
    v44 = swift_task_alloc(v42[1]);
    v49[29] = v44;
    *v44 = v49;
    v44[1] = specialized MLTrainingSession.extractFeatures(job:);
    return v43(v41, v39, v40);
  }
}

{
  v74 = v0 | 0x1000000000000000;
  v73 = v1;
  v2 = *(v1 + 184);
  v3 = *(v1 + 176) + *(v1 + 64);
  v4 = *(v2 + 8);
  v5 = *(v4 + v3);
  v6 = __OFADD__(*(v1 + 240), v5);
  v7 = *(v1 + 240) + v5;
  if (v6)
  {
    BUG();
  }

  v72 = *(v1 + 224);
  v8 = *(v1 + 208);
  v9 = *(v1 + 256);
  v70 = *(v1 + 56);
  v68 = *(v1 + 200);
  *(v3 + v4) = v7;
  LODWORD(v71) = *(v3 + *(v2 + 7));
  v69 = v2;
  v10 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for MLProgress.Metric, &type metadata for Any + 8, v8);
  specialized MLJob.reportProgress(completedUnitCount:phase:phaseUnitCount:metrics:)(v7, v71, v68, v9 & 1, v10, specialized MLJob.currentPhase.setter);
  v10;
  v11 = *(v3 + *(v69 + 8));
  if (__OFSUB__(v11, v72))
  {
    BUG();
  }

  v12 = (v1 + 224);
  v13 = *(v1 + 216) + *(v1 + 64);
  if (v11 - v72 < *(*(*(v1 + 80) + 24) + v13) && (*(v1 + 257) & (*(v1 + 240) > 0)) == 0)
  {
    goto LABEL_7;
  }

  v72 = v11;
  v14 = *(v1 + 96);
  v15 = *(v1 + 72);
  v16 = *(v1 + 88);
  outlined init with copy of MLTrainingSessionParameters(v13, v16, type metadata accessor for MLTrainingSessionParameters);
  outlined init with take of URL?(v16, v15);
  if (__swift_getEnumTagSinglePayload(v15, 1, v14) == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(*(v1 + 72), &demangling cache variable for type metadata for URL?);
LABEL_7:
    v17 = *(v1 + 248);
    goto LABEL_8;
  }

  v29 = *(v1 + 184);
  v30 = *(v1 + 176) + *(v1 + 64);
  (*(*(v1 + 104) + 32))(*(v1 + 120), *(v1 + 72), *(v1 + 96));
  v31 = *(*(v29 + 28) + v30);
  v32 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<CVarArg>);
  v33 = swift_allocObject(v32, 112, 7);
  v33[2] = 2;
  v33[3] = 4;
  switch(v31)
  {
    case 0:
      v71 = 0x696C616974696E69;
      v66 = 0xEB0000000064657ALL;
      goto LABEL_22;
    case 1:
      v46 = 0x6974636172747865;
      goto LABEL_21;
    case 2:
      v66 = 0xE800000000000000;
      v45 = 0x676E696E69617274;
      goto LABEL_18;
    case 3:
      v46 = 0x697461756C617665;
LABEL_21:
      v71 = v46;
      v66 = 0xEA0000000000676ELL;
      goto LABEL_22;
    case 4:
      v66 = 0xEB00000000676E69;
      v45 = 0x636E657265666E69;
LABEL_18:
      v71 = v45;
LABEL_22:
      v69 = *(v1 + 248);
      v70 = *(v1 + 160);
      v68 = *(v1 + 64);
      v47 = *(v1 + 112);
      v33[7] = &type metadata for String;
      v33[8] = lazy protocol witness table accessor for type String and conformance String();
      v33[4] = v71;
      v33[5] = v66;
      v33[12] = &type metadata for Int;
      v33[13] = &protocol witness table for Int;
      v33[9] = v72;
      v48 = String.init(format:_:)(0xD000000000000012, ("ng a features checkpoint." + 0x8000000000000000), v33);
      v50 = v49;
      URL.appendingPathComponent(_:)(v48, v49);
      v50;
      specialized MLTrainingSession.saveFeatureExtractionCheckpoint(to:)(v47, &demangling cache variable for type metadata for MLTrainingSession<MLLogisticRegressionClassifier>.Metadata, specialized MLTrainingSession.save());
      if (v69)
      {
        v72 = v69;
        v51 = *(v1 + 120);
        v52 = *(v1 + 96);
        v53 = *(*(v1 + 104) + 8);
        v53(*(v1 + 112), v52);
        v53(v51, v52);
        goto LABEL_24;
      }

      v59 = *(v1 + 160);
      if (__swift_getEnumTagSinglePayload(v59, 1, *(v1 + 128)) == 1)
      {
        v60 = *(v1 + 120);
        v61 = *(v1 + 96);
        v62 = *(*(v1 + 104) + 8);
        v62(*(v1 + 112), v61);
        v62(v60, v61);
        outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v59, &demangling cache variable for type metadata for MLCheckpoint?);
        v17 = 0;
        v12 = (v1 + 224);
      }

      else
      {
        v72 = *(v1 + 184);
        v63 = *(v1 + 144);
        v69 = *(v1 + 120);
        v70 = *(v1 + 112);
        v71 = *(v1 + 104);
        v68 = *(v1 + 96);
        v64 = *(v1 + 176) + *(v1 + 64);
        outlined init with take of MLClassifierMetrics(v59, v63, type metadata accessor for MLCheckpoint);
        PassthroughSubject.send(_:)(v63);
        outlined destroy of MLActivityClassifier.ModelParameters(v63, type metadata accessor for MLCheckpoint);
        v65 = *(v71 + 8);
        v65(v70, v68);
        v65(v69, v68);
        v12 = (v64 + *(v72 + 8));
        v17 = 0;
      }

      break;
  }

LABEL_8:
  if (*(v1 + 257) == 1)
  {
    v18 = (*(v1 + 192) + *(v1 + 64));
    v72 = v17;
    specialized MLTrainingSession.transition(to:)(2, &demangling cache variable for type metadata for MLTrainingSession<MLLogisticRegressionClassifier>.Metadata);
    v19 = v18[3];
    v20 = v18[4];
    v67 = 2;
    __swift_project_boxed_opaque_existential_0Tm(v18, v19);
    v21 = v72;
    (*(v20 + 40))(&v67, v19, v20);
    if (v21)
    {
      v72 = v21;
LABEL_24:
      v54 = *(v1 + 168);
      v55 = *(v1 + 160);
      v56 = *(v1 + 152);
      v57 = *(v1 + 144);
      v58 = *(v1 + 120);
      v68 = *(v1 + 112);
      v69 = *(v1 + 72);
      v70 = *(v1 + 88);
      v54;
      v55;
      v56;
      v57;
      v58;
      v68;
      v70;
      v69;
      v28 = *(v1 + 8);
      return v28();
    }
  }

  else
  {
    v22 = *v12;
    if (![*(*(v1 + 56) + direct field offset for MLJob.progress) isCancelled])
    {
      *(v1 + 224) = v22;
      v34 = *(v1 + 64);
      v35 = *(v1 + 184);
      v36 = (v34 + *(v1 + 192));
      v37 = v34 + *(v1 + 176);
      v38 = v36[3];
      v39 = v36[4];
      v72 = __swift_project_boxed_opaque_existential_0Tm(v36, v38);
      v40 = *(*(v35 + 32) + v37);
      v41 = *(v39 + 48);
      v42 = (v41 + *v41);
      v43 = swift_task_alloc(v41[1]);
      *(v1 + 232) = v43;
      *v43 = v1;
      v43[1] = specialized MLTrainingSession.extractFeatures(job:);
      return v42(v40, v38, v39);
    }
  }

  v23 = *(v1 + 168);
  v24 = *(v1 + 160);
  v25 = *(v1 + 152);
  v26 = *(v1 + 144);
  v27 = *(v1 + 120);
  v70 = *(v1 + 112);
  v72 = *(v1 + 72);
  v69 = *(v1 + 88);
  v23;
  v24;
  v25;
  v26;
  v27;
  v70;
  v69;
  v72;
  v28 = *(v1 + 8);
  return v28();
}

{
  v55 = v0 | 0x1000000000000000;
  v54 = v1;
  v2 = v1[8];
  v3 = *(*v2 + 112);
  v1[22] = v3;
  v4 = v3 + v2;
  swift_beginAccess(v4, (v1 + 2), 1, 0);
  v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLDecisionTreeRegressor>.Metadata);
  v1[23] = v5;
  v47 = v5;
  v46 = v4;
  v6 = *(*(v5 + 44) + v4);
  v1[5] = v6;
  v7 = *(v6 + 16);
  v49 = v1;
  if (v7)
  {
    v53 = v1[16];
    v52 = v1[17];
    v51 = (v6 + ((*(v52 + 80) + 32) & ~*(v52 + 80)));

    v48 = v6;
    while (1)
    {
      if (v7 > *(v6 + 16))
      {
        BUG();
      }

      --v7;
      v8 = v1[19];
      outlined init with copy of MLTrainingSessionParameters(v51 + v7 * *(v52 + 72), v8, type metadata accessor for MLCheckpoint);
      switch(*(v8 + *(v53 + 5)))
      {
        case 0:
          v9 = 0xEB0000000064657ALL;
          v10 = 0x696C616974696E69;
          goto LABEL_9;
        case 1:
          v45 = v1[19];
          110;
          outlined destroy of MLActivityClassifier.ModelParameters(v45, type metadata accessor for MLCheckpoint);
          LODWORD(v53) = 0;
          goto LABEL_14;
        case 2:
          v9 = 0xE800000000000000;
          v10 = 0x676E696E69617274;
          goto LABEL_9;
        case 3:
          v9 = 0xEA0000000000676ELL;
          v10 = 0x697461756C617665;
          goto LABEL_9;
        case 4:
          v9 = &loc_308EF - 0x14FFFFFFFF9B9A86;
          v10 = 0x636E657265666E69;
LABEL_9:
          v11 = v1[19];
          v12 = _stringCompareWithSmolCheck(_:_:expecting:)(v10, v9, 0x6974636172747865, 0xEA0000000000676ELL, 0);
          v9;
          v13 = outlined destroy of MLActivityClassifier.ModelParameters(v11, type metadata accessor for MLCheckpoint);
          if (v12)
          {
            LODWORD(v53) = 0;
            v14 = v48;
            goto LABEL_16;
          }

          v1 = v49;
          v6 = v48;
          if (!v7)
          {
            goto LABEL_13;
          }

          break;
      }
    }
  }

LABEL_13:
  LOBYTE(v13) = 1;
  LODWORD(v53) = v13;
  v7 = 0;
LABEL_14:
  v14 = v6;
LABEL_16:
  v51 = v49 + 6;
  v52 = v49[16];
  v15 = v49[21];
  v16 = swift_task_alloc(32);
  *(v16 + 16) = v49 + 5;
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lFxq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lyxs5NeverOqd_0_Isgnrzr_xSgAb2ERsd__Ri_d_0_r_0_lIetMgnrzo_Tpq5Si_8CreateML12MLCheckpointVTg5(closure #1 in BidirectionalCollection.last(where:)specialized partial apply, v16, v7, v53, v51);
  v14;
  v16;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v52);
  v18 = v49[21];
  if (EnumTagSinglePayload == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v18, &demangling cache variable for type metadata for MLCheckpoint?);
    v51 = 0;
  }

  else
  {
    v51 = *(v18 + *(v49[16] + 24));
    outlined destroy of MLActivityClassifier.ModelParameters(v18, type metadata accessor for MLCheckpoint);
  }

  v53 = v49[7];
  v19 = v49[8];
  v20 = direct field offset for MLTrainingSession.delegate;
  v49[24] = direct field offset for MLTrainingSession.delegate;
  v21 = *(v19 + v20 + 24);
  v52 = *(v19 + v20 + 32);
  __swift_project_boxed_opaque_existential_0Tm((v19 + v20), v21);
  v50 = *(v46 + *(v47 + 28));
  v22 = (*(v52 + 32))(&v50, v21);
  LOBYTE(v21) = v23;
  v49[25] = v22;
  *(v49 + 256) = v23;
  v52 = *(v46 + *(v47 + 32));
  v24 = *(v46 + *(v47 + 28));
  v25 = lazy protocol witness table accessor for type MLProgress.Metric and conformance MLProgress.Metric();
  v49[26] = v25;
  v26 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for MLProgress.Metric, &type metadata for Any + 8, v25);
  v27 = v22;
  v28 = v53;
  specialized MLJob.reportProgress(completedUnitCount:phase:phaseUnitCount:metrics:)(v52, v24, v27, v21 & 1, v26, specialized MLJob.currentPhase.setter);
  v26;
  if ([*(v28 + direct field offset for MLJob.progress) isCancelled])
  {
    v29 = v49[21];
    v30 = v49[20];
    v31 = v49[19];
    v32 = v49[18];
    v33 = v49[15];
    v51 = v49[14];
    v53 = v49[9];
    v52 = v49[11];
    v29;
    v30;
    v31;
    v32;
    v33;
    v51;
    v52;
    v53;
    return (v49[1])();
  }

  else
  {
    v49[27] = direct field offset for MLTrainingSession.parameters;
    v49[28] = v51;
    v35 = v49[8];
    v36 = v49[23];
    v37 = (v35 + v49[24]);
    v38 = v35 + v49[22];
    v39 = v37[3];
    v40 = v37[4];
    v53 = __swift_project_boxed_opaque_existential_0Tm(v37, v39);
    v41 = *(*(v36 + 32) + v38);
    v42 = *(v40 + 48);
    v43 = (v42 + *v42);
    v44 = swift_task_alloc(v42[1]);
    v49[29] = v44;
    *v44 = v49;
    v44[1] = specialized MLTrainingSession.extractFeatures(job:);
    return v43(v41, v39, v40);
  }
}

{
  v74 = v0 | 0x1000000000000000;
  v73 = v1;
  v2 = *(v1 + 184);
  v3 = *(v1 + 176) + *(v1 + 64);
  v4 = *(v2 + 8);
  v5 = *(v4 + v3);
  v6 = __OFADD__(*(v1 + 240), v5);
  v7 = *(v1 + 240) + v5;
  if (v6)
  {
    BUG();
  }

  v72 = *(v1 + 224);
  v8 = *(v1 + 208);
  v9 = *(v1 + 256);
  v70 = *(v1 + 56);
  v68 = *(v1 + 200);
  *(v3 + v4) = v7;
  LODWORD(v71) = *(v3 + *(v2 + 7));
  v69 = v2;
  v10 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for MLProgress.Metric, &type metadata for Any + 8, v8);
  specialized MLJob.reportProgress(completedUnitCount:phase:phaseUnitCount:metrics:)(v7, v71, v68, v9 & 1, v10, specialized MLJob.currentPhase.setter);
  v10;
  v11 = *(v3 + *(v69 + 8));
  if (__OFSUB__(v11, v72))
  {
    BUG();
  }

  v12 = (v1 + 224);
  v13 = *(v1 + 216) + *(v1 + 64);
  if (v11 - v72 < *(*(*(v1 + 80) + 24) + v13) && (*(v1 + 257) & (*(v1 + 240) > 0)) == 0)
  {
    goto LABEL_7;
  }

  v72 = v11;
  v14 = *(v1 + 96);
  v15 = *(v1 + 72);
  v16 = *(v1 + 88);
  outlined init with copy of MLTrainingSessionParameters(v13, v16, type metadata accessor for MLTrainingSessionParameters);
  outlined init with take of URL?(v16, v15);
  if (__swift_getEnumTagSinglePayload(v15, 1, v14) == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(*(v1 + 72), &demangling cache variable for type metadata for URL?);
LABEL_7:
    v17 = *(v1 + 248);
    goto LABEL_8;
  }

  v29 = *(v1 + 184);
  v30 = *(v1 + 176) + *(v1 + 64);
  (*(*(v1 + 104) + 32))(*(v1 + 120), *(v1 + 72), *(v1 + 96));
  v31 = *(*(v29 + 28) + v30);
  v32 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<CVarArg>);
  v33 = swift_allocObject(v32, 112, 7);
  v33[2] = 2;
  v33[3] = 4;
  switch(v31)
  {
    case 0:
      v71 = 0x696C616974696E69;
      v66 = 0xEB0000000064657ALL;
      goto LABEL_22;
    case 1:
      v46 = 0x6974636172747865;
      goto LABEL_21;
    case 2:
      v66 = 0xE800000000000000;
      v45 = 0x676E696E69617274;
      goto LABEL_18;
    case 3:
      v46 = 0x697461756C617665;
LABEL_21:
      v71 = v46;
      v66 = 0xEA0000000000676ELL;
      goto LABEL_22;
    case 4:
      v66 = 0xEB00000000676E69;
      v45 = 0x636E657265666E69;
LABEL_18:
      v71 = v45;
LABEL_22:
      v69 = *(v1 + 248);
      v70 = *(v1 + 160);
      v68 = *(v1 + 64);
      v47 = *(v1 + 112);
      v33[7] = &type metadata for String;
      v33[8] = lazy protocol witness table accessor for type String and conformance String();
      v33[4] = v71;
      v33[5] = v66;
      v33[12] = &type metadata for Int;
      v33[13] = &protocol witness table for Int;
      v33[9] = v72;
      v48 = String.init(format:_:)(0xD000000000000012, ("ng a features checkpoint." + 0x8000000000000000), v33);
      v50 = v49;
      URL.appendingPathComponent(_:)(v48, v49);
      v50;
      specialized MLTrainingSession.saveFeatureExtractionCheckpoint(to:)(v47, &demangling cache variable for type metadata for MLTrainingSession<MLDecisionTreeRegressor>.Metadata, specialized MLTrainingSession.save());
      if (v69)
      {
        v72 = v69;
        v51 = *(v1 + 120);
        v52 = *(v1 + 96);
        v53 = *(*(v1 + 104) + 8);
        v53(*(v1 + 112), v52);
        v53(v51, v52);
        goto LABEL_24;
      }

      v59 = *(v1 + 160);
      if (__swift_getEnumTagSinglePayload(v59, 1, *(v1 + 128)) == 1)
      {
        v60 = *(v1 + 120);
        v61 = *(v1 + 96);
        v62 = *(*(v1 + 104) + 8);
        v62(*(v1 + 112), v61);
        v62(v60, v61);
        outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v59, &demangling cache variable for type metadata for MLCheckpoint?);
        v17 = 0;
        v12 = (v1 + 224);
      }

      else
      {
        v72 = *(v1 + 184);
        v63 = *(v1 + 144);
        v69 = *(v1 + 120);
        v70 = *(v1 + 112);
        v71 = *(v1 + 104);
        v68 = *(v1 + 96);
        v64 = *(v1 + 176) + *(v1 + 64);
        outlined init with take of MLClassifierMetrics(v59, v63, type metadata accessor for MLCheckpoint);
        PassthroughSubject.send(_:)(v63);
        outlined destroy of MLActivityClassifier.ModelParameters(v63, type metadata accessor for MLCheckpoint);
        v65 = *(v71 + 8);
        v65(v70, v68);
        v65(v69, v68);
        v12 = (v64 + *(v72 + 8));
        v17 = 0;
      }

      break;
  }

LABEL_8:
  if (*(v1 + 257) == 1)
  {
    v18 = (*(v1 + 192) + *(v1 + 64));
    v72 = v17;
    specialized MLTrainingSession.transition(to:)(2, &demangling cache variable for type metadata for MLTrainingSession<MLDecisionTreeRegressor>.Metadata);
    v19 = v18[3];
    v20 = v18[4];
    v67 = 2;
    __swift_project_boxed_opaque_existential_0Tm(v18, v19);
    v21 = v72;
    (*(v20 + 40))(&v67, v19, v20);
    if (v21)
    {
      v72 = v21;
LABEL_24:
      v54 = *(v1 + 168);
      v55 = *(v1 + 160);
      v56 = *(v1 + 152);
      v57 = *(v1 + 144);
      v58 = *(v1 + 120);
      v68 = *(v1 + 112);
      v69 = *(v1 + 72);
      v70 = *(v1 + 88);
      v54;
      v55;
      v56;
      v57;
      v58;
      v68;
      v70;
      v69;
      v28 = *(v1 + 8);
      return v28();
    }
  }

  else
  {
    v22 = *v12;
    if (![*(*(v1 + 56) + direct field offset for MLJob.progress) isCancelled])
    {
      *(v1 + 224) = v22;
      v34 = *(v1 + 64);
      v35 = *(v1 + 184);
      v36 = (v34 + *(v1 + 192));
      v37 = v34 + *(v1 + 176);
      v38 = v36[3];
      v39 = v36[4];
      v72 = __swift_project_boxed_opaque_existential_0Tm(v36, v38);
      v40 = *(*(v35 + 32) + v37);
      v41 = *(v39 + 48);
      v42 = (v41 + *v41);
      v43 = swift_task_alloc(v41[1]);
      *(v1 + 232) = v43;
      *v43 = v1;
      v43[1] = specialized MLTrainingSession.extractFeatures(job:);
      return v42(v40, v38, v39);
    }
  }

  v23 = *(v1 + 168);
  v24 = *(v1 + 160);
  v25 = *(v1 + 152);
  v26 = *(v1 + 144);
  v27 = *(v1 + 120);
  v70 = *(v1 + 112);
  v72 = *(v1 + 72);
  v69 = *(v1 + 88);
  v23;
  v24;
  v25;
  v26;
  v27;
  v70;
  v69;
  v72;
  v28 = *(v1 + 8);
  return v28();
}

{
  v55 = v0 | 0x1000000000000000;
  v54 = v1;
  v2 = v1[8];
  v3 = *(*v2 + 112);
  v1[22] = v3;
  v4 = v3 + v2;
  swift_beginAccess(v4, (v1 + 2), 1, 0);
  v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLActionClassifier>.Metadata);
  v1[23] = v5;
  v47 = v5;
  v46 = v4;
  v6 = *(*(v5 + 44) + v4);
  v1[5] = v6;
  v7 = *(v6 + 16);
  v49 = v1;
  if (v7)
  {
    v53 = v1[9];
    v52 = v1[10];
    v51 = (v6 + ((*(v52 + 80) + 32) & ~*(v52 + 80)));

    v48 = v6;
    while (1)
    {
      if (v7 > *(v6 + 16))
      {
        BUG();
      }

      --v7;
      v8 = v1[11];
      outlined init with copy of MLTrainingSessionParameters(v51 + v7 * *(v52 + 72), v8, type metadata accessor for MLCheckpoint);
      switch(*(v8 + *(v53 + 5)))
      {
        case 0:
          v9 = 0xEB0000000064657ALL;
          v10 = 0x696C616974696E69;
          goto LABEL_9;
        case 1:
          v45 = v1[11];
          110;
          outlined destroy of MLActivityClassifier.ModelParameters(v45, type metadata accessor for MLCheckpoint);
          LODWORD(v53) = 0;
          goto LABEL_14;
        case 2:
          v9 = 0xE800000000000000;
          v10 = 0x676E696E69617274;
          goto LABEL_9;
        case 3:
          v9 = 0xEA0000000000676ELL;
          v10 = 0x697461756C617665;
          goto LABEL_9;
        case 4:
          v9 = &loc_308EF - 0x14FFFFFFFF9B9A86;
          v10 = 0x636E657265666E69;
LABEL_9:
          v11 = v1[11];
          v12 = _stringCompareWithSmolCheck(_:_:expecting:)(v10, v9, 0x6974636172747865, 0xEA0000000000676ELL, 0);
          v9;
          v13 = outlined destroy of MLActivityClassifier.ModelParameters(v11, type metadata accessor for MLCheckpoint);
          if (v12)
          {
            LODWORD(v53) = 0;
            v14 = v48;
            goto LABEL_16;
          }

          v1 = v49;
          v6 = v48;
          if (!v7)
          {
            goto LABEL_13;
          }

          break;
      }
    }
  }

LABEL_13:
  LOBYTE(v13) = 1;
  LODWORD(v53) = v13;
  v7 = 0;
LABEL_14:
  v14 = v6;
LABEL_16:
  v51 = v49 + 6;
  v52 = v49[9];
  v15 = v49[21];
  v16 = swift_task_alloc(32);
  *(v16 + 16) = v49 + 5;
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lFxq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lyxs5NeverOqd_0_Isgnrzr_xSgAb2ERsd__Ri_d_0_r_0_lIetMgnrzo_Tpq5Si_8CreateML12MLCheckpointVTg5(closure #1 in BidirectionalCollection.last(where:)specialized partial apply, v16, v7, v53, v51);
  v14;
  v16;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v52);
  v18 = v49[21];
  if (EnumTagSinglePayload == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v18, &demangling cache variable for type metadata for MLCheckpoint?);
    v51 = 0;
  }

  else
  {
    v51 = *(v18 + *(v49[9] + 24));
    outlined destroy of MLActivityClassifier.ModelParameters(v18, type metadata accessor for MLCheckpoint);
  }

  v53 = v49[7];
  v19 = v49[8];
  v20 = direct field offset for MLTrainingSession.delegate;
  v49[24] = direct field offset for MLTrainingSession.delegate;
  v21 = *(v19 + v20 + 24);
  v52 = *(v19 + v20 + 32);
  __swift_project_boxed_opaque_existential_0Tm((v19 + v20), v21);
  v50 = *(v46 + *(v47 + 28));
  v22 = (*(v52 + 32))(&v50, v21);
  LOBYTE(v21) = v23;
  v49[25] = v22;
  *(v49 + 256) = v23;
  v52 = *(v46 + *(v47 + 32));
  v24 = *(v46 + *(v47 + 28));
  v25 = lazy protocol witness table accessor for type MLProgress.Metric and conformance MLProgress.Metric();
  v49[26] = v25;
  v26 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for MLProgress.Metric, &type metadata for Any + 8, v25);
  v27 = v22;
  v28 = v53;
  specialized MLJob.reportProgress(completedUnitCount:phase:phaseUnitCount:metrics:)(v52, v24, v27, v21 & 1, v26, specialized MLJob.currentPhase.setter);
  v26;
  if ([*(v28 + direct field offset for MLJob.progress) isCancelled])
  {
    v29 = v49[21];
    v30 = v49[20];
    v31 = v49[19];
    v32 = v49[18];
    v33 = v49[15];
    v51 = v49[13];
    v53 = v49[11];
    v52 = v49[12];
    v29;
    v30;
    v31;
    v32;
    v33;
    v51;
    v52;
    v53;
    return (v49[1])();
  }

  else
  {
    v49[27] = direct field offset for MLTrainingSession.parameters;
    v49[28] = v51;
    v35 = v49[8];
    v36 = v49[23];
    v37 = (v35 + v49[24]);
    v38 = v35 + v49[22];
    v39 = v37[3];
    v40 = v37[4];
    v53 = __swift_project_boxed_opaque_existential_0Tm(v37, v39);
    v41 = *(*(v36 + 32) + v38);
    v42 = *(v40 + 48);
    v43 = (v42 + *v42);
    v44 = swift_task_alloc(v42[1]);
    v49[29] = v44;
    *v44 = v49;
    v44[1] = specialized MLTrainingSession.extractFeatures(job:);
    return v43(v41, v39, v40);
  }
}

{
  v74 = v0 | 0x1000000000000000;
  v73 = v1;
  v2 = *(v1 + 184);
  v3 = *(v1 + 176) + *(v1 + 64);
  v4 = *(v2 + 8);
  v5 = *(v4 + v3);
  v6 = __OFADD__(*(v1 + 240), v5);
  v7 = *(v1 + 240) + v5;
  if (v6)
  {
    BUG();
  }

  v72 = *(v1 + 224);
  v8 = *(v1 + 208);
  v9 = *(v1 + 256);
  v70 = *(v1 + 56);
  v68 = *(v1 + 200);
  *(v3 + v4) = v7;
  LODWORD(v71) = *(v3 + *(v2 + 7));
  v69 = v2;
  v10 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for MLProgress.Metric, &type metadata for Any + 8, v8);
  specialized MLJob.reportProgress(completedUnitCount:phase:phaseUnitCount:metrics:)(v7, v71, v68, v9 & 1, v10, specialized MLJob.currentPhase.setter);
  v10;
  v11 = *(v3 + *(v69 + 8));
  if (__OFSUB__(v11, v72))
  {
    BUG();
  }

  v12 = (v1 + 224);
  v13 = *(v1 + 216) + *(v1 + 64);
  if (v11 - v72 < *(*(*(v1 + 112) + 24) + v13) && (*(v1 + 257) & (*(v1 + 240) > 0)) == 0)
  {
    goto LABEL_7;
  }

  v72 = v11;
  v14 = *(v1 + 128);
  v15 = *(v1 + 104);
  v16 = *(v1 + 120);
  outlined init with copy of MLTrainingSessionParameters(v13, v16, type metadata accessor for MLTrainingSessionParameters);
  outlined init with take of URL?(v16, v15);
  if (__swift_getEnumTagSinglePayload(v15, 1, v14) == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(*(v1 + 104), &demangling cache variable for type metadata for URL?);
LABEL_7:
    v17 = *(v1 + 248);
    goto LABEL_8;
  }

  v29 = *(v1 + 184);
  v30 = *(v1 + 176) + *(v1 + 64);
  (*(*(v1 + 136) + 32))(*(v1 + 152), *(v1 + 104), *(v1 + 128));
  v31 = *(*(v29 + 28) + v30);
  v32 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<CVarArg>);
  v33 = swift_allocObject(v32, 112, 7);
  v33[2] = 2;
  v33[3] = 4;
  switch(v31)
  {
    case 0:
      v71 = 0x696C616974696E69;
      v66 = 0xEB0000000064657ALL;
      goto LABEL_22;
    case 1:
      v46 = 0x6974636172747865;
      goto LABEL_21;
    case 2:
      v66 = 0xE800000000000000;
      v45 = 0x676E696E69617274;
      goto LABEL_18;
    case 3:
      v46 = 0x697461756C617665;
LABEL_21:
      v71 = v46;
      v66 = 0xEA0000000000676ELL;
      goto LABEL_22;
    case 4:
      v66 = 0xEB00000000676E69;
      v45 = 0x636E657265666E69;
LABEL_18:
      v71 = v45;
LABEL_22:
      v69 = *(v1 + 248);
      v70 = *(v1 + 160);
      v68 = *(v1 + 64);
      v47 = *(v1 + 144);
      v33[7] = &type metadata for String;
      v33[8] = lazy protocol witness table accessor for type String and conformance String();
      v33[4] = v71;
      v33[5] = v66;
      v33[12] = &type metadata for Int;
      v33[13] = &protocol witness table for Int;
      v33[9] = v72;
      v48 = String.init(format:_:)(0xD000000000000012, ("ng a features checkpoint." + 0x8000000000000000), v33);
      v50 = v49;
      URL.appendingPathComponent(_:)(v48, v49);
      v50;
      specialized MLTrainingSession.saveFeatureExtractionCheckpoint(to:)(v47, &demangling cache variable for type metadata for MLTrainingSession<MLActionClassifier>.Metadata, specialized MLTrainingSession.save());
      if (v69)
      {
        v72 = v69;
        v51 = *(v1 + 152);
        v52 = *(v1 + 128);
        v53 = *(*(v1 + 136) + 8);
        v53(*(v1 + 144), v52);
        v53(v51, v52);
        goto LABEL_24;
      }

      v59 = *(v1 + 160);
      if (__swift_getEnumTagSinglePayload(v59, 1, *(v1 + 72)) == 1)
      {
        v60 = *(v1 + 152);
        v61 = *(v1 + 128);
        v62 = *(*(v1 + 136) + 8);
        v62(*(v1 + 144), v61);
        v62(v60, v61);
        outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v59, &demangling cache variable for type metadata for MLCheckpoint?);
        v17 = 0;
        v12 = (v1 + 224);
      }

      else
      {
        v72 = *(v1 + 184);
        v69 = *(v1 + 152);
        v70 = *(v1 + 144);
        v71 = *(v1 + 136);
        v68 = *(v1 + 128);
        v63 = *(v1 + 96);
        v64 = *(v1 + 176) + *(v1 + 64);
        outlined init with take of MLClassifierMetrics(v59, v63, type metadata accessor for MLCheckpoint);
        PassthroughSubject.send(_:)(v63);
        outlined destroy of MLActivityClassifier.ModelParameters(v63, type metadata accessor for MLCheckpoint);
        v65 = *(v71 + 8);
        v65(v70, v68);
        v65(v69, v68);
        v12 = (v64 + *(v72 + 8));
        v17 = 0;
      }

      break;
  }

LABEL_8:
  if (*(v1 + 257) == 1)
  {
    v18 = (*(v1 + 192) + *(v1 + 64));
    v72 = v17;
    specialized MLTrainingSession.transition(to:)(2, &demangling cache variable for type metadata for MLTrainingSession<MLActionClassifier>.Metadata);
    v19 = v18[3];
    v20 = v18[4];
    v67 = 2;
    __swift_project_boxed_opaque_existential_0Tm(v18, v19);
    v21 = v72;
    (*(v20 + 40))(&v67, v19, v20);
    if (v21)
    {
      v72 = v21;
LABEL_24:
      v54 = *(v1 + 168);
      v55 = *(v1 + 160);
      v56 = *(v1 + 152);
      v57 = *(v1 + 144);
      v58 = *(v1 + 120);
      v68 = *(v1 + 104);
      v69 = *(v1 + 88);
      v70 = *(v1 + 96);
      v54;
      v55;
      v56;
      v57;
      v58;
      v68;
      v70;
      v69;
      v28 = *(v1 + 8);
      return v28();
    }
  }

  else
  {
    v22 = *v12;
    if (![*(*(v1 + 56) + direct field offset for MLJob.progress) isCancelled])
    {
      *(v1 + 224) = v22;
      v34 = *(v1 + 64);
      v35 = *(v1 + 184);
      v36 = (v34 + *(v1 + 192));
      v37 = v34 + *(v1 + 176);
      v38 = v36[3];
      v39 = v36[4];
      v72 = __swift_project_boxed_opaque_existential_0Tm(v36, v38);
      v40 = *(*(v35 + 32) + v37);
      v41 = *(v39 + 48);
      v42 = (v41 + *v41);
      v43 = swift_task_alloc(v41[1]);
      *(v1 + 232) = v43;
      *v43 = v1;
      v43[1] = specialized MLTrainingSession.extractFeatures(job:);
      return v42(v40, v38, v39);
    }
  }

  v23 = *(v1 + 168);
  v24 = *(v1 + 160);
  v25 = *(v1 + 152);
  v26 = *(v1 + 144);
  v27 = *(v1 + 120);
  v70 = *(v1 + 104);
  v72 = *(v1 + 88);
  v69 = *(v1 + 96);
  v23;
  v24;
  v25;
  v26;
  v27;
  v70;
  v69;
  v72;
  v28 = *(v1 + 8);
  return v28();
}

{
  v55 = v0 | 0x1000000000000000;
  v54 = v1;
  v2 = v1[8];
  v3 = *(*v2 + 112);
  v1[22] = v3;
  v4 = v3 + v2;
  swift_beginAccess(v4, (v1 + 2), 1, 0);
  v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLHandActionClassifier>.Metadata);
  v1[23] = v5;
  v47 = v5;
  v46 = v4;
  v6 = *(*(v5 + 44) + v4);
  v1[5] = v6;
  v7 = *(v6 + 16);
  v49 = v1;
  if (v7)
  {
    v53 = v1[9];
    v52 = v1[10];
    v51 = (v6 + ((*(v52 + 80) + 32) & ~*(v52 + 80)));

    v48 = v6;
    while (1)
    {
      if (v7 > *(v6 + 16))
      {
        BUG();
      }

      --v7;
      v8 = v1[11];
      outlined init with copy of MLTrainingSessionParameters(v51 + v7 * *(v52 + 72), v8, type metadata accessor for MLCheckpoint);
      switch(*(v8 + *(v53 + 5)))
      {
        case 0:
          v9 = 0xEB0000000064657ALL;
          v10 = 0x696C616974696E69;
          goto LABEL_9;
        case 1:
          v45 = v1[11];
          110;
          outlined destroy of MLActivityClassifier.ModelParameters(v45, type metadata accessor for MLCheckpoint);
          LODWORD(v53) = 0;
          goto LABEL_14;
        case 2:
          v9 = 0xE800000000000000;
          v10 = 0x676E696E69617274;
          goto LABEL_9;
        case 3:
          v9 = 0xEA0000000000676ELL;
          v10 = 0x697461756C617665;
          goto LABEL_9;
        case 4:
          v9 = &loc_308EF - 0x14FFFFFFFF9B9A86;
          v10 = 0x636E657265666E69;
LABEL_9:
          v11 = v1[11];
          v12 = _stringCompareWithSmolCheck(_:_:expecting:)(v10, v9, 0x6974636172747865, 0xEA0000000000676ELL, 0);
          v9;
          v13 = outlined destroy of MLActivityClassifier.ModelParameters(v11, type metadata accessor for MLCheckpoint);
          if (v12)
          {
            LODWORD(v53) = 0;
            v14 = v48;
            goto LABEL_16;
          }

          v1 = v49;
          v6 = v48;
          if (!v7)
          {
            goto LABEL_13;
          }

          break;
      }
    }
  }

LABEL_13:
  LOBYTE(v13) = 1;
  LODWORD(v53) = v13;
  v7 = 0;
LABEL_14:
  v14 = v6;
LABEL_16:
  v51 = v49 + 6;
  v52 = v49[9];
  v15 = v49[21];
  v16 = swift_task_alloc(32);
  *(v16 + 16) = v49 + 5;
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lFxq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lyxs5NeverOqd_0_Isgnrzr_xSgAb2ERsd__Ri_d_0_r_0_lIetMgnrzo_Tpq5Si_8CreateML12MLCheckpointVTg5(closure #1 in BidirectionalCollection.last(where:)specialized partial apply, v16, v7, v53, v51);
  v14;
  v16;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v52);
  v18 = v49[21];
  if (EnumTagSinglePayload == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v18, &demangling cache variable for type metadata for MLCheckpoint?);
    v51 = 0;
  }

  else
  {
    v51 = *(v18 + *(v49[9] + 24));
    outlined destroy of MLActivityClassifier.ModelParameters(v18, type metadata accessor for MLCheckpoint);
  }

  v53 = v49[7];
  v19 = v49[8];
  v20 = direct field offset for MLTrainingSession.delegate;
  v49[24] = direct field offset for MLTrainingSession.delegate;
  v21 = *(v19 + v20 + 24);
  v52 = *(v19 + v20 + 32);
  __swift_project_boxed_opaque_existential_0Tm((v19 + v20), v21);
  v50 = *(v46 + *(v47 + 28));
  v22 = (*(v52 + 32))(&v50, v21);
  LOBYTE(v21) = v23;
  v49[25] = v22;
  *(v49 + 256) = v23;
  v52 = *(v46 + *(v47 + 32));
  v24 = *(v46 + *(v47 + 28));
  v25 = lazy protocol witness table accessor for type MLProgress.Metric and conformance MLProgress.Metric();
  v49[26] = v25;
  v26 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for MLProgress.Metric, &type metadata for Any + 8, v25);
  v27 = v22;
  v28 = v53;
  specialized MLJob.reportProgress(completedUnitCount:phase:phaseUnitCount:metrics:)(v52, v24, v27, v21 & 1, v26, specialized MLJob.currentPhase.setter);
  v26;
  if ([*(v28 + direct field offset for MLJob.progress) isCancelled])
  {
    v29 = v49[21];
    v30 = v49[20];
    v31 = v49[19];
    v32 = v49[18];
    v33 = v49[15];
    v51 = v49[13];
    v53 = v49[11];
    v52 = v49[12];
    v29;
    v30;
    v31;
    v32;
    v33;
    v51;
    v52;
    v53;
    return (v49[1])();
  }

  else
  {
    v49[27] = direct field offset for MLTrainingSession.parameters;
    v49[28] = v51;
    v35 = v49[8];
    v36 = v49[23];
    v37 = (v35 + v49[24]);
    v38 = v35 + v49[22];
    v39 = v37[3];
    v40 = v37[4];
    v53 = __swift_project_boxed_opaque_existential_0Tm(v37, v39);
    v41 = *(*(v36 + 32) + v38);
    v42 = *(v40 + 48);
    v43 = (v42 + *v42);
    v44 = swift_task_alloc(v42[1]);
    v49[29] = v44;
    *v44 = v49;
    v44[1] = specialized MLTrainingSession.extractFeatures(job:);
    return v43(v41, v39, v40);
  }
}

{
  v74 = v0 | 0x1000000000000000;
  v73 = v1;
  v2 = *(v1 + 184);
  v3 = *(v1 + 176) + *(v1 + 64);
  v4 = *(v2 + 8);
  v5 = *(v4 + v3);
  v6 = __OFADD__(*(v1 + 240), v5);
  v7 = *(v1 + 240) + v5;
  if (v6)
  {
    BUG();
  }

  v72 = *(v1 + 224);
  v8 = *(v1 + 208);
  v9 = *(v1 + 256);
  v70 = *(v1 + 56);
  v68 = *(v1 + 200);
  *(v3 + v4) = v7;
  LODWORD(v71) = *(v3 + *(v2 + 7));
  v69 = v2;
  v10 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for MLProgress.Metric, &type metadata for Any + 8, v8);
  specialized MLJob.reportProgress(completedUnitCount:phase:phaseUnitCount:metrics:)(v7, v71, v68, v9 & 1, v10, specialized MLJob.currentPhase.setter);
  v10;
  v11 = *(v3 + *(v69 + 8));
  if (__OFSUB__(v11, v72))
  {
    BUG();
  }

  v12 = (v1 + 224);
  v13 = *(v1 + 216) + *(v1 + 64);
  if (v11 - v72 < *(*(*(v1 + 112) + 24) + v13) && (*(v1 + 257) & (*(v1 + 240) > 0)) == 0)
  {
    goto LABEL_7;
  }

  v72 = v11;
  v14 = *(v1 + 128);
  v15 = *(v1 + 104);
  v16 = *(v1 + 120);
  outlined init with copy of MLTrainingSessionParameters(v13, v16, type metadata accessor for MLTrainingSessionParameters);
  outlined init with take of URL?(v16, v15);
  if (__swift_getEnumTagSinglePayload(v15, 1, v14) == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(*(v1 + 104), &demangling cache variable for type metadata for URL?);
LABEL_7:
    v17 = *(v1 + 248);
    goto LABEL_8;
  }

  v29 = *(v1 + 184);
  v30 = *(v1 + 176) + *(v1 + 64);
  (*(*(v1 + 136) + 32))(*(v1 + 152), *(v1 + 104), *(v1 + 128));
  v31 = *(*(v29 + 28) + v30);
  v32 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<CVarArg>);
  v33 = swift_allocObject(v32, 112, 7);
  v33[2] = 2;
  v33[3] = 4;
  switch(v31)
  {
    case 0:
      v71 = 0x696C616974696E69;
      v66 = 0xEB0000000064657ALL;
      goto LABEL_22;
    case 1:
      v46 = 0x6974636172747865;
      goto LABEL_21;
    case 2:
      v66 = 0xE800000000000000;
      v45 = 0x676E696E69617274;
      goto LABEL_18;
    case 3:
      v46 = 0x697461756C617665;
LABEL_21:
      v71 = v46;
      v66 = 0xEA0000000000676ELL;
      goto LABEL_22;
    case 4:
      v66 = 0xEB00000000676E69;
      v45 = 0x636E657265666E69;
LABEL_18:
      v71 = v45;
LABEL_22:
      v69 = *(v1 + 248);
      v70 = *(v1 + 160);
      v68 = *(v1 + 64);
      v47 = *(v1 + 144);
      v33[7] = &type metadata for String;
      v33[8] = lazy protocol witness table accessor for type String and conformance String();
      v33[4] = v71;
      v33[5] = v66;
      v33[12] = &type metadata for Int;
      v33[13] = &protocol witness table for Int;
      v33[9] = v72;
      v48 = String.init(format:_:)(0xD000000000000012, ("ng a features checkpoint." + 0x8000000000000000), v33);
      v50 = v49;
      URL.appendingPathComponent(_:)(v48, v49);
      v50;
      specialized MLTrainingSession.saveFeatureExtractionCheckpoint(to:)(v47, &demangling cache variable for type metadata for MLTrainingSession<MLHandActionClassifier>.Metadata, specialized MLTrainingSession.save());
      if (v69)
      {
        v72 = v69;
        v51 = *(v1 + 152);
        v52 = *(v1 + 128);
        v53 = *(*(v1 + 136) + 8);
        v53(*(v1 + 144), v52);
        v53(v51, v52);
        goto LABEL_24;
      }

      v59 = *(v1 + 160);
      if (__swift_getEnumTagSinglePayload(v59, 1, *(v1 + 72)) == 1)
      {
        v60 = *(v1 + 152);
        v61 = *(v1 + 128);
        v62 = *(*(v1 + 136) + 8);
        v62(*(v1 + 144), v61);
        v62(v60, v61);
        outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v59, &demangling cache variable for type metadata for MLCheckpoint?);
        v17 = 0;
        v12 = (v1 + 224);
      }

      else
      {
        v72 = *(v1 + 184);
        v69 = *(v1 + 152);
        v70 = *(v1 + 144);
        v71 = *(v1 + 136);
        v68 = *(v1 + 128);
        v63 = *(v1 + 96);
        v64 = *(v1 + 176) + *(v1 + 64);
        outlined init with take of MLClassifierMetrics(v59, v63, type metadata accessor for MLCheckpoint);
        PassthroughSubject.send(_:)(v63);
        outlined destroy of MLActivityClassifier.ModelParameters(v63, type metadata accessor for MLCheckpoint);
        v65 = *(v71 + 8);
        v65(v70, v68);
        v65(v69, v68);
        v12 = (v64 + *(v72 + 8));
        v17 = 0;
      }

      break;
  }

LABEL_8:
  if (*(v1 + 257) == 1)
  {
    v18 = (*(v1 + 192) + *(v1 + 64));
    v72 = v17;
    specialized MLTrainingSession.transition(to:)(2, &demangling cache variable for type metadata for MLTrainingSession<MLHandActionClassifier>.Metadata);
    v19 = v18[3];
    v20 = v18[4];
    v67 = 2;
    __swift_project_boxed_opaque_existential_0Tm(v18, v19);
    v21 = v72;
    (*(v20 + 40))(&v67, v19, v20);
    if (v21)
    {
      v72 = v21;
LABEL_24:
      v54 = *(v1 + 168);
      v55 = *(v1 + 160);
      v56 = *(v1 + 152);
      v57 = *(v1 + 144);
      v58 = *(v1 + 120);
      v68 = *(v1 + 104);
      v69 = *(v1 + 88);
      v70 = *(v1 + 96);
      v54;
      v55;
      v56;
      v57;
      v58;
      v68;
      v70;
      v69;
      v28 = *(v1 + 8);
      return v28();
    }
  }

  else
  {
    v22 = *v12;
    if (![*(*(v1 + 56) + direct field offset for MLJob.progress) isCancelled])
    {
      *(v1 + 224) = v22;
      v34 = *(v1 + 64);
      v35 = *(v1 + 184);
      v36 = (v34 + *(v1 + 192));
      v37 = v34 + *(v1 + 176);
      v38 = v36[3];
      v39 = v36[4];
      v72 = __swift_project_boxed_opaque_existential_0Tm(v36, v38);
      v40 = *(*(v35 + 32) + v37);
      v41 = *(v39 + 48);
      v42 = (v41 + *v41);
      v43 = swift_task_alloc(v41[1]);
      *(v1 + 232) = v43;
      *v43 = v1;
      v43[1] = specialized MLTrainingSession.extractFeatures(job:);
      return v42(v40, v38, v39);
    }
  }

  v23 = *(v1 + 168);
  v24 = *(v1 + 160);
  v25 = *(v1 + 152);
  v26 = *(v1 + 144);
  v27 = *(v1 + 120);
  v70 = *(v1 + 104);
  v72 = *(v1 + 88);
  v69 = *(v1 + 96);
  v23;
  v24;
  v25;
  v26;
  v27;
  v70;
  v69;
  v72;
  v28 = *(v1 + 8);
  return v28();
}

{
  v55 = v0 | 0x1000000000000000;
  v54 = v1;
  v2 = v1[8];
  v3 = *(*v2 + 112);
  v1[22] = v3;
  v4 = v3 + v2;
  swift_beginAccess(v4, (v1 + 2), 1, 0);
  v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLRandomForestClassifier>.Metadata);
  v1[23] = v5;
  v47 = v5;
  v46 = v4;
  v6 = *(*(v5 + 44) + v4);
  v1[5] = v6;
  v7 = *(v6 + 16);
  v49 = v1;
  if (v7)
  {
    v53 = v1[9];
    v52 = v1[10];
    v51 = (v6 + ((*(v52 + 80) + 32) & ~*(v52 + 80)));

    v48 = v6;
    while (1)
    {
      if (v7 > *(v6 + 16))
      {
        BUG();
      }

      --v7;
      v8 = v1[11];
      outlined init with copy of MLTrainingSessionParameters(v51 + v7 * *(v52 + 72), v8, type metadata accessor for MLCheckpoint);
      switch(*(v8 + *(v53 + 5)))
      {
        case 0:
          v9 = 0xEB0000000064657ALL;
          v10 = 0x696C616974696E69;
          goto LABEL_9;
        case 1:
          v45 = v1[11];
          110;
          outlined destroy of MLActivityClassifier.ModelParameters(v45, type metadata accessor for MLCheckpoint);
          LODWORD(v53) = 0;
          goto LABEL_14;
        case 2:
          v9 = 0xE800000000000000;
          v10 = 0x676E696E69617274;
          goto LABEL_9;
        case 3:
          v9 = 0xEA0000000000676ELL;
          v10 = 0x697461756C617665;
          goto LABEL_9;
        case 4:
          v9 = &loc_308EF - 0x14FFFFFFFF9B9A86;
          v10 = 0x636E657265666E69;
LABEL_9:
          v11 = v1[11];
          v12 = _stringCompareWithSmolCheck(_:_:expecting:)(v10, v9, 0x6974636172747865, 0xEA0000000000676ELL, 0);
          v9;
          v13 = outlined destroy of MLActivityClassifier.ModelParameters(v11, type metadata accessor for MLCheckpoint);
          if (v12)
          {
            LODWORD(v53) = 0;
            v14 = v48;
            goto LABEL_16;
          }

          v1 = v49;
          v6 = v48;
          if (!v7)
          {
            goto LABEL_13;
          }

          break;
      }
    }
  }

LABEL_13:
  LOBYTE(v13) = 1;
  LODWORD(v53) = v13;
  v7 = 0;
LABEL_14:
  v14 = v6;
LABEL_16:
  v51 = v49 + 6;
  v52 = v49[9];
  v15 = v49[21];
  v16 = swift_task_alloc(32);
  *(v16 + 16) = v49 + 5;
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lFxq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lyxs5NeverOqd_0_Isgnrzr_xSgAb2ERsd__Ri_d_0_r_0_lIetMgnrzo_Tpq5Si_8CreateML12MLCheckpointVTg5(closure #1 in BidirectionalCollection.last(where:)specialized partial apply, v16, v7, v53, v51);
  v14;
  v16;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v52);
  v18 = v49[21];
  if (EnumTagSinglePayload == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v18, &demangling cache variable for type metadata for MLCheckpoint?);
    v51 = 0;
  }

  else
  {
    v51 = *(v18 + *(v49[9] + 24));
    outlined destroy of MLActivityClassifier.ModelParameters(v18, type metadata accessor for MLCheckpoint);
  }

  v53 = v49[7];
  v19 = v49[8];
  v20 = direct field offset for MLTrainingSession.delegate;
  v49[24] = direct field offset for MLTrainingSession.delegate;
  v21 = *(v19 + v20 + 24);
  v52 = *(v19 + v20 + 32);
  __swift_project_boxed_opaque_existential_0Tm((v19 + v20), v21);
  v50 = *(v46 + *(v47 + 28));
  v22 = (*(v52 + 32))(&v50, v21);
  LOBYTE(v21) = v23;
  v49[25] = v22;
  *(v49 + 256) = v23;
  v52 = *(v46 + *(v47 + 32));
  v24 = *(v46 + *(v47 + 28));
  v25 = lazy protocol witness table accessor for type MLProgress.Metric and conformance MLProgress.Metric();
  v49[26] = v25;
  v26 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for MLProgress.Metric, &type metadata for Any + 8, v25);
  v27 = v22;
  v28 = v53;
  specialized MLJob.reportProgress(completedUnitCount:phase:phaseUnitCount:metrics:)(v52, v24, v27, v21 & 1, v26, specialized MLJob.currentPhase.setter);
  v26;
  if ([*(v28 + direct field offset for MLJob.progress) isCancelled])
  {
    v29 = v49[21];
    v30 = v49[20];
    v31 = v49[19];
    v32 = v49[18];
    v33 = v49[15];
    v51 = v49[13];
    v53 = v49[11];
    v52 = v49[12];
    v29;
    v30;
    v31;
    v32;
    v33;
    v51;
    v52;
    v53;
    return (v49[1])();
  }

  else
  {
    v49[27] = direct field offset for MLTrainingSession.parameters;
    v49[28] = v51;
    v35 = v49[8];
    v36 = v49[23];
    v37 = (v35 + v49[24]);
    v38 = v35 + v49[22];
    v39 = v37[3];
    v40 = v37[4];
    v53 = __swift_project_boxed_opaque_existential_0Tm(v37, v39);
    v41 = *(*(v36 + 32) + v38);
    v42 = *(v40 + 48);
    v43 = (v42 + *v42);
    v44 = swift_task_alloc(v42[1]);
    v49[29] = v44;
    *v44 = v49;
    v44[1] = specialized MLTrainingSession.extractFeatures(job:);
    return v43(v41, v39, v40);
  }
}

{
  v74 = v0 | 0x1000000000000000;
  v73 = v1;
  v2 = *(v1 + 184);
  v3 = *(v1 + 176) + *(v1 + 64);
  v4 = *(v2 + 8);
  v5 = *(v4 + v3);
  v6 = __OFADD__(*(v1 + 240), v5);
  v7 = *(v1 + 240) + v5;
  if (v6)
  {
    BUG();
  }

  v72 = *(v1 + 224);
  v8 = *(v1 + 208);
  v9 = *(v1 + 256);
  v70 = *(v1 + 56);
  v68 = *(v1 + 200);
  *(v3 + v4) = v7;
  LODWORD(v71) = *(v3 + *(v2 + 7));
  v69 = v2;
  v10 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for MLProgress.Metric, &type metadata for Any + 8, v8);
  specialized MLJob.reportProgress(completedUnitCount:phase:phaseUnitCount:metrics:)(v7, v71, v68, v9 & 1, v10, specialized MLJob.currentPhase.setter);
  v10;
  v11 = *(v3 + *(v69 + 8));
  if (__OFSUB__(v11, v72))
  {
    BUG();
  }

  v12 = (v1 + 224);
  v13 = *(v1 + 216) + *(v1 + 64);
  if (v11 - v72 < *(*(*(v1 + 112) + 24) + v13) && (*(v1 + 257) & (*(v1 + 240) > 0)) == 0)
  {
    goto LABEL_7;
  }

  v72 = v11;
  v14 = *(v1 + 128);
  v15 = *(v1 + 104);
  v16 = *(v1 + 120);
  outlined init with copy of MLTrainingSessionParameters(v13, v16, type metadata accessor for MLTrainingSessionParameters);
  outlined init with take of URL?(v16, v15);
  if (__swift_getEnumTagSinglePayload(v15, 1, v14) == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(*(v1 + 104), &demangling cache variable for type metadata for URL?);
LABEL_7:
    v17 = *(v1 + 248);
    goto LABEL_8;
  }

  v29 = *(v1 + 184);
  v30 = *(v1 + 176) + *(v1 + 64);
  (*(*(v1 + 136) + 32))(*(v1 + 152), *(v1 + 104), *(v1 + 128));
  v31 = *(*(v29 + 28) + v30);
  v32 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<CVarArg>);
  v33 = swift_allocObject(v32, 112, 7);
  v33[2] = 2;
  v33[3] = 4;
  switch(v31)
  {
    case 0:
      v71 = 0x696C616974696E69;
      v66 = 0xEB0000000064657ALL;
      goto LABEL_22;
    case 1:
      v46 = 0x6974636172747865;
      goto LABEL_21;
    case 2:
      v66 = 0xE800000000000000;
      v45 = 0x676E696E69617274;
      goto LABEL_18;
    case 3:
      v46 = 0x697461756C617665;
LABEL_21:
      v71 = v46;
      v66 = 0xEA0000000000676ELL;
      goto LABEL_22;
    case 4:
      v66 = 0xEB00000000676E69;
      v45 = 0x636E657265666E69;
LABEL_18:
      v71 = v45;
LABEL_22:
      v69 = *(v1 + 248);
      v70 = *(v1 + 160);
      v68 = *(v1 + 64);
      v47 = *(v1 + 144);
      v33[7] = &type metadata for String;
      v33[8] = lazy protocol witness table accessor for type String and conformance String();
      v33[4] = v71;
      v33[5] = v66;
      v33[12] = &type metadata for Int;
      v33[13] = &protocol witness table for Int;
      v33[9] = v72;
      v48 = String.init(format:_:)(0xD000000000000012, ("ng a features checkpoint." + 0x8000000000000000), v33);
      v50 = v49;
      URL.appendingPathComponent(_:)(v48, v49);
      v50;
      specialized MLTrainingSession.saveFeatureExtractionCheckpoint(to:)(v47, &demangling cache variable for type metadata for MLTrainingSession<MLRandomForestClassifier>.Metadata, specialized MLTrainingSession.save());
      if (v69)
      {
        v72 = v69;
        v51 = *(v1 + 152);
        v52 = *(v1 + 128);
        v53 = *(*(v1 + 136) + 8);
        v53(*(v1 + 144), v52);
        v53(v51, v52);
        goto LABEL_24;
      }

      v59 = *(v1 + 160);
      if (__swift_getEnumTagSinglePayload(v59, 1, *(v1 + 72)) == 1)
      {
        v60 = *(v1 + 152);
        v61 = *(v1 + 128);
        v62 = *(*(v1 + 136) + 8);
        v62(*(v1 + 144), v61);
        v62(v60, v61);
        outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v59, &demangling cache variable for type metadata for MLCheckpoint?);
        v17 = 0;
        v12 = (v1 + 224);
      }

      else
      {
        v72 = *(v1 + 184);
        v69 = *(v1 + 152);
        v70 = *(v1 + 144);
        v71 = *(v1 + 136);
        v68 = *(v1 + 128);
        v63 = *(v1 + 96);
        v64 = *(v1 + 176) + *(v1 + 64);
        outlined init with take of MLClassifierMetrics(v59, v63, type metadata accessor for MLCheckpoint);
        PassthroughSubject.send(_:)(v63);
        outlined destroy of MLActivityClassifier.ModelParameters(v63, type metadata accessor for MLCheckpoint);
        v65 = *(v71 + 8);
        v65(v70, v68);
        v65(v69, v68);
        v12 = (v64 + *(v72 + 8));
        v17 = 0;
      }

      break;
  }

LABEL_8:
  if (*(v1 + 257) == 1)
  {
    v18 = (*(v1 + 192) + *(v1 + 64));
    v72 = v17;
    specialized MLTrainingSession.transition(to:)(2, &demangling cache variable for type metadata for MLTrainingSession<MLRandomForestClassifier>.Metadata);
    v19 = v18[3];
    v20 = v18[4];
    v67 = 2;
    __swift_project_boxed_opaque_existential_0Tm(v18, v19);
    v21 = v72;
    (*(v20 + 40))(&v67, v19, v20);
    if (v21)
    {
      v72 = v21;
LABEL_24:
      v54 = *(v1 + 168);
      v55 = *(v1 + 160);
      v56 = *(v1 + 152);
      v57 = *(v1 + 144);
      v58 = *(v1 + 120);
      v68 = *(v1 + 104);
      v69 = *(v1 + 88);
      v70 = *(v1 + 96);
      v54;
      v55;
      v56;
      v57;
      v58;
      v68;
      v70;
      v69;
      v28 = *(v1 + 8);
      return v28();
    }
  }

  else
  {
    v22 = *v12;
    if (![*(*(v1 + 56) + direct field offset for MLJob.progress) isCancelled])
    {
      *(v1 + 224) = v22;
      v34 = *(v1 + 64);
      v35 = *(v1 + 184);
      v36 = (v34 + *(v1 + 192));
      v37 = v34 + *(v1 + 176);
      v38 = v36[3];
      v39 = v36[4];
      v72 = __swift_project_boxed_opaque_existential_0Tm(v36, v38);
      v40 = *(*(v35 + 32) + v37);
      v41 = *(v39 + 48);
      v42 = (v41 + *v41);
      v43 = swift_task_alloc(v41[1]);
      *(v1 + 232) = v43;
      *v43 = v1;
      v43[1] = specialized MLTrainingSession.extractFeatures(job:);
      return v42(v40, v38, v39);
    }
  }

  v23 = *(v1 + 168);
  v24 = *(v1 + 160);
  v25 = *(v1 + 152);
  v26 = *(v1 + 144);
  v27 = *(v1 + 120);
  v70 = *(v1 + 104);
  v72 = *(v1 + 88);
  v69 = *(v1 + 96);
  v23;
  v24;
  v25;
  v26;
  v27;
  v70;
  v69;
  v72;
  v28 = *(v1 + 8);
  return v28();
}

{
  v55 = v0 | 0x1000000000000000;
  v54 = v1;
  v2 = v1[8];
  v3 = *(*v2 + 112);
  v1[22] = v3;
  v4 = v3 + v2;
  swift_beginAccess(v4, (v1 + 2), 1, 0);
  v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLBoostedTreeRegressor>.Metadata);
  v1[23] = v5;
  v47 = v5;
  v46 = v4;
  v6 = *(*(v5 + 44) + v4);
  v1[5] = v6;
  v7 = *(v6 + 16);
  v49 = v1;
  if (v7)
  {
    v53 = v1[9];
    v52 = v1[10];
    v51 = (v6 + ((*(v52 + 80) + 32) & ~*(v52 + 80)));

    v48 = v6;
    while (1)
    {
      if (v7 > *(v6 + 16))
      {
        BUG();
      }

      --v7;
      v8 = v1[11];
      outlined init with copy of MLTrainingSessionParameters(v51 + v7 * *(v52 + 72), v8, type metadata accessor for MLCheckpoint);
      switch(*(v8 + *(v53 + 5)))
      {
        case 0:
          v9 = 0xEB0000000064657ALL;
          v10 = 0x696C616974696E69;
          goto LABEL_9;
        case 1:
          v45 = v1[11];
          110;
          outlined destroy of MLActivityClassifier.ModelParameters(v45, type metadata accessor for MLCheckpoint);
          LODWORD(v53) = 0;
          goto LABEL_14;
        case 2:
          v9 = 0xE800000000000000;
          v10 = 0x676E696E69617274;
          goto LABEL_9;
        case 3:
          v9 = 0xEA0000000000676ELL;
          v10 = 0x697461756C617665;
          goto LABEL_9;
        case 4:
          v9 = &loc_308EF - 0x14FFFFFFFF9B9A86;
          v10 = 0x636E657265666E69;
LABEL_9:
          v11 = v1[11];
          v12 = _stringCompareWithSmolCheck(_:_:expecting:)(v10, v9, 0x6974636172747865, 0xEA0000000000676ELL, 0);
          v9;
          v13 = outlined destroy of MLActivityClassifier.ModelParameters(v11, type metadata accessor for MLCheckpoint);
          if (v12)
          {
            LODWORD(v53) = 0;
            v14 = v48;
            goto LABEL_16;
          }

          v1 = v49;
          v6 = v48;
          if (!v7)
          {
            goto LABEL_13;
          }

          break;
      }
    }
  }

LABEL_13:
  LOBYTE(v13) = 1;
  LODWORD(v53) = v13;
  v7 = 0;
LABEL_14:
  v14 = v6;
LABEL_16:
  v51 = v49 + 6;
  v52 = v49[9];
  v15 = v49[21];
  v16 = swift_task_alloc(32);
  *(v16 + 16) = v49 + 5;
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lFxq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lyxs5NeverOqd_0_Isgnrzr_xSgAb2ERsd__Ri_d_0_r_0_lIetMgnrzo_Tpq5Si_8CreateML12MLCheckpointVTg5(closure #1 in BidirectionalCollection.last(where:)specialized partial apply, v16, v7, v53, v51);
  v14;
  v16;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v52);
  v18 = v49[21];
  if (EnumTagSinglePayload == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v18, &demangling cache variable for type metadata for MLCheckpoint?);
    v51 = 0;
  }

  else
  {
    v51 = *(v18 + *(v49[9] + 24));
    outlined destroy of MLActivityClassifier.ModelParameters(v18, type metadata accessor for MLCheckpoint);
  }

  v53 = v49[7];
  v19 = v49[8];
  v20 = direct field offset for MLTrainingSession.delegate;
  v49[24] = direct field offset for MLTrainingSession.delegate;
  v21 = *(v19 + v20 + 24);
  v52 = *(v19 + v20 + 32);
  __swift_project_boxed_opaque_existential_0Tm((v19 + v20), v21);
  v50 = *(v46 + *(v47 + 28));
  v22 = (*(v52 + 32))(&v50, v21);
  LOBYTE(v21) = v23;
  v49[25] = v22;
  *(v49 + 256) = v23;
  v52 = *(v46 + *(v47 + 32));
  v24 = *(v46 + *(v47 + 28));
  v25 = lazy protocol witness table accessor for type MLProgress.Metric and conformance MLProgress.Metric();
  v49[26] = v25;
  v26 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for MLProgress.Metric, &type metadata for Any + 8, v25);
  v27 = v22;
  v28 = v53;
  specialized MLJob.reportProgress(completedUnitCount:phase:phaseUnitCount:metrics:)(v52, v24, v27, v21 & 1, v26, specialized MLJob.currentPhase.setter);
  v26;
  if ([*(v28 + direct field offset for MLJob.progress) isCancelled])
  {
    v29 = v49[21];
    v30 = v49[20];
    v31 = v49[19];
    v32 = v49[18];
    v33 = v49[15];
    v51 = v49[13];
    v53 = v49[11];
    v52 = v49[12];
    v29;
    v30;
    v31;
    v32;
    v33;
    v51;
    v52;
    v53;
    return (v49[1])();
  }

  else
  {
    v49[27] = direct field offset for MLTrainingSession.parameters;
    v49[28] = v51;
    v35 = v49[8];
    v36 = v49[23];
    v37 = (v35 + v49[24]);
    v38 = v35 + v49[22];
    v39 = v37[3];
    v40 = v37[4];
    v53 = __swift_project_boxed_opaque_existential_0Tm(v37, v39);
    v41 = *(*(v36 + 32) + v38);
    v42 = *(v40 + 48);
    v43 = (v42 + *v42);
    v44 = swift_task_alloc(v42[1]);
    v49[29] = v44;
    *v44 = v49;
    v44[1] = specialized MLTrainingSession.extractFeatures(job:);
    return v43(v41, v39, v40);
  }
}

{
  v74 = v0 | 0x1000000000000000;
  v73 = v1;
  v2 = *(v1 + 184);
  v3 = *(v1 + 176) + *(v1 + 64);
  v4 = *(v2 + 8);
  v5 = *(v4 + v3);
  v6 = __OFADD__(*(v1 + 240), v5);
  v7 = *(v1 + 240) + v5;
  if (v6)
  {
    BUG();
  }

  v72 = *(v1 + 224);
  v8 = *(v1 + 208);
  v9 = *(v1 + 256);
  v70 = *(v1 + 56);
  v68 = *(v1 + 200);
  *(v3 + v4) = v7;
  LODWORD(v71) = *(v3 + *(v2 + 7));
  v69 = v2;
  v10 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for MLProgress.Metric, &type metadata for Any + 8, v8);
  specialized MLJob.reportProgress(completedUnitCount:phase:phaseUnitCount:metrics:)(v7, v71, v68, v9 & 1, v10, specialized MLJob.currentPhase.setter);
  v10;
  v11 = *(v3 + *(v69 + 8));
  if (__OFSUB__(v11, v72))
  {
    BUG();
  }

  v12 = (v1 + 224);
  v13 = *(v1 + 216) + *(v1 + 64);
  if (v11 - v72 < *(*(*(v1 + 112) + 24) + v13) && (*(v1 + 257) & (*(v1 + 240) > 0)) == 0)
  {
    goto LABEL_7;
  }

  v72 = v11;
  v14 = *(v1 + 128);
  v15 = *(v1 + 104);
  v16 = *(v1 + 120);
  outlined init with copy of MLTrainingSessionParameters(v13, v16, type metadata accessor for MLTrainingSessionParameters);
  outlined init with take of URL?(v16, v15);
  if (__swift_getEnumTagSinglePayload(v15, 1, v14) == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(*(v1 + 104), &demangling cache variable for type metadata for URL?);
LABEL_7:
    v17 = *(v1 + 248);
    goto LABEL_8;
  }

  v29 = *(v1 + 184);
  v30 = *(v1 + 176) + *(v1 + 64);
  (*(*(v1 + 136) + 32))(*(v1 + 152), *(v1 + 104), *(v1 + 128));
  v31 = *(*(v29 + 28) + v30);
  v32 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<CVarArg>);
  v33 = swift_allocObject(v32, 112, 7);
  v33[2] = 2;
  v33[3] = 4;
  switch(v31)
  {
    case 0:
      v71 = 0x696C616974696E69;
      v66 = 0xEB0000000064657ALL;
      goto LABEL_22;
    case 1:
      v46 = 0x6974636172747865;
      goto LABEL_21;
    case 2:
      v66 = 0xE800000000000000;
      v45 = 0x676E696E69617274;
      goto LABEL_18;
    case 3:
      v46 = 0x697461756C617665;
LABEL_21:
      v71 = v46;
      v66 = 0xEA0000000000676ELL;
      goto LABEL_22;
    case 4:
      v66 = 0xEB00000000676E69;
      v45 = 0x636E657265666E69;
LABEL_18:
      v71 = v45;
LABEL_22:
      v69 = *(v1 + 248);
      v70 = *(v1 + 160);
      v68 = *(v1 + 64);
      v47 = *(v1 + 144);
      v33[7] = &type metadata for String;
      v33[8] = lazy protocol witness table accessor for type String and conformance String();
      v33[4] = v71;
      v33[5] = v66;
      v33[12] = &type metadata for Int;
      v33[13] = &protocol witness table for Int;
      v33[9] = v72;
      v48 = String.init(format:_:)(0xD000000000000012, ("ng a features checkpoint." + 0x8000000000000000), v33);
      v50 = v49;
      URL.appendingPathComponent(_:)(v48, v49);
      v50;
      specialized MLTrainingSession.saveFeatureExtractionCheckpoint(to:)(v47, &demangling cache variable for type metadata for MLTrainingSession<MLBoostedTreeRegressor>.Metadata, specialized MLTrainingSession.save());
      if (v69)
      {
        v72 = v69;
        v51 = *(v1 + 152);
        v52 = *(v1 + 128);
        v53 = *(*(v1 + 136) + 8);
        v53(*(v1 + 144), v52);
        v53(v51, v52);
        goto LABEL_24;
      }

      v59 = *(v1 + 160);
      if (__swift_getEnumTagSinglePayload(v59, 1, *(v1 + 72)) == 1)
      {
        v60 = *(v1 + 152);
        v61 = *(v1 + 128);
        v62 = *(*(v1 + 136) + 8);
        v62(*(v1 + 144), v61);
        v62(v60, v61);
        outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v59, &demangling cache variable for type metadata for MLCheckpoint?);
        v17 = 0;
        v12 = (v1 + 224);
      }

      else
      {
        v72 = *(v1 + 184);
        v69 = *(v1 + 152);
        v70 = *(v1 + 144);
        v71 = *(v1 + 136);
        v68 = *(v1 + 128);
        v63 = *(v1 + 96);
        v64 = *(v1 + 176) + *(v1 + 64);
        outlined init with take of MLClassifierMetrics(v59, v63, type metadata accessor for MLCheckpoint);
        PassthroughSubject.send(_:)(v63);
        outlined destroy of MLActivityClassifier.ModelParameters(v63, type metadata accessor for MLCheckpoint);
        v65 = *(v71 + 8);
        v65(v70, v68);
        v65(v69, v68);
        v12 = (v64 + *(v72 + 8));
        v17 = 0;
      }

      break;
  }

LABEL_8:
  if (*(v1 + 257) == 1)
  {
    v18 = (*(v1 + 192) + *(v1 + 64));
    v72 = v17;
    specialized MLTrainingSession.transition(to:)(2, &demangling cache variable for type metadata for MLTrainingSession<MLBoostedTreeRegressor>.Metadata);
    v19 = v18[3];
    v20 = v18[4];
    v67 = 2;
    __swift_project_boxed_opaque_existential_0Tm(v18, v19);
    v21 = v72;
    (*(v20 + 40))(&v67, v19, v20);
    if (v21)
    {
      v72 = v21;
LABEL_24:
      v54 = *(v1 + 168);
      v55 = *(v1 + 160);
      v56 = *(v1 + 152);
      v57 = *(v1 + 144);
      v58 = *(v1 + 120);
      v68 = *(v1 + 104);
      v69 = *(v1 + 88);
      v70 = *(v1 + 96);
      v54;
      v55;
      v56;
      v57;
      v58;
      v68;
      v70;
      v69;
      v28 = *(v1 + 8);
      return v28();
    }
  }

  else
  {
    v22 = *v12;
    if (![*(*(v1 + 56) + direct field offset for MLJob.progress) isCancelled])
    {
      *(v1 + 224) = v22;
      v34 = *(v1 + 64);
      v35 = *(v1 + 184);
      v36 = (v34 + *(v1 + 192));
      v37 = v34 + *(v1 + 176);
      v38 = v36[3];
      v39 = v36[4];
      v72 = __swift_project_boxed_opaque_existential_0Tm(v36, v38);
      v40 = *(*(v35 + 32) + v37);
      v41 = *(v39 + 48);
      v42 = (v41 + *v41);
      v43 = swift_task_alloc(v41[1]);
      *(v1 + 232) = v43;
      *v43 = v1;
      v43[1] = specialized MLTrainingSession.extractFeatures(job:);
      return v42(v40, v38, v39);
    }
  }

  v23 = *(v1 + 168);
  v24 = *(v1 + 160);
  v25 = *(v1 + 152);
  v26 = *(v1 + 144);
  v27 = *(v1 + 120);
  v70 = *(v1 + 104);
  v72 = *(v1 + 88);
  v69 = *(v1 + 96);
  v23;
  v24;
  v25;
  v26;
  v27;
  v70;
  v69;
  v72;
  v28 = *(v1 + 8);
  return v28();
}

{
  v55 = v0 | 0x1000000000000000;
  v54 = v1;
  v2 = v1[8];
  v3 = *(*v2 + 112);
  v1[22] = v3;
  v4 = v3 + v2;
  swift_beginAccess(v4, (v1 + 2), 1, 0);
  v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLObjectDetector>.Metadata);
  v1[23] = v5;
  v47 = v5;
  v46 = v4;
  v6 = *(*(v5 + 44) + v4);
  v1[5] = v6;
  v7 = *(v6 + 16);
  v49 = v1;
  if (v7)
  {
    v53 = v1[9];
    v52 = v1[10];
    v51 = (v6 + ((*(v52 + 80) + 32) & ~*(v52 + 80)));

    v48 = v6;
    while (1)
    {
      if (v7 > *(v6 + 16))
      {
        BUG();
      }

      --v7;
      v8 = v1[11];
      outlined init with copy of MLTrainingSessionParameters(v51 + v7 * *(v52 + 72), v8, type metadata accessor for MLCheckpoint);
      switch(*(v8 + *(v53 + 5)))
      {
        case 0:
          v9 = 0xEB0000000064657ALL;
          v10 = 0x696C616974696E69;
          goto LABEL_9;
        case 1:
          v45 = v1[11];
          110;
          outlined destroy of MLActivityClassifier.ModelParameters(v45, type metadata accessor for MLCheckpoint);
          LODWORD(v53) = 0;
          goto LABEL_14;
        case 2:
          v9 = 0xE800000000000000;
          v10 = 0x676E696E69617274;
          goto LABEL_9;
        case 3:
          v9 = 0xEA0000000000676ELL;
          v10 = 0x697461756C617665;
          goto LABEL_9;
        case 4:
          v9 = &loc_308EF - 0x14FFFFFFFF9B9A86;
          v10 = 0x636E657265666E69;
LABEL_9:
          v11 = v1[11];
          v12 = _stringCompareWithSmolCheck(_:_:expecting:)(v10, v9, 0x6974636172747865, 0xEA0000000000676ELL, 0);
          v9;
          v13 = outlined destroy of MLActivityClassifier.ModelParameters(v11, type metadata accessor for MLCheckpoint);
          if (v12)
          {
            LODWORD(v53) = 0;
            v14 = v48;
            goto LABEL_16;
          }

          v1 = v49;
          v6 = v48;
          if (!v7)
          {
            goto LABEL_13;
          }

          break;
      }
    }
  }

LABEL_13:
  LOBYTE(v13) = 1;
  LODWORD(v53) = v13;
  v7 = 0;
LABEL_14:
  v14 = v6;
LABEL_16:
  v51 = v49 + 6;
  v52 = v49[9];
  v15 = v49[21];
  v16 = swift_task_alloc(32);
  *(v16 + 16) = v49 + 5;
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lFxq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lyxs5NeverOqd_0_Isgnrzr_xSgAb2ERsd__Ri_d_0_r_0_lIetMgnrzo_Tpq5Si_8CreateML12MLCheckpointVTg5(closure #1 in BidirectionalCollection.last(where:)specialized partial apply, v16, v7, v53, v51);
  v14;
  v16;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v52);
  v18 = v49[21];
  if (EnumTagSinglePayload == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v18, &demangling cache variable for type metadata for MLCheckpoint?);
    v51 = 0;
  }

  else
  {
    v51 = *(v18 + *(v49[9] + 24));
    outlined destroy of MLActivityClassifier.ModelParameters(v18, type metadata accessor for MLCheckpoint);
  }

  v53 = v49[7];
  v19 = v49[8];
  v20 = direct field offset for MLTrainingSession.delegate;
  v49[24] = direct field offset for MLTrainingSession.delegate;
  v21 = *(v19 + v20 + 24);
  v52 = *(v19 + v20 + 32);
  __swift_project_boxed_opaque_existential_0Tm((v19 + v20), v21);
  v50 = *(v46 + *(v47 + 28));
  v22 = (*(v52 + 32))(&v50, v21);
  LOBYTE(v21) = v23;
  v49[25] = v22;
  *(v49 + 256) = v23;
  v52 = *(v46 + *(v47 + 32));
  v24 = *(v46 + *(v47 + 28));
  v25 = lazy protocol witness table accessor for type MLProgress.Metric and conformance MLProgress.Metric();
  v49[26] = v25;
  v26 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for MLProgress.Metric, &type metadata for Any + 8, v25);
  v27 = v22;
  v28 = v53;
  specialized MLJob.reportProgress(completedUnitCount:phase:phaseUnitCount:metrics:)(v52, v24, v27, v21 & 1, v26, specialized MLJob.currentPhase.setter);
  v26;
  if ([*(v28 + direct field offset for MLJob.progress) isCancelled])
  {
    v29 = v49[21];
    v30 = v49[20];
    v31 = v49[19];
    v32 = v49[18];
    v33 = v49[15];
    v51 = v49[13];
    v53 = v49[11];
    v52 = v49[12];
    v29;
    v30;
    v31;
    v32;
    v33;
    v51;
    v52;
    v53;
    return (v49[1])();
  }

  else
  {
    v49[27] = direct field offset for MLTrainingSession.parameters;
    v49[28] = v51;
    v35 = v49[8];
    v36 = v49[23];
    v37 = (v35 + v49[24]);
    v38 = v35 + v49[22];
    v39 = v37[3];
    v40 = v37[4];
    v53 = __swift_project_boxed_opaque_existential_0Tm(v37, v39);
    v41 = *(*(v36 + 32) + v38);
    v42 = *(v40 + 48);
    v43 = (v42 + *v42);
    v44 = swift_task_alloc(v42[1]);
    v49[29] = v44;
    *v44 = v49;
    v44[1] = specialized MLTrainingSession.extractFeatures(job:);
    return v43(v41, v39, v40);
  }
}

{
  v74 = v0 | 0x1000000000000000;
  v73 = v1;
  v2 = *(v1 + 184);
  v3 = *(v1 + 176) + *(v1 + 64);
  v4 = *(v2 + 8);
  v5 = *(v4 + v3);
  v6 = __OFADD__(*(v1 + 240), v5);
  v7 = *(v1 + 240) + v5;
  if (v6)
  {
    BUG();
  }

  v72 = *(v1 + 224);
  v8 = *(v1 + 208);
  v9 = *(v1 + 256);
  v70 = *(v1 + 56);
  v68 = *(v1 + 200);
  *(v3 + v4) = v7;
  LODWORD(v71) = *(v3 + *(v2 + 7));
  v69 = v2;
  v10 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for MLProgress.Metric, &type metadata for Any + 8, v8);
  specialized MLJob.reportProgress(completedUnitCount:phase:phaseUnitCount:metrics:)(v7, v71, v68, v9 & 1, v10, specialized MLJob.currentPhase.setter);
  v10;
  v11 = *(v3 + *(v69 + 8));
  if (__OFSUB__(v11, v72))
  {
    BUG();
  }

  v12 = (v1 + 224);
  v13 = *(v1 + 216) + *(v1 + 64);
  if (v11 - v72 < *(*(*(v1 + 112) + 24) + v13) && (*(v1 + 257) & (*(v1 + 240) > 0)) == 0)
  {
    goto LABEL_7;
  }

  v72 = v11;
  v14 = *(v1 + 128);
  v15 = *(v1 + 104);
  v16 = *(v1 + 120);
  outlined init with copy of MLTrainingSessionParameters(v13, v16, type metadata accessor for MLTrainingSessionParameters);
  outlined init with take of URL?(v16, v15);
  if (__swift_getEnumTagSinglePayload(v15, 1, v14) == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(*(v1 + 104), &demangling cache variable for type metadata for URL?);
LABEL_7:
    v17 = *(v1 + 248);
    goto LABEL_8;
  }

  v29 = *(v1 + 184);
  v30 = *(v1 + 176) + *(v1 + 64);
  (*(*(v1 + 136) + 32))(*(v1 + 152), *(v1 + 104), *(v1 + 128));
  v31 = *(*(v29 + 28) + v30);
  v32 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<CVarArg>);
  v33 = swift_allocObject(v32, 112, 7);
  v33[2] = 2;
  v33[3] = 4;
  switch(v31)
  {
    case 0:
      v71 = 0x696C616974696E69;
      v66 = 0xEB0000000064657ALL;
      goto LABEL_22;
    case 1:
      v46 = 0x6974636172747865;
      goto LABEL_21;
    case 2:
      v66 = 0xE800000000000000;
      v45 = 0x676E696E69617274;
      goto LABEL_18;
    case 3:
      v46 = 0x697461756C617665;
LABEL_21:
      v71 = v46;
      v66 = 0xEA0000000000676ELL;
      goto LABEL_22;
    case 4:
      v66 = 0xEB00000000676E69;
      v45 = 0x636E657265666E69;
LABEL_18:
      v71 = v45;
LABEL_22:
      v69 = *(v1 + 248);
      v70 = *(v1 + 160);
      v68 = *(v1 + 64);
      v47 = *(v1 + 144);
      v33[7] = &type metadata for String;
      v33[8] = lazy protocol witness table accessor for type String and conformance String();
      v33[4] = v71;
      v33[5] = v66;
      v33[12] = &type metadata for Int;
      v33[13] = &protocol witness table for Int;
      v33[9] = v72;
      v48 = String.init(format:_:)(0xD000000000000012, ("ng a features checkpoint." + 0x8000000000000000), v33);
      v50 = v49;
      URL.appendingPathComponent(_:)(v48, v49);
      v50;
      specialized MLTrainingSession.saveFeatureExtractionCheckpoint(to:)(v47, &demangling cache variable for type metadata for MLTrainingSession<MLObjectDetector>.Metadata, specialized MLTrainingSession.save());
      if (v69)
      {
        v72 = v69;
        v51 = *(v1 + 152);
        v52 = *(v1 + 128);
        v53 = *(*(v1 + 136) + 8);
        v53(*(v1 + 144), v52);
        v53(v51, v52);
        goto LABEL_24;
      }

      v59 = *(v1 + 160);
      if (__swift_getEnumTagSinglePayload(v59, 1, *(v1 + 72)) == 1)
      {
        v60 = *(v1 + 152);
        v61 = *(v1 + 128);
        v62 = *(*(v1 + 136) + 8);
        v62(*(v1 + 144), v61);
        v62(v60, v61);
        outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v59, &demangling cache variable for type metadata for MLCheckpoint?);
        v17 = 0;
        v12 = (v1 + 224);
      }

      else
      {
        v72 = *(v1 + 184);
        v69 = *(v1 + 152);
        v70 = *(v1 + 144);
        v71 = *(v1 + 136);
        v68 = *(v1 + 128);
        v63 = *(v1 + 96);
        v64 = *(v1 + 176) + *(v1 + 64);
        outlined init with take of MLClassifierMetrics(v59, v63, type metadata accessor for MLCheckpoint);
        PassthroughSubject.send(_:)(v63);
        outlined destroy of MLActivityClassifier.ModelParameters(v63, type metadata accessor for MLCheckpoint);
        v65 = *(v71 + 8);
        v65(v70, v68);
        v65(v69, v68);
        v12 = (v64 + *(v72 + 8));
        v17 = 0;
      }

      break;
  }

LABEL_8:
  if (*(v1 + 257) == 1)
  {
    v18 = (*(v1 + 192) + *(v1 + 64));
    v72 = v17;
    specialized MLTrainingSession.transition(to:)(2, &demangling cache variable for type metadata for MLTrainingSession<MLObjectDetector>.Metadata);
    v19 = v18[3];
    v20 = v18[4];
    v67 = 2;
    __swift_project_boxed_opaque_existential_0Tm(v18, v19);
    v21 = v72;
    (*(v20 + 40))(&v67, v19, v20);
    if (v21)
    {
      v72 = v21;
LABEL_24:
      v54 = *(v1 + 168);
      v55 = *(v1 + 160);
      v56 = *(v1 + 152);
      v57 = *(v1 + 144);
      v58 = *(v1 + 120);
      v68 = *(v1 + 104);
      v69 = *(v1 + 88);
      v70 = *(v1 + 96);
      v54;
      v55;
      v56;
      v57;
      v58;
      v68;
      v70;
      v69;
      v28 = *(v1 + 8);
      return v28();
    }
  }

  else
  {
    v22 = *v12;
    if (![*(*(v1 + 56) + direct field offset for MLJob.progress) isCancelled])
    {
      *(v1 + 224) = v22;
      v34 = *(v1 + 64);
      v35 = *(v1 + 184);
      v36 = (v34 + *(v1 + 192));
      v37 = v34 + *(v1 + 176);
      v38 = v36[3];
      v39 = v36[4];
      v72 = __swift_project_boxed_opaque_existential_0Tm(v36, v38);
      v40 = *(*(v35 + 32) + v37);
      v41 = *(v39 + 48);
      v42 = (v41 + *v41);
      v43 = swift_task_alloc(v41[1]);
      *(v1 + 232) = v43;
      *v43 = v1;
      v43[1] = specialized MLTrainingSession.extractFeatures(job:);
      return v42(v40, v38, v39);
    }
  }

  v23 = *(v1 + 168);
  v24 = *(v1 + 160);
  v25 = *(v1 + 152);
  v26 = *(v1 + 144);
  v27 = *(v1 + 120);
  v70 = *(v1 + 104);
  v72 = *(v1 + 88);
  v69 = *(v1 + 96);
  v23;
  v24;
  v25;
  v26;
  v27;
  v70;
  v69;
  v72;
  v28 = *(v1 + 8);
  return v28();
}

{
  v55 = v0 | 0x1000000000000000;
  v54 = v1;
  v2 = v1[8];
  v3 = *(*v2 + 112);
  v1[22] = v3;
  v4 = v3 + v2;
  swift_beginAccess(v4, (v1 + 2), 1, 0);
  v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLDecisionTreeClassifier>.Metadata);
  v1[23] = v5;
  v47 = v5;
  v46 = v4;
  v6 = *(*(v5 + 44) + v4);
  v1[5] = v6;
  v7 = *(v6 + 16);
  v49 = v1;
  if (v7)
  {
    v53 = v1[9];
    v52 = v1[10];
    v51 = (v6 + ((*(v52 + 80) + 32) & ~*(v52 + 80)));

    v48 = v6;
    while (1)
    {
      if (v7 > *(v6 + 16))
      {
        BUG();
      }

      --v7;
      v8 = v1[11];
      outlined init with copy of MLTrainingSessionParameters(v51 + v7 * *(v52 + 72), v8, type metadata accessor for MLCheckpoint);
      switch(*(v8 + *(v53 + 5)))
      {
        case 0:
          v9 = 0xEB0000000064657ALL;
          v10 = 0x696C616974696E69;
          goto LABEL_9;
        case 1:
          v45 = v1[11];
          110;
          outlined destroy of MLActivityClassifier.ModelParameters(v45, type metadata accessor for MLCheckpoint);
          LODWORD(v53) = 0;
          goto LABEL_14;
        case 2:
          v9 = 0xE800000000000000;
          v10 = 0x676E696E69617274;
          goto LABEL_9;
        case 3:
          v9 = 0xEA0000000000676ELL;
          v10 = 0x697461756C617665;
          goto LABEL_9;
        case 4:
          v9 = &loc_308EF - 0x14FFFFFFFF9B9A86;
          v10 = 0x636E657265666E69;
LABEL_9:
          v11 = v1[11];
          v12 = _stringCompareWithSmolCheck(_:_:expecting:)(v10, v9, 0x6974636172747865, 0xEA0000000000676ELL, 0);
          v9;
          v13 = outlined destroy of MLActivityClassifier.ModelParameters(v11, type metadata accessor for MLCheckpoint);
          if (v12)
          {
            LODWORD(v53) = 0;
            v14 = v48;
            goto LABEL_16;
          }

          v1 = v49;
          v6 = v48;
          if (!v7)
          {
            goto LABEL_13;
          }

          break;
      }
    }
  }

LABEL_13:
  LOBYTE(v13) = 1;
  LODWORD(v53) = v13;
  v7 = 0;
LABEL_14:
  v14 = v6;
LABEL_16:
  v51 = v49 + 6;
  v52 = v49[9];
  v15 = v49[21];
  v16 = swift_task_alloc(32);
  *(v16 + 16) = v49 + 5;
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lFxq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lyxs5NeverOqd_0_Isgnrzr_xSgAb2ERsd__Ri_d_0_r_0_lIetMgnrzo_Tpq5Si_8CreateML12MLCheckpointVTg5(closure #1 in BidirectionalCollection.last(where:)specialized partial apply, v16, v7, v53, v51);
  v14;
  v16;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v52);
  v18 = v49[21];
  if (EnumTagSinglePayload == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v18, &demangling cache variable for type metadata for MLCheckpoint?);
    v51 = 0;
  }

  else
  {
    v51 = *(v18 + *(v49[9] + 24));
    outlined destroy of MLActivityClassifier.ModelParameters(v18, type metadata accessor for MLCheckpoint);
  }

  v53 = v49[7];
  v19 = v49[8];
  v20 = direct field offset for MLTrainingSession.delegate;
  v49[24] = direct field offset for MLTrainingSession.delegate;
  v21 = *(v19 + v20 + 24);
  v52 = *(v19 + v20 + 32);
  __swift_project_boxed_opaque_existential_0Tm((v19 + v20), v21);
  v50 = *(v46 + *(v47 + 28));
  v22 = (*(v52 + 32))(&v50, v21);
  LOBYTE(v21) = v23;
  v49[25] = v22;
  *(v49 + 256) = v23;
  v52 = *(v46 + *(v47 + 32));
  v24 = *(v46 + *(v47 + 28));
  v25 = lazy protocol witness table accessor for type MLProgress.Metric and conformance MLProgress.Metric();
  v49[26] = v25;
  v26 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for MLProgress.Metric, &type metadata for Any + 8, v25);
  v27 = v22;
  v28 = v53;
  specialized MLJob.reportProgress(completedUnitCount:phase:phaseUnitCount:metrics:)(v52, v24, v27, v21 & 1, v26, specialized MLJob.currentPhase.setter);
  v26;
  if ([*(v28 + direct field offset for MLJob.progress) isCancelled])
  {
    v29 = v49[21];
    v30 = v49[20];
    v31 = v49[19];
    v32 = v49[18];
    v33 = v49[15];
    v51 = v49[13];
    v53 = v49[11];
    v52 = v49[12];
    v29;
    v30;
    v31;
    v32;
    v33;
    v51;
    v52;
    v53;
    return (v49[1])();
  }

  else
  {
    v49[27] = direct field offset for MLTrainingSession.parameters;
    v49[28] = v51;
    v35 = v49[8];
    v36 = v49[23];
    v37 = (v35 + v49[24]);
    v38 = v35 + v49[22];
    v39 = v37[3];
    v40 = v37[4];
    v53 = __swift_project_boxed_opaque_existential_0Tm(v37, v39);
    v41 = *(*(v36 + 32) + v38);
    v42 = *(v40 + 48);
    v43 = (v42 + *v42);
    v44 = swift_task_alloc(v42[1]);
    v49[29] = v44;
    *v44 = v49;
    v44[1] = specialized MLTrainingSession.extractFeatures(job:);
    return v43(v41, v39, v40);
  }
}

{
  v74 = v0 | 0x1000000000000000;
  v73 = v1;
  v2 = *(v1 + 184);
  v3 = *(v1 + 176) + *(v1 + 64);
  v4 = *(v2 + 8);
  v5 = *(v4 + v3);
  v6 = __OFADD__(*(v1 + 240), v5);
  v7 = *(v1 + 240) + v5;
  if (v6)
  {
    BUG();
  }

  v72 = *(v1 + 224);
  v8 = *(v1 + 208);
  v9 = *(v1 + 256);
  v70 = *(v1 + 56);
  v68 = *(v1 + 200);
  *(v3 + v4) = v7;
  LODWORD(v71) = *(v3 + *(v2 + 7));
  v69 = v2;
  v10 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for MLProgress.Metric, &type metadata for Any + 8, v8);
  specialized MLJob.reportProgress(completedUnitCount:phase:phaseUnitCount:metrics:)(v7, v71, v68, v9 & 1, v10, specialized MLJob.currentPhase.setter);
  v10;
  v11 = *(v3 + *(v69 + 8));
  if (__OFSUB__(v11, v72))
  {
    BUG();
  }

  v12 = (v1 + 224);
  v13 = *(v1 + 216) + *(v1 + 64);
  if (v11 - v72 < *(*(*(v1 + 112) + 24) + v13) && (*(v1 + 257) & (*(v1 + 240) > 0)) == 0)
  {
    goto LABEL_7;
  }

  v72 = v11;
  v14 = *(v1 + 128);
  v15 = *(v1 + 104);
  v16 = *(v1 + 120);
  outlined init with copy of MLTrainingSessionParameters(v13, v16, type metadata accessor for MLTrainingSessionParameters);
  outlined init with take of URL?(v16, v15);
  if (__swift_getEnumTagSinglePayload(v15, 1, v14) == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(*(v1 + 104), &demangling cache variable for type metadata for URL?);
LABEL_7:
    v17 = *(v1 + 248);
    goto LABEL_8;
  }

  v29 = *(v1 + 184);
  v30 = *(v1 + 176) + *(v1 + 64);
  (*(*(v1 + 136) + 32))(*(v1 + 152), *(v1 + 104), *(v1 + 128));
  v31 = *(*(v29 + 28) + v30);
  v32 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<CVarArg>);
  v33 = swift_allocObject(v32, 112, 7);
  v33[2] = 2;
  v33[3] = 4;
  switch(v31)
  {
    case 0:
      v71 = 0x696C616974696E69;
      v66 = 0xEB0000000064657ALL;
      goto LABEL_22;
    case 1:
      v46 = 0x6974636172747865;
      goto LABEL_21;
    case 2:
      v66 = 0xE800000000000000;
      v45 = 0x676E696E69617274;
      goto LABEL_18;
    case 3:
      v46 = 0x697461756C617665;
LABEL_21:
      v71 = v46;
      v66 = 0xEA0000000000676ELL;
      goto LABEL_22;
    case 4:
      v66 = 0xEB00000000676E69;
      v45 = 0x636E657265666E69;
LABEL_18:
      v71 = v45;
LABEL_22:
      v69 = *(v1 + 248);
      v70 = *(v1 + 160);
      v68 = *(v1 + 64);
      v47 = *(v1 + 144);
      v33[7] = &type metadata for String;
      v33[8] = lazy protocol witness table accessor for type String and conformance String();
      v33[4] = v71;
      v33[5] = v66;
      v33[12] = &type metadata for Int;
      v33[13] = &protocol witness table for Int;
      v33[9] = v72;
      v48 = String.init(format:_:)(0xD000000000000012, ("ng a features checkpoint." + 0x8000000000000000), v33);
      v50 = v49;
      URL.appendingPathComponent(_:)(v48, v49);
      v50;
      specialized MLTrainingSession.saveFeatureExtractionCheckpoint(to:)(v47, &demangling cache variable for type metadata for MLTrainingSession<MLDecisionTreeClassifier>.Metadata, specialized MLTrainingSession.save());
      if (v69)
      {
        v72 = v69;
        v51 = *(v1 + 152);
        v52 = *(v1 + 128);
        v53 = *(*(v1 + 136) + 8);
        v53(*(v1 + 144), v52);
        v53(v51, v52);
        goto LABEL_24;
      }

      v59 = *(v1 + 160);
      if (__swift_getEnumTagSinglePayload(v59, 1, *(v1 + 72)) == 1)
      {
        v60 = *(v1 + 152);
        v61 = *(v1 + 128);
        v62 = *(*(v1 + 136) + 8);
        v62(*(v1 + 144), v61);
        v62(v60, v61);
        outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v59, &demangling cache variable for type metadata for MLCheckpoint?);
        v17 = 0;
        v12 = (v1 + 224);
      }

      else
      {
        v72 = *(v1 + 184);
        v69 = *(v1 + 152);
        v70 = *(v1 + 144);
        v71 = *(v1 + 136);
        v68 = *(v1 + 128);
        v63 = *(v1 + 96);
        v64 = *(v1 + 176) + *(v1 + 64);
        outlined init with take of MLClassifierMetrics(v59, v63, type metadata accessor for MLCheckpoint);
        PassthroughSubject.send(_:)(v63);
        outlined destroy of MLActivityClassifier.ModelParameters(v63, type metadata accessor for MLCheckpoint);
        v65 = *(v71 + 8);
        v65(v70, v68);
        v65(v69, v68);
        v12 = (v64 + *(v72 + 8));
        v17 = 0;
      }

      break;
  }

LABEL_8:
  if (*(v1 + 257) == 1)
  {
    v18 = (*(v1 + 192) + *(v1 + 64));
    v72 = v17;
    specialized MLTrainingSession.transition(to:)(2, &demangling cache variable for type metadata for MLTrainingSession<MLDecisionTreeClassifier>.Metadata);
    v19 = v18[3];
    v20 = v18[4];
    v67 = 2;
    __swift_project_boxed_opaque_existential_0Tm(v18, v19);
    v21 = v72;
    (*(v20 + 40))(&v67, v19, v20);
    if (v21)
    {
      v72 = v21;
LABEL_24:
      v54 = *(v1 + 168);
      v55 = *(v1 + 160);
      v56 = *(v1 + 152);
      v57 = *(v1 + 144);
      v58 = *(v1 + 120);
      v68 = *(v1 + 104);
      v69 = *(v1 + 88);
      v70 = *(v1 + 96);
      v54;
      v55;
      v56;
      v57;
      v58;
      v68;
      v70;
      v69;
      v28 = *(v1 + 8);
      return v28();
    }
  }

  else
  {
    v22 = *v12;
    if (![*(*(v1 + 56) + direct field offset for MLJob.progress) isCancelled])
    {
      *(v1 + 224) = v22;
      v34 = *(v1 + 64);
      v35 = *(v1 + 184);
      v36 = (v34 + *(v1 + 192));
      v37 = v34 + *(v1 + 176);
      v38 = v36[3];
      v39 = v36[4];
      v72 = __swift_project_boxed_opaque_existential_0Tm(v36, v38);
      v40 = *(*(v35 + 32) + v37);
      v41 = *(v39 + 48);
      v42 = (v41 + *v41);
      v43 = swift_task_alloc(v41[1]);
      *(v1 + 232) = v43;
      *v43 = v1;
      v43[1] = specialized MLTrainingSession.extractFeatures(job:);
      return v42(v40, v38, v39);
    }
  }

  v23 = *(v1 + 168);
  v24 = *(v1 + 160);
  v25 = *(v1 + 152);
  v26 = *(v1 + 144);
  v27 = *(v1 + 120);
  v70 = *(v1 + 104);
  v72 = *(v1 + 88);
  v69 = *(v1 + 96);
  v23;
  v24;
  v25;
  v26;
  v27;
  v70;
  v69;
  v72;
  v28 = *(v1 + 8);
  return v28();
}

{
  v55 = v0 | 0x1000000000000000;
  v54 = v1;
  v2 = v1[8];
  v3 = *(*v2 + 112);
  v1[22] = v3;
  v4 = v3 + v2;
  swift_beginAccess(v4, (v1 + 2), 1, 0);
  v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLSoundClassifier.DataSource>.Metadata);
  v1[23] = v5;
  v47 = v5;
  v46 = v4;
  v6 = *(*(v5 + 44) + v4);
  v1[5] = v6;
  v7 = *(v6 + 16);
  v49 = v1;
  if (v7)
  {
    v53 = v1[9];
    v52 = v1[10];
    v51 = (v6 + ((*(v52 + 80) + 32) & ~*(v52 + 80)));

    v48 = v6;
    while (1)
    {
      if (v7 > *(v6 + 16))
      {
        BUG();
      }

      --v7;
      v8 = v1[11];
      outlined init with copy of MLTrainingSessionParameters(v51 + v7 * *(v52 + 72), v8, type metadata accessor for MLCheckpoint);
      switch(*(v8 + *(v53 + 5)))
      {
        case 0:
          v9 = 0xEB0000000064657ALL;
          v10 = 0x696C616974696E69;
          goto LABEL_9;
        case 1:
          v45 = v1[11];
          110;
          outlined destroy of MLActivityClassifier.ModelParameters(v45, type metadata accessor for MLCheckpoint);
          LODWORD(v53) = 0;
          goto LABEL_14;
        case 2:
          v9 = 0xE800000000000000;
          v10 = 0x676E696E69617274;
          goto LABEL_9;
        case 3:
          v9 = 0xEA0000000000676ELL;
          v10 = 0x697461756C617665;
          goto LABEL_9;
        case 4:
          v9 = &loc_308EF - 0x14FFFFFFFF9B9A86;
          v10 = 0x636E657265666E69;
LABEL_9:
          v11 = v1[11];
          v12 = _stringCompareWithSmolCheck(_:_:expecting:)(v10, v9, 0x6974636172747865, 0xEA0000000000676ELL, 0);
          v9;
          v13 = outlined destroy of MLActivityClassifier.ModelParameters(v11, type metadata accessor for MLCheckpoint);
          if (v12)
          {
            LODWORD(v53) = 0;
            v14 = v48;
            goto LABEL_16;
          }

          v1 = v49;
          v6 = v48;
          if (!v7)
          {
            goto LABEL_13;
          }

          break;
      }
    }
  }

LABEL_13:
  LOBYTE(v13) = 1;
  LODWORD(v53) = v13;
  v7 = 0;
LABEL_14:
  v14 = v6;
LABEL_16:
  v51 = v49 + 6;
  v52 = v49[9];
  v15 = v49[21];
  v16 = swift_task_alloc(32);
  *(v16 + 16) = v49 + 5;
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lFxq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lyxs5NeverOqd_0_Isgnrzr_xSgAb2ERsd__Ri_d_0_r_0_lIetMgnrzo_Tpq5Si_8CreateML12MLCheckpointVTg5(closure #1 in BidirectionalCollection.last(where:)specialized partial apply, v16, v7, v53, v51);
  v14;
  v16;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v52);
  v18 = v49[21];
  if (EnumTagSinglePayload == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v18, &demangling cache variable for type metadata for MLCheckpoint?);
    v51 = 0;
  }

  else
  {
    v51 = *(v18 + *(v49[9] + 24));
    outlined destroy of MLActivityClassifier.ModelParameters(v18, type metadata accessor for MLCheckpoint);
  }

  v53 = v49[7];
  v19 = v49[8];
  v20 = direct field offset for MLTrainingSession.delegate;
  v49[24] = direct field offset for MLTrainingSession.delegate;
  v21 = *(v19 + v20 + 24);
  v52 = *(v19 + v20 + 32);
  __swift_project_boxed_opaque_existential_0Tm((v19 + v20), v21);
  v50 = *(v46 + *(v47 + 28));
  v22 = (*(v52 + 32))(&v50, v21);
  LOBYTE(v21) = v23;
  v49[25] = v22;
  *(v49 + 256) = v23;
  v52 = *(v46 + *(v47 + 32));
  v24 = *(v46 + *(v47 + 28));
  v25 = lazy protocol witness table accessor for type MLProgress.Metric and conformance MLProgress.Metric();
  v49[26] = v25;
  v26 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for MLProgress.Metric, &type metadata for Any + 8, v25);
  v27 = v22;
  v28 = v53;
  specialized MLJob.reportProgress(completedUnitCount:phase:phaseUnitCount:metrics:)(v52, v24, v27, v21 & 1, v26, specialized MLJob.currentPhase.setter);
  v26;
  if ([*(v28 + direct field offset for MLJob.progress) isCancelled])
  {
    v29 = v49[21];
    v30 = v49[20];
    v31 = v49[19];
    v32 = v49[18];
    v33 = v49[15];
    v51 = v49[13];
    v53 = v49[11];
    v52 = v49[12];
    v29;
    v30;
    v31;
    v32;
    v33;
    v51;
    v52;
    v53;
    return (v49[1])();
  }

  else
  {
    v49[27] = direct field offset for MLTrainingSession.parameters;
    v49[28] = v51;
    v35 = v49[8];
    v36 = v49[23];
    v37 = (v35 + v49[24]);
    v38 = v35 + v49[22];
    v39 = v37[3];
    v40 = v37[4];
    v53 = __swift_project_boxed_opaque_existential_0Tm(v37, v39);
    v41 = *(*(v36 + 32) + v38);
    v42 = *(v40 + 48);
    v43 = (v42 + *v42);
    v44 = swift_task_alloc(v42[1]);
    v49[29] = v44;
    *v44 = v49;
    v44[1] = specialized MLTrainingSession.extractFeatures(job:);
    return v43(v41, v39, v40);
  }
}

{
  v74 = v0 | 0x1000000000000000;
  v73 = v1;
  v2 = *(v1 + 184);
  v3 = *(v1 + 176) + *(v1 + 64);
  v4 = *(v2 + 8);
  v5 = *(v4 + v3);
  v6 = __OFADD__(*(v1 + 240), v5);
  v7 = *(v1 + 240) + v5;
  if (v6)
  {
    BUG();
  }

  v72 = *(v1 + 224);
  v8 = *(v1 + 208);
  v9 = *(v1 + 256);
  v70 = *(v1 + 56);
  v68 = *(v1 + 200);
  *(v3 + v4) = v7;
  LODWORD(v71) = *(v3 + *(v2 + 7));
  v69 = v2;
  v10 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for MLProgress.Metric, &type metadata for Any + 8, v8);
  specialized MLJob.reportProgress(completedUnitCount:phase:phaseUnitCount:metrics:)(v7, v71, v68, v9 & 1, v10, specialized MLJob.currentPhase.setter);
  v10;
  v11 = *(v3 + *(v69 + 8));
  if (__OFSUB__(v11, v72))
  {
    BUG();
  }

  v12 = (v1 + 224);
  v13 = *(v1 + 216) + *(v1 + 64);
  if (v11 - v72 < *(*(*(v1 + 112) + 24) + v13) && (*(v1 + 257) & (*(v1 + 240) > 0)) == 0)
  {
    goto LABEL_7;
  }

  v72 = v11;
  v14 = *(v1 + 128);
  v15 = *(v1 + 104);
  v16 = *(v1 + 120);
  outlined init with copy of MLTrainingSessionParameters(v13, v16, type metadata accessor for MLTrainingSessionParameters);
  outlined init with take of URL?(v16, v15);
  if (__swift_getEnumTagSinglePayload(v15, 1, v14) == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(*(v1 + 104), &demangling cache variable for type metadata for URL?);
LABEL_7:
    v17 = *(v1 + 248);
    goto LABEL_8;
  }

  v29 = *(v1 + 184);
  v30 = *(v1 + 176) + *(v1 + 64);
  (*(*(v1 + 136) + 32))(*(v1 + 152), *(v1 + 104), *(v1 + 128));
  v31 = *(*(v29 + 28) + v30);
  v32 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<CVarArg>);
  v33 = swift_allocObject(v32, 112, 7);
  v33[2] = 2;
  v33[3] = 4;
  switch(v31)
  {
    case 0:
      v71 = 0x696C616974696E69;
      v66 = 0xEB0000000064657ALL;
      goto LABEL_22;
    case 1:
      v46 = 0x6974636172747865;
      goto LABEL_21;
    case 2:
      v66 = 0xE800000000000000;
      v45 = 0x676E696E69617274;
      goto LABEL_18;
    case 3:
      v46 = 0x697461756C617665;
LABEL_21:
      v71 = v46;
      v66 = 0xEA0000000000676ELL;
      goto LABEL_22;
    case 4:
      v66 = 0xEB00000000676E69;
      v45 = 0x636E657265666E69;
LABEL_18:
      v71 = v45;
LABEL_22:
      v69 = *(v1 + 248);
      v70 = *(v1 + 160);
      v68 = *(v1 + 64);
      v47 = *(v1 + 144);
      v33[7] = &type metadata for String;
      v33[8] = lazy protocol witness table accessor for type String and conformance String();
      v33[4] = v71;
      v33[5] = v66;
      v33[12] = &type metadata for Int;
      v33[13] = &protocol witness table for Int;
      v33[9] = v72;
      v48 = String.init(format:_:)(0xD000000000000012, ("ng a features checkpoint." + 0x8000000000000000), v33);
      v50 = v49;
      URL.appendingPathComponent(_:)(v48, v49);
      v50;
      specialized MLTrainingSession.saveFeatureExtractionCheckpoint(to:)(v47, &demangling cache variable for type metadata for MLTrainingSession<MLSoundClassifier.DataSource>.Metadata, specialized MLTrainingSession.save());
      if (v69)
      {
        v72 = v69;
        v51 = *(v1 + 152);
        v52 = *(v1 + 128);
        v53 = *(*(v1 + 136) + 8);
        v53(*(v1 + 144), v52);
        v53(v51, v52);
        goto LABEL_24;
      }

      v59 = *(v1 + 160);
      if (__swift_getEnumTagSinglePayload(v59, 1, *(v1 + 72)) == 1)
      {
        v60 = *(v1 + 152);
        v61 = *(v1 + 128);
        v62 = *(*(v1 + 136) + 8);
        v62(*(v1 + 144), v61);
        v62(v60, v61);
        outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v59, &demangling cache variable for type metadata for MLCheckpoint?);
        v17 = 0;
        v12 = (v1 + 224);
      }

      else
      {
        v72 = *(v1 + 184);
        v69 = *(v1 + 152);
        v70 = *(v1 + 144);
        v71 = *(v1 + 136);
        v68 = *(v1 + 128);
        v63 = *(v1 + 96);
        v64 = *(v1 + 176) + *(v1 + 64);
        outlined init with take of MLClassifierMetrics(v59, v63, type metadata accessor for MLCheckpoint);
        PassthroughSubject.send(_:)(v63);
        outlined destroy of MLActivityClassifier.ModelParameters(v63, type metadata accessor for MLCheckpoint);
        v65 = *(v71 + 8);
        v65(v70, v68);
        v65(v69, v68);
        v12 = (v64 + *(v72 + 8));
        v17 = 0;
      }

      break;
  }

LABEL_8:
  if (*(v1 + 257) == 1)
  {
    v18 = (*(v1 + 192) + *(v1 + 64));
    v72 = v17;
    specialized MLTrainingSession.transition(to:)(2, &demangling cache variable for type metadata for MLTrainingSession<MLSoundClassifier.DataSource>.Metadata);
    v19 = v18[3];
    v20 = v18[4];
    v67 = 2;
    __swift_project_boxed_opaque_existential_0Tm(v18, v19);
    v21 = v72;
    (*(v20 + 40))(&v67, v19, v20);
    if (v21)
    {
      v72 = v21;
LABEL_24:
      v54 = *(v1 + 168);
      v55 = *(v1 + 160);
      v56 = *(v1 + 152);
      v57 = *(v1 + 144);
      v58 = *(v1 + 120);
      v68 = *(v1 + 104);
      v69 = *(v1 + 88);
      v70 = *(v1 + 96);
      v54;
      v55;
      v56;
      v57;
      v58;
      v68;
      v70;
      v69;
      v28 = *(v1 + 8);
      return v28();
    }
  }

  else
  {
    v22 = *v12;
    if (![*(*(v1 + 56) + direct field offset for MLJob.progress) isCancelled])
    {
      *(v1 + 224) = v22;
      v34 = *(v1 + 64);
      v35 = *(v1 + 184);
      v36 = (v34 + *(v1 + 192));
      v37 = v34 + *(v1 + 176);
      v38 = v36[3];
      v39 = v36[4];
      v72 = __swift_project_boxed_opaque_existential_0Tm(v36, v38);
      v40 = *(*(v35 + 32) + v37);
      v41 = *(v39 + 48);
      v42 = (v41 + *v41);
      v43 = swift_task_alloc(v41[1]);
      *(v1 + 232) = v43;
      *v43 = v1;
      v43[1] = specialized MLTrainingSession.extractFeatures(job:);
      return v42(v40, v38, v39);
    }
  }

  v23 = *(v1 + 168);
  v24 = *(v1 + 160);
  v25 = *(v1 + 152);
  v26 = *(v1 + 144);
  v27 = *(v1 + 120);
  v70 = *(v1 + 104);
  v72 = *(v1 + 88);
  v69 = *(v1 + 96);
  v23;
  v24;
  v25;
  v26;
  v27;
  v70;
  v69;
  v72;
  v28 = *(v1 + 8);
  return v28();
}

{
  v55 = v0 | 0x1000000000000000;
  v54 = v1;
  v2 = v1[8];
  v3 = *(*v2 + 112);
  v1[22] = v3;
  v4 = v3 + v2;
  swift_beginAccess(v4, (v1 + 2), 1, 0);
  v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLSoundClassifier>.Metadata);
  v1[23] = v5;
  v47 = v5;
  v46 = v4;
  v6 = *(*(v5 + 44) + v4);
  v1[5] = v6;
  v7 = *(v6 + 16);
  v49 = v1;
  if (v7)
  {
    v53 = v1[9];
    v52 = v1[10];
    v51 = (v6 + ((*(v52 + 80) + 32) & ~*(v52 + 80)));

    v48 = v6;
    while (1)
    {
      if (v7 > *(v6 + 16))
      {
        BUG();
      }

      --v7;
      v8 = v1[11];
      outlined init with copy of MLTrainingSessionParameters(v51 + v7 * *(v52 + 72), v8, type metadata accessor for MLCheckpoint);
      switch(*(v8 + *(v53 + 5)))
      {
        case 0:
          v9 = 0xEB0000000064657ALL;
          v10 = 0x696C616974696E69;
          goto LABEL_9;
        case 1:
          v45 = v1[11];
          110;
          outlined destroy of MLActivityClassifier.ModelParameters(v45, type metadata accessor for MLCheckpoint);
          LODWORD(v53) = 0;
          goto LABEL_14;
        case 2:
          v9 = 0xE800000000000000;
          v10 = 0x676E696E69617274;
          goto LABEL_9;
        case 3:
          v9 = 0xEA0000000000676ELL;
          v10 = 0x697461756C617665;
          goto LABEL_9;
        case 4:
          v9 = &loc_308EF - 0x14FFFFFFFF9B9A86;
          v10 = 0x636E657265666E69;
LABEL_9:
          v11 = v1[11];
          v12 = _stringCompareWithSmolCheck(_:_:expecting:)(v10, v9, 0x6974636172747865, 0xEA0000000000676ELL, 0);
          v9;
          v13 = outlined destroy of MLActivityClassifier.ModelParameters(v11, type metadata accessor for MLCheckpoint);
          if (v12)
          {
            LODWORD(v53) = 0;
            v14 = v48;
            goto LABEL_16;
          }

          v1 = v49;
          v6 = v48;
          if (!v7)
          {
            goto LABEL_13;
          }

          break;
      }
    }
  }

LABEL_13:
  LOBYTE(v13) = 1;
  LODWORD(v53) = v13;
  v7 = 0;
LABEL_14:
  v14 = v6;
LABEL_16:
  v51 = v49 + 6;
  v52 = v49[9];
  v15 = v49[21];
  v16 = swift_task_alloc(32);
  *(v16 + 16) = v49 + 5;
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lFxq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lyxs5NeverOqd_0_Isgnrzr_xSgAb2ERsd__Ri_d_0_r_0_lIetMgnrzo_Tpq5Si_8CreateML12MLCheckpointVTg5(closure #1 in BidirectionalCollection.last(where:)specialized partial apply, v16, v7, v53, v51);
  v14;
  v16;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v52);
  v18 = v49[21];
  if (EnumTagSinglePayload == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v18, &demangling cache variable for type metadata for MLCheckpoint?);
    v51 = 0;
  }

  else
  {
    v51 = *(v18 + *(v49[9] + 24));
    outlined destroy of MLActivityClassifier.ModelParameters(v18, type metadata accessor for MLCheckpoint);
  }

  v53 = v49[7];
  v19 = v49[8];
  v20 = direct field offset for MLTrainingSession.delegate;
  v49[24] = direct field offset for MLTrainingSession.delegate;
  v21 = *(v19 + v20 + 24);
  v52 = *(v19 + v20 + 32);
  __swift_project_boxed_opaque_existential_0Tm((v19 + v20), v21);
  v50 = *(v46 + *(v47 + 28));
  v22 = (*(v52 + 32))(&v50, v21);
  LOBYTE(v21) = v23;
  v49[25] = v22;
  *(v49 + 256) = v23;
  v52 = *(v46 + *(v47 + 32));
  v24 = *(v46 + *(v47 + 28));
  v25 = lazy protocol witness table accessor for type MLProgress.Metric and conformance MLProgress.Metric();
  v49[26] = v25;
  v26 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for MLProgress.Metric, &type metadata for Any + 8, v25);
  v27 = v22;
  v28 = v53;
  specialized MLJob.reportProgress(completedUnitCount:phase:phaseUnitCount:metrics:)(v52, v24, v27, v21 & 1, v26, specialized MLJob.currentPhase.setter);
  v26;
  if ([*(v28 + direct field offset for MLJob.progress) isCancelled])
  {
    v29 = v49[21];
    v30 = v49[20];
    v31 = v49[19];
    v32 = v49[18];
    v33 = v49[15];
    v51 = v49[13];
    v53 = v49[11];
    v52 = v49[12];
    v29;
    v30;
    v31;
    v32;
    v33;
    v51;
    v52;
    v53;
    return (v49[1])();
  }

  else
  {
    v49[27] = direct field offset for MLTrainingSession.parameters;
    v49[28] = v51;
    v35 = v49[8];
    v36 = v49[23];
    v37 = (v35 + v49[24]);
    v38 = v35 + v49[22];
    v39 = v37[3];
    v40 = v37[4];
    v53 = __swift_project_boxed_opaque_existential_0Tm(v37, v39);
    v41 = *(*(v36 + 32) + v38);
    v42 = *(v40 + 48);
    v43 = (v42 + *v42);
    v44 = swift_task_alloc(v42[1]);
    v49[29] = v44;
    *v44 = v49;
    v44[1] = specialized MLTrainingSession.extractFeatures(job:);
    return v43(v41, v39, v40);
  }
}

{
  v74 = v0 | 0x1000000000000000;
  v73 = v1;
  v2 = *(v1 + 184);
  v3 = *(v1 + 176) + *(v1 + 64);
  v4 = *(v2 + 8);
  v5 = *(v4 + v3);
  v6 = __OFADD__(*(v1 + 240), v5);
  v7 = *(v1 + 240) + v5;
  if (v6)
  {
    BUG();
  }

  v72 = *(v1 + 224);
  v8 = *(v1 + 208);
  v9 = *(v1 + 256);
  v70 = *(v1 + 56);
  v68 = *(v1 + 200);
  *(v3 + v4) = v7;
  LODWORD(v71) = *(v3 + *(v2 + 7));
  v69 = v2;
  v10 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for MLProgress.Metric, &type metadata for Any + 8, v8);
  specialized MLJob.reportProgress(completedUnitCount:phase:phaseUnitCount:metrics:)(v7, v71, v68, v9 & 1, v10, specialized MLJob.currentPhase.setter);
  v10;
  v11 = *(v3 + *(v69 + 8));
  if (__OFSUB__(v11, v72))
  {
    BUG();
  }

  v12 = (v1 + 224);
  v13 = *(v1 + 216) + *(v1 + 64);
  if (v11 - v72 < *(*(*(v1 + 112) + 24) + v13) && (*(v1 + 257) & (*(v1 + 240) > 0)) == 0)
  {
    goto LABEL_7;
  }

  v72 = v11;
  v14 = *(v1 + 128);
  v15 = *(v1 + 104);
  v16 = *(v1 + 120);
  outlined init with copy of MLTrainingSessionParameters(v13, v16, type metadata accessor for MLTrainingSessionParameters);
  outlined init with take of URL?(v16, v15);
  if (__swift_getEnumTagSinglePayload(v15, 1, v14) == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(*(v1 + 104), &demangling cache variable for type metadata for URL?);
LABEL_7:
    v17 = *(v1 + 248);
    goto LABEL_8;
  }

  v29 = *(v1 + 184);
  v30 = *(v1 + 176) + *(v1 + 64);
  (*(*(v1 + 136) + 32))(*(v1 + 152), *(v1 + 104), *(v1 + 128));
  v31 = *(*(v29 + 28) + v30);
  v32 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<CVarArg>);
  v33 = swift_allocObject(v32, 112, 7);
  v33[2] = 2;
  v33[3] = 4;
  switch(v31)
  {
    case 0:
      v71 = 0x696C616974696E69;
      v66 = 0xEB0000000064657ALL;
      goto LABEL_22;
    case 1:
      v46 = 0x6974636172747865;
      goto LABEL_21;
    case 2:
      v66 = 0xE800000000000000;
      v45 = 0x676E696E69617274;
      goto LABEL_18;
    case 3:
      v46 = 0x697461756C617665;
LABEL_21:
      v71 = v46;
      v66 = 0xEA0000000000676ELL;
      goto LABEL_22;
    case 4:
      v66 = 0xEB00000000676E69;
      v45 = 0x636E657265666E69;
LABEL_18:
      v71 = v45;
LABEL_22:
      v69 = *(v1 + 248);
      v70 = *(v1 + 160);
      v68 = *(v1 + 64);
      v47 = *(v1 + 144);
      v33[7] = &type metadata for String;
      v33[8] = lazy protocol witness table accessor for type String and conformance String();
      v33[4] = v71;
      v33[5] = v66;
      v33[12] = &type metadata for Int;
      v33[13] = &protocol witness table for Int;
      v33[9] = v72;
      v48 = String.init(format:_:)(0xD000000000000012, ("ng a features checkpoint." + 0x8000000000000000), v33);
      v50 = v49;
      URL.appendingPathComponent(_:)(v48, v49);
      v50;
      specialized MLTrainingSession.saveFeatureExtractionCheckpoint(to:)(v47, &demangling cache variable for type metadata for MLTrainingSession<MLSoundClassifier>.Metadata, specialized MLTrainingSession.save());
      if (v69)
      {
        v72 = v69;
        v51 = *(v1 + 152);
        v52 = *(v1 + 128);
        v53 = *(*(v1 + 136) + 8);
        v53(*(v1 + 144), v52);
        v53(v51, v52);
        goto LABEL_24;
      }

      v59 = *(v1 + 160);
      if (__swift_getEnumTagSinglePayload(v59, 1, *(v1 + 72)) == 1)
      {
        v60 = *(v1 + 152);
        v61 = *(v1 + 128);
        v62 = *(*(v1 + 136) + 8);
        v62(*(v1 + 144), v61);
        v62(v60, v61);
        outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v59, &demangling cache variable for type metadata for MLCheckpoint?);
        v17 = 0;
        v12 = (v1 + 224);
      }

      else
      {
        v72 = *(v1 + 184);
        v69 = *(v1 + 152);
        v70 = *(v1 + 144);
        v71 = *(v1 + 136);
        v68 = *(v1 + 128);
        v63 = *(v1 + 96);
        v64 = *(v1 + 176) + *(v1 + 64);
        outlined init with take of MLClassifierMetrics(v59, v63, type metadata accessor for MLCheckpoint);
        PassthroughSubject.send(_:)(v63);
        outlined destroy of MLActivityClassifier.ModelParameters(v63, type metadata accessor for MLCheckpoint);
        v65 = *(v71 + 8);
        v65(v70, v68);
        v65(v69, v68);
        v12 = (v64 + *(v72 + 8));
        v17 = 0;
      }

      break;
  }

LABEL_8:
  if (*(v1 + 257) == 1)
  {
    v18 = (*(v1 + 192) + *(v1 + 64));
    v72 = v17;
    specialized MLTrainingSession.transition(to:)(2, &demangling cache variable for type metadata for MLTrainingSession<MLSoundClassifier>.Metadata);
    v19 = v18[3];
    v20 = v18[4];
    v67 = 2;
    __swift_project_boxed_opaque_existential_0Tm(v18, v19);
    v21 = v72;
    (*(v20 + 40))(&v67, v19, v20);
    if (v21)
    {
      v72 = v21;
LABEL_24:
      v54 = *(v1 + 168);
      v55 = *(v1 + 160);
      v56 = *(v1 + 152);
      v57 = *(v1 + 144);
      v58 = *(v1 + 120);
      v68 = *(v1 + 104);
      v69 = *(v1 + 88);
      v70 = *(v1 + 96);
      v54;
      v55;
      v56;
      v57;
      v58;
      v68;
      v70;
      v69;
      v28 = *(v1 + 8);
      return v28();
    }
  }

  else
  {
    v22 = *v12;
    if (![*(*(v1 + 56) + direct field offset for MLJob.progress) isCancelled])
    {
      *(v1 + 224) = v22;
      v34 = *(v1 + 64);
      v35 = *(v1 + 184);
      v36 = (v34 + *(v1 + 192));
      v37 = v34 + *(v1 + 176);
      v38 = v36[3];
      v39 = v36[4];
      v72 = __swift_project_boxed_opaque_existential_0Tm(v36, v38);
      v40 = *(*(v35 + 32) + v37);
      v41 = *(v39 + 48);
      v42 = (v41 + *v41);
      v43 = swift_task_alloc(v41[1]);
      *(v1 + 232) = v43;
      *v43 = v1;
      v43[1] = specialized MLTrainingSession.extractFeatures(job:);
      return v42(v40, v38, v39);
    }
  }

  v23 = *(v1 + 168);
  v24 = *(v1 + 160);
  v25 = *(v1 + 152);
  v26 = *(v1 + 144);
  v27 = *(v1 + 120);
  v70 = *(v1 + 104);
  v72 = *(v1 + 88);
  v69 = *(v1 + 96);
  v23;
  v24;
  v25;
  v26;
  v27;
  v70;
  v69;
  v72;
  v28 = *(v1 + 8);
  return v28();
}

{
  v55 = v0 | 0x1000000000000000;
  v54 = v1;
  v2 = v1[8];
  v3 = *(*v2 + 112);
  v1[22] = v3;
  v4 = v3 + v2;
  swift_beginAccess(v4, (v1 + 2), 1, 0);
  v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLBoostedTreeClassifier>.Metadata);
  v1[23] = v5;
  v47 = v5;
  v46 = v4;
  v6 = *(*(v5 + 44) + v4);
  v1[5] = v6;
  v7 = *(v6 + 16);
  v49 = v1;
  if (v7)
  {
    v53 = v1[9];
    v52 = v1[10];
    v51 = (v6 + ((*(v52 + 80) + 32) & ~*(v52 + 80)));

    v48 = v6;
    while (1)
    {
      if (v7 > *(v6 + 16))
      {
        BUG();
      }

      --v7;
      v8 = v1[11];
      outlined init with copy of MLTrainingSessionParameters(v51 + v7 * *(v52 + 72), v8, type metadata accessor for MLCheckpoint);
      switch(*(v8 + *(v53 + 5)))
      {
        case 0:
          v9 = 0xEB0000000064657ALL;
          v10 = 0x696C616974696E69;
          goto LABEL_9;
        case 1:
          v45 = v1[11];
          110;
          outlined destroy of MLActivityClassifier.ModelParameters(v45, type metadata accessor for MLCheckpoint);
          LODWORD(v53) = 0;
          goto LABEL_14;
        case 2:
          v9 = 0xE800000000000000;
          v10 = 0x676E696E69617274;
          goto LABEL_9;
        case 3:
          v9 = 0xEA0000000000676ELL;
          v10 = 0x697461756C617665;
          goto LABEL_9;
        case 4:
          v9 = &loc_308EF - 0x14FFFFFFFF9B9A86;
          v10 = 0x636E657265666E69;
LABEL_9:
          v11 = v1[11];
          v12 = _stringCompareWithSmolCheck(_:_:expecting:)(v10, v9, 0x6974636172747865, 0xEA0000000000676ELL, 0);
          v9;
          v13 = outlined destroy of MLActivityClassifier.ModelParameters(v11, type metadata accessor for MLCheckpoint);
          if (v12)
          {
            LODWORD(v53) = 0;
            v14 = v48;
            goto LABEL_16;
          }

          v1 = v49;
          v6 = v48;
          if (!v7)
          {
            goto LABEL_13;
          }

          break;
      }
    }
  }

LABEL_13:
  LOBYTE(v13) = 1;
  LODWORD(v53) = v13;
  v7 = 0;
LABEL_14:
  v14 = v6;
LABEL_16:
  v51 = v49 + 6;
  v52 = v49[9];
  v15 = v49[21];
  v16 = swift_task_alloc(32);
  *(v16 + 16) = v49 + 5;
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lFxq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lyxs5NeverOqd_0_Isgnrzr_xSgAb2ERsd__Ri_d_0_r_0_lIetMgnrzo_Tpq5Si_8CreateML12MLCheckpointVTg5(closure #1 in BidirectionalCollection.last(where:)specialized partial apply, v16, v7, v53, v51);
  v14;
  v16;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v52);
  v18 = v49[21];
  if (EnumTagSinglePayload == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v18, &demangling cache variable for type metadata for MLCheckpoint?);
    v51 = 0;
  }

  else
  {
    v51 = *(v18 + *(v49[9] + 24));
    outlined destroy of MLActivityClassifier.ModelParameters(v18, type metadata accessor for MLCheckpoint);
  }

  v53 = v49[7];
  v19 = v49[8];
  v20 = direct field offset for MLTrainingSession.delegate;
  v49[24] = direct field offset for MLTrainingSession.delegate;
  v21 = *(v19 + v20 + 24);
  v52 = *(v19 + v20 + 32);
  __swift_project_boxed_opaque_existential_0Tm((v19 + v20), v21);
  v50 = *(v46 + *(v47 + 28));
  v22 = (*(v52 + 32))(&v50, v21);
  LOBYTE(v21) = v23;
  v49[25] = v22;
  *(v49 + 256) = v23;
  v52 = *(v46 + *(v47 + 32));
  v24 = *(v46 + *(v47 + 28));
  v25 = lazy protocol witness table accessor for type MLProgress.Metric and conformance MLProgress.Metric();
  v49[26] = v25;
  v26 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for MLProgress.Metric, &type metadata for Any + 8, v25);
  v27 = v22;
  v28 = v53;
  specialized MLJob.reportProgress(completedUnitCount:phase:phaseUnitCount:metrics:)(v52, v24, v27, v21 & 1, v26, specialized MLJob.currentPhase.setter);
  v26;
  if ([*(v28 + direct field offset for MLJob.progress) isCancelled])
  {
    v29 = v49[21];
    v30 = v49[20];
    v31 = v49[19];
    v32 = v49[18];
    v33 = v49[15];
    v51 = v49[13];
    v53 = v49[11];
    v52 = v49[12];
    v29;
    v30;
    v31;
    v32;
    v33;
    v51;
    v52;
    v53;
    return (v49[1])();
  }

  else
  {
    v49[27] = direct field offset for MLTrainingSession.parameters;
    v49[28] = v51;
    v35 = v49[8];
    v36 = v49[23];
    v37 = (v35 + v49[24]);
    v38 = v35 + v49[22];
    v39 = v37[3];
    v40 = v37[4];
    v53 = __swift_project_boxed_opaque_existential_0Tm(v37, v39);
    v41 = *(*(v36 + 32) + v38);
    v42 = *(v40 + 48);
    v43 = (v42 + *v42);
    v44 = swift_task_alloc(v42[1]);
    v49[29] = v44;
    *v44 = v49;
    v44[1] = specialized MLTrainingSession.extractFeatures(job:);
    return v43(v41, v39, v40);
  }
}

{
  v74 = v0 | 0x1000000000000000;
  v73 = v1;
  v2 = *(v1 + 184);
  v3 = *(v1 + 176) + *(v1 + 64);
  v4 = *(v2 + 8);
  v5 = *(v4 + v3);
  v6 = __OFADD__(*(v1 + 240), v5);
  v7 = *(v1 + 240) + v5;
  if (v6)
  {
    BUG();
  }

  v72 = *(v1 + 224);
  v8 = *(v1 + 208);
  v9 = *(v1 + 256);
  v70 = *(v1 + 56);
  v68 = *(v1 + 200);
  *(v3 + v4) = v7;
  LODWORD(v71) = *(v3 + *(v2 + 7));
  v69 = v2;
  v10 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for MLProgress.Metric, &type metadata for Any + 8, v8);
  specialized MLJob.reportProgress(completedUnitCount:phase:phaseUnitCount:metrics:)(v7, v71, v68, v9 & 1, v10, specialized MLJob.currentPhase.setter);
  v10;
  v11 = *(v3 + *(v69 + 8));
  if (__OFSUB__(v11, v72))
  {
    BUG();
  }

  v12 = (v1 + 224);
  v13 = *(v1 + 216) + *(v1 + 64);
  if (v11 - v72 < *(*(*(v1 + 112) + 24) + v13) && (*(v1 + 257) & (*(v1 + 240) > 0)) == 0)
  {
    goto LABEL_7;
  }

  v72 = v11;
  v14 = *(v1 + 128);
  v15 = *(v1 + 104);
  v16 = *(v1 + 120);
  outlined init with copy of MLTrainingSessionParameters(v13, v16, type metadata accessor for MLTrainingSessionParameters);
  outlined init with take of URL?(v16, v15);
  if (__swift_getEnumTagSinglePayload(v15, 1, v14) == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(*(v1 + 104), &demangling cache variable for type metadata for URL?);
LABEL_7:
    v17 = *(v1 + 248);
    goto LABEL_8;
  }

  v29 = *(v1 + 184);
  v30 = *(v1 + 176) + *(v1 + 64);
  (*(*(v1 + 136) + 32))(*(v1 + 152), *(v1 + 104), *(v1 + 128));
  v31 = *(*(v29 + 28) + v30);
  v32 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<CVarArg>);
  v33 = swift_allocObject(v32, 112, 7);
  v33[2] = 2;
  v33[3] = 4;
  switch(v31)
  {
    case 0:
      v71 = 0x696C616974696E69;
      v66 = 0xEB0000000064657ALL;
      goto LABEL_22;
    case 1:
      v46 = 0x6974636172747865;
      goto LABEL_21;
    case 2:
      v66 = 0xE800000000000000;
      v45 = 0x676E696E69617274;
      goto LABEL_18;
    case 3:
      v46 = 0x697461756C617665;
LABEL_21:
      v71 = v46;
      v66 = 0xEA0000000000676ELL;
      goto LABEL_22;
    case 4:
      v66 = 0xEB00000000676E69;
      v45 = 0x636E657265666E69;
LABEL_18:
      v71 = v45;
LABEL_22:
      v69 = *(v1 + 248);
      v70 = *(v1 + 160);
      v68 = *(v1 + 64);
      v47 = *(v1 + 144);
      v33[7] = &type metadata for String;
      v33[8] = lazy protocol witness table accessor for type String and conformance String();
      v33[4] = v71;
      v33[5] = v66;
      v33[12] = &type metadata for Int;
      v33[13] = &protocol witness table for Int;
      v33[9] = v72;
      v48 = String.init(format:_:)(0xD000000000000012, ("ng a features checkpoint." + 0x8000000000000000), v33);
      v50 = v49;
      URL.appendingPathComponent(_:)(v48, v49);
      v50;
      specialized MLTrainingSession.saveFeatureExtractionCheckpoint(to:)(v47, &demangling cache variable for type metadata for MLTrainingSession<MLBoostedTreeClassifier>.Metadata, specialized MLTrainingSession.save());
      if (v69)
      {
        v72 = v69;
        v51 = *(v1 + 152);
        v52 = *(v1 + 128);
        v53 = *(*(v1 + 136) + 8);
        v53(*(v1 + 144), v52);
        v53(v51, v52);
        goto LABEL_24;
      }

      v59 = *(v1 + 160);
      if (__swift_getEnumTagSinglePayload(v59, 1, *(v1 + 72)) == 1)
      {
        v60 = *(v1 + 152);
        v61 = *(v1 + 128);
        v62 = *(*(v1 + 136) + 8);
        v62(*(v1 + 144), v61);
        v62(v60, v61);
        outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v59, &demangling cache variable for type metadata for MLCheckpoint?);
        v17 = 0;
        v12 = (v1 + 224);
      }

      else
      {
        v72 = *(v1 + 184);
        v69 = *(v1 + 152);
        v70 = *(v1 + 144);
        v71 = *(v1 + 136);
        v68 = *(v1 + 128);
        v63 = *(v1 + 96);
        v64 = *(v1 + 176) + *(v1 + 64);
        outlined init with take of MLClassifierMetrics(v59, v63, type metadata accessor for MLCheckpoint);
        PassthroughSubject.send(_:)(v63);
        outlined destroy of MLActivityClassifier.ModelParameters(v63, type metadata accessor for MLCheckpoint);
        v65 = *(v71 + 8);
        v65(v70, v68);
        v65(v69, v68);
        v12 = (v64 + *(v72 + 8));
        v17 = 0;
      }

      break;
  }

LABEL_8:
  if (*(v1 + 257) == 1)
  {
    v18 = (*(v1 + 192) + *(v1 + 64));
    v72 = v17;
    specialized MLTrainingSession.transition(to:)(2, &demangling cache variable for type metadata for MLTrainingSession<MLBoostedTreeClassifier>.Metadata);
    v19 = v18[3];
    v20 = v18[4];
    v67 = 2;
    __swift_project_boxed_opaque_existential_0Tm(v18, v19);
    v21 = v72;
    (*(v20 + 40))(&v67, v19, v20);
    if (v21)
    {
      v72 = v21;
LABEL_24:
      v54 = *(v1 + 168);
      v55 = *(v1 + 160);
      v56 = *(v1 + 152);
      v57 = *(v1 + 144);
      v58 = *(v1 + 120);
      v68 = *(v1 + 104);
      v69 = *(v1 + 88);
      v70 = *(v1 + 96);
      v54;
      v55;
      v56;
      v57;
      v58;
      v68;
      v70;
      v69;
      v28 = *(v1 + 8);
      return v28();
    }
  }

  else
  {
    v22 = *v12;
    if (![*(*(v1 + 56) + direct field offset for MLJob.progress) isCancelled])
    {
      *(v1 + 224) = v22;
      v34 = *(v1 + 64);
      v35 = *(v1 + 184);
      v36 = (v34 + *(v1 + 192));
      v37 = v34 + *(v1 + 176);
      v38 = v36[3];
      v39 = v36[4];
      v72 = __swift_project_boxed_opaque_existential_0Tm(v36, v38);
      v40 = *(*(v35 + 32) + v37);
      v41 = *(v39 + 48);
      v42 = (v41 + *v41);
      v43 = swift_task_alloc(v41[1]);
      *(v1 + 232) = v43;
      *v43 = v1;
      v43[1] = specialized MLTrainingSession.extractFeatures(job:);
      return v42(v40, v38, v39);
    }
  }

  v23 = *(v1 + 168);
  v24 = *(v1 + 160);
  v25 = *(v1 + 152);
  v26 = *(v1 + 144);
  v27 = *(v1 + 120);
  v70 = *(v1 + 104);
  v72 = *(v1 + 88);
  v69 = *(v1 + 96);
  v23;
  v24;
  v25;
  v26;
  v27;
  v70;
  v69;
  v72;
  v28 = *(v1 + 8);
  return v28();
}

{
  v55 = v0 | 0x1000000000000000;
  v54 = v1;
  v2 = v1[8];
  v3 = *(*v2 + 112);
  v1[22] = v3;
  v4 = v3 + v2;
  swift_beginAccess(v4, (v1 + 2), 1, 0);
  v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLLinearRegressor>.Metadata);
  v1[23] = v5;
  v47 = v5;
  v46 = v4;
  v6 = *(*(v5 + 44) + v4);
  v1[5] = v6;
  v7 = *(v6 + 16);
  v49 = v1;
  if (v7)
  {
    v53 = v1[9];
    v52 = v1[10];
    v51 = (v6 + ((*(v52 + 80) + 32) & ~*(v52 + 80)));

    v48 = v6;
    while (1)
    {
      if (v7 > *(v6 + 16))
      {
        BUG();
      }

      --v7;
      v8 = v1[11];
      outlined init with copy of MLTrainingSessionParameters(v51 + v7 * *(v52 + 72), v8, type metadata accessor for MLCheckpoint);
      switch(*(v8 + *(v53 + 5)))
      {
        case 0:
          v9 = 0xEB0000000064657ALL;
          v10 = 0x696C616974696E69;
          goto LABEL_9;
        case 1:
          v45 = v1[11];
          110;
          outlined destroy of MLActivityClassifier.ModelParameters(v45, type metadata accessor for MLCheckpoint);
          LODWORD(v53) = 0;
          goto LABEL_14;
        case 2:
          v9 = 0xE800000000000000;
          v10 = 0x676E696E69617274;
          goto LABEL_9;
        case 3:
          v9 = 0xEA0000000000676ELL;
          v10 = 0x697461756C617665;
          goto LABEL_9;
        case 4:
          v9 = &loc_308EF - 0x14FFFFFFFF9B9A86;
          v10 = 0x636E657265666E69;
LABEL_9:
          v11 = v1[11];
          v12 = _stringCompareWithSmolCheck(_:_:expecting:)(v10, v9, 0x6974636172747865, 0xEA0000000000676ELL, 0);
          v9;
          v13 = outlined destroy of MLActivityClassifier.ModelParameters(v11, type metadata accessor for MLCheckpoint);
          if (v12)
          {
            LODWORD(v53) = 0;
            v14 = v48;
            goto LABEL_16;
          }

          v1 = v49;
          v6 = v48;
          if (!v7)
          {
            goto LABEL_13;
          }

          break;
      }
    }
  }

LABEL_13:
  LOBYTE(v13) = 1;
  LODWORD(v53) = v13;
  v7 = 0;
LABEL_14:
  v14 = v6;
LABEL_16:
  v51 = v49 + 6;
  v52 = v49[9];
  v15 = v49[21];
  v16 = swift_task_alloc(32);
  *(v16 + 16) = v49 + 5;
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lFxq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lyxs5NeverOqd_0_Isgnrzr_xSgAb2ERsd__Ri_d_0_r_0_lIetMgnrzo_Tpq5Si_8CreateML12MLCheckpointVTg5(closure #1 in BidirectionalCollection.last(where:)specialized partial apply, v16, v7, v53, v51);
  v14;
  v16;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v52);
  v18 = v49[21];
  if (EnumTagSinglePayload == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v18, &demangling cache variable for type metadata for MLCheckpoint?);
    v51 = 0;
  }

  else
  {
    v51 = *(v18 + *(v49[9] + 24));
    outlined destroy of MLActivityClassifier.ModelParameters(v18, type metadata accessor for MLCheckpoint);
  }

  v53 = v49[7];
  v19 = v49[8];
  v20 = direct field offset for MLTrainingSession.delegate;
  v49[24] = direct field offset for MLTrainingSession.delegate;
  v21 = *(v19 + v20 + 24);
  v52 = *(v19 + v20 + 32);
  __swift_project_boxed_opaque_existential_0Tm((v19 + v20), v21);
  v50 = *(v46 + *(v47 + 28));
  v22 = (*(v52 + 32))(&v50, v21);
  LOBYTE(v21) = v23;
  v49[25] = v22;
  *(v49 + 256) = v23;
  v52 = *(v46 + *(v47 + 32));
  v24 = *(v46 + *(v47 + 28));
  v25 = lazy protocol witness table accessor for type MLProgress.Metric and conformance MLProgress.Metric();
  v49[26] = v25;
  v26 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for MLProgress.Metric, &type metadata for Any + 8, v25);
  v27 = v22;
  v28 = v53;
  specialized MLJob.reportProgress(completedUnitCount:phase:phaseUnitCount:metrics:)(v52, v24, v27, v21 & 1, v26, specialized MLJob.currentPhase.setter);
  v26;
  if ([*(v28 + direct field offset for MLJob.progress) isCancelled])
  {
    v29 = v49[21];
    v30 = v49[20];
    v31 = v49[19];
    v32 = v49[18];
    v33 = v49[15];
    v51 = v49[13];
    v53 = v49[11];
    v52 = v49[12];
    v29;
    v30;
    v31;
    v32;
    v33;
    v51;
    v52;
    v53;
    return (v49[1])();
  }

  else
  {
    v49[27] = direct field offset for MLTrainingSession.parameters;
    v49[28] = v51;
    v35 = v49[8];
    v36 = v49[23];
    v37 = (v35 + v49[24]);
    v38 = v35 + v49[22];
    v39 = v37[3];
    v40 = v37[4];
    v53 = __swift_project_boxed_opaque_existential_0Tm(v37, v39);
    v41 = *(*(v36 + 32) + v38);
    v42 = *(v40 + 48);
    v43 = (v42 + *v42);
    v44 = swift_task_alloc(v42[1]);
    v49[29] = v44;
    *v44 = v49;
    v44[1] = specialized MLTrainingSession.extractFeatures(job:);
    return v43(v41, v39, v40);
  }
}

{
  v74 = v0 | 0x1000000000000000;
  v73 = v1;
  v2 = *(v1 + 184);
  v3 = *(v1 + 176) + *(v1 + 64);
  v4 = *(v2 + 8);
  v5 = *(v4 + v3);
  v6 = __OFADD__(*(v1 + 240), v5);
  v7 = *(v1 + 240) + v5;
  if (v6)
  {
    BUG();
  }

  v72 = *(v1 + 224);
  v8 = *(v1 + 208);
  v9 = *(v1 + 256);
  v70 = *(v1 + 56);
  v68 = *(v1 + 200);
  *(v3 + v4) = v7;
  LODWORD(v71) = *(v3 + *(v2 + 7));
  v69 = v2;
  v10 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for MLProgress.Metric, &type metadata for Any + 8, v8);
  specialized MLJob.reportProgress(completedUnitCount:phase:phaseUnitCount:metrics:)(v7, v71, v68, v9 & 1, v10, specialized MLJob.currentPhase.setter);
  v10;
  v11 = *(v3 + *(v69 + 8));
  if (__OFSUB__(v11, v72))
  {
    BUG();
  }

  v12 = (v1 + 224);
  v13 = *(v1 + 216) + *(v1 + 64);
  if (v11 - v72 < *(*(*(v1 + 112) + 24) + v13) && (*(v1 + 257) & (*(v1 + 240) > 0)) == 0)
  {
    goto LABEL_7;
  }

  v72 = v11;
  v14 = *(v1 + 128);
  v15 = *(v1 + 104);
  v16 = *(v1 + 120);
  outlined init with copy of MLTrainingSessionParameters(v13, v16, type metadata accessor for MLTrainingSessionParameters);
  outlined init with take of URL?(v16, v15);
  if (__swift_getEnumTagSinglePayload(v15, 1, v14) == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(*(v1 + 104), &demangling cache variable for type metadata for URL?);
LABEL_7:
    v17 = *(v1 + 248);
    goto LABEL_8;
  }

  v29 = *(v1 + 184);
  v30 = *(v1 + 176) + *(v1 + 64);
  (*(*(v1 + 136) + 32))(*(v1 + 152), *(v1 + 104), *(v1 + 128));
  v31 = *(*(v29 + 28) + v30);
  v32 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<CVarArg>);
  v33 = swift_allocObject(v32, 112, 7);
  v33[2] = 2;
  v33[3] = 4;
  switch(v31)
  {
    case 0:
      v71 = 0x696C616974696E69;
      v66 = 0xEB0000000064657ALL;
      goto LABEL_22;
    case 1:
      v46 = 0x6974636172747865;
      goto LABEL_21;
    case 2:
      v66 = 0xE800000000000000;
      v45 = 0x676E696E69617274;
      goto LABEL_18;
    case 3:
      v46 = 0x697461756C617665;
LABEL_21:
      v71 = v46;
      v66 = 0xEA0000000000676ELL;
      goto LABEL_22;
    case 4:
      v66 = 0xEB00000000676E69;
      v45 = 0x636E657265666E69;
LABEL_18:
      v71 = v45;
LABEL_22:
      v69 = *(v1 + 248);
      v70 = *(v1 + 160);
      v68 = *(v1 + 64);
      v47 = *(v1 + 144);
      v33[7] = &type metadata for String;
      v33[8] = lazy protocol witness table accessor for type String and conformance String();
      v33[4] = v71;
      v33[5] = v66;
      v33[12] = &type metadata for Int;
      v33[13] = &protocol witness table for Int;
      v33[9] = v72;
      v48 = String.init(format:_:)(0xD000000000000012, ("ng a features checkpoint." + 0x8000000000000000), v33);
      v50 = v49;
      URL.appendingPathComponent(_:)(v48, v49);
      v50;
      specialized MLTrainingSession.saveFeatureExtractionCheckpoint(to:)(v47, &demangling cache variable for type metadata for MLTrainingSession<MLLinearRegressor>.Metadata, specialized MLTrainingSession.save());
      if (v69)
      {
        v72 = v69;
        v51 = *(v1 + 152);
        v52 = *(v1 + 128);
        v53 = *(*(v1 + 136) + 8);
        v53(*(v1 + 144), v52);
        v53(v51, v52);
        goto LABEL_24;
      }

      v59 = *(v1 + 160);
      if (__swift_getEnumTagSinglePayload(v59, 1, *(v1 + 72)) == 1)
      {
        v60 = *(v1 + 152);
        v61 = *(v1 + 128);
        v62 = *(*(v1 + 136) + 8);
        v62(*(v1 + 144), v61);
        v62(v60, v61);
        outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v59, &demangling cache variable for type metadata for MLCheckpoint?);
        v17 = 0;
        v12 = (v1 + 224);
      }

      else
      {
        v72 = *(v1 + 184);
        v69 = *(v1 + 152);
        v70 = *(v1 + 144);
        v71 = *(v1 + 136);
        v68 = *(v1 + 128);
        v63 = *(v1 + 96);
        v64 = *(v1 + 176) + *(v1 + 64);
        outlined init with take of MLClassifierMetrics(v59, v63, type metadata accessor for MLCheckpoint);
        PassthroughSubject.send(_:)(v63);
        outlined destroy of MLActivityClassifier.ModelParameters(v63, type metadata accessor for MLCheckpoint);
        v65 = *(v71 + 8);
        v65(v70, v68);
        v65(v69, v68);
        v12 = (v64 + *(v72 + 8));
        v17 = 0;
      }

      break;
  }

LABEL_8:
  if (*(v1 + 257) == 1)
  {
    v18 = (*(v1 + 192) + *(v1 + 64));
    v72 = v17;
    specialized MLTrainingSession.transition(to:)(2, &demangling cache variable for type metadata for MLTrainingSession<MLLinearRegressor>.Metadata);
    v19 = v18[3];
    v20 = v18[4];
    v67 = 2;
    __swift_project_boxed_opaque_existential_0Tm(v18, v19);
    v21 = v72;
    (*(v20 + 40))(&v67, v19, v20);
    if (v21)
    {
      v72 = v21;
LABEL_24:
      v54 = *(v1 + 168);
      v55 = *(v1 + 160);
      v56 = *(v1 + 152);
      v57 = *(v1 + 144);
      v58 = *(v1 + 120);
      v68 = *(v1 + 104);
      v69 = *(v1 + 88);
      v70 = *(v1 + 96);
      v54;
      v55;
      v56;
      v57;
      v58;
      v68;
      v70;
      v69;
      v28 = *(v1 + 8);
      return v28();
    }
  }

  else
  {
    v22 = *v12;
    if (![*(*(v1 + 56) + direct field offset for MLJob.progress) isCancelled])
    {
      *(v1 + 224) = v22;
      v34 = *(v1 + 64);
      v35 = *(v1 + 184);
      v36 = (v34 + *(v1 + 192));
      v37 = v34 + *(v1 + 176);
      v38 = v36[3];
      v39 = v36[4];
      v72 = __swift_project_boxed_opaque_existential_0Tm(v36, v38);
      v40 = *(*(v35 + 32) + v37);
      v41 = *(v39 + 48);
      v42 = (v41 + *v41);
      v43 = swift_task_alloc(v41[1]);
      *(v1 + 232) = v43;
      *v43 = v1;
      v43[1] = specialized MLTrainingSession.extractFeatures(job:);
      return v42(v40, v38, v39);
    }
  }

  v23 = *(v1 + 168);
  v24 = *(v1 + 160);
  v25 = *(v1 + 152);
  v26 = *(v1 + 144);
  v27 = *(v1 + 120);
  v70 = *(v1 + 104);
  v72 = *(v1 + 88);
  v69 = *(v1 + 96);
  v23;
  v24;
  v25;
  v26;
  v27;
  v70;
  v69;
  v72;
  v28 = *(v1 + 8);
  return v28();
}

{
  v55 = v0 | 0x1000000000000000;
  v54 = v1;
  v2 = v1[8];
  v3 = *(*v2 + 112);
  v1[22] = v3;
  v4 = v3 + v2;
  swift_beginAccess(v4, (v1 + 2), 1, 0);
  v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLImageClassifier>.Metadata);
  v1[23] = v5;
  v47 = v5;
  v46 = v4;
  v6 = *(*(v5 + 44) + v4);
  v1[5] = v6;
  v7 = *(v6 + 16);
  v49 = v1;
  if (v7)
  {
    v53 = v1[9];
    v52 = v1[10];
    v51 = (v6 + ((*(v52 + 80) + 32) & ~*(v52 + 80)));

    v48 = v6;
    while (1)
    {
      if (v7 > *(v6 + 16))
      {
        BUG();
      }

      --v7;
      v8 = v1[11];
      outlined init with copy of MLTrainingSessionParameters(v51 + v7 * *(v52 + 72), v8, type metadata accessor for MLCheckpoint);
      switch(*(v8 + *(v53 + 5)))
      {
        case 0:
          v9 = 0xEB0000000064657ALL;
          v10 = 0x696C616974696E69;
          goto LABEL_9;
        case 1:
          v45 = v1[11];
          110;
          outlined destroy of MLActivityClassifier.ModelParameters(v45, type metadata accessor for MLCheckpoint);
          LODWORD(v53) = 0;
          goto LABEL_14;
        case 2:
          v9 = 0xE800000000000000;
          v10 = 0x676E696E69617274;
          goto LABEL_9;
        case 3:
          v9 = 0xEA0000000000676ELL;
          v10 = 0x697461756C617665;
          goto LABEL_9;
        case 4:
          v9 = &loc_308EF - 0x14FFFFFFFF9B9A86;
          v10 = 0x636E657265666E69;
LABEL_9:
          v11 = v1[11];
          v12 = _stringCompareWithSmolCheck(_:_:expecting:)(v10, v9, 0x6974636172747865, 0xEA0000000000676ELL, 0);
          v9;
          v13 = outlined destroy of MLActivityClassifier.ModelParameters(v11, type metadata accessor for MLCheckpoint);
          if (v12)
          {
            LODWORD(v53) = 0;
            v14 = v48;
            goto LABEL_16;
          }

          v1 = v49;
          v6 = v48;
          if (!v7)
          {
            goto LABEL_13;
          }

          break;
      }
    }
  }

LABEL_13:
  LOBYTE(v13) = 1;
  LODWORD(v53) = v13;
  v7 = 0;
LABEL_14:
  v14 = v6;
LABEL_16:
  v51 = v49 + 6;
  v52 = v49[9];
  v15 = v49[21];
  v16 = swift_task_alloc(32);
  *(v16 + 16) = v49 + 5;
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lFxq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lyxs5NeverOqd_0_Isgnrzr_xSgAb2ERsd__Ri_d_0_r_0_lIetMgnrzo_Tpq5Si_8CreateML12MLCheckpointVTg5(partial apply for specialized closure #1 in BidirectionalCollection.last(where:), v16, v7, v53, v51);
  v14;
  v16;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v52);
  v18 = v49[21];
  if (EnumTagSinglePayload == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v18, &demangling cache variable for type metadata for MLCheckpoint?);
    v51 = 0;
  }

  else
  {
    v51 = *(v18 + *(v49[9] + 24));
    outlined destroy of MLActivityClassifier.ModelParameters(v18, type metadata accessor for MLCheckpoint);
  }

  v53 = v49[7];
  v19 = v49[8];
  v20 = direct field offset for MLTrainingSession.delegate;
  v49[24] = direct field offset for MLTrainingSession.delegate;
  v21 = *(v19 + v20 + 24);
  v52 = *(v19 + v20 + 32);
  __swift_project_boxed_opaque_existential_0Tm((v19 + v20), v21);
  v50 = *(v46 + *(v47 + 28));
  v22 = (*(v52 + 32))(&v50, v21);
  LOBYTE(v21) = v23;
  v49[25] = v22;
  *(v49 + 256) = v23;
  v52 = *(v46 + *(v47 + 32));
  v24 = *(v46 + *(v47 + 28));
  v25 = lazy protocol witness table accessor for type MLProgress.Metric and conformance MLProgress.Metric();
  v49[26] = v25;
  v26 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for MLProgress.Metric, &type metadata for Any + 8, v25);
  v27 = v22;
  v28 = v53;
  specialized MLJob.reportProgress(completedUnitCount:phase:phaseUnitCount:metrics:)(v52, v24, v27, v21 & 1, v26, specialized MLJob.currentPhase.setter);
  v26;
  if ([*(v28 + direct field offset for MLJob.progress) isCancelled])
  {
    v29 = v49[21];
    v30 = v49[20];
    v31 = v49[19];
    v32 = v49[18];
    v33 = v49[15];
    v51 = v49[13];
    v53 = v49[11];
    v52 = v49[12];
    v29;
    v30;
    v31;
    v32;
    v33;
    v51;
    v52;
    v53;
    return (v49[1])();
  }

  else
  {
    v49[27] = direct field offset for MLTrainingSession.parameters;
    v49[28] = v51;
    v35 = v49[8];
    v36 = v49[23];
    v37 = (v35 + v49[24]);
    v38 = v35 + v49[22];
    v39 = v37[3];
    v40 = v37[4];
    v53 = __swift_project_boxed_opaque_existential_0Tm(v37, v39);
    v41 = *(*(v36 + 32) + v38);
    v42 = *(v40 + 48);
    v43 = (v42 + *v42);
    v44 = swift_task_alloc(v42[1]);
    v49[29] = v44;
    *v44 = v49;
    v44[1] = specialized MLTrainingSession.extractFeatures(job:);
    return v43(v41, v39, v40);
  }
}

{
  v74 = v0 | 0x1000000000000000;
  v73 = v1;
  v2 = *(v1 + 184);
  v3 = *(v1 + 176) + *(v1 + 64);
  v4 = *(v2 + 8);
  v5 = *(v4 + v3);
  v6 = __OFADD__(*(v1 + 240), v5);
  v7 = *(v1 + 240) + v5;
  if (v6)
  {
    BUG();
  }

  v72 = *(v1 + 224);
  v8 = *(v1 + 208);
  v9 = *(v1 + 256);
  v70 = *(v1 + 56);
  v68 = *(v1 + 200);
  *(v3 + v4) = v7;
  LODWORD(v71) = *(v3 + *(v2 + 7));
  v69 = v2;
  v10 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for MLProgress.Metric, &type metadata for Any + 8, v8);
  specialized MLJob.reportProgress(completedUnitCount:phase:phaseUnitCount:metrics:)(v7, v71, v68, v9 & 1, v10, specialized MLJob.currentPhase.setter);
  v10;
  v11 = *(v3 + *(v69 + 8));
  if (__OFSUB__(v11, v72))
  {
    BUG();
  }

  v12 = (v1 + 224);
  v13 = *(v1 + 216) + *(v1 + 64);
  if (v11 - v72 < *(*(*(v1 + 112) + 24) + v13) && (*(v1 + 257) & (*(v1 + 240) > 0)) == 0)
  {
    goto LABEL_7;
  }

  v72 = v11;
  v14 = *(v1 + 128);
  v15 = *(v1 + 104);
  v16 = *(v1 + 120);
  outlined init with copy of MLTrainingSessionParameters(v13, v16, type metadata accessor for MLTrainingSessionParameters);
  outlined init with take of URL?(v16, v15);
  if (__swift_getEnumTagSinglePayload(v15, 1, v14) == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(*(v1 + 104), &demangling cache variable for type metadata for URL?);
LABEL_7:
    v17 = *(v1 + 248);
    goto LABEL_8;
  }

  v29 = *(v1 + 184);
  v30 = *(v1 + 176) + *(v1 + 64);
  (*(*(v1 + 136) + 32))(*(v1 + 152), *(v1 + 104), *(v1 + 128));
  v31 = *(*(v29 + 28) + v30);
  v32 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<CVarArg>);
  v33 = swift_allocObject(v32, 112, 7);
  v33[2] = 2;
  v33[3] = 4;
  switch(v31)
  {
    case 0:
      v71 = 0x696C616974696E69;
      v66 = 0xEB0000000064657ALL;
      goto LABEL_22;
    case 1:
      v46 = 0x6974636172747865;
      goto LABEL_21;
    case 2:
      v66 = 0xE800000000000000;
      v45 = 0x676E696E69617274;
      goto LABEL_18;
    case 3:
      v46 = 0x697461756C617665;
LABEL_21:
      v71 = v46;
      v66 = 0xEA0000000000676ELL;
      goto LABEL_22;
    case 4:
      v66 = 0xEB00000000676E69;
      v45 = 0x636E657265666E69;
LABEL_18:
      v71 = v45;
LABEL_22:
      v69 = *(v1 + 248);
      v70 = *(v1 + 160);
      v68 = *(v1 + 64);
      v47 = *(v1 + 144);
      v33[7] = &type metadata for String;
      v33[8] = lazy protocol witness table accessor for type String and conformance String();
      v33[4] = v71;
      v33[5] = v66;
      v33[12] = &type metadata for Int;
      v33[13] = &protocol witness table for Int;
      v33[9] = v72;
      v48 = String.init(format:_:)(0xD000000000000012, ("ng a features checkpoint." + 0x8000000000000000), v33);
      v50 = v49;
      URL.appendingPathComponent(_:)(v48, v49);
      v50;
      specialized MLTrainingSession.saveFeatureExtractionCheckpoint(to:)(v47, &demangling cache variable for type metadata for MLTrainingSession<MLImageClassifier>.Metadata, specialized MLTrainingSession.save());
      if (v69)
      {
        v72 = v69;
        v51 = *(v1 + 152);
        v52 = *(v1 + 128);
        v53 = *(*(v1 + 136) + 8);
        v53(*(v1 + 144), v52);
        v53(v51, v52);
        goto LABEL_24;
      }

      v59 = *(v1 + 160);
      if (__swift_getEnumTagSinglePayload(v59, 1, *(v1 + 72)) == 1)
      {
        v60 = *(v1 + 152);
        v61 = *(v1 + 128);
        v62 = *(*(v1 + 136) + 8);
        v62(*(v1 + 144), v61);
        v62(v60, v61);
        outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v59, &demangling cache variable for type metadata for MLCheckpoint?);
        v17 = 0;
        v12 = (v1 + 224);
      }

      else
      {
        v72 = *(v1 + 184);
        v69 = *(v1 + 152);
        v70 = *(v1 + 144);
        v71 = *(v1 + 136);
        v68 = *(v1 + 128);
        v63 = *(v1 + 96);
        v64 = *(v1 + 176) + *(v1 + 64);
        outlined init with take of MLClassifierMetrics(v59, v63, type metadata accessor for MLCheckpoint);
        PassthroughSubject.send(_:)(v63);
        outlined destroy of MLActivityClassifier.ModelParameters(v63, type metadata accessor for MLCheckpoint);
        v65 = *(v71 + 8);
        v65(v70, v68);
        v65(v69, v68);
        v12 = (v64 + *(v72 + 8));
        v17 = 0;
      }

      break;
  }

LABEL_8:
  if (*(v1 + 257) == 1)
  {
    v18 = (*(v1 + 192) + *(v1 + 64));
    v72 = v17;
    specialized MLTrainingSession.transition(to:)(2, &demangling cache variable for type metadata for MLTrainingSession<MLImageClassifier>.Metadata);
    v19 = v18[3];
    v20 = v18[4];
    v67 = 2;
    __swift_project_boxed_opaque_existential_0Tm(v18, v19);
    v21 = v72;
    (*(v20 + 40))(&v67, v19, v20);
    if (v21)
    {
      v72 = v21;
LABEL_24:
      v54 = *(v1 + 168);
      v55 = *(v1 + 160);
      v56 = *(v1 + 152);
      v57 = *(v1 + 144);
      v58 = *(v1 + 120);
      v68 = *(v1 + 104);
      v69 = *(v1 + 88);
      v70 = *(v1 + 96);
      v54;
      v55;
      v56;
      v57;
      v58;
      v68;
      v70;
      v69;
      v28 = *(v1 + 8);
      return v28();
    }
  }

  else
  {
    v22 = *v12;
    if (![*(*(v1 + 56) + direct field offset for MLJob.progress) isCancelled])
    {
      *(v1 + 224) = v22;
      v34 = *(v1 + 64);
      v35 = *(v1 + 184);
      v36 = (v34 + *(v1 + 192));
      v37 = v34 + *(v1 + 176);
      v38 = v36[3];
      v39 = v36[4];
      v72 = __swift_project_boxed_opaque_existential_0Tm(v36, v38);
      v40 = *(*(v35 + 32) + v37);
      v41 = *(v39 + 48);
      v42 = (v41 + *v41);
      v43 = swift_task_alloc(v41[1]);
      *(v1 + 232) = v43;
      *v43 = v1;
      v43[1] = specialized MLTrainingSession.extractFeatures(job:);
      return v42(v40, v38, v39);
    }
  }

  v23 = *(v1 + 168);
  v24 = *(v1 + 160);
  v25 = *(v1 + 152);
  v26 = *(v1 + 144);
  v27 = *(v1 + 120);
  v70 = *(v1 + 104);
  v72 = *(v1 + 88);
  v69 = *(v1 + 96);
  v23;
  v24;
  v25;
  v26;
  v27;
  v70;
  v69;
  v72;
  v28 = *(v1 + 8);
  return v28();
}

uint64_t specialized MLTrainingSession.extractFeatures(job:)(uint64_t a1, char a2)
{
  v4 = *(*v3 + 232);
  v5 = *v3;
  *(v5 + 240) = a1;
  *(v5 + 257) = a2 & 1;
  *(v5 + 248) = v2;
  v4;
  if (!v2)
  {
    return swift_task_switch(specialized MLTrainingSession.extractFeatures(job:), 0, 0);
  }

  v6 = *(v5 + 160);
  v7 = *(v5 + 152);
  v13 = *(v5 + 144);
  v12 = *(v5 + 120);
  v11 = *(v5 + 112);
  v10 = *(v5 + 72);
  v8 = *(v5 + 88);
  *(v5 + 168);
  v6;
  v7;
  v13;
  v12;
  v11;
  v8;
  v10;
  return (*(v5 + 8))();
}

{
  v4 = *(*v3 + 232);
  v5 = *v3;
  *(v5 + 240) = a1;
  *(v5 + 257) = a2 & 1;
  *(v5 + 248) = v2;
  v4;
  if (!v2)
  {
    return swift_task_switch(specialized MLTrainingSession.extractFeatures(job:), 0, 0);
  }

  v6 = *(v5 + 160);
  v7 = *(v5 + 152);
  v13 = *(v5 + 144);
  v12 = *(v5 + 120);
  v11 = *(v5 + 112);
  v10 = *(v5 + 72);
  v8 = *(v5 + 88);
  *(v5 + 168);
  v6;
  v7;
  v13;
  v12;
  v11;
  v8;
  v10;
  return (*(v5 + 8))();
}

{
  v4 = *(*v3 + 232);
  v5 = *v3;
  *(v5 + 240) = a1;
  *(v5 + 257) = a2 & 1;
  *(v5 + 248) = v2;
  v4;
  if (!v2)
  {
    return swift_task_switch(specialized MLTrainingSession.extractFeatures(job:), 0, 0);
  }

  v6 = *(v5 + 160);
  v7 = *(v5 + 152);
  v13 = *(v5 + 144);
  v12 = *(v5 + 120);
  v11 = *(v5 + 112);
  v10 = *(v5 + 72);
  v8 = *(v5 + 88);
  *(v5 + 168);
  v6;
  v7;
  v13;
  v12;
  v11;
  v8;
  v10;
  return (*(v5 + 8))();
}

{
  v4 = *(*v3 + 232);
  v5 = *v3;
  *(v5 + 240) = a1;
  *(v5 + 257) = a2 & 1;
  *(v5 + 248) = v2;
  v4;
  if (!v2)
  {
    return swift_task_switch(specialized MLTrainingSession.extractFeatures(job:), 0, 0);
  }

  v6 = *(v5 + 160);
  v7 = *(v5 + 152);
  v13 = *(v5 + 144);
  v12 = *(v5 + 120);
  v11 = *(v5 + 112);
  v10 = *(v5 + 72);
  v8 = *(v5 + 88);
  *(v5 + 168);
  v6;
  v7;
  v13;
  v12;
  v11;
  v8;
  v10;
  return (*(v5 + 8))();
}

{
  v4 = *(*v3 + 232);
  v5 = *v3;
  *(v5 + 240) = a1;
  *(v5 + 257) = a2 & 1;
  *(v5 + 248) = v2;
  v4;
  if (!v2)
  {
    return swift_task_switch(specialized MLTrainingSession.extractFeatures(job:), 0, 0);
  }

  v6 = *(v5 + 160);
  v7 = *(v5 + 152);
  v13 = *(v5 + 144);
  v12 = *(v5 + 120);
  v11 = *(v5 + 112);
  v10 = *(v5 + 72);
  v8 = *(v5 + 88);
  *(v5 + 168);
  v6;
  v7;
  v13;
  v12;
  v11;
  v8;
  v10;
  return (*(v5 + 8))();
}

{
  v4 = *(*v3 + 232);
  v5 = *v3;
  *(v5 + 240) = a1;
  *(v5 + 257) = a2 & 1;
  *(v5 + 248) = v2;
  v4;
  if (!v2)
  {
    return swift_task_switch(specialized MLTrainingSession.extractFeatures(job:), 0, 0);
  }

  v6 = *(v5 + 160);
  v7 = *(v5 + 152);
  v13 = *(v5 + 144);
  v12 = *(v5 + 120);
  v11 = *(v5 + 112);
  v10 = *(v5 + 72);
  v8 = *(v5 + 88);
  *(v5 + 168);
  v6;
  v7;
  v13;
  v12;
  v11;
  v8;
  v10;
  return (*(v5 + 8))();
}

{
  v4 = *(*v3 + 232);
  v5 = *v3;
  *(v5 + 240) = a1;
  *(v5 + 257) = a2 & 1;
  *(v5 + 248) = v2;
  v4;
  if (!v2)
  {
    return swift_task_switch(specialized MLTrainingSession.extractFeatures(job:), 0, 0);
  }

  v6 = *(v5 + 160);
  v7 = *(v5 + 152);
  v13 = *(v5 + 144);
  v12 = *(v5 + 120);
  v11 = *(v5 + 104);
  v10 = *(v5 + 88);
  v8 = *(v5 + 96);
  *(v5 + 168);
  v6;
  v7;
  v13;
  v12;
  v11;
  v8;
  v10;
  return (*(v5 + 8))();
}

{
  v4 = *(*v3 + 232);
  v5 = *v3;
  *(v5 + 240) = a1;
  *(v5 + 257) = a2 & 1;
  *(v5 + 248) = v2;
  v4;
  if (!v2)
  {
    return swift_task_switch(specialized MLTrainingSession.extractFeatures(job:), 0, 0);
  }

  v6 = *(v5 + 160);
  v7 = *(v5 + 152);
  v13 = *(v5 + 144);
  v12 = *(v5 + 120);
  v11 = *(v5 + 104);
  v10 = *(v5 + 88);
  v8 = *(v5 + 96);
  *(v5 + 168);
  v6;
  v7;
  v13;
  v12;
  v11;
  v8;
  v10;
  return (*(v5 + 8))();
}

{
  v4 = *(*v3 + 232);
  v5 = *v3;
  *(v5 + 240) = a1;
  *(v5 + 257) = a2 & 1;
  *(v5 + 248) = v2;
  v4;
  if (!v2)
  {
    return swift_task_switch(specialized MLTrainingSession.extractFeatures(job:), 0, 0);
  }

  v6 = *(v5 + 160);
  v7 = *(v5 + 152);
  v13 = *(v5 + 144);
  v12 = *(v5 + 120);
  v11 = *(v5 + 104);
  v10 = *(v5 + 88);
  v8 = *(v5 + 96);
  *(v5 + 168);
  v6;
  v7;
  v13;
  v12;
  v11;
  v8;
  v10;
  return (*(v5 + 8))();
}

{
  v4 = *(*v3 + 232);
  v5 = *v3;
  *(v5 + 240) = a1;
  *(v5 + 257) = a2 & 1;
  *(v5 + 248) = v2;
  v4;
  if (!v2)
  {
    return swift_task_switch(specialized MLTrainingSession.extractFeatures(job:), 0, 0);
  }

  v6 = *(v5 + 160);
  v7 = *(v5 + 152);
  v13 = *(v5 + 144);
  v12 = *(v5 + 120);
  v11 = *(v5 + 104);
  v10 = *(v5 + 88);
  v8 = *(v5 + 96);
  *(v5 + 168);
  v6;
  v7;
  v13;
  v12;
  v11;
  v8;
  v10;
  return (*(v5 + 8))();
}

{
  v4 = *(*v3 + 232);
  v5 = *v3;
  *(v5 + 240) = a1;
  *(v5 + 257) = a2 & 1;
  *(v5 + 248) = v2;
  v4;
  if (!v2)
  {
    return swift_task_switch(specialized MLTrainingSession.extractFeatures(job:), 0, 0);
  }

  v6 = *(v5 + 160);
  v7 = *(v5 + 152);
  v13 = *(v5 + 144);
  v12 = *(v5 + 120);
  v11 = *(v5 + 104);
  v10 = *(v5 + 88);
  v8 = *(v5 + 96);
  *(v5 + 168);
  v6;
  v7;
  v13;
  v12;
  v11;
  v8;
  v10;
  return (*(v5 + 8))();
}

{
  v4 = *(*v3 + 232);
  v5 = *v3;
  *(v5 + 240) = a1;
  *(v5 + 257) = a2 & 1;
  *(v5 + 248) = v2;
  v4;
  if (!v2)
  {
    return swift_task_switch(specialized MLTrainingSession.extractFeatures(job:), 0, 0);
  }

  v6 = *(v5 + 160);
  v7 = *(v5 + 152);
  v13 = *(v5 + 144);
  v12 = *(v5 + 120);
  v11 = *(v5 + 104);
  v10 = *(v5 + 88);
  v8 = *(v5 + 96);
  *(v5 + 168);
  v6;
  v7;
  v13;
  v12;
  v11;
  v8;
  v10;
  return (*(v5 + 8))();
}

{
  v4 = *(*v3 + 232);
  v5 = *v3;
  *(v5 + 240) = a1;
  *(v5 + 257) = a2 & 1;
  *(v5 + 248) = v2;
  v4;
  if (!v2)
  {
    return swift_task_switch(specialized MLTrainingSession.extractFeatures(job:), 0, 0);
  }

  v6 = *(v5 + 160);
  v7 = *(v5 + 152);
  v13 = *(v5 + 144);
  v12 = *(v5 + 120);
  v11 = *(v5 + 104);
  v10 = *(v5 + 88);
  v8 = *(v5 + 96);
  *(v5 + 168);
  v6;
  v7;
  v13;
  v12;
  v11;
  v8;
  v10;
  return (*(v5 + 8))();
}

{
  v4 = *(*v3 + 232);
  v5 = *v3;
  *(v5 + 240) = a1;
  *(v5 + 257) = a2 & 1;
  *(v5 + 248) = v2;
  v4;
  if (!v2)
  {
    return swift_task_switch(specialized MLTrainingSession.extractFeatures(job:), 0, 0);
  }

  v6 = *(v5 + 160);
  v7 = *(v5 + 152);
  v13 = *(v5 + 144);
  v12 = *(v5 + 120);
  v11 = *(v5 + 104);
  v10 = *(v5 + 88);
  v8 = *(v5 + 96);
  *(v5 + 168);
  v6;
  v7;
  v13;
  v12;
  v11;
  v8;
  v10;
  return (*(v5 + 8))();
}

{
  v4 = *(*v3 + 232);
  v5 = *v3;
  *(v5 + 240) = a1;
  *(v5 + 257) = a2 & 1;
  *(v5 + 248) = v2;
  v4;
  if (!v2)
  {
    return swift_task_switch(specialized MLTrainingSession.extractFeatures(job:), 0, 0);
  }

  v6 = *(v5 + 160);
  v7 = *(v5 + 152);
  v13 = *(v5 + 144);
  v12 = *(v5 + 120);
  v11 = *(v5 + 104);
  v10 = *(v5 + 88);
  v8 = *(v5 + 96);
  *(v5 + 168);
  v6;
  v7;
  v13;
  v12;
  v11;
  v8;
  v10;
  return (*(v5 + 8))();
}

{
  v4 = *(*v3 + 232);
  v5 = *v3;
  *(v5 + 240) = a1;
  *(v5 + 257) = a2 & 1;
  *(v5 + 248) = v2;
  v4;
  if (!v2)
  {
    return swift_task_switch(specialized MLTrainingSession.extractFeatures(job:), 0, 0);
  }

  v6 = *(v5 + 160);
  v7 = *(v5 + 152);
  v13 = *(v5 + 144);
  v12 = *(v5 + 120);
  v11 = *(v5 + 104);
  v10 = *(v5 + 88);
  v8 = *(v5 + 96);
  *(v5 + 168);
  v6;
  v7;
  v13;
  v12;
  v11;
  v8;
  v10;
  return (*(v5 + 8))();
}

{
  v4 = *(*v3 + 232);
  v5 = *v3;
  *(v5 + 240) = a1;
  *(v5 + 257) = a2 & 1;
  *(v5 + 248) = v2;
  v4;
  if (!v2)
  {
    return swift_task_switch(specialized MLTrainingSession.extractFeatures(job:), 0, 0);
  }

  v6 = *(v5 + 160);
  v7 = *(v5 + 152);
  v13 = *(v5 + 144);
  v12 = *(v5 + 120);
  v11 = *(v5 + 104);
  v10 = *(v5 + 88);
  v8 = *(v5 + 96);
  *(v5 + 168);
  v6;
  v7;
  v13;
  v12;
  v11;
  v8;
  v10;
  return (*(v5 + 8))();
}

uint64_t specialized MLTrainingSession.train(job:)(uint64_t a1)
{
  v2[8] = v1;
  v2[7] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for URL?);
  v2[9] = swift_task_alloc((*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for MLTrainingSessionParameters(0);
  v2[10] = v4;
  v2[11] = swift_task_alloc((*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for URL(0);
  v2[12] = v5;
  v6 = *(v5 - 8);
  v2[13] = v6;
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2[14] = swift_task_alloc(v7);
  v2[15] = swift_task_alloc(v7);
  v2[16] = swift_task_alloc(v7);
  v8 = type metadata accessor for MLCheckpoint(0);
  v2[17] = v8;
  v9 = *(v8 - 8);
  v2[18] = v9;
  v10 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2[19] = swift_task_alloc(v10);
  v2[20] = swift_task_alloc(v10);
  v11 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLCheckpoint?);
  v2[21] = swift_task_alloc((*(*(v11 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  return swift_task_switch(specialized MLTrainingSession.train(job:), 0, 0);
}

{
  v2[8] = v1;
  v2[7] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for URL?);
  v2[9] = swift_task_alloc((*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for MLTrainingSessionParameters(0);
  v2[10] = v4;
  v2[11] = swift_task_alloc((*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for URL(0);
  v2[12] = v5;
  v6 = *(v5 - 8);
  v2[13] = v6;
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2[14] = swift_task_alloc(v7);
  v2[15] = swift_task_alloc(v7);
  v2[16] = swift_task_alloc(v7);
  v8 = type metadata accessor for MLCheckpoint(0);
  v2[17] = v8;
  v9 = *(v8 - 8);
  v2[18] = v9;
  v10 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2[19] = swift_task_alloc(v10);
  v2[20] = swift_task_alloc(v10);
  v11 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLCheckpoint?);
  v2[21] = swift_task_alloc((*(*(v11 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  return swift_task_switch(specialized MLTrainingSession.train(job:), 0, 0);
}

{
  v2[8] = v1;
  v2[7] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for URL?);
  v2[9] = swift_task_alloc((*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for MLTrainingSessionParameters(0);
  v2[10] = v4;
  v2[11] = swift_task_alloc((*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for URL(0);
  v2[12] = v5;
  v6 = *(v5 - 8);
  v2[13] = v6;
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2[14] = swift_task_alloc(v7);
  v2[15] = swift_task_alloc(v7);
  v2[16] = swift_task_alloc(v7);
  v8 = type metadata accessor for MLCheckpoint(0);
  v2[17] = v8;
  v9 = *(v8 - 8);
  v2[18] = v9;
  v10 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2[19] = swift_task_alloc(v10);
  v2[20] = swift_task_alloc(v10);
  v11 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLCheckpoint?);
  v2[21] = swift_task_alloc((*(*(v11 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  return swift_task_switch(specialized MLTrainingSession.train(job:), 0, 0);
}

{
  v2[8] = v1;
  v2[7] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for URL?);
  v2[9] = swift_task_alloc((*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for MLTrainingSessionParameters(0);
  v2[10] = v4;
  v2[11] = swift_task_alloc((*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for URL(0);
  v2[12] = v5;
  v6 = *(v5 - 8);
  v2[13] = v6;
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2[14] = swift_task_alloc(v7);
  v2[15] = swift_task_alloc(v7);
  v2[16] = swift_task_alloc(v7);
  v8 = type metadata accessor for MLCheckpoint(0);
  v2[17] = v8;
  v9 = *(v8 - 8);
  v2[18] = v9;
  v10 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2[19] = swift_task_alloc(v10);
  v2[20] = swift_task_alloc(v10);
  v11 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLCheckpoint?);
  v2[21] = swift_task_alloc((*(*(v11 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  return swift_task_switch(specialized MLTrainingSession.train(job:), 0, 0);
}

{
  v2[8] = v1;
  v2[7] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for URL?);
  v2[9] = swift_task_alloc((*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for MLTrainingSessionParameters(0);
  v2[10] = v4;
  v2[11] = swift_task_alloc((*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for URL(0);
  v2[12] = v5;
  v6 = *(v5 - 8);
  v2[13] = v6;
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2[14] = swift_task_alloc(v7);
  v2[15] = swift_task_alloc(v7);
  v2[16] = swift_task_alloc(v7);
  v8 = type metadata accessor for MLCheckpoint(0);
  v2[17] = v8;
  v9 = *(v8 - 8);
  v2[18] = v9;
  v10 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2[19] = swift_task_alloc(v10);
  v2[20] = swift_task_alloc(v10);
  v11 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLCheckpoint?);
  v2[21] = swift_task_alloc((*(*(v11 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  return swift_task_switch(specialized MLTrainingSession.train(job:), 0, 0);
}

{
  v2[8] = v1;
  v2[7] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for URL?);
  v2[9] = swift_task_alloc((*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for MLTrainingSessionParameters(0);
  v2[10] = v4;
  v2[11] = swift_task_alloc((*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for URL(0);
  v2[12] = v5;
  v6 = *(v5 - 8);
  v2[13] = v6;
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2[14] = swift_task_alloc(v7);
  v2[15] = swift_task_alloc(v7);
  v2[16] = swift_task_alloc(v7);
  v8 = type metadata accessor for MLCheckpoint(0);
  v2[17] = v8;
  v9 = *(v8 - 8);
  v2[18] = v9;
  v10 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2[19] = swift_task_alloc(v10);
  v2[20] = swift_task_alloc(v10);
  v11 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLCheckpoint?);
  v2[21] = swift_task_alloc((*(*(v11 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  return swift_task_switch(specialized MLTrainingSession.train(job:), 0, 0);
}

{
  v2[8] = v1;
  v2[7] = a1;
  v3 = type metadata accessor for MLCheckpoint(0);
  v2[9] = v3;
  v4 = *(v3 - 8);
  v2[10] = v4;
  v5 = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2[11] = swift_task_alloc(v5);
  v2[12] = swift_task_alloc(v5);
  v6 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for URL?);
  v2[13] = swift_task_alloc((*(*(v6 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for MLTrainingSessionParameters(0);
  v2[14] = v7;
  v2[15] = swift_task_alloc((*(*(v7 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for URL(0);
  v2[16] = v8;
  v9 = *(v8 - 8);
  v2[17] = v9;
  v10 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2[18] = swift_task_alloc(v10);
  v2[19] = swift_task_alloc(v10);
  v2[20] = swift_task_alloc(v10);
  v11 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLCheckpoint?);
  v2[21] = swift_task_alloc((*(*(v11 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  return swift_task_switch(specialized MLTrainingSession.train(job:), 0, 0);
}

{
  v2[8] = v1;
  v2[7] = a1;
  v3 = type metadata accessor for MLCheckpoint(0);
  v2[9] = v3;
  v4 = *(v3 - 8);
  v2[10] = v4;
  v5 = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2[11] = swift_task_alloc(v5);
  v2[12] = swift_task_alloc(v5);
  v6 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for URL?);
  v2[13] = swift_task_alloc((*(*(v6 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for MLTrainingSessionParameters(0);
  v2[14] = v7;
  v2[15] = swift_task_alloc((*(*(v7 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for URL(0);
  v2[16] = v8;
  v9 = *(v8 - 8);
  v2[17] = v9;
  v10 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2[18] = swift_task_alloc(v10);
  v2[19] = swift_task_alloc(v10);
  v2[20] = swift_task_alloc(v10);
  v11 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLCheckpoint?);
  v2[21] = swift_task_alloc((*(*(v11 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  return swift_task_switch(specialized MLTrainingSession.train(job:), 0, 0);
}

{
  v2[8] = v1;
  v2[7] = a1;
  v3 = type metadata accessor for MLCheckpoint(0);
  v2[9] = v3;
  v4 = *(v3 - 8);
  v2[10] = v4;
  v5 = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2[11] = swift_task_alloc(v5);
  v2[12] = swift_task_alloc(v5);
  v6 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for URL?);
  v2[13] = swift_task_alloc((*(*(v6 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for MLTrainingSessionParameters(0);
  v2[14] = v7;
  v2[15] = swift_task_alloc((*(*(v7 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for URL(0);
  v2[16] = v8;
  v9 = *(v8 - 8);
  v2[17] = v9;
  v10 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2[18] = swift_task_alloc(v10);
  v2[19] = swift_task_alloc(v10);
  v2[20] = swift_task_alloc(v10);
  v11 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLCheckpoint?);
  v2[21] = swift_task_alloc((*(*(v11 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  return swift_task_switch(specialized MLTrainingSession.train(job:), 0, 0);
}

{
  v2[8] = v1;
  v2[7] = a1;
  v3 = type metadata accessor for MLCheckpoint(0);
  v2[9] = v3;
  v4 = *(v3 - 8);
  v2[10] = v4;
  v5 = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2[11] = swift_task_alloc(v5);
  v2[12] = swift_task_alloc(v5);
  v6 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for URL?);
  v2[13] = swift_task_alloc((*(*(v6 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for MLTrainingSessionParameters(0);
  v2[14] = v7;
  v2[15] = swift_task_alloc((*(*(v7 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for URL(0);
  v2[16] = v8;
  v9 = *(v8 - 8);
  v2[17] = v9;
  v10 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2[18] = swift_task_alloc(v10);
  v2[19] = swift_task_alloc(v10);
  v2[20] = swift_task_alloc(v10);
  v11 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLCheckpoint?);
  v2[21] = swift_task_alloc((*(*(v11 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  return swift_task_switch(specialized MLTrainingSession.train(job:), 0, 0);
}

{
  v2[8] = v1;
  v2[7] = a1;
  v3 = type metadata accessor for MLCheckpoint(0);
  v2[9] = v3;
  v4 = *(v3 - 8);
  v2[10] = v4;
  v5 = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2[11] = swift_task_alloc(v5);
  v2[12] = swift_task_alloc(v5);
  v6 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for URL?);
  v2[13] = swift_task_alloc((*(*(v6 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for MLTrainingSessionParameters(0);
  v2[14] = v7;
  v2[15] = swift_task_alloc((*(*(v7 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for URL(0);
  v2[16] = v8;
  v9 = *(v8 - 8);
  v2[17] = v9;
  v10 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2[18] = swift_task_alloc(v10);
  v2[19] = swift_task_alloc(v10);
  v2[20] = swift_task_alloc(v10);
  v11 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLCheckpoint?);
  v2[21] = swift_task_alloc((*(*(v11 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  return swift_task_switch(specialized MLTrainingSession.train(job:), 0, 0);
}

{
  v2[8] = v1;
  v2[7] = a1;
  v3 = type metadata accessor for MLCheckpoint(0);
  v2[9] = v3;
  v4 = *(v3 - 8);
  v2[10] = v4;
  v5 = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2[11] = swift_task_alloc(v5);
  v2[12] = swift_task_alloc(v5);
  v6 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for URL?);
  v2[13] = swift_task_alloc((*(*(v6 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for MLTrainingSessionParameters(0);
  v2[14] = v7;
  v2[15] = swift_task_alloc((*(*(v7 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for URL(0);
  v2[16] = v8;
  v9 = *(v8 - 8);
  v2[17] = v9;
  v10 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2[18] = swift_task_alloc(v10);
  v2[19] = swift_task_alloc(v10);
  v2[20] = swift_task_alloc(v10);
  v11 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLCheckpoint?);
  v2[21] = swift_task_alloc((*(*(v11 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  return swift_task_switch(specialized MLTrainingSession.train(job:), 0, 0);
}

{
  v2[8] = v1;
  v2[7] = a1;
  v3 = type metadata accessor for MLCheckpoint(0);
  v2[9] = v3;
  v4 = *(v3 - 8);
  v2[10] = v4;
  v5 = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2[11] = swift_task_alloc(v5);
  v2[12] = swift_task_alloc(v5);
  v6 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for URL?);
  v2[13] = swift_task_alloc((*(*(v6 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for MLTrainingSessionParameters(0);
  v2[14] = v7;
  v2[15] = swift_task_alloc((*(*(v7 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for URL(0);
  v2[16] = v8;
  v9 = *(v8 - 8);
  v2[17] = v9;
  v10 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2[18] = swift_task_alloc(v10);
  v2[19] = swift_task_alloc(v10);
  v2[20] = swift_task_alloc(v10);
  v11 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLCheckpoint?);
  v2[21] = swift_task_alloc((*(*(v11 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  return swift_task_switch(specialized MLTrainingSession.train(job:), 0, 0);
}

{
  v2[8] = v1;
  v2[7] = a1;
  v3 = type metadata accessor for MLCheckpoint(0);
  v2[9] = v3;
  v4 = *(v3 - 8);
  v2[10] = v4;
  v5 = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2[11] = swift_task_alloc(v5);
  v2[12] = swift_task_alloc(v5);
  v6 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for URL?);
  v2[13] = swift_task_alloc((*(*(v6 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for MLTrainingSessionParameters(0);
  v2[14] = v7;
  v2[15] = swift_task_alloc((*(*(v7 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for URL(0);
  v2[16] = v8;
  v9 = *(v8 - 8);
  v2[17] = v9;
  v10 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2[18] = swift_task_alloc(v10);
  v2[19] = swift_task_alloc(v10);
  v2[20] = swift_task_alloc(v10);
  v11 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLCheckpoint?);
  v2[21] = swift_task_alloc((*(*(v11 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  return swift_task_switch(specialized MLTrainingSession.train(job:), 0, 0);
}

{
  v2[8] = v1;
  v2[7] = a1;
  v3 = type metadata accessor for MLCheckpoint(0);
  v2[9] = v3;
  v4 = *(v3 - 8);
  v2[10] = v4;
  v5 = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2[11] = swift_task_alloc(v5);
  v2[12] = swift_task_alloc(v5);
  v6 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for URL?);
  v2[13] = swift_task_alloc((*(*(v6 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for MLTrainingSessionParameters(0);
  v2[14] = v7;
  v2[15] = swift_task_alloc((*(*(v7 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for URL(0);
  v2[16] = v8;
  v9 = *(v8 - 8);
  v2[17] = v9;
  v10 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2[18] = swift_task_alloc(v10);
  v2[19] = swift_task_alloc(v10);
  v2[20] = swift_task_alloc(v10);
  v11 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLCheckpoint?);
  v2[21] = swift_task_alloc((*(*(v11 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  return swift_task_switch(specialized MLTrainingSession.train(job:), 0, 0);
}

{
  v2[8] = v1;
  v2[7] = a1;
  v3 = type metadata accessor for MLCheckpoint(0);
  v2[9] = v3;
  v4 = *(v3 - 8);
  v2[10] = v4;
  v5 = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2[11] = swift_task_alloc(v5);
  v2[12] = swift_task_alloc(v5);
  v6 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for URL?);
  v2[13] = swift_task_alloc((*(*(v6 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for MLTrainingSessionParameters(0);
  v2[14] = v7;
  v2[15] = swift_task_alloc((*(*(v7 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for URL(0);
  v2[16] = v8;
  v9 = *(v8 - 8);
  v2[17] = v9;
  v10 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2[18] = swift_task_alloc(v10);
  v2[19] = swift_task_alloc(v10);
  v2[20] = swift_task_alloc(v10);
  v11 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLCheckpoint?);
  v2[21] = swift_task_alloc((*(*(v11 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  return swift_task_switch(specialized MLTrainingSession.train(job:), 0, 0);
}

{
  v2[8] = v1;
  v2[7] = a1;
  v3 = type metadata accessor for MLCheckpoint(0);
  v2[9] = v3;
  v4 = *(v3 - 8);
  v2[10] = v4;
  v5 = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2[11] = swift_task_alloc(v5);
  v2[12] = swift_task_alloc(v5);
  v6 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for URL?);
  v2[13] = swift_task_alloc((*(*(v6 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for MLTrainingSessionParameters(0);
  v2[14] = v7;
  v2[15] = swift_task_alloc((*(*(v7 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for URL(0);
  v2[16] = v8;
  v9 = *(v8 - 8);
  v2[17] = v9;
  v10 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2[18] = swift_task_alloc(v10);
  v2[19] = swift_task_alloc(v10);
  v2[20] = swift_task_alloc(v10);
  v11 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLCheckpoint?);
  v2[21] = swift_task_alloc((*(*(v11 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  return swift_task_switch(specialized MLTrainingSession.train(job:), 0, 0);
}

uint64_t specialized MLTrainingSession.train(job:)()
{
  v54 = v0 | 0x1000000000000000;
  v53 = v1;
  v2 = v1[8];
  v3 = *(*v2 + 112);
  v1[22] = v3;
  v4 = v3 + v2;
  swift_beginAccess(v4, (v1 + 2), 1, 0);
  v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLActivityClassifier>.Metadata);
  v1[23] = v5;
  v46 = v5;
  v45 = v4;
  v6 = *(*(v5 + 44) + v4);
  v1[5] = v6;
  v7 = v6[2];
  v48 = v1;
  v50 = v6;
  if (v7)
  {
    v52 = v1[17];
    v51 = v1[18];
    v47 = v6 + ((*(v51 + 80) + 32) & ~*(v51 + 80));

    while (1)
    {
      if (v7 > v6[2])
      {
        BUG();
      }

      --v7;
      v8 = v1[20];
      outlined init with copy of MLTrainingSessionParameters(&v47[v7 * *(v51 + 72)], v8, type metadata accessor for MLCheckpoint);
      switch(*(v8 + *(v52 + 20)))
      {
        case 0:
          v9 = 0x696C616974696E69;
          v10 = 0xEB0000000064657ALL;
          break;
        case 1:
          v9 = 0x6974636172747865;
          goto LABEL_9;
        case 2:
          v14 = v48[20];
          0;
          v1 = v48;
          outlined destroy of MLActivityClassifier.ModelParameters(v14, type metadata accessor for MLCheckpoint);
          LODWORD(v52) = 0;
          goto LABEL_17;
        case 3:
          v9 = 0x697461756C617665;
LABEL_9:
          v10 = 0xEA0000000000676ELL;
          break;
        case 4:
          v9 = 0x636E657265666E69;
          v10 = &loc_308EF - 0x14FFFFFFFF9B9A86;
          break;
      }

      v11 = v1[20];
      v12 = _stringCompareWithSmolCheck(_:_:expecting:)(v9, v10, 0x676E696E69617274, 0xE800000000000000, 0);
      v10;
      v13 = outlined destroy of MLActivityClassifier.ModelParameters(v11, type metadata accessor for MLCheckpoint);
      if (v12)
      {
        break;
      }

      v1 = v48;
      v6 = v50;
      if (!v7)
      {
        goto LABEL_14;
      }
    }

    LODWORD(v52) = 0;
    v1 = v48;
  }

  else
  {

LABEL_14:
    LOBYTE(v13) = 1;
    LODWORD(v52) = v13;
    v7 = 0;
  }

LABEL_17:
  v51 = v1[17];
  v15 = v1[21];
  v16 = swift_task_alloc(32);
  *(v16 + 16) = v1 + 5;
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lFxq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lyxs5NeverOqd_0_Isgnrzr_xSgAb2ERsd__Ri_d_0_r_0_lIetMgnrzo_Tpq5Si_8CreateML12MLCheckpointVTg5(closure #1 in BidirectionalCollection.last(where:)specialized partial apply, v16, v7, v52, (v1 + 6));
  v50;
  v16;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v51);
  v18 = v48[21];
  if (EnumTagSinglePayload == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v18, &demangling cache variable for type metadata for MLCheckpoint?);
    v51 = 0;
  }

  else
  {
    v51 = *(v18 + *(v48[17] + 24));
    outlined destroy of MLActivityClassifier.ModelParameters(v18, type metadata accessor for MLCheckpoint);
  }

  v50 = v48[7];
  v19 = v48[8];
  v20 = direct field offset for MLTrainingSession.delegate;
  v48[24] = direct field offset for MLTrainingSession.delegate;
  v21 = *(v19 + v20 + 24);
  v52 = *(v19 + v20 + 32);
  __swift_project_boxed_opaque_existential_0Tm((v19 + v20), v21);
  v49 = *(v45 + *(v46 + 28));
  v22 = (*(v52 + 32))(&v49, v21);
  LOBYTE(v21) = v23;
  v48[25] = v22;
  *(v48 + 257) = v23;
  v52 = *(v45 + *(v46 + 32));
  v24 = *(v45 + *(v46 + 28));
  v25 = lazy protocol witness table accessor for type MLProgress.Metric and conformance MLProgress.Metric();
  v26 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for MLProgress.Metric, &type metadata for Any + 8, v25);
  v27 = v22;
  v28 = v50;
  specialized MLJob.reportProgress(completedUnitCount:phase:phaseUnitCount:metrics:)(v52, v24, v27, v21 & 1, v26, specialized MLJob.currentPhase.setter);
  v26;
  if ([*(v28 + direct field offset for MLJob.progress) isCancelled])
  {
    v29 = v48[21];
    v30 = v48[20];
    v31 = v48[19];
    v32 = v48[16];
    v33 = v48[15];
    v51 = v48[14];
    v50 = v48[9];
    v52 = v48[11];
    v29;
    v30;
    v31;
    v32;
    v33;
    v51;
    v52;
    v50;
    return (v48[1])();
  }

  else
  {
    v48[26] = direct field offset for MLTrainingSession.parameters;
    v48[27] = v51;
    v35 = v48[8];
    v36 = v48[23];
    v37 = (v35 + v48[24]);
    v38 = v35 + v48[22];
    v39 = v37[3];
    v40 = v37[4];
    v50 = __swift_project_boxed_opaque_existential_0Tm(v37, v39);
    v41 = *(*(v36 + 32) + v38);
    v42 = *(v40 + 56);
    v43 = (v42 + *v42);
    v44 = swift_task_alloc(v42[1]);
    v48[28] = v44;
    *v44 = v48;
    v44[1] = specialized MLTrainingSession.train(job:);
    return v43(v41, v39, v40);
  }
}

{
  v110 = v0 | 0x1000000000000000;
  v109 = v1;
  v2 = *(v1 + 184);
  v3 = *(v1 + 176) + *(v1 + 64);
  v4 = *(v2 + 32);
  v5 = *(v4 + v3);
  v6 = __OFADD__(*(v1 + 232), v5);
  v7 = *(v1 + 232) + v5;
  if (v6)
  {
    BUG();
  }

  v8 = *(v1 + 240);
  v9 = *(v1 + 216);
  v10 = *(v1 + 200);
  v11 = *(v1 + 257) & 1;
  *(v3 + v4) = v7;
  specialized MLJob.reportProgress(completedUnitCount:phase:phaseUnitCount:metrics:)(v7, *(v3 + *(v2 + 28)), v10, v11, v8, specialized MLJob.currentPhase.setter);
  v12 = *(v3 + *(v2 + 32));
  v6 = __OFSUB__(v12, v9);
  v13 = v12 - v9;
  if (v6)
  {
    BUG();
  }

  v14 = *(v1 + 208) + *(v1 + 64);
  if (v13 < *(*(*(v1 + 80) + 24) + v14))
  {
    if (*(v1 + 232) <= 0)
    {
      *(v1 + 240);
      goto LABEL_11;
    }

    if (!*(v1 + 258))
    {
      *(v1 + 240);
      v24 = *(v1 + 216);
LABEL_19:
      if (![*(*(v1 + 56) + direct field offset for MLJob.progress) isCancelled])
      {
        *(v1 + 216) = v24;
        v41 = *(v1 + 64);
        v42 = *(v1 + 184);
        v43 = (v41 + *(v1 + 192));
        v44 = v41 + *(v1 + 176);
        v45 = v43[3];
        v46 = v43[4];
        v108 = __swift_project_boxed_opaque_existential_0Tm(v43, v45);
        v47 = *(*(v42 + 32) + v44);
        v48 = *(v46 + 56);
        v49 = (v48 + *v48);
        v50 = swift_task_alloc(v48[1]);
        *(v1 + 224) = v50;
        *v50 = v1;
        v50[1] = specialized MLTrainingSession.train(job:);
        return v49(v47, v45, v46);
      }

      goto LABEL_20;
    }
  }

  v108 = *(v3 + *(v2 + 32));
  v15 = *(v1 + 96);
  v16 = *(v1 + 72);
  v17 = *(v1 + 88);
  outlined init with copy of MLTrainingSessionParameters(v14, v17, type metadata accessor for MLTrainingSessionParameters);
  outlined init with take of URL?(v17, v16);
  if (__swift_getEnumTagSinglePayload(v16, 1, v15) == 1)
  {
    v18 = *(v1 + 72);
    *(v1 + 240);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v18, &demangling cache variable for type metadata for URL?);
LABEL_11:
    v24 = *(v1 + 216);
    v25 = *(v1 + 248);
    goto LABEL_12;
  }

  v19 = *(v1 + 184);
  v20 = *(v1 + 176) + *(v1 + 64);
  (*(*(v1 + 104) + 32))(*(v1 + 128), *(v1 + 72), *(v1 + 96));
  v21 = *(*(v19 + 28) + v20);
  v22 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<CVarArg>);
  v23 = swift_allocObject(v22, 112, 7);
  v23[2] = 2;
  v23[3] = 4;
  v107 = (v1 + 256);
  switch(v21)
  {
    case 0:
      v103 = 0x696C616974696E69;
      v104 = 0xEB0000000064657ALL;
      goto LABEL_28;
    case 1:
      v53 = 0x6974636172747865;
      goto LABEL_27;
    case 2:
      v104 = 0xE800000000000000;
      v52 = 0x676E696E69617274;
      goto LABEL_24;
    case 3:
      v53 = 0x697461756C617665;
LABEL_27:
      v103 = v53;
      v104 = 0xEA0000000000676ELL;
      goto LABEL_28;
    case 4:
      v104 = 0xEB00000000676E69;
      v52 = 0x636E657265666E69;
LABEL_24:
      v103 = v52;
LABEL_28:
      v106 = *(v1 + 248);
      v98 = *(v1 + 192);
      v105 = *(v1 + 184);
      v54 = *(v1 + 64);
      v100 = *(v1 + 120);
      v96 = (v54 + v98);
      v94 = v54 + *(v1 + 176);
      v23[7] = &type metadata for String;
      v23[8] = lazy protocol witness table accessor for type String and conformance String();
      v23[4] = v103;
      v23[5] = v104;
      v23[12] = &type metadata for Int;
      v23[13] = &protocol witness table for Int;
      v23[9] = v108;
      v55 = String.init(format:_:)(0xD000000000000012, ("ng a features checkpoint." + 0x8000000000000000), v23);
      v57 = v56;
      URL.appendingPathComponent(_:)(v55, v56);
      v57;
      v58 = *(v54 + v98 + 24);
      v59 = *(v54 + v98 + 32);
      __swift_project_boxed_opaque_existential_0Tm(v96, v58);
      v60 = v105;
      *(v1 + 256) = *(*(v105 + 28) + v94);
      v61 = (*(v59 + 72))(v100, v107, *(*(v60 + 32) + v94), v58, v59);
      if (v106)
      {
        v108 = v106;
        v62 = *(v1 + 128);
        v63 = *(v1 + 120);
        v64 = *(v1 + 96);
        v65 = *(v1 + 104);
        *(v1 + 240);
        v66 = *(v65 + 8);
        v66(v63, v64);
        v66(v62, v64);
        goto LABEL_30;
      }

      v72 = *(v1 + 240);
      if (v61)
      {
        v107 = *(v1 + 184);
        v73 = *(v1 + 152);
        v103 = *(v1 + 144);
        v104 = *(v1 + 136);
        v74 = *(v1 + 120);
        v75 = *(v1 + 112);
        v106 = *(v1 + 104);
        v105 = *(v1 + 64);
        v108 = 0;
        v93 = *(v1 + 96);
        v76 = v105 + *(v1 + 176);
        v77 = v106[2];
        v95 = v72;
        v77(v75, v74);
        v99 = *(v107[7] + v76);
        v101 = *(v107[8] + v76);
        v78 = v73;
        (v77)(v73, v75, v93);
        v79 = v104;
        v80 = v73;
        *(v73 + *(v104 + 20)) = v99;
        *(v73 + *(v79 + 24)) = v101;
        v81 = v79;
        v82 = v80;
        v97 = v80;
        Date.init()(v78);
        v106 = v106[1];
        (v106)(v75, v93);
        *(v82 + *(v81 + 32)) = v95;
        v83 = v107[11];
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        v84 = *(*(v83 + v76) + 16);
        specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(v84);
        v85 = *(v83 + v76);
        *(v85 + 16) = v84 + 1;
        outlined init with copy of MLTrainingSessionParameters(v97, v85 + ((*(v103 + 80) + 32) & ~*(v103 + 80)) + *(v103 + 72) * v84, type metadata accessor for MLCheckpoint);
        *(v83 + v76) = v85;
        v24 = *(v107[8] + v76);
        specialized MLTrainingSession.save()();
        v86 = *(v1 + 152);
        v107 = *(v1 + 128);
        v87 = *(v1 + 96);
        v105 = *(v1 + 120);
        if (v108)
        {
          outlined destroy of MLActivityClassifier.ModelParameters(v86, type metadata accessor for MLCheckpoint);
          (v106)(v105, v87);
          (v106)(v107, v87);
          goto LABEL_30;
        }

        PassthroughSubject.send(_:)(v86);
        outlined destroy of MLActivityClassifier.ModelParameters(v86, type metadata accessor for MLCheckpoint);
        (v106)(v105, v87);
        (v106)(v107, v87);
      }

      else
      {
        v88 = *(v1 + 128);
        v89 = *(v1 + 120);
        v90 = *(v1 + 96);
        v91 = *(v1 + 104);
        v72;
        v92 = *(v91 + 8);
        v92(v89, v90);
        v92(v88, v90);
        v24 = *(v1 + 216);
      }

      v25 = 0;
      break;
  }

LABEL_12:
  if (*(v1 + 258) != 1)
  {
    goto LABEL_19;
  }

  v26 = AnalyticsReporter.init()();
  v27 = *(v1 + 64);
  v108 = v25;
  if (!v26)
  {
    v28 = *(v27 + direct field offset for MLTrainingSession.modelType);
    if (v28 != 28)
    {
      v29 = *(v27 + direct field offset for MLTrainingSession.modelType);
      AnalyticsReporter.reportTemplateUsed(model:mode:)(v28);
      v30 = Date.timeIntervalSinceReferenceDate.getter();
      AnalyticsReporter.reportEventDuration(model:task:startTime:)(v29, __PAIR128__(0xE800000000000000, 0x676E696E69617254), v30);
      v27 = *(v1 + 64);
    }
  }

  v31 = (*(v1 + 192) + v27);
  specialized MLTrainingSession.transition(to:)(3, &demangling cache variable for type metadata for MLTrainingSession<MLActivityClassifier>.Metadata);
  v32 = v31[3];
  v33 = v31[4];
  v102 = 3;
  __swift_project_boxed_opaque_existential_0Tm(v31, v32);
  v34 = v108;
  (*(v33 + 40))(&v102, v32, v33);
  if (v34)
  {
    v108 = v34;
LABEL_30:
    v67 = *(v1 + 168);
    v68 = *(v1 + 160);
    v69 = *(v1 + 152);
    v70 = *(v1 + 128);
    v71 = *(v1 + 120);
    v105 = *(v1 + 112);
    v107 = *(v1 + 72);
    v106 = *(v1 + 88);
    v67;
    v68;
    v69;
    v70;
    v71;
    v105;
    v106;
    v107;
    v40 = *(v1 + 8);
    return v40();
  }

LABEL_20:
  v35 = *(v1 + 168);
  v36 = *(v1 + 160);
  v37 = *(v1 + 152);
  v38 = *(v1 + 128);
  v39 = *(v1 + 120);
  v106 = *(v1 + 112);
  v108 = *(v1 + 72);
  v107 = *(v1 + 88);
  v35;
  v36;
  v37;
  v38;
  v39;
  v106;
  v107;
  v108;
  v40 = *(v1 + 8);
  return v40();
}

{
  v54 = v0 | 0x1000000000000000;
  v53 = v1;
  v2 = v1[8];
  v3 = *(*v2 + 112);
  v1[22] = v3;
  v4 = v3 + v2;
  swift_beginAccess(v4, (v1 + 2), 1, 0);
  v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLHandPoseClassifier>.Metadata);
  v1[23] = v5;
  v46 = v5;
  v45 = v4;
  v6 = *(*(v5 + 44) + v4);
  v1[5] = v6;
  v7 = v6[2];
  v48 = v1;
  v50 = v6;
  if (v7)
  {
    v52 = v1[17];
    v51 = v1[18];
    v47 = v6 + ((*(v51 + 80) + 32) & ~*(v51 + 80));

    while (1)
    {
      if (v7 > v6[2])
      {
        BUG();
      }

      --v7;
      v8 = v1[20];
      outlined init with copy of MLTrainingSessionParameters(&v47[v7 * *(v51 + 72)], v8, type metadata accessor for MLCheckpoint);
      switch(*(v8 + *(v52 + 20)))
      {
        case 0:
          v9 = 0x696C616974696E69;
          v10 = 0xEB0000000064657ALL;
          break;
        case 1:
          v9 = 0x6974636172747865;
          goto LABEL_9;
        case 2:
          v14 = v48[20];
          0;
          v1 = v48;
          outlined destroy of MLActivityClassifier.ModelParameters(v14, type metadata accessor for MLCheckpoint);
          LODWORD(v52) = 0;
          goto LABEL_17;
        case 3:
          v9 = 0x697461756C617665;
LABEL_9:
          v10 = 0xEA0000000000676ELL;
          break;
        case 4:
          v9 = 0x636E657265666E69;
          v10 = &loc_308EF - 0x14FFFFFFFF9B9A86;
          break;
      }

      v11 = v1[20];
      v12 = _stringCompareWithSmolCheck(_:_:expecting:)(v9, v10, 0x676E696E69617274, 0xE800000000000000, 0);
      v10;
      v13 = outlined destroy of MLActivityClassifier.ModelParameters(v11, type metadata accessor for MLCheckpoint);
      if (v12)
      {
        break;
      }

      v1 = v48;
      v6 = v50;
      if (!v7)
      {
        goto LABEL_14;
      }
    }

    LODWORD(v52) = 0;
    v1 = v48;
  }

  else
  {

LABEL_14:
    LOBYTE(v13) = 1;
    LODWORD(v52) = v13;
    v7 = 0;
  }

LABEL_17:
  v51 = v1[17];
  v15 = v1[21];
  v16 = swift_task_alloc(32);
  *(v16 + 16) = v1 + 5;
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lFxq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lyxs5NeverOqd_0_Isgnrzr_xSgAb2ERsd__Ri_d_0_r_0_lIetMgnrzo_Tpq5Si_8CreateML12MLCheckpointVTg5(closure #1 in BidirectionalCollection.last(where:)specialized partial apply, v16, v7, v52, (v1 + 6));
  v50;
  v16;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v51);
  v18 = v48[21];
  if (EnumTagSinglePayload == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v18, &demangling cache variable for type metadata for MLCheckpoint?);
    v51 = 0;
  }

  else
  {
    v51 = *(v18 + *(v48[17] + 24));
    outlined destroy of MLActivityClassifier.ModelParameters(v18, type metadata accessor for MLCheckpoint);
  }

  v50 = v48[7];
  v19 = v48[8];
  v20 = direct field offset for MLTrainingSession.delegate;
  v48[24] = direct field offset for MLTrainingSession.delegate;
  v21 = *(v19 + v20 + 24);
  v52 = *(v19 + v20 + 32);
  __swift_project_boxed_opaque_existential_0Tm((v19 + v20), v21);
  v49 = *(v45 + *(v46 + 28));
  v22 = (*(v52 + 32))(&v49, v21);
  LOBYTE(v21) = v23;
  v48[25] = v22;
  *(v48 + 257) = v23;
  v52 = *(v45 + *(v46 + 32));
  v24 = *(v45 + *(v46 + 28));
  v25 = lazy protocol witness table accessor for type MLProgress.Metric and conformance MLProgress.Metric();
  v26 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for MLProgress.Metric, &type metadata for Any + 8, v25);
  v27 = v22;
  v28 = v50;
  specialized MLJob.reportProgress(completedUnitCount:phase:phaseUnitCount:metrics:)(v52, v24, v27, v21 & 1, v26, specialized MLJob.currentPhase.setter);
  v26;
  if ([*(v28 + direct field offset for MLJob.progress) isCancelled])
  {
    v29 = v48[21];
    v30 = v48[20];
    v31 = v48[19];
    v32 = v48[16];
    v33 = v48[15];
    v51 = v48[14];
    v50 = v48[9];
    v52 = v48[11];
    v29;
    v30;
    v31;
    v32;
    v33;
    v51;
    v52;
    v50;
    return (v48[1])();
  }

  else
  {
    v48[26] = direct field offset for MLTrainingSession.parameters;
    v48[27] = v51;
    v35 = v48[8];
    v36 = v48[23];
    v37 = (v35 + v48[24]);
    v38 = v35 + v48[22];
    v39 = v37[3];
    v40 = v37[4];
    v50 = __swift_project_boxed_opaque_existential_0Tm(v37, v39);
    v41 = *(*(v36 + 32) + v38);
    v42 = *(v40 + 56);
    v43 = (v42 + *v42);
    v44 = swift_task_alloc(v42[1]);
    v48[28] = v44;
    *v44 = v48;
    v44[1] = specialized MLTrainingSession.train(job:);
    return v43(v41, v39, v40);
  }
}

{
  v110 = v0 | 0x1000000000000000;
  v109 = v1;
  v2 = *(v1 + 184);
  v3 = *(v1 + 176) + *(v1 + 64);
  v4 = *(v2 + 32);
  v5 = *(v4 + v3);
  v6 = __OFADD__(*(v1 + 232), v5);
  v7 = *(v1 + 232) + v5;
  if (v6)
  {
    BUG();
  }

  v8 = *(v1 + 240);
  v9 = *(v1 + 216);
  v10 = *(v1 + 200);
  v11 = *(v1 + 257) & 1;
  *(v3 + v4) = v7;
  specialized MLJob.reportProgress(completedUnitCount:phase:phaseUnitCount:metrics:)(v7, *(v3 + *(v2 + 28)), v10, v11, v8, specialized MLJob.currentPhase.setter);
  v12 = *(v3 + *(v2 + 32));
  v6 = __OFSUB__(v12, v9);
  v13 = v12 - v9;
  if (v6)
  {
    BUG();
  }

  v14 = *(v1 + 208) + *(v1 + 64);
  if (v13 < *(*(*(v1 + 80) + 24) + v14))
  {
    if (*(v1 + 232) <= 0)
    {
      *(v1 + 240);
      goto LABEL_11;
    }

    if (!*(v1 + 258))
    {
      *(v1 + 240);
      v24 = *(v1 + 216);
LABEL_19:
      if (![*(*(v1 + 56) + direct field offset for MLJob.progress) isCancelled])
      {
        *(v1 + 216) = v24;
        v41 = *(v1 + 64);
        v42 = *(v1 + 184);
        v43 = (v41 + *(v1 + 192));
        v44 = v41 + *(v1 + 176);
        v45 = v43[3];
        v46 = v43[4];
        v108 = __swift_project_boxed_opaque_existential_0Tm(v43, v45);
        v47 = *(*(v42 + 32) + v44);
        v48 = *(v46 + 56);
        v49 = (v48 + *v48);
        v50 = swift_task_alloc(v48[1]);
        *(v1 + 224) = v50;
        *v50 = v1;
        v50[1] = specialized MLTrainingSession.train(job:);
        return v49(v47, v45, v46);
      }

      goto LABEL_20;
    }
  }

  v108 = *(v3 + *(v2 + 32));
  v15 = *(v1 + 96);
  v16 = *(v1 + 72);
  v17 = *(v1 + 88);
  outlined init with copy of MLTrainingSessionParameters(v14, v17, type metadata accessor for MLTrainingSessionParameters);
  outlined init with take of URL?(v17, v16);
  if (__swift_getEnumTagSinglePayload(v16, 1, v15) == 1)
  {
    v18 = *(v1 + 72);
    *(v1 + 240);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v18, &demangling cache variable for type metadata for URL?);
LABEL_11:
    v24 = *(v1 + 216);
    v25 = *(v1 + 248);
    goto LABEL_12;
  }

  v19 = *(v1 + 184);
  v20 = *(v1 + 176) + *(v1 + 64);
  (*(*(v1 + 104) + 32))(*(v1 + 128), *(v1 + 72), *(v1 + 96));
  v21 = *(*(v19 + 28) + v20);
  v22 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<CVarArg>);
  v23 = swift_allocObject(v22, 112, 7);
  v23[2] = 2;
  v23[3] = 4;
  v107 = (v1 + 256);
  switch(v21)
  {
    case 0:
      v103 = 0x696C616974696E69;
      v104 = 0xEB0000000064657ALL;
      goto LABEL_28;
    case 1:
      v53 = 0x6974636172747865;
      goto LABEL_27;
    case 2:
      v104 = 0xE800000000000000;
      v52 = 0x676E696E69617274;
      goto LABEL_24;
    case 3:
      v53 = 0x697461756C617665;
LABEL_27:
      v103 = v53;
      v104 = 0xEA0000000000676ELL;
      goto LABEL_28;
    case 4:
      v104 = 0xEB00000000676E69;
      v52 = 0x636E657265666E69;
LABEL_24:
      v103 = v52;
LABEL_28:
      v106 = *(v1 + 248);
      v98 = *(v1 + 192);
      v105 = *(v1 + 184);
      v54 = *(v1 + 64);
      v100 = *(v1 + 120);
      v96 = (v54 + v98);
      v94 = v54 + *(v1 + 176);
      v23[7] = &type metadata for String;
      v23[8] = lazy protocol witness table accessor for type String and conformance String();
      v23[4] = v103;
      v23[5] = v104;
      v23[12] = &type metadata for Int;
      v23[13] = &protocol witness table for Int;
      v23[9] = v108;
      v55 = String.init(format:_:)(0xD000000000000012, ("ng a features checkpoint." + 0x8000000000000000), v23);
      v57 = v56;
      URL.appendingPathComponent(_:)(v55, v56);
      v57;
      v58 = *(v54 + v98 + 24);
      v59 = *(v54 + v98 + 32);
      __swift_project_boxed_opaque_existential_0Tm(v96, v58);
      v60 = v105;
      *(v1 + 256) = *(*(v105 + 28) + v94);
      v61 = (*(v59 + 72))(v100, v107, *(*(v60 + 32) + v94), v58, v59);
      if (v106)
      {
        v108 = v106;
        v62 = *(v1 + 128);
        v63 = *(v1 + 120);
        v64 = *(v1 + 96);
        v65 = *(v1 + 104);
        *(v1 + 240);
        v66 = *(v65 + 8);
        v66(v63, v64);
        v66(v62, v64);
        goto LABEL_30;
      }

      v72 = *(v1 + 240);
      if (v61)
      {
        v107 = *(v1 + 184);
        v73 = *(v1 + 152);
        v103 = *(v1 + 144);
        v104 = *(v1 + 136);
        v74 = *(v1 + 120);
        v75 = *(v1 + 112);
        v106 = *(v1 + 104);
        v105 = *(v1 + 64);
        v108 = 0;
        v93 = *(v1 + 96);
        v76 = v105 + *(v1 + 176);
        v77 = v106[2];
        v95 = v72;
        v77(v75, v74);
        v99 = *(v107[7] + v76);
        v101 = *(v107[8] + v76);
        v78 = v73;
        (v77)(v73, v75, v93);
        v79 = v104;
        v80 = v73;
        *(v73 + *(v104 + 20)) = v99;
        *(v73 + *(v79 + 24)) = v101;
        v81 = v79;
        v82 = v80;
        v97 = v80;
        Date.init()(v78);
        v106 = v106[1];
        (v106)(v75, v93);
        *(v82 + *(v81 + 32)) = v95;
        v83 = v107[11];
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        v84 = *(*(v83 + v76) + 16);
        specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(v84);
        v85 = *(v83 + v76);
        *(v85 + 16) = v84 + 1;
        outlined init with copy of MLTrainingSessionParameters(v97, v85 + ((*(v103 + 80) + 32) & ~*(v103 + 80)) + *(v103 + 72) * v84, type metadata accessor for MLCheckpoint);
        *(v83 + v76) = v85;
        v24 = *(v107[8] + v76);
        specialized MLTrainingSession.save()();
        v86 = *(v1 + 152);
        v107 = *(v1 + 128);
        v87 = *(v1 + 96);
        v105 = *(v1 + 120);
        if (v108)
        {
          outlined destroy of MLActivityClassifier.ModelParameters(v86, type metadata accessor for MLCheckpoint);
          (v106)(v105, v87);
          (v106)(v107, v87);
          goto LABEL_30;
        }

        PassthroughSubject.send(_:)(v86);
        outlined destroy of MLActivityClassifier.ModelParameters(v86, type metadata accessor for MLCheckpoint);
        (v106)(v105, v87);
        (v106)(v107, v87);
      }

      else
      {
        v88 = *(v1 + 128);
        v89 = *(v1 + 120);
        v90 = *(v1 + 96);
        v91 = *(v1 + 104);
        v72;
        v92 = *(v91 + 8);
        v92(v89, v90);
        v92(v88, v90);
        v24 = *(v1 + 216);
      }

      v25 = 0;
      break;
  }

LABEL_12:
  if (*(v1 + 258) != 1)
  {
    goto LABEL_19;
  }

  v26 = AnalyticsReporter.init()();
  v27 = *(v1 + 64);
  v108 = v25;
  if (!v26)
  {
    v28 = *(v27 + direct field offset for MLTrainingSession.modelType);
    if (v28 != 28)
    {
      v29 = *(v27 + direct field offset for MLTrainingSession.modelType);
      AnalyticsReporter.reportTemplateUsed(model:mode:)(v28);
      v30 = Date.timeIntervalSinceReferenceDate.getter();
      AnalyticsReporter.reportEventDuration(model:task:startTime:)(v29, __PAIR128__(0xE800000000000000, 0x676E696E69617254), v30);
      v27 = *(v1 + 64);
    }
  }

  v31 = (*(v1 + 192) + v27);
  specialized MLTrainingSession.transition(to:)(3, &demangling cache variable for type metadata for MLTrainingSession<MLHandPoseClassifier>.Metadata);
  v32 = v31[3];
  v33 = v31[4];
  v102 = 3;
  __swift_project_boxed_opaque_existential_0Tm(v31, v32);
  v34 = v108;
  (*(v33 + 40))(&v102, v32, v33);
  if (v34)
  {
    v108 = v34;
LABEL_30:
    v67 = *(v1 + 168);
    v68 = *(v1 + 160);
    v69 = *(v1 + 152);
    v70 = *(v1 + 128);
    v71 = *(v1 + 120);
    v105 = *(v1 + 112);
    v107 = *(v1 + 72);
    v106 = *(v1 + 88);
    v67;
    v68;
    v69;
    v70;
    v71;
    v105;
    v106;
    v107;
    v40 = *(v1 + 8);
    return v40();
  }

LABEL_20:
  v35 = *(v1 + 168);
  v36 = *(v1 + 160);
  v37 = *(v1 + 152);
  v38 = *(v1 + 128);
  v39 = *(v1 + 120);
  v106 = *(v1 + 112);
  v108 = *(v1 + 72);
  v107 = *(v1 + 88);
  v35;
  v36;
  v37;
  v38;
  v39;
  v106;
  v107;
  v108;
  v40 = *(v1 + 8);
  return v40();
}

{
  v54 = v0 | 0x1000000000000000;
  v53 = v1;
  v2 = v1[8];
  v3 = *(*v2 + 112);
  v1[22] = v3;
  v4 = v3 + v2;
  swift_beginAccess(v4, (v1 + 2), 1, 0);
  v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLRandomForestRegressor>.Metadata);
  v1[23] = v5;
  v46 = v5;
  v45 = v4;
  v6 = *(*(v5 + 44) + v4);
  v1[5] = v6;
  v7 = v6[2];
  v48 = v1;
  v50 = v6;
  if (v7)
  {
    v52 = v1[17];
    v51 = v1[18];
    v47 = v6 + ((*(v51 + 80) + 32) & ~*(v51 + 80));

    while (1)
    {
      if (v7 > v6[2])
      {
        BUG();
      }

      --v7;
      v8 = v1[20];
      outlined init with copy of MLTrainingSessionParameters(&v47[v7 * *(v51 + 72)], v8, type metadata accessor for MLCheckpoint);
      switch(*(v8 + *(v52 + 20)))
      {
        case 0:
          v9 = 0x696C616974696E69;
          v10 = 0xEB0000000064657ALL;
          break;
        case 1:
          v9 = 0x6974636172747865;
          goto LABEL_9;
        case 2:
          v14 = v48[20];
          0;
          v1 = v48;
          outlined destroy of MLActivityClassifier.ModelParameters(v14, type metadata accessor for MLCheckpoint);
          LODWORD(v52) = 0;
          goto LABEL_17;
        case 3:
          v9 = 0x697461756C617665;
LABEL_9:
          v10 = 0xEA0000000000676ELL;
          break;
        case 4:
          v9 = 0x636E657265666E69;
          v10 = &loc_308EF - 0x14FFFFFFFF9B9A86;
          break;
      }

      v11 = v1[20];
      v12 = _stringCompareWithSmolCheck(_:_:expecting:)(v9, v10, 0x676E696E69617274, 0xE800000000000000, 0);
      v10;
      v13 = outlined destroy of MLActivityClassifier.ModelParameters(v11, type metadata accessor for MLCheckpoint);
      if (v12)
      {
        break;
      }

      v1 = v48;
      v6 = v50;
      if (!v7)
      {
        goto LABEL_14;
      }
    }

    LODWORD(v52) = 0;
    v1 = v48;
  }

  else
  {

LABEL_14:
    LOBYTE(v13) = 1;
    LODWORD(v52) = v13;
    v7 = 0;
  }

LABEL_17:
  v51 = v1[17];
  v15 = v1[21];
  v16 = swift_task_alloc(32);
  *(v16 + 16) = v1 + 5;
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lFxq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lyxs5NeverOqd_0_Isgnrzr_xSgAb2ERsd__Ri_d_0_r_0_lIetMgnrzo_Tpq5Si_8CreateML12MLCheckpointVTg5(closure #1 in BidirectionalCollection.last(where:)specialized partial apply, v16, v7, v52, (v1 + 6));
  v50;
  v16;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v51);
  v18 = v48[21];
  if (EnumTagSinglePayload == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v18, &demangling cache variable for type metadata for MLCheckpoint?);
    v51 = 0;
  }

  else
  {
    v51 = *(v18 + *(v48[17] + 24));
    outlined destroy of MLActivityClassifier.ModelParameters(v18, type metadata accessor for MLCheckpoint);
  }

  v50 = v48[7];
  v19 = v48[8];
  v20 = direct field offset for MLTrainingSession.delegate;
  v48[24] = direct field offset for MLTrainingSession.delegate;
  v21 = *(v19 + v20 + 24);
  v52 = *(v19 + v20 + 32);
  __swift_project_boxed_opaque_existential_0Tm((v19 + v20), v21);
  v49 = *(v45 + *(v46 + 28));
  v22 = (*(v52 + 32))(&v49, v21);
  LOBYTE(v21) = v23;
  v48[25] = v22;
  *(v48 + 257) = v23;
  v52 = *(v45 + *(v46 + 32));
  v24 = *(v45 + *(v46 + 28));
  v25 = lazy protocol witness table accessor for type MLProgress.Metric and conformance MLProgress.Metric();
  v26 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for MLProgress.Metric, &type metadata for Any + 8, v25);
  v27 = v22;
  v28 = v50;
  specialized MLJob.reportProgress(completedUnitCount:phase:phaseUnitCount:metrics:)(v52, v24, v27, v21 & 1, v26, specialized MLJob.currentPhase.setter);
  v26;
  if ([*(v28 + direct field offset for MLJob.progress) isCancelled])
  {
    v29 = v48[21];
    v30 = v48[20];
    v31 = v48[19];
    v32 = v48[16];
    v33 = v48[15];
    v51 = v48[14];
    v50 = v48[9];
    v52 = v48[11];
    v29;
    v30;
    v31;
    v32;
    v33;
    v51;
    v52;
    v50;
    return (v48[1])();
  }

  else
  {
    v48[26] = direct field offset for MLTrainingSession.parameters;
    v48[27] = v51;
    v35 = v48[8];
    v36 = v48[23];
    v37 = (v35 + v48[24]);
    v38 = v35 + v48[22];
    v39 = v37[3];
    v40 = v37[4];
    v50 = __swift_project_boxed_opaque_existential_0Tm(v37, v39);
    v41 = *(*(v36 + 32) + v38);
    v42 = *(v40 + 56);
    v43 = (v42 + *v42);
    v44 = swift_task_alloc(v42[1]);
    v48[28] = v44;
    *v44 = v48;
    v44[1] = specialized MLTrainingSession.train(job:);
    return v43(v41, v39, v40);
  }
}

{
  v110 = v0 | 0x1000000000000000;
  v109 = v1;
  v2 = *(v1 + 184);
  v3 = *(v1 + 176) + *(v1 + 64);
  v4 = *(v2 + 32);
  v5 = *(v4 + v3);
  v6 = __OFADD__(*(v1 + 232), v5);
  v7 = *(v1 + 232) + v5;
  if (v6)
  {
    BUG();
  }

  v8 = *(v1 + 240);
  v9 = *(v1 + 216);
  v10 = *(v1 + 200);
  v11 = *(v1 + 257) & 1;
  *(v3 + v4) = v7;
  specialized MLJob.reportProgress(completedUnitCount:phase:phaseUnitCount:metrics:)(v7, *(v3 + *(v2 + 28)), v10, v11, v8, specialized MLJob.currentPhase.setter);
  v12 = *(v3 + *(v2 + 32));
  v6 = __OFSUB__(v12, v9);
  v13 = v12 - v9;
  if (v6)
  {
    BUG();
  }

  v14 = *(v1 + 208) + *(v1 + 64);
  if (v13 < *(*(*(v1 + 80) + 24) + v14))
  {
    if (*(v1 + 232) <= 0)
    {
      *(v1 + 240);
      goto LABEL_11;
    }

    if (!*(v1 + 258))
    {
      *(v1 + 240);
      v24 = *(v1 + 216);
LABEL_19:
      if (![*(*(v1 + 56) + direct field offset for MLJob.progress) isCancelled])
      {
        *(v1 + 216) = v24;
        v41 = *(v1 + 64);
        v42 = *(v1 + 184);
        v43 = (v41 + *(v1 + 192));
        v44 = v41 + *(v1 + 176);
        v45 = v43[3];
        v46 = v43[4];
        v108 = __swift_project_boxed_opaque_existential_0Tm(v43, v45);
        v47 = *(*(v42 + 32) + v44);
        v48 = *(v46 + 56);
        v49 = (v48 + *v48);
        v50 = swift_task_alloc(v48[1]);
        *(v1 + 224) = v50;
        *v50 = v1;
        v50[1] = specialized MLTrainingSession.train(job:);
        return v49(v47, v45, v46);
      }

      goto LABEL_20;
    }
  }

  v108 = *(v3 + *(v2 + 32));
  v15 = *(v1 + 96);
  v16 = *(v1 + 72);
  v17 = *(v1 + 88);
  outlined init with copy of MLTrainingSessionParameters(v14, v17, type metadata accessor for MLTrainingSessionParameters);
  outlined init with take of URL?(v17, v16);
  if (__swift_getEnumTagSinglePayload(v16, 1, v15) == 1)
  {
    v18 = *(v1 + 72);
    *(v1 + 240);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v18, &demangling cache variable for type metadata for URL?);
LABEL_11:
    v24 = *(v1 + 216);
    v25 = *(v1 + 248);
    goto LABEL_12;
  }

  v19 = *(v1 + 184);
  v20 = *(v1 + 176) + *(v1 + 64);
  (*(*(v1 + 104) + 32))(*(v1 + 128), *(v1 + 72), *(v1 + 96));
  v21 = *(*(v19 + 28) + v20);
  v22 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<CVarArg>);
  v23 = swift_allocObject(v22, 112, 7);
  v23[2] = 2;
  v23[3] = 4;
  v107 = (v1 + 256);
  switch(v21)
  {
    case 0:
      v103 = 0x696C616974696E69;
      v104 = 0xEB0000000064657ALL;
      goto LABEL_28;
    case 1:
      v53 = 0x6974636172747865;
      goto LABEL_27;
    case 2:
      v104 = 0xE800000000000000;
      v52 = 0x676E696E69617274;
      goto LABEL_24;
    case 3:
      v53 = 0x697461756C617665;
LABEL_27:
      v103 = v53;
      v104 = 0xEA0000000000676ELL;
      goto LABEL_28;
    case 4:
      v104 = 0xEB00000000676E69;
      v52 = 0x636E657265666E69;
LABEL_24:
      v103 = v52;
LABEL_28:
      v106 = *(v1 + 248);
      v98 = *(v1 + 192);
      v105 = *(v1 + 184);
      v54 = *(v1 + 64);
      v100 = *(v1 + 120);
      v96 = (v54 + v98);
      v94 = v54 + *(v1 + 176);
      v23[7] = &type metadata for String;
      v23[8] = lazy protocol witness table accessor for type String and conformance String();
      v23[4] = v103;
      v23[5] = v104;
      v23[12] = &type metadata for Int;
      v23[13] = &protocol witness table for Int;
      v23[9] = v108;
      v55 = String.init(format:_:)(0xD000000000000012, ("ng a features checkpoint." + 0x8000000000000000), v23);
      v57 = v56;
      URL.appendingPathComponent(_:)(v55, v56);
      v57;
      v58 = *(v54 + v98 + 24);
      v59 = *(v54 + v98 + 32);
      __swift_project_boxed_opaque_existential_0Tm(v96, v58);
      v60 = v105;
      *(v1 + 256) = *(*(v105 + 28) + v94);
      v61 = (*(v59 + 72))(v100, v107, *(*(v60 + 32) + v94), v58, v59);
      if (v106)
      {
        v108 = v106;
        v62 = *(v1 + 128);
        v63 = *(v1 + 120);
        v64 = *(v1 + 96);
        v65 = *(v1 + 104);
        *(v1 + 240);
        v66 = *(v65 + 8);
        v66(v63, v64);
        v66(v62, v64);
        goto LABEL_30;
      }

      v72 = *(v1 + 240);
      if (v61)
      {
        v107 = *(v1 + 184);
        v73 = *(v1 + 152);
        v103 = *(v1 + 144);
        v104 = *(v1 + 136);
        v74 = *(v1 + 120);
        v75 = *(v1 + 112);
        v106 = *(v1 + 104);
        v105 = *(v1 + 64);
        v108 = 0;
        v93 = *(v1 + 96);
        v76 = v105 + *(v1 + 176);
        v77 = v106[2];
        v95 = v72;
        v77(v75, v74);
        v99 = *(v107[7] + v76);
        v101 = *(v107[8] + v76);
        v78 = v73;
        (v77)(v73, v75, v93);
        v79 = v104;
        v80 = v73;
        *(v73 + *(v104 + 20)) = v99;
        *(v73 + *(v79 + 24)) = v101;
        v81 = v79;
        v82 = v80;
        v97 = v80;
        Date.init()(v78);
        v106 = v106[1];
        (v106)(v75, v93);
        *(v82 + *(v81 + 32)) = v95;
        v83 = v107[11];
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        v84 = *(*(v83 + v76) + 16);
        specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(v84);
        v85 = *(v83 + v76);
        *(v85 + 16) = v84 + 1;
        outlined init with copy of MLTrainingSessionParameters(v97, v85 + ((*(v103 + 80) + 32) & ~*(v103 + 80)) + *(v103 + 72) * v84, type metadata accessor for MLCheckpoint);
        *(v83 + v76) = v85;
        v24 = *(v107[8] + v76);
        specialized MLTrainingSession.save()();
        v86 = *(v1 + 152);
        v107 = *(v1 + 128);
        v87 = *(v1 + 96);
        v105 = *(v1 + 120);
        if (v108)
        {
          outlined destroy of MLActivityClassifier.ModelParameters(v86, type metadata accessor for MLCheckpoint);
          (v106)(v105, v87);
          (v106)(v107, v87);
          goto LABEL_30;
        }

        PassthroughSubject.send(_:)(v86);
        outlined destroy of MLActivityClassifier.ModelParameters(v86, type metadata accessor for MLCheckpoint);
        (v106)(v105, v87);
        (v106)(v107, v87);
      }

      else
      {
        v88 = *(v1 + 128);
        v89 = *(v1 + 120);
        v90 = *(v1 + 96);
        v91 = *(v1 + 104);
        v72;
        v92 = *(v91 + 8);
        v92(v89, v90);
        v92(v88, v90);
        v24 = *(v1 + 216);
      }

      v25 = 0;
      break;
  }

LABEL_12:
  if (*(v1 + 258) != 1)
  {
    goto LABEL_19;
  }

  v26 = AnalyticsReporter.init()();
  v27 = *(v1 + 64);
  v108 = v25;
  if (!v26)
  {
    v28 = *(v27 + direct field offset for MLTrainingSession.modelType);
    if (v28 != 28)
    {
      v29 = *(v27 + direct field offset for MLTrainingSession.modelType);
      AnalyticsReporter.reportTemplateUsed(model:mode:)(v28);
      v30 = Date.timeIntervalSinceReferenceDate.getter();
      AnalyticsReporter.reportEventDuration(model:task:startTime:)(v29, __PAIR128__(0xE800000000000000, 0x676E696E69617254), v30);
      v27 = *(v1 + 64);
    }
  }

  v31 = (*(v1 + 192) + v27);
  specialized MLTrainingSession.transition(to:)(3, &demangling cache variable for type metadata for MLTrainingSession<MLRandomForestRegressor>.Metadata);
  v32 = v31[3];
  v33 = v31[4];
  v102 = 3;
  __swift_project_boxed_opaque_existential_0Tm(v31, v32);
  v34 = v108;
  (*(v33 + 40))(&v102, v32, v33);
  if (v34)
  {
    v108 = v34;
LABEL_30:
    v67 = *(v1 + 168);
    v68 = *(v1 + 160);
    v69 = *(v1 + 152);
    v70 = *(v1 + 128);
    v71 = *(v1 + 120);
    v105 = *(v1 + 112);
    v107 = *(v1 + 72);
    v106 = *(v1 + 88);
    v67;
    v68;
    v69;
    v70;
    v71;
    v105;
    v106;
    v107;
    v40 = *(v1 + 8);
    return v40();
  }

LABEL_20:
  v35 = *(v1 + 168);
  v36 = *(v1 + 160);
  v37 = *(v1 + 152);
  v38 = *(v1 + 128);
  v39 = *(v1 + 120);
  v106 = *(v1 + 112);
  v108 = *(v1 + 72);
  v107 = *(v1 + 88);
  v35;
  v36;
  v37;
  v38;
  v39;
  v106;
  v107;
  v108;
  v40 = *(v1 + 8);
  return v40();
}

{
  v54 = v0 | 0x1000000000000000;
  v53 = v1;
  v2 = v1[8];
  v3 = *(*v2 + 112);
  v1[22] = v3;
  v4 = v3 + v2;
  swift_beginAccess(v4, (v1 + 2), 1, 0);
  v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLStyleTransfer>.Metadata);
  v1[23] = v5;
  v46 = v5;
  v45 = v4;
  v6 = *(*(v5 + 44) + v4);
  v1[5] = v6;
  v7 = v6[2];
  v48 = v1;
  v50 = v6;
  if (v7)
  {
    v52 = v1[17];
    v51 = v1[18];
    v47 = v6 + ((*(v51 + 80) + 32) & ~*(v51 + 80));

    while (1)
    {
      if (v7 > v6[2])
      {
        BUG();
      }

      --v7;
      v8 = v1[20];
      outlined init with copy of MLTrainingSessionParameters(&v47[v7 * *(v51 + 72)], v8, type metadata accessor for MLCheckpoint);
      switch(*(v8 + *(v52 + 20)))
      {
        case 0:
          v9 = 0x696C616974696E69;
          v10 = 0xEB0000000064657ALL;
          break;
        case 1:
          v9 = 0x6974636172747865;
          goto LABEL_9;
        case 2:
          v14 = v48[20];
          0;
          v1 = v48;
          outlined destroy of MLActivityClassifier.ModelParameters(v14, type metadata accessor for MLCheckpoint);
          LODWORD(v52) = 0;
          goto LABEL_17;
        case 3:
          v9 = 0x697461756C617665;
LABEL_9:
          v10 = 0xEA0000000000676ELL;
          break;
        case 4:
          v9 = 0x636E657265666E69;
          v10 = &loc_308EF - 0x14FFFFFFFF9B9A86;
          break;
      }

      v11 = v1[20];
      v12 = _stringCompareWithSmolCheck(_:_:expecting:)(v9, v10, 0x676E696E69617274, 0xE800000000000000, 0);
      v10;
      v13 = outlined destroy of MLActivityClassifier.ModelParameters(v11, type metadata accessor for MLCheckpoint);
      if (v12)
      {
        break;
      }

      v1 = v48;
      v6 = v50;
      if (!v7)
      {
        goto LABEL_14;
      }
    }

    LODWORD(v52) = 0;
    v1 = v48;
  }

  else
  {

LABEL_14:
    LOBYTE(v13) = 1;
    LODWORD(v52) = v13;
    v7 = 0;
  }

LABEL_17:
  v51 = v1[17];
  v15 = v1[21];
  v16 = swift_task_alloc(32);
  *(v16 + 16) = v1 + 5;
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lFxq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lyxs5NeverOqd_0_Isgnrzr_xSgAb2ERsd__Ri_d_0_r_0_lIetMgnrzo_Tpq5Si_8CreateML12MLCheckpointVTg5(closure #1 in BidirectionalCollection.last(where:)specialized partial apply, v16, v7, v52, (v1 + 6));
  v50;
  v16;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v51);
  v18 = v48[21];
  if (EnumTagSinglePayload == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v18, &demangling cache variable for type metadata for MLCheckpoint?);
    v51 = 0;
  }

  else
  {
    v51 = *(v18 + *(v48[17] + 24));
    outlined destroy of MLActivityClassifier.ModelParameters(v18, type metadata accessor for MLCheckpoint);
  }

  v50 = v48[7];
  v19 = v48[8];
  v20 = direct field offset for MLTrainingSession.delegate;
  v48[24] = direct field offset for MLTrainingSession.delegate;
  v21 = *(v19 + v20 + 24);
  v52 = *(v19 + v20 + 32);
  __swift_project_boxed_opaque_existential_0Tm((v19 + v20), v21);
  v49 = *(v45 + *(v46 + 28));
  v22 = (*(v52 + 32))(&v49, v21);
  LOBYTE(v21) = v23;
  v48[25] = v22;
  *(v48 + 257) = v23;
  v52 = *(v45 + *(v46 + 32));
  v24 = *(v45 + *(v46 + 28));
  v25 = lazy protocol witness table accessor for type MLProgress.Metric and conformance MLProgress.Metric();
  v26 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for MLProgress.Metric, &type metadata for Any + 8, v25);
  v27 = v22;
  v28 = v50;
  specialized MLJob.reportProgress(completedUnitCount:phase:phaseUnitCount:metrics:)(v52, v24, v27, v21 & 1, v26, specialized MLJob.currentPhase.setter);
  v26;
  if ([*(v28 + direct field offset for MLJob.progress) isCancelled])
  {
    v29 = v48[21];
    v30 = v48[20];
    v31 = v48[19];
    v32 = v48[16];
    v33 = v48[15];
    v51 = v48[14];
    v50 = v48[9];
    v52 = v48[11];
    v29;
    v30;
    v31;
    v32;
    v33;
    v51;
    v52;
    v50;
    return (v48[1])();
  }

  else
  {
    v48[26] = direct field offset for MLTrainingSession.parameters;
    v48[27] = v51;
    v35 = v48[8];
    v36 = v48[23];
    v37 = (v35 + v48[24]);
    v38 = v35 + v48[22];
    v39 = v37[3];
    v40 = v37[4];
    v50 = __swift_project_boxed_opaque_existential_0Tm(v37, v39);
    v41 = *(*(v36 + 32) + v38);
    v42 = *(v40 + 56);
    v43 = (v42 + *v42);
    v44 = swift_task_alloc(v42[1]);
    v48[28] = v44;
    *v44 = v48;
    v44[1] = specialized MLTrainingSession.train(job:);
    return v43(v41, v39, v40);
  }
}

{
  v110 = v0 | 0x1000000000000000;
  v109 = v1;
  v2 = *(v1 + 184);
  v3 = *(v1 + 176) + *(v1 + 64);
  v4 = *(v2 + 32);
  v5 = *(v4 + v3);
  v6 = __OFADD__(*(v1 + 232), v5);
  v7 = *(v1 + 232) + v5;
  if (v6)
  {
    BUG();
  }

  v8 = *(v1 + 240);
  v9 = *(v1 + 216);
  v10 = *(v1 + 200);
  v11 = *(v1 + 257) & 1;
  *(v3 + v4) = v7;
  specialized MLJob.reportProgress(completedUnitCount:phase:phaseUnitCount:metrics:)(v7, *(v3 + *(v2 + 28)), v10, v11, v8, specialized MLJob.currentPhase.setter);
  v12 = *(v3 + *(v2 + 32));
  v6 = __OFSUB__(v12, v9);
  v13 = v12 - v9;
  if (v6)
  {
    BUG();
  }

  v14 = *(v1 + 208) + *(v1 + 64);
  if (v13 < *(*(*(v1 + 80) + 24) + v14))
  {
    if (*(v1 + 232) <= 0)
    {
      *(v1 + 240);
      goto LABEL_11;
    }

    if (!*(v1 + 258))
    {
      *(v1 + 240);
      v24 = *(v1 + 216);
LABEL_19:
      if (![*(*(v1 + 56) + direct field offset for MLJob.progress) isCancelled])
      {
        *(v1 + 216) = v24;
        v41 = *(v1 + 64);
        v42 = *(v1 + 184);
        v43 = (v41 + *(v1 + 192));
        v44 = v41 + *(v1 + 176);
        v45 = v43[3];
        v46 = v43[4];
        v108 = __swift_project_boxed_opaque_existential_0Tm(v43, v45);
        v47 = *(*(v42 + 32) + v44);
        v48 = *(v46 + 56);
        v49 = (v48 + *v48);
        v50 = swift_task_alloc(v48[1]);
        *(v1 + 224) = v50;
        *v50 = v1;
        v50[1] = specialized MLTrainingSession.train(job:);
        return v49(v47, v45, v46);
      }

      goto LABEL_20;
    }
  }

  v108 = *(v3 + *(v2 + 32));
  v15 = *(v1 + 96);
  v16 = *(v1 + 72);
  v17 = *(v1 + 88);
  outlined init with copy of MLTrainingSessionParameters(v14, v17, type metadata accessor for MLTrainingSessionParameters);
  outlined init with take of URL?(v17, v16);
  if (__swift_getEnumTagSinglePayload(v16, 1, v15) == 1)
  {
    v18 = *(v1 + 72);
    *(v1 + 240);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v18, &demangling cache variable for type metadata for URL?);
LABEL_11:
    v24 = *(v1 + 216);
    v25 = *(v1 + 248);
    goto LABEL_12;
  }

  v19 = *(v1 + 184);
  v20 = *(v1 + 176) + *(v1 + 64);
  (*(*(v1 + 104) + 32))(*(v1 + 128), *(v1 + 72), *(v1 + 96));
  v21 = *(*(v19 + 28) + v20);
  v22 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<CVarArg>);
  v23 = swift_allocObject(v22, 112, 7);
  v23[2] = 2;
  v23[3] = 4;
  v107 = (v1 + 256);
  switch(v21)
  {
    case 0:
      v103 = 0x696C616974696E69;
      v104 = 0xEB0000000064657ALL;
      goto LABEL_28;
    case 1:
      v53 = 0x6974636172747865;
      goto LABEL_27;
    case 2:
      v104 = 0xE800000000000000;
      v52 = 0x676E696E69617274;
      goto LABEL_24;
    case 3:
      v53 = 0x697461756C617665;
LABEL_27:
      v103 = v53;
      v104 = 0xEA0000000000676ELL;
      goto LABEL_28;
    case 4:
      v104 = 0xEB00000000676E69;
      v52 = 0x636E657265666E69;
LABEL_24:
      v103 = v52;
LABEL_28:
      v106 = *(v1 + 248);
      v98 = *(v1 + 192);
      v105 = *(v1 + 184);
      v54 = *(v1 + 64);
      v100 = *(v1 + 120);
      v96 = (v54 + v98);
      v94 = v54 + *(v1 + 176);
      v23[7] = &type metadata for String;
      v23[8] = lazy protocol witness table accessor for type String and conformance String();
      v23[4] = v103;
      v23[5] = v104;
      v23[12] = &type metadata for Int;
      v23[13] = &protocol witness table for Int;
      v23[9] = v108;
      v55 = String.init(format:_:)(0xD000000000000012, ("ng a features checkpoint." + 0x8000000000000000), v23);
      v57 = v56;
      URL.appendingPathComponent(_:)(v55, v56);
      v57;
      v58 = *(v54 + v98 + 24);
      v59 = *(v54 + v98 + 32);
      __swift_project_boxed_opaque_existential_0Tm(v96, v58);
      v60 = v105;
      *(v1 + 256) = *(*(v105 + 28) + v94);
      v61 = (*(v59 + 72))(v100, v107, *(*(v60 + 32) + v94), v58, v59);
      if (v106)
      {
        v108 = v106;
        v62 = *(v1 + 128);
        v63 = *(v1 + 120);
        v64 = *(v1 + 96);
        v65 = *(v1 + 104);
        *(v1 + 240);
        v66 = *(v65 + 8);
        v66(v63, v64);
        v66(v62, v64);
        goto LABEL_30;
      }

      v72 = *(v1 + 240);
      if (v61)
      {
        v107 = *(v1 + 184);
        v73 = *(v1 + 152);
        v103 = *(v1 + 144);
        v104 = *(v1 + 136);
        v74 = *(v1 + 120);
        v75 = *(v1 + 112);
        v106 = *(v1 + 104);
        v105 = *(v1 + 64);
        v108 = 0;
        v93 = *(v1 + 96);
        v76 = v105 + *(v1 + 176);
        v77 = v106[2];
        v95 = v72;
        v77(v75, v74);
        v99 = *(v107[7] + v76);
        v101 = *(v107[8] + v76);
        v78 = v73;
        (v77)(v73, v75, v93);
        v79 = v104;
        v80 = v73;
        *(v73 + *(v104 + 20)) = v99;
        *(v73 + *(v79 + 24)) = v101;
        v81 = v79;
        v82 = v80;
        v97 = v80;
        Date.init()(v78);
        v106 = v106[1];
        (v106)(v75, v93);
        *(v82 + *(v81 + 32)) = v95;
        v83 = v107[11];
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        v84 = *(*(v83 + v76) + 16);
        specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(v84);
        v85 = *(v83 + v76);
        *(v85 + 16) = v84 + 1;
        outlined init with copy of MLTrainingSessionParameters(v97, v85 + ((*(v103 + 80) + 32) & ~*(v103 + 80)) + *(v103 + 72) * v84, type metadata accessor for MLCheckpoint);
        *(v83 + v76) = v85;
        v24 = *(v107[8] + v76);
        specialized MLTrainingSession.save()();
        v86 = *(v1 + 152);
        v107 = *(v1 + 128);
        v87 = *(v1 + 96);
        v105 = *(v1 + 120);
        if (v108)
        {
          outlined destroy of MLActivityClassifier.ModelParameters(v86, type metadata accessor for MLCheckpoint);
          (v106)(v105, v87);
          (v106)(v107, v87);
          goto LABEL_30;
        }

        PassthroughSubject.send(_:)(v86);
        outlined destroy of MLActivityClassifier.ModelParameters(v86, type metadata accessor for MLCheckpoint);
        (v106)(v105, v87);
        (v106)(v107, v87);
      }

      else
      {
        v88 = *(v1 + 128);
        v89 = *(v1 + 120);
        v90 = *(v1 + 96);
        v91 = *(v1 + 104);
        v72;
        v92 = *(v91 + 8);
        v92(v89, v90);
        v92(v88, v90);
        v24 = *(v1 + 216);
      }

      v25 = 0;
      break;
  }

LABEL_12:
  if (*(v1 + 258) != 1)
  {
    goto LABEL_19;
  }

  v26 = AnalyticsReporter.init()();
  v27 = *(v1 + 64);
  v108 = v25;
  if (!v26)
  {
    v28 = *(v27 + direct field offset for MLTrainingSession.modelType);
    if (v28 != 28)
    {
      v29 = *(v27 + direct field offset for MLTrainingSession.modelType);
      AnalyticsReporter.reportTemplateUsed(model:mode:)(v28);
      v30 = Date.timeIntervalSinceReferenceDate.getter();
      AnalyticsReporter.reportEventDuration(model:task:startTime:)(v29, __PAIR128__(0xE800000000000000, 0x676E696E69617254), v30);
      v27 = *(v1 + 64);
    }
  }

  v31 = (*(v1 + 192) + v27);
  specialized MLTrainingSession.transition(to:)(3, &demangling cache variable for type metadata for MLTrainingSession<MLStyleTransfer>.Metadata);
  v32 = v31[3];
  v33 = v31[4];
  v102 = 3;
  __swift_project_boxed_opaque_existential_0Tm(v31, v32);
  v34 = v108;
  (*(v33 + 40))(&v102, v32, v33);
  if (v34)
  {
    v108 = v34;
LABEL_30:
    v67 = *(v1 + 168);
    v68 = *(v1 + 160);
    v69 = *(v1 + 152);
    v70 = *(v1 + 128);
    v71 = *(v1 + 120);
    v105 = *(v1 + 112);
    v107 = *(v1 + 72);
    v106 = *(v1 + 88);
    v67;
    v68;
    v69;
    v70;
    v71;
    v105;
    v106;
    v107;
    v40 = *(v1 + 8);
    return v40();
  }

LABEL_20:
  v35 = *(v1 + 168);
  v36 = *(v1 + 160);
  v37 = *(v1 + 152);
  v38 = *(v1 + 128);
  v39 = *(v1 + 120);
  v106 = *(v1 + 112);
  v108 = *(v1 + 72);
  v107 = *(v1 + 88);
  v35;
  v36;
  v37;
  v38;
  v39;
  v106;
  v107;
  v108;
  v40 = *(v1 + 8);
  return v40();
}

{
  v54 = v0 | 0x1000000000000000;
  v53 = v1;
  v2 = v1[8];
  v3 = *(*v2 + 112);
  v1[22] = v3;
  v4 = v3 + v2;
  swift_beginAccess(v4, (v1 + 2), 1, 0);
  v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLLogisticRegressionClassifier>.Metadata);
  v1[23] = v5;
  v46 = v5;
  v45 = v4;
  v6 = *(*(v5 + 44) + v4);
  v1[5] = v6;
  v7 = v6[2];
  v48 = v1;
  v50 = v6;
  if (v7)
  {
    v52 = v1[17];
    v51 = v1[18];
    v47 = v6 + ((*(v51 + 80) + 32) & ~*(v51 + 80));

    while (1)
    {
      if (v7 > v6[2])
      {
        BUG();
      }

      --v7;
      v8 = v1[20];
      outlined init with copy of MLTrainingSessionParameters(&v47[v7 * *(v51 + 72)], v8, type metadata accessor for MLCheckpoint);
      switch(*(v8 + *(v52 + 20)))
      {
        case 0:
          v9 = 0x696C616974696E69;
          v10 = 0xEB0000000064657ALL;
          break;
        case 1:
          v9 = 0x6974636172747865;
          goto LABEL_9;
        case 2:
          v14 = v48[20];
          0;
          v1 = v48;
          outlined destroy of MLActivityClassifier.ModelParameters(v14, type metadata accessor for MLCheckpoint);
          LODWORD(v52) = 0;
          goto LABEL_17;
        case 3:
          v9 = 0x697461756C617665;
LABEL_9:
          v10 = 0xEA0000000000676ELL;
          break;
        case 4:
          v9 = 0x636E657265666E69;
          v10 = &loc_308EF - 0x14FFFFFFFF9B9A86;
          break;
      }

      v11 = v1[20];
      v12 = _stringCompareWithSmolCheck(_:_:expecting:)(v9, v10, 0x676E696E69617274, 0xE800000000000000, 0);
      v10;
      v13 = outlined destroy of MLActivityClassifier.ModelParameters(v11, type metadata accessor for MLCheckpoint);
      if (v12)
      {
        break;
      }

      v1 = v48;
      v6 = v50;
      if (!v7)
      {
        goto LABEL_14;
      }
    }

    LODWORD(v52) = 0;
    v1 = v48;
  }

  else
  {

LABEL_14:
    LOBYTE(v13) = 1;
    LODWORD(v52) = v13;
    v7 = 0;
  }

LABEL_17:
  v51 = v1[17];
  v15 = v1[21];
  v16 = swift_task_alloc(32);
  *(v16 + 16) = v1 + 5;
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lFxq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lyxs5NeverOqd_0_Isgnrzr_xSgAb2ERsd__Ri_d_0_r_0_lIetMgnrzo_Tpq5Si_8CreateML12MLCheckpointVTg5(closure #1 in BidirectionalCollection.last(where:)specialized partial apply, v16, v7, v52, (v1 + 6));
  v50;
  v16;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v51);
  v18 = v48[21];
  if (EnumTagSinglePayload == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v18, &demangling cache variable for type metadata for MLCheckpoint?);
    v51 = 0;
  }

  else
  {
    v51 = *(v18 + *(v48[17] + 24));
    outlined destroy of MLActivityClassifier.ModelParameters(v18, type metadata accessor for MLCheckpoint);
  }

  v50 = v48[7];
  v19 = v48[8];
  v20 = direct field offset for MLTrainingSession.delegate;
  v48[24] = direct field offset for MLTrainingSession.delegate;
  v21 = *(v19 + v20 + 24);
  v52 = *(v19 + v20 + 32);
  __swift_project_boxed_opaque_existential_0Tm((v19 + v20), v21);
  v49 = *(v45 + *(v46 + 28));
  v22 = (*(v52 + 32))(&v49, v21);
  LOBYTE(v21) = v23;
  v48[25] = v22;
  *(v48 + 257) = v23;
  v52 = *(v45 + *(v46 + 32));
  v24 = *(v45 + *(v46 + 28));
  v25 = lazy protocol witness table accessor for type MLProgress.Metric and conformance MLProgress.Metric();
  v26 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for MLProgress.Metric, &type metadata for Any + 8, v25);
  v27 = v22;
  v28 = v50;
  specialized MLJob.reportProgress(completedUnitCount:phase:phaseUnitCount:metrics:)(v52, v24, v27, v21 & 1, v26, specialized MLJob.currentPhase.setter);
  v26;
  if ([*(v28 + direct field offset for MLJob.progress) isCancelled])
  {
    v29 = v48[21];
    v30 = v48[20];
    v31 = v48[19];
    v32 = v48[16];
    v33 = v48[15];
    v51 = v48[14];
    v50 = v48[9];
    v52 = v48[11];
    v29;
    v30;
    v31;
    v32;
    v33;
    v51;
    v52;
    v50;
    return (v48[1])();
  }

  else
  {
    v48[26] = direct field offset for MLTrainingSession.parameters;
    v48[27] = v51;
    v35 = v48[8];
    v36 = v48[23];
    v37 = (v35 + v48[24]);
    v38 = v35 + v48[22];
    v39 = v37[3];
    v40 = v37[4];
    v50 = __swift_project_boxed_opaque_existential_0Tm(v37, v39);
    v41 = *(*(v36 + 32) + v38);
    v42 = *(v40 + 56);
    v43 = (v42 + *v42);
    v44 = swift_task_alloc(v42[1]);
    v48[28] = v44;
    *v44 = v48;
    v44[1] = specialized MLTrainingSession.train(job:);
    return v43(v41, v39, v40);
  }
}

{
  v110 = v0 | 0x1000000000000000;
  v109 = v1;
  v2 = *(v1 + 184);
  v3 = *(v1 + 176) + *(v1 + 64);
  v4 = *(v2 + 32);
  v5 = *(v4 + v3);
  v6 = __OFADD__(*(v1 + 232), v5);
  v7 = *(v1 + 232) + v5;
  if (v6)
  {
    BUG();
  }

  v8 = *(v1 + 240);
  v9 = *(v1 + 216);
  v10 = *(v1 + 200);
  v11 = *(v1 + 257) & 1;
  *(v3 + v4) = v7;
  specialized MLJob.reportProgress(completedUnitCount:phase:phaseUnitCount:metrics:)(v7, *(v3 + *(v2 + 28)), v10, v11, v8, specialized MLJob.currentPhase.setter);
  v12 = *(v3 + *(v2 + 32));
  v6 = __OFSUB__(v12, v9);
  v13 = v12 - v9;
  if (v6)
  {
    BUG();
  }

  v14 = *(v1 + 208) + *(v1 + 64);
  if (v13 < *(*(*(v1 + 80) + 24) + v14))
  {
    if (*(v1 + 232) <= 0)
    {
      *(v1 + 240);
      goto LABEL_11;
    }

    if (!*(v1 + 258))
    {
      *(v1 + 240);
      v24 = *(v1 + 216);
LABEL_19:
      if (![*(*(v1 + 56) + direct field offset for MLJob.progress) isCancelled])
      {
        *(v1 + 216) = v24;
        v41 = *(v1 + 64);
        v42 = *(v1 + 184);
        v43 = (v41 + *(v1 + 192));
        v44 = v41 + *(v1 + 176);
        v45 = v43[3];
        v46 = v43[4];
        v108 = __swift_project_boxed_opaque_existential_0Tm(v43, v45);
        v47 = *(*(v42 + 32) + v44);
        v48 = *(v46 + 56);
        v49 = (v48 + *v48);
        v50 = swift_task_alloc(v48[1]);
        *(v1 + 224) = v50;
        *v50 = v1;
        v50[1] = specialized MLTrainingSession.train(job:);
        return v49(v47, v45, v46);
      }

      goto LABEL_20;
    }
  }

  v108 = *(v3 + *(v2 + 32));
  v15 = *(v1 + 96);
  v16 = *(v1 + 72);
  v17 = *(v1 + 88);
  outlined init with copy of MLTrainingSessionParameters(v14, v17, type metadata accessor for MLTrainingSessionParameters);
  outlined init with take of URL?(v17, v16);
  if (__swift_getEnumTagSinglePayload(v16, 1, v15) == 1)
  {
    v18 = *(v1 + 72);
    *(v1 + 240);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v18, &demangling cache variable for type metadata for URL?);
LABEL_11:
    v24 = *(v1 + 216);
    v25 = *(v1 + 248);
    goto LABEL_12;
  }

  v19 = *(v1 + 184);
  v20 = *(v1 + 176) + *(v1 + 64);
  (*(*(v1 + 104) + 32))(*(v1 + 128), *(v1 + 72), *(v1 + 96));
  v21 = *(*(v19 + 28) + v20);
  v22 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<CVarArg>);
  v23 = swift_allocObject(v22, 112, 7);
  v23[2] = 2;
  v23[3] = 4;
  v107 = (v1 + 256);
  switch(v21)
  {
    case 0:
      v103 = 0x696C616974696E69;
      v104 = 0xEB0000000064657ALL;
      goto LABEL_28;
    case 1:
      v53 = 0x6974636172747865;
      goto LABEL_27;
    case 2:
      v104 = 0xE800000000000000;
      v52 = 0x676E696E69617274;
      goto LABEL_24;
    case 3:
      v53 = 0x697461756C617665;
LABEL_27:
      v103 = v53;
      v104 = 0xEA0000000000676ELL;
      goto LABEL_28;
    case 4:
      v104 = 0xEB00000000676E69;
      v52 = 0x636E657265666E69;
LABEL_24:
      v103 = v52;
LABEL_28:
      v106 = *(v1 + 248);
      v98 = *(v1 + 192);
      v105 = *(v1 + 184);
      v54 = *(v1 + 64);
      v100 = *(v1 + 120);
      v96 = (v54 + v98);
      v94 = v54 + *(v1 + 176);
      v23[7] = &type metadata for String;
      v23[8] = lazy protocol witness table accessor for type String and conformance String();
      v23[4] = v103;
      v23[5] = v104;
      v23[12] = &type metadata for Int;
      v23[13] = &protocol witness table for Int;
      v23[9] = v108;
      v55 = String.init(format:_:)(0xD000000000000012, ("ng a features checkpoint." + 0x8000000000000000), v23);
      v57 = v56;
      URL.appendingPathComponent(_:)(v55, v56);
      v57;
      v58 = *(v54 + v98 + 24);
      v59 = *(v54 + v98 + 32);
      __swift_project_boxed_opaque_existential_0Tm(v96, v58);
      v60 = v105;
      *(v1 + 256) = *(*(v105 + 28) + v94);
      v61 = (*(v59 + 72))(v100, v107, *(*(v60 + 32) + v94), v58, v59);
      if (v106)
      {
        v108 = v106;
        v62 = *(v1 + 128);
        v63 = *(v1 + 120);
        v64 = *(v1 + 96);
        v65 = *(v1 + 104);
        *(v1 + 240);
        v66 = *(v65 + 8);
        v66(v63, v64);
        v66(v62, v64);
        goto LABEL_30;
      }

      v72 = *(v1 + 240);
      if (v61)
      {
        v107 = *(v1 + 184);
        v73 = *(v1 + 152);
        v103 = *(v1 + 144);
        v104 = *(v1 + 136);
        v74 = *(v1 + 120);
        v75 = *(v1 + 112);
        v106 = *(v1 + 104);
        v105 = *(v1 + 64);
        v108 = 0;
        v93 = *(v1 + 96);
        v76 = v105 + *(v1 + 176);
        v77 = v106[2];
        v95 = v72;
        v77(v75, v74);
        v99 = *(v107[7] + v76);
        v101 = *(v107[8] + v76);
        v78 = v73;
        (v77)(v73, v75, v93);
        v79 = v104;
        v80 = v73;
        *(v73 + *(v104 + 20)) = v99;
        *(v73 + *(v79 + 24)) = v101;
        v81 = v79;
        v82 = v80;
        v97 = v80;
        Date.init()(v78);
        v106 = v106[1];
        (v106)(v75, v93);
        *(v82 + *(v81 + 32)) = v95;
        v83 = v107[11];
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        v84 = *(*(v83 + v76) + 16);
        specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(v84);
        v85 = *(v83 + v76);
        *(v85 + 16) = v84 + 1;
        outlined init with copy of MLTrainingSessionParameters(v97, v85 + ((*(v103 + 80) + 32) & ~*(v103 + 80)) + *(v103 + 72) * v84, type metadata accessor for MLCheckpoint);
        *(v83 + v76) = v85;
        v24 = *(v107[8] + v76);
        specialized MLTrainingSession.save()();
        v86 = *(v1 + 152);
        v107 = *(v1 + 128);
        v87 = *(v1 + 96);
        v105 = *(v1 + 120);
        if (v108)
        {
          outlined destroy of MLActivityClassifier.ModelParameters(v86, type metadata accessor for MLCheckpoint);
          (v106)(v105, v87);
          (v106)(v107, v87);
          goto LABEL_30;
        }

        PassthroughSubject.send(_:)(v86);
        outlined destroy of MLActivityClassifier.ModelParameters(v86, type metadata accessor for MLCheckpoint);
        (v106)(v105, v87);
        (v106)(v107, v87);
      }

      else
      {
        v88 = *(v1 + 128);
        v89 = *(v1 + 120);
        v90 = *(v1 + 96);
        v91 = *(v1 + 104);
        v72;
        v92 = *(v91 + 8);
        v92(v89, v90);
        v92(v88, v90);
        v24 = *(v1 + 216);
      }

      v25 = 0;
      break;
  }

LABEL_12:
  if (*(v1 + 258) != 1)
  {
    goto LABEL_19;
  }

  v26 = AnalyticsReporter.init()();
  v27 = *(v1 + 64);
  v108 = v25;
  if (!v26)
  {
    v28 = *(v27 + direct field offset for MLTrainingSession.modelType);
    if (v28 != 28)
    {
      v29 = *(v27 + direct field offset for MLTrainingSession.modelType);
      AnalyticsReporter.reportTemplateUsed(model:mode:)(v28);
      v30 = Date.timeIntervalSinceReferenceDate.getter();
      AnalyticsReporter.reportEventDuration(model:task:startTime:)(v29, __PAIR128__(0xE800000000000000, 0x676E696E69617254), v30);
      v27 = *(v1 + 64);
    }
  }

  v31 = (*(v1 + 192) + v27);
  specialized MLTrainingSession.transition(to:)(3, &demangling cache variable for type metadata for MLTrainingSession<MLLogisticRegressionClassifier>.Metadata);
  v32 = v31[3];
  v33 = v31[4];
  v102 = 3;
  __swift_project_boxed_opaque_existential_0Tm(v31, v32);
  v34 = v108;
  (*(v33 + 40))(&v102, v32, v33);
  if (v34)
  {
    v108 = v34;
LABEL_30:
    v67 = *(v1 + 168);
    v68 = *(v1 + 160);
    v69 = *(v1 + 152);
    v70 = *(v1 + 128);
    v71 = *(v1 + 120);
    v105 = *(v1 + 112);
    v107 = *(v1 + 72);
    v106 = *(v1 + 88);
    v67;
    v68;
    v69;
    v70;
    v71;
    v105;
    v106;
    v107;
    v40 = *(v1 + 8);
    return v40();
  }

LABEL_20:
  v35 = *(v1 + 168);
  v36 = *(v1 + 160);
  v37 = *(v1 + 152);
  v38 = *(v1 + 128);
  v39 = *(v1 + 120);
  v106 = *(v1 + 112);
  v108 = *(v1 + 72);
  v107 = *(v1 + 88);
  v35;
  v36;
  v37;
  v38;
  v39;
  v106;
  v107;
  v108;
  v40 = *(v1 + 8);
  return v40();
}

{
  v54 = v0 | 0x1000000000000000;
  v53 = v1;
  v2 = v1[8];
  v3 = *(*v2 + 112);
  v1[22] = v3;
  v4 = v3 + v2;
  swift_beginAccess(v4, (v1 + 2), 1, 0);
  v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLDecisionTreeRegressor>.Metadata);
  v1[23] = v5;
  v46 = v5;
  v45 = v4;
  v6 = *(*(v5 + 44) + v4);
  v1[5] = v6;
  v7 = v6[2];
  v48 = v1;
  v50 = v6;
  if (v7)
  {
    v52 = v1[17];
    v51 = v1[18];
    v47 = v6 + ((*(v51 + 80) + 32) & ~*(v51 + 80));

    while (1)
    {
      if (v7 > v6[2])
      {
        BUG();
      }

      --v7;
      v8 = v1[20];
      outlined init with copy of MLTrainingSessionParameters(&v47[v7 * *(v51 + 72)], v8, type metadata accessor for MLCheckpoint);
      switch(*(v8 + *(v52 + 20)))
      {
        case 0:
          v9 = 0x696C616974696E69;
          v10 = 0xEB0000000064657ALL;
          break;
        case 1:
          v9 = 0x6974636172747865;
          goto LABEL_9;
        case 2:
          v14 = v48[20];
          0;
          v1 = v48;
          outlined destroy of MLActivityClassifier.ModelParameters(v14, type metadata accessor for MLCheckpoint);
          LODWORD(v52) = 0;
          goto LABEL_17;
        case 3:
          v9 = 0x697461756C617665;
LABEL_9:
          v10 = 0xEA0000000000676ELL;
          break;
        case 4:
          v9 = 0x636E657265666E69;
          v10 = &loc_308EF - 0x14FFFFFFFF9B9A86;
          break;
      }

      v11 = v1[20];
      v12 = _stringCompareWithSmolCheck(_:_:expecting:)(v9, v10, 0x676E696E69617274, 0xE800000000000000, 0);
      v10;
      v13 = outlined destroy of MLActivityClassifier.ModelParameters(v11, type metadata accessor for MLCheckpoint);
      if (v12)
      {
        break;
      }

      v1 = v48;
      v6 = v50;
      if (!v7)
      {
        goto LABEL_14;
      }
    }

    LODWORD(v52) = 0;
    v1 = v48;
  }

  else
  {

LABEL_14:
    LOBYTE(v13) = 1;
    LODWORD(v52) = v13;
    v7 = 0;
  }

LABEL_17:
  v51 = v1[17];
  v15 = v1[21];
  v16 = swift_task_alloc(32);
  *(v16 + 16) = v1 + 5;
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lFxq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lyxs5NeverOqd_0_Isgnrzr_xSgAb2ERsd__Ri_d_0_r_0_lIetMgnrzo_Tpq5Si_8CreateML12MLCheckpointVTg5(closure #1 in BidirectionalCollection.last(where:)specialized partial apply, v16, v7, v52, (v1 + 6));
  v50;
  v16;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v51);
  v18 = v48[21];
  if (EnumTagSinglePayload == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v18, &demangling cache variable for type metadata for MLCheckpoint?);
    v51 = 0;
  }

  else
  {
    v51 = *(v18 + *(v48[17] + 24));
    outlined destroy of MLActivityClassifier.ModelParameters(v18, type metadata accessor for MLCheckpoint);
  }

  v50 = v48[7];
  v19 = v48[8];
  v20 = direct field offset for MLTrainingSession.delegate;
  v48[24] = direct field offset for MLTrainingSession.delegate;
  v21 = *(v19 + v20 + 24);
  v52 = *(v19 + v20 + 32);
  __swift_project_boxed_opaque_existential_0Tm((v19 + v20), v21);
  v49 = *(v45 + *(v46 + 28));
  v22 = (*(v52 + 32))(&v49, v21);
  LOBYTE(v21) = v23;
  v48[25] = v22;
  *(v48 + 257) = v23;
  v52 = *(v45 + *(v46 + 32));
  v24 = *(v45 + *(v46 + 28));
  v25 = lazy protocol witness table accessor for type MLProgress.Metric and conformance MLProgress.Metric();
  v26 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for MLProgress.Metric, &type metadata for Any + 8, v25);
  v27 = v22;
  v28 = v50;
  specialized MLJob.reportProgress(completedUnitCount:phase:phaseUnitCount:metrics:)(v52, v24, v27, v21 & 1, v26, specialized MLJob.currentPhase.setter);
  v26;
  if ([*(v28 + direct field offset for MLJob.progress) isCancelled])
  {
    v29 = v48[21];
    v30 = v48[20];
    v31 = v48[19];
    v32 = v48[16];
    v33 = v48[15];
    v51 = v48[14];
    v50 = v48[9];
    v52 = v48[11];
    v29;
    v30;
    v31;
    v32;
    v33;
    v51;
    v52;
    v50;
    return (v48[1])();
  }

  else
  {
    v48[26] = direct field offset for MLTrainingSession.parameters;
    v48[27] = v51;
    v35 = v48[8];
    v36 = v48[23];
    v37 = (v35 + v48[24]);
    v38 = v35 + v48[22];
    v39 = v37[3];
    v40 = v37[4];
    v50 = __swift_project_boxed_opaque_existential_0Tm(v37, v39);
    v41 = *(*(v36 + 32) + v38);
    v42 = *(v40 + 56);
    v43 = (v42 + *v42);
    v44 = swift_task_alloc(v42[1]);
    v48[28] = v44;
    *v44 = v48;
    v44[1] = specialized MLTrainingSession.train(job:);
    return v43(v41, v39, v40);
  }
}

{
  v110 = v0 | 0x1000000000000000;
  v109 = v1;
  v2 = *(v1 + 184);
  v3 = *(v1 + 176) + *(v1 + 64);
  v4 = *(v2 + 32);
  v5 = *(v4 + v3);
  v6 = __OFADD__(*(v1 + 232), v5);
  v7 = *(v1 + 232) + v5;
  if (v6)
  {
    BUG();
  }

  v8 = *(v1 + 240);
  v9 = *(v1 + 216);
  v10 = *(v1 + 200);
  v11 = *(v1 + 257) & 1;
  *(v3 + v4) = v7;
  specialized MLJob.reportProgress(completedUnitCount:phase:phaseUnitCount:metrics:)(v7, *(v3 + *(v2 + 28)), v10, v11, v8, specialized MLJob.currentPhase.setter);
  v12 = *(v3 + *(v2 + 32));
  v6 = __OFSUB__(v12, v9);
  v13 = v12 - v9;
  if (v6)
  {
    BUG();
  }

  v14 = *(v1 + 208) + *(v1 + 64);
  if (v13 < *(*(*(v1 + 80) + 24) + v14))
  {
    if (*(v1 + 232) <= 0)
    {
      *(v1 + 240);
      goto LABEL_11;
    }

    if (!*(v1 + 258))
    {
      *(v1 + 240);
      v24 = *(v1 + 216);
LABEL_19:
      if (![*(*(v1 + 56) + direct field offset for MLJob.progress) isCancelled])
      {
        *(v1 + 216) = v24;
        v41 = *(v1 + 64);
        v42 = *(v1 + 184);
        v43 = (v41 + *(v1 + 192));
        v44 = v41 + *(v1 + 176);
        v45 = v43[3];
        v46 = v43[4];
        v108 = __swift_project_boxed_opaque_existential_0Tm(v43, v45);
        v47 = *(*(v42 + 32) + v44);
        v48 = *(v46 + 56);
        v49 = (v48 + *v48);
        v50 = swift_task_alloc(v48[1]);
        *(v1 + 224) = v50;
        *v50 = v1;
        v50[1] = specialized MLTrainingSession.train(job:);
        return v49(v47, v45, v46);
      }

      goto LABEL_20;
    }
  }

  v108 = *(v3 + *(v2 + 32));
  v15 = *(v1 + 96);
  v16 = *(v1 + 72);
  v17 = *(v1 + 88);
  outlined init with copy of MLTrainingSessionParameters(v14, v17, type metadata accessor for MLTrainingSessionParameters);
  outlined init with take of URL?(v17, v16);
  if (__swift_getEnumTagSinglePayload(v16, 1, v15) == 1)
  {
    v18 = *(v1 + 72);
    *(v1 + 240);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v18, &demangling cache variable for type metadata for URL?);
LABEL_11:
    v24 = *(v1 + 216);
    v25 = *(v1 + 248);
    goto LABEL_12;
  }

  v19 = *(v1 + 184);
  v20 = *(v1 + 176) + *(v1 + 64);
  (*(*(v1 + 104) + 32))(*(v1 + 128), *(v1 + 72), *(v1 + 96));
  v21 = *(*(v19 + 28) + v20);
  v22 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<CVarArg>);
  v23 = swift_allocObject(v22, 112, 7);
  v23[2] = 2;
  v23[3] = 4;
  v107 = (v1 + 256);
  switch(v21)
  {
    case 0:
      v103 = 0x696C616974696E69;
      v104 = 0xEB0000000064657ALL;
      goto LABEL_28;
    case 1:
      v53 = 0x6974636172747865;
      goto LABEL_27;
    case 2:
      v104 = 0xE800000000000000;
      v52 = 0x676E696E69617274;
      goto LABEL_24;
    case 3:
      v53 = 0x697461756C617665;
LABEL_27:
      v103 = v53;
      v104 = 0xEA0000000000676ELL;
      goto LABEL_28;
    case 4:
      v104 = 0xEB00000000676E69;
      v52 = 0x636E657265666E69;
LABEL_24:
      v103 = v52;
LABEL_28:
      v106 = *(v1 + 248);
      v98 = *(v1 + 192);
      v105 = *(v1 + 184);
      v54 = *(v1 + 64);
      v100 = *(v1 + 120);
      v96 = (v54 + v98);
      v94 = v54 + *(v1 + 176);
      v23[7] = &type metadata for String;
      v23[8] = lazy protocol witness table accessor for type String and conformance String();
      v23[4] = v103;
      v23[5] = v104;
      v23[12] = &type metadata for Int;
      v23[13] = &protocol witness table for Int;
      v23[9] = v108;
      v55 = String.init(format:_:)(0xD000000000000012, ("ng a features checkpoint." + 0x8000000000000000), v23);
      v57 = v56;
      URL.appendingPathComponent(_:)(v55, v56);
      v57;
      v58 = *(v54 + v98 + 24);
      v59 = *(v54 + v98 + 32);
      __swift_project_boxed_opaque_existential_0Tm(v96, v58);
      v60 = v105;
      *(v1 + 256) = *(*(v105 + 28) + v94);
      v61 = (*(v59 + 72))(v100, v107, *(*(v60 + 32) + v94), v58, v59);
      if (v106)
      {
        v108 = v106;
        v62 = *(v1 + 128);
        v63 = *(v1 + 120);
        v64 = *(v1 + 96);
        v65 = *(v1 + 104);
        *(v1 + 240);
        v66 = *(v65 + 8);
        v66(v63, v64);
        v66(v62, v64);
        goto LABEL_30;
      }

      v72 = *(v1 + 240);
      if (v61)
      {
        v107 = *(v1 + 184);
        v73 = *(v1 + 152);
        v103 = *(v1 + 144);
        v104 = *(v1 + 136);
        v74 = *(v1 + 120);
        v75 = *(v1 + 112);
        v106 = *(v1 + 104);
        v105 = *(v1 + 64);
        v108 = 0;
        v93 = *(v1 + 96);
        v76 = v105 + *(v1 + 176);
        v77 = v106[2];
        v95 = v72;
        v77(v75, v74);
        v99 = *(v107[7] + v76);
        v101 = *(v107[8] + v76);
        v78 = v73;
        (v77)(v73, v75, v93);
        v79 = v104;
        v80 = v73;
        *(v73 + *(v104 + 20)) = v99;
        *(v73 + *(v79 + 24)) = v101;
        v81 = v79;
        v82 = v80;
        v97 = v80;
        Date.init()(v78);
        v106 = v106[1];
        (v106)(v75, v93);
        *(v82 + *(v81 + 32)) = v95;
        v83 = v107[11];
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        v84 = *(*(v83 + v76) + 16);
        specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(v84);
        v85 = *(v83 + v76);
        *(v85 + 16) = v84 + 1;
        outlined init with copy of MLTrainingSessionParameters(v97, v85 + ((*(v103 + 80) + 32) & ~*(v103 + 80)) + *(v103 + 72) * v84, type metadata accessor for MLCheckpoint);
        *(v83 + v76) = v85;
        v24 = *(v107[8] + v76);
        specialized MLTrainingSession.save()();
        v86 = *(v1 + 152);
        v107 = *(v1 + 128);
        v87 = *(v1 + 96);
        v105 = *(v1 + 120);
        if (v108)
        {
          outlined destroy of MLActivityClassifier.ModelParameters(v86, type metadata accessor for MLCheckpoint);
          (v106)(v105, v87);
          (v106)(v107, v87);
          goto LABEL_30;
        }

        PassthroughSubject.send(_:)(v86);
        outlined destroy of MLActivityClassifier.ModelParameters(v86, type metadata accessor for MLCheckpoint);
        (v106)(v105, v87);
        (v106)(v107, v87);
      }

      else
      {
        v88 = *(v1 + 128);
        v89 = *(v1 + 120);
        v90 = *(v1 + 96);
        v91 = *(v1 + 104);
        v72;
        v92 = *(v91 + 8);
        v92(v89, v90);
        v92(v88, v90);
        v24 = *(v1 + 216);
      }

      v25 = 0;
      break;
  }

LABEL_12:
  if (*(v1 + 258) != 1)
  {
    goto LABEL_19;
  }

  v26 = AnalyticsReporter.init()();
  v27 = *(v1 + 64);
  v108 = v25;
  if (!v26)
  {
    v28 = *(v27 + direct field offset for MLTrainingSession.modelType);
    if (v28 != 28)
    {
      v29 = *(v27 + direct field offset for MLTrainingSession.modelType);
      AnalyticsReporter.reportTemplateUsed(model:mode:)(v28);
      v30 = Date.timeIntervalSinceReferenceDate.getter();
      AnalyticsReporter.reportEventDuration(model:task:startTime:)(v29, __PAIR128__(0xE800000000000000, 0x676E696E69617254), v30);
      v27 = *(v1 + 64);
    }
  }

  v31 = (*(v1 + 192) + v27);
  specialized MLTrainingSession.transition(to:)(3, &demangling cache variable for type metadata for MLTrainingSession<MLDecisionTreeRegressor>.Metadata);
  v32 = v31[3];
  v33 = v31[4];
  v102 = 3;
  __swift_project_boxed_opaque_existential_0Tm(v31, v32);
  v34 = v108;
  (*(v33 + 40))(&v102, v32, v33);
  if (v34)
  {
    v108 = v34;
LABEL_30:
    v67 = *(v1 + 168);
    v68 = *(v1 + 160);
    v69 = *(v1 + 152);
    v70 = *(v1 + 128);
    v71 = *(v1 + 120);
    v105 = *(v1 + 112);
    v107 = *(v1 + 72);
    v106 = *(v1 + 88);
    v67;
    v68;
    v69;
    v70;
    v71;
    v105;
    v106;
    v107;
    v40 = *(v1 + 8);
    return v40();
  }

LABEL_20:
  v35 = *(v1 + 168);
  v36 = *(v1 + 160);
  v37 = *(v1 + 152);
  v38 = *(v1 + 128);
  v39 = *(v1 + 120);
  v106 = *(v1 + 112);
  v108 = *(v1 + 72);
  v107 = *(v1 + 88);
  v35;
  v36;
  v37;
  v38;
  v39;
  v106;
  v107;
  v108;
  v40 = *(v1 + 8);
  return v40();
}

{
  v54 = v0 | 0x1000000000000000;
  v53 = v1;
  v2 = v1[8];
  v3 = *(*v2 + 112);
  v1[22] = v3;
  v4 = v3 + v2;
  swift_beginAccess(v4, (v1 + 2), 1, 0);
  v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLActionClassifier>.Metadata);
  v1[23] = v5;
  v46 = v5;
  v45 = v4;
  v6 = *(*(v5 + 44) + v4);
  v1[5] = v6;
  v7 = v6[2];
  v48 = v1;
  v50 = v6;
  if (v7)
  {
    v52 = v1[9];
    v51 = v1[10];
    v47 = v6 + ((*(v51 + 80) + 32) & ~*(v51 + 80));

    while (1)
    {
      if (v7 > v6[2])
      {
        BUG();
      }

      --v7;
      v8 = v1[11];
      outlined init with copy of MLTrainingSessionParameters(&v47[v7 * *(v51 + 72)], v8, type metadata accessor for MLCheckpoint);
      switch(*(v8 + *(v52 + 20)))
      {
        case 0:
          v9 = 0x696C616974696E69;
          v10 = 0xEB0000000064657ALL;
          break;
        case 1:
          v9 = 0x6974636172747865;
          goto LABEL_9;
        case 2:
          v14 = v48[11];
          0;
          v1 = v48;
          outlined destroy of MLActivityClassifier.ModelParameters(v14, type metadata accessor for MLCheckpoint);
          LODWORD(v52) = 0;
          goto LABEL_17;
        case 3:
          v9 = 0x697461756C617665;
LABEL_9:
          v10 = 0xEA0000000000676ELL;
          break;
        case 4:
          v9 = 0x636E657265666E69;
          v10 = &loc_308EF - 0x14FFFFFFFF9B9A86;
          break;
      }

      v11 = v1[11];
      v12 = _stringCompareWithSmolCheck(_:_:expecting:)(v9, v10, 0x676E696E69617274, 0xE800000000000000, 0);
      v10;
      v13 = outlined destroy of MLActivityClassifier.ModelParameters(v11, type metadata accessor for MLCheckpoint);
      if (v12)
      {
        break;
      }

      v1 = v48;
      v6 = v50;
      if (!v7)
      {
        goto LABEL_14;
      }
    }

    LODWORD(v52) = 0;
    v1 = v48;
  }

  else
  {

LABEL_14:
    LOBYTE(v13) = 1;
    LODWORD(v52) = v13;
    v7 = 0;
  }

LABEL_17:
  v51 = v1[9];
  v15 = v1[21];
  v16 = swift_task_alloc(32);
  *(v16 + 16) = v1 + 5;
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lFxq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lyxs5NeverOqd_0_Isgnrzr_xSgAb2ERsd__Ri_d_0_r_0_lIetMgnrzo_Tpq5Si_8CreateML12MLCheckpointVTg5(closure #1 in BidirectionalCollection.last(where:)specialized partial apply, v16, v7, v52, (v1 + 6));
  v50;
  v16;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v51);
  v18 = v48[21];
  if (EnumTagSinglePayload == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v18, &demangling cache variable for type metadata for MLCheckpoint?);
    v51 = 0;
  }

  else
  {
    v51 = *(v18 + *(v48[9] + 24));
    outlined destroy of MLActivityClassifier.ModelParameters(v18, type metadata accessor for MLCheckpoint);
  }

  v50 = v48[7];
  v19 = v48[8];
  v20 = direct field offset for MLTrainingSession.delegate;
  v48[24] = direct field offset for MLTrainingSession.delegate;
  v21 = *(v19 + v20 + 24);
  v52 = *(v19 + v20 + 32);
  __swift_project_boxed_opaque_existential_0Tm((v19 + v20), v21);
  v49 = *(v45 + *(v46 + 28));
  v22 = (*(v52 + 32))(&v49, v21);
  LOBYTE(v21) = v23;
  v48[25] = v22;
  *(v48 + 257) = v23;
  v52 = *(v45 + *(v46 + 32));
  v24 = *(v45 + *(v46 + 28));
  v25 = lazy protocol witness table accessor for type MLProgress.Metric and conformance MLProgress.Metric();
  v26 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for MLProgress.Metric, &type metadata for Any + 8, v25);
  v27 = v22;
  v28 = v50;
  specialized MLJob.reportProgress(completedUnitCount:phase:phaseUnitCount:metrics:)(v52, v24, v27, v21 & 1, v26, specialized MLJob.currentPhase.setter);
  v26;
  if ([*(v28 + direct field offset for MLJob.progress) isCancelled])
  {
    v29 = v48[21];
    v30 = v48[20];
    v31 = v48[19];
    v32 = v48[18];
    v33 = v48[15];
    v51 = v48[13];
    v50 = v48[11];
    v52 = v48[12];
    v29;
    v30;
    v31;
    v32;
    v33;
    v51;
    v52;
    v50;
    return (v48[1])();
  }

  else
  {
    v48[26] = direct field offset for MLTrainingSession.parameters;
    v48[27] = v51;
    v35 = v48[8];
    v36 = v48[23];
    v37 = (v35 + v48[24]);
    v38 = v35 + v48[22];
    v39 = v37[3];
    v40 = v37[4];
    v50 = __swift_project_boxed_opaque_existential_0Tm(v37, v39);
    v41 = *(*(v36 + 32) + v38);
    v42 = *(v40 + 56);
    v43 = (v42 + *v42);
    v44 = swift_task_alloc(v42[1]);
    v48[28] = v44;
    *v44 = v48;
    v44[1] = specialized MLTrainingSession.train(job:);
    return v43(v41, v39, v40);
  }
}

{
  v106 = v0 | 0x1000000000000000;
  v105 = v1;
  v2 = *(v1 + 184);
  v3 = *(v1 + 176) + *(v1 + 64);
  v4 = *(v2 + 32);
  v5 = *(v4 + v3);
  v6 = __OFADD__(*(v1 + 232), v5);
  v7 = *(v1 + 232) + v5;
  if (v6)
  {
    BUG();
  }

  v8 = *(v1 + 240);
  v9 = *(v1 + 216);
  v10 = *(v1 + 200);
  v11 = *(v1 + 257) & 1;
  *(v3 + v4) = v7;
  specialized MLJob.reportProgress(completedUnitCount:phase:phaseUnitCount:metrics:)(v7, *(v3 + *(v2 + 28)), v10, v11, v8, specialized MLJob.currentPhase.setter);
  v12 = *(v3 + *(v2 + 32));
  v6 = __OFSUB__(v12, v9);
  v13 = v12 - v9;
  if (v6)
  {
    BUG();
  }

  v14 = *(v1 + 208) + *(v1 + 64);
  if (v13 < *(*(*(v1 + 112) + 24) + v14))
  {
    if (*(v1 + 232) <= 0)
    {
      *(v1 + 240);
      goto LABEL_11;
    }

    if (!*(v1 + 258))
    {
      *(v1 + 240);
      v24 = *(v1 + 216);
LABEL_19:
      if (![*(*(v1 + 56) + direct field offset for MLJob.progress) isCancelled])
      {
        *(v1 + 216) = v24;
        v41 = *(v1 + 64);
        v42 = *(v1 + 184);
        v43 = (v41 + *(v1 + 192));
        v44 = v41 + *(v1 + 176);
        v45 = v43[3];
        v46 = v43[4];
        v104 = __swift_project_boxed_opaque_existential_0Tm(v43, v45);
        v47 = *(*(v42 + 32) + v44);
        v48 = *(v46 + 56);
        v49 = (v48 + *v48);
        v50 = swift_task_alloc(v48[1]);
        *(v1 + 224) = v50;
        *v50 = v1;
        v50[1] = specialized MLTrainingSession.train(job:);
        return v49(v47, v45, v46);
      }

      goto LABEL_20;
    }
  }

  v104 = *(v3 + *(v2 + 32));
  v15 = *(v1 + 128);
  v16 = *(v1 + 104);
  v17 = *(v1 + 120);
  outlined init with copy of MLTrainingSessionParameters(v14, v17, type metadata accessor for MLTrainingSessionParameters);
  outlined init with take of URL?(v17, v16);
  if (__swift_getEnumTagSinglePayload(v16, 1, v15) == 1)
  {
    v18 = *(v1 + 104);
    *(v1 + 240);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v18, &demangling cache variable for type metadata for URL?);
LABEL_11:
    v24 = *(v1 + 216);
    v25 = *(v1 + 248);
    goto LABEL_12;
  }

  v19 = *(v1 + 184);
  v20 = *(v1 + 176) + *(v1 + 64);
  (*(*(v1 + 136) + 32))(*(v1 + 160), *(v1 + 104), *(v1 + 128));
  v21 = *(*(v19 + 28) + v20);
  v22 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<CVarArg>);
  v23 = swift_allocObject(v22, 112, 7);
  v23[2] = 2;
  v23[3] = 4;
  v103 = (v1 + 256);
  switch(v21)
  {
    case 0:
      v99 = 0x696C616974696E69;
      v100 = 0xEB0000000064657ALL;
      goto LABEL_28;
    case 1:
      v53 = 0x6974636172747865;
      goto LABEL_27;
    case 2:
      v100 = 0xE800000000000000;
      v52 = 0x676E696E69617274;
      goto LABEL_24;
    case 3:
      v53 = 0x697461756C617665;
LABEL_27:
      v99 = v53;
      v100 = 0xEA0000000000676ELL;
      goto LABEL_28;
    case 4:
      v100 = 0xEB00000000676E69;
      v52 = 0x636E657265666E69;
LABEL_24:
      v99 = v52;
LABEL_28:
      v102 = *(v1 + 248);
      v94 = *(v1 + 192);
      v101 = *(v1 + 184);
      v54 = *(v1 + 64);
      v96 = *(v1 + 152);
      v91 = (v54 + v94);
      v90 = v54 + *(v1 + 176);
      v23[7] = &type metadata for String;
      v23[8] = lazy protocol witness table accessor for type String and conformance String();
      v23[4] = v99;
      v23[5] = v100;
      v23[12] = &type metadata for Int;
      v23[13] = &protocol witness table for Int;
      v23[9] = v104;
      v55 = String.init(format:_:)(0xD000000000000012, ("ng a features checkpoint." + 0x8000000000000000), v23);
      v57 = v56;
      URL.appendingPathComponent(_:)(v55, v56);
      v57;
      v58 = *(v54 + v94 + 24);
      v59 = *(v54 + v94 + 32);
      __swift_project_boxed_opaque_existential_0Tm(v91, v58);
      v60 = v101;
      *(v1 + 256) = *(*(v101 + 28) + v90);
      v61 = (*(v59 + 72))(v96, v103, *(*(v60 + 32) + v90), v58, v59);
      if (v102)
      {
        v104 = v102;
        v62 = *(v1 + 160);
        v63 = *(v1 + 152);
        v64 = *(v1 + 128);
        v65 = *(v1 + 136);
        *(v1 + 240);
        v66 = *(v65 + 8);
        v66(v63, v64);
        v66(v62, v64);
        goto LABEL_30;
      }

      v72 = *(v1 + 240);
      if (v61)
      {
        v103 = *(v1 + 184);
        v73 = *(v1 + 152);
        v74 = *(v1 + 144);
        v102 = *(v1 + 136);
        v104 = 0;
        v89 = *(v1 + 128);
        v75 = *(v1 + 96);
        v99 = *(v1 + 80);
        v101 = *(v1 + 64);
        v93 = *(v1 + 72);
        v76 = v101 + *(v1 + 176);
        v77 = v102[2];
        v100 = v74;
        v77(v74, v73);
        v95 = *(v103[7] + v76);
        v97 = *(v103[8] + v76);
        (v77)(v75, v74, v89);
        *(v75 + v93[5]) = v95;
        *(v75 + v93[6]) = v97;
        v92 = v75;
        Date.init()(v75);
        v102 = v102[1];
        (v102)(v100, v89);
        *(v75 + v93[8]) = v72;
        v78 = v103[11];
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        v79 = *(*(v78 + v76) + 16);
        specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(v79);
        v80 = *(v78 + v76);
        *(v80 + 16) = v79 + 1;
        outlined init with copy of MLTrainingSessionParameters(v92, v80 + ((*(v99 + 80) + 32) & ~*(v99 + 80)) + *(v99 + 72) * v79, type metadata accessor for MLCheckpoint);
        *(v78 + v76) = v80;
        v24 = *(v103[8] + v76);
        specialized MLTrainingSession.save()();
        v103 = *(v1 + 160);
        v101 = *(v1 + 152);
        v81 = *(v1 + 96);
        v82 = *(v1 + 128);
        if (v104)
        {
          outlined destroy of MLActivityClassifier.ModelParameters(v81, type metadata accessor for MLCheckpoint);
          (v102)(v101, v82);
          (v102)(v103, v82);
          goto LABEL_30;
        }

        v88 = *(v1 + 128);
        PassthroughSubject.send(_:)(*(v1 + 96));
        outlined destroy of MLActivityClassifier.ModelParameters(v81, type metadata accessor for MLCheckpoint);
        (v102)(v101, v88);
        (v102)(v103, v88);
      }

      else
      {
        v83 = *(v1 + 160);
        v84 = *(v1 + 152);
        v85 = *(v1 + 128);
        v86 = *(v1 + 136);
        v72;
        v87 = *(v86 + 8);
        v87(v84, v85);
        v87(v83, v85);
        v24 = *(v1 + 216);
      }

      v25 = 0;
      break;
  }

LABEL_12:
  if (*(v1 + 258) != 1)
  {
    goto LABEL_19;
  }

  v26 = AnalyticsReporter.init()();
  v27 = *(v1 + 64);
  v104 = v25;
  if (!v26)
  {
    v28 = *(v27 + direct field offset for MLTrainingSession.modelType);
    if (v28 != 28)
    {
      v29 = *(v27 + direct field offset for MLTrainingSession.modelType);
      AnalyticsReporter.reportTemplateUsed(model:mode:)(v28);
      v30 = Date.timeIntervalSinceReferenceDate.getter();
      AnalyticsReporter.reportEventDuration(model:task:startTime:)(v29, __PAIR128__(0xE800000000000000, 0x676E696E69617254), v30);
      v27 = *(v1 + 64);
    }
  }

  v31 = (*(v1 + 192) + v27);
  specialized MLTrainingSession.transition(to:)(3, &demangling cache variable for type metadata for MLTrainingSession<MLActionClassifier>.Metadata);
  v32 = v31[3];
  v33 = v31[4];
  v98 = 3;
  __swift_project_boxed_opaque_existential_0Tm(v31, v32);
  v34 = v104;
  (*(v33 + 40))(&v98, v32, v33);
  if (v34)
  {
    v104 = v34;
LABEL_30:
    v67 = *(v1 + 168);
    v68 = *(v1 + 160);
    v69 = *(v1 + 152);
    v70 = *(v1 + 144);
    v71 = *(v1 + 120);
    v101 = *(v1 + 104);
    v103 = *(v1 + 88);
    v102 = *(v1 + 96);
    v67;
    v68;
    v69;
    v70;
    v71;
    v101;
    v102;
    v103;
    v40 = *(v1 + 8);
    return v40();
  }

LABEL_20:
  v35 = *(v1 + 168);
  v36 = *(v1 + 160);
  v37 = *(v1 + 152);
  v38 = *(v1 + 144);
  v39 = *(v1 + 120);
  v102 = *(v1 + 104);
  v104 = *(v1 + 88);
  v103 = *(v1 + 96);
  v35;
  v36;
  v37;
  v38;
  v39;
  v102;
  v103;
  v104;
  v40 = *(v1 + 8);
  return v40();
}

{
  v54 = v0 | 0x1000000000000000;
  v53 = v1;
  v2 = v1[8];
  v3 = *(*v2 + 112);
  v1[22] = v3;
  v4 = v3 + v2;
  swift_beginAccess(v4, (v1 + 2), 1, 0);
  v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLHandActionClassifier>.Metadata);
  v1[23] = v5;
  v46 = v5;
  v45 = v4;
  v6 = *(*(v5 + 44) + v4);
  v1[5] = v6;
  v7 = v6[2];
  v48 = v1;
  v50 = v6;
  if (v7)
  {
    v52 = v1[9];
    v51 = v1[10];
    v47 = v6 + ((*(v51 + 80) + 32) & ~*(v51 + 80));

    while (1)
    {
      if (v7 > v6[2])
      {
        BUG();
      }

      --v7;
      v8 = v1[11];
      outlined init with copy of MLTrainingSessionParameters(&v47[v7 * *(v51 + 72)], v8, type metadata accessor for MLCheckpoint);
      switch(*(v8 + *(v52 + 20)))
      {
        case 0:
          v9 = 0x696C616974696E69;
          v10 = 0xEB0000000064657ALL;
          break;
        case 1:
          v9 = 0x6974636172747865;
          goto LABEL_9;
        case 2:
          v14 = v48[11];
          0;
          v1 = v48;
          outlined destroy of MLActivityClassifier.ModelParameters(v14, type metadata accessor for MLCheckpoint);
          LODWORD(v52) = 0;
          goto LABEL_17;
        case 3:
          v9 = 0x697461756C617665;
LABEL_9:
          v10 = 0xEA0000000000676ELL;
          break;
        case 4:
          v9 = 0x636E657265666E69;
          v10 = &loc_308EF - 0x14FFFFFFFF9B9A86;
          break;
      }

      v11 = v1[11];
      v12 = _stringCompareWithSmolCheck(_:_:expecting:)(v9, v10, 0x676E696E69617274, 0xE800000000000000, 0);
      v10;
      v13 = outlined destroy of MLActivityClassifier.ModelParameters(v11, type metadata accessor for MLCheckpoint);
      if (v12)
      {
        break;
      }

      v1 = v48;
      v6 = v50;
      if (!v7)
      {
        goto LABEL_14;
      }
    }

    LODWORD(v52) = 0;
    v1 = v48;
  }

  else
  {

LABEL_14:
    LOBYTE(v13) = 1;
    LODWORD(v52) = v13;
    v7 = 0;
  }

LABEL_17:
  v51 = v1[9];
  v15 = v1[21];
  v16 = swift_task_alloc(32);
  *(v16 + 16) = v1 + 5;
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lFxq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lyxs5NeverOqd_0_Isgnrzr_xSgAb2ERsd__Ri_d_0_r_0_lIetMgnrzo_Tpq5Si_8CreateML12MLCheckpointVTg5(closure #1 in BidirectionalCollection.last(where:)specialized partial apply, v16, v7, v52, (v1 + 6));
  v50;
  v16;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v51);
  v18 = v48[21];
  if (EnumTagSinglePayload == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v18, &demangling cache variable for type metadata for MLCheckpoint?);
    v51 = 0;
  }

  else
  {
    v51 = *(v18 + *(v48[9] + 24));
    outlined destroy of MLActivityClassifier.ModelParameters(v18, type metadata accessor for MLCheckpoint);
  }

  v50 = v48[7];
  v19 = v48[8];
  v20 = direct field offset for MLTrainingSession.delegate;
  v48[24] = direct field offset for MLTrainingSession.delegate;
  v21 = *(v19 + v20 + 24);
  v52 = *(v19 + v20 + 32);
  __swift_project_boxed_opaque_existential_0Tm((v19 + v20), v21);
  v49 = *(v45 + *(v46 + 28));
  v22 = (*(v52 + 32))(&v49, v21);
  LOBYTE(v21) = v23;
  v48[25] = v22;
  *(v48 + 257) = v23;
  v52 = *(v45 + *(v46 + 32));
  v24 = *(v45 + *(v46 + 28));
  v25 = lazy protocol witness table accessor for type MLProgress.Metric and conformance MLProgress.Metric();
  v26 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for MLProgress.Metric, &type metadata for Any + 8, v25);
  v27 = v22;
  v28 = v50;
  specialized MLJob.reportProgress(completedUnitCount:phase:phaseUnitCount:metrics:)(v52, v24, v27, v21 & 1, v26, specialized MLJob.currentPhase.setter);
  v26;
  if ([*(v28 + direct field offset for MLJob.progress) isCancelled])
  {
    v29 = v48[21];
    v30 = v48[20];
    v31 = v48[19];
    v32 = v48[18];
    v33 = v48[15];
    v51 = v48[13];
    v50 = v48[11];
    v52 = v48[12];
    v29;
    v30;
    v31;
    v32;
    v33;
    v51;
    v52;
    v50;
    return (v48[1])();
  }

  else
  {
    v48[26] = direct field offset for MLTrainingSession.parameters;
    v48[27] = v51;
    v35 = v48[8];
    v36 = v48[23];
    v37 = (v35 + v48[24]);
    v38 = v35 + v48[22];
    v39 = v37[3];
    v40 = v37[4];
    v50 = __swift_project_boxed_opaque_existential_0Tm(v37, v39);
    v41 = *(*(v36 + 32) + v38);
    v42 = *(v40 + 56);
    v43 = (v42 + *v42);
    v44 = swift_task_alloc(v42[1]);
    v48[28] = v44;
    *v44 = v48;
    v44[1] = specialized MLTrainingSession.train(job:);
    return v43(v41, v39, v40);
  }
}

{
  v106 = v0 | 0x1000000000000000;
  v105 = v1;
  v2 = *(v1 + 184);
  v3 = *(v1 + 176) + *(v1 + 64);
  v4 = *(v2 + 32);
  v5 = *(v4 + v3);
  v6 = __OFADD__(*(v1 + 232), v5);
  v7 = *(v1 + 232) + v5;
  if (v6)
  {
    BUG();
  }

  v8 = *(v1 + 240);
  v9 = *(v1 + 216);
  v10 = *(v1 + 200);
  v11 = *(v1 + 257) & 1;
  *(v3 + v4) = v7;
  specialized MLJob.reportProgress(completedUnitCount:phase:phaseUnitCount:metrics:)(v7, *(v3 + *(v2 + 28)), v10, v11, v8, specialized MLJob.currentPhase.setter);
  v12 = *(v3 + *(v2 + 32));
  v6 = __OFSUB__(v12, v9);
  v13 = v12 - v9;
  if (v6)
  {
    BUG();
  }

  v14 = *(v1 + 208) + *(v1 + 64);
  if (v13 < *(*(*(v1 + 112) + 24) + v14))
  {
    if (*(v1 + 232) <= 0)
    {
      *(v1 + 240);
      goto LABEL_11;
    }

    if (!*(v1 + 258))
    {
      *(v1 + 240);
      v24 = *(v1 + 216);
LABEL_19:
      if (![*(*(v1 + 56) + direct field offset for MLJob.progress) isCancelled])
      {
        *(v1 + 216) = v24;
        v41 = *(v1 + 64);
        v42 = *(v1 + 184);
        v43 = (v41 + *(v1 + 192));
        v44 = v41 + *(v1 + 176);
        v45 = v43[3];
        v46 = v43[4];
        v104 = __swift_project_boxed_opaque_existential_0Tm(v43, v45);
        v47 = *(*(v42 + 32) + v44);
        v48 = *(v46 + 56);
        v49 = (v48 + *v48);
        v50 = swift_task_alloc(v48[1]);
        *(v1 + 224) = v50;
        *v50 = v1;
        v50[1] = specialized MLTrainingSession.train(job:);
        return v49(v47, v45, v46);
      }

      goto LABEL_20;
    }
  }

  v104 = *(v3 + *(v2 + 32));
  v15 = *(v1 + 128);
  v16 = *(v1 + 104);
  v17 = *(v1 + 120);
  outlined init with copy of MLTrainingSessionParameters(v14, v17, type metadata accessor for MLTrainingSessionParameters);
  outlined init with take of URL?(v17, v16);
  if (__swift_getEnumTagSinglePayload(v16, 1, v15) == 1)
  {
    v18 = *(v1 + 104);
    *(v1 + 240);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v18, &demangling cache variable for type metadata for URL?);
LABEL_11:
    v24 = *(v1 + 216);
    v25 = *(v1 + 248);
    goto LABEL_12;
  }

  v19 = *(v1 + 184);
  v20 = *(v1 + 176) + *(v1 + 64);
  (*(*(v1 + 136) + 32))(*(v1 + 160), *(v1 + 104), *(v1 + 128));
  v21 = *(*(v19 + 28) + v20);
  v22 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<CVarArg>);
  v23 = swift_allocObject(v22, 112, 7);
  v23[2] = 2;
  v23[3] = 4;
  v103 = (v1 + 256);
  switch(v21)
  {
    case 0:
      v99 = 0x696C616974696E69;
      v100 = 0xEB0000000064657ALL;
      goto LABEL_28;
    case 1:
      v53 = 0x6974636172747865;
      goto LABEL_27;
    case 2:
      v100 = 0xE800000000000000;
      v52 = 0x676E696E69617274;
      goto LABEL_24;
    case 3:
      v53 = 0x697461756C617665;
LABEL_27:
      v99 = v53;
      v100 = 0xEA0000000000676ELL;
      goto LABEL_28;
    case 4:
      v100 = 0xEB00000000676E69;
      v52 = 0x636E657265666E69;
LABEL_24:
      v99 = v52;
LABEL_28:
      v102 = *(v1 + 248);
      v94 = *(v1 + 192);
      v101 = *(v1 + 184);
      v54 = *(v1 + 64);
      v96 = *(v1 + 152);
      v91 = (v54 + v94);
      v90 = v54 + *(v1 + 176);
      v23[7] = &type metadata for String;
      v23[8] = lazy protocol witness table accessor for type String and conformance String();
      v23[4] = v99;
      v23[5] = v100;
      v23[12] = &type metadata for Int;
      v23[13] = &protocol witness table for Int;
      v23[9] = v104;
      v55 = String.init(format:_:)(0xD000000000000012, ("ng a features checkpoint." + 0x8000000000000000), v23);
      v57 = v56;
      URL.appendingPathComponent(_:)(v55, v56);
      v57;
      v58 = *(v54 + v94 + 24);
      v59 = *(v54 + v94 + 32);
      __swift_project_boxed_opaque_existential_0Tm(v91, v58);
      v60 = v101;
      *(v1 + 256) = *(*(v101 + 28) + v90);
      v61 = (*(v59 + 72))(v96, v103, *(*(v60 + 32) + v90), v58, v59);
      if (v102)
      {
        v104 = v102;
        v62 = *(v1 + 160);
        v63 = *(v1 + 152);
        v64 = *(v1 + 128);
        v65 = *(v1 + 136);
        *(v1 + 240);
        v66 = *(v65 + 8);
        v66(v63, v64);
        v66(v62, v64);
        goto LABEL_30;
      }

      v72 = *(v1 + 240);
      if (v61)
      {
        v103 = *(v1 + 184);
        v73 = *(v1 + 152);
        v74 = *(v1 + 144);
        v102 = *(v1 + 136);
        v104 = 0;
        v89 = *(v1 + 128);
        v75 = *(v1 + 96);
        v99 = *(v1 + 80);
        v101 = *(v1 + 64);
        v93 = *(v1 + 72);
        v76 = v101 + *(v1 + 176);
        v77 = v102[2];
        v100 = v74;
        v77(v74, v73);
        v95 = *(v103[7] + v76);
        v97 = *(v103[8] + v76);
        (v77)(v75, v74, v89);
        *(v75 + v93[5]) = v95;
        *(v75 + v93[6]) = v97;
        v92 = v75;
        Date.init()(v75);
        v102 = v102[1];
        (v102)(v100, v89);
        *(v75 + v93[8]) = v72;
        v78 = v103[11];
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        v79 = *(*(v78 + v76) + 16);
        specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(v79);
        v80 = *(v78 + v76);
        *(v80 + 16) = v79 + 1;
        outlined init with copy of MLTrainingSessionParameters(v92, v80 + ((*(v99 + 80) + 32) & ~*(v99 + 80)) + *(v99 + 72) * v79, type metadata accessor for MLCheckpoint);
        *(v78 + v76) = v80;
        v24 = *(v103[8] + v76);
        specialized MLTrainingSession.save()();
        v103 = *(v1 + 160);
        v101 = *(v1 + 152);
        v81 = *(v1 + 96);
        v82 = *(v1 + 128);
        if (v104)
        {
          outlined destroy of MLActivityClassifier.ModelParameters(v81, type metadata accessor for MLCheckpoint);
          (v102)(v101, v82);
          (v102)(v103, v82);
          goto LABEL_30;
        }

        v88 = *(v1 + 128);
        PassthroughSubject.send(_:)(*(v1 + 96));
        outlined destroy of MLActivityClassifier.ModelParameters(v81, type metadata accessor for MLCheckpoint);
        (v102)(v101, v88);
        (v102)(v103, v88);
      }

      else
      {
        v83 = *(v1 + 160);
        v84 = *(v1 + 152);
        v85 = *(v1 + 128);
        v86 = *(v1 + 136);
        v72;
        v87 = *(v86 + 8);
        v87(v84, v85);
        v87(v83, v85);
        v24 = *(v1 + 216);
      }

      v25 = 0;
      break;
  }

LABEL_12:
  if (*(v1 + 258) != 1)
  {
    goto LABEL_19;
  }

  v26 = AnalyticsReporter.init()();
  v27 = *(v1 + 64);
  v104 = v25;
  if (!v26)
  {
    v28 = *(v27 + direct field offset for MLTrainingSession.modelType);
    if (v28 != 28)
    {
      v29 = *(v27 + direct field offset for MLTrainingSession.modelType);
      AnalyticsReporter.reportTemplateUsed(model:mode:)(v28);
      v30 = Date.timeIntervalSinceReferenceDate.getter();
      AnalyticsReporter.reportEventDuration(model:task:startTime:)(v29, __PAIR128__(0xE800000000000000, 0x676E696E69617254), v30);
      v27 = *(v1 + 64);
    }
  }

  v31 = (*(v1 + 192) + v27);
  specialized MLTrainingSession.transition(to:)(3, &demangling cache variable for type metadata for MLTrainingSession<MLHandActionClassifier>.Metadata);
  v32 = v31[3];
  v33 = v31[4];
  v98 = 3;
  __swift_project_boxed_opaque_existential_0Tm(v31, v32);
  v34 = v104;
  (*(v33 + 40))(&v98, v32, v33);
  if (v34)
  {
    v104 = v34;
LABEL_30:
    v67 = *(v1 + 168);
    v68 = *(v1 + 160);
    v69 = *(v1 + 152);
    v70 = *(v1 + 144);
    v71 = *(v1 + 120);
    v101 = *(v1 + 104);
    v103 = *(v1 + 88);
    v102 = *(v1 + 96);
    v67;
    v68;
    v69;
    v70;
    v71;
    v101;
    v102;
    v103;
    v40 = *(v1 + 8);
    return v40();
  }

LABEL_20:
  v35 = *(v1 + 168);
  v36 = *(v1 + 160);
  v37 = *(v1 + 152);
  v38 = *(v1 + 144);
  v39 = *(v1 + 120);
  v102 = *(v1 + 104);
  v104 = *(v1 + 88);
  v103 = *(v1 + 96);
  v35;
  v36;
  v37;
  v38;
  v39;
  v102;
  v103;
  v104;
  v40 = *(v1 + 8);
  return v40();
}

{
  v54 = v0 | 0x1000000000000000;
  v53 = v1;
  v2 = v1[8];
  v3 = *(*v2 + 112);
  v1[22] = v3;
  v4 = v3 + v2;
  swift_beginAccess(v4, (v1 + 2), 1, 0);
  v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLRandomForestClassifier>.Metadata);
  v1[23] = v5;
  v46 = v5;
  v45 = v4;
  v6 = *(*(v5 + 44) + v4);
  v1[5] = v6;
  v7 = v6[2];
  v48 = v1;
  v50 = v6;
  if (v7)
  {
    v52 = v1[9];
    v51 = v1[10];
    v47 = v6 + ((*(v51 + 80) + 32) & ~*(v51 + 80));

    while (1)
    {
      if (v7 > v6[2])
      {
        BUG();
      }

      --v7;
      v8 = v1[11];
      outlined init with copy of MLTrainingSessionParameters(&v47[v7 * *(v51 + 72)], v8, type metadata accessor for MLCheckpoint);
      switch(*(v8 + *(v52 + 20)))
      {
        case 0:
          v9 = 0x696C616974696E69;
          v10 = 0xEB0000000064657ALL;
          break;
        case 1:
          v9 = 0x6974636172747865;
          goto LABEL_9;
        case 2:
          v14 = v48[11];
          0;
          v1 = v48;
          outlined destroy of MLActivityClassifier.ModelParameters(v14, type metadata accessor for MLCheckpoint);
          LODWORD(v52) = 0;
          goto LABEL_17;
        case 3:
          v9 = 0x697461756C617665;
LABEL_9:
          v10 = 0xEA0000000000676ELL;
          break;
        case 4:
          v9 = 0x636E657265666E69;
          v10 = &loc_308EF - 0x14FFFFFFFF9B9A86;
          break;
      }

      v11 = v1[11];
      v12 = _stringCompareWithSmolCheck(_:_:expecting:)(v9, v10, 0x676E696E69617274, 0xE800000000000000, 0);
      v10;
      v13 = outlined destroy of MLActivityClassifier.ModelParameters(v11, type metadata accessor for MLCheckpoint);
      if (v12)
      {
        break;
      }

      v1 = v48;
      v6 = v50;
      if (!v7)
      {
        goto LABEL_14;
      }
    }

    LODWORD(v52) = 0;
    v1 = v48;
  }

  else
  {

LABEL_14:
    LOBYTE(v13) = 1;
    LODWORD(v52) = v13;
    v7 = 0;
  }

LABEL_17:
  v51 = v1[9];
  v15 = v1[21];
  v16 = swift_task_alloc(32);
  *(v16 + 16) = v1 + 5;
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lFxq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lyxs5NeverOqd_0_Isgnrzr_xSgAb2ERsd__Ri_d_0_r_0_lIetMgnrzo_Tpq5Si_8CreateML12MLCheckpointVTg5(closure #1 in BidirectionalCollection.last(where:)specialized partial apply, v16, v7, v52, (v1 + 6));
  v50;
  v16;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v51);
  v18 = v48[21];
  if (EnumTagSinglePayload == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v18, &demangling cache variable for type metadata for MLCheckpoint?);
    v51 = 0;
  }

  else
  {
    v51 = *(v18 + *(v48[9] + 24));
    outlined destroy of MLActivityClassifier.ModelParameters(v18, type metadata accessor for MLCheckpoint);
  }

  v50 = v48[7];
  v19 = v48[8];
  v20 = direct field offset for MLTrainingSession.delegate;
  v48[24] = direct field offset for MLTrainingSession.delegate;
  v21 = *(v19 + v20 + 24);
  v52 = *(v19 + v20 + 32);
  __swift_project_boxed_opaque_existential_0Tm((v19 + v20), v21);
  v49 = *(v45 + *(v46 + 28));
  v22 = (*(v52 + 32))(&v49, v21);
  LOBYTE(v21) = v23;
  v48[25] = v22;
  *(v48 + 257) = v23;
  v52 = *(v45 + *(v46 + 32));
  v24 = *(v45 + *(v46 + 28));
  v25 = lazy protocol witness table accessor for type MLProgress.Metric and conformance MLProgress.Metric();
  v26 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for MLProgress.Metric, &type metadata for Any + 8, v25);
  v27 = v22;
  v28 = v50;
  specialized MLJob.reportProgress(completedUnitCount:phase:phaseUnitCount:metrics:)(v52, v24, v27, v21 & 1, v26, specialized MLJob.currentPhase.setter);
  v26;
  if ([*(v28 + direct field offset for MLJob.progress) isCancelled])
  {
    v29 = v48[21];
    v30 = v48[20];
    v31 = v48[19];
    v32 = v48[18];
    v33 = v48[15];
    v51 = v48[13];
    v50 = v48[11];
    v52 = v48[12];
    v29;
    v30;
    v31;
    v32;
    v33;
    v51;
    v52;
    v50;
    return (v48[1])();
  }

  else
  {
    v48[26] = direct field offset for MLTrainingSession.parameters;
    v48[27] = v51;
    v35 = v48[8];
    v36 = v48[23];
    v37 = (v35 + v48[24]);
    v38 = v35 + v48[22];
    v39 = v37[3];
    v40 = v37[4];
    v50 = __swift_project_boxed_opaque_existential_0Tm(v37, v39);
    v41 = *(*(v36 + 32) + v38);
    v42 = *(v40 + 56);
    v43 = (v42 + *v42);
    v44 = swift_task_alloc(v42[1]);
    v48[28] = v44;
    *v44 = v48;
    v44[1] = specialized MLTrainingSession.train(job:);
    return v43(v41, v39, v40);
  }
}

{
  v106 = v0 | 0x1000000000000000;
  v105 = v1;
  v2 = *(v1 + 184);
  v3 = *(v1 + 176) + *(v1 + 64);
  v4 = *(v2 + 32);
  v5 = *(v4 + v3);
  v6 = __OFADD__(*(v1 + 232), v5);
  v7 = *(v1 + 232) + v5;
  if (v6)
  {
    BUG();
  }

  v8 = *(v1 + 240);
  v9 = *(v1 + 216);
  v10 = *(v1 + 200);
  v11 = *(v1 + 257) & 1;
  *(v3 + v4) = v7;
  specialized MLJob.reportProgress(completedUnitCount:phase:phaseUnitCount:metrics:)(v7, *(v3 + *(v2 + 28)), v10, v11, v8, specialized MLJob.currentPhase.setter);
  v12 = *(v3 + *(v2 + 32));
  v6 = __OFSUB__(v12, v9);
  v13 = v12 - v9;
  if (v6)
  {
    BUG();
  }

  v14 = *(v1 + 208) + *(v1 + 64);
  if (v13 < *(*(*(v1 + 112) + 24) + v14))
  {
    if (*(v1 + 232) <= 0)
    {
      *(v1 + 240);
      goto LABEL_11;
    }

    if (!*(v1 + 258))
    {
      *(v1 + 240);
      v24 = *(v1 + 216);
LABEL_19:
      if (![*(*(v1 + 56) + direct field offset for MLJob.progress) isCancelled])
      {
        *(v1 + 216) = v24;
        v41 = *(v1 + 64);
        v42 = *(v1 + 184);
        v43 = (v41 + *(v1 + 192));
        v44 = v41 + *(v1 + 176);
        v45 = v43[3];
        v46 = v43[4];
        v104 = __swift_project_boxed_opaque_existential_0Tm(v43, v45);
        v47 = *(*(v42 + 32) + v44);
        v48 = *(v46 + 56);
        v49 = (v48 + *v48);
        v50 = swift_task_alloc(v48[1]);
        *(v1 + 224) = v50;
        *v50 = v1;
        v50[1] = specialized MLTrainingSession.train(job:);
        return v49(v47, v45, v46);
      }

      goto LABEL_20;
    }
  }

  v104 = *(v3 + *(v2 + 32));
  v15 = *(v1 + 128);
  v16 = *(v1 + 104);
  v17 = *(v1 + 120);
  outlined init with copy of MLTrainingSessionParameters(v14, v17, type metadata accessor for MLTrainingSessionParameters);
  outlined init with take of URL?(v17, v16);
  if (__swift_getEnumTagSinglePayload(v16, 1, v15) == 1)
  {
    v18 = *(v1 + 104);
    *(v1 + 240);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v18, &demangling cache variable for type metadata for URL?);
LABEL_11:
    v24 = *(v1 + 216);
    v25 = *(v1 + 248);
    goto LABEL_12;
  }

  v19 = *(v1 + 184);
  v20 = *(v1 + 176) + *(v1 + 64);
  (*(*(v1 + 136) + 32))(*(v1 + 160), *(v1 + 104), *(v1 + 128));
  v21 = *(*(v19 + 28) + v20);
  v22 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<CVarArg>);
  v23 = swift_allocObject(v22, 112, 7);
  v23[2] = 2;
  v23[3] = 4;
  v103 = (v1 + 256);
  switch(v21)
  {
    case 0:
      v99 = 0x696C616974696E69;
      v100 = 0xEB0000000064657ALL;
      goto LABEL_28;
    case 1:
      v53 = 0x6974636172747865;
      goto LABEL_27;
    case 2:
      v100 = 0xE800000000000000;
      v52 = 0x676E696E69617274;
      goto LABEL_24;
    case 3:
      v53 = 0x697461756C617665;
LABEL_27:
      v99 = v53;
      v100 = 0xEA0000000000676ELL;
      goto LABEL_28;
    case 4:
      v100 = 0xEB00000000676E69;
      v52 = 0x636E657265666E69;
LABEL_24:
      v99 = v52;
LABEL_28:
      v102 = *(v1 + 248);
      v94 = *(v1 + 192);
      v101 = *(v1 + 184);
      v54 = *(v1 + 64);
      v96 = *(v1 + 152);
      v91 = (v54 + v94);
      v90 = v54 + *(v1 + 176);
      v23[7] = &type metadata for String;
      v23[8] = lazy protocol witness table accessor for type String and conformance String();
      v23[4] = v99;
      v23[5] = v100;
      v23[12] = &type metadata for Int;
      v23[13] = &protocol witness table for Int;
      v23[9] = v104;
      v55 = String.init(format:_:)(0xD000000000000012, ("ng a features checkpoint." + 0x8000000000000000), v23);
      v57 = v56;
      URL.appendingPathComponent(_:)(v55, v56);
      v57;
      v58 = *(v54 + v94 + 24);
      v59 = *(v54 + v94 + 32);
      __swift_project_boxed_opaque_existential_0Tm(v91, v58);
      v60 = v101;
      *(v1 + 256) = *(*(v101 + 28) + v90);
      v61 = (*(v59 + 72))(v96, v103, *(*(v60 + 32) + v90), v58, v59);
      if (v102)
      {
        v104 = v102;
        v62 = *(v1 + 160);
        v63 = *(v1 + 152);
        v64 = *(v1 + 128);
        v65 = *(v1 + 136);
        *(v1 + 240);
        v66 = *(v65 + 8);
        v66(v63, v64);
        v66(v62, v64);
        goto LABEL_30;
      }

      v72 = *(v1 + 240);
      if (v61)
      {
        v103 = *(v1 + 184);
        v73 = *(v1 + 152);
        v74 = *(v1 + 144);
        v102 = *(v1 + 136);
        v104 = 0;
        v89 = *(v1 + 128);
        v75 = *(v1 + 96);
        v99 = *(v1 + 80);
        v101 = *(v1 + 64);
        v93 = *(v1 + 72);
        v76 = v101 + *(v1 + 176);
        v77 = v102[2];
        v100 = v74;
        v77(v74, v73);
        v95 = *(v103[7] + v76);
        v97 = *(v103[8] + v76);
        (v77)(v75, v74, v89);
        *(v75 + v93[5]) = v95;
        *(v75 + v93[6]) = v97;
        v92 = v75;
        Date.init()(v75);
        v102 = v102[1];
        (v102)(v100, v89);
        *(v75 + v93[8]) = v72;
        v78 = v103[11];
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        v79 = *(*(v78 + v76) + 16);
        specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(v79);
        v80 = *(v78 + v76);
        *(v80 + 16) = v79 + 1;
        outlined init with copy of MLTrainingSessionParameters(v92, v80 + ((*(v99 + 80) + 32) & ~*(v99 + 80)) + *(v99 + 72) * v79, type metadata accessor for MLCheckpoint);
        *(v78 + v76) = v80;
        v24 = *(v103[8] + v76);
        specialized MLTrainingSession.save()();
        v103 = *(v1 + 160);
        v101 = *(v1 + 152);
        v81 = *(v1 + 96);
        v82 = *(v1 + 128);
        if (v104)
        {
          outlined destroy of MLActivityClassifier.ModelParameters(v81, type metadata accessor for MLCheckpoint);
          (v102)(v101, v82);
          (v102)(v103, v82);
          goto LABEL_30;
        }

        v88 = *(v1 + 128);
        PassthroughSubject.send(_:)(*(v1 + 96));
        outlined destroy of MLActivityClassifier.ModelParameters(v81, type metadata accessor for MLCheckpoint);
        (v102)(v101, v88);
        (v102)(v103, v88);
      }

      else
      {
        v83 = *(v1 + 160);
        v84 = *(v1 + 152);
        v85 = *(v1 + 128);
        v86 = *(v1 + 136);
        v72;
        v87 = *(v86 + 8);
        v87(v84, v85);
        v87(v83, v85);
        v24 = *(v1 + 216);
      }

      v25 = 0;
      break;
  }

LABEL_12:
  if (*(v1 + 258) != 1)
  {
    goto LABEL_19;
  }

  v26 = AnalyticsReporter.init()();
  v27 = *(v1 + 64);
  v104 = v25;
  if (!v26)
  {
    v28 = *(v27 + direct field offset for MLTrainingSession.modelType);
    if (v28 != 28)
    {
      v29 = *(v27 + direct field offset for MLTrainingSession.modelType);
      AnalyticsReporter.reportTemplateUsed(model:mode:)(v28);
      v30 = Date.timeIntervalSinceReferenceDate.getter();
      AnalyticsReporter.reportEventDuration(model:task:startTime:)(v29, __PAIR128__(0xE800000000000000, 0x676E696E69617254), v30);
      v27 = *(v1 + 64);
    }
  }

  v31 = (*(v1 + 192) + v27);
  specialized MLTrainingSession.transition(to:)(3, &demangling cache variable for type metadata for MLTrainingSession<MLRandomForestClassifier>.Metadata);
  v32 = v31[3];
  v33 = v31[4];
  v98 = 3;
  __swift_project_boxed_opaque_existential_0Tm(v31, v32);
  v34 = v104;
  (*(v33 + 40))(&v98, v32, v33);
  if (v34)
  {
    v104 = v34;
LABEL_30:
    v67 = *(v1 + 168);
    v68 = *(v1 + 160);
    v69 = *(v1 + 152);
    v70 = *(v1 + 144);
    v71 = *(v1 + 120);
    v101 = *(v1 + 104);
    v103 = *(v1 + 88);
    v102 = *(v1 + 96);
    v67;
    v68;
    v69;
    v70;
    v71;
    v101;
    v102;
    v103;
    v40 = *(v1 + 8);
    return v40();
  }

LABEL_20:
  v35 = *(v1 + 168);
  v36 = *(v1 + 160);
  v37 = *(v1 + 152);
  v38 = *(v1 + 144);
  v39 = *(v1 + 120);
  v102 = *(v1 + 104);
  v104 = *(v1 + 88);
  v103 = *(v1 + 96);
  v35;
  v36;
  v37;
  v38;
  v39;
  v102;
  v103;
  v104;
  v40 = *(v1 + 8);
  return v40();
}

{
  v54 = v0 | 0x1000000000000000;
  v53 = v1;
  v2 = v1[8];
  v3 = *(*v2 + 112);
  v1[22] = v3;
  v4 = v3 + v2;
  swift_beginAccess(v4, (v1 + 2), 1, 0);
  v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLBoostedTreeRegressor>.Metadata);
  v1[23] = v5;
  v46 = v5;
  v45 = v4;
  v6 = *(*(v5 + 44) + v4);
  v1[5] = v6;
  v7 = v6[2];
  v48 = v1;
  v50 = v6;
  if (v7)
  {
    v52 = v1[9];
    v51 = v1[10];
    v47 = v6 + ((*(v51 + 80) + 32) & ~*(v51 + 80));

    while (1)
    {
      if (v7 > v6[2])
      {
        BUG();
      }

      --v7;
      v8 = v1[11];
      outlined init with copy of MLTrainingSessionParameters(&v47[v7 * *(v51 + 72)], v8, type metadata accessor for MLCheckpoint);
      switch(*(v8 + *(v52 + 20)))
      {
        case 0:
          v9 = 0x696C616974696E69;
          v10 = 0xEB0000000064657ALL;
          break;
        case 1:
          v9 = 0x6974636172747865;
          goto LABEL_9;
        case 2:
          v14 = v48[11];
          0;
          v1 = v48;
          outlined destroy of MLActivityClassifier.ModelParameters(v14, type metadata accessor for MLCheckpoint);
          LODWORD(v52) = 0;
          goto LABEL_17;
        case 3:
          v9 = 0x697461756C617665;
LABEL_9:
          v10 = 0xEA0000000000676ELL;
          break;
        case 4:
          v9 = 0x636E657265666E69;
          v10 = &loc_308EF - 0x14FFFFFFFF9B9A86;
          break;
      }

      v11 = v1[11];
      v12 = _stringCompareWithSmolCheck(_:_:expecting:)(v9, v10, 0x676E696E69617274, 0xE800000000000000, 0);
      v10;
      v13 = outlined destroy of MLActivityClassifier.ModelParameters(v11, type metadata accessor for MLCheckpoint);
      if (v12)
      {
        break;
      }

      v1 = v48;
      v6 = v50;
      if (!v7)
      {
        goto LABEL_14;
      }
    }

    LODWORD(v52) = 0;
    v1 = v48;
  }

  else
  {

LABEL_14:
    LOBYTE(v13) = 1;
    LODWORD(v52) = v13;
    v7 = 0;
  }

LABEL_17:
  v51 = v1[9];
  v15 = v1[21];
  v16 = swift_task_alloc(32);
  *(v16 + 16) = v1 + 5;
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lFxq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lyxs5NeverOqd_0_Isgnrzr_xSgAb2ERsd__Ri_d_0_r_0_lIetMgnrzo_Tpq5Si_8CreateML12MLCheckpointVTg5(closure #1 in BidirectionalCollection.last(where:)specialized partial apply, v16, v7, v52, (v1 + 6));
  v50;
  v16;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v51);
  v18 = v48[21];
  if (EnumTagSinglePayload == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v18, &demangling cache variable for type metadata for MLCheckpoint?);
    v51 = 0;
  }

  else
  {
    v51 = *(v18 + *(v48[9] + 24));
    outlined destroy of MLActivityClassifier.ModelParameters(v18, type metadata accessor for MLCheckpoint);
  }

  v50 = v48[7];
  v19 = v48[8];
  v20 = direct field offset for MLTrainingSession.delegate;
  v48[24] = direct field offset for MLTrainingSession.delegate;
  v21 = *(v19 + v20 + 24);
  v52 = *(v19 + v20 + 32);
  __swift_project_boxed_opaque_existential_0Tm((v19 + v20), v21);
  v49 = *(v45 + *(v46 + 28));
  v22 = (*(v52 + 32))(&v49, v21);
  LOBYTE(v21) = v23;
  v48[25] = v22;
  *(v48 + 257) = v23;
  v52 = *(v45 + *(v46 + 32));
  v24 = *(v45 + *(v46 + 28));
  v25 = lazy protocol witness table accessor for type MLProgress.Metric and conformance MLProgress.Metric();
  v26 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for MLProgress.Metric, &type metadata for Any + 8, v25);
  v27 = v22;
  v28 = v50;
  specialized MLJob.reportProgress(completedUnitCount:phase:phaseUnitCount:metrics:)(v52, v24, v27, v21 & 1, v26, specialized MLJob.currentPhase.setter);
  v26;
  if ([*(v28 + direct field offset for MLJob.progress) isCancelled])
  {
    v29 = v48[21];
    v30 = v48[20];
    v31 = v48[19];
    v32 = v48[18];
    v33 = v48[15];
    v51 = v48[13];
    v50 = v48[11];
    v52 = v48[12];
    v29;
    v30;
    v31;
    v32;
    v33;
    v51;
    v52;
    v50;
    return (v48[1])();
  }

  else
  {
    v48[26] = direct field offset for MLTrainingSession.parameters;
    v48[27] = v51;
    v35 = v48[8];
    v36 = v48[23];
    v37 = (v35 + v48[24]);
    v38 = v35 + v48[22];
    v39 = v37[3];
    v40 = v37[4];
    v50 = __swift_project_boxed_opaque_existential_0Tm(v37, v39);
    v41 = *(*(v36 + 32) + v38);
    v42 = *(v40 + 56);
    v43 = (v42 + *v42);
    v44 = swift_task_alloc(v42[1]);
    v48[28] = v44;
    *v44 = v48;
    v44[1] = specialized MLTrainingSession.train(job:);
    return v43(v41, v39, v40);
  }
}

{
  v106 = v0 | 0x1000000000000000;
  v105 = v1;
  v2 = *(v1 + 184);
  v3 = *(v1 + 176) + *(v1 + 64);
  v4 = *(v2 + 32);
  v5 = *(v4 + v3);
  v6 = __OFADD__(*(v1 + 232), v5);
  v7 = *(v1 + 232) + v5;
  if (v6)
  {
    BUG();
  }

  v8 = *(v1 + 240);
  v9 = *(v1 + 216);
  v10 = *(v1 + 200);
  v11 = *(v1 + 257) & 1;
  *(v3 + v4) = v7;
  specialized MLJob.reportProgress(completedUnitCount:phase:phaseUnitCount:metrics:)(v7, *(v3 + *(v2 + 28)), v10, v11, v8, specialized MLJob.currentPhase.setter);
  v12 = *(v3 + *(v2 + 32));
  v6 = __OFSUB__(v12, v9);
  v13 = v12 - v9;
  if (v6)
  {
    BUG();
  }

  v14 = *(v1 + 208) + *(v1 + 64);
  if (v13 < *(*(*(v1 + 112) + 24) + v14))
  {
    if (*(v1 + 232) <= 0)
    {
      *(v1 + 240);
      goto LABEL_11;
    }

    if (!*(v1 + 258))
    {
      *(v1 + 240);
      v24 = *(v1 + 216);
LABEL_19:
      if (![*(*(v1 + 56) + direct field offset for MLJob.progress) isCancelled])
      {
        *(v1 + 216) = v24;
        v41 = *(v1 + 64);
        v42 = *(v1 + 184);
        v43 = (v41 + *(v1 + 192));
        v44 = v41 + *(v1 + 176);
        v45 = v43[3];
        v46 = v43[4];
        v104 = __swift_project_boxed_opaque_existential_0Tm(v43, v45);
        v47 = *(*(v42 + 32) + v44);
        v48 = *(v46 + 56);
        v49 = (v48 + *v48);
        v50 = swift_task_alloc(v48[1]);
        *(v1 + 224) = v50;
        *v50 = v1;
        v50[1] = specialized MLTrainingSession.train(job:);
        return v49(v47, v45, v46);
      }

      goto LABEL_20;
    }
  }

  v104 = *(v3 + *(v2 + 32));
  v15 = *(v1 + 128);
  v16 = *(v1 + 104);
  v17 = *(v1 + 120);
  outlined init with copy of MLTrainingSessionParameters(v14, v17, type metadata accessor for MLTrainingSessionParameters);
  outlined init with take of URL?(v17, v16);
  if (__swift_getEnumTagSinglePayload(v16, 1, v15) == 1)
  {
    v18 = *(v1 + 104);
    *(v1 + 240);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v18, &demangling cache variable for type metadata for URL?);
LABEL_11:
    v24 = *(v1 + 216);
    v25 = *(v1 + 248);
    goto LABEL_12;
  }

  v19 = *(v1 + 184);
  v20 = *(v1 + 176) + *(v1 + 64);
  (*(*(v1 + 136) + 32))(*(v1 + 160), *(v1 + 104), *(v1 + 128));
  v21 = *(*(v19 + 28) + v20);
  v22 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<CVarArg>);
  v23 = swift_allocObject(v22, 112, 7);
  v23[2] = 2;
  v23[3] = 4;
  v103 = (v1 + 256);
  switch(v21)
  {
    case 0:
      v99 = 0x696C616974696E69;
      v100 = 0xEB0000000064657ALL;
      goto LABEL_28;
    case 1:
      v53 = 0x6974636172747865;
      goto LABEL_27;
    case 2:
      v100 = 0xE800000000000000;
      v52 = 0x676E696E69617274;
      goto LABEL_24;
    case 3:
      v53 = 0x697461756C617665;
LABEL_27:
      v99 = v53;
      v100 = 0xEA0000000000676ELL;
      goto LABEL_28;
    case 4:
      v100 = 0xEB00000000676E69;
      v52 = 0x636E657265666E69;
LABEL_24:
      v99 = v52;
LABEL_28:
      v102 = *(v1 + 248);
      v94 = *(v1 + 192);
      v101 = *(v1 + 184);
      v54 = *(v1 + 64);
      v96 = *(v1 + 152);
      v91 = (v54 + v94);
      v90 = v54 + *(v1 + 176);
      v23[7] = &type metadata for String;
      v23[8] = lazy protocol witness table accessor for type String and conformance String();
      v23[4] = v99;
      v23[5] = v100;
      v23[12] = &type metadata for Int;
      v23[13] = &protocol witness table for Int;
      v23[9] = v104;
      v55 = String.init(format:_:)(0xD000000000000012, ("ng a features checkpoint." + 0x8000000000000000), v23);
      v57 = v56;
      URL.appendingPathComponent(_:)(v55, v56);
      v57;
      v58 = *(v54 + v94 + 24);
      v59 = *(v54 + v94 + 32);
      __swift_project_boxed_opaque_existential_0Tm(v91, v58);
      v60 = v101;
      *(v1 + 256) = *(*(v101 + 28) + v90);
      v61 = (*(v59 + 72))(v96, v103, *(*(v60 + 32) + v90), v58, v59);
      if (v102)
      {
        v104 = v102;
        v62 = *(v1 + 160);
        v63 = *(v1 + 152);
        v64 = *(v1 + 128);
        v65 = *(v1 + 136);
        *(v1 + 240);
        v66 = *(v65 + 8);
        v66(v63, v64);
        v66(v62, v64);
        goto LABEL_30;
      }

      v72 = *(v1 + 240);
      if (v61)
      {
        v103 = *(v1 + 184);
        v73 = *(v1 + 152);
        v74 = *(v1 + 144);
        v102 = *(v1 + 136);
        v104 = 0;
        v89 = *(v1 + 128);
        v75 = *(v1 + 96);
        v99 = *(v1 + 80);
        v101 = *(v1 + 64);
        v93 = *(v1 + 72);
        v76 = v101 + *(v1 + 176);
        v77 = v102[2];
        v100 = v74;
        v77(v74, v73);
        v95 = *(v103[7] + v76);
        v97 = *(v103[8] + v76);
        (v77)(v75, v74, v89);
        *(v75 + v93[5]) = v95;
        *(v75 + v93[6]) = v97;
        v92 = v75;
        Date.init()(v75);
        v102 = v102[1];
        (v102)(v100, v89);
        *(v75 + v93[8]) = v72;
        v78 = v103[11];
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        v79 = *(*(v78 + v76) + 16);
        specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(v79);
        v80 = *(v78 + v76);
        *(v80 + 16) = v79 + 1;
        outlined init with copy of MLTrainingSessionParameters(v92, v80 + ((*(v99 + 80) + 32) & ~*(v99 + 80)) + *(v99 + 72) * v79, type metadata accessor for MLCheckpoint);
        *(v78 + v76) = v80;
        v24 = *(v103[8] + v76);
        specialized MLTrainingSession.save()();
        v103 = *(v1 + 160);
        v101 = *(v1 + 152);
        v81 = *(v1 + 96);
        v82 = *(v1 + 128);
        if (v104)
        {
          outlined destroy of MLActivityClassifier.ModelParameters(v81, type metadata accessor for MLCheckpoint);
          (v102)(v101, v82);
          (v102)(v103, v82);
          goto LABEL_30;
        }

        v88 = *(v1 + 128);
        PassthroughSubject.send(_:)(*(v1 + 96));
        outlined destroy of MLActivityClassifier.ModelParameters(v81, type metadata accessor for MLCheckpoint);
        (v102)(v101, v88);
        (v102)(v103, v88);
      }

      else
      {
        v83 = *(v1 + 160);
        v84 = *(v1 + 152);
        v85 = *(v1 + 128);
        v86 = *(v1 + 136);
        v72;
        v87 = *(v86 + 8);
        v87(v84, v85);
        v87(v83, v85);
        v24 = *(v1 + 216);
      }

      v25 = 0;
      break;
  }

LABEL_12:
  if (*(v1 + 258) != 1)
  {
    goto LABEL_19;
  }

  v26 = AnalyticsReporter.init()();
  v27 = *(v1 + 64);
  v104 = v25;
  if (!v26)
  {
    v28 = *(v27 + direct field offset for MLTrainingSession.modelType);
    if (v28 != 28)
    {
      v29 = *(v27 + direct field offset for MLTrainingSession.modelType);
      AnalyticsReporter.reportTemplateUsed(model:mode:)(v28);
      v30 = Date.timeIntervalSinceReferenceDate.getter();
      AnalyticsReporter.reportEventDuration(model:task:startTime:)(v29, __PAIR128__(0xE800000000000000, 0x676E696E69617254), v30);
      v27 = *(v1 + 64);
    }
  }

  v31 = (*(v1 + 192) + v27);
  specialized MLTrainingSession.transition(to:)(3, &demangling cache variable for type metadata for MLTrainingSession<MLBoostedTreeRegressor>.Metadata);
  v32 = v31[3];
  v33 = v31[4];
  v98 = 3;
  __swift_project_boxed_opaque_existential_0Tm(v31, v32);
  v34 = v104;
  (*(v33 + 40))(&v98, v32, v33);
  if (v34)
  {
    v104 = v34;
LABEL_30:
    v67 = *(v1 + 168);
    v68 = *(v1 + 160);
    v69 = *(v1 + 152);
    v70 = *(v1 + 144);
    v71 = *(v1 + 120);
    v101 = *(v1 + 104);
    v103 = *(v1 + 88);
    v102 = *(v1 + 96);
    v67;
    v68;
    v69;
    v70;
    v71;
    v101;
    v102;
    v103;
    v40 = *(v1 + 8);
    return v40();
  }

LABEL_20:
  v35 = *(v1 + 168);
  v36 = *(v1 + 160);
  v37 = *(v1 + 152);
  v38 = *(v1 + 144);
  v39 = *(v1 + 120);
  v102 = *(v1 + 104);
  v104 = *(v1 + 88);
  v103 = *(v1 + 96);
  v35;
  v36;
  v37;
  v38;
  v39;
  v102;
  v103;
  v104;
  v40 = *(v1 + 8);
  return v40();
}

{
  v54 = v0 | 0x1000000000000000;
  v53 = v1;
  v2 = v1[8];
  v3 = *(*v2 + 112);
  v1[22] = v3;
  v4 = v3 + v2;
  swift_beginAccess(v4, (v1 + 2), 1, 0);
  v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLObjectDetector>.Metadata);
  v1[23] = v5;
  v46 = v5;
  v45 = v4;
  v6 = *(*(v5 + 44) + v4);
  v1[5] = v6;
  v7 = v6[2];
  v48 = v1;
  v50 = v6;
  if (v7)
  {
    v52 = v1[9];
    v51 = v1[10];
    v47 = v6 + ((*(v51 + 80) + 32) & ~*(v51 + 80));

    while (1)
    {
      if (v7 > v6[2])
      {
        BUG();
      }

      --v7;
      v8 = v1[11];
      outlined init with copy of MLTrainingSessionParameters(&v47[v7 * *(v51 + 72)], v8, type metadata accessor for MLCheckpoint);
      switch(*(v8 + *(v52 + 20)))
      {
        case 0:
          v9 = 0x696C616974696E69;
          v10 = 0xEB0000000064657ALL;
          break;
        case 1:
          v9 = 0x6974636172747865;
          goto LABEL_9;
        case 2:
          v14 = v48[11];
          0;
          v1 = v48;
          outlined destroy of MLActivityClassifier.ModelParameters(v14, type metadata accessor for MLCheckpoint);
          LODWORD(v52) = 0;
          goto LABEL_17;
        case 3:
          v9 = 0x697461756C617665;
LABEL_9:
          v10 = 0xEA0000000000676ELL;
          break;
        case 4:
          v9 = 0x636E657265666E69;
          v10 = &loc_308EF - 0x14FFFFFFFF9B9A86;
          break;
      }

      v11 = v1[11];
      v12 = _stringCompareWithSmolCheck(_:_:expecting:)(v9, v10, 0x676E696E69617274, 0xE800000000000000, 0);
      v10;
      v13 = outlined destroy of MLActivityClassifier.ModelParameters(v11, type metadata accessor for MLCheckpoint);
      if (v12)
      {
        break;
      }

      v1 = v48;
      v6 = v50;
      if (!v7)
      {
        goto LABEL_14;
      }
    }

    LODWORD(v52) = 0;
    v1 = v48;
  }

  else
  {

LABEL_14:
    LOBYTE(v13) = 1;
    LODWORD(v52) = v13;
    v7 = 0;
  }

LABEL_17:
  v51 = v1[9];
  v15 = v1[21];
  v16 = swift_task_alloc(32);
  *(v16 + 16) = v1 + 5;
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lFxq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lyxs5NeverOqd_0_Isgnrzr_xSgAb2ERsd__Ri_d_0_r_0_lIetMgnrzo_Tpq5Si_8CreateML12MLCheckpointVTg5(closure #1 in BidirectionalCollection.last(where:)specialized partial apply, v16, v7, v52, (v1 + 6));
  v50;
  v16;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v51);
  v18 = v48[21];
  if (EnumTagSinglePayload == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v18, &demangling cache variable for type metadata for MLCheckpoint?);
    v51 = 0;
  }

  else
  {
    v51 = *(v18 + *(v48[9] + 24));
    outlined destroy of MLActivityClassifier.ModelParameters(v18, type metadata accessor for MLCheckpoint);
  }

  v50 = v48[7];
  v19 = v48[8];
  v20 = direct field offset for MLTrainingSession.delegate;
  v48[24] = direct field offset for MLTrainingSession.delegate;
  v21 = *(v19 + v20 + 24);
  v52 = *(v19 + v20 + 32);
  __swift_project_boxed_opaque_existential_0Tm((v19 + v20), v21);
  v49 = *(v45 + *(v46 + 28));
  v22 = (*(v52 + 32))(&v49, v21);
  LOBYTE(v21) = v23;
  v48[25] = v22;
  *(v48 + 257) = v23;
  v52 = *(v45 + *(v46 + 32));
  v24 = *(v45 + *(v46 + 28));
  v25 = lazy protocol witness table accessor for type MLProgress.Metric and conformance MLProgress.Metric();
  v26 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for MLProgress.Metric, &type metadata for Any + 8, v25);
  v27 = v22;
  v28 = v50;
  specialized MLJob.reportProgress(completedUnitCount:phase:phaseUnitCount:metrics:)(v52, v24, v27, v21 & 1, v26, specialized MLJob.currentPhase.setter);
  v26;
  if ([*(v28 + direct field offset for MLJob.progress) isCancelled])
  {
    v29 = v48[21];
    v30 = v48[20];
    v31 = v48[19];
    v32 = v48[18];
    v33 = v48[15];
    v51 = v48[13];
    v50 = v48[11];
    v52 = v48[12];
    v29;
    v30;
    v31;
    v32;
    v33;
    v51;
    v52;
    v50;
    return (v48[1])();
  }

  else
  {
    v48[26] = direct field offset for MLTrainingSession.parameters;
    v48[27] = v51;
    v35 = v48[8];
    v36 = v48[23];
    v37 = (v35 + v48[24]);
    v38 = v35 + v48[22];
    v39 = v37[3];
    v40 = v37[4];
    v50 = __swift_project_boxed_opaque_existential_0Tm(v37, v39);
    v41 = *(*(v36 + 32) + v38);
    v42 = *(v40 + 56);
    v43 = (v42 + *v42);
    v44 = swift_task_alloc(v42[1]);
    v48[28] = v44;
    *v44 = v48;
    v44[1] = specialized MLTrainingSession.train(job:);
    return v43(v41, v39, v40);
  }
}

{
  v106 = v0 | 0x1000000000000000;
  v105 = v1;
  v2 = *(v1 + 184);
  v3 = *(v1 + 176) + *(v1 + 64);
  v4 = *(v2 + 32);
  v5 = *(v4 + v3);
  v6 = __OFADD__(*(v1 + 232), v5);
  v7 = *(v1 + 232) + v5;
  if (v6)
  {
    BUG();
  }

  v8 = *(v1 + 240);
  v9 = *(v1 + 216);
  v10 = *(v1 + 200);
  v11 = *(v1 + 257) & 1;
  *(v3 + v4) = v7;
  specialized MLJob.reportProgress(completedUnitCount:phase:phaseUnitCount:metrics:)(v7, *(v3 + *(v2 + 28)), v10, v11, v8, specialized MLJob.currentPhase.setter);
  v12 = *(v3 + *(v2 + 32));
  v6 = __OFSUB__(v12, v9);
  v13 = v12 - v9;
  if (v6)
  {
    BUG();
  }

  v14 = *(v1 + 208) + *(v1 + 64);
  if (v13 < *(*(*(v1 + 112) + 24) + v14))
  {
    if (*(v1 + 232) <= 0)
    {
      *(v1 + 240);
      goto LABEL_11;
    }

    if (!*(v1 + 258))
    {
      *(v1 + 240);
      v24 = *(v1 + 216);
LABEL_19:
      if (![*(*(v1 + 56) + direct field offset for MLJob.progress) isCancelled])
      {
        *(v1 + 216) = v24;
        v41 = *(v1 + 64);
        v42 = *(v1 + 184);
        v43 = (v41 + *(v1 + 192));
        v44 = v41 + *(v1 + 176);
        v45 = v43[3];
        v46 = v43[4];
        v104 = __swift_project_boxed_opaque_existential_0Tm(v43, v45);
        v47 = *(*(v42 + 32) + v44);
        v48 = *(v46 + 56);
        v49 = (v48 + *v48);
        v50 = swift_task_alloc(v48[1]);
        *(v1 + 224) = v50;
        *v50 = v1;
        v50[1] = specialized MLTrainingSession.train(job:);
        return v49(v47, v45, v46);
      }

      goto LABEL_20;
    }
  }

  v104 = *(v3 + *(v2 + 32));
  v15 = *(v1 + 128);
  v16 = *(v1 + 104);
  v17 = *(v1 + 120);
  outlined init with copy of MLTrainingSessionParameters(v14, v17, type metadata accessor for MLTrainingSessionParameters);
  outlined init with take of URL?(v17, v16);
  if (__swift_getEnumTagSinglePayload(v16, 1, v15) == 1)
  {
    v18 = *(v1 + 104);
    *(v1 + 240);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v18, &demangling cache variable for type metadata for URL?);
LABEL_11:
    v24 = *(v1 + 216);
    v25 = *(v1 + 248);
    goto LABEL_12;
  }

  v19 = *(v1 + 184);
  v20 = *(v1 + 176) + *(v1 + 64);
  (*(*(v1 + 136) + 32))(*(v1 + 160), *(v1 + 104), *(v1 + 128));
  v21 = *(*(v19 + 28) + v20);
  v22 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<CVarArg>);
  v23 = swift_allocObject(v22, 112, 7);
  v23[2] = 2;
  v23[3] = 4;
  v103 = (v1 + 256);
  switch(v21)
  {
    case 0:
      v99 = 0x696C616974696E69;
      v100 = 0xEB0000000064657ALL;
      goto LABEL_28;
    case 1:
      v53 = 0x6974636172747865;
      goto LABEL_27;
    case 2:
      v100 = 0xE800000000000000;
      v52 = 0x676E696E69617274;
      goto LABEL_24;
    case 3:
      v53 = 0x697461756C617665;
LABEL_27:
      v99 = v53;
      v100 = 0xEA0000000000676ELL;
      goto LABEL_28;
    case 4:
      v100 = 0xEB00000000676E69;
      v52 = 0x636E657265666E69;
LABEL_24:
      v99 = v52;
LABEL_28:
      v102 = *(v1 + 248);
      v94 = *(v1 + 192);
      v101 = *(v1 + 184);
      v54 = *(v1 + 64);
      v96 = *(v1 + 152);
      v91 = (v54 + v94);
      v90 = v54 + *(v1 + 176);
      v23[7] = &type metadata for String;
      v23[8] = lazy protocol witness table accessor for type String and conformance String();
      v23[4] = v99;
      v23[5] = v100;
      v23[12] = &type metadata for Int;
      v23[13] = &protocol witness table for Int;
      v23[9] = v104;
      v55 = String.init(format:_:)(0xD000000000000012, ("ng a features checkpoint." + 0x8000000000000000), v23);
      v57 = v56;
      URL.appendingPathComponent(_:)(v55, v56);
      v57;
      v58 = *(v54 + v94 + 24);
      v59 = *(v54 + v94 + 32);
      __swift_project_boxed_opaque_existential_0Tm(v91, v58);
      v60 = v101;
      *(v1 + 256) = *(*(v101 + 28) + v90);
      v61 = (*(v59 + 72))(v96, v103, *(*(v60 + 32) + v90), v58, v59);
      if (v102)
      {
        v104 = v102;
        v62 = *(v1 + 160);
        v63 = *(v1 + 152);
        v64 = *(v1 + 128);
        v65 = *(v1 + 136);
        *(v1 + 240);
        v66 = *(v65 + 8);
        v66(v63, v64);
        v66(v62, v64);
        goto LABEL_30;
      }

      v72 = *(v1 + 240);
      if (v61)
      {
        v103 = *(v1 + 184);
        v73 = *(v1 + 152);
        v74 = *(v1 + 144);
        v102 = *(v1 + 136);
        v104 = 0;
        v89 = *(v1 + 128);
        v75 = *(v1 + 96);
        v99 = *(v1 + 80);
        v101 = *(v1 + 64);
        v93 = *(v1 + 72);
        v76 = v101 + *(v1 + 176);
        v77 = v102[2];
        v100 = v74;
        v77(v74, v73);
        v95 = *(v103[7] + v76);
        v97 = *(v103[8] + v76);
        (v77)(v75, v74, v89);
        *(v75 + v93[5]) = v95;
        *(v75 + v93[6]) = v97;
        v92 = v75;
        Date.init()(v75);
        v102 = v102[1];
        (v102)(v100, v89);
        *(v75 + v93[8]) = v72;
        v78 = v103[11];
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        v79 = *(*(v78 + v76) + 16);
        specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(v79);
        v80 = *(v78 + v76);
        *(v80 + 16) = v79 + 1;
        outlined init with copy of MLTrainingSessionParameters(v92, v80 + ((*(v99 + 80) + 32) & ~*(v99 + 80)) + *(v99 + 72) * v79, type metadata accessor for MLCheckpoint);
        *(v78 + v76) = v80;
        v24 = *(v103[8] + v76);
        specialized MLTrainingSession.save()();
        v103 = *(v1 + 160);
        v101 = *(v1 + 152);
        v81 = *(v1 + 96);
        v82 = *(v1 + 128);
        if (v104)
        {
          outlined destroy of MLActivityClassifier.ModelParameters(v81, type metadata accessor for MLCheckpoint);
          (v102)(v101, v82);
          (v102)(v103, v82);
          goto LABEL_30;
        }

        v88 = *(v1 + 128);
        PassthroughSubject.send(_:)(*(v1 + 96));
        outlined destroy of MLActivityClassifier.ModelParameters(v81, type metadata accessor for MLCheckpoint);
        (v102)(v101, v88);
        (v102)(v103, v88);
      }

      else
      {
        v83 = *(v1 + 160);
        v84 = *(v1 + 152);
        v85 = *(v1 + 128);
        v86 = *(v1 + 136);
        v72;
        v87 = *(v86 + 8);
        v87(v84, v85);
        v87(v83, v85);
        v24 = *(v1 + 216);
      }

      v25 = 0;
      break;
  }

LABEL_12:
  if (*(v1 + 258) != 1)
  {
    goto LABEL_19;
  }

  v26 = AnalyticsReporter.init()();
  v27 = *(v1 + 64);
  v104 = v25;
  if (!v26)
  {
    v28 = *(v27 + direct field offset for MLTrainingSession.modelType);
    if (v28 != 28)
    {
      v29 = *(v27 + direct field offset for MLTrainingSession.modelType);
      AnalyticsReporter.reportTemplateUsed(model:mode:)(v28);
      v30 = Date.timeIntervalSinceReferenceDate.getter();
      AnalyticsReporter.reportEventDuration(model:task:startTime:)(v29, __PAIR128__(0xE800000000000000, 0x676E696E69617254), v30);
      v27 = *(v1 + 64);
    }
  }

  v31 = (*(v1 + 192) + v27);
  specialized MLTrainingSession.transition(to:)(3, &demangling cache variable for type metadata for MLTrainingSession<MLObjectDetector>.Metadata);
  v32 = v31[3];
  v33 = v31[4];
  v98 = 3;
  __swift_project_boxed_opaque_existential_0Tm(v31, v32);
  v34 = v104;
  (*(v33 + 40))(&v98, v32, v33);
  if (v34)
  {
    v104 = v34;
LABEL_30:
    v67 = *(v1 + 168);
    v68 = *(v1 + 160);
    v69 = *(v1 + 152);
    v70 = *(v1 + 144);
    v71 = *(v1 + 120);
    v101 = *(v1 + 104);
    v103 = *(v1 + 88);
    v102 = *(v1 + 96);
    v67;
    v68;
    v69;
    v70;
    v71;
    v101;
    v102;
    v103;
    v40 = *(v1 + 8);
    return v40();
  }

LABEL_20:
  v35 = *(v1 + 168);
  v36 = *(v1 + 160);
  v37 = *(v1 + 152);
  v38 = *(v1 + 144);
  v39 = *(v1 + 120);
  v102 = *(v1 + 104);
  v104 = *(v1 + 88);
  v103 = *(v1 + 96);
  v35;
  v36;
  v37;
  v38;
  v39;
  v102;
  v103;
  v104;
  v40 = *(v1 + 8);
  return v40();
}

{
  v54 = v0 | 0x1000000000000000;
  v53 = v1;
  v2 = v1[8];
  v3 = *(*v2 + 112);
  v1[22] = v3;
  v4 = v3 + v2;
  swift_beginAccess(v4, (v1 + 2), 1, 0);
  v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLDecisionTreeClassifier>.Metadata);
  v1[23] = v5;
  v46 = v5;
  v45 = v4;
  v6 = *(*(v5 + 44) + v4);
  v1[5] = v6;
  v7 = v6[2];
  v48 = v1;
  v50 = v6;
  if (v7)
  {
    v52 = v1[9];
    v51 = v1[10];
    v47 = v6 + ((*(v51 + 80) + 32) & ~*(v51 + 80));

    while (1)
    {
      if (v7 > v6[2])
      {
        BUG();
      }

      --v7;
      v8 = v1[11];
      outlined init with copy of MLTrainingSessionParameters(&v47[v7 * *(v51 + 72)], v8, type metadata accessor for MLCheckpoint);
      switch(*(v8 + *(v52 + 20)))
      {
        case 0:
          v9 = 0x696C616974696E69;
          v10 = 0xEB0000000064657ALL;
          break;
        case 1:
          v9 = 0x6974636172747865;
          goto LABEL_9;
        case 2:
          v14 = v48[11];
          0;
          v1 = v48;
          outlined destroy of MLActivityClassifier.ModelParameters(v14, type metadata accessor for MLCheckpoint);
          LODWORD(v52) = 0;
          goto LABEL_17;
        case 3:
          v9 = 0x697461756C617665;
LABEL_9:
          v10 = 0xEA0000000000676ELL;
          break;
        case 4:
          v9 = 0x636E657265666E69;
          v10 = &loc_308EF - 0x14FFFFFFFF9B9A86;
          break;
      }

      v11 = v1[11];
      v12 = _stringCompareWithSmolCheck(_:_:expecting:)(v9, v10, 0x676E696E69617274, 0xE800000000000000, 0);
      v10;
      v13 = outlined destroy of MLActivityClassifier.ModelParameters(v11, type metadata accessor for MLCheckpoint);
      if (v12)
      {
        break;
      }

      v1 = v48;
      v6 = v50;
      if (!v7)
      {
        goto LABEL_14;
      }
    }

    LODWORD(v52) = 0;
    v1 = v48;
  }

  else
  {

LABEL_14:
    LOBYTE(v13) = 1;
    LODWORD(v52) = v13;
    v7 = 0;
  }

LABEL_17:
  v51 = v1[9];
  v15 = v1[21];
  v16 = swift_task_alloc(32);
  *(v16 + 16) = v1 + 5;
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lFxq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lyxs5NeverOqd_0_Isgnrzr_xSgAb2ERsd__Ri_d_0_r_0_lIetMgnrzo_Tpq5Si_8CreateML12MLCheckpointVTg5(closure #1 in BidirectionalCollection.last(where:)specialized partial apply, v16, v7, v52, (v1 + 6));
  v50;
  v16;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v51);
  v18 = v48[21];
  if (EnumTagSinglePayload == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v18, &demangling cache variable for type metadata for MLCheckpoint?);
    v51 = 0;
  }

  else
  {
    v51 = *(v18 + *(v48[9] + 24));
    outlined destroy of MLActivityClassifier.ModelParameters(v18, type metadata accessor for MLCheckpoint);
  }

  v50 = v48[7];
  v19 = v48[8];
  v20 = direct field offset for MLTrainingSession.delegate;
  v48[24] = direct field offset for MLTrainingSession.delegate;
  v21 = *(v19 + v20 + 24);
  v52 = *(v19 + v20 + 32);
  __swift_project_boxed_opaque_existential_0Tm((v19 + v20), v21);
  v49 = *(v45 + *(v46 + 28));
  v22 = (*(v52 + 32))(&v49, v21);
  LOBYTE(v21) = v23;
  v48[25] = v22;
  *(v48 + 257) = v23;
  v52 = *(v45 + *(v46 + 32));
  v24 = *(v45 + *(v46 + 28));
  v25 = lazy protocol witness table accessor for type MLProgress.Metric and conformance MLProgress.Metric();
  v26 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for MLProgress.Metric, &type metadata for Any + 8, v25);
  v27 = v22;
  v28 = v50;
  specialized MLJob.reportProgress(completedUnitCount:phase:phaseUnitCount:metrics:)(v52, v24, v27, v21 & 1, v26, specialized MLJob.currentPhase.setter);
  v26;
  if ([*(v28 + direct field offset for MLJob.progress) isCancelled])
  {
    v29 = v48[21];
    v30 = v48[20];
    v31 = v48[19];
    v32 = v48[18];
    v33 = v48[15];
    v51 = v48[13];
    v50 = v48[11];
    v52 = v48[12];
    v29;
    v30;
    v31;
    v32;
    v33;
    v51;
    v52;
    v50;
    return (v48[1])();
  }

  else
  {
    v48[26] = direct field offset for MLTrainingSession.parameters;
    v48[27] = v51;
    v35 = v48[8];
    v36 = v48[23];
    v37 = (v35 + v48[24]);
    v38 = v35 + v48[22];
    v39 = v37[3];
    v40 = v37[4];
    v50 = __swift_project_boxed_opaque_existential_0Tm(v37, v39);
    v41 = *(*(v36 + 32) + v38);
    v42 = *(v40 + 56);
    v43 = (v42 + *v42);
    v44 = swift_task_alloc(v42[1]);
    v48[28] = v44;
    *v44 = v48;
    v44[1] = specialized MLTrainingSession.train(job:);
    return v43(v41, v39, v40);
  }
}

{
  v106 = v0 | 0x1000000000000000;
  v105 = v1;
  v2 = *(v1 + 184);
  v3 = *(v1 + 176) + *(v1 + 64);
  v4 = *(v2 + 32);
  v5 = *(v4 + v3);
  v6 = __OFADD__(*(v1 + 232), v5);
  v7 = *(v1 + 232) + v5;
  if (v6)
  {
    BUG();
  }

  v8 = *(v1 + 240);
  v9 = *(v1 + 216);
  v10 = *(v1 + 200);
  v11 = *(v1 + 257) & 1;
  *(v3 + v4) = v7;
  specialized MLJob.reportProgress(completedUnitCount:phase:phaseUnitCount:metrics:)(v7, *(v3 + *(v2 + 28)), v10, v11, v8, specialized MLJob.currentPhase.setter);
  v12 = *(v3 + *(v2 + 32));
  v6 = __OFSUB__(v12, v9);
  v13 = v12 - v9;
  if (v6)
  {
    BUG();
  }

  v14 = *(v1 + 208) + *(v1 + 64);
  if (v13 < *(*(*(v1 + 112) + 24) + v14))
  {
    if (*(v1 + 232) <= 0)
    {
      *(v1 + 240);
      goto LABEL_11;
    }

    if (!*(v1 + 258))
    {
      *(v1 + 240);
      v24 = *(v1 + 216);
LABEL_19:
      if (![*(*(v1 + 56) + direct field offset for MLJob.progress) isCancelled])
      {
        *(v1 + 216) = v24;
        v41 = *(v1 + 64);
        v42 = *(v1 + 184);
        v43 = (v41 + *(v1 + 192));
        v44 = v41 + *(v1 + 176);
        v45 = v43[3];
        v46 = v43[4];
        v104 = __swift_project_boxed_opaque_existential_0Tm(v43, v45);
        v47 = *(*(v42 + 32) + v44);
        v48 = *(v46 + 56);
        v49 = (v48 + *v48);
        v50 = swift_task_alloc(v48[1]);
        *(v1 + 224) = v50;
        *v50 = v1;
        v50[1] = specialized MLTrainingSession.train(job:);
        return v49(v47, v45, v46);
      }

      goto LABEL_20;
    }
  }

  v104 = *(v3 + *(v2 + 32));
  v15 = *(v1 + 128);
  v16 = *(v1 + 104);
  v17 = *(v1 + 120);
  outlined init with copy of MLTrainingSessionParameters(v14, v17, type metadata accessor for MLTrainingSessionParameters);
  outlined init with take of URL?(v17, v16);
  if (__swift_getEnumTagSinglePayload(v16, 1, v15) == 1)
  {
    v18 = *(v1 + 104);
    *(v1 + 240);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v18, &demangling cache variable for type metadata for URL?);
LABEL_11:
    v24 = *(v1 + 216);
    v25 = *(v1 + 248);
    goto LABEL_12;
  }

  v19 = *(v1 + 184);
  v20 = *(v1 + 176) + *(v1 + 64);
  (*(*(v1 + 136) + 32))(*(v1 + 160), *(v1 + 104), *(v1 + 128));
  v21 = *(*(v19 + 28) + v20);
  v22 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<CVarArg>);
  v23 = swift_allocObject(v22, 112, 7);
  v23[2] = 2;
  v23[3] = 4;
  v103 = (v1 + 256);
  switch(v21)
  {
    case 0:
      v99 = 0x696C616974696E69;
      v100 = 0xEB0000000064657ALL;
      goto LABEL_28;
    case 1:
      v53 = 0x6974636172747865;
      goto LABEL_27;
    case 2:
      v100 = 0xE800000000000000;
      v52 = 0x676E696E69617274;
      goto LABEL_24;
    case 3:
      v53 = 0x697461756C617665;
LABEL_27:
      v99 = v53;
      v100 = 0xEA0000000000676ELL;
      goto LABEL_28;
    case 4:
      v100 = 0xEB00000000676E69;
      v52 = 0x636E657265666E69;
LABEL_24:
      v99 = v52;
LABEL_28:
      v102 = *(v1 + 248);
      v94 = *(v1 + 192);
      v101 = *(v1 + 184);
      v54 = *(v1 + 64);
      v96 = *(v1 + 152);
      v91 = (v54 + v94);
      v90 = v54 + *(v1 + 176);
      v23[7] = &type metadata for String;
      v23[8] = lazy protocol witness table accessor for type String and conformance String();
      v23[4] = v99;
      v23[5] = v100;
      v23[12] = &type metadata for Int;
      v23[13] = &protocol witness table for Int;
      v23[9] = v104;
      v55 = String.init(format:_:)(0xD000000000000012, ("ng a features checkpoint." + 0x8000000000000000), v23);
      v57 = v56;
      URL.appendingPathComponent(_:)(v55, v56);
      v57;
      v58 = *(v54 + v94 + 24);
      v59 = *(v54 + v94 + 32);
      __swift_project_boxed_opaque_existential_0Tm(v91, v58);
      v60 = v101;
      *(v1 + 256) = *(*(v101 + 28) + v90);
      v61 = (*(v59 + 72))(v96, v103, *(*(v60 + 32) + v90), v58, v59);
      if (v102)
      {
        v104 = v102;
        v62 = *(v1 + 160);
        v63 = *(v1 + 152);
        v64 = *(v1 + 128);
        v65 = *(v1 + 136);
        *(v1 + 240);
        v66 = *(v65 + 8);
        v66(v63, v64);
        v66(v62, v64);
        goto LABEL_30;
      }

      v72 = *(v1 + 240);
      if (v61)
      {
        v103 = *(v1 + 184);
        v73 = *(v1 + 152);
        v74 = *(v1 + 144);
        v102 = *(v1 + 136);
        v104 = 0;
        v89 = *(v1 + 128);
        v75 = *(v1 + 96);
        v99 = *(v1 + 80);
        v101 = *(v1 + 64);
        v93 = *(v1 + 72);
        v76 = v101 + *(v1 + 176);
        v77 = v102[2];
        v100 = v74;
        v77(v74, v73);
        v95 = *(v103[7] + v76);
        v97 = *(v103[8] + v76);
        (v77)(v75, v74, v89);
        *(v75 + v93[5]) = v95;
        *(v75 + v93[6]) = v97;
        v92 = v75;
        Date.init()(v75);
        v102 = v102[1];
        (v102)(v100, v89);
        *(v75 + v93[8]) = v72;
        v78 = v103[11];
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        v79 = *(*(v78 + v76) + 16);
        specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(v79);
        v80 = *(v78 + v76);
        *(v80 + 16) = v79 + 1;
        outlined init with copy of MLTrainingSessionParameters(v92, v80 + ((*(v99 + 80) + 32) & ~*(v99 + 80)) + *(v99 + 72) * v79, type metadata accessor for MLCheckpoint);
        *(v78 + v76) = v80;
        v24 = *(v103[8] + v76);
        specialized MLTrainingSession.save()();
        v103 = *(v1 + 160);
        v101 = *(v1 + 152);
        v81 = *(v1 + 96);
        v82 = *(v1 + 128);
        if (v104)
        {
          outlined destroy of MLActivityClassifier.ModelParameters(v81, type metadata accessor for MLCheckpoint);
          (v102)(v101, v82);
          (v102)(v103, v82);
          goto LABEL_30;
        }

        v88 = *(v1 + 128);
        PassthroughSubject.send(_:)(*(v1 + 96));
        outlined destroy of MLActivityClassifier.ModelParameters(v81, type metadata accessor for MLCheckpoint);
        (v102)(v101, v88);
        (v102)(v103, v88);
      }

      else
      {
        v83 = *(v1 + 160);
        v84 = *(v1 + 152);
        v85 = *(v1 + 128);
        v86 = *(v1 + 136);
        v72;
        v87 = *(v86 + 8);
        v87(v84, v85);
        v87(v83, v85);
        v24 = *(v1 + 216);
      }

      v25 = 0;
      break;
  }

LABEL_12:
  if (*(v1 + 258) != 1)
  {
    goto LABEL_19;
  }

  v26 = AnalyticsReporter.init()();
  v27 = *(v1 + 64);
  v104 = v25;
  if (!v26)
  {
    v28 = *(v27 + direct field offset for MLTrainingSession.modelType);
    if (v28 != 28)
    {
      v29 = *(v27 + direct field offset for MLTrainingSession.modelType);
      AnalyticsReporter.reportTemplateUsed(model:mode:)(v28);
      v30 = Date.timeIntervalSinceReferenceDate.getter();
      AnalyticsReporter.reportEventDuration(model:task:startTime:)(v29, __PAIR128__(0xE800000000000000, 0x676E696E69617254), v30);
      v27 = *(v1 + 64);
    }
  }

  v31 = (*(v1 + 192) + v27);
  specialized MLTrainingSession.transition(to:)(3, &demangling cache variable for type metadata for MLTrainingSession<MLDecisionTreeClassifier>.Metadata);
  v32 = v31[3];
  v33 = v31[4];
  v98 = 3;
  __swift_project_boxed_opaque_existential_0Tm(v31, v32);
  v34 = v104;
  (*(v33 + 40))(&v98, v32, v33);
  if (v34)
  {
    v104 = v34;
LABEL_30:
    v67 = *(v1 + 168);
    v68 = *(v1 + 160);
    v69 = *(v1 + 152);
    v70 = *(v1 + 144);
    v71 = *(v1 + 120);
    v101 = *(v1 + 104);
    v103 = *(v1 + 88);
    v102 = *(v1 + 96);
    v67;
    v68;
    v69;
    v70;
    v71;
    v101;
    v102;
    v103;
    v40 = *(v1 + 8);
    return v40();
  }

LABEL_20:
  v35 = *(v1 + 168);
  v36 = *(v1 + 160);
  v37 = *(v1 + 152);
  v38 = *(v1 + 144);
  v39 = *(v1 + 120);
  v102 = *(v1 + 104);
  v104 = *(v1 + 88);
  v103 = *(v1 + 96);
  v35;
  v36;
  v37;
  v38;
  v39;
  v102;
  v103;
  v104;
  v40 = *(v1 + 8);
  return v40();
}

{
  v54 = v0 | 0x1000000000000000;
  v53 = v1;
  v2 = v1[8];
  v3 = *(*v2 + 112);
  v1[22] = v3;
  v4 = v3 + v2;
  swift_beginAccess(v4, (v1 + 2), 1, 0);
  v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLSoundClassifier.DataSource>.Metadata);
  v1[23] = v5;
  v46 = v5;
  v45 = v4;
  v6 = *(*(v5 + 44) + v4);
  v1[5] = v6;
  v7 = v6[2];
  v48 = v1;
  v50 = v6;
  if (v7)
  {
    v52 = v1[9];
    v51 = v1[10];
    v47 = v6 + ((*(v51 + 80) + 32) & ~*(v51 + 80));

    while (1)
    {
      if (v7 > v6[2])
      {
        BUG();
      }

      --v7;
      v8 = v1[11];
      outlined init with copy of MLTrainingSessionParameters(&v47[v7 * *(v51 + 72)], v8, type metadata accessor for MLCheckpoint);
      switch(*(v8 + *(v52 + 20)))
      {
        case 0:
          v9 = 0x696C616974696E69;
          v10 = 0xEB0000000064657ALL;
          break;
        case 1:
          v9 = 0x6974636172747865;
          goto LABEL_9;
        case 2:
          v14 = v48[11];
          0;
          v1 = v48;
          outlined destroy of MLActivityClassifier.ModelParameters(v14, type metadata accessor for MLCheckpoint);
          LODWORD(v52) = 0;
          goto LABEL_17;
        case 3:
          v9 = 0x697461756C617665;
LABEL_9:
          v10 = 0xEA0000000000676ELL;
          break;
        case 4:
          v9 = 0x636E657265666E69;
          v10 = &loc_308EF - 0x14FFFFFFFF9B9A86;
          break;
      }

      v11 = v1[11];
      v12 = _stringCompareWithSmolCheck(_:_:expecting:)(v9, v10, 0x676E696E69617274, 0xE800000000000000, 0);
      v10;
      v13 = outlined destroy of MLActivityClassifier.ModelParameters(v11, type metadata accessor for MLCheckpoint);
      if (v12)
      {
        break;
      }

      v1 = v48;
      v6 = v50;
      if (!v7)
      {
        goto LABEL_14;
      }
    }

    LODWORD(v52) = 0;
    v1 = v48;
  }

  else
  {

LABEL_14:
    LOBYTE(v13) = 1;
    LODWORD(v52) = v13;
    v7 = 0;
  }

LABEL_17:
  v51 = v1[9];
  v15 = v1[21];
  v16 = swift_task_alloc(32);
  *(v16 + 16) = v1 + 5;
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lFxq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lyxs5NeverOqd_0_Isgnrzr_xSgAb2ERsd__Ri_d_0_r_0_lIetMgnrzo_Tpq5Si_8CreateML12MLCheckpointVTg5(closure #1 in BidirectionalCollection.last(where:)specialized partial apply, v16, v7, v52, (v1 + 6));
  v50;
  v16;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v51);
  v18 = v48[21];
  if (EnumTagSinglePayload == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v18, &demangling cache variable for type metadata for MLCheckpoint?);
    v51 = 0;
  }

  else
  {
    v51 = *(v18 + *(v48[9] + 24));
    outlined destroy of MLActivityClassifier.ModelParameters(v18, type metadata accessor for MLCheckpoint);
  }

  v50 = v48[7];
  v19 = v48[8];
  v20 = direct field offset for MLTrainingSession.delegate;
  v48[24] = direct field offset for MLTrainingSession.delegate;
  v21 = *(v19 + v20 + 24);
  v52 = *(v19 + v20 + 32);
  __swift_project_boxed_opaque_existential_0Tm((v19 + v20), v21);
  v49 = *(v45 + *(v46 + 28));
  v22 = (*(v52 + 32))(&v49, v21);
  LOBYTE(v21) = v23;
  v48[25] = v22;
  *(v48 + 257) = v23;
  v52 = *(v45 + *(v46 + 32));
  v24 = *(v45 + *(v46 + 28));
  v25 = lazy protocol witness table accessor for type MLProgress.Metric and conformance MLProgress.Metric();
  v26 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for MLProgress.Metric, &type metadata for Any + 8, v25);
  v27 = v22;
  v28 = v50;
  specialized MLJob.reportProgress(completedUnitCount:phase:phaseUnitCount:metrics:)(v52, v24, v27, v21 & 1, v26, specialized MLJob.currentPhase.setter);
  v26;
  if ([*(v28 + direct field offset for MLJob.progress) isCancelled])
  {
    v29 = v48[21];
    v30 = v48[20];
    v31 = v48[19];
    v32 = v48[18];
    v33 = v48[15];
    v51 = v48[13];
    v50 = v48[11];
    v52 = v48[12];
    v29;
    v30;
    v31;
    v32;
    v33;
    v51;
    v52;
    v50;
    return (v48[1])();
  }

  else
  {
    v48[26] = direct field offset for MLTrainingSession.parameters;
    v48[27] = v51;
    v35 = v48[8];
    v36 = v48[23];
    v37 = (v35 + v48[24]);
    v38 = v35 + v48[22];
    v39 = v37[3];
    v40 = v37[4];
    v50 = __swift_project_boxed_opaque_existential_0Tm(v37, v39);
    v41 = *(*(v36 + 32) + v38);
    v42 = *(v40 + 56);
    v43 = (v42 + *v42);
    v44 = swift_task_alloc(v42[1]);
    v48[28] = v44;
    *v44 = v48;
    v44[1] = specialized MLTrainingSession.train(job:);
    return v43(v41, v39, v40);
  }
}

{
  v106 = v0 | 0x1000000000000000;
  v105 = v1;
  v2 = *(v1 + 184);
  v3 = *(v1 + 176) + *(v1 + 64);
  v4 = *(v2 + 32);
  v5 = *(v4 + v3);
  v6 = __OFADD__(*(v1 + 232), v5);
  v7 = *(v1 + 232) + v5;
  if (v6)
  {
    BUG();
  }

  v8 = *(v1 + 240);
  v9 = *(v1 + 216);
  v10 = *(v1 + 200);
  v11 = *(v1 + 257) & 1;
  *(v3 + v4) = v7;
  specialized MLJob.reportProgress(completedUnitCount:phase:phaseUnitCount:metrics:)(v7, *(v3 + *(v2 + 28)), v10, v11, v8, specialized MLJob.currentPhase.setter);
  v12 = *(v3 + *(v2 + 32));
  v6 = __OFSUB__(v12, v9);
  v13 = v12 - v9;
  if (v6)
  {
    BUG();
  }

  v14 = *(v1 + 208) + *(v1 + 64);
  if (v13 < *(*(*(v1 + 112) + 24) + v14))
  {
    if (*(v1 + 232) <= 0)
    {
      *(v1 + 240);
      goto LABEL_11;
    }

    if (!*(v1 + 258))
    {
      *(v1 + 240);
      v24 = *(v1 + 216);
LABEL_19:
      if (![*(*(v1 + 56) + direct field offset for MLJob.progress) isCancelled])
      {
        *(v1 + 216) = v24;
        v41 = *(v1 + 64);
        v42 = *(v1 + 184);
        v43 = (v41 + *(v1 + 192));
        v44 = v41 + *(v1 + 176);
        v45 = v43[3];
        v46 = v43[4];
        v104 = __swift_project_boxed_opaque_existential_0Tm(v43, v45);
        v47 = *(*(v42 + 32) + v44);
        v48 = *(v46 + 56);
        v49 = (v48 + *v48);
        v50 = swift_task_alloc(v48[1]);
        *(v1 + 224) = v50;
        *v50 = v1;
        v50[1] = specialized MLTrainingSession.train(job:);
        return v49(v47, v45, v46);
      }

      goto LABEL_20;
    }
  }

  v104 = *(v3 + *(v2 + 32));
  v15 = *(v1 + 128);
  v16 = *(v1 + 104);
  v17 = *(v1 + 120);
  outlined init with copy of MLTrainingSessionParameters(v14, v17, type metadata accessor for MLTrainingSessionParameters);
  outlined init with take of URL?(v17, v16);
  if (__swift_getEnumTagSinglePayload(v16, 1, v15) == 1)
  {
    v18 = *(v1 + 104);
    *(v1 + 240);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v18, &demangling cache variable for type metadata for URL?);
LABEL_11:
    v24 = *(v1 + 216);
    v25 = *(v1 + 248);
    goto LABEL_12;
  }

  v19 = *(v1 + 184);
  v20 = *(v1 + 176) + *(v1 + 64);
  (*(*(v1 + 136) + 32))(*(v1 + 160), *(v1 + 104), *(v1 + 128));
  v21 = *(*(v19 + 28) + v20);
  v22 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<CVarArg>);
  v23 = swift_allocObject(v22, 112, 7);
  v23[2] = 2;
  v23[3] = 4;
  v103 = (v1 + 256);
  switch(v21)
  {
    case 0:
      v99 = 0x696C616974696E69;
      v100 = 0xEB0000000064657ALL;
      goto LABEL_28;
    case 1:
      v53 = 0x6974636172747865;
      goto LABEL_27;
    case 2:
      v100 = 0xE800000000000000;
      v52 = 0x676E696E69617274;
      goto LABEL_24;
    case 3:
      v53 = 0x697461756C617665;
LABEL_27:
      v99 = v53;
      v100 = 0xEA0000000000676ELL;
      goto LABEL_28;
    case 4:
      v100 = 0xEB00000000676E69;
      v52 = 0x636E657265666E69;
LABEL_24:
      v99 = v52;
LABEL_28:
      v102 = *(v1 + 248);
      v94 = *(v1 + 192);
      v101 = *(v1 + 184);
      v54 = *(v1 + 64);
      v96 = *(v1 + 152);
      v91 = (v54 + v94);
      v90 = v54 + *(v1 + 176);
      v23[7] = &type metadata for String;
      v23[8] = lazy protocol witness table accessor for type String and conformance String();
      v23[4] = v99;
      v23[5] = v100;
      v23[12] = &type metadata for Int;
      v23[13] = &protocol witness table for Int;
      v23[9] = v104;
      v55 = String.init(format:_:)(0xD000000000000012, ("ng a features checkpoint." + 0x8000000000000000), v23);
      v57 = v56;
      URL.appendingPathComponent(_:)(v55, v56);
      v57;
      v58 = *(v54 + v94 + 24);
      v59 = *(v54 + v94 + 32);
      __swift_project_boxed_opaque_existential_0Tm(v91, v58);
      v60 = v101;
      *(v1 + 256) = *(*(v101 + 28) + v90);
      v61 = (*(v59 + 72))(v96, v103, *(*(v60 + 32) + v90), v58, v59);
      if (v102)
      {
        v104 = v102;
        v62 = *(v1 + 160);
        v63 = *(v1 + 152);
        v64 = *(v1 + 128);
        v65 = *(v1 + 136);
        *(v1 + 240);
        v66 = *(v65 + 8);
        v66(v63, v64);
        v66(v62, v64);
        goto LABEL_30;
      }

      v72 = *(v1 + 240);
      if (v61)
      {
        v103 = *(v1 + 184);
        v73 = *(v1 + 152);
        v74 = *(v1 + 144);
        v102 = *(v1 + 136);
        v104 = 0;
        v89 = *(v1 + 128);
        v75 = *(v1 + 96);
        v99 = *(v1 + 80);
        v101 = *(v1 + 64);
        v93 = *(v1 + 72);
        v76 = v101 + *(v1 + 176);
        v77 = v102[2];
        v100 = v74;
        v77(v74, v73);
        v95 = *(v103[7] + v76);
        v97 = *(v103[8] + v76);
        (v77)(v75, v74, v89);
        *(v75 + v93[5]) = v95;
        *(v75 + v93[6]) = v97;
        v92 = v75;
        Date.init()(v75);
        v102 = v102[1];
        (v102)(v100, v89);
        *(v75 + v93[8]) = v72;
        v78 = v103[11];
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        v79 = *(*(v78 + v76) + 16);
        specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(v79);
        v80 = *(v78 + v76);
        *(v80 + 16) = v79 + 1;
        outlined init with copy of MLTrainingSessionParameters(v92, v80 + ((*(v99 + 80) + 32) & ~*(v99 + 80)) + *(v99 + 72) * v79, type metadata accessor for MLCheckpoint);
        *(v78 + v76) = v80;
        v24 = *(v103[8] + v76);
        specialized MLTrainingSession.save()();
        v103 = *(v1 + 160);
        v101 = *(v1 + 152);
        v81 = *(v1 + 96);
        v82 = *(v1 + 128);
        if (v104)
        {
          outlined destroy of MLActivityClassifier.ModelParameters(v81, type metadata accessor for MLCheckpoint);
          (v102)(v101, v82);
          (v102)(v103, v82);
          goto LABEL_30;
        }

        v88 = *(v1 + 128);
        PassthroughSubject.send(_:)(*(v1 + 96));
        outlined destroy of MLActivityClassifier.ModelParameters(v81, type metadata accessor for MLCheckpoint);
        (v102)(v101, v88);
        (v102)(v103, v88);
      }

      else
      {
        v83 = *(v1 + 160);
        v84 = *(v1 + 152);
        v85 = *(v1 + 128);
        v86 = *(v1 + 136);
        v72;
        v87 = *(v86 + 8);
        v87(v84, v85);
        v87(v83, v85);
        v24 = *(v1 + 216);
      }

      v25 = 0;
      break;
  }

LABEL_12:
  if (*(v1 + 258) != 1)
  {
    goto LABEL_19;
  }

  v26 = AnalyticsReporter.init()();
  v27 = *(v1 + 64);
  v104 = v25;
  if (!v26)
  {
    v28 = *(v27 + direct field offset for MLTrainingSession.modelType);
    if (v28 != 28)
    {
      v29 = *(v27 + direct field offset for MLTrainingSession.modelType);
      AnalyticsReporter.reportTemplateUsed(model:mode:)(v28);
      v30 = Date.timeIntervalSinceReferenceDate.getter();
      AnalyticsReporter.reportEventDuration(model:task:startTime:)(v29, __PAIR128__(0xE800000000000000, 0x676E696E69617254), v30);
      v27 = *(v1 + 64);
    }
  }

  v31 = (*(v1 + 192) + v27);
  specialized MLTrainingSession.transition(to:)(3, &demangling cache variable for type metadata for MLTrainingSession<MLSoundClassifier.DataSource>.Metadata);
  v32 = v31[3];
  v33 = v31[4];
  v98 = 3;
  __swift_project_boxed_opaque_existential_0Tm(v31, v32);
  v34 = v104;
  (*(v33 + 40))(&v98, v32, v33);
  if (v34)
  {
    v104 = v34;
LABEL_30:
    v67 = *(v1 + 168);
    v68 = *(v1 + 160);
    v69 = *(v1 + 152);
    v70 = *(v1 + 144);
    v71 = *(v1 + 120);
    v101 = *(v1 + 104);
    v103 = *(v1 + 88);
    v102 = *(v1 + 96);
    v67;
    v68;
    v69;
    v70;
    v71;
    v101;
    v102;
    v103;
    v40 = *(v1 + 8);
    return v40();
  }

LABEL_20:
  v35 = *(v1 + 168);
  v36 = *(v1 + 160);
  v37 = *(v1 + 152);
  v38 = *(v1 + 144);
  v39 = *(v1 + 120);
  v102 = *(v1 + 104);
  v104 = *(v1 + 88);
  v103 = *(v1 + 96);
  v35;
  v36;
  v37;
  v38;
  v39;
  v102;
  v103;
  v104;
  v40 = *(v1 + 8);
  return v40();
}

{
  v54 = v0 | 0x1000000000000000;
  v53 = v1;
  v2 = v1[8];
  v3 = *(*v2 + 112);
  v1[22] = v3;
  v4 = v3 + v2;
  swift_beginAccess(v4, (v1 + 2), 1, 0);
  v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLSoundClassifier>.Metadata);
  v1[23] = v5;
  v46 = v5;
  v45 = v4;
  v6 = *(*(v5 + 44) + v4);
  v1[5] = v6;
  v7 = v6[2];
  v48 = v1;
  v50 = v6;
  if (v7)
  {
    v52 = v1[9];
    v51 = v1[10];
    v47 = v6 + ((*(v51 + 80) + 32) & ~*(v51 + 80));

    while (1)
    {
      if (v7 > v6[2])
      {
        BUG();
      }

      --v7;
      v8 = v1[11];
      outlined init with copy of MLTrainingSessionParameters(&v47[v7 * *(v51 + 72)], v8, type metadata accessor for MLCheckpoint);
      switch(*(v8 + *(v52 + 20)))
      {
        case 0:
          v9 = 0x696C616974696E69;
          v10 = 0xEB0000000064657ALL;
          break;
        case 1:
          v9 = 0x6974636172747865;
          goto LABEL_9;
        case 2:
          v14 = v48[11];
          0;
          v1 = v48;
          outlined destroy of MLActivityClassifier.ModelParameters(v14, type metadata accessor for MLCheckpoint);
          LODWORD(v52) = 0;
          goto LABEL_17;
        case 3:
          v9 = 0x697461756C617665;
LABEL_9:
          v10 = 0xEA0000000000676ELL;
          break;
        case 4:
          v9 = 0x636E657265666E69;
          v10 = &loc_308EF - 0x14FFFFFFFF9B9A86;
          break;
      }

      v11 = v1[11];
      v12 = _stringCompareWithSmolCheck(_:_:expecting:)(v9, v10, 0x676E696E69617274, 0xE800000000000000, 0);
      v10;
      v13 = outlined destroy of MLActivityClassifier.ModelParameters(v11, type metadata accessor for MLCheckpoint);
      if (v12)
      {
        break;
      }

      v1 = v48;
      v6 = v50;
      if (!v7)
      {
        goto LABEL_14;
      }
    }

    LODWORD(v52) = 0;
    v1 = v48;
  }

  else
  {

LABEL_14:
    LOBYTE(v13) = 1;
    LODWORD(v52) = v13;
    v7 = 0;
  }

LABEL_17:
  v51 = v1[9];
  v15 = v1[21];
  v16 = swift_task_alloc(32);
  *(v16 + 16) = v1 + 5;
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lFxq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lyxs5NeverOqd_0_Isgnrzr_xSgAb2ERsd__Ri_d_0_r_0_lIetMgnrzo_Tpq5Si_8CreateML12MLCheckpointVTg5(closure #1 in BidirectionalCollection.last(where:)specialized partial apply, v16, v7, v52, (v1 + 6));
  v50;
  v16;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v51);
  v18 = v48[21];
  if (EnumTagSinglePayload == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v18, &demangling cache variable for type metadata for MLCheckpoint?);
    v51 = 0;
  }

  else
  {
    v51 = *(v18 + *(v48[9] + 24));
    outlined destroy of MLActivityClassifier.ModelParameters(v18, type metadata accessor for MLCheckpoint);
  }

  v50 = v48[7];
  v19 = v48[8];
  v20 = direct field offset for MLTrainingSession.delegate;
  v48[24] = direct field offset for MLTrainingSession.delegate;
  v21 = *(v19 + v20 + 24);
  v52 = *(v19 + v20 + 32);
  __swift_project_boxed_opaque_existential_0Tm((v19 + v20), v21);
  v49 = *(v45 + *(v46 + 28));
  v22 = (*(v52 + 32))(&v49, v21);
  LOBYTE(v21) = v23;
  v48[25] = v22;
  *(v48 + 257) = v23;
  v52 = *(v45 + *(v46 + 32));
  v24 = *(v45 + *(v46 + 28));
  v25 = lazy protocol witness table accessor for type MLProgress.Metric and conformance MLProgress.Metric();
  v26 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for MLProgress.Metric, &type metadata for Any + 8, v25);
  v27 = v22;
  v28 = v50;
  specialized MLJob.reportProgress(completedUnitCount:phase:phaseUnitCount:metrics:)(v52, v24, v27, v21 & 1, v26, specialized MLJob.currentPhase.setter);
  v26;
  if ([*(v28 + direct field offset for MLJob.progress) isCancelled])
  {
    v29 = v48[21];
    v30 = v48[20];
    v31 = v48[19];
    v32 = v48[18];
    v33 = v48[15];
    v51 = v48[13];
    v50 = v48[11];
    v52 = v48[12];
    v29;
    v30;
    v31;
    v32;
    v33;
    v51;
    v52;
    v50;
    return (v48[1])();
  }

  else
  {
    v48[26] = direct field offset for MLTrainingSession.parameters;
    v48[27] = v51;
    v35 = v48[8];
    v36 = v48[23];
    v37 = (v35 + v48[24]);
    v38 = v35 + v48[22];
    v39 = v37[3];
    v40 = v37[4];
    v50 = __swift_project_boxed_opaque_existential_0Tm(v37, v39);
    v41 = *(*(v36 + 32) + v38);
    v42 = *(v40 + 56);
    v43 = (v42 + *v42);
    v44 = swift_task_alloc(v42[1]);
    v48[28] = v44;
    *v44 = v48;
    v44[1] = specialized MLTrainingSession.train(job:);
    return v43(v41, v39, v40);
  }
}

{
  v106 = v0 | 0x1000000000000000;
  v105 = v1;
  v2 = *(v1 + 184);
  v3 = *(v1 + 176) + *(v1 + 64);
  v4 = *(v2 + 32);
  v5 = *(v4 + v3);
  v6 = __OFADD__(*(v1 + 232), v5);
  v7 = *(v1 + 232) + v5;
  if (v6)
  {
    BUG();
  }

  v8 = *(v1 + 240);
  v9 = *(v1 + 216);
  v10 = *(v1 + 200);
  v11 = *(v1 + 257) & 1;
  *(v3 + v4) = v7;
  specialized MLJob.reportProgress(completedUnitCount:phase:phaseUnitCount:metrics:)(v7, *(v3 + *(v2 + 28)), v10, v11, v8, specialized MLJob.currentPhase.setter);
  v12 = *(v3 + *(v2 + 32));
  v6 = __OFSUB__(v12, v9);
  v13 = v12 - v9;
  if (v6)
  {
    BUG();
  }

  v14 = *(v1 + 208) + *(v1 + 64);
  if (v13 < *(*(*(v1 + 112) + 24) + v14))
  {
    if (*(v1 + 232) <= 0)
    {
      *(v1 + 240);
      goto LABEL_11;
    }

    if (!*(v1 + 258))
    {
      *(v1 + 240);
      v24 = *(v1 + 216);
LABEL_19:
      if (![*(*(v1 + 56) + direct field offset for MLJob.progress) isCancelled])
      {
        *(v1 + 216) = v24;
        v41 = *(v1 + 64);
        v42 = *(v1 + 184);
        v43 = (v41 + *(v1 + 192));
        v44 = v41 + *(v1 + 176);
        v45 = v43[3];
        v46 = v43[4];
        v104 = __swift_project_boxed_opaque_existential_0Tm(v43, v45);
        v47 = *(*(v42 + 32) + v44);
        v48 = *(v46 + 56);
        v49 = (v48 + *v48);
        v50 = swift_task_alloc(v48[1]);
        *(v1 + 224) = v50;
        *v50 = v1;
        v50[1] = specialized MLTrainingSession.train(job:);
        return v49(v47, v45, v46);
      }

      goto LABEL_20;
    }
  }

  v104 = *(v3 + *(v2 + 32));
  v15 = *(v1 + 128);
  v16 = *(v1 + 104);
  v17 = *(v1 + 120);
  outlined init with copy of MLTrainingSessionParameters(v14, v17, type metadata accessor for MLTrainingSessionParameters);
  outlined init with take of URL?(v17, v16);
  if (__swift_getEnumTagSinglePayload(v16, 1, v15) == 1)
  {
    v18 = *(v1 + 104);
    *(v1 + 240);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v18, &demangling cache variable for type metadata for URL?);
LABEL_11:
    v24 = *(v1 + 216);
    v25 = *(v1 + 248);
    goto LABEL_12;
  }

  v19 = *(v1 + 184);
  v20 = *(v1 + 176) + *(v1 + 64);
  (*(*(v1 + 136) + 32))(*(v1 + 160), *(v1 + 104), *(v1 + 128));
  v21 = *(*(v19 + 28) + v20);
  v22 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<CVarArg>);
  v23 = swift_allocObject(v22, 112, 7);
  v23[2] = 2;
  v23[3] = 4;
  v103 = (v1 + 256);
  switch(v21)
  {
    case 0:
      v99 = 0x696C616974696E69;
      v100 = 0xEB0000000064657ALL;
      goto LABEL_28;
    case 1:
      v53 = 0x6974636172747865;
      goto LABEL_27;
    case 2:
      v100 = 0xE800000000000000;
      v52 = 0x676E696E69617274;
      goto LABEL_24;
    case 3:
      v53 = 0x697461756C617665;
LABEL_27:
      v99 = v53;
      v100 = 0xEA0000000000676ELL;
      goto LABEL_28;
    case 4:
      v100 = 0xEB00000000676E69;
      v52 = 0x636E657265666E69;
LABEL_24:
      v99 = v52;
LABEL_28:
      v102 = *(v1 + 248);
      v94 = *(v1 + 192);
      v101 = *(v1 + 184);
      v54 = *(v1 + 64);
      v96 = *(v1 + 152);
      v91 = (v54 + v94);
      v90 = v54 + *(v1 + 176);
      v23[7] = &type metadata for String;
      v23[8] = lazy protocol witness table accessor for type String and conformance String();
      v23[4] = v99;
      v23[5] = v100;
      v23[12] = &type metadata for Int;
      v23[13] = &protocol witness table for Int;
      v23[9] = v104;
      v55 = String.init(format:_:)(0xD000000000000012, ("ng a features checkpoint." + 0x8000000000000000), v23);
      v57 = v56;
      URL.appendingPathComponent(_:)(v55, v56);
      v57;
      v58 = *(v54 + v94 + 24);
      v59 = *(v54 + v94 + 32);
      __swift_project_boxed_opaque_existential_0Tm(v91, v58);
      v60 = v101;
      *(v1 + 256) = *(*(v101 + 28) + v90);
      v61 = (*(v59 + 72))(v96, v103, *(*(v60 + 32) + v90), v58, v59);
      if (v102)
      {
        v104 = v102;
        v62 = *(v1 + 160);
        v63 = *(v1 + 152);
        v64 = *(v1 + 128);
        v65 = *(v1 + 136);
        *(v1 + 240);
        v66 = *(v65 + 8);
        v66(v63, v64);
        v66(v62, v64);
        goto LABEL_30;
      }

      v72 = *(v1 + 240);
      if (v61)
      {
        v103 = *(v1 + 184);
        v73 = *(v1 + 152);
        v74 = *(v1 + 144);
        v102 = *(v1 + 136);
        v104 = 0;
        v89 = *(v1 + 128);
        v75 = *(v1 + 96);
        v99 = *(v1 + 80);
        v101 = *(v1 + 64);
        v93 = *(v1 + 72);
        v76 = v101 + *(v1 + 176);
        v77 = v102[2];
        v100 = v74;
        v77(v74, v73);
        v95 = *(v103[7] + v76);
        v97 = *(v103[8] + v76);
        (v77)(v75, v74, v89);
        *(v75 + v93[5]) = v95;
        *(v75 + v93[6]) = v97;
        v92 = v75;
        Date.init()(v75);
        v102 = v102[1];
        (v102)(v100, v89);
        *(v75 + v93[8]) = v72;
        v78 = v103[11];
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        v79 = *(*(v78 + v76) + 16);
        specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(v79);
        v80 = *(v78 + v76);
        *(v80 + 16) = v79 + 1;
        outlined init with copy of MLTrainingSessionParameters(v92, v80 + ((*(v99 + 80) + 32) & ~*(v99 + 80)) + *(v99 + 72) * v79, type metadata accessor for MLCheckpoint);
        *(v78 + v76) = v80;
        v24 = *(v103[8] + v76);
        specialized MLTrainingSession.save()();
        v103 = *(v1 + 160);
        v101 = *(v1 + 152);
        v81 = *(v1 + 96);
        v82 = *(v1 + 128);
        if (v104)
        {
          outlined destroy of MLActivityClassifier.ModelParameters(v81, type metadata accessor for MLCheckpoint);
          (v102)(v101, v82);
          (v102)(v103, v82);
          goto LABEL_30;
        }

        v88 = *(v1 + 128);
        PassthroughSubject.send(_:)(*(v1 + 96));
        outlined destroy of MLActivityClassifier.ModelParameters(v81, type metadata accessor for MLCheckpoint);
        (v102)(v101, v88);
        (v102)(v103, v88);
      }

      else
      {
        v83 = *(v1 + 160);
        v84 = *(v1 + 152);
        v85 = *(v1 + 128);
        v86 = *(v1 + 136);
        v72;
        v87 = *(v86 + 8);
        v87(v84, v85);
        v87(v83, v85);
        v24 = *(v1 + 216);
      }

      v25 = 0;
      break;
  }

LABEL_12:
  if (*(v1 + 258) != 1)
  {
    goto LABEL_19;
  }

  v26 = AnalyticsReporter.init()();
  v27 = *(v1 + 64);
  v104 = v25;
  if (!v26)
  {
    v28 = *(v27 + direct field offset for MLTrainingSession.modelType);
    if (v28 != 28)
    {
      v29 = *(v27 + direct field offset for MLTrainingSession.modelType);
      AnalyticsReporter.reportTemplateUsed(model:mode:)(v28);
      v30 = Date.timeIntervalSinceReferenceDate.getter();
      AnalyticsReporter.reportEventDuration(model:task:startTime:)(v29, __PAIR128__(0xE800000000000000, 0x676E696E69617254), v30);
      v27 = *(v1 + 64);
    }
  }

  v31 = (*(v1 + 192) + v27);
  specialized MLTrainingSession.transition(to:)(3, &demangling cache variable for type metadata for MLTrainingSession<MLSoundClassifier>.Metadata);
  v32 = v31[3];
  v33 = v31[4];
  v98 = 3;
  __swift_project_boxed_opaque_existential_0Tm(v31, v32);
  v34 = v104;
  (*(v33 + 40))(&v98, v32, v33);
  if (v34)
  {
    v104 = v34;
LABEL_30:
    v67 = *(v1 + 168);
    v68 = *(v1 + 160);
    v69 = *(v1 + 152);
    v70 = *(v1 + 144);
    v71 = *(v1 + 120);
    v101 = *(v1 + 104);
    v103 = *(v1 + 88);
    v102 = *(v1 + 96);
    v67;
    v68;
    v69;
    v70;
    v71;
    v101;
    v102;
    v103;
    v40 = *(v1 + 8);
    return v40();
  }

LABEL_20:
  v35 = *(v1 + 168);
  v36 = *(v1 + 160);
  v37 = *(v1 + 152);
  v38 = *(v1 + 144);
  v39 = *(v1 + 120);
  v102 = *(v1 + 104);
  v104 = *(v1 + 88);
  v103 = *(v1 + 96);
  v35;
  v36;
  v37;
  v38;
  v39;
  v102;
  v103;
  v104;
  v40 = *(v1 + 8);
  return v40();
}

{
  v54 = v0 | 0x1000000000000000;
  v53 = v1;
  v2 = v1[8];
  v3 = *(*v2 + 112);
  v1[22] = v3;
  v4 = v3 + v2;
  swift_beginAccess(v4, (v1 + 2), 1, 0);
  v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLBoostedTreeClassifier>.Metadata);
  v1[23] = v5;
  v46 = v5;
  v45 = v4;
  v6 = *(*(v5 + 44) + v4);
  v1[5] = v6;
  v7 = v6[2];
  v48 = v1;
  v50 = v6;
  if (v7)
  {
    v52 = v1[9];
    v51 = v1[10];
    v47 = v6 + ((*(v51 + 80) + 32) & ~*(v51 + 80));

    while (1)
    {
      if (v7 > v6[2])
      {
        BUG();
      }

      --v7;
      v8 = v1[11];
      outlined init with copy of MLTrainingSessionParameters(&v47[v7 * *(v51 + 72)], v8, type metadata accessor for MLCheckpoint);
      switch(*(v8 + *(v52 + 20)))
      {
        case 0:
          v9 = 0x696C616974696E69;
          v10 = 0xEB0000000064657ALL;
          break;
        case 1:
          v9 = 0x6974636172747865;
          goto LABEL_9;
        case 2:
          v14 = v48[11];
          0;
          v1 = v48;
          outlined destroy of MLActivityClassifier.ModelParameters(v14, type metadata accessor for MLCheckpoint);
          LODWORD(v52) = 0;
          goto LABEL_17;
        case 3:
          v9 = 0x697461756C617665;
LABEL_9:
          v10 = 0xEA0000000000676ELL;
          break;
        case 4:
          v9 = 0x636E657265666E69;
          v10 = &loc_308EF - 0x14FFFFFFFF9B9A86;
          break;
      }

      v11 = v1[11];
      v12 = _stringCompareWithSmolCheck(_:_:expecting:)(v9, v10, 0x676E696E69617274, 0xE800000000000000, 0);
      v10;
      v13 = outlined destroy of MLActivityClassifier.ModelParameters(v11, type metadata accessor for MLCheckpoint);
      if (v12)
      {
        break;
      }

      v1 = v48;
      v6 = v50;
      if (!v7)
      {
        goto LABEL_14;
      }
    }

    LODWORD(v52) = 0;
    v1 = v48;
  }

  else
  {

LABEL_14:
    LOBYTE(v13) = 1;
    LODWORD(v52) = v13;
    v7 = 0;
  }

LABEL_17:
  v51 = v1[9];
  v15 = v1[21];
  v16 = swift_task_alloc(32);
  *(v16 + 16) = v1 + 5;
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lFxq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lyxs5NeverOqd_0_Isgnrzr_xSgAb2ERsd__Ri_d_0_r_0_lIetMgnrzo_Tpq5Si_8CreateML12MLCheckpointVTg5(closure #1 in BidirectionalCollection.last(where:)specialized partial apply, v16, v7, v52, (v1 + 6));
  v50;
  v16;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v51);
  v18 = v48[21];
  if (EnumTagSinglePayload == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v18, &demangling cache variable for type metadata for MLCheckpoint?);
    v51 = 0;
  }

  else
  {
    v51 = *(v18 + *(v48[9] + 24));
    outlined destroy of MLActivityClassifier.ModelParameters(v18, type metadata accessor for MLCheckpoint);
  }

  v50 = v48[7];
  v19 = v48[8];
  v20 = direct field offset for MLTrainingSession.delegate;
  v48[24] = direct field offset for MLTrainingSession.delegate;
  v21 = *(v19 + v20 + 24);
  v52 = *(v19 + v20 + 32);
  __swift_project_boxed_opaque_existential_0Tm((v19 + v20), v21);
  v49 = *(v45 + *(v46 + 28));
  v22 = (*(v52 + 32))(&v49, v21);
  LOBYTE(v21) = v23;
  v48[25] = v22;
  *(v48 + 257) = v23;
  v52 = *(v45 + *(v46 + 32));
  v24 = *(v45 + *(v46 + 28));
  v25 = lazy protocol witness table accessor for type MLProgress.Metric and conformance MLProgress.Metric();
  v26 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for MLProgress.Metric, &type metadata for Any + 8, v25);
  v27 = v22;
  v28 = v50;
  specialized MLJob.reportProgress(completedUnitCount:phase:phaseUnitCount:metrics:)(v52, v24, v27, v21 & 1, v26, specialized MLJob.currentPhase.setter);
  v26;
  if ([*(v28 + direct field offset for MLJob.progress) isCancelled])
  {
    v29 = v48[21];
    v30 = v48[20];
    v31 = v48[19];
    v32 = v48[18];
    v33 = v48[15];
    v51 = v48[13];
    v50 = v48[11];
    v52 = v48[12];
    v29;
    v30;
    v31;
    v32;
    v33;
    v51;
    v52;
    v50;
    return (v48[1])();
  }

  else
  {
    v48[26] = direct field offset for MLTrainingSession.parameters;
    v48[27] = v51;
    v35 = v48[8];
    v36 = v48[23];
    v37 = (v35 + v48[24]);
    v38 = v35 + v48[22];
    v39 = v37[3];
    v40 = v37[4];
    v50 = __swift_project_boxed_opaque_existential_0Tm(v37, v39);
    v41 = *(*(v36 + 32) + v38);
    v42 = *(v40 + 56);
    v43 = (v42 + *v42);
    v44 = swift_task_alloc(v42[1]);
    v48[28] = v44;
    *v44 = v48;
    v44[1] = specialized MLTrainingSession.train(job:);
    return v43(v41, v39, v40);
  }
}

{
  v106 = v0 | 0x1000000000000000;
  v105 = v1;
  v2 = *(v1 + 184);
  v3 = *(v1 + 176) + *(v1 + 64);
  v4 = *(v2 + 32);
  v5 = *(v4 + v3);
  v6 = __OFADD__(*(v1 + 232), v5);
  v7 = *(v1 + 232) + v5;
  if (v6)
  {
    BUG();
  }

  v8 = *(v1 + 240);
  v9 = *(v1 + 216);
  v10 = *(v1 + 200);
  v11 = *(v1 + 257) & 1;
  *(v3 + v4) = v7;
  specialized MLJob.reportProgress(completedUnitCount:phase:phaseUnitCount:metrics:)(v7, *(v3 + *(v2 + 28)), v10, v11, v8, specialized MLJob.currentPhase.setter);
  v12 = *(v3 + *(v2 + 32));
  v6 = __OFSUB__(v12, v9);
  v13 = v12 - v9;
  if (v6)
  {
    BUG();
  }

  v14 = *(v1 + 208) + *(v1 + 64);
  if (v13 < *(*(*(v1 + 112) + 24) + v14))
  {
    if (*(v1 + 232) <= 0)
    {
      *(v1 + 240);
      goto LABEL_11;
    }

    if (!*(v1 + 258))
    {
      *(v1 + 240);
      v24 = *(v1 + 216);
LABEL_19:
      if (![*(*(v1 + 56) + direct field offset for MLJob.progress) isCancelled])
      {
        *(v1 + 216) = v24;
        v41 = *(v1 + 64);
        v42 = *(v1 + 184);
        v43 = (v41 + *(v1 + 192));
        v44 = v41 + *(v1 + 176);
        v45 = v43[3];
        v46 = v43[4];
        v104 = __swift_project_boxed_opaque_existential_0Tm(v43, v45);
        v47 = *(*(v42 + 32) + v44);
        v48 = *(v46 + 56);
        v49 = (v48 + *v48);
        v50 = swift_task_alloc(v48[1]);
        *(v1 + 224) = v50;
        *v50 = v1;
        v50[1] = specialized MLTrainingSession.train(job:);
        return v49(v47, v45, v46);
      }

      goto LABEL_20;
    }
  }

  v104 = *(v3 + *(v2 + 32));
  v15 = *(v1 + 128);
  v16 = *(v1 + 104);
  v17 = *(v1 + 120);
  outlined init with copy of MLTrainingSessionParameters(v14, v17, type metadata accessor for MLTrainingSessionParameters);
  outlined init with take of URL?(v17, v16);
  if (__swift_getEnumTagSinglePayload(v16, 1, v15) == 1)
  {
    v18 = *(v1 + 104);
    *(v1 + 240);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v18, &demangling cache variable for type metadata for URL?);
LABEL_11:
    v24 = *(v1 + 216);
    v25 = *(v1 + 248);
    goto LABEL_12;
  }

  v19 = *(v1 + 184);
  v20 = *(v1 + 176) + *(v1 + 64);
  (*(*(v1 + 136) + 32))(*(v1 + 160), *(v1 + 104), *(v1 + 128));
  v21 = *(*(v19 + 28) + v20);
  v22 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<CVarArg>);
  v23 = swift_allocObject(v22, 112, 7);
  v23[2] = 2;
  v23[3] = 4;
  v103 = (v1 + 256);
  switch(v21)
  {
    case 0:
      v99 = 0x696C616974696E69;
      v100 = 0xEB0000000064657ALL;
      goto LABEL_28;
    case 1:
      v53 = 0x6974636172747865;
      goto LABEL_27;
    case 2:
      v100 = 0xE800000000000000;
      v52 = 0x676E696E69617274;
      goto LABEL_24;
    case 3:
      v53 = 0x697461756C617665;
LABEL_27:
      v99 = v53;
      v100 = 0xEA0000000000676ELL;
      goto LABEL_28;
    case 4:
      v100 = 0xEB00000000676E69;
      v52 = 0x636E657265666E69;
LABEL_24:
      v99 = v52;
LABEL_28:
      v102 = *(v1 + 248);
      v94 = *(v1 + 192);
      v101 = *(v1 + 184);
      v54 = *(v1 + 64);
      v96 = *(v1 + 152);
      v91 = (v54 + v94);
      v90 = v54 + *(v1 + 176);
      v23[7] = &type metadata for String;
      v23[8] = lazy protocol witness table accessor for type String and conformance String();
      v23[4] = v99;
      v23[5] = v100;
      v23[12] = &type metadata for Int;
      v23[13] = &protocol witness table for Int;
      v23[9] = v104;
      v55 = String.init(format:_:)(0xD000000000000012, ("ng a features checkpoint." + 0x8000000000000000), v23);
      v57 = v56;
      URL.appendingPathComponent(_:)(v55, v56);
      v57;
      v58 = *(v54 + v94 + 24);
      v59 = *(v54 + v94 + 32);
      __swift_project_boxed_opaque_existential_0Tm(v91, v58);
      v60 = v101;
      *(v1 + 256) = *(*(v101 + 28) + v90);
      v61 = (*(v59 + 72))(v96, v103, *(*(v60 + 32) + v90), v58, v59);
      if (v102)
      {
        v104 = v102;
        v62 = *(v1 + 160);
        v63 = *(v1 + 152);
        v64 = *(v1 + 128);
        v65 = *(v1 + 136);
        *(v1 + 240);
        v66 = *(v65 + 8);
        v66(v63, v64);
        v66(v62, v64);
        goto LABEL_30;
      }

      v72 = *(v1 + 240);
      if (v61)
      {
        v103 = *(v1 + 184);
        v73 = *(v1 + 152);
        v74 = *(v1 + 144);
        v102 = *(v1 + 136);
        v104 = 0;
        v89 = *(v1 + 128);
        v75 = *(v1 + 96);
        v99 = *(v1 + 80);
        v101 = *(v1 + 64);
        v93 = *(v1 + 72);
        v76 = v101 + *(v1 + 176);
        v77 = v102[2];
        v100 = v74;
        v77(v74, v73);
        v95 = *(v103[7] + v76);
        v97 = *(v103[8] + v76);
        (v77)(v75, v74, v89);
        *(v75 + v93[5]) = v95;
        *(v75 + v93[6]) = v97;
        v92 = v75;
        Date.init()(v75);
        v102 = v102[1];
        (v102)(v100, v89);
        *(v75 + v93[8]) = v72;
        v78 = v103[11];
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        v79 = *(*(v78 + v76) + 16);
        specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(v79);
        v80 = *(v78 + v76);
        *(v80 + 16) = v79 + 1;
        outlined init with copy of MLTrainingSessionParameters(v92, v80 + ((*(v99 + 80) + 32) & ~*(v99 + 80)) + *(v99 + 72) * v79, type metadata accessor for MLCheckpoint);
        *(v78 + v76) = v80;
        v24 = *(v103[8] + v76);
        specialized MLTrainingSession.save()();
        v103 = *(v1 + 160);
        v101 = *(v1 + 152);
        v81 = *(v1 + 96);
        v82 = *(v1 + 128);
        if (v104)
        {
          outlined destroy of MLActivityClassifier.ModelParameters(v81, type metadata accessor for MLCheckpoint);
          (v102)(v101, v82);
          (v102)(v103, v82);
          goto LABEL_30;
        }

        v88 = *(v1 + 128);
        PassthroughSubject.send(_:)(*(v1 + 96));
        outlined destroy of MLActivityClassifier.ModelParameters(v81, type metadata accessor for MLCheckpoint);
        (v102)(v101, v88);
        (v102)(v103, v88);
      }

      else
      {
        v83 = *(v1 + 160);
        v84 = *(v1 + 152);
        v85 = *(v1 + 128);
        v86 = *(v1 + 136);
        v72;
        v87 = *(v86 + 8);
        v87(v84, v85);
        v87(v83, v85);
        v24 = *(v1 + 216);
      }

      v25 = 0;
      break;
  }

LABEL_12:
  if (*(v1 + 258) != 1)
  {
    goto LABEL_19;
  }

  v26 = AnalyticsReporter.init()();
  v27 = *(v1 + 64);
  v104 = v25;
  if (!v26)
  {
    v28 = *(v27 + direct field offset for MLTrainingSession.modelType);
    if (v28 != 28)
    {
      v29 = *(v27 + direct field offset for MLTrainingSession.modelType);
      AnalyticsReporter.reportTemplateUsed(model:mode:)(v28);
      v30 = Date.timeIntervalSinceReferenceDate.getter();
      AnalyticsReporter.reportEventDuration(model:task:startTime:)(v29, __PAIR128__(0xE800000000000000, 0x676E696E69617254), v30);
      v27 = *(v1 + 64);
    }
  }

  v31 = (*(v1 + 192) + v27);
  specialized MLTrainingSession.transition(to:)(3, &demangling cache variable for type metadata for MLTrainingSession<MLBoostedTreeClassifier>.Metadata);
  v32 = v31[3];
  v33 = v31[4];
  v98 = 3;
  __swift_project_boxed_opaque_existential_0Tm(v31, v32);
  v34 = v104;
  (*(v33 + 40))(&v98, v32, v33);
  if (v34)
  {
    v104 = v34;
LABEL_30:
    v67 = *(v1 + 168);
    v68 = *(v1 + 160);
    v69 = *(v1 + 152);
    v70 = *(v1 + 144);
    v71 = *(v1 + 120);
    v101 = *(v1 + 104);
    v103 = *(v1 + 88);
    v102 = *(v1 + 96);
    v67;
    v68;
    v69;
    v70;
    v71;
    v101;
    v102;
    v103;
    v40 = *(v1 + 8);
    return v40();
  }

LABEL_20:
  v35 = *(v1 + 168);
  v36 = *(v1 + 160);
  v37 = *(v1 + 152);
  v38 = *(v1 + 144);
  v39 = *(v1 + 120);
  v102 = *(v1 + 104);
  v104 = *(v1 + 88);
  v103 = *(v1 + 96);
  v35;
  v36;
  v37;
  v38;
  v39;
  v102;
  v103;
  v104;
  v40 = *(v1 + 8);
  return v40();
}

{
  v54 = v0 | 0x1000000000000000;
  v53 = v1;
  v2 = v1[8];
  v3 = *(*v2 + 112);
  v1[22] = v3;
  v4 = v3 + v2;
  swift_beginAccess(v4, (v1 + 2), 1, 0);
  v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLLinearRegressor>.Metadata);
  v1[23] = v5;
  v46 = v5;
  v45 = v4;
  v6 = *(*(v5 + 44) + v4);
  v1[5] = v6;
  v7 = v6[2];
  v48 = v1;
  v50 = v6;
  if (v7)
  {
    v52 = v1[9];
    v51 = v1[10];
    v47 = v6 + ((*(v51 + 80) + 32) & ~*(v51 + 80));

    while (1)
    {
      if (v7 > v6[2])
      {
        BUG();
      }

      --v7;
      v8 = v1[11];
      outlined init with copy of MLTrainingSessionParameters(&v47[v7 * *(v51 + 72)], v8, type metadata accessor for MLCheckpoint);
      switch(*(v8 + *(v52 + 20)))
      {
        case 0:
          v9 = 0x696C616974696E69;
          v10 = 0xEB0000000064657ALL;
          break;
        case 1:
          v9 = 0x6974636172747865;
          goto LABEL_9;
        case 2:
          v14 = v48[11];
          0;
          v1 = v48;
          outlined destroy of MLActivityClassifier.ModelParameters(v14, type metadata accessor for MLCheckpoint);
          LODWORD(v52) = 0;
          goto LABEL_17;
        case 3:
          v9 = 0x697461756C617665;
LABEL_9:
          v10 = 0xEA0000000000676ELL;
          break;
        case 4:
          v9 = 0x636E657265666E69;
          v10 = &loc_308EF - 0x14FFFFFFFF9B9A86;
          break;
      }

      v11 = v1[11];
      v12 = _stringCompareWithSmolCheck(_:_:expecting:)(v9, v10, 0x676E696E69617274, 0xE800000000000000, 0);
      v10;
      v13 = outlined destroy of MLActivityClassifier.ModelParameters(v11, type metadata accessor for MLCheckpoint);
      if (v12)
      {
        break;
      }

      v1 = v48;
      v6 = v50;
      if (!v7)
      {
        goto LABEL_14;
      }
    }

    LODWORD(v52) = 0;
    v1 = v48;
  }

  else
  {

LABEL_14:
    LOBYTE(v13) = 1;
    LODWORD(v52) = v13;
    v7 = 0;
  }

LABEL_17:
  v51 = v1[9];
  v15 = v1[21];
  v16 = swift_task_alloc(32);
  *(v16 + 16) = v1 + 5;
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lFxq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lyxs5NeverOqd_0_Isgnrzr_xSgAb2ERsd__Ri_d_0_r_0_lIetMgnrzo_Tpq5Si_8CreateML12MLCheckpointVTg5(closure #1 in BidirectionalCollection.last(where:)specialized partial apply, v16, v7, v52, (v1 + 6));
  v50;
  v16;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v51);
  v18 = v48[21];
  if (EnumTagSinglePayload == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v18, &demangling cache variable for type metadata for MLCheckpoint?);
    v51 = 0;
  }

  else
  {
    v51 = *(v18 + *(v48[9] + 24));
    outlined destroy of MLActivityClassifier.ModelParameters(v18, type metadata accessor for MLCheckpoint);
  }

  v50 = v48[7];
  v19 = v48[8];
  v20 = direct field offset for MLTrainingSession.delegate;
  v48[24] = direct field offset for MLTrainingSession.delegate;
  v21 = *(v19 + v20 + 24);
  v52 = *(v19 + v20 + 32);
  __swift_project_boxed_opaque_existential_0Tm((v19 + v20), v21);
  v49 = *(v45 + *(v46 + 28));
  v22 = (*(v52 + 32))(&v49, v21);
  LOBYTE(v21) = v23;
  v48[25] = v22;
  *(v48 + 257) = v23;
  v52 = *(v45 + *(v46 + 32));
  v24 = *(v45 + *(v46 + 28));
  v25 = lazy protocol witness table accessor for type MLProgress.Metric and conformance MLProgress.Metric();
  v26 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for MLProgress.Metric, &type metadata for Any + 8, v25);
  v27 = v22;
  v28 = v50;
  specialized MLJob.reportProgress(completedUnitCount:phase:phaseUnitCount:metrics:)(v52, v24, v27, v21 & 1, v26, specialized MLJob.currentPhase.setter);
  v26;
  if ([*(v28 + direct field offset for MLJob.progress) isCancelled])
  {
    v29 = v48[21];
    v30 = v48[20];
    v31 = v48[19];
    v32 = v48[18];
    v33 = v48[15];
    v51 = v48[13];
    v50 = v48[11];
    v52 = v48[12];
    v29;
    v30;
    v31;
    v32;
    v33;
    v51;
    v52;
    v50;
    return (v48[1])();
  }

  else
  {
    v48[26] = direct field offset for MLTrainingSession.parameters;
    v48[27] = v51;
    v35 = v48[8];
    v36 = v48[23];
    v37 = (v35 + v48[24]);
    v38 = v35 + v48[22];
    v39 = v37[3];
    v40 = v37[4];
    v50 = __swift_project_boxed_opaque_existential_0Tm(v37, v39);
    v41 = *(*(v36 + 32) + v38);
    v42 = *(v40 + 56);
    v43 = (v42 + *v42);
    v44 = swift_task_alloc(v42[1]);
    v48[28] = v44;
    *v44 = v48;
    v44[1] = specialized MLTrainingSession.train(job:);
    return v43(v41, v39, v40);
  }
}

{
  v106 = v0 | 0x1000000000000000;
  v105 = v1;
  v2 = *(v1 + 184);
  v3 = *(v1 + 176) + *(v1 + 64);
  v4 = *(v2 + 32);
  v5 = *(v4 + v3);
  v6 = __OFADD__(*(v1 + 232), v5);
  v7 = *(v1 + 232) + v5;
  if (v6)
  {
    BUG();
  }

  v8 = *(v1 + 240);
  v9 = *(v1 + 216);
  v10 = *(v1 + 200);
  v11 = *(v1 + 257) & 1;
  *(v3 + v4) = v7;
  specialized MLJob.reportProgress(completedUnitCount:phase:phaseUnitCount:metrics:)(v7, *(v3 + *(v2 + 28)), v10, v11, v8, specialized MLJob.currentPhase.setter);
  v12 = *(v3 + *(v2 + 32));
  v6 = __OFSUB__(v12, v9);
  v13 = v12 - v9;
  if (v6)
  {
    BUG();
  }

  v14 = *(v1 + 208) + *(v1 + 64);
  if (v13 < *(*(*(v1 + 112) + 24) + v14))
  {
    if (*(v1 + 232) <= 0)
    {
      *(v1 + 240);
      goto LABEL_11;
    }

    if (!*(v1 + 258))
    {
      *(v1 + 240);
      v24 = *(v1 + 216);
LABEL_19:
      if (![*(*(v1 + 56) + direct field offset for MLJob.progress) isCancelled])
      {
        *(v1 + 216) = v24;
        v41 = *(v1 + 64);
        v42 = *(v1 + 184);
        v43 = (v41 + *(v1 + 192));
        v44 = v41 + *(v1 + 176);
        v45 = v43[3];
        v46 = v43[4];
        v104 = __swift_project_boxed_opaque_existential_0Tm(v43, v45);
        v47 = *(*(v42 + 32) + v44);
        v48 = *(v46 + 56);
        v49 = (v48 + *v48);
        v50 = swift_task_alloc(v48[1]);
        *(v1 + 224) = v50;
        *v50 = v1;
        v50[1] = specialized MLTrainingSession.train(job:);
        return v49(v47, v45, v46);
      }

      goto LABEL_20;
    }
  }

  v104 = *(v3 + *(v2 + 32));
  v15 = *(v1 + 128);
  v16 = *(v1 + 104);
  v17 = *(v1 + 120);
  outlined init with copy of MLTrainingSessionParameters(v14, v17, type metadata accessor for MLTrainingSessionParameters);
  outlined init with take of URL?(v17, v16);
  if (__swift_getEnumTagSinglePayload(v16, 1, v15) == 1)
  {
    v18 = *(v1 + 104);
    *(v1 + 240);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v18, &demangling cache variable for type metadata for URL?);
LABEL_11:
    v24 = *(v1 + 216);
    v25 = *(v1 + 248);
    goto LABEL_12;
  }

  v19 = *(v1 + 184);
  v20 = *(v1 + 176) + *(v1 + 64);
  (*(*(v1 + 136) + 32))(*(v1 + 160), *(v1 + 104), *(v1 + 128));
  v21 = *(*(v19 + 28) + v20);
  v22 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<CVarArg>);
  v23 = swift_allocObject(v22, 112, 7);
  v23[2] = 2;
  v23[3] = 4;
  v103 = (v1 + 256);
  switch(v21)
  {
    case 0:
      v99 = 0x696C616974696E69;
      v100 = 0xEB0000000064657ALL;
      goto LABEL_28;
    case 1:
      v53 = 0x6974636172747865;
      goto LABEL_27;
    case 2:
      v100 = 0xE800000000000000;
      v52 = 0x676E696E69617274;
      goto LABEL_24;
    case 3:
      v53 = 0x697461756C617665;
LABEL_27:
      v99 = v53;
      v100 = 0xEA0000000000676ELL;
      goto LABEL_28;
    case 4:
      v100 = 0xEB00000000676E69;
      v52 = 0x636E657265666E69;
LABEL_24:
      v99 = v52;
LABEL_28:
      v102 = *(v1 + 248);
      v94 = *(v1 + 192);
      v101 = *(v1 + 184);
      v54 = *(v1 + 64);
      v96 = *(v1 + 152);
      v91 = (v54 + v94);
      v90 = v54 + *(v1 + 176);
      v23[7] = &type metadata for String;
      v23[8] = lazy protocol witness table accessor for type String and conformance String();
      v23[4] = v99;
      v23[5] = v100;
      v23[12] = &type metadata for Int;
      v23[13] = &protocol witness table for Int;
      v23[9] = v104;
      v55 = String.init(format:_:)(0xD000000000000012, ("ng a features checkpoint." + 0x8000000000000000), v23);
      v57 = v56;
      URL.appendingPathComponent(_:)(v55, v56);
      v57;
      v58 = *(v54 + v94 + 24);
      v59 = *(v54 + v94 + 32);
      __swift_project_boxed_opaque_existential_0Tm(v91, v58);
      v60 = v101;
      *(v1 + 256) = *(*(v101 + 28) + v90);
      v61 = (*(v59 + 72))(v96, v103, *(*(v60 + 32) + v90), v58, v59);
      if (v102)
      {
        v104 = v102;
        v62 = *(v1 + 160);
        v63 = *(v1 + 152);
        v64 = *(v1 + 128);
        v65 = *(v1 + 136);
        *(v1 + 240);
        v66 = *(v65 + 8);
        v66(v63, v64);
        v66(v62, v64);
        goto LABEL_30;
      }

      v72 = *(v1 + 240);
      if (v61)
      {
        v103 = *(v1 + 184);
        v73 = *(v1 + 152);
        v74 = *(v1 + 144);
        v102 = *(v1 + 136);
        v104 = 0;
        v89 = *(v1 + 128);
        v75 = *(v1 + 96);
        v99 = *(v1 + 80);
        v101 = *(v1 + 64);
        v93 = *(v1 + 72);
        v76 = v101 + *(v1 + 176);
        v77 = v102[2];
        v100 = v74;
        v77(v74, v73);
        v95 = *(v103[7] + v76);
        v97 = *(v103[8] + v76);
        (v77)(v75, v74, v89);
        *(v75 + v93[5]) = v95;
        *(v75 + v93[6]) = v97;
        v92 = v75;
        Date.init()(v75);
        v102 = v102[1];
        (v102)(v100, v89);
        *(v75 + v93[8]) = v72;
        v78 = v103[11];
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        v79 = *(*(v78 + v76) + 16);
        specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(v79);
        v80 = *(v78 + v76);
        *(v80 + 16) = v79 + 1;
        outlined init with copy of MLTrainingSessionParameters(v92, v80 + ((*(v99 + 80) + 32) & ~*(v99 + 80)) + *(v99 + 72) * v79, type metadata accessor for MLCheckpoint);
        *(v78 + v76) = v80;
        v24 = *(v103[8] + v76);
        specialized MLTrainingSession.save()();
        v103 = *(v1 + 160);
        v101 = *(v1 + 152);
        v81 = *(v1 + 96);
        v82 = *(v1 + 128);
        if (v104)
        {
          outlined destroy of MLActivityClassifier.ModelParameters(v81, type metadata accessor for MLCheckpoint);
          (v102)(v101, v82);
          (v102)(v103, v82);
          goto LABEL_30;
        }

        v88 = *(v1 + 128);
        PassthroughSubject.send(_:)(*(v1 + 96));
        outlined destroy of MLActivityClassifier.ModelParameters(v81, type metadata accessor for MLCheckpoint);
        (v102)(v101, v88);
        (v102)(v103, v88);
      }

      else
      {
        v83 = *(v1 + 160);
        v84 = *(v1 + 152);
        v85 = *(v1 + 128);
        v86 = *(v1 + 136);
        v72;
        v87 = *(v86 + 8);
        v87(v84, v85);
        v87(v83, v85);
        v24 = *(v1 + 216);
      }

      v25 = 0;
      break;
  }

LABEL_12:
  if (*(v1 + 258) != 1)
  {
    goto LABEL_19;
  }

  v26 = AnalyticsReporter.init()();
  v27 = *(v1 + 64);
  v104 = v25;
  if (!v26)
  {
    v28 = *(v27 + direct field offset for MLTrainingSession.modelType);
    if (v28 != 28)
    {
      v29 = *(v27 + direct field offset for MLTrainingSession.modelType);
      AnalyticsReporter.reportTemplateUsed(model:mode:)(v28);
      v30 = Date.timeIntervalSinceReferenceDate.getter();
      AnalyticsReporter.reportEventDuration(model:task:startTime:)(v29, __PAIR128__(0xE800000000000000, 0x676E696E69617254), v30);
      v27 = *(v1 + 64);
    }
  }

  v31 = (*(v1 + 192) + v27);
  specialized MLTrainingSession.transition(to:)(3, &demangling cache variable for type metadata for MLTrainingSession<MLLinearRegressor>.Metadata);
  v32 = v31[3];
  v33 = v31[4];
  v98 = 3;
  __swift_project_boxed_opaque_existential_0Tm(v31, v32);
  v34 = v104;
  (*(v33 + 40))(&v98, v32, v33);
  if (v34)
  {
    v104 = v34;
LABEL_30:
    v67 = *(v1 + 168);
    v68 = *(v1 + 160);
    v69 = *(v1 + 152);
    v70 = *(v1 + 144);
    v71 = *(v1 + 120);
    v101 = *(v1 + 104);
    v103 = *(v1 + 88);
    v102 = *(v1 + 96);
    v67;
    v68;
    v69;
    v70;
    v71;
    v101;
    v102;
    v103;
    v40 = *(v1 + 8);
    return v40();
  }

LABEL_20:
  v35 = *(v1 + 168);
  v36 = *(v1 + 160);
  v37 = *(v1 + 152);
  v38 = *(v1 + 144);
  v39 = *(v1 + 120);
  v102 = *(v1 + 104);
  v104 = *(v1 + 88);
  v103 = *(v1 + 96);
  v35;
  v36;
  v37;
  v38;
  v39;
  v102;
  v103;
  v104;
  v40 = *(v1 + 8);
  return v40();
}

{
  v54 = v0 | 0x1000000000000000;
  v53 = v1;
  v2 = v1[8];
  v3 = *(*v2 + 112);
  v1[22] = v3;
  v4 = v3 + v2;
  swift_beginAccess(v4, (v1 + 2), 1, 0);
  v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLImageClassifier>.Metadata);
  v1[23] = v5;
  v46 = v5;
  v45 = v4;
  v6 = *(*(v5 + 44) + v4);
  v1[5] = v6;
  v7 = v6[2];
  v48 = v1;
  v50 = v6;
  if (v7)
  {
    v52 = v1[9];
    v51 = v1[10];
    v47 = v6 + ((*(v51 + 80) + 32) & ~*(v51 + 80));

    while (1)
    {
      if (v7 > v6[2])
      {
        BUG();
      }

      --v7;
      v8 = v1[11];
      outlined init with copy of MLTrainingSessionParameters(&v47[v7 * *(v51 + 72)], v8, type metadata accessor for MLCheckpoint);
      switch(*(v8 + *(v52 + 20)))
      {
        case 0:
          v9 = 0x696C616974696E69;
          v10 = 0xEB0000000064657ALL;
          break;
        case 1:
          v9 = 0x6974636172747865;
          goto LABEL_9;
        case 2:
          v14 = v48[11];
          0;
          v1 = v48;
          outlined destroy of MLActivityClassifier.ModelParameters(v14, type metadata accessor for MLCheckpoint);
          LODWORD(v52) = 0;
          goto LABEL_17;
        case 3:
          v9 = 0x697461756C617665;
LABEL_9:
          v10 = 0xEA0000000000676ELL;
          break;
        case 4:
          v9 = 0x636E657265666E69;
          v10 = &loc_308EF - 0x14FFFFFFFF9B9A86;
          break;
      }

      v11 = v1[11];
      v12 = _stringCompareWithSmolCheck(_:_:expecting:)(v9, v10, 0x676E696E69617274, 0xE800000000000000, 0);
      v10;
      v13 = outlined destroy of MLActivityClassifier.ModelParameters(v11, type metadata accessor for MLCheckpoint);
      if (v12)
      {
        break;
      }

      v1 = v48;
      v6 = v50;
      if (!v7)
      {
        goto LABEL_14;
      }
    }

    LODWORD(v52) = 0;
    v1 = v48;
  }

  else
  {

LABEL_14:
    LOBYTE(v13) = 1;
    LODWORD(v52) = v13;
    v7 = 0;
  }

LABEL_17:
  v51 = v1[9];
  v15 = v1[21];
  v16 = swift_task_alloc(32);
  *(v16 + 16) = v1 + 5;
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lFxq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lyxs5NeverOqd_0_Isgnrzr_xSgAb2ERsd__Ri_d_0_r_0_lIetMgnrzo_Tpq5Si_8CreateML12MLCheckpointVTg5(closure #1 in BidirectionalCollection.last(where:)specialized partial apply, v16, v7, v52, (v1 + 6));
  v50;
  v16;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v51);
  v18 = v48[21];
  if (EnumTagSinglePayload == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v18, &demangling cache variable for type metadata for MLCheckpoint?);
    v51 = 0;
  }

  else
  {
    v51 = *(v18 + *(v48[9] + 24));
    outlined destroy of MLActivityClassifier.ModelParameters(v18, type metadata accessor for MLCheckpoint);
  }

  v50 = v48[7];
  v19 = v48[8];
  v20 = direct field offset for MLTrainingSession.delegate;
  v48[24] = direct field offset for MLTrainingSession.delegate;
  v21 = *(v19 + v20 + 24);
  v52 = *(v19 + v20 + 32);
  __swift_project_boxed_opaque_existential_0Tm((v19 + v20), v21);
  v49 = *(v45 + *(v46 + 28));
  v22 = (*(v52 + 32))(&v49, v21);
  LOBYTE(v21) = v23;
  v48[25] = v22;
  *(v48 + 257) = v23;
  v52 = *(v45 + *(v46 + 32));
  v24 = *(v45 + *(v46 + 28));
  v25 = lazy protocol witness table accessor for type MLProgress.Metric and conformance MLProgress.Metric();
  v26 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for MLProgress.Metric, &type metadata for Any + 8, v25);
  v27 = v22;
  v28 = v50;
  specialized MLJob.reportProgress(completedUnitCount:phase:phaseUnitCount:metrics:)(v52, v24, v27, v21 & 1, v26, specialized MLJob.currentPhase.setter);
  v26;
  if ([*(v28 + direct field offset for MLJob.progress) isCancelled])
  {
    v29 = v48[21];
    v30 = v48[20];
    v31 = v48[19];
    v32 = v48[18];
    v33 = v48[15];
    v51 = v48[13];
    v50 = v48[11];
    v52 = v48[12];
    v29;
    v30;
    v31;
    v32;
    v33;
    v51;
    v52;
    v50;
    return (v48[1])();
  }

  else
  {
    v48[26] = direct field offset for MLTrainingSession.parameters;
    v48[27] = v51;
    v35 = v48[8];
    v36 = v48[23];
    v37 = (v35 + v48[24]);
    v38 = v35 + v48[22];
    v39 = v37[3];
    v40 = v37[4];
    v50 = __swift_project_boxed_opaque_existential_0Tm(v37, v39);
    v41 = *(*(v36 + 32) + v38);
    v42 = *(v40 + 56);
    v43 = (v42 + *v42);
    v44 = swift_task_alloc(v42[1]);
    v48[28] = v44;
    *v44 = v48;
    v44[1] = specialized MLTrainingSession.train(job:);
    return v43(v41, v39, v40);
  }
}

{
  v106 = v0 | 0x1000000000000000;
  v105 = v1;
  v2 = *(v1 + 184);
  v3 = *(v1 + 176) + *(v1 + 64);
  v4 = *(v2 + 32);
  v5 = *(v4 + v3);
  v6 = __OFADD__(*(v1 + 232), v5);
  v7 = *(v1 + 232) + v5;
  if (v6)
  {
    BUG();
  }

  v8 = *(v1 + 240);
  v9 = *(v1 + 216);
  v10 = *(v1 + 200);
  v11 = *(v1 + 257) & 1;
  *(v3 + v4) = v7;
  specialized MLJob.reportProgress(completedUnitCount:phase:phaseUnitCount:metrics:)(v7, *(v3 + *(v2 + 28)), v10, v11, v8, specialized MLJob.currentPhase.setter);
  v12 = *(v3 + *(v2 + 32));
  v6 = __OFSUB__(v12, v9);
  v13 = v12 - v9;
  if (v6)
  {
    BUG();
  }

  v14 = *(v1 + 208) + *(v1 + 64);
  if (v13 < *(*(*(v1 + 112) + 24) + v14))
  {
    if (*(v1 + 232) <= 0)
    {
      *(v1 + 240);
      goto LABEL_11;
    }

    if (!*(v1 + 258))
    {
      *(v1 + 240);
      v24 = *(v1 + 216);
LABEL_19:
      if (![*(*(v1 + 56) + direct field offset for MLJob.progress) isCancelled])
      {
        *(v1 + 216) = v24;
        v41 = *(v1 + 64);
        v42 = *(v1 + 184);
        v43 = (v41 + *(v1 + 192));
        v44 = v41 + *(v1 + 176);
        v45 = v43[3];
        v46 = v43[4];
        v104 = __swift_project_boxed_opaque_existential_0Tm(v43, v45);
        v47 = *(*(v42 + 32) + v44);
        v48 = *(v46 + 56);
        v49 = (v48 + *v48);
        v50 = swift_task_alloc(v48[1]);
        *(v1 + 224) = v50;
        *v50 = v1;
        v50[1] = specialized MLTrainingSession.train(job:);
        return v49(v47, v45, v46);
      }

      goto LABEL_20;
    }
  }

  v104 = *(v3 + *(v2 + 32));
  v15 = *(v1 + 128);
  v16 = *(v1 + 104);
  v17 = *(v1 + 120);
  outlined init with copy of MLTrainingSessionParameters(v14, v17, type metadata accessor for MLTrainingSessionParameters);
  outlined init with take of URL?(v17, v16);
  if (__swift_getEnumTagSinglePayload(v16, 1, v15) == 1)
  {
    v18 = *(v1 + 104);
    *(v1 + 240);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v18, &demangling cache variable for type metadata for URL?);
LABEL_11:
    v24 = *(v1 + 216);
    v25 = *(v1 + 248);
    goto LABEL_12;
  }

  v19 = *(v1 + 184);
  v20 = *(v1 + 176) + *(v1 + 64);
  (*(*(v1 + 136) + 32))(*(v1 + 160), *(v1 + 104), *(v1 + 128));
  v21 = *(*(v19 + 28) + v20);
  v22 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<CVarArg>);
  v23 = swift_allocObject(v22, 112, 7);
  v23[2] = 2;
  v23[3] = 4;
  v103 = (v1 + 256);
  switch(v21)
  {
    case 0:
      v99 = 0x696C616974696E69;
      v100 = 0xEB0000000064657ALL;
      goto LABEL_28;
    case 1:
      v53 = 0x6974636172747865;
      goto LABEL_27;
    case 2:
      v100 = 0xE800000000000000;
      v52 = 0x676E696E69617274;
      goto LABEL_24;
    case 3:
      v53 = 0x697461756C617665;
LABEL_27:
      v99 = v53;
      v100 = 0xEA0000000000676ELL;
      goto LABEL_28;
    case 4:
      v100 = 0xEB00000000676E69;
      v52 = 0x636E657265666E69;
LABEL_24:
      v99 = v52;
LABEL_28:
      v102 = *(v1 + 248);
      v94 = *(v1 + 192);
      v101 = *(v1 + 184);
      v54 = *(v1 + 64);
      v96 = *(v1 + 152);
      v91 = (v54 + v94);
      v90 = v54 + *(v1 + 176);
      v23[7] = &type metadata for String;
      v23[8] = lazy protocol witness table accessor for type String and conformance String();
      v23[4] = v99;
      v23[5] = v100;
      v23[12] = &type metadata for Int;
      v23[13] = &protocol witness table for Int;
      v23[9] = v104;
      v55 = String.init(format:_:)(0xD000000000000012, ("ng a features checkpoint." + 0x8000000000000000), v23);
      v57 = v56;
      URL.appendingPathComponent(_:)(v55, v56);
      v57;
      v58 = *(v54 + v94 + 24);
      v59 = *(v54 + v94 + 32);
      __swift_project_boxed_opaque_existential_0Tm(v91, v58);
      v60 = v101;
      *(v1 + 256) = *(*(v101 + 28) + v90);
      v61 = (*(v59 + 72))(v96, v103, *(*(v60 + 32) + v90), v58, v59);
      if (v102)
      {
        v104 = v102;
        v62 = *(v1 + 160);
        v63 = *(v1 + 152);
        v64 = *(v1 + 128);
        v65 = *(v1 + 136);
        *(v1 + 240);
        v66 = *(v65 + 8);
        v66(v63, v64);
        v66(v62, v64);
        goto LABEL_30;
      }

      v72 = *(v1 + 240);
      if (v61)
      {
        v103 = *(v1 + 184);
        v73 = *(v1 + 152);
        v74 = *(v1 + 144);
        v102 = *(v1 + 136);
        v104 = 0;
        v89 = *(v1 + 128);
        v75 = *(v1 + 96);
        v99 = *(v1 + 80);
        v101 = *(v1 + 64);
        v93 = *(v1 + 72);
        v76 = v101 + *(v1 + 176);
        v77 = v102[2];
        v100 = v74;
        v77(v74, v73);
        v95 = *(v103[7] + v76);
        v97 = *(v103[8] + v76);
        (v77)(v75, v74, v89);
        *(v75 + v93[5]) = v95;
        *(v75 + v93[6]) = v97;
        v92 = v75;
        Date.init()(v75);
        v102 = v102[1];
        (v102)(v100, v89);
        *(v75 + v93[8]) = v72;
        v78 = v103[11];
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        v79 = *(*(v78 + v76) + 16);
        specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(v79);
        v80 = *(v78 + v76);
        *(v80 + 16) = v79 + 1;
        outlined init with copy of MLTrainingSessionParameters(v92, v80 + ((*(v99 + 80) + 32) & ~*(v99 + 80)) + *(v99 + 72) * v79, type metadata accessor for MLCheckpoint);
        *(v78 + v76) = v80;
        v24 = *(v103[8] + v76);
        specialized MLTrainingSession.save()();
        v103 = *(v1 + 160);
        v101 = *(v1 + 152);
        v81 = *(v1 + 96);
        v82 = *(v1 + 128);
        if (v104)
        {
          outlined destroy of MLActivityClassifier.ModelParameters(v81, type metadata accessor for MLCheckpoint);
          (v102)(v101, v82);
          (v102)(v103, v82);
          goto LABEL_30;
        }

        v88 = *(v1 + 128);
        PassthroughSubject.send(_:)(*(v1 + 96));
        outlined destroy of MLActivityClassifier.ModelParameters(v81, type metadata accessor for MLCheckpoint);
        (v102)(v101, v88);
        (v102)(v103, v88);
      }

      else
      {
        v83 = *(v1 + 160);
        v84 = *(v1 + 152);
        v85 = *(v1 + 128);
        v86 = *(v1 + 136);
        v72;
        v87 = *(v86 + 8);
        v87(v84, v85);
        v87(v83, v85);
        v24 = *(v1 + 216);
      }

      v25 = 0;
      break;
  }

LABEL_12:
  if (*(v1 + 258) != 1)
  {
    goto LABEL_19;
  }

  v26 = AnalyticsReporter.init()();
  v27 = *(v1 + 64);
  v104 = v25;
  if (!v26)
  {
    v28 = *(v27 + direct field offset for MLTrainingSession.modelType);
    if (v28 != 28)
    {
      v29 = *(v27 + direct field offset for MLTrainingSession.modelType);
      AnalyticsReporter.reportTemplateUsed(model:mode:)(v28);
      v30 = Date.timeIntervalSinceReferenceDate.getter();
      AnalyticsReporter.reportEventDuration(model:task:startTime:)(v29, __PAIR128__(0xE800000000000000, 0x676E696E69617254), v30);
      v27 = *(v1 + 64);
    }
  }

  v31 = (*(v1 + 192) + v27);
  specialized MLTrainingSession.transition(to:)(3, &demangling cache variable for type metadata for MLTrainingSession<MLImageClassifier>.Metadata);
  v32 = v31[3];
  v33 = v31[4];
  v98 = 3;
  __swift_project_boxed_opaque_existential_0Tm(v31, v32);
  v34 = v104;
  (*(v33 + 40))(&v98, v32, v33);
  if (v34)
  {
    v104 = v34;
LABEL_30:
    v67 = *(v1 + 168);
    v68 = *(v1 + 160);
    v69 = *(v1 + 152);
    v70 = *(v1 + 144);
    v71 = *(v1 + 120);
    v101 = *(v1 + 104);
    v103 = *(v1 + 88);
    v102 = *(v1 + 96);
    v67;
    v68;
    v69;
    v70;
    v71;
    v101;
    v102;
    v103;
    v40 = *(v1 + 8);
    return v40();
  }

LABEL_20:
  v35 = *(v1 + 168);
  v36 = *(v1 + 160);
  v37 = *(v1 + 152);
  v38 = *(v1 + 144);
  v39 = *(v1 + 120);
  v102 = *(v1 + 104);
  v104 = *(v1 + 88);
  v103 = *(v1 + 96);
  v35;
  v36;
  v37;
  v38;
  v39;
  v102;
  v103;
  v104;
  v40 = *(v1 + 8);
  return v40();
}