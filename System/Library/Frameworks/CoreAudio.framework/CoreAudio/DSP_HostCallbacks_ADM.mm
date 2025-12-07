@interface DSP_HostCallbacks_ADM
- (void)clearCallbacks;
- (void)notifyClientsOfCustomPropertyChange:(AudioObjectPropertyAddress)change;
- (void)setHostCallbacks:(HostCallbacks *)callbacks;
@end

@implementation DSP_HostCallbacks_ADM

- (void)setHostCallbacks:(HostCallbacks *)callbacks
{
  v4[4] = *MEMORY[0x1E69E9840];
  std::__function::__value_func<void ()(AudioObjectPropertyAddress)>::__value_func[abi:ne200100](v4, callbacks);
  std::__function::__value_func<void ()(AudioObjectPropertyAddress)>::swap[abi:ne200100](v4, self->_hostCallbacks.propertyChangeCallback_.__f_.__buf_.__data);
  std::__function::__value_func<void ()(AudioObjectPropertyAddress)>::~__value_func[abi:ne200100](v4);
}

- (void)notifyClientsOfCustomPropertyChange:(AudioObjectPropertyAddress)change
{
  mElement = change.mElement;
  v4 = *&change.mSelector;
  v12 = *MEMORY[0x1E69E9840];
  if ([(DSP_HostCallbacks_ADM *)self owner])
  {
    mxCallbacks = [(DSP_HostCallbacks_ADM *)self mxCallbacks];
    std::__shared_mutex_base::lock_shared(mxCallbacks);
    if ([(DSP_HostCallbacks_ADM *)self owner])
    {
      objc_msgSend_hostCallbacks(self);
      v7 = v11;
      std::__function::__value_func<void ()(AudioObjectPropertyAddress)>::~__value_func[abi:ne200100](v10);
      if (v7)
      {
        NSLog(&cfstr_AhalDspNotifie.isa);
        objc_msgSend_hostCallbacks(self);
        v8 = v4;
        v9 = mElement;
        if (!v11)
        {
          std::__throw_bad_function_call[abi:ne200100]();
        }

        (*(*v11 + 48))(v11, &v8);
        std::__function::__value_func<void ()(AudioObjectPropertyAddress)>::~__value_func[abi:ne200100](v10);
      }
    }

    std::__shared_mutex_base::unlock_shared(mxCallbacks);
  }
}

- (void)clearCallbacks
{
  v7 = *MEMORY[0x1E69E9840];
  if ([(DSP_HostCallbacks_ADM *)self owner])
  {
    mxCallbacks = [(DSP_HostCallbacks_ADM *)self mxCallbacks];
    std::__shared_mutex_base::lock(mxCallbacks);
    v6 = 0;
    std::__function::__value_func<void ()(AudioObjectPropertyAddress)>::__value_func[abi:ne200100](v4, v5);
    [(DSP_HostCallbacks_ADM *)self setHostCallbacks:v4];
    std::__function::__value_func<void ()(AudioObjectPropertyAddress)>::~__value_func[abi:ne200100](v4);
    [(DSP_HostCallbacks_ADM *)self setOwner:0];
    std::__function::__value_func<void ()(AudioObjectPropertyAddress)>::~__value_func[abi:ne200100](v5);
    std::__shared_mutex_base::unlock(mxCallbacks);
  }
}

@end