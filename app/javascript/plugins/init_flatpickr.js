import flatpickr from "flatpickr";
import 'flatpickr/dist/flatpickr.css';

const initFlatpickr = () => {
  const flatElements = document.querySelectorAll('.flatpickr');
  flatpickr(flatElements, {});
}

export {initFlatpickr};
