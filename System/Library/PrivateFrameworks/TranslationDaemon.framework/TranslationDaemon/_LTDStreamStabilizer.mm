@interface _LTDStreamStabilizer
- (EMTStablePrefixState)stabilizationState;
- (NSArray)stableSegments;
- (_LTDStreamStabilizer)init;
- (void)init;
- (void)reset;
- (void)setStableSegments:(id)segments;
@end

@implementation _LTDStreamStabilizer

- (_LTDStreamStabilizer)init
{
  v12.receiver = self;
  v12.super_class = _LTDStreamStabilizer;
  v2 = [(_LTDStreamStabilizer *)&v12 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    stableSegments = v2->_stableSegments;
    v2->_stableSegments = MEMORY[0x277CBEBF8];

    stablePrefixState = [MEMORY[0x277D07200] stablePrefixState];
    stabilizationState = v3->_stabilizationState;
    v3->_stabilizationState = stablePrefixState;

    v9 = _LTOSLogStabilization(v7, v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [(_LTDStreamStabilizer *)&v3->_stabilizationState init];
    }

    v10 = v3;
  }

  return v3;
}

- (EMTStablePrefixState)stabilizationState
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__5;
  v15 = __Block_byref_object_dispose__5;
  v16 = 0;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v7 = __42___LTDStreamStabilizer_stabilizationState__block_invoke;
  v8 = &unk_2789B66E0;
  selfCopy = self;
  v10 = &v11;
  v3 = v6;
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  v7(v3);

  os_unfair_lock_unlock(&self->_lock);
  v4 = v12[5];
  _Block_object_dispose(&v11, 8);

  return v4;
}

- (NSArray)stableSegments
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__5;
  v15 = __Block_byref_object_dispose__5;
  v16 = 0;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v7 = __38___LTDStreamStabilizer_stableSegments__block_invoke;
  v8 = &unk_2789B66E0;
  selfCopy = self;
  v10 = &v11;
  v3 = v6;
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  v7(v3);

  os_unfair_lock_unlock(&self->_lock);
  v4 = v12[5];
  _Block_object_dispose(&v11, 8);

  return v4;
}

- (void)setStableSegments:(id)segments
{
  v43 = *MEMORY[0x277D85DE8];
  segmentsCopy = segments;
  v5 = [segmentsCopy copy];
  v6 = v5;
  v7 = MEMORY[0x277CBEBF8];
  if (v5)
  {
    v7 = v5;
  }

  v8 = v7;

  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy__5;
  v35 = __Block_byref_object_dispose__5;
  v36 = 0;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__5;
  v29 = __Block_byref_object_dispose__5;
  v30 = 0;
  v17 = MEMORY[0x277D85DD0];
  v18 = 3221225472;
  v19 = __42___LTDStreamStabilizer_setStableSegments___block_invoke;
  v20 = &unk_2789B6708;
  v23 = &v25;
  v24 = &v31;
  selfCopy = self;
  v9 = v8;
  v22 = v9;
  v10 = &v17;
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  v19(v10);

  os_unfair_lock_unlock(&self->_lock);
  v13 = _LTOSLogStabilization(v11, v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v14 = v26[5];
    v15 = [MEMORY[0x277CBEA60] lt_stringArrayDebugDescription:{v32[5], v17, v18}];
    v16 = [MEMORY[0x277CBEA60] lt_stringArrayDebugDescription:v9];
    *buf = 134218499;
    v38 = v14;
    v39 = 2117;
    v40 = v15;
    v41 = 2117;
    v42 = v16;
    _os_log_debug_impl(&dword_232E53000, v13, OS_LOG_TYPE_DEBUG, "Changed segments for state %p from %{sensitive}@ to %{sensitive}@", buf, 0x20u);
  }

  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(&v31, 8);
}

- (void)reset
{
  v41 = *MEMORY[0x277D85DE8];
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy__5;
  v33 = __Block_byref_object_dispose__5;
  v34 = 0;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__5;
  v27 = __Block_byref_object_dispose__5;
  v28 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__5;
  v21 = __Block_byref_object_dispose__5;
  v22 = 0;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v11 = __29___LTDStreamStabilizer_reset__block_invoke;
  v12 = &unk_2789B6730;
  selfCopy = self;
  v14 = &v29;
  v15 = &v23;
  v16 = &v17;
  v3 = v10;
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  v11(v3);

  os_unfair_lock_unlock(&self->_lock);
  v6 = _LTOSLogStabilization(v4, v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = v24[5];
    v8 = v18[5];
    v9 = [MEMORY[0x277CBEA60] lt_stringArrayDebugDescription:v30[5]];
    *buf = 134218499;
    v36 = v7;
    v37 = 2048;
    v38 = v8;
    v39 = 2117;
    v40 = v9;
    _os_log_debug_impl(&dword_232E53000, v6, OS_LOG_TYPE_DEBUG, "Resetting stabilization state from %p -> %p; clearing old segments: %{sensitive}@", buf, 0x20u);
  }

  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v23, 8);

  _Block_object_dispose(&v29, 8);
}

- (void)init
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = *self;
  v4 = MEMORY[0x277CBEA60];
  v5 = *a2;
  v6 = a3;
  v7 = [v4 lt_stringArrayDebugDescription:v5];
  v8 = 134218242;
  v9 = v3;
  v10 = 2114;
  v11 = v7;
  _os_log_debug_impl(&dword_232E53000, v6, OS_LOG_TYPE_DEBUG, "Initializing _LTDStreamStabilizer with state %p and segments %{public}@", &v8, 0x16u);
}

@end