@interface DSP_HostCallbacks
- (id).cxx_construct;
- (void)notifyClientsOfCustomPropertyChange:(AudioObjectPropertyAddress)change;
- (void)setMutationRequestListener:(function<void (const DSP_Host_Types::MutationRequestConfiguration)&;
- (void)setPropertyChangeListener:(function<void (const AudioObjectPropertyAddress)&;
@end

@implementation DSP_HostCallbacks

- (id).cxx_construct
{
  *(self + 5) = 0;
  *(self + 9) = 0;
  return self;
}

- (void)setPropertyChangeListener:(function<void (const AudioObjectPropertyAddress)&
{
  v4[4] = *MEMORY[0x1E69E9840];
  std::__function::__value_func<void ()(AudioObjectPropertyAddress const&)>::__value_func[abi:ne200100](v4, a3);
  std::__function::__value_func<void ()(AudioObjectPropertyAddress const&)>::swap[abi:ne200100](v4, self->_propertyChangeListener.__f_.__buf_.__data);
  std::__function::__value_func<void ()(AudioObjectPropertyAddress const&)>::~__value_func[abi:ne200100](v4);
}

- (void)setMutationRequestListener:(function<void (const DSP_Host_Types::MutationRequestConfiguration)&
{
  v9[3] = *MEMORY[0x1E69E9840];
  std::__function::__value_func<void ()(DSP_Host_Types::MutationRequestConfiguration const&)>::__value_func[abi:ne200100](v7, a3);
  p_mutationRequestListener = &self->_mutationRequestListener;
  if (&self->_mutationRequestListener != v7)
  {
    v5 = v8;
    f = self->_mutationRequestListener.__f_.__f_;
    if (v8 == v7)
    {
      if (f == p_mutationRequestListener)
      {
        (*(*v8 + 24))();
        (*(*v8 + 32))(v8);
        v8 = 0;
        (*(*self->_mutationRequestListener.__f_.__f_ + 24))(self->_mutationRequestListener.__f_.__f_, v7);
        (*(*self->_mutationRequestListener.__f_.__f_ + 32))(self->_mutationRequestListener.__f_.__f_);
        self->_mutationRequestListener.__f_.__f_ = 0;
        v8 = v7;
        (*(v9[0] + 24))(v9, &self->_mutationRequestListener);
        (*(v9[0] + 32))(v9);
      }

      else
      {
        (*(*v8 + 24))();
        (*(*v8 + 32))(v8);
        v8 = self->_mutationRequestListener.__f_.__f_;
      }

      self->_mutationRequestListener.__f_.__f_ = p_mutationRequestListener;
    }

    else if (f == p_mutationRequestListener)
    {
      (*(*f->__f_.__buf_.__data + 24))(self->_mutationRequestListener.__f_.__f_, v7);
      (*(*self->_mutationRequestListener.__f_.__f_ + 32))(self->_mutationRequestListener.__f_.__f_);
      self->_mutationRequestListener.__f_.__f_ = v8;
      v8 = v7;
    }

    else
    {
      v8 = self->_mutationRequestListener.__f_.__f_;
      self->_mutationRequestListener.__f_.__f_ = v5;
    }
  }

  std::__function::__value_func<void ()(DSP_Host_Types::MutationRequestConfiguration const&)>::~__value_func[abi:ne200100](v7);
}

- (void)notifyClientsOfCustomPropertyChange:(AudioObjectPropertyAddress)change
{
  v8 = *MEMORY[0x1E69E9840];
  changeCopy = change;
  if ([(DSP_HostCallbacks *)self owner])
  {
    objc_msgSend_propertyChangeListener(self);
    v4 = v7;
    std::__function::__value_func<void ()(AudioObjectPropertyAddress const&)>::~__value_func[abi:ne200100](v6);
    if (v4)
    {
      objc_msgSend_propertyChangeListener(self);
      if (!v7)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      (*(*v7 + 48))(v7, &changeCopy);
      std::__function::__value_func<void ()(AudioObjectPropertyAddress const&)>::~__value_func[abi:ne200100](v6);
    }
  }
}

@end