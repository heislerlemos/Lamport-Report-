require 'test_helper'

class LamportNotesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @lamport_note = lamport_notes(:one)
  end

  test "should get index" do
    get lamport_notes_url
    assert_response :success
  end

  test "should get new" do
    get new_lamport_note_url
    assert_response :success
  end

  test "should create lamport_note" do
    assert_difference('LamportNote.count') do
      post lamport_notes_url, params: { lamport_note: { texto: @lamport_note.texto, titulo: @lamport_note.titulo } }
    end

    assert_redirected_to lamport_note_url(LamportNote.last)
  end

  test "should show lamport_note" do
    get lamport_note_url(@lamport_note)
    assert_response :success
  end

  test "should get edit" do
    get edit_lamport_note_url(@lamport_note)
    assert_response :success
  end

  test "should update lamport_note" do
    patch lamport_note_url(@lamport_note), params: { lamport_note: { texto: @lamport_note.texto, titulo: @lamport_note.titulo } }
    assert_redirected_to lamport_note_url(@lamport_note)
  end

  test "should destroy lamport_note" do
    assert_difference('LamportNote.count', -1) do
      delete lamport_note_url(@lamport_note)
    end

    assert_redirected_to lamport_notes_url
  end
end
