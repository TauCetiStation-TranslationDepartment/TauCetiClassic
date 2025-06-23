import { useBackend } from '../backend';
import { Window } from '../layouts';
import {
  Box,
  Section,
  LabeledList,
  Button,
  AnimatedNumber,
  ProgressBar,
} from '../components';

export const AirlockController = (props, context) => {
  const { act, data } = useBackend(context);
  const { chamber_pressure, exterior_status, interior_status, processing } =
    data;
  return (
    <Window width={320} height={240}>
      <Window.Content>
        <LabeledList>
          <LabeledList.Item label="Pressure">
            <AnimatedNumber value={chamber_pressure} />
            {' kPa'}
          </LabeledList.Item>
        </LabeledList>
        <Button
          icon="eject"
          content="Cycle to Exterior"
          onClick={() => act('exterior_status')}
          disabled={!!processing}
        />
        <Button
          icon="eject"
          content="Cycle to Interior"
          onClick={() => act('interior_status')}
          disabled={!!processing}
        />
      </Window.Content>
    </Window>
  );
};
