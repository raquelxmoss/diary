import React from 'react'

export default function App (props) {
  const {entries} = props
  return (
    <div>
      {entries.map(e => <Entry key={e.id} {...e} />)}
    </div>
  )
}

function Entry (entry) {
  const {title, body} = entry
  return (
    <div>
      <h1>{title}</h1>
      <p>{body}</p>
    </div>
  )
}
