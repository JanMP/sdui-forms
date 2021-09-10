import React, {Suspense, lazy} from 'react'

suspend = (WrappedComponent) -> (props) ->
  <Suspense fallback={-> <div>Loading...</div>}><WrappedComponent {props...}/></Suspense>

export AutoForm = suspend lazy -> import('./imports/uniforms-custom/AutoForm.tsx')
export AutoField = suspend lazy -> import('./imports/uniforms-custom/AutoField')
export DynamicField = suspend lazy -> import('./imports/DynamicField.coffee')
export SubmitField = suspend lazy -> import('./imports/uniforms-custom/SubmitField')
export FormModal = suspend lazy -> import('./imports/FormModal')
export ConfirmationModal = suspend lazy -> import('./imports/ConfirmationModal')
export ControlledSelect = suspend lazy -> import('./imports/ControlledSelect.coffee')
export LoginForm = suspend lazy -> import('./imports/LoginForm')
export SetPasswordForm = suspend lazy -> import('./imports/SetPasswordForm')
export MeteorMethodButton = suspend lazy -> import('./imports/MeteorMethodButton')

export { default as meteorApply } from './imports/meteorApply'
