import { useBackend } from '../backend';
import { Box, Button, Flex, LabeledList, ProgressBar, Section, Slider } from '../components';
import { formatPower } from '../format';
import { Window } from '../layouts';

// Common power multiplier
const POWER_MUL = 1e3;

export const Smes = (props, context) => {
  const { act, data } = useBackend(context);
  const {
    capacityPercent,
    charge,
    inputAttempt,
    inputting,
    inputLevel,
    inputLevelMax,
    inputAvailable,
    outputAttempt,
    outputting,
    outputLevel,
    outputLevelMax,
    outputUsed,
  } = data;
  const inputState = (
    capacityPercent >= 100 && 'good'
    || inputting && 'average'
    || 'bad'
  );
  const outputState = (
    outputting && 'good'
    || charge > 0 && 'average'
    || 'bad'
  );
  return (
    <Window
      width={340}
      height={350}>
      <Window.Content>
        <Section title="Сохранённая энергия">
          <ProgressBar
            fractionDigits={1}
            value={capacityPercent * 0.01}
            ranges={{
              good: [0.5, Infinity],
              average: [0.15, 0.5],
              bad: [-Infinity, 0.15],
            }} />
        </Section>
        <Section title="Зарядка">
          <LabeledList>
            <LabeledList.Item
              label="Текущий режим"
              buttons={
                <Button
                  icon={inputAttempt ? 'sync-alt' : 'times'}
                  selected={inputAttempt}
                  onClick={() => act('tryinput')}>
                  {inputAttempt ? 'Auto' : 'Off'}
                </Button>
              }>
              <Box color={inputState}>
                {capacityPercent >= 100 && 'Полностью заряжен'
                  || inputting && 'Заряжается'
                  || 'Не заряжается'}
              </Box>
            </LabeledList.Item>
            <LabeledList.Item label="Регулировка зарядки">
              <Flex inline width="100%">
                <Flex.Item>
                  <Button
                    icon="fast-backward"
                    disabled={inputLevel === 0}
                    onClick={() => act('input', {
                      target: 'min',
                    })} />
                  <Button
                    icon="backward"
                    disabled={inputLevel === 0}
                    onClick={() => act('input', {
                      adjust: -10000,
                    })} />
                </Flex.Item>
                <Flex.Item grow={1} mx={1}>
                  <Slider
                    value={inputLevel / POWER_MUL}
                    fillValue={inputAvailable / POWER_MUL}
                    minValue={0}
                    maxValue={inputLevelMax / POWER_MUL}
                    step={5}
                    stepPixelSize={4}
                    format={value => formatPower(value * POWER_MUL, 1)}
                    onDrag={(e, value) => act('input', {
                      target: value * POWER_MUL,
                    })} />
                </Flex.Item>
                <Flex.Item>
                  <Button
                    icon="forward"
                    disabled={inputLevel === inputLevelMax}
                    onClick={() => act('input', {
                      adjust: 10000,
                    })} />
                  <Button
                    icon="fast-forward"
                    disabled={inputLevel === inputLevelMax}
                    onClick={() => act('input', {
                      target: 'max',
                    })} />
                </Flex.Item>
              </Flex>
            </LabeledList.Item>
            <LabeledList.Item label="Available">
              {formatPower(inputAvailable)}
            </LabeledList.Item>
          </LabeledList>
        </Section>
        <Section title="Выходная мощность">
          <LabeledList>
            <LabeledList.Item
              label="Режим выхода"
              buttons={
                <Button
                  icon={outputAttempt ? 'power-off' : 'times'}
                  selected={outputAttempt}
                  onClick={() => act('tryoutput')}>
                  {outputAttempt ? 'Включён' : 'Выключен'}
                </Button>
              }>
              <Box color={outputState}>
                {outputting
                  ? 'Отправка энергии'
                  : charge > 0
                    ? 'Не отправляется'
                    : 'Нет заряда'}
              </Box>
            </LabeledList.Item>
            <LabeledList.Item label="Настройка выхода">
              <Flex inline width="100%">
                <Flex.Item>
                  <Button
                    icon="fast-backward"
                    disabled={outputLevel === 0}
                    onClick={() => act('output', {
                      target: 'min',
                    })} />
                  <Button
                    icon="backward"
                    disabled={outputLevel === 0}
                    onClick={() => act('output', {
                      adjust: -10000,
                    })} />
                </Flex.Item>
                <Flex.Item grow={1} mx={1}>
                  <Slider
                    value={outputLevel / POWER_MUL}
                    minValue={0}
                    maxValue={outputLevelMax / POWER_MUL}
                    step={5}
                    stepPixelSize={4}
                    format={value => formatPower(value * POWER_MUL, 1)}
                    onDrag={(e, value) => act('output', {
                      target: value * POWER_MUL,
                    })} />
                </Flex.Item>
                <Flex.Item>
                  <Button
                    icon="forward"
                    disabled={outputLevel === outputLevelMax}
                    onClick={() => act('output', {
                      adjust: 10000,
                    })} />
                  <Button
                    icon="fast-forward"
                    disabled={outputLevel === outputLevelMax}
                    onClick={() => act('output', {
                      target: 'max',
                    })} />
                </Flex.Item>
              </Flex>
            </LabeledList.Item>
            <LabeledList.Item label="Outputting">
              {formatPower(outputUsed)}
            </LabeledList.Item>
          </LabeledList>
        </Section>
      </Window.Content>
    </Window>
  );
};
