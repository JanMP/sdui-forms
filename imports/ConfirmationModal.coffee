import React, {useState} from 'react'
import Modal from 'react-modal'

export default ConfirmationModal =({text, onConfirm, isOpen, setIsOpen}) ->

  handleOkClick = ->
    setIsOpen false
    onConfirm()

  handleCancelClick = ->
    setIsOpen false

  <Modal
    isOpen={isOpen}
    onRequestClose={-> setIsOpen false}
    className="modal"
    overlayClassName="overlay"
  >
    <div>{text}</div>
    <div className="flex justify-end mt-2">
      <button onClick={handleCancelClick} className="bg-red-500 text-white py-1 px-2 rounded">Abbrechen</button>
      <button onClick={handleOkClick} className="bg-green-500 text-white py-1 px-2 rounded ml-1">OK</button>
    </div>
  </Modal>