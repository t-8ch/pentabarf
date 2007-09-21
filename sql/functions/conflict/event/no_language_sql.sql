
-- returns all accepted events with no language set
CREATE OR REPLACE FUNCTION conflict_event_no_language(INTEGER) RETURNS SETOF conflict_event AS $$
      SELECT event_id
        FROM event
       WHERE conference_id = $1 AND
             event_state = 'accepted' AND
             language_id IS NULL
$$ LANGUAGE SQL;

