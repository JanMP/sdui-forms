import React, {useState} from 'react'
import Modal from 'react-modal'

export default ConfirmationModal = ({text, onConfirm = ->, onCancel = ->, isOpen, setIsOpen}) ->

  handleOkClick = ->
    setIsOpen false
    onConfirm()

  handleCancelClick = ->
    setIsOpen false
    onCancel()

  <Modal
    isOpen={isOpen}
    onRequestClose={-> setIsOpen false}
    className="modal"
    overlayClassName="overlay"
  >
    <div>{text}</div>
    <div className="flex justify-end mt-2">
      <button className="cancel-button" onClick={handleCancelClick} >Abbrechen</button>
      <button className="ok-button" onClick={handleOkClick} >OK</button>
    </div>
  </Modal>